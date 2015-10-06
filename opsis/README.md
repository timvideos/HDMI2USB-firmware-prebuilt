
# Firmware

The firmware needed to make the Numato Opsis board operate as a HDMI2USB
device is found in this directory.

The firmware can be loaded at *run time* (thus not affecting the boards
original functionality) or *flashed* onto the device for permanent operation in
HDMI2USB mode. 

There are three versions of the firmware available;

 * [stable](https://raw.githubusercontent.com/timvideos/HDMI2USB-firmware-prebuilt/master/boards/opsis/firmware/stable) - 
   The current stable firmware recommended for normal use.

 * [testing](https://raw.githubusercontent.com/timvideos/HDMI2USB-firmware-prebuilt/master/boards/opsis/firmware/testing) - 
   The latest version of the firmware confirmed to at least operate in some
   fashion by developers. It should be usable and needs people to test with!

 * [unstable](https://raw.githubusercontent.com/timvideos/HDMI2USB-firmware-prebuilt/master/boards/opsis/firmware/unstable) - 
   The automated build of the firmware from the git repository.

The Numato Opsis board requires **two different** firmware, one for the FPGA
and one for the Cypress FX2 chip.

![Firmware Diagram](https://docs.google.com/drawings/d/1P58VsKORP1Oz_vFs9JJhyA9552kZEnOq1pQ-ArjCa3g/pub?w=480&h=360)

* The \*.hex file is for the Cypress FX2 chip.
* The \*.xsvf file (or \*.bit file) is for the Xilinx FPGA chip.

# Drivers

The drivers directory contains the driver code to use the device. This is only
required under Windows but can be helpful under Linux.

## Windows

FIXME: Explain the inf file.

## Linux

The Linux driver can autoload the HDMI2USB firmware onto a Numato Opsis Board,
allowing you to just plug in the device and have it work.
