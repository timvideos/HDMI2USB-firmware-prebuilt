#! /bin/sh
#
# Download the README from the HDMI2USB wiki

wget -O README.md.new https://raw.github.com/wiki/timvideos/HDMI2USB/Firmware.md
diff -u README.md README.md.new
mv README.md.new README.md
