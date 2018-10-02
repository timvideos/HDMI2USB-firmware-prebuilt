TRIPLE=riscv32-unknown-elf
CPU=vexriscv
CPUFLAGS=-D__vexriscv__ -march=rv32im  -mabi=ilp32
CPUENDIANNESS=little
CLANG=0
LITEX=1
COPY_TO_MAIN_RAM=1
EXECUTE_IN_PLACE=0
SOC_DIRECTORY=/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc
export BUILDINC_DIRECTORY
BUILDINC_DIRECTORY=/home/travis/build/timvideos/HDMI2USB-litex-firmware/build/arty_base_vexriscv/software/include
LIBCOMPILER_RT_DIRECTORY=/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/software/libcompiler_rt
LIBBASE_DIRECTORY=/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/software/libbase
LIBNET_DIRECTORY=/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/software/libnet
BIOS_DIRECTORY=/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/software/bios
UIP_DIRECTORY=/home/travis/build/timvideos/HDMI2USB-litex-firmware/firmware/uip
FIRMWARE_DIRECTORY=/home/travis/build/timvideos/HDMI2USB-litex-firmware/firmware
