# Autogenerated by LiteX
set -e
yosys -q -l top.rpt top.ys
nextpnr-ice40 --up5k --package sg48 --pcf top.pcf --json top.json --asc top.txt --freq 12.000048000192
icepack -s top.txt top.bin
