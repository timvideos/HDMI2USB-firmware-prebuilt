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
	output ddram_reset_n,
	input eth_clocks_tx,
	input eth_clocks_rx,
	output eth_rst_n,
	inout eth_mdio,
	output eth_mdc,
	input eth_rx_dv,
	input eth_rx_er,
	input [3:0] eth_rx_data,
	output reg eth_tx_en,
	output reg [3:0] eth_tx_data,
	input eth_col,
	input eth_crs
);

wire netsoc_netsoc_ctrl_reset_reset_re;
wire netsoc_netsoc_ctrl_reset_reset_r;
reg netsoc_netsoc_ctrl_reset_reset_w = 1'd0;
reg [31:0] netsoc_netsoc_ctrl_storage_full = 32'd305419896;
wire [31:0] netsoc_netsoc_ctrl_storage;
reg netsoc_netsoc_ctrl_re = 1'd0;
wire [31:0] netsoc_netsoc_ctrl_bus_errors_status;
wire netsoc_netsoc_ctrl_reset;
wire netsoc_netsoc_ctrl_bus_error;
reg [31:0] netsoc_netsoc_ctrl_bus_errors = 32'd0;
wire netsoc_netsoc_mor1kx_reset;
wire [29:0] netsoc_netsoc_mor1kx_ibus_adr;
wire [31:0] netsoc_netsoc_mor1kx_ibus_dat_w;
wire [31:0] netsoc_netsoc_mor1kx_ibus_dat_r;
wire [3:0] netsoc_netsoc_mor1kx_ibus_sel;
wire netsoc_netsoc_mor1kx_ibus_cyc;
wire netsoc_netsoc_mor1kx_ibus_stb;
wire netsoc_netsoc_mor1kx_ibus_ack;
wire netsoc_netsoc_mor1kx_ibus_we;
wire [2:0] netsoc_netsoc_mor1kx_ibus_cti;
wire [1:0] netsoc_netsoc_mor1kx_ibus_bte;
wire netsoc_netsoc_mor1kx_ibus_err;
wire [29:0] netsoc_netsoc_mor1kx_dbus_adr;
wire [31:0] netsoc_netsoc_mor1kx_dbus_dat_w;
wire [31:0] netsoc_netsoc_mor1kx_dbus_dat_r;
wire [3:0] netsoc_netsoc_mor1kx_dbus_sel;
wire netsoc_netsoc_mor1kx_dbus_cyc;
wire netsoc_netsoc_mor1kx_dbus_stb;
wire netsoc_netsoc_mor1kx_dbus_ack;
wire netsoc_netsoc_mor1kx_dbus_we;
wire [2:0] netsoc_netsoc_mor1kx_dbus_cti;
wire [1:0] netsoc_netsoc_mor1kx_dbus_bte;
wire netsoc_netsoc_mor1kx_dbus_err;
reg [31:0] netsoc_netsoc_mor1kx_interrupt = 32'd0;
wire [31:0] netsoc_netsoc_mor1kx_i_adr_o;
wire [31:0] netsoc_netsoc_mor1kx_d_adr_o;
wire [29:0] netsoc_netsoc_rom_bus_adr;
wire [31:0] netsoc_netsoc_rom_bus_dat_w;
wire [31:0] netsoc_netsoc_rom_bus_dat_r;
wire [3:0] netsoc_netsoc_rom_bus_sel;
wire netsoc_netsoc_rom_bus_cyc;
wire netsoc_netsoc_rom_bus_stb;
reg netsoc_netsoc_rom_bus_ack = 1'd0;
wire netsoc_netsoc_rom_bus_we;
wire [2:0] netsoc_netsoc_rom_bus_cti;
wire [1:0] netsoc_netsoc_rom_bus_bte;
reg netsoc_netsoc_rom_bus_err = 1'd0;
wire [13:0] netsoc_netsoc_rom_adr;
wire [31:0] netsoc_netsoc_rom_dat_r;
wire [29:0] netsoc_netsoc_sram_bus_adr;
wire [31:0] netsoc_netsoc_sram_bus_dat_w;
wire [31:0] netsoc_netsoc_sram_bus_dat_r;
wire [3:0] netsoc_netsoc_sram_bus_sel;
wire netsoc_netsoc_sram_bus_cyc;
wire netsoc_netsoc_sram_bus_stb;
reg netsoc_netsoc_sram_bus_ack = 1'd0;
wire netsoc_netsoc_sram_bus_we;
wire [2:0] netsoc_netsoc_sram_bus_cti;
wire [1:0] netsoc_netsoc_sram_bus_bte;
reg netsoc_netsoc_sram_bus_err = 1'd0;
wire [12:0] netsoc_netsoc_sram_adr;
wire [31:0] netsoc_netsoc_sram_dat_r;
reg [3:0] netsoc_netsoc_sram_we = 4'd0;
wire [31:0] netsoc_netsoc_sram_dat_w;
reg [13:0] netsoc_netsoc_interface_adr = 14'd0;
reg netsoc_netsoc_interface_we = 1'd0;
reg [7:0] netsoc_netsoc_interface_dat_w = 8'd0;
wire [7:0] netsoc_netsoc_interface_dat_r;
wire [29:0] netsoc_netsoc_bus_wishbone_adr;
wire [31:0] netsoc_netsoc_bus_wishbone_dat_w;
reg [31:0] netsoc_netsoc_bus_wishbone_dat_r = 32'd0;
wire [3:0] netsoc_netsoc_bus_wishbone_sel;
wire netsoc_netsoc_bus_wishbone_cyc;
wire netsoc_netsoc_bus_wishbone_stb;
reg netsoc_netsoc_bus_wishbone_ack = 1'd0;
wire netsoc_netsoc_bus_wishbone_we;
wire [2:0] netsoc_netsoc_bus_wishbone_cti;
wire [1:0] netsoc_netsoc_bus_wishbone_bte;
reg netsoc_netsoc_bus_wishbone_err = 1'd0;
reg [1:0] netsoc_netsoc_counter = 2'd0;
reg [31:0] netsoc_netsoc_uart_phy_storage_full = 32'd4947802;
wire [31:0] netsoc_netsoc_uart_phy_storage;
reg netsoc_netsoc_uart_phy_re = 1'd0;
wire netsoc_netsoc_uart_phy_sink_valid;
reg netsoc_netsoc_uart_phy_sink_ready = 1'd0;
wire netsoc_netsoc_uart_phy_sink_first;
wire netsoc_netsoc_uart_phy_sink_last;
wire [7:0] netsoc_netsoc_uart_phy_sink_payload_data;
reg netsoc_netsoc_uart_phy_uart_clk_txen = 1'd0;
reg [31:0] netsoc_netsoc_uart_phy_phase_accumulator_tx = 32'd0;
reg [7:0] netsoc_netsoc_uart_phy_tx_reg = 8'd0;
reg [3:0] netsoc_netsoc_uart_phy_tx_bitcount = 4'd0;
reg netsoc_netsoc_uart_phy_tx_busy = 1'd0;
reg netsoc_netsoc_uart_phy_source_valid = 1'd0;
wire netsoc_netsoc_uart_phy_source_ready;
reg netsoc_netsoc_uart_phy_source_first = 1'd0;
reg netsoc_netsoc_uart_phy_source_last = 1'd0;
reg [7:0] netsoc_netsoc_uart_phy_source_payload_data = 8'd0;
reg netsoc_netsoc_uart_phy_uart_clk_rxen = 1'd0;
reg [31:0] netsoc_netsoc_uart_phy_phase_accumulator_rx = 32'd0;
wire netsoc_netsoc_uart_phy_rx;
reg netsoc_netsoc_uart_phy_rx_r = 1'd0;
reg [7:0] netsoc_netsoc_uart_phy_rx_reg = 8'd0;
reg [3:0] netsoc_netsoc_uart_phy_rx_bitcount = 4'd0;
reg netsoc_netsoc_uart_phy_rx_busy = 1'd0;
wire netsoc_netsoc_uart_rxtx_re;
wire [7:0] netsoc_netsoc_uart_rxtx_r;
wire [7:0] netsoc_netsoc_uart_rxtx_w;
wire netsoc_netsoc_uart_txfull_status;
wire netsoc_netsoc_uart_rxempty_status;
wire netsoc_netsoc_uart_irq;
wire netsoc_netsoc_uart_tx_status;
reg netsoc_netsoc_uart_tx_pending = 1'd0;
wire netsoc_netsoc_uart_tx_trigger;
reg netsoc_netsoc_uart_tx_clear = 1'd0;
reg netsoc_netsoc_uart_tx_old_trigger = 1'd0;
wire netsoc_netsoc_uart_rx_status;
reg netsoc_netsoc_uart_rx_pending = 1'd0;
wire netsoc_netsoc_uart_rx_trigger;
reg netsoc_netsoc_uart_rx_clear = 1'd0;
reg netsoc_netsoc_uart_rx_old_trigger = 1'd0;
wire netsoc_netsoc_uart_status_re;
wire [1:0] netsoc_netsoc_uart_status_r;
reg [1:0] netsoc_netsoc_uart_status_w = 2'd0;
wire netsoc_netsoc_uart_pending_re;
wire [1:0] netsoc_netsoc_uart_pending_r;
reg [1:0] netsoc_netsoc_uart_pending_w = 2'd0;
reg [1:0] netsoc_netsoc_uart_storage_full = 2'd0;
wire [1:0] netsoc_netsoc_uart_storage;
reg netsoc_netsoc_uart_re = 1'd0;
wire netsoc_netsoc_uart_tx_fifo_sink_valid;
wire netsoc_netsoc_uart_tx_fifo_sink_ready;
reg netsoc_netsoc_uart_tx_fifo_sink_first = 1'd0;
reg netsoc_netsoc_uart_tx_fifo_sink_last = 1'd0;
wire [7:0] netsoc_netsoc_uart_tx_fifo_sink_payload_data;
wire netsoc_netsoc_uart_tx_fifo_source_valid;
wire netsoc_netsoc_uart_tx_fifo_source_ready;
wire netsoc_netsoc_uart_tx_fifo_source_first;
wire netsoc_netsoc_uart_tx_fifo_source_last;
wire [7:0] netsoc_netsoc_uart_tx_fifo_source_payload_data;
wire netsoc_netsoc_uart_tx_fifo_syncfifo_we;
wire netsoc_netsoc_uart_tx_fifo_syncfifo_writable;
wire netsoc_netsoc_uart_tx_fifo_syncfifo_re;
wire netsoc_netsoc_uart_tx_fifo_syncfifo_readable;
wire [9:0] netsoc_netsoc_uart_tx_fifo_syncfifo_din;
wire [9:0] netsoc_netsoc_uart_tx_fifo_syncfifo_dout;
reg [4:0] netsoc_netsoc_uart_tx_fifo_level = 5'd0;
reg netsoc_netsoc_uart_tx_fifo_replace = 1'd0;
reg [3:0] netsoc_netsoc_uart_tx_fifo_produce = 4'd0;
reg [3:0] netsoc_netsoc_uart_tx_fifo_consume = 4'd0;
reg [3:0] netsoc_netsoc_uart_tx_fifo_wrport_adr = 4'd0;
wire [9:0] netsoc_netsoc_uart_tx_fifo_wrport_dat_r;
wire netsoc_netsoc_uart_tx_fifo_wrport_we;
wire [9:0] netsoc_netsoc_uart_tx_fifo_wrport_dat_w;
wire netsoc_netsoc_uart_tx_fifo_do_read;
wire [3:0] netsoc_netsoc_uart_tx_fifo_rdport_adr;
wire [9:0] netsoc_netsoc_uart_tx_fifo_rdport_dat_r;
wire [7:0] netsoc_netsoc_uart_tx_fifo_fifo_in_payload_data;
wire netsoc_netsoc_uart_tx_fifo_fifo_in_first;
wire netsoc_netsoc_uart_tx_fifo_fifo_in_last;
wire [7:0] netsoc_netsoc_uart_tx_fifo_fifo_out_payload_data;
wire netsoc_netsoc_uart_tx_fifo_fifo_out_first;
wire netsoc_netsoc_uart_tx_fifo_fifo_out_last;
wire netsoc_netsoc_uart_rx_fifo_sink_valid;
wire netsoc_netsoc_uart_rx_fifo_sink_ready;
wire netsoc_netsoc_uart_rx_fifo_sink_first;
wire netsoc_netsoc_uart_rx_fifo_sink_last;
wire [7:0] netsoc_netsoc_uart_rx_fifo_sink_payload_data;
wire netsoc_netsoc_uart_rx_fifo_source_valid;
wire netsoc_netsoc_uart_rx_fifo_source_ready;
wire netsoc_netsoc_uart_rx_fifo_source_first;
wire netsoc_netsoc_uart_rx_fifo_source_last;
wire [7:0] netsoc_netsoc_uart_rx_fifo_source_payload_data;
wire netsoc_netsoc_uart_rx_fifo_syncfifo_we;
wire netsoc_netsoc_uart_rx_fifo_syncfifo_writable;
wire netsoc_netsoc_uart_rx_fifo_syncfifo_re;
wire netsoc_netsoc_uart_rx_fifo_syncfifo_readable;
wire [9:0] netsoc_netsoc_uart_rx_fifo_syncfifo_din;
wire [9:0] netsoc_netsoc_uart_rx_fifo_syncfifo_dout;
reg [4:0] netsoc_netsoc_uart_rx_fifo_level = 5'd0;
reg netsoc_netsoc_uart_rx_fifo_replace = 1'd0;
reg [3:0] netsoc_netsoc_uart_rx_fifo_produce = 4'd0;
reg [3:0] netsoc_netsoc_uart_rx_fifo_consume = 4'd0;
reg [3:0] netsoc_netsoc_uart_rx_fifo_wrport_adr = 4'd0;
wire [9:0] netsoc_netsoc_uart_rx_fifo_wrport_dat_r;
wire netsoc_netsoc_uart_rx_fifo_wrport_we;
wire [9:0] netsoc_netsoc_uart_rx_fifo_wrport_dat_w;
wire netsoc_netsoc_uart_rx_fifo_do_read;
wire [3:0] netsoc_netsoc_uart_rx_fifo_rdport_adr;
wire [9:0] netsoc_netsoc_uart_rx_fifo_rdport_dat_r;
wire [7:0] netsoc_netsoc_uart_rx_fifo_fifo_in_payload_data;
wire netsoc_netsoc_uart_rx_fifo_fifo_in_first;
wire netsoc_netsoc_uart_rx_fifo_fifo_in_last;
wire [7:0] netsoc_netsoc_uart_rx_fifo_fifo_out_payload_data;
wire netsoc_netsoc_uart_rx_fifo_fifo_out_first;
wire netsoc_netsoc_uart_rx_fifo_fifo_out_last;
reg netsoc_netsoc_uart_reset = 1'd0;
reg [31:0] netsoc_netsoc_timer0_load_storage_full = 32'd0;
wire [31:0] netsoc_netsoc_timer0_load_storage;
reg netsoc_netsoc_timer0_load_re = 1'd0;
reg [31:0] netsoc_netsoc_timer0_reload_storage_full = 32'd0;
wire [31:0] netsoc_netsoc_timer0_reload_storage;
reg netsoc_netsoc_timer0_reload_re = 1'd0;
reg netsoc_netsoc_timer0_en_storage_full = 1'd0;
wire netsoc_netsoc_timer0_en_storage;
reg netsoc_netsoc_timer0_en_re = 1'd0;
wire netsoc_netsoc_timer0_update_value_re;
wire netsoc_netsoc_timer0_update_value_r;
reg netsoc_netsoc_timer0_update_value_w = 1'd0;
reg [31:0] netsoc_netsoc_timer0_value_status = 32'd0;
wire netsoc_netsoc_timer0_irq;
wire netsoc_netsoc_timer0_zero_status;
reg netsoc_netsoc_timer0_zero_pending = 1'd0;
wire netsoc_netsoc_timer0_zero_trigger;
reg netsoc_netsoc_timer0_zero_clear = 1'd0;
reg netsoc_netsoc_timer0_zero_old_trigger = 1'd0;
wire netsoc_netsoc_timer0_eventmanager_status_re;
wire netsoc_netsoc_timer0_eventmanager_status_r;
wire netsoc_netsoc_timer0_eventmanager_status_w;
wire netsoc_netsoc_timer0_eventmanager_pending_re;
wire netsoc_netsoc_timer0_eventmanager_pending_r;
wire netsoc_netsoc_timer0_eventmanager_pending_w;
reg netsoc_netsoc_timer0_eventmanager_storage_full = 1'd0;
wire netsoc_netsoc_timer0_eventmanager_storage;
reg netsoc_netsoc_timer0_eventmanager_re = 1'd0;
reg [31:0] netsoc_netsoc_timer0_value = 32'd0;
wire [29:0] netsoc_interface0_wb_sdram_adr;
wire [31:0] netsoc_interface0_wb_sdram_dat_w;
reg [31:0] netsoc_interface0_wb_sdram_dat_r = 32'd0;
wire [3:0] netsoc_interface0_wb_sdram_sel;
wire netsoc_interface0_wb_sdram_cyc;
wire netsoc_interface0_wb_sdram_stb;
reg netsoc_interface0_wb_sdram_ack = 1'd0;
wire netsoc_interface0_wb_sdram_we;
wire [2:0] netsoc_interface0_wb_sdram_cti;
wire [1:0] netsoc_interface0_wb_sdram_bte;
reg netsoc_interface0_wb_sdram_err = 1'd0;
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
wire netsoc_pll_locked;
wire netsoc_pll_fb;
wire netsoc_pll_sys;
wire netsoc_pll_sys4x;
wire netsoc_pll_sys4x_dqs;
wire netsoc_pll_clk200;
wire netsoc_pll_clk100;
wire netsoc_pll_clk50;
reg [3:0] netsoc_reset_counter = 4'd15;
reg netsoc_ic_reset = 1'd1;
wire netsoc_eth_clk;
reg [56:0] netsoc_dna_status = 57'd0;
wire netsoc_dna_do;
reg [6:0] netsoc_dna_cnt = 7'd0;
wire [159:0] netsoc_git_status;
wire [63:0] netsoc_platform_status;
wire [63:0] netsoc_target_status;
reg [11:0] netsoc_temperature_status = 12'd0;
reg [11:0] netsoc_vccint_status = 12'd0;
reg [11:0] netsoc_vccaux_status = 12'd0;
reg [11:0] netsoc_vccbram_status = 12'd0;
wire [7:0] netsoc_alarm;
wire netsoc_ot;
wire netsoc_busy;
wire [6:0] netsoc_channel;
wire netsoc_eoc;
wire netsoc_eos;
wire [15:0] netsoc_data;
wire netsoc_drdy;
wire [3:0] netsoc_leds;
reg [3:0] netsoc_leds_storage_full = 4'd0;
wire [3:0] netsoc_leds_storage;
reg netsoc_leds_re = 1'd0;
reg [3:0] netsoc_switches = 4'd0;
wire [3:0] netsoc_switches_status;
wire netsoc_irq;
wire netsoc_eventsourceprocess0_status;
reg netsoc_eventsourceprocess0_pending = 1'd0;
wire netsoc_eventsourceprocess0_trigger;
reg netsoc_eventsourceprocess0_clear = 1'd0;
reg netsoc_eventsourceprocess0_old_trigger = 1'd0;
wire netsoc_waittimer0_wait;
wire netsoc_waittimer0_done;
reg [19:0] netsoc_waittimer0_count = 20'd1000000;
wire netsoc_eventsourceprocess1_status;
reg netsoc_eventsourceprocess1_pending = 1'd0;
wire netsoc_eventsourceprocess1_trigger;
reg netsoc_eventsourceprocess1_clear = 1'd0;
reg netsoc_eventsourceprocess1_old_trigger = 1'd0;
wire netsoc_waittimer1_wait;
wire netsoc_waittimer1_done;
reg [19:0] netsoc_waittimer1_count = 20'd1000000;
wire netsoc_eventsourceprocess2_status;
reg netsoc_eventsourceprocess2_pending = 1'd0;
wire netsoc_eventsourceprocess2_trigger;
reg netsoc_eventsourceprocess2_clear = 1'd0;
reg netsoc_eventsourceprocess2_old_trigger = 1'd0;
wire netsoc_waittimer2_wait;
wire netsoc_waittimer2_done;
reg [19:0] netsoc_waittimer2_count = 20'd1000000;
wire netsoc_eventsourceprocess3_status;
reg netsoc_eventsourceprocess3_pending = 1'd0;
wire netsoc_eventsourceprocess3_trigger;
reg netsoc_eventsourceprocess3_clear = 1'd0;
reg netsoc_eventsourceprocess3_old_trigger = 1'd0;
wire netsoc_waittimer3_wait;
wire netsoc_waittimer3_done;
reg [19:0] netsoc_waittimer3_count = 20'd1000000;
wire netsoc_eventmanager_status_re;
wire [3:0] netsoc_eventmanager_status_r;
reg [3:0] netsoc_eventmanager_status_w = 4'd0;
wire netsoc_eventmanager_pending_re;
wire [3:0] netsoc_eventmanager_pending_r;
reg [3:0] netsoc_eventmanager_pending_w = 4'd0;
reg [3:0] netsoc_eventmanager_storage_full = 4'd0;
wire [3:0] netsoc_eventmanager_storage;
reg netsoc_eventmanager_re = 1'd0;
reg netsoc_clk0 = 1'd0;
wire [29:0] netsoc_bus_adr;
wire [31:0] netsoc_bus_dat_w;
wire [31:0] netsoc_bus_dat_r;
wire [3:0] netsoc_bus_sel;
wire netsoc_bus_cyc;
wire netsoc_bus_stb;
reg netsoc_bus_ack = 1'd0;
wire netsoc_bus_we;
wire [2:0] netsoc_bus_cti;
wire [1:0] netsoc_bus_bte;
reg netsoc_bus_err = 1'd0;
reg [3:0] netsoc_bitbang_storage_full = 4'd0;
wire [3:0] netsoc_bitbang_storage;
reg netsoc_bitbang_re = 1'd0;
reg netsoc_miso_status = 1'd0;
reg netsoc_bitbang_en_storage_full = 1'd0;
wire netsoc_bitbang_en_storage;
reg netsoc_bitbang_en_re = 1'd0;
reg netsoc_cs_n = 1'd1;
reg netsoc_clk1 = 1'd0;
reg [31:0] netsoc_sr = 32'd0;
reg netsoc_i = 1'd0;
reg netsoc_miso = 1'd0;
reg [7:0] netsoc_counter = 8'd0;
reg [3:0] netsoc_a7ddrphy_half_sys8x_taps_storage_full = 4'd8;
wire [3:0] netsoc_a7ddrphy_half_sys8x_taps_storage;
reg netsoc_a7ddrphy_half_sys8x_taps_re = 1'd0;
reg [1:0] netsoc_a7ddrphy_dly_sel_storage_full = 2'd0;
wire [1:0] netsoc_a7ddrphy_dly_sel_storage;
reg netsoc_a7ddrphy_dly_sel_re = 1'd0;
wire netsoc_a7ddrphy_rdly_dq_rst_re;
wire netsoc_a7ddrphy_rdly_dq_rst_r;
reg netsoc_a7ddrphy_rdly_dq_rst_w = 1'd0;
wire netsoc_a7ddrphy_rdly_dq_inc_re;
wire netsoc_a7ddrphy_rdly_dq_inc_r;
reg netsoc_a7ddrphy_rdly_dq_inc_w = 1'd0;
wire netsoc_a7ddrphy_rdly_dq_bitslip_rst_re;
wire netsoc_a7ddrphy_rdly_dq_bitslip_rst_r;
reg netsoc_a7ddrphy_rdly_dq_bitslip_rst_w = 1'd0;
wire netsoc_a7ddrphy_rdly_dq_bitslip_re;
wire netsoc_a7ddrphy_rdly_dq_bitslip_r;
reg netsoc_a7ddrphy_rdly_dq_bitslip_w = 1'd0;
wire [13:0] netsoc_a7ddrphy_dfi_p0_address;
wire [2:0] netsoc_a7ddrphy_dfi_p0_bank;
wire netsoc_a7ddrphy_dfi_p0_cas_n;
wire netsoc_a7ddrphy_dfi_p0_cs_n;
wire netsoc_a7ddrphy_dfi_p0_ras_n;
wire netsoc_a7ddrphy_dfi_p0_we_n;
wire netsoc_a7ddrphy_dfi_p0_cke;
wire netsoc_a7ddrphy_dfi_p0_odt;
wire netsoc_a7ddrphy_dfi_p0_reset_n;
wire [31:0] netsoc_a7ddrphy_dfi_p0_wrdata;
wire netsoc_a7ddrphy_dfi_p0_wrdata_en;
wire [3:0] netsoc_a7ddrphy_dfi_p0_wrdata_mask;
wire netsoc_a7ddrphy_dfi_p0_rddata_en;
reg [31:0] netsoc_a7ddrphy_dfi_p0_rddata = 32'd0;
reg netsoc_a7ddrphy_dfi_p0_rddata_valid = 1'd0;
wire [13:0] netsoc_a7ddrphy_dfi_p1_address;
wire [2:0] netsoc_a7ddrphy_dfi_p1_bank;
wire netsoc_a7ddrphy_dfi_p1_cas_n;
wire netsoc_a7ddrphy_dfi_p1_cs_n;
wire netsoc_a7ddrphy_dfi_p1_ras_n;
wire netsoc_a7ddrphy_dfi_p1_we_n;
wire netsoc_a7ddrphy_dfi_p1_cke;
wire netsoc_a7ddrphy_dfi_p1_odt;
wire netsoc_a7ddrphy_dfi_p1_reset_n;
wire [31:0] netsoc_a7ddrphy_dfi_p1_wrdata;
wire netsoc_a7ddrphy_dfi_p1_wrdata_en;
wire [3:0] netsoc_a7ddrphy_dfi_p1_wrdata_mask;
wire netsoc_a7ddrphy_dfi_p1_rddata_en;
reg [31:0] netsoc_a7ddrphy_dfi_p1_rddata = 32'd0;
reg netsoc_a7ddrphy_dfi_p1_rddata_valid = 1'd0;
wire [13:0] netsoc_a7ddrphy_dfi_p2_address;
wire [2:0] netsoc_a7ddrphy_dfi_p2_bank;
wire netsoc_a7ddrphy_dfi_p2_cas_n;
wire netsoc_a7ddrphy_dfi_p2_cs_n;
wire netsoc_a7ddrphy_dfi_p2_ras_n;
wire netsoc_a7ddrphy_dfi_p2_we_n;
wire netsoc_a7ddrphy_dfi_p2_cke;
wire netsoc_a7ddrphy_dfi_p2_odt;
wire netsoc_a7ddrphy_dfi_p2_reset_n;
wire [31:0] netsoc_a7ddrphy_dfi_p2_wrdata;
wire netsoc_a7ddrphy_dfi_p2_wrdata_en;
wire [3:0] netsoc_a7ddrphy_dfi_p2_wrdata_mask;
wire netsoc_a7ddrphy_dfi_p2_rddata_en;
reg [31:0] netsoc_a7ddrphy_dfi_p2_rddata = 32'd0;
reg netsoc_a7ddrphy_dfi_p2_rddata_valid = 1'd0;
wire [13:0] netsoc_a7ddrphy_dfi_p3_address;
wire [2:0] netsoc_a7ddrphy_dfi_p3_bank;
wire netsoc_a7ddrphy_dfi_p3_cas_n;
wire netsoc_a7ddrphy_dfi_p3_cs_n;
wire netsoc_a7ddrphy_dfi_p3_ras_n;
wire netsoc_a7ddrphy_dfi_p3_we_n;
wire netsoc_a7ddrphy_dfi_p3_cke;
wire netsoc_a7ddrphy_dfi_p3_odt;
wire netsoc_a7ddrphy_dfi_p3_reset_n;
wire [31:0] netsoc_a7ddrphy_dfi_p3_wrdata;
wire netsoc_a7ddrphy_dfi_p3_wrdata_en;
wire [3:0] netsoc_a7ddrphy_dfi_p3_wrdata_mask;
wire netsoc_a7ddrphy_dfi_p3_rddata_en;
reg [31:0] netsoc_a7ddrphy_dfi_p3_rddata = 32'd0;
reg netsoc_a7ddrphy_dfi_p3_rddata_valid = 1'd0;
wire netsoc_a7ddrphy_sd_clk_se;
reg netsoc_a7ddrphy_oe_dqs = 1'd0;
wire netsoc_a7ddrphy_dqs_preamble;
wire netsoc_a7ddrphy_dqs_postamble;
reg [7:0] netsoc_a7ddrphy_dqs_serdes_pattern = 8'd85;
wire netsoc_a7ddrphy_dqs_nodelay0;
wire netsoc_a7ddrphy_dqs_t0;
wire netsoc_a7ddrphy0;
wire netsoc_a7ddrphy_dqs_nodelay1;
wire netsoc_a7ddrphy_dqs_t1;
wire netsoc_a7ddrphy1;
reg netsoc_a7ddrphy_oe_dq = 1'd0;
wire netsoc_a7ddrphy_dq_o_nodelay0;
wire netsoc_a7ddrphy_dq_i_nodelay0;
wire netsoc_a7ddrphy_dq_i_delayed0;
wire netsoc_a7ddrphy_dq_t0;
wire [7:0] netsoc_a7ddrphy_dq_i_data0;
wire netsoc_a7ddrphy_dq_o_nodelay1;
wire netsoc_a7ddrphy_dq_i_nodelay1;
wire netsoc_a7ddrphy_dq_i_delayed1;
wire netsoc_a7ddrphy_dq_t1;
wire [7:0] netsoc_a7ddrphy_dq_i_data1;
wire netsoc_a7ddrphy_dq_o_nodelay2;
wire netsoc_a7ddrphy_dq_i_nodelay2;
wire netsoc_a7ddrphy_dq_i_delayed2;
wire netsoc_a7ddrphy_dq_t2;
wire [7:0] netsoc_a7ddrphy_dq_i_data2;
wire netsoc_a7ddrphy_dq_o_nodelay3;
wire netsoc_a7ddrphy_dq_i_nodelay3;
wire netsoc_a7ddrphy_dq_i_delayed3;
wire netsoc_a7ddrphy_dq_t3;
wire [7:0] netsoc_a7ddrphy_dq_i_data3;
wire netsoc_a7ddrphy_dq_o_nodelay4;
wire netsoc_a7ddrphy_dq_i_nodelay4;
wire netsoc_a7ddrphy_dq_i_delayed4;
wire netsoc_a7ddrphy_dq_t4;
wire [7:0] netsoc_a7ddrphy_dq_i_data4;
wire netsoc_a7ddrphy_dq_o_nodelay5;
wire netsoc_a7ddrphy_dq_i_nodelay5;
wire netsoc_a7ddrphy_dq_i_delayed5;
wire netsoc_a7ddrphy_dq_t5;
wire [7:0] netsoc_a7ddrphy_dq_i_data5;
wire netsoc_a7ddrphy_dq_o_nodelay6;
wire netsoc_a7ddrphy_dq_i_nodelay6;
wire netsoc_a7ddrphy_dq_i_delayed6;
wire netsoc_a7ddrphy_dq_t6;
wire [7:0] netsoc_a7ddrphy_dq_i_data6;
wire netsoc_a7ddrphy_dq_o_nodelay7;
wire netsoc_a7ddrphy_dq_i_nodelay7;
wire netsoc_a7ddrphy_dq_i_delayed7;
wire netsoc_a7ddrphy_dq_t7;
wire [7:0] netsoc_a7ddrphy_dq_i_data7;
wire netsoc_a7ddrphy_dq_o_nodelay8;
wire netsoc_a7ddrphy_dq_i_nodelay8;
wire netsoc_a7ddrphy_dq_i_delayed8;
wire netsoc_a7ddrphy_dq_t8;
wire [7:0] netsoc_a7ddrphy_dq_i_data8;
wire netsoc_a7ddrphy_dq_o_nodelay9;
wire netsoc_a7ddrphy_dq_i_nodelay9;
wire netsoc_a7ddrphy_dq_i_delayed9;
wire netsoc_a7ddrphy_dq_t9;
wire [7:0] netsoc_a7ddrphy_dq_i_data9;
wire netsoc_a7ddrphy_dq_o_nodelay10;
wire netsoc_a7ddrphy_dq_i_nodelay10;
wire netsoc_a7ddrphy_dq_i_delayed10;
wire netsoc_a7ddrphy_dq_t10;
wire [7:0] netsoc_a7ddrphy_dq_i_data10;
wire netsoc_a7ddrphy_dq_o_nodelay11;
wire netsoc_a7ddrphy_dq_i_nodelay11;
wire netsoc_a7ddrphy_dq_i_delayed11;
wire netsoc_a7ddrphy_dq_t11;
wire [7:0] netsoc_a7ddrphy_dq_i_data11;
wire netsoc_a7ddrphy_dq_o_nodelay12;
wire netsoc_a7ddrphy_dq_i_nodelay12;
wire netsoc_a7ddrphy_dq_i_delayed12;
wire netsoc_a7ddrphy_dq_t12;
wire [7:0] netsoc_a7ddrphy_dq_i_data12;
wire netsoc_a7ddrphy_dq_o_nodelay13;
wire netsoc_a7ddrphy_dq_i_nodelay13;
wire netsoc_a7ddrphy_dq_i_delayed13;
wire netsoc_a7ddrphy_dq_t13;
wire [7:0] netsoc_a7ddrphy_dq_i_data13;
wire netsoc_a7ddrphy_dq_o_nodelay14;
wire netsoc_a7ddrphy_dq_i_nodelay14;
wire netsoc_a7ddrphy_dq_i_delayed14;
wire netsoc_a7ddrphy_dq_t14;
wire [7:0] netsoc_a7ddrphy_dq_i_data14;
wire netsoc_a7ddrphy_dq_o_nodelay15;
wire netsoc_a7ddrphy_dq_i_nodelay15;
wire netsoc_a7ddrphy_dq_i_delayed15;
wire netsoc_a7ddrphy_dq_t15;
wire [7:0] netsoc_a7ddrphy_dq_i_data15;
reg netsoc_a7ddrphy_n_rddata_en0 = 1'd0;
reg netsoc_a7ddrphy_n_rddata_en1 = 1'd0;
reg netsoc_a7ddrphy_n_rddata_en2 = 1'd0;
reg netsoc_a7ddrphy_n_rddata_en3 = 1'd0;
reg netsoc_a7ddrphy_n_rddata_en4 = 1'd0;
wire netsoc_a7ddrphy_oe;
reg [3:0] netsoc_a7ddrphy_last_wrdata_en = 4'd0;
wire [13:0] netsoc_sdram_inti_p0_address;
wire [2:0] netsoc_sdram_inti_p0_bank;
reg netsoc_sdram_inti_p0_cas_n = 1'd1;
reg netsoc_sdram_inti_p0_cs_n = 1'd1;
reg netsoc_sdram_inti_p0_ras_n = 1'd1;
reg netsoc_sdram_inti_p0_we_n = 1'd1;
wire netsoc_sdram_inti_p0_cke;
wire netsoc_sdram_inti_p0_odt;
wire netsoc_sdram_inti_p0_reset_n;
wire [31:0] netsoc_sdram_inti_p0_wrdata;
wire netsoc_sdram_inti_p0_wrdata_en;
wire [3:0] netsoc_sdram_inti_p0_wrdata_mask;
wire netsoc_sdram_inti_p0_rddata_en;
reg [31:0] netsoc_sdram_inti_p0_rddata = 32'd0;
reg netsoc_sdram_inti_p0_rddata_valid = 1'd0;
wire [13:0] netsoc_sdram_inti_p1_address;
wire [2:0] netsoc_sdram_inti_p1_bank;
reg netsoc_sdram_inti_p1_cas_n = 1'd1;
reg netsoc_sdram_inti_p1_cs_n = 1'd1;
reg netsoc_sdram_inti_p1_ras_n = 1'd1;
reg netsoc_sdram_inti_p1_we_n = 1'd1;
wire netsoc_sdram_inti_p1_cke;
wire netsoc_sdram_inti_p1_odt;
wire netsoc_sdram_inti_p1_reset_n;
wire [31:0] netsoc_sdram_inti_p1_wrdata;
wire netsoc_sdram_inti_p1_wrdata_en;
wire [3:0] netsoc_sdram_inti_p1_wrdata_mask;
wire netsoc_sdram_inti_p1_rddata_en;
reg [31:0] netsoc_sdram_inti_p1_rddata = 32'd0;
reg netsoc_sdram_inti_p1_rddata_valid = 1'd0;
wire [13:0] netsoc_sdram_inti_p2_address;
wire [2:0] netsoc_sdram_inti_p2_bank;
reg netsoc_sdram_inti_p2_cas_n = 1'd1;
reg netsoc_sdram_inti_p2_cs_n = 1'd1;
reg netsoc_sdram_inti_p2_ras_n = 1'd1;
reg netsoc_sdram_inti_p2_we_n = 1'd1;
wire netsoc_sdram_inti_p2_cke;
wire netsoc_sdram_inti_p2_odt;
wire netsoc_sdram_inti_p2_reset_n;
wire [31:0] netsoc_sdram_inti_p2_wrdata;
wire netsoc_sdram_inti_p2_wrdata_en;
wire [3:0] netsoc_sdram_inti_p2_wrdata_mask;
wire netsoc_sdram_inti_p2_rddata_en;
reg [31:0] netsoc_sdram_inti_p2_rddata = 32'd0;
reg netsoc_sdram_inti_p2_rddata_valid = 1'd0;
wire [13:0] netsoc_sdram_inti_p3_address;
wire [2:0] netsoc_sdram_inti_p3_bank;
reg netsoc_sdram_inti_p3_cas_n = 1'd1;
reg netsoc_sdram_inti_p3_cs_n = 1'd1;
reg netsoc_sdram_inti_p3_ras_n = 1'd1;
reg netsoc_sdram_inti_p3_we_n = 1'd1;
wire netsoc_sdram_inti_p3_cke;
wire netsoc_sdram_inti_p3_odt;
wire netsoc_sdram_inti_p3_reset_n;
wire [31:0] netsoc_sdram_inti_p3_wrdata;
wire netsoc_sdram_inti_p3_wrdata_en;
wire [3:0] netsoc_sdram_inti_p3_wrdata_mask;
wire netsoc_sdram_inti_p3_rddata_en;
reg [31:0] netsoc_sdram_inti_p3_rddata = 32'd0;
reg netsoc_sdram_inti_p3_rddata_valid = 1'd0;
wire [13:0] netsoc_sdram_slave_p0_address;
wire [2:0] netsoc_sdram_slave_p0_bank;
wire netsoc_sdram_slave_p0_cas_n;
wire netsoc_sdram_slave_p0_cs_n;
wire netsoc_sdram_slave_p0_ras_n;
wire netsoc_sdram_slave_p0_we_n;
wire netsoc_sdram_slave_p0_cke;
wire netsoc_sdram_slave_p0_odt;
wire netsoc_sdram_slave_p0_reset_n;
wire [31:0] netsoc_sdram_slave_p0_wrdata;
wire netsoc_sdram_slave_p0_wrdata_en;
wire [3:0] netsoc_sdram_slave_p0_wrdata_mask;
wire netsoc_sdram_slave_p0_rddata_en;
reg [31:0] netsoc_sdram_slave_p0_rddata = 32'd0;
reg netsoc_sdram_slave_p0_rddata_valid = 1'd0;
wire [13:0] netsoc_sdram_slave_p1_address;
wire [2:0] netsoc_sdram_slave_p1_bank;
wire netsoc_sdram_slave_p1_cas_n;
wire netsoc_sdram_slave_p1_cs_n;
wire netsoc_sdram_slave_p1_ras_n;
wire netsoc_sdram_slave_p1_we_n;
wire netsoc_sdram_slave_p1_cke;
wire netsoc_sdram_slave_p1_odt;
wire netsoc_sdram_slave_p1_reset_n;
wire [31:0] netsoc_sdram_slave_p1_wrdata;
wire netsoc_sdram_slave_p1_wrdata_en;
wire [3:0] netsoc_sdram_slave_p1_wrdata_mask;
wire netsoc_sdram_slave_p1_rddata_en;
reg [31:0] netsoc_sdram_slave_p1_rddata = 32'd0;
reg netsoc_sdram_slave_p1_rddata_valid = 1'd0;
wire [13:0] netsoc_sdram_slave_p2_address;
wire [2:0] netsoc_sdram_slave_p2_bank;
wire netsoc_sdram_slave_p2_cas_n;
wire netsoc_sdram_slave_p2_cs_n;
wire netsoc_sdram_slave_p2_ras_n;
wire netsoc_sdram_slave_p2_we_n;
wire netsoc_sdram_slave_p2_cke;
wire netsoc_sdram_slave_p2_odt;
wire netsoc_sdram_slave_p2_reset_n;
wire [31:0] netsoc_sdram_slave_p2_wrdata;
wire netsoc_sdram_slave_p2_wrdata_en;
wire [3:0] netsoc_sdram_slave_p2_wrdata_mask;
wire netsoc_sdram_slave_p2_rddata_en;
reg [31:0] netsoc_sdram_slave_p2_rddata = 32'd0;
reg netsoc_sdram_slave_p2_rddata_valid = 1'd0;
wire [13:0] netsoc_sdram_slave_p3_address;
wire [2:0] netsoc_sdram_slave_p3_bank;
wire netsoc_sdram_slave_p3_cas_n;
wire netsoc_sdram_slave_p3_cs_n;
wire netsoc_sdram_slave_p3_ras_n;
wire netsoc_sdram_slave_p3_we_n;
wire netsoc_sdram_slave_p3_cke;
wire netsoc_sdram_slave_p3_odt;
wire netsoc_sdram_slave_p3_reset_n;
wire [31:0] netsoc_sdram_slave_p3_wrdata;
wire netsoc_sdram_slave_p3_wrdata_en;
wire [3:0] netsoc_sdram_slave_p3_wrdata_mask;
wire netsoc_sdram_slave_p3_rddata_en;
reg [31:0] netsoc_sdram_slave_p3_rddata = 32'd0;
reg netsoc_sdram_slave_p3_rddata_valid = 1'd0;
reg [13:0] netsoc_sdram_master_p0_address = 14'd0;
reg [2:0] netsoc_sdram_master_p0_bank = 3'd0;
reg netsoc_sdram_master_p0_cas_n = 1'd1;
reg netsoc_sdram_master_p0_cs_n = 1'd1;
reg netsoc_sdram_master_p0_ras_n = 1'd1;
reg netsoc_sdram_master_p0_we_n = 1'd1;
reg netsoc_sdram_master_p0_cke = 1'd0;
reg netsoc_sdram_master_p0_odt = 1'd0;
reg netsoc_sdram_master_p0_reset_n = 1'd0;
reg [31:0] netsoc_sdram_master_p0_wrdata = 32'd0;
reg netsoc_sdram_master_p0_wrdata_en = 1'd0;
reg [3:0] netsoc_sdram_master_p0_wrdata_mask = 4'd0;
reg netsoc_sdram_master_p0_rddata_en = 1'd0;
wire [31:0] netsoc_sdram_master_p0_rddata;
wire netsoc_sdram_master_p0_rddata_valid;
reg [13:0] netsoc_sdram_master_p1_address = 14'd0;
reg [2:0] netsoc_sdram_master_p1_bank = 3'd0;
reg netsoc_sdram_master_p1_cas_n = 1'd1;
reg netsoc_sdram_master_p1_cs_n = 1'd1;
reg netsoc_sdram_master_p1_ras_n = 1'd1;
reg netsoc_sdram_master_p1_we_n = 1'd1;
reg netsoc_sdram_master_p1_cke = 1'd0;
reg netsoc_sdram_master_p1_odt = 1'd0;
reg netsoc_sdram_master_p1_reset_n = 1'd0;
reg [31:0] netsoc_sdram_master_p1_wrdata = 32'd0;
reg netsoc_sdram_master_p1_wrdata_en = 1'd0;
reg [3:0] netsoc_sdram_master_p1_wrdata_mask = 4'd0;
reg netsoc_sdram_master_p1_rddata_en = 1'd0;
wire [31:0] netsoc_sdram_master_p1_rddata;
wire netsoc_sdram_master_p1_rddata_valid;
reg [13:0] netsoc_sdram_master_p2_address = 14'd0;
reg [2:0] netsoc_sdram_master_p2_bank = 3'd0;
reg netsoc_sdram_master_p2_cas_n = 1'd1;
reg netsoc_sdram_master_p2_cs_n = 1'd1;
reg netsoc_sdram_master_p2_ras_n = 1'd1;
reg netsoc_sdram_master_p2_we_n = 1'd1;
reg netsoc_sdram_master_p2_cke = 1'd0;
reg netsoc_sdram_master_p2_odt = 1'd0;
reg netsoc_sdram_master_p2_reset_n = 1'd0;
reg [31:0] netsoc_sdram_master_p2_wrdata = 32'd0;
reg netsoc_sdram_master_p2_wrdata_en = 1'd0;
reg [3:0] netsoc_sdram_master_p2_wrdata_mask = 4'd0;
reg netsoc_sdram_master_p2_rddata_en = 1'd0;
wire [31:0] netsoc_sdram_master_p2_rddata;
wire netsoc_sdram_master_p2_rddata_valid;
reg [13:0] netsoc_sdram_master_p3_address = 14'd0;
reg [2:0] netsoc_sdram_master_p3_bank = 3'd0;
reg netsoc_sdram_master_p3_cas_n = 1'd1;
reg netsoc_sdram_master_p3_cs_n = 1'd1;
reg netsoc_sdram_master_p3_ras_n = 1'd1;
reg netsoc_sdram_master_p3_we_n = 1'd1;
reg netsoc_sdram_master_p3_cke = 1'd0;
reg netsoc_sdram_master_p3_odt = 1'd0;
reg netsoc_sdram_master_p3_reset_n = 1'd0;
reg [31:0] netsoc_sdram_master_p3_wrdata = 32'd0;
reg netsoc_sdram_master_p3_wrdata_en = 1'd0;
reg [3:0] netsoc_sdram_master_p3_wrdata_mask = 4'd0;
reg netsoc_sdram_master_p3_rddata_en = 1'd0;
wire [31:0] netsoc_sdram_master_p3_rddata;
wire netsoc_sdram_master_p3_rddata_valid;
reg [3:0] netsoc_sdram_storage_full = 4'd0;
wire [3:0] netsoc_sdram_storage;
reg netsoc_sdram_re = 1'd0;
reg [5:0] netsoc_sdram_phaseinjector0_command_storage_full = 6'd0;
wire [5:0] netsoc_sdram_phaseinjector0_command_storage;
reg netsoc_sdram_phaseinjector0_command_re = 1'd0;
wire netsoc_sdram_phaseinjector0_command_issue_re;
wire netsoc_sdram_phaseinjector0_command_issue_r;
reg netsoc_sdram_phaseinjector0_command_issue_w = 1'd0;
reg [13:0] netsoc_sdram_phaseinjector0_address_storage_full = 14'd0;
wire [13:0] netsoc_sdram_phaseinjector0_address_storage;
reg netsoc_sdram_phaseinjector0_address_re = 1'd0;
reg [2:0] netsoc_sdram_phaseinjector0_baddress_storage_full = 3'd0;
wire [2:0] netsoc_sdram_phaseinjector0_baddress_storage;
reg netsoc_sdram_phaseinjector0_baddress_re = 1'd0;
reg [31:0] netsoc_sdram_phaseinjector0_wrdata_storage_full = 32'd0;
wire [31:0] netsoc_sdram_phaseinjector0_wrdata_storage;
reg netsoc_sdram_phaseinjector0_wrdata_re = 1'd0;
reg [31:0] netsoc_sdram_phaseinjector0_status = 32'd0;
reg [5:0] netsoc_sdram_phaseinjector1_command_storage_full = 6'd0;
wire [5:0] netsoc_sdram_phaseinjector1_command_storage;
reg netsoc_sdram_phaseinjector1_command_re = 1'd0;
wire netsoc_sdram_phaseinjector1_command_issue_re;
wire netsoc_sdram_phaseinjector1_command_issue_r;
reg netsoc_sdram_phaseinjector1_command_issue_w = 1'd0;
reg [13:0] netsoc_sdram_phaseinjector1_address_storage_full = 14'd0;
wire [13:0] netsoc_sdram_phaseinjector1_address_storage;
reg netsoc_sdram_phaseinjector1_address_re = 1'd0;
reg [2:0] netsoc_sdram_phaseinjector1_baddress_storage_full = 3'd0;
wire [2:0] netsoc_sdram_phaseinjector1_baddress_storage;
reg netsoc_sdram_phaseinjector1_baddress_re = 1'd0;
reg [31:0] netsoc_sdram_phaseinjector1_wrdata_storage_full = 32'd0;
wire [31:0] netsoc_sdram_phaseinjector1_wrdata_storage;
reg netsoc_sdram_phaseinjector1_wrdata_re = 1'd0;
reg [31:0] netsoc_sdram_phaseinjector1_status = 32'd0;
reg [5:0] netsoc_sdram_phaseinjector2_command_storage_full = 6'd0;
wire [5:0] netsoc_sdram_phaseinjector2_command_storage;
reg netsoc_sdram_phaseinjector2_command_re = 1'd0;
wire netsoc_sdram_phaseinjector2_command_issue_re;
wire netsoc_sdram_phaseinjector2_command_issue_r;
reg netsoc_sdram_phaseinjector2_command_issue_w = 1'd0;
reg [13:0] netsoc_sdram_phaseinjector2_address_storage_full = 14'd0;
wire [13:0] netsoc_sdram_phaseinjector2_address_storage;
reg netsoc_sdram_phaseinjector2_address_re = 1'd0;
reg [2:0] netsoc_sdram_phaseinjector2_baddress_storage_full = 3'd0;
wire [2:0] netsoc_sdram_phaseinjector2_baddress_storage;
reg netsoc_sdram_phaseinjector2_baddress_re = 1'd0;
reg [31:0] netsoc_sdram_phaseinjector2_wrdata_storage_full = 32'd0;
wire [31:0] netsoc_sdram_phaseinjector2_wrdata_storage;
reg netsoc_sdram_phaseinjector2_wrdata_re = 1'd0;
reg [31:0] netsoc_sdram_phaseinjector2_status = 32'd0;
reg [5:0] netsoc_sdram_phaseinjector3_command_storage_full = 6'd0;
wire [5:0] netsoc_sdram_phaseinjector3_command_storage;
reg netsoc_sdram_phaseinjector3_command_re = 1'd0;
wire netsoc_sdram_phaseinjector3_command_issue_re;
wire netsoc_sdram_phaseinjector3_command_issue_r;
reg netsoc_sdram_phaseinjector3_command_issue_w = 1'd0;
reg [13:0] netsoc_sdram_phaseinjector3_address_storage_full = 14'd0;
wire [13:0] netsoc_sdram_phaseinjector3_address_storage;
reg netsoc_sdram_phaseinjector3_address_re = 1'd0;
reg [2:0] netsoc_sdram_phaseinjector3_baddress_storage_full = 3'd0;
wire [2:0] netsoc_sdram_phaseinjector3_baddress_storage;
reg netsoc_sdram_phaseinjector3_baddress_re = 1'd0;
reg [31:0] netsoc_sdram_phaseinjector3_wrdata_storage_full = 32'd0;
wire [31:0] netsoc_sdram_phaseinjector3_wrdata_storage;
reg netsoc_sdram_phaseinjector3_wrdata_re = 1'd0;
reg [31:0] netsoc_sdram_phaseinjector3_status = 32'd0;
reg [13:0] netsoc_sdram_dfi_p0_address = 14'd0;
reg [2:0] netsoc_sdram_dfi_p0_bank = 3'd0;
reg netsoc_sdram_dfi_p0_cas_n = 1'd1;
wire netsoc_sdram_dfi_p0_cs_n;
reg netsoc_sdram_dfi_p0_ras_n = 1'd1;
reg netsoc_sdram_dfi_p0_we_n = 1'd1;
wire netsoc_sdram_dfi_p0_cke;
wire netsoc_sdram_dfi_p0_odt;
wire netsoc_sdram_dfi_p0_reset_n;
wire [31:0] netsoc_sdram_dfi_p0_wrdata;
reg netsoc_sdram_dfi_p0_wrdata_en = 1'd0;
wire [3:0] netsoc_sdram_dfi_p0_wrdata_mask;
reg netsoc_sdram_dfi_p0_rddata_en = 1'd0;
wire [31:0] netsoc_sdram_dfi_p0_rddata;
wire netsoc_sdram_dfi_p0_rddata_valid;
reg [13:0] netsoc_sdram_dfi_p1_address = 14'd0;
reg [2:0] netsoc_sdram_dfi_p1_bank = 3'd0;
reg netsoc_sdram_dfi_p1_cas_n = 1'd1;
wire netsoc_sdram_dfi_p1_cs_n;
reg netsoc_sdram_dfi_p1_ras_n = 1'd1;
reg netsoc_sdram_dfi_p1_we_n = 1'd1;
wire netsoc_sdram_dfi_p1_cke;
wire netsoc_sdram_dfi_p1_odt;
wire netsoc_sdram_dfi_p1_reset_n;
wire [31:0] netsoc_sdram_dfi_p1_wrdata;
reg netsoc_sdram_dfi_p1_wrdata_en = 1'd0;
wire [3:0] netsoc_sdram_dfi_p1_wrdata_mask;
reg netsoc_sdram_dfi_p1_rddata_en = 1'd0;
wire [31:0] netsoc_sdram_dfi_p1_rddata;
wire netsoc_sdram_dfi_p1_rddata_valid;
reg [13:0] netsoc_sdram_dfi_p2_address = 14'd0;
reg [2:0] netsoc_sdram_dfi_p2_bank = 3'd0;
reg netsoc_sdram_dfi_p2_cas_n = 1'd1;
wire netsoc_sdram_dfi_p2_cs_n;
reg netsoc_sdram_dfi_p2_ras_n = 1'd1;
reg netsoc_sdram_dfi_p2_we_n = 1'd1;
wire netsoc_sdram_dfi_p2_cke;
wire netsoc_sdram_dfi_p2_odt;
wire netsoc_sdram_dfi_p2_reset_n;
wire [31:0] netsoc_sdram_dfi_p2_wrdata;
reg netsoc_sdram_dfi_p2_wrdata_en = 1'd0;
wire [3:0] netsoc_sdram_dfi_p2_wrdata_mask;
reg netsoc_sdram_dfi_p2_rddata_en = 1'd0;
wire [31:0] netsoc_sdram_dfi_p2_rddata;
wire netsoc_sdram_dfi_p2_rddata_valid;
reg [13:0] netsoc_sdram_dfi_p3_address = 14'd0;
reg [2:0] netsoc_sdram_dfi_p3_bank = 3'd0;
reg netsoc_sdram_dfi_p3_cas_n = 1'd1;
wire netsoc_sdram_dfi_p3_cs_n;
reg netsoc_sdram_dfi_p3_ras_n = 1'd1;
reg netsoc_sdram_dfi_p3_we_n = 1'd1;
wire netsoc_sdram_dfi_p3_cke;
wire netsoc_sdram_dfi_p3_odt;
wire netsoc_sdram_dfi_p3_reset_n;
wire [31:0] netsoc_sdram_dfi_p3_wrdata;
reg netsoc_sdram_dfi_p3_wrdata_en = 1'd0;
wire [3:0] netsoc_sdram_dfi_p3_wrdata_mask;
reg netsoc_sdram_dfi_p3_rddata_en = 1'd0;
wire [31:0] netsoc_sdram_dfi_p3_rddata;
wire netsoc_sdram_dfi_p3_rddata_valid;
wire netsoc_sdram_interface_bank0_valid;
wire netsoc_sdram_interface_bank0_ready;
wire netsoc_sdram_interface_bank0_we;
wire [20:0] netsoc_sdram_interface_bank0_adr;
wire netsoc_sdram_interface_bank0_lock;
wire netsoc_sdram_interface_bank0_wdata_ready;
wire netsoc_sdram_interface_bank0_rdata_valid;
wire netsoc_sdram_interface_bank1_valid;
wire netsoc_sdram_interface_bank1_ready;
wire netsoc_sdram_interface_bank1_we;
wire [20:0] netsoc_sdram_interface_bank1_adr;
wire netsoc_sdram_interface_bank1_lock;
wire netsoc_sdram_interface_bank1_wdata_ready;
wire netsoc_sdram_interface_bank1_rdata_valid;
wire netsoc_sdram_interface_bank2_valid;
wire netsoc_sdram_interface_bank2_ready;
wire netsoc_sdram_interface_bank2_we;
wire [20:0] netsoc_sdram_interface_bank2_adr;
wire netsoc_sdram_interface_bank2_lock;
wire netsoc_sdram_interface_bank2_wdata_ready;
wire netsoc_sdram_interface_bank2_rdata_valid;
wire netsoc_sdram_interface_bank3_valid;
wire netsoc_sdram_interface_bank3_ready;
wire netsoc_sdram_interface_bank3_we;
wire [20:0] netsoc_sdram_interface_bank3_adr;
wire netsoc_sdram_interface_bank3_lock;
wire netsoc_sdram_interface_bank3_wdata_ready;
wire netsoc_sdram_interface_bank3_rdata_valid;
wire netsoc_sdram_interface_bank4_valid;
wire netsoc_sdram_interface_bank4_ready;
wire netsoc_sdram_interface_bank4_we;
wire [20:0] netsoc_sdram_interface_bank4_adr;
wire netsoc_sdram_interface_bank4_lock;
wire netsoc_sdram_interface_bank4_wdata_ready;
wire netsoc_sdram_interface_bank4_rdata_valid;
wire netsoc_sdram_interface_bank5_valid;
wire netsoc_sdram_interface_bank5_ready;
wire netsoc_sdram_interface_bank5_we;
wire [20:0] netsoc_sdram_interface_bank5_adr;
wire netsoc_sdram_interface_bank5_lock;
wire netsoc_sdram_interface_bank5_wdata_ready;
wire netsoc_sdram_interface_bank5_rdata_valid;
wire netsoc_sdram_interface_bank6_valid;
wire netsoc_sdram_interface_bank6_ready;
wire netsoc_sdram_interface_bank6_we;
wire [20:0] netsoc_sdram_interface_bank6_adr;
wire netsoc_sdram_interface_bank6_lock;
wire netsoc_sdram_interface_bank6_wdata_ready;
wire netsoc_sdram_interface_bank6_rdata_valid;
wire netsoc_sdram_interface_bank7_valid;
wire netsoc_sdram_interface_bank7_ready;
wire netsoc_sdram_interface_bank7_we;
wire [20:0] netsoc_sdram_interface_bank7_adr;
wire netsoc_sdram_interface_bank7_lock;
wire netsoc_sdram_interface_bank7_wdata_ready;
wire netsoc_sdram_interface_bank7_rdata_valid;
reg [127:0] netsoc_sdram_interface_wdata = 128'd0;
reg [15:0] netsoc_sdram_interface_wdata_we = 16'd0;
wire [127:0] netsoc_sdram_interface_rdata;
reg netsoc_sdram_cmd_valid = 1'd0;
reg netsoc_sdram_cmd_ready = 1'd0;
reg netsoc_sdram_cmd_last = 1'd0;
reg [13:0] netsoc_sdram_cmd_payload_a = 14'd0;
reg [2:0] netsoc_sdram_cmd_payload_ba = 3'd0;
reg netsoc_sdram_cmd_payload_cas = 1'd0;
reg netsoc_sdram_cmd_payload_ras = 1'd0;
reg netsoc_sdram_cmd_payload_we = 1'd0;
reg netsoc_sdram_cmd_payload_is_read = 1'd0;
reg netsoc_sdram_cmd_payload_is_write = 1'd0;
reg netsoc_sdram_seq_start = 1'd0;
reg netsoc_sdram_seq_done = 1'd0;
reg [4:0] netsoc_sdram_counter = 5'd0;
wire netsoc_sdram_wait;
wire netsoc_sdram_done;
reg [9:0] netsoc_sdram_count = 10'd782;
wire netsoc_sdram_bankmachine0_req_valid;
wire netsoc_sdram_bankmachine0_req_ready;
wire netsoc_sdram_bankmachine0_req_we;
wire [20:0] netsoc_sdram_bankmachine0_req_adr;
wire netsoc_sdram_bankmachine0_req_lock;
reg netsoc_sdram_bankmachine0_req_wdata_ready = 1'd0;
reg netsoc_sdram_bankmachine0_req_rdata_valid = 1'd0;
wire netsoc_sdram_bankmachine0_refresh_req;
reg netsoc_sdram_bankmachine0_refresh_gnt = 1'd0;
wire netsoc_sdram_bankmachine0_ras_allowed;
wire netsoc_sdram_bankmachine0_cas_allowed;
reg netsoc_sdram_bankmachine0_cmd_valid = 1'd0;
reg netsoc_sdram_bankmachine0_cmd_ready = 1'd0;
reg [13:0] netsoc_sdram_bankmachine0_cmd_payload_a = 14'd0;
wire [2:0] netsoc_sdram_bankmachine0_cmd_payload_ba;
reg netsoc_sdram_bankmachine0_cmd_payload_cas = 1'd0;
reg netsoc_sdram_bankmachine0_cmd_payload_ras = 1'd0;
reg netsoc_sdram_bankmachine0_cmd_payload_we = 1'd0;
reg netsoc_sdram_bankmachine0_cmd_payload_is_cmd = 1'd0;
reg netsoc_sdram_bankmachine0_cmd_payload_is_read = 1'd0;
reg netsoc_sdram_bankmachine0_cmd_payload_is_write = 1'd0;
reg netsoc_sdram_bankmachine0_auto_precharge = 1'd0;
wire netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_valid;
wire netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_ready;
reg netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_first = 1'd0;
reg netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_last = 1'd0;
wire netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_adr;
wire netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_valid;
wire netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_ready;
wire netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_first;
wire netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_last;
wire netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_we;
wire [20:0] netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_adr;
wire netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we;
wire netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable;
wire netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_re;
wire netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable;
wire [23:0] netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_din;
wire [23:0] netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_dout;
reg [3:0] netsoc_sdram_bankmachine0_cmd_buffer_lookahead_level = 4'd0;
reg netsoc_sdram_bankmachine0_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] netsoc_sdram_bankmachine0_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] netsoc_sdram_bankmachine0_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_r;
wire netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_we;
wire [23:0] netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_w;
wire netsoc_sdram_bankmachine0_cmd_buffer_lookahead_do_read;
wire [2:0] netsoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_adr;
wire [23:0] netsoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_dat_r;
wire netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_adr;
wire netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_first;
wire netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_last;
wire netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_adr;
wire netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_first;
wire netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_last;
wire netsoc_sdram_bankmachine0_cmd_buffer_sink_valid;
wire netsoc_sdram_bankmachine0_cmd_buffer_sink_ready;
wire netsoc_sdram_bankmachine0_cmd_buffer_sink_first;
wire netsoc_sdram_bankmachine0_cmd_buffer_sink_last;
wire netsoc_sdram_bankmachine0_cmd_buffer_sink_payload_we;
wire [20:0] netsoc_sdram_bankmachine0_cmd_buffer_sink_payload_adr;
wire netsoc_sdram_bankmachine0_cmd_buffer_source_valid;
wire netsoc_sdram_bankmachine0_cmd_buffer_source_ready;
wire netsoc_sdram_bankmachine0_cmd_buffer_source_first;
wire netsoc_sdram_bankmachine0_cmd_buffer_source_last;
reg netsoc_sdram_bankmachine0_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] netsoc_sdram_bankmachine0_cmd_buffer_source_payload_adr = 21'd0;
wire netsoc_sdram_bankmachine0_cmd_buffer_pipe_ce;
wire netsoc_sdram_bankmachine0_cmd_buffer_busy;
reg netsoc_sdram_bankmachine0_cmd_buffer_valid_n = 1'd0;
reg netsoc_sdram_bankmachine0_cmd_buffer_first_n = 1'd0;
reg netsoc_sdram_bankmachine0_cmd_buffer_last_n = 1'd0;
reg netsoc_sdram_bankmachine0_has_openrow = 1'd0;
reg [13:0] netsoc_sdram_bankmachine0_openrow = 14'd0;
wire netsoc_sdram_bankmachine0_hit;
reg netsoc_sdram_bankmachine0_track_open = 1'd0;
reg netsoc_sdram_bankmachine0_track_close = 1'd0;
reg netsoc_sdram_bankmachine0_sel_row_adr = 1'd0;
wire netsoc_sdram_bankmachine0_wait;
wire netsoc_sdram_bankmachine0_done;
reg [2:0] netsoc_sdram_bankmachine0_count = 3'd5;
wire netsoc_sdram_bankmachine1_req_valid;
wire netsoc_sdram_bankmachine1_req_ready;
wire netsoc_sdram_bankmachine1_req_we;
wire [20:0] netsoc_sdram_bankmachine1_req_adr;
wire netsoc_sdram_bankmachine1_req_lock;
reg netsoc_sdram_bankmachine1_req_wdata_ready = 1'd0;
reg netsoc_sdram_bankmachine1_req_rdata_valid = 1'd0;
wire netsoc_sdram_bankmachine1_refresh_req;
reg netsoc_sdram_bankmachine1_refresh_gnt = 1'd0;
wire netsoc_sdram_bankmachine1_ras_allowed;
wire netsoc_sdram_bankmachine1_cas_allowed;
reg netsoc_sdram_bankmachine1_cmd_valid = 1'd0;
reg netsoc_sdram_bankmachine1_cmd_ready = 1'd0;
reg [13:0] netsoc_sdram_bankmachine1_cmd_payload_a = 14'd0;
wire [2:0] netsoc_sdram_bankmachine1_cmd_payload_ba;
reg netsoc_sdram_bankmachine1_cmd_payload_cas = 1'd0;
reg netsoc_sdram_bankmachine1_cmd_payload_ras = 1'd0;
reg netsoc_sdram_bankmachine1_cmd_payload_we = 1'd0;
reg netsoc_sdram_bankmachine1_cmd_payload_is_cmd = 1'd0;
reg netsoc_sdram_bankmachine1_cmd_payload_is_read = 1'd0;
reg netsoc_sdram_bankmachine1_cmd_payload_is_write = 1'd0;
reg netsoc_sdram_bankmachine1_auto_precharge = 1'd0;
wire netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_valid;
wire netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_ready;
reg netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_first = 1'd0;
reg netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_last = 1'd0;
wire netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_adr;
wire netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_valid;
wire netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_ready;
wire netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_first;
wire netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_last;
wire netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_we;
wire [20:0] netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_adr;
wire netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we;
wire netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable;
wire netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_re;
wire netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable;
wire [23:0] netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_din;
wire [23:0] netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_dout;
reg [3:0] netsoc_sdram_bankmachine1_cmd_buffer_lookahead_level = 4'd0;
reg netsoc_sdram_bankmachine1_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] netsoc_sdram_bankmachine1_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] netsoc_sdram_bankmachine1_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_r;
wire netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_we;
wire [23:0] netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_w;
wire netsoc_sdram_bankmachine1_cmd_buffer_lookahead_do_read;
wire [2:0] netsoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_adr;
wire [23:0] netsoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_dat_r;
wire netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_adr;
wire netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_first;
wire netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_last;
wire netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_adr;
wire netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_first;
wire netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_last;
wire netsoc_sdram_bankmachine1_cmd_buffer_sink_valid;
wire netsoc_sdram_bankmachine1_cmd_buffer_sink_ready;
wire netsoc_sdram_bankmachine1_cmd_buffer_sink_first;
wire netsoc_sdram_bankmachine1_cmd_buffer_sink_last;
wire netsoc_sdram_bankmachine1_cmd_buffer_sink_payload_we;
wire [20:0] netsoc_sdram_bankmachine1_cmd_buffer_sink_payload_adr;
wire netsoc_sdram_bankmachine1_cmd_buffer_source_valid;
wire netsoc_sdram_bankmachine1_cmd_buffer_source_ready;
wire netsoc_sdram_bankmachine1_cmd_buffer_source_first;
wire netsoc_sdram_bankmachine1_cmd_buffer_source_last;
reg netsoc_sdram_bankmachine1_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] netsoc_sdram_bankmachine1_cmd_buffer_source_payload_adr = 21'd0;
wire netsoc_sdram_bankmachine1_cmd_buffer_pipe_ce;
wire netsoc_sdram_bankmachine1_cmd_buffer_busy;
reg netsoc_sdram_bankmachine1_cmd_buffer_valid_n = 1'd0;
reg netsoc_sdram_bankmachine1_cmd_buffer_first_n = 1'd0;
reg netsoc_sdram_bankmachine1_cmd_buffer_last_n = 1'd0;
reg netsoc_sdram_bankmachine1_has_openrow = 1'd0;
reg [13:0] netsoc_sdram_bankmachine1_openrow = 14'd0;
wire netsoc_sdram_bankmachine1_hit;
reg netsoc_sdram_bankmachine1_track_open = 1'd0;
reg netsoc_sdram_bankmachine1_track_close = 1'd0;
reg netsoc_sdram_bankmachine1_sel_row_adr = 1'd0;
wire netsoc_sdram_bankmachine1_wait;
wire netsoc_sdram_bankmachine1_done;
reg [2:0] netsoc_sdram_bankmachine1_count = 3'd5;
wire netsoc_sdram_bankmachine2_req_valid;
wire netsoc_sdram_bankmachine2_req_ready;
wire netsoc_sdram_bankmachine2_req_we;
wire [20:0] netsoc_sdram_bankmachine2_req_adr;
wire netsoc_sdram_bankmachine2_req_lock;
reg netsoc_sdram_bankmachine2_req_wdata_ready = 1'd0;
reg netsoc_sdram_bankmachine2_req_rdata_valid = 1'd0;
wire netsoc_sdram_bankmachine2_refresh_req;
reg netsoc_sdram_bankmachine2_refresh_gnt = 1'd0;
wire netsoc_sdram_bankmachine2_ras_allowed;
wire netsoc_sdram_bankmachine2_cas_allowed;
reg netsoc_sdram_bankmachine2_cmd_valid = 1'd0;
reg netsoc_sdram_bankmachine2_cmd_ready = 1'd0;
reg [13:0] netsoc_sdram_bankmachine2_cmd_payload_a = 14'd0;
wire [2:0] netsoc_sdram_bankmachine2_cmd_payload_ba;
reg netsoc_sdram_bankmachine2_cmd_payload_cas = 1'd0;
reg netsoc_sdram_bankmachine2_cmd_payload_ras = 1'd0;
reg netsoc_sdram_bankmachine2_cmd_payload_we = 1'd0;
reg netsoc_sdram_bankmachine2_cmd_payload_is_cmd = 1'd0;
reg netsoc_sdram_bankmachine2_cmd_payload_is_read = 1'd0;
reg netsoc_sdram_bankmachine2_cmd_payload_is_write = 1'd0;
reg netsoc_sdram_bankmachine2_auto_precharge = 1'd0;
wire netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_valid;
wire netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_ready;
reg netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_first = 1'd0;
reg netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_last = 1'd0;
wire netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_adr;
wire netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_valid;
wire netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_ready;
wire netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_first;
wire netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_last;
wire netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_we;
wire [20:0] netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_adr;
wire netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we;
wire netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable;
wire netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_re;
wire netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable;
wire [23:0] netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_din;
wire [23:0] netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_dout;
reg [3:0] netsoc_sdram_bankmachine2_cmd_buffer_lookahead_level = 4'd0;
reg netsoc_sdram_bankmachine2_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] netsoc_sdram_bankmachine2_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] netsoc_sdram_bankmachine2_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_r;
wire netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_we;
wire [23:0] netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_w;
wire netsoc_sdram_bankmachine2_cmd_buffer_lookahead_do_read;
wire [2:0] netsoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_adr;
wire [23:0] netsoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_dat_r;
wire netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_adr;
wire netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_first;
wire netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_last;
wire netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_adr;
wire netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_first;
wire netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_last;
wire netsoc_sdram_bankmachine2_cmd_buffer_sink_valid;
wire netsoc_sdram_bankmachine2_cmd_buffer_sink_ready;
wire netsoc_sdram_bankmachine2_cmd_buffer_sink_first;
wire netsoc_sdram_bankmachine2_cmd_buffer_sink_last;
wire netsoc_sdram_bankmachine2_cmd_buffer_sink_payload_we;
wire [20:0] netsoc_sdram_bankmachine2_cmd_buffer_sink_payload_adr;
wire netsoc_sdram_bankmachine2_cmd_buffer_source_valid;
wire netsoc_sdram_bankmachine2_cmd_buffer_source_ready;
wire netsoc_sdram_bankmachine2_cmd_buffer_source_first;
wire netsoc_sdram_bankmachine2_cmd_buffer_source_last;
reg netsoc_sdram_bankmachine2_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] netsoc_sdram_bankmachine2_cmd_buffer_source_payload_adr = 21'd0;
wire netsoc_sdram_bankmachine2_cmd_buffer_pipe_ce;
wire netsoc_sdram_bankmachine2_cmd_buffer_busy;
reg netsoc_sdram_bankmachine2_cmd_buffer_valid_n = 1'd0;
reg netsoc_sdram_bankmachine2_cmd_buffer_first_n = 1'd0;
reg netsoc_sdram_bankmachine2_cmd_buffer_last_n = 1'd0;
reg netsoc_sdram_bankmachine2_has_openrow = 1'd0;
reg [13:0] netsoc_sdram_bankmachine2_openrow = 14'd0;
wire netsoc_sdram_bankmachine2_hit;
reg netsoc_sdram_bankmachine2_track_open = 1'd0;
reg netsoc_sdram_bankmachine2_track_close = 1'd0;
reg netsoc_sdram_bankmachine2_sel_row_adr = 1'd0;
wire netsoc_sdram_bankmachine2_wait;
wire netsoc_sdram_bankmachine2_done;
reg [2:0] netsoc_sdram_bankmachine2_count = 3'd5;
wire netsoc_sdram_bankmachine3_req_valid;
wire netsoc_sdram_bankmachine3_req_ready;
wire netsoc_sdram_bankmachine3_req_we;
wire [20:0] netsoc_sdram_bankmachine3_req_adr;
wire netsoc_sdram_bankmachine3_req_lock;
reg netsoc_sdram_bankmachine3_req_wdata_ready = 1'd0;
reg netsoc_sdram_bankmachine3_req_rdata_valid = 1'd0;
wire netsoc_sdram_bankmachine3_refresh_req;
reg netsoc_sdram_bankmachine3_refresh_gnt = 1'd0;
wire netsoc_sdram_bankmachine3_ras_allowed;
wire netsoc_sdram_bankmachine3_cas_allowed;
reg netsoc_sdram_bankmachine3_cmd_valid = 1'd0;
reg netsoc_sdram_bankmachine3_cmd_ready = 1'd0;
reg [13:0] netsoc_sdram_bankmachine3_cmd_payload_a = 14'd0;
wire [2:0] netsoc_sdram_bankmachine3_cmd_payload_ba;
reg netsoc_sdram_bankmachine3_cmd_payload_cas = 1'd0;
reg netsoc_sdram_bankmachine3_cmd_payload_ras = 1'd0;
reg netsoc_sdram_bankmachine3_cmd_payload_we = 1'd0;
reg netsoc_sdram_bankmachine3_cmd_payload_is_cmd = 1'd0;
reg netsoc_sdram_bankmachine3_cmd_payload_is_read = 1'd0;
reg netsoc_sdram_bankmachine3_cmd_payload_is_write = 1'd0;
reg netsoc_sdram_bankmachine3_auto_precharge = 1'd0;
wire netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_valid;
wire netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_ready;
reg netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_first = 1'd0;
reg netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_last = 1'd0;
wire netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_adr;
wire netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_valid;
wire netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_ready;
wire netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_first;
wire netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_last;
wire netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_we;
wire [20:0] netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_adr;
wire netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we;
wire netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable;
wire netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_re;
wire netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable;
wire [23:0] netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_din;
wire [23:0] netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_dout;
reg [3:0] netsoc_sdram_bankmachine3_cmd_buffer_lookahead_level = 4'd0;
reg netsoc_sdram_bankmachine3_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] netsoc_sdram_bankmachine3_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] netsoc_sdram_bankmachine3_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_r;
wire netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_we;
wire [23:0] netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_w;
wire netsoc_sdram_bankmachine3_cmd_buffer_lookahead_do_read;
wire [2:0] netsoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_adr;
wire [23:0] netsoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_dat_r;
wire netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_adr;
wire netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_first;
wire netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_last;
wire netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_adr;
wire netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_first;
wire netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_last;
wire netsoc_sdram_bankmachine3_cmd_buffer_sink_valid;
wire netsoc_sdram_bankmachine3_cmd_buffer_sink_ready;
wire netsoc_sdram_bankmachine3_cmd_buffer_sink_first;
wire netsoc_sdram_bankmachine3_cmd_buffer_sink_last;
wire netsoc_sdram_bankmachine3_cmd_buffer_sink_payload_we;
wire [20:0] netsoc_sdram_bankmachine3_cmd_buffer_sink_payload_adr;
wire netsoc_sdram_bankmachine3_cmd_buffer_source_valid;
wire netsoc_sdram_bankmachine3_cmd_buffer_source_ready;
wire netsoc_sdram_bankmachine3_cmd_buffer_source_first;
wire netsoc_sdram_bankmachine3_cmd_buffer_source_last;
reg netsoc_sdram_bankmachine3_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] netsoc_sdram_bankmachine3_cmd_buffer_source_payload_adr = 21'd0;
wire netsoc_sdram_bankmachine3_cmd_buffer_pipe_ce;
wire netsoc_sdram_bankmachine3_cmd_buffer_busy;
reg netsoc_sdram_bankmachine3_cmd_buffer_valid_n = 1'd0;
reg netsoc_sdram_bankmachine3_cmd_buffer_first_n = 1'd0;
reg netsoc_sdram_bankmachine3_cmd_buffer_last_n = 1'd0;
reg netsoc_sdram_bankmachine3_has_openrow = 1'd0;
reg [13:0] netsoc_sdram_bankmachine3_openrow = 14'd0;
wire netsoc_sdram_bankmachine3_hit;
reg netsoc_sdram_bankmachine3_track_open = 1'd0;
reg netsoc_sdram_bankmachine3_track_close = 1'd0;
reg netsoc_sdram_bankmachine3_sel_row_adr = 1'd0;
wire netsoc_sdram_bankmachine3_wait;
wire netsoc_sdram_bankmachine3_done;
reg [2:0] netsoc_sdram_bankmachine3_count = 3'd5;
wire netsoc_sdram_bankmachine4_req_valid;
wire netsoc_sdram_bankmachine4_req_ready;
wire netsoc_sdram_bankmachine4_req_we;
wire [20:0] netsoc_sdram_bankmachine4_req_adr;
wire netsoc_sdram_bankmachine4_req_lock;
reg netsoc_sdram_bankmachine4_req_wdata_ready = 1'd0;
reg netsoc_sdram_bankmachine4_req_rdata_valid = 1'd0;
wire netsoc_sdram_bankmachine4_refresh_req;
reg netsoc_sdram_bankmachine4_refresh_gnt = 1'd0;
wire netsoc_sdram_bankmachine4_ras_allowed;
wire netsoc_sdram_bankmachine4_cas_allowed;
reg netsoc_sdram_bankmachine4_cmd_valid = 1'd0;
reg netsoc_sdram_bankmachine4_cmd_ready = 1'd0;
reg [13:0] netsoc_sdram_bankmachine4_cmd_payload_a = 14'd0;
wire [2:0] netsoc_sdram_bankmachine4_cmd_payload_ba;
reg netsoc_sdram_bankmachine4_cmd_payload_cas = 1'd0;
reg netsoc_sdram_bankmachine4_cmd_payload_ras = 1'd0;
reg netsoc_sdram_bankmachine4_cmd_payload_we = 1'd0;
reg netsoc_sdram_bankmachine4_cmd_payload_is_cmd = 1'd0;
reg netsoc_sdram_bankmachine4_cmd_payload_is_read = 1'd0;
reg netsoc_sdram_bankmachine4_cmd_payload_is_write = 1'd0;
reg netsoc_sdram_bankmachine4_auto_precharge = 1'd0;
wire netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_valid;
wire netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_ready;
reg netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_first = 1'd0;
reg netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_last = 1'd0;
wire netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_adr;
wire netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_valid;
wire netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_ready;
wire netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_first;
wire netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_last;
wire netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_we;
wire [20:0] netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_adr;
wire netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_we;
wire netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable;
wire netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_re;
wire netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable;
wire [23:0] netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_din;
wire [23:0] netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_dout;
reg [3:0] netsoc_sdram_bankmachine4_cmd_buffer_lookahead_level = 4'd0;
reg netsoc_sdram_bankmachine4_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] netsoc_sdram_bankmachine4_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] netsoc_sdram_bankmachine4_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_dat_r;
wire netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_we;
wire [23:0] netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_dat_w;
wire netsoc_sdram_bankmachine4_cmd_buffer_lookahead_do_read;
wire [2:0] netsoc_sdram_bankmachine4_cmd_buffer_lookahead_rdport_adr;
wire [23:0] netsoc_sdram_bankmachine4_cmd_buffer_lookahead_rdport_dat_r;
wire netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_adr;
wire netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_first;
wire netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_last;
wire netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_adr;
wire netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_first;
wire netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_last;
wire netsoc_sdram_bankmachine4_cmd_buffer_sink_valid;
wire netsoc_sdram_bankmachine4_cmd_buffer_sink_ready;
wire netsoc_sdram_bankmachine4_cmd_buffer_sink_first;
wire netsoc_sdram_bankmachine4_cmd_buffer_sink_last;
wire netsoc_sdram_bankmachine4_cmd_buffer_sink_payload_we;
wire [20:0] netsoc_sdram_bankmachine4_cmd_buffer_sink_payload_adr;
wire netsoc_sdram_bankmachine4_cmd_buffer_source_valid;
wire netsoc_sdram_bankmachine4_cmd_buffer_source_ready;
wire netsoc_sdram_bankmachine4_cmd_buffer_source_first;
wire netsoc_sdram_bankmachine4_cmd_buffer_source_last;
reg netsoc_sdram_bankmachine4_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] netsoc_sdram_bankmachine4_cmd_buffer_source_payload_adr = 21'd0;
wire netsoc_sdram_bankmachine4_cmd_buffer_pipe_ce;
wire netsoc_sdram_bankmachine4_cmd_buffer_busy;
reg netsoc_sdram_bankmachine4_cmd_buffer_valid_n = 1'd0;
reg netsoc_sdram_bankmachine4_cmd_buffer_first_n = 1'd0;
reg netsoc_sdram_bankmachine4_cmd_buffer_last_n = 1'd0;
reg netsoc_sdram_bankmachine4_has_openrow = 1'd0;
reg [13:0] netsoc_sdram_bankmachine4_openrow = 14'd0;
wire netsoc_sdram_bankmachine4_hit;
reg netsoc_sdram_bankmachine4_track_open = 1'd0;
reg netsoc_sdram_bankmachine4_track_close = 1'd0;
reg netsoc_sdram_bankmachine4_sel_row_adr = 1'd0;
wire netsoc_sdram_bankmachine4_wait;
wire netsoc_sdram_bankmachine4_done;
reg [2:0] netsoc_sdram_bankmachine4_count = 3'd5;
wire netsoc_sdram_bankmachine5_req_valid;
wire netsoc_sdram_bankmachine5_req_ready;
wire netsoc_sdram_bankmachine5_req_we;
wire [20:0] netsoc_sdram_bankmachine5_req_adr;
wire netsoc_sdram_bankmachine5_req_lock;
reg netsoc_sdram_bankmachine5_req_wdata_ready = 1'd0;
reg netsoc_sdram_bankmachine5_req_rdata_valid = 1'd0;
wire netsoc_sdram_bankmachine5_refresh_req;
reg netsoc_sdram_bankmachine5_refresh_gnt = 1'd0;
wire netsoc_sdram_bankmachine5_ras_allowed;
wire netsoc_sdram_bankmachine5_cas_allowed;
reg netsoc_sdram_bankmachine5_cmd_valid = 1'd0;
reg netsoc_sdram_bankmachine5_cmd_ready = 1'd0;
reg [13:0] netsoc_sdram_bankmachine5_cmd_payload_a = 14'd0;
wire [2:0] netsoc_sdram_bankmachine5_cmd_payload_ba;
reg netsoc_sdram_bankmachine5_cmd_payload_cas = 1'd0;
reg netsoc_sdram_bankmachine5_cmd_payload_ras = 1'd0;
reg netsoc_sdram_bankmachine5_cmd_payload_we = 1'd0;
reg netsoc_sdram_bankmachine5_cmd_payload_is_cmd = 1'd0;
reg netsoc_sdram_bankmachine5_cmd_payload_is_read = 1'd0;
reg netsoc_sdram_bankmachine5_cmd_payload_is_write = 1'd0;
reg netsoc_sdram_bankmachine5_auto_precharge = 1'd0;
wire netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_valid;
wire netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_ready;
reg netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_first = 1'd0;
reg netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_last = 1'd0;
wire netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_adr;
wire netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_valid;
wire netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_ready;
wire netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_first;
wire netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_last;
wire netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_we;
wire [20:0] netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_adr;
wire netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_we;
wire netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable;
wire netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_re;
wire netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable;
wire [23:0] netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_din;
wire [23:0] netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_dout;
reg [3:0] netsoc_sdram_bankmachine5_cmd_buffer_lookahead_level = 4'd0;
reg netsoc_sdram_bankmachine5_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] netsoc_sdram_bankmachine5_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] netsoc_sdram_bankmachine5_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_dat_r;
wire netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_we;
wire [23:0] netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_dat_w;
wire netsoc_sdram_bankmachine5_cmd_buffer_lookahead_do_read;
wire [2:0] netsoc_sdram_bankmachine5_cmd_buffer_lookahead_rdport_adr;
wire [23:0] netsoc_sdram_bankmachine5_cmd_buffer_lookahead_rdport_dat_r;
wire netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_adr;
wire netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_first;
wire netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_last;
wire netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_adr;
wire netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_first;
wire netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_last;
wire netsoc_sdram_bankmachine5_cmd_buffer_sink_valid;
wire netsoc_sdram_bankmachine5_cmd_buffer_sink_ready;
wire netsoc_sdram_bankmachine5_cmd_buffer_sink_first;
wire netsoc_sdram_bankmachine5_cmd_buffer_sink_last;
wire netsoc_sdram_bankmachine5_cmd_buffer_sink_payload_we;
wire [20:0] netsoc_sdram_bankmachine5_cmd_buffer_sink_payload_adr;
wire netsoc_sdram_bankmachine5_cmd_buffer_source_valid;
wire netsoc_sdram_bankmachine5_cmd_buffer_source_ready;
wire netsoc_sdram_bankmachine5_cmd_buffer_source_first;
wire netsoc_sdram_bankmachine5_cmd_buffer_source_last;
reg netsoc_sdram_bankmachine5_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] netsoc_sdram_bankmachine5_cmd_buffer_source_payload_adr = 21'd0;
wire netsoc_sdram_bankmachine5_cmd_buffer_pipe_ce;
wire netsoc_sdram_bankmachine5_cmd_buffer_busy;
reg netsoc_sdram_bankmachine5_cmd_buffer_valid_n = 1'd0;
reg netsoc_sdram_bankmachine5_cmd_buffer_first_n = 1'd0;
reg netsoc_sdram_bankmachine5_cmd_buffer_last_n = 1'd0;
reg netsoc_sdram_bankmachine5_has_openrow = 1'd0;
reg [13:0] netsoc_sdram_bankmachine5_openrow = 14'd0;
wire netsoc_sdram_bankmachine5_hit;
reg netsoc_sdram_bankmachine5_track_open = 1'd0;
reg netsoc_sdram_bankmachine5_track_close = 1'd0;
reg netsoc_sdram_bankmachine5_sel_row_adr = 1'd0;
wire netsoc_sdram_bankmachine5_wait;
wire netsoc_sdram_bankmachine5_done;
reg [2:0] netsoc_sdram_bankmachine5_count = 3'd5;
wire netsoc_sdram_bankmachine6_req_valid;
wire netsoc_sdram_bankmachine6_req_ready;
wire netsoc_sdram_bankmachine6_req_we;
wire [20:0] netsoc_sdram_bankmachine6_req_adr;
wire netsoc_sdram_bankmachine6_req_lock;
reg netsoc_sdram_bankmachine6_req_wdata_ready = 1'd0;
reg netsoc_sdram_bankmachine6_req_rdata_valid = 1'd0;
wire netsoc_sdram_bankmachine6_refresh_req;
reg netsoc_sdram_bankmachine6_refresh_gnt = 1'd0;
wire netsoc_sdram_bankmachine6_ras_allowed;
wire netsoc_sdram_bankmachine6_cas_allowed;
reg netsoc_sdram_bankmachine6_cmd_valid = 1'd0;
reg netsoc_sdram_bankmachine6_cmd_ready = 1'd0;
reg [13:0] netsoc_sdram_bankmachine6_cmd_payload_a = 14'd0;
wire [2:0] netsoc_sdram_bankmachine6_cmd_payload_ba;
reg netsoc_sdram_bankmachine6_cmd_payload_cas = 1'd0;
reg netsoc_sdram_bankmachine6_cmd_payload_ras = 1'd0;
reg netsoc_sdram_bankmachine6_cmd_payload_we = 1'd0;
reg netsoc_sdram_bankmachine6_cmd_payload_is_cmd = 1'd0;
reg netsoc_sdram_bankmachine6_cmd_payload_is_read = 1'd0;
reg netsoc_sdram_bankmachine6_cmd_payload_is_write = 1'd0;
reg netsoc_sdram_bankmachine6_auto_precharge = 1'd0;
wire netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_valid;
wire netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_ready;
reg netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_first = 1'd0;
reg netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_last = 1'd0;
wire netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_adr;
wire netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_valid;
wire netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_ready;
wire netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_first;
wire netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_last;
wire netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_we;
wire [20:0] netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_adr;
wire netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_we;
wire netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable;
wire netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_re;
wire netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable;
wire [23:0] netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_din;
wire [23:0] netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_dout;
reg [3:0] netsoc_sdram_bankmachine6_cmd_buffer_lookahead_level = 4'd0;
reg netsoc_sdram_bankmachine6_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] netsoc_sdram_bankmachine6_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] netsoc_sdram_bankmachine6_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_dat_r;
wire netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_we;
wire [23:0] netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_dat_w;
wire netsoc_sdram_bankmachine6_cmd_buffer_lookahead_do_read;
wire [2:0] netsoc_sdram_bankmachine6_cmd_buffer_lookahead_rdport_adr;
wire [23:0] netsoc_sdram_bankmachine6_cmd_buffer_lookahead_rdport_dat_r;
wire netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_adr;
wire netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_first;
wire netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_last;
wire netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_adr;
wire netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_first;
wire netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_last;
wire netsoc_sdram_bankmachine6_cmd_buffer_sink_valid;
wire netsoc_sdram_bankmachine6_cmd_buffer_sink_ready;
wire netsoc_sdram_bankmachine6_cmd_buffer_sink_first;
wire netsoc_sdram_bankmachine6_cmd_buffer_sink_last;
wire netsoc_sdram_bankmachine6_cmd_buffer_sink_payload_we;
wire [20:0] netsoc_sdram_bankmachine6_cmd_buffer_sink_payload_adr;
wire netsoc_sdram_bankmachine6_cmd_buffer_source_valid;
wire netsoc_sdram_bankmachine6_cmd_buffer_source_ready;
wire netsoc_sdram_bankmachine6_cmd_buffer_source_first;
wire netsoc_sdram_bankmachine6_cmd_buffer_source_last;
reg netsoc_sdram_bankmachine6_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] netsoc_sdram_bankmachine6_cmd_buffer_source_payload_adr = 21'd0;
wire netsoc_sdram_bankmachine6_cmd_buffer_pipe_ce;
wire netsoc_sdram_bankmachine6_cmd_buffer_busy;
reg netsoc_sdram_bankmachine6_cmd_buffer_valid_n = 1'd0;
reg netsoc_sdram_bankmachine6_cmd_buffer_first_n = 1'd0;
reg netsoc_sdram_bankmachine6_cmd_buffer_last_n = 1'd0;
reg netsoc_sdram_bankmachine6_has_openrow = 1'd0;
reg [13:0] netsoc_sdram_bankmachine6_openrow = 14'd0;
wire netsoc_sdram_bankmachine6_hit;
reg netsoc_sdram_bankmachine6_track_open = 1'd0;
reg netsoc_sdram_bankmachine6_track_close = 1'd0;
reg netsoc_sdram_bankmachine6_sel_row_adr = 1'd0;
wire netsoc_sdram_bankmachine6_wait;
wire netsoc_sdram_bankmachine6_done;
reg [2:0] netsoc_sdram_bankmachine6_count = 3'd5;
wire netsoc_sdram_bankmachine7_req_valid;
wire netsoc_sdram_bankmachine7_req_ready;
wire netsoc_sdram_bankmachine7_req_we;
wire [20:0] netsoc_sdram_bankmachine7_req_adr;
wire netsoc_sdram_bankmachine7_req_lock;
reg netsoc_sdram_bankmachine7_req_wdata_ready = 1'd0;
reg netsoc_sdram_bankmachine7_req_rdata_valid = 1'd0;
wire netsoc_sdram_bankmachine7_refresh_req;
reg netsoc_sdram_bankmachine7_refresh_gnt = 1'd0;
wire netsoc_sdram_bankmachine7_ras_allowed;
wire netsoc_sdram_bankmachine7_cas_allowed;
reg netsoc_sdram_bankmachine7_cmd_valid = 1'd0;
reg netsoc_sdram_bankmachine7_cmd_ready = 1'd0;
reg [13:0] netsoc_sdram_bankmachine7_cmd_payload_a = 14'd0;
wire [2:0] netsoc_sdram_bankmachine7_cmd_payload_ba;
reg netsoc_sdram_bankmachine7_cmd_payload_cas = 1'd0;
reg netsoc_sdram_bankmachine7_cmd_payload_ras = 1'd0;
reg netsoc_sdram_bankmachine7_cmd_payload_we = 1'd0;
reg netsoc_sdram_bankmachine7_cmd_payload_is_cmd = 1'd0;
reg netsoc_sdram_bankmachine7_cmd_payload_is_read = 1'd0;
reg netsoc_sdram_bankmachine7_cmd_payload_is_write = 1'd0;
reg netsoc_sdram_bankmachine7_auto_precharge = 1'd0;
wire netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_valid;
wire netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_ready;
reg netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_first = 1'd0;
reg netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_last = 1'd0;
wire netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_adr;
wire netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_valid;
wire netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_ready;
wire netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_first;
wire netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_last;
wire netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_we;
wire [20:0] netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_adr;
wire netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_we;
wire netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable;
wire netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_re;
wire netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable;
wire [23:0] netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_din;
wire [23:0] netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_dout;
reg [3:0] netsoc_sdram_bankmachine7_cmd_buffer_lookahead_level = 4'd0;
reg netsoc_sdram_bankmachine7_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] netsoc_sdram_bankmachine7_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] netsoc_sdram_bankmachine7_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_dat_r;
wire netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_we;
wire [23:0] netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_dat_w;
wire netsoc_sdram_bankmachine7_cmd_buffer_lookahead_do_read;
wire [2:0] netsoc_sdram_bankmachine7_cmd_buffer_lookahead_rdport_adr;
wire [23:0] netsoc_sdram_bankmachine7_cmd_buffer_lookahead_rdport_dat_r;
wire netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_adr;
wire netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_first;
wire netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_last;
wire netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_adr;
wire netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_first;
wire netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_last;
wire netsoc_sdram_bankmachine7_cmd_buffer_sink_valid;
wire netsoc_sdram_bankmachine7_cmd_buffer_sink_ready;
wire netsoc_sdram_bankmachine7_cmd_buffer_sink_first;
wire netsoc_sdram_bankmachine7_cmd_buffer_sink_last;
wire netsoc_sdram_bankmachine7_cmd_buffer_sink_payload_we;
wire [20:0] netsoc_sdram_bankmachine7_cmd_buffer_sink_payload_adr;
wire netsoc_sdram_bankmachine7_cmd_buffer_source_valid;
wire netsoc_sdram_bankmachine7_cmd_buffer_source_ready;
wire netsoc_sdram_bankmachine7_cmd_buffer_source_first;
wire netsoc_sdram_bankmachine7_cmd_buffer_source_last;
reg netsoc_sdram_bankmachine7_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] netsoc_sdram_bankmachine7_cmd_buffer_source_payload_adr = 21'd0;
wire netsoc_sdram_bankmachine7_cmd_buffer_pipe_ce;
wire netsoc_sdram_bankmachine7_cmd_buffer_busy;
reg netsoc_sdram_bankmachine7_cmd_buffer_valid_n = 1'd0;
reg netsoc_sdram_bankmachine7_cmd_buffer_first_n = 1'd0;
reg netsoc_sdram_bankmachine7_cmd_buffer_last_n = 1'd0;
reg netsoc_sdram_bankmachine7_has_openrow = 1'd0;
reg [13:0] netsoc_sdram_bankmachine7_openrow = 14'd0;
wire netsoc_sdram_bankmachine7_hit;
reg netsoc_sdram_bankmachine7_track_open = 1'd0;
reg netsoc_sdram_bankmachine7_track_close = 1'd0;
reg netsoc_sdram_bankmachine7_sel_row_adr = 1'd0;
wire netsoc_sdram_bankmachine7_wait;
wire netsoc_sdram_bankmachine7_done;
reg [2:0] netsoc_sdram_bankmachine7_count = 3'd5;
wire netsoc_sdram_ras_allowed;
wire netsoc_sdram_cas_allowed;
reg netsoc_sdram_choose_cmd_want_reads = 1'd0;
reg netsoc_sdram_choose_cmd_want_writes = 1'd0;
reg netsoc_sdram_choose_cmd_want_cmds = 1'd0;
reg netsoc_sdram_choose_cmd_want_activates = 1'd0;
wire netsoc_sdram_choose_cmd_cmd_valid;
reg netsoc_sdram_choose_cmd_cmd_ready = 1'd0;
wire [13:0] netsoc_sdram_choose_cmd_cmd_payload_a;
wire [2:0] netsoc_sdram_choose_cmd_cmd_payload_ba;
reg netsoc_sdram_choose_cmd_cmd_payload_cas = 1'd0;
reg netsoc_sdram_choose_cmd_cmd_payload_ras = 1'd0;
reg netsoc_sdram_choose_cmd_cmd_payload_we = 1'd0;
wire netsoc_sdram_choose_cmd_cmd_payload_is_cmd;
wire netsoc_sdram_choose_cmd_cmd_payload_is_read;
wire netsoc_sdram_choose_cmd_cmd_payload_is_write;
reg [7:0] netsoc_sdram_choose_cmd_valids = 8'd0;
wire [7:0] netsoc_sdram_choose_cmd_request;
reg [2:0] netsoc_sdram_choose_cmd_grant = 3'd0;
wire netsoc_sdram_choose_cmd_ce;
reg netsoc_sdram_choose_req_want_reads = 1'd0;
reg netsoc_sdram_choose_req_want_writes = 1'd0;
reg netsoc_sdram_choose_req_want_cmds = 1'd0;
reg netsoc_sdram_choose_req_want_activates = 1'd0;
wire netsoc_sdram_choose_req_cmd_valid;
reg netsoc_sdram_choose_req_cmd_ready = 1'd0;
wire [13:0] netsoc_sdram_choose_req_cmd_payload_a;
wire [2:0] netsoc_sdram_choose_req_cmd_payload_ba;
reg netsoc_sdram_choose_req_cmd_payload_cas = 1'd0;
reg netsoc_sdram_choose_req_cmd_payload_ras = 1'd0;
reg netsoc_sdram_choose_req_cmd_payload_we = 1'd0;
wire netsoc_sdram_choose_req_cmd_payload_is_cmd;
wire netsoc_sdram_choose_req_cmd_payload_is_read;
wire netsoc_sdram_choose_req_cmd_payload_is_write;
reg [7:0] netsoc_sdram_choose_req_valids = 8'd0;
wire [7:0] netsoc_sdram_choose_req_request;
reg [2:0] netsoc_sdram_choose_req_grant = 3'd0;
wire netsoc_sdram_choose_req_ce;
reg [13:0] netsoc_sdram_nop_a = 14'd0;
reg [2:0] netsoc_sdram_nop_ba = 3'd0;
reg netsoc_sdram_nop_cas = 1'd0;
reg netsoc_sdram_nop_ras = 1'd0;
reg netsoc_sdram_nop_we = 1'd0;
reg [1:0] netsoc_sdram_sel0 = 2'd0;
reg [1:0] netsoc_sdram_sel1 = 2'd0;
reg [1:0] netsoc_sdram_sel2 = 2'd0;
reg [1:0] netsoc_sdram_sel3 = 2'd0;
wire netsoc_sdram_trrdcon_valid;
(* dont_touch = "true" *) reg netsoc_sdram_trrdcon_ready = 1'd1;
reg netsoc_sdram_trrdcon_count = 1'd0;
wire netsoc_sdram_tfawcon_valid;
(* dont_touch = "true" *) reg netsoc_sdram_tfawcon_ready = 1'd1;
wire [2:0] netsoc_sdram_tfawcon_count;
reg [7:0] netsoc_sdram_tfawcon_window = 8'd0;
wire netsoc_sdram_tccdcon_valid;
(* dont_touch = "true" *) reg netsoc_sdram_tccdcon_ready = 1'd1;
reg netsoc_sdram_tccdcon_count = 1'd0;
wire netsoc_sdram_twtrcon_valid;
(* dont_touch = "true" *) reg netsoc_sdram_twtrcon_ready = 1'd1;
reg [1:0] netsoc_sdram_twtrcon_count = 2'd0;
wire netsoc_sdram_read_available;
wire netsoc_sdram_write_available;
reg netsoc_sdram_en0 = 1'd0;
wire netsoc_sdram_max_time0;
reg [4:0] netsoc_sdram_time0 = 5'd0;
reg netsoc_sdram_en1 = 1'd0;
wire netsoc_sdram_max_time1;
reg [3:0] netsoc_sdram_time1 = 4'd0;
wire netsoc_sdram_go_to_refresh;
wire netsoc_sdram_bandwidth_update_re;
wire netsoc_sdram_bandwidth_update_r;
reg netsoc_sdram_bandwidth_update_w = 1'd0;
reg [23:0] netsoc_sdram_bandwidth_nreads_status = 24'd0;
reg [23:0] netsoc_sdram_bandwidth_nwrites_status = 24'd0;
reg [7:0] netsoc_sdram_bandwidth_data_width_status = 8'd128;
reg netsoc_sdram_bandwidth_cmd_valid = 1'd0;
reg netsoc_sdram_bandwidth_cmd_ready = 1'd0;
reg netsoc_sdram_bandwidth_cmd_is_read = 1'd0;
reg netsoc_sdram_bandwidth_cmd_is_write = 1'd0;
reg [23:0] netsoc_sdram_bandwidth_counter = 24'd0;
reg netsoc_sdram_bandwidth_period = 1'd0;
reg [23:0] netsoc_sdram_bandwidth_nreads = 24'd0;
reg [23:0] netsoc_sdram_bandwidth_nwrites = 24'd0;
reg [23:0] netsoc_sdram_bandwidth_nreads_r = 24'd0;
reg [23:0] netsoc_sdram_bandwidth_nwrites_r = 24'd0;
wire [29:0] netsoc_interface1_wb_sdram_adr;
wire [31:0] netsoc_interface1_wb_sdram_dat_w;
wire [31:0] netsoc_interface1_wb_sdram_dat_r;
wire [3:0] netsoc_interface1_wb_sdram_sel;
wire netsoc_interface1_wb_sdram_cyc;
wire netsoc_interface1_wb_sdram_stb;
wire netsoc_interface1_wb_sdram_ack;
wire netsoc_interface1_wb_sdram_we;
wire [2:0] netsoc_interface1_wb_sdram_cti;
wire [1:0] netsoc_interface1_wb_sdram_bte;
wire netsoc_interface1_wb_sdram_err;
reg netsoc_port_cmd_valid = 1'd0;
wire netsoc_port_cmd_ready;
reg netsoc_port_cmd_payload_we = 1'd0;
wire [23:0] netsoc_port_cmd_payload_adr;
reg netsoc_port_wdata_valid = 1'd0;
wire netsoc_port_wdata_ready;
wire [127:0] netsoc_port_wdata_payload_data;
wire [15:0] netsoc_port_wdata_payload_we;
wire netsoc_port_rdata_valid;
reg netsoc_port_rdata_ready = 1'd0;
wire [127:0] netsoc_port_rdata_payload_data;
wire [29:0] netsoc_interface_adr;
wire [127:0] netsoc_interface_dat_w;
wire [127:0] netsoc_interface_dat_r;
wire [15:0] netsoc_interface_sel;
reg netsoc_interface_cyc = 1'd0;
reg netsoc_interface_stb = 1'd0;
reg netsoc_interface_ack = 1'd0;
reg netsoc_interface_we = 1'd0;
wire [8:0] netsoc_data_port_adr;
wire [127:0] netsoc_data_port_dat_r;
reg [15:0] netsoc_data_port_we = 16'd0;
reg [127:0] netsoc_data_port_dat_w = 128'd0;
reg netsoc_write_from_slave = 1'd0;
reg [1:0] netsoc_adr_offset_r = 2'd0;
wire [8:0] netsoc_tag_port_adr;
wire [23:0] netsoc_tag_port_dat_r;
reg netsoc_tag_port_we = 1'd0;
wire [23:0] netsoc_tag_port_dat_w;
wire [22:0] netsoc_tag_do_tag;
wire netsoc_tag_do_dirty;
wire [22:0] netsoc_tag_di_tag;
reg netsoc_tag_di_dirty = 1'd0;
reg netsoc_word_clr = 1'd0;
reg netsoc_word_inc = 1'd0;
reg ethphy_reset_storage_full = 1'd0;
wire ethphy_reset_storage;
reg ethphy_reset_re = 1'd0;
(* dont_touch = "true" *) wire eth_rx_clk;
wire eth_rx_rst;
(* dont_touch = "true" *) wire eth_tx_clk;
wire eth_tx_rst;
wire ethphy_reset0;
wire ethphy_reset1;
reg [8:0] ethphy_counter = 9'd0;
wire ethphy_counter_done;
wire ethphy_counter_ce;
wire ethphy_liteethphymiitx_sink_sink_valid;
wire ethphy_liteethphymiitx_sink_sink_ready;
wire ethphy_liteethphymiitx_sink_sink_first;
wire ethphy_liteethphymiitx_sink_sink_last;
wire [7:0] ethphy_liteethphymiitx_sink_sink_payload_data;
wire ethphy_liteethphymiitx_sink_sink_payload_last_be;
wire ethphy_liteethphymiitx_sink_sink_payload_error;
wire ethphy_liteethphymiitx_converter_sink_valid;
wire ethphy_liteethphymiitx_converter_sink_ready;
reg ethphy_liteethphymiitx_converter_sink_first = 1'd0;
reg ethphy_liteethphymiitx_converter_sink_last = 1'd0;
wire [7:0] ethphy_liteethphymiitx_converter_sink_payload_data;
wire ethphy_liteethphymiitx_converter_source_valid;
wire ethphy_liteethphymiitx_converter_source_ready;
wire ethphy_liteethphymiitx_converter_source_first;
wire ethphy_liteethphymiitx_converter_source_last;
wire [3:0] ethphy_liteethphymiitx_converter_source_payload_data;
wire ethphy_liteethphymiitx_converter_converter_sink_valid;
wire ethphy_liteethphymiitx_converter_converter_sink_ready;
wire ethphy_liteethphymiitx_converter_converter_sink_first;
wire ethphy_liteethphymiitx_converter_converter_sink_last;
reg [7:0] ethphy_liteethphymiitx_converter_converter_sink_payload_data = 8'd0;
wire ethphy_liteethphymiitx_converter_converter_source_valid;
wire ethphy_liteethphymiitx_converter_converter_source_ready;
wire ethphy_liteethphymiitx_converter_converter_source_first;
wire ethphy_liteethphymiitx_converter_converter_source_last;
reg [3:0] ethphy_liteethphymiitx_converter_converter_source_payload_data = 4'd0;
wire ethphy_liteethphymiitx_converter_converter_source_payload_valid_token_count;
reg ethphy_liteethphymiitx_converter_converter_mux = 1'd0;
wire ethphy_liteethphymiitx_converter_converter_first;
wire ethphy_liteethphymiitx_converter_converter_last;
wire ethphy_liteethphymiitx_converter_source_source_valid;
wire ethphy_liteethphymiitx_converter_source_source_ready;
wire ethphy_liteethphymiitx_converter_source_source_first;
wire ethphy_liteethphymiitx_converter_source_source_last;
wire [3:0] ethphy_liteethphymiitx_converter_source_source_payload_data;
wire ethphy_liteethphymiirx_source_source_valid;
wire ethphy_liteethphymiirx_source_source_ready;
wire ethphy_liteethphymiirx_source_source_first;
wire ethphy_liteethphymiirx_source_source_last;
wire [7:0] ethphy_liteethphymiirx_source_source_payload_data;
reg ethphy_liteethphymiirx_source_source_payload_last_be = 1'd0;
reg ethphy_liteethphymiirx_source_source_payload_error = 1'd0;
reg ethphy_liteethphymiirx_converter_sink_valid = 1'd0;
wire ethphy_liteethphymiirx_converter_sink_ready;
reg ethphy_liteethphymiirx_converter_sink_first = 1'd0;
wire ethphy_liteethphymiirx_converter_sink_last;
reg [3:0] ethphy_liteethphymiirx_converter_sink_payload_data = 4'd0;
wire ethphy_liteethphymiirx_converter_source_valid;
wire ethphy_liteethphymiirx_converter_source_ready;
wire ethphy_liteethphymiirx_converter_source_first;
wire ethphy_liteethphymiirx_converter_source_last;
reg [7:0] ethphy_liteethphymiirx_converter_source_payload_data = 8'd0;
wire ethphy_liteethphymiirx_converter_converter_sink_valid;
wire ethphy_liteethphymiirx_converter_converter_sink_ready;
wire ethphy_liteethphymiirx_converter_converter_sink_first;
wire ethphy_liteethphymiirx_converter_converter_sink_last;
wire [3:0] ethphy_liteethphymiirx_converter_converter_sink_payload_data;
wire ethphy_liteethphymiirx_converter_converter_source_valid;
wire ethphy_liteethphymiirx_converter_converter_source_ready;
reg ethphy_liteethphymiirx_converter_converter_source_first = 1'd0;
reg ethphy_liteethphymiirx_converter_converter_source_last = 1'd0;
reg [7:0] ethphy_liteethphymiirx_converter_converter_source_payload_data = 8'd0;
reg [1:0] ethphy_liteethphymiirx_converter_converter_source_payload_valid_token_count = 2'd0;
reg ethphy_liteethphymiirx_converter_converter_demux = 1'd0;
wire ethphy_liteethphymiirx_converter_converter_load_part;
reg ethphy_liteethphymiirx_converter_converter_strobe_all = 1'd0;
wire ethphy_liteethphymiirx_converter_source_source_valid;
wire ethphy_liteethphymiirx_converter_source_source_ready;
wire ethphy_liteethphymiirx_converter_source_source_first;
wire ethphy_liteethphymiirx_converter_source_source_last;
wire [7:0] ethphy_liteethphymiirx_converter_source_source_payload_data;
reg ethphy_liteethphymiirx_converter_reset = 1'd0;
reg [2:0] ethphy_storage_full = 3'd0;
wire [2:0] ethphy_storage;
reg ethphy_re = 1'd0;
wire ethphy_status;
wire ethphy_data_w;
wire ethphy_data_oe;
wire ethphy_data_r;
wire ethmac_tx_gap_inserter_sink_valid;
reg ethmac_tx_gap_inserter_sink_ready = 1'd0;
wire ethmac_tx_gap_inserter_sink_first;
wire ethmac_tx_gap_inserter_sink_last;
wire [7:0] ethmac_tx_gap_inserter_sink_payload_data;
wire ethmac_tx_gap_inserter_sink_payload_last_be;
wire ethmac_tx_gap_inserter_sink_payload_error;
reg ethmac_tx_gap_inserter_source_valid = 1'd0;
wire ethmac_tx_gap_inserter_source_ready;
reg ethmac_tx_gap_inserter_source_first = 1'd0;
reg ethmac_tx_gap_inserter_source_last = 1'd0;
reg [7:0] ethmac_tx_gap_inserter_source_payload_data = 8'd0;
reg ethmac_tx_gap_inserter_source_payload_last_be = 1'd0;
reg ethmac_tx_gap_inserter_source_payload_error = 1'd0;
reg [3:0] ethmac_tx_gap_inserter_counter = 4'd0;
reg ethmac_tx_gap_inserter_counter_reset = 1'd0;
reg ethmac_tx_gap_inserter_counter_ce = 1'd0;
reg ethmac_preamble_crc_status = 1'd1;
reg [31:0] ethmac_preamble_errors_status = 32'd0;
reg [31:0] ethmac_crc_errors_status = 32'd0;
wire ethmac_preamble_inserter_sink_valid;
reg ethmac_preamble_inserter_sink_ready = 1'd0;
wire ethmac_preamble_inserter_sink_first;
wire ethmac_preamble_inserter_sink_last;
wire [7:0] ethmac_preamble_inserter_sink_payload_data;
wire ethmac_preamble_inserter_sink_payload_last_be;
wire ethmac_preamble_inserter_sink_payload_error;
reg ethmac_preamble_inserter_source_valid = 1'd0;
wire ethmac_preamble_inserter_source_ready;
reg ethmac_preamble_inserter_source_first = 1'd0;
reg ethmac_preamble_inserter_source_last = 1'd0;
reg [7:0] ethmac_preamble_inserter_source_payload_data = 8'd0;
wire ethmac_preamble_inserter_source_payload_last_be;
reg ethmac_preamble_inserter_source_payload_error = 1'd0;
reg [63:0] ethmac_preamble_inserter_preamble = 64'd15372286728091293013;
reg [2:0] ethmac_preamble_inserter_cnt = 3'd0;
reg ethmac_preamble_inserter_clr_cnt = 1'd0;
reg ethmac_preamble_inserter_inc_cnt = 1'd0;
wire ethmac_preamble_checker_sink_valid;
reg ethmac_preamble_checker_sink_ready = 1'd0;
wire ethmac_preamble_checker_sink_first;
wire ethmac_preamble_checker_sink_last;
wire [7:0] ethmac_preamble_checker_sink_payload_data;
wire ethmac_preamble_checker_sink_payload_last_be;
wire ethmac_preamble_checker_sink_payload_error;
reg ethmac_preamble_checker_source_valid = 1'd0;
wire ethmac_preamble_checker_source_ready;
reg ethmac_preamble_checker_source_first = 1'd0;
reg ethmac_preamble_checker_source_last = 1'd0;
wire [7:0] ethmac_preamble_checker_source_payload_data;
wire ethmac_preamble_checker_source_payload_last_be;
reg ethmac_preamble_checker_source_payload_error = 1'd0;
reg ethmac_preamble_checker_error = 1'd0;
wire ethmac_crc32_inserter_sink_valid;
reg ethmac_crc32_inserter_sink_ready = 1'd0;
wire ethmac_crc32_inserter_sink_first;
wire ethmac_crc32_inserter_sink_last;
wire [7:0] ethmac_crc32_inserter_sink_payload_data;
wire ethmac_crc32_inserter_sink_payload_last_be;
wire ethmac_crc32_inserter_sink_payload_error;
reg ethmac_crc32_inserter_source_valid = 1'd0;
wire ethmac_crc32_inserter_source_ready;
reg ethmac_crc32_inserter_source_first = 1'd0;
reg ethmac_crc32_inserter_source_last = 1'd0;
reg [7:0] ethmac_crc32_inserter_source_payload_data = 8'd0;
reg ethmac_crc32_inserter_source_payload_last_be = 1'd0;
reg ethmac_crc32_inserter_source_payload_error = 1'd0;
reg [7:0] ethmac_crc32_inserter_data0 = 8'd0;
wire [31:0] ethmac_crc32_inserter_value;
wire ethmac_crc32_inserter_error;
wire [7:0] ethmac_crc32_inserter_data1;
wire [31:0] ethmac_crc32_inserter_last;
reg [31:0] ethmac_crc32_inserter_next = 32'd0;
reg [31:0] ethmac_crc32_inserter_reg = 32'd4294967295;
reg ethmac_crc32_inserter_ce = 1'd0;
reg ethmac_crc32_inserter_reset = 1'd0;
reg [1:0] ethmac_crc32_inserter_cnt = 2'd3;
wire ethmac_crc32_inserter_cnt_done;
reg ethmac_crc32_inserter_is_ongoing0 = 1'd0;
reg ethmac_crc32_inserter_is_ongoing1 = 1'd0;
wire ethmac_crc32_checker_sink_sink_valid;
reg ethmac_crc32_checker_sink_sink_ready = 1'd0;
wire ethmac_crc32_checker_sink_sink_first;
wire ethmac_crc32_checker_sink_sink_last;
wire [7:0] ethmac_crc32_checker_sink_sink_payload_data;
wire ethmac_crc32_checker_sink_sink_payload_last_be;
wire ethmac_crc32_checker_sink_sink_payload_error;
wire ethmac_crc32_checker_source_source_valid;
wire ethmac_crc32_checker_source_source_ready;
reg ethmac_crc32_checker_source_source_first = 1'd0;
wire ethmac_crc32_checker_source_source_last;
wire [7:0] ethmac_crc32_checker_source_source_payload_data;
wire ethmac_crc32_checker_source_source_payload_last_be;
reg ethmac_crc32_checker_source_source_payload_error = 1'd0;
wire ethmac_crc32_checker_error;
wire [7:0] ethmac_crc32_checker_crc_data0;
wire [31:0] ethmac_crc32_checker_crc_value;
wire ethmac_crc32_checker_crc_error;
wire [7:0] ethmac_crc32_checker_crc_data1;
wire [31:0] ethmac_crc32_checker_crc_last;
reg [31:0] ethmac_crc32_checker_crc_next = 32'd0;
reg [31:0] ethmac_crc32_checker_crc_reg = 32'd4294967295;
reg ethmac_crc32_checker_crc_ce = 1'd0;
reg ethmac_crc32_checker_crc_reset = 1'd0;
reg ethmac_crc32_checker_syncfifo_sink_valid = 1'd0;
wire ethmac_crc32_checker_syncfifo_sink_ready;
wire ethmac_crc32_checker_syncfifo_sink_first;
wire ethmac_crc32_checker_syncfifo_sink_last;
wire [7:0] ethmac_crc32_checker_syncfifo_sink_payload_data;
wire ethmac_crc32_checker_syncfifo_sink_payload_last_be;
wire ethmac_crc32_checker_syncfifo_sink_payload_error;
wire ethmac_crc32_checker_syncfifo_source_valid;
wire ethmac_crc32_checker_syncfifo_source_ready;
wire ethmac_crc32_checker_syncfifo_source_first;
wire ethmac_crc32_checker_syncfifo_source_last;
wire [7:0] ethmac_crc32_checker_syncfifo_source_payload_data;
wire ethmac_crc32_checker_syncfifo_source_payload_last_be;
wire ethmac_crc32_checker_syncfifo_source_payload_error;
wire ethmac_crc32_checker_syncfifo_syncfifo_we;
wire ethmac_crc32_checker_syncfifo_syncfifo_writable;
wire ethmac_crc32_checker_syncfifo_syncfifo_re;
wire ethmac_crc32_checker_syncfifo_syncfifo_readable;
wire [11:0] ethmac_crc32_checker_syncfifo_syncfifo_din;
wire [11:0] ethmac_crc32_checker_syncfifo_syncfifo_dout;
reg [2:0] ethmac_crc32_checker_syncfifo_level = 3'd0;
reg ethmac_crc32_checker_syncfifo_replace = 1'd0;
reg [2:0] ethmac_crc32_checker_syncfifo_produce = 3'd0;
reg [2:0] ethmac_crc32_checker_syncfifo_consume = 3'd0;
reg [2:0] ethmac_crc32_checker_syncfifo_wrport_adr = 3'd0;
wire [11:0] ethmac_crc32_checker_syncfifo_wrport_dat_r;
wire ethmac_crc32_checker_syncfifo_wrport_we;
wire [11:0] ethmac_crc32_checker_syncfifo_wrport_dat_w;
wire ethmac_crc32_checker_syncfifo_do_read;
wire [2:0] ethmac_crc32_checker_syncfifo_rdport_adr;
wire [11:0] ethmac_crc32_checker_syncfifo_rdport_dat_r;
wire [7:0] ethmac_crc32_checker_syncfifo_fifo_in_payload_data;
wire ethmac_crc32_checker_syncfifo_fifo_in_payload_last_be;
wire ethmac_crc32_checker_syncfifo_fifo_in_payload_error;
wire ethmac_crc32_checker_syncfifo_fifo_in_first;
wire ethmac_crc32_checker_syncfifo_fifo_in_last;
wire [7:0] ethmac_crc32_checker_syncfifo_fifo_out_payload_data;
wire ethmac_crc32_checker_syncfifo_fifo_out_payload_last_be;
wire ethmac_crc32_checker_syncfifo_fifo_out_payload_error;
wire ethmac_crc32_checker_syncfifo_fifo_out_first;
wire ethmac_crc32_checker_syncfifo_fifo_out_last;
reg ethmac_crc32_checker_fifo_reset = 1'd0;
wire ethmac_crc32_checker_fifo_in;
wire ethmac_crc32_checker_fifo_out;
wire ethmac_crc32_checker_fifo_full;
wire ethmac_ps_preamble_error_i;
wire ethmac_ps_preamble_error_o;
reg ethmac_ps_preamble_error_toggle_i = 1'd0;
wire ethmac_ps_preamble_error_toggle_o;
reg ethmac_ps_preamble_error_toggle_o_r = 1'd0;
wire ethmac_ps_crc_error_i;
wire ethmac_ps_crc_error_o;
reg ethmac_ps_crc_error_toggle_i = 1'd0;
wire ethmac_ps_crc_error_toggle_o;
reg ethmac_ps_crc_error_toggle_o_r = 1'd0;
wire ethmac_padding_inserter_sink_valid;
reg ethmac_padding_inserter_sink_ready = 1'd0;
wire ethmac_padding_inserter_sink_first;
wire ethmac_padding_inserter_sink_last;
wire [7:0] ethmac_padding_inserter_sink_payload_data;
wire ethmac_padding_inserter_sink_payload_last_be;
wire ethmac_padding_inserter_sink_payload_error;
reg ethmac_padding_inserter_source_valid = 1'd0;
wire ethmac_padding_inserter_source_ready;
reg ethmac_padding_inserter_source_first = 1'd0;
reg ethmac_padding_inserter_source_last = 1'd0;
reg [7:0] ethmac_padding_inserter_source_payload_data = 8'd0;
reg ethmac_padding_inserter_source_payload_last_be = 1'd0;
reg ethmac_padding_inserter_source_payload_error = 1'd0;
reg [15:0] ethmac_padding_inserter_counter = 16'd1;
wire ethmac_padding_inserter_counter_done;
reg ethmac_padding_inserter_counter_reset = 1'd0;
reg ethmac_padding_inserter_counter_ce = 1'd0;
wire ethmac_padding_checker_sink_valid;
wire ethmac_padding_checker_sink_ready;
wire ethmac_padding_checker_sink_first;
wire ethmac_padding_checker_sink_last;
wire [7:0] ethmac_padding_checker_sink_payload_data;
wire ethmac_padding_checker_sink_payload_last_be;
wire ethmac_padding_checker_sink_payload_error;
wire ethmac_padding_checker_source_valid;
wire ethmac_padding_checker_source_ready;
wire ethmac_padding_checker_source_first;
wire ethmac_padding_checker_source_last;
wire [7:0] ethmac_padding_checker_source_payload_data;
wire ethmac_padding_checker_source_payload_last_be;
wire ethmac_padding_checker_source_payload_error;
wire ethmac_tx_last_be_sink_valid;
wire ethmac_tx_last_be_sink_ready;
wire ethmac_tx_last_be_sink_first;
wire ethmac_tx_last_be_sink_last;
wire [7:0] ethmac_tx_last_be_sink_payload_data;
wire ethmac_tx_last_be_sink_payload_last_be;
wire ethmac_tx_last_be_sink_payload_error;
wire ethmac_tx_last_be_source_valid;
wire ethmac_tx_last_be_source_ready;
reg ethmac_tx_last_be_source_first = 1'd0;
wire ethmac_tx_last_be_source_last;
wire [7:0] ethmac_tx_last_be_source_payload_data;
reg ethmac_tx_last_be_source_payload_last_be = 1'd0;
reg ethmac_tx_last_be_source_payload_error = 1'd0;
reg ethmac_tx_last_be_ongoing = 1'd1;
wire ethmac_rx_last_be_sink_valid;
wire ethmac_rx_last_be_sink_ready;
wire ethmac_rx_last_be_sink_first;
wire ethmac_rx_last_be_sink_last;
wire [7:0] ethmac_rx_last_be_sink_payload_data;
wire ethmac_rx_last_be_sink_payload_last_be;
wire ethmac_rx_last_be_sink_payload_error;
wire ethmac_rx_last_be_source_valid;
wire ethmac_rx_last_be_source_ready;
wire ethmac_rx_last_be_source_first;
wire ethmac_rx_last_be_source_last;
wire [7:0] ethmac_rx_last_be_source_payload_data;
reg ethmac_rx_last_be_source_payload_last_be = 1'd0;
wire ethmac_rx_last_be_source_payload_error;
wire ethmac_tx_converter_sink_valid;
wire ethmac_tx_converter_sink_ready;
wire ethmac_tx_converter_sink_first;
wire ethmac_tx_converter_sink_last;
wire [31:0] ethmac_tx_converter_sink_payload_data;
wire [3:0] ethmac_tx_converter_sink_payload_last_be;
wire [3:0] ethmac_tx_converter_sink_payload_error;
wire ethmac_tx_converter_source_valid;
wire ethmac_tx_converter_source_ready;
wire ethmac_tx_converter_source_first;
wire ethmac_tx_converter_source_last;
wire [7:0] ethmac_tx_converter_source_payload_data;
wire ethmac_tx_converter_source_payload_last_be;
wire ethmac_tx_converter_source_payload_error;
wire ethmac_tx_converter_converter_sink_valid;
wire ethmac_tx_converter_converter_sink_ready;
wire ethmac_tx_converter_converter_sink_first;
wire ethmac_tx_converter_converter_sink_last;
reg [39:0] ethmac_tx_converter_converter_sink_payload_data = 40'd0;
wire ethmac_tx_converter_converter_source_valid;
wire ethmac_tx_converter_converter_source_ready;
wire ethmac_tx_converter_converter_source_first;
wire ethmac_tx_converter_converter_source_last;
reg [9:0] ethmac_tx_converter_converter_source_payload_data = 10'd0;
wire ethmac_tx_converter_converter_source_payload_valid_token_count;
reg [1:0] ethmac_tx_converter_converter_mux = 2'd0;
wire ethmac_tx_converter_converter_first;
wire ethmac_tx_converter_converter_last;
wire ethmac_tx_converter_source_source_valid;
wire ethmac_tx_converter_source_source_ready;
wire ethmac_tx_converter_source_source_first;
wire ethmac_tx_converter_source_source_last;
wire [9:0] ethmac_tx_converter_source_source_payload_data;
wire ethmac_rx_converter_sink_valid;
wire ethmac_rx_converter_sink_ready;
wire ethmac_rx_converter_sink_first;
wire ethmac_rx_converter_sink_last;
wire [7:0] ethmac_rx_converter_sink_payload_data;
wire ethmac_rx_converter_sink_payload_last_be;
wire ethmac_rx_converter_sink_payload_error;
wire ethmac_rx_converter_source_valid;
wire ethmac_rx_converter_source_ready;
wire ethmac_rx_converter_source_first;
wire ethmac_rx_converter_source_last;
reg [31:0] ethmac_rx_converter_source_payload_data = 32'd0;
reg [3:0] ethmac_rx_converter_source_payload_last_be = 4'd0;
reg [3:0] ethmac_rx_converter_source_payload_error = 4'd0;
wire ethmac_rx_converter_converter_sink_valid;
wire ethmac_rx_converter_converter_sink_ready;
wire ethmac_rx_converter_converter_sink_first;
wire ethmac_rx_converter_converter_sink_last;
wire [9:0] ethmac_rx_converter_converter_sink_payload_data;
wire ethmac_rx_converter_converter_source_valid;
wire ethmac_rx_converter_converter_source_ready;
reg ethmac_rx_converter_converter_source_first = 1'd0;
reg ethmac_rx_converter_converter_source_last = 1'd0;
reg [39:0] ethmac_rx_converter_converter_source_payload_data = 40'd0;
reg [2:0] ethmac_rx_converter_converter_source_payload_valid_token_count = 3'd0;
reg [1:0] ethmac_rx_converter_converter_demux = 2'd0;
wire ethmac_rx_converter_converter_load_part;
reg ethmac_rx_converter_converter_strobe_all = 1'd0;
wire ethmac_rx_converter_source_source_valid;
wire ethmac_rx_converter_source_source_ready;
wire ethmac_rx_converter_source_source_first;
wire ethmac_rx_converter_source_source_last;
wire [39:0] ethmac_rx_converter_source_source_payload_data;
wire ethmac_tx_cdc_sink_valid;
wire ethmac_tx_cdc_sink_ready;
wire ethmac_tx_cdc_sink_first;
wire ethmac_tx_cdc_sink_last;
wire [31:0] ethmac_tx_cdc_sink_payload_data;
wire [3:0] ethmac_tx_cdc_sink_payload_last_be;
wire [3:0] ethmac_tx_cdc_sink_payload_error;
wire ethmac_tx_cdc_source_valid;
wire ethmac_tx_cdc_source_ready;
wire ethmac_tx_cdc_source_first;
wire ethmac_tx_cdc_source_last;
wire [31:0] ethmac_tx_cdc_source_payload_data;
wire [3:0] ethmac_tx_cdc_source_payload_last_be;
wire [3:0] ethmac_tx_cdc_source_payload_error;
wire ethmac_tx_cdc_asyncfifo_we;
wire ethmac_tx_cdc_asyncfifo_writable;
wire ethmac_tx_cdc_asyncfifo_re;
wire ethmac_tx_cdc_asyncfifo_readable;
wire [41:0] ethmac_tx_cdc_asyncfifo_din;
wire [41:0] ethmac_tx_cdc_asyncfifo_dout;
wire ethmac_tx_cdc_graycounter0_ce;
(* dont_touch = "true" *) reg [6:0] ethmac_tx_cdc_graycounter0_q = 7'd0;
wire [6:0] ethmac_tx_cdc_graycounter0_q_next;
reg [6:0] ethmac_tx_cdc_graycounter0_q_binary = 7'd0;
reg [6:0] ethmac_tx_cdc_graycounter0_q_next_binary = 7'd0;
wire ethmac_tx_cdc_graycounter1_ce;
(* dont_touch = "true" *) reg [6:0] ethmac_tx_cdc_graycounter1_q = 7'd0;
wire [6:0] ethmac_tx_cdc_graycounter1_q_next;
reg [6:0] ethmac_tx_cdc_graycounter1_q_binary = 7'd0;
reg [6:0] ethmac_tx_cdc_graycounter1_q_next_binary = 7'd0;
wire [6:0] ethmac_tx_cdc_produce_rdomain;
wire [6:0] ethmac_tx_cdc_consume_wdomain;
wire [5:0] ethmac_tx_cdc_wrport_adr;
wire [41:0] ethmac_tx_cdc_wrport_dat_r;
wire ethmac_tx_cdc_wrport_we;
wire [41:0] ethmac_tx_cdc_wrport_dat_w;
wire [5:0] ethmac_tx_cdc_rdport_adr;
wire [41:0] ethmac_tx_cdc_rdport_dat_r;
wire [31:0] ethmac_tx_cdc_fifo_in_payload_data;
wire [3:0] ethmac_tx_cdc_fifo_in_payload_last_be;
wire [3:0] ethmac_tx_cdc_fifo_in_payload_error;
wire ethmac_tx_cdc_fifo_in_first;
wire ethmac_tx_cdc_fifo_in_last;
wire [31:0] ethmac_tx_cdc_fifo_out_payload_data;
wire [3:0] ethmac_tx_cdc_fifo_out_payload_last_be;
wire [3:0] ethmac_tx_cdc_fifo_out_payload_error;
wire ethmac_tx_cdc_fifo_out_first;
wire ethmac_tx_cdc_fifo_out_last;
wire ethmac_rx_cdc_sink_valid;
wire ethmac_rx_cdc_sink_ready;
wire ethmac_rx_cdc_sink_first;
wire ethmac_rx_cdc_sink_last;
wire [31:0] ethmac_rx_cdc_sink_payload_data;
wire [3:0] ethmac_rx_cdc_sink_payload_last_be;
wire [3:0] ethmac_rx_cdc_sink_payload_error;
wire ethmac_rx_cdc_source_valid;
wire ethmac_rx_cdc_source_ready;
wire ethmac_rx_cdc_source_first;
wire ethmac_rx_cdc_source_last;
wire [31:0] ethmac_rx_cdc_source_payload_data;
wire [3:0] ethmac_rx_cdc_source_payload_last_be;
wire [3:0] ethmac_rx_cdc_source_payload_error;
wire ethmac_rx_cdc_asyncfifo_we;
wire ethmac_rx_cdc_asyncfifo_writable;
wire ethmac_rx_cdc_asyncfifo_re;
wire ethmac_rx_cdc_asyncfifo_readable;
wire [41:0] ethmac_rx_cdc_asyncfifo_din;
wire [41:0] ethmac_rx_cdc_asyncfifo_dout;
wire ethmac_rx_cdc_graycounter0_ce;
(* dont_touch = "true" *) reg [6:0] ethmac_rx_cdc_graycounter0_q = 7'd0;
wire [6:0] ethmac_rx_cdc_graycounter0_q_next;
reg [6:0] ethmac_rx_cdc_graycounter0_q_binary = 7'd0;
reg [6:0] ethmac_rx_cdc_graycounter0_q_next_binary = 7'd0;
wire ethmac_rx_cdc_graycounter1_ce;
(* dont_touch = "true" *) reg [6:0] ethmac_rx_cdc_graycounter1_q = 7'd0;
wire [6:0] ethmac_rx_cdc_graycounter1_q_next;
reg [6:0] ethmac_rx_cdc_graycounter1_q_binary = 7'd0;
reg [6:0] ethmac_rx_cdc_graycounter1_q_next_binary = 7'd0;
wire [6:0] ethmac_rx_cdc_produce_rdomain;
wire [6:0] ethmac_rx_cdc_consume_wdomain;
wire [5:0] ethmac_rx_cdc_wrport_adr;
wire [41:0] ethmac_rx_cdc_wrport_dat_r;
wire ethmac_rx_cdc_wrport_we;
wire [41:0] ethmac_rx_cdc_wrport_dat_w;
wire [5:0] ethmac_rx_cdc_rdport_adr;
wire [41:0] ethmac_rx_cdc_rdport_dat_r;
wire [31:0] ethmac_rx_cdc_fifo_in_payload_data;
wire [3:0] ethmac_rx_cdc_fifo_in_payload_last_be;
wire [3:0] ethmac_rx_cdc_fifo_in_payload_error;
wire ethmac_rx_cdc_fifo_in_first;
wire ethmac_rx_cdc_fifo_in_last;
wire [31:0] ethmac_rx_cdc_fifo_out_payload_data;
wire [3:0] ethmac_rx_cdc_fifo_out_payload_last_be;
wire [3:0] ethmac_rx_cdc_fifo_out_payload_error;
wire ethmac_rx_cdc_fifo_out_first;
wire ethmac_rx_cdc_fifo_out_last;
wire ethmac_sink_valid;
wire ethmac_sink_ready;
wire ethmac_sink_first;
wire ethmac_sink_last;
wire [31:0] ethmac_sink_payload_data;
wire [3:0] ethmac_sink_payload_last_be;
wire [3:0] ethmac_sink_payload_error;
wire ethmac_source_valid;
wire ethmac_source_ready;
wire ethmac_source_first;
wire ethmac_source_last;
wire [31:0] ethmac_source_payload_data;
wire [3:0] ethmac_source_payload_last_be;
wire [3:0] ethmac_source_payload_error;
wire [29:0] ethmac_bus_adr;
wire [31:0] ethmac_bus_dat_w;
wire [31:0] ethmac_bus_dat_r;
wire [3:0] ethmac_bus_sel;
wire ethmac_bus_cyc;
wire ethmac_bus_stb;
wire ethmac_bus_ack;
wire ethmac_bus_we;
wire [2:0] ethmac_bus_cti;
wire [1:0] ethmac_bus_bte;
wire ethmac_bus_err;
wire ethmac_writer_sink_sink_valid;
reg ethmac_writer_sink_sink_ready = 1'd1;
wire ethmac_writer_sink_sink_first;
wire ethmac_writer_sink_sink_last;
wire [31:0] ethmac_writer_sink_sink_payload_data;
wire [3:0] ethmac_writer_sink_sink_payload_last_be;
wire [3:0] ethmac_writer_sink_sink_payload_error;
wire ethmac_writer_slot_status;
wire [31:0] ethmac_writer_length_status;
reg [31:0] ethmac_writer_errors_status = 32'd0;
wire ethmac_writer_irq;
wire ethmac_writer_available_status;
wire ethmac_writer_available_pending;
wire ethmac_writer_available_trigger;
reg ethmac_writer_available_clear = 1'd0;
wire ethmac_writer_status_re;
wire ethmac_writer_status_r;
wire ethmac_writer_status_w;
wire ethmac_writer_pending_re;
wire ethmac_writer_pending_r;
wire ethmac_writer_pending_w;
reg ethmac_writer_storage_full = 1'd0;
wire ethmac_writer_storage;
reg ethmac_writer_re = 1'd0;
reg [2:0] ethmac_writer_increment = 3'd0;
reg [31:0] ethmac_writer_counter = 32'd0;
reg ethmac_writer_counter_reset = 1'd0;
reg ethmac_writer_counter_ce = 1'd0;
reg ethmac_writer_slot = 1'd0;
reg ethmac_writer_slot_ce = 1'd0;
reg ethmac_writer_ongoing = 1'd0;
reg ethmac_writer_fifo_sink_valid = 1'd0;
wire ethmac_writer_fifo_sink_ready;
reg ethmac_writer_fifo_sink_first = 1'd0;
reg ethmac_writer_fifo_sink_last = 1'd0;
wire ethmac_writer_fifo_sink_payload_slot;
wire [31:0] ethmac_writer_fifo_sink_payload_length;
wire ethmac_writer_fifo_source_valid;
wire ethmac_writer_fifo_source_ready;
wire ethmac_writer_fifo_source_first;
wire ethmac_writer_fifo_source_last;
wire ethmac_writer_fifo_source_payload_slot;
wire [31:0] ethmac_writer_fifo_source_payload_length;
wire ethmac_writer_fifo_syncfifo_we;
wire ethmac_writer_fifo_syncfifo_writable;
wire ethmac_writer_fifo_syncfifo_re;
wire ethmac_writer_fifo_syncfifo_readable;
wire [34:0] ethmac_writer_fifo_syncfifo_din;
wire [34:0] ethmac_writer_fifo_syncfifo_dout;
reg [1:0] ethmac_writer_fifo_level = 2'd0;
reg ethmac_writer_fifo_replace = 1'd0;
reg ethmac_writer_fifo_produce = 1'd0;
reg ethmac_writer_fifo_consume = 1'd0;
reg ethmac_writer_fifo_wrport_adr = 1'd0;
wire [34:0] ethmac_writer_fifo_wrport_dat_r;
wire ethmac_writer_fifo_wrport_we;
wire [34:0] ethmac_writer_fifo_wrport_dat_w;
wire ethmac_writer_fifo_do_read;
wire ethmac_writer_fifo_rdport_adr;
wire [34:0] ethmac_writer_fifo_rdport_dat_r;
wire ethmac_writer_fifo_fifo_in_payload_slot;
wire [31:0] ethmac_writer_fifo_fifo_in_payload_length;
wire ethmac_writer_fifo_fifo_in_first;
wire ethmac_writer_fifo_fifo_in_last;
wire ethmac_writer_fifo_fifo_out_payload_slot;
wire [31:0] ethmac_writer_fifo_fifo_out_payload_length;
wire ethmac_writer_fifo_fifo_out_first;
wire ethmac_writer_fifo_fifo_out_last;
reg [8:0] ethmac_writer_memory0_adr = 9'd0;
wire [31:0] ethmac_writer_memory0_dat_r;
reg ethmac_writer_memory0_we = 1'd0;
reg [31:0] ethmac_writer_memory0_dat_w = 32'd0;
reg [8:0] ethmac_writer_memory1_adr = 9'd0;
wire [31:0] ethmac_writer_memory1_dat_r;
reg ethmac_writer_memory1_we = 1'd0;
reg [31:0] ethmac_writer_memory1_dat_w = 32'd0;
reg ethmac_reader_source_source_valid = 1'd0;
wire ethmac_reader_source_source_ready;
reg ethmac_reader_source_source_first = 1'd0;
reg ethmac_reader_source_source_last = 1'd0;
reg [31:0] ethmac_reader_source_source_payload_data = 32'd0;
reg [3:0] ethmac_reader_source_source_payload_last_be = 4'd0;
reg [3:0] ethmac_reader_source_source_payload_error = 4'd0;
wire ethmac_reader_start_re;
wire ethmac_reader_start_r;
reg ethmac_reader_start_w = 1'd0;
wire ethmac_reader_ready_status;
wire [1:0] ethmac_reader_level_status;
reg ethmac_reader_slot_storage_full = 1'd0;
wire ethmac_reader_slot_storage;
reg ethmac_reader_slot_re = 1'd0;
reg [10:0] ethmac_reader_length_storage_full = 11'd0;
wire [10:0] ethmac_reader_length_storage;
reg ethmac_reader_length_re = 1'd0;
wire ethmac_reader_irq;
wire ethmac_reader_done_status;
reg ethmac_reader_done_pending = 1'd0;
reg ethmac_reader_done_trigger = 1'd0;
reg ethmac_reader_done_clear = 1'd0;
wire ethmac_reader_eventmanager_status_re;
wire ethmac_reader_eventmanager_status_r;
wire ethmac_reader_eventmanager_status_w;
wire ethmac_reader_eventmanager_pending_re;
wire ethmac_reader_eventmanager_pending_r;
wire ethmac_reader_eventmanager_pending_w;
reg ethmac_reader_eventmanager_storage_full = 1'd0;
wire ethmac_reader_eventmanager_storage;
reg ethmac_reader_eventmanager_re = 1'd0;
wire ethmac_reader_fifo_sink_valid;
wire ethmac_reader_fifo_sink_ready;
reg ethmac_reader_fifo_sink_first = 1'd0;
reg ethmac_reader_fifo_sink_last = 1'd0;
wire ethmac_reader_fifo_sink_payload_slot;
wire [10:0] ethmac_reader_fifo_sink_payload_length;
wire ethmac_reader_fifo_source_valid;
reg ethmac_reader_fifo_source_ready = 1'd0;
wire ethmac_reader_fifo_source_first;
wire ethmac_reader_fifo_source_last;
wire ethmac_reader_fifo_source_payload_slot;
wire [10:0] ethmac_reader_fifo_source_payload_length;
wire ethmac_reader_fifo_syncfifo_we;
wire ethmac_reader_fifo_syncfifo_writable;
wire ethmac_reader_fifo_syncfifo_re;
wire ethmac_reader_fifo_syncfifo_readable;
wire [13:0] ethmac_reader_fifo_syncfifo_din;
wire [13:0] ethmac_reader_fifo_syncfifo_dout;
reg [1:0] ethmac_reader_fifo_level = 2'd0;
reg ethmac_reader_fifo_replace = 1'd0;
reg ethmac_reader_fifo_produce = 1'd0;
reg ethmac_reader_fifo_consume = 1'd0;
reg ethmac_reader_fifo_wrport_adr = 1'd0;
wire [13:0] ethmac_reader_fifo_wrport_dat_r;
wire ethmac_reader_fifo_wrport_we;
wire [13:0] ethmac_reader_fifo_wrport_dat_w;
wire ethmac_reader_fifo_do_read;
wire ethmac_reader_fifo_rdport_adr;
wire [13:0] ethmac_reader_fifo_rdport_dat_r;
wire ethmac_reader_fifo_fifo_in_payload_slot;
wire [10:0] ethmac_reader_fifo_fifo_in_payload_length;
wire ethmac_reader_fifo_fifo_in_first;
wire ethmac_reader_fifo_fifo_in_last;
wire ethmac_reader_fifo_fifo_out_payload_slot;
wire [10:0] ethmac_reader_fifo_fifo_out_payload_length;
wire ethmac_reader_fifo_fifo_out_first;
wire ethmac_reader_fifo_fifo_out_last;
reg [10:0] ethmac_reader_counter = 11'd0;
reg ethmac_reader_counter_reset = 1'd0;
reg ethmac_reader_counter_ce = 1'd0;
wire ethmac_reader_last;
reg ethmac_reader_last_d = 1'd0;
wire [8:0] ethmac_reader_memory0_adr;
wire [31:0] ethmac_reader_memory0_dat_r;
wire [8:0] ethmac_reader_memory1_adr;
wire [31:0] ethmac_reader_memory1_dat_r;
wire ethmac_ev_irq;
wire [29:0] ethmac_sram0_bus_adr0;
wire [31:0] ethmac_sram0_bus_dat_w0;
wire [31:0] ethmac_sram0_bus_dat_r0;
wire [3:0] ethmac_sram0_bus_sel0;
wire ethmac_sram0_bus_cyc0;
wire ethmac_sram0_bus_stb0;
reg ethmac_sram0_bus_ack0 = 1'd0;
wire ethmac_sram0_bus_we0;
wire [2:0] ethmac_sram0_bus_cti0;
wire [1:0] ethmac_sram0_bus_bte0;
reg ethmac_sram0_bus_err0 = 1'd0;
wire [8:0] ethmac_sram0_adr0;
wire [31:0] ethmac_sram0_dat_r0;
wire [29:0] ethmac_sram1_bus_adr0;
wire [31:0] ethmac_sram1_bus_dat_w0;
wire [31:0] ethmac_sram1_bus_dat_r0;
wire [3:0] ethmac_sram1_bus_sel0;
wire ethmac_sram1_bus_cyc0;
wire ethmac_sram1_bus_stb0;
reg ethmac_sram1_bus_ack0 = 1'd0;
wire ethmac_sram1_bus_we0;
wire [2:0] ethmac_sram1_bus_cti0;
wire [1:0] ethmac_sram1_bus_bte0;
reg ethmac_sram1_bus_err0 = 1'd0;
wire [8:0] ethmac_sram1_adr0;
wire [31:0] ethmac_sram1_dat_r0;
wire [29:0] ethmac_sram0_bus_adr1;
wire [31:0] ethmac_sram0_bus_dat_w1;
wire [31:0] ethmac_sram0_bus_dat_r1;
wire [3:0] ethmac_sram0_bus_sel1;
wire ethmac_sram0_bus_cyc1;
wire ethmac_sram0_bus_stb1;
reg ethmac_sram0_bus_ack1 = 1'd0;
wire ethmac_sram0_bus_we1;
wire [2:0] ethmac_sram0_bus_cti1;
wire [1:0] ethmac_sram0_bus_bte1;
reg ethmac_sram0_bus_err1 = 1'd0;
wire [8:0] ethmac_sram0_adr1;
wire [31:0] ethmac_sram0_dat_r1;
reg [3:0] ethmac_sram0_we = 4'd0;
wire [31:0] ethmac_sram0_dat_w;
wire [29:0] ethmac_sram1_bus_adr1;
wire [31:0] ethmac_sram1_bus_dat_w1;
wire [31:0] ethmac_sram1_bus_dat_r1;
wire [3:0] ethmac_sram1_bus_sel1;
wire ethmac_sram1_bus_cyc1;
wire ethmac_sram1_bus_stb1;
reg ethmac_sram1_bus_ack1 = 1'd0;
wire ethmac_sram1_bus_we1;
wire [2:0] ethmac_sram1_bus_cti1;
wire [1:0] ethmac_sram1_bus_bte1;
reg ethmac_sram1_bus_err1 = 1'd0;
wire [8:0] ethmac_sram1_adr1;
wire [31:0] ethmac_sram1_dat_r1;
reg [3:0] ethmac_sram1_we = 4'd0;
wire [31:0] ethmac_sram1_dat_w;
reg [3:0] ethmac_slave_sel = 4'd0;
reg [3:0] ethmac_slave_sel_r = 4'd0;
reg [1:0] refresher_state = 2'd0;
reg [1:0] refresher_next_state = 2'd0;
reg [3:0] bankmachine0_state = 4'd0;
reg [3:0] bankmachine0_next_state = 4'd0;
reg [3:0] bankmachine1_state = 4'd0;
reg [3:0] bankmachine1_next_state = 4'd0;
reg [3:0] bankmachine2_state = 4'd0;
reg [3:0] bankmachine2_next_state = 4'd0;
reg [3:0] bankmachine3_state = 4'd0;
reg [3:0] bankmachine3_next_state = 4'd0;
reg [3:0] bankmachine4_state = 4'd0;
reg [3:0] bankmachine4_next_state = 4'd0;
reg [3:0] bankmachine5_state = 4'd0;
reg [3:0] bankmachine5_next_state = 4'd0;
reg [3:0] bankmachine6_state = 4'd0;
reg [3:0] bankmachine6_next_state = 4'd0;
reg [3:0] bankmachine7_state = 4'd0;
reg [3:0] bankmachine7_next_state = 4'd0;
reg [3:0] multiplexer_state = 4'd0;
reg [3:0] multiplexer_next_state = 4'd0;
wire [2:0] cba;
wire [20:0] rca;
wire roundrobin0_request;
wire roundrobin0_grant;
wire roundrobin0_ce;
wire roundrobin1_request;
wire roundrobin1_grant;
wire roundrobin1_ce;
wire roundrobin2_request;
wire roundrobin2_grant;
wire roundrobin2_ce;
wire roundrobin3_request;
wire roundrobin3_grant;
wire roundrobin3_ce;
wire roundrobin4_request;
wire roundrobin4_grant;
wire roundrobin4_ce;
wire roundrobin5_request;
wire roundrobin5_grant;
wire roundrobin5_ce;
wire roundrobin6_request;
wire roundrobin6_grant;
wire roundrobin6_ce;
wire roundrobin7_request;
wire roundrobin7_grant;
wire roundrobin7_ce;
reg [2:0] rbank = 3'd0;
reg [2:0] wbank = 3'd0;
reg new_master_wdata_ready0 = 1'd0;
reg new_master_wdata_ready1 = 1'd0;
reg new_master_wdata_ready2 = 1'd0;
reg new_master_rdata_valid0 = 1'd0;
reg new_master_rdata_valid1 = 1'd0;
reg new_master_rdata_valid2 = 1'd0;
reg new_master_rdata_valid3 = 1'd0;
reg new_master_rdata_valid4 = 1'd0;
reg new_master_rdata_valid5 = 1'd0;
reg new_master_rdata_valid6 = 1'd0;
reg [2:0] new_master_rbank0 = 3'd0;
reg [2:0] new_master_rbank1 = 3'd0;
reg [2:0] new_master_rbank2 = 3'd0;
reg [2:0] new_master_rbank3 = 3'd0;
reg [2:0] new_master_rbank4 = 3'd0;
reg [2:0] new_master_rbank5 = 3'd0;
reg [2:0] new_master_wbank0 = 3'd0;
reg [2:0] new_master_wbank1 = 3'd0;
reg [2:0] cache_state = 3'd0;
reg [2:0] cache_next_state = 3'd0;
reg [1:0] litedramwishbone2native_state = 2'd0;
reg [1:0] litedramwishbone2native_next_state = 2'd0;
reg liteethmacgap_state = 1'd0;
reg liteethmacgap_next_state = 1'd0;
reg [1:0] liteethmacpreambleinserter_state = 2'd0;
reg [1:0] liteethmacpreambleinserter_next_state = 2'd0;
reg liteethmacpreamblechecker_state = 1'd0;
reg liteethmacpreamblechecker_next_state = 1'd0;
reg [1:0] liteethmaccrc32inserter_state = 2'd0;
reg [1:0] liteethmaccrc32inserter_next_state = 2'd0;
reg [1:0] liteethmaccrc32checker_state = 2'd0;
reg [1:0] liteethmaccrc32checker_next_state = 2'd0;
reg liteethmacpaddinginserter_state = 1'd0;
reg liteethmacpaddinginserter_next_state = 1'd0;
reg [2:0] liteethmacsramwriter_state = 3'd0;
reg [2:0] liteethmacsramwriter_next_state = 3'd0;
reg [31:0] ethmac_writer_errors_status_next_value = 32'd0;
reg ethmac_writer_errors_status_next_value_ce = 1'd0;
reg [1:0] liteethmacsramreader_state = 2'd0;
reg [1:0] liteethmacsramreader_next_state = 2'd0;
wire wb_sdram_con_request;
wire wb_sdram_con_grant;
wire [29:0] netsoc_shared_adr;
wire [31:0] netsoc_shared_dat_w;
reg [31:0] netsoc_shared_dat_r = 32'd0;
wire [3:0] netsoc_shared_sel;
wire netsoc_shared_cyc;
wire netsoc_shared_stb;
reg netsoc_shared_ack = 1'd0;
wire netsoc_shared_we;
wire [2:0] netsoc_shared_cti;
wire [1:0] netsoc_shared_bte;
wire netsoc_shared_err;
wire [1:0] netsoc_request;
reg netsoc_grant = 1'd0;
reg [5:0] netsoc_slave_sel = 6'd0;
reg [5:0] netsoc_slave_sel_r = 6'd0;
reg netsoc_error = 1'd0;
wire netsoc_wait;
wire netsoc_done;
reg [16:0] netsoc_count = 17'd65536;
wire [13:0] netsoc_interface0_bank_bus_adr;
wire netsoc_interface0_bank_bus_we;
wire [7:0] netsoc_interface0_bank_bus_dat_w;
reg [7:0] netsoc_interface0_bank_bus_dat_r = 8'd0;
wire netsoc_csrbank0_leds_out0_re;
wire [3:0] netsoc_csrbank0_leds_out0_r;
wire [3:0] netsoc_csrbank0_leds_out0_w;
wire netsoc_csrbank0_switches_in_re;
wire [3:0] netsoc_csrbank0_switches_in_r;
wire [3:0] netsoc_csrbank0_switches_in_w;
wire netsoc_csrbank0_buttons_ev_enable0_re;
wire [3:0] netsoc_csrbank0_buttons_ev_enable0_r;
wire [3:0] netsoc_csrbank0_buttons_ev_enable0_w;
wire netsoc_csrbank0_sel;
wire [13:0] netsoc_interface1_bank_bus_adr;
wire netsoc_interface1_bank_bus_we;
wire [7:0] netsoc_interface1_bank_bus_dat_w;
reg [7:0] netsoc_interface1_bank_bus_dat_r = 8'd0;
wire netsoc_csrbank1_scratch3_re;
wire [7:0] netsoc_csrbank1_scratch3_r;
wire [7:0] netsoc_csrbank1_scratch3_w;
wire netsoc_csrbank1_scratch2_re;
wire [7:0] netsoc_csrbank1_scratch2_r;
wire [7:0] netsoc_csrbank1_scratch2_w;
wire netsoc_csrbank1_scratch1_re;
wire [7:0] netsoc_csrbank1_scratch1_r;
wire [7:0] netsoc_csrbank1_scratch1_w;
wire netsoc_csrbank1_scratch0_re;
wire [7:0] netsoc_csrbank1_scratch0_r;
wire [7:0] netsoc_csrbank1_scratch0_w;
wire netsoc_csrbank1_bus_errors3_re;
wire [7:0] netsoc_csrbank1_bus_errors3_r;
wire [7:0] netsoc_csrbank1_bus_errors3_w;
wire netsoc_csrbank1_bus_errors2_re;
wire [7:0] netsoc_csrbank1_bus_errors2_r;
wire [7:0] netsoc_csrbank1_bus_errors2_w;
wire netsoc_csrbank1_bus_errors1_re;
wire [7:0] netsoc_csrbank1_bus_errors1_r;
wire [7:0] netsoc_csrbank1_bus_errors1_w;
wire netsoc_csrbank1_bus_errors0_re;
wire [7:0] netsoc_csrbank1_bus_errors0_r;
wire [7:0] netsoc_csrbank1_bus_errors0_w;
wire netsoc_csrbank1_sel;
wire [13:0] netsoc_interface2_bank_bus_adr;
wire netsoc_interface2_bank_bus_we;
wire [7:0] netsoc_interface2_bank_bus_dat_w;
reg [7:0] netsoc_interface2_bank_bus_dat_r = 8'd0;
wire netsoc_csrbank2_half_sys8x_taps0_re;
wire [3:0] netsoc_csrbank2_half_sys8x_taps0_r;
wire [3:0] netsoc_csrbank2_half_sys8x_taps0_w;
wire netsoc_csrbank2_dly_sel0_re;
wire [1:0] netsoc_csrbank2_dly_sel0_r;
wire [1:0] netsoc_csrbank2_dly_sel0_w;
wire netsoc_csrbank2_sel;
wire [13:0] netsoc_interface3_bank_bus_adr;
wire netsoc_interface3_bank_bus_we;
wire [7:0] netsoc_interface3_bank_bus_dat_w;
reg [7:0] netsoc_interface3_bank_bus_dat_r = 8'd0;
wire netsoc_csrbank3_sram_writer_slot_re;
wire netsoc_csrbank3_sram_writer_slot_r;
wire netsoc_csrbank3_sram_writer_slot_w;
wire netsoc_csrbank3_sram_writer_length3_re;
wire [7:0] netsoc_csrbank3_sram_writer_length3_r;
wire [7:0] netsoc_csrbank3_sram_writer_length3_w;
wire netsoc_csrbank3_sram_writer_length2_re;
wire [7:0] netsoc_csrbank3_sram_writer_length2_r;
wire [7:0] netsoc_csrbank3_sram_writer_length2_w;
wire netsoc_csrbank3_sram_writer_length1_re;
wire [7:0] netsoc_csrbank3_sram_writer_length1_r;
wire [7:0] netsoc_csrbank3_sram_writer_length1_w;
wire netsoc_csrbank3_sram_writer_length0_re;
wire [7:0] netsoc_csrbank3_sram_writer_length0_r;
wire [7:0] netsoc_csrbank3_sram_writer_length0_w;
wire netsoc_csrbank3_sram_writer_errors3_re;
wire [7:0] netsoc_csrbank3_sram_writer_errors3_r;
wire [7:0] netsoc_csrbank3_sram_writer_errors3_w;
wire netsoc_csrbank3_sram_writer_errors2_re;
wire [7:0] netsoc_csrbank3_sram_writer_errors2_r;
wire [7:0] netsoc_csrbank3_sram_writer_errors2_w;
wire netsoc_csrbank3_sram_writer_errors1_re;
wire [7:0] netsoc_csrbank3_sram_writer_errors1_r;
wire [7:0] netsoc_csrbank3_sram_writer_errors1_w;
wire netsoc_csrbank3_sram_writer_errors0_re;
wire [7:0] netsoc_csrbank3_sram_writer_errors0_r;
wire [7:0] netsoc_csrbank3_sram_writer_errors0_w;
wire netsoc_csrbank3_sram_writer_ev_enable0_re;
wire netsoc_csrbank3_sram_writer_ev_enable0_r;
wire netsoc_csrbank3_sram_writer_ev_enable0_w;
wire netsoc_csrbank3_sram_reader_ready_re;
wire netsoc_csrbank3_sram_reader_ready_r;
wire netsoc_csrbank3_sram_reader_ready_w;
wire netsoc_csrbank3_sram_reader_level_re;
wire [1:0] netsoc_csrbank3_sram_reader_level_r;
wire [1:0] netsoc_csrbank3_sram_reader_level_w;
wire netsoc_csrbank3_sram_reader_slot0_re;
wire netsoc_csrbank3_sram_reader_slot0_r;
wire netsoc_csrbank3_sram_reader_slot0_w;
wire netsoc_csrbank3_sram_reader_length1_re;
wire [2:0] netsoc_csrbank3_sram_reader_length1_r;
wire [2:0] netsoc_csrbank3_sram_reader_length1_w;
wire netsoc_csrbank3_sram_reader_length0_re;
wire [7:0] netsoc_csrbank3_sram_reader_length0_r;
wire [7:0] netsoc_csrbank3_sram_reader_length0_w;
wire netsoc_csrbank3_sram_reader_ev_enable0_re;
wire netsoc_csrbank3_sram_reader_ev_enable0_r;
wire netsoc_csrbank3_sram_reader_ev_enable0_w;
wire netsoc_csrbank3_preamble_crc_re;
wire netsoc_csrbank3_preamble_crc_r;
wire netsoc_csrbank3_preamble_crc_w;
wire netsoc_csrbank3_preamble_errors3_re;
wire [7:0] netsoc_csrbank3_preamble_errors3_r;
wire [7:0] netsoc_csrbank3_preamble_errors3_w;
wire netsoc_csrbank3_preamble_errors2_re;
wire [7:0] netsoc_csrbank3_preamble_errors2_r;
wire [7:0] netsoc_csrbank3_preamble_errors2_w;
wire netsoc_csrbank3_preamble_errors1_re;
wire [7:0] netsoc_csrbank3_preamble_errors1_r;
wire [7:0] netsoc_csrbank3_preamble_errors1_w;
wire netsoc_csrbank3_preamble_errors0_re;
wire [7:0] netsoc_csrbank3_preamble_errors0_r;
wire [7:0] netsoc_csrbank3_preamble_errors0_w;
wire netsoc_csrbank3_crc_errors3_re;
wire [7:0] netsoc_csrbank3_crc_errors3_r;
wire [7:0] netsoc_csrbank3_crc_errors3_w;
wire netsoc_csrbank3_crc_errors2_re;
wire [7:0] netsoc_csrbank3_crc_errors2_r;
wire [7:0] netsoc_csrbank3_crc_errors2_w;
wire netsoc_csrbank3_crc_errors1_re;
wire [7:0] netsoc_csrbank3_crc_errors1_r;
wire [7:0] netsoc_csrbank3_crc_errors1_w;
wire netsoc_csrbank3_crc_errors0_re;
wire [7:0] netsoc_csrbank3_crc_errors0_r;
wire [7:0] netsoc_csrbank3_crc_errors0_w;
wire netsoc_csrbank3_sel;
wire [13:0] netsoc_interface4_bank_bus_adr;
wire netsoc_interface4_bank_bus_we;
wire [7:0] netsoc_interface4_bank_bus_dat_w;
reg [7:0] netsoc_interface4_bank_bus_dat_r = 8'd0;
wire netsoc_csrbank4_crg_reset0_re;
wire netsoc_csrbank4_crg_reset0_r;
wire netsoc_csrbank4_crg_reset0_w;
wire netsoc_csrbank4_mdio_w0_re;
wire [2:0] netsoc_csrbank4_mdio_w0_r;
wire [2:0] netsoc_csrbank4_mdio_w0_w;
wire netsoc_csrbank4_mdio_r_re;
wire netsoc_csrbank4_mdio_r_r;
wire netsoc_csrbank4_mdio_r_w;
wire netsoc_csrbank4_sel;
wire [13:0] netsoc_sram_bus_adr;
wire netsoc_sram_bus_we;
wire [7:0] netsoc_sram_bus_dat_w;
reg [7:0] netsoc_sram_bus_dat_r = 8'd0;
wire [2:0] netsoc_adr;
wire [7:0] netsoc_dat_r;
wire netsoc_sel;
reg netsoc_sel_r = 1'd0;
wire [13:0] netsoc_interface5_bank_bus_adr;
wire netsoc_interface5_bank_bus_we;
wire [7:0] netsoc_interface5_bank_bus_dat_w;
reg [7:0] netsoc_interface5_bank_bus_dat_r = 8'd0;
wire netsoc_csrbank5_dna_id7_re;
wire netsoc_csrbank5_dna_id7_r;
wire netsoc_csrbank5_dna_id7_w;
wire netsoc_csrbank5_dna_id6_re;
wire [7:0] netsoc_csrbank5_dna_id6_r;
wire [7:0] netsoc_csrbank5_dna_id6_w;
wire netsoc_csrbank5_dna_id5_re;
wire [7:0] netsoc_csrbank5_dna_id5_r;
wire [7:0] netsoc_csrbank5_dna_id5_w;
wire netsoc_csrbank5_dna_id4_re;
wire [7:0] netsoc_csrbank5_dna_id4_r;
wire [7:0] netsoc_csrbank5_dna_id4_w;
wire netsoc_csrbank5_dna_id3_re;
wire [7:0] netsoc_csrbank5_dna_id3_r;
wire [7:0] netsoc_csrbank5_dna_id3_w;
wire netsoc_csrbank5_dna_id2_re;
wire [7:0] netsoc_csrbank5_dna_id2_r;
wire [7:0] netsoc_csrbank5_dna_id2_w;
wire netsoc_csrbank5_dna_id1_re;
wire [7:0] netsoc_csrbank5_dna_id1_r;
wire [7:0] netsoc_csrbank5_dna_id1_w;
wire netsoc_csrbank5_dna_id0_re;
wire [7:0] netsoc_csrbank5_dna_id0_r;
wire [7:0] netsoc_csrbank5_dna_id0_w;
wire netsoc_csrbank5_git_commit19_re;
wire [7:0] netsoc_csrbank5_git_commit19_r;
wire [7:0] netsoc_csrbank5_git_commit19_w;
wire netsoc_csrbank5_git_commit18_re;
wire [7:0] netsoc_csrbank5_git_commit18_r;
wire [7:0] netsoc_csrbank5_git_commit18_w;
wire netsoc_csrbank5_git_commit17_re;
wire [7:0] netsoc_csrbank5_git_commit17_r;
wire [7:0] netsoc_csrbank5_git_commit17_w;
wire netsoc_csrbank5_git_commit16_re;
wire [7:0] netsoc_csrbank5_git_commit16_r;
wire [7:0] netsoc_csrbank5_git_commit16_w;
wire netsoc_csrbank5_git_commit15_re;
wire [7:0] netsoc_csrbank5_git_commit15_r;
wire [7:0] netsoc_csrbank5_git_commit15_w;
wire netsoc_csrbank5_git_commit14_re;
wire [7:0] netsoc_csrbank5_git_commit14_r;
wire [7:0] netsoc_csrbank5_git_commit14_w;
wire netsoc_csrbank5_git_commit13_re;
wire [7:0] netsoc_csrbank5_git_commit13_r;
wire [7:0] netsoc_csrbank5_git_commit13_w;
wire netsoc_csrbank5_git_commit12_re;
wire [7:0] netsoc_csrbank5_git_commit12_r;
wire [7:0] netsoc_csrbank5_git_commit12_w;
wire netsoc_csrbank5_git_commit11_re;
wire [7:0] netsoc_csrbank5_git_commit11_r;
wire [7:0] netsoc_csrbank5_git_commit11_w;
wire netsoc_csrbank5_git_commit10_re;
wire [7:0] netsoc_csrbank5_git_commit10_r;
wire [7:0] netsoc_csrbank5_git_commit10_w;
wire netsoc_csrbank5_git_commit9_re;
wire [7:0] netsoc_csrbank5_git_commit9_r;
wire [7:0] netsoc_csrbank5_git_commit9_w;
wire netsoc_csrbank5_git_commit8_re;
wire [7:0] netsoc_csrbank5_git_commit8_r;
wire [7:0] netsoc_csrbank5_git_commit8_w;
wire netsoc_csrbank5_git_commit7_re;
wire [7:0] netsoc_csrbank5_git_commit7_r;
wire [7:0] netsoc_csrbank5_git_commit7_w;
wire netsoc_csrbank5_git_commit6_re;
wire [7:0] netsoc_csrbank5_git_commit6_r;
wire [7:0] netsoc_csrbank5_git_commit6_w;
wire netsoc_csrbank5_git_commit5_re;
wire [7:0] netsoc_csrbank5_git_commit5_r;
wire [7:0] netsoc_csrbank5_git_commit5_w;
wire netsoc_csrbank5_git_commit4_re;
wire [7:0] netsoc_csrbank5_git_commit4_r;
wire [7:0] netsoc_csrbank5_git_commit4_w;
wire netsoc_csrbank5_git_commit3_re;
wire [7:0] netsoc_csrbank5_git_commit3_r;
wire [7:0] netsoc_csrbank5_git_commit3_w;
wire netsoc_csrbank5_git_commit2_re;
wire [7:0] netsoc_csrbank5_git_commit2_r;
wire [7:0] netsoc_csrbank5_git_commit2_w;
wire netsoc_csrbank5_git_commit1_re;
wire [7:0] netsoc_csrbank5_git_commit1_r;
wire [7:0] netsoc_csrbank5_git_commit1_w;
wire netsoc_csrbank5_git_commit0_re;
wire [7:0] netsoc_csrbank5_git_commit0_r;
wire [7:0] netsoc_csrbank5_git_commit0_w;
wire netsoc_csrbank5_platform_platform7_re;
wire [7:0] netsoc_csrbank5_platform_platform7_r;
wire [7:0] netsoc_csrbank5_platform_platform7_w;
wire netsoc_csrbank5_platform_platform6_re;
wire [7:0] netsoc_csrbank5_platform_platform6_r;
wire [7:0] netsoc_csrbank5_platform_platform6_w;
wire netsoc_csrbank5_platform_platform5_re;
wire [7:0] netsoc_csrbank5_platform_platform5_r;
wire [7:0] netsoc_csrbank5_platform_platform5_w;
wire netsoc_csrbank5_platform_platform4_re;
wire [7:0] netsoc_csrbank5_platform_platform4_r;
wire [7:0] netsoc_csrbank5_platform_platform4_w;
wire netsoc_csrbank5_platform_platform3_re;
wire [7:0] netsoc_csrbank5_platform_platform3_r;
wire [7:0] netsoc_csrbank5_platform_platform3_w;
wire netsoc_csrbank5_platform_platform2_re;
wire [7:0] netsoc_csrbank5_platform_platform2_r;
wire [7:0] netsoc_csrbank5_platform_platform2_w;
wire netsoc_csrbank5_platform_platform1_re;
wire [7:0] netsoc_csrbank5_platform_platform1_r;
wire [7:0] netsoc_csrbank5_platform_platform1_w;
wire netsoc_csrbank5_platform_platform0_re;
wire [7:0] netsoc_csrbank5_platform_platform0_r;
wire [7:0] netsoc_csrbank5_platform_platform0_w;
wire netsoc_csrbank5_platform_target7_re;
wire [7:0] netsoc_csrbank5_platform_target7_r;
wire [7:0] netsoc_csrbank5_platform_target7_w;
wire netsoc_csrbank5_platform_target6_re;
wire [7:0] netsoc_csrbank5_platform_target6_r;
wire [7:0] netsoc_csrbank5_platform_target6_w;
wire netsoc_csrbank5_platform_target5_re;
wire [7:0] netsoc_csrbank5_platform_target5_r;
wire [7:0] netsoc_csrbank5_platform_target5_w;
wire netsoc_csrbank5_platform_target4_re;
wire [7:0] netsoc_csrbank5_platform_target4_r;
wire [7:0] netsoc_csrbank5_platform_target4_w;
wire netsoc_csrbank5_platform_target3_re;
wire [7:0] netsoc_csrbank5_platform_target3_r;
wire [7:0] netsoc_csrbank5_platform_target3_w;
wire netsoc_csrbank5_platform_target2_re;
wire [7:0] netsoc_csrbank5_platform_target2_r;
wire [7:0] netsoc_csrbank5_platform_target2_w;
wire netsoc_csrbank5_platform_target1_re;
wire [7:0] netsoc_csrbank5_platform_target1_r;
wire [7:0] netsoc_csrbank5_platform_target1_w;
wire netsoc_csrbank5_platform_target0_re;
wire [7:0] netsoc_csrbank5_platform_target0_r;
wire [7:0] netsoc_csrbank5_platform_target0_w;
wire netsoc_csrbank5_xadc_temperature1_re;
wire [3:0] netsoc_csrbank5_xadc_temperature1_r;
wire [3:0] netsoc_csrbank5_xadc_temperature1_w;
wire netsoc_csrbank5_xadc_temperature0_re;
wire [7:0] netsoc_csrbank5_xadc_temperature0_r;
wire [7:0] netsoc_csrbank5_xadc_temperature0_w;
wire netsoc_csrbank5_xadc_vccint1_re;
wire [3:0] netsoc_csrbank5_xadc_vccint1_r;
wire [3:0] netsoc_csrbank5_xadc_vccint1_w;
wire netsoc_csrbank5_xadc_vccint0_re;
wire [7:0] netsoc_csrbank5_xadc_vccint0_r;
wire [7:0] netsoc_csrbank5_xadc_vccint0_w;
wire netsoc_csrbank5_xadc_vccaux1_re;
wire [3:0] netsoc_csrbank5_xadc_vccaux1_r;
wire [3:0] netsoc_csrbank5_xadc_vccaux1_w;
wire netsoc_csrbank5_xadc_vccaux0_re;
wire [7:0] netsoc_csrbank5_xadc_vccaux0_r;
wire [7:0] netsoc_csrbank5_xadc_vccaux0_w;
wire netsoc_csrbank5_xadc_vccbram1_re;
wire [3:0] netsoc_csrbank5_xadc_vccbram1_r;
wire [3:0] netsoc_csrbank5_xadc_vccbram1_w;
wire netsoc_csrbank5_xadc_vccbram0_re;
wire [7:0] netsoc_csrbank5_xadc_vccbram0_r;
wire [7:0] netsoc_csrbank5_xadc_vccbram0_w;
wire netsoc_csrbank5_sel;
wire [13:0] netsoc_interface6_bank_bus_adr;
wire netsoc_interface6_bank_bus_we;
wire [7:0] netsoc_interface6_bank_bus_dat_w;
reg [7:0] netsoc_interface6_bank_bus_dat_r = 8'd0;
wire netsoc_csrbank6_dfii_control0_re;
wire [3:0] netsoc_csrbank6_dfii_control0_r;
wire [3:0] netsoc_csrbank6_dfii_control0_w;
wire netsoc_csrbank6_dfii_pi0_command0_re;
wire [5:0] netsoc_csrbank6_dfii_pi0_command0_r;
wire [5:0] netsoc_csrbank6_dfii_pi0_command0_w;
wire netsoc_csrbank6_dfii_pi0_address1_re;
wire [5:0] netsoc_csrbank6_dfii_pi0_address1_r;
wire [5:0] netsoc_csrbank6_dfii_pi0_address1_w;
wire netsoc_csrbank6_dfii_pi0_address0_re;
wire [7:0] netsoc_csrbank6_dfii_pi0_address0_r;
wire [7:0] netsoc_csrbank6_dfii_pi0_address0_w;
wire netsoc_csrbank6_dfii_pi0_baddress0_re;
wire [2:0] netsoc_csrbank6_dfii_pi0_baddress0_r;
wire [2:0] netsoc_csrbank6_dfii_pi0_baddress0_w;
wire netsoc_csrbank6_dfii_pi0_wrdata3_re;
wire [7:0] netsoc_csrbank6_dfii_pi0_wrdata3_r;
wire [7:0] netsoc_csrbank6_dfii_pi0_wrdata3_w;
wire netsoc_csrbank6_dfii_pi0_wrdata2_re;
wire [7:0] netsoc_csrbank6_dfii_pi0_wrdata2_r;
wire [7:0] netsoc_csrbank6_dfii_pi0_wrdata2_w;
wire netsoc_csrbank6_dfii_pi0_wrdata1_re;
wire [7:0] netsoc_csrbank6_dfii_pi0_wrdata1_r;
wire [7:0] netsoc_csrbank6_dfii_pi0_wrdata1_w;
wire netsoc_csrbank6_dfii_pi0_wrdata0_re;
wire [7:0] netsoc_csrbank6_dfii_pi0_wrdata0_r;
wire [7:0] netsoc_csrbank6_dfii_pi0_wrdata0_w;
wire netsoc_csrbank6_dfii_pi0_rddata3_re;
wire [7:0] netsoc_csrbank6_dfii_pi0_rddata3_r;
wire [7:0] netsoc_csrbank6_dfii_pi0_rddata3_w;
wire netsoc_csrbank6_dfii_pi0_rddata2_re;
wire [7:0] netsoc_csrbank6_dfii_pi0_rddata2_r;
wire [7:0] netsoc_csrbank6_dfii_pi0_rddata2_w;
wire netsoc_csrbank6_dfii_pi0_rddata1_re;
wire [7:0] netsoc_csrbank6_dfii_pi0_rddata1_r;
wire [7:0] netsoc_csrbank6_dfii_pi0_rddata1_w;
wire netsoc_csrbank6_dfii_pi0_rddata0_re;
wire [7:0] netsoc_csrbank6_dfii_pi0_rddata0_r;
wire [7:0] netsoc_csrbank6_dfii_pi0_rddata0_w;
wire netsoc_csrbank6_dfii_pi1_command0_re;
wire [5:0] netsoc_csrbank6_dfii_pi1_command0_r;
wire [5:0] netsoc_csrbank6_dfii_pi1_command0_w;
wire netsoc_csrbank6_dfii_pi1_address1_re;
wire [5:0] netsoc_csrbank6_dfii_pi1_address1_r;
wire [5:0] netsoc_csrbank6_dfii_pi1_address1_w;
wire netsoc_csrbank6_dfii_pi1_address0_re;
wire [7:0] netsoc_csrbank6_dfii_pi1_address0_r;
wire [7:0] netsoc_csrbank6_dfii_pi1_address0_w;
wire netsoc_csrbank6_dfii_pi1_baddress0_re;
wire [2:0] netsoc_csrbank6_dfii_pi1_baddress0_r;
wire [2:0] netsoc_csrbank6_dfii_pi1_baddress0_w;
wire netsoc_csrbank6_dfii_pi1_wrdata3_re;
wire [7:0] netsoc_csrbank6_dfii_pi1_wrdata3_r;
wire [7:0] netsoc_csrbank6_dfii_pi1_wrdata3_w;
wire netsoc_csrbank6_dfii_pi1_wrdata2_re;
wire [7:0] netsoc_csrbank6_dfii_pi1_wrdata2_r;
wire [7:0] netsoc_csrbank6_dfii_pi1_wrdata2_w;
wire netsoc_csrbank6_dfii_pi1_wrdata1_re;
wire [7:0] netsoc_csrbank6_dfii_pi1_wrdata1_r;
wire [7:0] netsoc_csrbank6_dfii_pi1_wrdata1_w;
wire netsoc_csrbank6_dfii_pi1_wrdata0_re;
wire [7:0] netsoc_csrbank6_dfii_pi1_wrdata0_r;
wire [7:0] netsoc_csrbank6_dfii_pi1_wrdata0_w;
wire netsoc_csrbank6_dfii_pi1_rddata3_re;
wire [7:0] netsoc_csrbank6_dfii_pi1_rddata3_r;
wire [7:0] netsoc_csrbank6_dfii_pi1_rddata3_w;
wire netsoc_csrbank6_dfii_pi1_rddata2_re;
wire [7:0] netsoc_csrbank6_dfii_pi1_rddata2_r;
wire [7:0] netsoc_csrbank6_dfii_pi1_rddata2_w;
wire netsoc_csrbank6_dfii_pi1_rddata1_re;
wire [7:0] netsoc_csrbank6_dfii_pi1_rddata1_r;
wire [7:0] netsoc_csrbank6_dfii_pi1_rddata1_w;
wire netsoc_csrbank6_dfii_pi1_rddata0_re;
wire [7:0] netsoc_csrbank6_dfii_pi1_rddata0_r;
wire [7:0] netsoc_csrbank6_dfii_pi1_rddata0_w;
wire netsoc_csrbank6_dfii_pi2_command0_re;
wire [5:0] netsoc_csrbank6_dfii_pi2_command0_r;
wire [5:0] netsoc_csrbank6_dfii_pi2_command0_w;
wire netsoc_csrbank6_dfii_pi2_address1_re;
wire [5:0] netsoc_csrbank6_dfii_pi2_address1_r;
wire [5:0] netsoc_csrbank6_dfii_pi2_address1_w;
wire netsoc_csrbank6_dfii_pi2_address0_re;
wire [7:0] netsoc_csrbank6_dfii_pi2_address0_r;
wire [7:0] netsoc_csrbank6_dfii_pi2_address0_w;
wire netsoc_csrbank6_dfii_pi2_baddress0_re;
wire [2:0] netsoc_csrbank6_dfii_pi2_baddress0_r;
wire [2:0] netsoc_csrbank6_dfii_pi2_baddress0_w;
wire netsoc_csrbank6_dfii_pi2_wrdata3_re;
wire [7:0] netsoc_csrbank6_dfii_pi2_wrdata3_r;
wire [7:0] netsoc_csrbank6_dfii_pi2_wrdata3_w;
wire netsoc_csrbank6_dfii_pi2_wrdata2_re;
wire [7:0] netsoc_csrbank6_dfii_pi2_wrdata2_r;
wire [7:0] netsoc_csrbank6_dfii_pi2_wrdata2_w;
wire netsoc_csrbank6_dfii_pi2_wrdata1_re;
wire [7:0] netsoc_csrbank6_dfii_pi2_wrdata1_r;
wire [7:0] netsoc_csrbank6_dfii_pi2_wrdata1_w;
wire netsoc_csrbank6_dfii_pi2_wrdata0_re;
wire [7:0] netsoc_csrbank6_dfii_pi2_wrdata0_r;
wire [7:0] netsoc_csrbank6_dfii_pi2_wrdata0_w;
wire netsoc_csrbank6_dfii_pi2_rddata3_re;
wire [7:0] netsoc_csrbank6_dfii_pi2_rddata3_r;
wire [7:0] netsoc_csrbank6_dfii_pi2_rddata3_w;
wire netsoc_csrbank6_dfii_pi2_rddata2_re;
wire [7:0] netsoc_csrbank6_dfii_pi2_rddata2_r;
wire [7:0] netsoc_csrbank6_dfii_pi2_rddata2_w;
wire netsoc_csrbank6_dfii_pi2_rddata1_re;
wire [7:0] netsoc_csrbank6_dfii_pi2_rddata1_r;
wire [7:0] netsoc_csrbank6_dfii_pi2_rddata1_w;
wire netsoc_csrbank6_dfii_pi2_rddata0_re;
wire [7:0] netsoc_csrbank6_dfii_pi2_rddata0_r;
wire [7:0] netsoc_csrbank6_dfii_pi2_rddata0_w;
wire netsoc_csrbank6_dfii_pi3_command0_re;
wire [5:0] netsoc_csrbank6_dfii_pi3_command0_r;
wire [5:0] netsoc_csrbank6_dfii_pi3_command0_w;
wire netsoc_csrbank6_dfii_pi3_address1_re;
wire [5:0] netsoc_csrbank6_dfii_pi3_address1_r;
wire [5:0] netsoc_csrbank6_dfii_pi3_address1_w;
wire netsoc_csrbank6_dfii_pi3_address0_re;
wire [7:0] netsoc_csrbank6_dfii_pi3_address0_r;
wire [7:0] netsoc_csrbank6_dfii_pi3_address0_w;
wire netsoc_csrbank6_dfii_pi3_baddress0_re;
wire [2:0] netsoc_csrbank6_dfii_pi3_baddress0_r;
wire [2:0] netsoc_csrbank6_dfii_pi3_baddress0_w;
wire netsoc_csrbank6_dfii_pi3_wrdata3_re;
wire [7:0] netsoc_csrbank6_dfii_pi3_wrdata3_r;
wire [7:0] netsoc_csrbank6_dfii_pi3_wrdata3_w;
wire netsoc_csrbank6_dfii_pi3_wrdata2_re;
wire [7:0] netsoc_csrbank6_dfii_pi3_wrdata2_r;
wire [7:0] netsoc_csrbank6_dfii_pi3_wrdata2_w;
wire netsoc_csrbank6_dfii_pi3_wrdata1_re;
wire [7:0] netsoc_csrbank6_dfii_pi3_wrdata1_r;
wire [7:0] netsoc_csrbank6_dfii_pi3_wrdata1_w;
wire netsoc_csrbank6_dfii_pi3_wrdata0_re;
wire [7:0] netsoc_csrbank6_dfii_pi3_wrdata0_r;
wire [7:0] netsoc_csrbank6_dfii_pi3_wrdata0_w;
wire netsoc_csrbank6_dfii_pi3_rddata3_re;
wire [7:0] netsoc_csrbank6_dfii_pi3_rddata3_r;
wire [7:0] netsoc_csrbank6_dfii_pi3_rddata3_w;
wire netsoc_csrbank6_dfii_pi3_rddata2_re;
wire [7:0] netsoc_csrbank6_dfii_pi3_rddata2_r;
wire [7:0] netsoc_csrbank6_dfii_pi3_rddata2_w;
wire netsoc_csrbank6_dfii_pi3_rddata1_re;
wire [7:0] netsoc_csrbank6_dfii_pi3_rddata1_r;
wire [7:0] netsoc_csrbank6_dfii_pi3_rddata1_w;
wire netsoc_csrbank6_dfii_pi3_rddata0_re;
wire [7:0] netsoc_csrbank6_dfii_pi3_rddata0_r;
wire [7:0] netsoc_csrbank6_dfii_pi3_rddata0_w;
wire netsoc_csrbank6_controller_bandwidth_nreads2_re;
wire [7:0] netsoc_csrbank6_controller_bandwidth_nreads2_r;
wire [7:0] netsoc_csrbank6_controller_bandwidth_nreads2_w;
wire netsoc_csrbank6_controller_bandwidth_nreads1_re;
wire [7:0] netsoc_csrbank6_controller_bandwidth_nreads1_r;
wire [7:0] netsoc_csrbank6_controller_bandwidth_nreads1_w;
wire netsoc_csrbank6_controller_bandwidth_nreads0_re;
wire [7:0] netsoc_csrbank6_controller_bandwidth_nreads0_r;
wire [7:0] netsoc_csrbank6_controller_bandwidth_nreads0_w;
wire netsoc_csrbank6_controller_bandwidth_nwrites2_re;
wire [7:0] netsoc_csrbank6_controller_bandwidth_nwrites2_r;
wire [7:0] netsoc_csrbank6_controller_bandwidth_nwrites2_w;
wire netsoc_csrbank6_controller_bandwidth_nwrites1_re;
wire [7:0] netsoc_csrbank6_controller_bandwidth_nwrites1_r;
wire [7:0] netsoc_csrbank6_controller_bandwidth_nwrites1_w;
wire netsoc_csrbank6_controller_bandwidth_nwrites0_re;
wire [7:0] netsoc_csrbank6_controller_bandwidth_nwrites0_r;
wire [7:0] netsoc_csrbank6_controller_bandwidth_nwrites0_w;
wire netsoc_csrbank6_controller_bandwidth_data_width_re;
wire [7:0] netsoc_csrbank6_controller_bandwidth_data_width_r;
wire [7:0] netsoc_csrbank6_controller_bandwidth_data_width_w;
wire netsoc_csrbank6_sel;
wire [13:0] netsoc_interface7_bank_bus_adr;
wire netsoc_interface7_bank_bus_we;
wire [7:0] netsoc_interface7_bank_bus_dat_w;
reg [7:0] netsoc_interface7_bank_bus_dat_r = 8'd0;
wire netsoc_csrbank7_bitbang0_re;
wire [3:0] netsoc_csrbank7_bitbang0_r;
wire [3:0] netsoc_csrbank7_bitbang0_w;
wire netsoc_csrbank7_miso_re;
wire netsoc_csrbank7_miso_r;
wire netsoc_csrbank7_miso_w;
wire netsoc_csrbank7_bitbang_en0_re;
wire netsoc_csrbank7_bitbang_en0_r;
wire netsoc_csrbank7_bitbang_en0_w;
wire netsoc_csrbank7_sel;
wire [13:0] netsoc_interface8_bank_bus_adr;
wire netsoc_interface8_bank_bus_we;
wire [7:0] netsoc_interface8_bank_bus_dat_w;
reg [7:0] netsoc_interface8_bank_bus_dat_r = 8'd0;
wire netsoc_csrbank8_load3_re;
wire [7:0] netsoc_csrbank8_load3_r;
wire [7:0] netsoc_csrbank8_load3_w;
wire netsoc_csrbank8_load2_re;
wire [7:0] netsoc_csrbank8_load2_r;
wire [7:0] netsoc_csrbank8_load2_w;
wire netsoc_csrbank8_load1_re;
wire [7:0] netsoc_csrbank8_load1_r;
wire [7:0] netsoc_csrbank8_load1_w;
wire netsoc_csrbank8_load0_re;
wire [7:0] netsoc_csrbank8_load0_r;
wire [7:0] netsoc_csrbank8_load0_w;
wire netsoc_csrbank8_reload3_re;
wire [7:0] netsoc_csrbank8_reload3_r;
wire [7:0] netsoc_csrbank8_reload3_w;
wire netsoc_csrbank8_reload2_re;
wire [7:0] netsoc_csrbank8_reload2_r;
wire [7:0] netsoc_csrbank8_reload2_w;
wire netsoc_csrbank8_reload1_re;
wire [7:0] netsoc_csrbank8_reload1_r;
wire [7:0] netsoc_csrbank8_reload1_w;
wire netsoc_csrbank8_reload0_re;
wire [7:0] netsoc_csrbank8_reload0_r;
wire [7:0] netsoc_csrbank8_reload0_w;
wire netsoc_csrbank8_en0_re;
wire netsoc_csrbank8_en0_r;
wire netsoc_csrbank8_en0_w;
wire netsoc_csrbank8_value3_re;
wire [7:0] netsoc_csrbank8_value3_r;
wire [7:0] netsoc_csrbank8_value3_w;
wire netsoc_csrbank8_value2_re;
wire [7:0] netsoc_csrbank8_value2_r;
wire [7:0] netsoc_csrbank8_value2_w;
wire netsoc_csrbank8_value1_re;
wire [7:0] netsoc_csrbank8_value1_r;
wire [7:0] netsoc_csrbank8_value1_w;
wire netsoc_csrbank8_value0_re;
wire [7:0] netsoc_csrbank8_value0_r;
wire [7:0] netsoc_csrbank8_value0_w;
wire netsoc_csrbank8_ev_enable0_re;
wire netsoc_csrbank8_ev_enable0_r;
wire netsoc_csrbank8_ev_enable0_w;
wire netsoc_csrbank8_sel;
wire [13:0] netsoc_interface9_bank_bus_adr;
wire netsoc_interface9_bank_bus_we;
wire [7:0] netsoc_interface9_bank_bus_dat_w;
reg [7:0] netsoc_interface9_bank_bus_dat_r = 8'd0;
wire netsoc_csrbank9_txfull_re;
wire netsoc_csrbank9_txfull_r;
wire netsoc_csrbank9_txfull_w;
wire netsoc_csrbank9_rxempty_re;
wire netsoc_csrbank9_rxempty_r;
wire netsoc_csrbank9_rxempty_w;
wire netsoc_csrbank9_ev_enable0_re;
wire [1:0] netsoc_csrbank9_ev_enable0_r;
wire [1:0] netsoc_csrbank9_ev_enable0_w;
wire netsoc_csrbank9_sel;
wire [13:0] netsoc_interface10_bank_bus_adr;
wire netsoc_interface10_bank_bus_we;
wire [7:0] netsoc_interface10_bank_bus_dat_w;
reg [7:0] netsoc_interface10_bank_bus_dat_r = 8'd0;
wire netsoc_csrbank10_tuning_word3_re;
wire [7:0] netsoc_csrbank10_tuning_word3_r;
wire [7:0] netsoc_csrbank10_tuning_word3_w;
wire netsoc_csrbank10_tuning_word2_re;
wire [7:0] netsoc_csrbank10_tuning_word2_r;
wire [7:0] netsoc_csrbank10_tuning_word2_w;
wire netsoc_csrbank10_tuning_word1_re;
wire [7:0] netsoc_csrbank10_tuning_word1_r;
wire [7:0] netsoc_csrbank10_tuning_word1_w;
wire netsoc_csrbank10_tuning_word0_re;
wire [7:0] netsoc_csrbank10_tuning_word0_r;
wire [7:0] netsoc_csrbank10_tuning_word0_w;
wire netsoc_csrbank10_sel;
reg rhs_array_muxed0 = 1'd0;
reg [13:0] rhs_array_muxed1 = 14'd0;
reg [2:0] rhs_array_muxed2 = 3'd0;
reg rhs_array_muxed3 = 1'd0;
reg rhs_array_muxed4 = 1'd0;
reg rhs_array_muxed5 = 1'd0;
reg t_array_muxed0 = 1'd0;
reg t_array_muxed1 = 1'd0;
reg t_array_muxed2 = 1'd0;
reg rhs_array_muxed6 = 1'd0;
reg [13:0] rhs_array_muxed7 = 14'd0;
reg [2:0] rhs_array_muxed8 = 3'd0;
reg rhs_array_muxed9 = 1'd0;
reg rhs_array_muxed10 = 1'd0;
reg rhs_array_muxed11 = 1'd0;
reg t_array_muxed3 = 1'd0;
reg t_array_muxed4 = 1'd0;
reg t_array_muxed5 = 1'd0;
reg [20:0] rhs_array_muxed12 = 21'd0;
reg rhs_array_muxed13 = 1'd0;
reg rhs_array_muxed14 = 1'd0;
reg [20:0] rhs_array_muxed15 = 21'd0;
reg rhs_array_muxed16 = 1'd0;
reg rhs_array_muxed17 = 1'd0;
reg [20:0] rhs_array_muxed18 = 21'd0;
reg rhs_array_muxed19 = 1'd0;
reg rhs_array_muxed20 = 1'd0;
reg [20:0] rhs_array_muxed21 = 21'd0;
reg rhs_array_muxed22 = 1'd0;
reg rhs_array_muxed23 = 1'd0;
reg [20:0] rhs_array_muxed24 = 21'd0;
reg rhs_array_muxed25 = 1'd0;
reg rhs_array_muxed26 = 1'd0;
reg [20:0] rhs_array_muxed27 = 21'd0;
reg rhs_array_muxed28 = 1'd0;
reg rhs_array_muxed29 = 1'd0;
reg [20:0] rhs_array_muxed30 = 21'd0;
reg rhs_array_muxed31 = 1'd0;
reg rhs_array_muxed32 = 1'd0;
reg [20:0] rhs_array_muxed33 = 21'd0;
reg rhs_array_muxed34 = 1'd0;
reg rhs_array_muxed35 = 1'd0;
reg [29:0] rhs_array_muxed36 = 30'd0;
reg [31:0] rhs_array_muxed37 = 32'd0;
reg [3:0] rhs_array_muxed38 = 4'd0;
reg rhs_array_muxed39 = 1'd0;
reg rhs_array_muxed40 = 1'd0;
reg rhs_array_muxed41 = 1'd0;
reg [2:0] rhs_array_muxed42 = 3'd0;
reg [1:0] rhs_array_muxed43 = 2'd0;
reg [29:0] rhs_array_muxed44 = 30'd0;
reg [31:0] rhs_array_muxed45 = 32'd0;
reg [3:0] rhs_array_muxed46 = 4'd0;
reg rhs_array_muxed47 = 1'd0;
reg rhs_array_muxed48 = 1'd0;
reg rhs_array_muxed49 = 1'd0;
reg [2:0] rhs_array_muxed50 = 3'd0;
reg [1:0] rhs_array_muxed51 = 2'd0;
reg [13:0] array_muxed0 = 14'd0;
reg [2:0] array_muxed1 = 3'd0;
reg array_muxed2 = 1'd0;
reg array_muxed3 = 1'd0;
reg array_muxed4 = 1'd0;
reg array_muxed5 = 1'd0;
reg array_muxed6 = 1'd0;
reg [13:0] array_muxed7 = 14'd0;
reg [2:0] array_muxed8 = 3'd0;
reg array_muxed9 = 1'd0;
reg array_muxed10 = 1'd0;
reg array_muxed11 = 1'd0;
reg array_muxed12 = 1'd0;
reg array_muxed13 = 1'd0;
reg [13:0] array_muxed14 = 14'd0;
reg [2:0] array_muxed15 = 3'd0;
reg array_muxed16 = 1'd0;
reg array_muxed17 = 1'd0;
reg array_muxed18 = 1'd0;
reg array_muxed19 = 1'd0;
reg array_muxed20 = 1'd0;
reg [13:0] array_muxed21 = 14'd0;
reg [2:0] array_muxed22 = 3'd0;
reg array_muxed23 = 1'd0;
reg array_muxed24 = 1'd0;
reg array_muxed25 = 1'd0;
reg array_muxed26 = 1'd0;
reg array_muxed27 = 1'd0;
(* async_reg = "true", mr_ff = "true", dont_touch = "true" *) reg xilinxmultiregimpl0_regs0 = 1'd0;
(* async_reg = "true", dont_touch = "true" *) reg xilinxmultiregimpl0_regs1 = 1'd0;
wire xilinxasyncresetsynchronizerimpl0;
wire xilinxasyncresetsynchronizerimpl0_rst_meta;
wire xilinxasyncresetsynchronizerimpl1;
wire xilinxasyncresetsynchronizerimpl1_rst_meta;
wire xilinxasyncresetsynchronizerimpl2;
wire xilinxasyncresetsynchronizerimpl2_rst_meta;
wire xilinxasyncresetsynchronizerimpl3;
wire xilinxasyncresetsynchronizerimpl3_rst_meta;
(* async_reg = "true", mr_ff = "true", dont_touch = "true" *) reg [3:0] xilinxmultiregimpl1_regs0 = 4'd0;
(* async_reg = "true", dont_touch = "true" *) reg [3:0] xilinxmultiregimpl1_regs1 = 4'd0;
wire xilinxasyncresetsynchronizerimpl4_rst_meta;
wire xilinxasyncresetsynchronizerimpl5_rst_meta;
(* async_reg = "true", mr_ff = "true", dont_touch = "true" *) reg xilinxmultiregimpl2_regs0 = 1'd0;
(* async_reg = "true", dont_touch = "true" *) reg xilinxmultiregimpl2_regs1 = 1'd0;
(* async_reg = "true", mr_ff = "true", dont_touch = "true" *) reg xilinxmultiregimpl3_regs0 = 1'd0;
(* async_reg = "true", dont_touch = "true" *) reg xilinxmultiregimpl3_regs1 = 1'd0;
(* async_reg = "true", mr_ff = "true", dont_touch = "true" *) reg xilinxmultiregimpl4_regs0 = 1'd0;
(* async_reg = "true", dont_touch = "true" *) reg xilinxmultiregimpl4_regs1 = 1'd0;
(* async_reg = "true", mr_ff = "true", dont_touch = "true" *) reg [6:0] xilinxmultiregimpl5_regs0 = 7'd0;
(* async_reg = "true", dont_touch = "true" *) reg [6:0] xilinxmultiregimpl5_regs1 = 7'd0;
(* async_reg = "true", mr_ff = "true", dont_touch = "true" *) reg [6:0] xilinxmultiregimpl6_regs0 = 7'd0;
(* async_reg = "true", dont_touch = "true" *) reg [6:0] xilinxmultiregimpl6_regs1 = 7'd0;
(* async_reg = "true", mr_ff = "true", dont_touch = "true" *) reg [6:0] xilinxmultiregimpl7_regs0 = 7'd0;
(* async_reg = "true", dont_touch = "true" *) reg [6:0] xilinxmultiregimpl7_regs1 = 7'd0;
(* async_reg = "true", mr_ff = "true", dont_touch = "true" *) reg [6:0] xilinxmultiregimpl8_regs0 = 7'd0;
(* async_reg = "true", dont_touch = "true" *) reg [6:0] xilinxmultiregimpl8_regs1 = 7'd0;

assign netsoc_netsoc_mor1kx_reset = netsoc_netsoc_ctrl_reset;
assign netsoc_netsoc_ctrl_bus_error = netsoc_error;
always @(*) begin
	netsoc_netsoc_mor1kx_interrupt <= 32'd0;
	netsoc_netsoc_mor1kx_interrupt[1] <= netsoc_netsoc_timer0_irq;
	netsoc_netsoc_mor1kx_interrupt[2] <= netsoc_netsoc_uart_irq;
	netsoc_netsoc_mor1kx_interrupt[3] <= ethmac_ev_irq;
end
assign netsoc_netsoc_ctrl_reset = netsoc_netsoc_ctrl_reset_reset_re;
assign netsoc_netsoc_ctrl_bus_errors_status = netsoc_netsoc_ctrl_bus_errors;
assign netsoc_netsoc_mor1kx_ibus_adr = netsoc_netsoc_mor1kx_i_adr_o[31:2];
assign netsoc_netsoc_mor1kx_dbus_adr = netsoc_netsoc_mor1kx_d_adr_o[31:2];
assign netsoc_netsoc_rom_adr = netsoc_netsoc_rom_bus_adr[13:0];
assign netsoc_netsoc_rom_bus_dat_r = netsoc_netsoc_rom_dat_r;
always @(*) begin
	netsoc_netsoc_sram_we <= 4'd0;
	netsoc_netsoc_sram_we[0] <= (((netsoc_netsoc_sram_bus_cyc & netsoc_netsoc_sram_bus_stb) & netsoc_netsoc_sram_bus_we) & netsoc_netsoc_sram_bus_sel[0]);
	netsoc_netsoc_sram_we[1] <= (((netsoc_netsoc_sram_bus_cyc & netsoc_netsoc_sram_bus_stb) & netsoc_netsoc_sram_bus_we) & netsoc_netsoc_sram_bus_sel[1]);
	netsoc_netsoc_sram_we[2] <= (((netsoc_netsoc_sram_bus_cyc & netsoc_netsoc_sram_bus_stb) & netsoc_netsoc_sram_bus_we) & netsoc_netsoc_sram_bus_sel[2]);
	netsoc_netsoc_sram_we[3] <= (((netsoc_netsoc_sram_bus_cyc & netsoc_netsoc_sram_bus_stb) & netsoc_netsoc_sram_bus_we) & netsoc_netsoc_sram_bus_sel[3]);
end
assign netsoc_netsoc_sram_adr = netsoc_netsoc_sram_bus_adr[12:0];
assign netsoc_netsoc_sram_bus_dat_r = netsoc_netsoc_sram_dat_r;
assign netsoc_netsoc_sram_dat_w = netsoc_netsoc_sram_bus_dat_w;
assign netsoc_netsoc_uart_tx_fifo_sink_valid = netsoc_netsoc_uart_rxtx_re;
assign netsoc_netsoc_uart_tx_fifo_sink_payload_data = netsoc_netsoc_uart_rxtx_r;
assign netsoc_netsoc_uart_txfull_status = (~netsoc_netsoc_uart_tx_fifo_sink_ready);
assign netsoc_netsoc_uart_phy_sink_valid = netsoc_netsoc_uart_tx_fifo_source_valid;
assign netsoc_netsoc_uart_tx_fifo_source_ready = netsoc_netsoc_uart_phy_sink_ready;
assign netsoc_netsoc_uart_phy_sink_first = netsoc_netsoc_uart_tx_fifo_source_first;
assign netsoc_netsoc_uart_phy_sink_last = netsoc_netsoc_uart_tx_fifo_source_last;
assign netsoc_netsoc_uart_phy_sink_payload_data = netsoc_netsoc_uart_tx_fifo_source_payload_data;
assign netsoc_netsoc_uart_tx_trigger = (~netsoc_netsoc_uart_tx_fifo_sink_ready);
assign netsoc_netsoc_uart_rx_fifo_sink_valid = netsoc_netsoc_uart_phy_source_valid;
assign netsoc_netsoc_uart_phy_source_ready = netsoc_netsoc_uart_rx_fifo_sink_ready;
assign netsoc_netsoc_uart_rx_fifo_sink_first = netsoc_netsoc_uart_phy_source_first;
assign netsoc_netsoc_uart_rx_fifo_sink_last = netsoc_netsoc_uart_phy_source_last;
assign netsoc_netsoc_uart_rx_fifo_sink_payload_data = netsoc_netsoc_uart_phy_source_payload_data;
assign netsoc_netsoc_uart_rxempty_status = (~netsoc_netsoc_uart_rx_fifo_source_valid);
assign netsoc_netsoc_uart_rxtx_w = netsoc_netsoc_uart_rx_fifo_source_payload_data;
assign netsoc_netsoc_uart_rx_fifo_source_ready = netsoc_netsoc_uart_rx_clear;
assign netsoc_netsoc_uart_rx_trigger = (~netsoc_netsoc_uart_rx_fifo_source_valid);
always @(*) begin
	netsoc_netsoc_uart_tx_clear <= 1'd0;
	if ((netsoc_netsoc_uart_pending_re & netsoc_netsoc_uart_pending_r[0])) begin
		netsoc_netsoc_uart_tx_clear <= 1'd1;
	end
end
always @(*) begin
	netsoc_netsoc_uart_status_w <= 2'd0;
	netsoc_netsoc_uart_status_w[0] <= netsoc_netsoc_uart_tx_status;
	netsoc_netsoc_uart_status_w[1] <= netsoc_netsoc_uart_rx_status;
end
always @(*) begin
	netsoc_netsoc_uart_rx_clear <= 1'd0;
	if ((netsoc_netsoc_uart_pending_re & netsoc_netsoc_uart_pending_r[1])) begin
		netsoc_netsoc_uart_rx_clear <= 1'd1;
	end
end
always @(*) begin
	netsoc_netsoc_uart_pending_w <= 2'd0;
	netsoc_netsoc_uart_pending_w[0] <= netsoc_netsoc_uart_tx_pending;
	netsoc_netsoc_uart_pending_w[1] <= netsoc_netsoc_uart_rx_pending;
end
assign netsoc_netsoc_uart_irq = ((netsoc_netsoc_uart_pending_w[0] & netsoc_netsoc_uart_storage[0]) | (netsoc_netsoc_uart_pending_w[1] & netsoc_netsoc_uart_storage[1]));
assign netsoc_netsoc_uart_tx_status = netsoc_netsoc_uart_tx_trigger;
assign netsoc_netsoc_uart_rx_status = netsoc_netsoc_uart_rx_trigger;
assign netsoc_netsoc_uart_tx_fifo_syncfifo_din = {netsoc_netsoc_uart_tx_fifo_fifo_in_last, netsoc_netsoc_uart_tx_fifo_fifo_in_first, netsoc_netsoc_uart_tx_fifo_fifo_in_payload_data};
assign {netsoc_netsoc_uart_tx_fifo_fifo_out_last, netsoc_netsoc_uart_tx_fifo_fifo_out_first, netsoc_netsoc_uart_tx_fifo_fifo_out_payload_data} = netsoc_netsoc_uart_tx_fifo_syncfifo_dout;
assign netsoc_netsoc_uart_tx_fifo_sink_ready = netsoc_netsoc_uart_tx_fifo_syncfifo_writable;
assign netsoc_netsoc_uart_tx_fifo_syncfifo_we = netsoc_netsoc_uart_tx_fifo_sink_valid;
assign netsoc_netsoc_uart_tx_fifo_fifo_in_first = netsoc_netsoc_uart_tx_fifo_sink_first;
assign netsoc_netsoc_uart_tx_fifo_fifo_in_last = netsoc_netsoc_uart_tx_fifo_sink_last;
assign netsoc_netsoc_uart_tx_fifo_fifo_in_payload_data = netsoc_netsoc_uart_tx_fifo_sink_payload_data;
assign netsoc_netsoc_uart_tx_fifo_source_valid = netsoc_netsoc_uart_tx_fifo_syncfifo_readable;
assign netsoc_netsoc_uart_tx_fifo_source_first = netsoc_netsoc_uart_tx_fifo_fifo_out_first;
assign netsoc_netsoc_uart_tx_fifo_source_last = netsoc_netsoc_uart_tx_fifo_fifo_out_last;
assign netsoc_netsoc_uart_tx_fifo_source_payload_data = netsoc_netsoc_uart_tx_fifo_fifo_out_payload_data;
assign netsoc_netsoc_uart_tx_fifo_syncfifo_re = netsoc_netsoc_uart_tx_fifo_source_ready;
always @(*) begin
	netsoc_netsoc_uart_tx_fifo_wrport_adr <= 4'd0;
	if (netsoc_netsoc_uart_tx_fifo_replace) begin
		netsoc_netsoc_uart_tx_fifo_wrport_adr <= (netsoc_netsoc_uart_tx_fifo_produce - 1'd1);
	end else begin
		netsoc_netsoc_uart_tx_fifo_wrport_adr <= netsoc_netsoc_uart_tx_fifo_produce;
	end
end
assign netsoc_netsoc_uart_tx_fifo_wrport_dat_w = netsoc_netsoc_uart_tx_fifo_syncfifo_din;
assign netsoc_netsoc_uart_tx_fifo_wrport_we = (netsoc_netsoc_uart_tx_fifo_syncfifo_we & (netsoc_netsoc_uart_tx_fifo_syncfifo_writable | netsoc_netsoc_uart_tx_fifo_replace));
assign netsoc_netsoc_uart_tx_fifo_do_read = (netsoc_netsoc_uart_tx_fifo_syncfifo_readable & netsoc_netsoc_uart_tx_fifo_syncfifo_re);
assign netsoc_netsoc_uart_tx_fifo_rdport_adr = netsoc_netsoc_uart_tx_fifo_consume;
assign netsoc_netsoc_uart_tx_fifo_syncfifo_dout = netsoc_netsoc_uart_tx_fifo_rdport_dat_r;
assign netsoc_netsoc_uart_tx_fifo_syncfifo_writable = (netsoc_netsoc_uart_tx_fifo_level != 5'd16);
assign netsoc_netsoc_uart_tx_fifo_syncfifo_readable = (netsoc_netsoc_uart_tx_fifo_level != 1'd0);
assign netsoc_netsoc_uart_rx_fifo_syncfifo_din = {netsoc_netsoc_uart_rx_fifo_fifo_in_last, netsoc_netsoc_uart_rx_fifo_fifo_in_first, netsoc_netsoc_uart_rx_fifo_fifo_in_payload_data};
assign {netsoc_netsoc_uart_rx_fifo_fifo_out_last, netsoc_netsoc_uart_rx_fifo_fifo_out_first, netsoc_netsoc_uart_rx_fifo_fifo_out_payload_data} = netsoc_netsoc_uart_rx_fifo_syncfifo_dout;
assign netsoc_netsoc_uart_rx_fifo_sink_ready = netsoc_netsoc_uart_rx_fifo_syncfifo_writable;
assign netsoc_netsoc_uart_rx_fifo_syncfifo_we = netsoc_netsoc_uart_rx_fifo_sink_valid;
assign netsoc_netsoc_uart_rx_fifo_fifo_in_first = netsoc_netsoc_uart_rx_fifo_sink_first;
assign netsoc_netsoc_uart_rx_fifo_fifo_in_last = netsoc_netsoc_uart_rx_fifo_sink_last;
assign netsoc_netsoc_uart_rx_fifo_fifo_in_payload_data = netsoc_netsoc_uart_rx_fifo_sink_payload_data;
assign netsoc_netsoc_uart_rx_fifo_source_valid = netsoc_netsoc_uart_rx_fifo_syncfifo_readable;
assign netsoc_netsoc_uart_rx_fifo_source_first = netsoc_netsoc_uart_rx_fifo_fifo_out_first;
assign netsoc_netsoc_uart_rx_fifo_source_last = netsoc_netsoc_uart_rx_fifo_fifo_out_last;
assign netsoc_netsoc_uart_rx_fifo_source_payload_data = netsoc_netsoc_uart_rx_fifo_fifo_out_payload_data;
assign netsoc_netsoc_uart_rx_fifo_syncfifo_re = netsoc_netsoc_uart_rx_fifo_source_ready;
always @(*) begin
	netsoc_netsoc_uart_rx_fifo_wrport_adr <= 4'd0;
	if (netsoc_netsoc_uart_rx_fifo_replace) begin
		netsoc_netsoc_uart_rx_fifo_wrport_adr <= (netsoc_netsoc_uart_rx_fifo_produce - 1'd1);
	end else begin
		netsoc_netsoc_uart_rx_fifo_wrport_adr <= netsoc_netsoc_uart_rx_fifo_produce;
	end
end
assign netsoc_netsoc_uart_rx_fifo_wrport_dat_w = netsoc_netsoc_uart_rx_fifo_syncfifo_din;
assign netsoc_netsoc_uart_rx_fifo_wrport_we = (netsoc_netsoc_uart_rx_fifo_syncfifo_we & (netsoc_netsoc_uart_rx_fifo_syncfifo_writable | netsoc_netsoc_uart_rx_fifo_replace));
assign netsoc_netsoc_uart_rx_fifo_do_read = (netsoc_netsoc_uart_rx_fifo_syncfifo_readable & netsoc_netsoc_uart_rx_fifo_syncfifo_re);
assign netsoc_netsoc_uart_rx_fifo_rdport_adr = netsoc_netsoc_uart_rx_fifo_consume;
assign netsoc_netsoc_uart_rx_fifo_syncfifo_dout = netsoc_netsoc_uart_rx_fifo_rdport_dat_r;
assign netsoc_netsoc_uart_rx_fifo_syncfifo_writable = (netsoc_netsoc_uart_rx_fifo_level != 5'd16);
assign netsoc_netsoc_uart_rx_fifo_syncfifo_readable = (netsoc_netsoc_uart_rx_fifo_level != 1'd0);
assign netsoc_netsoc_timer0_zero_trigger = (netsoc_netsoc_timer0_value != 1'd0);
assign netsoc_netsoc_timer0_eventmanager_status_w = netsoc_netsoc_timer0_zero_status;
always @(*) begin
	netsoc_netsoc_timer0_zero_clear <= 1'd0;
	if ((netsoc_netsoc_timer0_eventmanager_pending_re & netsoc_netsoc_timer0_eventmanager_pending_r)) begin
		netsoc_netsoc_timer0_zero_clear <= 1'd1;
	end
end
assign netsoc_netsoc_timer0_eventmanager_pending_w = netsoc_netsoc_timer0_zero_pending;
assign netsoc_netsoc_timer0_irq = (netsoc_netsoc_timer0_eventmanager_pending_w & netsoc_netsoc_timer0_eventmanager_storage);
assign netsoc_netsoc_timer0_zero_status = netsoc_netsoc_timer0_zero_trigger;
assign netsoc_git_status = 154'd17598278262155879883707433868560991407619451042;
assign netsoc_platform_status = 63'd7021802832063889408;
assign netsoc_target_status = 63'd7954891860168671232;
assign user_led0 = netsoc_leds[0];
assign user_led1 = netsoc_leds[1];
assign user_led2 = netsoc_leds[2];
assign user_led3 = netsoc_leds[3];
always @(*) begin
	netsoc_switches <= 4'd0;
	netsoc_switches[0] <= (~user_sw0);
	netsoc_switches[1] <= (~user_sw1);
	netsoc_switches[2] <= (~user_sw2);
	netsoc_switches[3] <= (~user_sw3);
end
assign netsoc_waittimer0_wait = user_btn0;
assign netsoc_eventsourceprocess0_trigger = (~netsoc_waittimer0_done);
assign netsoc_waittimer1_wait = user_btn1;
assign netsoc_eventsourceprocess1_trigger = (~netsoc_waittimer1_done);
assign netsoc_waittimer2_wait = user_btn2;
assign netsoc_eventsourceprocess2_trigger = (~netsoc_waittimer2_done);
assign netsoc_waittimer3_wait = user_btn3;
assign netsoc_eventsourceprocess3_trigger = (~netsoc_waittimer3_done);
assign netsoc_leds = netsoc_leds_storage;
always @(*) begin
	netsoc_eventsourceprocess0_clear <= 1'd0;
	if ((netsoc_eventmanager_pending_re & netsoc_eventmanager_pending_r[0])) begin
		netsoc_eventsourceprocess0_clear <= 1'd1;
	end
end
always @(*) begin
	netsoc_eventsourceprocess1_clear <= 1'd0;
	if ((netsoc_eventmanager_pending_re & netsoc_eventmanager_pending_r[1])) begin
		netsoc_eventsourceprocess1_clear <= 1'd1;
	end
end
always @(*) begin
	netsoc_eventsourceprocess2_clear <= 1'd0;
	if ((netsoc_eventmanager_pending_re & netsoc_eventmanager_pending_r[2])) begin
		netsoc_eventsourceprocess2_clear <= 1'd1;
	end
end
always @(*) begin
	netsoc_eventmanager_status_w <= 4'd0;
	netsoc_eventmanager_status_w[0] <= netsoc_eventsourceprocess0_status;
	netsoc_eventmanager_status_w[1] <= netsoc_eventsourceprocess1_status;
	netsoc_eventmanager_status_w[2] <= netsoc_eventsourceprocess2_status;
	netsoc_eventmanager_status_w[3] <= netsoc_eventsourceprocess3_status;
end
always @(*) begin
	netsoc_eventsourceprocess3_clear <= 1'd0;
	if ((netsoc_eventmanager_pending_re & netsoc_eventmanager_pending_r[3])) begin
		netsoc_eventsourceprocess3_clear <= 1'd1;
	end
end
always @(*) begin
	netsoc_eventmanager_pending_w <= 4'd0;
	netsoc_eventmanager_pending_w[0] <= netsoc_eventsourceprocess0_pending;
	netsoc_eventmanager_pending_w[1] <= netsoc_eventsourceprocess1_pending;
	netsoc_eventmanager_pending_w[2] <= netsoc_eventsourceprocess2_pending;
	netsoc_eventmanager_pending_w[3] <= netsoc_eventsourceprocess3_pending;
end
assign netsoc_irq = ((((netsoc_eventmanager_pending_w[0] & netsoc_eventmanager_storage[0]) | (netsoc_eventmanager_pending_w[1] & netsoc_eventmanager_storage[1])) | (netsoc_eventmanager_pending_w[2] & netsoc_eventmanager_storage[2])) | (netsoc_eventmanager_pending_w[3] & netsoc_eventmanager_storage[3]));
assign netsoc_eventsourceprocess0_status = netsoc_eventsourceprocess0_trigger;
assign netsoc_eventsourceprocess1_status = netsoc_eventsourceprocess1_trigger;
assign netsoc_eventsourceprocess2_status = netsoc_eventsourceprocess2_trigger;
assign netsoc_eventsourceprocess3_status = netsoc_eventsourceprocess3_trigger;
assign netsoc_waittimer0_done = (netsoc_waittimer0_count == 1'd0);
assign netsoc_waittimer1_done = (netsoc_waittimer1_count == 1'd0);
assign netsoc_waittimer2_done = (netsoc_waittimer2_count == 1'd0);
assign netsoc_waittimer3_done = (netsoc_waittimer3_count == 1'd0);
assign spiflash_1x_wp = 1'd1;
assign spiflash_1x_hold = 1'd1;
assign netsoc_bus_dat_r = netsoc_sr;
always @(*) begin
	spiflash_1x_mosi <= 1'd0;
	netsoc_miso_status <= 1'd0;
	spiflash_1x_cs_n <= 1'd0;
	netsoc_clk0 <= 1'd0;
	if (netsoc_bitbang_en_storage) begin
		netsoc_clk0 <= netsoc_bitbang_storage[1];
		spiflash_1x_cs_n <= netsoc_bitbang_storage[2];
		if (netsoc_bitbang_storage[1]) begin
			netsoc_miso_status <= spiflash_1x_miso;
		end
		spiflash_1x_mosi <= netsoc_bitbang_storage[0];
	end else begin
		netsoc_clk0 <= netsoc_clk1;
		spiflash_1x_cs_n <= netsoc_cs_n;
		spiflash_1x_mosi <= netsoc_sr[31];
	end
end
always @(*) begin
	netsoc_a7ddrphy_dqs_serdes_pattern <= 8'd85;
	if ((netsoc_a7ddrphy_dqs_preamble | netsoc_a7ddrphy_dqs_postamble)) begin
		netsoc_a7ddrphy_dqs_serdes_pattern <= 1'd0;
	end else begin
		netsoc_a7ddrphy_dqs_serdes_pattern <= 7'd85;
	end
end
always @(*) begin
	netsoc_a7ddrphy_dfi_p0_rddata <= 32'd0;
	netsoc_a7ddrphy_dfi_p0_rddata[0] <= netsoc_a7ddrphy_dq_i_data0[7];
	netsoc_a7ddrphy_dfi_p0_rddata[16] <= netsoc_a7ddrphy_dq_i_data0[6];
	netsoc_a7ddrphy_dfi_p0_rddata[1] <= netsoc_a7ddrphy_dq_i_data1[7];
	netsoc_a7ddrphy_dfi_p0_rddata[17] <= netsoc_a7ddrphy_dq_i_data1[6];
	netsoc_a7ddrphy_dfi_p0_rddata[2] <= netsoc_a7ddrphy_dq_i_data2[7];
	netsoc_a7ddrphy_dfi_p0_rddata[18] <= netsoc_a7ddrphy_dq_i_data2[6];
	netsoc_a7ddrphy_dfi_p0_rddata[3] <= netsoc_a7ddrphy_dq_i_data3[7];
	netsoc_a7ddrphy_dfi_p0_rddata[19] <= netsoc_a7ddrphy_dq_i_data3[6];
	netsoc_a7ddrphy_dfi_p0_rddata[4] <= netsoc_a7ddrphy_dq_i_data4[7];
	netsoc_a7ddrphy_dfi_p0_rddata[20] <= netsoc_a7ddrphy_dq_i_data4[6];
	netsoc_a7ddrphy_dfi_p0_rddata[5] <= netsoc_a7ddrphy_dq_i_data5[7];
	netsoc_a7ddrphy_dfi_p0_rddata[21] <= netsoc_a7ddrphy_dq_i_data5[6];
	netsoc_a7ddrphy_dfi_p0_rddata[6] <= netsoc_a7ddrphy_dq_i_data6[7];
	netsoc_a7ddrphy_dfi_p0_rddata[22] <= netsoc_a7ddrphy_dq_i_data6[6];
	netsoc_a7ddrphy_dfi_p0_rddata[7] <= netsoc_a7ddrphy_dq_i_data7[7];
	netsoc_a7ddrphy_dfi_p0_rddata[23] <= netsoc_a7ddrphy_dq_i_data7[6];
	netsoc_a7ddrphy_dfi_p0_rddata[8] <= netsoc_a7ddrphy_dq_i_data8[7];
	netsoc_a7ddrphy_dfi_p0_rddata[24] <= netsoc_a7ddrphy_dq_i_data8[6];
	netsoc_a7ddrphy_dfi_p0_rddata[9] <= netsoc_a7ddrphy_dq_i_data9[7];
	netsoc_a7ddrphy_dfi_p0_rddata[25] <= netsoc_a7ddrphy_dq_i_data9[6];
	netsoc_a7ddrphy_dfi_p0_rddata[10] <= netsoc_a7ddrphy_dq_i_data10[7];
	netsoc_a7ddrphy_dfi_p0_rddata[26] <= netsoc_a7ddrphy_dq_i_data10[6];
	netsoc_a7ddrphy_dfi_p0_rddata[11] <= netsoc_a7ddrphy_dq_i_data11[7];
	netsoc_a7ddrphy_dfi_p0_rddata[27] <= netsoc_a7ddrphy_dq_i_data11[6];
	netsoc_a7ddrphy_dfi_p0_rddata[12] <= netsoc_a7ddrphy_dq_i_data12[7];
	netsoc_a7ddrphy_dfi_p0_rddata[28] <= netsoc_a7ddrphy_dq_i_data12[6];
	netsoc_a7ddrphy_dfi_p0_rddata[13] <= netsoc_a7ddrphy_dq_i_data13[7];
	netsoc_a7ddrphy_dfi_p0_rddata[29] <= netsoc_a7ddrphy_dq_i_data13[6];
	netsoc_a7ddrphy_dfi_p0_rddata[14] <= netsoc_a7ddrphy_dq_i_data14[7];
	netsoc_a7ddrphy_dfi_p0_rddata[30] <= netsoc_a7ddrphy_dq_i_data14[6];
	netsoc_a7ddrphy_dfi_p0_rddata[15] <= netsoc_a7ddrphy_dq_i_data15[7];
	netsoc_a7ddrphy_dfi_p0_rddata[31] <= netsoc_a7ddrphy_dq_i_data15[6];
end
always @(*) begin
	netsoc_a7ddrphy_dfi_p1_rddata <= 32'd0;
	netsoc_a7ddrphy_dfi_p1_rddata[0] <= netsoc_a7ddrphy_dq_i_data0[5];
	netsoc_a7ddrphy_dfi_p1_rddata[16] <= netsoc_a7ddrphy_dq_i_data0[4];
	netsoc_a7ddrphy_dfi_p1_rddata[1] <= netsoc_a7ddrphy_dq_i_data1[5];
	netsoc_a7ddrphy_dfi_p1_rddata[17] <= netsoc_a7ddrphy_dq_i_data1[4];
	netsoc_a7ddrphy_dfi_p1_rddata[2] <= netsoc_a7ddrphy_dq_i_data2[5];
	netsoc_a7ddrphy_dfi_p1_rddata[18] <= netsoc_a7ddrphy_dq_i_data2[4];
	netsoc_a7ddrphy_dfi_p1_rddata[3] <= netsoc_a7ddrphy_dq_i_data3[5];
	netsoc_a7ddrphy_dfi_p1_rddata[19] <= netsoc_a7ddrphy_dq_i_data3[4];
	netsoc_a7ddrphy_dfi_p1_rddata[4] <= netsoc_a7ddrphy_dq_i_data4[5];
	netsoc_a7ddrphy_dfi_p1_rddata[20] <= netsoc_a7ddrphy_dq_i_data4[4];
	netsoc_a7ddrphy_dfi_p1_rddata[5] <= netsoc_a7ddrphy_dq_i_data5[5];
	netsoc_a7ddrphy_dfi_p1_rddata[21] <= netsoc_a7ddrphy_dq_i_data5[4];
	netsoc_a7ddrphy_dfi_p1_rddata[6] <= netsoc_a7ddrphy_dq_i_data6[5];
	netsoc_a7ddrphy_dfi_p1_rddata[22] <= netsoc_a7ddrphy_dq_i_data6[4];
	netsoc_a7ddrphy_dfi_p1_rddata[7] <= netsoc_a7ddrphy_dq_i_data7[5];
	netsoc_a7ddrphy_dfi_p1_rddata[23] <= netsoc_a7ddrphy_dq_i_data7[4];
	netsoc_a7ddrphy_dfi_p1_rddata[8] <= netsoc_a7ddrphy_dq_i_data8[5];
	netsoc_a7ddrphy_dfi_p1_rddata[24] <= netsoc_a7ddrphy_dq_i_data8[4];
	netsoc_a7ddrphy_dfi_p1_rddata[9] <= netsoc_a7ddrphy_dq_i_data9[5];
	netsoc_a7ddrphy_dfi_p1_rddata[25] <= netsoc_a7ddrphy_dq_i_data9[4];
	netsoc_a7ddrphy_dfi_p1_rddata[10] <= netsoc_a7ddrphy_dq_i_data10[5];
	netsoc_a7ddrphy_dfi_p1_rddata[26] <= netsoc_a7ddrphy_dq_i_data10[4];
	netsoc_a7ddrphy_dfi_p1_rddata[11] <= netsoc_a7ddrphy_dq_i_data11[5];
	netsoc_a7ddrphy_dfi_p1_rddata[27] <= netsoc_a7ddrphy_dq_i_data11[4];
	netsoc_a7ddrphy_dfi_p1_rddata[12] <= netsoc_a7ddrphy_dq_i_data12[5];
	netsoc_a7ddrphy_dfi_p1_rddata[28] <= netsoc_a7ddrphy_dq_i_data12[4];
	netsoc_a7ddrphy_dfi_p1_rddata[13] <= netsoc_a7ddrphy_dq_i_data13[5];
	netsoc_a7ddrphy_dfi_p1_rddata[29] <= netsoc_a7ddrphy_dq_i_data13[4];
	netsoc_a7ddrphy_dfi_p1_rddata[14] <= netsoc_a7ddrphy_dq_i_data14[5];
	netsoc_a7ddrphy_dfi_p1_rddata[30] <= netsoc_a7ddrphy_dq_i_data14[4];
	netsoc_a7ddrphy_dfi_p1_rddata[15] <= netsoc_a7ddrphy_dq_i_data15[5];
	netsoc_a7ddrphy_dfi_p1_rddata[31] <= netsoc_a7ddrphy_dq_i_data15[4];
end
always @(*) begin
	netsoc_a7ddrphy_dfi_p2_rddata <= 32'd0;
	netsoc_a7ddrphy_dfi_p2_rddata[0] <= netsoc_a7ddrphy_dq_i_data0[3];
	netsoc_a7ddrphy_dfi_p2_rddata[16] <= netsoc_a7ddrphy_dq_i_data0[2];
	netsoc_a7ddrphy_dfi_p2_rddata[1] <= netsoc_a7ddrphy_dq_i_data1[3];
	netsoc_a7ddrphy_dfi_p2_rddata[17] <= netsoc_a7ddrphy_dq_i_data1[2];
	netsoc_a7ddrphy_dfi_p2_rddata[2] <= netsoc_a7ddrphy_dq_i_data2[3];
	netsoc_a7ddrphy_dfi_p2_rddata[18] <= netsoc_a7ddrphy_dq_i_data2[2];
	netsoc_a7ddrphy_dfi_p2_rddata[3] <= netsoc_a7ddrphy_dq_i_data3[3];
	netsoc_a7ddrphy_dfi_p2_rddata[19] <= netsoc_a7ddrphy_dq_i_data3[2];
	netsoc_a7ddrphy_dfi_p2_rddata[4] <= netsoc_a7ddrphy_dq_i_data4[3];
	netsoc_a7ddrphy_dfi_p2_rddata[20] <= netsoc_a7ddrphy_dq_i_data4[2];
	netsoc_a7ddrphy_dfi_p2_rddata[5] <= netsoc_a7ddrphy_dq_i_data5[3];
	netsoc_a7ddrphy_dfi_p2_rddata[21] <= netsoc_a7ddrphy_dq_i_data5[2];
	netsoc_a7ddrphy_dfi_p2_rddata[6] <= netsoc_a7ddrphy_dq_i_data6[3];
	netsoc_a7ddrphy_dfi_p2_rddata[22] <= netsoc_a7ddrphy_dq_i_data6[2];
	netsoc_a7ddrphy_dfi_p2_rddata[7] <= netsoc_a7ddrphy_dq_i_data7[3];
	netsoc_a7ddrphy_dfi_p2_rddata[23] <= netsoc_a7ddrphy_dq_i_data7[2];
	netsoc_a7ddrphy_dfi_p2_rddata[8] <= netsoc_a7ddrphy_dq_i_data8[3];
	netsoc_a7ddrphy_dfi_p2_rddata[24] <= netsoc_a7ddrphy_dq_i_data8[2];
	netsoc_a7ddrphy_dfi_p2_rddata[9] <= netsoc_a7ddrphy_dq_i_data9[3];
	netsoc_a7ddrphy_dfi_p2_rddata[25] <= netsoc_a7ddrphy_dq_i_data9[2];
	netsoc_a7ddrphy_dfi_p2_rddata[10] <= netsoc_a7ddrphy_dq_i_data10[3];
	netsoc_a7ddrphy_dfi_p2_rddata[26] <= netsoc_a7ddrphy_dq_i_data10[2];
	netsoc_a7ddrphy_dfi_p2_rddata[11] <= netsoc_a7ddrphy_dq_i_data11[3];
	netsoc_a7ddrphy_dfi_p2_rddata[27] <= netsoc_a7ddrphy_dq_i_data11[2];
	netsoc_a7ddrphy_dfi_p2_rddata[12] <= netsoc_a7ddrphy_dq_i_data12[3];
	netsoc_a7ddrphy_dfi_p2_rddata[28] <= netsoc_a7ddrphy_dq_i_data12[2];
	netsoc_a7ddrphy_dfi_p2_rddata[13] <= netsoc_a7ddrphy_dq_i_data13[3];
	netsoc_a7ddrphy_dfi_p2_rddata[29] <= netsoc_a7ddrphy_dq_i_data13[2];
	netsoc_a7ddrphy_dfi_p2_rddata[14] <= netsoc_a7ddrphy_dq_i_data14[3];
	netsoc_a7ddrphy_dfi_p2_rddata[30] <= netsoc_a7ddrphy_dq_i_data14[2];
	netsoc_a7ddrphy_dfi_p2_rddata[15] <= netsoc_a7ddrphy_dq_i_data15[3];
	netsoc_a7ddrphy_dfi_p2_rddata[31] <= netsoc_a7ddrphy_dq_i_data15[2];
end
always @(*) begin
	netsoc_a7ddrphy_dfi_p3_rddata <= 32'd0;
	netsoc_a7ddrphy_dfi_p3_rddata[0] <= netsoc_a7ddrphy_dq_i_data0[1];
	netsoc_a7ddrphy_dfi_p3_rddata[16] <= netsoc_a7ddrphy_dq_i_data0[0];
	netsoc_a7ddrphy_dfi_p3_rddata[1] <= netsoc_a7ddrphy_dq_i_data1[1];
	netsoc_a7ddrphy_dfi_p3_rddata[17] <= netsoc_a7ddrphy_dq_i_data1[0];
	netsoc_a7ddrphy_dfi_p3_rddata[2] <= netsoc_a7ddrphy_dq_i_data2[1];
	netsoc_a7ddrphy_dfi_p3_rddata[18] <= netsoc_a7ddrphy_dq_i_data2[0];
	netsoc_a7ddrphy_dfi_p3_rddata[3] <= netsoc_a7ddrphy_dq_i_data3[1];
	netsoc_a7ddrphy_dfi_p3_rddata[19] <= netsoc_a7ddrphy_dq_i_data3[0];
	netsoc_a7ddrphy_dfi_p3_rddata[4] <= netsoc_a7ddrphy_dq_i_data4[1];
	netsoc_a7ddrphy_dfi_p3_rddata[20] <= netsoc_a7ddrphy_dq_i_data4[0];
	netsoc_a7ddrphy_dfi_p3_rddata[5] <= netsoc_a7ddrphy_dq_i_data5[1];
	netsoc_a7ddrphy_dfi_p3_rddata[21] <= netsoc_a7ddrphy_dq_i_data5[0];
	netsoc_a7ddrphy_dfi_p3_rddata[6] <= netsoc_a7ddrphy_dq_i_data6[1];
	netsoc_a7ddrphy_dfi_p3_rddata[22] <= netsoc_a7ddrphy_dq_i_data6[0];
	netsoc_a7ddrphy_dfi_p3_rddata[7] <= netsoc_a7ddrphy_dq_i_data7[1];
	netsoc_a7ddrphy_dfi_p3_rddata[23] <= netsoc_a7ddrphy_dq_i_data7[0];
	netsoc_a7ddrphy_dfi_p3_rddata[8] <= netsoc_a7ddrphy_dq_i_data8[1];
	netsoc_a7ddrphy_dfi_p3_rddata[24] <= netsoc_a7ddrphy_dq_i_data8[0];
	netsoc_a7ddrphy_dfi_p3_rddata[9] <= netsoc_a7ddrphy_dq_i_data9[1];
	netsoc_a7ddrphy_dfi_p3_rddata[25] <= netsoc_a7ddrphy_dq_i_data9[0];
	netsoc_a7ddrphy_dfi_p3_rddata[10] <= netsoc_a7ddrphy_dq_i_data10[1];
	netsoc_a7ddrphy_dfi_p3_rddata[26] <= netsoc_a7ddrphy_dq_i_data10[0];
	netsoc_a7ddrphy_dfi_p3_rddata[11] <= netsoc_a7ddrphy_dq_i_data11[1];
	netsoc_a7ddrphy_dfi_p3_rddata[27] <= netsoc_a7ddrphy_dq_i_data11[0];
	netsoc_a7ddrphy_dfi_p3_rddata[12] <= netsoc_a7ddrphy_dq_i_data12[1];
	netsoc_a7ddrphy_dfi_p3_rddata[28] <= netsoc_a7ddrphy_dq_i_data12[0];
	netsoc_a7ddrphy_dfi_p3_rddata[13] <= netsoc_a7ddrphy_dq_i_data13[1];
	netsoc_a7ddrphy_dfi_p3_rddata[29] <= netsoc_a7ddrphy_dq_i_data13[0];
	netsoc_a7ddrphy_dfi_p3_rddata[14] <= netsoc_a7ddrphy_dq_i_data14[1];
	netsoc_a7ddrphy_dfi_p3_rddata[30] <= netsoc_a7ddrphy_dq_i_data14[0];
	netsoc_a7ddrphy_dfi_p3_rddata[15] <= netsoc_a7ddrphy_dq_i_data15[1];
	netsoc_a7ddrphy_dfi_p3_rddata[31] <= netsoc_a7ddrphy_dq_i_data15[0];
end
assign netsoc_a7ddrphy_oe = ((netsoc_a7ddrphy_last_wrdata_en[1] | netsoc_a7ddrphy_last_wrdata_en[2]) | netsoc_a7ddrphy_last_wrdata_en[3]);
assign netsoc_a7ddrphy_dqs_preamble = (netsoc_a7ddrphy_last_wrdata_en[1] & (~netsoc_a7ddrphy_last_wrdata_en[2]));
assign netsoc_a7ddrphy_dqs_postamble = (netsoc_a7ddrphy_last_wrdata_en[3] & (~netsoc_a7ddrphy_last_wrdata_en[2]));
assign netsoc_a7ddrphy_dfi_p0_address = netsoc_sdram_master_p0_address;
assign netsoc_a7ddrphy_dfi_p0_bank = netsoc_sdram_master_p0_bank;
assign netsoc_a7ddrphy_dfi_p0_cas_n = netsoc_sdram_master_p0_cas_n;
assign netsoc_a7ddrphy_dfi_p0_cs_n = netsoc_sdram_master_p0_cs_n;
assign netsoc_a7ddrphy_dfi_p0_ras_n = netsoc_sdram_master_p0_ras_n;
assign netsoc_a7ddrphy_dfi_p0_we_n = netsoc_sdram_master_p0_we_n;
assign netsoc_a7ddrphy_dfi_p0_cke = netsoc_sdram_master_p0_cke;
assign netsoc_a7ddrphy_dfi_p0_odt = netsoc_sdram_master_p0_odt;
assign netsoc_a7ddrphy_dfi_p0_reset_n = netsoc_sdram_master_p0_reset_n;
assign netsoc_a7ddrphy_dfi_p0_wrdata = netsoc_sdram_master_p0_wrdata;
assign netsoc_a7ddrphy_dfi_p0_wrdata_en = netsoc_sdram_master_p0_wrdata_en;
assign netsoc_a7ddrphy_dfi_p0_wrdata_mask = netsoc_sdram_master_p0_wrdata_mask;
assign netsoc_a7ddrphy_dfi_p0_rddata_en = netsoc_sdram_master_p0_rddata_en;
assign netsoc_sdram_master_p0_rddata = netsoc_a7ddrphy_dfi_p0_rddata;
assign netsoc_sdram_master_p0_rddata_valid = netsoc_a7ddrphy_dfi_p0_rddata_valid;
assign netsoc_a7ddrphy_dfi_p1_address = netsoc_sdram_master_p1_address;
assign netsoc_a7ddrphy_dfi_p1_bank = netsoc_sdram_master_p1_bank;
assign netsoc_a7ddrphy_dfi_p1_cas_n = netsoc_sdram_master_p1_cas_n;
assign netsoc_a7ddrphy_dfi_p1_cs_n = netsoc_sdram_master_p1_cs_n;
assign netsoc_a7ddrphy_dfi_p1_ras_n = netsoc_sdram_master_p1_ras_n;
assign netsoc_a7ddrphy_dfi_p1_we_n = netsoc_sdram_master_p1_we_n;
assign netsoc_a7ddrphy_dfi_p1_cke = netsoc_sdram_master_p1_cke;
assign netsoc_a7ddrphy_dfi_p1_odt = netsoc_sdram_master_p1_odt;
assign netsoc_a7ddrphy_dfi_p1_reset_n = netsoc_sdram_master_p1_reset_n;
assign netsoc_a7ddrphy_dfi_p1_wrdata = netsoc_sdram_master_p1_wrdata;
assign netsoc_a7ddrphy_dfi_p1_wrdata_en = netsoc_sdram_master_p1_wrdata_en;
assign netsoc_a7ddrphy_dfi_p1_wrdata_mask = netsoc_sdram_master_p1_wrdata_mask;
assign netsoc_a7ddrphy_dfi_p1_rddata_en = netsoc_sdram_master_p1_rddata_en;
assign netsoc_sdram_master_p1_rddata = netsoc_a7ddrphy_dfi_p1_rddata;
assign netsoc_sdram_master_p1_rddata_valid = netsoc_a7ddrphy_dfi_p1_rddata_valid;
assign netsoc_a7ddrphy_dfi_p2_address = netsoc_sdram_master_p2_address;
assign netsoc_a7ddrphy_dfi_p2_bank = netsoc_sdram_master_p2_bank;
assign netsoc_a7ddrphy_dfi_p2_cas_n = netsoc_sdram_master_p2_cas_n;
assign netsoc_a7ddrphy_dfi_p2_cs_n = netsoc_sdram_master_p2_cs_n;
assign netsoc_a7ddrphy_dfi_p2_ras_n = netsoc_sdram_master_p2_ras_n;
assign netsoc_a7ddrphy_dfi_p2_we_n = netsoc_sdram_master_p2_we_n;
assign netsoc_a7ddrphy_dfi_p2_cke = netsoc_sdram_master_p2_cke;
assign netsoc_a7ddrphy_dfi_p2_odt = netsoc_sdram_master_p2_odt;
assign netsoc_a7ddrphy_dfi_p2_reset_n = netsoc_sdram_master_p2_reset_n;
assign netsoc_a7ddrphy_dfi_p2_wrdata = netsoc_sdram_master_p2_wrdata;
assign netsoc_a7ddrphy_dfi_p2_wrdata_en = netsoc_sdram_master_p2_wrdata_en;
assign netsoc_a7ddrphy_dfi_p2_wrdata_mask = netsoc_sdram_master_p2_wrdata_mask;
assign netsoc_a7ddrphy_dfi_p2_rddata_en = netsoc_sdram_master_p2_rddata_en;
assign netsoc_sdram_master_p2_rddata = netsoc_a7ddrphy_dfi_p2_rddata;
assign netsoc_sdram_master_p2_rddata_valid = netsoc_a7ddrphy_dfi_p2_rddata_valid;
assign netsoc_a7ddrphy_dfi_p3_address = netsoc_sdram_master_p3_address;
assign netsoc_a7ddrphy_dfi_p3_bank = netsoc_sdram_master_p3_bank;
assign netsoc_a7ddrphy_dfi_p3_cas_n = netsoc_sdram_master_p3_cas_n;
assign netsoc_a7ddrphy_dfi_p3_cs_n = netsoc_sdram_master_p3_cs_n;
assign netsoc_a7ddrphy_dfi_p3_ras_n = netsoc_sdram_master_p3_ras_n;
assign netsoc_a7ddrphy_dfi_p3_we_n = netsoc_sdram_master_p3_we_n;
assign netsoc_a7ddrphy_dfi_p3_cke = netsoc_sdram_master_p3_cke;
assign netsoc_a7ddrphy_dfi_p3_odt = netsoc_sdram_master_p3_odt;
assign netsoc_a7ddrphy_dfi_p3_reset_n = netsoc_sdram_master_p3_reset_n;
assign netsoc_a7ddrphy_dfi_p3_wrdata = netsoc_sdram_master_p3_wrdata;
assign netsoc_a7ddrphy_dfi_p3_wrdata_en = netsoc_sdram_master_p3_wrdata_en;
assign netsoc_a7ddrphy_dfi_p3_wrdata_mask = netsoc_sdram_master_p3_wrdata_mask;
assign netsoc_a7ddrphy_dfi_p3_rddata_en = netsoc_sdram_master_p3_rddata_en;
assign netsoc_sdram_master_p3_rddata = netsoc_a7ddrphy_dfi_p3_rddata;
assign netsoc_sdram_master_p3_rddata_valid = netsoc_a7ddrphy_dfi_p3_rddata_valid;
assign netsoc_sdram_slave_p0_address = netsoc_sdram_dfi_p0_address;
assign netsoc_sdram_slave_p0_bank = netsoc_sdram_dfi_p0_bank;
assign netsoc_sdram_slave_p0_cas_n = netsoc_sdram_dfi_p0_cas_n;
assign netsoc_sdram_slave_p0_cs_n = netsoc_sdram_dfi_p0_cs_n;
assign netsoc_sdram_slave_p0_ras_n = netsoc_sdram_dfi_p0_ras_n;
assign netsoc_sdram_slave_p0_we_n = netsoc_sdram_dfi_p0_we_n;
assign netsoc_sdram_slave_p0_cke = netsoc_sdram_dfi_p0_cke;
assign netsoc_sdram_slave_p0_odt = netsoc_sdram_dfi_p0_odt;
assign netsoc_sdram_slave_p0_reset_n = netsoc_sdram_dfi_p0_reset_n;
assign netsoc_sdram_slave_p0_wrdata = netsoc_sdram_dfi_p0_wrdata;
assign netsoc_sdram_slave_p0_wrdata_en = netsoc_sdram_dfi_p0_wrdata_en;
assign netsoc_sdram_slave_p0_wrdata_mask = netsoc_sdram_dfi_p0_wrdata_mask;
assign netsoc_sdram_slave_p0_rddata_en = netsoc_sdram_dfi_p0_rddata_en;
assign netsoc_sdram_dfi_p0_rddata = netsoc_sdram_slave_p0_rddata;
assign netsoc_sdram_dfi_p0_rddata_valid = netsoc_sdram_slave_p0_rddata_valid;
assign netsoc_sdram_slave_p1_address = netsoc_sdram_dfi_p1_address;
assign netsoc_sdram_slave_p1_bank = netsoc_sdram_dfi_p1_bank;
assign netsoc_sdram_slave_p1_cas_n = netsoc_sdram_dfi_p1_cas_n;
assign netsoc_sdram_slave_p1_cs_n = netsoc_sdram_dfi_p1_cs_n;
assign netsoc_sdram_slave_p1_ras_n = netsoc_sdram_dfi_p1_ras_n;
assign netsoc_sdram_slave_p1_we_n = netsoc_sdram_dfi_p1_we_n;
assign netsoc_sdram_slave_p1_cke = netsoc_sdram_dfi_p1_cke;
assign netsoc_sdram_slave_p1_odt = netsoc_sdram_dfi_p1_odt;
assign netsoc_sdram_slave_p1_reset_n = netsoc_sdram_dfi_p1_reset_n;
assign netsoc_sdram_slave_p1_wrdata = netsoc_sdram_dfi_p1_wrdata;
assign netsoc_sdram_slave_p1_wrdata_en = netsoc_sdram_dfi_p1_wrdata_en;
assign netsoc_sdram_slave_p1_wrdata_mask = netsoc_sdram_dfi_p1_wrdata_mask;
assign netsoc_sdram_slave_p1_rddata_en = netsoc_sdram_dfi_p1_rddata_en;
assign netsoc_sdram_dfi_p1_rddata = netsoc_sdram_slave_p1_rddata;
assign netsoc_sdram_dfi_p1_rddata_valid = netsoc_sdram_slave_p1_rddata_valid;
assign netsoc_sdram_slave_p2_address = netsoc_sdram_dfi_p2_address;
assign netsoc_sdram_slave_p2_bank = netsoc_sdram_dfi_p2_bank;
assign netsoc_sdram_slave_p2_cas_n = netsoc_sdram_dfi_p2_cas_n;
assign netsoc_sdram_slave_p2_cs_n = netsoc_sdram_dfi_p2_cs_n;
assign netsoc_sdram_slave_p2_ras_n = netsoc_sdram_dfi_p2_ras_n;
assign netsoc_sdram_slave_p2_we_n = netsoc_sdram_dfi_p2_we_n;
assign netsoc_sdram_slave_p2_cke = netsoc_sdram_dfi_p2_cke;
assign netsoc_sdram_slave_p2_odt = netsoc_sdram_dfi_p2_odt;
assign netsoc_sdram_slave_p2_reset_n = netsoc_sdram_dfi_p2_reset_n;
assign netsoc_sdram_slave_p2_wrdata = netsoc_sdram_dfi_p2_wrdata;
assign netsoc_sdram_slave_p2_wrdata_en = netsoc_sdram_dfi_p2_wrdata_en;
assign netsoc_sdram_slave_p2_wrdata_mask = netsoc_sdram_dfi_p2_wrdata_mask;
assign netsoc_sdram_slave_p2_rddata_en = netsoc_sdram_dfi_p2_rddata_en;
assign netsoc_sdram_dfi_p2_rddata = netsoc_sdram_slave_p2_rddata;
assign netsoc_sdram_dfi_p2_rddata_valid = netsoc_sdram_slave_p2_rddata_valid;
assign netsoc_sdram_slave_p3_address = netsoc_sdram_dfi_p3_address;
assign netsoc_sdram_slave_p3_bank = netsoc_sdram_dfi_p3_bank;
assign netsoc_sdram_slave_p3_cas_n = netsoc_sdram_dfi_p3_cas_n;
assign netsoc_sdram_slave_p3_cs_n = netsoc_sdram_dfi_p3_cs_n;
assign netsoc_sdram_slave_p3_ras_n = netsoc_sdram_dfi_p3_ras_n;
assign netsoc_sdram_slave_p3_we_n = netsoc_sdram_dfi_p3_we_n;
assign netsoc_sdram_slave_p3_cke = netsoc_sdram_dfi_p3_cke;
assign netsoc_sdram_slave_p3_odt = netsoc_sdram_dfi_p3_odt;
assign netsoc_sdram_slave_p3_reset_n = netsoc_sdram_dfi_p3_reset_n;
assign netsoc_sdram_slave_p3_wrdata = netsoc_sdram_dfi_p3_wrdata;
assign netsoc_sdram_slave_p3_wrdata_en = netsoc_sdram_dfi_p3_wrdata_en;
assign netsoc_sdram_slave_p3_wrdata_mask = netsoc_sdram_dfi_p3_wrdata_mask;
assign netsoc_sdram_slave_p3_rddata_en = netsoc_sdram_dfi_p3_rddata_en;
assign netsoc_sdram_dfi_p3_rddata = netsoc_sdram_slave_p3_rddata;
assign netsoc_sdram_dfi_p3_rddata_valid = netsoc_sdram_slave_p3_rddata_valid;
always @(*) begin
	netsoc_sdram_master_p3_cs_n <= 1'd1;
	netsoc_sdram_master_p3_ras_n <= 1'd1;
	netsoc_sdram_master_p3_we_n <= 1'd1;
	netsoc_sdram_master_p3_cke <= 1'd0;
	netsoc_sdram_master_p3_odt <= 1'd0;
	netsoc_sdram_master_p3_reset_n <= 1'd0;
	netsoc_sdram_master_p3_wrdata <= 32'd0;
	netsoc_sdram_master_p3_wrdata_en <= 1'd0;
	netsoc_sdram_master_p3_wrdata_mask <= 4'd0;
	netsoc_sdram_master_p3_rddata_en <= 1'd0;
	netsoc_sdram_inti_p0_rddata <= 32'd0;
	netsoc_sdram_inti_p0_rddata_valid <= 1'd0;
	netsoc_sdram_inti_p1_rddata <= 32'd0;
	netsoc_sdram_inti_p1_rddata_valid <= 1'd0;
	netsoc_sdram_inti_p2_rddata <= 32'd0;
	netsoc_sdram_inti_p2_rddata_valid <= 1'd0;
	netsoc_sdram_inti_p3_rddata <= 32'd0;
	netsoc_sdram_inti_p3_rddata_valid <= 1'd0;
	netsoc_sdram_slave_p0_rddata <= 32'd0;
	netsoc_sdram_slave_p0_rddata_valid <= 1'd0;
	netsoc_sdram_slave_p1_rddata <= 32'd0;
	netsoc_sdram_slave_p1_rddata_valid <= 1'd0;
	netsoc_sdram_slave_p2_rddata <= 32'd0;
	netsoc_sdram_slave_p2_rddata_valid <= 1'd0;
	netsoc_sdram_slave_p3_rddata <= 32'd0;
	netsoc_sdram_slave_p3_rddata_valid <= 1'd0;
	netsoc_sdram_master_p0_address <= 14'd0;
	netsoc_sdram_master_p0_bank <= 3'd0;
	netsoc_sdram_master_p0_cas_n <= 1'd1;
	netsoc_sdram_master_p0_cs_n <= 1'd1;
	netsoc_sdram_master_p0_ras_n <= 1'd1;
	netsoc_sdram_master_p0_we_n <= 1'd1;
	netsoc_sdram_master_p0_cke <= 1'd0;
	netsoc_sdram_master_p0_odt <= 1'd0;
	netsoc_sdram_master_p0_reset_n <= 1'd0;
	netsoc_sdram_master_p0_wrdata <= 32'd0;
	netsoc_sdram_master_p0_wrdata_en <= 1'd0;
	netsoc_sdram_master_p0_wrdata_mask <= 4'd0;
	netsoc_sdram_master_p0_rddata_en <= 1'd0;
	netsoc_sdram_master_p1_address <= 14'd0;
	netsoc_sdram_master_p1_bank <= 3'd0;
	netsoc_sdram_master_p1_cas_n <= 1'd1;
	netsoc_sdram_master_p1_cs_n <= 1'd1;
	netsoc_sdram_master_p1_ras_n <= 1'd1;
	netsoc_sdram_master_p1_we_n <= 1'd1;
	netsoc_sdram_master_p1_cke <= 1'd0;
	netsoc_sdram_master_p1_odt <= 1'd0;
	netsoc_sdram_master_p1_reset_n <= 1'd0;
	netsoc_sdram_master_p1_wrdata <= 32'd0;
	netsoc_sdram_master_p1_wrdata_en <= 1'd0;
	netsoc_sdram_master_p1_wrdata_mask <= 4'd0;
	netsoc_sdram_master_p1_rddata_en <= 1'd0;
	netsoc_sdram_master_p2_address <= 14'd0;
	netsoc_sdram_master_p2_bank <= 3'd0;
	netsoc_sdram_master_p2_cas_n <= 1'd1;
	netsoc_sdram_master_p2_cs_n <= 1'd1;
	netsoc_sdram_master_p2_ras_n <= 1'd1;
	netsoc_sdram_master_p2_we_n <= 1'd1;
	netsoc_sdram_master_p2_cke <= 1'd0;
	netsoc_sdram_master_p2_odt <= 1'd0;
	netsoc_sdram_master_p2_reset_n <= 1'd0;
	netsoc_sdram_master_p2_wrdata <= 32'd0;
	netsoc_sdram_master_p2_wrdata_en <= 1'd0;
	netsoc_sdram_master_p2_wrdata_mask <= 4'd0;
	netsoc_sdram_master_p2_rddata_en <= 1'd0;
	netsoc_sdram_master_p3_address <= 14'd0;
	netsoc_sdram_master_p3_bank <= 3'd0;
	netsoc_sdram_master_p3_cas_n <= 1'd1;
	if (netsoc_sdram_storage[0]) begin
		netsoc_sdram_master_p0_address <= netsoc_sdram_slave_p0_address;
		netsoc_sdram_master_p0_bank <= netsoc_sdram_slave_p0_bank;
		netsoc_sdram_master_p0_cas_n <= netsoc_sdram_slave_p0_cas_n;
		netsoc_sdram_master_p0_cs_n <= netsoc_sdram_slave_p0_cs_n;
		netsoc_sdram_master_p0_ras_n <= netsoc_sdram_slave_p0_ras_n;
		netsoc_sdram_master_p0_we_n <= netsoc_sdram_slave_p0_we_n;
		netsoc_sdram_master_p0_cke <= netsoc_sdram_slave_p0_cke;
		netsoc_sdram_master_p0_odt <= netsoc_sdram_slave_p0_odt;
		netsoc_sdram_master_p0_reset_n <= netsoc_sdram_slave_p0_reset_n;
		netsoc_sdram_master_p0_wrdata <= netsoc_sdram_slave_p0_wrdata;
		netsoc_sdram_master_p0_wrdata_en <= netsoc_sdram_slave_p0_wrdata_en;
		netsoc_sdram_master_p0_wrdata_mask <= netsoc_sdram_slave_p0_wrdata_mask;
		netsoc_sdram_master_p0_rddata_en <= netsoc_sdram_slave_p0_rddata_en;
		netsoc_sdram_slave_p0_rddata <= netsoc_sdram_master_p0_rddata;
		netsoc_sdram_slave_p0_rddata_valid <= netsoc_sdram_master_p0_rddata_valid;
		netsoc_sdram_master_p1_address <= netsoc_sdram_slave_p1_address;
		netsoc_sdram_master_p1_bank <= netsoc_sdram_slave_p1_bank;
		netsoc_sdram_master_p1_cas_n <= netsoc_sdram_slave_p1_cas_n;
		netsoc_sdram_master_p1_cs_n <= netsoc_sdram_slave_p1_cs_n;
		netsoc_sdram_master_p1_ras_n <= netsoc_sdram_slave_p1_ras_n;
		netsoc_sdram_master_p1_we_n <= netsoc_sdram_slave_p1_we_n;
		netsoc_sdram_master_p1_cke <= netsoc_sdram_slave_p1_cke;
		netsoc_sdram_master_p1_odt <= netsoc_sdram_slave_p1_odt;
		netsoc_sdram_master_p1_reset_n <= netsoc_sdram_slave_p1_reset_n;
		netsoc_sdram_master_p1_wrdata <= netsoc_sdram_slave_p1_wrdata;
		netsoc_sdram_master_p1_wrdata_en <= netsoc_sdram_slave_p1_wrdata_en;
		netsoc_sdram_master_p1_wrdata_mask <= netsoc_sdram_slave_p1_wrdata_mask;
		netsoc_sdram_master_p1_rddata_en <= netsoc_sdram_slave_p1_rddata_en;
		netsoc_sdram_slave_p1_rddata <= netsoc_sdram_master_p1_rddata;
		netsoc_sdram_slave_p1_rddata_valid <= netsoc_sdram_master_p1_rddata_valid;
		netsoc_sdram_master_p2_address <= netsoc_sdram_slave_p2_address;
		netsoc_sdram_master_p2_bank <= netsoc_sdram_slave_p2_bank;
		netsoc_sdram_master_p2_cas_n <= netsoc_sdram_slave_p2_cas_n;
		netsoc_sdram_master_p2_cs_n <= netsoc_sdram_slave_p2_cs_n;
		netsoc_sdram_master_p2_ras_n <= netsoc_sdram_slave_p2_ras_n;
		netsoc_sdram_master_p2_we_n <= netsoc_sdram_slave_p2_we_n;
		netsoc_sdram_master_p2_cke <= netsoc_sdram_slave_p2_cke;
		netsoc_sdram_master_p2_odt <= netsoc_sdram_slave_p2_odt;
		netsoc_sdram_master_p2_reset_n <= netsoc_sdram_slave_p2_reset_n;
		netsoc_sdram_master_p2_wrdata <= netsoc_sdram_slave_p2_wrdata;
		netsoc_sdram_master_p2_wrdata_en <= netsoc_sdram_slave_p2_wrdata_en;
		netsoc_sdram_master_p2_wrdata_mask <= netsoc_sdram_slave_p2_wrdata_mask;
		netsoc_sdram_master_p2_rddata_en <= netsoc_sdram_slave_p2_rddata_en;
		netsoc_sdram_slave_p2_rddata <= netsoc_sdram_master_p2_rddata;
		netsoc_sdram_slave_p2_rddata_valid <= netsoc_sdram_master_p2_rddata_valid;
		netsoc_sdram_master_p3_address <= netsoc_sdram_slave_p3_address;
		netsoc_sdram_master_p3_bank <= netsoc_sdram_slave_p3_bank;
		netsoc_sdram_master_p3_cas_n <= netsoc_sdram_slave_p3_cas_n;
		netsoc_sdram_master_p3_cs_n <= netsoc_sdram_slave_p3_cs_n;
		netsoc_sdram_master_p3_ras_n <= netsoc_sdram_slave_p3_ras_n;
		netsoc_sdram_master_p3_we_n <= netsoc_sdram_slave_p3_we_n;
		netsoc_sdram_master_p3_cke <= netsoc_sdram_slave_p3_cke;
		netsoc_sdram_master_p3_odt <= netsoc_sdram_slave_p3_odt;
		netsoc_sdram_master_p3_reset_n <= netsoc_sdram_slave_p3_reset_n;
		netsoc_sdram_master_p3_wrdata <= netsoc_sdram_slave_p3_wrdata;
		netsoc_sdram_master_p3_wrdata_en <= netsoc_sdram_slave_p3_wrdata_en;
		netsoc_sdram_master_p3_wrdata_mask <= netsoc_sdram_slave_p3_wrdata_mask;
		netsoc_sdram_master_p3_rddata_en <= netsoc_sdram_slave_p3_rddata_en;
		netsoc_sdram_slave_p3_rddata <= netsoc_sdram_master_p3_rddata;
		netsoc_sdram_slave_p3_rddata_valid <= netsoc_sdram_master_p3_rddata_valid;
	end else begin
		netsoc_sdram_master_p0_address <= netsoc_sdram_inti_p0_address;
		netsoc_sdram_master_p0_bank <= netsoc_sdram_inti_p0_bank;
		netsoc_sdram_master_p0_cas_n <= netsoc_sdram_inti_p0_cas_n;
		netsoc_sdram_master_p0_cs_n <= netsoc_sdram_inti_p0_cs_n;
		netsoc_sdram_master_p0_ras_n <= netsoc_sdram_inti_p0_ras_n;
		netsoc_sdram_master_p0_we_n <= netsoc_sdram_inti_p0_we_n;
		netsoc_sdram_master_p0_cke <= netsoc_sdram_inti_p0_cke;
		netsoc_sdram_master_p0_odt <= netsoc_sdram_inti_p0_odt;
		netsoc_sdram_master_p0_reset_n <= netsoc_sdram_inti_p0_reset_n;
		netsoc_sdram_master_p0_wrdata <= netsoc_sdram_inti_p0_wrdata;
		netsoc_sdram_master_p0_wrdata_en <= netsoc_sdram_inti_p0_wrdata_en;
		netsoc_sdram_master_p0_wrdata_mask <= netsoc_sdram_inti_p0_wrdata_mask;
		netsoc_sdram_master_p0_rddata_en <= netsoc_sdram_inti_p0_rddata_en;
		netsoc_sdram_inti_p0_rddata <= netsoc_sdram_master_p0_rddata;
		netsoc_sdram_inti_p0_rddata_valid <= netsoc_sdram_master_p0_rddata_valid;
		netsoc_sdram_master_p1_address <= netsoc_sdram_inti_p1_address;
		netsoc_sdram_master_p1_bank <= netsoc_sdram_inti_p1_bank;
		netsoc_sdram_master_p1_cas_n <= netsoc_sdram_inti_p1_cas_n;
		netsoc_sdram_master_p1_cs_n <= netsoc_sdram_inti_p1_cs_n;
		netsoc_sdram_master_p1_ras_n <= netsoc_sdram_inti_p1_ras_n;
		netsoc_sdram_master_p1_we_n <= netsoc_sdram_inti_p1_we_n;
		netsoc_sdram_master_p1_cke <= netsoc_sdram_inti_p1_cke;
		netsoc_sdram_master_p1_odt <= netsoc_sdram_inti_p1_odt;
		netsoc_sdram_master_p1_reset_n <= netsoc_sdram_inti_p1_reset_n;
		netsoc_sdram_master_p1_wrdata <= netsoc_sdram_inti_p1_wrdata;
		netsoc_sdram_master_p1_wrdata_en <= netsoc_sdram_inti_p1_wrdata_en;
		netsoc_sdram_master_p1_wrdata_mask <= netsoc_sdram_inti_p1_wrdata_mask;
		netsoc_sdram_master_p1_rddata_en <= netsoc_sdram_inti_p1_rddata_en;
		netsoc_sdram_inti_p1_rddata <= netsoc_sdram_master_p1_rddata;
		netsoc_sdram_inti_p1_rddata_valid <= netsoc_sdram_master_p1_rddata_valid;
		netsoc_sdram_master_p2_address <= netsoc_sdram_inti_p2_address;
		netsoc_sdram_master_p2_bank <= netsoc_sdram_inti_p2_bank;
		netsoc_sdram_master_p2_cas_n <= netsoc_sdram_inti_p2_cas_n;
		netsoc_sdram_master_p2_cs_n <= netsoc_sdram_inti_p2_cs_n;
		netsoc_sdram_master_p2_ras_n <= netsoc_sdram_inti_p2_ras_n;
		netsoc_sdram_master_p2_we_n <= netsoc_sdram_inti_p2_we_n;
		netsoc_sdram_master_p2_cke <= netsoc_sdram_inti_p2_cke;
		netsoc_sdram_master_p2_odt <= netsoc_sdram_inti_p2_odt;
		netsoc_sdram_master_p2_reset_n <= netsoc_sdram_inti_p2_reset_n;
		netsoc_sdram_master_p2_wrdata <= netsoc_sdram_inti_p2_wrdata;
		netsoc_sdram_master_p2_wrdata_en <= netsoc_sdram_inti_p2_wrdata_en;
		netsoc_sdram_master_p2_wrdata_mask <= netsoc_sdram_inti_p2_wrdata_mask;
		netsoc_sdram_master_p2_rddata_en <= netsoc_sdram_inti_p2_rddata_en;
		netsoc_sdram_inti_p2_rddata <= netsoc_sdram_master_p2_rddata;
		netsoc_sdram_inti_p2_rddata_valid <= netsoc_sdram_master_p2_rddata_valid;
		netsoc_sdram_master_p3_address <= netsoc_sdram_inti_p3_address;
		netsoc_sdram_master_p3_bank <= netsoc_sdram_inti_p3_bank;
		netsoc_sdram_master_p3_cas_n <= netsoc_sdram_inti_p3_cas_n;
		netsoc_sdram_master_p3_cs_n <= netsoc_sdram_inti_p3_cs_n;
		netsoc_sdram_master_p3_ras_n <= netsoc_sdram_inti_p3_ras_n;
		netsoc_sdram_master_p3_we_n <= netsoc_sdram_inti_p3_we_n;
		netsoc_sdram_master_p3_cke <= netsoc_sdram_inti_p3_cke;
		netsoc_sdram_master_p3_odt <= netsoc_sdram_inti_p3_odt;
		netsoc_sdram_master_p3_reset_n <= netsoc_sdram_inti_p3_reset_n;
		netsoc_sdram_master_p3_wrdata <= netsoc_sdram_inti_p3_wrdata;
		netsoc_sdram_master_p3_wrdata_en <= netsoc_sdram_inti_p3_wrdata_en;
		netsoc_sdram_master_p3_wrdata_mask <= netsoc_sdram_inti_p3_wrdata_mask;
		netsoc_sdram_master_p3_rddata_en <= netsoc_sdram_inti_p3_rddata_en;
		netsoc_sdram_inti_p3_rddata <= netsoc_sdram_master_p3_rddata;
		netsoc_sdram_inti_p3_rddata_valid <= netsoc_sdram_master_p3_rddata_valid;
	end
end
assign netsoc_sdram_inti_p0_cke = netsoc_sdram_storage[1];
assign netsoc_sdram_inti_p1_cke = netsoc_sdram_storage[1];
assign netsoc_sdram_inti_p2_cke = netsoc_sdram_storage[1];
assign netsoc_sdram_inti_p3_cke = netsoc_sdram_storage[1];
assign netsoc_sdram_inti_p0_odt = netsoc_sdram_storage[2];
assign netsoc_sdram_inti_p1_odt = netsoc_sdram_storage[2];
assign netsoc_sdram_inti_p2_odt = netsoc_sdram_storage[2];
assign netsoc_sdram_inti_p3_odt = netsoc_sdram_storage[2];
assign netsoc_sdram_inti_p0_reset_n = netsoc_sdram_storage[3];
assign netsoc_sdram_inti_p1_reset_n = netsoc_sdram_storage[3];
assign netsoc_sdram_inti_p2_reset_n = netsoc_sdram_storage[3];
assign netsoc_sdram_inti_p3_reset_n = netsoc_sdram_storage[3];
always @(*) begin
	netsoc_sdram_inti_p0_ras_n <= 1'd1;
	netsoc_sdram_inti_p0_we_n <= 1'd1;
	netsoc_sdram_inti_p0_cas_n <= 1'd1;
	netsoc_sdram_inti_p0_cs_n <= 1'd1;
	if (netsoc_sdram_phaseinjector0_command_issue_re) begin
		netsoc_sdram_inti_p0_cs_n <= (~netsoc_sdram_phaseinjector0_command_storage[0]);
		netsoc_sdram_inti_p0_we_n <= (~netsoc_sdram_phaseinjector0_command_storage[1]);
		netsoc_sdram_inti_p0_cas_n <= (~netsoc_sdram_phaseinjector0_command_storage[2]);
		netsoc_sdram_inti_p0_ras_n <= (~netsoc_sdram_phaseinjector0_command_storage[3]);
	end else begin
		netsoc_sdram_inti_p0_cs_n <= 1'd1;
		netsoc_sdram_inti_p0_we_n <= 1'd1;
		netsoc_sdram_inti_p0_cas_n <= 1'd1;
		netsoc_sdram_inti_p0_ras_n <= 1'd1;
	end
end
assign netsoc_sdram_inti_p0_address = netsoc_sdram_phaseinjector0_address_storage;
assign netsoc_sdram_inti_p0_bank = netsoc_sdram_phaseinjector0_baddress_storage;
assign netsoc_sdram_inti_p0_wrdata_en = (netsoc_sdram_phaseinjector0_command_issue_re & netsoc_sdram_phaseinjector0_command_storage[4]);
assign netsoc_sdram_inti_p0_rddata_en = (netsoc_sdram_phaseinjector0_command_issue_re & netsoc_sdram_phaseinjector0_command_storage[5]);
assign netsoc_sdram_inti_p0_wrdata = netsoc_sdram_phaseinjector0_wrdata_storage;
assign netsoc_sdram_inti_p0_wrdata_mask = 1'd0;
always @(*) begin
	netsoc_sdram_inti_p1_we_n <= 1'd1;
	netsoc_sdram_inti_p1_cas_n <= 1'd1;
	netsoc_sdram_inti_p1_cs_n <= 1'd1;
	netsoc_sdram_inti_p1_ras_n <= 1'd1;
	if (netsoc_sdram_phaseinjector1_command_issue_re) begin
		netsoc_sdram_inti_p1_cs_n <= (~netsoc_sdram_phaseinjector1_command_storage[0]);
		netsoc_sdram_inti_p1_we_n <= (~netsoc_sdram_phaseinjector1_command_storage[1]);
		netsoc_sdram_inti_p1_cas_n <= (~netsoc_sdram_phaseinjector1_command_storage[2]);
		netsoc_sdram_inti_p1_ras_n <= (~netsoc_sdram_phaseinjector1_command_storage[3]);
	end else begin
		netsoc_sdram_inti_p1_cs_n <= 1'd1;
		netsoc_sdram_inti_p1_we_n <= 1'd1;
		netsoc_sdram_inti_p1_cas_n <= 1'd1;
		netsoc_sdram_inti_p1_ras_n <= 1'd1;
	end
end
assign netsoc_sdram_inti_p1_address = netsoc_sdram_phaseinjector1_address_storage;
assign netsoc_sdram_inti_p1_bank = netsoc_sdram_phaseinjector1_baddress_storage;
assign netsoc_sdram_inti_p1_wrdata_en = (netsoc_sdram_phaseinjector1_command_issue_re & netsoc_sdram_phaseinjector1_command_storage[4]);
assign netsoc_sdram_inti_p1_rddata_en = (netsoc_sdram_phaseinjector1_command_issue_re & netsoc_sdram_phaseinjector1_command_storage[5]);
assign netsoc_sdram_inti_p1_wrdata = netsoc_sdram_phaseinjector1_wrdata_storage;
assign netsoc_sdram_inti_p1_wrdata_mask = 1'd0;
always @(*) begin
	netsoc_sdram_inti_p2_cas_n <= 1'd1;
	netsoc_sdram_inti_p2_cs_n <= 1'd1;
	netsoc_sdram_inti_p2_ras_n <= 1'd1;
	netsoc_sdram_inti_p2_we_n <= 1'd1;
	if (netsoc_sdram_phaseinjector2_command_issue_re) begin
		netsoc_sdram_inti_p2_cs_n <= (~netsoc_sdram_phaseinjector2_command_storage[0]);
		netsoc_sdram_inti_p2_we_n <= (~netsoc_sdram_phaseinjector2_command_storage[1]);
		netsoc_sdram_inti_p2_cas_n <= (~netsoc_sdram_phaseinjector2_command_storage[2]);
		netsoc_sdram_inti_p2_ras_n <= (~netsoc_sdram_phaseinjector2_command_storage[3]);
	end else begin
		netsoc_sdram_inti_p2_cs_n <= 1'd1;
		netsoc_sdram_inti_p2_we_n <= 1'd1;
		netsoc_sdram_inti_p2_cas_n <= 1'd1;
		netsoc_sdram_inti_p2_ras_n <= 1'd1;
	end
end
assign netsoc_sdram_inti_p2_address = netsoc_sdram_phaseinjector2_address_storage;
assign netsoc_sdram_inti_p2_bank = netsoc_sdram_phaseinjector2_baddress_storage;
assign netsoc_sdram_inti_p2_wrdata_en = (netsoc_sdram_phaseinjector2_command_issue_re & netsoc_sdram_phaseinjector2_command_storage[4]);
assign netsoc_sdram_inti_p2_rddata_en = (netsoc_sdram_phaseinjector2_command_issue_re & netsoc_sdram_phaseinjector2_command_storage[5]);
assign netsoc_sdram_inti_p2_wrdata = netsoc_sdram_phaseinjector2_wrdata_storage;
assign netsoc_sdram_inti_p2_wrdata_mask = 1'd0;
always @(*) begin
	netsoc_sdram_inti_p3_cs_n <= 1'd1;
	netsoc_sdram_inti_p3_ras_n <= 1'd1;
	netsoc_sdram_inti_p3_we_n <= 1'd1;
	netsoc_sdram_inti_p3_cas_n <= 1'd1;
	if (netsoc_sdram_phaseinjector3_command_issue_re) begin
		netsoc_sdram_inti_p3_cs_n <= (~netsoc_sdram_phaseinjector3_command_storage[0]);
		netsoc_sdram_inti_p3_we_n <= (~netsoc_sdram_phaseinjector3_command_storage[1]);
		netsoc_sdram_inti_p3_cas_n <= (~netsoc_sdram_phaseinjector3_command_storage[2]);
		netsoc_sdram_inti_p3_ras_n <= (~netsoc_sdram_phaseinjector3_command_storage[3]);
	end else begin
		netsoc_sdram_inti_p3_cs_n <= 1'd1;
		netsoc_sdram_inti_p3_we_n <= 1'd1;
		netsoc_sdram_inti_p3_cas_n <= 1'd1;
		netsoc_sdram_inti_p3_ras_n <= 1'd1;
	end
end
assign netsoc_sdram_inti_p3_address = netsoc_sdram_phaseinjector3_address_storage;
assign netsoc_sdram_inti_p3_bank = netsoc_sdram_phaseinjector3_baddress_storage;
assign netsoc_sdram_inti_p3_wrdata_en = (netsoc_sdram_phaseinjector3_command_issue_re & netsoc_sdram_phaseinjector3_command_storage[4]);
assign netsoc_sdram_inti_p3_rddata_en = (netsoc_sdram_phaseinjector3_command_issue_re & netsoc_sdram_phaseinjector3_command_storage[5]);
assign netsoc_sdram_inti_p3_wrdata = netsoc_sdram_phaseinjector3_wrdata_storage;
assign netsoc_sdram_inti_p3_wrdata_mask = 1'd0;
assign netsoc_sdram_bankmachine0_req_valid = netsoc_sdram_interface_bank0_valid;
assign netsoc_sdram_interface_bank0_ready = netsoc_sdram_bankmachine0_req_ready;
assign netsoc_sdram_bankmachine0_req_we = netsoc_sdram_interface_bank0_we;
assign netsoc_sdram_bankmachine0_req_adr = netsoc_sdram_interface_bank0_adr;
assign netsoc_sdram_interface_bank0_lock = netsoc_sdram_bankmachine0_req_lock;
assign netsoc_sdram_interface_bank0_wdata_ready = netsoc_sdram_bankmachine0_req_wdata_ready;
assign netsoc_sdram_interface_bank0_rdata_valid = netsoc_sdram_bankmachine0_req_rdata_valid;
assign netsoc_sdram_bankmachine1_req_valid = netsoc_sdram_interface_bank1_valid;
assign netsoc_sdram_interface_bank1_ready = netsoc_sdram_bankmachine1_req_ready;
assign netsoc_sdram_bankmachine1_req_we = netsoc_sdram_interface_bank1_we;
assign netsoc_sdram_bankmachine1_req_adr = netsoc_sdram_interface_bank1_adr;
assign netsoc_sdram_interface_bank1_lock = netsoc_sdram_bankmachine1_req_lock;
assign netsoc_sdram_interface_bank1_wdata_ready = netsoc_sdram_bankmachine1_req_wdata_ready;
assign netsoc_sdram_interface_bank1_rdata_valid = netsoc_sdram_bankmachine1_req_rdata_valid;
assign netsoc_sdram_bankmachine2_req_valid = netsoc_sdram_interface_bank2_valid;
assign netsoc_sdram_interface_bank2_ready = netsoc_sdram_bankmachine2_req_ready;
assign netsoc_sdram_bankmachine2_req_we = netsoc_sdram_interface_bank2_we;
assign netsoc_sdram_bankmachine2_req_adr = netsoc_sdram_interface_bank2_adr;
assign netsoc_sdram_interface_bank2_lock = netsoc_sdram_bankmachine2_req_lock;
assign netsoc_sdram_interface_bank2_wdata_ready = netsoc_sdram_bankmachine2_req_wdata_ready;
assign netsoc_sdram_interface_bank2_rdata_valid = netsoc_sdram_bankmachine2_req_rdata_valid;
assign netsoc_sdram_bankmachine3_req_valid = netsoc_sdram_interface_bank3_valid;
assign netsoc_sdram_interface_bank3_ready = netsoc_sdram_bankmachine3_req_ready;
assign netsoc_sdram_bankmachine3_req_we = netsoc_sdram_interface_bank3_we;
assign netsoc_sdram_bankmachine3_req_adr = netsoc_sdram_interface_bank3_adr;
assign netsoc_sdram_interface_bank3_lock = netsoc_sdram_bankmachine3_req_lock;
assign netsoc_sdram_interface_bank3_wdata_ready = netsoc_sdram_bankmachine3_req_wdata_ready;
assign netsoc_sdram_interface_bank3_rdata_valid = netsoc_sdram_bankmachine3_req_rdata_valid;
assign netsoc_sdram_bankmachine4_req_valid = netsoc_sdram_interface_bank4_valid;
assign netsoc_sdram_interface_bank4_ready = netsoc_sdram_bankmachine4_req_ready;
assign netsoc_sdram_bankmachine4_req_we = netsoc_sdram_interface_bank4_we;
assign netsoc_sdram_bankmachine4_req_adr = netsoc_sdram_interface_bank4_adr;
assign netsoc_sdram_interface_bank4_lock = netsoc_sdram_bankmachine4_req_lock;
assign netsoc_sdram_interface_bank4_wdata_ready = netsoc_sdram_bankmachine4_req_wdata_ready;
assign netsoc_sdram_interface_bank4_rdata_valid = netsoc_sdram_bankmachine4_req_rdata_valid;
assign netsoc_sdram_bankmachine5_req_valid = netsoc_sdram_interface_bank5_valid;
assign netsoc_sdram_interface_bank5_ready = netsoc_sdram_bankmachine5_req_ready;
assign netsoc_sdram_bankmachine5_req_we = netsoc_sdram_interface_bank5_we;
assign netsoc_sdram_bankmachine5_req_adr = netsoc_sdram_interface_bank5_adr;
assign netsoc_sdram_interface_bank5_lock = netsoc_sdram_bankmachine5_req_lock;
assign netsoc_sdram_interface_bank5_wdata_ready = netsoc_sdram_bankmachine5_req_wdata_ready;
assign netsoc_sdram_interface_bank5_rdata_valid = netsoc_sdram_bankmachine5_req_rdata_valid;
assign netsoc_sdram_bankmachine6_req_valid = netsoc_sdram_interface_bank6_valid;
assign netsoc_sdram_interface_bank6_ready = netsoc_sdram_bankmachine6_req_ready;
assign netsoc_sdram_bankmachine6_req_we = netsoc_sdram_interface_bank6_we;
assign netsoc_sdram_bankmachine6_req_adr = netsoc_sdram_interface_bank6_adr;
assign netsoc_sdram_interface_bank6_lock = netsoc_sdram_bankmachine6_req_lock;
assign netsoc_sdram_interface_bank6_wdata_ready = netsoc_sdram_bankmachine6_req_wdata_ready;
assign netsoc_sdram_interface_bank6_rdata_valid = netsoc_sdram_bankmachine6_req_rdata_valid;
assign netsoc_sdram_bankmachine7_req_valid = netsoc_sdram_interface_bank7_valid;
assign netsoc_sdram_interface_bank7_ready = netsoc_sdram_bankmachine7_req_ready;
assign netsoc_sdram_bankmachine7_req_we = netsoc_sdram_interface_bank7_we;
assign netsoc_sdram_bankmachine7_req_adr = netsoc_sdram_interface_bank7_adr;
assign netsoc_sdram_interface_bank7_lock = netsoc_sdram_bankmachine7_req_lock;
assign netsoc_sdram_interface_bank7_wdata_ready = netsoc_sdram_bankmachine7_req_wdata_ready;
assign netsoc_sdram_interface_bank7_rdata_valid = netsoc_sdram_bankmachine7_req_rdata_valid;
assign netsoc_sdram_wait = (1'd1 & (~netsoc_sdram_done));
assign netsoc_sdram_done = (netsoc_sdram_count == 1'd0);
always @(*) begin
	netsoc_sdram_seq_start <= 1'd0;
	netsoc_sdram_cmd_valid <= 1'd0;
	netsoc_sdram_cmd_last <= 1'd0;
	refresher_next_state <= 2'd0;
	refresher_next_state <= refresher_state;
	case (refresher_state)
		1'd1: begin
			netsoc_sdram_cmd_valid <= 1'd1;
			if (netsoc_sdram_cmd_ready) begin
				netsoc_sdram_seq_start <= 1'd1;
				refresher_next_state <= 2'd2;
			end
		end
		2'd2: begin
			if (netsoc_sdram_seq_done) begin
				netsoc_sdram_cmd_last <= 1'd1;
				refresher_next_state <= 1'd0;
			end else begin
				netsoc_sdram_cmd_valid <= 1'd1;
			end
		end
		default: begin
			if (netsoc_sdram_done) begin
				refresher_next_state <= 1'd1;
			end
		end
	endcase
end
assign netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_valid = netsoc_sdram_bankmachine0_req_valid;
assign netsoc_sdram_bankmachine0_req_ready = netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_ready;
assign netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_we = netsoc_sdram_bankmachine0_req_we;
assign netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_adr = netsoc_sdram_bankmachine0_req_adr;
assign netsoc_sdram_bankmachine0_cmd_buffer_sink_valid = netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_valid;
assign netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_ready = netsoc_sdram_bankmachine0_cmd_buffer_sink_ready;
assign netsoc_sdram_bankmachine0_cmd_buffer_sink_first = netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_first;
assign netsoc_sdram_bankmachine0_cmd_buffer_sink_last = netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_last;
assign netsoc_sdram_bankmachine0_cmd_buffer_sink_payload_we = netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_we;
assign netsoc_sdram_bankmachine0_cmd_buffer_sink_payload_adr = netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_adr;
assign netsoc_sdram_bankmachine0_cmd_buffer_source_ready = (netsoc_sdram_bankmachine0_req_wdata_ready | netsoc_sdram_bankmachine0_req_rdata_valid);
assign netsoc_sdram_bankmachine0_req_lock = (netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_valid | netsoc_sdram_bankmachine0_cmd_buffer_source_valid);
assign netsoc_sdram_bankmachine0_hit = (netsoc_sdram_bankmachine0_openrow == netsoc_sdram_bankmachine0_cmd_buffer_source_payload_adr[20:7]);
assign netsoc_sdram_bankmachine0_cmd_payload_ba = 1'd0;
always @(*) begin
	netsoc_sdram_bankmachine0_cmd_payload_a <= 14'd0;
	if (netsoc_sdram_bankmachine0_sel_row_adr) begin
		netsoc_sdram_bankmachine0_cmd_payload_a <= netsoc_sdram_bankmachine0_cmd_buffer_source_payload_adr[20:7];
	end else begin
		netsoc_sdram_bankmachine0_cmd_payload_a <= ((netsoc_sdram_bankmachine0_auto_precharge <<< 4'd10) | {netsoc_sdram_bankmachine0_cmd_buffer_source_payload_adr[6:0], {3{1'd0}}});
	end
end
assign netsoc_sdram_bankmachine0_wait = (~((netsoc_sdram_bankmachine0_cmd_valid & netsoc_sdram_bankmachine0_cmd_ready) & netsoc_sdram_bankmachine0_cmd_payload_is_write));
always @(*) begin
	netsoc_sdram_bankmachine0_auto_precharge <= 1'd0;
	if ((netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_valid & netsoc_sdram_bankmachine0_cmd_buffer_source_valid)) begin
		if ((netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_adr[20:7] != netsoc_sdram_bankmachine0_cmd_buffer_source_payload_adr[20:7])) begin
			netsoc_sdram_bankmachine0_auto_precharge <= (netsoc_sdram_bankmachine0_track_close == 1'd0);
		end
	end
end
assign netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_din = {netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_last, netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_first, netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_adr, netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we};
assign {netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_last, netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_first, netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_adr, netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we} = netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_dout;
assign netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_ready = netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable;
assign netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we = netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_valid;
assign netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_first = netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_first;
assign netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_last = netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_last;
assign netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we = netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_we;
assign netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_adr = netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_adr;
assign netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_valid = netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable;
assign netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_first = netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_first;
assign netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_last = netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_last;
assign netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_we = netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we;
assign netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_adr = netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_adr;
assign netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_re = netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_ready;
always @(*) begin
	netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (netsoc_sdram_bankmachine0_cmd_buffer_lookahead_replace) begin
		netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr <= (netsoc_sdram_bankmachine0_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr <= netsoc_sdram_bankmachine0_cmd_buffer_lookahead_produce;
	end
end
assign netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_w = netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_din;
assign netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_we = (netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we & (netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable | netsoc_sdram_bankmachine0_cmd_buffer_lookahead_replace));
assign netsoc_sdram_bankmachine0_cmd_buffer_lookahead_do_read = (netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable & netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_re);
assign netsoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_adr = netsoc_sdram_bankmachine0_cmd_buffer_lookahead_consume;
assign netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_dout = netsoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_dat_r;
assign netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable = (netsoc_sdram_bankmachine0_cmd_buffer_lookahead_level != 4'd8);
assign netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable = (netsoc_sdram_bankmachine0_cmd_buffer_lookahead_level != 1'd0);
assign netsoc_sdram_bankmachine0_cmd_buffer_pipe_ce = (netsoc_sdram_bankmachine0_cmd_buffer_source_ready | (~netsoc_sdram_bankmachine0_cmd_buffer_valid_n));
assign netsoc_sdram_bankmachine0_cmd_buffer_sink_ready = netsoc_sdram_bankmachine0_cmd_buffer_pipe_ce;
assign netsoc_sdram_bankmachine0_cmd_buffer_source_valid = netsoc_sdram_bankmachine0_cmd_buffer_valid_n;
assign netsoc_sdram_bankmachine0_cmd_buffer_busy = (1'd0 | netsoc_sdram_bankmachine0_cmd_buffer_valid_n);
assign netsoc_sdram_bankmachine0_cmd_buffer_source_first = netsoc_sdram_bankmachine0_cmd_buffer_first_n;
assign netsoc_sdram_bankmachine0_cmd_buffer_source_last = netsoc_sdram_bankmachine0_cmd_buffer_last_n;
assign netsoc_sdram_bankmachine0_done = (netsoc_sdram_bankmachine0_count == 1'd0);
always @(*) begin
	netsoc_sdram_bankmachine0_track_open <= 1'd0;
	netsoc_sdram_bankmachine0_req_rdata_valid <= 1'd0;
	netsoc_sdram_bankmachine0_track_close <= 1'd0;
	bankmachine0_next_state <= 4'd0;
	netsoc_sdram_bankmachine0_refresh_gnt <= 1'd0;
	netsoc_sdram_bankmachine0_sel_row_adr <= 1'd0;
	netsoc_sdram_bankmachine0_cmd_valid <= 1'd0;
	netsoc_sdram_bankmachine0_cmd_payload_cas <= 1'd0;
	netsoc_sdram_bankmachine0_cmd_payload_ras <= 1'd0;
	netsoc_sdram_bankmachine0_cmd_payload_we <= 1'd0;
	netsoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd0;
	netsoc_sdram_bankmachine0_cmd_payload_is_read <= 1'd0;
	netsoc_sdram_bankmachine0_cmd_payload_is_write <= 1'd0;
	netsoc_sdram_bankmachine0_req_wdata_ready <= 1'd0;
	bankmachine0_next_state <= bankmachine0_state;
	case (bankmachine0_state)
		1'd1: begin
			if (netsoc_sdram_bankmachine0_done) begin
				netsoc_sdram_bankmachine0_cmd_valid <= 1'd1;
				if (netsoc_sdram_bankmachine0_cmd_ready) begin
					bankmachine0_next_state <= 3'd5;
				end
				netsoc_sdram_bankmachine0_cmd_payload_ras <= 1'd1;
				netsoc_sdram_bankmachine0_cmd_payload_we <= 1'd1;
				netsoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			end
			netsoc_sdram_bankmachine0_track_close <= 1'd1;
		end
		2'd2: begin
			if (netsoc_sdram_bankmachine0_done) begin
				bankmachine0_next_state <= 3'd5;
			end
			netsoc_sdram_bankmachine0_track_close <= 1'd1;
		end
		2'd3: begin
			netsoc_sdram_bankmachine0_sel_row_adr <= 1'd1;
			netsoc_sdram_bankmachine0_track_open <= 1'd1;
			netsoc_sdram_bankmachine0_cmd_valid <= netsoc_sdram_bankmachine0_ras_allowed;
			netsoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			if ((netsoc_sdram_bankmachine0_cmd_ready & netsoc_sdram_bankmachine0_ras_allowed)) begin
				bankmachine0_next_state <= 3'd7;
			end
			netsoc_sdram_bankmachine0_cmd_payload_ras <= 1'd1;
		end
		3'd4: begin
			if (netsoc_sdram_bankmachine0_done) begin
				netsoc_sdram_bankmachine0_refresh_gnt <= 1'd1;
			end
			netsoc_sdram_bankmachine0_track_close <= 1'd1;
			netsoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			if ((~netsoc_sdram_bankmachine0_refresh_req)) begin
				bankmachine0_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine0_next_state <= 3'd6;
		end
		3'd6: begin
			bankmachine0_next_state <= 2'd3;
		end
		3'd7: begin
			bankmachine0_next_state <= 4'd8;
		end
		4'd8: begin
			bankmachine0_next_state <= 1'd0;
		end
		default: begin
			if (netsoc_sdram_bankmachine0_refresh_req) begin
				bankmachine0_next_state <= 3'd4;
			end else begin
				if (netsoc_sdram_bankmachine0_cmd_buffer_source_valid) begin
					if (netsoc_sdram_bankmachine0_has_openrow) begin
						if (netsoc_sdram_bankmachine0_hit) begin
							if (netsoc_sdram_bankmachine0_cas_allowed) begin
								netsoc_sdram_bankmachine0_cmd_valid <= 1'd1;
								if (netsoc_sdram_bankmachine0_cmd_buffer_source_payload_we) begin
									netsoc_sdram_bankmachine0_req_wdata_ready <= netsoc_sdram_bankmachine0_cmd_ready;
									netsoc_sdram_bankmachine0_cmd_payload_is_write <= 1'd1;
									netsoc_sdram_bankmachine0_cmd_payload_we <= 1'd1;
								end else begin
									netsoc_sdram_bankmachine0_req_rdata_valid <= netsoc_sdram_bankmachine0_cmd_ready;
									netsoc_sdram_bankmachine0_cmd_payload_is_read <= 1'd1;
								end
								netsoc_sdram_bankmachine0_cmd_payload_cas <= 1'd1;
								if ((netsoc_sdram_bankmachine0_cmd_ready & netsoc_sdram_bankmachine0_auto_precharge)) begin
									bankmachine0_next_state <= 2'd2;
								end
							end
						end else begin
							bankmachine0_next_state <= 1'd1;
						end
					end else begin
						bankmachine0_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_valid = netsoc_sdram_bankmachine1_req_valid;
assign netsoc_sdram_bankmachine1_req_ready = netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_ready;
assign netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_we = netsoc_sdram_bankmachine1_req_we;
assign netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_adr = netsoc_sdram_bankmachine1_req_adr;
assign netsoc_sdram_bankmachine1_cmd_buffer_sink_valid = netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_valid;
assign netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_ready = netsoc_sdram_bankmachine1_cmd_buffer_sink_ready;
assign netsoc_sdram_bankmachine1_cmd_buffer_sink_first = netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_first;
assign netsoc_sdram_bankmachine1_cmd_buffer_sink_last = netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_last;
assign netsoc_sdram_bankmachine1_cmd_buffer_sink_payload_we = netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_we;
assign netsoc_sdram_bankmachine1_cmd_buffer_sink_payload_adr = netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_adr;
assign netsoc_sdram_bankmachine1_cmd_buffer_source_ready = (netsoc_sdram_bankmachine1_req_wdata_ready | netsoc_sdram_bankmachine1_req_rdata_valid);
assign netsoc_sdram_bankmachine1_req_lock = (netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_valid | netsoc_sdram_bankmachine1_cmd_buffer_source_valid);
assign netsoc_sdram_bankmachine1_hit = (netsoc_sdram_bankmachine1_openrow == netsoc_sdram_bankmachine1_cmd_buffer_source_payload_adr[20:7]);
assign netsoc_sdram_bankmachine1_cmd_payload_ba = 1'd1;
always @(*) begin
	netsoc_sdram_bankmachine1_cmd_payload_a <= 14'd0;
	if (netsoc_sdram_bankmachine1_sel_row_adr) begin
		netsoc_sdram_bankmachine1_cmd_payload_a <= netsoc_sdram_bankmachine1_cmd_buffer_source_payload_adr[20:7];
	end else begin
		netsoc_sdram_bankmachine1_cmd_payload_a <= ((netsoc_sdram_bankmachine1_auto_precharge <<< 4'd10) | {netsoc_sdram_bankmachine1_cmd_buffer_source_payload_adr[6:0], {3{1'd0}}});
	end
end
assign netsoc_sdram_bankmachine1_wait = (~((netsoc_sdram_bankmachine1_cmd_valid & netsoc_sdram_bankmachine1_cmd_ready) & netsoc_sdram_bankmachine1_cmd_payload_is_write));
always @(*) begin
	netsoc_sdram_bankmachine1_auto_precharge <= 1'd0;
	if ((netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_valid & netsoc_sdram_bankmachine1_cmd_buffer_source_valid)) begin
		if ((netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_adr[20:7] != netsoc_sdram_bankmachine1_cmd_buffer_source_payload_adr[20:7])) begin
			netsoc_sdram_bankmachine1_auto_precharge <= (netsoc_sdram_bankmachine1_track_close == 1'd0);
		end
	end
end
assign netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_din = {netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_last, netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_first, netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_adr, netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we};
assign {netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_last, netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_first, netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_adr, netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we} = netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_dout;
assign netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_ready = netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable;
assign netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we = netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_valid;
assign netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_first = netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_first;
assign netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_last = netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_last;
assign netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we = netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_we;
assign netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_adr = netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_adr;
assign netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_valid = netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable;
assign netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_first = netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_first;
assign netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_last = netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_last;
assign netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_we = netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we;
assign netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_adr = netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_adr;
assign netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_re = netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_ready;
always @(*) begin
	netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (netsoc_sdram_bankmachine1_cmd_buffer_lookahead_replace) begin
		netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr <= (netsoc_sdram_bankmachine1_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr <= netsoc_sdram_bankmachine1_cmd_buffer_lookahead_produce;
	end
end
assign netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_w = netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_din;
assign netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_we = (netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we & (netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable | netsoc_sdram_bankmachine1_cmd_buffer_lookahead_replace));
assign netsoc_sdram_bankmachine1_cmd_buffer_lookahead_do_read = (netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable & netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_re);
assign netsoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_adr = netsoc_sdram_bankmachine1_cmd_buffer_lookahead_consume;
assign netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_dout = netsoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_dat_r;
assign netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable = (netsoc_sdram_bankmachine1_cmd_buffer_lookahead_level != 4'd8);
assign netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable = (netsoc_sdram_bankmachine1_cmd_buffer_lookahead_level != 1'd0);
assign netsoc_sdram_bankmachine1_cmd_buffer_pipe_ce = (netsoc_sdram_bankmachine1_cmd_buffer_source_ready | (~netsoc_sdram_bankmachine1_cmd_buffer_valid_n));
assign netsoc_sdram_bankmachine1_cmd_buffer_sink_ready = netsoc_sdram_bankmachine1_cmd_buffer_pipe_ce;
assign netsoc_sdram_bankmachine1_cmd_buffer_source_valid = netsoc_sdram_bankmachine1_cmd_buffer_valid_n;
assign netsoc_sdram_bankmachine1_cmd_buffer_busy = (1'd0 | netsoc_sdram_bankmachine1_cmd_buffer_valid_n);
assign netsoc_sdram_bankmachine1_cmd_buffer_source_first = netsoc_sdram_bankmachine1_cmd_buffer_first_n;
assign netsoc_sdram_bankmachine1_cmd_buffer_source_last = netsoc_sdram_bankmachine1_cmd_buffer_last_n;
assign netsoc_sdram_bankmachine1_done = (netsoc_sdram_bankmachine1_count == 1'd0);
always @(*) begin
	netsoc_sdram_bankmachine1_req_wdata_ready <= 1'd0;
	netsoc_sdram_bankmachine1_track_open <= 1'd0;
	netsoc_sdram_bankmachine1_req_rdata_valid <= 1'd0;
	netsoc_sdram_bankmachine1_track_close <= 1'd0;
	netsoc_sdram_bankmachine1_refresh_gnt <= 1'd0;
	netsoc_sdram_bankmachine1_sel_row_adr <= 1'd0;
	netsoc_sdram_bankmachine1_cmd_valid <= 1'd0;
	netsoc_sdram_bankmachine1_cmd_payload_cas <= 1'd0;
	netsoc_sdram_bankmachine1_cmd_payload_ras <= 1'd0;
	netsoc_sdram_bankmachine1_cmd_payload_we <= 1'd0;
	bankmachine1_next_state <= 4'd0;
	netsoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd0;
	netsoc_sdram_bankmachine1_cmd_payload_is_read <= 1'd0;
	netsoc_sdram_bankmachine1_cmd_payload_is_write <= 1'd0;
	bankmachine1_next_state <= bankmachine1_state;
	case (bankmachine1_state)
		1'd1: begin
			if (netsoc_sdram_bankmachine1_done) begin
				netsoc_sdram_bankmachine1_cmd_valid <= 1'd1;
				if (netsoc_sdram_bankmachine1_cmd_ready) begin
					bankmachine1_next_state <= 3'd5;
				end
				netsoc_sdram_bankmachine1_cmd_payload_ras <= 1'd1;
				netsoc_sdram_bankmachine1_cmd_payload_we <= 1'd1;
				netsoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			end
			netsoc_sdram_bankmachine1_track_close <= 1'd1;
		end
		2'd2: begin
			if (netsoc_sdram_bankmachine1_done) begin
				bankmachine1_next_state <= 3'd5;
			end
			netsoc_sdram_bankmachine1_track_close <= 1'd1;
		end
		2'd3: begin
			netsoc_sdram_bankmachine1_sel_row_adr <= 1'd1;
			netsoc_sdram_bankmachine1_track_open <= 1'd1;
			netsoc_sdram_bankmachine1_cmd_valid <= netsoc_sdram_bankmachine1_ras_allowed;
			netsoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			if ((netsoc_sdram_bankmachine1_cmd_ready & netsoc_sdram_bankmachine1_ras_allowed)) begin
				bankmachine1_next_state <= 3'd7;
			end
			netsoc_sdram_bankmachine1_cmd_payload_ras <= 1'd1;
		end
		3'd4: begin
			if (netsoc_sdram_bankmachine1_done) begin
				netsoc_sdram_bankmachine1_refresh_gnt <= 1'd1;
			end
			netsoc_sdram_bankmachine1_track_close <= 1'd1;
			netsoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			if ((~netsoc_sdram_bankmachine1_refresh_req)) begin
				bankmachine1_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine1_next_state <= 3'd6;
		end
		3'd6: begin
			bankmachine1_next_state <= 2'd3;
		end
		3'd7: begin
			bankmachine1_next_state <= 4'd8;
		end
		4'd8: begin
			bankmachine1_next_state <= 1'd0;
		end
		default: begin
			if (netsoc_sdram_bankmachine1_refresh_req) begin
				bankmachine1_next_state <= 3'd4;
			end else begin
				if (netsoc_sdram_bankmachine1_cmd_buffer_source_valid) begin
					if (netsoc_sdram_bankmachine1_has_openrow) begin
						if (netsoc_sdram_bankmachine1_hit) begin
							if (netsoc_sdram_bankmachine1_cas_allowed) begin
								netsoc_sdram_bankmachine1_cmd_valid <= 1'd1;
								if (netsoc_sdram_bankmachine1_cmd_buffer_source_payload_we) begin
									netsoc_sdram_bankmachine1_req_wdata_ready <= netsoc_sdram_bankmachine1_cmd_ready;
									netsoc_sdram_bankmachine1_cmd_payload_is_write <= 1'd1;
									netsoc_sdram_bankmachine1_cmd_payload_we <= 1'd1;
								end else begin
									netsoc_sdram_bankmachine1_req_rdata_valid <= netsoc_sdram_bankmachine1_cmd_ready;
									netsoc_sdram_bankmachine1_cmd_payload_is_read <= 1'd1;
								end
								netsoc_sdram_bankmachine1_cmd_payload_cas <= 1'd1;
								if ((netsoc_sdram_bankmachine1_cmd_ready & netsoc_sdram_bankmachine1_auto_precharge)) begin
									bankmachine1_next_state <= 2'd2;
								end
							end
						end else begin
							bankmachine1_next_state <= 1'd1;
						end
					end else begin
						bankmachine1_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_valid = netsoc_sdram_bankmachine2_req_valid;
assign netsoc_sdram_bankmachine2_req_ready = netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_ready;
assign netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_we = netsoc_sdram_bankmachine2_req_we;
assign netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_adr = netsoc_sdram_bankmachine2_req_adr;
assign netsoc_sdram_bankmachine2_cmd_buffer_sink_valid = netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_valid;
assign netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_ready = netsoc_sdram_bankmachine2_cmd_buffer_sink_ready;
assign netsoc_sdram_bankmachine2_cmd_buffer_sink_first = netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_first;
assign netsoc_sdram_bankmachine2_cmd_buffer_sink_last = netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_last;
assign netsoc_sdram_bankmachine2_cmd_buffer_sink_payload_we = netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_we;
assign netsoc_sdram_bankmachine2_cmd_buffer_sink_payload_adr = netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_adr;
assign netsoc_sdram_bankmachine2_cmd_buffer_source_ready = (netsoc_sdram_bankmachine2_req_wdata_ready | netsoc_sdram_bankmachine2_req_rdata_valid);
assign netsoc_sdram_bankmachine2_req_lock = (netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_valid | netsoc_sdram_bankmachine2_cmd_buffer_source_valid);
assign netsoc_sdram_bankmachine2_hit = (netsoc_sdram_bankmachine2_openrow == netsoc_sdram_bankmachine2_cmd_buffer_source_payload_adr[20:7]);
assign netsoc_sdram_bankmachine2_cmd_payload_ba = 2'd2;
always @(*) begin
	netsoc_sdram_bankmachine2_cmd_payload_a <= 14'd0;
	if (netsoc_sdram_bankmachine2_sel_row_adr) begin
		netsoc_sdram_bankmachine2_cmd_payload_a <= netsoc_sdram_bankmachine2_cmd_buffer_source_payload_adr[20:7];
	end else begin
		netsoc_sdram_bankmachine2_cmd_payload_a <= ((netsoc_sdram_bankmachine2_auto_precharge <<< 4'd10) | {netsoc_sdram_bankmachine2_cmd_buffer_source_payload_adr[6:0], {3{1'd0}}});
	end
end
assign netsoc_sdram_bankmachine2_wait = (~((netsoc_sdram_bankmachine2_cmd_valid & netsoc_sdram_bankmachine2_cmd_ready) & netsoc_sdram_bankmachine2_cmd_payload_is_write));
always @(*) begin
	netsoc_sdram_bankmachine2_auto_precharge <= 1'd0;
	if ((netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_valid & netsoc_sdram_bankmachine2_cmd_buffer_source_valid)) begin
		if ((netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_adr[20:7] != netsoc_sdram_bankmachine2_cmd_buffer_source_payload_adr[20:7])) begin
			netsoc_sdram_bankmachine2_auto_precharge <= (netsoc_sdram_bankmachine2_track_close == 1'd0);
		end
	end
end
assign netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_din = {netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_last, netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_first, netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_adr, netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we};
assign {netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_last, netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_first, netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_adr, netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we} = netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_dout;
assign netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_ready = netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable;
assign netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we = netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_valid;
assign netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_first = netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_first;
assign netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_last = netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_last;
assign netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we = netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_we;
assign netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_adr = netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_adr;
assign netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_valid = netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable;
assign netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_first = netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_first;
assign netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_last = netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_last;
assign netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_we = netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we;
assign netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_adr = netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_adr;
assign netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_re = netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_ready;
always @(*) begin
	netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (netsoc_sdram_bankmachine2_cmd_buffer_lookahead_replace) begin
		netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr <= (netsoc_sdram_bankmachine2_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr <= netsoc_sdram_bankmachine2_cmd_buffer_lookahead_produce;
	end
end
assign netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_w = netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_din;
assign netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_we = (netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we & (netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable | netsoc_sdram_bankmachine2_cmd_buffer_lookahead_replace));
assign netsoc_sdram_bankmachine2_cmd_buffer_lookahead_do_read = (netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable & netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_re);
assign netsoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_adr = netsoc_sdram_bankmachine2_cmd_buffer_lookahead_consume;
assign netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_dout = netsoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_dat_r;
assign netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable = (netsoc_sdram_bankmachine2_cmd_buffer_lookahead_level != 4'd8);
assign netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable = (netsoc_sdram_bankmachine2_cmd_buffer_lookahead_level != 1'd0);
assign netsoc_sdram_bankmachine2_cmd_buffer_pipe_ce = (netsoc_sdram_bankmachine2_cmd_buffer_source_ready | (~netsoc_sdram_bankmachine2_cmd_buffer_valid_n));
assign netsoc_sdram_bankmachine2_cmd_buffer_sink_ready = netsoc_sdram_bankmachine2_cmd_buffer_pipe_ce;
assign netsoc_sdram_bankmachine2_cmd_buffer_source_valid = netsoc_sdram_bankmachine2_cmd_buffer_valid_n;
assign netsoc_sdram_bankmachine2_cmd_buffer_busy = (1'd0 | netsoc_sdram_bankmachine2_cmd_buffer_valid_n);
assign netsoc_sdram_bankmachine2_cmd_buffer_source_first = netsoc_sdram_bankmachine2_cmd_buffer_first_n;
assign netsoc_sdram_bankmachine2_cmd_buffer_source_last = netsoc_sdram_bankmachine2_cmd_buffer_last_n;
assign netsoc_sdram_bankmachine2_done = (netsoc_sdram_bankmachine2_count == 1'd0);
always @(*) begin
	bankmachine2_next_state <= 4'd0;
	netsoc_sdram_bankmachine2_req_wdata_ready <= 1'd0;
	netsoc_sdram_bankmachine2_track_open <= 1'd0;
	netsoc_sdram_bankmachine2_req_rdata_valid <= 1'd0;
	netsoc_sdram_bankmachine2_track_close <= 1'd0;
	netsoc_sdram_bankmachine2_refresh_gnt <= 1'd0;
	netsoc_sdram_bankmachine2_sel_row_adr <= 1'd0;
	netsoc_sdram_bankmachine2_cmd_valid <= 1'd0;
	netsoc_sdram_bankmachine2_cmd_payload_cas <= 1'd0;
	netsoc_sdram_bankmachine2_cmd_payload_ras <= 1'd0;
	netsoc_sdram_bankmachine2_cmd_payload_we <= 1'd0;
	netsoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd0;
	netsoc_sdram_bankmachine2_cmd_payload_is_read <= 1'd0;
	netsoc_sdram_bankmachine2_cmd_payload_is_write <= 1'd0;
	bankmachine2_next_state <= bankmachine2_state;
	case (bankmachine2_state)
		1'd1: begin
			if (netsoc_sdram_bankmachine2_done) begin
				netsoc_sdram_bankmachine2_cmd_valid <= 1'd1;
				if (netsoc_sdram_bankmachine2_cmd_ready) begin
					bankmachine2_next_state <= 3'd5;
				end
				netsoc_sdram_bankmachine2_cmd_payload_ras <= 1'd1;
				netsoc_sdram_bankmachine2_cmd_payload_we <= 1'd1;
				netsoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			end
			netsoc_sdram_bankmachine2_track_close <= 1'd1;
		end
		2'd2: begin
			if (netsoc_sdram_bankmachine2_done) begin
				bankmachine2_next_state <= 3'd5;
			end
			netsoc_sdram_bankmachine2_track_close <= 1'd1;
		end
		2'd3: begin
			netsoc_sdram_bankmachine2_sel_row_adr <= 1'd1;
			netsoc_sdram_bankmachine2_track_open <= 1'd1;
			netsoc_sdram_bankmachine2_cmd_valid <= netsoc_sdram_bankmachine2_ras_allowed;
			netsoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			if ((netsoc_sdram_bankmachine2_cmd_ready & netsoc_sdram_bankmachine2_ras_allowed)) begin
				bankmachine2_next_state <= 3'd7;
			end
			netsoc_sdram_bankmachine2_cmd_payload_ras <= 1'd1;
		end
		3'd4: begin
			if (netsoc_sdram_bankmachine2_done) begin
				netsoc_sdram_bankmachine2_refresh_gnt <= 1'd1;
			end
			netsoc_sdram_bankmachine2_track_close <= 1'd1;
			netsoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			if ((~netsoc_sdram_bankmachine2_refresh_req)) begin
				bankmachine2_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine2_next_state <= 3'd6;
		end
		3'd6: begin
			bankmachine2_next_state <= 2'd3;
		end
		3'd7: begin
			bankmachine2_next_state <= 4'd8;
		end
		4'd8: begin
			bankmachine2_next_state <= 1'd0;
		end
		default: begin
			if (netsoc_sdram_bankmachine2_refresh_req) begin
				bankmachine2_next_state <= 3'd4;
			end else begin
				if (netsoc_sdram_bankmachine2_cmd_buffer_source_valid) begin
					if (netsoc_sdram_bankmachine2_has_openrow) begin
						if (netsoc_sdram_bankmachine2_hit) begin
							if (netsoc_sdram_bankmachine2_cas_allowed) begin
								netsoc_sdram_bankmachine2_cmd_valid <= 1'd1;
								if (netsoc_sdram_bankmachine2_cmd_buffer_source_payload_we) begin
									netsoc_sdram_bankmachine2_req_wdata_ready <= netsoc_sdram_bankmachine2_cmd_ready;
									netsoc_sdram_bankmachine2_cmd_payload_is_write <= 1'd1;
									netsoc_sdram_bankmachine2_cmd_payload_we <= 1'd1;
								end else begin
									netsoc_sdram_bankmachine2_req_rdata_valid <= netsoc_sdram_bankmachine2_cmd_ready;
									netsoc_sdram_bankmachine2_cmd_payload_is_read <= 1'd1;
								end
								netsoc_sdram_bankmachine2_cmd_payload_cas <= 1'd1;
								if ((netsoc_sdram_bankmachine2_cmd_ready & netsoc_sdram_bankmachine2_auto_precharge)) begin
									bankmachine2_next_state <= 2'd2;
								end
							end
						end else begin
							bankmachine2_next_state <= 1'd1;
						end
					end else begin
						bankmachine2_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_valid = netsoc_sdram_bankmachine3_req_valid;
assign netsoc_sdram_bankmachine3_req_ready = netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_ready;
assign netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_we = netsoc_sdram_bankmachine3_req_we;
assign netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_adr = netsoc_sdram_bankmachine3_req_adr;
assign netsoc_sdram_bankmachine3_cmd_buffer_sink_valid = netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_valid;
assign netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_ready = netsoc_sdram_bankmachine3_cmd_buffer_sink_ready;
assign netsoc_sdram_bankmachine3_cmd_buffer_sink_first = netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_first;
assign netsoc_sdram_bankmachine3_cmd_buffer_sink_last = netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_last;
assign netsoc_sdram_bankmachine3_cmd_buffer_sink_payload_we = netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_we;
assign netsoc_sdram_bankmachine3_cmd_buffer_sink_payload_adr = netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_adr;
assign netsoc_sdram_bankmachine3_cmd_buffer_source_ready = (netsoc_sdram_bankmachine3_req_wdata_ready | netsoc_sdram_bankmachine3_req_rdata_valid);
assign netsoc_sdram_bankmachine3_req_lock = (netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_valid | netsoc_sdram_bankmachine3_cmd_buffer_source_valid);
assign netsoc_sdram_bankmachine3_hit = (netsoc_sdram_bankmachine3_openrow == netsoc_sdram_bankmachine3_cmd_buffer_source_payload_adr[20:7]);
assign netsoc_sdram_bankmachine3_cmd_payload_ba = 2'd3;
always @(*) begin
	netsoc_sdram_bankmachine3_cmd_payload_a <= 14'd0;
	if (netsoc_sdram_bankmachine3_sel_row_adr) begin
		netsoc_sdram_bankmachine3_cmd_payload_a <= netsoc_sdram_bankmachine3_cmd_buffer_source_payload_adr[20:7];
	end else begin
		netsoc_sdram_bankmachine3_cmd_payload_a <= ((netsoc_sdram_bankmachine3_auto_precharge <<< 4'd10) | {netsoc_sdram_bankmachine3_cmd_buffer_source_payload_adr[6:0], {3{1'd0}}});
	end
end
assign netsoc_sdram_bankmachine3_wait = (~((netsoc_sdram_bankmachine3_cmd_valid & netsoc_sdram_bankmachine3_cmd_ready) & netsoc_sdram_bankmachine3_cmd_payload_is_write));
always @(*) begin
	netsoc_sdram_bankmachine3_auto_precharge <= 1'd0;
	if ((netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_valid & netsoc_sdram_bankmachine3_cmd_buffer_source_valid)) begin
		if ((netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_adr[20:7] != netsoc_sdram_bankmachine3_cmd_buffer_source_payload_adr[20:7])) begin
			netsoc_sdram_bankmachine3_auto_precharge <= (netsoc_sdram_bankmachine3_track_close == 1'd0);
		end
	end
end
assign netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_din = {netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_last, netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_first, netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_adr, netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we};
assign {netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_last, netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_first, netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_adr, netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we} = netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_dout;
assign netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_ready = netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable;
assign netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we = netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_valid;
assign netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_first = netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_first;
assign netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_last = netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_last;
assign netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we = netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_we;
assign netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_adr = netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_adr;
assign netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_valid = netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable;
assign netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_first = netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_first;
assign netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_last = netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_last;
assign netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_we = netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we;
assign netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_adr = netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_adr;
assign netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_re = netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_ready;
always @(*) begin
	netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (netsoc_sdram_bankmachine3_cmd_buffer_lookahead_replace) begin
		netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr <= (netsoc_sdram_bankmachine3_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr <= netsoc_sdram_bankmachine3_cmd_buffer_lookahead_produce;
	end
end
assign netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_w = netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_din;
assign netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_we = (netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we & (netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable | netsoc_sdram_bankmachine3_cmd_buffer_lookahead_replace));
assign netsoc_sdram_bankmachine3_cmd_buffer_lookahead_do_read = (netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable & netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_re);
assign netsoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_adr = netsoc_sdram_bankmachine3_cmd_buffer_lookahead_consume;
assign netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_dout = netsoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_dat_r;
assign netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable = (netsoc_sdram_bankmachine3_cmd_buffer_lookahead_level != 4'd8);
assign netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable = (netsoc_sdram_bankmachine3_cmd_buffer_lookahead_level != 1'd0);
assign netsoc_sdram_bankmachine3_cmd_buffer_pipe_ce = (netsoc_sdram_bankmachine3_cmd_buffer_source_ready | (~netsoc_sdram_bankmachine3_cmd_buffer_valid_n));
assign netsoc_sdram_bankmachine3_cmd_buffer_sink_ready = netsoc_sdram_bankmachine3_cmd_buffer_pipe_ce;
assign netsoc_sdram_bankmachine3_cmd_buffer_source_valid = netsoc_sdram_bankmachine3_cmd_buffer_valid_n;
assign netsoc_sdram_bankmachine3_cmd_buffer_busy = (1'd0 | netsoc_sdram_bankmachine3_cmd_buffer_valid_n);
assign netsoc_sdram_bankmachine3_cmd_buffer_source_first = netsoc_sdram_bankmachine3_cmd_buffer_first_n;
assign netsoc_sdram_bankmachine3_cmd_buffer_source_last = netsoc_sdram_bankmachine3_cmd_buffer_last_n;
assign netsoc_sdram_bankmachine3_done = (netsoc_sdram_bankmachine3_count == 1'd0);
always @(*) begin
	netsoc_sdram_bankmachine3_req_wdata_ready <= 1'd0;
	netsoc_sdram_bankmachine3_track_open <= 1'd0;
	netsoc_sdram_bankmachine3_req_rdata_valid <= 1'd0;
	netsoc_sdram_bankmachine3_track_close <= 1'd0;
	netsoc_sdram_bankmachine3_refresh_gnt <= 1'd0;
	netsoc_sdram_bankmachine3_sel_row_adr <= 1'd0;
	netsoc_sdram_bankmachine3_cmd_valid <= 1'd0;
	bankmachine3_next_state <= 4'd0;
	netsoc_sdram_bankmachine3_cmd_payload_cas <= 1'd0;
	netsoc_sdram_bankmachine3_cmd_payload_ras <= 1'd0;
	netsoc_sdram_bankmachine3_cmd_payload_we <= 1'd0;
	netsoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd0;
	netsoc_sdram_bankmachine3_cmd_payload_is_read <= 1'd0;
	netsoc_sdram_bankmachine3_cmd_payload_is_write <= 1'd0;
	bankmachine3_next_state <= bankmachine3_state;
	case (bankmachine3_state)
		1'd1: begin
			if (netsoc_sdram_bankmachine3_done) begin
				netsoc_sdram_bankmachine3_cmd_valid <= 1'd1;
				if (netsoc_sdram_bankmachine3_cmd_ready) begin
					bankmachine3_next_state <= 3'd5;
				end
				netsoc_sdram_bankmachine3_cmd_payload_ras <= 1'd1;
				netsoc_sdram_bankmachine3_cmd_payload_we <= 1'd1;
				netsoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			end
			netsoc_sdram_bankmachine3_track_close <= 1'd1;
		end
		2'd2: begin
			if (netsoc_sdram_bankmachine3_done) begin
				bankmachine3_next_state <= 3'd5;
			end
			netsoc_sdram_bankmachine3_track_close <= 1'd1;
		end
		2'd3: begin
			netsoc_sdram_bankmachine3_sel_row_adr <= 1'd1;
			netsoc_sdram_bankmachine3_track_open <= 1'd1;
			netsoc_sdram_bankmachine3_cmd_valid <= netsoc_sdram_bankmachine3_ras_allowed;
			netsoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			if ((netsoc_sdram_bankmachine3_cmd_ready & netsoc_sdram_bankmachine3_ras_allowed)) begin
				bankmachine3_next_state <= 3'd7;
			end
			netsoc_sdram_bankmachine3_cmd_payload_ras <= 1'd1;
		end
		3'd4: begin
			if (netsoc_sdram_bankmachine3_done) begin
				netsoc_sdram_bankmachine3_refresh_gnt <= 1'd1;
			end
			netsoc_sdram_bankmachine3_track_close <= 1'd1;
			netsoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			if ((~netsoc_sdram_bankmachine3_refresh_req)) begin
				bankmachine3_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine3_next_state <= 3'd6;
		end
		3'd6: begin
			bankmachine3_next_state <= 2'd3;
		end
		3'd7: begin
			bankmachine3_next_state <= 4'd8;
		end
		4'd8: begin
			bankmachine3_next_state <= 1'd0;
		end
		default: begin
			if (netsoc_sdram_bankmachine3_refresh_req) begin
				bankmachine3_next_state <= 3'd4;
			end else begin
				if (netsoc_sdram_bankmachine3_cmd_buffer_source_valid) begin
					if (netsoc_sdram_bankmachine3_has_openrow) begin
						if (netsoc_sdram_bankmachine3_hit) begin
							if (netsoc_sdram_bankmachine3_cas_allowed) begin
								netsoc_sdram_bankmachine3_cmd_valid <= 1'd1;
								if (netsoc_sdram_bankmachine3_cmd_buffer_source_payload_we) begin
									netsoc_sdram_bankmachine3_req_wdata_ready <= netsoc_sdram_bankmachine3_cmd_ready;
									netsoc_sdram_bankmachine3_cmd_payload_is_write <= 1'd1;
									netsoc_sdram_bankmachine3_cmd_payload_we <= 1'd1;
								end else begin
									netsoc_sdram_bankmachine3_req_rdata_valid <= netsoc_sdram_bankmachine3_cmd_ready;
									netsoc_sdram_bankmachine3_cmd_payload_is_read <= 1'd1;
								end
								netsoc_sdram_bankmachine3_cmd_payload_cas <= 1'd1;
								if ((netsoc_sdram_bankmachine3_cmd_ready & netsoc_sdram_bankmachine3_auto_precharge)) begin
									bankmachine3_next_state <= 2'd2;
								end
							end
						end else begin
							bankmachine3_next_state <= 1'd1;
						end
					end else begin
						bankmachine3_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_valid = netsoc_sdram_bankmachine4_req_valid;
assign netsoc_sdram_bankmachine4_req_ready = netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_ready;
assign netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_we = netsoc_sdram_bankmachine4_req_we;
assign netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_adr = netsoc_sdram_bankmachine4_req_adr;
assign netsoc_sdram_bankmachine4_cmd_buffer_sink_valid = netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_valid;
assign netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_ready = netsoc_sdram_bankmachine4_cmd_buffer_sink_ready;
assign netsoc_sdram_bankmachine4_cmd_buffer_sink_first = netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_first;
assign netsoc_sdram_bankmachine4_cmd_buffer_sink_last = netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_last;
assign netsoc_sdram_bankmachine4_cmd_buffer_sink_payload_we = netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_we;
assign netsoc_sdram_bankmachine4_cmd_buffer_sink_payload_adr = netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_adr;
assign netsoc_sdram_bankmachine4_cmd_buffer_source_ready = (netsoc_sdram_bankmachine4_req_wdata_ready | netsoc_sdram_bankmachine4_req_rdata_valid);
assign netsoc_sdram_bankmachine4_req_lock = (netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_valid | netsoc_sdram_bankmachine4_cmd_buffer_source_valid);
assign netsoc_sdram_bankmachine4_hit = (netsoc_sdram_bankmachine4_openrow == netsoc_sdram_bankmachine4_cmd_buffer_source_payload_adr[20:7]);
assign netsoc_sdram_bankmachine4_cmd_payload_ba = 3'd4;
always @(*) begin
	netsoc_sdram_bankmachine4_cmd_payload_a <= 14'd0;
	if (netsoc_sdram_bankmachine4_sel_row_adr) begin
		netsoc_sdram_bankmachine4_cmd_payload_a <= netsoc_sdram_bankmachine4_cmd_buffer_source_payload_adr[20:7];
	end else begin
		netsoc_sdram_bankmachine4_cmd_payload_a <= ((netsoc_sdram_bankmachine4_auto_precharge <<< 4'd10) | {netsoc_sdram_bankmachine4_cmd_buffer_source_payload_adr[6:0], {3{1'd0}}});
	end
end
assign netsoc_sdram_bankmachine4_wait = (~((netsoc_sdram_bankmachine4_cmd_valid & netsoc_sdram_bankmachine4_cmd_ready) & netsoc_sdram_bankmachine4_cmd_payload_is_write));
always @(*) begin
	netsoc_sdram_bankmachine4_auto_precharge <= 1'd0;
	if ((netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_valid & netsoc_sdram_bankmachine4_cmd_buffer_source_valid)) begin
		if ((netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_adr[20:7] != netsoc_sdram_bankmachine4_cmd_buffer_source_payload_adr[20:7])) begin
			netsoc_sdram_bankmachine4_auto_precharge <= (netsoc_sdram_bankmachine4_track_close == 1'd0);
		end
	end
end
assign netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_din = {netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_last, netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_first, netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_adr, netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_we};
assign {netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_last, netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_first, netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_adr, netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_we} = netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_dout;
assign netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_ready = netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable;
assign netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_we = netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_valid;
assign netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_first = netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_first;
assign netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_last = netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_last;
assign netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_we = netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_we;
assign netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_adr = netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_adr;
assign netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_valid = netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable;
assign netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_first = netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_first;
assign netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_last = netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_last;
assign netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_we = netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_we;
assign netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_adr = netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_adr;
assign netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_re = netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_ready;
always @(*) begin
	netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (netsoc_sdram_bankmachine4_cmd_buffer_lookahead_replace) begin
		netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr <= (netsoc_sdram_bankmachine4_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr <= netsoc_sdram_bankmachine4_cmd_buffer_lookahead_produce;
	end
end
assign netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_dat_w = netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_din;
assign netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_we = (netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_we & (netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable | netsoc_sdram_bankmachine4_cmd_buffer_lookahead_replace));
assign netsoc_sdram_bankmachine4_cmd_buffer_lookahead_do_read = (netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable & netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_re);
assign netsoc_sdram_bankmachine4_cmd_buffer_lookahead_rdport_adr = netsoc_sdram_bankmachine4_cmd_buffer_lookahead_consume;
assign netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_dout = netsoc_sdram_bankmachine4_cmd_buffer_lookahead_rdport_dat_r;
assign netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable = (netsoc_sdram_bankmachine4_cmd_buffer_lookahead_level != 4'd8);
assign netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable = (netsoc_sdram_bankmachine4_cmd_buffer_lookahead_level != 1'd0);
assign netsoc_sdram_bankmachine4_cmd_buffer_pipe_ce = (netsoc_sdram_bankmachine4_cmd_buffer_source_ready | (~netsoc_sdram_bankmachine4_cmd_buffer_valid_n));
assign netsoc_sdram_bankmachine4_cmd_buffer_sink_ready = netsoc_sdram_bankmachine4_cmd_buffer_pipe_ce;
assign netsoc_sdram_bankmachine4_cmd_buffer_source_valid = netsoc_sdram_bankmachine4_cmd_buffer_valid_n;
assign netsoc_sdram_bankmachine4_cmd_buffer_busy = (1'd0 | netsoc_sdram_bankmachine4_cmd_buffer_valid_n);
assign netsoc_sdram_bankmachine4_cmd_buffer_source_first = netsoc_sdram_bankmachine4_cmd_buffer_first_n;
assign netsoc_sdram_bankmachine4_cmd_buffer_source_last = netsoc_sdram_bankmachine4_cmd_buffer_last_n;
assign netsoc_sdram_bankmachine4_done = (netsoc_sdram_bankmachine4_count == 1'd0);
always @(*) begin
	bankmachine4_next_state <= 4'd0;
	netsoc_sdram_bankmachine4_req_wdata_ready <= 1'd0;
	netsoc_sdram_bankmachine4_track_open <= 1'd0;
	netsoc_sdram_bankmachine4_req_rdata_valid <= 1'd0;
	netsoc_sdram_bankmachine4_track_close <= 1'd0;
	netsoc_sdram_bankmachine4_refresh_gnt <= 1'd0;
	netsoc_sdram_bankmachine4_sel_row_adr <= 1'd0;
	netsoc_sdram_bankmachine4_cmd_valid <= 1'd0;
	netsoc_sdram_bankmachine4_cmd_payload_cas <= 1'd0;
	netsoc_sdram_bankmachine4_cmd_payload_ras <= 1'd0;
	netsoc_sdram_bankmachine4_cmd_payload_we <= 1'd0;
	netsoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd0;
	netsoc_sdram_bankmachine4_cmd_payload_is_read <= 1'd0;
	netsoc_sdram_bankmachine4_cmd_payload_is_write <= 1'd0;
	bankmachine4_next_state <= bankmachine4_state;
	case (bankmachine4_state)
		1'd1: begin
			if (netsoc_sdram_bankmachine4_done) begin
				netsoc_sdram_bankmachine4_cmd_valid <= 1'd1;
				if (netsoc_sdram_bankmachine4_cmd_ready) begin
					bankmachine4_next_state <= 3'd5;
				end
				netsoc_sdram_bankmachine4_cmd_payload_ras <= 1'd1;
				netsoc_sdram_bankmachine4_cmd_payload_we <= 1'd1;
				netsoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			end
			netsoc_sdram_bankmachine4_track_close <= 1'd1;
		end
		2'd2: begin
			if (netsoc_sdram_bankmachine4_done) begin
				bankmachine4_next_state <= 3'd5;
			end
			netsoc_sdram_bankmachine4_track_close <= 1'd1;
		end
		2'd3: begin
			netsoc_sdram_bankmachine4_sel_row_adr <= 1'd1;
			netsoc_sdram_bankmachine4_track_open <= 1'd1;
			netsoc_sdram_bankmachine4_cmd_valid <= netsoc_sdram_bankmachine4_ras_allowed;
			netsoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			if ((netsoc_sdram_bankmachine4_cmd_ready & netsoc_sdram_bankmachine4_ras_allowed)) begin
				bankmachine4_next_state <= 3'd7;
			end
			netsoc_sdram_bankmachine4_cmd_payload_ras <= 1'd1;
		end
		3'd4: begin
			if (netsoc_sdram_bankmachine4_done) begin
				netsoc_sdram_bankmachine4_refresh_gnt <= 1'd1;
			end
			netsoc_sdram_bankmachine4_track_close <= 1'd1;
			netsoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			if ((~netsoc_sdram_bankmachine4_refresh_req)) begin
				bankmachine4_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine4_next_state <= 3'd6;
		end
		3'd6: begin
			bankmachine4_next_state <= 2'd3;
		end
		3'd7: begin
			bankmachine4_next_state <= 4'd8;
		end
		4'd8: begin
			bankmachine4_next_state <= 1'd0;
		end
		default: begin
			if (netsoc_sdram_bankmachine4_refresh_req) begin
				bankmachine4_next_state <= 3'd4;
			end else begin
				if (netsoc_sdram_bankmachine4_cmd_buffer_source_valid) begin
					if (netsoc_sdram_bankmachine4_has_openrow) begin
						if (netsoc_sdram_bankmachine4_hit) begin
							if (netsoc_sdram_bankmachine4_cas_allowed) begin
								netsoc_sdram_bankmachine4_cmd_valid <= 1'd1;
								if (netsoc_sdram_bankmachine4_cmd_buffer_source_payload_we) begin
									netsoc_sdram_bankmachine4_req_wdata_ready <= netsoc_sdram_bankmachine4_cmd_ready;
									netsoc_sdram_bankmachine4_cmd_payload_is_write <= 1'd1;
									netsoc_sdram_bankmachine4_cmd_payload_we <= 1'd1;
								end else begin
									netsoc_sdram_bankmachine4_req_rdata_valid <= netsoc_sdram_bankmachine4_cmd_ready;
									netsoc_sdram_bankmachine4_cmd_payload_is_read <= 1'd1;
								end
								netsoc_sdram_bankmachine4_cmd_payload_cas <= 1'd1;
								if ((netsoc_sdram_bankmachine4_cmd_ready & netsoc_sdram_bankmachine4_auto_precharge)) begin
									bankmachine4_next_state <= 2'd2;
								end
							end
						end else begin
							bankmachine4_next_state <= 1'd1;
						end
					end else begin
						bankmachine4_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_valid = netsoc_sdram_bankmachine5_req_valid;
assign netsoc_sdram_bankmachine5_req_ready = netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_ready;
assign netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_we = netsoc_sdram_bankmachine5_req_we;
assign netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_adr = netsoc_sdram_bankmachine5_req_adr;
assign netsoc_sdram_bankmachine5_cmd_buffer_sink_valid = netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_valid;
assign netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_ready = netsoc_sdram_bankmachine5_cmd_buffer_sink_ready;
assign netsoc_sdram_bankmachine5_cmd_buffer_sink_first = netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_first;
assign netsoc_sdram_bankmachine5_cmd_buffer_sink_last = netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_last;
assign netsoc_sdram_bankmachine5_cmd_buffer_sink_payload_we = netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_we;
assign netsoc_sdram_bankmachine5_cmd_buffer_sink_payload_adr = netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_adr;
assign netsoc_sdram_bankmachine5_cmd_buffer_source_ready = (netsoc_sdram_bankmachine5_req_wdata_ready | netsoc_sdram_bankmachine5_req_rdata_valid);
assign netsoc_sdram_bankmachine5_req_lock = (netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_valid | netsoc_sdram_bankmachine5_cmd_buffer_source_valid);
assign netsoc_sdram_bankmachine5_hit = (netsoc_sdram_bankmachine5_openrow == netsoc_sdram_bankmachine5_cmd_buffer_source_payload_adr[20:7]);
assign netsoc_sdram_bankmachine5_cmd_payload_ba = 3'd5;
always @(*) begin
	netsoc_sdram_bankmachine5_cmd_payload_a <= 14'd0;
	if (netsoc_sdram_bankmachine5_sel_row_adr) begin
		netsoc_sdram_bankmachine5_cmd_payload_a <= netsoc_sdram_bankmachine5_cmd_buffer_source_payload_adr[20:7];
	end else begin
		netsoc_sdram_bankmachine5_cmd_payload_a <= ((netsoc_sdram_bankmachine5_auto_precharge <<< 4'd10) | {netsoc_sdram_bankmachine5_cmd_buffer_source_payload_adr[6:0], {3{1'd0}}});
	end
end
assign netsoc_sdram_bankmachine5_wait = (~((netsoc_sdram_bankmachine5_cmd_valid & netsoc_sdram_bankmachine5_cmd_ready) & netsoc_sdram_bankmachine5_cmd_payload_is_write));
always @(*) begin
	netsoc_sdram_bankmachine5_auto_precharge <= 1'd0;
	if ((netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_valid & netsoc_sdram_bankmachine5_cmd_buffer_source_valid)) begin
		if ((netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_adr[20:7] != netsoc_sdram_bankmachine5_cmd_buffer_source_payload_adr[20:7])) begin
			netsoc_sdram_bankmachine5_auto_precharge <= (netsoc_sdram_bankmachine5_track_close == 1'd0);
		end
	end
end
assign netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_din = {netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_last, netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_first, netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_adr, netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_we};
assign {netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_last, netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_first, netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_adr, netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_we} = netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_dout;
assign netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_ready = netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable;
assign netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_we = netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_valid;
assign netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_first = netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_first;
assign netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_last = netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_last;
assign netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_we = netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_we;
assign netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_adr = netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_adr;
assign netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_valid = netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable;
assign netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_first = netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_first;
assign netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_last = netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_last;
assign netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_we = netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_we;
assign netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_adr = netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_adr;
assign netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_re = netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_ready;
always @(*) begin
	netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (netsoc_sdram_bankmachine5_cmd_buffer_lookahead_replace) begin
		netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr <= (netsoc_sdram_bankmachine5_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr <= netsoc_sdram_bankmachine5_cmd_buffer_lookahead_produce;
	end
end
assign netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_dat_w = netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_din;
assign netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_we = (netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_we & (netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable | netsoc_sdram_bankmachine5_cmd_buffer_lookahead_replace));
assign netsoc_sdram_bankmachine5_cmd_buffer_lookahead_do_read = (netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable & netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_re);
assign netsoc_sdram_bankmachine5_cmd_buffer_lookahead_rdport_adr = netsoc_sdram_bankmachine5_cmd_buffer_lookahead_consume;
assign netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_dout = netsoc_sdram_bankmachine5_cmd_buffer_lookahead_rdport_dat_r;
assign netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable = (netsoc_sdram_bankmachine5_cmd_buffer_lookahead_level != 4'd8);
assign netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable = (netsoc_sdram_bankmachine5_cmd_buffer_lookahead_level != 1'd0);
assign netsoc_sdram_bankmachine5_cmd_buffer_pipe_ce = (netsoc_sdram_bankmachine5_cmd_buffer_source_ready | (~netsoc_sdram_bankmachine5_cmd_buffer_valid_n));
assign netsoc_sdram_bankmachine5_cmd_buffer_sink_ready = netsoc_sdram_bankmachine5_cmd_buffer_pipe_ce;
assign netsoc_sdram_bankmachine5_cmd_buffer_source_valid = netsoc_sdram_bankmachine5_cmd_buffer_valid_n;
assign netsoc_sdram_bankmachine5_cmd_buffer_busy = (1'd0 | netsoc_sdram_bankmachine5_cmd_buffer_valid_n);
assign netsoc_sdram_bankmachine5_cmd_buffer_source_first = netsoc_sdram_bankmachine5_cmd_buffer_first_n;
assign netsoc_sdram_bankmachine5_cmd_buffer_source_last = netsoc_sdram_bankmachine5_cmd_buffer_last_n;
assign netsoc_sdram_bankmachine5_done = (netsoc_sdram_bankmachine5_count == 1'd0);
always @(*) begin
	netsoc_sdram_bankmachine5_req_wdata_ready <= 1'd0;
	netsoc_sdram_bankmachine5_track_open <= 1'd0;
	netsoc_sdram_bankmachine5_req_rdata_valid <= 1'd0;
	netsoc_sdram_bankmachine5_track_close <= 1'd0;
	bankmachine5_next_state <= 4'd0;
	netsoc_sdram_bankmachine5_refresh_gnt <= 1'd0;
	netsoc_sdram_bankmachine5_sel_row_adr <= 1'd0;
	netsoc_sdram_bankmachine5_cmd_valid <= 1'd0;
	netsoc_sdram_bankmachine5_cmd_payload_cas <= 1'd0;
	netsoc_sdram_bankmachine5_cmd_payload_ras <= 1'd0;
	netsoc_sdram_bankmachine5_cmd_payload_we <= 1'd0;
	netsoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd0;
	netsoc_sdram_bankmachine5_cmd_payload_is_read <= 1'd0;
	netsoc_sdram_bankmachine5_cmd_payload_is_write <= 1'd0;
	bankmachine5_next_state <= bankmachine5_state;
	case (bankmachine5_state)
		1'd1: begin
			if (netsoc_sdram_bankmachine5_done) begin
				netsoc_sdram_bankmachine5_cmd_valid <= 1'd1;
				if (netsoc_sdram_bankmachine5_cmd_ready) begin
					bankmachine5_next_state <= 3'd5;
				end
				netsoc_sdram_bankmachine5_cmd_payload_ras <= 1'd1;
				netsoc_sdram_bankmachine5_cmd_payload_we <= 1'd1;
				netsoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			end
			netsoc_sdram_bankmachine5_track_close <= 1'd1;
		end
		2'd2: begin
			if (netsoc_sdram_bankmachine5_done) begin
				bankmachine5_next_state <= 3'd5;
			end
			netsoc_sdram_bankmachine5_track_close <= 1'd1;
		end
		2'd3: begin
			netsoc_sdram_bankmachine5_sel_row_adr <= 1'd1;
			netsoc_sdram_bankmachine5_track_open <= 1'd1;
			netsoc_sdram_bankmachine5_cmd_valid <= netsoc_sdram_bankmachine5_ras_allowed;
			netsoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			if ((netsoc_sdram_bankmachine5_cmd_ready & netsoc_sdram_bankmachine5_ras_allowed)) begin
				bankmachine5_next_state <= 3'd7;
			end
			netsoc_sdram_bankmachine5_cmd_payload_ras <= 1'd1;
		end
		3'd4: begin
			if (netsoc_sdram_bankmachine5_done) begin
				netsoc_sdram_bankmachine5_refresh_gnt <= 1'd1;
			end
			netsoc_sdram_bankmachine5_track_close <= 1'd1;
			netsoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			if ((~netsoc_sdram_bankmachine5_refresh_req)) begin
				bankmachine5_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine5_next_state <= 3'd6;
		end
		3'd6: begin
			bankmachine5_next_state <= 2'd3;
		end
		3'd7: begin
			bankmachine5_next_state <= 4'd8;
		end
		4'd8: begin
			bankmachine5_next_state <= 1'd0;
		end
		default: begin
			if (netsoc_sdram_bankmachine5_refresh_req) begin
				bankmachine5_next_state <= 3'd4;
			end else begin
				if (netsoc_sdram_bankmachine5_cmd_buffer_source_valid) begin
					if (netsoc_sdram_bankmachine5_has_openrow) begin
						if (netsoc_sdram_bankmachine5_hit) begin
							if (netsoc_sdram_bankmachine5_cas_allowed) begin
								netsoc_sdram_bankmachine5_cmd_valid <= 1'd1;
								if (netsoc_sdram_bankmachine5_cmd_buffer_source_payload_we) begin
									netsoc_sdram_bankmachine5_req_wdata_ready <= netsoc_sdram_bankmachine5_cmd_ready;
									netsoc_sdram_bankmachine5_cmd_payload_is_write <= 1'd1;
									netsoc_sdram_bankmachine5_cmd_payload_we <= 1'd1;
								end else begin
									netsoc_sdram_bankmachine5_req_rdata_valid <= netsoc_sdram_bankmachine5_cmd_ready;
									netsoc_sdram_bankmachine5_cmd_payload_is_read <= 1'd1;
								end
								netsoc_sdram_bankmachine5_cmd_payload_cas <= 1'd1;
								if ((netsoc_sdram_bankmachine5_cmd_ready & netsoc_sdram_bankmachine5_auto_precharge)) begin
									bankmachine5_next_state <= 2'd2;
								end
							end
						end else begin
							bankmachine5_next_state <= 1'd1;
						end
					end else begin
						bankmachine5_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_valid = netsoc_sdram_bankmachine6_req_valid;
assign netsoc_sdram_bankmachine6_req_ready = netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_ready;
assign netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_we = netsoc_sdram_bankmachine6_req_we;
assign netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_adr = netsoc_sdram_bankmachine6_req_adr;
assign netsoc_sdram_bankmachine6_cmd_buffer_sink_valid = netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_valid;
assign netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_ready = netsoc_sdram_bankmachine6_cmd_buffer_sink_ready;
assign netsoc_sdram_bankmachine6_cmd_buffer_sink_first = netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_first;
assign netsoc_sdram_bankmachine6_cmd_buffer_sink_last = netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_last;
assign netsoc_sdram_bankmachine6_cmd_buffer_sink_payload_we = netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_we;
assign netsoc_sdram_bankmachine6_cmd_buffer_sink_payload_adr = netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_adr;
assign netsoc_sdram_bankmachine6_cmd_buffer_source_ready = (netsoc_sdram_bankmachine6_req_wdata_ready | netsoc_sdram_bankmachine6_req_rdata_valid);
assign netsoc_sdram_bankmachine6_req_lock = (netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_valid | netsoc_sdram_bankmachine6_cmd_buffer_source_valid);
assign netsoc_sdram_bankmachine6_hit = (netsoc_sdram_bankmachine6_openrow == netsoc_sdram_bankmachine6_cmd_buffer_source_payload_adr[20:7]);
assign netsoc_sdram_bankmachine6_cmd_payload_ba = 3'd6;
always @(*) begin
	netsoc_sdram_bankmachine6_cmd_payload_a <= 14'd0;
	if (netsoc_sdram_bankmachine6_sel_row_adr) begin
		netsoc_sdram_bankmachine6_cmd_payload_a <= netsoc_sdram_bankmachine6_cmd_buffer_source_payload_adr[20:7];
	end else begin
		netsoc_sdram_bankmachine6_cmd_payload_a <= ((netsoc_sdram_bankmachine6_auto_precharge <<< 4'd10) | {netsoc_sdram_bankmachine6_cmd_buffer_source_payload_adr[6:0], {3{1'd0}}});
	end
end
assign netsoc_sdram_bankmachine6_wait = (~((netsoc_sdram_bankmachine6_cmd_valid & netsoc_sdram_bankmachine6_cmd_ready) & netsoc_sdram_bankmachine6_cmd_payload_is_write));
always @(*) begin
	netsoc_sdram_bankmachine6_auto_precharge <= 1'd0;
	if ((netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_valid & netsoc_sdram_bankmachine6_cmd_buffer_source_valid)) begin
		if ((netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_adr[20:7] != netsoc_sdram_bankmachine6_cmd_buffer_source_payload_adr[20:7])) begin
			netsoc_sdram_bankmachine6_auto_precharge <= (netsoc_sdram_bankmachine6_track_close == 1'd0);
		end
	end
end
assign netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_din = {netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_last, netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_first, netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_adr, netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_we};
assign {netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_last, netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_first, netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_adr, netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_we} = netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_dout;
assign netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_ready = netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable;
assign netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_we = netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_valid;
assign netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_first = netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_first;
assign netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_last = netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_last;
assign netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_we = netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_we;
assign netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_adr = netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_adr;
assign netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_valid = netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable;
assign netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_first = netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_first;
assign netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_last = netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_last;
assign netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_we = netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_we;
assign netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_adr = netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_adr;
assign netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_re = netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_ready;
always @(*) begin
	netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (netsoc_sdram_bankmachine6_cmd_buffer_lookahead_replace) begin
		netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr <= (netsoc_sdram_bankmachine6_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr <= netsoc_sdram_bankmachine6_cmd_buffer_lookahead_produce;
	end
end
assign netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_dat_w = netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_din;
assign netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_we = (netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_we & (netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable | netsoc_sdram_bankmachine6_cmd_buffer_lookahead_replace));
assign netsoc_sdram_bankmachine6_cmd_buffer_lookahead_do_read = (netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable & netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_re);
assign netsoc_sdram_bankmachine6_cmd_buffer_lookahead_rdport_adr = netsoc_sdram_bankmachine6_cmd_buffer_lookahead_consume;
assign netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_dout = netsoc_sdram_bankmachine6_cmd_buffer_lookahead_rdport_dat_r;
assign netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable = (netsoc_sdram_bankmachine6_cmd_buffer_lookahead_level != 4'd8);
assign netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable = (netsoc_sdram_bankmachine6_cmd_buffer_lookahead_level != 1'd0);
assign netsoc_sdram_bankmachine6_cmd_buffer_pipe_ce = (netsoc_sdram_bankmachine6_cmd_buffer_source_ready | (~netsoc_sdram_bankmachine6_cmd_buffer_valid_n));
assign netsoc_sdram_bankmachine6_cmd_buffer_sink_ready = netsoc_sdram_bankmachine6_cmd_buffer_pipe_ce;
assign netsoc_sdram_bankmachine6_cmd_buffer_source_valid = netsoc_sdram_bankmachine6_cmd_buffer_valid_n;
assign netsoc_sdram_bankmachine6_cmd_buffer_busy = (1'd0 | netsoc_sdram_bankmachine6_cmd_buffer_valid_n);
assign netsoc_sdram_bankmachine6_cmd_buffer_source_first = netsoc_sdram_bankmachine6_cmd_buffer_first_n;
assign netsoc_sdram_bankmachine6_cmd_buffer_source_last = netsoc_sdram_bankmachine6_cmd_buffer_last_n;
assign netsoc_sdram_bankmachine6_done = (netsoc_sdram_bankmachine6_count == 1'd0);
always @(*) begin
	netsoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd0;
	netsoc_sdram_bankmachine6_cmd_payload_is_read <= 1'd0;
	netsoc_sdram_bankmachine6_cmd_payload_is_write <= 1'd0;
	netsoc_sdram_bankmachine6_req_wdata_ready <= 1'd0;
	netsoc_sdram_bankmachine6_track_open <= 1'd0;
	netsoc_sdram_bankmachine6_req_rdata_valid <= 1'd0;
	netsoc_sdram_bankmachine6_track_close <= 1'd0;
	netsoc_sdram_bankmachine6_refresh_gnt <= 1'd0;
	netsoc_sdram_bankmachine6_sel_row_adr <= 1'd0;
	netsoc_sdram_bankmachine6_cmd_valid <= 1'd0;
	netsoc_sdram_bankmachine6_cmd_payload_cas <= 1'd0;
	netsoc_sdram_bankmachine6_cmd_payload_ras <= 1'd0;
	bankmachine6_next_state <= 4'd0;
	netsoc_sdram_bankmachine6_cmd_payload_we <= 1'd0;
	bankmachine6_next_state <= bankmachine6_state;
	case (bankmachine6_state)
		1'd1: begin
			if (netsoc_sdram_bankmachine6_done) begin
				netsoc_sdram_bankmachine6_cmd_valid <= 1'd1;
				if (netsoc_sdram_bankmachine6_cmd_ready) begin
					bankmachine6_next_state <= 3'd5;
				end
				netsoc_sdram_bankmachine6_cmd_payload_ras <= 1'd1;
				netsoc_sdram_bankmachine6_cmd_payload_we <= 1'd1;
				netsoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			end
			netsoc_sdram_bankmachine6_track_close <= 1'd1;
		end
		2'd2: begin
			if (netsoc_sdram_bankmachine6_done) begin
				bankmachine6_next_state <= 3'd5;
			end
			netsoc_sdram_bankmachine6_track_close <= 1'd1;
		end
		2'd3: begin
			netsoc_sdram_bankmachine6_sel_row_adr <= 1'd1;
			netsoc_sdram_bankmachine6_track_open <= 1'd1;
			netsoc_sdram_bankmachine6_cmd_valid <= netsoc_sdram_bankmachine6_ras_allowed;
			netsoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			if ((netsoc_sdram_bankmachine6_cmd_ready & netsoc_sdram_bankmachine6_ras_allowed)) begin
				bankmachine6_next_state <= 3'd7;
			end
			netsoc_sdram_bankmachine6_cmd_payload_ras <= 1'd1;
		end
		3'd4: begin
			if (netsoc_sdram_bankmachine6_done) begin
				netsoc_sdram_bankmachine6_refresh_gnt <= 1'd1;
			end
			netsoc_sdram_bankmachine6_track_close <= 1'd1;
			netsoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			if ((~netsoc_sdram_bankmachine6_refresh_req)) begin
				bankmachine6_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine6_next_state <= 3'd6;
		end
		3'd6: begin
			bankmachine6_next_state <= 2'd3;
		end
		3'd7: begin
			bankmachine6_next_state <= 4'd8;
		end
		4'd8: begin
			bankmachine6_next_state <= 1'd0;
		end
		default: begin
			if (netsoc_sdram_bankmachine6_refresh_req) begin
				bankmachine6_next_state <= 3'd4;
			end else begin
				if (netsoc_sdram_bankmachine6_cmd_buffer_source_valid) begin
					if (netsoc_sdram_bankmachine6_has_openrow) begin
						if (netsoc_sdram_bankmachine6_hit) begin
							if (netsoc_sdram_bankmachine6_cas_allowed) begin
								netsoc_sdram_bankmachine6_cmd_valid <= 1'd1;
								if (netsoc_sdram_bankmachine6_cmd_buffer_source_payload_we) begin
									netsoc_sdram_bankmachine6_req_wdata_ready <= netsoc_sdram_bankmachine6_cmd_ready;
									netsoc_sdram_bankmachine6_cmd_payload_is_write <= 1'd1;
									netsoc_sdram_bankmachine6_cmd_payload_we <= 1'd1;
								end else begin
									netsoc_sdram_bankmachine6_req_rdata_valid <= netsoc_sdram_bankmachine6_cmd_ready;
									netsoc_sdram_bankmachine6_cmd_payload_is_read <= 1'd1;
								end
								netsoc_sdram_bankmachine6_cmd_payload_cas <= 1'd1;
								if ((netsoc_sdram_bankmachine6_cmd_ready & netsoc_sdram_bankmachine6_auto_precharge)) begin
									bankmachine6_next_state <= 2'd2;
								end
							end
						end else begin
							bankmachine6_next_state <= 1'd1;
						end
					end else begin
						bankmachine6_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_valid = netsoc_sdram_bankmachine7_req_valid;
assign netsoc_sdram_bankmachine7_req_ready = netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_ready;
assign netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_we = netsoc_sdram_bankmachine7_req_we;
assign netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_adr = netsoc_sdram_bankmachine7_req_adr;
assign netsoc_sdram_bankmachine7_cmd_buffer_sink_valid = netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_valid;
assign netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_ready = netsoc_sdram_bankmachine7_cmd_buffer_sink_ready;
assign netsoc_sdram_bankmachine7_cmd_buffer_sink_first = netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_first;
assign netsoc_sdram_bankmachine7_cmd_buffer_sink_last = netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_last;
assign netsoc_sdram_bankmachine7_cmd_buffer_sink_payload_we = netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_we;
assign netsoc_sdram_bankmachine7_cmd_buffer_sink_payload_adr = netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_adr;
assign netsoc_sdram_bankmachine7_cmd_buffer_source_ready = (netsoc_sdram_bankmachine7_req_wdata_ready | netsoc_sdram_bankmachine7_req_rdata_valid);
assign netsoc_sdram_bankmachine7_req_lock = (netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_valid | netsoc_sdram_bankmachine7_cmd_buffer_source_valid);
assign netsoc_sdram_bankmachine7_hit = (netsoc_sdram_bankmachine7_openrow == netsoc_sdram_bankmachine7_cmd_buffer_source_payload_adr[20:7]);
assign netsoc_sdram_bankmachine7_cmd_payload_ba = 3'd7;
always @(*) begin
	netsoc_sdram_bankmachine7_cmd_payload_a <= 14'd0;
	if (netsoc_sdram_bankmachine7_sel_row_adr) begin
		netsoc_sdram_bankmachine7_cmd_payload_a <= netsoc_sdram_bankmachine7_cmd_buffer_source_payload_adr[20:7];
	end else begin
		netsoc_sdram_bankmachine7_cmd_payload_a <= ((netsoc_sdram_bankmachine7_auto_precharge <<< 4'd10) | {netsoc_sdram_bankmachine7_cmd_buffer_source_payload_adr[6:0], {3{1'd0}}});
	end
end
assign netsoc_sdram_bankmachine7_wait = (~((netsoc_sdram_bankmachine7_cmd_valid & netsoc_sdram_bankmachine7_cmd_ready) & netsoc_sdram_bankmachine7_cmd_payload_is_write));
always @(*) begin
	netsoc_sdram_bankmachine7_auto_precharge <= 1'd0;
	if ((netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_valid & netsoc_sdram_bankmachine7_cmd_buffer_source_valid)) begin
		if ((netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_adr[20:7] != netsoc_sdram_bankmachine7_cmd_buffer_source_payload_adr[20:7])) begin
			netsoc_sdram_bankmachine7_auto_precharge <= (netsoc_sdram_bankmachine7_track_close == 1'd0);
		end
	end
end
assign netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_din = {netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_last, netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_first, netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_adr, netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_we};
assign {netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_last, netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_first, netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_adr, netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_we} = netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_dout;
assign netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_ready = netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable;
assign netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_we = netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_valid;
assign netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_first = netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_first;
assign netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_last = netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_last;
assign netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_we = netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_we;
assign netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_adr = netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_adr;
assign netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_valid = netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable;
assign netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_first = netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_first;
assign netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_last = netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_last;
assign netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_we = netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_we;
assign netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_adr = netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_adr;
assign netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_re = netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_ready;
always @(*) begin
	netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (netsoc_sdram_bankmachine7_cmd_buffer_lookahead_replace) begin
		netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr <= (netsoc_sdram_bankmachine7_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr <= netsoc_sdram_bankmachine7_cmd_buffer_lookahead_produce;
	end
end
assign netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_dat_w = netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_din;
assign netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_we = (netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_we & (netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable | netsoc_sdram_bankmachine7_cmd_buffer_lookahead_replace));
assign netsoc_sdram_bankmachine7_cmd_buffer_lookahead_do_read = (netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable & netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_re);
assign netsoc_sdram_bankmachine7_cmd_buffer_lookahead_rdport_adr = netsoc_sdram_bankmachine7_cmd_buffer_lookahead_consume;
assign netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_dout = netsoc_sdram_bankmachine7_cmd_buffer_lookahead_rdport_dat_r;
assign netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable = (netsoc_sdram_bankmachine7_cmd_buffer_lookahead_level != 4'd8);
assign netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable = (netsoc_sdram_bankmachine7_cmd_buffer_lookahead_level != 1'd0);
assign netsoc_sdram_bankmachine7_cmd_buffer_pipe_ce = (netsoc_sdram_bankmachine7_cmd_buffer_source_ready | (~netsoc_sdram_bankmachine7_cmd_buffer_valid_n));
assign netsoc_sdram_bankmachine7_cmd_buffer_sink_ready = netsoc_sdram_bankmachine7_cmd_buffer_pipe_ce;
assign netsoc_sdram_bankmachine7_cmd_buffer_source_valid = netsoc_sdram_bankmachine7_cmd_buffer_valid_n;
assign netsoc_sdram_bankmachine7_cmd_buffer_busy = (1'd0 | netsoc_sdram_bankmachine7_cmd_buffer_valid_n);
assign netsoc_sdram_bankmachine7_cmd_buffer_source_first = netsoc_sdram_bankmachine7_cmd_buffer_first_n;
assign netsoc_sdram_bankmachine7_cmd_buffer_source_last = netsoc_sdram_bankmachine7_cmd_buffer_last_n;
assign netsoc_sdram_bankmachine7_done = (netsoc_sdram_bankmachine7_count == 1'd0);
always @(*) begin
	netsoc_sdram_bankmachine7_cmd_payload_cas <= 1'd0;
	netsoc_sdram_bankmachine7_cmd_payload_ras <= 1'd0;
	netsoc_sdram_bankmachine7_cmd_payload_we <= 1'd0;
	netsoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd0;
	netsoc_sdram_bankmachine7_cmd_payload_is_read <= 1'd0;
	netsoc_sdram_bankmachine7_cmd_payload_is_write <= 1'd0;
	bankmachine7_next_state <= 4'd0;
	netsoc_sdram_bankmachine7_req_wdata_ready <= 1'd0;
	netsoc_sdram_bankmachine7_track_open <= 1'd0;
	netsoc_sdram_bankmachine7_req_rdata_valid <= 1'd0;
	netsoc_sdram_bankmachine7_track_close <= 1'd0;
	netsoc_sdram_bankmachine7_refresh_gnt <= 1'd0;
	netsoc_sdram_bankmachine7_sel_row_adr <= 1'd0;
	netsoc_sdram_bankmachine7_cmd_valid <= 1'd0;
	bankmachine7_next_state <= bankmachine7_state;
	case (bankmachine7_state)
		1'd1: begin
			if (netsoc_sdram_bankmachine7_done) begin
				netsoc_sdram_bankmachine7_cmd_valid <= 1'd1;
				if (netsoc_sdram_bankmachine7_cmd_ready) begin
					bankmachine7_next_state <= 3'd5;
				end
				netsoc_sdram_bankmachine7_cmd_payload_ras <= 1'd1;
				netsoc_sdram_bankmachine7_cmd_payload_we <= 1'd1;
				netsoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			end
			netsoc_sdram_bankmachine7_track_close <= 1'd1;
		end
		2'd2: begin
			if (netsoc_sdram_bankmachine7_done) begin
				bankmachine7_next_state <= 3'd5;
			end
			netsoc_sdram_bankmachine7_track_close <= 1'd1;
		end
		2'd3: begin
			netsoc_sdram_bankmachine7_sel_row_adr <= 1'd1;
			netsoc_sdram_bankmachine7_track_open <= 1'd1;
			netsoc_sdram_bankmachine7_cmd_valid <= netsoc_sdram_bankmachine7_ras_allowed;
			netsoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			if ((netsoc_sdram_bankmachine7_cmd_ready & netsoc_sdram_bankmachine7_ras_allowed)) begin
				bankmachine7_next_state <= 3'd7;
			end
			netsoc_sdram_bankmachine7_cmd_payload_ras <= 1'd1;
		end
		3'd4: begin
			if (netsoc_sdram_bankmachine7_done) begin
				netsoc_sdram_bankmachine7_refresh_gnt <= 1'd1;
			end
			netsoc_sdram_bankmachine7_track_close <= 1'd1;
			netsoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			if ((~netsoc_sdram_bankmachine7_refresh_req)) begin
				bankmachine7_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine7_next_state <= 3'd6;
		end
		3'd6: begin
			bankmachine7_next_state <= 2'd3;
		end
		3'd7: begin
			bankmachine7_next_state <= 4'd8;
		end
		4'd8: begin
			bankmachine7_next_state <= 1'd0;
		end
		default: begin
			if (netsoc_sdram_bankmachine7_refresh_req) begin
				bankmachine7_next_state <= 3'd4;
			end else begin
				if (netsoc_sdram_bankmachine7_cmd_buffer_source_valid) begin
					if (netsoc_sdram_bankmachine7_has_openrow) begin
						if (netsoc_sdram_bankmachine7_hit) begin
							if (netsoc_sdram_bankmachine7_cas_allowed) begin
								netsoc_sdram_bankmachine7_cmd_valid <= 1'd1;
								if (netsoc_sdram_bankmachine7_cmd_buffer_source_payload_we) begin
									netsoc_sdram_bankmachine7_req_wdata_ready <= netsoc_sdram_bankmachine7_cmd_ready;
									netsoc_sdram_bankmachine7_cmd_payload_is_write <= 1'd1;
									netsoc_sdram_bankmachine7_cmd_payload_we <= 1'd1;
								end else begin
									netsoc_sdram_bankmachine7_req_rdata_valid <= netsoc_sdram_bankmachine7_cmd_ready;
									netsoc_sdram_bankmachine7_cmd_payload_is_read <= 1'd1;
								end
								netsoc_sdram_bankmachine7_cmd_payload_cas <= 1'd1;
								if ((netsoc_sdram_bankmachine7_cmd_ready & netsoc_sdram_bankmachine7_auto_precharge)) begin
									bankmachine7_next_state <= 2'd2;
								end
							end
						end else begin
							bankmachine7_next_state <= 1'd1;
						end
					end else begin
						bankmachine7_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign netsoc_sdram_trrdcon_valid = ((netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_ready) & ((netsoc_sdram_choose_cmd_cmd_payload_ras & (~netsoc_sdram_choose_cmd_cmd_payload_cas)) & (~netsoc_sdram_choose_cmd_cmd_payload_we)));
assign netsoc_sdram_tfawcon_valid = ((netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_ready) & ((netsoc_sdram_choose_cmd_cmd_payload_ras & (~netsoc_sdram_choose_cmd_cmd_payload_cas)) & (~netsoc_sdram_choose_cmd_cmd_payload_we)));
assign netsoc_sdram_ras_allowed = (netsoc_sdram_trrdcon_ready & netsoc_sdram_tfawcon_ready);
assign netsoc_sdram_bankmachine0_ras_allowed = netsoc_sdram_ras_allowed;
assign netsoc_sdram_bankmachine1_ras_allowed = netsoc_sdram_ras_allowed;
assign netsoc_sdram_bankmachine2_ras_allowed = netsoc_sdram_ras_allowed;
assign netsoc_sdram_bankmachine3_ras_allowed = netsoc_sdram_ras_allowed;
assign netsoc_sdram_bankmachine4_ras_allowed = netsoc_sdram_ras_allowed;
assign netsoc_sdram_bankmachine5_ras_allowed = netsoc_sdram_ras_allowed;
assign netsoc_sdram_bankmachine6_ras_allowed = netsoc_sdram_ras_allowed;
assign netsoc_sdram_bankmachine7_ras_allowed = netsoc_sdram_ras_allowed;
assign netsoc_sdram_tccdcon_valid = ((netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_ready) & (netsoc_sdram_choose_req_cmd_payload_is_write | netsoc_sdram_choose_req_cmd_payload_is_read));
assign netsoc_sdram_cas_allowed = netsoc_sdram_tccdcon_ready;
assign netsoc_sdram_bankmachine0_cas_allowed = netsoc_sdram_cas_allowed;
assign netsoc_sdram_bankmachine1_cas_allowed = netsoc_sdram_cas_allowed;
assign netsoc_sdram_bankmachine2_cas_allowed = netsoc_sdram_cas_allowed;
assign netsoc_sdram_bankmachine3_cas_allowed = netsoc_sdram_cas_allowed;
assign netsoc_sdram_bankmachine4_cas_allowed = netsoc_sdram_cas_allowed;
assign netsoc_sdram_bankmachine5_cas_allowed = netsoc_sdram_cas_allowed;
assign netsoc_sdram_bankmachine6_cas_allowed = netsoc_sdram_cas_allowed;
assign netsoc_sdram_bankmachine7_cas_allowed = netsoc_sdram_cas_allowed;
assign netsoc_sdram_twtrcon_valid = ((netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_ready) & netsoc_sdram_choose_req_cmd_payload_is_write);
assign netsoc_sdram_read_available = ((((((((netsoc_sdram_bankmachine0_cmd_valid & netsoc_sdram_bankmachine0_cmd_payload_is_read) | (netsoc_sdram_bankmachine1_cmd_valid & netsoc_sdram_bankmachine1_cmd_payload_is_read)) | (netsoc_sdram_bankmachine2_cmd_valid & netsoc_sdram_bankmachine2_cmd_payload_is_read)) | (netsoc_sdram_bankmachine3_cmd_valid & netsoc_sdram_bankmachine3_cmd_payload_is_read)) | (netsoc_sdram_bankmachine4_cmd_valid & netsoc_sdram_bankmachine4_cmd_payload_is_read)) | (netsoc_sdram_bankmachine5_cmd_valid & netsoc_sdram_bankmachine5_cmd_payload_is_read)) | (netsoc_sdram_bankmachine6_cmd_valid & netsoc_sdram_bankmachine6_cmd_payload_is_read)) | (netsoc_sdram_bankmachine7_cmd_valid & netsoc_sdram_bankmachine7_cmd_payload_is_read));
assign netsoc_sdram_write_available = ((((((((netsoc_sdram_bankmachine0_cmd_valid & netsoc_sdram_bankmachine0_cmd_payload_is_write) | (netsoc_sdram_bankmachine1_cmd_valid & netsoc_sdram_bankmachine1_cmd_payload_is_write)) | (netsoc_sdram_bankmachine2_cmd_valid & netsoc_sdram_bankmachine2_cmd_payload_is_write)) | (netsoc_sdram_bankmachine3_cmd_valid & netsoc_sdram_bankmachine3_cmd_payload_is_write)) | (netsoc_sdram_bankmachine4_cmd_valid & netsoc_sdram_bankmachine4_cmd_payload_is_write)) | (netsoc_sdram_bankmachine5_cmd_valid & netsoc_sdram_bankmachine5_cmd_payload_is_write)) | (netsoc_sdram_bankmachine6_cmd_valid & netsoc_sdram_bankmachine6_cmd_payload_is_write)) | (netsoc_sdram_bankmachine7_cmd_valid & netsoc_sdram_bankmachine7_cmd_payload_is_write));
assign netsoc_sdram_max_time0 = (netsoc_sdram_time0 == 1'd0);
assign netsoc_sdram_max_time1 = (netsoc_sdram_time1 == 1'd0);
assign netsoc_sdram_bankmachine0_refresh_req = netsoc_sdram_cmd_valid;
assign netsoc_sdram_bankmachine1_refresh_req = netsoc_sdram_cmd_valid;
assign netsoc_sdram_bankmachine2_refresh_req = netsoc_sdram_cmd_valid;
assign netsoc_sdram_bankmachine3_refresh_req = netsoc_sdram_cmd_valid;
assign netsoc_sdram_bankmachine4_refresh_req = netsoc_sdram_cmd_valid;
assign netsoc_sdram_bankmachine5_refresh_req = netsoc_sdram_cmd_valid;
assign netsoc_sdram_bankmachine6_refresh_req = netsoc_sdram_cmd_valid;
assign netsoc_sdram_bankmachine7_refresh_req = netsoc_sdram_cmd_valid;
assign netsoc_sdram_go_to_refresh = (((((((netsoc_sdram_bankmachine0_refresh_gnt & netsoc_sdram_bankmachine1_refresh_gnt) & netsoc_sdram_bankmachine2_refresh_gnt) & netsoc_sdram_bankmachine3_refresh_gnt) & netsoc_sdram_bankmachine4_refresh_gnt) & netsoc_sdram_bankmachine5_refresh_gnt) & netsoc_sdram_bankmachine6_refresh_gnt) & netsoc_sdram_bankmachine7_refresh_gnt);
assign netsoc_sdram_interface_rdata = {netsoc_sdram_dfi_p3_rddata, netsoc_sdram_dfi_p2_rddata, netsoc_sdram_dfi_p1_rddata, netsoc_sdram_dfi_p0_rddata};
assign {netsoc_sdram_dfi_p3_wrdata, netsoc_sdram_dfi_p2_wrdata, netsoc_sdram_dfi_p1_wrdata, netsoc_sdram_dfi_p0_wrdata} = netsoc_sdram_interface_wdata;
assign {netsoc_sdram_dfi_p3_wrdata_mask, netsoc_sdram_dfi_p2_wrdata_mask, netsoc_sdram_dfi_p1_wrdata_mask, netsoc_sdram_dfi_p0_wrdata_mask} = (~netsoc_sdram_interface_wdata_we);
always @(*) begin
	netsoc_sdram_choose_cmd_valids <= 8'd0;
	netsoc_sdram_choose_cmd_valids[0] <= (netsoc_sdram_bankmachine0_cmd_valid & (((netsoc_sdram_bankmachine0_cmd_payload_is_cmd & netsoc_sdram_choose_cmd_want_cmds) & ((~((netsoc_sdram_bankmachine0_cmd_payload_ras & (~netsoc_sdram_bankmachine0_cmd_payload_cas)) & (~netsoc_sdram_bankmachine0_cmd_payload_we))) | netsoc_sdram_choose_cmd_want_activates)) | ((netsoc_sdram_bankmachine0_cmd_payload_is_read == netsoc_sdram_choose_cmd_want_reads) & (netsoc_sdram_bankmachine0_cmd_payload_is_write == netsoc_sdram_choose_cmd_want_writes))));
	netsoc_sdram_choose_cmd_valids[1] <= (netsoc_sdram_bankmachine1_cmd_valid & (((netsoc_sdram_bankmachine1_cmd_payload_is_cmd & netsoc_sdram_choose_cmd_want_cmds) & ((~((netsoc_sdram_bankmachine1_cmd_payload_ras & (~netsoc_sdram_bankmachine1_cmd_payload_cas)) & (~netsoc_sdram_bankmachine1_cmd_payload_we))) | netsoc_sdram_choose_cmd_want_activates)) | ((netsoc_sdram_bankmachine1_cmd_payload_is_read == netsoc_sdram_choose_cmd_want_reads) & (netsoc_sdram_bankmachine1_cmd_payload_is_write == netsoc_sdram_choose_cmd_want_writes))));
	netsoc_sdram_choose_cmd_valids[2] <= (netsoc_sdram_bankmachine2_cmd_valid & (((netsoc_sdram_bankmachine2_cmd_payload_is_cmd & netsoc_sdram_choose_cmd_want_cmds) & ((~((netsoc_sdram_bankmachine2_cmd_payload_ras & (~netsoc_sdram_bankmachine2_cmd_payload_cas)) & (~netsoc_sdram_bankmachine2_cmd_payload_we))) | netsoc_sdram_choose_cmd_want_activates)) | ((netsoc_sdram_bankmachine2_cmd_payload_is_read == netsoc_sdram_choose_cmd_want_reads) & (netsoc_sdram_bankmachine2_cmd_payload_is_write == netsoc_sdram_choose_cmd_want_writes))));
	netsoc_sdram_choose_cmd_valids[3] <= (netsoc_sdram_bankmachine3_cmd_valid & (((netsoc_sdram_bankmachine3_cmd_payload_is_cmd & netsoc_sdram_choose_cmd_want_cmds) & ((~((netsoc_sdram_bankmachine3_cmd_payload_ras & (~netsoc_sdram_bankmachine3_cmd_payload_cas)) & (~netsoc_sdram_bankmachine3_cmd_payload_we))) | netsoc_sdram_choose_cmd_want_activates)) | ((netsoc_sdram_bankmachine3_cmd_payload_is_read == netsoc_sdram_choose_cmd_want_reads) & (netsoc_sdram_bankmachine3_cmd_payload_is_write == netsoc_sdram_choose_cmd_want_writes))));
	netsoc_sdram_choose_cmd_valids[4] <= (netsoc_sdram_bankmachine4_cmd_valid & (((netsoc_sdram_bankmachine4_cmd_payload_is_cmd & netsoc_sdram_choose_cmd_want_cmds) & ((~((netsoc_sdram_bankmachine4_cmd_payload_ras & (~netsoc_sdram_bankmachine4_cmd_payload_cas)) & (~netsoc_sdram_bankmachine4_cmd_payload_we))) | netsoc_sdram_choose_cmd_want_activates)) | ((netsoc_sdram_bankmachine4_cmd_payload_is_read == netsoc_sdram_choose_cmd_want_reads) & (netsoc_sdram_bankmachine4_cmd_payload_is_write == netsoc_sdram_choose_cmd_want_writes))));
	netsoc_sdram_choose_cmd_valids[5] <= (netsoc_sdram_bankmachine5_cmd_valid & (((netsoc_sdram_bankmachine5_cmd_payload_is_cmd & netsoc_sdram_choose_cmd_want_cmds) & ((~((netsoc_sdram_bankmachine5_cmd_payload_ras & (~netsoc_sdram_bankmachine5_cmd_payload_cas)) & (~netsoc_sdram_bankmachine5_cmd_payload_we))) | netsoc_sdram_choose_cmd_want_activates)) | ((netsoc_sdram_bankmachine5_cmd_payload_is_read == netsoc_sdram_choose_cmd_want_reads) & (netsoc_sdram_bankmachine5_cmd_payload_is_write == netsoc_sdram_choose_cmd_want_writes))));
	netsoc_sdram_choose_cmd_valids[6] <= (netsoc_sdram_bankmachine6_cmd_valid & (((netsoc_sdram_bankmachine6_cmd_payload_is_cmd & netsoc_sdram_choose_cmd_want_cmds) & ((~((netsoc_sdram_bankmachine6_cmd_payload_ras & (~netsoc_sdram_bankmachine6_cmd_payload_cas)) & (~netsoc_sdram_bankmachine6_cmd_payload_we))) | netsoc_sdram_choose_cmd_want_activates)) | ((netsoc_sdram_bankmachine6_cmd_payload_is_read == netsoc_sdram_choose_cmd_want_reads) & (netsoc_sdram_bankmachine6_cmd_payload_is_write == netsoc_sdram_choose_cmd_want_writes))));
	netsoc_sdram_choose_cmd_valids[7] <= (netsoc_sdram_bankmachine7_cmd_valid & (((netsoc_sdram_bankmachine7_cmd_payload_is_cmd & netsoc_sdram_choose_cmd_want_cmds) & ((~((netsoc_sdram_bankmachine7_cmd_payload_ras & (~netsoc_sdram_bankmachine7_cmd_payload_cas)) & (~netsoc_sdram_bankmachine7_cmd_payload_we))) | netsoc_sdram_choose_cmd_want_activates)) | ((netsoc_sdram_bankmachine7_cmd_payload_is_read == netsoc_sdram_choose_cmd_want_reads) & (netsoc_sdram_bankmachine7_cmd_payload_is_write == netsoc_sdram_choose_cmd_want_writes))));
end
assign netsoc_sdram_choose_cmd_request = netsoc_sdram_choose_cmd_valids;
assign netsoc_sdram_choose_cmd_cmd_valid = rhs_array_muxed0;
assign netsoc_sdram_choose_cmd_cmd_payload_a = rhs_array_muxed1;
assign netsoc_sdram_choose_cmd_cmd_payload_ba = rhs_array_muxed2;
assign netsoc_sdram_choose_cmd_cmd_payload_is_read = rhs_array_muxed3;
assign netsoc_sdram_choose_cmd_cmd_payload_is_write = rhs_array_muxed4;
assign netsoc_sdram_choose_cmd_cmd_payload_is_cmd = rhs_array_muxed5;
always @(*) begin
	netsoc_sdram_choose_cmd_cmd_payload_cas <= 1'd0;
	if (netsoc_sdram_choose_cmd_cmd_valid) begin
		netsoc_sdram_choose_cmd_cmd_payload_cas <= t_array_muxed0;
	end
end
always @(*) begin
	netsoc_sdram_choose_cmd_cmd_payload_ras <= 1'd0;
	if (netsoc_sdram_choose_cmd_cmd_valid) begin
		netsoc_sdram_choose_cmd_cmd_payload_ras <= t_array_muxed1;
	end
end
always @(*) begin
	netsoc_sdram_choose_cmd_cmd_payload_we <= 1'd0;
	if (netsoc_sdram_choose_cmd_cmd_valid) begin
		netsoc_sdram_choose_cmd_cmd_payload_we <= t_array_muxed2;
	end
end
assign netsoc_sdram_choose_cmd_ce = netsoc_sdram_choose_cmd_cmd_ready;
always @(*) begin
	netsoc_sdram_choose_req_valids <= 8'd0;
	netsoc_sdram_choose_req_valids[0] <= (netsoc_sdram_bankmachine0_cmd_valid & (((netsoc_sdram_bankmachine0_cmd_payload_is_cmd & netsoc_sdram_choose_req_want_cmds) & ((~((netsoc_sdram_bankmachine0_cmd_payload_ras & (~netsoc_sdram_bankmachine0_cmd_payload_cas)) & (~netsoc_sdram_bankmachine0_cmd_payload_we))) | netsoc_sdram_choose_req_want_activates)) | ((netsoc_sdram_bankmachine0_cmd_payload_is_read == netsoc_sdram_choose_req_want_reads) & (netsoc_sdram_bankmachine0_cmd_payload_is_write == netsoc_sdram_choose_req_want_writes))));
	netsoc_sdram_choose_req_valids[1] <= (netsoc_sdram_bankmachine1_cmd_valid & (((netsoc_sdram_bankmachine1_cmd_payload_is_cmd & netsoc_sdram_choose_req_want_cmds) & ((~((netsoc_sdram_bankmachine1_cmd_payload_ras & (~netsoc_sdram_bankmachine1_cmd_payload_cas)) & (~netsoc_sdram_bankmachine1_cmd_payload_we))) | netsoc_sdram_choose_req_want_activates)) | ((netsoc_sdram_bankmachine1_cmd_payload_is_read == netsoc_sdram_choose_req_want_reads) & (netsoc_sdram_bankmachine1_cmd_payload_is_write == netsoc_sdram_choose_req_want_writes))));
	netsoc_sdram_choose_req_valids[2] <= (netsoc_sdram_bankmachine2_cmd_valid & (((netsoc_sdram_bankmachine2_cmd_payload_is_cmd & netsoc_sdram_choose_req_want_cmds) & ((~((netsoc_sdram_bankmachine2_cmd_payload_ras & (~netsoc_sdram_bankmachine2_cmd_payload_cas)) & (~netsoc_sdram_bankmachine2_cmd_payload_we))) | netsoc_sdram_choose_req_want_activates)) | ((netsoc_sdram_bankmachine2_cmd_payload_is_read == netsoc_sdram_choose_req_want_reads) & (netsoc_sdram_bankmachine2_cmd_payload_is_write == netsoc_sdram_choose_req_want_writes))));
	netsoc_sdram_choose_req_valids[3] <= (netsoc_sdram_bankmachine3_cmd_valid & (((netsoc_sdram_bankmachine3_cmd_payload_is_cmd & netsoc_sdram_choose_req_want_cmds) & ((~((netsoc_sdram_bankmachine3_cmd_payload_ras & (~netsoc_sdram_bankmachine3_cmd_payload_cas)) & (~netsoc_sdram_bankmachine3_cmd_payload_we))) | netsoc_sdram_choose_req_want_activates)) | ((netsoc_sdram_bankmachine3_cmd_payload_is_read == netsoc_sdram_choose_req_want_reads) & (netsoc_sdram_bankmachine3_cmd_payload_is_write == netsoc_sdram_choose_req_want_writes))));
	netsoc_sdram_choose_req_valids[4] <= (netsoc_sdram_bankmachine4_cmd_valid & (((netsoc_sdram_bankmachine4_cmd_payload_is_cmd & netsoc_sdram_choose_req_want_cmds) & ((~((netsoc_sdram_bankmachine4_cmd_payload_ras & (~netsoc_sdram_bankmachine4_cmd_payload_cas)) & (~netsoc_sdram_bankmachine4_cmd_payload_we))) | netsoc_sdram_choose_req_want_activates)) | ((netsoc_sdram_bankmachine4_cmd_payload_is_read == netsoc_sdram_choose_req_want_reads) & (netsoc_sdram_bankmachine4_cmd_payload_is_write == netsoc_sdram_choose_req_want_writes))));
	netsoc_sdram_choose_req_valids[5] <= (netsoc_sdram_bankmachine5_cmd_valid & (((netsoc_sdram_bankmachine5_cmd_payload_is_cmd & netsoc_sdram_choose_req_want_cmds) & ((~((netsoc_sdram_bankmachine5_cmd_payload_ras & (~netsoc_sdram_bankmachine5_cmd_payload_cas)) & (~netsoc_sdram_bankmachine5_cmd_payload_we))) | netsoc_sdram_choose_req_want_activates)) | ((netsoc_sdram_bankmachine5_cmd_payload_is_read == netsoc_sdram_choose_req_want_reads) & (netsoc_sdram_bankmachine5_cmd_payload_is_write == netsoc_sdram_choose_req_want_writes))));
	netsoc_sdram_choose_req_valids[6] <= (netsoc_sdram_bankmachine6_cmd_valid & (((netsoc_sdram_bankmachine6_cmd_payload_is_cmd & netsoc_sdram_choose_req_want_cmds) & ((~((netsoc_sdram_bankmachine6_cmd_payload_ras & (~netsoc_sdram_bankmachine6_cmd_payload_cas)) & (~netsoc_sdram_bankmachine6_cmd_payload_we))) | netsoc_sdram_choose_req_want_activates)) | ((netsoc_sdram_bankmachine6_cmd_payload_is_read == netsoc_sdram_choose_req_want_reads) & (netsoc_sdram_bankmachine6_cmd_payload_is_write == netsoc_sdram_choose_req_want_writes))));
	netsoc_sdram_choose_req_valids[7] <= (netsoc_sdram_bankmachine7_cmd_valid & (((netsoc_sdram_bankmachine7_cmd_payload_is_cmd & netsoc_sdram_choose_req_want_cmds) & ((~((netsoc_sdram_bankmachine7_cmd_payload_ras & (~netsoc_sdram_bankmachine7_cmd_payload_cas)) & (~netsoc_sdram_bankmachine7_cmd_payload_we))) | netsoc_sdram_choose_req_want_activates)) | ((netsoc_sdram_bankmachine7_cmd_payload_is_read == netsoc_sdram_choose_req_want_reads) & (netsoc_sdram_bankmachine7_cmd_payload_is_write == netsoc_sdram_choose_req_want_writes))));
end
assign netsoc_sdram_choose_req_request = netsoc_sdram_choose_req_valids;
assign netsoc_sdram_choose_req_cmd_valid = rhs_array_muxed6;
assign netsoc_sdram_choose_req_cmd_payload_a = rhs_array_muxed7;
assign netsoc_sdram_choose_req_cmd_payload_ba = rhs_array_muxed8;
assign netsoc_sdram_choose_req_cmd_payload_is_read = rhs_array_muxed9;
assign netsoc_sdram_choose_req_cmd_payload_is_write = rhs_array_muxed10;
assign netsoc_sdram_choose_req_cmd_payload_is_cmd = rhs_array_muxed11;
always @(*) begin
	netsoc_sdram_choose_req_cmd_payload_cas <= 1'd0;
	if (netsoc_sdram_choose_req_cmd_valid) begin
		netsoc_sdram_choose_req_cmd_payload_cas <= t_array_muxed3;
	end
end
always @(*) begin
	netsoc_sdram_choose_req_cmd_payload_ras <= 1'd0;
	if (netsoc_sdram_choose_req_cmd_valid) begin
		netsoc_sdram_choose_req_cmd_payload_ras <= t_array_muxed4;
	end
end
always @(*) begin
	netsoc_sdram_choose_req_cmd_payload_we <= 1'd0;
	if (netsoc_sdram_choose_req_cmd_valid) begin
		netsoc_sdram_choose_req_cmd_payload_we <= t_array_muxed5;
	end
end
always @(*) begin
	netsoc_sdram_bankmachine0_cmd_ready <= 1'd0;
	if (((netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_ready) & (netsoc_sdram_choose_cmd_grant == 1'd0))) begin
		netsoc_sdram_bankmachine0_cmd_ready <= 1'd1;
	end
	if (((netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_ready) & (netsoc_sdram_choose_req_grant == 1'd0))) begin
		netsoc_sdram_bankmachine0_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	netsoc_sdram_bankmachine1_cmd_ready <= 1'd0;
	if (((netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_ready) & (netsoc_sdram_choose_cmd_grant == 1'd1))) begin
		netsoc_sdram_bankmachine1_cmd_ready <= 1'd1;
	end
	if (((netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_ready) & (netsoc_sdram_choose_req_grant == 1'd1))) begin
		netsoc_sdram_bankmachine1_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	netsoc_sdram_bankmachine2_cmd_ready <= 1'd0;
	if (((netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_ready) & (netsoc_sdram_choose_cmd_grant == 2'd2))) begin
		netsoc_sdram_bankmachine2_cmd_ready <= 1'd1;
	end
	if (((netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_ready) & (netsoc_sdram_choose_req_grant == 2'd2))) begin
		netsoc_sdram_bankmachine2_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	netsoc_sdram_bankmachine3_cmd_ready <= 1'd0;
	if (((netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_ready) & (netsoc_sdram_choose_cmd_grant == 2'd3))) begin
		netsoc_sdram_bankmachine3_cmd_ready <= 1'd1;
	end
	if (((netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_ready) & (netsoc_sdram_choose_req_grant == 2'd3))) begin
		netsoc_sdram_bankmachine3_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	netsoc_sdram_bankmachine4_cmd_ready <= 1'd0;
	if (((netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_ready) & (netsoc_sdram_choose_cmd_grant == 3'd4))) begin
		netsoc_sdram_bankmachine4_cmd_ready <= 1'd1;
	end
	if (((netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_ready) & (netsoc_sdram_choose_req_grant == 3'd4))) begin
		netsoc_sdram_bankmachine4_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	netsoc_sdram_bankmachine5_cmd_ready <= 1'd0;
	if (((netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_ready) & (netsoc_sdram_choose_cmd_grant == 3'd5))) begin
		netsoc_sdram_bankmachine5_cmd_ready <= 1'd1;
	end
	if (((netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_ready) & (netsoc_sdram_choose_req_grant == 3'd5))) begin
		netsoc_sdram_bankmachine5_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	netsoc_sdram_bankmachine6_cmd_ready <= 1'd0;
	if (((netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_ready) & (netsoc_sdram_choose_cmd_grant == 3'd6))) begin
		netsoc_sdram_bankmachine6_cmd_ready <= 1'd1;
	end
	if (((netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_ready) & (netsoc_sdram_choose_req_grant == 3'd6))) begin
		netsoc_sdram_bankmachine6_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	netsoc_sdram_bankmachine7_cmd_ready <= 1'd0;
	if (((netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_ready) & (netsoc_sdram_choose_cmd_grant == 3'd7))) begin
		netsoc_sdram_bankmachine7_cmd_ready <= 1'd1;
	end
	if (((netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_ready) & (netsoc_sdram_choose_req_grant == 3'd7))) begin
		netsoc_sdram_bankmachine7_cmd_ready <= 1'd1;
	end
end
assign netsoc_sdram_choose_req_ce = netsoc_sdram_choose_req_cmd_ready;
assign netsoc_sdram_dfi_p0_cke = 1'd1;
assign netsoc_sdram_dfi_p0_cs_n = 1'd0;
assign netsoc_sdram_dfi_p0_odt = 1'd1;
assign netsoc_sdram_dfi_p0_reset_n = 1'd1;
assign netsoc_sdram_dfi_p1_cke = 1'd1;
assign netsoc_sdram_dfi_p1_cs_n = 1'd0;
assign netsoc_sdram_dfi_p1_odt = 1'd1;
assign netsoc_sdram_dfi_p1_reset_n = 1'd1;
assign netsoc_sdram_dfi_p2_cke = 1'd1;
assign netsoc_sdram_dfi_p2_cs_n = 1'd0;
assign netsoc_sdram_dfi_p2_odt = 1'd1;
assign netsoc_sdram_dfi_p2_reset_n = 1'd1;
assign netsoc_sdram_dfi_p3_cke = 1'd1;
assign netsoc_sdram_dfi_p3_cs_n = 1'd0;
assign netsoc_sdram_dfi_p3_odt = 1'd1;
assign netsoc_sdram_dfi_p3_reset_n = 1'd1;
assign netsoc_sdram_tfawcon_count = (((((((netsoc_sdram_tfawcon_window[0] + netsoc_sdram_tfawcon_window[1]) + netsoc_sdram_tfawcon_window[2]) + netsoc_sdram_tfawcon_window[3]) + netsoc_sdram_tfawcon_window[4]) + netsoc_sdram_tfawcon_window[5]) + netsoc_sdram_tfawcon_window[6]) + netsoc_sdram_tfawcon_window[7]);
always @(*) begin
	netsoc_sdram_sel0 <= 2'd0;
	netsoc_sdram_sel1 <= 2'd0;
	netsoc_sdram_sel2 <= 2'd0;
	netsoc_sdram_sel3 <= 2'd0;
	netsoc_sdram_en0 <= 1'd0;
	netsoc_sdram_cmd_ready <= 1'd0;
	netsoc_sdram_choose_cmd_want_activates <= 1'd0;
	netsoc_sdram_choose_req_want_reads <= 1'd0;
	netsoc_sdram_choose_cmd_cmd_ready <= 1'd0;
	netsoc_sdram_choose_req_want_writes <= 1'd0;
	netsoc_sdram_en1 <= 1'd0;
	netsoc_sdram_choose_req_cmd_ready <= 1'd0;
	multiplexer_next_state <= 4'd0;
	multiplexer_next_state <= multiplexer_state;
	case (multiplexer_state)
		1'd1: begin
			netsoc_sdram_en1 <= 1'd1;
			netsoc_sdram_choose_req_want_writes <= 1'd1;
			netsoc_sdram_choose_cmd_want_activates <= netsoc_sdram_ras_allowed;
			netsoc_sdram_choose_cmd_cmd_ready <= ((~((netsoc_sdram_choose_cmd_cmd_payload_ras & (~netsoc_sdram_choose_cmd_cmd_payload_cas)) & (~netsoc_sdram_choose_cmd_cmd_payload_we))) | netsoc_sdram_ras_allowed);
			netsoc_sdram_choose_req_cmd_ready <= 1'd1;
			netsoc_sdram_sel0 <= 1'd1;
			netsoc_sdram_sel1 <= 1'd0;
			netsoc_sdram_sel2 <= 1'd0;
			netsoc_sdram_sel3 <= 2'd2;
			if (netsoc_sdram_read_available) begin
				if (((~netsoc_sdram_write_available) | netsoc_sdram_max_time1)) begin
					multiplexer_next_state <= 2'd3;
				end
			end
			if (netsoc_sdram_go_to_refresh) begin
				multiplexer_next_state <= 2'd2;
			end
		end
		2'd2: begin
			netsoc_sdram_sel0 <= 2'd3;
			netsoc_sdram_cmd_ready <= 1'd1;
			if (netsoc_sdram_cmd_last) begin
				multiplexer_next_state <= 1'd0;
			end
		end
		2'd3: begin
			if (netsoc_sdram_twtrcon_ready) begin
				multiplexer_next_state <= 1'd0;
			end
		end
		3'd4: begin
			multiplexer_next_state <= 3'd5;
		end
		3'd5: begin
			multiplexer_next_state <= 3'd6;
		end
		3'd6: begin
			multiplexer_next_state <= 3'd7;
		end
		3'd7: begin
			multiplexer_next_state <= 4'd8;
		end
		4'd8: begin
			multiplexer_next_state <= 1'd1;
		end
		default: begin
			netsoc_sdram_en0 <= 1'd1;
			netsoc_sdram_choose_req_want_reads <= 1'd1;
			netsoc_sdram_choose_cmd_want_activates <= netsoc_sdram_ras_allowed;
			netsoc_sdram_choose_cmd_cmd_ready <= ((~((netsoc_sdram_choose_cmd_cmd_payload_ras & (~netsoc_sdram_choose_cmd_cmd_payload_cas)) & (~netsoc_sdram_choose_cmd_cmd_payload_we))) | netsoc_sdram_ras_allowed);
			netsoc_sdram_choose_req_cmd_ready <= 1'd1;
			netsoc_sdram_sel0 <= 2'd2;
			netsoc_sdram_sel1 <= 1'd0;
			netsoc_sdram_sel2 <= 1'd1;
			netsoc_sdram_sel3 <= 1'd0;
			if (netsoc_sdram_write_available) begin
				if (((~netsoc_sdram_read_available) | netsoc_sdram_max_time0)) begin
					multiplexer_next_state <= 3'd4;
				end
			end
			if (netsoc_sdram_go_to_refresh) begin
				multiplexer_next_state <= 2'd2;
			end
		end
	endcase
end
assign cba = netsoc_port_cmd_payload_adr[9:7];
assign rca = {netsoc_port_cmd_payload_adr[23:10], netsoc_port_cmd_payload_adr[6:0]};
assign roundrobin0_request = {(((cba == 1'd0) & (~(((((((1'd0 | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid)};
assign roundrobin0_ce = ((~netsoc_sdram_interface_bank0_valid) & (~netsoc_sdram_interface_bank0_lock));
assign netsoc_sdram_interface_bank0_adr = rhs_array_muxed12;
assign netsoc_sdram_interface_bank0_we = rhs_array_muxed13;
assign netsoc_sdram_interface_bank0_valid = rhs_array_muxed14;
assign roundrobin1_request = {(((cba == 1'd1) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid)};
assign roundrobin1_ce = ((~netsoc_sdram_interface_bank1_valid) & (~netsoc_sdram_interface_bank1_lock));
assign netsoc_sdram_interface_bank1_adr = rhs_array_muxed15;
assign netsoc_sdram_interface_bank1_we = rhs_array_muxed16;
assign netsoc_sdram_interface_bank1_valid = rhs_array_muxed17;
assign roundrobin2_request = {(((cba == 2'd2) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid)};
assign roundrobin2_ce = ((~netsoc_sdram_interface_bank2_valid) & (~netsoc_sdram_interface_bank2_lock));
assign netsoc_sdram_interface_bank2_adr = rhs_array_muxed18;
assign netsoc_sdram_interface_bank2_we = rhs_array_muxed19;
assign netsoc_sdram_interface_bank2_valid = rhs_array_muxed20;
assign roundrobin3_request = {(((cba == 2'd3) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid)};
assign roundrobin3_ce = ((~netsoc_sdram_interface_bank3_valid) & (~netsoc_sdram_interface_bank3_lock));
assign netsoc_sdram_interface_bank3_adr = rhs_array_muxed21;
assign netsoc_sdram_interface_bank3_we = rhs_array_muxed22;
assign netsoc_sdram_interface_bank3_valid = rhs_array_muxed23;
assign roundrobin4_request = {(((cba == 3'd4) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid)};
assign roundrobin4_ce = ((~netsoc_sdram_interface_bank4_valid) & (~netsoc_sdram_interface_bank4_lock));
assign netsoc_sdram_interface_bank4_adr = rhs_array_muxed24;
assign netsoc_sdram_interface_bank4_we = rhs_array_muxed25;
assign netsoc_sdram_interface_bank4_valid = rhs_array_muxed26;
assign roundrobin5_request = {(((cba == 3'd5) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid)};
assign roundrobin5_ce = ((~netsoc_sdram_interface_bank5_valid) & (~netsoc_sdram_interface_bank5_lock));
assign netsoc_sdram_interface_bank5_adr = rhs_array_muxed27;
assign netsoc_sdram_interface_bank5_we = rhs_array_muxed28;
assign netsoc_sdram_interface_bank5_valid = rhs_array_muxed29;
assign roundrobin6_request = {(((cba == 3'd6) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid)};
assign roundrobin6_ce = ((~netsoc_sdram_interface_bank6_valid) & (~netsoc_sdram_interface_bank6_lock));
assign netsoc_sdram_interface_bank6_adr = rhs_array_muxed30;
assign netsoc_sdram_interface_bank6_we = rhs_array_muxed31;
assign netsoc_sdram_interface_bank6_valid = rhs_array_muxed32;
assign roundrobin7_request = {(((cba == 3'd7) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))))) & netsoc_port_cmd_valid)};
assign roundrobin7_ce = ((~netsoc_sdram_interface_bank7_valid) & (~netsoc_sdram_interface_bank7_lock));
assign netsoc_sdram_interface_bank7_adr = rhs_array_muxed33;
assign netsoc_sdram_interface_bank7_we = rhs_array_muxed34;
assign netsoc_sdram_interface_bank7_valid = rhs_array_muxed35;
assign netsoc_port_cmd_ready = ((((((((1'd0 | (((roundrobin0_grant == 1'd0) & ((cba == 1'd0) & (~(((((((1'd0 | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & netsoc_sdram_interface_bank0_ready)) | (((roundrobin1_grant == 1'd0) & ((cba == 1'd1) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & netsoc_sdram_interface_bank1_ready)) | (((roundrobin2_grant == 1'd0) & ((cba == 2'd2) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & netsoc_sdram_interface_bank2_ready)) | (((roundrobin3_grant == 1'd0) & ((cba == 2'd3) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & netsoc_sdram_interface_bank3_ready)) | (((roundrobin4_grant == 1'd0) & ((cba == 3'd4) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & netsoc_sdram_interface_bank4_ready)) | (((roundrobin5_grant == 1'd0) & ((cba == 3'd5) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & netsoc_sdram_interface_bank5_ready)) | (((roundrobin6_grant == 1'd0) & ((cba == 3'd6) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & netsoc_sdram_interface_bank6_ready)) | (((roundrobin7_grant == 1'd0) & ((cba == 3'd7) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0)))))) & netsoc_sdram_interface_bank7_ready));
assign netsoc_port_wdata_ready = new_master_wdata_ready2;
assign netsoc_port_rdata_valid = new_master_rdata_valid6;
always @(*) begin
	netsoc_sdram_interface_wdata <= 128'd0;
	netsoc_sdram_interface_wdata_we <= 16'd0;
	case ({new_master_wdata_ready2})
		1'd1: begin
			netsoc_sdram_interface_wdata <= netsoc_port_wdata_payload_data;
			netsoc_sdram_interface_wdata_we <= netsoc_port_wdata_payload_we;
		end
		default: begin
			netsoc_sdram_interface_wdata <= 1'd0;
			netsoc_sdram_interface_wdata_we <= 1'd0;
		end
	endcase
end
assign netsoc_port_rdata_payload_data = netsoc_sdram_interface_rdata;
assign roundrobin0_grant = 1'd0;
assign roundrobin1_grant = 1'd0;
assign roundrobin2_grant = 1'd0;
assign roundrobin3_grant = 1'd0;
assign roundrobin4_grant = 1'd0;
assign roundrobin5_grant = 1'd0;
assign roundrobin6_grant = 1'd0;
assign roundrobin7_grant = 1'd0;
assign netsoc_data_port_adr = netsoc_interface0_wb_sdram_adr[10:2];
always @(*) begin
	netsoc_data_port_we <= 16'd0;
	netsoc_data_port_dat_w <= 128'd0;
	if (netsoc_write_from_slave) begin
		netsoc_data_port_dat_w <= netsoc_interface_dat_r;
		netsoc_data_port_we <= {16{1'd1}};
	end else begin
		netsoc_data_port_dat_w <= {4{netsoc_interface0_wb_sdram_dat_w}};
		if ((((netsoc_interface0_wb_sdram_cyc & netsoc_interface0_wb_sdram_stb) & netsoc_interface0_wb_sdram_we) & netsoc_interface0_wb_sdram_ack)) begin
			netsoc_data_port_we <= {({4{(netsoc_interface0_wb_sdram_adr[1:0] == 1'd0)}} & netsoc_interface0_wb_sdram_sel), ({4{(netsoc_interface0_wb_sdram_adr[1:0] == 1'd1)}} & netsoc_interface0_wb_sdram_sel), ({4{(netsoc_interface0_wb_sdram_adr[1:0] == 2'd2)}} & netsoc_interface0_wb_sdram_sel), ({4{(netsoc_interface0_wb_sdram_adr[1:0] == 2'd3)}} & netsoc_interface0_wb_sdram_sel)};
		end
	end
end
assign netsoc_interface_dat_w = netsoc_data_port_dat_r;
assign netsoc_interface_sel = 16'd65535;
always @(*) begin
	netsoc_interface0_wb_sdram_dat_r <= 32'd0;
	case (netsoc_adr_offset_r)
		1'd0: begin
			netsoc_interface0_wb_sdram_dat_r <= netsoc_data_port_dat_r[127:96];
		end
		1'd1: begin
			netsoc_interface0_wb_sdram_dat_r <= netsoc_data_port_dat_r[95:64];
		end
		2'd2: begin
			netsoc_interface0_wb_sdram_dat_r <= netsoc_data_port_dat_r[63:32];
		end
		default: begin
			netsoc_interface0_wb_sdram_dat_r <= netsoc_data_port_dat_r[31:0];
		end
	endcase
end
assign {netsoc_tag_do_dirty, netsoc_tag_do_tag} = netsoc_tag_port_dat_r;
assign netsoc_tag_port_dat_w = {netsoc_tag_di_dirty, netsoc_tag_di_tag};
assign netsoc_tag_port_adr = netsoc_interface0_wb_sdram_adr[10:2];
assign netsoc_tag_di_tag = netsoc_interface0_wb_sdram_adr[29:11];
assign netsoc_interface_adr = {netsoc_tag_do_tag, netsoc_interface0_wb_sdram_adr[10:2]};
always @(*) begin
	netsoc_write_from_slave <= 1'd0;
	cache_next_state <= 3'd0;
	netsoc_interface0_wb_sdram_ack <= 1'd0;
	netsoc_interface_cyc <= 1'd0;
	netsoc_interface_stb <= 1'd0;
	netsoc_tag_port_we <= 1'd0;
	netsoc_interface_we <= 1'd0;
	netsoc_tag_di_dirty <= 1'd0;
	netsoc_word_clr <= 1'd0;
	netsoc_word_inc <= 1'd0;
	cache_next_state <= cache_state;
	case (cache_state)
		1'd1: begin
			netsoc_word_clr <= 1'd1;
			if ((netsoc_tag_do_tag == netsoc_interface0_wb_sdram_adr[29:11])) begin
				netsoc_interface0_wb_sdram_ack <= 1'd1;
				if (netsoc_interface0_wb_sdram_we) begin
					netsoc_tag_di_dirty <= 1'd1;
					netsoc_tag_port_we <= 1'd1;
				end
				cache_next_state <= 1'd0;
			end else begin
				if (netsoc_tag_do_dirty) begin
					cache_next_state <= 2'd2;
				end else begin
					cache_next_state <= 2'd3;
				end
			end
		end
		2'd2: begin
			netsoc_interface_stb <= 1'd1;
			netsoc_interface_cyc <= 1'd1;
			netsoc_interface_we <= 1'd1;
			if (netsoc_interface_ack) begin
				netsoc_word_inc <= 1'd1;
				if (1'd1) begin
					cache_next_state <= 2'd3;
				end
			end
		end
		2'd3: begin
			netsoc_tag_port_we <= 1'd1;
			netsoc_word_clr <= 1'd1;
			cache_next_state <= 3'd4;
		end
		3'd4: begin
			netsoc_interface_stb <= 1'd1;
			netsoc_interface_cyc <= 1'd1;
			netsoc_interface_we <= 1'd0;
			if (netsoc_interface_ack) begin
				netsoc_write_from_slave <= 1'd1;
				netsoc_word_inc <= 1'd1;
				if (1'd1) begin
					cache_next_state <= 1'd1;
				end else begin
					cache_next_state <= 3'd4;
				end
			end
		end
		default: begin
			if ((netsoc_interface0_wb_sdram_cyc & netsoc_interface0_wb_sdram_stb)) begin
				cache_next_state <= 1'd1;
			end
		end
	endcase
end
assign netsoc_port_cmd_payload_adr = netsoc_interface_adr;
assign netsoc_port_wdata_payload_we = netsoc_interface_sel;
assign netsoc_port_wdata_payload_data = netsoc_interface_dat_w;
assign netsoc_interface_dat_r = netsoc_port_rdata_payload_data;
always @(*) begin
	netsoc_port_cmd_payload_we <= 1'd0;
	netsoc_port_wdata_valid <= 1'd0;
	netsoc_interface_ack <= 1'd0;
	litedramwishbone2native_next_state <= 2'd0;
	netsoc_port_rdata_ready <= 1'd0;
	netsoc_port_cmd_valid <= 1'd0;
	litedramwishbone2native_next_state <= litedramwishbone2native_state;
	case (litedramwishbone2native_state)
		1'd1: begin
			netsoc_port_cmd_valid <= 1'd1;
			netsoc_port_cmd_payload_we <= netsoc_interface_we;
			if (netsoc_port_cmd_ready) begin
				if (netsoc_interface_we) begin
					litedramwishbone2native_next_state <= 2'd2;
				end else begin
					litedramwishbone2native_next_state <= 2'd3;
				end
			end
		end
		2'd2: begin
			netsoc_port_wdata_valid <= 1'd1;
			if (netsoc_port_wdata_ready) begin
				netsoc_interface_ack <= 1'd1;
				litedramwishbone2native_next_state <= 1'd0;
			end
		end
		2'd3: begin
			netsoc_port_rdata_ready <= 1'd1;
			if (netsoc_port_rdata_valid) begin
				netsoc_interface_ack <= 1'd1;
				litedramwishbone2native_next_state <= 1'd0;
			end
		end
		default: begin
			if ((netsoc_interface_cyc & netsoc_interface_stb)) begin
				litedramwishbone2native_next_state <= 1'd1;
			end
		end
	endcase
end
assign eth_rx_clk = eth_clocks_rx;
assign eth_tx_clk = eth_clocks_tx;
assign ethphy_reset0 = (ethphy_reset_storage | ethphy_reset1);
assign eth_rst_n = (~ethphy_reset0);
assign ethphy_counter_done = (ethphy_counter == 9'd256);
assign ethphy_counter_ce = (~ethphy_counter_done);
assign ethphy_reset1 = (~ethphy_counter_done);
assign ethphy_liteethphymiitx_converter_sink_valid = ethphy_liteethphymiitx_sink_sink_valid;
assign ethphy_liteethphymiitx_converter_sink_payload_data = ethphy_liteethphymiitx_sink_sink_payload_data;
assign ethphy_liteethphymiitx_sink_sink_ready = ethphy_liteethphymiitx_converter_sink_ready;
assign ethphy_liteethphymiitx_converter_source_ready = 1'd1;
assign ethphy_liteethphymiitx_converter_converter_sink_valid = ethphy_liteethphymiitx_converter_sink_valid;
assign ethphy_liteethphymiitx_converter_converter_sink_first = ethphy_liteethphymiitx_converter_sink_first;
assign ethphy_liteethphymiitx_converter_converter_sink_last = ethphy_liteethphymiitx_converter_sink_last;
assign ethphy_liteethphymiitx_converter_sink_ready = ethphy_liteethphymiitx_converter_converter_sink_ready;
always @(*) begin
	ethphy_liteethphymiitx_converter_converter_sink_payload_data <= 8'd0;
	ethphy_liteethphymiitx_converter_converter_sink_payload_data[3:0] <= ethphy_liteethphymiitx_converter_sink_payload_data[3:0];
	ethphy_liteethphymiitx_converter_converter_sink_payload_data[7:4] <= ethphy_liteethphymiitx_converter_sink_payload_data[7:4];
end
assign ethphy_liteethphymiitx_converter_source_valid = ethphy_liteethphymiitx_converter_source_source_valid;
assign ethphy_liteethphymiitx_converter_source_first = ethphy_liteethphymiitx_converter_source_source_first;
assign ethphy_liteethphymiitx_converter_source_last = ethphy_liteethphymiitx_converter_source_source_last;
assign ethphy_liteethphymiitx_converter_source_source_ready = ethphy_liteethphymiitx_converter_source_ready;
assign {ethphy_liteethphymiitx_converter_source_payload_data} = ethphy_liteethphymiitx_converter_source_source_payload_data;
assign ethphy_liteethphymiitx_converter_source_source_valid = ethphy_liteethphymiitx_converter_converter_source_valid;
assign ethphy_liteethphymiitx_converter_converter_source_ready = ethphy_liteethphymiitx_converter_source_source_ready;
assign ethphy_liteethphymiitx_converter_source_source_first = ethphy_liteethphymiitx_converter_converter_source_first;
assign ethphy_liteethphymiitx_converter_source_source_last = ethphy_liteethphymiitx_converter_converter_source_last;
assign ethphy_liteethphymiitx_converter_source_source_payload_data = ethphy_liteethphymiitx_converter_converter_source_payload_data;
assign ethphy_liteethphymiitx_converter_converter_first = (ethphy_liteethphymiitx_converter_converter_mux == 1'd0);
assign ethphy_liteethphymiitx_converter_converter_last = (ethphy_liteethphymiitx_converter_converter_mux == 1'd1);
assign ethphy_liteethphymiitx_converter_converter_source_valid = ethphy_liteethphymiitx_converter_converter_sink_valid;
assign ethphy_liteethphymiitx_converter_converter_source_first = (ethphy_liteethphymiitx_converter_converter_sink_first & ethphy_liteethphymiitx_converter_converter_first);
assign ethphy_liteethphymiitx_converter_converter_source_last = (ethphy_liteethphymiitx_converter_converter_sink_last & ethphy_liteethphymiitx_converter_converter_last);
assign ethphy_liteethphymiitx_converter_converter_sink_ready = (ethphy_liteethphymiitx_converter_converter_last & ethphy_liteethphymiitx_converter_converter_source_ready);
always @(*) begin
	ethphy_liteethphymiitx_converter_converter_source_payload_data <= 4'd0;
	case (ethphy_liteethphymiitx_converter_converter_mux)
		1'd0: begin
			ethphy_liteethphymiitx_converter_converter_source_payload_data <= ethphy_liteethphymiitx_converter_converter_sink_payload_data[3:0];
		end
		default: begin
			ethphy_liteethphymiitx_converter_converter_source_payload_data <= ethphy_liteethphymiitx_converter_converter_sink_payload_data[7:4];
		end
	endcase
end
assign ethphy_liteethphymiitx_converter_converter_source_payload_valid_token_count = ethphy_liteethphymiitx_converter_converter_last;
assign ethphy_liteethphymiirx_converter_sink_last = (~eth_rx_dv);
assign ethphy_liteethphymiirx_source_source_valid = ethphy_liteethphymiirx_converter_source_valid;
assign ethphy_liteethphymiirx_converter_source_ready = ethphy_liteethphymiirx_source_source_ready;
assign ethphy_liteethphymiirx_source_source_first = ethphy_liteethphymiirx_converter_source_first;
assign ethphy_liteethphymiirx_source_source_last = ethphy_liteethphymiirx_converter_source_last;
assign ethphy_liteethphymiirx_source_source_payload_data = ethphy_liteethphymiirx_converter_source_payload_data;
assign ethphy_liteethphymiirx_converter_converter_sink_valid = ethphy_liteethphymiirx_converter_sink_valid;
assign ethphy_liteethphymiirx_converter_converter_sink_first = ethphy_liteethphymiirx_converter_sink_first;
assign ethphy_liteethphymiirx_converter_converter_sink_last = ethphy_liteethphymiirx_converter_sink_last;
assign ethphy_liteethphymiirx_converter_sink_ready = ethphy_liteethphymiirx_converter_converter_sink_ready;
assign ethphy_liteethphymiirx_converter_converter_sink_payload_data = {ethphy_liteethphymiirx_converter_sink_payload_data};
assign ethphy_liteethphymiirx_converter_source_valid = ethphy_liteethphymiirx_converter_source_source_valid;
assign ethphy_liteethphymiirx_converter_source_first = ethphy_liteethphymiirx_converter_source_source_first;
assign ethphy_liteethphymiirx_converter_source_last = ethphy_liteethphymiirx_converter_source_source_last;
assign ethphy_liteethphymiirx_converter_source_source_ready = ethphy_liteethphymiirx_converter_source_ready;
always @(*) begin
	ethphy_liteethphymiirx_converter_source_payload_data <= 8'd0;
	ethphy_liteethphymiirx_converter_source_payload_data[3:0] <= ethphy_liteethphymiirx_converter_source_source_payload_data[3:0];
	ethphy_liteethphymiirx_converter_source_payload_data[7:4] <= ethphy_liteethphymiirx_converter_source_source_payload_data[7:4];
end
assign ethphy_liteethphymiirx_converter_source_source_valid = ethphy_liteethphymiirx_converter_converter_source_valid;
assign ethphy_liteethphymiirx_converter_converter_source_ready = ethphy_liteethphymiirx_converter_source_source_ready;
assign ethphy_liteethphymiirx_converter_source_source_first = ethphy_liteethphymiirx_converter_converter_source_first;
assign ethphy_liteethphymiirx_converter_source_source_last = ethphy_liteethphymiirx_converter_converter_source_last;
assign ethphy_liteethphymiirx_converter_source_source_payload_data = ethphy_liteethphymiirx_converter_converter_source_payload_data;
assign ethphy_liteethphymiirx_converter_converter_sink_ready = ((~ethphy_liteethphymiirx_converter_converter_strobe_all) | ethphy_liteethphymiirx_converter_converter_source_ready);
assign ethphy_liteethphymiirx_converter_converter_source_valid = ethphy_liteethphymiirx_converter_converter_strobe_all;
assign ethphy_liteethphymiirx_converter_converter_load_part = (ethphy_liteethphymiirx_converter_converter_sink_valid & ethphy_liteethphymiirx_converter_converter_sink_ready);
assign eth_mdc = ethphy_storage[0];
assign ethphy_data_oe = ethphy_storage[1];
assign ethphy_data_w = ethphy_storage[2];
assign ethmac_tx_cdc_sink_valid = ethmac_source_valid;
assign ethmac_source_ready = ethmac_tx_cdc_sink_ready;
assign ethmac_tx_cdc_sink_first = ethmac_source_first;
assign ethmac_tx_cdc_sink_last = ethmac_source_last;
assign ethmac_tx_cdc_sink_payload_data = ethmac_source_payload_data;
assign ethmac_tx_cdc_sink_payload_last_be = ethmac_source_payload_last_be;
assign ethmac_tx_cdc_sink_payload_error = ethmac_source_payload_error;
assign ethmac_sink_valid = ethmac_rx_cdc_source_valid;
assign ethmac_rx_cdc_source_ready = ethmac_sink_ready;
assign ethmac_sink_first = ethmac_rx_cdc_source_first;
assign ethmac_sink_last = ethmac_rx_cdc_source_last;
assign ethmac_sink_payload_data = ethmac_rx_cdc_source_payload_data;
assign ethmac_sink_payload_last_be = ethmac_rx_cdc_source_payload_last_be;
assign ethmac_sink_payload_error = ethmac_rx_cdc_source_payload_error;
assign ethmac_ps_preamble_error_i = ethmac_preamble_checker_error;
assign ethmac_ps_crc_error_i = ethmac_crc32_checker_error;
always @(*) begin
	ethmac_tx_gap_inserter_source_valid <= 1'd0;
	ethmac_tx_gap_inserter_source_first <= 1'd0;
	ethmac_tx_gap_inserter_source_last <= 1'd0;
	ethmac_tx_gap_inserter_source_payload_data <= 8'd0;
	ethmac_tx_gap_inserter_source_payload_last_be <= 1'd0;
	ethmac_tx_gap_inserter_source_payload_error <= 1'd0;
	ethmac_tx_gap_inserter_counter_reset <= 1'd0;
	ethmac_tx_gap_inserter_counter_ce <= 1'd0;
	ethmac_tx_gap_inserter_sink_ready <= 1'd0;
	liteethmacgap_next_state <= 1'd0;
	liteethmacgap_next_state <= liteethmacgap_state;
	case (liteethmacgap_state)
		1'd1: begin
			ethmac_tx_gap_inserter_counter_ce <= 1'd1;
			if ((ethmac_tx_gap_inserter_counter == 4'd11)) begin
				liteethmacgap_next_state <= 1'd0;
			end
		end
		default: begin
			ethmac_tx_gap_inserter_counter_reset <= 1'd1;
			ethmac_tx_gap_inserter_source_valid <= ethmac_tx_gap_inserter_sink_valid;
			ethmac_tx_gap_inserter_sink_ready <= ethmac_tx_gap_inserter_source_ready;
			ethmac_tx_gap_inserter_source_first <= ethmac_tx_gap_inserter_sink_first;
			ethmac_tx_gap_inserter_source_last <= ethmac_tx_gap_inserter_sink_last;
			ethmac_tx_gap_inserter_source_payload_data <= ethmac_tx_gap_inserter_sink_payload_data;
			ethmac_tx_gap_inserter_source_payload_last_be <= ethmac_tx_gap_inserter_sink_payload_last_be;
			ethmac_tx_gap_inserter_source_payload_error <= ethmac_tx_gap_inserter_sink_payload_error;
			if (((ethmac_tx_gap_inserter_sink_valid & ethmac_tx_gap_inserter_sink_last) & ethmac_tx_gap_inserter_sink_ready)) begin
				liteethmacgap_next_state <= 1'd1;
			end
		end
	endcase
end
assign ethmac_preamble_inserter_source_payload_last_be = ethmac_preamble_inserter_sink_payload_last_be;
always @(*) begin
	ethmac_preamble_inserter_source_payload_error <= 1'd0;
	ethmac_preamble_inserter_clr_cnt <= 1'd0;
	ethmac_preamble_inserter_inc_cnt <= 1'd0;
	liteethmacpreambleinserter_next_state <= 2'd0;
	ethmac_preamble_inserter_sink_ready <= 1'd0;
	ethmac_preamble_inserter_source_valid <= 1'd0;
	ethmac_preamble_inserter_source_first <= 1'd0;
	ethmac_preamble_inserter_source_last <= 1'd0;
	ethmac_preamble_inserter_source_payload_data <= 8'd0;
	ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_sink_payload_data;
	liteethmacpreambleinserter_next_state <= liteethmacpreambleinserter_state;
	case (liteethmacpreambleinserter_state)
		1'd1: begin
			ethmac_preamble_inserter_source_valid <= 1'd1;
			case (ethmac_preamble_inserter_cnt)
				1'd0: begin
					ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_preamble[7:0];
				end
				1'd1: begin
					ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_preamble[15:8];
				end
				2'd2: begin
					ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_preamble[23:16];
				end
				2'd3: begin
					ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_preamble[31:24];
				end
				3'd4: begin
					ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_preamble[39:32];
				end
				3'd5: begin
					ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_preamble[47:40];
				end
				3'd6: begin
					ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_preamble[55:48];
				end
				default: begin
					ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_preamble[63:56];
				end
			endcase
			if ((ethmac_preamble_inserter_cnt == 3'd7)) begin
				if (ethmac_preamble_inserter_source_ready) begin
					liteethmacpreambleinserter_next_state <= 2'd2;
				end
			end else begin
				ethmac_preamble_inserter_inc_cnt <= ethmac_preamble_inserter_source_ready;
			end
		end
		2'd2: begin
			ethmac_preamble_inserter_source_valid <= ethmac_preamble_inserter_sink_valid;
			ethmac_preamble_inserter_sink_ready <= ethmac_preamble_inserter_source_ready;
			ethmac_preamble_inserter_source_first <= ethmac_preamble_inserter_sink_first;
			ethmac_preamble_inserter_source_last <= ethmac_preamble_inserter_sink_last;
			ethmac_preamble_inserter_source_payload_error <= ethmac_preamble_inserter_sink_payload_error;
			if (((ethmac_preamble_inserter_sink_valid & ethmac_preamble_inserter_sink_last) & ethmac_preamble_inserter_source_ready)) begin
				liteethmacpreambleinserter_next_state <= 1'd0;
			end
		end
		default: begin
			ethmac_preamble_inserter_sink_ready <= 1'd1;
			ethmac_preamble_inserter_clr_cnt <= 1'd1;
			if (ethmac_preamble_inserter_sink_valid) begin
				ethmac_preamble_inserter_sink_ready <= 1'd0;
				liteethmacpreambleinserter_next_state <= 1'd1;
			end
		end
	endcase
end
assign ethmac_preamble_checker_source_payload_data = ethmac_preamble_checker_sink_payload_data;
assign ethmac_preamble_checker_source_payload_last_be = ethmac_preamble_checker_sink_payload_last_be;
always @(*) begin
	ethmac_preamble_checker_source_payload_error <= 1'd0;
	liteethmacpreamblechecker_next_state <= 1'd0;
	ethmac_preamble_checker_error <= 1'd0;
	ethmac_preamble_checker_sink_ready <= 1'd0;
	ethmac_preamble_checker_source_valid <= 1'd0;
	ethmac_preamble_checker_source_first <= 1'd0;
	ethmac_preamble_checker_source_last <= 1'd0;
	liteethmacpreamblechecker_next_state <= liteethmacpreamblechecker_state;
	case (liteethmacpreamblechecker_state)
		1'd1: begin
			ethmac_preamble_checker_source_valid <= ethmac_preamble_checker_sink_valid;
			ethmac_preamble_checker_sink_ready <= ethmac_preamble_checker_source_ready;
			ethmac_preamble_checker_source_first <= ethmac_preamble_checker_sink_first;
			ethmac_preamble_checker_source_last <= ethmac_preamble_checker_sink_last;
			ethmac_preamble_checker_source_payload_error <= ethmac_preamble_checker_sink_payload_error;
			if (((ethmac_preamble_checker_source_valid & ethmac_preamble_checker_source_last) & ethmac_preamble_checker_source_ready)) begin
				liteethmacpreamblechecker_next_state <= 1'd0;
			end
		end
		default: begin
			ethmac_preamble_checker_sink_ready <= 1'd1;
			if (((ethmac_preamble_checker_sink_valid & (~ethmac_preamble_checker_sink_last)) & (ethmac_preamble_checker_sink_payload_data == 8'd213))) begin
				liteethmacpreamblechecker_next_state <= 1'd1;
			end
			if ((ethmac_preamble_checker_sink_valid & ethmac_preamble_checker_sink_last)) begin
				ethmac_preamble_checker_error <= 1'd1;
			end
		end
	endcase
end
assign ethmac_crc32_inserter_cnt_done = (ethmac_crc32_inserter_cnt == 1'd0);
assign ethmac_crc32_inserter_data1 = ethmac_crc32_inserter_data0;
assign ethmac_crc32_inserter_last = ethmac_crc32_inserter_reg;
assign ethmac_crc32_inserter_value = (~{ethmac_crc32_inserter_reg[0], ethmac_crc32_inserter_reg[1], ethmac_crc32_inserter_reg[2], ethmac_crc32_inserter_reg[3], ethmac_crc32_inserter_reg[4], ethmac_crc32_inserter_reg[5], ethmac_crc32_inserter_reg[6], ethmac_crc32_inserter_reg[7], ethmac_crc32_inserter_reg[8], ethmac_crc32_inserter_reg[9], ethmac_crc32_inserter_reg[10], ethmac_crc32_inserter_reg[11], ethmac_crc32_inserter_reg[12], ethmac_crc32_inserter_reg[13], ethmac_crc32_inserter_reg[14], ethmac_crc32_inserter_reg[15], ethmac_crc32_inserter_reg[16], ethmac_crc32_inserter_reg[17], ethmac_crc32_inserter_reg[18], ethmac_crc32_inserter_reg[19], ethmac_crc32_inserter_reg[20], ethmac_crc32_inserter_reg[21], ethmac_crc32_inserter_reg[22], ethmac_crc32_inserter_reg[23], ethmac_crc32_inserter_reg[24], ethmac_crc32_inserter_reg[25], ethmac_crc32_inserter_reg[26], ethmac_crc32_inserter_reg[27], ethmac_crc32_inserter_reg[28], ethmac_crc32_inserter_reg[29], ethmac_crc32_inserter_reg[30], ethmac_crc32_inserter_reg[31]});
assign ethmac_crc32_inserter_error = (ethmac_crc32_inserter_next != 32'd3338984827);
always @(*) begin
	ethmac_crc32_inserter_next <= 32'd0;
	ethmac_crc32_inserter_next[0] <= (((ethmac_crc32_inserter_last[24] ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[1] <= (((((((ethmac_crc32_inserter_last[25] ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_data1[6]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[2] <= (((((((((ethmac_crc32_inserter_last[26] ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_data1[6]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[3] <= (((((((ethmac_crc32_inserter_last[27] ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_data1[6]);
	ethmac_crc32_inserter_next[4] <= (((((((((ethmac_crc32_inserter_last[28] ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[5] <= (((((((((((((ethmac_crc32_inserter_last[29] ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_data1[6]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[6] <= (((((((((((ethmac_crc32_inserter_last[30] ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_data1[6]);
	ethmac_crc32_inserter_next[7] <= (((((((((ethmac_crc32_inserter_last[31] ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[8] <= ((((((((ethmac_crc32_inserter_last[0] ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_data1[6]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[9] <= ((((((((ethmac_crc32_inserter_last[1] ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_data1[6]);
	ethmac_crc32_inserter_next[10] <= ((((((((ethmac_crc32_inserter_last[2] ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[11] <= ((((((((ethmac_crc32_inserter_last[3] ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_data1[6]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[12] <= ((((((((((((ethmac_crc32_inserter_last[4] ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_data1[6]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[13] <= ((((((((((((ethmac_crc32_inserter_last[5] ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_data1[6]);
	ethmac_crc32_inserter_next[14] <= ((((((((((ethmac_crc32_inserter_last[6] ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]);
	ethmac_crc32_inserter_next[15] <= ((((((((ethmac_crc32_inserter_last[7] ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]);
	ethmac_crc32_inserter_next[16] <= ((((((ethmac_crc32_inserter_last[8] ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[17] <= ((((((ethmac_crc32_inserter_last[9] ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_data1[6]);
	ethmac_crc32_inserter_next[18] <= ((((((ethmac_crc32_inserter_last[10] ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]);
	ethmac_crc32_inserter_next[19] <= ((((ethmac_crc32_inserter_last[11] ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]);
	ethmac_crc32_inserter_next[20] <= ((ethmac_crc32_inserter_last[12] ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]);
	ethmac_crc32_inserter_next[21] <= ((ethmac_crc32_inserter_last[13] ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]);
	ethmac_crc32_inserter_next[22] <= ((ethmac_crc32_inserter_last[14] ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[23] <= ((((((ethmac_crc32_inserter_last[15] ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_data1[6]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[24] <= ((((((ethmac_crc32_inserter_last[16] ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_data1[6]);
	ethmac_crc32_inserter_next[25] <= ((((ethmac_crc32_inserter_last[17] ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]);
	ethmac_crc32_inserter_next[26] <= ((((((((ethmac_crc32_inserter_last[18] ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[27] <= ((((((((ethmac_crc32_inserter_last[19] ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_data1[6]);
	ethmac_crc32_inserter_next[28] <= ((((((ethmac_crc32_inserter_last[20] ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]);
	ethmac_crc32_inserter_next[29] <= ((((((ethmac_crc32_inserter_last[21] ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]);
	ethmac_crc32_inserter_next[30] <= ((((ethmac_crc32_inserter_last[22] ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]);
	ethmac_crc32_inserter_next[31] <= ((ethmac_crc32_inserter_last[23] ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]);
end
always @(*) begin
	ethmac_crc32_inserter_sink_ready <= 1'd0;
	ethmac_crc32_inserter_ce <= 1'd0;
	ethmac_crc32_inserter_reset <= 1'd0;
	ethmac_crc32_inserter_source_valid <= 1'd0;
	ethmac_crc32_inserter_source_first <= 1'd0;
	ethmac_crc32_inserter_source_last <= 1'd0;
	ethmac_crc32_inserter_source_payload_data <= 8'd0;
	ethmac_crc32_inserter_source_payload_last_be <= 1'd0;
	ethmac_crc32_inserter_source_payload_error <= 1'd0;
	ethmac_crc32_inserter_data0 <= 8'd0;
	ethmac_crc32_inserter_is_ongoing0 <= 1'd0;
	ethmac_crc32_inserter_is_ongoing1 <= 1'd0;
	liteethmaccrc32inserter_next_state <= 2'd0;
	liteethmaccrc32inserter_next_state <= liteethmaccrc32inserter_state;
	case (liteethmaccrc32inserter_state)
		1'd1: begin
			ethmac_crc32_inserter_ce <= (ethmac_crc32_inserter_sink_valid & ethmac_crc32_inserter_source_ready);
			ethmac_crc32_inserter_data0 <= ethmac_crc32_inserter_sink_payload_data;
			ethmac_crc32_inserter_source_valid <= ethmac_crc32_inserter_sink_valid;
			ethmac_crc32_inserter_sink_ready <= ethmac_crc32_inserter_source_ready;
			ethmac_crc32_inserter_source_first <= ethmac_crc32_inserter_sink_first;
			ethmac_crc32_inserter_source_last <= ethmac_crc32_inserter_sink_last;
			ethmac_crc32_inserter_source_payload_data <= ethmac_crc32_inserter_sink_payload_data;
			ethmac_crc32_inserter_source_payload_last_be <= ethmac_crc32_inserter_sink_payload_last_be;
			ethmac_crc32_inserter_source_payload_error <= ethmac_crc32_inserter_sink_payload_error;
			ethmac_crc32_inserter_source_last <= 1'd0;
			if (((ethmac_crc32_inserter_sink_valid & ethmac_crc32_inserter_sink_last) & ethmac_crc32_inserter_source_ready)) begin
				liteethmaccrc32inserter_next_state <= 2'd2;
			end
		end
		2'd2: begin
			ethmac_crc32_inserter_source_valid <= 1'd1;
			case (ethmac_crc32_inserter_cnt)
				1'd0: begin
					ethmac_crc32_inserter_source_payload_data <= ethmac_crc32_inserter_value[31:24];
				end
				1'd1: begin
					ethmac_crc32_inserter_source_payload_data <= ethmac_crc32_inserter_value[23:16];
				end
				2'd2: begin
					ethmac_crc32_inserter_source_payload_data <= ethmac_crc32_inserter_value[15:8];
				end
				default: begin
					ethmac_crc32_inserter_source_payload_data <= ethmac_crc32_inserter_value[7:0];
				end
			endcase
			if (ethmac_crc32_inserter_cnt_done) begin
				ethmac_crc32_inserter_source_last <= 1'd1;
				if (ethmac_crc32_inserter_source_ready) begin
					liteethmaccrc32inserter_next_state <= 1'd0;
				end
			end
			ethmac_crc32_inserter_is_ongoing1 <= 1'd1;
		end
		default: begin
			ethmac_crc32_inserter_reset <= 1'd1;
			ethmac_crc32_inserter_sink_ready <= 1'd1;
			if (ethmac_crc32_inserter_sink_valid) begin
				ethmac_crc32_inserter_sink_ready <= 1'd0;
				liteethmaccrc32inserter_next_state <= 1'd1;
			end
			ethmac_crc32_inserter_is_ongoing0 <= 1'd1;
		end
	endcase
end
assign ethmac_crc32_checker_fifo_full = (ethmac_crc32_checker_syncfifo_level == 3'd4);
assign ethmac_crc32_checker_fifo_in = (ethmac_crc32_checker_sink_sink_valid & ((~ethmac_crc32_checker_fifo_full) | ethmac_crc32_checker_fifo_out));
assign ethmac_crc32_checker_fifo_out = (ethmac_crc32_checker_source_source_valid & ethmac_crc32_checker_source_source_ready);
assign ethmac_crc32_checker_syncfifo_sink_first = ethmac_crc32_checker_sink_sink_first;
assign ethmac_crc32_checker_syncfifo_sink_last = ethmac_crc32_checker_sink_sink_last;
assign ethmac_crc32_checker_syncfifo_sink_payload_data = ethmac_crc32_checker_sink_sink_payload_data;
assign ethmac_crc32_checker_syncfifo_sink_payload_last_be = ethmac_crc32_checker_sink_sink_payload_last_be;
assign ethmac_crc32_checker_syncfifo_sink_payload_error = ethmac_crc32_checker_sink_sink_payload_error;
always @(*) begin
	ethmac_crc32_checker_syncfifo_sink_valid <= 1'd0;
	ethmac_crc32_checker_syncfifo_sink_valid <= ethmac_crc32_checker_sink_sink_valid;
	ethmac_crc32_checker_syncfifo_sink_valid <= ethmac_crc32_checker_fifo_in;
end
always @(*) begin
	ethmac_crc32_checker_sink_sink_ready <= 1'd0;
	ethmac_crc32_checker_sink_sink_ready <= ethmac_crc32_checker_syncfifo_sink_ready;
	ethmac_crc32_checker_sink_sink_ready <= ethmac_crc32_checker_fifo_in;
end
assign ethmac_crc32_checker_source_source_valid = (ethmac_crc32_checker_sink_sink_valid & ethmac_crc32_checker_fifo_full);
assign ethmac_crc32_checker_source_source_last = ethmac_crc32_checker_sink_sink_last;
assign ethmac_crc32_checker_syncfifo_source_ready = ethmac_crc32_checker_fifo_out;
assign ethmac_crc32_checker_source_source_payload_data = ethmac_crc32_checker_syncfifo_source_payload_data;
assign ethmac_crc32_checker_source_source_payload_last_be = ethmac_crc32_checker_syncfifo_source_payload_last_be;
always @(*) begin
	ethmac_crc32_checker_source_source_payload_error <= 1'd0;
	ethmac_crc32_checker_source_source_payload_error <= ethmac_crc32_checker_syncfifo_source_payload_error;
	ethmac_crc32_checker_source_source_payload_error <= (ethmac_crc32_checker_sink_sink_payload_error | ethmac_crc32_checker_crc_error);
end
assign ethmac_crc32_checker_error = ((ethmac_crc32_checker_source_source_valid & ethmac_crc32_checker_source_source_last) & ethmac_crc32_checker_crc_error);
assign ethmac_crc32_checker_crc_data0 = ethmac_crc32_checker_sink_sink_payload_data;
assign ethmac_crc32_checker_crc_data1 = ethmac_crc32_checker_crc_data0;
assign ethmac_crc32_checker_crc_last = ethmac_crc32_checker_crc_reg;
assign ethmac_crc32_checker_crc_value = (~{ethmac_crc32_checker_crc_reg[0], ethmac_crc32_checker_crc_reg[1], ethmac_crc32_checker_crc_reg[2], ethmac_crc32_checker_crc_reg[3], ethmac_crc32_checker_crc_reg[4], ethmac_crc32_checker_crc_reg[5], ethmac_crc32_checker_crc_reg[6], ethmac_crc32_checker_crc_reg[7], ethmac_crc32_checker_crc_reg[8], ethmac_crc32_checker_crc_reg[9], ethmac_crc32_checker_crc_reg[10], ethmac_crc32_checker_crc_reg[11], ethmac_crc32_checker_crc_reg[12], ethmac_crc32_checker_crc_reg[13], ethmac_crc32_checker_crc_reg[14], ethmac_crc32_checker_crc_reg[15], ethmac_crc32_checker_crc_reg[16], ethmac_crc32_checker_crc_reg[17], ethmac_crc32_checker_crc_reg[18], ethmac_crc32_checker_crc_reg[19], ethmac_crc32_checker_crc_reg[20], ethmac_crc32_checker_crc_reg[21], ethmac_crc32_checker_crc_reg[22], ethmac_crc32_checker_crc_reg[23], ethmac_crc32_checker_crc_reg[24], ethmac_crc32_checker_crc_reg[25], ethmac_crc32_checker_crc_reg[26], ethmac_crc32_checker_crc_reg[27], ethmac_crc32_checker_crc_reg[28], ethmac_crc32_checker_crc_reg[29], ethmac_crc32_checker_crc_reg[30], ethmac_crc32_checker_crc_reg[31]});
assign ethmac_crc32_checker_crc_error = (ethmac_crc32_checker_crc_next != 32'd3338984827);
always @(*) begin
	ethmac_crc32_checker_crc_next <= 32'd0;
	ethmac_crc32_checker_crc_next[0] <= (((ethmac_crc32_checker_crc_last[24] ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[1] <= (((((((ethmac_crc32_checker_crc_last[25] ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_data1[6]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[2] <= (((((((((ethmac_crc32_checker_crc_last[26] ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_data1[6]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[3] <= (((((((ethmac_crc32_checker_crc_last[27] ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_data1[6]);
	ethmac_crc32_checker_crc_next[4] <= (((((((((ethmac_crc32_checker_crc_last[28] ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[5] <= (((((((((((((ethmac_crc32_checker_crc_last[29] ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_data1[6]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[6] <= (((((((((((ethmac_crc32_checker_crc_last[30] ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_data1[6]);
	ethmac_crc32_checker_crc_next[7] <= (((((((((ethmac_crc32_checker_crc_last[31] ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[8] <= ((((((((ethmac_crc32_checker_crc_last[0] ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_data1[6]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[9] <= ((((((((ethmac_crc32_checker_crc_last[1] ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_data1[6]);
	ethmac_crc32_checker_crc_next[10] <= ((((((((ethmac_crc32_checker_crc_last[2] ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[11] <= ((((((((ethmac_crc32_checker_crc_last[3] ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_data1[6]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[12] <= ((((((((((((ethmac_crc32_checker_crc_last[4] ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_data1[6]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[13] <= ((((((((((((ethmac_crc32_checker_crc_last[5] ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_data1[6]);
	ethmac_crc32_checker_crc_next[14] <= ((((((((((ethmac_crc32_checker_crc_last[6] ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]);
	ethmac_crc32_checker_crc_next[15] <= ((((((((ethmac_crc32_checker_crc_last[7] ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]);
	ethmac_crc32_checker_crc_next[16] <= ((((((ethmac_crc32_checker_crc_last[8] ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[17] <= ((((((ethmac_crc32_checker_crc_last[9] ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_data1[6]);
	ethmac_crc32_checker_crc_next[18] <= ((((((ethmac_crc32_checker_crc_last[10] ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]);
	ethmac_crc32_checker_crc_next[19] <= ((((ethmac_crc32_checker_crc_last[11] ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]);
	ethmac_crc32_checker_crc_next[20] <= ((ethmac_crc32_checker_crc_last[12] ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]);
	ethmac_crc32_checker_crc_next[21] <= ((ethmac_crc32_checker_crc_last[13] ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]);
	ethmac_crc32_checker_crc_next[22] <= ((ethmac_crc32_checker_crc_last[14] ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[23] <= ((((((ethmac_crc32_checker_crc_last[15] ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_data1[6]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[24] <= ((((((ethmac_crc32_checker_crc_last[16] ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_data1[6]);
	ethmac_crc32_checker_crc_next[25] <= ((((ethmac_crc32_checker_crc_last[17] ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]);
	ethmac_crc32_checker_crc_next[26] <= ((((((((ethmac_crc32_checker_crc_last[18] ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[27] <= ((((((((ethmac_crc32_checker_crc_last[19] ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_data1[6]);
	ethmac_crc32_checker_crc_next[28] <= ((((((ethmac_crc32_checker_crc_last[20] ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]);
	ethmac_crc32_checker_crc_next[29] <= ((((((ethmac_crc32_checker_crc_last[21] ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]);
	ethmac_crc32_checker_crc_next[30] <= ((((ethmac_crc32_checker_crc_last[22] ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]);
	ethmac_crc32_checker_crc_next[31] <= ((ethmac_crc32_checker_crc_last[23] ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]);
end
assign ethmac_crc32_checker_syncfifo_syncfifo_din = {ethmac_crc32_checker_syncfifo_fifo_in_last, ethmac_crc32_checker_syncfifo_fifo_in_first, ethmac_crc32_checker_syncfifo_fifo_in_payload_error, ethmac_crc32_checker_syncfifo_fifo_in_payload_last_be, ethmac_crc32_checker_syncfifo_fifo_in_payload_data};
assign {ethmac_crc32_checker_syncfifo_fifo_out_last, ethmac_crc32_checker_syncfifo_fifo_out_first, ethmac_crc32_checker_syncfifo_fifo_out_payload_error, ethmac_crc32_checker_syncfifo_fifo_out_payload_last_be, ethmac_crc32_checker_syncfifo_fifo_out_payload_data} = ethmac_crc32_checker_syncfifo_syncfifo_dout;
assign ethmac_crc32_checker_syncfifo_sink_ready = ethmac_crc32_checker_syncfifo_syncfifo_writable;
assign ethmac_crc32_checker_syncfifo_syncfifo_we = ethmac_crc32_checker_syncfifo_sink_valid;
assign ethmac_crc32_checker_syncfifo_fifo_in_first = ethmac_crc32_checker_syncfifo_sink_first;
assign ethmac_crc32_checker_syncfifo_fifo_in_last = ethmac_crc32_checker_syncfifo_sink_last;
assign ethmac_crc32_checker_syncfifo_fifo_in_payload_data = ethmac_crc32_checker_syncfifo_sink_payload_data;
assign ethmac_crc32_checker_syncfifo_fifo_in_payload_last_be = ethmac_crc32_checker_syncfifo_sink_payload_last_be;
assign ethmac_crc32_checker_syncfifo_fifo_in_payload_error = ethmac_crc32_checker_syncfifo_sink_payload_error;
assign ethmac_crc32_checker_syncfifo_source_valid = ethmac_crc32_checker_syncfifo_syncfifo_readable;
assign ethmac_crc32_checker_syncfifo_source_first = ethmac_crc32_checker_syncfifo_fifo_out_first;
assign ethmac_crc32_checker_syncfifo_source_last = ethmac_crc32_checker_syncfifo_fifo_out_last;
assign ethmac_crc32_checker_syncfifo_source_payload_data = ethmac_crc32_checker_syncfifo_fifo_out_payload_data;
assign ethmac_crc32_checker_syncfifo_source_payload_last_be = ethmac_crc32_checker_syncfifo_fifo_out_payload_last_be;
assign ethmac_crc32_checker_syncfifo_source_payload_error = ethmac_crc32_checker_syncfifo_fifo_out_payload_error;
assign ethmac_crc32_checker_syncfifo_syncfifo_re = ethmac_crc32_checker_syncfifo_source_ready;
always @(*) begin
	ethmac_crc32_checker_syncfifo_wrport_adr <= 3'd0;
	if (ethmac_crc32_checker_syncfifo_replace) begin
		ethmac_crc32_checker_syncfifo_wrport_adr <= (ethmac_crc32_checker_syncfifo_produce - 1'd1);
	end else begin
		ethmac_crc32_checker_syncfifo_wrport_adr <= ethmac_crc32_checker_syncfifo_produce;
	end
end
assign ethmac_crc32_checker_syncfifo_wrport_dat_w = ethmac_crc32_checker_syncfifo_syncfifo_din;
assign ethmac_crc32_checker_syncfifo_wrport_we = (ethmac_crc32_checker_syncfifo_syncfifo_we & (ethmac_crc32_checker_syncfifo_syncfifo_writable | ethmac_crc32_checker_syncfifo_replace));
assign ethmac_crc32_checker_syncfifo_do_read = (ethmac_crc32_checker_syncfifo_syncfifo_readable & ethmac_crc32_checker_syncfifo_syncfifo_re);
assign ethmac_crc32_checker_syncfifo_rdport_adr = ethmac_crc32_checker_syncfifo_consume;
assign ethmac_crc32_checker_syncfifo_syncfifo_dout = ethmac_crc32_checker_syncfifo_rdport_dat_r;
assign ethmac_crc32_checker_syncfifo_syncfifo_writable = (ethmac_crc32_checker_syncfifo_level != 3'd5);
assign ethmac_crc32_checker_syncfifo_syncfifo_readable = (ethmac_crc32_checker_syncfifo_level != 1'd0);
always @(*) begin
	ethmac_crc32_checker_crc_ce <= 1'd0;
	ethmac_crc32_checker_crc_reset <= 1'd0;
	liteethmaccrc32checker_next_state <= 2'd0;
	ethmac_crc32_checker_fifo_reset <= 1'd0;
	liteethmaccrc32checker_next_state <= liteethmaccrc32checker_state;
	case (liteethmaccrc32checker_state)
		1'd1: begin
			if ((ethmac_crc32_checker_sink_sink_valid & ethmac_crc32_checker_sink_sink_ready)) begin
				ethmac_crc32_checker_crc_ce <= 1'd1;
				liteethmaccrc32checker_next_state <= 2'd2;
			end
		end
		2'd2: begin
			if ((ethmac_crc32_checker_sink_sink_valid & ethmac_crc32_checker_sink_sink_ready)) begin
				ethmac_crc32_checker_crc_ce <= 1'd1;
				if (ethmac_crc32_checker_sink_sink_last) begin
					liteethmaccrc32checker_next_state <= 1'd0;
				end
			end
		end
		default: begin
			ethmac_crc32_checker_crc_reset <= 1'd1;
			ethmac_crc32_checker_fifo_reset <= 1'd1;
			liteethmaccrc32checker_next_state <= 1'd1;
		end
	endcase
end
assign ethmac_ps_preamble_error_o = (ethmac_ps_preamble_error_toggle_o ^ ethmac_ps_preamble_error_toggle_o_r);
assign ethmac_ps_crc_error_o = (ethmac_ps_crc_error_toggle_o ^ ethmac_ps_crc_error_toggle_o_r);
assign ethmac_padding_inserter_counter_done = (ethmac_padding_inserter_counter >= 6'd59);
always @(*) begin
	ethmac_padding_inserter_source_valid <= 1'd0;
	ethmac_padding_inserter_source_first <= 1'd0;
	ethmac_padding_inserter_source_last <= 1'd0;
	ethmac_padding_inserter_source_payload_data <= 8'd0;
	ethmac_padding_inserter_source_payload_last_be <= 1'd0;
	ethmac_padding_inserter_source_payload_error <= 1'd0;
	ethmac_padding_inserter_counter_reset <= 1'd0;
	ethmac_padding_inserter_counter_ce <= 1'd0;
	liteethmacpaddinginserter_next_state <= 1'd0;
	ethmac_padding_inserter_sink_ready <= 1'd0;
	liteethmacpaddinginserter_next_state <= liteethmacpaddinginserter_state;
	case (liteethmacpaddinginserter_state)
		1'd1: begin
			ethmac_padding_inserter_source_valid <= 1'd1;
			ethmac_padding_inserter_source_last <= ethmac_padding_inserter_counter_done;
			ethmac_padding_inserter_source_payload_data <= 1'd0;
			if ((ethmac_padding_inserter_source_valid & ethmac_padding_inserter_source_ready)) begin
				ethmac_padding_inserter_counter_ce <= 1'd1;
				if (ethmac_padding_inserter_counter_done) begin
					ethmac_padding_inserter_counter_reset <= 1'd1;
					liteethmacpaddinginserter_next_state <= 1'd0;
				end
			end
		end
		default: begin
			ethmac_padding_inserter_source_valid <= ethmac_padding_inserter_sink_valid;
			ethmac_padding_inserter_sink_ready <= ethmac_padding_inserter_source_ready;
			ethmac_padding_inserter_source_first <= ethmac_padding_inserter_sink_first;
			ethmac_padding_inserter_source_last <= ethmac_padding_inserter_sink_last;
			ethmac_padding_inserter_source_payload_data <= ethmac_padding_inserter_sink_payload_data;
			ethmac_padding_inserter_source_payload_last_be <= ethmac_padding_inserter_sink_payload_last_be;
			ethmac_padding_inserter_source_payload_error <= ethmac_padding_inserter_sink_payload_error;
			if ((ethmac_padding_inserter_source_valid & ethmac_padding_inserter_source_ready)) begin
				ethmac_padding_inserter_counter_ce <= 1'd1;
				if (ethmac_padding_inserter_sink_last) begin
					if ((~ethmac_padding_inserter_counter_done)) begin
						ethmac_padding_inserter_source_last <= 1'd0;
						liteethmacpaddinginserter_next_state <= 1'd1;
					end else begin
						ethmac_padding_inserter_counter_reset <= 1'd1;
					end
				end
			end
		end
	endcase
end
assign ethmac_padding_checker_source_valid = ethmac_padding_checker_sink_valid;
assign ethmac_padding_checker_sink_ready = ethmac_padding_checker_source_ready;
assign ethmac_padding_checker_source_first = ethmac_padding_checker_sink_first;
assign ethmac_padding_checker_source_last = ethmac_padding_checker_sink_last;
assign ethmac_padding_checker_source_payload_data = ethmac_padding_checker_sink_payload_data;
assign ethmac_padding_checker_source_payload_last_be = ethmac_padding_checker_sink_payload_last_be;
assign ethmac_padding_checker_source_payload_error = ethmac_padding_checker_sink_payload_error;
assign ethmac_tx_last_be_source_valid = (ethmac_tx_last_be_sink_valid & ethmac_tx_last_be_ongoing);
assign ethmac_tx_last_be_source_last = ethmac_tx_last_be_sink_payload_last_be;
assign ethmac_tx_last_be_source_payload_data = ethmac_tx_last_be_sink_payload_data;
assign ethmac_tx_last_be_sink_ready = ethmac_tx_last_be_source_ready;
assign ethmac_rx_last_be_source_valid = ethmac_rx_last_be_sink_valid;
assign ethmac_rx_last_be_sink_ready = ethmac_rx_last_be_source_ready;
assign ethmac_rx_last_be_source_first = ethmac_rx_last_be_sink_first;
assign ethmac_rx_last_be_source_last = ethmac_rx_last_be_sink_last;
assign ethmac_rx_last_be_source_payload_data = ethmac_rx_last_be_sink_payload_data;
assign ethmac_rx_last_be_source_payload_error = ethmac_rx_last_be_sink_payload_error;
always @(*) begin
	ethmac_rx_last_be_source_payload_last_be <= 1'd0;
	ethmac_rx_last_be_source_payload_last_be <= ethmac_rx_last_be_sink_payload_last_be;
	ethmac_rx_last_be_source_payload_last_be <= ethmac_rx_last_be_sink_last;
end
assign ethmac_tx_converter_converter_sink_valid = ethmac_tx_converter_sink_valid;
assign ethmac_tx_converter_converter_sink_first = ethmac_tx_converter_sink_first;
assign ethmac_tx_converter_converter_sink_last = ethmac_tx_converter_sink_last;
assign ethmac_tx_converter_sink_ready = ethmac_tx_converter_converter_sink_ready;
always @(*) begin
	ethmac_tx_converter_converter_sink_payload_data <= 40'd0;
	ethmac_tx_converter_converter_sink_payload_data[7:0] <= ethmac_tx_converter_sink_payload_data[7:0];
	ethmac_tx_converter_converter_sink_payload_data[8] <= ethmac_tx_converter_sink_payload_last_be[0];
	ethmac_tx_converter_converter_sink_payload_data[9] <= ethmac_tx_converter_sink_payload_error[0];
	ethmac_tx_converter_converter_sink_payload_data[17:10] <= ethmac_tx_converter_sink_payload_data[15:8];
	ethmac_tx_converter_converter_sink_payload_data[18] <= ethmac_tx_converter_sink_payload_last_be[1];
	ethmac_tx_converter_converter_sink_payload_data[19] <= ethmac_tx_converter_sink_payload_error[1];
	ethmac_tx_converter_converter_sink_payload_data[27:20] <= ethmac_tx_converter_sink_payload_data[23:16];
	ethmac_tx_converter_converter_sink_payload_data[28] <= ethmac_tx_converter_sink_payload_last_be[2];
	ethmac_tx_converter_converter_sink_payload_data[29] <= ethmac_tx_converter_sink_payload_error[2];
	ethmac_tx_converter_converter_sink_payload_data[37:30] <= ethmac_tx_converter_sink_payload_data[31:24];
	ethmac_tx_converter_converter_sink_payload_data[38] <= ethmac_tx_converter_sink_payload_last_be[3];
	ethmac_tx_converter_converter_sink_payload_data[39] <= ethmac_tx_converter_sink_payload_error[3];
end
assign ethmac_tx_converter_source_valid = ethmac_tx_converter_source_source_valid;
assign ethmac_tx_converter_source_first = ethmac_tx_converter_source_source_first;
assign ethmac_tx_converter_source_last = ethmac_tx_converter_source_source_last;
assign ethmac_tx_converter_source_source_ready = ethmac_tx_converter_source_ready;
assign {ethmac_tx_converter_source_payload_error, ethmac_tx_converter_source_payload_last_be, ethmac_tx_converter_source_payload_data} = ethmac_tx_converter_source_source_payload_data;
assign ethmac_tx_converter_source_source_valid = ethmac_tx_converter_converter_source_valid;
assign ethmac_tx_converter_converter_source_ready = ethmac_tx_converter_source_source_ready;
assign ethmac_tx_converter_source_source_first = ethmac_tx_converter_converter_source_first;
assign ethmac_tx_converter_source_source_last = ethmac_tx_converter_converter_source_last;
assign ethmac_tx_converter_source_source_payload_data = ethmac_tx_converter_converter_source_payload_data;
assign ethmac_tx_converter_converter_first = (ethmac_tx_converter_converter_mux == 1'd0);
assign ethmac_tx_converter_converter_last = (ethmac_tx_converter_converter_mux == 2'd3);
assign ethmac_tx_converter_converter_source_valid = ethmac_tx_converter_converter_sink_valid;
assign ethmac_tx_converter_converter_source_first = (ethmac_tx_converter_converter_sink_first & ethmac_tx_converter_converter_first);
assign ethmac_tx_converter_converter_source_last = (ethmac_tx_converter_converter_sink_last & ethmac_tx_converter_converter_last);
assign ethmac_tx_converter_converter_sink_ready = (ethmac_tx_converter_converter_last & ethmac_tx_converter_converter_source_ready);
always @(*) begin
	ethmac_tx_converter_converter_source_payload_data <= 10'd0;
	case (ethmac_tx_converter_converter_mux)
		1'd0: begin
			ethmac_tx_converter_converter_source_payload_data <= ethmac_tx_converter_converter_sink_payload_data[39:30];
		end
		1'd1: begin
			ethmac_tx_converter_converter_source_payload_data <= ethmac_tx_converter_converter_sink_payload_data[29:20];
		end
		2'd2: begin
			ethmac_tx_converter_converter_source_payload_data <= ethmac_tx_converter_converter_sink_payload_data[19:10];
		end
		default: begin
			ethmac_tx_converter_converter_source_payload_data <= ethmac_tx_converter_converter_sink_payload_data[9:0];
		end
	endcase
end
assign ethmac_tx_converter_converter_source_payload_valid_token_count = ethmac_tx_converter_converter_last;
assign ethmac_rx_converter_converter_sink_valid = ethmac_rx_converter_sink_valid;
assign ethmac_rx_converter_converter_sink_first = ethmac_rx_converter_sink_first;
assign ethmac_rx_converter_converter_sink_last = ethmac_rx_converter_sink_last;
assign ethmac_rx_converter_sink_ready = ethmac_rx_converter_converter_sink_ready;
assign ethmac_rx_converter_converter_sink_payload_data = {ethmac_rx_converter_sink_payload_error, ethmac_rx_converter_sink_payload_last_be, ethmac_rx_converter_sink_payload_data};
assign ethmac_rx_converter_source_valid = ethmac_rx_converter_source_source_valid;
assign ethmac_rx_converter_source_first = ethmac_rx_converter_source_source_first;
assign ethmac_rx_converter_source_last = ethmac_rx_converter_source_source_last;
assign ethmac_rx_converter_source_source_ready = ethmac_rx_converter_source_ready;
always @(*) begin
	ethmac_rx_converter_source_payload_data <= 32'd0;
	ethmac_rx_converter_source_payload_data[7:0] <= ethmac_rx_converter_source_source_payload_data[7:0];
	ethmac_rx_converter_source_payload_data[15:8] <= ethmac_rx_converter_source_source_payload_data[17:10];
	ethmac_rx_converter_source_payload_data[23:16] <= ethmac_rx_converter_source_source_payload_data[27:20];
	ethmac_rx_converter_source_payload_data[31:24] <= ethmac_rx_converter_source_source_payload_data[37:30];
end
always @(*) begin
	ethmac_rx_converter_source_payload_last_be <= 4'd0;
	ethmac_rx_converter_source_payload_last_be[0] <= ethmac_rx_converter_source_source_payload_data[8];
	ethmac_rx_converter_source_payload_last_be[1] <= ethmac_rx_converter_source_source_payload_data[18];
	ethmac_rx_converter_source_payload_last_be[2] <= ethmac_rx_converter_source_source_payload_data[28];
	ethmac_rx_converter_source_payload_last_be[3] <= ethmac_rx_converter_source_source_payload_data[38];
end
always @(*) begin
	ethmac_rx_converter_source_payload_error <= 4'd0;
	ethmac_rx_converter_source_payload_error[0] <= ethmac_rx_converter_source_source_payload_data[9];
	ethmac_rx_converter_source_payload_error[1] <= ethmac_rx_converter_source_source_payload_data[19];
	ethmac_rx_converter_source_payload_error[2] <= ethmac_rx_converter_source_source_payload_data[29];
	ethmac_rx_converter_source_payload_error[3] <= ethmac_rx_converter_source_source_payload_data[39];
end
assign ethmac_rx_converter_source_source_valid = ethmac_rx_converter_converter_source_valid;
assign ethmac_rx_converter_converter_source_ready = ethmac_rx_converter_source_source_ready;
assign ethmac_rx_converter_source_source_first = ethmac_rx_converter_converter_source_first;
assign ethmac_rx_converter_source_source_last = ethmac_rx_converter_converter_source_last;
assign ethmac_rx_converter_source_source_payload_data = ethmac_rx_converter_converter_source_payload_data;
assign ethmac_rx_converter_converter_sink_ready = ((~ethmac_rx_converter_converter_strobe_all) | ethmac_rx_converter_converter_source_ready);
assign ethmac_rx_converter_converter_source_valid = ethmac_rx_converter_converter_strobe_all;
assign ethmac_rx_converter_converter_load_part = (ethmac_rx_converter_converter_sink_valid & ethmac_rx_converter_converter_sink_ready);
assign ethmac_tx_cdc_asyncfifo_din = {ethmac_tx_cdc_fifo_in_last, ethmac_tx_cdc_fifo_in_first, ethmac_tx_cdc_fifo_in_payload_error, ethmac_tx_cdc_fifo_in_payload_last_be, ethmac_tx_cdc_fifo_in_payload_data};
assign {ethmac_tx_cdc_fifo_out_last, ethmac_tx_cdc_fifo_out_first, ethmac_tx_cdc_fifo_out_payload_error, ethmac_tx_cdc_fifo_out_payload_last_be, ethmac_tx_cdc_fifo_out_payload_data} = ethmac_tx_cdc_asyncfifo_dout;
assign ethmac_tx_cdc_sink_ready = ethmac_tx_cdc_asyncfifo_writable;
assign ethmac_tx_cdc_asyncfifo_we = ethmac_tx_cdc_sink_valid;
assign ethmac_tx_cdc_fifo_in_first = ethmac_tx_cdc_sink_first;
assign ethmac_tx_cdc_fifo_in_last = ethmac_tx_cdc_sink_last;
assign ethmac_tx_cdc_fifo_in_payload_data = ethmac_tx_cdc_sink_payload_data;
assign ethmac_tx_cdc_fifo_in_payload_last_be = ethmac_tx_cdc_sink_payload_last_be;
assign ethmac_tx_cdc_fifo_in_payload_error = ethmac_tx_cdc_sink_payload_error;
assign ethmac_tx_cdc_source_valid = ethmac_tx_cdc_asyncfifo_readable;
assign ethmac_tx_cdc_source_first = ethmac_tx_cdc_fifo_out_first;
assign ethmac_tx_cdc_source_last = ethmac_tx_cdc_fifo_out_last;
assign ethmac_tx_cdc_source_payload_data = ethmac_tx_cdc_fifo_out_payload_data;
assign ethmac_tx_cdc_source_payload_last_be = ethmac_tx_cdc_fifo_out_payload_last_be;
assign ethmac_tx_cdc_source_payload_error = ethmac_tx_cdc_fifo_out_payload_error;
assign ethmac_tx_cdc_asyncfifo_re = ethmac_tx_cdc_source_ready;
assign ethmac_tx_cdc_graycounter0_ce = (ethmac_tx_cdc_asyncfifo_writable & ethmac_tx_cdc_asyncfifo_we);
assign ethmac_tx_cdc_graycounter1_ce = (ethmac_tx_cdc_asyncfifo_readable & ethmac_tx_cdc_asyncfifo_re);
assign ethmac_tx_cdc_asyncfifo_writable = (((ethmac_tx_cdc_graycounter0_q[6] == ethmac_tx_cdc_consume_wdomain[6]) | (ethmac_tx_cdc_graycounter0_q[5] == ethmac_tx_cdc_consume_wdomain[5])) | (ethmac_tx_cdc_graycounter0_q[4:0] != ethmac_tx_cdc_consume_wdomain[4:0]));
assign ethmac_tx_cdc_asyncfifo_readable = (ethmac_tx_cdc_graycounter1_q != ethmac_tx_cdc_produce_rdomain);
assign ethmac_tx_cdc_wrport_adr = ethmac_tx_cdc_graycounter0_q_binary[5:0];
assign ethmac_tx_cdc_wrport_dat_w = ethmac_tx_cdc_asyncfifo_din;
assign ethmac_tx_cdc_wrport_we = ethmac_tx_cdc_graycounter0_ce;
assign ethmac_tx_cdc_rdport_adr = ethmac_tx_cdc_graycounter1_q_next_binary[5:0];
assign ethmac_tx_cdc_asyncfifo_dout = ethmac_tx_cdc_rdport_dat_r;
always @(*) begin
	ethmac_tx_cdc_graycounter0_q_next_binary <= 7'd0;
	if (ethmac_tx_cdc_graycounter0_ce) begin
		ethmac_tx_cdc_graycounter0_q_next_binary <= (ethmac_tx_cdc_graycounter0_q_binary + 1'd1);
	end else begin
		ethmac_tx_cdc_graycounter0_q_next_binary <= ethmac_tx_cdc_graycounter0_q_binary;
	end
end
assign ethmac_tx_cdc_graycounter0_q_next = (ethmac_tx_cdc_graycounter0_q_next_binary ^ ethmac_tx_cdc_graycounter0_q_next_binary[6:1]);
always @(*) begin
	ethmac_tx_cdc_graycounter1_q_next_binary <= 7'd0;
	if (ethmac_tx_cdc_graycounter1_ce) begin
		ethmac_tx_cdc_graycounter1_q_next_binary <= (ethmac_tx_cdc_graycounter1_q_binary + 1'd1);
	end else begin
		ethmac_tx_cdc_graycounter1_q_next_binary <= ethmac_tx_cdc_graycounter1_q_binary;
	end
end
assign ethmac_tx_cdc_graycounter1_q_next = (ethmac_tx_cdc_graycounter1_q_next_binary ^ ethmac_tx_cdc_graycounter1_q_next_binary[6:1]);
assign ethmac_rx_cdc_asyncfifo_din = {ethmac_rx_cdc_fifo_in_last, ethmac_rx_cdc_fifo_in_first, ethmac_rx_cdc_fifo_in_payload_error, ethmac_rx_cdc_fifo_in_payload_last_be, ethmac_rx_cdc_fifo_in_payload_data};
assign {ethmac_rx_cdc_fifo_out_last, ethmac_rx_cdc_fifo_out_first, ethmac_rx_cdc_fifo_out_payload_error, ethmac_rx_cdc_fifo_out_payload_last_be, ethmac_rx_cdc_fifo_out_payload_data} = ethmac_rx_cdc_asyncfifo_dout;
assign ethmac_rx_cdc_sink_ready = ethmac_rx_cdc_asyncfifo_writable;
assign ethmac_rx_cdc_asyncfifo_we = ethmac_rx_cdc_sink_valid;
assign ethmac_rx_cdc_fifo_in_first = ethmac_rx_cdc_sink_first;
assign ethmac_rx_cdc_fifo_in_last = ethmac_rx_cdc_sink_last;
assign ethmac_rx_cdc_fifo_in_payload_data = ethmac_rx_cdc_sink_payload_data;
assign ethmac_rx_cdc_fifo_in_payload_last_be = ethmac_rx_cdc_sink_payload_last_be;
assign ethmac_rx_cdc_fifo_in_payload_error = ethmac_rx_cdc_sink_payload_error;
assign ethmac_rx_cdc_source_valid = ethmac_rx_cdc_asyncfifo_readable;
assign ethmac_rx_cdc_source_first = ethmac_rx_cdc_fifo_out_first;
assign ethmac_rx_cdc_source_last = ethmac_rx_cdc_fifo_out_last;
assign ethmac_rx_cdc_source_payload_data = ethmac_rx_cdc_fifo_out_payload_data;
assign ethmac_rx_cdc_source_payload_last_be = ethmac_rx_cdc_fifo_out_payload_last_be;
assign ethmac_rx_cdc_source_payload_error = ethmac_rx_cdc_fifo_out_payload_error;
assign ethmac_rx_cdc_asyncfifo_re = ethmac_rx_cdc_source_ready;
assign ethmac_rx_cdc_graycounter0_ce = (ethmac_rx_cdc_asyncfifo_writable & ethmac_rx_cdc_asyncfifo_we);
assign ethmac_rx_cdc_graycounter1_ce = (ethmac_rx_cdc_asyncfifo_readable & ethmac_rx_cdc_asyncfifo_re);
assign ethmac_rx_cdc_asyncfifo_writable = (((ethmac_rx_cdc_graycounter0_q[6] == ethmac_rx_cdc_consume_wdomain[6]) | (ethmac_rx_cdc_graycounter0_q[5] == ethmac_rx_cdc_consume_wdomain[5])) | (ethmac_rx_cdc_graycounter0_q[4:0] != ethmac_rx_cdc_consume_wdomain[4:0]));
assign ethmac_rx_cdc_asyncfifo_readable = (ethmac_rx_cdc_graycounter1_q != ethmac_rx_cdc_produce_rdomain);
assign ethmac_rx_cdc_wrport_adr = ethmac_rx_cdc_graycounter0_q_binary[5:0];
assign ethmac_rx_cdc_wrport_dat_w = ethmac_rx_cdc_asyncfifo_din;
assign ethmac_rx_cdc_wrport_we = ethmac_rx_cdc_graycounter0_ce;
assign ethmac_rx_cdc_rdport_adr = ethmac_rx_cdc_graycounter1_q_next_binary[5:0];
assign ethmac_rx_cdc_asyncfifo_dout = ethmac_rx_cdc_rdport_dat_r;
always @(*) begin
	ethmac_rx_cdc_graycounter0_q_next_binary <= 7'd0;
	if (ethmac_rx_cdc_graycounter0_ce) begin
		ethmac_rx_cdc_graycounter0_q_next_binary <= (ethmac_rx_cdc_graycounter0_q_binary + 1'd1);
	end else begin
		ethmac_rx_cdc_graycounter0_q_next_binary <= ethmac_rx_cdc_graycounter0_q_binary;
	end
end
assign ethmac_rx_cdc_graycounter0_q_next = (ethmac_rx_cdc_graycounter0_q_next_binary ^ ethmac_rx_cdc_graycounter0_q_next_binary[6:1]);
always @(*) begin
	ethmac_rx_cdc_graycounter1_q_next_binary <= 7'd0;
	if (ethmac_rx_cdc_graycounter1_ce) begin
		ethmac_rx_cdc_graycounter1_q_next_binary <= (ethmac_rx_cdc_graycounter1_q_binary + 1'd1);
	end else begin
		ethmac_rx_cdc_graycounter1_q_next_binary <= ethmac_rx_cdc_graycounter1_q_binary;
	end
end
assign ethmac_rx_cdc_graycounter1_q_next = (ethmac_rx_cdc_graycounter1_q_next_binary ^ ethmac_rx_cdc_graycounter1_q_next_binary[6:1]);
assign ethmac_tx_converter_sink_valid = ethmac_tx_cdc_source_valid;
assign ethmac_tx_cdc_source_ready = ethmac_tx_converter_sink_ready;
assign ethmac_tx_converter_sink_first = ethmac_tx_cdc_source_first;
assign ethmac_tx_converter_sink_last = ethmac_tx_cdc_source_last;
assign ethmac_tx_converter_sink_payload_data = ethmac_tx_cdc_source_payload_data;
assign ethmac_tx_converter_sink_payload_last_be = ethmac_tx_cdc_source_payload_last_be;
assign ethmac_tx_converter_sink_payload_error = ethmac_tx_cdc_source_payload_error;
assign ethmac_tx_last_be_sink_valid = ethmac_tx_converter_source_valid;
assign ethmac_tx_converter_source_ready = ethmac_tx_last_be_sink_ready;
assign ethmac_tx_last_be_sink_first = ethmac_tx_converter_source_first;
assign ethmac_tx_last_be_sink_last = ethmac_tx_converter_source_last;
assign ethmac_tx_last_be_sink_payload_data = ethmac_tx_converter_source_payload_data;
assign ethmac_tx_last_be_sink_payload_last_be = ethmac_tx_converter_source_payload_last_be;
assign ethmac_tx_last_be_sink_payload_error = ethmac_tx_converter_source_payload_error;
assign ethmac_padding_inserter_sink_valid = ethmac_tx_last_be_source_valid;
assign ethmac_tx_last_be_source_ready = ethmac_padding_inserter_sink_ready;
assign ethmac_padding_inserter_sink_first = ethmac_tx_last_be_source_first;
assign ethmac_padding_inserter_sink_last = ethmac_tx_last_be_source_last;
assign ethmac_padding_inserter_sink_payload_data = ethmac_tx_last_be_source_payload_data;
assign ethmac_padding_inserter_sink_payload_last_be = ethmac_tx_last_be_source_payload_last_be;
assign ethmac_padding_inserter_sink_payload_error = ethmac_tx_last_be_source_payload_error;
assign ethmac_crc32_inserter_sink_valid = ethmac_padding_inserter_source_valid;
assign ethmac_padding_inserter_source_ready = ethmac_crc32_inserter_sink_ready;
assign ethmac_crc32_inserter_sink_first = ethmac_padding_inserter_source_first;
assign ethmac_crc32_inserter_sink_last = ethmac_padding_inserter_source_last;
assign ethmac_crc32_inserter_sink_payload_data = ethmac_padding_inserter_source_payload_data;
assign ethmac_crc32_inserter_sink_payload_last_be = ethmac_padding_inserter_source_payload_last_be;
assign ethmac_crc32_inserter_sink_payload_error = ethmac_padding_inserter_source_payload_error;
assign ethmac_preamble_inserter_sink_valid = ethmac_crc32_inserter_source_valid;
assign ethmac_crc32_inserter_source_ready = ethmac_preamble_inserter_sink_ready;
assign ethmac_preamble_inserter_sink_first = ethmac_crc32_inserter_source_first;
assign ethmac_preamble_inserter_sink_last = ethmac_crc32_inserter_source_last;
assign ethmac_preamble_inserter_sink_payload_data = ethmac_crc32_inserter_source_payload_data;
assign ethmac_preamble_inserter_sink_payload_last_be = ethmac_crc32_inserter_source_payload_last_be;
assign ethmac_preamble_inserter_sink_payload_error = ethmac_crc32_inserter_source_payload_error;
assign ethmac_tx_gap_inserter_sink_valid = ethmac_preamble_inserter_source_valid;
assign ethmac_preamble_inserter_source_ready = ethmac_tx_gap_inserter_sink_ready;
assign ethmac_tx_gap_inserter_sink_first = ethmac_preamble_inserter_source_first;
assign ethmac_tx_gap_inserter_sink_last = ethmac_preamble_inserter_source_last;
assign ethmac_tx_gap_inserter_sink_payload_data = ethmac_preamble_inserter_source_payload_data;
assign ethmac_tx_gap_inserter_sink_payload_last_be = ethmac_preamble_inserter_source_payload_last_be;
assign ethmac_tx_gap_inserter_sink_payload_error = ethmac_preamble_inserter_source_payload_error;
assign ethphy_liteethphymiitx_sink_sink_valid = ethmac_tx_gap_inserter_source_valid;
assign ethmac_tx_gap_inserter_source_ready = ethphy_liteethphymiitx_sink_sink_ready;
assign ethphy_liteethphymiitx_sink_sink_first = ethmac_tx_gap_inserter_source_first;
assign ethphy_liteethphymiitx_sink_sink_last = ethmac_tx_gap_inserter_source_last;
assign ethphy_liteethphymiitx_sink_sink_payload_data = ethmac_tx_gap_inserter_source_payload_data;
assign ethphy_liteethphymiitx_sink_sink_payload_last_be = ethmac_tx_gap_inserter_source_payload_last_be;
assign ethphy_liteethphymiitx_sink_sink_payload_error = ethmac_tx_gap_inserter_source_payload_error;
assign ethmac_preamble_checker_sink_valid = ethphy_liteethphymiirx_source_source_valid;
assign ethphy_liteethphymiirx_source_source_ready = ethmac_preamble_checker_sink_ready;
assign ethmac_preamble_checker_sink_first = ethphy_liteethphymiirx_source_source_first;
assign ethmac_preamble_checker_sink_last = ethphy_liteethphymiirx_source_source_last;
assign ethmac_preamble_checker_sink_payload_data = ethphy_liteethphymiirx_source_source_payload_data;
assign ethmac_preamble_checker_sink_payload_last_be = ethphy_liteethphymiirx_source_source_payload_last_be;
assign ethmac_preamble_checker_sink_payload_error = ethphy_liteethphymiirx_source_source_payload_error;
assign ethmac_crc32_checker_sink_sink_valid = ethmac_preamble_checker_source_valid;
assign ethmac_preamble_checker_source_ready = ethmac_crc32_checker_sink_sink_ready;
assign ethmac_crc32_checker_sink_sink_first = ethmac_preamble_checker_source_first;
assign ethmac_crc32_checker_sink_sink_last = ethmac_preamble_checker_source_last;
assign ethmac_crc32_checker_sink_sink_payload_data = ethmac_preamble_checker_source_payload_data;
assign ethmac_crc32_checker_sink_sink_payload_last_be = ethmac_preamble_checker_source_payload_last_be;
assign ethmac_crc32_checker_sink_sink_payload_error = ethmac_preamble_checker_source_payload_error;
assign ethmac_padding_checker_sink_valid = ethmac_crc32_checker_source_source_valid;
assign ethmac_crc32_checker_source_source_ready = ethmac_padding_checker_sink_ready;
assign ethmac_padding_checker_sink_first = ethmac_crc32_checker_source_source_first;
assign ethmac_padding_checker_sink_last = ethmac_crc32_checker_source_source_last;
assign ethmac_padding_checker_sink_payload_data = ethmac_crc32_checker_source_source_payload_data;
assign ethmac_padding_checker_sink_payload_last_be = ethmac_crc32_checker_source_source_payload_last_be;
assign ethmac_padding_checker_sink_payload_error = ethmac_crc32_checker_source_source_payload_error;
assign ethmac_rx_last_be_sink_valid = ethmac_padding_checker_source_valid;
assign ethmac_padding_checker_source_ready = ethmac_rx_last_be_sink_ready;
assign ethmac_rx_last_be_sink_first = ethmac_padding_checker_source_first;
assign ethmac_rx_last_be_sink_last = ethmac_padding_checker_source_last;
assign ethmac_rx_last_be_sink_payload_data = ethmac_padding_checker_source_payload_data;
assign ethmac_rx_last_be_sink_payload_last_be = ethmac_padding_checker_source_payload_last_be;
assign ethmac_rx_last_be_sink_payload_error = ethmac_padding_checker_source_payload_error;
assign ethmac_rx_converter_sink_valid = ethmac_rx_last_be_source_valid;
assign ethmac_rx_last_be_source_ready = ethmac_rx_converter_sink_ready;
assign ethmac_rx_converter_sink_first = ethmac_rx_last_be_source_first;
assign ethmac_rx_converter_sink_last = ethmac_rx_last_be_source_last;
assign ethmac_rx_converter_sink_payload_data = ethmac_rx_last_be_source_payload_data;
assign ethmac_rx_converter_sink_payload_last_be = ethmac_rx_last_be_source_payload_last_be;
assign ethmac_rx_converter_sink_payload_error = ethmac_rx_last_be_source_payload_error;
assign ethmac_rx_cdc_sink_valid = ethmac_rx_converter_source_valid;
assign ethmac_rx_converter_source_ready = ethmac_rx_cdc_sink_ready;
assign ethmac_rx_cdc_sink_first = ethmac_rx_converter_source_first;
assign ethmac_rx_cdc_sink_last = ethmac_rx_converter_source_last;
assign ethmac_rx_cdc_sink_payload_data = ethmac_rx_converter_source_payload_data;
assign ethmac_rx_cdc_sink_payload_last_be = ethmac_rx_converter_source_payload_last_be;
assign ethmac_rx_cdc_sink_payload_error = ethmac_rx_converter_source_payload_error;
assign ethmac_writer_sink_sink_valid = ethmac_sink_valid;
assign ethmac_sink_ready = ethmac_writer_sink_sink_ready;
assign ethmac_writer_sink_sink_first = ethmac_sink_first;
assign ethmac_writer_sink_sink_last = ethmac_sink_last;
assign ethmac_writer_sink_sink_payload_data = ethmac_sink_payload_data;
assign ethmac_writer_sink_sink_payload_last_be = ethmac_sink_payload_last_be;
assign ethmac_writer_sink_sink_payload_error = ethmac_sink_payload_error;
assign ethmac_source_valid = ethmac_reader_source_source_valid;
assign ethmac_reader_source_source_ready = ethmac_source_ready;
assign ethmac_source_first = ethmac_reader_source_source_first;
assign ethmac_source_last = ethmac_reader_source_source_last;
assign ethmac_source_payload_data = ethmac_reader_source_source_payload_data;
assign ethmac_source_payload_last_be = ethmac_reader_source_source_payload_last_be;
assign ethmac_source_payload_error = ethmac_reader_source_source_payload_error;
always @(*) begin
	ethmac_writer_increment <= 3'd0;
	if (ethmac_writer_sink_sink_payload_last_be[3]) begin
		ethmac_writer_increment <= 1'd1;
	end else begin
		if (ethmac_writer_sink_sink_payload_last_be[2]) begin
			ethmac_writer_increment <= 2'd2;
		end else begin
			if (ethmac_writer_sink_sink_payload_last_be[1]) begin
				ethmac_writer_increment <= 2'd3;
			end else begin
				ethmac_writer_increment <= 3'd4;
			end
		end
	end
end
assign ethmac_writer_fifo_sink_payload_slot = ethmac_writer_slot;
assign ethmac_writer_fifo_sink_payload_length = ethmac_writer_counter;
assign ethmac_writer_fifo_source_ready = ethmac_writer_available_clear;
assign ethmac_writer_available_trigger = ethmac_writer_fifo_source_valid;
assign ethmac_writer_slot_status = ethmac_writer_fifo_source_payload_slot;
assign ethmac_writer_length_status = ethmac_writer_fifo_source_payload_length;
always @(*) begin
	ethmac_writer_memory1_adr <= 9'd0;
	ethmac_writer_memory1_we <= 1'd0;
	ethmac_writer_memory1_dat_w <= 32'd0;
	ethmac_writer_memory0_adr <= 9'd0;
	ethmac_writer_memory0_we <= 1'd0;
	ethmac_writer_memory0_dat_w <= 32'd0;
	case (ethmac_writer_slot)
		1'd0: begin
			ethmac_writer_memory0_adr <= ethmac_writer_counter[31:2];
			ethmac_writer_memory0_dat_w <= ethmac_writer_sink_sink_payload_data;
			if ((ethmac_writer_sink_sink_valid & ethmac_writer_ongoing)) begin
				ethmac_writer_memory0_we <= 4'd15;
			end
		end
		1'd1: begin
			ethmac_writer_memory1_adr <= ethmac_writer_counter[31:2];
			ethmac_writer_memory1_dat_w <= ethmac_writer_sink_sink_payload_data;
			if ((ethmac_writer_sink_sink_valid & ethmac_writer_ongoing)) begin
				ethmac_writer_memory1_we <= 4'd15;
			end
		end
	endcase
end
assign ethmac_writer_status_w = ethmac_writer_available_status;
always @(*) begin
	ethmac_writer_available_clear <= 1'd0;
	if ((ethmac_writer_pending_re & ethmac_writer_pending_r)) begin
		ethmac_writer_available_clear <= 1'd1;
	end
end
assign ethmac_writer_pending_w = ethmac_writer_available_pending;
assign ethmac_writer_irq = (ethmac_writer_pending_w & ethmac_writer_storage);
assign ethmac_writer_available_status = ethmac_writer_available_trigger;
assign ethmac_writer_available_pending = ethmac_writer_available_trigger;
assign ethmac_writer_fifo_syncfifo_din = {ethmac_writer_fifo_fifo_in_last, ethmac_writer_fifo_fifo_in_first, ethmac_writer_fifo_fifo_in_payload_length, ethmac_writer_fifo_fifo_in_payload_slot};
assign {ethmac_writer_fifo_fifo_out_last, ethmac_writer_fifo_fifo_out_first, ethmac_writer_fifo_fifo_out_payload_length, ethmac_writer_fifo_fifo_out_payload_slot} = ethmac_writer_fifo_syncfifo_dout;
assign ethmac_writer_fifo_sink_ready = ethmac_writer_fifo_syncfifo_writable;
assign ethmac_writer_fifo_syncfifo_we = ethmac_writer_fifo_sink_valid;
assign ethmac_writer_fifo_fifo_in_first = ethmac_writer_fifo_sink_first;
assign ethmac_writer_fifo_fifo_in_last = ethmac_writer_fifo_sink_last;
assign ethmac_writer_fifo_fifo_in_payload_slot = ethmac_writer_fifo_sink_payload_slot;
assign ethmac_writer_fifo_fifo_in_payload_length = ethmac_writer_fifo_sink_payload_length;
assign ethmac_writer_fifo_source_valid = ethmac_writer_fifo_syncfifo_readable;
assign ethmac_writer_fifo_source_first = ethmac_writer_fifo_fifo_out_first;
assign ethmac_writer_fifo_source_last = ethmac_writer_fifo_fifo_out_last;
assign ethmac_writer_fifo_source_payload_slot = ethmac_writer_fifo_fifo_out_payload_slot;
assign ethmac_writer_fifo_source_payload_length = ethmac_writer_fifo_fifo_out_payload_length;
assign ethmac_writer_fifo_syncfifo_re = ethmac_writer_fifo_source_ready;
always @(*) begin
	ethmac_writer_fifo_wrport_adr <= 1'd0;
	if (ethmac_writer_fifo_replace) begin
		ethmac_writer_fifo_wrport_adr <= (ethmac_writer_fifo_produce - 1'd1);
	end else begin
		ethmac_writer_fifo_wrport_adr <= ethmac_writer_fifo_produce;
	end
end
assign ethmac_writer_fifo_wrport_dat_w = ethmac_writer_fifo_syncfifo_din;
assign ethmac_writer_fifo_wrport_we = (ethmac_writer_fifo_syncfifo_we & (ethmac_writer_fifo_syncfifo_writable | ethmac_writer_fifo_replace));
assign ethmac_writer_fifo_do_read = (ethmac_writer_fifo_syncfifo_readable & ethmac_writer_fifo_syncfifo_re);
assign ethmac_writer_fifo_rdport_adr = ethmac_writer_fifo_consume;
assign ethmac_writer_fifo_syncfifo_dout = ethmac_writer_fifo_rdport_dat_r;
assign ethmac_writer_fifo_syncfifo_writable = (ethmac_writer_fifo_level != 2'd2);
assign ethmac_writer_fifo_syncfifo_readable = (ethmac_writer_fifo_level != 1'd0);
always @(*) begin
	liteethmacsramwriter_next_state <= 3'd0;
	ethmac_writer_errors_status_next_value <= 32'd0;
	ethmac_writer_errors_status_next_value_ce <= 1'd0;
	ethmac_writer_counter_reset <= 1'd0;
	ethmac_writer_counter_ce <= 1'd0;
	ethmac_writer_slot_ce <= 1'd0;
	ethmac_writer_ongoing <= 1'd0;
	ethmac_writer_fifo_sink_valid <= 1'd0;
	liteethmacsramwriter_next_state <= liteethmacsramwriter_state;
	case (liteethmacsramwriter_state)
		1'd1: begin
			if (ethmac_writer_sink_sink_valid) begin
				if ((ethmac_writer_counter == 11'd1530)) begin
					liteethmacsramwriter_next_state <= 2'd3;
				end else begin
					ethmac_writer_counter_ce <= 1'd1;
					ethmac_writer_ongoing <= 1'd1;
				end
				if (ethmac_writer_sink_sink_last) begin
					if (((ethmac_writer_sink_sink_payload_error & ethmac_writer_sink_sink_payload_last_be) != 1'd0)) begin
						liteethmacsramwriter_next_state <= 2'd2;
					end else begin
						liteethmacsramwriter_next_state <= 3'd4;
					end
				end
			end
		end
		2'd2: begin
			ethmac_writer_counter_reset <= 1'd1;
			liteethmacsramwriter_next_state <= 1'd0;
		end
		2'd3: begin
			if ((ethmac_writer_sink_sink_valid & ethmac_writer_sink_sink_last)) begin
				liteethmacsramwriter_next_state <= 3'd4;
			end
		end
		3'd4: begin
			ethmac_writer_counter_reset <= 1'd1;
			ethmac_writer_slot_ce <= 1'd1;
			ethmac_writer_fifo_sink_valid <= 1'd1;
			liteethmacsramwriter_next_state <= 1'd0;
		end
		default: begin
			if (ethmac_writer_sink_sink_valid) begin
				if (ethmac_writer_fifo_sink_ready) begin
					ethmac_writer_ongoing <= 1'd1;
					ethmac_writer_counter_ce <= 1'd1;
					liteethmacsramwriter_next_state <= 1'd1;
				end else begin
					ethmac_writer_errors_status_next_value <= (ethmac_writer_errors_status + 1'd1);
					ethmac_writer_errors_status_next_value_ce <= 1'd1;
					liteethmacsramwriter_next_state <= 2'd3;
				end
			end
		end
	endcase
end
assign ethmac_reader_fifo_sink_valid = ethmac_reader_start_re;
assign ethmac_reader_fifo_sink_payload_slot = ethmac_reader_slot_storage;
assign ethmac_reader_fifo_sink_payload_length = ethmac_reader_length_storage;
assign ethmac_reader_ready_status = ethmac_reader_fifo_sink_ready;
assign ethmac_reader_level_status = ethmac_reader_fifo_level;
always @(*) begin
	ethmac_reader_source_source_payload_last_be <= 4'd0;
	if (ethmac_reader_last) begin
		if ((ethmac_reader_fifo_source_payload_length[1:0] == 2'd3)) begin
			ethmac_reader_source_source_payload_last_be <= 2'd2;
		end else begin
			if ((ethmac_reader_fifo_source_payload_length[1:0] == 2'd2)) begin
				ethmac_reader_source_source_payload_last_be <= 3'd4;
			end else begin
				if ((ethmac_reader_fifo_source_payload_length[1:0] == 1'd1)) begin
					ethmac_reader_source_source_payload_last_be <= 4'd8;
				end else begin
					ethmac_reader_source_source_payload_last_be <= 1'd1;
				end
			end
		end
	end
end
assign ethmac_reader_last = ((ethmac_reader_counter + 3'd4) >= ethmac_reader_fifo_source_payload_length);
assign ethmac_reader_memory0_adr = ethmac_reader_counter[10:2];
assign ethmac_reader_memory1_adr = ethmac_reader_counter[10:2];
always @(*) begin
	ethmac_reader_source_source_payload_data <= 32'd0;
	case (ethmac_reader_fifo_source_payload_slot)
		1'd0: begin
			ethmac_reader_source_source_payload_data <= ethmac_reader_memory0_dat_r;
		end
		1'd1: begin
			ethmac_reader_source_source_payload_data <= ethmac_reader_memory1_dat_r;
		end
	endcase
end
assign ethmac_reader_eventmanager_status_w = ethmac_reader_done_status;
always @(*) begin
	ethmac_reader_done_clear <= 1'd0;
	if ((ethmac_reader_eventmanager_pending_re & ethmac_reader_eventmanager_pending_r)) begin
		ethmac_reader_done_clear <= 1'd1;
	end
end
assign ethmac_reader_eventmanager_pending_w = ethmac_reader_done_pending;
assign ethmac_reader_irq = (ethmac_reader_eventmanager_pending_w & ethmac_reader_eventmanager_storage);
assign ethmac_reader_done_status = 1'd0;
assign ethmac_reader_fifo_syncfifo_din = {ethmac_reader_fifo_fifo_in_last, ethmac_reader_fifo_fifo_in_first, ethmac_reader_fifo_fifo_in_payload_length, ethmac_reader_fifo_fifo_in_payload_slot};
assign {ethmac_reader_fifo_fifo_out_last, ethmac_reader_fifo_fifo_out_first, ethmac_reader_fifo_fifo_out_payload_length, ethmac_reader_fifo_fifo_out_payload_slot} = ethmac_reader_fifo_syncfifo_dout;
assign ethmac_reader_fifo_sink_ready = ethmac_reader_fifo_syncfifo_writable;
assign ethmac_reader_fifo_syncfifo_we = ethmac_reader_fifo_sink_valid;
assign ethmac_reader_fifo_fifo_in_first = ethmac_reader_fifo_sink_first;
assign ethmac_reader_fifo_fifo_in_last = ethmac_reader_fifo_sink_last;
assign ethmac_reader_fifo_fifo_in_payload_slot = ethmac_reader_fifo_sink_payload_slot;
assign ethmac_reader_fifo_fifo_in_payload_length = ethmac_reader_fifo_sink_payload_length;
assign ethmac_reader_fifo_source_valid = ethmac_reader_fifo_syncfifo_readable;
assign ethmac_reader_fifo_source_first = ethmac_reader_fifo_fifo_out_first;
assign ethmac_reader_fifo_source_last = ethmac_reader_fifo_fifo_out_last;
assign ethmac_reader_fifo_source_payload_slot = ethmac_reader_fifo_fifo_out_payload_slot;
assign ethmac_reader_fifo_source_payload_length = ethmac_reader_fifo_fifo_out_payload_length;
assign ethmac_reader_fifo_syncfifo_re = ethmac_reader_fifo_source_ready;
always @(*) begin
	ethmac_reader_fifo_wrport_adr <= 1'd0;
	if (ethmac_reader_fifo_replace) begin
		ethmac_reader_fifo_wrport_adr <= (ethmac_reader_fifo_produce - 1'd1);
	end else begin
		ethmac_reader_fifo_wrport_adr <= ethmac_reader_fifo_produce;
	end
end
assign ethmac_reader_fifo_wrport_dat_w = ethmac_reader_fifo_syncfifo_din;
assign ethmac_reader_fifo_wrport_we = (ethmac_reader_fifo_syncfifo_we & (ethmac_reader_fifo_syncfifo_writable | ethmac_reader_fifo_replace));
assign ethmac_reader_fifo_do_read = (ethmac_reader_fifo_syncfifo_readable & ethmac_reader_fifo_syncfifo_re);
assign ethmac_reader_fifo_rdport_adr = ethmac_reader_fifo_consume;
assign ethmac_reader_fifo_syncfifo_dout = ethmac_reader_fifo_rdport_dat_r;
assign ethmac_reader_fifo_syncfifo_writable = (ethmac_reader_fifo_level != 2'd2);
assign ethmac_reader_fifo_syncfifo_readable = (ethmac_reader_fifo_level != 1'd0);
always @(*) begin
	liteethmacsramreader_next_state <= 2'd0;
	ethmac_reader_done_trigger <= 1'd0;
	ethmac_reader_source_source_valid <= 1'd0;
	ethmac_reader_counter_reset <= 1'd0;
	ethmac_reader_counter_ce <= 1'd0;
	ethmac_reader_fifo_source_ready <= 1'd0;
	ethmac_reader_source_source_last <= 1'd0;
	liteethmacsramreader_next_state <= liteethmacsramreader_state;
	case (liteethmacsramreader_state)
		1'd1: begin
			if ((~ethmac_reader_last_d)) begin
				liteethmacsramreader_next_state <= 2'd2;
			end else begin
				liteethmacsramreader_next_state <= 2'd3;
			end
		end
		2'd2: begin
			ethmac_reader_source_source_valid <= 1'd1;
			ethmac_reader_source_source_last <= ethmac_reader_last;
			if (ethmac_reader_source_source_ready) begin
				ethmac_reader_counter_ce <= (~ethmac_reader_last);
				liteethmacsramreader_next_state <= 1'd1;
			end
		end
		2'd3: begin
			ethmac_reader_fifo_source_ready <= 1'd1;
			ethmac_reader_done_trigger <= 1'd1;
			liteethmacsramreader_next_state <= 1'd0;
		end
		default: begin
			ethmac_reader_counter_reset <= 1'd1;
			if (ethmac_reader_fifo_source_valid) begin
				liteethmacsramreader_next_state <= 1'd1;
			end
		end
	endcase
end
assign ethmac_ev_irq = (ethmac_writer_irq | ethmac_reader_irq);
assign ethmac_sram0_adr0 = ethmac_sram0_bus_adr0[8:0];
assign ethmac_sram0_bus_dat_r0 = ethmac_sram0_dat_r0;
assign ethmac_sram1_adr0 = ethmac_sram1_bus_adr0[8:0];
assign ethmac_sram1_bus_dat_r0 = ethmac_sram1_dat_r0;
always @(*) begin
	ethmac_sram0_we <= 4'd0;
	ethmac_sram0_we[0] <= (((ethmac_sram0_bus_cyc1 & ethmac_sram0_bus_stb1) & ethmac_sram0_bus_we1) & ethmac_sram0_bus_sel1[0]);
	ethmac_sram0_we[1] <= (((ethmac_sram0_bus_cyc1 & ethmac_sram0_bus_stb1) & ethmac_sram0_bus_we1) & ethmac_sram0_bus_sel1[1]);
	ethmac_sram0_we[2] <= (((ethmac_sram0_bus_cyc1 & ethmac_sram0_bus_stb1) & ethmac_sram0_bus_we1) & ethmac_sram0_bus_sel1[2]);
	ethmac_sram0_we[3] <= (((ethmac_sram0_bus_cyc1 & ethmac_sram0_bus_stb1) & ethmac_sram0_bus_we1) & ethmac_sram0_bus_sel1[3]);
end
assign ethmac_sram0_adr1 = ethmac_sram0_bus_adr1[8:0];
assign ethmac_sram0_bus_dat_r1 = ethmac_sram0_dat_r1;
assign ethmac_sram0_dat_w = ethmac_sram0_bus_dat_w1;
always @(*) begin
	ethmac_sram1_we <= 4'd0;
	ethmac_sram1_we[0] <= (((ethmac_sram1_bus_cyc1 & ethmac_sram1_bus_stb1) & ethmac_sram1_bus_we1) & ethmac_sram1_bus_sel1[0]);
	ethmac_sram1_we[1] <= (((ethmac_sram1_bus_cyc1 & ethmac_sram1_bus_stb1) & ethmac_sram1_bus_we1) & ethmac_sram1_bus_sel1[1]);
	ethmac_sram1_we[2] <= (((ethmac_sram1_bus_cyc1 & ethmac_sram1_bus_stb1) & ethmac_sram1_bus_we1) & ethmac_sram1_bus_sel1[2]);
	ethmac_sram1_we[3] <= (((ethmac_sram1_bus_cyc1 & ethmac_sram1_bus_stb1) & ethmac_sram1_bus_we1) & ethmac_sram1_bus_sel1[3]);
end
assign ethmac_sram1_adr1 = ethmac_sram1_bus_adr1[8:0];
assign ethmac_sram1_bus_dat_r1 = ethmac_sram1_dat_r1;
assign ethmac_sram1_dat_w = ethmac_sram1_bus_dat_w1;
always @(*) begin
	ethmac_slave_sel <= 4'd0;
	ethmac_slave_sel[0] <= (ethmac_bus_adr[10:9] == 1'd0);
	ethmac_slave_sel[1] <= (ethmac_bus_adr[10:9] == 1'd1);
	ethmac_slave_sel[2] <= (ethmac_bus_adr[10:9] == 2'd2);
	ethmac_slave_sel[3] <= (ethmac_bus_adr[10:9] == 2'd3);
end
assign ethmac_sram0_bus_adr0 = ethmac_bus_adr;
assign ethmac_sram0_bus_dat_w0 = ethmac_bus_dat_w;
assign ethmac_sram0_bus_sel0 = ethmac_bus_sel;
assign ethmac_sram0_bus_stb0 = ethmac_bus_stb;
assign ethmac_sram0_bus_we0 = ethmac_bus_we;
assign ethmac_sram0_bus_cti0 = ethmac_bus_cti;
assign ethmac_sram0_bus_bte0 = ethmac_bus_bte;
assign ethmac_sram1_bus_adr0 = ethmac_bus_adr;
assign ethmac_sram1_bus_dat_w0 = ethmac_bus_dat_w;
assign ethmac_sram1_bus_sel0 = ethmac_bus_sel;
assign ethmac_sram1_bus_stb0 = ethmac_bus_stb;
assign ethmac_sram1_bus_we0 = ethmac_bus_we;
assign ethmac_sram1_bus_cti0 = ethmac_bus_cti;
assign ethmac_sram1_bus_bte0 = ethmac_bus_bte;
assign ethmac_sram0_bus_adr1 = ethmac_bus_adr;
assign ethmac_sram0_bus_dat_w1 = ethmac_bus_dat_w;
assign ethmac_sram0_bus_sel1 = ethmac_bus_sel;
assign ethmac_sram0_bus_stb1 = ethmac_bus_stb;
assign ethmac_sram0_bus_we1 = ethmac_bus_we;
assign ethmac_sram0_bus_cti1 = ethmac_bus_cti;
assign ethmac_sram0_bus_bte1 = ethmac_bus_bte;
assign ethmac_sram1_bus_adr1 = ethmac_bus_adr;
assign ethmac_sram1_bus_dat_w1 = ethmac_bus_dat_w;
assign ethmac_sram1_bus_sel1 = ethmac_bus_sel;
assign ethmac_sram1_bus_stb1 = ethmac_bus_stb;
assign ethmac_sram1_bus_we1 = ethmac_bus_we;
assign ethmac_sram1_bus_cti1 = ethmac_bus_cti;
assign ethmac_sram1_bus_bte1 = ethmac_bus_bte;
assign ethmac_sram0_bus_cyc0 = (ethmac_bus_cyc & ethmac_slave_sel[0]);
assign ethmac_sram1_bus_cyc0 = (ethmac_bus_cyc & ethmac_slave_sel[1]);
assign ethmac_sram0_bus_cyc1 = (ethmac_bus_cyc & ethmac_slave_sel[2]);
assign ethmac_sram1_bus_cyc1 = (ethmac_bus_cyc & ethmac_slave_sel[3]);
assign ethmac_bus_ack = (((ethmac_sram0_bus_ack0 | ethmac_sram1_bus_ack0) | ethmac_sram0_bus_ack1) | ethmac_sram1_bus_ack1);
assign ethmac_bus_err = (((ethmac_sram0_bus_err0 | ethmac_sram1_bus_err0) | ethmac_sram0_bus_err1) | ethmac_sram1_bus_err1);
assign ethmac_bus_dat_r = (((({32{ethmac_slave_sel_r[0]}} & ethmac_sram0_bus_dat_r0) | ({32{ethmac_slave_sel_r[1]}} & ethmac_sram1_bus_dat_r0)) | ({32{ethmac_slave_sel_r[2]}} & ethmac_sram0_bus_dat_r1)) | ({32{ethmac_slave_sel_r[3]}} & ethmac_sram1_bus_dat_r1));
assign netsoc_interface0_wb_sdram_adr = rhs_array_muxed36;
assign netsoc_interface0_wb_sdram_dat_w = rhs_array_muxed37;
assign netsoc_interface0_wb_sdram_sel = rhs_array_muxed38;
assign netsoc_interface0_wb_sdram_cyc = rhs_array_muxed39;
assign netsoc_interface0_wb_sdram_stb = rhs_array_muxed40;
assign netsoc_interface0_wb_sdram_we = rhs_array_muxed41;
assign netsoc_interface0_wb_sdram_cti = rhs_array_muxed42;
assign netsoc_interface0_wb_sdram_bte = rhs_array_muxed43;
assign netsoc_interface1_wb_sdram_dat_r = netsoc_interface0_wb_sdram_dat_r;
assign netsoc_interface1_wb_sdram_ack = (netsoc_interface0_wb_sdram_ack & (wb_sdram_con_grant == 1'd0));
assign netsoc_interface1_wb_sdram_err = (netsoc_interface0_wb_sdram_err & (wb_sdram_con_grant == 1'd0));
assign wb_sdram_con_request = {netsoc_interface1_wb_sdram_cyc};
assign wb_sdram_con_grant = 1'd0;
assign netsoc_shared_adr = rhs_array_muxed44;
assign netsoc_shared_dat_w = rhs_array_muxed45;
assign netsoc_shared_sel = rhs_array_muxed46;
assign netsoc_shared_cyc = rhs_array_muxed47;
assign netsoc_shared_stb = rhs_array_muxed48;
assign netsoc_shared_we = rhs_array_muxed49;
assign netsoc_shared_cti = rhs_array_muxed50;
assign netsoc_shared_bte = rhs_array_muxed51;
assign netsoc_netsoc_mor1kx_ibus_dat_r = netsoc_shared_dat_r;
assign netsoc_netsoc_mor1kx_dbus_dat_r = netsoc_shared_dat_r;
assign netsoc_netsoc_mor1kx_ibus_ack = (netsoc_shared_ack & (netsoc_grant == 1'd0));
assign netsoc_netsoc_mor1kx_dbus_ack = (netsoc_shared_ack & (netsoc_grant == 1'd1));
assign netsoc_netsoc_mor1kx_ibus_err = (netsoc_shared_err & (netsoc_grant == 1'd0));
assign netsoc_netsoc_mor1kx_dbus_err = (netsoc_shared_err & (netsoc_grant == 1'd1));
assign netsoc_request = {netsoc_netsoc_mor1kx_dbus_cyc, netsoc_netsoc_mor1kx_ibus_cyc};
always @(*) begin
	netsoc_slave_sel <= 6'd0;
	netsoc_slave_sel[0] <= (netsoc_shared_adr[28:26] == 1'd0);
	netsoc_slave_sel[1] <= (netsoc_shared_adr[28:26] == 1'd1);
	netsoc_slave_sel[2] <= (netsoc_shared_adr[28:26] == 3'd6);
	netsoc_slave_sel[3] <= (netsoc_shared_adr[28:26] == 2'd2);
	netsoc_slave_sel[4] <= (netsoc_shared_adr[28:26] == 3'd4);
	netsoc_slave_sel[5] <= (netsoc_shared_adr[28:26] == 2'd3);
end
assign netsoc_netsoc_rom_bus_adr = netsoc_shared_adr;
assign netsoc_netsoc_rom_bus_dat_w = netsoc_shared_dat_w;
assign netsoc_netsoc_rom_bus_sel = netsoc_shared_sel;
assign netsoc_netsoc_rom_bus_stb = netsoc_shared_stb;
assign netsoc_netsoc_rom_bus_we = netsoc_shared_we;
assign netsoc_netsoc_rom_bus_cti = netsoc_shared_cti;
assign netsoc_netsoc_rom_bus_bte = netsoc_shared_bte;
assign netsoc_netsoc_sram_bus_adr = netsoc_shared_adr;
assign netsoc_netsoc_sram_bus_dat_w = netsoc_shared_dat_w;
assign netsoc_netsoc_sram_bus_sel = netsoc_shared_sel;
assign netsoc_netsoc_sram_bus_stb = netsoc_shared_stb;
assign netsoc_netsoc_sram_bus_we = netsoc_shared_we;
assign netsoc_netsoc_sram_bus_cti = netsoc_shared_cti;
assign netsoc_netsoc_sram_bus_bte = netsoc_shared_bte;
assign netsoc_netsoc_bus_wishbone_adr = netsoc_shared_adr;
assign netsoc_netsoc_bus_wishbone_dat_w = netsoc_shared_dat_w;
assign netsoc_netsoc_bus_wishbone_sel = netsoc_shared_sel;
assign netsoc_netsoc_bus_wishbone_stb = netsoc_shared_stb;
assign netsoc_netsoc_bus_wishbone_we = netsoc_shared_we;
assign netsoc_netsoc_bus_wishbone_cti = netsoc_shared_cti;
assign netsoc_netsoc_bus_wishbone_bte = netsoc_shared_bte;
assign netsoc_bus_adr = netsoc_shared_adr;
assign netsoc_bus_dat_w = netsoc_shared_dat_w;
assign netsoc_bus_sel = netsoc_shared_sel;
assign netsoc_bus_stb = netsoc_shared_stb;
assign netsoc_bus_we = netsoc_shared_we;
assign netsoc_bus_cti = netsoc_shared_cti;
assign netsoc_bus_bte = netsoc_shared_bte;
assign netsoc_interface1_wb_sdram_adr = netsoc_shared_adr;
assign netsoc_interface1_wb_sdram_dat_w = netsoc_shared_dat_w;
assign netsoc_interface1_wb_sdram_sel = netsoc_shared_sel;
assign netsoc_interface1_wb_sdram_stb = netsoc_shared_stb;
assign netsoc_interface1_wb_sdram_we = netsoc_shared_we;
assign netsoc_interface1_wb_sdram_cti = netsoc_shared_cti;
assign netsoc_interface1_wb_sdram_bte = netsoc_shared_bte;
assign ethmac_bus_adr = netsoc_shared_adr;
assign ethmac_bus_dat_w = netsoc_shared_dat_w;
assign ethmac_bus_sel = netsoc_shared_sel;
assign ethmac_bus_stb = netsoc_shared_stb;
assign ethmac_bus_we = netsoc_shared_we;
assign ethmac_bus_cti = netsoc_shared_cti;
assign ethmac_bus_bte = netsoc_shared_bte;
assign netsoc_netsoc_rom_bus_cyc = (netsoc_shared_cyc & netsoc_slave_sel[0]);
assign netsoc_netsoc_sram_bus_cyc = (netsoc_shared_cyc & netsoc_slave_sel[1]);
assign netsoc_netsoc_bus_wishbone_cyc = (netsoc_shared_cyc & netsoc_slave_sel[2]);
assign netsoc_bus_cyc = (netsoc_shared_cyc & netsoc_slave_sel[3]);
assign netsoc_interface1_wb_sdram_cyc = (netsoc_shared_cyc & netsoc_slave_sel[4]);
assign ethmac_bus_cyc = (netsoc_shared_cyc & netsoc_slave_sel[5]);
assign netsoc_shared_err = (((((netsoc_netsoc_rom_bus_err | netsoc_netsoc_sram_bus_err) | netsoc_netsoc_bus_wishbone_err) | netsoc_bus_err) | netsoc_interface1_wb_sdram_err) | ethmac_bus_err);
assign netsoc_wait = ((netsoc_shared_stb & netsoc_shared_cyc) & (~netsoc_shared_ack));
always @(*) begin
	netsoc_error <= 1'd0;
	netsoc_shared_ack <= 1'd0;
	netsoc_shared_dat_r <= 32'd0;
	netsoc_shared_ack <= (((((netsoc_netsoc_rom_bus_ack | netsoc_netsoc_sram_bus_ack) | netsoc_netsoc_bus_wishbone_ack) | netsoc_bus_ack) | netsoc_interface1_wb_sdram_ack) | ethmac_bus_ack);
	netsoc_shared_dat_r <= (((((({32{netsoc_slave_sel_r[0]}} & netsoc_netsoc_rom_bus_dat_r) | ({32{netsoc_slave_sel_r[1]}} & netsoc_netsoc_sram_bus_dat_r)) | ({32{netsoc_slave_sel_r[2]}} & netsoc_netsoc_bus_wishbone_dat_r)) | ({32{netsoc_slave_sel_r[3]}} & netsoc_bus_dat_r)) | ({32{netsoc_slave_sel_r[4]}} & netsoc_interface1_wb_sdram_dat_r)) | ({32{netsoc_slave_sel_r[5]}} & ethmac_bus_dat_r));
	if (netsoc_done) begin
		netsoc_shared_dat_r <= 32'd4294967295;
		netsoc_shared_ack <= 1'd1;
		netsoc_error <= 1'd1;
	end
end
assign netsoc_done = (netsoc_count == 1'd0);
assign netsoc_csrbank0_sel = (netsoc_interface0_bank_bus_adr[13:9] == 4'd13);
assign netsoc_csrbank0_leds_out0_r = netsoc_interface0_bank_bus_dat_w[3:0];
assign netsoc_csrbank0_leds_out0_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[2:0] == 1'd0));
assign netsoc_csrbank0_switches_in_r = netsoc_interface0_bank_bus_dat_w[3:0];
assign netsoc_csrbank0_switches_in_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[2:0] == 1'd1));
assign netsoc_eventmanager_status_r = netsoc_interface0_bank_bus_dat_w[3:0];
assign netsoc_eventmanager_status_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[2:0] == 2'd2));
assign netsoc_eventmanager_pending_r = netsoc_interface0_bank_bus_dat_w[3:0];
assign netsoc_eventmanager_pending_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[2:0] == 2'd3));
assign netsoc_csrbank0_buttons_ev_enable0_r = netsoc_interface0_bank_bus_dat_w[3:0];
assign netsoc_csrbank0_buttons_ev_enable0_re = ((netsoc_csrbank0_sel & netsoc_interface0_bank_bus_we) & (netsoc_interface0_bank_bus_adr[2:0] == 3'd4));
assign netsoc_leds_storage = netsoc_leds_storage_full[3:0];
assign netsoc_csrbank0_leds_out0_w = netsoc_leds_storage_full[3:0];
assign netsoc_csrbank0_switches_in_w = netsoc_switches_status[3:0];
assign netsoc_eventmanager_storage = netsoc_eventmanager_storage_full[3:0];
assign netsoc_csrbank0_buttons_ev_enable0_w = netsoc_eventmanager_storage_full[3:0];
assign netsoc_csrbank1_sel = (netsoc_interface1_bank_bus_adr[13:9] == 1'd0);
assign netsoc_netsoc_ctrl_reset_reset_r = netsoc_interface1_bank_bus_dat_w[0];
assign netsoc_netsoc_ctrl_reset_reset_re = ((netsoc_csrbank1_sel & netsoc_interface1_bank_bus_we) & (netsoc_interface1_bank_bus_adr[3:0] == 1'd0));
assign netsoc_csrbank1_scratch3_r = netsoc_interface1_bank_bus_dat_w[7:0];
assign netsoc_csrbank1_scratch3_re = ((netsoc_csrbank1_sel & netsoc_interface1_bank_bus_we) & (netsoc_interface1_bank_bus_adr[3:0] == 1'd1));
assign netsoc_csrbank1_scratch2_r = netsoc_interface1_bank_bus_dat_w[7:0];
assign netsoc_csrbank1_scratch2_re = ((netsoc_csrbank1_sel & netsoc_interface1_bank_bus_we) & (netsoc_interface1_bank_bus_adr[3:0] == 2'd2));
assign netsoc_csrbank1_scratch1_r = netsoc_interface1_bank_bus_dat_w[7:0];
assign netsoc_csrbank1_scratch1_re = ((netsoc_csrbank1_sel & netsoc_interface1_bank_bus_we) & (netsoc_interface1_bank_bus_adr[3:0] == 2'd3));
assign netsoc_csrbank1_scratch0_r = netsoc_interface1_bank_bus_dat_w[7:0];
assign netsoc_csrbank1_scratch0_re = ((netsoc_csrbank1_sel & netsoc_interface1_bank_bus_we) & (netsoc_interface1_bank_bus_adr[3:0] == 3'd4));
assign netsoc_csrbank1_bus_errors3_r = netsoc_interface1_bank_bus_dat_w[7:0];
assign netsoc_csrbank1_bus_errors3_re = ((netsoc_csrbank1_sel & netsoc_interface1_bank_bus_we) & (netsoc_interface1_bank_bus_adr[3:0] == 3'd5));
assign netsoc_csrbank1_bus_errors2_r = netsoc_interface1_bank_bus_dat_w[7:0];
assign netsoc_csrbank1_bus_errors2_re = ((netsoc_csrbank1_sel & netsoc_interface1_bank_bus_we) & (netsoc_interface1_bank_bus_adr[3:0] == 3'd6));
assign netsoc_csrbank1_bus_errors1_r = netsoc_interface1_bank_bus_dat_w[7:0];
assign netsoc_csrbank1_bus_errors1_re = ((netsoc_csrbank1_sel & netsoc_interface1_bank_bus_we) & (netsoc_interface1_bank_bus_adr[3:0] == 3'd7));
assign netsoc_csrbank1_bus_errors0_r = netsoc_interface1_bank_bus_dat_w[7:0];
assign netsoc_csrbank1_bus_errors0_re = ((netsoc_csrbank1_sel & netsoc_interface1_bank_bus_we) & (netsoc_interface1_bank_bus_adr[3:0] == 4'd8));
assign netsoc_netsoc_ctrl_storage = netsoc_netsoc_ctrl_storage_full[31:0];
assign netsoc_csrbank1_scratch3_w = netsoc_netsoc_ctrl_storage_full[31:24];
assign netsoc_csrbank1_scratch2_w = netsoc_netsoc_ctrl_storage_full[23:16];
assign netsoc_csrbank1_scratch1_w = netsoc_netsoc_ctrl_storage_full[15:8];
assign netsoc_csrbank1_scratch0_w = netsoc_netsoc_ctrl_storage_full[7:0];
assign netsoc_csrbank1_bus_errors3_w = netsoc_netsoc_ctrl_bus_errors_status[31:24];
assign netsoc_csrbank1_bus_errors2_w = netsoc_netsoc_ctrl_bus_errors_status[23:16];
assign netsoc_csrbank1_bus_errors1_w = netsoc_netsoc_ctrl_bus_errors_status[15:8];
assign netsoc_csrbank1_bus_errors0_w = netsoc_netsoc_ctrl_bus_errors_status[7:0];
assign netsoc_csrbank2_sel = (netsoc_interface2_bank_bus_adr[13:9] == 4'd11);
assign netsoc_csrbank2_half_sys8x_taps0_r = netsoc_interface2_bank_bus_dat_w[3:0];
assign netsoc_csrbank2_half_sys8x_taps0_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[2:0] == 1'd0));
assign netsoc_csrbank2_dly_sel0_r = netsoc_interface2_bank_bus_dat_w[1:0];
assign netsoc_csrbank2_dly_sel0_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[2:0] == 1'd1));
assign netsoc_a7ddrphy_rdly_dq_rst_r = netsoc_interface2_bank_bus_dat_w[0];
assign netsoc_a7ddrphy_rdly_dq_rst_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[2:0] == 2'd2));
assign netsoc_a7ddrphy_rdly_dq_inc_r = netsoc_interface2_bank_bus_dat_w[0];
assign netsoc_a7ddrphy_rdly_dq_inc_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[2:0] == 2'd3));
assign netsoc_a7ddrphy_rdly_dq_bitslip_rst_r = netsoc_interface2_bank_bus_dat_w[0];
assign netsoc_a7ddrphy_rdly_dq_bitslip_rst_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[2:0] == 3'd4));
assign netsoc_a7ddrphy_rdly_dq_bitslip_r = netsoc_interface2_bank_bus_dat_w[0];
assign netsoc_a7ddrphy_rdly_dq_bitslip_re = ((netsoc_csrbank2_sel & netsoc_interface2_bank_bus_we) & (netsoc_interface2_bank_bus_adr[2:0] == 3'd5));
assign netsoc_a7ddrphy_half_sys8x_taps_storage = netsoc_a7ddrphy_half_sys8x_taps_storage_full[3:0];
assign netsoc_csrbank2_half_sys8x_taps0_w = netsoc_a7ddrphy_half_sys8x_taps_storage_full[3:0];
assign netsoc_a7ddrphy_dly_sel_storage = netsoc_a7ddrphy_dly_sel_storage_full[1:0];
assign netsoc_csrbank2_dly_sel0_w = netsoc_a7ddrphy_dly_sel_storage_full[1:0];
assign netsoc_csrbank3_sel = (netsoc_interface3_bank_bus_adr[13:9] == 4'd15);
assign netsoc_csrbank3_sram_writer_slot_r = netsoc_interface3_bank_bus_dat_w[0];
assign netsoc_csrbank3_sram_writer_slot_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 1'd0));
assign netsoc_csrbank3_sram_writer_length3_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_sram_writer_length3_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 1'd1));
assign netsoc_csrbank3_sram_writer_length2_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_sram_writer_length2_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 2'd2));
assign netsoc_csrbank3_sram_writer_length1_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_sram_writer_length1_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 2'd3));
assign netsoc_csrbank3_sram_writer_length0_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_sram_writer_length0_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 3'd4));
assign netsoc_csrbank3_sram_writer_errors3_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_sram_writer_errors3_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 3'd5));
assign netsoc_csrbank3_sram_writer_errors2_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_sram_writer_errors2_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 3'd6));
assign netsoc_csrbank3_sram_writer_errors1_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_sram_writer_errors1_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 3'd7));
assign netsoc_csrbank3_sram_writer_errors0_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_sram_writer_errors0_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 4'd8));
assign ethmac_writer_status_r = netsoc_interface3_bank_bus_dat_w[0];
assign ethmac_writer_status_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 4'd9));
assign ethmac_writer_pending_r = netsoc_interface3_bank_bus_dat_w[0];
assign ethmac_writer_pending_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 4'd10));
assign netsoc_csrbank3_sram_writer_ev_enable0_r = netsoc_interface3_bank_bus_dat_w[0];
assign netsoc_csrbank3_sram_writer_ev_enable0_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 4'd11));
assign ethmac_reader_start_r = netsoc_interface3_bank_bus_dat_w[0];
assign ethmac_reader_start_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 4'd12));
assign netsoc_csrbank3_sram_reader_ready_r = netsoc_interface3_bank_bus_dat_w[0];
assign netsoc_csrbank3_sram_reader_ready_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 4'd13));
assign netsoc_csrbank3_sram_reader_level_r = netsoc_interface3_bank_bus_dat_w[1:0];
assign netsoc_csrbank3_sram_reader_level_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 4'd14));
assign netsoc_csrbank3_sram_reader_slot0_r = netsoc_interface3_bank_bus_dat_w[0];
assign netsoc_csrbank3_sram_reader_slot0_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 4'd15));
assign netsoc_csrbank3_sram_reader_length1_r = netsoc_interface3_bank_bus_dat_w[2:0];
assign netsoc_csrbank3_sram_reader_length1_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 5'd16));
assign netsoc_csrbank3_sram_reader_length0_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_sram_reader_length0_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 5'd17));
assign ethmac_reader_eventmanager_status_r = netsoc_interface3_bank_bus_dat_w[0];
assign ethmac_reader_eventmanager_status_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 5'd18));
assign ethmac_reader_eventmanager_pending_r = netsoc_interface3_bank_bus_dat_w[0];
assign ethmac_reader_eventmanager_pending_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 5'd19));
assign netsoc_csrbank3_sram_reader_ev_enable0_r = netsoc_interface3_bank_bus_dat_w[0];
assign netsoc_csrbank3_sram_reader_ev_enable0_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 5'd20));
assign netsoc_csrbank3_preamble_crc_r = netsoc_interface3_bank_bus_dat_w[0];
assign netsoc_csrbank3_preamble_crc_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 5'd21));
assign netsoc_csrbank3_preamble_errors3_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_preamble_errors3_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 5'd22));
assign netsoc_csrbank3_preamble_errors2_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_preamble_errors2_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 5'd23));
assign netsoc_csrbank3_preamble_errors1_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_preamble_errors1_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 5'd24));
assign netsoc_csrbank3_preamble_errors0_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_preamble_errors0_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 5'd25));
assign netsoc_csrbank3_crc_errors3_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_crc_errors3_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 5'd26));
assign netsoc_csrbank3_crc_errors2_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_crc_errors2_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 5'd27));
assign netsoc_csrbank3_crc_errors1_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_crc_errors1_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 5'd28));
assign netsoc_csrbank3_crc_errors0_r = netsoc_interface3_bank_bus_dat_w[7:0];
assign netsoc_csrbank3_crc_errors0_re = ((netsoc_csrbank3_sel & netsoc_interface3_bank_bus_we) & (netsoc_interface3_bank_bus_adr[4:0] == 5'd29));
assign netsoc_csrbank3_sram_writer_slot_w = ethmac_writer_slot_status;
assign netsoc_csrbank3_sram_writer_length3_w = ethmac_writer_length_status[31:24];
assign netsoc_csrbank3_sram_writer_length2_w = ethmac_writer_length_status[23:16];
assign netsoc_csrbank3_sram_writer_length1_w = ethmac_writer_length_status[15:8];
assign netsoc_csrbank3_sram_writer_length0_w = ethmac_writer_length_status[7:0];
assign netsoc_csrbank3_sram_writer_errors3_w = ethmac_writer_errors_status[31:24];
assign netsoc_csrbank3_sram_writer_errors2_w = ethmac_writer_errors_status[23:16];
assign netsoc_csrbank3_sram_writer_errors1_w = ethmac_writer_errors_status[15:8];
assign netsoc_csrbank3_sram_writer_errors0_w = ethmac_writer_errors_status[7:0];
assign ethmac_writer_storage = ethmac_writer_storage_full;
assign netsoc_csrbank3_sram_writer_ev_enable0_w = ethmac_writer_storage_full;
assign netsoc_csrbank3_sram_reader_ready_w = ethmac_reader_ready_status;
assign netsoc_csrbank3_sram_reader_level_w = ethmac_reader_level_status[1:0];
assign ethmac_reader_slot_storage = ethmac_reader_slot_storage_full;
assign netsoc_csrbank3_sram_reader_slot0_w = ethmac_reader_slot_storage_full;
assign ethmac_reader_length_storage = ethmac_reader_length_storage_full[10:0];
assign netsoc_csrbank3_sram_reader_length1_w = ethmac_reader_length_storage_full[10:8];
assign netsoc_csrbank3_sram_reader_length0_w = ethmac_reader_length_storage_full[7:0];
assign ethmac_reader_eventmanager_storage = ethmac_reader_eventmanager_storage_full;
assign netsoc_csrbank3_sram_reader_ev_enable0_w = ethmac_reader_eventmanager_storage_full;
assign netsoc_csrbank3_preamble_crc_w = ethmac_preamble_crc_status;
assign netsoc_csrbank3_preamble_errors3_w = ethmac_preamble_errors_status[31:24];
assign netsoc_csrbank3_preamble_errors2_w = ethmac_preamble_errors_status[23:16];
assign netsoc_csrbank3_preamble_errors1_w = ethmac_preamble_errors_status[15:8];
assign netsoc_csrbank3_preamble_errors0_w = ethmac_preamble_errors_status[7:0];
assign netsoc_csrbank3_crc_errors3_w = ethmac_crc_errors_status[31:24];
assign netsoc_csrbank3_crc_errors2_w = ethmac_crc_errors_status[23:16];
assign netsoc_csrbank3_crc_errors1_w = ethmac_crc_errors_status[15:8];
assign netsoc_csrbank3_crc_errors0_w = ethmac_crc_errors_status[7:0];
assign netsoc_csrbank4_sel = (netsoc_interface4_bank_bus_adr[13:9] == 4'd14);
assign netsoc_csrbank4_crg_reset0_r = netsoc_interface4_bank_bus_dat_w[0];
assign netsoc_csrbank4_crg_reset0_re = ((netsoc_csrbank4_sel & netsoc_interface4_bank_bus_we) & (netsoc_interface4_bank_bus_adr[1:0] == 1'd0));
assign netsoc_csrbank4_mdio_w0_r = netsoc_interface4_bank_bus_dat_w[2:0];
assign netsoc_csrbank4_mdio_w0_re = ((netsoc_csrbank4_sel & netsoc_interface4_bank_bus_we) & (netsoc_interface4_bank_bus_adr[1:0] == 1'd1));
assign netsoc_csrbank4_mdio_r_r = netsoc_interface4_bank_bus_dat_w[0];
assign netsoc_csrbank4_mdio_r_re = ((netsoc_csrbank4_sel & netsoc_interface4_bank_bus_we) & (netsoc_interface4_bank_bus_adr[1:0] == 2'd2));
assign ethphy_reset_storage = ethphy_reset_storage_full;
assign netsoc_csrbank4_crg_reset0_w = ethphy_reset_storage_full;
assign ethphy_storage = ethphy_storage_full[2:0];
assign netsoc_csrbank4_mdio_w0_w = ethphy_storage_full[2:0];
assign netsoc_csrbank4_mdio_r_w = ethphy_status;
assign netsoc_sel = (netsoc_sram_bus_adr[13:9] == 3'd4);
always @(*) begin
	netsoc_sram_bus_dat_r <= 8'd0;
	if (netsoc_sel_r) begin
		netsoc_sram_bus_dat_r <= netsoc_dat_r;
	end
end
assign netsoc_adr = netsoc_sram_bus_adr[2:0];
assign netsoc_csrbank5_sel = (netsoc_interface5_bank_bus_adr[13:9] == 4'd12);
assign netsoc_csrbank5_dna_id7_r = netsoc_interface5_bank_bus_dat_w[0];
assign netsoc_csrbank5_dna_id7_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 1'd0));
assign netsoc_csrbank5_dna_id6_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_dna_id6_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 1'd1));
assign netsoc_csrbank5_dna_id5_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_dna_id5_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 2'd2));
assign netsoc_csrbank5_dna_id4_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_dna_id4_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 2'd3));
assign netsoc_csrbank5_dna_id3_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_dna_id3_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 3'd4));
assign netsoc_csrbank5_dna_id2_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_dna_id2_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 3'd5));
assign netsoc_csrbank5_dna_id1_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_dna_id1_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 3'd6));
assign netsoc_csrbank5_dna_id0_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_dna_id0_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 3'd7));
assign netsoc_csrbank5_git_commit19_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_git_commit19_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 4'd8));
assign netsoc_csrbank5_git_commit18_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_git_commit18_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 4'd9));
assign netsoc_csrbank5_git_commit17_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_git_commit17_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 4'd10));
assign netsoc_csrbank5_git_commit16_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_git_commit16_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 4'd11));
assign netsoc_csrbank5_git_commit15_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_git_commit15_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 4'd12));
assign netsoc_csrbank5_git_commit14_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_git_commit14_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 4'd13));
assign netsoc_csrbank5_git_commit13_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_git_commit13_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 4'd14));
assign netsoc_csrbank5_git_commit12_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_git_commit12_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 4'd15));
assign netsoc_csrbank5_git_commit11_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_git_commit11_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 5'd16));
assign netsoc_csrbank5_git_commit10_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_git_commit10_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 5'd17));
assign netsoc_csrbank5_git_commit9_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_git_commit9_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 5'd18));
assign netsoc_csrbank5_git_commit8_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_git_commit8_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 5'd19));
assign netsoc_csrbank5_git_commit7_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_git_commit7_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 5'd20));
assign netsoc_csrbank5_git_commit6_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_git_commit6_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 5'd21));
assign netsoc_csrbank5_git_commit5_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_git_commit5_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 5'd22));
assign netsoc_csrbank5_git_commit4_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_git_commit4_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 5'd23));
assign netsoc_csrbank5_git_commit3_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_git_commit3_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 5'd24));
assign netsoc_csrbank5_git_commit2_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_git_commit2_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 5'd25));
assign netsoc_csrbank5_git_commit1_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_git_commit1_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 5'd26));
assign netsoc_csrbank5_git_commit0_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_git_commit0_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 5'd27));
assign netsoc_csrbank5_platform_platform7_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_platform_platform7_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 5'd28));
assign netsoc_csrbank5_platform_platform6_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_platform_platform6_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 5'd29));
assign netsoc_csrbank5_platform_platform5_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_platform_platform5_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 5'd30));
assign netsoc_csrbank5_platform_platform4_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_platform_platform4_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 5'd31));
assign netsoc_csrbank5_platform_platform3_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_platform_platform3_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 6'd32));
assign netsoc_csrbank5_platform_platform2_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_platform_platform2_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 6'd33));
assign netsoc_csrbank5_platform_platform1_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_platform_platform1_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 6'd34));
assign netsoc_csrbank5_platform_platform0_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_platform_platform0_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 6'd35));
assign netsoc_csrbank5_platform_target7_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_platform_target7_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 6'd36));
assign netsoc_csrbank5_platform_target6_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_platform_target6_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 6'd37));
assign netsoc_csrbank5_platform_target5_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_platform_target5_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 6'd38));
assign netsoc_csrbank5_platform_target4_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_platform_target4_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 6'd39));
assign netsoc_csrbank5_platform_target3_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_platform_target3_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 6'd40));
assign netsoc_csrbank5_platform_target2_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_platform_target2_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 6'd41));
assign netsoc_csrbank5_platform_target1_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_platform_target1_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 6'd42));
assign netsoc_csrbank5_platform_target0_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_platform_target0_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 6'd43));
assign netsoc_csrbank5_xadc_temperature1_r = netsoc_interface5_bank_bus_dat_w[3:0];
assign netsoc_csrbank5_xadc_temperature1_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 6'd44));
assign netsoc_csrbank5_xadc_temperature0_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_xadc_temperature0_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 6'd45));
assign netsoc_csrbank5_xadc_vccint1_r = netsoc_interface5_bank_bus_dat_w[3:0];
assign netsoc_csrbank5_xadc_vccint1_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 6'd46));
assign netsoc_csrbank5_xadc_vccint0_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_xadc_vccint0_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 6'd47));
assign netsoc_csrbank5_xadc_vccaux1_r = netsoc_interface5_bank_bus_dat_w[3:0];
assign netsoc_csrbank5_xadc_vccaux1_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 6'd48));
assign netsoc_csrbank5_xadc_vccaux0_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_xadc_vccaux0_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 6'd49));
assign netsoc_csrbank5_xadc_vccbram1_r = netsoc_interface5_bank_bus_dat_w[3:0];
assign netsoc_csrbank5_xadc_vccbram1_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 6'd50));
assign netsoc_csrbank5_xadc_vccbram0_r = netsoc_interface5_bank_bus_dat_w[7:0];
assign netsoc_csrbank5_xadc_vccbram0_re = ((netsoc_csrbank5_sel & netsoc_interface5_bank_bus_we) & (netsoc_interface5_bank_bus_adr[5:0] == 6'd51));
assign netsoc_csrbank5_dna_id7_w = netsoc_dna_status[56];
assign netsoc_csrbank5_dna_id6_w = netsoc_dna_status[55:48];
assign netsoc_csrbank5_dna_id5_w = netsoc_dna_status[47:40];
assign netsoc_csrbank5_dna_id4_w = netsoc_dna_status[39:32];
assign netsoc_csrbank5_dna_id3_w = netsoc_dna_status[31:24];
assign netsoc_csrbank5_dna_id2_w = netsoc_dna_status[23:16];
assign netsoc_csrbank5_dna_id1_w = netsoc_dna_status[15:8];
assign netsoc_csrbank5_dna_id0_w = netsoc_dna_status[7:0];
assign netsoc_csrbank5_git_commit19_w = netsoc_git_status[159:152];
assign netsoc_csrbank5_git_commit18_w = netsoc_git_status[151:144];
assign netsoc_csrbank5_git_commit17_w = netsoc_git_status[143:136];
assign netsoc_csrbank5_git_commit16_w = netsoc_git_status[135:128];
assign netsoc_csrbank5_git_commit15_w = netsoc_git_status[127:120];
assign netsoc_csrbank5_git_commit14_w = netsoc_git_status[119:112];
assign netsoc_csrbank5_git_commit13_w = netsoc_git_status[111:104];
assign netsoc_csrbank5_git_commit12_w = netsoc_git_status[103:96];
assign netsoc_csrbank5_git_commit11_w = netsoc_git_status[95:88];
assign netsoc_csrbank5_git_commit10_w = netsoc_git_status[87:80];
assign netsoc_csrbank5_git_commit9_w = netsoc_git_status[79:72];
assign netsoc_csrbank5_git_commit8_w = netsoc_git_status[71:64];
assign netsoc_csrbank5_git_commit7_w = netsoc_git_status[63:56];
assign netsoc_csrbank5_git_commit6_w = netsoc_git_status[55:48];
assign netsoc_csrbank5_git_commit5_w = netsoc_git_status[47:40];
assign netsoc_csrbank5_git_commit4_w = netsoc_git_status[39:32];
assign netsoc_csrbank5_git_commit3_w = netsoc_git_status[31:24];
assign netsoc_csrbank5_git_commit2_w = netsoc_git_status[23:16];
assign netsoc_csrbank5_git_commit1_w = netsoc_git_status[15:8];
assign netsoc_csrbank5_git_commit0_w = netsoc_git_status[7:0];
assign netsoc_csrbank5_platform_platform7_w = netsoc_platform_status[63:56];
assign netsoc_csrbank5_platform_platform6_w = netsoc_platform_status[55:48];
assign netsoc_csrbank5_platform_platform5_w = netsoc_platform_status[47:40];
assign netsoc_csrbank5_platform_platform4_w = netsoc_platform_status[39:32];
assign netsoc_csrbank5_platform_platform3_w = netsoc_platform_status[31:24];
assign netsoc_csrbank5_platform_platform2_w = netsoc_platform_status[23:16];
assign netsoc_csrbank5_platform_platform1_w = netsoc_platform_status[15:8];
assign netsoc_csrbank5_platform_platform0_w = netsoc_platform_status[7:0];
assign netsoc_csrbank5_platform_target7_w = netsoc_target_status[63:56];
assign netsoc_csrbank5_platform_target6_w = netsoc_target_status[55:48];
assign netsoc_csrbank5_platform_target5_w = netsoc_target_status[47:40];
assign netsoc_csrbank5_platform_target4_w = netsoc_target_status[39:32];
assign netsoc_csrbank5_platform_target3_w = netsoc_target_status[31:24];
assign netsoc_csrbank5_platform_target2_w = netsoc_target_status[23:16];
assign netsoc_csrbank5_platform_target1_w = netsoc_target_status[15:8];
assign netsoc_csrbank5_platform_target0_w = netsoc_target_status[7:0];
assign netsoc_csrbank5_xadc_temperature1_w = netsoc_temperature_status[11:8];
assign netsoc_csrbank5_xadc_temperature0_w = netsoc_temperature_status[7:0];
assign netsoc_csrbank5_xadc_vccint1_w = netsoc_vccint_status[11:8];
assign netsoc_csrbank5_xadc_vccint0_w = netsoc_vccint_status[7:0];
assign netsoc_csrbank5_xadc_vccaux1_w = netsoc_vccaux_status[11:8];
assign netsoc_csrbank5_xadc_vccaux0_w = netsoc_vccaux_status[7:0];
assign netsoc_csrbank5_xadc_vccbram1_w = netsoc_vccbram_status[11:8];
assign netsoc_csrbank5_xadc_vccbram0_w = netsoc_vccbram_status[7:0];
assign netsoc_csrbank6_sel = (netsoc_interface6_bank_bus_adr[13:9] == 4'd8);
assign netsoc_csrbank6_dfii_control0_r = netsoc_interface6_bank_bus_dat_w[3:0];
assign netsoc_csrbank6_dfii_control0_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 1'd0));
assign netsoc_csrbank6_dfii_pi0_command0_r = netsoc_interface6_bank_bus_dat_w[5:0];
assign netsoc_csrbank6_dfii_pi0_command0_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 1'd1));
assign netsoc_sdram_phaseinjector0_command_issue_r = netsoc_interface6_bank_bus_dat_w[0];
assign netsoc_sdram_phaseinjector0_command_issue_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 2'd2));
assign netsoc_csrbank6_dfii_pi0_address1_r = netsoc_interface6_bank_bus_dat_w[5:0];
assign netsoc_csrbank6_dfii_pi0_address1_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 2'd3));
assign netsoc_csrbank6_dfii_pi0_address0_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi0_address0_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 3'd4));
assign netsoc_csrbank6_dfii_pi0_baddress0_r = netsoc_interface6_bank_bus_dat_w[2:0];
assign netsoc_csrbank6_dfii_pi0_baddress0_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 3'd5));
assign netsoc_csrbank6_dfii_pi0_wrdata3_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi0_wrdata3_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 3'd6));
assign netsoc_csrbank6_dfii_pi0_wrdata2_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi0_wrdata2_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 3'd7));
assign netsoc_csrbank6_dfii_pi0_wrdata1_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi0_wrdata1_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 4'd8));
assign netsoc_csrbank6_dfii_pi0_wrdata0_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi0_wrdata0_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 4'd9));
assign netsoc_csrbank6_dfii_pi0_rddata3_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi0_rddata3_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 4'd10));
assign netsoc_csrbank6_dfii_pi0_rddata2_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi0_rddata2_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 4'd11));
assign netsoc_csrbank6_dfii_pi0_rddata1_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi0_rddata1_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 4'd12));
assign netsoc_csrbank6_dfii_pi0_rddata0_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi0_rddata0_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 4'd13));
assign netsoc_csrbank6_dfii_pi1_command0_r = netsoc_interface6_bank_bus_dat_w[5:0];
assign netsoc_csrbank6_dfii_pi1_command0_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 4'd14));
assign netsoc_sdram_phaseinjector1_command_issue_r = netsoc_interface6_bank_bus_dat_w[0];
assign netsoc_sdram_phaseinjector1_command_issue_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 4'd15));
assign netsoc_csrbank6_dfii_pi1_address1_r = netsoc_interface6_bank_bus_dat_w[5:0];
assign netsoc_csrbank6_dfii_pi1_address1_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 5'd16));
assign netsoc_csrbank6_dfii_pi1_address0_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi1_address0_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 5'd17));
assign netsoc_csrbank6_dfii_pi1_baddress0_r = netsoc_interface6_bank_bus_dat_w[2:0];
assign netsoc_csrbank6_dfii_pi1_baddress0_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 5'd18));
assign netsoc_csrbank6_dfii_pi1_wrdata3_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi1_wrdata3_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 5'd19));
assign netsoc_csrbank6_dfii_pi1_wrdata2_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi1_wrdata2_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 5'd20));
assign netsoc_csrbank6_dfii_pi1_wrdata1_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi1_wrdata1_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 5'd21));
assign netsoc_csrbank6_dfii_pi1_wrdata0_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi1_wrdata0_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 5'd22));
assign netsoc_csrbank6_dfii_pi1_rddata3_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi1_rddata3_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 5'd23));
assign netsoc_csrbank6_dfii_pi1_rddata2_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi1_rddata2_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 5'd24));
assign netsoc_csrbank6_dfii_pi1_rddata1_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi1_rddata1_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 5'd25));
assign netsoc_csrbank6_dfii_pi1_rddata0_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi1_rddata0_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 5'd26));
assign netsoc_csrbank6_dfii_pi2_command0_r = netsoc_interface6_bank_bus_dat_w[5:0];
assign netsoc_csrbank6_dfii_pi2_command0_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 5'd27));
assign netsoc_sdram_phaseinjector2_command_issue_r = netsoc_interface6_bank_bus_dat_w[0];
assign netsoc_sdram_phaseinjector2_command_issue_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 5'd28));
assign netsoc_csrbank6_dfii_pi2_address1_r = netsoc_interface6_bank_bus_dat_w[5:0];
assign netsoc_csrbank6_dfii_pi2_address1_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 5'd29));
assign netsoc_csrbank6_dfii_pi2_address0_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi2_address0_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 5'd30));
assign netsoc_csrbank6_dfii_pi2_baddress0_r = netsoc_interface6_bank_bus_dat_w[2:0];
assign netsoc_csrbank6_dfii_pi2_baddress0_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 5'd31));
assign netsoc_csrbank6_dfii_pi2_wrdata3_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi2_wrdata3_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd32));
assign netsoc_csrbank6_dfii_pi2_wrdata2_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi2_wrdata2_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd33));
assign netsoc_csrbank6_dfii_pi2_wrdata1_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi2_wrdata1_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd34));
assign netsoc_csrbank6_dfii_pi2_wrdata0_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi2_wrdata0_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd35));
assign netsoc_csrbank6_dfii_pi2_rddata3_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi2_rddata3_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd36));
assign netsoc_csrbank6_dfii_pi2_rddata2_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi2_rddata2_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd37));
assign netsoc_csrbank6_dfii_pi2_rddata1_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi2_rddata1_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd38));
assign netsoc_csrbank6_dfii_pi2_rddata0_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi2_rddata0_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd39));
assign netsoc_csrbank6_dfii_pi3_command0_r = netsoc_interface6_bank_bus_dat_w[5:0];
assign netsoc_csrbank6_dfii_pi3_command0_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd40));
assign netsoc_sdram_phaseinjector3_command_issue_r = netsoc_interface6_bank_bus_dat_w[0];
assign netsoc_sdram_phaseinjector3_command_issue_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd41));
assign netsoc_csrbank6_dfii_pi3_address1_r = netsoc_interface6_bank_bus_dat_w[5:0];
assign netsoc_csrbank6_dfii_pi3_address1_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd42));
assign netsoc_csrbank6_dfii_pi3_address0_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi3_address0_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd43));
assign netsoc_csrbank6_dfii_pi3_baddress0_r = netsoc_interface6_bank_bus_dat_w[2:0];
assign netsoc_csrbank6_dfii_pi3_baddress0_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd44));
assign netsoc_csrbank6_dfii_pi3_wrdata3_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi3_wrdata3_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd45));
assign netsoc_csrbank6_dfii_pi3_wrdata2_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi3_wrdata2_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd46));
assign netsoc_csrbank6_dfii_pi3_wrdata1_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi3_wrdata1_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd47));
assign netsoc_csrbank6_dfii_pi3_wrdata0_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi3_wrdata0_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd48));
assign netsoc_csrbank6_dfii_pi3_rddata3_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi3_rddata3_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd49));
assign netsoc_csrbank6_dfii_pi3_rddata2_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi3_rddata2_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd50));
assign netsoc_csrbank6_dfii_pi3_rddata1_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi3_rddata1_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd51));
assign netsoc_csrbank6_dfii_pi3_rddata0_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_dfii_pi3_rddata0_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd52));
assign netsoc_sdram_bandwidth_update_r = netsoc_interface6_bank_bus_dat_w[0];
assign netsoc_sdram_bandwidth_update_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd53));
assign netsoc_csrbank6_controller_bandwidth_nreads2_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_controller_bandwidth_nreads2_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd54));
assign netsoc_csrbank6_controller_bandwidth_nreads1_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_controller_bandwidth_nreads1_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd55));
assign netsoc_csrbank6_controller_bandwidth_nreads0_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_controller_bandwidth_nreads0_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd56));
assign netsoc_csrbank6_controller_bandwidth_nwrites2_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_controller_bandwidth_nwrites2_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd57));
assign netsoc_csrbank6_controller_bandwidth_nwrites1_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_controller_bandwidth_nwrites1_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd58));
assign netsoc_csrbank6_controller_bandwidth_nwrites0_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_controller_bandwidth_nwrites0_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd59));
assign netsoc_csrbank6_controller_bandwidth_data_width_r = netsoc_interface6_bank_bus_dat_w[7:0];
assign netsoc_csrbank6_controller_bandwidth_data_width_re = ((netsoc_csrbank6_sel & netsoc_interface6_bank_bus_we) & (netsoc_interface6_bank_bus_adr[5:0] == 6'd60));
assign netsoc_sdram_storage = netsoc_sdram_storage_full[3:0];
assign netsoc_csrbank6_dfii_control0_w = netsoc_sdram_storage_full[3:0];
assign netsoc_sdram_phaseinjector0_command_storage = netsoc_sdram_phaseinjector0_command_storage_full[5:0];
assign netsoc_csrbank6_dfii_pi0_command0_w = netsoc_sdram_phaseinjector0_command_storage_full[5:0];
assign netsoc_sdram_phaseinjector0_address_storage = netsoc_sdram_phaseinjector0_address_storage_full[13:0];
assign netsoc_csrbank6_dfii_pi0_address1_w = netsoc_sdram_phaseinjector0_address_storage_full[13:8];
assign netsoc_csrbank6_dfii_pi0_address0_w = netsoc_sdram_phaseinjector0_address_storage_full[7:0];
assign netsoc_sdram_phaseinjector0_baddress_storage = netsoc_sdram_phaseinjector0_baddress_storage_full[2:0];
assign netsoc_csrbank6_dfii_pi0_baddress0_w = netsoc_sdram_phaseinjector0_baddress_storage_full[2:0];
assign netsoc_sdram_phaseinjector0_wrdata_storage = netsoc_sdram_phaseinjector0_wrdata_storage_full[31:0];
assign netsoc_csrbank6_dfii_pi0_wrdata3_w = netsoc_sdram_phaseinjector0_wrdata_storage_full[31:24];
assign netsoc_csrbank6_dfii_pi0_wrdata2_w = netsoc_sdram_phaseinjector0_wrdata_storage_full[23:16];
assign netsoc_csrbank6_dfii_pi0_wrdata1_w = netsoc_sdram_phaseinjector0_wrdata_storage_full[15:8];
assign netsoc_csrbank6_dfii_pi0_wrdata0_w = netsoc_sdram_phaseinjector0_wrdata_storage_full[7:0];
assign netsoc_csrbank6_dfii_pi0_rddata3_w = netsoc_sdram_phaseinjector0_status[31:24];
assign netsoc_csrbank6_dfii_pi0_rddata2_w = netsoc_sdram_phaseinjector0_status[23:16];
assign netsoc_csrbank6_dfii_pi0_rddata1_w = netsoc_sdram_phaseinjector0_status[15:8];
assign netsoc_csrbank6_dfii_pi0_rddata0_w = netsoc_sdram_phaseinjector0_status[7:0];
assign netsoc_sdram_phaseinjector1_command_storage = netsoc_sdram_phaseinjector1_command_storage_full[5:0];
assign netsoc_csrbank6_dfii_pi1_command0_w = netsoc_sdram_phaseinjector1_command_storage_full[5:0];
assign netsoc_sdram_phaseinjector1_address_storage = netsoc_sdram_phaseinjector1_address_storage_full[13:0];
assign netsoc_csrbank6_dfii_pi1_address1_w = netsoc_sdram_phaseinjector1_address_storage_full[13:8];
assign netsoc_csrbank6_dfii_pi1_address0_w = netsoc_sdram_phaseinjector1_address_storage_full[7:0];
assign netsoc_sdram_phaseinjector1_baddress_storage = netsoc_sdram_phaseinjector1_baddress_storage_full[2:0];
assign netsoc_csrbank6_dfii_pi1_baddress0_w = netsoc_sdram_phaseinjector1_baddress_storage_full[2:0];
assign netsoc_sdram_phaseinjector1_wrdata_storage = netsoc_sdram_phaseinjector1_wrdata_storage_full[31:0];
assign netsoc_csrbank6_dfii_pi1_wrdata3_w = netsoc_sdram_phaseinjector1_wrdata_storage_full[31:24];
assign netsoc_csrbank6_dfii_pi1_wrdata2_w = netsoc_sdram_phaseinjector1_wrdata_storage_full[23:16];
assign netsoc_csrbank6_dfii_pi1_wrdata1_w = netsoc_sdram_phaseinjector1_wrdata_storage_full[15:8];
assign netsoc_csrbank6_dfii_pi1_wrdata0_w = netsoc_sdram_phaseinjector1_wrdata_storage_full[7:0];
assign netsoc_csrbank6_dfii_pi1_rddata3_w = netsoc_sdram_phaseinjector1_status[31:24];
assign netsoc_csrbank6_dfii_pi1_rddata2_w = netsoc_sdram_phaseinjector1_status[23:16];
assign netsoc_csrbank6_dfii_pi1_rddata1_w = netsoc_sdram_phaseinjector1_status[15:8];
assign netsoc_csrbank6_dfii_pi1_rddata0_w = netsoc_sdram_phaseinjector1_status[7:0];
assign netsoc_sdram_phaseinjector2_command_storage = netsoc_sdram_phaseinjector2_command_storage_full[5:0];
assign netsoc_csrbank6_dfii_pi2_command0_w = netsoc_sdram_phaseinjector2_command_storage_full[5:0];
assign netsoc_sdram_phaseinjector2_address_storage = netsoc_sdram_phaseinjector2_address_storage_full[13:0];
assign netsoc_csrbank6_dfii_pi2_address1_w = netsoc_sdram_phaseinjector2_address_storage_full[13:8];
assign netsoc_csrbank6_dfii_pi2_address0_w = netsoc_sdram_phaseinjector2_address_storage_full[7:0];
assign netsoc_sdram_phaseinjector2_baddress_storage = netsoc_sdram_phaseinjector2_baddress_storage_full[2:0];
assign netsoc_csrbank6_dfii_pi2_baddress0_w = netsoc_sdram_phaseinjector2_baddress_storage_full[2:0];
assign netsoc_sdram_phaseinjector2_wrdata_storage = netsoc_sdram_phaseinjector2_wrdata_storage_full[31:0];
assign netsoc_csrbank6_dfii_pi2_wrdata3_w = netsoc_sdram_phaseinjector2_wrdata_storage_full[31:24];
assign netsoc_csrbank6_dfii_pi2_wrdata2_w = netsoc_sdram_phaseinjector2_wrdata_storage_full[23:16];
assign netsoc_csrbank6_dfii_pi2_wrdata1_w = netsoc_sdram_phaseinjector2_wrdata_storage_full[15:8];
assign netsoc_csrbank6_dfii_pi2_wrdata0_w = netsoc_sdram_phaseinjector2_wrdata_storage_full[7:0];
assign netsoc_csrbank6_dfii_pi2_rddata3_w = netsoc_sdram_phaseinjector2_status[31:24];
assign netsoc_csrbank6_dfii_pi2_rddata2_w = netsoc_sdram_phaseinjector2_status[23:16];
assign netsoc_csrbank6_dfii_pi2_rddata1_w = netsoc_sdram_phaseinjector2_status[15:8];
assign netsoc_csrbank6_dfii_pi2_rddata0_w = netsoc_sdram_phaseinjector2_status[7:0];
assign netsoc_sdram_phaseinjector3_command_storage = netsoc_sdram_phaseinjector3_command_storage_full[5:0];
assign netsoc_csrbank6_dfii_pi3_command0_w = netsoc_sdram_phaseinjector3_command_storage_full[5:0];
assign netsoc_sdram_phaseinjector3_address_storage = netsoc_sdram_phaseinjector3_address_storage_full[13:0];
assign netsoc_csrbank6_dfii_pi3_address1_w = netsoc_sdram_phaseinjector3_address_storage_full[13:8];
assign netsoc_csrbank6_dfii_pi3_address0_w = netsoc_sdram_phaseinjector3_address_storage_full[7:0];
assign netsoc_sdram_phaseinjector3_baddress_storage = netsoc_sdram_phaseinjector3_baddress_storage_full[2:0];
assign netsoc_csrbank6_dfii_pi3_baddress0_w = netsoc_sdram_phaseinjector3_baddress_storage_full[2:0];
assign netsoc_sdram_phaseinjector3_wrdata_storage = netsoc_sdram_phaseinjector3_wrdata_storage_full[31:0];
assign netsoc_csrbank6_dfii_pi3_wrdata3_w = netsoc_sdram_phaseinjector3_wrdata_storage_full[31:24];
assign netsoc_csrbank6_dfii_pi3_wrdata2_w = netsoc_sdram_phaseinjector3_wrdata_storage_full[23:16];
assign netsoc_csrbank6_dfii_pi3_wrdata1_w = netsoc_sdram_phaseinjector3_wrdata_storage_full[15:8];
assign netsoc_csrbank6_dfii_pi3_wrdata0_w = netsoc_sdram_phaseinjector3_wrdata_storage_full[7:0];
assign netsoc_csrbank6_dfii_pi3_rddata3_w = netsoc_sdram_phaseinjector3_status[31:24];
assign netsoc_csrbank6_dfii_pi3_rddata2_w = netsoc_sdram_phaseinjector3_status[23:16];
assign netsoc_csrbank6_dfii_pi3_rddata1_w = netsoc_sdram_phaseinjector3_status[15:8];
assign netsoc_csrbank6_dfii_pi3_rddata0_w = netsoc_sdram_phaseinjector3_status[7:0];
assign netsoc_csrbank6_controller_bandwidth_nreads2_w = netsoc_sdram_bandwidth_nreads_status[23:16];
assign netsoc_csrbank6_controller_bandwidth_nreads1_w = netsoc_sdram_bandwidth_nreads_status[15:8];
assign netsoc_csrbank6_controller_bandwidth_nreads0_w = netsoc_sdram_bandwidth_nreads_status[7:0];
assign netsoc_csrbank6_controller_bandwidth_nwrites2_w = netsoc_sdram_bandwidth_nwrites_status[23:16];
assign netsoc_csrbank6_controller_bandwidth_nwrites1_w = netsoc_sdram_bandwidth_nwrites_status[15:8];
assign netsoc_csrbank6_controller_bandwidth_nwrites0_w = netsoc_sdram_bandwidth_nwrites_status[7:0];
assign netsoc_csrbank6_controller_bandwidth_data_width_w = netsoc_sdram_bandwidth_data_width_status[7:0];
assign netsoc_csrbank7_sel = (netsoc_interface7_bank_bus_adr[13:9] == 4'd10);
assign netsoc_csrbank7_bitbang0_r = netsoc_interface7_bank_bus_dat_w[3:0];
assign netsoc_csrbank7_bitbang0_re = ((netsoc_csrbank7_sel & netsoc_interface7_bank_bus_we) & (netsoc_interface7_bank_bus_adr[1:0] == 1'd0));
assign netsoc_csrbank7_miso_r = netsoc_interface7_bank_bus_dat_w[0];
assign netsoc_csrbank7_miso_re = ((netsoc_csrbank7_sel & netsoc_interface7_bank_bus_we) & (netsoc_interface7_bank_bus_adr[1:0] == 1'd1));
assign netsoc_csrbank7_bitbang_en0_r = netsoc_interface7_bank_bus_dat_w[0];
assign netsoc_csrbank7_bitbang_en0_re = ((netsoc_csrbank7_sel & netsoc_interface7_bank_bus_we) & (netsoc_interface7_bank_bus_adr[1:0] == 2'd2));
assign netsoc_bitbang_storage = netsoc_bitbang_storage_full[3:0];
assign netsoc_csrbank7_bitbang0_w = netsoc_bitbang_storage_full[3:0];
assign netsoc_csrbank7_miso_w = netsoc_miso_status;
assign netsoc_bitbang_en_storage = netsoc_bitbang_en_storage_full;
assign netsoc_csrbank7_bitbang_en0_w = netsoc_bitbang_en_storage_full;
assign netsoc_csrbank8_sel = (netsoc_interface8_bank_bus_adr[13:9] == 3'd5);
assign netsoc_csrbank8_load3_r = netsoc_interface8_bank_bus_dat_w[7:0];
assign netsoc_csrbank8_load3_re = ((netsoc_csrbank8_sel & netsoc_interface8_bank_bus_we) & (netsoc_interface8_bank_bus_adr[4:0] == 1'd0));
assign netsoc_csrbank8_load2_r = netsoc_interface8_bank_bus_dat_w[7:0];
assign netsoc_csrbank8_load2_re = ((netsoc_csrbank8_sel & netsoc_interface8_bank_bus_we) & (netsoc_interface8_bank_bus_adr[4:0] == 1'd1));
assign netsoc_csrbank8_load1_r = netsoc_interface8_bank_bus_dat_w[7:0];
assign netsoc_csrbank8_load1_re = ((netsoc_csrbank8_sel & netsoc_interface8_bank_bus_we) & (netsoc_interface8_bank_bus_adr[4:0] == 2'd2));
assign netsoc_csrbank8_load0_r = netsoc_interface8_bank_bus_dat_w[7:0];
assign netsoc_csrbank8_load0_re = ((netsoc_csrbank8_sel & netsoc_interface8_bank_bus_we) & (netsoc_interface8_bank_bus_adr[4:0] == 2'd3));
assign netsoc_csrbank8_reload3_r = netsoc_interface8_bank_bus_dat_w[7:0];
assign netsoc_csrbank8_reload3_re = ((netsoc_csrbank8_sel & netsoc_interface8_bank_bus_we) & (netsoc_interface8_bank_bus_adr[4:0] == 3'd4));
assign netsoc_csrbank8_reload2_r = netsoc_interface8_bank_bus_dat_w[7:0];
assign netsoc_csrbank8_reload2_re = ((netsoc_csrbank8_sel & netsoc_interface8_bank_bus_we) & (netsoc_interface8_bank_bus_adr[4:0] == 3'd5));
assign netsoc_csrbank8_reload1_r = netsoc_interface8_bank_bus_dat_w[7:0];
assign netsoc_csrbank8_reload1_re = ((netsoc_csrbank8_sel & netsoc_interface8_bank_bus_we) & (netsoc_interface8_bank_bus_adr[4:0] == 3'd6));
assign netsoc_csrbank8_reload0_r = netsoc_interface8_bank_bus_dat_w[7:0];
assign netsoc_csrbank8_reload0_re = ((netsoc_csrbank8_sel & netsoc_interface8_bank_bus_we) & (netsoc_interface8_bank_bus_adr[4:0] == 3'd7));
assign netsoc_csrbank8_en0_r = netsoc_interface8_bank_bus_dat_w[0];
assign netsoc_csrbank8_en0_re = ((netsoc_csrbank8_sel & netsoc_interface8_bank_bus_we) & (netsoc_interface8_bank_bus_adr[4:0] == 4'd8));
assign netsoc_netsoc_timer0_update_value_r = netsoc_interface8_bank_bus_dat_w[0];
assign netsoc_netsoc_timer0_update_value_re = ((netsoc_csrbank8_sel & netsoc_interface8_bank_bus_we) & (netsoc_interface8_bank_bus_adr[4:0] == 4'd9));
assign netsoc_csrbank8_value3_r = netsoc_interface8_bank_bus_dat_w[7:0];
assign netsoc_csrbank8_value3_re = ((netsoc_csrbank8_sel & netsoc_interface8_bank_bus_we) & (netsoc_interface8_bank_bus_adr[4:0] == 4'd10));
assign netsoc_csrbank8_value2_r = netsoc_interface8_bank_bus_dat_w[7:0];
assign netsoc_csrbank8_value2_re = ((netsoc_csrbank8_sel & netsoc_interface8_bank_bus_we) & (netsoc_interface8_bank_bus_adr[4:0] == 4'd11));
assign netsoc_csrbank8_value1_r = netsoc_interface8_bank_bus_dat_w[7:0];
assign netsoc_csrbank8_value1_re = ((netsoc_csrbank8_sel & netsoc_interface8_bank_bus_we) & (netsoc_interface8_bank_bus_adr[4:0] == 4'd12));
assign netsoc_csrbank8_value0_r = netsoc_interface8_bank_bus_dat_w[7:0];
assign netsoc_csrbank8_value0_re = ((netsoc_csrbank8_sel & netsoc_interface8_bank_bus_we) & (netsoc_interface8_bank_bus_adr[4:0] == 4'd13));
assign netsoc_netsoc_timer0_eventmanager_status_r = netsoc_interface8_bank_bus_dat_w[0];
assign netsoc_netsoc_timer0_eventmanager_status_re = ((netsoc_csrbank8_sel & netsoc_interface8_bank_bus_we) & (netsoc_interface8_bank_bus_adr[4:0] == 4'd14));
assign netsoc_netsoc_timer0_eventmanager_pending_r = netsoc_interface8_bank_bus_dat_w[0];
assign netsoc_netsoc_timer0_eventmanager_pending_re = ((netsoc_csrbank8_sel & netsoc_interface8_bank_bus_we) & (netsoc_interface8_bank_bus_adr[4:0] == 4'd15));
assign netsoc_csrbank8_ev_enable0_r = netsoc_interface8_bank_bus_dat_w[0];
assign netsoc_csrbank8_ev_enable0_re = ((netsoc_csrbank8_sel & netsoc_interface8_bank_bus_we) & (netsoc_interface8_bank_bus_adr[4:0] == 5'd16));
assign netsoc_netsoc_timer0_load_storage = netsoc_netsoc_timer0_load_storage_full[31:0];
assign netsoc_csrbank8_load3_w = netsoc_netsoc_timer0_load_storage_full[31:24];
assign netsoc_csrbank8_load2_w = netsoc_netsoc_timer0_load_storage_full[23:16];
assign netsoc_csrbank8_load1_w = netsoc_netsoc_timer0_load_storage_full[15:8];
assign netsoc_csrbank8_load0_w = netsoc_netsoc_timer0_load_storage_full[7:0];
assign netsoc_netsoc_timer0_reload_storage = netsoc_netsoc_timer0_reload_storage_full[31:0];
assign netsoc_csrbank8_reload3_w = netsoc_netsoc_timer0_reload_storage_full[31:24];
assign netsoc_csrbank8_reload2_w = netsoc_netsoc_timer0_reload_storage_full[23:16];
assign netsoc_csrbank8_reload1_w = netsoc_netsoc_timer0_reload_storage_full[15:8];
assign netsoc_csrbank8_reload0_w = netsoc_netsoc_timer0_reload_storage_full[7:0];
assign netsoc_netsoc_timer0_en_storage = netsoc_netsoc_timer0_en_storage_full;
assign netsoc_csrbank8_en0_w = netsoc_netsoc_timer0_en_storage_full;
assign netsoc_csrbank8_value3_w = netsoc_netsoc_timer0_value_status[31:24];
assign netsoc_csrbank8_value2_w = netsoc_netsoc_timer0_value_status[23:16];
assign netsoc_csrbank8_value1_w = netsoc_netsoc_timer0_value_status[15:8];
assign netsoc_csrbank8_value0_w = netsoc_netsoc_timer0_value_status[7:0];
assign netsoc_netsoc_timer0_eventmanager_storage = netsoc_netsoc_timer0_eventmanager_storage_full;
assign netsoc_csrbank8_ev_enable0_w = netsoc_netsoc_timer0_eventmanager_storage_full;
assign netsoc_csrbank9_sel = (netsoc_interface9_bank_bus_adr[13:9] == 2'd3);
assign netsoc_netsoc_uart_rxtx_r = netsoc_interface9_bank_bus_dat_w[7:0];
assign netsoc_netsoc_uart_rxtx_re = ((netsoc_csrbank9_sel & netsoc_interface9_bank_bus_we) & (netsoc_interface9_bank_bus_adr[2:0] == 1'd0));
assign netsoc_csrbank9_txfull_r = netsoc_interface9_bank_bus_dat_w[0];
assign netsoc_csrbank9_txfull_re = ((netsoc_csrbank9_sel & netsoc_interface9_bank_bus_we) & (netsoc_interface9_bank_bus_adr[2:0] == 1'd1));
assign netsoc_csrbank9_rxempty_r = netsoc_interface9_bank_bus_dat_w[0];
assign netsoc_csrbank9_rxempty_re = ((netsoc_csrbank9_sel & netsoc_interface9_bank_bus_we) & (netsoc_interface9_bank_bus_adr[2:0] == 2'd2));
assign netsoc_netsoc_uart_status_r = netsoc_interface9_bank_bus_dat_w[1:0];
assign netsoc_netsoc_uart_status_re = ((netsoc_csrbank9_sel & netsoc_interface9_bank_bus_we) & (netsoc_interface9_bank_bus_adr[2:0] == 2'd3));
assign netsoc_netsoc_uart_pending_r = netsoc_interface9_bank_bus_dat_w[1:0];
assign netsoc_netsoc_uart_pending_re = ((netsoc_csrbank9_sel & netsoc_interface9_bank_bus_we) & (netsoc_interface9_bank_bus_adr[2:0] == 3'd4));
assign netsoc_csrbank9_ev_enable0_r = netsoc_interface9_bank_bus_dat_w[1:0];
assign netsoc_csrbank9_ev_enable0_re = ((netsoc_csrbank9_sel & netsoc_interface9_bank_bus_we) & (netsoc_interface9_bank_bus_adr[2:0] == 3'd5));
assign netsoc_csrbank9_txfull_w = netsoc_netsoc_uart_txfull_status;
assign netsoc_csrbank9_rxempty_w = netsoc_netsoc_uart_rxempty_status;
assign netsoc_netsoc_uart_storage = netsoc_netsoc_uart_storage_full[1:0];
assign netsoc_csrbank9_ev_enable0_w = netsoc_netsoc_uart_storage_full[1:0];
assign netsoc_csrbank10_sel = (netsoc_interface10_bank_bus_adr[13:9] == 2'd2);
assign netsoc_csrbank10_tuning_word3_r = netsoc_interface10_bank_bus_dat_w[7:0];
assign netsoc_csrbank10_tuning_word3_re = ((netsoc_csrbank10_sel & netsoc_interface10_bank_bus_we) & (netsoc_interface10_bank_bus_adr[1:0] == 1'd0));
assign netsoc_csrbank10_tuning_word2_r = netsoc_interface10_bank_bus_dat_w[7:0];
assign netsoc_csrbank10_tuning_word2_re = ((netsoc_csrbank10_sel & netsoc_interface10_bank_bus_we) & (netsoc_interface10_bank_bus_adr[1:0] == 1'd1));
assign netsoc_csrbank10_tuning_word1_r = netsoc_interface10_bank_bus_dat_w[7:0];
assign netsoc_csrbank10_tuning_word1_re = ((netsoc_csrbank10_sel & netsoc_interface10_bank_bus_we) & (netsoc_interface10_bank_bus_adr[1:0] == 2'd2));
assign netsoc_csrbank10_tuning_word0_r = netsoc_interface10_bank_bus_dat_w[7:0];
assign netsoc_csrbank10_tuning_word0_re = ((netsoc_csrbank10_sel & netsoc_interface10_bank_bus_we) & (netsoc_interface10_bank_bus_adr[1:0] == 2'd3));
assign netsoc_netsoc_uart_phy_storage = netsoc_netsoc_uart_phy_storage_full[31:0];
assign netsoc_csrbank10_tuning_word3_w = netsoc_netsoc_uart_phy_storage_full[31:24];
assign netsoc_csrbank10_tuning_word2_w = netsoc_netsoc_uart_phy_storage_full[23:16];
assign netsoc_csrbank10_tuning_word1_w = netsoc_netsoc_uart_phy_storage_full[15:8];
assign netsoc_csrbank10_tuning_word0_w = netsoc_netsoc_uart_phy_storage_full[7:0];
assign netsoc_interface0_bank_bus_adr = netsoc_netsoc_interface_adr;
assign netsoc_interface1_bank_bus_adr = netsoc_netsoc_interface_adr;
assign netsoc_interface2_bank_bus_adr = netsoc_netsoc_interface_adr;
assign netsoc_interface3_bank_bus_adr = netsoc_netsoc_interface_adr;
assign netsoc_interface4_bank_bus_adr = netsoc_netsoc_interface_adr;
assign netsoc_interface5_bank_bus_adr = netsoc_netsoc_interface_adr;
assign netsoc_interface6_bank_bus_adr = netsoc_netsoc_interface_adr;
assign netsoc_interface7_bank_bus_adr = netsoc_netsoc_interface_adr;
assign netsoc_interface8_bank_bus_adr = netsoc_netsoc_interface_adr;
assign netsoc_interface9_bank_bus_adr = netsoc_netsoc_interface_adr;
assign netsoc_interface10_bank_bus_adr = netsoc_netsoc_interface_adr;
assign netsoc_sram_bus_adr = netsoc_netsoc_interface_adr;
assign netsoc_interface0_bank_bus_we = netsoc_netsoc_interface_we;
assign netsoc_interface1_bank_bus_we = netsoc_netsoc_interface_we;
assign netsoc_interface2_bank_bus_we = netsoc_netsoc_interface_we;
assign netsoc_interface3_bank_bus_we = netsoc_netsoc_interface_we;
assign netsoc_interface4_bank_bus_we = netsoc_netsoc_interface_we;
assign netsoc_interface5_bank_bus_we = netsoc_netsoc_interface_we;
assign netsoc_interface6_bank_bus_we = netsoc_netsoc_interface_we;
assign netsoc_interface7_bank_bus_we = netsoc_netsoc_interface_we;
assign netsoc_interface8_bank_bus_we = netsoc_netsoc_interface_we;
assign netsoc_interface9_bank_bus_we = netsoc_netsoc_interface_we;
assign netsoc_interface10_bank_bus_we = netsoc_netsoc_interface_we;
assign netsoc_sram_bus_we = netsoc_netsoc_interface_we;
assign netsoc_interface0_bank_bus_dat_w = netsoc_netsoc_interface_dat_w;
assign netsoc_interface1_bank_bus_dat_w = netsoc_netsoc_interface_dat_w;
assign netsoc_interface2_bank_bus_dat_w = netsoc_netsoc_interface_dat_w;
assign netsoc_interface3_bank_bus_dat_w = netsoc_netsoc_interface_dat_w;
assign netsoc_interface4_bank_bus_dat_w = netsoc_netsoc_interface_dat_w;
assign netsoc_interface5_bank_bus_dat_w = netsoc_netsoc_interface_dat_w;
assign netsoc_interface6_bank_bus_dat_w = netsoc_netsoc_interface_dat_w;
assign netsoc_interface7_bank_bus_dat_w = netsoc_netsoc_interface_dat_w;
assign netsoc_interface8_bank_bus_dat_w = netsoc_netsoc_interface_dat_w;
assign netsoc_interface9_bank_bus_dat_w = netsoc_netsoc_interface_dat_w;
assign netsoc_interface10_bank_bus_dat_w = netsoc_netsoc_interface_dat_w;
assign netsoc_sram_bus_dat_w = netsoc_netsoc_interface_dat_w;
assign netsoc_netsoc_interface_dat_r = (((((((((((netsoc_interface0_bank_bus_dat_r | netsoc_interface1_bank_bus_dat_r) | netsoc_interface2_bank_bus_dat_r) | netsoc_interface3_bank_bus_dat_r) | netsoc_interface4_bank_bus_dat_r) | netsoc_interface5_bank_bus_dat_r) | netsoc_interface6_bank_bus_dat_r) | netsoc_interface7_bank_bus_dat_r) | netsoc_interface8_bank_bus_dat_r) | netsoc_interface9_bank_bus_dat_r) | netsoc_interface10_bank_bus_dat_r) | netsoc_sram_bus_dat_r);
always @(*) begin
	rhs_array_muxed0 <= 1'd0;
	case (netsoc_sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed0 <= netsoc_sdram_choose_cmd_valids[0];
		end
		1'd1: begin
			rhs_array_muxed0 <= netsoc_sdram_choose_cmd_valids[1];
		end
		2'd2: begin
			rhs_array_muxed0 <= netsoc_sdram_choose_cmd_valids[2];
		end
		2'd3: begin
			rhs_array_muxed0 <= netsoc_sdram_choose_cmd_valids[3];
		end
		3'd4: begin
			rhs_array_muxed0 <= netsoc_sdram_choose_cmd_valids[4];
		end
		3'd5: begin
			rhs_array_muxed0 <= netsoc_sdram_choose_cmd_valids[5];
		end
		3'd6: begin
			rhs_array_muxed0 <= netsoc_sdram_choose_cmd_valids[6];
		end
		default: begin
			rhs_array_muxed0 <= netsoc_sdram_choose_cmd_valids[7];
		end
	endcase
end
always @(*) begin
	rhs_array_muxed1 <= 14'd0;
	case (netsoc_sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed1 <= netsoc_sdram_bankmachine0_cmd_payload_a;
		end
		1'd1: begin
			rhs_array_muxed1 <= netsoc_sdram_bankmachine1_cmd_payload_a;
		end
		2'd2: begin
			rhs_array_muxed1 <= netsoc_sdram_bankmachine2_cmd_payload_a;
		end
		2'd3: begin
			rhs_array_muxed1 <= netsoc_sdram_bankmachine3_cmd_payload_a;
		end
		3'd4: begin
			rhs_array_muxed1 <= netsoc_sdram_bankmachine4_cmd_payload_a;
		end
		3'd5: begin
			rhs_array_muxed1 <= netsoc_sdram_bankmachine5_cmd_payload_a;
		end
		3'd6: begin
			rhs_array_muxed1 <= netsoc_sdram_bankmachine6_cmd_payload_a;
		end
		default: begin
			rhs_array_muxed1 <= netsoc_sdram_bankmachine7_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed2 <= 3'd0;
	case (netsoc_sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed2 <= netsoc_sdram_bankmachine0_cmd_payload_ba;
		end
		1'd1: begin
			rhs_array_muxed2 <= netsoc_sdram_bankmachine1_cmd_payload_ba;
		end
		2'd2: begin
			rhs_array_muxed2 <= netsoc_sdram_bankmachine2_cmd_payload_ba;
		end
		2'd3: begin
			rhs_array_muxed2 <= netsoc_sdram_bankmachine3_cmd_payload_ba;
		end
		3'd4: begin
			rhs_array_muxed2 <= netsoc_sdram_bankmachine4_cmd_payload_ba;
		end
		3'd5: begin
			rhs_array_muxed2 <= netsoc_sdram_bankmachine5_cmd_payload_ba;
		end
		3'd6: begin
			rhs_array_muxed2 <= netsoc_sdram_bankmachine6_cmd_payload_ba;
		end
		default: begin
			rhs_array_muxed2 <= netsoc_sdram_bankmachine7_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed3 <= 1'd0;
	case (netsoc_sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed3 <= netsoc_sdram_bankmachine0_cmd_payload_is_read;
		end
		1'd1: begin
			rhs_array_muxed3 <= netsoc_sdram_bankmachine1_cmd_payload_is_read;
		end
		2'd2: begin
			rhs_array_muxed3 <= netsoc_sdram_bankmachine2_cmd_payload_is_read;
		end
		2'd3: begin
			rhs_array_muxed3 <= netsoc_sdram_bankmachine3_cmd_payload_is_read;
		end
		3'd4: begin
			rhs_array_muxed3 <= netsoc_sdram_bankmachine4_cmd_payload_is_read;
		end
		3'd5: begin
			rhs_array_muxed3 <= netsoc_sdram_bankmachine5_cmd_payload_is_read;
		end
		3'd6: begin
			rhs_array_muxed3 <= netsoc_sdram_bankmachine6_cmd_payload_is_read;
		end
		default: begin
			rhs_array_muxed3 <= netsoc_sdram_bankmachine7_cmd_payload_is_read;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed4 <= 1'd0;
	case (netsoc_sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed4 <= netsoc_sdram_bankmachine0_cmd_payload_is_write;
		end
		1'd1: begin
			rhs_array_muxed4 <= netsoc_sdram_bankmachine1_cmd_payload_is_write;
		end
		2'd2: begin
			rhs_array_muxed4 <= netsoc_sdram_bankmachine2_cmd_payload_is_write;
		end
		2'd3: begin
			rhs_array_muxed4 <= netsoc_sdram_bankmachine3_cmd_payload_is_write;
		end
		3'd4: begin
			rhs_array_muxed4 <= netsoc_sdram_bankmachine4_cmd_payload_is_write;
		end
		3'd5: begin
			rhs_array_muxed4 <= netsoc_sdram_bankmachine5_cmd_payload_is_write;
		end
		3'd6: begin
			rhs_array_muxed4 <= netsoc_sdram_bankmachine6_cmd_payload_is_write;
		end
		default: begin
			rhs_array_muxed4 <= netsoc_sdram_bankmachine7_cmd_payload_is_write;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed5 <= 1'd0;
	case (netsoc_sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed5 <= netsoc_sdram_bankmachine0_cmd_payload_is_cmd;
		end
		1'd1: begin
			rhs_array_muxed5 <= netsoc_sdram_bankmachine1_cmd_payload_is_cmd;
		end
		2'd2: begin
			rhs_array_muxed5 <= netsoc_sdram_bankmachine2_cmd_payload_is_cmd;
		end
		2'd3: begin
			rhs_array_muxed5 <= netsoc_sdram_bankmachine3_cmd_payload_is_cmd;
		end
		3'd4: begin
			rhs_array_muxed5 <= netsoc_sdram_bankmachine4_cmd_payload_is_cmd;
		end
		3'd5: begin
			rhs_array_muxed5 <= netsoc_sdram_bankmachine5_cmd_payload_is_cmd;
		end
		3'd6: begin
			rhs_array_muxed5 <= netsoc_sdram_bankmachine6_cmd_payload_is_cmd;
		end
		default: begin
			rhs_array_muxed5 <= netsoc_sdram_bankmachine7_cmd_payload_is_cmd;
		end
	endcase
end
always @(*) begin
	t_array_muxed0 <= 1'd0;
	case (netsoc_sdram_choose_cmd_grant)
		1'd0: begin
			t_array_muxed0 <= netsoc_sdram_bankmachine0_cmd_payload_cas;
		end
		1'd1: begin
			t_array_muxed0 <= netsoc_sdram_bankmachine1_cmd_payload_cas;
		end
		2'd2: begin
			t_array_muxed0 <= netsoc_sdram_bankmachine2_cmd_payload_cas;
		end
		2'd3: begin
			t_array_muxed0 <= netsoc_sdram_bankmachine3_cmd_payload_cas;
		end
		3'd4: begin
			t_array_muxed0 <= netsoc_sdram_bankmachine4_cmd_payload_cas;
		end
		3'd5: begin
			t_array_muxed0 <= netsoc_sdram_bankmachine5_cmd_payload_cas;
		end
		3'd6: begin
			t_array_muxed0 <= netsoc_sdram_bankmachine6_cmd_payload_cas;
		end
		default: begin
			t_array_muxed0 <= netsoc_sdram_bankmachine7_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	t_array_muxed1 <= 1'd0;
	case (netsoc_sdram_choose_cmd_grant)
		1'd0: begin
			t_array_muxed1 <= netsoc_sdram_bankmachine0_cmd_payload_ras;
		end
		1'd1: begin
			t_array_muxed1 <= netsoc_sdram_bankmachine1_cmd_payload_ras;
		end
		2'd2: begin
			t_array_muxed1 <= netsoc_sdram_bankmachine2_cmd_payload_ras;
		end
		2'd3: begin
			t_array_muxed1 <= netsoc_sdram_bankmachine3_cmd_payload_ras;
		end
		3'd4: begin
			t_array_muxed1 <= netsoc_sdram_bankmachine4_cmd_payload_ras;
		end
		3'd5: begin
			t_array_muxed1 <= netsoc_sdram_bankmachine5_cmd_payload_ras;
		end
		3'd6: begin
			t_array_muxed1 <= netsoc_sdram_bankmachine6_cmd_payload_ras;
		end
		default: begin
			t_array_muxed1 <= netsoc_sdram_bankmachine7_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	t_array_muxed2 <= 1'd0;
	case (netsoc_sdram_choose_cmd_grant)
		1'd0: begin
			t_array_muxed2 <= netsoc_sdram_bankmachine0_cmd_payload_we;
		end
		1'd1: begin
			t_array_muxed2 <= netsoc_sdram_bankmachine1_cmd_payload_we;
		end
		2'd2: begin
			t_array_muxed2 <= netsoc_sdram_bankmachine2_cmd_payload_we;
		end
		2'd3: begin
			t_array_muxed2 <= netsoc_sdram_bankmachine3_cmd_payload_we;
		end
		3'd4: begin
			t_array_muxed2 <= netsoc_sdram_bankmachine4_cmd_payload_we;
		end
		3'd5: begin
			t_array_muxed2 <= netsoc_sdram_bankmachine5_cmd_payload_we;
		end
		3'd6: begin
			t_array_muxed2 <= netsoc_sdram_bankmachine6_cmd_payload_we;
		end
		default: begin
			t_array_muxed2 <= netsoc_sdram_bankmachine7_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed6 <= 1'd0;
	case (netsoc_sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed6 <= netsoc_sdram_choose_req_valids[0];
		end
		1'd1: begin
			rhs_array_muxed6 <= netsoc_sdram_choose_req_valids[1];
		end
		2'd2: begin
			rhs_array_muxed6 <= netsoc_sdram_choose_req_valids[2];
		end
		2'd3: begin
			rhs_array_muxed6 <= netsoc_sdram_choose_req_valids[3];
		end
		3'd4: begin
			rhs_array_muxed6 <= netsoc_sdram_choose_req_valids[4];
		end
		3'd5: begin
			rhs_array_muxed6 <= netsoc_sdram_choose_req_valids[5];
		end
		3'd6: begin
			rhs_array_muxed6 <= netsoc_sdram_choose_req_valids[6];
		end
		default: begin
			rhs_array_muxed6 <= netsoc_sdram_choose_req_valids[7];
		end
	endcase
end
always @(*) begin
	rhs_array_muxed7 <= 14'd0;
	case (netsoc_sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed7 <= netsoc_sdram_bankmachine0_cmd_payload_a;
		end
		1'd1: begin
			rhs_array_muxed7 <= netsoc_sdram_bankmachine1_cmd_payload_a;
		end
		2'd2: begin
			rhs_array_muxed7 <= netsoc_sdram_bankmachine2_cmd_payload_a;
		end
		2'd3: begin
			rhs_array_muxed7 <= netsoc_sdram_bankmachine3_cmd_payload_a;
		end
		3'd4: begin
			rhs_array_muxed7 <= netsoc_sdram_bankmachine4_cmd_payload_a;
		end
		3'd5: begin
			rhs_array_muxed7 <= netsoc_sdram_bankmachine5_cmd_payload_a;
		end
		3'd6: begin
			rhs_array_muxed7 <= netsoc_sdram_bankmachine6_cmd_payload_a;
		end
		default: begin
			rhs_array_muxed7 <= netsoc_sdram_bankmachine7_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed8 <= 3'd0;
	case (netsoc_sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed8 <= netsoc_sdram_bankmachine0_cmd_payload_ba;
		end
		1'd1: begin
			rhs_array_muxed8 <= netsoc_sdram_bankmachine1_cmd_payload_ba;
		end
		2'd2: begin
			rhs_array_muxed8 <= netsoc_sdram_bankmachine2_cmd_payload_ba;
		end
		2'd3: begin
			rhs_array_muxed8 <= netsoc_sdram_bankmachine3_cmd_payload_ba;
		end
		3'd4: begin
			rhs_array_muxed8 <= netsoc_sdram_bankmachine4_cmd_payload_ba;
		end
		3'd5: begin
			rhs_array_muxed8 <= netsoc_sdram_bankmachine5_cmd_payload_ba;
		end
		3'd6: begin
			rhs_array_muxed8 <= netsoc_sdram_bankmachine6_cmd_payload_ba;
		end
		default: begin
			rhs_array_muxed8 <= netsoc_sdram_bankmachine7_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed9 <= 1'd0;
	case (netsoc_sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed9 <= netsoc_sdram_bankmachine0_cmd_payload_is_read;
		end
		1'd1: begin
			rhs_array_muxed9 <= netsoc_sdram_bankmachine1_cmd_payload_is_read;
		end
		2'd2: begin
			rhs_array_muxed9 <= netsoc_sdram_bankmachine2_cmd_payload_is_read;
		end
		2'd3: begin
			rhs_array_muxed9 <= netsoc_sdram_bankmachine3_cmd_payload_is_read;
		end
		3'd4: begin
			rhs_array_muxed9 <= netsoc_sdram_bankmachine4_cmd_payload_is_read;
		end
		3'd5: begin
			rhs_array_muxed9 <= netsoc_sdram_bankmachine5_cmd_payload_is_read;
		end
		3'd6: begin
			rhs_array_muxed9 <= netsoc_sdram_bankmachine6_cmd_payload_is_read;
		end
		default: begin
			rhs_array_muxed9 <= netsoc_sdram_bankmachine7_cmd_payload_is_read;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed10 <= 1'd0;
	case (netsoc_sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed10 <= netsoc_sdram_bankmachine0_cmd_payload_is_write;
		end
		1'd1: begin
			rhs_array_muxed10 <= netsoc_sdram_bankmachine1_cmd_payload_is_write;
		end
		2'd2: begin
			rhs_array_muxed10 <= netsoc_sdram_bankmachine2_cmd_payload_is_write;
		end
		2'd3: begin
			rhs_array_muxed10 <= netsoc_sdram_bankmachine3_cmd_payload_is_write;
		end
		3'd4: begin
			rhs_array_muxed10 <= netsoc_sdram_bankmachine4_cmd_payload_is_write;
		end
		3'd5: begin
			rhs_array_muxed10 <= netsoc_sdram_bankmachine5_cmd_payload_is_write;
		end
		3'd6: begin
			rhs_array_muxed10 <= netsoc_sdram_bankmachine6_cmd_payload_is_write;
		end
		default: begin
			rhs_array_muxed10 <= netsoc_sdram_bankmachine7_cmd_payload_is_write;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed11 <= 1'd0;
	case (netsoc_sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed11 <= netsoc_sdram_bankmachine0_cmd_payload_is_cmd;
		end
		1'd1: begin
			rhs_array_muxed11 <= netsoc_sdram_bankmachine1_cmd_payload_is_cmd;
		end
		2'd2: begin
			rhs_array_muxed11 <= netsoc_sdram_bankmachine2_cmd_payload_is_cmd;
		end
		2'd3: begin
			rhs_array_muxed11 <= netsoc_sdram_bankmachine3_cmd_payload_is_cmd;
		end
		3'd4: begin
			rhs_array_muxed11 <= netsoc_sdram_bankmachine4_cmd_payload_is_cmd;
		end
		3'd5: begin
			rhs_array_muxed11 <= netsoc_sdram_bankmachine5_cmd_payload_is_cmd;
		end
		3'd6: begin
			rhs_array_muxed11 <= netsoc_sdram_bankmachine6_cmd_payload_is_cmd;
		end
		default: begin
			rhs_array_muxed11 <= netsoc_sdram_bankmachine7_cmd_payload_is_cmd;
		end
	endcase
end
always @(*) begin
	t_array_muxed3 <= 1'd0;
	case (netsoc_sdram_choose_req_grant)
		1'd0: begin
			t_array_muxed3 <= netsoc_sdram_bankmachine0_cmd_payload_cas;
		end
		1'd1: begin
			t_array_muxed3 <= netsoc_sdram_bankmachine1_cmd_payload_cas;
		end
		2'd2: begin
			t_array_muxed3 <= netsoc_sdram_bankmachine2_cmd_payload_cas;
		end
		2'd3: begin
			t_array_muxed3 <= netsoc_sdram_bankmachine3_cmd_payload_cas;
		end
		3'd4: begin
			t_array_muxed3 <= netsoc_sdram_bankmachine4_cmd_payload_cas;
		end
		3'd5: begin
			t_array_muxed3 <= netsoc_sdram_bankmachine5_cmd_payload_cas;
		end
		3'd6: begin
			t_array_muxed3 <= netsoc_sdram_bankmachine6_cmd_payload_cas;
		end
		default: begin
			t_array_muxed3 <= netsoc_sdram_bankmachine7_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	t_array_muxed4 <= 1'd0;
	case (netsoc_sdram_choose_req_grant)
		1'd0: begin
			t_array_muxed4 <= netsoc_sdram_bankmachine0_cmd_payload_ras;
		end
		1'd1: begin
			t_array_muxed4 <= netsoc_sdram_bankmachine1_cmd_payload_ras;
		end
		2'd2: begin
			t_array_muxed4 <= netsoc_sdram_bankmachine2_cmd_payload_ras;
		end
		2'd3: begin
			t_array_muxed4 <= netsoc_sdram_bankmachine3_cmd_payload_ras;
		end
		3'd4: begin
			t_array_muxed4 <= netsoc_sdram_bankmachine4_cmd_payload_ras;
		end
		3'd5: begin
			t_array_muxed4 <= netsoc_sdram_bankmachine5_cmd_payload_ras;
		end
		3'd6: begin
			t_array_muxed4 <= netsoc_sdram_bankmachine6_cmd_payload_ras;
		end
		default: begin
			t_array_muxed4 <= netsoc_sdram_bankmachine7_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	t_array_muxed5 <= 1'd0;
	case (netsoc_sdram_choose_req_grant)
		1'd0: begin
			t_array_muxed5 <= netsoc_sdram_bankmachine0_cmd_payload_we;
		end
		1'd1: begin
			t_array_muxed5 <= netsoc_sdram_bankmachine1_cmd_payload_we;
		end
		2'd2: begin
			t_array_muxed5 <= netsoc_sdram_bankmachine2_cmd_payload_we;
		end
		2'd3: begin
			t_array_muxed5 <= netsoc_sdram_bankmachine3_cmd_payload_we;
		end
		3'd4: begin
			t_array_muxed5 <= netsoc_sdram_bankmachine4_cmd_payload_we;
		end
		3'd5: begin
			t_array_muxed5 <= netsoc_sdram_bankmachine5_cmd_payload_we;
		end
		3'd6: begin
			t_array_muxed5 <= netsoc_sdram_bankmachine6_cmd_payload_we;
		end
		default: begin
			t_array_muxed5 <= netsoc_sdram_bankmachine7_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed12 <= 21'd0;
	case (roundrobin0_grant)
		default: begin
			rhs_array_muxed12 <= rca;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed13 <= 1'd0;
	case (roundrobin0_grant)
		default: begin
			rhs_array_muxed13 <= netsoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed14 <= 1'd0;
	case (roundrobin0_grant)
		default: begin
			rhs_array_muxed14 <= (((cba == 1'd0) & (~(((((((1'd0 | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed15 <= 21'd0;
	case (roundrobin1_grant)
		default: begin
			rhs_array_muxed15 <= rca;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed16 <= 1'd0;
	case (roundrobin1_grant)
		default: begin
			rhs_array_muxed16 <= netsoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed17 <= 1'd0;
	case (roundrobin1_grant)
		default: begin
			rhs_array_muxed17 <= (((cba == 1'd1) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed18 <= 21'd0;
	case (roundrobin2_grant)
		default: begin
			rhs_array_muxed18 <= rca;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed19 <= 1'd0;
	case (roundrobin2_grant)
		default: begin
			rhs_array_muxed19 <= netsoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed20 <= 1'd0;
	case (roundrobin2_grant)
		default: begin
			rhs_array_muxed20 <= (((cba == 2'd2) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed21 <= 21'd0;
	case (roundrobin3_grant)
		default: begin
			rhs_array_muxed21 <= rca;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed22 <= 1'd0;
	case (roundrobin3_grant)
		default: begin
			rhs_array_muxed22 <= netsoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed23 <= 1'd0;
	case (roundrobin3_grant)
		default: begin
			rhs_array_muxed23 <= (((cba == 2'd3) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed24 <= 21'd0;
	case (roundrobin4_grant)
		default: begin
			rhs_array_muxed24 <= rca;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed25 <= 1'd0;
	case (roundrobin4_grant)
		default: begin
			rhs_array_muxed25 <= netsoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed26 <= 1'd0;
	case (roundrobin4_grant)
		default: begin
			rhs_array_muxed26 <= (((cba == 3'd4) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed27 <= 21'd0;
	case (roundrobin5_grant)
		default: begin
			rhs_array_muxed27 <= rca;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed28 <= 1'd0;
	case (roundrobin5_grant)
		default: begin
			rhs_array_muxed28 <= netsoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed29 <= 1'd0;
	case (roundrobin5_grant)
		default: begin
			rhs_array_muxed29 <= (((cba == 3'd5) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed30 <= 21'd0;
	case (roundrobin6_grant)
		default: begin
			rhs_array_muxed30 <= rca;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed31 <= 1'd0;
	case (roundrobin6_grant)
		default: begin
			rhs_array_muxed31 <= netsoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed32 <= 1'd0;
	case (roundrobin6_grant)
		default: begin
			rhs_array_muxed32 <= (((cba == 3'd6) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & netsoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed33 <= 21'd0;
	case (roundrobin7_grant)
		default: begin
			rhs_array_muxed33 <= rca;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed34 <= 1'd0;
	case (roundrobin7_grant)
		default: begin
			rhs_array_muxed34 <= netsoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed35 <= 1'd0;
	case (roundrobin7_grant)
		default: begin
			rhs_array_muxed35 <= (((cba == 3'd7) & (~(((((((1'd0 | (netsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (netsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (netsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (netsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (netsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (netsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (netsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))))) & netsoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed36 <= 30'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed36 <= netsoc_interface1_wb_sdram_adr;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed37 <= 32'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed37 <= netsoc_interface1_wb_sdram_dat_w;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed38 <= 4'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed38 <= netsoc_interface1_wb_sdram_sel;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed39 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed39 <= netsoc_interface1_wb_sdram_cyc;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed40 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed40 <= netsoc_interface1_wb_sdram_stb;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed41 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed41 <= netsoc_interface1_wb_sdram_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed42 <= 3'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed42 <= netsoc_interface1_wb_sdram_cti;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed43 <= 2'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed43 <= netsoc_interface1_wb_sdram_bte;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed44 <= 30'd0;
	case (netsoc_grant)
		1'd0: begin
			rhs_array_muxed44 <= netsoc_netsoc_mor1kx_ibus_adr;
		end
		default: begin
			rhs_array_muxed44 <= netsoc_netsoc_mor1kx_dbus_adr;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed45 <= 32'd0;
	case (netsoc_grant)
		1'd0: begin
			rhs_array_muxed45 <= netsoc_netsoc_mor1kx_ibus_dat_w;
		end
		default: begin
			rhs_array_muxed45 <= netsoc_netsoc_mor1kx_dbus_dat_w;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed46 <= 4'd0;
	case (netsoc_grant)
		1'd0: begin
			rhs_array_muxed46 <= netsoc_netsoc_mor1kx_ibus_sel;
		end
		default: begin
			rhs_array_muxed46 <= netsoc_netsoc_mor1kx_dbus_sel;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed47 <= 1'd0;
	case (netsoc_grant)
		1'd0: begin
			rhs_array_muxed47 <= netsoc_netsoc_mor1kx_ibus_cyc;
		end
		default: begin
			rhs_array_muxed47 <= netsoc_netsoc_mor1kx_dbus_cyc;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed48 <= 1'd0;
	case (netsoc_grant)
		1'd0: begin
			rhs_array_muxed48 <= netsoc_netsoc_mor1kx_ibus_stb;
		end
		default: begin
			rhs_array_muxed48 <= netsoc_netsoc_mor1kx_dbus_stb;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed49 <= 1'd0;
	case (netsoc_grant)
		1'd0: begin
			rhs_array_muxed49 <= netsoc_netsoc_mor1kx_ibus_we;
		end
		default: begin
			rhs_array_muxed49 <= netsoc_netsoc_mor1kx_dbus_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed50 <= 3'd0;
	case (netsoc_grant)
		1'd0: begin
			rhs_array_muxed50 <= netsoc_netsoc_mor1kx_ibus_cti;
		end
		default: begin
			rhs_array_muxed50 <= netsoc_netsoc_mor1kx_dbus_cti;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed51 <= 2'd0;
	case (netsoc_grant)
		1'd0: begin
			rhs_array_muxed51 <= netsoc_netsoc_mor1kx_ibus_bte;
		end
		default: begin
			rhs_array_muxed51 <= netsoc_netsoc_mor1kx_dbus_bte;
		end
	endcase
end
always @(*) begin
	array_muxed0 <= 14'd0;
	case (netsoc_sdram_sel0)
		1'd0: begin
			array_muxed0 <= netsoc_sdram_nop_a;
		end
		1'd1: begin
			array_muxed0 <= netsoc_sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed0 <= netsoc_sdram_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed0 <= netsoc_sdram_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	array_muxed1 <= 3'd0;
	case (netsoc_sdram_sel0)
		1'd0: begin
			array_muxed1 <= netsoc_sdram_nop_ba;
		end
		1'd1: begin
			array_muxed1 <= netsoc_sdram_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			array_muxed1 <= netsoc_sdram_choose_req_cmd_payload_ba;
		end
		default: begin
			array_muxed1 <= netsoc_sdram_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	array_muxed2 <= 1'd0;
	case (netsoc_sdram_sel0)
		1'd0: begin
			array_muxed2 <= netsoc_sdram_nop_cas;
		end
		1'd1: begin
			array_muxed2 <= netsoc_sdram_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			array_muxed2 <= netsoc_sdram_choose_req_cmd_payload_cas;
		end
		default: begin
			array_muxed2 <= netsoc_sdram_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	array_muxed3 <= 1'd0;
	case (netsoc_sdram_sel0)
		1'd0: begin
			array_muxed3 <= netsoc_sdram_nop_ras;
		end
		1'd1: begin
			array_muxed3 <= netsoc_sdram_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			array_muxed3 <= netsoc_sdram_choose_req_cmd_payload_ras;
		end
		default: begin
			array_muxed3 <= netsoc_sdram_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	array_muxed4 <= 1'd0;
	case (netsoc_sdram_sel0)
		1'd0: begin
			array_muxed4 <= netsoc_sdram_nop_we;
		end
		1'd1: begin
			array_muxed4 <= netsoc_sdram_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			array_muxed4 <= netsoc_sdram_choose_req_cmd_payload_we;
		end
		default: begin
			array_muxed4 <= netsoc_sdram_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	array_muxed5 <= 1'd0;
	case (netsoc_sdram_sel0)
		1'd0: begin
			array_muxed5 <= 1'd0;
		end
		1'd1: begin
			array_muxed5 <= (netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed5 <= (netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed5 <= (netsoc_sdram_cmd_valid & netsoc_sdram_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	array_muxed6 <= 1'd0;
	case (netsoc_sdram_sel0)
		1'd0: begin
			array_muxed6 <= 1'd0;
		end
		1'd1: begin
			array_muxed6 <= (netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed6 <= (netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed6 <= (netsoc_sdram_cmd_valid & netsoc_sdram_cmd_payload_is_write);
		end
	endcase
end
always @(*) begin
	array_muxed7 <= 14'd0;
	case (netsoc_sdram_sel1)
		1'd0: begin
			array_muxed7 <= netsoc_sdram_nop_a;
		end
		1'd1: begin
			array_muxed7 <= netsoc_sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed7 <= netsoc_sdram_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed7 <= netsoc_sdram_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	array_muxed8 <= 3'd0;
	case (netsoc_sdram_sel1)
		1'd0: begin
			array_muxed8 <= netsoc_sdram_nop_ba;
		end
		1'd1: begin
			array_muxed8 <= netsoc_sdram_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			array_muxed8 <= netsoc_sdram_choose_req_cmd_payload_ba;
		end
		default: begin
			array_muxed8 <= netsoc_sdram_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	array_muxed9 <= 1'd0;
	case (netsoc_sdram_sel1)
		1'd0: begin
			array_muxed9 <= netsoc_sdram_nop_cas;
		end
		1'd1: begin
			array_muxed9 <= netsoc_sdram_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			array_muxed9 <= netsoc_sdram_choose_req_cmd_payload_cas;
		end
		default: begin
			array_muxed9 <= netsoc_sdram_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	array_muxed10 <= 1'd0;
	case (netsoc_sdram_sel1)
		1'd0: begin
			array_muxed10 <= netsoc_sdram_nop_ras;
		end
		1'd1: begin
			array_muxed10 <= netsoc_sdram_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			array_muxed10 <= netsoc_sdram_choose_req_cmd_payload_ras;
		end
		default: begin
			array_muxed10 <= netsoc_sdram_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	array_muxed11 <= 1'd0;
	case (netsoc_sdram_sel1)
		1'd0: begin
			array_muxed11 <= netsoc_sdram_nop_we;
		end
		1'd1: begin
			array_muxed11 <= netsoc_sdram_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			array_muxed11 <= netsoc_sdram_choose_req_cmd_payload_we;
		end
		default: begin
			array_muxed11 <= netsoc_sdram_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	array_muxed12 <= 1'd0;
	case (netsoc_sdram_sel1)
		1'd0: begin
			array_muxed12 <= 1'd0;
		end
		1'd1: begin
			array_muxed12 <= (netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed12 <= (netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed12 <= (netsoc_sdram_cmd_valid & netsoc_sdram_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	array_muxed13 <= 1'd0;
	case (netsoc_sdram_sel1)
		1'd0: begin
			array_muxed13 <= 1'd0;
		end
		1'd1: begin
			array_muxed13 <= (netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed13 <= (netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed13 <= (netsoc_sdram_cmd_valid & netsoc_sdram_cmd_payload_is_write);
		end
	endcase
end
always @(*) begin
	array_muxed14 <= 14'd0;
	case (netsoc_sdram_sel2)
		1'd0: begin
			array_muxed14 <= netsoc_sdram_nop_a;
		end
		1'd1: begin
			array_muxed14 <= netsoc_sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed14 <= netsoc_sdram_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed14 <= netsoc_sdram_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	array_muxed15 <= 3'd0;
	case (netsoc_sdram_sel2)
		1'd0: begin
			array_muxed15 <= netsoc_sdram_nop_ba;
		end
		1'd1: begin
			array_muxed15 <= netsoc_sdram_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			array_muxed15 <= netsoc_sdram_choose_req_cmd_payload_ba;
		end
		default: begin
			array_muxed15 <= netsoc_sdram_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	array_muxed16 <= 1'd0;
	case (netsoc_sdram_sel2)
		1'd0: begin
			array_muxed16 <= netsoc_sdram_nop_cas;
		end
		1'd1: begin
			array_muxed16 <= netsoc_sdram_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			array_muxed16 <= netsoc_sdram_choose_req_cmd_payload_cas;
		end
		default: begin
			array_muxed16 <= netsoc_sdram_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	array_muxed17 <= 1'd0;
	case (netsoc_sdram_sel2)
		1'd0: begin
			array_muxed17 <= netsoc_sdram_nop_ras;
		end
		1'd1: begin
			array_muxed17 <= netsoc_sdram_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			array_muxed17 <= netsoc_sdram_choose_req_cmd_payload_ras;
		end
		default: begin
			array_muxed17 <= netsoc_sdram_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	array_muxed18 <= 1'd0;
	case (netsoc_sdram_sel2)
		1'd0: begin
			array_muxed18 <= netsoc_sdram_nop_we;
		end
		1'd1: begin
			array_muxed18 <= netsoc_sdram_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			array_muxed18 <= netsoc_sdram_choose_req_cmd_payload_we;
		end
		default: begin
			array_muxed18 <= netsoc_sdram_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	array_muxed19 <= 1'd0;
	case (netsoc_sdram_sel2)
		1'd0: begin
			array_muxed19 <= 1'd0;
		end
		1'd1: begin
			array_muxed19 <= (netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed19 <= (netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed19 <= (netsoc_sdram_cmd_valid & netsoc_sdram_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	array_muxed20 <= 1'd0;
	case (netsoc_sdram_sel2)
		1'd0: begin
			array_muxed20 <= 1'd0;
		end
		1'd1: begin
			array_muxed20 <= (netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed20 <= (netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed20 <= (netsoc_sdram_cmd_valid & netsoc_sdram_cmd_payload_is_write);
		end
	endcase
end
always @(*) begin
	array_muxed21 <= 14'd0;
	case (netsoc_sdram_sel3)
		1'd0: begin
			array_muxed21 <= netsoc_sdram_nop_a;
		end
		1'd1: begin
			array_muxed21 <= netsoc_sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed21 <= netsoc_sdram_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed21 <= netsoc_sdram_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	array_muxed22 <= 3'd0;
	case (netsoc_sdram_sel3)
		1'd0: begin
			array_muxed22 <= netsoc_sdram_nop_ba;
		end
		1'd1: begin
			array_muxed22 <= netsoc_sdram_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			array_muxed22 <= netsoc_sdram_choose_req_cmd_payload_ba;
		end
		default: begin
			array_muxed22 <= netsoc_sdram_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	array_muxed23 <= 1'd0;
	case (netsoc_sdram_sel3)
		1'd0: begin
			array_muxed23 <= netsoc_sdram_nop_cas;
		end
		1'd1: begin
			array_muxed23 <= netsoc_sdram_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			array_muxed23 <= netsoc_sdram_choose_req_cmd_payload_cas;
		end
		default: begin
			array_muxed23 <= netsoc_sdram_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	array_muxed24 <= 1'd0;
	case (netsoc_sdram_sel3)
		1'd0: begin
			array_muxed24 <= netsoc_sdram_nop_ras;
		end
		1'd1: begin
			array_muxed24 <= netsoc_sdram_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			array_muxed24 <= netsoc_sdram_choose_req_cmd_payload_ras;
		end
		default: begin
			array_muxed24 <= netsoc_sdram_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	array_muxed25 <= 1'd0;
	case (netsoc_sdram_sel3)
		1'd0: begin
			array_muxed25 <= netsoc_sdram_nop_we;
		end
		1'd1: begin
			array_muxed25 <= netsoc_sdram_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			array_muxed25 <= netsoc_sdram_choose_req_cmd_payload_we;
		end
		default: begin
			array_muxed25 <= netsoc_sdram_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	array_muxed26 <= 1'd0;
	case (netsoc_sdram_sel3)
		1'd0: begin
			array_muxed26 <= 1'd0;
		end
		1'd1: begin
			array_muxed26 <= (netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed26 <= (netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed26 <= (netsoc_sdram_cmd_valid & netsoc_sdram_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	array_muxed27 <= 1'd0;
	case (netsoc_sdram_sel3)
		1'd0: begin
			array_muxed27 <= 1'd0;
		end
		1'd1: begin
			array_muxed27 <= (netsoc_sdram_choose_cmd_cmd_valid & netsoc_sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed27 <= (netsoc_sdram_choose_req_cmd_valid & netsoc_sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed27 <= (netsoc_sdram_cmd_valid & netsoc_sdram_cmd_payload_is_write);
		end
	endcase
end
assign netsoc_netsoc_uart_phy_rx = xilinxmultiregimpl0_regs1;
assign xilinxasyncresetsynchronizerimpl0 = ((~netsoc_pll_locked) | (~cpu_reset));
assign xilinxasyncresetsynchronizerimpl1 = ((~netsoc_pll_locked) | (~cpu_reset));
assign xilinxasyncresetsynchronizerimpl2 = ((~netsoc_pll_locked) | (~cpu_reset));
assign xilinxasyncresetsynchronizerimpl3 = ((~netsoc_pll_locked) | (~cpu_reset));
assign netsoc_switches_status = xilinxmultiregimpl1_regs1;
assign ethphy_status = xilinxmultiregimpl2_regs1;
assign ethmac_ps_preamble_error_toggle_o = xilinxmultiregimpl3_regs1;
assign ethmac_ps_crc_error_toggle_o = xilinxmultiregimpl4_regs1;
assign ethmac_tx_cdc_produce_rdomain = xilinxmultiregimpl5_regs1;
assign ethmac_tx_cdc_consume_wdomain = xilinxmultiregimpl6_regs1;
assign ethmac_rx_cdc_produce_rdomain = xilinxmultiregimpl7_regs1;
assign ethmac_rx_cdc_consume_wdomain = xilinxmultiregimpl8_regs1;

always @(posedge clk200_clk) begin
	if ((netsoc_reset_counter != 1'd0)) begin
		netsoc_reset_counter <= (netsoc_reset_counter - 1'd1);
	end else begin
		netsoc_ic_reset <= 1'd0;
	end
	if (clk200_rst) begin
		netsoc_reset_counter <= 4'd15;
		netsoc_ic_reset <= 1'd1;
	end
end

always @(posedge eth_rx_clk) begin
	ethphy_liteethphymiirx_converter_reset <= (~eth_rx_dv);
	ethphy_liteethphymiirx_converter_sink_valid <= 1'd1;
	ethphy_liteethphymiirx_converter_sink_payload_data <= eth_rx_data;
	if (ethphy_liteethphymiirx_converter_converter_source_ready) begin
		ethphy_liteethphymiirx_converter_converter_strobe_all <= 1'd0;
	end
	if (ethphy_liteethphymiirx_converter_converter_load_part) begin
		if (((ethphy_liteethphymiirx_converter_converter_demux == 1'd1) | ethphy_liteethphymiirx_converter_converter_sink_last)) begin
			ethphy_liteethphymiirx_converter_converter_demux <= 1'd0;
			ethphy_liteethphymiirx_converter_converter_strobe_all <= 1'd1;
		end else begin
			ethphy_liteethphymiirx_converter_converter_demux <= (ethphy_liteethphymiirx_converter_converter_demux + 1'd1);
		end
	end
	if ((ethphy_liteethphymiirx_converter_converter_source_valid & ethphy_liteethphymiirx_converter_converter_source_ready)) begin
		if ((ethphy_liteethphymiirx_converter_converter_sink_valid & ethphy_liteethphymiirx_converter_converter_sink_ready)) begin
			ethphy_liteethphymiirx_converter_converter_source_first <= ethphy_liteethphymiirx_converter_converter_sink_first;
			ethphy_liteethphymiirx_converter_converter_source_last <= ethphy_liteethphymiirx_converter_converter_sink_last;
		end else begin
			ethphy_liteethphymiirx_converter_converter_source_first <= 1'd0;
			ethphy_liteethphymiirx_converter_converter_source_last <= 1'd0;
		end
	end else begin
		if ((ethphy_liteethphymiirx_converter_converter_sink_valid & ethphy_liteethphymiirx_converter_converter_sink_ready)) begin
			ethphy_liteethphymiirx_converter_converter_source_first <= (ethphy_liteethphymiirx_converter_converter_sink_first | ethphy_liteethphymiirx_converter_converter_source_first);
			ethphy_liteethphymiirx_converter_converter_source_last <= (ethphy_liteethphymiirx_converter_converter_sink_last | ethphy_liteethphymiirx_converter_converter_source_last);
		end
	end
	if (ethphy_liteethphymiirx_converter_converter_load_part) begin
		case (ethphy_liteethphymiirx_converter_converter_demux)
			1'd0: begin
				ethphy_liteethphymiirx_converter_converter_source_payload_data[3:0] <= ethphy_liteethphymiirx_converter_converter_sink_payload_data;
			end
			1'd1: begin
				ethphy_liteethphymiirx_converter_converter_source_payload_data[7:4] <= ethphy_liteethphymiirx_converter_converter_sink_payload_data;
			end
		endcase
	end
	if (ethphy_liteethphymiirx_converter_converter_load_part) begin
		ethphy_liteethphymiirx_converter_converter_source_payload_valid_token_count <= (ethphy_liteethphymiirx_converter_converter_demux + 1'd1);
	end
	if (ethphy_liteethphymiirx_converter_reset) begin
		ethphy_liteethphymiirx_converter_converter_source_first <= 1'd0;
		ethphy_liteethphymiirx_converter_converter_source_last <= 1'd0;
		ethphy_liteethphymiirx_converter_converter_source_payload_data <= 8'd0;
		ethphy_liteethphymiirx_converter_converter_source_payload_valid_token_count <= 2'd0;
		ethphy_liteethphymiirx_converter_converter_demux <= 1'd0;
		ethphy_liteethphymiirx_converter_converter_strobe_all <= 1'd0;
	end
	liteethmacpreamblechecker_state <= liteethmacpreamblechecker_next_state;
	if (ethmac_crc32_checker_crc_ce) begin
		ethmac_crc32_checker_crc_reg <= ethmac_crc32_checker_crc_next;
	end
	if (ethmac_crc32_checker_crc_reset) begin
		ethmac_crc32_checker_crc_reg <= 32'd4294967295;
	end
	if (((ethmac_crc32_checker_syncfifo_syncfifo_we & ethmac_crc32_checker_syncfifo_syncfifo_writable) & (~ethmac_crc32_checker_syncfifo_replace))) begin
		if ((ethmac_crc32_checker_syncfifo_produce == 3'd4)) begin
			ethmac_crc32_checker_syncfifo_produce <= 1'd0;
		end else begin
			ethmac_crc32_checker_syncfifo_produce <= (ethmac_crc32_checker_syncfifo_produce + 1'd1);
		end
	end
	if (ethmac_crc32_checker_syncfifo_do_read) begin
		if ((ethmac_crc32_checker_syncfifo_consume == 3'd4)) begin
			ethmac_crc32_checker_syncfifo_consume <= 1'd0;
		end else begin
			ethmac_crc32_checker_syncfifo_consume <= (ethmac_crc32_checker_syncfifo_consume + 1'd1);
		end
	end
	if (((ethmac_crc32_checker_syncfifo_syncfifo_we & ethmac_crc32_checker_syncfifo_syncfifo_writable) & (~ethmac_crc32_checker_syncfifo_replace))) begin
		if ((~ethmac_crc32_checker_syncfifo_do_read)) begin
			ethmac_crc32_checker_syncfifo_level <= (ethmac_crc32_checker_syncfifo_level + 1'd1);
		end
	end else begin
		if (ethmac_crc32_checker_syncfifo_do_read) begin
			ethmac_crc32_checker_syncfifo_level <= (ethmac_crc32_checker_syncfifo_level - 1'd1);
		end
	end
	if (ethmac_crc32_checker_fifo_reset) begin
		ethmac_crc32_checker_syncfifo_level <= 3'd0;
		ethmac_crc32_checker_syncfifo_produce <= 3'd0;
		ethmac_crc32_checker_syncfifo_consume <= 3'd0;
	end
	liteethmaccrc32checker_state <= liteethmaccrc32checker_next_state;
	if (ethmac_ps_preamble_error_i) begin
		ethmac_ps_preamble_error_toggle_i <= (~ethmac_ps_preamble_error_toggle_i);
	end
	if (ethmac_ps_crc_error_i) begin
		ethmac_ps_crc_error_toggle_i <= (~ethmac_ps_crc_error_toggle_i);
	end
	if (ethmac_rx_converter_converter_source_ready) begin
		ethmac_rx_converter_converter_strobe_all <= 1'd0;
	end
	if (ethmac_rx_converter_converter_load_part) begin
		if (((ethmac_rx_converter_converter_demux == 2'd3) | ethmac_rx_converter_converter_sink_last)) begin
			ethmac_rx_converter_converter_demux <= 1'd0;
			ethmac_rx_converter_converter_strobe_all <= 1'd1;
		end else begin
			ethmac_rx_converter_converter_demux <= (ethmac_rx_converter_converter_demux + 1'd1);
		end
	end
	if ((ethmac_rx_converter_converter_source_valid & ethmac_rx_converter_converter_source_ready)) begin
		if ((ethmac_rx_converter_converter_sink_valid & ethmac_rx_converter_converter_sink_ready)) begin
			ethmac_rx_converter_converter_source_first <= ethmac_rx_converter_converter_sink_first;
			ethmac_rx_converter_converter_source_last <= ethmac_rx_converter_converter_sink_last;
		end else begin
			ethmac_rx_converter_converter_source_first <= 1'd0;
			ethmac_rx_converter_converter_source_last <= 1'd0;
		end
	end else begin
		if ((ethmac_rx_converter_converter_sink_valid & ethmac_rx_converter_converter_sink_ready)) begin
			ethmac_rx_converter_converter_source_first <= (ethmac_rx_converter_converter_sink_first | ethmac_rx_converter_converter_source_first);
			ethmac_rx_converter_converter_source_last <= (ethmac_rx_converter_converter_sink_last | ethmac_rx_converter_converter_source_last);
		end
	end
	if (ethmac_rx_converter_converter_load_part) begin
		case (ethmac_rx_converter_converter_demux)
			1'd0: begin
				ethmac_rx_converter_converter_source_payload_data[39:30] <= ethmac_rx_converter_converter_sink_payload_data;
			end
			1'd1: begin
				ethmac_rx_converter_converter_source_payload_data[29:20] <= ethmac_rx_converter_converter_sink_payload_data;
			end
			2'd2: begin
				ethmac_rx_converter_converter_source_payload_data[19:10] <= ethmac_rx_converter_converter_sink_payload_data;
			end
			2'd3: begin
				ethmac_rx_converter_converter_source_payload_data[9:0] <= ethmac_rx_converter_converter_sink_payload_data;
			end
		endcase
	end
	if (ethmac_rx_converter_converter_load_part) begin
		ethmac_rx_converter_converter_source_payload_valid_token_count <= (ethmac_rx_converter_converter_demux + 1'd1);
	end
	ethmac_rx_cdc_graycounter0_q_binary <= ethmac_rx_cdc_graycounter0_q_next_binary;
	ethmac_rx_cdc_graycounter0_q <= ethmac_rx_cdc_graycounter0_q_next;
	if (eth_rx_rst) begin
		ethphy_liteethphymiirx_converter_sink_valid <= 1'd0;
		ethphy_liteethphymiirx_converter_sink_payload_data <= 4'd0;
		ethphy_liteethphymiirx_converter_converter_source_first <= 1'd0;
		ethphy_liteethphymiirx_converter_converter_source_last <= 1'd0;
		ethphy_liteethphymiirx_converter_converter_source_payload_data <= 8'd0;
		ethphy_liteethphymiirx_converter_converter_source_payload_valid_token_count <= 2'd0;
		ethphy_liteethphymiirx_converter_converter_demux <= 1'd0;
		ethphy_liteethphymiirx_converter_converter_strobe_all <= 1'd0;
		ethphy_liteethphymiirx_converter_reset <= 1'd0;
		ethmac_crc32_checker_crc_reg <= 32'd4294967295;
		ethmac_crc32_checker_syncfifo_level <= 3'd0;
		ethmac_crc32_checker_syncfifo_produce <= 3'd0;
		ethmac_crc32_checker_syncfifo_consume <= 3'd0;
		ethmac_rx_converter_converter_source_first <= 1'd0;
		ethmac_rx_converter_converter_source_last <= 1'd0;
		ethmac_rx_converter_converter_source_payload_data <= 40'd0;
		ethmac_rx_converter_converter_source_payload_valid_token_count <= 3'd0;
		ethmac_rx_converter_converter_demux <= 2'd0;
		ethmac_rx_converter_converter_strobe_all <= 1'd0;
		ethmac_rx_cdc_graycounter0_q <= 7'd0;
		ethmac_rx_cdc_graycounter0_q_binary <= 7'd0;
		liteethmacpreamblechecker_state <= 1'd0;
		liteethmaccrc32checker_state <= 2'd0;
	end
	xilinxmultiregimpl8_regs0 <= ethmac_rx_cdc_graycounter1_q;
	xilinxmultiregimpl8_regs1 <= xilinxmultiregimpl8_regs0;
end

always @(posedge eth_tx_clk) begin
	eth_tx_en <= ethphy_liteethphymiitx_converter_source_valid;
	eth_tx_data <= ethphy_liteethphymiitx_converter_source_payload_data;
	if ((ethphy_liteethphymiitx_converter_converter_source_valid & ethphy_liteethphymiitx_converter_converter_source_ready)) begin
		if (ethphy_liteethphymiitx_converter_converter_last) begin
			ethphy_liteethphymiitx_converter_converter_mux <= 1'd0;
		end else begin
			ethphy_liteethphymiitx_converter_converter_mux <= (ethphy_liteethphymiitx_converter_converter_mux + 1'd1);
		end
	end
	if (ethmac_tx_gap_inserter_counter_reset) begin
		ethmac_tx_gap_inserter_counter <= 1'd0;
	end else begin
		if (ethmac_tx_gap_inserter_counter_ce) begin
			ethmac_tx_gap_inserter_counter <= (ethmac_tx_gap_inserter_counter + 1'd1);
		end
	end
	liteethmacgap_state <= liteethmacgap_next_state;
	if (ethmac_preamble_inserter_clr_cnt) begin
		ethmac_preamble_inserter_cnt <= 1'd0;
	end else begin
		if (ethmac_preamble_inserter_inc_cnt) begin
			ethmac_preamble_inserter_cnt <= (ethmac_preamble_inserter_cnt + 1'd1);
		end
	end
	liteethmacpreambleinserter_state <= liteethmacpreambleinserter_next_state;
	if (ethmac_crc32_inserter_is_ongoing0) begin
		ethmac_crc32_inserter_cnt <= 2'd3;
	end else begin
		if ((ethmac_crc32_inserter_is_ongoing1 & (~ethmac_crc32_inserter_cnt_done))) begin
			ethmac_crc32_inserter_cnt <= (ethmac_crc32_inserter_cnt - ethmac_crc32_inserter_source_ready);
		end
	end
	if (ethmac_crc32_inserter_ce) begin
		ethmac_crc32_inserter_reg <= ethmac_crc32_inserter_next;
	end
	if (ethmac_crc32_inserter_reset) begin
		ethmac_crc32_inserter_reg <= 32'd4294967295;
	end
	liteethmaccrc32inserter_state <= liteethmaccrc32inserter_next_state;
	if (ethmac_padding_inserter_counter_reset) begin
		ethmac_padding_inserter_counter <= 1'd0;
	end else begin
		if (ethmac_padding_inserter_counter_ce) begin
			ethmac_padding_inserter_counter <= (ethmac_padding_inserter_counter + 1'd1);
		end
	end
	liteethmacpaddinginserter_state <= liteethmacpaddinginserter_next_state;
	if ((ethmac_tx_last_be_sink_valid & ethmac_tx_last_be_sink_ready)) begin
		if (ethmac_tx_last_be_sink_last) begin
			ethmac_tx_last_be_ongoing <= 1'd1;
		end else begin
			if (ethmac_tx_last_be_sink_payload_last_be) begin
				ethmac_tx_last_be_ongoing <= 1'd0;
			end
		end
	end
	if ((ethmac_tx_converter_converter_source_valid & ethmac_tx_converter_converter_source_ready)) begin
		if (ethmac_tx_converter_converter_last) begin
			ethmac_tx_converter_converter_mux <= 1'd0;
		end else begin
			ethmac_tx_converter_converter_mux <= (ethmac_tx_converter_converter_mux + 1'd1);
		end
	end
	ethmac_tx_cdc_graycounter1_q_binary <= ethmac_tx_cdc_graycounter1_q_next_binary;
	ethmac_tx_cdc_graycounter1_q <= ethmac_tx_cdc_graycounter1_q_next;
	if (eth_tx_rst) begin
		ethphy_liteethphymiitx_converter_converter_mux <= 1'd0;
		ethmac_crc32_inserter_reg <= 32'd4294967295;
		ethmac_crc32_inserter_cnt <= 2'd3;
		ethmac_padding_inserter_counter <= 16'd1;
		ethmac_tx_last_be_ongoing <= 1'd1;
		ethmac_tx_converter_converter_mux <= 2'd0;
		ethmac_tx_cdc_graycounter1_q <= 7'd0;
		ethmac_tx_cdc_graycounter1_q_binary <= 7'd0;
		liteethmacgap_state <= 1'd0;
		liteethmacpreambleinserter_state <= 2'd0;
		liteethmaccrc32inserter_state <= 2'd0;
		liteethmacpaddinginserter_state <= 1'd0;
	end
	xilinxmultiregimpl5_regs0 <= ethmac_tx_cdc_graycounter0_q;
	xilinxmultiregimpl5_regs1 <= xilinxmultiregimpl5_regs0;
end

always @(posedge sys_clk) begin
	if ((netsoc_netsoc_ctrl_bus_errors != 32'd4294967295)) begin
		if (netsoc_netsoc_ctrl_bus_error) begin
			netsoc_netsoc_ctrl_bus_errors <= (netsoc_netsoc_ctrl_bus_errors + 1'd1);
		end
	end
	netsoc_netsoc_rom_bus_ack <= 1'd0;
	if (((netsoc_netsoc_rom_bus_cyc & netsoc_netsoc_rom_bus_stb) & (~netsoc_netsoc_rom_bus_ack))) begin
		netsoc_netsoc_rom_bus_ack <= 1'd1;
	end
	netsoc_netsoc_sram_bus_ack <= 1'd0;
	if (((netsoc_netsoc_sram_bus_cyc & netsoc_netsoc_sram_bus_stb) & (~netsoc_netsoc_sram_bus_ack))) begin
		netsoc_netsoc_sram_bus_ack <= 1'd1;
	end
	netsoc_netsoc_interface_we <= 1'd0;
	netsoc_netsoc_interface_dat_w <= netsoc_netsoc_bus_wishbone_dat_w;
	netsoc_netsoc_interface_adr <= netsoc_netsoc_bus_wishbone_adr;
	netsoc_netsoc_bus_wishbone_dat_r <= netsoc_netsoc_interface_dat_r;
	if ((netsoc_netsoc_counter == 1'd1)) begin
		netsoc_netsoc_interface_we <= netsoc_netsoc_bus_wishbone_we;
	end
	if ((netsoc_netsoc_counter == 2'd2)) begin
		netsoc_netsoc_bus_wishbone_ack <= 1'd1;
	end
	if ((netsoc_netsoc_counter == 2'd3)) begin
		netsoc_netsoc_bus_wishbone_ack <= 1'd0;
	end
	if ((netsoc_netsoc_counter != 1'd0)) begin
		netsoc_netsoc_counter <= (netsoc_netsoc_counter + 1'd1);
	end else begin
		if ((netsoc_netsoc_bus_wishbone_cyc & netsoc_netsoc_bus_wishbone_stb)) begin
			netsoc_netsoc_counter <= 1'd1;
		end
	end
	netsoc_netsoc_uart_phy_sink_ready <= 1'd0;
	if (((netsoc_netsoc_uart_phy_sink_valid & (~netsoc_netsoc_uart_phy_tx_busy)) & (~netsoc_netsoc_uart_phy_sink_ready))) begin
		netsoc_netsoc_uart_phy_tx_reg <= netsoc_netsoc_uart_phy_sink_payload_data;
		netsoc_netsoc_uart_phy_tx_bitcount <= 1'd0;
		netsoc_netsoc_uart_phy_tx_busy <= 1'd1;
		serial_tx <= 1'd0;
	end else begin
		if ((netsoc_netsoc_uart_phy_uart_clk_txen & netsoc_netsoc_uart_phy_tx_busy)) begin
			netsoc_netsoc_uart_phy_tx_bitcount <= (netsoc_netsoc_uart_phy_tx_bitcount + 1'd1);
			if ((netsoc_netsoc_uart_phy_tx_bitcount == 4'd8)) begin
				serial_tx <= 1'd1;
			end else begin
				if ((netsoc_netsoc_uart_phy_tx_bitcount == 4'd9)) begin
					serial_tx <= 1'd1;
					netsoc_netsoc_uart_phy_tx_busy <= 1'd0;
					netsoc_netsoc_uart_phy_sink_ready <= 1'd1;
				end else begin
					serial_tx <= netsoc_netsoc_uart_phy_tx_reg[0];
					netsoc_netsoc_uart_phy_tx_reg <= {1'd0, netsoc_netsoc_uart_phy_tx_reg[7:1]};
				end
			end
		end
	end
	if (netsoc_netsoc_uart_phy_tx_busy) begin
		{netsoc_netsoc_uart_phy_uart_clk_txen, netsoc_netsoc_uart_phy_phase_accumulator_tx} <= (netsoc_netsoc_uart_phy_phase_accumulator_tx + netsoc_netsoc_uart_phy_storage);
	end else begin
		{netsoc_netsoc_uart_phy_uart_clk_txen, netsoc_netsoc_uart_phy_phase_accumulator_tx} <= 1'd0;
	end
	netsoc_netsoc_uart_phy_source_valid <= 1'd0;
	netsoc_netsoc_uart_phy_rx_r <= netsoc_netsoc_uart_phy_rx;
	if ((~netsoc_netsoc_uart_phy_rx_busy)) begin
		if (((~netsoc_netsoc_uart_phy_rx) & netsoc_netsoc_uart_phy_rx_r)) begin
			netsoc_netsoc_uart_phy_rx_busy <= 1'd1;
			netsoc_netsoc_uart_phy_rx_bitcount <= 1'd0;
		end
	end else begin
		if (netsoc_netsoc_uart_phy_uart_clk_rxen) begin
			netsoc_netsoc_uart_phy_rx_bitcount <= (netsoc_netsoc_uart_phy_rx_bitcount + 1'd1);
			if ((netsoc_netsoc_uart_phy_rx_bitcount == 1'd0)) begin
				if (netsoc_netsoc_uart_phy_rx) begin
					netsoc_netsoc_uart_phy_rx_busy <= 1'd0;
				end
			end else begin
				if ((netsoc_netsoc_uart_phy_rx_bitcount == 4'd9)) begin
					netsoc_netsoc_uart_phy_rx_busy <= 1'd0;
					if (netsoc_netsoc_uart_phy_rx) begin
						netsoc_netsoc_uart_phy_source_payload_data <= netsoc_netsoc_uart_phy_rx_reg;
						netsoc_netsoc_uart_phy_source_valid <= 1'd1;
					end
				end else begin
					netsoc_netsoc_uart_phy_rx_reg <= {netsoc_netsoc_uart_phy_rx, netsoc_netsoc_uart_phy_rx_reg[7:1]};
				end
			end
		end
	end
	if (netsoc_netsoc_uart_phy_rx_busy) begin
		{netsoc_netsoc_uart_phy_uart_clk_rxen, netsoc_netsoc_uart_phy_phase_accumulator_rx} <= (netsoc_netsoc_uart_phy_phase_accumulator_rx + netsoc_netsoc_uart_phy_storage);
	end else begin
		{netsoc_netsoc_uart_phy_uart_clk_rxen, netsoc_netsoc_uart_phy_phase_accumulator_rx} <= 32'd2147483648;
	end
	if (netsoc_netsoc_uart_tx_clear) begin
		netsoc_netsoc_uart_tx_pending <= 1'd0;
	end
	netsoc_netsoc_uart_tx_old_trigger <= netsoc_netsoc_uart_tx_trigger;
	if (((~netsoc_netsoc_uart_tx_trigger) & netsoc_netsoc_uart_tx_old_trigger)) begin
		netsoc_netsoc_uart_tx_pending <= 1'd1;
	end
	if (netsoc_netsoc_uart_rx_clear) begin
		netsoc_netsoc_uart_rx_pending <= 1'd0;
	end
	netsoc_netsoc_uart_rx_old_trigger <= netsoc_netsoc_uart_rx_trigger;
	if (((~netsoc_netsoc_uart_rx_trigger) & netsoc_netsoc_uart_rx_old_trigger)) begin
		netsoc_netsoc_uart_rx_pending <= 1'd1;
	end
	if (((netsoc_netsoc_uart_tx_fifo_syncfifo_we & netsoc_netsoc_uart_tx_fifo_syncfifo_writable) & (~netsoc_netsoc_uart_tx_fifo_replace))) begin
		netsoc_netsoc_uart_tx_fifo_produce <= (netsoc_netsoc_uart_tx_fifo_produce + 1'd1);
	end
	if (netsoc_netsoc_uart_tx_fifo_do_read) begin
		netsoc_netsoc_uart_tx_fifo_consume <= (netsoc_netsoc_uart_tx_fifo_consume + 1'd1);
	end
	if (((netsoc_netsoc_uart_tx_fifo_syncfifo_we & netsoc_netsoc_uart_tx_fifo_syncfifo_writable) & (~netsoc_netsoc_uart_tx_fifo_replace))) begin
		if ((~netsoc_netsoc_uart_tx_fifo_do_read)) begin
			netsoc_netsoc_uart_tx_fifo_level <= (netsoc_netsoc_uart_tx_fifo_level + 1'd1);
		end
	end else begin
		if (netsoc_netsoc_uart_tx_fifo_do_read) begin
			netsoc_netsoc_uart_tx_fifo_level <= (netsoc_netsoc_uart_tx_fifo_level - 1'd1);
		end
	end
	if (((netsoc_netsoc_uart_rx_fifo_syncfifo_we & netsoc_netsoc_uart_rx_fifo_syncfifo_writable) & (~netsoc_netsoc_uart_rx_fifo_replace))) begin
		netsoc_netsoc_uart_rx_fifo_produce <= (netsoc_netsoc_uart_rx_fifo_produce + 1'd1);
	end
	if (netsoc_netsoc_uart_rx_fifo_do_read) begin
		netsoc_netsoc_uart_rx_fifo_consume <= (netsoc_netsoc_uart_rx_fifo_consume + 1'd1);
	end
	if (((netsoc_netsoc_uart_rx_fifo_syncfifo_we & netsoc_netsoc_uart_rx_fifo_syncfifo_writable) & (~netsoc_netsoc_uart_rx_fifo_replace))) begin
		if ((~netsoc_netsoc_uart_rx_fifo_do_read)) begin
			netsoc_netsoc_uart_rx_fifo_level <= (netsoc_netsoc_uart_rx_fifo_level + 1'd1);
		end
	end else begin
		if (netsoc_netsoc_uart_rx_fifo_do_read) begin
			netsoc_netsoc_uart_rx_fifo_level <= (netsoc_netsoc_uart_rx_fifo_level - 1'd1);
		end
	end
	if (netsoc_netsoc_uart_reset) begin
		netsoc_netsoc_uart_tx_pending <= 1'd0;
		netsoc_netsoc_uart_tx_old_trigger <= 1'd0;
		netsoc_netsoc_uart_rx_pending <= 1'd0;
		netsoc_netsoc_uart_rx_old_trigger <= 1'd0;
		netsoc_netsoc_uart_tx_fifo_level <= 5'd0;
		netsoc_netsoc_uart_tx_fifo_produce <= 4'd0;
		netsoc_netsoc_uart_tx_fifo_consume <= 4'd0;
		netsoc_netsoc_uart_rx_fifo_level <= 5'd0;
		netsoc_netsoc_uart_rx_fifo_produce <= 4'd0;
		netsoc_netsoc_uart_rx_fifo_consume <= 4'd0;
	end
	if (netsoc_netsoc_timer0_en_storage) begin
		if ((netsoc_netsoc_timer0_value == 1'd0)) begin
			netsoc_netsoc_timer0_value <= netsoc_netsoc_timer0_reload_storage;
		end else begin
			netsoc_netsoc_timer0_value <= (netsoc_netsoc_timer0_value - 1'd1);
		end
	end else begin
		netsoc_netsoc_timer0_value <= netsoc_netsoc_timer0_load_storage;
	end
	if (netsoc_netsoc_timer0_update_value_re) begin
		netsoc_netsoc_timer0_value_status <= netsoc_netsoc_timer0_value;
	end
	if (netsoc_netsoc_timer0_zero_clear) begin
		netsoc_netsoc_timer0_zero_pending <= 1'd0;
	end
	netsoc_netsoc_timer0_zero_old_trigger <= netsoc_netsoc_timer0_zero_trigger;
	if (((~netsoc_netsoc_timer0_zero_trigger) & netsoc_netsoc_timer0_zero_old_trigger)) begin
		netsoc_netsoc_timer0_zero_pending <= 1'd1;
	end
	if ((netsoc_dna_cnt < 7'd114)) begin
		netsoc_dna_cnt <= (netsoc_dna_cnt + 1'd1);
		if (netsoc_dna_cnt[0]) begin
			netsoc_dna_status <= {netsoc_dna_status, netsoc_dna_do};
		end
	end
	if (netsoc_drdy) begin
		case (netsoc_channel)
			1'd0: begin
				netsoc_temperature_status <= (netsoc_data >>> 3'd4);
			end
			1'd1: begin
				netsoc_vccint_status <= (netsoc_data >>> 3'd4);
			end
			2'd2: begin
				netsoc_vccaux_status <= (netsoc_data >>> 3'd4);
			end
			3'd6: begin
				netsoc_vccbram_status <= (netsoc_data >>> 3'd4);
			end
		endcase
	end
	if (netsoc_eventsourceprocess0_clear) begin
		netsoc_eventsourceprocess0_pending <= 1'd0;
	end
	netsoc_eventsourceprocess0_old_trigger <= netsoc_eventsourceprocess0_trigger;
	if (((~netsoc_eventsourceprocess0_trigger) & netsoc_eventsourceprocess0_old_trigger)) begin
		netsoc_eventsourceprocess0_pending <= 1'd1;
	end
	if (netsoc_eventsourceprocess1_clear) begin
		netsoc_eventsourceprocess1_pending <= 1'd0;
	end
	netsoc_eventsourceprocess1_old_trigger <= netsoc_eventsourceprocess1_trigger;
	if (((~netsoc_eventsourceprocess1_trigger) & netsoc_eventsourceprocess1_old_trigger)) begin
		netsoc_eventsourceprocess1_pending <= 1'd1;
	end
	if (netsoc_eventsourceprocess2_clear) begin
		netsoc_eventsourceprocess2_pending <= 1'd0;
	end
	netsoc_eventsourceprocess2_old_trigger <= netsoc_eventsourceprocess2_trigger;
	if (((~netsoc_eventsourceprocess2_trigger) & netsoc_eventsourceprocess2_old_trigger)) begin
		netsoc_eventsourceprocess2_pending <= 1'd1;
	end
	if (netsoc_eventsourceprocess3_clear) begin
		netsoc_eventsourceprocess3_pending <= 1'd0;
	end
	netsoc_eventsourceprocess3_old_trigger <= netsoc_eventsourceprocess3_trigger;
	if (((~netsoc_eventsourceprocess3_trigger) & netsoc_eventsourceprocess3_old_trigger)) begin
		netsoc_eventsourceprocess3_pending <= 1'd1;
	end
	if (netsoc_waittimer0_wait) begin
		if ((~netsoc_waittimer0_done)) begin
			netsoc_waittimer0_count <= (netsoc_waittimer0_count - 1'd1);
		end
	end else begin
		netsoc_waittimer0_count <= 20'd1000000;
	end
	if (netsoc_waittimer1_wait) begin
		if ((~netsoc_waittimer1_done)) begin
			netsoc_waittimer1_count <= (netsoc_waittimer1_count - 1'd1);
		end
	end else begin
		netsoc_waittimer1_count <= 20'd1000000;
	end
	if (netsoc_waittimer2_wait) begin
		if ((~netsoc_waittimer2_done)) begin
			netsoc_waittimer2_count <= (netsoc_waittimer2_count - 1'd1);
		end
	end else begin
		netsoc_waittimer2_count <= 20'd1000000;
	end
	if (netsoc_waittimer3_wait) begin
		if ((~netsoc_waittimer3_done)) begin
			netsoc_waittimer3_count <= (netsoc_waittimer3_count - 1'd1);
		end
	end else begin
		netsoc_waittimer3_count <= 20'd1000000;
	end
	if ((netsoc_i == 1'd0)) begin
		netsoc_clk1 <= 1'd1;
		netsoc_miso <= spiflash_1x_miso;
	end
	if ((netsoc_i == 1'd1)) begin
		netsoc_i <= 1'd0;
		netsoc_clk1 <= 1'd0;
		netsoc_sr <= {netsoc_sr[30:0], netsoc_miso};
	end else begin
		netsoc_i <= (netsoc_i + 1'd1);
	end
	if ((((netsoc_bus_cyc & netsoc_bus_stb) & (netsoc_i == 1'd1)) & (netsoc_counter == 1'd0))) begin
		netsoc_cs_n <= 1'd0;
		netsoc_sr[31:24] <= 4'd11;
	end
	if ((netsoc_counter == 5'd16)) begin
		netsoc_sr[31:8] <= {netsoc_bus_adr, {2{1'd0}}};
	end
	if ((netsoc_counter == 7'd64)) begin
	end
	if ((netsoc_counter == 8'd146)) begin
		netsoc_bus_ack <= 1'd1;
		netsoc_cs_n <= 1'd1;
	end
	if ((netsoc_counter == 8'd147)) begin
		netsoc_bus_ack <= 1'd0;
	end
	if ((netsoc_counter == 8'd149)) begin
	end
	if ((netsoc_counter == 8'd149)) begin
		netsoc_counter <= 1'd0;
	end else begin
		if ((netsoc_counter != 1'd0)) begin
			netsoc_counter <= (netsoc_counter + 1'd1);
		end else begin
			if (((netsoc_bus_cyc & netsoc_bus_stb) & (netsoc_i == 1'd1))) begin
				netsoc_counter <= 1'd1;
			end
		end
	end
	netsoc_a7ddrphy_n_rddata_en0 <= netsoc_a7ddrphy_dfi_p0_rddata_en;
	netsoc_a7ddrphy_n_rddata_en1 <= netsoc_a7ddrphy_n_rddata_en0;
	netsoc_a7ddrphy_n_rddata_en2 <= netsoc_a7ddrphy_n_rddata_en1;
	netsoc_a7ddrphy_n_rddata_en3 <= netsoc_a7ddrphy_n_rddata_en2;
	netsoc_a7ddrphy_n_rddata_en4 <= netsoc_a7ddrphy_n_rddata_en3;
	netsoc_a7ddrphy_dfi_p0_rddata_valid <= netsoc_a7ddrphy_n_rddata_en4;
	netsoc_a7ddrphy_dfi_p1_rddata_valid <= netsoc_a7ddrphy_n_rddata_en4;
	netsoc_a7ddrphy_dfi_p2_rddata_valid <= netsoc_a7ddrphy_n_rddata_en4;
	netsoc_a7ddrphy_dfi_p3_rddata_valid <= netsoc_a7ddrphy_n_rddata_en4;
	netsoc_a7ddrphy_last_wrdata_en <= {netsoc_a7ddrphy_last_wrdata_en[2:0], netsoc_a7ddrphy_dfi_p3_wrdata_en};
	netsoc_a7ddrphy_oe_dqs <= netsoc_a7ddrphy_oe;
	netsoc_a7ddrphy_oe_dq <= netsoc_a7ddrphy_oe;
	if (netsoc_sdram_inti_p0_rddata_valid) begin
		netsoc_sdram_phaseinjector0_status <= netsoc_sdram_inti_p0_rddata;
	end
	if (netsoc_sdram_inti_p1_rddata_valid) begin
		netsoc_sdram_phaseinjector1_status <= netsoc_sdram_inti_p1_rddata;
	end
	if (netsoc_sdram_inti_p2_rddata_valid) begin
		netsoc_sdram_phaseinjector2_status <= netsoc_sdram_inti_p2_rddata;
	end
	if (netsoc_sdram_inti_p3_rddata_valid) begin
		netsoc_sdram_phaseinjector3_status <= netsoc_sdram_inti_p3_rddata;
	end
	netsoc_sdram_cmd_payload_a <= 11'd1024;
	netsoc_sdram_cmd_payload_ba <= 1'd0;
	netsoc_sdram_cmd_payload_cas <= 1'd0;
	netsoc_sdram_cmd_payload_ras <= 1'd0;
	netsoc_sdram_cmd_payload_we <= 1'd0;
	netsoc_sdram_seq_done <= 1'd0;
	if ((netsoc_sdram_counter == 1'd1)) begin
		netsoc_sdram_cmd_payload_ras <= 1'd1;
		netsoc_sdram_cmd_payload_we <= 1'd1;
	end
	if ((netsoc_sdram_counter == 3'd4)) begin
		netsoc_sdram_cmd_payload_cas <= 1'd1;
		netsoc_sdram_cmd_payload_ras <= 1'd1;
	end
	if ((netsoc_sdram_counter == 5'd18)) begin
		netsoc_sdram_seq_done <= 1'd1;
	end
	if ((netsoc_sdram_counter == 5'd18)) begin
		netsoc_sdram_counter <= 1'd0;
	end else begin
		if ((netsoc_sdram_counter != 1'd0)) begin
			netsoc_sdram_counter <= (netsoc_sdram_counter + 1'd1);
		end else begin
			if (netsoc_sdram_seq_start) begin
				netsoc_sdram_counter <= 1'd1;
			end
		end
	end
	if (netsoc_sdram_wait) begin
		if ((~netsoc_sdram_done)) begin
			netsoc_sdram_count <= (netsoc_sdram_count - 1'd1);
		end
	end else begin
		netsoc_sdram_count <= 10'd782;
	end
	refresher_state <= refresher_next_state;
	if (netsoc_sdram_bankmachine0_track_close) begin
		netsoc_sdram_bankmachine0_has_openrow <= 1'd0;
	end else begin
		if (netsoc_sdram_bankmachine0_track_open) begin
			netsoc_sdram_bankmachine0_has_openrow <= 1'd1;
			netsoc_sdram_bankmachine0_openrow <= netsoc_sdram_bankmachine0_cmd_buffer_source_payload_adr[20:7];
		end
	end
	if (((netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we & netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable) & (~netsoc_sdram_bankmachine0_cmd_buffer_lookahead_replace))) begin
		netsoc_sdram_bankmachine0_cmd_buffer_lookahead_produce <= (netsoc_sdram_bankmachine0_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (netsoc_sdram_bankmachine0_cmd_buffer_lookahead_do_read) begin
		netsoc_sdram_bankmachine0_cmd_buffer_lookahead_consume <= (netsoc_sdram_bankmachine0_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we & netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable) & (~netsoc_sdram_bankmachine0_cmd_buffer_lookahead_replace))) begin
		if ((~netsoc_sdram_bankmachine0_cmd_buffer_lookahead_do_read)) begin
			netsoc_sdram_bankmachine0_cmd_buffer_lookahead_level <= (netsoc_sdram_bankmachine0_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (netsoc_sdram_bankmachine0_cmd_buffer_lookahead_do_read) begin
			netsoc_sdram_bankmachine0_cmd_buffer_lookahead_level <= (netsoc_sdram_bankmachine0_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (netsoc_sdram_bankmachine0_cmd_buffer_pipe_ce) begin
		netsoc_sdram_bankmachine0_cmd_buffer_valid_n <= netsoc_sdram_bankmachine0_cmd_buffer_sink_valid;
	end
	if (netsoc_sdram_bankmachine0_cmd_buffer_pipe_ce) begin
		netsoc_sdram_bankmachine0_cmd_buffer_first_n <= (netsoc_sdram_bankmachine0_cmd_buffer_sink_valid & netsoc_sdram_bankmachine0_cmd_buffer_sink_first);
		netsoc_sdram_bankmachine0_cmd_buffer_last_n <= (netsoc_sdram_bankmachine0_cmd_buffer_sink_valid & netsoc_sdram_bankmachine0_cmd_buffer_sink_last);
	end
	if (netsoc_sdram_bankmachine0_cmd_buffer_pipe_ce) begin
		netsoc_sdram_bankmachine0_cmd_buffer_source_payload_we <= netsoc_sdram_bankmachine0_cmd_buffer_sink_payload_we;
		netsoc_sdram_bankmachine0_cmd_buffer_source_payload_adr <= netsoc_sdram_bankmachine0_cmd_buffer_sink_payload_adr;
	end
	if (netsoc_sdram_bankmachine0_wait) begin
		if ((~netsoc_sdram_bankmachine0_done)) begin
			netsoc_sdram_bankmachine0_count <= (netsoc_sdram_bankmachine0_count - 1'd1);
		end
	end else begin
		netsoc_sdram_bankmachine0_count <= 3'd5;
	end
	bankmachine0_state <= bankmachine0_next_state;
	if (netsoc_sdram_bankmachine1_track_close) begin
		netsoc_sdram_bankmachine1_has_openrow <= 1'd0;
	end else begin
		if (netsoc_sdram_bankmachine1_track_open) begin
			netsoc_sdram_bankmachine1_has_openrow <= 1'd1;
			netsoc_sdram_bankmachine1_openrow <= netsoc_sdram_bankmachine1_cmd_buffer_source_payload_adr[20:7];
		end
	end
	if (((netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we & netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable) & (~netsoc_sdram_bankmachine1_cmd_buffer_lookahead_replace))) begin
		netsoc_sdram_bankmachine1_cmd_buffer_lookahead_produce <= (netsoc_sdram_bankmachine1_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (netsoc_sdram_bankmachine1_cmd_buffer_lookahead_do_read) begin
		netsoc_sdram_bankmachine1_cmd_buffer_lookahead_consume <= (netsoc_sdram_bankmachine1_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we & netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable) & (~netsoc_sdram_bankmachine1_cmd_buffer_lookahead_replace))) begin
		if ((~netsoc_sdram_bankmachine1_cmd_buffer_lookahead_do_read)) begin
			netsoc_sdram_bankmachine1_cmd_buffer_lookahead_level <= (netsoc_sdram_bankmachine1_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (netsoc_sdram_bankmachine1_cmd_buffer_lookahead_do_read) begin
			netsoc_sdram_bankmachine1_cmd_buffer_lookahead_level <= (netsoc_sdram_bankmachine1_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (netsoc_sdram_bankmachine1_cmd_buffer_pipe_ce) begin
		netsoc_sdram_bankmachine1_cmd_buffer_valid_n <= netsoc_sdram_bankmachine1_cmd_buffer_sink_valid;
	end
	if (netsoc_sdram_bankmachine1_cmd_buffer_pipe_ce) begin
		netsoc_sdram_bankmachine1_cmd_buffer_first_n <= (netsoc_sdram_bankmachine1_cmd_buffer_sink_valid & netsoc_sdram_bankmachine1_cmd_buffer_sink_first);
		netsoc_sdram_bankmachine1_cmd_buffer_last_n <= (netsoc_sdram_bankmachine1_cmd_buffer_sink_valid & netsoc_sdram_bankmachine1_cmd_buffer_sink_last);
	end
	if (netsoc_sdram_bankmachine1_cmd_buffer_pipe_ce) begin
		netsoc_sdram_bankmachine1_cmd_buffer_source_payload_we <= netsoc_sdram_bankmachine1_cmd_buffer_sink_payload_we;
		netsoc_sdram_bankmachine1_cmd_buffer_source_payload_adr <= netsoc_sdram_bankmachine1_cmd_buffer_sink_payload_adr;
	end
	if (netsoc_sdram_bankmachine1_wait) begin
		if ((~netsoc_sdram_bankmachine1_done)) begin
			netsoc_sdram_bankmachine1_count <= (netsoc_sdram_bankmachine1_count - 1'd1);
		end
	end else begin
		netsoc_sdram_bankmachine1_count <= 3'd5;
	end
	bankmachine1_state <= bankmachine1_next_state;
	if (netsoc_sdram_bankmachine2_track_close) begin
		netsoc_sdram_bankmachine2_has_openrow <= 1'd0;
	end else begin
		if (netsoc_sdram_bankmachine2_track_open) begin
			netsoc_sdram_bankmachine2_has_openrow <= 1'd1;
			netsoc_sdram_bankmachine2_openrow <= netsoc_sdram_bankmachine2_cmd_buffer_source_payload_adr[20:7];
		end
	end
	if (((netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we & netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable) & (~netsoc_sdram_bankmachine2_cmd_buffer_lookahead_replace))) begin
		netsoc_sdram_bankmachine2_cmd_buffer_lookahead_produce <= (netsoc_sdram_bankmachine2_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (netsoc_sdram_bankmachine2_cmd_buffer_lookahead_do_read) begin
		netsoc_sdram_bankmachine2_cmd_buffer_lookahead_consume <= (netsoc_sdram_bankmachine2_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we & netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable) & (~netsoc_sdram_bankmachine2_cmd_buffer_lookahead_replace))) begin
		if ((~netsoc_sdram_bankmachine2_cmd_buffer_lookahead_do_read)) begin
			netsoc_sdram_bankmachine2_cmd_buffer_lookahead_level <= (netsoc_sdram_bankmachine2_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (netsoc_sdram_bankmachine2_cmd_buffer_lookahead_do_read) begin
			netsoc_sdram_bankmachine2_cmd_buffer_lookahead_level <= (netsoc_sdram_bankmachine2_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (netsoc_sdram_bankmachine2_cmd_buffer_pipe_ce) begin
		netsoc_sdram_bankmachine2_cmd_buffer_valid_n <= netsoc_sdram_bankmachine2_cmd_buffer_sink_valid;
	end
	if (netsoc_sdram_bankmachine2_cmd_buffer_pipe_ce) begin
		netsoc_sdram_bankmachine2_cmd_buffer_first_n <= (netsoc_sdram_bankmachine2_cmd_buffer_sink_valid & netsoc_sdram_bankmachine2_cmd_buffer_sink_first);
		netsoc_sdram_bankmachine2_cmd_buffer_last_n <= (netsoc_sdram_bankmachine2_cmd_buffer_sink_valid & netsoc_sdram_bankmachine2_cmd_buffer_sink_last);
	end
	if (netsoc_sdram_bankmachine2_cmd_buffer_pipe_ce) begin
		netsoc_sdram_bankmachine2_cmd_buffer_source_payload_we <= netsoc_sdram_bankmachine2_cmd_buffer_sink_payload_we;
		netsoc_sdram_bankmachine2_cmd_buffer_source_payload_adr <= netsoc_sdram_bankmachine2_cmd_buffer_sink_payload_adr;
	end
	if (netsoc_sdram_bankmachine2_wait) begin
		if ((~netsoc_sdram_bankmachine2_done)) begin
			netsoc_sdram_bankmachine2_count <= (netsoc_sdram_bankmachine2_count - 1'd1);
		end
	end else begin
		netsoc_sdram_bankmachine2_count <= 3'd5;
	end
	bankmachine2_state <= bankmachine2_next_state;
	if (netsoc_sdram_bankmachine3_track_close) begin
		netsoc_sdram_bankmachine3_has_openrow <= 1'd0;
	end else begin
		if (netsoc_sdram_bankmachine3_track_open) begin
			netsoc_sdram_bankmachine3_has_openrow <= 1'd1;
			netsoc_sdram_bankmachine3_openrow <= netsoc_sdram_bankmachine3_cmd_buffer_source_payload_adr[20:7];
		end
	end
	if (((netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we & netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable) & (~netsoc_sdram_bankmachine3_cmd_buffer_lookahead_replace))) begin
		netsoc_sdram_bankmachine3_cmd_buffer_lookahead_produce <= (netsoc_sdram_bankmachine3_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (netsoc_sdram_bankmachine3_cmd_buffer_lookahead_do_read) begin
		netsoc_sdram_bankmachine3_cmd_buffer_lookahead_consume <= (netsoc_sdram_bankmachine3_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we & netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable) & (~netsoc_sdram_bankmachine3_cmd_buffer_lookahead_replace))) begin
		if ((~netsoc_sdram_bankmachine3_cmd_buffer_lookahead_do_read)) begin
			netsoc_sdram_bankmachine3_cmd_buffer_lookahead_level <= (netsoc_sdram_bankmachine3_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (netsoc_sdram_bankmachine3_cmd_buffer_lookahead_do_read) begin
			netsoc_sdram_bankmachine3_cmd_buffer_lookahead_level <= (netsoc_sdram_bankmachine3_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (netsoc_sdram_bankmachine3_cmd_buffer_pipe_ce) begin
		netsoc_sdram_bankmachine3_cmd_buffer_valid_n <= netsoc_sdram_bankmachine3_cmd_buffer_sink_valid;
	end
	if (netsoc_sdram_bankmachine3_cmd_buffer_pipe_ce) begin
		netsoc_sdram_bankmachine3_cmd_buffer_first_n <= (netsoc_sdram_bankmachine3_cmd_buffer_sink_valid & netsoc_sdram_bankmachine3_cmd_buffer_sink_first);
		netsoc_sdram_bankmachine3_cmd_buffer_last_n <= (netsoc_sdram_bankmachine3_cmd_buffer_sink_valid & netsoc_sdram_bankmachine3_cmd_buffer_sink_last);
	end
	if (netsoc_sdram_bankmachine3_cmd_buffer_pipe_ce) begin
		netsoc_sdram_bankmachine3_cmd_buffer_source_payload_we <= netsoc_sdram_bankmachine3_cmd_buffer_sink_payload_we;
		netsoc_sdram_bankmachine3_cmd_buffer_source_payload_adr <= netsoc_sdram_bankmachine3_cmd_buffer_sink_payload_adr;
	end
	if (netsoc_sdram_bankmachine3_wait) begin
		if ((~netsoc_sdram_bankmachine3_done)) begin
			netsoc_sdram_bankmachine3_count <= (netsoc_sdram_bankmachine3_count - 1'd1);
		end
	end else begin
		netsoc_sdram_bankmachine3_count <= 3'd5;
	end
	bankmachine3_state <= bankmachine3_next_state;
	if (netsoc_sdram_bankmachine4_track_close) begin
		netsoc_sdram_bankmachine4_has_openrow <= 1'd0;
	end else begin
		if (netsoc_sdram_bankmachine4_track_open) begin
			netsoc_sdram_bankmachine4_has_openrow <= 1'd1;
			netsoc_sdram_bankmachine4_openrow <= netsoc_sdram_bankmachine4_cmd_buffer_source_payload_adr[20:7];
		end
	end
	if (((netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_we & netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable) & (~netsoc_sdram_bankmachine4_cmd_buffer_lookahead_replace))) begin
		netsoc_sdram_bankmachine4_cmd_buffer_lookahead_produce <= (netsoc_sdram_bankmachine4_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (netsoc_sdram_bankmachine4_cmd_buffer_lookahead_do_read) begin
		netsoc_sdram_bankmachine4_cmd_buffer_lookahead_consume <= (netsoc_sdram_bankmachine4_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_we & netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable) & (~netsoc_sdram_bankmachine4_cmd_buffer_lookahead_replace))) begin
		if ((~netsoc_sdram_bankmachine4_cmd_buffer_lookahead_do_read)) begin
			netsoc_sdram_bankmachine4_cmd_buffer_lookahead_level <= (netsoc_sdram_bankmachine4_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (netsoc_sdram_bankmachine4_cmd_buffer_lookahead_do_read) begin
			netsoc_sdram_bankmachine4_cmd_buffer_lookahead_level <= (netsoc_sdram_bankmachine4_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (netsoc_sdram_bankmachine4_cmd_buffer_pipe_ce) begin
		netsoc_sdram_bankmachine4_cmd_buffer_valid_n <= netsoc_sdram_bankmachine4_cmd_buffer_sink_valid;
	end
	if (netsoc_sdram_bankmachine4_cmd_buffer_pipe_ce) begin
		netsoc_sdram_bankmachine4_cmd_buffer_first_n <= (netsoc_sdram_bankmachine4_cmd_buffer_sink_valid & netsoc_sdram_bankmachine4_cmd_buffer_sink_first);
		netsoc_sdram_bankmachine4_cmd_buffer_last_n <= (netsoc_sdram_bankmachine4_cmd_buffer_sink_valid & netsoc_sdram_bankmachine4_cmd_buffer_sink_last);
	end
	if (netsoc_sdram_bankmachine4_cmd_buffer_pipe_ce) begin
		netsoc_sdram_bankmachine4_cmd_buffer_source_payload_we <= netsoc_sdram_bankmachine4_cmd_buffer_sink_payload_we;
		netsoc_sdram_bankmachine4_cmd_buffer_source_payload_adr <= netsoc_sdram_bankmachine4_cmd_buffer_sink_payload_adr;
	end
	if (netsoc_sdram_bankmachine4_wait) begin
		if ((~netsoc_sdram_bankmachine4_done)) begin
			netsoc_sdram_bankmachine4_count <= (netsoc_sdram_bankmachine4_count - 1'd1);
		end
	end else begin
		netsoc_sdram_bankmachine4_count <= 3'd5;
	end
	bankmachine4_state <= bankmachine4_next_state;
	if (netsoc_sdram_bankmachine5_track_close) begin
		netsoc_sdram_bankmachine5_has_openrow <= 1'd0;
	end else begin
		if (netsoc_sdram_bankmachine5_track_open) begin
			netsoc_sdram_bankmachine5_has_openrow <= 1'd1;
			netsoc_sdram_bankmachine5_openrow <= netsoc_sdram_bankmachine5_cmd_buffer_source_payload_adr[20:7];
		end
	end
	if (((netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_we & netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable) & (~netsoc_sdram_bankmachine5_cmd_buffer_lookahead_replace))) begin
		netsoc_sdram_bankmachine5_cmd_buffer_lookahead_produce <= (netsoc_sdram_bankmachine5_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (netsoc_sdram_bankmachine5_cmd_buffer_lookahead_do_read) begin
		netsoc_sdram_bankmachine5_cmd_buffer_lookahead_consume <= (netsoc_sdram_bankmachine5_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_we & netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable) & (~netsoc_sdram_bankmachine5_cmd_buffer_lookahead_replace))) begin
		if ((~netsoc_sdram_bankmachine5_cmd_buffer_lookahead_do_read)) begin
			netsoc_sdram_bankmachine5_cmd_buffer_lookahead_level <= (netsoc_sdram_bankmachine5_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (netsoc_sdram_bankmachine5_cmd_buffer_lookahead_do_read) begin
			netsoc_sdram_bankmachine5_cmd_buffer_lookahead_level <= (netsoc_sdram_bankmachine5_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (netsoc_sdram_bankmachine5_cmd_buffer_pipe_ce) begin
		netsoc_sdram_bankmachine5_cmd_buffer_valid_n <= netsoc_sdram_bankmachine5_cmd_buffer_sink_valid;
	end
	if (netsoc_sdram_bankmachine5_cmd_buffer_pipe_ce) begin
		netsoc_sdram_bankmachine5_cmd_buffer_first_n <= (netsoc_sdram_bankmachine5_cmd_buffer_sink_valid & netsoc_sdram_bankmachine5_cmd_buffer_sink_first);
		netsoc_sdram_bankmachine5_cmd_buffer_last_n <= (netsoc_sdram_bankmachine5_cmd_buffer_sink_valid & netsoc_sdram_bankmachine5_cmd_buffer_sink_last);
	end
	if (netsoc_sdram_bankmachine5_cmd_buffer_pipe_ce) begin
		netsoc_sdram_bankmachine5_cmd_buffer_source_payload_we <= netsoc_sdram_bankmachine5_cmd_buffer_sink_payload_we;
		netsoc_sdram_bankmachine5_cmd_buffer_source_payload_adr <= netsoc_sdram_bankmachine5_cmd_buffer_sink_payload_adr;
	end
	if (netsoc_sdram_bankmachine5_wait) begin
		if ((~netsoc_sdram_bankmachine5_done)) begin
			netsoc_sdram_bankmachine5_count <= (netsoc_sdram_bankmachine5_count - 1'd1);
		end
	end else begin
		netsoc_sdram_bankmachine5_count <= 3'd5;
	end
	bankmachine5_state <= bankmachine5_next_state;
	if (netsoc_sdram_bankmachine6_track_close) begin
		netsoc_sdram_bankmachine6_has_openrow <= 1'd0;
	end else begin
		if (netsoc_sdram_bankmachine6_track_open) begin
			netsoc_sdram_bankmachine6_has_openrow <= 1'd1;
			netsoc_sdram_bankmachine6_openrow <= netsoc_sdram_bankmachine6_cmd_buffer_source_payload_adr[20:7];
		end
	end
	if (((netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_we & netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable) & (~netsoc_sdram_bankmachine6_cmd_buffer_lookahead_replace))) begin
		netsoc_sdram_bankmachine6_cmd_buffer_lookahead_produce <= (netsoc_sdram_bankmachine6_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (netsoc_sdram_bankmachine6_cmd_buffer_lookahead_do_read) begin
		netsoc_sdram_bankmachine6_cmd_buffer_lookahead_consume <= (netsoc_sdram_bankmachine6_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_we & netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable) & (~netsoc_sdram_bankmachine6_cmd_buffer_lookahead_replace))) begin
		if ((~netsoc_sdram_bankmachine6_cmd_buffer_lookahead_do_read)) begin
			netsoc_sdram_bankmachine6_cmd_buffer_lookahead_level <= (netsoc_sdram_bankmachine6_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (netsoc_sdram_bankmachine6_cmd_buffer_lookahead_do_read) begin
			netsoc_sdram_bankmachine6_cmd_buffer_lookahead_level <= (netsoc_sdram_bankmachine6_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (netsoc_sdram_bankmachine6_cmd_buffer_pipe_ce) begin
		netsoc_sdram_bankmachine6_cmd_buffer_valid_n <= netsoc_sdram_bankmachine6_cmd_buffer_sink_valid;
	end
	if (netsoc_sdram_bankmachine6_cmd_buffer_pipe_ce) begin
		netsoc_sdram_bankmachine6_cmd_buffer_first_n <= (netsoc_sdram_bankmachine6_cmd_buffer_sink_valid & netsoc_sdram_bankmachine6_cmd_buffer_sink_first);
		netsoc_sdram_bankmachine6_cmd_buffer_last_n <= (netsoc_sdram_bankmachine6_cmd_buffer_sink_valid & netsoc_sdram_bankmachine6_cmd_buffer_sink_last);
	end
	if (netsoc_sdram_bankmachine6_cmd_buffer_pipe_ce) begin
		netsoc_sdram_bankmachine6_cmd_buffer_source_payload_we <= netsoc_sdram_bankmachine6_cmd_buffer_sink_payload_we;
		netsoc_sdram_bankmachine6_cmd_buffer_source_payload_adr <= netsoc_sdram_bankmachine6_cmd_buffer_sink_payload_adr;
	end
	if (netsoc_sdram_bankmachine6_wait) begin
		if ((~netsoc_sdram_bankmachine6_done)) begin
			netsoc_sdram_bankmachine6_count <= (netsoc_sdram_bankmachine6_count - 1'd1);
		end
	end else begin
		netsoc_sdram_bankmachine6_count <= 3'd5;
	end
	bankmachine6_state <= bankmachine6_next_state;
	if (netsoc_sdram_bankmachine7_track_close) begin
		netsoc_sdram_bankmachine7_has_openrow <= 1'd0;
	end else begin
		if (netsoc_sdram_bankmachine7_track_open) begin
			netsoc_sdram_bankmachine7_has_openrow <= 1'd1;
			netsoc_sdram_bankmachine7_openrow <= netsoc_sdram_bankmachine7_cmd_buffer_source_payload_adr[20:7];
		end
	end
	if (((netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_we & netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable) & (~netsoc_sdram_bankmachine7_cmd_buffer_lookahead_replace))) begin
		netsoc_sdram_bankmachine7_cmd_buffer_lookahead_produce <= (netsoc_sdram_bankmachine7_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (netsoc_sdram_bankmachine7_cmd_buffer_lookahead_do_read) begin
		netsoc_sdram_bankmachine7_cmd_buffer_lookahead_consume <= (netsoc_sdram_bankmachine7_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_we & netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable) & (~netsoc_sdram_bankmachine7_cmd_buffer_lookahead_replace))) begin
		if ((~netsoc_sdram_bankmachine7_cmd_buffer_lookahead_do_read)) begin
			netsoc_sdram_bankmachine7_cmd_buffer_lookahead_level <= (netsoc_sdram_bankmachine7_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (netsoc_sdram_bankmachine7_cmd_buffer_lookahead_do_read) begin
			netsoc_sdram_bankmachine7_cmd_buffer_lookahead_level <= (netsoc_sdram_bankmachine7_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (netsoc_sdram_bankmachine7_cmd_buffer_pipe_ce) begin
		netsoc_sdram_bankmachine7_cmd_buffer_valid_n <= netsoc_sdram_bankmachine7_cmd_buffer_sink_valid;
	end
	if (netsoc_sdram_bankmachine7_cmd_buffer_pipe_ce) begin
		netsoc_sdram_bankmachine7_cmd_buffer_first_n <= (netsoc_sdram_bankmachine7_cmd_buffer_sink_valid & netsoc_sdram_bankmachine7_cmd_buffer_sink_first);
		netsoc_sdram_bankmachine7_cmd_buffer_last_n <= (netsoc_sdram_bankmachine7_cmd_buffer_sink_valid & netsoc_sdram_bankmachine7_cmd_buffer_sink_last);
	end
	if (netsoc_sdram_bankmachine7_cmd_buffer_pipe_ce) begin
		netsoc_sdram_bankmachine7_cmd_buffer_source_payload_we <= netsoc_sdram_bankmachine7_cmd_buffer_sink_payload_we;
		netsoc_sdram_bankmachine7_cmd_buffer_source_payload_adr <= netsoc_sdram_bankmachine7_cmd_buffer_sink_payload_adr;
	end
	if (netsoc_sdram_bankmachine7_wait) begin
		if ((~netsoc_sdram_bankmachine7_done)) begin
			netsoc_sdram_bankmachine7_count <= (netsoc_sdram_bankmachine7_count - 1'd1);
		end
	end else begin
		netsoc_sdram_bankmachine7_count <= 3'd5;
	end
	bankmachine7_state <= bankmachine7_next_state;
	if ((~netsoc_sdram_en0)) begin
		netsoc_sdram_time0 <= 5'd31;
	end else begin
		if ((~netsoc_sdram_max_time0)) begin
			netsoc_sdram_time0 <= (netsoc_sdram_time0 - 1'd1);
		end
	end
	if ((~netsoc_sdram_en1)) begin
		netsoc_sdram_time1 <= 4'd15;
	end else begin
		if ((~netsoc_sdram_max_time1)) begin
			netsoc_sdram_time1 <= (netsoc_sdram_time1 - 1'd1);
		end
	end
	if (netsoc_sdram_choose_cmd_ce) begin
		case (netsoc_sdram_choose_cmd_grant)
			1'd0: begin
				if (netsoc_sdram_choose_cmd_request[1]) begin
					netsoc_sdram_choose_cmd_grant <= 1'd1;
				end else begin
					if (netsoc_sdram_choose_cmd_request[2]) begin
						netsoc_sdram_choose_cmd_grant <= 2'd2;
					end else begin
						if (netsoc_sdram_choose_cmd_request[3]) begin
							netsoc_sdram_choose_cmd_grant <= 2'd3;
						end else begin
							if (netsoc_sdram_choose_cmd_request[4]) begin
								netsoc_sdram_choose_cmd_grant <= 3'd4;
							end else begin
								if (netsoc_sdram_choose_cmd_request[5]) begin
									netsoc_sdram_choose_cmd_grant <= 3'd5;
								end else begin
									if (netsoc_sdram_choose_cmd_request[6]) begin
										netsoc_sdram_choose_cmd_grant <= 3'd6;
									end else begin
										if (netsoc_sdram_choose_cmd_request[7]) begin
											netsoc_sdram_choose_cmd_grant <= 3'd7;
										end
									end
								end
							end
						end
					end
				end
			end
			1'd1: begin
				if (netsoc_sdram_choose_cmd_request[2]) begin
					netsoc_sdram_choose_cmd_grant <= 2'd2;
				end else begin
					if (netsoc_sdram_choose_cmd_request[3]) begin
						netsoc_sdram_choose_cmd_grant <= 2'd3;
					end else begin
						if (netsoc_sdram_choose_cmd_request[4]) begin
							netsoc_sdram_choose_cmd_grant <= 3'd4;
						end else begin
							if (netsoc_sdram_choose_cmd_request[5]) begin
								netsoc_sdram_choose_cmd_grant <= 3'd5;
							end else begin
								if (netsoc_sdram_choose_cmd_request[6]) begin
									netsoc_sdram_choose_cmd_grant <= 3'd6;
								end else begin
									if (netsoc_sdram_choose_cmd_request[7]) begin
										netsoc_sdram_choose_cmd_grant <= 3'd7;
									end else begin
										if (netsoc_sdram_choose_cmd_request[0]) begin
											netsoc_sdram_choose_cmd_grant <= 1'd0;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd2: begin
				if (netsoc_sdram_choose_cmd_request[3]) begin
					netsoc_sdram_choose_cmd_grant <= 2'd3;
				end else begin
					if (netsoc_sdram_choose_cmd_request[4]) begin
						netsoc_sdram_choose_cmd_grant <= 3'd4;
					end else begin
						if (netsoc_sdram_choose_cmd_request[5]) begin
							netsoc_sdram_choose_cmd_grant <= 3'd5;
						end else begin
							if (netsoc_sdram_choose_cmd_request[6]) begin
								netsoc_sdram_choose_cmd_grant <= 3'd6;
							end else begin
								if (netsoc_sdram_choose_cmd_request[7]) begin
									netsoc_sdram_choose_cmd_grant <= 3'd7;
								end else begin
									if (netsoc_sdram_choose_cmd_request[0]) begin
										netsoc_sdram_choose_cmd_grant <= 1'd0;
									end else begin
										if (netsoc_sdram_choose_cmd_request[1]) begin
											netsoc_sdram_choose_cmd_grant <= 1'd1;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd3: begin
				if (netsoc_sdram_choose_cmd_request[4]) begin
					netsoc_sdram_choose_cmd_grant <= 3'd4;
				end else begin
					if (netsoc_sdram_choose_cmd_request[5]) begin
						netsoc_sdram_choose_cmd_grant <= 3'd5;
					end else begin
						if (netsoc_sdram_choose_cmd_request[6]) begin
							netsoc_sdram_choose_cmd_grant <= 3'd6;
						end else begin
							if (netsoc_sdram_choose_cmd_request[7]) begin
								netsoc_sdram_choose_cmd_grant <= 3'd7;
							end else begin
								if (netsoc_sdram_choose_cmd_request[0]) begin
									netsoc_sdram_choose_cmd_grant <= 1'd0;
								end else begin
									if (netsoc_sdram_choose_cmd_request[1]) begin
										netsoc_sdram_choose_cmd_grant <= 1'd1;
									end else begin
										if (netsoc_sdram_choose_cmd_request[2]) begin
											netsoc_sdram_choose_cmd_grant <= 2'd2;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd4: begin
				if (netsoc_sdram_choose_cmd_request[5]) begin
					netsoc_sdram_choose_cmd_grant <= 3'd5;
				end else begin
					if (netsoc_sdram_choose_cmd_request[6]) begin
						netsoc_sdram_choose_cmd_grant <= 3'd6;
					end else begin
						if (netsoc_sdram_choose_cmd_request[7]) begin
							netsoc_sdram_choose_cmd_grant <= 3'd7;
						end else begin
							if (netsoc_sdram_choose_cmd_request[0]) begin
								netsoc_sdram_choose_cmd_grant <= 1'd0;
							end else begin
								if (netsoc_sdram_choose_cmd_request[1]) begin
									netsoc_sdram_choose_cmd_grant <= 1'd1;
								end else begin
									if (netsoc_sdram_choose_cmd_request[2]) begin
										netsoc_sdram_choose_cmd_grant <= 2'd2;
									end else begin
										if (netsoc_sdram_choose_cmd_request[3]) begin
											netsoc_sdram_choose_cmd_grant <= 2'd3;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd5: begin
				if (netsoc_sdram_choose_cmd_request[6]) begin
					netsoc_sdram_choose_cmd_grant <= 3'd6;
				end else begin
					if (netsoc_sdram_choose_cmd_request[7]) begin
						netsoc_sdram_choose_cmd_grant <= 3'd7;
					end else begin
						if (netsoc_sdram_choose_cmd_request[0]) begin
							netsoc_sdram_choose_cmd_grant <= 1'd0;
						end else begin
							if (netsoc_sdram_choose_cmd_request[1]) begin
								netsoc_sdram_choose_cmd_grant <= 1'd1;
							end else begin
								if (netsoc_sdram_choose_cmd_request[2]) begin
									netsoc_sdram_choose_cmd_grant <= 2'd2;
								end else begin
									if (netsoc_sdram_choose_cmd_request[3]) begin
										netsoc_sdram_choose_cmd_grant <= 2'd3;
									end else begin
										if (netsoc_sdram_choose_cmd_request[4]) begin
											netsoc_sdram_choose_cmd_grant <= 3'd4;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd6: begin
				if (netsoc_sdram_choose_cmd_request[7]) begin
					netsoc_sdram_choose_cmd_grant <= 3'd7;
				end else begin
					if (netsoc_sdram_choose_cmd_request[0]) begin
						netsoc_sdram_choose_cmd_grant <= 1'd0;
					end else begin
						if (netsoc_sdram_choose_cmd_request[1]) begin
							netsoc_sdram_choose_cmd_grant <= 1'd1;
						end else begin
							if (netsoc_sdram_choose_cmd_request[2]) begin
								netsoc_sdram_choose_cmd_grant <= 2'd2;
							end else begin
								if (netsoc_sdram_choose_cmd_request[3]) begin
									netsoc_sdram_choose_cmd_grant <= 2'd3;
								end else begin
									if (netsoc_sdram_choose_cmd_request[4]) begin
										netsoc_sdram_choose_cmd_grant <= 3'd4;
									end else begin
										if (netsoc_sdram_choose_cmd_request[5]) begin
											netsoc_sdram_choose_cmd_grant <= 3'd5;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd7: begin
				if (netsoc_sdram_choose_cmd_request[0]) begin
					netsoc_sdram_choose_cmd_grant <= 1'd0;
				end else begin
					if (netsoc_sdram_choose_cmd_request[1]) begin
						netsoc_sdram_choose_cmd_grant <= 1'd1;
					end else begin
						if (netsoc_sdram_choose_cmd_request[2]) begin
							netsoc_sdram_choose_cmd_grant <= 2'd2;
						end else begin
							if (netsoc_sdram_choose_cmd_request[3]) begin
								netsoc_sdram_choose_cmd_grant <= 2'd3;
							end else begin
								if (netsoc_sdram_choose_cmd_request[4]) begin
									netsoc_sdram_choose_cmd_grant <= 3'd4;
								end else begin
									if (netsoc_sdram_choose_cmd_request[5]) begin
										netsoc_sdram_choose_cmd_grant <= 3'd5;
									end else begin
										if (netsoc_sdram_choose_cmd_request[6]) begin
											netsoc_sdram_choose_cmd_grant <= 3'd6;
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
	if (netsoc_sdram_choose_req_ce) begin
		case (netsoc_sdram_choose_req_grant)
			1'd0: begin
				if (netsoc_sdram_choose_req_request[1]) begin
					netsoc_sdram_choose_req_grant <= 1'd1;
				end else begin
					if (netsoc_sdram_choose_req_request[2]) begin
						netsoc_sdram_choose_req_grant <= 2'd2;
					end else begin
						if (netsoc_sdram_choose_req_request[3]) begin
							netsoc_sdram_choose_req_grant <= 2'd3;
						end else begin
							if (netsoc_sdram_choose_req_request[4]) begin
								netsoc_sdram_choose_req_grant <= 3'd4;
							end else begin
								if (netsoc_sdram_choose_req_request[5]) begin
									netsoc_sdram_choose_req_grant <= 3'd5;
								end else begin
									if (netsoc_sdram_choose_req_request[6]) begin
										netsoc_sdram_choose_req_grant <= 3'd6;
									end else begin
										if (netsoc_sdram_choose_req_request[7]) begin
											netsoc_sdram_choose_req_grant <= 3'd7;
										end
									end
								end
							end
						end
					end
				end
			end
			1'd1: begin
				if (netsoc_sdram_choose_req_request[2]) begin
					netsoc_sdram_choose_req_grant <= 2'd2;
				end else begin
					if (netsoc_sdram_choose_req_request[3]) begin
						netsoc_sdram_choose_req_grant <= 2'd3;
					end else begin
						if (netsoc_sdram_choose_req_request[4]) begin
							netsoc_sdram_choose_req_grant <= 3'd4;
						end else begin
							if (netsoc_sdram_choose_req_request[5]) begin
								netsoc_sdram_choose_req_grant <= 3'd5;
							end else begin
								if (netsoc_sdram_choose_req_request[6]) begin
									netsoc_sdram_choose_req_grant <= 3'd6;
								end else begin
									if (netsoc_sdram_choose_req_request[7]) begin
										netsoc_sdram_choose_req_grant <= 3'd7;
									end else begin
										if (netsoc_sdram_choose_req_request[0]) begin
											netsoc_sdram_choose_req_grant <= 1'd0;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd2: begin
				if (netsoc_sdram_choose_req_request[3]) begin
					netsoc_sdram_choose_req_grant <= 2'd3;
				end else begin
					if (netsoc_sdram_choose_req_request[4]) begin
						netsoc_sdram_choose_req_grant <= 3'd4;
					end else begin
						if (netsoc_sdram_choose_req_request[5]) begin
							netsoc_sdram_choose_req_grant <= 3'd5;
						end else begin
							if (netsoc_sdram_choose_req_request[6]) begin
								netsoc_sdram_choose_req_grant <= 3'd6;
							end else begin
								if (netsoc_sdram_choose_req_request[7]) begin
									netsoc_sdram_choose_req_grant <= 3'd7;
								end else begin
									if (netsoc_sdram_choose_req_request[0]) begin
										netsoc_sdram_choose_req_grant <= 1'd0;
									end else begin
										if (netsoc_sdram_choose_req_request[1]) begin
											netsoc_sdram_choose_req_grant <= 1'd1;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd3: begin
				if (netsoc_sdram_choose_req_request[4]) begin
					netsoc_sdram_choose_req_grant <= 3'd4;
				end else begin
					if (netsoc_sdram_choose_req_request[5]) begin
						netsoc_sdram_choose_req_grant <= 3'd5;
					end else begin
						if (netsoc_sdram_choose_req_request[6]) begin
							netsoc_sdram_choose_req_grant <= 3'd6;
						end else begin
							if (netsoc_sdram_choose_req_request[7]) begin
								netsoc_sdram_choose_req_grant <= 3'd7;
							end else begin
								if (netsoc_sdram_choose_req_request[0]) begin
									netsoc_sdram_choose_req_grant <= 1'd0;
								end else begin
									if (netsoc_sdram_choose_req_request[1]) begin
										netsoc_sdram_choose_req_grant <= 1'd1;
									end else begin
										if (netsoc_sdram_choose_req_request[2]) begin
											netsoc_sdram_choose_req_grant <= 2'd2;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd4: begin
				if (netsoc_sdram_choose_req_request[5]) begin
					netsoc_sdram_choose_req_grant <= 3'd5;
				end else begin
					if (netsoc_sdram_choose_req_request[6]) begin
						netsoc_sdram_choose_req_grant <= 3'd6;
					end else begin
						if (netsoc_sdram_choose_req_request[7]) begin
							netsoc_sdram_choose_req_grant <= 3'd7;
						end else begin
							if (netsoc_sdram_choose_req_request[0]) begin
								netsoc_sdram_choose_req_grant <= 1'd0;
							end else begin
								if (netsoc_sdram_choose_req_request[1]) begin
									netsoc_sdram_choose_req_grant <= 1'd1;
								end else begin
									if (netsoc_sdram_choose_req_request[2]) begin
										netsoc_sdram_choose_req_grant <= 2'd2;
									end else begin
										if (netsoc_sdram_choose_req_request[3]) begin
											netsoc_sdram_choose_req_grant <= 2'd3;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd5: begin
				if (netsoc_sdram_choose_req_request[6]) begin
					netsoc_sdram_choose_req_grant <= 3'd6;
				end else begin
					if (netsoc_sdram_choose_req_request[7]) begin
						netsoc_sdram_choose_req_grant <= 3'd7;
					end else begin
						if (netsoc_sdram_choose_req_request[0]) begin
							netsoc_sdram_choose_req_grant <= 1'd0;
						end else begin
							if (netsoc_sdram_choose_req_request[1]) begin
								netsoc_sdram_choose_req_grant <= 1'd1;
							end else begin
								if (netsoc_sdram_choose_req_request[2]) begin
									netsoc_sdram_choose_req_grant <= 2'd2;
								end else begin
									if (netsoc_sdram_choose_req_request[3]) begin
										netsoc_sdram_choose_req_grant <= 2'd3;
									end else begin
										if (netsoc_sdram_choose_req_request[4]) begin
											netsoc_sdram_choose_req_grant <= 3'd4;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd6: begin
				if (netsoc_sdram_choose_req_request[7]) begin
					netsoc_sdram_choose_req_grant <= 3'd7;
				end else begin
					if (netsoc_sdram_choose_req_request[0]) begin
						netsoc_sdram_choose_req_grant <= 1'd0;
					end else begin
						if (netsoc_sdram_choose_req_request[1]) begin
							netsoc_sdram_choose_req_grant <= 1'd1;
						end else begin
							if (netsoc_sdram_choose_req_request[2]) begin
								netsoc_sdram_choose_req_grant <= 2'd2;
							end else begin
								if (netsoc_sdram_choose_req_request[3]) begin
									netsoc_sdram_choose_req_grant <= 2'd3;
								end else begin
									if (netsoc_sdram_choose_req_request[4]) begin
										netsoc_sdram_choose_req_grant <= 3'd4;
									end else begin
										if (netsoc_sdram_choose_req_request[5]) begin
											netsoc_sdram_choose_req_grant <= 3'd5;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd7: begin
				if (netsoc_sdram_choose_req_request[0]) begin
					netsoc_sdram_choose_req_grant <= 1'd0;
				end else begin
					if (netsoc_sdram_choose_req_request[1]) begin
						netsoc_sdram_choose_req_grant <= 1'd1;
					end else begin
						if (netsoc_sdram_choose_req_request[2]) begin
							netsoc_sdram_choose_req_grant <= 2'd2;
						end else begin
							if (netsoc_sdram_choose_req_request[3]) begin
								netsoc_sdram_choose_req_grant <= 2'd3;
							end else begin
								if (netsoc_sdram_choose_req_request[4]) begin
									netsoc_sdram_choose_req_grant <= 3'd4;
								end else begin
									if (netsoc_sdram_choose_req_request[5]) begin
										netsoc_sdram_choose_req_grant <= 3'd5;
									end else begin
										if (netsoc_sdram_choose_req_request[6]) begin
											netsoc_sdram_choose_req_grant <= 3'd6;
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
	netsoc_sdram_dfi_p0_address <= array_muxed0;
	netsoc_sdram_dfi_p0_bank <= array_muxed1;
	netsoc_sdram_dfi_p0_cas_n <= (~array_muxed2);
	netsoc_sdram_dfi_p0_ras_n <= (~array_muxed3);
	netsoc_sdram_dfi_p0_we_n <= (~array_muxed4);
	netsoc_sdram_dfi_p0_rddata_en <= array_muxed5;
	netsoc_sdram_dfi_p0_wrdata_en <= array_muxed6;
	netsoc_sdram_dfi_p1_address <= array_muxed7;
	netsoc_sdram_dfi_p1_bank <= array_muxed8;
	netsoc_sdram_dfi_p1_cas_n <= (~array_muxed9);
	netsoc_sdram_dfi_p1_ras_n <= (~array_muxed10);
	netsoc_sdram_dfi_p1_we_n <= (~array_muxed11);
	netsoc_sdram_dfi_p1_rddata_en <= array_muxed12;
	netsoc_sdram_dfi_p1_wrdata_en <= array_muxed13;
	netsoc_sdram_dfi_p2_address <= array_muxed14;
	netsoc_sdram_dfi_p2_bank <= array_muxed15;
	netsoc_sdram_dfi_p2_cas_n <= (~array_muxed16);
	netsoc_sdram_dfi_p2_ras_n <= (~array_muxed17);
	netsoc_sdram_dfi_p2_we_n <= (~array_muxed18);
	netsoc_sdram_dfi_p2_rddata_en <= array_muxed19;
	netsoc_sdram_dfi_p2_wrdata_en <= array_muxed20;
	netsoc_sdram_dfi_p3_address <= array_muxed21;
	netsoc_sdram_dfi_p3_bank <= array_muxed22;
	netsoc_sdram_dfi_p3_cas_n <= (~array_muxed23);
	netsoc_sdram_dfi_p3_ras_n <= (~array_muxed24);
	netsoc_sdram_dfi_p3_we_n <= (~array_muxed25);
	netsoc_sdram_dfi_p3_rddata_en <= array_muxed26;
	netsoc_sdram_dfi_p3_wrdata_en <= array_muxed27;
	if (netsoc_sdram_trrdcon_valid) begin
		netsoc_sdram_trrdcon_count <= 1'd0;
		if (1'd1) begin
			netsoc_sdram_trrdcon_ready <= 1'd1;
		end else begin
			netsoc_sdram_trrdcon_ready <= 1'd0;
		end
	end else begin
		if ((~netsoc_sdram_trrdcon_ready)) begin
			netsoc_sdram_trrdcon_count <= (netsoc_sdram_trrdcon_count - 1'd1);
			if ((netsoc_sdram_trrdcon_count == 1'd1)) begin
				netsoc_sdram_trrdcon_ready <= 1'd1;
			end
		end
	end
	netsoc_sdram_tfawcon_window <= {netsoc_sdram_tfawcon_window, netsoc_sdram_tfawcon_valid};
	if ((netsoc_sdram_tfawcon_count < 3'd4)) begin
		if ((netsoc_sdram_tfawcon_count == 2'd3)) begin
			netsoc_sdram_tfawcon_ready <= (~netsoc_sdram_tfawcon_valid);
		end else begin
			netsoc_sdram_tfawcon_ready <= 1'd1;
		end
	end
	if (netsoc_sdram_tccdcon_valid) begin
		netsoc_sdram_tccdcon_count <= 1'd0;
		if (1'd1) begin
			netsoc_sdram_tccdcon_ready <= 1'd1;
		end else begin
			netsoc_sdram_tccdcon_ready <= 1'd0;
		end
	end else begin
		if ((~netsoc_sdram_tccdcon_ready)) begin
			netsoc_sdram_tccdcon_count <= (netsoc_sdram_tccdcon_count - 1'd1);
			if ((netsoc_sdram_tccdcon_count == 1'd1)) begin
				netsoc_sdram_tccdcon_ready <= 1'd1;
			end
		end
	end
	if (netsoc_sdram_twtrcon_valid) begin
		netsoc_sdram_twtrcon_count <= 2'd2;
		if (1'd0) begin
			netsoc_sdram_twtrcon_ready <= 1'd1;
		end else begin
			netsoc_sdram_twtrcon_ready <= 1'd0;
		end
	end else begin
		if ((~netsoc_sdram_twtrcon_ready)) begin
			netsoc_sdram_twtrcon_count <= (netsoc_sdram_twtrcon_count - 1'd1);
			if ((netsoc_sdram_twtrcon_count == 1'd1)) begin
				netsoc_sdram_twtrcon_ready <= 1'd1;
			end
		end
	end
	multiplexer_state <= multiplexer_next_state;
	netsoc_sdram_bandwidth_cmd_valid <= netsoc_sdram_choose_req_cmd_valid;
	netsoc_sdram_bandwidth_cmd_ready <= netsoc_sdram_choose_req_cmd_ready;
	netsoc_sdram_bandwidth_cmd_is_read <= netsoc_sdram_choose_req_cmd_payload_is_read;
	netsoc_sdram_bandwidth_cmd_is_write <= netsoc_sdram_choose_req_cmd_payload_is_write;
	{netsoc_sdram_bandwidth_period, netsoc_sdram_bandwidth_counter} <= (netsoc_sdram_bandwidth_counter + 1'd1);
	if (netsoc_sdram_bandwidth_period) begin
		netsoc_sdram_bandwidth_nreads_r <= netsoc_sdram_bandwidth_nreads;
		netsoc_sdram_bandwidth_nwrites_r <= netsoc_sdram_bandwidth_nwrites;
		netsoc_sdram_bandwidth_nreads <= 1'd0;
		netsoc_sdram_bandwidth_nwrites <= 1'd0;
	end else begin
		if ((netsoc_sdram_bandwidth_cmd_valid & netsoc_sdram_bandwidth_cmd_ready)) begin
			if (netsoc_sdram_bandwidth_cmd_is_read) begin
				netsoc_sdram_bandwidth_nreads <= (netsoc_sdram_bandwidth_nreads + 1'd1);
			end
			if (netsoc_sdram_bandwidth_cmd_is_write) begin
				netsoc_sdram_bandwidth_nwrites <= (netsoc_sdram_bandwidth_nwrites + 1'd1);
			end
		end
	end
	if (netsoc_sdram_bandwidth_update_re) begin
		netsoc_sdram_bandwidth_nreads_status <= netsoc_sdram_bandwidth_nreads_r;
		netsoc_sdram_bandwidth_nwrites_status <= netsoc_sdram_bandwidth_nwrites_r;
	end
	if (((roundrobin0_grant == 1'd0) & netsoc_sdram_interface_bank0_rdata_valid)) begin
		rbank <= 1'd0;
	end
	if (((roundrobin0_grant == 1'd0) & netsoc_sdram_interface_bank0_wdata_ready)) begin
		wbank <= 1'd0;
	end
	if (((roundrobin1_grant == 1'd0) & netsoc_sdram_interface_bank1_rdata_valid)) begin
		rbank <= 1'd1;
	end
	if (((roundrobin1_grant == 1'd0) & netsoc_sdram_interface_bank1_wdata_ready)) begin
		wbank <= 1'd1;
	end
	if (((roundrobin2_grant == 1'd0) & netsoc_sdram_interface_bank2_rdata_valid)) begin
		rbank <= 2'd2;
	end
	if (((roundrobin2_grant == 1'd0) & netsoc_sdram_interface_bank2_wdata_ready)) begin
		wbank <= 2'd2;
	end
	if (((roundrobin3_grant == 1'd0) & netsoc_sdram_interface_bank3_rdata_valid)) begin
		rbank <= 2'd3;
	end
	if (((roundrobin3_grant == 1'd0) & netsoc_sdram_interface_bank3_wdata_ready)) begin
		wbank <= 2'd3;
	end
	if (((roundrobin4_grant == 1'd0) & netsoc_sdram_interface_bank4_rdata_valid)) begin
		rbank <= 3'd4;
	end
	if (((roundrobin4_grant == 1'd0) & netsoc_sdram_interface_bank4_wdata_ready)) begin
		wbank <= 3'd4;
	end
	if (((roundrobin5_grant == 1'd0) & netsoc_sdram_interface_bank5_rdata_valid)) begin
		rbank <= 3'd5;
	end
	if (((roundrobin5_grant == 1'd0) & netsoc_sdram_interface_bank5_wdata_ready)) begin
		wbank <= 3'd5;
	end
	if (((roundrobin6_grant == 1'd0) & netsoc_sdram_interface_bank6_rdata_valid)) begin
		rbank <= 3'd6;
	end
	if (((roundrobin6_grant == 1'd0) & netsoc_sdram_interface_bank6_wdata_ready)) begin
		wbank <= 3'd6;
	end
	if (((roundrobin7_grant == 1'd0) & netsoc_sdram_interface_bank7_rdata_valid)) begin
		rbank <= 3'd7;
	end
	if (((roundrobin7_grant == 1'd0) & netsoc_sdram_interface_bank7_wdata_ready)) begin
		wbank <= 3'd7;
	end
	new_master_wdata_ready0 <= ((((((((1'd0 | ((roundrobin0_grant == 1'd0) & netsoc_sdram_interface_bank0_wdata_ready)) | ((roundrobin1_grant == 1'd0) & netsoc_sdram_interface_bank1_wdata_ready)) | ((roundrobin2_grant == 1'd0) & netsoc_sdram_interface_bank2_wdata_ready)) | ((roundrobin3_grant == 1'd0) & netsoc_sdram_interface_bank3_wdata_ready)) | ((roundrobin4_grant == 1'd0) & netsoc_sdram_interface_bank4_wdata_ready)) | ((roundrobin5_grant == 1'd0) & netsoc_sdram_interface_bank5_wdata_ready)) | ((roundrobin6_grant == 1'd0) & netsoc_sdram_interface_bank6_wdata_ready)) | ((roundrobin7_grant == 1'd0) & netsoc_sdram_interface_bank7_wdata_ready));
	new_master_wdata_ready1 <= new_master_wdata_ready0;
	new_master_wdata_ready2 <= new_master_wdata_ready1;
	new_master_rdata_valid0 <= ((((((((1'd0 | ((roundrobin0_grant == 1'd0) & netsoc_sdram_interface_bank0_rdata_valid)) | ((roundrobin1_grant == 1'd0) & netsoc_sdram_interface_bank1_rdata_valid)) | ((roundrobin2_grant == 1'd0) & netsoc_sdram_interface_bank2_rdata_valid)) | ((roundrobin3_grant == 1'd0) & netsoc_sdram_interface_bank3_rdata_valid)) | ((roundrobin4_grant == 1'd0) & netsoc_sdram_interface_bank4_rdata_valid)) | ((roundrobin5_grant == 1'd0) & netsoc_sdram_interface_bank5_rdata_valid)) | ((roundrobin6_grant == 1'd0) & netsoc_sdram_interface_bank6_rdata_valid)) | ((roundrobin7_grant == 1'd0) & netsoc_sdram_interface_bank7_rdata_valid));
	new_master_rdata_valid1 <= new_master_rdata_valid0;
	new_master_rdata_valid2 <= new_master_rdata_valid1;
	new_master_rdata_valid3 <= new_master_rdata_valid2;
	new_master_rdata_valid4 <= new_master_rdata_valid3;
	new_master_rdata_valid5 <= new_master_rdata_valid4;
	new_master_rdata_valid6 <= new_master_rdata_valid5;
	new_master_rbank0 <= rbank;
	new_master_rbank1 <= new_master_rbank0;
	new_master_rbank2 <= new_master_rbank1;
	new_master_rbank3 <= new_master_rbank2;
	new_master_rbank4 <= new_master_rbank3;
	new_master_rbank5 <= new_master_rbank4;
	new_master_wbank0 <= wbank;
	new_master_wbank1 <= new_master_wbank0;
	netsoc_adr_offset_r <= netsoc_interface0_wb_sdram_adr[1:0];
	cache_state <= cache_next_state;
	litedramwishbone2native_state <= litedramwishbone2native_next_state;
	if (ethphy_counter_ce) begin
		ethphy_counter <= (ethphy_counter + 1'd1);
	end
	if (ethmac_ps_preamble_error_o) begin
		ethmac_preamble_errors_status <= (ethmac_preamble_errors_status + 1'd1);
	end
	if (ethmac_ps_crc_error_o) begin
		ethmac_crc_errors_status <= (ethmac_crc_errors_status + 1'd1);
	end
	ethmac_ps_preamble_error_toggle_o_r <= ethmac_ps_preamble_error_toggle_o;
	ethmac_ps_crc_error_toggle_o_r <= ethmac_ps_crc_error_toggle_o;
	ethmac_tx_cdc_graycounter0_q_binary <= ethmac_tx_cdc_graycounter0_q_next_binary;
	ethmac_tx_cdc_graycounter0_q <= ethmac_tx_cdc_graycounter0_q_next;
	ethmac_rx_cdc_graycounter1_q_binary <= ethmac_rx_cdc_graycounter1_q_next_binary;
	ethmac_rx_cdc_graycounter1_q <= ethmac_rx_cdc_graycounter1_q_next;
	if (ethmac_writer_counter_reset) begin
		ethmac_writer_counter <= 1'd0;
	end else begin
		if (ethmac_writer_counter_ce) begin
			ethmac_writer_counter <= (ethmac_writer_counter + ethmac_writer_increment);
		end
	end
	if (ethmac_writer_slot_ce) begin
		ethmac_writer_slot <= (ethmac_writer_slot + 1'd1);
	end
	if (((ethmac_writer_fifo_syncfifo_we & ethmac_writer_fifo_syncfifo_writable) & (~ethmac_writer_fifo_replace))) begin
		ethmac_writer_fifo_produce <= (ethmac_writer_fifo_produce + 1'd1);
	end
	if (ethmac_writer_fifo_do_read) begin
		ethmac_writer_fifo_consume <= (ethmac_writer_fifo_consume + 1'd1);
	end
	if (((ethmac_writer_fifo_syncfifo_we & ethmac_writer_fifo_syncfifo_writable) & (~ethmac_writer_fifo_replace))) begin
		if ((~ethmac_writer_fifo_do_read)) begin
			ethmac_writer_fifo_level <= (ethmac_writer_fifo_level + 1'd1);
		end
	end else begin
		if (ethmac_writer_fifo_do_read) begin
			ethmac_writer_fifo_level <= (ethmac_writer_fifo_level - 1'd1);
		end
	end
	liteethmacsramwriter_state <= liteethmacsramwriter_next_state;
	if (ethmac_writer_errors_status_next_value_ce) begin
		ethmac_writer_errors_status <= ethmac_writer_errors_status_next_value;
	end
	if (ethmac_reader_counter_reset) begin
		ethmac_reader_counter <= 1'd0;
	end else begin
		if (ethmac_reader_counter_ce) begin
			ethmac_reader_counter <= (ethmac_reader_counter + 3'd4);
		end
	end
	ethmac_reader_last_d <= ethmac_reader_last;
	if (ethmac_reader_done_clear) begin
		ethmac_reader_done_pending <= 1'd0;
	end
	if (ethmac_reader_done_trigger) begin
		ethmac_reader_done_pending <= 1'd1;
	end
	if (((ethmac_reader_fifo_syncfifo_we & ethmac_reader_fifo_syncfifo_writable) & (~ethmac_reader_fifo_replace))) begin
		ethmac_reader_fifo_produce <= (ethmac_reader_fifo_produce + 1'd1);
	end
	if (ethmac_reader_fifo_do_read) begin
		ethmac_reader_fifo_consume <= (ethmac_reader_fifo_consume + 1'd1);
	end
	if (((ethmac_reader_fifo_syncfifo_we & ethmac_reader_fifo_syncfifo_writable) & (~ethmac_reader_fifo_replace))) begin
		if ((~ethmac_reader_fifo_do_read)) begin
			ethmac_reader_fifo_level <= (ethmac_reader_fifo_level + 1'd1);
		end
	end else begin
		if (ethmac_reader_fifo_do_read) begin
			ethmac_reader_fifo_level <= (ethmac_reader_fifo_level - 1'd1);
		end
	end
	liteethmacsramreader_state <= liteethmacsramreader_next_state;
	ethmac_sram0_bus_ack0 <= 1'd0;
	if (((ethmac_sram0_bus_cyc0 & ethmac_sram0_bus_stb0) & (~ethmac_sram0_bus_ack0))) begin
		ethmac_sram0_bus_ack0 <= 1'd1;
	end
	ethmac_sram1_bus_ack0 <= 1'd0;
	if (((ethmac_sram1_bus_cyc0 & ethmac_sram1_bus_stb0) & (~ethmac_sram1_bus_ack0))) begin
		ethmac_sram1_bus_ack0 <= 1'd1;
	end
	ethmac_sram0_bus_ack1 <= 1'd0;
	if (((ethmac_sram0_bus_cyc1 & ethmac_sram0_bus_stb1) & (~ethmac_sram0_bus_ack1))) begin
		ethmac_sram0_bus_ack1 <= 1'd1;
	end
	ethmac_sram1_bus_ack1 <= 1'd0;
	if (((ethmac_sram1_bus_cyc1 & ethmac_sram1_bus_stb1) & (~ethmac_sram1_bus_ack1))) begin
		ethmac_sram1_bus_ack1 <= 1'd1;
	end
	ethmac_slave_sel_r <= ethmac_slave_sel;
	case (netsoc_grant)
		1'd0: begin
			if ((~netsoc_request[0])) begin
				if (netsoc_request[1]) begin
					netsoc_grant <= 1'd1;
				end
			end
		end
		1'd1: begin
			if ((~netsoc_request[1])) begin
				if (netsoc_request[0]) begin
					netsoc_grant <= 1'd0;
				end
			end
		end
	endcase
	netsoc_slave_sel_r <= netsoc_slave_sel;
	if (netsoc_wait) begin
		if ((~netsoc_done)) begin
			netsoc_count <= (netsoc_count - 1'd1);
		end
	end else begin
		netsoc_count <= 17'd65536;
	end
	netsoc_interface0_bank_bus_dat_r <= 1'd0;
	if (netsoc_csrbank0_sel) begin
		case (netsoc_interface0_bank_bus_adr[2:0])
			1'd0: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_leds_out0_w;
			end
			1'd1: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_switches_in_w;
			end
			2'd2: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_eventmanager_status_w;
			end
			2'd3: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_eventmanager_pending_w;
			end
			3'd4: begin
				netsoc_interface0_bank_bus_dat_r <= netsoc_csrbank0_buttons_ev_enable0_w;
			end
		endcase
	end
	if (netsoc_csrbank0_leds_out0_re) begin
		netsoc_leds_storage_full[3:0] <= netsoc_csrbank0_leds_out0_r;
	end
	netsoc_leds_re <= netsoc_csrbank0_leds_out0_re;
	if (netsoc_csrbank0_buttons_ev_enable0_re) begin
		netsoc_eventmanager_storage_full[3:0] <= netsoc_csrbank0_buttons_ev_enable0_r;
	end
	netsoc_eventmanager_re <= netsoc_csrbank0_buttons_ev_enable0_re;
	netsoc_interface1_bank_bus_dat_r <= 1'd0;
	if (netsoc_csrbank1_sel) begin
		case (netsoc_interface1_bank_bus_adr[3:0])
			1'd0: begin
				netsoc_interface1_bank_bus_dat_r <= netsoc_netsoc_ctrl_reset_reset_w;
			end
			1'd1: begin
				netsoc_interface1_bank_bus_dat_r <= netsoc_csrbank1_scratch3_w;
			end
			2'd2: begin
				netsoc_interface1_bank_bus_dat_r <= netsoc_csrbank1_scratch2_w;
			end
			2'd3: begin
				netsoc_interface1_bank_bus_dat_r <= netsoc_csrbank1_scratch1_w;
			end
			3'd4: begin
				netsoc_interface1_bank_bus_dat_r <= netsoc_csrbank1_scratch0_w;
			end
			3'd5: begin
				netsoc_interface1_bank_bus_dat_r <= netsoc_csrbank1_bus_errors3_w;
			end
			3'd6: begin
				netsoc_interface1_bank_bus_dat_r <= netsoc_csrbank1_bus_errors2_w;
			end
			3'd7: begin
				netsoc_interface1_bank_bus_dat_r <= netsoc_csrbank1_bus_errors1_w;
			end
			4'd8: begin
				netsoc_interface1_bank_bus_dat_r <= netsoc_csrbank1_bus_errors0_w;
			end
		endcase
	end
	if (netsoc_csrbank1_scratch3_re) begin
		netsoc_netsoc_ctrl_storage_full[31:24] <= netsoc_csrbank1_scratch3_r;
	end
	if (netsoc_csrbank1_scratch2_re) begin
		netsoc_netsoc_ctrl_storage_full[23:16] <= netsoc_csrbank1_scratch2_r;
	end
	if (netsoc_csrbank1_scratch1_re) begin
		netsoc_netsoc_ctrl_storage_full[15:8] <= netsoc_csrbank1_scratch1_r;
	end
	if (netsoc_csrbank1_scratch0_re) begin
		netsoc_netsoc_ctrl_storage_full[7:0] <= netsoc_csrbank1_scratch0_r;
	end
	netsoc_netsoc_ctrl_re <= netsoc_csrbank1_scratch0_re;
	netsoc_interface2_bank_bus_dat_r <= 1'd0;
	if (netsoc_csrbank2_sel) begin
		case (netsoc_interface2_bank_bus_adr[2:0])
			1'd0: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_half_sys8x_taps0_w;
			end
			1'd1: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_csrbank2_dly_sel0_w;
			end
			2'd2: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_a7ddrphy_rdly_dq_rst_w;
			end
			2'd3: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_a7ddrphy_rdly_dq_inc_w;
			end
			3'd4: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_a7ddrphy_rdly_dq_bitslip_rst_w;
			end
			3'd5: begin
				netsoc_interface2_bank_bus_dat_r <= netsoc_a7ddrphy_rdly_dq_bitslip_w;
			end
		endcase
	end
	if (netsoc_csrbank2_half_sys8x_taps0_re) begin
		netsoc_a7ddrphy_half_sys8x_taps_storage_full[3:0] <= netsoc_csrbank2_half_sys8x_taps0_r;
	end
	netsoc_a7ddrphy_half_sys8x_taps_re <= netsoc_csrbank2_half_sys8x_taps0_re;
	if (netsoc_csrbank2_dly_sel0_re) begin
		netsoc_a7ddrphy_dly_sel_storage_full[1:0] <= netsoc_csrbank2_dly_sel0_r;
	end
	netsoc_a7ddrphy_dly_sel_re <= netsoc_csrbank2_dly_sel0_re;
	netsoc_interface3_bank_bus_dat_r <= 1'd0;
	if (netsoc_csrbank3_sel) begin
		case (netsoc_interface3_bank_bus_adr[4:0])
			1'd0: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_sram_writer_slot_w;
			end
			1'd1: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_sram_writer_length3_w;
			end
			2'd2: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_sram_writer_length2_w;
			end
			2'd3: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_sram_writer_length1_w;
			end
			3'd4: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_sram_writer_length0_w;
			end
			3'd5: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_sram_writer_errors3_w;
			end
			3'd6: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_sram_writer_errors2_w;
			end
			3'd7: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_sram_writer_errors1_w;
			end
			4'd8: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_sram_writer_errors0_w;
			end
			4'd9: begin
				netsoc_interface3_bank_bus_dat_r <= ethmac_writer_status_w;
			end
			4'd10: begin
				netsoc_interface3_bank_bus_dat_r <= ethmac_writer_pending_w;
			end
			4'd11: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_sram_writer_ev_enable0_w;
			end
			4'd12: begin
				netsoc_interface3_bank_bus_dat_r <= ethmac_reader_start_w;
			end
			4'd13: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_sram_reader_ready_w;
			end
			4'd14: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_sram_reader_level_w;
			end
			4'd15: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_sram_reader_slot0_w;
			end
			5'd16: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_sram_reader_length1_w;
			end
			5'd17: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_sram_reader_length0_w;
			end
			5'd18: begin
				netsoc_interface3_bank_bus_dat_r <= ethmac_reader_eventmanager_status_w;
			end
			5'd19: begin
				netsoc_interface3_bank_bus_dat_r <= ethmac_reader_eventmanager_pending_w;
			end
			5'd20: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_sram_reader_ev_enable0_w;
			end
			5'd21: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_preamble_crc_w;
			end
			5'd22: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_preamble_errors3_w;
			end
			5'd23: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_preamble_errors2_w;
			end
			5'd24: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_preamble_errors1_w;
			end
			5'd25: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_preamble_errors0_w;
			end
			5'd26: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_crc_errors3_w;
			end
			5'd27: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_crc_errors2_w;
			end
			5'd28: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_crc_errors1_w;
			end
			5'd29: begin
				netsoc_interface3_bank_bus_dat_r <= netsoc_csrbank3_crc_errors0_w;
			end
		endcase
	end
	if (netsoc_csrbank3_sram_writer_ev_enable0_re) begin
		ethmac_writer_storage_full <= netsoc_csrbank3_sram_writer_ev_enable0_r;
	end
	ethmac_writer_re <= netsoc_csrbank3_sram_writer_ev_enable0_re;
	if (netsoc_csrbank3_sram_reader_slot0_re) begin
		ethmac_reader_slot_storage_full <= netsoc_csrbank3_sram_reader_slot0_r;
	end
	ethmac_reader_slot_re <= netsoc_csrbank3_sram_reader_slot0_re;
	if (netsoc_csrbank3_sram_reader_length1_re) begin
		ethmac_reader_length_storage_full[10:8] <= netsoc_csrbank3_sram_reader_length1_r;
	end
	if (netsoc_csrbank3_sram_reader_length0_re) begin
		ethmac_reader_length_storage_full[7:0] <= netsoc_csrbank3_sram_reader_length0_r;
	end
	ethmac_reader_length_re <= netsoc_csrbank3_sram_reader_length0_re;
	if (netsoc_csrbank3_sram_reader_ev_enable0_re) begin
		ethmac_reader_eventmanager_storage_full <= netsoc_csrbank3_sram_reader_ev_enable0_r;
	end
	ethmac_reader_eventmanager_re <= netsoc_csrbank3_sram_reader_ev_enable0_re;
	netsoc_interface4_bank_bus_dat_r <= 1'd0;
	if (netsoc_csrbank4_sel) begin
		case (netsoc_interface4_bank_bus_adr[1:0])
			1'd0: begin
				netsoc_interface4_bank_bus_dat_r <= netsoc_csrbank4_crg_reset0_w;
			end
			1'd1: begin
				netsoc_interface4_bank_bus_dat_r <= netsoc_csrbank4_mdio_w0_w;
			end
			2'd2: begin
				netsoc_interface4_bank_bus_dat_r <= netsoc_csrbank4_mdio_r_w;
			end
		endcase
	end
	if (netsoc_csrbank4_crg_reset0_re) begin
		ethphy_reset_storage_full <= netsoc_csrbank4_crg_reset0_r;
	end
	ethphy_reset_re <= netsoc_csrbank4_crg_reset0_re;
	if (netsoc_csrbank4_mdio_w0_re) begin
		ethphy_storage_full[2:0] <= netsoc_csrbank4_mdio_w0_r;
	end
	ethphy_re <= netsoc_csrbank4_mdio_w0_re;
	netsoc_sel_r <= netsoc_sel;
	netsoc_interface5_bank_bus_dat_r <= 1'd0;
	if (netsoc_csrbank5_sel) begin
		case (netsoc_interface5_bank_bus_adr[5:0])
			1'd0: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_dna_id7_w;
			end
			1'd1: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_dna_id6_w;
			end
			2'd2: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_dna_id5_w;
			end
			2'd3: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_dna_id4_w;
			end
			3'd4: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_dna_id3_w;
			end
			3'd5: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_dna_id2_w;
			end
			3'd6: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_dna_id1_w;
			end
			3'd7: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_dna_id0_w;
			end
			4'd8: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_git_commit19_w;
			end
			4'd9: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_git_commit18_w;
			end
			4'd10: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_git_commit17_w;
			end
			4'd11: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_git_commit16_w;
			end
			4'd12: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_git_commit15_w;
			end
			4'd13: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_git_commit14_w;
			end
			4'd14: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_git_commit13_w;
			end
			4'd15: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_git_commit12_w;
			end
			5'd16: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_git_commit11_w;
			end
			5'd17: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_git_commit10_w;
			end
			5'd18: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_git_commit9_w;
			end
			5'd19: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_git_commit8_w;
			end
			5'd20: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_git_commit7_w;
			end
			5'd21: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_git_commit6_w;
			end
			5'd22: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_git_commit5_w;
			end
			5'd23: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_git_commit4_w;
			end
			5'd24: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_git_commit3_w;
			end
			5'd25: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_git_commit2_w;
			end
			5'd26: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_git_commit1_w;
			end
			5'd27: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_git_commit0_w;
			end
			5'd28: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_platform_platform7_w;
			end
			5'd29: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_platform_platform6_w;
			end
			5'd30: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_platform_platform5_w;
			end
			5'd31: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_platform_platform4_w;
			end
			6'd32: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_platform_platform3_w;
			end
			6'd33: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_platform_platform2_w;
			end
			6'd34: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_platform_platform1_w;
			end
			6'd35: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_platform_platform0_w;
			end
			6'd36: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_platform_target7_w;
			end
			6'd37: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_platform_target6_w;
			end
			6'd38: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_platform_target5_w;
			end
			6'd39: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_platform_target4_w;
			end
			6'd40: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_platform_target3_w;
			end
			6'd41: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_platform_target2_w;
			end
			6'd42: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_platform_target1_w;
			end
			6'd43: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_platform_target0_w;
			end
			6'd44: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_xadc_temperature1_w;
			end
			6'd45: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_xadc_temperature0_w;
			end
			6'd46: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_xadc_vccint1_w;
			end
			6'd47: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_xadc_vccint0_w;
			end
			6'd48: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_xadc_vccaux1_w;
			end
			6'd49: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_xadc_vccaux0_w;
			end
			6'd50: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_xadc_vccbram1_w;
			end
			6'd51: begin
				netsoc_interface5_bank_bus_dat_r <= netsoc_csrbank5_xadc_vccbram0_w;
			end
		endcase
	end
	netsoc_interface6_bank_bus_dat_r <= 1'd0;
	if (netsoc_csrbank6_sel) begin
		case (netsoc_interface6_bank_bus_adr[5:0])
			1'd0: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_control0_w;
			end
			1'd1: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi0_command0_w;
			end
			2'd2: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_sdram_phaseinjector0_command_issue_w;
			end
			2'd3: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi0_address1_w;
			end
			3'd4: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi0_address0_w;
			end
			3'd5: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi0_baddress0_w;
			end
			3'd6: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi0_wrdata3_w;
			end
			3'd7: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi0_wrdata2_w;
			end
			4'd8: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi0_wrdata1_w;
			end
			4'd9: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi0_wrdata0_w;
			end
			4'd10: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi0_rddata3_w;
			end
			4'd11: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi0_rddata2_w;
			end
			4'd12: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi0_rddata1_w;
			end
			4'd13: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi0_rddata0_w;
			end
			4'd14: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi1_command0_w;
			end
			4'd15: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_sdram_phaseinjector1_command_issue_w;
			end
			5'd16: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi1_address1_w;
			end
			5'd17: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi1_address0_w;
			end
			5'd18: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi1_baddress0_w;
			end
			5'd19: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi1_wrdata3_w;
			end
			5'd20: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi1_wrdata2_w;
			end
			5'd21: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi1_wrdata1_w;
			end
			5'd22: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi1_wrdata0_w;
			end
			5'd23: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi1_rddata3_w;
			end
			5'd24: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi1_rddata2_w;
			end
			5'd25: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi1_rddata1_w;
			end
			5'd26: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi1_rddata0_w;
			end
			5'd27: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi2_command0_w;
			end
			5'd28: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_sdram_phaseinjector2_command_issue_w;
			end
			5'd29: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi2_address1_w;
			end
			5'd30: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi2_address0_w;
			end
			5'd31: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi2_baddress0_w;
			end
			6'd32: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi2_wrdata3_w;
			end
			6'd33: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi2_wrdata2_w;
			end
			6'd34: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi2_wrdata1_w;
			end
			6'd35: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi2_wrdata0_w;
			end
			6'd36: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi2_rddata3_w;
			end
			6'd37: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi2_rddata2_w;
			end
			6'd38: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi2_rddata1_w;
			end
			6'd39: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi2_rddata0_w;
			end
			6'd40: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi3_command0_w;
			end
			6'd41: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_sdram_phaseinjector3_command_issue_w;
			end
			6'd42: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi3_address1_w;
			end
			6'd43: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi3_address0_w;
			end
			6'd44: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi3_baddress0_w;
			end
			6'd45: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi3_wrdata3_w;
			end
			6'd46: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi3_wrdata2_w;
			end
			6'd47: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi3_wrdata1_w;
			end
			6'd48: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi3_wrdata0_w;
			end
			6'd49: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi3_rddata3_w;
			end
			6'd50: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi3_rddata2_w;
			end
			6'd51: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi3_rddata1_w;
			end
			6'd52: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_dfii_pi3_rddata0_w;
			end
			6'd53: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_sdram_bandwidth_update_w;
			end
			6'd54: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_controller_bandwidth_nreads2_w;
			end
			6'd55: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_controller_bandwidth_nreads1_w;
			end
			6'd56: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_controller_bandwidth_nreads0_w;
			end
			6'd57: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_controller_bandwidth_nwrites2_w;
			end
			6'd58: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_controller_bandwidth_nwrites1_w;
			end
			6'd59: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_controller_bandwidth_nwrites0_w;
			end
			6'd60: begin
				netsoc_interface6_bank_bus_dat_r <= netsoc_csrbank6_controller_bandwidth_data_width_w;
			end
		endcase
	end
	if (netsoc_csrbank6_dfii_control0_re) begin
		netsoc_sdram_storage_full[3:0] <= netsoc_csrbank6_dfii_control0_r;
	end
	netsoc_sdram_re <= netsoc_csrbank6_dfii_control0_re;
	if (netsoc_csrbank6_dfii_pi0_command0_re) begin
		netsoc_sdram_phaseinjector0_command_storage_full[5:0] <= netsoc_csrbank6_dfii_pi0_command0_r;
	end
	netsoc_sdram_phaseinjector0_command_re <= netsoc_csrbank6_dfii_pi0_command0_re;
	if (netsoc_csrbank6_dfii_pi0_address1_re) begin
		netsoc_sdram_phaseinjector0_address_storage_full[13:8] <= netsoc_csrbank6_dfii_pi0_address1_r;
	end
	if (netsoc_csrbank6_dfii_pi0_address0_re) begin
		netsoc_sdram_phaseinjector0_address_storage_full[7:0] <= netsoc_csrbank6_dfii_pi0_address0_r;
	end
	netsoc_sdram_phaseinjector0_address_re <= netsoc_csrbank6_dfii_pi0_address0_re;
	if (netsoc_csrbank6_dfii_pi0_baddress0_re) begin
		netsoc_sdram_phaseinjector0_baddress_storage_full[2:0] <= netsoc_csrbank6_dfii_pi0_baddress0_r;
	end
	netsoc_sdram_phaseinjector0_baddress_re <= netsoc_csrbank6_dfii_pi0_baddress0_re;
	if (netsoc_csrbank6_dfii_pi0_wrdata3_re) begin
		netsoc_sdram_phaseinjector0_wrdata_storage_full[31:24] <= netsoc_csrbank6_dfii_pi0_wrdata3_r;
	end
	if (netsoc_csrbank6_dfii_pi0_wrdata2_re) begin
		netsoc_sdram_phaseinjector0_wrdata_storage_full[23:16] <= netsoc_csrbank6_dfii_pi0_wrdata2_r;
	end
	if (netsoc_csrbank6_dfii_pi0_wrdata1_re) begin
		netsoc_sdram_phaseinjector0_wrdata_storage_full[15:8] <= netsoc_csrbank6_dfii_pi0_wrdata1_r;
	end
	if (netsoc_csrbank6_dfii_pi0_wrdata0_re) begin
		netsoc_sdram_phaseinjector0_wrdata_storage_full[7:0] <= netsoc_csrbank6_dfii_pi0_wrdata0_r;
	end
	netsoc_sdram_phaseinjector0_wrdata_re <= netsoc_csrbank6_dfii_pi0_wrdata0_re;
	if (netsoc_csrbank6_dfii_pi1_command0_re) begin
		netsoc_sdram_phaseinjector1_command_storage_full[5:0] <= netsoc_csrbank6_dfii_pi1_command0_r;
	end
	netsoc_sdram_phaseinjector1_command_re <= netsoc_csrbank6_dfii_pi1_command0_re;
	if (netsoc_csrbank6_dfii_pi1_address1_re) begin
		netsoc_sdram_phaseinjector1_address_storage_full[13:8] <= netsoc_csrbank6_dfii_pi1_address1_r;
	end
	if (netsoc_csrbank6_dfii_pi1_address0_re) begin
		netsoc_sdram_phaseinjector1_address_storage_full[7:0] <= netsoc_csrbank6_dfii_pi1_address0_r;
	end
	netsoc_sdram_phaseinjector1_address_re <= netsoc_csrbank6_dfii_pi1_address0_re;
	if (netsoc_csrbank6_dfii_pi1_baddress0_re) begin
		netsoc_sdram_phaseinjector1_baddress_storage_full[2:0] <= netsoc_csrbank6_dfii_pi1_baddress0_r;
	end
	netsoc_sdram_phaseinjector1_baddress_re <= netsoc_csrbank6_dfii_pi1_baddress0_re;
	if (netsoc_csrbank6_dfii_pi1_wrdata3_re) begin
		netsoc_sdram_phaseinjector1_wrdata_storage_full[31:24] <= netsoc_csrbank6_dfii_pi1_wrdata3_r;
	end
	if (netsoc_csrbank6_dfii_pi1_wrdata2_re) begin
		netsoc_sdram_phaseinjector1_wrdata_storage_full[23:16] <= netsoc_csrbank6_dfii_pi1_wrdata2_r;
	end
	if (netsoc_csrbank6_dfii_pi1_wrdata1_re) begin
		netsoc_sdram_phaseinjector1_wrdata_storage_full[15:8] <= netsoc_csrbank6_dfii_pi1_wrdata1_r;
	end
	if (netsoc_csrbank6_dfii_pi1_wrdata0_re) begin
		netsoc_sdram_phaseinjector1_wrdata_storage_full[7:0] <= netsoc_csrbank6_dfii_pi1_wrdata0_r;
	end
	netsoc_sdram_phaseinjector1_wrdata_re <= netsoc_csrbank6_dfii_pi1_wrdata0_re;
	if (netsoc_csrbank6_dfii_pi2_command0_re) begin
		netsoc_sdram_phaseinjector2_command_storage_full[5:0] <= netsoc_csrbank6_dfii_pi2_command0_r;
	end
	netsoc_sdram_phaseinjector2_command_re <= netsoc_csrbank6_dfii_pi2_command0_re;
	if (netsoc_csrbank6_dfii_pi2_address1_re) begin
		netsoc_sdram_phaseinjector2_address_storage_full[13:8] <= netsoc_csrbank6_dfii_pi2_address1_r;
	end
	if (netsoc_csrbank6_dfii_pi2_address0_re) begin
		netsoc_sdram_phaseinjector2_address_storage_full[7:0] <= netsoc_csrbank6_dfii_pi2_address0_r;
	end
	netsoc_sdram_phaseinjector2_address_re <= netsoc_csrbank6_dfii_pi2_address0_re;
	if (netsoc_csrbank6_dfii_pi2_baddress0_re) begin
		netsoc_sdram_phaseinjector2_baddress_storage_full[2:0] <= netsoc_csrbank6_dfii_pi2_baddress0_r;
	end
	netsoc_sdram_phaseinjector2_baddress_re <= netsoc_csrbank6_dfii_pi2_baddress0_re;
	if (netsoc_csrbank6_dfii_pi2_wrdata3_re) begin
		netsoc_sdram_phaseinjector2_wrdata_storage_full[31:24] <= netsoc_csrbank6_dfii_pi2_wrdata3_r;
	end
	if (netsoc_csrbank6_dfii_pi2_wrdata2_re) begin
		netsoc_sdram_phaseinjector2_wrdata_storage_full[23:16] <= netsoc_csrbank6_dfii_pi2_wrdata2_r;
	end
	if (netsoc_csrbank6_dfii_pi2_wrdata1_re) begin
		netsoc_sdram_phaseinjector2_wrdata_storage_full[15:8] <= netsoc_csrbank6_dfii_pi2_wrdata1_r;
	end
	if (netsoc_csrbank6_dfii_pi2_wrdata0_re) begin
		netsoc_sdram_phaseinjector2_wrdata_storage_full[7:0] <= netsoc_csrbank6_dfii_pi2_wrdata0_r;
	end
	netsoc_sdram_phaseinjector2_wrdata_re <= netsoc_csrbank6_dfii_pi2_wrdata0_re;
	if (netsoc_csrbank6_dfii_pi3_command0_re) begin
		netsoc_sdram_phaseinjector3_command_storage_full[5:0] <= netsoc_csrbank6_dfii_pi3_command0_r;
	end
	netsoc_sdram_phaseinjector3_command_re <= netsoc_csrbank6_dfii_pi3_command0_re;
	if (netsoc_csrbank6_dfii_pi3_address1_re) begin
		netsoc_sdram_phaseinjector3_address_storage_full[13:8] <= netsoc_csrbank6_dfii_pi3_address1_r;
	end
	if (netsoc_csrbank6_dfii_pi3_address0_re) begin
		netsoc_sdram_phaseinjector3_address_storage_full[7:0] <= netsoc_csrbank6_dfii_pi3_address0_r;
	end
	netsoc_sdram_phaseinjector3_address_re <= netsoc_csrbank6_dfii_pi3_address0_re;
	if (netsoc_csrbank6_dfii_pi3_baddress0_re) begin
		netsoc_sdram_phaseinjector3_baddress_storage_full[2:0] <= netsoc_csrbank6_dfii_pi3_baddress0_r;
	end
	netsoc_sdram_phaseinjector3_baddress_re <= netsoc_csrbank6_dfii_pi3_baddress0_re;
	if (netsoc_csrbank6_dfii_pi3_wrdata3_re) begin
		netsoc_sdram_phaseinjector3_wrdata_storage_full[31:24] <= netsoc_csrbank6_dfii_pi3_wrdata3_r;
	end
	if (netsoc_csrbank6_dfii_pi3_wrdata2_re) begin
		netsoc_sdram_phaseinjector3_wrdata_storage_full[23:16] <= netsoc_csrbank6_dfii_pi3_wrdata2_r;
	end
	if (netsoc_csrbank6_dfii_pi3_wrdata1_re) begin
		netsoc_sdram_phaseinjector3_wrdata_storage_full[15:8] <= netsoc_csrbank6_dfii_pi3_wrdata1_r;
	end
	if (netsoc_csrbank6_dfii_pi3_wrdata0_re) begin
		netsoc_sdram_phaseinjector3_wrdata_storage_full[7:0] <= netsoc_csrbank6_dfii_pi3_wrdata0_r;
	end
	netsoc_sdram_phaseinjector3_wrdata_re <= netsoc_csrbank6_dfii_pi3_wrdata0_re;
	netsoc_interface7_bank_bus_dat_r <= 1'd0;
	if (netsoc_csrbank7_sel) begin
		case (netsoc_interface7_bank_bus_adr[1:0])
			1'd0: begin
				netsoc_interface7_bank_bus_dat_r <= netsoc_csrbank7_bitbang0_w;
			end
			1'd1: begin
				netsoc_interface7_bank_bus_dat_r <= netsoc_csrbank7_miso_w;
			end
			2'd2: begin
				netsoc_interface7_bank_bus_dat_r <= netsoc_csrbank7_bitbang_en0_w;
			end
		endcase
	end
	if (netsoc_csrbank7_bitbang0_re) begin
		netsoc_bitbang_storage_full[3:0] <= netsoc_csrbank7_bitbang0_r;
	end
	netsoc_bitbang_re <= netsoc_csrbank7_bitbang0_re;
	if (netsoc_csrbank7_bitbang_en0_re) begin
		netsoc_bitbang_en_storage_full <= netsoc_csrbank7_bitbang_en0_r;
	end
	netsoc_bitbang_en_re <= netsoc_csrbank7_bitbang_en0_re;
	netsoc_interface8_bank_bus_dat_r <= 1'd0;
	if (netsoc_csrbank8_sel) begin
		case (netsoc_interface8_bank_bus_adr[4:0])
			1'd0: begin
				netsoc_interface8_bank_bus_dat_r <= netsoc_csrbank8_load3_w;
			end
			1'd1: begin
				netsoc_interface8_bank_bus_dat_r <= netsoc_csrbank8_load2_w;
			end
			2'd2: begin
				netsoc_interface8_bank_bus_dat_r <= netsoc_csrbank8_load1_w;
			end
			2'd3: begin
				netsoc_interface8_bank_bus_dat_r <= netsoc_csrbank8_load0_w;
			end
			3'd4: begin
				netsoc_interface8_bank_bus_dat_r <= netsoc_csrbank8_reload3_w;
			end
			3'd5: begin
				netsoc_interface8_bank_bus_dat_r <= netsoc_csrbank8_reload2_w;
			end
			3'd6: begin
				netsoc_interface8_bank_bus_dat_r <= netsoc_csrbank8_reload1_w;
			end
			3'd7: begin
				netsoc_interface8_bank_bus_dat_r <= netsoc_csrbank8_reload0_w;
			end
			4'd8: begin
				netsoc_interface8_bank_bus_dat_r <= netsoc_csrbank8_en0_w;
			end
			4'd9: begin
				netsoc_interface8_bank_bus_dat_r <= netsoc_netsoc_timer0_update_value_w;
			end
			4'd10: begin
				netsoc_interface8_bank_bus_dat_r <= netsoc_csrbank8_value3_w;
			end
			4'd11: begin
				netsoc_interface8_bank_bus_dat_r <= netsoc_csrbank8_value2_w;
			end
			4'd12: begin
				netsoc_interface8_bank_bus_dat_r <= netsoc_csrbank8_value1_w;
			end
			4'd13: begin
				netsoc_interface8_bank_bus_dat_r <= netsoc_csrbank8_value0_w;
			end
			4'd14: begin
				netsoc_interface8_bank_bus_dat_r <= netsoc_netsoc_timer0_eventmanager_status_w;
			end
			4'd15: begin
				netsoc_interface8_bank_bus_dat_r <= netsoc_netsoc_timer0_eventmanager_pending_w;
			end
			5'd16: begin
				netsoc_interface8_bank_bus_dat_r <= netsoc_csrbank8_ev_enable0_w;
			end
		endcase
	end
	if (netsoc_csrbank8_load3_re) begin
		netsoc_netsoc_timer0_load_storage_full[31:24] <= netsoc_csrbank8_load3_r;
	end
	if (netsoc_csrbank8_load2_re) begin
		netsoc_netsoc_timer0_load_storage_full[23:16] <= netsoc_csrbank8_load2_r;
	end
	if (netsoc_csrbank8_load1_re) begin
		netsoc_netsoc_timer0_load_storage_full[15:8] <= netsoc_csrbank8_load1_r;
	end
	if (netsoc_csrbank8_load0_re) begin
		netsoc_netsoc_timer0_load_storage_full[7:0] <= netsoc_csrbank8_load0_r;
	end
	netsoc_netsoc_timer0_load_re <= netsoc_csrbank8_load0_re;
	if (netsoc_csrbank8_reload3_re) begin
		netsoc_netsoc_timer0_reload_storage_full[31:24] <= netsoc_csrbank8_reload3_r;
	end
	if (netsoc_csrbank8_reload2_re) begin
		netsoc_netsoc_timer0_reload_storage_full[23:16] <= netsoc_csrbank8_reload2_r;
	end
	if (netsoc_csrbank8_reload1_re) begin
		netsoc_netsoc_timer0_reload_storage_full[15:8] <= netsoc_csrbank8_reload1_r;
	end
	if (netsoc_csrbank8_reload0_re) begin
		netsoc_netsoc_timer0_reload_storage_full[7:0] <= netsoc_csrbank8_reload0_r;
	end
	netsoc_netsoc_timer0_reload_re <= netsoc_csrbank8_reload0_re;
	if (netsoc_csrbank8_en0_re) begin
		netsoc_netsoc_timer0_en_storage_full <= netsoc_csrbank8_en0_r;
	end
	netsoc_netsoc_timer0_en_re <= netsoc_csrbank8_en0_re;
	if (netsoc_csrbank8_ev_enable0_re) begin
		netsoc_netsoc_timer0_eventmanager_storage_full <= netsoc_csrbank8_ev_enable0_r;
	end
	netsoc_netsoc_timer0_eventmanager_re <= netsoc_csrbank8_ev_enable0_re;
	netsoc_interface9_bank_bus_dat_r <= 1'd0;
	if (netsoc_csrbank9_sel) begin
		case (netsoc_interface9_bank_bus_adr[2:0])
			1'd0: begin
				netsoc_interface9_bank_bus_dat_r <= netsoc_netsoc_uart_rxtx_w;
			end
			1'd1: begin
				netsoc_interface9_bank_bus_dat_r <= netsoc_csrbank9_txfull_w;
			end
			2'd2: begin
				netsoc_interface9_bank_bus_dat_r <= netsoc_csrbank9_rxempty_w;
			end
			2'd3: begin
				netsoc_interface9_bank_bus_dat_r <= netsoc_netsoc_uart_status_w;
			end
			3'd4: begin
				netsoc_interface9_bank_bus_dat_r <= netsoc_netsoc_uart_pending_w;
			end
			3'd5: begin
				netsoc_interface9_bank_bus_dat_r <= netsoc_csrbank9_ev_enable0_w;
			end
		endcase
	end
	if (netsoc_csrbank9_ev_enable0_re) begin
		netsoc_netsoc_uart_storage_full[1:0] <= netsoc_csrbank9_ev_enable0_r;
	end
	netsoc_netsoc_uart_re <= netsoc_csrbank9_ev_enable0_re;
	netsoc_interface10_bank_bus_dat_r <= 1'd0;
	if (netsoc_csrbank10_sel) begin
		case (netsoc_interface10_bank_bus_adr[1:0])
			1'd0: begin
				netsoc_interface10_bank_bus_dat_r <= netsoc_csrbank10_tuning_word3_w;
			end
			1'd1: begin
				netsoc_interface10_bank_bus_dat_r <= netsoc_csrbank10_tuning_word2_w;
			end
			2'd2: begin
				netsoc_interface10_bank_bus_dat_r <= netsoc_csrbank10_tuning_word1_w;
			end
			2'd3: begin
				netsoc_interface10_bank_bus_dat_r <= netsoc_csrbank10_tuning_word0_w;
			end
		endcase
	end
	if (netsoc_csrbank10_tuning_word3_re) begin
		netsoc_netsoc_uart_phy_storage_full[31:24] <= netsoc_csrbank10_tuning_word3_r;
	end
	if (netsoc_csrbank10_tuning_word2_re) begin
		netsoc_netsoc_uart_phy_storage_full[23:16] <= netsoc_csrbank10_tuning_word2_r;
	end
	if (netsoc_csrbank10_tuning_word1_re) begin
		netsoc_netsoc_uart_phy_storage_full[15:8] <= netsoc_csrbank10_tuning_word1_r;
	end
	if (netsoc_csrbank10_tuning_word0_re) begin
		netsoc_netsoc_uart_phy_storage_full[7:0] <= netsoc_csrbank10_tuning_word0_r;
	end
	netsoc_netsoc_uart_phy_re <= netsoc_csrbank10_tuning_word0_re;
	if (sys_rst) begin
		netsoc_netsoc_ctrl_storage_full <= 32'd305419896;
		netsoc_netsoc_ctrl_re <= 1'd0;
		netsoc_netsoc_ctrl_bus_errors <= 32'd0;
		netsoc_netsoc_rom_bus_ack <= 1'd0;
		netsoc_netsoc_sram_bus_ack <= 1'd0;
		netsoc_netsoc_interface_adr <= 14'd0;
		netsoc_netsoc_interface_we <= 1'd0;
		netsoc_netsoc_interface_dat_w <= 8'd0;
		netsoc_netsoc_bus_wishbone_dat_r <= 32'd0;
		netsoc_netsoc_bus_wishbone_ack <= 1'd0;
		netsoc_netsoc_counter <= 2'd0;
		serial_tx <= 1'd1;
		netsoc_netsoc_uart_phy_storage_full <= 32'd4947802;
		netsoc_netsoc_uart_phy_re <= 1'd0;
		netsoc_netsoc_uart_phy_sink_ready <= 1'd0;
		netsoc_netsoc_uart_phy_uart_clk_txen <= 1'd0;
		netsoc_netsoc_uart_phy_phase_accumulator_tx <= 32'd0;
		netsoc_netsoc_uart_phy_tx_reg <= 8'd0;
		netsoc_netsoc_uart_phy_tx_bitcount <= 4'd0;
		netsoc_netsoc_uart_phy_tx_busy <= 1'd0;
		netsoc_netsoc_uart_phy_source_valid <= 1'd0;
		netsoc_netsoc_uart_phy_source_payload_data <= 8'd0;
		netsoc_netsoc_uart_phy_uart_clk_rxen <= 1'd0;
		netsoc_netsoc_uart_phy_phase_accumulator_rx <= 32'd0;
		netsoc_netsoc_uart_phy_rx_r <= 1'd0;
		netsoc_netsoc_uart_phy_rx_reg <= 8'd0;
		netsoc_netsoc_uart_phy_rx_bitcount <= 4'd0;
		netsoc_netsoc_uart_phy_rx_busy <= 1'd0;
		netsoc_netsoc_uart_tx_pending <= 1'd0;
		netsoc_netsoc_uart_tx_old_trigger <= 1'd0;
		netsoc_netsoc_uart_rx_pending <= 1'd0;
		netsoc_netsoc_uart_rx_old_trigger <= 1'd0;
		netsoc_netsoc_uart_storage_full <= 2'd0;
		netsoc_netsoc_uart_re <= 1'd0;
		netsoc_netsoc_uart_tx_fifo_level <= 5'd0;
		netsoc_netsoc_uart_tx_fifo_produce <= 4'd0;
		netsoc_netsoc_uart_tx_fifo_consume <= 4'd0;
		netsoc_netsoc_uart_rx_fifo_level <= 5'd0;
		netsoc_netsoc_uart_rx_fifo_produce <= 4'd0;
		netsoc_netsoc_uart_rx_fifo_consume <= 4'd0;
		netsoc_netsoc_timer0_load_storage_full <= 32'd0;
		netsoc_netsoc_timer0_load_re <= 1'd0;
		netsoc_netsoc_timer0_reload_storage_full <= 32'd0;
		netsoc_netsoc_timer0_reload_re <= 1'd0;
		netsoc_netsoc_timer0_en_storage_full <= 1'd0;
		netsoc_netsoc_timer0_en_re <= 1'd0;
		netsoc_netsoc_timer0_value_status <= 32'd0;
		netsoc_netsoc_timer0_zero_pending <= 1'd0;
		netsoc_netsoc_timer0_zero_old_trigger <= 1'd0;
		netsoc_netsoc_timer0_eventmanager_storage_full <= 1'd0;
		netsoc_netsoc_timer0_eventmanager_re <= 1'd0;
		netsoc_netsoc_timer0_value <= 32'd0;
		netsoc_dna_status <= 57'd0;
		netsoc_dna_cnt <= 7'd0;
		netsoc_temperature_status <= 12'd0;
		netsoc_vccint_status <= 12'd0;
		netsoc_vccaux_status <= 12'd0;
		netsoc_vccbram_status <= 12'd0;
		netsoc_leds_storage_full <= 4'd0;
		netsoc_leds_re <= 1'd0;
		netsoc_eventsourceprocess0_pending <= 1'd0;
		netsoc_eventsourceprocess0_old_trigger <= 1'd0;
		netsoc_waittimer0_count <= 20'd1000000;
		netsoc_eventsourceprocess1_pending <= 1'd0;
		netsoc_eventsourceprocess1_old_trigger <= 1'd0;
		netsoc_waittimer1_count <= 20'd1000000;
		netsoc_eventsourceprocess2_pending <= 1'd0;
		netsoc_eventsourceprocess2_old_trigger <= 1'd0;
		netsoc_waittimer2_count <= 20'd1000000;
		netsoc_eventsourceprocess3_pending <= 1'd0;
		netsoc_eventsourceprocess3_old_trigger <= 1'd0;
		netsoc_waittimer3_count <= 20'd1000000;
		netsoc_eventmanager_storage_full <= 4'd0;
		netsoc_eventmanager_re <= 1'd0;
		netsoc_bus_ack <= 1'd0;
		netsoc_bitbang_storage_full <= 4'd0;
		netsoc_bitbang_re <= 1'd0;
		netsoc_bitbang_en_storage_full <= 1'd0;
		netsoc_bitbang_en_re <= 1'd0;
		netsoc_cs_n <= 1'd1;
		netsoc_clk1 <= 1'd0;
		netsoc_sr <= 32'd0;
		netsoc_i <= 1'd0;
		netsoc_miso <= 1'd0;
		netsoc_counter <= 8'd0;
		netsoc_a7ddrphy_half_sys8x_taps_storage_full <= 4'd8;
		netsoc_a7ddrphy_half_sys8x_taps_re <= 1'd0;
		netsoc_a7ddrphy_dly_sel_storage_full <= 2'd0;
		netsoc_a7ddrphy_dly_sel_re <= 1'd0;
		netsoc_a7ddrphy_dfi_p0_rddata_valid <= 1'd0;
		netsoc_a7ddrphy_dfi_p1_rddata_valid <= 1'd0;
		netsoc_a7ddrphy_dfi_p2_rddata_valid <= 1'd0;
		netsoc_a7ddrphy_dfi_p3_rddata_valid <= 1'd0;
		netsoc_a7ddrphy_oe_dqs <= 1'd0;
		netsoc_a7ddrphy_oe_dq <= 1'd0;
		netsoc_a7ddrphy_n_rddata_en0 <= 1'd0;
		netsoc_a7ddrphy_n_rddata_en1 <= 1'd0;
		netsoc_a7ddrphy_n_rddata_en2 <= 1'd0;
		netsoc_a7ddrphy_n_rddata_en3 <= 1'd0;
		netsoc_a7ddrphy_n_rddata_en4 <= 1'd0;
		netsoc_a7ddrphy_last_wrdata_en <= 4'd0;
		netsoc_sdram_storage_full <= 4'd0;
		netsoc_sdram_re <= 1'd0;
		netsoc_sdram_phaseinjector0_command_storage_full <= 6'd0;
		netsoc_sdram_phaseinjector0_command_re <= 1'd0;
		netsoc_sdram_phaseinjector0_address_storage_full <= 14'd0;
		netsoc_sdram_phaseinjector0_address_re <= 1'd0;
		netsoc_sdram_phaseinjector0_baddress_storage_full <= 3'd0;
		netsoc_sdram_phaseinjector0_baddress_re <= 1'd0;
		netsoc_sdram_phaseinjector0_wrdata_storage_full <= 32'd0;
		netsoc_sdram_phaseinjector0_wrdata_re <= 1'd0;
		netsoc_sdram_phaseinjector0_status <= 32'd0;
		netsoc_sdram_phaseinjector1_command_storage_full <= 6'd0;
		netsoc_sdram_phaseinjector1_command_re <= 1'd0;
		netsoc_sdram_phaseinjector1_address_storage_full <= 14'd0;
		netsoc_sdram_phaseinjector1_address_re <= 1'd0;
		netsoc_sdram_phaseinjector1_baddress_storage_full <= 3'd0;
		netsoc_sdram_phaseinjector1_baddress_re <= 1'd0;
		netsoc_sdram_phaseinjector1_wrdata_storage_full <= 32'd0;
		netsoc_sdram_phaseinjector1_wrdata_re <= 1'd0;
		netsoc_sdram_phaseinjector1_status <= 32'd0;
		netsoc_sdram_phaseinjector2_command_storage_full <= 6'd0;
		netsoc_sdram_phaseinjector2_command_re <= 1'd0;
		netsoc_sdram_phaseinjector2_address_storage_full <= 14'd0;
		netsoc_sdram_phaseinjector2_address_re <= 1'd0;
		netsoc_sdram_phaseinjector2_baddress_storage_full <= 3'd0;
		netsoc_sdram_phaseinjector2_baddress_re <= 1'd0;
		netsoc_sdram_phaseinjector2_wrdata_storage_full <= 32'd0;
		netsoc_sdram_phaseinjector2_wrdata_re <= 1'd0;
		netsoc_sdram_phaseinjector2_status <= 32'd0;
		netsoc_sdram_phaseinjector3_command_storage_full <= 6'd0;
		netsoc_sdram_phaseinjector3_command_re <= 1'd0;
		netsoc_sdram_phaseinjector3_address_storage_full <= 14'd0;
		netsoc_sdram_phaseinjector3_address_re <= 1'd0;
		netsoc_sdram_phaseinjector3_baddress_storage_full <= 3'd0;
		netsoc_sdram_phaseinjector3_baddress_re <= 1'd0;
		netsoc_sdram_phaseinjector3_wrdata_storage_full <= 32'd0;
		netsoc_sdram_phaseinjector3_wrdata_re <= 1'd0;
		netsoc_sdram_phaseinjector3_status <= 32'd0;
		netsoc_sdram_dfi_p0_address <= 14'd0;
		netsoc_sdram_dfi_p0_bank <= 3'd0;
		netsoc_sdram_dfi_p0_cas_n <= 1'd1;
		netsoc_sdram_dfi_p0_ras_n <= 1'd1;
		netsoc_sdram_dfi_p0_we_n <= 1'd1;
		netsoc_sdram_dfi_p0_wrdata_en <= 1'd0;
		netsoc_sdram_dfi_p0_rddata_en <= 1'd0;
		netsoc_sdram_dfi_p1_address <= 14'd0;
		netsoc_sdram_dfi_p1_bank <= 3'd0;
		netsoc_sdram_dfi_p1_cas_n <= 1'd1;
		netsoc_sdram_dfi_p1_ras_n <= 1'd1;
		netsoc_sdram_dfi_p1_we_n <= 1'd1;
		netsoc_sdram_dfi_p1_wrdata_en <= 1'd0;
		netsoc_sdram_dfi_p1_rddata_en <= 1'd0;
		netsoc_sdram_dfi_p2_address <= 14'd0;
		netsoc_sdram_dfi_p2_bank <= 3'd0;
		netsoc_sdram_dfi_p2_cas_n <= 1'd1;
		netsoc_sdram_dfi_p2_ras_n <= 1'd1;
		netsoc_sdram_dfi_p2_we_n <= 1'd1;
		netsoc_sdram_dfi_p2_wrdata_en <= 1'd0;
		netsoc_sdram_dfi_p2_rddata_en <= 1'd0;
		netsoc_sdram_dfi_p3_address <= 14'd0;
		netsoc_sdram_dfi_p3_bank <= 3'd0;
		netsoc_sdram_dfi_p3_cas_n <= 1'd1;
		netsoc_sdram_dfi_p3_ras_n <= 1'd1;
		netsoc_sdram_dfi_p3_we_n <= 1'd1;
		netsoc_sdram_dfi_p3_wrdata_en <= 1'd0;
		netsoc_sdram_dfi_p3_rddata_en <= 1'd0;
		netsoc_sdram_cmd_payload_a <= 14'd0;
		netsoc_sdram_cmd_payload_ba <= 3'd0;
		netsoc_sdram_cmd_payload_cas <= 1'd0;
		netsoc_sdram_cmd_payload_ras <= 1'd0;
		netsoc_sdram_cmd_payload_we <= 1'd0;
		netsoc_sdram_seq_done <= 1'd0;
		netsoc_sdram_counter <= 5'd0;
		netsoc_sdram_count <= 10'd782;
		netsoc_sdram_bankmachine0_cmd_buffer_lookahead_level <= 4'd0;
		netsoc_sdram_bankmachine0_cmd_buffer_lookahead_produce <= 3'd0;
		netsoc_sdram_bankmachine0_cmd_buffer_lookahead_consume <= 3'd0;
		netsoc_sdram_bankmachine0_cmd_buffer_source_payload_we <= 1'd0;
		netsoc_sdram_bankmachine0_cmd_buffer_source_payload_adr <= 21'd0;
		netsoc_sdram_bankmachine0_cmd_buffer_valid_n <= 1'd0;
		netsoc_sdram_bankmachine0_cmd_buffer_first_n <= 1'd0;
		netsoc_sdram_bankmachine0_cmd_buffer_last_n <= 1'd0;
		netsoc_sdram_bankmachine0_has_openrow <= 1'd0;
		netsoc_sdram_bankmachine0_count <= 3'd5;
		netsoc_sdram_bankmachine1_cmd_buffer_lookahead_level <= 4'd0;
		netsoc_sdram_bankmachine1_cmd_buffer_lookahead_produce <= 3'd0;
		netsoc_sdram_bankmachine1_cmd_buffer_lookahead_consume <= 3'd0;
		netsoc_sdram_bankmachine1_cmd_buffer_source_payload_we <= 1'd0;
		netsoc_sdram_bankmachine1_cmd_buffer_source_payload_adr <= 21'd0;
		netsoc_sdram_bankmachine1_cmd_buffer_valid_n <= 1'd0;
		netsoc_sdram_bankmachine1_cmd_buffer_first_n <= 1'd0;
		netsoc_sdram_bankmachine1_cmd_buffer_last_n <= 1'd0;
		netsoc_sdram_bankmachine1_has_openrow <= 1'd0;
		netsoc_sdram_bankmachine1_count <= 3'd5;
		netsoc_sdram_bankmachine2_cmd_buffer_lookahead_level <= 4'd0;
		netsoc_sdram_bankmachine2_cmd_buffer_lookahead_produce <= 3'd0;
		netsoc_sdram_bankmachine2_cmd_buffer_lookahead_consume <= 3'd0;
		netsoc_sdram_bankmachine2_cmd_buffer_source_payload_we <= 1'd0;
		netsoc_sdram_bankmachine2_cmd_buffer_source_payload_adr <= 21'd0;
		netsoc_sdram_bankmachine2_cmd_buffer_valid_n <= 1'd0;
		netsoc_sdram_bankmachine2_cmd_buffer_first_n <= 1'd0;
		netsoc_sdram_bankmachine2_cmd_buffer_last_n <= 1'd0;
		netsoc_sdram_bankmachine2_has_openrow <= 1'd0;
		netsoc_sdram_bankmachine2_count <= 3'd5;
		netsoc_sdram_bankmachine3_cmd_buffer_lookahead_level <= 4'd0;
		netsoc_sdram_bankmachine3_cmd_buffer_lookahead_produce <= 3'd0;
		netsoc_sdram_bankmachine3_cmd_buffer_lookahead_consume <= 3'd0;
		netsoc_sdram_bankmachine3_cmd_buffer_source_payload_we <= 1'd0;
		netsoc_sdram_bankmachine3_cmd_buffer_source_payload_adr <= 21'd0;
		netsoc_sdram_bankmachine3_cmd_buffer_valid_n <= 1'd0;
		netsoc_sdram_bankmachine3_cmd_buffer_first_n <= 1'd0;
		netsoc_sdram_bankmachine3_cmd_buffer_last_n <= 1'd0;
		netsoc_sdram_bankmachine3_has_openrow <= 1'd0;
		netsoc_sdram_bankmachine3_count <= 3'd5;
		netsoc_sdram_bankmachine4_cmd_buffer_lookahead_level <= 4'd0;
		netsoc_sdram_bankmachine4_cmd_buffer_lookahead_produce <= 3'd0;
		netsoc_sdram_bankmachine4_cmd_buffer_lookahead_consume <= 3'd0;
		netsoc_sdram_bankmachine4_cmd_buffer_source_payload_we <= 1'd0;
		netsoc_sdram_bankmachine4_cmd_buffer_source_payload_adr <= 21'd0;
		netsoc_sdram_bankmachine4_cmd_buffer_valid_n <= 1'd0;
		netsoc_sdram_bankmachine4_cmd_buffer_first_n <= 1'd0;
		netsoc_sdram_bankmachine4_cmd_buffer_last_n <= 1'd0;
		netsoc_sdram_bankmachine4_has_openrow <= 1'd0;
		netsoc_sdram_bankmachine4_count <= 3'd5;
		netsoc_sdram_bankmachine5_cmd_buffer_lookahead_level <= 4'd0;
		netsoc_sdram_bankmachine5_cmd_buffer_lookahead_produce <= 3'd0;
		netsoc_sdram_bankmachine5_cmd_buffer_lookahead_consume <= 3'd0;
		netsoc_sdram_bankmachine5_cmd_buffer_source_payload_we <= 1'd0;
		netsoc_sdram_bankmachine5_cmd_buffer_source_payload_adr <= 21'd0;
		netsoc_sdram_bankmachine5_cmd_buffer_valid_n <= 1'd0;
		netsoc_sdram_bankmachine5_cmd_buffer_first_n <= 1'd0;
		netsoc_sdram_bankmachine5_cmd_buffer_last_n <= 1'd0;
		netsoc_sdram_bankmachine5_has_openrow <= 1'd0;
		netsoc_sdram_bankmachine5_count <= 3'd5;
		netsoc_sdram_bankmachine6_cmd_buffer_lookahead_level <= 4'd0;
		netsoc_sdram_bankmachine6_cmd_buffer_lookahead_produce <= 3'd0;
		netsoc_sdram_bankmachine6_cmd_buffer_lookahead_consume <= 3'd0;
		netsoc_sdram_bankmachine6_cmd_buffer_source_payload_we <= 1'd0;
		netsoc_sdram_bankmachine6_cmd_buffer_source_payload_adr <= 21'd0;
		netsoc_sdram_bankmachine6_cmd_buffer_valid_n <= 1'd0;
		netsoc_sdram_bankmachine6_cmd_buffer_first_n <= 1'd0;
		netsoc_sdram_bankmachine6_cmd_buffer_last_n <= 1'd0;
		netsoc_sdram_bankmachine6_has_openrow <= 1'd0;
		netsoc_sdram_bankmachine6_count <= 3'd5;
		netsoc_sdram_bankmachine7_cmd_buffer_lookahead_level <= 4'd0;
		netsoc_sdram_bankmachine7_cmd_buffer_lookahead_produce <= 3'd0;
		netsoc_sdram_bankmachine7_cmd_buffer_lookahead_consume <= 3'd0;
		netsoc_sdram_bankmachine7_cmd_buffer_source_payload_we <= 1'd0;
		netsoc_sdram_bankmachine7_cmd_buffer_source_payload_adr <= 21'd0;
		netsoc_sdram_bankmachine7_cmd_buffer_valid_n <= 1'd0;
		netsoc_sdram_bankmachine7_cmd_buffer_first_n <= 1'd0;
		netsoc_sdram_bankmachine7_cmd_buffer_last_n <= 1'd0;
		netsoc_sdram_bankmachine7_has_openrow <= 1'd0;
		netsoc_sdram_bankmachine7_count <= 3'd5;
		netsoc_sdram_choose_cmd_grant <= 3'd0;
		netsoc_sdram_choose_req_grant <= 3'd0;
		netsoc_sdram_trrdcon_ready <= 1'd1;
		netsoc_sdram_trrdcon_count <= 1'd0;
		netsoc_sdram_tfawcon_ready <= 1'd1;
		netsoc_sdram_tfawcon_window <= 8'd0;
		netsoc_sdram_tccdcon_ready <= 1'd1;
		netsoc_sdram_tccdcon_count <= 1'd0;
		netsoc_sdram_twtrcon_ready <= 1'd1;
		netsoc_sdram_twtrcon_count <= 2'd0;
		netsoc_sdram_time0 <= 5'd0;
		netsoc_sdram_time1 <= 4'd0;
		netsoc_sdram_bandwidth_nreads_status <= 24'd0;
		netsoc_sdram_bandwidth_nwrites_status <= 24'd0;
		netsoc_sdram_bandwidth_cmd_valid <= 1'd0;
		netsoc_sdram_bandwidth_cmd_ready <= 1'd0;
		netsoc_sdram_bandwidth_cmd_is_read <= 1'd0;
		netsoc_sdram_bandwidth_cmd_is_write <= 1'd0;
		netsoc_sdram_bandwidth_counter <= 24'd0;
		netsoc_sdram_bandwidth_period <= 1'd0;
		netsoc_sdram_bandwidth_nreads <= 24'd0;
		netsoc_sdram_bandwidth_nwrites <= 24'd0;
		netsoc_sdram_bandwidth_nreads_r <= 24'd0;
		netsoc_sdram_bandwidth_nwrites_r <= 24'd0;
		netsoc_adr_offset_r <= 2'd0;
		ethphy_reset_storage_full <= 1'd0;
		ethphy_reset_re <= 1'd0;
		ethphy_counter <= 9'd0;
		ethphy_storage_full <= 3'd0;
		ethphy_re <= 1'd0;
		ethmac_preamble_errors_status <= 32'd0;
		ethmac_crc_errors_status <= 32'd0;
		ethmac_tx_cdc_graycounter0_q <= 7'd0;
		ethmac_tx_cdc_graycounter0_q_binary <= 7'd0;
		ethmac_rx_cdc_graycounter1_q <= 7'd0;
		ethmac_rx_cdc_graycounter1_q_binary <= 7'd0;
		ethmac_writer_errors_status <= 32'd0;
		ethmac_writer_storage_full <= 1'd0;
		ethmac_writer_re <= 1'd0;
		ethmac_writer_counter <= 32'd0;
		ethmac_writer_slot <= 1'd0;
		ethmac_writer_fifo_level <= 2'd0;
		ethmac_writer_fifo_produce <= 1'd0;
		ethmac_writer_fifo_consume <= 1'd0;
		ethmac_reader_slot_storage_full <= 1'd0;
		ethmac_reader_slot_re <= 1'd0;
		ethmac_reader_length_storage_full <= 11'd0;
		ethmac_reader_length_re <= 1'd0;
		ethmac_reader_done_pending <= 1'd0;
		ethmac_reader_eventmanager_storage_full <= 1'd0;
		ethmac_reader_eventmanager_re <= 1'd0;
		ethmac_reader_fifo_level <= 2'd0;
		ethmac_reader_fifo_produce <= 1'd0;
		ethmac_reader_fifo_consume <= 1'd0;
		ethmac_reader_counter <= 11'd0;
		ethmac_reader_last_d <= 1'd0;
		ethmac_sram0_bus_ack0 <= 1'd0;
		ethmac_sram1_bus_ack0 <= 1'd0;
		ethmac_sram0_bus_ack1 <= 1'd0;
		ethmac_sram1_bus_ack1 <= 1'd0;
		ethmac_slave_sel_r <= 4'd0;
		refresher_state <= 2'd0;
		bankmachine0_state <= 4'd0;
		bankmachine1_state <= 4'd0;
		bankmachine2_state <= 4'd0;
		bankmachine3_state <= 4'd0;
		bankmachine4_state <= 4'd0;
		bankmachine5_state <= 4'd0;
		bankmachine6_state <= 4'd0;
		bankmachine7_state <= 4'd0;
		multiplexer_state <= 4'd0;
		rbank <= 3'd0;
		wbank <= 3'd0;
		new_master_wdata_ready0 <= 1'd0;
		new_master_wdata_ready1 <= 1'd0;
		new_master_wdata_ready2 <= 1'd0;
		new_master_rdata_valid0 <= 1'd0;
		new_master_rdata_valid1 <= 1'd0;
		new_master_rdata_valid2 <= 1'd0;
		new_master_rdata_valid3 <= 1'd0;
		new_master_rdata_valid4 <= 1'd0;
		new_master_rdata_valid5 <= 1'd0;
		new_master_rdata_valid6 <= 1'd0;
		new_master_rbank0 <= 3'd0;
		new_master_rbank1 <= 3'd0;
		new_master_rbank2 <= 3'd0;
		new_master_rbank3 <= 3'd0;
		new_master_rbank4 <= 3'd0;
		new_master_rbank5 <= 3'd0;
		new_master_wbank0 <= 3'd0;
		new_master_wbank1 <= 3'd0;
		cache_state <= 3'd0;
		litedramwishbone2native_state <= 2'd0;
		liteethmacsramwriter_state <= 3'd0;
		liteethmacsramreader_state <= 2'd0;
		netsoc_grant <= 1'd0;
		netsoc_slave_sel_r <= 6'd0;
		netsoc_count <= 17'd65536;
		netsoc_interface0_bank_bus_dat_r <= 8'd0;
		netsoc_interface1_bank_bus_dat_r <= 8'd0;
		netsoc_interface2_bank_bus_dat_r <= 8'd0;
		netsoc_interface3_bank_bus_dat_r <= 8'd0;
		netsoc_interface4_bank_bus_dat_r <= 8'd0;
		netsoc_sel_r <= 1'd0;
		netsoc_interface5_bank_bus_dat_r <= 8'd0;
		netsoc_interface6_bank_bus_dat_r <= 8'd0;
		netsoc_interface7_bank_bus_dat_r <= 8'd0;
		netsoc_interface8_bank_bus_dat_r <= 8'd0;
		netsoc_interface9_bank_bus_dat_r <= 8'd0;
		netsoc_interface10_bank_bus_dat_r <= 8'd0;
	end
	xilinxmultiregimpl0_regs0 <= serial_rx;
	xilinxmultiregimpl0_regs1 <= xilinxmultiregimpl0_regs0;
	xilinxmultiregimpl1_regs0 <= netsoc_switches;
	xilinxmultiregimpl1_regs1 <= xilinxmultiregimpl1_regs0;
	xilinxmultiregimpl2_regs0 <= ethphy_data_r;
	xilinxmultiregimpl2_regs1 <= xilinxmultiregimpl2_regs0;
	xilinxmultiregimpl3_regs0 <= ethmac_ps_preamble_error_toggle_i;
	xilinxmultiregimpl3_regs1 <= xilinxmultiregimpl3_regs0;
	xilinxmultiregimpl4_regs0 <= ethmac_ps_crc_error_toggle_i;
	xilinxmultiregimpl4_regs1 <= xilinxmultiregimpl4_regs0;
	xilinxmultiregimpl6_regs0 <= ethmac_tx_cdc_graycounter1_q;
	xilinxmultiregimpl6_regs1 <= xilinxmultiregimpl6_regs0;
	xilinxmultiregimpl7_regs0 <= ethmac_rx_cdc_graycounter0_q;
	xilinxmultiregimpl7_regs1 <= xilinxmultiregimpl7_regs0;
end

mor1kx #(
	.DBUS_WB_TYPE("B3_REGISTERED_FEEDBACK"),
	.FEATURE_ADDC("ENABLED"),
	.FEATURE_CMOV("ENABLED"),
	.FEATURE_DATACACHE("ENABLED"),
	.FEATURE_DMMU("ENABLED"),
	.FEATURE_FFL1("ENABLED"),
	.FEATURE_IMMU("ENABLED"),
	.FEATURE_INSTRUCTIONCACHE("ENABLED"),
	.FEATURE_TIMER("ENABLED"),
	.IBUS_WB_TYPE("B3_REGISTERED_FEEDBACK"),
	.OPTION_CPU0("CAPPUCCINO"),
	.OPTION_DCACHE_BLOCK_WIDTH(3'd4),
	.OPTION_DCACHE_LIMIT_WIDTH(5'd31),
	.OPTION_DCACHE_SET_WIDTH(4'd8),
	.OPTION_DCACHE_WAYS(1'd1),
	.OPTION_ICACHE_BLOCK_WIDTH(3'd4),
	.OPTION_ICACHE_LIMIT_WIDTH(5'd31),
	.OPTION_ICACHE_SET_WIDTH(4'd8),
	.OPTION_ICACHE_WAYS(1'd1),
	.OPTION_PIC_TRIGGER("LEVEL"),
	.OPTION_RESET_PC(1'd0)
) mor1kx (
	.clk(sys_clk),
	.dwbm_ack_i(netsoc_netsoc_mor1kx_dbus_ack),
	.dwbm_dat_i(netsoc_netsoc_mor1kx_dbus_dat_r),
	.dwbm_err_i(netsoc_netsoc_mor1kx_dbus_err),
	.dwbm_rty_i(1'd0),
	.irq_i(netsoc_netsoc_mor1kx_interrupt),
	.iwbm_ack_i(netsoc_netsoc_mor1kx_ibus_ack),
	.iwbm_dat_i(netsoc_netsoc_mor1kx_ibus_dat_r),
	.iwbm_err_i(netsoc_netsoc_mor1kx_ibus_err),
	.iwbm_rty_i(1'd0),
	.rst((sys_rst | netsoc_netsoc_mor1kx_reset)),
	.dwbm_adr_o(netsoc_netsoc_mor1kx_d_adr_o),
	.dwbm_bte_o(netsoc_netsoc_mor1kx_dbus_bte),
	.dwbm_cti_o(netsoc_netsoc_mor1kx_dbus_cti),
	.dwbm_cyc_o(netsoc_netsoc_mor1kx_dbus_cyc),
	.dwbm_dat_o(netsoc_netsoc_mor1kx_dbus_dat_w),
	.dwbm_sel_o(netsoc_netsoc_mor1kx_dbus_sel),
	.dwbm_stb_o(netsoc_netsoc_mor1kx_dbus_stb),
	.dwbm_we_o(netsoc_netsoc_mor1kx_dbus_we),
	.iwbm_adr_o(netsoc_netsoc_mor1kx_i_adr_o),
	.iwbm_bte_o(netsoc_netsoc_mor1kx_ibus_bte),
	.iwbm_cti_o(netsoc_netsoc_mor1kx_ibus_cti),
	.iwbm_cyc_o(netsoc_netsoc_mor1kx_ibus_cyc),
	.iwbm_dat_o(netsoc_netsoc_mor1kx_ibus_dat_w),
	.iwbm_sel_o(netsoc_netsoc_mor1kx_ibus_sel),
	.iwbm_stb_o(netsoc_netsoc_mor1kx_ibus_stb),
	.iwbm_we_o(netsoc_netsoc_mor1kx_ibus_we)
);

reg [31:0] mem[0:16383];
reg [13:0] memadr;
always @(posedge sys_clk) begin
	memadr <= netsoc_netsoc_rom_adr;
end

assign netsoc_netsoc_rom_dat_r = mem[memadr];

initial begin
	$readmemh("mem.init", mem);
end

reg [31:0] mem_1[0:8191];
reg [12:0] memadr_1;
always @(posedge sys_clk) begin
	if (netsoc_netsoc_sram_we[0])
		mem_1[netsoc_netsoc_sram_adr][7:0] <= netsoc_netsoc_sram_dat_w[7:0];
	if (netsoc_netsoc_sram_we[1])
		mem_1[netsoc_netsoc_sram_adr][15:8] <= netsoc_netsoc_sram_dat_w[15:8];
	if (netsoc_netsoc_sram_we[2])
		mem_1[netsoc_netsoc_sram_adr][23:16] <= netsoc_netsoc_sram_dat_w[23:16];
	if (netsoc_netsoc_sram_we[3])
		mem_1[netsoc_netsoc_sram_adr][31:24] <= netsoc_netsoc_sram_dat_w[31:24];
	memadr_1 <= netsoc_netsoc_sram_adr;
end

assign netsoc_netsoc_sram_dat_r = mem_1[memadr_1];

reg [9:0] storage[0:15];
reg [9:0] memdat;
always @(posedge sys_clk) begin
	if (netsoc_netsoc_uart_tx_fifo_wrport_we)
		storage[netsoc_netsoc_uart_tx_fifo_wrport_adr] <= netsoc_netsoc_uart_tx_fifo_wrport_dat_w;
	memdat <= storage[netsoc_netsoc_uart_tx_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign netsoc_netsoc_uart_tx_fifo_wrport_dat_r = memdat;
assign netsoc_netsoc_uart_tx_fifo_rdport_dat_r = storage[netsoc_netsoc_uart_tx_fifo_rdport_adr];

reg [9:0] storage_1[0:15];
reg [9:0] memdat_1;
always @(posedge sys_clk) begin
	if (netsoc_netsoc_uart_rx_fifo_wrport_we)
		storage_1[netsoc_netsoc_uart_rx_fifo_wrport_adr] <= netsoc_netsoc_uart_rx_fifo_wrport_dat_w;
	memdat_1 <= storage_1[netsoc_netsoc_uart_rx_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign netsoc_netsoc_uart_rx_fifo_wrport_dat_r = memdat_1;
assign netsoc_netsoc_uart_rx_fifo_rdport_dat_r = storage_1[netsoc_netsoc_uart_rx_fifo_rdport_adr];

reg [7:0] mem_2[0:6];
reg [2:0] memadr_2;
always @(posedge sys_clk) begin
	memadr_2 <= netsoc_adr;
end

assign netsoc_dat_r = mem_2[memadr_2];

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
	.CLKFBIN(netsoc_pll_fb),
	.CLKIN1(clk100),
	.CLKFBOUT(netsoc_pll_fb),
	.CLKOUT0(netsoc_pll_sys),
	.CLKOUT1(netsoc_pll_sys4x),
	.CLKOUT2(netsoc_pll_sys4x_dqs),
	.CLKOUT3(netsoc_pll_clk200),
	.CLKOUT4(netsoc_pll_clk50),
	.CLKOUT5(netsoc_pll_clk100),
	.LOCKED(netsoc_pll_locked)
);

BUFG BUFG(
	.I(netsoc_pll_sys),
	.O(sys_clk)
);

BUFG BUFG_1(
	.I(netsoc_pll_sys4x),
	.O(sys4x_clk)
);

BUFG BUFG_2(
	.I(netsoc_pll_sys4x_dqs),
	.O(sys4x_dqs_clk)
);

BUFG BUFG_3(
	.I(netsoc_pll_clk200),
	.O(clk200_clk)
);

BUFG BUFG_4(
	.I(netsoc_pll_clk100),
	.O(clk100_clk)
);

BUFG BUFG_5(
	.I(netsoc_pll_clk50),
	.O(clk50_clk)
);

IDELAYCTRL IDELAYCTRL(
	.REFCLK(clk200_clk),
	.RST(netsoc_ic_reset)
);

BUFR #(
	.BUFR_DIVIDE("4")
) BUFR (
	.CE(1'd1),
	.CLR(1'd0),
	.I(clk100),
	.O(netsoc_eth_clk)
);

BUFG BUFG_6(
	.I(netsoc_eth_clk),
	.O(eth_ref_clk)
);

DNA_PORT DNA_PORT(
	.CLK(netsoc_dna_cnt[0]),
	.DIN(netsoc_dna_status[56]),
	.READ((netsoc_dna_cnt < 2'd2)),
	.SHIFT(1'd1),
	.DOUT(netsoc_dna_do)
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
	.DADDR(netsoc_channel),
	.DCLK(sys_clk),
	.DEN(netsoc_eoc),
	.DI(1'd0),
	.DWE(1'd0),
	.RESET(sys_rst),
	.VAUXN(1'd0),
	.VAUXP(1'd1),
	.VN(1'd0),
	.VP(1'd1),
	.ALM(netsoc_alarm),
	.BUSY(netsoc_busy),
	.CHANNEL(netsoc_channel),
	.DO(netsoc_data),
	.DRDY(netsoc_drdy),
	.EOC(netsoc_eoc),
	.EOS(netsoc_eos),
	.OT(netsoc_ot)
);

STARTUPE2 STARTUPE2(
	.CLK(1'd0),
	.GSR(1'd0),
	.GTS(1'd0),
	.KEYCLEARB(1'd0),
	.PACK(1'd0),
	.USRCCLKO(netsoc_clk0),
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
	.OQ(netsoc_a7ddrphy_sd_clk_se)
);

OBUFDS OBUFDS(
	.I(netsoc_a7ddrphy_sd_clk_se),
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
	.D1(netsoc_a7ddrphy_dfi_p0_address[0]),
	.D2(netsoc_a7ddrphy_dfi_p0_address[0]),
	.D3(netsoc_a7ddrphy_dfi_p1_address[0]),
	.D4(netsoc_a7ddrphy_dfi_p1_address[0]),
	.D5(netsoc_a7ddrphy_dfi_p2_address[0]),
	.D6(netsoc_a7ddrphy_dfi_p2_address[0]),
	.D7(netsoc_a7ddrphy_dfi_p3_address[0]),
	.D8(netsoc_a7ddrphy_dfi_p3_address[0]),
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
	.D1(netsoc_a7ddrphy_dfi_p0_address[1]),
	.D2(netsoc_a7ddrphy_dfi_p0_address[1]),
	.D3(netsoc_a7ddrphy_dfi_p1_address[1]),
	.D4(netsoc_a7ddrphy_dfi_p1_address[1]),
	.D5(netsoc_a7ddrphy_dfi_p2_address[1]),
	.D6(netsoc_a7ddrphy_dfi_p2_address[1]),
	.D7(netsoc_a7ddrphy_dfi_p3_address[1]),
	.D8(netsoc_a7ddrphy_dfi_p3_address[1]),
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
	.D1(netsoc_a7ddrphy_dfi_p0_address[2]),
	.D2(netsoc_a7ddrphy_dfi_p0_address[2]),
	.D3(netsoc_a7ddrphy_dfi_p1_address[2]),
	.D4(netsoc_a7ddrphy_dfi_p1_address[2]),
	.D5(netsoc_a7ddrphy_dfi_p2_address[2]),
	.D6(netsoc_a7ddrphy_dfi_p2_address[2]),
	.D7(netsoc_a7ddrphy_dfi_p3_address[2]),
	.D8(netsoc_a7ddrphy_dfi_p3_address[2]),
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
	.D1(netsoc_a7ddrphy_dfi_p0_address[3]),
	.D2(netsoc_a7ddrphy_dfi_p0_address[3]),
	.D3(netsoc_a7ddrphy_dfi_p1_address[3]),
	.D4(netsoc_a7ddrphy_dfi_p1_address[3]),
	.D5(netsoc_a7ddrphy_dfi_p2_address[3]),
	.D6(netsoc_a7ddrphy_dfi_p2_address[3]),
	.D7(netsoc_a7ddrphy_dfi_p3_address[3]),
	.D8(netsoc_a7ddrphy_dfi_p3_address[3]),
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
	.D1(netsoc_a7ddrphy_dfi_p0_address[4]),
	.D2(netsoc_a7ddrphy_dfi_p0_address[4]),
	.D3(netsoc_a7ddrphy_dfi_p1_address[4]),
	.D4(netsoc_a7ddrphy_dfi_p1_address[4]),
	.D5(netsoc_a7ddrphy_dfi_p2_address[4]),
	.D6(netsoc_a7ddrphy_dfi_p2_address[4]),
	.D7(netsoc_a7ddrphy_dfi_p3_address[4]),
	.D8(netsoc_a7ddrphy_dfi_p3_address[4]),
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
	.D1(netsoc_a7ddrphy_dfi_p0_address[5]),
	.D2(netsoc_a7ddrphy_dfi_p0_address[5]),
	.D3(netsoc_a7ddrphy_dfi_p1_address[5]),
	.D4(netsoc_a7ddrphy_dfi_p1_address[5]),
	.D5(netsoc_a7ddrphy_dfi_p2_address[5]),
	.D6(netsoc_a7ddrphy_dfi_p2_address[5]),
	.D7(netsoc_a7ddrphy_dfi_p3_address[5]),
	.D8(netsoc_a7ddrphy_dfi_p3_address[5]),
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
	.D1(netsoc_a7ddrphy_dfi_p0_address[6]),
	.D2(netsoc_a7ddrphy_dfi_p0_address[6]),
	.D3(netsoc_a7ddrphy_dfi_p1_address[6]),
	.D4(netsoc_a7ddrphy_dfi_p1_address[6]),
	.D5(netsoc_a7ddrphy_dfi_p2_address[6]),
	.D6(netsoc_a7ddrphy_dfi_p2_address[6]),
	.D7(netsoc_a7ddrphy_dfi_p3_address[6]),
	.D8(netsoc_a7ddrphy_dfi_p3_address[6]),
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
	.D1(netsoc_a7ddrphy_dfi_p0_address[7]),
	.D2(netsoc_a7ddrphy_dfi_p0_address[7]),
	.D3(netsoc_a7ddrphy_dfi_p1_address[7]),
	.D4(netsoc_a7ddrphy_dfi_p1_address[7]),
	.D5(netsoc_a7ddrphy_dfi_p2_address[7]),
	.D6(netsoc_a7ddrphy_dfi_p2_address[7]),
	.D7(netsoc_a7ddrphy_dfi_p3_address[7]),
	.D8(netsoc_a7ddrphy_dfi_p3_address[7]),
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
	.D1(netsoc_a7ddrphy_dfi_p0_address[8]),
	.D2(netsoc_a7ddrphy_dfi_p0_address[8]),
	.D3(netsoc_a7ddrphy_dfi_p1_address[8]),
	.D4(netsoc_a7ddrphy_dfi_p1_address[8]),
	.D5(netsoc_a7ddrphy_dfi_p2_address[8]),
	.D6(netsoc_a7ddrphy_dfi_p2_address[8]),
	.D7(netsoc_a7ddrphy_dfi_p3_address[8]),
	.D8(netsoc_a7ddrphy_dfi_p3_address[8]),
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
	.D1(netsoc_a7ddrphy_dfi_p0_address[9]),
	.D2(netsoc_a7ddrphy_dfi_p0_address[9]),
	.D3(netsoc_a7ddrphy_dfi_p1_address[9]),
	.D4(netsoc_a7ddrphy_dfi_p1_address[9]),
	.D5(netsoc_a7ddrphy_dfi_p2_address[9]),
	.D6(netsoc_a7ddrphy_dfi_p2_address[9]),
	.D7(netsoc_a7ddrphy_dfi_p3_address[9]),
	.D8(netsoc_a7ddrphy_dfi_p3_address[9]),
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
	.D1(netsoc_a7ddrphy_dfi_p0_address[10]),
	.D2(netsoc_a7ddrphy_dfi_p0_address[10]),
	.D3(netsoc_a7ddrphy_dfi_p1_address[10]),
	.D4(netsoc_a7ddrphy_dfi_p1_address[10]),
	.D5(netsoc_a7ddrphy_dfi_p2_address[10]),
	.D6(netsoc_a7ddrphy_dfi_p2_address[10]),
	.D7(netsoc_a7ddrphy_dfi_p3_address[10]),
	.D8(netsoc_a7ddrphy_dfi_p3_address[10]),
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
	.D1(netsoc_a7ddrphy_dfi_p0_address[11]),
	.D2(netsoc_a7ddrphy_dfi_p0_address[11]),
	.D3(netsoc_a7ddrphy_dfi_p1_address[11]),
	.D4(netsoc_a7ddrphy_dfi_p1_address[11]),
	.D5(netsoc_a7ddrphy_dfi_p2_address[11]),
	.D6(netsoc_a7ddrphy_dfi_p2_address[11]),
	.D7(netsoc_a7ddrphy_dfi_p3_address[11]),
	.D8(netsoc_a7ddrphy_dfi_p3_address[11]),
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
	.D1(netsoc_a7ddrphy_dfi_p0_address[12]),
	.D2(netsoc_a7ddrphy_dfi_p0_address[12]),
	.D3(netsoc_a7ddrphy_dfi_p1_address[12]),
	.D4(netsoc_a7ddrphy_dfi_p1_address[12]),
	.D5(netsoc_a7ddrphy_dfi_p2_address[12]),
	.D6(netsoc_a7ddrphy_dfi_p2_address[12]),
	.D7(netsoc_a7ddrphy_dfi_p3_address[12]),
	.D8(netsoc_a7ddrphy_dfi_p3_address[12]),
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
	.D1(netsoc_a7ddrphy_dfi_p0_address[13]),
	.D2(netsoc_a7ddrphy_dfi_p0_address[13]),
	.D3(netsoc_a7ddrphy_dfi_p1_address[13]),
	.D4(netsoc_a7ddrphy_dfi_p1_address[13]),
	.D5(netsoc_a7ddrphy_dfi_p2_address[13]),
	.D6(netsoc_a7ddrphy_dfi_p2_address[13]),
	.D7(netsoc_a7ddrphy_dfi_p3_address[13]),
	.D8(netsoc_a7ddrphy_dfi_p3_address[13]),
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
	.D1(netsoc_a7ddrphy_dfi_p0_bank[0]),
	.D2(netsoc_a7ddrphy_dfi_p0_bank[0]),
	.D3(netsoc_a7ddrphy_dfi_p1_bank[0]),
	.D4(netsoc_a7ddrphy_dfi_p1_bank[0]),
	.D5(netsoc_a7ddrphy_dfi_p2_bank[0]),
	.D6(netsoc_a7ddrphy_dfi_p2_bank[0]),
	.D7(netsoc_a7ddrphy_dfi_p3_bank[0]),
	.D8(netsoc_a7ddrphy_dfi_p3_bank[0]),
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
	.D1(netsoc_a7ddrphy_dfi_p0_bank[1]),
	.D2(netsoc_a7ddrphy_dfi_p0_bank[1]),
	.D3(netsoc_a7ddrphy_dfi_p1_bank[1]),
	.D4(netsoc_a7ddrphy_dfi_p1_bank[1]),
	.D5(netsoc_a7ddrphy_dfi_p2_bank[1]),
	.D6(netsoc_a7ddrphy_dfi_p2_bank[1]),
	.D7(netsoc_a7ddrphy_dfi_p3_bank[1]),
	.D8(netsoc_a7ddrphy_dfi_p3_bank[1]),
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
	.D1(netsoc_a7ddrphy_dfi_p0_bank[2]),
	.D2(netsoc_a7ddrphy_dfi_p0_bank[2]),
	.D3(netsoc_a7ddrphy_dfi_p1_bank[2]),
	.D4(netsoc_a7ddrphy_dfi_p1_bank[2]),
	.D5(netsoc_a7ddrphy_dfi_p2_bank[2]),
	.D6(netsoc_a7ddrphy_dfi_p2_bank[2]),
	.D7(netsoc_a7ddrphy_dfi_p3_bank[2]),
	.D8(netsoc_a7ddrphy_dfi_p3_bank[2]),
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
	.D1(netsoc_a7ddrphy_dfi_p0_ras_n),
	.D2(netsoc_a7ddrphy_dfi_p0_ras_n),
	.D3(netsoc_a7ddrphy_dfi_p1_ras_n),
	.D4(netsoc_a7ddrphy_dfi_p1_ras_n),
	.D5(netsoc_a7ddrphy_dfi_p2_ras_n),
	.D6(netsoc_a7ddrphy_dfi_p2_ras_n),
	.D7(netsoc_a7ddrphy_dfi_p3_ras_n),
	.D8(netsoc_a7ddrphy_dfi_p3_ras_n),
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
	.D1(netsoc_a7ddrphy_dfi_p0_cas_n),
	.D2(netsoc_a7ddrphy_dfi_p0_cas_n),
	.D3(netsoc_a7ddrphy_dfi_p1_cas_n),
	.D4(netsoc_a7ddrphy_dfi_p1_cas_n),
	.D5(netsoc_a7ddrphy_dfi_p2_cas_n),
	.D6(netsoc_a7ddrphy_dfi_p2_cas_n),
	.D7(netsoc_a7ddrphy_dfi_p3_cas_n),
	.D8(netsoc_a7ddrphy_dfi_p3_cas_n),
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
	.D1(netsoc_a7ddrphy_dfi_p0_we_n),
	.D2(netsoc_a7ddrphy_dfi_p0_we_n),
	.D3(netsoc_a7ddrphy_dfi_p1_we_n),
	.D4(netsoc_a7ddrphy_dfi_p1_we_n),
	.D5(netsoc_a7ddrphy_dfi_p2_we_n),
	.D6(netsoc_a7ddrphy_dfi_p2_we_n),
	.D7(netsoc_a7ddrphy_dfi_p3_we_n),
	.D8(netsoc_a7ddrphy_dfi_p3_we_n),
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
	.D1(netsoc_a7ddrphy_dfi_p0_cke),
	.D2(netsoc_a7ddrphy_dfi_p0_cke),
	.D3(netsoc_a7ddrphy_dfi_p1_cke),
	.D4(netsoc_a7ddrphy_dfi_p1_cke),
	.D5(netsoc_a7ddrphy_dfi_p2_cke),
	.D6(netsoc_a7ddrphy_dfi_p2_cke),
	.D7(netsoc_a7ddrphy_dfi_p3_cke),
	.D8(netsoc_a7ddrphy_dfi_p3_cke),
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
	.D1(netsoc_a7ddrphy_dfi_p0_odt),
	.D2(netsoc_a7ddrphy_dfi_p0_odt),
	.D3(netsoc_a7ddrphy_dfi_p1_odt),
	.D4(netsoc_a7ddrphy_dfi_p1_odt),
	.D5(netsoc_a7ddrphy_dfi_p2_odt),
	.D6(netsoc_a7ddrphy_dfi_p2_odt),
	.D7(netsoc_a7ddrphy_dfi_p3_odt),
	.D8(netsoc_a7ddrphy_dfi_p3_odt),
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
	.D1(netsoc_a7ddrphy_dfi_p0_reset_n),
	.D2(netsoc_a7ddrphy_dfi_p0_reset_n),
	.D3(netsoc_a7ddrphy_dfi_p1_reset_n),
	.D4(netsoc_a7ddrphy_dfi_p1_reset_n),
	.D5(netsoc_a7ddrphy_dfi_p2_reset_n),
	.D6(netsoc_a7ddrphy_dfi_p2_reset_n),
	.D7(netsoc_a7ddrphy_dfi_p3_reset_n),
	.D8(netsoc_a7ddrphy_dfi_p3_reset_n),
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
	.D1(netsoc_a7ddrphy_dfi_p0_cs_n),
	.D2(netsoc_a7ddrphy_dfi_p0_cs_n),
	.D3(netsoc_a7ddrphy_dfi_p1_cs_n),
	.D4(netsoc_a7ddrphy_dfi_p1_cs_n),
	.D5(netsoc_a7ddrphy_dfi_p2_cs_n),
	.D6(netsoc_a7ddrphy_dfi_p2_cs_n),
	.D7(netsoc_a7ddrphy_dfi_p3_cs_n),
	.D8(netsoc_a7ddrphy_dfi_p3_cs_n),
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
	.D1(netsoc_a7ddrphy_dfi_p0_wrdata_mask[0]),
	.D2(netsoc_a7ddrphy_dfi_p0_wrdata_mask[2]),
	.D3(netsoc_a7ddrphy_dfi_p1_wrdata_mask[0]),
	.D4(netsoc_a7ddrphy_dfi_p1_wrdata_mask[2]),
	.D5(netsoc_a7ddrphy_dfi_p2_wrdata_mask[0]),
	.D6(netsoc_a7ddrphy_dfi_p2_wrdata_mask[2]),
	.D7(netsoc_a7ddrphy_dfi_p3_wrdata_mask[0]),
	.D8(netsoc_a7ddrphy_dfi_p3_wrdata_mask[2]),
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
	.D1(netsoc_a7ddrphy_dqs_serdes_pattern[0]),
	.D2(netsoc_a7ddrphy_dqs_serdes_pattern[1]),
	.D3(netsoc_a7ddrphy_dqs_serdes_pattern[2]),
	.D4(netsoc_a7ddrphy_dqs_serdes_pattern[3]),
	.D5(netsoc_a7ddrphy_dqs_serdes_pattern[4]),
	.D6(netsoc_a7ddrphy_dqs_serdes_pattern[5]),
	.D7(netsoc_a7ddrphy_dqs_serdes_pattern[6]),
	.D8(netsoc_a7ddrphy_dqs_serdes_pattern[7]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~netsoc_a7ddrphy_oe_dqs)),
	.TCE(1'd1),
	.OFB(netsoc_a7ddrphy0),
	.OQ(netsoc_a7ddrphy_dqs_nodelay0),
	.TQ(netsoc_a7ddrphy_dqs_t0)
);

OBUFTDS OBUFTDS(
	.I(netsoc_a7ddrphy_dqs_nodelay0),
	.T(netsoc_a7ddrphy_dqs_t0),
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
	.D1(netsoc_a7ddrphy_dfi_p0_wrdata_mask[1]),
	.D2(netsoc_a7ddrphy_dfi_p0_wrdata_mask[3]),
	.D3(netsoc_a7ddrphy_dfi_p1_wrdata_mask[1]),
	.D4(netsoc_a7ddrphy_dfi_p1_wrdata_mask[3]),
	.D5(netsoc_a7ddrphy_dfi_p2_wrdata_mask[1]),
	.D6(netsoc_a7ddrphy_dfi_p2_wrdata_mask[3]),
	.D7(netsoc_a7ddrphy_dfi_p3_wrdata_mask[1]),
	.D8(netsoc_a7ddrphy_dfi_p3_wrdata_mask[3]),
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
	.D1(netsoc_a7ddrphy_dqs_serdes_pattern[0]),
	.D2(netsoc_a7ddrphy_dqs_serdes_pattern[1]),
	.D3(netsoc_a7ddrphy_dqs_serdes_pattern[2]),
	.D4(netsoc_a7ddrphy_dqs_serdes_pattern[3]),
	.D5(netsoc_a7ddrphy_dqs_serdes_pattern[4]),
	.D6(netsoc_a7ddrphy_dqs_serdes_pattern[5]),
	.D7(netsoc_a7ddrphy_dqs_serdes_pattern[6]),
	.D8(netsoc_a7ddrphy_dqs_serdes_pattern[7]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~netsoc_a7ddrphy_oe_dqs)),
	.TCE(1'd1),
	.OFB(netsoc_a7ddrphy1),
	.OQ(netsoc_a7ddrphy_dqs_nodelay1),
	.TQ(netsoc_a7ddrphy_dqs_t1)
);

OBUFTDS OBUFTDS_1(
	.I(netsoc_a7ddrphy_dqs_nodelay1),
	.T(netsoc_a7ddrphy_dqs_t1),
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
	.D1(netsoc_a7ddrphy_dfi_p0_wrdata[0]),
	.D2(netsoc_a7ddrphy_dfi_p0_wrdata[16]),
	.D3(netsoc_a7ddrphy_dfi_p1_wrdata[0]),
	.D4(netsoc_a7ddrphy_dfi_p1_wrdata[16]),
	.D5(netsoc_a7ddrphy_dfi_p2_wrdata[0]),
	.D6(netsoc_a7ddrphy_dfi_p2_wrdata[16]),
	.D7(netsoc_a7ddrphy_dfi_p3_wrdata[0]),
	.D8(netsoc_a7ddrphy_dfi_p3_wrdata[16]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~netsoc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(netsoc_a7ddrphy_dq_o_nodelay0),
	.TQ(netsoc_a7ddrphy_dq_t0)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2 (
	.BITSLIP((netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(netsoc_a7ddrphy_dq_i_delayed0),
	.RST((sys_rst | (netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_bitslip_rst_re))),
	.Q1(netsoc_a7ddrphy_dq_i_data0[0]),
	.Q2(netsoc_a7ddrphy_dq_i_data0[1]),
	.Q3(netsoc_a7ddrphy_dq_i_data0[2]),
	.Q4(netsoc_a7ddrphy_dq_i_data0[3]),
	.Q5(netsoc_a7ddrphy_dq_i_data0[4]),
	.Q6(netsoc_a7ddrphy_dq_i_data0[5]),
	.Q7(netsoc_a7ddrphy_dq_i_data0[6]),
	.Q8(netsoc_a7ddrphy_dq_i_data0[7])
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
	.CE((netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(netsoc_a7ddrphy_dq_i_nodelay0),
	.INC(1'd1),
	.LD((netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(netsoc_a7ddrphy_dq_i_delayed0)
);

IOBUF IOBUF(
	.I(netsoc_a7ddrphy_dq_o_nodelay0),
	.T(netsoc_a7ddrphy_dq_t0),
	.IO(ddram_dq[0]),
	.O(netsoc_a7ddrphy_dq_i_nodelay0)
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
	.D1(netsoc_a7ddrphy_dfi_p0_wrdata[1]),
	.D2(netsoc_a7ddrphy_dfi_p0_wrdata[17]),
	.D3(netsoc_a7ddrphy_dfi_p1_wrdata[1]),
	.D4(netsoc_a7ddrphy_dfi_p1_wrdata[17]),
	.D5(netsoc_a7ddrphy_dfi_p2_wrdata[1]),
	.D6(netsoc_a7ddrphy_dfi_p2_wrdata[17]),
	.D7(netsoc_a7ddrphy_dfi_p3_wrdata[1]),
	.D8(netsoc_a7ddrphy_dfi_p3_wrdata[17]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~netsoc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(netsoc_a7ddrphy_dq_o_nodelay1),
	.TQ(netsoc_a7ddrphy_dq_t1)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_1 (
	.BITSLIP((netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(netsoc_a7ddrphy_dq_i_delayed1),
	.RST((sys_rst | (netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_bitslip_rst_re))),
	.Q1(netsoc_a7ddrphy_dq_i_data1[0]),
	.Q2(netsoc_a7ddrphy_dq_i_data1[1]),
	.Q3(netsoc_a7ddrphy_dq_i_data1[2]),
	.Q4(netsoc_a7ddrphy_dq_i_data1[3]),
	.Q5(netsoc_a7ddrphy_dq_i_data1[4]),
	.Q6(netsoc_a7ddrphy_dq_i_data1[5]),
	.Q7(netsoc_a7ddrphy_dq_i_data1[6]),
	.Q8(netsoc_a7ddrphy_dq_i_data1[7])
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
	.CE((netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(netsoc_a7ddrphy_dq_i_nodelay1),
	.INC(1'd1),
	.LD((netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(netsoc_a7ddrphy_dq_i_delayed1)
);

IOBUF IOBUF_1(
	.I(netsoc_a7ddrphy_dq_o_nodelay1),
	.T(netsoc_a7ddrphy_dq_t1),
	.IO(ddram_dq[1]),
	.O(netsoc_a7ddrphy_dq_i_nodelay1)
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
	.D1(netsoc_a7ddrphy_dfi_p0_wrdata[2]),
	.D2(netsoc_a7ddrphy_dfi_p0_wrdata[18]),
	.D3(netsoc_a7ddrphy_dfi_p1_wrdata[2]),
	.D4(netsoc_a7ddrphy_dfi_p1_wrdata[18]),
	.D5(netsoc_a7ddrphy_dfi_p2_wrdata[2]),
	.D6(netsoc_a7ddrphy_dfi_p2_wrdata[18]),
	.D7(netsoc_a7ddrphy_dfi_p3_wrdata[2]),
	.D8(netsoc_a7ddrphy_dfi_p3_wrdata[18]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~netsoc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(netsoc_a7ddrphy_dq_o_nodelay2),
	.TQ(netsoc_a7ddrphy_dq_t2)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_2 (
	.BITSLIP((netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(netsoc_a7ddrphy_dq_i_delayed2),
	.RST((sys_rst | (netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_bitslip_rst_re))),
	.Q1(netsoc_a7ddrphy_dq_i_data2[0]),
	.Q2(netsoc_a7ddrphy_dq_i_data2[1]),
	.Q3(netsoc_a7ddrphy_dq_i_data2[2]),
	.Q4(netsoc_a7ddrphy_dq_i_data2[3]),
	.Q5(netsoc_a7ddrphy_dq_i_data2[4]),
	.Q6(netsoc_a7ddrphy_dq_i_data2[5]),
	.Q7(netsoc_a7ddrphy_dq_i_data2[6]),
	.Q8(netsoc_a7ddrphy_dq_i_data2[7])
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
	.CE((netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(netsoc_a7ddrphy_dq_i_nodelay2),
	.INC(1'd1),
	.LD((netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(netsoc_a7ddrphy_dq_i_delayed2)
);

IOBUF IOBUF_2(
	.I(netsoc_a7ddrphy_dq_o_nodelay2),
	.T(netsoc_a7ddrphy_dq_t2),
	.IO(ddram_dq[2]),
	.O(netsoc_a7ddrphy_dq_i_nodelay2)
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
	.D1(netsoc_a7ddrphy_dfi_p0_wrdata[3]),
	.D2(netsoc_a7ddrphy_dfi_p0_wrdata[19]),
	.D3(netsoc_a7ddrphy_dfi_p1_wrdata[3]),
	.D4(netsoc_a7ddrphy_dfi_p1_wrdata[19]),
	.D5(netsoc_a7ddrphy_dfi_p2_wrdata[3]),
	.D6(netsoc_a7ddrphy_dfi_p2_wrdata[19]),
	.D7(netsoc_a7ddrphy_dfi_p3_wrdata[3]),
	.D8(netsoc_a7ddrphy_dfi_p3_wrdata[19]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~netsoc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(netsoc_a7ddrphy_dq_o_nodelay3),
	.TQ(netsoc_a7ddrphy_dq_t3)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_3 (
	.BITSLIP((netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(netsoc_a7ddrphy_dq_i_delayed3),
	.RST((sys_rst | (netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_bitslip_rst_re))),
	.Q1(netsoc_a7ddrphy_dq_i_data3[0]),
	.Q2(netsoc_a7ddrphy_dq_i_data3[1]),
	.Q3(netsoc_a7ddrphy_dq_i_data3[2]),
	.Q4(netsoc_a7ddrphy_dq_i_data3[3]),
	.Q5(netsoc_a7ddrphy_dq_i_data3[4]),
	.Q6(netsoc_a7ddrphy_dq_i_data3[5]),
	.Q7(netsoc_a7ddrphy_dq_i_data3[6]),
	.Q8(netsoc_a7ddrphy_dq_i_data3[7])
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
	.CE((netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(netsoc_a7ddrphy_dq_i_nodelay3),
	.INC(1'd1),
	.LD((netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(netsoc_a7ddrphy_dq_i_delayed3)
);

IOBUF IOBUF_3(
	.I(netsoc_a7ddrphy_dq_o_nodelay3),
	.T(netsoc_a7ddrphy_dq_t3),
	.IO(ddram_dq[3]),
	.O(netsoc_a7ddrphy_dq_i_nodelay3)
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
	.D1(netsoc_a7ddrphy_dfi_p0_wrdata[4]),
	.D2(netsoc_a7ddrphy_dfi_p0_wrdata[20]),
	.D3(netsoc_a7ddrphy_dfi_p1_wrdata[4]),
	.D4(netsoc_a7ddrphy_dfi_p1_wrdata[20]),
	.D5(netsoc_a7ddrphy_dfi_p2_wrdata[4]),
	.D6(netsoc_a7ddrphy_dfi_p2_wrdata[20]),
	.D7(netsoc_a7ddrphy_dfi_p3_wrdata[4]),
	.D8(netsoc_a7ddrphy_dfi_p3_wrdata[20]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~netsoc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(netsoc_a7ddrphy_dq_o_nodelay4),
	.TQ(netsoc_a7ddrphy_dq_t4)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_4 (
	.BITSLIP((netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(netsoc_a7ddrphy_dq_i_delayed4),
	.RST((sys_rst | (netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_bitslip_rst_re))),
	.Q1(netsoc_a7ddrphy_dq_i_data4[0]),
	.Q2(netsoc_a7ddrphy_dq_i_data4[1]),
	.Q3(netsoc_a7ddrphy_dq_i_data4[2]),
	.Q4(netsoc_a7ddrphy_dq_i_data4[3]),
	.Q5(netsoc_a7ddrphy_dq_i_data4[4]),
	.Q6(netsoc_a7ddrphy_dq_i_data4[5]),
	.Q7(netsoc_a7ddrphy_dq_i_data4[6]),
	.Q8(netsoc_a7ddrphy_dq_i_data4[7])
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
	.CE((netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(netsoc_a7ddrphy_dq_i_nodelay4),
	.INC(1'd1),
	.LD((netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(netsoc_a7ddrphy_dq_i_delayed4)
);

IOBUF IOBUF_4(
	.I(netsoc_a7ddrphy_dq_o_nodelay4),
	.T(netsoc_a7ddrphy_dq_t4),
	.IO(ddram_dq[4]),
	.O(netsoc_a7ddrphy_dq_i_nodelay4)
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
	.D1(netsoc_a7ddrphy_dfi_p0_wrdata[5]),
	.D2(netsoc_a7ddrphy_dfi_p0_wrdata[21]),
	.D3(netsoc_a7ddrphy_dfi_p1_wrdata[5]),
	.D4(netsoc_a7ddrphy_dfi_p1_wrdata[21]),
	.D5(netsoc_a7ddrphy_dfi_p2_wrdata[5]),
	.D6(netsoc_a7ddrphy_dfi_p2_wrdata[21]),
	.D7(netsoc_a7ddrphy_dfi_p3_wrdata[5]),
	.D8(netsoc_a7ddrphy_dfi_p3_wrdata[21]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~netsoc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(netsoc_a7ddrphy_dq_o_nodelay5),
	.TQ(netsoc_a7ddrphy_dq_t5)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_5 (
	.BITSLIP((netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(netsoc_a7ddrphy_dq_i_delayed5),
	.RST((sys_rst | (netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_bitslip_rst_re))),
	.Q1(netsoc_a7ddrphy_dq_i_data5[0]),
	.Q2(netsoc_a7ddrphy_dq_i_data5[1]),
	.Q3(netsoc_a7ddrphy_dq_i_data5[2]),
	.Q4(netsoc_a7ddrphy_dq_i_data5[3]),
	.Q5(netsoc_a7ddrphy_dq_i_data5[4]),
	.Q6(netsoc_a7ddrphy_dq_i_data5[5]),
	.Q7(netsoc_a7ddrphy_dq_i_data5[6]),
	.Q8(netsoc_a7ddrphy_dq_i_data5[7])
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
	.CE((netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(netsoc_a7ddrphy_dq_i_nodelay5),
	.INC(1'd1),
	.LD((netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(netsoc_a7ddrphy_dq_i_delayed5)
);

IOBUF IOBUF_5(
	.I(netsoc_a7ddrphy_dq_o_nodelay5),
	.T(netsoc_a7ddrphy_dq_t5),
	.IO(ddram_dq[5]),
	.O(netsoc_a7ddrphy_dq_i_nodelay5)
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
	.D1(netsoc_a7ddrphy_dfi_p0_wrdata[6]),
	.D2(netsoc_a7ddrphy_dfi_p0_wrdata[22]),
	.D3(netsoc_a7ddrphy_dfi_p1_wrdata[6]),
	.D4(netsoc_a7ddrphy_dfi_p1_wrdata[22]),
	.D5(netsoc_a7ddrphy_dfi_p2_wrdata[6]),
	.D6(netsoc_a7ddrphy_dfi_p2_wrdata[22]),
	.D7(netsoc_a7ddrphy_dfi_p3_wrdata[6]),
	.D8(netsoc_a7ddrphy_dfi_p3_wrdata[22]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~netsoc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(netsoc_a7ddrphy_dq_o_nodelay6),
	.TQ(netsoc_a7ddrphy_dq_t6)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_6 (
	.BITSLIP((netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(netsoc_a7ddrphy_dq_i_delayed6),
	.RST((sys_rst | (netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_bitslip_rst_re))),
	.Q1(netsoc_a7ddrphy_dq_i_data6[0]),
	.Q2(netsoc_a7ddrphy_dq_i_data6[1]),
	.Q3(netsoc_a7ddrphy_dq_i_data6[2]),
	.Q4(netsoc_a7ddrphy_dq_i_data6[3]),
	.Q5(netsoc_a7ddrphy_dq_i_data6[4]),
	.Q6(netsoc_a7ddrphy_dq_i_data6[5]),
	.Q7(netsoc_a7ddrphy_dq_i_data6[6]),
	.Q8(netsoc_a7ddrphy_dq_i_data6[7])
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
	.CE((netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(netsoc_a7ddrphy_dq_i_nodelay6),
	.INC(1'd1),
	.LD((netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(netsoc_a7ddrphy_dq_i_delayed6)
);

IOBUF IOBUF_6(
	.I(netsoc_a7ddrphy_dq_o_nodelay6),
	.T(netsoc_a7ddrphy_dq_t6),
	.IO(ddram_dq[6]),
	.O(netsoc_a7ddrphy_dq_i_nodelay6)
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
	.D1(netsoc_a7ddrphy_dfi_p0_wrdata[7]),
	.D2(netsoc_a7ddrphy_dfi_p0_wrdata[23]),
	.D3(netsoc_a7ddrphy_dfi_p1_wrdata[7]),
	.D4(netsoc_a7ddrphy_dfi_p1_wrdata[23]),
	.D5(netsoc_a7ddrphy_dfi_p2_wrdata[7]),
	.D6(netsoc_a7ddrphy_dfi_p2_wrdata[23]),
	.D7(netsoc_a7ddrphy_dfi_p3_wrdata[7]),
	.D8(netsoc_a7ddrphy_dfi_p3_wrdata[23]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~netsoc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(netsoc_a7ddrphy_dq_o_nodelay7),
	.TQ(netsoc_a7ddrphy_dq_t7)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_7 (
	.BITSLIP((netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(netsoc_a7ddrphy_dq_i_delayed7),
	.RST((sys_rst | (netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_bitslip_rst_re))),
	.Q1(netsoc_a7ddrphy_dq_i_data7[0]),
	.Q2(netsoc_a7ddrphy_dq_i_data7[1]),
	.Q3(netsoc_a7ddrphy_dq_i_data7[2]),
	.Q4(netsoc_a7ddrphy_dq_i_data7[3]),
	.Q5(netsoc_a7ddrphy_dq_i_data7[4]),
	.Q6(netsoc_a7ddrphy_dq_i_data7[5]),
	.Q7(netsoc_a7ddrphy_dq_i_data7[6]),
	.Q8(netsoc_a7ddrphy_dq_i_data7[7])
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
	.CE((netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(netsoc_a7ddrphy_dq_i_nodelay7),
	.INC(1'd1),
	.LD((netsoc_a7ddrphy_dly_sel_storage[0] & netsoc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(netsoc_a7ddrphy_dq_i_delayed7)
);

IOBUF IOBUF_7(
	.I(netsoc_a7ddrphy_dq_o_nodelay7),
	.T(netsoc_a7ddrphy_dq_t7),
	.IO(ddram_dq[7]),
	.O(netsoc_a7ddrphy_dq_i_nodelay7)
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
	.D1(netsoc_a7ddrphy_dfi_p0_wrdata[8]),
	.D2(netsoc_a7ddrphy_dfi_p0_wrdata[24]),
	.D3(netsoc_a7ddrphy_dfi_p1_wrdata[8]),
	.D4(netsoc_a7ddrphy_dfi_p1_wrdata[24]),
	.D5(netsoc_a7ddrphy_dfi_p2_wrdata[8]),
	.D6(netsoc_a7ddrphy_dfi_p2_wrdata[24]),
	.D7(netsoc_a7ddrphy_dfi_p3_wrdata[8]),
	.D8(netsoc_a7ddrphy_dfi_p3_wrdata[24]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~netsoc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(netsoc_a7ddrphy_dq_o_nodelay8),
	.TQ(netsoc_a7ddrphy_dq_t8)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_8 (
	.BITSLIP((netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(netsoc_a7ddrphy_dq_i_delayed8),
	.RST((sys_rst | (netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_bitslip_rst_re))),
	.Q1(netsoc_a7ddrphy_dq_i_data8[0]),
	.Q2(netsoc_a7ddrphy_dq_i_data8[1]),
	.Q3(netsoc_a7ddrphy_dq_i_data8[2]),
	.Q4(netsoc_a7ddrphy_dq_i_data8[3]),
	.Q5(netsoc_a7ddrphy_dq_i_data8[4]),
	.Q6(netsoc_a7ddrphy_dq_i_data8[5]),
	.Q7(netsoc_a7ddrphy_dq_i_data8[6]),
	.Q8(netsoc_a7ddrphy_dq_i_data8[7])
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
	.CE((netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(netsoc_a7ddrphy_dq_i_nodelay8),
	.INC(1'd1),
	.LD((netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(netsoc_a7ddrphy_dq_i_delayed8)
);

IOBUF IOBUF_8(
	.I(netsoc_a7ddrphy_dq_o_nodelay8),
	.T(netsoc_a7ddrphy_dq_t8),
	.IO(ddram_dq[8]),
	.O(netsoc_a7ddrphy_dq_i_nodelay8)
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
	.D1(netsoc_a7ddrphy_dfi_p0_wrdata[9]),
	.D2(netsoc_a7ddrphy_dfi_p0_wrdata[25]),
	.D3(netsoc_a7ddrphy_dfi_p1_wrdata[9]),
	.D4(netsoc_a7ddrphy_dfi_p1_wrdata[25]),
	.D5(netsoc_a7ddrphy_dfi_p2_wrdata[9]),
	.D6(netsoc_a7ddrphy_dfi_p2_wrdata[25]),
	.D7(netsoc_a7ddrphy_dfi_p3_wrdata[9]),
	.D8(netsoc_a7ddrphy_dfi_p3_wrdata[25]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~netsoc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(netsoc_a7ddrphy_dq_o_nodelay9),
	.TQ(netsoc_a7ddrphy_dq_t9)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_9 (
	.BITSLIP((netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(netsoc_a7ddrphy_dq_i_delayed9),
	.RST((sys_rst | (netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_bitslip_rst_re))),
	.Q1(netsoc_a7ddrphy_dq_i_data9[0]),
	.Q2(netsoc_a7ddrphy_dq_i_data9[1]),
	.Q3(netsoc_a7ddrphy_dq_i_data9[2]),
	.Q4(netsoc_a7ddrphy_dq_i_data9[3]),
	.Q5(netsoc_a7ddrphy_dq_i_data9[4]),
	.Q6(netsoc_a7ddrphy_dq_i_data9[5]),
	.Q7(netsoc_a7ddrphy_dq_i_data9[6]),
	.Q8(netsoc_a7ddrphy_dq_i_data9[7])
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
	.CE((netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(netsoc_a7ddrphy_dq_i_nodelay9),
	.INC(1'd1),
	.LD((netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(netsoc_a7ddrphy_dq_i_delayed9)
);

IOBUF IOBUF_9(
	.I(netsoc_a7ddrphy_dq_o_nodelay9),
	.T(netsoc_a7ddrphy_dq_t9),
	.IO(ddram_dq[9]),
	.O(netsoc_a7ddrphy_dq_i_nodelay9)
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
	.D1(netsoc_a7ddrphy_dfi_p0_wrdata[10]),
	.D2(netsoc_a7ddrphy_dfi_p0_wrdata[26]),
	.D3(netsoc_a7ddrphy_dfi_p1_wrdata[10]),
	.D4(netsoc_a7ddrphy_dfi_p1_wrdata[26]),
	.D5(netsoc_a7ddrphy_dfi_p2_wrdata[10]),
	.D6(netsoc_a7ddrphy_dfi_p2_wrdata[26]),
	.D7(netsoc_a7ddrphy_dfi_p3_wrdata[10]),
	.D8(netsoc_a7ddrphy_dfi_p3_wrdata[26]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~netsoc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(netsoc_a7ddrphy_dq_o_nodelay10),
	.TQ(netsoc_a7ddrphy_dq_t10)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_10 (
	.BITSLIP((netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(netsoc_a7ddrphy_dq_i_delayed10),
	.RST((sys_rst | (netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_bitslip_rst_re))),
	.Q1(netsoc_a7ddrphy_dq_i_data10[0]),
	.Q2(netsoc_a7ddrphy_dq_i_data10[1]),
	.Q3(netsoc_a7ddrphy_dq_i_data10[2]),
	.Q4(netsoc_a7ddrphy_dq_i_data10[3]),
	.Q5(netsoc_a7ddrphy_dq_i_data10[4]),
	.Q6(netsoc_a7ddrphy_dq_i_data10[5]),
	.Q7(netsoc_a7ddrphy_dq_i_data10[6]),
	.Q8(netsoc_a7ddrphy_dq_i_data10[7])
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
	.CE((netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(netsoc_a7ddrphy_dq_i_nodelay10),
	.INC(1'd1),
	.LD((netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(netsoc_a7ddrphy_dq_i_delayed10)
);

IOBUF IOBUF_10(
	.I(netsoc_a7ddrphy_dq_o_nodelay10),
	.T(netsoc_a7ddrphy_dq_t10),
	.IO(ddram_dq[10]),
	.O(netsoc_a7ddrphy_dq_i_nodelay10)
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
	.D1(netsoc_a7ddrphy_dfi_p0_wrdata[11]),
	.D2(netsoc_a7ddrphy_dfi_p0_wrdata[27]),
	.D3(netsoc_a7ddrphy_dfi_p1_wrdata[11]),
	.D4(netsoc_a7ddrphy_dfi_p1_wrdata[27]),
	.D5(netsoc_a7ddrphy_dfi_p2_wrdata[11]),
	.D6(netsoc_a7ddrphy_dfi_p2_wrdata[27]),
	.D7(netsoc_a7ddrphy_dfi_p3_wrdata[11]),
	.D8(netsoc_a7ddrphy_dfi_p3_wrdata[27]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~netsoc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(netsoc_a7ddrphy_dq_o_nodelay11),
	.TQ(netsoc_a7ddrphy_dq_t11)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_11 (
	.BITSLIP((netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(netsoc_a7ddrphy_dq_i_delayed11),
	.RST((sys_rst | (netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_bitslip_rst_re))),
	.Q1(netsoc_a7ddrphy_dq_i_data11[0]),
	.Q2(netsoc_a7ddrphy_dq_i_data11[1]),
	.Q3(netsoc_a7ddrphy_dq_i_data11[2]),
	.Q4(netsoc_a7ddrphy_dq_i_data11[3]),
	.Q5(netsoc_a7ddrphy_dq_i_data11[4]),
	.Q6(netsoc_a7ddrphy_dq_i_data11[5]),
	.Q7(netsoc_a7ddrphy_dq_i_data11[6]),
	.Q8(netsoc_a7ddrphy_dq_i_data11[7])
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
	.CE((netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(netsoc_a7ddrphy_dq_i_nodelay11),
	.INC(1'd1),
	.LD((netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(netsoc_a7ddrphy_dq_i_delayed11)
);

IOBUF IOBUF_11(
	.I(netsoc_a7ddrphy_dq_o_nodelay11),
	.T(netsoc_a7ddrphy_dq_t11),
	.IO(ddram_dq[11]),
	.O(netsoc_a7ddrphy_dq_i_nodelay11)
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
	.D1(netsoc_a7ddrphy_dfi_p0_wrdata[12]),
	.D2(netsoc_a7ddrphy_dfi_p0_wrdata[28]),
	.D3(netsoc_a7ddrphy_dfi_p1_wrdata[12]),
	.D4(netsoc_a7ddrphy_dfi_p1_wrdata[28]),
	.D5(netsoc_a7ddrphy_dfi_p2_wrdata[12]),
	.D6(netsoc_a7ddrphy_dfi_p2_wrdata[28]),
	.D7(netsoc_a7ddrphy_dfi_p3_wrdata[12]),
	.D8(netsoc_a7ddrphy_dfi_p3_wrdata[28]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~netsoc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(netsoc_a7ddrphy_dq_o_nodelay12),
	.TQ(netsoc_a7ddrphy_dq_t12)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_12 (
	.BITSLIP((netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(netsoc_a7ddrphy_dq_i_delayed12),
	.RST((sys_rst | (netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_bitslip_rst_re))),
	.Q1(netsoc_a7ddrphy_dq_i_data12[0]),
	.Q2(netsoc_a7ddrphy_dq_i_data12[1]),
	.Q3(netsoc_a7ddrphy_dq_i_data12[2]),
	.Q4(netsoc_a7ddrphy_dq_i_data12[3]),
	.Q5(netsoc_a7ddrphy_dq_i_data12[4]),
	.Q6(netsoc_a7ddrphy_dq_i_data12[5]),
	.Q7(netsoc_a7ddrphy_dq_i_data12[6]),
	.Q8(netsoc_a7ddrphy_dq_i_data12[7])
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
	.CE((netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(netsoc_a7ddrphy_dq_i_nodelay12),
	.INC(1'd1),
	.LD((netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(netsoc_a7ddrphy_dq_i_delayed12)
);

IOBUF IOBUF_12(
	.I(netsoc_a7ddrphy_dq_o_nodelay12),
	.T(netsoc_a7ddrphy_dq_t12),
	.IO(ddram_dq[12]),
	.O(netsoc_a7ddrphy_dq_i_nodelay12)
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
	.D1(netsoc_a7ddrphy_dfi_p0_wrdata[13]),
	.D2(netsoc_a7ddrphy_dfi_p0_wrdata[29]),
	.D3(netsoc_a7ddrphy_dfi_p1_wrdata[13]),
	.D4(netsoc_a7ddrphy_dfi_p1_wrdata[29]),
	.D5(netsoc_a7ddrphy_dfi_p2_wrdata[13]),
	.D6(netsoc_a7ddrphy_dfi_p2_wrdata[29]),
	.D7(netsoc_a7ddrphy_dfi_p3_wrdata[13]),
	.D8(netsoc_a7ddrphy_dfi_p3_wrdata[29]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~netsoc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(netsoc_a7ddrphy_dq_o_nodelay13),
	.TQ(netsoc_a7ddrphy_dq_t13)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_13 (
	.BITSLIP((netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(netsoc_a7ddrphy_dq_i_delayed13),
	.RST((sys_rst | (netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_bitslip_rst_re))),
	.Q1(netsoc_a7ddrphy_dq_i_data13[0]),
	.Q2(netsoc_a7ddrphy_dq_i_data13[1]),
	.Q3(netsoc_a7ddrphy_dq_i_data13[2]),
	.Q4(netsoc_a7ddrphy_dq_i_data13[3]),
	.Q5(netsoc_a7ddrphy_dq_i_data13[4]),
	.Q6(netsoc_a7ddrphy_dq_i_data13[5]),
	.Q7(netsoc_a7ddrphy_dq_i_data13[6]),
	.Q8(netsoc_a7ddrphy_dq_i_data13[7])
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
	.CE((netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(netsoc_a7ddrphy_dq_i_nodelay13),
	.INC(1'd1),
	.LD((netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(netsoc_a7ddrphy_dq_i_delayed13)
);

IOBUF IOBUF_13(
	.I(netsoc_a7ddrphy_dq_o_nodelay13),
	.T(netsoc_a7ddrphy_dq_t13),
	.IO(ddram_dq[13]),
	.O(netsoc_a7ddrphy_dq_i_nodelay13)
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
	.D1(netsoc_a7ddrphy_dfi_p0_wrdata[14]),
	.D2(netsoc_a7ddrphy_dfi_p0_wrdata[30]),
	.D3(netsoc_a7ddrphy_dfi_p1_wrdata[14]),
	.D4(netsoc_a7ddrphy_dfi_p1_wrdata[30]),
	.D5(netsoc_a7ddrphy_dfi_p2_wrdata[14]),
	.D6(netsoc_a7ddrphy_dfi_p2_wrdata[30]),
	.D7(netsoc_a7ddrphy_dfi_p3_wrdata[14]),
	.D8(netsoc_a7ddrphy_dfi_p3_wrdata[30]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~netsoc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(netsoc_a7ddrphy_dq_o_nodelay14),
	.TQ(netsoc_a7ddrphy_dq_t14)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_14 (
	.BITSLIP((netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(netsoc_a7ddrphy_dq_i_delayed14),
	.RST((sys_rst | (netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_bitslip_rst_re))),
	.Q1(netsoc_a7ddrphy_dq_i_data14[0]),
	.Q2(netsoc_a7ddrphy_dq_i_data14[1]),
	.Q3(netsoc_a7ddrphy_dq_i_data14[2]),
	.Q4(netsoc_a7ddrphy_dq_i_data14[3]),
	.Q5(netsoc_a7ddrphy_dq_i_data14[4]),
	.Q6(netsoc_a7ddrphy_dq_i_data14[5]),
	.Q7(netsoc_a7ddrphy_dq_i_data14[6]),
	.Q8(netsoc_a7ddrphy_dq_i_data14[7])
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
	.CE((netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(netsoc_a7ddrphy_dq_i_nodelay14),
	.INC(1'd1),
	.LD((netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(netsoc_a7ddrphy_dq_i_delayed14)
);

IOBUF IOBUF_14(
	.I(netsoc_a7ddrphy_dq_o_nodelay14),
	.T(netsoc_a7ddrphy_dq_t14),
	.IO(ddram_dq[14]),
	.O(netsoc_a7ddrphy_dq_i_nodelay14)
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
	.D1(netsoc_a7ddrphy_dfi_p0_wrdata[15]),
	.D2(netsoc_a7ddrphy_dfi_p0_wrdata[31]),
	.D3(netsoc_a7ddrphy_dfi_p1_wrdata[15]),
	.D4(netsoc_a7ddrphy_dfi_p1_wrdata[31]),
	.D5(netsoc_a7ddrphy_dfi_p2_wrdata[15]),
	.D6(netsoc_a7ddrphy_dfi_p2_wrdata[31]),
	.D7(netsoc_a7ddrphy_dfi_p3_wrdata[15]),
	.D8(netsoc_a7ddrphy_dfi_p3_wrdata[31]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~netsoc_a7ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(netsoc_a7ddrphy_dq_o_nodelay15),
	.TQ(netsoc_a7ddrphy_dq_t15)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_15 (
	.BITSLIP((netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(netsoc_a7ddrphy_dq_i_delayed15),
	.RST((sys_rst | (netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_bitslip_rst_re))),
	.Q1(netsoc_a7ddrphy_dq_i_data15[0]),
	.Q2(netsoc_a7ddrphy_dq_i_data15[1]),
	.Q3(netsoc_a7ddrphy_dq_i_data15[2]),
	.Q4(netsoc_a7ddrphy_dq_i_data15[3]),
	.Q5(netsoc_a7ddrphy_dq_i_data15[4]),
	.Q6(netsoc_a7ddrphy_dq_i_data15[5]),
	.Q7(netsoc_a7ddrphy_dq_i_data15[6]),
	.Q8(netsoc_a7ddrphy_dq_i_data15[7])
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
	.CE((netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_inc_re)),
	.IDATAIN(netsoc_a7ddrphy_dq_i_nodelay15),
	.INC(1'd1),
	.LD((netsoc_a7ddrphy_dly_sel_storage[1] & netsoc_a7ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(netsoc_a7ddrphy_dq_i_delayed15)
);

IOBUF IOBUF_15(
	.I(netsoc_a7ddrphy_dq_o_nodelay15),
	.T(netsoc_a7ddrphy_dq_t15),
	.IO(ddram_dq[15]),
	.O(netsoc_a7ddrphy_dq_i_nodelay15)
);

reg [23:0] storage_2[0:7];
reg [23:0] memdat_2;
always @(posedge sys_clk) begin
	if (netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_we)
		storage_2[netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr] <= netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_w;
	memdat_2 <= storage_2[netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_r = memdat_2;
assign netsoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_dat_r = storage_2[netsoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_3[0:7];
reg [23:0] memdat_3;
always @(posedge sys_clk) begin
	if (netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_we)
		storage_3[netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr] <= netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_w;
	memdat_3 <= storage_3[netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_r = memdat_3;
assign netsoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_dat_r = storage_3[netsoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_4[0:7];
reg [23:0] memdat_4;
always @(posedge sys_clk) begin
	if (netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_we)
		storage_4[netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr] <= netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_w;
	memdat_4 <= storage_4[netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_r = memdat_4;
assign netsoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_dat_r = storage_4[netsoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_5[0:7];
reg [23:0] memdat_5;
always @(posedge sys_clk) begin
	if (netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_we)
		storage_5[netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr] <= netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_w;
	memdat_5 <= storage_5[netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_r = memdat_5;
assign netsoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_dat_r = storage_5[netsoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_6[0:7];
reg [23:0] memdat_6;
always @(posedge sys_clk) begin
	if (netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_we)
		storage_6[netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr] <= netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_dat_w;
	memdat_6 <= storage_6[netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_dat_r = memdat_6;
assign netsoc_sdram_bankmachine4_cmd_buffer_lookahead_rdport_dat_r = storage_6[netsoc_sdram_bankmachine4_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_7[0:7];
reg [23:0] memdat_7;
always @(posedge sys_clk) begin
	if (netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_we)
		storage_7[netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr] <= netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_dat_w;
	memdat_7 <= storage_7[netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_dat_r = memdat_7;
assign netsoc_sdram_bankmachine5_cmd_buffer_lookahead_rdport_dat_r = storage_7[netsoc_sdram_bankmachine5_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_8[0:7];
reg [23:0] memdat_8;
always @(posedge sys_clk) begin
	if (netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_we)
		storage_8[netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr] <= netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_dat_w;
	memdat_8 <= storage_8[netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_dat_r = memdat_8;
assign netsoc_sdram_bankmachine6_cmd_buffer_lookahead_rdport_dat_r = storage_8[netsoc_sdram_bankmachine6_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_9[0:7];
reg [23:0] memdat_9;
always @(posedge sys_clk) begin
	if (netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_we)
		storage_9[netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr] <= netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_dat_w;
	memdat_9 <= storage_9[netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_dat_r = memdat_9;
assign netsoc_sdram_bankmachine7_cmd_buffer_lookahead_rdport_dat_r = storage_9[netsoc_sdram_bankmachine7_cmd_buffer_lookahead_rdport_adr];

reg [127:0] data_mem[0:511];
reg [8:0] memadr_3;
always @(posedge sys_clk) begin
	if (netsoc_data_port_we[0])
		data_mem[netsoc_data_port_adr][7:0] <= netsoc_data_port_dat_w[7:0];
	if (netsoc_data_port_we[1])
		data_mem[netsoc_data_port_adr][15:8] <= netsoc_data_port_dat_w[15:8];
	if (netsoc_data_port_we[2])
		data_mem[netsoc_data_port_adr][23:16] <= netsoc_data_port_dat_w[23:16];
	if (netsoc_data_port_we[3])
		data_mem[netsoc_data_port_adr][31:24] <= netsoc_data_port_dat_w[31:24];
	if (netsoc_data_port_we[4])
		data_mem[netsoc_data_port_adr][39:32] <= netsoc_data_port_dat_w[39:32];
	if (netsoc_data_port_we[5])
		data_mem[netsoc_data_port_adr][47:40] <= netsoc_data_port_dat_w[47:40];
	if (netsoc_data_port_we[6])
		data_mem[netsoc_data_port_adr][55:48] <= netsoc_data_port_dat_w[55:48];
	if (netsoc_data_port_we[7])
		data_mem[netsoc_data_port_adr][63:56] <= netsoc_data_port_dat_w[63:56];
	if (netsoc_data_port_we[8])
		data_mem[netsoc_data_port_adr][71:64] <= netsoc_data_port_dat_w[71:64];
	if (netsoc_data_port_we[9])
		data_mem[netsoc_data_port_adr][79:72] <= netsoc_data_port_dat_w[79:72];
	if (netsoc_data_port_we[10])
		data_mem[netsoc_data_port_adr][87:80] <= netsoc_data_port_dat_w[87:80];
	if (netsoc_data_port_we[11])
		data_mem[netsoc_data_port_adr][95:88] <= netsoc_data_port_dat_w[95:88];
	if (netsoc_data_port_we[12])
		data_mem[netsoc_data_port_adr][103:96] <= netsoc_data_port_dat_w[103:96];
	if (netsoc_data_port_we[13])
		data_mem[netsoc_data_port_adr][111:104] <= netsoc_data_port_dat_w[111:104];
	if (netsoc_data_port_we[14])
		data_mem[netsoc_data_port_adr][119:112] <= netsoc_data_port_dat_w[119:112];
	if (netsoc_data_port_we[15])
		data_mem[netsoc_data_port_adr][127:120] <= netsoc_data_port_dat_w[127:120];
	memadr_3 <= netsoc_data_port_adr;
end

assign netsoc_data_port_dat_r = data_mem[memadr_3];

reg [23:0] tag_mem[0:511];
reg [8:0] memadr_4;
always @(posedge sys_clk) begin
	if (netsoc_tag_port_we)
		tag_mem[netsoc_tag_port_adr] <= netsoc_tag_port_dat_w;
	memadr_4 <= netsoc_tag_port_adr;
end

assign netsoc_tag_port_dat_r = tag_mem[memadr_4];

assign eth_mdio = ethphy_data_oe ? ethphy_data_w : 1'bz;
assign ethphy_data_r = eth_mdio;

reg [11:0] storage_10[0:4];
reg [11:0] memdat_10;
always @(posedge eth_rx_clk) begin
	if (ethmac_crc32_checker_syncfifo_wrport_we)
		storage_10[ethmac_crc32_checker_syncfifo_wrport_adr] <= ethmac_crc32_checker_syncfifo_wrport_dat_w;
	memdat_10 <= storage_10[ethmac_crc32_checker_syncfifo_wrport_adr];
end

always @(posedge eth_rx_clk) begin
end

assign ethmac_crc32_checker_syncfifo_wrport_dat_r = memdat_10;
assign ethmac_crc32_checker_syncfifo_rdport_dat_r = storage_10[ethmac_crc32_checker_syncfifo_rdport_adr];

reg [41:0] storage_11[0:63];
reg [5:0] memadr_5;
reg [5:0] memadr_6;
always @(posedge sys_clk) begin
	if (ethmac_tx_cdc_wrport_we)
		storage_11[ethmac_tx_cdc_wrport_adr] <= ethmac_tx_cdc_wrport_dat_w;
	memadr_5 <= ethmac_tx_cdc_wrport_adr;
end

always @(posedge eth_tx_clk) begin
	memadr_6 <= ethmac_tx_cdc_rdport_adr;
end

assign ethmac_tx_cdc_wrport_dat_r = storage_11[memadr_5];
assign ethmac_tx_cdc_rdport_dat_r = storage_11[memadr_6];

reg [41:0] storage_12[0:63];
reg [5:0] memadr_7;
reg [5:0] memadr_8;
always @(posedge eth_rx_clk) begin
	if (ethmac_rx_cdc_wrport_we)
		storage_12[ethmac_rx_cdc_wrport_adr] <= ethmac_rx_cdc_wrport_dat_w;
	memadr_7 <= ethmac_rx_cdc_wrport_adr;
end

always @(posedge sys_clk) begin
	memadr_8 <= ethmac_rx_cdc_rdport_adr;
end

assign ethmac_rx_cdc_wrport_dat_r = storage_12[memadr_7];
assign ethmac_rx_cdc_rdport_dat_r = storage_12[memadr_8];

reg [34:0] storage_13[0:1];
reg [34:0] memdat_11;
always @(posedge sys_clk) begin
	if (ethmac_writer_fifo_wrport_we)
		storage_13[ethmac_writer_fifo_wrport_adr] <= ethmac_writer_fifo_wrport_dat_w;
	memdat_11 <= storage_13[ethmac_writer_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign ethmac_writer_fifo_wrport_dat_r = memdat_11;
assign ethmac_writer_fifo_rdport_dat_r = storage_13[ethmac_writer_fifo_rdport_adr];

reg [31:0] mem_3[0:381];
reg [8:0] memadr_9;
reg [8:0] memadr_10;
always @(posedge sys_clk) begin
	if (ethmac_writer_memory0_we)
		mem_3[ethmac_writer_memory0_adr] <= ethmac_writer_memory0_dat_w;
	memadr_9 <= ethmac_writer_memory0_adr;
end

always @(posedge sys_clk) begin
	memadr_10 <= ethmac_sram0_adr0;
end

assign ethmac_writer_memory0_dat_r = mem_3[memadr_9];
assign ethmac_sram0_dat_r0 = mem_3[memadr_10];

reg [31:0] mem_4[0:381];
reg [8:0] memadr_11;
reg [8:0] memadr_12;
always @(posedge sys_clk) begin
	if (ethmac_writer_memory1_we)
		mem_4[ethmac_writer_memory1_adr] <= ethmac_writer_memory1_dat_w;
	memadr_11 <= ethmac_writer_memory1_adr;
end

always @(posedge sys_clk) begin
	memadr_12 <= ethmac_sram1_adr0;
end

assign ethmac_writer_memory1_dat_r = mem_4[memadr_11];
assign ethmac_sram1_dat_r0 = mem_4[memadr_12];

reg [13:0] storage_14[0:1];
reg [13:0] memdat_12;
always @(posedge sys_clk) begin
	if (ethmac_reader_fifo_wrport_we)
		storage_14[ethmac_reader_fifo_wrport_adr] <= ethmac_reader_fifo_wrport_dat_w;
	memdat_12 <= storage_14[ethmac_reader_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign ethmac_reader_fifo_wrport_dat_r = memdat_12;
assign ethmac_reader_fifo_rdport_dat_r = storage_14[ethmac_reader_fifo_rdport_adr];

reg [7:0] mem_grain0[0:381];
reg [8:0] memadr_13;
reg [8:0] memadr_14;
always @(posedge sys_clk) begin
	memadr_13 <= ethmac_reader_memory0_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram0_we[0])
		mem_grain0[ethmac_sram0_adr1] <= ethmac_sram0_dat_w[7:0];
	memadr_14 <= ethmac_sram0_adr1;
end

assign ethmac_reader_memory0_dat_r[7:0] = mem_grain0[memadr_13];
assign ethmac_sram0_dat_r1[7:0] = mem_grain0[memadr_14];

reg [7:0] mem_grain1[0:381];
reg [8:0] memadr_15;
reg [8:0] memadr_16;
always @(posedge sys_clk) begin
	memadr_15 <= ethmac_reader_memory0_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram0_we[1])
		mem_grain1[ethmac_sram0_adr1] <= ethmac_sram0_dat_w[15:8];
	memadr_16 <= ethmac_sram0_adr1;
end

assign ethmac_reader_memory0_dat_r[15:8] = mem_grain1[memadr_15];
assign ethmac_sram0_dat_r1[15:8] = mem_grain1[memadr_16];

reg [7:0] mem_grain2[0:381];
reg [8:0] memadr_17;
reg [8:0] memadr_18;
always @(posedge sys_clk) begin
	memadr_17 <= ethmac_reader_memory0_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram0_we[2])
		mem_grain2[ethmac_sram0_adr1] <= ethmac_sram0_dat_w[23:16];
	memadr_18 <= ethmac_sram0_adr1;
end

assign ethmac_reader_memory0_dat_r[23:16] = mem_grain2[memadr_17];
assign ethmac_sram0_dat_r1[23:16] = mem_grain2[memadr_18];

reg [7:0] mem_grain3[0:381];
reg [8:0] memadr_19;
reg [8:0] memadr_20;
always @(posedge sys_clk) begin
	memadr_19 <= ethmac_reader_memory0_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram0_we[3])
		mem_grain3[ethmac_sram0_adr1] <= ethmac_sram0_dat_w[31:24];
	memadr_20 <= ethmac_sram0_adr1;
end

assign ethmac_reader_memory0_dat_r[31:24] = mem_grain3[memadr_19];
assign ethmac_sram0_dat_r1[31:24] = mem_grain3[memadr_20];

reg [7:0] mem_grain0_1[0:381];
reg [8:0] memadr_21;
reg [8:0] memadr_22;
always @(posedge sys_clk) begin
	memadr_21 <= ethmac_reader_memory1_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram1_we[0])
		mem_grain0_1[ethmac_sram1_adr1] <= ethmac_sram1_dat_w[7:0];
	memadr_22 <= ethmac_sram1_adr1;
end

assign ethmac_reader_memory1_dat_r[7:0] = mem_grain0_1[memadr_21];
assign ethmac_sram1_dat_r1[7:0] = mem_grain0_1[memadr_22];

reg [7:0] mem_grain1_1[0:381];
reg [8:0] memadr_23;
reg [8:0] memadr_24;
always @(posedge sys_clk) begin
	memadr_23 <= ethmac_reader_memory1_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram1_we[1])
		mem_grain1_1[ethmac_sram1_adr1] <= ethmac_sram1_dat_w[15:8];
	memadr_24 <= ethmac_sram1_adr1;
end

assign ethmac_reader_memory1_dat_r[15:8] = mem_grain1_1[memadr_23];
assign ethmac_sram1_dat_r1[15:8] = mem_grain1_1[memadr_24];

reg [7:0] mem_grain2_1[0:381];
reg [8:0] memadr_25;
reg [8:0] memadr_26;
always @(posedge sys_clk) begin
	memadr_25 <= ethmac_reader_memory1_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram1_we[2])
		mem_grain2_1[ethmac_sram1_adr1] <= ethmac_sram1_dat_w[23:16];
	memadr_26 <= ethmac_sram1_adr1;
end

assign ethmac_reader_memory1_dat_r[23:16] = mem_grain2_1[memadr_25];
assign ethmac_sram1_dat_r1[23:16] = mem_grain2_1[memadr_26];

reg [7:0] mem_grain3_1[0:381];
reg [8:0] memadr_27;
reg [8:0] memadr_28;
always @(posedge sys_clk) begin
	memadr_27 <= ethmac_reader_memory1_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram1_we[3])
		mem_grain3_1[ethmac_sram1_adr1] <= ethmac_sram1_dat_w[31:24];
	memadr_28 <= ethmac_sram1_adr1;
end

assign ethmac_reader_memory1_dat_r[31:24] = mem_grain3_1[memadr_27];
assign ethmac_sram1_dat_r1[31:24] = mem_grain3_1[memadr_28];

(* ars_ff1 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE (
	.C(sys_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(xilinxasyncresetsynchronizerimpl0),
	.Q(xilinxasyncresetsynchronizerimpl0_rst_meta)
);

(* ars_ff2 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_1 (
	.C(sys_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl0_rst_meta),
	.PRE(xilinxasyncresetsynchronizerimpl0),
	.Q(sys_rst)
);

(* ars_ff1 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_2 (
	.C(clk200_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(xilinxasyncresetsynchronizerimpl1),
	.Q(xilinxasyncresetsynchronizerimpl1_rst_meta)
);

(* ars_ff2 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_3 (
	.C(clk200_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl1_rst_meta),
	.PRE(xilinxasyncresetsynchronizerimpl1),
	.Q(clk200_rst)
);

(* ars_ff1 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_4 (
	.C(clk100_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(xilinxasyncresetsynchronizerimpl2),
	.Q(xilinxasyncresetsynchronizerimpl2_rst_meta)
);

(* ars_ff2 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_5 (
	.C(clk100_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl2_rst_meta),
	.PRE(xilinxasyncresetsynchronizerimpl2),
	.Q(clk100_rst)
);

(* ars_ff1 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_6 (
	.C(clk50_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(xilinxasyncresetsynchronizerimpl3),
	.Q(xilinxasyncresetsynchronizerimpl3_rst_meta)
);

(* ars_ff2 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_7 (
	.C(clk50_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl3_rst_meta),
	.PRE(xilinxasyncresetsynchronizerimpl3),
	.Q(clk50_rst)
);

(* ars_ff1 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_8 (
	.C(eth_tx_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(ethphy_reset0),
	.Q(xilinxasyncresetsynchronizerimpl4_rst_meta)
);

(* ars_ff2 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_9 (
	.C(eth_tx_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl4_rst_meta),
	.PRE(ethphy_reset0),
	.Q(eth_tx_rst)
);

(* ars_ff1 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_10 (
	.C(eth_rx_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(ethphy_reset0),
	.Q(xilinxasyncresetsynchronizerimpl5_rst_meta)
);

(* ars_ff2 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_11 (
	.C(eth_rx_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl5_rst_meta),
	.PRE(ethphy_reset0),
	.Q(eth_rx_rst)
);

endmodule
