# Autogenerated by Migen
set -e

yosys -q -l top.rpt top.ys
nextpnr-ice40 --hx8k --package ct256 --pcf top.pcf --json top.json --asc top.txt --pre-pack top_pre_pack.py
icepack -s top.txt top.bin
