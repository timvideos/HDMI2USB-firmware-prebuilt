create_project -force -name top -part xc7a35t-csg324-1
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_lsu_cappuccino.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_lsu_cappuccino.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_cpu_cappuccino.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_cpu_cappuccino.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_ctrl_espresso.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_ctrl_espresso.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_decode_execute_cappuccino.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_decode_execute_cappuccino.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/pfpu32/pfpu32_top.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/pfpu32/pfpu32_top.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx-defines.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx-defines.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_cpu_prontoespresso.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_cpu_prontoespresso.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_dmmu.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_dmmu.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_dcache.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_dcache.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_rf_espresso.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_rf_espresso.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_branch_prediction.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_branch_prediction.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_fetch_prontoespresso.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_fetch_prontoespresso.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_fetch_cappuccino.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_fetch_cappuccino.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_execute_alu.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_execute_alu.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_ticktimer.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_ticktimer.v}]
add_files {top.v}
set_property library work [get_files {top.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_fetch_tcm_prontoespresso.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_fetch_tcm_prontoespresso.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/pfpu32/pfpu32_addsub.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/pfpu32/pfpu32_addsub.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_wb_mux_cappuccino.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_wb_mux_cappuccino.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx-sprs.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx-sprs.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_ctrl_cappuccino.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_ctrl_cappuccino.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/pfpu32/pfpu32_muldiv.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/pfpu32/pfpu32_muldiv.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_lsu_espresso.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_lsu_espresso.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_cfgrs.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_cfgrs.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_bus_if_wb32.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_bus_if_wb32.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_fetch_espresso.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_fetch_espresso.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_decode.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_decode.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/pfpu32/pfpu32_rnd.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/pfpu32/pfpu32_rnd.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_cpu.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_cpu.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_true_dpram_sclk.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_true_dpram_sclk.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/pfpu32/pfpu32_i2f.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/pfpu32/pfpu32_i2f.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_wb_mux_espresso.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_wb_mux_espresso.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_cpu_espresso.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_cpu_espresso.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_execute_ctrl_cappuccino.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_execute_ctrl_cappuccino.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_simple_dpram_sclk.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_simple_dpram_sclk.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_rf_cappuccino.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_rf_cappuccino.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/pfpu32/pfpu32_f2i.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/pfpu32/pfpu32_f2i.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_cache_lru.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_cache_lru.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/pfpu32/pfpu32_cmp.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/pfpu32/pfpu32_cmp.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_store_buffer.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_store_buffer.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_icache.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_icache.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_immu.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_immu.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_ctrl_prontoespresso.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_ctrl_prontoespresso.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_bus_if_avalon.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_bus_if_avalon.v}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_utils.vh}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_utils.vh}]
add_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_pic.v}
set_property library work [get_files {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog/mor1kx_pic.v}]
read_xdc top.xdc
synth_design -top top -part xc7a35t-csg324-1 -include_dirs {/home/travis/build/timvideos/HDMI2USB-litex-firmware/third_party/litex/litex/soc/cores/cpu/mor1kx/verilog/rtl/verilog}
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