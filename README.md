HDMI2USB udev rules
===================

Scripts automate programming of the Digilent Atlys board using udev. The manual
process is
"documented"(https://github.com/timvideos/HDMI2USB/wiki/Digilent-Atlys-Board%3A-Loading-Firmware)
on the HDMI2USB wiki.

These files are part of the HDMI2USB project. See the project website for more
details https://github.com/timvideos/HDMI2USB/wiki

* The Diglient Adept tools should be installed to /usr/local/bin
* The firmware files should be placed in /lib/firmware
* The load-hdmi2usb script should be placed in /usr/local/bin

These locations can be changed if required by modifying the script and udev
rule.

Issues
------
The script when run under udev does not currently work. djtgcfg when executed
under udev, the device cannot be found. Running the script from the command
line works fine.

Licence
-------
Copyright 2013 Joel Stanley <joel at jms.id.au>

Licensed under the GPLv3: http://www.gnu.org/licenses/gpl-3.0.html
