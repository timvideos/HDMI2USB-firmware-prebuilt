TRIPLE=riscv32-unknown-elf
CPU=picorv32
CPUFLAGS=-D__picorv32__ -mno-save-restore -march=rv32im -mabi=ilp32
CPUENDIANNESS=little
CLANG=0
LITEX=1
COPY_TO_MAIN_RAM=0
EXECUTE_IN_PLACE=1
SOC_DIRECTORY=/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc
export BUILDINC_DIRECTORY
BUILDINC_DIRECTORY=/home/travis/build/timvideos/HDMI2USB-litex-firmware/build/tinyfpga_bx_base_picorv32/software/include
LIBCOMPILER_RT_DIRECTORY=/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/software/libcompiler_rt
LIBBASE_DIRECTORY=/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/software/libbase
LIBNET_DIRECTORY=/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/software/libnet
BIOS_DIRECTORY=/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/software/bios
UIP_DIRECTORY=/home/travis/build/timvideos/HDMI2USB-litex-firmware/firmware/uip
STUB_DIRECTORY=/home/travis/build/timvideos/HDMI2USB-litex-firmware/firmware/stub
