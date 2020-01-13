create_project -force -name top -part xc7a200t-sbg484-1
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/lm32/verilog/submodule/rtl/lm32_debug.v}
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/lm32/verilog/submodule/rtl/lm32_dcache.v}
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/lm32/verilog/submodule/rtl/lm32_addsub.v}
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/lm32/verilog/submodule/rtl/lm32_dtlb.v}
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/lm32/verilog/submodule/rtl/lm32_logic_op.v}
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/lm32/verilog/submodule/rtl/lm32_adder.v}
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/lm32/verilog/submodule/rtl/lm32_shifter.v}
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/lm32/verilog/submodule/rtl/lm32_multiplier.v}
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/lm32/verilog/submodule/rtl/lm32_decoder.v}
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/lm32/verilog/submodule/rtl/lm32_interrupt.v}
add_files {top.v}
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/lm32/verilog/submodule/rtl/lm32_icache.v}
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/lm32/verilog/submodule/rtl/lm32_ram.v}
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/lm32/verilog/submodule/rtl/lm32_mc_arithmetic.v}
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/lm32/verilog/submodule/rtl/lm32_itlb.v}
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/lm32/verilog/submodule/rtl/lm32_dp_ram.v}
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/lm32/verilog/submodule/rtl/lm32_instruction_unit.v}
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/lm32/verilog/submodule/rtl/lm32_cpu.v}
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/lm32/verilog/submodule/rtl/lm32_load_store_unit.v}
read_xdc top.xdc
synth_design -top top -part xc7a200t-sbg484-1 -include_dirs {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/lm32/verilog/config /home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/lm32/verilog/submodule/rtl}
report_timing_summary -file top_timing_synth.rpt
report_utilization -hierarchical -file top_utilization_hierarchical_synth.rpt
report_utilization -file top_utilization_synth.rpt
opt_design
place_design
report_utilization -hierarchical -file top_utilization_hierarchical_place.rpt
report_utilization -file top_utilization_place.rpt
report_io -file top_io.rpt
report_control_sets -verbose -file top_control_sets.rpt
report_clock_utilization -file top_clock_utilization.rpt
route_design
phys_opt_design
report_timing_summary -no_header -no_detailed_paths
write_checkpoint -force top_route.dcp
report_route_status -file top_route_status.rpt
report_drc -file top_drc.rpt
report_timing_summary -datasheet -max_paths 10 -file top_timing.rpt
report_power -file top_power.rpt
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
write_bitstream -force top.bit 
write_cfgmem -force -format bin -interface spix4 -size 16 -loadbit "up 0x0 top.bit" -file top.bin
quit