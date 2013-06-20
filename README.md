HDMI2USB udev rules
===================

Scripts automate programming of the Digilent Atlys board using udev. The manual
process is
[documented](https://github.com/timvideos/HDMI2USB/wiki/Digilent-Atlys-Board%3A-Loading-Firmware)
on the HDMI2USB wiki.

These files are part of the HDMI2USB project. See the [project
website](https://github.com/timvideos/HDMI2USB/wiki) for more details.

```
$ git clone https://github.com/shenki/hdmi2usb-udev
$ cd hdmi2usb-udev
$ sudo cp hdmi2usb-r2-20130616* /lib/firmware
$ sudo cp load-hdmi2usb /usr/local/bin/
$ sudo cp hdmi2usb.rules /etc/udev/rules.d/
```

These locations can be changed if required by modifying the script and udev
rule.

Logging can be performed if the LOGFILE variable in load-hdmi2usb is modified
to point to a file such as /tmp/hdmi2usbudev.log.

Issues
------
The script when run under udev does not currently work. djtgcfg when executed
under udev, the device cannot be found. Running the script from the command
line works fine.

Licence
-------
Copyright 2013 Joel Stanley <joel at jms.id.au>

Licensed under the GPLv3: http://www.gnu.org/licenses/gpl-3.0.html
