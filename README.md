The HDMI2USB device has **two different** firmware, one for the FPGA and one for the Cypress FPGA chip.
![Firmware Diagram](https://docs.google.com/drawings/d/1P58VsKORP1Oz_vFs9JJhyA9552kZEnOq1pQ-ArjCa3g/pub?w=480&h=360)

* The \*.hex file is for the Cypress USB chip.
* The \*.bit file is for the Xilinx FPGA chip.

# Prebuilt Firmware

Prebuilt Firmware can be found in the [HDMI2USB-firmware-prebuilt](https://github.com/timvideos/HDMI2USB-firmware-prebuilt) repository.

Current firmware is found in the base directory in two versions;
 * Stable version - use this in production
   * hdmi2usb-stable.bit
   * hdmi2usb-stable.hex
 * Testing version - use this to get the latest and greatest features
   * hdmi2usb-testing.bit
   * hdmi2usb-testing.hex

Older versions of the firmware can be found in the Archive directory.

# Drivers

The drivers directory contains the driver code to use the device. This is only required under Windows but can be helpful under Linux.

## Windows

FIXME: Explain the inf file.

## Linux

The Linux driver can autoload the HDMI2USB firmware onto a Digilent Atlys Board, allowing you to just plug in the device and have it work.

# Digilent Atlys Prototype Board

If you have a Digilent Atlys Board (and are *not* using the Linux drivers which auto-load the firmware or on Windows), you should follow the instructions at [Digilent Atlys Board: Loading Firmware](https://github.com/timvideos/HDMI2USB/wiki/Digilent-Atlys-Board:-Loading-Firmware) to load the firmware.