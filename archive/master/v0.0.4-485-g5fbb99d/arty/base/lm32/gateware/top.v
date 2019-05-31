/* Machine-generated using LiteX gen */
module top(
	output reg serial_tx,
	input serial_rx,
	input clk100,
	input cpu_reset,
	output eth_ref_clk,
	output user_led0,
	output user_led1,
	output user_led2,
	output user_led3,
	input user_sw0,
	input user_sw1,
	input user_sw2,
	input user_sw3,
	input user_btn0,
	input user_btn1,
	input user_btn2,
	input user_btn3,
	output reg spiflash_1x_cs_n,
	output reg spiflash_1x_mosi,
	input spiflash_1x_miso,
	output spiflash_1x_wp,
	output spiflash_1x_hold,
	output [13:0] ddram_a,
	output [2:0] ddram_ba,
	output ddram_ras_n,
	output ddram_cas_n,
	output ddram_we_n,
	output ddram_cs_n,
	output [1:0] ddram_dm,
	inout [15:0] ddram_dq,
	output [1:0] ddram_dqs_p,
	output [1:0] ddram_dqs_n,
	output ddram_clk_p,
	output ddram_clk_n,
	output ddram_cke,
	output ddram_odt,
	output ddram_reset_n
);

wire soc_basesoc_ctrl_reset_reset_re;
wire soc_basesoc_ctrl_reset_reset_r;
reg soc_basesoc_ctrl_reset_reset_w = 1'd0;
reg [31:0] soc_basesoc_ctrl_storage_full = 32'd305419896;
wire [31:0] soc_basesoc_ctrl_storage;
reg soc_basesoc_ctrl_re = 1'd0;
wire [31:0] soc_basesoc_ctrl_bus_errors_status;
wire soc_basesoc_ctrl_reset;
wire soc_basesoc_ctrl_bus_error;
reg [31:0] soc_basesoc_ctrl_bus_errors = 32'd0;
wire soc_basesoc_lm32_reset;
wire [29:0] soc_basesoc_lm32_ibus_adr;
wire [31:0] soc_basesoc_lm32_ibus_dat_w;
wire [31:0] soc_basesoc_lm32_ibus_dat_r;
wire [3:0] soc_basesoc_lm32_ibus_sel;
wire soc_basesoc_lm32_ibus_cyc;
wire soc_basesoc_lm32_ibus_stb;
wire soc_basesoc_lm32_ibus_ack;
wire soc_basesoc_lm32_ibus_we;
wire [2:0] soc_basesoc_lm32_ibus_cti;
wire [1:0] soc_basesoc_lm32_ibus_bte;
wire soc_basesoc_lm32_ibus_err;
wire [29:0] soc_basesoc_lm32_dbus_adr;
wire [31:0] soc_basesoc_lm32_dbus_dat_w;
wire [31:0] soc_basesoc_lm32_dbus_dat_r;
wire [3:0] soc_basesoc_lm32_dbus_sel;
wire soc_basesoc_lm32_dbus_cyc;
wire soc_basesoc_lm32_dbus_stb;
wire soc_basesoc_lm32_dbus_ack;
wire soc_basesoc_lm32_dbus_we;
wire [2:0] soc_basesoc_lm32_dbus_cti;
wire [1:0] soc_basesoc_lm32_dbus_bte;
wire soc_basesoc_lm32_dbus_err;
reg [31:0] soc_basesoc_lm32_interrupt = 32'd0;
wire [31:0] soc_basesoc_lm32_i_adr_o;
wire [31:0] soc_basesoc_lm32_d_adr_o;
wire [29:0] soc_basesoc_rom_bus_adr;
wire [31:0] soc_basesoc_rom_bus_dat_w;
wire [31:0] soc_basesoc_rom_bus_dat_r;
wire [3:0] soc_basesoc_rom_bus_sel;
wire soc_basesoc_rom_bus_cyc;
wire soc_basesoc_rom_bus_stb;
reg soc_basesoc_rom_bus_ack = 1'd0;
wire soc_basesoc_rom_bus_we;
wire [2:0] soc_basesoc_rom_bus_cti;
wire [1:0] soc_basesoc_rom_bus_bte;
reg soc_basesoc_rom_bus_err = 1'd0;
wire [12:0] soc_basesoc_rom_adr;
wire [31:0] soc_basesoc_rom_dat_r;
wire [29:0] soc_basesoc_sram_bus_adr;
wire [31:0] soc_basesoc_sram_bus_dat_w;
wire [31:0] soc_basesoc_sram_bus_dat_r;
wire [3:0] soc_basesoc_sram_bus_sel;
wire soc_basesoc_sram_bus_cyc;
wire soc_basesoc_sram_bus_stb;
reg soc_basesoc_sram_bus_ack = 1'd0;
wire soc_basesoc_sram_bus_we;
wire [2:0] soc_basesoc_sram_bus_cti;
wire [1:0] soc_basesoc_sram_bus_bte;
reg soc_basesoc_sram_bus_err = 1'd0;
wire [12:0] soc_basesoc_sram_adr;
wire [31:0] soc_basesoc_sram_dat_r;
reg [3:0] soc_basesoc_sram_we = 4'd0;
wire [31:0] soc_basesoc_sram_dat_w;
reg [13:0] soc_basesoc_interface_adr = 14'd0;
reg soc_basesoc_interface_we = 1'd0;
reg [7:0] soc_basesoc_interface_dat_w = 8'd0;
wire [7:0] soc_basesoc_interface_dat_r;
wire [29:0] soc_basesoc_bus_wishbone_adr;
wire [31:0] soc_basesoc_bus_wishbone_dat_w;
reg [31:0] soc_basesoc_bus_wishbone_dat_r = 32'd0;
wire [3:0] soc_basesoc_bus_wishbone_sel;
wire soc_basesoc_bus_wishbone_cyc;
wire soc_basesoc_bus_wishbone_stb;
reg soc_basesoc_bus_wishbone_ack = 1'd0;
wire soc_basesoc_bus_wishbone_we;
wire [2:0] soc_basesoc_bus_wishbone_cti;
wire [1:0] soc_basesoc_bus_wishbone_bte;
reg soc_basesoc_bus_wishbone_err = 1'd0;
reg [1:0] soc_basesoc_counter = 2'd0;
reg [31:0] soc_basesoc_uart_phy_storage_full = 32'd4947802;
wire [31:0] soc_basesoc_uart_phy_storage;
reg soc_basesoc_uart_phy_re = 1'd0;
wire soc_basesoc_uart_phy_sink_valid;
reg soc_basesoc_uart_phy_sink_ready = 1'd0;
wire soc_basesoc_uart_phy_sink_first;
wire soc_basesoc_uart_phy_sink_last;
wire [7:0] soc_basesoc_uart_phy_sink_payload_data;
reg soc_basesoc_uart_phy_uart_clk_txen = 1'd0;
reg [31:0] soc_basesoc_uart_phy_phase_accumulator_tx = 32'd0;
reg [7:0] soc_basesoc_uart_phy_tx_reg = 8'd0;
reg [3:0] soc_basesoc_uart_phy_tx_bitcount = 4'd0;
reg soc_basesoc_uart_phy_tx_busy = 1'd0;
reg soc_basesoc_uart_phy_source_valid = 1'd0;
wire soc_basesoc_uart_phy_source_ready;
reg soc_basesoc_uart_phy_source_first = 1'd0;
reg soc_basesoc_uart_phy_source_last = 1'd0;
reg [7:0] soc_basesoc_uart_phy_source_payload_data = 8'd0;
reg soc_basesoc_uart_phy_uart_clk_rxen = 1'd0;
reg [31:0] soc_basesoc_uart_phy_phase_accumulator_rx = 32'd0;
wire soc_basesoc_uart_phy_rx;
reg soc_basesoc_uart_phy_rx_r = 1'd0;
reg [7:0] soc_basesoc_uart_phy_rx_reg = 8'd0;
reg [3:0] soc_basesoc_uart_phy_rx_bitcount = 4'd0;
reg soc_basesoc_uart_phy_rx_busy = 1'd0;
wire soc_basesoc_uart_rxtx_re;
wire [7:0] soc_basesoc_uart_rxtx_r;
wire [7:0] soc_basesoc_uart_rxtx_w;
wire soc_basesoc_uart_txfull_status;
wire soc_basesoc_uart_rxempty_status;
wire soc_basesoc_uart_irq;
wire soc_basesoc_uart_tx_status;
reg soc_basesoc_uart_tx_pending = 1'd0;
wire soc_basesoc_uart_tx_trigger;
reg soc_basesoc_uart_tx_clear = 1'd0;
reg soc_basesoc_uart_tx_old_trigger = 1'd0;
wire soc_basesoc_uart_rx_status;
reg soc_basesoc_uart_rx_pending = 1'd0;
wire soc_basesoc_uart_rx_trigger;
reg soc_basesoc_uart_rx_clear = 1'd0;
reg soc_basesoc_uart_rx_old_trigger = 1'd0;
wire soc_basesoc_uart_eventmanager_status_re;
wire [1:0] soc_basesoc_uart_eventmanager_status_r;
reg [1:0] soc_basesoc_uart_eventmanager_status_w = 2'd0;
wire soc_basesoc_uart_eventmanager_pending_re;
wire [1:0] soc_basesoc_uart_eventmanager_pending_r;
reg [1:0] soc_basesoc_uart_eventmanager_pending_w = 2'd0;
reg [1:0] soc_basesoc_uart_eventmanager_storage_full = 2'd0;
wire [1:0] soc_basesoc_uart_eventmanager_storage;
reg soc_basesoc_uart_eventmanager_re = 1'd0;
wire soc_basesoc_uart_tx_fifo_sink_valid;
wire soc_basesoc_uart_tx_fifo_sink_ready;
reg soc_basesoc_uart_tx_fifo_sink_first = 1'd0;
reg soc_basesoc_uart_tx_fifo_sink_last = 1'd0;
wire [7:0] soc_basesoc_uart_tx_fifo_sink_payload_data;
wire soc_basesoc_uart_tx_fifo_source_valid;
wire soc_basesoc_uart_tx_fifo_source_ready;
wire soc_basesoc_uart_tx_fifo_source_first;
wire soc_basesoc_uart_tx_fifo_source_last;
wire [7:0] soc_basesoc_uart_tx_fifo_source_payload_data;
wire soc_basesoc_uart_tx_fifo_re;
reg soc_basesoc_uart_tx_fifo_readable = 1'd0;
wire soc_basesoc_uart_tx_fifo_syncfifo_we;
wire soc_basesoc_uart_tx_fifo_syncfifo_writable;
wire soc_basesoc_uart_tx_fifo_syncfifo_re;
wire soc_basesoc_uart_tx_fifo_syncfifo_readable;
wire [9:0] soc_basesoc_uart_tx_fifo_syncfifo_din;
wire [9:0] soc_basesoc_uart_tx_fifo_syncfifo_dout;
reg [4:0] soc_basesoc_uart_tx_fifo_level0 = 5'd0;
reg soc_basesoc_uart_tx_fifo_replace = 1'd0;
reg [3:0] soc_basesoc_uart_tx_fifo_produce = 4'd0;
reg [3:0] soc_basesoc_uart_tx_fifo_consume = 4'd0;
reg [3:0] soc_basesoc_uart_tx_fifo_wrport_adr = 4'd0;
wire [9:0] soc_basesoc_uart_tx_fifo_wrport_dat_r;
wire soc_basesoc_uart_tx_fifo_wrport_we;
wire [9:0] soc_basesoc_uart_tx_fifo_wrport_dat_w;
wire soc_basesoc_uart_tx_fifo_do_read;
wire [3:0] soc_basesoc_uart_tx_fifo_rdport_adr;
wire [9:0] soc_basesoc_uart_tx_fifo_rdport_dat_r;
wire soc_basesoc_uart_tx_fifo_rdport_re;
wire [4:0] soc_basesoc_uart_tx_fifo_level1;
wire [7:0] soc_basesoc_uart_tx_fifo_fifo_in_payload_data;
wire soc_basesoc_uart_tx_fifo_fifo_in_first;
wire soc_basesoc_uart_tx_fifo_fifo_in_last;
wire [7:0] soc_basesoc_uart_tx_fifo_fifo_out_payload_data;
wire soc_basesoc_uart_tx_fifo_fifo_out_first;
wire soc_basesoc_uart_tx_fifo_fifo_out_last;
wire soc_basesoc_uart_rx_fifo_sink_valid;
wire soc_basesoc_uart_rx_fifo_sink_ready;
wire soc_basesoc_uart_rx_fifo_sink_first;
wire soc_basesoc_uart_rx_fifo_sink_last;
wire [7:0] soc_basesoc_uart_rx_fifo_sink_payload_data;
wire soc_basesoc_uart_rx_fifo_source_valid;
wire soc_basesoc_uart_rx_fifo_source_ready;
wire soc_basesoc_uart_rx_fifo_source_first;
wire soc_basesoc_uart_rx_fifo_source_last;
wire [7:0] soc_basesoc_uart_rx_fifo_source_payload_data;
wire soc_basesoc_uart_rx_fifo_re;
reg soc_basesoc_uart_rx_fifo_readable = 1'd0;
wire soc_basesoc_uart_rx_fifo_syncfifo_we;
wire soc_basesoc_uart_rx_fifo_syncfifo_writable;
wire soc_basesoc_uart_rx_fifo_syncfifo_re;
wire soc_basesoc_uart_rx_fifo_syncfifo_readable;
wire [9:0] soc_basesoc_uart_rx_fifo_syncfifo_din;
wire [9:0] soc_basesoc_uart_rx_fifo_syncfifo_dout;
reg [4:0] soc_basesoc_uart_rx_fifo_level0 = 5'd0;
reg soc_basesoc_uart_rx_fifo_replace = 1'd0;
reg [3:0] soc_basesoc_uart_rx_fifo_produce = 4'd0;
reg [3:0] soc_basesoc_uart_rx_fifo_consume = 4'd0;
reg [3:0] soc_basesoc_uart_rx_fifo_wrport_adr = 4'd0;
wire [9:0] soc_basesoc_uart_rx_fifo_wrport_dat_r;
wire soc_basesoc_uart_rx_fifo_wrport_we;
wire [9:0] soc_basesoc_uart_rx_fifo_wrport_dat_w;
wire soc_basesoc_uart_rx_fifo_do_read;
wire [3:0] soc_basesoc_uart_rx_fifo_rdport_adr;
wire [9:0] soc_basesoc_uart_rx_fifo_rdport_dat_r;
wire soc_basesoc_uart_rx_fifo_rdport_re;
wire [4:0] soc_basesoc_uart_rx_fifo_level1;
wire [7:0] soc_basesoc_uart_rx_fifo_fifo_in_payload_data;
wire soc_basesoc_uart_rx_fifo_fifo_in_first;
wire soc_basesoc_uart_rx_fifo_fifo_in_last;
wire [7:0] soc_basesoc_uart_rx_fifo_fifo_out_payload_data;
wire soc_basesoc_uart_rx_fifo_fifo_out_first;
wire soc_basesoc_uart_rx_fifo_fifo_out_last;
reg soc_basesoc_uart_reset = 1'd0;
reg [31:0] soc_basesoc_timer0_load_storage_full = 32'd0;
wire [31:0] soc_basesoc_timer0_load_storage;
reg soc_basesoc_timer0_load_re = 1'd0;
reg [31:0] soc_basesoc_timer0_reload_storage_full = 32'd0;
wire [31:0] soc_basesoc_timer0_reload_storage;
reg soc_basesoc_timer0_reload_re = 1'd0;
reg soc_basesoc_timer0_en_storage_full = 1'd0;
wire soc_basesoc_timer0_en_storage;
reg soc_basesoc_timer0_en_re = 1'd0;
wire soc_basesoc_timer0_update_value_re;
wire soc_basesoc_timer0_update_value_r;
reg soc_basesoc_timer0_update_value_w = 1'd0;
reg [31:0] soc_basesoc_timer0_value_status = 32'd0;
wire soc_basesoc_timer0_irq;
wire soc_basesoc_timer0_zero_status;
reg soc_basesoc_timer0_zero_pending = 1'd0;
wire soc_basesoc_timer0_zero_trigger;
reg soc_basesoc_timer0_zero_clear = 1'd0;
reg soc_basesoc_timer0_zero_old_trigger = 1'd0;
wire soc_basesoc_timer0_eventmanager_status_re;
wire soc_basesoc_timer0_eventmanager_status_r;
wire soc_basesoc_timer0_eventmanager_status_w;
wire soc_basesoc_timer0_eventmanager_pending_re;
wire soc_basesoc_timer0_eventmanager_pending_r;
wire soc_basesoc_timer0_eventmanager_pending_w;
reg soc_basesoc_timer0_eventmanager_storage_full = 1'd0;
wire soc_basesoc_timer0_eventmanager_storage;
reg soc_basesoc_timer0_eventmanager_re = 1'd0;
reg [31:0] soc_basesoc_timer0_value = 32'd0;
wire [29:0] soc_basesoc_interface0_wb_sdram_adr;
wire [31:0] soc_basesoc_interface0_wb_sdram_dat_w;
reg [31:0] soc_basesoc_interface0_wb_sdram_dat_r = 32'd0;
wire [3:0] soc_basesoc_interface0_wb_sdram_sel;
wire soc_basesoc_interface0_wb_sdram_cyc;
wire soc_basesoc_interface0_wb_sdram_stb;
reg soc_basesoc_interface0_wb_sdram_ack = 1'd0;
wire soc_basesoc_interface0_wb_sdram_we;
wire [2:0] soc_basesoc_interface0_wb_sdram_cti;
wire [1:0] soc_basesoc_interface0_wb_sdram_bte;
reg soc_basesoc_interface0_wb_sdram_err = 1'd0;
(* dont_touch = "true" *) wire sys_clk;
wire sys_rst;
wire sys4x_clk;
wire sys4x_dqs_clk;
wire clk200_clk;
wire clk200_rst;
wire clk100_clk;
wire clk100_rst;
wire clk50_clk;
wire clk50_rst;
wire soc_pll_locked;
wire soc_pll_fb;
wire soc_pll_sys;
wire soc_pll_sys4x;
wire soc_pll_sys4x_dqs;
wire soc_pll_clk200;
wire soc_pll_clk100;
wire soc_pll_clk50;
reg [3:0] soc_reset_counter = 4'd15;
reg soc_ic_reset = 1'd1;
wire soc_eth_clk;
reg [56:0] soc_dna_status = 57'd0;
wire soc_dna_do;
reg [6:0] soc_dna_cnt = 7'd0;
wire [159:0] soc_git_status;
wire [63:0] soc_platform_status;
wire [63:0] soc_target_status;
reg [11:0] soc_temperature_status = 12'd0;
reg [11:0] soc_vccint_status = 12'd0;
reg [11:0] soc_vccaux_status = 12'd0;
reg [11:0] soc_vccbram_status = 12'd0;
wire [7:0] soc_alarm;
wire soc_ot;
wire soc_busy;
wire [6:0] soc_channel;
wire soc_eoc;
wire soc_eos;
wire [15:0] soc_data;
wire soc_drdy;
wire [3:0] soc_leds;
reg [3:0] soc_leds_storage_full = 4'd0;
wire [3:0] soc_leds_storage;
reg soc_leds_re = 1'd0;
reg [3:0] soc_switches = 4'd0;
wire [3:0] soc_switches_status;
wire soc_irq;
wire soc_eventsourceprocess0_status;
reg soc_eventsourceprocess0_pending = 1'd0;
wire soc_eventsourceprocess0_trigger;
reg soc_eventsourceprocess0_clear = 1'd0;
reg soc_eventsourceprocess0_old_trigger = 1'd0;
wire soc_waittimer0_wait;
wire soc_waittimer0_done;
reg [19:0] soc_waittimer0_count = 20'd1000000;
wire soc_eventsourceprocess1_status;
reg soc_eventsourceprocess1_pending = 1'd0;
wire soc_eventsourceprocess1_trigger;
reg soc_eventsourceprocess1_clear = 1'd0;
reg soc_eventsourceprocess1_old_trigger = 1'd0;
wire soc_waittimer1_wait;
wire soc_waittimer1_done;
reg [19:0] soc_waittimer1_count = 20'd1000000;
wire soc_eventsourceprocess2_status;
reg soc_eventsourceprocess2_pending = 1'd0;
wire soc_eventsourceprocess2_trigger;
reg soc_eventsourceprocess2_clear = 1'd0;
reg soc_eventsourceprocess2_old_trigger = 1'd0;
wire soc_waittimer2_wait;
wire soc_waittimer2_done;
reg [19:0] soc_waittimer2_count = 20'd1000000;
wire soc_eventsourceprocess3_status;
reg soc_eventsourceprocess3_pending = 1'd0;
wire soc_eventsourceprocess3_trigger;
reg soc_eventsourceprocess3_clear = 1'd0;
reg soc_eventsourceprocess3_old_trigger = 1'd0;
wire soc_waittimer3_wait;
wire soc_waittimer3_done;
reg [19:0] soc_waittimer3_count = 20'd1000000;
wire soc_eventmanager_status_re;
wire [3:0] soc_eventmanager_status_r;
reg [3:0] soc_eventmanager_status_w = 4'd0;
wire soc_eventmanager_pending_re;
wire [3:0] soc_eventmanager_pending_r;
reg [3:0] soc_eventmanager_pending_w = 4'd0;
reg [3:0] soc_eventmanager_storage_full = 4'd0;
wire [3:0] soc_eventmanager_storage;
reg soc_eventmanager_re = 1'd0;
reg soc_clk = 1'd0;
wire [29:0] soc_spiflash_bus_adr;
wire [31:0] soc_spiflash_bus_dat_w;
wire [31:0] soc_spiflash_bus_dat_r;
wire [3:0] soc_spiflash_bus_sel;
wire soc_spiflash_bus_cyc;
wire soc_spiflash_bus_stb;
reg soc_spiflash_bus_ack = 1'd0;
wire soc_spiflash_bus_we;
wire [2:0] soc_spiflash_bus_cti;
wire [1:0] soc_spiflash_bus_bte;
reg soc_spiflash_bus_err = 1'd0;
reg [3:0] soc_spiflash_bitbang_storage_full = 4'd0;
wire [3:0] soc_spiflash_bitbang_storage;
reg soc_spiflash_bitbang_re = 1'd0;
reg soc_spiflash_miso_status = 1'd0;
reg soc_spiflash_bitbang_en_storage_full = 1'd0;
wire soc_spiflash_bitbang_en_storage;
reg soc_spiflash_bitbang_en_re = 1'd0;
reg soc_spiflash_cs_n = 1'd1;
reg soc_spiflash_clk = 1'd0;
reg [31:0] soc_spiflash_sr = 32'd0;
reg soc_spiflash_i = 1'd0;
reg soc_spiflash_miso = 1'd0;
reg [7:0] soc_spiflash_counter = 8'd0;
reg [3:0] soc_a7ddrphy_half_sys8x_taps_storage_full = 4'd8;
wire [3:0] soc_a7ddrphy_half_sys8x_taps_storage;
reg soc_a7ddrphy_half_sys8x_taps_re = 1'd0;
reg [1:0] soc_a7ddrphy_dly_sel_storage_full = 2'd0;
wire [1:0] soc_a7ddrphy_dly_sel_storage;
reg soc_a7ddrphy_dly_sel_re = 1'd0;
wire soc_a7ddrphy_rdly_dq_rst_re;
wire soc_a7ddrphy_rdly_dq_rst_r;
reg soc_a7ddrphy_rdly_dq_rst_w = 1'd0;
wire soc_a7ddrphy_rdly_dq_inc_re;
wire soc_a7ddrphy_rdly_dq_inc_r;
reg soc_a7ddrphy_rdly_dq_inc_w = 1'd0;
wire soc_a7ddrphy_rdly_dq_bitslip_rst_re;
wire soc_a7ddrphy_rdly_dq_bitslip_rst_r;
reg soc_a7ddrphy_rdly_dq_bitslip_rst_w = 1'd0;
wire soc_a7ddrphy_rdly_dq_bitslip_re;
wire soc_a7ddrphy_rdly_dq_bitslip_r;
reg soc_a7ddrphy_rdly_dq_bitslip_w = 1'd0;
wire [13:0] soc_a7ddrphy_dfi_p0_address;
wire [2:0] soc_a7ddrphy_dfi_p0_bank;
wire soc_a7ddrphy_dfi_p0_cas_n;
wire soc_a7ddrphy_dfi_p0_cs_n;
wire soc_a7ddrphy_dfi_p0_ras_n;
wire soc_a7ddrphy_dfi_p0_we_n;
wire soc_a7ddrphy_dfi_p0_cke;
wire soc_a7ddrphy_dfi_p0_odt;
wire soc_a7ddrphy_dfi_p0_reset_n;
wire soc_a7ddrphy_dfi_p0_act_n;
wire [31:0] soc_a7ddrphy_dfi_p0_wrdata;
wire soc_a7ddrphy_dfi_p0_wrdata_en;
wire [3:0] soc_a7ddrphy_dfi_p0_wrdata_mask;
wire soc_a7ddrphy_dfi_p0_rddata_en;
reg [31:0] soc_a7ddrphy_dfi_p0_rddata = 32'd0;
reg soc_a7ddrphy_dfi_p0_rddata_valid = 1'd0;
wire [13:0] soc_a7ddrphy_dfi_p1_address;
wire [2:0] soc_a7ddrphy_dfi_p1_bank;
wire soc_a7ddrphy_dfi_p1_cas_n;
wire soc_a7ddrphy_dfi_p1_cs_n;
wire soc_a7ddrphy_dfi_p1_ras_n;
wire soc_a7ddrphy_dfi_p1_we_n;
wire soc_a7ddrphy_dfi_p1_cke;
wire soc_a7ddrphy_dfi_p1_odt;
wire soc_a7ddrphy_dfi_p1_reset_n;
wire soc_a7ddrphy_dfi_p1_act_n;
wire [31:0] soc_a7ddrphy_dfi_p1_wrdata;
wire soc_a7ddrphy_dfi_p1_wrdata_en;
wire [3:0] soc_a7ddrphy_dfi_p1_wrdata_mask;
wire soc_a7ddrphy_dfi_p1_rddata_en;
reg [31:0] soc_a7ddrphy_dfi_p1_rddata = 32'd0;
reg soc_a7ddrphy_dfi_p1_rddata_valid = 1'd0;
wire [13:0] soc_a7ddrphy_dfi_p2_address;
wire [2:0] soc_a7ddrphy_dfi_p2_bank;
wire soc_a7ddrphy_dfi_p2_cas_n;
wire soc_a7ddrphy_dfi_p2_cs_n;
wire soc_a7ddrphy_dfi_p2_ras_n;
wire soc_a7ddrphy_dfi_p2_we_n;
wire soc_a7ddrphy_dfi_p2_cke;
wire soc_a7ddrphy_dfi_p2_odt;
wire soc_a7ddrphy_dfi_p2_reset_n;
wire soc_a7ddrphy_dfi_p2_act_n;
wire [31:0] soc_a7ddrphy_dfi_p2_wrdata;
wire soc_a7ddrphy_dfi_p2_wrdata_en;
wire [3:0] soc_a7ddrphy_dfi_p2_wrdata_mask;
wire soc_a7ddrphy_dfi_p2_rddata_en;
reg [31:0] soc_a7ddrphy_dfi_p2_rddata = 32'd0;
reg soc_a7ddrphy_dfi_p2_rddata_valid = 1'd0;
wire [13:0] soc_a7ddrphy_dfi_p3_address;
wire [2:0] soc_a7ddrphy_dfi_p3_bank;
wire soc_a7ddrphy_dfi_p3_cas_n;
wire soc_a7ddrphy_dfi_p3_cs_n;
wire soc_a7ddrphy_dfi_p3_ras_n;
wire soc_a7ddrphy_dfi_p3_we_n;
wire soc_a7ddrphy_dfi_p3_cke;
wire soc_a7ddrphy_dfi_p3_odt;
wire soc_a7ddrphy_dfi_p3_reset_n;
wire soc_a7ddrphy_dfi_p3_act_n;
wire [31:0] soc_a7ddrphy_dfi_p3_wrdata;
wire soc_a7ddrphy_dfi_p3_wrdata_en;
wire [3:0] soc_a7ddrphy_dfi_p3_wrdata_mask;
wire soc_a7ddrphy_dfi_p3_rddata_en;
reg [31:0] soc_a7ddrphy_dfi_p3_rddata = 32'd0;
reg soc_a7ddrphy_dfi_p3_rddata_valid = 1'd0;
wire soc_a7ddrphy_sd_clk_se;
reg soc_a7ddrphy_oe_dqs = 1'd0;
wire soc_a7ddrphy_dqs_preamble;
wire soc_a7ddrphy_dqs_postamble;
reg [7:0] soc_a7ddrphy_dqs_serdes_pattern = 8'd85;
wire soc_a7ddrphy_dqs_nodelay0;
wire soc_a7ddrphy_dqs_t0;
wire soc_a7ddrphy0;
wire soc_a7ddrphy_dqs_nodelay1;
wire soc_a7ddrphy_dqs_t1;
wire soc_a7ddrphy1;
reg soc_a7ddrphy_oe_dq = 1'd0;
wire soc_a7ddrphy_dq_o_nodelay0;
wire soc_a7ddrphy_dq_i_nodelay0;
wire soc_a7ddrphy_dq_i_delayed0;
wire soc_a7ddrphy_dq_t0;
wire [7:0] soc_a7ddrphy_dq_i_data0;
wire [7:0] soc_a7ddrphy_bitslip0_i;
reg [7:0] soc_a7ddrphy_bitslip0_o = 8'd0;
reg [2:0] soc_a7ddrphy_bitslip0_value = 3'd0;
reg [15:0] soc_a7ddrphy_bitslip0_r = 16'd0;
wire soc_a7ddrphy_dq_o_nodelay1;
wire soc_a7ddrphy_dq_i_nodelay1;
wire soc_a7ddrphy_dq_i_delayed1;
wire soc_a7ddrphy_dq_t1;
wire [7:0] soc_a7ddrphy_dq_i_data1;
wire [7:0] soc_a7ddrphy_bitslip1_i;
reg [7:0] soc_a7ddrphy_bitslip1_o = 8'd0;
reg [2:0] soc_a7ddrphy_bitslip1_value = 3'd0;
reg [15:0] soc_a7ddrphy_bitslip1_r = 16'd0;
wire soc_a7ddrphy_dq_o_nodelay2;
wire soc_a7ddrphy_dq_i_nodelay2;
wire soc_a7ddrphy_dq_i_delayed2;
wire soc_a7ddrphy_dq_t2;
wire [7:0] soc_a7ddrphy_dq_i_data2;
wire [7:0] soc_a7ddrphy_bitslip2_i;
reg [7:0] soc_a7ddrphy_bitslip2_o = 8'd0;
reg [2:0] soc_a7ddrphy_bitslip2_value = 3'd0;
reg [15:0] soc_a7ddrphy_bitslip2_r = 16'd0;
wire soc_a7ddrphy_dq_o_nodelay3;
wire soc_a7ddrphy_dq_i_nodelay3;
wire soc_a7ddrphy_dq_i_delayed3;
wire soc_a7ddrphy_dq_t3;
wire [7:0] soc_a7ddrphy_dq_i_data3;
wire [7:0] soc_a7ddrphy_bitslip3_i;
reg [7:0] soc_a7ddrphy_bitslip3_o = 8'd0;
reg [2:0] soc_a7ddrphy_bitslip3_value = 3'd0;
reg [15:0] soc_a7ddrphy_bitslip3_r = 16'd0;
wire soc_a7ddrphy_dq_o_nodelay4;
wire soc_a7ddrphy_dq_i_nodelay4;
wire soc_a7ddrphy_dq_i_delayed4;
wire soc_a7ddrphy_dq_t4;
wire [7:0] soc_a7ddrphy_dq_i_data4;
wire [7:0] soc_a7ddrphy_bitslip4_i;
reg [7:0] soc_a7ddrphy_bitslip4_o = 8'd0;
reg [2:0] soc_a7ddrphy_bitslip4_value = 3'd0;
reg [15:0] soc_a7ddrphy_bitslip4_r = 16'd0;
wire soc_a7ddrphy_dq_o_nodelay5;
wire soc_a7ddrphy_dq_i_nodelay5;
wire soc_a7ddrphy_dq_i_delayed5;
wire soc_a7ddrphy_dq_t5;
wire [7:0] soc_a7ddrphy_dq_i_data5;
wire [7:0] soc_a7ddrphy_bitslip5_i;
reg [7:0] soc_a7ddrphy_bitslip5_o = 8'd0;
reg [2:0] soc_a7ddrphy_bitslip5_value = 3'd0;
reg [15:0] soc_a7ddrphy_bitslip5_r = 16'd0;
wire soc_a7ddrphy_dq_o_nodelay6;
wire soc_a7ddrphy_dq_i_nodelay6;
wire soc_a7ddrphy_dq_i_delayed6;
wire soc_a7ddrphy_dq_t6;
wire [7:0] soc_a7ddrphy_dq_i_data6;
wire [7:0] soc_a7ddrphy_bitslip6_i;
reg [7:0] soc_a7ddrphy_bitslip6_o = 8'd0;
reg [2:0] soc_a7ddrphy_bitslip6_value = 3'd0;
reg [15:0] soc_a7ddrphy_bitslip6_r = 16'd0;
wire soc_a7ddrphy_dq_o_nodelay7;
wire soc_a7ddrphy_dq_i_nodelay7;
wire soc_a7ddrphy_dq_i_delayed7;
wire soc_a7ddrphy_dq_t7;
wire [7:0] soc_a7ddrphy_dq_i_data7;
wire [7:0] soc_a7ddrphy_bitslip7_i;
reg [7:0] soc_a7ddrphy_bitslip7_o = 8'd0;
reg [2:0] soc_a7ddrphy_bitslip7_value = 3'd0;
reg [15:0] soc_a7ddrphy_bitslip7_r = 16'd0;
wire soc_a7ddrphy_dq_o_nodelay8;
wire soc_a7ddrphy_dq_i_nodelay8;
wire soc_a7ddrphy_dq_i_delayed8;
wire soc_a7ddrphy_dq_t8;
wire [7:0] soc_a7ddrphy_dq_i_data8;
wire [7:0] soc_a7ddrphy_bitslip8_i;
reg [7:0] soc_a7ddrphy_bitslip8_o = 8'd0;
reg [2:0] soc_a7ddrphy_bitslip8_value = 3'd0;
reg [15:0] soc_a7ddrphy_bitslip8_r = 16'd0;
wire soc_a7ddrphy_dq_o_nodelay9;
wire soc_a7ddrphy_dq_i_nodelay9;
wire soc_a7ddrphy_dq_i_delayed9;
wire soc_a7ddrphy_dq_t9;
wire [7:0] soc_a7ddrphy_dq_i_data9;
wire [7:0] soc_a7ddrphy_bitslip9_i;
reg [7:0] soc_a7ddrphy_bitslip9_o = 8'd0;
reg [2:0] soc_a7ddrphy_bitslip9_value = 3'd0;
reg [15:0] soc_a7ddrphy_bitslip9_r = 16'd0;
wire soc_a7ddrphy_dq_o_nodelay10;
wire soc_a7ddrphy_dq_i_nodelay10;
wire soc_a7ddrphy_dq_i_delayed10;
wire soc_a7ddrphy_dq_t10;
wire [7:0] soc_a7ddrphy_dq_i_data10;
wire [7:0] soc_a7ddrphy_bitslip10_i;
reg [7:0] soc_a7ddrphy_bitslip10_o = 8'd0;
reg [2:0] soc_a7ddrphy_bitslip10_value = 3'd0;
reg [15:0] soc_a7ddrphy_bitslip10_r = 16'd0;
wire soc_a7ddrphy_dq_o_nodelay11;
wire soc_a7ddrphy_dq_i_nodelay11;
wire soc_a7ddrphy_dq_i_delayed11;
wire soc_a7ddrphy_dq_t11;
wire [7:0] soc_a7ddrphy_dq_i_data11;
wire [7:0] soc_a7ddrphy_bitslip11_i;
reg [7:0] soc_a7ddrphy_bitslip11_o = 8'd0;
reg [2:0] soc_a7ddrphy_bitslip11_value = 3'd0;
reg [15:0] soc_a7ddrphy_bitslip11_r = 16'd0;
wire soc_a7ddrphy_dq_o_nodelay12;
wire soc_a7ddrphy_dq_i_nodelay12;
wire soc_a7ddrphy_dq_i_delayed12;
wire soc_a7ddrphy_dq_t12;
wire [7:0] soc_a7ddrphy_dq_i_data12;
wire [7:0] soc_a7ddrphy_bitslip12_i;
reg [7:0] soc_a7ddrphy_bitslip12_o = 8'd0;
reg [2:0] soc_a7ddrphy_bitslip12_value = 3'd0;
reg [15:0] soc_a7ddrphy_bitslip12_r = 16'd0;
wire soc_a7ddrphy_dq_o_nodelay13;
wire soc_a7ddrphy_dq_i_nodelay13;
wire soc_a7ddrphy_dq_i_delayed13;
wire soc_a7ddrphy_dq_t13;
wire [7:0] soc_a7ddrphy_dq_i_data13;
wire [7:0] soc_a7ddrphy_bitslip13_i;
reg [7:0] soc_a7ddrphy_bitslip13_o = 8'd0;
reg [2:0] soc_a7ddrphy_bitslip13_value = 3'd0;
reg [15:0] soc_a7ddrphy_bitslip13_r = 16'd0;
wire soc_a7ddrphy_dq_o_nodelay14;
wire soc_a7ddrphy_dq_i_nodelay14;
wire soc_a7ddrphy_dq_i_delayed14;
wire soc_a7ddrphy_dq_t14;
wire [7:0] soc_a7ddrphy_dq_i_data14;
wire [7:0] soc_a7ddrphy_bitslip14_i;
reg [7:0] soc_a7ddrphy_bitslip14_o = 8'd0;
reg [2:0] soc_a7ddrphy_bitslip14_value = 3'd0;
reg [15:0] soc_a7ddrphy_bitslip14_r = 16'd0;
wire soc_a7ddrphy_dq_o_nodelay15;
wire soc_a7ddrphy_dq_i_nodelay15;
wire soc_a7ddrphy_dq_i_delayed15;
wire soc_a7ddrphy_dq_t15;
wire [7:0] soc_a7ddrphy_dq_i_data15;
wire [7:0] soc_a7ddrphy_bitslip15_i;
reg [7:0] soc_a7ddrphy_bitslip15_o = 8'd0;
reg [2:0] soc_a7ddrphy_bitslip15_value = 3'd0;
reg [15:0] soc_a7ddrphy_bitslip15_r = 16'd0;
reg soc_a7ddrphy_n_rddata_en0 = 1'd0;
reg soc_a7ddrphy_n_rddata_en1 = 1'd0;
reg soc_a7ddrphy_n_rddata_en2 = 1'd0;
reg soc_a7ddrphy_n_rddata_en3 = 1'd0;
reg soc_a7ddrphy_n_rddata_en4 = 1'd0;
reg soc_a7ddrphy_n_rddata_en5 = 1'd0;
reg soc_a7ddrphy_n_rddata_en6 = 1'd0;
reg soc_a7ddrphy_n_rddata_en7 = 1'd0;
wire soc_a7ddrphy_oe;
reg [3:0] soc_a7ddrphy_last_wrdata_en = 4'd0;
wire [13:0] soc_basesoc_sdram_inti_p0_address;
wire [2:0] soc_basesoc_sdram_inti_p0_bank;
reg soc_basesoc_sdram_inti_p0_cas_n = 1'd1;
reg soc_basesoc_sdram_inti_p0_cs_n = 1'd1;
reg soc_basesoc_sdram_inti_p0_ras_n = 1'd1;
reg soc_basesoc_sdram_inti_p0_we_n = 1'd1;
wire soc_basesoc_sdram_inti_p0_cke;
wire soc_basesoc_sdram_inti_p0_odt;
wire soc_basesoc_sdram_inti_p0_reset_n;
reg soc_basesoc_sdram_inti_p0_act_n = 1'd1;
wire [31:0] soc_basesoc_sdram_inti_p0_wrdata;
wire soc_basesoc_sdram_inti_p0_wrdata_en;
wire [3:0] soc_basesoc_sdram_inti_p0_wrdata_mask;
wire soc_basesoc_sdram_inti_p0_rddata_en;
reg [31:0] soc_basesoc_sdram_inti_p0_rddata = 32'd0;
reg soc_basesoc_sdram_inti_p0_rddata_valid = 1'd0;
wire [13:0] soc_basesoc_sdram_inti_p1_address;
wire [2:0] soc_basesoc_sdram_inti_p1_bank;
reg soc_basesoc_sdram_inti_p1_cas_n = 1'd1;
reg soc_basesoc_sdram_inti_p1_cs_n = 1'd1;
reg soc_basesoc_sdram_inti_p1_ras_n = 1'd1;
reg soc_basesoc_sdram_inti_p1_we_n = 1'd1;
wire soc_basesoc_sdram_inti_p1_cke;
wire soc_basesoc_sdram_inti_p1_odt;
wire soc_basesoc_sdram_inti_p1_reset_n;
reg soc_basesoc_sdram_inti_p1_act_n = 1'd1;
wire [31:0] soc_basesoc_sdram_inti_p1_wrdata;
wire soc_basesoc_sdram_inti_p1_wrdata_en;
wire [3:0] soc_basesoc_sdram_inti_p1_wrdata_mask;
wire soc_basesoc_sdram_inti_p1_rddata_en;
reg [31:0] soc_basesoc_sdram_inti_p1_rddata = 32'd0;
reg soc_basesoc_sdram_inti_p1_rddata_valid = 1'd0;
wire [13:0] soc_basesoc_sdram_inti_p2_address;
wire [2:0] soc_basesoc_sdram_inti_p2_bank;
reg soc_basesoc_sdram_inti_p2_cas_n = 1'd1;
reg soc_basesoc_sdram_inti_p2_cs_n = 1'd1;
reg soc_basesoc_sdram_inti_p2_ras_n = 1'd1;
reg soc_basesoc_sdram_inti_p2_we_n = 1'd1;
wire soc_basesoc_sdram_inti_p2_cke;
wire soc_basesoc_sdram_inti_p2_odt;
wire soc_basesoc_sdram_inti_p2_reset_n;
reg soc_basesoc_sdram_inti_p2_act_n = 1'd1;
wire [31:0] soc_basesoc_sdram_inti_p2_wrdata;
wire soc_basesoc_sdram_inti_p2_wrdata_en;
wire [3:0] soc_basesoc_sdram_inti_p2_wrdata_mask;
wire soc_basesoc_sdram_inti_p2_rddata_en;
reg [31:0] soc_basesoc_sdram_inti_p2_rddata = 32'd0;
reg soc_basesoc_sdram_inti_p2_rddata_valid = 1'd0;
wire [13:0] soc_basesoc_sdram_inti_p3_address;
wire [2:0] soc_basesoc_sdram_inti_p3_bank;
reg soc_basesoc_sdram_inti_p3_cas_n = 1'd1;
reg soc_basesoc_sdram_inti_p3_cs_n = 1'd1;
reg soc_basesoc_sdram_inti_p3_ras_n = 1'd1;
reg soc_basesoc_sdram_inti_p3_we_n = 1'd1;
wire soc_basesoc_sdram_inti_p3_cke;
wire soc_basesoc_sdram_inti_p3_odt;
wire soc_basesoc_sdram_inti_p3_reset_n;
reg soc_basesoc_sdram_inti_p3_act_n = 1'd1;
wire [31:0] soc_basesoc_sdram_inti_p3_wrdata;
wire soc_basesoc_sdram_inti_p3_wrdata_en;
wire [3:0] soc_basesoc_sdram_inti_p3_wrdata_mask;
wire soc_basesoc_sdram_inti_p3_rddata_en;
reg [31:0] soc_basesoc_sdram_inti_p3_rddata = 32'd0;
reg soc_basesoc_sdram_inti_p3_rddata_valid = 1'd0;
wire [13:0] soc_basesoc_sdram_slave_p0_address;
wire [2:0] soc_basesoc_sdram_slave_p0_bank;
wire soc_basesoc_sdram_slave_p0_cas_n;
wire soc_basesoc_sdram_slave_p0_cs_n;
wire soc_basesoc_sdram_slave_p0_ras_n;
wire soc_basesoc_sdram_slave_p0_we_n;
wire soc_basesoc_sdram_slave_p0_cke;
wire soc_basesoc_sdram_slave_p0_odt;
wire soc_basesoc_sdram_slave_p0_reset_n;
wire soc_basesoc_sdram_slave_p0_act_n;
wire [31:0] soc_basesoc_sdram_slave_p0_wrdata;
wire soc_basesoc_sdram_slave_p0_wrdata_en;
wire [3:0] soc_basesoc_sdram_slave_p0_wrdata_mask;
wire soc_basesoc_sdram_slave_p0_rddata_en;
reg [31:0] soc_basesoc_sdram_slave_p0_rddata = 32'd0;
reg soc_basesoc_sdram_slave_p0_rddata_valid = 1'd0;
wire [13:0] soc_basesoc_sdram_slave_p1_address;
wire [2:0] soc_basesoc_sdram_slave_p1_bank;
wire soc_basesoc_sdram_slave_p1_cas_n;
wire soc_basesoc_sdram_slave_p1_cs_n;
wire soc_basesoc_sdram_slave_p1_ras_n;
wire soc_basesoc_sdram_slave_p1_we_n;
wire soc_basesoc_sdram_slave_p1_cke;
wire soc_basesoc_sdram_slave_p1_odt;
wire soc_basesoc_sdram_slave_p1_reset_n;
wire soc_basesoc_sdram_slave_p1_act_n;
wire [31:0] soc_basesoc_sdram_slave_p1_wrdata;
wire soc_basesoc_sdram_slave_p1_wrdata_en;
wire [3:0] soc_basesoc_sdram_slave_p1_wrdata_mask;
wire soc_basesoc_sdram_slave_p1_rddata_en;
reg [31:0] soc_basesoc_sdram_slave_p1_rddata = 32'd0;
reg soc_basesoc_sdram_slave_p1_rddata_valid = 1'd0;
wire [13:0] soc_basesoc_sdram_slave_p2_address;
wire [2:0] soc_basesoc_sdram_slave_p2_bank;
wire soc_basesoc_sdram_slave_p2_cas_n;
wire soc_basesoc_sdram_slave_p2_cs_n;
wire soc_basesoc_sdram_slave_p2_ras_n;
wire soc_basesoc_sdram_slave_p2_we_n;
wire soc_basesoc_sdram_slave_p2_cke;
wire soc_basesoc_sdram_slave_p2_odt;
wire soc_basesoc_sdram_slave_p2_reset_n;
wire soc_basesoc_sdram_slave_p2_act_n;
wire [31:0] soc_basesoc_sdram_slave_p2_wrdata;
wire soc_basesoc_sdram_slave_p2_wrdata_en;
wire [3:0] soc_basesoc_sdram_slave_p2_wrdata_mask;
wire soc_basesoc_sdram_slave_p2_rddata_en;
reg [31:0] soc_basesoc_sdram_slave_p2_rddata = 32'd0;
reg soc_basesoc_sdram_slave_p2_rddata_valid = 1'd0;
wire [13:0] soc_basesoc_sdram_slave_p3_address;
wire [2:0] soc_basesoc_sdram_slave_p3_bank;
wire soc_basesoc_sdram_slave_p3_cas_n;
wire soc_basesoc_sdram_slave_p3_cs_n;
wire soc_basesoc_sdram_slave_p3_ras_n;
wire soc_basesoc_sdram_slave_p3_we_n;
wire soc_basesoc_sdram_slave_p3_cke;
wire soc_basesoc_sdram_slave_p3_odt;
wire soc_basesoc_sdram_slave_p3_reset_n;
wire soc_basesoc_sdram_slave_p3_act_n;
wire [31:0] soc_basesoc_sdram_slave_p3_wrdata;
wire soc_basesoc_sdram_slave_p3_wrdata_en;
wire [3:0] soc_basesoc_sdram_slave_p3_wrdata_mask;
wire soc_basesoc_sdram_slave_p3_rddata_en;
reg [31:0] soc_basesoc_sdram_slave_p3_rddata = 32'd0;
reg soc_basesoc_sdram_slave_p3_rddata_valid = 1'd0;
reg [13:0] soc_basesoc_sdram_master_p0_address = 14'd0;
reg [2:0] soc_basesoc_sdram_master_p0_bank = 3'd0;
reg soc_basesoc_sdram_master_p0_cas_n = 1'd1;
reg soc_basesoc_sdram_master_p0_cs_n = 1'd1;
reg soc_basesoc_sdram_master_p0_ras_n = 1'd1;
reg soc_basesoc_sdram_master_p0_we_n = 1'd1;
reg soc_basesoc_sdram_master_p0_cke = 1'd0;
reg soc_basesoc_sdram_master_p0_odt = 1'd0;
reg soc_basesoc_sdram_master_p0_reset_n = 1'd0;
reg soc_basesoc_sdram_master_p0_act_n = 1'd1;
reg [31:0] soc_basesoc_sdram_master_p0_wrdata = 32'd0;
reg soc_basesoc_sdram_master_p0_wrdata_en = 1'd0;
reg [3:0] soc_basesoc_sdram_master_p0_wrdata_mask = 4'd0;
reg soc_basesoc_sdram_master_p0_rddata_en = 1'd0;
wire [31:0] soc_basesoc_sdram_master_p0_rddata;
wire soc_basesoc_sdram_master_p0_rddata_valid;
reg [13:0] soc_basesoc_sdram_master_p1_address = 14'd0;
reg [2:0] soc_basesoc_sdram_master_p1_bank = 3'd0;
reg soc_basesoc_sdram_master_p1_cas_n = 1'd1;
reg soc_basesoc_sdram_master_p1_cs_n = 1'd1;
reg soc_basesoc_sdram_master_p1_ras_n = 1'd1;
reg soc_basesoc_sdram_master_p1_we_n = 1'd1;
reg soc_basesoc_sdram_master_p1_cke = 1'd0;
reg soc_basesoc_sdram_master_p1_odt = 1'd0;
reg soc_basesoc_sdram_master_p1_reset_n = 1'd0;
reg soc_basesoc_sdram_master_p1_act_n = 1'd1;
reg [31:0] soc_basesoc_sdram_master_p1_wrdata = 32'd0;
reg soc_basesoc_sdram_master_p1_wrdata_en = 1'd0;
reg [3:0] soc_basesoc_sdram_master_p1_wrdata_mask = 4'd0;
reg soc_basesoc_sdram_master_p1_rddata_en = 1'd0;
wire [31:0] soc_basesoc_sdram_master_p1_rddata;
wire soc_basesoc_sdram_master_p1_rddata_valid;
reg [13:0] soc_basesoc_sdram_master_p2_address = 14'd0;
reg [2:0] soc_basesoc_sdram_master_p2_bank = 3'd0;
reg soc_basesoc_sdram_master_p2_cas_n = 1'd1;
reg soc_basesoc_sdram_master_p2_cs_n = 1'd1;
reg soc_basesoc_sdram_master_p2_ras_n = 1'd1;
reg soc_basesoc_sdram_master_p2_we_n = 1'd1;
reg soc_basesoc_sdram_master_p2_cke = 1'd0;
reg soc_basesoc_sdram_master_p2_odt = 1'd0;
reg soc_basesoc_sdram_master_p2_reset_n = 1'd0;
reg soc_basesoc_sdram_master_p2_act_n = 1'd1;
reg [31:0] soc_basesoc_sdram_master_p2_wrdata = 32'd0;
reg soc_basesoc_sdram_master_p2_wrdata_en = 1'd0;
reg [3:0] soc_basesoc_sdram_master_p2_wrdata_mask = 4'd0;
reg soc_basesoc_sdram_master_p2_rddata_en = 1'd0;
wire [31:0] soc_basesoc_sdram_master_p2_rddata;
wire soc_basesoc_sdram_master_p2_rddata_valid;
reg [13:0] soc_basesoc_sdram_master_p3_address = 14'd0;
reg [2:0] soc_basesoc_sdram_master_p3_bank = 3'd0;
reg soc_basesoc_sdram_master_p3_cas_n = 1'd1;
reg soc_basesoc_sdram_master_p3_cs_n = 1'd1;
reg soc_basesoc_sdram_master_p3_ras_n = 1'd1;
reg soc_basesoc_sdram_master_p3_we_n = 1'd1;
reg soc_basesoc_sdram_master_p3_cke = 1'd0;
reg soc_basesoc_sdram_master_p3_odt = 1'd0;
reg soc_basesoc_sdram_master_p3_reset_n = 1'd0;
reg soc_basesoc_sdram_master_p3_act_n = 1'd1;
reg [31:0] soc_basesoc_sdram_master_p3_wrdata = 32'd0;
reg soc_basesoc_sdram_master_p3_wrdata_en = 1'd0;
reg [3:0] soc_basesoc_sdram_master_p3_wrdata_mask = 4'd0;
reg soc_basesoc_sdram_master_p3_rddata_en = 1'd0;
wire [31:0] soc_basesoc_sdram_master_p3_rddata;
wire soc_basesoc_sdram_master_p3_rddata_valid;
reg [3:0] soc_basesoc_sdram_storage_full = 4'd0;
wire [3:0] soc_basesoc_sdram_storage;
reg soc_basesoc_sdram_re = 1'd0;
reg [5:0] soc_basesoc_sdram_phaseinjector0_command_storage_full = 6'd0;
wire [5:0] soc_basesoc_sdram_phaseinjector0_command_storage;
reg soc_basesoc_sdram_phaseinjector0_command_re = 1'd0;
wire soc_basesoc_sdram_phaseinjector0_command_issue_re;
wire soc_basesoc_sdram_phaseinjector0_command_issue_r;
reg soc_basesoc_sdram_phaseinjector0_command_issue_w = 1'd0;
reg [13:0] soc_basesoc_sdram_phaseinjector0_address_storage_full = 14'd0;
wire [13:0] soc_basesoc_sdram_phaseinjector0_address_storage;
reg soc_basesoc_sdram_phaseinjector0_address_re = 1'd0;
reg [2:0] soc_basesoc_sdram_phaseinjector0_baddress_storage_full = 3'd0;
wire [2:0] soc_basesoc_sdram_phaseinjector0_baddress_storage;
reg soc_basesoc_sdram_phaseinjector0_baddress_re = 1'd0;
reg [31:0] soc_basesoc_sdram_phaseinjector0_wrdata_storage_full = 32'd0;
wire [31:0] soc_basesoc_sdram_phaseinjector0_wrdata_storage;
reg soc_basesoc_sdram_phaseinjector0_wrdata_re = 1'd0;
reg [31:0] soc_basesoc_sdram_phaseinjector0_status = 32'd0;
reg [5:0] soc_basesoc_sdram_phaseinjector1_command_storage_full = 6'd0;
wire [5:0] soc_basesoc_sdram_phaseinjector1_command_storage;
reg soc_basesoc_sdram_phaseinjector1_command_re = 1'd0;
wire soc_basesoc_sdram_phaseinjector1_command_issue_re;
wire soc_basesoc_sdram_phaseinjector1_command_issue_r;
reg soc_basesoc_sdram_phaseinjector1_command_issue_w = 1'd0;
reg [13:0] soc_basesoc_sdram_phaseinjector1_address_storage_full = 14'd0;
wire [13:0] soc_basesoc_sdram_phaseinjector1_address_storage;
reg soc_basesoc_sdram_phaseinjector1_address_re = 1'd0;
reg [2:0] soc_basesoc_sdram_phaseinjector1_baddress_storage_full = 3'd0;
wire [2:0] soc_basesoc_sdram_phaseinjector1_baddress_storage;
reg soc_basesoc_sdram_phaseinjector1_baddress_re = 1'd0;
reg [31:0] soc_basesoc_sdram_phaseinjector1_wrdata_storage_full = 32'd0;
wire [31:0] soc_basesoc_sdram_phaseinjector1_wrdata_storage;
reg soc_basesoc_sdram_phaseinjector1_wrdata_re = 1'd0;
reg [31:0] soc_basesoc_sdram_phaseinjector1_status = 32'd0;
reg [5:0] soc_basesoc_sdram_phaseinjector2_command_storage_full = 6'd0;
wire [5:0] soc_basesoc_sdram_phaseinjector2_command_storage;
reg soc_basesoc_sdram_phaseinjector2_command_re = 1'd0;
wire soc_basesoc_sdram_phaseinjector2_command_issue_re;
wire soc_basesoc_sdram_phaseinjector2_command_issue_r;
reg soc_basesoc_sdram_phaseinjector2_command_issue_w = 1'd0;
reg [13:0] soc_basesoc_sdram_phaseinjector2_address_storage_full = 14'd0;
wire [13:0] soc_basesoc_sdram_phaseinjector2_address_storage;
reg soc_basesoc_sdram_phaseinjector2_address_re = 1'd0;
reg [2:0] soc_basesoc_sdram_phaseinjector2_baddress_storage_full = 3'd0;
wire [2:0] soc_basesoc_sdram_phaseinjector2_baddress_storage;
reg soc_basesoc_sdram_phaseinjector2_baddress_re = 1'd0;
reg [31:0] soc_basesoc_sdram_phaseinjector2_wrdata_storage_full = 32'd0;
wire [31:0] soc_basesoc_sdram_phaseinjector2_wrdata_storage;
reg soc_basesoc_sdram_phaseinjector2_wrdata_re = 1'd0;
reg [31:0] soc_basesoc_sdram_phaseinjector2_status = 32'd0;
reg [5:0] soc_basesoc_sdram_phaseinjector3_command_storage_full = 6'd0;
wire [5:0] soc_basesoc_sdram_phaseinjector3_command_storage;
reg soc_basesoc_sdram_phaseinjector3_command_re = 1'd0;
wire soc_basesoc_sdram_phaseinjector3_command_issue_re;
wire soc_basesoc_sdram_phaseinjector3_command_issue_r;
reg soc_basesoc_sdram_phaseinjector3_command_issue_w = 1'd0;
reg [13:0] soc_basesoc_sdram_phaseinjector3_address_storage_full = 14'd0;
wire [13:0] soc_basesoc_sdram_phaseinjector3_address_storage;
reg soc_basesoc_sdram_phaseinjector3_address_re = 1'd0;
reg [2:0] soc_basesoc_sdram_phaseinjector3_baddress_storage_full = 3'd0;
wire [2:0] soc_basesoc_sdram_phaseinjector3_baddress_storage;
reg soc_basesoc_sdram_phaseinjector3_baddress_re = 1'd0;
reg [31:0] soc_basesoc_sdram_phaseinjector3_wrdata_storage_full = 32'd0;
wire [31:0] soc_basesoc_sdram_phaseinjector3_wrdata_storage;
reg soc_basesoc_sdram_phaseinjector3_wrdata_re = 1'd0;
reg [31:0] soc_basesoc_sdram_phaseinjector3_status = 32'd0;
reg [13:0] soc_basesoc_sdram_dfi_p0_address = 14'd0;
reg [2:0] soc_basesoc_sdram_dfi_p0_bank = 3'd0;
reg soc_basesoc_sdram_dfi_p0_cas_n = 1'd1;
reg soc_basesoc_sdram_dfi_p0_cs_n = 1'd1;
reg soc_basesoc_sdram_dfi_p0_ras_n = 1'd1;
reg soc_basesoc_sdram_dfi_p0_we_n = 1'd1;
wire soc_basesoc_sdram_dfi_p0_cke;
wire soc_basesoc_sdram_dfi_p0_odt;
wire soc_basesoc_sdram_dfi_p0_reset_n;
reg soc_basesoc_sdram_dfi_p0_act_n = 1'd1;
wire [31:0] soc_basesoc_sdram_dfi_p0_wrdata;
reg soc_basesoc_sdram_dfi_p0_wrdata_en = 1'd0;
wire [3:0] soc_basesoc_sdram_dfi_p0_wrdata_mask;
reg soc_basesoc_sdram_dfi_p0_rddata_en = 1'd0;
wire [31:0] soc_basesoc_sdram_dfi_p0_rddata;
wire soc_basesoc_sdram_dfi_p0_rddata_valid;
reg [13:0] soc_basesoc_sdram_dfi_p1_address = 14'd0;
reg [2:0] soc_basesoc_sdram_dfi_p1_bank = 3'd0;
reg soc_basesoc_sdram_dfi_p1_cas_n = 1'd1;
reg soc_basesoc_sdram_dfi_p1_cs_n = 1'd1;
reg soc_basesoc_sdram_dfi_p1_ras_n = 1'd1;
reg soc_basesoc_sdram_dfi_p1_we_n = 1'd1;
wire soc_basesoc_sdram_dfi_p1_cke;
wire soc_basesoc_sdram_dfi_p1_odt;
wire soc_basesoc_sdram_dfi_p1_reset_n;
reg soc_basesoc_sdram_dfi_p1_act_n = 1'd1;
wire [31:0] soc_basesoc_sdram_dfi_p1_wrdata;
reg soc_basesoc_sdram_dfi_p1_wrdata_en = 1'd0;
wire [3:0] soc_basesoc_sdram_dfi_p1_wrdata_mask;
reg soc_basesoc_sdram_dfi_p1_rddata_en = 1'd0;
wire [31:0] soc_basesoc_sdram_dfi_p1_rddata;
wire soc_basesoc_sdram_dfi_p1_rddata_valid;
reg [13:0] soc_basesoc_sdram_dfi_p2_address = 14'd0;
reg [2:0] soc_basesoc_sdram_dfi_p2_bank = 3'd0;
reg soc_basesoc_sdram_dfi_p2_cas_n = 1'd1;
reg soc_basesoc_sdram_dfi_p2_cs_n = 1'd1;
reg soc_basesoc_sdram_dfi_p2_ras_n = 1'd1;
reg soc_basesoc_sdram_dfi_p2_we_n = 1'd1;
wire soc_basesoc_sdram_dfi_p2_cke;
wire soc_basesoc_sdram_dfi_p2_odt;
wire soc_basesoc_sdram_dfi_p2_reset_n;
reg soc_basesoc_sdram_dfi_p2_act_n = 1'd1;
wire [31:0] soc_basesoc_sdram_dfi_p2_wrdata;
reg soc_basesoc_sdram_dfi_p2_wrdata_en = 1'd0;
wire [3:0] soc_basesoc_sdram_dfi_p2_wrdata_mask;
reg soc_basesoc_sdram_dfi_p2_rddata_en = 1'd0;
wire [31:0] soc_basesoc_sdram_dfi_p2_rddata;
wire soc_basesoc_sdram_dfi_p2_rddata_valid;
reg [13:0] soc_basesoc_sdram_dfi_p3_address = 14'd0;
reg [2:0] soc_basesoc_sdram_dfi_p3_bank = 3'd0;
reg soc_basesoc_sdram_dfi_p3_cas_n = 1'd1;
reg soc_basesoc_sdram_dfi_p3_cs_n = 1'd1;
reg soc_basesoc_sdram_dfi_p3_ras_n = 1'd1;
reg soc_basesoc_sdram_dfi_p3_we_n = 1'd1;
wire soc_basesoc_sdram_dfi_p3_cke;
wire soc_basesoc_sdram_dfi_p3_odt;
wire soc_basesoc_sdram_dfi_p3_reset_n;
reg soc_basesoc_sdram_dfi_p3_act_n = 1'd1;
wire [31:0] soc_basesoc_sdram_dfi_p3_wrdata;
reg soc_basesoc_sdram_dfi_p3_wrdata_en = 1'd0;
wire [3:0] soc_basesoc_sdram_dfi_p3_wrdata_mask;
reg soc_basesoc_sdram_dfi_p3_rddata_en = 1'd0;
wire [31:0] soc_basesoc_sdram_dfi_p3_rddata;
wire soc_basesoc_sdram_dfi_p3_rddata_valid;
wire soc_basesoc_sdram_interface_bank0_valid;
wire soc_basesoc_sdram_interface_bank0_ready;
wire soc_basesoc_sdram_interface_bank0_we;
wire [20:0] soc_basesoc_sdram_interface_bank0_addr;
wire soc_basesoc_sdram_interface_bank0_lock;
wire soc_basesoc_sdram_interface_bank0_wdata_ready;
wire soc_basesoc_sdram_interface_bank0_rdata_valid;
wire soc_basesoc_sdram_interface_bank1_valid;
wire soc_basesoc_sdram_interface_bank1_ready;
wire soc_basesoc_sdram_interface_bank1_we;
wire [20:0] soc_basesoc_sdram_interface_bank1_addr;
wire soc_basesoc_sdram_interface_bank1_lock;
wire soc_basesoc_sdram_interface_bank1_wdata_ready;
wire soc_basesoc_sdram_interface_bank1_rdata_valid;
wire soc_basesoc_sdram_interface_bank2_valid;
wire soc_basesoc_sdram_interface_bank2_ready;
wire soc_basesoc_sdram_interface_bank2_we;
wire [20:0] soc_basesoc_sdram_interface_bank2_addr;
wire soc_basesoc_sdram_interface_bank2_lock;
wire soc_basesoc_sdram_interface_bank2_wdata_ready;
wire soc_basesoc_sdram_interface_bank2_rdata_valid;
wire soc_basesoc_sdram_interface_bank3_valid;
wire soc_basesoc_sdram_interface_bank3_ready;
wire soc_basesoc_sdram_interface_bank3_we;
wire [20:0] soc_basesoc_sdram_interface_bank3_addr;
wire soc_basesoc_sdram_interface_bank3_lock;
wire soc_basesoc_sdram_interface_bank3_wdata_ready;
wire soc_basesoc_sdram_interface_bank3_rdata_valid;
wire soc_basesoc_sdram_interface_bank4_valid;
wire soc_basesoc_sdram_interface_bank4_ready;
wire soc_basesoc_sdram_interface_bank4_we;
wire [20:0] soc_basesoc_sdram_interface_bank4_addr;
wire soc_basesoc_sdram_interface_bank4_lock;
wire soc_basesoc_sdram_interface_bank4_wdata_ready;
wire soc_basesoc_sdram_interface_bank4_rdata_valid;
wire soc_basesoc_sdram_interface_bank5_valid;
wire soc_basesoc_sdram_interface_bank5_ready;
wire soc_basesoc_sdram_interface_bank5_we;
wire [20:0] soc_basesoc_sdram_interface_bank5_addr;
wire soc_basesoc_sdram_interface_bank5_lock;
wire soc_basesoc_sdram_interface_bank5_wdata_ready;
wire soc_basesoc_sdram_interface_bank5_rdata_valid;
wire soc_basesoc_sdram_interface_bank6_valid;
wire soc_basesoc_sdram_interface_bank6_ready;
wire soc_basesoc_sdram_interface_bank6_we;
wire [20:0] soc_basesoc_sdram_interface_bank6_addr;
wire soc_basesoc_sdram_interface_bank6_lock;
wire soc_basesoc_sdram_interface_bank6_wdata_ready;
wire soc_basesoc_sdram_interface_bank6_rdata_valid;
wire soc_basesoc_sdram_interface_bank7_valid;
wire soc_basesoc_sdram_interface_bank7_ready;
wire soc_basesoc_sdram_interface_bank7_we;
wire [20:0] soc_basesoc_sdram_interface_bank7_addr;
wire soc_basesoc_sdram_interface_bank7_lock;
wire soc_basesoc_sdram_interface_bank7_wdata_ready;
wire soc_basesoc_sdram_interface_bank7_rdata_valid;
reg [127:0] soc_basesoc_sdram_interface_wdata = 128'd0;
reg [15:0] soc_basesoc_sdram_interface_wdata_we = 16'd0;
wire [127:0] soc_basesoc_sdram_interface_rdata;
reg soc_basesoc_sdram_cmd_valid = 1'd0;
reg soc_basesoc_sdram_cmd_ready = 1'd0;
reg soc_basesoc_sdram_cmd_last = 1'd0;
reg [13:0] soc_basesoc_sdram_cmd_payload_a = 14'd0;
reg [2:0] soc_basesoc_sdram_cmd_payload_ba = 3'd0;
reg soc_basesoc_sdram_cmd_payload_cas = 1'd0;
reg soc_basesoc_sdram_cmd_payload_ras = 1'd0;
reg soc_basesoc_sdram_cmd_payload_we = 1'd0;
reg soc_basesoc_sdram_cmd_payload_is_read = 1'd0;
reg soc_basesoc_sdram_cmd_payload_is_write = 1'd0;
wire soc_basesoc_sdram_timer_wait;
wire soc_basesoc_sdram_timer_done;
reg [9:0] soc_basesoc_sdram_timer_count = 10'd782;
reg soc_basesoc_sdram_timer_load = 1'd0;
reg [9:0] soc_basesoc_sdram_timer_load_count = 10'd0;
wire soc_basesoc_sdram_timer_reset;
reg soc_basesoc_sdram_generator_start = 1'd0;
reg soc_basesoc_sdram_generator_done = 1'd0;
reg [4:0] soc_basesoc_sdram_generator_counter = 5'd0;
wire soc_basesoc_sdram_bankmachine0_req_valid;
wire soc_basesoc_sdram_bankmachine0_req_ready;
wire soc_basesoc_sdram_bankmachine0_req_we;
wire [20:0] soc_basesoc_sdram_bankmachine0_req_addr;
wire soc_basesoc_sdram_bankmachine0_req_lock;
reg soc_basesoc_sdram_bankmachine0_req_wdata_ready = 1'd0;
reg soc_basesoc_sdram_bankmachine0_req_rdata_valid = 1'd0;
wire soc_basesoc_sdram_bankmachine0_refresh_req;
reg soc_basesoc_sdram_bankmachine0_refresh_gnt = 1'd0;
reg soc_basesoc_sdram_bankmachine0_cmd_valid = 1'd0;
reg soc_basesoc_sdram_bankmachine0_cmd_ready = 1'd0;
reg [13:0] soc_basesoc_sdram_bankmachine0_cmd_payload_a = 14'd0;
wire [2:0] soc_basesoc_sdram_bankmachine0_cmd_payload_ba;
reg soc_basesoc_sdram_bankmachine0_cmd_payload_cas = 1'd0;
reg soc_basesoc_sdram_bankmachine0_cmd_payload_ras = 1'd0;
reg soc_basesoc_sdram_bankmachine0_cmd_payload_we = 1'd0;
reg soc_basesoc_sdram_bankmachine0_cmd_payload_is_cmd = 1'd0;
reg soc_basesoc_sdram_bankmachine0_cmd_payload_is_read = 1'd0;
reg soc_basesoc_sdram_bankmachine0_cmd_payload_is_write = 1'd0;
reg soc_basesoc_sdram_bankmachine0_auto_precharge = 1'd0;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_valid;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_ready;
reg soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_first = 1'd0;
reg soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_last = 1'd0;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_addr;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_valid;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_ready;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_first;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_last;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_addr;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_re;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable;
wire [23:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_din;
wire [23:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_dout;
reg [3:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_level = 4'd0;
reg soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_r;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_we;
wire [23:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_w;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_do_read;
wire [2:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_adr;
wire [23:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_dat_r;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_addr;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_first;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_last;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_addr;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_first;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_last;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_sink_valid;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_sink_ready;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_sink_first;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_sink_last;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_sink_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_sink_payload_addr;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_source_valid;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_source_ready;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_source_first;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_source_last;
reg soc_basesoc_sdram_bankmachine0_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_source_payload_addr = 21'd0;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_pipe_ce;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_busy;
reg soc_basesoc_sdram_bankmachine0_cmd_buffer_valid_n = 1'd0;
reg soc_basesoc_sdram_bankmachine0_cmd_buffer_first_n = 1'd0;
reg soc_basesoc_sdram_bankmachine0_cmd_buffer_last_n = 1'd0;
reg [13:0] soc_basesoc_sdram_bankmachine0_row = 14'd0;
reg soc_basesoc_sdram_bankmachine0_row_opened = 1'd0;
wire soc_basesoc_sdram_bankmachine0_row_hit;
reg soc_basesoc_sdram_bankmachine0_row_open = 1'd0;
reg soc_basesoc_sdram_bankmachine0_row_close = 1'd0;
reg soc_basesoc_sdram_bankmachine0_row_col_n_addr_sel = 1'd0;
wire soc_basesoc_sdram_bankmachine0_twtpcon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_bankmachine0_twtpcon_ready = 1'd1;
reg [2:0] soc_basesoc_sdram_bankmachine0_twtpcon_count = 3'd0;
wire soc_basesoc_sdram_bankmachine0_trccon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_bankmachine0_trccon_ready = 1'd1;
reg [2:0] soc_basesoc_sdram_bankmachine0_trccon_count = 3'd0;
wire soc_basesoc_sdram_bankmachine0_trascon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_bankmachine0_trascon_ready = 1'd1;
reg [2:0] soc_basesoc_sdram_bankmachine0_trascon_count = 3'd0;
wire soc_basesoc_sdram_bankmachine1_req_valid;
wire soc_basesoc_sdram_bankmachine1_req_ready;
wire soc_basesoc_sdram_bankmachine1_req_we;
wire [20:0] soc_basesoc_sdram_bankmachine1_req_addr;
wire soc_basesoc_sdram_bankmachine1_req_lock;
reg soc_basesoc_sdram_bankmachine1_req_wdata_ready = 1'd0;
reg soc_basesoc_sdram_bankmachine1_req_rdata_valid = 1'd0;
wire soc_basesoc_sdram_bankmachine1_refresh_req;
reg soc_basesoc_sdram_bankmachine1_refresh_gnt = 1'd0;
reg soc_basesoc_sdram_bankmachine1_cmd_valid = 1'd0;
reg soc_basesoc_sdram_bankmachine1_cmd_ready = 1'd0;
reg [13:0] soc_basesoc_sdram_bankmachine1_cmd_payload_a = 14'd0;
wire [2:0] soc_basesoc_sdram_bankmachine1_cmd_payload_ba;
reg soc_basesoc_sdram_bankmachine1_cmd_payload_cas = 1'd0;
reg soc_basesoc_sdram_bankmachine1_cmd_payload_ras = 1'd0;
reg soc_basesoc_sdram_bankmachine1_cmd_payload_we = 1'd0;
reg soc_basesoc_sdram_bankmachine1_cmd_payload_is_cmd = 1'd0;
reg soc_basesoc_sdram_bankmachine1_cmd_payload_is_read = 1'd0;
reg soc_basesoc_sdram_bankmachine1_cmd_payload_is_write = 1'd0;
reg soc_basesoc_sdram_bankmachine1_auto_precharge = 1'd0;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_valid;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_ready;
reg soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_first = 1'd0;
reg soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_last = 1'd0;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_addr;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_valid;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_ready;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_first;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_last;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_addr;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_re;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable;
wire [23:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_din;
wire [23:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_dout;
reg [3:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_level = 4'd0;
reg soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_r;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_we;
wire [23:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_w;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_do_read;
wire [2:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_adr;
wire [23:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_dat_r;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_addr;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_first;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_last;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_addr;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_first;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_last;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_sink_valid;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_sink_ready;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_sink_first;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_sink_last;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_sink_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_sink_payload_addr;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_source_valid;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_source_ready;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_source_first;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_source_last;
reg soc_basesoc_sdram_bankmachine1_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_source_payload_addr = 21'd0;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_pipe_ce;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_busy;
reg soc_basesoc_sdram_bankmachine1_cmd_buffer_valid_n = 1'd0;
reg soc_basesoc_sdram_bankmachine1_cmd_buffer_first_n = 1'd0;
reg soc_basesoc_sdram_bankmachine1_cmd_buffer_last_n = 1'd0;
reg [13:0] soc_basesoc_sdram_bankmachine1_row = 14'd0;
reg soc_basesoc_sdram_bankmachine1_row_opened = 1'd0;
wire soc_basesoc_sdram_bankmachine1_row_hit;
reg soc_basesoc_sdram_bankmachine1_row_open = 1'd0;
reg soc_basesoc_sdram_bankmachine1_row_close = 1'd0;
reg soc_basesoc_sdram_bankmachine1_row_col_n_addr_sel = 1'd0;
wire soc_basesoc_sdram_bankmachine1_twtpcon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_bankmachine1_twtpcon_ready = 1'd1;
reg [2:0] soc_basesoc_sdram_bankmachine1_twtpcon_count = 3'd0;
wire soc_basesoc_sdram_bankmachine1_trccon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_bankmachine1_trccon_ready = 1'd1;
reg [2:0] soc_basesoc_sdram_bankmachine1_trccon_count = 3'd0;
wire soc_basesoc_sdram_bankmachine1_trascon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_bankmachine1_trascon_ready = 1'd1;
reg [2:0] soc_basesoc_sdram_bankmachine1_trascon_count = 3'd0;
wire soc_basesoc_sdram_bankmachine2_req_valid;
wire soc_basesoc_sdram_bankmachine2_req_ready;
wire soc_basesoc_sdram_bankmachine2_req_we;
wire [20:0] soc_basesoc_sdram_bankmachine2_req_addr;
wire soc_basesoc_sdram_bankmachine2_req_lock;
reg soc_basesoc_sdram_bankmachine2_req_wdata_ready = 1'd0;
reg soc_basesoc_sdram_bankmachine2_req_rdata_valid = 1'd0;
wire soc_basesoc_sdram_bankmachine2_refresh_req;
reg soc_basesoc_sdram_bankmachine2_refresh_gnt = 1'd0;
reg soc_basesoc_sdram_bankmachine2_cmd_valid = 1'd0;
reg soc_basesoc_sdram_bankmachine2_cmd_ready = 1'd0;
reg [13:0] soc_basesoc_sdram_bankmachine2_cmd_payload_a = 14'd0;
wire [2:0] soc_basesoc_sdram_bankmachine2_cmd_payload_ba;
reg soc_basesoc_sdram_bankmachine2_cmd_payload_cas = 1'd0;
reg soc_basesoc_sdram_bankmachine2_cmd_payload_ras = 1'd0;
reg soc_basesoc_sdram_bankmachine2_cmd_payload_we = 1'd0;
reg soc_basesoc_sdram_bankmachine2_cmd_payload_is_cmd = 1'd0;
reg soc_basesoc_sdram_bankmachine2_cmd_payload_is_read = 1'd0;
reg soc_basesoc_sdram_bankmachine2_cmd_payload_is_write = 1'd0;
reg soc_basesoc_sdram_bankmachine2_auto_precharge = 1'd0;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_valid;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_ready;
reg soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_first = 1'd0;
reg soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_last = 1'd0;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_addr;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_valid;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_ready;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_first;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_last;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_addr;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_re;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable;
wire [23:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_din;
wire [23:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_dout;
reg [3:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_level = 4'd0;
reg soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_r;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_we;
wire [23:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_w;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_do_read;
wire [2:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_adr;
wire [23:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_dat_r;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_addr;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_first;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_last;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_addr;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_first;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_last;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_sink_valid;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_sink_ready;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_sink_first;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_sink_last;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_sink_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_sink_payload_addr;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_source_valid;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_source_ready;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_source_first;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_source_last;
reg soc_basesoc_sdram_bankmachine2_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_source_payload_addr = 21'd0;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_pipe_ce;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_busy;
reg soc_basesoc_sdram_bankmachine2_cmd_buffer_valid_n = 1'd0;
reg soc_basesoc_sdram_bankmachine2_cmd_buffer_first_n = 1'd0;
reg soc_basesoc_sdram_bankmachine2_cmd_buffer_last_n = 1'd0;
reg [13:0] soc_basesoc_sdram_bankmachine2_row = 14'd0;
reg soc_basesoc_sdram_bankmachine2_row_opened = 1'd0;
wire soc_basesoc_sdram_bankmachine2_row_hit;
reg soc_basesoc_sdram_bankmachine2_row_open = 1'd0;
reg soc_basesoc_sdram_bankmachine2_row_close = 1'd0;
reg soc_basesoc_sdram_bankmachine2_row_col_n_addr_sel = 1'd0;
wire soc_basesoc_sdram_bankmachine2_twtpcon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_bankmachine2_twtpcon_ready = 1'd1;
reg [2:0] soc_basesoc_sdram_bankmachine2_twtpcon_count = 3'd0;
wire soc_basesoc_sdram_bankmachine2_trccon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_bankmachine2_trccon_ready = 1'd1;
reg [2:0] soc_basesoc_sdram_bankmachine2_trccon_count = 3'd0;
wire soc_basesoc_sdram_bankmachine2_trascon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_bankmachine2_trascon_ready = 1'd1;
reg [2:0] soc_basesoc_sdram_bankmachine2_trascon_count = 3'd0;
wire soc_basesoc_sdram_bankmachine3_req_valid;
wire soc_basesoc_sdram_bankmachine3_req_ready;
wire soc_basesoc_sdram_bankmachine3_req_we;
wire [20:0] soc_basesoc_sdram_bankmachine3_req_addr;
wire soc_basesoc_sdram_bankmachine3_req_lock;
reg soc_basesoc_sdram_bankmachine3_req_wdata_ready = 1'd0;
reg soc_basesoc_sdram_bankmachine3_req_rdata_valid = 1'd0;
wire soc_basesoc_sdram_bankmachine3_refresh_req;
reg soc_basesoc_sdram_bankmachine3_refresh_gnt = 1'd0;
reg soc_basesoc_sdram_bankmachine3_cmd_valid = 1'd0;
reg soc_basesoc_sdram_bankmachine3_cmd_ready = 1'd0;
reg [13:0] soc_basesoc_sdram_bankmachine3_cmd_payload_a = 14'd0;
wire [2:0] soc_basesoc_sdram_bankmachine3_cmd_payload_ba;
reg soc_basesoc_sdram_bankmachine3_cmd_payload_cas = 1'd0;
reg soc_basesoc_sdram_bankmachine3_cmd_payload_ras = 1'd0;
reg soc_basesoc_sdram_bankmachine3_cmd_payload_we = 1'd0;
reg soc_basesoc_sdram_bankmachine3_cmd_payload_is_cmd = 1'd0;
reg soc_basesoc_sdram_bankmachine3_cmd_payload_is_read = 1'd0;
reg soc_basesoc_sdram_bankmachine3_cmd_payload_is_write = 1'd0;
reg soc_basesoc_sdram_bankmachine3_auto_precharge = 1'd0;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_valid;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_ready;
reg soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_first = 1'd0;
reg soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_last = 1'd0;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_addr;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_valid;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_ready;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_first;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_last;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_addr;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_re;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable;
wire [23:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_din;
wire [23:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_dout;
reg [3:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_level = 4'd0;
reg soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_r;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_we;
wire [23:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_w;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_do_read;
wire [2:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_adr;
wire [23:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_dat_r;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_addr;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_first;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_last;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_addr;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_first;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_last;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_sink_valid;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_sink_ready;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_sink_first;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_sink_last;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_sink_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_sink_payload_addr;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_source_valid;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_source_ready;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_source_first;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_source_last;
reg soc_basesoc_sdram_bankmachine3_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_source_payload_addr = 21'd0;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_pipe_ce;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_busy;
reg soc_basesoc_sdram_bankmachine3_cmd_buffer_valid_n = 1'd0;
reg soc_basesoc_sdram_bankmachine3_cmd_buffer_first_n = 1'd0;
reg soc_basesoc_sdram_bankmachine3_cmd_buffer_last_n = 1'd0;
reg [13:0] soc_basesoc_sdram_bankmachine3_row = 14'd0;
reg soc_basesoc_sdram_bankmachine3_row_opened = 1'd0;
wire soc_basesoc_sdram_bankmachine3_row_hit;
reg soc_basesoc_sdram_bankmachine3_row_open = 1'd0;
reg soc_basesoc_sdram_bankmachine3_row_close = 1'd0;
reg soc_basesoc_sdram_bankmachine3_row_col_n_addr_sel = 1'd0;
wire soc_basesoc_sdram_bankmachine3_twtpcon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_bankmachine3_twtpcon_ready = 1'd1;
reg [2:0] soc_basesoc_sdram_bankmachine3_twtpcon_count = 3'd0;
wire soc_basesoc_sdram_bankmachine3_trccon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_bankmachine3_trccon_ready = 1'd1;
reg [2:0] soc_basesoc_sdram_bankmachine3_trccon_count = 3'd0;
wire soc_basesoc_sdram_bankmachine3_trascon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_bankmachine3_trascon_ready = 1'd1;
reg [2:0] soc_basesoc_sdram_bankmachine3_trascon_count = 3'd0;
wire soc_basesoc_sdram_bankmachine4_req_valid;
wire soc_basesoc_sdram_bankmachine4_req_ready;
wire soc_basesoc_sdram_bankmachine4_req_we;
wire [20:0] soc_basesoc_sdram_bankmachine4_req_addr;
wire soc_basesoc_sdram_bankmachine4_req_lock;
reg soc_basesoc_sdram_bankmachine4_req_wdata_ready = 1'd0;
reg soc_basesoc_sdram_bankmachine4_req_rdata_valid = 1'd0;
wire soc_basesoc_sdram_bankmachine4_refresh_req;
reg soc_basesoc_sdram_bankmachine4_refresh_gnt = 1'd0;
reg soc_basesoc_sdram_bankmachine4_cmd_valid = 1'd0;
reg soc_basesoc_sdram_bankmachine4_cmd_ready = 1'd0;
reg [13:0] soc_basesoc_sdram_bankmachine4_cmd_payload_a = 14'd0;
wire [2:0] soc_basesoc_sdram_bankmachine4_cmd_payload_ba;
reg soc_basesoc_sdram_bankmachine4_cmd_payload_cas = 1'd0;
reg soc_basesoc_sdram_bankmachine4_cmd_payload_ras = 1'd0;
reg soc_basesoc_sdram_bankmachine4_cmd_payload_we = 1'd0;
reg soc_basesoc_sdram_bankmachine4_cmd_payload_is_cmd = 1'd0;
reg soc_basesoc_sdram_bankmachine4_cmd_payload_is_read = 1'd0;
reg soc_basesoc_sdram_bankmachine4_cmd_payload_is_write = 1'd0;
reg soc_basesoc_sdram_bankmachine4_auto_precharge = 1'd0;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_valid;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_ready;
reg soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_first = 1'd0;
reg soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_last = 1'd0;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_addr;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_source_valid;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_source_ready;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_source_first;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_source_last;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_addr;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_we;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_re;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable;
wire [23:0] soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_din;
wire [23:0] soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_dout;
reg [3:0] soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_level = 4'd0;
reg soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_dat_r;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_we;
wire [23:0] soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_dat_w;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_do_read;
wire [2:0] soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_rdport_adr;
wire [23:0] soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_rdport_dat_r;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_addr;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_first;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_last;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_addr;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_first;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_last;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_sink_valid;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_sink_ready;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_sink_first;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_sink_last;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_sink_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine4_cmd_buffer_sink_payload_addr;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_source_valid;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_source_ready;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_source_first;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_source_last;
reg soc_basesoc_sdram_bankmachine4_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] soc_basesoc_sdram_bankmachine4_cmd_buffer_source_payload_addr = 21'd0;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_pipe_ce;
wire soc_basesoc_sdram_bankmachine4_cmd_buffer_busy;
reg soc_basesoc_sdram_bankmachine4_cmd_buffer_valid_n = 1'd0;
reg soc_basesoc_sdram_bankmachine4_cmd_buffer_first_n = 1'd0;
reg soc_basesoc_sdram_bankmachine4_cmd_buffer_last_n = 1'd0;
reg [13:0] soc_basesoc_sdram_bankmachine4_row = 14'd0;
reg soc_basesoc_sdram_bankmachine4_row_opened = 1'd0;
wire soc_basesoc_sdram_bankmachine4_row_hit;
reg soc_basesoc_sdram_bankmachine4_row_open = 1'd0;
reg soc_basesoc_sdram_bankmachine4_row_close = 1'd0;
reg soc_basesoc_sdram_bankmachine4_row_col_n_addr_sel = 1'd0;
wire soc_basesoc_sdram_bankmachine4_twtpcon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_bankmachine4_twtpcon_ready = 1'd1;
reg [2:0] soc_basesoc_sdram_bankmachine4_twtpcon_count = 3'd0;
wire soc_basesoc_sdram_bankmachine4_trccon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_bankmachine4_trccon_ready = 1'd1;
reg [2:0] soc_basesoc_sdram_bankmachine4_trccon_count = 3'd0;
wire soc_basesoc_sdram_bankmachine4_trascon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_bankmachine4_trascon_ready = 1'd1;
reg [2:0] soc_basesoc_sdram_bankmachine4_trascon_count = 3'd0;
wire soc_basesoc_sdram_bankmachine5_req_valid;
wire soc_basesoc_sdram_bankmachine5_req_ready;
wire soc_basesoc_sdram_bankmachine5_req_we;
wire [20:0] soc_basesoc_sdram_bankmachine5_req_addr;
wire soc_basesoc_sdram_bankmachine5_req_lock;
reg soc_basesoc_sdram_bankmachine5_req_wdata_ready = 1'd0;
reg soc_basesoc_sdram_bankmachine5_req_rdata_valid = 1'd0;
wire soc_basesoc_sdram_bankmachine5_refresh_req;
reg soc_basesoc_sdram_bankmachine5_refresh_gnt = 1'd0;
reg soc_basesoc_sdram_bankmachine5_cmd_valid = 1'd0;
reg soc_basesoc_sdram_bankmachine5_cmd_ready = 1'd0;
reg [13:0] soc_basesoc_sdram_bankmachine5_cmd_payload_a = 14'd0;
wire [2:0] soc_basesoc_sdram_bankmachine5_cmd_payload_ba;
reg soc_basesoc_sdram_bankmachine5_cmd_payload_cas = 1'd0;
reg soc_basesoc_sdram_bankmachine5_cmd_payload_ras = 1'd0;
reg soc_basesoc_sdram_bankmachine5_cmd_payload_we = 1'd0;
reg soc_basesoc_sdram_bankmachine5_cmd_payload_is_cmd = 1'd0;
reg soc_basesoc_sdram_bankmachine5_cmd_payload_is_read = 1'd0;
reg soc_basesoc_sdram_bankmachine5_cmd_payload_is_write = 1'd0;
reg soc_basesoc_sdram_bankmachine5_auto_precharge = 1'd0;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_valid;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_ready;
reg soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_first = 1'd0;
reg soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_last = 1'd0;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_addr;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_source_valid;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_source_ready;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_source_first;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_source_last;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_addr;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_we;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_re;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable;
wire [23:0] soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_din;
wire [23:0] soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_dout;
reg [3:0] soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_level = 4'd0;
reg soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_dat_r;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_we;
wire [23:0] soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_dat_w;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_do_read;
wire [2:0] soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_rdport_adr;
wire [23:0] soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_rdport_dat_r;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_addr;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_first;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_last;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_addr;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_first;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_last;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_sink_valid;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_sink_ready;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_sink_first;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_sink_last;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_sink_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine5_cmd_buffer_sink_payload_addr;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_source_valid;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_source_ready;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_source_first;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_source_last;
reg soc_basesoc_sdram_bankmachine5_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] soc_basesoc_sdram_bankmachine5_cmd_buffer_source_payload_addr = 21'd0;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_pipe_ce;
wire soc_basesoc_sdram_bankmachine5_cmd_buffer_busy;
reg soc_basesoc_sdram_bankmachine5_cmd_buffer_valid_n = 1'd0;
reg soc_basesoc_sdram_bankmachine5_cmd_buffer_first_n = 1'd0;
reg soc_basesoc_sdram_bankmachine5_cmd_buffer_last_n = 1'd0;
reg [13:0] soc_basesoc_sdram_bankmachine5_row = 14'd0;
reg soc_basesoc_sdram_bankmachine5_row_opened = 1'd0;
wire soc_basesoc_sdram_bankmachine5_row_hit;
reg soc_basesoc_sdram_bankmachine5_row_open = 1'd0;
reg soc_basesoc_sdram_bankmachine5_row_close = 1'd0;
reg soc_basesoc_sdram_bankmachine5_row_col_n_addr_sel = 1'd0;
wire soc_basesoc_sdram_bankmachine5_twtpcon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_bankmachine5_twtpcon_ready = 1'd1;
reg [2:0] soc_basesoc_sdram_bankmachine5_twtpcon_count = 3'd0;
wire soc_basesoc_sdram_bankmachine5_trccon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_bankmachine5_trccon_ready = 1'd1;
reg [2:0] soc_basesoc_sdram_bankmachine5_trccon_count = 3'd0;
wire soc_basesoc_sdram_bankmachine5_trascon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_bankmachine5_trascon_ready = 1'd1;
reg [2:0] soc_basesoc_sdram_bankmachine5_trascon_count = 3'd0;
wire soc_basesoc_sdram_bankmachine6_req_valid;
wire soc_basesoc_sdram_bankmachine6_req_ready;
wire soc_basesoc_sdram_bankmachine6_req_we;
wire [20:0] soc_basesoc_sdram_bankmachine6_req_addr;
wire soc_basesoc_sdram_bankmachine6_req_lock;
reg soc_basesoc_sdram_bankmachine6_req_wdata_ready = 1'd0;
reg soc_basesoc_sdram_bankmachine6_req_rdata_valid = 1'd0;
wire soc_basesoc_sdram_bankmachine6_refresh_req;
reg soc_basesoc_sdram_bankmachine6_refresh_gnt = 1'd0;
reg soc_basesoc_sdram_bankmachine6_cmd_valid = 1'd0;
reg soc_basesoc_sdram_bankmachine6_cmd_ready = 1'd0;
reg [13:0] soc_basesoc_sdram_bankmachine6_cmd_payload_a = 14'd0;
wire [2:0] soc_basesoc_sdram_bankmachine6_cmd_payload_ba;
reg soc_basesoc_sdram_bankmachine6_cmd_payload_cas = 1'd0;
reg soc_basesoc_sdram_bankmachine6_cmd_payload_ras = 1'd0;
reg soc_basesoc_sdram_bankmachine6_cmd_payload_we = 1'd0;
reg soc_basesoc_sdram_bankmachine6_cmd_payload_is_cmd = 1'd0;
reg soc_basesoc_sdram_bankmachine6_cmd_payload_is_read = 1'd0;
reg soc_basesoc_sdram_bankmachine6_cmd_payload_is_write = 1'd0;
reg soc_basesoc_sdram_bankmachine6_auto_precharge = 1'd0;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_valid;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_ready;
reg soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_first = 1'd0;
reg soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_last = 1'd0;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_addr;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_source_valid;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_source_ready;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_source_first;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_source_last;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_addr;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_we;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_re;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable;
wire [23:0] soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_din;
wire [23:0] soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_dout;
reg [3:0] soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_level = 4'd0;
reg soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_dat_r;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_we;
wire [23:0] soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_dat_w;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_do_read;
wire [2:0] soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_rdport_adr;
wire [23:0] soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_rdport_dat_r;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_addr;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_first;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_last;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_addr;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_first;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_last;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_sink_valid;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_sink_ready;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_sink_first;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_sink_last;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_sink_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine6_cmd_buffer_sink_payload_addr;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_source_valid;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_source_ready;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_source_first;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_source_last;
reg soc_basesoc_sdram_bankmachine6_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] soc_basesoc_sdram_bankmachine6_cmd_buffer_source_payload_addr = 21'd0;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_pipe_ce;
wire soc_basesoc_sdram_bankmachine6_cmd_buffer_busy;
reg soc_basesoc_sdram_bankmachine6_cmd_buffer_valid_n = 1'd0;
reg soc_basesoc_sdram_bankmachine6_cmd_buffer_first_n = 1'd0;
reg soc_basesoc_sdram_bankmachine6_cmd_buffer_last_n = 1'd0;
reg [13:0] soc_basesoc_sdram_bankmachine6_row = 14'd0;
reg soc_basesoc_sdram_bankmachine6_row_opened = 1'd0;
wire soc_basesoc_sdram_bankmachine6_row_hit;
reg soc_basesoc_sdram_bankmachine6_row_open = 1'd0;
reg soc_basesoc_sdram_bankmachine6_row_close = 1'd0;
reg soc_basesoc_sdram_bankmachine6_row_col_n_addr_sel = 1'd0;
wire soc_basesoc_sdram_bankmachine6_twtpcon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_bankmachine6_twtpcon_ready = 1'd1;
reg [2:0] soc_basesoc_sdram_bankmachine6_twtpcon_count = 3'd0;
wire soc_basesoc_sdram_bankmachine6_trccon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_bankmachine6_trccon_ready = 1'd1;
reg [2:0] soc_basesoc_sdram_bankmachine6_trccon_count = 3'd0;
wire soc_basesoc_sdram_bankmachine6_trascon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_bankmachine6_trascon_ready = 1'd1;
reg [2:0] soc_basesoc_sdram_bankmachine6_trascon_count = 3'd0;
wire soc_basesoc_sdram_bankmachine7_req_valid;
wire soc_basesoc_sdram_bankmachine7_req_ready;
wire soc_basesoc_sdram_bankmachine7_req_we;
wire [20:0] soc_basesoc_sdram_bankmachine7_req_addr;
wire soc_basesoc_sdram_bankmachine7_req_lock;
reg soc_basesoc_sdram_bankmachine7_req_wdata_ready = 1'd0;
reg soc_basesoc_sdram_bankmachine7_req_rdata_valid = 1'd0;
wire soc_basesoc_sdram_bankmachine7_refresh_req;
reg soc_basesoc_sdram_bankmachine7_refresh_gnt = 1'd0;
reg soc_basesoc_sdram_bankmachine7_cmd_valid = 1'd0;
reg soc_basesoc_sdram_bankmachine7_cmd_ready = 1'd0;
reg [13:0] soc_basesoc_sdram_bankmachine7_cmd_payload_a = 14'd0;
wire [2:0] soc_basesoc_sdram_bankmachine7_cmd_payload_ba;
reg soc_basesoc_sdram_bankmachine7_cmd_payload_cas = 1'd0;
reg soc_basesoc_sdram_bankmachine7_cmd_payload_ras = 1'd0;
reg soc_basesoc_sdram_bankmachine7_cmd_payload_we = 1'd0;
reg soc_basesoc_sdram_bankmachine7_cmd_payload_is_cmd = 1'd0;
reg soc_basesoc_sdram_bankmachine7_cmd_payload_is_read = 1'd0;
reg soc_basesoc_sdram_bankmachine7_cmd_payload_is_write = 1'd0;
reg soc_basesoc_sdram_bankmachine7_auto_precharge = 1'd0;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_valid;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_ready;
reg soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_first = 1'd0;
reg soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_last = 1'd0;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_addr;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_source_valid;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_source_ready;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_source_first;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_source_last;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_addr;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_we;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_re;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable;
wire [23:0] soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_din;
wire [23:0] soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_dout;
reg [3:0] soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_level = 4'd0;
reg soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_dat_r;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_we;
wire [23:0] soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_dat_w;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_do_read;
wire [2:0] soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_rdport_adr;
wire [23:0] soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_rdport_dat_r;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_addr;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_first;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_last;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_addr;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_first;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_last;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_sink_valid;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_sink_ready;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_sink_first;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_sink_last;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_sink_payload_we;
wire [20:0] soc_basesoc_sdram_bankmachine7_cmd_buffer_sink_payload_addr;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_source_valid;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_source_ready;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_source_first;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_source_last;
reg soc_basesoc_sdram_bankmachine7_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] soc_basesoc_sdram_bankmachine7_cmd_buffer_source_payload_addr = 21'd0;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_pipe_ce;
wire soc_basesoc_sdram_bankmachine7_cmd_buffer_busy;
reg soc_basesoc_sdram_bankmachine7_cmd_buffer_valid_n = 1'd0;
reg soc_basesoc_sdram_bankmachine7_cmd_buffer_first_n = 1'd0;
reg soc_basesoc_sdram_bankmachine7_cmd_buffer_last_n = 1'd0;
reg [13:0] soc_basesoc_sdram_bankmachine7_row = 14'd0;
reg soc_basesoc_sdram_bankmachine7_row_opened = 1'd0;
wire soc_basesoc_sdram_bankmachine7_row_hit;
reg soc_basesoc_sdram_bankmachine7_row_open = 1'd0;
reg soc_basesoc_sdram_bankmachine7_row_close = 1'd0;
reg soc_basesoc_sdram_bankmachine7_row_col_n_addr_sel = 1'd0;
wire soc_basesoc_sdram_bankmachine7_twtpcon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_bankmachine7_twtpcon_ready = 1'd1;
reg [2:0] soc_basesoc_sdram_bankmachine7_twtpcon_count = 3'd0;
wire soc_basesoc_sdram_bankmachine7_trccon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_bankmachine7_trccon_ready = 1'd1;
reg [2:0] soc_basesoc_sdram_bankmachine7_trccon_count = 3'd0;
wire soc_basesoc_sdram_bankmachine7_trascon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_bankmachine7_trascon_ready = 1'd1;
reg [2:0] soc_basesoc_sdram_bankmachine7_trascon_count = 3'd0;
wire soc_basesoc_sdram_ras_allowed;
wire soc_basesoc_sdram_cas_allowed;
reg soc_basesoc_sdram_choose_cmd_want_reads = 1'd0;
reg soc_basesoc_sdram_choose_cmd_want_writes = 1'd0;
reg soc_basesoc_sdram_choose_cmd_want_cmds = 1'd0;
reg soc_basesoc_sdram_choose_cmd_want_activates = 1'd0;
wire soc_basesoc_sdram_choose_cmd_cmd_valid;
reg soc_basesoc_sdram_choose_cmd_cmd_ready = 1'd0;
wire [13:0] soc_basesoc_sdram_choose_cmd_cmd_payload_a;
wire [2:0] soc_basesoc_sdram_choose_cmd_cmd_payload_ba;
reg soc_basesoc_sdram_choose_cmd_cmd_payload_cas = 1'd0;
reg soc_basesoc_sdram_choose_cmd_cmd_payload_ras = 1'd0;
reg soc_basesoc_sdram_choose_cmd_cmd_payload_we = 1'd0;
wire soc_basesoc_sdram_choose_cmd_cmd_payload_is_cmd;
wire soc_basesoc_sdram_choose_cmd_cmd_payload_is_read;
wire soc_basesoc_sdram_choose_cmd_cmd_payload_is_write;
reg [7:0] soc_basesoc_sdram_choose_cmd_valids = 8'd0;
wire [7:0] soc_basesoc_sdram_choose_cmd_request;
reg [2:0] soc_basesoc_sdram_choose_cmd_grant = 3'd0;
wire soc_basesoc_sdram_choose_cmd_ce;
reg soc_basesoc_sdram_choose_req_want_reads = 1'd0;
reg soc_basesoc_sdram_choose_req_want_writes = 1'd0;
reg soc_basesoc_sdram_choose_req_want_cmds = 1'd0;
reg soc_basesoc_sdram_choose_req_want_activates = 1'd0;
wire soc_basesoc_sdram_choose_req_cmd_valid;
reg soc_basesoc_sdram_choose_req_cmd_ready = 1'd0;
wire [13:0] soc_basesoc_sdram_choose_req_cmd_payload_a;
wire [2:0] soc_basesoc_sdram_choose_req_cmd_payload_ba;
reg soc_basesoc_sdram_choose_req_cmd_payload_cas = 1'd0;
reg soc_basesoc_sdram_choose_req_cmd_payload_ras = 1'd0;
reg soc_basesoc_sdram_choose_req_cmd_payload_we = 1'd0;
wire soc_basesoc_sdram_choose_req_cmd_payload_is_cmd;
wire soc_basesoc_sdram_choose_req_cmd_payload_is_read;
wire soc_basesoc_sdram_choose_req_cmd_payload_is_write;
reg [7:0] soc_basesoc_sdram_choose_req_valids = 8'd0;
wire [7:0] soc_basesoc_sdram_choose_req_request;
reg [2:0] soc_basesoc_sdram_choose_req_grant = 3'd0;
wire soc_basesoc_sdram_choose_req_ce;
reg [13:0] soc_basesoc_sdram_nop_a = 14'd0;
reg [2:0] soc_basesoc_sdram_nop_ba = 3'd0;
reg [1:0] soc_basesoc_sdram_steerer_sel0 = 2'd0;
reg [1:0] soc_basesoc_sdram_steerer_sel1 = 2'd0;
reg [1:0] soc_basesoc_sdram_steerer_sel2 = 2'd0;
reg [1:0] soc_basesoc_sdram_steerer_sel3 = 2'd0;
reg soc_basesoc_sdram_steerer0 = 1'd1;
reg soc_basesoc_sdram_steerer1 = 1'd1;
reg soc_basesoc_sdram_steerer2 = 1'd1;
reg soc_basesoc_sdram_steerer3 = 1'd1;
reg soc_basesoc_sdram_steerer4 = 1'd1;
reg soc_basesoc_sdram_steerer5 = 1'd1;
reg soc_basesoc_sdram_steerer6 = 1'd1;
reg soc_basesoc_sdram_steerer7 = 1'd1;
wire soc_basesoc_sdram_trrdcon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_trrdcon_ready = 1'd1;
reg soc_basesoc_sdram_trrdcon_count = 1'd0;
wire soc_basesoc_sdram_tfawcon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_tfawcon_ready = 1'd1;
wire [2:0] soc_basesoc_sdram_tfawcon_count;
reg [4:0] soc_basesoc_sdram_tfawcon_window = 5'd0;
wire soc_basesoc_sdram_tccdcon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_tccdcon_ready = 1'd1;
reg soc_basesoc_sdram_tccdcon_count = 1'd0;
wire soc_basesoc_sdram_twtrcon_valid;
(* dont_touch = "true" *) reg soc_basesoc_sdram_twtrcon_ready = 1'd1;
reg [2:0] soc_basesoc_sdram_twtrcon_count = 3'd0;
wire soc_basesoc_sdram_read_available;
wire soc_basesoc_sdram_write_available;
reg soc_basesoc_sdram_en0 = 1'd0;
wire soc_basesoc_sdram_max_time0;
reg [4:0] soc_basesoc_sdram_time0 = 5'd0;
reg soc_basesoc_sdram_en1 = 1'd0;
wire soc_basesoc_sdram_max_time1;
reg [3:0] soc_basesoc_sdram_time1 = 4'd0;
wire soc_basesoc_sdram_go_to_refresh;
wire soc_basesoc_sdram_bandwidth_update_re;
wire soc_basesoc_sdram_bandwidth_update_r;
reg soc_basesoc_sdram_bandwidth_update_w = 1'd0;
reg [23:0] soc_basesoc_sdram_bandwidth_nreads_status = 24'd0;
reg [23:0] soc_basesoc_sdram_bandwidth_nwrites_status = 24'd0;
reg [7:0] soc_basesoc_sdram_bandwidth_data_width_status = 8'd128;
reg soc_basesoc_sdram_bandwidth_cmd_valid = 1'd0;
reg soc_basesoc_sdram_bandwidth_cmd_ready = 1'd0;
reg soc_basesoc_sdram_bandwidth_cmd_is_read = 1'd0;
reg soc_basesoc_sdram_bandwidth_cmd_is_write = 1'd0;
reg [23:0] soc_basesoc_sdram_bandwidth_counter = 24'd0;
reg soc_basesoc_sdram_bandwidth_period = 1'd0;
reg [23:0] soc_basesoc_sdram_bandwidth_nreads = 24'd0;
reg [23:0] soc_basesoc_sdram_bandwidth_nwrites = 24'd0;
reg [23:0] soc_basesoc_sdram_bandwidth_nreads_r = 24'd0;
reg [23:0] soc_basesoc_sdram_bandwidth_nwrites_r = 24'd0;
wire [29:0] soc_basesoc_interface1_wb_sdram_adr;
wire [31:0] soc_basesoc_interface1_wb_sdram_dat_w;
wire [31:0] soc_basesoc_interface1_wb_sdram_dat_r;
wire [3:0] soc_basesoc_interface1_wb_sdram_sel;
wire soc_basesoc_interface1_wb_sdram_cyc;
wire soc_basesoc_interface1_wb_sdram_stb;
wire soc_basesoc_interface1_wb_sdram_ack;
wire soc_basesoc_interface1_wb_sdram_we;
wire [2:0] soc_basesoc_interface1_wb_sdram_cti;
wire [1:0] soc_basesoc_interface1_wb_sdram_bte;
wire soc_basesoc_interface1_wb_sdram_err;
reg soc_basesoc_port_cmd_valid = 1'd0;
wire soc_basesoc_port_cmd_ready;
reg soc_basesoc_port_cmd_payload_we = 1'd0;
reg [23:0] soc_basesoc_port_cmd_payload_addr = 24'd0;
reg soc_basesoc_port_wdata_valid = 1'd0;
wire soc_basesoc_port_wdata_ready;
reg [127:0] soc_basesoc_port_wdata_payload_data = 128'd0;
reg [15:0] soc_basesoc_port_wdata_payload_we = 16'd0;
wire soc_basesoc_port_rdata_valid;
reg soc_basesoc_port_rdata_ready = 1'd0;
wire [127:0] soc_basesoc_port_rdata_payload_data;
wire [29:0] soc_basesoc_adr;
wire [127:0] soc_basesoc_dat_w;
reg [127:0] soc_basesoc_dat_r = 128'd0;
wire [15:0] soc_basesoc_sel;
reg soc_basesoc_cyc = 1'd0;
reg soc_basesoc_stb = 1'd0;
reg soc_basesoc_ack = 1'd0;
reg soc_basesoc_we = 1'd0;
wire [8:0] soc_basesoc_data_port_adr;
wire [127:0] soc_basesoc_data_port_dat_r;
reg [15:0] soc_basesoc_data_port_we = 16'd0;
reg [127:0] soc_basesoc_data_port_dat_w = 128'd0;
reg soc_basesoc_write_from_slave = 1'd0;
reg [1:0] soc_basesoc_adr_offset_r = 2'd0;
wire [8:0] soc_basesoc_tag_port_adr;
wire [23:0] soc_basesoc_tag_port_dat_r;
reg soc_basesoc_tag_port_we = 1'd0;
wire [23:0] soc_basesoc_tag_port_dat_w;
wire [22:0] soc_basesoc_tag_do_tag;
wire soc_basesoc_tag_do_dirty;
wire [22:0] soc_basesoc_tag_di_tag;
reg soc_basesoc_tag_di_dirty = 1'd0;
reg soc_basesoc_word_clr = 1'd0;
reg soc_basesoc_word_inc = 1'd0;
reg [1:0] vns_refresher_state = 2'd0;
reg [1:0] vns_refresher_next_state = 2'd0;
reg [3:0] vns_bankmachine0_state = 4'd0;
reg [3:0] vns_bankmachine0_next_state = 4'd0;
reg [3:0] vns_bankmachine1_state = 4'd0;
reg [3:0] vns_bankmachine1_next_state = 4'd0;
reg [3:0] vns_bankmachine2_state = 4'd0;
reg [3:0] vns_bankmachine2_next_state = 4'd0;
reg [3:0] vns_bankmachine3_state = 4'd0;
reg [3:0] vns_bankmachine3_next_state = 4'd0;
reg [3:0] vns_bankmachine4_state = 4'd0;
reg [3:0] vns_bankmachine4_next_state = 4'd0;
reg [3:0] vns_bankmachine5_state = 4'd0;
reg [3:0] vns_bankmachine5_next_state = 4'd0;
reg [3:0] vns_bankmachine6_state = 4'd0;
reg [3:0] vns_bankmachine6_next_state = 4'd0;
reg [3:0] vns_bankmachine7_state = 4'd0;
reg [3:0] vns_bankmachine7_next_state = 4'd0;
reg [3:0] vns_multiplexer_state = 4'd0;
reg [3:0] vns_multiplexer_next_state = 4'd0;
wire vns_roundrobin0_request;
wire vns_roundrobin0_grant;
wire vns_roundrobin0_ce;
wire vns_roundrobin1_request;
wire vns_roundrobin1_grant;
wire vns_roundrobin1_ce;
wire vns_roundrobin2_request;
wire vns_roundrobin2_grant;
wire vns_roundrobin2_ce;
wire vns_roundrobin3_request;
wire vns_roundrobin3_grant;
wire vns_roundrobin3_ce;
wire vns_roundrobin4_request;
wire vns_roundrobin4_grant;
wire vns_roundrobin4_ce;
wire vns_roundrobin5_request;
wire vns_roundrobin5_grant;
wire vns_roundrobin5_ce;
wire vns_roundrobin6_request;
wire vns_roundrobin6_grant;
wire vns_roundrobin6_ce;
wire vns_roundrobin7_request;
wire vns_roundrobin7_grant;
wire vns_roundrobin7_ce;
reg [2:0] vns_rbank = 3'd0;
reg [2:0] vns_wbank = 3'd0;
reg vns_locked0 = 1'd0;
reg vns_locked1 = 1'd0;
reg vns_locked2 = 1'd0;
reg vns_locked3 = 1'd0;
reg vns_locked4 = 1'd0;
reg vns_locked5 = 1'd0;
reg vns_locked6 = 1'd0;
reg vns_locked7 = 1'd0;
reg vns_new_master_wdata_ready0 = 1'd0;
reg vns_new_master_wdata_ready1 = 1'd0;
reg vns_new_master_wdata_ready2 = 1'd0;
reg vns_new_master_rdata_valid0 = 1'd0;
reg vns_new_master_rdata_valid1 = 1'd0;
reg vns_new_master_rdata_valid2 = 1'd0;
reg vns_new_master_rdata_valid3 = 1'd0;
reg vns_new_master_rdata_valid4 = 1'd0;
reg vns_new_master_rdata_valid5 = 1'd0;
reg vns_new_master_rdata_valid6 = 1'd0;
reg vns_new_master_rdata_valid7 = 1'd0;
reg vns_new_master_rdata_valid8 = 1'd0;
reg vns_new_master_rdata_valid9 = 1'd0;
reg [2:0] vns_fullmemorywe_state = 3'd0;
reg [2:0] vns_fullmemorywe_next_state = 3'd0;
reg [1:0] vns_litedramwishbone2native_state = 2'd0;
reg [1:0] vns_litedramwishbone2native_next_state = 2'd0;
wire vns_wb_sdram_con_request;
wire vns_wb_sdram_con_grant;
wire [29:0] vns_basesoc_shared_adr;
wire [31:0] vns_basesoc_shared_dat_w;
reg [31:0] vns_basesoc_shared_dat_r = 32'd0;
wire [3:0] vns_basesoc_shared_sel;
wire vns_basesoc_shared_cyc;
wire vns_basesoc_shared_stb;
reg vns_basesoc_shared_ack = 1'd0;
wire vns_basesoc_shared_we;
wire [2:0] vns_basesoc_shared_cti;
wire [1:0] vns_basesoc_shared_bte;
wire vns_basesoc_shared_err;
wire [1:0] vns_basesoc_request;
reg vns_basesoc_grant = 1'd0;
reg [4:0] vns_basesoc_slave_sel = 5'd0;
reg [4:0] vns_basesoc_slave_sel_r = 5'd0;
reg vns_basesoc_error = 1'd0;
wire vns_basesoc_wait;
wire vns_basesoc_done;
reg [19:0] vns_basesoc_count = 20'd1000000;
wire [13:0] vns_basesoc_interface0_bank_bus_adr;
wire vns_basesoc_interface0_bank_bus_we;
wire [7:0] vns_basesoc_interface0_bank_bus_dat_w;
reg [7:0] vns_basesoc_interface0_bank_bus_dat_r = 8'd0;
wire vns_basesoc_csrbank0_leds_out0_re;
wire [3:0] vns_basesoc_csrbank0_leds_out0_r;
wire [3:0] vns_basesoc_csrbank0_leds_out0_w;
wire vns_basesoc_csrbank0_switches_in_re;
wire [3:0] vns_basesoc_csrbank0_switches_in_r;
wire [3:0] vns_basesoc_csrbank0_switches_in_w;
wire vns_basesoc_csrbank0_buttons_ev_enable0_re;
wire [3:0] vns_basesoc_csrbank0_buttons_ev_enable0_r;
wire [3:0] vns_basesoc_csrbank0_buttons_ev_enable0_w;
wire vns_basesoc_csrbank0_sel;
wire [13:0] vns_basesoc_interface1_bank_bus_adr;
wire vns_basesoc_interface1_bank_bus_we;
wire [7:0] vns_basesoc_interface1_bank_bus_dat_w;
reg [7:0] vns_basesoc_interface1_bank_bus_dat_r = 8'd0;
wire vns_basesoc_csrbank1_scratch3_re;
wire [7:0] vns_basesoc_csrbank1_scratch3_r;
wire [7:0] vns_basesoc_csrbank1_scratch3_w;
wire vns_basesoc_csrbank1_scratch2_re;
wire [7:0] vns_basesoc_csrbank1_scratch2_r;
wire [7:0] vns_basesoc_csrbank1_scratch2_w;
wire vns_basesoc_csrbank1_scratch1_re;
wire [7:0] vns_basesoc_csrbank1_scratch1_r;
wire [7:0] vns_basesoc_csrbank1_scratch1_w;
wire vns_basesoc_csrbank1_scratch0_re;
wire [7:0] vns_basesoc_csrbank1_scratch0_r;
wire [7:0] vns_basesoc_csrbank1_scratch0_w;
wire vns_basesoc_csrbank1_bus_errors3_re;
wire [7:0] vns_basesoc_csrbank1_bus_errors3_r;
wire [7:0] vns_basesoc_csrbank1_bus_errors3_w;
wire vns_basesoc_csrbank1_bus_errors2_re;
wire [7:0] vns_basesoc_csrbank1_bus_errors2_r;
wire [7:0] vns_basesoc_csrbank1_bus_errors2_w;
wire vns_basesoc_csrbank1_bus_errors1_re;
wire [7:0] vns_basesoc_csrbank1_bus_errors1_r;
wire [7:0] vns_basesoc_csrbank1_bus_errors1_w;
wire vns_basesoc_csrbank1_bus_errors0_re;
wire [7:0] vns_basesoc_csrbank1_bus_errors0_r;
wire [7:0] vns_basesoc_csrbank1_bus_errors0_w;
wire vns_basesoc_csrbank1_sel;
wire [13:0] vns_basesoc_interface2_bank_bus_adr;
wire vns_basesoc_interface2_bank_bus_we;
wire [7:0] vns_basesoc_interface2_bank_bus_dat_w;
reg [7:0] vns_basesoc_interface2_bank_bus_dat_r = 8'd0;
wire vns_basesoc_csrbank2_half_sys8x_taps0_re;
wire [3:0] vns_basesoc_csrbank2_half_sys8x_taps0_r;
wire [3:0] vns_basesoc_csrbank2_half_sys8x_taps0_w;
wire vns_basesoc_csrbank2_dly_sel0_re;
wire [1:0] vns_basesoc_csrbank2_dly_sel0_r;
wire [1:0] vns_basesoc_csrbank2_dly_sel0_w;
wire vns_basesoc_csrbank2_sel;
wire [13:0] vns_basesoc_sram_bus_adr;
wire vns_basesoc_sram_bus_we;
wire [7:0] vns_basesoc_sram_bus_dat_w;
reg [7:0] vns_basesoc_sram_bus_dat_r = 8'd0;
wire [2:0] vns_basesoc_adr;
wire [7:0] vns_basesoc_dat_r;
wire vns_basesoc_sel;
reg vns_basesoc_sel_r = 1'd0;
wire [13:0] vns_basesoc_interface3_bank_bus_adr;
wire vns_basesoc_interface3_bank_bus_we;
wire [7:0] vns_basesoc_interface3_bank_bus_dat_w;
reg [7:0] vns_basesoc_interface3_bank_bus_dat_r = 8'd0;
wire vns_basesoc_csrbank3_dna_id7_re;
wire vns_basesoc_csrbank3_dna_id7_r;
wire vns_basesoc_csrbank3_dna_id7_w;
wire vns_basesoc_csrbank3_dna_id6_re;
wire [7:0] vns_basesoc_csrbank3_dna_id6_r;
wire [7:0] vns_basesoc_csrbank3_dna_id6_w;
wire vns_basesoc_csrbank3_dna_id5_re;
wire [7:0] vns_basesoc_csrbank3_dna_id5_r;
wire [7:0] vns_basesoc_csrbank3_dna_id5_w;
wire vns_basesoc_csrbank3_dna_id4_re;
wire [7:0] vns_basesoc_csrbank3_dna_id4_r;
wire [7:0] vns_basesoc_csrbank3_dna_id4_w;
wire vns_basesoc_csrbank3_dna_id3_re;
wire [7:0] vns_basesoc_csrbank3_dna_id3_r;
wire [7:0] vns_basesoc_csrbank3_dna_id3_w;
wire vns_basesoc_csrbank3_dna_id2_re;
wire [7:0] vns_basesoc_csrbank3_dna_id2_r;
wire [7:0] vns_basesoc_csrbank3_dna_id2_w;
wire vns_basesoc_csrbank3_dna_id1_re;
wire [7:0] vns_basesoc_csrbank3_dna_id1_r;
wire [7:0] vns_basesoc_csrbank3_dna_id1_w;
wire vns_basesoc_csrbank3_dna_id0_re;
wire [7:0] vns_basesoc_csrbank3_dna_id0_r;
wire [7:0] vns_basesoc_csrbank3_dna_id0_w;
wire vns_basesoc_csrbank3_git_commit19_re;
wire [7:0] vns_basesoc_csrbank3_git_commit19_r;
wire [7:0] vns_basesoc_csrbank3_git_commit19_w;
wire vns_basesoc_csrbank3_git_commit18_re;
wire [7:0] vns_basesoc_csrbank3_git_commit18_r;
wire [7:0] vns_basesoc_csrbank3_git_commit18_w;
wire vns_basesoc_csrbank3_git_commit17_re;
wire [7:0] vns_basesoc_csrbank3_git_commit17_r;
wire [7:0] vns_basesoc_csrbank3_git_commit17_w;
wire vns_basesoc_csrbank3_git_commit16_re;
wire [7:0] vns_basesoc_csrbank3_git_commit16_r;
wire [7:0] vns_basesoc_csrbank3_git_commit16_w;
wire vns_basesoc_csrbank3_git_commit15_re;
wire [7:0] vns_basesoc_csrbank3_git_commit15_r;
wire [7:0] vns_basesoc_csrbank3_git_commit15_w;
wire vns_basesoc_csrbank3_git_commit14_re;
wire [7:0] vns_basesoc_csrbank3_git_commit14_r;
wire [7:0] vns_basesoc_csrbank3_git_commit14_w;
wire vns_basesoc_csrbank3_git_commit13_re;
wire [7:0] vns_basesoc_csrbank3_git_commit13_r;
wire [7:0] vns_basesoc_csrbank3_git_commit13_w;
wire vns_basesoc_csrbank3_git_commit12_re;
wire [7:0] vns_basesoc_csrbank3_git_commit12_r;
wire [7:0] vns_basesoc_csrbank3_git_commit12_w;
wire vns_basesoc_csrbank3_git_commit11_re;
wire [7:0] vns_basesoc_csrbank3_git_commit11_r;
wire [7:0] vns_basesoc_csrbank3_git_commit11_w;
wire vns_basesoc_csrbank3_git_commit10_re;
wire [7:0] vns_basesoc_csrbank3_git_commit10_r;
wire [7:0] vns_basesoc_csrbank3_git_commit10_w;
wire vns_basesoc_csrbank3_git_commit9_re;
wire [7:0] vns_basesoc_csrbank3_git_commit9_r;
wire [7:0] vns_basesoc_csrbank3_git_commit9_w;
wire vns_basesoc_csrbank3_git_commit8_re;
wire [7:0] vns_basesoc_csrbank3_git_commit8_r;
wire [7:0] vns_basesoc_csrbank3_git_commit8_w;
wire vns_basesoc_csrbank3_git_commit7_re;
wire [7:0] vns_basesoc_csrbank3_git_commit7_r;
wire [7:0] vns_basesoc_csrbank3_git_commit7_w;
wire vns_basesoc_csrbank3_git_commit6_re;
wire [7:0] vns_basesoc_csrbank3_git_commit6_r;
wire [7:0] vns_basesoc_csrbank3_git_commit6_w;
wire vns_basesoc_csrbank3_git_commit5_re;
wire [7:0] vns_basesoc_csrbank3_git_commit5_r;
wire [7:0] vns_basesoc_csrbank3_git_commit5_w;
wire vns_basesoc_csrbank3_git_commit4_re;
wire [7:0] vns_basesoc_csrbank3_git_commit4_r;
wire [7:0] vns_basesoc_csrbank3_git_commit4_w;
wire vns_basesoc_csrbank3_git_commit3_re;
wire [7:0] vns_basesoc_csrbank3_git_commit3_r;
wire [7:0] vns_basesoc_csrbank3_git_commit3_w;
wire vns_basesoc_csrbank3_git_commit2_re;
wire [7:0] vns_basesoc_csrbank3_git_commit2_r;
wire [7:0] vns_basesoc_csrbank3_git_commit2_w;
wire vns_basesoc_csrbank3_git_commit1_re;
wire [7:0] vns_basesoc_csrbank3_git_commit1_r;
wire [7:0] vns_basesoc_csrbank3_git_commit1_w;
wire vns_basesoc_csrbank3_git_commit0_re;
wire [7:0] vns_basesoc_csrbank3_git_commit0_r;
wire [7:0] vns_basesoc_csrbank3_git_commit0_w;
wire vns_basesoc_csrbank3_platform_platform7_re;
wire [7:0] vns_basesoc_csrbank3_platform_platform7_r;
wire [7:0] vns_basesoc_csrbank3_platform_platform7_w;
wire vns_basesoc_csrbank3_platform_platform6_re;
wire [7:0] vns_basesoc_csrbank3_platform_platform6_r;
wire [7:0] vns_basesoc_csrbank3_platform_platform6_w;
wire vns_basesoc_csrbank3_platform_platform5_re;
wire [7:0] vns_basesoc_csrbank3_platform_platform5_r;
wire [7:0] vns_basesoc_csrbank3_platform_platform5_w;
wire vns_basesoc_csrbank3_platform_platform4_re;
wire [7:0] vns_basesoc_csrbank3_platform_platform4_r;
wire [7:0] vns_basesoc_csrbank3_platform_platform4_w;
wire vns_basesoc_csrbank3_platform_platform3_re;
wire [7:0] vns_basesoc_csrbank3_platform_platform3_r;
wire [7:0] vns_basesoc_csrbank3_platform_platform3_w;
wire vns_basesoc_csrbank3_platform_platform2_re;
wire [7:0] vns_basesoc_csrbank3_platform_platform2_r;
wire [7:0] vns_basesoc_csrbank3_platform_platform2_w;
wire vns_basesoc_csrbank3_platform_platform1_re;
wire [7:0] vns_basesoc_csrbank3_platform_platform1_r;
wire [7:0] vns_basesoc_csrbank3_platform_platform1_w;
wire vns_basesoc_csrbank3_platform_platform0_re;
wire [7:0] vns_basesoc_csrbank3_platform_platform0_r;
wire [7:0] vns_basesoc_csrbank3_platform_platform0_w;
wire vns_basesoc_csrbank3_platform_target7_re;
wire [7:0] vns_basesoc_csrbank3_platform_target7_r;
wire [7:0] vns_basesoc_csrbank3_platform_target7_w;
wire vns_basesoc_csrbank3_platform_target6_re;
wire [7:0] vns_basesoc_csrbank3_platform_target6_r;
wire [7:0] vns_basesoc_csrbank3_platform_target6_w;
wire vns_basesoc_csrbank3_platform_target5_re;
wire [7:0] vns_basesoc_csrbank3_platform_target5_r;
wire [7:0] vns_basesoc_csrbank3_platform_target5_w;
wire vns_basesoc_csrbank3_platform_target4_re;
wire [7:0] vns_basesoc_csrbank3_platform_target4_r;
wire [7:0] vns_basesoc_csrbank3_platform_target4_w;
wire vns_basesoc_csrbank3_platform_target3_re;
wire [7:0] vns_basesoc_csrbank3_platform_target3_r;
wire [7:0] vns_basesoc_csrbank3_platform_target3_w;
wire vns_basesoc_csrbank3_platform_target2_re;
wire [7:0] vns_basesoc_csrbank3_platform_target2_r;
wire [7:0] vns_basesoc_csrbank3_platform_target2_w;
wire vns_basesoc_csrbank3_platform_target1_re;
wire [7:0] vns_basesoc_csrbank3_platform_target1_r;
wire [7:0] vns_basesoc_csrbank3_platform_target1_w;
wire vns_basesoc_csrbank3_platform_target0_re;
wire [7:0] vns_basesoc_csrbank3_platform_target0_r;
wire [7:0] vns_basesoc_csrbank3_platform_target0_w;
wire vns_basesoc_csrbank3_xadc_temperature1_re;
wire [3:0] vns_basesoc_csrbank3_xadc_temperature1_r;
wire [3:0] vns_basesoc_csrbank3_xadc_temperature1_w;
wire vns_basesoc_csrbank3_xadc_temperature0_re;
wire [7:0] vns_basesoc_csrbank3_xadc_temperature0_r;
wire [7:0] vns_basesoc_csrbank3_xadc_temperature0_w;
wire vns_basesoc_csrbank3_xadc_vccint1_re;
wire [3:0] vns_basesoc_csrbank3_xadc_vccint1_r;
wire [3:0] vns_basesoc_csrbank3_xadc_vccint1_w;
wire vns_basesoc_csrbank3_xadc_vccint0_re;
wire [7:0] vns_basesoc_csrbank3_xadc_vccint0_r;
wire [7:0] vns_basesoc_csrbank3_xadc_vccint0_w;
wire vns_basesoc_csrbank3_xadc_vccaux1_re;
wire [3:0] vns_basesoc_csrbank3_xadc_vccaux1_r;
wire [3:0] vns_basesoc_csrbank3_xadc_vccaux1_w;
wire vns_basesoc_csrbank3_xadc_vccaux0_re;
wire [7:0] vns_basesoc_csrbank3_xadc_vccaux0_r;
wire [7:0] vns_basesoc_csrbank3_xadc_vccaux0_w;
wire vns_basesoc_csrbank3_xadc_vccbram1_re;
wire [3:0] vns_basesoc_csrbank3_xadc_vccbram1_r;
wire [3:0] vns_basesoc_csrbank3_xadc_vccbram1_w;
wire vns_basesoc_csrbank3_xadc_vccbram0_re;
wire [7:0] vns_basesoc_csrbank3_xadc_vccbram0_r;
wire [7:0] vns_basesoc_csrbank3_xadc_vccbram0_w;
wire vns_basesoc_csrbank3_sel;
wire [13:0] vns_basesoc_interface4_bank_bus_adr;
wire vns_basesoc_interface4_bank_bus_we;
wire [7:0] vns_basesoc_interface4_bank_bus_dat_w;
reg [7:0] vns_basesoc_interface4_bank_bus_dat_r = 8'd0;
wire vns_basesoc_csrbank4_dfii_control0_re;
wire [3:0] vns_basesoc_csrbank4_dfii_control0_r;
wire [3:0] vns_basesoc_csrbank4_dfii_control0_w;
wire vns_basesoc_csrbank4_dfii_pi0_command0_re;
wire [5:0] vns_basesoc_csrbank4_dfii_pi0_command0_r;
wire [5:0] vns_basesoc_csrbank4_dfii_pi0_command0_w;
wire vns_basesoc_csrbank4_dfii_pi0_address1_re;
wire [5:0] vns_basesoc_csrbank4_dfii_pi0_address1_r;
wire [5:0] vns_basesoc_csrbank4_dfii_pi0_address1_w;
wire vns_basesoc_csrbank4_dfii_pi0_address0_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi0_address0_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi0_address0_w;
wire vns_basesoc_csrbank4_dfii_pi0_baddress0_re;
wire [2:0] vns_basesoc_csrbank4_dfii_pi0_baddress0_r;
wire [2:0] vns_basesoc_csrbank4_dfii_pi0_baddress0_w;
wire vns_basesoc_csrbank4_dfii_pi0_wrdata3_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi0_wrdata3_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi0_wrdata3_w;
wire vns_basesoc_csrbank4_dfii_pi0_wrdata2_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi0_wrdata2_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi0_wrdata2_w;
wire vns_basesoc_csrbank4_dfii_pi0_wrdata1_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi0_wrdata1_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi0_wrdata1_w;
wire vns_basesoc_csrbank4_dfii_pi0_wrdata0_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi0_wrdata0_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi0_wrdata0_w;
wire vns_basesoc_csrbank4_dfii_pi0_rddata3_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi0_rddata3_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi0_rddata3_w;
wire vns_basesoc_csrbank4_dfii_pi0_rddata2_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi0_rddata2_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi0_rddata2_w;
wire vns_basesoc_csrbank4_dfii_pi0_rddata1_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi0_rddata1_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi0_rddata1_w;
wire vns_basesoc_csrbank4_dfii_pi0_rddata0_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi0_rddata0_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi0_rddata0_w;
wire vns_basesoc_csrbank4_dfii_pi1_command0_re;
wire [5:0] vns_basesoc_csrbank4_dfii_pi1_command0_r;
wire [5:0] vns_basesoc_csrbank4_dfii_pi1_command0_w;
wire vns_basesoc_csrbank4_dfii_pi1_address1_re;
wire [5:0] vns_basesoc_csrbank4_dfii_pi1_address1_r;
wire [5:0] vns_basesoc_csrbank4_dfii_pi1_address1_w;
wire vns_basesoc_csrbank4_dfii_pi1_address0_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi1_address0_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi1_address0_w;
wire vns_basesoc_csrbank4_dfii_pi1_baddress0_re;
wire [2:0] vns_basesoc_csrbank4_dfii_pi1_baddress0_r;
wire [2:0] vns_basesoc_csrbank4_dfii_pi1_baddress0_w;
wire vns_basesoc_csrbank4_dfii_pi1_wrdata3_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi1_wrdata3_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi1_wrdata3_w;
wire vns_basesoc_csrbank4_dfii_pi1_wrdata2_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi1_wrdata2_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi1_wrdata2_w;
wire vns_basesoc_csrbank4_dfii_pi1_wrdata1_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi1_wrdata1_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi1_wrdata1_w;
wire vns_basesoc_csrbank4_dfii_pi1_wrdata0_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi1_wrdata0_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi1_wrdata0_w;
wire vns_basesoc_csrbank4_dfii_pi1_rddata3_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi1_rddata3_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi1_rddata3_w;
wire vns_basesoc_csrbank4_dfii_pi1_rddata2_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi1_rddata2_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi1_rddata2_w;
wire vns_basesoc_csrbank4_dfii_pi1_rddata1_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi1_rddata1_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi1_rddata1_w;
wire vns_basesoc_csrbank4_dfii_pi1_rddata0_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi1_rddata0_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi1_rddata0_w;
wire vns_basesoc_csrbank4_dfii_pi2_command0_re;
wire [5:0] vns_basesoc_csrbank4_dfii_pi2_command0_r;
wire [5:0] vns_basesoc_csrbank4_dfii_pi2_command0_w;
wire vns_basesoc_csrbank4_dfii_pi2_address1_re;
wire [5:0] vns_basesoc_csrbank4_dfii_pi2_address1_r;
wire [5:0] vns_basesoc_csrbank4_dfii_pi2_address1_w;
wire vns_basesoc_csrbank4_dfii_pi2_address0_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi2_address0_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi2_address0_w;
wire vns_basesoc_csrbank4_dfii_pi2_baddress0_re;
wire [2:0] vns_basesoc_csrbank4_dfii_pi2_baddress0_r;
wire [2:0] vns_basesoc_csrbank4_dfii_pi2_baddress0_w;
wire vns_basesoc_csrbank4_dfii_pi2_wrdata3_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi2_wrdata3_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi2_wrdata3_w;
wire vns_basesoc_csrbank4_dfii_pi2_wrdata2_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi2_wrdata2_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi2_wrdata2_w;
wire vns_basesoc_csrbank4_dfii_pi2_wrdata1_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi2_wrdata1_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi2_wrdata1_w;
wire vns_basesoc_csrbank4_dfii_pi2_wrdata0_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi2_wrdata0_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi2_wrdata0_w;
wire vns_basesoc_csrbank4_dfii_pi2_rddata3_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi2_rddata3_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi2_rddata3_w;
wire vns_basesoc_csrbank4_dfii_pi2_rddata2_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi2_rddata2_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi2_rddata2_w;
wire vns_basesoc_csrbank4_dfii_pi2_rddata1_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi2_rddata1_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi2_rddata1_w;
wire vns_basesoc_csrbank4_dfii_pi2_rddata0_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi2_rddata0_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi2_rddata0_w;
wire vns_basesoc_csrbank4_dfii_pi3_command0_re;
wire [5:0] vns_basesoc_csrbank4_dfii_pi3_command0_r;
wire [5:0] vns_basesoc_csrbank4_dfii_pi3_command0_w;
wire vns_basesoc_csrbank4_dfii_pi3_address1_re;
wire [5:0] vns_basesoc_csrbank4_dfii_pi3_address1_r;
wire [5:0] vns_basesoc_csrbank4_dfii_pi3_address1_w;
wire vns_basesoc_csrbank4_dfii_pi3_address0_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi3_address0_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi3_address0_w;
wire vns_basesoc_csrbank4_dfii_pi3_baddress0_re;
wire [2:0] vns_basesoc_csrbank4_dfii_pi3_baddress0_r;
wire [2:0] vns_basesoc_csrbank4_dfii_pi3_baddress0_w;
wire vns_basesoc_csrbank4_dfii_pi3_wrdata3_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi3_wrdata3_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi3_wrdata3_w;
wire vns_basesoc_csrbank4_dfii_pi3_wrdata2_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi3_wrdata2_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi3_wrdata2_w;
wire vns_basesoc_csrbank4_dfii_pi3_wrdata1_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi3_wrdata1_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi3_wrdata1_w;
wire vns_basesoc_csrbank4_dfii_pi3_wrdata0_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi3_wrdata0_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi3_wrdata0_w;
wire vns_basesoc_csrbank4_dfii_pi3_rddata3_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi3_rddata3_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi3_rddata3_w;
wire vns_basesoc_csrbank4_dfii_pi3_rddata2_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi3_rddata2_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi3_rddata2_w;
wire vns_basesoc_csrbank4_dfii_pi3_rddata1_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi3_rddata1_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi3_rddata1_w;
wire vns_basesoc_csrbank4_dfii_pi3_rddata0_re;
wire [7:0] vns_basesoc_csrbank4_dfii_pi3_rddata0_r;
wire [7:0] vns_basesoc_csrbank4_dfii_pi3_rddata0_w;
wire vns_basesoc_csrbank4_controller_bandwidth_nreads2_re;
wire [7:0] vns_basesoc_csrbank4_controller_bandwidth_nreads2_r;
wire [7:0] vns_basesoc_csrbank4_controller_bandwidth_nreads2_w;
wire vns_basesoc_csrbank4_controller_bandwidth_nreads1_re;
wire [7:0] vns_basesoc_csrbank4_controller_bandwidth_nreads1_r;
wire [7:0] vns_basesoc_csrbank4_controller_bandwidth_nreads1_w;
wire vns_basesoc_csrbank4_controller_bandwidth_nreads0_re;
wire [7:0] vns_basesoc_csrbank4_controller_bandwidth_nreads0_r;
wire [7:0] vns_basesoc_csrbank4_controller_bandwidth_nreads0_w;
wire vns_basesoc_csrbank4_controller_bandwidth_nwrites2_re;
wire [7:0] vns_basesoc_csrbank4_controller_bandwidth_nwrites2_r;
wire [7:0] vns_basesoc_csrbank4_controller_bandwidth_nwrites2_w;
wire vns_basesoc_csrbank4_controller_bandwidth_nwrites1_re;
wire [7:0] vns_basesoc_csrbank4_controller_bandwidth_nwrites1_r;
wire [7:0] vns_basesoc_csrbank4_controller_bandwidth_nwrites1_w;
wire vns_basesoc_csrbank4_controller_bandwidth_nwrites0_re;
wire [7:0] vns_basesoc_csrbank4_controller_bandwidth_nwrites0_r;
wire [7:0] vns_basesoc_csrbank4_controller_bandwidth_nwrites0_w;
wire vns_basesoc_csrbank4_controller_bandwidth_data_width_re;
wire [7:0] vns_basesoc_csrbank4_controller_bandwidth_data_width_r;
wire [7:0] vns_basesoc_csrbank4_controller_bandwidth_data_width_w;
wire vns_basesoc_csrbank4_sel;
wire [13:0] vns_basesoc_interface5_bank_bus_adr;
wire vns_basesoc_interface5_bank_bus_we;
wire [7:0] vns_basesoc_interface5_bank_bus_dat_w;
reg [7:0] vns_basesoc_interface5_bank_bus_dat_r = 8'd0;
wire vns_basesoc_csrbank5_bitbang0_re;
wire [3:0] vns_basesoc_csrbank5_bitbang0_r;
wire [3:0] vns_basesoc_csrbank5_bitbang0_w;
wire vns_basesoc_csrbank5_miso_re;
wire vns_basesoc_csrbank5_miso_r;
wire vns_basesoc_csrbank5_miso_w;
wire vns_basesoc_csrbank5_bitbang_en0_re;
wire vns_basesoc_csrbank5_bitbang_en0_r;
wire vns_basesoc_csrbank5_bitbang_en0_w;
wire vns_basesoc_csrbank5_sel;
wire [13:0] vns_basesoc_interface6_bank_bus_adr;
wire vns_basesoc_interface6_bank_bus_we;
wire [7:0] vns_basesoc_interface6_bank_bus_dat_w;
reg [7:0] vns_basesoc_interface6_bank_bus_dat_r = 8'd0;
wire vns_basesoc_csrbank6_load3_re;
wire [7:0] vns_basesoc_csrbank6_load3_r;
wire [7:0] vns_basesoc_csrbank6_load3_w;
wire vns_basesoc_csrbank6_load2_re;
wire [7:0] vns_basesoc_csrbank6_load2_r;
wire [7:0] vns_basesoc_csrbank6_load2_w;
wire vns_basesoc_csrbank6_load1_re;
wire [7:0] vns_basesoc_csrbank6_load1_r;
wire [7:0] vns_basesoc_csrbank6_load1_w;
wire vns_basesoc_csrbank6_load0_re;
wire [7:0] vns_basesoc_csrbank6_load0_r;
wire [7:0] vns_basesoc_csrbank6_load0_w;
wire vns_basesoc_csrbank6_reload3_re;
wire [7:0] vns_basesoc_csrbank6_reload3_r;
wire [7:0] vns_basesoc_csrbank6_reload3_w;
wire vns_basesoc_csrbank6_reload2_re;
wire [7:0] vns_basesoc_csrbank6_reload2_r;
wire [7:0] vns_basesoc_csrbank6_reload2_w;
wire vns_basesoc_csrbank6_reload1_re;
wire [7:0] vns_basesoc_csrbank6_reload1_r;
wire [7:0] vns_basesoc_csrbank6_reload1_w;
wire vns_basesoc_csrbank6_reload0_re;
wire [7:0] vns_basesoc_csrbank6_reload0_r;
wire [7:0] vns_basesoc_csrbank6_reload0_w;
wire vns_basesoc_csrbank6_en0_re;
wire vns_basesoc_csrbank6_en0_r;
wire vns_basesoc_csrbank6_en0_w;
wire vns_basesoc_csrbank6_value3_re;
wire [7:0] vns_basesoc_csrbank6_value3_r;
wire [7:0] vns_basesoc_csrbank6_value3_w;
wire vns_basesoc_csrbank6_value2_re;
wire [7:0] vns_basesoc_csrbank6_value2_r;
wire [7:0] vns_basesoc_csrbank6_value2_w;
wire vns_basesoc_csrbank6_value1_re;
wire [7:0] vns_basesoc_csrbank6_value1_r;
wire [7:0] vns_basesoc_csrbank6_value1_w;
wire vns_basesoc_csrbank6_value0_re;
wire [7:0] vns_basesoc_csrbank6_value0_r;
wire [7:0] vns_basesoc_csrbank6_value0_w;
wire vns_basesoc_csrbank6_ev_enable0_re;
wire vns_basesoc_csrbank6_ev_enable0_r;
wire vns_basesoc_csrbank6_ev_enable0_w;
wire vns_basesoc_csrbank6_sel;
wire [13:0] vns_basesoc_interface7_bank_bus_adr;
wire vns_basesoc_interface7_bank_bus_we;
wire [7:0] vns_basesoc_interface7_bank_bus_dat_w;
reg [7:0] vns_basesoc_interface7_bank_bus_dat_r = 8'd0;
wire vns_basesoc_csrbank7_txfull_re;
wire vns_basesoc_csrbank7_txfull_r;
wire vns_basesoc_csrbank7_txfull_w;
wire vns_basesoc_csrbank7_rxempty_re;
wire vns_basesoc_csrbank7_rxempty_r;
wire vns_basesoc_csrbank7_rxempty_w;
wire vns_basesoc_csrbank7_ev_enable0_re;
wire [1:0] vns_basesoc_csrbank7_ev_enable0_r;
wire [1:0] vns_basesoc_csrbank7_ev_enable0_w;
wire vns_basesoc_csrbank7_sel;
wire [13:0] vns_basesoc_interface8_bank_bus_adr;
wire vns_basesoc_interface8_bank_bus_we;
wire [7:0] vns_basesoc_interface8_bank_bus_dat_w;
reg [7:0] vns_basesoc_interface8_bank_bus_dat_r = 8'd0;
wire vns_basesoc_csrbank8_tuning_word3_re;
wire [7:0] vns_basesoc_csrbank8_tuning_word3_r;
wire [7:0] vns_basesoc_csrbank8_tuning_word3_w;
wire vns_basesoc_csrbank8_tuning_word2_re;
wire [7:0] vns_basesoc_csrbank8_tuning_word2_r;
wire [7:0] vns_basesoc_csrbank8_tuning_word2_w;
wire vns_basesoc_csrbank8_tuning_word1_re;
wire [7:0] vns_basesoc_csrbank8_tuning_word1_r;
wire [7:0] vns_basesoc_csrbank8_tuning_word1_w;
wire vns_basesoc_csrbank8_tuning_word0_re;
wire [7:0] vns_basesoc_csrbank8_tuning_word0_r;
wire [7:0] vns_basesoc_csrbank8_tuning_word0_w;
wire vns_basesoc_csrbank8_sel;
reg vns_rhs_array_muxed0 = 1'd0;
reg [13:0] vns_rhs_array_muxed1 = 14'd0;
reg [2:0] vns_rhs_array_muxed2 = 3'd0;
reg vns_rhs_array_muxed3 = 1'd0;
reg vns_rhs_array_muxed4 = 1'd0;
reg vns_rhs_array_muxed5 = 1'd0;
reg vns_t_array_muxed0 = 1'd0;
reg vns_t_array_muxed1 = 1'd0;
reg vns_t_array_muxed2 = 1'd0;
reg vns_rhs_array_muxed6 = 1'd0;
reg [13:0] vns_rhs_array_muxed7 = 14'd0;
reg [2:0] vns_rhs_array_muxed8 = 3'd0;
reg vns_rhs_array_muxed9 = 1'd0;
reg vns_rhs_array_muxed10 = 1'd0;
reg vns_rhs_array_muxed11 = 1'd0;
reg vns_t_array_muxed3 = 1'd0;
reg vns_t_array_muxed4 = 1'd0;
reg vns_t_array_muxed5 = 1'd0;
reg [20:0] vns_rhs_array_muxed12 = 21'd0;
reg vns_rhs_array_muxed13 = 1'd0;
reg vns_rhs_array_muxed14 = 1'd0;
reg [20:0] vns_rhs_array_muxed15 = 21'd0;
reg vns_rhs_array_muxed16 = 1'd0;
reg vns_rhs_array_muxed17 = 1'd0;
reg [20:0] vns_rhs_array_muxed18 = 21'd0;
reg vns_rhs_array_muxed19 = 1'd0;
reg vns_rhs_array_muxed20 = 1'd0;
reg [20:0] vns_rhs_array_muxed21 = 21'd0;
reg vns_rhs_array_muxed22 = 1'd0;
reg vns_rhs_array_muxed23 = 1'd0;
reg [20:0] vns_rhs_array_muxed24 = 21'd0;
reg vns_rhs_array_muxed25 = 1'd0;
reg vns_rhs_array_muxed26 = 1'd0;
reg [20:0] vns_rhs_array_muxed27 = 21'd0;
reg vns_rhs_array_muxed28 = 1'd0;
reg vns_rhs_array_muxed29 = 1'd0;
reg [20:0] vns_rhs_array_muxed30 = 21'd0;
reg vns_rhs_array_muxed31 = 1'd0;
reg vns_rhs_array_muxed32 = 1'd0;
reg [20:0] vns_rhs_array_muxed33 = 21'd0;
reg vns_rhs_array_muxed34 = 1'd0;
reg vns_rhs_array_muxed35 = 1'd0;
reg [29:0] vns_rhs_array_muxed36 = 30'd0;
reg [31:0] vns_rhs_array_muxed37 = 32'd0;
reg [3:0] vns_rhs_array_muxed38 = 4'd0;
reg vns_rhs_array_muxed39 = 1'd0;
reg vns_rhs_array_muxed40 = 1'd0;
reg vns_rhs_array_muxed41 = 1'd0;
reg [2:0] vns_rhs_array_muxed42 = 3'd0;
reg [1:0] vns_rhs_array_muxed43 = 2'd0;
reg [29:0] vns_rhs_array_muxed44 = 30'd0;
reg [31:0] vns_rhs_array_muxed45 = 32'd0;
reg [3:0] vns_rhs_array_muxed46 = 4'd0;
reg vns_rhs_array_muxed47 = 1'd0;
reg vns_rhs_array_muxed48 = 1'd0;
reg vns_rhs_array_muxed49 = 1'd0;
reg [2:0] vns_rhs_array_muxed50 = 3'd0;
reg [1:0] vns_rhs_array_muxed51 = 2'd0;
reg [2:0] vns_array_muxed0 = 3'd0;
reg [13:0] vns_array_muxed1 = 14'd0;
reg vns_array_muxed2 = 1'd0;
reg vns_array_muxed3 = 1'd0;
reg vns_array_muxed4 = 1'd0;
reg vns_array_muxed5 = 1'd0;
reg vns_array_muxed6 = 1'd0;
reg [2:0] vns_array_muxed7 = 3'd0;
reg [13:0] vns_array_muxed8 = 14'd0;
reg vns_array_muxed9 = 1'd0;
reg vns_array_muxed10 = 1'd0;
reg vns_array_muxed11 = 1'd0;
reg vns_array_muxed12 = 1'd0;
reg vns_array_muxed13 = 1'd0;
reg [2:0] vns_array_muxed14 = 3'd0;
reg [13:0] vns_array_muxed15 = 14'd0;
reg vns_array_muxed16 = 1'd0;
reg vns_array_muxed17 = 1'd0;
reg vns_array_muxed18 = 1'd0;
reg vns_array_muxed19 = 1'd0;
reg vns_array_muxed20 = 1'd0;
reg [2:0] vns_array_muxed21 = 3'd0;
reg [13:0] vns_array_muxed22 = 14'd0;
reg vns_array_muxed23 = 1'd0;
reg vns_array_muxed24 = 1'd0;
reg vns_array_muxed25 = 1'd0;
reg vns_array_muxed26 = 1'd0;
reg vns_array_muxed27 = 1'd0;
(* async_reg = "true", mr_ff = "true", dont_touch = "true" *) reg vns_xilinxmultiregimpl0_regs0 = 1'd0;
(* async_reg = "true", dont_touch = "true" *) reg vns_xilinxmultiregimpl0_regs1 = 1'd0;
wire vns_xilinxasyncresetsynchronizerimpl0;
wire vns_xilinxasyncresetsynchronizerimpl0_rst_meta;
wire vns_xilinxasyncresetsynchronizerimpl1;
wire vns_xilinxasyncresetsynchronizerimpl1_rst_meta;
wire vns_xilinxasyncresetsynchronizerimpl2;
wire vns_xilinxasyncresetsynchronizerimpl2_rst_meta;
wire vns_xilinxasyncresetsynchronizerimpl3;
wire vns_xilinxasyncresetsynchronizerimpl3_rst_meta;
(* async_reg = "true", mr_ff = "true", dont_touch = "true" *) reg [3:0] vns_xilinxmultiregimpl1_regs0 = 4'd0;
(* async_reg = "true", dont_touch = "true" *) reg [3:0] vns_xilinxmultiregimpl1_regs1 = 4'd0;

assign soc_basesoc_lm32_reset = soc_basesoc_ctrl_reset;
assign soc_basesoc_ctrl_bus_error = vns_basesoc_error;
always @(*) begin
	soc_basesoc_lm32_interrupt <= 32'd0;
	soc_basesoc_lm32_interrupt[1] <= soc_basesoc_timer0_irq;
	soc_basesoc_lm32_interrupt[2] <= soc_basesoc_uart_irq;
end
assign soc_basesoc_ctrl_reset = soc_basesoc_ctrl_reset_reset_re;
assign soc_basesoc_ctrl_bus_errors_status = soc_basesoc_ctrl_bus_errors;
assign soc_basesoc_lm32_ibus_adr = soc_basesoc_lm32_i_adr_o[31:2];
assign soc_basesoc_lm32_dbus_adr = soc_basesoc_lm32_d_adr_o[31:2];
assign soc_basesoc_rom_adr = soc_basesoc_rom_bus_adr[12:0];
assign soc_basesoc_rom_bus_dat_r = soc_basesoc_rom_dat_r;
always @(*) begin
	soc_basesoc_sram_we <= 4'd0;
	soc_basesoc_sram_we[0] <= (((soc_basesoc_sram_bus_cyc & soc_basesoc_sram_bus_stb) & soc_basesoc_sram_bus_we) & soc_basesoc_sram_bus_sel[0]);
	soc_basesoc_sram_we[1] <= (((soc_basesoc_sram_bus_cyc & soc_basesoc_sram_bus_stb) & soc_basesoc_sram_bus_we) & soc_basesoc_sram_bus_sel[1]);
	soc_basesoc_sram_we[2] <= (((soc_basesoc_sram_bus_cyc & soc_basesoc_sram_bus_stb) & soc_basesoc_sram_bus_we) & soc_basesoc_sram_bus_sel[2]);
	soc_basesoc_sram_we[3] <= (((soc_basesoc_sram_bus_cyc & soc_basesoc_sram_bus_stb) & soc_basesoc_sram_bus_we) & soc_basesoc_sram_bus_sel[3]);
end
assign soc_basesoc_sram_adr = soc_basesoc_sram_bus_adr[12:0];
assign soc_basesoc_sram_bus_dat_r = soc_basesoc_sram_dat_r;
assign soc_basesoc_sram_dat_w = soc_basesoc_sram_bus_dat_w;
assign soc_basesoc_uart_tx_fifo_sink_valid = soc_basesoc_uart_rxtx_re;
assign soc_basesoc_uart_tx_fifo_sink_payload_data = soc_basesoc_uart_rxtx_r;
assign soc_basesoc_uart_txfull_status = (~soc_basesoc_uart_tx_fifo_sink_ready);
assign soc_basesoc_uart_phy_sink_valid = soc_basesoc_uart_tx_fifo_source_valid;
assign soc_basesoc_uart_tx_fifo_source_ready = soc_basesoc_uart_phy_sink_ready;
assign soc_basesoc_uart_phy_sink_first = soc_basesoc_uart_tx_fifo_source_first;
assign soc_basesoc_uart_phy_sink_last = soc_basesoc_uart_tx_fifo_source_last;
assign soc_basesoc_uart_phy_sink_payload_data = soc_basesoc_uart_tx_fifo_source_payload_data;
assign soc_basesoc_uart_tx_trigger = (~soc_basesoc_uart_tx_fifo_sink_ready);
assign soc_basesoc_uart_rx_fifo_sink_valid = soc_basesoc_uart_phy_source_valid;
assign soc_basesoc_uart_phy_source_ready = soc_basesoc_uart_rx_fifo_sink_ready;
assign soc_basesoc_uart_rx_fifo_sink_first = soc_basesoc_uart_phy_source_first;
assign soc_basesoc_uart_rx_fifo_sink_last = soc_basesoc_uart_phy_source_last;
assign soc_basesoc_uart_rx_fifo_sink_payload_data = soc_basesoc_uart_phy_source_payload_data;
assign soc_basesoc_uart_rxempty_status = (~soc_basesoc_uart_rx_fifo_source_valid);
assign soc_basesoc_uart_rxtx_w = soc_basesoc_uart_rx_fifo_source_payload_data;
assign soc_basesoc_uart_rx_fifo_source_ready = soc_basesoc_uart_rx_clear;
assign soc_basesoc_uart_rx_trigger = (~soc_basesoc_uart_rx_fifo_source_valid);
always @(*) begin
	soc_basesoc_uart_tx_clear <= 1'd0;
	if ((soc_basesoc_uart_eventmanager_pending_re & soc_basesoc_uart_eventmanager_pending_r[0])) begin
		soc_basesoc_uart_tx_clear <= 1'd1;
	end
end
always @(*) begin
	soc_basesoc_uart_eventmanager_status_w <= 2'd0;
	soc_basesoc_uart_eventmanager_status_w[0] <= soc_basesoc_uart_tx_status;
	soc_basesoc_uart_eventmanager_status_w[1] <= soc_basesoc_uart_rx_status;
end
always @(*) begin
	soc_basesoc_uart_rx_clear <= 1'd0;
	if ((soc_basesoc_uart_eventmanager_pending_re & soc_basesoc_uart_eventmanager_pending_r[1])) begin
		soc_basesoc_uart_rx_clear <= 1'd1;
	end
end
always @(*) begin
	soc_basesoc_uart_eventmanager_pending_w <= 2'd0;
	soc_basesoc_uart_eventmanager_pending_w[0] <= soc_basesoc_uart_tx_pending;
	soc_basesoc_uart_eventmanager_pending_w[1] <= soc_basesoc_uart_rx_pending;
end
assign soc_basesoc_uart_irq = ((soc_basesoc_uart_eventmanager_pending_w[0] & soc_basesoc_uart_eventmanager_storage[0]) | (soc_basesoc_uart_eventmanager_pending_w[1] & soc_basesoc_uart_eventmanager_storage[1]));
assign soc_basesoc_uart_tx_status = soc_basesoc_uart_tx_trigger;
assign soc_basesoc_uart_rx_status = soc_basesoc_uart_rx_trigger;
assign soc_basesoc_uart_tx_fifo_syncfifo_din = {soc_basesoc_uart_tx_fifo_fifo_in_last, soc_basesoc_uart_tx_fifo_fifo_in_first, soc_basesoc_uart_tx_fifo_fifo_in_payload_data};
assign {soc_basesoc_uart_tx_fifo_fifo_out_last, soc_basesoc_uart_tx_fifo_fifo_out_first, soc_basesoc_uart_tx_fifo_fifo_out_payload_data} = soc_basesoc_uart_tx_fifo_syncfifo_dout;
assign soc_basesoc_uart_tx_fifo_sink_ready = soc_basesoc_uart_tx_fifo_syncfifo_writable;
assign soc_basesoc_uart_tx_fifo_syncfifo_we = soc_basesoc_uart_tx_fifo_sink_valid;
assign soc_basesoc_uart_tx_fifo_fifo_in_first = soc_basesoc_uart_tx_fifo_sink_first;
assign soc_basesoc_uart_tx_fifo_fifo_in_last = soc_basesoc_uart_tx_fifo_sink_last;
assign soc_basesoc_uart_tx_fifo_fifo_in_payload_data = soc_basesoc_uart_tx_fifo_sink_payload_data;
assign soc_basesoc_uart_tx_fifo_source_valid = soc_basesoc_uart_tx_fifo_readable;
assign soc_basesoc_uart_tx_fifo_source_first = soc_basesoc_uart_tx_fifo_fifo_out_first;
assign soc_basesoc_uart_tx_fifo_source_last = soc_basesoc_uart_tx_fifo_fifo_out_last;
assign soc_basesoc_uart_tx_fifo_source_payload_data = soc_basesoc_uart_tx_fifo_fifo_out_payload_data;
assign soc_basesoc_uart_tx_fifo_re = soc_basesoc_uart_tx_fifo_source_ready;
assign soc_basesoc_uart_tx_fifo_syncfifo_re = (soc_basesoc_uart_tx_fifo_syncfifo_readable & ((~soc_basesoc_uart_tx_fifo_readable) | soc_basesoc_uart_tx_fifo_re));
assign soc_basesoc_uart_tx_fifo_level1 = (soc_basesoc_uart_tx_fifo_level0 + soc_basesoc_uart_tx_fifo_readable);
always @(*) begin
	soc_basesoc_uart_tx_fifo_wrport_adr <= 4'd0;
	if (soc_basesoc_uart_tx_fifo_replace) begin
		soc_basesoc_uart_tx_fifo_wrport_adr <= (soc_basesoc_uart_tx_fifo_produce - 1'd1);
	end else begin
		soc_basesoc_uart_tx_fifo_wrport_adr <= soc_basesoc_uart_tx_fifo_produce;
	end
end
assign soc_basesoc_uart_tx_fifo_wrport_dat_w = soc_basesoc_uart_tx_fifo_syncfifo_din;
assign soc_basesoc_uart_tx_fifo_wrport_we = (soc_basesoc_uart_tx_fifo_syncfifo_we & (soc_basesoc_uart_tx_fifo_syncfifo_writable | soc_basesoc_uart_tx_fifo_replace));
assign soc_basesoc_uart_tx_fifo_do_read = (soc_basesoc_uart_tx_fifo_syncfifo_readable & soc_basesoc_uart_tx_fifo_syncfifo_re);
assign soc_basesoc_uart_tx_fifo_rdport_adr = soc_basesoc_uart_tx_fifo_consume;
assign soc_basesoc_uart_tx_fifo_syncfifo_dout = soc_basesoc_uart_tx_fifo_rdport_dat_r;
assign soc_basesoc_uart_tx_fifo_rdport_re = soc_basesoc_uart_tx_fifo_do_read;
assign soc_basesoc_uart_tx_fifo_syncfifo_writable = (soc_basesoc_uart_tx_fifo_level0 != 5'd16);
assign soc_basesoc_uart_tx_fifo_syncfifo_readable = (soc_basesoc_uart_tx_fifo_level0 != 1'd0);
assign soc_basesoc_uart_rx_fifo_syncfifo_din = {soc_basesoc_uart_rx_fifo_fifo_in_last, soc_basesoc_uart_rx_fifo_fifo_in_first, soc_basesoc_uart_rx_fifo_fifo_in_payload_data};
assign {soc_basesoc_uart_rx_fifo_fifo_out_last, soc_basesoc_uart_rx_fifo_fifo_out_first, soc_basesoc_uart_rx_fifo_fifo_out_payload_data} = soc_basesoc_uart_rx_fifo_syncfifo_dout;
assign soc_basesoc_uart_rx_fifo_sink_ready = soc_basesoc_uart_rx_fifo_syncfifo_writable;
assign soc_basesoc_uart_rx_fifo_syncfifo_we = soc_basesoc_uart_rx_fifo_sink_valid;
assign soc_basesoc_uart_rx_fifo_fifo_in_first = soc_basesoc_uart_rx_fifo_sink_first;
assign soc_basesoc_uart_rx_fifo_fifo_in_last = soc_basesoc_uart_rx_fifo_sink_last;
assign soc_basesoc_uart_rx_fifo_fifo_in_payload_data = soc_basesoc_uart_rx_fifo_sink_payload_data;
assign soc_basesoc_uart_rx_fifo_source_valid = soc_basesoc_uart_rx_fifo_readable;
assign soc_basesoc_uart_rx_fifo_source_first = soc_basesoc_uart_rx_fifo_fifo_out_first;
assign soc_basesoc_uart_rx_fifo_source_last = soc_basesoc_uart_rx_fifo_fifo_out_last;
assign soc_basesoc_uart_rx_fifo_source_payload_data = soc_basesoc_uart_rx_fifo_fifo_out_payload_data;
assign soc_basesoc_uart_rx_fifo_re = soc_basesoc_uart_rx_fifo_source_ready;
assign soc_basesoc_uart_rx_fifo_syncfifo_re = (soc_basesoc_uart_rx_fifo_syncfifo_readable & ((~soc_basesoc_uart_rx_fifo_readable) | soc_basesoc_uart_rx_fifo_re));
assign soc_basesoc_uart_rx_fifo_level1 = (soc_basesoc_uart_rx_fifo_level0 + soc_basesoc_uart_rx_fifo_readable);
always @(*) begin
	soc_basesoc_uart_rx_fifo_wrport_adr <= 4'd0;
	if (soc_basesoc_uart_rx_fifo_replace) begin
		soc_basesoc_uart_rx_fifo_wrport_adr <= (soc_basesoc_uart_rx_fifo_produce - 1'd1);
	end else begin
		soc_basesoc_uart_rx_fifo_wrport_adr <= soc_basesoc_uart_rx_fifo_produce;
	end
end
assign soc_basesoc_uart_rx_fifo_wrport_dat_w = soc_basesoc_uart_rx_fifo_syncfifo_din;
assign soc_basesoc_uart_rx_fifo_wrport_we = (soc_basesoc_uart_rx_fifo_syncfifo_we & (soc_basesoc_uart_rx_fifo_syncfifo_writable | soc_basesoc_uart_rx_fifo_replace));
assign soc_basesoc_uart_rx_fifo_do_read = (soc_basesoc_uart_rx_fifo_syncfifo_readable & soc_basesoc_uart_rx_fifo_syncfifo_re);
assign soc_basesoc_uart_rx_fifo_rdport_adr = soc_basesoc_uart_rx_fifo_consume;
assign soc_basesoc_uart_rx_fifo_syncfifo_dout = soc_basesoc_uart_rx_fifo_rdport_dat_r;
assign soc_basesoc_uart_rx_fifo_rdport_re = soc_basesoc_uart_rx_fifo_do_read;
assign soc_basesoc_uart_rx_fifo_syncfifo_writable = (soc_basesoc_uart_rx_fifo_level0 != 5'd16);
assign soc_basesoc_uart_rx_fifo_syncfifo_readable = (soc_basesoc_uart_rx_fifo_level0 != 1'd0);
assign soc_basesoc_timer0_zero_trigger = (soc_basesoc_timer0_value != 1'd0);
assign soc_basesoc_timer0_eventmanager_status_w = soc_basesoc_timer0_zero_status;
always @(*) begin
	soc_basesoc_timer0_zero_clear <= 1'd0;
	if ((soc_basesoc_timer0_eventmanager_pending_re & soc_basesoc_timer0_eventmanager_pending_r)) begin
		soc_basesoc_timer0_zero_clear <= 1'd1;
	end
end
assign soc_basesoc_timer0_eventmanager_pending_w = soc_basesoc_timer0_zero_pending;
assign soc_basesoc_timer0_irq = (soc_basesoc_timer0_eventmanager_pending_w & soc_basesoc_timer0_eventmanager_storage);
assign soc_basesoc_timer0_zero_status = soc_basesoc_timer0_zero_trigger;
assign soc_git_status = 159'd546537765585741406154460527161719450603345581882;
assign soc_platform_status = 63'd7021802832063889408;
assign soc_target_status = 63'd7089074166086762496;
assign user_led0 = soc_leds[0];
assign user_led1 = soc_leds[1];
assign user_led2 = soc_leds[2];
assign user_led3 = soc_leds[3];
always @(*) begin
	soc_switches <= 4'd0;
	soc_switches[0] <= (~user_sw0);
	soc_switches[1] <= (~user_sw1);
	soc_switches[2] <= (~user_sw2);
	soc_switches[3] <= (~user_sw3);
end
assign soc_waittimer0_wait = user_btn0;
assign soc_eventsourceprocess0_trigger = (~soc_waittimer0_done);
assign soc_waittimer1_wait = user_btn1;
assign soc_eventsourceprocess1_trigger = (~soc_waittimer1_done);
assign soc_waittimer2_wait = user_btn2;
assign soc_eventsourceprocess2_trigger = (~soc_waittimer2_done);
assign soc_waittimer3_wait = user_btn3;
assign soc_eventsourceprocess3_trigger = (~soc_waittimer3_done);
assign soc_leds = soc_leds_storage;
always @(*) begin
	soc_eventsourceprocess0_clear <= 1'd0;
	if ((soc_eventmanager_pending_re & soc_eventmanager_pending_r[0])) begin
		soc_eventsourceprocess0_clear <= 1'd1;
	end
end
always @(*) begin
	soc_eventsourceprocess1_clear <= 1'd0;
	if ((soc_eventmanager_pending_re & soc_eventmanager_pending_r[1])) begin
		soc_eventsourceprocess1_clear <= 1'd1;
	end
end
always @(*) begin
	soc_eventsourceprocess2_clear <= 1'd0;
	if ((soc_eventmanager_pending_re & soc_eventmanager_pending_r[2])) begin
		soc_eventsourceprocess2_clear <= 1'd1;
	end
end
always @(*) begin
	soc_eventmanager_status_w <= 4'd0;
	soc_eventmanager_status_w[0] <= soc_eventsourceprocess0_status;
	soc_eventmanager_status_w[1] <= soc_eventsourceprocess1_status;
	soc_eventmanager_status_w[2] <= soc_eventsourceprocess2_status;
	soc_eventmanager_status_w[3] <= soc_eventsourceprocess3_status;
end
always @(*) begin
	soc_eventsourceprocess3_clear <= 1'd0;
	if ((soc_eventmanager_pending_re & soc_eventmanager_pending_r[3])) begin
		soc_eventsourceprocess3_clear <= 1'd1;
	end
end
always @(*) begin
	soc_eventmanager_pending_w <= 4'd0;
	soc_eventmanager_pending_w[0] <= soc_eventsourceprocess0_pending;
	soc_eventmanager_pending_w[1] <= soc_eventsourceprocess1_pending;
	soc_eventmanager_pending_w[2] <= soc_eventsourceprocess2_pending;
	soc_eventmanager_pending_w[3] <= soc_eventsourceprocess3_pending;
end
assign soc_irq = ((((soc_eventmanager_pending_w[0] & soc_eventmanager_storage[0]) | (soc_eventmanager_pending_w[1] & soc_eventmanager_storage[1])) | (soc_eventmanager_pending_w[2] & soc_eventmanager_storage[2])) | (soc_eventmanager_pending_w[3] & soc_eventmanager_storage[3]));
assign soc_eventsourceprocess0_status = soc_eventsourceprocess0_trigger;
assign soc_eventsourceprocess1_status = soc_eventsourceprocess1_trigger;
assign soc_eventsourceprocess2_status = soc_eventsourceprocess2_trigger;
assign soc_eventsourceprocess3_status = soc_eventsourceprocess3_trigger;
assign soc_waittimer0_done = (soc_waittimer0_count == 1'd0);
assign soc_waittimer1_done = (soc_waittimer1_count == 1'd0);
assign soc_waittimer2_done = (soc_waittimer2_count == 1'd0);
assign soc_waittimer3_done = (soc_waittimer3_count == 1'd0);
assign spiflash_1x_wp = 1'd1;
assign spiflash_1x_hold = 1'd1;
assign soc_spiflash_bus_dat_r = soc_spiflash_sr;
always @(*) begin
	spiflash_1x_cs_n <= 1'd0;
	soc_clk <= 1'd0;
	spiflash_1x_mosi <= 1'd0;
	soc_spiflash_miso_status <= 1'd0;
	if (soc_spiflash_bitbang_en_storage) begin
		soc_clk <= soc_spiflash_bitbang_storage[1];
		spiflash_1x_cs_n <= soc_spiflash_bitbang_storage[2];
		if (soc_spiflash_bitbang_storage[1]) begin
			soc_spiflash_miso_status <= spiflash_1x_miso;
		end
		spiflash_1x_mosi <= soc_spiflash_bitbang_storage[0];
	end else begin
		soc_clk <= soc_spiflash_clk;
		spiflash_1x_cs_n <= soc_spiflash_cs_n;
		spiflash_1x_mosi <= soc_spiflash_sr[31];
	end
end
always @(*) begin
	soc_a7ddrphy_dqs_serdes_pattern <= 8'd85;
	if ((soc_a7ddrphy_dqs_preamble | soc_a7ddrphy_dqs_postamble)) begin
		soc_a7ddrphy_dqs_serdes_pattern <= 1'd0;
	end else begin
		soc_a7ddrphy_dqs_serdes_pattern <= 7'd85;
	end
end
assign soc_a7ddrphy_bitslip0_i = soc_a7ddrphy_dq_i_data0;
assign soc_a7ddrphy_bitslip1_i = soc_a7ddrphy_dq_i_data1;
assign soc_a7ddrphy_bitslip2_i = soc_a7ddrphy_dq_i_data2;
assign soc_a7ddrphy_bitslip3_i = soc_a7ddrphy_dq_i_data3;
assign soc_a7ddrphy_bitslip4_i = soc_a7ddrphy_dq_i_data4;
assign soc_a7ddrphy_bitslip5_i = soc_a7ddrphy_dq_i_data5;
assign soc_a7ddrphy_bitslip6_i = soc_a7ddrphy_dq_i_data6;
assign soc_a7ddrphy_bitslip7_i = soc_a7ddrphy_dq_i_data7;
assign soc_a7ddrphy_bitslip8_i = soc_a7ddrphy_dq_i_data8;
assign soc_a7ddrphy_bitslip9_i = soc_a7ddrphy_dq_i_data9;
assign soc_a7ddrphy_bitslip10_i = soc_a7ddrphy_dq_i_data10;
assign soc_a7ddrphy_bitslip11_i = soc_a7ddrphy_dq_i_data11;
assign soc_a7ddrphy_bitslip12_i = soc_a7ddrphy_dq_i_data12;
assign soc_a7ddrphy_bitslip13_i = soc_a7ddrphy_dq_i_data13;
assign soc_a7ddrphy_bitslip14_i = soc_a7ddrphy_dq_i_data14;
assign soc_a7ddrphy_bitslip15_i = soc_a7ddrphy_dq_i_data15;
always @(*) begin
	soc_a7ddrphy_dfi_p0_rddata <= 32'd0;
	soc_a7ddrphy_dfi_p0_rddata[0] <= soc_a7ddrphy_bitslip0_o[0];
	soc_a7ddrphy_dfi_p0_rddata[16] <= soc_a7ddrphy_bitslip0_o[1];
	soc_a7ddrphy_dfi_p0_rddata[1] <= soc_a7ddrphy_bitslip1_o[0];
	soc_a7ddrphy_dfi_p0_rddata[17] <= soc_a7ddrphy_bitslip1_o[1];
	soc_a7ddrphy_dfi_p0_rddata[2] <= soc_a7ddrphy_bitslip2_o[0];
	soc_a7ddrphy_dfi_p0_rddata[18] <= soc_a7ddrphy_bitslip2_o[1];
	soc_a7ddrphy_dfi_p0_rddata[3] <= soc_a7ddrphy_bitslip3_o[0];
	soc_a7ddrphy_dfi_p0_rddata[19] <= soc_a7ddrphy_bitslip3_o[1];
	soc_a7ddrphy_dfi_p0_rddata[4] <= soc_a7ddrphy_bitslip4_o[0];
	soc_a7ddrphy_dfi_p0_rddata[20] <= soc_a7ddrphy_bitslip4_o[1];
	soc_a7ddrphy_dfi_p0_rddata[5] <= soc_a7ddrphy_bitslip5_o[0];
	soc_a7ddrphy_dfi_p0_rddata[21] <= soc_a7ddrphy_bitslip5_o[1];
	soc_a7ddrphy_dfi_p0_rddata[6] <= soc_a7ddrphy_bitslip6_o[0];
	soc_a7ddrphy_dfi_p0_rddata[22] <= soc_a7ddrphy_bitslip6_o[1];
	soc_a7ddrphy_dfi_p0_rddata[7] <= soc_a7ddrphy_bitslip7_o[0];
	soc_a7ddrphy_dfi_p0_rddata[23] <= soc_a7ddrphy_bitslip7_o[1];
	soc_a7ddrphy_dfi_p0_rddata[8] <= soc_a7ddrphy_bitslip8_o[0];
	soc_a7ddrphy_dfi_p0_rddata[24] <= soc_a7ddrphy_bitslip8_o[1];
	soc_a7ddrphy_dfi_p0_rddata[9] <= soc_a7ddrphy_bitslip9_o[0];
	soc_a7ddrphy_dfi_p0_rddata[25] <= soc_a7ddrphy_bitslip9_o[1];
	soc_a7ddrphy_dfi_p0_rddata[10] <= soc_a7ddrphy_bitslip10_o[0];
	soc_a7ddrphy_dfi_p0_rddata[26] <= soc_a7ddrphy_bitslip10_o[1];
	soc_a7ddrphy_dfi_p0_rddata[11] <= soc_a7ddrphy_bitslip11_o[0];
	soc_a7ddrphy_dfi_p0_rddata[27] <= soc_a7ddrphy_bitslip11_o[1];
	soc_a7ddrphy_dfi_p0_rddata[12] <= soc_a7ddrphy_bitslip12_o[0];
	soc_a7ddrphy_dfi_p0_rddata[28] <= soc_a7ddrphy_bitslip12_o[1];
	soc_a7ddrphy_dfi_p0_rddata[13] <= soc_a7ddrphy_bitslip13_o[0];
	soc_a7ddrphy_dfi_p0_rddata[29] <= soc_a7ddrphy_bitslip13_o[1];
	soc_a7ddrphy_dfi_p0_rddata[14] <= soc_a7ddrphy_bitslip14_o[0];
	soc_a7ddrphy_dfi_p0_rddata[30] <= soc_a7ddrphy_bitslip14_o[1];
	soc_a7ddrphy_dfi_p0_rddata[15] <= soc_a7ddrphy_bitslip15_o[0];
	soc_a7ddrphy_dfi_p0_rddata[31] <= soc_a7ddrphy_bitslip15_o[1];
end
always @(*) begin
	soc_a7ddrphy_dfi_p1_rddata <= 32'd0;
	soc_a7ddrphy_dfi_p1_rddata[0] <= soc_a7ddrphy_bitslip0_o[2];
	soc_a7ddrphy_dfi_p1_rddata[16] <= soc_a7ddrphy_bitslip0_o[3];
	soc_a7ddrphy_dfi_p1_rddata[1] <= soc_a7ddrphy_bitslip1_o[2];
	soc_a7ddrphy_dfi_p1_rddata[17] <= soc_a7ddrphy_bitslip1_o[3];
	soc_a7ddrphy_dfi_p1_rddata[2] <= soc_a7ddrphy_bitslip2_o[2];
	soc_a7ddrphy_dfi_p1_rddata[18] <= soc_a7ddrphy_bitslip2_o[3];
	soc_a7ddrphy_dfi_p1_rddata[3] <= soc_a7ddrphy_bitslip3_o[2];
	soc_a7ddrphy_dfi_p1_rddata[19] <= soc_a7ddrphy_bitslip3_o[3];
	soc_a7ddrphy_dfi_p1_rddata[4] <= soc_a7ddrphy_bitslip4_o[2];
	soc_a7ddrphy_dfi_p1_rddata[20] <= soc_a7ddrphy_bitslip4_o[3];
	soc_a7ddrphy_dfi_p1_rddata[5] <= soc_a7ddrphy_bitslip5_o[2];
	soc_a7ddrphy_dfi_p1_rddata[21] <= soc_a7ddrphy_bitslip5_o[3];
	soc_a7ddrphy_dfi_p1_rddata[6] <= soc_a7ddrphy_bitslip6_o[2];
	soc_a7ddrphy_dfi_p1_rddata[22] <= soc_a7ddrphy_bitslip6_o[3];
	soc_a7ddrphy_dfi_p1_rddata[7] <= soc_a7ddrphy_bitslip7_o[2];
	soc_a7ddrphy_dfi_p1_rddata[23] <= soc_a7ddrphy_bitslip7_o[3];
	soc_a7ddrphy_dfi_p1_rddata[8] <= soc_a7ddrphy_bitslip8_o[2];
	soc_a7ddrphy_dfi_p1_rddata[24] <= soc_a7ddrphy_bitslip8_o[3];
	soc_a7ddrphy_dfi_p1_rddata[9] <= soc_a7ddrphy_bitslip9_o[2];
	soc_a7ddrphy_dfi_p1_rddata[25] <= soc_a7ddrphy_bitslip9_o[3];
	soc_a7ddrphy_dfi_p1_rddata[10] <= soc_a7ddrphy_bitslip10_o[2];
	soc_a7ddrphy_dfi_p1_rddata[26] <= soc_a7ddrphy_bitslip10_o[3];
	soc_a7ddrphy_dfi_p1_rddata[11] <= soc_a7ddrphy_bitslip11_o[2];
	soc_a7ddrphy_dfi_p1_rddata[27] <= soc_a7ddrphy_bitslip11_o[3];
	soc_a7ddrphy_dfi_p1_rddata[12] <= soc_a7ddrphy_bitslip12_o[2];
	soc_a7ddrphy_dfi_p1_rddata[28] <= soc_a7ddrphy_bitslip12_o[3];
	soc_a7ddrphy_dfi_p1_rddata[13] <= soc_a7ddrphy_bitslip13_o[2];
	soc_a7ddrphy_dfi_p1_rddata[29] <= soc_a7ddrphy_bitslip13_o[3];
	soc_a7ddrphy_dfi_p1_rddata[14] <= soc_a7ddrphy_bitslip14_o[2];
	soc_a7ddrphy_dfi_p1_rddata[30] <= soc_a7ddrphy_bitslip14_o[3];
	soc_a7ddrphy_dfi_p1_rddata[15] <= soc_a7ddrphy_bitslip15_o[2];
	soc_a7ddrphy_dfi_p1_rddata[31] <= soc_a7ddrphy_bitslip15_o[3];
end
always @(*) begin
	soc_a7ddrphy_dfi_p2_rddata <= 32'd0;
	soc_a7ddrphy_dfi_p2_rddata[0] <= soc_a7ddrphy_bitslip0_o[4];
	soc_a7ddrphy_dfi_p2_rddata[16] <= soc_a7ddrphy_bitslip0_o[5];
	soc_a7ddrphy_dfi_p2_rddata[1] <= soc_a7ddrphy_bitslip1_o[4];
	soc_a7ddrphy_dfi_p2_rddata[17] <= soc_a7ddrphy_bitslip1_o[5];
	soc_a7ddrphy_dfi_p2_rddata[2] <= soc_a7ddrphy_bitslip2_o[4];
	soc_a7ddrphy_dfi_p2_rddata[18] <= soc_a7ddrphy_bitslip2_o[5];
	soc_a7ddrphy_dfi_p2_rddata[3] <= soc_a7ddrphy_bitslip3_o[4];
	soc_a7ddrphy_dfi_p2_rddata[19] <= soc_a7ddrphy_bitslip3_o[5];
	soc_a7ddrphy_dfi_p2_rddata[4] <= soc_a7ddrphy_bitslip4_o[4];
	soc_a7ddrphy_dfi_p2_rddata[20] <= soc_a7ddrphy_bitslip4_o[5];
	soc_a7ddrphy_dfi_p2_rddata[5] <= soc_a7ddrphy_bitslip5_o[4];
	soc_a7ddrphy_dfi_p2_rddata[21] <= soc_a7ddrphy_bitslip5_o[5];
	soc_a7ddrphy_dfi_p2_rddata[6] <= soc_a7ddrphy_bitslip6_o[4];
	soc_a7ddrphy_dfi_p2_rddata[22] <= soc_a7ddrphy_bitslip6_o[5];
	soc_a7ddrphy_dfi_p2_rddata[7] <= soc_a7ddrphy_bitslip7_o[4];
	soc_a7ddrphy_dfi_p2_rddata[23] <= soc_a7ddrphy_bitslip7_o[5];
	soc_a7ddrphy_dfi_p2_rddata[8] <= soc_a7ddrphy_bitslip8_o[4];
	soc_a7ddrphy_dfi_p2_rddata[24] <= soc_a7ddrphy_bitslip8_o[5];
	soc_a7ddrphy_dfi_p2_rddata[9] <= soc_a7ddrphy_bitslip9_o[4];
	soc_a7ddrphy_dfi_p2_rddata[25] <= soc_a7ddrphy_bitslip9_o[5];
	soc_a7ddrphy_dfi_p2_rddata[10] <= soc_a7ddrphy_bitslip10_o[4];
	soc_a7ddrphy_dfi_p2_rddata[26] <= soc_a7ddrphy_bitslip10_o[5];
	soc_a7ddrphy_dfi_p2_rddata[11] <= soc_a7ddrphy_bitslip11_o[4];
	soc_a7ddrphy_dfi_p2_rddata[27] <= soc_a7ddrphy_bitslip11_o[5];
	soc_a7ddrphy_dfi_p2_rddata[12] <= soc_a7ddrphy_bitslip12_o[4];
	soc_a7ddrphy_dfi_p2_rddata[28] <= soc_a7ddrphy_bitslip12_o[5];
	soc_a7ddrphy_dfi_p2_rddata[13] <= soc_a7ddrphy_bitslip13_o[4];
	soc_a7ddrphy_dfi_p2_rddata[29] <= soc_a7ddrphy_bitslip13_o[5];
	soc_a7ddrphy_dfi_p2_rddata[14] <= soc_a7ddrphy_bitslip14_o[4];
	soc_a7ddrphy_dfi_p2_rddata[30] <= soc_a7ddrphy_bitslip14_o[5];
	soc_a7ddrphy_dfi_p2_rddata[15] <= soc_a7ddrphy_bitslip15_o[4];
	soc_a7ddrphy_dfi_p2_rddata[31] <= soc_a7ddrphy_bitslip15_o[5];
end
always @(*) begin
	soc_a7ddrphy_dfi_p3_rddata <= 32'd0;
	soc_a7ddrphy_dfi_p3_rddata[0] <= soc_a7ddrphy_bitslip0_o[6];
	soc_a7ddrphy_dfi_p3_rddata[16] <= soc_a7ddrphy_bitslip0_o[7];
	soc_a7ddrphy_dfi_p3_rddata[1] <= soc_a7ddrphy_bitslip1_o[6];
	soc_a7ddrphy_dfi_p3_rddata[17] <= soc_a7ddrphy_bitslip1_o[7];
	soc_a7ddrphy_dfi_p3_rddata[2] <= soc_a7ddrphy_bitslip2_o[6];
	soc_a7ddrphy_dfi_p3_rddata[18] <= soc_a7ddrphy_bitslip2_o[7];
	soc_a7ddrphy_dfi_p3_rddata[3] <= soc_a7ddrphy_bitslip3_o[6];
	soc_a7ddrphy_dfi_p3_rddata[19] <= soc_a7ddrphy_bitslip3_o[7];
	soc_a7ddrphy_dfi_p3_rddata[4] <= soc_a7ddrphy_bitslip4_o[6];
	soc_a7ddrphy_dfi_p3_rddata[20] <= soc_a7ddrphy_bitslip4_o[7];
	soc_a7ddrphy_dfi_p3_rddata[5] <= soc_a7ddrphy_bitslip5_o[6];
	soc_a7ddrphy_dfi_p3_rddata[21] <= soc_a7ddrphy_bitslip5_o[7];
	soc_a7ddrphy_dfi_p3_rddata[6] <= soc_a7ddrphy_bitslip6_o[6];
	soc_a7ddrphy_dfi_p3_rddata[22] <= soc_a7ddrphy_bitslip6_o[7];
	soc_a7ddrphy_dfi_p3_rddata[7] <= soc_a7ddrphy_bitslip7_o[6];
	soc_a7ddrphy_dfi_p3_rddata[23] <= soc_a7ddrphy_bitslip7_o[7];
	soc_a7ddrphy_dfi_p3_rddata[8] <= soc_a7ddrphy_bitslip8_o[6];
	soc_a7ddrphy_dfi_p3_rddata[24] <= soc_a7ddrphy_bitslip8_o[7];
	soc_a7ddrphy_dfi_p3_rddata[9] <= soc_a7ddrphy_bitslip9_o[6];
	soc_a7ddrphy_dfi_p3_rddata[25] <= soc_a7ddrphy_bitslip9_o[7];
	soc_a7ddrphy_dfi_p3_rddata[10] <= soc_a7ddrphy_bitslip10_o[6];
	soc_a7ddrphy_dfi_p3_rddata[26] <= soc_a7ddrphy_bitslip10_o[7];
	soc_a7ddrphy_dfi_p3_rddata[11] <= soc_a7ddrphy_bitslip11_o[6];
	soc_a7ddrphy_dfi_p3_rddata[27] <= soc_a7ddrphy_bitslip11_o[7];
	soc_a7ddrphy_dfi_p3_rddata[12] <= soc_a7ddrphy_bitslip12_o[6];
	soc_a7ddrphy_dfi_p3_rddata[28] <= soc_a7ddrphy_bitslip12_o[7];
	soc_a7ddrphy_dfi_p3_rddata[13] <= soc_a7ddrphy_bitslip13_o[6];
	soc_a7ddrphy_dfi_p3_rddata[29] <= soc_a7ddrphy_bitslip13_o[7];
	soc_a7ddrphy_dfi_p3_rddata[14] <= soc_a7ddrphy_bitslip14_o[6];
	soc_a7ddrphy_dfi_p3_rddata[30] <= soc_a7ddrphy_bitslip14_o[7];
	soc_a7ddrphy_dfi_p3_rddata[15] <= soc_a7ddrphy_bitslip15_o[6];
	soc_a7ddrphy_dfi_p3_rddata[31] <= soc_a7ddrphy_bitslip15_o[7];
end
assign soc_a7ddrphy_oe = ((soc_a7ddrphy_last_wrdata_en[1] | soc_a7ddrphy_last_wrdata_en[2]) | soc_a7ddrphy_last_wrdata_en[3]);
assign soc_a7ddrphy_dqs_preamble = (soc_a7ddrphy_last_wrdata_en[1] & (~soc_a7ddrphy_last_wrdata_en[2]));
assign soc_a7ddrphy_dqs_postamble = (soc_a7ddrphy_last_wrdata_en[3] & (~soc_a7ddrphy_last_wrdata_en[2]));
assign soc_a7ddrphy_dfi_p0_address = soc_basesoc_sdram_master_p0_address;
assign soc_a7ddrphy_dfi_p0_bank = soc_basesoc_sdram_master_p0_bank;
assign soc_a7ddrphy_dfi_p0_cas_n = soc_basesoc_sdram_master_p0_cas_n;
assign soc_a7ddrphy_dfi_p0_cs_n = soc_basesoc_sdram_master_p0_cs_n;
assign soc_a7ddrphy_dfi_p0_ras_n = soc_basesoc_sdram_master_p0_ras_n;
assign soc_a7ddrphy_dfi_p0_we_n = soc_basesoc_sdram_master_p0_we_n;
assign soc_a7ddrphy_dfi_p0_cke = soc_basesoc_sdram_master_p0_cke;
assign soc_a7ddrphy_dfi_p0_odt = soc_basesoc_sdram_master_p0_odt;
assign soc_a7ddrphy_dfi_p0_reset_n = soc_basesoc_sdram_master_p0_reset_n;
assign soc_a7ddrphy_dfi_p0_act_n = soc_basesoc_sdram_master_p0_act_n;
assign soc_a7ddrphy_dfi_p0_wrdata = soc_basesoc_sdram_master_p0_wrdata;
assign soc_a7ddrphy_dfi_p0_wrdata_en = soc_basesoc_sdram_master_p0_wrdata_en;
assign soc_a7ddrphy_dfi_p0_wrdata_mask = soc_basesoc_sdram_master_p0_wrdata_mask;
assign soc_a7ddrphy_dfi_p0_rddata_en = soc_basesoc_sdram_master_p0_rddata_en;
assign soc_basesoc_sdram_master_p0_rddata = soc_a7ddrphy_dfi_p0_rddata;
assign soc_basesoc_sdram_master_p0_rddata_valid = soc_a7ddrphy_dfi_p0_rddata_valid;
assign soc_a7ddrphy_dfi_p1_address = soc_basesoc_sdram_master_p1_address;
assign soc_a7ddrphy_dfi_p1_bank = soc_basesoc_sdram_master_p1_bank;
assign soc_a7ddrphy_dfi_p1_cas_n = soc_basesoc_sdram_master_p1_cas_n;
assign soc_a7ddrphy_dfi_p1_cs_n = soc_basesoc_sdram_master_p1_cs_n;
assign soc_a7ddrphy_dfi_p1_ras_n = soc_basesoc_sdram_master_p1_ras_n;
assign soc_a7ddrphy_dfi_p1_we_n = soc_basesoc_sdram_master_p1_we_n;
assign soc_a7ddrphy_dfi_p1_cke = soc_basesoc_sdram_master_p1_cke;
assign soc_a7ddrphy_dfi_p1_odt = soc_basesoc_sdram_master_p1_odt;
assign soc_a7ddrphy_dfi_p1_reset_n = soc_basesoc_sdram_master_p1_reset_n;
assign soc_a7ddrphy_dfi_p1_act_n = soc_basesoc_sdram_master_p1_act_n;
assign soc_a7ddrphy_dfi_p1_wrdata = soc_basesoc_sdram_master_p1_wrdata;
assign soc_a7ddrphy_dfi_p1_wrdata_en = soc_basesoc_sdram_master_p1_wrdata_en;
assign soc_a7ddrphy_dfi_p1_wrdata_mask = soc_basesoc_sdram_master_p1_wrdata_mask;
assign soc_a7ddrphy_dfi_p1_rddata_en = soc_basesoc_sdram_master_p1_rddata_en;
assign soc_basesoc_sdram_master_p1_rddata = soc_a7ddrphy_dfi_p1_rddata;
assign soc_basesoc_sdram_master_p1_rddata_valid = soc_a7ddrphy_dfi_p1_rddata_valid;
assign soc_a7ddrphy_dfi_p2_address = soc_basesoc_sdram_master_p2_address;
assign soc_a7ddrphy_dfi_p2_bank = soc_basesoc_sdram_master_p2_bank;
assign soc_a7ddrphy_dfi_p2_cas_n = soc_basesoc_sdram_master_p2_cas_n;
assign soc_a7ddrphy_dfi_p2_cs_n = soc_basesoc_sdram_master_p2_cs_n;
assign soc_a7ddrphy_dfi_p2_ras_n = soc_basesoc_sdram_master_p2_ras_n;
assign soc_a7ddrphy_dfi_p2_we_n = soc_basesoc_sdram_master_p2_we_n;
assign soc_a7ddrphy_dfi_p2_cke = soc_basesoc_sdram_master_p2_cke;
assign soc_a7ddrphy_dfi_p2_odt = soc_basesoc_sdram_master_p2_odt;
assign soc_a7ddrphy_dfi_p2_reset_n = soc_basesoc_sdram_master_p2_reset_n;
assign soc_a7ddrphy_dfi_p2_act_n = soc_basesoc_sdram_master_p2_act_n;
assign soc_a7ddrphy_dfi_p2_wrdata = soc_basesoc_sdram_master_p2_wrdata;
assign soc_a7ddrphy_dfi_p2_wrdata_en = soc_basesoc_sdram_master_p2_wrdata_en;
assign soc_a7ddrphy_dfi_p2_wrdata_mask = soc_basesoc_sdram_master_p2_wrdata_mask;
assign soc_a7ddrphy_dfi_p2_rddata_en = soc_basesoc_sdram_master_p2_rddata_en;
assign soc_basesoc_sdram_master_p2_rddata = soc_a7ddrphy_dfi_p2_rddata;
assign soc_basesoc_sdram_master_p2_rddata_valid = soc_a7ddrphy_dfi_p2_rddata_valid;
assign soc_a7ddrphy_dfi_p3_address = soc_basesoc_sdram_master_p3_address;
assign soc_a7ddrphy_dfi_p3_bank = soc_basesoc_sdram_master_p3_bank;
assign soc_a7ddrphy_dfi_p3_cas_n = soc_basesoc_sdram_master_p3_cas_n;
assign soc_a7ddrphy_dfi_p3_cs_n = soc_basesoc_sdram_master_p3_cs_n;
assign soc_a7ddrphy_dfi_p3_ras_n = soc_basesoc_sdram_master_p3_ras_n;
assign soc_a7ddrphy_dfi_p3_we_n = soc_basesoc_sdram_master_p3_we_n;
assign soc_a7ddrphy_dfi_p3_cke = soc_basesoc_sdram_master_p3_cke;
assign soc_a7ddrphy_dfi_p3_odt = soc_basesoc_sdram_master_p3_odt;
assign soc_a7ddrphy_dfi_p3_reset_n = soc_basesoc_sdram_master_p3_reset_n;
assign soc_a7ddrphy_dfi_p3_act_n = soc_basesoc_sdram_master_p3_act_n;
assign soc_a7ddrphy_dfi_p3_wrdata = soc_basesoc_sdram_master_p3_wrdata;
assign soc_a7ddrphy_dfi_p3_wrdata_en = soc_basesoc_sdram_master_p3_wrdata_en;
assign soc_a7ddrphy_dfi_p3_wrdata_mask = soc_basesoc_sdram_master_p3_wrdata_mask;
assign soc_a7ddrphy_dfi_p3_rddata_en = soc_basesoc_sdram_master_p3_rddata_en;
assign soc_basesoc_sdram_master_p3_rddata = soc_a7ddrphy_dfi_p3_rddata;
assign soc_basesoc_sdram_master_p3_rddata_valid = soc_a7ddrphy_dfi_p3_rddata_valid;
assign soc_basesoc_sdram_slave_p0_address = soc_basesoc_sdram_dfi_p0_address;
assign soc_basesoc_sdram_slave_p0_bank = soc_basesoc_sdram_dfi_p0_bank;
assign soc_basesoc_sdram_slave_p0_cas_n = soc_basesoc_sdram_dfi_p0_cas_n;
assign soc_basesoc_sdram_slave_p0_cs_n = soc_basesoc_sdram_dfi_p0_cs_n;
assign soc_basesoc_sdram_slave_p0_ras_n = soc_basesoc_sdram_dfi_p0_ras_n;
assign soc_basesoc_sdram_slave_p0_we_n = soc_basesoc_sdram_dfi_p0_we_n;
assign soc_basesoc_sdram_slave_p0_cke = soc_basesoc_sdram_dfi_p0_cke;
assign soc_basesoc_sdram_slave_p0_odt = soc_basesoc_sdram_dfi_p0_odt;
assign soc_basesoc_sdram_slave_p0_reset_n = soc_basesoc_sdram_dfi_p0_reset_n;
assign soc_basesoc_sdram_slave_p0_act_n = soc_basesoc_sdram_dfi_p0_act_n;
assign soc_basesoc_sdram_slave_p0_wrdata = soc_basesoc_sdram_dfi_p0_wrdata;
assign soc_basesoc_sdram_slave_p0_wrdata_en = soc_basesoc_sdram_dfi_p0_wrdata_en;
assign soc_basesoc_sdram_slave_p0_wrdata_mask = soc_basesoc_sdram_dfi_p0_wrdata_mask;
assign soc_basesoc_sdram_slave_p0_rddata_en = soc_basesoc_sdram_dfi_p0_rddata_en;
assign soc_basesoc_sdram_dfi_p0_rddata = soc_basesoc_sdram_slave_p0_rddata;
assign soc_basesoc_sdram_dfi_p0_rddata_valid = soc_basesoc_sdram_slave_p0_rddata_valid;
assign soc_basesoc_sdram_slave_p1_address = soc_basesoc_sdram_dfi_p1_address;
assign soc_basesoc_sdram_slave_p1_bank = soc_basesoc_sdram_dfi_p1_bank;
assign soc_basesoc_sdram_slave_p1_cas_n = soc_basesoc_sdram_dfi_p1_cas_n;
assign soc_basesoc_sdram_slave_p1_cs_n = soc_basesoc_sdram_dfi_p1_cs_n;
assign soc_basesoc_sdram_slave_p1_ras_n = soc_basesoc_sdram_dfi_p1_ras_n;
assign soc_basesoc_sdram_slave_p1_we_n = soc_basesoc_sdram_dfi_p1_we_n;
assign soc_basesoc_sdram_slave_p1_cke = soc_basesoc_sdram_dfi_p1_cke;
assign soc_basesoc_sdram_slave_p1_odt = soc_basesoc_sdram_dfi_p1_odt;
assign soc_basesoc_sdram_slave_p1_reset_n = soc_basesoc_sdram_dfi_p1_reset_n;
assign soc_basesoc_sdram_slave_p1_act_n = soc_basesoc_sdram_dfi_p1_act_n;
assign soc_basesoc_sdram_slave_p1_wrdata = soc_basesoc_sdram_dfi_p1_wrdata;
assign soc_basesoc_sdram_slave_p1_wrdata_en = soc_basesoc_sdram_dfi_p1_wrdata_en;
assign soc_basesoc_sdram_slave_p1_wrdata_mask = soc_basesoc_sdram_dfi_p1_wrdata_mask;
assign soc_basesoc_sdram_slave_p1_rddata_en = soc_basesoc_sdram_dfi_p1_rddata_en;
assign soc_basesoc_sdram_dfi_p1_rddata = soc_basesoc_sdram_slave_p1_rddata;
assign soc_basesoc_sdram_dfi_p1_rddata_valid = soc_basesoc_sdram_slave_p1_rddata_valid;
assign soc_basesoc_sdram_slave_p2_address = soc_basesoc_sdram_dfi_p2_address;
assign soc_basesoc_sdram_slave_p2_bank = soc_basesoc_sdram_dfi_p2_bank;
assign soc_basesoc_sdram_slave_p2_cas_n = soc_basesoc_sdram_dfi_p2_cas_n;
assign soc_basesoc_sdram_slave_p2_cs_n = soc_basesoc_sdram_dfi_p2_cs_n;
assign soc_basesoc_sdram_slave_p2_ras_n = soc_basesoc_sdram_dfi_p2_ras_n;
assign soc_basesoc_sdram_slave_p2_we_n = soc_basesoc_sdram_dfi_p2_we_n;
assign soc_basesoc_sdram_slave_p2_cke = soc_basesoc_sdram_dfi_p2_cke;
assign soc_basesoc_sdram_slave_p2_odt = soc_basesoc_sdram_dfi_p2_odt;
assign soc_basesoc_sdram_slave_p2_reset_n = soc_basesoc_sdram_dfi_p2_reset_n;
assign soc_basesoc_sdram_slave_p2_act_n = soc_basesoc_sdram_dfi_p2_act_n;
assign soc_basesoc_sdram_slave_p2_wrdata = soc_basesoc_sdram_dfi_p2_wrdata;
assign soc_basesoc_sdram_slave_p2_wrdata_en = soc_basesoc_sdram_dfi_p2_wrdata_en;
assign soc_basesoc_sdram_slave_p2_wrdata_mask = soc_basesoc_sdram_dfi_p2_wrdata_mask;
assign soc_basesoc_sdram_slave_p2_rddata_en = soc_basesoc_sdram_dfi_p2_rddata_en;
assign soc_basesoc_sdram_dfi_p2_rddata = soc_basesoc_sdram_slave_p2_rddata;
assign soc_basesoc_sdram_dfi_p2_rddata_valid = soc_basesoc_sdram_slave_p2_rddata_valid;
assign soc_basesoc_sdram_slave_p3_address = soc_basesoc_sdram_dfi_p3_address;
assign soc_basesoc_sdram_slave_p3_bank = soc_basesoc_sdram_dfi_p3_bank;
assign soc_basesoc_sdram_slave_p3_cas_n = soc_basesoc_sdram_dfi_p3_cas_n;
assign soc_basesoc_sdram_slave_p3_cs_n = soc_basesoc_sdram_dfi_p3_cs_n;
assign soc_basesoc_sdram_slave_p3_ras_n = soc_basesoc_sdram_dfi_p3_ras_n;
assign soc_basesoc_sdram_slave_p3_we_n = soc_basesoc_sdram_dfi_p3_we_n;
assign soc_basesoc_sdram_slave_p3_cke = soc_basesoc_sdram_dfi_p3_cke;
assign soc_basesoc_sdram_slave_p3_odt = soc_basesoc_sdram_dfi_p3_odt;
assign soc_basesoc_sdram_slave_p3_reset_n = soc_basesoc_sdram_dfi_p3_reset_n;
assign soc_basesoc_sdram_slave_p3_act_n = soc_basesoc_sdram_dfi_p3_act_n;
assign soc_basesoc_sdram_slave_p3_wrdata = soc_basesoc_sdram_dfi_p3_wrdata;
assign soc_basesoc_sdram_slave_p3_wrdata_en = soc_basesoc_sdram_dfi_p3_wrdata_en;
assign soc_basesoc_sdram_slave_p3_wrdata_mask = soc_basesoc_sdram_dfi_p3_wrdata_mask;
assign soc_basesoc_sdram_slave_p3_rddata_en = soc_basesoc_sdram_dfi_p3_rddata_en;
assign soc_basesoc_sdram_dfi_p3_rddata = soc_basesoc_sdram_slave_p3_rddata;
assign soc_basesoc_sdram_dfi_p3_rddata_valid = soc_basesoc_sdram_slave_p3_rddata_valid;
always @(*) begin
	soc_basesoc_sdram_master_p1_wrdata <= 32'd0;
	soc_basesoc_sdram_inti_p2_rddata <= 32'd0;
	soc_basesoc_sdram_master_p1_wrdata_en <= 1'd0;
	soc_basesoc_sdram_inti_p2_rddata_valid <= 1'd0;
	soc_basesoc_sdram_master_p1_wrdata_mask <= 4'd0;
	soc_basesoc_sdram_master_p1_rddata_en <= 1'd0;
	soc_basesoc_sdram_master_p2_address <= 14'd0;
	soc_basesoc_sdram_master_p2_bank <= 3'd0;
	soc_basesoc_sdram_master_p2_cas_n <= 1'd1;
	soc_basesoc_sdram_master_p2_cs_n <= 1'd1;
	soc_basesoc_sdram_master_p2_ras_n <= 1'd1;
	soc_basesoc_sdram_master_p2_we_n <= 1'd1;
	soc_basesoc_sdram_master_p2_cke <= 1'd0;
	soc_basesoc_sdram_master_p2_odt <= 1'd0;
	soc_basesoc_sdram_master_p2_reset_n <= 1'd0;
	soc_basesoc_sdram_master_p2_act_n <= 1'd1;
	soc_basesoc_sdram_master_p2_wrdata <= 32'd0;
	soc_basesoc_sdram_inti_p3_rddata <= 32'd0;
	soc_basesoc_sdram_master_p2_wrdata_en <= 1'd0;
	soc_basesoc_sdram_inti_p3_rddata_valid <= 1'd0;
	soc_basesoc_sdram_master_p2_wrdata_mask <= 4'd0;
	soc_basesoc_sdram_master_p2_rddata_en <= 1'd0;
	soc_basesoc_sdram_master_p3_address <= 14'd0;
	soc_basesoc_sdram_master_p3_bank <= 3'd0;
	soc_basesoc_sdram_master_p3_cas_n <= 1'd1;
	soc_basesoc_sdram_master_p3_cs_n <= 1'd1;
	soc_basesoc_sdram_master_p3_ras_n <= 1'd1;
	soc_basesoc_sdram_master_p3_we_n <= 1'd1;
	soc_basesoc_sdram_master_p3_cke <= 1'd0;
	soc_basesoc_sdram_master_p3_odt <= 1'd0;
	soc_basesoc_sdram_master_p3_reset_n <= 1'd0;
	soc_basesoc_sdram_master_p3_act_n <= 1'd1;
	soc_basesoc_sdram_master_p3_wrdata <= 32'd0;
	soc_basesoc_sdram_master_p3_wrdata_en <= 1'd0;
	soc_basesoc_sdram_master_p3_wrdata_mask <= 4'd0;
	soc_basesoc_sdram_master_p3_rddata_en <= 1'd0;
	soc_basesoc_sdram_slave_p0_rddata <= 32'd0;
	soc_basesoc_sdram_slave_p0_rddata_valid <= 1'd0;
	soc_basesoc_sdram_slave_p1_rddata <= 32'd0;
	soc_basesoc_sdram_slave_p1_rddata_valid <= 1'd0;
	soc_basesoc_sdram_slave_p2_rddata <= 32'd0;
	soc_basesoc_sdram_slave_p2_rddata_valid <= 1'd0;
	soc_basesoc_sdram_slave_p3_rddata <= 32'd0;
	soc_basesoc_sdram_slave_p3_rddata_valid <= 1'd0;
	soc_basesoc_sdram_inti_p0_rddata <= 32'd0;
	soc_basesoc_sdram_inti_p0_rddata_valid <= 1'd0;
	soc_basesoc_sdram_master_p0_address <= 14'd0;
	soc_basesoc_sdram_master_p0_bank <= 3'd0;
	soc_basesoc_sdram_master_p0_cas_n <= 1'd1;
	soc_basesoc_sdram_master_p0_cs_n <= 1'd1;
	soc_basesoc_sdram_master_p0_ras_n <= 1'd1;
	soc_basesoc_sdram_master_p0_we_n <= 1'd1;
	soc_basesoc_sdram_master_p0_cke <= 1'd0;
	soc_basesoc_sdram_master_p0_odt <= 1'd0;
	soc_basesoc_sdram_master_p0_reset_n <= 1'd0;
	soc_basesoc_sdram_master_p0_act_n <= 1'd1;
	soc_basesoc_sdram_master_p0_wrdata <= 32'd0;
	soc_basesoc_sdram_inti_p1_rddata <= 32'd0;
	soc_basesoc_sdram_master_p0_wrdata_en <= 1'd0;
	soc_basesoc_sdram_inti_p1_rddata_valid <= 1'd0;
	soc_basesoc_sdram_master_p0_wrdata_mask <= 4'd0;
	soc_basesoc_sdram_master_p0_rddata_en <= 1'd0;
	soc_basesoc_sdram_master_p1_address <= 14'd0;
	soc_basesoc_sdram_master_p1_bank <= 3'd0;
	soc_basesoc_sdram_master_p1_cas_n <= 1'd1;
	soc_basesoc_sdram_master_p1_cs_n <= 1'd1;
	soc_basesoc_sdram_master_p1_ras_n <= 1'd1;
	soc_basesoc_sdram_master_p1_we_n <= 1'd1;
	soc_basesoc_sdram_master_p1_cke <= 1'd0;
	soc_basesoc_sdram_master_p1_odt <= 1'd0;
	soc_basesoc_sdram_master_p1_reset_n <= 1'd0;
	soc_basesoc_sdram_master_p1_act_n <= 1'd1;
	if (soc_basesoc_sdram_storage[0]) begin
		soc_basesoc_sdram_master_p0_address <= soc_basesoc_sdram_slave_p0_address;
		soc_basesoc_sdram_master_p0_bank <= soc_basesoc_sdram_slave_p0_bank;
		soc_basesoc_sdram_master_p0_cas_n <= soc_basesoc_sdram_slave_p0_cas_n;
		soc_basesoc_sdram_master_p0_cs_n <= soc_basesoc_sdram_slave_p0_cs_n;
		soc_basesoc_sdram_master_p0_ras_n <= soc_basesoc_sdram_slave_p0_ras_n;
		soc_basesoc_sdram_master_p0_we_n <= soc_basesoc_sdram_slave_p0_we_n;
		soc_basesoc_sdram_master_p0_cke <= soc_basesoc_sdram_slave_p0_cke;
		soc_basesoc_sdram_master_p0_odt <= soc_basesoc_sdram_slave_p0_odt;
		soc_basesoc_sdram_master_p0_reset_n <= soc_basesoc_sdram_slave_p0_reset_n;
		soc_basesoc_sdram_master_p0_act_n <= soc_basesoc_sdram_slave_p0_act_n;
		soc_basesoc_sdram_master_p0_wrdata <= soc_basesoc_sdram_slave_p0_wrdata;
		soc_basesoc_sdram_master_p0_wrdata_en <= soc_basesoc_sdram_slave_p0_wrdata_en;
		soc_basesoc_sdram_master_p0_wrdata_mask <= soc_basesoc_sdram_slave_p0_wrdata_mask;
		soc_basesoc_sdram_master_p0_rddata_en <= soc_basesoc_sdram_slave_p0_rddata_en;
		soc_basesoc_sdram_slave_p0_rddata <= soc_basesoc_sdram_master_p0_rddata;
		soc_basesoc_sdram_slave_p0_rddata_valid <= soc_basesoc_sdram_master_p0_rddata_valid;
		soc_basesoc_sdram_master_p1_address <= soc_basesoc_sdram_slave_p1_address;
		soc_basesoc_sdram_master_p1_bank <= soc_basesoc_sdram_slave_p1_bank;
		soc_basesoc_sdram_master_p1_cas_n <= soc_basesoc_sdram_slave_p1_cas_n;
		soc_basesoc_sdram_master_p1_cs_n <= soc_basesoc_sdram_slave_p1_cs_n;
		soc_basesoc_sdram_master_p1_ras_n <= soc_basesoc_sdram_slave_p1_ras_n;
		soc_basesoc_sdram_master_p1_we_n <= soc_basesoc_sdram_slave_p1_we_n;
		soc_basesoc_sdram_master_p1_cke <= soc_basesoc_sdram_slave_p1_cke;
		soc_basesoc_sdram_master_p1_odt <= soc_basesoc_sdram_slave_p1_odt;
		soc_basesoc_sdram_master_p1_reset_n <= soc_basesoc_sdram_slave_p1_reset_n;
		soc_basesoc_sdram_master_p1_act_n <= soc_basesoc_sdram_slave_p1_act_n;
		soc_basesoc_sdram_master_p1_wrdata <= soc_basesoc_sdram_slave_p1_wrdata;
		soc_basesoc_sdram_master_p1_wrdata_en <= soc_basesoc_sdram_slave_p1_wrdata_en;
		soc_basesoc_sdram_master_p1_wrdata_mask <= soc_basesoc_sdram_slave_p1_wrdata_mask;
		soc_basesoc_sdram_master_p1_rddata_en <= soc_basesoc_sdram_slave_p1_rddata_en;
		soc_basesoc_sdram_slave_p1_rddata <= soc_basesoc_sdram_master_p1_rddata;
		soc_basesoc_sdram_slave_p1_rddata_valid <= soc_basesoc_sdram_master_p1_rddata_valid;
		soc_basesoc_sdram_master_p2_address <= soc_basesoc_sdram_slave_p2_address;
		soc_basesoc_sdram_master_p2_bank <= soc_basesoc_sdram_slave_p2_bank;
		soc_basesoc_sdram_master_p2_cas_n <= soc_basesoc_sdram_slave_p2_cas_n;
		soc_basesoc_sdram_master_p2_cs_n <= soc_basesoc_sdram_slave_p2_cs_n;
		soc_basesoc_sdram_master_p2_ras_n <= soc_basesoc_sdram_slave_p2_ras_n;
		soc_basesoc_sdram_master_p2_we_n <= soc_basesoc_sdram_slave_p2_we_n;
		soc_basesoc_sdram_master_p2_cke <= soc_basesoc_sdram_slave_p2_cke;
		soc_basesoc_sdram_master_p2_odt <= soc_basesoc_sdram_slave_p2_odt;
		soc_basesoc_sdram_master_p2_reset_n <= soc_basesoc_sdram_slave_p2_reset_n;
		soc_basesoc_sdram_master_p2_act_n <= soc_basesoc_sdram_slave_p2_act_n;
		soc_basesoc_sdram_master_p2_wrdata <= soc_basesoc_sdram_slave_p2_wrdata;
		soc_basesoc_sdram_master_p2_wrdata_en <= soc_basesoc_sdram_slave_p2_wrdata_en;
		soc_basesoc_sdram_master_p2_wrdata_mask <= soc_basesoc_sdram_slave_p2_wrdata_mask;
		soc_basesoc_sdram_master_p2_rddata_en <= soc_basesoc_sdram_slave_p2_rddata_en;
		soc_basesoc_sdram_slave_p2_rddata <= soc_basesoc_sdram_master_p2_rddata;
		soc_basesoc_sdram_slave_p2_rddata_valid <= soc_basesoc_sdram_master_p2_rddata_valid;
		soc_basesoc_sdram_master_p3_address <= soc_basesoc_sdram_slave_p3_address;
		soc_basesoc_sdram_master_p3_bank <= soc_basesoc_sdram_slave_p3_bank;
		soc_basesoc_sdram_master_p3_cas_n <= soc_basesoc_sdram_slave_p3_cas_n;
		soc_basesoc_sdram_master_p3_cs_n <= soc_basesoc_sdram_slave_p3_cs_n;
		soc_basesoc_sdram_master_p3_ras_n <= soc_basesoc_sdram_slave_p3_ras_n;
		soc_basesoc_sdram_master_p3_we_n <= soc_basesoc_sdram_slave_p3_we_n;
		soc_basesoc_sdram_master_p3_cke <= soc_basesoc_sdram_slave_p3_cke;
		soc_basesoc_sdram_master_p3_odt <= soc_basesoc_sdram_slave_p3_odt;
		soc_basesoc_sdram_master_p3_reset_n <= soc_basesoc_sdram_slave_p3_reset_n;
		soc_basesoc_sdram_master_p3_act_n <= soc_basesoc_sdram_slave_p3_act_n;
		soc_basesoc_sdram_master_p3_wrdata <= soc_basesoc_sdram_slave_p3_wrdata;
		soc_basesoc_sdram_master_p3_wrdata_en <= soc_basesoc_sdram_slave_p3_wrdata_en;
		soc_basesoc_sdram_master_p3_wrdata_mask <= soc_basesoc_sdram_slave_p3_wrdata_mask;
		soc_basesoc_sdram_master_p3_rddata_en <= soc_basesoc_sdram_slave_p3_rddata_en;
		soc_basesoc_sdram_slave_p3_rddata <= soc_basesoc_sdram_master_p3_rddata;
		soc_basesoc_sdram_slave_p3_rddata_valid <= soc_basesoc_sdram_master_p3_rddata_valid;
	end else begin
		soc_basesoc_sdram_master_p0_address <= soc_basesoc_sdram_inti_p0_address;
		soc_basesoc_sdram_master_p0_bank <= soc_basesoc_sdram_inti_p0_bank;
		soc_basesoc_sdram_master_p0_cas_n <= soc_basesoc_sdram_inti_p0_cas_n;
		soc_basesoc_sdram_master_p0_cs_n <= soc_basesoc_sdram_inti_p0_cs_n;
		soc_basesoc_sdram_master_p0_ras_n <= soc_basesoc_sdram_inti_p0_ras_n;
		soc_basesoc_sdram_master_p0_we_n <= soc_basesoc_sdram_inti_p0_we_n;
		soc_basesoc_sdram_master_p0_cke <= soc_basesoc_sdram_inti_p0_cke;
		soc_basesoc_sdram_master_p0_odt <= soc_basesoc_sdram_inti_p0_odt;
		soc_basesoc_sdram_master_p0_reset_n <= soc_basesoc_sdram_inti_p0_reset_n;
		soc_basesoc_sdram_master_p0_act_n <= soc_basesoc_sdram_inti_p0_act_n;
		soc_basesoc_sdram_master_p0_wrdata <= soc_basesoc_sdram_inti_p0_wrdata;
		soc_basesoc_sdram_master_p0_wrdata_en <= soc_basesoc_sdram_inti_p0_wrdata_en;
		soc_basesoc_sdram_master_p0_wrdata_mask <= soc_basesoc_sdram_inti_p0_wrdata_mask;
		soc_basesoc_sdram_master_p0_rddata_en <= soc_basesoc_sdram_inti_p0_rddata_en;
		soc_basesoc_sdram_inti_p0_rddata <= soc_basesoc_sdram_master_p0_rddata;
		soc_basesoc_sdram_inti_p0_rddata_valid <= soc_basesoc_sdram_master_p0_rddata_valid;
		soc_basesoc_sdram_master_p1_address <= soc_basesoc_sdram_inti_p1_address;
		soc_basesoc_sdram_master_p1_bank <= soc_basesoc_sdram_inti_p1_bank;
		soc_basesoc_sdram_master_p1_cas_n <= soc_basesoc_sdram_inti_p1_cas_n;
		soc_basesoc_sdram_master_p1_cs_n <= soc_basesoc_sdram_inti_p1_cs_n;
		soc_basesoc_sdram_master_p1_ras_n <= soc_basesoc_sdram_inti_p1_ras_n;
		soc_basesoc_sdram_master_p1_we_n <= soc_basesoc_sdram_inti_p1_we_n;
		soc_basesoc_sdram_master_p1_cke <= soc_basesoc_sdram_inti_p1_cke;
		soc_basesoc_sdram_master_p1_odt <= soc_basesoc_sdram_inti_p1_odt;
		soc_basesoc_sdram_master_p1_reset_n <= soc_basesoc_sdram_inti_p1_reset_n;
		soc_basesoc_sdram_master_p1_act_n <= soc_basesoc_sdram_inti_p1_act_n;
		soc_basesoc_sdram_master_p1_wrdata <= soc_basesoc_sdram_inti_p1_wrdata;
		soc_basesoc_sdram_master_p1_wrdata_en <= soc_basesoc_sdram_inti_p1_wrdata_en;
		soc_basesoc_sdram_master_p1_wrdata_mask <= soc_basesoc_sdram_inti_p1_wrdata_mask;
		soc_basesoc_sdram_master_p1_rddata_en <= soc_basesoc_sdram_inti_p1_rddata_en;
		soc_basesoc_sdram_inti_p1_rddata <= soc_basesoc_sdram_master_p1_rddata;
		soc_basesoc_sdram_inti_p1_rddata_valid <= soc_basesoc_sdram_master_p1_rddata_valid;
		soc_basesoc_sdram_master_p2_address <= soc_basesoc_sdram_inti_p2_address;
		soc_basesoc_sdram_master_p2_bank <= soc_basesoc_sdram_inti_p2_bank;
		soc_basesoc_sdram_master_p2_cas_n <= soc_basesoc_sdram_inti_p2_cas_n;
		soc_basesoc_sdram_master_p2_cs_n <= soc_basesoc_sdram_inti_p2_cs_n;
		soc_basesoc_sdram_master_p2_ras_n <= soc_basesoc_sdram_inti_p2_ras_n;
		soc_basesoc_sdram_master_p2_we_n <= soc_basesoc_sdram_inti_p2_we_n;
		soc_basesoc_sdram_master_p2_cke <= soc_basesoc_sdram_inti_p2_cke;
		soc_basesoc_sdram_master_p2_odt <= soc_basesoc_sdram_inti_p2_odt;
		soc_basesoc_sdram_master_p2_reset_n <= soc_basesoc_sdram_inti_p2_reset_n;
		soc_basesoc_sdram_master_p2_act_n <= soc_basesoc_sdram_inti_p2_act_n;
		soc_basesoc_sdram_master_p2_wrdata <= soc_basesoc_sdram_inti_p2_wrdata;
		soc_basesoc_sdram_master_p2_wrdata_en <= soc_basesoc_sdram_inti_p2_wrdata_en;
		soc_basesoc_sdram_master_p2_wrdata_mask <= soc_basesoc_sdram_inti_p2_wrdata_mask;
		soc_basesoc_sdram_master_p2_rddata_en <= soc_basesoc_sdram_inti_p2_rddata_en;
		soc_basesoc_sdram_inti_p2_rddata <= soc_basesoc_sdram_master_p2_rddata;
		soc_basesoc_sdram_inti_p2_rddata_valid <= soc_basesoc_sdram_master_p2_rddata_valid;
		soc_basesoc_sdram_master_p3_address <= soc_basesoc_sdram_inti_p3_address;
		soc_basesoc_sdram_master_p3_bank <= soc_basesoc_sdram_inti_p3_bank;
		soc_basesoc_sdram_master_p3_cas_n <= soc_basesoc_sdram_inti_p3_cas_n;
		soc_basesoc_sdram_master_p3_cs_n <= soc_basesoc_sdram_inti_p3_cs_n;
		soc_basesoc_sdram_master_p3_ras_n <= soc_basesoc_sdram_inti_p3_ras_n;
		soc_basesoc_sdram_master_p3_we_n <= soc_basesoc_sdram_inti_p3_we_n;
		soc_basesoc_sdram_master_p3_cke <= soc_basesoc_sdram_inti_p3_cke;
		soc_basesoc_sdram_master_p3_odt <= soc_basesoc_sdram_inti_p3_odt;
		soc_basesoc_sdram_master_p3_reset_n <= soc_basesoc_sdram_inti_p3_reset_n;
		soc_basesoc_sdram_master_p3_act_n <= soc_basesoc_sdram_inti_p3_act_n;
		soc_basesoc_sdram_master_p3_wrdata <= soc_basesoc_sdram_inti_p3_wrdata;
		soc_basesoc_sdram_master_p3_wrdata_en <= soc_basesoc_sdram_inti_p3_wrdata_en;
		soc_basesoc_sdram_master_p3_wrdata_mask <= soc_basesoc_sdram_inti_p3_wrdata_mask;
		soc_basesoc_sdram_master_p3_rddata_en <= soc_basesoc_sdram_inti_p3_rddata_en;
		soc_basesoc_sdram_inti_p3_rddata <= soc_basesoc_sdram_master_p3_rddata;
		soc_basesoc_sdram_inti_p3_rddata_valid <= soc_basesoc_sdram_master_p3_rddata_valid;
	end
end
assign soc_basesoc_sdram_inti_p0_cke = soc_basesoc_sdram_storage[1];
assign soc_basesoc_sdram_inti_p1_cke = soc_basesoc_sdram_storage[1];
assign soc_basesoc_sdram_inti_p2_cke = soc_basesoc_sdram_storage[1];
assign soc_basesoc_sdram_inti_p3_cke = soc_basesoc_sdram_storage[1];
assign soc_basesoc_sdram_inti_p0_odt = soc_basesoc_sdram_storage[2];
assign soc_basesoc_sdram_inti_p1_odt = soc_basesoc_sdram_storage[2];
assign soc_basesoc_sdram_inti_p2_odt = soc_basesoc_sdram_storage[2];
assign soc_basesoc_sdram_inti_p3_odt = soc_basesoc_sdram_storage[2];
assign soc_basesoc_sdram_inti_p0_reset_n = soc_basesoc_sdram_storage[3];
assign soc_basesoc_sdram_inti_p1_reset_n = soc_basesoc_sdram_storage[3];
assign soc_basesoc_sdram_inti_p2_reset_n = soc_basesoc_sdram_storage[3];
assign soc_basesoc_sdram_inti_p3_reset_n = soc_basesoc_sdram_storage[3];
always @(*) begin
	soc_basesoc_sdram_inti_p0_cas_n <= 1'd1;
	soc_basesoc_sdram_inti_p0_cs_n <= 1'd1;
	soc_basesoc_sdram_inti_p0_ras_n <= 1'd1;
	soc_basesoc_sdram_inti_p0_we_n <= 1'd1;
	if (soc_basesoc_sdram_phaseinjector0_command_issue_re) begin
		soc_basesoc_sdram_inti_p0_cs_n <= {1{(~soc_basesoc_sdram_phaseinjector0_command_storage[0])}};
		soc_basesoc_sdram_inti_p0_we_n <= (~soc_basesoc_sdram_phaseinjector0_command_storage[1]);
		soc_basesoc_sdram_inti_p0_cas_n <= (~soc_basesoc_sdram_phaseinjector0_command_storage[2]);
		soc_basesoc_sdram_inti_p0_ras_n <= (~soc_basesoc_sdram_phaseinjector0_command_storage[3]);
	end else begin
		soc_basesoc_sdram_inti_p0_cs_n <= {1{1'd1}};
		soc_basesoc_sdram_inti_p0_we_n <= 1'd1;
		soc_basesoc_sdram_inti_p0_cas_n <= 1'd1;
		soc_basesoc_sdram_inti_p0_ras_n <= 1'd1;
	end
end
assign soc_basesoc_sdram_inti_p0_address = soc_basesoc_sdram_phaseinjector0_address_storage;
assign soc_basesoc_sdram_inti_p0_bank = soc_basesoc_sdram_phaseinjector0_baddress_storage;
assign soc_basesoc_sdram_inti_p0_wrdata_en = (soc_basesoc_sdram_phaseinjector0_command_issue_re & soc_basesoc_sdram_phaseinjector0_command_storage[4]);
assign soc_basesoc_sdram_inti_p0_rddata_en = (soc_basesoc_sdram_phaseinjector0_command_issue_re & soc_basesoc_sdram_phaseinjector0_command_storage[5]);
assign soc_basesoc_sdram_inti_p0_wrdata = soc_basesoc_sdram_phaseinjector0_wrdata_storage;
assign soc_basesoc_sdram_inti_p0_wrdata_mask = 1'd0;
always @(*) begin
	soc_basesoc_sdram_inti_p1_cas_n <= 1'd1;
	soc_basesoc_sdram_inti_p1_cs_n <= 1'd1;
	soc_basesoc_sdram_inti_p1_ras_n <= 1'd1;
	soc_basesoc_sdram_inti_p1_we_n <= 1'd1;
	if (soc_basesoc_sdram_phaseinjector1_command_issue_re) begin
		soc_basesoc_sdram_inti_p1_cs_n <= {1{(~soc_basesoc_sdram_phaseinjector1_command_storage[0])}};
		soc_basesoc_sdram_inti_p1_we_n <= (~soc_basesoc_sdram_phaseinjector1_command_storage[1]);
		soc_basesoc_sdram_inti_p1_cas_n <= (~soc_basesoc_sdram_phaseinjector1_command_storage[2]);
		soc_basesoc_sdram_inti_p1_ras_n <= (~soc_basesoc_sdram_phaseinjector1_command_storage[3]);
	end else begin
		soc_basesoc_sdram_inti_p1_cs_n <= {1{1'd1}};
		soc_basesoc_sdram_inti_p1_we_n <= 1'd1;
		soc_basesoc_sdram_inti_p1_cas_n <= 1'd1;
		soc_basesoc_sdram_inti_p1_ras_n <= 1'd1;
	end
end
assign soc_basesoc_sdram_inti_p1_address = soc_basesoc_sdram_phaseinjector1_address_storage;
assign soc_basesoc_sdram_inti_p1_bank = soc_basesoc_sdram_phaseinjector1_baddress_storage;
assign soc_basesoc_sdram_inti_p1_wrdata_en = (soc_basesoc_sdram_phaseinjector1_command_issue_re & soc_basesoc_sdram_phaseinjector1_command_storage[4]);
assign soc_basesoc_sdram_inti_p1_rddata_en = (soc_basesoc_sdram_phaseinjector1_command_issue_re & soc_basesoc_sdram_phaseinjector1_command_storage[5]);
assign soc_basesoc_sdram_inti_p1_wrdata = soc_basesoc_sdram_phaseinjector1_wrdata_storage;
assign soc_basesoc_sdram_inti_p1_wrdata_mask = 1'd0;
always @(*) begin
	soc_basesoc_sdram_inti_p2_cas_n <= 1'd1;
	soc_basesoc_sdram_inti_p2_cs_n <= 1'd1;
	soc_basesoc_sdram_inti_p2_ras_n <= 1'd1;
	soc_basesoc_sdram_inti_p2_we_n <= 1'd1;
	if (soc_basesoc_sdram_phaseinjector2_command_issue_re) begin
		soc_basesoc_sdram_inti_p2_cs_n <= {1{(~soc_basesoc_sdram_phaseinjector2_command_storage[0])}};
		soc_basesoc_sdram_inti_p2_we_n <= (~soc_basesoc_sdram_phaseinjector2_command_storage[1]);
		soc_basesoc_sdram_inti_p2_cas_n <= (~soc_basesoc_sdram_phaseinjector2_command_storage[2]);
		soc_basesoc_sdram_inti_p2_ras_n <= (~soc_basesoc_sdram_phaseinjector2_command_storage[3]);
	end else begin
		soc_basesoc_sdram_inti_p2_cs_n <= {1{1'd1}};
		soc_basesoc_sdram_inti_p2_we_n <= 1'd1;
		soc_basesoc_sdram_inti_p2_cas_n <= 1'd1;
		soc_basesoc_sdram_inti_p2_ras_n <= 1'd1;
	end
end
assign soc_basesoc_sdram_inti_p2_address = soc_basesoc_sdram_phaseinjector2_address_storage;
assign soc_basesoc_sdram_inti_p2_bank = soc_basesoc_sdram_phaseinjector2_baddress_storage;
assign soc_basesoc_sdram_inti_p2_wrdata_en = (soc_basesoc_sdram_phaseinjector2_command_issue_re & soc_basesoc_sdram_phaseinjector2_command_storage[4]);
assign soc_basesoc_sdram_inti_p2_rddata_en = (soc_basesoc_sdram_phaseinjector2_command_issue_re & soc_basesoc_sdram_phaseinjector2_command_storage[5]);
assign soc_basesoc_sdram_inti_p2_wrdata = soc_basesoc_sdram_phaseinjector2_wrdata_storage;
assign soc_basesoc_sdram_inti_p2_wrdata_mask = 1'd0;
always @(*) begin
	soc_basesoc_sdram_inti_p3_cas_n <= 1'd1;
	soc_basesoc_sdram_inti_p3_cs_n <= 1'd1;
	soc_basesoc_sdram_inti_p3_ras_n <= 1'd1;
	soc_basesoc_sdram_inti_p3_we_n <= 1'd1;
	if (soc_basesoc_sdram_phaseinjector3_command_issue_re) begin
		soc_basesoc_sdram_inti_p3_cs_n <= {1{(~soc_basesoc_sdram_phaseinjector3_command_storage[0])}};
		soc_basesoc_sdram_inti_p3_we_n <= (~soc_basesoc_sdram_phaseinjector3_command_storage[1]);
		soc_basesoc_sdram_inti_p3_cas_n <= (~soc_basesoc_sdram_phaseinjector3_command_storage[2]);
		soc_basesoc_sdram_inti_p3_ras_n <= (~soc_basesoc_sdram_phaseinjector3_command_storage[3]);
	end else begin
		soc_basesoc_sdram_inti_p3_cs_n <= {1{1'd1}};
		soc_basesoc_sdram_inti_p3_we_n <= 1'd1;
		soc_basesoc_sdram_inti_p3_cas_n <= 1'd1;
		soc_basesoc_sdram_inti_p3_ras_n <= 1'd1;
	end
end
assign soc_basesoc_sdram_inti_p3_address = soc_basesoc_sdram_phaseinjector3_address_storage;
assign soc_basesoc_sdram_inti_p3_bank = soc_basesoc_sdram_phaseinjector3_baddress_storage;
assign soc_basesoc_sdram_inti_p3_wrdata_en = (soc_basesoc_sdram_phaseinjector3_command_issue_re & soc_basesoc_sdram_phaseinjector3_command_storage[4]);
assign soc_basesoc_sdram_inti_p3_rddata_en = (soc_basesoc_sdram_phaseinjector3_command_issue_re & soc_basesoc_sdram_phaseinjector3_command_storage[5]);
assign soc_basesoc_sdram_inti_p3_wrdata = soc_basesoc_sdram_phaseinjector3_wrdata_storage;
assign soc_basesoc_sdram_inti_p3_wrdata_mask = 1'd0;
assign soc_basesoc_sdram_bankmachine0_req_valid = soc_basesoc_sdram_interface_bank0_valid;
assign soc_basesoc_sdram_interface_bank0_ready = soc_basesoc_sdram_bankmachine0_req_ready;
assign soc_basesoc_sdram_bankmachine0_req_we = soc_basesoc_sdram_interface_bank0_we;
assign soc_basesoc_sdram_bankmachine0_req_addr = soc_basesoc_sdram_interface_bank0_addr;
assign soc_basesoc_sdram_interface_bank0_lock = soc_basesoc_sdram_bankmachine0_req_lock;
assign soc_basesoc_sdram_interface_bank0_wdata_ready = soc_basesoc_sdram_bankmachine0_req_wdata_ready;
assign soc_basesoc_sdram_interface_bank0_rdata_valid = soc_basesoc_sdram_bankmachine0_req_rdata_valid;
assign soc_basesoc_sdram_bankmachine1_req_valid = soc_basesoc_sdram_interface_bank1_valid;
assign soc_basesoc_sdram_interface_bank1_ready = soc_basesoc_sdram_bankmachine1_req_ready;
assign soc_basesoc_sdram_bankmachine1_req_we = soc_basesoc_sdram_interface_bank1_we;
assign soc_basesoc_sdram_bankmachine1_req_addr = soc_basesoc_sdram_interface_bank1_addr;
assign soc_basesoc_sdram_interface_bank1_lock = soc_basesoc_sdram_bankmachine1_req_lock;
assign soc_basesoc_sdram_interface_bank1_wdata_ready = soc_basesoc_sdram_bankmachine1_req_wdata_ready;
assign soc_basesoc_sdram_interface_bank1_rdata_valid = soc_basesoc_sdram_bankmachine1_req_rdata_valid;
assign soc_basesoc_sdram_bankmachine2_req_valid = soc_basesoc_sdram_interface_bank2_valid;
assign soc_basesoc_sdram_interface_bank2_ready = soc_basesoc_sdram_bankmachine2_req_ready;
assign soc_basesoc_sdram_bankmachine2_req_we = soc_basesoc_sdram_interface_bank2_we;
assign soc_basesoc_sdram_bankmachine2_req_addr = soc_basesoc_sdram_interface_bank2_addr;
assign soc_basesoc_sdram_interface_bank2_lock = soc_basesoc_sdram_bankmachine2_req_lock;
assign soc_basesoc_sdram_interface_bank2_wdata_ready = soc_basesoc_sdram_bankmachine2_req_wdata_ready;
assign soc_basesoc_sdram_interface_bank2_rdata_valid = soc_basesoc_sdram_bankmachine2_req_rdata_valid;
assign soc_basesoc_sdram_bankmachine3_req_valid = soc_basesoc_sdram_interface_bank3_valid;
assign soc_basesoc_sdram_interface_bank3_ready = soc_basesoc_sdram_bankmachine3_req_ready;
assign soc_basesoc_sdram_bankmachine3_req_we = soc_basesoc_sdram_interface_bank3_we;
assign soc_basesoc_sdram_bankmachine3_req_addr = soc_basesoc_sdram_interface_bank3_addr;
assign soc_basesoc_sdram_interface_bank3_lock = soc_basesoc_sdram_bankmachine3_req_lock;
assign soc_basesoc_sdram_interface_bank3_wdata_ready = soc_basesoc_sdram_bankmachine3_req_wdata_ready;
assign soc_basesoc_sdram_interface_bank3_rdata_valid = soc_basesoc_sdram_bankmachine3_req_rdata_valid;
assign soc_basesoc_sdram_bankmachine4_req_valid = soc_basesoc_sdram_interface_bank4_valid;
assign soc_basesoc_sdram_interface_bank4_ready = soc_basesoc_sdram_bankmachine4_req_ready;
assign soc_basesoc_sdram_bankmachine4_req_we = soc_basesoc_sdram_interface_bank4_we;
assign soc_basesoc_sdram_bankmachine4_req_addr = soc_basesoc_sdram_interface_bank4_addr;
assign soc_basesoc_sdram_interface_bank4_lock = soc_basesoc_sdram_bankmachine4_req_lock;
assign soc_basesoc_sdram_interface_bank4_wdata_ready = soc_basesoc_sdram_bankmachine4_req_wdata_ready;
assign soc_basesoc_sdram_interface_bank4_rdata_valid = soc_basesoc_sdram_bankmachine4_req_rdata_valid;
assign soc_basesoc_sdram_bankmachine5_req_valid = soc_basesoc_sdram_interface_bank5_valid;
assign soc_basesoc_sdram_interface_bank5_ready = soc_basesoc_sdram_bankmachine5_req_ready;
assign soc_basesoc_sdram_bankmachine5_req_we = soc_basesoc_sdram_interface_bank5_we;
assign soc_basesoc_sdram_bankmachine5_req_addr = soc_basesoc_sdram_interface_bank5_addr;
assign soc_basesoc_sdram_interface_bank5_lock = soc_basesoc_sdram_bankmachine5_req_lock;
assign soc_basesoc_sdram_interface_bank5_wdata_ready = soc_basesoc_sdram_bankmachine5_req_wdata_ready;
assign soc_basesoc_sdram_interface_bank5_rdata_valid = soc_basesoc_sdram_bankmachine5_req_rdata_valid;
assign soc_basesoc_sdram_bankmachine6_req_valid = soc_basesoc_sdram_interface_bank6_valid;
assign soc_basesoc_sdram_interface_bank6_ready = soc_basesoc_sdram_bankmachine6_req_ready;
assign soc_basesoc_sdram_bankmachine6_req_we = soc_basesoc_sdram_interface_bank6_we;
assign soc_basesoc_sdram_bankmachine6_req_addr = soc_basesoc_sdram_interface_bank6_addr;
assign soc_basesoc_sdram_interface_bank6_lock = soc_basesoc_sdram_bankmachine6_req_lock;
assign soc_basesoc_sdram_interface_bank6_wdata_ready = soc_basesoc_sdram_bankmachine6_req_wdata_ready;
assign soc_basesoc_sdram_interface_bank6_rdata_valid = soc_basesoc_sdram_bankmachine6_req_rdata_valid;
assign soc_basesoc_sdram_bankmachine7_req_valid = soc_basesoc_sdram_interface_bank7_valid;
assign soc_basesoc_sdram_interface_bank7_ready = soc_basesoc_sdram_bankmachine7_req_ready;
assign soc_basesoc_sdram_bankmachine7_req_we = soc_basesoc_sdram_interface_bank7_we;
assign soc_basesoc_sdram_bankmachine7_req_addr = soc_basesoc_sdram_interface_bank7_addr;
assign soc_basesoc_sdram_interface_bank7_lock = soc_basesoc_sdram_bankmachine7_req_lock;
assign soc_basesoc_sdram_interface_bank7_wdata_ready = soc_basesoc_sdram_bankmachine7_req_wdata_ready;
assign soc_basesoc_sdram_interface_bank7_rdata_valid = soc_basesoc_sdram_bankmachine7_req_rdata_valid;
assign soc_basesoc_sdram_timer_reset = 2'sd2;
assign soc_basesoc_sdram_timer_wait = (~soc_basesoc_sdram_timer_done);
assign soc_basesoc_sdram_timer_done = (soc_basesoc_sdram_timer_count == 1'd0);
always @(*) begin
	soc_basesoc_sdram_cmd_last <= 1'd0;
	vns_refresher_next_state <= 2'd0;
	soc_basesoc_sdram_generator_start <= 1'd0;
	soc_basesoc_sdram_cmd_valid <= 1'd0;
	vns_refresher_next_state <= vns_refresher_state;
	case (vns_refresher_state)
		1'd1: begin
			soc_basesoc_sdram_cmd_valid <= 1'd1;
			if (soc_basesoc_sdram_cmd_ready) begin
				soc_basesoc_sdram_generator_start <= 1'd1;
				vns_refresher_next_state <= 2'd2;
			end
		end
		2'd2: begin
			if (soc_basesoc_sdram_generator_done) begin
				soc_basesoc_sdram_cmd_last <= 1'd1;
				vns_refresher_next_state <= 1'd0;
			end else begin
				soc_basesoc_sdram_cmd_valid <= 1'd1;
			end
		end
		default: begin
			if (soc_basesoc_sdram_timer_done) begin
				vns_refresher_next_state <= 1'd1;
			end
		end
	endcase
end
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_valid = soc_basesoc_sdram_bankmachine0_req_valid;
assign soc_basesoc_sdram_bankmachine0_req_ready = soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_ready;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_we = soc_basesoc_sdram_bankmachine0_req_we;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_addr = soc_basesoc_sdram_bankmachine0_req_addr;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_sink_valid = soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_valid;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_ready = soc_basesoc_sdram_bankmachine0_cmd_buffer_sink_ready;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_sink_first = soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_first;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_sink_last = soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_last;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_sink_payload_we = soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_we;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_sink_payload_addr = soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_addr;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_source_ready = (soc_basesoc_sdram_bankmachine0_req_wdata_ready | soc_basesoc_sdram_bankmachine0_req_rdata_valid);
assign soc_basesoc_sdram_bankmachine0_req_lock = (soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_valid | soc_basesoc_sdram_bankmachine0_cmd_buffer_source_valid);
assign soc_basesoc_sdram_bankmachine0_row_hit = (soc_basesoc_sdram_bankmachine0_row == soc_basesoc_sdram_bankmachine0_cmd_buffer_source_payload_addr[20:7]);
assign soc_basesoc_sdram_bankmachine0_cmd_payload_ba = 1'd0;
always @(*) begin
	soc_basesoc_sdram_bankmachine0_cmd_payload_a <= 14'd0;
	if (soc_basesoc_sdram_bankmachine0_row_col_n_addr_sel) begin
		soc_basesoc_sdram_bankmachine0_cmd_payload_a <= soc_basesoc_sdram_bankmachine0_cmd_buffer_source_payload_addr[20:7];
	end else begin
		soc_basesoc_sdram_bankmachine0_cmd_payload_a <= ((soc_basesoc_sdram_bankmachine0_auto_precharge <<< 4'd10) | {soc_basesoc_sdram_bankmachine0_cmd_buffer_source_payload_addr[6:0], {3{1'd0}}});
	end
end
assign soc_basesoc_sdram_bankmachine0_twtpcon_valid = ((soc_basesoc_sdram_bankmachine0_cmd_valid & soc_basesoc_sdram_bankmachine0_cmd_ready) & soc_basesoc_sdram_bankmachine0_cmd_payload_is_write);
assign soc_basesoc_sdram_bankmachine0_trccon_valid = ((soc_basesoc_sdram_bankmachine0_cmd_valid & soc_basesoc_sdram_bankmachine0_cmd_ready) & soc_basesoc_sdram_bankmachine0_row_open);
assign soc_basesoc_sdram_bankmachine0_trascon_valid = ((soc_basesoc_sdram_bankmachine0_cmd_valid & soc_basesoc_sdram_bankmachine0_cmd_ready) & soc_basesoc_sdram_bankmachine0_row_open);
always @(*) begin
	soc_basesoc_sdram_bankmachine0_auto_precharge <= 1'd0;
	if ((soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_valid & soc_basesoc_sdram_bankmachine0_cmd_buffer_source_valid)) begin
		if ((soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_addr[20:7] != soc_basesoc_sdram_bankmachine0_cmd_buffer_source_payload_addr[20:7])) begin
			soc_basesoc_sdram_bankmachine0_auto_precharge <= (soc_basesoc_sdram_bankmachine0_row_close == 1'd0);
		end
	end
end
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_din = {soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_last, soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_first, soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_addr, soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we};
assign {soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_last, soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_first, soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_addr, soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we} = soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_dout;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_ready = soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we = soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_valid;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_first = soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_first;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_last = soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_last;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we = soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_we;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_addr = soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_addr;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_valid = soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_first = soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_first;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_last = soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_last;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_we = soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_addr = soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_addr;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_re = soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_ready;
always @(*) begin
	soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_replace) begin
		soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr <= (soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr <= soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_produce;
	end
end
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_w = soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_din;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_we = (soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we & (soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable | soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_replace));
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_do_read = (soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable & soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_re);
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_adr = soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_consume;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_dout = soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_dat_r;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable = (soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_level != 4'd8);
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable = (soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_level != 1'd0);
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_pipe_ce = (soc_basesoc_sdram_bankmachine0_cmd_buffer_source_ready | (~soc_basesoc_sdram_bankmachine0_cmd_buffer_valid_n));
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_sink_ready = soc_basesoc_sdram_bankmachine0_cmd_buffer_pipe_ce;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_source_valid = soc_basesoc_sdram_bankmachine0_cmd_buffer_valid_n;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_busy = (1'd0 | soc_basesoc_sdram_bankmachine0_cmd_buffer_valid_n);
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_source_first = soc_basesoc_sdram_bankmachine0_cmd_buffer_first_n;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_source_last = soc_basesoc_sdram_bankmachine0_cmd_buffer_last_n;
always @(*) begin
	vns_bankmachine0_next_state <= 4'd0;
	soc_basesoc_sdram_bankmachine0_cmd_payload_cas <= 1'd0;
	soc_basesoc_sdram_bankmachine0_cmd_payload_ras <= 1'd0;
	soc_basesoc_sdram_bankmachine0_cmd_payload_we <= 1'd0;
	soc_basesoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd0;
	soc_basesoc_sdram_bankmachine0_row_open <= 1'd0;
	soc_basesoc_sdram_bankmachine0_cmd_payload_is_read <= 1'd0;
	soc_basesoc_sdram_bankmachine0_row_close <= 1'd0;
	soc_basesoc_sdram_bankmachine0_cmd_payload_is_write <= 1'd0;
	soc_basesoc_sdram_bankmachine0_req_wdata_ready <= 1'd0;
	soc_basesoc_sdram_bankmachine0_req_rdata_valid <= 1'd0;
	soc_basesoc_sdram_bankmachine0_row_col_n_addr_sel <= 1'd0;
	soc_basesoc_sdram_bankmachine0_refresh_gnt <= 1'd0;
	soc_basesoc_sdram_bankmachine0_cmd_valid <= 1'd0;
	vns_bankmachine0_next_state <= vns_bankmachine0_state;
	case (vns_bankmachine0_state)
		1'd1: begin
			if ((soc_basesoc_sdram_bankmachine0_twtpcon_ready & soc_basesoc_sdram_bankmachine0_trascon_ready)) begin
				soc_basesoc_sdram_bankmachine0_cmd_valid <= 1'd1;
				if (soc_basesoc_sdram_bankmachine0_cmd_ready) begin
					vns_bankmachine0_next_state <= 3'd5;
				end
				soc_basesoc_sdram_bankmachine0_cmd_payload_ras <= 1'd1;
				soc_basesoc_sdram_bankmachine0_cmd_payload_we <= 1'd1;
				soc_basesoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			end
			soc_basesoc_sdram_bankmachine0_row_close <= 1'd1;
		end
		2'd2: begin
			if ((soc_basesoc_sdram_bankmachine0_twtpcon_ready & soc_basesoc_sdram_bankmachine0_trascon_ready)) begin
				vns_bankmachine0_next_state <= 3'd5;
			end
			soc_basesoc_sdram_bankmachine0_row_close <= 1'd1;
		end
		2'd3: begin
			if (soc_basesoc_sdram_bankmachine0_trccon_ready) begin
				soc_basesoc_sdram_bankmachine0_row_col_n_addr_sel <= 1'd1;
				soc_basesoc_sdram_bankmachine0_row_open <= 1'd1;
				soc_basesoc_sdram_bankmachine0_cmd_valid <= 1'd1;
				soc_basesoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
				if (soc_basesoc_sdram_bankmachine0_cmd_ready) begin
					vns_bankmachine0_next_state <= 3'd7;
				end
				soc_basesoc_sdram_bankmachine0_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (soc_basesoc_sdram_bankmachine0_twtpcon_ready) begin
				soc_basesoc_sdram_bankmachine0_refresh_gnt <= 1'd1;
			end
			soc_basesoc_sdram_bankmachine0_row_close <= 1'd1;
			soc_basesoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			if ((~soc_basesoc_sdram_bankmachine0_refresh_req)) begin
				vns_bankmachine0_next_state <= 1'd0;
			end
		end
		3'd5: begin
			vns_bankmachine0_next_state <= 3'd6;
		end
		3'd6: begin
			vns_bankmachine0_next_state <= 2'd3;
		end
		3'd7: begin
			vns_bankmachine0_next_state <= 4'd8;
		end
		4'd8: begin
			vns_bankmachine0_next_state <= 1'd0;
		end
		default: begin
			if (soc_basesoc_sdram_bankmachine0_refresh_req) begin
				vns_bankmachine0_next_state <= 3'd4;
			end else begin
				if (soc_basesoc_sdram_bankmachine0_cmd_buffer_source_valid) begin
					if (soc_basesoc_sdram_bankmachine0_row_opened) begin
						if (soc_basesoc_sdram_bankmachine0_row_hit) begin
							soc_basesoc_sdram_bankmachine0_cmd_valid <= 1'd1;
							if (soc_basesoc_sdram_bankmachine0_cmd_buffer_source_payload_we) begin
								soc_basesoc_sdram_bankmachine0_req_wdata_ready <= soc_basesoc_sdram_bankmachine0_cmd_ready;
								soc_basesoc_sdram_bankmachine0_cmd_payload_is_write <= 1'd1;
								soc_basesoc_sdram_bankmachine0_cmd_payload_we <= 1'd1;
							end else begin
								soc_basesoc_sdram_bankmachine0_req_rdata_valid <= soc_basesoc_sdram_bankmachine0_cmd_ready;
								soc_basesoc_sdram_bankmachine0_cmd_payload_is_read <= 1'd1;
							end
							soc_basesoc_sdram_bankmachine0_cmd_payload_cas <= 1'd1;
							if ((soc_basesoc_sdram_bankmachine0_cmd_ready & soc_basesoc_sdram_bankmachine0_auto_precharge)) begin
								vns_bankmachine0_next_state <= 2'd2;
							end
						end else begin
							vns_bankmachine0_next_state <= 1'd1;
						end
					end else begin
						vns_bankmachine0_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_valid = soc_basesoc_sdram_bankmachine1_req_valid;
assign soc_basesoc_sdram_bankmachine1_req_ready = soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_ready;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_we = soc_basesoc_sdram_bankmachine1_req_we;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_addr = soc_basesoc_sdram_bankmachine1_req_addr;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_sink_valid = soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_valid;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_ready = soc_basesoc_sdram_bankmachine1_cmd_buffer_sink_ready;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_sink_first = soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_first;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_sink_last = soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_last;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_sink_payload_we = soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_we;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_sink_payload_addr = soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_addr;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_source_ready = (soc_basesoc_sdram_bankmachine1_req_wdata_ready | soc_basesoc_sdram_bankmachine1_req_rdata_valid);
assign soc_basesoc_sdram_bankmachine1_req_lock = (soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_valid | soc_basesoc_sdram_bankmachine1_cmd_buffer_source_valid);
assign soc_basesoc_sdram_bankmachine1_row_hit = (soc_basesoc_sdram_bankmachine1_row == soc_basesoc_sdram_bankmachine1_cmd_buffer_source_payload_addr[20:7]);
assign soc_basesoc_sdram_bankmachine1_cmd_payload_ba = 1'd1;
always @(*) begin
	soc_basesoc_sdram_bankmachine1_cmd_payload_a <= 14'd0;
	if (soc_basesoc_sdram_bankmachine1_row_col_n_addr_sel) begin
		soc_basesoc_sdram_bankmachine1_cmd_payload_a <= soc_basesoc_sdram_bankmachine1_cmd_buffer_source_payload_addr[20:7];
	end else begin
		soc_basesoc_sdram_bankmachine1_cmd_payload_a <= ((soc_basesoc_sdram_bankmachine1_auto_precharge <<< 4'd10) | {soc_basesoc_sdram_bankmachine1_cmd_buffer_source_payload_addr[6:0], {3{1'd0}}});
	end
end
assign soc_basesoc_sdram_bankmachine1_twtpcon_valid = ((soc_basesoc_sdram_bankmachine1_cmd_valid & soc_basesoc_sdram_bankmachine1_cmd_ready) & soc_basesoc_sdram_bankmachine1_cmd_payload_is_write);
assign soc_basesoc_sdram_bankmachine1_trccon_valid = ((soc_basesoc_sdram_bankmachine1_cmd_valid & soc_basesoc_sdram_bankmachine1_cmd_ready) & soc_basesoc_sdram_bankmachine1_row_open);
assign soc_basesoc_sdram_bankmachine1_trascon_valid = ((soc_basesoc_sdram_bankmachine1_cmd_valid & soc_basesoc_sdram_bankmachine1_cmd_ready) & soc_basesoc_sdram_bankmachine1_row_open);
always @(*) begin
	soc_basesoc_sdram_bankmachine1_auto_precharge <= 1'd0;
	if ((soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_valid & soc_basesoc_sdram_bankmachine1_cmd_buffer_source_valid)) begin
		if ((soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_addr[20:7] != soc_basesoc_sdram_bankmachine1_cmd_buffer_source_payload_addr[20:7])) begin
			soc_basesoc_sdram_bankmachine1_auto_precharge <= (soc_basesoc_sdram_bankmachine1_row_close == 1'd0);
		end
	end
end
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_din = {soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_last, soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_first, soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_addr, soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we};
assign {soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_last, soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_first, soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_addr, soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we} = soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_dout;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_ready = soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we = soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_valid;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_first = soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_first;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_last = soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_last;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we = soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_we;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_addr = soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_addr;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_valid = soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_first = soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_first;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_last = soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_last;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_we = soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_addr = soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_addr;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_re = soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_ready;
always @(*) begin
	soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_replace) begin
		soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr <= (soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr <= soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_produce;
	end
end
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_w = soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_din;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_we = (soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we & (soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable | soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_replace));
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_do_read = (soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable & soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_re);
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_adr = soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_consume;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_dout = soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_dat_r;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable = (soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_level != 4'd8);
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable = (soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_level != 1'd0);
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_pipe_ce = (soc_basesoc_sdram_bankmachine1_cmd_buffer_source_ready | (~soc_basesoc_sdram_bankmachine1_cmd_buffer_valid_n));
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_sink_ready = soc_basesoc_sdram_bankmachine1_cmd_buffer_pipe_ce;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_source_valid = soc_basesoc_sdram_bankmachine1_cmd_buffer_valid_n;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_busy = (1'd0 | soc_basesoc_sdram_bankmachine1_cmd_buffer_valid_n);
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_source_first = soc_basesoc_sdram_bankmachine1_cmd_buffer_first_n;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_source_last = soc_basesoc_sdram_bankmachine1_cmd_buffer_last_n;
always @(*) begin
	soc_basesoc_sdram_bankmachine1_cmd_payload_is_write <= 1'd0;
	soc_basesoc_sdram_bankmachine1_req_wdata_ready <= 1'd0;
	soc_basesoc_sdram_bankmachine1_req_rdata_valid <= 1'd0;
	vns_bankmachine1_next_state <= 4'd0;
	soc_basesoc_sdram_bankmachine1_row_col_n_addr_sel <= 1'd0;
	soc_basesoc_sdram_bankmachine1_refresh_gnt <= 1'd0;
	soc_basesoc_sdram_bankmachine1_cmd_valid <= 1'd0;
	soc_basesoc_sdram_bankmachine1_cmd_payload_cas <= 1'd0;
	soc_basesoc_sdram_bankmachine1_cmd_payload_ras <= 1'd0;
	soc_basesoc_sdram_bankmachine1_cmd_payload_we <= 1'd0;
	soc_basesoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd0;
	soc_basesoc_sdram_bankmachine1_row_open <= 1'd0;
	soc_basesoc_sdram_bankmachine1_cmd_payload_is_read <= 1'd0;
	soc_basesoc_sdram_bankmachine1_row_close <= 1'd0;
	vns_bankmachine1_next_state <= vns_bankmachine1_state;
	case (vns_bankmachine1_state)
		1'd1: begin
			if ((soc_basesoc_sdram_bankmachine1_twtpcon_ready & soc_basesoc_sdram_bankmachine1_trascon_ready)) begin
				soc_basesoc_sdram_bankmachine1_cmd_valid <= 1'd1;
				if (soc_basesoc_sdram_bankmachine1_cmd_ready) begin
					vns_bankmachine1_next_state <= 3'd5;
				end
				soc_basesoc_sdram_bankmachine1_cmd_payload_ras <= 1'd1;
				soc_basesoc_sdram_bankmachine1_cmd_payload_we <= 1'd1;
				soc_basesoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			end
			soc_basesoc_sdram_bankmachine1_row_close <= 1'd1;
		end
		2'd2: begin
			if ((soc_basesoc_sdram_bankmachine1_twtpcon_ready & soc_basesoc_sdram_bankmachine1_trascon_ready)) begin
				vns_bankmachine1_next_state <= 3'd5;
			end
			soc_basesoc_sdram_bankmachine1_row_close <= 1'd1;
		end
		2'd3: begin
			if (soc_basesoc_sdram_bankmachine1_trccon_ready) begin
				soc_basesoc_sdram_bankmachine1_row_col_n_addr_sel <= 1'd1;
				soc_basesoc_sdram_bankmachine1_row_open <= 1'd1;
				soc_basesoc_sdram_bankmachine1_cmd_valid <= 1'd1;
				soc_basesoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
				if (soc_basesoc_sdram_bankmachine1_cmd_ready) begin
					vns_bankmachine1_next_state <= 3'd7;
				end
				soc_basesoc_sdram_bankmachine1_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (soc_basesoc_sdram_bankmachine1_twtpcon_ready) begin
				soc_basesoc_sdram_bankmachine1_refresh_gnt <= 1'd1;
			end
			soc_basesoc_sdram_bankmachine1_row_close <= 1'd1;
			soc_basesoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			if ((~soc_basesoc_sdram_bankmachine1_refresh_req)) begin
				vns_bankmachine1_next_state <= 1'd0;
			end
		end
		3'd5: begin
			vns_bankmachine1_next_state <= 3'd6;
		end
		3'd6: begin
			vns_bankmachine1_next_state <= 2'd3;
		end
		3'd7: begin
			vns_bankmachine1_next_state <= 4'd8;
		end
		4'd8: begin
			vns_bankmachine1_next_state <= 1'd0;
		end
		default: begin
			if (soc_basesoc_sdram_bankmachine1_refresh_req) begin
				vns_bankmachine1_next_state <= 3'd4;
			end else begin
				if (soc_basesoc_sdram_bankmachine1_cmd_buffer_source_valid) begin
					if (soc_basesoc_sdram_bankmachine1_row_opened) begin
						if (soc_basesoc_sdram_bankmachine1_row_hit) begin
							soc_basesoc_sdram_bankmachine1_cmd_valid <= 1'd1;
							if (soc_basesoc_sdram_bankmachine1_cmd_buffer_source_payload_we) begin
								soc_basesoc_sdram_bankmachine1_req_wdata_ready <= soc_basesoc_sdram_bankmachine1_cmd_ready;
								soc_basesoc_sdram_bankmachine1_cmd_payload_is_write <= 1'd1;
								soc_basesoc_sdram_bankmachine1_cmd_payload_we <= 1'd1;
							end else begin
								soc_basesoc_sdram_bankmachine1_req_rdata_valid <= soc_basesoc_sdram_bankmachine1_cmd_ready;
								soc_basesoc_sdram_bankmachine1_cmd_payload_is_read <= 1'd1;
							end
							soc_basesoc_sdram_bankmachine1_cmd_payload_cas <= 1'd1;
							if ((soc_basesoc_sdram_bankmachine1_cmd_ready & soc_basesoc_sdram_bankmachine1_auto_precharge)) begin
								vns_bankmachine1_next_state <= 2'd2;
							end
						end else begin
							vns_bankmachine1_next_state <= 1'd1;
						end
					end else begin
						vns_bankmachine1_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_valid = soc_basesoc_sdram_bankmachine2_req_valid;
assign soc_basesoc_sdram_bankmachine2_req_ready = soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_ready;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_we = soc_basesoc_sdram_bankmachine2_req_we;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_addr = soc_basesoc_sdram_bankmachine2_req_addr;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_sink_valid = soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_valid;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_ready = soc_basesoc_sdram_bankmachine2_cmd_buffer_sink_ready;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_sink_first = soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_first;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_sink_last = soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_last;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_sink_payload_we = soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_we;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_sink_payload_addr = soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_addr;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_source_ready = (soc_basesoc_sdram_bankmachine2_req_wdata_ready | soc_basesoc_sdram_bankmachine2_req_rdata_valid);
assign soc_basesoc_sdram_bankmachine2_req_lock = (soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_valid | soc_basesoc_sdram_bankmachine2_cmd_buffer_source_valid);
assign soc_basesoc_sdram_bankmachine2_row_hit = (soc_basesoc_sdram_bankmachine2_row == soc_basesoc_sdram_bankmachine2_cmd_buffer_source_payload_addr[20:7]);
assign soc_basesoc_sdram_bankmachine2_cmd_payload_ba = 2'd2;
always @(*) begin
	soc_basesoc_sdram_bankmachine2_cmd_payload_a <= 14'd0;
	if (soc_basesoc_sdram_bankmachine2_row_col_n_addr_sel) begin
		soc_basesoc_sdram_bankmachine2_cmd_payload_a <= soc_basesoc_sdram_bankmachine2_cmd_buffer_source_payload_addr[20:7];
	end else begin
		soc_basesoc_sdram_bankmachine2_cmd_payload_a <= ((soc_basesoc_sdram_bankmachine2_auto_precharge <<< 4'd10) | {soc_basesoc_sdram_bankmachine2_cmd_buffer_source_payload_addr[6:0], {3{1'd0}}});
	end
end
assign soc_basesoc_sdram_bankmachine2_twtpcon_valid = ((soc_basesoc_sdram_bankmachine2_cmd_valid & soc_basesoc_sdram_bankmachine2_cmd_ready) & soc_basesoc_sdram_bankmachine2_cmd_payload_is_write);
assign soc_basesoc_sdram_bankmachine2_trccon_valid = ((soc_basesoc_sdram_bankmachine2_cmd_valid & soc_basesoc_sdram_bankmachine2_cmd_ready) & soc_basesoc_sdram_bankmachine2_row_open);
assign soc_basesoc_sdram_bankmachine2_trascon_valid = ((soc_basesoc_sdram_bankmachine2_cmd_valid & soc_basesoc_sdram_bankmachine2_cmd_ready) & soc_basesoc_sdram_bankmachine2_row_open);
always @(*) begin
	soc_basesoc_sdram_bankmachine2_auto_precharge <= 1'd0;
	if ((soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_valid & soc_basesoc_sdram_bankmachine2_cmd_buffer_source_valid)) begin
		if ((soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_addr[20:7] != soc_basesoc_sdram_bankmachine2_cmd_buffer_source_payload_addr[20:7])) begin
			soc_basesoc_sdram_bankmachine2_auto_precharge <= (soc_basesoc_sdram_bankmachine2_row_close == 1'd0);
		end
	end
end
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_din = {soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_last, soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_first, soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_addr, soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we};
assign {soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_last, soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_first, soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_addr, soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we} = soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_dout;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_ready = soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we = soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_valid;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_first = soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_first;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_last = soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_last;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we = soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_we;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_addr = soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_addr;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_valid = soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_first = soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_first;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_last = soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_last;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_we = soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_addr = soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_addr;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_re = soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_ready;
always @(*) begin
	soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_replace) begin
		soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr <= (soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr <= soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_produce;
	end
end
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_w = soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_din;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_we = (soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we & (soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable | soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_replace));
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_do_read = (soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable & soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_re);
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_adr = soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_consume;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_dout = soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_dat_r;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable = (soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_level != 4'd8);
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable = (soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_level != 1'd0);
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_pipe_ce = (soc_basesoc_sdram_bankmachine2_cmd_buffer_source_ready | (~soc_basesoc_sdram_bankmachine2_cmd_buffer_valid_n));
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_sink_ready = soc_basesoc_sdram_bankmachine2_cmd_buffer_pipe_ce;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_source_valid = soc_basesoc_sdram_bankmachine2_cmd_buffer_valid_n;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_busy = (1'd0 | soc_basesoc_sdram_bankmachine2_cmd_buffer_valid_n);
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_source_first = soc_basesoc_sdram_bankmachine2_cmd_buffer_first_n;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_source_last = soc_basesoc_sdram_bankmachine2_cmd_buffer_last_n;
always @(*) begin
	soc_basesoc_sdram_bankmachine2_cmd_payload_cas <= 1'd0;
	soc_basesoc_sdram_bankmachine2_cmd_payload_ras <= 1'd0;
	vns_bankmachine2_next_state <= 4'd0;
	soc_basesoc_sdram_bankmachine2_cmd_payload_we <= 1'd0;
	soc_basesoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd0;
	soc_basesoc_sdram_bankmachine2_row_open <= 1'd0;
	soc_basesoc_sdram_bankmachine2_cmd_payload_is_read <= 1'd0;
	soc_basesoc_sdram_bankmachine2_row_close <= 1'd0;
	soc_basesoc_sdram_bankmachine2_cmd_payload_is_write <= 1'd0;
	soc_basesoc_sdram_bankmachine2_req_wdata_ready <= 1'd0;
	soc_basesoc_sdram_bankmachine2_req_rdata_valid <= 1'd0;
	soc_basesoc_sdram_bankmachine2_row_col_n_addr_sel <= 1'd0;
	soc_basesoc_sdram_bankmachine2_refresh_gnt <= 1'd0;
	soc_basesoc_sdram_bankmachine2_cmd_valid <= 1'd0;
	vns_bankmachine2_next_state <= vns_bankmachine2_state;
	case (vns_bankmachine2_state)
		1'd1: begin
			if ((soc_basesoc_sdram_bankmachine2_twtpcon_ready & soc_basesoc_sdram_bankmachine2_trascon_ready)) begin
				soc_basesoc_sdram_bankmachine2_cmd_valid <= 1'd1;
				if (soc_basesoc_sdram_bankmachine2_cmd_ready) begin
					vns_bankmachine2_next_state <= 3'd5;
				end
				soc_basesoc_sdram_bankmachine2_cmd_payload_ras <= 1'd1;
				soc_basesoc_sdram_bankmachine2_cmd_payload_we <= 1'd1;
				soc_basesoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			end
			soc_basesoc_sdram_bankmachine2_row_close <= 1'd1;
		end
		2'd2: begin
			if ((soc_basesoc_sdram_bankmachine2_twtpcon_ready & soc_basesoc_sdram_bankmachine2_trascon_ready)) begin
				vns_bankmachine2_next_state <= 3'd5;
			end
			soc_basesoc_sdram_bankmachine2_row_close <= 1'd1;
		end
		2'd3: begin
			if (soc_basesoc_sdram_bankmachine2_trccon_ready) begin
				soc_basesoc_sdram_bankmachine2_row_col_n_addr_sel <= 1'd1;
				soc_basesoc_sdram_bankmachine2_row_open <= 1'd1;
				soc_basesoc_sdram_bankmachine2_cmd_valid <= 1'd1;
				soc_basesoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
				if (soc_basesoc_sdram_bankmachine2_cmd_ready) begin
					vns_bankmachine2_next_state <= 3'd7;
				end
				soc_basesoc_sdram_bankmachine2_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (soc_basesoc_sdram_bankmachine2_twtpcon_ready) begin
				soc_basesoc_sdram_bankmachine2_refresh_gnt <= 1'd1;
			end
			soc_basesoc_sdram_bankmachine2_row_close <= 1'd1;
			soc_basesoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			if ((~soc_basesoc_sdram_bankmachine2_refresh_req)) begin
				vns_bankmachine2_next_state <= 1'd0;
			end
		end
		3'd5: begin
			vns_bankmachine2_next_state <= 3'd6;
		end
		3'd6: begin
			vns_bankmachine2_next_state <= 2'd3;
		end
		3'd7: begin
			vns_bankmachine2_next_state <= 4'd8;
		end
		4'd8: begin
			vns_bankmachine2_next_state <= 1'd0;
		end
		default: begin
			if (soc_basesoc_sdram_bankmachine2_refresh_req) begin
				vns_bankmachine2_next_state <= 3'd4;
			end else begin
				if (soc_basesoc_sdram_bankmachine2_cmd_buffer_source_valid) begin
					if (soc_basesoc_sdram_bankmachine2_row_opened) begin
						if (soc_basesoc_sdram_bankmachine2_row_hit) begin
							soc_basesoc_sdram_bankmachine2_cmd_valid <= 1'd1;
							if (soc_basesoc_sdram_bankmachine2_cmd_buffer_source_payload_we) begin
								soc_basesoc_sdram_bankmachine2_req_wdata_ready <= soc_basesoc_sdram_bankmachine2_cmd_ready;
								soc_basesoc_sdram_bankmachine2_cmd_payload_is_write <= 1'd1;
								soc_basesoc_sdram_bankmachine2_cmd_payload_we <= 1'd1;
							end else begin
								soc_basesoc_sdram_bankmachine2_req_rdata_valid <= soc_basesoc_sdram_bankmachine2_cmd_ready;
								soc_basesoc_sdram_bankmachine2_cmd_payload_is_read <= 1'd1;
							end
							soc_basesoc_sdram_bankmachine2_cmd_payload_cas <= 1'd1;
							if ((soc_basesoc_sdram_bankmachine2_cmd_ready & soc_basesoc_sdram_bankmachine2_auto_precharge)) begin
								vns_bankmachine2_next_state <= 2'd2;
							end
						end else begin
							vns_bankmachine2_next_state <= 1'd1;
						end
					end else begin
						vns_bankmachine2_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_valid = soc_basesoc_sdram_bankmachine3_req_valid;
assign soc_basesoc_sdram_bankmachine3_req_ready = soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_ready;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_we = soc_basesoc_sdram_bankmachine3_req_we;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_addr = soc_basesoc_sdram_bankmachine3_req_addr;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_sink_valid = soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_valid;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_ready = soc_basesoc_sdram_bankmachine3_cmd_buffer_sink_ready;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_sink_first = soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_first;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_sink_last = soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_last;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_sink_payload_we = soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_we;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_sink_payload_addr = soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_addr;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_source_ready = (soc_basesoc_sdram_bankmachine3_req_wdata_ready | soc_basesoc_sdram_bankmachine3_req_rdata_valid);
assign soc_basesoc_sdram_bankmachine3_req_lock = (soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_valid | soc_basesoc_sdram_bankmachine3_cmd_buffer_source_valid);
assign soc_basesoc_sdram_bankmachine3_row_hit = (soc_basesoc_sdram_bankmachine3_row == soc_basesoc_sdram_bankmachine3_cmd_buffer_source_payload_addr[20:7]);
assign soc_basesoc_sdram_bankmachine3_cmd_payload_ba = 2'd3;
always @(*) begin
	soc_basesoc_sdram_bankmachine3_cmd_payload_a <= 14'd0;
	if (soc_basesoc_sdram_bankmachine3_row_col_n_addr_sel) begin
		soc_basesoc_sdram_bankmachine3_cmd_payload_a <= soc_basesoc_sdram_bankmachine3_cmd_buffer_source_payload_addr[20:7];
	end else begin
		soc_basesoc_sdram_bankmachine3_cmd_payload_a <= ((soc_basesoc_sdram_bankmachine3_auto_precharge <<< 4'd10) | {soc_basesoc_sdram_bankmachine3_cmd_buffer_source_payload_addr[6:0], {3{1'd0}}});
	end
end
assign soc_basesoc_sdram_bankmachine3_twtpcon_valid = ((soc_basesoc_sdram_bankmachine3_cmd_valid & soc_basesoc_sdram_bankmachine3_cmd_ready) & soc_basesoc_sdram_bankmachine3_cmd_payload_is_write);
assign soc_basesoc_sdram_bankmachine3_trccon_valid = ((soc_basesoc_sdram_bankmachine3_cmd_valid & soc_basesoc_sdram_bankmachine3_cmd_ready) & soc_basesoc_sdram_bankmachine3_row_open);
assign soc_basesoc_sdram_bankmachine3_trascon_valid = ((soc_basesoc_sdram_bankmachine3_cmd_valid & soc_basesoc_sdram_bankmachine3_cmd_ready) & soc_basesoc_sdram_bankmachine3_row_open);
always @(*) begin
	soc_basesoc_sdram_bankmachine3_auto_precharge <= 1'd0;
	if ((soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_valid & soc_basesoc_sdram_bankmachine3_cmd_buffer_source_valid)) begin
		if ((soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_addr[20:7] != soc_basesoc_sdram_bankmachine3_cmd_buffer_source_payload_addr[20:7])) begin
			soc_basesoc_sdram_bankmachine3_auto_precharge <= (soc_basesoc_sdram_bankmachine3_row_close == 1'd0);
		end
	end
end
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_din = {soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_last, soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_first, soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_addr, soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we};
assign {soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_last, soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_first, soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_addr, soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we} = soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_dout;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_ready = soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we = soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_valid;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_first = soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_first;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_last = soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_last;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we = soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_we;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_addr = soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_addr;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_valid = soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_first = soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_first;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_last = soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_last;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_we = soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_addr = soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_addr;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_re = soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_ready;
always @(*) begin
	soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_replace) begin
		soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr <= (soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr <= soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_produce;
	end
end
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_w = soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_din;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_we = (soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we & (soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable | soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_replace));
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_do_read = (soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable & soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_re);
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_adr = soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_consume;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_dout = soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_dat_r;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable = (soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_level != 4'd8);
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable = (soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_level != 1'd0);
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_pipe_ce = (soc_basesoc_sdram_bankmachine3_cmd_buffer_source_ready | (~soc_basesoc_sdram_bankmachine3_cmd_buffer_valid_n));
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_sink_ready = soc_basesoc_sdram_bankmachine3_cmd_buffer_pipe_ce;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_source_valid = soc_basesoc_sdram_bankmachine3_cmd_buffer_valid_n;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_busy = (1'd0 | soc_basesoc_sdram_bankmachine3_cmd_buffer_valid_n);
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_source_first = soc_basesoc_sdram_bankmachine3_cmd_buffer_first_n;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_source_last = soc_basesoc_sdram_bankmachine3_cmd_buffer_last_n;
always @(*) begin
	soc_basesoc_sdram_bankmachine3_refresh_gnt <= 1'd0;
	soc_basesoc_sdram_bankmachine3_cmd_valid <= 1'd0;
	vns_bankmachine3_next_state <= 4'd0;
	soc_basesoc_sdram_bankmachine3_cmd_payload_cas <= 1'd0;
	soc_basesoc_sdram_bankmachine3_cmd_payload_ras <= 1'd0;
	soc_basesoc_sdram_bankmachine3_cmd_payload_we <= 1'd0;
	soc_basesoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd0;
	soc_basesoc_sdram_bankmachine3_row_open <= 1'd0;
	soc_basesoc_sdram_bankmachine3_cmd_payload_is_read <= 1'd0;
	soc_basesoc_sdram_bankmachine3_row_close <= 1'd0;
	soc_basesoc_sdram_bankmachine3_cmd_payload_is_write <= 1'd0;
	soc_basesoc_sdram_bankmachine3_req_wdata_ready <= 1'd0;
	soc_basesoc_sdram_bankmachine3_req_rdata_valid <= 1'd0;
	soc_basesoc_sdram_bankmachine3_row_col_n_addr_sel <= 1'd0;
	vns_bankmachine3_next_state <= vns_bankmachine3_state;
	case (vns_bankmachine3_state)
		1'd1: begin
			if ((soc_basesoc_sdram_bankmachine3_twtpcon_ready & soc_basesoc_sdram_bankmachine3_trascon_ready)) begin
				soc_basesoc_sdram_bankmachine3_cmd_valid <= 1'd1;
				if (soc_basesoc_sdram_bankmachine3_cmd_ready) begin
					vns_bankmachine3_next_state <= 3'd5;
				end
				soc_basesoc_sdram_bankmachine3_cmd_payload_ras <= 1'd1;
				soc_basesoc_sdram_bankmachine3_cmd_payload_we <= 1'd1;
				soc_basesoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			end
			soc_basesoc_sdram_bankmachine3_row_close <= 1'd1;
		end
		2'd2: begin
			if ((soc_basesoc_sdram_bankmachine3_twtpcon_ready & soc_basesoc_sdram_bankmachine3_trascon_ready)) begin
				vns_bankmachine3_next_state <= 3'd5;
			end
			soc_basesoc_sdram_bankmachine3_row_close <= 1'd1;
		end
		2'd3: begin
			if (soc_basesoc_sdram_bankmachine3_trccon_ready) begin
				soc_basesoc_sdram_bankmachine3_row_col_n_addr_sel <= 1'd1;
				soc_basesoc_sdram_bankmachine3_row_open <= 1'd1;
				soc_basesoc_sdram_bankmachine3_cmd_valid <= 1'd1;
				soc_basesoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
				if (soc_basesoc_sdram_bankmachine3_cmd_ready) begin
					vns_bankmachine3_next_state <= 3'd7;
				end
				soc_basesoc_sdram_bankmachine3_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (soc_basesoc_sdram_bankmachine3_twtpcon_ready) begin
				soc_basesoc_sdram_bankmachine3_refresh_gnt <= 1'd1;
			end
			soc_basesoc_sdram_bankmachine3_row_close <= 1'd1;
			soc_basesoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			if ((~soc_basesoc_sdram_bankmachine3_refresh_req)) begin
				vns_bankmachine3_next_state <= 1'd0;
			end
		end
		3'd5: begin
			vns_bankmachine3_next_state <= 3'd6;
		end
		3'd6: begin
			vns_bankmachine3_next_state <= 2'd3;
		end
		3'd7: begin
			vns_bankmachine3_next_state <= 4'd8;
		end
		4'd8: begin
			vns_bankmachine3_next_state <= 1'd0;
		end
		default: begin
			if (soc_basesoc_sdram_bankmachine3_refresh_req) begin
				vns_bankmachine3_next_state <= 3'd4;
			end else begin
				if (soc_basesoc_sdram_bankmachine3_cmd_buffer_source_valid) begin
					if (soc_basesoc_sdram_bankmachine3_row_opened) begin
						if (soc_basesoc_sdram_bankmachine3_row_hit) begin
							soc_basesoc_sdram_bankmachine3_cmd_valid <= 1'd1;
							if (soc_basesoc_sdram_bankmachine3_cmd_buffer_source_payload_we) begin
								soc_basesoc_sdram_bankmachine3_req_wdata_ready <= soc_basesoc_sdram_bankmachine3_cmd_ready;
								soc_basesoc_sdram_bankmachine3_cmd_payload_is_write <= 1'd1;
								soc_basesoc_sdram_bankmachine3_cmd_payload_we <= 1'd1;
							end else begin
								soc_basesoc_sdram_bankmachine3_req_rdata_valid <= soc_basesoc_sdram_bankmachine3_cmd_ready;
								soc_basesoc_sdram_bankmachine3_cmd_payload_is_read <= 1'd1;
							end
							soc_basesoc_sdram_bankmachine3_cmd_payload_cas <= 1'd1;
							if ((soc_basesoc_sdram_bankmachine3_cmd_ready & soc_basesoc_sdram_bankmachine3_auto_precharge)) begin
								vns_bankmachine3_next_state <= 2'd2;
							end
						end else begin
							vns_bankmachine3_next_state <= 1'd1;
						end
					end else begin
						vns_bankmachine3_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_valid = soc_basesoc_sdram_bankmachine4_req_valid;
assign soc_basesoc_sdram_bankmachine4_req_ready = soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_ready;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_we = soc_basesoc_sdram_bankmachine4_req_we;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_addr = soc_basesoc_sdram_bankmachine4_req_addr;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_sink_valid = soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_source_valid;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_source_ready = soc_basesoc_sdram_bankmachine4_cmd_buffer_sink_ready;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_sink_first = soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_source_first;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_sink_last = soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_source_last;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_sink_payload_we = soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_we;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_sink_payload_addr = soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_addr;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_source_ready = (soc_basesoc_sdram_bankmachine4_req_wdata_ready | soc_basesoc_sdram_bankmachine4_req_rdata_valid);
assign soc_basesoc_sdram_bankmachine4_req_lock = (soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_source_valid | soc_basesoc_sdram_bankmachine4_cmd_buffer_source_valid);
assign soc_basesoc_sdram_bankmachine4_row_hit = (soc_basesoc_sdram_bankmachine4_row == soc_basesoc_sdram_bankmachine4_cmd_buffer_source_payload_addr[20:7]);
assign soc_basesoc_sdram_bankmachine4_cmd_payload_ba = 3'd4;
always @(*) begin
	soc_basesoc_sdram_bankmachine4_cmd_payload_a <= 14'd0;
	if (soc_basesoc_sdram_bankmachine4_row_col_n_addr_sel) begin
		soc_basesoc_sdram_bankmachine4_cmd_payload_a <= soc_basesoc_sdram_bankmachine4_cmd_buffer_source_payload_addr[20:7];
	end else begin
		soc_basesoc_sdram_bankmachine4_cmd_payload_a <= ((soc_basesoc_sdram_bankmachine4_auto_precharge <<< 4'd10) | {soc_basesoc_sdram_bankmachine4_cmd_buffer_source_payload_addr[6:0], {3{1'd0}}});
	end
end
assign soc_basesoc_sdram_bankmachine4_twtpcon_valid = ((soc_basesoc_sdram_bankmachine4_cmd_valid & soc_basesoc_sdram_bankmachine4_cmd_ready) & soc_basesoc_sdram_bankmachine4_cmd_payload_is_write);
assign soc_basesoc_sdram_bankmachine4_trccon_valid = ((soc_basesoc_sdram_bankmachine4_cmd_valid & soc_basesoc_sdram_bankmachine4_cmd_ready) & soc_basesoc_sdram_bankmachine4_row_open);
assign soc_basesoc_sdram_bankmachine4_trascon_valid = ((soc_basesoc_sdram_bankmachine4_cmd_valid & soc_basesoc_sdram_bankmachine4_cmd_ready) & soc_basesoc_sdram_bankmachine4_row_open);
always @(*) begin
	soc_basesoc_sdram_bankmachine4_auto_precharge <= 1'd0;
	if ((soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_source_valid & soc_basesoc_sdram_bankmachine4_cmd_buffer_source_valid)) begin
		if ((soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_addr[20:7] != soc_basesoc_sdram_bankmachine4_cmd_buffer_source_payload_addr[20:7])) begin
			soc_basesoc_sdram_bankmachine4_auto_precharge <= (soc_basesoc_sdram_bankmachine4_row_close == 1'd0);
		end
	end
end
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_din = {soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_last, soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_first, soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_addr, soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_we};
assign {soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_last, soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_first, soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_addr, soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_we} = soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_dout;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_ready = soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_we = soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_valid;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_first = soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_first;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_last = soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_last;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_we = soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_we;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_addr = soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_addr;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_source_valid = soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_source_first = soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_first;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_source_last = soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_last;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_we = soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_we;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_addr = soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_addr;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_re = soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_source_ready;
always @(*) begin
	soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_replace) begin
		soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr <= (soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr <= soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_produce;
	end
end
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_dat_w = soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_din;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_we = (soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_we & (soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable | soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_replace));
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_do_read = (soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable & soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_re);
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_rdport_adr = soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_consume;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_dout = soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_rdport_dat_r;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable = (soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_level != 4'd8);
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable = (soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_level != 1'd0);
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_pipe_ce = (soc_basesoc_sdram_bankmachine4_cmd_buffer_source_ready | (~soc_basesoc_sdram_bankmachine4_cmd_buffer_valid_n));
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_sink_ready = soc_basesoc_sdram_bankmachine4_cmd_buffer_pipe_ce;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_source_valid = soc_basesoc_sdram_bankmachine4_cmd_buffer_valid_n;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_busy = (1'd0 | soc_basesoc_sdram_bankmachine4_cmd_buffer_valid_n);
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_source_first = soc_basesoc_sdram_bankmachine4_cmd_buffer_first_n;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_source_last = soc_basesoc_sdram_bankmachine4_cmd_buffer_last_n;
always @(*) begin
	soc_basesoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd0;
	soc_basesoc_sdram_bankmachine4_row_open <= 1'd0;
	soc_basesoc_sdram_bankmachine4_cmd_payload_is_read <= 1'd0;
	soc_basesoc_sdram_bankmachine4_row_close <= 1'd0;
	soc_basesoc_sdram_bankmachine4_cmd_payload_is_write <= 1'd0;
	vns_bankmachine4_next_state <= 4'd0;
	soc_basesoc_sdram_bankmachine4_req_wdata_ready <= 1'd0;
	soc_basesoc_sdram_bankmachine4_req_rdata_valid <= 1'd0;
	soc_basesoc_sdram_bankmachine4_row_col_n_addr_sel <= 1'd0;
	soc_basesoc_sdram_bankmachine4_refresh_gnt <= 1'd0;
	soc_basesoc_sdram_bankmachine4_cmd_valid <= 1'd0;
	soc_basesoc_sdram_bankmachine4_cmd_payload_cas <= 1'd0;
	soc_basesoc_sdram_bankmachine4_cmd_payload_ras <= 1'd0;
	soc_basesoc_sdram_bankmachine4_cmd_payload_we <= 1'd0;
	vns_bankmachine4_next_state <= vns_bankmachine4_state;
	case (vns_bankmachine4_state)
		1'd1: begin
			if ((soc_basesoc_sdram_bankmachine4_twtpcon_ready & soc_basesoc_sdram_bankmachine4_trascon_ready)) begin
				soc_basesoc_sdram_bankmachine4_cmd_valid <= 1'd1;
				if (soc_basesoc_sdram_bankmachine4_cmd_ready) begin
					vns_bankmachine4_next_state <= 3'd5;
				end
				soc_basesoc_sdram_bankmachine4_cmd_payload_ras <= 1'd1;
				soc_basesoc_sdram_bankmachine4_cmd_payload_we <= 1'd1;
				soc_basesoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			end
			soc_basesoc_sdram_bankmachine4_row_close <= 1'd1;
		end
		2'd2: begin
			if ((soc_basesoc_sdram_bankmachine4_twtpcon_ready & soc_basesoc_sdram_bankmachine4_trascon_ready)) begin
				vns_bankmachine4_next_state <= 3'd5;
			end
			soc_basesoc_sdram_bankmachine4_row_close <= 1'd1;
		end
		2'd3: begin
			if (soc_basesoc_sdram_bankmachine4_trccon_ready) begin
				soc_basesoc_sdram_bankmachine4_row_col_n_addr_sel <= 1'd1;
				soc_basesoc_sdram_bankmachine4_row_open <= 1'd1;
				soc_basesoc_sdram_bankmachine4_cmd_valid <= 1'd1;
				soc_basesoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd1;
				if (soc_basesoc_sdram_bankmachine4_cmd_ready) begin
					vns_bankmachine4_next_state <= 3'd7;
				end
				soc_basesoc_sdram_bankmachine4_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (soc_basesoc_sdram_bankmachine4_twtpcon_ready) begin
				soc_basesoc_sdram_bankmachine4_refresh_gnt <= 1'd1;
			end
			soc_basesoc_sdram_bankmachine4_row_close <= 1'd1;
			soc_basesoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			if ((~soc_basesoc_sdram_bankmachine4_refresh_req)) begin
				vns_bankmachine4_next_state <= 1'd0;
			end
		end
		3'd5: begin
			vns_bankmachine4_next_state <= 3'd6;
		end
		3'd6: begin
			vns_bankmachine4_next_state <= 2'd3;
		end
		3'd7: begin
			vns_bankmachine4_next_state <= 4'd8;
		end
		4'd8: begin
			vns_bankmachine4_next_state <= 1'd0;
		end
		default: begin
			if (soc_basesoc_sdram_bankmachine4_refresh_req) begin
				vns_bankmachine4_next_state <= 3'd4;
			end else begin
				if (soc_basesoc_sdram_bankmachine4_cmd_buffer_source_valid) begin
					if (soc_basesoc_sdram_bankmachine4_row_opened) begin
						if (soc_basesoc_sdram_bankmachine4_row_hit) begin
							soc_basesoc_sdram_bankmachine4_cmd_valid <= 1'd1;
							if (soc_basesoc_sdram_bankmachine4_cmd_buffer_source_payload_we) begin
								soc_basesoc_sdram_bankmachine4_req_wdata_ready <= soc_basesoc_sdram_bankmachine4_cmd_ready;
								soc_basesoc_sdram_bankmachine4_cmd_payload_is_write <= 1'd1;
								soc_basesoc_sdram_bankmachine4_cmd_payload_we <= 1'd1;
							end else begin
								soc_basesoc_sdram_bankmachine4_req_rdata_valid <= soc_basesoc_sdram_bankmachine4_cmd_ready;
								soc_basesoc_sdram_bankmachine4_cmd_payload_is_read <= 1'd1;
							end
							soc_basesoc_sdram_bankmachine4_cmd_payload_cas <= 1'd1;
							if ((soc_basesoc_sdram_bankmachine4_cmd_ready & soc_basesoc_sdram_bankmachine4_auto_precharge)) begin
								vns_bankmachine4_next_state <= 2'd2;
							end
						end else begin
							vns_bankmachine4_next_state <= 1'd1;
						end
					end else begin
						vns_bankmachine4_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_valid = soc_basesoc_sdram_bankmachine5_req_valid;
assign soc_basesoc_sdram_bankmachine5_req_ready = soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_ready;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_we = soc_basesoc_sdram_bankmachine5_req_we;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_addr = soc_basesoc_sdram_bankmachine5_req_addr;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_sink_valid = soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_source_valid;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_source_ready = soc_basesoc_sdram_bankmachine5_cmd_buffer_sink_ready;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_sink_first = soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_source_first;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_sink_last = soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_source_last;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_sink_payload_we = soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_we;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_sink_payload_addr = soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_addr;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_source_ready = (soc_basesoc_sdram_bankmachine5_req_wdata_ready | soc_basesoc_sdram_bankmachine5_req_rdata_valid);
assign soc_basesoc_sdram_bankmachine5_req_lock = (soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_source_valid | soc_basesoc_sdram_bankmachine5_cmd_buffer_source_valid);
assign soc_basesoc_sdram_bankmachine5_row_hit = (soc_basesoc_sdram_bankmachine5_row == soc_basesoc_sdram_bankmachine5_cmd_buffer_source_payload_addr[20:7]);
assign soc_basesoc_sdram_bankmachine5_cmd_payload_ba = 3'd5;
always @(*) begin
	soc_basesoc_sdram_bankmachine5_cmd_payload_a <= 14'd0;
	if (soc_basesoc_sdram_bankmachine5_row_col_n_addr_sel) begin
		soc_basesoc_sdram_bankmachine5_cmd_payload_a <= soc_basesoc_sdram_bankmachine5_cmd_buffer_source_payload_addr[20:7];
	end else begin
		soc_basesoc_sdram_bankmachine5_cmd_payload_a <= ((soc_basesoc_sdram_bankmachine5_auto_precharge <<< 4'd10) | {soc_basesoc_sdram_bankmachine5_cmd_buffer_source_payload_addr[6:0], {3{1'd0}}});
	end
end
assign soc_basesoc_sdram_bankmachine5_twtpcon_valid = ((soc_basesoc_sdram_bankmachine5_cmd_valid & soc_basesoc_sdram_bankmachine5_cmd_ready) & soc_basesoc_sdram_bankmachine5_cmd_payload_is_write);
assign soc_basesoc_sdram_bankmachine5_trccon_valid = ((soc_basesoc_sdram_bankmachine5_cmd_valid & soc_basesoc_sdram_bankmachine5_cmd_ready) & soc_basesoc_sdram_bankmachine5_row_open);
assign soc_basesoc_sdram_bankmachine5_trascon_valid = ((soc_basesoc_sdram_bankmachine5_cmd_valid & soc_basesoc_sdram_bankmachine5_cmd_ready) & soc_basesoc_sdram_bankmachine5_row_open);
always @(*) begin
	soc_basesoc_sdram_bankmachine5_auto_precharge <= 1'd0;
	if ((soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_source_valid & soc_basesoc_sdram_bankmachine5_cmd_buffer_source_valid)) begin
		if ((soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_addr[20:7] != soc_basesoc_sdram_bankmachine5_cmd_buffer_source_payload_addr[20:7])) begin
			soc_basesoc_sdram_bankmachine5_auto_precharge <= (soc_basesoc_sdram_bankmachine5_row_close == 1'd0);
		end
	end
end
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_din = {soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_last, soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_first, soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_addr, soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_we};
assign {soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_last, soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_first, soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_addr, soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_we} = soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_dout;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_ready = soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_we = soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_valid;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_first = soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_first;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_last = soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_last;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_we = soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_we;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_addr = soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_addr;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_source_valid = soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_source_first = soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_first;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_source_last = soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_last;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_we = soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_we;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_addr = soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_addr;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_re = soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_source_ready;
always @(*) begin
	soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_replace) begin
		soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr <= (soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr <= soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_produce;
	end
end
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_dat_w = soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_din;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_we = (soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_we & (soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable | soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_replace));
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_do_read = (soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable & soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_re);
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_rdport_adr = soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_consume;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_dout = soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_rdport_dat_r;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable = (soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_level != 4'd8);
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable = (soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_level != 1'd0);
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_pipe_ce = (soc_basesoc_sdram_bankmachine5_cmd_buffer_source_ready | (~soc_basesoc_sdram_bankmachine5_cmd_buffer_valid_n));
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_sink_ready = soc_basesoc_sdram_bankmachine5_cmd_buffer_pipe_ce;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_source_valid = soc_basesoc_sdram_bankmachine5_cmd_buffer_valid_n;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_busy = (1'd0 | soc_basesoc_sdram_bankmachine5_cmd_buffer_valid_n);
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_source_first = soc_basesoc_sdram_bankmachine5_cmd_buffer_first_n;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_source_last = soc_basesoc_sdram_bankmachine5_cmd_buffer_last_n;
always @(*) begin
	vns_bankmachine5_next_state <= 4'd0;
	soc_basesoc_sdram_bankmachine5_cmd_payload_cas <= 1'd0;
	soc_basesoc_sdram_bankmachine5_cmd_payload_ras <= 1'd0;
	soc_basesoc_sdram_bankmachine5_cmd_payload_we <= 1'd0;
	soc_basesoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd0;
	soc_basesoc_sdram_bankmachine5_row_open <= 1'd0;
	soc_basesoc_sdram_bankmachine5_cmd_payload_is_read <= 1'd0;
	soc_basesoc_sdram_bankmachine5_row_close <= 1'd0;
	soc_basesoc_sdram_bankmachine5_cmd_payload_is_write <= 1'd0;
	soc_basesoc_sdram_bankmachine5_req_wdata_ready <= 1'd0;
	soc_basesoc_sdram_bankmachine5_req_rdata_valid <= 1'd0;
	soc_basesoc_sdram_bankmachine5_row_col_n_addr_sel <= 1'd0;
	soc_basesoc_sdram_bankmachine5_refresh_gnt <= 1'd0;
	soc_basesoc_sdram_bankmachine5_cmd_valid <= 1'd0;
	vns_bankmachine5_next_state <= vns_bankmachine5_state;
	case (vns_bankmachine5_state)
		1'd1: begin
			if ((soc_basesoc_sdram_bankmachine5_twtpcon_ready & soc_basesoc_sdram_bankmachine5_trascon_ready)) begin
				soc_basesoc_sdram_bankmachine5_cmd_valid <= 1'd1;
				if (soc_basesoc_sdram_bankmachine5_cmd_ready) begin
					vns_bankmachine5_next_state <= 3'd5;
				end
				soc_basesoc_sdram_bankmachine5_cmd_payload_ras <= 1'd1;
				soc_basesoc_sdram_bankmachine5_cmd_payload_we <= 1'd1;
				soc_basesoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			end
			soc_basesoc_sdram_bankmachine5_row_close <= 1'd1;
		end
		2'd2: begin
			if ((soc_basesoc_sdram_bankmachine5_twtpcon_ready & soc_basesoc_sdram_bankmachine5_trascon_ready)) begin
				vns_bankmachine5_next_state <= 3'd5;
			end
			soc_basesoc_sdram_bankmachine5_row_close <= 1'd1;
		end
		2'd3: begin
			if (soc_basesoc_sdram_bankmachine5_trccon_ready) begin
				soc_basesoc_sdram_bankmachine5_row_col_n_addr_sel <= 1'd1;
				soc_basesoc_sdram_bankmachine5_row_open <= 1'd1;
				soc_basesoc_sdram_bankmachine5_cmd_valid <= 1'd1;
				soc_basesoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd1;
				if (soc_basesoc_sdram_bankmachine5_cmd_ready) begin
					vns_bankmachine5_next_state <= 3'd7;
				end
				soc_basesoc_sdram_bankmachine5_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (soc_basesoc_sdram_bankmachine5_twtpcon_ready) begin
				soc_basesoc_sdram_bankmachine5_refresh_gnt <= 1'd1;
			end
			soc_basesoc_sdram_bankmachine5_row_close <= 1'd1;
			soc_basesoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			if ((~soc_basesoc_sdram_bankmachine5_refresh_req)) begin
				vns_bankmachine5_next_state <= 1'd0;
			end
		end
		3'd5: begin
			vns_bankmachine5_next_state <= 3'd6;
		end
		3'd6: begin
			vns_bankmachine5_next_state <= 2'd3;
		end
		3'd7: begin
			vns_bankmachine5_next_state <= 4'd8;
		end
		4'd8: begin
			vns_bankmachine5_next_state <= 1'd0;
		end
		default: begin
			if (soc_basesoc_sdram_bankmachine5_refresh_req) begin
				vns_bankmachine5_next_state <= 3'd4;
			end else begin
				if (soc_basesoc_sdram_bankmachine5_cmd_buffer_source_valid) begin
					if (soc_basesoc_sdram_bankmachine5_row_opened) begin
						if (soc_basesoc_sdram_bankmachine5_row_hit) begin
							soc_basesoc_sdram_bankmachine5_cmd_valid <= 1'd1;
							if (soc_basesoc_sdram_bankmachine5_cmd_buffer_source_payload_we) begin
								soc_basesoc_sdram_bankmachine5_req_wdata_ready <= soc_basesoc_sdram_bankmachine5_cmd_ready;
								soc_basesoc_sdram_bankmachine5_cmd_payload_is_write <= 1'd1;
								soc_basesoc_sdram_bankmachine5_cmd_payload_we <= 1'd1;
							end else begin
								soc_basesoc_sdram_bankmachine5_req_rdata_valid <= soc_basesoc_sdram_bankmachine5_cmd_ready;
								soc_basesoc_sdram_bankmachine5_cmd_payload_is_read <= 1'd1;
							end
							soc_basesoc_sdram_bankmachine5_cmd_payload_cas <= 1'd1;
							if ((soc_basesoc_sdram_bankmachine5_cmd_ready & soc_basesoc_sdram_bankmachine5_auto_precharge)) begin
								vns_bankmachine5_next_state <= 2'd2;
							end
						end else begin
							vns_bankmachine5_next_state <= 1'd1;
						end
					end else begin
						vns_bankmachine5_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_valid = soc_basesoc_sdram_bankmachine6_req_valid;
assign soc_basesoc_sdram_bankmachine6_req_ready = soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_ready;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_we = soc_basesoc_sdram_bankmachine6_req_we;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_addr = soc_basesoc_sdram_bankmachine6_req_addr;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_sink_valid = soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_source_valid;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_source_ready = soc_basesoc_sdram_bankmachine6_cmd_buffer_sink_ready;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_sink_first = soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_source_first;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_sink_last = soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_source_last;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_sink_payload_we = soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_we;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_sink_payload_addr = soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_addr;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_source_ready = (soc_basesoc_sdram_bankmachine6_req_wdata_ready | soc_basesoc_sdram_bankmachine6_req_rdata_valid);
assign soc_basesoc_sdram_bankmachine6_req_lock = (soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_source_valid | soc_basesoc_sdram_bankmachine6_cmd_buffer_source_valid);
assign soc_basesoc_sdram_bankmachine6_row_hit = (soc_basesoc_sdram_bankmachine6_row == soc_basesoc_sdram_bankmachine6_cmd_buffer_source_payload_addr[20:7]);
assign soc_basesoc_sdram_bankmachine6_cmd_payload_ba = 3'd6;
always @(*) begin
	soc_basesoc_sdram_bankmachine6_cmd_payload_a <= 14'd0;
	if (soc_basesoc_sdram_bankmachine6_row_col_n_addr_sel) begin
		soc_basesoc_sdram_bankmachine6_cmd_payload_a <= soc_basesoc_sdram_bankmachine6_cmd_buffer_source_payload_addr[20:7];
	end else begin
		soc_basesoc_sdram_bankmachine6_cmd_payload_a <= ((soc_basesoc_sdram_bankmachine6_auto_precharge <<< 4'd10) | {soc_basesoc_sdram_bankmachine6_cmd_buffer_source_payload_addr[6:0], {3{1'd0}}});
	end
end
assign soc_basesoc_sdram_bankmachine6_twtpcon_valid = ((soc_basesoc_sdram_bankmachine6_cmd_valid & soc_basesoc_sdram_bankmachine6_cmd_ready) & soc_basesoc_sdram_bankmachine6_cmd_payload_is_write);
assign soc_basesoc_sdram_bankmachine6_trccon_valid = ((soc_basesoc_sdram_bankmachine6_cmd_valid & soc_basesoc_sdram_bankmachine6_cmd_ready) & soc_basesoc_sdram_bankmachine6_row_open);
assign soc_basesoc_sdram_bankmachine6_trascon_valid = ((soc_basesoc_sdram_bankmachine6_cmd_valid & soc_basesoc_sdram_bankmachine6_cmd_ready) & soc_basesoc_sdram_bankmachine6_row_open);
always @(*) begin
	soc_basesoc_sdram_bankmachine6_auto_precharge <= 1'd0;
	if ((soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_source_valid & soc_basesoc_sdram_bankmachine6_cmd_buffer_source_valid)) begin
		if ((soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_addr[20:7] != soc_basesoc_sdram_bankmachine6_cmd_buffer_source_payload_addr[20:7])) begin
			soc_basesoc_sdram_bankmachine6_auto_precharge <= (soc_basesoc_sdram_bankmachine6_row_close == 1'd0);
		end
	end
end
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_din = {soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_last, soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_first, soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_addr, soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_we};
assign {soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_last, soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_first, soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_addr, soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_we} = soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_dout;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_ready = soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_we = soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_valid;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_first = soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_first;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_last = soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_last;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_we = soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_we;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_addr = soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_addr;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_source_valid = soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_source_first = soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_first;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_source_last = soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_last;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_we = soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_we;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_addr = soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_addr;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_re = soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_source_ready;
always @(*) begin
	soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_replace) begin
		soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr <= (soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr <= soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_produce;
	end
end
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_dat_w = soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_din;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_we = (soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_we & (soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable | soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_replace));
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_do_read = (soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable & soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_re);
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_rdport_adr = soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_consume;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_dout = soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_rdport_dat_r;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable = (soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_level != 4'd8);
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable = (soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_level != 1'd0);
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_pipe_ce = (soc_basesoc_sdram_bankmachine6_cmd_buffer_source_ready | (~soc_basesoc_sdram_bankmachine6_cmd_buffer_valid_n));
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_sink_ready = soc_basesoc_sdram_bankmachine6_cmd_buffer_pipe_ce;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_source_valid = soc_basesoc_sdram_bankmachine6_cmd_buffer_valid_n;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_busy = (1'd0 | soc_basesoc_sdram_bankmachine6_cmd_buffer_valid_n);
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_source_first = soc_basesoc_sdram_bankmachine6_cmd_buffer_first_n;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_source_last = soc_basesoc_sdram_bankmachine6_cmd_buffer_last_n;
always @(*) begin
	soc_basesoc_sdram_bankmachine6_req_rdata_valid <= 1'd0;
	soc_basesoc_sdram_bankmachine6_row_col_n_addr_sel <= 1'd0;
	soc_basesoc_sdram_bankmachine6_refresh_gnt <= 1'd0;
	vns_bankmachine6_next_state <= 4'd0;
	soc_basesoc_sdram_bankmachine6_cmd_valid <= 1'd0;
	soc_basesoc_sdram_bankmachine6_cmd_payload_cas <= 1'd0;
	soc_basesoc_sdram_bankmachine6_cmd_payload_ras <= 1'd0;
	soc_basesoc_sdram_bankmachine6_cmd_payload_we <= 1'd0;
	soc_basesoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd0;
	soc_basesoc_sdram_bankmachine6_row_open <= 1'd0;
	soc_basesoc_sdram_bankmachine6_cmd_payload_is_read <= 1'd0;
	soc_basesoc_sdram_bankmachine6_row_close <= 1'd0;
	soc_basesoc_sdram_bankmachine6_cmd_payload_is_write <= 1'd0;
	soc_basesoc_sdram_bankmachine6_req_wdata_ready <= 1'd0;
	vns_bankmachine6_next_state <= vns_bankmachine6_state;
	case (vns_bankmachine6_state)
		1'd1: begin
			if ((soc_basesoc_sdram_bankmachine6_twtpcon_ready & soc_basesoc_sdram_bankmachine6_trascon_ready)) begin
				soc_basesoc_sdram_bankmachine6_cmd_valid <= 1'd1;
				if (soc_basesoc_sdram_bankmachine6_cmd_ready) begin
					vns_bankmachine6_next_state <= 3'd5;
				end
				soc_basesoc_sdram_bankmachine6_cmd_payload_ras <= 1'd1;
				soc_basesoc_sdram_bankmachine6_cmd_payload_we <= 1'd1;
				soc_basesoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			end
			soc_basesoc_sdram_bankmachine6_row_close <= 1'd1;
		end
		2'd2: begin
			if ((soc_basesoc_sdram_bankmachine6_twtpcon_ready & soc_basesoc_sdram_bankmachine6_trascon_ready)) begin
				vns_bankmachine6_next_state <= 3'd5;
			end
			soc_basesoc_sdram_bankmachine6_row_close <= 1'd1;
		end
		2'd3: begin
			if (soc_basesoc_sdram_bankmachine6_trccon_ready) begin
				soc_basesoc_sdram_bankmachine6_row_col_n_addr_sel <= 1'd1;
				soc_basesoc_sdram_bankmachine6_row_open <= 1'd1;
				soc_basesoc_sdram_bankmachine6_cmd_valid <= 1'd1;
				soc_basesoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd1;
				if (soc_basesoc_sdram_bankmachine6_cmd_ready) begin
					vns_bankmachine6_next_state <= 3'd7;
				end
				soc_basesoc_sdram_bankmachine6_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (soc_basesoc_sdram_bankmachine6_twtpcon_ready) begin
				soc_basesoc_sdram_bankmachine6_refresh_gnt <= 1'd1;
			end
			soc_basesoc_sdram_bankmachine6_row_close <= 1'd1;
			soc_basesoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			if ((~soc_basesoc_sdram_bankmachine6_refresh_req)) begin
				vns_bankmachine6_next_state <= 1'd0;
			end
		end
		3'd5: begin
			vns_bankmachine6_next_state <= 3'd6;
		end
		3'd6: begin
			vns_bankmachine6_next_state <= 2'd3;
		end
		3'd7: begin
			vns_bankmachine6_next_state <= 4'd8;
		end
		4'd8: begin
			vns_bankmachine6_next_state <= 1'd0;
		end
		default: begin
			if (soc_basesoc_sdram_bankmachine6_refresh_req) begin
				vns_bankmachine6_next_state <= 3'd4;
			end else begin
				if (soc_basesoc_sdram_bankmachine6_cmd_buffer_source_valid) begin
					if (soc_basesoc_sdram_bankmachine6_row_opened) begin
						if (soc_basesoc_sdram_bankmachine6_row_hit) begin
							soc_basesoc_sdram_bankmachine6_cmd_valid <= 1'd1;
							if (soc_basesoc_sdram_bankmachine6_cmd_buffer_source_payload_we) begin
								soc_basesoc_sdram_bankmachine6_req_wdata_ready <= soc_basesoc_sdram_bankmachine6_cmd_ready;
								soc_basesoc_sdram_bankmachine6_cmd_payload_is_write <= 1'd1;
								soc_basesoc_sdram_bankmachine6_cmd_payload_we <= 1'd1;
							end else begin
								soc_basesoc_sdram_bankmachine6_req_rdata_valid <= soc_basesoc_sdram_bankmachine6_cmd_ready;
								soc_basesoc_sdram_bankmachine6_cmd_payload_is_read <= 1'd1;
							end
							soc_basesoc_sdram_bankmachine6_cmd_payload_cas <= 1'd1;
							if ((soc_basesoc_sdram_bankmachine6_cmd_ready & soc_basesoc_sdram_bankmachine6_auto_precharge)) begin
								vns_bankmachine6_next_state <= 2'd2;
							end
						end else begin
							vns_bankmachine6_next_state <= 1'd1;
						end
					end else begin
						vns_bankmachine6_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_valid = soc_basesoc_sdram_bankmachine7_req_valid;
assign soc_basesoc_sdram_bankmachine7_req_ready = soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_ready;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_we = soc_basesoc_sdram_bankmachine7_req_we;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_addr = soc_basesoc_sdram_bankmachine7_req_addr;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_sink_valid = soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_source_valid;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_source_ready = soc_basesoc_sdram_bankmachine7_cmd_buffer_sink_ready;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_sink_first = soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_source_first;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_sink_last = soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_source_last;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_sink_payload_we = soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_we;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_sink_payload_addr = soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_addr;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_source_ready = (soc_basesoc_sdram_bankmachine7_req_wdata_ready | soc_basesoc_sdram_bankmachine7_req_rdata_valid);
assign soc_basesoc_sdram_bankmachine7_req_lock = (soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_source_valid | soc_basesoc_sdram_bankmachine7_cmd_buffer_source_valid);
assign soc_basesoc_sdram_bankmachine7_row_hit = (soc_basesoc_sdram_bankmachine7_row == soc_basesoc_sdram_bankmachine7_cmd_buffer_source_payload_addr[20:7]);
assign soc_basesoc_sdram_bankmachine7_cmd_payload_ba = 3'd7;
always @(*) begin
	soc_basesoc_sdram_bankmachine7_cmd_payload_a <= 14'd0;
	if (soc_basesoc_sdram_bankmachine7_row_col_n_addr_sel) begin
		soc_basesoc_sdram_bankmachine7_cmd_payload_a <= soc_basesoc_sdram_bankmachine7_cmd_buffer_source_payload_addr[20:7];
	end else begin
		soc_basesoc_sdram_bankmachine7_cmd_payload_a <= ((soc_basesoc_sdram_bankmachine7_auto_precharge <<< 4'd10) | {soc_basesoc_sdram_bankmachine7_cmd_buffer_source_payload_addr[6:0], {3{1'd0}}});
	end
end
assign soc_basesoc_sdram_bankmachine7_twtpcon_valid = ((soc_basesoc_sdram_bankmachine7_cmd_valid & soc_basesoc_sdram_bankmachine7_cmd_ready) & soc_basesoc_sdram_bankmachine7_cmd_payload_is_write);
assign soc_basesoc_sdram_bankmachine7_trccon_valid = ((soc_basesoc_sdram_bankmachine7_cmd_valid & soc_basesoc_sdram_bankmachine7_cmd_ready) & soc_basesoc_sdram_bankmachine7_row_open);
assign soc_basesoc_sdram_bankmachine7_trascon_valid = ((soc_basesoc_sdram_bankmachine7_cmd_valid & soc_basesoc_sdram_bankmachine7_cmd_ready) & soc_basesoc_sdram_bankmachine7_row_open);
always @(*) begin
	soc_basesoc_sdram_bankmachine7_auto_precharge <= 1'd0;
	if ((soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_source_valid & soc_basesoc_sdram_bankmachine7_cmd_buffer_source_valid)) begin
		if ((soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_addr[20:7] != soc_basesoc_sdram_bankmachine7_cmd_buffer_source_payload_addr[20:7])) begin
			soc_basesoc_sdram_bankmachine7_auto_precharge <= (soc_basesoc_sdram_bankmachine7_row_close == 1'd0);
		end
	end
end
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_din = {soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_last, soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_first, soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_addr, soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_we};
assign {soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_last, soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_first, soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_addr, soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_we} = soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_dout;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_ready = soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_we = soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_valid;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_first = soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_first;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_last = soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_last;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_we = soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_we;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_addr = soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_addr;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_source_valid = soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_source_first = soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_first;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_source_last = soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_last;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_we = soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_we;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_addr = soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_addr;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_re = soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_source_ready;
always @(*) begin
	soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_replace) begin
		soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr <= (soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr <= soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_produce;
	end
end
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_dat_w = soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_din;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_we = (soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_we & (soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable | soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_replace));
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_do_read = (soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable & soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_re);
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_rdport_adr = soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_consume;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_dout = soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_rdport_dat_r;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable = (soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_level != 4'd8);
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable = (soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_level != 1'd0);
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_pipe_ce = (soc_basesoc_sdram_bankmachine7_cmd_buffer_source_ready | (~soc_basesoc_sdram_bankmachine7_cmd_buffer_valid_n));
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_sink_ready = soc_basesoc_sdram_bankmachine7_cmd_buffer_pipe_ce;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_source_valid = soc_basesoc_sdram_bankmachine7_cmd_buffer_valid_n;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_busy = (1'd0 | soc_basesoc_sdram_bankmachine7_cmd_buffer_valid_n);
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_source_first = soc_basesoc_sdram_bankmachine7_cmd_buffer_first_n;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_source_last = soc_basesoc_sdram_bankmachine7_cmd_buffer_last_n;
always @(*) begin
	soc_basesoc_sdram_bankmachine7_cmd_payload_ras <= 1'd0;
	soc_basesoc_sdram_bankmachine7_cmd_payload_we <= 1'd0;
	soc_basesoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd0;
	vns_bankmachine7_next_state <= 4'd0;
	soc_basesoc_sdram_bankmachine7_cmd_payload_is_read <= 1'd0;
	soc_basesoc_sdram_bankmachine7_row_close <= 1'd0;
	soc_basesoc_sdram_bankmachine7_cmd_payload_is_write <= 1'd0;
	soc_basesoc_sdram_bankmachine7_row_open <= 1'd0;
	soc_basesoc_sdram_bankmachine7_req_wdata_ready <= 1'd0;
	soc_basesoc_sdram_bankmachine7_req_rdata_valid <= 1'd0;
	soc_basesoc_sdram_bankmachine7_row_col_n_addr_sel <= 1'd0;
	soc_basesoc_sdram_bankmachine7_refresh_gnt <= 1'd0;
	soc_basesoc_sdram_bankmachine7_cmd_valid <= 1'd0;
	soc_basesoc_sdram_bankmachine7_cmd_payload_cas <= 1'd0;
	vns_bankmachine7_next_state <= vns_bankmachine7_state;
	case (vns_bankmachine7_state)
		1'd1: begin
			if ((soc_basesoc_sdram_bankmachine7_twtpcon_ready & soc_basesoc_sdram_bankmachine7_trascon_ready)) begin
				soc_basesoc_sdram_bankmachine7_cmd_valid <= 1'd1;
				if (soc_basesoc_sdram_bankmachine7_cmd_ready) begin
					vns_bankmachine7_next_state <= 3'd5;
				end
				soc_basesoc_sdram_bankmachine7_cmd_payload_ras <= 1'd1;
				soc_basesoc_sdram_bankmachine7_cmd_payload_we <= 1'd1;
				soc_basesoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			end
			soc_basesoc_sdram_bankmachine7_row_close <= 1'd1;
		end
		2'd2: begin
			if ((soc_basesoc_sdram_bankmachine7_twtpcon_ready & soc_basesoc_sdram_bankmachine7_trascon_ready)) begin
				vns_bankmachine7_next_state <= 3'd5;
			end
			soc_basesoc_sdram_bankmachine7_row_close <= 1'd1;
		end
		2'd3: begin
			if (soc_basesoc_sdram_bankmachine7_trccon_ready) begin
				soc_basesoc_sdram_bankmachine7_row_col_n_addr_sel <= 1'd1;
				soc_basesoc_sdram_bankmachine7_row_open <= 1'd1;
				soc_basesoc_sdram_bankmachine7_cmd_valid <= 1'd1;
				soc_basesoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd1;
				if (soc_basesoc_sdram_bankmachine7_cmd_ready) begin
					vns_bankmachine7_next_state <= 3'd7;
				end
				soc_basesoc_sdram_bankmachine7_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (soc_basesoc_sdram_bankmachine7_twtpcon_ready) begin
				soc_basesoc_sdram_bankmachine7_refresh_gnt <= 1'd1;
			end
			soc_basesoc_sdram_bankmachine7_row_close <= 1'd1;
			soc_basesoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			if ((~soc_basesoc_sdram_bankmachine7_refresh_req)) begin
				vns_bankmachine7_next_state <= 1'd0;
			end
		end
		3'd5: begin
			vns_bankmachine7_next_state <= 3'd6;
		end
		3'd6: begin
			vns_bankmachine7_next_state <= 2'd3;
		end
		3'd7: begin
			vns_bankmachine7_next_state <= 4'd8;
		end
		4'd8: begin
			vns_bankmachine7_next_state <= 1'd0;
		end
		default: begin
			if (soc_basesoc_sdram_bankmachine7_refresh_req) begin
				vns_bankmachine7_next_state <= 3'd4;
			end else begin
				if (soc_basesoc_sdram_bankmachine7_cmd_buffer_source_valid) begin
					if (soc_basesoc_sdram_bankmachine7_row_opened) begin
						if (soc_basesoc_sdram_bankmachine7_row_hit) begin
							soc_basesoc_sdram_bankmachine7_cmd_valid <= 1'd1;
							if (soc_basesoc_sdram_bankmachine7_cmd_buffer_source_payload_we) begin
								soc_basesoc_sdram_bankmachine7_req_wdata_ready <= soc_basesoc_sdram_bankmachine7_cmd_ready;
								soc_basesoc_sdram_bankmachine7_cmd_payload_is_write <= 1'd1;
								soc_basesoc_sdram_bankmachine7_cmd_payload_we <= 1'd1;
							end else begin
								soc_basesoc_sdram_bankmachine7_req_rdata_valid <= soc_basesoc_sdram_bankmachine7_cmd_ready;
								soc_basesoc_sdram_bankmachine7_cmd_payload_is_read <= 1'd1;
							end
							soc_basesoc_sdram_bankmachine7_cmd_payload_cas <= 1'd1;
							if ((soc_basesoc_sdram_bankmachine7_cmd_ready & soc_basesoc_sdram_bankmachine7_auto_precharge)) begin
								vns_bankmachine7_next_state <= 2'd2;
							end
						end else begin
							vns_bankmachine7_next_state <= 1'd1;
						end
					end else begin
						vns_bankmachine7_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign soc_basesoc_sdram_trrdcon_valid = ((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & ((soc_basesoc_sdram_choose_cmd_cmd_payload_ras & (~soc_basesoc_sdram_choose_cmd_cmd_payload_cas)) & (~soc_basesoc_sdram_choose_cmd_cmd_payload_we)));
assign soc_basesoc_sdram_tfawcon_valid = ((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & ((soc_basesoc_sdram_choose_cmd_cmd_payload_ras & (~soc_basesoc_sdram_choose_cmd_cmd_payload_cas)) & (~soc_basesoc_sdram_choose_cmd_cmd_payload_we)));
assign soc_basesoc_sdram_ras_allowed = (soc_basesoc_sdram_trrdcon_ready & soc_basesoc_sdram_tfawcon_ready);
assign soc_basesoc_sdram_tccdcon_valid = ((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & (soc_basesoc_sdram_choose_req_cmd_payload_is_write | soc_basesoc_sdram_choose_req_cmd_payload_is_read));
assign soc_basesoc_sdram_cas_allowed = soc_basesoc_sdram_tccdcon_ready;
assign soc_basesoc_sdram_twtrcon_valid = ((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & soc_basesoc_sdram_choose_req_cmd_payload_is_write);
assign soc_basesoc_sdram_read_available = ((((((((soc_basesoc_sdram_bankmachine0_cmd_valid & soc_basesoc_sdram_bankmachine0_cmd_payload_is_read) | (soc_basesoc_sdram_bankmachine1_cmd_valid & soc_basesoc_sdram_bankmachine1_cmd_payload_is_read)) | (soc_basesoc_sdram_bankmachine2_cmd_valid & soc_basesoc_sdram_bankmachine2_cmd_payload_is_read)) | (soc_basesoc_sdram_bankmachine3_cmd_valid & soc_basesoc_sdram_bankmachine3_cmd_payload_is_read)) | (soc_basesoc_sdram_bankmachine4_cmd_valid & soc_basesoc_sdram_bankmachine4_cmd_payload_is_read)) | (soc_basesoc_sdram_bankmachine5_cmd_valid & soc_basesoc_sdram_bankmachine5_cmd_payload_is_read)) | (soc_basesoc_sdram_bankmachine6_cmd_valid & soc_basesoc_sdram_bankmachine6_cmd_payload_is_read)) | (soc_basesoc_sdram_bankmachine7_cmd_valid & soc_basesoc_sdram_bankmachine7_cmd_payload_is_read));
assign soc_basesoc_sdram_write_available = ((((((((soc_basesoc_sdram_bankmachine0_cmd_valid & soc_basesoc_sdram_bankmachine0_cmd_payload_is_write) | (soc_basesoc_sdram_bankmachine1_cmd_valid & soc_basesoc_sdram_bankmachine1_cmd_payload_is_write)) | (soc_basesoc_sdram_bankmachine2_cmd_valid & soc_basesoc_sdram_bankmachine2_cmd_payload_is_write)) | (soc_basesoc_sdram_bankmachine3_cmd_valid & soc_basesoc_sdram_bankmachine3_cmd_payload_is_write)) | (soc_basesoc_sdram_bankmachine4_cmd_valid & soc_basesoc_sdram_bankmachine4_cmd_payload_is_write)) | (soc_basesoc_sdram_bankmachine5_cmd_valid & soc_basesoc_sdram_bankmachine5_cmd_payload_is_write)) | (soc_basesoc_sdram_bankmachine6_cmd_valid & soc_basesoc_sdram_bankmachine6_cmd_payload_is_write)) | (soc_basesoc_sdram_bankmachine7_cmd_valid & soc_basesoc_sdram_bankmachine7_cmd_payload_is_write));
assign soc_basesoc_sdram_max_time0 = (soc_basesoc_sdram_time0 == 1'd0);
assign soc_basesoc_sdram_max_time1 = (soc_basesoc_sdram_time1 == 1'd0);
assign soc_basesoc_sdram_bankmachine0_refresh_req = soc_basesoc_sdram_cmd_valid;
assign soc_basesoc_sdram_bankmachine1_refresh_req = soc_basesoc_sdram_cmd_valid;
assign soc_basesoc_sdram_bankmachine2_refresh_req = soc_basesoc_sdram_cmd_valid;
assign soc_basesoc_sdram_bankmachine3_refresh_req = soc_basesoc_sdram_cmd_valid;
assign soc_basesoc_sdram_bankmachine4_refresh_req = soc_basesoc_sdram_cmd_valid;
assign soc_basesoc_sdram_bankmachine5_refresh_req = soc_basesoc_sdram_cmd_valid;
assign soc_basesoc_sdram_bankmachine6_refresh_req = soc_basesoc_sdram_cmd_valid;
assign soc_basesoc_sdram_bankmachine7_refresh_req = soc_basesoc_sdram_cmd_valid;
assign soc_basesoc_sdram_go_to_refresh = (((((((soc_basesoc_sdram_bankmachine0_refresh_gnt & soc_basesoc_sdram_bankmachine1_refresh_gnt) & soc_basesoc_sdram_bankmachine2_refresh_gnt) & soc_basesoc_sdram_bankmachine3_refresh_gnt) & soc_basesoc_sdram_bankmachine4_refresh_gnt) & soc_basesoc_sdram_bankmachine5_refresh_gnt) & soc_basesoc_sdram_bankmachine6_refresh_gnt) & soc_basesoc_sdram_bankmachine7_refresh_gnt);
assign soc_basesoc_sdram_interface_rdata = {soc_basesoc_sdram_dfi_p3_rddata, soc_basesoc_sdram_dfi_p2_rddata, soc_basesoc_sdram_dfi_p1_rddata, soc_basesoc_sdram_dfi_p0_rddata};
assign {soc_basesoc_sdram_dfi_p3_wrdata, soc_basesoc_sdram_dfi_p2_wrdata, soc_basesoc_sdram_dfi_p1_wrdata, soc_basesoc_sdram_dfi_p0_wrdata} = soc_basesoc_sdram_interface_wdata;
assign {soc_basesoc_sdram_dfi_p3_wrdata_mask, soc_basesoc_sdram_dfi_p2_wrdata_mask, soc_basesoc_sdram_dfi_p1_wrdata_mask, soc_basesoc_sdram_dfi_p0_wrdata_mask} = (~soc_basesoc_sdram_interface_wdata_we);
always @(*) begin
	soc_basesoc_sdram_choose_cmd_valids <= 8'd0;
	soc_basesoc_sdram_choose_cmd_valids[0] <= (soc_basesoc_sdram_bankmachine0_cmd_valid & (((soc_basesoc_sdram_bankmachine0_cmd_payload_is_cmd & soc_basesoc_sdram_choose_cmd_want_cmds) & ((~((soc_basesoc_sdram_bankmachine0_cmd_payload_ras & (~soc_basesoc_sdram_bankmachine0_cmd_payload_cas)) & (~soc_basesoc_sdram_bankmachine0_cmd_payload_we))) | soc_basesoc_sdram_choose_cmd_want_activates)) | ((soc_basesoc_sdram_bankmachine0_cmd_payload_is_read == soc_basesoc_sdram_choose_cmd_want_reads) & (soc_basesoc_sdram_bankmachine0_cmd_payload_is_write == soc_basesoc_sdram_choose_cmd_want_writes))));
	soc_basesoc_sdram_choose_cmd_valids[1] <= (soc_basesoc_sdram_bankmachine1_cmd_valid & (((soc_basesoc_sdram_bankmachine1_cmd_payload_is_cmd & soc_basesoc_sdram_choose_cmd_want_cmds) & ((~((soc_basesoc_sdram_bankmachine1_cmd_payload_ras & (~soc_basesoc_sdram_bankmachine1_cmd_payload_cas)) & (~soc_basesoc_sdram_bankmachine1_cmd_payload_we))) | soc_basesoc_sdram_choose_cmd_want_activates)) | ((soc_basesoc_sdram_bankmachine1_cmd_payload_is_read == soc_basesoc_sdram_choose_cmd_want_reads) & (soc_basesoc_sdram_bankmachine1_cmd_payload_is_write == soc_basesoc_sdram_choose_cmd_want_writes))));
	soc_basesoc_sdram_choose_cmd_valids[2] <= (soc_basesoc_sdram_bankmachine2_cmd_valid & (((soc_basesoc_sdram_bankmachine2_cmd_payload_is_cmd & soc_basesoc_sdram_choose_cmd_want_cmds) & ((~((soc_basesoc_sdram_bankmachine2_cmd_payload_ras & (~soc_basesoc_sdram_bankmachine2_cmd_payload_cas)) & (~soc_basesoc_sdram_bankmachine2_cmd_payload_we))) | soc_basesoc_sdram_choose_cmd_want_activates)) | ((soc_basesoc_sdram_bankmachine2_cmd_payload_is_read == soc_basesoc_sdram_choose_cmd_want_reads) & (soc_basesoc_sdram_bankmachine2_cmd_payload_is_write == soc_basesoc_sdram_choose_cmd_want_writes))));
	soc_basesoc_sdram_choose_cmd_valids[3] <= (soc_basesoc_sdram_bankmachine3_cmd_valid & (((soc_basesoc_sdram_bankmachine3_cmd_payload_is_cmd & soc_basesoc_sdram_choose_cmd_want_cmds) & ((~((soc_basesoc_sdram_bankmachine3_cmd_payload_ras & (~soc_basesoc_sdram_bankmachine3_cmd_payload_cas)) & (~soc_basesoc_sdram_bankmachine3_cmd_payload_we))) | soc_basesoc_sdram_choose_cmd_want_activates)) | ((soc_basesoc_sdram_bankmachine3_cmd_payload_is_read == soc_basesoc_sdram_choose_cmd_want_reads) & (soc_basesoc_sdram_bankmachine3_cmd_payload_is_write == soc_basesoc_sdram_choose_cmd_want_writes))));
	soc_basesoc_sdram_choose_cmd_valids[4] <= (soc_basesoc_sdram_bankmachine4_cmd_valid & (((soc_basesoc_sdram_bankmachine4_cmd_payload_is_cmd & soc_basesoc_sdram_choose_cmd_want_cmds) & ((~((soc_basesoc_sdram_bankmachine4_cmd_payload_ras & (~soc_basesoc_sdram_bankmachine4_cmd_payload_cas)) & (~soc_basesoc_sdram_bankmachine4_cmd_payload_we))) | soc_basesoc_sdram_choose_cmd_want_activates)) | ((soc_basesoc_sdram_bankmachine4_cmd_payload_is_read == soc_basesoc_sdram_choose_cmd_want_reads) & (soc_basesoc_sdram_bankmachine4_cmd_payload_is_write == soc_basesoc_sdram_choose_cmd_want_writes))));
	soc_basesoc_sdram_choose_cmd_valids[5] <= (soc_basesoc_sdram_bankmachine5_cmd_valid & (((soc_basesoc_sdram_bankmachine5_cmd_payload_is_cmd & soc_basesoc_sdram_choose_cmd_want_cmds) & ((~((soc_basesoc_sdram_bankmachine5_cmd_payload_ras & (~soc_basesoc_sdram_bankmachine5_cmd_payload_cas)) & (~soc_basesoc_sdram_bankmachine5_cmd_payload_we))) | soc_basesoc_sdram_choose_cmd_want_activates)) | ((soc_basesoc_sdram_bankmachine5_cmd_payload_is_read == soc_basesoc_sdram_choose_cmd_want_reads) & (soc_basesoc_sdram_bankmachine5_cmd_payload_is_write == soc_basesoc_sdram_choose_cmd_want_writes))));
	soc_basesoc_sdram_choose_cmd_valids[6] <= (soc_basesoc_sdram_bankmachine6_cmd_valid & (((soc_basesoc_sdram_bankmachine6_cmd_payload_is_cmd & soc_basesoc_sdram_choose_cmd_want_cmds) & ((~((soc_basesoc_sdram_bankmachine6_cmd_payload_ras & (~soc_basesoc_sdram_bankmachine6_cmd_payload_cas)) & (~soc_basesoc_sdram_bankmachine6_cmd_payload_we))) | soc_basesoc_sdram_choose_cmd_want_activates)) | ((soc_basesoc_sdram_bankmachine6_cmd_payload_is_read == soc_basesoc_sdram_choose_cmd_want_reads) & (soc_basesoc_sdram_bankmachine6_cmd_payload_is_write == soc_basesoc_sdram_choose_cmd_want_writes))));
	soc_basesoc_sdram_choose_cmd_valids[7] <= (soc_basesoc_sdram_bankmachine7_cmd_valid & (((soc_basesoc_sdram_bankmachine7_cmd_payload_is_cmd & soc_basesoc_sdram_choose_cmd_want_cmds) & ((~((soc_basesoc_sdram_bankmachine7_cmd_payload_ras & (~soc_basesoc_sdram_bankmachine7_cmd_payload_cas)) & (~soc_basesoc_sdram_bankmachine7_cmd_payload_we))) | soc_basesoc_sdram_choose_cmd_want_activates)) | ((soc_basesoc_sdram_bankmachine7_cmd_payload_is_read == soc_basesoc_sdram_choose_cmd_want_reads) & (soc_basesoc_sdram_bankmachine7_cmd_payload_is_write == soc_basesoc_sdram_choose_cmd_want_writes))));
end
assign soc_basesoc_sdram_choose_cmd_request = soc_basesoc_sdram_choose_cmd_valids;
assign soc_basesoc_sdram_choose_cmd_cmd_valid = vns_rhs_array_muxed0;
assign soc_basesoc_sdram_choose_cmd_cmd_payload_a = vns_rhs_array_muxed1;
assign soc_basesoc_sdram_choose_cmd_cmd_payload_ba = vns_rhs_array_muxed2;
assign soc_basesoc_sdram_choose_cmd_cmd_payload_is_read = vns_rhs_array_muxed3;
assign soc_basesoc_sdram_choose_cmd_cmd_payload_is_write = vns_rhs_array_muxed4;
assign soc_basesoc_sdram_choose_cmd_cmd_payload_is_cmd = vns_rhs_array_muxed5;
always @(*) begin
	soc_basesoc_sdram_choose_cmd_cmd_payload_cas <= 1'd0;
	if (soc_basesoc_sdram_choose_cmd_cmd_valid) begin
		soc_basesoc_sdram_choose_cmd_cmd_payload_cas <= vns_t_array_muxed0;
	end
end
always @(*) begin
	soc_basesoc_sdram_choose_cmd_cmd_payload_ras <= 1'd0;
	if (soc_basesoc_sdram_choose_cmd_cmd_valid) begin
		soc_basesoc_sdram_choose_cmd_cmd_payload_ras <= vns_t_array_muxed1;
	end
end
always @(*) begin
	soc_basesoc_sdram_choose_cmd_cmd_payload_we <= 1'd0;
	if (soc_basesoc_sdram_choose_cmd_cmd_valid) begin
		soc_basesoc_sdram_choose_cmd_cmd_payload_we <= vns_t_array_muxed2;
	end
end
assign soc_basesoc_sdram_choose_cmd_ce = (soc_basesoc_sdram_choose_cmd_cmd_ready | (~soc_basesoc_sdram_choose_cmd_cmd_valid));
always @(*) begin
	soc_basesoc_sdram_choose_req_valids <= 8'd0;
	soc_basesoc_sdram_choose_req_valids[0] <= (soc_basesoc_sdram_bankmachine0_cmd_valid & (((soc_basesoc_sdram_bankmachine0_cmd_payload_is_cmd & soc_basesoc_sdram_choose_req_want_cmds) & ((~((soc_basesoc_sdram_bankmachine0_cmd_payload_ras & (~soc_basesoc_sdram_bankmachine0_cmd_payload_cas)) & (~soc_basesoc_sdram_bankmachine0_cmd_payload_we))) | soc_basesoc_sdram_choose_req_want_activates)) | ((soc_basesoc_sdram_bankmachine0_cmd_payload_is_read == soc_basesoc_sdram_choose_req_want_reads) & (soc_basesoc_sdram_bankmachine0_cmd_payload_is_write == soc_basesoc_sdram_choose_req_want_writes))));
	soc_basesoc_sdram_choose_req_valids[1] <= (soc_basesoc_sdram_bankmachine1_cmd_valid & (((soc_basesoc_sdram_bankmachine1_cmd_payload_is_cmd & soc_basesoc_sdram_choose_req_want_cmds) & ((~((soc_basesoc_sdram_bankmachine1_cmd_payload_ras & (~soc_basesoc_sdram_bankmachine1_cmd_payload_cas)) & (~soc_basesoc_sdram_bankmachine1_cmd_payload_we))) | soc_basesoc_sdram_choose_req_want_activates)) | ((soc_basesoc_sdram_bankmachine1_cmd_payload_is_read == soc_basesoc_sdram_choose_req_want_reads) & (soc_basesoc_sdram_bankmachine1_cmd_payload_is_write == soc_basesoc_sdram_choose_req_want_writes))));
	soc_basesoc_sdram_choose_req_valids[2] <= (soc_basesoc_sdram_bankmachine2_cmd_valid & (((soc_basesoc_sdram_bankmachine2_cmd_payload_is_cmd & soc_basesoc_sdram_choose_req_want_cmds) & ((~((soc_basesoc_sdram_bankmachine2_cmd_payload_ras & (~soc_basesoc_sdram_bankmachine2_cmd_payload_cas)) & (~soc_basesoc_sdram_bankmachine2_cmd_payload_we))) | soc_basesoc_sdram_choose_req_want_activates)) | ((soc_basesoc_sdram_bankmachine2_cmd_payload_is_read == soc_basesoc_sdram_choose_req_want_reads) & (soc_basesoc_sdram_bankmachine2_cmd_payload_is_write == soc_basesoc_sdram_choose_req_want_writes))));
	soc_basesoc_sdram_choose_req_valids[3] <= (soc_basesoc_sdram_bankmachine3_cmd_valid & (((soc_basesoc_sdram_bankmachine3_cmd_payload_is_cmd & soc_basesoc_sdram_choose_req_want_cmds) & ((~((soc_basesoc_sdram_bankmachine3_cmd_payload_ras & (~soc_basesoc_sdram_bankmachine3_cmd_payload_cas)) & (~soc_basesoc_sdram_bankmachine3_cmd_payload_we))) | soc_basesoc_sdram_choose_req_want_activates)) | ((soc_basesoc_sdram_bankmachine3_cmd_payload_is_read == soc_basesoc_sdram_choose_req_want_reads) & (soc_basesoc_sdram_bankmachine3_cmd_payload_is_write == soc_basesoc_sdram_choose_req_want_writes))));
	soc_basesoc_sdram_choose_req_valids[4] <= (soc_basesoc_sdram_bankmachine4_cmd_valid & (((soc_basesoc_sdram_bankmachine4_cmd_payload_is_cmd & soc_basesoc_sdram_choose_req_want_cmds) & ((~((soc_basesoc_sdram_bankmachine4_cmd_payload_ras & (~soc_basesoc_sdram_bankmachine4_cmd_payload_cas)) & (~soc_basesoc_sdram_bankmachine4_cmd_payload_we))) | soc_basesoc_sdram_choose_req_want_activates)) | ((soc_basesoc_sdram_bankmachine4_cmd_payload_is_read == soc_basesoc_sdram_choose_req_want_reads) & (soc_basesoc_sdram_bankmachine4_cmd_payload_is_write == soc_basesoc_sdram_choose_req_want_writes))));
	soc_basesoc_sdram_choose_req_valids[5] <= (soc_basesoc_sdram_bankmachine5_cmd_valid & (((soc_basesoc_sdram_bankmachine5_cmd_payload_is_cmd & soc_basesoc_sdram_choose_req_want_cmds) & ((~((soc_basesoc_sdram_bankmachine5_cmd_payload_ras & (~soc_basesoc_sdram_bankmachine5_cmd_payload_cas)) & (~soc_basesoc_sdram_bankmachine5_cmd_payload_we))) | soc_basesoc_sdram_choose_req_want_activates)) | ((soc_basesoc_sdram_bankmachine5_cmd_payload_is_read == soc_basesoc_sdram_choose_req_want_reads) & (soc_basesoc_sdram_bankmachine5_cmd_payload_is_write == soc_basesoc_sdram_choose_req_want_writes))));
	soc_basesoc_sdram_choose_req_valids[6] <= (soc_basesoc_sdram_bankmachine6_cmd_valid & (((soc_basesoc_sdram_bankmachine6_cmd_payload_is_cmd & soc_basesoc_sdram_choose_req_want_cmds) & ((~((soc_basesoc_sdram_bankmachine6_cmd_payload_ras & (~soc_basesoc_sdram_bankmachine6_cmd_payload_cas)) & (~soc_basesoc_sdram_bankmachine6_cmd_payload_we))) | soc_basesoc_sdram_choose_req_want_activates)) | ((soc_basesoc_sdram_bankmachine6_cmd_payload_is_read == soc_basesoc_sdram_choose_req_want_reads) & (soc_basesoc_sdram_bankmachine6_cmd_payload_is_write == soc_basesoc_sdram_choose_req_want_writes))));
	soc_basesoc_sdram_choose_req_valids[7] <= (soc_basesoc_sdram_bankmachine7_cmd_valid & (((soc_basesoc_sdram_bankmachine7_cmd_payload_is_cmd & soc_basesoc_sdram_choose_req_want_cmds) & ((~((soc_basesoc_sdram_bankmachine7_cmd_payload_ras & (~soc_basesoc_sdram_bankmachine7_cmd_payload_cas)) & (~soc_basesoc_sdram_bankmachine7_cmd_payload_we))) | soc_basesoc_sdram_choose_req_want_activates)) | ((soc_basesoc_sdram_bankmachine7_cmd_payload_is_read == soc_basesoc_sdram_choose_req_want_reads) & (soc_basesoc_sdram_bankmachine7_cmd_payload_is_write == soc_basesoc_sdram_choose_req_want_writes))));
end
assign soc_basesoc_sdram_choose_req_request = soc_basesoc_sdram_choose_req_valids;
assign soc_basesoc_sdram_choose_req_cmd_valid = vns_rhs_array_muxed6;
assign soc_basesoc_sdram_choose_req_cmd_payload_a = vns_rhs_array_muxed7;
assign soc_basesoc_sdram_choose_req_cmd_payload_ba = vns_rhs_array_muxed8;
assign soc_basesoc_sdram_choose_req_cmd_payload_is_read = vns_rhs_array_muxed9;
assign soc_basesoc_sdram_choose_req_cmd_payload_is_write = vns_rhs_array_muxed10;
assign soc_basesoc_sdram_choose_req_cmd_payload_is_cmd = vns_rhs_array_muxed11;
always @(*) begin
	soc_basesoc_sdram_choose_req_cmd_payload_cas <= 1'd0;
	if (soc_basesoc_sdram_choose_req_cmd_valid) begin
		soc_basesoc_sdram_choose_req_cmd_payload_cas <= vns_t_array_muxed3;
	end
end
always @(*) begin
	soc_basesoc_sdram_choose_req_cmd_payload_ras <= 1'd0;
	if (soc_basesoc_sdram_choose_req_cmd_valid) begin
		soc_basesoc_sdram_choose_req_cmd_payload_ras <= vns_t_array_muxed4;
	end
end
always @(*) begin
	soc_basesoc_sdram_choose_req_cmd_payload_we <= 1'd0;
	if (soc_basesoc_sdram_choose_req_cmd_valid) begin
		soc_basesoc_sdram_choose_req_cmd_payload_we <= vns_t_array_muxed5;
	end
end
always @(*) begin
	soc_basesoc_sdram_bankmachine0_cmd_ready <= 1'd0;
	if (((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & (soc_basesoc_sdram_choose_cmd_grant == 1'd0))) begin
		soc_basesoc_sdram_bankmachine0_cmd_ready <= 1'd1;
	end
	if (((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & (soc_basesoc_sdram_choose_req_grant == 1'd0))) begin
		soc_basesoc_sdram_bankmachine0_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	soc_basesoc_sdram_bankmachine1_cmd_ready <= 1'd0;
	if (((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & (soc_basesoc_sdram_choose_cmd_grant == 1'd1))) begin
		soc_basesoc_sdram_bankmachine1_cmd_ready <= 1'd1;
	end
	if (((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & (soc_basesoc_sdram_choose_req_grant == 1'd1))) begin
		soc_basesoc_sdram_bankmachine1_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	soc_basesoc_sdram_bankmachine2_cmd_ready <= 1'd0;
	if (((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & (soc_basesoc_sdram_choose_cmd_grant == 2'd2))) begin
		soc_basesoc_sdram_bankmachine2_cmd_ready <= 1'd1;
	end
	if (((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & (soc_basesoc_sdram_choose_req_grant == 2'd2))) begin
		soc_basesoc_sdram_bankmachine2_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	soc_basesoc_sdram_bankmachine3_cmd_ready <= 1'd0;
	if (((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & (soc_basesoc_sdram_choose_cmd_grant == 2'd3))) begin
		soc_basesoc_sdram_bankmachine3_cmd_ready <= 1'd1;
	end
	if (((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & (soc_basesoc_sdram_choose_req_grant == 2'd3))) begin
		soc_basesoc_sdram_bankmachine3_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	soc_basesoc_sdram_bankmachine4_cmd_ready <= 1'd0;
	if (((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & (soc_basesoc_sdram_choose_cmd_grant == 3'd4))) begin
		soc_basesoc_sdram_bankmachine4_cmd_ready <= 1'd1;
	end
	if (((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & (soc_basesoc_sdram_choose_req_grant == 3'd4))) begin
		soc_basesoc_sdram_bankmachine4_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	soc_basesoc_sdram_bankmachine5_cmd_ready <= 1'd0;
	if (((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & (soc_basesoc_sdram_choose_cmd_grant == 3'd5))) begin
		soc_basesoc_sdram_bankmachine5_cmd_ready <= 1'd1;
	end
	if (((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & (soc_basesoc_sdram_choose_req_grant == 3'd5))) begin
		soc_basesoc_sdram_bankmachine5_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	soc_basesoc_sdram_bankmachine6_cmd_ready <= 1'd0;
	if (((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & (soc_basesoc_sdram_choose_cmd_grant == 3'd6))) begin
		soc_basesoc_sdram_bankmachine6_cmd_ready <= 1'd1;
	end
	if (((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & (soc_basesoc_sdram_choose_req_grant == 3'd6))) begin
		soc_basesoc_sdram_bankmachine6_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	soc_basesoc_sdram_bankmachine7_cmd_ready <= 1'd0;
	if (((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & (soc_basesoc_sdram_choose_cmd_grant == 3'd7))) begin
		soc_basesoc_sdram_bankmachine7_cmd_ready <= 1'd1;
	end
	if (((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & (soc_basesoc_sdram_choose_req_grant == 3'd7))) begin
		soc_basesoc_sdram_bankmachine7_cmd_ready <= 1'd1;
	end
end
assign soc_basesoc_sdram_choose_req_ce = (soc_basesoc_sdram_choose_req_cmd_ready | (~soc_basesoc_sdram_choose_req_cmd_valid));
assign soc_basesoc_sdram_dfi_p0_reset_n = 1'd1;
assign soc_basesoc_sdram_dfi_p0_cke = {1{soc_basesoc_sdram_steerer0}};
assign soc_basesoc_sdram_dfi_p0_odt = {1{soc_basesoc_sdram_steerer1}};
assign soc_basesoc_sdram_dfi_p1_reset_n = 1'd1;
assign soc_basesoc_sdram_dfi_p1_cke = {1{soc_basesoc_sdram_steerer2}};
assign soc_basesoc_sdram_dfi_p1_odt = {1{soc_basesoc_sdram_steerer3}};
assign soc_basesoc_sdram_dfi_p2_reset_n = 1'd1;
assign soc_basesoc_sdram_dfi_p2_cke = {1{soc_basesoc_sdram_steerer4}};
assign soc_basesoc_sdram_dfi_p2_odt = {1{soc_basesoc_sdram_steerer5}};
assign soc_basesoc_sdram_dfi_p3_reset_n = 1'd1;
assign soc_basesoc_sdram_dfi_p3_cke = {1{soc_basesoc_sdram_steerer6}};
assign soc_basesoc_sdram_dfi_p3_odt = {1{soc_basesoc_sdram_steerer7}};
assign soc_basesoc_sdram_tfawcon_count = ((((soc_basesoc_sdram_tfawcon_window[0] + soc_basesoc_sdram_tfawcon_window[1]) + soc_basesoc_sdram_tfawcon_window[2]) + soc_basesoc_sdram_tfawcon_window[3]) + soc_basesoc_sdram_tfawcon_window[4]);
always @(*) begin
	soc_basesoc_sdram_choose_req_cmd_ready <= 1'd0;
	vns_multiplexer_next_state <= 4'd0;
	soc_basesoc_sdram_en1 <= 1'd0;
	soc_basesoc_sdram_steerer_sel0 <= 2'd0;
	soc_basesoc_sdram_steerer_sel1 <= 2'd0;
	soc_basesoc_sdram_steerer_sel2 <= 2'd0;
	soc_basesoc_sdram_choose_cmd_want_activates <= 1'd0;
	soc_basesoc_sdram_steerer_sel3 <= 2'd0;
	soc_basesoc_sdram_en0 <= 1'd0;
	soc_basesoc_sdram_choose_cmd_cmd_ready <= 1'd0;
	soc_basesoc_sdram_choose_req_want_reads <= 1'd0;
	soc_basesoc_sdram_choose_req_want_writes <= 1'd0;
	soc_basesoc_sdram_cmd_ready <= 1'd0;
	vns_multiplexer_next_state <= vns_multiplexer_state;
	case (vns_multiplexer_state)
		1'd1: begin
			soc_basesoc_sdram_en1 <= 1'd1;
			soc_basesoc_sdram_choose_req_want_writes <= 1'd1;
			if (1'd0) begin
				soc_basesoc_sdram_choose_req_cmd_ready <= (soc_basesoc_sdram_cas_allowed & ((~((soc_basesoc_sdram_choose_req_cmd_payload_ras & (~soc_basesoc_sdram_choose_req_cmd_payload_cas)) & (~soc_basesoc_sdram_choose_req_cmd_payload_we))) | soc_basesoc_sdram_ras_allowed));
			end else begin
				soc_basesoc_sdram_choose_cmd_want_activates <= soc_basesoc_sdram_ras_allowed;
				soc_basesoc_sdram_choose_cmd_cmd_ready <= ((~((soc_basesoc_sdram_choose_cmd_cmd_payload_ras & (~soc_basesoc_sdram_choose_cmd_cmd_payload_cas)) & (~soc_basesoc_sdram_choose_cmd_cmd_payload_we))) | soc_basesoc_sdram_ras_allowed);
				soc_basesoc_sdram_choose_req_cmd_ready <= soc_basesoc_sdram_cas_allowed;
			end
			soc_basesoc_sdram_steerer_sel0 <= 1'd0;
			soc_basesoc_sdram_steerer_sel1 <= 1'd0;
			soc_basesoc_sdram_steerer_sel2 <= 1'd1;
			soc_basesoc_sdram_steerer_sel3 <= 2'd2;
			if (soc_basesoc_sdram_read_available) begin
				if (((~soc_basesoc_sdram_write_available) | soc_basesoc_sdram_max_time1)) begin
					vns_multiplexer_next_state <= 2'd3;
				end
			end
			if (soc_basesoc_sdram_go_to_refresh) begin
				vns_multiplexer_next_state <= 2'd2;
			end
		end
		2'd2: begin
			soc_basesoc_sdram_steerer_sel0 <= 2'd3;
			soc_basesoc_sdram_cmd_ready <= 1'd1;
			if (soc_basesoc_sdram_cmd_last) begin
				vns_multiplexer_next_state <= 1'd0;
			end
		end
		2'd3: begin
			if (soc_basesoc_sdram_twtrcon_ready) begin
				vns_multiplexer_next_state <= 1'd0;
			end
		end
		3'd4: begin
			vns_multiplexer_next_state <= 3'd5;
		end
		3'd5: begin
			vns_multiplexer_next_state <= 3'd6;
		end
		3'd6: begin
			vns_multiplexer_next_state <= 3'd7;
		end
		3'd7: begin
			vns_multiplexer_next_state <= 4'd8;
		end
		4'd8: begin
			vns_multiplexer_next_state <= 4'd9;
		end
		4'd9: begin
			vns_multiplexer_next_state <= 4'd10;
		end
		4'd10: begin
			vns_multiplexer_next_state <= 4'd11;
		end
		4'd11: begin
			vns_multiplexer_next_state <= 1'd1;
		end
		default: begin
			soc_basesoc_sdram_en0 <= 1'd1;
			soc_basesoc_sdram_choose_req_want_reads <= 1'd1;
			if (1'd0) begin
				soc_basesoc_sdram_choose_req_cmd_ready <= (soc_basesoc_sdram_cas_allowed & ((~((soc_basesoc_sdram_choose_req_cmd_payload_ras & (~soc_basesoc_sdram_choose_req_cmd_payload_cas)) & (~soc_basesoc_sdram_choose_req_cmd_payload_we))) | soc_basesoc_sdram_ras_allowed));
			end else begin
				soc_basesoc_sdram_choose_cmd_want_activates <= soc_basesoc_sdram_ras_allowed;
				soc_basesoc_sdram_choose_cmd_cmd_ready <= ((~((soc_basesoc_sdram_choose_cmd_cmd_payload_ras & (~soc_basesoc_sdram_choose_cmd_cmd_payload_cas)) & (~soc_basesoc_sdram_choose_cmd_cmd_payload_we))) | soc_basesoc_sdram_ras_allowed);
				soc_basesoc_sdram_choose_req_cmd_ready <= soc_basesoc_sdram_cas_allowed;
			end
			soc_basesoc_sdram_steerer_sel0 <= 1'd0;
			soc_basesoc_sdram_steerer_sel1 <= 1'd1;
			soc_basesoc_sdram_steerer_sel2 <= 2'd2;
			soc_basesoc_sdram_steerer_sel3 <= 1'd0;
			if (soc_basesoc_sdram_write_available) begin
				if (((~soc_basesoc_sdram_read_available) | soc_basesoc_sdram_max_time0)) begin
					vns_multiplexer_next_state <= 3'd4;
				end
			end
			if (soc_basesoc_sdram_go_to_refresh) begin
				vns_multiplexer_next_state <= 2'd2;
			end
		end
	endcase
end
assign vns_roundrobin0_request = {(((soc_basesoc_port_cmd_payload_addr[9:7] == 1'd0) & (~(((((((vns_locked0 | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_basesoc_port_cmd_valid)};
assign vns_roundrobin0_ce = ((~soc_basesoc_sdram_interface_bank0_valid) & (~soc_basesoc_sdram_interface_bank0_lock));
assign soc_basesoc_sdram_interface_bank0_addr = vns_rhs_array_muxed12;
assign soc_basesoc_sdram_interface_bank0_we = vns_rhs_array_muxed13;
assign soc_basesoc_sdram_interface_bank0_valid = vns_rhs_array_muxed14;
assign vns_roundrobin1_request = {(((soc_basesoc_port_cmd_payload_addr[9:7] == 1'd1) & (~(((((((vns_locked1 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_basesoc_port_cmd_valid)};
assign vns_roundrobin1_ce = ((~soc_basesoc_sdram_interface_bank1_valid) & (~soc_basesoc_sdram_interface_bank1_lock));
assign soc_basesoc_sdram_interface_bank1_addr = vns_rhs_array_muxed15;
assign soc_basesoc_sdram_interface_bank1_we = vns_rhs_array_muxed16;
assign soc_basesoc_sdram_interface_bank1_valid = vns_rhs_array_muxed17;
assign vns_roundrobin2_request = {(((soc_basesoc_port_cmd_payload_addr[9:7] == 2'd2) & (~(((((((vns_locked2 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_basesoc_port_cmd_valid)};
assign vns_roundrobin2_ce = ((~soc_basesoc_sdram_interface_bank2_valid) & (~soc_basesoc_sdram_interface_bank2_lock));
assign soc_basesoc_sdram_interface_bank2_addr = vns_rhs_array_muxed18;
assign soc_basesoc_sdram_interface_bank2_we = vns_rhs_array_muxed19;
assign soc_basesoc_sdram_interface_bank2_valid = vns_rhs_array_muxed20;
assign vns_roundrobin3_request = {(((soc_basesoc_port_cmd_payload_addr[9:7] == 2'd3) & (~(((((((vns_locked3 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_basesoc_port_cmd_valid)};
assign vns_roundrobin3_ce = ((~soc_basesoc_sdram_interface_bank3_valid) & (~soc_basesoc_sdram_interface_bank3_lock));
assign soc_basesoc_sdram_interface_bank3_addr = vns_rhs_array_muxed21;
assign soc_basesoc_sdram_interface_bank3_we = vns_rhs_array_muxed22;
assign soc_basesoc_sdram_interface_bank3_valid = vns_rhs_array_muxed23;
assign vns_roundrobin4_request = {(((soc_basesoc_port_cmd_payload_addr[9:7] == 3'd4) & (~(((((((vns_locked4 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_basesoc_port_cmd_valid)};
assign vns_roundrobin4_ce = ((~soc_basesoc_sdram_interface_bank4_valid) & (~soc_basesoc_sdram_interface_bank4_lock));
assign soc_basesoc_sdram_interface_bank4_addr = vns_rhs_array_muxed24;
assign soc_basesoc_sdram_interface_bank4_we = vns_rhs_array_muxed25;
assign soc_basesoc_sdram_interface_bank4_valid = vns_rhs_array_muxed26;
assign vns_roundrobin5_request = {(((soc_basesoc_port_cmd_payload_addr[9:7] == 3'd5) & (~(((((((vns_locked5 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_basesoc_port_cmd_valid)};
assign vns_roundrobin5_ce = ((~soc_basesoc_sdram_interface_bank5_valid) & (~soc_basesoc_sdram_interface_bank5_lock));
assign soc_basesoc_sdram_interface_bank5_addr = vns_rhs_array_muxed27;
assign soc_basesoc_sdram_interface_bank5_we = vns_rhs_array_muxed28;
assign soc_basesoc_sdram_interface_bank5_valid = vns_rhs_array_muxed29;
assign vns_roundrobin6_request = {(((soc_basesoc_port_cmd_payload_addr[9:7] == 3'd6) & (~(((((((vns_locked6 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_basesoc_port_cmd_valid)};
assign vns_roundrobin6_ce = ((~soc_basesoc_sdram_interface_bank6_valid) & (~soc_basesoc_sdram_interface_bank6_lock));
assign soc_basesoc_sdram_interface_bank6_addr = vns_rhs_array_muxed30;
assign soc_basesoc_sdram_interface_bank6_we = vns_rhs_array_muxed31;
assign soc_basesoc_sdram_interface_bank6_valid = vns_rhs_array_muxed32;
assign vns_roundrobin7_request = {(((soc_basesoc_port_cmd_payload_addr[9:7] == 3'd7) & (~(((((((vns_locked7 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))))) & soc_basesoc_port_cmd_valid)};
assign vns_roundrobin7_ce = ((~soc_basesoc_sdram_interface_bank7_valid) & (~soc_basesoc_sdram_interface_bank7_lock));
assign soc_basesoc_sdram_interface_bank7_addr = vns_rhs_array_muxed33;
assign soc_basesoc_sdram_interface_bank7_we = vns_rhs_array_muxed34;
assign soc_basesoc_sdram_interface_bank7_valid = vns_rhs_array_muxed35;
assign soc_basesoc_port_cmd_ready = ((((((((1'd0 | (((vns_roundrobin0_grant == 1'd0) & ((soc_basesoc_port_cmd_payload_addr[9:7] == 1'd0) & (~(((((((vns_locked0 | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0)))))) & soc_basesoc_sdram_interface_bank0_ready)) | (((vns_roundrobin1_grant == 1'd0) & ((soc_basesoc_port_cmd_payload_addr[9:7] == 1'd1) & (~(((((((vns_locked1 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0)))))) & soc_basesoc_sdram_interface_bank1_ready)) | (((vns_roundrobin2_grant == 1'd0) & ((soc_basesoc_port_cmd_payload_addr[9:7] == 2'd2) & (~(((((((vns_locked2 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0)))))) & soc_basesoc_sdram_interface_bank2_ready)) | (((vns_roundrobin3_grant == 1'd0) & ((soc_basesoc_port_cmd_payload_addr[9:7] == 2'd3) & (~(((((((vns_locked3 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0)))))) & soc_basesoc_sdram_interface_bank3_ready)) | (((vns_roundrobin4_grant == 1'd0) & ((soc_basesoc_port_cmd_payload_addr[9:7] == 3'd4) & (~(((((((vns_locked4 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0)))))) & soc_basesoc_sdram_interface_bank4_ready)) | (((vns_roundrobin5_grant == 1'd0) & ((soc_basesoc_port_cmd_payload_addr[9:7] == 3'd5) & (~(((((((vns_locked5 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0)))))) & soc_basesoc_sdram_interface_bank5_ready)) | (((vns_roundrobin6_grant == 1'd0) & ((soc_basesoc_port_cmd_payload_addr[9:7] == 3'd6) & (~(((((((vns_locked6 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0)))))) & soc_basesoc_sdram_interface_bank6_ready)) | (((vns_roundrobin7_grant == 1'd0) & ((soc_basesoc_port_cmd_payload_addr[9:7] == 3'd7) & (~(((((((vns_locked7 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0)))))) & soc_basesoc_sdram_interface_bank7_ready));
assign soc_basesoc_port_wdata_ready = vns_new_master_wdata_ready2;
assign soc_basesoc_port_rdata_valid = vns_new_master_rdata_valid9;
always @(*) begin
	soc_basesoc_sdram_interface_wdata_we <= 16'd0;
	soc_basesoc_sdram_interface_wdata <= 128'd0;
	case ({vns_new_master_wdata_ready2})
		1'd1: begin
			soc_basesoc_sdram_interface_wdata <= soc_basesoc_port_wdata_payload_data;
			soc_basesoc_sdram_interface_wdata_we <= soc_basesoc_port_wdata_payload_we;
		end
		default: begin
			soc_basesoc_sdram_interface_wdata <= 1'd0;
			soc_basesoc_sdram_interface_wdata_we <= 1'd0;
		end
	endcase
end
assign soc_basesoc_port_rdata_payload_data = soc_basesoc_sdram_interface_rdata;
assign vns_roundrobin0_grant = 1'd0;
assign vns_roundrobin1_grant = 1'd0;
assign vns_roundrobin2_grant = 1'd0;
assign vns_roundrobin3_grant = 1'd0;
assign vns_roundrobin4_grant = 1'd0;
assign vns_roundrobin5_grant = 1'd0;
assign vns_roundrobin6_grant = 1'd0;
assign vns_roundrobin7_grant = 1'd0;
assign soc_basesoc_data_port_adr = soc_basesoc_interface0_wb_sdram_adr[10:2];
always @(*) begin
	soc_basesoc_data_port_we <= 16'd0;
	soc_basesoc_data_port_dat_w <= 128'd0;
	if (soc_basesoc_write_from_slave) begin
		soc_basesoc_data_port_dat_w <= soc_basesoc_dat_r;
		soc_basesoc_data_port_we <= {16{1'd1}};
	end else begin
		soc_basesoc_data_port_dat_w <= {4{soc_basesoc_interface0_wb_sdram_dat_w}};
		if ((((soc_basesoc_interface0_wb_sdram_cyc & soc_basesoc_interface0_wb_sdram_stb) & soc_basesoc_interface0_wb_sdram_we) & soc_basesoc_interface0_wb_sdram_ack)) begin
			soc_basesoc_data_port_we <= {({4{(soc_basesoc_interface0_wb_sdram_adr[1:0] == 1'd0)}} & soc_basesoc_interface0_wb_sdram_sel), ({4{(soc_basesoc_interface0_wb_sdram_adr[1:0] == 1'd1)}} & soc_basesoc_interface0_wb_sdram_sel), ({4{(soc_basesoc_interface0_wb_sdram_adr[1:0] == 2'd2)}} & soc_basesoc_interface0_wb_sdram_sel), ({4{(soc_basesoc_interface0_wb_sdram_adr[1:0] == 2'd3)}} & soc_basesoc_interface0_wb_sdram_sel)};
		end
	end
end
assign soc_basesoc_dat_w = soc_basesoc_data_port_dat_r;
assign soc_basesoc_sel = 16'd65535;
always @(*) begin
	soc_basesoc_interface0_wb_sdram_dat_r <= 32'd0;
	case (soc_basesoc_adr_offset_r)
		1'd0: begin
			soc_basesoc_interface0_wb_sdram_dat_r <= soc_basesoc_data_port_dat_r[127:96];
		end
		1'd1: begin
			soc_basesoc_interface0_wb_sdram_dat_r <= soc_basesoc_data_port_dat_r[95:64];
		end
		2'd2: begin
			soc_basesoc_interface0_wb_sdram_dat_r <= soc_basesoc_data_port_dat_r[63:32];
		end
		default: begin
			soc_basesoc_interface0_wb_sdram_dat_r <= soc_basesoc_data_port_dat_r[31:0];
		end
	endcase
end
assign {soc_basesoc_tag_do_dirty, soc_basesoc_tag_do_tag} = soc_basesoc_tag_port_dat_r;
assign soc_basesoc_tag_port_dat_w = {soc_basesoc_tag_di_dirty, soc_basesoc_tag_di_tag};
assign soc_basesoc_tag_port_adr = soc_basesoc_interface0_wb_sdram_adr[10:2];
assign soc_basesoc_tag_di_tag = soc_basesoc_interface0_wb_sdram_adr[29:11];
assign soc_basesoc_adr = {soc_basesoc_tag_do_tag, soc_basesoc_interface0_wb_sdram_adr[10:2]};
always @(*) begin
	soc_basesoc_cyc <= 1'd0;
	soc_basesoc_write_from_slave <= 1'd0;
	soc_basesoc_stb <= 1'd0;
	soc_basesoc_tag_port_we <= 1'd0;
	soc_basesoc_we <= 1'd0;
	vns_fullmemorywe_next_state <= 3'd0;
	soc_basesoc_tag_di_dirty <= 1'd0;
	soc_basesoc_word_clr <= 1'd0;
	soc_basesoc_word_inc <= 1'd0;
	soc_basesoc_interface0_wb_sdram_ack <= 1'd0;
	vns_fullmemorywe_next_state <= vns_fullmemorywe_state;
	case (vns_fullmemorywe_state)
		1'd1: begin
			soc_basesoc_word_clr <= 1'd1;
			if ((soc_basesoc_tag_do_tag == soc_basesoc_interface0_wb_sdram_adr[29:11])) begin
				soc_basesoc_interface0_wb_sdram_ack <= 1'd1;
				if (soc_basesoc_interface0_wb_sdram_we) begin
					soc_basesoc_tag_di_dirty <= 1'd1;
					soc_basesoc_tag_port_we <= 1'd1;
				end
				vns_fullmemorywe_next_state <= 1'd0;
			end else begin
				if (soc_basesoc_tag_do_dirty) begin
					vns_fullmemorywe_next_state <= 2'd2;
				end else begin
					vns_fullmemorywe_next_state <= 2'd3;
				end
			end
		end
		2'd2: begin
			soc_basesoc_stb <= 1'd1;
			soc_basesoc_cyc <= 1'd1;
			soc_basesoc_we <= 1'd1;
			if (soc_basesoc_ack) begin
				soc_basesoc_word_inc <= 1'd1;
				if (1'd1) begin
					vns_fullmemorywe_next_state <= 2'd3;
				end
			end
		end
		2'd3: begin
			soc_basesoc_tag_port_we <= 1'd1;
			soc_basesoc_word_clr <= 1'd1;
			vns_fullmemorywe_next_state <= 3'd4;
		end
		3'd4: begin
			soc_basesoc_stb <= 1'd1;
			soc_basesoc_cyc <= 1'd1;
			soc_basesoc_we <= 1'd0;
			if (soc_basesoc_ack) begin
				soc_basesoc_write_from_slave <= 1'd1;
				soc_basesoc_word_inc <= 1'd1;
				if (1'd1) begin
					vns_fullmemorywe_next_state <= 1'd1;
				end else begin
					vns_fullmemorywe_next_state <= 3'd4;
				end
			end
		end
		default: begin
			if ((soc_basesoc_interface0_wb_sdram_cyc & soc_basesoc_interface0_wb_sdram_stb)) begin
				vns_fullmemorywe_next_state <= 1'd1;
			end
		end
	endcase
end
always @(*) begin
	soc_basesoc_port_cmd_payload_addr <= 24'd0;
	soc_basesoc_port_wdata_valid <= 1'd0;
	vns_litedramwishbone2native_next_state <= 2'd0;
	soc_basesoc_dat_r <= 128'd0;
	soc_basesoc_ack <= 1'd0;
	soc_basesoc_port_wdata_payload_data <= 128'd0;
	soc_basesoc_port_wdata_payload_we <= 16'd0;
	soc_basesoc_port_rdata_ready <= 1'd0;
	soc_basesoc_port_cmd_valid <= 1'd0;
	soc_basesoc_port_cmd_payload_we <= 1'd0;
	vns_litedramwishbone2native_next_state <= vns_litedramwishbone2native_state;
	case (vns_litedramwishbone2native_state)
		1'd1: begin
			soc_basesoc_port_cmd_valid <= 1'd1;
			soc_basesoc_port_cmd_payload_addr <= soc_basesoc_adr;
			soc_basesoc_port_cmd_payload_we <= soc_basesoc_we;
			if (soc_basesoc_port_cmd_ready) begin
				if (soc_basesoc_we) begin
					vns_litedramwishbone2native_next_state <= 2'd2;
				end else begin
					vns_litedramwishbone2native_next_state <= 2'd3;
				end
			end
		end
		2'd2: begin
			soc_basesoc_port_wdata_valid <= 1'd1;
			soc_basesoc_port_wdata_payload_we <= soc_basesoc_sel;
			soc_basesoc_port_wdata_payload_data <= soc_basesoc_dat_w;
			if (soc_basesoc_port_wdata_ready) begin
				soc_basesoc_ack <= 1'd1;
				vns_litedramwishbone2native_next_state <= 1'd0;
			end
		end
		2'd3: begin
			soc_basesoc_port_rdata_ready <= 1'd1;
			if (soc_basesoc_port_rdata_valid) begin
				soc_basesoc_dat_r <= soc_basesoc_port_rdata_payload_data;
				soc_basesoc_ack <= 1'd1;
				vns_litedramwishbone2native_next_state <= 1'd0;
			end
		end
		default: begin
			if ((soc_basesoc_cyc & soc_basesoc_stb)) begin
				vns_litedramwishbone2native_next_state <= 1'd1;
			end
		end
	endcase
end
assign soc_basesoc_interface0_wb_sdram_adr = vns_rhs_array_muxed36;
assign soc_basesoc_interface0_wb_sdram_dat_w = vns_rhs_array_muxed37;
assign soc_basesoc_interface0_wb_sdram_sel = vns_rhs_array_muxed38;
assign soc_basesoc_interface0_wb_sdram_cyc = vns_rhs_array_muxed39;
assign soc_basesoc_interface0_wb_sdram_stb = vns_rhs_array_muxed40;
assign soc_basesoc_interface0_wb_sdram_we = vns_rhs_array_muxed41;
assign soc_basesoc_interface0_wb_sdram_cti = vns_rhs_array_muxed42;
assign soc_basesoc_interface0_wb_sdram_bte = vns_rhs_array_muxed43;
assign soc_basesoc_interface1_wb_sdram_dat_r = soc_basesoc_interface0_wb_sdram_dat_r;
assign soc_basesoc_interface1_wb_sdram_ack = (soc_basesoc_interface0_wb_sdram_ack & (vns_wb_sdram_con_grant == 1'd0));
assign soc_basesoc_interface1_wb_sdram_err = (soc_basesoc_interface0_wb_sdram_err & (vns_wb_sdram_con_grant == 1'd0));
assign vns_wb_sdram_con_request = {soc_basesoc_interface1_wb_sdram_cyc};
assign vns_wb_sdram_con_grant = 1'd0;
assign vns_basesoc_shared_adr = vns_rhs_array_muxed44;
assign vns_basesoc_shared_dat_w = vns_rhs_array_muxed45;
assign vns_basesoc_shared_sel = vns_rhs_array_muxed46;
assign vns_basesoc_shared_cyc = vns_rhs_array_muxed47;
assign vns_basesoc_shared_stb = vns_rhs_array_muxed48;
assign vns_basesoc_shared_we = vns_rhs_array_muxed49;
assign vns_basesoc_shared_cti = vns_rhs_array_muxed50;
assign vns_basesoc_shared_bte = vns_rhs_array_muxed51;
assign soc_basesoc_lm32_ibus_dat_r = vns_basesoc_shared_dat_r;
assign soc_basesoc_lm32_dbus_dat_r = vns_basesoc_shared_dat_r;
assign soc_basesoc_lm32_ibus_ack = (vns_basesoc_shared_ack & (vns_basesoc_grant == 1'd0));
assign soc_basesoc_lm32_dbus_ack = (vns_basesoc_shared_ack & (vns_basesoc_grant == 1'd1));
assign soc_basesoc_lm32_ibus_err = (vns_basesoc_shared_err & (vns_basesoc_grant == 1'd0));
assign soc_basesoc_lm32_dbus_err = (vns_basesoc_shared_err & (vns_basesoc_grant == 1'd1));
assign vns_basesoc_request = {soc_basesoc_lm32_dbus_cyc, soc_basesoc_lm32_ibus_cyc};
always @(*) begin
	vns_basesoc_slave_sel <= 5'd0;
	vns_basesoc_slave_sel[0] <= (vns_basesoc_shared_adr[28:26] == 1'd0);
	vns_basesoc_slave_sel[1] <= (vns_basesoc_shared_adr[28:26] == 1'd1);
	vns_basesoc_slave_sel[2] <= (vns_basesoc_shared_adr[28:26] == 3'd6);
	vns_basesoc_slave_sel[3] <= (vns_basesoc_shared_adr[28:26] == 2'd2);
	vns_basesoc_slave_sel[4] <= (vns_basesoc_shared_adr[28:26] == 3'd4);
end
assign soc_basesoc_rom_bus_adr = vns_basesoc_shared_adr;
assign soc_basesoc_rom_bus_dat_w = vns_basesoc_shared_dat_w;
assign soc_basesoc_rom_bus_sel = vns_basesoc_shared_sel;
assign soc_basesoc_rom_bus_stb = vns_basesoc_shared_stb;
assign soc_basesoc_rom_bus_we = vns_basesoc_shared_we;
assign soc_basesoc_rom_bus_cti = vns_basesoc_shared_cti;
assign soc_basesoc_rom_bus_bte = vns_basesoc_shared_bte;
assign soc_basesoc_sram_bus_adr = vns_basesoc_shared_adr;
assign soc_basesoc_sram_bus_dat_w = vns_basesoc_shared_dat_w;
assign soc_basesoc_sram_bus_sel = vns_basesoc_shared_sel;
assign soc_basesoc_sram_bus_stb = vns_basesoc_shared_stb;
assign soc_basesoc_sram_bus_we = vns_basesoc_shared_we;
assign soc_basesoc_sram_bus_cti = vns_basesoc_shared_cti;
assign soc_basesoc_sram_bus_bte = vns_basesoc_shared_bte;
assign soc_basesoc_bus_wishbone_adr = vns_basesoc_shared_adr;
assign soc_basesoc_bus_wishbone_dat_w = vns_basesoc_shared_dat_w;
assign soc_basesoc_bus_wishbone_sel = vns_basesoc_shared_sel;
assign soc_basesoc_bus_wishbone_stb = vns_basesoc_shared_stb;
assign soc_basesoc_bus_wishbone_we = vns_basesoc_shared_we;
assign soc_basesoc_bus_wishbone_cti = vns_basesoc_shared_cti;
assign soc_basesoc_bus_wishbone_bte = vns_basesoc_shared_bte;
assign soc_spiflash_bus_adr = vns_basesoc_shared_adr;
assign soc_spiflash_bus_dat_w = vns_basesoc_shared_dat_w;
assign soc_spiflash_bus_sel = vns_basesoc_shared_sel;
assign soc_spiflash_bus_stb = vns_basesoc_shared_stb;
assign soc_spiflash_bus_we = vns_basesoc_shared_we;
assign soc_spiflash_bus_cti = vns_basesoc_shared_cti;
assign soc_spiflash_bus_bte = vns_basesoc_shared_bte;
assign soc_basesoc_interface1_wb_sdram_adr = vns_basesoc_shared_adr;
assign soc_basesoc_interface1_wb_sdram_dat_w = vns_basesoc_shared_dat_w;
assign soc_basesoc_interface1_wb_sdram_sel = vns_basesoc_shared_sel;
assign soc_basesoc_interface1_wb_sdram_stb = vns_basesoc_shared_stb;
assign soc_basesoc_interface1_wb_sdram_we = vns_basesoc_shared_we;
assign soc_basesoc_interface1_wb_sdram_cti = vns_basesoc_shared_cti;
assign soc_basesoc_interface1_wb_sdram_bte = vns_basesoc_shared_bte;
assign soc_basesoc_rom_bus_cyc = (vns_basesoc_shared_cyc & vns_basesoc_slave_sel[0]);
assign soc_basesoc_sram_bus_cyc = (vns_basesoc_shared_cyc & vns_basesoc_slave_sel[1]);
assign soc_basesoc_bus_wishbone_cyc = (vns_basesoc_shared_cyc & vns_basesoc_slave_sel[2]);
assign soc_spiflash_bus_cyc = (vns_basesoc_shared_cyc & vns_basesoc_slave_sel[3]);
assign soc_basesoc_interface1_wb_sdram_cyc = (vns_basesoc_shared_cyc & vns_basesoc_slave_sel[4]);
assign vns_basesoc_shared_err = ((((soc_basesoc_rom_bus_err | soc_basesoc_sram_bus_err) | soc_basesoc_bus_wishbone_err) | soc_spiflash_bus_err) | soc_basesoc_interface1_wb_sdram_err);
assign vns_basesoc_wait = ((vns_basesoc_shared_stb & vns_basesoc_shared_cyc) & (~vns_basesoc_shared_ack));
always @(*) begin
	vns_basesoc_shared_dat_r <= 32'd0;
	vns_basesoc_error <= 1'd0;
	vns_basesoc_shared_ack <= 1'd0;
	vns_basesoc_shared_ack <= ((((soc_basesoc_rom_bus_ack | soc_basesoc_sram_bus_ack) | soc_basesoc_bus_wishbone_ack) | soc_spiflash_bus_ack) | soc_basesoc_interface1_wb_sdram_ack);
	vns_basesoc_shared_dat_r <= ((((({32{vns_basesoc_slave_sel_r[0]}} & soc_basesoc_rom_bus_dat_r) | ({32{vns_basesoc_slave_sel_r[1]}} & soc_basesoc_sram_bus_dat_r)) | ({32{vns_basesoc_slave_sel_r[2]}} & soc_basesoc_bus_wishbone_dat_r)) | ({32{vns_basesoc_slave_sel_r[3]}} & soc_spiflash_bus_dat_r)) | ({32{vns_basesoc_slave_sel_r[4]}} & soc_basesoc_interface1_wb_sdram_dat_r));
	if (vns_basesoc_done) begin
		vns_basesoc_shared_dat_r <= 32'd4294967295;
		vns_basesoc_shared_ack <= 1'd1;
		vns_basesoc_error <= 1'd1;
	end
end
assign vns_basesoc_done = (vns_basesoc_count == 1'd0);
assign vns_basesoc_csrbank0_sel = (vns_basesoc_interface0_bank_bus_adr[13:9] == 4'd13);
assign vns_basesoc_csrbank0_leds_out0_r = vns_basesoc_interface0_bank_bus_dat_w[3:0];
assign vns_basesoc_csrbank0_leds_out0_re = ((vns_basesoc_csrbank0_sel & vns_basesoc_interface0_bank_bus_we) & (vns_basesoc_interface0_bank_bus_adr[2:0] == 1'd0));
assign vns_basesoc_csrbank0_switches_in_r = vns_basesoc_interface0_bank_bus_dat_w[3:0];
assign vns_basesoc_csrbank0_switches_in_re = ((vns_basesoc_csrbank0_sel & vns_basesoc_interface0_bank_bus_we) & (vns_basesoc_interface0_bank_bus_adr[2:0] == 1'd1));
assign soc_eventmanager_status_r = vns_basesoc_interface0_bank_bus_dat_w[3:0];
assign soc_eventmanager_status_re = ((vns_basesoc_csrbank0_sel & vns_basesoc_interface0_bank_bus_we) & (vns_basesoc_interface0_bank_bus_adr[2:0] == 2'd2));
assign soc_eventmanager_pending_r = vns_basesoc_interface0_bank_bus_dat_w[3:0];
assign soc_eventmanager_pending_re = ((vns_basesoc_csrbank0_sel & vns_basesoc_interface0_bank_bus_we) & (vns_basesoc_interface0_bank_bus_adr[2:0] == 2'd3));
assign vns_basesoc_csrbank0_buttons_ev_enable0_r = vns_basesoc_interface0_bank_bus_dat_w[3:0];
assign vns_basesoc_csrbank0_buttons_ev_enable0_re = ((vns_basesoc_csrbank0_sel & vns_basesoc_interface0_bank_bus_we) & (vns_basesoc_interface0_bank_bus_adr[2:0] == 3'd4));
assign soc_leds_storage = soc_leds_storage_full[3:0];
assign vns_basesoc_csrbank0_leds_out0_w = soc_leds_storage_full[3:0];
assign vns_basesoc_csrbank0_switches_in_w = soc_switches_status[3:0];
assign soc_eventmanager_storage = soc_eventmanager_storage_full[3:0];
assign vns_basesoc_csrbank0_buttons_ev_enable0_w = soc_eventmanager_storage_full[3:0];
assign vns_basesoc_csrbank1_sel = (vns_basesoc_interface1_bank_bus_adr[13:9] == 1'd0);
assign soc_basesoc_ctrl_reset_reset_r = vns_basesoc_interface1_bank_bus_dat_w[0];
assign soc_basesoc_ctrl_reset_reset_re = ((vns_basesoc_csrbank1_sel & vns_basesoc_interface1_bank_bus_we) & (vns_basesoc_interface1_bank_bus_adr[3:0] == 1'd0));
assign vns_basesoc_csrbank1_scratch3_r = vns_basesoc_interface1_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank1_scratch3_re = ((vns_basesoc_csrbank1_sel & vns_basesoc_interface1_bank_bus_we) & (vns_basesoc_interface1_bank_bus_adr[3:0] == 1'd1));
assign vns_basesoc_csrbank1_scratch2_r = vns_basesoc_interface1_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank1_scratch2_re = ((vns_basesoc_csrbank1_sel & vns_basesoc_interface1_bank_bus_we) & (vns_basesoc_interface1_bank_bus_adr[3:0] == 2'd2));
assign vns_basesoc_csrbank1_scratch1_r = vns_basesoc_interface1_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank1_scratch1_re = ((vns_basesoc_csrbank1_sel & vns_basesoc_interface1_bank_bus_we) & (vns_basesoc_interface1_bank_bus_adr[3:0] == 2'd3));
assign vns_basesoc_csrbank1_scratch0_r = vns_basesoc_interface1_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank1_scratch0_re = ((vns_basesoc_csrbank1_sel & vns_basesoc_interface1_bank_bus_we) & (vns_basesoc_interface1_bank_bus_adr[3:0] == 3'd4));
assign vns_basesoc_csrbank1_bus_errors3_r = vns_basesoc_interface1_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank1_bus_errors3_re = ((vns_basesoc_csrbank1_sel & vns_basesoc_interface1_bank_bus_we) & (vns_basesoc_interface1_bank_bus_adr[3:0] == 3'd5));
assign vns_basesoc_csrbank1_bus_errors2_r = vns_basesoc_interface1_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank1_bus_errors2_re = ((vns_basesoc_csrbank1_sel & vns_basesoc_interface1_bank_bus_we) & (vns_basesoc_interface1_bank_bus_adr[3:0] == 3'd6));
assign vns_basesoc_csrbank1_bus_errors1_r = vns_basesoc_interface1_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank1_bus_errors1_re = ((vns_basesoc_csrbank1_sel & vns_basesoc_interface1_bank_bus_we) & (vns_basesoc_interface1_bank_bus_adr[3:0] == 3'd7));
assign vns_basesoc_csrbank1_bus_errors0_r = vns_basesoc_interface1_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank1_bus_errors0_re = ((vns_basesoc_csrbank1_sel & vns_basesoc_interface1_bank_bus_we) & (vns_basesoc_interface1_bank_bus_adr[3:0] == 4'd8));
assign soc_basesoc_ctrl_storage = soc_basesoc_ctrl_storage_full[31:0];
assign vns_basesoc_csrbank1_scratch3_w = soc_basesoc_ctrl_storage_full[31:24];
assign vns_basesoc_csrbank1_scratch2_w = soc_basesoc_ctrl_storage_full[23:16];
assign vns_basesoc_csrbank1_scratch1_w = soc_basesoc_ctrl_storage_full[15:8];
assign vns_basesoc_csrbank1_scratch0_w = soc_basesoc_ctrl_storage_full[7:0];
assign vns_basesoc_csrbank1_bus_errors3_w = soc_basesoc_ctrl_bus_errors_status[31:24];
assign vns_basesoc_csrbank1_bus_errors2_w = soc_basesoc_ctrl_bus_errors_status[23:16];
assign vns_basesoc_csrbank1_bus_errors1_w = soc_basesoc_ctrl_bus_errors_status[15:8];
assign vns_basesoc_csrbank1_bus_errors0_w = soc_basesoc_ctrl_bus_errors_status[7:0];
assign vns_basesoc_csrbank2_sel = (vns_basesoc_interface2_bank_bus_adr[13:9] == 4'd11);
assign vns_basesoc_csrbank2_half_sys8x_taps0_r = vns_basesoc_interface2_bank_bus_dat_w[3:0];
assign vns_basesoc_csrbank2_half_sys8x_taps0_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[2:0] == 1'd0));
assign vns_basesoc_csrbank2_dly_sel0_r = vns_basesoc_interface2_bank_bus_dat_w[1:0];
assign vns_basesoc_csrbank2_dly_sel0_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[2:0] == 1'd1));
assign soc_a7ddrphy_rdly_dq_rst_r = vns_basesoc_interface2_bank_bus_dat_w[0];
assign soc_a7ddrphy_rdly_dq_rst_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[2:0] == 2'd2));
assign soc_a7ddrphy_rdly_dq_inc_r = vns_basesoc_interface2_bank_bus_dat_w[0];
assign soc_a7ddrphy_rdly_dq_inc_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[2:0] == 2'd3));
assign soc_a7ddrphy_rdly_dq_bitslip_rst_r = vns_basesoc_interface2_bank_bus_dat_w[0];
assign soc_a7ddrphy_rdly_dq_bitslip_rst_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[2:0] == 3'd4));
assign soc_a7ddrphy_rdly_dq_bitslip_r = vns_basesoc_interface2_bank_bus_dat_w[0];
assign soc_a7ddrphy_rdly_dq_bitslip_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[2:0] == 3'd5));
assign soc_a7ddrphy_half_sys8x_taps_storage = soc_a7ddrphy_half_sys8x_taps_storage_full[3:0];
assign vns_basesoc_csrbank2_half_sys8x_taps0_w = soc_a7ddrphy_half_sys8x_taps_storage_full[3:0];
assign soc_a7ddrphy_dly_sel_storage = soc_a7ddrphy_dly_sel_storage_full[1:0];
assign vns_basesoc_csrbank2_dly_sel0_w = soc_a7ddrphy_dly_sel_storage_full[1:0];
assign vns_basesoc_sel = (vns_basesoc_sram_bus_adr[13:9] == 3'd4);
always @(*) begin
	vns_basesoc_sram_bus_dat_r <= 8'd0;
	if (vns_basesoc_sel_r) begin
		vns_basesoc_sram_bus_dat_r <= vns_basesoc_dat_r;
	end
end
assign vns_basesoc_adr = vns_basesoc_sram_bus_adr[2:0];
assign vns_basesoc_csrbank3_sel = (vns_basesoc_interface3_bank_bus_adr[13:9] == 4'd12);
assign vns_basesoc_csrbank3_dna_id7_r = vns_basesoc_interface3_bank_bus_dat_w[0];
assign vns_basesoc_csrbank3_dna_id7_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 1'd0));
assign vns_basesoc_csrbank3_dna_id6_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_dna_id6_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 1'd1));
assign vns_basesoc_csrbank3_dna_id5_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_dna_id5_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 2'd2));
assign vns_basesoc_csrbank3_dna_id4_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_dna_id4_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 2'd3));
assign vns_basesoc_csrbank3_dna_id3_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_dna_id3_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 3'd4));
assign vns_basesoc_csrbank3_dna_id2_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_dna_id2_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 3'd5));
assign vns_basesoc_csrbank3_dna_id1_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_dna_id1_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 3'd6));
assign vns_basesoc_csrbank3_dna_id0_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_dna_id0_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 3'd7));
assign vns_basesoc_csrbank3_git_commit19_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_git_commit19_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 4'd8));
assign vns_basesoc_csrbank3_git_commit18_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_git_commit18_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 4'd9));
assign vns_basesoc_csrbank3_git_commit17_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_git_commit17_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 4'd10));
assign vns_basesoc_csrbank3_git_commit16_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_git_commit16_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 4'd11));
assign vns_basesoc_csrbank3_git_commit15_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_git_commit15_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 4'd12));
assign vns_basesoc_csrbank3_git_commit14_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_git_commit14_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 4'd13));
assign vns_basesoc_csrbank3_git_commit13_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_git_commit13_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 4'd14));
assign vns_basesoc_csrbank3_git_commit12_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_git_commit12_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 4'd15));
assign vns_basesoc_csrbank3_git_commit11_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_git_commit11_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 5'd16));
assign vns_basesoc_csrbank3_git_commit10_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_git_commit10_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 5'd17));
assign vns_basesoc_csrbank3_git_commit9_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_git_commit9_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 5'd18));
assign vns_basesoc_csrbank3_git_commit8_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_git_commit8_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 5'd19));
assign vns_basesoc_csrbank3_git_commit7_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_git_commit7_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 5'd20));
assign vns_basesoc_csrbank3_git_commit6_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_git_commit6_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 5'd21));
assign vns_basesoc_csrbank3_git_commit5_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_git_commit5_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 5'd22));
assign vns_basesoc_csrbank3_git_commit4_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_git_commit4_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 5'd23));
assign vns_basesoc_csrbank3_git_commit3_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_git_commit3_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 5'd24));
assign vns_basesoc_csrbank3_git_commit2_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_git_commit2_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 5'd25));
assign vns_basesoc_csrbank3_git_commit1_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_git_commit1_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 5'd26));
assign vns_basesoc_csrbank3_git_commit0_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_git_commit0_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 5'd27));
assign vns_basesoc_csrbank3_platform_platform7_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_platform_platform7_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 5'd28));
assign vns_basesoc_csrbank3_platform_platform6_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_platform_platform6_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 5'd29));
assign vns_basesoc_csrbank3_platform_platform5_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_platform_platform5_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 5'd30));
assign vns_basesoc_csrbank3_platform_platform4_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_platform_platform4_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 5'd31));
assign vns_basesoc_csrbank3_platform_platform3_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_platform_platform3_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 6'd32));
assign vns_basesoc_csrbank3_platform_platform2_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_platform_platform2_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 6'd33));
assign vns_basesoc_csrbank3_platform_platform1_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_platform_platform1_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 6'd34));
assign vns_basesoc_csrbank3_platform_platform0_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_platform_platform0_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 6'd35));
assign vns_basesoc_csrbank3_platform_target7_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_platform_target7_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 6'd36));
assign vns_basesoc_csrbank3_platform_target6_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_platform_target6_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 6'd37));
assign vns_basesoc_csrbank3_platform_target5_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_platform_target5_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 6'd38));
assign vns_basesoc_csrbank3_platform_target4_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_platform_target4_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 6'd39));
assign vns_basesoc_csrbank3_platform_target3_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_platform_target3_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 6'd40));
assign vns_basesoc_csrbank3_platform_target2_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_platform_target2_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 6'd41));
assign vns_basesoc_csrbank3_platform_target1_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_platform_target1_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 6'd42));
assign vns_basesoc_csrbank3_platform_target0_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_platform_target0_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 6'd43));
assign vns_basesoc_csrbank3_xadc_temperature1_r = vns_basesoc_interface3_bank_bus_dat_w[3:0];
assign vns_basesoc_csrbank3_xadc_temperature1_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 6'd44));
assign vns_basesoc_csrbank3_xadc_temperature0_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_xadc_temperature0_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 6'd45));
assign vns_basesoc_csrbank3_xadc_vccint1_r = vns_basesoc_interface3_bank_bus_dat_w[3:0];
assign vns_basesoc_csrbank3_xadc_vccint1_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 6'd46));
assign vns_basesoc_csrbank3_xadc_vccint0_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_xadc_vccint0_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 6'd47));
assign vns_basesoc_csrbank3_xadc_vccaux1_r = vns_basesoc_interface3_bank_bus_dat_w[3:0];
assign vns_basesoc_csrbank3_xadc_vccaux1_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 6'd48));
assign vns_basesoc_csrbank3_xadc_vccaux0_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_xadc_vccaux0_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 6'd49));
assign vns_basesoc_csrbank3_xadc_vccbram1_r = vns_basesoc_interface3_bank_bus_dat_w[3:0];
assign vns_basesoc_csrbank3_xadc_vccbram1_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 6'd50));
assign vns_basesoc_csrbank3_xadc_vccbram0_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_xadc_vccbram0_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[5:0] == 6'd51));
assign vns_basesoc_csrbank3_dna_id7_w = soc_dna_status[56];
assign vns_basesoc_csrbank3_dna_id6_w = soc_dna_status[55:48];
assign vns_basesoc_csrbank3_dna_id5_w = soc_dna_status[47:40];
assign vns_basesoc_csrbank3_dna_id4_w = soc_dna_status[39:32];
assign vns_basesoc_csrbank3_dna_id3_w = soc_dna_status[31:24];
assign vns_basesoc_csrbank3_dna_id2_w = soc_dna_status[23:16];
assign vns_basesoc_csrbank3_dna_id1_w = soc_dna_status[15:8];
assign vns_basesoc_csrbank3_dna_id0_w = soc_dna_status[7:0];
assign vns_basesoc_csrbank3_git_commit19_w = soc_git_status[159:152];
assign vns_basesoc_csrbank3_git_commit18_w = soc_git_status[151:144];
assign vns_basesoc_csrbank3_git_commit17_w = soc_git_status[143:136];
assign vns_basesoc_csrbank3_git_commit16_w = soc_git_status[135:128];
assign vns_basesoc_csrbank3_git_commit15_w = soc_git_status[127:120];
assign vns_basesoc_csrbank3_git_commit14_w = soc_git_status[119:112];
assign vns_basesoc_csrbank3_git_commit13_w = soc_git_status[111:104];
assign vns_basesoc_csrbank3_git_commit12_w = soc_git_status[103:96];
assign vns_basesoc_csrbank3_git_commit11_w = soc_git_status[95:88];
assign vns_basesoc_csrbank3_git_commit10_w = soc_git_status[87:80];
assign vns_basesoc_csrbank3_git_commit9_w = soc_git_status[79:72];
assign vns_basesoc_csrbank3_git_commit8_w = soc_git_status[71:64];
assign vns_basesoc_csrbank3_git_commit7_w = soc_git_status[63:56];
assign vns_basesoc_csrbank3_git_commit6_w = soc_git_status[55:48];
assign vns_basesoc_csrbank3_git_commit5_w = soc_git_status[47:40];
assign vns_basesoc_csrbank3_git_commit4_w = soc_git_status[39:32];
assign vns_basesoc_csrbank3_git_commit3_w = soc_git_status[31:24];
assign vns_basesoc_csrbank3_git_commit2_w = soc_git_status[23:16];
assign vns_basesoc_csrbank3_git_commit1_w = soc_git_status[15:8];
assign vns_basesoc_csrbank3_git_commit0_w = soc_git_status[7:0];
assign vns_basesoc_csrbank3_platform_platform7_w = soc_platform_status[63:56];
assign vns_basesoc_csrbank3_platform_platform6_w = soc_platform_status[55:48];
assign vns_basesoc_csrbank3_platform_platform5_w = soc_platform_status[47:40];
assign vns_basesoc_csrbank3_platform_platform4_w = soc_platform_status[39:32];
assign vns_basesoc_csrbank3_platform_platform3_w = soc_platform_status[31:24];
assign vns_basesoc_csrbank3_platform_platform2_w = soc_platform_status[23:16];
assign vns_basesoc_csrbank3_platform_platform1_w = soc_platform_status[15:8];
assign vns_basesoc_csrbank3_platform_platform0_w = soc_platform_status[7:0];
assign vns_basesoc_csrbank3_platform_target7_w = soc_target_status[63:56];
assign vns_basesoc_csrbank3_platform_target6_w = soc_target_status[55:48];
assign vns_basesoc_csrbank3_platform_target5_w = soc_target_status[47:40];
assign vns_basesoc_csrbank3_platform_target4_w = soc_target_status[39:32];
assign vns_basesoc_csrbank3_platform_target3_w = soc_target_status[31:24];
assign vns_basesoc_csrbank3_platform_target2_w = soc_target_status[23:16];
assign vns_basesoc_csrbank3_platform_target1_w = soc_target_status[15:8];
assign vns_basesoc_csrbank3_platform_target0_w = soc_target_status[7:0];
assign vns_basesoc_csrbank3_xadc_temperature1_w = soc_temperature_status[11:8];
assign vns_basesoc_csrbank3_xadc_temperature0_w = soc_temperature_status[7:0];
assign vns_basesoc_csrbank3_xadc_vccint1_w = soc_vccint_status[11:8];
assign vns_basesoc_csrbank3_xadc_vccint0_w = soc_vccint_status[7:0];
assign vns_basesoc_csrbank3_xadc_vccaux1_w = soc_vccaux_status[11:8];
assign vns_basesoc_csrbank3_xadc_vccaux0_w = soc_vccaux_status[7:0];
assign vns_basesoc_csrbank3_xadc_vccbram1_w = soc_vccbram_status[11:8];
assign vns_basesoc_csrbank3_xadc_vccbram0_w = soc_vccbram_status[7:0];
assign vns_basesoc_csrbank4_sel = (vns_basesoc_interface4_bank_bus_adr[13:9] == 4'd8);
assign vns_basesoc_csrbank4_dfii_control0_r = vns_basesoc_interface4_bank_bus_dat_w[3:0];
assign vns_basesoc_csrbank4_dfii_control0_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 1'd0));
assign vns_basesoc_csrbank4_dfii_pi0_command0_r = vns_basesoc_interface4_bank_bus_dat_w[5:0];
assign vns_basesoc_csrbank4_dfii_pi0_command0_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 1'd1));
assign soc_basesoc_sdram_phaseinjector0_command_issue_r = vns_basesoc_interface4_bank_bus_dat_w[0];
assign soc_basesoc_sdram_phaseinjector0_command_issue_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 2'd2));
assign vns_basesoc_csrbank4_dfii_pi0_address1_r = vns_basesoc_interface4_bank_bus_dat_w[5:0];
assign vns_basesoc_csrbank4_dfii_pi0_address1_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 2'd3));
assign vns_basesoc_csrbank4_dfii_pi0_address0_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi0_address0_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 3'd4));
assign vns_basesoc_csrbank4_dfii_pi0_baddress0_r = vns_basesoc_interface4_bank_bus_dat_w[2:0];
assign vns_basesoc_csrbank4_dfii_pi0_baddress0_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 3'd5));
assign vns_basesoc_csrbank4_dfii_pi0_wrdata3_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi0_wrdata3_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 3'd6));
assign vns_basesoc_csrbank4_dfii_pi0_wrdata2_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi0_wrdata2_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 3'd7));
assign vns_basesoc_csrbank4_dfii_pi0_wrdata1_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi0_wrdata1_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 4'd8));
assign vns_basesoc_csrbank4_dfii_pi0_wrdata0_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi0_wrdata0_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 4'd9));
assign vns_basesoc_csrbank4_dfii_pi0_rddata3_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi0_rddata3_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 4'd10));
assign vns_basesoc_csrbank4_dfii_pi0_rddata2_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi0_rddata2_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 4'd11));
assign vns_basesoc_csrbank4_dfii_pi0_rddata1_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi0_rddata1_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 4'd12));
assign vns_basesoc_csrbank4_dfii_pi0_rddata0_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi0_rddata0_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 4'd13));
assign vns_basesoc_csrbank4_dfii_pi1_command0_r = vns_basesoc_interface4_bank_bus_dat_w[5:0];
assign vns_basesoc_csrbank4_dfii_pi1_command0_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 4'd14));
assign soc_basesoc_sdram_phaseinjector1_command_issue_r = vns_basesoc_interface4_bank_bus_dat_w[0];
assign soc_basesoc_sdram_phaseinjector1_command_issue_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 4'd15));
assign vns_basesoc_csrbank4_dfii_pi1_address1_r = vns_basesoc_interface4_bank_bus_dat_w[5:0];
assign vns_basesoc_csrbank4_dfii_pi1_address1_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 5'd16));
assign vns_basesoc_csrbank4_dfii_pi1_address0_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi1_address0_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 5'd17));
assign vns_basesoc_csrbank4_dfii_pi1_baddress0_r = vns_basesoc_interface4_bank_bus_dat_w[2:0];
assign vns_basesoc_csrbank4_dfii_pi1_baddress0_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 5'd18));
assign vns_basesoc_csrbank4_dfii_pi1_wrdata3_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi1_wrdata3_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 5'd19));
assign vns_basesoc_csrbank4_dfii_pi1_wrdata2_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi1_wrdata2_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 5'd20));
assign vns_basesoc_csrbank4_dfii_pi1_wrdata1_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi1_wrdata1_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 5'd21));
assign vns_basesoc_csrbank4_dfii_pi1_wrdata0_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi1_wrdata0_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 5'd22));
assign vns_basesoc_csrbank4_dfii_pi1_rddata3_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi1_rddata3_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 5'd23));
assign vns_basesoc_csrbank4_dfii_pi1_rddata2_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi1_rddata2_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 5'd24));
assign vns_basesoc_csrbank4_dfii_pi1_rddata1_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi1_rddata1_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 5'd25));
assign vns_basesoc_csrbank4_dfii_pi1_rddata0_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi1_rddata0_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 5'd26));
assign vns_basesoc_csrbank4_dfii_pi2_command0_r = vns_basesoc_interface4_bank_bus_dat_w[5:0];
assign vns_basesoc_csrbank4_dfii_pi2_command0_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 5'd27));
assign soc_basesoc_sdram_phaseinjector2_command_issue_r = vns_basesoc_interface4_bank_bus_dat_w[0];
assign soc_basesoc_sdram_phaseinjector2_command_issue_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 5'd28));
assign vns_basesoc_csrbank4_dfii_pi2_address1_r = vns_basesoc_interface4_bank_bus_dat_w[5:0];
assign vns_basesoc_csrbank4_dfii_pi2_address1_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 5'd29));
assign vns_basesoc_csrbank4_dfii_pi2_address0_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi2_address0_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 5'd30));
assign vns_basesoc_csrbank4_dfii_pi2_baddress0_r = vns_basesoc_interface4_bank_bus_dat_w[2:0];
assign vns_basesoc_csrbank4_dfii_pi2_baddress0_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 5'd31));
assign vns_basesoc_csrbank4_dfii_pi2_wrdata3_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi2_wrdata3_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd32));
assign vns_basesoc_csrbank4_dfii_pi2_wrdata2_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi2_wrdata2_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd33));
assign vns_basesoc_csrbank4_dfii_pi2_wrdata1_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi2_wrdata1_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd34));
assign vns_basesoc_csrbank4_dfii_pi2_wrdata0_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi2_wrdata0_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd35));
assign vns_basesoc_csrbank4_dfii_pi2_rddata3_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi2_rddata3_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd36));
assign vns_basesoc_csrbank4_dfii_pi2_rddata2_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi2_rddata2_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd37));
assign vns_basesoc_csrbank4_dfii_pi2_rddata1_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi2_rddata1_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd38));
assign vns_basesoc_csrbank4_dfii_pi2_rddata0_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi2_rddata0_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd39));
assign vns_basesoc_csrbank4_dfii_pi3_command0_r = vns_basesoc_interface4_bank_bus_dat_w[5:0];
assign vns_basesoc_csrbank4_dfii_pi3_command0_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd40));
assign soc_basesoc_sdram_phaseinjector3_command_issue_r = vns_basesoc_interface4_bank_bus_dat_w[0];
assign soc_basesoc_sdram_phaseinjector3_command_issue_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd41));
assign vns_basesoc_csrbank4_dfii_pi3_address1_r = vns_basesoc_interface4_bank_bus_dat_w[5:0];
assign vns_basesoc_csrbank4_dfii_pi3_address1_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd42));
assign vns_basesoc_csrbank4_dfii_pi3_address0_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi3_address0_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd43));
assign vns_basesoc_csrbank4_dfii_pi3_baddress0_r = vns_basesoc_interface4_bank_bus_dat_w[2:0];
assign vns_basesoc_csrbank4_dfii_pi3_baddress0_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd44));
assign vns_basesoc_csrbank4_dfii_pi3_wrdata3_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi3_wrdata3_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd45));
assign vns_basesoc_csrbank4_dfii_pi3_wrdata2_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi3_wrdata2_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd46));
assign vns_basesoc_csrbank4_dfii_pi3_wrdata1_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi3_wrdata1_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd47));
assign vns_basesoc_csrbank4_dfii_pi3_wrdata0_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi3_wrdata0_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd48));
assign vns_basesoc_csrbank4_dfii_pi3_rddata3_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi3_rddata3_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd49));
assign vns_basesoc_csrbank4_dfii_pi3_rddata2_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi3_rddata2_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd50));
assign vns_basesoc_csrbank4_dfii_pi3_rddata1_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi3_rddata1_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd51));
assign vns_basesoc_csrbank4_dfii_pi3_rddata0_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_dfii_pi3_rddata0_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd52));
assign soc_basesoc_sdram_bandwidth_update_r = vns_basesoc_interface4_bank_bus_dat_w[0];
assign soc_basesoc_sdram_bandwidth_update_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd53));
assign vns_basesoc_csrbank4_controller_bandwidth_nreads2_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_controller_bandwidth_nreads2_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd54));
assign vns_basesoc_csrbank4_controller_bandwidth_nreads1_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_controller_bandwidth_nreads1_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd55));
assign vns_basesoc_csrbank4_controller_bandwidth_nreads0_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_controller_bandwidth_nreads0_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd56));
assign vns_basesoc_csrbank4_controller_bandwidth_nwrites2_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_controller_bandwidth_nwrites2_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd57));
assign vns_basesoc_csrbank4_controller_bandwidth_nwrites1_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_controller_bandwidth_nwrites1_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd58));
assign vns_basesoc_csrbank4_controller_bandwidth_nwrites0_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_controller_bandwidth_nwrites0_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd59));
assign vns_basesoc_csrbank4_controller_bandwidth_data_width_r = vns_basesoc_interface4_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank4_controller_bandwidth_data_width_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[5:0] == 6'd60));
assign soc_basesoc_sdram_storage = soc_basesoc_sdram_storage_full[3:0];
assign vns_basesoc_csrbank4_dfii_control0_w = soc_basesoc_sdram_storage_full[3:0];
assign soc_basesoc_sdram_phaseinjector0_command_storage = soc_basesoc_sdram_phaseinjector0_command_storage_full[5:0];
assign vns_basesoc_csrbank4_dfii_pi0_command0_w = soc_basesoc_sdram_phaseinjector0_command_storage_full[5:0];
assign soc_basesoc_sdram_phaseinjector0_address_storage = soc_basesoc_sdram_phaseinjector0_address_storage_full[13:0];
assign vns_basesoc_csrbank4_dfii_pi0_address1_w = soc_basesoc_sdram_phaseinjector0_address_storage_full[13:8];
assign vns_basesoc_csrbank4_dfii_pi0_address0_w = soc_basesoc_sdram_phaseinjector0_address_storage_full[7:0];
assign soc_basesoc_sdram_phaseinjector0_baddress_storage = soc_basesoc_sdram_phaseinjector0_baddress_storage_full[2:0];
assign vns_basesoc_csrbank4_dfii_pi0_baddress0_w = soc_basesoc_sdram_phaseinjector0_baddress_storage_full[2:0];
assign soc_basesoc_sdram_phaseinjector0_wrdata_storage = soc_basesoc_sdram_phaseinjector0_wrdata_storage_full[31:0];
assign vns_basesoc_csrbank4_dfii_pi0_wrdata3_w = soc_basesoc_sdram_phaseinjector0_wrdata_storage_full[31:24];
assign vns_basesoc_csrbank4_dfii_pi0_wrdata2_w = soc_basesoc_sdram_phaseinjector0_wrdata_storage_full[23:16];
assign vns_basesoc_csrbank4_dfii_pi0_wrdata1_w = soc_basesoc_sdram_phaseinjector0_wrdata_storage_full[15:8];
assign vns_basesoc_csrbank4_dfii_pi0_wrdata0_w = soc_basesoc_sdram_phaseinjector0_wrdata_storage_full[7:0];
assign vns_basesoc_csrbank4_dfii_pi0_rddata3_w = soc_basesoc_sdram_phaseinjector0_status[31:24];
assign vns_basesoc_csrbank4_dfii_pi0_rddata2_w = soc_basesoc_sdram_phaseinjector0_status[23:16];
assign vns_basesoc_csrbank4_dfii_pi0_rddata1_w = soc_basesoc_sdram_phaseinjector0_status[15:8];
assign vns_basesoc_csrbank4_dfii_pi0_rddata0_w = soc_basesoc_sdram_phaseinjector0_status[7:0];
assign soc_basesoc_sdram_phaseinjector1_command_storage = soc_basesoc_sdram_phaseinjector1_command_storage_full[5:0];
assign vns_basesoc_csrbank4_dfii_pi1_command0_w = soc_basesoc_sdram_phaseinjector1_command_storage_full[5:0];
assign soc_basesoc_sdram_phaseinjector1_address_storage = soc_basesoc_sdram_phaseinjector1_address_storage_full[13:0];
assign vns_basesoc_csrbank4_dfii_pi1_address1_w = soc_basesoc_sdram_phaseinjector1_address_storage_full[13:8];
assign vns_basesoc_csrbank4_dfii_pi1_address0_w = soc_basesoc_sdram_phaseinjector1_address_storage_full[7:0];
assign soc_basesoc_sdram_phaseinjector1_baddress_storage = soc_basesoc_sdram_phaseinjector1_baddress_storage_full[2:0];
assign vns_basesoc_csrbank4_dfii_pi1_baddress0_w = soc_basesoc_sdram_phaseinjector1_baddress_storage_full[2:0];
assign soc_basesoc_sdram_phaseinjector1_wrdata_storage = soc_basesoc_sdram_phaseinjector1_wrdata_storage_full[31:0];
assign vns_basesoc_csrbank4_dfii_pi1_wrdata3_w = soc_basesoc_sdram_phaseinjector1_wrdata_storage_full[31:24];
assign vns_basesoc_csrbank4_dfii_pi1_wrdata2_w = soc_basesoc_sdram_phaseinjector1_wrdata_storage_full[23:16];
assign vns_basesoc_csrbank4_dfii_pi1_wrdata1_w = soc_basesoc_sdram_phaseinjector1_wrdata_storage_full[15:8];
assign vns_basesoc_csrbank4_dfii_pi1_wrdata0_w = soc_basesoc_sdram_phaseinjector1_wrdata_storage_full[7:0];
assign vns_basesoc_csrbank4_dfii_pi1_rddata3_w = soc_basesoc_sdram_phaseinjector1_status[31:24];
assign vns_basesoc_csrbank4_dfii_pi1_rddata2_w = soc_basesoc_sdram_phaseinjector1_status[23:16];
assign vns_basesoc_csrbank4_dfii_pi1_rddata1_w = soc_basesoc_sdram_phaseinjector1_status[15:8];
assign vns_basesoc_csrbank4_dfii_pi1_rddata0_w = soc_basesoc_sdram_phaseinjector1_status[7:0];
assign soc_basesoc_sdram_phaseinjector2_command_storage = soc_basesoc_sdram_phaseinjector2_command_storage_full[5:0];
assign vns_basesoc_csrbank4_dfii_pi2_command0_w = soc_basesoc_sdram_phaseinjector2_command_storage_full[5:0];
assign soc_basesoc_sdram_phaseinjector2_address_storage = soc_basesoc_sdram_phaseinjector2_address_storage_full[13:0];
assign vns_basesoc_csrbank4_dfii_pi2_address1_w = soc_basesoc_sdram_phaseinjector2_address_storage_full[13:8];
assign vns_basesoc_csrbank4_dfii_pi2_address0_w = soc_basesoc_sdram_phaseinjector2_address_storage_full[7:0];
assign soc_basesoc_sdram_phaseinjector2_baddress_storage = soc_basesoc_sdram_phaseinjector2_baddress_storage_full[2:0];
assign vns_basesoc_csrbank4_dfii_pi2_baddress0_w = soc_basesoc_sdram_phaseinjector2_baddress_storage_full[2:0];
assign soc_basesoc_sdram_phaseinjector2_wrdata_storage = soc_basesoc_sdram_phaseinjector2_wrdata_storage_full[31:0];
assign vns_basesoc_csrbank4_dfii_pi2_wrdata3_w = soc_basesoc_sdram_phaseinjector2_wrdata_storage_full[31:24];
assign vns_basesoc_csrbank4_dfii_pi2_wrdata2_w = soc_basesoc_sdram_phaseinjector2_wrdata_storage_full[23:16];
assign vns_basesoc_csrbank4_dfii_pi2_wrdata1_w = soc_basesoc_sdram_phaseinjector2_wrdata_storage_full[15:8];
assign vns_basesoc_csrbank4_dfii_pi2_wrdata0_w = soc_basesoc_sdram_phaseinjector2_wrdata_storage_full[7:0];
assign vns_basesoc_csrbank4_dfii_pi2_rddata3_w = soc_basesoc_sdram_phaseinjector2_status[31:24];
assign vns_basesoc_csrbank4_dfii_pi2_rddata2_w = soc_basesoc_sdram_phaseinjector2_status[23:16];
assign vns_basesoc_csrbank4_dfii_pi2_rddata1_w = soc_basesoc_sdram_phaseinjector2_status[15:8];
assign vns_basesoc_csrbank4_dfii_pi2_rddata0_w = soc_basesoc_sdram_phaseinjector2_status[7:0];
assign soc_basesoc_sdram_phaseinjector3_command_storage = soc_basesoc_sdram_phaseinjector3_command_storage_full[5:0];
assign vns_basesoc_csrbank4_dfii_pi3_command0_w = soc_basesoc_sdram_phaseinjector3_command_storage_full[5:0];
assign soc_basesoc_sdram_phaseinjector3_address_storage = soc_basesoc_sdram_phaseinjector3_address_storage_full[13:0];
assign vns_basesoc_csrbank4_dfii_pi3_address1_w = soc_basesoc_sdram_phaseinjector3_address_storage_full[13:8];
assign vns_basesoc_csrbank4_dfii_pi3_address0_w = soc_basesoc_sdram_phaseinjector3_address_storage_full[7:0];
assign soc_basesoc_sdram_phaseinjector3_baddress_storage = soc_basesoc_sdram_phaseinjector3_baddress_storage_full[2:0];
assign vns_basesoc_csrbank4_dfii_pi3_baddress0_w = soc_basesoc_sdram_phaseinjector3_baddress_storage_full[2:0];
assign soc_basesoc_sdram_phaseinjector3_wrdata_storage = soc_basesoc_sdram_phaseinjector3_wrdata_storage_full[31:0];
assign vns_basesoc_csrbank4_dfii_pi3_wrdata3_w = soc_basesoc_sdram_phaseinjector3_wrdata_storage_full[31:24];
assign vns_basesoc_csrbank4_dfii_pi3_wrdata2_w = soc_basesoc_sdram_phaseinjector3_wrdata_storage_full[23:16];
assign vns_basesoc_csrbank4_dfii_pi3_wrdata1_w = soc_basesoc_sdram_phaseinjector3_wrdata_storage_full[15:8];
assign vns_basesoc_csrbank4_dfii_pi3_wrdata0_w = soc_basesoc_sdram_phaseinjector3_wrdata_storage_full[7:0];
assign vns_basesoc_csrbank4_dfii_pi3_rddata3_w = soc_basesoc_sdram_phaseinjector3_status[31:24];
assign vns_basesoc_csrbank4_dfii_pi3_rddata2_w = soc_basesoc_sdram_phaseinjector3_status[23:16];
assign vns_basesoc_csrbank4_dfii_pi3_rddata1_w = soc_basesoc_sdram_phaseinjector3_status[15:8];
assign vns_basesoc_csrbank4_dfii_pi3_rddata0_w = soc_basesoc_sdram_phaseinjector3_status[7:0];
assign vns_basesoc_csrbank4_controller_bandwidth_nreads2_w = soc_basesoc_sdram_bandwidth_nreads_status[23:16];
assign vns_basesoc_csrbank4_controller_bandwidth_nreads1_w = soc_basesoc_sdram_bandwidth_nreads_status[15:8];
assign vns_basesoc_csrbank4_controller_bandwidth_nreads0_w = soc_basesoc_sdram_bandwidth_nreads_status[7:0];
assign vns_basesoc_csrbank4_controller_bandwidth_nwrites2_w = soc_basesoc_sdram_bandwidth_nwrites_status[23:16];
assign vns_basesoc_csrbank4_controller_bandwidth_nwrites1_w = soc_basesoc_sdram_bandwidth_nwrites_status[15:8];
assign vns_basesoc_csrbank4_controller_bandwidth_nwrites0_w = soc_basesoc_sdram_bandwidth_nwrites_status[7:0];
assign vns_basesoc_csrbank4_controller_bandwidth_data_width_w = soc_basesoc_sdram_bandwidth_data_width_status[7:0];
assign vns_basesoc_csrbank5_sel = (vns_basesoc_interface5_bank_bus_adr[13:9] == 4'd10);
assign vns_basesoc_csrbank5_bitbang0_r = vns_basesoc_interface5_bank_bus_dat_w[3:0];
assign vns_basesoc_csrbank5_bitbang0_re = ((vns_basesoc_csrbank5_sel & vns_basesoc_interface5_bank_bus_we) & (vns_basesoc_interface5_bank_bus_adr[1:0] == 1'd0));
assign vns_basesoc_csrbank5_miso_r = vns_basesoc_interface5_bank_bus_dat_w[0];
assign vns_basesoc_csrbank5_miso_re = ((vns_basesoc_csrbank5_sel & vns_basesoc_interface5_bank_bus_we) & (vns_basesoc_interface5_bank_bus_adr[1:0] == 1'd1));
assign vns_basesoc_csrbank5_bitbang_en0_r = vns_basesoc_interface5_bank_bus_dat_w[0];
assign vns_basesoc_csrbank5_bitbang_en0_re = ((vns_basesoc_csrbank5_sel & vns_basesoc_interface5_bank_bus_we) & (vns_basesoc_interface5_bank_bus_adr[1:0] == 2'd2));
assign soc_spiflash_bitbang_storage = soc_spiflash_bitbang_storage_full[3:0];
assign vns_basesoc_csrbank5_bitbang0_w = soc_spiflash_bitbang_storage_full[3:0];
assign vns_basesoc_csrbank5_miso_w = soc_spiflash_miso_status;
assign soc_spiflash_bitbang_en_storage = soc_spiflash_bitbang_en_storage_full;
assign vns_basesoc_csrbank5_bitbang_en0_w = soc_spiflash_bitbang_en_storage_full;
assign vns_basesoc_csrbank6_sel = (vns_basesoc_interface6_bank_bus_adr[13:9] == 3'd5);
assign vns_basesoc_csrbank6_load3_r = vns_basesoc_interface6_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank6_load3_re = ((vns_basesoc_csrbank6_sel & vns_basesoc_interface6_bank_bus_we) & (vns_basesoc_interface6_bank_bus_adr[4:0] == 1'd0));
assign vns_basesoc_csrbank6_load2_r = vns_basesoc_interface6_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank6_load2_re = ((vns_basesoc_csrbank6_sel & vns_basesoc_interface6_bank_bus_we) & (vns_basesoc_interface6_bank_bus_adr[4:0] == 1'd1));
assign vns_basesoc_csrbank6_load1_r = vns_basesoc_interface6_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank6_load1_re = ((vns_basesoc_csrbank6_sel & vns_basesoc_interface6_bank_bus_we) & (vns_basesoc_interface6_bank_bus_adr[4:0] == 2'd2));
assign vns_basesoc_csrbank6_load0_r = vns_basesoc_interface6_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank6_load0_re = ((vns_basesoc_csrbank6_sel & vns_basesoc_interface6_bank_bus_we) & (vns_basesoc_interface6_bank_bus_adr[4:0] == 2'd3));
assign vns_basesoc_csrbank6_reload3_r = vns_basesoc_interface6_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank6_reload3_re = ((vns_basesoc_csrbank6_sel & vns_basesoc_interface6_bank_bus_we) & (vns_basesoc_interface6_bank_bus_adr[4:0] == 3'd4));
assign vns_basesoc_csrbank6_reload2_r = vns_basesoc_interface6_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank6_reload2_re = ((vns_basesoc_csrbank6_sel & vns_basesoc_interface6_bank_bus_we) & (vns_basesoc_interface6_bank_bus_adr[4:0] == 3'd5));
assign vns_basesoc_csrbank6_reload1_r = vns_basesoc_interface6_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank6_reload1_re = ((vns_basesoc_csrbank6_sel & vns_basesoc_interface6_bank_bus_we) & (vns_basesoc_interface6_bank_bus_adr[4:0] == 3'd6));
assign vns_basesoc_csrbank6_reload0_r = vns_basesoc_interface6_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank6_reload0_re = ((vns_basesoc_csrbank6_sel & vns_basesoc_interface6_bank_bus_we) & (vns_basesoc_interface6_bank_bus_adr[4:0] == 3'd7));
assign vns_basesoc_csrbank6_en0_r = vns_basesoc_interface6_bank_bus_dat_w[0];
assign vns_basesoc_csrbank6_en0_re = ((vns_basesoc_csrbank6_sel & vns_basesoc_interface6_bank_bus_we) & (vns_basesoc_interface6_bank_bus_adr[4:0] == 4'd8));
assign soc_basesoc_timer0_update_value_r = vns_basesoc_interface6_bank_bus_dat_w[0];
assign soc_basesoc_timer0_update_value_re = ((vns_basesoc_csrbank6_sel & vns_basesoc_interface6_bank_bus_we) & (vns_basesoc_interface6_bank_bus_adr[4:0] == 4'd9));
assign vns_basesoc_csrbank6_value3_r = vns_basesoc_interface6_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank6_value3_re = ((vns_basesoc_csrbank6_sel & vns_basesoc_interface6_bank_bus_we) & (vns_basesoc_interface6_bank_bus_adr[4:0] == 4'd10));
assign vns_basesoc_csrbank6_value2_r = vns_basesoc_interface6_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank6_value2_re = ((vns_basesoc_csrbank6_sel & vns_basesoc_interface6_bank_bus_we) & (vns_basesoc_interface6_bank_bus_adr[4:0] == 4'd11));
assign vns_basesoc_csrbank6_value1_r = vns_basesoc_interface6_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank6_value1_re = ((vns_basesoc_csrbank6_sel & vns_basesoc_interface6_bank_bus_we) & (vns_basesoc_interface6_bank_bus_adr[4:0] == 4'd12));
assign vns_basesoc_csrbank6_value0_r = vns_basesoc_interface6_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank6_value0_re = ((vns_basesoc_csrbank6_sel & vns_basesoc_interface6_bank_bus_we) & (vns_basesoc_interface6_bank_bus_adr[4:0] == 4'd13));
assign soc_basesoc_timer0_eventmanager_status_r = vns_basesoc_interface6_bank_bus_dat_w[0];
assign soc_basesoc_timer0_eventmanager_status_re = ((vns_basesoc_csrbank6_sel & vns_basesoc_interface6_bank_bus_we) & (vns_basesoc_interface6_bank_bus_adr[4:0] == 4'd14));
assign soc_basesoc_timer0_eventmanager_pending_r = vns_basesoc_interface6_bank_bus_dat_w[0];
assign soc_basesoc_timer0_eventmanager_pending_re = ((vns_basesoc_csrbank6_sel & vns_basesoc_interface6_bank_bus_we) & (vns_basesoc_interface6_bank_bus_adr[4:0] == 4'd15));
assign vns_basesoc_csrbank6_ev_enable0_r = vns_basesoc_interface6_bank_bus_dat_w[0];
assign vns_basesoc_csrbank6_ev_enable0_re = ((vns_basesoc_csrbank6_sel & vns_basesoc_interface6_bank_bus_we) & (vns_basesoc_interface6_bank_bus_adr[4:0] == 5'd16));
assign soc_basesoc_timer0_load_storage = soc_basesoc_timer0_load_storage_full[31:0];
assign vns_basesoc_csrbank6_load3_w = soc_basesoc_timer0_load_storage_full[31:24];
assign vns_basesoc_csrbank6_load2_w = soc_basesoc_timer0_load_storage_full[23:16];
assign vns_basesoc_csrbank6_load1_w = soc_basesoc_timer0_load_storage_full[15:8];
assign vns_basesoc_csrbank6_load0_w = soc_basesoc_timer0_load_storage_full[7:0];
assign soc_basesoc_timer0_reload_storage = soc_basesoc_timer0_reload_storage_full[31:0];
assign vns_basesoc_csrbank6_reload3_w = soc_basesoc_timer0_reload_storage_full[31:24];
assign vns_basesoc_csrbank6_reload2_w = soc_basesoc_timer0_reload_storage_full[23:16];
assign vns_basesoc_csrbank6_reload1_w = soc_basesoc_timer0_reload_storage_full[15:8];
assign vns_basesoc_csrbank6_reload0_w = soc_basesoc_timer0_reload_storage_full[7:0];
assign soc_basesoc_timer0_en_storage = soc_basesoc_timer0_en_storage_full;
assign vns_basesoc_csrbank6_en0_w = soc_basesoc_timer0_en_storage_full;
assign vns_basesoc_csrbank6_value3_w = soc_basesoc_timer0_value_status[31:24];
assign vns_basesoc_csrbank6_value2_w = soc_basesoc_timer0_value_status[23:16];
assign vns_basesoc_csrbank6_value1_w = soc_basesoc_timer0_value_status[15:8];
assign vns_basesoc_csrbank6_value0_w = soc_basesoc_timer0_value_status[7:0];
assign soc_basesoc_timer0_eventmanager_storage = soc_basesoc_timer0_eventmanager_storage_full;
assign vns_basesoc_csrbank6_ev_enable0_w = soc_basesoc_timer0_eventmanager_storage_full;
assign vns_basesoc_csrbank7_sel = (vns_basesoc_interface7_bank_bus_adr[13:9] == 2'd3);
assign soc_basesoc_uart_rxtx_r = vns_basesoc_interface7_bank_bus_dat_w[7:0];
assign soc_basesoc_uart_rxtx_re = ((vns_basesoc_csrbank7_sel & vns_basesoc_interface7_bank_bus_we) & (vns_basesoc_interface7_bank_bus_adr[2:0] == 1'd0));
assign vns_basesoc_csrbank7_txfull_r = vns_basesoc_interface7_bank_bus_dat_w[0];
assign vns_basesoc_csrbank7_txfull_re = ((vns_basesoc_csrbank7_sel & vns_basesoc_interface7_bank_bus_we) & (vns_basesoc_interface7_bank_bus_adr[2:0] == 1'd1));
assign vns_basesoc_csrbank7_rxempty_r = vns_basesoc_interface7_bank_bus_dat_w[0];
assign vns_basesoc_csrbank7_rxempty_re = ((vns_basesoc_csrbank7_sel & vns_basesoc_interface7_bank_bus_we) & (vns_basesoc_interface7_bank_bus_adr[2:0] == 2'd2));
assign soc_basesoc_uart_eventmanager_status_r = vns_basesoc_interface7_bank_bus_dat_w[1:0];
assign soc_basesoc_uart_eventmanager_status_re = ((vns_basesoc_csrbank7_sel & vns_basesoc_interface7_bank_bus_we) & (vns_basesoc_interface7_bank_bus_adr[2:0] == 2'd3));
assign soc_basesoc_uart_eventmanager_pending_r = vns_basesoc_interface7_bank_bus_dat_w[1:0];
assign soc_basesoc_uart_eventmanager_pending_re = ((vns_basesoc_csrbank7_sel & vns_basesoc_interface7_bank_bus_we) & (vns_basesoc_interface7_bank_bus_adr[2:0] == 3'd4));
assign vns_basesoc_csrbank7_ev_enable0_r = vns_basesoc_interface7_bank_bus_dat_w[1:0];
assign vns_basesoc_csrbank7_ev_enable0_re = ((vns_basesoc_csrbank7_sel & vns_basesoc_interface7_bank_bus_we) & (vns_basesoc_interface7_bank_bus_adr[2:0] == 3'd5));
assign vns_basesoc_csrbank7_txfull_w = soc_basesoc_uart_txfull_status;
assign vns_basesoc_csrbank7_rxempty_w = soc_basesoc_uart_rxempty_status;
assign soc_basesoc_uart_eventmanager_storage = soc_basesoc_uart_eventmanager_storage_full[1:0];
assign vns_basesoc_csrbank7_ev_enable0_w = soc_basesoc_uart_eventmanager_storage_full[1:0];
assign vns_basesoc_csrbank8_sel = (vns_basesoc_interface8_bank_bus_adr[13:9] == 2'd2);
assign vns_basesoc_csrbank8_tuning_word3_r = vns_basesoc_interface8_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank8_tuning_word3_re = ((vns_basesoc_csrbank8_sel & vns_basesoc_interface8_bank_bus_we) & (vns_basesoc_interface8_bank_bus_adr[1:0] == 1'd0));
assign vns_basesoc_csrbank8_tuning_word2_r = vns_basesoc_interface8_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank8_tuning_word2_re = ((vns_basesoc_csrbank8_sel & vns_basesoc_interface8_bank_bus_we) & (vns_basesoc_interface8_bank_bus_adr[1:0] == 1'd1));
assign vns_basesoc_csrbank8_tuning_word1_r = vns_basesoc_interface8_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank8_tuning_word1_re = ((vns_basesoc_csrbank8_sel & vns_basesoc_interface8_bank_bus_we) & (vns_basesoc_interface8_bank_bus_adr[1:0] == 2'd2));
assign vns_basesoc_csrbank8_tuning_word0_r = vns_basesoc_interface8_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank8_tuning_word0_re = ((vns_basesoc_csrbank8_sel & vns_basesoc_interface8_bank_bus_we) & (vns_basesoc_interface8_bank_bus_adr[1:0] == 2'd3));
assign soc_basesoc_uart_phy_storage = soc_basesoc_uart_phy_storage_full[31:0];
assign vns_basesoc_csrbank8_tuning_word3_w = soc_basesoc_uart_phy_storage_full[31:24];
assign vns_basesoc_csrbank8_tuning_word2_w = soc_basesoc_uart_phy_storage_full[23:16];
assign vns_basesoc_csrbank8_tuning_word1_w = soc_basesoc_uart_phy_storage_full[15:8];
assign vns_basesoc_csrbank8_tuning_word0_w = soc_basesoc_uart_phy_storage_full[7:0];
assign vns_basesoc_interface0_bank_bus_adr = soc_basesoc_interface_adr;
assign vns_basesoc_interface1_bank_bus_adr = soc_basesoc_interface_adr;
assign vns_basesoc_interface2_bank_bus_adr = soc_basesoc_interface_adr;
assign vns_basesoc_interface3_bank_bus_adr = soc_basesoc_interface_adr;
assign vns_basesoc_interface4_bank_bus_adr = soc_basesoc_interface_adr;
assign vns_basesoc_interface5_bank_bus_adr = soc_basesoc_interface_adr;
assign vns_basesoc_interface6_bank_bus_adr = soc_basesoc_interface_adr;
assign vns_basesoc_interface7_bank_bus_adr = soc_basesoc_interface_adr;
assign vns_basesoc_interface8_bank_bus_adr = soc_basesoc_interface_adr;
assign vns_basesoc_sram_bus_adr = soc_basesoc_interface_adr;
assign vns_basesoc_interface0_bank_bus_we = soc_basesoc_interface_we;
assign vns_basesoc_interface1_bank_bus_we = soc_basesoc_interface_we;
assign vns_basesoc_interface2_bank_bus_we = soc_basesoc_interface_we;
assign vns_basesoc_interface3_bank_bus_we = soc_basesoc_interface_we;
assign vns_basesoc_interface4_bank_bus_we = soc_basesoc_interface_we;
assign vns_basesoc_interface5_bank_bus_we = soc_basesoc_interface_we;
assign vns_basesoc_interface6_bank_bus_we = soc_basesoc_interface_we;
assign vns_basesoc_interface7_bank_bus_we = soc_basesoc_interface_we;
assign vns_basesoc_interface8_bank_bus_we = soc_basesoc_interface_we;
assign vns_basesoc_sram_bus_we = soc_basesoc_interface_we;
assign vns_basesoc_interface0_bank_bus_dat_w = soc_basesoc_interface_dat_w;
assign vns_basesoc_interface1_bank_bus_dat_w = soc_basesoc_interface_dat_w;
assign vns_basesoc_interface2_bank_bus_dat_w = soc_basesoc_interface_dat_w;
assign vns_basesoc_interface3_bank_bus_dat_w = soc_basesoc_interface_dat_w;
assign vns_basesoc_interface4_bank_bus_dat_w = soc_basesoc_interface_dat_w;
assign vns_basesoc_interface5_bank_bus_dat_w = soc_basesoc_interface_dat_w;
assign vns_basesoc_interface6_bank_bus_dat_w = soc_basesoc_interface_dat_w;
assign vns_basesoc_interface7_bank_bus_dat_w = soc_basesoc_interface_dat_w;
assign vns_basesoc_interface8_bank_bus_dat_w = soc_basesoc_interface_dat_w;
assign vns_basesoc_sram_bus_dat_w = soc_basesoc_interface_dat_w;
assign soc_basesoc_interface_dat_r = (((((((((vns_basesoc_interface0_bank_bus_dat_r | vns_basesoc_interface1_bank_bus_dat_r) | vns_basesoc_interface2_bank_bus_dat_r) | vns_basesoc_interface3_bank_bus_dat_r) | vns_basesoc_interface4_bank_bus_dat_r) | vns_basesoc_interface5_bank_bus_dat_r) | vns_basesoc_interface6_bank_bus_dat_r) | vns_basesoc_interface7_bank_bus_dat_r) | vns_basesoc_interface8_bank_bus_dat_r) | vns_basesoc_sram_bus_dat_r);
always @(*) begin
	vns_rhs_array_muxed0 <= 1'd0;
	case (soc_basesoc_sdram_choose_cmd_grant)
		1'd0: begin
			vns_rhs_array_muxed0 <= soc_basesoc_sdram_choose_cmd_valids[0];
		end
		1'd1: begin
			vns_rhs_array_muxed0 <= soc_basesoc_sdram_choose_cmd_valids[1];
		end
		2'd2: begin
			vns_rhs_array_muxed0 <= soc_basesoc_sdram_choose_cmd_valids[2];
		end
		2'd3: begin
			vns_rhs_array_muxed0 <= soc_basesoc_sdram_choose_cmd_valids[3];
		end
		3'd4: begin
			vns_rhs_array_muxed0 <= soc_basesoc_sdram_choose_cmd_valids[4];
		end
		3'd5: begin
			vns_rhs_array_muxed0 <= soc_basesoc_sdram_choose_cmd_valids[5];
		end
		3'd6: begin
			vns_rhs_array_muxed0 <= soc_basesoc_sdram_choose_cmd_valids[6];
		end
		default: begin
			vns_rhs_array_muxed0 <= soc_basesoc_sdram_choose_cmd_valids[7];
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed1 <= 14'd0;
	case (soc_basesoc_sdram_choose_cmd_grant)
		1'd0: begin
			vns_rhs_array_muxed1 <= soc_basesoc_sdram_bankmachine0_cmd_payload_a;
		end
		1'd1: begin
			vns_rhs_array_muxed1 <= soc_basesoc_sdram_bankmachine1_cmd_payload_a;
		end
		2'd2: begin
			vns_rhs_array_muxed1 <= soc_basesoc_sdram_bankmachine2_cmd_payload_a;
		end
		2'd3: begin
			vns_rhs_array_muxed1 <= soc_basesoc_sdram_bankmachine3_cmd_payload_a;
		end
		3'd4: begin
			vns_rhs_array_muxed1 <= soc_basesoc_sdram_bankmachine4_cmd_payload_a;
		end
		3'd5: begin
			vns_rhs_array_muxed1 <= soc_basesoc_sdram_bankmachine5_cmd_payload_a;
		end
		3'd6: begin
			vns_rhs_array_muxed1 <= soc_basesoc_sdram_bankmachine6_cmd_payload_a;
		end
		default: begin
			vns_rhs_array_muxed1 <= soc_basesoc_sdram_bankmachine7_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed2 <= 3'd0;
	case (soc_basesoc_sdram_choose_cmd_grant)
		1'd0: begin
			vns_rhs_array_muxed2 <= soc_basesoc_sdram_bankmachine0_cmd_payload_ba;
		end
		1'd1: begin
			vns_rhs_array_muxed2 <= soc_basesoc_sdram_bankmachine1_cmd_payload_ba;
		end
		2'd2: begin
			vns_rhs_array_muxed2 <= soc_basesoc_sdram_bankmachine2_cmd_payload_ba;
		end
		2'd3: begin
			vns_rhs_array_muxed2 <= soc_basesoc_sdram_bankmachine3_cmd_payload_ba;
		end
		3'd4: begin
			vns_rhs_array_muxed2 <= soc_basesoc_sdram_bankmachine4_cmd_payload_ba;
		end
		3'd5: begin
			vns_rhs_array_muxed2 <= soc_basesoc_sdram_bankmachine5_cmd_payload_ba;
		end
		3'd6: begin
			vns_rhs_array_muxed2 <= soc_basesoc_sdram_bankmachine6_cmd_payload_ba;
		end
		default: begin
			vns_rhs_array_muxed2 <= soc_basesoc_sdram_bankmachine7_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed3 <= 1'd0;
	case (soc_basesoc_sdram_choose_cmd_grant)
		1'd0: begin
			vns_rhs_array_muxed3 <= soc_basesoc_sdram_bankmachine0_cmd_payload_is_read;
		end
		1'd1: begin
			vns_rhs_array_muxed3 <= soc_basesoc_sdram_bankmachine1_cmd_payload_is_read;
		end
		2'd2: begin
			vns_rhs_array_muxed3 <= soc_basesoc_sdram_bankmachine2_cmd_payload_is_read;
		end
		2'd3: begin
			vns_rhs_array_muxed3 <= soc_basesoc_sdram_bankmachine3_cmd_payload_is_read;
		end
		3'd4: begin
			vns_rhs_array_muxed3 <= soc_basesoc_sdram_bankmachine4_cmd_payload_is_read;
		end
		3'd5: begin
			vns_rhs_array_muxed3 <= soc_basesoc_sdram_bankmachine5_cmd_payload_is_read;
		end
		3'd6: begin
			vns_rhs_array_muxed3 <= soc_basesoc_sdram_bankmachine6_cmd_payload_is_read;
		end
		default: begin
			vns_rhs_array_muxed3 <= soc_basesoc_sdram_bankmachine7_cmd_payload_is_read;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed4 <= 1'd0;
	case (soc_basesoc_sdram_choose_cmd_grant)
		1'd0: begin
			vns_rhs_array_muxed4 <= soc_basesoc_sdram_bankmachine0_cmd_payload_is_write;
		end
		1'd1: begin
			vns_rhs_array_muxed4 <= soc_basesoc_sdram_bankmachine1_cmd_payload_is_write;
		end
		2'd2: begin
			vns_rhs_array_muxed4 <= soc_basesoc_sdram_bankmachine2_cmd_payload_is_write;
		end
		2'd3: begin
			vns_rhs_array_muxed4 <= soc_basesoc_sdram_bankmachine3_cmd_payload_is_write;
		end
		3'd4: begin
			vns_rhs_array_muxed4 <= soc_basesoc_sdram_bankmachine4_cmd_payload_is_write;
		end
		3'd5: begin
			vns_rhs_array_muxed4 <= soc_basesoc_sdram_bankmachine5_cmd_payload_is_write;
		end
		3'd6: begin
			vns_rhs_array_muxed4 <= soc_basesoc_sdram_bankmachine6_cmd_payload_is_write;
		end
		default: begin
			vns_rhs_array_muxed4 <= soc_basesoc_sdram_bankmachine7_cmd_payload_is_write;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed5 <= 1'd0;
	case (soc_basesoc_sdram_choose_cmd_grant)
		1'd0: begin
			vns_rhs_array_muxed5 <= soc_basesoc_sdram_bankmachine0_cmd_payload_is_cmd;
		end
		1'd1: begin
			vns_rhs_array_muxed5 <= soc_basesoc_sdram_bankmachine1_cmd_payload_is_cmd;
		end
		2'd2: begin
			vns_rhs_array_muxed5 <= soc_basesoc_sdram_bankmachine2_cmd_payload_is_cmd;
		end
		2'd3: begin
			vns_rhs_array_muxed5 <= soc_basesoc_sdram_bankmachine3_cmd_payload_is_cmd;
		end
		3'd4: begin
			vns_rhs_array_muxed5 <= soc_basesoc_sdram_bankmachine4_cmd_payload_is_cmd;
		end
		3'd5: begin
			vns_rhs_array_muxed5 <= soc_basesoc_sdram_bankmachine5_cmd_payload_is_cmd;
		end
		3'd6: begin
			vns_rhs_array_muxed5 <= soc_basesoc_sdram_bankmachine6_cmd_payload_is_cmd;
		end
		default: begin
			vns_rhs_array_muxed5 <= soc_basesoc_sdram_bankmachine7_cmd_payload_is_cmd;
		end
	endcase
end
always @(*) begin
	vns_t_array_muxed0 <= 1'd0;
	case (soc_basesoc_sdram_choose_cmd_grant)
		1'd0: begin
			vns_t_array_muxed0 <= soc_basesoc_sdram_bankmachine0_cmd_payload_cas;
		end
		1'd1: begin
			vns_t_array_muxed0 <= soc_basesoc_sdram_bankmachine1_cmd_payload_cas;
		end
		2'd2: begin
			vns_t_array_muxed0 <= soc_basesoc_sdram_bankmachine2_cmd_payload_cas;
		end
		2'd3: begin
			vns_t_array_muxed0 <= soc_basesoc_sdram_bankmachine3_cmd_payload_cas;
		end
		3'd4: begin
			vns_t_array_muxed0 <= soc_basesoc_sdram_bankmachine4_cmd_payload_cas;
		end
		3'd5: begin
			vns_t_array_muxed0 <= soc_basesoc_sdram_bankmachine5_cmd_payload_cas;
		end
		3'd6: begin
			vns_t_array_muxed0 <= soc_basesoc_sdram_bankmachine6_cmd_payload_cas;
		end
		default: begin
			vns_t_array_muxed0 <= soc_basesoc_sdram_bankmachine7_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	vns_t_array_muxed1 <= 1'd0;
	case (soc_basesoc_sdram_choose_cmd_grant)
		1'd0: begin
			vns_t_array_muxed1 <= soc_basesoc_sdram_bankmachine0_cmd_payload_ras;
		end
		1'd1: begin
			vns_t_array_muxed1 <= soc_basesoc_sdram_bankmachine1_cmd_payload_ras;
		end
		2'd2: begin
			vns_t_array_muxed1 <= soc_basesoc_sdram_bankmachine2_cmd_payload_ras;
		end
		2'd3: begin
			vns_t_array_muxed1 <= soc_basesoc_sdram_bankmachine3_cmd_payload_ras;
		end
		3'd4: begin
			vns_t_array_muxed1 <= soc_basesoc_sdram_bankmachine4_cmd_payload_ras;
		end
		3'd5: begin
			vns_t_array_muxed1 <= soc_basesoc_sdram_bankmachine5_cmd_payload_ras;
		end
		3'd6: begin
			vns_t_array_muxed1 <= soc_basesoc_sdram_bankmachine6_cmd_payload_ras;
		end
		default: begin
			vns_t_array_muxed1 <= soc_basesoc_sdram_bankmachine7_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	vns_t_array_muxed2 <= 1'd0;
	case (soc_basesoc_sdram_choose_cmd_grant)
		1'd0: begin
			vns_t_array_muxed2 <= soc_basesoc_sdram_bankmachine0_cmd_payload_we;
		end
		1'd1: begin
			vns_t_array_muxed2 <= soc_basesoc_sdram_bankmachine1_cmd_payload_we;
		end
		2'd2: begin
			vns_t_array_muxed2 <= soc_basesoc_sdram_bankmachine2_cmd_payload_we;
		end
		2'd3: begin
			vns_t_array_muxed2 <= soc_basesoc_sdram_bankmachine3_cmd_payload_we;
		end
		3'd4: begin
			vns_t_array_muxed2 <= soc_basesoc_sdram_bankmachine4_cmd_payload_we;
		end
		3'd5: begin
			vns_t_array_muxed2 <= soc_basesoc_sdram_bankmachine5_cmd_payload_we;
		end
		3'd6: begin
			vns_t_array_muxed2 <= soc_basesoc_sdram_bankmachine6_cmd_payload_we;
		end
		default: begin
			vns_t_array_muxed2 <= soc_basesoc_sdram_bankmachine7_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed6 <= 1'd0;
	case (soc_basesoc_sdram_choose_req_grant)
		1'd0: begin
			vns_rhs_array_muxed6 <= soc_basesoc_sdram_choose_req_valids[0];
		end
		1'd1: begin
			vns_rhs_array_muxed6 <= soc_basesoc_sdram_choose_req_valids[1];
		end
		2'd2: begin
			vns_rhs_array_muxed6 <= soc_basesoc_sdram_choose_req_valids[2];
		end
		2'd3: begin
			vns_rhs_array_muxed6 <= soc_basesoc_sdram_choose_req_valids[3];
		end
		3'd4: begin
			vns_rhs_array_muxed6 <= soc_basesoc_sdram_choose_req_valids[4];
		end
		3'd5: begin
			vns_rhs_array_muxed6 <= soc_basesoc_sdram_choose_req_valids[5];
		end
		3'd6: begin
			vns_rhs_array_muxed6 <= soc_basesoc_sdram_choose_req_valids[6];
		end
		default: begin
			vns_rhs_array_muxed6 <= soc_basesoc_sdram_choose_req_valids[7];
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed7 <= 14'd0;
	case (soc_basesoc_sdram_choose_req_grant)
		1'd0: begin
			vns_rhs_array_muxed7 <= soc_basesoc_sdram_bankmachine0_cmd_payload_a;
		end
		1'd1: begin
			vns_rhs_array_muxed7 <= soc_basesoc_sdram_bankmachine1_cmd_payload_a;
		end
		2'd2: begin
			vns_rhs_array_muxed7 <= soc_basesoc_sdram_bankmachine2_cmd_payload_a;
		end
		2'd3: begin
			vns_rhs_array_muxed7 <= soc_basesoc_sdram_bankmachine3_cmd_payload_a;
		end
		3'd4: begin
			vns_rhs_array_muxed7 <= soc_basesoc_sdram_bankmachine4_cmd_payload_a;
		end
		3'd5: begin
			vns_rhs_array_muxed7 <= soc_basesoc_sdram_bankmachine5_cmd_payload_a;
		end
		3'd6: begin
			vns_rhs_array_muxed7 <= soc_basesoc_sdram_bankmachine6_cmd_payload_a;
		end
		default: begin
			vns_rhs_array_muxed7 <= soc_basesoc_sdram_bankmachine7_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed8 <= 3'd0;
	case (soc_basesoc_sdram_choose_req_grant)
		1'd0: begin
			vns_rhs_array_muxed8 <= soc_basesoc_sdram_bankmachine0_cmd_payload_ba;
		end
		1'd1: begin
			vns_rhs_array_muxed8 <= soc_basesoc_sdram_bankmachine1_cmd_payload_ba;
		end
		2'd2: begin
			vns_rhs_array_muxed8 <= soc_basesoc_sdram_bankmachine2_cmd_payload_ba;
		end
		2'd3: begin
			vns_rhs_array_muxed8 <= soc_basesoc_sdram_bankmachine3_cmd_payload_ba;
		end
		3'd4: begin
			vns_rhs_array_muxed8 <= soc_basesoc_sdram_bankmachine4_cmd_payload_ba;
		end
		3'd5: begin
			vns_rhs_array_muxed8 <= soc_basesoc_sdram_bankmachine5_cmd_payload_ba;
		end
		3'd6: begin
			vns_rhs_array_muxed8 <= soc_basesoc_sdram_bankmachine6_cmd_payload_ba;
		end
		default: begin
			vns_rhs_array_muxed8 <= soc_basesoc_sdram_bankmachine7_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed9 <= 1'd0;
	case (soc_basesoc_sdram_choose_req_grant)
		1'd0: begin
			vns_rhs_array_muxed9 <= soc_basesoc_sdram_bankmachine0_cmd_payload_is_read;
		end
		1'd1: begin
			vns_rhs_array_muxed9 <= soc_basesoc_sdram_bankmachine1_cmd_payload_is_read;
		end
		2'd2: begin
			vns_rhs_array_muxed9 <= soc_basesoc_sdram_bankmachine2_cmd_payload_is_read;
		end
		2'd3: begin
			vns_rhs_array_muxed9 <= soc_basesoc_sdram_bankmachine3_cmd_payload_is_read;
		end
		3'd4: begin
			vns_rhs_array_muxed9 <= soc_basesoc_sdram_bankmachine4_cmd_payload_is_read;
		end
		3'd5: begin
			vns_rhs_array_muxed9 <= soc_basesoc_sdram_bankmachine5_cmd_payload_is_read;
		end
		3'd6: begin
			vns_rhs_array_muxed9 <= soc_basesoc_sdram_bankmachine6_cmd_payload_is_read;
		end
		default: begin
			vns_rhs_array_muxed9 <= soc_basesoc_sdram_bankmachine7_cmd_payload_is_read;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed10 <= 1'd0;
	case (soc_basesoc_sdram_choose_req_grant)
		1'd0: begin
			vns_rhs_array_muxed10 <= soc_basesoc_sdram_bankmachine0_cmd_payload_is_write;
		end
		1'd1: begin
			vns_rhs_array_muxed10 <= soc_basesoc_sdram_bankmachine1_cmd_payload_is_write;
		end
		2'd2: begin
			vns_rhs_array_muxed10 <= soc_basesoc_sdram_bankmachine2_cmd_payload_is_write;
		end
		2'd3: begin
			vns_rhs_array_muxed10 <= soc_basesoc_sdram_bankmachine3_cmd_payload_is_write;
		end
		3'd4: begin
			vns_rhs_array_muxed10 <= soc_basesoc_sdram_bankmachine4_cmd_payload_is_write;
		end
		3'd5: begin
			vns_rhs_array_muxed10 <= soc_basesoc_sdram_bankmachine5_cmd_payload_is_write;
		end
		3'd6: begin
			vns_rhs_array_muxed10 <= soc_basesoc_sdram_bankmachine6_cmd_payload_is_write;
		end
		default: begin
			vns_rhs_array_muxed10 <= soc_basesoc_sdram_bankmachine7_cmd_payload_is_write;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed11 <= 1'd0;
	case (soc_basesoc_sdram_choose_req_grant)
		1'd0: begin
			vns_rhs_array_muxed11 <= soc_basesoc_sdram_bankmachine0_cmd_payload_is_cmd;
		end
		1'd1: begin
			vns_rhs_array_muxed11 <= soc_basesoc_sdram_bankmachine1_cmd_payload_is_cmd;
		end
		2'd2: begin
			vns_rhs_array_muxed11 <= soc_basesoc_sdram_bankmachine2_cmd_payload_is_cmd;
		end
		2'd3: begin
			vns_rhs_array_muxed11 <= soc_basesoc_sdram_bankmachine3_cmd_payload_is_cmd;
		end
		3'd4: begin
			vns_rhs_array_muxed11 <= soc_basesoc_sdram_bankmachine4_cmd_payload_is_cmd;
		end
		3'd5: begin
			vns_rhs_array_muxed11 <= soc_basesoc_sdram_bankmachine5_cmd_payload_is_cmd;
		end
		3'd6: begin
			vns_rhs_array_muxed11 <= soc_basesoc_sdram_bankmachine6_cmd_payload_is_cmd;
		end
		default: begin
			vns_rhs_array_muxed11 <= soc_basesoc_sdram_bankmachine7_cmd_payload_is_cmd;
		end
	endcase
end
always @(*) begin
	vns_t_array_muxed3 <= 1'd0;
	case (soc_basesoc_sdram_choose_req_grant)
		1'd0: begin
			vns_t_array_muxed3 <= soc_basesoc_sdram_bankmachine0_cmd_payload_cas;
		end
		1'd1: begin
			vns_t_array_muxed3 <= soc_basesoc_sdram_bankmachine1_cmd_payload_cas;
		end
		2'd2: begin
			vns_t_array_muxed3 <= soc_basesoc_sdram_bankmachine2_cmd_payload_cas;
		end
		2'd3: begin
			vns_t_array_muxed3 <= soc_basesoc_sdram_bankmachine3_cmd_payload_cas;
		end
		3'd4: begin
			vns_t_array_muxed3 <= soc_basesoc_sdram_bankmachine4_cmd_payload_cas;
		end
		3'd5: begin
			vns_t_array_muxed3 <= soc_basesoc_sdram_bankmachine5_cmd_payload_cas;
		end
		3'd6: begin
			vns_t_array_muxed3 <= soc_basesoc_sdram_bankmachine6_cmd_payload_cas;
		end
		default: begin
			vns_t_array_muxed3 <= soc_basesoc_sdram_bankmachine7_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	vns_t_array_muxed4 <= 1'd0;
	case (soc_basesoc_sdram_choose_req_grant)
		1'd0: begin
			vns_t_array_muxed4 <= soc_basesoc_sdram_bankmachine0_cmd_payload_ras;
		end
		1'd1: begin
			vns_t_array_muxed4 <= soc_basesoc_sdram_bankmachine1_cmd_payload_ras;
		end
		2'd2: begin
			vns_t_array_muxed4 <= soc_basesoc_sdram_bankmachine2_cmd_payload_ras;
		end
		2'd3: begin
			vns_t_array_muxed4 <= soc_basesoc_sdram_bankmachine3_cmd_payload_ras;
		end
		3'd4: begin
			vns_t_array_muxed4 <= soc_basesoc_sdram_bankmachine4_cmd_payload_ras;
		end
		3'd5: begin
			vns_t_array_muxed4 <= soc_basesoc_sdram_bankmachine5_cmd_payload_ras;
		end
		3'd6: begin
			vns_t_array_muxed4 <= soc_basesoc_sdram_bankmachine6_cmd_payload_ras;
		end
		default: begin
			vns_t_array_muxed4 <= soc_basesoc_sdram_bankmachine7_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	vns_t_array_muxed5 <= 1'd0;
	case (soc_basesoc_sdram_choose_req_grant)
		1'd0: begin
			vns_t_array_muxed5 <= soc_basesoc_sdram_bankmachine0_cmd_payload_we;
		end
		1'd1: begin
			vns_t_array_muxed5 <= soc_basesoc_sdram_bankmachine1_cmd_payload_we;
		end
		2'd2: begin
			vns_t_array_muxed5 <= soc_basesoc_sdram_bankmachine2_cmd_payload_we;
		end
		2'd3: begin
			vns_t_array_muxed5 <= soc_basesoc_sdram_bankmachine3_cmd_payload_we;
		end
		3'd4: begin
			vns_t_array_muxed5 <= soc_basesoc_sdram_bankmachine4_cmd_payload_we;
		end
		3'd5: begin
			vns_t_array_muxed5 <= soc_basesoc_sdram_bankmachine5_cmd_payload_we;
		end
		3'd6: begin
			vns_t_array_muxed5 <= soc_basesoc_sdram_bankmachine6_cmd_payload_we;
		end
		default: begin
			vns_t_array_muxed5 <= soc_basesoc_sdram_bankmachine7_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed12 <= 21'd0;
	case (vns_roundrobin0_grant)
		default: begin
			vns_rhs_array_muxed12 <= {soc_basesoc_port_cmd_payload_addr[23:10], soc_basesoc_port_cmd_payload_addr[6:0]};
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed13 <= 1'd0;
	case (vns_roundrobin0_grant)
		default: begin
			vns_rhs_array_muxed13 <= soc_basesoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed14 <= 1'd0;
	case (vns_roundrobin0_grant)
		default: begin
			vns_rhs_array_muxed14 <= (((soc_basesoc_port_cmd_payload_addr[9:7] == 1'd0) & (~(((((((vns_locked0 | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_basesoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed15 <= 21'd0;
	case (vns_roundrobin1_grant)
		default: begin
			vns_rhs_array_muxed15 <= {soc_basesoc_port_cmd_payload_addr[23:10], soc_basesoc_port_cmd_payload_addr[6:0]};
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed16 <= 1'd0;
	case (vns_roundrobin1_grant)
		default: begin
			vns_rhs_array_muxed16 <= soc_basesoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed17 <= 1'd0;
	case (vns_roundrobin1_grant)
		default: begin
			vns_rhs_array_muxed17 <= (((soc_basesoc_port_cmd_payload_addr[9:7] == 1'd1) & (~(((((((vns_locked1 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_basesoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed18 <= 21'd0;
	case (vns_roundrobin2_grant)
		default: begin
			vns_rhs_array_muxed18 <= {soc_basesoc_port_cmd_payload_addr[23:10], soc_basesoc_port_cmd_payload_addr[6:0]};
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed19 <= 1'd0;
	case (vns_roundrobin2_grant)
		default: begin
			vns_rhs_array_muxed19 <= soc_basesoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed20 <= 1'd0;
	case (vns_roundrobin2_grant)
		default: begin
			vns_rhs_array_muxed20 <= (((soc_basesoc_port_cmd_payload_addr[9:7] == 2'd2) & (~(((((((vns_locked2 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_basesoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed21 <= 21'd0;
	case (vns_roundrobin3_grant)
		default: begin
			vns_rhs_array_muxed21 <= {soc_basesoc_port_cmd_payload_addr[23:10], soc_basesoc_port_cmd_payload_addr[6:0]};
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed22 <= 1'd0;
	case (vns_roundrobin3_grant)
		default: begin
			vns_rhs_array_muxed22 <= soc_basesoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed23 <= 1'd0;
	case (vns_roundrobin3_grant)
		default: begin
			vns_rhs_array_muxed23 <= (((soc_basesoc_port_cmd_payload_addr[9:7] == 2'd3) & (~(((((((vns_locked3 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_basesoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed24 <= 21'd0;
	case (vns_roundrobin4_grant)
		default: begin
			vns_rhs_array_muxed24 <= {soc_basesoc_port_cmd_payload_addr[23:10], soc_basesoc_port_cmd_payload_addr[6:0]};
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed25 <= 1'd0;
	case (vns_roundrobin4_grant)
		default: begin
			vns_rhs_array_muxed25 <= soc_basesoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed26 <= 1'd0;
	case (vns_roundrobin4_grant)
		default: begin
			vns_rhs_array_muxed26 <= (((soc_basesoc_port_cmd_payload_addr[9:7] == 3'd4) & (~(((((((vns_locked4 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_basesoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed27 <= 21'd0;
	case (vns_roundrobin5_grant)
		default: begin
			vns_rhs_array_muxed27 <= {soc_basesoc_port_cmd_payload_addr[23:10], soc_basesoc_port_cmd_payload_addr[6:0]};
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed28 <= 1'd0;
	case (vns_roundrobin5_grant)
		default: begin
			vns_rhs_array_muxed28 <= soc_basesoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed29 <= 1'd0;
	case (vns_roundrobin5_grant)
		default: begin
			vns_rhs_array_muxed29 <= (((soc_basesoc_port_cmd_payload_addr[9:7] == 3'd5) & (~(((((((vns_locked5 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_basesoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed30 <= 21'd0;
	case (vns_roundrobin6_grant)
		default: begin
			vns_rhs_array_muxed30 <= {soc_basesoc_port_cmd_payload_addr[23:10], soc_basesoc_port_cmd_payload_addr[6:0]};
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed31 <= 1'd0;
	case (vns_roundrobin6_grant)
		default: begin
			vns_rhs_array_muxed31 <= soc_basesoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed32 <= 1'd0;
	case (vns_roundrobin6_grant)
		default: begin
			vns_rhs_array_muxed32 <= (((soc_basesoc_port_cmd_payload_addr[9:7] == 3'd6) & (~(((((((vns_locked6 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_basesoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed33 <= 21'd0;
	case (vns_roundrobin7_grant)
		default: begin
			vns_rhs_array_muxed33 <= {soc_basesoc_port_cmd_payload_addr[23:10], soc_basesoc_port_cmd_payload_addr[6:0]};
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed34 <= 1'd0;
	case (vns_roundrobin7_grant)
		default: begin
			vns_rhs_array_muxed34 <= soc_basesoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed35 <= 1'd0;
	case (vns_roundrobin7_grant)
		default: begin
			vns_rhs_array_muxed35 <= (((soc_basesoc_port_cmd_payload_addr[9:7] == 3'd7) & (~(((((((vns_locked7 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))))) & soc_basesoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed36 <= 30'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed36 <= soc_basesoc_interface1_wb_sdram_adr;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed37 <= 32'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed37 <= soc_basesoc_interface1_wb_sdram_dat_w;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed38 <= 4'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed38 <= soc_basesoc_interface1_wb_sdram_sel;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed39 <= 1'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed39 <= soc_basesoc_interface1_wb_sdram_cyc;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed40 <= 1'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed40 <= soc_basesoc_interface1_wb_sdram_stb;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed41 <= 1'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed41 <= soc_basesoc_interface1_wb_sdram_we;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed42 <= 3'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed42 <= soc_basesoc_interface1_wb_sdram_cti;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed43 <= 2'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed43 <= soc_basesoc_interface1_wb_sdram_bte;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed44 <= 30'd0;
	case (vns_basesoc_grant)
		1'd0: begin
			vns_rhs_array_muxed44 <= soc_basesoc_lm32_ibus_adr;
		end
		default: begin
			vns_rhs_array_muxed44 <= soc_basesoc_lm32_dbus_adr;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed45 <= 32'd0;
	case (vns_basesoc_grant)
		1'd0: begin
			vns_rhs_array_muxed45 <= soc_basesoc_lm32_ibus_dat_w;
		end
		default: begin
			vns_rhs_array_muxed45 <= soc_basesoc_lm32_dbus_dat_w;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed46 <= 4'd0;
	case (vns_basesoc_grant)
		1'd0: begin
			vns_rhs_array_muxed46 <= soc_basesoc_lm32_ibus_sel;
		end
		default: begin
			vns_rhs_array_muxed46 <= soc_basesoc_lm32_dbus_sel;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed47 <= 1'd0;
	case (vns_basesoc_grant)
		1'd0: begin
			vns_rhs_array_muxed47 <= soc_basesoc_lm32_ibus_cyc;
		end
		default: begin
			vns_rhs_array_muxed47 <= soc_basesoc_lm32_dbus_cyc;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed48 <= 1'd0;
	case (vns_basesoc_grant)
		1'd0: begin
			vns_rhs_array_muxed48 <= soc_basesoc_lm32_ibus_stb;
		end
		default: begin
			vns_rhs_array_muxed48 <= soc_basesoc_lm32_dbus_stb;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed49 <= 1'd0;
	case (vns_basesoc_grant)
		1'd0: begin
			vns_rhs_array_muxed49 <= soc_basesoc_lm32_ibus_we;
		end
		default: begin
			vns_rhs_array_muxed49 <= soc_basesoc_lm32_dbus_we;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed50 <= 3'd0;
	case (vns_basesoc_grant)
		1'd0: begin
			vns_rhs_array_muxed50 <= soc_basesoc_lm32_ibus_cti;
		end
		default: begin
			vns_rhs_array_muxed50 <= soc_basesoc_lm32_dbus_cti;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed51 <= 2'd0;
	case (vns_basesoc_grant)
		1'd0: begin
			vns_rhs_array_muxed51 <= soc_basesoc_lm32_ibus_bte;
		end
		default: begin
			vns_rhs_array_muxed51 <= soc_basesoc_lm32_dbus_bte;
		end
	endcase
end
always @(*) begin
	vns_array_muxed0 <= 3'd0;
	case (soc_basesoc_sdram_steerer_sel0)
		1'd0: begin
			vns_array_muxed0 <= soc_basesoc_sdram_nop_ba[2:0];
		end
		1'd1: begin
			vns_array_muxed0 <= soc_basesoc_sdram_choose_cmd_cmd_payload_ba[2:0];
		end
		2'd2: begin
			vns_array_muxed0 <= soc_basesoc_sdram_choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			vns_array_muxed0 <= soc_basesoc_sdram_cmd_payload_ba[2:0];
		end
	endcase
end
always @(*) begin
	vns_array_muxed1 <= 14'd0;
	case (soc_basesoc_sdram_steerer_sel0)
		1'd0: begin
			vns_array_muxed1 <= soc_basesoc_sdram_nop_a;
		end
		1'd1: begin
			vns_array_muxed1 <= soc_basesoc_sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			vns_array_muxed1 <= soc_basesoc_sdram_choose_req_cmd_payload_a;
		end
		default: begin
			vns_array_muxed1 <= soc_basesoc_sdram_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	vns_array_muxed2 <= 1'd0;
	case (soc_basesoc_sdram_steerer_sel0)
		1'd0: begin
			vns_array_muxed2 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed2 <= ((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & soc_basesoc_sdram_choose_cmd_cmd_payload_cas);
		end
		2'd2: begin
			vns_array_muxed2 <= ((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & soc_basesoc_sdram_choose_req_cmd_payload_cas);
		end
		default: begin
			vns_array_muxed2 <= ((soc_basesoc_sdram_cmd_valid & soc_basesoc_sdram_cmd_ready) & soc_basesoc_sdram_cmd_payload_cas);
		end
	endcase
end
always @(*) begin
	vns_array_muxed3 <= 1'd0;
	case (soc_basesoc_sdram_steerer_sel0)
		1'd0: begin
			vns_array_muxed3 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed3 <= ((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & soc_basesoc_sdram_choose_cmd_cmd_payload_ras);
		end
		2'd2: begin
			vns_array_muxed3 <= ((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & soc_basesoc_sdram_choose_req_cmd_payload_ras);
		end
		default: begin
			vns_array_muxed3 <= ((soc_basesoc_sdram_cmd_valid & soc_basesoc_sdram_cmd_ready) & soc_basesoc_sdram_cmd_payload_ras);
		end
	endcase
end
always @(*) begin
	vns_array_muxed4 <= 1'd0;
	case (soc_basesoc_sdram_steerer_sel0)
		1'd0: begin
			vns_array_muxed4 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed4 <= ((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & soc_basesoc_sdram_choose_cmd_cmd_payload_we);
		end
		2'd2: begin
			vns_array_muxed4 <= ((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & soc_basesoc_sdram_choose_req_cmd_payload_we);
		end
		default: begin
			vns_array_muxed4 <= ((soc_basesoc_sdram_cmd_valid & soc_basesoc_sdram_cmd_ready) & soc_basesoc_sdram_cmd_payload_we);
		end
	endcase
end
always @(*) begin
	vns_array_muxed5 <= 1'd0;
	case (soc_basesoc_sdram_steerer_sel0)
		1'd0: begin
			vns_array_muxed5 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed5 <= ((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & soc_basesoc_sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			vns_array_muxed5 <= ((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & soc_basesoc_sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			vns_array_muxed5 <= ((soc_basesoc_sdram_cmd_valid & soc_basesoc_sdram_cmd_ready) & soc_basesoc_sdram_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	vns_array_muxed6 <= 1'd0;
	case (soc_basesoc_sdram_steerer_sel0)
		1'd0: begin
			vns_array_muxed6 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed6 <= ((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & soc_basesoc_sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			vns_array_muxed6 <= ((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & soc_basesoc_sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			vns_array_muxed6 <= ((soc_basesoc_sdram_cmd_valid & soc_basesoc_sdram_cmd_ready) & soc_basesoc_sdram_cmd_payload_is_write);
		end
	endcase
end
always @(*) begin
	vns_array_muxed7 <= 3'd0;
	case (soc_basesoc_sdram_steerer_sel1)
		1'd0: begin
			vns_array_muxed7 <= soc_basesoc_sdram_nop_ba[2:0];
		end
		1'd1: begin
			vns_array_muxed7 <= soc_basesoc_sdram_choose_cmd_cmd_payload_ba[2:0];
		end
		2'd2: begin
			vns_array_muxed7 <= soc_basesoc_sdram_choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			vns_array_muxed7 <= soc_basesoc_sdram_cmd_payload_ba[2:0];
		end
	endcase
end
always @(*) begin
	vns_array_muxed8 <= 14'd0;
	case (soc_basesoc_sdram_steerer_sel1)
		1'd0: begin
			vns_array_muxed8 <= soc_basesoc_sdram_nop_a;
		end
		1'd1: begin
			vns_array_muxed8 <= soc_basesoc_sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			vns_array_muxed8 <= soc_basesoc_sdram_choose_req_cmd_payload_a;
		end
		default: begin
			vns_array_muxed8 <= soc_basesoc_sdram_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	vns_array_muxed9 <= 1'd0;
	case (soc_basesoc_sdram_steerer_sel1)
		1'd0: begin
			vns_array_muxed9 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed9 <= ((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & soc_basesoc_sdram_choose_cmd_cmd_payload_cas);
		end
		2'd2: begin
			vns_array_muxed9 <= ((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & soc_basesoc_sdram_choose_req_cmd_payload_cas);
		end
		default: begin
			vns_array_muxed9 <= ((soc_basesoc_sdram_cmd_valid & soc_basesoc_sdram_cmd_ready) & soc_basesoc_sdram_cmd_payload_cas);
		end
	endcase
end
always @(*) begin
	vns_array_muxed10 <= 1'd0;
	case (soc_basesoc_sdram_steerer_sel1)
		1'd0: begin
			vns_array_muxed10 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed10 <= ((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & soc_basesoc_sdram_choose_cmd_cmd_payload_ras);
		end
		2'd2: begin
			vns_array_muxed10 <= ((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & soc_basesoc_sdram_choose_req_cmd_payload_ras);
		end
		default: begin
			vns_array_muxed10 <= ((soc_basesoc_sdram_cmd_valid & soc_basesoc_sdram_cmd_ready) & soc_basesoc_sdram_cmd_payload_ras);
		end
	endcase
end
always @(*) begin
	vns_array_muxed11 <= 1'd0;
	case (soc_basesoc_sdram_steerer_sel1)
		1'd0: begin
			vns_array_muxed11 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed11 <= ((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & soc_basesoc_sdram_choose_cmd_cmd_payload_we);
		end
		2'd2: begin
			vns_array_muxed11 <= ((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & soc_basesoc_sdram_choose_req_cmd_payload_we);
		end
		default: begin
			vns_array_muxed11 <= ((soc_basesoc_sdram_cmd_valid & soc_basesoc_sdram_cmd_ready) & soc_basesoc_sdram_cmd_payload_we);
		end
	endcase
end
always @(*) begin
	vns_array_muxed12 <= 1'd0;
	case (soc_basesoc_sdram_steerer_sel1)
		1'd0: begin
			vns_array_muxed12 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed12 <= ((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & soc_basesoc_sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			vns_array_muxed12 <= ((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & soc_basesoc_sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			vns_array_muxed12 <= ((soc_basesoc_sdram_cmd_valid & soc_basesoc_sdram_cmd_ready) & soc_basesoc_sdram_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	vns_array_muxed13 <= 1'd0;
	case (soc_basesoc_sdram_steerer_sel1)
		1'd0: begin
			vns_array_muxed13 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed13 <= ((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & soc_basesoc_sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			vns_array_muxed13 <= ((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & soc_basesoc_sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			vns_array_muxed13 <= ((soc_basesoc_sdram_cmd_valid & soc_basesoc_sdram_cmd_ready) & soc_basesoc_sdram_cmd_payload_is_write);
		end
	endcase
end
always @(*) begin
	vns_array_muxed14 <= 3'd0;
	case (soc_basesoc_sdram_steerer_sel2)
		1'd0: begin
			vns_array_muxed14 <= soc_basesoc_sdram_nop_ba[2:0];
		end
		1'd1: begin
			vns_array_muxed14 <= soc_basesoc_sdram_choose_cmd_cmd_payload_ba[2:0];
		end
		2'd2: begin
			vns_array_muxed14 <= soc_basesoc_sdram_choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			vns_array_muxed14 <= soc_basesoc_sdram_cmd_payload_ba[2:0];
		end
	endcase
end
always @(*) begin
	vns_array_muxed15 <= 14'd0;
	case (soc_basesoc_sdram_steerer_sel2)
		1'd0: begin
			vns_array_muxed15 <= soc_basesoc_sdram_nop_a;
		end
		1'd1: begin
			vns_array_muxed15 <= soc_basesoc_sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			vns_array_muxed15 <= soc_basesoc_sdram_choose_req_cmd_payload_a;
		end
		default: begin
			vns_array_muxed15 <= soc_basesoc_sdram_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	vns_array_muxed16 <= 1'd0;
	case (soc_basesoc_sdram_steerer_sel2)
		1'd0: begin
			vns_array_muxed16 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed16 <= ((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & soc_basesoc_sdram_choose_cmd_cmd_payload_cas);
		end
		2'd2: begin
			vns_array_muxed16 <= ((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & soc_basesoc_sdram_choose_req_cmd_payload_cas);
		end
		default: begin
			vns_array_muxed16 <= ((soc_basesoc_sdram_cmd_valid & soc_basesoc_sdram_cmd_ready) & soc_basesoc_sdram_cmd_payload_cas);
		end
	endcase
end
always @(*) begin
	vns_array_muxed17 <= 1'd0;
	case (soc_basesoc_sdram_steerer_sel2)
		1'd0: begin
			vns_array_muxed17 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed17 <= ((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & soc_basesoc_sdram_choose_cmd_cmd_payload_ras);
		end
		2'd2: begin
			vns_array_muxed17 <= ((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & soc_basesoc_sdram_choose_req_cmd_payload_ras);
		end
		default: begin
			vns_array_muxed17 <= ((soc_basesoc_sdram_cmd_valid & soc_basesoc_sdram_cmd_ready) & soc_basesoc_sdram_cmd_payload_ras);
		end
	endcase
end
always @(*) begin
	vns_array_muxed18 <= 1'd0;
	case (soc_basesoc_sdram_steerer_sel2)
		1'd0: begin
			vns_array_muxed18 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed18 <= ((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & soc_basesoc_sdram_choose_cmd_cmd_payload_we);
		end
		2'd2: begin
			vns_array_muxed18 <= ((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & soc_basesoc_sdram_choose_req_cmd_payload_we);
		end
		default: begin
			vns_array_muxed18 <= ((soc_basesoc_sdram_cmd_valid & soc_basesoc_sdram_cmd_ready) & soc_basesoc_sdram_cmd_payload_we);
		end
	endcase
end
always @(*) begin
	vns_array_muxed19 <= 1'd0;
	case (soc_basesoc_sdram_steerer_sel2)
		1'd0: begin
			vns_array_muxed19 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed19 <= ((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & soc_basesoc_sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			vns_array_muxed19 <= ((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & soc_basesoc_sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			vns_array_muxed19 <= ((soc_basesoc_sdram_cmd_valid & soc_basesoc_sdram_cmd_ready) & soc_basesoc_sdram_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	vns_array_muxed20 <= 1'd0;
	case (soc_basesoc_sdram_steerer_sel2)
		1'd0: begin
			vns_array_muxed20 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed20 <= ((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & soc_basesoc_sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			vns_array_muxed20 <= ((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & soc_basesoc_sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			vns_array_muxed20 <= ((soc_basesoc_sdram_cmd_valid & soc_basesoc_sdram_cmd_ready) & soc_basesoc_sdram_cmd_payload_is_write);
		end
	endcase
end
always @(*) begin
	vns_array_muxed21 <= 3'd0;
	case (soc_basesoc_sdram_steerer_sel3)
		1'd0: begin
			vns_array_muxed21 <= soc_basesoc_sdram_nop_ba[2:0];
		end
		1'd1: begin
			vns_array_muxed21 <= soc_basesoc_sdram_choose_cmd_cmd_payload_ba[2:0];
		end
		2'd2: begin
			vns_array_muxed21 <= soc_basesoc_sdram_choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			vns_array_muxed21 <= soc_basesoc_sdram_cmd_payload_ba[2:0];
		end
	endcase
end
always @(*) begin
	vns_array_muxed22 <= 14'd0;
	case (soc_basesoc_sdram_steerer_sel3)
		1'd0: begin
			vns_array_muxed22 <= soc_basesoc_sdram_nop_a;
		end
		1'd1: begin
			vns_array_muxed22 <= soc_basesoc_sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			vns_array_muxed22 <= soc_basesoc_sdram_choose_req_cmd_payload_a;
		end
		default: begin
			vns_array_muxed22 <= soc_basesoc_sdram_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	vns_array_muxed23 <= 1'd0;
	case (soc_basesoc_sdram_steerer_sel3)
		1'd0: begin
			vns_array_muxed23 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed23 <= ((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & soc_basesoc_sdram_choose_cmd_cmd_payload_cas);
		end
		2'd2: begin
			vns_array_muxed23 <= ((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & soc_basesoc_sdram_choose_req_cmd_payload_cas);
		end
		default: begin
			vns_array_muxed23 <= ((soc_basesoc_sdram_cmd_valid & soc_basesoc_sdram_cmd_ready) & soc_basesoc_sdram_cmd_payload_cas);
		end
	endcase
end
always @(*) begin
	vns_array_muxed24 <= 1'd0;
	case (soc_basesoc_sdram_steerer_sel3)
		1'd0: begin
			vns_array_muxed24 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed24 <= ((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & soc_basesoc_sdram_choose_cmd_cmd_payload_ras);
		end
		2'd2: begin
			vns_array_muxed24 <= ((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & soc_basesoc_sdram_choose_req_cmd_payload_ras);
		end
		default: begin
			vns_array_muxed24 <= ((soc_basesoc_sdram_cmd_valid & soc_basesoc_sdram_cmd_ready) & soc_basesoc_sdram_cmd_payload_ras);
		end
	endcase
end
always @(*) begin
	vns_array_muxed25 <= 1'd0;
	case (soc_basesoc_sdram_steerer_sel3)
		1'd0: begin
			vns_array_muxed25 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed25 <= ((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & soc_basesoc_sdram_choose_cmd_cmd_payload_we);
		end
		2'd2: begin
			vns_array_muxed25 <= ((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & soc_basesoc_sdram_choose_req_cmd_payload_we);
		end
		default: begin
			vns_array_muxed25 <= ((soc_basesoc_sdram_cmd_valid & soc_basesoc_sdram_cmd_ready) & soc_basesoc_sdram_cmd_payload_we);
		end
	endcase
end
always @(*) begin
	vns_array_muxed26 <= 1'd0;
	case (soc_basesoc_sdram_steerer_sel3)
		1'd0: begin
			vns_array_muxed26 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed26 <= ((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & soc_basesoc_sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			vns_array_muxed26 <= ((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & soc_basesoc_sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			vns_array_muxed26 <= ((soc_basesoc_sdram_cmd_valid & soc_basesoc_sdram_cmd_ready) & soc_basesoc_sdram_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	vns_array_muxed27 <= 1'd0;
	case (soc_basesoc_sdram_steerer_sel3)
		1'd0: begin
			vns_array_muxed27 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed27 <= ((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & soc_basesoc_sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			vns_array_muxed27 <= ((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & soc_basesoc_sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			vns_array_muxed27 <= ((soc_basesoc_sdram_cmd_valid & soc_basesoc_sdram_cmd_ready) & soc_basesoc_sdram_cmd_payload_is_write);
		end
	endcase
end
assign soc_basesoc_uart_phy_rx = vns_xilinxmultiregimpl0_regs1;
assign vns_xilinxasyncresetsynchronizerimpl0 = ((~soc_pll_locked) | (~cpu_reset));
assign vns_xilinxasyncresetsynchronizerimpl1 = ((~soc_pll_locked) | (~cpu_reset));
assign vns_xilinxasyncresetsynchronizerimpl2 = ((~soc_pll_locked) | (~cpu_reset));
assign vns_xilinxasyncresetsynchronizerimpl3 = ((~soc_pll_locked) | (~cpu_reset));
assign soc_switches_status = vns_xilinxmultiregimpl1_regs1;

always @(posedge clk200_clk) begin
	if ((soc_reset_counter != 1'd0)) begin
		soc_reset_counter <= (soc_reset_counter - 1'd1);
	end else begin
		soc_ic_reset <= 1'd0;
	end
	if (clk200_rst) begin
		soc_reset_counter <= 4'd15;
		soc_ic_reset <= 1'd1;
	end
end

always @(posedge sys_clk) begin
	if ((soc_basesoc_ctrl_bus_errors != 32'd4294967295)) begin
		if (soc_basesoc_ctrl_bus_error) begin
			soc_basesoc_ctrl_bus_errors <= (soc_basesoc_ctrl_bus_errors + 1'd1);
		end
	end
	soc_basesoc_rom_bus_ack <= 1'd0;
	if (((soc_basesoc_rom_bus_cyc & soc_basesoc_rom_bus_stb) & (~soc_basesoc_rom_bus_ack))) begin
		soc_basesoc_rom_bus_ack <= 1'd1;
	end
	soc_basesoc_sram_bus_ack <= 1'd0;
	if (((soc_basesoc_sram_bus_cyc & soc_basesoc_sram_bus_stb) & (~soc_basesoc_sram_bus_ack))) begin
		soc_basesoc_sram_bus_ack <= 1'd1;
	end
	soc_basesoc_interface_we <= 1'd0;
	soc_basesoc_interface_dat_w <= soc_basesoc_bus_wishbone_dat_w;
	soc_basesoc_interface_adr <= soc_basesoc_bus_wishbone_adr;
	soc_basesoc_bus_wishbone_dat_r <= soc_basesoc_interface_dat_r;
	if ((soc_basesoc_counter == 1'd1)) begin
		soc_basesoc_interface_we <= soc_basesoc_bus_wishbone_we;
	end
	if ((soc_basesoc_counter == 2'd2)) begin
		soc_basesoc_bus_wishbone_ack <= 1'd1;
	end
	if ((soc_basesoc_counter == 2'd3)) begin
		soc_basesoc_bus_wishbone_ack <= 1'd0;
	end
	if ((soc_basesoc_counter != 1'd0)) begin
		soc_basesoc_counter <= (soc_basesoc_counter + 1'd1);
	end else begin
		if ((soc_basesoc_bus_wishbone_cyc & soc_basesoc_bus_wishbone_stb)) begin
			soc_basesoc_counter <= 1'd1;
		end
	end
	soc_basesoc_uart_phy_sink_ready <= 1'd0;
	if (((soc_basesoc_uart_phy_sink_valid & (~soc_basesoc_uart_phy_tx_busy)) & (~soc_basesoc_uart_phy_sink_ready))) begin
		soc_basesoc_uart_phy_tx_reg <= soc_basesoc_uart_phy_sink_payload_data;
		soc_basesoc_uart_phy_tx_bitcount <= 1'd0;
		soc_basesoc_uart_phy_tx_busy <= 1'd1;
		serial_tx <= 1'd0;
	end else begin
		if ((soc_basesoc_uart_phy_uart_clk_txen & soc_basesoc_uart_phy_tx_busy)) begin
			soc_basesoc_uart_phy_tx_bitcount <= (soc_basesoc_uart_phy_tx_bitcount + 1'd1);
			if ((soc_basesoc_uart_phy_tx_bitcount == 4'd8)) begin
				serial_tx <= 1'd1;
			end else begin
				if ((soc_basesoc_uart_phy_tx_bitcount == 4'd9)) begin
					serial_tx <= 1'd1;
					soc_basesoc_uart_phy_tx_busy <= 1'd0;
					soc_basesoc_uart_phy_sink_ready <= 1'd1;
				end else begin
					serial_tx <= soc_basesoc_uart_phy_tx_reg[0];
					soc_basesoc_uart_phy_tx_reg <= {1'd0, soc_basesoc_uart_phy_tx_reg[7:1]};
				end
			end
		end
	end
	if (soc_basesoc_uart_phy_tx_busy) begin
		{soc_basesoc_uart_phy_uart_clk_txen, soc_basesoc_uart_phy_phase_accumulator_tx} <= (soc_basesoc_uart_phy_phase_accumulator_tx + soc_basesoc_uart_phy_storage);
	end else begin
		{soc_basesoc_uart_phy_uart_clk_txen, soc_basesoc_uart_phy_phase_accumulator_tx} <= 1'd0;
	end
	soc_basesoc_uart_phy_source_valid <= 1'd0;
	soc_basesoc_uart_phy_rx_r <= soc_basesoc_uart_phy_rx;
	if ((~soc_basesoc_uart_phy_rx_busy)) begin
		if (((~soc_basesoc_uart_phy_rx) & soc_basesoc_uart_phy_rx_r)) begin
			soc_basesoc_uart_phy_rx_busy <= 1'd1;
			soc_basesoc_uart_phy_rx_bitcount <= 1'd0;
		end
	end else begin
		if (soc_basesoc_uart_phy_uart_clk_rxen) begin
			soc_basesoc_uart_phy_rx_bitcount <= (soc_basesoc_uart_phy_rx_bitcount + 1'd1);
			if ((soc_basesoc_uart_phy_rx_bitcount == 1'd0)) begin
				if (soc_basesoc_uart_phy_rx) begin
					soc_basesoc_uart_phy_rx_busy <= 1'd0;
				end
			end else begin
				if ((soc_basesoc_uart_phy_rx_bitcount == 4'd9)) begin
					soc_basesoc_uart_phy_rx_busy <= 1'd0;
					if (soc_basesoc_uart_phy_rx) begin
						soc_basesoc_uart_phy_source_payload_data <= soc_basesoc_uart_phy_rx_reg;
						soc_basesoc_uart_phy_source_valid <= 1'd1;
					end
				end else begin
					soc_basesoc_uart_phy_rx_reg <= {soc_basesoc_uart_phy_rx, soc_basesoc_uart_phy_rx_reg[7:1]};
				end
			end
		end
	end
	if (soc_basesoc_uart_phy_rx_busy) begin
		{soc_basesoc_uart_phy_uart_clk_rxen, soc_basesoc_uart_phy_phase_accumulator_rx} <= (soc_basesoc_uart_phy_phase_accumulator_rx + soc_basesoc_uart_phy_storage);
	end else begin
		{soc_basesoc_uart_phy_uart_clk_rxen, soc_basesoc_uart_phy_phase_accumulator_rx} <= 32'd2147483648;
	end
	if (soc_basesoc_uart_tx_clear) begin
		soc_basesoc_uart_tx_pending <= 1'd0;
	end
	soc_basesoc_uart_tx_old_trigger <= soc_basesoc_uart_tx_trigger;
	if (((~soc_basesoc_uart_tx_trigger) & soc_basesoc_uart_tx_old_trigger)) begin
		soc_basesoc_uart_tx_pending <= 1'd1;
	end
	if (soc_basesoc_uart_rx_clear) begin
		soc_basesoc_uart_rx_pending <= 1'd0;
	end
	soc_basesoc_uart_rx_old_trigger <= soc_basesoc_uart_rx_trigger;
	if (((~soc_basesoc_uart_rx_trigger) & soc_basesoc_uart_rx_old_trigger)) begin
		soc_basesoc_uart_rx_pending <= 1'd1;
	end
	if (soc_basesoc_uart_tx_fifo_syncfifo_re) begin
		soc_basesoc_uart_tx_fifo_readable <= 1'd1;
	end else begin
		if (soc_basesoc_uart_tx_fifo_re) begin
			soc_basesoc_uart_tx_fifo_readable <= 1'd0;
		end
	end
	if (((soc_basesoc_uart_tx_fifo_syncfifo_we & soc_basesoc_uart_tx_fifo_syncfifo_writable) & (~soc_basesoc_uart_tx_fifo_replace))) begin
		soc_basesoc_uart_tx_fifo_produce <= (soc_basesoc_uart_tx_fifo_produce + 1'd1);
	end
	if (soc_basesoc_uart_tx_fifo_do_read) begin
		soc_basesoc_uart_tx_fifo_consume <= (soc_basesoc_uart_tx_fifo_consume + 1'd1);
	end
	if (((soc_basesoc_uart_tx_fifo_syncfifo_we & soc_basesoc_uart_tx_fifo_syncfifo_writable) & (~soc_basesoc_uart_tx_fifo_replace))) begin
		if ((~soc_basesoc_uart_tx_fifo_do_read)) begin
			soc_basesoc_uart_tx_fifo_level0 <= (soc_basesoc_uart_tx_fifo_level0 + 1'd1);
		end
	end else begin
		if (soc_basesoc_uart_tx_fifo_do_read) begin
			soc_basesoc_uart_tx_fifo_level0 <= (soc_basesoc_uart_tx_fifo_level0 - 1'd1);
		end
	end
	if (soc_basesoc_uart_rx_fifo_syncfifo_re) begin
		soc_basesoc_uart_rx_fifo_readable <= 1'd1;
	end else begin
		if (soc_basesoc_uart_rx_fifo_re) begin
			soc_basesoc_uart_rx_fifo_readable <= 1'd0;
		end
	end
	if (((soc_basesoc_uart_rx_fifo_syncfifo_we & soc_basesoc_uart_rx_fifo_syncfifo_writable) & (~soc_basesoc_uart_rx_fifo_replace))) begin
		soc_basesoc_uart_rx_fifo_produce <= (soc_basesoc_uart_rx_fifo_produce + 1'd1);
	end
	if (soc_basesoc_uart_rx_fifo_do_read) begin
		soc_basesoc_uart_rx_fifo_consume <= (soc_basesoc_uart_rx_fifo_consume + 1'd1);
	end
	if (((soc_basesoc_uart_rx_fifo_syncfifo_we & soc_basesoc_uart_rx_fifo_syncfifo_writable) & (~soc_basesoc_uart_rx_fifo_replace))) begin
		if ((~soc_basesoc_uart_rx_fifo_do_read)) begin
			soc_basesoc_uart_rx_fifo_level0 <= (soc_basesoc_uart_rx_fifo_level0 + 1'd1);
		end
	end else begin
		if (soc_basesoc_uart_rx_fifo_do_read) begin
			soc_basesoc_uart_rx_fifo_level0 <= (soc_basesoc_uart_rx_fifo_level0 - 1'd1);
		end
	end
	if (soc_basesoc_uart_reset) begin
		soc_basesoc_uart_tx_pending <= 1'd0;
		soc_basesoc_uart_tx_old_trigger <= 1'd0;
		soc_basesoc_uart_rx_pending <= 1'd0;
		soc_basesoc_uart_rx_old_trigger <= 1'd0;
		soc_basesoc_uart_tx_fifo_readable <= 1'd0;
		soc_basesoc_uart_tx_fifo_level0 <= 5'd0;
		soc_basesoc_uart_tx_fifo_produce <= 4'd0;
		soc_basesoc_uart_tx_fifo_consume <= 4'd0;
		soc_basesoc_uart_rx_fifo_readable <= 1'd0;
		soc_basesoc_uart_rx_fifo_level0 <= 5'd0;
		soc_basesoc_uart_rx_fifo_produce <= 4'd0;
		soc_basesoc_uart_rx_fifo_consume <= 4'd0;
	end
	if (soc_basesoc_timer0_en_storage) begin
		if ((soc_basesoc_timer0_value == 1'd0)) begin
			soc_basesoc_timer0_value <= soc_basesoc_timer0_reload_storage;
		end else begin
			soc_basesoc_timer0_value <= (soc_basesoc_timer0_value - 1'd1);
		end
	end else begin
		soc_basesoc_timer0_value <= soc_basesoc_timer0_load_storage;
	end
	if (soc_basesoc_timer0_update_value_re) begin
		soc_basesoc_timer0_value_status <= soc_basesoc_timer0_value;
	end
	if (soc_basesoc_timer0_zero_clear) begin
		soc_basesoc_timer0_zero_pending <= 1'd0;
	end
	soc_basesoc_timer0_zero_old_trigger <= soc_basesoc_timer0_zero_trigger;
	if (((~soc_basesoc_timer0_zero_trigger) & soc_basesoc_timer0_zero_old_trigger)) begin
		soc_basesoc_timer0_zero_pending <= 1'd1;
	end
	if ((soc_dna_cnt < 7'd114)) begin
		soc_dna_cnt <= (soc_dna_cnt + 1'd1);
		if (soc_dna_cnt[0]) begin
			soc_dna_status <= {soc_dna_status, soc_dna_do};
		end
	end
	if (soc_drdy) begin
		case (soc_channel)
			1'd0: begin
				soc_temperature_status <= (soc_data >>> 3'd4);
			end
			1'd1: begin
				soc_vccint_status <= (soc_data >>> 3'd4);
			end
			2'd2: begin
				soc_vccaux_status <= (soc_data >>> 3'd4);
			end
			3'd6: begin
				soc_vccbram_status <= (soc_data >>> 3'd4);
			end
		endcase
	end
	if (soc_eventsourceprocess0_clear) begin
		soc_eventsourceprocess0_pending <= 1'd0;
	end
	soc_eventsourceprocess0_old_trigger <= soc_eventsourceprocess0_trigger;
	if (((~soc_eventsourceprocess0_trigger) & soc_eventsourceprocess0_old_trigger)) begin
		soc_eventsourceprocess0_pending <= 1'd1;
	end
	if (soc_eventsourceprocess1_clear) begin
		soc_eventsourceprocess1_pending <= 1'd0;
	end
	soc_eventsourceprocess1_old_trigger <= soc_eventsourceprocess1_trigger;
	if (((~soc_eventsourceprocess1_trigger) & soc_eventsourceprocess1_old_trigger)) begin
		soc_eventsourceprocess1_pending <= 1'd1;
	end
	if (soc_eventsourceprocess2_clear) begin
		soc_eventsourceprocess2_pending <= 1'd0;
	end
	soc_eventsourceprocess2_old_trigger <= soc_eventsourceprocess2_trigger;
	if (((~soc_eventsourceprocess2_trigger) & soc_eventsourceprocess2_old_trigger)) begin
		soc_eventsourceprocess2_pending <= 1'd1;
	end
	if (soc_eventsourceprocess3_clear) begin
		soc_eventsourceprocess3_pending <= 1'd0;
	end
	soc_eventsourceprocess3_old_trigger <= soc_eventsourceprocess3_trigger;
	if (((~soc_eventsourceprocess3_trigger) & soc_eventsourceprocess3_old_trigger)) begin
		soc_eventsourceprocess3_pending <= 1'd1;
	end
	if (soc_waittimer0_wait) begin
		if ((~soc_waittimer0_done)) begin
			soc_waittimer0_count <= (soc_waittimer0_count - 1'd1);
		end
	end else begin
		soc_waittimer0_count <= 20'd1000000;
	end
	if (soc_waittimer1_wait) begin
		if ((~soc_waittimer1_done)) begin
			soc_waittimer1_count <= (soc_waittimer1_count - 1'd1);
		end
	end else begin
		soc_waittimer1_count <= 20'd1000000;
	end
	if (soc_waittimer2_wait) begin
		if ((~soc_waittimer2_done)) begin
			soc_waittimer2_count <= (soc_waittimer2_count - 1'd1);
		end
	end else begin
		soc_waittimer2_count <= 20'd1000000;
	end
	if (soc_waittimer3_wait) begin
		if ((~soc_waittimer3_done)) begin
			soc_waittimer3_count <= (soc_waittimer3_count - 1'd1);
		end
	end else begin
		soc_waittimer3_count <= 20'd1000000;
	end
	if ((soc_spiflash_i == 1'd0)) begin
		soc_spiflash_clk <= 1'd1;
		soc_spiflash_miso <= spiflash_1x_miso;
	end
	if ((soc_spiflash_i == 1'd1)) begin
		soc_spiflash_i <= 1'd0;
		soc_spiflash_clk <= 1'd0;
		soc_spiflash_sr <= {soc_spiflash_sr[30:0], soc_spiflash_miso};
	end else begin
		soc_spiflash_i <= (soc_spiflash_i + 1'd1);
	end
	if ((((soc_spiflash_bus_cyc & soc_spiflash_bus_stb) & (soc_spiflash_i == 1'd1)) & (soc_spiflash_counter == 1'd0))) begin
		soc_spiflash_cs_n <= 1'd0;
		soc_spiflash_sr[31:24] <= 4'd11;
	end
	if ((soc_spiflash_counter == 5'd16)) begin
		soc_spiflash_sr[31:8] <= {soc_spiflash_bus_adr, {2{1'd0}}};
	end
	if ((soc_spiflash_counter == 7'd64)) begin
	end
	if ((soc_spiflash_counter == 8'd146)) begin
		soc_spiflash_bus_ack <= 1'd1;
		soc_spiflash_cs_n <= 1'd1;
	end
	if ((soc_spiflash_counter == 8'd147)) begin
		soc_spiflash_bus_ack <= 1'd0;
	end
	if ((soc_spiflash_counter == 8'd149)) begin
	end
	if ((soc_spiflash_counter == 8'd149)) begin
		soc_spiflash_counter <= 1'd0;
	end else begin
		if ((soc_spiflash_counter != 1'd0)) begin
			soc_spiflash_counter <= (soc_spiflash_counter + 1'd1);
		end else begin
			if (((soc_spiflash_bus_cyc & soc_spiflash_bus_stb) & (soc_spiflash_i == 1'd1))) begin
				soc_spiflash_counter <= 1'd1;
			end
		end
	end
	if (soc_a7ddrphy_dly_sel_storage[0]) begin
		if (soc_a7ddrphy_rdly_dq_bitslip_rst_re) begin
			soc_a7ddrphy_bitslip0_value <= 1'd0;
		end else begin
			if (soc_a7ddrphy_rdly_dq_bitslip_re) begin
				soc_a7ddrphy_bitslip0_value <= (soc_a7ddrphy_bitslip0_value + 1'd1);
			end
		end
	end
	if (soc_a7ddrphy_dly_sel_storage[0]) begin
		if (soc_a7ddrphy_rdly_dq_bitslip_rst_re) begin
			soc_a7ddrphy_bitslip1_value <= 1'd0;
		end else begin
			if (soc_a7ddrphy_rdly_dq_bitslip_re) begin
				soc_a7ddrphy_bitslip1_value <= (soc_a7ddrphy_bitslip1_value + 1'd1);
			end
		end
	end
	if (soc_a7ddrphy_dly_sel_storage[0]) begin
		if (soc_a7ddrphy_rdly_dq_bitslip_rst_re) begin
			soc_a7ddrphy_bitslip2_value <= 1'd0;
		end else begin
			if (soc_a7ddrphy_rdly_dq_bitslip_re) begin
				soc_a7ddrphy_bitslip2_value <= (soc_a7ddrphy_bitslip2_value + 1'd1);
			end
		end
	end
	if (soc_a7ddrphy_dly_sel_storage[0]) begin
		if (soc_a7ddrphy_rdly_dq_bitslip_rst_re) begin
			soc_a7ddrphy_bitslip3_value <= 1'd0;
		end else begin
			if (soc_a7ddrphy_rdly_dq_bitslip_re) begin
				soc_a7ddrphy_bitslip3_value <= (soc_a7ddrphy_bitslip3_value + 1'd1);
			end
		end
	end
	if (soc_a7ddrphy_dly_sel_storage[0]) begin
		if (soc_a7ddrphy_rdly_dq_bitslip_rst_re) begin
			soc_a7ddrphy_bitslip4_value <= 1'd0;
		end else begin
			if (soc_a7ddrphy_rdly_dq_bitslip_re) begin
				soc_a7ddrphy_bitslip4_value <= (soc_a7ddrphy_bitslip4_value + 1'd1);
			end
		end
	end
	if (soc_a7ddrphy_dly_sel_storage[0]) begin
		if (soc_a7ddrphy_rdly_dq_bitslip_rst_re) begin
			soc_a7ddrphy_bitslip5_value <= 1'd0;
		end else begin
			if (soc_a7ddrphy_rdly_dq_bitslip_re) begin
				soc_a7ddrphy_bitslip5_value <= (soc_a7ddrphy_bitslip5_value + 1'd1);
			end
		end
	end
	if (soc_a7ddrphy_dly_sel_storage[0]) begin
		if (soc_a7ddrphy_rdly_dq_bitslip_rst_re) begin
			soc_a7ddrphy_bitslip6_value <= 1'd0;
		end else begin
			if (soc_a7ddrphy_rdly_dq_bitslip_re) begin
				soc_a7ddrphy_bitslip6_value <= (soc_a7ddrphy_bitslip6_value + 1'd1);
			end
		end
	end
	if (soc_a7ddrphy_dly_sel_storage[0]) begin
		if (soc_a7ddrphy_rdly_dq_bitslip_rst_re) begin
			soc_a7ddrphy_bitslip7_value <= 1'd0;
		end else begin
			if (soc_a7ddrphy_rdly_dq_bitslip_re) begin
				soc_a7ddrphy_bitslip7_value <= (soc_a7ddrphy_bitslip7_value + 1'd1);
			end
		end
	end
	if (soc_a7ddrphy_dly_sel_storage[1]) begin
		if (soc_a7ddrphy_rdly_dq_bitslip_rst_re) begin
			soc_a7ddrphy_bitslip8_value <= 1'd0;
		end else begin
			if (soc_a7ddrphy_rdly_dq_bitslip_re) begin
				soc_a7ddrphy_bitslip8_value <= (soc_a7ddrphy_bitslip8_value + 1'd1);
			end
		end
	end
	if (soc_a7ddrphy_dly_sel_storage[1]) begin
		if (soc_a7ddrphy_rdly_dq_bitslip_rst_re) begin
			soc_a7ddrphy_bitslip9_value <= 1'd0;
		end else begin
			if (soc_a7ddrphy_rdly_dq_bitslip_re) begin
				soc_a7ddrphy_bitslip9_value <= (soc_a7ddrphy_bitslip9_value + 1'd1);
			end
		end
	end
	if (soc_a7ddrphy_dly_sel_storage[1]) begin
		if (soc_a7ddrphy_rdly_dq_bitslip_rst_re) begin
			soc_a7ddrphy_bitslip10_value <= 1'd0;
		end else begin
			if (soc_a7ddrphy_rdly_dq_bitslip_re) begin
				soc_a7ddrphy_bitslip10_value <= (soc_a7ddrphy_bitslip10_value + 1'd1);
			end
		end
	end
	if (soc_a7ddrphy_dly_sel_storage[1]) begin
		if (soc_a7ddrphy_rdly_dq_bitslip_rst_re) begin
			soc_a7ddrphy_bitslip11_value <= 1'd0;
		end else begin
			if (soc_a7ddrphy_rdly_dq_bitslip_re) begin
				soc_a7ddrphy_bitslip11_value <= (soc_a7ddrphy_bitslip11_value + 1'd1);
			end
		end
	end
	if (soc_a7ddrphy_dly_sel_storage[1]) begin
		if (soc_a7ddrphy_rdly_dq_bitslip_rst_re) begin
			soc_a7ddrphy_bitslip12_value <= 1'd0;
		end else begin
			if (soc_a7ddrphy_rdly_dq_bitslip_re) begin
				soc_a7ddrphy_bitslip12_value <= (soc_a7ddrphy_bitslip12_value + 1'd1);
			end
		end
	end
	if (soc_a7ddrphy_dly_sel_storage[1]) begin
		if (soc_a7ddrphy_rdly_dq_bitslip_rst_re) begin
			soc_a7ddrphy_bitslip13_value <= 1'd0;
		end else begin
			if (soc_a7ddrphy_rdly_dq_bitslip_re) begin
				soc_a7ddrphy_bitslip13_value <= (soc_a7ddrphy_bitslip13_value + 1'd1);
			end
		end
	end
	if (soc_a7ddrphy_dly_sel_storage[1]) begin
		if (soc_a7ddrphy_rdly_dq_bitslip_rst_re) begin
			soc_a7ddrphy_bitslip14_value <= 1'd0;
		end else begin
			if (soc_a7ddrphy_rdly_dq_bitslip_re) begin
				soc_a7ddrphy_bitslip14_value <= (soc_a7ddrphy_bitslip14_value + 1'd1);
			end
		end
	end
	if (soc_a7ddrphy_dly_sel_storage[1]) begin
		if (soc_a7ddrphy_rdly_dq_bitslip_rst_re) begin
			soc_a7ddrphy_bitslip15_value <= 1'd0;
		end else begin
			if (soc_a7ddrphy_rdly_dq_bitslip_re) begin
				soc_a7ddrphy_bitslip15_value <= (soc_a7ddrphy_bitslip15_value + 1'd1);
			end
		end
	end
	soc_a7ddrphy_n_rddata_en0 <= soc_a7ddrphy_dfi_p2_rddata_en;
	soc_a7ddrphy_n_rddata_en1 <= soc_a7ddrphy_n_rddata_en0;
	soc_a7ddrphy_n_rddata_en2 <= soc_a7ddrphy_n_rddata_en1;
	soc_a7ddrphy_n_rddata_en3 <= soc_a7ddrphy_n_rddata_en2;
	soc_a7ddrphy_n_rddata_en4 <= soc_a7ddrphy_n_rddata_en3;
	soc_a7ddrphy_n_rddata_en5 <= soc_a7ddrphy_n_rddata_en4;
	soc_a7ddrphy_n_rddata_en6 <= soc_a7ddrphy_n_rddata_en5;
	soc_a7ddrphy_n_rddata_en7 <= soc_a7ddrphy_n_rddata_en6;
	soc_a7ddrphy_dfi_p0_rddata_valid <= soc_a7ddrphy_n_rddata_en7;
	soc_a7ddrphy_dfi_p1_rddata_valid <= soc_a7ddrphy_n_rddata_en7;
	soc_a7ddrphy_dfi_p2_rddata_valid <= soc_a7ddrphy_n_rddata_en7;
	soc_a7ddrphy_dfi_p3_rddata_valid <= soc_a7ddrphy_n_rddata_en7;
	soc_a7ddrphy_last_wrdata_en <= {soc_a7ddrphy_last_wrdata_en[2:0], soc_a7ddrphy_dfi_p3_wrdata_en};
	soc_a7ddrphy_oe_dqs <= soc_a7ddrphy_oe;
	soc_a7ddrphy_oe_dq <= soc_a7ddrphy_oe;
	soc_a7ddrphy_bitslip0_r <= {soc_a7ddrphy_bitslip0_i, soc_a7ddrphy_bitslip0_r[15:8]};
	case (soc_a7ddrphy_bitslip0_value)
		1'd0: begin
			soc_a7ddrphy_bitslip0_o <= soc_a7ddrphy_bitslip0_r[7:0];
		end
		1'd1: begin
			soc_a7ddrphy_bitslip0_o <= soc_a7ddrphy_bitslip0_r[8:1];
		end
		2'd2: begin
			soc_a7ddrphy_bitslip0_o <= soc_a7ddrphy_bitslip0_r[9:2];
		end
		2'd3: begin
			soc_a7ddrphy_bitslip0_o <= soc_a7ddrphy_bitslip0_r[10:3];
		end
		3'd4: begin
			soc_a7ddrphy_bitslip0_o <= soc_a7ddrphy_bitslip0_r[11:4];
		end
		3'd5: begin
			soc_a7ddrphy_bitslip0_o <= soc_a7ddrphy_bitslip0_r[12:5];
		end
		3'd6: begin
			soc_a7ddrphy_bitslip0_o <= soc_a7ddrphy_bitslip0_r[13:6];
		end
		3'd7: begin
			soc_a7ddrphy_bitslip0_o <= soc_a7ddrphy_bitslip0_r[14:7];
		end
	endcase
	soc_a7ddrphy_bitslip1_r <= {soc_a7ddrphy_bitslip1_i, soc_a7ddrphy_bitslip1_r[15:8]};
	case (soc_a7ddrphy_bitslip1_value)
		1'd0: begin
			soc_a7ddrphy_bitslip1_o <= soc_a7ddrphy_bitslip1_r[7:0];
		end
		1'd1: begin
			soc_a7ddrphy_bitslip1_o <= soc_a7ddrphy_bitslip1_r[8:1];
		end
		2'd2: begin
			soc_a7ddrphy_bitslip1_o <= soc_a7ddrphy_bitslip1_r[9:2];
		end
		2'd3: begin
			soc_a7ddrphy_bitslip1_o <= soc_a7ddrphy_bitslip1_r[10:3];
		end
		3'd4: begin
			soc_a7ddrphy_bitslip1_o <= soc_a7ddrphy_bitslip1_r[11:4];
		end
		3'd5: begin
			soc_a7ddrphy_bitslip1_o <= soc_a7ddrphy_bitslip1_r[12:5];
		end
		3'd6: begin
			soc_a7ddrphy_bitslip1_o <= soc_a7ddrphy_bitslip1_r[13:6];
		end
		3'd7: begin
			soc_a7ddrphy_bitslip1_o <= soc_a7ddrphy_bitslip1_r[14:7];
		end
	endcase
	soc_a7ddrphy_bitslip2_r <= {soc_a7ddrphy_bitslip2_i, soc_a7ddrphy_bitslip2_r[15:8]};
	case (soc_a7ddrphy_bitslip2_value)
		1'd0: begin
			soc_a7ddrphy_bitslip2_o <= soc_a7ddrphy_bitslip2_r[7:0];
		end
		1'd1: begin
			soc_a7ddrphy_bitslip2_o <= soc_a7ddrphy_bitslip2_r[8:1];
		end
		2'd2: begin
			soc_a7ddrphy_bitslip2_o <= soc_a7ddrphy_bitslip2_r[9:2];
		end
		2'd3: begin
			soc_a7ddrphy_bitslip2_o <= soc_a7ddrphy_bitslip2_r[10:3];
		end
		3'd4: begin
			soc_a7ddrphy_bitslip2_o <= soc_a7ddrphy_bitslip2_r[11:4];
		end
		3'd5: begin
			soc_a7ddrphy_bitslip2_o <= soc_a7ddrphy_bitslip2_r[12:5];
		end
		3'd6: begin
			soc_a7ddrphy_bitslip2_o <= soc_a7ddrphy_bitslip2_r[13:6];
		end
		3'd7: begin
			soc_a7ddrphy_bitslip2_o <= soc_a7ddrphy_bitslip2_r[14:7];
		end
	endcase
	soc_a7ddrphy_bitslip3_r <= {soc_a7ddrphy_bitslip3_i, soc_a7ddrphy_bitslip3_r[15:8]};
	case (soc_a7ddrphy_bitslip3_value)
		1'd0: begin
			soc_a7ddrphy_bitslip3_o <= soc_a7ddrphy_bitslip3_r[7:0];
		end
		1'd1: begin
			soc_a7ddrphy_bitslip3_o <= soc_a7ddrphy_bitslip3_r[8:1];
		end
		2'd2: begin
			soc_a7ddrphy_bitslip3_o <= soc_a7ddrphy_bitslip3_r[9:2];
		end
		2'd3: begin
			soc_a7ddrphy_bitslip3_o <= soc_a7ddrphy_bitslip3_r[10:3];
		end
		3'd4: begin
			soc_a7ddrphy_bitslip3_o <= soc_a7ddrphy_bitslip3_r[11:4];
		end
		3'd5: begin
			soc_a7ddrphy_bitslip3_o <= soc_a7ddrphy_bitslip3_r[12:5];
		end
		3'd6: begin
			soc_a7ddrphy_bitslip3_o <= soc_a7ddrphy_bitslip3_r[13:6];
		end
		3'd7: begin
			soc_a7ddrphy_bitslip3_o <= soc_a7ddrphy_bitslip3_r[14:7];
		end
	endcase
	soc_a7ddrphy_bitslip4_r <= {soc_a7ddrphy_bitslip4_i, soc_a7ddrphy_bitslip4_r[15:8]};
	case (soc_a7ddrphy_bitslip4_value)
		1'd0: begin
			soc_a7ddrphy_bitslip4_o <= soc_a7ddrphy_bitslip4_r[7:0];
		end
		1'd1: begin
			soc_a7ddrphy_bitslip4_o <= soc_a7ddrphy_bitslip4_r[8:1];
		end
		2'd2: begin
			soc_a7ddrphy_bitslip4_o <= soc_a7ddrphy_bitslip4_r[9:2];
		end
		2'd3: begin
			soc_a7ddrphy_bitslip4_o <= soc_a7ddrphy_bitslip4_r[10:3];
		end
		3'd4: begin
			soc_a7ddrphy_bitslip4_o <= soc_a7ddrphy_bitslip4_r[11:4];
		end
		3'd5: begin
			soc_a7ddrphy_bitslip4_o <= soc_a7ddrphy_bitslip4_r[12:5];
		end
		3'd6: begin
			soc_a7ddrphy_bitslip4_o <= soc_a7ddrphy_bitslip4_r[13:6];
		end
		3'd7: begin
			soc_a7ddrphy_bitslip4_o <= soc_a7ddrphy_bitslip4_r[14:7];
		end
	endcase
	soc_a7ddrphy_bitslip5_r <= {soc_a7ddrphy_bitslip5_i, soc_a7ddrphy_bitslip5_r[15:8]};
	case (soc_a7ddrphy_bitslip5_value)
		1'd0: begin
			soc_a7ddrphy_bitslip5_o <= soc_a7ddrphy_bitslip5_r[7:0];
		end
		1'd1: begin
			soc_a7ddrphy_bitslip5_o <= soc_a7ddrphy_bitslip5_r[8:1];
		end
		2'd2: begin
			soc_a7ddrphy_bitslip5_o <= soc_a7ddrphy_bitslip5_r[9:2];
		end
		2'd3: begin
			soc_a7ddrphy_bitslip5_o <= soc_a7ddrphy_bitslip5_r[10:3];
		end
		3'd4: begin
			soc_a7ddrphy_bitslip5_o <= soc_a7ddrphy_bitslip5_r[11:4];
		end
		3'd5: begin
			soc_a7ddrphy_bitslip5_o <= soc_a7ddrphy_bitslip5_r[12:5];
		end
		3'd6: begin
			soc_a7ddrphy_bitslip5_o <= soc_a7ddrphy_bitslip5_r[13:6];
		end
		3'd7: begin
			soc_a7ddrphy_bitslip5_o <= soc_a7ddrphy_bitslip5_r[14:7];
		end
	endcase
	soc_a7ddrphy_bitslip6_r <= {soc_a7ddrphy_bitslip6_i, soc_a7ddrphy_bitslip6_r[15:8]};
	case (soc_a7ddrphy_bitslip6_value)
		1'd0: begin
			soc_a7ddrphy_bitslip6_o <= soc_a7ddrphy_bitslip6_r[7:0];
		end
		1'd1: begin
			soc_a7ddrphy_bitslip6_o <= soc_a7ddrphy_bitslip6_r[8:1];
		end
		2'd2: begin
			soc_a7ddrphy_bitslip6_o <= soc_a7ddrphy_bitslip6_r[9:2];
		end
		2'd3: begin
			soc_a7ddrphy_bitslip6_o <= soc_a7ddrphy_bitslip6_r[10:3];
		end
		3'd4: begin
			soc_a7ddrphy_bitslip6_o <= soc_a7ddrphy_bitslip6_r[11:4];
		end
		3'd5: begin
			soc_a7ddrphy_bitslip6_o <= soc_a7ddrphy_bitslip6_r[12:5];
		end
		3'd6: begin
			soc_a7ddrphy_bitslip6_o <= soc_a7ddrphy_bitslip6_r[13:6];
		end
		3'd7: begin
			soc_a7ddrphy_bitslip6_o <= soc_a7ddrphy_bitslip6_r[14:7];
		end
	endcase
	soc_a7ddrphy_bitslip7_r <= {soc_a7ddrphy_bitslip7_i, soc_a7ddrphy_bitslip7_r[15:8]};
	case (soc_a7ddrphy_bitslip7_value)
		1'd0: begin
			soc_a7ddrphy_bitslip7_o <= soc_a7ddrphy_bitslip7_r[7:0];
		end
		1'd1: begin
			soc_a7ddrphy_bitslip7_o <= soc_a7ddrphy_bitslip7_r[8:1];
		end
		2'd2: begin
			soc_a7ddrphy_bitslip7_o <= soc_a7ddrphy_bitslip7_r[9:2];
		end
		2'd3: begin
			soc_a7ddrphy_bitslip7_o <= soc_a7ddrphy_bitslip7_r[10:3];
		end
		3'd4: begin
			soc_a7ddrphy_bitslip7_o <= soc_a7ddrphy_bitslip7_r[11:4];
		end
		3'd5: begin
			soc_a7ddrphy_bitslip7_o <= soc_a7ddrphy_bitslip7_r[12:5];
		end
		3'd6: begin
			soc_a7ddrphy_bitslip7_o <= soc_a7ddrphy_bitslip7_r[13:6];
		end
		3'd7: begin
			soc_a7ddrphy_bitslip7_o <= soc_a7ddrphy_bitslip7_r[14:7];
		end
	endcase
	soc_a7ddrphy_bitslip8_r <= {soc_a7ddrphy_bitslip8_i, soc_a7ddrphy_bitslip8_r[15:8]};
	case (soc_a7ddrphy_bitslip8_value)
		1'd0: begin
			soc_a7ddrphy_bitslip8_o <= soc_a7ddrphy_bitslip8_r[7:0];
		end
		1'd1: begin
			soc_a7ddrphy_bitslip8_o <= soc_a7ddrphy_bitslip8_r[8:1];
		end
		2'd2: begin
			soc_a7ddrphy_bitslip8_o <= soc_a7ddrphy_bitslip8_r[9:2];
		end
		2'd3: begin
			soc_a7ddrphy_bitslip8_o <= soc_a7ddrphy_bitslip8_r[10:3];
		end
		3'd4: begin
			soc_a7ddrphy_bitslip8_o <= soc_a7ddrphy_bitslip8_r[11:4];
		end
		3'd5: begin
			soc_a7ddrphy_bitslip8_o <= soc_a7ddrphy_bitslip8_r[12:5];
		end
		3'd6: begin
			soc_a7ddrphy_bitslip8_o <= soc_a7ddrphy_bitslip8_r[13:6];
		end
		3'd7: begin
			soc_a7ddrphy_bitslip8_o <= soc_a7ddrphy_bitslip8_r[14:7];
		end
	endcase
	soc_a7ddrphy_bitslip9_r <= {soc_a7ddrphy_bitslip9_i, soc_a7ddrphy_bitslip9_r[15:8]};
	case (soc_a7ddrphy_bitslip9_value)
		1'd0: begin
			soc_a7ddrphy_bitslip9_o <= soc_a7ddrphy_bitslip9_r[7:0];
		end
		1'd1: begin
			soc_a7ddrphy_bitslip9_o <= soc_a7ddrphy_bitslip9_r[8:1];
		end
		2'd2: begin
			soc_a7ddrphy_bitslip9_o <= soc_a7ddrphy_bitslip9_r[9:2];
		end
		2'd3: begin
			soc_a7ddrphy_bitslip9_o <= soc_a7ddrphy_bitslip9_r[10:3];
		end
		3'd4: begin
			soc_a7ddrphy_bitslip9_o <= soc_a7ddrphy_bitslip9_r[11:4];
		end
		3'd5: begin
			soc_a7ddrphy_bitslip9_o <= soc_a7ddrphy_bitslip9_r[12:5];
		end
		3'd6: begin
			soc_a7ddrphy_bitslip9_o <= soc_a7ddrphy_bitslip9_r[13:6];
		end
		3'd7: begin
			soc_a7ddrphy_bitslip9_o <= soc_a7ddrphy_bitslip9_r[14:7];
		end
	endcase
	soc_a7ddrphy_bitslip10_r <= {soc_a7ddrphy_bitslip10_i, soc_a7ddrphy_bitslip10_r[15:8]};
	case (soc_a7ddrphy_bitslip10_value)
		1'd0: begin
			soc_a7ddrphy_bitslip10_o <= soc_a7ddrphy_bitslip10_r[7:0];
		end
		1'd1: begin
			soc_a7ddrphy_bitslip10_o <= soc_a7ddrphy_bitslip10_r[8:1];
		end
		2'd2: begin
			soc_a7ddrphy_bitslip10_o <= soc_a7ddrphy_bitslip10_r[9:2];
		end
		2'd3: begin
			soc_a7ddrphy_bitslip10_o <= soc_a7ddrphy_bitslip10_r[10:3];
		end
		3'd4: begin
			soc_a7ddrphy_bitslip10_o <= soc_a7ddrphy_bitslip10_r[11:4];
		end
		3'd5: begin
			soc_a7ddrphy_bitslip10_o <= soc_a7ddrphy_bitslip10_r[12:5];
		end
		3'd6: begin
			soc_a7ddrphy_bitslip10_o <= soc_a7ddrphy_bitslip10_r[13:6];
		end
		3'd7: begin
			soc_a7ddrphy_bitslip10_o <= soc_a7ddrphy_bitslip10_r[14:7];
		end
	endcase
	soc_a7ddrphy_bitslip11_r <= {soc_a7ddrphy_bitslip11_i, soc_a7ddrphy_bitslip11_r[15:8]};
	case (soc_a7ddrphy_bitslip11_value)
		1'd0: begin
			soc_a7ddrphy_bitslip11_o <= soc_a7ddrphy_bitslip11_r[7:0];
		end
		1'd1: begin
			soc_a7ddrphy_bitslip11_o <= soc_a7ddrphy_bitslip11_r[8:1];
		end
		2'd2: begin
			soc_a7ddrphy_bitslip11_o <= soc_a7ddrphy_bitslip11_r[9:2];
		end
		2'd3: begin
			soc_a7ddrphy_bitslip11_o <= soc_a7ddrphy_bitslip11_r[10:3];
		end
		3'd4: begin
			soc_a7ddrphy_bitslip11_o <= soc_a7ddrphy_bitslip11_r[11:4];
		end
		3'd5: begin
			soc_a7ddrphy_bitslip11_o <= soc_a7ddrphy_bitslip11_r[12:5];
		end
		3'd6: begin
			soc_a7ddrphy_bitslip11_o <= soc_a7ddrphy_bitslip11_r[13:6];
		end
		3'd7: begin
			soc_a7ddrphy_bitslip11_o <= soc_a7ddrphy_bitslip11_r[14:7];
		end
	endcase
	soc_a7ddrphy_bitslip12_r <= {soc_a7ddrphy_bitslip12_i, soc_a7ddrphy_bitslip12_r[15:8]};
	case (soc_a7ddrphy_bitslip12_value)
		1'd0: begin
			soc_a7ddrphy_bitslip12_o <= soc_a7ddrphy_bitslip12_r[7:0];
		end
		1'd1: begin
			soc_a7ddrphy_bitslip12_o <= soc_a7ddrphy_bitslip12_r[8:1];
		end
		2'd2: begin
			soc_a7ddrphy_bitslip12_o <= soc_a7ddrphy_bitslip12_r[9:2];
		end
		2'd3: begin
			soc_a7ddrphy_bitslip12_o <= soc_a7ddrphy_bitslip12_r[10:3];
		end
		3'd4: begin
			soc_a7ddrphy_bitslip12_o <= soc_a7ddrphy_bitslip12_r[11:4];
		end
		3'd5: begin
			soc_a7ddrphy_bitslip12_o <= soc_a7ddrphy_bitslip12_r[12:5];
		end
		3'd6: begin
			soc_a7ddrphy_bitslip12_o <= soc_a7ddrphy_bitslip12_r[13:6];
		end
		3'd7: begin
			soc_a7ddrphy_bitslip12_o <= soc_a7ddrphy_bitslip12_r[14:7];
		end
	endcase
	soc_a7ddrphy_bitslip13_r <= {soc_a7ddrphy_bitslip13_i, soc_a7ddrphy_bitslip13_r[15:8]};
	case (soc_a7ddrphy_bitslip13_value)
		1'd0: begin
			soc_a7ddrphy_bitslip13_o <= soc_a7ddrphy_bitslip13_r[7:0];
		end
		1'd1: begin
			soc_a7ddrphy_bitslip13_o <= soc_a7ddrphy_bitslip13_r[8:1];
		end
		2'd2: begin
			soc_a7ddrphy_bitslip13_o <= soc_a7ddrphy_bitslip13_r[9:2];
		end
		2'd3: begin
			soc_a7ddrphy_bitslip13_o <= soc_a7ddrphy_bitslip13_r[10:3];
		end
		3'd4: begin
			soc_a7ddrphy_bitslip13_o <= soc_a7ddrphy_bitslip13_r[11:4];
		end
		3'd5: begin
			soc_a7ddrphy_bitslip13_o <= soc_a7ddrphy_bitslip13_r[12:5];
		end
		3'd6: begin
			soc_a7ddrphy_bitslip13_o <= soc_a7ddrphy_bitslip13_r[13:6];
		end
		3'd7: begin
			soc_a7ddrphy_bitslip13_o <= soc_a7ddrphy_bitslip13_r[14:7];
		end
	endcase
	soc_a7ddrphy_bitslip14_r <= {soc_a7ddrphy_bitslip14_i, soc_a7ddrphy_bitslip14_r[15:8]};
	case (soc_a7ddrphy_bitslip14_value)
		1'd0: begin
			soc_a7ddrphy_bitslip14_o <= soc_a7ddrphy_bitslip14_r[7:0];
		end
		1'd1: begin
			soc_a7ddrphy_bitslip14_o <= soc_a7ddrphy_bitslip14_r[8:1];
		end
		2'd2: begin
			soc_a7ddrphy_bitslip14_o <= soc_a7ddrphy_bitslip14_r[9:2];
		end
		2'd3: begin
			soc_a7ddrphy_bitslip14_o <= soc_a7ddrphy_bitslip14_r[10:3];
		end
		3'd4: begin
			soc_a7ddrphy_bitslip14_o <= soc_a7ddrphy_bitslip14_r[11:4];
		end
		3'd5: begin
			soc_a7ddrphy_bitslip14_o <= soc_a7ddrphy_bitslip14_r[12:5];
		end
		3'd6: begin
			soc_a7ddrphy_bitslip14_o <= soc_a7ddrphy_bitslip14_r[13:6];
		end
		3'd7: begin
			soc_a7ddrphy_bitslip14_o <= soc_a7ddrphy_bitslip14_r[14:7];
		end
	endcase
	soc_a7ddrphy_bitslip15_r <= {soc_a7ddrphy_bitslip15_i, soc_a7ddrphy_bitslip15_r[15:8]};
	case (soc_a7ddrphy_bitslip15_value)
		1'd0: begin
			soc_a7ddrphy_bitslip15_o <= soc_a7ddrphy_bitslip15_r[7:0];
		end
		1'd1: begin
			soc_a7ddrphy_bitslip15_o <= soc_a7ddrphy_bitslip15_r[8:1];
		end
		2'd2: begin
			soc_a7ddrphy_bitslip15_o <= soc_a7ddrphy_bitslip15_r[9:2];
		end
		2'd3: begin
			soc_a7ddrphy_bitslip15_o <= soc_a7ddrphy_bitslip15_r[10:3];
		end
		3'd4: begin
			soc_a7ddrphy_bitslip15_o <= soc_a7ddrphy_bitslip15_r[11:4];
		end
		3'd5: begin
			soc_a7ddrphy_bitslip15_o <= soc_a7ddrphy_bitslip15_r[12:5];
		end
		3'd6: begin
			soc_a7ddrphy_bitslip15_o <= soc_a7ddrphy_bitslip15_r[13:6];
		end
		3'd7: begin
			soc_a7ddrphy_bitslip15_o <= soc_a7ddrphy_bitslip15_r[14:7];
		end
	endcase
	if (soc_basesoc_sdram_inti_p0_rddata_valid) begin
		soc_basesoc_sdram_phaseinjector0_status <= soc_basesoc_sdram_inti_p0_rddata;
	end
	if (soc_basesoc_sdram_inti_p1_rddata_valid) begin
		soc_basesoc_sdram_phaseinjector1_status <= soc_basesoc_sdram_inti_p1_rddata;
	end
	if (soc_basesoc_sdram_inti_p2_rddata_valid) begin
		soc_basesoc_sdram_phaseinjector2_status <= soc_basesoc_sdram_inti_p2_rddata;
	end
	if (soc_basesoc_sdram_inti_p3_rddata_valid) begin
		soc_basesoc_sdram_phaseinjector3_status <= soc_basesoc_sdram_inti_p3_rddata;
	end
	if (soc_basesoc_sdram_timer_wait) begin
		if ((~soc_basesoc_sdram_timer_done)) begin
			if ((soc_basesoc_sdram_timer_load & (soc_basesoc_sdram_timer_load_count < soc_basesoc_sdram_timer_count))) begin
				soc_basesoc_sdram_timer_count <= soc_basesoc_sdram_timer_load_count;
			end else begin
				soc_basesoc_sdram_timer_count <= (soc_basesoc_sdram_timer_count - 1'd1);
			end
		end
	end else begin
		soc_basesoc_sdram_timer_count <= 10'd782;
	end
	if (soc_basesoc_sdram_timer_reset) begin
		soc_basesoc_sdram_timer_count <= 10'd782;
	end
	soc_basesoc_sdram_cmd_payload_a <= 11'd1024;
	soc_basesoc_sdram_cmd_payload_ba <= 1'd0;
	soc_basesoc_sdram_cmd_payload_cas <= 1'd0;
	soc_basesoc_sdram_cmd_payload_ras <= 1'd0;
	soc_basesoc_sdram_cmd_payload_we <= 1'd0;
	soc_basesoc_sdram_generator_done <= 1'd0;
	if ((soc_basesoc_sdram_generator_counter == 1'd1)) begin
		soc_basesoc_sdram_cmd_payload_ras <= 1'd1;
		soc_basesoc_sdram_cmd_payload_we <= 1'd1;
	end
	if ((soc_basesoc_sdram_generator_counter == 3'd4)) begin
		soc_basesoc_sdram_cmd_payload_cas <= 1'd1;
		soc_basesoc_sdram_cmd_payload_ras <= 1'd1;
	end
	if ((soc_basesoc_sdram_generator_counter == 5'd18)) begin
		soc_basesoc_sdram_generator_done <= 1'd1;
	end
	if ((soc_basesoc_sdram_generator_counter == 5'd18)) begin
		soc_basesoc_sdram_generator_counter <= 1'd0;
	end else begin
		if ((soc_basesoc_sdram_generator_counter != 1'd0)) begin
			soc_basesoc_sdram_generator_counter <= (soc_basesoc_sdram_generator_counter + 1'd1);
		end else begin
			if (soc_basesoc_sdram_generator_start) begin
				soc_basesoc_sdram_generator_counter <= 1'd1;
			end
		end
	end
	vns_refresher_state <= vns_refresher_next_state;
	if (soc_basesoc_sdram_bankmachine0_row_close) begin
		soc_basesoc_sdram_bankmachine0_row_opened <= 1'd0;
	end else begin
		if (soc_basesoc_sdram_bankmachine0_row_open) begin
			soc_basesoc_sdram_bankmachine0_row_opened <= 1'd1;
			soc_basesoc_sdram_bankmachine0_row <= soc_basesoc_sdram_bankmachine0_cmd_buffer_source_payload_addr[20:7];
		end
	end
	if (((soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we & soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable) & (~soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_replace))) begin
		soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_produce <= (soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_do_read) begin
		soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_consume <= (soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we & soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable) & (~soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_replace))) begin
		if ((~soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_do_read)) begin
			soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_level <= (soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_do_read) begin
			soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_level <= (soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (soc_basesoc_sdram_bankmachine0_cmd_buffer_pipe_ce) begin
		soc_basesoc_sdram_bankmachine0_cmd_buffer_valid_n <= soc_basesoc_sdram_bankmachine0_cmd_buffer_sink_valid;
	end
	if (soc_basesoc_sdram_bankmachine0_cmd_buffer_pipe_ce) begin
		soc_basesoc_sdram_bankmachine0_cmd_buffer_first_n <= (soc_basesoc_sdram_bankmachine0_cmd_buffer_sink_valid & soc_basesoc_sdram_bankmachine0_cmd_buffer_sink_first);
		soc_basesoc_sdram_bankmachine0_cmd_buffer_last_n <= (soc_basesoc_sdram_bankmachine0_cmd_buffer_sink_valid & soc_basesoc_sdram_bankmachine0_cmd_buffer_sink_last);
	end
	if (soc_basesoc_sdram_bankmachine0_cmd_buffer_pipe_ce) begin
		soc_basesoc_sdram_bankmachine0_cmd_buffer_source_payload_we <= soc_basesoc_sdram_bankmachine0_cmd_buffer_sink_payload_we;
		soc_basesoc_sdram_bankmachine0_cmd_buffer_source_payload_addr <= soc_basesoc_sdram_bankmachine0_cmd_buffer_sink_payload_addr;
	end
	if (soc_basesoc_sdram_bankmachine0_twtpcon_valid) begin
		soc_basesoc_sdram_bankmachine0_twtpcon_count <= 3'd5;
		if (1'd0) begin
			soc_basesoc_sdram_bankmachine0_twtpcon_ready <= 1'd1;
		end else begin
			soc_basesoc_sdram_bankmachine0_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_basesoc_sdram_bankmachine0_twtpcon_ready)) begin
			soc_basesoc_sdram_bankmachine0_twtpcon_count <= (soc_basesoc_sdram_bankmachine0_twtpcon_count - 1'd1);
			if ((soc_basesoc_sdram_bankmachine0_twtpcon_count == 1'd1)) begin
				soc_basesoc_sdram_bankmachine0_twtpcon_ready <= 1'd1;
			end
		end
	end
	if (soc_basesoc_sdram_bankmachine0_trccon_valid) begin
		soc_basesoc_sdram_bankmachine0_trccon_count <= 3'd5;
		if (1'd0) begin
			soc_basesoc_sdram_bankmachine0_trccon_ready <= 1'd1;
		end else begin
			soc_basesoc_sdram_bankmachine0_trccon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_basesoc_sdram_bankmachine0_trccon_ready)) begin
			soc_basesoc_sdram_bankmachine0_trccon_count <= (soc_basesoc_sdram_bankmachine0_trccon_count - 1'd1);
			if ((soc_basesoc_sdram_bankmachine0_trccon_count == 1'd1)) begin
				soc_basesoc_sdram_bankmachine0_trccon_ready <= 1'd1;
			end
		end
	end
	if (soc_basesoc_sdram_bankmachine0_trascon_valid) begin
		soc_basesoc_sdram_bankmachine0_trascon_count <= 3'd4;
		if (1'd0) begin
			soc_basesoc_sdram_bankmachine0_trascon_ready <= 1'd1;
		end else begin
			soc_basesoc_sdram_bankmachine0_trascon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_basesoc_sdram_bankmachine0_trascon_ready)) begin
			soc_basesoc_sdram_bankmachine0_trascon_count <= (soc_basesoc_sdram_bankmachine0_trascon_count - 1'd1);
			if ((soc_basesoc_sdram_bankmachine0_trascon_count == 1'd1)) begin
				soc_basesoc_sdram_bankmachine0_trascon_ready <= 1'd1;
			end
		end
	end
	vns_bankmachine0_state <= vns_bankmachine0_next_state;
	if (soc_basesoc_sdram_bankmachine1_row_close) begin
		soc_basesoc_sdram_bankmachine1_row_opened <= 1'd0;
	end else begin
		if (soc_basesoc_sdram_bankmachine1_row_open) begin
			soc_basesoc_sdram_bankmachine1_row_opened <= 1'd1;
			soc_basesoc_sdram_bankmachine1_row <= soc_basesoc_sdram_bankmachine1_cmd_buffer_source_payload_addr[20:7];
		end
	end
	if (((soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we & soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable) & (~soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_replace))) begin
		soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_produce <= (soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_do_read) begin
		soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_consume <= (soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we & soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable) & (~soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_replace))) begin
		if ((~soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_do_read)) begin
			soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_level <= (soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_do_read) begin
			soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_level <= (soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (soc_basesoc_sdram_bankmachine1_cmd_buffer_pipe_ce) begin
		soc_basesoc_sdram_bankmachine1_cmd_buffer_valid_n <= soc_basesoc_sdram_bankmachine1_cmd_buffer_sink_valid;
	end
	if (soc_basesoc_sdram_bankmachine1_cmd_buffer_pipe_ce) begin
		soc_basesoc_sdram_bankmachine1_cmd_buffer_first_n <= (soc_basesoc_sdram_bankmachine1_cmd_buffer_sink_valid & soc_basesoc_sdram_bankmachine1_cmd_buffer_sink_first);
		soc_basesoc_sdram_bankmachine1_cmd_buffer_last_n <= (soc_basesoc_sdram_bankmachine1_cmd_buffer_sink_valid & soc_basesoc_sdram_bankmachine1_cmd_buffer_sink_last);
	end
	if (soc_basesoc_sdram_bankmachine1_cmd_buffer_pipe_ce) begin
		soc_basesoc_sdram_bankmachine1_cmd_buffer_source_payload_we <= soc_basesoc_sdram_bankmachine1_cmd_buffer_sink_payload_we;
		soc_basesoc_sdram_bankmachine1_cmd_buffer_source_payload_addr <= soc_basesoc_sdram_bankmachine1_cmd_buffer_sink_payload_addr;
	end
	if (soc_basesoc_sdram_bankmachine1_twtpcon_valid) begin
		soc_basesoc_sdram_bankmachine1_twtpcon_count <= 3'd5;
		if (1'd0) begin
			soc_basesoc_sdram_bankmachine1_twtpcon_ready <= 1'd1;
		end else begin
			soc_basesoc_sdram_bankmachine1_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_basesoc_sdram_bankmachine1_twtpcon_ready)) begin
			soc_basesoc_sdram_bankmachine1_twtpcon_count <= (soc_basesoc_sdram_bankmachine1_twtpcon_count - 1'd1);
			if ((soc_basesoc_sdram_bankmachine1_twtpcon_count == 1'd1)) begin
				soc_basesoc_sdram_bankmachine1_twtpcon_ready <= 1'd1;
			end
		end
	end
	if (soc_basesoc_sdram_bankmachine1_trccon_valid) begin
		soc_basesoc_sdram_bankmachine1_trccon_count <= 3'd5;
		if (1'd0) begin
			soc_basesoc_sdram_bankmachine1_trccon_ready <= 1'd1;
		end else begin
			soc_basesoc_sdram_bankmachine1_trccon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_basesoc_sdram_bankmachine1_trccon_ready)) begin
			soc_basesoc_sdram_bankmachine1_trccon_count <= (soc_basesoc_sdram_bankmachine1_trccon_count - 1'd1);
			if ((soc_basesoc_sdram_bankmachine1_trccon_count == 1'd1)) begin
				soc_basesoc_sdram_bankmachine1_trccon_ready <= 1'd1;
			end
		end
	end
	if (soc_basesoc_sdram_bankmachine1_trascon_valid) begin
		soc_basesoc_sdram_bankmachine1_trascon_count <= 3'd4;
		if (1'd0) begin
			soc_basesoc_sdram_bankmachine1_trascon_ready <= 1'd1;
		end else begin
			soc_basesoc_sdram_bankmachine1_trascon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_basesoc_sdram_bankmachine1_trascon_ready)) begin
			soc_basesoc_sdram_bankmachine1_trascon_count <= (soc_basesoc_sdram_bankmachine1_trascon_count - 1'd1);
			if ((soc_basesoc_sdram_bankmachine1_trascon_count == 1'd1)) begin
				soc_basesoc_sdram_bankmachine1_trascon_ready <= 1'd1;
			end
		end
	end
	vns_bankmachine1_state <= vns_bankmachine1_next_state;
	if (soc_basesoc_sdram_bankmachine2_row_close) begin
		soc_basesoc_sdram_bankmachine2_row_opened <= 1'd0;
	end else begin
		if (soc_basesoc_sdram_bankmachine2_row_open) begin
			soc_basesoc_sdram_bankmachine2_row_opened <= 1'd1;
			soc_basesoc_sdram_bankmachine2_row <= soc_basesoc_sdram_bankmachine2_cmd_buffer_source_payload_addr[20:7];
		end
	end
	if (((soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we & soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable) & (~soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_replace))) begin
		soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_produce <= (soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_do_read) begin
		soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_consume <= (soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we & soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable) & (~soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_replace))) begin
		if ((~soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_do_read)) begin
			soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_level <= (soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_do_read) begin
			soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_level <= (soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (soc_basesoc_sdram_bankmachine2_cmd_buffer_pipe_ce) begin
		soc_basesoc_sdram_bankmachine2_cmd_buffer_valid_n <= soc_basesoc_sdram_bankmachine2_cmd_buffer_sink_valid;
	end
	if (soc_basesoc_sdram_bankmachine2_cmd_buffer_pipe_ce) begin
		soc_basesoc_sdram_bankmachine2_cmd_buffer_first_n <= (soc_basesoc_sdram_bankmachine2_cmd_buffer_sink_valid & soc_basesoc_sdram_bankmachine2_cmd_buffer_sink_first);
		soc_basesoc_sdram_bankmachine2_cmd_buffer_last_n <= (soc_basesoc_sdram_bankmachine2_cmd_buffer_sink_valid & soc_basesoc_sdram_bankmachine2_cmd_buffer_sink_last);
	end
	if (soc_basesoc_sdram_bankmachine2_cmd_buffer_pipe_ce) begin
		soc_basesoc_sdram_bankmachine2_cmd_buffer_source_payload_we <= soc_basesoc_sdram_bankmachine2_cmd_buffer_sink_payload_we;
		soc_basesoc_sdram_bankmachine2_cmd_buffer_source_payload_addr <= soc_basesoc_sdram_bankmachine2_cmd_buffer_sink_payload_addr;
	end
	if (soc_basesoc_sdram_bankmachine2_twtpcon_valid) begin
		soc_basesoc_sdram_bankmachine2_twtpcon_count <= 3'd5;
		if (1'd0) begin
			soc_basesoc_sdram_bankmachine2_twtpcon_ready <= 1'd1;
		end else begin
			soc_basesoc_sdram_bankmachine2_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_basesoc_sdram_bankmachine2_twtpcon_ready)) begin
			soc_basesoc_sdram_bankmachine2_twtpcon_count <= (soc_basesoc_sdram_bankmachine2_twtpcon_count - 1'd1);
			if ((soc_basesoc_sdram_bankmachine2_twtpcon_count == 1'd1)) begin
				soc_basesoc_sdram_bankmachine2_twtpcon_ready <= 1'd1;
			end
		end
	end
	if (soc_basesoc_sdram_bankmachine2_trccon_valid) begin
		soc_basesoc_sdram_bankmachine2_trccon_count <= 3'd5;
		if (1'd0) begin
			soc_basesoc_sdram_bankmachine2_trccon_ready <= 1'd1;
		end else begin
			soc_basesoc_sdram_bankmachine2_trccon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_basesoc_sdram_bankmachine2_trccon_ready)) begin
			soc_basesoc_sdram_bankmachine2_trccon_count <= (soc_basesoc_sdram_bankmachine2_trccon_count - 1'd1);
			if ((soc_basesoc_sdram_bankmachine2_trccon_count == 1'd1)) begin
				soc_basesoc_sdram_bankmachine2_trccon_ready <= 1'd1;
			end
		end
	end
	if (soc_basesoc_sdram_bankmachine2_trascon_valid) begin
		soc_basesoc_sdram_bankmachine2_trascon_count <= 3'd4;
		if (1'd0) begin
			soc_basesoc_sdram_bankmachine2_trascon_ready <= 1'd1;
		end else begin
			soc_basesoc_sdram_bankmachine2_trascon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_basesoc_sdram_bankmachine2_trascon_ready)) begin
			soc_basesoc_sdram_bankmachine2_trascon_count <= (soc_basesoc_sdram_bankmachine2_trascon_count - 1'd1);
			if ((soc_basesoc_sdram_bankmachine2_trascon_count == 1'd1)) begin
				soc_basesoc_sdram_bankmachine2_trascon_ready <= 1'd1;
			end
		end
	end
	vns_bankmachine2_state <= vns_bankmachine2_next_state;
	if (soc_basesoc_sdram_bankmachine3_row_close) begin
		soc_basesoc_sdram_bankmachine3_row_opened <= 1'd0;
	end else begin
		if (soc_basesoc_sdram_bankmachine3_row_open) begin
			soc_basesoc_sdram_bankmachine3_row_opened <= 1'd1;
			soc_basesoc_sdram_bankmachine3_row <= soc_basesoc_sdram_bankmachine3_cmd_buffer_source_payload_addr[20:7];
		end
	end
	if (((soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we & soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable) & (~soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_replace))) begin
		soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_produce <= (soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_do_read) begin
		soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_consume <= (soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we & soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable) & (~soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_replace))) begin
		if ((~soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_do_read)) begin
			soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_level <= (soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_do_read) begin
			soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_level <= (soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (soc_basesoc_sdram_bankmachine3_cmd_buffer_pipe_ce) begin
		soc_basesoc_sdram_bankmachine3_cmd_buffer_valid_n <= soc_basesoc_sdram_bankmachine3_cmd_buffer_sink_valid;
	end
	if (soc_basesoc_sdram_bankmachine3_cmd_buffer_pipe_ce) begin
		soc_basesoc_sdram_bankmachine3_cmd_buffer_first_n <= (soc_basesoc_sdram_bankmachine3_cmd_buffer_sink_valid & soc_basesoc_sdram_bankmachine3_cmd_buffer_sink_first);
		soc_basesoc_sdram_bankmachine3_cmd_buffer_last_n <= (soc_basesoc_sdram_bankmachine3_cmd_buffer_sink_valid & soc_basesoc_sdram_bankmachine3_cmd_buffer_sink_last);
	end
	if (soc_basesoc_sdram_bankmachine3_cmd_buffer_pipe_ce) begin
		soc_basesoc_sdram_bankmachine3_cmd_buffer_source_payload_we <= soc_basesoc_sdram_bankmachine3_cmd_buffer_sink_payload_we;
		soc_basesoc_sdram_bankmachine3_cmd_buffer_source_payload_addr <= soc_basesoc_sdram_bankmachine3_cmd_buffer_sink_payload_addr;
	end
	if (soc_basesoc_sdram_bankmachine3_twtpcon_valid) begin
		soc_basesoc_sdram_bankmachine3_twtpcon_count <= 3'd5;
		if (1'd0) begin
			soc_basesoc_sdram_bankmachine3_twtpcon_ready <= 1'd1;
		end else begin
			soc_basesoc_sdram_bankmachine3_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_basesoc_sdram_bankmachine3_twtpcon_ready)) begin
			soc_basesoc_sdram_bankmachine3_twtpcon_count <= (soc_basesoc_sdram_bankmachine3_twtpcon_count - 1'd1);
			if ((soc_basesoc_sdram_bankmachine3_twtpcon_count == 1'd1)) begin
				soc_basesoc_sdram_bankmachine3_twtpcon_ready <= 1'd1;
			end
		end
	end
	if (soc_basesoc_sdram_bankmachine3_trccon_valid) begin
		soc_basesoc_sdram_bankmachine3_trccon_count <= 3'd5;
		if (1'd0) begin
			soc_basesoc_sdram_bankmachine3_trccon_ready <= 1'd1;
		end else begin
			soc_basesoc_sdram_bankmachine3_trccon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_basesoc_sdram_bankmachine3_trccon_ready)) begin
			soc_basesoc_sdram_bankmachine3_trccon_count <= (soc_basesoc_sdram_bankmachine3_trccon_count - 1'd1);
			if ((soc_basesoc_sdram_bankmachine3_trccon_count == 1'd1)) begin
				soc_basesoc_sdram_bankmachine3_trccon_ready <= 1'd1;
			end
		end
	end
	if (soc_basesoc_sdram_bankmachine3_trascon_valid) begin
		soc_basesoc_sdram_bankmachine3_trascon_count <= 3'd4;
		if (1'd0) begin
			soc_basesoc_sdram_bankmachine3_trascon_ready <= 1'd1;
		end else begin
			soc_basesoc_sdram_bankmachine3_trascon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_basesoc_sdram_bankmachine3_trascon_ready)) begin
			soc_basesoc_sdram_bankmachine3_trascon_count <= (soc_basesoc_sdram_bankmachine3_trascon_count - 1'd1);
			if ((soc_basesoc_sdram_bankmachine3_trascon_count == 1'd1)) begin
				soc_basesoc_sdram_bankmachine3_trascon_ready <= 1'd1;
			end
		end
	end
	vns_bankmachine3_state <= vns_bankmachine3_next_state;
	if (soc_basesoc_sdram_bankmachine4_row_close) begin
		soc_basesoc_sdram_bankmachine4_row_opened <= 1'd0;
	end else begin
		if (soc_basesoc_sdram_bankmachine4_row_open) begin
			soc_basesoc_sdram_bankmachine4_row_opened <= 1'd1;
			soc_basesoc_sdram_bankmachine4_row <= soc_basesoc_sdram_bankmachine4_cmd_buffer_source_payload_addr[20:7];
		end
	end
	if (((soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_we & soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable) & (~soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_replace))) begin
		soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_produce <= (soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_do_read) begin
		soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_consume <= (soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_we & soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable) & (~soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_replace))) begin
		if ((~soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_do_read)) begin
			soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_level <= (soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_do_read) begin
			soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_level <= (soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (soc_basesoc_sdram_bankmachine4_cmd_buffer_pipe_ce) begin
		soc_basesoc_sdram_bankmachine4_cmd_buffer_valid_n <= soc_basesoc_sdram_bankmachine4_cmd_buffer_sink_valid;
	end
	if (soc_basesoc_sdram_bankmachine4_cmd_buffer_pipe_ce) begin
		soc_basesoc_sdram_bankmachine4_cmd_buffer_first_n <= (soc_basesoc_sdram_bankmachine4_cmd_buffer_sink_valid & soc_basesoc_sdram_bankmachine4_cmd_buffer_sink_first);
		soc_basesoc_sdram_bankmachine4_cmd_buffer_last_n <= (soc_basesoc_sdram_bankmachine4_cmd_buffer_sink_valid & soc_basesoc_sdram_bankmachine4_cmd_buffer_sink_last);
	end
	if (soc_basesoc_sdram_bankmachine4_cmd_buffer_pipe_ce) begin
		soc_basesoc_sdram_bankmachine4_cmd_buffer_source_payload_we <= soc_basesoc_sdram_bankmachine4_cmd_buffer_sink_payload_we;
		soc_basesoc_sdram_bankmachine4_cmd_buffer_source_payload_addr <= soc_basesoc_sdram_bankmachine4_cmd_buffer_sink_payload_addr;
	end
	if (soc_basesoc_sdram_bankmachine4_twtpcon_valid) begin
		soc_basesoc_sdram_bankmachine4_twtpcon_count <= 3'd5;
		if (1'd0) begin
			soc_basesoc_sdram_bankmachine4_twtpcon_ready <= 1'd1;
		end else begin
			soc_basesoc_sdram_bankmachine4_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_basesoc_sdram_bankmachine4_twtpcon_ready)) begin
			soc_basesoc_sdram_bankmachine4_twtpcon_count <= (soc_basesoc_sdram_bankmachine4_twtpcon_count - 1'd1);
			if ((soc_basesoc_sdram_bankmachine4_twtpcon_count == 1'd1)) begin
				soc_basesoc_sdram_bankmachine4_twtpcon_ready <= 1'd1;
			end
		end
	end
	if (soc_basesoc_sdram_bankmachine4_trccon_valid) begin
		soc_basesoc_sdram_bankmachine4_trccon_count <= 3'd5;
		if (1'd0) begin
			soc_basesoc_sdram_bankmachine4_trccon_ready <= 1'd1;
		end else begin
			soc_basesoc_sdram_bankmachine4_trccon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_basesoc_sdram_bankmachine4_trccon_ready)) begin
			soc_basesoc_sdram_bankmachine4_trccon_count <= (soc_basesoc_sdram_bankmachine4_trccon_count - 1'd1);
			if ((soc_basesoc_sdram_bankmachine4_trccon_count == 1'd1)) begin
				soc_basesoc_sdram_bankmachine4_trccon_ready <= 1'd1;
			end
		end
	end
	if (soc_basesoc_sdram_bankmachine4_trascon_valid) begin
		soc_basesoc_sdram_bankmachine4_trascon_count <= 3'd4;
		if (1'd0) begin
			soc_basesoc_sdram_bankmachine4_trascon_ready <= 1'd1;
		end else begin
			soc_basesoc_sdram_bankmachine4_trascon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_basesoc_sdram_bankmachine4_trascon_ready)) begin
			soc_basesoc_sdram_bankmachine4_trascon_count <= (soc_basesoc_sdram_bankmachine4_trascon_count - 1'd1);
			if ((soc_basesoc_sdram_bankmachine4_trascon_count == 1'd1)) begin
				soc_basesoc_sdram_bankmachine4_trascon_ready <= 1'd1;
			end
		end
	end
	vns_bankmachine4_state <= vns_bankmachine4_next_state;
	if (soc_basesoc_sdram_bankmachine5_row_close) begin
		soc_basesoc_sdram_bankmachine5_row_opened <= 1'd0;
	end else begin
		if (soc_basesoc_sdram_bankmachine5_row_open) begin
			soc_basesoc_sdram_bankmachine5_row_opened <= 1'd1;
			soc_basesoc_sdram_bankmachine5_row <= soc_basesoc_sdram_bankmachine5_cmd_buffer_source_payload_addr[20:7];
		end
	end
	if (((soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_we & soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable) & (~soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_replace))) begin
		soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_produce <= (soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_do_read) begin
		soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_consume <= (soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_we & soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable) & (~soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_replace))) begin
		if ((~soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_do_read)) begin
			soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_level <= (soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_do_read) begin
			soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_level <= (soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (soc_basesoc_sdram_bankmachine5_cmd_buffer_pipe_ce) begin
		soc_basesoc_sdram_bankmachine5_cmd_buffer_valid_n <= soc_basesoc_sdram_bankmachine5_cmd_buffer_sink_valid;
	end
	if (soc_basesoc_sdram_bankmachine5_cmd_buffer_pipe_ce) begin
		soc_basesoc_sdram_bankmachine5_cmd_buffer_first_n <= (soc_basesoc_sdram_bankmachine5_cmd_buffer_sink_valid & soc_basesoc_sdram_bankmachine5_cmd_buffer_sink_first);
		soc_basesoc_sdram_bankmachine5_cmd_buffer_last_n <= (soc_basesoc_sdram_bankmachine5_cmd_buffer_sink_valid & soc_basesoc_sdram_bankmachine5_cmd_buffer_sink_last);
	end
	if (soc_basesoc_sdram_bankmachine5_cmd_buffer_pipe_ce) begin
		soc_basesoc_sdram_bankmachine5_cmd_buffer_source_payload_we <= soc_basesoc_sdram_bankmachine5_cmd_buffer_sink_payload_we;
		soc_basesoc_sdram_bankmachine5_cmd_buffer_source_payload_addr <= soc_basesoc_sdram_bankmachine5_cmd_buffer_sink_payload_addr;
	end
	if (soc_basesoc_sdram_bankmachine5_twtpcon_valid) begin
		soc_basesoc_sdram_bankmachine5_twtpcon_count <= 3'd5;
		if (1'd0) begin
			soc_basesoc_sdram_bankmachine5_twtpcon_ready <= 1'd1;
		end else begin
			soc_basesoc_sdram_bankmachine5_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_basesoc_sdram_bankmachine5_twtpcon_ready)) begin
			soc_basesoc_sdram_bankmachine5_twtpcon_count <= (soc_basesoc_sdram_bankmachine5_twtpcon_count - 1'd1);
			if ((soc_basesoc_sdram_bankmachine5_twtpcon_count == 1'd1)) begin
				soc_basesoc_sdram_bankmachine5_twtpcon_ready <= 1'd1;
			end
		end
	end
	if (soc_basesoc_sdram_bankmachine5_trccon_valid) begin
		soc_basesoc_sdram_bankmachine5_trccon_count <= 3'd5;
		if (1'd0) begin
			soc_basesoc_sdram_bankmachine5_trccon_ready <= 1'd1;
		end else begin
			soc_basesoc_sdram_bankmachine5_trccon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_basesoc_sdram_bankmachine5_trccon_ready)) begin
			soc_basesoc_sdram_bankmachine5_trccon_count <= (soc_basesoc_sdram_bankmachine5_trccon_count - 1'd1);
			if ((soc_basesoc_sdram_bankmachine5_trccon_count == 1'd1)) begin
				soc_basesoc_sdram_bankmachine5_trccon_ready <= 1'd1;
			end
		end
	end
	if (soc_basesoc_sdram_bankmachine5_trascon_valid) begin
		soc_basesoc_sdram_bankmachine5_trascon_count <= 3'd4;
		if (1'd0) begin
			soc_basesoc_sdram_bankmachine5_trascon_ready <= 1'd1;
		end else begin
			soc_basesoc_sdram_bankmachine5_trascon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_basesoc_sdram_bankmachine5_trascon_ready)) begin
			soc_basesoc_sdram_bankmachine5_trascon_count <= (soc_basesoc_sdram_bankmachine5_trascon_count - 1'd1);
			if ((soc_basesoc_sdram_bankmachine5_trascon_count == 1'd1)) begin
				soc_basesoc_sdram_bankmachine5_trascon_ready <= 1'd1;
			end
		end
	end
	vns_bankmachine5_state <= vns_bankmachine5_next_state;
	if (soc_basesoc_sdram_bankmachine6_row_close) begin
		soc_basesoc_sdram_bankmachine6_row_opened <= 1'd0;
	end else begin
		if (soc_basesoc_sdram_bankmachine6_row_open) begin
			soc_basesoc_sdram_bankmachine6_row_opened <= 1'd1;
			soc_basesoc_sdram_bankmachine6_row <= soc_basesoc_sdram_bankmachine6_cmd_buffer_source_payload_addr[20:7];
		end
	end
	if (((soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_we & soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable) & (~soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_replace))) begin
		soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_produce <= (soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_do_read) begin
		soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_consume <= (soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_we & soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable) & (~soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_replace))) begin
		if ((~soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_do_read)) begin
			soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_level <= (soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_do_read) begin
			soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_level <= (soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (soc_basesoc_sdram_bankmachine6_cmd_buffer_pipe_ce) begin
		soc_basesoc_sdram_bankmachine6_cmd_buffer_valid_n <= soc_basesoc_sdram_bankmachine6_cmd_buffer_sink_valid;
	end
	if (soc_basesoc_sdram_bankmachine6_cmd_buffer_pipe_ce) begin
		soc_basesoc_sdram_bankmachine6_cmd_buffer_first_n <= (soc_basesoc_sdram_bankmachine6_cmd_buffer_sink_valid & soc_basesoc_sdram_bankmachine6_cmd_buffer_sink_first);
		soc_basesoc_sdram_bankmachine6_cmd_buffer_last_n <= (soc_basesoc_sdram_bankmachine6_cmd_buffer_sink_valid & soc_basesoc_sdram_bankmachine6_cmd_buffer_sink_last);
	end
	if (soc_basesoc_sdram_bankmachine6_cmd_buffer_pipe_ce) begin
		soc_basesoc_sdram_bankmachine6_cmd_buffer_source_payload_we <= soc_basesoc_sdram_bankmachine6_cmd_buffer_sink_payload_we;
		soc_basesoc_sdram_bankmachine6_cmd_buffer_source_payload_addr <= soc_basesoc_sdram_bankmachine6_cmd_buffer_sink_payload_addr;
	end
	if (soc_basesoc_sdram_bankmachine6_twtpcon_valid) begin
		soc_basesoc_sdram_bankmachine6_twtpcon_count <= 3'd5;
		if (1'd0) begin
			soc_basesoc_sdram_bankmachine6_twtpcon_ready <= 1'd1;
		end else begin
			soc_basesoc_sdram_bankmachine6_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_basesoc_sdram_bankmachine6_twtpcon_ready)) begin
			soc_basesoc_sdram_bankmachine6_twtpcon_count <= (soc_basesoc_sdram_bankmachine6_twtpcon_count - 1'd1);
			if ((soc_basesoc_sdram_bankmachine6_twtpcon_count == 1'd1)) begin
				soc_basesoc_sdram_bankmachine6_twtpcon_ready <= 1'd1;
			end
		end
	end
	if (soc_basesoc_sdram_bankmachine6_trccon_valid) begin
		soc_basesoc_sdram_bankmachine6_trccon_count <= 3'd5;
		if (1'd0) begin
			soc_basesoc_sdram_bankmachine6_trccon_ready <= 1'd1;
		end else begin
			soc_basesoc_sdram_bankmachine6_trccon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_basesoc_sdram_bankmachine6_trccon_ready)) begin
			soc_basesoc_sdram_bankmachine6_trccon_count <= (soc_basesoc_sdram_bankmachine6_trccon_count - 1'd1);
			if ((soc_basesoc_sdram_bankmachine6_trccon_count == 1'd1)) begin
				soc_basesoc_sdram_bankmachine6_trccon_ready <= 1'd1;
			end
		end
	end
	if (soc_basesoc_sdram_bankmachine6_trascon_valid) begin
		soc_basesoc_sdram_bankmachine6_trascon_count <= 3'd4;
		if (1'd0) begin
			soc_basesoc_sdram_bankmachine6_trascon_ready <= 1'd1;
		end else begin
			soc_basesoc_sdram_bankmachine6_trascon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_basesoc_sdram_bankmachine6_trascon_ready)) begin
			soc_basesoc_sdram_bankmachine6_trascon_count <= (soc_basesoc_sdram_bankmachine6_trascon_count - 1'd1);
			if ((soc_basesoc_sdram_bankmachine6_trascon_count == 1'd1)) begin
				soc_basesoc_sdram_bankmachine6_trascon_ready <= 1'd1;
			end
		end
	end
	vns_bankmachine6_state <= vns_bankmachine6_next_state;
	if (soc_basesoc_sdram_bankmachine7_row_close) begin
		soc_basesoc_sdram_bankmachine7_row_opened <= 1'd0;
	end else begin
		if (soc_basesoc_sdram_bankmachine7_row_open) begin
			soc_basesoc_sdram_bankmachine7_row_opened <= 1'd1;
			soc_basesoc_sdram_bankmachine7_row <= soc_basesoc_sdram_bankmachine7_cmd_buffer_source_payload_addr[20:7];
		end
	end
	if (((soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_we & soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable) & (~soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_replace))) begin
		soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_produce <= (soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_do_read) begin
		soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_consume <= (soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_we & soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable) & (~soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_replace))) begin
		if ((~soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_do_read)) begin
			soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_level <= (soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_do_read) begin
			soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_level <= (soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (soc_basesoc_sdram_bankmachine7_cmd_buffer_pipe_ce) begin
		soc_basesoc_sdram_bankmachine7_cmd_buffer_valid_n <= soc_basesoc_sdram_bankmachine7_cmd_buffer_sink_valid;
	end
	if (soc_basesoc_sdram_bankmachine7_cmd_buffer_pipe_ce) begin
		soc_basesoc_sdram_bankmachine7_cmd_buffer_first_n <= (soc_basesoc_sdram_bankmachine7_cmd_buffer_sink_valid & soc_basesoc_sdram_bankmachine7_cmd_buffer_sink_first);
		soc_basesoc_sdram_bankmachine7_cmd_buffer_last_n <= (soc_basesoc_sdram_bankmachine7_cmd_buffer_sink_valid & soc_basesoc_sdram_bankmachine7_cmd_buffer_sink_last);
	end
	if (soc_basesoc_sdram_bankmachine7_cmd_buffer_pipe_ce) begin
		soc_basesoc_sdram_bankmachine7_cmd_buffer_source_payload_we <= soc_basesoc_sdram_bankmachine7_cmd_buffer_sink_payload_we;
		soc_basesoc_sdram_bankmachine7_cmd_buffer_source_payload_addr <= soc_basesoc_sdram_bankmachine7_cmd_buffer_sink_payload_addr;
	end
	if (soc_basesoc_sdram_bankmachine7_twtpcon_valid) begin
		soc_basesoc_sdram_bankmachine7_twtpcon_count <= 3'd5;
		if (1'd0) begin
			soc_basesoc_sdram_bankmachine7_twtpcon_ready <= 1'd1;
		end else begin
			soc_basesoc_sdram_bankmachine7_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_basesoc_sdram_bankmachine7_twtpcon_ready)) begin
			soc_basesoc_sdram_bankmachine7_twtpcon_count <= (soc_basesoc_sdram_bankmachine7_twtpcon_count - 1'd1);
			if ((soc_basesoc_sdram_bankmachine7_twtpcon_count == 1'd1)) begin
				soc_basesoc_sdram_bankmachine7_twtpcon_ready <= 1'd1;
			end
		end
	end
	if (soc_basesoc_sdram_bankmachine7_trccon_valid) begin
		soc_basesoc_sdram_bankmachine7_trccon_count <= 3'd5;
		if (1'd0) begin
			soc_basesoc_sdram_bankmachine7_trccon_ready <= 1'd1;
		end else begin
			soc_basesoc_sdram_bankmachine7_trccon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_basesoc_sdram_bankmachine7_trccon_ready)) begin
			soc_basesoc_sdram_bankmachine7_trccon_count <= (soc_basesoc_sdram_bankmachine7_trccon_count - 1'd1);
			if ((soc_basesoc_sdram_bankmachine7_trccon_count == 1'd1)) begin
				soc_basesoc_sdram_bankmachine7_trccon_ready <= 1'd1;
			end
		end
	end
	if (soc_basesoc_sdram_bankmachine7_trascon_valid) begin
		soc_basesoc_sdram_bankmachine7_trascon_count <= 3'd4;
		if (1'd0) begin
			soc_basesoc_sdram_bankmachine7_trascon_ready <= 1'd1;
		end else begin
			soc_basesoc_sdram_bankmachine7_trascon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_basesoc_sdram_bankmachine7_trascon_ready)) begin
			soc_basesoc_sdram_bankmachine7_trascon_count <= (soc_basesoc_sdram_bankmachine7_trascon_count - 1'd1);
			if ((soc_basesoc_sdram_bankmachine7_trascon_count == 1'd1)) begin
				soc_basesoc_sdram_bankmachine7_trascon_ready <= 1'd1;
			end
		end
	end
	vns_bankmachine7_state <= vns_bankmachine7_next_state;
	if ((~soc_basesoc_sdram_en0)) begin
		soc_basesoc_sdram_time0 <= 5'd31;
	end else begin
		if ((~soc_basesoc_sdram_max_time0)) begin
			soc_basesoc_sdram_time0 <= (soc_basesoc_sdram_time0 - 1'd1);
		end
	end
	if ((~soc_basesoc_sdram_en1)) begin
		soc_basesoc_sdram_time1 <= 4'd15;
	end else begin
		if ((~soc_basesoc_sdram_max_time1)) begin
			soc_basesoc_sdram_time1 <= (soc_basesoc_sdram_time1 - 1'd1);
		end
	end
	if (soc_basesoc_sdram_choose_cmd_ce) begin
		case (soc_basesoc_sdram_choose_cmd_grant)
			1'd0: begin
				if (soc_basesoc_sdram_choose_cmd_request[1]) begin
					soc_basesoc_sdram_choose_cmd_grant <= 1'd1;
				end else begin
					if (soc_basesoc_sdram_choose_cmd_request[2]) begin
						soc_basesoc_sdram_choose_cmd_grant <= 2'd2;
					end else begin
						if (soc_basesoc_sdram_choose_cmd_request[3]) begin
							soc_basesoc_sdram_choose_cmd_grant <= 2'd3;
						end else begin
							if (soc_basesoc_sdram_choose_cmd_request[4]) begin
								soc_basesoc_sdram_choose_cmd_grant <= 3'd4;
							end else begin
								if (soc_basesoc_sdram_choose_cmd_request[5]) begin
									soc_basesoc_sdram_choose_cmd_grant <= 3'd5;
								end else begin
									if (soc_basesoc_sdram_choose_cmd_request[6]) begin
										soc_basesoc_sdram_choose_cmd_grant <= 3'd6;
									end else begin
										if (soc_basesoc_sdram_choose_cmd_request[7]) begin
											soc_basesoc_sdram_choose_cmd_grant <= 3'd7;
										end
									end
								end
							end
						end
					end
				end
			end
			1'd1: begin
				if (soc_basesoc_sdram_choose_cmd_request[2]) begin
					soc_basesoc_sdram_choose_cmd_grant <= 2'd2;
				end else begin
					if (soc_basesoc_sdram_choose_cmd_request[3]) begin
						soc_basesoc_sdram_choose_cmd_grant <= 2'd3;
					end else begin
						if (soc_basesoc_sdram_choose_cmd_request[4]) begin
							soc_basesoc_sdram_choose_cmd_grant <= 3'd4;
						end else begin
							if (soc_basesoc_sdram_choose_cmd_request[5]) begin
								soc_basesoc_sdram_choose_cmd_grant <= 3'd5;
							end else begin
								if (soc_basesoc_sdram_choose_cmd_request[6]) begin
									soc_basesoc_sdram_choose_cmd_grant <= 3'd6;
								end else begin
									if (soc_basesoc_sdram_choose_cmd_request[7]) begin
										soc_basesoc_sdram_choose_cmd_grant <= 3'd7;
									end else begin
										if (soc_basesoc_sdram_choose_cmd_request[0]) begin
											soc_basesoc_sdram_choose_cmd_grant <= 1'd0;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd2: begin
				if (soc_basesoc_sdram_choose_cmd_request[3]) begin
					soc_basesoc_sdram_choose_cmd_grant <= 2'd3;
				end else begin
					if (soc_basesoc_sdram_choose_cmd_request[4]) begin
						soc_basesoc_sdram_choose_cmd_grant <= 3'd4;
					end else begin
						if (soc_basesoc_sdram_choose_cmd_request[5]) begin
							soc_basesoc_sdram_choose_cmd_grant <= 3'd5;
						end else begin
							if (soc_basesoc_sdram_choose_cmd_request[6]) begin
								soc_basesoc_sdram_choose_cmd_grant <= 3'd6;
							end else begin
								if (soc_basesoc_sdram_choose_cmd_request[7]) begin
									soc_basesoc_sdram_choose_cmd_grant <= 3'd7;
								end else begin
									if (soc_basesoc_sdram_choose_cmd_request[0]) begin
										soc_basesoc_sdram_choose_cmd_grant <= 1'd0;
									end else begin
										if (soc_basesoc_sdram_choose_cmd_request[1]) begin
											soc_basesoc_sdram_choose_cmd_grant <= 1'd1;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd3: begin
				if (soc_basesoc_sdram_choose_cmd_request[4]) begin
					soc_basesoc_sdram_choose_cmd_grant <= 3'd4;
				end else begin
					if (soc_basesoc_sdram_choose_cmd_request[5]) begin
						soc_basesoc_sdram_choose_cmd_grant <= 3'd5;
					end else begin
						if (soc_basesoc_sdram_choose_cmd_request[6]) begin
							soc_basesoc_sdram_choose_cmd_grant <= 3'd6;
						end else begin
							if (soc_basesoc_sdram_choose_cmd_request[7]) begin
								soc_basesoc_sdram_choose_cmd_grant <= 3'd7;
							end else begin
								if (soc_basesoc_sdram_choose_cmd_request[0]) begin
									soc_basesoc_sdram_choose_cmd_grant <= 1'd0;
								end else begin
									if (soc_basesoc_sdram_choose_cmd_request[1]) begin
										soc_basesoc_sdram_choose_cmd_grant <= 1'd1;
									end else begin
										if (soc_basesoc_sdram_choose_cmd_request[2]) begin
											soc_basesoc_sdram_choose_cmd_grant <= 2'd2;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd4: begin
				if (soc_basesoc_sdram_choose_cmd_request[5]) begin
					soc_basesoc_sdram_choose_cmd_grant <= 3'd5;
				end else begin
					if (soc_basesoc_sdram_choose_cmd_request[6]) begin
						soc_basesoc_sdram_choose_cmd_grant <= 3'd6;
					end else begin
						if (soc_basesoc_sdram_choose_cmd_request[7]) begin
							soc_basesoc_sdram_choose_cmd_grant <= 3'd7;
						end else begin
							if (soc_basesoc_sdram_choose_cmd_request[0]) begin
								soc_basesoc_sdram_choose_cmd_grant <= 1'd0;
							end else begin
								if (soc_basesoc_sdram_choose_cmd_request[1]) begin
									soc_basesoc_sdram_choose_cmd_grant <= 1'd1;
								end else begin
									if (soc_basesoc_sdram_choose_cmd_request[2]) begin
										soc_basesoc_sdram_choose_cmd_grant <= 2'd2;
									end else begin
										if (soc_basesoc_sdram_choose_cmd_request[3]) begin
											soc_basesoc_sdram_choose_cmd_grant <= 2'd3;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd5: begin
				if (soc_basesoc_sdram_choose_cmd_request[6]) begin
					soc_basesoc_sdram_choose_cmd_grant <= 3'd6;
				end else begin
					if (soc_basesoc_sdram_choose_cmd_request[7]) begin
						soc_basesoc_sdram_choose_cmd_grant <= 3'd7;
					end else begin
						if (soc_basesoc_sdram_choose_cmd_request[0]) begin
							soc_basesoc_sdram_choose_cmd_grant <= 1'd0;
						end else begin
							if (soc_basesoc_sdram_choose_cmd_request[1]) begin
								soc_basesoc_sdram_choose_cmd_grant <= 1'd1;
							end else begin
								if (soc_basesoc_sdram_choose_cmd_request[2]) begin
									soc_basesoc_sdram_choose_cmd_grant <= 2'd2;
								end else begin
									if (soc_basesoc_sdram_choose_cmd_request[3]) begin
										soc_basesoc_sdram_choose_cmd_grant <= 2'd3;
									end else begin
										if (soc_basesoc_sdram_choose_cmd_request[4]) begin
											soc_basesoc_sdram_choose_cmd_grant <= 3'd4;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd6: begin
				if (soc_basesoc_sdram_choose_cmd_request[7]) begin
					soc_basesoc_sdram_choose_cmd_grant <= 3'd7;
				end else begin
					if (soc_basesoc_sdram_choose_cmd_request[0]) begin
						soc_basesoc_sdram_choose_cmd_grant <= 1'd0;
					end else begin
						if (soc_basesoc_sdram_choose_cmd_request[1]) begin
							soc_basesoc_sdram_choose_cmd_grant <= 1'd1;
						end else begin
							if (soc_basesoc_sdram_choose_cmd_request[2]) begin
								soc_basesoc_sdram_choose_cmd_grant <= 2'd2;
							end else begin
								if (soc_basesoc_sdram_choose_cmd_request[3]) begin
									soc_basesoc_sdram_choose_cmd_grant <= 2'd3;
								end else begin
									if (soc_basesoc_sdram_choose_cmd_request[4]) begin
										soc_basesoc_sdram_choose_cmd_grant <= 3'd4;
									end else begin
										if (soc_basesoc_sdram_choose_cmd_request[5]) begin
											soc_basesoc_sdram_choose_cmd_grant <= 3'd5;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd7: begin
				if (soc_basesoc_sdram_choose_cmd_request[0]) begin
					soc_basesoc_sdram_choose_cmd_grant <= 1'd0;
				end else begin
					if (soc_basesoc_sdram_choose_cmd_request[1]) begin
						soc_basesoc_sdram_choose_cmd_grant <= 1'd1;
					end else begin
						if (soc_basesoc_sdram_choose_cmd_request[2]) begin
							soc_basesoc_sdram_choose_cmd_grant <= 2'd2;
						end else begin
							if (soc_basesoc_sdram_choose_cmd_request[3]) begin
								soc_basesoc_sdram_choose_cmd_grant <= 2'd3;
							end else begin
								if (soc_basesoc_sdram_choose_cmd_request[4]) begin
									soc_basesoc_sdram_choose_cmd_grant <= 3'd4;
								end else begin
									if (soc_basesoc_sdram_choose_cmd_request[5]) begin
										soc_basesoc_sdram_choose_cmd_grant <= 3'd5;
									end else begin
										if (soc_basesoc_sdram_choose_cmd_request[6]) begin
											soc_basesoc_sdram_choose_cmd_grant <= 3'd6;
										end
									end
								end
							end
						end
					end
				end
			end
		endcase
	end
	if (soc_basesoc_sdram_choose_req_ce) begin
		case (soc_basesoc_sdram_choose_req_grant)
			1'd0: begin
				if (soc_basesoc_sdram_choose_req_request[1]) begin
					soc_basesoc_sdram_choose_req_grant <= 1'd1;
				end else begin
					if (soc_basesoc_sdram_choose_req_request[2]) begin
						soc_basesoc_sdram_choose_req_grant <= 2'd2;
					end else begin
						if (soc_basesoc_sdram_choose_req_request[3]) begin
							soc_basesoc_sdram_choose_req_grant <= 2'd3;
						end else begin
							if (soc_basesoc_sdram_choose_req_request[4]) begin
								soc_basesoc_sdram_choose_req_grant <= 3'd4;
							end else begin
								if (soc_basesoc_sdram_choose_req_request[5]) begin
									soc_basesoc_sdram_choose_req_grant <= 3'd5;
								end else begin
									if (soc_basesoc_sdram_choose_req_request[6]) begin
										soc_basesoc_sdram_choose_req_grant <= 3'd6;
									end else begin
										if (soc_basesoc_sdram_choose_req_request[7]) begin
											soc_basesoc_sdram_choose_req_grant <= 3'd7;
										end
									end
								end
							end
						end
					end
				end
			end
			1'd1: begin
				if (soc_basesoc_sdram_choose_req_request[2]) begin
					soc_basesoc_sdram_choose_req_grant <= 2'd2;
				end else begin
					if (soc_basesoc_sdram_choose_req_request[3]) begin
						soc_basesoc_sdram_choose_req_grant <= 2'd3;
					end else begin
						if (soc_basesoc_sdram_choose_req_request[4]) begin
							soc_basesoc_sdram_choose_req_grant <= 3'd4;
						end else begin
							if (soc_basesoc_sdram_choose_req_request[5]) begin
								soc_basesoc_sdram_choose_req_grant <= 3'd5;
							end else begin
								if (soc_basesoc_sdram_choose_req_request[6]) begin
									soc_basesoc_sdram_choose_req_grant <= 3'd6;
								end else begin
									if (soc_basesoc_sdram_choose_req_request[7]) begin
										soc_basesoc_sdram_choose_req_grant <= 3'd7;
									end else begin
										if (soc_basesoc_sdram_choose_req_request[0]) begin
											soc_basesoc_sdram_choose_req_grant <= 1'd0;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd2: begin
				if (soc_basesoc_sdram_choose_req_request[3]) begin
					soc_basesoc_sdram_choose_req_grant <= 2'd3;
				end else begin
					if (soc_basesoc_sdram_choose_req_request[4]) begin
						soc_basesoc_sdram_choose_req_grant <= 3'd4;
					end else begin
						if (soc_basesoc_sdram_choose_req_request[5]) begin
							soc_basesoc_sdram_choose_req_grant <= 3'd5;
						end else begin
							if (soc_basesoc_sdram_choose_req_request[6]) begin
								soc_basesoc_sdram_choose_req_grant <= 3'd6;
							end else begin
								if (soc_basesoc_sdram_choose_req_request[7]) begin
									soc_basesoc_sdram_choose_req_grant <= 3'd7;
								end else begin
									if (soc_basesoc_sdram_choose_req_request[0]) begin
										soc_basesoc_sdram_choose_req_grant <= 1'd0;
									end else begin
										if (soc_basesoc_sdram_choose_req_request[1]) begin
											soc_basesoc_sdram_choose_req_grant <= 1'd1;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd3: begin
				if (soc_basesoc_sdram_choose_req_request[4]) begin
					soc_basesoc_sdram_choose_req_grant <= 3'd4;
				end else begin
					if (soc_basesoc_sdram_choose_req_request[5]) begin
						soc_basesoc_sdram_choose_req_grant <= 3'd5;
					end else begin
						if (soc_basesoc_sdram_choose_req_request[6]) begin
							soc_basesoc_sdram_choose_req_grant <= 3'd6;
						end else begin
							if (soc_basesoc_sdram_choose_req_request[7]) begin
								soc_basesoc_sdram_choose_req_grant <= 3'd7;
							end else begin
								if (soc_basesoc_sdram_choose_req_request[0]) begin
									soc_basesoc_sdram_choose_req_grant <= 1'd0;
								end else begin
									if (soc_basesoc_sdram_choose_req_request[1]) begin
										soc_basesoc_sdram_choose_req_grant <= 1'd1;
									end else begin
										if (soc_basesoc_sdram_choose_req_request[2]) begin
											soc_basesoc_sdram_choose_req_grant <= 2'd2;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd4: begin
				if (soc_basesoc_sdram_choose_req_request[5]) begin
					soc_basesoc_sdram_choose_req_grant <= 3'd5;
				end else begin
					if (soc_basesoc_sdram_choose_req_request[6]) begin
						soc_basesoc_sdram_choose_req_grant <= 3'd6;
					end else begin
						if (soc_basesoc_sdram_choose_req_request[7]) begin
							soc_basesoc_sdram_choose_req_grant <= 3'd7;
						end else begin
							if (soc_basesoc_sdram_choose_req_request[0]) begin
								soc_basesoc_sdram_choose_req_grant <= 1'd0;
							end else begin
								if (soc_basesoc_sdram_choose_req_request[1]) begin
									soc_basesoc_sdram_choose_req_grant <= 1'd1;
								end else begin
									if (soc_basesoc_sdram_choose_req_request[2]) begin
										soc_basesoc_sdram_choose_req_grant <= 2'd2;
									end else begin
										if (soc_basesoc_sdram_choose_req_request[3]) begin
											soc_basesoc_sdram_choose_req_grant <= 2'd3;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd5: begin
				if (soc_basesoc_sdram_choose_req_request[6]) begin
					soc_basesoc_sdram_choose_req_grant <= 3'd6;
				end else begin
					if (soc_basesoc_sdram_choose_req_request[7]) begin
						soc_basesoc_sdram_choose_req_grant <= 3'd7;
					end else begin
						if (soc_basesoc_sdram_choose_req_request[0]) begin
							soc_basesoc_sdram_choose_req_grant <= 1'd0;
						end else begin
							if (soc_basesoc_sdram_choose_req_request[1]) begin
								soc_basesoc_sdram_choose_req_grant <= 1'd1;
							end else begin
								if (soc_basesoc_sdram_choose_req_request[2]) begin
									soc_basesoc_sdram_choose_req_grant <= 2'd2;
								end else begin
									if (soc_basesoc_sdram_choose_req_request[3]) begin
										soc_basesoc_sdram_choose_req_grant <= 2'd3;
									end else begin
										if (soc_basesoc_sdram_choose_req_request[4]) begin
											soc_basesoc_sdram_choose_req_grant <= 3'd4;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd6: begin
				if (soc_basesoc_sdram_choose_req_request[7]) begin
					soc_basesoc_sdram_choose_req_grant <= 3'd7;
				end else begin
					if (soc_basesoc_sdram_choose_req_request[0]) begin
						soc_basesoc_sdram_choose_req_grant <= 1'd0;
					end else begin
						if (soc_basesoc_sdram_choose_req_request[1]) begin
							soc_basesoc_sdram_choose_req_grant <= 1'd1;
						end else begin
							if (soc_basesoc_sdram_choose_req_request[2]) begin
								soc_basesoc_sdram_choose_req_grant <= 2'd2;
							end else begin
								if (soc_basesoc_sdram_choose_req_request[3]) begin
									soc_basesoc_sdram_choose_req_grant <= 2'd3;
								end else begin
									if (soc_basesoc_sdram_choose_req_request[4]) begin
										soc_basesoc_sdram_choose_req_grant <= 3'd4;
									end else begin
										if (soc_basesoc_sdram_choose_req_request[5]) begin
											soc_basesoc_sdram_choose_req_grant <= 3'd5;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd7: begin
				if (soc_basesoc_sdram_choose_req_request[0]) begin
					soc_basesoc_sdram_choose_req_grant <= 1'd0;
				end else begin
					if (soc_basesoc_sdram_choose_req_request[1]) begin
						soc_basesoc_sdram_choose_req_grant <= 1'd1;
					end else begin
						if (soc_basesoc_sdram_choose_req_request[2]) begin
							soc_basesoc_sdram_choose_req_grant <= 2'd2;
						end else begin
							if (soc_basesoc_sdram_choose_req_request[3]) begin
								soc_basesoc_sdram_choose_req_grant <= 2'd3;
							end else begin
								if (soc_basesoc_sdram_choose_req_request[4]) begin
									soc_basesoc_sdram_choose_req_grant <= 3'd4;
								end else begin
									if (soc_basesoc_sdram_choose_req_request[5]) begin
										soc_basesoc_sdram_choose_req_grant <= 3'd5;
									end else begin
										if (soc_basesoc_sdram_choose_req_request[6]) begin
											soc_basesoc_sdram_choose_req_grant <= 3'd6;
										end
									end
								end
							end
						end
					end
				end
			end
		endcase
	end
	soc_basesoc_sdram_dfi_p0_cs_n <= 1'd0;
	soc_basesoc_sdram_dfi_p0_bank <= vns_array_muxed0;
	soc_basesoc_sdram_dfi_p0_address <= vns_array_muxed1;
	soc_basesoc_sdram_dfi_p0_cas_n <= (~vns_array_muxed2);
	soc_basesoc_sdram_dfi_p0_ras_n <= (~vns_array_muxed3);
	soc_basesoc_sdram_dfi_p0_we_n <= (~vns_array_muxed4);
	soc_basesoc_sdram_dfi_p0_rddata_en <= vns_array_muxed5;
	soc_basesoc_sdram_dfi_p0_wrdata_en <= vns_array_muxed6;
	soc_basesoc_sdram_dfi_p1_cs_n <= 1'd0;
	soc_basesoc_sdram_dfi_p1_bank <= vns_array_muxed7;
	soc_basesoc_sdram_dfi_p1_address <= vns_array_muxed8;
	soc_basesoc_sdram_dfi_p1_cas_n <= (~vns_array_muxed9);
	soc_basesoc_sdram_dfi_p1_ras_n <= (~vns_array_muxed10);
	soc_basesoc_sdram_dfi_p1_we_n <= (~vns_array_muxed11);
	soc_basesoc_sdram_dfi_p1_rddata_en <= vns_array_muxed12;
	soc_basesoc_sdram_dfi_p1_wrdata_en <= vns_array_muxed13;
	soc_basesoc_sdram_dfi_p2_cs_n <= 1'd0;
	soc_basesoc_sdram_dfi_p2_bank <= vns_array_muxed14;
	soc_basesoc_sdram_dfi_p2_address <= vns_array_muxed15;
	soc_basesoc_sdram_dfi_p2_cas_n <= (~vns_array_muxed16);
	soc_basesoc_sdram_dfi_p2_ras_n <= (~vns_array_muxed17);
	soc_basesoc_sdram_dfi_p2_we_n <= (~vns_array_muxed18);
	soc_basesoc_sdram_dfi_p2_rddata_en <= vns_array_muxed19;
	soc_basesoc_sdram_dfi_p2_wrdata_en <= vns_array_muxed20;
	soc_basesoc_sdram_dfi_p3_cs_n <= 1'd0;
	soc_basesoc_sdram_dfi_p3_bank <= vns_array_muxed21;
	soc_basesoc_sdram_dfi_p3_address <= vns_array_muxed22;
	soc_basesoc_sdram_dfi_p3_cas_n <= (~vns_array_muxed23);
	soc_basesoc_sdram_dfi_p3_ras_n <= (~vns_array_muxed24);
	soc_basesoc_sdram_dfi_p3_we_n <= (~vns_array_muxed25);
	soc_basesoc_sdram_dfi_p3_rddata_en <= vns_array_muxed26;
	soc_basesoc_sdram_dfi_p3_wrdata_en <= vns_array_muxed27;
	if (soc_basesoc_sdram_trrdcon_valid) begin
		soc_basesoc_sdram_trrdcon_count <= 1'd1;
		if (1'd0) begin
			soc_basesoc_sdram_trrdcon_ready <= 1'd1;
		end else begin
			soc_basesoc_sdram_trrdcon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_basesoc_sdram_trrdcon_ready)) begin
			soc_basesoc_sdram_trrdcon_count <= (soc_basesoc_sdram_trrdcon_count - 1'd1);
			if ((soc_basesoc_sdram_trrdcon_count == 1'd1)) begin
				soc_basesoc_sdram_trrdcon_ready <= 1'd1;
			end
		end
	end
	soc_basesoc_sdram_tfawcon_window <= {soc_basesoc_sdram_tfawcon_window, soc_basesoc_sdram_tfawcon_valid};
	if ((soc_basesoc_sdram_tfawcon_count < 3'd4)) begin
		if ((soc_basesoc_sdram_tfawcon_count == 2'd3)) begin
			soc_basesoc_sdram_tfawcon_ready <= (~soc_basesoc_sdram_tfawcon_valid);
		end else begin
			soc_basesoc_sdram_tfawcon_ready <= 1'd1;
		end
	end
	if (soc_basesoc_sdram_tccdcon_valid) begin
		soc_basesoc_sdram_tccdcon_count <= 1'd0;
		if (1'd1) begin
			soc_basesoc_sdram_tccdcon_ready <= 1'd1;
		end else begin
			soc_basesoc_sdram_tccdcon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_basesoc_sdram_tccdcon_ready)) begin
			soc_basesoc_sdram_tccdcon_count <= (soc_basesoc_sdram_tccdcon_count - 1'd1);
			if ((soc_basesoc_sdram_tccdcon_count == 1'd1)) begin
				soc_basesoc_sdram_tccdcon_ready <= 1'd1;
			end
		end
	end
	if (soc_basesoc_sdram_twtrcon_valid) begin
		soc_basesoc_sdram_twtrcon_count <= 3'd4;
		if (1'd0) begin
			soc_basesoc_sdram_twtrcon_ready <= 1'd1;
		end else begin
			soc_basesoc_sdram_twtrcon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_basesoc_sdram_twtrcon_ready)) begin
			soc_basesoc_sdram_twtrcon_count <= (soc_basesoc_sdram_twtrcon_count - 1'd1);
			if ((soc_basesoc_sdram_twtrcon_count == 1'd1)) begin
				soc_basesoc_sdram_twtrcon_ready <= 1'd1;
			end
		end
	end
	vns_multiplexer_state <= vns_multiplexer_next_state;
	soc_basesoc_sdram_bandwidth_cmd_valid <= soc_basesoc_sdram_choose_req_cmd_valid;
	soc_basesoc_sdram_bandwidth_cmd_ready <= soc_basesoc_sdram_choose_req_cmd_ready;
	soc_basesoc_sdram_bandwidth_cmd_is_read <= soc_basesoc_sdram_choose_req_cmd_payload_is_read;
	soc_basesoc_sdram_bandwidth_cmd_is_write <= soc_basesoc_sdram_choose_req_cmd_payload_is_write;
	{soc_basesoc_sdram_bandwidth_period, soc_basesoc_sdram_bandwidth_counter} <= (soc_basesoc_sdram_bandwidth_counter + 1'd1);
	if (soc_basesoc_sdram_bandwidth_period) begin
		soc_basesoc_sdram_bandwidth_nreads_r <= soc_basesoc_sdram_bandwidth_nreads;
		soc_basesoc_sdram_bandwidth_nwrites_r <= soc_basesoc_sdram_bandwidth_nwrites;
		soc_basesoc_sdram_bandwidth_nreads <= 1'd0;
		soc_basesoc_sdram_bandwidth_nwrites <= 1'd0;
	end else begin
		if ((soc_basesoc_sdram_bandwidth_cmd_valid & soc_basesoc_sdram_bandwidth_cmd_ready)) begin
			if (soc_basesoc_sdram_bandwidth_cmd_is_read) begin
				soc_basesoc_sdram_bandwidth_nreads <= (soc_basesoc_sdram_bandwidth_nreads + 1'd1);
			end
			if (soc_basesoc_sdram_bandwidth_cmd_is_write) begin
				soc_basesoc_sdram_bandwidth_nwrites <= (soc_basesoc_sdram_bandwidth_nwrites + 1'd1);
			end
		end
	end
	if (soc_basesoc_sdram_bandwidth_update_re) begin
		soc_basesoc_sdram_bandwidth_nreads_status <= soc_basesoc_sdram_bandwidth_nreads_r;
		soc_basesoc_sdram_bandwidth_nwrites_status <= soc_basesoc_sdram_bandwidth_nwrites_r;
	end
	if (((vns_roundrobin0_grant == 1'd0) & soc_basesoc_sdram_interface_bank0_rdata_valid)) begin
		vns_rbank <= 1'd0;
	end
	if (((vns_roundrobin0_grant == 1'd0) & soc_basesoc_sdram_interface_bank0_wdata_ready)) begin
		vns_wbank <= 1'd0;
	end
	if (((vns_roundrobin1_grant == 1'd0) & soc_basesoc_sdram_interface_bank1_rdata_valid)) begin
		vns_rbank <= 1'd1;
	end
	if (((vns_roundrobin1_grant == 1'd0) & soc_basesoc_sdram_interface_bank1_wdata_ready)) begin
		vns_wbank <= 1'd1;
	end
	if (((vns_roundrobin2_grant == 1'd0) & soc_basesoc_sdram_interface_bank2_rdata_valid)) begin
		vns_rbank <= 2'd2;
	end
	if (((vns_roundrobin2_grant == 1'd0) & soc_basesoc_sdram_interface_bank2_wdata_ready)) begin
		vns_wbank <= 2'd2;
	end
	if (((vns_roundrobin3_grant == 1'd0) & soc_basesoc_sdram_interface_bank3_rdata_valid)) begin
		vns_rbank <= 2'd3;
	end
	if (((vns_roundrobin3_grant == 1'd0) & soc_basesoc_sdram_interface_bank3_wdata_ready)) begin
		vns_wbank <= 2'd3;
	end
	if (((vns_roundrobin4_grant == 1'd0) & soc_basesoc_sdram_interface_bank4_rdata_valid)) begin
		vns_rbank <= 3'd4;
	end
	if (((vns_roundrobin4_grant == 1'd0) & soc_basesoc_sdram_interface_bank4_wdata_ready)) begin
		vns_wbank <= 3'd4;
	end
	if (((vns_roundrobin5_grant == 1'd0) & soc_basesoc_sdram_interface_bank5_rdata_valid)) begin
		vns_rbank <= 3'd5;
	end
	if (((vns_roundrobin5_grant == 1'd0) & soc_basesoc_sdram_interface_bank5_wdata_ready)) begin
		vns_wbank <= 3'd5;
	end
	if (((vns_roundrobin6_grant == 1'd0) & soc_basesoc_sdram_interface_bank6_rdata_valid)) begin
		vns_rbank <= 3'd6;
	end
	if (((vns_roundrobin6_grant == 1'd0) & soc_basesoc_sdram_interface_bank6_wdata_ready)) begin
		vns_wbank <= 3'd6;
	end
	if (((vns_roundrobin7_grant == 1'd0) & soc_basesoc_sdram_interface_bank7_rdata_valid)) begin
		vns_rbank <= 3'd7;
	end
	if (((vns_roundrobin7_grant == 1'd0) & soc_basesoc_sdram_interface_bank7_wdata_ready)) begin
		vns_wbank <= 3'd7;
	end
	vns_new_master_wdata_ready0 <= ((((((((1'd0 | ((vns_roundrobin0_grant == 1'd0) & soc_basesoc_sdram_interface_bank0_wdata_ready)) | ((vns_roundrobin1_grant == 1'd0) & soc_basesoc_sdram_interface_bank1_wdata_ready)) | ((vns_roundrobin2_grant == 1'd0) & soc_basesoc_sdram_interface_bank2_wdata_ready)) | ((vns_roundrobin3_grant == 1'd0) & soc_basesoc_sdram_interface_bank3_wdata_ready)) | ((vns_roundrobin4_grant == 1'd0) & soc_basesoc_sdram_interface_bank4_wdata_ready)) | ((vns_roundrobin5_grant == 1'd0) & soc_basesoc_sdram_interface_bank5_wdata_ready)) | ((vns_roundrobin6_grant == 1'd0) & soc_basesoc_sdram_interface_bank6_wdata_ready)) | ((vns_roundrobin7_grant == 1'd0) & soc_basesoc_sdram_interface_bank7_wdata_ready));
	vns_new_master_wdata_ready1 <= vns_new_master_wdata_ready0;
	vns_new_master_wdata_ready2 <= vns_new_master_wdata_ready1;
	vns_new_master_rdata_valid0 <= ((((((((1'd0 | ((vns_roundrobin0_grant == 1'd0) & soc_basesoc_sdram_interface_bank0_rdata_valid)) | ((vns_roundrobin1_grant == 1'd0) & soc_basesoc_sdram_interface_bank1_rdata_valid)) | ((vns_roundrobin2_grant == 1'd0) & soc_basesoc_sdram_interface_bank2_rdata_valid)) | ((vns_roundrobin3_grant == 1'd0) & soc_basesoc_sdram_interface_bank3_rdata_valid)) | ((vns_roundrobin4_grant == 1'd0) & soc_basesoc_sdram_interface_bank4_rdata_valid)) | ((vns_roundrobin5_grant == 1'd0) & soc_basesoc_sdram_interface_bank5_rdata_valid)) | ((vns_roundrobin6_grant == 1'd0) & soc_basesoc_sdram_interface_bank6_rdata_valid)) | ((vns_roundrobin7_grant == 1'd0) & soc_basesoc_sdram_interface_bank7_rdata_valid));
	vns_new_master_rdata_valid1 <= vns_new_master_rdata_valid0;
	vns_new_master_rdata_valid2 <= vns_new_master_rdata_valid1;
	vns_new_master_rdata_valid3 <= vns_new_master_rdata_valid2;
	vns_new_master_rdata_valid4 <= vns_new_master_rdata_valid3;
	vns_new_master_rdata_valid5 <= vns_new_master_rdata_valid4;
	vns_new_master_rdata_valid6 <= vns_new_master_rdata_valid5;
	vns_new_master_rdata_valid7 <= vns_new_master_rdata_valid6;
	vns_new_master_rdata_valid8 <= vns_new_master_rdata_valid7;
	vns_new_master_rdata_valid9 <= vns_new_master_rdata_valid8;
	soc_basesoc_adr_offset_r <= soc_basesoc_interface0_wb_sdram_adr[1:0];
	vns_fullmemorywe_state <= vns_fullmemorywe_next_state;
	vns_litedramwishbone2native_state <= vns_litedramwishbone2native_next_state;
	case (vns_basesoc_grant)
		1'd0: begin
			if ((~vns_basesoc_request[0])) begin
				if (vns_basesoc_request[1]) begin
					vns_basesoc_grant <= 1'd1;
				end
			end
		end
		1'd1: begin
			if ((~vns_basesoc_request[1])) begin
				if (vns_basesoc_request[0]) begin
					vns_basesoc_grant <= 1'd0;
				end
			end
		end
	endcase
	vns_basesoc_slave_sel_r <= vns_basesoc_slave_sel;
	if (vns_basesoc_wait) begin
		if ((~vns_basesoc_done)) begin
			vns_basesoc_count <= (vns_basesoc_count - 1'd1);
		end
	end else begin
		vns_basesoc_count <= 20'd1000000;
	end
	vns_basesoc_interface0_bank_bus_dat_r <= 1'd0;
	if (vns_basesoc_csrbank0_sel) begin
		case (vns_basesoc_interface0_bank_bus_adr[2:0])
			1'd0: begin
				vns_basesoc_interface0_bank_bus_dat_r <= vns_basesoc_csrbank0_leds_out0_w;
			end
			1'd1: begin
				vns_basesoc_interface0_bank_bus_dat_r <= vns_basesoc_csrbank0_switches_in_w;
			end
			2'd2: begin
				vns_basesoc_interface0_bank_bus_dat_r <= soc_eventmanager_status_w;
			end
			2'd3: begin
				vns_basesoc_interface0_bank_bus_dat_r <= soc_eventmanager_pending_w;
			end
			3'd4: begin
				vns_basesoc_interface0_bank_bus_dat_r <= vns_basesoc_csrbank0_buttons_ev_enable0_w;
			end
		endcase
	end
	if (vns_basesoc_csrbank0_leds_out0_re) begin
		soc_leds_storage_full[3:0] <= vns_basesoc_csrbank0_leds_out0_r;
	end
	soc_leds_re <= vns_basesoc_csrbank0_leds_out0_re;
	if (vns_basesoc_csrbank0_buttons_ev_enable0_re) begin
		soc_eventmanager_storage_full[3:0] <= vns_basesoc_csrbank0_buttons_ev_enable0_r;
	end
	soc_eventmanager_re <= vns_basesoc_csrbank0_buttons_ev_enable0_re;
	vns_basesoc_interface1_bank_bus_dat_r <= 1'd0;
	if (vns_basesoc_csrbank1_sel) begin
		case (vns_basesoc_interface1_bank_bus_adr[3:0])
			1'd0: begin
				vns_basesoc_interface1_bank_bus_dat_r <= soc_basesoc_ctrl_reset_reset_w;
			end
			1'd1: begin
				vns_basesoc_interface1_bank_bus_dat_r <= vns_basesoc_csrbank1_scratch3_w;
			end
			2'd2: begin
				vns_basesoc_interface1_bank_bus_dat_r <= vns_basesoc_csrbank1_scratch2_w;
			end
			2'd3: begin
				vns_basesoc_interface1_bank_bus_dat_r <= vns_basesoc_csrbank1_scratch1_w;
			end
			3'd4: begin
				vns_basesoc_interface1_bank_bus_dat_r <= vns_basesoc_csrbank1_scratch0_w;
			end
			3'd5: begin
				vns_basesoc_interface1_bank_bus_dat_r <= vns_basesoc_csrbank1_bus_errors3_w;
			end
			3'd6: begin
				vns_basesoc_interface1_bank_bus_dat_r <= vns_basesoc_csrbank1_bus_errors2_w;
			end
			3'd7: begin
				vns_basesoc_interface1_bank_bus_dat_r <= vns_basesoc_csrbank1_bus_errors1_w;
			end
			4'd8: begin
				vns_basesoc_interface1_bank_bus_dat_r <= vns_basesoc_csrbank1_bus_errors0_w;
			end
		endcase
	end
	if (vns_basesoc_csrbank1_scratch3_re) begin
		soc_basesoc_ctrl_storage_full[31:24] <= vns_basesoc_csrbank1_scratch3_r;
	end
	if (vns_basesoc_csrbank1_scratch2_re) begin
		soc_basesoc_ctrl_storage_full[23:16] <= vns_basesoc_csrbank1_scratch2_r;
	end
	if (vns_basesoc_csrbank1_scratch1_re) begin
		soc_basesoc_ctrl_storage_full[15:8] <= vns_basesoc_csrbank1_scratch1_r;
	end
	if (vns_basesoc_csrbank1_scratch0_re) begin
		soc_basesoc_ctrl_storage_full[7:0] <= vns_basesoc_csrbank1_scratch0_r;
	end
	soc_basesoc_ctrl_re <= vns_basesoc_csrbank1_scratch0_re;
	vns_basesoc_interface2_bank_bus_dat_r <= 1'd0;
	if (vns_basesoc_csrbank2_sel) begin
		case (vns_basesoc_interface2_bank_bus_adr[2:0])
			1'd0: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_half_sys8x_taps0_w;
			end
			1'd1: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_dly_sel0_w;
			end
			2'd2: begin
				vns_basesoc_interface2_bank_bus_dat_r <= soc_a7ddrphy_rdly_dq_rst_w;
			end
			2'd3: begin
				vns_basesoc_interface2_bank_bus_dat_r <= soc_a7ddrphy_rdly_dq_inc_w;
			end
			3'd4: begin
				vns_basesoc_interface2_bank_bus_dat_r <= soc_a7ddrphy_rdly_dq_bitslip_rst_w;
			end
			3'd5: begin
				vns_basesoc_interface2_bank_bus_dat_r <= soc_a7ddrphy_rdly_dq_bitslip_w;
			end
		endcase
	end
	if (vns_basesoc_csrbank2_half_sys8x_taps0_re) begin
		soc_a7ddrphy_half_sys8x_taps_storage_full[3:0] <= vns_basesoc_csrbank2_half_sys8x_taps0_r;
	end
	soc_a7ddrphy_half_sys8x_taps_re <= vns_basesoc_csrbank2_half_sys8x_taps0_re;
	if (vns_basesoc_csrbank2_dly_sel0_re) begin
		soc_a7ddrphy_dly_sel_storage_full[1:0] <= vns_basesoc_csrbank2_dly_sel0_r;
	end
	soc_a7ddrphy_dly_sel_re <= vns_basesoc_csrbank2_dly_sel0_re;
	vns_basesoc_sel_r <= vns_basesoc_sel;
	vns_basesoc_interface3_bank_bus_dat_r <= 1'd0;
	if (vns_basesoc_csrbank3_sel) begin
		case (vns_basesoc_interface3_bank_bus_adr[5:0])
			1'd0: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_dna_id7_w;
			end
			1'd1: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_dna_id6_w;
			end
			2'd2: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_dna_id5_w;
			end
			2'd3: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_dna_id4_w;
			end
			3'd4: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_dna_id3_w;
			end
			3'd5: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_dna_id2_w;
			end
			3'd6: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_dna_id1_w;
			end
			3'd7: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_dna_id0_w;
			end
			4'd8: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_git_commit19_w;
			end
			4'd9: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_git_commit18_w;
			end
			4'd10: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_git_commit17_w;
			end
			4'd11: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_git_commit16_w;
			end
			4'd12: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_git_commit15_w;
			end
			4'd13: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_git_commit14_w;
			end
			4'd14: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_git_commit13_w;
			end
			4'd15: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_git_commit12_w;
			end
			5'd16: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_git_commit11_w;
			end
			5'd17: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_git_commit10_w;
			end
			5'd18: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_git_commit9_w;
			end
			5'd19: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_git_commit8_w;
			end
			5'd20: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_git_commit7_w;
			end
			5'd21: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_git_commit6_w;
			end
			5'd22: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_git_commit5_w;
			end
			5'd23: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_git_commit4_w;
			end
			5'd24: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_git_commit3_w;
			end
			5'd25: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_git_commit2_w;
			end
			5'd26: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_git_commit1_w;
			end
			5'd27: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_git_commit0_w;
			end
			5'd28: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_platform_platform7_w;
			end
			5'd29: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_platform_platform6_w;
			end
			5'd30: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_platform_platform5_w;
			end
			5'd31: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_platform_platform4_w;
			end
			6'd32: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_platform_platform3_w;
			end
			6'd33: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_platform_platform2_w;
			end
			6'd34: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_platform_platform1_w;
			end
			6'd35: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_platform_platform0_w;
			end
			6'd36: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_platform_target7_w;
			end
			6'd37: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_platform_target6_w;
			end
			6'd38: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_platform_target5_w;
			end
			6'd39: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_platform_target4_w;
			end
			6'd40: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_platform_target3_w;
			end
			6'd41: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_platform_target2_w;
			end
			6'd42: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_platform_target1_w;
			end
			6'd43: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_platform_target0_w;
			end
			6'd44: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_xadc_temperature1_w;
			end
			6'd45: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_xadc_temperature0_w;
			end
			6'd46: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_xadc_vccint1_w;
			end
			6'd47: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_xadc_vccint0_w;
			end
			6'd48: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_xadc_vccaux1_w;
			end
			6'd49: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_xadc_vccaux0_w;
			end
			6'd50: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_xadc_vccbram1_w;
			end
			6'd51: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_xadc_vccbram0_w;
			end
		endcase
	end
	vns_basesoc_interface4_bank_bus_dat_r <= 1'd0;
	if (vns_basesoc_csrbank4_sel) begin
		case (vns_basesoc_interface4_bank_bus_adr[5:0])
			1'd0: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_control0_w;
			end
			1'd1: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi0_command0_w;
			end
			2'd2: begin
				vns_basesoc_interface4_bank_bus_dat_r <= soc_basesoc_sdram_phaseinjector0_command_issue_w;
			end
			2'd3: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi0_address1_w;
			end
			3'd4: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi0_address0_w;
			end
			3'd5: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi0_baddress0_w;
			end
			3'd6: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi0_wrdata3_w;
			end
			3'd7: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi0_wrdata2_w;
			end
			4'd8: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi0_wrdata1_w;
			end
			4'd9: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi0_wrdata0_w;
			end
			4'd10: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi0_rddata3_w;
			end
			4'd11: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi0_rddata2_w;
			end
			4'd12: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi0_rddata1_w;
			end
			4'd13: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi0_rddata0_w;
			end
			4'd14: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi1_command0_w;
			end
			4'd15: begin
				vns_basesoc_interface4_bank_bus_dat_r <= soc_basesoc_sdram_phaseinjector1_command_issue_w;
			end
			5'd16: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi1_address1_w;
			end
			5'd17: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi1_address0_w;
			end
			5'd18: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi1_baddress0_w;
			end
			5'd19: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi1_wrdata3_w;
			end
			5'd20: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi1_wrdata2_w;
			end
			5'd21: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi1_wrdata1_w;
			end
			5'd22: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi1_wrdata0_w;
			end
			5'd23: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi1_rddata3_w;
			end
			5'd24: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi1_rddata2_w;
			end
			5'd25: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi1_rddata1_w;
			end
			5'd26: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi1_rddata0_w;
			end
			5'd27: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi2_command0_w;
			end
			5'd28: begin
				vns_basesoc_interface4_bank_bus_dat_r <= soc_basesoc_sdram_phaseinjector2_command_issue_w;
			end
			5'd29: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi2_address1_w;
			end
			5'd30: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi2_address0_w;
			end
			5'd31: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi2_baddress0_w;
			end
			6'd32: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi2_wrdata3_w;
			end
			6'd33: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi2_wrdata2_w;
			end
			6'd34: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi2_wrdata1_w;
			end
			6'd35: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi2_wrdata0_w;
			end
			6'd36: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi2_rddata3_w;
			end
			6'd37: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi2_rddata2_w;
			end
			6'd38: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi2_rddata1_w;
			end
			6'd39: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi2_rddata0_w;
			end
			6'd40: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi3_command0_w;
			end
			6'd41: begin
				vns_basesoc_interface4_bank_bus_dat_r <= soc_basesoc_sdram_phaseinjector3_command_issue_w;
			end
			6'd42: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi3_address1_w;
			end
			6'd43: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi3_address0_w;
			end
			6'd44: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi3_baddress0_w;
			end
			6'd45: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi3_wrdata3_w;
			end
			6'd46: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi3_wrdata2_w;
			end
			6'd47: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi3_wrdata1_w;
			end
			6'd48: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi3_wrdata0_w;
			end
			6'd49: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi3_rddata3_w;
			end
			6'd50: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi3_rddata2_w;
			end
			6'd51: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi3_rddata1_w;
			end
			6'd52: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_dfii_pi3_rddata0_w;
			end
			6'd53: begin
				vns_basesoc_interface4_bank_bus_dat_r <= soc_basesoc_sdram_bandwidth_update_w;
			end
			6'd54: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_controller_bandwidth_nreads2_w;
			end
			6'd55: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_controller_bandwidth_nreads1_w;
			end
			6'd56: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_controller_bandwidth_nreads0_w;
			end
			6'd57: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_controller_bandwidth_nwrites2_w;
			end
			6'd58: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_controller_bandwidth_nwrites1_w;
			end
			6'd59: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_controller_bandwidth_nwrites0_w;
			end
			6'd60: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_controller_bandwidth_data_width_w;
			end
		endcase
	end
	if (vns_basesoc_csrbank4_dfii_control0_re) begin
		soc_basesoc_sdram_storage_full[3:0] <= vns_basesoc_csrbank4_dfii_control0_r;
	end
	soc_basesoc_sdram_re <= vns_basesoc_csrbank4_dfii_control0_re;
	if (vns_basesoc_csrbank4_dfii_pi0_command0_re) begin
		soc_basesoc_sdram_phaseinjector0_command_storage_full[5:0] <= vns_basesoc_csrbank4_dfii_pi0_command0_r;
	end
	soc_basesoc_sdram_phaseinjector0_command_re <= vns_basesoc_csrbank4_dfii_pi0_command0_re;
	if (vns_basesoc_csrbank4_dfii_pi0_address1_re) begin
		soc_basesoc_sdram_phaseinjector0_address_storage_full[13:8] <= vns_basesoc_csrbank4_dfii_pi0_address1_r;
	end
	if (vns_basesoc_csrbank4_dfii_pi0_address0_re) begin
		soc_basesoc_sdram_phaseinjector0_address_storage_full[7:0] <= vns_basesoc_csrbank4_dfii_pi0_address0_r;
	end
	soc_basesoc_sdram_phaseinjector0_address_re <= vns_basesoc_csrbank4_dfii_pi0_address0_re;
	if (vns_basesoc_csrbank4_dfii_pi0_baddress0_re) begin
		soc_basesoc_sdram_phaseinjector0_baddress_storage_full[2:0] <= vns_basesoc_csrbank4_dfii_pi0_baddress0_r;
	end
	soc_basesoc_sdram_phaseinjector0_baddress_re <= vns_basesoc_csrbank4_dfii_pi0_baddress0_re;
	if (vns_basesoc_csrbank4_dfii_pi0_wrdata3_re) begin
		soc_basesoc_sdram_phaseinjector0_wrdata_storage_full[31:24] <= vns_basesoc_csrbank4_dfii_pi0_wrdata3_r;
	end
	if (vns_basesoc_csrbank4_dfii_pi0_wrdata2_re) begin
		soc_basesoc_sdram_phaseinjector0_wrdata_storage_full[23:16] <= vns_basesoc_csrbank4_dfii_pi0_wrdata2_r;
	end
	if (vns_basesoc_csrbank4_dfii_pi0_wrdata1_re) begin
		soc_basesoc_sdram_phaseinjector0_wrdata_storage_full[15:8] <= vns_basesoc_csrbank4_dfii_pi0_wrdata1_r;
	end
	if (vns_basesoc_csrbank4_dfii_pi0_wrdata0_re) begin
		soc_basesoc_sdram_phaseinjector0_wrdata_storage_full[7:0] <= vns_basesoc_csrbank4_dfii_pi0_wrdata0_r;
	end
	soc_basesoc_sdram_phaseinjector0_wrdata_re <= vns_basesoc_csrbank4_dfii_pi0_wrdata0_re;
	if (vns_basesoc_csrbank4_dfii_pi1_command0_re) begin
		soc_basesoc_sdram_phaseinjector1_command_storage_full[5:0] <= vns_basesoc_csrbank4_dfii_pi1_command0_r;
	end
	soc_basesoc_sdram_phaseinjector1_command_re <= vns_basesoc_csrbank4_dfii_pi1_command0_re;
	if (vns_basesoc_csrbank4_dfii_pi1_address1_re) begin
		soc_basesoc_sdram_phaseinjector1_address_storage_full[13:8] <= vns_basesoc_csrbank4_dfii_pi1_address1_r;
	end
	if (vns_basesoc_csrbank4_dfii_pi1_address0_re) begin
		soc_basesoc_sdram_phaseinjector1_address_storage_full[7:0] <= vns_basesoc_csrbank4_dfii_pi1_address0_r;
	end
	soc_basesoc_sdram_phaseinjector1_address_re <= vns_basesoc_csrbank4_dfii_pi1_address0_re;
	if (vns_basesoc_csrbank4_dfii_pi1_baddress0_re) begin
		soc_basesoc_sdram_phaseinjector1_baddress_storage_full[2:0] <= vns_basesoc_csrbank4_dfii_pi1_baddress0_r;
	end
	soc_basesoc_sdram_phaseinjector1_baddress_re <= vns_basesoc_csrbank4_dfii_pi1_baddress0_re;
	if (vns_basesoc_csrbank4_dfii_pi1_wrdata3_re) begin
		soc_basesoc_sdram_phaseinjector1_wrdata_storage_full[31:24] <= vns_basesoc_csrbank4_dfii_pi1_wrdata3_r;
	end
	if (vns_basesoc_csrbank4_dfii_pi1_wrdata2_re) begin
		soc_basesoc_sdram_phaseinjector1_wrdata_storage_full[23:16] <= vns_basesoc_csrbank4_dfii_pi1_wrdata2_r;
	end
	if (vns_basesoc_csrbank4_dfii_pi1_wrdata1_re) begin
		soc_basesoc_sdram_phaseinjector1_wrdata_storage_full[15:8] <= vns_basesoc_csrbank4_dfii_pi1_wrdata1_r;
	end
	if (vns_basesoc_csrbank4_dfii_pi1_wrdata0_re) begin
		soc_basesoc_sdram_phaseinjector1_wrdata_storage_full[7:0] <= vns_basesoc_csrbank4_dfii_pi1_wrdata0_r;
	end
	soc_basesoc_sdram_phaseinjector1_wrdata_re <= vns_basesoc_csrbank4_dfii_pi1_wrdata0_re;
	if (vns_basesoc_csrbank4_dfii_pi2_command0_re) begin
		soc_basesoc_sdram_phaseinjector2_command_storage_full[5:0] <= vns_basesoc_csrbank4_dfii_pi2_command0_r;
	end
	soc_basesoc_sdram_phaseinjector2_command_re <= vns_basesoc_csrbank4_dfii_pi2_command0_re;
	if (vns_basesoc_csrbank4_dfii_pi2_address1_re) begin
		soc_basesoc_sdram_phaseinjector2_address_storage_full[13:8] <= vns_basesoc_csrbank4_dfii_pi2_address1_r;
	end
	if (vns_basesoc_csrbank4_dfii_pi2_address0_re) begin
		soc_basesoc_sdram_phaseinjector2_address_storage_full[7:0] <= vns_basesoc_csrbank4_dfii_pi2_address0_r;
	end
	soc_basesoc_sdram_phaseinjector2_address_re <= vns_basesoc_csrbank4_dfii_pi2_address0_re;
	if (vns_basesoc_csrbank4_dfii_pi2_baddress0_re) begin
		soc_basesoc_sdram_phaseinjector2_baddress_storage_full[2:0] <= vns_basesoc_csrbank4_dfii_pi2_baddress0_r;
	end
	soc_basesoc_sdram_phaseinjector2_baddress_re <= vns_basesoc_csrbank4_dfii_pi2_baddress0_re;
	if (vns_basesoc_csrbank4_dfii_pi2_wrdata3_re) begin
		soc_basesoc_sdram_phaseinjector2_wrdata_storage_full[31:24] <= vns_basesoc_csrbank4_dfii_pi2_wrdata3_r;
	end
	if (vns_basesoc_csrbank4_dfii_pi2_wrdata2_re) begin
		soc_basesoc_sdram_phaseinjector2_wrdata_storage_full[23:16] <= vns_basesoc_csrbank4_dfii_pi2_wrdata2_r;
	end
	if (vns_basesoc_csrbank4_dfii_pi2_wrdata1_re) begin
		soc_basesoc_sdram_phaseinjector2_wrdata_storage_full[15:8] <= vns_basesoc_csrbank4_dfii_pi2_wrdata1_r;
	end
	if (vns_basesoc_csrbank4_dfii_pi2_wrdata0_re) begin
		soc_basesoc_sdram_phaseinjector2_wrdata_storage_full[7:0] <= vns_basesoc_csrbank4_dfii_pi2_wrdata0_r;
	end
	soc_basesoc_sdram_phaseinjector2_wrdata_re <= vns_basesoc_csrbank4_dfii_pi2_wrdata0_re;
	if (vns_basesoc_csrbank4_dfii_pi3_command0_re) begin
		soc_basesoc_sdram_phaseinjector3_command_storage_full[5:0] <= vns_basesoc_csrbank4_dfii_pi3_command0_r;
	end
	soc_basesoc_sdram_phaseinjector3_command_re <= vns_basesoc_csrbank4_dfii_pi3_command0_re;
	if (vns_basesoc_csrbank4_dfii_pi3_address1_re) begin
		soc_basesoc_sdram_phaseinjector3_address_storage_full[13:8] <= vns_basesoc_csrbank4_dfii_pi3_address1_r;
	end
	if (vns_basesoc_csrbank4_dfii_pi3_address0_re) begin
		soc_basesoc_sdram_phaseinjector3_address_storage_full[7:0] <= vns_basesoc_csrbank4_dfii_pi3_address0_r;
	end
	soc_basesoc_sdram_phaseinjector3_address_re <= vns_basesoc_csrbank4_dfii_pi3_address0_re;
	if (vns_basesoc_csrbank4_dfii_pi3_baddress0_re) begin
		soc_basesoc_sdram_phaseinjector3_baddress_storage_full[2:0] <= vns_basesoc_csrbank4_dfii_pi3_baddress0_r;
	end
	soc_basesoc_sdram_phaseinjector3_baddress_re <= vns_basesoc_csrbank4_dfii_pi3_baddress0_re;
	if (vns_basesoc_csrbank4_dfii_pi3_wrdata3_re) begin
		soc_basesoc_sdram_phaseinjector3_wrdata_storage_full[31:24] <= vns_basesoc_csrbank4_dfii_pi3_wrdata3_r;
	end
	if (vns_basesoc_csrbank4_dfii_pi3_wrdata2_re) begin
		soc_basesoc_sdram_phaseinjector3_wrdata_storage_full[23:16] <= vns_basesoc_csrbank4_dfii_pi3_wrdata2_r;
	end
	if (vns_basesoc_csrbank4_dfii_pi3_wrdata1_re) begin
		soc_basesoc_sdram_phaseinjector3_wrdata_storage_full[15:8] <= vns_basesoc_csrbank4_dfii_pi3_wrdata1_r;
	end
	if (vns_basesoc_csrbank4_dfii_pi3_wrdata0_re) begin
		soc_basesoc_sdram_phaseinjector3_wrdata_storage_full[7:0] <= vns_basesoc_csrbank4_dfii_pi3_wrdata0_r;
	end
	soc_basesoc_sdram_phaseinjector3_wrdata_re <= vns_basesoc_csrbank4_dfii_pi3_wrdata0_re;
	vns_basesoc_interface5_bank_bus_dat_r <= 1'd0;
	if (vns_basesoc_csrbank5_sel) begin
		case (vns_basesoc_interface5_bank_bus_adr[1:0])
			1'd0: begin
				vns_basesoc_interface5_bank_bus_dat_r <= vns_basesoc_csrbank5_bitbang0_w;
			end
			1'd1: begin
				vns_basesoc_interface5_bank_bus_dat_r <= vns_basesoc_csrbank5_miso_w;
			end
			2'd2: begin
				vns_basesoc_interface5_bank_bus_dat_r <= vns_basesoc_csrbank5_bitbang_en0_w;
			end
		endcase
	end
	if (vns_basesoc_csrbank5_bitbang0_re) begin
		soc_spiflash_bitbang_storage_full[3:0] <= vns_basesoc_csrbank5_bitbang0_r;
	end
	soc_spiflash_bitbang_re <= vns_basesoc_csrbank5_bitbang0_re;
	if (vns_basesoc_csrbank5_bitbang_en0_re) begin
		soc_spiflash_bitbang_en_storage_full <= vns_basesoc_csrbank5_bitbang_en0_r;
	end
	soc_spiflash_bitbang_en_re <= vns_basesoc_csrbank5_bitbang_en0_re;
	vns_basesoc_interface6_bank_bus_dat_r <= 1'd0;
	if (vns_basesoc_csrbank6_sel) begin
		case (vns_basesoc_interface6_bank_bus_adr[4:0])
			1'd0: begin
				vns_basesoc_interface6_bank_bus_dat_r <= vns_basesoc_csrbank6_load3_w;
			end
			1'd1: begin
				vns_basesoc_interface6_bank_bus_dat_r <= vns_basesoc_csrbank6_load2_w;
			end
			2'd2: begin
				vns_basesoc_interface6_bank_bus_dat_r <= vns_basesoc_csrbank6_load1_w;
			end
			2'd3: begin
				vns_basesoc_interface6_bank_bus_dat_r <= vns_basesoc_csrbank6_load0_w;
			end
			3'd4: begin
				vns_basesoc_interface6_bank_bus_dat_r <= vns_basesoc_csrbank6_reload3_w;
			end
			3'd5: begin
				vns_basesoc_interface6_bank_bus_dat_r <= vns_basesoc_csrbank6_reload2_w;
			end
			3'd6: begin
				vns_basesoc_interface6_bank_bus_dat_r <= vns_basesoc_csrbank6_reload1_w;
			end
			3'd7: begin
				vns_basesoc_interface6_bank_bus_dat_r <= vns_basesoc_csrbank6_reload0_w;
			end
			4'd8: begin
				vns_basesoc_interface6_bank_bus_dat_r <= vns_basesoc_csrbank6_en0_w;
			end
			4'd9: begin
				vns_basesoc_interface6_bank_bus_dat_r <= soc_basesoc_timer0_update_value_w;
			end
			4'd10: begin
				vns_basesoc_interface6_bank_bus_dat_r <= vns_basesoc_csrbank6_value3_w;
			end
			4'd11: begin
				vns_basesoc_interface6_bank_bus_dat_r <= vns_basesoc_csrbank6_value2_w;
			end
			4'd12: begin
				vns_basesoc_interface6_bank_bus_dat_r <= vns_basesoc_csrbank6_value1_w;
			end
			4'd13: begin
				vns_basesoc_interface6_bank_bus_dat_r <= vns_basesoc_csrbank6_value0_w;
			end
			4'd14: begin
				vns_basesoc_interface6_bank_bus_dat_r <= soc_basesoc_timer0_eventmanager_status_w;
			end
			4'd15: begin
				vns_basesoc_interface6_bank_bus_dat_r <= soc_basesoc_timer0_eventmanager_pending_w;
			end
			5'd16: begin
				vns_basesoc_interface6_bank_bus_dat_r <= vns_basesoc_csrbank6_ev_enable0_w;
			end
		endcase
	end
	if (vns_basesoc_csrbank6_load3_re) begin
		soc_basesoc_timer0_load_storage_full[31:24] <= vns_basesoc_csrbank6_load3_r;
	end
	if (vns_basesoc_csrbank6_load2_re) begin
		soc_basesoc_timer0_load_storage_full[23:16] <= vns_basesoc_csrbank6_load2_r;
	end
	if (vns_basesoc_csrbank6_load1_re) begin
		soc_basesoc_timer0_load_storage_full[15:8] <= vns_basesoc_csrbank6_load1_r;
	end
	if (vns_basesoc_csrbank6_load0_re) begin
		soc_basesoc_timer0_load_storage_full[7:0] <= vns_basesoc_csrbank6_load0_r;
	end
	soc_basesoc_timer0_load_re <= vns_basesoc_csrbank6_load0_re;
	if (vns_basesoc_csrbank6_reload3_re) begin
		soc_basesoc_timer0_reload_storage_full[31:24] <= vns_basesoc_csrbank6_reload3_r;
	end
	if (vns_basesoc_csrbank6_reload2_re) begin
		soc_basesoc_timer0_reload_storage_full[23:16] <= vns_basesoc_csrbank6_reload2_r;
	end
	if (vns_basesoc_csrbank6_reload1_re) begin
		soc_basesoc_timer0_reload_storage_full[15:8] <= vns_basesoc_csrbank6_reload1_r;
	end
	if (vns_basesoc_csrbank6_reload0_re) begin
		soc_basesoc_timer0_reload_storage_full[7:0] <= vns_basesoc_csrbank6_reload0_r;
	end
	soc_basesoc_timer0_reload_re <= vns_basesoc_csrbank6_reload0_re;
	if (vns_basesoc_csrbank6_en0_re) begin
		soc_basesoc_timer0_en_storage_full <= vns_basesoc_csrbank6_en0_r;
	end
	soc_basesoc_timer0_en_re <= vns_basesoc_csrbank6_en0_re;
	if (vns_basesoc_csrbank6_ev_enable0_re) begin
		soc_basesoc_timer0_eventmanager_storage_full <= vns_basesoc_csrbank6_ev_enable0_r;
	end
	soc_basesoc_timer0_eventmanager_re <= vns_basesoc_csrbank6_ev_enable0_re;
	vns_basesoc_interface7_bank_bus_dat_r <= 1'd0;
	if (vns_basesoc_csrbank7_sel) begin
		case (vns_basesoc_interface7_bank_bus_adr[2:0])
			1'd0: begin
				vns_basesoc_interface7_bank_bus_dat_r <= soc_basesoc_uart_rxtx_w;
			end
			1'd1: begin
				vns_basesoc_interface7_bank_bus_dat_r <= vns_basesoc_csrbank7_txfull_w;
			end
			2'd2: begin
				vns_basesoc_interface7_bank_bus_dat_r <= vns_basesoc_csrbank7_rxempty_w;
			end
			2'd3: begin
				vns_basesoc_interface7_bank_bus_dat_r <= soc_basesoc_uart_eventmanager_status_w;
			end
			3'd4: begin
				vns_basesoc_interface7_bank_bus_dat_r <= soc_basesoc_uart_eventmanager_pending_w;
			end
			3'd5: begin
				vns_basesoc_interface7_bank_bus_dat_r <= vns_basesoc_csrbank7_ev_enable0_w;
			end
		endcase
	end
	if (vns_basesoc_csrbank7_ev_enable0_re) begin
		soc_basesoc_uart_eventmanager_storage_full[1:0] <= vns_basesoc_csrbank7_ev_enable0_r;
	end
	soc_basesoc_uart_eventmanager_re <= vns_basesoc_csrbank7_ev_enable0_re;
	vns_basesoc_interface8_bank_bus_dat_r <= 1'd0;
	if (vns_basesoc_csrbank8_sel) begin
		case (vns_basesoc_interface8_bank_bus_adr[1:0])
			1'd0: begin
				vns_basesoc_interface8_bank_bus_dat_r <= vns_basesoc_csrbank8_tuning_word3_w;
			end
			1'd1: begin
				vns_basesoc_interface8_bank_bus_dat_r <= vns_basesoc_csrbank8_tuning_word2_w;
			end
			2'd2: begin
				vns_basesoc_interface8_bank_bus_dat_r <= vns_basesoc_csrbank8_tuning_word1_w;
			end
			2'd3: begin
				vns_basesoc_interface8_bank_bus_dat_r <= vns_basesoc_csrbank8_tuning_word0_w;
			end
		endcase
	end
	if (vns_basesoc_csrbank8_tuning_word3_re) begin
		soc_basesoc_uart_phy_storage_full[31:24] <= vns_basesoc_csrbank8_tuning_word3_r;
	end
	if (vns_basesoc_csrbank8_tuning_word2_re) begin
		soc_basesoc_uart_phy_storage_full[23:16] <= vns_basesoc_csrbank8_tuning_word2_r;
	end
	if (vns_basesoc_csrbank8_tuning_word1_re) begin
		soc_basesoc_uart_phy_storage_full[15:8] <= vns_basesoc_csrbank8_tuning_word1_r;
	end
	if (vns_basesoc_csrbank8_tuning_word0_re) begin
		soc_basesoc_uart_phy_storage_full[7:0] <= vns_basesoc_csrbank8_tuning_word0_r;
	end
	soc_basesoc_uart_phy_re <= vns_basesoc_csrbank8_tuning_word0_re;
	if (sys_rst) begin
		soc_basesoc_ctrl_storage_full <= 32'd305419896;
		soc_basesoc_ctrl_re <= 1'd0;
		soc_basesoc_ctrl_bus_errors <= 32'd0;
		soc_basesoc_rom_bus_ack <= 1'd0;
		soc_basesoc_sram_bus_ack <= 1'd0;
		soc_basesoc_interface_adr <= 14'd0;
		soc_basesoc_interface_we <= 1'd0;
		soc_basesoc_interface_dat_w <= 8'd0;
		soc_basesoc_bus_wishbone_dat_r <= 32'd0;
		soc_basesoc_bus_wishbone_ack <= 1'd0;
		soc_basesoc_counter <= 2'd0;
		serial_tx <= 1'd1;
		soc_basesoc_uart_phy_storage_full <= 32'd4947802;
		soc_basesoc_uart_phy_re <= 1'd0;
		soc_basesoc_uart_phy_sink_ready <= 1'd0;
		soc_basesoc_uart_phy_uart_clk_txen <= 1'd0;
		soc_basesoc_uart_phy_phase_accumulator_tx <= 32'd0;
		soc_basesoc_uart_phy_tx_reg <= 8'd0;
		soc_basesoc_uart_phy_tx_bitcount <= 4'd0;
		soc_basesoc_uart_phy_tx_busy <= 1'd0;
		soc_basesoc_uart_phy_source_valid <= 1'd0;
		soc_basesoc_uart_phy_source_payload_data <= 8'd0;
		soc_basesoc_uart_phy_uart_clk_rxen <= 1'd0;
		soc_basesoc_uart_phy_phase_accumulator_rx <= 32'd0;
		soc_basesoc_uart_phy_rx_r <= 1'd0;
		soc_basesoc_uart_phy_rx_reg <= 8'd0;
		soc_basesoc_uart_phy_rx_bitcount <= 4'd0;
		soc_basesoc_uart_phy_rx_busy <= 1'd0;
		soc_basesoc_uart_tx_pending <= 1'd0;
		soc_basesoc_uart_tx_old_trigger <= 1'd0;
		soc_basesoc_uart_rx_pending <= 1'd0;
		soc_basesoc_uart_rx_old_trigger <= 1'd0;
		soc_basesoc_uart_eventmanager_storage_full <= 2'd0;
		soc_basesoc_uart_eventmanager_re <= 1'd0;
		soc_basesoc_uart_tx_fifo_readable <= 1'd0;
		soc_basesoc_uart_tx_fifo_level0 <= 5'd0;
		soc_basesoc_uart_tx_fifo_produce <= 4'd0;
		soc_basesoc_uart_tx_fifo_consume <= 4'd0;
		soc_basesoc_uart_rx_fifo_readable <= 1'd0;
		soc_basesoc_uart_rx_fifo_level0 <= 5'd0;
		soc_basesoc_uart_rx_fifo_produce <= 4'd0;
		soc_basesoc_uart_rx_fifo_consume <= 4'd0;
		soc_basesoc_timer0_load_storage_full <= 32'd0;
		soc_basesoc_timer0_load_re <= 1'd0;
		soc_basesoc_timer0_reload_storage_full <= 32'd0;
		soc_basesoc_timer0_reload_re <= 1'd0;
		soc_basesoc_timer0_en_storage_full <= 1'd0;
		soc_basesoc_timer0_en_re <= 1'd0;
		soc_basesoc_timer0_value_status <= 32'd0;
		soc_basesoc_timer0_zero_pending <= 1'd0;
		soc_basesoc_timer0_zero_old_trigger <= 1'd0;
		soc_basesoc_timer0_eventmanager_storage_full <= 1'd0;
		soc_basesoc_timer0_eventmanager_re <= 1'd0;
		soc_basesoc_timer0_value <= 32'd0;
		soc_dna_status <= 57'd0;
		soc_dna_cnt <= 7'd0;
		soc_temperature_status <= 12'd0;
		soc_vccint_status <= 12'd0;
		soc_vccaux_status <= 12'd0;
		soc_vccbram_status <= 12'd0;
		soc_leds_storage_full <= 4'd0;
		soc_leds_re <= 1'd0;
		soc_eventsourceprocess0_pending <= 1'd0;
		soc_eventsourceprocess0_old_trigger <= 1'd0;
		soc_waittimer0_count <= 20'd1000000;
		soc_eventsourceprocess1_pending <= 1'd0;
		soc_eventsourceprocess1_old_trigger <= 1'd0;
		soc_waittimer1_count <= 20'd1000000;
		soc_eventsourceprocess2_pending <= 1'd0;
		soc_eventsourceprocess2_old_trigger <= 1'd0;
		soc_waittimer2_count <= 20'd1000000;
		soc_eventsourceprocess3_pending <= 1'd0;
		soc_eventsourceprocess3_old_trigger <= 1'd0;
		soc_waittimer3_count <= 20'd1000000;
		soc_eventmanager_storage_full <= 4'd0;
		soc_eventmanager_re <= 1'd0;
		soc_spiflash_bus_ack <= 1'd0;
		soc_spiflash_bitbang_storage_full <= 4'd0;
		soc_spiflash_bitbang_re <= 1'd0;
		soc_spiflash_bitbang_en_storage_full <= 1'd0;
		soc_spiflash_bitbang_en_re <= 1'd0;
		soc_spiflash_cs_n <= 1'd1;
		soc_spiflash_clk <= 1'd0;
		soc_spiflash_sr <= 32'd0;
		soc_spiflash_i <= 1'd0;
		soc_spiflash_miso <= 1'd0;
		soc_spiflash_counter <= 8'd0;
		soc_a7ddrphy_half_sys8x_taps_storage_full <= 4'd8;
		soc_a7ddrphy_half_sys8x_taps_re <= 1'd0;
		soc_a7ddrphy_dly_sel_storage_full <= 2'd0;
		soc_a7ddrphy_dly_sel_re <= 1'd0;
		soc_a7ddrphy_dfi_p0_rddata_valid <= 1'd0;
		soc_a7ddrphy_dfi_p1_rddata_valid <= 1'd0;
		soc_a7ddrphy_dfi_p2_rddata_valid <= 1'd0;
		soc_a7ddrphy_dfi_p3_rddata_valid <= 1'd0;
		soc_a7ddrphy_oe_dqs <= 1'd0;
		soc_a7ddrphy_oe_dq <= 1'd0;
		soc_a7ddrphy_bitslip0_o <= 8'd0;
		soc_a7ddrphy_bitslip0_value <= 3'd0;
		soc_a7ddrphy_bitslip0_r <= 16'd0;
		soc_a7ddrphy_bitslip1_o <= 8'd0;
		soc_a7ddrphy_bitslip1_value <= 3'd0;
		soc_a7ddrphy_bitslip1_r <= 16'd0;
		soc_a7ddrphy_bitslip2_o <= 8'd0;
		soc_a7ddrphy_bitslip2_value <= 3'd0;
		soc_a7ddrphy_bitslip2_r <= 16'd0;
		soc_a7ddrphy_bitslip3_o <= 8'd0;
		soc_a7ddrphy_bitslip3_value <= 3'd0;
		soc_a7ddrphy_bitslip3_r <= 16'd0;
		soc_a7ddrphy_bitslip4_o <= 8'd0;
		soc_a7ddrphy_bitslip4_value <= 3'd0;
		soc_a7ddrphy_bitslip4_r <= 16'd0;
		soc_a7ddrphy_bitslip5_o <= 8'd0;
		soc_a7ddrphy_bitslip5_value <= 3'd0;
		soc_a7ddrphy_bitslip5_r <= 16'd0;
		soc_a7ddrphy_bitslip6_o <= 8'd0;
		soc_a7ddrphy_bitslip6_value <= 3'd0;
		soc_a7ddrphy_bitslip6_r <= 16'd0;
		soc_a7ddrphy_bitslip7_o <= 8'd0;
		soc_a7ddrphy_bitslip7_value <= 3'd0;
		soc_a7ddrphy_bitslip7_r <= 16'd0;
		soc_a7ddrphy_bitslip8_o <= 8'd0;
		soc_a7ddrphy_bitslip8_value <= 3'd0;
		soc_a7ddrphy_bitslip8_r <= 16'd0;
		soc_a7ddrphy_bitslip9_o <= 8'd0;
		soc_a7ddrphy_bitslip9_value <= 3'd0;
		soc_a7ddrphy_bitslip9_r <= 16'd0;
		soc_a7ddrphy_bitslip10_o <= 8'd0;
		soc_a7ddrphy_bitslip10_value <= 3'd0;
		soc_a7ddrphy_bitslip10_r <= 16'd0;
		soc_a7ddrphy_bitslip11_o <= 8'd0;
		soc_a7ddrphy_bitslip11_value <= 3'd0;
		soc_a7ddrphy_bitslip11_r <= 16'd0;
		soc_a7ddrphy_bitslip12_o <= 8'd0;
		soc_a7ddrphy_bitslip12_value <= 3'd0;
		soc_a7ddrphy_bitslip12_r <= 16'd0;
		soc_a7ddrphy_bitslip13_o <= 8'd0;
		soc_a7ddrphy_bitslip13_value <= 3'd0;
		soc_a7ddrphy_bitslip13_r <= 16'd0;
		soc_a7ddrphy_bitslip14_o <= 8'd0;
		soc_a7ddrphy_bitslip14_value <= 3'd0;
		soc_a7ddrphy_bitslip14_r <= 16'd0;
		soc_a7ddrphy_bitslip15_o <= 8'd0;
		soc_a7ddrphy_bitslip15_value <= 3'd0;
		soc_a7ddrphy_bitslip15_r <= 16'd0;
		soc_a7ddrphy_n_rddata_en0 <= 1'd0;
		soc_a7ddrphy_n_rddata_en1 <= 1'd0;
		soc_a7ddrphy_n_rddata_en2 <= 1'd0;
		soc_a7ddrphy_n_rddata_en3 <= 1'd0;
		soc_a7ddrphy_n_rddata_en4 <= 1'd0;
		soc_a7ddrphy_n_rddata_en5 <= 1'd0;
		soc_a7ddrphy_n_rddata_en6 <= 1'd0;
		soc_a7ddrphy_n_rddata_en7 <= 1'd0;
		soc_a7ddrphy_last_wrdata_en <= 4'd0;
		soc_basesoc_sdram_storage_full <= 4'd0;
		soc_basesoc_sdram_re <= 1'd0;
		soc_basesoc_sdram_phaseinjector0_command_storage_full <= 6'd0;
		soc_basesoc_sdram_phaseinjector0_command_re <= 1'd0;
		soc_basesoc_sdram_phaseinjector0_address_storage_full <= 14'd0;
		soc_basesoc_sdram_phaseinjector0_address_re <= 1'd0;
		soc_basesoc_sdram_phaseinjector0_baddress_storage_full <= 3'd0;
		soc_basesoc_sdram_phaseinjector0_baddress_re <= 1'd0;
		soc_basesoc_sdram_phaseinjector0_wrdata_storage_full <= 32'd0;
		soc_basesoc_sdram_phaseinjector0_wrdata_re <= 1'd0;
		soc_basesoc_sdram_phaseinjector0_status <= 32'd0;
		soc_basesoc_sdram_phaseinjector1_command_storage_full <= 6'd0;
		soc_basesoc_sdram_phaseinjector1_command_re <= 1'd0;
		soc_basesoc_sdram_phaseinjector1_address_storage_full <= 14'd0;
		soc_basesoc_sdram_phaseinjector1_address_re <= 1'd0;
		soc_basesoc_sdram_phaseinjector1_baddress_storage_full <= 3'd0;
		soc_basesoc_sdram_phaseinjector1_baddress_re <= 1'd0;
		soc_basesoc_sdram_phaseinjector1_wrdata_storage_full <= 32'd0;
		soc_basesoc_sdram_phaseinjector1_wrdata_re <= 1'd0;
		soc_basesoc_sdram_phaseinjector1_status <= 32'd0;
		soc_basesoc_sdram_phaseinjector2_command_storage_full <= 6'd0;
		soc_basesoc_sdram_phaseinjector2_command_re <= 1'd0;
		soc_basesoc_sdram_phaseinjector2_address_storage_full <= 14'd0;
		soc_basesoc_sdram_phaseinjector2_address_re <= 1'd0;
		soc_basesoc_sdram_phaseinjector2_baddress_storage_full <= 3'd0;
		soc_basesoc_sdram_phaseinjector2_baddress_re <= 1'd0;
		soc_basesoc_sdram_phaseinjector2_wrdata_storage_full <= 32'd0;
		soc_basesoc_sdram_phaseinjector2_wrdata_re <= 1'd0;
		soc_basesoc_sdram_phaseinjector2_status <= 32'd0;
		soc_basesoc_sdram_phaseinjector3_command_storage_full <= 6'd0;
		soc_basesoc_sdram_phaseinjector3_command_re <= 1'd0;
		soc_basesoc_sdram_phaseinjector3_address_storage_full <= 14'd0;
		soc_basesoc_sdram_phaseinjector3_address_re <= 1'd0;
		soc_basesoc_sdram_phaseinjector3_baddress_storage_full <= 3'd0;
		soc_basesoc_sdram_phaseinjector3_baddress_re <= 1'd0;
		soc_basesoc_sdram_phaseinjector3_wrdata_storage_full <= 32'd0;
		soc_basesoc_sdram_phaseinjector3_wrdata_re <= 1'd0;
		soc_basesoc_sdram_phaseinjector3_status <= 32'd0;
		soc_basesoc_sdram_dfi_p0_address <= 14'd0;
		soc_basesoc_sdram_dfi_p0_bank <= 3'd0;
		soc_basesoc_sdram_dfi_p0_cas_n <= 1'd1;
		soc_basesoc_sdram_dfi_p0_cs_n <= 1'd1;
		soc_basesoc_sdram_dfi_p0_ras_n <= 1'd1;
		soc_basesoc_sdram_dfi_p0_we_n <= 1'd1;
		soc_basesoc_sdram_dfi_p0_wrdata_en <= 1'd0;
		soc_basesoc_sdram_dfi_p0_rddata_en <= 1'd0;
		soc_basesoc_sdram_dfi_p1_address <= 14'd0;
		soc_basesoc_sdram_dfi_p1_bank <= 3'd0;
		soc_basesoc_sdram_dfi_p1_cas_n <= 1'd1;
		soc_basesoc_sdram_dfi_p1_cs_n <= 1'd1;
		soc_basesoc_sdram_dfi_p1_ras_n <= 1'd1;
		soc_basesoc_sdram_dfi_p1_we_n <= 1'd1;
		soc_basesoc_sdram_dfi_p1_wrdata_en <= 1'd0;
		soc_basesoc_sdram_dfi_p1_rddata_en <= 1'd0;
		soc_basesoc_sdram_dfi_p2_address <= 14'd0;
		soc_basesoc_sdram_dfi_p2_bank <= 3'd0;
		soc_basesoc_sdram_dfi_p2_cas_n <= 1'd1;
		soc_basesoc_sdram_dfi_p2_cs_n <= 1'd1;
		soc_basesoc_sdram_dfi_p2_ras_n <= 1'd1;
		soc_basesoc_sdram_dfi_p2_we_n <= 1'd1;
		soc_basesoc_sdram_dfi_p2_wrdata_en <= 1'd0;
		soc_basesoc_sdram_dfi_p2_rddata_en <= 1'd0;
		soc_basesoc_sdram_dfi_p3_address <= 14'd0;
		soc_basesoc_sdram_dfi_p3_bank <= 3'd0;
		soc_basesoc_sdram_dfi_p3_cas_n <= 1'd1;
		soc_basesoc_sdram_dfi_p3_cs_n <= 1'd1;
		soc_basesoc_sdram_dfi_p3_ras_n <= 1'd1;
		soc_basesoc_sdram_dfi_p3_we_n <= 1'd1;
		soc_basesoc_sdram_dfi_p3_wrdata_en <= 1'd0;
		soc_basesoc_sdram_dfi_p3_rddata_en <= 1'd0;
		soc_basesoc_sdram_cmd_payload_a <= 14'd0;
		soc_basesoc_sdram_cmd_payload_ba <= 3'd0;
		soc_basesoc_sdram_cmd_payload_cas <= 1'd0;
		soc_basesoc_sdram_cmd_payload_ras <= 1'd0;
		soc_basesoc_sdram_cmd_payload_we <= 1'd0;
		soc_basesoc_sdram_timer_count <= 10'd782;
		soc_basesoc_sdram_generator_done <= 1'd0;
		soc_basesoc_sdram_generator_counter <= 5'd0;
		soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_level <= 4'd0;
		soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_produce <= 3'd0;
		soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_consume <= 3'd0;
		soc_basesoc_sdram_bankmachine0_cmd_buffer_source_payload_we <= 1'd0;
		soc_basesoc_sdram_bankmachine0_cmd_buffer_source_payload_addr <= 21'd0;
		soc_basesoc_sdram_bankmachine0_cmd_buffer_valid_n <= 1'd0;
		soc_basesoc_sdram_bankmachine0_cmd_buffer_first_n <= 1'd0;
		soc_basesoc_sdram_bankmachine0_cmd_buffer_last_n <= 1'd0;
		soc_basesoc_sdram_bankmachine0_row <= 14'd0;
		soc_basesoc_sdram_bankmachine0_row_opened <= 1'd0;
		soc_basesoc_sdram_bankmachine0_twtpcon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine0_twtpcon_count <= 3'd0;
		soc_basesoc_sdram_bankmachine0_trccon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine0_trccon_count <= 3'd0;
		soc_basesoc_sdram_bankmachine0_trascon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine0_trascon_count <= 3'd0;
		soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_level <= 4'd0;
		soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_produce <= 3'd0;
		soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_consume <= 3'd0;
		soc_basesoc_sdram_bankmachine1_cmd_buffer_source_payload_we <= 1'd0;
		soc_basesoc_sdram_bankmachine1_cmd_buffer_source_payload_addr <= 21'd0;
		soc_basesoc_sdram_bankmachine1_cmd_buffer_valid_n <= 1'd0;
		soc_basesoc_sdram_bankmachine1_cmd_buffer_first_n <= 1'd0;
		soc_basesoc_sdram_bankmachine1_cmd_buffer_last_n <= 1'd0;
		soc_basesoc_sdram_bankmachine1_row <= 14'd0;
		soc_basesoc_sdram_bankmachine1_row_opened <= 1'd0;
		soc_basesoc_sdram_bankmachine1_twtpcon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine1_twtpcon_count <= 3'd0;
		soc_basesoc_sdram_bankmachine1_trccon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine1_trccon_count <= 3'd0;
		soc_basesoc_sdram_bankmachine1_trascon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine1_trascon_count <= 3'd0;
		soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_level <= 4'd0;
		soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_produce <= 3'd0;
		soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_consume <= 3'd0;
		soc_basesoc_sdram_bankmachine2_cmd_buffer_source_payload_we <= 1'd0;
		soc_basesoc_sdram_bankmachine2_cmd_buffer_source_payload_addr <= 21'd0;
		soc_basesoc_sdram_bankmachine2_cmd_buffer_valid_n <= 1'd0;
		soc_basesoc_sdram_bankmachine2_cmd_buffer_first_n <= 1'd0;
		soc_basesoc_sdram_bankmachine2_cmd_buffer_last_n <= 1'd0;
		soc_basesoc_sdram_bankmachine2_row <= 14'd0;
		soc_basesoc_sdram_bankmachine2_row_opened <= 1'd0;
		soc_basesoc_sdram_bankmachine2_twtpcon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine2_twtpcon_count <= 3'd0;
		soc_basesoc_sdram_bankmachine2_trccon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine2_trccon_count <= 3'd0;
		soc_basesoc_sdram_bankmachine2_trascon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine2_trascon_count <= 3'd0;
		soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_level <= 4'd0;
		soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_produce <= 3'd0;
		soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_consume <= 3'd0;
		soc_basesoc_sdram_bankmachine3_cmd_buffer_source_payload_we <= 1'd0;
		soc_basesoc_sdram_bankmachine3_cmd_buffer_source_payload_addr <= 21'd0;
		soc_basesoc_sdram_bankmachine3_cmd_buffer_valid_n <= 1'd0;
		soc_basesoc_sdram_bankmachine3_cmd_buffer_first_n <= 1'd0;
		soc_basesoc_sdram_bankmachine3_cmd_buffer_last_n <= 1'd0;
		soc_basesoc_sdram_bankmachine3_row <= 14'd0;
		soc_basesoc_sdram_bankmachine3_row_opened <= 1'd0;
		soc_basesoc_sdram_bankmachine3_twtpcon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine3_twtpcon_count <= 3'd0;
		soc_basesoc_sdram_bankmachine3_trccon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine3_trccon_count <= 3'd0;
		soc_basesoc_sdram_bankmachine3_trascon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine3_trascon_count <= 3'd0;
		soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_level <= 4'd0;
		soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_produce <= 3'd0;
		soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_consume <= 3'd0;
		soc_basesoc_sdram_bankmachine4_cmd_buffer_source_payload_we <= 1'd0;
		soc_basesoc_sdram_bankmachine4_cmd_buffer_source_payload_addr <= 21'd0;
		soc_basesoc_sdram_bankmachine4_cmd_buffer_valid_n <= 1'd0;
		soc_basesoc_sdram_bankmachine4_cmd_buffer_first_n <= 1'd0;
		soc_basesoc_sdram_bankmachine4_cmd_buffer_last_n <= 1'd0;
		soc_basesoc_sdram_bankmachine4_row <= 14'd0;
		soc_basesoc_sdram_bankmachine4_row_opened <= 1'd0;
		soc_basesoc_sdram_bankmachine4_twtpcon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine4_twtpcon_count <= 3'd0;
		soc_basesoc_sdram_bankmachine4_trccon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine4_trccon_count <= 3'd0;
		soc_basesoc_sdram_bankmachine4_trascon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine4_trascon_count <= 3'd0;
		soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_level <= 4'd0;
		soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_produce <= 3'd0;
		soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_consume <= 3'd0;
		soc_basesoc_sdram_bankmachine5_cmd_buffer_source_payload_we <= 1'd0;
		soc_basesoc_sdram_bankmachine5_cmd_buffer_source_payload_addr <= 21'd0;
		soc_basesoc_sdram_bankmachine5_cmd_buffer_valid_n <= 1'd0;
		soc_basesoc_sdram_bankmachine5_cmd_buffer_first_n <= 1'd0;
		soc_basesoc_sdram_bankmachine5_cmd_buffer_last_n <= 1'd0;
		soc_basesoc_sdram_bankmachine5_row <= 14'd0;
		soc_basesoc_sdram_bankmachine5_row_opened <= 1'd0;
		soc_basesoc_sdram_bankmachine5_twtpcon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine5_twtpcon_count <= 3'd0;
		soc_basesoc_sdram_bankmachine5_trccon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine5_trccon_count <= 3'd0;
		soc_basesoc_sdram_bankmachine5_trascon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine5_trascon_count <= 3'd0;
		soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_level <= 4'd0;
		soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_produce <= 3'd0;
		soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_consume <= 3'd0;
		soc_basesoc_sdram_bankmachine6_cmd_buffer_source_payload_we <= 1'd0;
		soc_basesoc_sdram_bankmachine6_cmd_buffer_source_payload_addr <= 21'd0;
		soc_basesoc_sdram_bankmachine6_cmd_buffer_valid_n <= 1'd0;
		soc_basesoc_sdram_bankmachine6_cmd_buffer_first_n <= 1'd0;
		soc_basesoc_sdram_bankmachine6_cmd_buffer_last_n <= 1'd0;
		soc_basesoc_sdram_bankmachine6_row <= 14'd0;
		soc_basesoc_sdram_bankmachine6_row_opened <= 1'd0;
		soc_basesoc_sdram_bankmachine6_twtpcon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine6_twtpcon_count <= 3'd0;
		soc_basesoc_sdram_bankmachine6_trccon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine6_trccon_count <= 3'd0;
		soc_basesoc_sdram_bankmachine6_trascon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine6_trascon_count <= 3'd0;
		soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_level <= 4'd0;
		soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_produce <= 3'd0;
		soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_consume <= 3'd0;
		soc_basesoc_sdram_bankmachine7_cmd_buffer_source_payload_we <= 1'd0;
		soc_basesoc_sdram_bankmachine7_cmd_buffer_source_payload_addr <= 21'd0;
		soc_basesoc_sdram_bankmachine7_cmd_buffer_valid_n <= 1'd0;
		soc_basesoc_sdram_bankmachine7_cmd_buffer_first_n <= 1'd0;
		soc_basesoc_sdram_bankmachine7_cmd_buffer_last_n <= 1'd0;
		soc_basesoc_sdram_bankmachine7_row <= 14'd0;
		soc_basesoc_sdram_bankmachine7_row_opened <= 1'd0;
		soc_basesoc_sdram_bankmachine7_twtpcon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine7_twtpcon_count <= 3'd0;
		soc_basesoc_sdram_bankmachine7_trccon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine7_trccon_count <= 3'd0;
		soc_basesoc_sdram_bankmachine7_trascon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine7_trascon_count <= 3'd0;
		soc_basesoc_sdram_choose_cmd_grant <= 3'd0;
		soc_basesoc_sdram_choose_req_grant <= 3'd0;
		soc_basesoc_sdram_trrdcon_ready <= 1'd1;
		soc_basesoc_sdram_trrdcon_count <= 1'd0;
		soc_basesoc_sdram_tfawcon_ready <= 1'd1;
		soc_basesoc_sdram_tfawcon_window <= 5'd0;
		soc_basesoc_sdram_tccdcon_ready <= 1'd1;
		soc_basesoc_sdram_tccdcon_count <= 1'd0;
		soc_basesoc_sdram_twtrcon_ready <= 1'd1;
		soc_basesoc_sdram_twtrcon_count <= 3'd0;
		soc_basesoc_sdram_time0 <= 5'd0;
		soc_basesoc_sdram_time1 <= 4'd0;
		soc_basesoc_sdram_bandwidth_nreads_status <= 24'd0;
		soc_basesoc_sdram_bandwidth_nwrites_status <= 24'd0;
		soc_basesoc_sdram_bandwidth_cmd_valid <= 1'd0;
		soc_basesoc_sdram_bandwidth_cmd_ready <= 1'd0;
		soc_basesoc_sdram_bandwidth_cmd_is_read <= 1'd0;
		soc_basesoc_sdram_bandwidth_cmd_is_write <= 1'd0;
		soc_basesoc_sdram_bandwidth_counter <= 24'd0;
		soc_basesoc_sdram_bandwidth_period <= 1'd0;
		soc_basesoc_sdram_bandwidth_nreads <= 24'd0;
		soc_basesoc_sdram_bandwidth_nwrites <= 24'd0;
		soc_basesoc_sdram_bandwidth_nreads_r <= 24'd0;
		soc_basesoc_sdram_bandwidth_nwrites_r <= 24'd0;
		soc_basesoc_adr_offset_r <= 2'd0;
		vns_refresher_state <= 2'd0;
		vns_bankmachine0_state <= 4'd0;
		vns_bankmachine1_state <= 4'd0;
		vns_bankmachine2_state <= 4'd0;
		vns_bankmachine3_state <= 4'd0;
		vns_bankmachine4_state <= 4'd0;
		vns_bankmachine5_state <= 4'd0;
		vns_bankmachine6_state <= 4'd0;
		vns_bankmachine7_state <= 4'd0;
		vns_multiplexer_state <= 4'd0;
		vns_rbank <= 3'd0;
		vns_wbank <= 3'd0;
		vns_new_master_wdata_ready0 <= 1'd0;
		vns_new_master_wdata_ready1 <= 1'd0;
		vns_new_master_wdata_ready2 <= 1'd0;
		vns_new_master_rdata_valid0 <= 1'd0;
		vns_new_master_rdata_valid1 <= 1'd0;
		vns_new_master_rdata_valid2 <= 1'd0;
		vns_new_master_rdata_valid3 <= 1'd0;
		vns_new_master_rdata_valid4 <= 1'd0;
		vns_new_master_rdata_valid5 <= 1'd0;
		vns_new_master_rdata_valid6 <= 1'd0;
		vns_new_master_rdata_valid7 <= 1'd0;
		vns_new_master_rdata_valid8 <= 1'd0;
		vns_new_master_rdata_valid9 <= 1'd0;
		vns_fullmemorywe_state <= 3'd0;
		vns_litedramwishbone2native_state <= 2'd0;
		vns_basesoc_grant <= 1'd0;
		vns_basesoc_slave_sel_r <= 5'd0;
		vns_basesoc_count <= 20'd1000000;
		vns_basesoc_interface0_bank_bus_dat_r <= 8'd0;
		vns_basesoc_interface1_bank_bus_dat_r <= 8'd0;
		vns_basesoc_interface2_bank_bus_dat_r <= 8'd0;
		vns_basesoc_sel_r <= 1'd0;
		vns_basesoc_interface3_bank_bus_dat_r <= 8'd0;
		vns_basesoc_interface4_bank_bus_dat_r <= 8'd0;
		vns_basesoc_interface5_bank_bus_dat_r <= 8'd0;
		vns_basesoc_interface6_bank_bus_dat_r <= 8'd0;
		vns_basesoc_interface7_bank_bus_dat_r <= 8'd0;
		vns_basesoc_interface8_bank_bus_dat_r <= 8'd0;
	end
	vns_xilinxmultiregimpl0_regs0 <= serial_rx;
	vns_xilinxmultiregimpl0_regs1 <= vns_xilinxmultiregimpl0_regs0;
	vns_xilinxmultiregimpl1_regs0 <= soc_switches;
	vns_xilinxmultiregimpl1_regs1 <= vns_xilinxmultiregimpl1_regs0;
end

lm32_cpu #(
	.eba_reset(32'h00000000)
) lm32_cpu (
	.D_ACK_I(soc_basesoc_lm32_dbus_ack),
	.D_DAT_I(soc_basesoc_lm32_dbus_dat_r),
	.D_ERR_I(soc_basesoc_lm32_dbus_err),
	.D_RTY_I(1'd0),
	.I_ACK_I(soc_basesoc_lm32_ibus_ack),
	.I_DAT_I(soc_basesoc_lm32_ibus_dat_r),
	.I_ERR_I(soc_basesoc_lm32_ibus_err),
	.I_RTY_I(1'd0),
	.clk_i(sys_clk),
	.interrupt(soc_basesoc_lm32_interrupt),
	.rst_i((sys_rst | soc_basesoc_lm32_reset)),
	.D_ADR_O(soc_basesoc_lm32_d_adr_o),
	.D_BTE_O(soc_basesoc_lm32_dbus_bte),
	.D_CTI_O(soc_basesoc_lm32_dbus_cti),
	.D_CYC_O(soc_basesoc_lm32_dbus_cyc),
	.D_DAT_O(soc_basesoc_lm32_dbus_dat_w),
	.D_SEL_O(soc_basesoc_lm32_dbus_sel),
	.D_STB_O(soc_basesoc_lm32_dbus_stb),
	.D_WE_O(soc_basesoc_lm32_dbus_we),
	.I_ADR_O(soc_basesoc_lm32_i_adr_o),
	.I_BTE_O(soc_basesoc_lm32_ibus_bte),
	.I_CTI_O(soc_basesoc_lm32_ibus_cti),
	.I_CYC_O(soc_basesoc_lm32_ibus_cyc),
	.I_DAT_O(soc_basesoc_lm32_ibus_dat_w),
	.I_SEL_O(soc_basesoc_lm32_ibus_sel),
	.I_STB_O(soc_basesoc_lm32_ibus_stb),
	.I_WE_O(soc_basesoc_lm32_ibus_we)
);

reg [31:0] mem[0:8191];
reg [12:0] memadr;
always @(posedge sys_clk) begin
	memadr <= soc_basesoc_rom_adr;
end

assign soc_basesoc_rom_dat_r = mem[memadr];

initial begin
	$readmemh("mem.init", mem);
end

reg [31:0] mem_1[0:8191];
reg [12:0] memadr_1;
always @(posedge sys_clk) begin
	if (soc_basesoc_sram_we[0])
		mem_1[soc_basesoc_sram_adr][7:0] <= soc_basesoc_sram_dat_w[7:0];
	if (soc_basesoc_sram_we[1])
		mem_1[soc_basesoc_sram_adr][15:8] <= soc_basesoc_sram_dat_w[15:8];
	if (soc_basesoc_sram_we[2])
		mem_1[soc_basesoc_sram_adr][23:16] <= soc_basesoc_sram_dat_w[23:16];
	if (soc_basesoc_sram_we[3])
		mem_1[soc_basesoc_sram_adr][31:24] <= soc_basesoc_sram_dat_w[31:24];
	memadr_1 <= soc_basesoc_sram_adr;
end

assign soc_basesoc_sram_dat_r = mem_1[memadr_1];

reg [9:0] storage[0:15];
reg [9:0] memdat;
reg [9:0] memdat_1;
always @(posedge sys_clk) begin
	if (soc_basesoc_uart_tx_fifo_wrport_we)
		storage[soc_basesoc_uart_tx_fifo_wrport_adr] <= soc_basesoc_uart_tx_fifo_wrport_dat_w;
	memdat <= storage[soc_basesoc_uart_tx_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
	if (soc_basesoc_uart_tx_fifo_rdport_re)
		memdat_1 <= storage[soc_basesoc_uart_tx_fifo_rdport_adr];
end

assign soc_basesoc_uart_tx_fifo_wrport_dat_r = memdat;
assign soc_basesoc_uart_tx_fifo_rdport_dat_r = memdat_1;

reg [9:0] storage_1[0:15];
reg [9:0] memdat_2;
reg [9:0] memdat_3;
always @(posedge sys_clk) begin
	if (soc_basesoc_uart_rx_fifo_wrport_we)
		storage_1[soc_basesoc_uart_rx_fifo_wrport_adr] <= soc_basesoc_uart_rx_fifo_wrport_dat_w;
	memdat_2 <= storage_1[soc_basesoc_uart_rx_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
	if (soc_basesoc_uart_rx_fifo_rdport_re)
		memdat_3 <= storage_1[soc_basesoc_uart_rx_fifo_rdport_adr];
end

assign soc_basesoc_uart_rx_fifo_wrport_dat_r = memdat_2;
assign soc_basesoc_uart_rx_fifo_rdport_dat_r = memdat_3;

reg [7:0] mem_2[0:7];
reg [2:0] memadr_2;
always @(posedge sys_clk) begin
	memadr_2 <= vns_basesoc_adr;
end

assign vns_basesoc_dat_r = mem_2[memadr_2];

initial begin
	$readmemh("mem_2.init", mem_2);
end

PLLE2_BASE #(
	.CLKFBOUT_MULT(5'd16),
	.CLKIN1_PERIOD(10.0),
	.CLKOUT0_DIVIDE(5'd16),
	.CLKOUT0_PHASE(0.0),
	.CLKOUT1_DIVIDE(3'd4),
	.CLKOUT1_PHASE(0.0),
	.CLKOUT2_DIVIDE(3'd4),
	.CLKOUT2_PHASE(90.0),
	.CLKOUT3_DIVIDE(4'd8),
	.CLKOUT3_PHASE(0.0),
	.CLKOUT4_DIVIDE(6'd32),
	.CLKOUT4_PHASE(0.0),
	.CLKOUT5_DIVIDE(5'd16),
	.CLKOUT5_PHASE(0.0),
	.DIVCLK_DIVIDE(1'd1),
	.REF_JITTER1(0.01),
	.STARTUP_WAIT("FALSE")
) PLLE2_BASE (
	.CLKFBIN(soc_pll_fb),
	.CLKIN1(clk100),
	.CLKFBOUT(soc_pll_fb),
	.CLKOUT0(soc_pll_sys),
	.CLKOUT1(soc_pll_sys4x),
	.CLKOUT2(soc_pll_sys4x_dqs),
	.CLKOUT3(soc_pll_clk200),
	.CLKOUT4(soc_pll_clk50),
	.CLKOUT5(soc_pll_clk100),
	.LOCKED(soc_pll_locked)
);

BUFG BUFG(
	.I(soc_pll_sys),
	.O(sys_clk)
);

BUFG BUFG_1(
	.I(soc_pll_sys4x),
	.O(sys4x_clk)
);

BUFG BUFG_2(
	.I(soc_pll_sys4x_dqs),
	.O(sys4x_dqs_clk)
);

BUFG BUFG_3(
	.I(soc_pll_clk200),
	.O(clk200_clk)
);

BUFG BUFG_4(
	.I(soc_pll_clk100),
	.O(clk100_clk)
);

BUFG BUFG_5(
	.I(soc_pll_clk50),
	.O(clk50_clk)
);

IDELAYCTRL IDELAYCTRL(
	.REFCLK(clk200_clk),
	.RST(soc_ic_reset)
);

BUFR #(
	.BUFR_DIVIDE("4")
) BUFR (
	.CE(1'd1),
	.CLR(1'd0),
	.I(clk100),
	.O(soc_eth_clk)
);

BUFG BUFG_6(
	.I(soc_eth_clk),
	.O(eth_ref_clk)
);

DNA_PORT DNA_PORT(
	.CLK(soc_dna_cnt[0]),
	.DIN(soc_dna_status[56]),
	.READ((soc_dna_cnt < 2'd2)),
	.SHIFT(1'd1),
	.DOUT(soc_dna_do)
);

XADC #(
	.INIT_40(16'd36864),
	.INIT_41(14'd12016),
	.INIT_42(11'd1024),
	.INIT_48(15'd18177),
	.INIT_49(4'd15),
	.INIT_4A(15'd18176),
	.INIT_4B(1'd0),
	.INIT_4C(1'd0),
	.INIT_4D(1'd0),
	.INIT_4E(1'd0),
	.INIT_4F(1'd0),
	.INIT_50(16'd46573),
	.INIT_51(15'd22937),
	.INIT_52(16'd41287),
	.INIT_53(16'd56797),
	.INIT_54(16'd43322),
	.INIT_55(15'd20753),
	.INIT_56(16'd37355),
	.INIT_57(16'd44622),
	.INIT_58(15'd22937),
	.INIT_5C(15'd20753)
) XADC (
	.CONVST(1'd0),
	.CONVSTCLK(1'd0),
	.DADDR(soc_channel),
	.DCLK(sys_clk),
	.DEN(soc_eoc),
	.DI(1'd0),
	.DWE(1'd0),
	.RESET(sys_rst),
	.VAUXN(1'd0),
	.VAUXP(1'd1),
	.VN(1'd0),
	.VP(1'd1),
	.ALM(soc_alarm),
	.BUSY(soc_busy),
	.CHANNEL(soc_channel),
	.DO(soc_data),
	.DRDY(soc_drdy),
	.EOC(soc_eoc),
	.EOS(soc_eos),
	.OT(soc_ot)
);

STARTUPE2 STARTUPE2(
	.CLK(1'd0),
	.GSR(1'd0),
	.GTS(1'd0),
	.KEYCLEARB(1'd0),
	.PACK(1'd0),
	.USRCCLKO(soc_clk),
	.USRCCLKTS(1'd0),
	.USRDONEO(1'd1),
	.USRDONETS(1'd1)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(1'd0),
	.D2(1'd1),
	.D3(1'd0),
	.D4(1'd1),
	.D5(1'd0),
	.D6(1'd1),
	.D7(1'd0),
	.D8(1'd1),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(soc_a7ddrphy_sd_clk_se)
);

OBUFDS OBUFDS(
	.I(soc_a7ddrphy_sd_clk_se),
	.O(ddram_clk_p),
	.OB(ddram_clk_n)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_1 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_address[0]),
	.D2(soc_a7ddrphy_dfi_p0_address[0]),
	.D3(soc_a7ddrphy_dfi_p1_address[0]),
	.D4(soc_a7ddrphy_dfi_p1_address[0]),
	.D5(soc_a7ddrphy_dfi_p2_address[0]),
	.D6(soc_a7ddrphy_dfi_p2_address[0]),
	.D7(soc_a7ddrphy_dfi_p3_address[0]),
	.D8(soc_a7ddrphy_dfi_p3_address[0]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[0])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_2 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_address[1]),
	.D2(soc_a7ddrphy_dfi_p0_address[1]),
	.D3(soc_a7ddrphy_dfi_p1_address[1]),
	.D4(soc_a7ddrphy_dfi_p1_address[1]),
	.D5(soc_a7ddrphy_dfi_p2_address[1]),
	.D6(soc_a7ddrphy_dfi_p2_address[1]),
	.D7(soc_a7ddrphy_dfi_p3_address[1]),
	.D8(soc_a7ddrphy_dfi_p3_address[1]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[1])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_3 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_address[2]),
	.D2(soc_a7ddrphy_dfi_p0_address[2]),
	.D3(soc_a7ddrphy_dfi_p1_address[2]),
	.D4(soc_a7ddrphy_dfi_p1_address[2]),
	.D5(soc_a7ddrphy_dfi_p2_address[2]),
	.D6(soc_a7ddrphy_dfi_p2_address[2]),
	.D7(soc_a7ddrphy_dfi_p3_address[2]),
	.D8(soc_a7ddrphy_dfi_p3_address[2]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[2])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_4 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_address[3]),
	.D2(soc_a7ddrphy_dfi_p0_address[3]),
	.D3(soc_a7ddrphy_dfi_p1_address[3]),
	.D4(soc_a7ddrphy_dfi_p1_address[3]),
	.D5(soc_a7ddrphy_dfi_p2_address[3]),
	.D6(soc_a7ddrphy_dfi_p2_address[3]),
	.D7(soc_a7ddrphy_dfi_p3_address[3]),
	.D8(soc_a7ddrphy_dfi_p3_address[3]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[3])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_5 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_address[4]),
	.D2(soc_a7ddrphy_dfi_p0_address[4]),
	.D3(soc_a7ddrphy_dfi_p1_address[4]),
	.D4(soc_a7ddrphy_dfi_p1_address[4]),
	.D5(soc_a7ddrphy_dfi_p2_address[4]),
	.D6(soc_a7ddrphy_dfi_p2_address[4]),
	.D7(soc_a7ddrphy_dfi_p3_address[4]),
	.D8(soc_a7ddrphy_dfi_p3_address[4]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[4])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_6 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_address[5]),
	.D2(soc_a7ddrphy_dfi_p0_address[5]),
	.D3(soc_a7ddrphy_dfi_p1_address[5]),
	.D4(soc_a7ddrphy_dfi_p1_address[5]),
	.D5(soc_a7ddrphy_dfi_p2_address[5]),
	.D6(soc_a7ddrphy_dfi_p2_address[5]),
	.D7(soc_a7ddrphy_dfi_p3_address[5]),
	.D8(soc_a7ddrphy_dfi_p3_address[5]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[5])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_7 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_address[6]),
	.D2(soc_a7ddrphy_dfi_p0_address[6]),
	.D3(soc_a7ddrphy_dfi_p1_address[6]),
	.D4(soc_a7ddrphy_dfi_p1_address[6]),
	.D5(soc_a7ddrphy_dfi_p2_address[6]),
	.D6(soc_a7ddrphy_dfi_p2_address[6]),
	.D7(soc_a7ddrphy_dfi_p3_address[6]),
	.D8(soc_a7ddrphy_dfi_p3_address[6]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[6])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_8 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_address[7]),
	.D2(soc_a7ddrphy_dfi_p0_address[7]),
	.D3(soc_a7ddrphy_dfi_p1_address[7]),
	.D4(soc_a7ddrphy_dfi_p1_address[7]),
	.D5(soc_a7ddrphy_dfi_p2_address[7]),
	.D6(soc_a7ddrphy_dfi_p2_address[7]),
	.D7(soc_a7ddrphy_dfi_p3_address[7]),
	.D8(soc_a7ddrphy_dfi_p3_address[7]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[7])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_9 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_address[8]),
	.D2(soc_a7ddrphy_dfi_p0_address[8]),
	.D3(soc_a7ddrphy_dfi_p1_address[8]),
	.D4(soc_a7ddrphy_dfi_p1_address[8]),
	.D5(soc_a7ddrphy_dfi_p2_address[8]),
	.D6(soc_a7ddrphy_dfi_p2_address[8]),
	.D7(soc_a7ddrphy_dfi_p3_address[8]),
	.D8(soc_a7ddrphy_dfi_p3_address[8]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[8])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_10 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_address[9]),
	.D2(soc_a7ddrphy_dfi_p0_address[9]),
	.D3(soc_a7ddrphy_dfi_p1_address[9]),
	.D4(soc_a7ddrphy_dfi_p1_address[9]),
	.D5(soc_a7ddrphy_dfi_p2_address[9]),
	.D6(soc_a7ddrphy_dfi_p2_address[9]),
	.D7(soc_a7ddrphy_dfi_p3_address[9]),
	.D8(soc_a7ddrphy_dfi_p3_address[9]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[9])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_11 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_address[10]),
	.D2(soc_a7ddrphy_dfi_p0_address[10]),
	.D3(soc_a7ddrphy_dfi_p1_address[10]),
	.D4(soc_a7ddrphy_dfi_p1_address[10]),
	.D5(soc_a7ddrphy_dfi_p2_address[10]),
	.D6(soc_a7ddrphy_dfi_p2_address[10]),
	.D7(soc_a7ddrphy_dfi_p3_address[10]),
	.D8(soc_a7ddrphy_dfi_p3_address[10]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[10])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_12 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_address[11]),
	.D2(soc_a7ddrphy_dfi_p0_address[11]),
	.D3(soc_a7ddrphy_dfi_p1_address[11]),
	.D4(soc_a7ddrphy_dfi_p1_address[11]),
	.D5(soc_a7ddrphy_dfi_p2_address[11]),
	.D6(soc_a7ddrphy_dfi_p2_address[11]),
	.D7(soc_a7ddrphy_dfi_p3_address[11]),
	.D8(soc_a7ddrphy_dfi_p3_address[11]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[11])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_13 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_address[12]),
	.D2(soc_a7ddrphy_dfi_p0_address[12]),
	.D3(soc_a7ddrphy_dfi_p1_address[12]),
	.D4(soc_a7ddrphy_dfi_p1_address[12]),
	.D5(soc_a7ddrphy_dfi_p2_address[12]),
	.D6(soc_a7ddrphy_dfi_p2_address[12]),
	.D7(soc_a7ddrphy_dfi_p3_address[12]),
	.D8(soc_a7ddrphy_dfi_p3_address[12]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[12])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_14 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_address[13]),
	.D2(soc_a7ddrphy_dfi_p0_address[13]),
	.D3(soc_a7ddrphy_dfi_p1_address[13]),
	.D4(soc_a7ddrphy_dfi_p1_address[13]),
	.D5(soc_a7ddrphy_dfi_p2_address[13]),
	.D6(soc_a7ddrphy_dfi_p2_address[13]),
	.D7(soc_a7ddrphy_dfi_p3_address[13]),
	.D8(soc_a7ddrphy_dfi_p3_address[13]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[13])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_15 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_bank[0]),
	.D2(soc_a7ddrphy_dfi_p0_bank[0]),
	.D3(soc_a7ddrphy_dfi_p1_bank[0]),
	.D4(soc_a7ddrphy_dfi_p1_bank[0]),
	.D5(soc_a7ddrphy_dfi_p2_bank[0]),
	.D6(soc_a7ddrphy_dfi_p2_bank[0]),
	.D7(soc_a7ddrphy_dfi_p3_bank[0]),
	.D8(soc_a7ddrphy_dfi_p3_bank[0]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_ba[0])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_16 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_bank[1]),
	.D2(soc_a7ddrphy_dfi_p0_bank[1]),
	.D3(soc_a7ddrphy_dfi_p1_bank[1]),
	.D4(soc_a7ddrphy_dfi_p1_bank[1]),
	.D5(soc_a7ddrphy_dfi_p2_bank[1]),
	.D6(soc_a7ddrphy_dfi_p2_bank[1]),
	.D7(soc_a7ddrphy_dfi_p3_bank[1]),
	.D8(soc_a7ddrphy_dfi_p3_bank[1]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_ba[1])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_17 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_bank[2]),
	.D2(soc_a7ddrphy_dfi_p0_bank[2]),
	.D3(soc_a7ddrphy_dfi_p1_bank[2]),
	.D4(soc_a7ddrphy_dfi_p1_bank[2]),
	.D5(soc_a7ddrphy_dfi_p2_bank[2]),
	.D6(soc_a7ddrphy_dfi_p2_bank[2]),
	.D7(soc_a7ddrphy_dfi_p3_bank[2]),
	.D8(soc_a7ddrphy_dfi_p3_bank[2]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_ba[2])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_18 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_ras_n),
	.D2(soc_a7ddrphy_dfi_p0_ras_n),
	.D3(soc_a7ddrphy_dfi_p1_ras_n),
	.D4(soc_a7ddrphy_dfi_p1_ras_n),
	.D5(soc_a7ddrphy_dfi_p2_ras_n),
	.D6(soc_a7ddrphy_dfi_p2_ras_n),
	.D7(soc_a7ddrphy_dfi_p3_ras_n),
	.D8(soc_a7ddrphy_dfi_p3_ras_n),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_ras_n)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_19 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_cas_n),
	.D2(soc_a7ddrphy_dfi_p0_cas_n),
	.D3(soc_a7ddrphy_dfi_p1_cas_n),
	.D4(soc_a7ddrphy_dfi_p1_cas_n),
	.D5(soc_a7ddrphy_dfi_p2_cas_n),
	.D6(soc_a7ddrphy_dfi_p2_cas_n),
	.D7(soc_a7ddrphy_dfi_p3_cas_n),
	.D8(soc_a7ddrphy_dfi_p3_cas_n),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_cas_n)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_20 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_we_n),
	.D2(soc_a7ddrphy_dfi_p0_we_n),
	.D3(soc_a7ddrphy_dfi_p1_we_n),
	.D4(soc_a7ddrphy_dfi_p1_we_n),
	.D5(soc_a7ddrphy_dfi_p2_we_n),
	.D6(soc_a7ddrphy_dfi_p2_we_n),
	.D7(soc_a7ddrphy_dfi_p3_we_n),
	.D8(soc_a7ddrphy_dfi_p3_we_n),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_we_n)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_21 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_cke),
	.D2(soc_a7ddrphy_dfi_p0_cke),
	.D3(soc_a7ddrphy_dfi_p1_cke),
	.D4(soc_a7ddrphy_dfi_p1_cke),
	.D5(soc_a7ddrphy_dfi_p2_cke),
	.D6(soc_a7ddrphy_dfi_p2_cke),
	.D7(soc_a7ddrphy_dfi_p3_cke),
	.D8(soc_a7ddrphy_dfi_p3_cke),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_cke)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_22 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_odt),
	.D2(soc_a7ddrphy_dfi_p0_odt),
	.D3(soc_a7ddrphy_dfi_p1_odt),
	.D4(soc_a7ddrphy_dfi_p1_odt),
	.D5(soc_a7ddrphy_dfi_p2_odt),
	.D6(soc_a7ddrphy_dfi_p2_odt),
	.D7(soc_a7ddrphy_dfi_p3_odt),
	.D8(soc_a7ddrphy_dfi_p3_odt),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_odt)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_23 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_reset_n),
	.D2(soc_a7ddrphy_dfi_p0_reset_n),
	.D3(soc_a7ddrphy_dfi_p1_reset_n),
	.D4(soc_a7ddrphy_dfi_p1_reset_n),
	.D5(soc_a7ddrphy_dfi_p2_reset_n),
	.D6(soc_a7ddrphy_dfi_p2_reset_n),
	.D7(soc_a7ddrphy_dfi_p3_reset_n),
	.D8(soc_a7ddrphy_dfi_p3_reset_n),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_reset_n)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_24 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_cs_n),
	.D2(soc_a7ddrphy_dfi_p0_cs_n),
	.D3(soc_a7ddrphy_dfi_p1_cs_n),
	.D4(soc_a7ddrphy_dfi_p1_cs_n),
	.D5(soc_a7ddrphy_dfi_p2_cs_n),
	.D6(soc_a7ddrphy_dfi_p2_cs_n),
	.D7(soc_a7ddrphy_dfi_p3_cs_n),
	.D8(soc_a7ddrphy_dfi_p3_cs_n),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_cs_n)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_25 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_wrdata_mask[0]),
	.D2(soc_a7ddrphy_dfi_p0_wrdata_mask[2]),
	.D3(soc_a7ddrphy_dfi_p1_wrdata_mask[0]),
	.D4(soc_a7ddrphy_dfi_p1_wrdata_mask[2]),
	.D5(soc_a7ddrphy_dfi_p2_wrdata_mask[0]),
	.D6(soc_a7ddrphy_dfi_p2_wrdata_mask[2]),
	.D7(soc_a7ddrphy_dfi_p3_wrdata_mask[0]),
	.D8(soc_a7ddrphy_dfi_p3_wrdata_mask[2]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_dm[0])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_26 (
	.CLK(sys4x_dqs_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dqs_serdes_pattern[0]),
	.D2(soc_a7ddrphy_dqs_serdes_pattern[1]),
	.D3(soc_a7ddrphy_dqs_serdes_pattern[2]),
	.D4(soc_a7ddrphy_dqs_serdes_pattern[3]),
	.D5(soc_a7ddrphy_dqs_serdes_pattern[4]),
	.D6(soc_a7ddrphy_dqs_serdes_pattern[5]),
	.D7(soc_a7ddrphy_dqs_serdes_pattern[6]),
	.D8(soc_a7ddrphy_dqs_serdes_pattern[7]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_a7ddrphy_oe_dqs)),
	.TCE(1'd1),
	.OFB(soc_a7ddrphy0),
	.OQ(soc_a7ddrphy_dqs_nodelay0),
	.TQ(soc_a7ddrphy_dqs_t0)
);

OBUFTDS OBUFTDS(
	.I(soc_a7ddrphy_dqs_nodelay0),
	.T(soc_a7ddrphy_dqs_t0),
	.O(ddram_dqs_p[0]),
	.OB(ddram_dqs_n[0])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_27 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_wrdata_mask[1]),
	.D2(soc_a7ddrphy_dfi_p0_wrdata_mask[3]),
	.D3(soc_a7ddrphy_dfi_p1_wrdata_mask[1]),
	.D4(soc_a7ddrphy_dfi_p1_wrdata_mask[3]),
	.D5(soc_a7ddrphy_dfi_p2_wrdata_mask[1]),
	.D6(soc_a7ddrphy_dfi_p2_wrdata_mask[3]),
	.D7(soc_a7ddrphy_dfi_p3_wrdata_mask[1]),
	.D8(soc_a7ddrphy_dfi_p3_wrdata_mask[3]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_dm[1])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_28 (
	.CLK(sys4x_dqs_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dqs_serdes_pattern[0]),
	.D2(soc_a7ddrphy_dqs_serdes_pattern[1]),
	.D3(soc_a7ddrphy_dqs_serdes_pattern[2]),
	.D4(soc_a7ddrphy_dqs_serdes_pattern[3]),
	.D5(soc_a7ddrphy_dqs_serdes_pattern[4]),
	.D6(soc_a7ddrphy_dqs_serdes_pattern[5]),
	.D7(soc_a7ddrphy_dqs_serdes_pattern[6]),
	.D8(soc_a7ddrphy_dqs_serdes_pattern[7]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_a7ddrphy_oe_dqs)),
	.TCE(1'd1),
	.OFB(soc_a7ddrphy1),
	.OQ(soc_a7ddrphy_dqs_nodelay1),
	.TQ(soc_a7ddrphy_dqs_t1)
);

OBUFTDS OBUFTDS_1(
	.I(soc_a7ddrphy_dqs_nodelay1),
	.T(soc_a7ddrphy_dqs_t1),
	.O(ddram_dqs_p[1]),
	.OB(ddram_dqs_n[1])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_29 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_wrdata[0]),
	.D2(soc_a7ddrphy_dfi_p0_wrdata[16]),
	.D3(soc_a7ddrphy_dfi_p1_wrdata[0]),
	.D4(soc_a7ddrphy_dfi_p1_wrdata[16]),
	.D5(soc_a7ddrphy_dfi_p2_wrdata[0]),
	.D6(soc_a7ddrphy_dfi_p2_wrdata[16]),
	.D7(soc_a7ddrphy_dfi_p3_wrdata[0]),
	.D8(soc_a7ddrphy_dfi_p3_wrdata[16]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_a7ddrphy_dq_o_nodelay0),
	.TQ(soc_a7ddrphy_dq_t0)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2 (
	.BITSLIP(1'd0),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_a7ddrphy_dq_i_delayed0),
	.RST(sys_rst),
	.Q1(soc_a7ddrphy_dq_i_data0[7]),
	.Q2(soc_a7ddrphy_dq_i_data0[6]),
	.Q3(soc_a7ddrphy_dq_i_data0[5]),
	.Q4(soc_a7ddrphy_dq_i_data0[4]),
	.Q5(soc_a7ddrphy_dq_i_data0[3]),
	.Q6(soc_a7ddrphy_dq_i_data0[2]),
	.Q7(soc_a7ddrphy_dq_i_data0[1]),
	.Q8(soc_a7ddrphy_dq_i_data0[0])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2 (
	.C(sys_clk),
	.CE((soc_a7ddrphy_dly_sel_storage[0] & soc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_a7ddrphy_dq_i_nodelay0),
	.INC(1'd1),
	.LD((soc_a7ddrphy_dly_sel_storage[0] & soc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_a7ddrphy_dq_i_delayed0)
);

IOBUF IOBUF(
	.I(soc_a7ddrphy_dq_o_nodelay0),
	.T(soc_a7ddrphy_dq_t0),
	.IO(ddram_dq[0]),
	.O(soc_a7ddrphy_dq_i_nodelay0)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_30 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_wrdata[1]),
	.D2(soc_a7ddrphy_dfi_p0_wrdata[17]),
	.D3(soc_a7ddrphy_dfi_p1_wrdata[1]),
	.D4(soc_a7ddrphy_dfi_p1_wrdata[17]),
	.D5(soc_a7ddrphy_dfi_p2_wrdata[1]),
	.D6(soc_a7ddrphy_dfi_p2_wrdata[17]),
	.D7(soc_a7ddrphy_dfi_p3_wrdata[1]),
	.D8(soc_a7ddrphy_dfi_p3_wrdata[17]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_a7ddrphy_dq_o_nodelay1),
	.TQ(soc_a7ddrphy_dq_t1)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_1 (
	.BITSLIP(1'd0),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_a7ddrphy_dq_i_delayed1),
	.RST(sys_rst),
	.Q1(soc_a7ddrphy_dq_i_data1[7]),
	.Q2(soc_a7ddrphy_dq_i_data1[6]),
	.Q3(soc_a7ddrphy_dq_i_data1[5]),
	.Q4(soc_a7ddrphy_dq_i_data1[4]),
	.Q5(soc_a7ddrphy_dq_i_data1[3]),
	.Q6(soc_a7ddrphy_dq_i_data1[2]),
	.Q7(soc_a7ddrphy_dq_i_data1[1]),
	.Q8(soc_a7ddrphy_dq_i_data1[0])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_1 (
	.C(sys_clk),
	.CE((soc_a7ddrphy_dly_sel_storage[0] & soc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_a7ddrphy_dq_i_nodelay1),
	.INC(1'd1),
	.LD((soc_a7ddrphy_dly_sel_storage[0] & soc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_a7ddrphy_dq_i_delayed1)
);

IOBUF IOBUF_1(
	.I(soc_a7ddrphy_dq_o_nodelay1),
	.T(soc_a7ddrphy_dq_t1),
	.IO(ddram_dq[1]),
	.O(soc_a7ddrphy_dq_i_nodelay1)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_31 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_wrdata[2]),
	.D2(soc_a7ddrphy_dfi_p0_wrdata[18]),
	.D3(soc_a7ddrphy_dfi_p1_wrdata[2]),
	.D4(soc_a7ddrphy_dfi_p1_wrdata[18]),
	.D5(soc_a7ddrphy_dfi_p2_wrdata[2]),
	.D6(soc_a7ddrphy_dfi_p2_wrdata[18]),
	.D7(soc_a7ddrphy_dfi_p3_wrdata[2]),
	.D8(soc_a7ddrphy_dfi_p3_wrdata[18]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_a7ddrphy_dq_o_nodelay2),
	.TQ(soc_a7ddrphy_dq_t2)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_2 (
	.BITSLIP(1'd0),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_a7ddrphy_dq_i_delayed2),
	.RST(sys_rst),
	.Q1(soc_a7ddrphy_dq_i_data2[7]),
	.Q2(soc_a7ddrphy_dq_i_data2[6]),
	.Q3(soc_a7ddrphy_dq_i_data2[5]),
	.Q4(soc_a7ddrphy_dq_i_data2[4]),
	.Q5(soc_a7ddrphy_dq_i_data2[3]),
	.Q6(soc_a7ddrphy_dq_i_data2[2]),
	.Q7(soc_a7ddrphy_dq_i_data2[1]),
	.Q8(soc_a7ddrphy_dq_i_data2[0])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_2 (
	.C(sys_clk),
	.CE((soc_a7ddrphy_dly_sel_storage[0] & soc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_a7ddrphy_dq_i_nodelay2),
	.INC(1'd1),
	.LD((soc_a7ddrphy_dly_sel_storage[0] & soc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_a7ddrphy_dq_i_delayed2)
);

IOBUF IOBUF_2(
	.I(soc_a7ddrphy_dq_o_nodelay2),
	.T(soc_a7ddrphy_dq_t2),
	.IO(ddram_dq[2]),
	.O(soc_a7ddrphy_dq_i_nodelay2)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_32 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_wrdata[3]),
	.D2(soc_a7ddrphy_dfi_p0_wrdata[19]),
	.D3(soc_a7ddrphy_dfi_p1_wrdata[3]),
	.D4(soc_a7ddrphy_dfi_p1_wrdata[19]),
	.D5(soc_a7ddrphy_dfi_p2_wrdata[3]),
	.D6(soc_a7ddrphy_dfi_p2_wrdata[19]),
	.D7(soc_a7ddrphy_dfi_p3_wrdata[3]),
	.D8(soc_a7ddrphy_dfi_p3_wrdata[19]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_a7ddrphy_dq_o_nodelay3),
	.TQ(soc_a7ddrphy_dq_t3)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_3 (
	.BITSLIP(1'd0),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_a7ddrphy_dq_i_delayed3),
	.RST(sys_rst),
	.Q1(soc_a7ddrphy_dq_i_data3[7]),
	.Q2(soc_a7ddrphy_dq_i_data3[6]),
	.Q3(soc_a7ddrphy_dq_i_data3[5]),
	.Q4(soc_a7ddrphy_dq_i_data3[4]),
	.Q5(soc_a7ddrphy_dq_i_data3[3]),
	.Q6(soc_a7ddrphy_dq_i_data3[2]),
	.Q7(soc_a7ddrphy_dq_i_data3[1]),
	.Q8(soc_a7ddrphy_dq_i_data3[0])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_3 (
	.C(sys_clk),
	.CE((soc_a7ddrphy_dly_sel_storage[0] & soc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_a7ddrphy_dq_i_nodelay3),
	.INC(1'd1),
	.LD((soc_a7ddrphy_dly_sel_storage[0] & soc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_a7ddrphy_dq_i_delayed3)
);

IOBUF IOBUF_3(
	.I(soc_a7ddrphy_dq_o_nodelay3),
	.T(soc_a7ddrphy_dq_t3),
	.IO(ddram_dq[3]),
	.O(soc_a7ddrphy_dq_i_nodelay3)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_33 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_wrdata[4]),
	.D2(soc_a7ddrphy_dfi_p0_wrdata[20]),
	.D3(soc_a7ddrphy_dfi_p1_wrdata[4]),
	.D4(soc_a7ddrphy_dfi_p1_wrdata[20]),
	.D5(soc_a7ddrphy_dfi_p2_wrdata[4]),
	.D6(soc_a7ddrphy_dfi_p2_wrdata[20]),
	.D7(soc_a7ddrphy_dfi_p3_wrdata[4]),
	.D8(soc_a7ddrphy_dfi_p3_wrdata[20]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_a7ddrphy_dq_o_nodelay4),
	.TQ(soc_a7ddrphy_dq_t4)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_4 (
	.BITSLIP(1'd0),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_a7ddrphy_dq_i_delayed4),
	.RST(sys_rst),
	.Q1(soc_a7ddrphy_dq_i_data4[7]),
	.Q2(soc_a7ddrphy_dq_i_data4[6]),
	.Q3(soc_a7ddrphy_dq_i_data4[5]),
	.Q4(soc_a7ddrphy_dq_i_data4[4]),
	.Q5(soc_a7ddrphy_dq_i_data4[3]),
	.Q6(soc_a7ddrphy_dq_i_data4[2]),
	.Q7(soc_a7ddrphy_dq_i_data4[1]),
	.Q8(soc_a7ddrphy_dq_i_data4[0])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_4 (
	.C(sys_clk),
	.CE((soc_a7ddrphy_dly_sel_storage[0] & soc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_a7ddrphy_dq_i_nodelay4),
	.INC(1'd1),
	.LD((soc_a7ddrphy_dly_sel_storage[0] & soc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_a7ddrphy_dq_i_delayed4)
);

IOBUF IOBUF_4(
	.I(soc_a7ddrphy_dq_o_nodelay4),
	.T(soc_a7ddrphy_dq_t4),
	.IO(ddram_dq[4]),
	.O(soc_a7ddrphy_dq_i_nodelay4)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_34 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_wrdata[5]),
	.D2(soc_a7ddrphy_dfi_p0_wrdata[21]),
	.D3(soc_a7ddrphy_dfi_p1_wrdata[5]),
	.D4(soc_a7ddrphy_dfi_p1_wrdata[21]),
	.D5(soc_a7ddrphy_dfi_p2_wrdata[5]),
	.D6(soc_a7ddrphy_dfi_p2_wrdata[21]),
	.D7(soc_a7ddrphy_dfi_p3_wrdata[5]),
	.D8(soc_a7ddrphy_dfi_p3_wrdata[21]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_a7ddrphy_dq_o_nodelay5),
	.TQ(soc_a7ddrphy_dq_t5)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_5 (
	.BITSLIP(1'd0),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_a7ddrphy_dq_i_delayed5),
	.RST(sys_rst),
	.Q1(soc_a7ddrphy_dq_i_data5[7]),
	.Q2(soc_a7ddrphy_dq_i_data5[6]),
	.Q3(soc_a7ddrphy_dq_i_data5[5]),
	.Q4(soc_a7ddrphy_dq_i_data5[4]),
	.Q5(soc_a7ddrphy_dq_i_data5[3]),
	.Q6(soc_a7ddrphy_dq_i_data5[2]),
	.Q7(soc_a7ddrphy_dq_i_data5[1]),
	.Q8(soc_a7ddrphy_dq_i_data5[0])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_5 (
	.C(sys_clk),
	.CE((soc_a7ddrphy_dly_sel_storage[0] & soc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_a7ddrphy_dq_i_nodelay5),
	.INC(1'd1),
	.LD((soc_a7ddrphy_dly_sel_storage[0] & soc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_a7ddrphy_dq_i_delayed5)
);

IOBUF IOBUF_5(
	.I(soc_a7ddrphy_dq_o_nodelay5),
	.T(soc_a7ddrphy_dq_t5),
	.IO(ddram_dq[5]),
	.O(soc_a7ddrphy_dq_i_nodelay5)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_35 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_wrdata[6]),
	.D2(soc_a7ddrphy_dfi_p0_wrdata[22]),
	.D3(soc_a7ddrphy_dfi_p1_wrdata[6]),
	.D4(soc_a7ddrphy_dfi_p1_wrdata[22]),
	.D5(soc_a7ddrphy_dfi_p2_wrdata[6]),
	.D6(soc_a7ddrphy_dfi_p2_wrdata[22]),
	.D7(soc_a7ddrphy_dfi_p3_wrdata[6]),
	.D8(soc_a7ddrphy_dfi_p3_wrdata[22]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_a7ddrphy_dq_o_nodelay6),
	.TQ(soc_a7ddrphy_dq_t6)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_6 (
	.BITSLIP(1'd0),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_a7ddrphy_dq_i_delayed6),
	.RST(sys_rst),
	.Q1(soc_a7ddrphy_dq_i_data6[7]),
	.Q2(soc_a7ddrphy_dq_i_data6[6]),
	.Q3(soc_a7ddrphy_dq_i_data6[5]),
	.Q4(soc_a7ddrphy_dq_i_data6[4]),
	.Q5(soc_a7ddrphy_dq_i_data6[3]),
	.Q6(soc_a7ddrphy_dq_i_data6[2]),
	.Q7(soc_a7ddrphy_dq_i_data6[1]),
	.Q8(soc_a7ddrphy_dq_i_data6[0])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_6 (
	.C(sys_clk),
	.CE((soc_a7ddrphy_dly_sel_storage[0] & soc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_a7ddrphy_dq_i_nodelay6),
	.INC(1'd1),
	.LD((soc_a7ddrphy_dly_sel_storage[0] & soc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_a7ddrphy_dq_i_delayed6)
);

IOBUF IOBUF_6(
	.I(soc_a7ddrphy_dq_o_nodelay6),
	.T(soc_a7ddrphy_dq_t6),
	.IO(ddram_dq[6]),
	.O(soc_a7ddrphy_dq_i_nodelay6)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_36 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_wrdata[7]),
	.D2(soc_a7ddrphy_dfi_p0_wrdata[23]),
	.D3(soc_a7ddrphy_dfi_p1_wrdata[7]),
	.D4(soc_a7ddrphy_dfi_p1_wrdata[23]),
	.D5(soc_a7ddrphy_dfi_p2_wrdata[7]),
	.D6(soc_a7ddrphy_dfi_p2_wrdata[23]),
	.D7(soc_a7ddrphy_dfi_p3_wrdata[7]),
	.D8(soc_a7ddrphy_dfi_p3_wrdata[23]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_a7ddrphy_dq_o_nodelay7),
	.TQ(soc_a7ddrphy_dq_t7)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_7 (
	.BITSLIP(1'd0),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_a7ddrphy_dq_i_delayed7),
	.RST(sys_rst),
	.Q1(soc_a7ddrphy_dq_i_data7[7]),
	.Q2(soc_a7ddrphy_dq_i_data7[6]),
	.Q3(soc_a7ddrphy_dq_i_data7[5]),
	.Q4(soc_a7ddrphy_dq_i_data7[4]),
	.Q5(soc_a7ddrphy_dq_i_data7[3]),
	.Q6(soc_a7ddrphy_dq_i_data7[2]),
	.Q7(soc_a7ddrphy_dq_i_data7[1]),
	.Q8(soc_a7ddrphy_dq_i_data7[0])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_7 (
	.C(sys_clk),
	.CE((soc_a7ddrphy_dly_sel_storage[0] & soc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_a7ddrphy_dq_i_nodelay7),
	.INC(1'd1),
	.LD((soc_a7ddrphy_dly_sel_storage[0] & soc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_a7ddrphy_dq_i_delayed7)
);

IOBUF IOBUF_7(
	.I(soc_a7ddrphy_dq_o_nodelay7),
	.T(soc_a7ddrphy_dq_t7),
	.IO(ddram_dq[7]),
	.O(soc_a7ddrphy_dq_i_nodelay7)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_37 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_wrdata[8]),
	.D2(soc_a7ddrphy_dfi_p0_wrdata[24]),
	.D3(soc_a7ddrphy_dfi_p1_wrdata[8]),
	.D4(soc_a7ddrphy_dfi_p1_wrdata[24]),
	.D5(soc_a7ddrphy_dfi_p2_wrdata[8]),
	.D6(soc_a7ddrphy_dfi_p2_wrdata[24]),
	.D7(soc_a7ddrphy_dfi_p3_wrdata[8]),
	.D8(soc_a7ddrphy_dfi_p3_wrdata[24]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_a7ddrphy_dq_o_nodelay8),
	.TQ(soc_a7ddrphy_dq_t8)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_8 (
	.BITSLIP(1'd0),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_a7ddrphy_dq_i_delayed8),
	.RST(sys_rst),
	.Q1(soc_a7ddrphy_dq_i_data8[7]),
	.Q2(soc_a7ddrphy_dq_i_data8[6]),
	.Q3(soc_a7ddrphy_dq_i_data8[5]),
	.Q4(soc_a7ddrphy_dq_i_data8[4]),
	.Q5(soc_a7ddrphy_dq_i_data8[3]),
	.Q6(soc_a7ddrphy_dq_i_data8[2]),
	.Q7(soc_a7ddrphy_dq_i_data8[1]),
	.Q8(soc_a7ddrphy_dq_i_data8[0])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_8 (
	.C(sys_clk),
	.CE((soc_a7ddrphy_dly_sel_storage[1] & soc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_a7ddrphy_dq_i_nodelay8),
	.INC(1'd1),
	.LD((soc_a7ddrphy_dly_sel_storage[1] & soc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_a7ddrphy_dq_i_delayed8)
);

IOBUF IOBUF_8(
	.I(soc_a7ddrphy_dq_o_nodelay8),
	.T(soc_a7ddrphy_dq_t8),
	.IO(ddram_dq[8]),
	.O(soc_a7ddrphy_dq_i_nodelay8)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_38 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_wrdata[9]),
	.D2(soc_a7ddrphy_dfi_p0_wrdata[25]),
	.D3(soc_a7ddrphy_dfi_p1_wrdata[9]),
	.D4(soc_a7ddrphy_dfi_p1_wrdata[25]),
	.D5(soc_a7ddrphy_dfi_p2_wrdata[9]),
	.D6(soc_a7ddrphy_dfi_p2_wrdata[25]),
	.D7(soc_a7ddrphy_dfi_p3_wrdata[9]),
	.D8(soc_a7ddrphy_dfi_p3_wrdata[25]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_a7ddrphy_dq_o_nodelay9),
	.TQ(soc_a7ddrphy_dq_t9)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_9 (
	.BITSLIP(1'd0),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_a7ddrphy_dq_i_delayed9),
	.RST(sys_rst),
	.Q1(soc_a7ddrphy_dq_i_data9[7]),
	.Q2(soc_a7ddrphy_dq_i_data9[6]),
	.Q3(soc_a7ddrphy_dq_i_data9[5]),
	.Q4(soc_a7ddrphy_dq_i_data9[4]),
	.Q5(soc_a7ddrphy_dq_i_data9[3]),
	.Q6(soc_a7ddrphy_dq_i_data9[2]),
	.Q7(soc_a7ddrphy_dq_i_data9[1]),
	.Q8(soc_a7ddrphy_dq_i_data9[0])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_9 (
	.C(sys_clk),
	.CE((soc_a7ddrphy_dly_sel_storage[1] & soc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_a7ddrphy_dq_i_nodelay9),
	.INC(1'd1),
	.LD((soc_a7ddrphy_dly_sel_storage[1] & soc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_a7ddrphy_dq_i_delayed9)
);

IOBUF IOBUF_9(
	.I(soc_a7ddrphy_dq_o_nodelay9),
	.T(soc_a7ddrphy_dq_t9),
	.IO(ddram_dq[9]),
	.O(soc_a7ddrphy_dq_i_nodelay9)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_39 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_wrdata[10]),
	.D2(soc_a7ddrphy_dfi_p0_wrdata[26]),
	.D3(soc_a7ddrphy_dfi_p1_wrdata[10]),
	.D4(soc_a7ddrphy_dfi_p1_wrdata[26]),
	.D5(soc_a7ddrphy_dfi_p2_wrdata[10]),
	.D6(soc_a7ddrphy_dfi_p2_wrdata[26]),
	.D7(soc_a7ddrphy_dfi_p3_wrdata[10]),
	.D8(soc_a7ddrphy_dfi_p3_wrdata[26]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_a7ddrphy_dq_o_nodelay10),
	.TQ(soc_a7ddrphy_dq_t10)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_10 (
	.BITSLIP(1'd0),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_a7ddrphy_dq_i_delayed10),
	.RST(sys_rst),
	.Q1(soc_a7ddrphy_dq_i_data10[7]),
	.Q2(soc_a7ddrphy_dq_i_data10[6]),
	.Q3(soc_a7ddrphy_dq_i_data10[5]),
	.Q4(soc_a7ddrphy_dq_i_data10[4]),
	.Q5(soc_a7ddrphy_dq_i_data10[3]),
	.Q6(soc_a7ddrphy_dq_i_data10[2]),
	.Q7(soc_a7ddrphy_dq_i_data10[1]),
	.Q8(soc_a7ddrphy_dq_i_data10[0])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_10 (
	.C(sys_clk),
	.CE((soc_a7ddrphy_dly_sel_storage[1] & soc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_a7ddrphy_dq_i_nodelay10),
	.INC(1'd1),
	.LD((soc_a7ddrphy_dly_sel_storage[1] & soc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_a7ddrphy_dq_i_delayed10)
);

IOBUF IOBUF_10(
	.I(soc_a7ddrphy_dq_o_nodelay10),
	.T(soc_a7ddrphy_dq_t10),
	.IO(ddram_dq[10]),
	.O(soc_a7ddrphy_dq_i_nodelay10)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_40 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_wrdata[11]),
	.D2(soc_a7ddrphy_dfi_p0_wrdata[27]),
	.D3(soc_a7ddrphy_dfi_p1_wrdata[11]),
	.D4(soc_a7ddrphy_dfi_p1_wrdata[27]),
	.D5(soc_a7ddrphy_dfi_p2_wrdata[11]),
	.D6(soc_a7ddrphy_dfi_p2_wrdata[27]),
	.D7(soc_a7ddrphy_dfi_p3_wrdata[11]),
	.D8(soc_a7ddrphy_dfi_p3_wrdata[27]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_a7ddrphy_dq_o_nodelay11),
	.TQ(soc_a7ddrphy_dq_t11)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_11 (
	.BITSLIP(1'd0),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_a7ddrphy_dq_i_delayed11),
	.RST(sys_rst),
	.Q1(soc_a7ddrphy_dq_i_data11[7]),
	.Q2(soc_a7ddrphy_dq_i_data11[6]),
	.Q3(soc_a7ddrphy_dq_i_data11[5]),
	.Q4(soc_a7ddrphy_dq_i_data11[4]),
	.Q5(soc_a7ddrphy_dq_i_data11[3]),
	.Q6(soc_a7ddrphy_dq_i_data11[2]),
	.Q7(soc_a7ddrphy_dq_i_data11[1]),
	.Q8(soc_a7ddrphy_dq_i_data11[0])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_11 (
	.C(sys_clk),
	.CE((soc_a7ddrphy_dly_sel_storage[1] & soc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_a7ddrphy_dq_i_nodelay11),
	.INC(1'd1),
	.LD((soc_a7ddrphy_dly_sel_storage[1] & soc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_a7ddrphy_dq_i_delayed11)
);

IOBUF IOBUF_11(
	.I(soc_a7ddrphy_dq_o_nodelay11),
	.T(soc_a7ddrphy_dq_t11),
	.IO(ddram_dq[11]),
	.O(soc_a7ddrphy_dq_i_nodelay11)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_41 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_wrdata[12]),
	.D2(soc_a7ddrphy_dfi_p0_wrdata[28]),
	.D3(soc_a7ddrphy_dfi_p1_wrdata[12]),
	.D4(soc_a7ddrphy_dfi_p1_wrdata[28]),
	.D5(soc_a7ddrphy_dfi_p2_wrdata[12]),
	.D6(soc_a7ddrphy_dfi_p2_wrdata[28]),
	.D7(soc_a7ddrphy_dfi_p3_wrdata[12]),
	.D8(soc_a7ddrphy_dfi_p3_wrdata[28]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_a7ddrphy_dq_o_nodelay12),
	.TQ(soc_a7ddrphy_dq_t12)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_12 (
	.BITSLIP(1'd0),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_a7ddrphy_dq_i_delayed12),
	.RST(sys_rst),
	.Q1(soc_a7ddrphy_dq_i_data12[7]),
	.Q2(soc_a7ddrphy_dq_i_data12[6]),
	.Q3(soc_a7ddrphy_dq_i_data12[5]),
	.Q4(soc_a7ddrphy_dq_i_data12[4]),
	.Q5(soc_a7ddrphy_dq_i_data12[3]),
	.Q6(soc_a7ddrphy_dq_i_data12[2]),
	.Q7(soc_a7ddrphy_dq_i_data12[1]),
	.Q8(soc_a7ddrphy_dq_i_data12[0])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_12 (
	.C(sys_clk),
	.CE((soc_a7ddrphy_dly_sel_storage[1] & soc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_a7ddrphy_dq_i_nodelay12),
	.INC(1'd1),
	.LD((soc_a7ddrphy_dly_sel_storage[1] & soc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_a7ddrphy_dq_i_delayed12)
);

IOBUF IOBUF_12(
	.I(soc_a7ddrphy_dq_o_nodelay12),
	.T(soc_a7ddrphy_dq_t12),
	.IO(ddram_dq[12]),
	.O(soc_a7ddrphy_dq_i_nodelay12)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_42 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_wrdata[13]),
	.D2(soc_a7ddrphy_dfi_p0_wrdata[29]),
	.D3(soc_a7ddrphy_dfi_p1_wrdata[13]),
	.D4(soc_a7ddrphy_dfi_p1_wrdata[29]),
	.D5(soc_a7ddrphy_dfi_p2_wrdata[13]),
	.D6(soc_a7ddrphy_dfi_p2_wrdata[29]),
	.D7(soc_a7ddrphy_dfi_p3_wrdata[13]),
	.D8(soc_a7ddrphy_dfi_p3_wrdata[29]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_a7ddrphy_dq_o_nodelay13),
	.TQ(soc_a7ddrphy_dq_t13)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_13 (
	.BITSLIP(1'd0),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_a7ddrphy_dq_i_delayed13),
	.RST(sys_rst),
	.Q1(soc_a7ddrphy_dq_i_data13[7]),
	.Q2(soc_a7ddrphy_dq_i_data13[6]),
	.Q3(soc_a7ddrphy_dq_i_data13[5]),
	.Q4(soc_a7ddrphy_dq_i_data13[4]),
	.Q5(soc_a7ddrphy_dq_i_data13[3]),
	.Q6(soc_a7ddrphy_dq_i_data13[2]),
	.Q7(soc_a7ddrphy_dq_i_data13[1]),
	.Q8(soc_a7ddrphy_dq_i_data13[0])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_13 (
	.C(sys_clk),
	.CE((soc_a7ddrphy_dly_sel_storage[1] & soc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_a7ddrphy_dq_i_nodelay13),
	.INC(1'd1),
	.LD((soc_a7ddrphy_dly_sel_storage[1] & soc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_a7ddrphy_dq_i_delayed13)
);

IOBUF IOBUF_13(
	.I(soc_a7ddrphy_dq_o_nodelay13),
	.T(soc_a7ddrphy_dq_t13),
	.IO(ddram_dq[13]),
	.O(soc_a7ddrphy_dq_i_nodelay13)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_43 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_wrdata[14]),
	.D2(soc_a7ddrphy_dfi_p0_wrdata[30]),
	.D3(soc_a7ddrphy_dfi_p1_wrdata[14]),
	.D4(soc_a7ddrphy_dfi_p1_wrdata[30]),
	.D5(soc_a7ddrphy_dfi_p2_wrdata[14]),
	.D6(soc_a7ddrphy_dfi_p2_wrdata[30]),
	.D7(soc_a7ddrphy_dfi_p3_wrdata[14]),
	.D8(soc_a7ddrphy_dfi_p3_wrdata[30]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_a7ddrphy_dq_o_nodelay14),
	.TQ(soc_a7ddrphy_dq_t14)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_14 (
	.BITSLIP(1'd0),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_a7ddrphy_dq_i_delayed14),
	.RST(sys_rst),
	.Q1(soc_a7ddrphy_dq_i_data14[7]),
	.Q2(soc_a7ddrphy_dq_i_data14[6]),
	.Q3(soc_a7ddrphy_dq_i_data14[5]),
	.Q4(soc_a7ddrphy_dq_i_data14[4]),
	.Q5(soc_a7ddrphy_dq_i_data14[3]),
	.Q6(soc_a7ddrphy_dq_i_data14[2]),
	.Q7(soc_a7ddrphy_dq_i_data14[1]),
	.Q8(soc_a7ddrphy_dq_i_data14[0])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_14 (
	.C(sys_clk),
	.CE((soc_a7ddrphy_dly_sel_storage[1] & soc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_a7ddrphy_dq_i_nodelay14),
	.INC(1'd1),
	.LD((soc_a7ddrphy_dly_sel_storage[1] & soc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_a7ddrphy_dq_i_delayed14)
);

IOBUF IOBUF_14(
	.I(soc_a7ddrphy_dq_o_nodelay14),
	.T(soc_a7ddrphy_dq_t14),
	.IO(ddram_dq[14]),
	.O(soc_a7ddrphy_dq_i_nodelay14)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_44 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_a7ddrphy_dfi_p0_wrdata[15]),
	.D2(soc_a7ddrphy_dfi_p0_wrdata[31]),
	.D3(soc_a7ddrphy_dfi_p1_wrdata[15]),
	.D4(soc_a7ddrphy_dfi_p1_wrdata[31]),
	.D5(soc_a7ddrphy_dfi_p2_wrdata[15]),
	.D6(soc_a7ddrphy_dfi_p2_wrdata[31]),
	.D7(soc_a7ddrphy_dfi_p3_wrdata[15]),
	.D8(soc_a7ddrphy_dfi_p3_wrdata[31]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_a7ddrphy_dq_o_nodelay15),
	.TQ(soc_a7ddrphy_dq_t15)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_15 (
	.BITSLIP(1'd0),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_a7ddrphy_dq_i_delayed15),
	.RST(sys_rst),
	.Q1(soc_a7ddrphy_dq_i_data15[7]),
	.Q2(soc_a7ddrphy_dq_i_data15[6]),
	.Q3(soc_a7ddrphy_dq_i_data15[5]),
	.Q4(soc_a7ddrphy_dq_i_data15[4]),
	.Q5(soc_a7ddrphy_dq_i_data15[3]),
	.Q6(soc_a7ddrphy_dq_i_data15[2]),
	.Q7(soc_a7ddrphy_dq_i_data15[1]),
	.Q8(soc_a7ddrphy_dq_i_data15[0])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_15 (
	.C(sys_clk),
	.CE((soc_a7ddrphy_dly_sel_storage[1] & soc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_a7ddrphy_dq_i_nodelay15),
	.INC(1'd1),
	.LD((soc_a7ddrphy_dly_sel_storage[1] & soc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_a7ddrphy_dq_i_delayed15)
);

IOBUF IOBUF_15(
	.I(soc_a7ddrphy_dq_o_nodelay15),
	.T(soc_a7ddrphy_dq_t15),
	.IO(ddram_dq[15]),
	.O(soc_a7ddrphy_dq_i_nodelay15)
);

reg [23:0] storage_2[0:7];
reg [23:0] memdat_4;
always @(posedge sys_clk) begin
	if (soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_we)
		storage_2[soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr] <= soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_w;
	memdat_4 <= storage_2[soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_r = memdat_4;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_dat_r = storage_2[soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_3[0:7];
reg [23:0] memdat_5;
always @(posedge sys_clk) begin
	if (soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_we)
		storage_3[soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr] <= soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_w;
	memdat_5 <= storage_3[soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_r = memdat_5;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_dat_r = storage_3[soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_4[0:7];
reg [23:0] memdat_6;
always @(posedge sys_clk) begin
	if (soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_we)
		storage_4[soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr] <= soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_w;
	memdat_6 <= storage_4[soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_r = memdat_6;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_dat_r = storage_4[soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_5[0:7];
reg [23:0] memdat_7;
always @(posedge sys_clk) begin
	if (soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_we)
		storage_5[soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr] <= soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_w;
	memdat_7 <= storage_5[soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_r = memdat_7;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_dat_r = storage_5[soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_6[0:7];
reg [23:0] memdat_8;
always @(posedge sys_clk) begin
	if (soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_we)
		storage_6[soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr] <= soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_dat_w;
	memdat_8 <= storage_6[soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_dat_r = memdat_8;
assign soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_rdport_dat_r = storage_6[soc_basesoc_sdram_bankmachine4_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_7[0:7];
reg [23:0] memdat_9;
always @(posedge sys_clk) begin
	if (soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_we)
		storage_7[soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr] <= soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_dat_w;
	memdat_9 <= storage_7[soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_dat_r = memdat_9;
assign soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_rdport_dat_r = storage_7[soc_basesoc_sdram_bankmachine5_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_8[0:7];
reg [23:0] memdat_10;
always @(posedge sys_clk) begin
	if (soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_we)
		storage_8[soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr] <= soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_dat_w;
	memdat_10 <= storage_8[soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_dat_r = memdat_10;
assign soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_rdport_dat_r = storage_8[soc_basesoc_sdram_bankmachine6_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_9[0:7];
reg [23:0] memdat_11;
always @(posedge sys_clk) begin
	if (soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_we)
		storage_9[soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr] <= soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_dat_w;
	memdat_11 <= storage_9[soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_dat_r = memdat_11;
assign soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_rdport_dat_r = storage_9[soc_basesoc_sdram_bankmachine7_cmd_buffer_lookahead_rdport_adr];

reg [23:0] tag_mem[0:511];
reg [8:0] memadr_3;
always @(posedge sys_clk) begin
	if (soc_basesoc_tag_port_we)
		tag_mem[soc_basesoc_tag_port_adr] <= soc_basesoc_tag_port_dat_w;
	memadr_3 <= soc_basesoc_tag_port_adr;
end

assign soc_basesoc_tag_port_dat_r = tag_mem[memadr_3];

reg [7:0] data_mem_grain0[0:511];
reg [8:0] memadr_4;
always @(posedge sys_clk) begin
	if (soc_basesoc_data_port_we[0])
		data_mem_grain0[soc_basesoc_data_port_adr] <= soc_basesoc_data_port_dat_w[7:0];
	memadr_4 <= soc_basesoc_data_port_adr;
end

assign soc_basesoc_data_port_dat_r[7:0] = data_mem_grain0[memadr_4];

reg [7:0] data_mem_grain1[0:511];
reg [8:0] memadr_5;
always @(posedge sys_clk) begin
	if (soc_basesoc_data_port_we[1])
		data_mem_grain1[soc_basesoc_data_port_adr] <= soc_basesoc_data_port_dat_w[15:8];
	memadr_5 <= soc_basesoc_data_port_adr;
end

assign soc_basesoc_data_port_dat_r[15:8] = data_mem_grain1[memadr_5];

reg [7:0] data_mem_grain2[0:511];
reg [8:0] memadr_6;
always @(posedge sys_clk) begin
	if (soc_basesoc_data_port_we[2])
		data_mem_grain2[soc_basesoc_data_port_adr] <= soc_basesoc_data_port_dat_w[23:16];
	memadr_6 <= soc_basesoc_data_port_adr;
end

assign soc_basesoc_data_port_dat_r[23:16] = data_mem_grain2[memadr_6];

reg [7:0] data_mem_grain3[0:511];
reg [8:0] memadr_7;
always @(posedge sys_clk) begin
	if (soc_basesoc_data_port_we[3])
		data_mem_grain3[soc_basesoc_data_port_adr] <= soc_basesoc_data_port_dat_w[31:24];
	memadr_7 <= soc_basesoc_data_port_adr;
end

assign soc_basesoc_data_port_dat_r[31:24] = data_mem_grain3[memadr_7];

reg [7:0] data_mem_grain4[0:511];
reg [8:0] memadr_8;
always @(posedge sys_clk) begin
	if (soc_basesoc_data_port_we[4])
		data_mem_grain4[soc_basesoc_data_port_adr] <= soc_basesoc_data_port_dat_w[39:32];
	memadr_8 <= soc_basesoc_data_port_adr;
end

assign soc_basesoc_data_port_dat_r[39:32] = data_mem_grain4[memadr_8];

reg [7:0] data_mem_grain5[0:511];
reg [8:0] memadr_9;
always @(posedge sys_clk) begin
	if (soc_basesoc_data_port_we[5])
		data_mem_grain5[soc_basesoc_data_port_adr] <= soc_basesoc_data_port_dat_w[47:40];
	memadr_9 <= soc_basesoc_data_port_adr;
end

assign soc_basesoc_data_port_dat_r[47:40] = data_mem_grain5[memadr_9];

reg [7:0] data_mem_grain6[0:511];
reg [8:0] memadr_10;
always @(posedge sys_clk) begin
	if (soc_basesoc_data_port_we[6])
		data_mem_grain6[soc_basesoc_data_port_adr] <= soc_basesoc_data_port_dat_w[55:48];
	memadr_10 <= soc_basesoc_data_port_adr;
end

assign soc_basesoc_data_port_dat_r[55:48] = data_mem_grain6[memadr_10];

reg [7:0] data_mem_grain7[0:511];
reg [8:0] memadr_11;
always @(posedge sys_clk) begin
	if (soc_basesoc_data_port_we[7])
		data_mem_grain7[soc_basesoc_data_port_adr] <= soc_basesoc_data_port_dat_w[63:56];
	memadr_11 <= soc_basesoc_data_port_adr;
end

assign soc_basesoc_data_port_dat_r[63:56] = data_mem_grain7[memadr_11];

reg [7:0] data_mem_grain8[0:511];
reg [8:0] memadr_12;
always @(posedge sys_clk) begin
	if (soc_basesoc_data_port_we[8])
		data_mem_grain8[soc_basesoc_data_port_adr] <= soc_basesoc_data_port_dat_w[71:64];
	memadr_12 <= soc_basesoc_data_port_adr;
end

assign soc_basesoc_data_port_dat_r[71:64] = data_mem_grain8[memadr_12];

reg [7:0] data_mem_grain9[0:511];
reg [8:0] memadr_13;
always @(posedge sys_clk) begin
	if (soc_basesoc_data_port_we[9])
		data_mem_grain9[soc_basesoc_data_port_adr] <= soc_basesoc_data_port_dat_w[79:72];
	memadr_13 <= soc_basesoc_data_port_adr;
end

assign soc_basesoc_data_port_dat_r[79:72] = data_mem_grain9[memadr_13];

reg [7:0] data_mem_grain10[0:511];
reg [8:0] memadr_14;
always @(posedge sys_clk) begin
	if (soc_basesoc_data_port_we[10])
		data_mem_grain10[soc_basesoc_data_port_adr] <= soc_basesoc_data_port_dat_w[87:80];
	memadr_14 <= soc_basesoc_data_port_adr;
end

assign soc_basesoc_data_port_dat_r[87:80] = data_mem_grain10[memadr_14];

reg [7:0] data_mem_grain11[0:511];
reg [8:0] memadr_15;
always @(posedge sys_clk) begin
	if (soc_basesoc_data_port_we[11])
		data_mem_grain11[soc_basesoc_data_port_adr] <= soc_basesoc_data_port_dat_w[95:88];
	memadr_15 <= soc_basesoc_data_port_adr;
end

assign soc_basesoc_data_port_dat_r[95:88] = data_mem_grain11[memadr_15];

reg [7:0] data_mem_grain12[0:511];
reg [8:0] memadr_16;
always @(posedge sys_clk) begin
	if (soc_basesoc_data_port_we[12])
		data_mem_grain12[soc_basesoc_data_port_adr] <= soc_basesoc_data_port_dat_w[103:96];
	memadr_16 <= soc_basesoc_data_port_adr;
end

assign soc_basesoc_data_port_dat_r[103:96] = data_mem_grain12[memadr_16];

reg [7:0] data_mem_grain13[0:511];
reg [8:0] memadr_17;
always @(posedge sys_clk) begin
	if (soc_basesoc_data_port_we[13])
		data_mem_grain13[soc_basesoc_data_port_adr] <= soc_basesoc_data_port_dat_w[111:104];
	memadr_17 <= soc_basesoc_data_port_adr;
end

assign soc_basesoc_data_port_dat_r[111:104] = data_mem_grain13[memadr_17];

reg [7:0] data_mem_grain14[0:511];
reg [8:0] memadr_18;
always @(posedge sys_clk) begin
	if (soc_basesoc_data_port_we[14])
		data_mem_grain14[soc_basesoc_data_port_adr] <= soc_basesoc_data_port_dat_w[119:112];
	memadr_18 <= soc_basesoc_data_port_adr;
end

assign soc_basesoc_data_port_dat_r[119:112] = data_mem_grain14[memadr_18];

reg [7:0] data_mem_grain15[0:511];
reg [8:0] memadr_19;
always @(posedge sys_clk) begin
	if (soc_basesoc_data_port_we[15])
		data_mem_grain15[soc_basesoc_data_port_adr] <= soc_basesoc_data_port_dat_w[127:120];
	memadr_19 <= soc_basesoc_data_port_adr;
end

assign soc_basesoc_data_port_dat_r[127:120] = data_mem_grain15[memadr_19];

(* ars_ff1 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE (
	.C(sys_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(vns_xilinxasyncresetsynchronizerimpl0),
	.Q(vns_xilinxasyncresetsynchronizerimpl0_rst_meta)
);

(* ars_ff2 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_1 (
	.C(sys_clk),
	.CE(1'd1),
	.D(vns_xilinxasyncresetsynchronizerimpl0_rst_meta),
	.PRE(vns_xilinxasyncresetsynchronizerimpl0),
	.Q(sys_rst)
);

(* ars_ff1 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_2 (
	.C(clk200_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(vns_xilinxasyncresetsynchronizerimpl1),
	.Q(vns_xilinxasyncresetsynchronizerimpl1_rst_meta)
);

(* ars_ff2 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_3 (
	.C(clk200_clk),
	.CE(1'd1),
	.D(vns_xilinxasyncresetsynchronizerimpl1_rst_meta),
	.PRE(vns_xilinxasyncresetsynchronizerimpl1),
	.Q(clk200_rst)
);

(* ars_ff1 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_4 (
	.C(clk100_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(vns_xilinxasyncresetsynchronizerimpl2),
	.Q(vns_xilinxasyncresetsynchronizerimpl2_rst_meta)
);

(* ars_ff2 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_5 (
	.C(clk100_clk),
	.CE(1'd1),
	.D(vns_xilinxasyncresetsynchronizerimpl2_rst_meta),
	.PRE(vns_xilinxasyncresetsynchronizerimpl2),
	.Q(clk100_rst)
);

(* ars_ff1 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_6 (
	.C(clk50_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(vns_xilinxasyncresetsynchronizerimpl3),
	.Q(vns_xilinxasyncresetsynchronizerimpl3_rst_meta)
);

(* ars_ff2 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_7 (
	.C(clk50_clk),
	.CE(1'd1),
	.D(vns_xilinxasyncresetsynchronizerimpl3_rst_meta),
	.PRE(vns_xilinxasyncresetsynchronizerimpl3),
	.Q(clk50_rst)
);

endmodule
