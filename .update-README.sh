#! /bin/sh
#
# Download the README from the HDMI2USB wiki

wget -O README.md.new https://raw.github.com/wiki/timvideos/HDMI2USB/Firmware.md
sed -i -e's-\[\[\([^\]*\)]]-(\1)[http://github.com/timvideos/HDMI2USB/wiki/\1]-' README.md.new
diff -u README.md README.md.new
mv README.md.new README.md
