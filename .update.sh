#!/bin/bash

# vim: ai ts=2 sw=2 et sts=2 ft=sh
# vim: autoindent tabstop=2 shiftwidth=2 expandtab softtabstop=2 filetype=sh

# .update.sh [branch] [commit-id]
#
#  branch - unstable, testing, stable
#  commit-id - For unstable and testing, it is commit id of target from git://github.com/timvideos/HDMI2USB.git
#              For stable, it shouldn't be given.
#
#  The latest testing version becomes stable.

set -e
set -x

SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

function checkout_firmware {
  FIRMWARE_LOCATION="$1"
  COMMIT_ID="$2"
  EXTRA_MSG="$3"

  if [ ! -d "$FIRMWARE_LOCATION" ]; then
    git clone git://github.com/timvideos/HDMI2USB.git "$FIRMWARE_LOCATION"
  else
    (
      cd "$FIRMWARE_LOCATION"
      git fetch --tags
    )
  fi
  (
    cd "$FIRMWARE_LOCATION"
    git checkout "$COMMIT_ID"
    git reset --hard
    git clean -X -d -f
  )
}

function describe_firmware {
  FIRMWARE_LOCATION="$1"
  (cd "$FIRMWARE_LOCATION"; git describe --long --match v*)
}

function build_firmware {
  FIRMWARE_LOCATION="$1"
  # Generate the .hex file (Cypress USB Firmware)
  (
    cd "$FIRMWARE_LOCATION/cypress"
    make
  )
  CYPRESS_FILE="$FIRMWARE_LOCATION/cypress/hdmi2usb.hex"
  if [ ! -f "$CYPRESS_FILE" ]; then
    echo "Cypress Firmware failed to build!"
    echo "No '$CYPRESS_FILE' file found."
    exit 1
  fi

  # Generate the .bit file (FPGA Firmware)
  build_bit() {
    source /opt/Xilinx/14.7/ISE_DS/settings64.sh
    cd "$FIRMWARE_LOCATION"
    make all
  }
  build_bit
  FPGA_BITFILE="$FIRMWARE_LOCATION/build/hdmi2usb.bit"
  if [ ! -f "$FPGA_BITFILE" ]; then
    echo "FPGA Firmware failed to build!"
    echo "No '$FPGA_BITFILE' file found."
    exit 1
  fi

  # Generate the .xsvf file (FPGA Firmare converted for libfpgalink)
  build_xsvf() {
    . /opt/Xilinx/14.7/ISE_DS/settings64.sh
    cd "$FIRMWARE_LOCATION"
    make xsvf
  }
  build_xsvf
  FPGA_XSVF="$FIRMWARE_LOCATION/build/hdmi2usb.xsvf"
  if [ ! -f "$FPGA_XSVF" ]; then
    echo "FPGA Firmware failed to convert to .xsvf!"
    echo "No '$FPGA_XSVF' file found."
    exit 1
  fi
}

function copy_firmware {
  FIRMWARE_LOCATION="$1"
  OUTPUT_LOCATION="$2"

  mkdir "$OUTPUT_LOCATION"
  FILES=(
    "cypress/hdmi2usb.hex"
    "build/hdmi2usb.bit"
    "build/hdmi2usb.xsvf"
  )
  for FILE in "${FILES[@]}"; do
    OUTFILE="$OUTPUT_LOCATION/$(basename $FILE)"
    cp "$FIRMWARE_LOCATION/$FILE" "$OUTFILE"
    git add "$OUTFILE"
  done

  LOGS=(
    "hdmi2usb.bgn"
    "hdmi2usb.bld"
    "hdmi2usb.drc"
    "hdmi2usb_map.mrp"
    "hdmi2usb.pad"
    "hdmi2usb_pad.csv"
    "hdmi2usb_pad.txt"
    "hdmi2usb.par"
    "hdmi2usb.syr"
    "hdmi2usb.twr"
    "hdmi2usb.unroutes"
  )
  mkdir -p $OUTPUT_LOCATION/logs
  for LOG in "${LOGS[@]}"; do
    OUTFILE="$OUTPUT_LOCATION/logs/$LOG"
    cp "$FIRMWARE_LOCATION/build/$LOG" "$OUTFILE"
    git add "$OUTFILE"
  done

  XRPTS=(
    "hdmi2usb_map.xrpt"
    "hdmi2usb_ngdbuild.xrpt"
    "hdmi2usb_par.xrpt"
    "hdmi2usb_xst.xrpt"
  )
  mkdir -p $OUTPUT_LOCATION/xrpt
  for XRPT in "${XRPTS[@]}"; do
    OUTFILE="$OUTPUT_LOCATION/xrpt/$XRPT"
    cp "$FIRMWARE_LOCATION/build/$XRPT" "$OUTFILE"
    git add "$OUTFILE"
  done
}

function update_link {
  BRANCH="$1"
  COMMIT_NAME="$2"
  EXTRA_MSG="$3"

  rm $BRANCH
  ln -s Archive/$COMMIT_NAME $BRANCH
  git add $BRANCH
  git commit -m "Updating $BRANCH to $COMMIT_NAME$EXTRA_MSG"
}

if [ ! -f /opt/Xilinx/14.7/ISE_DS/settings64.sh ]; then
  echo "To build the firmware, Xilinx ISE 14.7 needs to be installed to /opt/Xilinx"
  echo "See https://github.com/timvideos/HDMI2USB/wiki/Development-Environment for more information."
  exit 1
fi

BRANCH=$1
COMMIT_ID=$2
EXTRA_MSG=$3

case x$BRANCH in
  xstable)
    if [ "x$COMMIT_ID" != "x" ]; then
      echo "Don't specify a commit id for stable, it will use the latest testing version."
      exit 1
    fi

    # Make the stable firmware equal to testing
    COMMIT_ID="$(basename $(readlink testing))"
    EXTRA_MSG="(current testing branch) $EXTRA_MSG"
    ;;

  xtesting|xunstable)
    if [ "x$COMMIT_ID" == "x" ]; then
      echo "Need to specify a commit id!"
      exit 1
    fi
    ;;

  *)
    echo "Unknown branch '$1'"
    exit 1
    ;;
esac

# Build the firmware
SRC_DIR=$SCRIPT_DIR/src
checkout_firmware "$SRC_DIR" "$COMMIT_ID"

COMMIT_NAME=$(describe_firmware "$SRC_DIR")
echo "Name for '$COMMIT_ID' is '$COMMIT_NAME'"
OUT_DIR=$SCRIPT_DIR/Archive/$COMMIT_NAME

if [ ! -d "$OUT_DIR" ]; then
  build_firmware "$SRC_DIR"
  copy_firmware "$SRC_DIR" "$OUT_DIR"
fi

if [ "x$EXTRA_MSG" != x ]; then
  EXTRA_MSG=" $EXTRA_MSG"
fi

update_link "$BRANCH" "$COMMIT_NAME" "$EXTRA_MSG"
