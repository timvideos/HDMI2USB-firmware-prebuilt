/* Machine-generated using LiteX gen */
module top(
	output reg serial_tx,
	input serial_rx,
	(* dont_touch = "true" *)	input clk50,
	output [13:0] ddram_a,
	output [2:0] ddram_ba,
	output ddram_ras_n,
	output ddram_cas_n,
	output ddram_we_n,
	output [3:0] ddram_dm,
	inout [31:0] ddram_dq,
	output [3:0] ddram_dqs_p,
	output [3:0] ddram_dqs_n,
	output ddram_clk_p,
	output ddram_clk_n,
	output ddram_cke,
	output ddram_odt,
	output ddram_reset_n,
	output ddram_cs_n,
	output user_led0,
	output hdmi_out_clk_p,
	output hdmi_out_clk_n,
	output hdmi_out_data0_p,
	output hdmi_out_data0_n,
	output hdmi_out_data1_p,
	output hdmi_out_data1_n,
	output hdmi_out_data2_p,
	output hdmi_out_data2_n
);

wire [29:0] videooutsoc_videooutsoc_ibus_adr;
wire [31:0] videooutsoc_videooutsoc_ibus_dat_w;
wire [31:0] videooutsoc_videooutsoc_ibus_dat_r;
wire [3:0] videooutsoc_videooutsoc_ibus_sel;
wire videooutsoc_videooutsoc_ibus_cyc;
wire videooutsoc_videooutsoc_ibus_stb;
wire videooutsoc_videooutsoc_ibus_ack;
wire videooutsoc_videooutsoc_ibus_we;
wire [2:0] videooutsoc_videooutsoc_ibus_cti;
wire [1:0] videooutsoc_videooutsoc_ibus_bte;
wire videooutsoc_videooutsoc_ibus_err;
wire [29:0] videooutsoc_videooutsoc_dbus_adr;
wire [31:0] videooutsoc_videooutsoc_dbus_dat_w;
wire [31:0] videooutsoc_videooutsoc_dbus_dat_r;
wire [3:0] videooutsoc_videooutsoc_dbus_sel;
wire videooutsoc_videooutsoc_dbus_cyc;
wire videooutsoc_videooutsoc_dbus_stb;
wire videooutsoc_videooutsoc_dbus_ack;
wire videooutsoc_videooutsoc_dbus_we;
wire [2:0] videooutsoc_videooutsoc_dbus_cti;
wire [1:0] videooutsoc_videooutsoc_dbus_bte;
wire videooutsoc_videooutsoc_dbus_err;
reg [31:0] videooutsoc_videooutsoc_interrupt = 32'd0;
wire [31:0] videooutsoc_videooutsoc_i_adr_o;
wire [31:0] videooutsoc_videooutsoc_d_adr_o;
wire [29:0] videooutsoc_videooutsoc_rom_bus_adr;
wire [31:0] videooutsoc_videooutsoc_rom_bus_dat_w;
wire [31:0] videooutsoc_videooutsoc_rom_bus_dat_r;
wire [3:0] videooutsoc_videooutsoc_rom_bus_sel;
wire videooutsoc_videooutsoc_rom_bus_cyc;
wire videooutsoc_videooutsoc_rom_bus_stb;
reg videooutsoc_videooutsoc_rom_bus_ack = 1'd0;
wire videooutsoc_videooutsoc_rom_bus_we;
wire [2:0] videooutsoc_videooutsoc_rom_bus_cti;
wire [1:0] videooutsoc_videooutsoc_rom_bus_bte;
reg videooutsoc_videooutsoc_rom_bus_err = 1'd0;
wire [12:0] videooutsoc_videooutsoc_rom_adr;
wire [31:0] videooutsoc_videooutsoc_rom_dat_r;
wire [29:0] videooutsoc_videooutsoc_sram_bus_adr;
wire [31:0] videooutsoc_videooutsoc_sram_bus_dat_w;
wire [31:0] videooutsoc_videooutsoc_sram_bus_dat_r;
wire [3:0] videooutsoc_videooutsoc_sram_bus_sel;
wire videooutsoc_videooutsoc_sram_bus_cyc;
wire videooutsoc_videooutsoc_sram_bus_stb;
reg videooutsoc_videooutsoc_sram_bus_ack = 1'd0;
wire videooutsoc_videooutsoc_sram_bus_we;
wire [2:0] videooutsoc_videooutsoc_sram_bus_cti;
wire [1:0] videooutsoc_videooutsoc_sram_bus_bte;
reg videooutsoc_videooutsoc_sram_bus_err = 1'd0;
wire [12:0] videooutsoc_videooutsoc_sram_adr;
wire [31:0] videooutsoc_videooutsoc_sram_dat_r;
reg [3:0] videooutsoc_videooutsoc_sram_we = 4'd0;
wire [31:0] videooutsoc_videooutsoc_sram_dat_w;
reg [13:0] videooutsoc_videooutsoc_interface_adr = 14'd0;
reg videooutsoc_videooutsoc_interface_we = 1'd0;
reg [7:0] videooutsoc_videooutsoc_interface_dat_w = 8'd0;
wire [7:0] videooutsoc_videooutsoc_interface_dat_r;
wire [29:0] videooutsoc_videooutsoc_bus_wishbone_adr;
wire [31:0] videooutsoc_videooutsoc_bus_wishbone_dat_w;
reg [31:0] videooutsoc_videooutsoc_bus_wishbone_dat_r = 32'd0;
wire [3:0] videooutsoc_videooutsoc_bus_wishbone_sel;
wire videooutsoc_videooutsoc_bus_wishbone_cyc;
wire videooutsoc_videooutsoc_bus_wishbone_stb;
reg videooutsoc_videooutsoc_bus_wishbone_ack = 1'd0;
wire videooutsoc_videooutsoc_bus_wishbone_we;
wire [2:0] videooutsoc_videooutsoc_bus_wishbone_cti;
wire [1:0] videooutsoc_videooutsoc_bus_wishbone_bte;
reg videooutsoc_videooutsoc_bus_wishbone_err = 1'd0;
reg [1:0] videooutsoc_videooutsoc_counter = 2'd0;
reg [31:0] videooutsoc_videooutsoc_uart_phy_storage_full = 32'd4947802;
wire [31:0] videooutsoc_videooutsoc_uart_phy_storage;
reg videooutsoc_videooutsoc_uart_phy_re = 1'd0;
wire videooutsoc_videooutsoc_uart_phy_sink_valid;
reg videooutsoc_videooutsoc_uart_phy_sink_ready = 1'd0;
wire videooutsoc_videooutsoc_uart_phy_sink_first;
wire videooutsoc_videooutsoc_uart_phy_sink_last;
wire [7:0] videooutsoc_videooutsoc_uart_phy_sink_payload_data;
reg videooutsoc_videooutsoc_uart_phy_uart_clk_txen = 1'd0;
reg [31:0] videooutsoc_videooutsoc_uart_phy_phase_accumulator_tx = 32'd0;
reg [7:0] videooutsoc_videooutsoc_uart_phy_tx_reg = 8'd0;
reg [3:0] videooutsoc_videooutsoc_uart_phy_tx_bitcount = 4'd0;
reg videooutsoc_videooutsoc_uart_phy_tx_busy = 1'd0;
reg videooutsoc_videooutsoc_uart_phy_source_valid = 1'd0;
wire videooutsoc_videooutsoc_uart_phy_source_ready;
reg videooutsoc_videooutsoc_uart_phy_source_first = 1'd0;
reg videooutsoc_videooutsoc_uart_phy_source_last = 1'd0;
reg [7:0] videooutsoc_videooutsoc_uart_phy_source_payload_data = 8'd0;
reg videooutsoc_videooutsoc_uart_phy_uart_clk_rxen = 1'd0;
reg [31:0] videooutsoc_videooutsoc_uart_phy_phase_accumulator_rx = 32'd0;
wire videooutsoc_videooutsoc_uart_phy_rx;
reg videooutsoc_videooutsoc_uart_phy_rx_r = 1'd0;
reg [7:0] videooutsoc_videooutsoc_uart_phy_rx_reg = 8'd0;
reg [3:0] videooutsoc_videooutsoc_uart_phy_rx_bitcount = 4'd0;
reg videooutsoc_videooutsoc_uart_phy_rx_busy = 1'd0;
wire videooutsoc_videooutsoc_uart_rxtx_re;
wire [7:0] videooutsoc_videooutsoc_uart_rxtx_r;
wire [7:0] videooutsoc_videooutsoc_uart_rxtx_w;
wire videooutsoc_videooutsoc_uart_txfull_status;
wire videooutsoc_videooutsoc_uart_rxempty_status;
wire videooutsoc_videooutsoc_uart_irq;
wire videooutsoc_videooutsoc_uart_tx_status;
reg videooutsoc_videooutsoc_uart_tx_pending = 1'd0;
wire videooutsoc_videooutsoc_uart_tx_trigger;
reg videooutsoc_videooutsoc_uart_tx_clear = 1'd0;
reg videooutsoc_videooutsoc_uart_tx_old_trigger = 1'd0;
wire videooutsoc_videooutsoc_uart_rx_status;
reg videooutsoc_videooutsoc_uart_rx_pending = 1'd0;
wire videooutsoc_videooutsoc_uart_rx_trigger;
reg videooutsoc_videooutsoc_uart_rx_clear = 1'd0;
reg videooutsoc_videooutsoc_uart_rx_old_trigger = 1'd0;
wire videooutsoc_videooutsoc_uart_status_re;
wire [1:0] videooutsoc_videooutsoc_uart_status_r;
reg [1:0] videooutsoc_videooutsoc_uart_status_w = 2'd0;
wire videooutsoc_videooutsoc_uart_pending_re;
wire [1:0] videooutsoc_videooutsoc_uart_pending_r;
reg [1:0] videooutsoc_videooutsoc_uart_pending_w = 2'd0;
reg [1:0] videooutsoc_videooutsoc_uart_storage_full = 2'd0;
wire [1:0] videooutsoc_videooutsoc_uart_storage;
reg videooutsoc_videooutsoc_uart_re = 1'd0;
wire videooutsoc_videooutsoc_uart_tx_fifo_sink_valid;
wire videooutsoc_videooutsoc_uart_tx_fifo_sink_ready;
reg videooutsoc_videooutsoc_uart_tx_fifo_sink_first = 1'd0;
reg videooutsoc_videooutsoc_uart_tx_fifo_sink_last = 1'd0;
wire [7:0] videooutsoc_videooutsoc_uart_tx_fifo_sink_payload_data;
wire videooutsoc_videooutsoc_uart_tx_fifo_source_valid;
wire videooutsoc_videooutsoc_uart_tx_fifo_source_ready;
wire videooutsoc_videooutsoc_uart_tx_fifo_source_first;
wire videooutsoc_videooutsoc_uart_tx_fifo_source_last;
wire [7:0] videooutsoc_videooutsoc_uart_tx_fifo_source_payload_data;
wire videooutsoc_videooutsoc_uart_tx_fifo_syncfifo_we;
wire videooutsoc_videooutsoc_uart_tx_fifo_syncfifo_writable;
wire videooutsoc_videooutsoc_uart_tx_fifo_syncfifo_re;
wire videooutsoc_videooutsoc_uart_tx_fifo_syncfifo_readable;
wire [9:0] videooutsoc_videooutsoc_uart_tx_fifo_syncfifo_din;
wire [9:0] videooutsoc_videooutsoc_uart_tx_fifo_syncfifo_dout;
reg [4:0] videooutsoc_videooutsoc_uart_tx_fifo_level = 5'd0;
reg videooutsoc_videooutsoc_uart_tx_fifo_replace = 1'd0;
reg [3:0] videooutsoc_videooutsoc_uart_tx_fifo_produce = 4'd0;
reg [3:0] videooutsoc_videooutsoc_uart_tx_fifo_consume = 4'd0;
reg [3:0] videooutsoc_videooutsoc_uart_tx_fifo_wrport_adr = 4'd0;
wire [9:0] videooutsoc_videooutsoc_uart_tx_fifo_wrport_dat_r;
wire videooutsoc_videooutsoc_uart_tx_fifo_wrport_we;
wire [9:0] videooutsoc_videooutsoc_uart_tx_fifo_wrport_dat_w;
wire videooutsoc_videooutsoc_uart_tx_fifo_do_read;
wire [3:0] videooutsoc_videooutsoc_uart_tx_fifo_rdport_adr;
wire [9:0] videooutsoc_videooutsoc_uart_tx_fifo_rdport_dat_r;
wire [7:0] videooutsoc_videooutsoc_uart_tx_fifo_fifo_in_payload_data;
wire videooutsoc_videooutsoc_uart_tx_fifo_fifo_in_first;
wire videooutsoc_videooutsoc_uart_tx_fifo_fifo_in_last;
wire [7:0] videooutsoc_videooutsoc_uart_tx_fifo_fifo_out_payload_data;
wire videooutsoc_videooutsoc_uart_tx_fifo_fifo_out_first;
wire videooutsoc_videooutsoc_uart_tx_fifo_fifo_out_last;
wire videooutsoc_videooutsoc_uart_rx_fifo_sink_valid;
wire videooutsoc_videooutsoc_uart_rx_fifo_sink_ready;
wire videooutsoc_videooutsoc_uart_rx_fifo_sink_first;
wire videooutsoc_videooutsoc_uart_rx_fifo_sink_last;
wire [7:0] videooutsoc_videooutsoc_uart_rx_fifo_sink_payload_data;
wire videooutsoc_videooutsoc_uart_rx_fifo_source_valid;
wire videooutsoc_videooutsoc_uart_rx_fifo_source_ready;
wire videooutsoc_videooutsoc_uart_rx_fifo_source_first;
wire videooutsoc_videooutsoc_uart_rx_fifo_source_last;
wire [7:0] videooutsoc_videooutsoc_uart_rx_fifo_source_payload_data;
wire videooutsoc_videooutsoc_uart_rx_fifo_syncfifo_we;
wire videooutsoc_videooutsoc_uart_rx_fifo_syncfifo_writable;
wire videooutsoc_videooutsoc_uart_rx_fifo_syncfifo_re;
wire videooutsoc_videooutsoc_uart_rx_fifo_syncfifo_readable;
wire [9:0] videooutsoc_videooutsoc_uart_rx_fifo_syncfifo_din;
wire [9:0] videooutsoc_videooutsoc_uart_rx_fifo_syncfifo_dout;
reg [4:0] videooutsoc_videooutsoc_uart_rx_fifo_level = 5'd0;
reg videooutsoc_videooutsoc_uart_rx_fifo_replace = 1'd0;
reg [3:0] videooutsoc_videooutsoc_uart_rx_fifo_produce = 4'd0;
reg [3:0] videooutsoc_videooutsoc_uart_rx_fifo_consume = 4'd0;
reg [3:0] videooutsoc_videooutsoc_uart_rx_fifo_wrport_adr = 4'd0;
wire [9:0] videooutsoc_videooutsoc_uart_rx_fifo_wrport_dat_r;
wire videooutsoc_videooutsoc_uart_rx_fifo_wrport_we;
wire [9:0] videooutsoc_videooutsoc_uart_rx_fifo_wrport_dat_w;
wire videooutsoc_videooutsoc_uart_rx_fifo_do_read;
wire [3:0] videooutsoc_videooutsoc_uart_rx_fifo_rdport_adr;
wire [9:0] videooutsoc_videooutsoc_uart_rx_fifo_rdport_dat_r;
wire [7:0] videooutsoc_videooutsoc_uart_rx_fifo_fifo_in_payload_data;
wire videooutsoc_videooutsoc_uart_rx_fifo_fifo_in_first;
wire videooutsoc_videooutsoc_uart_rx_fifo_fifo_in_last;
wire [7:0] videooutsoc_videooutsoc_uart_rx_fifo_fifo_out_payload_data;
wire videooutsoc_videooutsoc_uart_rx_fifo_fifo_out_first;
wire videooutsoc_videooutsoc_uart_rx_fifo_fifo_out_last;
reg [31:0] videooutsoc_videooutsoc_timer0_load_storage_full = 32'd0;
wire [31:0] videooutsoc_videooutsoc_timer0_load_storage;
reg videooutsoc_videooutsoc_timer0_load_re = 1'd0;
reg [31:0] videooutsoc_videooutsoc_timer0_reload_storage_full = 32'd0;
wire [31:0] videooutsoc_videooutsoc_timer0_reload_storage;
reg videooutsoc_videooutsoc_timer0_reload_re = 1'd0;
reg videooutsoc_videooutsoc_timer0_en_storage_full = 1'd0;
wire videooutsoc_videooutsoc_timer0_en_storage;
reg videooutsoc_videooutsoc_timer0_en_re = 1'd0;
wire videooutsoc_videooutsoc_timer0_update_value_re;
wire videooutsoc_videooutsoc_timer0_update_value_r;
reg videooutsoc_videooutsoc_timer0_update_value_w = 1'd0;
reg [31:0] videooutsoc_videooutsoc_timer0_value_status = 32'd0;
wire videooutsoc_videooutsoc_timer0_irq;
wire videooutsoc_videooutsoc_timer0_zero_status;
reg videooutsoc_videooutsoc_timer0_zero_pending = 1'd0;
wire videooutsoc_videooutsoc_timer0_zero_trigger;
reg videooutsoc_videooutsoc_timer0_zero_clear = 1'd0;
reg videooutsoc_videooutsoc_timer0_zero_old_trigger = 1'd0;
wire videooutsoc_videooutsoc_timer0_eventmanager_status_re;
wire videooutsoc_videooutsoc_timer0_eventmanager_status_r;
wire videooutsoc_videooutsoc_timer0_eventmanager_status_w;
wire videooutsoc_videooutsoc_timer0_eventmanager_pending_re;
wire videooutsoc_videooutsoc_timer0_eventmanager_pending_r;
wire videooutsoc_videooutsoc_timer0_eventmanager_pending_w;
reg videooutsoc_videooutsoc_timer0_eventmanager_storage_full = 1'd0;
wire videooutsoc_videooutsoc_timer0_eventmanager_storage;
reg videooutsoc_videooutsoc_timer0_eventmanager_re = 1'd0;
reg [31:0] videooutsoc_videooutsoc_timer0_value = 32'd0;
wire [29:0] videooutsoc_interface0_wb_sdram_adr;
wire [31:0] videooutsoc_interface0_wb_sdram_dat_w;
reg [31:0] videooutsoc_interface0_wb_sdram_dat_r = 32'd0;
wire [3:0] videooutsoc_interface0_wb_sdram_sel;
wire videooutsoc_interface0_wb_sdram_cyc;
wire videooutsoc_interface0_wb_sdram_stb;
reg videooutsoc_interface0_wb_sdram_ack = 1'd0;
wire videooutsoc_interface0_wb_sdram_we;
wire [2:0] videooutsoc_interface0_wb_sdram_cti;
wire [1:0] videooutsoc_interface0_wb_sdram_bte;
reg videooutsoc_interface0_wb_sdram_err = 1'd0;
(* dont_touch = "true" *) wire sys_clk;
wire sys_rst;
wire sys4x_clk;
wire sys4x_dqs_clk;
wire clk200_clk;
wire clk200_rst;
wire clk100_clk;
wire clk100_rst;
reg videooutsoc_crg_rst = 1'd0;
wire videooutsoc_crg_pll_locked;
wire videooutsoc_crg_pll_fb;
wire videooutsoc_crg_pll_sys;
wire videooutsoc_crg_pll_sys4x;
wire videooutsoc_crg_pll_sys4x_dqs;
wire videooutsoc_crg_pll_clk200;
reg [3:0] videooutsoc_crg_reset_counter = 4'd15;
reg videooutsoc_crg_ic_reset = 1'd1;
reg [56:0] videooutsoc_dna_status = 57'd0;
wire videooutsoc_dna_do;
reg [6:0] videooutsoc_dna_cnt = 7'd0;
wire [159:0] videooutsoc_git_status;
wire [63:0] videooutsoc_platform_status;
wire [63:0] videooutsoc_target_status;
reg [11:0] videooutsoc_temperature_status = 12'd0;
reg [11:0] videooutsoc_vccint_status = 12'd0;
reg [11:0] videooutsoc_vccaux_status = 12'd0;
reg [11:0] videooutsoc_vccbram_status = 12'd0;
wire [7:0] videooutsoc_alarm;
wire videooutsoc_ot;
wire videooutsoc_busy;
wire [6:0] videooutsoc_channel;
wire videooutsoc_eoc;
wire videooutsoc_eos;
wire [15:0] videooutsoc_data;
wire videooutsoc_drdy;
reg [3:0] videooutsoc_storage_full = 4'd0;
wire [3:0] videooutsoc_storage;
reg videooutsoc_re = 1'd0;
wire videooutsoc_rdly_dq_rst_re;
wire videooutsoc_rdly_dq_rst_r;
reg videooutsoc_rdly_dq_rst_w = 1'd0;
wire videooutsoc_rdly_dq_inc_re;
wire videooutsoc_rdly_dq_inc_r;
reg videooutsoc_rdly_dq_inc_w = 1'd0;
wire videooutsoc_rdly_dq_bitslip_re;
wire videooutsoc_rdly_dq_bitslip_r;
reg videooutsoc_rdly_dq_bitslip_w = 1'd0;
wire [13:0] videooutsoc_dfi_p0_address;
wire [2:0] videooutsoc_dfi_p0_bank;
wire videooutsoc_dfi_p0_cas_n;
wire videooutsoc_dfi_p0_cs_n;
wire videooutsoc_dfi_p0_ras_n;
wire videooutsoc_dfi_p0_we_n;
wire videooutsoc_dfi_p0_cke;
wire videooutsoc_dfi_p0_odt;
wire videooutsoc_dfi_p0_reset_n;
wire [63:0] videooutsoc_dfi_p0_wrdata;
wire videooutsoc_dfi_p0_wrdata_en;
wire [7:0] videooutsoc_dfi_p0_wrdata_mask;
wire videooutsoc_dfi_p0_rddata_en;
wire [63:0] videooutsoc_dfi_p0_rddata;
reg videooutsoc_dfi_p0_rddata_valid = 1'd0;
wire [13:0] videooutsoc_dfi_p1_address;
wire [2:0] videooutsoc_dfi_p1_bank;
wire videooutsoc_dfi_p1_cas_n;
wire videooutsoc_dfi_p1_cs_n;
wire videooutsoc_dfi_p1_ras_n;
wire videooutsoc_dfi_p1_we_n;
wire videooutsoc_dfi_p1_cke;
wire videooutsoc_dfi_p1_odt;
wire videooutsoc_dfi_p1_reset_n;
wire [63:0] videooutsoc_dfi_p1_wrdata;
wire videooutsoc_dfi_p1_wrdata_en;
wire [7:0] videooutsoc_dfi_p1_wrdata_mask;
wire videooutsoc_dfi_p1_rddata_en;
wire [63:0] videooutsoc_dfi_p1_rddata;
reg videooutsoc_dfi_p1_rddata_valid = 1'd0;
wire [13:0] videooutsoc_dfi_p2_address;
wire [2:0] videooutsoc_dfi_p2_bank;
wire videooutsoc_dfi_p2_cas_n;
wire videooutsoc_dfi_p2_cs_n;
wire videooutsoc_dfi_p2_ras_n;
wire videooutsoc_dfi_p2_we_n;
wire videooutsoc_dfi_p2_cke;
wire videooutsoc_dfi_p2_odt;
wire videooutsoc_dfi_p2_reset_n;
wire [63:0] videooutsoc_dfi_p2_wrdata;
wire videooutsoc_dfi_p2_wrdata_en;
wire [7:0] videooutsoc_dfi_p2_wrdata_mask;
wire videooutsoc_dfi_p2_rddata_en;
wire [63:0] videooutsoc_dfi_p2_rddata;
reg videooutsoc_dfi_p2_rddata_valid = 1'd0;
wire [13:0] videooutsoc_dfi_p3_address;
wire [2:0] videooutsoc_dfi_p3_bank;
wire videooutsoc_dfi_p3_cas_n;
wire videooutsoc_dfi_p3_cs_n;
wire videooutsoc_dfi_p3_ras_n;
wire videooutsoc_dfi_p3_we_n;
wire videooutsoc_dfi_p3_cke;
wire videooutsoc_dfi_p3_odt;
wire videooutsoc_dfi_p3_reset_n;
wire [63:0] videooutsoc_dfi_p3_wrdata;
wire videooutsoc_dfi_p3_wrdata_en;
wire [7:0] videooutsoc_dfi_p3_wrdata_mask;
wire videooutsoc_dfi_p3_rddata_en;
wire [63:0] videooutsoc_dfi_p3_rddata;
reg videooutsoc_dfi_p3_rddata_valid = 1'd0;
wire videooutsoc_sd_clk_se;
reg videooutsoc_oe_dqs = 1'd0;
reg [7:0] videooutsoc_dqs_serdes_pattern = 8'd85;
wire videooutsoc_dqs0;
wire videooutsoc_dqs_t0;
wire videooutsoc_dqs1;
wire videooutsoc_dqs_t1;
wire videooutsoc_dqs2;
wire videooutsoc_dqs_t2;
wire videooutsoc_dqs3;
wire videooutsoc_dqs_t3;
reg videooutsoc_oe_dq = 1'd0;
wire videooutsoc_dq_o0;
wire videooutsoc_dq_i_nodelay0;
wire videooutsoc_dq_i_delayed0;
wire videooutsoc_dq_t0;
wire videooutsoc_dq_o1;
wire videooutsoc_dq_i_nodelay1;
wire videooutsoc_dq_i_delayed1;
wire videooutsoc_dq_t1;
wire videooutsoc_dq_o2;
wire videooutsoc_dq_i_nodelay2;
wire videooutsoc_dq_i_delayed2;
wire videooutsoc_dq_t2;
wire videooutsoc_dq_o3;
wire videooutsoc_dq_i_nodelay3;
wire videooutsoc_dq_i_delayed3;
wire videooutsoc_dq_t3;
wire videooutsoc_dq_o4;
wire videooutsoc_dq_i_nodelay4;
wire videooutsoc_dq_i_delayed4;
wire videooutsoc_dq_t4;
wire videooutsoc_dq_o5;
wire videooutsoc_dq_i_nodelay5;
wire videooutsoc_dq_i_delayed5;
wire videooutsoc_dq_t5;
wire videooutsoc_dq_o6;
wire videooutsoc_dq_i_nodelay6;
wire videooutsoc_dq_i_delayed6;
wire videooutsoc_dq_t6;
wire videooutsoc_dq_o7;
wire videooutsoc_dq_i_nodelay7;
wire videooutsoc_dq_i_delayed7;
wire videooutsoc_dq_t7;
wire videooutsoc_dq_o8;
wire videooutsoc_dq_i_nodelay8;
wire videooutsoc_dq_i_delayed8;
wire videooutsoc_dq_t8;
wire videooutsoc_dq_o9;
wire videooutsoc_dq_i_nodelay9;
wire videooutsoc_dq_i_delayed9;
wire videooutsoc_dq_t9;
wire videooutsoc_dq_o10;
wire videooutsoc_dq_i_nodelay10;
wire videooutsoc_dq_i_delayed10;
wire videooutsoc_dq_t10;
wire videooutsoc_dq_o11;
wire videooutsoc_dq_i_nodelay11;
wire videooutsoc_dq_i_delayed11;
wire videooutsoc_dq_t11;
wire videooutsoc_dq_o12;
wire videooutsoc_dq_i_nodelay12;
wire videooutsoc_dq_i_delayed12;
wire videooutsoc_dq_t12;
wire videooutsoc_dq_o13;
wire videooutsoc_dq_i_nodelay13;
wire videooutsoc_dq_i_delayed13;
wire videooutsoc_dq_t13;
wire videooutsoc_dq_o14;
wire videooutsoc_dq_i_nodelay14;
wire videooutsoc_dq_i_delayed14;
wire videooutsoc_dq_t14;
wire videooutsoc_dq_o15;
wire videooutsoc_dq_i_nodelay15;
wire videooutsoc_dq_i_delayed15;
wire videooutsoc_dq_t15;
wire videooutsoc_dq_o16;
wire videooutsoc_dq_i_nodelay16;
wire videooutsoc_dq_i_delayed16;
wire videooutsoc_dq_t16;
wire videooutsoc_dq_o17;
wire videooutsoc_dq_i_nodelay17;
wire videooutsoc_dq_i_delayed17;
wire videooutsoc_dq_t17;
wire videooutsoc_dq_o18;
wire videooutsoc_dq_i_nodelay18;
wire videooutsoc_dq_i_delayed18;
wire videooutsoc_dq_t18;
wire videooutsoc_dq_o19;
wire videooutsoc_dq_i_nodelay19;
wire videooutsoc_dq_i_delayed19;
wire videooutsoc_dq_t19;
wire videooutsoc_dq_o20;
wire videooutsoc_dq_i_nodelay20;
wire videooutsoc_dq_i_delayed20;
wire videooutsoc_dq_t20;
wire videooutsoc_dq_o21;
wire videooutsoc_dq_i_nodelay21;
wire videooutsoc_dq_i_delayed21;
wire videooutsoc_dq_t21;
wire videooutsoc_dq_o22;
wire videooutsoc_dq_i_nodelay22;
wire videooutsoc_dq_i_delayed22;
wire videooutsoc_dq_t22;
wire videooutsoc_dq_o23;
wire videooutsoc_dq_i_nodelay23;
wire videooutsoc_dq_i_delayed23;
wire videooutsoc_dq_t23;
wire videooutsoc_dq_o24;
wire videooutsoc_dq_i_nodelay24;
wire videooutsoc_dq_i_delayed24;
wire videooutsoc_dq_t24;
wire videooutsoc_dq_o25;
wire videooutsoc_dq_i_nodelay25;
wire videooutsoc_dq_i_delayed25;
wire videooutsoc_dq_t25;
wire videooutsoc_dq_o26;
wire videooutsoc_dq_i_nodelay26;
wire videooutsoc_dq_i_delayed26;
wire videooutsoc_dq_t26;
wire videooutsoc_dq_o27;
wire videooutsoc_dq_i_nodelay27;
wire videooutsoc_dq_i_delayed27;
wire videooutsoc_dq_t27;
wire videooutsoc_dq_o28;
wire videooutsoc_dq_i_nodelay28;
wire videooutsoc_dq_i_delayed28;
wire videooutsoc_dq_t28;
wire videooutsoc_dq_o29;
wire videooutsoc_dq_i_nodelay29;
wire videooutsoc_dq_i_delayed29;
wire videooutsoc_dq_t29;
wire videooutsoc_dq_o30;
wire videooutsoc_dq_i_nodelay30;
wire videooutsoc_dq_i_delayed30;
wire videooutsoc_dq_t30;
wire videooutsoc_dq_o31;
wire videooutsoc_dq_i_nodelay31;
wire videooutsoc_dq_i_delayed31;
wire videooutsoc_dq_t31;
reg videooutsoc_n_rddata_en0 = 1'd0;
reg videooutsoc_n_rddata_en1 = 1'd0;
reg videooutsoc_n_rddata_en2 = 1'd0;
reg videooutsoc_n_rddata_en3 = 1'd0;
reg videooutsoc_n_rddata_en4 = 1'd0;
wire videooutsoc_oe;
reg [3:0] videooutsoc_last_wrdata_en = 4'd0;
wire [13:0] videooutsoc_sdram_inti_p0_address;
wire [2:0] videooutsoc_sdram_inti_p0_bank;
reg videooutsoc_sdram_inti_p0_cas_n = 1'd1;
reg videooutsoc_sdram_inti_p0_cs_n = 1'd1;
reg videooutsoc_sdram_inti_p0_ras_n = 1'd1;
reg videooutsoc_sdram_inti_p0_we_n = 1'd1;
wire videooutsoc_sdram_inti_p0_cke;
wire videooutsoc_sdram_inti_p0_odt;
wire videooutsoc_sdram_inti_p0_reset_n;
wire [63:0] videooutsoc_sdram_inti_p0_wrdata;
wire videooutsoc_sdram_inti_p0_wrdata_en;
wire [7:0] videooutsoc_sdram_inti_p0_wrdata_mask;
wire videooutsoc_sdram_inti_p0_rddata_en;
reg [63:0] videooutsoc_sdram_inti_p0_rddata = 64'd0;
reg videooutsoc_sdram_inti_p0_rddata_valid = 1'd0;
wire [13:0] videooutsoc_sdram_inti_p1_address;
wire [2:0] videooutsoc_sdram_inti_p1_bank;
reg videooutsoc_sdram_inti_p1_cas_n = 1'd1;
reg videooutsoc_sdram_inti_p1_cs_n = 1'd1;
reg videooutsoc_sdram_inti_p1_ras_n = 1'd1;
reg videooutsoc_sdram_inti_p1_we_n = 1'd1;
wire videooutsoc_sdram_inti_p1_cke;
wire videooutsoc_sdram_inti_p1_odt;
wire videooutsoc_sdram_inti_p1_reset_n;
wire [63:0] videooutsoc_sdram_inti_p1_wrdata;
wire videooutsoc_sdram_inti_p1_wrdata_en;
wire [7:0] videooutsoc_sdram_inti_p1_wrdata_mask;
wire videooutsoc_sdram_inti_p1_rddata_en;
reg [63:0] videooutsoc_sdram_inti_p1_rddata = 64'd0;
reg videooutsoc_sdram_inti_p1_rddata_valid = 1'd0;
wire [13:0] videooutsoc_sdram_inti_p2_address;
wire [2:0] videooutsoc_sdram_inti_p2_bank;
reg videooutsoc_sdram_inti_p2_cas_n = 1'd1;
reg videooutsoc_sdram_inti_p2_cs_n = 1'd1;
reg videooutsoc_sdram_inti_p2_ras_n = 1'd1;
reg videooutsoc_sdram_inti_p2_we_n = 1'd1;
wire videooutsoc_sdram_inti_p2_cke;
wire videooutsoc_sdram_inti_p2_odt;
wire videooutsoc_sdram_inti_p2_reset_n;
wire [63:0] videooutsoc_sdram_inti_p2_wrdata;
wire videooutsoc_sdram_inti_p2_wrdata_en;
wire [7:0] videooutsoc_sdram_inti_p2_wrdata_mask;
wire videooutsoc_sdram_inti_p2_rddata_en;
reg [63:0] videooutsoc_sdram_inti_p2_rddata = 64'd0;
reg videooutsoc_sdram_inti_p2_rddata_valid = 1'd0;
wire [13:0] videooutsoc_sdram_inti_p3_address;
wire [2:0] videooutsoc_sdram_inti_p3_bank;
reg videooutsoc_sdram_inti_p3_cas_n = 1'd1;
reg videooutsoc_sdram_inti_p3_cs_n = 1'd1;
reg videooutsoc_sdram_inti_p3_ras_n = 1'd1;
reg videooutsoc_sdram_inti_p3_we_n = 1'd1;
wire videooutsoc_sdram_inti_p3_cke;
wire videooutsoc_sdram_inti_p3_odt;
wire videooutsoc_sdram_inti_p3_reset_n;
wire [63:0] videooutsoc_sdram_inti_p3_wrdata;
wire videooutsoc_sdram_inti_p3_wrdata_en;
wire [7:0] videooutsoc_sdram_inti_p3_wrdata_mask;
wire videooutsoc_sdram_inti_p3_rddata_en;
reg [63:0] videooutsoc_sdram_inti_p3_rddata = 64'd0;
reg videooutsoc_sdram_inti_p3_rddata_valid = 1'd0;
wire [13:0] videooutsoc_sdram_slave_p0_address;
wire [2:0] videooutsoc_sdram_slave_p0_bank;
wire videooutsoc_sdram_slave_p0_cas_n;
wire videooutsoc_sdram_slave_p0_cs_n;
wire videooutsoc_sdram_slave_p0_ras_n;
wire videooutsoc_sdram_slave_p0_we_n;
wire videooutsoc_sdram_slave_p0_cke;
wire videooutsoc_sdram_slave_p0_odt;
wire videooutsoc_sdram_slave_p0_reset_n;
wire [63:0] videooutsoc_sdram_slave_p0_wrdata;
wire videooutsoc_sdram_slave_p0_wrdata_en;
wire [7:0] videooutsoc_sdram_slave_p0_wrdata_mask;
wire videooutsoc_sdram_slave_p0_rddata_en;
reg [63:0] videooutsoc_sdram_slave_p0_rddata = 64'd0;
reg videooutsoc_sdram_slave_p0_rddata_valid = 1'd0;
wire [13:0] videooutsoc_sdram_slave_p1_address;
wire [2:0] videooutsoc_sdram_slave_p1_bank;
wire videooutsoc_sdram_slave_p1_cas_n;
wire videooutsoc_sdram_slave_p1_cs_n;
wire videooutsoc_sdram_slave_p1_ras_n;
wire videooutsoc_sdram_slave_p1_we_n;
wire videooutsoc_sdram_slave_p1_cke;
wire videooutsoc_sdram_slave_p1_odt;
wire videooutsoc_sdram_slave_p1_reset_n;
wire [63:0] videooutsoc_sdram_slave_p1_wrdata;
wire videooutsoc_sdram_slave_p1_wrdata_en;
wire [7:0] videooutsoc_sdram_slave_p1_wrdata_mask;
wire videooutsoc_sdram_slave_p1_rddata_en;
reg [63:0] videooutsoc_sdram_slave_p1_rddata = 64'd0;
reg videooutsoc_sdram_slave_p1_rddata_valid = 1'd0;
wire [13:0] videooutsoc_sdram_slave_p2_address;
wire [2:0] videooutsoc_sdram_slave_p2_bank;
wire videooutsoc_sdram_slave_p2_cas_n;
wire videooutsoc_sdram_slave_p2_cs_n;
wire videooutsoc_sdram_slave_p2_ras_n;
wire videooutsoc_sdram_slave_p2_we_n;
wire videooutsoc_sdram_slave_p2_cke;
wire videooutsoc_sdram_slave_p2_odt;
wire videooutsoc_sdram_slave_p2_reset_n;
wire [63:0] videooutsoc_sdram_slave_p2_wrdata;
wire videooutsoc_sdram_slave_p2_wrdata_en;
wire [7:0] videooutsoc_sdram_slave_p2_wrdata_mask;
wire videooutsoc_sdram_slave_p2_rddata_en;
reg [63:0] videooutsoc_sdram_slave_p2_rddata = 64'd0;
reg videooutsoc_sdram_slave_p2_rddata_valid = 1'd0;
wire [13:0] videooutsoc_sdram_slave_p3_address;
wire [2:0] videooutsoc_sdram_slave_p3_bank;
wire videooutsoc_sdram_slave_p3_cas_n;
wire videooutsoc_sdram_slave_p3_cs_n;
wire videooutsoc_sdram_slave_p3_ras_n;
wire videooutsoc_sdram_slave_p3_we_n;
wire videooutsoc_sdram_slave_p3_cke;
wire videooutsoc_sdram_slave_p3_odt;
wire videooutsoc_sdram_slave_p3_reset_n;
wire [63:0] videooutsoc_sdram_slave_p3_wrdata;
wire videooutsoc_sdram_slave_p3_wrdata_en;
wire [7:0] videooutsoc_sdram_slave_p3_wrdata_mask;
wire videooutsoc_sdram_slave_p3_rddata_en;
reg [63:0] videooutsoc_sdram_slave_p3_rddata = 64'd0;
reg videooutsoc_sdram_slave_p3_rddata_valid = 1'd0;
reg [13:0] videooutsoc_sdram_master_p0_address = 14'd0;
reg [2:0] videooutsoc_sdram_master_p0_bank = 3'd0;
reg videooutsoc_sdram_master_p0_cas_n = 1'd1;
reg videooutsoc_sdram_master_p0_cs_n = 1'd1;
reg videooutsoc_sdram_master_p0_ras_n = 1'd1;
reg videooutsoc_sdram_master_p0_we_n = 1'd1;
reg videooutsoc_sdram_master_p0_cke = 1'd0;
reg videooutsoc_sdram_master_p0_odt = 1'd0;
reg videooutsoc_sdram_master_p0_reset_n = 1'd0;
reg [63:0] videooutsoc_sdram_master_p0_wrdata = 64'd0;
reg videooutsoc_sdram_master_p0_wrdata_en = 1'd0;
reg [7:0] videooutsoc_sdram_master_p0_wrdata_mask = 8'd0;
reg videooutsoc_sdram_master_p0_rddata_en = 1'd0;
wire [63:0] videooutsoc_sdram_master_p0_rddata;
wire videooutsoc_sdram_master_p0_rddata_valid;
reg [13:0] videooutsoc_sdram_master_p1_address = 14'd0;
reg [2:0] videooutsoc_sdram_master_p1_bank = 3'd0;
reg videooutsoc_sdram_master_p1_cas_n = 1'd1;
reg videooutsoc_sdram_master_p1_cs_n = 1'd1;
reg videooutsoc_sdram_master_p1_ras_n = 1'd1;
reg videooutsoc_sdram_master_p1_we_n = 1'd1;
reg videooutsoc_sdram_master_p1_cke = 1'd0;
reg videooutsoc_sdram_master_p1_odt = 1'd0;
reg videooutsoc_sdram_master_p1_reset_n = 1'd0;
reg [63:0] videooutsoc_sdram_master_p1_wrdata = 64'd0;
reg videooutsoc_sdram_master_p1_wrdata_en = 1'd0;
reg [7:0] videooutsoc_sdram_master_p1_wrdata_mask = 8'd0;
reg videooutsoc_sdram_master_p1_rddata_en = 1'd0;
wire [63:0] videooutsoc_sdram_master_p1_rddata;
wire videooutsoc_sdram_master_p1_rddata_valid;
reg [13:0] videooutsoc_sdram_master_p2_address = 14'd0;
reg [2:0] videooutsoc_sdram_master_p2_bank = 3'd0;
reg videooutsoc_sdram_master_p2_cas_n = 1'd1;
reg videooutsoc_sdram_master_p2_cs_n = 1'd1;
reg videooutsoc_sdram_master_p2_ras_n = 1'd1;
reg videooutsoc_sdram_master_p2_we_n = 1'd1;
reg videooutsoc_sdram_master_p2_cke = 1'd0;
reg videooutsoc_sdram_master_p2_odt = 1'd0;
reg videooutsoc_sdram_master_p2_reset_n = 1'd0;
reg [63:0] videooutsoc_sdram_master_p2_wrdata = 64'd0;
reg videooutsoc_sdram_master_p2_wrdata_en = 1'd0;
reg [7:0] videooutsoc_sdram_master_p2_wrdata_mask = 8'd0;
reg videooutsoc_sdram_master_p2_rddata_en = 1'd0;
wire [63:0] videooutsoc_sdram_master_p2_rddata;
wire videooutsoc_sdram_master_p2_rddata_valid;
reg [13:0] videooutsoc_sdram_master_p3_address = 14'd0;
reg [2:0] videooutsoc_sdram_master_p3_bank = 3'd0;
reg videooutsoc_sdram_master_p3_cas_n = 1'd1;
reg videooutsoc_sdram_master_p3_cs_n = 1'd1;
reg videooutsoc_sdram_master_p3_ras_n = 1'd1;
reg videooutsoc_sdram_master_p3_we_n = 1'd1;
reg videooutsoc_sdram_master_p3_cke = 1'd0;
reg videooutsoc_sdram_master_p3_odt = 1'd0;
reg videooutsoc_sdram_master_p3_reset_n = 1'd0;
reg [63:0] videooutsoc_sdram_master_p3_wrdata = 64'd0;
reg videooutsoc_sdram_master_p3_wrdata_en = 1'd0;
reg [7:0] videooutsoc_sdram_master_p3_wrdata_mask = 8'd0;
reg videooutsoc_sdram_master_p3_rddata_en = 1'd0;
wire [63:0] videooutsoc_sdram_master_p3_rddata;
wire videooutsoc_sdram_master_p3_rddata_valid;
reg [3:0] videooutsoc_sdram_storage_full = 4'd0;
wire [3:0] videooutsoc_sdram_storage;
reg videooutsoc_sdram_re = 1'd0;
reg [5:0] videooutsoc_sdram_phaseinjector0_command_storage_full = 6'd0;
wire [5:0] videooutsoc_sdram_phaseinjector0_command_storage;
reg videooutsoc_sdram_phaseinjector0_command_re = 1'd0;
wire videooutsoc_sdram_phaseinjector0_command_issue_re;
wire videooutsoc_sdram_phaseinjector0_command_issue_r;
reg videooutsoc_sdram_phaseinjector0_command_issue_w = 1'd0;
reg [13:0] videooutsoc_sdram_phaseinjector0_address_storage_full = 14'd0;
wire [13:0] videooutsoc_sdram_phaseinjector0_address_storage;
reg videooutsoc_sdram_phaseinjector0_address_re = 1'd0;
reg [2:0] videooutsoc_sdram_phaseinjector0_baddress_storage_full = 3'd0;
wire [2:0] videooutsoc_sdram_phaseinjector0_baddress_storage;
reg videooutsoc_sdram_phaseinjector0_baddress_re = 1'd0;
reg [63:0] videooutsoc_sdram_phaseinjector0_wrdata_storage_full = 64'd0;
wire [63:0] videooutsoc_sdram_phaseinjector0_wrdata_storage;
reg videooutsoc_sdram_phaseinjector0_wrdata_re = 1'd0;
reg [63:0] videooutsoc_sdram_phaseinjector0_status = 64'd0;
reg [5:0] videooutsoc_sdram_phaseinjector1_command_storage_full = 6'd0;
wire [5:0] videooutsoc_sdram_phaseinjector1_command_storage;
reg videooutsoc_sdram_phaseinjector1_command_re = 1'd0;
wire videooutsoc_sdram_phaseinjector1_command_issue_re;
wire videooutsoc_sdram_phaseinjector1_command_issue_r;
reg videooutsoc_sdram_phaseinjector1_command_issue_w = 1'd0;
reg [13:0] videooutsoc_sdram_phaseinjector1_address_storage_full = 14'd0;
wire [13:0] videooutsoc_sdram_phaseinjector1_address_storage;
reg videooutsoc_sdram_phaseinjector1_address_re = 1'd0;
reg [2:0] videooutsoc_sdram_phaseinjector1_baddress_storage_full = 3'd0;
wire [2:0] videooutsoc_sdram_phaseinjector1_baddress_storage;
reg videooutsoc_sdram_phaseinjector1_baddress_re = 1'd0;
reg [63:0] videooutsoc_sdram_phaseinjector1_wrdata_storage_full = 64'd0;
wire [63:0] videooutsoc_sdram_phaseinjector1_wrdata_storage;
reg videooutsoc_sdram_phaseinjector1_wrdata_re = 1'd0;
reg [63:0] videooutsoc_sdram_phaseinjector1_status = 64'd0;
reg [5:0] videooutsoc_sdram_phaseinjector2_command_storage_full = 6'd0;
wire [5:0] videooutsoc_sdram_phaseinjector2_command_storage;
reg videooutsoc_sdram_phaseinjector2_command_re = 1'd0;
wire videooutsoc_sdram_phaseinjector2_command_issue_re;
wire videooutsoc_sdram_phaseinjector2_command_issue_r;
reg videooutsoc_sdram_phaseinjector2_command_issue_w = 1'd0;
reg [13:0] videooutsoc_sdram_phaseinjector2_address_storage_full = 14'd0;
wire [13:0] videooutsoc_sdram_phaseinjector2_address_storage;
reg videooutsoc_sdram_phaseinjector2_address_re = 1'd0;
reg [2:0] videooutsoc_sdram_phaseinjector2_baddress_storage_full = 3'd0;
wire [2:0] videooutsoc_sdram_phaseinjector2_baddress_storage;
reg videooutsoc_sdram_phaseinjector2_baddress_re = 1'd0;
reg [63:0] videooutsoc_sdram_phaseinjector2_wrdata_storage_full = 64'd0;
wire [63:0] videooutsoc_sdram_phaseinjector2_wrdata_storage;
reg videooutsoc_sdram_phaseinjector2_wrdata_re = 1'd0;
reg [63:0] videooutsoc_sdram_phaseinjector2_status = 64'd0;
reg [5:0] videooutsoc_sdram_phaseinjector3_command_storage_full = 6'd0;
wire [5:0] videooutsoc_sdram_phaseinjector3_command_storage;
reg videooutsoc_sdram_phaseinjector3_command_re = 1'd0;
wire videooutsoc_sdram_phaseinjector3_command_issue_re;
wire videooutsoc_sdram_phaseinjector3_command_issue_r;
reg videooutsoc_sdram_phaseinjector3_command_issue_w = 1'd0;
reg [13:0] videooutsoc_sdram_phaseinjector3_address_storage_full = 14'd0;
wire [13:0] videooutsoc_sdram_phaseinjector3_address_storage;
reg videooutsoc_sdram_phaseinjector3_address_re = 1'd0;
reg [2:0] videooutsoc_sdram_phaseinjector3_baddress_storage_full = 3'd0;
wire [2:0] videooutsoc_sdram_phaseinjector3_baddress_storage;
reg videooutsoc_sdram_phaseinjector3_baddress_re = 1'd0;
reg [63:0] videooutsoc_sdram_phaseinjector3_wrdata_storage_full = 64'd0;
wire [63:0] videooutsoc_sdram_phaseinjector3_wrdata_storage;
reg videooutsoc_sdram_phaseinjector3_wrdata_re = 1'd0;
reg [63:0] videooutsoc_sdram_phaseinjector3_status = 64'd0;
reg [13:0] videooutsoc_sdram_dfi_p0_address = 14'd0;
reg [2:0] videooutsoc_sdram_dfi_p0_bank = 3'd0;
reg videooutsoc_sdram_dfi_p0_cas_n = 1'd1;
wire videooutsoc_sdram_dfi_p0_cs_n;
reg videooutsoc_sdram_dfi_p0_ras_n = 1'd1;
reg videooutsoc_sdram_dfi_p0_we_n = 1'd1;
wire videooutsoc_sdram_dfi_p0_cke;
wire videooutsoc_sdram_dfi_p0_odt;
wire videooutsoc_sdram_dfi_p0_reset_n;
wire [63:0] videooutsoc_sdram_dfi_p0_wrdata;
reg videooutsoc_sdram_dfi_p0_wrdata_en = 1'd0;
wire [7:0] videooutsoc_sdram_dfi_p0_wrdata_mask;
reg videooutsoc_sdram_dfi_p0_rddata_en = 1'd0;
wire [63:0] videooutsoc_sdram_dfi_p0_rddata;
wire videooutsoc_sdram_dfi_p0_rddata_valid;
reg [13:0] videooutsoc_sdram_dfi_p1_address = 14'd0;
reg [2:0] videooutsoc_sdram_dfi_p1_bank = 3'd0;
reg videooutsoc_sdram_dfi_p1_cas_n = 1'd1;
wire videooutsoc_sdram_dfi_p1_cs_n;
reg videooutsoc_sdram_dfi_p1_ras_n = 1'd1;
reg videooutsoc_sdram_dfi_p1_we_n = 1'd1;
wire videooutsoc_sdram_dfi_p1_cke;
wire videooutsoc_sdram_dfi_p1_odt;
wire videooutsoc_sdram_dfi_p1_reset_n;
wire [63:0] videooutsoc_sdram_dfi_p1_wrdata;
reg videooutsoc_sdram_dfi_p1_wrdata_en = 1'd0;
wire [7:0] videooutsoc_sdram_dfi_p1_wrdata_mask;
reg videooutsoc_sdram_dfi_p1_rddata_en = 1'd0;
wire [63:0] videooutsoc_sdram_dfi_p1_rddata;
wire videooutsoc_sdram_dfi_p1_rddata_valid;
reg [13:0] videooutsoc_sdram_dfi_p2_address = 14'd0;
reg [2:0] videooutsoc_sdram_dfi_p2_bank = 3'd0;
reg videooutsoc_sdram_dfi_p2_cas_n = 1'd1;
wire videooutsoc_sdram_dfi_p2_cs_n;
reg videooutsoc_sdram_dfi_p2_ras_n = 1'd1;
reg videooutsoc_sdram_dfi_p2_we_n = 1'd1;
wire videooutsoc_sdram_dfi_p2_cke;
wire videooutsoc_sdram_dfi_p2_odt;
wire videooutsoc_sdram_dfi_p2_reset_n;
wire [63:0] videooutsoc_sdram_dfi_p2_wrdata;
reg videooutsoc_sdram_dfi_p2_wrdata_en = 1'd0;
wire [7:0] videooutsoc_sdram_dfi_p2_wrdata_mask;
reg videooutsoc_sdram_dfi_p2_rddata_en = 1'd0;
wire [63:0] videooutsoc_sdram_dfi_p2_rddata;
wire videooutsoc_sdram_dfi_p2_rddata_valid;
reg [13:0] videooutsoc_sdram_dfi_p3_address = 14'd0;
reg [2:0] videooutsoc_sdram_dfi_p3_bank = 3'd0;
reg videooutsoc_sdram_dfi_p3_cas_n = 1'd1;
wire videooutsoc_sdram_dfi_p3_cs_n;
reg videooutsoc_sdram_dfi_p3_ras_n = 1'd1;
reg videooutsoc_sdram_dfi_p3_we_n = 1'd1;
wire videooutsoc_sdram_dfi_p3_cke;
wire videooutsoc_sdram_dfi_p3_odt;
wire videooutsoc_sdram_dfi_p3_reset_n;
wire [63:0] videooutsoc_sdram_dfi_p3_wrdata;
reg videooutsoc_sdram_dfi_p3_wrdata_en = 1'd0;
wire [7:0] videooutsoc_sdram_dfi_p3_wrdata_mask;
reg videooutsoc_sdram_dfi_p3_rddata_en = 1'd0;
wire [63:0] videooutsoc_sdram_dfi_p3_rddata;
wire videooutsoc_sdram_dfi_p3_rddata_valid;
wire videooutsoc_sdram_interface_bank0_valid;
wire videooutsoc_sdram_interface_bank0_ready;
wire videooutsoc_sdram_interface_bank0_we;
wire [20:0] videooutsoc_sdram_interface_bank0_adr;
wire videooutsoc_sdram_interface_bank0_lock;
wire videooutsoc_sdram_interface_bank0_wdata_ready;
wire videooutsoc_sdram_interface_bank0_rdata_valid;
wire videooutsoc_sdram_interface_bank1_valid;
wire videooutsoc_sdram_interface_bank1_ready;
wire videooutsoc_sdram_interface_bank1_we;
wire [20:0] videooutsoc_sdram_interface_bank1_adr;
wire videooutsoc_sdram_interface_bank1_lock;
wire videooutsoc_sdram_interface_bank1_wdata_ready;
wire videooutsoc_sdram_interface_bank1_rdata_valid;
wire videooutsoc_sdram_interface_bank2_valid;
wire videooutsoc_sdram_interface_bank2_ready;
wire videooutsoc_sdram_interface_bank2_we;
wire [20:0] videooutsoc_sdram_interface_bank2_adr;
wire videooutsoc_sdram_interface_bank2_lock;
wire videooutsoc_sdram_interface_bank2_wdata_ready;
wire videooutsoc_sdram_interface_bank2_rdata_valid;
wire videooutsoc_sdram_interface_bank3_valid;
wire videooutsoc_sdram_interface_bank3_ready;
wire videooutsoc_sdram_interface_bank3_we;
wire [20:0] videooutsoc_sdram_interface_bank3_adr;
wire videooutsoc_sdram_interface_bank3_lock;
wire videooutsoc_sdram_interface_bank3_wdata_ready;
wire videooutsoc_sdram_interface_bank3_rdata_valid;
wire videooutsoc_sdram_interface_bank4_valid;
wire videooutsoc_sdram_interface_bank4_ready;
wire videooutsoc_sdram_interface_bank4_we;
wire [20:0] videooutsoc_sdram_interface_bank4_adr;
wire videooutsoc_sdram_interface_bank4_lock;
wire videooutsoc_sdram_interface_bank4_wdata_ready;
wire videooutsoc_sdram_interface_bank4_rdata_valid;
wire videooutsoc_sdram_interface_bank5_valid;
wire videooutsoc_sdram_interface_bank5_ready;
wire videooutsoc_sdram_interface_bank5_we;
wire [20:0] videooutsoc_sdram_interface_bank5_adr;
wire videooutsoc_sdram_interface_bank5_lock;
wire videooutsoc_sdram_interface_bank5_wdata_ready;
wire videooutsoc_sdram_interface_bank5_rdata_valid;
wire videooutsoc_sdram_interface_bank6_valid;
wire videooutsoc_sdram_interface_bank6_ready;
wire videooutsoc_sdram_interface_bank6_we;
wire [20:0] videooutsoc_sdram_interface_bank6_adr;
wire videooutsoc_sdram_interface_bank6_lock;
wire videooutsoc_sdram_interface_bank6_wdata_ready;
wire videooutsoc_sdram_interface_bank6_rdata_valid;
wire videooutsoc_sdram_interface_bank7_valid;
wire videooutsoc_sdram_interface_bank7_ready;
wire videooutsoc_sdram_interface_bank7_we;
wire [20:0] videooutsoc_sdram_interface_bank7_adr;
wire videooutsoc_sdram_interface_bank7_lock;
wire videooutsoc_sdram_interface_bank7_wdata_ready;
wire videooutsoc_sdram_interface_bank7_rdata_valid;
reg [255:0] videooutsoc_sdram_interface_wdata = 256'd0;
reg [31:0] videooutsoc_sdram_interface_wdata_we = 32'd0;
wire [255:0] videooutsoc_sdram_interface_rdata;
reg videooutsoc_sdram_cmd_valid = 1'd0;
reg videooutsoc_sdram_cmd_ready = 1'd0;
reg videooutsoc_sdram_cmd_last = 1'd0;
reg [13:0] videooutsoc_sdram_cmd_payload_a = 14'd0;
reg [2:0] videooutsoc_sdram_cmd_payload_ba = 3'd0;
reg videooutsoc_sdram_cmd_payload_cas = 1'd0;
reg videooutsoc_sdram_cmd_payload_ras = 1'd0;
reg videooutsoc_sdram_cmd_payload_we = 1'd0;
reg videooutsoc_sdram_cmd_payload_is_read = 1'd0;
reg videooutsoc_sdram_cmd_payload_is_write = 1'd0;
reg videooutsoc_sdram_seq_start = 1'd0;
reg videooutsoc_sdram_seq_done = 1'd0;
reg [4:0] videooutsoc_sdram_counter = 5'd0;
wire videooutsoc_sdram_wait;
wire videooutsoc_sdram_done;
reg [8:0] videooutsoc_sdram_count = 9'd391;
wire videooutsoc_sdram_bankmachine0_req_valid;
wire videooutsoc_sdram_bankmachine0_req_ready;
wire videooutsoc_sdram_bankmachine0_req_we;
wire [20:0] videooutsoc_sdram_bankmachine0_req_adr;
wire videooutsoc_sdram_bankmachine0_req_lock;
reg videooutsoc_sdram_bankmachine0_req_wdata_ready = 1'd0;
reg videooutsoc_sdram_bankmachine0_req_rdata_valid = 1'd0;
wire videooutsoc_sdram_bankmachine0_refresh_req;
reg videooutsoc_sdram_bankmachine0_refresh_gnt = 1'd0;
reg videooutsoc_sdram_bankmachine0_cmd_valid = 1'd0;
reg videooutsoc_sdram_bankmachine0_cmd_ready = 1'd0;
reg [13:0] videooutsoc_sdram_bankmachine0_cmd_payload_a = 14'd0;
wire [2:0] videooutsoc_sdram_bankmachine0_cmd_payload_ba;
reg videooutsoc_sdram_bankmachine0_cmd_payload_cas = 1'd0;
reg videooutsoc_sdram_bankmachine0_cmd_payload_ras = 1'd0;
reg videooutsoc_sdram_bankmachine0_cmd_payload_we = 1'd0;
reg videooutsoc_sdram_bankmachine0_cmd_payload_is_cmd = 1'd0;
reg videooutsoc_sdram_bankmachine0_cmd_payload_is_read = 1'd0;
reg videooutsoc_sdram_bankmachine0_cmd_payload_is_write = 1'd0;
wire videooutsoc_sdram_bankmachine0_sink_valid;
wire videooutsoc_sdram_bankmachine0_sink_ready;
reg videooutsoc_sdram_bankmachine0_sink_first = 1'd0;
reg videooutsoc_sdram_bankmachine0_sink_last = 1'd0;
wire videooutsoc_sdram_bankmachine0_sink_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine0_sink_payload_adr;
wire videooutsoc_sdram_bankmachine0_source_valid;
wire videooutsoc_sdram_bankmachine0_source_ready;
wire videooutsoc_sdram_bankmachine0_source_first;
wire videooutsoc_sdram_bankmachine0_source_last;
wire videooutsoc_sdram_bankmachine0_source_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine0_source_payload_adr;
wire videooutsoc_sdram_bankmachine0_syncfifo0_we;
wire videooutsoc_sdram_bankmachine0_syncfifo0_writable;
wire videooutsoc_sdram_bankmachine0_syncfifo0_re;
wire videooutsoc_sdram_bankmachine0_syncfifo0_readable;
wire [23:0] videooutsoc_sdram_bankmachine0_syncfifo0_din;
wire [23:0] videooutsoc_sdram_bankmachine0_syncfifo0_dout;
reg [3:0] videooutsoc_sdram_bankmachine0_level = 4'd0;
reg videooutsoc_sdram_bankmachine0_replace = 1'd0;
reg [2:0] videooutsoc_sdram_bankmachine0_produce = 3'd0;
reg [2:0] videooutsoc_sdram_bankmachine0_consume = 3'd0;
reg [2:0] videooutsoc_sdram_bankmachine0_wrport_adr = 3'd0;
wire [23:0] videooutsoc_sdram_bankmachine0_wrport_dat_r;
wire videooutsoc_sdram_bankmachine0_wrport_we;
wire [23:0] videooutsoc_sdram_bankmachine0_wrport_dat_w;
wire videooutsoc_sdram_bankmachine0_do_read;
wire [2:0] videooutsoc_sdram_bankmachine0_rdport_adr;
wire [23:0] videooutsoc_sdram_bankmachine0_rdport_dat_r;
wire videooutsoc_sdram_bankmachine0_fifo_in_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine0_fifo_in_payload_adr;
wire videooutsoc_sdram_bankmachine0_fifo_in_first;
wire videooutsoc_sdram_bankmachine0_fifo_in_last;
wire videooutsoc_sdram_bankmachine0_fifo_out_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine0_fifo_out_payload_adr;
wire videooutsoc_sdram_bankmachine0_fifo_out_first;
wire videooutsoc_sdram_bankmachine0_fifo_out_last;
reg videooutsoc_sdram_bankmachine0_has_openrow = 1'd0;
reg [13:0] videooutsoc_sdram_bankmachine0_openrow = 14'd0;
wire videooutsoc_sdram_bankmachine0_hit;
reg videooutsoc_sdram_bankmachine0_track_open = 1'd0;
reg videooutsoc_sdram_bankmachine0_track_close = 1'd0;
reg videooutsoc_sdram_bankmachine0_sel_row_adr = 1'd0;
wire videooutsoc_sdram_bankmachine0_wait;
wire videooutsoc_sdram_bankmachine0_done;
reg [2:0] videooutsoc_sdram_bankmachine0_count = 3'd5;
wire videooutsoc_sdram_bankmachine1_req_valid;
wire videooutsoc_sdram_bankmachine1_req_ready;
wire videooutsoc_sdram_bankmachine1_req_we;
wire [20:0] videooutsoc_sdram_bankmachine1_req_adr;
wire videooutsoc_sdram_bankmachine1_req_lock;
reg videooutsoc_sdram_bankmachine1_req_wdata_ready = 1'd0;
reg videooutsoc_sdram_bankmachine1_req_rdata_valid = 1'd0;
wire videooutsoc_sdram_bankmachine1_refresh_req;
reg videooutsoc_sdram_bankmachine1_refresh_gnt = 1'd0;
reg videooutsoc_sdram_bankmachine1_cmd_valid = 1'd0;
reg videooutsoc_sdram_bankmachine1_cmd_ready = 1'd0;
reg [13:0] videooutsoc_sdram_bankmachine1_cmd_payload_a = 14'd0;
wire [2:0] videooutsoc_sdram_bankmachine1_cmd_payload_ba;
reg videooutsoc_sdram_bankmachine1_cmd_payload_cas = 1'd0;
reg videooutsoc_sdram_bankmachine1_cmd_payload_ras = 1'd0;
reg videooutsoc_sdram_bankmachine1_cmd_payload_we = 1'd0;
reg videooutsoc_sdram_bankmachine1_cmd_payload_is_cmd = 1'd0;
reg videooutsoc_sdram_bankmachine1_cmd_payload_is_read = 1'd0;
reg videooutsoc_sdram_bankmachine1_cmd_payload_is_write = 1'd0;
wire videooutsoc_sdram_bankmachine1_sink_valid;
wire videooutsoc_sdram_bankmachine1_sink_ready;
reg videooutsoc_sdram_bankmachine1_sink_first = 1'd0;
reg videooutsoc_sdram_bankmachine1_sink_last = 1'd0;
wire videooutsoc_sdram_bankmachine1_sink_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine1_sink_payload_adr;
wire videooutsoc_sdram_bankmachine1_source_valid;
wire videooutsoc_sdram_bankmachine1_source_ready;
wire videooutsoc_sdram_bankmachine1_source_first;
wire videooutsoc_sdram_bankmachine1_source_last;
wire videooutsoc_sdram_bankmachine1_source_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine1_source_payload_adr;
wire videooutsoc_sdram_bankmachine1_syncfifo1_we;
wire videooutsoc_sdram_bankmachine1_syncfifo1_writable;
wire videooutsoc_sdram_bankmachine1_syncfifo1_re;
wire videooutsoc_sdram_bankmachine1_syncfifo1_readable;
wire [23:0] videooutsoc_sdram_bankmachine1_syncfifo1_din;
wire [23:0] videooutsoc_sdram_bankmachine1_syncfifo1_dout;
reg [3:0] videooutsoc_sdram_bankmachine1_level = 4'd0;
reg videooutsoc_sdram_bankmachine1_replace = 1'd0;
reg [2:0] videooutsoc_sdram_bankmachine1_produce = 3'd0;
reg [2:0] videooutsoc_sdram_bankmachine1_consume = 3'd0;
reg [2:0] videooutsoc_sdram_bankmachine1_wrport_adr = 3'd0;
wire [23:0] videooutsoc_sdram_bankmachine1_wrport_dat_r;
wire videooutsoc_sdram_bankmachine1_wrport_we;
wire [23:0] videooutsoc_sdram_bankmachine1_wrport_dat_w;
wire videooutsoc_sdram_bankmachine1_do_read;
wire [2:0] videooutsoc_sdram_bankmachine1_rdport_adr;
wire [23:0] videooutsoc_sdram_bankmachine1_rdport_dat_r;
wire videooutsoc_sdram_bankmachine1_fifo_in_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine1_fifo_in_payload_adr;
wire videooutsoc_sdram_bankmachine1_fifo_in_first;
wire videooutsoc_sdram_bankmachine1_fifo_in_last;
wire videooutsoc_sdram_bankmachine1_fifo_out_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine1_fifo_out_payload_adr;
wire videooutsoc_sdram_bankmachine1_fifo_out_first;
wire videooutsoc_sdram_bankmachine1_fifo_out_last;
reg videooutsoc_sdram_bankmachine1_has_openrow = 1'd0;
reg [13:0] videooutsoc_sdram_bankmachine1_openrow = 14'd0;
wire videooutsoc_sdram_bankmachine1_hit;
reg videooutsoc_sdram_bankmachine1_track_open = 1'd0;
reg videooutsoc_sdram_bankmachine1_track_close = 1'd0;
reg videooutsoc_sdram_bankmachine1_sel_row_adr = 1'd0;
wire videooutsoc_sdram_bankmachine1_wait;
wire videooutsoc_sdram_bankmachine1_done;
reg [2:0] videooutsoc_sdram_bankmachine1_count = 3'd5;
wire videooutsoc_sdram_bankmachine2_req_valid;
wire videooutsoc_sdram_bankmachine2_req_ready;
wire videooutsoc_sdram_bankmachine2_req_we;
wire [20:0] videooutsoc_sdram_bankmachine2_req_adr;
wire videooutsoc_sdram_bankmachine2_req_lock;
reg videooutsoc_sdram_bankmachine2_req_wdata_ready = 1'd0;
reg videooutsoc_sdram_bankmachine2_req_rdata_valid = 1'd0;
wire videooutsoc_sdram_bankmachine2_refresh_req;
reg videooutsoc_sdram_bankmachine2_refresh_gnt = 1'd0;
reg videooutsoc_sdram_bankmachine2_cmd_valid = 1'd0;
reg videooutsoc_sdram_bankmachine2_cmd_ready = 1'd0;
reg [13:0] videooutsoc_sdram_bankmachine2_cmd_payload_a = 14'd0;
wire [2:0] videooutsoc_sdram_bankmachine2_cmd_payload_ba;
reg videooutsoc_sdram_bankmachine2_cmd_payload_cas = 1'd0;
reg videooutsoc_sdram_bankmachine2_cmd_payload_ras = 1'd0;
reg videooutsoc_sdram_bankmachine2_cmd_payload_we = 1'd0;
reg videooutsoc_sdram_bankmachine2_cmd_payload_is_cmd = 1'd0;
reg videooutsoc_sdram_bankmachine2_cmd_payload_is_read = 1'd0;
reg videooutsoc_sdram_bankmachine2_cmd_payload_is_write = 1'd0;
wire videooutsoc_sdram_bankmachine2_sink_valid;
wire videooutsoc_sdram_bankmachine2_sink_ready;
reg videooutsoc_sdram_bankmachine2_sink_first = 1'd0;
reg videooutsoc_sdram_bankmachine2_sink_last = 1'd0;
wire videooutsoc_sdram_bankmachine2_sink_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine2_sink_payload_adr;
wire videooutsoc_sdram_bankmachine2_source_valid;
wire videooutsoc_sdram_bankmachine2_source_ready;
wire videooutsoc_sdram_bankmachine2_source_first;
wire videooutsoc_sdram_bankmachine2_source_last;
wire videooutsoc_sdram_bankmachine2_source_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine2_source_payload_adr;
wire videooutsoc_sdram_bankmachine2_syncfifo2_we;
wire videooutsoc_sdram_bankmachine2_syncfifo2_writable;
wire videooutsoc_sdram_bankmachine2_syncfifo2_re;
wire videooutsoc_sdram_bankmachine2_syncfifo2_readable;
wire [23:0] videooutsoc_sdram_bankmachine2_syncfifo2_din;
wire [23:0] videooutsoc_sdram_bankmachine2_syncfifo2_dout;
reg [3:0] videooutsoc_sdram_bankmachine2_level = 4'd0;
reg videooutsoc_sdram_bankmachine2_replace = 1'd0;
reg [2:0] videooutsoc_sdram_bankmachine2_produce = 3'd0;
reg [2:0] videooutsoc_sdram_bankmachine2_consume = 3'd0;
reg [2:0] videooutsoc_sdram_bankmachine2_wrport_adr = 3'd0;
wire [23:0] videooutsoc_sdram_bankmachine2_wrport_dat_r;
wire videooutsoc_sdram_bankmachine2_wrport_we;
wire [23:0] videooutsoc_sdram_bankmachine2_wrport_dat_w;
wire videooutsoc_sdram_bankmachine2_do_read;
wire [2:0] videooutsoc_sdram_bankmachine2_rdport_adr;
wire [23:0] videooutsoc_sdram_bankmachine2_rdport_dat_r;
wire videooutsoc_sdram_bankmachine2_fifo_in_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine2_fifo_in_payload_adr;
wire videooutsoc_sdram_bankmachine2_fifo_in_first;
wire videooutsoc_sdram_bankmachine2_fifo_in_last;
wire videooutsoc_sdram_bankmachine2_fifo_out_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine2_fifo_out_payload_adr;
wire videooutsoc_sdram_bankmachine2_fifo_out_first;
wire videooutsoc_sdram_bankmachine2_fifo_out_last;
reg videooutsoc_sdram_bankmachine2_has_openrow = 1'd0;
reg [13:0] videooutsoc_sdram_bankmachine2_openrow = 14'd0;
wire videooutsoc_sdram_bankmachine2_hit;
reg videooutsoc_sdram_bankmachine2_track_open = 1'd0;
reg videooutsoc_sdram_bankmachine2_track_close = 1'd0;
reg videooutsoc_sdram_bankmachine2_sel_row_adr = 1'd0;
wire videooutsoc_sdram_bankmachine2_wait;
wire videooutsoc_sdram_bankmachine2_done;
reg [2:0] videooutsoc_sdram_bankmachine2_count = 3'd5;
wire videooutsoc_sdram_bankmachine3_req_valid;
wire videooutsoc_sdram_bankmachine3_req_ready;
wire videooutsoc_sdram_bankmachine3_req_we;
wire [20:0] videooutsoc_sdram_bankmachine3_req_adr;
wire videooutsoc_sdram_bankmachine3_req_lock;
reg videooutsoc_sdram_bankmachine3_req_wdata_ready = 1'd0;
reg videooutsoc_sdram_bankmachine3_req_rdata_valid = 1'd0;
wire videooutsoc_sdram_bankmachine3_refresh_req;
reg videooutsoc_sdram_bankmachine3_refresh_gnt = 1'd0;
reg videooutsoc_sdram_bankmachine3_cmd_valid = 1'd0;
reg videooutsoc_sdram_bankmachine3_cmd_ready = 1'd0;
reg [13:0] videooutsoc_sdram_bankmachine3_cmd_payload_a = 14'd0;
wire [2:0] videooutsoc_sdram_bankmachine3_cmd_payload_ba;
reg videooutsoc_sdram_bankmachine3_cmd_payload_cas = 1'd0;
reg videooutsoc_sdram_bankmachine3_cmd_payload_ras = 1'd0;
reg videooutsoc_sdram_bankmachine3_cmd_payload_we = 1'd0;
reg videooutsoc_sdram_bankmachine3_cmd_payload_is_cmd = 1'd0;
reg videooutsoc_sdram_bankmachine3_cmd_payload_is_read = 1'd0;
reg videooutsoc_sdram_bankmachine3_cmd_payload_is_write = 1'd0;
wire videooutsoc_sdram_bankmachine3_sink_valid;
wire videooutsoc_sdram_bankmachine3_sink_ready;
reg videooutsoc_sdram_bankmachine3_sink_first = 1'd0;
reg videooutsoc_sdram_bankmachine3_sink_last = 1'd0;
wire videooutsoc_sdram_bankmachine3_sink_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine3_sink_payload_adr;
wire videooutsoc_sdram_bankmachine3_source_valid;
wire videooutsoc_sdram_bankmachine3_source_ready;
wire videooutsoc_sdram_bankmachine3_source_first;
wire videooutsoc_sdram_bankmachine3_source_last;
wire videooutsoc_sdram_bankmachine3_source_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine3_source_payload_adr;
wire videooutsoc_sdram_bankmachine3_syncfifo3_we;
wire videooutsoc_sdram_bankmachine3_syncfifo3_writable;
wire videooutsoc_sdram_bankmachine3_syncfifo3_re;
wire videooutsoc_sdram_bankmachine3_syncfifo3_readable;
wire [23:0] videooutsoc_sdram_bankmachine3_syncfifo3_din;
wire [23:0] videooutsoc_sdram_bankmachine3_syncfifo3_dout;
reg [3:0] videooutsoc_sdram_bankmachine3_level = 4'd0;
reg videooutsoc_sdram_bankmachine3_replace = 1'd0;
reg [2:0] videooutsoc_sdram_bankmachine3_produce = 3'd0;
reg [2:0] videooutsoc_sdram_bankmachine3_consume = 3'd0;
reg [2:0] videooutsoc_sdram_bankmachine3_wrport_adr = 3'd0;
wire [23:0] videooutsoc_sdram_bankmachine3_wrport_dat_r;
wire videooutsoc_sdram_bankmachine3_wrport_we;
wire [23:0] videooutsoc_sdram_bankmachine3_wrport_dat_w;
wire videooutsoc_sdram_bankmachine3_do_read;
wire [2:0] videooutsoc_sdram_bankmachine3_rdport_adr;
wire [23:0] videooutsoc_sdram_bankmachine3_rdport_dat_r;
wire videooutsoc_sdram_bankmachine3_fifo_in_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine3_fifo_in_payload_adr;
wire videooutsoc_sdram_bankmachine3_fifo_in_first;
wire videooutsoc_sdram_bankmachine3_fifo_in_last;
wire videooutsoc_sdram_bankmachine3_fifo_out_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine3_fifo_out_payload_adr;
wire videooutsoc_sdram_bankmachine3_fifo_out_first;
wire videooutsoc_sdram_bankmachine3_fifo_out_last;
reg videooutsoc_sdram_bankmachine3_has_openrow = 1'd0;
reg [13:0] videooutsoc_sdram_bankmachine3_openrow = 14'd0;
wire videooutsoc_sdram_bankmachine3_hit;
reg videooutsoc_sdram_bankmachine3_track_open = 1'd0;
reg videooutsoc_sdram_bankmachine3_track_close = 1'd0;
reg videooutsoc_sdram_bankmachine3_sel_row_adr = 1'd0;
wire videooutsoc_sdram_bankmachine3_wait;
wire videooutsoc_sdram_bankmachine3_done;
reg [2:0] videooutsoc_sdram_bankmachine3_count = 3'd5;
wire videooutsoc_sdram_bankmachine4_req_valid;
wire videooutsoc_sdram_bankmachine4_req_ready;
wire videooutsoc_sdram_bankmachine4_req_we;
wire [20:0] videooutsoc_sdram_bankmachine4_req_adr;
wire videooutsoc_sdram_bankmachine4_req_lock;
reg videooutsoc_sdram_bankmachine4_req_wdata_ready = 1'd0;
reg videooutsoc_sdram_bankmachine4_req_rdata_valid = 1'd0;
wire videooutsoc_sdram_bankmachine4_refresh_req;
reg videooutsoc_sdram_bankmachine4_refresh_gnt = 1'd0;
reg videooutsoc_sdram_bankmachine4_cmd_valid = 1'd0;
reg videooutsoc_sdram_bankmachine4_cmd_ready = 1'd0;
reg [13:0] videooutsoc_sdram_bankmachine4_cmd_payload_a = 14'd0;
wire [2:0] videooutsoc_sdram_bankmachine4_cmd_payload_ba;
reg videooutsoc_sdram_bankmachine4_cmd_payload_cas = 1'd0;
reg videooutsoc_sdram_bankmachine4_cmd_payload_ras = 1'd0;
reg videooutsoc_sdram_bankmachine4_cmd_payload_we = 1'd0;
reg videooutsoc_sdram_bankmachine4_cmd_payload_is_cmd = 1'd0;
reg videooutsoc_sdram_bankmachine4_cmd_payload_is_read = 1'd0;
reg videooutsoc_sdram_bankmachine4_cmd_payload_is_write = 1'd0;
wire videooutsoc_sdram_bankmachine4_sink_valid;
wire videooutsoc_sdram_bankmachine4_sink_ready;
reg videooutsoc_sdram_bankmachine4_sink_first = 1'd0;
reg videooutsoc_sdram_bankmachine4_sink_last = 1'd0;
wire videooutsoc_sdram_bankmachine4_sink_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine4_sink_payload_adr;
wire videooutsoc_sdram_bankmachine4_source_valid;
wire videooutsoc_sdram_bankmachine4_source_ready;
wire videooutsoc_sdram_bankmachine4_source_first;
wire videooutsoc_sdram_bankmachine4_source_last;
wire videooutsoc_sdram_bankmachine4_source_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine4_source_payload_adr;
wire videooutsoc_sdram_bankmachine4_syncfifo4_we;
wire videooutsoc_sdram_bankmachine4_syncfifo4_writable;
wire videooutsoc_sdram_bankmachine4_syncfifo4_re;
wire videooutsoc_sdram_bankmachine4_syncfifo4_readable;
wire [23:0] videooutsoc_sdram_bankmachine4_syncfifo4_din;
wire [23:0] videooutsoc_sdram_bankmachine4_syncfifo4_dout;
reg [3:0] videooutsoc_sdram_bankmachine4_level = 4'd0;
reg videooutsoc_sdram_bankmachine4_replace = 1'd0;
reg [2:0] videooutsoc_sdram_bankmachine4_produce = 3'd0;
reg [2:0] videooutsoc_sdram_bankmachine4_consume = 3'd0;
reg [2:0] videooutsoc_sdram_bankmachine4_wrport_adr = 3'd0;
wire [23:0] videooutsoc_sdram_bankmachine4_wrport_dat_r;
wire videooutsoc_sdram_bankmachine4_wrport_we;
wire [23:0] videooutsoc_sdram_bankmachine4_wrport_dat_w;
wire videooutsoc_sdram_bankmachine4_do_read;
wire [2:0] videooutsoc_sdram_bankmachine4_rdport_adr;
wire [23:0] videooutsoc_sdram_bankmachine4_rdport_dat_r;
wire videooutsoc_sdram_bankmachine4_fifo_in_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine4_fifo_in_payload_adr;
wire videooutsoc_sdram_bankmachine4_fifo_in_first;
wire videooutsoc_sdram_bankmachine4_fifo_in_last;
wire videooutsoc_sdram_bankmachine4_fifo_out_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine4_fifo_out_payload_adr;
wire videooutsoc_sdram_bankmachine4_fifo_out_first;
wire videooutsoc_sdram_bankmachine4_fifo_out_last;
reg videooutsoc_sdram_bankmachine4_has_openrow = 1'd0;
reg [13:0] videooutsoc_sdram_bankmachine4_openrow = 14'd0;
wire videooutsoc_sdram_bankmachine4_hit;
reg videooutsoc_sdram_bankmachine4_track_open = 1'd0;
reg videooutsoc_sdram_bankmachine4_track_close = 1'd0;
reg videooutsoc_sdram_bankmachine4_sel_row_adr = 1'd0;
wire videooutsoc_sdram_bankmachine4_wait;
wire videooutsoc_sdram_bankmachine4_done;
reg [2:0] videooutsoc_sdram_bankmachine4_count = 3'd5;
wire videooutsoc_sdram_bankmachine5_req_valid;
wire videooutsoc_sdram_bankmachine5_req_ready;
wire videooutsoc_sdram_bankmachine5_req_we;
wire [20:0] videooutsoc_sdram_bankmachine5_req_adr;
wire videooutsoc_sdram_bankmachine5_req_lock;
reg videooutsoc_sdram_bankmachine5_req_wdata_ready = 1'd0;
reg videooutsoc_sdram_bankmachine5_req_rdata_valid = 1'd0;
wire videooutsoc_sdram_bankmachine5_refresh_req;
reg videooutsoc_sdram_bankmachine5_refresh_gnt = 1'd0;
reg videooutsoc_sdram_bankmachine5_cmd_valid = 1'd0;
reg videooutsoc_sdram_bankmachine5_cmd_ready = 1'd0;
reg [13:0] videooutsoc_sdram_bankmachine5_cmd_payload_a = 14'd0;
wire [2:0] videooutsoc_sdram_bankmachine5_cmd_payload_ba;
reg videooutsoc_sdram_bankmachine5_cmd_payload_cas = 1'd0;
reg videooutsoc_sdram_bankmachine5_cmd_payload_ras = 1'd0;
reg videooutsoc_sdram_bankmachine5_cmd_payload_we = 1'd0;
reg videooutsoc_sdram_bankmachine5_cmd_payload_is_cmd = 1'd0;
reg videooutsoc_sdram_bankmachine5_cmd_payload_is_read = 1'd0;
reg videooutsoc_sdram_bankmachine5_cmd_payload_is_write = 1'd0;
wire videooutsoc_sdram_bankmachine5_sink_valid;
wire videooutsoc_sdram_bankmachine5_sink_ready;
reg videooutsoc_sdram_bankmachine5_sink_first = 1'd0;
reg videooutsoc_sdram_bankmachine5_sink_last = 1'd0;
wire videooutsoc_sdram_bankmachine5_sink_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine5_sink_payload_adr;
wire videooutsoc_sdram_bankmachine5_source_valid;
wire videooutsoc_sdram_bankmachine5_source_ready;
wire videooutsoc_sdram_bankmachine5_source_first;
wire videooutsoc_sdram_bankmachine5_source_last;
wire videooutsoc_sdram_bankmachine5_source_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine5_source_payload_adr;
wire videooutsoc_sdram_bankmachine5_syncfifo5_we;
wire videooutsoc_sdram_bankmachine5_syncfifo5_writable;
wire videooutsoc_sdram_bankmachine5_syncfifo5_re;
wire videooutsoc_sdram_bankmachine5_syncfifo5_readable;
wire [23:0] videooutsoc_sdram_bankmachine5_syncfifo5_din;
wire [23:0] videooutsoc_sdram_bankmachine5_syncfifo5_dout;
reg [3:0] videooutsoc_sdram_bankmachine5_level = 4'd0;
reg videooutsoc_sdram_bankmachine5_replace = 1'd0;
reg [2:0] videooutsoc_sdram_bankmachine5_produce = 3'd0;
reg [2:0] videooutsoc_sdram_bankmachine5_consume = 3'd0;
reg [2:0] videooutsoc_sdram_bankmachine5_wrport_adr = 3'd0;
wire [23:0] videooutsoc_sdram_bankmachine5_wrport_dat_r;
wire videooutsoc_sdram_bankmachine5_wrport_we;
wire [23:0] videooutsoc_sdram_bankmachine5_wrport_dat_w;
wire videooutsoc_sdram_bankmachine5_do_read;
wire [2:0] videooutsoc_sdram_bankmachine5_rdport_adr;
wire [23:0] videooutsoc_sdram_bankmachine5_rdport_dat_r;
wire videooutsoc_sdram_bankmachine5_fifo_in_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine5_fifo_in_payload_adr;
wire videooutsoc_sdram_bankmachine5_fifo_in_first;
wire videooutsoc_sdram_bankmachine5_fifo_in_last;
wire videooutsoc_sdram_bankmachine5_fifo_out_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine5_fifo_out_payload_adr;
wire videooutsoc_sdram_bankmachine5_fifo_out_first;
wire videooutsoc_sdram_bankmachine5_fifo_out_last;
reg videooutsoc_sdram_bankmachine5_has_openrow = 1'd0;
reg [13:0] videooutsoc_sdram_bankmachine5_openrow = 14'd0;
wire videooutsoc_sdram_bankmachine5_hit;
reg videooutsoc_sdram_bankmachine5_track_open = 1'd0;
reg videooutsoc_sdram_bankmachine5_track_close = 1'd0;
reg videooutsoc_sdram_bankmachine5_sel_row_adr = 1'd0;
wire videooutsoc_sdram_bankmachine5_wait;
wire videooutsoc_sdram_bankmachine5_done;
reg [2:0] videooutsoc_sdram_bankmachine5_count = 3'd5;
wire videooutsoc_sdram_bankmachine6_req_valid;
wire videooutsoc_sdram_bankmachine6_req_ready;
wire videooutsoc_sdram_bankmachine6_req_we;
wire [20:0] videooutsoc_sdram_bankmachine6_req_adr;
wire videooutsoc_sdram_bankmachine6_req_lock;
reg videooutsoc_sdram_bankmachine6_req_wdata_ready = 1'd0;
reg videooutsoc_sdram_bankmachine6_req_rdata_valid = 1'd0;
wire videooutsoc_sdram_bankmachine6_refresh_req;
reg videooutsoc_sdram_bankmachine6_refresh_gnt = 1'd0;
reg videooutsoc_sdram_bankmachine6_cmd_valid = 1'd0;
reg videooutsoc_sdram_bankmachine6_cmd_ready = 1'd0;
reg [13:0] videooutsoc_sdram_bankmachine6_cmd_payload_a = 14'd0;
wire [2:0] videooutsoc_sdram_bankmachine6_cmd_payload_ba;
reg videooutsoc_sdram_bankmachine6_cmd_payload_cas = 1'd0;
reg videooutsoc_sdram_bankmachine6_cmd_payload_ras = 1'd0;
reg videooutsoc_sdram_bankmachine6_cmd_payload_we = 1'd0;
reg videooutsoc_sdram_bankmachine6_cmd_payload_is_cmd = 1'd0;
reg videooutsoc_sdram_bankmachine6_cmd_payload_is_read = 1'd0;
reg videooutsoc_sdram_bankmachine6_cmd_payload_is_write = 1'd0;
wire videooutsoc_sdram_bankmachine6_sink_valid;
wire videooutsoc_sdram_bankmachine6_sink_ready;
reg videooutsoc_sdram_bankmachine6_sink_first = 1'd0;
reg videooutsoc_sdram_bankmachine6_sink_last = 1'd0;
wire videooutsoc_sdram_bankmachine6_sink_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine6_sink_payload_adr;
wire videooutsoc_sdram_bankmachine6_source_valid;
wire videooutsoc_sdram_bankmachine6_source_ready;
wire videooutsoc_sdram_bankmachine6_source_first;
wire videooutsoc_sdram_bankmachine6_source_last;
wire videooutsoc_sdram_bankmachine6_source_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine6_source_payload_adr;
wire videooutsoc_sdram_bankmachine6_syncfifo6_we;
wire videooutsoc_sdram_bankmachine6_syncfifo6_writable;
wire videooutsoc_sdram_bankmachine6_syncfifo6_re;
wire videooutsoc_sdram_bankmachine6_syncfifo6_readable;
wire [23:0] videooutsoc_sdram_bankmachine6_syncfifo6_din;
wire [23:0] videooutsoc_sdram_bankmachine6_syncfifo6_dout;
reg [3:0] videooutsoc_sdram_bankmachine6_level = 4'd0;
reg videooutsoc_sdram_bankmachine6_replace = 1'd0;
reg [2:0] videooutsoc_sdram_bankmachine6_produce = 3'd0;
reg [2:0] videooutsoc_sdram_bankmachine6_consume = 3'd0;
reg [2:0] videooutsoc_sdram_bankmachine6_wrport_adr = 3'd0;
wire [23:0] videooutsoc_sdram_bankmachine6_wrport_dat_r;
wire videooutsoc_sdram_bankmachine6_wrport_we;
wire [23:0] videooutsoc_sdram_bankmachine6_wrport_dat_w;
wire videooutsoc_sdram_bankmachine6_do_read;
wire [2:0] videooutsoc_sdram_bankmachine6_rdport_adr;
wire [23:0] videooutsoc_sdram_bankmachine6_rdport_dat_r;
wire videooutsoc_sdram_bankmachine6_fifo_in_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine6_fifo_in_payload_adr;
wire videooutsoc_sdram_bankmachine6_fifo_in_first;
wire videooutsoc_sdram_bankmachine6_fifo_in_last;
wire videooutsoc_sdram_bankmachine6_fifo_out_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine6_fifo_out_payload_adr;
wire videooutsoc_sdram_bankmachine6_fifo_out_first;
wire videooutsoc_sdram_bankmachine6_fifo_out_last;
reg videooutsoc_sdram_bankmachine6_has_openrow = 1'd0;
reg [13:0] videooutsoc_sdram_bankmachine6_openrow = 14'd0;
wire videooutsoc_sdram_bankmachine6_hit;
reg videooutsoc_sdram_bankmachine6_track_open = 1'd0;
reg videooutsoc_sdram_bankmachine6_track_close = 1'd0;
reg videooutsoc_sdram_bankmachine6_sel_row_adr = 1'd0;
wire videooutsoc_sdram_bankmachine6_wait;
wire videooutsoc_sdram_bankmachine6_done;
reg [2:0] videooutsoc_sdram_bankmachine6_count = 3'd5;
wire videooutsoc_sdram_bankmachine7_req_valid;
wire videooutsoc_sdram_bankmachine7_req_ready;
wire videooutsoc_sdram_bankmachine7_req_we;
wire [20:0] videooutsoc_sdram_bankmachine7_req_adr;
wire videooutsoc_sdram_bankmachine7_req_lock;
reg videooutsoc_sdram_bankmachine7_req_wdata_ready = 1'd0;
reg videooutsoc_sdram_bankmachine7_req_rdata_valid = 1'd0;
wire videooutsoc_sdram_bankmachine7_refresh_req;
reg videooutsoc_sdram_bankmachine7_refresh_gnt = 1'd0;
reg videooutsoc_sdram_bankmachine7_cmd_valid = 1'd0;
reg videooutsoc_sdram_bankmachine7_cmd_ready = 1'd0;
reg [13:0] videooutsoc_sdram_bankmachine7_cmd_payload_a = 14'd0;
wire [2:0] videooutsoc_sdram_bankmachine7_cmd_payload_ba;
reg videooutsoc_sdram_bankmachine7_cmd_payload_cas = 1'd0;
reg videooutsoc_sdram_bankmachine7_cmd_payload_ras = 1'd0;
reg videooutsoc_sdram_bankmachine7_cmd_payload_we = 1'd0;
reg videooutsoc_sdram_bankmachine7_cmd_payload_is_cmd = 1'd0;
reg videooutsoc_sdram_bankmachine7_cmd_payload_is_read = 1'd0;
reg videooutsoc_sdram_bankmachine7_cmd_payload_is_write = 1'd0;
wire videooutsoc_sdram_bankmachine7_sink_valid;
wire videooutsoc_sdram_bankmachine7_sink_ready;
reg videooutsoc_sdram_bankmachine7_sink_first = 1'd0;
reg videooutsoc_sdram_bankmachine7_sink_last = 1'd0;
wire videooutsoc_sdram_bankmachine7_sink_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine7_sink_payload_adr;
wire videooutsoc_sdram_bankmachine7_source_valid;
wire videooutsoc_sdram_bankmachine7_source_ready;
wire videooutsoc_sdram_bankmachine7_source_first;
wire videooutsoc_sdram_bankmachine7_source_last;
wire videooutsoc_sdram_bankmachine7_source_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine7_source_payload_adr;
wire videooutsoc_sdram_bankmachine7_syncfifo7_we;
wire videooutsoc_sdram_bankmachine7_syncfifo7_writable;
wire videooutsoc_sdram_bankmachine7_syncfifo7_re;
wire videooutsoc_sdram_bankmachine7_syncfifo7_readable;
wire [23:0] videooutsoc_sdram_bankmachine7_syncfifo7_din;
wire [23:0] videooutsoc_sdram_bankmachine7_syncfifo7_dout;
reg [3:0] videooutsoc_sdram_bankmachine7_level = 4'd0;
reg videooutsoc_sdram_bankmachine7_replace = 1'd0;
reg [2:0] videooutsoc_sdram_bankmachine7_produce = 3'd0;
reg [2:0] videooutsoc_sdram_bankmachine7_consume = 3'd0;
reg [2:0] videooutsoc_sdram_bankmachine7_wrport_adr = 3'd0;
wire [23:0] videooutsoc_sdram_bankmachine7_wrport_dat_r;
wire videooutsoc_sdram_bankmachine7_wrport_we;
wire [23:0] videooutsoc_sdram_bankmachine7_wrport_dat_w;
wire videooutsoc_sdram_bankmachine7_do_read;
wire [2:0] videooutsoc_sdram_bankmachine7_rdport_adr;
wire [23:0] videooutsoc_sdram_bankmachine7_rdport_dat_r;
wire videooutsoc_sdram_bankmachine7_fifo_in_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine7_fifo_in_payload_adr;
wire videooutsoc_sdram_bankmachine7_fifo_in_first;
wire videooutsoc_sdram_bankmachine7_fifo_in_last;
wire videooutsoc_sdram_bankmachine7_fifo_out_payload_we;
wire [20:0] videooutsoc_sdram_bankmachine7_fifo_out_payload_adr;
wire videooutsoc_sdram_bankmachine7_fifo_out_first;
wire videooutsoc_sdram_bankmachine7_fifo_out_last;
reg videooutsoc_sdram_bankmachine7_has_openrow = 1'd0;
reg [13:0] videooutsoc_sdram_bankmachine7_openrow = 14'd0;
wire videooutsoc_sdram_bankmachine7_hit;
reg videooutsoc_sdram_bankmachine7_track_open = 1'd0;
reg videooutsoc_sdram_bankmachine7_track_close = 1'd0;
reg videooutsoc_sdram_bankmachine7_sel_row_adr = 1'd0;
wire videooutsoc_sdram_bankmachine7_wait;
wire videooutsoc_sdram_bankmachine7_done;
reg [2:0] videooutsoc_sdram_bankmachine7_count = 3'd5;
reg videooutsoc_sdram_choose_cmd_want_reads = 1'd0;
reg videooutsoc_sdram_choose_cmd_want_writes = 1'd0;
reg videooutsoc_sdram_choose_cmd_want_cmds = 1'd0;
wire videooutsoc_sdram_choose_cmd_cmd_valid;
reg videooutsoc_sdram_choose_cmd_cmd_ready = 1'd0;
wire [13:0] videooutsoc_sdram_choose_cmd_cmd_payload_a;
wire [2:0] videooutsoc_sdram_choose_cmd_cmd_payload_ba;
reg videooutsoc_sdram_choose_cmd_cmd_payload_cas = 1'd0;
reg videooutsoc_sdram_choose_cmd_cmd_payload_ras = 1'd0;
reg videooutsoc_sdram_choose_cmd_cmd_payload_we = 1'd0;
wire videooutsoc_sdram_choose_cmd_cmd_payload_is_cmd;
wire videooutsoc_sdram_choose_cmd_cmd_payload_is_read;
wire videooutsoc_sdram_choose_cmd_cmd_payload_is_write;
reg [7:0] videooutsoc_sdram_choose_cmd_valids = 8'd0;
wire [7:0] videooutsoc_sdram_choose_cmd_request;
reg [2:0] videooutsoc_sdram_choose_cmd_grant = 3'd0;
wire videooutsoc_sdram_choose_cmd_ce;
reg videooutsoc_sdram_choose_req_want_reads = 1'd0;
reg videooutsoc_sdram_choose_req_want_writes = 1'd0;
reg videooutsoc_sdram_choose_req_want_cmds = 1'd0;
wire videooutsoc_sdram_choose_req_cmd_valid;
reg videooutsoc_sdram_choose_req_cmd_ready = 1'd0;
wire [13:0] videooutsoc_sdram_choose_req_cmd_payload_a;
wire [2:0] videooutsoc_sdram_choose_req_cmd_payload_ba;
reg videooutsoc_sdram_choose_req_cmd_payload_cas = 1'd0;
reg videooutsoc_sdram_choose_req_cmd_payload_ras = 1'd0;
reg videooutsoc_sdram_choose_req_cmd_payload_we = 1'd0;
wire videooutsoc_sdram_choose_req_cmd_payload_is_cmd;
wire videooutsoc_sdram_choose_req_cmd_payload_is_read;
wire videooutsoc_sdram_choose_req_cmd_payload_is_write;
reg [7:0] videooutsoc_sdram_choose_req_valids = 8'd0;
wire [7:0] videooutsoc_sdram_choose_req_request;
reg [2:0] videooutsoc_sdram_choose_req_grant = 3'd0;
wire videooutsoc_sdram_choose_req_ce;
reg [13:0] videooutsoc_sdram_nop_a = 14'd0;
reg [2:0] videooutsoc_sdram_nop_ba = 3'd0;
reg videooutsoc_sdram_nop_cas = 1'd0;
reg videooutsoc_sdram_nop_ras = 1'd0;
reg videooutsoc_sdram_nop_we = 1'd0;
reg [1:0] videooutsoc_sdram_sel0 = 2'd0;
reg [1:0] videooutsoc_sdram_sel1 = 2'd0;
reg [1:0] videooutsoc_sdram_sel2 = 2'd0;
reg [1:0] videooutsoc_sdram_sel3 = 2'd0;
wire videooutsoc_sdram_read_available;
wire videooutsoc_sdram_write_available;
reg videooutsoc_sdram_en0 = 1'd0;
wire videooutsoc_sdram_max_time0;
reg [4:0] videooutsoc_sdram_time0 = 5'd0;
reg videooutsoc_sdram_en1 = 1'd0;
wire videooutsoc_sdram_max_time1;
reg [3:0] videooutsoc_sdram_time1 = 4'd0;
wire videooutsoc_sdram_go_to_refresh;
wire videooutsoc_sdram_bandwidth_update_re;
wire videooutsoc_sdram_bandwidth_update_r;
reg videooutsoc_sdram_bandwidth_update_w = 1'd0;
reg [23:0] videooutsoc_sdram_bandwidth_nreads_status = 24'd0;
reg [23:0] videooutsoc_sdram_bandwidth_nwrites_status = 24'd0;
reg [8:0] videooutsoc_sdram_bandwidth_data_width_status = 9'd256;
reg videooutsoc_sdram_bandwidth_cmd_valid = 1'd0;
reg videooutsoc_sdram_bandwidth_cmd_ready = 1'd0;
reg videooutsoc_sdram_bandwidth_cmd_is_read = 1'd0;
reg videooutsoc_sdram_bandwidth_cmd_is_write = 1'd0;
reg [23:0] videooutsoc_sdram_bandwidth_counter = 24'd0;
reg videooutsoc_sdram_bandwidth_period = 1'd0;
reg [23:0] videooutsoc_sdram_bandwidth_nreads = 24'd0;
reg [23:0] videooutsoc_sdram_bandwidth_nwrites = 24'd0;
reg [23:0] videooutsoc_sdram_bandwidth_nreads_r = 24'd0;
reg [23:0] videooutsoc_sdram_bandwidth_nwrites_r = 24'd0;
wire [29:0] videooutsoc_interface1_wb_sdram_adr;
wire [31:0] videooutsoc_interface1_wb_sdram_dat_w;
wire [31:0] videooutsoc_interface1_wb_sdram_dat_r;
wire [3:0] videooutsoc_interface1_wb_sdram_sel;
wire videooutsoc_interface1_wb_sdram_cyc;
wire videooutsoc_interface1_wb_sdram_stb;
wire videooutsoc_interface1_wb_sdram_ack;
wire videooutsoc_interface1_wb_sdram_we;
wire [2:0] videooutsoc_interface1_wb_sdram_cti;
wire [1:0] videooutsoc_interface1_wb_sdram_bte;
wire videooutsoc_interface1_wb_sdram_err;
reg videooutsoc_port_cmd_valid = 1'd0;
wire videooutsoc_port_cmd_ready;
reg videooutsoc_port_cmd_payload_we = 1'd0;
wire [23:0] videooutsoc_port_cmd_payload_adr;
reg videooutsoc_port_wdata_valid = 1'd0;
wire videooutsoc_port_wdata_ready;
wire [255:0] videooutsoc_port_wdata_payload_data;
wire [31:0] videooutsoc_port_wdata_payload_we;
wire videooutsoc_port_rdata_valid;
reg videooutsoc_port_rdata_ready = 1'd0;
wire [255:0] videooutsoc_port_rdata_payload_data;
wire [29:0] videooutsoc_interface_adr;
wire [255:0] videooutsoc_interface_dat_w;
wire [255:0] videooutsoc_interface_dat_r;
wire [31:0] videooutsoc_interface_sel;
reg videooutsoc_interface_cyc = 1'd0;
reg videooutsoc_interface_stb = 1'd0;
reg videooutsoc_interface_ack = 1'd0;
reg videooutsoc_interface_we = 1'd0;
wire [7:0] videooutsoc_data_port_adr;
wire [255:0] videooutsoc_data_port_dat_r;
reg [31:0] videooutsoc_data_port_we = 32'd0;
reg [255:0] videooutsoc_data_port_dat_w = 256'd0;
reg videooutsoc_write_from_slave = 1'd0;
reg [2:0] videooutsoc_adr_offset_r = 3'd0;
wire [7:0] videooutsoc_tag_port_adr;
wire [25:0] videooutsoc_tag_port_dat_r;
reg videooutsoc_tag_port_we = 1'd0;
wire [25:0] videooutsoc_tag_port_dat_w;
wire [24:0] videooutsoc_tag_do_tag;
wire videooutsoc_tag_do_dirty;
wire [24:0] videooutsoc_tag_di_tag;
reg videooutsoc_tag_di_dirty = 1'd0;
reg videooutsoc_word_clr = 1'd0;
reg videooutsoc_word_inc = 1'd0;
wire videooutsoc_sys_led;
reg videooutsoc_pcie_led = 1'd0;
reg [31:0] videooutsoc_sys_counter = 32'd0;
wire cmd_valid;
wire cmd_ready;
wire cmd_first;
wire cmd_last;
wire cmd_payload_we;
wire [23:0] cmd_payload_adr;
wire wdata_ready;
reg [255:0] wdata_payload_data = 256'd0;
reg [31:0] wdata_payload_we = 32'd0;
wire rdata_valid;
wire rdata_ready;
reg rdata_first = 1'd0;
reg rdata_last = 1'd0;
wire [255:0] rdata_payload_data;
reg litedramport0_cmd_valid = 1'd0;
wire litedramport0_cmd_ready;
reg litedramport0_cmd_first = 1'd0;
reg litedramport0_cmd_last = 1'd0;
reg litedramport0_cmd_payload_we = 1'd0;
reg [23:0] litedramport0_cmd_payload_adr = 24'd0;
wire litedramport0_rdata_valid;
wire litedramport0_rdata_ready;
wire litedramport0_rdata_first;
wire litedramport0_rdata_last;
wire [255:0] litedramport0_rdata_payload_data;
wire cmd_fifo_sink_valid;
wire cmd_fifo_sink_ready;
wire cmd_fifo_sink_first;
wire cmd_fifo_sink_last;
wire cmd_fifo_sink_payload_we;
wire [23:0] cmd_fifo_sink_payload_adr;
wire cmd_fifo_source_valid;
wire cmd_fifo_source_ready;
wire cmd_fifo_source_first;
wire cmd_fifo_source_last;
wire cmd_fifo_source_payload_we;
wire [23:0] cmd_fifo_source_payload_adr;
wire cmd_fifo_asyncfifo_we;
wire cmd_fifo_asyncfifo_writable;
wire cmd_fifo_asyncfifo_re;
wire cmd_fifo_asyncfifo_readable;
wire [26:0] cmd_fifo_asyncfifo_din;
wire [26:0] cmd_fifo_asyncfifo_dout;
wire cmd_fifo_graycounter0_ce;
(* dont_touch = "true" *) reg [2:0] cmd_fifo_graycounter0_q = 3'd0;
wire [2:0] cmd_fifo_graycounter0_q_next;
reg [2:0] cmd_fifo_graycounter0_q_binary = 3'd0;
reg [2:0] cmd_fifo_graycounter0_q_next_binary = 3'd0;
wire cmd_fifo_graycounter1_ce;
(* dont_touch = "true" *) reg [2:0] cmd_fifo_graycounter1_q = 3'd0;
wire [2:0] cmd_fifo_graycounter1_q_next;
reg [2:0] cmd_fifo_graycounter1_q_binary = 3'd0;
reg [2:0] cmd_fifo_graycounter1_q_next_binary = 3'd0;
wire [2:0] cmd_fifo_produce_rdomain;
wire [2:0] cmd_fifo_consume_wdomain;
wire [1:0] cmd_fifo_wrport_adr;
wire [26:0] cmd_fifo_wrport_dat_r;
wire cmd_fifo_wrport_we;
wire [26:0] cmd_fifo_wrport_dat_w;
wire [1:0] cmd_fifo_rdport_adr;
wire [26:0] cmd_fifo_rdport_dat_r;
wire cmd_fifo_fifo_in_payload_we;
wire [23:0] cmd_fifo_fifo_in_payload_adr;
wire cmd_fifo_fifo_in_first;
wire cmd_fifo_fifo_in_last;
wire cmd_fifo_fifo_out_payload_we;
wire [23:0] cmd_fifo_fifo_out_payload_adr;
wire cmd_fifo_fifo_out_first;
wire cmd_fifo_fifo_out_last;
wire rdata_fifo_sink_valid;
wire rdata_fifo_sink_ready;
wire rdata_fifo_sink_first;
wire rdata_fifo_sink_last;
wire [255:0] rdata_fifo_sink_payload_data;
wire rdata_fifo_source_valid;
wire rdata_fifo_source_ready;
wire rdata_fifo_source_first;
wire rdata_fifo_source_last;
wire [255:0] rdata_fifo_source_payload_data;
wire rdata_fifo_asyncfifo_we;
wire rdata_fifo_asyncfifo_writable;
wire rdata_fifo_asyncfifo_re;
wire rdata_fifo_asyncfifo_readable;
wire [257:0] rdata_fifo_asyncfifo_din;
wire [257:0] rdata_fifo_asyncfifo_dout;
wire rdata_fifo_graycounter0_ce;
(* dont_touch = "true" *) reg [4:0] rdata_fifo_graycounter0_q = 5'd0;
wire [4:0] rdata_fifo_graycounter0_q_next;
reg [4:0] rdata_fifo_graycounter0_q_binary = 5'd0;
reg [4:0] rdata_fifo_graycounter0_q_next_binary = 5'd0;
wire rdata_fifo_graycounter1_ce;
(* dont_touch = "true" *) reg [4:0] rdata_fifo_graycounter1_q = 5'd0;
wire [4:0] rdata_fifo_graycounter1_q_next;
reg [4:0] rdata_fifo_graycounter1_q_binary = 5'd0;
reg [4:0] rdata_fifo_graycounter1_q_next_binary = 5'd0;
wire [4:0] rdata_fifo_produce_rdomain;
wire [4:0] rdata_fifo_consume_wdomain;
wire [3:0] rdata_fifo_wrport_adr;
wire [257:0] rdata_fifo_wrport_dat_r;
wire rdata_fifo_wrport_we;
wire [257:0] rdata_fifo_wrport_dat_w;
wire [3:0] rdata_fifo_rdport_adr;
wire [257:0] rdata_fifo_rdport_dat_r;
wire [255:0] rdata_fifo_fifo_in_payload_data;
wire rdata_fifo_fifo_in_first;
wire rdata_fifo_fifo_in_last;
wire [255:0] rdata_fifo_fifo_out_payload_data;
wire rdata_fifo_fifo_out_first;
wire rdata_fifo_fifo_out_last;
wire litedramport1_cmd_valid;
reg litedramport1_cmd_ready = 1'd0;
wire litedramport1_cmd_payload_we;
wire [27:0] litedramport1_cmd_payload_adr;
reg litedramport1_rdata_valid = 1'd0;
wire litedramport1_rdata_ready;
reg litedramport1_rdata_first = 1'd0;
reg litedramport1_rdata_last = 1'd0;
reg [15:0] litedramport1_rdata_payload_data = 16'd0;
reg litedramport1_flush = 1'd0;
reg cmd_buffer_sink_valid = 1'd0;
wire cmd_buffer_sink_ready;
reg cmd_buffer_sink_first = 1'd0;
reg cmd_buffer_sink_last = 1'd0;
reg [15:0] cmd_buffer_sink_payload_sel = 16'd0;
wire cmd_buffer_source_valid;
wire cmd_buffer_source_ready;
wire cmd_buffer_source_first;
wire cmd_buffer_source_last;
wire [15:0] cmd_buffer_source_payload_sel;
wire cmd_buffer_syncfifo_we;
wire cmd_buffer_syncfifo_writable;
wire cmd_buffer_syncfifo_re;
wire cmd_buffer_syncfifo_readable;
wire [17:0] cmd_buffer_syncfifo_din;
wire [17:0] cmd_buffer_syncfifo_dout;
reg [2:0] cmd_buffer_level = 3'd0;
reg cmd_buffer_replace = 1'd0;
reg [1:0] cmd_buffer_produce = 2'd0;
reg [1:0] cmd_buffer_consume = 2'd0;
reg [1:0] cmd_buffer_wrport_adr = 2'd0;
wire [17:0] cmd_buffer_wrport_dat_r;
wire cmd_buffer_wrport_we;
wire [17:0] cmd_buffer_wrport_dat_w;
wire cmd_buffer_do_read;
wire [1:0] cmd_buffer_rdport_adr;
wire [17:0] cmd_buffer_rdport_dat_r;
wire [15:0] cmd_buffer_fifo_in_payload_sel;
wire cmd_buffer_fifo_in_first;
wire cmd_buffer_fifo_in_last;
wire [15:0] cmd_buffer_fifo_out_payload_sel;
wire cmd_buffer_fifo_out_first;
wire cmd_buffer_fifo_out_last;
reg [3:0] counter = 4'd0;
reg counter_ce = 1'd0;
wire rdata_buffer_sink_valid;
wire rdata_buffer_sink_ready;
wire rdata_buffer_sink_first;
wire rdata_buffer_sink_last;
wire [255:0] rdata_buffer_sink_payload_data;
wire rdata_buffer_source_valid;
wire rdata_buffer_source_ready;
wire rdata_buffer_source_first;
wire rdata_buffer_source_last;
reg [255:0] rdata_buffer_source_payload_data = 256'd0;
wire rdata_buffer_pipe_ce;
wire rdata_buffer_busy;
reg rdata_buffer_valid_n = 1'd0;
reg rdata_buffer_first_n = 1'd0;
reg rdata_buffer_last_n = 1'd0;
wire rdata_converter_sink_valid;
wire rdata_converter_sink_ready;
wire rdata_converter_sink_first;
wire rdata_converter_sink_last;
wire [255:0] rdata_converter_sink_payload_data;
wire rdata_converter_source_valid;
reg rdata_converter_source_ready = 1'd0;
wire rdata_converter_source_first;
wire rdata_converter_source_last;
wire [15:0] rdata_converter_source_payload_data;
wire rdata_converter_converter_sink_valid;
wire rdata_converter_converter_sink_ready;
wire rdata_converter_converter_sink_first;
wire rdata_converter_converter_sink_last;
reg [255:0] rdata_converter_converter_sink_payload_data = 256'd0;
wire rdata_converter_converter_source_valid;
wire rdata_converter_converter_source_ready;
wire rdata_converter_converter_source_first;
wire rdata_converter_converter_source_last;
reg [15:0] rdata_converter_converter_source_payload_data = 16'd0;
wire rdata_converter_converter_source_payload_valid_token_count;
reg [3:0] rdata_converter_converter_mux = 4'd0;
wire rdata_converter_converter_first;
wire rdata_converter_converter_last;
wire rdata_converter_source_source_valid;
wire rdata_converter_source_source_ready;
wire rdata_converter_source_source_first;
wire rdata_converter_source_source_last;
wire [15:0] rdata_converter_source_source_payload_data;
reg [15:0] rdata_chunk = 16'd1;
wire rdata_chunk_valid;
wire hdmi_out0_core_source_source_valid;
wire hdmi_out0_core_source_source_ready;
wire [15:0] hdmi_out0_core_source_source_payload_data;
wire hdmi_out0_core_source_source_param_hsync;
wire hdmi_out0_core_source_source_param_vsync;
wire hdmi_out0_core_source_source_param_de;
reg hdmi_out0_core_underflow_enable_storage_full = 1'd0;
wire hdmi_out0_core_underflow_enable_storage;
reg hdmi_out0_core_underflow_enable_re = 1'd0;
wire hdmi_out0_core_underflow_update_underflow_update_re;
wire hdmi_out0_core_underflow_update_underflow_update_r;
reg hdmi_out0_core_underflow_update_underflow_update_w = 1'd0;
reg [31:0] hdmi_out0_core_underflow_counter_status = 32'd0;
wire hdmi_out0_core_initiator_source_source_valid;
wire hdmi_out0_core_initiator_source_source_ready;
wire hdmi_out0_core_initiator_source_source_first;
wire hdmi_out0_core_initiator_source_source_last;
wire [11:0] hdmi_out0_core_initiator_source_source_payload_hres;
wire [11:0] hdmi_out0_core_initiator_source_source_payload_hsync_start;
wire [11:0] hdmi_out0_core_initiator_source_source_payload_hsync_end;
wire [11:0] hdmi_out0_core_initiator_source_source_payload_hscan;
wire [11:0] hdmi_out0_core_initiator_source_source_payload_vres;
wire [11:0] hdmi_out0_core_initiator_source_source_payload_vsync_start;
wire [11:0] hdmi_out0_core_initiator_source_source_payload_vsync_end;
wire [11:0] hdmi_out0_core_initiator_source_source_payload_vscan;
wire [31:0] hdmi_out0_core_initiator_source_source_payload_base;
wire [31:0] hdmi_out0_core_initiator_source_source_payload_length;
wire hdmi_out0_core_initiator_cdc_sink_valid;
wire hdmi_out0_core_initiator_cdc_sink_ready;
reg hdmi_out0_core_initiator_cdc_sink_first = 1'd0;
reg hdmi_out0_core_initiator_cdc_sink_last = 1'd0;
wire [11:0] hdmi_out0_core_initiator_cdc_sink_payload_hres;
wire [11:0] hdmi_out0_core_initiator_cdc_sink_payload_hsync_start;
wire [11:0] hdmi_out0_core_initiator_cdc_sink_payload_hsync_end;
wire [11:0] hdmi_out0_core_initiator_cdc_sink_payload_hscan;
wire [11:0] hdmi_out0_core_initiator_cdc_sink_payload_vres;
wire [11:0] hdmi_out0_core_initiator_cdc_sink_payload_vsync_start;
wire [11:0] hdmi_out0_core_initiator_cdc_sink_payload_vsync_end;
wire [11:0] hdmi_out0_core_initiator_cdc_sink_payload_vscan;
wire [31:0] hdmi_out0_core_initiator_cdc_sink_payload_base;
wire [31:0] hdmi_out0_core_initiator_cdc_sink_payload_length;
wire hdmi_out0_core_initiator_cdc_source_valid;
wire hdmi_out0_core_initiator_cdc_source_ready;
wire hdmi_out0_core_initiator_cdc_source_first;
wire hdmi_out0_core_initiator_cdc_source_last;
wire [11:0] hdmi_out0_core_initiator_cdc_source_payload_hres;
wire [11:0] hdmi_out0_core_initiator_cdc_source_payload_hsync_start;
wire [11:0] hdmi_out0_core_initiator_cdc_source_payload_hsync_end;
wire [11:0] hdmi_out0_core_initiator_cdc_source_payload_hscan;
wire [11:0] hdmi_out0_core_initiator_cdc_source_payload_vres;
wire [11:0] hdmi_out0_core_initiator_cdc_source_payload_vsync_start;
wire [11:0] hdmi_out0_core_initiator_cdc_source_payload_vsync_end;
wire [11:0] hdmi_out0_core_initiator_cdc_source_payload_vscan;
wire [31:0] hdmi_out0_core_initiator_cdc_source_payload_base;
wire [31:0] hdmi_out0_core_initiator_cdc_source_payload_length;
wire hdmi_out0_core_initiator_cdc_asyncfifo_we;
wire hdmi_out0_core_initiator_cdc_asyncfifo_writable;
wire hdmi_out0_core_initiator_cdc_asyncfifo_re;
wire hdmi_out0_core_initiator_cdc_asyncfifo_readable;
wire [161:0] hdmi_out0_core_initiator_cdc_asyncfifo_din;
wire [161:0] hdmi_out0_core_initiator_cdc_asyncfifo_dout;
wire hdmi_out0_core_initiator_cdc_graycounter0_ce;
(* dont_touch = "true" *) reg [1:0] hdmi_out0_core_initiator_cdc_graycounter0_q = 2'd0;
wire [1:0] hdmi_out0_core_initiator_cdc_graycounter0_q_next;
reg [1:0] hdmi_out0_core_initiator_cdc_graycounter0_q_binary = 2'd0;
reg [1:0] hdmi_out0_core_initiator_cdc_graycounter0_q_next_binary = 2'd0;
wire hdmi_out0_core_initiator_cdc_graycounter1_ce;
(* dont_touch = "true" *) reg [1:0] hdmi_out0_core_initiator_cdc_graycounter1_q = 2'd0;
wire [1:0] hdmi_out0_core_initiator_cdc_graycounter1_q_next;
reg [1:0] hdmi_out0_core_initiator_cdc_graycounter1_q_binary = 2'd0;
reg [1:0] hdmi_out0_core_initiator_cdc_graycounter1_q_next_binary = 2'd0;
wire [1:0] hdmi_out0_core_initiator_cdc_produce_rdomain;
wire [1:0] hdmi_out0_core_initiator_cdc_consume_wdomain;
wire hdmi_out0_core_initiator_cdc_wrport_adr;
wire [161:0] hdmi_out0_core_initiator_cdc_wrport_dat_r;
wire hdmi_out0_core_initiator_cdc_wrport_we;
wire [161:0] hdmi_out0_core_initiator_cdc_wrport_dat_w;
wire hdmi_out0_core_initiator_cdc_rdport_adr;
wire [161:0] hdmi_out0_core_initiator_cdc_rdport_dat_r;
wire [11:0] hdmi_out0_core_initiator_cdc_fifo_in_payload_hres;
wire [11:0] hdmi_out0_core_initiator_cdc_fifo_in_payload_hsync_start;
wire [11:0] hdmi_out0_core_initiator_cdc_fifo_in_payload_hsync_end;
wire [11:0] hdmi_out0_core_initiator_cdc_fifo_in_payload_hscan;
wire [11:0] hdmi_out0_core_initiator_cdc_fifo_in_payload_vres;
wire [11:0] hdmi_out0_core_initiator_cdc_fifo_in_payload_vsync_start;
wire [11:0] hdmi_out0_core_initiator_cdc_fifo_in_payload_vsync_end;
wire [11:0] hdmi_out0_core_initiator_cdc_fifo_in_payload_vscan;
wire [31:0] hdmi_out0_core_initiator_cdc_fifo_in_payload_base;
wire [31:0] hdmi_out0_core_initiator_cdc_fifo_in_payload_length;
wire hdmi_out0_core_initiator_cdc_fifo_in_first;
wire hdmi_out0_core_initiator_cdc_fifo_in_last;
wire [11:0] hdmi_out0_core_initiator_cdc_fifo_out_payload_hres;
wire [11:0] hdmi_out0_core_initiator_cdc_fifo_out_payload_hsync_start;
wire [11:0] hdmi_out0_core_initiator_cdc_fifo_out_payload_hsync_end;
wire [11:0] hdmi_out0_core_initiator_cdc_fifo_out_payload_hscan;
wire [11:0] hdmi_out0_core_initiator_cdc_fifo_out_payload_vres;
wire [11:0] hdmi_out0_core_initiator_cdc_fifo_out_payload_vsync_start;
wire [11:0] hdmi_out0_core_initiator_cdc_fifo_out_payload_vsync_end;
wire [11:0] hdmi_out0_core_initiator_cdc_fifo_out_payload_vscan;
wire [31:0] hdmi_out0_core_initiator_cdc_fifo_out_payload_base;
wire [31:0] hdmi_out0_core_initiator_cdc_fifo_out_payload_length;
wire hdmi_out0_core_initiator_cdc_fifo_out_first;
wire hdmi_out0_core_initiator_cdc_fifo_out_last;
reg hdmi_out0_core_initiator_enable_storage_full = 1'd0;
wire hdmi_out0_core_initiator_enable_storage;
reg hdmi_out0_core_initiator_enable_re = 1'd0;
reg [11:0] hdmi_out0_core_initiator_csrstorage0_storage_full = 12'd0;
wire [11:0] hdmi_out0_core_initiator_csrstorage0_storage;
reg hdmi_out0_core_initiator_csrstorage0_re = 1'd0;
reg [11:0] hdmi_out0_core_initiator_csrstorage1_storage_full = 12'd0;
wire [11:0] hdmi_out0_core_initiator_csrstorage1_storage;
reg hdmi_out0_core_initiator_csrstorage1_re = 1'd0;
reg [11:0] hdmi_out0_core_initiator_csrstorage2_storage_full = 12'd0;
wire [11:0] hdmi_out0_core_initiator_csrstorage2_storage;
reg hdmi_out0_core_initiator_csrstorage2_re = 1'd0;
reg [11:0] hdmi_out0_core_initiator_csrstorage3_storage_full = 12'd0;
wire [11:0] hdmi_out0_core_initiator_csrstorage3_storage;
reg hdmi_out0_core_initiator_csrstorage3_re = 1'd0;
reg [11:0] hdmi_out0_core_initiator_csrstorage4_storage_full = 12'd0;
wire [11:0] hdmi_out0_core_initiator_csrstorage4_storage;
reg hdmi_out0_core_initiator_csrstorage4_re = 1'd0;
reg [11:0] hdmi_out0_core_initiator_csrstorage5_storage_full = 12'd0;
wire [11:0] hdmi_out0_core_initiator_csrstorage5_storage;
reg hdmi_out0_core_initiator_csrstorage5_re = 1'd0;
reg [11:0] hdmi_out0_core_initiator_csrstorage6_storage_full = 12'd0;
wire [11:0] hdmi_out0_core_initiator_csrstorage6_storage;
reg hdmi_out0_core_initiator_csrstorage6_re = 1'd0;
reg [11:0] hdmi_out0_core_initiator_csrstorage7_storage_full = 12'd0;
wire [11:0] hdmi_out0_core_initiator_csrstorage7_storage;
reg hdmi_out0_core_initiator_csrstorage7_re = 1'd0;
reg [31:0] hdmi_out0_core_initiator_csrstorage8_storage_full = 32'd0;
wire [31:0] hdmi_out0_core_initiator_csrstorage8_storage;
reg hdmi_out0_core_initiator_csrstorage8_re = 1'd0;
reg [31:0] hdmi_out0_core_initiator_csrstorage9_storage_full = 32'd0;
wire [31:0] hdmi_out0_core_initiator_csrstorage9_storage;
reg hdmi_out0_core_initiator_csrstorage9_re = 1'd0;
wire hdmi_out0_core_timinggenerator_sink_valid;
wire hdmi_out0_core_timinggenerator_sink_ready;
wire [11:0] hdmi_out0_core_timinggenerator_sink_payload_hres;
wire [11:0] hdmi_out0_core_timinggenerator_sink_payload_hsync_start;
wire [11:0] hdmi_out0_core_timinggenerator_sink_payload_hsync_end;
wire [11:0] hdmi_out0_core_timinggenerator_sink_payload_hscan;
wire [11:0] hdmi_out0_core_timinggenerator_sink_payload_vres;
wire [11:0] hdmi_out0_core_timinggenerator_sink_payload_vsync_start;
wire [11:0] hdmi_out0_core_timinggenerator_sink_payload_vsync_end;
wire [11:0] hdmi_out0_core_timinggenerator_sink_payload_vscan;
reg hdmi_out0_core_timinggenerator_source_valid = 1'd0;
reg hdmi_out0_core_timinggenerator_source_ready = 1'd0;
reg hdmi_out0_core_timinggenerator_source_last = 1'd0;
reg hdmi_out0_core_timinggenerator_source_payload_hsync = 1'd0;
reg hdmi_out0_core_timinggenerator_source_payload_vsync = 1'd0;
reg hdmi_out0_core_timinggenerator_source_payload_de = 1'd0;
reg hdmi_out0_core_timinggenerator_hactive = 1'd0;
reg hdmi_out0_core_timinggenerator_vactive = 1'd0;
reg hdmi_out0_core_timinggenerator_active = 1'd0;
reg [11:0] hdmi_out0_core_timinggenerator_hcounter = 12'd0;
reg [11:0] hdmi_out0_core_timinggenerator_vcounter = 12'd0;
wire hdmi_out0_core_dmareader_sink_valid;
reg hdmi_out0_core_dmareader_sink_ready = 1'd0;
wire [31:0] hdmi_out0_core_dmareader_sink_payload_base;
wire [31:0] hdmi_out0_core_dmareader_sink_payload_length;
wire hdmi_out0_core_dmareader_source_valid;
reg hdmi_out0_core_dmareader_source_ready = 1'd0;
wire hdmi_out0_core_dmareader_source_first;
wire hdmi_out0_core_dmareader_source_last;
wire [15:0] hdmi_out0_core_dmareader_source_payload_data;
reg hdmi_out0_core_dmareader_sink_sink_valid = 1'd0;
wire hdmi_out0_core_dmareader_sink_sink_ready;
wire [27:0] hdmi_out0_core_dmareader_sink_sink_payload_address;
wire hdmi_out0_core_dmareader_source_source_valid;
wire hdmi_out0_core_dmareader_source_source_ready;
wire hdmi_out0_core_dmareader_source_source_first;
wire hdmi_out0_core_dmareader_source_source_last;
wire [15:0] hdmi_out0_core_dmareader_source_source_payload_data;
wire hdmi_out0_core_dmareader_request_enable;
wire hdmi_out0_core_dmareader_request_issued;
wire hdmi_out0_core_dmareader_data_dequeued;
reg [9:0] hdmi_out0_core_dmareader_rsv_level = 10'd0;
wire hdmi_out0_core_dmareader_fifo_sink_valid;
wire hdmi_out0_core_dmareader_fifo_sink_ready;
wire hdmi_out0_core_dmareader_fifo_sink_first;
wire hdmi_out0_core_dmareader_fifo_sink_last;
wire [15:0] hdmi_out0_core_dmareader_fifo_sink_payload_data;
wire hdmi_out0_core_dmareader_fifo_source_valid;
wire hdmi_out0_core_dmareader_fifo_source_ready;
wire hdmi_out0_core_dmareader_fifo_source_first;
wire hdmi_out0_core_dmareader_fifo_source_last;
wire [15:0] hdmi_out0_core_dmareader_fifo_source_payload_data;
wire hdmi_out0_core_dmareader_fifo_re;
reg hdmi_out0_core_dmareader_fifo_readable = 1'd0;
wire hdmi_out0_core_dmareader_fifo_syncfifo_we;
wire hdmi_out0_core_dmareader_fifo_syncfifo_writable;
wire hdmi_out0_core_dmareader_fifo_syncfifo_re;
wire hdmi_out0_core_dmareader_fifo_syncfifo_readable;
wire [17:0] hdmi_out0_core_dmareader_fifo_syncfifo_din;
wire [17:0] hdmi_out0_core_dmareader_fifo_syncfifo_dout;
reg [9:0] hdmi_out0_core_dmareader_fifo_level0 = 10'd0;
reg hdmi_out0_core_dmareader_fifo_replace = 1'd0;
reg [8:0] hdmi_out0_core_dmareader_fifo_produce = 9'd0;
reg [8:0] hdmi_out0_core_dmareader_fifo_consume = 9'd0;
reg [8:0] hdmi_out0_core_dmareader_fifo_wrport_adr = 9'd0;
wire [17:0] hdmi_out0_core_dmareader_fifo_wrport_dat_r;
wire hdmi_out0_core_dmareader_fifo_wrport_we;
wire [17:0] hdmi_out0_core_dmareader_fifo_wrport_dat_w;
wire hdmi_out0_core_dmareader_fifo_do_read;
wire [8:0] hdmi_out0_core_dmareader_fifo_rdport_adr;
wire [17:0] hdmi_out0_core_dmareader_fifo_rdport_dat_r;
wire hdmi_out0_core_dmareader_fifo_rdport_re;
wire [9:0] hdmi_out0_core_dmareader_fifo_level1;
wire [15:0] hdmi_out0_core_dmareader_fifo_fifo_in_payload_data;
wire hdmi_out0_core_dmareader_fifo_fifo_in_first;
wire hdmi_out0_core_dmareader_fifo_fifo_in_last;
wire [15:0] hdmi_out0_core_dmareader_fifo_fifo_out_payload_data;
wire hdmi_out0_core_dmareader_fifo_fifo_out_first;
wire hdmi_out0_core_dmareader_fifo_fifo_out_last;
wire [27:0] hdmi_out0_core_dmareader_base;
wire [27:0] hdmi_out0_core_dmareader_length;
reg [27:0] hdmi_out0_core_dmareader_offset = 28'd0;
wire hdmi_out0_core_underflow_enable;
wire hdmi_out0_core_underflow_update;
reg [31:0] hdmi_out0_core_underflow_counter = 32'd0;
wire hdmi_out0_core_i;
wire hdmi_out0_core_o;
reg hdmi_out0_core_toggle_i = 1'd0;
wire hdmi_out0_core_toggle_o;
reg hdmi_out0_core_toggle_o_r = 1'd0;
wire hdmi_out0_driver_sink_sink_valid;
wire hdmi_out0_driver_sink_sink_ready;
wire hdmi_out0_driver_sink_sink_first;
wire hdmi_out0_driver_sink_sink_last;
wire [7:0] hdmi_out0_driver_sink_sink_payload_r;
wire [7:0] hdmi_out0_driver_sink_sink_payload_g;
wire [7:0] hdmi_out0_driver_sink_sink_payload_b;
wire hdmi_out0_driver_sink_sink_param_hsync;
wire hdmi_out0_driver_sink_sink_param_vsync;
wire hdmi_out0_driver_sink_sink_param_de;
wire pix_clk;
wire pix_rst;
wire pix5x_clk;
reg hdmi_out0_driver_s7hdmioutclocking_mmcm_reset_storage_full = 1'd0;
wire hdmi_out0_driver_s7hdmioutclocking_mmcm_reset_storage;
reg hdmi_out0_driver_s7hdmioutclocking_mmcm_reset_re = 1'd0;
wire hdmi_out0_driver_s7hdmioutclocking_mmcm_read_re;
wire hdmi_out0_driver_s7hdmioutclocking_mmcm_read_r;
reg hdmi_out0_driver_s7hdmioutclocking_mmcm_read_w = 1'd0;
wire hdmi_out0_driver_s7hdmioutclocking_mmcm_write_re;
wire hdmi_out0_driver_s7hdmioutclocking_mmcm_write_r;
reg hdmi_out0_driver_s7hdmioutclocking_mmcm_write_w = 1'd0;
reg hdmi_out0_driver_s7hdmioutclocking_mmcm_drdy_status = 1'd0;
reg [6:0] hdmi_out0_driver_s7hdmioutclocking_mmcm_adr_storage_full = 7'd0;
wire [6:0] hdmi_out0_driver_s7hdmioutclocking_mmcm_adr_storage;
reg hdmi_out0_driver_s7hdmioutclocking_mmcm_adr_re = 1'd0;
reg [15:0] hdmi_out0_driver_s7hdmioutclocking_mmcm_dat_w_storage_full = 16'd0;
wire [15:0] hdmi_out0_driver_s7hdmioutclocking_mmcm_dat_w_storage;
reg hdmi_out0_driver_s7hdmioutclocking_mmcm_dat_w_re = 1'd0;
wire [15:0] hdmi_out0_driver_s7hdmioutclocking_mmcm_dat_r_status;
wire hdmi_out0_driver_s7hdmioutclocking_mmcm_locked;
wire hdmi_out0_driver_s7hdmioutclocking_mmcm_fb;
wire hdmi_out0_driver_s7hdmioutclocking_mmcm_clk0;
wire hdmi_out0_driver_s7hdmioutclocking_mmcm_clk1;
wire hdmi_out0_driver_s7hdmioutclocking_mmcm_drdy;
wire [9:0] hdmi_out0_driver_s7hdmioutclocking_data0;
wire [9:0] hdmi_out0_driver_s7hdmioutclocking_data1;
reg hdmi_out0_driver_s7hdmioutclocking_ce = 1'd0;
wire [1:0] hdmi_out0_driver_s7hdmioutclocking_shift;
wire hdmi_out0_driver_s7hdmioutclocking_pad_se;
reg [9:0] hdmi_out0_driver_s7hdmioutclocking = 10'd31;
wire hdmi_out0_driver_hdmi_phy_sink_valid;
wire hdmi_out0_driver_hdmi_phy_sink_ready;
wire hdmi_out0_driver_hdmi_phy_sink_first;
wire hdmi_out0_driver_hdmi_phy_sink_last;
wire [7:0] hdmi_out0_driver_hdmi_phy_sink_payload_r;
wire [7:0] hdmi_out0_driver_hdmi_phy_sink_payload_g;
wire [7:0] hdmi_out0_driver_hdmi_phy_sink_payload_b;
wire hdmi_out0_driver_hdmi_phy_sink_param_hsync;
wire hdmi_out0_driver_hdmi_phy_sink_param_vsync;
wire hdmi_out0_driver_hdmi_phy_sink_param_de;
wire [7:0] hdmi_out0_driver_hdmi_phy_es0_d0;
wire [1:0] hdmi_out0_driver_hdmi_phy_es0_c;
wire hdmi_out0_driver_hdmi_phy_es0_de;
reg [9:0] hdmi_out0_driver_hdmi_phy_es0_out = 10'd0;
reg [7:0] hdmi_out0_driver_hdmi_phy_es0_d1 = 8'd0;
reg [3:0] hdmi_out0_driver_hdmi_phy_es0_n1d = 4'd0;
reg [8:0] hdmi_out0_driver_hdmi_phy_es0_q_m = 9'd0;
wire hdmi_out0_driver_hdmi_phy_es0_q_m8_n;
reg [8:0] hdmi_out0_driver_hdmi_phy_es0_q_m_r = 9'd0;
reg [3:0] hdmi_out0_driver_hdmi_phy_es0_n0q_m = 4'd0;
reg [3:0] hdmi_out0_driver_hdmi_phy_es0_n1q_m = 4'd0;
reg signed [5:0] hdmi_out0_driver_hdmi_phy_es0_cnt = 6'sd64;
reg [1:0] hdmi_out0_driver_hdmi_phy_es0_new_c0 = 2'd0;
reg hdmi_out0_driver_hdmi_phy_es0_new_de0 = 1'd0;
reg [1:0] hdmi_out0_driver_hdmi_phy_es0_new_c1 = 2'd0;
reg hdmi_out0_driver_hdmi_phy_es0_new_de1 = 1'd0;
reg [1:0] hdmi_out0_driver_hdmi_phy_es0_new_c2 = 2'd0;
reg hdmi_out0_driver_hdmi_phy_es0_new_de2 = 1'd0;
wire [9:0] hdmi_out0_driver_hdmi_phy_es0_data;
reg hdmi_out0_driver_hdmi_phy_es0_ce = 1'd0;
wire [1:0] hdmi_out0_driver_hdmi_phy_es0_shift;
wire hdmi_out0_driver_hdmi_phy_es0_pad_se;
wire [7:0] hdmi_out0_driver_hdmi_phy_es1_d0;
wire [1:0] hdmi_out0_driver_hdmi_phy_es1_c;
wire hdmi_out0_driver_hdmi_phy_es1_de;
reg [9:0] hdmi_out0_driver_hdmi_phy_es1_out = 10'd0;
reg [7:0] hdmi_out0_driver_hdmi_phy_es1_d1 = 8'd0;
reg [3:0] hdmi_out0_driver_hdmi_phy_es1_n1d = 4'd0;
reg [8:0] hdmi_out0_driver_hdmi_phy_es1_q_m = 9'd0;
wire hdmi_out0_driver_hdmi_phy_es1_q_m8_n;
reg [8:0] hdmi_out0_driver_hdmi_phy_es1_q_m_r = 9'd0;
reg [3:0] hdmi_out0_driver_hdmi_phy_es1_n0q_m = 4'd0;
reg [3:0] hdmi_out0_driver_hdmi_phy_es1_n1q_m = 4'd0;
reg signed [5:0] hdmi_out0_driver_hdmi_phy_es1_cnt = 6'sd64;
reg [1:0] hdmi_out0_driver_hdmi_phy_es1_new_c0 = 2'd0;
reg hdmi_out0_driver_hdmi_phy_es1_new_de0 = 1'd0;
reg [1:0] hdmi_out0_driver_hdmi_phy_es1_new_c1 = 2'd0;
reg hdmi_out0_driver_hdmi_phy_es1_new_de1 = 1'd0;
reg [1:0] hdmi_out0_driver_hdmi_phy_es1_new_c2 = 2'd0;
reg hdmi_out0_driver_hdmi_phy_es1_new_de2 = 1'd0;
wire [9:0] hdmi_out0_driver_hdmi_phy_es1_data;
reg hdmi_out0_driver_hdmi_phy_es1_ce = 1'd0;
wire [1:0] hdmi_out0_driver_hdmi_phy_es1_shift;
wire hdmi_out0_driver_hdmi_phy_es1_pad_se;
wire [7:0] hdmi_out0_driver_hdmi_phy_es2_d0;
wire [1:0] hdmi_out0_driver_hdmi_phy_es2_c;
wire hdmi_out0_driver_hdmi_phy_es2_de;
reg [9:0] hdmi_out0_driver_hdmi_phy_es2_out = 10'd0;
reg [7:0] hdmi_out0_driver_hdmi_phy_es2_d1 = 8'd0;
reg [3:0] hdmi_out0_driver_hdmi_phy_es2_n1d = 4'd0;
reg [8:0] hdmi_out0_driver_hdmi_phy_es2_q_m = 9'd0;
wire hdmi_out0_driver_hdmi_phy_es2_q_m8_n;
reg [8:0] hdmi_out0_driver_hdmi_phy_es2_q_m_r = 9'd0;
reg [3:0] hdmi_out0_driver_hdmi_phy_es2_n0q_m = 4'd0;
reg [3:0] hdmi_out0_driver_hdmi_phy_es2_n1q_m = 4'd0;
reg signed [5:0] hdmi_out0_driver_hdmi_phy_es2_cnt = 6'sd64;
reg [1:0] hdmi_out0_driver_hdmi_phy_es2_new_c0 = 2'd0;
reg hdmi_out0_driver_hdmi_phy_es2_new_de0 = 1'd0;
reg [1:0] hdmi_out0_driver_hdmi_phy_es2_new_c1 = 2'd0;
reg hdmi_out0_driver_hdmi_phy_es2_new_de1 = 1'd0;
reg [1:0] hdmi_out0_driver_hdmi_phy_es2_new_c2 = 2'd0;
reg hdmi_out0_driver_hdmi_phy_es2_new_de2 = 1'd0;
wire [9:0] hdmi_out0_driver_hdmi_phy_es2_data;
reg hdmi_out0_driver_hdmi_phy_es2_ce = 1'd0;
wire [1:0] hdmi_out0_driver_hdmi_phy_es2_shift;
wire hdmi_out0_driver_hdmi_phy_es2_pad_se;
wire hdmi_out0_resetinserter_sink_sink_valid;
reg hdmi_out0_resetinserter_sink_sink_ready = 1'd0;
wire [7:0] hdmi_out0_resetinserter_sink_sink_payload_y;
wire [7:0] hdmi_out0_resetinserter_sink_sink_payload_cb_cr;
wire hdmi_out0_resetinserter_source_source_valid;
wire hdmi_out0_resetinserter_source_source_ready;
reg hdmi_out0_resetinserter_source_source_first = 1'd0;
reg hdmi_out0_resetinserter_source_source_last = 1'd0;
wire [7:0] hdmi_out0_resetinserter_source_source_payload_y;
wire [7:0] hdmi_out0_resetinserter_source_source_payload_cb;
wire [7:0] hdmi_out0_resetinserter_source_source_payload_cr;
reg hdmi_out0_resetinserter_y_fifo_sink_valid = 1'd0;
wire hdmi_out0_resetinserter_y_fifo_sink_ready;
reg hdmi_out0_resetinserter_y_fifo_sink_first = 1'd0;
reg hdmi_out0_resetinserter_y_fifo_sink_last = 1'd0;
reg [7:0] hdmi_out0_resetinserter_y_fifo_sink_payload_data = 8'd0;
wire hdmi_out0_resetinserter_y_fifo_source_valid;
wire hdmi_out0_resetinserter_y_fifo_source_ready;
wire hdmi_out0_resetinserter_y_fifo_source_first;
wire hdmi_out0_resetinserter_y_fifo_source_last;
wire [7:0] hdmi_out0_resetinserter_y_fifo_source_payload_data;
wire hdmi_out0_resetinserter_y_fifo_syncfifo_we;
wire hdmi_out0_resetinserter_y_fifo_syncfifo_writable;
wire hdmi_out0_resetinserter_y_fifo_syncfifo_re;
wire hdmi_out0_resetinserter_y_fifo_syncfifo_readable;
wire [9:0] hdmi_out0_resetinserter_y_fifo_syncfifo_din;
wire [9:0] hdmi_out0_resetinserter_y_fifo_syncfifo_dout;
reg [2:0] hdmi_out0_resetinserter_y_fifo_level = 3'd0;
reg hdmi_out0_resetinserter_y_fifo_replace = 1'd0;
reg [1:0] hdmi_out0_resetinserter_y_fifo_produce = 2'd0;
reg [1:0] hdmi_out0_resetinserter_y_fifo_consume = 2'd0;
reg [1:0] hdmi_out0_resetinserter_y_fifo_wrport_adr = 2'd0;
wire [9:0] hdmi_out0_resetinserter_y_fifo_wrport_dat_r;
wire hdmi_out0_resetinserter_y_fifo_wrport_we;
wire [9:0] hdmi_out0_resetinserter_y_fifo_wrport_dat_w;
wire hdmi_out0_resetinserter_y_fifo_do_read;
wire [1:0] hdmi_out0_resetinserter_y_fifo_rdport_adr;
wire [9:0] hdmi_out0_resetinserter_y_fifo_rdport_dat_r;
wire [7:0] hdmi_out0_resetinserter_y_fifo_fifo_in_payload_data;
wire hdmi_out0_resetinserter_y_fifo_fifo_in_first;
wire hdmi_out0_resetinserter_y_fifo_fifo_in_last;
wire [7:0] hdmi_out0_resetinserter_y_fifo_fifo_out_payload_data;
wire hdmi_out0_resetinserter_y_fifo_fifo_out_first;
wire hdmi_out0_resetinserter_y_fifo_fifo_out_last;
reg hdmi_out0_resetinserter_cb_fifo_sink_valid = 1'd0;
wire hdmi_out0_resetinserter_cb_fifo_sink_ready;
reg hdmi_out0_resetinserter_cb_fifo_sink_first = 1'd0;
reg hdmi_out0_resetinserter_cb_fifo_sink_last = 1'd0;
reg [7:0] hdmi_out0_resetinserter_cb_fifo_sink_payload_data = 8'd0;
wire hdmi_out0_resetinserter_cb_fifo_source_valid;
wire hdmi_out0_resetinserter_cb_fifo_source_ready;
wire hdmi_out0_resetinserter_cb_fifo_source_first;
wire hdmi_out0_resetinserter_cb_fifo_source_last;
wire [7:0] hdmi_out0_resetinserter_cb_fifo_source_payload_data;
wire hdmi_out0_resetinserter_cb_fifo_syncfifo_we;
wire hdmi_out0_resetinserter_cb_fifo_syncfifo_writable;
wire hdmi_out0_resetinserter_cb_fifo_syncfifo_re;
wire hdmi_out0_resetinserter_cb_fifo_syncfifo_readable;
wire [9:0] hdmi_out0_resetinserter_cb_fifo_syncfifo_din;
wire [9:0] hdmi_out0_resetinserter_cb_fifo_syncfifo_dout;
reg [2:0] hdmi_out0_resetinserter_cb_fifo_level = 3'd0;
reg hdmi_out0_resetinserter_cb_fifo_replace = 1'd0;
reg [1:0] hdmi_out0_resetinserter_cb_fifo_produce = 2'd0;
reg [1:0] hdmi_out0_resetinserter_cb_fifo_consume = 2'd0;
reg [1:0] hdmi_out0_resetinserter_cb_fifo_wrport_adr = 2'd0;
wire [9:0] hdmi_out0_resetinserter_cb_fifo_wrport_dat_r;
wire hdmi_out0_resetinserter_cb_fifo_wrport_we;
wire [9:0] hdmi_out0_resetinserter_cb_fifo_wrport_dat_w;
wire hdmi_out0_resetinserter_cb_fifo_do_read;
wire [1:0] hdmi_out0_resetinserter_cb_fifo_rdport_adr;
wire [9:0] hdmi_out0_resetinserter_cb_fifo_rdport_dat_r;
wire [7:0] hdmi_out0_resetinserter_cb_fifo_fifo_in_payload_data;
wire hdmi_out0_resetinserter_cb_fifo_fifo_in_first;
wire hdmi_out0_resetinserter_cb_fifo_fifo_in_last;
wire [7:0] hdmi_out0_resetinserter_cb_fifo_fifo_out_payload_data;
wire hdmi_out0_resetinserter_cb_fifo_fifo_out_first;
wire hdmi_out0_resetinserter_cb_fifo_fifo_out_last;
reg hdmi_out0_resetinserter_cr_fifo_sink_valid = 1'd0;
wire hdmi_out0_resetinserter_cr_fifo_sink_ready;
reg hdmi_out0_resetinserter_cr_fifo_sink_first = 1'd0;
reg hdmi_out0_resetinserter_cr_fifo_sink_last = 1'd0;
reg [7:0] hdmi_out0_resetinserter_cr_fifo_sink_payload_data = 8'd0;
wire hdmi_out0_resetinserter_cr_fifo_source_valid;
wire hdmi_out0_resetinserter_cr_fifo_source_ready;
wire hdmi_out0_resetinserter_cr_fifo_source_first;
wire hdmi_out0_resetinserter_cr_fifo_source_last;
wire [7:0] hdmi_out0_resetinserter_cr_fifo_source_payload_data;
wire hdmi_out0_resetinserter_cr_fifo_syncfifo_we;
wire hdmi_out0_resetinserter_cr_fifo_syncfifo_writable;
wire hdmi_out0_resetinserter_cr_fifo_syncfifo_re;
wire hdmi_out0_resetinserter_cr_fifo_syncfifo_readable;
wire [9:0] hdmi_out0_resetinserter_cr_fifo_syncfifo_din;
wire [9:0] hdmi_out0_resetinserter_cr_fifo_syncfifo_dout;
reg [2:0] hdmi_out0_resetinserter_cr_fifo_level = 3'd0;
reg hdmi_out0_resetinserter_cr_fifo_replace = 1'd0;
reg [1:0] hdmi_out0_resetinserter_cr_fifo_produce = 2'd0;
reg [1:0] hdmi_out0_resetinserter_cr_fifo_consume = 2'd0;
reg [1:0] hdmi_out0_resetinserter_cr_fifo_wrport_adr = 2'd0;
wire [9:0] hdmi_out0_resetinserter_cr_fifo_wrport_dat_r;
wire hdmi_out0_resetinserter_cr_fifo_wrport_we;
wire [9:0] hdmi_out0_resetinserter_cr_fifo_wrport_dat_w;
wire hdmi_out0_resetinserter_cr_fifo_do_read;
wire [1:0] hdmi_out0_resetinserter_cr_fifo_rdport_adr;
wire [9:0] hdmi_out0_resetinserter_cr_fifo_rdport_dat_r;
wire [7:0] hdmi_out0_resetinserter_cr_fifo_fifo_in_payload_data;
wire hdmi_out0_resetinserter_cr_fifo_fifo_in_first;
wire hdmi_out0_resetinserter_cr_fifo_fifo_in_last;
wire [7:0] hdmi_out0_resetinserter_cr_fifo_fifo_out_payload_data;
wire hdmi_out0_resetinserter_cr_fifo_fifo_out_first;
wire hdmi_out0_resetinserter_cr_fifo_fifo_out_last;
reg hdmi_out0_resetinserter_parity_in = 1'd0;
reg hdmi_out0_resetinserter_parity_out = 1'd0;
wire hdmi_out0_resetinserter_reset;
wire hdmi_out0_sink_valid;
wire hdmi_out0_sink_ready;
wire hdmi_out0_sink_first;
wire hdmi_out0_sink_last;
wire [7:0] hdmi_out0_sink_payload_y;
wire [7:0] hdmi_out0_sink_payload_cb;
wire [7:0] hdmi_out0_sink_payload_cr;
wire hdmi_out0_source_valid;
wire hdmi_out0_source_ready;
wire hdmi_out0_source_first;
wire hdmi_out0_source_last;
wire [7:0] hdmi_out0_source_payload_r;
wire [7:0] hdmi_out0_source_payload_g;
wire [7:0] hdmi_out0_source_payload_b;
wire [7:0] hdmi_out0_sink_y;
wire [7:0] hdmi_out0_sink_cb;
wire [7:0] hdmi_out0_sink_cr;
reg [7:0] hdmi_out0_source_r = 8'd0;
reg [7:0] hdmi_out0_source_g = 8'd0;
reg [7:0] hdmi_out0_source_b = 8'd0;
reg [7:0] hdmi_out0_record0_ycbcr_n_y = 8'd0;
reg [7:0] hdmi_out0_record0_ycbcr_n_cb = 8'd0;
reg [7:0] hdmi_out0_record0_ycbcr_n_cr = 8'd0;
reg [7:0] hdmi_out0_record1_ycbcr_n_y = 8'd0;
reg [7:0] hdmi_out0_record1_ycbcr_n_cb = 8'd0;
reg [7:0] hdmi_out0_record1_ycbcr_n_cr = 8'd0;
reg [7:0] hdmi_out0_record2_ycbcr_n_y = 8'd0;
reg [7:0] hdmi_out0_record2_ycbcr_n_cb = 8'd0;
reg [7:0] hdmi_out0_record2_ycbcr_n_cr = 8'd0;
reg [7:0] hdmi_out0_record3_ycbcr_n_y = 8'd0;
reg [7:0] hdmi_out0_record3_ycbcr_n_cb = 8'd0;
reg [7:0] hdmi_out0_record3_ycbcr_n_cr = 8'd0;
reg signed [8:0] hdmi_out0_cb_minus_coffset = 9'sd512;
reg signed [8:0] hdmi_out0_cr_minus_coffset = 9'sd512;
reg signed [8:0] hdmi_out0_y_minus_yoffset = 9'sd512;
reg signed [19:0] hdmi_out0_cr_minus_coffset_mult_acoef = 20'sd1048576;
reg signed [19:0] hdmi_out0_cb_minus_coffset_mult_bcoef = 20'sd1048576;
reg signed [19:0] hdmi_out0_cr_minus_coffset_mult_ccoef = 20'sd1048576;
reg signed [19:0] hdmi_out0_cb_minus_coffset_mult_dcoef = 20'sd1048576;
reg signed [11:0] hdmi_out0_r = 12'sd4096;
reg signed [11:0] hdmi_out0_g = 12'sd4096;
reg signed [11:0] hdmi_out0_b = 12'sd4096;
wire hdmi_out0_ce;
wire hdmi_out0_pipe_ce;
wire hdmi_out0_busy;
reg hdmi_out0_valid_n0 = 1'd0;
reg hdmi_out0_valid_n1 = 1'd0;
reg hdmi_out0_valid_n2 = 1'd0;
reg hdmi_out0_valid_n3 = 1'd0;
reg hdmi_out0_first_n0 = 1'd0;
reg hdmi_out0_last_n0 = 1'd0;
reg hdmi_out0_first_n1 = 1'd0;
reg hdmi_out0_last_n1 = 1'd0;
reg hdmi_out0_first_n2 = 1'd0;
reg hdmi_out0_last_n2 = 1'd0;
reg hdmi_out0_first_n3 = 1'd0;
reg hdmi_out0_last_n3 = 1'd0;
wire hdmi_out0_sink_payload_hsync;
wire hdmi_out0_sink_payload_vsync;
wire hdmi_out0_sink_payload_de;
wire hdmi_out0_source_payload_hsync;
wire hdmi_out0_source_payload_vsync;
wire hdmi_out0_source_payload_de;
reg hdmi_out0_next_s0 = 1'd0;
reg hdmi_out0_next_s1 = 1'd0;
reg hdmi_out0_next_s2 = 1'd0;
reg hdmi_out0_next_s3 = 1'd0;
reg hdmi_out0_next_s4 = 1'd0;
reg hdmi_out0_next_s5 = 1'd0;
reg hdmi_out0_next_s6 = 1'd0;
reg hdmi_out0_next_s7 = 1'd0;
reg hdmi_out0_next_s8 = 1'd0;
reg hdmi_out0_next_s9 = 1'd0;
reg hdmi_out0_next_s10 = 1'd0;
reg hdmi_out0_next_s11 = 1'd0;
reg hdmi_out0_next_s12 = 1'd0;
reg hdmi_out0_next_s13 = 1'd0;
reg hdmi_out0_next_s14 = 1'd0;
reg hdmi_out0_next_s15 = 1'd0;
reg hdmi_out0_next_s16 = 1'd0;
reg hdmi_out0_next_s17 = 1'd0;
reg hdmi_out0_de_r = 1'd0;
reg hdmi_out0_core_source_valid_d = 1'd0;
reg [15:0] hdmi_out0_core_source_data_d = 16'd0;
reg [1:0] refresher_state = 2'd0;
reg [1:0] refresher_next_state = 2'd0;
reg [2:0] bankmachine0_state = 3'd0;
reg [2:0] bankmachine0_next_state = 3'd0;
reg [2:0] bankmachine1_state = 3'd0;
reg [2:0] bankmachine1_next_state = 3'd0;
reg [2:0] bankmachine2_state = 3'd0;
reg [2:0] bankmachine2_next_state = 3'd0;
reg [2:0] bankmachine3_state = 3'd0;
reg [2:0] bankmachine3_next_state = 3'd0;
reg [2:0] bankmachine4_state = 3'd0;
reg [2:0] bankmachine4_next_state = 3'd0;
reg [2:0] bankmachine5_state = 3'd0;
reg [2:0] bankmachine5_next_state = 3'd0;
reg [2:0] bankmachine6_state = 3'd0;
reg [2:0] bankmachine6_next_state = 3'd0;
reg [2:0] bankmachine7_state = 3'd0;
reg [2:0] bankmachine7_next_state = 3'd0;
reg [3:0] multiplexer_state = 4'd0;
reg [3:0] multiplexer_next_state = 4'd0;
wire [2:0] cba0;
wire [20:0] rca0;
wire [2:0] cba1;
wire [20:0] rca1;
wire [1:0] roundrobin0_request;
reg roundrobin0_grant = 1'd0;
wire roundrobin0_ce;
wire [1:0] roundrobin1_request;
reg roundrobin1_grant = 1'd0;
wire roundrobin1_ce;
wire [1:0] roundrobin2_request;
reg roundrobin2_grant = 1'd0;
wire roundrobin2_ce;
wire [1:0] roundrobin3_request;
reg roundrobin3_grant = 1'd0;
wire roundrobin3_ce;
wire [1:0] roundrobin4_request;
reg roundrobin4_grant = 1'd0;
wire roundrobin4_ce;
wire [1:0] roundrobin5_request;
reg roundrobin5_grant = 1'd0;
wire roundrobin5_ce;
wire [1:0] roundrobin6_request;
reg roundrobin6_grant = 1'd0;
wire roundrobin6_ce;
wire [1:0] roundrobin7_request;
reg roundrobin7_grant = 1'd0;
wire roundrobin7_ce;
reg new_master_wdata_ready0 = 1'd0;
reg new_master_wdata_ready1 = 1'd0;
reg new_master_wdata_ready2 = 1'd0;
reg new_master_wdata_ready3 = 1'd0;
reg new_master_wdata_ready4 = 1'd0;
reg new_master_wdata_ready5 = 1'd0;
reg new_master_rdata_valid0 = 1'd0;
reg new_master_rdata_valid1 = 1'd0;
reg new_master_rdata_valid2 = 1'd0;
reg new_master_rdata_valid3 = 1'd0;
reg new_master_rdata_valid4 = 1'd0;
reg new_master_rdata_valid5 = 1'd0;
reg new_master_rdata_valid6 = 1'd0;
reg new_master_rdata_valid7 = 1'd0;
reg new_master_rdata_valid8 = 1'd0;
reg new_master_rdata_valid9 = 1'd0;
reg new_master_rdata_valid10 = 1'd0;
reg new_master_rdata_valid11 = 1'd0;
reg new_master_rdata_valid12 = 1'd0;
reg new_master_rdata_valid13 = 1'd0;
reg [2:0] fullmemorywe_state = 3'd0;
reg [2:0] fullmemorywe_next_state = 3'd0;
reg [1:0] litedramwishbonebridge_state = 2'd0;
reg [1:0] litedramwishbonebridge_next_state = 2'd0;
reg videoout_state = 1'd0;
reg videoout_next_state = 1'd0;
reg [27:0] hdmi_out0_core_dmareader_offset_next_value = 28'd0;
reg hdmi_out0_core_dmareader_offset_next_value_ce = 1'd0;
wire wb_sdram_con_request;
wire wb_sdram_con_grant;
wire [29:0] videooutsoc_shared_adr;
wire [31:0] videooutsoc_shared_dat_w;
wire [31:0] videooutsoc_shared_dat_r;
wire [3:0] videooutsoc_shared_sel;
wire videooutsoc_shared_cyc;
wire videooutsoc_shared_stb;
wire videooutsoc_shared_ack;
wire videooutsoc_shared_we;
wire [2:0] videooutsoc_shared_cti;
wire [1:0] videooutsoc_shared_bte;
wire videooutsoc_shared_err;
wire [1:0] videooutsoc_request;
reg videooutsoc_grant = 1'd0;
reg [3:0] videooutsoc_slave_sel = 4'd0;
reg [3:0] videooutsoc_slave_sel_r = 4'd0;
wire [13:0] videooutsoc_interface0_bank_bus_adr;
wire videooutsoc_interface0_bank_bus_we;
wire [7:0] videooutsoc_interface0_bank_bus_dat_w;
reg [7:0] videooutsoc_interface0_bank_bus_dat_r = 8'd0;
wire videooutsoc_csrbank0_dly_sel0_re;
wire [3:0] videooutsoc_csrbank0_dly_sel0_r;
wire [3:0] videooutsoc_csrbank0_dly_sel0_w;
wire videooutsoc_csrbank0_sel;
wire [13:0] videooutsoc_interface1_bank_bus_adr;
wire videooutsoc_interface1_bank_bus_we;
wire [7:0] videooutsoc_interface1_bank_bus_dat_w;
reg [7:0] videooutsoc_interface1_bank_bus_dat_r = 8'd0;
wire videooutsoc_csrbank1_core_underflow_enable0_re;
wire videooutsoc_csrbank1_core_underflow_enable0_r;
wire videooutsoc_csrbank1_core_underflow_enable0_w;
wire videooutsoc_csrbank1_core_underflow_counter3_re;
wire [7:0] videooutsoc_csrbank1_core_underflow_counter3_r;
wire [7:0] videooutsoc_csrbank1_core_underflow_counter3_w;
wire videooutsoc_csrbank1_core_underflow_counter2_re;
wire [7:0] videooutsoc_csrbank1_core_underflow_counter2_r;
wire [7:0] videooutsoc_csrbank1_core_underflow_counter2_w;
wire videooutsoc_csrbank1_core_underflow_counter1_re;
wire [7:0] videooutsoc_csrbank1_core_underflow_counter1_r;
wire [7:0] videooutsoc_csrbank1_core_underflow_counter1_w;
wire videooutsoc_csrbank1_core_underflow_counter0_re;
wire [7:0] videooutsoc_csrbank1_core_underflow_counter0_r;
wire [7:0] videooutsoc_csrbank1_core_underflow_counter0_w;
wire videooutsoc_csrbank1_core_initiator_enable0_re;
wire videooutsoc_csrbank1_core_initiator_enable0_r;
wire videooutsoc_csrbank1_core_initiator_enable0_w;
reg [3:0] videooutsoc_csrbank1_core_initiator_hres_backstore = 4'd0;
wire videooutsoc_csrbank1_core_initiator_hres1_re;
wire [3:0] videooutsoc_csrbank1_core_initiator_hres1_r;
wire [3:0] videooutsoc_csrbank1_core_initiator_hres1_w;
wire videooutsoc_csrbank1_core_initiator_hres0_re;
wire [7:0] videooutsoc_csrbank1_core_initiator_hres0_r;
wire [7:0] videooutsoc_csrbank1_core_initiator_hres0_w;
reg [3:0] videooutsoc_csrbank1_core_initiator_hsync_start_backstore = 4'd0;
wire videooutsoc_csrbank1_core_initiator_hsync_start1_re;
wire [3:0] videooutsoc_csrbank1_core_initiator_hsync_start1_r;
wire [3:0] videooutsoc_csrbank1_core_initiator_hsync_start1_w;
wire videooutsoc_csrbank1_core_initiator_hsync_start0_re;
wire [7:0] videooutsoc_csrbank1_core_initiator_hsync_start0_r;
wire [7:0] videooutsoc_csrbank1_core_initiator_hsync_start0_w;
reg [3:0] videooutsoc_csrbank1_core_initiator_hsync_end_backstore = 4'd0;
wire videooutsoc_csrbank1_core_initiator_hsync_end1_re;
wire [3:0] videooutsoc_csrbank1_core_initiator_hsync_end1_r;
wire [3:0] videooutsoc_csrbank1_core_initiator_hsync_end1_w;
wire videooutsoc_csrbank1_core_initiator_hsync_end0_re;
wire [7:0] videooutsoc_csrbank1_core_initiator_hsync_end0_r;
wire [7:0] videooutsoc_csrbank1_core_initiator_hsync_end0_w;
reg [3:0] videooutsoc_csrbank1_core_initiator_hscan_backstore = 4'd0;
wire videooutsoc_csrbank1_core_initiator_hscan1_re;
wire [3:0] videooutsoc_csrbank1_core_initiator_hscan1_r;
wire [3:0] videooutsoc_csrbank1_core_initiator_hscan1_w;
wire videooutsoc_csrbank1_core_initiator_hscan0_re;
wire [7:0] videooutsoc_csrbank1_core_initiator_hscan0_r;
wire [7:0] videooutsoc_csrbank1_core_initiator_hscan0_w;
reg [3:0] videooutsoc_csrbank1_core_initiator_vres_backstore = 4'd0;
wire videooutsoc_csrbank1_core_initiator_vres1_re;
wire [3:0] videooutsoc_csrbank1_core_initiator_vres1_r;
wire [3:0] videooutsoc_csrbank1_core_initiator_vres1_w;
wire videooutsoc_csrbank1_core_initiator_vres0_re;
wire [7:0] videooutsoc_csrbank1_core_initiator_vres0_r;
wire [7:0] videooutsoc_csrbank1_core_initiator_vres0_w;
reg [3:0] videooutsoc_csrbank1_core_initiator_vsync_start_backstore = 4'd0;
wire videooutsoc_csrbank1_core_initiator_vsync_start1_re;
wire [3:0] videooutsoc_csrbank1_core_initiator_vsync_start1_r;
wire [3:0] videooutsoc_csrbank1_core_initiator_vsync_start1_w;
wire videooutsoc_csrbank1_core_initiator_vsync_start0_re;
wire [7:0] videooutsoc_csrbank1_core_initiator_vsync_start0_r;
wire [7:0] videooutsoc_csrbank1_core_initiator_vsync_start0_w;
reg [3:0] videooutsoc_csrbank1_core_initiator_vsync_end_backstore = 4'd0;
wire videooutsoc_csrbank1_core_initiator_vsync_end1_re;
wire [3:0] videooutsoc_csrbank1_core_initiator_vsync_end1_r;
wire [3:0] videooutsoc_csrbank1_core_initiator_vsync_end1_w;
wire videooutsoc_csrbank1_core_initiator_vsync_end0_re;
wire [7:0] videooutsoc_csrbank1_core_initiator_vsync_end0_r;
wire [7:0] videooutsoc_csrbank1_core_initiator_vsync_end0_w;
reg [3:0] videooutsoc_csrbank1_core_initiator_vscan_backstore = 4'd0;
wire videooutsoc_csrbank1_core_initiator_vscan1_re;
wire [3:0] videooutsoc_csrbank1_core_initiator_vscan1_r;
wire [3:0] videooutsoc_csrbank1_core_initiator_vscan1_w;
wire videooutsoc_csrbank1_core_initiator_vscan0_re;
wire [7:0] videooutsoc_csrbank1_core_initiator_vscan0_r;
wire [7:0] videooutsoc_csrbank1_core_initiator_vscan0_w;
reg [23:0] videooutsoc_csrbank1_core_initiator_base_backstore = 24'd0;
wire videooutsoc_csrbank1_core_initiator_base3_re;
wire [7:0] videooutsoc_csrbank1_core_initiator_base3_r;
wire [7:0] videooutsoc_csrbank1_core_initiator_base3_w;
wire videooutsoc_csrbank1_core_initiator_base2_re;
wire [7:0] videooutsoc_csrbank1_core_initiator_base2_r;
wire [7:0] videooutsoc_csrbank1_core_initiator_base2_w;
wire videooutsoc_csrbank1_core_initiator_base1_re;
wire [7:0] videooutsoc_csrbank1_core_initiator_base1_r;
wire [7:0] videooutsoc_csrbank1_core_initiator_base1_w;
wire videooutsoc_csrbank1_core_initiator_base0_re;
wire [7:0] videooutsoc_csrbank1_core_initiator_base0_r;
wire [7:0] videooutsoc_csrbank1_core_initiator_base0_w;
reg [23:0] videooutsoc_csrbank1_core_initiator_length_backstore = 24'd0;
wire videooutsoc_csrbank1_core_initiator_length3_re;
wire [7:0] videooutsoc_csrbank1_core_initiator_length3_r;
wire [7:0] videooutsoc_csrbank1_core_initiator_length3_w;
wire videooutsoc_csrbank1_core_initiator_length2_re;
wire [7:0] videooutsoc_csrbank1_core_initiator_length2_r;
wire [7:0] videooutsoc_csrbank1_core_initiator_length2_w;
wire videooutsoc_csrbank1_core_initiator_length1_re;
wire [7:0] videooutsoc_csrbank1_core_initiator_length1_r;
wire [7:0] videooutsoc_csrbank1_core_initiator_length1_w;
wire videooutsoc_csrbank1_core_initiator_length0_re;
wire [7:0] videooutsoc_csrbank1_core_initiator_length0_r;
wire [7:0] videooutsoc_csrbank1_core_initiator_length0_w;
wire videooutsoc_csrbank1_driver_clocking_mmcm_reset0_re;
wire videooutsoc_csrbank1_driver_clocking_mmcm_reset0_r;
wire videooutsoc_csrbank1_driver_clocking_mmcm_reset0_w;
wire videooutsoc_csrbank1_driver_clocking_mmcm_drdy_re;
wire videooutsoc_csrbank1_driver_clocking_mmcm_drdy_r;
wire videooutsoc_csrbank1_driver_clocking_mmcm_drdy_w;
wire videooutsoc_csrbank1_driver_clocking_mmcm_adr0_re;
wire [6:0] videooutsoc_csrbank1_driver_clocking_mmcm_adr0_r;
wire [6:0] videooutsoc_csrbank1_driver_clocking_mmcm_adr0_w;
wire videooutsoc_csrbank1_driver_clocking_mmcm_dat_w1_re;
wire [7:0] videooutsoc_csrbank1_driver_clocking_mmcm_dat_w1_r;
wire [7:0] videooutsoc_csrbank1_driver_clocking_mmcm_dat_w1_w;
wire videooutsoc_csrbank1_driver_clocking_mmcm_dat_w0_re;
wire [7:0] videooutsoc_csrbank1_driver_clocking_mmcm_dat_w0_r;
wire [7:0] videooutsoc_csrbank1_driver_clocking_mmcm_dat_w0_w;
wire videooutsoc_csrbank1_driver_clocking_mmcm_dat_r1_re;
wire [7:0] videooutsoc_csrbank1_driver_clocking_mmcm_dat_r1_r;
wire [7:0] videooutsoc_csrbank1_driver_clocking_mmcm_dat_r1_w;
wire videooutsoc_csrbank1_driver_clocking_mmcm_dat_r0_re;
wire [7:0] videooutsoc_csrbank1_driver_clocking_mmcm_dat_r0_r;
wire [7:0] videooutsoc_csrbank1_driver_clocking_mmcm_dat_r0_w;
wire videooutsoc_csrbank1_sel;
wire [13:0] videooutsoc_sram_bus_adr;
wire videooutsoc_sram_bus_we;
wire [7:0] videooutsoc_sram_bus_dat_w;
reg [7:0] videooutsoc_sram_bus_dat_r = 8'd0;
wire [4:0] videooutsoc_adr;
wire [7:0] videooutsoc_dat_r;
wire videooutsoc_sel;
reg videooutsoc_sel_r = 1'd0;
wire [13:0] videooutsoc_interface2_bank_bus_adr;
wire videooutsoc_interface2_bank_bus_we;
wire [7:0] videooutsoc_interface2_bank_bus_dat_w;
reg [7:0] videooutsoc_interface2_bank_bus_dat_r = 8'd0;
wire videooutsoc_csrbank2_dna_id7_re;
wire videooutsoc_csrbank2_dna_id7_r;
wire videooutsoc_csrbank2_dna_id7_w;
wire videooutsoc_csrbank2_dna_id6_re;
wire [7:0] videooutsoc_csrbank2_dna_id6_r;
wire [7:0] videooutsoc_csrbank2_dna_id6_w;
wire videooutsoc_csrbank2_dna_id5_re;
wire [7:0] videooutsoc_csrbank2_dna_id5_r;
wire [7:0] videooutsoc_csrbank2_dna_id5_w;
wire videooutsoc_csrbank2_dna_id4_re;
wire [7:0] videooutsoc_csrbank2_dna_id4_r;
wire [7:0] videooutsoc_csrbank2_dna_id4_w;
wire videooutsoc_csrbank2_dna_id3_re;
wire [7:0] videooutsoc_csrbank2_dna_id3_r;
wire [7:0] videooutsoc_csrbank2_dna_id3_w;
wire videooutsoc_csrbank2_dna_id2_re;
wire [7:0] videooutsoc_csrbank2_dna_id2_r;
wire [7:0] videooutsoc_csrbank2_dna_id2_w;
wire videooutsoc_csrbank2_dna_id1_re;
wire [7:0] videooutsoc_csrbank2_dna_id1_r;
wire [7:0] videooutsoc_csrbank2_dna_id1_w;
wire videooutsoc_csrbank2_dna_id0_re;
wire [7:0] videooutsoc_csrbank2_dna_id0_r;
wire [7:0] videooutsoc_csrbank2_dna_id0_w;
wire videooutsoc_csrbank2_git_commit19_re;
wire [7:0] videooutsoc_csrbank2_git_commit19_r;
wire [7:0] videooutsoc_csrbank2_git_commit19_w;
wire videooutsoc_csrbank2_git_commit18_re;
wire [7:0] videooutsoc_csrbank2_git_commit18_r;
wire [7:0] videooutsoc_csrbank2_git_commit18_w;
wire videooutsoc_csrbank2_git_commit17_re;
wire [7:0] videooutsoc_csrbank2_git_commit17_r;
wire [7:0] videooutsoc_csrbank2_git_commit17_w;
wire videooutsoc_csrbank2_git_commit16_re;
wire [7:0] videooutsoc_csrbank2_git_commit16_r;
wire [7:0] videooutsoc_csrbank2_git_commit16_w;
wire videooutsoc_csrbank2_git_commit15_re;
wire [7:0] videooutsoc_csrbank2_git_commit15_r;
wire [7:0] videooutsoc_csrbank2_git_commit15_w;
wire videooutsoc_csrbank2_git_commit14_re;
wire [7:0] videooutsoc_csrbank2_git_commit14_r;
wire [7:0] videooutsoc_csrbank2_git_commit14_w;
wire videooutsoc_csrbank2_git_commit13_re;
wire [7:0] videooutsoc_csrbank2_git_commit13_r;
wire [7:0] videooutsoc_csrbank2_git_commit13_w;
wire videooutsoc_csrbank2_git_commit12_re;
wire [7:0] videooutsoc_csrbank2_git_commit12_r;
wire [7:0] videooutsoc_csrbank2_git_commit12_w;
wire videooutsoc_csrbank2_git_commit11_re;
wire [7:0] videooutsoc_csrbank2_git_commit11_r;
wire [7:0] videooutsoc_csrbank2_git_commit11_w;
wire videooutsoc_csrbank2_git_commit10_re;
wire [7:0] videooutsoc_csrbank2_git_commit10_r;
wire [7:0] videooutsoc_csrbank2_git_commit10_w;
wire videooutsoc_csrbank2_git_commit9_re;
wire [7:0] videooutsoc_csrbank2_git_commit9_r;
wire [7:0] videooutsoc_csrbank2_git_commit9_w;
wire videooutsoc_csrbank2_git_commit8_re;
wire [7:0] videooutsoc_csrbank2_git_commit8_r;
wire [7:0] videooutsoc_csrbank2_git_commit8_w;
wire videooutsoc_csrbank2_git_commit7_re;
wire [7:0] videooutsoc_csrbank2_git_commit7_r;
wire [7:0] videooutsoc_csrbank2_git_commit7_w;
wire videooutsoc_csrbank2_git_commit6_re;
wire [7:0] videooutsoc_csrbank2_git_commit6_r;
wire [7:0] videooutsoc_csrbank2_git_commit6_w;
wire videooutsoc_csrbank2_git_commit5_re;
wire [7:0] videooutsoc_csrbank2_git_commit5_r;
wire [7:0] videooutsoc_csrbank2_git_commit5_w;
wire videooutsoc_csrbank2_git_commit4_re;
wire [7:0] videooutsoc_csrbank2_git_commit4_r;
wire [7:0] videooutsoc_csrbank2_git_commit4_w;
wire videooutsoc_csrbank2_git_commit3_re;
wire [7:0] videooutsoc_csrbank2_git_commit3_r;
wire [7:0] videooutsoc_csrbank2_git_commit3_w;
wire videooutsoc_csrbank2_git_commit2_re;
wire [7:0] videooutsoc_csrbank2_git_commit2_r;
wire [7:0] videooutsoc_csrbank2_git_commit2_w;
wire videooutsoc_csrbank2_git_commit1_re;
wire [7:0] videooutsoc_csrbank2_git_commit1_r;
wire [7:0] videooutsoc_csrbank2_git_commit1_w;
wire videooutsoc_csrbank2_git_commit0_re;
wire [7:0] videooutsoc_csrbank2_git_commit0_r;
wire [7:0] videooutsoc_csrbank2_git_commit0_w;
wire videooutsoc_csrbank2_platform_platform7_re;
wire [7:0] videooutsoc_csrbank2_platform_platform7_r;
wire [7:0] videooutsoc_csrbank2_platform_platform7_w;
wire videooutsoc_csrbank2_platform_platform6_re;
wire [7:0] videooutsoc_csrbank2_platform_platform6_r;
wire [7:0] videooutsoc_csrbank2_platform_platform6_w;
wire videooutsoc_csrbank2_platform_platform5_re;
wire [7:0] videooutsoc_csrbank2_platform_platform5_r;
wire [7:0] videooutsoc_csrbank2_platform_platform5_w;
wire videooutsoc_csrbank2_platform_platform4_re;
wire [7:0] videooutsoc_csrbank2_platform_platform4_r;
wire [7:0] videooutsoc_csrbank2_platform_platform4_w;
wire videooutsoc_csrbank2_platform_platform3_re;
wire [7:0] videooutsoc_csrbank2_platform_platform3_r;
wire [7:0] videooutsoc_csrbank2_platform_platform3_w;
wire videooutsoc_csrbank2_platform_platform2_re;
wire [7:0] videooutsoc_csrbank2_platform_platform2_r;
wire [7:0] videooutsoc_csrbank2_platform_platform2_w;
wire videooutsoc_csrbank2_platform_platform1_re;
wire [7:0] videooutsoc_csrbank2_platform_platform1_r;
wire [7:0] videooutsoc_csrbank2_platform_platform1_w;
wire videooutsoc_csrbank2_platform_platform0_re;
wire [7:0] videooutsoc_csrbank2_platform_platform0_r;
wire [7:0] videooutsoc_csrbank2_platform_platform0_w;
wire videooutsoc_csrbank2_platform_target7_re;
wire [7:0] videooutsoc_csrbank2_platform_target7_r;
wire [7:0] videooutsoc_csrbank2_platform_target7_w;
wire videooutsoc_csrbank2_platform_target6_re;
wire [7:0] videooutsoc_csrbank2_platform_target6_r;
wire [7:0] videooutsoc_csrbank2_platform_target6_w;
wire videooutsoc_csrbank2_platform_target5_re;
wire [7:0] videooutsoc_csrbank2_platform_target5_r;
wire [7:0] videooutsoc_csrbank2_platform_target5_w;
wire videooutsoc_csrbank2_platform_target4_re;
wire [7:0] videooutsoc_csrbank2_platform_target4_r;
wire [7:0] videooutsoc_csrbank2_platform_target4_w;
wire videooutsoc_csrbank2_platform_target3_re;
wire [7:0] videooutsoc_csrbank2_platform_target3_r;
wire [7:0] videooutsoc_csrbank2_platform_target3_w;
wire videooutsoc_csrbank2_platform_target2_re;
wire [7:0] videooutsoc_csrbank2_platform_target2_r;
wire [7:0] videooutsoc_csrbank2_platform_target2_w;
wire videooutsoc_csrbank2_platform_target1_re;
wire [7:0] videooutsoc_csrbank2_platform_target1_r;
wire [7:0] videooutsoc_csrbank2_platform_target1_w;
wire videooutsoc_csrbank2_platform_target0_re;
wire [7:0] videooutsoc_csrbank2_platform_target0_r;
wire [7:0] videooutsoc_csrbank2_platform_target0_w;
wire videooutsoc_csrbank2_xadc_temperature1_re;
wire [3:0] videooutsoc_csrbank2_xadc_temperature1_r;
wire [3:0] videooutsoc_csrbank2_xadc_temperature1_w;
wire videooutsoc_csrbank2_xadc_temperature0_re;
wire [7:0] videooutsoc_csrbank2_xadc_temperature0_r;
wire [7:0] videooutsoc_csrbank2_xadc_temperature0_w;
wire videooutsoc_csrbank2_xadc_vccint1_re;
wire [3:0] videooutsoc_csrbank2_xadc_vccint1_r;
wire [3:0] videooutsoc_csrbank2_xadc_vccint1_w;
wire videooutsoc_csrbank2_xadc_vccint0_re;
wire [7:0] videooutsoc_csrbank2_xadc_vccint0_r;
wire [7:0] videooutsoc_csrbank2_xadc_vccint0_w;
wire videooutsoc_csrbank2_xadc_vccaux1_re;
wire [3:0] videooutsoc_csrbank2_xadc_vccaux1_r;
wire [3:0] videooutsoc_csrbank2_xadc_vccaux1_w;
wire videooutsoc_csrbank2_xadc_vccaux0_re;
wire [7:0] videooutsoc_csrbank2_xadc_vccaux0_r;
wire [7:0] videooutsoc_csrbank2_xadc_vccaux0_w;
wire videooutsoc_csrbank2_xadc_vccbram1_re;
wire [3:0] videooutsoc_csrbank2_xadc_vccbram1_r;
wire [3:0] videooutsoc_csrbank2_xadc_vccbram1_w;
wire videooutsoc_csrbank2_xadc_vccbram0_re;
wire [7:0] videooutsoc_csrbank2_xadc_vccbram0_r;
wire [7:0] videooutsoc_csrbank2_xadc_vccbram0_w;
wire videooutsoc_csrbank2_sel;
wire [13:0] videooutsoc_interface3_bank_bus_adr;
wire videooutsoc_interface3_bank_bus_we;
wire [7:0] videooutsoc_interface3_bank_bus_dat_w;
reg [7:0] videooutsoc_interface3_bank_bus_dat_r = 8'd0;
wire videooutsoc_csrbank3_dfii_control0_re;
wire [3:0] videooutsoc_csrbank3_dfii_control0_r;
wire [3:0] videooutsoc_csrbank3_dfii_control0_w;
wire videooutsoc_csrbank3_dfii_pi0_command0_re;
wire [5:0] videooutsoc_csrbank3_dfii_pi0_command0_r;
wire [5:0] videooutsoc_csrbank3_dfii_pi0_command0_w;
wire videooutsoc_csrbank3_dfii_pi0_address1_re;
wire [5:0] videooutsoc_csrbank3_dfii_pi0_address1_r;
wire [5:0] videooutsoc_csrbank3_dfii_pi0_address1_w;
wire videooutsoc_csrbank3_dfii_pi0_address0_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_address0_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_address0_w;
wire videooutsoc_csrbank3_dfii_pi0_baddress0_re;
wire [2:0] videooutsoc_csrbank3_dfii_pi0_baddress0_r;
wire [2:0] videooutsoc_csrbank3_dfii_pi0_baddress0_w;
wire videooutsoc_csrbank3_dfii_pi0_wrdata7_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_wrdata7_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_wrdata7_w;
wire videooutsoc_csrbank3_dfii_pi0_wrdata6_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_wrdata6_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_wrdata6_w;
wire videooutsoc_csrbank3_dfii_pi0_wrdata5_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_wrdata5_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_wrdata5_w;
wire videooutsoc_csrbank3_dfii_pi0_wrdata4_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_wrdata4_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_wrdata4_w;
wire videooutsoc_csrbank3_dfii_pi0_wrdata3_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_wrdata3_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_wrdata3_w;
wire videooutsoc_csrbank3_dfii_pi0_wrdata2_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_wrdata2_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_wrdata2_w;
wire videooutsoc_csrbank3_dfii_pi0_wrdata1_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_wrdata1_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_wrdata1_w;
wire videooutsoc_csrbank3_dfii_pi0_wrdata0_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_wrdata0_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_wrdata0_w;
wire videooutsoc_csrbank3_dfii_pi0_rddata7_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_rddata7_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_rddata7_w;
wire videooutsoc_csrbank3_dfii_pi0_rddata6_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_rddata6_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_rddata6_w;
wire videooutsoc_csrbank3_dfii_pi0_rddata5_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_rddata5_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_rddata5_w;
wire videooutsoc_csrbank3_dfii_pi0_rddata4_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_rddata4_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_rddata4_w;
wire videooutsoc_csrbank3_dfii_pi0_rddata3_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_rddata3_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_rddata3_w;
wire videooutsoc_csrbank3_dfii_pi0_rddata2_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_rddata2_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_rddata2_w;
wire videooutsoc_csrbank3_dfii_pi0_rddata1_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_rddata1_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_rddata1_w;
wire videooutsoc_csrbank3_dfii_pi0_rddata0_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_rddata0_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi0_rddata0_w;
wire videooutsoc_csrbank3_dfii_pi1_command0_re;
wire [5:0] videooutsoc_csrbank3_dfii_pi1_command0_r;
wire [5:0] videooutsoc_csrbank3_dfii_pi1_command0_w;
wire videooutsoc_csrbank3_dfii_pi1_address1_re;
wire [5:0] videooutsoc_csrbank3_dfii_pi1_address1_r;
wire [5:0] videooutsoc_csrbank3_dfii_pi1_address1_w;
wire videooutsoc_csrbank3_dfii_pi1_address0_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_address0_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_address0_w;
wire videooutsoc_csrbank3_dfii_pi1_baddress0_re;
wire [2:0] videooutsoc_csrbank3_dfii_pi1_baddress0_r;
wire [2:0] videooutsoc_csrbank3_dfii_pi1_baddress0_w;
wire videooutsoc_csrbank3_dfii_pi1_wrdata7_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_wrdata7_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_wrdata7_w;
wire videooutsoc_csrbank3_dfii_pi1_wrdata6_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_wrdata6_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_wrdata6_w;
wire videooutsoc_csrbank3_dfii_pi1_wrdata5_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_wrdata5_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_wrdata5_w;
wire videooutsoc_csrbank3_dfii_pi1_wrdata4_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_wrdata4_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_wrdata4_w;
wire videooutsoc_csrbank3_dfii_pi1_wrdata3_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_wrdata3_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_wrdata3_w;
wire videooutsoc_csrbank3_dfii_pi1_wrdata2_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_wrdata2_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_wrdata2_w;
wire videooutsoc_csrbank3_dfii_pi1_wrdata1_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_wrdata1_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_wrdata1_w;
wire videooutsoc_csrbank3_dfii_pi1_wrdata0_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_wrdata0_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_wrdata0_w;
wire videooutsoc_csrbank3_dfii_pi1_rddata7_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_rddata7_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_rddata7_w;
wire videooutsoc_csrbank3_dfii_pi1_rddata6_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_rddata6_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_rddata6_w;
wire videooutsoc_csrbank3_dfii_pi1_rddata5_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_rddata5_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_rddata5_w;
wire videooutsoc_csrbank3_dfii_pi1_rddata4_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_rddata4_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_rddata4_w;
wire videooutsoc_csrbank3_dfii_pi1_rddata3_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_rddata3_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_rddata3_w;
wire videooutsoc_csrbank3_dfii_pi1_rddata2_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_rddata2_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_rddata2_w;
wire videooutsoc_csrbank3_dfii_pi1_rddata1_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_rddata1_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_rddata1_w;
wire videooutsoc_csrbank3_dfii_pi1_rddata0_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_rddata0_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi1_rddata0_w;
wire videooutsoc_csrbank3_dfii_pi2_command0_re;
wire [5:0] videooutsoc_csrbank3_dfii_pi2_command0_r;
wire [5:0] videooutsoc_csrbank3_dfii_pi2_command0_w;
wire videooutsoc_csrbank3_dfii_pi2_address1_re;
wire [5:0] videooutsoc_csrbank3_dfii_pi2_address1_r;
wire [5:0] videooutsoc_csrbank3_dfii_pi2_address1_w;
wire videooutsoc_csrbank3_dfii_pi2_address0_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_address0_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_address0_w;
wire videooutsoc_csrbank3_dfii_pi2_baddress0_re;
wire [2:0] videooutsoc_csrbank3_dfii_pi2_baddress0_r;
wire [2:0] videooutsoc_csrbank3_dfii_pi2_baddress0_w;
wire videooutsoc_csrbank3_dfii_pi2_wrdata7_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_wrdata7_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_wrdata7_w;
wire videooutsoc_csrbank3_dfii_pi2_wrdata6_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_wrdata6_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_wrdata6_w;
wire videooutsoc_csrbank3_dfii_pi2_wrdata5_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_wrdata5_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_wrdata5_w;
wire videooutsoc_csrbank3_dfii_pi2_wrdata4_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_wrdata4_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_wrdata4_w;
wire videooutsoc_csrbank3_dfii_pi2_wrdata3_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_wrdata3_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_wrdata3_w;
wire videooutsoc_csrbank3_dfii_pi2_wrdata2_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_wrdata2_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_wrdata2_w;
wire videooutsoc_csrbank3_dfii_pi2_wrdata1_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_wrdata1_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_wrdata1_w;
wire videooutsoc_csrbank3_dfii_pi2_wrdata0_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_wrdata0_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_wrdata0_w;
wire videooutsoc_csrbank3_dfii_pi2_rddata7_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_rddata7_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_rddata7_w;
wire videooutsoc_csrbank3_dfii_pi2_rddata6_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_rddata6_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_rddata6_w;
wire videooutsoc_csrbank3_dfii_pi2_rddata5_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_rddata5_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_rddata5_w;
wire videooutsoc_csrbank3_dfii_pi2_rddata4_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_rddata4_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_rddata4_w;
wire videooutsoc_csrbank3_dfii_pi2_rddata3_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_rddata3_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_rddata3_w;
wire videooutsoc_csrbank3_dfii_pi2_rddata2_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_rddata2_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_rddata2_w;
wire videooutsoc_csrbank3_dfii_pi2_rddata1_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_rddata1_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_rddata1_w;
wire videooutsoc_csrbank3_dfii_pi2_rddata0_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_rddata0_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi2_rddata0_w;
wire videooutsoc_csrbank3_dfii_pi3_command0_re;
wire [5:0] videooutsoc_csrbank3_dfii_pi3_command0_r;
wire [5:0] videooutsoc_csrbank3_dfii_pi3_command0_w;
wire videooutsoc_csrbank3_dfii_pi3_address1_re;
wire [5:0] videooutsoc_csrbank3_dfii_pi3_address1_r;
wire [5:0] videooutsoc_csrbank3_dfii_pi3_address1_w;
wire videooutsoc_csrbank3_dfii_pi3_address0_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_address0_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_address0_w;
wire videooutsoc_csrbank3_dfii_pi3_baddress0_re;
wire [2:0] videooutsoc_csrbank3_dfii_pi3_baddress0_r;
wire [2:0] videooutsoc_csrbank3_dfii_pi3_baddress0_w;
wire videooutsoc_csrbank3_dfii_pi3_wrdata7_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_wrdata7_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_wrdata7_w;
wire videooutsoc_csrbank3_dfii_pi3_wrdata6_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_wrdata6_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_wrdata6_w;
wire videooutsoc_csrbank3_dfii_pi3_wrdata5_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_wrdata5_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_wrdata5_w;
wire videooutsoc_csrbank3_dfii_pi3_wrdata4_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_wrdata4_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_wrdata4_w;
wire videooutsoc_csrbank3_dfii_pi3_wrdata3_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_wrdata3_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_wrdata3_w;
wire videooutsoc_csrbank3_dfii_pi3_wrdata2_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_wrdata2_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_wrdata2_w;
wire videooutsoc_csrbank3_dfii_pi3_wrdata1_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_wrdata1_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_wrdata1_w;
wire videooutsoc_csrbank3_dfii_pi3_wrdata0_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_wrdata0_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_wrdata0_w;
wire videooutsoc_csrbank3_dfii_pi3_rddata7_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_rddata7_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_rddata7_w;
wire videooutsoc_csrbank3_dfii_pi3_rddata6_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_rddata6_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_rddata6_w;
wire videooutsoc_csrbank3_dfii_pi3_rddata5_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_rddata5_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_rddata5_w;
wire videooutsoc_csrbank3_dfii_pi3_rddata4_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_rddata4_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_rddata4_w;
wire videooutsoc_csrbank3_dfii_pi3_rddata3_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_rddata3_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_rddata3_w;
wire videooutsoc_csrbank3_dfii_pi3_rddata2_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_rddata2_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_rddata2_w;
wire videooutsoc_csrbank3_dfii_pi3_rddata1_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_rddata1_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_rddata1_w;
wire videooutsoc_csrbank3_dfii_pi3_rddata0_re;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_rddata0_r;
wire [7:0] videooutsoc_csrbank3_dfii_pi3_rddata0_w;
wire videooutsoc_csrbank3_controller_bandwidth_nreads2_re;
wire [7:0] videooutsoc_csrbank3_controller_bandwidth_nreads2_r;
wire [7:0] videooutsoc_csrbank3_controller_bandwidth_nreads2_w;
wire videooutsoc_csrbank3_controller_bandwidth_nreads1_re;
wire [7:0] videooutsoc_csrbank3_controller_bandwidth_nreads1_r;
wire [7:0] videooutsoc_csrbank3_controller_bandwidth_nreads1_w;
wire videooutsoc_csrbank3_controller_bandwidth_nreads0_re;
wire [7:0] videooutsoc_csrbank3_controller_bandwidth_nreads0_r;
wire [7:0] videooutsoc_csrbank3_controller_bandwidth_nreads0_w;
wire videooutsoc_csrbank3_controller_bandwidth_nwrites2_re;
wire [7:0] videooutsoc_csrbank3_controller_bandwidth_nwrites2_r;
wire [7:0] videooutsoc_csrbank3_controller_bandwidth_nwrites2_w;
wire videooutsoc_csrbank3_controller_bandwidth_nwrites1_re;
wire [7:0] videooutsoc_csrbank3_controller_bandwidth_nwrites1_r;
wire [7:0] videooutsoc_csrbank3_controller_bandwidth_nwrites1_w;
wire videooutsoc_csrbank3_controller_bandwidth_nwrites0_re;
wire [7:0] videooutsoc_csrbank3_controller_bandwidth_nwrites0_r;
wire [7:0] videooutsoc_csrbank3_controller_bandwidth_nwrites0_w;
wire videooutsoc_csrbank3_controller_bandwidth_data_width1_re;
wire videooutsoc_csrbank3_controller_bandwidth_data_width1_r;
wire videooutsoc_csrbank3_controller_bandwidth_data_width1_w;
wire videooutsoc_csrbank3_controller_bandwidth_data_width0_re;
wire [7:0] videooutsoc_csrbank3_controller_bandwidth_data_width0_r;
wire [7:0] videooutsoc_csrbank3_controller_bandwidth_data_width0_w;
wire videooutsoc_csrbank3_sel;
wire [13:0] videooutsoc_interface4_bank_bus_adr;
wire videooutsoc_interface4_bank_bus_we;
wire [7:0] videooutsoc_interface4_bank_bus_dat_w;
reg [7:0] videooutsoc_interface4_bank_bus_dat_r = 8'd0;
wire videooutsoc_csrbank4_load3_re;
wire [7:0] videooutsoc_csrbank4_load3_r;
wire [7:0] videooutsoc_csrbank4_load3_w;
wire videooutsoc_csrbank4_load2_re;
wire [7:0] videooutsoc_csrbank4_load2_r;
wire [7:0] videooutsoc_csrbank4_load2_w;
wire videooutsoc_csrbank4_load1_re;
wire [7:0] videooutsoc_csrbank4_load1_r;
wire [7:0] videooutsoc_csrbank4_load1_w;
wire videooutsoc_csrbank4_load0_re;
wire [7:0] videooutsoc_csrbank4_load0_r;
wire [7:0] videooutsoc_csrbank4_load0_w;
wire videooutsoc_csrbank4_reload3_re;
wire [7:0] videooutsoc_csrbank4_reload3_r;
wire [7:0] videooutsoc_csrbank4_reload3_w;
wire videooutsoc_csrbank4_reload2_re;
wire [7:0] videooutsoc_csrbank4_reload2_r;
wire [7:0] videooutsoc_csrbank4_reload2_w;
wire videooutsoc_csrbank4_reload1_re;
wire [7:0] videooutsoc_csrbank4_reload1_r;
wire [7:0] videooutsoc_csrbank4_reload1_w;
wire videooutsoc_csrbank4_reload0_re;
wire [7:0] videooutsoc_csrbank4_reload0_r;
wire [7:0] videooutsoc_csrbank4_reload0_w;
wire videooutsoc_csrbank4_en0_re;
wire videooutsoc_csrbank4_en0_r;
wire videooutsoc_csrbank4_en0_w;
wire videooutsoc_csrbank4_value3_re;
wire [7:0] videooutsoc_csrbank4_value3_r;
wire [7:0] videooutsoc_csrbank4_value3_w;
wire videooutsoc_csrbank4_value2_re;
wire [7:0] videooutsoc_csrbank4_value2_r;
wire [7:0] videooutsoc_csrbank4_value2_w;
wire videooutsoc_csrbank4_value1_re;
wire [7:0] videooutsoc_csrbank4_value1_r;
wire [7:0] videooutsoc_csrbank4_value1_w;
wire videooutsoc_csrbank4_value0_re;
wire [7:0] videooutsoc_csrbank4_value0_r;
wire [7:0] videooutsoc_csrbank4_value0_w;
wire videooutsoc_csrbank4_ev_enable0_re;
wire videooutsoc_csrbank4_ev_enable0_r;
wire videooutsoc_csrbank4_ev_enable0_w;
wire videooutsoc_csrbank4_sel;
wire [13:0] videooutsoc_interface5_bank_bus_adr;
wire videooutsoc_interface5_bank_bus_we;
wire [7:0] videooutsoc_interface5_bank_bus_dat_w;
reg [7:0] videooutsoc_interface5_bank_bus_dat_r = 8'd0;
wire videooutsoc_csrbank5_txfull_re;
wire videooutsoc_csrbank5_txfull_r;
wire videooutsoc_csrbank5_txfull_w;
wire videooutsoc_csrbank5_rxempty_re;
wire videooutsoc_csrbank5_rxempty_r;
wire videooutsoc_csrbank5_rxempty_w;
wire videooutsoc_csrbank5_ev_enable0_re;
wire [1:0] videooutsoc_csrbank5_ev_enable0_r;
wire [1:0] videooutsoc_csrbank5_ev_enable0_w;
wire videooutsoc_csrbank5_sel;
wire [13:0] videooutsoc_interface6_bank_bus_adr;
wire videooutsoc_interface6_bank_bus_we;
wire [7:0] videooutsoc_interface6_bank_bus_dat_w;
reg [7:0] videooutsoc_interface6_bank_bus_dat_r = 8'd0;
wire videooutsoc_csrbank6_tuning_word3_re;
wire [7:0] videooutsoc_csrbank6_tuning_word3_r;
wire [7:0] videooutsoc_csrbank6_tuning_word3_w;
wire videooutsoc_csrbank6_tuning_word2_re;
wire [7:0] videooutsoc_csrbank6_tuning_word2_r;
wire [7:0] videooutsoc_csrbank6_tuning_word2_w;
wire videooutsoc_csrbank6_tuning_word1_re;
wire [7:0] videooutsoc_csrbank6_tuning_word1_r;
wire [7:0] videooutsoc_csrbank6_tuning_word1_w;
wire videooutsoc_csrbank6_tuning_word0_re;
wire [7:0] videooutsoc_csrbank6_tuning_word0_r;
wire [7:0] videooutsoc_csrbank6_tuning_word0_w;
wire videooutsoc_csrbank6_sel;
reg comb_rhs_array_muxed0 = 1'd0;
reg [13:0] comb_rhs_array_muxed1 = 14'd0;
reg [2:0] comb_rhs_array_muxed2 = 3'd0;
reg comb_rhs_array_muxed3 = 1'd0;
reg comb_rhs_array_muxed4 = 1'd0;
reg comb_rhs_array_muxed5 = 1'd0;
reg comb_t_array_muxed0 = 1'd0;
reg comb_t_array_muxed1 = 1'd0;
reg comb_t_array_muxed2 = 1'd0;
reg comb_rhs_array_muxed6 = 1'd0;
reg [13:0] comb_rhs_array_muxed7 = 14'd0;
reg [2:0] comb_rhs_array_muxed8 = 3'd0;
reg comb_rhs_array_muxed9 = 1'd0;
reg comb_rhs_array_muxed10 = 1'd0;
reg comb_rhs_array_muxed11 = 1'd0;
reg comb_t_array_muxed3 = 1'd0;
reg comb_t_array_muxed4 = 1'd0;
reg comb_t_array_muxed5 = 1'd0;
reg [20:0] comb_rhs_array_muxed12 = 21'd0;
reg comb_rhs_array_muxed13 = 1'd0;
reg comb_rhs_array_muxed14 = 1'd0;
reg [20:0] comb_rhs_array_muxed15 = 21'd0;
reg comb_rhs_array_muxed16 = 1'd0;
reg comb_rhs_array_muxed17 = 1'd0;
reg [20:0] comb_rhs_array_muxed18 = 21'd0;
reg comb_rhs_array_muxed19 = 1'd0;
reg comb_rhs_array_muxed20 = 1'd0;
reg [20:0] comb_rhs_array_muxed21 = 21'd0;
reg comb_rhs_array_muxed22 = 1'd0;
reg comb_rhs_array_muxed23 = 1'd0;
reg [20:0] comb_rhs_array_muxed24 = 21'd0;
reg comb_rhs_array_muxed25 = 1'd0;
reg comb_rhs_array_muxed26 = 1'd0;
reg [20:0] comb_rhs_array_muxed27 = 21'd0;
reg comb_rhs_array_muxed28 = 1'd0;
reg comb_rhs_array_muxed29 = 1'd0;
reg [20:0] comb_rhs_array_muxed30 = 21'd0;
reg comb_rhs_array_muxed31 = 1'd0;
reg comb_rhs_array_muxed32 = 1'd0;
reg [20:0] comb_rhs_array_muxed33 = 21'd0;
reg comb_rhs_array_muxed34 = 1'd0;
reg comb_rhs_array_muxed35 = 1'd0;
reg [29:0] comb_rhs_array_muxed36 = 30'd0;
reg [31:0] comb_rhs_array_muxed37 = 32'd0;
reg [3:0] comb_rhs_array_muxed38 = 4'd0;
reg comb_rhs_array_muxed39 = 1'd0;
reg comb_rhs_array_muxed40 = 1'd0;
reg comb_rhs_array_muxed41 = 1'd0;
reg [2:0] comb_rhs_array_muxed42 = 3'd0;
reg [1:0] comb_rhs_array_muxed43 = 2'd0;
reg [29:0] comb_rhs_array_muxed44 = 30'd0;
reg [31:0] comb_rhs_array_muxed45 = 32'd0;
reg [3:0] comb_rhs_array_muxed46 = 4'd0;
reg comb_rhs_array_muxed47 = 1'd0;
reg comb_rhs_array_muxed48 = 1'd0;
reg comb_rhs_array_muxed49 = 1'd0;
reg [2:0] comb_rhs_array_muxed50 = 3'd0;
reg [1:0] comb_rhs_array_muxed51 = 2'd0;
reg [9:0] sync_f_array_muxed0 = 10'd0;
reg [9:0] sync_f_array_muxed1 = 10'd0;
reg [9:0] sync_f_array_muxed2 = 10'd0;
reg [13:0] sync_rhs_array_muxed0 = 14'd0;
reg [2:0] sync_rhs_array_muxed1 = 3'd0;
reg sync_rhs_array_muxed2 = 1'd0;
reg sync_rhs_array_muxed3 = 1'd0;
reg sync_rhs_array_muxed4 = 1'd0;
reg sync_rhs_array_muxed5 = 1'd0;
reg sync_rhs_array_muxed6 = 1'd0;
reg [13:0] sync_rhs_array_muxed7 = 14'd0;
reg [2:0] sync_rhs_array_muxed8 = 3'd0;
reg sync_rhs_array_muxed9 = 1'd0;
reg sync_rhs_array_muxed10 = 1'd0;
reg sync_rhs_array_muxed11 = 1'd0;
reg sync_rhs_array_muxed12 = 1'd0;
reg sync_rhs_array_muxed13 = 1'd0;
reg [13:0] sync_rhs_array_muxed14 = 14'd0;
reg [2:0] sync_rhs_array_muxed15 = 3'd0;
reg sync_rhs_array_muxed16 = 1'd0;
reg sync_rhs_array_muxed17 = 1'd0;
reg sync_rhs_array_muxed18 = 1'd0;
reg sync_rhs_array_muxed19 = 1'd0;
reg sync_rhs_array_muxed20 = 1'd0;
reg [13:0] sync_rhs_array_muxed21 = 14'd0;
reg [2:0] sync_rhs_array_muxed22 = 3'd0;
reg sync_rhs_array_muxed23 = 1'd0;
reg sync_rhs_array_muxed24 = 1'd0;
reg sync_rhs_array_muxed25 = 1'd0;
reg sync_rhs_array_muxed26 = 1'd0;
reg sync_rhs_array_muxed27 = 1'd0;
(* async_reg = "true", dont_touch = "true" *) reg xilinxmultiregimpl0_regs0 = 1'd0;
(* async_reg = "true", dont_touch = "true" *) reg xilinxmultiregimpl0_regs1 = 1'd0;
(* ars_false_path = "true" *) wire xilinxasyncresetsynchronizerimpl0;
wire xilinxasyncresetsynchronizerimpl0_rst_meta;
(* ars_false_path = "true" *) wire xilinxasyncresetsynchronizerimpl1;
wire xilinxasyncresetsynchronizerimpl1_rst_meta;
(* ars_false_path = "true" *) wire xilinxasyncresetsynchronizerimpl2;
wire xilinxasyncresetsynchronizerimpl2_rst_meta;
(* async_reg = "true", dont_touch = "true" *) reg [2:0] xilinxmultiregimpl1_regs0 = 3'd0;
(* async_reg = "true", dont_touch = "true" *) reg [2:0] xilinxmultiregimpl1_regs1 = 3'd0;
(* async_reg = "true", dont_touch = "true" *) reg [2:0] xilinxmultiregimpl2_regs0 = 3'd0;
(* async_reg = "true", dont_touch = "true" *) reg [2:0] xilinxmultiregimpl2_regs1 = 3'd0;
(* async_reg = "true", dont_touch = "true" *) reg [4:0] xilinxmultiregimpl3_regs0 = 5'd0;
(* async_reg = "true", dont_touch = "true" *) reg [4:0] xilinxmultiregimpl3_regs1 = 5'd0;
(* async_reg = "true", dont_touch = "true" *) reg [4:0] xilinxmultiregimpl4_regs0 = 5'd0;
(* async_reg = "true", dont_touch = "true" *) reg [4:0] xilinxmultiregimpl4_regs1 = 5'd0;
(* async_reg = "true", dont_touch = "true" *) reg [1:0] xilinxmultiregimpl5_regs0 = 2'd0;
(* async_reg = "true", dont_touch = "true" *) reg [1:0] xilinxmultiregimpl5_regs1 = 2'd0;
(* async_reg = "true", dont_touch = "true" *) reg [1:0] xilinxmultiregimpl6_regs0 = 2'd0;
(* async_reg = "true", dont_touch = "true" *) reg [1:0] xilinxmultiregimpl6_regs1 = 2'd0;
(* async_reg = "true", dont_touch = "true" *) reg xilinxmultiregimpl7_regs0 = 1'd0;
(* async_reg = "true", dont_touch = "true" *) reg xilinxmultiregimpl7_regs1 = 1'd0;
(* async_reg = "true", dont_touch = "true" *) reg xilinxmultiregimpl8_regs0 = 1'd0;
(* async_reg = "true", dont_touch = "true" *) reg xilinxmultiregimpl8_regs1 = 1'd0;

assign user_led0 = (videooutsoc_sys_led ^ videooutsoc_pcie_led);
assign videooutsoc_sys_led = videooutsoc_sys_counter[26];
always @(*) begin
	videooutsoc_videooutsoc_interrupt <= 32'd0;
	videooutsoc_videooutsoc_interrupt[1] <= videooutsoc_videooutsoc_timer0_irq;
	videooutsoc_videooutsoc_interrupt[2] <= videooutsoc_videooutsoc_uart_irq;
end
assign videooutsoc_videooutsoc_ibus_adr = videooutsoc_videooutsoc_i_adr_o[31:2];
assign videooutsoc_videooutsoc_dbus_adr = videooutsoc_videooutsoc_d_adr_o[31:2];
assign videooutsoc_videooutsoc_rom_adr = videooutsoc_videooutsoc_rom_bus_adr[12:0];
assign videooutsoc_videooutsoc_rom_bus_dat_r = videooutsoc_videooutsoc_rom_dat_r;
always @(*) begin
	videooutsoc_videooutsoc_sram_we <= 4'd0;
	videooutsoc_videooutsoc_sram_we[0] <= (((videooutsoc_videooutsoc_sram_bus_cyc & videooutsoc_videooutsoc_sram_bus_stb) & videooutsoc_videooutsoc_sram_bus_we) & videooutsoc_videooutsoc_sram_bus_sel[0]);
	videooutsoc_videooutsoc_sram_we[1] <= (((videooutsoc_videooutsoc_sram_bus_cyc & videooutsoc_videooutsoc_sram_bus_stb) & videooutsoc_videooutsoc_sram_bus_we) & videooutsoc_videooutsoc_sram_bus_sel[1]);
	videooutsoc_videooutsoc_sram_we[2] <= (((videooutsoc_videooutsoc_sram_bus_cyc & videooutsoc_videooutsoc_sram_bus_stb) & videooutsoc_videooutsoc_sram_bus_we) & videooutsoc_videooutsoc_sram_bus_sel[2]);
	videooutsoc_videooutsoc_sram_we[3] <= (((videooutsoc_videooutsoc_sram_bus_cyc & videooutsoc_videooutsoc_sram_bus_stb) & videooutsoc_videooutsoc_sram_bus_we) & videooutsoc_videooutsoc_sram_bus_sel[3]);
end
assign videooutsoc_videooutsoc_sram_adr = videooutsoc_videooutsoc_sram_bus_adr[12:0];
assign videooutsoc_videooutsoc_sram_bus_dat_r = videooutsoc_videooutsoc_sram_dat_r;
assign videooutsoc_videooutsoc_sram_dat_w = videooutsoc_videooutsoc_sram_bus_dat_w;
assign videooutsoc_videooutsoc_uart_tx_fifo_sink_valid = videooutsoc_videooutsoc_uart_rxtx_re;
assign videooutsoc_videooutsoc_uart_tx_fifo_sink_payload_data = videooutsoc_videooutsoc_uart_rxtx_r;
assign videooutsoc_videooutsoc_uart_txfull_status = (~videooutsoc_videooutsoc_uart_tx_fifo_sink_ready);
assign videooutsoc_videooutsoc_uart_phy_sink_valid = videooutsoc_videooutsoc_uart_tx_fifo_source_valid;
assign videooutsoc_videooutsoc_uart_tx_fifo_source_ready = videooutsoc_videooutsoc_uart_phy_sink_ready;
assign videooutsoc_videooutsoc_uart_phy_sink_first = videooutsoc_videooutsoc_uart_tx_fifo_source_first;
assign videooutsoc_videooutsoc_uart_phy_sink_last = videooutsoc_videooutsoc_uart_tx_fifo_source_last;
assign videooutsoc_videooutsoc_uart_phy_sink_payload_data = videooutsoc_videooutsoc_uart_tx_fifo_source_payload_data;
assign videooutsoc_videooutsoc_uart_tx_trigger = (~videooutsoc_videooutsoc_uart_tx_fifo_sink_ready);
assign videooutsoc_videooutsoc_uart_rx_fifo_sink_valid = videooutsoc_videooutsoc_uart_phy_source_valid;
assign videooutsoc_videooutsoc_uart_phy_source_ready = videooutsoc_videooutsoc_uart_rx_fifo_sink_ready;
assign videooutsoc_videooutsoc_uart_rx_fifo_sink_first = videooutsoc_videooutsoc_uart_phy_source_first;
assign videooutsoc_videooutsoc_uart_rx_fifo_sink_last = videooutsoc_videooutsoc_uart_phy_source_last;
assign videooutsoc_videooutsoc_uart_rx_fifo_sink_payload_data = videooutsoc_videooutsoc_uart_phy_source_payload_data;
assign videooutsoc_videooutsoc_uart_rxempty_status = (~videooutsoc_videooutsoc_uart_rx_fifo_source_valid);
assign videooutsoc_videooutsoc_uart_rxtx_w = videooutsoc_videooutsoc_uart_rx_fifo_source_payload_data;
assign videooutsoc_videooutsoc_uart_rx_fifo_source_ready = videooutsoc_videooutsoc_uart_rx_clear;
assign videooutsoc_videooutsoc_uart_rx_trigger = (~videooutsoc_videooutsoc_uart_rx_fifo_source_valid);
always @(*) begin
	videooutsoc_videooutsoc_uart_tx_clear <= 1'd0;
	if ((videooutsoc_videooutsoc_uart_pending_re & videooutsoc_videooutsoc_uart_pending_r[0])) begin
		videooutsoc_videooutsoc_uart_tx_clear <= 1'd1;
	end
end
always @(*) begin
	videooutsoc_videooutsoc_uart_status_w <= 2'd0;
	videooutsoc_videooutsoc_uart_status_w[0] <= videooutsoc_videooutsoc_uart_tx_status;
	videooutsoc_videooutsoc_uart_status_w[1] <= videooutsoc_videooutsoc_uart_rx_status;
end
always @(*) begin
	videooutsoc_videooutsoc_uart_rx_clear <= 1'd0;
	if ((videooutsoc_videooutsoc_uart_pending_re & videooutsoc_videooutsoc_uart_pending_r[1])) begin
		videooutsoc_videooutsoc_uart_rx_clear <= 1'd1;
	end
end
always @(*) begin
	videooutsoc_videooutsoc_uart_pending_w <= 2'd0;
	videooutsoc_videooutsoc_uart_pending_w[0] <= videooutsoc_videooutsoc_uart_tx_pending;
	videooutsoc_videooutsoc_uart_pending_w[1] <= videooutsoc_videooutsoc_uart_rx_pending;
end
assign videooutsoc_videooutsoc_uart_irq = ((videooutsoc_videooutsoc_uart_pending_w[0] & videooutsoc_videooutsoc_uart_storage[0]) | (videooutsoc_videooutsoc_uart_pending_w[1] & videooutsoc_videooutsoc_uart_storage[1]));
assign videooutsoc_videooutsoc_uart_tx_status = videooutsoc_videooutsoc_uart_tx_trigger;
assign videooutsoc_videooutsoc_uart_rx_status = videooutsoc_videooutsoc_uart_rx_trigger;
assign videooutsoc_videooutsoc_uart_tx_fifo_syncfifo_din = {videooutsoc_videooutsoc_uart_tx_fifo_fifo_in_last, videooutsoc_videooutsoc_uart_tx_fifo_fifo_in_first, videooutsoc_videooutsoc_uart_tx_fifo_fifo_in_payload_data};
assign {videooutsoc_videooutsoc_uart_tx_fifo_fifo_out_last, videooutsoc_videooutsoc_uart_tx_fifo_fifo_out_first, videooutsoc_videooutsoc_uart_tx_fifo_fifo_out_payload_data} = videooutsoc_videooutsoc_uart_tx_fifo_syncfifo_dout;
assign videooutsoc_videooutsoc_uart_tx_fifo_sink_ready = videooutsoc_videooutsoc_uart_tx_fifo_syncfifo_writable;
assign videooutsoc_videooutsoc_uart_tx_fifo_syncfifo_we = videooutsoc_videooutsoc_uart_tx_fifo_sink_valid;
assign videooutsoc_videooutsoc_uart_tx_fifo_fifo_in_first = videooutsoc_videooutsoc_uart_tx_fifo_sink_first;
assign videooutsoc_videooutsoc_uart_tx_fifo_fifo_in_last = videooutsoc_videooutsoc_uart_tx_fifo_sink_last;
assign videooutsoc_videooutsoc_uart_tx_fifo_fifo_in_payload_data = videooutsoc_videooutsoc_uart_tx_fifo_sink_payload_data;
assign videooutsoc_videooutsoc_uart_tx_fifo_source_valid = videooutsoc_videooutsoc_uart_tx_fifo_syncfifo_readable;
assign videooutsoc_videooutsoc_uart_tx_fifo_source_first = videooutsoc_videooutsoc_uart_tx_fifo_fifo_out_first;
assign videooutsoc_videooutsoc_uart_tx_fifo_source_last = videooutsoc_videooutsoc_uart_tx_fifo_fifo_out_last;
assign videooutsoc_videooutsoc_uart_tx_fifo_source_payload_data = videooutsoc_videooutsoc_uart_tx_fifo_fifo_out_payload_data;
assign videooutsoc_videooutsoc_uart_tx_fifo_syncfifo_re = videooutsoc_videooutsoc_uart_tx_fifo_source_ready;
always @(*) begin
	videooutsoc_videooutsoc_uart_tx_fifo_wrport_adr <= 4'd0;
	if (videooutsoc_videooutsoc_uart_tx_fifo_replace) begin
		videooutsoc_videooutsoc_uart_tx_fifo_wrport_adr <= (videooutsoc_videooutsoc_uart_tx_fifo_produce - 1'd1);
	end else begin
		videooutsoc_videooutsoc_uart_tx_fifo_wrport_adr <= videooutsoc_videooutsoc_uart_tx_fifo_produce;
	end
end
assign videooutsoc_videooutsoc_uart_tx_fifo_wrport_dat_w = videooutsoc_videooutsoc_uart_tx_fifo_syncfifo_din;
assign videooutsoc_videooutsoc_uart_tx_fifo_wrport_we = (videooutsoc_videooutsoc_uart_tx_fifo_syncfifo_we & (videooutsoc_videooutsoc_uart_tx_fifo_syncfifo_writable | videooutsoc_videooutsoc_uart_tx_fifo_replace));
assign videooutsoc_videooutsoc_uart_tx_fifo_do_read = (videooutsoc_videooutsoc_uart_tx_fifo_syncfifo_readable & videooutsoc_videooutsoc_uart_tx_fifo_syncfifo_re);
assign videooutsoc_videooutsoc_uart_tx_fifo_rdport_adr = videooutsoc_videooutsoc_uart_tx_fifo_consume;
assign videooutsoc_videooutsoc_uart_tx_fifo_syncfifo_dout = videooutsoc_videooutsoc_uart_tx_fifo_rdport_dat_r;
assign videooutsoc_videooutsoc_uart_tx_fifo_syncfifo_writable = (videooutsoc_videooutsoc_uart_tx_fifo_level != 5'd16);
assign videooutsoc_videooutsoc_uart_tx_fifo_syncfifo_readable = (videooutsoc_videooutsoc_uart_tx_fifo_level != 1'd0);
assign videooutsoc_videooutsoc_uart_rx_fifo_syncfifo_din = {videooutsoc_videooutsoc_uart_rx_fifo_fifo_in_last, videooutsoc_videooutsoc_uart_rx_fifo_fifo_in_first, videooutsoc_videooutsoc_uart_rx_fifo_fifo_in_payload_data};
assign {videooutsoc_videooutsoc_uart_rx_fifo_fifo_out_last, videooutsoc_videooutsoc_uart_rx_fifo_fifo_out_first, videooutsoc_videooutsoc_uart_rx_fifo_fifo_out_payload_data} = videooutsoc_videooutsoc_uart_rx_fifo_syncfifo_dout;
assign videooutsoc_videooutsoc_uart_rx_fifo_sink_ready = videooutsoc_videooutsoc_uart_rx_fifo_syncfifo_writable;
assign videooutsoc_videooutsoc_uart_rx_fifo_syncfifo_we = videooutsoc_videooutsoc_uart_rx_fifo_sink_valid;
assign videooutsoc_videooutsoc_uart_rx_fifo_fifo_in_first = videooutsoc_videooutsoc_uart_rx_fifo_sink_first;
assign videooutsoc_videooutsoc_uart_rx_fifo_fifo_in_last = videooutsoc_videooutsoc_uart_rx_fifo_sink_last;
assign videooutsoc_videooutsoc_uart_rx_fifo_fifo_in_payload_data = videooutsoc_videooutsoc_uart_rx_fifo_sink_payload_data;
assign videooutsoc_videooutsoc_uart_rx_fifo_source_valid = videooutsoc_videooutsoc_uart_rx_fifo_syncfifo_readable;
assign videooutsoc_videooutsoc_uart_rx_fifo_source_first = videooutsoc_videooutsoc_uart_rx_fifo_fifo_out_first;
assign videooutsoc_videooutsoc_uart_rx_fifo_source_last = videooutsoc_videooutsoc_uart_rx_fifo_fifo_out_last;
assign videooutsoc_videooutsoc_uart_rx_fifo_source_payload_data = videooutsoc_videooutsoc_uart_rx_fifo_fifo_out_payload_data;
assign videooutsoc_videooutsoc_uart_rx_fifo_syncfifo_re = videooutsoc_videooutsoc_uart_rx_fifo_source_ready;
always @(*) begin
	videooutsoc_videooutsoc_uart_rx_fifo_wrport_adr <= 4'd0;
	if (videooutsoc_videooutsoc_uart_rx_fifo_replace) begin
		videooutsoc_videooutsoc_uart_rx_fifo_wrport_adr <= (videooutsoc_videooutsoc_uart_rx_fifo_produce - 1'd1);
	end else begin
		videooutsoc_videooutsoc_uart_rx_fifo_wrport_adr <= videooutsoc_videooutsoc_uart_rx_fifo_produce;
	end
end
assign videooutsoc_videooutsoc_uart_rx_fifo_wrport_dat_w = videooutsoc_videooutsoc_uart_rx_fifo_syncfifo_din;
assign videooutsoc_videooutsoc_uart_rx_fifo_wrport_we = (videooutsoc_videooutsoc_uart_rx_fifo_syncfifo_we & (videooutsoc_videooutsoc_uart_rx_fifo_syncfifo_writable | videooutsoc_videooutsoc_uart_rx_fifo_replace));
assign videooutsoc_videooutsoc_uart_rx_fifo_do_read = (videooutsoc_videooutsoc_uart_rx_fifo_syncfifo_readable & videooutsoc_videooutsoc_uart_rx_fifo_syncfifo_re);
assign videooutsoc_videooutsoc_uart_rx_fifo_rdport_adr = videooutsoc_videooutsoc_uart_rx_fifo_consume;
assign videooutsoc_videooutsoc_uart_rx_fifo_syncfifo_dout = videooutsoc_videooutsoc_uart_rx_fifo_rdport_dat_r;
assign videooutsoc_videooutsoc_uart_rx_fifo_syncfifo_writable = (videooutsoc_videooutsoc_uart_rx_fifo_level != 5'd16);
assign videooutsoc_videooutsoc_uart_rx_fifo_syncfifo_readable = (videooutsoc_videooutsoc_uart_rx_fifo_level != 1'd0);
assign videooutsoc_videooutsoc_timer0_zero_trigger = (videooutsoc_videooutsoc_timer0_value != 1'd0);
assign videooutsoc_videooutsoc_timer0_eventmanager_status_w = videooutsoc_videooutsoc_timer0_zero_status;
always @(*) begin
	videooutsoc_videooutsoc_timer0_zero_clear <= 1'd0;
	if ((videooutsoc_videooutsoc_timer0_eventmanager_pending_re & videooutsoc_videooutsoc_timer0_eventmanager_pending_r)) begin
		videooutsoc_videooutsoc_timer0_zero_clear <= 1'd1;
	end
end
assign videooutsoc_videooutsoc_timer0_eventmanager_pending_w = videooutsoc_videooutsoc_timer0_zero_pending;
assign videooutsoc_videooutsoc_timer0_irq = (videooutsoc_videooutsoc_timer0_eventmanager_pending_w & videooutsoc_videooutsoc_timer0_eventmanager_storage);
assign videooutsoc_videooutsoc_timer0_zero_status = videooutsoc_videooutsoc_timer0_zero_trigger;
assign videooutsoc_git_status = 160'd1382062766415324472159901767345269131334249808308;
assign videooutsoc_platform_status = 63'd7954892367813672960;
assign videooutsoc_target_status = 63'd8532461355854165364;
assign videooutsoc_oe = ((videooutsoc_last_wrdata_en[1] | videooutsoc_last_wrdata_en[2]) | videooutsoc_last_wrdata_en[3]);
assign videooutsoc_dfi_p0_address = videooutsoc_sdram_master_p0_address;
assign videooutsoc_dfi_p0_bank = videooutsoc_sdram_master_p0_bank;
assign videooutsoc_dfi_p0_cas_n = videooutsoc_sdram_master_p0_cas_n;
assign videooutsoc_dfi_p0_cs_n = videooutsoc_sdram_master_p0_cs_n;
assign videooutsoc_dfi_p0_ras_n = videooutsoc_sdram_master_p0_ras_n;
assign videooutsoc_dfi_p0_we_n = videooutsoc_sdram_master_p0_we_n;
assign videooutsoc_dfi_p0_cke = videooutsoc_sdram_master_p0_cke;
assign videooutsoc_dfi_p0_odt = videooutsoc_sdram_master_p0_odt;
assign videooutsoc_dfi_p0_reset_n = videooutsoc_sdram_master_p0_reset_n;
assign videooutsoc_dfi_p0_wrdata = videooutsoc_sdram_master_p0_wrdata;
assign videooutsoc_dfi_p0_wrdata_en = videooutsoc_sdram_master_p0_wrdata_en;
assign videooutsoc_dfi_p0_wrdata_mask = videooutsoc_sdram_master_p0_wrdata_mask;
assign videooutsoc_dfi_p0_rddata_en = videooutsoc_sdram_master_p0_rddata_en;
assign videooutsoc_sdram_master_p0_rddata = videooutsoc_dfi_p0_rddata;
assign videooutsoc_sdram_master_p0_rddata_valid = videooutsoc_dfi_p0_rddata_valid;
assign videooutsoc_dfi_p1_address = videooutsoc_sdram_master_p1_address;
assign videooutsoc_dfi_p1_bank = videooutsoc_sdram_master_p1_bank;
assign videooutsoc_dfi_p1_cas_n = videooutsoc_sdram_master_p1_cas_n;
assign videooutsoc_dfi_p1_cs_n = videooutsoc_sdram_master_p1_cs_n;
assign videooutsoc_dfi_p1_ras_n = videooutsoc_sdram_master_p1_ras_n;
assign videooutsoc_dfi_p1_we_n = videooutsoc_sdram_master_p1_we_n;
assign videooutsoc_dfi_p1_cke = videooutsoc_sdram_master_p1_cke;
assign videooutsoc_dfi_p1_odt = videooutsoc_sdram_master_p1_odt;
assign videooutsoc_dfi_p1_reset_n = videooutsoc_sdram_master_p1_reset_n;
assign videooutsoc_dfi_p1_wrdata = videooutsoc_sdram_master_p1_wrdata;
assign videooutsoc_dfi_p1_wrdata_en = videooutsoc_sdram_master_p1_wrdata_en;
assign videooutsoc_dfi_p1_wrdata_mask = videooutsoc_sdram_master_p1_wrdata_mask;
assign videooutsoc_dfi_p1_rddata_en = videooutsoc_sdram_master_p1_rddata_en;
assign videooutsoc_sdram_master_p1_rddata = videooutsoc_dfi_p1_rddata;
assign videooutsoc_sdram_master_p1_rddata_valid = videooutsoc_dfi_p1_rddata_valid;
assign videooutsoc_dfi_p2_address = videooutsoc_sdram_master_p2_address;
assign videooutsoc_dfi_p2_bank = videooutsoc_sdram_master_p2_bank;
assign videooutsoc_dfi_p2_cas_n = videooutsoc_sdram_master_p2_cas_n;
assign videooutsoc_dfi_p2_cs_n = videooutsoc_sdram_master_p2_cs_n;
assign videooutsoc_dfi_p2_ras_n = videooutsoc_sdram_master_p2_ras_n;
assign videooutsoc_dfi_p2_we_n = videooutsoc_sdram_master_p2_we_n;
assign videooutsoc_dfi_p2_cke = videooutsoc_sdram_master_p2_cke;
assign videooutsoc_dfi_p2_odt = videooutsoc_sdram_master_p2_odt;
assign videooutsoc_dfi_p2_reset_n = videooutsoc_sdram_master_p2_reset_n;
assign videooutsoc_dfi_p2_wrdata = videooutsoc_sdram_master_p2_wrdata;
assign videooutsoc_dfi_p2_wrdata_en = videooutsoc_sdram_master_p2_wrdata_en;
assign videooutsoc_dfi_p2_wrdata_mask = videooutsoc_sdram_master_p2_wrdata_mask;
assign videooutsoc_dfi_p2_rddata_en = videooutsoc_sdram_master_p2_rddata_en;
assign videooutsoc_sdram_master_p2_rddata = videooutsoc_dfi_p2_rddata;
assign videooutsoc_sdram_master_p2_rddata_valid = videooutsoc_dfi_p2_rddata_valid;
assign videooutsoc_dfi_p3_address = videooutsoc_sdram_master_p3_address;
assign videooutsoc_dfi_p3_bank = videooutsoc_sdram_master_p3_bank;
assign videooutsoc_dfi_p3_cas_n = videooutsoc_sdram_master_p3_cas_n;
assign videooutsoc_dfi_p3_cs_n = videooutsoc_sdram_master_p3_cs_n;
assign videooutsoc_dfi_p3_ras_n = videooutsoc_sdram_master_p3_ras_n;
assign videooutsoc_dfi_p3_we_n = videooutsoc_sdram_master_p3_we_n;
assign videooutsoc_dfi_p3_cke = videooutsoc_sdram_master_p3_cke;
assign videooutsoc_dfi_p3_odt = videooutsoc_sdram_master_p3_odt;
assign videooutsoc_dfi_p3_reset_n = videooutsoc_sdram_master_p3_reset_n;
assign videooutsoc_dfi_p3_wrdata = videooutsoc_sdram_master_p3_wrdata;
assign videooutsoc_dfi_p3_wrdata_en = videooutsoc_sdram_master_p3_wrdata_en;
assign videooutsoc_dfi_p3_wrdata_mask = videooutsoc_sdram_master_p3_wrdata_mask;
assign videooutsoc_dfi_p3_rddata_en = videooutsoc_sdram_master_p3_rddata_en;
assign videooutsoc_sdram_master_p3_rddata = videooutsoc_dfi_p3_rddata;
assign videooutsoc_sdram_master_p3_rddata_valid = videooutsoc_dfi_p3_rddata_valid;
assign videooutsoc_sdram_slave_p0_address = videooutsoc_sdram_dfi_p0_address;
assign videooutsoc_sdram_slave_p0_bank = videooutsoc_sdram_dfi_p0_bank;
assign videooutsoc_sdram_slave_p0_cas_n = videooutsoc_sdram_dfi_p0_cas_n;
assign videooutsoc_sdram_slave_p0_cs_n = videooutsoc_sdram_dfi_p0_cs_n;
assign videooutsoc_sdram_slave_p0_ras_n = videooutsoc_sdram_dfi_p0_ras_n;
assign videooutsoc_sdram_slave_p0_we_n = videooutsoc_sdram_dfi_p0_we_n;
assign videooutsoc_sdram_slave_p0_cke = videooutsoc_sdram_dfi_p0_cke;
assign videooutsoc_sdram_slave_p0_odt = videooutsoc_sdram_dfi_p0_odt;
assign videooutsoc_sdram_slave_p0_reset_n = videooutsoc_sdram_dfi_p0_reset_n;
assign videooutsoc_sdram_slave_p0_wrdata = videooutsoc_sdram_dfi_p0_wrdata;
assign videooutsoc_sdram_slave_p0_wrdata_en = videooutsoc_sdram_dfi_p0_wrdata_en;
assign videooutsoc_sdram_slave_p0_wrdata_mask = videooutsoc_sdram_dfi_p0_wrdata_mask;
assign videooutsoc_sdram_slave_p0_rddata_en = videooutsoc_sdram_dfi_p0_rddata_en;
assign videooutsoc_sdram_dfi_p0_rddata = videooutsoc_sdram_slave_p0_rddata;
assign videooutsoc_sdram_dfi_p0_rddata_valid = videooutsoc_sdram_slave_p0_rddata_valid;
assign videooutsoc_sdram_slave_p1_address = videooutsoc_sdram_dfi_p1_address;
assign videooutsoc_sdram_slave_p1_bank = videooutsoc_sdram_dfi_p1_bank;
assign videooutsoc_sdram_slave_p1_cas_n = videooutsoc_sdram_dfi_p1_cas_n;
assign videooutsoc_sdram_slave_p1_cs_n = videooutsoc_sdram_dfi_p1_cs_n;
assign videooutsoc_sdram_slave_p1_ras_n = videooutsoc_sdram_dfi_p1_ras_n;
assign videooutsoc_sdram_slave_p1_we_n = videooutsoc_sdram_dfi_p1_we_n;
assign videooutsoc_sdram_slave_p1_cke = videooutsoc_sdram_dfi_p1_cke;
assign videooutsoc_sdram_slave_p1_odt = videooutsoc_sdram_dfi_p1_odt;
assign videooutsoc_sdram_slave_p1_reset_n = videooutsoc_sdram_dfi_p1_reset_n;
assign videooutsoc_sdram_slave_p1_wrdata = videooutsoc_sdram_dfi_p1_wrdata;
assign videooutsoc_sdram_slave_p1_wrdata_en = videooutsoc_sdram_dfi_p1_wrdata_en;
assign videooutsoc_sdram_slave_p1_wrdata_mask = videooutsoc_sdram_dfi_p1_wrdata_mask;
assign videooutsoc_sdram_slave_p1_rddata_en = videooutsoc_sdram_dfi_p1_rddata_en;
assign videooutsoc_sdram_dfi_p1_rddata = videooutsoc_sdram_slave_p1_rddata;
assign videooutsoc_sdram_dfi_p1_rddata_valid = videooutsoc_sdram_slave_p1_rddata_valid;
assign videooutsoc_sdram_slave_p2_address = videooutsoc_sdram_dfi_p2_address;
assign videooutsoc_sdram_slave_p2_bank = videooutsoc_sdram_dfi_p2_bank;
assign videooutsoc_sdram_slave_p2_cas_n = videooutsoc_sdram_dfi_p2_cas_n;
assign videooutsoc_sdram_slave_p2_cs_n = videooutsoc_sdram_dfi_p2_cs_n;
assign videooutsoc_sdram_slave_p2_ras_n = videooutsoc_sdram_dfi_p2_ras_n;
assign videooutsoc_sdram_slave_p2_we_n = videooutsoc_sdram_dfi_p2_we_n;
assign videooutsoc_sdram_slave_p2_cke = videooutsoc_sdram_dfi_p2_cke;
assign videooutsoc_sdram_slave_p2_odt = videooutsoc_sdram_dfi_p2_odt;
assign videooutsoc_sdram_slave_p2_reset_n = videooutsoc_sdram_dfi_p2_reset_n;
assign videooutsoc_sdram_slave_p2_wrdata = videooutsoc_sdram_dfi_p2_wrdata;
assign videooutsoc_sdram_slave_p2_wrdata_en = videooutsoc_sdram_dfi_p2_wrdata_en;
assign videooutsoc_sdram_slave_p2_wrdata_mask = videooutsoc_sdram_dfi_p2_wrdata_mask;
assign videooutsoc_sdram_slave_p2_rddata_en = videooutsoc_sdram_dfi_p2_rddata_en;
assign videooutsoc_sdram_dfi_p2_rddata = videooutsoc_sdram_slave_p2_rddata;
assign videooutsoc_sdram_dfi_p2_rddata_valid = videooutsoc_sdram_slave_p2_rddata_valid;
assign videooutsoc_sdram_slave_p3_address = videooutsoc_sdram_dfi_p3_address;
assign videooutsoc_sdram_slave_p3_bank = videooutsoc_sdram_dfi_p3_bank;
assign videooutsoc_sdram_slave_p3_cas_n = videooutsoc_sdram_dfi_p3_cas_n;
assign videooutsoc_sdram_slave_p3_cs_n = videooutsoc_sdram_dfi_p3_cs_n;
assign videooutsoc_sdram_slave_p3_ras_n = videooutsoc_sdram_dfi_p3_ras_n;
assign videooutsoc_sdram_slave_p3_we_n = videooutsoc_sdram_dfi_p3_we_n;
assign videooutsoc_sdram_slave_p3_cke = videooutsoc_sdram_dfi_p3_cke;
assign videooutsoc_sdram_slave_p3_odt = videooutsoc_sdram_dfi_p3_odt;
assign videooutsoc_sdram_slave_p3_reset_n = videooutsoc_sdram_dfi_p3_reset_n;
assign videooutsoc_sdram_slave_p3_wrdata = videooutsoc_sdram_dfi_p3_wrdata;
assign videooutsoc_sdram_slave_p3_wrdata_en = videooutsoc_sdram_dfi_p3_wrdata_en;
assign videooutsoc_sdram_slave_p3_wrdata_mask = videooutsoc_sdram_dfi_p3_wrdata_mask;
assign videooutsoc_sdram_slave_p3_rddata_en = videooutsoc_sdram_dfi_p3_rddata_en;
assign videooutsoc_sdram_dfi_p3_rddata = videooutsoc_sdram_slave_p3_rddata;
assign videooutsoc_sdram_dfi_p3_rddata_valid = videooutsoc_sdram_slave_p3_rddata_valid;
always @(*) begin
	videooutsoc_sdram_slave_p0_rddata <= 64'd0;
	videooutsoc_sdram_slave_p0_rddata_valid <= 1'd0;
	videooutsoc_sdram_slave_p1_rddata <= 64'd0;
	videooutsoc_sdram_slave_p1_rddata_valid <= 1'd0;
	videooutsoc_sdram_slave_p2_rddata <= 64'd0;
	videooutsoc_sdram_slave_p2_rddata_valid <= 1'd0;
	videooutsoc_sdram_slave_p3_rddata <= 64'd0;
	videooutsoc_sdram_slave_p3_rddata_valid <= 1'd0;
	videooutsoc_sdram_master_p0_address <= 14'd0;
	videooutsoc_sdram_master_p0_bank <= 3'd0;
	videooutsoc_sdram_master_p0_cas_n <= 1'd1;
	videooutsoc_sdram_master_p0_cs_n <= 1'd1;
	videooutsoc_sdram_master_p0_ras_n <= 1'd1;
	videooutsoc_sdram_master_p0_we_n <= 1'd1;
	videooutsoc_sdram_inti_p0_rddata <= 64'd0;
	videooutsoc_sdram_master_p0_cke <= 1'd0;
	videooutsoc_sdram_inti_p0_rddata_valid <= 1'd0;
	videooutsoc_sdram_master_p0_odt <= 1'd0;
	videooutsoc_sdram_master_p0_reset_n <= 1'd0;
	videooutsoc_sdram_master_p0_wrdata <= 64'd0;
	videooutsoc_sdram_master_p0_wrdata_en <= 1'd0;
	videooutsoc_sdram_master_p0_wrdata_mask <= 8'd0;
	videooutsoc_sdram_master_p0_rddata_en <= 1'd0;
	videooutsoc_sdram_master_p1_address <= 14'd0;
	videooutsoc_sdram_master_p1_bank <= 3'd0;
	videooutsoc_sdram_master_p1_cas_n <= 1'd1;
	videooutsoc_sdram_master_p1_cs_n <= 1'd1;
	videooutsoc_sdram_master_p1_ras_n <= 1'd1;
	videooutsoc_sdram_master_p1_we_n <= 1'd1;
	videooutsoc_sdram_inti_p1_rddata <= 64'd0;
	videooutsoc_sdram_master_p1_cke <= 1'd0;
	videooutsoc_sdram_inti_p1_rddata_valid <= 1'd0;
	videooutsoc_sdram_master_p1_odt <= 1'd0;
	videooutsoc_sdram_master_p1_reset_n <= 1'd0;
	videooutsoc_sdram_master_p1_wrdata <= 64'd0;
	videooutsoc_sdram_master_p1_wrdata_en <= 1'd0;
	videooutsoc_sdram_master_p1_wrdata_mask <= 8'd0;
	videooutsoc_sdram_master_p1_rddata_en <= 1'd0;
	videooutsoc_sdram_master_p2_address <= 14'd0;
	videooutsoc_sdram_master_p2_bank <= 3'd0;
	videooutsoc_sdram_master_p2_cas_n <= 1'd1;
	videooutsoc_sdram_master_p2_cs_n <= 1'd1;
	videooutsoc_sdram_master_p2_ras_n <= 1'd1;
	videooutsoc_sdram_master_p2_we_n <= 1'd1;
	videooutsoc_sdram_inti_p2_rddata <= 64'd0;
	videooutsoc_sdram_master_p2_cke <= 1'd0;
	videooutsoc_sdram_inti_p2_rddata_valid <= 1'd0;
	videooutsoc_sdram_master_p2_odt <= 1'd0;
	videooutsoc_sdram_master_p2_reset_n <= 1'd0;
	videooutsoc_sdram_master_p2_wrdata <= 64'd0;
	videooutsoc_sdram_master_p2_wrdata_en <= 1'd0;
	videooutsoc_sdram_master_p2_wrdata_mask <= 8'd0;
	videooutsoc_sdram_master_p2_rddata_en <= 1'd0;
	videooutsoc_sdram_master_p3_address <= 14'd0;
	videooutsoc_sdram_master_p3_bank <= 3'd0;
	videooutsoc_sdram_master_p3_cas_n <= 1'd1;
	videooutsoc_sdram_master_p3_cs_n <= 1'd1;
	videooutsoc_sdram_master_p3_ras_n <= 1'd1;
	videooutsoc_sdram_master_p3_we_n <= 1'd1;
	videooutsoc_sdram_inti_p3_rddata <= 64'd0;
	videooutsoc_sdram_master_p3_cke <= 1'd0;
	videooutsoc_sdram_inti_p3_rddata_valid <= 1'd0;
	videooutsoc_sdram_master_p3_odt <= 1'd0;
	videooutsoc_sdram_master_p3_reset_n <= 1'd0;
	videooutsoc_sdram_master_p3_wrdata <= 64'd0;
	videooutsoc_sdram_master_p3_wrdata_en <= 1'd0;
	videooutsoc_sdram_master_p3_wrdata_mask <= 8'd0;
	videooutsoc_sdram_master_p3_rddata_en <= 1'd0;
	if (videooutsoc_sdram_storage[0]) begin
		videooutsoc_sdram_master_p0_address <= videooutsoc_sdram_slave_p0_address;
		videooutsoc_sdram_master_p0_bank <= videooutsoc_sdram_slave_p0_bank;
		videooutsoc_sdram_master_p0_cas_n <= videooutsoc_sdram_slave_p0_cas_n;
		videooutsoc_sdram_master_p0_cs_n <= videooutsoc_sdram_slave_p0_cs_n;
		videooutsoc_sdram_master_p0_ras_n <= videooutsoc_sdram_slave_p0_ras_n;
		videooutsoc_sdram_master_p0_we_n <= videooutsoc_sdram_slave_p0_we_n;
		videooutsoc_sdram_master_p0_cke <= videooutsoc_sdram_slave_p0_cke;
		videooutsoc_sdram_master_p0_odt <= videooutsoc_sdram_slave_p0_odt;
		videooutsoc_sdram_master_p0_reset_n <= videooutsoc_sdram_slave_p0_reset_n;
		videooutsoc_sdram_master_p0_wrdata <= videooutsoc_sdram_slave_p0_wrdata;
		videooutsoc_sdram_master_p0_wrdata_en <= videooutsoc_sdram_slave_p0_wrdata_en;
		videooutsoc_sdram_master_p0_wrdata_mask <= videooutsoc_sdram_slave_p0_wrdata_mask;
		videooutsoc_sdram_master_p0_rddata_en <= videooutsoc_sdram_slave_p0_rddata_en;
		videooutsoc_sdram_slave_p0_rddata <= videooutsoc_sdram_master_p0_rddata;
		videooutsoc_sdram_slave_p0_rddata_valid <= videooutsoc_sdram_master_p0_rddata_valid;
		videooutsoc_sdram_master_p1_address <= videooutsoc_sdram_slave_p1_address;
		videooutsoc_sdram_master_p1_bank <= videooutsoc_sdram_slave_p1_bank;
		videooutsoc_sdram_master_p1_cas_n <= videooutsoc_sdram_slave_p1_cas_n;
		videooutsoc_sdram_master_p1_cs_n <= videooutsoc_sdram_slave_p1_cs_n;
		videooutsoc_sdram_master_p1_ras_n <= videooutsoc_sdram_slave_p1_ras_n;
		videooutsoc_sdram_master_p1_we_n <= videooutsoc_sdram_slave_p1_we_n;
		videooutsoc_sdram_master_p1_cke <= videooutsoc_sdram_slave_p1_cke;
		videooutsoc_sdram_master_p1_odt <= videooutsoc_sdram_slave_p1_odt;
		videooutsoc_sdram_master_p1_reset_n <= videooutsoc_sdram_slave_p1_reset_n;
		videooutsoc_sdram_master_p1_wrdata <= videooutsoc_sdram_slave_p1_wrdata;
		videooutsoc_sdram_master_p1_wrdata_en <= videooutsoc_sdram_slave_p1_wrdata_en;
		videooutsoc_sdram_master_p1_wrdata_mask <= videooutsoc_sdram_slave_p1_wrdata_mask;
		videooutsoc_sdram_master_p1_rddata_en <= videooutsoc_sdram_slave_p1_rddata_en;
		videooutsoc_sdram_slave_p1_rddata <= videooutsoc_sdram_master_p1_rddata;
		videooutsoc_sdram_slave_p1_rddata_valid <= videooutsoc_sdram_master_p1_rddata_valid;
		videooutsoc_sdram_master_p2_address <= videooutsoc_sdram_slave_p2_address;
		videooutsoc_sdram_master_p2_bank <= videooutsoc_sdram_slave_p2_bank;
		videooutsoc_sdram_master_p2_cas_n <= videooutsoc_sdram_slave_p2_cas_n;
		videooutsoc_sdram_master_p2_cs_n <= videooutsoc_sdram_slave_p2_cs_n;
		videooutsoc_sdram_master_p2_ras_n <= videooutsoc_sdram_slave_p2_ras_n;
		videooutsoc_sdram_master_p2_we_n <= videooutsoc_sdram_slave_p2_we_n;
		videooutsoc_sdram_master_p2_cke <= videooutsoc_sdram_slave_p2_cke;
		videooutsoc_sdram_master_p2_odt <= videooutsoc_sdram_slave_p2_odt;
		videooutsoc_sdram_master_p2_reset_n <= videooutsoc_sdram_slave_p2_reset_n;
		videooutsoc_sdram_master_p2_wrdata <= videooutsoc_sdram_slave_p2_wrdata;
		videooutsoc_sdram_master_p2_wrdata_en <= videooutsoc_sdram_slave_p2_wrdata_en;
		videooutsoc_sdram_master_p2_wrdata_mask <= videooutsoc_sdram_slave_p2_wrdata_mask;
		videooutsoc_sdram_master_p2_rddata_en <= videooutsoc_sdram_slave_p2_rddata_en;
		videooutsoc_sdram_slave_p2_rddata <= videooutsoc_sdram_master_p2_rddata;
		videooutsoc_sdram_slave_p2_rddata_valid <= videooutsoc_sdram_master_p2_rddata_valid;
		videooutsoc_sdram_master_p3_address <= videooutsoc_sdram_slave_p3_address;
		videooutsoc_sdram_master_p3_bank <= videooutsoc_sdram_slave_p3_bank;
		videooutsoc_sdram_master_p3_cas_n <= videooutsoc_sdram_slave_p3_cas_n;
		videooutsoc_sdram_master_p3_cs_n <= videooutsoc_sdram_slave_p3_cs_n;
		videooutsoc_sdram_master_p3_ras_n <= videooutsoc_sdram_slave_p3_ras_n;
		videooutsoc_sdram_master_p3_we_n <= videooutsoc_sdram_slave_p3_we_n;
		videooutsoc_sdram_master_p3_cke <= videooutsoc_sdram_slave_p3_cke;
		videooutsoc_sdram_master_p3_odt <= videooutsoc_sdram_slave_p3_odt;
		videooutsoc_sdram_master_p3_reset_n <= videooutsoc_sdram_slave_p3_reset_n;
		videooutsoc_sdram_master_p3_wrdata <= videooutsoc_sdram_slave_p3_wrdata;
		videooutsoc_sdram_master_p3_wrdata_en <= videooutsoc_sdram_slave_p3_wrdata_en;
		videooutsoc_sdram_master_p3_wrdata_mask <= videooutsoc_sdram_slave_p3_wrdata_mask;
		videooutsoc_sdram_master_p3_rddata_en <= videooutsoc_sdram_slave_p3_rddata_en;
		videooutsoc_sdram_slave_p3_rddata <= videooutsoc_sdram_master_p3_rddata;
		videooutsoc_sdram_slave_p3_rddata_valid <= videooutsoc_sdram_master_p3_rddata_valid;
	end else begin
		videooutsoc_sdram_master_p0_address <= videooutsoc_sdram_inti_p0_address;
		videooutsoc_sdram_master_p0_bank <= videooutsoc_sdram_inti_p0_bank;
		videooutsoc_sdram_master_p0_cas_n <= videooutsoc_sdram_inti_p0_cas_n;
		videooutsoc_sdram_master_p0_cs_n <= videooutsoc_sdram_inti_p0_cs_n;
		videooutsoc_sdram_master_p0_ras_n <= videooutsoc_sdram_inti_p0_ras_n;
		videooutsoc_sdram_master_p0_we_n <= videooutsoc_sdram_inti_p0_we_n;
		videooutsoc_sdram_master_p0_cke <= videooutsoc_sdram_inti_p0_cke;
		videooutsoc_sdram_master_p0_odt <= videooutsoc_sdram_inti_p0_odt;
		videooutsoc_sdram_master_p0_reset_n <= videooutsoc_sdram_inti_p0_reset_n;
		videooutsoc_sdram_master_p0_wrdata <= videooutsoc_sdram_inti_p0_wrdata;
		videooutsoc_sdram_master_p0_wrdata_en <= videooutsoc_sdram_inti_p0_wrdata_en;
		videooutsoc_sdram_master_p0_wrdata_mask <= videooutsoc_sdram_inti_p0_wrdata_mask;
		videooutsoc_sdram_master_p0_rddata_en <= videooutsoc_sdram_inti_p0_rddata_en;
		videooutsoc_sdram_inti_p0_rddata <= videooutsoc_sdram_master_p0_rddata;
		videooutsoc_sdram_inti_p0_rddata_valid <= videooutsoc_sdram_master_p0_rddata_valid;
		videooutsoc_sdram_master_p1_address <= videooutsoc_sdram_inti_p1_address;
		videooutsoc_sdram_master_p1_bank <= videooutsoc_sdram_inti_p1_bank;
		videooutsoc_sdram_master_p1_cas_n <= videooutsoc_sdram_inti_p1_cas_n;
		videooutsoc_sdram_master_p1_cs_n <= videooutsoc_sdram_inti_p1_cs_n;
		videooutsoc_sdram_master_p1_ras_n <= videooutsoc_sdram_inti_p1_ras_n;
		videooutsoc_sdram_master_p1_we_n <= videooutsoc_sdram_inti_p1_we_n;
		videooutsoc_sdram_master_p1_cke <= videooutsoc_sdram_inti_p1_cke;
		videooutsoc_sdram_master_p1_odt <= videooutsoc_sdram_inti_p1_odt;
		videooutsoc_sdram_master_p1_reset_n <= videooutsoc_sdram_inti_p1_reset_n;
		videooutsoc_sdram_master_p1_wrdata <= videooutsoc_sdram_inti_p1_wrdata;
		videooutsoc_sdram_master_p1_wrdata_en <= videooutsoc_sdram_inti_p1_wrdata_en;
		videooutsoc_sdram_master_p1_wrdata_mask <= videooutsoc_sdram_inti_p1_wrdata_mask;
		videooutsoc_sdram_master_p1_rddata_en <= videooutsoc_sdram_inti_p1_rddata_en;
		videooutsoc_sdram_inti_p1_rddata <= videooutsoc_sdram_master_p1_rddata;
		videooutsoc_sdram_inti_p1_rddata_valid <= videooutsoc_sdram_master_p1_rddata_valid;
		videooutsoc_sdram_master_p2_address <= videooutsoc_sdram_inti_p2_address;
		videooutsoc_sdram_master_p2_bank <= videooutsoc_sdram_inti_p2_bank;
		videooutsoc_sdram_master_p2_cas_n <= videooutsoc_sdram_inti_p2_cas_n;
		videooutsoc_sdram_master_p2_cs_n <= videooutsoc_sdram_inti_p2_cs_n;
		videooutsoc_sdram_master_p2_ras_n <= videooutsoc_sdram_inti_p2_ras_n;
		videooutsoc_sdram_master_p2_we_n <= videooutsoc_sdram_inti_p2_we_n;
		videooutsoc_sdram_master_p2_cke <= videooutsoc_sdram_inti_p2_cke;
		videooutsoc_sdram_master_p2_odt <= videooutsoc_sdram_inti_p2_odt;
		videooutsoc_sdram_master_p2_reset_n <= videooutsoc_sdram_inti_p2_reset_n;
		videooutsoc_sdram_master_p2_wrdata <= videooutsoc_sdram_inti_p2_wrdata;
		videooutsoc_sdram_master_p2_wrdata_en <= videooutsoc_sdram_inti_p2_wrdata_en;
		videooutsoc_sdram_master_p2_wrdata_mask <= videooutsoc_sdram_inti_p2_wrdata_mask;
		videooutsoc_sdram_master_p2_rddata_en <= videooutsoc_sdram_inti_p2_rddata_en;
		videooutsoc_sdram_inti_p2_rddata <= videooutsoc_sdram_master_p2_rddata;
		videooutsoc_sdram_inti_p2_rddata_valid <= videooutsoc_sdram_master_p2_rddata_valid;
		videooutsoc_sdram_master_p3_address <= videooutsoc_sdram_inti_p3_address;
		videooutsoc_sdram_master_p3_bank <= videooutsoc_sdram_inti_p3_bank;
		videooutsoc_sdram_master_p3_cas_n <= videooutsoc_sdram_inti_p3_cas_n;
		videooutsoc_sdram_master_p3_cs_n <= videooutsoc_sdram_inti_p3_cs_n;
		videooutsoc_sdram_master_p3_ras_n <= videooutsoc_sdram_inti_p3_ras_n;
		videooutsoc_sdram_master_p3_we_n <= videooutsoc_sdram_inti_p3_we_n;
		videooutsoc_sdram_master_p3_cke <= videooutsoc_sdram_inti_p3_cke;
		videooutsoc_sdram_master_p3_odt <= videooutsoc_sdram_inti_p3_odt;
		videooutsoc_sdram_master_p3_reset_n <= videooutsoc_sdram_inti_p3_reset_n;
		videooutsoc_sdram_master_p3_wrdata <= videooutsoc_sdram_inti_p3_wrdata;
		videooutsoc_sdram_master_p3_wrdata_en <= videooutsoc_sdram_inti_p3_wrdata_en;
		videooutsoc_sdram_master_p3_wrdata_mask <= videooutsoc_sdram_inti_p3_wrdata_mask;
		videooutsoc_sdram_master_p3_rddata_en <= videooutsoc_sdram_inti_p3_rddata_en;
		videooutsoc_sdram_inti_p3_rddata <= videooutsoc_sdram_master_p3_rddata;
		videooutsoc_sdram_inti_p3_rddata_valid <= videooutsoc_sdram_master_p3_rddata_valid;
	end
end
assign videooutsoc_sdram_inti_p0_cke = videooutsoc_sdram_storage[1];
assign videooutsoc_sdram_inti_p1_cke = videooutsoc_sdram_storage[1];
assign videooutsoc_sdram_inti_p2_cke = videooutsoc_sdram_storage[1];
assign videooutsoc_sdram_inti_p3_cke = videooutsoc_sdram_storage[1];
assign videooutsoc_sdram_inti_p0_odt = videooutsoc_sdram_storage[2];
assign videooutsoc_sdram_inti_p1_odt = videooutsoc_sdram_storage[2];
assign videooutsoc_sdram_inti_p2_odt = videooutsoc_sdram_storage[2];
assign videooutsoc_sdram_inti_p3_odt = videooutsoc_sdram_storage[2];
assign videooutsoc_sdram_inti_p0_reset_n = videooutsoc_sdram_storage[3];
assign videooutsoc_sdram_inti_p1_reset_n = videooutsoc_sdram_storage[3];
assign videooutsoc_sdram_inti_p2_reset_n = videooutsoc_sdram_storage[3];
assign videooutsoc_sdram_inti_p3_reset_n = videooutsoc_sdram_storage[3];
always @(*) begin
	videooutsoc_sdram_inti_p0_cas_n <= 1'd1;
	videooutsoc_sdram_inti_p0_cs_n <= 1'd1;
	videooutsoc_sdram_inti_p0_ras_n <= 1'd1;
	videooutsoc_sdram_inti_p0_we_n <= 1'd1;
	if (videooutsoc_sdram_phaseinjector0_command_issue_re) begin
		videooutsoc_sdram_inti_p0_cs_n <= (~videooutsoc_sdram_phaseinjector0_command_storage[0]);
		videooutsoc_sdram_inti_p0_we_n <= (~videooutsoc_sdram_phaseinjector0_command_storage[1]);
		videooutsoc_sdram_inti_p0_cas_n <= (~videooutsoc_sdram_phaseinjector0_command_storage[2]);
		videooutsoc_sdram_inti_p0_ras_n <= (~videooutsoc_sdram_phaseinjector0_command_storage[3]);
	end else begin
		videooutsoc_sdram_inti_p0_cs_n <= 1'd1;
		videooutsoc_sdram_inti_p0_we_n <= 1'd1;
		videooutsoc_sdram_inti_p0_cas_n <= 1'd1;
		videooutsoc_sdram_inti_p0_ras_n <= 1'd1;
	end
end
assign videooutsoc_sdram_inti_p0_address = videooutsoc_sdram_phaseinjector0_address_storage;
assign videooutsoc_sdram_inti_p0_bank = videooutsoc_sdram_phaseinjector0_baddress_storage;
assign videooutsoc_sdram_inti_p0_wrdata_en = (videooutsoc_sdram_phaseinjector0_command_issue_re & videooutsoc_sdram_phaseinjector0_command_storage[4]);
assign videooutsoc_sdram_inti_p0_rddata_en = (videooutsoc_sdram_phaseinjector0_command_issue_re & videooutsoc_sdram_phaseinjector0_command_storage[5]);
assign videooutsoc_sdram_inti_p0_wrdata = videooutsoc_sdram_phaseinjector0_wrdata_storage;
assign videooutsoc_sdram_inti_p0_wrdata_mask = 1'd0;
always @(*) begin
	videooutsoc_sdram_inti_p1_cs_n <= 1'd1;
	videooutsoc_sdram_inti_p1_ras_n <= 1'd1;
	videooutsoc_sdram_inti_p1_we_n <= 1'd1;
	videooutsoc_sdram_inti_p1_cas_n <= 1'd1;
	if (videooutsoc_sdram_phaseinjector1_command_issue_re) begin
		videooutsoc_sdram_inti_p1_cs_n <= (~videooutsoc_sdram_phaseinjector1_command_storage[0]);
		videooutsoc_sdram_inti_p1_we_n <= (~videooutsoc_sdram_phaseinjector1_command_storage[1]);
		videooutsoc_sdram_inti_p1_cas_n <= (~videooutsoc_sdram_phaseinjector1_command_storage[2]);
		videooutsoc_sdram_inti_p1_ras_n <= (~videooutsoc_sdram_phaseinjector1_command_storage[3]);
	end else begin
		videooutsoc_sdram_inti_p1_cs_n <= 1'd1;
		videooutsoc_sdram_inti_p1_we_n <= 1'd1;
		videooutsoc_sdram_inti_p1_cas_n <= 1'd1;
		videooutsoc_sdram_inti_p1_ras_n <= 1'd1;
	end
end
assign videooutsoc_sdram_inti_p1_address = videooutsoc_sdram_phaseinjector1_address_storage;
assign videooutsoc_sdram_inti_p1_bank = videooutsoc_sdram_phaseinjector1_baddress_storage;
assign videooutsoc_sdram_inti_p1_wrdata_en = (videooutsoc_sdram_phaseinjector1_command_issue_re & videooutsoc_sdram_phaseinjector1_command_storage[4]);
assign videooutsoc_sdram_inti_p1_rddata_en = (videooutsoc_sdram_phaseinjector1_command_issue_re & videooutsoc_sdram_phaseinjector1_command_storage[5]);
assign videooutsoc_sdram_inti_p1_wrdata = videooutsoc_sdram_phaseinjector1_wrdata_storage;
assign videooutsoc_sdram_inti_p1_wrdata_mask = 1'd0;
always @(*) begin
	videooutsoc_sdram_inti_p2_ras_n <= 1'd1;
	videooutsoc_sdram_inti_p2_we_n <= 1'd1;
	videooutsoc_sdram_inti_p2_cas_n <= 1'd1;
	videooutsoc_sdram_inti_p2_cs_n <= 1'd1;
	if (videooutsoc_sdram_phaseinjector2_command_issue_re) begin
		videooutsoc_sdram_inti_p2_cs_n <= (~videooutsoc_sdram_phaseinjector2_command_storage[0]);
		videooutsoc_sdram_inti_p2_we_n <= (~videooutsoc_sdram_phaseinjector2_command_storage[1]);
		videooutsoc_sdram_inti_p2_cas_n <= (~videooutsoc_sdram_phaseinjector2_command_storage[2]);
		videooutsoc_sdram_inti_p2_ras_n <= (~videooutsoc_sdram_phaseinjector2_command_storage[3]);
	end else begin
		videooutsoc_sdram_inti_p2_cs_n <= 1'd1;
		videooutsoc_sdram_inti_p2_we_n <= 1'd1;
		videooutsoc_sdram_inti_p2_cas_n <= 1'd1;
		videooutsoc_sdram_inti_p2_ras_n <= 1'd1;
	end
end
assign videooutsoc_sdram_inti_p2_address = videooutsoc_sdram_phaseinjector2_address_storage;
assign videooutsoc_sdram_inti_p2_bank = videooutsoc_sdram_phaseinjector2_baddress_storage;
assign videooutsoc_sdram_inti_p2_wrdata_en = (videooutsoc_sdram_phaseinjector2_command_issue_re & videooutsoc_sdram_phaseinjector2_command_storage[4]);
assign videooutsoc_sdram_inti_p2_rddata_en = (videooutsoc_sdram_phaseinjector2_command_issue_re & videooutsoc_sdram_phaseinjector2_command_storage[5]);
assign videooutsoc_sdram_inti_p2_wrdata = videooutsoc_sdram_phaseinjector2_wrdata_storage;
assign videooutsoc_sdram_inti_p2_wrdata_mask = 1'd0;
always @(*) begin
	videooutsoc_sdram_inti_p3_we_n <= 1'd1;
	videooutsoc_sdram_inti_p3_cas_n <= 1'd1;
	videooutsoc_sdram_inti_p3_cs_n <= 1'd1;
	videooutsoc_sdram_inti_p3_ras_n <= 1'd1;
	if (videooutsoc_sdram_phaseinjector3_command_issue_re) begin
		videooutsoc_sdram_inti_p3_cs_n <= (~videooutsoc_sdram_phaseinjector3_command_storage[0]);
		videooutsoc_sdram_inti_p3_we_n <= (~videooutsoc_sdram_phaseinjector3_command_storage[1]);
		videooutsoc_sdram_inti_p3_cas_n <= (~videooutsoc_sdram_phaseinjector3_command_storage[2]);
		videooutsoc_sdram_inti_p3_ras_n <= (~videooutsoc_sdram_phaseinjector3_command_storage[3]);
	end else begin
		videooutsoc_sdram_inti_p3_cs_n <= 1'd1;
		videooutsoc_sdram_inti_p3_we_n <= 1'd1;
		videooutsoc_sdram_inti_p3_cas_n <= 1'd1;
		videooutsoc_sdram_inti_p3_ras_n <= 1'd1;
	end
end
assign videooutsoc_sdram_inti_p3_address = videooutsoc_sdram_phaseinjector3_address_storage;
assign videooutsoc_sdram_inti_p3_bank = videooutsoc_sdram_phaseinjector3_baddress_storage;
assign videooutsoc_sdram_inti_p3_wrdata_en = (videooutsoc_sdram_phaseinjector3_command_issue_re & videooutsoc_sdram_phaseinjector3_command_storage[4]);
assign videooutsoc_sdram_inti_p3_rddata_en = (videooutsoc_sdram_phaseinjector3_command_issue_re & videooutsoc_sdram_phaseinjector3_command_storage[5]);
assign videooutsoc_sdram_inti_p3_wrdata = videooutsoc_sdram_phaseinjector3_wrdata_storage;
assign videooutsoc_sdram_inti_p3_wrdata_mask = 1'd0;
assign videooutsoc_sdram_bankmachine0_req_valid = videooutsoc_sdram_interface_bank0_valid;
assign videooutsoc_sdram_interface_bank0_ready = videooutsoc_sdram_bankmachine0_req_ready;
assign videooutsoc_sdram_bankmachine0_req_we = videooutsoc_sdram_interface_bank0_we;
assign videooutsoc_sdram_bankmachine0_req_adr = videooutsoc_sdram_interface_bank0_adr;
assign videooutsoc_sdram_interface_bank0_lock = videooutsoc_sdram_bankmachine0_req_lock;
assign videooutsoc_sdram_interface_bank0_wdata_ready = videooutsoc_sdram_bankmachine0_req_wdata_ready;
assign videooutsoc_sdram_interface_bank0_rdata_valid = videooutsoc_sdram_bankmachine0_req_rdata_valid;
assign videooutsoc_sdram_bankmachine1_req_valid = videooutsoc_sdram_interface_bank1_valid;
assign videooutsoc_sdram_interface_bank1_ready = videooutsoc_sdram_bankmachine1_req_ready;
assign videooutsoc_sdram_bankmachine1_req_we = videooutsoc_sdram_interface_bank1_we;
assign videooutsoc_sdram_bankmachine1_req_adr = videooutsoc_sdram_interface_bank1_adr;
assign videooutsoc_sdram_interface_bank1_lock = videooutsoc_sdram_bankmachine1_req_lock;
assign videooutsoc_sdram_interface_bank1_wdata_ready = videooutsoc_sdram_bankmachine1_req_wdata_ready;
assign videooutsoc_sdram_interface_bank1_rdata_valid = videooutsoc_sdram_bankmachine1_req_rdata_valid;
assign videooutsoc_sdram_bankmachine2_req_valid = videooutsoc_sdram_interface_bank2_valid;
assign videooutsoc_sdram_interface_bank2_ready = videooutsoc_sdram_bankmachine2_req_ready;
assign videooutsoc_sdram_bankmachine2_req_we = videooutsoc_sdram_interface_bank2_we;
assign videooutsoc_sdram_bankmachine2_req_adr = videooutsoc_sdram_interface_bank2_adr;
assign videooutsoc_sdram_interface_bank2_lock = videooutsoc_sdram_bankmachine2_req_lock;
assign videooutsoc_sdram_interface_bank2_wdata_ready = videooutsoc_sdram_bankmachine2_req_wdata_ready;
assign videooutsoc_sdram_interface_bank2_rdata_valid = videooutsoc_sdram_bankmachine2_req_rdata_valid;
assign videooutsoc_sdram_bankmachine3_req_valid = videooutsoc_sdram_interface_bank3_valid;
assign videooutsoc_sdram_interface_bank3_ready = videooutsoc_sdram_bankmachine3_req_ready;
assign videooutsoc_sdram_bankmachine3_req_we = videooutsoc_sdram_interface_bank3_we;
assign videooutsoc_sdram_bankmachine3_req_adr = videooutsoc_sdram_interface_bank3_adr;
assign videooutsoc_sdram_interface_bank3_lock = videooutsoc_sdram_bankmachine3_req_lock;
assign videooutsoc_sdram_interface_bank3_wdata_ready = videooutsoc_sdram_bankmachine3_req_wdata_ready;
assign videooutsoc_sdram_interface_bank3_rdata_valid = videooutsoc_sdram_bankmachine3_req_rdata_valid;
assign videooutsoc_sdram_bankmachine4_req_valid = videooutsoc_sdram_interface_bank4_valid;
assign videooutsoc_sdram_interface_bank4_ready = videooutsoc_sdram_bankmachine4_req_ready;
assign videooutsoc_sdram_bankmachine4_req_we = videooutsoc_sdram_interface_bank4_we;
assign videooutsoc_sdram_bankmachine4_req_adr = videooutsoc_sdram_interface_bank4_adr;
assign videooutsoc_sdram_interface_bank4_lock = videooutsoc_sdram_bankmachine4_req_lock;
assign videooutsoc_sdram_interface_bank4_wdata_ready = videooutsoc_sdram_bankmachine4_req_wdata_ready;
assign videooutsoc_sdram_interface_bank4_rdata_valid = videooutsoc_sdram_bankmachine4_req_rdata_valid;
assign videooutsoc_sdram_bankmachine5_req_valid = videooutsoc_sdram_interface_bank5_valid;
assign videooutsoc_sdram_interface_bank5_ready = videooutsoc_sdram_bankmachine5_req_ready;
assign videooutsoc_sdram_bankmachine5_req_we = videooutsoc_sdram_interface_bank5_we;
assign videooutsoc_sdram_bankmachine5_req_adr = videooutsoc_sdram_interface_bank5_adr;
assign videooutsoc_sdram_interface_bank5_lock = videooutsoc_sdram_bankmachine5_req_lock;
assign videooutsoc_sdram_interface_bank5_wdata_ready = videooutsoc_sdram_bankmachine5_req_wdata_ready;
assign videooutsoc_sdram_interface_bank5_rdata_valid = videooutsoc_sdram_bankmachine5_req_rdata_valid;
assign videooutsoc_sdram_bankmachine6_req_valid = videooutsoc_sdram_interface_bank6_valid;
assign videooutsoc_sdram_interface_bank6_ready = videooutsoc_sdram_bankmachine6_req_ready;
assign videooutsoc_sdram_bankmachine6_req_we = videooutsoc_sdram_interface_bank6_we;
assign videooutsoc_sdram_bankmachine6_req_adr = videooutsoc_sdram_interface_bank6_adr;
assign videooutsoc_sdram_interface_bank6_lock = videooutsoc_sdram_bankmachine6_req_lock;
assign videooutsoc_sdram_interface_bank6_wdata_ready = videooutsoc_sdram_bankmachine6_req_wdata_ready;
assign videooutsoc_sdram_interface_bank6_rdata_valid = videooutsoc_sdram_bankmachine6_req_rdata_valid;
assign videooutsoc_sdram_bankmachine7_req_valid = videooutsoc_sdram_interface_bank7_valid;
assign videooutsoc_sdram_interface_bank7_ready = videooutsoc_sdram_bankmachine7_req_ready;
assign videooutsoc_sdram_bankmachine7_req_we = videooutsoc_sdram_interface_bank7_we;
assign videooutsoc_sdram_bankmachine7_req_adr = videooutsoc_sdram_interface_bank7_adr;
assign videooutsoc_sdram_interface_bank7_lock = videooutsoc_sdram_bankmachine7_req_lock;
assign videooutsoc_sdram_interface_bank7_wdata_ready = videooutsoc_sdram_bankmachine7_req_wdata_ready;
assign videooutsoc_sdram_interface_bank7_rdata_valid = videooutsoc_sdram_bankmachine7_req_rdata_valid;
assign videooutsoc_sdram_wait = (1'd1 & (~videooutsoc_sdram_done));
assign videooutsoc_sdram_done = (videooutsoc_sdram_count == 1'd0);
always @(*) begin
	refresher_next_state <= 2'd0;
	videooutsoc_sdram_cmd_last <= 1'd0;
	videooutsoc_sdram_cmd_valid <= 1'd0;
	videooutsoc_sdram_seq_start <= 1'd0;
	refresher_next_state <= refresher_state;
	case (refresher_state)
		1'd1: begin
			videooutsoc_sdram_cmd_valid <= 1'd1;
			if (videooutsoc_sdram_cmd_ready) begin
				videooutsoc_sdram_seq_start <= 1'd1;
				refresher_next_state <= 2'd2;
			end
		end
		2'd2: begin
			if (videooutsoc_sdram_seq_done) begin
				videooutsoc_sdram_cmd_last <= 1'd1;
				refresher_next_state <= 1'd0;
			end else begin
				videooutsoc_sdram_cmd_valid <= 1'd1;
			end
		end
		default: begin
			if (videooutsoc_sdram_done) begin
				refresher_next_state <= 1'd1;
			end
		end
	endcase
end
assign videooutsoc_sdram_bankmachine0_sink_valid = videooutsoc_sdram_bankmachine0_req_valid;
assign videooutsoc_sdram_bankmachine0_req_ready = videooutsoc_sdram_bankmachine0_sink_ready;
assign videooutsoc_sdram_bankmachine0_sink_payload_we = videooutsoc_sdram_bankmachine0_req_we;
assign videooutsoc_sdram_bankmachine0_sink_payload_adr = videooutsoc_sdram_bankmachine0_req_adr;
assign videooutsoc_sdram_bankmachine0_source_ready = (videooutsoc_sdram_bankmachine0_req_wdata_ready | videooutsoc_sdram_bankmachine0_req_rdata_valid);
assign videooutsoc_sdram_bankmachine0_req_lock = videooutsoc_sdram_bankmachine0_source_valid;
assign videooutsoc_sdram_bankmachine0_hit = (videooutsoc_sdram_bankmachine0_openrow == videooutsoc_sdram_bankmachine0_source_payload_adr[20:7]);
assign videooutsoc_sdram_bankmachine0_cmd_payload_ba = 1'd0;
always @(*) begin
	videooutsoc_sdram_bankmachine0_cmd_payload_a <= 14'd0;
	if (videooutsoc_sdram_bankmachine0_sel_row_adr) begin
		videooutsoc_sdram_bankmachine0_cmd_payload_a <= videooutsoc_sdram_bankmachine0_source_payload_adr[20:7];
	end else begin
		videooutsoc_sdram_bankmachine0_cmd_payload_a <= {videooutsoc_sdram_bankmachine0_source_payload_adr[6:0], {3{1'd0}}};
	end
end
assign videooutsoc_sdram_bankmachine0_wait = (~((videooutsoc_sdram_bankmachine0_cmd_valid & videooutsoc_sdram_bankmachine0_cmd_ready) & videooutsoc_sdram_bankmachine0_cmd_payload_is_write));
assign videooutsoc_sdram_bankmachine0_syncfifo0_din = {videooutsoc_sdram_bankmachine0_fifo_in_last, videooutsoc_sdram_bankmachine0_fifo_in_first, videooutsoc_sdram_bankmachine0_fifo_in_payload_adr, videooutsoc_sdram_bankmachine0_fifo_in_payload_we};
assign {videooutsoc_sdram_bankmachine0_fifo_out_last, videooutsoc_sdram_bankmachine0_fifo_out_first, videooutsoc_sdram_bankmachine0_fifo_out_payload_adr, videooutsoc_sdram_bankmachine0_fifo_out_payload_we} = videooutsoc_sdram_bankmachine0_syncfifo0_dout;
assign videooutsoc_sdram_bankmachine0_sink_ready = videooutsoc_sdram_bankmachine0_syncfifo0_writable;
assign videooutsoc_sdram_bankmachine0_syncfifo0_we = videooutsoc_sdram_bankmachine0_sink_valid;
assign videooutsoc_sdram_bankmachine0_fifo_in_first = videooutsoc_sdram_bankmachine0_sink_first;
assign videooutsoc_sdram_bankmachine0_fifo_in_last = videooutsoc_sdram_bankmachine0_sink_last;
assign videooutsoc_sdram_bankmachine0_fifo_in_payload_we = videooutsoc_sdram_bankmachine0_sink_payload_we;
assign videooutsoc_sdram_bankmachine0_fifo_in_payload_adr = videooutsoc_sdram_bankmachine0_sink_payload_adr;
assign videooutsoc_sdram_bankmachine0_source_valid = videooutsoc_sdram_bankmachine0_syncfifo0_readable;
assign videooutsoc_sdram_bankmachine0_source_first = videooutsoc_sdram_bankmachine0_fifo_out_first;
assign videooutsoc_sdram_bankmachine0_source_last = videooutsoc_sdram_bankmachine0_fifo_out_last;
assign videooutsoc_sdram_bankmachine0_source_payload_we = videooutsoc_sdram_bankmachine0_fifo_out_payload_we;
assign videooutsoc_sdram_bankmachine0_source_payload_adr = videooutsoc_sdram_bankmachine0_fifo_out_payload_adr;
assign videooutsoc_sdram_bankmachine0_syncfifo0_re = videooutsoc_sdram_bankmachine0_source_ready;
always @(*) begin
	videooutsoc_sdram_bankmachine0_wrport_adr <= 3'd0;
	if (videooutsoc_sdram_bankmachine0_replace) begin
		videooutsoc_sdram_bankmachine0_wrport_adr <= (videooutsoc_sdram_bankmachine0_produce - 1'd1);
	end else begin
		videooutsoc_sdram_bankmachine0_wrport_adr <= videooutsoc_sdram_bankmachine0_produce;
	end
end
assign videooutsoc_sdram_bankmachine0_wrport_dat_w = videooutsoc_sdram_bankmachine0_syncfifo0_din;
assign videooutsoc_sdram_bankmachine0_wrport_we = (videooutsoc_sdram_bankmachine0_syncfifo0_we & (videooutsoc_sdram_bankmachine0_syncfifo0_writable | videooutsoc_sdram_bankmachine0_replace));
assign videooutsoc_sdram_bankmachine0_do_read = (videooutsoc_sdram_bankmachine0_syncfifo0_readable & videooutsoc_sdram_bankmachine0_syncfifo0_re);
assign videooutsoc_sdram_bankmachine0_rdport_adr = videooutsoc_sdram_bankmachine0_consume;
assign videooutsoc_sdram_bankmachine0_syncfifo0_dout = videooutsoc_sdram_bankmachine0_rdport_dat_r;
assign videooutsoc_sdram_bankmachine0_syncfifo0_writable = (videooutsoc_sdram_bankmachine0_level != 4'd8);
assign videooutsoc_sdram_bankmachine0_syncfifo0_readable = (videooutsoc_sdram_bankmachine0_level != 1'd0);
assign videooutsoc_sdram_bankmachine0_done = (videooutsoc_sdram_bankmachine0_count == 1'd0);
always @(*) begin
	videooutsoc_sdram_bankmachine0_refresh_gnt <= 1'd0;
	videooutsoc_sdram_bankmachine0_cmd_valid <= 1'd0;
	videooutsoc_sdram_bankmachine0_track_open <= 1'd0;
	videooutsoc_sdram_bankmachine0_track_close <= 1'd0;
	videooutsoc_sdram_bankmachine0_cmd_payload_cas <= 1'd0;
	videooutsoc_sdram_bankmachine0_cmd_payload_ras <= 1'd0;
	videooutsoc_sdram_bankmachine0_cmd_payload_we <= 1'd0;
	videooutsoc_sdram_bankmachine0_sel_row_adr <= 1'd0;
	videooutsoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd0;
	videooutsoc_sdram_bankmachine0_cmd_payload_is_read <= 1'd0;
	videooutsoc_sdram_bankmachine0_cmd_payload_is_write <= 1'd0;
	videooutsoc_sdram_bankmachine0_req_wdata_ready <= 1'd0;
	bankmachine0_next_state <= 3'd0;
	videooutsoc_sdram_bankmachine0_req_rdata_valid <= 1'd0;
	bankmachine0_next_state <= bankmachine0_state;
	case (bankmachine0_state)
		1'd1: begin
			if (videooutsoc_sdram_bankmachine0_done) begin
				videooutsoc_sdram_bankmachine0_cmd_valid <= 1'd1;
				if (videooutsoc_sdram_bankmachine0_cmd_ready) begin
					bankmachine0_next_state <= 3'd4;
				end
				videooutsoc_sdram_bankmachine0_cmd_payload_ras <= 1'd1;
				videooutsoc_sdram_bankmachine0_cmd_payload_we <= 1'd1;
				videooutsoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			end
			videooutsoc_sdram_bankmachine0_track_close <= 1'd1;
		end
		2'd2: begin
			videooutsoc_sdram_bankmachine0_sel_row_adr <= 1'd1;
			videooutsoc_sdram_bankmachine0_track_open <= 1'd1;
			videooutsoc_sdram_bankmachine0_cmd_valid <= 1'd1;
			videooutsoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			if (videooutsoc_sdram_bankmachine0_cmd_ready) begin
				bankmachine0_next_state <= 3'd6;
			end
			videooutsoc_sdram_bankmachine0_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (videooutsoc_sdram_bankmachine0_done) begin
				videooutsoc_sdram_bankmachine0_refresh_gnt <= 1'd1;
			end
			videooutsoc_sdram_bankmachine0_track_close <= 1'd1;
			videooutsoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			if ((~videooutsoc_sdram_bankmachine0_refresh_req)) begin
				bankmachine0_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine0_next_state <= 3'd5;
		end
		3'd5: begin
			bankmachine0_next_state <= 2'd2;
		end
		3'd6: begin
			bankmachine0_next_state <= 3'd7;
		end
		3'd7: begin
			bankmachine0_next_state <= 1'd0;
		end
		default: begin
			if (videooutsoc_sdram_bankmachine0_refresh_req) begin
				bankmachine0_next_state <= 2'd3;
			end else begin
				if (videooutsoc_sdram_bankmachine0_source_valid) begin
					if (videooutsoc_sdram_bankmachine0_has_openrow) begin
						if (videooutsoc_sdram_bankmachine0_hit) begin
							videooutsoc_sdram_bankmachine0_cmd_valid <= 1'd1;
							if (videooutsoc_sdram_bankmachine0_source_payload_we) begin
								videooutsoc_sdram_bankmachine0_req_wdata_ready <= videooutsoc_sdram_bankmachine0_cmd_ready;
								videooutsoc_sdram_bankmachine0_cmd_payload_is_write <= 1'd1;
								videooutsoc_sdram_bankmachine0_cmd_payload_we <= 1'd1;
							end else begin
								videooutsoc_sdram_bankmachine0_req_rdata_valid <= videooutsoc_sdram_bankmachine0_cmd_ready;
								videooutsoc_sdram_bankmachine0_cmd_payload_is_read <= 1'd1;
							end
							videooutsoc_sdram_bankmachine0_cmd_payload_cas <= 1'd1;
						end else begin
							bankmachine0_next_state <= 1'd1;
						end
					end else begin
						bankmachine0_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
end
assign videooutsoc_sdram_bankmachine1_sink_valid = videooutsoc_sdram_bankmachine1_req_valid;
assign videooutsoc_sdram_bankmachine1_req_ready = videooutsoc_sdram_bankmachine1_sink_ready;
assign videooutsoc_sdram_bankmachine1_sink_payload_we = videooutsoc_sdram_bankmachine1_req_we;
assign videooutsoc_sdram_bankmachine1_sink_payload_adr = videooutsoc_sdram_bankmachine1_req_adr;
assign videooutsoc_sdram_bankmachine1_source_ready = (videooutsoc_sdram_bankmachine1_req_wdata_ready | videooutsoc_sdram_bankmachine1_req_rdata_valid);
assign videooutsoc_sdram_bankmachine1_req_lock = videooutsoc_sdram_bankmachine1_source_valid;
assign videooutsoc_sdram_bankmachine1_hit = (videooutsoc_sdram_bankmachine1_openrow == videooutsoc_sdram_bankmachine1_source_payload_adr[20:7]);
assign videooutsoc_sdram_bankmachine1_cmd_payload_ba = 1'd1;
always @(*) begin
	videooutsoc_sdram_bankmachine1_cmd_payload_a <= 14'd0;
	if (videooutsoc_sdram_bankmachine1_sel_row_adr) begin
		videooutsoc_sdram_bankmachine1_cmd_payload_a <= videooutsoc_sdram_bankmachine1_source_payload_adr[20:7];
	end else begin
		videooutsoc_sdram_bankmachine1_cmd_payload_a <= {videooutsoc_sdram_bankmachine1_source_payload_adr[6:0], {3{1'd0}}};
	end
end
assign videooutsoc_sdram_bankmachine1_wait = (~((videooutsoc_sdram_bankmachine1_cmd_valid & videooutsoc_sdram_bankmachine1_cmd_ready) & videooutsoc_sdram_bankmachine1_cmd_payload_is_write));
assign videooutsoc_sdram_bankmachine1_syncfifo1_din = {videooutsoc_sdram_bankmachine1_fifo_in_last, videooutsoc_sdram_bankmachine1_fifo_in_first, videooutsoc_sdram_bankmachine1_fifo_in_payload_adr, videooutsoc_sdram_bankmachine1_fifo_in_payload_we};
assign {videooutsoc_sdram_bankmachine1_fifo_out_last, videooutsoc_sdram_bankmachine1_fifo_out_first, videooutsoc_sdram_bankmachine1_fifo_out_payload_adr, videooutsoc_sdram_bankmachine1_fifo_out_payload_we} = videooutsoc_sdram_bankmachine1_syncfifo1_dout;
assign videooutsoc_sdram_bankmachine1_sink_ready = videooutsoc_sdram_bankmachine1_syncfifo1_writable;
assign videooutsoc_sdram_bankmachine1_syncfifo1_we = videooutsoc_sdram_bankmachine1_sink_valid;
assign videooutsoc_sdram_bankmachine1_fifo_in_first = videooutsoc_sdram_bankmachine1_sink_first;
assign videooutsoc_sdram_bankmachine1_fifo_in_last = videooutsoc_sdram_bankmachine1_sink_last;
assign videooutsoc_sdram_bankmachine1_fifo_in_payload_we = videooutsoc_sdram_bankmachine1_sink_payload_we;
assign videooutsoc_sdram_bankmachine1_fifo_in_payload_adr = videooutsoc_sdram_bankmachine1_sink_payload_adr;
assign videooutsoc_sdram_bankmachine1_source_valid = videooutsoc_sdram_bankmachine1_syncfifo1_readable;
assign videooutsoc_sdram_bankmachine1_source_first = videooutsoc_sdram_bankmachine1_fifo_out_first;
assign videooutsoc_sdram_bankmachine1_source_last = videooutsoc_sdram_bankmachine1_fifo_out_last;
assign videooutsoc_sdram_bankmachine1_source_payload_we = videooutsoc_sdram_bankmachine1_fifo_out_payload_we;
assign videooutsoc_sdram_bankmachine1_source_payload_adr = videooutsoc_sdram_bankmachine1_fifo_out_payload_adr;
assign videooutsoc_sdram_bankmachine1_syncfifo1_re = videooutsoc_sdram_bankmachine1_source_ready;
always @(*) begin
	videooutsoc_sdram_bankmachine1_wrport_adr <= 3'd0;
	if (videooutsoc_sdram_bankmachine1_replace) begin
		videooutsoc_sdram_bankmachine1_wrport_adr <= (videooutsoc_sdram_bankmachine1_produce - 1'd1);
	end else begin
		videooutsoc_sdram_bankmachine1_wrport_adr <= videooutsoc_sdram_bankmachine1_produce;
	end
end
assign videooutsoc_sdram_bankmachine1_wrport_dat_w = videooutsoc_sdram_bankmachine1_syncfifo1_din;
assign videooutsoc_sdram_bankmachine1_wrport_we = (videooutsoc_sdram_bankmachine1_syncfifo1_we & (videooutsoc_sdram_bankmachine1_syncfifo1_writable | videooutsoc_sdram_bankmachine1_replace));
assign videooutsoc_sdram_bankmachine1_do_read = (videooutsoc_sdram_bankmachine1_syncfifo1_readable & videooutsoc_sdram_bankmachine1_syncfifo1_re);
assign videooutsoc_sdram_bankmachine1_rdport_adr = videooutsoc_sdram_bankmachine1_consume;
assign videooutsoc_sdram_bankmachine1_syncfifo1_dout = videooutsoc_sdram_bankmachine1_rdport_dat_r;
assign videooutsoc_sdram_bankmachine1_syncfifo1_writable = (videooutsoc_sdram_bankmachine1_level != 4'd8);
assign videooutsoc_sdram_bankmachine1_syncfifo1_readable = (videooutsoc_sdram_bankmachine1_level != 1'd0);
assign videooutsoc_sdram_bankmachine1_done = (videooutsoc_sdram_bankmachine1_count == 1'd0);
always @(*) begin
	videooutsoc_sdram_bankmachine1_cmd_payload_we <= 1'd0;
	videooutsoc_sdram_bankmachine1_sel_row_adr <= 1'd0;
	videooutsoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd0;
	videooutsoc_sdram_bankmachine1_cmd_payload_is_read <= 1'd0;
	videooutsoc_sdram_bankmachine1_cmd_payload_is_write <= 1'd0;
	videooutsoc_sdram_bankmachine1_req_wdata_ready <= 1'd0;
	videooutsoc_sdram_bankmachine1_req_rdata_valid <= 1'd0;
	videooutsoc_sdram_bankmachine1_refresh_gnt <= 1'd0;
	videooutsoc_sdram_bankmachine1_cmd_valid <= 1'd0;
	bankmachine1_next_state <= 3'd0;
	videooutsoc_sdram_bankmachine1_track_open <= 1'd0;
	videooutsoc_sdram_bankmachine1_cmd_payload_cas <= 1'd0;
	videooutsoc_sdram_bankmachine1_track_close <= 1'd0;
	videooutsoc_sdram_bankmachine1_cmd_payload_ras <= 1'd0;
	bankmachine1_next_state <= bankmachine1_state;
	case (bankmachine1_state)
		1'd1: begin
			if (videooutsoc_sdram_bankmachine1_done) begin
				videooutsoc_sdram_bankmachine1_cmd_valid <= 1'd1;
				if (videooutsoc_sdram_bankmachine1_cmd_ready) begin
					bankmachine1_next_state <= 3'd4;
				end
				videooutsoc_sdram_bankmachine1_cmd_payload_ras <= 1'd1;
				videooutsoc_sdram_bankmachine1_cmd_payload_we <= 1'd1;
				videooutsoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			end
			videooutsoc_sdram_bankmachine1_track_close <= 1'd1;
		end
		2'd2: begin
			videooutsoc_sdram_bankmachine1_sel_row_adr <= 1'd1;
			videooutsoc_sdram_bankmachine1_track_open <= 1'd1;
			videooutsoc_sdram_bankmachine1_cmd_valid <= 1'd1;
			videooutsoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			if (videooutsoc_sdram_bankmachine1_cmd_ready) begin
				bankmachine1_next_state <= 3'd6;
			end
			videooutsoc_sdram_bankmachine1_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (videooutsoc_sdram_bankmachine1_done) begin
				videooutsoc_sdram_bankmachine1_refresh_gnt <= 1'd1;
			end
			videooutsoc_sdram_bankmachine1_track_close <= 1'd1;
			videooutsoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			if ((~videooutsoc_sdram_bankmachine1_refresh_req)) begin
				bankmachine1_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine1_next_state <= 3'd5;
		end
		3'd5: begin
			bankmachine1_next_state <= 2'd2;
		end
		3'd6: begin
			bankmachine1_next_state <= 3'd7;
		end
		3'd7: begin
			bankmachine1_next_state <= 1'd0;
		end
		default: begin
			if (videooutsoc_sdram_bankmachine1_refresh_req) begin
				bankmachine1_next_state <= 2'd3;
			end else begin
				if (videooutsoc_sdram_bankmachine1_source_valid) begin
					if (videooutsoc_sdram_bankmachine1_has_openrow) begin
						if (videooutsoc_sdram_bankmachine1_hit) begin
							videooutsoc_sdram_bankmachine1_cmd_valid <= 1'd1;
							if (videooutsoc_sdram_bankmachine1_source_payload_we) begin
								videooutsoc_sdram_bankmachine1_req_wdata_ready <= videooutsoc_sdram_bankmachine1_cmd_ready;
								videooutsoc_sdram_bankmachine1_cmd_payload_is_write <= 1'd1;
								videooutsoc_sdram_bankmachine1_cmd_payload_we <= 1'd1;
							end else begin
								videooutsoc_sdram_bankmachine1_req_rdata_valid <= videooutsoc_sdram_bankmachine1_cmd_ready;
								videooutsoc_sdram_bankmachine1_cmd_payload_is_read <= 1'd1;
							end
							videooutsoc_sdram_bankmachine1_cmd_payload_cas <= 1'd1;
						end else begin
							bankmachine1_next_state <= 1'd1;
						end
					end else begin
						bankmachine1_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
end
assign videooutsoc_sdram_bankmachine2_sink_valid = videooutsoc_sdram_bankmachine2_req_valid;
assign videooutsoc_sdram_bankmachine2_req_ready = videooutsoc_sdram_bankmachine2_sink_ready;
assign videooutsoc_sdram_bankmachine2_sink_payload_we = videooutsoc_sdram_bankmachine2_req_we;
assign videooutsoc_sdram_bankmachine2_sink_payload_adr = videooutsoc_sdram_bankmachine2_req_adr;
assign videooutsoc_sdram_bankmachine2_source_ready = (videooutsoc_sdram_bankmachine2_req_wdata_ready | videooutsoc_sdram_bankmachine2_req_rdata_valid);
assign videooutsoc_sdram_bankmachine2_req_lock = videooutsoc_sdram_bankmachine2_source_valid;
assign videooutsoc_sdram_bankmachine2_hit = (videooutsoc_sdram_bankmachine2_openrow == videooutsoc_sdram_bankmachine2_source_payload_adr[20:7]);
assign videooutsoc_sdram_bankmachine2_cmd_payload_ba = 2'd2;
always @(*) begin
	videooutsoc_sdram_bankmachine2_cmd_payload_a <= 14'd0;
	if (videooutsoc_sdram_bankmachine2_sel_row_adr) begin
		videooutsoc_sdram_bankmachine2_cmd_payload_a <= videooutsoc_sdram_bankmachine2_source_payload_adr[20:7];
	end else begin
		videooutsoc_sdram_bankmachine2_cmd_payload_a <= {videooutsoc_sdram_bankmachine2_source_payload_adr[6:0], {3{1'd0}}};
	end
end
assign videooutsoc_sdram_bankmachine2_wait = (~((videooutsoc_sdram_bankmachine2_cmd_valid & videooutsoc_sdram_bankmachine2_cmd_ready) & videooutsoc_sdram_bankmachine2_cmd_payload_is_write));
assign videooutsoc_sdram_bankmachine2_syncfifo2_din = {videooutsoc_sdram_bankmachine2_fifo_in_last, videooutsoc_sdram_bankmachine2_fifo_in_first, videooutsoc_sdram_bankmachine2_fifo_in_payload_adr, videooutsoc_sdram_bankmachine2_fifo_in_payload_we};
assign {videooutsoc_sdram_bankmachine2_fifo_out_last, videooutsoc_sdram_bankmachine2_fifo_out_first, videooutsoc_sdram_bankmachine2_fifo_out_payload_adr, videooutsoc_sdram_bankmachine2_fifo_out_payload_we} = videooutsoc_sdram_bankmachine2_syncfifo2_dout;
assign videooutsoc_sdram_bankmachine2_sink_ready = videooutsoc_sdram_bankmachine2_syncfifo2_writable;
assign videooutsoc_sdram_bankmachine2_syncfifo2_we = videooutsoc_sdram_bankmachine2_sink_valid;
assign videooutsoc_sdram_bankmachine2_fifo_in_first = videooutsoc_sdram_bankmachine2_sink_first;
assign videooutsoc_sdram_bankmachine2_fifo_in_last = videooutsoc_sdram_bankmachine2_sink_last;
assign videooutsoc_sdram_bankmachine2_fifo_in_payload_we = videooutsoc_sdram_bankmachine2_sink_payload_we;
assign videooutsoc_sdram_bankmachine2_fifo_in_payload_adr = videooutsoc_sdram_bankmachine2_sink_payload_adr;
assign videooutsoc_sdram_bankmachine2_source_valid = videooutsoc_sdram_bankmachine2_syncfifo2_readable;
assign videooutsoc_sdram_bankmachine2_source_first = videooutsoc_sdram_bankmachine2_fifo_out_first;
assign videooutsoc_sdram_bankmachine2_source_last = videooutsoc_sdram_bankmachine2_fifo_out_last;
assign videooutsoc_sdram_bankmachine2_source_payload_we = videooutsoc_sdram_bankmachine2_fifo_out_payload_we;
assign videooutsoc_sdram_bankmachine2_source_payload_adr = videooutsoc_sdram_bankmachine2_fifo_out_payload_adr;
assign videooutsoc_sdram_bankmachine2_syncfifo2_re = videooutsoc_sdram_bankmachine2_source_ready;
always @(*) begin
	videooutsoc_sdram_bankmachine2_wrport_adr <= 3'd0;
	if (videooutsoc_sdram_bankmachine2_replace) begin
		videooutsoc_sdram_bankmachine2_wrport_adr <= (videooutsoc_sdram_bankmachine2_produce - 1'd1);
	end else begin
		videooutsoc_sdram_bankmachine2_wrport_adr <= videooutsoc_sdram_bankmachine2_produce;
	end
end
assign videooutsoc_sdram_bankmachine2_wrport_dat_w = videooutsoc_sdram_bankmachine2_syncfifo2_din;
assign videooutsoc_sdram_bankmachine2_wrport_we = (videooutsoc_sdram_bankmachine2_syncfifo2_we & (videooutsoc_sdram_bankmachine2_syncfifo2_writable | videooutsoc_sdram_bankmachine2_replace));
assign videooutsoc_sdram_bankmachine2_do_read = (videooutsoc_sdram_bankmachine2_syncfifo2_readable & videooutsoc_sdram_bankmachine2_syncfifo2_re);
assign videooutsoc_sdram_bankmachine2_rdport_adr = videooutsoc_sdram_bankmachine2_consume;
assign videooutsoc_sdram_bankmachine2_syncfifo2_dout = videooutsoc_sdram_bankmachine2_rdport_dat_r;
assign videooutsoc_sdram_bankmachine2_syncfifo2_writable = (videooutsoc_sdram_bankmachine2_level != 4'd8);
assign videooutsoc_sdram_bankmachine2_syncfifo2_readable = (videooutsoc_sdram_bankmachine2_level != 1'd0);
assign videooutsoc_sdram_bankmachine2_done = (videooutsoc_sdram_bankmachine2_count == 1'd0);
always @(*) begin
	videooutsoc_sdram_bankmachine2_track_open <= 1'd0;
	videooutsoc_sdram_bankmachine2_track_close <= 1'd0;
	videooutsoc_sdram_bankmachine2_cmd_payload_cas <= 1'd0;
	videooutsoc_sdram_bankmachine2_cmd_payload_ras <= 1'd0;
	videooutsoc_sdram_bankmachine2_cmd_payload_we <= 1'd0;
	videooutsoc_sdram_bankmachine2_sel_row_adr <= 1'd0;
	videooutsoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd0;
	videooutsoc_sdram_bankmachine2_cmd_payload_is_read <= 1'd0;
	bankmachine2_next_state <= 3'd0;
	videooutsoc_sdram_bankmachine2_cmd_payload_is_write <= 1'd0;
	videooutsoc_sdram_bankmachine2_req_wdata_ready <= 1'd0;
	videooutsoc_sdram_bankmachine2_req_rdata_valid <= 1'd0;
	videooutsoc_sdram_bankmachine2_refresh_gnt <= 1'd0;
	videooutsoc_sdram_bankmachine2_cmd_valid <= 1'd0;
	bankmachine2_next_state <= bankmachine2_state;
	case (bankmachine2_state)
		1'd1: begin
			if (videooutsoc_sdram_bankmachine2_done) begin
				videooutsoc_sdram_bankmachine2_cmd_valid <= 1'd1;
				if (videooutsoc_sdram_bankmachine2_cmd_ready) begin
					bankmachine2_next_state <= 3'd4;
				end
				videooutsoc_sdram_bankmachine2_cmd_payload_ras <= 1'd1;
				videooutsoc_sdram_bankmachine2_cmd_payload_we <= 1'd1;
				videooutsoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			end
			videooutsoc_sdram_bankmachine2_track_close <= 1'd1;
		end
		2'd2: begin
			videooutsoc_sdram_bankmachine2_sel_row_adr <= 1'd1;
			videooutsoc_sdram_bankmachine2_track_open <= 1'd1;
			videooutsoc_sdram_bankmachine2_cmd_valid <= 1'd1;
			videooutsoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			if (videooutsoc_sdram_bankmachine2_cmd_ready) begin
				bankmachine2_next_state <= 3'd6;
			end
			videooutsoc_sdram_bankmachine2_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (videooutsoc_sdram_bankmachine2_done) begin
				videooutsoc_sdram_bankmachine2_refresh_gnt <= 1'd1;
			end
			videooutsoc_sdram_bankmachine2_track_close <= 1'd1;
			videooutsoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			if ((~videooutsoc_sdram_bankmachine2_refresh_req)) begin
				bankmachine2_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine2_next_state <= 3'd5;
		end
		3'd5: begin
			bankmachine2_next_state <= 2'd2;
		end
		3'd6: begin
			bankmachine2_next_state <= 3'd7;
		end
		3'd7: begin
			bankmachine2_next_state <= 1'd0;
		end
		default: begin
			if (videooutsoc_sdram_bankmachine2_refresh_req) begin
				bankmachine2_next_state <= 2'd3;
			end else begin
				if (videooutsoc_sdram_bankmachine2_source_valid) begin
					if (videooutsoc_sdram_bankmachine2_has_openrow) begin
						if (videooutsoc_sdram_bankmachine2_hit) begin
							videooutsoc_sdram_bankmachine2_cmd_valid <= 1'd1;
							if (videooutsoc_sdram_bankmachine2_source_payload_we) begin
								videooutsoc_sdram_bankmachine2_req_wdata_ready <= videooutsoc_sdram_bankmachine2_cmd_ready;
								videooutsoc_sdram_bankmachine2_cmd_payload_is_write <= 1'd1;
								videooutsoc_sdram_bankmachine2_cmd_payload_we <= 1'd1;
							end else begin
								videooutsoc_sdram_bankmachine2_req_rdata_valid <= videooutsoc_sdram_bankmachine2_cmd_ready;
								videooutsoc_sdram_bankmachine2_cmd_payload_is_read <= 1'd1;
							end
							videooutsoc_sdram_bankmachine2_cmd_payload_cas <= 1'd1;
						end else begin
							bankmachine2_next_state <= 1'd1;
						end
					end else begin
						bankmachine2_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
end
assign videooutsoc_sdram_bankmachine3_sink_valid = videooutsoc_sdram_bankmachine3_req_valid;
assign videooutsoc_sdram_bankmachine3_req_ready = videooutsoc_sdram_bankmachine3_sink_ready;
assign videooutsoc_sdram_bankmachine3_sink_payload_we = videooutsoc_sdram_bankmachine3_req_we;
assign videooutsoc_sdram_bankmachine3_sink_payload_adr = videooutsoc_sdram_bankmachine3_req_adr;
assign videooutsoc_sdram_bankmachine3_source_ready = (videooutsoc_sdram_bankmachine3_req_wdata_ready | videooutsoc_sdram_bankmachine3_req_rdata_valid);
assign videooutsoc_sdram_bankmachine3_req_lock = videooutsoc_sdram_bankmachine3_source_valid;
assign videooutsoc_sdram_bankmachine3_hit = (videooutsoc_sdram_bankmachine3_openrow == videooutsoc_sdram_bankmachine3_source_payload_adr[20:7]);
assign videooutsoc_sdram_bankmachine3_cmd_payload_ba = 2'd3;
always @(*) begin
	videooutsoc_sdram_bankmachine3_cmd_payload_a <= 14'd0;
	if (videooutsoc_sdram_bankmachine3_sel_row_adr) begin
		videooutsoc_sdram_bankmachine3_cmd_payload_a <= videooutsoc_sdram_bankmachine3_source_payload_adr[20:7];
	end else begin
		videooutsoc_sdram_bankmachine3_cmd_payload_a <= {videooutsoc_sdram_bankmachine3_source_payload_adr[6:0], {3{1'd0}}};
	end
end
assign videooutsoc_sdram_bankmachine3_wait = (~((videooutsoc_sdram_bankmachine3_cmd_valid & videooutsoc_sdram_bankmachine3_cmd_ready) & videooutsoc_sdram_bankmachine3_cmd_payload_is_write));
assign videooutsoc_sdram_bankmachine3_syncfifo3_din = {videooutsoc_sdram_bankmachine3_fifo_in_last, videooutsoc_sdram_bankmachine3_fifo_in_first, videooutsoc_sdram_bankmachine3_fifo_in_payload_adr, videooutsoc_sdram_bankmachine3_fifo_in_payload_we};
assign {videooutsoc_sdram_bankmachine3_fifo_out_last, videooutsoc_sdram_bankmachine3_fifo_out_first, videooutsoc_sdram_bankmachine3_fifo_out_payload_adr, videooutsoc_sdram_bankmachine3_fifo_out_payload_we} = videooutsoc_sdram_bankmachine3_syncfifo3_dout;
assign videooutsoc_sdram_bankmachine3_sink_ready = videooutsoc_sdram_bankmachine3_syncfifo3_writable;
assign videooutsoc_sdram_bankmachine3_syncfifo3_we = videooutsoc_sdram_bankmachine3_sink_valid;
assign videooutsoc_sdram_bankmachine3_fifo_in_first = videooutsoc_sdram_bankmachine3_sink_first;
assign videooutsoc_sdram_bankmachine3_fifo_in_last = videooutsoc_sdram_bankmachine3_sink_last;
assign videooutsoc_sdram_bankmachine3_fifo_in_payload_we = videooutsoc_sdram_bankmachine3_sink_payload_we;
assign videooutsoc_sdram_bankmachine3_fifo_in_payload_adr = videooutsoc_sdram_bankmachine3_sink_payload_adr;
assign videooutsoc_sdram_bankmachine3_source_valid = videooutsoc_sdram_bankmachine3_syncfifo3_readable;
assign videooutsoc_sdram_bankmachine3_source_first = videooutsoc_sdram_bankmachine3_fifo_out_first;
assign videooutsoc_sdram_bankmachine3_source_last = videooutsoc_sdram_bankmachine3_fifo_out_last;
assign videooutsoc_sdram_bankmachine3_source_payload_we = videooutsoc_sdram_bankmachine3_fifo_out_payload_we;
assign videooutsoc_sdram_bankmachine3_source_payload_adr = videooutsoc_sdram_bankmachine3_fifo_out_payload_adr;
assign videooutsoc_sdram_bankmachine3_syncfifo3_re = videooutsoc_sdram_bankmachine3_source_ready;
always @(*) begin
	videooutsoc_sdram_bankmachine3_wrport_adr <= 3'd0;
	if (videooutsoc_sdram_bankmachine3_replace) begin
		videooutsoc_sdram_bankmachine3_wrport_adr <= (videooutsoc_sdram_bankmachine3_produce - 1'd1);
	end else begin
		videooutsoc_sdram_bankmachine3_wrport_adr <= videooutsoc_sdram_bankmachine3_produce;
	end
end
assign videooutsoc_sdram_bankmachine3_wrport_dat_w = videooutsoc_sdram_bankmachine3_syncfifo3_din;
assign videooutsoc_sdram_bankmachine3_wrport_we = (videooutsoc_sdram_bankmachine3_syncfifo3_we & (videooutsoc_sdram_bankmachine3_syncfifo3_writable | videooutsoc_sdram_bankmachine3_replace));
assign videooutsoc_sdram_bankmachine3_do_read = (videooutsoc_sdram_bankmachine3_syncfifo3_readable & videooutsoc_sdram_bankmachine3_syncfifo3_re);
assign videooutsoc_sdram_bankmachine3_rdport_adr = videooutsoc_sdram_bankmachine3_consume;
assign videooutsoc_sdram_bankmachine3_syncfifo3_dout = videooutsoc_sdram_bankmachine3_rdport_dat_r;
assign videooutsoc_sdram_bankmachine3_syncfifo3_writable = (videooutsoc_sdram_bankmachine3_level != 4'd8);
assign videooutsoc_sdram_bankmachine3_syncfifo3_readable = (videooutsoc_sdram_bankmachine3_level != 1'd0);
assign videooutsoc_sdram_bankmachine3_done = (videooutsoc_sdram_bankmachine3_count == 1'd0);
always @(*) begin
	videooutsoc_sdram_bankmachine3_req_wdata_ready <= 1'd0;
	videooutsoc_sdram_bankmachine3_req_rdata_valid <= 1'd0;
	videooutsoc_sdram_bankmachine3_refresh_gnt <= 1'd0;
	videooutsoc_sdram_bankmachine3_cmd_valid <= 1'd0;
	bankmachine3_next_state <= 3'd0;
	videooutsoc_sdram_bankmachine3_track_open <= 1'd0;
	videooutsoc_sdram_bankmachine3_track_close <= 1'd0;
	videooutsoc_sdram_bankmachine3_cmd_payload_cas <= 1'd0;
	videooutsoc_sdram_bankmachine3_cmd_payload_ras <= 1'd0;
	videooutsoc_sdram_bankmachine3_cmd_payload_we <= 1'd0;
	videooutsoc_sdram_bankmachine3_sel_row_adr <= 1'd0;
	videooutsoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd0;
	videooutsoc_sdram_bankmachine3_cmd_payload_is_read <= 1'd0;
	videooutsoc_sdram_bankmachine3_cmd_payload_is_write <= 1'd0;
	bankmachine3_next_state <= bankmachine3_state;
	case (bankmachine3_state)
		1'd1: begin
			if (videooutsoc_sdram_bankmachine3_done) begin
				videooutsoc_sdram_bankmachine3_cmd_valid <= 1'd1;
				if (videooutsoc_sdram_bankmachine3_cmd_ready) begin
					bankmachine3_next_state <= 3'd4;
				end
				videooutsoc_sdram_bankmachine3_cmd_payload_ras <= 1'd1;
				videooutsoc_sdram_bankmachine3_cmd_payload_we <= 1'd1;
				videooutsoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			end
			videooutsoc_sdram_bankmachine3_track_close <= 1'd1;
		end
		2'd2: begin
			videooutsoc_sdram_bankmachine3_sel_row_adr <= 1'd1;
			videooutsoc_sdram_bankmachine3_track_open <= 1'd1;
			videooutsoc_sdram_bankmachine3_cmd_valid <= 1'd1;
			videooutsoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			if (videooutsoc_sdram_bankmachine3_cmd_ready) begin
				bankmachine3_next_state <= 3'd6;
			end
			videooutsoc_sdram_bankmachine3_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (videooutsoc_sdram_bankmachine3_done) begin
				videooutsoc_sdram_bankmachine3_refresh_gnt <= 1'd1;
			end
			videooutsoc_sdram_bankmachine3_track_close <= 1'd1;
			videooutsoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			if ((~videooutsoc_sdram_bankmachine3_refresh_req)) begin
				bankmachine3_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine3_next_state <= 3'd5;
		end
		3'd5: begin
			bankmachine3_next_state <= 2'd2;
		end
		3'd6: begin
			bankmachine3_next_state <= 3'd7;
		end
		3'd7: begin
			bankmachine3_next_state <= 1'd0;
		end
		default: begin
			if (videooutsoc_sdram_bankmachine3_refresh_req) begin
				bankmachine3_next_state <= 2'd3;
			end else begin
				if (videooutsoc_sdram_bankmachine3_source_valid) begin
					if (videooutsoc_sdram_bankmachine3_has_openrow) begin
						if (videooutsoc_sdram_bankmachine3_hit) begin
							videooutsoc_sdram_bankmachine3_cmd_valid <= 1'd1;
							if (videooutsoc_sdram_bankmachine3_source_payload_we) begin
								videooutsoc_sdram_bankmachine3_req_wdata_ready <= videooutsoc_sdram_bankmachine3_cmd_ready;
								videooutsoc_sdram_bankmachine3_cmd_payload_is_write <= 1'd1;
								videooutsoc_sdram_bankmachine3_cmd_payload_we <= 1'd1;
							end else begin
								videooutsoc_sdram_bankmachine3_req_rdata_valid <= videooutsoc_sdram_bankmachine3_cmd_ready;
								videooutsoc_sdram_bankmachine3_cmd_payload_is_read <= 1'd1;
							end
							videooutsoc_sdram_bankmachine3_cmd_payload_cas <= 1'd1;
						end else begin
							bankmachine3_next_state <= 1'd1;
						end
					end else begin
						bankmachine3_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
end
assign videooutsoc_sdram_bankmachine4_sink_valid = videooutsoc_sdram_bankmachine4_req_valid;
assign videooutsoc_sdram_bankmachine4_req_ready = videooutsoc_sdram_bankmachine4_sink_ready;
assign videooutsoc_sdram_bankmachine4_sink_payload_we = videooutsoc_sdram_bankmachine4_req_we;
assign videooutsoc_sdram_bankmachine4_sink_payload_adr = videooutsoc_sdram_bankmachine4_req_adr;
assign videooutsoc_sdram_bankmachine4_source_ready = (videooutsoc_sdram_bankmachine4_req_wdata_ready | videooutsoc_sdram_bankmachine4_req_rdata_valid);
assign videooutsoc_sdram_bankmachine4_req_lock = videooutsoc_sdram_bankmachine4_source_valid;
assign videooutsoc_sdram_bankmachine4_hit = (videooutsoc_sdram_bankmachine4_openrow == videooutsoc_sdram_bankmachine4_source_payload_adr[20:7]);
assign videooutsoc_sdram_bankmachine4_cmd_payload_ba = 3'd4;
always @(*) begin
	videooutsoc_sdram_bankmachine4_cmd_payload_a <= 14'd0;
	if (videooutsoc_sdram_bankmachine4_sel_row_adr) begin
		videooutsoc_sdram_bankmachine4_cmd_payload_a <= videooutsoc_sdram_bankmachine4_source_payload_adr[20:7];
	end else begin
		videooutsoc_sdram_bankmachine4_cmd_payload_a <= {videooutsoc_sdram_bankmachine4_source_payload_adr[6:0], {3{1'd0}}};
	end
end
assign videooutsoc_sdram_bankmachine4_wait = (~((videooutsoc_sdram_bankmachine4_cmd_valid & videooutsoc_sdram_bankmachine4_cmd_ready) & videooutsoc_sdram_bankmachine4_cmd_payload_is_write));
assign videooutsoc_sdram_bankmachine4_syncfifo4_din = {videooutsoc_sdram_bankmachine4_fifo_in_last, videooutsoc_sdram_bankmachine4_fifo_in_first, videooutsoc_sdram_bankmachine4_fifo_in_payload_adr, videooutsoc_sdram_bankmachine4_fifo_in_payload_we};
assign {videooutsoc_sdram_bankmachine4_fifo_out_last, videooutsoc_sdram_bankmachine4_fifo_out_first, videooutsoc_sdram_bankmachine4_fifo_out_payload_adr, videooutsoc_sdram_bankmachine4_fifo_out_payload_we} = videooutsoc_sdram_bankmachine4_syncfifo4_dout;
assign videooutsoc_sdram_bankmachine4_sink_ready = videooutsoc_sdram_bankmachine4_syncfifo4_writable;
assign videooutsoc_sdram_bankmachine4_syncfifo4_we = videooutsoc_sdram_bankmachine4_sink_valid;
assign videooutsoc_sdram_bankmachine4_fifo_in_first = videooutsoc_sdram_bankmachine4_sink_first;
assign videooutsoc_sdram_bankmachine4_fifo_in_last = videooutsoc_sdram_bankmachine4_sink_last;
assign videooutsoc_sdram_bankmachine4_fifo_in_payload_we = videooutsoc_sdram_bankmachine4_sink_payload_we;
assign videooutsoc_sdram_bankmachine4_fifo_in_payload_adr = videooutsoc_sdram_bankmachine4_sink_payload_adr;
assign videooutsoc_sdram_bankmachine4_source_valid = videooutsoc_sdram_bankmachine4_syncfifo4_readable;
assign videooutsoc_sdram_bankmachine4_source_first = videooutsoc_sdram_bankmachine4_fifo_out_first;
assign videooutsoc_sdram_bankmachine4_source_last = videooutsoc_sdram_bankmachine4_fifo_out_last;
assign videooutsoc_sdram_bankmachine4_source_payload_we = videooutsoc_sdram_bankmachine4_fifo_out_payload_we;
assign videooutsoc_sdram_bankmachine4_source_payload_adr = videooutsoc_sdram_bankmachine4_fifo_out_payload_adr;
assign videooutsoc_sdram_bankmachine4_syncfifo4_re = videooutsoc_sdram_bankmachine4_source_ready;
always @(*) begin
	videooutsoc_sdram_bankmachine4_wrport_adr <= 3'd0;
	if (videooutsoc_sdram_bankmachine4_replace) begin
		videooutsoc_sdram_bankmachine4_wrport_adr <= (videooutsoc_sdram_bankmachine4_produce - 1'd1);
	end else begin
		videooutsoc_sdram_bankmachine4_wrport_adr <= videooutsoc_sdram_bankmachine4_produce;
	end
end
assign videooutsoc_sdram_bankmachine4_wrport_dat_w = videooutsoc_sdram_bankmachine4_syncfifo4_din;
assign videooutsoc_sdram_bankmachine4_wrport_we = (videooutsoc_sdram_bankmachine4_syncfifo4_we & (videooutsoc_sdram_bankmachine4_syncfifo4_writable | videooutsoc_sdram_bankmachine4_replace));
assign videooutsoc_sdram_bankmachine4_do_read = (videooutsoc_sdram_bankmachine4_syncfifo4_readable & videooutsoc_sdram_bankmachine4_syncfifo4_re);
assign videooutsoc_sdram_bankmachine4_rdport_adr = videooutsoc_sdram_bankmachine4_consume;
assign videooutsoc_sdram_bankmachine4_syncfifo4_dout = videooutsoc_sdram_bankmachine4_rdport_dat_r;
assign videooutsoc_sdram_bankmachine4_syncfifo4_writable = (videooutsoc_sdram_bankmachine4_level != 4'd8);
assign videooutsoc_sdram_bankmachine4_syncfifo4_readable = (videooutsoc_sdram_bankmachine4_level != 1'd0);
assign videooutsoc_sdram_bankmachine4_done = (videooutsoc_sdram_bankmachine4_count == 1'd0);
always @(*) begin
	videooutsoc_sdram_bankmachine4_track_close <= 1'd0;
	videooutsoc_sdram_bankmachine4_cmd_payload_cas <= 1'd0;
	videooutsoc_sdram_bankmachine4_cmd_payload_ras <= 1'd0;
	videooutsoc_sdram_bankmachine4_cmd_payload_we <= 1'd0;
	bankmachine4_next_state <= 3'd0;
	videooutsoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd0;
	videooutsoc_sdram_bankmachine4_sel_row_adr <= 1'd0;
	videooutsoc_sdram_bankmachine4_cmd_payload_is_read <= 1'd0;
	videooutsoc_sdram_bankmachine4_cmd_payload_is_write <= 1'd0;
	videooutsoc_sdram_bankmachine4_req_wdata_ready <= 1'd0;
	videooutsoc_sdram_bankmachine4_req_rdata_valid <= 1'd0;
	videooutsoc_sdram_bankmachine4_refresh_gnt <= 1'd0;
	videooutsoc_sdram_bankmachine4_cmd_valid <= 1'd0;
	videooutsoc_sdram_bankmachine4_track_open <= 1'd0;
	bankmachine4_next_state <= bankmachine4_state;
	case (bankmachine4_state)
		1'd1: begin
			if (videooutsoc_sdram_bankmachine4_done) begin
				videooutsoc_sdram_bankmachine4_cmd_valid <= 1'd1;
				if (videooutsoc_sdram_bankmachine4_cmd_ready) begin
					bankmachine4_next_state <= 3'd4;
				end
				videooutsoc_sdram_bankmachine4_cmd_payload_ras <= 1'd1;
				videooutsoc_sdram_bankmachine4_cmd_payload_we <= 1'd1;
				videooutsoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			end
			videooutsoc_sdram_bankmachine4_track_close <= 1'd1;
		end
		2'd2: begin
			videooutsoc_sdram_bankmachine4_sel_row_adr <= 1'd1;
			videooutsoc_sdram_bankmachine4_track_open <= 1'd1;
			videooutsoc_sdram_bankmachine4_cmd_valid <= 1'd1;
			videooutsoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			if (videooutsoc_sdram_bankmachine4_cmd_ready) begin
				bankmachine4_next_state <= 3'd6;
			end
			videooutsoc_sdram_bankmachine4_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (videooutsoc_sdram_bankmachine4_done) begin
				videooutsoc_sdram_bankmachine4_refresh_gnt <= 1'd1;
			end
			videooutsoc_sdram_bankmachine4_track_close <= 1'd1;
			videooutsoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			if ((~videooutsoc_sdram_bankmachine4_refresh_req)) begin
				bankmachine4_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine4_next_state <= 3'd5;
		end
		3'd5: begin
			bankmachine4_next_state <= 2'd2;
		end
		3'd6: begin
			bankmachine4_next_state <= 3'd7;
		end
		3'd7: begin
			bankmachine4_next_state <= 1'd0;
		end
		default: begin
			if (videooutsoc_sdram_bankmachine4_refresh_req) begin
				bankmachine4_next_state <= 2'd3;
			end else begin
				if (videooutsoc_sdram_bankmachine4_source_valid) begin
					if (videooutsoc_sdram_bankmachine4_has_openrow) begin
						if (videooutsoc_sdram_bankmachine4_hit) begin
							videooutsoc_sdram_bankmachine4_cmd_valid <= 1'd1;
							if (videooutsoc_sdram_bankmachine4_source_payload_we) begin
								videooutsoc_sdram_bankmachine4_req_wdata_ready <= videooutsoc_sdram_bankmachine4_cmd_ready;
								videooutsoc_sdram_bankmachine4_cmd_payload_is_write <= 1'd1;
								videooutsoc_sdram_bankmachine4_cmd_payload_we <= 1'd1;
							end else begin
								videooutsoc_sdram_bankmachine4_req_rdata_valid <= videooutsoc_sdram_bankmachine4_cmd_ready;
								videooutsoc_sdram_bankmachine4_cmd_payload_is_read <= 1'd1;
							end
							videooutsoc_sdram_bankmachine4_cmd_payload_cas <= 1'd1;
						end else begin
							bankmachine4_next_state <= 1'd1;
						end
					end else begin
						bankmachine4_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
end
assign videooutsoc_sdram_bankmachine5_sink_valid = videooutsoc_sdram_bankmachine5_req_valid;
assign videooutsoc_sdram_bankmachine5_req_ready = videooutsoc_sdram_bankmachine5_sink_ready;
assign videooutsoc_sdram_bankmachine5_sink_payload_we = videooutsoc_sdram_bankmachine5_req_we;
assign videooutsoc_sdram_bankmachine5_sink_payload_adr = videooutsoc_sdram_bankmachine5_req_adr;
assign videooutsoc_sdram_bankmachine5_source_ready = (videooutsoc_sdram_bankmachine5_req_wdata_ready | videooutsoc_sdram_bankmachine5_req_rdata_valid);
assign videooutsoc_sdram_bankmachine5_req_lock = videooutsoc_sdram_bankmachine5_source_valid;
assign videooutsoc_sdram_bankmachine5_hit = (videooutsoc_sdram_bankmachine5_openrow == videooutsoc_sdram_bankmachine5_source_payload_adr[20:7]);
assign videooutsoc_sdram_bankmachine5_cmd_payload_ba = 3'd5;
always @(*) begin
	videooutsoc_sdram_bankmachine5_cmd_payload_a <= 14'd0;
	if (videooutsoc_sdram_bankmachine5_sel_row_adr) begin
		videooutsoc_sdram_bankmachine5_cmd_payload_a <= videooutsoc_sdram_bankmachine5_source_payload_adr[20:7];
	end else begin
		videooutsoc_sdram_bankmachine5_cmd_payload_a <= {videooutsoc_sdram_bankmachine5_source_payload_adr[6:0], {3{1'd0}}};
	end
end
assign videooutsoc_sdram_bankmachine5_wait = (~((videooutsoc_sdram_bankmachine5_cmd_valid & videooutsoc_sdram_bankmachine5_cmd_ready) & videooutsoc_sdram_bankmachine5_cmd_payload_is_write));
assign videooutsoc_sdram_bankmachine5_syncfifo5_din = {videooutsoc_sdram_bankmachine5_fifo_in_last, videooutsoc_sdram_bankmachine5_fifo_in_first, videooutsoc_sdram_bankmachine5_fifo_in_payload_adr, videooutsoc_sdram_bankmachine5_fifo_in_payload_we};
assign {videooutsoc_sdram_bankmachine5_fifo_out_last, videooutsoc_sdram_bankmachine5_fifo_out_first, videooutsoc_sdram_bankmachine5_fifo_out_payload_adr, videooutsoc_sdram_bankmachine5_fifo_out_payload_we} = videooutsoc_sdram_bankmachine5_syncfifo5_dout;
assign videooutsoc_sdram_bankmachine5_sink_ready = videooutsoc_sdram_bankmachine5_syncfifo5_writable;
assign videooutsoc_sdram_bankmachine5_syncfifo5_we = videooutsoc_sdram_bankmachine5_sink_valid;
assign videooutsoc_sdram_bankmachine5_fifo_in_first = videooutsoc_sdram_bankmachine5_sink_first;
assign videooutsoc_sdram_bankmachine5_fifo_in_last = videooutsoc_sdram_bankmachine5_sink_last;
assign videooutsoc_sdram_bankmachine5_fifo_in_payload_we = videooutsoc_sdram_bankmachine5_sink_payload_we;
assign videooutsoc_sdram_bankmachine5_fifo_in_payload_adr = videooutsoc_sdram_bankmachine5_sink_payload_adr;
assign videooutsoc_sdram_bankmachine5_source_valid = videooutsoc_sdram_bankmachine5_syncfifo5_readable;
assign videooutsoc_sdram_bankmachine5_source_first = videooutsoc_sdram_bankmachine5_fifo_out_first;
assign videooutsoc_sdram_bankmachine5_source_last = videooutsoc_sdram_bankmachine5_fifo_out_last;
assign videooutsoc_sdram_bankmachine5_source_payload_we = videooutsoc_sdram_bankmachine5_fifo_out_payload_we;
assign videooutsoc_sdram_bankmachine5_source_payload_adr = videooutsoc_sdram_bankmachine5_fifo_out_payload_adr;
assign videooutsoc_sdram_bankmachine5_syncfifo5_re = videooutsoc_sdram_bankmachine5_source_ready;
always @(*) begin
	videooutsoc_sdram_bankmachine5_wrport_adr <= 3'd0;
	if (videooutsoc_sdram_bankmachine5_replace) begin
		videooutsoc_sdram_bankmachine5_wrport_adr <= (videooutsoc_sdram_bankmachine5_produce - 1'd1);
	end else begin
		videooutsoc_sdram_bankmachine5_wrport_adr <= videooutsoc_sdram_bankmachine5_produce;
	end
end
assign videooutsoc_sdram_bankmachine5_wrport_dat_w = videooutsoc_sdram_bankmachine5_syncfifo5_din;
assign videooutsoc_sdram_bankmachine5_wrport_we = (videooutsoc_sdram_bankmachine5_syncfifo5_we & (videooutsoc_sdram_bankmachine5_syncfifo5_writable | videooutsoc_sdram_bankmachine5_replace));
assign videooutsoc_sdram_bankmachine5_do_read = (videooutsoc_sdram_bankmachine5_syncfifo5_readable & videooutsoc_sdram_bankmachine5_syncfifo5_re);
assign videooutsoc_sdram_bankmachine5_rdport_adr = videooutsoc_sdram_bankmachine5_consume;
assign videooutsoc_sdram_bankmachine5_syncfifo5_dout = videooutsoc_sdram_bankmachine5_rdport_dat_r;
assign videooutsoc_sdram_bankmachine5_syncfifo5_writable = (videooutsoc_sdram_bankmachine5_level != 4'd8);
assign videooutsoc_sdram_bankmachine5_syncfifo5_readable = (videooutsoc_sdram_bankmachine5_level != 1'd0);
assign videooutsoc_sdram_bankmachine5_done = (videooutsoc_sdram_bankmachine5_count == 1'd0);
always @(*) begin
	videooutsoc_sdram_bankmachine5_cmd_valid <= 1'd0;
	videooutsoc_sdram_bankmachine5_track_open <= 1'd0;
	videooutsoc_sdram_bankmachine5_track_close <= 1'd0;
	videooutsoc_sdram_bankmachine5_cmd_payload_cas <= 1'd0;
	videooutsoc_sdram_bankmachine5_cmd_payload_ras <= 1'd0;
	videooutsoc_sdram_bankmachine5_cmd_payload_we <= 1'd0;
	videooutsoc_sdram_bankmachine5_sel_row_adr <= 1'd0;
	videooutsoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd0;
	videooutsoc_sdram_bankmachine5_cmd_payload_is_read <= 1'd0;
	videooutsoc_sdram_bankmachine5_cmd_payload_is_write <= 1'd0;
	videooutsoc_sdram_bankmachine5_req_wdata_ready <= 1'd0;
	videooutsoc_sdram_bankmachine5_req_rdata_valid <= 1'd0;
	videooutsoc_sdram_bankmachine5_refresh_gnt <= 1'd0;
	bankmachine5_next_state <= 3'd0;
	bankmachine5_next_state <= bankmachine5_state;
	case (bankmachine5_state)
		1'd1: begin
			if (videooutsoc_sdram_bankmachine5_done) begin
				videooutsoc_sdram_bankmachine5_cmd_valid <= 1'd1;
				if (videooutsoc_sdram_bankmachine5_cmd_ready) begin
					bankmachine5_next_state <= 3'd4;
				end
				videooutsoc_sdram_bankmachine5_cmd_payload_ras <= 1'd1;
				videooutsoc_sdram_bankmachine5_cmd_payload_we <= 1'd1;
				videooutsoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			end
			videooutsoc_sdram_bankmachine5_track_close <= 1'd1;
		end
		2'd2: begin
			videooutsoc_sdram_bankmachine5_sel_row_adr <= 1'd1;
			videooutsoc_sdram_bankmachine5_track_open <= 1'd1;
			videooutsoc_sdram_bankmachine5_cmd_valid <= 1'd1;
			videooutsoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			if (videooutsoc_sdram_bankmachine5_cmd_ready) begin
				bankmachine5_next_state <= 3'd6;
			end
			videooutsoc_sdram_bankmachine5_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (videooutsoc_sdram_bankmachine5_done) begin
				videooutsoc_sdram_bankmachine5_refresh_gnt <= 1'd1;
			end
			videooutsoc_sdram_bankmachine5_track_close <= 1'd1;
			videooutsoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			if ((~videooutsoc_sdram_bankmachine5_refresh_req)) begin
				bankmachine5_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine5_next_state <= 3'd5;
		end
		3'd5: begin
			bankmachine5_next_state <= 2'd2;
		end
		3'd6: begin
			bankmachine5_next_state <= 3'd7;
		end
		3'd7: begin
			bankmachine5_next_state <= 1'd0;
		end
		default: begin
			if (videooutsoc_sdram_bankmachine5_refresh_req) begin
				bankmachine5_next_state <= 2'd3;
			end else begin
				if (videooutsoc_sdram_bankmachine5_source_valid) begin
					if (videooutsoc_sdram_bankmachine5_has_openrow) begin
						if (videooutsoc_sdram_bankmachine5_hit) begin
							videooutsoc_sdram_bankmachine5_cmd_valid <= 1'd1;
							if (videooutsoc_sdram_bankmachine5_source_payload_we) begin
								videooutsoc_sdram_bankmachine5_req_wdata_ready <= videooutsoc_sdram_bankmachine5_cmd_ready;
								videooutsoc_sdram_bankmachine5_cmd_payload_is_write <= 1'd1;
								videooutsoc_sdram_bankmachine5_cmd_payload_we <= 1'd1;
							end else begin
								videooutsoc_sdram_bankmachine5_req_rdata_valid <= videooutsoc_sdram_bankmachine5_cmd_ready;
								videooutsoc_sdram_bankmachine5_cmd_payload_is_read <= 1'd1;
							end
							videooutsoc_sdram_bankmachine5_cmd_payload_cas <= 1'd1;
						end else begin
							bankmachine5_next_state <= 1'd1;
						end
					end else begin
						bankmachine5_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
end
assign videooutsoc_sdram_bankmachine6_sink_valid = videooutsoc_sdram_bankmachine6_req_valid;
assign videooutsoc_sdram_bankmachine6_req_ready = videooutsoc_sdram_bankmachine6_sink_ready;
assign videooutsoc_sdram_bankmachine6_sink_payload_we = videooutsoc_sdram_bankmachine6_req_we;
assign videooutsoc_sdram_bankmachine6_sink_payload_adr = videooutsoc_sdram_bankmachine6_req_adr;
assign videooutsoc_sdram_bankmachine6_source_ready = (videooutsoc_sdram_bankmachine6_req_wdata_ready | videooutsoc_sdram_bankmachine6_req_rdata_valid);
assign videooutsoc_sdram_bankmachine6_req_lock = videooutsoc_sdram_bankmachine6_source_valid;
assign videooutsoc_sdram_bankmachine6_hit = (videooutsoc_sdram_bankmachine6_openrow == videooutsoc_sdram_bankmachine6_source_payload_adr[20:7]);
assign videooutsoc_sdram_bankmachine6_cmd_payload_ba = 3'd6;
always @(*) begin
	videooutsoc_sdram_bankmachine6_cmd_payload_a <= 14'd0;
	if (videooutsoc_sdram_bankmachine6_sel_row_adr) begin
		videooutsoc_sdram_bankmachine6_cmd_payload_a <= videooutsoc_sdram_bankmachine6_source_payload_adr[20:7];
	end else begin
		videooutsoc_sdram_bankmachine6_cmd_payload_a <= {videooutsoc_sdram_bankmachine6_source_payload_adr[6:0], {3{1'd0}}};
	end
end
assign videooutsoc_sdram_bankmachine6_wait = (~((videooutsoc_sdram_bankmachine6_cmd_valid & videooutsoc_sdram_bankmachine6_cmd_ready) & videooutsoc_sdram_bankmachine6_cmd_payload_is_write));
assign videooutsoc_sdram_bankmachine6_syncfifo6_din = {videooutsoc_sdram_bankmachine6_fifo_in_last, videooutsoc_sdram_bankmachine6_fifo_in_first, videooutsoc_sdram_bankmachine6_fifo_in_payload_adr, videooutsoc_sdram_bankmachine6_fifo_in_payload_we};
assign {videooutsoc_sdram_bankmachine6_fifo_out_last, videooutsoc_sdram_bankmachine6_fifo_out_first, videooutsoc_sdram_bankmachine6_fifo_out_payload_adr, videooutsoc_sdram_bankmachine6_fifo_out_payload_we} = videooutsoc_sdram_bankmachine6_syncfifo6_dout;
assign videooutsoc_sdram_bankmachine6_sink_ready = videooutsoc_sdram_bankmachine6_syncfifo6_writable;
assign videooutsoc_sdram_bankmachine6_syncfifo6_we = videooutsoc_sdram_bankmachine6_sink_valid;
assign videooutsoc_sdram_bankmachine6_fifo_in_first = videooutsoc_sdram_bankmachine6_sink_first;
assign videooutsoc_sdram_bankmachine6_fifo_in_last = videooutsoc_sdram_bankmachine6_sink_last;
assign videooutsoc_sdram_bankmachine6_fifo_in_payload_we = videooutsoc_sdram_bankmachine6_sink_payload_we;
assign videooutsoc_sdram_bankmachine6_fifo_in_payload_adr = videooutsoc_sdram_bankmachine6_sink_payload_adr;
assign videooutsoc_sdram_bankmachine6_source_valid = videooutsoc_sdram_bankmachine6_syncfifo6_readable;
assign videooutsoc_sdram_bankmachine6_source_first = videooutsoc_sdram_bankmachine6_fifo_out_first;
assign videooutsoc_sdram_bankmachine6_source_last = videooutsoc_sdram_bankmachine6_fifo_out_last;
assign videooutsoc_sdram_bankmachine6_source_payload_we = videooutsoc_sdram_bankmachine6_fifo_out_payload_we;
assign videooutsoc_sdram_bankmachine6_source_payload_adr = videooutsoc_sdram_bankmachine6_fifo_out_payload_adr;
assign videooutsoc_sdram_bankmachine6_syncfifo6_re = videooutsoc_sdram_bankmachine6_source_ready;
always @(*) begin
	videooutsoc_sdram_bankmachine6_wrport_adr <= 3'd0;
	if (videooutsoc_sdram_bankmachine6_replace) begin
		videooutsoc_sdram_bankmachine6_wrport_adr <= (videooutsoc_sdram_bankmachine6_produce - 1'd1);
	end else begin
		videooutsoc_sdram_bankmachine6_wrport_adr <= videooutsoc_sdram_bankmachine6_produce;
	end
end
assign videooutsoc_sdram_bankmachine6_wrport_dat_w = videooutsoc_sdram_bankmachine6_syncfifo6_din;
assign videooutsoc_sdram_bankmachine6_wrport_we = (videooutsoc_sdram_bankmachine6_syncfifo6_we & (videooutsoc_sdram_bankmachine6_syncfifo6_writable | videooutsoc_sdram_bankmachine6_replace));
assign videooutsoc_sdram_bankmachine6_do_read = (videooutsoc_sdram_bankmachine6_syncfifo6_readable & videooutsoc_sdram_bankmachine6_syncfifo6_re);
assign videooutsoc_sdram_bankmachine6_rdport_adr = videooutsoc_sdram_bankmachine6_consume;
assign videooutsoc_sdram_bankmachine6_syncfifo6_dout = videooutsoc_sdram_bankmachine6_rdport_dat_r;
assign videooutsoc_sdram_bankmachine6_syncfifo6_writable = (videooutsoc_sdram_bankmachine6_level != 4'd8);
assign videooutsoc_sdram_bankmachine6_syncfifo6_readable = (videooutsoc_sdram_bankmachine6_level != 1'd0);
assign videooutsoc_sdram_bankmachine6_done = (videooutsoc_sdram_bankmachine6_count == 1'd0);
always @(*) begin
	videooutsoc_sdram_bankmachine6_cmd_payload_is_read <= 1'd0;
	videooutsoc_sdram_bankmachine6_cmd_payload_is_write <= 1'd0;
	videooutsoc_sdram_bankmachine6_req_wdata_ready <= 1'd0;
	videooutsoc_sdram_bankmachine6_req_rdata_valid <= 1'd0;
	videooutsoc_sdram_bankmachine6_refresh_gnt <= 1'd0;
	videooutsoc_sdram_bankmachine6_cmd_payload_cas <= 1'd0;
	videooutsoc_sdram_bankmachine6_cmd_valid <= 1'd0;
	videooutsoc_sdram_bankmachine6_track_open <= 1'd0;
	videooutsoc_sdram_bankmachine6_track_close <= 1'd0;
	bankmachine6_next_state <= 3'd0;
	videooutsoc_sdram_bankmachine6_cmd_payload_ras <= 1'd0;
	videooutsoc_sdram_bankmachine6_cmd_payload_we <= 1'd0;
	videooutsoc_sdram_bankmachine6_sel_row_adr <= 1'd0;
	videooutsoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd0;
	bankmachine6_next_state <= bankmachine6_state;
	case (bankmachine6_state)
		1'd1: begin
			if (videooutsoc_sdram_bankmachine6_done) begin
				videooutsoc_sdram_bankmachine6_cmd_valid <= 1'd1;
				if (videooutsoc_sdram_bankmachine6_cmd_ready) begin
					bankmachine6_next_state <= 3'd4;
				end
				videooutsoc_sdram_bankmachine6_cmd_payload_ras <= 1'd1;
				videooutsoc_sdram_bankmachine6_cmd_payload_we <= 1'd1;
				videooutsoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			end
			videooutsoc_sdram_bankmachine6_track_close <= 1'd1;
		end
		2'd2: begin
			videooutsoc_sdram_bankmachine6_sel_row_adr <= 1'd1;
			videooutsoc_sdram_bankmachine6_track_open <= 1'd1;
			videooutsoc_sdram_bankmachine6_cmd_valid <= 1'd1;
			videooutsoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			if (videooutsoc_sdram_bankmachine6_cmd_ready) begin
				bankmachine6_next_state <= 3'd6;
			end
			videooutsoc_sdram_bankmachine6_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (videooutsoc_sdram_bankmachine6_done) begin
				videooutsoc_sdram_bankmachine6_refresh_gnt <= 1'd1;
			end
			videooutsoc_sdram_bankmachine6_track_close <= 1'd1;
			videooutsoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			if ((~videooutsoc_sdram_bankmachine6_refresh_req)) begin
				bankmachine6_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine6_next_state <= 3'd5;
		end
		3'd5: begin
			bankmachine6_next_state <= 2'd2;
		end
		3'd6: begin
			bankmachine6_next_state <= 3'd7;
		end
		3'd7: begin
			bankmachine6_next_state <= 1'd0;
		end
		default: begin
			if (videooutsoc_sdram_bankmachine6_refresh_req) begin
				bankmachine6_next_state <= 2'd3;
			end else begin
				if (videooutsoc_sdram_bankmachine6_source_valid) begin
					if (videooutsoc_sdram_bankmachine6_has_openrow) begin
						if (videooutsoc_sdram_bankmachine6_hit) begin
							videooutsoc_sdram_bankmachine6_cmd_valid <= 1'd1;
							if (videooutsoc_sdram_bankmachine6_source_payload_we) begin
								videooutsoc_sdram_bankmachine6_req_wdata_ready <= videooutsoc_sdram_bankmachine6_cmd_ready;
								videooutsoc_sdram_bankmachine6_cmd_payload_is_write <= 1'd1;
								videooutsoc_sdram_bankmachine6_cmd_payload_we <= 1'd1;
							end else begin
								videooutsoc_sdram_bankmachine6_req_rdata_valid <= videooutsoc_sdram_bankmachine6_cmd_ready;
								videooutsoc_sdram_bankmachine6_cmd_payload_is_read <= 1'd1;
							end
							videooutsoc_sdram_bankmachine6_cmd_payload_cas <= 1'd1;
						end else begin
							bankmachine6_next_state <= 1'd1;
						end
					end else begin
						bankmachine6_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
end
assign videooutsoc_sdram_bankmachine7_sink_valid = videooutsoc_sdram_bankmachine7_req_valid;
assign videooutsoc_sdram_bankmachine7_req_ready = videooutsoc_sdram_bankmachine7_sink_ready;
assign videooutsoc_sdram_bankmachine7_sink_payload_we = videooutsoc_sdram_bankmachine7_req_we;
assign videooutsoc_sdram_bankmachine7_sink_payload_adr = videooutsoc_sdram_bankmachine7_req_adr;
assign videooutsoc_sdram_bankmachine7_source_ready = (videooutsoc_sdram_bankmachine7_req_wdata_ready | videooutsoc_sdram_bankmachine7_req_rdata_valid);
assign videooutsoc_sdram_bankmachine7_req_lock = videooutsoc_sdram_bankmachine7_source_valid;
assign videooutsoc_sdram_bankmachine7_hit = (videooutsoc_sdram_bankmachine7_openrow == videooutsoc_sdram_bankmachine7_source_payload_adr[20:7]);
assign videooutsoc_sdram_bankmachine7_cmd_payload_ba = 3'd7;
always @(*) begin
	videooutsoc_sdram_bankmachine7_cmd_payload_a <= 14'd0;
	if (videooutsoc_sdram_bankmachine7_sel_row_adr) begin
		videooutsoc_sdram_bankmachine7_cmd_payload_a <= videooutsoc_sdram_bankmachine7_source_payload_adr[20:7];
	end else begin
		videooutsoc_sdram_bankmachine7_cmd_payload_a <= {videooutsoc_sdram_bankmachine7_source_payload_adr[6:0], {3{1'd0}}};
	end
end
assign videooutsoc_sdram_bankmachine7_wait = (~((videooutsoc_sdram_bankmachine7_cmd_valid & videooutsoc_sdram_bankmachine7_cmd_ready) & videooutsoc_sdram_bankmachine7_cmd_payload_is_write));
assign videooutsoc_sdram_bankmachine7_syncfifo7_din = {videooutsoc_sdram_bankmachine7_fifo_in_last, videooutsoc_sdram_bankmachine7_fifo_in_first, videooutsoc_sdram_bankmachine7_fifo_in_payload_adr, videooutsoc_sdram_bankmachine7_fifo_in_payload_we};
assign {videooutsoc_sdram_bankmachine7_fifo_out_last, videooutsoc_sdram_bankmachine7_fifo_out_first, videooutsoc_sdram_bankmachine7_fifo_out_payload_adr, videooutsoc_sdram_bankmachine7_fifo_out_payload_we} = videooutsoc_sdram_bankmachine7_syncfifo7_dout;
assign videooutsoc_sdram_bankmachine7_sink_ready = videooutsoc_sdram_bankmachine7_syncfifo7_writable;
assign videooutsoc_sdram_bankmachine7_syncfifo7_we = videooutsoc_sdram_bankmachine7_sink_valid;
assign videooutsoc_sdram_bankmachine7_fifo_in_first = videooutsoc_sdram_bankmachine7_sink_first;
assign videooutsoc_sdram_bankmachine7_fifo_in_last = videooutsoc_sdram_bankmachine7_sink_last;
assign videooutsoc_sdram_bankmachine7_fifo_in_payload_we = videooutsoc_sdram_bankmachine7_sink_payload_we;
assign videooutsoc_sdram_bankmachine7_fifo_in_payload_adr = videooutsoc_sdram_bankmachine7_sink_payload_adr;
assign videooutsoc_sdram_bankmachine7_source_valid = videooutsoc_sdram_bankmachine7_syncfifo7_readable;
assign videooutsoc_sdram_bankmachine7_source_first = videooutsoc_sdram_bankmachine7_fifo_out_first;
assign videooutsoc_sdram_bankmachine7_source_last = videooutsoc_sdram_bankmachine7_fifo_out_last;
assign videooutsoc_sdram_bankmachine7_source_payload_we = videooutsoc_sdram_bankmachine7_fifo_out_payload_we;
assign videooutsoc_sdram_bankmachine7_source_payload_adr = videooutsoc_sdram_bankmachine7_fifo_out_payload_adr;
assign videooutsoc_sdram_bankmachine7_syncfifo7_re = videooutsoc_sdram_bankmachine7_source_ready;
always @(*) begin
	videooutsoc_sdram_bankmachine7_wrport_adr <= 3'd0;
	if (videooutsoc_sdram_bankmachine7_replace) begin
		videooutsoc_sdram_bankmachine7_wrport_adr <= (videooutsoc_sdram_bankmachine7_produce - 1'd1);
	end else begin
		videooutsoc_sdram_bankmachine7_wrport_adr <= videooutsoc_sdram_bankmachine7_produce;
	end
end
assign videooutsoc_sdram_bankmachine7_wrport_dat_w = videooutsoc_sdram_bankmachine7_syncfifo7_din;
assign videooutsoc_sdram_bankmachine7_wrport_we = (videooutsoc_sdram_bankmachine7_syncfifo7_we & (videooutsoc_sdram_bankmachine7_syncfifo7_writable | videooutsoc_sdram_bankmachine7_replace));
assign videooutsoc_sdram_bankmachine7_do_read = (videooutsoc_sdram_bankmachine7_syncfifo7_readable & videooutsoc_sdram_bankmachine7_syncfifo7_re);
assign videooutsoc_sdram_bankmachine7_rdport_adr = videooutsoc_sdram_bankmachine7_consume;
assign videooutsoc_sdram_bankmachine7_syncfifo7_dout = videooutsoc_sdram_bankmachine7_rdport_dat_r;
assign videooutsoc_sdram_bankmachine7_syncfifo7_writable = (videooutsoc_sdram_bankmachine7_level != 4'd8);
assign videooutsoc_sdram_bankmachine7_syncfifo7_readable = (videooutsoc_sdram_bankmachine7_level != 1'd0);
assign videooutsoc_sdram_bankmachine7_done = (videooutsoc_sdram_bankmachine7_count == 1'd0);
always @(*) begin
	videooutsoc_sdram_bankmachine7_track_open <= 1'd0;
	videooutsoc_sdram_bankmachine7_track_close <= 1'd0;
	videooutsoc_sdram_bankmachine7_cmd_payload_cas <= 1'd0;
	videooutsoc_sdram_bankmachine7_cmd_payload_ras <= 1'd0;
	videooutsoc_sdram_bankmachine7_cmd_payload_we <= 1'd0;
	videooutsoc_sdram_bankmachine7_sel_row_adr <= 1'd0;
	videooutsoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd0;
	videooutsoc_sdram_bankmachine7_cmd_payload_is_read <= 1'd0;
	videooutsoc_sdram_bankmachine7_cmd_payload_is_write <= 1'd0;
	videooutsoc_sdram_bankmachine7_req_wdata_ready <= 1'd0;
	videooutsoc_sdram_bankmachine7_req_rdata_valid <= 1'd0;
	bankmachine7_next_state <= 3'd0;
	videooutsoc_sdram_bankmachine7_refresh_gnt <= 1'd0;
	videooutsoc_sdram_bankmachine7_cmd_valid <= 1'd0;
	bankmachine7_next_state <= bankmachine7_state;
	case (bankmachine7_state)
		1'd1: begin
			if (videooutsoc_sdram_bankmachine7_done) begin
				videooutsoc_sdram_bankmachine7_cmd_valid <= 1'd1;
				if (videooutsoc_sdram_bankmachine7_cmd_ready) begin
					bankmachine7_next_state <= 3'd4;
				end
				videooutsoc_sdram_bankmachine7_cmd_payload_ras <= 1'd1;
				videooutsoc_sdram_bankmachine7_cmd_payload_we <= 1'd1;
				videooutsoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			end
			videooutsoc_sdram_bankmachine7_track_close <= 1'd1;
		end
		2'd2: begin
			videooutsoc_sdram_bankmachine7_sel_row_adr <= 1'd1;
			videooutsoc_sdram_bankmachine7_track_open <= 1'd1;
			videooutsoc_sdram_bankmachine7_cmd_valid <= 1'd1;
			videooutsoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			if (videooutsoc_sdram_bankmachine7_cmd_ready) begin
				bankmachine7_next_state <= 3'd6;
			end
			videooutsoc_sdram_bankmachine7_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (videooutsoc_sdram_bankmachine7_done) begin
				videooutsoc_sdram_bankmachine7_refresh_gnt <= 1'd1;
			end
			videooutsoc_sdram_bankmachine7_track_close <= 1'd1;
			videooutsoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			if ((~videooutsoc_sdram_bankmachine7_refresh_req)) begin
				bankmachine7_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine7_next_state <= 3'd5;
		end
		3'd5: begin
			bankmachine7_next_state <= 2'd2;
		end
		3'd6: begin
			bankmachine7_next_state <= 3'd7;
		end
		3'd7: begin
			bankmachine7_next_state <= 1'd0;
		end
		default: begin
			if (videooutsoc_sdram_bankmachine7_refresh_req) begin
				bankmachine7_next_state <= 2'd3;
			end else begin
				if (videooutsoc_sdram_bankmachine7_source_valid) begin
					if (videooutsoc_sdram_bankmachine7_has_openrow) begin
						if (videooutsoc_sdram_bankmachine7_hit) begin
							videooutsoc_sdram_bankmachine7_cmd_valid <= 1'd1;
							if (videooutsoc_sdram_bankmachine7_source_payload_we) begin
								videooutsoc_sdram_bankmachine7_req_wdata_ready <= videooutsoc_sdram_bankmachine7_cmd_ready;
								videooutsoc_sdram_bankmachine7_cmd_payload_is_write <= 1'd1;
								videooutsoc_sdram_bankmachine7_cmd_payload_we <= 1'd1;
							end else begin
								videooutsoc_sdram_bankmachine7_req_rdata_valid <= videooutsoc_sdram_bankmachine7_cmd_ready;
								videooutsoc_sdram_bankmachine7_cmd_payload_is_read <= 1'd1;
							end
							videooutsoc_sdram_bankmachine7_cmd_payload_cas <= 1'd1;
						end else begin
							bankmachine7_next_state <= 1'd1;
						end
					end else begin
						bankmachine7_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
end
assign videooutsoc_sdram_read_available = ((((((((videooutsoc_sdram_bankmachine0_cmd_valid & videooutsoc_sdram_bankmachine0_cmd_payload_is_read) | (videooutsoc_sdram_bankmachine1_cmd_valid & videooutsoc_sdram_bankmachine1_cmd_payload_is_read)) | (videooutsoc_sdram_bankmachine2_cmd_valid & videooutsoc_sdram_bankmachine2_cmd_payload_is_read)) | (videooutsoc_sdram_bankmachine3_cmd_valid & videooutsoc_sdram_bankmachine3_cmd_payload_is_read)) | (videooutsoc_sdram_bankmachine4_cmd_valid & videooutsoc_sdram_bankmachine4_cmd_payload_is_read)) | (videooutsoc_sdram_bankmachine5_cmd_valid & videooutsoc_sdram_bankmachine5_cmd_payload_is_read)) | (videooutsoc_sdram_bankmachine6_cmd_valid & videooutsoc_sdram_bankmachine6_cmd_payload_is_read)) | (videooutsoc_sdram_bankmachine7_cmd_valid & videooutsoc_sdram_bankmachine7_cmd_payload_is_read));
assign videooutsoc_sdram_write_available = ((((((((videooutsoc_sdram_bankmachine0_cmd_valid & videooutsoc_sdram_bankmachine0_cmd_payload_is_write) | (videooutsoc_sdram_bankmachine1_cmd_valid & videooutsoc_sdram_bankmachine1_cmd_payload_is_write)) | (videooutsoc_sdram_bankmachine2_cmd_valid & videooutsoc_sdram_bankmachine2_cmd_payload_is_write)) | (videooutsoc_sdram_bankmachine3_cmd_valid & videooutsoc_sdram_bankmachine3_cmd_payload_is_write)) | (videooutsoc_sdram_bankmachine4_cmd_valid & videooutsoc_sdram_bankmachine4_cmd_payload_is_write)) | (videooutsoc_sdram_bankmachine5_cmd_valid & videooutsoc_sdram_bankmachine5_cmd_payload_is_write)) | (videooutsoc_sdram_bankmachine6_cmd_valid & videooutsoc_sdram_bankmachine6_cmd_payload_is_write)) | (videooutsoc_sdram_bankmachine7_cmd_valid & videooutsoc_sdram_bankmachine7_cmd_payload_is_write));
assign videooutsoc_sdram_max_time0 = (videooutsoc_sdram_time0 == 1'd0);
assign videooutsoc_sdram_max_time1 = (videooutsoc_sdram_time1 == 1'd0);
assign videooutsoc_sdram_bankmachine0_refresh_req = videooutsoc_sdram_cmd_valid;
assign videooutsoc_sdram_bankmachine1_refresh_req = videooutsoc_sdram_cmd_valid;
assign videooutsoc_sdram_bankmachine2_refresh_req = videooutsoc_sdram_cmd_valid;
assign videooutsoc_sdram_bankmachine3_refresh_req = videooutsoc_sdram_cmd_valid;
assign videooutsoc_sdram_bankmachine4_refresh_req = videooutsoc_sdram_cmd_valid;
assign videooutsoc_sdram_bankmachine5_refresh_req = videooutsoc_sdram_cmd_valid;
assign videooutsoc_sdram_bankmachine6_refresh_req = videooutsoc_sdram_cmd_valid;
assign videooutsoc_sdram_bankmachine7_refresh_req = videooutsoc_sdram_cmd_valid;
assign videooutsoc_sdram_go_to_refresh = (((((((videooutsoc_sdram_bankmachine0_refresh_gnt & videooutsoc_sdram_bankmachine1_refresh_gnt) & videooutsoc_sdram_bankmachine2_refresh_gnt) & videooutsoc_sdram_bankmachine3_refresh_gnt) & videooutsoc_sdram_bankmachine4_refresh_gnt) & videooutsoc_sdram_bankmachine5_refresh_gnt) & videooutsoc_sdram_bankmachine6_refresh_gnt) & videooutsoc_sdram_bankmachine7_refresh_gnt);
assign videooutsoc_sdram_interface_rdata = {videooutsoc_sdram_dfi_p3_rddata, videooutsoc_sdram_dfi_p2_rddata, videooutsoc_sdram_dfi_p1_rddata, videooutsoc_sdram_dfi_p0_rddata};
assign {videooutsoc_sdram_dfi_p3_wrdata, videooutsoc_sdram_dfi_p2_wrdata, videooutsoc_sdram_dfi_p1_wrdata, videooutsoc_sdram_dfi_p0_wrdata} = videooutsoc_sdram_interface_wdata;
assign {videooutsoc_sdram_dfi_p3_wrdata_mask, videooutsoc_sdram_dfi_p2_wrdata_mask, videooutsoc_sdram_dfi_p1_wrdata_mask, videooutsoc_sdram_dfi_p0_wrdata_mask} = (~videooutsoc_sdram_interface_wdata_we);
always @(*) begin
	videooutsoc_sdram_choose_cmd_valids <= 8'd0;
	videooutsoc_sdram_choose_cmd_valids[0] <= (videooutsoc_sdram_bankmachine0_cmd_valid & ((videooutsoc_sdram_bankmachine0_cmd_payload_is_cmd & videooutsoc_sdram_choose_cmd_want_cmds) | ((videooutsoc_sdram_bankmachine0_cmd_payload_is_read == videooutsoc_sdram_choose_cmd_want_reads) & (videooutsoc_sdram_bankmachine0_cmd_payload_is_write == videooutsoc_sdram_choose_cmd_want_writes))));
	videooutsoc_sdram_choose_cmd_valids[1] <= (videooutsoc_sdram_bankmachine1_cmd_valid & ((videooutsoc_sdram_bankmachine1_cmd_payload_is_cmd & videooutsoc_sdram_choose_cmd_want_cmds) | ((videooutsoc_sdram_bankmachine1_cmd_payload_is_read == videooutsoc_sdram_choose_cmd_want_reads) & (videooutsoc_sdram_bankmachine1_cmd_payload_is_write == videooutsoc_sdram_choose_cmd_want_writes))));
	videooutsoc_sdram_choose_cmd_valids[2] <= (videooutsoc_sdram_bankmachine2_cmd_valid & ((videooutsoc_sdram_bankmachine2_cmd_payload_is_cmd & videooutsoc_sdram_choose_cmd_want_cmds) | ((videooutsoc_sdram_bankmachine2_cmd_payload_is_read == videooutsoc_sdram_choose_cmd_want_reads) & (videooutsoc_sdram_bankmachine2_cmd_payload_is_write == videooutsoc_sdram_choose_cmd_want_writes))));
	videooutsoc_sdram_choose_cmd_valids[3] <= (videooutsoc_sdram_bankmachine3_cmd_valid & ((videooutsoc_sdram_bankmachine3_cmd_payload_is_cmd & videooutsoc_sdram_choose_cmd_want_cmds) | ((videooutsoc_sdram_bankmachine3_cmd_payload_is_read == videooutsoc_sdram_choose_cmd_want_reads) & (videooutsoc_sdram_bankmachine3_cmd_payload_is_write == videooutsoc_sdram_choose_cmd_want_writes))));
	videooutsoc_sdram_choose_cmd_valids[4] <= (videooutsoc_sdram_bankmachine4_cmd_valid & ((videooutsoc_sdram_bankmachine4_cmd_payload_is_cmd & videooutsoc_sdram_choose_cmd_want_cmds) | ((videooutsoc_sdram_bankmachine4_cmd_payload_is_read == videooutsoc_sdram_choose_cmd_want_reads) & (videooutsoc_sdram_bankmachine4_cmd_payload_is_write == videooutsoc_sdram_choose_cmd_want_writes))));
	videooutsoc_sdram_choose_cmd_valids[5] <= (videooutsoc_sdram_bankmachine5_cmd_valid & ((videooutsoc_sdram_bankmachine5_cmd_payload_is_cmd & videooutsoc_sdram_choose_cmd_want_cmds) | ((videooutsoc_sdram_bankmachine5_cmd_payload_is_read == videooutsoc_sdram_choose_cmd_want_reads) & (videooutsoc_sdram_bankmachine5_cmd_payload_is_write == videooutsoc_sdram_choose_cmd_want_writes))));
	videooutsoc_sdram_choose_cmd_valids[6] <= (videooutsoc_sdram_bankmachine6_cmd_valid & ((videooutsoc_sdram_bankmachine6_cmd_payload_is_cmd & videooutsoc_sdram_choose_cmd_want_cmds) | ((videooutsoc_sdram_bankmachine6_cmd_payload_is_read == videooutsoc_sdram_choose_cmd_want_reads) & (videooutsoc_sdram_bankmachine6_cmd_payload_is_write == videooutsoc_sdram_choose_cmd_want_writes))));
	videooutsoc_sdram_choose_cmd_valids[7] <= (videooutsoc_sdram_bankmachine7_cmd_valid & ((videooutsoc_sdram_bankmachine7_cmd_payload_is_cmd & videooutsoc_sdram_choose_cmd_want_cmds) | ((videooutsoc_sdram_bankmachine7_cmd_payload_is_read == videooutsoc_sdram_choose_cmd_want_reads) & (videooutsoc_sdram_bankmachine7_cmd_payload_is_write == videooutsoc_sdram_choose_cmd_want_writes))));
end
assign videooutsoc_sdram_choose_cmd_request = videooutsoc_sdram_choose_cmd_valids;
assign videooutsoc_sdram_choose_cmd_cmd_valid = comb_rhs_array_muxed0;
assign videooutsoc_sdram_choose_cmd_cmd_payload_a = comb_rhs_array_muxed1;
assign videooutsoc_sdram_choose_cmd_cmd_payload_ba = comb_rhs_array_muxed2;
assign videooutsoc_sdram_choose_cmd_cmd_payload_is_read = comb_rhs_array_muxed3;
assign videooutsoc_sdram_choose_cmd_cmd_payload_is_write = comb_rhs_array_muxed4;
assign videooutsoc_sdram_choose_cmd_cmd_payload_is_cmd = comb_rhs_array_muxed5;
always @(*) begin
	videooutsoc_sdram_choose_cmd_cmd_payload_cas <= 1'd0;
	if (videooutsoc_sdram_choose_cmd_cmd_valid) begin
		videooutsoc_sdram_choose_cmd_cmd_payload_cas <= comb_t_array_muxed0;
	end
end
always @(*) begin
	videooutsoc_sdram_choose_cmd_cmd_payload_ras <= 1'd0;
	if (videooutsoc_sdram_choose_cmd_cmd_valid) begin
		videooutsoc_sdram_choose_cmd_cmd_payload_ras <= comb_t_array_muxed1;
	end
end
always @(*) begin
	videooutsoc_sdram_choose_cmd_cmd_payload_we <= 1'd0;
	if (videooutsoc_sdram_choose_cmd_cmd_valid) begin
		videooutsoc_sdram_choose_cmd_cmd_payload_we <= comb_t_array_muxed2;
	end
end
assign videooutsoc_sdram_choose_cmd_ce = videooutsoc_sdram_choose_cmd_cmd_ready;
always @(*) begin
	videooutsoc_sdram_choose_req_valids <= 8'd0;
	videooutsoc_sdram_choose_req_valids[0] <= (videooutsoc_sdram_bankmachine0_cmd_valid & ((videooutsoc_sdram_bankmachine0_cmd_payload_is_cmd & videooutsoc_sdram_choose_req_want_cmds) | ((videooutsoc_sdram_bankmachine0_cmd_payload_is_read == videooutsoc_sdram_choose_req_want_reads) & (videooutsoc_sdram_bankmachine0_cmd_payload_is_write == videooutsoc_sdram_choose_req_want_writes))));
	videooutsoc_sdram_choose_req_valids[1] <= (videooutsoc_sdram_bankmachine1_cmd_valid & ((videooutsoc_sdram_bankmachine1_cmd_payload_is_cmd & videooutsoc_sdram_choose_req_want_cmds) | ((videooutsoc_sdram_bankmachine1_cmd_payload_is_read == videooutsoc_sdram_choose_req_want_reads) & (videooutsoc_sdram_bankmachine1_cmd_payload_is_write == videooutsoc_sdram_choose_req_want_writes))));
	videooutsoc_sdram_choose_req_valids[2] <= (videooutsoc_sdram_bankmachine2_cmd_valid & ((videooutsoc_sdram_bankmachine2_cmd_payload_is_cmd & videooutsoc_sdram_choose_req_want_cmds) | ((videooutsoc_sdram_bankmachine2_cmd_payload_is_read == videooutsoc_sdram_choose_req_want_reads) & (videooutsoc_sdram_bankmachine2_cmd_payload_is_write == videooutsoc_sdram_choose_req_want_writes))));
	videooutsoc_sdram_choose_req_valids[3] <= (videooutsoc_sdram_bankmachine3_cmd_valid & ((videooutsoc_sdram_bankmachine3_cmd_payload_is_cmd & videooutsoc_sdram_choose_req_want_cmds) | ((videooutsoc_sdram_bankmachine3_cmd_payload_is_read == videooutsoc_sdram_choose_req_want_reads) & (videooutsoc_sdram_bankmachine3_cmd_payload_is_write == videooutsoc_sdram_choose_req_want_writes))));
	videooutsoc_sdram_choose_req_valids[4] <= (videooutsoc_sdram_bankmachine4_cmd_valid & ((videooutsoc_sdram_bankmachine4_cmd_payload_is_cmd & videooutsoc_sdram_choose_req_want_cmds) | ((videooutsoc_sdram_bankmachine4_cmd_payload_is_read == videooutsoc_sdram_choose_req_want_reads) & (videooutsoc_sdram_bankmachine4_cmd_payload_is_write == videooutsoc_sdram_choose_req_want_writes))));
	videooutsoc_sdram_choose_req_valids[5] <= (videooutsoc_sdram_bankmachine5_cmd_valid & ((videooutsoc_sdram_bankmachine5_cmd_payload_is_cmd & videooutsoc_sdram_choose_req_want_cmds) | ((videooutsoc_sdram_bankmachine5_cmd_payload_is_read == videooutsoc_sdram_choose_req_want_reads) & (videooutsoc_sdram_bankmachine5_cmd_payload_is_write == videooutsoc_sdram_choose_req_want_writes))));
	videooutsoc_sdram_choose_req_valids[6] <= (videooutsoc_sdram_bankmachine6_cmd_valid & ((videooutsoc_sdram_bankmachine6_cmd_payload_is_cmd & videooutsoc_sdram_choose_req_want_cmds) | ((videooutsoc_sdram_bankmachine6_cmd_payload_is_read == videooutsoc_sdram_choose_req_want_reads) & (videooutsoc_sdram_bankmachine6_cmd_payload_is_write == videooutsoc_sdram_choose_req_want_writes))));
	videooutsoc_sdram_choose_req_valids[7] <= (videooutsoc_sdram_bankmachine7_cmd_valid & ((videooutsoc_sdram_bankmachine7_cmd_payload_is_cmd & videooutsoc_sdram_choose_req_want_cmds) | ((videooutsoc_sdram_bankmachine7_cmd_payload_is_read == videooutsoc_sdram_choose_req_want_reads) & (videooutsoc_sdram_bankmachine7_cmd_payload_is_write == videooutsoc_sdram_choose_req_want_writes))));
end
assign videooutsoc_sdram_choose_req_request = videooutsoc_sdram_choose_req_valids;
assign videooutsoc_sdram_choose_req_cmd_valid = comb_rhs_array_muxed6;
assign videooutsoc_sdram_choose_req_cmd_payload_a = comb_rhs_array_muxed7;
assign videooutsoc_sdram_choose_req_cmd_payload_ba = comb_rhs_array_muxed8;
assign videooutsoc_sdram_choose_req_cmd_payload_is_read = comb_rhs_array_muxed9;
assign videooutsoc_sdram_choose_req_cmd_payload_is_write = comb_rhs_array_muxed10;
assign videooutsoc_sdram_choose_req_cmd_payload_is_cmd = comb_rhs_array_muxed11;
always @(*) begin
	videooutsoc_sdram_choose_req_cmd_payload_cas <= 1'd0;
	if (videooutsoc_sdram_choose_req_cmd_valid) begin
		videooutsoc_sdram_choose_req_cmd_payload_cas <= comb_t_array_muxed3;
	end
end
always @(*) begin
	videooutsoc_sdram_choose_req_cmd_payload_ras <= 1'd0;
	if (videooutsoc_sdram_choose_req_cmd_valid) begin
		videooutsoc_sdram_choose_req_cmd_payload_ras <= comb_t_array_muxed4;
	end
end
always @(*) begin
	videooutsoc_sdram_choose_req_cmd_payload_we <= 1'd0;
	if (videooutsoc_sdram_choose_req_cmd_valid) begin
		videooutsoc_sdram_choose_req_cmd_payload_we <= comb_t_array_muxed5;
	end
end
always @(*) begin
	videooutsoc_sdram_bankmachine0_cmd_ready <= 1'd0;
	if (((videooutsoc_sdram_choose_cmd_cmd_valid & videooutsoc_sdram_choose_cmd_cmd_ready) & (videooutsoc_sdram_choose_cmd_grant == 1'd0))) begin
		videooutsoc_sdram_bankmachine0_cmd_ready <= 1'd1;
	end
	if (((videooutsoc_sdram_choose_req_cmd_valid & videooutsoc_sdram_choose_req_cmd_ready) & (videooutsoc_sdram_choose_req_grant == 1'd0))) begin
		videooutsoc_sdram_bankmachine0_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	videooutsoc_sdram_bankmachine1_cmd_ready <= 1'd0;
	if (((videooutsoc_sdram_choose_cmd_cmd_valid & videooutsoc_sdram_choose_cmd_cmd_ready) & (videooutsoc_sdram_choose_cmd_grant == 1'd1))) begin
		videooutsoc_sdram_bankmachine1_cmd_ready <= 1'd1;
	end
	if (((videooutsoc_sdram_choose_req_cmd_valid & videooutsoc_sdram_choose_req_cmd_ready) & (videooutsoc_sdram_choose_req_grant == 1'd1))) begin
		videooutsoc_sdram_bankmachine1_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	videooutsoc_sdram_bankmachine2_cmd_ready <= 1'd0;
	if (((videooutsoc_sdram_choose_cmd_cmd_valid & videooutsoc_sdram_choose_cmd_cmd_ready) & (videooutsoc_sdram_choose_cmd_grant == 2'd2))) begin
		videooutsoc_sdram_bankmachine2_cmd_ready <= 1'd1;
	end
	if (((videooutsoc_sdram_choose_req_cmd_valid & videooutsoc_sdram_choose_req_cmd_ready) & (videooutsoc_sdram_choose_req_grant == 2'd2))) begin
		videooutsoc_sdram_bankmachine2_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	videooutsoc_sdram_bankmachine3_cmd_ready <= 1'd0;
	if (((videooutsoc_sdram_choose_cmd_cmd_valid & videooutsoc_sdram_choose_cmd_cmd_ready) & (videooutsoc_sdram_choose_cmd_grant == 2'd3))) begin
		videooutsoc_sdram_bankmachine3_cmd_ready <= 1'd1;
	end
	if (((videooutsoc_sdram_choose_req_cmd_valid & videooutsoc_sdram_choose_req_cmd_ready) & (videooutsoc_sdram_choose_req_grant == 2'd3))) begin
		videooutsoc_sdram_bankmachine3_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	videooutsoc_sdram_bankmachine4_cmd_ready <= 1'd0;
	if (((videooutsoc_sdram_choose_cmd_cmd_valid & videooutsoc_sdram_choose_cmd_cmd_ready) & (videooutsoc_sdram_choose_cmd_grant == 3'd4))) begin
		videooutsoc_sdram_bankmachine4_cmd_ready <= 1'd1;
	end
	if (((videooutsoc_sdram_choose_req_cmd_valid & videooutsoc_sdram_choose_req_cmd_ready) & (videooutsoc_sdram_choose_req_grant == 3'd4))) begin
		videooutsoc_sdram_bankmachine4_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	videooutsoc_sdram_bankmachine5_cmd_ready <= 1'd0;
	if (((videooutsoc_sdram_choose_cmd_cmd_valid & videooutsoc_sdram_choose_cmd_cmd_ready) & (videooutsoc_sdram_choose_cmd_grant == 3'd5))) begin
		videooutsoc_sdram_bankmachine5_cmd_ready <= 1'd1;
	end
	if (((videooutsoc_sdram_choose_req_cmd_valid & videooutsoc_sdram_choose_req_cmd_ready) & (videooutsoc_sdram_choose_req_grant == 3'd5))) begin
		videooutsoc_sdram_bankmachine5_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	videooutsoc_sdram_bankmachine6_cmd_ready <= 1'd0;
	if (((videooutsoc_sdram_choose_cmd_cmd_valid & videooutsoc_sdram_choose_cmd_cmd_ready) & (videooutsoc_sdram_choose_cmd_grant == 3'd6))) begin
		videooutsoc_sdram_bankmachine6_cmd_ready <= 1'd1;
	end
	if (((videooutsoc_sdram_choose_req_cmd_valid & videooutsoc_sdram_choose_req_cmd_ready) & (videooutsoc_sdram_choose_req_grant == 3'd6))) begin
		videooutsoc_sdram_bankmachine6_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	videooutsoc_sdram_bankmachine7_cmd_ready <= 1'd0;
	if (((videooutsoc_sdram_choose_cmd_cmd_valid & videooutsoc_sdram_choose_cmd_cmd_ready) & (videooutsoc_sdram_choose_cmd_grant == 3'd7))) begin
		videooutsoc_sdram_bankmachine7_cmd_ready <= 1'd1;
	end
	if (((videooutsoc_sdram_choose_req_cmd_valid & videooutsoc_sdram_choose_req_cmd_ready) & (videooutsoc_sdram_choose_req_grant == 3'd7))) begin
		videooutsoc_sdram_bankmachine7_cmd_ready <= 1'd1;
	end
end
assign videooutsoc_sdram_choose_req_ce = videooutsoc_sdram_choose_req_cmd_ready;
assign videooutsoc_sdram_dfi_p0_cke = 1'd1;
assign videooutsoc_sdram_dfi_p0_cs_n = 1'd0;
assign videooutsoc_sdram_dfi_p0_odt = 1'd1;
assign videooutsoc_sdram_dfi_p0_reset_n = 1'd1;
assign videooutsoc_sdram_dfi_p1_cke = 1'd1;
assign videooutsoc_sdram_dfi_p1_cs_n = 1'd0;
assign videooutsoc_sdram_dfi_p1_odt = 1'd1;
assign videooutsoc_sdram_dfi_p1_reset_n = 1'd1;
assign videooutsoc_sdram_dfi_p2_cke = 1'd1;
assign videooutsoc_sdram_dfi_p2_cs_n = 1'd0;
assign videooutsoc_sdram_dfi_p2_odt = 1'd1;
assign videooutsoc_sdram_dfi_p2_reset_n = 1'd1;
assign videooutsoc_sdram_dfi_p3_cke = 1'd1;
assign videooutsoc_sdram_dfi_p3_cs_n = 1'd0;
assign videooutsoc_sdram_dfi_p3_odt = 1'd1;
assign videooutsoc_sdram_dfi_p3_reset_n = 1'd1;
always @(*) begin
	videooutsoc_sdram_sel3 <= 2'd0;
	videooutsoc_sdram_choose_req_want_reads <= 1'd0;
	videooutsoc_sdram_choose_req_want_writes <= 1'd0;
	videooutsoc_sdram_en1 <= 1'd0;
	videooutsoc_sdram_choose_req_cmd_ready <= 1'd0;
	multiplexer_next_state <= 4'd0;
	videooutsoc_sdram_cmd_ready <= 1'd0;
	videooutsoc_sdram_sel0 <= 2'd0;
	videooutsoc_sdram_choose_cmd_cmd_ready <= 1'd0;
	videooutsoc_sdram_sel1 <= 2'd0;
	videooutsoc_sdram_sel2 <= 2'd0;
	videooutsoc_sdram_en0 <= 1'd0;
	multiplexer_next_state <= multiplexer_state;
	case (multiplexer_state)
		1'd1: begin
			videooutsoc_sdram_en1 <= 1'd1;
			videooutsoc_sdram_choose_req_want_writes <= 1'd1;
			videooutsoc_sdram_choose_cmd_cmd_ready <= 1'd1;
			videooutsoc_sdram_choose_req_cmd_ready <= 1'd1;
			videooutsoc_sdram_sel0 <= 1'd1;
			videooutsoc_sdram_sel1 <= 1'd0;
			videooutsoc_sdram_sel2 <= 2'd2;
			videooutsoc_sdram_sel3 <= 1'd0;
			if (videooutsoc_sdram_read_available) begin
				if (((~videooutsoc_sdram_write_available) | videooutsoc_sdram_max_time1)) begin
					multiplexer_next_state <= 4'd8;
				end
			end
			if (videooutsoc_sdram_go_to_refresh) begin
				multiplexer_next_state <= 2'd2;
			end
		end
		2'd2: begin
			videooutsoc_sdram_sel0 <= 2'd3;
			videooutsoc_sdram_cmd_ready <= 1'd1;
			if (videooutsoc_sdram_cmd_last) begin
				multiplexer_next_state <= 1'd0;
			end
		end
		2'd3: begin
			multiplexer_next_state <= 3'd4;
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
			multiplexer_next_state <= 1'd1;
		end
		4'd8: begin
			multiplexer_next_state <= 4'd9;
		end
		4'd9: begin
			multiplexer_next_state <= 1'd0;
		end
		default: begin
			videooutsoc_sdram_en0 <= 1'd1;
			videooutsoc_sdram_choose_req_want_reads <= 1'd1;
			videooutsoc_sdram_choose_cmd_cmd_ready <= 1'd1;
			videooutsoc_sdram_choose_req_cmd_ready <= 1'd1;
			videooutsoc_sdram_sel0 <= 2'd2;
			videooutsoc_sdram_sel1 <= 1'd1;
			videooutsoc_sdram_sel2 <= 1'd0;
			videooutsoc_sdram_sel3 <= 1'd0;
			if (videooutsoc_sdram_write_available) begin
				if (((~videooutsoc_sdram_read_available) | videooutsoc_sdram_max_time0)) begin
					multiplexer_next_state <= 2'd3;
				end
			end
			if (videooutsoc_sdram_go_to_refresh) begin
				multiplexer_next_state <= 2'd2;
			end
		end
	endcase
end
assign cba0 = videooutsoc_port_cmd_payload_adr[9:7];
assign rca0 = {videooutsoc_port_cmd_payload_adr[23:10], videooutsoc_port_cmd_payload_adr[6:0]};
assign cba1 = cmd_payload_adr[9:7];
assign rca1 = {cmd_payload_adr[23:10], cmd_payload_adr[6:0]};
assign roundrobin0_request = {(((cba1 == 1'd0) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & cmd_valid), (((cba0 == 1'd0) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & videooutsoc_port_cmd_valid)};
assign roundrobin0_ce = ((~videooutsoc_sdram_interface_bank0_valid) & (~videooutsoc_sdram_interface_bank0_lock));
assign videooutsoc_sdram_interface_bank0_adr = comb_rhs_array_muxed12;
assign videooutsoc_sdram_interface_bank0_we = comb_rhs_array_muxed13;
assign videooutsoc_sdram_interface_bank0_valid = comb_rhs_array_muxed14;
assign roundrobin1_request = {(((cba1 == 1'd1) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & cmd_valid), (((cba0 == 1'd1) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & videooutsoc_port_cmd_valid)};
assign roundrobin1_ce = ((~videooutsoc_sdram_interface_bank1_valid) & (~videooutsoc_sdram_interface_bank1_lock));
assign videooutsoc_sdram_interface_bank1_adr = comb_rhs_array_muxed15;
assign videooutsoc_sdram_interface_bank1_we = comb_rhs_array_muxed16;
assign videooutsoc_sdram_interface_bank1_valid = comb_rhs_array_muxed17;
assign roundrobin2_request = {(((cba1 == 2'd2) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & cmd_valid), (((cba0 == 2'd2) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & videooutsoc_port_cmd_valid)};
assign roundrobin2_ce = ((~videooutsoc_sdram_interface_bank2_valid) & (~videooutsoc_sdram_interface_bank2_lock));
assign videooutsoc_sdram_interface_bank2_adr = comb_rhs_array_muxed18;
assign videooutsoc_sdram_interface_bank2_we = comb_rhs_array_muxed19;
assign videooutsoc_sdram_interface_bank2_valid = comb_rhs_array_muxed20;
assign roundrobin3_request = {(((cba1 == 2'd3) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & cmd_valid), (((cba0 == 2'd3) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & videooutsoc_port_cmd_valid)};
assign roundrobin3_ce = ((~videooutsoc_sdram_interface_bank3_valid) & (~videooutsoc_sdram_interface_bank3_lock));
assign videooutsoc_sdram_interface_bank3_adr = comb_rhs_array_muxed21;
assign videooutsoc_sdram_interface_bank3_we = comb_rhs_array_muxed22;
assign videooutsoc_sdram_interface_bank3_valid = comb_rhs_array_muxed23;
assign roundrobin4_request = {(((cba1 == 3'd4) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & cmd_valid), (((cba0 == 3'd4) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & videooutsoc_port_cmd_valid)};
assign roundrobin4_ce = ((~videooutsoc_sdram_interface_bank4_valid) & (~videooutsoc_sdram_interface_bank4_lock));
assign videooutsoc_sdram_interface_bank4_adr = comb_rhs_array_muxed24;
assign videooutsoc_sdram_interface_bank4_we = comb_rhs_array_muxed25;
assign videooutsoc_sdram_interface_bank4_valid = comb_rhs_array_muxed26;
assign roundrobin5_request = {(((cba1 == 3'd5) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & cmd_valid), (((cba0 == 3'd5) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & videooutsoc_port_cmd_valid)};
assign roundrobin5_ce = ((~videooutsoc_sdram_interface_bank5_valid) & (~videooutsoc_sdram_interface_bank5_lock));
assign videooutsoc_sdram_interface_bank5_adr = comb_rhs_array_muxed27;
assign videooutsoc_sdram_interface_bank5_we = comb_rhs_array_muxed28;
assign videooutsoc_sdram_interface_bank5_valid = comb_rhs_array_muxed29;
assign roundrobin6_request = {(((cba1 == 3'd6) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & cmd_valid), (((cba0 == 3'd6) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & videooutsoc_port_cmd_valid)};
assign roundrobin6_ce = ((~videooutsoc_sdram_interface_bank6_valid) & (~videooutsoc_sdram_interface_bank6_lock));
assign videooutsoc_sdram_interface_bank6_adr = comb_rhs_array_muxed30;
assign videooutsoc_sdram_interface_bank6_we = comb_rhs_array_muxed31;
assign videooutsoc_sdram_interface_bank6_valid = comb_rhs_array_muxed32;
assign roundrobin7_request = {(((cba1 == 3'd7) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd1))))) & cmd_valid), (((cba0 == 3'd7) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))))) & videooutsoc_port_cmd_valid)};
assign roundrobin7_ce = ((~videooutsoc_sdram_interface_bank7_valid) & (~videooutsoc_sdram_interface_bank7_lock));
assign videooutsoc_sdram_interface_bank7_adr = comb_rhs_array_muxed33;
assign videooutsoc_sdram_interface_bank7_we = comb_rhs_array_muxed34;
assign videooutsoc_sdram_interface_bank7_valid = comb_rhs_array_muxed35;
assign videooutsoc_port_cmd_ready = ((((((((1'd0 | (((roundrobin0_grant == 1'd0) & ((cba0 == 1'd0) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & videooutsoc_sdram_interface_bank0_ready)) | (((roundrobin1_grant == 1'd0) & ((cba0 == 1'd1) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & videooutsoc_sdram_interface_bank1_ready)) | (((roundrobin2_grant == 1'd0) & ((cba0 == 2'd2) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & videooutsoc_sdram_interface_bank2_ready)) | (((roundrobin3_grant == 1'd0) & ((cba0 == 2'd3) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & videooutsoc_sdram_interface_bank3_ready)) | (((roundrobin4_grant == 1'd0) & ((cba0 == 3'd4) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & videooutsoc_sdram_interface_bank4_ready)) | (((roundrobin5_grant == 1'd0) & ((cba0 == 3'd5) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & videooutsoc_sdram_interface_bank5_ready)) | (((roundrobin6_grant == 1'd0) & ((cba0 == 3'd6) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & videooutsoc_sdram_interface_bank6_ready)) | (((roundrobin7_grant == 1'd0) & ((cba0 == 3'd7) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0)))))) & videooutsoc_sdram_interface_bank7_ready));
assign cmd_ready = ((((((((1'd0 | (((roundrobin0_grant == 1'd1) & ((cba1 == 1'd0) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd1)))))) & videooutsoc_sdram_interface_bank0_ready)) | (((roundrobin1_grant == 1'd1) & ((cba1 == 1'd1) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd1)))))) & videooutsoc_sdram_interface_bank1_ready)) | (((roundrobin2_grant == 1'd1) & ((cba1 == 2'd2) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd1)))))) & videooutsoc_sdram_interface_bank2_ready)) | (((roundrobin3_grant == 1'd1) & ((cba1 == 2'd3) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd1)))))) & videooutsoc_sdram_interface_bank3_ready)) | (((roundrobin4_grant == 1'd1) & ((cba1 == 3'd4) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd1)))))) & videooutsoc_sdram_interface_bank4_ready)) | (((roundrobin5_grant == 1'd1) & ((cba1 == 3'd5) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd1)))))) & videooutsoc_sdram_interface_bank5_ready)) | (((roundrobin6_grant == 1'd1) & ((cba1 == 3'd6) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd1)))))) & videooutsoc_sdram_interface_bank6_ready)) | (((roundrobin7_grant == 1'd1) & ((cba1 == 3'd7) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd1)))))) & videooutsoc_sdram_interface_bank7_ready));
assign videooutsoc_port_wdata_ready = new_master_wdata_ready2;
assign wdata_ready = new_master_wdata_ready5;
assign videooutsoc_port_rdata_valid = new_master_rdata_valid6;
assign rdata_valid = new_master_rdata_valid13;
always @(*) begin
	videooutsoc_sdram_interface_wdata_we <= 32'd0;
	videooutsoc_sdram_interface_wdata <= 256'd0;
	case ({new_master_wdata_ready5, new_master_wdata_ready2})
		1'd1: begin
			videooutsoc_sdram_interface_wdata <= videooutsoc_port_wdata_payload_data;
			videooutsoc_sdram_interface_wdata_we <= videooutsoc_port_wdata_payload_we;
		end
		2'd2: begin
			videooutsoc_sdram_interface_wdata <= wdata_payload_data;
			videooutsoc_sdram_interface_wdata_we <= wdata_payload_we;
		end
		default: begin
			videooutsoc_sdram_interface_wdata <= 1'd0;
			videooutsoc_sdram_interface_wdata_we <= 1'd0;
		end
	endcase
end
assign videooutsoc_port_rdata_payload_data = videooutsoc_sdram_interface_rdata;
assign rdata_payload_data = videooutsoc_sdram_interface_rdata;
assign cmd_fifo_asyncfifo_din = {cmd_fifo_fifo_in_last, cmd_fifo_fifo_in_first, cmd_fifo_fifo_in_payload_adr, cmd_fifo_fifo_in_payload_we};
assign {cmd_fifo_fifo_out_last, cmd_fifo_fifo_out_first, cmd_fifo_fifo_out_payload_adr, cmd_fifo_fifo_out_payload_we} = cmd_fifo_asyncfifo_dout;
assign cmd_fifo_sink_ready = cmd_fifo_asyncfifo_writable;
assign cmd_fifo_asyncfifo_we = cmd_fifo_sink_valid;
assign cmd_fifo_fifo_in_first = cmd_fifo_sink_first;
assign cmd_fifo_fifo_in_last = cmd_fifo_sink_last;
assign cmd_fifo_fifo_in_payload_we = cmd_fifo_sink_payload_we;
assign cmd_fifo_fifo_in_payload_adr = cmd_fifo_sink_payload_adr;
assign cmd_fifo_source_valid = cmd_fifo_asyncfifo_readable;
assign cmd_fifo_source_first = cmd_fifo_fifo_out_first;
assign cmd_fifo_source_last = cmd_fifo_fifo_out_last;
assign cmd_fifo_source_payload_we = cmd_fifo_fifo_out_payload_we;
assign cmd_fifo_source_payload_adr = cmd_fifo_fifo_out_payload_adr;
assign cmd_fifo_asyncfifo_re = cmd_fifo_source_ready;
assign cmd_fifo_graycounter0_ce = (cmd_fifo_asyncfifo_writable & cmd_fifo_asyncfifo_we);
assign cmd_fifo_graycounter1_ce = (cmd_fifo_asyncfifo_readable & cmd_fifo_asyncfifo_re);
assign cmd_fifo_asyncfifo_writable = (((cmd_fifo_graycounter0_q[2] == cmd_fifo_consume_wdomain[2]) | (cmd_fifo_graycounter0_q[1] == cmd_fifo_consume_wdomain[1])) | (cmd_fifo_graycounter0_q[0] != cmd_fifo_consume_wdomain[0]));
assign cmd_fifo_asyncfifo_readable = (cmd_fifo_graycounter1_q != cmd_fifo_produce_rdomain);
assign cmd_fifo_wrport_adr = cmd_fifo_graycounter0_q_binary[1:0];
assign cmd_fifo_wrport_dat_w = cmd_fifo_asyncfifo_din;
assign cmd_fifo_wrport_we = cmd_fifo_graycounter0_ce;
assign cmd_fifo_rdport_adr = cmd_fifo_graycounter1_q_next_binary[1:0];
assign cmd_fifo_asyncfifo_dout = cmd_fifo_rdport_dat_r;
always @(*) begin
	cmd_fifo_graycounter0_q_next_binary <= 3'd0;
	if (cmd_fifo_graycounter0_ce) begin
		cmd_fifo_graycounter0_q_next_binary <= (cmd_fifo_graycounter0_q_binary + 1'd1);
	end else begin
		cmd_fifo_graycounter0_q_next_binary <= cmd_fifo_graycounter0_q_binary;
	end
end
assign cmd_fifo_graycounter0_q_next = (cmd_fifo_graycounter0_q_next_binary ^ cmd_fifo_graycounter0_q_next_binary[2:1]);
always @(*) begin
	cmd_fifo_graycounter1_q_next_binary <= 3'd0;
	if (cmd_fifo_graycounter1_ce) begin
		cmd_fifo_graycounter1_q_next_binary <= (cmd_fifo_graycounter1_q_binary + 1'd1);
	end else begin
		cmd_fifo_graycounter1_q_next_binary <= cmd_fifo_graycounter1_q_binary;
	end
end
assign cmd_fifo_graycounter1_q_next = (cmd_fifo_graycounter1_q_next_binary ^ cmd_fifo_graycounter1_q_next_binary[2:1]);
assign cmd_fifo_sink_valid = litedramport0_cmd_valid;
assign litedramport0_cmd_ready = cmd_fifo_sink_ready;
assign cmd_fifo_sink_first = litedramport0_cmd_first;
assign cmd_fifo_sink_last = litedramport0_cmd_last;
assign cmd_fifo_sink_payload_we = litedramport0_cmd_payload_we;
assign cmd_fifo_sink_payload_adr = litedramport0_cmd_payload_adr;
assign cmd_valid = cmd_fifo_source_valid;
assign cmd_fifo_source_ready = cmd_ready;
assign cmd_first = cmd_fifo_source_first;
assign cmd_last = cmd_fifo_source_last;
assign cmd_payload_we = cmd_fifo_source_payload_we;
assign cmd_payload_adr = cmd_fifo_source_payload_adr;
assign rdata_fifo_asyncfifo_din = {rdata_fifo_fifo_in_last, rdata_fifo_fifo_in_first, rdata_fifo_fifo_in_payload_data};
assign {rdata_fifo_fifo_out_last, rdata_fifo_fifo_out_first, rdata_fifo_fifo_out_payload_data} = rdata_fifo_asyncfifo_dout;
assign rdata_fifo_sink_ready = rdata_fifo_asyncfifo_writable;
assign rdata_fifo_asyncfifo_we = rdata_fifo_sink_valid;
assign rdata_fifo_fifo_in_first = rdata_fifo_sink_first;
assign rdata_fifo_fifo_in_last = rdata_fifo_sink_last;
assign rdata_fifo_fifo_in_payload_data = rdata_fifo_sink_payload_data;
assign rdata_fifo_source_valid = rdata_fifo_asyncfifo_readable;
assign rdata_fifo_source_first = rdata_fifo_fifo_out_first;
assign rdata_fifo_source_last = rdata_fifo_fifo_out_last;
assign rdata_fifo_source_payload_data = rdata_fifo_fifo_out_payload_data;
assign rdata_fifo_asyncfifo_re = rdata_fifo_source_ready;
assign rdata_fifo_graycounter0_ce = (rdata_fifo_asyncfifo_writable & rdata_fifo_asyncfifo_we);
assign rdata_fifo_graycounter1_ce = (rdata_fifo_asyncfifo_readable & rdata_fifo_asyncfifo_re);
assign rdata_fifo_asyncfifo_writable = (((rdata_fifo_graycounter0_q[4] == rdata_fifo_consume_wdomain[4]) | (rdata_fifo_graycounter0_q[3] == rdata_fifo_consume_wdomain[3])) | (rdata_fifo_graycounter0_q[2:0] != rdata_fifo_consume_wdomain[2:0]));
assign rdata_fifo_asyncfifo_readable = (rdata_fifo_graycounter1_q != rdata_fifo_produce_rdomain);
assign rdata_fifo_wrport_adr = rdata_fifo_graycounter0_q_binary[3:0];
assign rdata_fifo_wrport_dat_w = rdata_fifo_asyncfifo_din;
assign rdata_fifo_wrport_we = rdata_fifo_graycounter0_ce;
assign rdata_fifo_rdport_adr = rdata_fifo_graycounter1_q_next_binary[3:0];
assign rdata_fifo_asyncfifo_dout = rdata_fifo_rdport_dat_r;
always @(*) begin
	rdata_fifo_graycounter0_q_next_binary <= 5'd0;
	if (rdata_fifo_graycounter0_ce) begin
		rdata_fifo_graycounter0_q_next_binary <= (rdata_fifo_graycounter0_q_binary + 1'd1);
	end else begin
		rdata_fifo_graycounter0_q_next_binary <= rdata_fifo_graycounter0_q_binary;
	end
end
assign rdata_fifo_graycounter0_q_next = (rdata_fifo_graycounter0_q_next_binary ^ rdata_fifo_graycounter0_q_next_binary[4:1]);
always @(*) begin
	rdata_fifo_graycounter1_q_next_binary <= 5'd0;
	if (rdata_fifo_graycounter1_ce) begin
		rdata_fifo_graycounter1_q_next_binary <= (rdata_fifo_graycounter1_q_binary + 1'd1);
	end else begin
		rdata_fifo_graycounter1_q_next_binary <= rdata_fifo_graycounter1_q_binary;
	end
end
assign rdata_fifo_graycounter1_q_next = (rdata_fifo_graycounter1_q_next_binary ^ rdata_fifo_graycounter1_q_next_binary[4:1]);
assign rdata_fifo_sink_valid = rdata_valid;
assign rdata_ready = rdata_fifo_sink_ready;
assign rdata_fifo_sink_first = rdata_first;
assign rdata_fifo_sink_last = rdata_last;
assign rdata_fifo_sink_payload_data = rdata_payload_data;
assign litedramport0_rdata_valid = rdata_fifo_source_valid;
assign rdata_fifo_source_ready = litedramport0_rdata_ready;
assign litedramport0_rdata_first = rdata_fifo_source_first;
assign litedramport0_rdata_last = rdata_fifo_source_last;
assign litedramport0_rdata_payload_data = rdata_fifo_source_payload_data;
always @(*) begin
	litedramport0_cmd_payload_adr <= 24'd0;
	litedramport1_cmd_ready <= 1'd0;
	counter_ce <= 1'd0;
	litedramport0_cmd_valid <= 1'd0;
	if (litedramport1_cmd_valid) begin
		if ((counter == 1'd0)) begin
			litedramport0_cmd_valid <= 1'd1;
			litedramport0_cmd_payload_adr <= litedramport1_cmd_payload_adr[27:4];
			litedramport1_cmd_ready <= litedramport0_cmd_ready;
			counter_ce <= litedramport0_cmd_ready;
		end else begin
			litedramport1_cmd_ready <= 1'd1;
			counter_ce <= 1'd1;
		end
	end
end
always @(*) begin
	cmd_buffer_sink_valid <= 1'd0;
	cmd_buffer_sink_payload_sel <= 16'd0;
	if ((litedramport0_cmd_valid & litedramport0_cmd_ready)) begin
		cmd_buffer_sink_valid <= 1'd1;
		cmd_buffer_sink_payload_sel <= 16'd65535;
	end
end
assign rdata_buffer_sink_valid = litedramport0_rdata_valid;
assign litedramport0_rdata_ready = rdata_buffer_sink_ready;
assign rdata_buffer_sink_first = litedramport0_rdata_first;
assign rdata_buffer_sink_last = litedramport0_rdata_last;
assign rdata_buffer_sink_payload_data = litedramport0_rdata_payload_data;
assign rdata_converter_sink_valid = rdata_buffer_source_valid;
assign rdata_buffer_source_ready = rdata_converter_sink_ready;
assign rdata_converter_sink_first = rdata_buffer_source_first;
assign rdata_converter_sink_last = rdata_buffer_source_last;
assign rdata_converter_sink_payload_data = rdata_buffer_source_payload_data;
assign rdata_chunk_valid = ((cmd_buffer_source_payload_sel & rdata_chunk) != 1'd0);
always @(*) begin
	rdata_converter_source_ready <= 1'd0;
	litedramport1_rdata_valid <= 1'd0;
	litedramport1_rdata_payload_data <= 16'd0;
	if (litedramport1_flush) begin
		rdata_converter_source_ready <= 1'd1;
	end else begin
		if (cmd_buffer_source_valid) begin
			if (rdata_chunk_valid) begin
				litedramport1_rdata_valid <= rdata_converter_source_valid;
				litedramport1_rdata_payload_data <= rdata_converter_source_payload_data;
				rdata_converter_source_ready <= litedramport1_rdata_ready;
			end else begin
				rdata_converter_source_ready <= 1'd1;
			end
		end
	end
end
assign cmd_buffer_source_ready = (rdata_converter_source_ready & rdata_chunk[15]);
assign cmd_buffer_syncfifo_din = {cmd_buffer_fifo_in_last, cmd_buffer_fifo_in_first, cmd_buffer_fifo_in_payload_sel};
assign {cmd_buffer_fifo_out_last, cmd_buffer_fifo_out_first, cmd_buffer_fifo_out_payload_sel} = cmd_buffer_syncfifo_dout;
assign cmd_buffer_sink_ready = cmd_buffer_syncfifo_writable;
assign cmd_buffer_syncfifo_we = cmd_buffer_sink_valid;
assign cmd_buffer_fifo_in_first = cmd_buffer_sink_first;
assign cmd_buffer_fifo_in_last = cmd_buffer_sink_last;
assign cmd_buffer_fifo_in_payload_sel = cmd_buffer_sink_payload_sel;
assign cmd_buffer_source_valid = cmd_buffer_syncfifo_readable;
assign cmd_buffer_source_first = cmd_buffer_fifo_out_first;
assign cmd_buffer_source_last = cmd_buffer_fifo_out_last;
assign cmd_buffer_source_payload_sel = cmd_buffer_fifo_out_payload_sel;
assign cmd_buffer_syncfifo_re = cmd_buffer_source_ready;
always @(*) begin
	cmd_buffer_wrport_adr <= 2'd0;
	if (cmd_buffer_replace) begin
		cmd_buffer_wrport_adr <= (cmd_buffer_produce - 1'd1);
	end else begin
		cmd_buffer_wrport_adr <= cmd_buffer_produce;
	end
end
assign cmd_buffer_wrport_dat_w = cmd_buffer_syncfifo_din;
assign cmd_buffer_wrport_we = (cmd_buffer_syncfifo_we & (cmd_buffer_syncfifo_writable | cmd_buffer_replace));
assign cmd_buffer_do_read = (cmd_buffer_syncfifo_readable & cmd_buffer_syncfifo_re);
assign cmd_buffer_rdport_adr = cmd_buffer_consume;
assign cmd_buffer_syncfifo_dout = cmd_buffer_rdport_dat_r;
assign cmd_buffer_syncfifo_writable = (cmd_buffer_level != 3'd4);
assign cmd_buffer_syncfifo_readable = (cmd_buffer_level != 1'd0);
assign rdata_buffer_pipe_ce = (rdata_buffer_source_ready | (~rdata_buffer_valid_n));
assign rdata_buffer_sink_ready = rdata_buffer_pipe_ce;
assign rdata_buffer_source_valid = rdata_buffer_valid_n;
assign rdata_buffer_busy = (1'd0 | rdata_buffer_valid_n);
assign rdata_buffer_source_first = rdata_buffer_first_n;
assign rdata_buffer_source_last = rdata_buffer_last_n;
assign rdata_converter_converter_sink_valid = rdata_converter_sink_valid;
assign rdata_converter_converter_sink_first = rdata_converter_sink_first;
assign rdata_converter_converter_sink_last = rdata_converter_sink_last;
assign rdata_converter_sink_ready = rdata_converter_converter_sink_ready;
always @(*) begin
	rdata_converter_converter_sink_payload_data <= 256'd0;
	rdata_converter_converter_sink_payload_data[15:0] <= rdata_converter_sink_payload_data[15:0];
	rdata_converter_converter_sink_payload_data[31:16] <= rdata_converter_sink_payload_data[31:16];
	rdata_converter_converter_sink_payload_data[47:32] <= rdata_converter_sink_payload_data[47:32];
	rdata_converter_converter_sink_payload_data[63:48] <= rdata_converter_sink_payload_data[63:48];
	rdata_converter_converter_sink_payload_data[79:64] <= rdata_converter_sink_payload_data[79:64];
	rdata_converter_converter_sink_payload_data[95:80] <= rdata_converter_sink_payload_data[95:80];
	rdata_converter_converter_sink_payload_data[111:96] <= rdata_converter_sink_payload_data[111:96];
	rdata_converter_converter_sink_payload_data[127:112] <= rdata_converter_sink_payload_data[127:112];
	rdata_converter_converter_sink_payload_data[143:128] <= rdata_converter_sink_payload_data[143:128];
	rdata_converter_converter_sink_payload_data[159:144] <= rdata_converter_sink_payload_data[159:144];
	rdata_converter_converter_sink_payload_data[175:160] <= rdata_converter_sink_payload_data[175:160];
	rdata_converter_converter_sink_payload_data[191:176] <= rdata_converter_sink_payload_data[191:176];
	rdata_converter_converter_sink_payload_data[207:192] <= rdata_converter_sink_payload_data[207:192];
	rdata_converter_converter_sink_payload_data[223:208] <= rdata_converter_sink_payload_data[223:208];
	rdata_converter_converter_sink_payload_data[239:224] <= rdata_converter_sink_payload_data[239:224];
	rdata_converter_converter_sink_payload_data[255:240] <= rdata_converter_sink_payload_data[255:240];
end
assign rdata_converter_source_valid = rdata_converter_source_source_valid;
assign rdata_converter_source_first = rdata_converter_source_source_first;
assign rdata_converter_source_last = rdata_converter_source_source_last;
assign rdata_converter_source_source_ready = rdata_converter_source_ready;
assign {rdata_converter_source_payload_data} = rdata_converter_source_source_payload_data;
assign rdata_converter_source_source_valid = rdata_converter_converter_source_valid;
assign rdata_converter_converter_source_ready = rdata_converter_source_source_ready;
assign rdata_converter_source_source_first = rdata_converter_converter_source_first;
assign rdata_converter_source_source_last = rdata_converter_converter_source_last;
assign rdata_converter_source_source_payload_data = rdata_converter_converter_source_payload_data;
assign rdata_converter_converter_first = (rdata_converter_converter_mux == 1'd0);
assign rdata_converter_converter_last = (rdata_converter_converter_mux == 4'd15);
assign rdata_converter_converter_source_valid = rdata_converter_converter_sink_valid;
assign rdata_converter_converter_source_first = (rdata_converter_converter_sink_first & rdata_converter_converter_first);
assign rdata_converter_converter_source_last = (rdata_converter_converter_sink_last & rdata_converter_converter_last);
assign rdata_converter_converter_sink_ready = (rdata_converter_converter_last & rdata_converter_converter_source_ready);
always @(*) begin
	rdata_converter_converter_source_payload_data <= 16'd0;
	case (rdata_converter_converter_mux)
		1'd0: begin
			rdata_converter_converter_source_payload_data <= rdata_converter_converter_sink_payload_data[255:240];
		end
		1'd1: begin
			rdata_converter_converter_source_payload_data <= rdata_converter_converter_sink_payload_data[239:224];
		end
		2'd2: begin
			rdata_converter_converter_source_payload_data <= rdata_converter_converter_sink_payload_data[223:208];
		end
		2'd3: begin
			rdata_converter_converter_source_payload_data <= rdata_converter_converter_sink_payload_data[207:192];
		end
		3'd4: begin
			rdata_converter_converter_source_payload_data <= rdata_converter_converter_sink_payload_data[191:176];
		end
		3'd5: begin
			rdata_converter_converter_source_payload_data <= rdata_converter_converter_sink_payload_data[175:160];
		end
		3'd6: begin
			rdata_converter_converter_source_payload_data <= rdata_converter_converter_sink_payload_data[159:144];
		end
		3'd7: begin
			rdata_converter_converter_source_payload_data <= rdata_converter_converter_sink_payload_data[143:128];
		end
		4'd8: begin
			rdata_converter_converter_source_payload_data <= rdata_converter_converter_sink_payload_data[127:112];
		end
		4'd9: begin
			rdata_converter_converter_source_payload_data <= rdata_converter_converter_sink_payload_data[111:96];
		end
		4'd10: begin
			rdata_converter_converter_source_payload_data <= rdata_converter_converter_sink_payload_data[95:80];
		end
		4'd11: begin
			rdata_converter_converter_source_payload_data <= rdata_converter_converter_sink_payload_data[79:64];
		end
		4'd12: begin
			rdata_converter_converter_source_payload_data <= rdata_converter_converter_sink_payload_data[63:48];
		end
		4'd13: begin
			rdata_converter_converter_source_payload_data <= rdata_converter_converter_sink_payload_data[47:32];
		end
		4'd14: begin
			rdata_converter_converter_source_payload_data <= rdata_converter_converter_sink_payload_data[31:16];
		end
		default: begin
			rdata_converter_converter_source_payload_data <= rdata_converter_converter_sink_payload_data[15:0];
		end
	endcase
end
assign rdata_converter_converter_source_payload_valid_token_count = rdata_converter_converter_last;
assign videooutsoc_data_port_adr = videooutsoc_interface0_wb_sdram_adr[10:3];
always @(*) begin
	videooutsoc_data_port_we <= 32'd0;
	videooutsoc_data_port_dat_w <= 256'd0;
	if (videooutsoc_write_from_slave) begin
		videooutsoc_data_port_dat_w <= videooutsoc_interface_dat_r;
		videooutsoc_data_port_we <= {32{1'd1}};
	end else begin
		videooutsoc_data_port_dat_w <= {8{videooutsoc_interface0_wb_sdram_dat_w}};
		if ((((videooutsoc_interface0_wb_sdram_cyc & videooutsoc_interface0_wb_sdram_stb) & videooutsoc_interface0_wb_sdram_we) & videooutsoc_interface0_wb_sdram_ack)) begin
			videooutsoc_data_port_we <= {({4{(videooutsoc_interface0_wb_sdram_adr[2:0] == 1'd0)}} & videooutsoc_interface0_wb_sdram_sel), ({4{(videooutsoc_interface0_wb_sdram_adr[2:0] == 1'd1)}} & videooutsoc_interface0_wb_sdram_sel), ({4{(videooutsoc_interface0_wb_sdram_adr[2:0] == 2'd2)}} & videooutsoc_interface0_wb_sdram_sel), ({4{(videooutsoc_interface0_wb_sdram_adr[2:0] == 2'd3)}} & videooutsoc_interface0_wb_sdram_sel), ({4{(videooutsoc_interface0_wb_sdram_adr[2:0] == 3'd4)}} & videooutsoc_interface0_wb_sdram_sel), ({4{(videooutsoc_interface0_wb_sdram_adr[2:0] == 3'd5)}} & videooutsoc_interface0_wb_sdram_sel), ({4{(videooutsoc_interface0_wb_sdram_adr[2:0] == 3'd6)}} & videooutsoc_interface0_wb_sdram_sel), ({4{(videooutsoc_interface0_wb_sdram_adr[2:0] == 3'd7)}} & videooutsoc_interface0_wb_sdram_sel)};
		end
	end
end
assign videooutsoc_interface_dat_w = videooutsoc_data_port_dat_r;
assign videooutsoc_interface_sel = 32'd4294967295;
always @(*) begin
	videooutsoc_interface0_wb_sdram_dat_r <= 32'd0;
	case (videooutsoc_adr_offset_r)
		1'd0: begin
			videooutsoc_interface0_wb_sdram_dat_r <= videooutsoc_data_port_dat_r[255:224];
		end
		1'd1: begin
			videooutsoc_interface0_wb_sdram_dat_r <= videooutsoc_data_port_dat_r[223:192];
		end
		2'd2: begin
			videooutsoc_interface0_wb_sdram_dat_r <= videooutsoc_data_port_dat_r[191:160];
		end
		2'd3: begin
			videooutsoc_interface0_wb_sdram_dat_r <= videooutsoc_data_port_dat_r[159:128];
		end
		3'd4: begin
			videooutsoc_interface0_wb_sdram_dat_r <= videooutsoc_data_port_dat_r[127:96];
		end
		3'd5: begin
			videooutsoc_interface0_wb_sdram_dat_r <= videooutsoc_data_port_dat_r[95:64];
		end
		3'd6: begin
			videooutsoc_interface0_wb_sdram_dat_r <= videooutsoc_data_port_dat_r[63:32];
		end
		default: begin
			videooutsoc_interface0_wb_sdram_dat_r <= videooutsoc_data_port_dat_r[31:0];
		end
	endcase
end
assign {videooutsoc_tag_do_dirty, videooutsoc_tag_do_tag} = videooutsoc_tag_port_dat_r;
assign videooutsoc_tag_port_dat_w = {videooutsoc_tag_di_dirty, videooutsoc_tag_di_tag};
assign videooutsoc_tag_port_adr = videooutsoc_interface0_wb_sdram_adr[10:3];
assign videooutsoc_tag_di_tag = videooutsoc_interface0_wb_sdram_adr[29:11];
assign videooutsoc_interface_adr = {videooutsoc_tag_do_tag, videooutsoc_interface0_wb_sdram_adr[10:3]};
always @(*) begin
	fullmemorywe_next_state <= 3'd0;
	videooutsoc_write_from_slave <= 1'd0;
	videooutsoc_tag_port_we <= 1'd0;
	videooutsoc_interface_cyc <= 1'd0;
	videooutsoc_interface_stb <= 1'd0;
	videooutsoc_interface0_wb_sdram_ack <= 1'd0;
	videooutsoc_interface_we <= 1'd0;
	videooutsoc_tag_di_dirty <= 1'd0;
	videooutsoc_word_clr <= 1'd0;
	videooutsoc_word_inc <= 1'd0;
	fullmemorywe_next_state <= fullmemorywe_state;
	case (fullmemorywe_state)
		1'd1: begin
			videooutsoc_word_clr <= 1'd1;
			if ((videooutsoc_tag_do_tag == videooutsoc_interface0_wb_sdram_adr[29:11])) begin
				videooutsoc_interface0_wb_sdram_ack <= 1'd1;
				if (videooutsoc_interface0_wb_sdram_we) begin
					videooutsoc_tag_di_dirty <= 1'd1;
					videooutsoc_tag_port_we <= 1'd1;
				end
				fullmemorywe_next_state <= 1'd0;
			end else begin
				if (videooutsoc_tag_do_dirty) begin
					fullmemorywe_next_state <= 2'd2;
				end else begin
					fullmemorywe_next_state <= 2'd3;
				end
			end
		end
		2'd2: begin
			videooutsoc_interface_stb <= 1'd1;
			videooutsoc_interface_cyc <= 1'd1;
			videooutsoc_interface_we <= 1'd1;
			if (videooutsoc_interface_ack) begin
				videooutsoc_word_inc <= 1'd1;
				if (1'd1) begin
					fullmemorywe_next_state <= 2'd3;
				end
			end
		end
		2'd3: begin
			videooutsoc_tag_port_we <= 1'd1;
			videooutsoc_word_clr <= 1'd1;
			fullmemorywe_next_state <= 3'd4;
		end
		3'd4: begin
			videooutsoc_interface_stb <= 1'd1;
			videooutsoc_interface_cyc <= 1'd1;
			videooutsoc_interface_we <= 1'd0;
			if (videooutsoc_interface_ack) begin
				videooutsoc_write_from_slave <= 1'd1;
				videooutsoc_word_inc <= 1'd1;
				if (1'd1) begin
					fullmemorywe_next_state <= 1'd1;
				end else begin
					fullmemorywe_next_state <= 3'd4;
				end
			end
		end
		default: begin
			if ((videooutsoc_interface0_wb_sdram_cyc & videooutsoc_interface0_wb_sdram_stb)) begin
				fullmemorywe_next_state <= 1'd1;
			end
		end
	endcase
end
assign videooutsoc_port_cmd_payload_adr = videooutsoc_interface_adr;
assign videooutsoc_port_wdata_payload_we = videooutsoc_interface_sel;
assign videooutsoc_port_wdata_payload_data = videooutsoc_interface_dat_w;
assign videooutsoc_interface_dat_r = videooutsoc_port_rdata_payload_data;
always @(*) begin
	litedramwishbonebridge_next_state <= 2'd0;
	videooutsoc_port_cmd_valid <= 1'd0;
	videooutsoc_interface_ack <= 1'd0;
	videooutsoc_port_cmd_payload_we <= 1'd0;
	videooutsoc_port_rdata_ready <= 1'd0;
	videooutsoc_port_wdata_valid <= 1'd0;
	litedramwishbonebridge_next_state <= litedramwishbonebridge_state;
	case (litedramwishbonebridge_state)
		1'd1: begin
			videooutsoc_port_cmd_valid <= 1'd1;
			videooutsoc_port_cmd_payload_we <= videooutsoc_interface_we;
			if (videooutsoc_port_cmd_ready) begin
				if (videooutsoc_interface_we) begin
					litedramwishbonebridge_next_state <= 2'd2;
				end else begin
					litedramwishbonebridge_next_state <= 2'd3;
				end
			end
		end
		2'd2: begin
			videooutsoc_port_wdata_valid <= 1'd1;
			if (videooutsoc_port_wdata_ready) begin
				videooutsoc_interface_ack <= 1'd1;
				litedramwishbonebridge_next_state <= 1'd0;
			end
		end
		2'd3: begin
			videooutsoc_port_rdata_ready <= 1'd1;
			if (videooutsoc_port_rdata_valid) begin
				videooutsoc_interface_ack <= 1'd1;
				litedramwishbonebridge_next_state <= 1'd0;
			end
		end
		default: begin
			if ((videooutsoc_interface_cyc & videooutsoc_interface_stb)) begin
				litedramwishbonebridge_next_state <= 1'd1;
			end
		end
	endcase
end
assign hdmi_out0_core_source_source_ready = 1'd1;
assign hdmi_out0_resetinserter_reset = (hdmi_out0_core_source_source_param_de & (~hdmi_out0_de_r));
assign hdmi_out0_resetinserter_sink_sink_valid = hdmi_out0_core_source_valid_d;
assign hdmi_out0_resetinserter_sink_sink_payload_y = hdmi_out0_core_source_data_d[7:0];
assign hdmi_out0_resetinserter_sink_sink_payload_cb_cr = hdmi_out0_core_source_data_d[15:8];
assign hdmi_out0_sink_valid = hdmi_out0_resetinserter_source_source_valid;
assign hdmi_out0_resetinserter_source_source_ready = hdmi_out0_sink_ready;
assign hdmi_out0_sink_first = hdmi_out0_resetinserter_source_source_first;
assign hdmi_out0_sink_last = hdmi_out0_resetinserter_source_source_last;
assign hdmi_out0_sink_payload_y = hdmi_out0_resetinserter_source_source_payload_y;
assign hdmi_out0_sink_payload_cb = hdmi_out0_resetinserter_source_source_payload_cb;
assign hdmi_out0_sink_payload_cr = hdmi_out0_resetinserter_source_source_payload_cr;
assign hdmi_out0_driver_sink_sink_valid = hdmi_out0_source_valid;
assign hdmi_out0_source_ready = hdmi_out0_driver_sink_sink_ready;
assign hdmi_out0_driver_sink_sink_first = hdmi_out0_source_first;
assign hdmi_out0_driver_sink_sink_last = hdmi_out0_source_last;
assign hdmi_out0_driver_sink_sink_payload_r = hdmi_out0_source_payload_r;
assign hdmi_out0_driver_sink_sink_payload_g = hdmi_out0_source_payload_g;
assign hdmi_out0_driver_sink_sink_payload_b = hdmi_out0_source_payload_b;
assign hdmi_out0_sink_payload_de = hdmi_out0_core_source_source_param_de;
assign hdmi_out0_sink_payload_vsync = hdmi_out0_core_source_source_param_vsync;
assign hdmi_out0_sink_payload_hsync = hdmi_out0_core_source_source_param_hsync;
assign hdmi_out0_driver_sink_sink_param_de = hdmi_out0_source_payload_de;
assign hdmi_out0_driver_sink_sink_param_vsync = hdmi_out0_source_payload_vsync;
assign hdmi_out0_driver_sink_sink_param_hsync = hdmi_out0_source_payload_hsync;
assign hdmi_out0_core_timinggenerator_sink_valid = hdmi_out0_core_initiator_source_source_valid;
assign hdmi_out0_core_dmareader_sink_valid = hdmi_out0_core_initiator_source_source_valid;
assign hdmi_out0_core_initiator_source_source_ready = hdmi_out0_core_timinggenerator_sink_ready;
assign hdmi_out0_core_source_source_valid = (hdmi_out0_core_timinggenerator_source_valid & ((~hdmi_out0_core_timinggenerator_source_payload_de) | hdmi_out0_core_dmareader_source_valid));
always @(*) begin
	hdmi_out0_core_timinggenerator_source_ready <= 1'd0;
	hdmi_out0_core_dmareader_source_ready <= 1'd0;
	if ((~hdmi_out0_core_initiator_source_source_valid)) begin
		hdmi_out0_core_timinggenerator_source_ready <= 1'd1;
		hdmi_out0_core_dmareader_source_ready <= 1'd1;
	end else begin
		if ((hdmi_out0_core_source_source_valid & hdmi_out0_core_source_source_ready)) begin
			hdmi_out0_core_timinggenerator_source_ready <= 1'd1;
			hdmi_out0_core_dmareader_source_ready <= hdmi_out0_core_timinggenerator_source_payload_de;
		end
	end
end
assign hdmi_out0_core_timinggenerator_sink_payload_hres = hdmi_out0_core_initiator_source_source_payload_hres;
assign hdmi_out0_core_timinggenerator_sink_payload_hsync_start = hdmi_out0_core_initiator_source_source_payload_hsync_start;
assign hdmi_out0_core_timinggenerator_sink_payload_hsync_end = hdmi_out0_core_initiator_source_source_payload_hsync_end;
assign hdmi_out0_core_timinggenerator_sink_payload_hscan = hdmi_out0_core_initiator_source_source_payload_hscan;
assign hdmi_out0_core_timinggenerator_sink_payload_vres = hdmi_out0_core_initiator_source_source_payload_vres;
assign hdmi_out0_core_timinggenerator_sink_payload_vsync_start = hdmi_out0_core_initiator_source_source_payload_vsync_start;
assign hdmi_out0_core_timinggenerator_sink_payload_vsync_end = hdmi_out0_core_initiator_source_source_payload_vsync_end;
assign hdmi_out0_core_timinggenerator_sink_payload_vscan = hdmi_out0_core_initiator_source_source_payload_vscan;
assign hdmi_out0_core_dmareader_sink_payload_base = hdmi_out0_core_initiator_source_source_payload_base;
assign hdmi_out0_core_dmareader_sink_payload_length = hdmi_out0_core_initiator_source_source_payload_length;
assign hdmi_out0_core_source_source_param_de = hdmi_out0_core_timinggenerator_source_payload_de;
assign hdmi_out0_core_source_source_param_hsync = hdmi_out0_core_timinggenerator_source_payload_hsync;
assign hdmi_out0_core_source_source_param_vsync = hdmi_out0_core_timinggenerator_source_payload_vsync;
assign hdmi_out0_core_source_source_payload_data = hdmi_out0_core_dmareader_source_payload_data;
assign hdmi_out0_core_i = hdmi_out0_core_underflow_update_underflow_update_re;
assign hdmi_out0_core_underflow_update = hdmi_out0_core_o;
assign hdmi_out0_core_initiator_cdc_sink_payload_hres = hdmi_out0_core_initiator_csrstorage0_storage;
assign hdmi_out0_core_initiator_cdc_sink_payload_hsync_start = hdmi_out0_core_initiator_csrstorage1_storage;
assign hdmi_out0_core_initiator_cdc_sink_payload_hsync_end = hdmi_out0_core_initiator_csrstorage2_storage;
assign hdmi_out0_core_initiator_cdc_sink_payload_hscan = hdmi_out0_core_initiator_csrstorage3_storage;
assign hdmi_out0_core_initiator_cdc_sink_payload_vres = hdmi_out0_core_initiator_csrstorage4_storage;
assign hdmi_out0_core_initiator_cdc_sink_payload_vsync_start = hdmi_out0_core_initiator_csrstorage5_storage;
assign hdmi_out0_core_initiator_cdc_sink_payload_vsync_end = hdmi_out0_core_initiator_csrstorage6_storage;
assign hdmi_out0_core_initiator_cdc_sink_payload_vscan = hdmi_out0_core_initiator_csrstorage7_storage;
assign hdmi_out0_core_initiator_cdc_sink_payload_base = hdmi_out0_core_initiator_csrstorage8_storage;
assign hdmi_out0_core_initiator_cdc_sink_payload_length = hdmi_out0_core_initiator_csrstorage9_storage;
assign hdmi_out0_core_initiator_cdc_sink_valid = hdmi_out0_core_initiator_enable_storage;
assign hdmi_out0_core_initiator_source_source_valid = hdmi_out0_core_initiator_cdc_source_valid;
assign hdmi_out0_core_initiator_cdc_source_ready = hdmi_out0_core_initiator_source_source_ready;
assign hdmi_out0_core_initiator_source_source_first = hdmi_out0_core_initiator_cdc_source_first;
assign hdmi_out0_core_initiator_source_source_last = hdmi_out0_core_initiator_cdc_source_last;
assign hdmi_out0_core_initiator_source_source_payload_hres = hdmi_out0_core_initiator_cdc_source_payload_hres;
assign hdmi_out0_core_initiator_source_source_payload_hsync_start = hdmi_out0_core_initiator_cdc_source_payload_hsync_start;
assign hdmi_out0_core_initiator_source_source_payload_hsync_end = hdmi_out0_core_initiator_cdc_source_payload_hsync_end;
assign hdmi_out0_core_initiator_source_source_payload_hscan = hdmi_out0_core_initiator_cdc_source_payload_hscan;
assign hdmi_out0_core_initiator_source_source_payload_vres = hdmi_out0_core_initiator_cdc_source_payload_vres;
assign hdmi_out0_core_initiator_source_source_payload_vsync_start = hdmi_out0_core_initiator_cdc_source_payload_vsync_start;
assign hdmi_out0_core_initiator_source_source_payload_vsync_end = hdmi_out0_core_initiator_cdc_source_payload_vsync_end;
assign hdmi_out0_core_initiator_source_source_payload_vscan = hdmi_out0_core_initiator_cdc_source_payload_vscan;
assign hdmi_out0_core_initiator_source_source_payload_base = hdmi_out0_core_initiator_cdc_source_payload_base;
assign hdmi_out0_core_initiator_source_source_payload_length = hdmi_out0_core_initiator_cdc_source_payload_length;
assign hdmi_out0_core_initiator_cdc_asyncfifo_din = {hdmi_out0_core_initiator_cdc_fifo_in_last, hdmi_out0_core_initiator_cdc_fifo_in_first, hdmi_out0_core_initiator_cdc_fifo_in_payload_length, hdmi_out0_core_initiator_cdc_fifo_in_payload_base, hdmi_out0_core_initiator_cdc_fifo_in_payload_vscan, hdmi_out0_core_initiator_cdc_fifo_in_payload_vsync_end, hdmi_out0_core_initiator_cdc_fifo_in_payload_vsync_start, hdmi_out0_core_initiator_cdc_fifo_in_payload_vres, hdmi_out0_core_initiator_cdc_fifo_in_payload_hscan, hdmi_out0_core_initiator_cdc_fifo_in_payload_hsync_end, hdmi_out0_core_initiator_cdc_fifo_in_payload_hsync_start, hdmi_out0_core_initiator_cdc_fifo_in_payload_hres};
assign {hdmi_out0_core_initiator_cdc_fifo_out_last, hdmi_out0_core_initiator_cdc_fifo_out_first, hdmi_out0_core_initiator_cdc_fifo_out_payload_length, hdmi_out0_core_initiator_cdc_fifo_out_payload_base, hdmi_out0_core_initiator_cdc_fifo_out_payload_vscan, hdmi_out0_core_initiator_cdc_fifo_out_payload_vsync_end, hdmi_out0_core_initiator_cdc_fifo_out_payload_vsync_start, hdmi_out0_core_initiator_cdc_fifo_out_payload_vres, hdmi_out0_core_initiator_cdc_fifo_out_payload_hscan, hdmi_out0_core_initiator_cdc_fifo_out_payload_hsync_end, hdmi_out0_core_initiator_cdc_fifo_out_payload_hsync_start, hdmi_out0_core_initiator_cdc_fifo_out_payload_hres} = hdmi_out0_core_initiator_cdc_asyncfifo_dout;
assign hdmi_out0_core_initiator_cdc_sink_ready = hdmi_out0_core_initiator_cdc_asyncfifo_writable;
assign hdmi_out0_core_initiator_cdc_asyncfifo_we = hdmi_out0_core_initiator_cdc_sink_valid;
assign hdmi_out0_core_initiator_cdc_fifo_in_first = hdmi_out0_core_initiator_cdc_sink_first;
assign hdmi_out0_core_initiator_cdc_fifo_in_last = hdmi_out0_core_initiator_cdc_sink_last;
assign hdmi_out0_core_initiator_cdc_fifo_in_payload_hres = hdmi_out0_core_initiator_cdc_sink_payload_hres;
assign hdmi_out0_core_initiator_cdc_fifo_in_payload_hsync_start = hdmi_out0_core_initiator_cdc_sink_payload_hsync_start;
assign hdmi_out0_core_initiator_cdc_fifo_in_payload_hsync_end = hdmi_out0_core_initiator_cdc_sink_payload_hsync_end;
assign hdmi_out0_core_initiator_cdc_fifo_in_payload_hscan = hdmi_out0_core_initiator_cdc_sink_payload_hscan;
assign hdmi_out0_core_initiator_cdc_fifo_in_payload_vres = hdmi_out0_core_initiator_cdc_sink_payload_vres;
assign hdmi_out0_core_initiator_cdc_fifo_in_payload_vsync_start = hdmi_out0_core_initiator_cdc_sink_payload_vsync_start;
assign hdmi_out0_core_initiator_cdc_fifo_in_payload_vsync_end = hdmi_out0_core_initiator_cdc_sink_payload_vsync_end;
assign hdmi_out0_core_initiator_cdc_fifo_in_payload_vscan = hdmi_out0_core_initiator_cdc_sink_payload_vscan;
assign hdmi_out0_core_initiator_cdc_fifo_in_payload_base = hdmi_out0_core_initiator_cdc_sink_payload_base;
assign hdmi_out0_core_initiator_cdc_fifo_in_payload_length = hdmi_out0_core_initiator_cdc_sink_payload_length;
assign hdmi_out0_core_initiator_cdc_source_valid = hdmi_out0_core_initiator_cdc_asyncfifo_readable;
assign hdmi_out0_core_initiator_cdc_source_first = hdmi_out0_core_initiator_cdc_fifo_out_first;
assign hdmi_out0_core_initiator_cdc_source_last = hdmi_out0_core_initiator_cdc_fifo_out_last;
assign hdmi_out0_core_initiator_cdc_source_payload_hres = hdmi_out0_core_initiator_cdc_fifo_out_payload_hres;
assign hdmi_out0_core_initiator_cdc_source_payload_hsync_start = hdmi_out0_core_initiator_cdc_fifo_out_payload_hsync_start;
assign hdmi_out0_core_initiator_cdc_source_payload_hsync_end = hdmi_out0_core_initiator_cdc_fifo_out_payload_hsync_end;
assign hdmi_out0_core_initiator_cdc_source_payload_hscan = hdmi_out0_core_initiator_cdc_fifo_out_payload_hscan;
assign hdmi_out0_core_initiator_cdc_source_payload_vres = hdmi_out0_core_initiator_cdc_fifo_out_payload_vres;
assign hdmi_out0_core_initiator_cdc_source_payload_vsync_start = hdmi_out0_core_initiator_cdc_fifo_out_payload_vsync_start;
assign hdmi_out0_core_initiator_cdc_source_payload_vsync_end = hdmi_out0_core_initiator_cdc_fifo_out_payload_vsync_end;
assign hdmi_out0_core_initiator_cdc_source_payload_vscan = hdmi_out0_core_initiator_cdc_fifo_out_payload_vscan;
assign hdmi_out0_core_initiator_cdc_source_payload_base = hdmi_out0_core_initiator_cdc_fifo_out_payload_base;
assign hdmi_out0_core_initiator_cdc_source_payload_length = hdmi_out0_core_initiator_cdc_fifo_out_payload_length;
assign hdmi_out0_core_initiator_cdc_asyncfifo_re = hdmi_out0_core_initiator_cdc_source_ready;
assign hdmi_out0_core_initiator_cdc_graycounter0_ce = (hdmi_out0_core_initiator_cdc_asyncfifo_writable & hdmi_out0_core_initiator_cdc_asyncfifo_we);
assign hdmi_out0_core_initiator_cdc_graycounter1_ce = (hdmi_out0_core_initiator_cdc_asyncfifo_readable & hdmi_out0_core_initiator_cdc_asyncfifo_re);
assign hdmi_out0_core_initiator_cdc_asyncfifo_writable = ((hdmi_out0_core_initiator_cdc_graycounter0_q[1] == hdmi_out0_core_initiator_cdc_consume_wdomain[1]) | (hdmi_out0_core_initiator_cdc_graycounter0_q[0] == hdmi_out0_core_initiator_cdc_consume_wdomain[0]));
assign hdmi_out0_core_initiator_cdc_asyncfifo_readable = (hdmi_out0_core_initiator_cdc_graycounter1_q != hdmi_out0_core_initiator_cdc_produce_rdomain);
assign hdmi_out0_core_initiator_cdc_wrport_adr = hdmi_out0_core_initiator_cdc_graycounter0_q_binary[0];
assign hdmi_out0_core_initiator_cdc_wrport_dat_w = hdmi_out0_core_initiator_cdc_asyncfifo_din;
assign hdmi_out0_core_initiator_cdc_wrport_we = hdmi_out0_core_initiator_cdc_graycounter0_ce;
assign hdmi_out0_core_initiator_cdc_rdport_adr = hdmi_out0_core_initiator_cdc_graycounter1_q_next_binary[0];
assign hdmi_out0_core_initiator_cdc_asyncfifo_dout = hdmi_out0_core_initiator_cdc_rdport_dat_r;
always @(*) begin
	hdmi_out0_core_initiator_cdc_graycounter0_q_next_binary <= 2'd0;
	if (hdmi_out0_core_initiator_cdc_graycounter0_ce) begin
		hdmi_out0_core_initiator_cdc_graycounter0_q_next_binary <= (hdmi_out0_core_initiator_cdc_graycounter0_q_binary + 1'd1);
	end else begin
		hdmi_out0_core_initiator_cdc_graycounter0_q_next_binary <= hdmi_out0_core_initiator_cdc_graycounter0_q_binary;
	end
end
assign hdmi_out0_core_initiator_cdc_graycounter0_q_next = (hdmi_out0_core_initiator_cdc_graycounter0_q_next_binary ^ hdmi_out0_core_initiator_cdc_graycounter0_q_next_binary[1]);
always @(*) begin
	hdmi_out0_core_initiator_cdc_graycounter1_q_next_binary <= 2'd0;
	if (hdmi_out0_core_initiator_cdc_graycounter1_ce) begin
		hdmi_out0_core_initiator_cdc_graycounter1_q_next_binary <= (hdmi_out0_core_initiator_cdc_graycounter1_q_binary + 1'd1);
	end else begin
		hdmi_out0_core_initiator_cdc_graycounter1_q_next_binary <= hdmi_out0_core_initiator_cdc_graycounter1_q_binary;
	end
end
assign hdmi_out0_core_initiator_cdc_graycounter1_q_next = (hdmi_out0_core_initiator_cdc_graycounter1_q_next_binary ^ hdmi_out0_core_initiator_cdc_graycounter1_q_next_binary[1]);
always @(*) begin
	hdmi_out0_core_timinggenerator_source_valid <= 1'd0;
	hdmi_out0_core_timinggenerator_active <= 1'd0;
	hdmi_out0_core_timinggenerator_source_payload_de <= 1'd0;
	if (hdmi_out0_core_timinggenerator_sink_valid) begin
		hdmi_out0_core_timinggenerator_active <= (hdmi_out0_core_timinggenerator_hactive & hdmi_out0_core_timinggenerator_vactive);
		hdmi_out0_core_timinggenerator_source_valid <= 1'd1;
		if (hdmi_out0_core_timinggenerator_active) begin
			hdmi_out0_core_timinggenerator_source_payload_de <= 1'd1;
		end
	end
end
assign hdmi_out0_core_timinggenerator_sink_ready = (hdmi_out0_core_timinggenerator_source_ready & hdmi_out0_core_timinggenerator_source_last);
assign hdmi_out0_core_dmareader_base = hdmi_out0_core_dmareader_sink_payload_base[31:1];
assign hdmi_out0_core_dmareader_length = hdmi_out0_core_dmareader_sink_payload_length[31:1];
assign hdmi_out0_core_dmareader_sink_sink_payload_address = (hdmi_out0_core_dmareader_base + hdmi_out0_core_dmareader_offset);
assign hdmi_out0_core_dmareader_source_valid = hdmi_out0_core_dmareader_source_source_valid;
assign hdmi_out0_core_dmareader_source_source_ready = hdmi_out0_core_dmareader_source_ready;
assign hdmi_out0_core_dmareader_source_first = hdmi_out0_core_dmareader_source_source_first;
assign hdmi_out0_core_dmareader_source_last = hdmi_out0_core_dmareader_source_source_last;
assign hdmi_out0_core_dmareader_source_payload_data = hdmi_out0_core_dmareader_source_source_payload_data;
assign litedramport1_cmd_payload_we = 1'd0;
assign litedramport1_cmd_valid = (hdmi_out0_core_dmareader_sink_sink_valid & hdmi_out0_core_dmareader_request_enable);
assign litedramport1_cmd_payload_adr = hdmi_out0_core_dmareader_sink_sink_payload_address;
assign hdmi_out0_core_dmareader_sink_sink_ready = (litedramport1_cmd_ready & hdmi_out0_core_dmareader_request_enable);
assign hdmi_out0_core_dmareader_request_issued = (litedramport1_cmd_valid & litedramport1_cmd_ready);
assign hdmi_out0_core_dmareader_request_enable = (hdmi_out0_core_dmareader_rsv_level != 10'd512);
assign hdmi_out0_core_dmareader_fifo_sink_valid = litedramport1_rdata_valid;
assign litedramport1_rdata_ready = hdmi_out0_core_dmareader_fifo_sink_ready;
assign hdmi_out0_core_dmareader_fifo_sink_first = litedramport1_rdata_first;
assign hdmi_out0_core_dmareader_fifo_sink_last = litedramport1_rdata_last;
assign hdmi_out0_core_dmareader_fifo_sink_payload_data = litedramport1_rdata_payload_data;
assign hdmi_out0_core_dmareader_source_source_valid = hdmi_out0_core_dmareader_fifo_source_valid;
assign hdmi_out0_core_dmareader_fifo_source_ready = hdmi_out0_core_dmareader_source_source_ready;
assign hdmi_out0_core_dmareader_source_source_first = hdmi_out0_core_dmareader_fifo_source_first;
assign hdmi_out0_core_dmareader_source_source_last = hdmi_out0_core_dmareader_fifo_source_last;
assign hdmi_out0_core_dmareader_source_source_payload_data = hdmi_out0_core_dmareader_fifo_source_payload_data;
assign hdmi_out0_core_dmareader_data_dequeued = (hdmi_out0_core_dmareader_source_source_valid & hdmi_out0_core_dmareader_source_source_ready);
assign hdmi_out0_core_dmareader_fifo_syncfifo_din = {hdmi_out0_core_dmareader_fifo_fifo_in_last, hdmi_out0_core_dmareader_fifo_fifo_in_first, hdmi_out0_core_dmareader_fifo_fifo_in_payload_data};
assign {hdmi_out0_core_dmareader_fifo_fifo_out_last, hdmi_out0_core_dmareader_fifo_fifo_out_first, hdmi_out0_core_dmareader_fifo_fifo_out_payload_data} = hdmi_out0_core_dmareader_fifo_syncfifo_dout;
assign hdmi_out0_core_dmareader_fifo_sink_ready = hdmi_out0_core_dmareader_fifo_syncfifo_writable;
assign hdmi_out0_core_dmareader_fifo_syncfifo_we = hdmi_out0_core_dmareader_fifo_sink_valid;
assign hdmi_out0_core_dmareader_fifo_fifo_in_first = hdmi_out0_core_dmareader_fifo_sink_first;
assign hdmi_out0_core_dmareader_fifo_fifo_in_last = hdmi_out0_core_dmareader_fifo_sink_last;
assign hdmi_out0_core_dmareader_fifo_fifo_in_payload_data = hdmi_out0_core_dmareader_fifo_sink_payload_data;
assign hdmi_out0_core_dmareader_fifo_source_valid = hdmi_out0_core_dmareader_fifo_readable;
assign hdmi_out0_core_dmareader_fifo_source_first = hdmi_out0_core_dmareader_fifo_fifo_out_first;
assign hdmi_out0_core_dmareader_fifo_source_last = hdmi_out0_core_dmareader_fifo_fifo_out_last;
assign hdmi_out0_core_dmareader_fifo_source_payload_data = hdmi_out0_core_dmareader_fifo_fifo_out_payload_data;
assign hdmi_out0_core_dmareader_fifo_re = hdmi_out0_core_dmareader_fifo_source_ready;
assign hdmi_out0_core_dmareader_fifo_syncfifo_re = (hdmi_out0_core_dmareader_fifo_syncfifo_readable & ((~hdmi_out0_core_dmareader_fifo_readable) | hdmi_out0_core_dmareader_fifo_re));
assign hdmi_out0_core_dmareader_fifo_level1 = (hdmi_out0_core_dmareader_fifo_level0 + hdmi_out0_core_dmareader_fifo_readable);
always @(*) begin
	hdmi_out0_core_dmareader_fifo_wrport_adr <= 9'd0;
	if (hdmi_out0_core_dmareader_fifo_replace) begin
		hdmi_out0_core_dmareader_fifo_wrport_adr <= (hdmi_out0_core_dmareader_fifo_produce - 1'd1);
	end else begin
		hdmi_out0_core_dmareader_fifo_wrport_adr <= hdmi_out0_core_dmareader_fifo_produce;
	end
end
assign hdmi_out0_core_dmareader_fifo_wrport_dat_w = hdmi_out0_core_dmareader_fifo_syncfifo_din;
assign hdmi_out0_core_dmareader_fifo_wrport_we = (hdmi_out0_core_dmareader_fifo_syncfifo_we & (hdmi_out0_core_dmareader_fifo_syncfifo_writable | hdmi_out0_core_dmareader_fifo_replace));
assign hdmi_out0_core_dmareader_fifo_do_read = (hdmi_out0_core_dmareader_fifo_syncfifo_readable & hdmi_out0_core_dmareader_fifo_syncfifo_re);
assign hdmi_out0_core_dmareader_fifo_rdport_adr = hdmi_out0_core_dmareader_fifo_consume;
assign hdmi_out0_core_dmareader_fifo_syncfifo_dout = hdmi_out0_core_dmareader_fifo_rdport_dat_r;
assign hdmi_out0_core_dmareader_fifo_rdport_re = hdmi_out0_core_dmareader_fifo_do_read;
assign hdmi_out0_core_dmareader_fifo_syncfifo_writable = (hdmi_out0_core_dmareader_fifo_level0 != 10'd512);
assign hdmi_out0_core_dmareader_fifo_syncfifo_readable = (hdmi_out0_core_dmareader_fifo_level0 != 1'd0);
always @(*) begin
	litedramport1_flush <= 1'd0;
	videoout_next_state <= 1'd0;
	hdmi_out0_core_dmareader_offset_next_value <= 28'd0;
	hdmi_out0_core_dmareader_sink_sink_valid <= 1'd0;
	hdmi_out0_core_dmareader_offset_next_value_ce <= 1'd0;
	hdmi_out0_core_dmareader_sink_ready <= 1'd0;
	videoout_next_state <= videoout_state;
	case (videoout_state)
		1'd1: begin
			hdmi_out0_core_dmareader_sink_sink_valid <= 1'd1;
			if (hdmi_out0_core_dmareader_sink_sink_ready) begin
				hdmi_out0_core_dmareader_offset_next_value <= (hdmi_out0_core_dmareader_offset + 1'd1);
				hdmi_out0_core_dmareader_offset_next_value_ce <= 1'd1;
				if ((hdmi_out0_core_dmareader_offset == (hdmi_out0_core_dmareader_length - 1'd1))) begin
					hdmi_out0_core_dmareader_sink_ready <= 1'd1;
					videoout_next_state <= 1'd0;
				end
			end
		end
		default: begin
			hdmi_out0_core_dmareader_offset_next_value <= 1'd0;
			hdmi_out0_core_dmareader_offset_next_value_ce <= 1'd1;
			if (hdmi_out0_core_dmareader_sink_valid) begin
				videoout_next_state <= 1'd1;
			end else begin
				litedramport1_flush <= 1'd1;
			end
		end
	endcase
end
assign hdmi_out0_core_o = (hdmi_out0_core_toggle_o ^ hdmi_out0_core_toggle_o_r);
assign hdmi_out0_driver_hdmi_phy_sink_valid = hdmi_out0_driver_sink_sink_valid;
assign hdmi_out0_driver_sink_sink_ready = hdmi_out0_driver_hdmi_phy_sink_ready;
assign hdmi_out0_driver_hdmi_phy_sink_first = hdmi_out0_driver_sink_sink_first;
assign hdmi_out0_driver_hdmi_phy_sink_last = hdmi_out0_driver_sink_sink_last;
assign hdmi_out0_driver_hdmi_phy_sink_payload_r = hdmi_out0_driver_sink_sink_payload_r;
assign hdmi_out0_driver_hdmi_phy_sink_payload_g = hdmi_out0_driver_sink_sink_payload_g;
assign hdmi_out0_driver_hdmi_phy_sink_payload_b = hdmi_out0_driver_sink_sink_payload_b;
assign hdmi_out0_driver_hdmi_phy_sink_param_hsync = hdmi_out0_driver_sink_sink_param_hsync;
assign hdmi_out0_driver_hdmi_phy_sink_param_vsync = hdmi_out0_driver_sink_sink_param_vsync;
assign hdmi_out0_driver_hdmi_phy_sink_param_de = hdmi_out0_driver_sink_sink_param_de;
assign pix_rst = (~hdmi_out0_driver_s7hdmioutclocking_mmcm_locked);
assign hdmi_out0_driver_s7hdmioutclocking_data0 = hdmi_out0_driver_s7hdmioutclocking;
assign hdmi_out0_driver_s7hdmioutclocking_data1 = hdmi_out0_driver_s7hdmioutclocking_data0;
assign hdmi_out0_driver_hdmi_phy_sink_ready = 1'd1;
assign hdmi_out0_driver_hdmi_phy_es0_d0 = hdmi_out0_driver_hdmi_phy_sink_payload_b;
assign hdmi_out0_driver_hdmi_phy_es1_d0 = hdmi_out0_driver_hdmi_phy_sink_payload_g;
assign hdmi_out0_driver_hdmi_phy_es2_d0 = hdmi_out0_driver_hdmi_phy_sink_payload_r;
assign hdmi_out0_driver_hdmi_phy_es0_c = {hdmi_out0_driver_hdmi_phy_sink_param_vsync, hdmi_out0_driver_hdmi_phy_sink_param_hsync};
assign hdmi_out0_driver_hdmi_phy_es1_c = 1'd0;
assign hdmi_out0_driver_hdmi_phy_es2_c = 1'd0;
assign hdmi_out0_driver_hdmi_phy_es0_de = hdmi_out0_driver_hdmi_phy_sink_param_de;
assign hdmi_out0_driver_hdmi_phy_es1_de = hdmi_out0_driver_hdmi_phy_sink_param_de;
assign hdmi_out0_driver_hdmi_phy_es2_de = hdmi_out0_driver_hdmi_phy_sink_param_de;
assign hdmi_out0_driver_hdmi_phy_es0_data = hdmi_out0_driver_hdmi_phy_es0_out;
assign hdmi_out0_driver_hdmi_phy_es0_q_m8_n = ((hdmi_out0_driver_hdmi_phy_es0_n1d > 3'd4) | ((hdmi_out0_driver_hdmi_phy_es0_n1d == 3'd4) & (~hdmi_out0_driver_hdmi_phy_es0_d1[0])));
assign hdmi_out0_driver_hdmi_phy_es1_data = hdmi_out0_driver_hdmi_phy_es1_out;
assign hdmi_out0_driver_hdmi_phy_es1_q_m8_n = ((hdmi_out0_driver_hdmi_phy_es1_n1d > 3'd4) | ((hdmi_out0_driver_hdmi_phy_es1_n1d == 3'd4) & (~hdmi_out0_driver_hdmi_phy_es1_d1[0])));
assign hdmi_out0_driver_hdmi_phy_es2_data = hdmi_out0_driver_hdmi_phy_es2_out;
assign hdmi_out0_driver_hdmi_phy_es2_q_m8_n = ((hdmi_out0_driver_hdmi_phy_es2_n1d > 3'd4) | ((hdmi_out0_driver_hdmi_phy_es2_n1d == 3'd4) & (~hdmi_out0_driver_hdmi_phy_es2_d1[0])));
always @(*) begin
	hdmi_out0_resetinserter_y_fifo_sink_payload_data <= 8'd0;
	hdmi_out0_resetinserter_y_fifo_sink_valid <= 1'd0;
	hdmi_out0_resetinserter_cb_fifo_sink_valid <= 1'd0;
	hdmi_out0_resetinserter_cr_fifo_sink_valid <= 1'd0;
	hdmi_out0_resetinserter_sink_sink_ready <= 1'd0;
	hdmi_out0_resetinserter_cb_fifo_sink_payload_data <= 8'd0;
	hdmi_out0_resetinserter_cr_fifo_sink_payload_data <= 8'd0;
	if ((~hdmi_out0_resetinserter_parity_in)) begin
		hdmi_out0_resetinserter_y_fifo_sink_valid <= (hdmi_out0_resetinserter_sink_sink_valid & hdmi_out0_resetinserter_sink_sink_ready);
		hdmi_out0_resetinserter_y_fifo_sink_payload_data <= hdmi_out0_resetinserter_sink_sink_payload_y;
		hdmi_out0_resetinserter_cb_fifo_sink_valid <= (hdmi_out0_resetinserter_sink_sink_valid & hdmi_out0_resetinserter_sink_sink_ready);
		hdmi_out0_resetinserter_cb_fifo_sink_payload_data <= hdmi_out0_resetinserter_sink_sink_payload_cb_cr;
		hdmi_out0_resetinserter_sink_sink_ready <= (hdmi_out0_resetinserter_y_fifo_sink_ready & hdmi_out0_resetinserter_cb_fifo_sink_ready);
	end else begin
		hdmi_out0_resetinserter_y_fifo_sink_valid <= (hdmi_out0_resetinserter_sink_sink_valid & hdmi_out0_resetinserter_sink_sink_ready);
		hdmi_out0_resetinserter_y_fifo_sink_payload_data <= hdmi_out0_resetinserter_sink_sink_payload_y;
		hdmi_out0_resetinserter_cr_fifo_sink_valid <= (hdmi_out0_resetinserter_sink_sink_valid & hdmi_out0_resetinserter_sink_sink_ready);
		hdmi_out0_resetinserter_cr_fifo_sink_payload_data <= hdmi_out0_resetinserter_sink_sink_payload_cb_cr;
		hdmi_out0_resetinserter_sink_sink_ready <= (hdmi_out0_resetinserter_y_fifo_sink_ready & hdmi_out0_resetinserter_cr_fifo_sink_ready);
	end
end
assign hdmi_out0_resetinserter_source_source_valid = ((hdmi_out0_resetinserter_y_fifo_source_valid & hdmi_out0_resetinserter_cb_fifo_source_valid) & hdmi_out0_resetinserter_cr_fifo_source_valid);
assign hdmi_out0_resetinserter_source_source_payload_y = hdmi_out0_resetinserter_y_fifo_source_payload_data;
assign hdmi_out0_resetinserter_source_source_payload_cb = hdmi_out0_resetinserter_cb_fifo_source_payload_data;
assign hdmi_out0_resetinserter_source_source_payload_cr = hdmi_out0_resetinserter_cr_fifo_source_payload_data;
assign hdmi_out0_resetinserter_y_fifo_source_ready = (hdmi_out0_resetinserter_source_source_valid & hdmi_out0_resetinserter_source_source_ready);
assign hdmi_out0_resetinserter_cb_fifo_source_ready = ((hdmi_out0_resetinserter_source_source_valid & hdmi_out0_resetinserter_source_source_ready) & hdmi_out0_resetinserter_parity_out);
assign hdmi_out0_resetinserter_cr_fifo_source_ready = ((hdmi_out0_resetinserter_source_source_valid & hdmi_out0_resetinserter_source_source_ready) & hdmi_out0_resetinserter_parity_out);
assign hdmi_out0_resetinserter_y_fifo_syncfifo_din = {hdmi_out0_resetinserter_y_fifo_fifo_in_last, hdmi_out0_resetinserter_y_fifo_fifo_in_first, hdmi_out0_resetinserter_y_fifo_fifo_in_payload_data};
assign {hdmi_out0_resetinserter_y_fifo_fifo_out_last, hdmi_out0_resetinserter_y_fifo_fifo_out_first, hdmi_out0_resetinserter_y_fifo_fifo_out_payload_data} = hdmi_out0_resetinserter_y_fifo_syncfifo_dout;
assign hdmi_out0_resetinserter_y_fifo_sink_ready = hdmi_out0_resetinserter_y_fifo_syncfifo_writable;
assign hdmi_out0_resetinserter_y_fifo_syncfifo_we = hdmi_out0_resetinserter_y_fifo_sink_valid;
assign hdmi_out0_resetinserter_y_fifo_fifo_in_first = hdmi_out0_resetinserter_y_fifo_sink_first;
assign hdmi_out0_resetinserter_y_fifo_fifo_in_last = hdmi_out0_resetinserter_y_fifo_sink_last;
assign hdmi_out0_resetinserter_y_fifo_fifo_in_payload_data = hdmi_out0_resetinserter_y_fifo_sink_payload_data;
assign hdmi_out0_resetinserter_y_fifo_source_valid = hdmi_out0_resetinserter_y_fifo_syncfifo_readable;
assign hdmi_out0_resetinserter_y_fifo_source_first = hdmi_out0_resetinserter_y_fifo_fifo_out_first;
assign hdmi_out0_resetinserter_y_fifo_source_last = hdmi_out0_resetinserter_y_fifo_fifo_out_last;
assign hdmi_out0_resetinserter_y_fifo_source_payload_data = hdmi_out0_resetinserter_y_fifo_fifo_out_payload_data;
assign hdmi_out0_resetinserter_y_fifo_syncfifo_re = hdmi_out0_resetinserter_y_fifo_source_ready;
always @(*) begin
	hdmi_out0_resetinserter_y_fifo_wrport_adr <= 2'd0;
	if (hdmi_out0_resetinserter_y_fifo_replace) begin
		hdmi_out0_resetinserter_y_fifo_wrport_adr <= (hdmi_out0_resetinserter_y_fifo_produce - 1'd1);
	end else begin
		hdmi_out0_resetinserter_y_fifo_wrport_adr <= hdmi_out0_resetinserter_y_fifo_produce;
	end
end
assign hdmi_out0_resetinserter_y_fifo_wrport_dat_w = hdmi_out0_resetinserter_y_fifo_syncfifo_din;
assign hdmi_out0_resetinserter_y_fifo_wrport_we = (hdmi_out0_resetinserter_y_fifo_syncfifo_we & (hdmi_out0_resetinserter_y_fifo_syncfifo_writable | hdmi_out0_resetinserter_y_fifo_replace));
assign hdmi_out0_resetinserter_y_fifo_do_read = (hdmi_out0_resetinserter_y_fifo_syncfifo_readable & hdmi_out0_resetinserter_y_fifo_syncfifo_re);
assign hdmi_out0_resetinserter_y_fifo_rdport_adr = hdmi_out0_resetinserter_y_fifo_consume;
assign hdmi_out0_resetinserter_y_fifo_syncfifo_dout = hdmi_out0_resetinserter_y_fifo_rdport_dat_r;
assign hdmi_out0_resetinserter_y_fifo_syncfifo_writable = (hdmi_out0_resetinserter_y_fifo_level != 3'd4);
assign hdmi_out0_resetinserter_y_fifo_syncfifo_readable = (hdmi_out0_resetinserter_y_fifo_level != 1'd0);
assign hdmi_out0_resetinserter_cb_fifo_syncfifo_din = {hdmi_out0_resetinserter_cb_fifo_fifo_in_last, hdmi_out0_resetinserter_cb_fifo_fifo_in_first, hdmi_out0_resetinserter_cb_fifo_fifo_in_payload_data};
assign {hdmi_out0_resetinserter_cb_fifo_fifo_out_last, hdmi_out0_resetinserter_cb_fifo_fifo_out_first, hdmi_out0_resetinserter_cb_fifo_fifo_out_payload_data} = hdmi_out0_resetinserter_cb_fifo_syncfifo_dout;
assign hdmi_out0_resetinserter_cb_fifo_sink_ready = hdmi_out0_resetinserter_cb_fifo_syncfifo_writable;
assign hdmi_out0_resetinserter_cb_fifo_syncfifo_we = hdmi_out0_resetinserter_cb_fifo_sink_valid;
assign hdmi_out0_resetinserter_cb_fifo_fifo_in_first = hdmi_out0_resetinserter_cb_fifo_sink_first;
assign hdmi_out0_resetinserter_cb_fifo_fifo_in_last = hdmi_out0_resetinserter_cb_fifo_sink_last;
assign hdmi_out0_resetinserter_cb_fifo_fifo_in_payload_data = hdmi_out0_resetinserter_cb_fifo_sink_payload_data;
assign hdmi_out0_resetinserter_cb_fifo_source_valid = hdmi_out0_resetinserter_cb_fifo_syncfifo_readable;
assign hdmi_out0_resetinserter_cb_fifo_source_first = hdmi_out0_resetinserter_cb_fifo_fifo_out_first;
assign hdmi_out0_resetinserter_cb_fifo_source_last = hdmi_out0_resetinserter_cb_fifo_fifo_out_last;
assign hdmi_out0_resetinserter_cb_fifo_source_payload_data = hdmi_out0_resetinserter_cb_fifo_fifo_out_payload_data;
assign hdmi_out0_resetinserter_cb_fifo_syncfifo_re = hdmi_out0_resetinserter_cb_fifo_source_ready;
always @(*) begin
	hdmi_out0_resetinserter_cb_fifo_wrport_adr <= 2'd0;
	if (hdmi_out0_resetinserter_cb_fifo_replace) begin
		hdmi_out0_resetinserter_cb_fifo_wrport_adr <= (hdmi_out0_resetinserter_cb_fifo_produce - 1'd1);
	end else begin
		hdmi_out0_resetinserter_cb_fifo_wrport_adr <= hdmi_out0_resetinserter_cb_fifo_produce;
	end
end
assign hdmi_out0_resetinserter_cb_fifo_wrport_dat_w = hdmi_out0_resetinserter_cb_fifo_syncfifo_din;
assign hdmi_out0_resetinserter_cb_fifo_wrport_we = (hdmi_out0_resetinserter_cb_fifo_syncfifo_we & (hdmi_out0_resetinserter_cb_fifo_syncfifo_writable | hdmi_out0_resetinserter_cb_fifo_replace));
assign hdmi_out0_resetinserter_cb_fifo_do_read = (hdmi_out0_resetinserter_cb_fifo_syncfifo_readable & hdmi_out0_resetinserter_cb_fifo_syncfifo_re);
assign hdmi_out0_resetinserter_cb_fifo_rdport_adr = hdmi_out0_resetinserter_cb_fifo_consume;
assign hdmi_out0_resetinserter_cb_fifo_syncfifo_dout = hdmi_out0_resetinserter_cb_fifo_rdport_dat_r;
assign hdmi_out0_resetinserter_cb_fifo_syncfifo_writable = (hdmi_out0_resetinserter_cb_fifo_level != 3'd4);
assign hdmi_out0_resetinserter_cb_fifo_syncfifo_readable = (hdmi_out0_resetinserter_cb_fifo_level != 1'd0);
assign hdmi_out0_resetinserter_cr_fifo_syncfifo_din = {hdmi_out0_resetinserter_cr_fifo_fifo_in_last, hdmi_out0_resetinserter_cr_fifo_fifo_in_first, hdmi_out0_resetinserter_cr_fifo_fifo_in_payload_data};
assign {hdmi_out0_resetinserter_cr_fifo_fifo_out_last, hdmi_out0_resetinserter_cr_fifo_fifo_out_first, hdmi_out0_resetinserter_cr_fifo_fifo_out_payload_data} = hdmi_out0_resetinserter_cr_fifo_syncfifo_dout;
assign hdmi_out0_resetinserter_cr_fifo_sink_ready = hdmi_out0_resetinserter_cr_fifo_syncfifo_writable;
assign hdmi_out0_resetinserter_cr_fifo_syncfifo_we = hdmi_out0_resetinserter_cr_fifo_sink_valid;
assign hdmi_out0_resetinserter_cr_fifo_fifo_in_first = hdmi_out0_resetinserter_cr_fifo_sink_first;
assign hdmi_out0_resetinserter_cr_fifo_fifo_in_last = hdmi_out0_resetinserter_cr_fifo_sink_last;
assign hdmi_out0_resetinserter_cr_fifo_fifo_in_payload_data = hdmi_out0_resetinserter_cr_fifo_sink_payload_data;
assign hdmi_out0_resetinserter_cr_fifo_source_valid = hdmi_out0_resetinserter_cr_fifo_syncfifo_readable;
assign hdmi_out0_resetinserter_cr_fifo_source_first = hdmi_out0_resetinserter_cr_fifo_fifo_out_first;
assign hdmi_out0_resetinserter_cr_fifo_source_last = hdmi_out0_resetinserter_cr_fifo_fifo_out_last;
assign hdmi_out0_resetinserter_cr_fifo_source_payload_data = hdmi_out0_resetinserter_cr_fifo_fifo_out_payload_data;
assign hdmi_out0_resetinserter_cr_fifo_syncfifo_re = hdmi_out0_resetinserter_cr_fifo_source_ready;
always @(*) begin
	hdmi_out0_resetinserter_cr_fifo_wrport_adr <= 2'd0;
	if (hdmi_out0_resetinserter_cr_fifo_replace) begin
		hdmi_out0_resetinserter_cr_fifo_wrport_adr <= (hdmi_out0_resetinserter_cr_fifo_produce - 1'd1);
	end else begin
		hdmi_out0_resetinserter_cr_fifo_wrport_adr <= hdmi_out0_resetinserter_cr_fifo_produce;
	end
end
assign hdmi_out0_resetinserter_cr_fifo_wrport_dat_w = hdmi_out0_resetinserter_cr_fifo_syncfifo_din;
assign hdmi_out0_resetinserter_cr_fifo_wrport_we = (hdmi_out0_resetinserter_cr_fifo_syncfifo_we & (hdmi_out0_resetinserter_cr_fifo_syncfifo_writable | hdmi_out0_resetinserter_cr_fifo_replace));
assign hdmi_out0_resetinserter_cr_fifo_do_read = (hdmi_out0_resetinserter_cr_fifo_syncfifo_readable & hdmi_out0_resetinserter_cr_fifo_syncfifo_re);
assign hdmi_out0_resetinserter_cr_fifo_rdport_adr = hdmi_out0_resetinserter_cr_fifo_consume;
assign hdmi_out0_resetinserter_cr_fifo_syncfifo_dout = hdmi_out0_resetinserter_cr_fifo_rdport_dat_r;
assign hdmi_out0_resetinserter_cr_fifo_syncfifo_writable = (hdmi_out0_resetinserter_cr_fifo_level != 3'd4);
assign hdmi_out0_resetinserter_cr_fifo_syncfifo_readable = (hdmi_out0_resetinserter_cr_fifo_level != 1'd0);
assign hdmi_out0_pipe_ce = (hdmi_out0_source_ready | (~hdmi_out0_valid_n3));
assign hdmi_out0_sink_ready = hdmi_out0_pipe_ce;
assign hdmi_out0_source_valid = hdmi_out0_valid_n3;
assign hdmi_out0_busy = ((((1'd0 | hdmi_out0_valid_n0) | hdmi_out0_valid_n1) | hdmi_out0_valid_n2) | hdmi_out0_valid_n3);
assign hdmi_out0_source_first = hdmi_out0_first_n3;
assign hdmi_out0_source_last = hdmi_out0_last_n3;
assign hdmi_out0_ce = hdmi_out0_pipe_ce;
assign hdmi_out0_sink_y = hdmi_out0_sink_payload_y;
assign hdmi_out0_sink_cb = hdmi_out0_sink_payload_cb;
assign hdmi_out0_sink_cr = hdmi_out0_sink_payload_cr;
assign hdmi_out0_source_payload_r = hdmi_out0_source_r;
assign hdmi_out0_source_payload_g = hdmi_out0_source_g;
assign hdmi_out0_source_payload_b = hdmi_out0_source_b;
assign hdmi_out0_source_payload_hsync = hdmi_out0_next_s5;
assign hdmi_out0_source_payload_vsync = hdmi_out0_next_s11;
assign hdmi_out0_source_payload_de = hdmi_out0_next_s17;
assign videooutsoc_interface0_wb_sdram_adr = comb_rhs_array_muxed36;
assign videooutsoc_interface0_wb_sdram_dat_w = comb_rhs_array_muxed37;
assign videooutsoc_interface0_wb_sdram_sel = comb_rhs_array_muxed38;
assign videooutsoc_interface0_wb_sdram_cyc = comb_rhs_array_muxed39;
assign videooutsoc_interface0_wb_sdram_stb = comb_rhs_array_muxed40;
assign videooutsoc_interface0_wb_sdram_we = comb_rhs_array_muxed41;
assign videooutsoc_interface0_wb_sdram_cti = comb_rhs_array_muxed42;
assign videooutsoc_interface0_wb_sdram_bte = comb_rhs_array_muxed43;
assign videooutsoc_interface1_wb_sdram_dat_r = videooutsoc_interface0_wb_sdram_dat_r;
assign videooutsoc_interface1_wb_sdram_ack = (videooutsoc_interface0_wb_sdram_ack & (wb_sdram_con_grant == 1'd0));
assign videooutsoc_interface1_wb_sdram_err = (videooutsoc_interface0_wb_sdram_err & (wb_sdram_con_grant == 1'd0));
assign wb_sdram_con_request = {videooutsoc_interface1_wb_sdram_cyc};
assign wb_sdram_con_grant = 1'd0;
assign videooutsoc_shared_adr = comb_rhs_array_muxed44;
assign videooutsoc_shared_dat_w = comb_rhs_array_muxed45;
assign videooutsoc_shared_sel = comb_rhs_array_muxed46;
assign videooutsoc_shared_cyc = comb_rhs_array_muxed47;
assign videooutsoc_shared_stb = comb_rhs_array_muxed48;
assign videooutsoc_shared_we = comb_rhs_array_muxed49;
assign videooutsoc_shared_cti = comb_rhs_array_muxed50;
assign videooutsoc_shared_bte = comb_rhs_array_muxed51;
assign videooutsoc_videooutsoc_ibus_dat_r = videooutsoc_shared_dat_r;
assign videooutsoc_videooutsoc_dbus_dat_r = videooutsoc_shared_dat_r;
assign videooutsoc_videooutsoc_ibus_ack = (videooutsoc_shared_ack & (videooutsoc_grant == 1'd0));
assign videooutsoc_videooutsoc_dbus_ack = (videooutsoc_shared_ack & (videooutsoc_grant == 1'd1));
assign videooutsoc_videooutsoc_ibus_err = (videooutsoc_shared_err & (videooutsoc_grant == 1'd0));
assign videooutsoc_videooutsoc_dbus_err = (videooutsoc_shared_err & (videooutsoc_grant == 1'd1));
assign videooutsoc_request = {videooutsoc_videooutsoc_dbus_cyc, videooutsoc_videooutsoc_ibus_cyc};
always @(*) begin
	videooutsoc_slave_sel <= 4'd0;
	videooutsoc_slave_sel[0] <= (videooutsoc_shared_adr[28:26] == 1'd0);
	videooutsoc_slave_sel[1] <= (videooutsoc_shared_adr[28:26] == 1'd1);
	videooutsoc_slave_sel[2] <= (videooutsoc_shared_adr[28:26] == 3'd6);
	videooutsoc_slave_sel[3] <= (videooutsoc_shared_adr[28:26] == 3'd4);
end
assign videooutsoc_videooutsoc_rom_bus_adr = videooutsoc_shared_adr;
assign videooutsoc_videooutsoc_rom_bus_dat_w = videooutsoc_shared_dat_w;
assign videooutsoc_videooutsoc_rom_bus_sel = videooutsoc_shared_sel;
assign videooutsoc_videooutsoc_rom_bus_stb = videooutsoc_shared_stb;
assign videooutsoc_videooutsoc_rom_bus_we = videooutsoc_shared_we;
assign videooutsoc_videooutsoc_rom_bus_cti = videooutsoc_shared_cti;
assign videooutsoc_videooutsoc_rom_bus_bte = videooutsoc_shared_bte;
assign videooutsoc_videooutsoc_sram_bus_adr = videooutsoc_shared_adr;
assign videooutsoc_videooutsoc_sram_bus_dat_w = videooutsoc_shared_dat_w;
assign videooutsoc_videooutsoc_sram_bus_sel = videooutsoc_shared_sel;
assign videooutsoc_videooutsoc_sram_bus_stb = videooutsoc_shared_stb;
assign videooutsoc_videooutsoc_sram_bus_we = videooutsoc_shared_we;
assign videooutsoc_videooutsoc_sram_bus_cti = videooutsoc_shared_cti;
assign videooutsoc_videooutsoc_sram_bus_bte = videooutsoc_shared_bte;
assign videooutsoc_videooutsoc_bus_wishbone_adr = videooutsoc_shared_adr;
assign videooutsoc_videooutsoc_bus_wishbone_dat_w = videooutsoc_shared_dat_w;
assign videooutsoc_videooutsoc_bus_wishbone_sel = videooutsoc_shared_sel;
assign videooutsoc_videooutsoc_bus_wishbone_stb = videooutsoc_shared_stb;
assign videooutsoc_videooutsoc_bus_wishbone_we = videooutsoc_shared_we;
assign videooutsoc_videooutsoc_bus_wishbone_cti = videooutsoc_shared_cti;
assign videooutsoc_videooutsoc_bus_wishbone_bte = videooutsoc_shared_bte;
assign videooutsoc_interface1_wb_sdram_adr = videooutsoc_shared_adr;
assign videooutsoc_interface1_wb_sdram_dat_w = videooutsoc_shared_dat_w;
assign videooutsoc_interface1_wb_sdram_sel = videooutsoc_shared_sel;
assign videooutsoc_interface1_wb_sdram_stb = videooutsoc_shared_stb;
assign videooutsoc_interface1_wb_sdram_we = videooutsoc_shared_we;
assign videooutsoc_interface1_wb_sdram_cti = videooutsoc_shared_cti;
assign videooutsoc_interface1_wb_sdram_bte = videooutsoc_shared_bte;
assign videooutsoc_videooutsoc_rom_bus_cyc = (videooutsoc_shared_cyc & videooutsoc_slave_sel[0]);
assign videooutsoc_videooutsoc_sram_bus_cyc = (videooutsoc_shared_cyc & videooutsoc_slave_sel[1]);
assign videooutsoc_videooutsoc_bus_wishbone_cyc = (videooutsoc_shared_cyc & videooutsoc_slave_sel[2]);
assign videooutsoc_interface1_wb_sdram_cyc = (videooutsoc_shared_cyc & videooutsoc_slave_sel[3]);
assign videooutsoc_shared_ack = (((videooutsoc_videooutsoc_rom_bus_ack | videooutsoc_videooutsoc_sram_bus_ack) | videooutsoc_videooutsoc_bus_wishbone_ack) | videooutsoc_interface1_wb_sdram_ack);
assign videooutsoc_shared_err = (((videooutsoc_videooutsoc_rom_bus_err | videooutsoc_videooutsoc_sram_bus_err) | videooutsoc_videooutsoc_bus_wishbone_err) | videooutsoc_interface1_wb_sdram_err);
assign videooutsoc_shared_dat_r = (((({32{videooutsoc_slave_sel_r[0]}} & videooutsoc_videooutsoc_rom_bus_dat_r) | ({32{videooutsoc_slave_sel_r[1]}} & videooutsoc_videooutsoc_sram_bus_dat_r)) | ({32{videooutsoc_slave_sel_r[2]}} & videooutsoc_videooutsoc_bus_wishbone_dat_r)) | ({32{videooutsoc_slave_sel_r[3]}} & videooutsoc_interface1_wb_sdram_dat_r));
assign videooutsoc_csrbank0_sel = (videooutsoc_interface0_bank_bus_adr[13:9] == 4'd10);
assign videooutsoc_csrbank0_dly_sel0_r = videooutsoc_interface0_bank_bus_dat_w[3:0];
assign videooutsoc_csrbank0_dly_sel0_re = ((videooutsoc_csrbank0_sel & videooutsoc_interface0_bank_bus_we) & (videooutsoc_interface0_bank_bus_adr[1:0] == 1'd0));
assign videooutsoc_rdly_dq_rst_r = videooutsoc_interface0_bank_bus_dat_w[0];
assign videooutsoc_rdly_dq_rst_re = ((videooutsoc_csrbank0_sel & videooutsoc_interface0_bank_bus_we) & (videooutsoc_interface0_bank_bus_adr[1:0] == 1'd1));
assign videooutsoc_rdly_dq_inc_r = videooutsoc_interface0_bank_bus_dat_w[0];
assign videooutsoc_rdly_dq_inc_re = ((videooutsoc_csrbank0_sel & videooutsoc_interface0_bank_bus_we) & (videooutsoc_interface0_bank_bus_adr[1:0] == 2'd2));
assign videooutsoc_rdly_dq_bitslip_r = videooutsoc_interface0_bank_bus_dat_w[0];
assign videooutsoc_rdly_dq_bitslip_re = ((videooutsoc_csrbank0_sel & videooutsoc_interface0_bank_bus_we) & (videooutsoc_interface0_bank_bus_adr[1:0] == 2'd3));
assign videooutsoc_storage = videooutsoc_storage_full[3:0];
assign videooutsoc_csrbank0_dly_sel0_w = videooutsoc_storage_full[3:0];
assign videooutsoc_csrbank1_sel = (videooutsoc_interface1_bank_bus_adr[13:9] == 5'd26);
assign videooutsoc_csrbank1_core_underflow_enable0_r = videooutsoc_interface1_bank_bus_dat_w[0];
assign videooutsoc_csrbank1_core_underflow_enable0_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 1'd0));
assign hdmi_out0_core_underflow_update_underflow_update_r = videooutsoc_interface1_bank_bus_dat_w[0];
assign hdmi_out0_core_underflow_update_underflow_update_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 1'd1));
assign videooutsoc_csrbank1_core_underflow_counter3_r = videooutsoc_interface1_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank1_core_underflow_counter3_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 2'd2));
assign videooutsoc_csrbank1_core_underflow_counter2_r = videooutsoc_interface1_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank1_core_underflow_counter2_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 2'd3));
assign videooutsoc_csrbank1_core_underflow_counter1_r = videooutsoc_interface1_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank1_core_underflow_counter1_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 3'd4));
assign videooutsoc_csrbank1_core_underflow_counter0_r = videooutsoc_interface1_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank1_core_underflow_counter0_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 3'd5));
assign videooutsoc_csrbank1_core_initiator_enable0_r = videooutsoc_interface1_bank_bus_dat_w[0];
assign videooutsoc_csrbank1_core_initiator_enable0_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 3'd6));
assign videooutsoc_csrbank1_core_initiator_hres1_r = videooutsoc_interface1_bank_bus_dat_w[3:0];
assign videooutsoc_csrbank1_core_initiator_hres1_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 3'd7));
assign videooutsoc_csrbank1_core_initiator_hres0_r = videooutsoc_interface1_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank1_core_initiator_hres0_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 4'd8));
assign videooutsoc_csrbank1_core_initiator_hsync_start1_r = videooutsoc_interface1_bank_bus_dat_w[3:0];
assign videooutsoc_csrbank1_core_initiator_hsync_start1_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 4'd9));
assign videooutsoc_csrbank1_core_initiator_hsync_start0_r = videooutsoc_interface1_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank1_core_initiator_hsync_start0_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 4'd10));
assign videooutsoc_csrbank1_core_initiator_hsync_end1_r = videooutsoc_interface1_bank_bus_dat_w[3:0];
assign videooutsoc_csrbank1_core_initiator_hsync_end1_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 4'd11));
assign videooutsoc_csrbank1_core_initiator_hsync_end0_r = videooutsoc_interface1_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank1_core_initiator_hsync_end0_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 4'd12));
assign videooutsoc_csrbank1_core_initiator_hscan1_r = videooutsoc_interface1_bank_bus_dat_w[3:0];
assign videooutsoc_csrbank1_core_initiator_hscan1_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 4'd13));
assign videooutsoc_csrbank1_core_initiator_hscan0_r = videooutsoc_interface1_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank1_core_initiator_hscan0_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 4'd14));
assign videooutsoc_csrbank1_core_initiator_vres1_r = videooutsoc_interface1_bank_bus_dat_w[3:0];
assign videooutsoc_csrbank1_core_initiator_vres1_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 4'd15));
assign videooutsoc_csrbank1_core_initiator_vres0_r = videooutsoc_interface1_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank1_core_initiator_vres0_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 5'd16));
assign videooutsoc_csrbank1_core_initiator_vsync_start1_r = videooutsoc_interface1_bank_bus_dat_w[3:0];
assign videooutsoc_csrbank1_core_initiator_vsync_start1_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 5'd17));
assign videooutsoc_csrbank1_core_initiator_vsync_start0_r = videooutsoc_interface1_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank1_core_initiator_vsync_start0_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 5'd18));
assign videooutsoc_csrbank1_core_initiator_vsync_end1_r = videooutsoc_interface1_bank_bus_dat_w[3:0];
assign videooutsoc_csrbank1_core_initiator_vsync_end1_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 5'd19));
assign videooutsoc_csrbank1_core_initiator_vsync_end0_r = videooutsoc_interface1_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank1_core_initiator_vsync_end0_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 5'd20));
assign videooutsoc_csrbank1_core_initiator_vscan1_r = videooutsoc_interface1_bank_bus_dat_w[3:0];
assign videooutsoc_csrbank1_core_initiator_vscan1_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 5'd21));
assign videooutsoc_csrbank1_core_initiator_vscan0_r = videooutsoc_interface1_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank1_core_initiator_vscan0_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 5'd22));
assign videooutsoc_csrbank1_core_initiator_base3_r = videooutsoc_interface1_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank1_core_initiator_base3_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 5'd23));
assign videooutsoc_csrbank1_core_initiator_base2_r = videooutsoc_interface1_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank1_core_initiator_base2_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 5'd24));
assign videooutsoc_csrbank1_core_initiator_base1_r = videooutsoc_interface1_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank1_core_initiator_base1_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 5'd25));
assign videooutsoc_csrbank1_core_initiator_base0_r = videooutsoc_interface1_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank1_core_initiator_base0_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 5'd26));
assign videooutsoc_csrbank1_core_initiator_length3_r = videooutsoc_interface1_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank1_core_initiator_length3_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 5'd27));
assign videooutsoc_csrbank1_core_initiator_length2_r = videooutsoc_interface1_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank1_core_initiator_length2_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 5'd28));
assign videooutsoc_csrbank1_core_initiator_length1_r = videooutsoc_interface1_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank1_core_initiator_length1_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 5'd29));
assign videooutsoc_csrbank1_core_initiator_length0_r = videooutsoc_interface1_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank1_core_initiator_length0_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 5'd30));
assign videooutsoc_csrbank1_driver_clocking_mmcm_reset0_r = videooutsoc_interface1_bank_bus_dat_w[0];
assign videooutsoc_csrbank1_driver_clocking_mmcm_reset0_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 5'd31));
assign hdmi_out0_driver_s7hdmioutclocking_mmcm_read_r = videooutsoc_interface1_bank_bus_dat_w[0];
assign hdmi_out0_driver_s7hdmioutclocking_mmcm_read_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 6'd32));
assign hdmi_out0_driver_s7hdmioutclocking_mmcm_write_r = videooutsoc_interface1_bank_bus_dat_w[0];
assign hdmi_out0_driver_s7hdmioutclocking_mmcm_write_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 6'd33));
assign videooutsoc_csrbank1_driver_clocking_mmcm_drdy_r = videooutsoc_interface1_bank_bus_dat_w[0];
assign videooutsoc_csrbank1_driver_clocking_mmcm_drdy_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 6'd34));
assign videooutsoc_csrbank1_driver_clocking_mmcm_adr0_r = videooutsoc_interface1_bank_bus_dat_w[6:0];
assign videooutsoc_csrbank1_driver_clocking_mmcm_adr0_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 6'd35));
assign videooutsoc_csrbank1_driver_clocking_mmcm_dat_w1_r = videooutsoc_interface1_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank1_driver_clocking_mmcm_dat_w1_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 6'd36));
assign videooutsoc_csrbank1_driver_clocking_mmcm_dat_w0_r = videooutsoc_interface1_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank1_driver_clocking_mmcm_dat_w0_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 6'd37));
assign videooutsoc_csrbank1_driver_clocking_mmcm_dat_r1_r = videooutsoc_interface1_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank1_driver_clocking_mmcm_dat_r1_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 6'd38));
assign videooutsoc_csrbank1_driver_clocking_mmcm_dat_r0_r = videooutsoc_interface1_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank1_driver_clocking_mmcm_dat_r0_re = ((videooutsoc_csrbank1_sel & videooutsoc_interface1_bank_bus_we) & (videooutsoc_interface1_bank_bus_adr[5:0] == 6'd39));
assign hdmi_out0_core_underflow_enable_storage = hdmi_out0_core_underflow_enable_storage_full;
assign videooutsoc_csrbank1_core_underflow_enable0_w = hdmi_out0_core_underflow_enable_storage_full;
assign videooutsoc_csrbank1_core_underflow_counter3_w = hdmi_out0_core_underflow_counter_status[31:24];
assign videooutsoc_csrbank1_core_underflow_counter2_w = hdmi_out0_core_underflow_counter_status[23:16];
assign videooutsoc_csrbank1_core_underflow_counter1_w = hdmi_out0_core_underflow_counter_status[15:8];
assign videooutsoc_csrbank1_core_underflow_counter0_w = hdmi_out0_core_underflow_counter_status[7:0];
assign hdmi_out0_core_initiator_enable_storage = hdmi_out0_core_initiator_enable_storage_full;
assign videooutsoc_csrbank1_core_initiator_enable0_w = hdmi_out0_core_initiator_enable_storage_full;
assign hdmi_out0_core_initiator_csrstorage0_storage = hdmi_out0_core_initiator_csrstorage0_storage_full[11:0];
assign videooutsoc_csrbank1_core_initiator_hres1_w = hdmi_out0_core_initiator_csrstorage0_storage_full[11:8];
assign videooutsoc_csrbank1_core_initiator_hres0_w = hdmi_out0_core_initiator_csrstorage0_storage_full[7:0];
assign hdmi_out0_core_initiator_csrstorage1_storage = hdmi_out0_core_initiator_csrstorage1_storage_full[11:0];
assign videooutsoc_csrbank1_core_initiator_hsync_start1_w = hdmi_out0_core_initiator_csrstorage1_storage_full[11:8];
assign videooutsoc_csrbank1_core_initiator_hsync_start0_w = hdmi_out0_core_initiator_csrstorage1_storage_full[7:0];
assign hdmi_out0_core_initiator_csrstorage2_storage = hdmi_out0_core_initiator_csrstorage2_storage_full[11:0];
assign videooutsoc_csrbank1_core_initiator_hsync_end1_w = hdmi_out0_core_initiator_csrstorage2_storage_full[11:8];
assign videooutsoc_csrbank1_core_initiator_hsync_end0_w = hdmi_out0_core_initiator_csrstorage2_storage_full[7:0];
assign hdmi_out0_core_initiator_csrstorage3_storage = hdmi_out0_core_initiator_csrstorage3_storage_full[11:0];
assign videooutsoc_csrbank1_core_initiator_hscan1_w = hdmi_out0_core_initiator_csrstorage3_storage_full[11:8];
assign videooutsoc_csrbank1_core_initiator_hscan0_w = hdmi_out0_core_initiator_csrstorage3_storage_full[7:0];
assign hdmi_out0_core_initiator_csrstorage4_storage = hdmi_out0_core_initiator_csrstorage4_storage_full[11:0];
assign videooutsoc_csrbank1_core_initiator_vres1_w = hdmi_out0_core_initiator_csrstorage4_storage_full[11:8];
assign videooutsoc_csrbank1_core_initiator_vres0_w = hdmi_out0_core_initiator_csrstorage4_storage_full[7:0];
assign hdmi_out0_core_initiator_csrstorage5_storage = hdmi_out0_core_initiator_csrstorage5_storage_full[11:0];
assign videooutsoc_csrbank1_core_initiator_vsync_start1_w = hdmi_out0_core_initiator_csrstorage5_storage_full[11:8];
assign videooutsoc_csrbank1_core_initiator_vsync_start0_w = hdmi_out0_core_initiator_csrstorage5_storage_full[7:0];
assign hdmi_out0_core_initiator_csrstorage6_storage = hdmi_out0_core_initiator_csrstorage6_storage_full[11:0];
assign videooutsoc_csrbank1_core_initiator_vsync_end1_w = hdmi_out0_core_initiator_csrstorage6_storage_full[11:8];
assign videooutsoc_csrbank1_core_initiator_vsync_end0_w = hdmi_out0_core_initiator_csrstorage6_storage_full[7:0];
assign hdmi_out0_core_initiator_csrstorage7_storage = hdmi_out0_core_initiator_csrstorage7_storage_full[11:0];
assign videooutsoc_csrbank1_core_initiator_vscan1_w = hdmi_out0_core_initiator_csrstorage7_storage_full[11:8];
assign videooutsoc_csrbank1_core_initiator_vscan0_w = hdmi_out0_core_initiator_csrstorage7_storage_full[7:0];
assign hdmi_out0_core_initiator_csrstorage8_storage = hdmi_out0_core_initiator_csrstorage8_storage_full[31:0];
assign videooutsoc_csrbank1_core_initiator_base3_w = hdmi_out0_core_initiator_csrstorage8_storage_full[31:24];
assign videooutsoc_csrbank1_core_initiator_base2_w = hdmi_out0_core_initiator_csrstorage8_storage_full[23:16];
assign videooutsoc_csrbank1_core_initiator_base1_w = hdmi_out0_core_initiator_csrstorage8_storage_full[15:8];
assign videooutsoc_csrbank1_core_initiator_base0_w = hdmi_out0_core_initiator_csrstorage8_storage_full[7:0];
assign hdmi_out0_core_initiator_csrstorage9_storage = hdmi_out0_core_initiator_csrstorage9_storage_full[31:0];
assign videooutsoc_csrbank1_core_initiator_length3_w = hdmi_out0_core_initiator_csrstorage9_storage_full[31:24];
assign videooutsoc_csrbank1_core_initiator_length2_w = hdmi_out0_core_initiator_csrstorage9_storage_full[23:16];
assign videooutsoc_csrbank1_core_initiator_length1_w = hdmi_out0_core_initiator_csrstorage9_storage_full[15:8];
assign videooutsoc_csrbank1_core_initiator_length0_w = hdmi_out0_core_initiator_csrstorage9_storage_full[7:0];
assign hdmi_out0_driver_s7hdmioutclocking_mmcm_reset_storage = hdmi_out0_driver_s7hdmioutclocking_mmcm_reset_storage_full;
assign videooutsoc_csrbank1_driver_clocking_mmcm_reset0_w = hdmi_out0_driver_s7hdmioutclocking_mmcm_reset_storage_full;
assign videooutsoc_csrbank1_driver_clocking_mmcm_drdy_w = hdmi_out0_driver_s7hdmioutclocking_mmcm_drdy_status;
assign hdmi_out0_driver_s7hdmioutclocking_mmcm_adr_storage = hdmi_out0_driver_s7hdmioutclocking_mmcm_adr_storage_full[6:0];
assign videooutsoc_csrbank1_driver_clocking_mmcm_adr0_w = hdmi_out0_driver_s7hdmioutclocking_mmcm_adr_storage_full[6:0];
assign hdmi_out0_driver_s7hdmioutclocking_mmcm_dat_w_storage = hdmi_out0_driver_s7hdmioutclocking_mmcm_dat_w_storage_full[15:0];
assign videooutsoc_csrbank1_driver_clocking_mmcm_dat_w1_w = hdmi_out0_driver_s7hdmioutclocking_mmcm_dat_w_storage_full[15:8];
assign videooutsoc_csrbank1_driver_clocking_mmcm_dat_w0_w = hdmi_out0_driver_s7hdmioutclocking_mmcm_dat_w_storage_full[7:0];
assign videooutsoc_csrbank1_driver_clocking_mmcm_dat_r1_w = hdmi_out0_driver_s7hdmioutclocking_mmcm_dat_r_status[15:8];
assign videooutsoc_csrbank1_driver_clocking_mmcm_dat_r0_w = hdmi_out0_driver_s7hdmioutclocking_mmcm_dat_r_status[7:0];
assign videooutsoc_sel = (videooutsoc_sram_bus_adr[13:9] == 2'd3);
always @(*) begin
	videooutsoc_sram_bus_dat_r <= 8'd0;
	if (videooutsoc_sel_r) begin
		videooutsoc_sram_bus_dat_r <= videooutsoc_dat_r;
	end
end
assign videooutsoc_adr = videooutsoc_sram_bus_adr[4:0];
assign videooutsoc_csrbank2_sel = (videooutsoc_interface2_bank_bus_adr[13:9] == 4'd13);
assign videooutsoc_csrbank2_dna_id7_r = videooutsoc_interface2_bank_bus_dat_w[0];
assign videooutsoc_csrbank2_dna_id7_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 1'd0));
assign videooutsoc_csrbank2_dna_id6_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_dna_id6_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 1'd1));
assign videooutsoc_csrbank2_dna_id5_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_dna_id5_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 2'd2));
assign videooutsoc_csrbank2_dna_id4_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_dna_id4_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 2'd3));
assign videooutsoc_csrbank2_dna_id3_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_dna_id3_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 3'd4));
assign videooutsoc_csrbank2_dna_id2_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_dna_id2_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 3'd5));
assign videooutsoc_csrbank2_dna_id1_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_dna_id1_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 3'd6));
assign videooutsoc_csrbank2_dna_id0_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_dna_id0_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 3'd7));
assign videooutsoc_csrbank2_git_commit19_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_git_commit19_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 4'd8));
assign videooutsoc_csrbank2_git_commit18_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_git_commit18_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 4'd9));
assign videooutsoc_csrbank2_git_commit17_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_git_commit17_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 4'd10));
assign videooutsoc_csrbank2_git_commit16_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_git_commit16_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 4'd11));
assign videooutsoc_csrbank2_git_commit15_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_git_commit15_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 4'd12));
assign videooutsoc_csrbank2_git_commit14_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_git_commit14_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 4'd13));
assign videooutsoc_csrbank2_git_commit13_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_git_commit13_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 4'd14));
assign videooutsoc_csrbank2_git_commit12_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_git_commit12_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 4'd15));
assign videooutsoc_csrbank2_git_commit11_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_git_commit11_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 5'd16));
assign videooutsoc_csrbank2_git_commit10_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_git_commit10_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 5'd17));
assign videooutsoc_csrbank2_git_commit9_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_git_commit9_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 5'd18));
assign videooutsoc_csrbank2_git_commit8_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_git_commit8_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 5'd19));
assign videooutsoc_csrbank2_git_commit7_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_git_commit7_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 5'd20));
assign videooutsoc_csrbank2_git_commit6_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_git_commit6_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 5'd21));
assign videooutsoc_csrbank2_git_commit5_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_git_commit5_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 5'd22));
assign videooutsoc_csrbank2_git_commit4_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_git_commit4_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 5'd23));
assign videooutsoc_csrbank2_git_commit3_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_git_commit3_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 5'd24));
assign videooutsoc_csrbank2_git_commit2_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_git_commit2_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 5'd25));
assign videooutsoc_csrbank2_git_commit1_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_git_commit1_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 5'd26));
assign videooutsoc_csrbank2_git_commit0_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_git_commit0_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 5'd27));
assign videooutsoc_csrbank2_platform_platform7_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_platform_platform7_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 5'd28));
assign videooutsoc_csrbank2_platform_platform6_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_platform_platform6_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 5'd29));
assign videooutsoc_csrbank2_platform_platform5_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_platform_platform5_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 5'd30));
assign videooutsoc_csrbank2_platform_platform4_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_platform_platform4_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 5'd31));
assign videooutsoc_csrbank2_platform_platform3_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_platform_platform3_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 6'd32));
assign videooutsoc_csrbank2_platform_platform2_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_platform_platform2_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 6'd33));
assign videooutsoc_csrbank2_platform_platform1_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_platform_platform1_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 6'd34));
assign videooutsoc_csrbank2_platform_platform0_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_platform_platform0_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 6'd35));
assign videooutsoc_csrbank2_platform_target7_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_platform_target7_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 6'd36));
assign videooutsoc_csrbank2_platform_target6_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_platform_target6_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 6'd37));
assign videooutsoc_csrbank2_platform_target5_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_platform_target5_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 6'd38));
assign videooutsoc_csrbank2_platform_target4_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_platform_target4_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 6'd39));
assign videooutsoc_csrbank2_platform_target3_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_platform_target3_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 6'd40));
assign videooutsoc_csrbank2_platform_target2_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_platform_target2_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 6'd41));
assign videooutsoc_csrbank2_platform_target1_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_platform_target1_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 6'd42));
assign videooutsoc_csrbank2_platform_target0_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_platform_target0_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 6'd43));
assign videooutsoc_csrbank2_xadc_temperature1_r = videooutsoc_interface2_bank_bus_dat_w[3:0];
assign videooutsoc_csrbank2_xadc_temperature1_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 6'd44));
assign videooutsoc_csrbank2_xadc_temperature0_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_xadc_temperature0_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 6'd45));
assign videooutsoc_csrbank2_xadc_vccint1_r = videooutsoc_interface2_bank_bus_dat_w[3:0];
assign videooutsoc_csrbank2_xadc_vccint1_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 6'd46));
assign videooutsoc_csrbank2_xadc_vccint0_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_xadc_vccint0_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 6'd47));
assign videooutsoc_csrbank2_xadc_vccaux1_r = videooutsoc_interface2_bank_bus_dat_w[3:0];
assign videooutsoc_csrbank2_xadc_vccaux1_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 6'd48));
assign videooutsoc_csrbank2_xadc_vccaux0_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_xadc_vccaux0_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 6'd49));
assign videooutsoc_csrbank2_xadc_vccbram1_r = videooutsoc_interface2_bank_bus_dat_w[3:0];
assign videooutsoc_csrbank2_xadc_vccbram1_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 6'd50));
assign videooutsoc_csrbank2_xadc_vccbram0_r = videooutsoc_interface2_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank2_xadc_vccbram0_re = ((videooutsoc_csrbank2_sel & videooutsoc_interface2_bank_bus_we) & (videooutsoc_interface2_bank_bus_adr[5:0] == 6'd51));
assign videooutsoc_csrbank2_dna_id7_w = videooutsoc_dna_status[56];
assign videooutsoc_csrbank2_dna_id6_w = videooutsoc_dna_status[55:48];
assign videooutsoc_csrbank2_dna_id5_w = videooutsoc_dna_status[47:40];
assign videooutsoc_csrbank2_dna_id4_w = videooutsoc_dna_status[39:32];
assign videooutsoc_csrbank2_dna_id3_w = videooutsoc_dna_status[31:24];
assign videooutsoc_csrbank2_dna_id2_w = videooutsoc_dna_status[23:16];
assign videooutsoc_csrbank2_dna_id1_w = videooutsoc_dna_status[15:8];
assign videooutsoc_csrbank2_dna_id0_w = videooutsoc_dna_status[7:0];
assign videooutsoc_csrbank2_git_commit19_w = videooutsoc_git_status[159:152];
assign videooutsoc_csrbank2_git_commit18_w = videooutsoc_git_status[151:144];
assign videooutsoc_csrbank2_git_commit17_w = videooutsoc_git_status[143:136];
assign videooutsoc_csrbank2_git_commit16_w = videooutsoc_git_status[135:128];
assign videooutsoc_csrbank2_git_commit15_w = videooutsoc_git_status[127:120];
assign videooutsoc_csrbank2_git_commit14_w = videooutsoc_git_status[119:112];
assign videooutsoc_csrbank2_git_commit13_w = videooutsoc_git_status[111:104];
assign videooutsoc_csrbank2_git_commit12_w = videooutsoc_git_status[103:96];
assign videooutsoc_csrbank2_git_commit11_w = videooutsoc_git_status[95:88];
assign videooutsoc_csrbank2_git_commit10_w = videooutsoc_git_status[87:80];
assign videooutsoc_csrbank2_git_commit9_w = videooutsoc_git_status[79:72];
assign videooutsoc_csrbank2_git_commit8_w = videooutsoc_git_status[71:64];
assign videooutsoc_csrbank2_git_commit7_w = videooutsoc_git_status[63:56];
assign videooutsoc_csrbank2_git_commit6_w = videooutsoc_git_status[55:48];
assign videooutsoc_csrbank2_git_commit5_w = videooutsoc_git_status[47:40];
assign videooutsoc_csrbank2_git_commit4_w = videooutsoc_git_status[39:32];
assign videooutsoc_csrbank2_git_commit3_w = videooutsoc_git_status[31:24];
assign videooutsoc_csrbank2_git_commit2_w = videooutsoc_git_status[23:16];
assign videooutsoc_csrbank2_git_commit1_w = videooutsoc_git_status[15:8];
assign videooutsoc_csrbank2_git_commit0_w = videooutsoc_git_status[7:0];
assign videooutsoc_csrbank2_platform_platform7_w = videooutsoc_platform_status[63:56];
assign videooutsoc_csrbank2_platform_platform6_w = videooutsoc_platform_status[55:48];
assign videooutsoc_csrbank2_platform_platform5_w = videooutsoc_platform_status[47:40];
assign videooutsoc_csrbank2_platform_platform4_w = videooutsoc_platform_status[39:32];
assign videooutsoc_csrbank2_platform_platform3_w = videooutsoc_platform_status[31:24];
assign videooutsoc_csrbank2_platform_platform2_w = videooutsoc_platform_status[23:16];
assign videooutsoc_csrbank2_platform_platform1_w = videooutsoc_platform_status[15:8];
assign videooutsoc_csrbank2_platform_platform0_w = videooutsoc_platform_status[7:0];
assign videooutsoc_csrbank2_platform_target7_w = videooutsoc_target_status[63:56];
assign videooutsoc_csrbank2_platform_target6_w = videooutsoc_target_status[55:48];
assign videooutsoc_csrbank2_platform_target5_w = videooutsoc_target_status[47:40];
assign videooutsoc_csrbank2_platform_target4_w = videooutsoc_target_status[39:32];
assign videooutsoc_csrbank2_platform_target3_w = videooutsoc_target_status[31:24];
assign videooutsoc_csrbank2_platform_target2_w = videooutsoc_target_status[23:16];
assign videooutsoc_csrbank2_platform_target1_w = videooutsoc_target_status[15:8];
assign videooutsoc_csrbank2_platform_target0_w = videooutsoc_target_status[7:0];
assign videooutsoc_csrbank2_xadc_temperature1_w = videooutsoc_temperature_status[11:8];
assign videooutsoc_csrbank2_xadc_temperature0_w = videooutsoc_temperature_status[7:0];
assign videooutsoc_csrbank2_xadc_vccint1_w = videooutsoc_vccint_status[11:8];
assign videooutsoc_csrbank2_xadc_vccint0_w = videooutsoc_vccint_status[7:0];
assign videooutsoc_csrbank2_xadc_vccaux1_w = videooutsoc_vccaux_status[11:8];
assign videooutsoc_csrbank2_xadc_vccaux0_w = videooutsoc_vccaux_status[7:0];
assign videooutsoc_csrbank2_xadc_vccbram1_w = videooutsoc_vccbram_status[11:8];
assign videooutsoc_csrbank2_xadc_vccbram0_w = videooutsoc_vccbram_status[7:0];
assign videooutsoc_csrbank3_sel = (videooutsoc_interface3_bank_bus_adr[13:9] == 4'd8);
assign videooutsoc_csrbank3_dfii_control0_r = videooutsoc_interface3_bank_bus_dat_w[3:0];
assign videooutsoc_csrbank3_dfii_control0_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 1'd0));
assign videooutsoc_csrbank3_dfii_pi0_command0_r = videooutsoc_interface3_bank_bus_dat_w[5:0];
assign videooutsoc_csrbank3_dfii_pi0_command0_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 1'd1));
assign videooutsoc_sdram_phaseinjector0_command_issue_r = videooutsoc_interface3_bank_bus_dat_w[0];
assign videooutsoc_sdram_phaseinjector0_command_issue_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 2'd2));
assign videooutsoc_csrbank3_dfii_pi0_address1_r = videooutsoc_interface3_bank_bus_dat_w[5:0];
assign videooutsoc_csrbank3_dfii_pi0_address1_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 2'd3));
assign videooutsoc_csrbank3_dfii_pi0_address0_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi0_address0_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 3'd4));
assign videooutsoc_csrbank3_dfii_pi0_baddress0_r = videooutsoc_interface3_bank_bus_dat_w[2:0];
assign videooutsoc_csrbank3_dfii_pi0_baddress0_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 3'd5));
assign videooutsoc_csrbank3_dfii_pi0_wrdata7_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi0_wrdata7_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 3'd6));
assign videooutsoc_csrbank3_dfii_pi0_wrdata6_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi0_wrdata6_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 3'd7));
assign videooutsoc_csrbank3_dfii_pi0_wrdata5_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi0_wrdata5_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 4'd8));
assign videooutsoc_csrbank3_dfii_pi0_wrdata4_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi0_wrdata4_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 4'd9));
assign videooutsoc_csrbank3_dfii_pi0_wrdata3_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi0_wrdata3_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 4'd10));
assign videooutsoc_csrbank3_dfii_pi0_wrdata2_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi0_wrdata2_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 4'd11));
assign videooutsoc_csrbank3_dfii_pi0_wrdata1_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi0_wrdata1_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 4'd12));
assign videooutsoc_csrbank3_dfii_pi0_wrdata0_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi0_wrdata0_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 4'd13));
assign videooutsoc_csrbank3_dfii_pi0_rddata7_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi0_rddata7_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 4'd14));
assign videooutsoc_csrbank3_dfii_pi0_rddata6_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi0_rddata6_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 4'd15));
assign videooutsoc_csrbank3_dfii_pi0_rddata5_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi0_rddata5_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 5'd16));
assign videooutsoc_csrbank3_dfii_pi0_rddata4_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi0_rddata4_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 5'd17));
assign videooutsoc_csrbank3_dfii_pi0_rddata3_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi0_rddata3_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 5'd18));
assign videooutsoc_csrbank3_dfii_pi0_rddata2_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi0_rddata2_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 5'd19));
assign videooutsoc_csrbank3_dfii_pi0_rddata1_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi0_rddata1_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 5'd20));
assign videooutsoc_csrbank3_dfii_pi0_rddata0_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi0_rddata0_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 5'd21));
assign videooutsoc_csrbank3_dfii_pi1_command0_r = videooutsoc_interface3_bank_bus_dat_w[5:0];
assign videooutsoc_csrbank3_dfii_pi1_command0_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 5'd22));
assign videooutsoc_sdram_phaseinjector1_command_issue_r = videooutsoc_interface3_bank_bus_dat_w[0];
assign videooutsoc_sdram_phaseinjector1_command_issue_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 5'd23));
assign videooutsoc_csrbank3_dfii_pi1_address1_r = videooutsoc_interface3_bank_bus_dat_w[5:0];
assign videooutsoc_csrbank3_dfii_pi1_address1_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 5'd24));
assign videooutsoc_csrbank3_dfii_pi1_address0_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi1_address0_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 5'd25));
assign videooutsoc_csrbank3_dfii_pi1_baddress0_r = videooutsoc_interface3_bank_bus_dat_w[2:0];
assign videooutsoc_csrbank3_dfii_pi1_baddress0_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 5'd26));
assign videooutsoc_csrbank3_dfii_pi1_wrdata7_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi1_wrdata7_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 5'd27));
assign videooutsoc_csrbank3_dfii_pi1_wrdata6_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi1_wrdata6_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 5'd28));
assign videooutsoc_csrbank3_dfii_pi1_wrdata5_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi1_wrdata5_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 5'd29));
assign videooutsoc_csrbank3_dfii_pi1_wrdata4_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi1_wrdata4_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 5'd30));
assign videooutsoc_csrbank3_dfii_pi1_wrdata3_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi1_wrdata3_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 5'd31));
assign videooutsoc_csrbank3_dfii_pi1_wrdata2_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi1_wrdata2_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd32));
assign videooutsoc_csrbank3_dfii_pi1_wrdata1_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi1_wrdata1_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd33));
assign videooutsoc_csrbank3_dfii_pi1_wrdata0_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi1_wrdata0_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd34));
assign videooutsoc_csrbank3_dfii_pi1_rddata7_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi1_rddata7_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd35));
assign videooutsoc_csrbank3_dfii_pi1_rddata6_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi1_rddata6_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd36));
assign videooutsoc_csrbank3_dfii_pi1_rddata5_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi1_rddata5_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd37));
assign videooutsoc_csrbank3_dfii_pi1_rddata4_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi1_rddata4_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd38));
assign videooutsoc_csrbank3_dfii_pi1_rddata3_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi1_rddata3_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd39));
assign videooutsoc_csrbank3_dfii_pi1_rddata2_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi1_rddata2_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd40));
assign videooutsoc_csrbank3_dfii_pi1_rddata1_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi1_rddata1_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd41));
assign videooutsoc_csrbank3_dfii_pi1_rddata0_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi1_rddata0_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd42));
assign videooutsoc_csrbank3_dfii_pi2_command0_r = videooutsoc_interface3_bank_bus_dat_w[5:0];
assign videooutsoc_csrbank3_dfii_pi2_command0_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd43));
assign videooutsoc_sdram_phaseinjector2_command_issue_r = videooutsoc_interface3_bank_bus_dat_w[0];
assign videooutsoc_sdram_phaseinjector2_command_issue_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd44));
assign videooutsoc_csrbank3_dfii_pi2_address1_r = videooutsoc_interface3_bank_bus_dat_w[5:0];
assign videooutsoc_csrbank3_dfii_pi2_address1_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd45));
assign videooutsoc_csrbank3_dfii_pi2_address0_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi2_address0_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd46));
assign videooutsoc_csrbank3_dfii_pi2_baddress0_r = videooutsoc_interface3_bank_bus_dat_w[2:0];
assign videooutsoc_csrbank3_dfii_pi2_baddress0_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd47));
assign videooutsoc_csrbank3_dfii_pi2_wrdata7_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi2_wrdata7_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd48));
assign videooutsoc_csrbank3_dfii_pi2_wrdata6_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi2_wrdata6_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd49));
assign videooutsoc_csrbank3_dfii_pi2_wrdata5_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi2_wrdata5_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd50));
assign videooutsoc_csrbank3_dfii_pi2_wrdata4_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi2_wrdata4_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd51));
assign videooutsoc_csrbank3_dfii_pi2_wrdata3_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi2_wrdata3_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd52));
assign videooutsoc_csrbank3_dfii_pi2_wrdata2_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi2_wrdata2_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd53));
assign videooutsoc_csrbank3_dfii_pi2_wrdata1_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi2_wrdata1_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd54));
assign videooutsoc_csrbank3_dfii_pi2_wrdata0_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi2_wrdata0_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd55));
assign videooutsoc_csrbank3_dfii_pi2_rddata7_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi2_rddata7_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd56));
assign videooutsoc_csrbank3_dfii_pi2_rddata6_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi2_rddata6_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd57));
assign videooutsoc_csrbank3_dfii_pi2_rddata5_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi2_rddata5_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd58));
assign videooutsoc_csrbank3_dfii_pi2_rddata4_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi2_rddata4_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd59));
assign videooutsoc_csrbank3_dfii_pi2_rddata3_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi2_rddata3_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd60));
assign videooutsoc_csrbank3_dfii_pi2_rddata2_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi2_rddata2_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd61));
assign videooutsoc_csrbank3_dfii_pi2_rddata1_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi2_rddata1_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd62));
assign videooutsoc_csrbank3_dfii_pi2_rddata0_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi2_rddata0_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 6'd63));
assign videooutsoc_csrbank3_dfii_pi3_command0_r = videooutsoc_interface3_bank_bus_dat_w[5:0];
assign videooutsoc_csrbank3_dfii_pi3_command0_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd64));
assign videooutsoc_sdram_phaseinjector3_command_issue_r = videooutsoc_interface3_bank_bus_dat_w[0];
assign videooutsoc_sdram_phaseinjector3_command_issue_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd65));
assign videooutsoc_csrbank3_dfii_pi3_address1_r = videooutsoc_interface3_bank_bus_dat_w[5:0];
assign videooutsoc_csrbank3_dfii_pi3_address1_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd66));
assign videooutsoc_csrbank3_dfii_pi3_address0_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi3_address0_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd67));
assign videooutsoc_csrbank3_dfii_pi3_baddress0_r = videooutsoc_interface3_bank_bus_dat_w[2:0];
assign videooutsoc_csrbank3_dfii_pi3_baddress0_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd68));
assign videooutsoc_csrbank3_dfii_pi3_wrdata7_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi3_wrdata7_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd69));
assign videooutsoc_csrbank3_dfii_pi3_wrdata6_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi3_wrdata6_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd70));
assign videooutsoc_csrbank3_dfii_pi3_wrdata5_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi3_wrdata5_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd71));
assign videooutsoc_csrbank3_dfii_pi3_wrdata4_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi3_wrdata4_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd72));
assign videooutsoc_csrbank3_dfii_pi3_wrdata3_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi3_wrdata3_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd73));
assign videooutsoc_csrbank3_dfii_pi3_wrdata2_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi3_wrdata2_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd74));
assign videooutsoc_csrbank3_dfii_pi3_wrdata1_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi3_wrdata1_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd75));
assign videooutsoc_csrbank3_dfii_pi3_wrdata0_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi3_wrdata0_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd76));
assign videooutsoc_csrbank3_dfii_pi3_rddata7_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi3_rddata7_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd77));
assign videooutsoc_csrbank3_dfii_pi3_rddata6_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi3_rddata6_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd78));
assign videooutsoc_csrbank3_dfii_pi3_rddata5_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi3_rddata5_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd79));
assign videooutsoc_csrbank3_dfii_pi3_rddata4_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi3_rddata4_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd80));
assign videooutsoc_csrbank3_dfii_pi3_rddata3_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi3_rddata3_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd81));
assign videooutsoc_csrbank3_dfii_pi3_rddata2_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi3_rddata2_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd82));
assign videooutsoc_csrbank3_dfii_pi3_rddata1_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi3_rddata1_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd83));
assign videooutsoc_csrbank3_dfii_pi3_rddata0_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_dfii_pi3_rddata0_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd84));
assign videooutsoc_sdram_bandwidth_update_r = videooutsoc_interface3_bank_bus_dat_w[0];
assign videooutsoc_sdram_bandwidth_update_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd85));
assign videooutsoc_csrbank3_controller_bandwidth_nreads2_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_controller_bandwidth_nreads2_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd86));
assign videooutsoc_csrbank3_controller_bandwidth_nreads1_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_controller_bandwidth_nreads1_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd87));
assign videooutsoc_csrbank3_controller_bandwidth_nreads0_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_controller_bandwidth_nreads0_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd88));
assign videooutsoc_csrbank3_controller_bandwidth_nwrites2_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_controller_bandwidth_nwrites2_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd89));
assign videooutsoc_csrbank3_controller_bandwidth_nwrites1_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_controller_bandwidth_nwrites1_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd90));
assign videooutsoc_csrbank3_controller_bandwidth_nwrites0_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_controller_bandwidth_nwrites0_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd91));
assign videooutsoc_csrbank3_controller_bandwidth_data_width1_r = videooutsoc_interface3_bank_bus_dat_w[0];
assign videooutsoc_csrbank3_controller_bandwidth_data_width1_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd92));
assign videooutsoc_csrbank3_controller_bandwidth_data_width0_r = videooutsoc_interface3_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank3_controller_bandwidth_data_width0_re = ((videooutsoc_csrbank3_sel & videooutsoc_interface3_bank_bus_we) & (videooutsoc_interface3_bank_bus_adr[6:0] == 7'd93));
assign videooutsoc_sdram_storage = videooutsoc_sdram_storage_full[3:0];
assign videooutsoc_csrbank3_dfii_control0_w = videooutsoc_sdram_storage_full[3:0];
assign videooutsoc_sdram_phaseinjector0_command_storage = videooutsoc_sdram_phaseinjector0_command_storage_full[5:0];
assign videooutsoc_csrbank3_dfii_pi0_command0_w = videooutsoc_sdram_phaseinjector0_command_storage_full[5:0];
assign videooutsoc_sdram_phaseinjector0_address_storage = videooutsoc_sdram_phaseinjector0_address_storage_full[13:0];
assign videooutsoc_csrbank3_dfii_pi0_address1_w = videooutsoc_sdram_phaseinjector0_address_storage_full[13:8];
assign videooutsoc_csrbank3_dfii_pi0_address0_w = videooutsoc_sdram_phaseinjector0_address_storage_full[7:0];
assign videooutsoc_sdram_phaseinjector0_baddress_storage = videooutsoc_sdram_phaseinjector0_baddress_storage_full[2:0];
assign videooutsoc_csrbank3_dfii_pi0_baddress0_w = videooutsoc_sdram_phaseinjector0_baddress_storage_full[2:0];
assign videooutsoc_sdram_phaseinjector0_wrdata_storage = videooutsoc_sdram_phaseinjector0_wrdata_storage_full[63:0];
assign videooutsoc_csrbank3_dfii_pi0_wrdata7_w = videooutsoc_sdram_phaseinjector0_wrdata_storage_full[63:56];
assign videooutsoc_csrbank3_dfii_pi0_wrdata6_w = videooutsoc_sdram_phaseinjector0_wrdata_storage_full[55:48];
assign videooutsoc_csrbank3_dfii_pi0_wrdata5_w = videooutsoc_sdram_phaseinjector0_wrdata_storage_full[47:40];
assign videooutsoc_csrbank3_dfii_pi0_wrdata4_w = videooutsoc_sdram_phaseinjector0_wrdata_storage_full[39:32];
assign videooutsoc_csrbank3_dfii_pi0_wrdata3_w = videooutsoc_sdram_phaseinjector0_wrdata_storage_full[31:24];
assign videooutsoc_csrbank3_dfii_pi0_wrdata2_w = videooutsoc_sdram_phaseinjector0_wrdata_storage_full[23:16];
assign videooutsoc_csrbank3_dfii_pi0_wrdata1_w = videooutsoc_sdram_phaseinjector0_wrdata_storage_full[15:8];
assign videooutsoc_csrbank3_dfii_pi0_wrdata0_w = videooutsoc_sdram_phaseinjector0_wrdata_storage_full[7:0];
assign videooutsoc_csrbank3_dfii_pi0_rddata7_w = videooutsoc_sdram_phaseinjector0_status[63:56];
assign videooutsoc_csrbank3_dfii_pi0_rddata6_w = videooutsoc_sdram_phaseinjector0_status[55:48];
assign videooutsoc_csrbank3_dfii_pi0_rddata5_w = videooutsoc_sdram_phaseinjector0_status[47:40];
assign videooutsoc_csrbank3_dfii_pi0_rddata4_w = videooutsoc_sdram_phaseinjector0_status[39:32];
assign videooutsoc_csrbank3_dfii_pi0_rddata3_w = videooutsoc_sdram_phaseinjector0_status[31:24];
assign videooutsoc_csrbank3_dfii_pi0_rddata2_w = videooutsoc_sdram_phaseinjector0_status[23:16];
assign videooutsoc_csrbank3_dfii_pi0_rddata1_w = videooutsoc_sdram_phaseinjector0_status[15:8];
assign videooutsoc_csrbank3_dfii_pi0_rddata0_w = videooutsoc_sdram_phaseinjector0_status[7:0];
assign videooutsoc_sdram_phaseinjector1_command_storage = videooutsoc_sdram_phaseinjector1_command_storage_full[5:0];
assign videooutsoc_csrbank3_dfii_pi1_command0_w = videooutsoc_sdram_phaseinjector1_command_storage_full[5:0];
assign videooutsoc_sdram_phaseinjector1_address_storage = videooutsoc_sdram_phaseinjector1_address_storage_full[13:0];
assign videooutsoc_csrbank3_dfii_pi1_address1_w = videooutsoc_sdram_phaseinjector1_address_storage_full[13:8];
assign videooutsoc_csrbank3_dfii_pi1_address0_w = videooutsoc_sdram_phaseinjector1_address_storage_full[7:0];
assign videooutsoc_sdram_phaseinjector1_baddress_storage = videooutsoc_sdram_phaseinjector1_baddress_storage_full[2:0];
assign videooutsoc_csrbank3_dfii_pi1_baddress0_w = videooutsoc_sdram_phaseinjector1_baddress_storage_full[2:0];
assign videooutsoc_sdram_phaseinjector1_wrdata_storage = videooutsoc_sdram_phaseinjector1_wrdata_storage_full[63:0];
assign videooutsoc_csrbank3_dfii_pi1_wrdata7_w = videooutsoc_sdram_phaseinjector1_wrdata_storage_full[63:56];
assign videooutsoc_csrbank3_dfii_pi1_wrdata6_w = videooutsoc_sdram_phaseinjector1_wrdata_storage_full[55:48];
assign videooutsoc_csrbank3_dfii_pi1_wrdata5_w = videooutsoc_sdram_phaseinjector1_wrdata_storage_full[47:40];
assign videooutsoc_csrbank3_dfii_pi1_wrdata4_w = videooutsoc_sdram_phaseinjector1_wrdata_storage_full[39:32];
assign videooutsoc_csrbank3_dfii_pi1_wrdata3_w = videooutsoc_sdram_phaseinjector1_wrdata_storage_full[31:24];
assign videooutsoc_csrbank3_dfii_pi1_wrdata2_w = videooutsoc_sdram_phaseinjector1_wrdata_storage_full[23:16];
assign videooutsoc_csrbank3_dfii_pi1_wrdata1_w = videooutsoc_sdram_phaseinjector1_wrdata_storage_full[15:8];
assign videooutsoc_csrbank3_dfii_pi1_wrdata0_w = videooutsoc_sdram_phaseinjector1_wrdata_storage_full[7:0];
assign videooutsoc_csrbank3_dfii_pi1_rddata7_w = videooutsoc_sdram_phaseinjector1_status[63:56];
assign videooutsoc_csrbank3_dfii_pi1_rddata6_w = videooutsoc_sdram_phaseinjector1_status[55:48];
assign videooutsoc_csrbank3_dfii_pi1_rddata5_w = videooutsoc_sdram_phaseinjector1_status[47:40];
assign videooutsoc_csrbank3_dfii_pi1_rddata4_w = videooutsoc_sdram_phaseinjector1_status[39:32];
assign videooutsoc_csrbank3_dfii_pi1_rddata3_w = videooutsoc_sdram_phaseinjector1_status[31:24];
assign videooutsoc_csrbank3_dfii_pi1_rddata2_w = videooutsoc_sdram_phaseinjector1_status[23:16];
assign videooutsoc_csrbank3_dfii_pi1_rddata1_w = videooutsoc_sdram_phaseinjector1_status[15:8];
assign videooutsoc_csrbank3_dfii_pi1_rddata0_w = videooutsoc_sdram_phaseinjector1_status[7:0];
assign videooutsoc_sdram_phaseinjector2_command_storage = videooutsoc_sdram_phaseinjector2_command_storage_full[5:0];
assign videooutsoc_csrbank3_dfii_pi2_command0_w = videooutsoc_sdram_phaseinjector2_command_storage_full[5:0];
assign videooutsoc_sdram_phaseinjector2_address_storage = videooutsoc_sdram_phaseinjector2_address_storage_full[13:0];
assign videooutsoc_csrbank3_dfii_pi2_address1_w = videooutsoc_sdram_phaseinjector2_address_storage_full[13:8];
assign videooutsoc_csrbank3_dfii_pi2_address0_w = videooutsoc_sdram_phaseinjector2_address_storage_full[7:0];
assign videooutsoc_sdram_phaseinjector2_baddress_storage = videooutsoc_sdram_phaseinjector2_baddress_storage_full[2:0];
assign videooutsoc_csrbank3_dfii_pi2_baddress0_w = videooutsoc_sdram_phaseinjector2_baddress_storage_full[2:0];
assign videooutsoc_sdram_phaseinjector2_wrdata_storage = videooutsoc_sdram_phaseinjector2_wrdata_storage_full[63:0];
assign videooutsoc_csrbank3_dfii_pi2_wrdata7_w = videooutsoc_sdram_phaseinjector2_wrdata_storage_full[63:56];
assign videooutsoc_csrbank3_dfii_pi2_wrdata6_w = videooutsoc_sdram_phaseinjector2_wrdata_storage_full[55:48];
assign videooutsoc_csrbank3_dfii_pi2_wrdata5_w = videooutsoc_sdram_phaseinjector2_wrdata_storage_full[47:40];
assign videooutsoc_csrbank3_dfii_pi2_wrdata4_w = videooutsoc_sdram_phaseinjector2_wrdata_storage_full[39:32];
assign videooutsoc_csrbank3_dfii_pi2_wrdata3_w = videooutsoc_sdram_phaseinjector2_wrdata_storage_full[31:24];
assign videooutsoc_csrbank3_dfii_pi2_wrdata2_w = videooutsoc_sdram_phaseinjector2_wrdata_storage_full[23:16];
assign videooutsoc_csrbank3_dfii_pi2_wrdata1_w = videooutsoc_sdram_phaseinjector2_wrdata_storage_full[15:8];
assign videooutsoc_csrbank3_dfii_pi2_wrdata0_w = videooutsoc_sdram_phaseinjector2_wrdata_storage_full[7:0];
assign videooutsoc_csrbank3_dfii_pi2_rddata7_w = videooutsoc_sdram_phaseinjector2_status[63:56];
assign videooutsoc_csrbank3_dfii_pi2_rddata6_w = videooutsoc_sdram_phaseinjector2_status[55:48];
assign videooutsoc_csrbank3_dfii_pi2_rddata5_w = videooutsoc_sdram_phaseinjector2_status[47:40];
assign videooutsoc_csrbank3_dfii_pi2_rddata4_w = videooutsoc_sdram_phaseinjector2_status[39:32];
assign videooutsoc_csrbank3_dfii_pi2_rddata3_w = videooutsoc_sdram_phaseinjector2_status[31:24];
assign videooutsoc_csrbank3_dfii_pi2_rddata2_w = videooutsoc_sdram_phaseinjector2_status[23:16];
assign videooutsoc_csrbank3_dfii_pi2_rddata1_w = videooutsoc_sdram_phaseinjector2_status[15:8];
assign videooutsoc_csrbank3_dfii_pi2_rddata0_w = videooutsoc_sdram_phaseinjector2_status[7:0];
assign videooutsoc_sdram_phaseinjector3_command_storage = videooutsoc_sdram_phaseinjector3_command_storage_full[5:0];
assign videooutsoc_csrbank3_dfii_pi3_command0_w = videooutsoc_sdram_phaseinjector3_command_storage_full[5:0];
assign videooutsoc_sdram_phaseinjector3_address_storage = videooutsoc_sdram_phaseinjector3_address_storage_full[13:0];
assign videooutsoc_csrbank3_dfii_pi3_address1_w = videooutsoc_sdram_phaseinjector3_address_storage_full[13:8];
assign videooutsoc_csrbank3_dfii_pi3_address0_w = videooutsoc_sdram_phaseinjector3_address_storage_full[7:0];
assign videooutsoc_sdram_phaseinjector3_baddress_storage = videooutsoc_sdram_phaseinjector3_baddress_storage_full[2:0];
assign videooutsoc_csrbank3_dfii_pi3_baddress0_w = videooutsoc_sdram_phaseinjector3_baddress_storage_full[2:0];
assign videooutsoc_sdram_phaseinjector3_wrdata_storage = videooutsoc_sdram_phaseinjector3_wrdata_storage_full[63:0];
assign videooutsoc_csrbank3_dfii_pi3_wrdata7_w = videooutsoc_sdram_phaseinjector3_wrdata_storage_full[63:56];
assign videooutsoc_csrbank3_dfii_pi3_wrdata6_w = videooutsoc_sdram_phaseinjector3_wrdata_storage_full[55:48];
assign videooutsoc_csrbank3_dfii_pi3_wrdata5_w = videooutsoc_sdram_phaseinjector3_wrdata_storage_full[47:40];
assign videooutsoc_csrbank3_dfii_pi3_wrdata4_w = videooutsoc_sdram_phaseinjector3_wrdata_storage_full[39:32];
assign videooutsoc_csrbank3_dfii_pi3_wrdata3_w = videooutsoc_sdram_phaseinjector3_wrdata_storage_full[31:24];
assign videooutsoc_csrbank3_dfii_pi3_wrdata2_w = videooutsoc_sdram_phaseinjector3_wrdata_storage_full[23:16];
assign videooutsoc_csrbank3_dfii_pi3_wrdata1_w = videooutsoc_sdram_phaseinjector3_wrdata_storage_full[15:8];
assign videooutsoc_csrbank3_dfii_pi3_wrdata0_w = videooutsoc_sdram_phaseinjector3_wrdata_storage_full[7:0];
assign videooutsoc_csrbank3_dfii_pi3_rddata7_w = videooutsoc_sdram_phaseinjector3_status[63:56];
assign videooutsoc_csrbank3_dfii_pi3_rddata6_w = videooutsoc_sdram_phaseinjector3_status[55:48];
assign videooutsoc_csrbank3_dfii_pi3_rddata5_w = videooutsoc_sdram_phaseinjector3_status[47:40];
assign videooutsoc_csrbank3_dfii_pi3_rddata4_w = videooutsoc_sdram_phaseinjector3_status[39:32];
assign videooutsoc_csrbank3_dfii_pi3_rddata3_w = videooutsoc_sdram_phaseinjector3_status[31:24];
assign videooutsoc_csrbank3_dfii_pi3_rddata2_w = videooutsoc_sdram_phaseinjector3_status[23:16];
assign videooutsoc_csrbank3_dfii_pi3_rddata1_w = videooutsoc_sdram_phaseinjector3_status[15:8];
assign videooutsoc_csrbank3_dfii_pi3_rddata0_w = videooutsoc_sdram_phaseinjector3_status[7:0];
assign videooutsoc_csrbank3_controller_bandwidth_nreads2_w = videooutsoc_sdram_bandwidth_nreads_status[23:16];
assign videooutsoc_csrbank3_controller_bandwidth_nreads1_w = videooutsoc_sdram_bandwidth_nreads_status[15:8];
assign videooutsoc_csrbank3_controller_bandwidth_nreads0_w = videooutsoc_sdram_bandwidth_nreads_status[7:0];
assign videooutsoc_csrbank3_controller_bandwidth_nwrites2_w = videooutsoc_sdram_bandwidth_nwrites_status[23:16];
assign videooutsoc_csrbank3_controller_bandwidth_nwrites1_w = videooutsoc_sdram_bandwidth_nwrites_status[15:8];
assign videooutsoc_csrbank3_controller_bandwidth_nwrites0_w = videooutsoc_sdram_bandwidth_nwrites_status[7:0];
assign videooutsoc_csrbank3_controller_bandwidth_data_width1_w = videooutsoc_sdram_bandwidth_data_width_status[8];
assign videooutsoc_csrbank3_controller_bandwidth_data_width0_w = videooutsoc_sdram_bandwidth_data_width_status[7:0];
assign videooutsoc_csrbank4_sel = (videooutsoc_interface4_bank_bus_adr[13:9] == 3'd4);
assign videooutsoc_csrbank4_load3_r = videooutsoc_interface4_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank4_load3_re = ((videooutsoc_csrbank4_sel & videooutsoc_interface4_bank_bus_we) & (videooutsoc_interface4_bank_bus_adr[4:0] == 1'd0));
assign videooutsoc_csrbank4_load2_r = videooutsoc_interface4_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank4_load2_re = ((videooutsoc_csrbank4_sel & videooutsoc_interface4_bank_bus_we) & (videooutsoc_interface4_bank_bus_adr[4:0] == 1'd1));
assign videooutsoc_csrbank4_load1_r = videooutsoc_interface4_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank4_load1_re = ((videooutsoc_csrbank4_sel & videooutsoc_interface4_bank_bus_we) & (videooutsoc_interface4_bank_bus_adr[4:0] == 2'd2));
assign videooutsoc_csrbank4_load0_r = videooutsoc_interface4_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank4_load0_re = ((videooutsoc_csrbank4_sel & videooutsoc_interface4_bank_bus_we) & (videooutsoc_interface4_bank_bus_adr[4:0] == 2'd3));
assign videooutsoc_csrbank4_reload3_r = videooutsoc_interface4_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank4_reload3_re = ((videooutsoc_csrbank4_sel & videooutsoc_interface4_bank_bus_we) & (videooutsoc_interface4_bank_bus_adr[4:0] == 3'd4));
assign videooutsoc_csrbank4_reload2_r = videooutsoc_interface4_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank4_reload2_re = ((videooutsoc_csrbank4_sel & videooutsoc_interface4_bank_bus_we) & (videooutsoc_interface4_bank_bus_adr[4:0] == 3'd5));
assign videooutsoc_csrbank4_reload1_r = videooutsoc_interface4_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank4_reload1_re = ((videooutsoc_csrbank4_sel & videooutsoc_interface4_bank_bus_we) & (videooutsoc_interface4_bank_bus_adr[4:0] == 3'd6));
assign videooutsoc_csrbank4_reload0_r = videooutsoc_interface4_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank4_reload0_re = ((videooutsoc_csrbank4_sel & videooutsoc_interface4_bank_bus_we) & (videooutsoc_interface4_bank_bus_adr[4:0] == 3'd7));
assign videooutsoc_csrbank4_en0_r = videooutsoc_interface4_bank_bus_dat_w[0];
assign videooutsoc_csrbank4_en0_re = ((videooutsoc_csrbank4_sel & videooutsoc_interface4_bank_bus_we) & (videooutsoc_interface4_bank_bus_adr[4:0] == 4'd8));
assign videooutsoc_videooutsoc_timer0_update_value_r = videooutsoc_interface4_bank_bus_dat_w[0];
assign videooutsoc_videooutsoc_timer0_update_value_re = ((videooutsoc_csrbank4_sel & videooutsoc_interface4_bank_bus_we) & (videooutsoc_interface4_bank_bus_adr[4:0] == 4'd9));
assign videooutsoc_csrbank4_value3_r = videooutsoc_interface4_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank4_value3_re = ((videooutsoc_csrbank4_sel & videooutsoc_interface4_bank_bus_we) & (videooutsoc_interface4_bank_bus_adr[4:0] == 4'd10));
assign videooutsoc_csrbank4_value2_r = videooutsoc_interface4_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank4_value2_re = ((videooutsoc_csrbank4_sel & videooutsoc_interface4_bank_bus_we) & (videooutsoc_interface4_bank_bus_adr[4:0] == 4'd11));
assign videooutsoc_csrbank4_value1_r = videooutsoc_interface4_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank4_value1_re = ((videooutsoc_csrbank4_sel & videooutsoc_interface4_bank_bus_we) & (videooutsoc_interface4_bank_bus_adr[4:0] == 4'd12));
assign videooutsoc_csrbank4_value0_r = videooutsoc_interface4_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank4_value0_re = ((videooutsoc_csrbank4_sel & videooutsoc_interface4_bank_bus_we) & (videooutsoc_interface4_bank_bus_adr[4:0] == 4'd13));
assign videooutsoc_videooutsoc_timer0_eventmanager_status_r = videooutsoc_interface4_bank_bus_dat_w[0];
assign videooutsoc_videooutsoc_timer0_eventmanager_status_re = ((videooutsoc_csrbank4_sel & videooutsoc_interface4_bank_bus_we) & (videooutsoc_interface4_bank_bus_adr[4:0] == 4'd14));
assign videooutsoc_videooutsoc_timer0_eventmanager_pending_r = videooutsoc_interface4_bank_bus_dat_w[0];
assign videooutsoc_videooutsoc_timer0_eventmanager_pending_re = ((videooutsoc_csrbank4_sel & videooutsoc_interface4_bank_bus_we) & (videooutsoc_interface4_bank_bus_adr[4:0] == 4'd15));
assign videooutsoc_csrbank4_ev_enable0_r = videooutsoc_interface4_bank_bus_dat_w[0];
assign videooutsoc_csrbank4_ev_enable0_re = ((videooutsoc_csrbank4_sel & videooutsoc_interface4_bank_bus_we) & (videooutsoc_interface4_bank_bus_adr[4:0] == 5'd16));
assign videooutsoc_videooutsoc_timer0_load_storage = videooutsoc_videooutsoc_timer0_load_storage_full[31:0];
assign videooutsoc_csrbank4_load3_w = videooutsoc_videooutsoc_timer0_load_storage_full[31:24];
assign videooutsoc_csrbank4_load2_w = videooutsoc_videooutsoc_timer0_load_storage_full[23:16];
assign videooutsoc_csrbank4_load1_w = videooutsoc_videooutsoc_timer0_load_storage_full[15:8];
assign videooutsoc_csrbank4_load0_w = videooutsoc_videooutsoc_timer0_load_storage_full[7:0];
assign videooutsoc_videooutsoc_timer0_reload_storage = videooutsoc_videooutsoc_timer0_reload_storage_full[31:0];
assign videooutsoc_csrbank4_reload3_w = videooutsoc_videooutsoc_timer0_reload_storage_full[31:24];
assign videooutsoc_csrbank4_reload2_w = videooutsoc_videooutsoc_timer0_reload_storage_full[23:16];
assign videooutsoc_csrbank4_reload1_w = videooutsoc_videooutsoc_timer0_reload_storage_full[15:8];
assign videooutsoc_csrbank4_reload0_w = videooutsoc_videooutsoc_timer0_reload_storage_full[7:0];
assign videooutsoc_videooutsoc_timer0_en_storage = videooutsoc_videooutsoc_timer0_en_storage_full;
assign videooutsoc_csrbank4_en0_w = videooutsoc_videooutsoc_timer0_en_storage_full;
assign videooutsoc_csrbank4_value3_w = videooutsoc_videooutsoc_timer0_value_status[31:24];
assign videooutsoc_csrbank4_value2_w = videooutsoc_videooutsoc_timer0_value_status[23:16];
assign videooutsoc_csrbank4_value1_w = videooutsoc_videooutsoc_timer0_value_status[15:8];
assign videooutsoc_csrbank4_value0_w = videooutsoc_videooutsoc_timer0_value_status[7:0];
assign videooutsoc_videooutsoc_timer0_eventmanager_storage = videooutsoc_videooutsoc_timer0_eventmanager_storage_full;
assign videooutsoc_csrbank4_ev_enable0_w = videooutsoc_videooutsoc_timer0_eventmanager_storage_full;
assign videooutsoc_csrbank5_sel = (videooutsoc_interface5_bank_bus_adr[13:9] == 2'd2);
assign videooutsoc_videooutsoc_uart_rxtx_r = videooutsoc_interface5_bank_bus_dat_w[7:0];
assign videooutsoc_videooutsoc_uart_rxtx_re = ((videooutsoc_csrbank5_sel & videooutsoc_interface5_bank_bus_we) & (videooutsoc_interface5_bank_bus_adr[2:0] == 1'd0));
assign videooutsoc_csrbank5_txfull_r = videooutsoc_interface5_bank_bus_dat_w[0];
assign videooutsoc_csrbank5_txfull_re = ((videooutsoc_csrbank5_sel & videooutsoc_interface5_bank_bus_we) & (videooutsoc_interface5_bank_bus_adr[2:0] == 1'd1));
assign videooutsoc_csrbank5_rxempty_r = videooutsoc_interface5_bank_bus_dat_w[0];
assign videooutsoc_csrbank5_rxempty_re = ((videooutsoc_csrbank5_sel & videooutsoc_interface5_bank_bus_we) & (videooutsoc_interface5_bank_bus_adr[2:0] == 2'd2));
assign videooutsoc_videooutsoc_uart_status_r = videooutsoc_interface5_bank_bus_dat_w[1:0];
assign videooutsoc_videooutsoc_uart_status_re = ((videooutsoc_csrbank5_sel & videooutsoc_interface5_bank_bus_we) & (videooutsoc_interface5_bank_bus_adr[2:0] == 2'd3));
assign videooutsoc_videooutsoc_uart_pending_r = videooutsoc_interface5_bank_bus_dat_w[1:0];
assign videooutsoc_videooutsoc_uart_pending_re = ((videooutsoc_csrbank5_sel & videooutsoc_interface5_bank_bus_we) & (videooutsoc_interface5_bank_bus_adr[2:0] == 3'd4));
assign videooutsoc_csrbank5_ev_enable0_r = videooutsoc_interface5_bank_bus_dat_w[1:0];
assign videooutsoc_csrbank5_ev_enable0_re = ((videooutsoc_csrbank5_sel & videooutsoc_interface5_bank_bus_we) & (videooutsoc_interface5_bank_bus_adr[2:0] == 3'd5));
assign videooutsoc_csrbank5_txfull_w = videooutsoc_videooutsoc_uart_txfull_status;
assign videooutsoc_csrbank5_rxempty_w = videooutsoc_videooutsoc_uart_rxempty_status;
assign videooutsoc_videooutsoc_uart_storage = videooutsoc_videooutsoc_uart_storage_full[1:0];
assign videooutsoc_csrbank5_ev_enable0_w = videooutsoc_videooutsoc_uart_storage_full[1:0];
assign videooutsoc_csrbank6_sel = (videooutsoc_interface6_bank_bus_adr[13:9] == 1'd1);
assign videooutsoc_csrbank6_tuning_word3_r = videooutsoc_interface6_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank6_tuning_word3_re = ((videooutsoc_csrbank6_sel & videooutsoc_interface6_bank_bus_we) & (videooutsoc_interface6_bank_bus_adr[1:0] == 1'd0));
assign videooutsoc_csrbank6_tuning_word2_r = videooutsoc_interface6_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank6_tuning_word2_re = ((videooutsoc_csrbank6_sel & videooutsoc_interface6_bank_bus_we) & (videooutsoc_interface6_bank_bus_adr[1:0] == 1'd1));
assign videooutsoc_csrbank6_tuning_word1_r = videooutsoc_interface6_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank6_tuning_word1_re = ((videooutsoc_csrbank6_sel & videooutsoc_interface6_bank_bus_we) & (videooutsoc_interface6_bank_bus_adr[1:0] == 2'd2));
assign videooutsoc_csrbank6_tuning_word0_r = videooutsoc_interface6_bank_bus_dat_w[7:0];
assign videooutsoc_csrbank6_tuning_word0_re = ((videooutsoc_csrbank6_sel & videooutsoc_interface6_bank_bus_we) & (videooutsoc_interface6_bank_bus_adr[1:0] == 2'd3));
assign videooutsoc_videooutsoc_uart_phy_storage = videooutsoc_videooutsoc_uart_phy_storage_full[31:0];
assign videooutsoc_csrbank6_tuning_word3_w = videooutsoc_videooutsoc_uart_phy_storage_full[31:24];
assign videooutsoc_csrbank6_tuning_word2_w = videooutsoc_videooutsoc_uart_phy_storage_full[23:16];
assign videooutsoc_csrbank6_tuning_word1_w = videooutsoc_videooutsoc_uart_phy_storage_full[15:8];
assign videooutsoc_csrbank6_tuning_word0_w = videooutsoc_videooutsoc_uart_phy_storage_full[7:0];
assign videooutsoc_interface0_bank_bus_adr = videooutsoc_videooutsoc_interface_adr;
assign videooutsoc_interface1_bank_bus_adr = videooutsoc_videooutsoc_interface_adr;
assign videooutsoc_interface2_bank_bus_adr = videooutsoc_videooutsoc_interface_adr;
assign videooutsoc_interface3_bank_bus_adr = videooutsoc_videooutsoc_interface_adr;
assign videooutsoc_interface4_bank_bus_adr = videooutsoc_videooutsoc_interface_adr;
assign videooutsoc_interface5_bank_bus_adr = videooutsoc_videooutsoc_interface_adr;
assign videooutsoc_interface6_bank_bus_adr = videooutsoc_videooutsoc_interface_adr;
assign videooutsoc_sram_bus_adr = videooutsoc_videooutsoc_interface_adr;
assign videooutsoc_interface0_bank_bus_we = videooutsoc_videooutsoc_interface_we;
assign videooutsoc_interface1_bank_bus_we = videooutsoc_videooutsoc_interface_we;
assign videooutsoc_interface2_bank_bus_we = videooutsoc_videooutsoc_interface_we;
assign videooutsoc_interface3_bank_bus_we = videooutsoc_videooutsoc_interface_we;
assign videooutsoc_interface4_bank_bus_we = videooutsoc_videooutsoc_interface_we;
assign videooutsoc_interface5_bank_bus_we = videooutsoc_videooutsoc_interface_we;
assign videooutsoc_interface6_bank_bus_we = videooutsoc_videooutsoc_interface_we;
assign videooutsoc_sram_bus_we = videooutsoc_videooutsoc_interface_we;
assign videooutsoc_interface0_bank_bus_dat_w = videooutsoc_videooutsoc_interface_dat_w;
assign videooutsoc_interface1_bank_bus_dat_w = videooutsoc_videooutsoc_interface_dat_w;
assign videooutsoc_interface2_bank_bus_dat_w = videooutsoc_videooutsoc_interface_dat_w;
assign videooutsoc_interface3_bank_bus_dat_w = videooutsoc_videooutsoc_interface_dat_w;
assign videooutsoc_interface4_bank_bus_dat_w = videooutsoc_videooutsoc_interface_dat_w;
assign videooutsoc_interface5_bank_bus_dat_w = videooutsoc_videooutsoc_interface_dat_w;
assign videooutsoc_interface6_bank_bus_dat_w = videooutsoc_videooutsoc_interface_dat_w;
assign videooutsoc_sram_bus_dat_w = videooutsoc_videooutsoc_interface_dat_w;
assign videooutsoc_videooutsoc_interface_dat_r = (((((((videooutsoc_interface0_bank_bus_dat_r | videooutsoc_interface1_bank_bus_dat_r) | videooutsoc_interface2_bank_bus_dat_r) | videooutsoc_interface3_bank_bus_dat_r) | videooutsoc_interface4_bank_bus_dat_r) | videooutsoc_interface5_bank_bus_dat_r) | videooutsoc_interface6_bank_bus_dat_r) | videooutsoc_sram_bus_dat_r);
always @(*) begin
	comb_rhs_array_muxed0 <= 1'd0;
	case (videooutsoc_sdram_choose_cmd_grant)
		1'd0: begin
			comb_rhs_array_muxed0 <= videooutsoc_sdram_choose_cmd_valids[0];
		end
		1'd1: begin
			comb_rhs_array_muxed0 <= videooutsoc_sdram_choose_cmd_valids[1];
		end
		2'd2: begin
			comb_rhs_array_muxed0 <= videooutsoc_sdram_choose_cmd_valids[2];
		end
		2'd3: begin
			comb_rhs_array_muxed0 <= videooutsoc_sdram_choose_cmd_valids[3];
		end
		3'd4: begin
			comb_rhs_array_muxed0 <= videooutsoc_sdram_choose_cmd_valids[4];
		end
		3'd5: begin
			comb_rhs_array_muxed0 <= videooutsoc_sdram_choose_cmd_valids[5];
		end
		3'd6: begin
			comb_rhs_array_muxed0 <= videooutsoc_sdram_choose_cmd_valids[6];
		end
		default: begin
			comb_rhs_array_muxed0 <= videooutsoc_sdram_choose_cmd_valids[7];
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed1 <= 14'd0;
	case (videooutsoc_sdram_choose_cmd_grant)
		1'd0: begin
			comb_rhs_array_muxed1 <= videooutsoc_sdram_bankmachine0_cmd_payload_a;
		end
		1'd1: begin
			comb_rhs_array_muxed1 <= videooutsoc_sdram_bankmachine1_cmd_payload_a;
		end
		2'd2: begin
			comb_rhs_array_muxed1 <= videooutsoc_sdram_bankmachine2_cmd_payload_a;
		end
		2'd3: begin
			comb_rhs_array_muxed1 <= videooutsoc_sdram_bankmachine3_cmd_payload_a;
		end
		3'd4: begin
			comb_rhs_array_muxed1 <= videooutsoc_sdram_bankmachine4_cmd_payload_a;
		end
		3'd5: begin
			comb_rhs_array_muxed1 <= videooutsoc_sdram_bankmachine5_cmd_payload_a;
		end
		3'd6: begin
			comb_rhs_array_muxed1 <= videooutsoc_sdram_bankmachine6_cmd_payload_a;
		end
		default: begin
			comb_rhs_array_muxed1 <= videooutsoc_sdram_bankmachine7_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed2 <= 3'd0;
	case (videooutsoc_sdram_choose_cmd_grant)
		1'd0: begin
			comb_rhs_array_muxed2 <= videooutsoc_sdram_bankmachine0_cmd_payload_ba;
		end
		1'd1: begin
			comb_rhs_array_muxed2 <= videooutsoc_sdram_bankmachine1_cmd_payload_ba;
		end
		2'd2: begin
			comb_rhs_array_muxed2 <= videooutsoc_sdram_bankmachine2_cmd_payload_ba;
		end
		2'd3: begin
			comb_rhs_array_muxed2 <= videooutsoc_sdram_bankmachine3_cmd_payload_ba;
		end
		3'd4: begin
			comb_rhs_array_muxed2 <= videooutsoc_sdram_bankmachine4_cmd_payload_ba;
		end
		3'd5: begin
			comb_rhs_array_muxed2 <= videooutsoc_sdram_bankmachine5_cmd_payload_ba;
		end
		3'd6: begin
			comb_rhs_array_muxed2 <= videooutsoc_sdram_bankmachine6_cmd_payload_ba;
		end
		default: begin
			comb_rhs_array_muxed2 <= videooutsoc_sdram_bankmachine7_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed3 <= 1'd0;
	case (videooutsoc_sdram_choose_cmd_grant)
		1'd0: begin
			comb_rhs_array_muxed3 <= videooutsoc_sdram_bankmachine0_cmd_payload_is_read;
		end
		1'd1: begin
			comb_rhs_array_muxed3 <= videooutsoc_sdram_bankmachine1_cmd_payload_is_read;
		end
		2'd2: begin
			comb_rhs_array_muxed3 <= videooutsoc_sdram_bankmachine2_cmd_payload_is_read;
		end
		2'd3: begin
			comb_rhs_array_muxed3 <= videooutsoc_sdram_bankmachine3_cmd_payload_is_read;
		end
		3'd4: begin
			comb_rhs_array_muxed3 <= videooutsoc_sdram_bankmachine4_cmd_payload_is_read;
		end
		3'd5: begin
			comb_rhs_array_muxed3 <= videooutsoc_sdram_bankmachine5_cmd_payload_is_read;
		end
		3'd6: begin
			comb_rhs_array_muxed3 <= videooutsoc_sdram_bankmachine6_cmd_payload_is_read;
		end
		default: begin
			comb_rhs_array_muxed3 <= videooutsoc_sdram_bankmachine7_cmd_payload_is_read;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed4 <= 1'd0;
	case (videooutsoc_sdram_choose_cmd_grant)
		1'd0: begin
			comb_rhs_array_muxed4 <= videooutsoc_sdram_bankmachine0_cmd_payload_is_write;
		end
		1'd1: begin
			comb_rhs_array_muxed4 <= videooutsoc_sdram_bankmachine1_cmd_payload_is_write;
		end
		2'd2: begin
			comb_rhs_array_muxed4 <= videooutsoc_sdram_bankmachine2_cmd_payload_is_write;
		end
		2'd3: begin
			comb_rhs_array_muxed4 <= videooutsoc_sdram_bankmachine3_cmd_payload_is_write;
		end
		3'd4: begin
			comb_rhs_array_muxed4 <= videooutsoc_sdram_bankmachine4_cmd_payload_is_write;
		end
		3'd5: begin
			comb_rhs_array_muxed4 <= videooutsoc_sdram_bankmachine5_cmd_payload_is_write;
		end
		3'd6: begin
			comb_rhs_array_muxed4 <= videooutsoc_sdram_bankmachine6_cmd_payload_is_write;
		end
		default: begin
			comb_rhs_array_muxed4 <= videooutsoc_sdram_bankmachine7_cmd_payload_is_write;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed5 <= 1'd0;
	case (videooutsoc_sdram_choose_cmd_grant)
		1'd0: begin
			comb_rhs_array_muxed5 <= videooutsoc_sdram_bankmachine0_cmd_payload_is_cmd;
		end
		1'd1: begin
			comb_rhs_array_muxed5 <= videooutsoc_sdram_bankmachine1_cmd_payload_is_cmd;
		end
		2'd2: begin
			comb_rhs_array_muxed5 <= videooutsoc_sdram_bankmachine2_cmd_payload_is_cmd;
		end
		2'd3: begin
			comb_rhs_array_muxed5 <= videooutsoc_sdram_bankmachine3_cmd_payload_is_cmd;
		end
		3'd4: begin
			comb_rhs_array_muxed5 <= videooutsoc_sdram_bankmachine4_cmd_payload_is_cmd;
		end
		3'd5: begin
			comb_rhs_array_muxed5 <= videooutsoc_sdram_bankmachine5_cmd_payload_is_cmd;
		end
		3'd6: begin
			comb_rhs_array_muxed5 <= videooutsoc_sdram_bankmachine6_cmd_payload_is_cmd;
		end
		default: begin
			comb_rhs_array_muxed5 <= videooutsoc_sdram_bankmachine7_cmd_payload_is_cmd;
		end
	endcase
end
always @(*) begin
	comb_t_array_muxed0 <= 1'd0;
	case (videooutsoc_sdram_choose_cmd_grant)
		1'd0: begin
			comb_t_array_muxed0 <= videooutsoc_sdram_bankmachine0_cmd_payload_cas;
		end
		1'd1: begin
			comb_t_array_muxed0 <= videooutsoc_sdram_bankmachine1_cmd_payload_cas;
		end
		2'd2: begin
			comb_t_array_muxed0 <= videooutsoc_sdram_bankmachine2_cmd_payload_cas;
		end
		2'd3: begin
			comb_t_array_muxed0 <= videooutsoc_sdram_bankmachine3_cmd_payload_cas;
		end
		3'd4: begin
			comb_t_array_muxed0 <= videooutsoc_sdram_bankmachine4_cmd_payload_cas;
		end
		3'd5: begin
			comb_t_array_muxed0 <= videooutsoc_sdram_bankmachine5_cmd_payload_cas;
		end
		3'd6: begin
			comb_t_array_muxed0 <= videooutsoc_sdram_bankmachine6_cmd_payload_cas;
		end
		default: begin
			comb_t_array_muxed0 <= videooutsoc_sdram_bankmachine7_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	comb_t_array_muxed1 <= 1'd0;
	case (videooutsoc_sdram_choose_cmd_grant)
		1'd0: begin
			comb_t_array_muxed1 <= videooutsoc_sdram_bankmachine0_cmd_payload_ras;
		end
		1'd1: begin
			comb_t_array_muxed1 <= videooutsoc_sdram_bankmachine1_cmd_payload_ras;
		end
		2'd2: begin
			comb_t_array_muxed1 <= videooutsoc_sdram_bankmachine2_cmd_payload_ras;
		end
		2'd3: begin
			comb_t_array_muxed1 <= videooutsoc_sdram_bankmachine3_cmd_payload_ras;
		end
		3'd4: begin
			comb_t_array_muxed1 <= videooutsoc_sdram_bankmachine4_cmd_payload_ras;
		end
		3'd5: begin
			comb_t_array_muxed1 <= videooutsoc_sdram_bankmachine5_cmd_payload_ras;
		end
		3'd6: begin
			comb_t_array_muxed1 <= videooutsoc_sdram_bankmachine6_cmd_payload_ras;
		end
		default: begin
			comb_t_array_muxed1 <= videooutsoc_sdram_bankmachine7_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	comb_t_array_muxed2 <= 1'd0;
	case (videooutsoc_sdram_choose_cmd_grant)
		1'd0: begin
			comb_t_array_muxed2 <= videooutsoc_sdram_bankmachine0_cmd_payload_we;
		end
		1'd1: begin
			comb_t_array_muxed2 <= videooutsoc_sdram_bankmachine1_cmd_payload_we;
		end
		2'd2: begin
			comb_t_array_muxed2 <= videooutsoc_sdram_bankmachine2_cmd_payload_we;
		end
		2'd3: begin
			comb_t_array_muxed2 <= videooutsoc_sdram_bankmachine3_cmd_payload_we;
		end
		3'd4: begin
			comb_t_array_muxed2 <= videooutsoc_sdram_bankmachine4_cmd_payload_we;
		end
		3'd5: begin
			comb_t_array_muxed2 <= videooutsoc_sdram_bankmachine5_cmd_payload_we;
		end
		3'd6: begin
			comb_t_array_muxed2 <= videooutsoc_sdram_bankmachine6_cmd_payload_we;
		end
		default: begin
			comb_t_array_muxed2 <= videooutsoc_sdram_bankmachine7_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed6 <= 1'd0;
	case (videooutsoc_sdram_choose_req_grant)
		1'd0: begin
			comb_rhs_array_muxed6 <= videooutsoc_sdram_choose_req_valids[0];
		end
		1'd1: begin
			comb_rhs_array_muxed6 <= videooutsoc_sdram_choose_req_valids[1];
		end
		2'd2: begin
			comb_rhs_array_muxed6 <= videooutsoc_sdram_choose_req_valids[2];
		end
		2'd3: begin
			comb_rhs_array_muxed6 <= videooutsoc_sdram_choose_req_valids[3];
		end
		3'd4: begin
			comb_rhs_array_muxed6 <= videooutsoc_sdram_choose_req_valids[4];
		end
		3'd5: begin
			comb_rhs_array_muxed6 <= videooutsoc_sdram_choose_req_valids[5];
		end
		3'd6: begin
			comb_rhs_array_muxed6 <= videooutsoc_sdram_choose_req_valids[6];
		end
		default: begin
			comb_rhs_array_muxed6 <= videooutsoc_sdram_choose_req_valids[7];
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed7 <= 14'd0;
	case (videooutsoc_sdram_choose_req_grant)
		1'd0: begin
			comb_rhs_array_muxed7 <= videooutsoc_sdram_bankmachine0_cmd_payload_a;
		end
		1'd1: begin
			comb_rhs_array_muxed7 <= videooutsoc_sdram_bankmachine1_cmd_payload_a;
		end
		2'd2: begin
			comb_rhs_array_muxed7 <= videooutsoc_sdram_bankmachine2_cmd_payload_a;
		end
		2'd3: begin
			comb_rhs_array_muxed7 <= videooutsoc_sdram_bankmachine3_cmd_payload_a;
		end
		3'd4: begin
			comb_rhs_array_muxed7 <= videooutsoc_sdram_bankmachine4_cmd_payload_a;
		end
		3'd5: begin
			comb_rhs_array_muxed7 <= videooutsoc_sdram_bankmachine5_cmd_payload_a;
		end
		3'd6: begin
			comb_rhs_array_muxed7 <= videooutsoc_sdram_bankmachine6_cmd_payload_a;
		end
		default: begin
			comb_rhs_array_muxed7 <= videooutsoc_sdram_bankmachine7_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed8 <= 3'd0;
	case (videooutsoc_sdram_choose_req_grant)
		1'd0: begin
			comb_rhs_array_muxed8 <= videooutsoc_sdram_bankmachine0_cmd_payload_ba;
		end
		1'd1: begin
			comb_rhs_array_muxed8 <= videooutsoc_sdram_bankmachine1_cmd_payload_ba;
		end
		2'd2: begin
			comb_rhs_array_muxed8 <= videooutsoc_sdram_bankmachine2_cmd_payload_ba;
		end
		2'd3: begin
			comb_rhs_array_muxed8 <= videooutsoc_sdram_bankmachine3_cmd_payload_ba;
		end
		3'd4: begin
			comb_rhs_array_muxed8 <= videooutsoc_sdram_bankmachine4_cmd_payload_ba;
		end
		3'd5: begin
			comb_rhs_array_muxed8 <= videooutsoc_sdram_bankmachine5_cmd_payload_ba;
		end
		3'd6: begin
			comb_rhs_array_muxed8 <= videooutsoc_sdram_bankmachine6_cmd_payload_ba;
		end
		default: begin
			comb_rhs_array_muxed8 <= videooutsoc_sdram_bankmachine7_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed9 <= 1'd0;
	case (videooutsoc_sdram_choose_req_grant)
		1'd0: begin
			comb_rhs_array_muxed9 <= videooutsoc_sdram_bankmachine0_cmd_payload_is_read;
		end
		1'd1: begin
			comb_rhs_array_muxed9 <= videooutsoc_sdram_bankmachine1_cmd_payload_is_read;
		end
		2'd2: begin
			comb_rhs_array_muxed9 <= videooutsoc_sdram_bankmachine2_cmd_payload_is_read;
		end
		2'd3: begin
			comb_rhs_array_muxed9 <= videooutsoc_sdram_bankmachine3_cmd_payload_is_read;
		end
		3'd4: begin
			comb_rhs_array_muxed9 <= videooutsoc_sdram_bankmachine4_cmd_payload_is_read;
		end
		3'd5: begin
			comb_rhs_array_muxed9 <= videooutsoc_sdram_bankmachine5_cmd_payload_is_read;
		end
		3'd6: begin
			comb_rhs_array_muxed9 <= videooutsoc_sdram_bankmachine6_cmd_payload_is_read;
		end
		default: begin
			comb_rhs_array_muxed9 <= videooutsoc_sdram_bankmachine7_cmd_payload_is_read;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed10 <= 1'd0;
	case (videooutsoc_sdram_choose_req_grant)
		1'd0: begin
			comb_rhs_array_muxed10 <= videooutsoc_sdram_bankmachine0_cmd_payload_is_write;
		end
		1'd1: begin
			comb_rhs_array_muxed10 <= videooutsoc_sdram_bankmachine1_cmd_payload_is_write;
		end
		2'd2: begin
			comb_rhs_array_muxed10 <= videooutsoc_sdram_bankmachine2_cmd_payload_is_write;
		end
		2'd3: begin
			comb_rhs_array_muxed10 <= videooutsoc_sdram_bankmachine3_cmd_payload_is_write;
		end
		3'd4: begin
			comb_rhs_array_muxed10 <= videooutsoc_sdram_bankmachine4_cmd_payload_is_write;
		end
		3'd5: begin
			comb_rhs_array_muxed10 <= videooutsoc_sdram_bankmachine5_cmd_payload_is_write;
		end
		3'd6: begin
			comb_rhs_array_muxed10 <= videooutsoc_sdram_bankmachine6_cmd_payload_is_write;
		end
		default: begin
			comb_rhs_array_muxed10 <= videooutsoc_sdram_bankmachine7_cmd_payload_is_write;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed11 <= 1'd0;
	case (videooutsoc_sdram_choose_req_grant)
		1'd0: begin
			comb_rhs_array_muxed11 <= videooutsoc_sdram_bankmachine0_cmd_payload_is_cmd;
		end
		1'd1: begin
			comb_rhs_array_muxed11 <= videooutsoc_sdram_bankmachine1_cmd_payload_is_cmd;
		end
		2'd2: begin
			comb_rhs_array_muxed11 <= videooutsoc_sdram_bankmachine2_cmd_payload_is_cmd;
		end
		2'd3: begin
			comb_rhs_array_muxed11 <= videooutsoc_sdram_bankmachine3_cmd_payload_is_cmd;
		end
		3'd4: begin
			comb_rhs_array_muxed11 <= videooutsoc_sdram_bankmachine4_cmd_payload_is_cmd;
		end
		3'd5: begin
			comb_rhs_array_muxed11 <= videooutsoc_sdram_bankmachine5_cmd_payload_is_cmd;
		end
		3'd6: begin
			comb_rhs_array_muxed11 <= videooutsoc_sdram_bankmachine6_cmd_payload_is_cmd;
		end
		default: begin
			comb_rhs_array_muxed11 <= videooutsoc_sdram_bankmachine7_cmd_payload_is_cmd;
		end
	endcase
end
always @(*) begin
	comb_t_array_muxed3 <= 1'd0;
	case (videooutsoc_sdram_choose_req_grant)
		1'd0: begin
			comb_t_array_muxed3 <= videooutsoc_sdram_bankmachine0_cmd_payload_cas;
		end
		1'd1: begin
			comb_t_array_muxed3 <= videooutsoc_sdram_bankmachine1_cmd_payload_cas;
		end
		2'd2: begin
			comb_t_array_muxed3 <= videooutsoc_sdram_bankmachine2_cmd_payload_cas;
		end
		2'd3: begin
			comb_t_array_muxed3 <= videooutsoc_sdram_bankmachine3_cmd_payload_cas;
		end
		3'd4: begin
			comb_t_array_muxed3 <= videooutsoc_sdram_bankmachine4_cmd_payload_cas;
		end
		3'd5: begin
			comb_t_array_muxed3 <= videooutsoc_sdram_bankmachine5_cmd_payload_cas;
		end
		3'd6: begin
			comb_t_array_muxed3 <= videooutsoc_sdram_bankmachine6_cmd_payload_cas;
		end
		default: begin
			comb_t_array_muxed3 <= videooutsoc_sdram_bankmachine7_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	comb_t_array_muxed4 <= 1'd0;
	case (videooutsoc_sdram_choose_req_grant)
		1'd0: begin
			comb_t_array_muxed4 <= videooutsoc_sdram_bankmachine0_cmd_payload_ras;
		end
		1'd1: begin
			comb_t_array_muxed4 <= videooutsoc_sdram_bankmachine1_cmd_payload_ras;
		end
		2'd2: begin
			comb_t_array_muxed4 <= videooutsoc_sdram_bankmachine2_cmd_payload_ras;
		end
		2'd3: begin
			comb_t_array_muxed4 <= videooutsoc_sdram_bankmachine3_cmd_payload_ras;
		end
		3'd4: begin
			comb_t_array_muxed4 <= videooutsoc_sdram_bankmachine4_cmd_payload_ras;
		end
		3'd5: begin
			comb_t_array_muxed4 <= videooutsoc_sdram_bankmachine5_cmd_payload_ras;
		end
		3'd6: begin
			comb_t_array_muxed4 <= videooutsoc_sdram_bankmachine6_cmd_payload_ras;
		end
		default: begin
			comb_t_array_muxed4 <= videooutsoc_sdram_bankmachine7_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	comb_t_array_muxed5 <= 1'd0;
	case (videooutsoc_sdram_choose_req_grant)
		1'd0: begin
			comb_t_array_muxed5 <= videooutsoc_sdram_bankmachine0_cmd_payload_we;
		end
		1'd1: begin
			comb_t_array_muxed5 <= videooutsoc_sdram_bankmachine1_cmd_payload_we;
		end
		2'd2: begin
			comb_t_array_muxed5 <= videooutsoc_sdram_bankmachine2_cmd_payload_we;
		end
		2'd3: begin
			comb_t_array_muxed5 <= videooutsoc_sdram_bankmachine3_cmd_payload_we;
		end
		3'd4: begin
			comb_t_array_muxed5 <= videooutsoc_sdram_bankmachine4_cmd_payload_we;
		end
		3'd5: begin
			comb_t_array_muxed5 <= videooutsoc_sdram_bankmachine5_cmd_payload_we;
		end
		3'd6: begin
			comb_t_array_muxed5 <= videooutsoc_sdram_bankmachine6_cmd_payload_we;
		end
		default: begin
			comb_t_array_muxed5 <= videooutsoc_sdram_bankmachine7_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed12 <= 21'd0;
	case (roundrobin0_grant)
		1'd0: begin
			comb_rhs_array_muxed12 <= rca0;
		end
		default: begin
			comb_rhs_array_muxed12 <= rca1;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed13 <= 1'd0;
	case (roundrobin0_grant)
		1'd0: begin
			comb_rhs_array_muxed13 <= videooutsoc_port_cmd_payload_we;
		end
		default: begin
			comb_rhs_array_muxed13 <= cmd_payload_we;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed14 <= 1'd0;
	case (roundrobin0_grant)
		1'd0: begin
			comb_rhs_array_muxed14 <= (((cba0 == 1'd0) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & videooutsoc_port_cmd_valid);
		end
		default: begin
			comb_rhs_array_muxed14 <= (((cba1 == 1'd0) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & cmd_valid);
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed15 <= 21'd0;
	case (roundrobin1_grant)
		1'd0: begin
			comb_rhs_array_muxed15 <= rca0;
		end
		default: begin
			comb_rhs_array_muxed15 <= rca1;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed16 <= 1'd0;
	case (roundrobin1_grant)
		1'd0: begin
			comb_rhs_array_muxed16 <= videooutsoc_port_cmd_payload_we;
		end
		default: begin
			comb_rhs_array_muxed16 <= cmd_payload_we;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed17 <= 1'd0;
	case (roundrobin1_grant)
		1'd0: begin
			comb_rhs_array_muxed17 <= (((cba0 == 1'd1) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & videooutsoc_port_cmd_valid);
		end
		default: begin
			comb_rhs_array_muxed17 <= (((cba1 == 1'd1) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & cmd_valid);
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed18 <= 21'd0;
	case (roundrobin2_grant)
		1'd0: begin
			comb_rhs_array_muxed18 <= rca0;
		end
		default: begin
			comb_rhs_array_muxed18 <= rca1;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed19 <= 1'd0;
	case (roundrobin2_grant)
		1'd0: begin
			comb_rhs_array_muxed19 <= videooutsoc_port_cmd_payload_we;
		end
		default: begin
			comb_rhs_array_muxed19 <= cmd_payload_we;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed20 <= 1'd0;
	case (roundrobin2_grant)
		1'd0: begin
			comb_rhs_array_muxed20 <= (((cba0 == 2'd2) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & videooutsoc_port_cmd_valid);
		end
		default: begin
			comb_rhs_array_muxed20 <= (((cba1 == 2'd2) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & cmd_valid);
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed21 <= 21'd0;
	case (roundrobin3_grant)
		1'd0: begin
			comb_rhs_array_muxed21 <= rca0;
		end
		default: begin
			comb_rhs_array_muxed21 <= rca1;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed22 <= 1'd0;
	case (roundrobin3_grant)
		1'd0: begin
			comb_rhs_array_muxed22 <= videooutsoc_port_cmd_payload_we;
		end
		default: begin
			comb_rhs_array_muxed22 <= cmd_payload_we;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed23 <= 1'd0;
	case (roundrobin3_grant)
		1'd0: begin
			comb_rhs_array_muxed23 <= (((cba0 == 2'd3) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & videooutsoc_port_cmd_valid);
		end
		default: begin
			comb_rhs_array_muxed23 <= (((cba1 == 2'd3) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & cmd_valid);
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed24 <= 21'd0;
	case (roundrobin4_grant)
		1'd0: begin
			comb_rhs_array_muxed24 <= rca0;
		end
		default: begin
			comb_rhs_array_muxed24 <= rca1;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed25 <= 1'd0;
	case (roundrobin4_grant)
		1'd0: begin
			comb_rhs_array_muxed25 <= videooutsoc_port_cmd_payload_we;
		end
		default: begin
			comb_rhs_array_muxed25 <= cmd_payload_we;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed26 <= 1'd0;
	case (roundrobin4_grant)
		1'd0: begin
			comb_rhs_array_muxed26 <= (((cba0 == 3'd4) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & videooutsoc_port_cmd_valid);
		end
		default: begin
			comb_rhs_array_muxed26 <= (((cba1 == 3'd4) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & cmd_valid);
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed27 <= 21'd0;
	case (roundrobin5_grant)
		1'd0: begin
			comb_rhs_array_muxed27 <= rca0;
		end
		default: begin
			comb_rhs_array_muxed27 <= rca1;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed28 <= 1'd0;
	case (roundrobin5_grant)
		1'd0: begin
			comb_rhs_array_muxed28 <= videooutsoc_port_cmd_payload_we;
		end
		default: begin
			comb_rhs_array_muxed28 <= cmd_payload_we;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed29 <= 1'd0;
	case (roundrobin5_grant)
		1'd0: begin
			comb_rhs_array_muxed29 <= (((cba0 == 3'd5) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & videooutsoc_port_cmd_valid);
		end
		default: begin
			comb_rhs_array_muxed29 <= (((cba1 == 3'd5) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & cmd_valid);
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed30 <= 21'd0;
	case (roundrobin6_grant)
		1'd0: begin
			comb_rhs_array_muxed30 <= rca0;
		end
		default: begin
			comb_rhs_array_muxed30 <= rca1;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed31 <= 1'd0;
	case (roundrobin6_grant)
		1'd0: begin
			comb_rhs_array_muxed31 <= videooutsoc_port_cmd_payload_we;
		end
		default: begin
			comb_rhs_array_muxed31 <= cmd_payload_we;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed32 <= 1'd0;
	case (roundrobin6_grant)
		1'd0: begin
			comb_rhs_array_muxed32 <= (((cba0 == 3'd6) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & videooutsoc_port_cmd_valid);
		end
		default: begin
			comb_rhs_array_muxed32 <= (((cba1 == 3'd6) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (videooutsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & cmd_valid);
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed33 <= 21'd0;
	case (roundrobin7_grant)
		1'd0: begin
			comb_rhs_array_muxed33 <= rca0;
		end
		default: begin
			comb_rhs_array_muxed33 <= rca1;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed34 <= 1'd0;
	case (roundrobin7_grant)
		1'd0: begin
			comb_rhs_array_muxed34 <= videooutsoc_port_cmd_payload_we;
		end
		default: begin
			comb_rhs_array_muxed34 <= cmd_payload_we;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed35 <= 1'd0;
	case (roundrobin7_grant)
		1'd0: begin
			comb_rhs_array_muxed35 <= (((cba0 == 3'd7) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))))) & videooutsoc_port_cmd_valid);
		end
		default: begin
			comb_rhs_array_muxed35 <= (((cba1 == 3'd7) & (~(((((((1'd0 | (videooutsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (videooutsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (videooutsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (videooutsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (videooutsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (videooutsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (videooutsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd1))))) & cmd_valid);
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed36 <= 30'd0;
	case (wb_sdram_con_grant)
		default: begin
			comb_rhs_array_muxed36 <= videooutsoc_interface1_wb_sdram_adr;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed37 <= 32'd0;
	case (wb_sdram_con_grant)
		default: begin
			comb_rhs_array_muxed37 <= videooutsoc_interface1_wb_sdram_dat_w;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed38 <= 4'd0;
	case (wb_sdram_con_grant)
		default: begin
			comb_rhs_array_muxed38 <= videooutsoc_interface1_wb_sdram_sel;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed39 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			comb_rhs_array_muxed39 <= videooutsoc_interface1_wb_sdram_cyc;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed40 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			comb_rhs_array_muxed40 <= videooutsoc_interface1_wb_sdram_stb;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed41 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			comb_rhs_array_muxed41 <= videooutsoc_interface1_wb_sdram_we;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed42 <= 3'd0;
	case (wb_sdram_con_grant)
		default: begin
			comb_rhs_array_muxed42 <= videooutsoc_interface1_wb_sdram_cti;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed43 <= 2'd0;
	case (wb_sdram_con_grant)
		default: begin
			comb_rhs_array_muxed43 <= videooutsoc_interface1_wb_sdram_bte;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed44 <= 30'd0;
	case (videooutsoc_grant)
		1'd0: begin
			comb_rhs_array_muxed44 <= videooutsoc_videooutsoc_ibus_adr;
		end
		default: begin
			comb_rhs_array_muxed44 <= videooutsoc_videooutsoc_dbus_adr;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed45 <= 32'd0;
	case (videooutsoc_grant)
		1'd0: begin
			comb_rhs_array_muxed45 <= videooutsoc_videooutsoc_ibus_dat_w;
		end
		default: begin
			comb_rhs_array_muxed45 <= videooutsoc_videooutsoc_dbus_dat_w;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed46 <= 4'd0;
	case (videooutsoc_grant)
		1'd0: begin
			comb_rhs_array_muxed46 <= videooutsoc_videooutsoc_ibus_sel;
		end
		default: begin
			comb_rhs_array_muxed46 <= videooutsoc_videooutsoc_dbus_sel;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed47 <= 1'd0;
	case (videooutsoc_grant)
		1'd0: begin
			comb_rhs_array_muxed47 <= videooutsoc_videooutsoc_ibus_cyc;
		end
		default: begin
			comb_rhs_array_muxed47 <= videooutsoc_videooutsoc_dbus_cyc;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed48 <= 1'd0;
	case (videooutsoc_grant)
		1'd0: begin
			comb_rhs_array_muxed48 <= videooutsoc_videooutsoc_ibus_stb;
		end
		default: begin
			comb_rhs_array_muxed48 <= videooutsoc_videooutsoc_dbus_stb;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed49 <= 1'd0;
	case (videooutsoc_grant)
		1'd0: begin
			comb_rhs_array_muxed49 <= videooutsoc_videooutsoc_ibus_we;
		end
		default: begin
			comb_rhs_array_muxed49 <= videooutsoc_videooutsoc_dbus_we;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed50 <= 3'd0;
	case (videooutsoc_grant)
		1'd0: begin
			comb_rhs_array_muxed50 <= videooutsoc_videooutsoc_ibus_cti;
		end
		default: begin
			comb_rhs_array_muxed50 <= videooutsoc_videooutsoc_dbus_cti;
		end
	endcase
end
always @(*) begin
	comb_rhs_array_muxed51 <= 2'd0;
	case (videooutsoc_grant)
		1'd0: begin
			comb_rhs_array_muxed51 <= videooutsoc_videooutsoc_ibus_bte;
		end
		default: begin
			comb_rhs_array_muxed51 <= videooutsoc_videooutsoc_dbus_bte;
		end
	endcase
end
always @(*) begin
	sync_f_array_muxed0 <= 10'd0;
	case (hdmi_out0_driver_hdmi_phy_es0_new_c2)
		1'd0: begin
			sync_f_array_muxed0 <= 10'd852;
		end
		1'd1: begin
			sync_f_array_muxed0 <= 8'd171;
		end
		2'd2: begin
			sync_f_array_muxed0 <= 9'd340;
		end
		default: begin
			sync_f_array_muxed0 <= 10'd683;
		end
	endcase
end
always @(*) begin
	sync_f_array_muxed1 <= 10'd0;
	case (hdmi_out0_driver_hdmi_phy_es1_new_c2)
		1'd0: begin
			sync_f_array_muxed1 <= 10'd852;
		end
		1'd1: begin
			sync_f_array_muxed1 <= 8'd171;
		end
		2'd2: begin
			sync_f_array_muxed1 <= 9'd340;
		end
		default: begin
			sync_f_array_muxed1 <= 10'd683;
		end
	endcase
end
always @(*) begin
	sync_f_array_muxed2 <= 10'd0;
	case (hdmi_out0_driver_hdmi_phy_es2_new_c2)
		1'd0: begin
			sync_f_array_muxed2 <= 10'd852;
		end
		1'd1: begin
			sync_f_array_muxed2 <= 8'd171;
		end
		2'd2: begin
			sync_f_array_muxed2 <= 9'd340;
		end
		default: begin
			sync_f_array_muxed2 <= 10'd683;
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed0 <= 14'd0;
	case (videooutsoc_sdram_sel0)
		1'd0: begin
			sync_rhs_array_muxed0 <= videooutsoc_sdram_nop_a;
		end
		1'd1: begin
			sync_rhs_array_muxed0 <= videooutsoc_sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			sync_rhs_array_muxed0 <= videooutsoc_sdram_choose_req_cmd_payload_a;
		end
		default: begin
			sync_rhs_array_muxed0 <= videooutsoc_sdram_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed1 <= 3'd0;
	case (videooutsoc_sdram_sel0)
		1'd0: begin
			sync_rhs_array_muxed1 <= videooutsoc_sdram_nop_ba;
		end
		1'd1: begin
			sync_rhs_array_muxed1 <= videooutsoc_sdram_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			sync_rhs_array_muxed1 <= videooutsoc_sdram_choose_req_cmd_payload_ba;
		end
		default: begin
			sync_rhs_array_muxed1 <= videooutsoc_sdram_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed2 <= 1'd0;
	case (videooutsoc_sdram_sel0)
		1'd0: begin
			sync_rhs_array_muxed2 <= videooutsoc_sdram_nop_cas;
		end
		1'd1: begin
			sync_rhs_array_muxed2 <= videooutsoc_sdram_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			sync_rhs_array_muxed2 <= videooutsoc_sdram_choose_req_cmd_payload_cas;
		end
		default: begin
			sync_rhs_array_muxed2 <= videooutsoc_sdram_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed3 <= 1'd0;
	case (videooutsoc_sdram_sel0)
		1'd0: begin
			sync_rhs_array_muxed3 <= videooutsoc_sdram_nop_ras;
		end
		1'd1: begin
			sync_rhs_array_muxed3 <= videooutsoc_sdram_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			sync_rhs_array_muxed3 <= videooutsoc_sdram_choose_req_cmd_payload_ras;
		end
		default: begin
			sync_rhs_array_muxed3 <= videooutsoc_sdram_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed4 <= 1'd0;
	case (videooutsoc_sdram_sel0)
		1'd0: begin
			sync_rhs_array_muxed4 <= videooutsoc_sdram_nop_we;
		end
		1'd1: begin
			sync_rhs_array_muxed4 <= videooutsoc_sdram_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			sync_rhs_array_muxed4 <= videooutsoc_sdram_choose_req_cmd_payload_we;
		end
		default: begin
			sync_rhs_array_muxed4 <= videooutsoc_sdram_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed5 <= 1'd0;
	case (videooutsoc_sdram_sel0)
		1'd0: begin
			sync_rhs_array_muxed5 <= 1'd0;
		end
		1'd1: begin
			sync_rhs_array_muxed5 <= (videooutsoc_sdram_choose_cmd_cmd_valid & videooutsoc_sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			sync_rhs_array_muxed5 <= (videooutsoc_sdram_choose_req_cmd_valid & videooutsoc_sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			sync_rhs_array_muxed5 <= (videooutsoc_sdram_cmd_valid & videooutsoc_sdram_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed6 <= 1'd0;
	case (videooutsoc_sdram_sel0)
		1'd0: begin
			sync_rhs_array_muxed6 <= 1'd0;
		end
		1'd1: begin
			sync_rhs_array_muxed6 <= (videooutsoc_sdram_choose_cmd_cmd_valid & videooutsoc_sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			sync_rhs_array_muxed6 <= (videooutsoc_sdram_choose_req_cmd_valid & videooutsoc_sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			sync_rhs_array_muxed6 <= (videooutsoc_sdram_cmd_valid & videooutsoc_sdram_cmd_payload_is_write);
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed7 <= 14'd0;
	case (videooutsoc_sdram_sel1)
		1'd0: begin
			sync_rhs_array_muxed7 <= videooutsoc_sdram_nop_a;
		end
		1'd1: begin
			sync_rhs_array_muxed7 <= videooutsoc_sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			sync_rhs_array_muxed7 <= videooutsoc_sdram_choose_req_cmd_payload_a;
		end
		default: begin
			sync_rhs_array_muxed7 <= videooutsoc_sdram_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed8 <= 3'd0;
	case (videooutsoc_sdram_sel1)
		1'd0: begin
			sync_rhs_array_muxed8 <= videooutsoc_sdram_nop_ba;
		end
		1'd1: begin
			sync_rhs_array_muxed8 <= videooutsoc_sdram_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			sync_rhs_array_muxed8 <= videooutsoc_sdram_choose_req_cmd_payload_ba;
		end
		default: begin
			sync_rhs_array_muxed8 <= videooutsoc_sdram_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed9 <= 1'd0;
	case (videooutsoc_sdram_sel1)
		1'd0: begin
			sync_rhs_array_muxed9 <= videooutsoc_sdram_nop_cas;
		end
		1'd1: begin
			sync_rhs_array_muxed9 <= videooutsoc_sdram_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			sync_rhs_array_muxed9 <= videooutsoc_sdram_choose_req_cmd_payload_cas;
		end
		default: begin
			sync_rhs_array_muxed9 <= videooutsoc_sdram_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed10 <= 1'd0;
	case (videooutsoc_sdram_sel1)
		1'd0: begin
			sync_rhs_array_muxed10 <= videooutsoc_sdram_nop_ras;
		end
		1'd1: begin
			sync_rhs_array_muxed10 <= videooutsoc_sdram_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			sync_rhs_array_muxed10 <= videooutsoc_sdram_choose_req_cmd_payload_ras;
		end
		default: begin
			sync_rhs_array_muxed10 <= videooutsoc_sdram_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed11 <= 1'd0;
	case (videooutsoc_sdram_sel1)
		1'd0: begin
			sync_rhs_array_muxed11 <= videooutsoc_sdram_nop_we;
		end
		1'd1: begin
			sync_rhs_array_muxed11 <= videooutsoc_sdram_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			sync_rhs_array_muxed11 <= videooutsoc_sdram_choose_req_cmd_payload_we;
		end
		default: begin
			sync_rhs_array_muxed11 <= videooutsoc_sdram_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed12 <= 1'd0;
	case (videooutsoc_sdram_sel1)
		1'd0: begin
			sync_rhs_array_muxed12 <= 1'd0;
		end
		1'd1: begin
			sync_rhs_array_muxed12 <= (videooutsoc_sdram_choose_cmd_cmd_valid & videooutsoc_sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			sync_rhs_array_muxed12 <= (videooutsoc_sdram_choose_req_cmd_valid & videooutsoc_sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			sync_rhs_array_muxed12 <= (videooutsoc_sdram_cmd_valid & videooutsoc_sdram_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed13 <= 1'd0;
	case (videooutsoc_sdram_sel1)
		1'd0: begin
			sync_rhs_array_muxed13 <= 1'd0;
		end
		1'd1: begin
			sync_rhs_array_muxed13 <= (videooutsoc_sdram_choose_cmd_cmd_valid & videooutsoc_sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			sync_rhs_array_muxed13 <= (videooutsoc_sdram_choose_req_cmd_valid & videooutsoc_sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			sync_rhs_array_muxed13 <= (videooutsoc_sdram_cmd_valid & videooutsoc_sdram_cmd_payload_is_write);
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed14 <= 14'd0;
	case (videooutsoc_sdram_sel2)
		1'd0: begin
			sync_rhs_array_muxed14 <= videooutsoc_sdram_nop_a;
		end
		1'd1: begin
			sync_rhs_array_muxed14 <= videooutsoc_sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			sync_rhs_array_muxed14 <= videooutsoc_sdram_choose_req_cmd_payload_a;
		end
		default: begin
			sync_rhs_array_muxed14 <= videooutsoc_sdram_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed15 <= 3'd0;
	case (videooutsoc_sdram_sel2)
		1'd0: begin
			sync_rhs_array_muxed15 <= videooutsoc_sdram_nop_ba;
		end
		1'd1: begin
			sync_rhs_array_muxed15 <= videooutsoc_sdram_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			sync_rhs_array_muxed15 <= videooutsoc_sdram_choose_req_cmd_payload_ba;
		end
		default: begin
			sync_rhs_array_muxed15 <= videooutsoc_sdram_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed16 <= 1'd0;
	case (videooutsoc_sdram_sel2)
		1'd0: begin
			sync_rhs_array_muxed16 <= videooutsoc_sdram_nop_cas;
		end
		1'd1: begin
			sync_rhs_array_muxed16 <= videooutsoc_sdram_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			sync_rhs_array_muxed16 <= videooutsoc_sdram_choose_req_cmd_payload_cas;
		end
		default: begin
			sync_rhs_array_muxed16 <= videooutsoc_sdram_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed17 <= 1'd0;
	case (videooutsoc_sdram_sel2)
		1'd0: begin
			sync_rhs_array_muxed17 <= videooutsoc_sdram_nop_ras;
		end
		1'd1: begin
			sync_rhs_array_muxed17 <= videooutsoc_sdram_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			sync_rhs_array_muxed17 <= videooutsoc_sdram_choose_req_cmd_payload_ras;
		end
		default: begin
			sync_rhs_array_muxed17 <= videooutsoc_sdram_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed18 <= 1'd0;
	case (videooutsoc_sdram_sel2)
		1'd0: begin
			sync_rhs_array_muxed18 <= videooutsoc_sdram_nop_we;
		end
		1'd1: begin
			sync_rhs_array_muxed18 <= videooutsoc_sdram_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			sync_rhs_array_muxed18 <= videooutsoc_sdram_choose_req_cmd_payload_we;
		end
		default: begin
			sync_rhs_array_muxed18 <= videooutsoc_sdram_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed19 <= 1'd0;
	case (videooutsoc_sdram_sel2)
		1'd0: begin
			sync_rhs_array_muxed19 <= 1'd0;
		end
		1'd1: begin
			sync_rhs_array_muxed19 <= (videooutsoc_sdram_choose_cmd_cmd_valid & videooutsoc_sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			sync_rhs_array_muxed19 <= (videooutsoc_sdram_choose_req_cmd_valid & videooutsoc_sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			sync_rhs_array_muxed19 <= (videooutsoc_sdram_cmd_valid & videooutsoc_sdram_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed20 <= 1'd0;
	case (videooutsoc_sdram_sel2)
		1'd0: begin
			sync_rhs_array_muxed20 <= 1'd0;
		end
		1'd1: begin
			sync_rhs_array_muxed20 <= (videooutsoc_sdram_choose_cmd_cmd_valid & videooutsoc_sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			sync_rhs_array_muxed20 <= (videooutsoc_sdram_choose_req_cmd_valid & videooutsoc_sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			sync_rhs_array_muxed20 <= (videooutsoc_sdram_cmd_valid & videooutsoc_sdram_cmd_payload_is_write);
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed21 <= 14'd0;
	case (videooutsoc_sdram_sel3)
		1'd0: begin
			sync_rhs_array_muxed21 <= videooutsoc_sdram_nop_a;
		end
		1'd1: begin
			sync_rhs_array_muxed21 <= videooutsoc_sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			sync_rhs_array_muxed21 <= videooutsoc_sdram_choose_req_cmd_payload_a;
		end
		default: begin
			sync_rhs_array_muxed21 <= videooutsoc_sdram_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed22 <= 3'd0;
	case (videooutsoc_sdram_sel3)
		1'd0: begin
			sync_rhs_array_muxed22 <= videooutsoc_sdram_nop_ba;
		end
		1'd1: begin
			sync_rhs_array_muxed22 <= videooutsoc_sdram_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			sync_rhs_array_muxed22 <= videooutsoc_sdram_choose_req_cmd_payload_ba;
		end
		default: begin
			sync_rhs_array_muxed22 <= videooutsoc_sdram_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed23 <= 1'd0;
	case (videooutsoc_sdram_sel3)
		1'd0: begin
			sync_rhs_array_muxed23 <= videooutsoc_sdram_nop_cas;
		end
		1'd1: begin
			sync_rhs_array_muxed23 <= videooutsoc_sdram_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			sync_rhs_array_muxed23 <= videooutsoc_sdram_choose_req_cmd_payload_cas;
		end
		default: begin
			sync_rhs_array_muxed23 <= videooutsoc_sdram_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed24 <= 1'd0;
	case (videooutsoc_sdram_sel3)
		1'd0: begin
			sync_rhs_array_muxed24 <= videooutsoc_sdram_nop_ras;
		end
		1'd1: begin
			sync_rhs_array_muxed24 <= videooutsoc_sdram_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			sync_rhs_array_muxed24 <= videooutsoc_sdram_choose_req_cmd_payload_ras;
		end
		default: begin
			sync_rhs_array_muxed24 <= videooutsoc_sdram_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed25 <= 1'd0;
	case (videooutsoc_sdram_sel3)
		1'd0: begin
			sync_rhs_array_muxed25 <= videooutsoc_sdram_nop_we;
		end
		1'd1: begin
			sync_rhs_array_muxed25 <= videooutsoc_sdram_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			sync_rhs_array_muxed25 <= videooutsoc_sdram_choose_req_cmd_payload_we;
		end
		default: begin
			sync_rhs_array_muxed25 <= videooutsoc_sdram_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed26 <= 1'd0;
	case (videooutsoc_sdram_sel3)
		1'd0: begin
			sync_rhs_array_muxed26 <= 1'd0;
		end
		1'd1: begin
			sync_rhs_array_muxed26 <= (videooutsoc_sdram_choose_cmd_cmd_valid & videooutsoc_sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			sync_rhs_array_muxed26 <= (videooutsoc_sdram_choose_req_cmd_valid & videooutsoc_sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			sync_rhs_array_muxed26 <= (videooutsoc_sdram_cmd_valid & videooutsoc_sdram_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	sync_rhs_array_muxed27 <= 1'd0;
	case (videooutsoc_sdram_sel3)
		1'd0: begin
			sync_rhs_array_muxed27 <= 1'd0;
		end
		1'd1: begin
			sync_rhs_array_muxed27 <= (videooutsoc_sdram_choose_cmd_cmd_valid & videooutsoc_sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			sync_rhs_array_muxed27 <= (videooutsoc_sdram_choose_req_cmd_valid & videooutsoc_sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			sync_rhs_array_muxed27 <= (videooutsoc_sdram_cmd_valid & videooutsoc_sdram_cmd_payload_is_write);
		end
	endcase
end
assign videooutsoc_videooutsoc_uart_phy_rx = xilinxmultiregimpl0_regs1;
assign xilinxasyncresetsynchronizerimpl0 = ((~videooutsoc_crg_pll_locked) | videooutsoc_crg_rst);
assign xilinxasyncresetsynchronizerimpl1 = ((~videooutsoc_crg_pll_locked) | 1'd1);
assign xilinxasyncresetsynchronizerimpl2 = ((~videooutsoc_crg_pll_locked) | videooutsoc_crg_rst);
assign cmd_fifo_produce_rdomain = xilinxmultiregimpl1_regs1;
assign cmd_fifo_consume_wdomain = xilinxmultiregimpl2_regs1;
assign rdata_fifo_produce_rdomain = xilinxmultiregimpl3_regs1;
assign rdata_fifo_consume_wdomain = xilinxmultiregimpl4_regs1;
assign hdmi_out0_core_initiator_cdc_produce_rdomain = xilinxmultiregimpl5_regs1;
assign hdmi_out0_core_initiator_cdc_consume_wdomain = xilinxmultiregimpl6_regs1;
assign hdmi_out0_core_underflow_enable = xilinxmultiregimpl7_regs1;
assign hdmi_out0_core_toggle_o = xilinxmultiregimpl8_regs1;

always @(posedge clk200_clk) begin
	if ((videooutsoc_crg_reset_counter != 1'd0)) begin
		videooutsoc_crg_reset_counter <= (videooutsoc_crg_reset_counter - 1'd1);
	end else begin
		videooutsoc_crg_ic_reset <= 1'd0;
	end
	if (clk200_rst) begin
		videooutsoc_crg_reset_counter <= 4'd15;
		videooutsoc_crg_ic_reset <= 1'd1;
	end
end

always @(posedge pix_clk) begin
	cmd_fifo_graycounter0_q_binary <= cmd_fifo_graycounter0_q_next_binary;
	cmd_fifo_graycounter0_q <= cmd_fifo_graycounter0_q_next;
	rdata_fifo_graycounter1_q_binary <= rdata_fifo_graycounter1_q_next_binary;
	rdata_fifo_graycounter1_q <= rdata_fifo_graycounter1_q_next;
	if (counter_ce) begin
		counter <= (counter + 1'd1);
	end
	if ((rdata_converter_source_valid & rdata_converter_source_ready)) begin
		rdata_chunk <= {rdata_chunk[14:0], rdata_chunk[15]};
	end
	if (((cmd_buffer_syncfifo_we & cmd_buffer_syncfifo_writable) & (~cmd_buffer_replace))) begin
		cmd_buffer_produce <= (cmd_buffer_produce + 1'd1);
	end
	if (cmd_buffer_do_read) begin
		cmd_buffer_consume <= (cmd_buffer_consume + 1'd1);
	end
	if (((cmd_buffer_syncfifo_we & cmd_buffer_syncfifo_writable) & (~cmd_buffer_replace))) begin
		if ((~cmd_buffer_do_read)) begin
			cmd_buffer_level <= (cmd_buffer_level + 1'd1);
		end
	end else begin
		if (cmd_buffer_do_read) begin
			cmd_buffer_level <= (cmd_buffer_level - 1'd1);
		end
	end
	if (rdata_buffer_pipe_ce) begin
		rdata_buffer_valid_n <= rdata_buffer_sink_valid;
	end
	if (rdata_buffer_pipe_ce) begin
		rdata_buffer_first_n <= (rdata_buffer_sink_valid & rdata_buffer_sink_first);
		rdata_buffer_last_n <= (rdata_buffer_sink_valid & rdata_buffer_sink_last);
	end
	if (rdata_buffer_pipe_ce) begin
		rdata_buffer_source_payload_data <= rdata_buffer_sink_payload_data;
	end
	if ((rdata_converter_converter_source_valid & rdata_converter_converter_source_ready)) begin
		if (rdata_converter_converter_last) begin
			rdata_converter_converter_mux <= 1'd0;
		end else begin
			rdata_converter_converter_mux <= (rdata_converter_converter_mux + 1'd1);
		end
	end
	hdmi_out0_de_r <= hdmi_out0_core_source_source_param_de;
	hdmi_out0_core_source_valid_d <= hdmi_out0_core_source_source_valid;
	hdmi_out0_core_source_data_d <= hdmi_out0_core_source_source_payload_data;
	if (hdmi_out0_core_underflow_enable) begin
		if ((~hdmi_out0_core_source_source_valid)) begin
			hdmi_out0_core_underflow_counter <= (hdmi_out0_core_underflow_counter + 1'd1);
		end
	end else begin
		hdmi_out0_core_underflow_counter <= 1'd0;
	end
	if (hdmi_out0_core_underflow_update) begin
		hdmi_out0_core_underflow_counter_status <= hdmi_out0_core_underflow_counter;
	end
	hdmi_out0_core_initiator_cdc_graycounter1_q_binary <= hdmi_out0_core_initiator_cdc_graycounter1_q_next_binary;
	hdmi_out0_core_initiator_cdc_graycounter1_q <= hdmi_out0_core_initiator_cdc_graycounter1_q_next;
	if ((~hdmi_out0_core_timinggenerator_sink_valid)) begin
		hdmi_out0_core_timinggenerator_hactive <= 1'd0;
		hdmi_out0_core_timinggenerator_vactive <= 1'd0;
		hdmi_out0_core_timinggenerator_hcounter <= 1'd0;
		hdmi_out0_core_timinggenerator_vcounter <= 1'd0;
	end else begin
		if (hdmi_out0_core_timinggenerator_source_ready) begin
			hdmi_out0_core_timinggenerator_source_last <= 1'd0;
			hdmi_out0_core_timinggenerator_hcounter <= (hdmi_out0_core_timinggenerator_hcounter + 1'd1);
			if ((hdmi_out0_core_timinggenerator_hcounter == 1'd0)) begin
				hdmi_out0_core_timinggenerator_hactive <= 1'd1;
			end
			if ((hdmi_out0_core_timinggenerator_hcounter == hdmi_out0_core_timinggenerator_sink_payload_hres)) begin
				hdmi_out0_core_timinggenerator_hactive <= 1'd0;
			end
			if ((hdmi_out0_core_timinggenerator_hcounter == hdmi_out0_core_timinggenerator_sink_payload_hsync_start)) begin
				hdmi_out0_core_timinggenerator_source_payload_hsync <= 1'd1;
			end
			if ((hdmi_out0_core_timinggenerator_hcounter == hdmi_out0_core_timinggenerator_sink_payload_hsync_end)) begin
				hdmi_out0_core_timinggenerator_source_payload_hsync <= 1'd0;
			end
			if ((hdmi_out0_core_timinggenerator_hcounter == hdmi_out0_core_timinggenerator_sink_payload_hscan)) begin
				hdmi_out0_core_timinggenerator_hcounter <= 1'd0;
				if ((hdmi_out0_core_timinggenerator_vcounter == hdmi_out0_core_timinggenerator_sink_payload_vscan)) begin
					hdmi_out0_core_timinggenerator_vcounter <= 1'd0;
					hdmi_out0_core_timinggenerator_source_last <= 1'd1;
				end else begin
					hdmi_out0_core_timinggenerator_vcounter <= (hdmi_out0_core_timinggenerator_vcounter + 1'd1);
				end
			end
			if ((hdmi_out0_core_timinggenerator_vcounter == 1'd0)) begin
				hdmi_out0_core_timinggenerator_vactive <= 1'd1;
			end
			if ((hdmi_out0_core_timinggenerator_vcounter == hdmi_out0_core_timinggenerator_sink_payload_vres)) begin
				hdmi_out0_core_timinggenerator_vactive <= 1'd0;
			end
			if ((hdmi_out0_core_timinggenerator_vcounter == hdmi_out0_core_timinggenerator_sink_payload_vsync_start)) begin
				hdmi_out0_core_timinggenerator_source_payload_vsync <= 1'd1;
			end
			if ((hdmi_out0_core_timinggenerator_vcounter == hdmi_out0_core_timinggenerator_sink_payload_vsync_end)) begin
				hdmi_out0_core_timinggenerator_source_payload_vsync <= 1'd0;
			end
		end
	end
	if (hdmi_out0_core_dmareader_request_issued) begin
		if ((~hdmi_out0_core_dmareader_data_dequeued)) begin
			hdmi_out0_core_dmareader_rsv_level <= (hdmi_out0_core_dmareader_rsv_level + 1'd1);
		end
	end else begin
		if (hdmi_out0_core_dmareader_data_dequeued) begin
			hdmi_out0_core_dmareader_rsv_level <= (hdmi_out0_core_dmareader_rsv_level - 1'd1);
		end
	end
	if (hdmi_out0_core_dmareader_fifo_syncfifo_re) begin
		hdmi_out0_core_dmareader_fifo_readable <= 1'd1;
	end else begin
		if (hdmi_out0_core_dmareader_fifo_re) begin
			hdmi_out0_core_dmareader_fifo_readable <= 1'd0;
		end
	end
	if (((hdmi_out0_core_dmareader_fifo_syncfifo_we & hdmi_out0_core_dmareader_fifo_syncfifo_writable) & (~hdmi_out0_core_dmareader_fifo_replace))) begin
		hdmi_out0_core_dmareader_fifo_produce <= (hdmi_out0_core_dmareader_fifo_produce + 1'd1);
	end
	if (hdmi_out0_core_dmareader_fifo_do_read) begin
		hdmi_out0_core_dmareader_fifo_consume <= (hdmi_out0_core_dmareader_fifo_consume + 1'd1);
	end
	if (((hdmi_out0_core_dmareader_fifo_syncfifo_we & hdmi_out0_core_dmareader_fifo_syncfifo_writable) & (~hdmi_out0_core_dmareader_fifo_replace))) begin
		if ((~hdmi_out0_core_dmareader_fifo_do_read)) begin
			hdmi_out0_core_dmareader_fifo_level0 <= (hdmi_out0_core_dmareader_fifo_level0 + 1'd1);
		end
	end else begin
		if (hdmi_out0_core_dmareader_fifo_do_read) begin
			hdmi_out0_core_dmareader_fifo_level0 <= (hdmi_out0_core_dmareader_fifo_level0 - 1'd1);
		end
	end
	videoout_state <= videoout_next_state;
	if (hdmi_out0_core_dmareader_offset_next_value_ce) begin
		hdmi_out0_core_dmareader_offset <= hdmi_out0_core_dmareader_offset_next_value;
	end
	hdmi_out0_core_toggle_o_r <= hdmi_out0_core_toggle_o;
	hdmi_out0_driver_s7hdmioutclocking_ce <= (~pix_rst);
	hdmi_out0_driver_hdmi_phy_es0_ce <= (~pix_rst);
	hdmi_out0_driver_hdmi_phy_es0_n1d <= (((((((hdmi_out0_driver_hdmi_phy_es0_d0[0] + hdmi_out0_driver_hdmi_phy_es0_d0[1]) + hdmi_out0_driver_hdmi_phy_es0_d0[2]) + hdmi_out0_driver_hdmi_phy_es0_d0[3]) + hdmi_out0_driver_hdmi_phy_es0_d0[4]) + hdmi_out0_driver_hdmi_phy_es0_d0[5]) + hdmi_out0_driver_hdmi_phy_es0_d0[6]) + hdmi_out0_driver_hdmi_phy_es0_d0[7]);
	hdmi_out0_driver_hdmi_phy_es0_d1 <= hdmi_out0_driver_hdmi_phy_es0_d0;
	hdmi_out0_driver_hdmi_phy_es0_q_m[0] <= hdmi_out0_driver_hdmi_phy_es0_d1[0];
	hdmi_out0_driver_hdmi_phy_es0_q_m[1] <= ((hdmi_out0_driver_hdmi_phy_es0_d1[0] ^ hdmi_out0_driver_hdmi_phy_es0_d1[1]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n);
	hdmi_out0_driver_hdmi_phy_es0_q_m[2] <= ((((hdmi_out0_driver_hdmi_phy_es0_d1[0] ^ hdmi_out0_driver_hdmi_phy_es0_d1[1]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es0_d1[2]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n);
	hdmi_out0_driver_hdmi_phy_es0_q_m[3] <= ((((((hdmi_out0_driver_hdmi_phy_es0_d1[0] ^ hdmi_out0_driver_hdmi_phy_es0_d1[1]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es0_d1[2]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es0_d1[3]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n);
	hdmi_out0_driver_hdmi_phy_es0_q_m[4] <= ((((((((hdmi_out0_driver_hdmi_phy_es0_d1[0] ^ hdmi_out0_driver_hdmi_phy_es0_d1[1]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es0_d1[2]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es0_d1[3]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es0_d1[4]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n);
	hdmi_out0_driver_hdmi_phy_es0_q_m[5] <= ((((((((((hdmi_out0_driver_hdmi_phy_es0_d1[0] ^ hdmi_out0_driver_hdmi_phy_es0_d1[1]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es0_d1[2]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es0_d1[3]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es0_d1[4]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es0_d1[5]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n);
	hdmi_out0_driver_hdmi_phy_es0_q_m[6] <= ((((((((((((hdmi_out0_driver_hdmi_phy_es0_d1[0] ^ hdmi_out0_driver_hdmi_phy_es0_d1[1]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es0_d1[2]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es0_d1[3]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es0_d1[4]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es0_d1[5]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es0_d1[6]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n);
	hdmi_out0_driver_hdmi_phy_es0_q_m[7] <= ((((((((((((((hdmi_out0_driver_hdmi_phy_es0_d1[0] ^ hdmi_out0_driver_hdmi_phy_es0_d1[1]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es0_d1[2]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es0_d1[3]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es0_d1[4]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es0_d1[5]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es0_d1[6]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es0_d1[7]) ^ hdmi_out0_driver_hdmi_phy_es0_q_m8_n);
	hdmi_out0_driver_hdmi_phy_es0_q_m[8] <= (~hdmi_out0_driver_hdmi_phy_es0_q_m8_n);
	hdmi_out0_driver_hdmi_phy_es0_n0q_m <= ((((((((~hdmi_out0_driver_hdmi_phy_es0_q_m[0]) + (~hdmi_out0_driver_hdmi_phy_es0_q_m[1])) + (~hdmi_out0_driver_hdmi_phy_es0_q_m[2])) + (~hdmi_out0_driver_hdmi_phy_es0_q_m[3])) + (~hdmi_out0_driver_hdmi_phy_es0_q_m[4])) + (~hdmi_out0_driver_hdmi_phy_es0_q_m[5])) + (~hdmi_out0_driver_hdmi_phy_es0_q_m[6])) + (~hdmi_out0_driver_hdmi_phy_es0_q_m[7]));
	hdmi_out0_driver_hdmi_phy_es0_n1q_m <= (((((((hdmi_out0_driver_hdmi_phy_es0_q_m[0] + hdmi_out0_driver_hdmi_phy_es0_q_m[1]) + hdmi_out0_driver_hdmi_phy_es0_q_m[2]) + hdmi_out0_driver_hdmi_phy_es0_q_m[3]) + hdmi_out0_driver_hdmi_phy_es0_q_m[4]) + hdmi_out0_driver_hdmi_phy_es0_q_m[5]) + hdmi_out0_driver_hdmi_phy_es0_q_m[6]) + hdmi_out0_driver_hdmi_phy_es0_q_m[7]);
	hdmi_out0_driver_hdmi_phy_es0_q_m_r <= hdmi_out0_driver_hdmi_phy_es0_q_m;
	hdmi_out0_driver_hdmi_phy_es0_new_c0 <= hdmi_out0_driver_hdmi_phy_es0_c;
	hdmi_out0_driver_hdmi_phy_es0_new_de0 <= hdmi_out0_driver_hdmi_phy_es0_de;
	hdmi_out0_driver_hdmi_phy_es0_new_c1 <= hdmi_out0_driver_hdmi_phy_es0_new_c0;
	hdmi_out0_driver_hdmi_phy_es0_new_de1 <= hdmi_out0_driver_hdmi_phy_es0_new_de0;
	hdmi_out0_driver_hdmi_phy_es0_new_c2 <= hdmi_out0_driver_hdmi_phy_es0_new_c1;
	hdmi_out0_driver_hdmi_phy_es0_new_de2 <= hdmi_out0_driver_hdmi_phy_es0_new_de1;
	if (hdmi_out0_driver_hdmi_phy_es0_new_de2) begin
		if (((hdmi_out0_driver_hdmi_phy_es0_cnt == $signed({1'd0, 1'd0})) | $signed({1'd0, (hdmi_out0_driver_hdmi_phy_es0_n1q_m == hdmi_out0_driver_hdmi_phy_es0_n0q_m)}))) begin
			hdmi_out0_driver_hdmi_phy_es0_out[9] <= (~hdmi_out0_driver_hdmi_phy_es0_q_m_r[8]);
			hdmi_out0_driver_hdmi_phy_es0_out[8] <= hdmi_out0_driver_hdmi_phy_es0_q_m_r[8];
			if (hdmi_out0_driver_hdmi_phy_es0_q_m_r[8]) begin
				hdmi_out0_driver_hdmi_phy_es0_out[7:0] <= hdmi_out0_driver_hdmi_phy_es0_q_m_r[7:0];
				hdmi_out0_driver_hdmi_phy_es0_cnt <= ((hdmi_out0_driver_hdmi_phy_es0_cnt + $signed({1'd0, hdmi_out0_driver_hdmi_phy_es0_n1q_m})) - $signed({1'd0, hdmi_out0_driver_hdmi_phy_es0_n0q_m}));
			end else begin
				hdmi_out0_driver_hdmi_phy_es0_out[7:0] <= (~hdmi_out0_driver_hdmi_phy_es0_q_m_r[7:0]);
				hdmi_out0_driver_hdmi_phy_es0_cnt <= ((hdmi_out0_driver_hdmi_phy_es0_cnt + $signed({1'd0, hdmi_out0_driver_hdmi_phy_es0_n0q_m})) - $signed({1'd0, hdmi_out0_driver_hdmi_phy_es0_n1q_m}));
			end
		end else begin
			if ((((~hdmi_out0_driver_hdmi_phy_es0_cnt[5]) & $signed({1'd0, (hdmi_out0_driver_hdmi_phy_es0_n1q_m > hdmi_out0_driver_hdmi_phy_es0_n0q_m)})) | (hdmi_out0_driver_hdmi_phy_es0_cnt[5] & $signed({1'd0, (hdmi_out0_driver_hdmi_phy_es0_n0q_m > hdmi_out0_driver_hdmi_phy_es0_n1q_m)})))) begin
				hdmi_out0_driver_hdmi_phy_es0_out[9] <= 1'd1;
				hdmi_out0_driver_hdmi_phy_es0_out[8] <= hdmi_out0_driver_hdmi_phy_es0_q_m_r[8];
				hdmi_out0_driver_hdmi_phy_es0_out[7:0] <= (~hdmi_out0_driver_hdmi_phy_es0_q_m_r[7:0]);
				hdmi_out0_driver_hdmi_phy_es0_cnt <= (((hdmi_out0_driver_hdmi_phy_es0_cnt + $signed({1'd0, {hdmi_out0_driver_hdmi_phy_es0_q_m_r[8], 1'd0}})) + $signed({1'd0, hdmi_out0_driver_hdmi_phy_es0_n0q_m})) - $signed({1'd0, hdmi_out0_driver_hdmi_phy_es0_n1q_m}));
			end else begin
				hdmi_out0_driver_hdmi_phy_es0_out[9] <= 1'd0;
				hdmi_out0_driver_hdmi_phy_es0_out[8] <= hdmi_out0_driver_hdmi_phy_es0_q_m_r[8];
				hdmi_out0_driver_hdmi_phy_es0_out[7:0] <= hdmi_out0_driver_hdmi_phy_es0_q_m_r[7:0];
				hdmi_out0_driver_hdmi_phy_es0_cnt <= (((hdmi_out0_driver_hdmi_phy_es0_cnt - $signed({1'd0, {(~hdmi_out0_driver_hdmi_phy_es0_q_m_r[8]), 1'd0}})) + $signed({1'd0, hdmi_out0_driver_hdmi_phy_es0_n1q_m})) - $signed({1'd0, hdmi_out0_driver_hdmi_phy_es0_n0q_m}));
			end
		end
	end else begin
		hdmi_out0_driver_hdmi_phy_es0_out <= sync_f_array_muxed0;
		hdmi_out0_driver_hdmi_phy_es0_cnt <= 1'd0;
	end
	hdmi_out0_driver_hdmi_phy_es1_ce <= (~pix_rst);
	hdmi_out0_driver_hdmi_phy_es1_n1d <= (((((((hdmi_out0_driver_hdmi_phy_es1_d0[0] + hdmi_out0_driver_hdmi_phy_es1_d0[1]) + hdmi_out0_driver_hdmi_phy_es1_d0[2]) + hdmi_out0_driver_hdmi_phy_es1_d0[3]) + hdmi_out0_driver_hdmi_phy_es1_d0[4]) + hdmi_out0_driver_hdmi_phy_es1_d0[5]) + hdmi_out0_driver_hdmi_phy_es1_d0[6]) + hdmi_out0_driver_hdmi_phy_es1_d0[7]);
	hdmi_out0_driver_hdmi_phy_es1_d1 <= hdmi_out0_driver_hdmi_phy_es1_d0;
	hdmi_out0_driver_hdmi_phy_es1_q_m[0] <= hdmi_out0_driver_hdmi_phy_es1_d1[0];
	hdmi_out0_driver_hdmi_phy_es1_q_m[1] <= ((hdmi_out0_driver_hdmi_phy_es1_d1[0] ^ hdmi_out0_driver_hdmi_phy_es1_d1[1]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n);
	hdmi_out0_driver_hdmi_phy_es1_q_m[2] <= ((((hdmi_out0_driver_hdmi_phy_es1_d1[0] ^ hdmi_out0_driver_hdmi_phy_es1_d1[1]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es1_d1[2]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n);
	hdmi_out0_driver_hdmi_phy_es1_q_m[3] <= ((((((hdmi_out0_driver_hdmi_phy_es1_d1[0] ^ hdmi_out0_driver_hdmi_phy_es1_d1[1]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es1_d1[2]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es1_d1[3]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n);
	hdmi_out0_driver_hdmi_phy_es1_q_m[4] <= ((((((((hdmi_out0_driver_hdmi_phy_es1_d1[0] ^ hdmi_out0_driver_hdmi_phy_es1_d1[1]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es1_d1[2]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es1_d1[3]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es1_d1[4]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n);
	hdmi_out0_driver_hdmi_phy_es1_q_m[5] <= ((((((((((hdmi_out0_driver_hdmi_phy_es1_d1[0] ^ hdmi_out0_driver_hdmi_phy_es1_d1[1]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es1_d1[2]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es1_d1[3]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es1_d1[4]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es1_d1[5]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n);
	hdmi_out0_driver_hdmi_phy_es1_q_m[6] <= ((((((((((((hdmi_out0_driver_hdmi_phy_es1_d1[0] ^ hdmi_out0_driver_hdmi_phy_es1_d1[1]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es1_d1[2]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es1_d1[3]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es1_d1[4]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es1_d1[5]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es1_d1[6]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n);
	hdmi_out0_driver_hdmi_phy_es1_q_m[7] <= ((((((((((((((hdmi_out0_driver_hdmi_phy_es1_d1[0] ^ hdmi_out0_driver_hdmi_phy_es1_d1[1]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es1_d1[2]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es1_d1[3]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es1_d1[4]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es1_d1[5]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es1_d1[6]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es1_d1[7]) ^ hdmi_out0_driver_hdmi_phy_es1_q_m8_n);
	hdmi_out0_driver_hdmi_phy_es1_q_m[8] <= (~hdmi_out0_driver_hdmi_phy_es1_q_m8_n);
	hdmi_out0_driver_hdmi_phy_es1_n0q_m <= ((((((((~hdmi_out0_driver_hdmi_phy_es1_q_m[0]) + (~hdmi_out0_driver_hdmi_phy_es1_q_m[1])) + (~hdmi_out0_driver_hdmi_phy_es1_q_m[2])) + (~hdmi_out0_driver_hdmi_phy_es1_q_m[3])) + (~hdmi_out0_driver_hdmi_phy_es1_q_m[4])) + (~hdmi_out0_driver_hdmi_phy_es1_q_m[5])) + (~hdmi_out0_driver_hdmi_phy_es1_q_m[6])) + (~hdmi_out0_driver_hdmi_phy_es1_q_m[7]));
	hdmi_out0_driver_hdmi_phy_es1_n1q_m <= (((((((hdmi_out0_driver_hdmi_phy_es1_q_m[0] + hdmi_out0_driver_hdmi_phy_es1_q_m[1]) + hdmi_out0_driver_hdmi_phy_es1_q_m[2]) + hdmi_out0_driver_hdmi_phy_es1_q_m[3]) + hdmi_out0_driver_hdmi_phy_es1_q_m[4]) + hdmi_out0_driver_hdmi_phy_es1_q_m[5]) + hdmi_out0_driver_hdmi_phy_es1_q_m[6]) + hdmi_out0_driver_hdmi_phy_es1_q_m[7]);
	hdmi_out0_driver_hdmi_phy_es1_q_m_r <= hdmi_out0_driver_hdmi_phy_es1_q_m;
	hdmi_out0_driver_hdmi_phy_es1_new_c0 <= hdmi_out0_driver_hdmi_phy_es1_c;
	hdmi_out0_driver_hdmi_phy_es1_new_de0 <= hdmi_out0_driver_hdmi_phy_es1_de;
	hdmi_out0_driver_hdmi_phy_es1_new_c1 <= hdmi_out0_driver_hdmi_phy_es1_new_c0;
	hdmi_out0_driver_hdmi_phy_es1_new_de1 <= hdmi_out0_driver_hdmi_phy_es1_new_de0;
	hdmi_out0_driver_hdmi_phy_es1_new_c2 <= hdmi_out0_driver_hdmi_phy_es1_new_c1;
	hdmi_out0_driver_hdmi_phy_es1_new_de2 <= hdmi_out0_driver_hdmi_phy_es1_new_de1;
	if (hdmi_out0_driver_hdmi_phy_es1_new_de2) begin
		if (((hdmi_out0_driver_hdmi_phy_es1_cnt == $signed({1'd0, 1'd0})) | $signed({1'd0, (hdmi_out0_driver_hdmi_phy_es1_n1q_m == hdmi_out0_driver_hdmi_phy_es1_n0q_m)}))) begin
			hdmi_out0_driver_hdmi_phy_es1_out[9] <= (~hdmi_out0_driver_hdmi_phy_es1_q_m_r[8]);
			hdmi_out0_driver_hdmi_phy_es1_out[8] <= hdmi_out0_driver_hdmi_phy_es1_q_m_r[8];
			if (hdmi_out0_driver_hdmi_phy_es1_q_m_r[8]) begin
				hdmi_out0_driver_hdmi_phy_es1_out[7:0] <= hdmi_out0_driver_hdmi_phy_es1_q_m_r[7:0];
				hdmi_out0_driver_hdmi_phy_es1_cnt <= ((hdmi_out0_driver_hdmi_phy_es1_cnt + $signed({1'd0, hdmi_out0_driver_hdmi_phy_es1_n1q_m})) - $signed({1'd0, hdmi_out0_driver_hdmi_phy_es1_n0q_m}));
			end else begin
				hdmi_out0_driver_hdmi_phy_es1_out[7:0] <= (~hdmi_out0_driver_hdmi_phy_es1_q_m_r[7:0]);
				hdmi_out0_driver_hdmi_phy_es1_cnt <= ((hdmi_out0_driver_hdmi_phy_es1_cnt + $signed({1'd0, hdmi_out0_driver_hdmi_phy_es1_n0q_m})) - $signed({1'd0, hdmi_out0_driver_hdmi_phy_es1_n1q_m}));
			end
		end else begin
			if ((((~hdmi_out0_driver_hdmi_phy_es1_cnt[5]) & $signed({1'd0, (hdmi_out0_driver_hdmi_phy_es1_n1q_m > hdmi_out0_driver_hdmi_phy_es1_n0q_m)})) | (hdmi_out0_driver_hdmi_phy_es1_cnt[5] & $signed({1'd0, (hdmi_out0_driver_hdmi_phy_es1_n0q_m > hdmi_out0_driver_hdmi_phy_es1_n1q_m)})))) begin
				hdmi_out0_driver_hdmi_phy_es1_out[9] <= 1'd1;
				hdmi_out0_driver_hdmi_phy_es1_out[8] <= hdmi_out0_driver_hdmi_phy_es1_q_m_r[8];
				hdmi_out0_driver_hdmi_phy_es1_out[7:0] <= (~hdmi_out0_driver_hdmi_phy_es1_q_m_r[7:0]);
				hdmi_out0_driver_hdmi_phy_es1_cnt <= (((hdmi_out0_driver_hdmi_phy_es1_cnt + $signed({1'd0, {hdmi_out0_driver_hdmi_phy_es1_q_m_r[8], 1'd0}})) + $signed({1'd0, hdmi_out0_driver_hdmi_phy_es1_n0q_m})) - $signed({1'd0, hdmi_out0_driver_hdmi_phy_es1_n1q_m}));
			end else begin
				hdmi_out0_driver_hdmi_phy_es1_out[9] <= 1'd0;
				hdmi_out0_driver_hdmi_phy_es1_out[8] <= hdmi_out0_driver_hdmi_phy_es1_q_m_r[8];
				hdmi_out0_driver_hdmi_phy_es1_out[7:0] <= hdmi_out0_driver_hdmi_phy_es1_q_m_r[7:0];
				hdmi_out0_driver_hdmi_phy_es1_cnt <= (((hdmi_out0_driver_hdmi_phy_es1_cnt - $signed({1'd0, {(~hdmi_out0_driver_hdmi_phy_es1_q_m_r[8]), 1'd0}})) + $signed({1'd0, hdmi_out0_driver_hdmi_phy_es1_n1q_m})) - $signed({1'd0, hdmi_out0_driver_hdmi_phy_es1_n0q_m}));
			end
		end
	end else begin
		hdmi_out0_driver_hdmi_phy_es1_out <= sync_f_array_muxed1;
		hdmi_out0_driver_hdmi_phy_es1_cnt <= 1'd0;
	end
	hdmi_out0_driver_hdmi_phy_es2_ce <= (~pix_rst);
	hdmi_out0_driver_hdmi_phy_es2_n1d <= (((((((hdmi_out0_driver_hdmi_phy_es2_d0[0] + hdmi_out0_driver_hdmi_phy_es2_d0[1]) + hdmi_out0_driver_hdmi_phy_es2_d0[2]) + hdmi_out0_driver_hdmi_phy_es2_d0[3]) + hdmi_out0_driver_hdmi_phy_es2_d0[4]) + hdmi_out0_driver_hdmi_phy_es2_d0[5]) + hdmi_out0_driver_hdmi_phy_es2_d0[6]) + hdmi_out0_driver_hdmi_phy_es2_d0[7]);
	hdmi_out0_driver_hdmi_phy_es2_d1 <= hdmi_out0_driver_hdmi_phy_es2_d0;
	hdmi_out0_driver_hdmi_phy_es2_q_m[0] <= hdmi_out0_driver_hdmi_phy_es2_d1[0];
	hdmi_out0_driver_hdmi_phy_es2_q_m[1] <= ((hdmi_out0_driver_hdmi_phy_es2_d1[0] ^ hdmi_out0_driver_hdmi_phy_es2_d1[1]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n);
	hdmi_out0_driver_hdmi_phy_es2_q_m[2] <= ((((hdmi_out0_driver_hdmi_phy_es2_d1[0] ^ hdmi_out0_driver_hdmi_phy_es2_d1[1]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es2_d1[2]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n);
	hdmi_out0_driver_hdmi_phy_es2_q_m[3] <= ((((((hdmi_out0_driver_hdmi_phy_es2_d1[0] ^ hdmi_out0_driver_hdmi_phy_es2_d1[1]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es2_d1[2]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es2_d1[3]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n);
	hdmi_out0_driver_hdmi_phy_es2_q_m[4] <= ((((((((hdmi_out0_driver_hdmi_phy_es2_d1[0] ^ hdmi_out0_driver_hdmi_phy_es2_d1[1]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es2_d1[2]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es2_d1[3]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es2_d1[4]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n);
	hdmi_out0_driver_hdmi_phy_es2_q_m[5] <= ((((((((((hdmi_out0_driver_hdmi_phy_es2_d1[0] ^ hdmi_out0_driver_hdmi_phy_es2_d1[1]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es2_d1[2]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es2_d1[3]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es2_d1[4]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es2_d1[5]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n);
	hdmi_out0_driver_hdmi_phy_es2_q_m[6] <= ((((((((((((hdmi_out0_driver_hdmi_phy_es2_d1[0] ^ hdmi_out0_driver_hdmi_phy_es2_d1[1]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es2_d1[2]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es2_d1[3]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es2_d1[4]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es2_d1[5]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es2_d1[6]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n);
	hdmi_out0_driver_hdmi_phy_es2_q_m[7] <= ((((((((((((((hdmi_out0_driver_hdmi_phy_es2_d1[0] ^ hdmi_out0_driver_hdmi_phy_es2_d1[1]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es2_d1[2]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es2_d1[3]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es2_d1[4]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es2_d1[5]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es2_d1[6]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n) ^ hdmi_out0_driver_hdmi_phy_es2_d1[7]) ^ hdmi_out0_driver_hdmi_phy_es2_q_m8_n);
	hdmi_out0_driver_hdmi_phy_es2_q_m[8] <= (~hdmi_out0_driver_hdmi_phy_es2_q_m8_n);
	hdmi_out0_driver_hdmi_phy_es2_n0q_m <= ((((((((~hdmi_out0_driver_hdmi_phy_es2_q_m[0]) + (~hdmi_out0_driver_hdmi_phy_es2_q_m[1])) + (~hdmi_out0_driver_hdmi_phy_es2_q_m[2])) + (~hdmi_out0_driver_hdmi_phy_es2_q_m[3])) + (~hdmi_out0_driver_hdmi_phy_es2_q_m[4])) + (~hdmi_out0_driver_hdmi_phy_es2_q_m[5])) + (~hdmi_out0_driver_hdmi_phy_es2_q_m[6])) + (~hdmi_out0_driver_hdmi_phy_es2_q_m[7]));
	hdmi_out0_driver_hdmi_phy_es2_n1q_m <= (((((((hdmi_out0_driver_hdmi_phy_es2_q_m[0] + hdmi_out0_driver_hdmi_phy_es2_q_m[1]) + hdmi_out0_driver_hdmi_phy_es2_q_m[2]) + hdmi_out0_driver_hdmi_phy_es2_q_m[3]) + hdmi_out0_driver_hdmi_phy_es2_q_m[4]) + hdmi_out0_driver_hdmi_phy_es2_q_m[5]) + hdmi_out0_driver_hdmi_phy_es2_q_m[6]) + hdmi_out0_driver_hdmi_phy_es2_q_m[7]);
	hdmi_out0_driver_hdmi_phy_es2_q_m_r <= hdmi_out0_driver_hdmi_phy_es2_q_m;
	hdmi_out0_driver_hdmi_phy_es2_new_c0 <= hdmi_out0_driver_hdmi_phy_es2_c;
	hdmi_out0_driver_hdmi_phy_es2_new_de0 <= hdmi_out0_driver_hdmi_phy_es2_de;
	hdmi_out0_driver_hdmi_phy_es2_new_c1 <= hdmi_out0_driver_hdmi_phy_es2_new_c0;
	hdmi_out0_driver_hdmi_phy_es2_new_de1 <= hdmi_out0_driver_hdmi_phy_es2_new_de0;
	hdmi_out0_driver_hdmi_phy_es2_new_c2 <= hdmi_out0_driver_hdmi_phy_es2_new_c1;
	hdmi_out0_driver_hdmi_phy_es2_new_de2 <= hdmi_out0_driver_hdmi_phy_es2_new_de1;
	if (hdmi_out0_driver_hdmi_phy_es2_new_de2) begin
		if (((hdmi_out0_driver_hdmi_phy_es2_cnt == $signed({1'd0, 1'd0})) | $signed({1'd0, (hdmi_out0_driver_hdmi_phy_es2_n1q_m == hdmi_out0_driver_hdmi_phy_es2_n0q_m)}))) begin
			hdmi_out0_driver_hdmi_phy_es2_out[9] <= (~hdmi_out0_driver_hdmi_phy_es2_q_m_r[8]);
			hdmi_out0_driver_hdmi_phy_es2_out[8] <= hdmi_out0_driver_hdmi_phy_es2_q_m_r[8];
			if (hdmi_out0_driver_hdmi_phy_es2_q_m_r[8]) begin
				hdmi_out0_driver_hdmi_phy_es2_out[7:0] <= hdmi_out0_driver_hdmi_phy_es2_q_m_r[7:0];
				hdmi_out0_driver_hdmi_phy_es2_cnt <= ((hdmi_out0_driver_hdmi_phy_es2_cnt + $signed({1'd0, hdmi_out0_driver_hdmi_phy_es2_n1q_m})) - $signed({1'd0, hdmi_out0_driver_hdmi_phy_es2_n0q_m}));
			end else begin
				hdmi_out0_driver_hdmi_phy_es2_out[7:0] <= (~hdmi_out0_driver_hdmi_phy_es2_q_m_r[7:0]);
				hdmi_out0_driver_hdmi_phy_es2_cnt <= ((hdmi_out0_driver_hdmi_phy_es2_cnt + $signed({1'd0, hdmi_out0_driver_hdmi_phy_es2_n0q_m})) - $signed({1'd0, hdmi_out0_driver_hdmi_phy_es2_n1q_m}));
			end
		end else begin
			if ((((~hdmi_out0_driver_hdmi_phy_es2_cnt[5]) & $signed({1'd0, (hdmi_out0_driver_hdmi_phy_es2_n1q_m > hdmi_out0_driver_hdmi_phy_es2_n0q_m)})) | (hdmi_out0_driver_hdmi_phy_es2_cnt[5] & $signed({1'd0, (hdmi_out0_driver_hdmi_phy_es2_n0q_m > hdmi_out0_driver_hdmi_phy_es2_n1q_m)})))) begin
				hdmi_out0_driver_hdmi_phy_es2_out[9] <= 1'd1;
				hdmi_out0_driver_hdmi_phy_es2_out[8] <= hdmi_out0_driver_hdmi_phy_es2_q_m_r[8];
				hdmi_out0_driver_hdmi_phy_es2_out[7:0] <= (~hdmi_out0_driver_hdmi_phy_es2_q_m_r[7:0]);
				hdmi_out0_driver_hdmi_phy_es2_cnt <= (((hdmi_out0_driver_hdmi_phy_es2_cnt + $signed({1'd0, {hdmi_out0_driver_hdmi_phy_es2_q_m_r[8], 1'd0}})) + $signed({1'd0, hdmi_out0_driver_hdmi_phy_es2_n0q_m})) - $signed({1'd0, hdmi_out0_driver_hdmi_phy_es2_n1q_m}));
			end else begin
				hdmi_out0_driver_hdmi_phy_es2_out[9] <= 1'd0;
				hdmi_out0_driver_hdmi_phy_es2_out[8] <= hdmi_out0_driver_hdmi_phy_es2_q_m_r[8];
				hdmi_out0_driver_hdmi_phy_es2_out[7:0] <= hdmi_out0_driver_hdmi_phy_es2_q_m_r[7:0];
				hdmi_out0_driver_hdmi_phy_es2_cnt <= (((hdmi_out0_driver_hdmi_phy_es2_cnt - $signed({1'd0, {(~hdmi_out0_driver_hdmi_phy_es2_q_m_r[8]), 1'd0}})) + $signed({1'd0, hdmi_out0_driver_hdmi_phy_es2_n1q_m})) - $signed({1'd0, hdmi_out0_driver_hdmi_phy_es2_n0q_m}));
			end
		end
	end else begin
		hdmi_out0_driver_hdmi_phy_es2_out <= sync_f_array_muxed2;
		hdmi_out0_driver_hdmi_phy_es2_cnt <= 1'd0;
	end
	if ((hdmi_out0_resetinserter_sink_sink_valid & hdmi_out0_resetinserter_sink_sink_ready)) begin
		hdmi_out0_resetinserter_parity_in <= (~hdmi_out0_resetinserter_parity_in);
	end
	if ((hdmi_out0_resetinserter_source_source_valid & hdmi_out0_resetinserter_source_source_ready)) begin
		hdmi_out0_resetinserter_parity_out <= (~hdmi_out0_resetinserter_parity_out);
	end
	if (((hdmi_out0_resetinserter_y_fifo_syncfifo_we & hdmi_out0_resetinserter_y_fifo_syncfifo_writable) & (~hdmi_out0_resetinserter_y_fifo_replace))) begin
		hdmi_out0_resetinserter_y_fifo_produce <= (hdmi_out0_resetinserter_y_fifo_produce + 1'd1);
	end
	if (hdmi_out0_resetinserter_y_fifo_do_read) begin
		hdmi_out0_resetinserter_y_fifo_consume <= (hdmi_out0_resetinserter_y_fifo_consume + 1'd1);
	end
	if (((hdmi_out0_resetinserter_y_fifo_syncfifo_we & hdmi_out0_resetinserter_y_fifo_syncfifo_writable) & (~hdmi_out0_resetinserter_y_fifo_replace))) begin
		if ((~hdmi_out0_resetinserter_y_fifo_do_read)) begin
			hdmi_out0_resetinserter_y_fifo_level <= (hdmi_out0_resetinserter_y_fifo_level + 1'd1);
		end
	end else begin
		if (hdmi_out0_resetinserter_y_fifo_do_read) begin
			hdmi_out0_resetinserter_y_fifo_level <= (hdmi_out0_resetinserter_y_fifo_level - 1'd1);
		end
	end
	if (((hdmi_out0_resetinserter_cb_fifo_syncfifo_we & hdmi_out0_resetinserter_cb_fifo_syncfifo_writable) & (~hdmi_out0_resetinserter_cb_fifo_replace))) begin
		hdmi_out0_resetinserter_cb_fifo_produce <= (hdmi_out0_resetinserter_cb_fifo_produce + 1'd1);
	end
	if (hdmi_out0_resetinserter_cb_fifo_do_read) begin
		hdmi_out0_resetinserter_cb_fifo_consume <= (hdmi_out0_resetinserter_cb_fifo_consume + 1'd1);
	end
	if (((hdmi_out0_resetinserter_cb_fifo_syncfifo_we & hdmi_out0_resetinserter_cb_fifo_syncfifo_writable) & (~hdmi_out0_resetinserter_cb_fifo_replace))) begin
		if ((~hdmi_out0_resetinserter_cb_fifo_do_read)) begin
			hdmi_out0_resetinserter_cb_fifo_level <= (hdmi_out0_resetinserter_cb_fifo_level + 1'd1);
		end
	end else begin
		if (hdmi_out0_resetinserter_cb_fifo_do_read) begin
			hdmi_out0_resetinserter_cb_fifo_level <= (hdmi_out0_resetinserter_cb_fifo_level - 1'd1);
		end
	end
	if (((hdmi_out0_resetinserter_cr_fifo_syncfifo_we & hdmi_out0_resetinserter_cr_fifo_syncfifo_writable) & (~hdmi_out0_resetinserter_cr_fifo_replace))) begin
		hdmi_out0_resetinserter_cr_fifo_produce <= (hdmi_out0_resetinserter_cr_fifo_produce + 1'd1);
	end
	if (hdmi_out0_resetinserter_cr_fifo_do_read) begin
		hdmi_out0_resetinserter_cr_fifo_consume <= (hdmi_out0_resetinserter_cr_fifo_consume + 1'd1);
	end
	if (((hdmi_out0_resetinserter_cr_fifo_syncfifo_we & hdmi_out0_resetinserter_cr_fifo_syncfifo_writable) & (~hdmi_out0_resetinserter_cr_fifo_replace))) begin
		if ((~hdmi_out0_resetinserter_cr_fifo_do_read)) begin
			hdmi_out0_resetinserter_cr_fifo_level <= (hdmi_out0_resetinserter_cr_fifo_level + 1'd1);
		end
	end else begin
		if (hdmi_out0_resetinserter_cr_fifo_do_read) begin
			hdmi_out0_resetinserter_cr_fifo_level <= (hdmi_out0_resetinserter_cr_fifo_level - 1'd1);
		end
	end
	if (hdmi_out0_resetinserter_reset) begin
		hdmi_out0_resetinserter_y_fifo_level <= 3'd0;
		hdmi_out0_resetinserter_y_fifo_produce <= 2'd0;
		hdmi_out0_resetinserter_y_fifo_consume <= 2'd0;
		hdmi_out0_resetinserter_cb_fifo_level <= 3'd0;
		hdmi_out0_resetinserter_cb_fifo_produce <= 2'd0;
		hdmi_out0_resetinserter_cb_fifo_consume <= 2'd0;
		hdmi_out0_resetinserter_cr_fifo_level <= 3'd0;
		hdmi_out0_resetinserter_cr_fifo_produce <= 2'd0;
		hdmi_out0_resetinserter_cr_fifo_consume <= 2'd0;
		hdmi_out0_resetinserter_parity_in <= 1'd0;
		hdmi_out0_resetinserter_parity_out <= 1'd0;
	end
	if (hdmi_out0_pipe_ce) begin
		hdmi_out0_valid_n0 <= hdmi_out0_sink_valid;
	end
	if (hdmi_out0_pipe_ce) begin
		hdmi_out0_valid_n1 <= hdmi_out0_valid_n0;
	end
	if (hdmi_out0_pipe_ce) begin
		hdmi_out0_valid_n2 <= hdmi_out0_valid_n1;
	end
	if (hdmi_out0_pipe_ce) begin
		hdmi_out0_valid_n3 <= hdmi_out0_valid_n2;
	end
	if (hdmi_out0_pipe_ce) begin
		hdmi_out0_first_n0 <= (hdmi_out0_sink_valid & hdmi_out0_sink_first);
		hdmi_out0_last_n0 <= (hdmi_out0_sink_valid & hdmi_out0_sink_last);
	end
	if (hdmi_out0_pipe_ce) begin
		hdmi_out0_first_n1 <= hdmi_out0_first_n0;
		hdmi_out0_last_n1 <= hdmi_out0_last_n0;
	end
	if (hdmi_out0_pipe_ce) begin
		hdmi_out0_first_n2 <= hdmi_out0_first_n1;
		hdmi_out0_last_n2 <= hdmi_out0_last_n1;
	end
	if (hdmi_out0_pipe_ce) begin
		hdmi_out0_first_n3 <= hdmi_out0_first_n2;
		hdmi_out0_last_n3 <= hdmi_out0_last_n2;
	end
	if (hdmi_out0_ce) begin
		hdmi_out0_record0_ycbcr_n_y <= hdmi_out0_sink_y;
		hdmi_out0_record0_ycbcr_n_cb <= hdmi_out0_sink_cb;
		hdmi_out0_record0_ycbcr_n_cr <= hdmi_out0_sink_cr;
		hdmi_out0_record1_ycbcr_n_y <= hdmi_out0_record0_ycbcr_n_y;
		hdmi_out0_record1_ycbcr_n_cb <= hdmi_out0_record0_ycbcr_n_cb;
		hdmi_out0_record1_ycbcr_n_cr <= hdmi_out0_record0_ycbcr_n_cr;
		hdmi_out0_record2_ycbcr_n_y <= hdmi_out0_record1_ycbcr_n_y;
		hdmi_out0_record2_ycbcr_n_cb <= hdmi_out0_record1_ycbcr_n_cb;
		hdmi_out0_record2_ycbcr_n_cr <= hdmi_out0_record1_ycbcr_n_cr;
		hdmi_out0_record3_ycbcr_n_y <= hdmi_out0_record2_ycbcr_n_y;
		hdmi_out0_record3_ycbcr_n_cb <= hdmi_out0_record2_ycbcr_n_cb;
		hdmi_out0_record3_ycbcr_n_cr <= hdmi_out0_record2_ycbcr_n_cr;
		hdmi_out0_cb_minus_coffset <= (hdmi_out0_sink_cb - 8'd128);
		hdmi_out0_cr_minus_coffset <= (hdmi_out0_sink_cr - 8'd128);
		hdmi_out0_y_minus_yoffset <= (hdmi_out0_record0_ycbcr_n_y - 5'd16);
		hdmi_out0_cr_minus_coffset_mult_acoef <= (hdmi_out0_cr_minus_coffset * $signed({1'd0, 7'd98}));
		hdmi_out0_cb_minus_coffset_mult_bcoef <= (hdmi_out0_cb_minus_coffset * 5'sd23);
		hdmi_out0_cr_minus_coffset_mult_ccoef <= (hdmi_out0_cr_minus_coffset * 6'sd41);
		hdmi_out0_cb_minus_coffset_mult_dcoef <= (hdmi_out0_cb_minus_coffset * $signed({1'd0, 7'd116}));
		hdmi_out0_r <= (hdmi_out0_y_minus_yoffset + hdmi_out0_cr_minus_coffset_mult_acoef[19:6]);
		hdmi_out0_g <= ((hdmi_out0_y_minus_yoffset + hdmi_out0_cb_minus_coffset_mult_bcoef[19:6]) + hdmi_out0_cr_minus_coffset_mult_ccoef[19:6]);
		hdmi_out0_b <= (hdmi_out0_y_minus_yoffset + hdmi_out0_cb_minus_coffset_mult_dcoef[19:6]);
		if ((hdmi_out0_r > $signed({1'd0, 8'd255}))) begin
			hdmi_out0_source_r <= 8'd255;
		end else begin
			if ((hdmi_out0_r < $signed({1'd0, 1'd0}))) begin
				hdmi_out0_source_r <= 1'd0;
			end else begin
				hdmi_out0_source_r <= hdmi_out0_r;
			end
		end
		if ((hdmi_out0_g > $signed({1'd0, 8'd255}))) begin
			hdmi_out0_source_g <= 8'd255;
		end else begin
			if ((hdmi_out0_g < $signed({1'd0, 1'd0}))) begin
				hdmi_out0_source_g <= 1'd0;
			end else begin
				hdmi_out0_source_g <= hdmi_out0_g;
			end
		end
		if ((hdmi_out0_b > $signed({1'd0, 8'd255}))) begin
			hdmi_out0_source_b <= 8'd255;
		end else begin
			if ((hdmi_out0_b < $signed({1'd0, 1'd0}))) begin
				hdmi_out0_source_b <= 1'd0;
			end else begin
				hdmi_out0_source_b <= hdmi_out0_b;
			end
		end
	end
	hdmi_out0_next_s0 <= hdmi_out0_sink_payload_hsync;
	hdmi_out0_next_s1 <= hdmi_out0_next_s0;
	hdmi_out0_next_s2 <= hdmi_out0_next_s1;
	hdmi_out0_next_s3 <= hdmi_out0_next_s2;
	hdmi_out0_next_s4 <= hdmi_out0_next_s3;
	hdmi_out0_next_s5 <= hdmi_out0_next_s4;
	hdmi_out0_next_s6 <= hdmi_out0_sink_payload_vsync;
	hdmi_out0_next_s7 <= hdmi_out0_next_s6;
	hdmi_out0_next_s8 <= hdmi_out0_next_s7;
	hdmi_out0_next_s9 <= hdmi_out0_next_s8;
	hdmi_out0_next_s10 <= hdmi_out0_next_s9;
	hdmi_out0_next_s11 <= hdmi_out0_next_s10;
	hdmi_out0_next_s12 <= hdmi_out0_sink_payload_de;
	hdmi_out0_next_s13 <= hdmi_out0_next_s12;
	hdmi_out0_next_s14 <= hdmi_out0_next_s13;
	hdmi_out0_next_s15 <= hdmi_out0_next_s14;
	hdmi_out0_next_s16 <= hdmi_out0_next_s15;
	hdmi_out0_next_s17 <= hdmi_out0_next_s16;
	if (pix_rst) begin
		cmd_fifo_graycounter0_q <= 3'd0;
		cmd_fifo_graycounter0_q_binary <= 3'd0;
		rdata_fifo_graycounter1_q <= 5'd0;
		rdata_fifo_graycounter1_q_binary <= 5'd0;
		cmd_buffer_level <= 3'd0;
		cmd_buffer_produce <= 2'd0;
		cmd_buffer_consume <= 2'd0;
		counter <= 4'd0;
		rdata_buffer_valid_n <= 1'd0;
		rdata_buffer_first_n <= 1'd0;
		rdata_buffer_last_n <= 1'd0;
		rdata_converter_converter_mux <= 4'd0;
		rdata_chunk <= 16'd1;
		hdmi_out0_core_underflow_counter_status <= 32'd0;
		hdmi_out0_core_initiator_cdc_graycounter1_q <= 2'd0;
		hdmi_out0_core_initiator_cdc_graycounter1_q_binary <= 2'd0;
		hdmi_out0_core_timinggenerator_source_last <= 1'd0;
		hdmi_out0_core_timinggenerator_hactive <= 1'd0;
		hdmi_out0_core_timinggenerator_vactive <= 1'd0;
		hdmi_out0_core_timinggenerator_hcounter <= 12'd0;
		hdmi_out0_core_timinggenerator_vcounter <= 12'd0;
		hdmi_out0_core_dmareader_rsv_level <= 10'd0;
		hdmi_out0_core_dmareader_fifo_readable <= 1'd0;
		hdmi_out0_core_dmareader_fifo_level0 <= 10'd0;
		hdmi_out0_core_dmareader_fifo_produce <= 9'd0;
		hdmi_out0_core_dmareader_fifo_consume <= 9'd0;
		hdmi_out0_core_dmareader_offset <= 28'd0;
		hdmi_out0_core_underflow_counter <= 32'd0;
		hdmi_out0_driver_s7hdmioutclocking_ce <= 1'd0;
		hdmi_out0_driver_hdmi_phy_es0_out <= 10'd0;
		hdmi_out0_driver_hdmi_phy_es0_d1 <= 8'd0;
		hdmi_out0_driver_hdmi_phy_es0_n1d <= 4'd0;
		hdmi_out0_driver_hdmi_phy_es0_q_m <= 9'd0;
		hdmi_out0_driver_hdmi_phy_es0_q_m_r <= 9'd0;
		hdmi_out0_driver_hdmi_phy_es0_n0q_m <= 4'd0;
		hdmi_out0_driver_hdmi_phy_es0_n1q_m <= 4'd0;
		hdmi_out0_driver_hdmi_phy_es0_cnt <= 6'sd64;
		hdmi_out0_driver_hdmi_phy_es0_new_c0 <= 2'd0;
		hdmi_out0_driver_hdmi_phy_es0_new_de0 <= 1'd0;
		hdmi_out0_driver_hdmi_phy_es0_new_c1 <= 2'd0;
		hdmi_out0_driver_hdmi_phy_es0_new_de1 <= 1'd0;
		hdmi_out0_driver_hdmi_phy_es0_new_c2 <= 2'd0;
		hdmi_out0_driver_hdmi_phy_es0_new_de2 <= 1'd0;
		hdmi_out0_driver_hdmi_phy_es0_ce <= 1'd0;
		hdmi_out0_driver_hdmi_phy_es1_out <= 10'd0;
		hdmi_out0_driver_hdmi_phy_es1_d1 <= 8'd0;
		hdmi_out0_driver_hdmi_phy_es1_n1d <= 4'd0;
		hdmi_out0_driver_hdmi_phy_es1_q_m <= 9'd0;
		hdmi_out0_driver_hdmi_phy_es1_q_m_r <= 9'd0;
		hdmi_out0_driver_hdmi_phy_es1_n0q_m <= 4'd0;
		hdmi_out0_driver_hdmi_phy_es1_n1q_m <= 4'd0;
		hdmi_out0_driver_hdmi_phy_es1_cnt <= 6'sd64;
		hdmi_out0_driver_hdmi_phy_es1_new_c0 <= 2'd0;
		hdmi_out0_driver_hdmi_phy_es1_new_de0 <= 1'd0;
		hdmi_out0_driver_hdmi_phy_es1_new_c1 <= 2'd0;
		hdmi_out0_driver_hdmi_phy_es1_new_de1 <= 1'd0;
		hdmi_out0_driver_hdmi_phy_es1_new_c2 <= 2'd0;
		hdmi_out0_driver_hdmi_phy_es1_new_de2 <= 1'd0;
		hdmi_out0_driver_hdmi_phy_es1_ce <= 1'd0;
		hdmi_out0_driver_hdmi_phy_es2_out <= 10'd0;
		hdmi_out0_driver_hdmi_phy_es2_d1 <= 8'd0;
		hdmi_out0_driver_hdmi_phy_es2_n1d <= 4'd0;
		hdmi_out0_driver_hdmi_phy_es2_q_m <= 9'd0;
		hdmi_out0_driver_hdmi_phy_es2_q_m_r <= 9'd0;
		hdmi_out0_driver_hdmi_phy_es2_n0q_m <= 4'd0;
		hdmi_out0_driver_hdmi_phy_es2_n1q_m <= 4'd0;
		hdmi_out0_driver_hdmi_phy_es2_cnt <= 6'sd64;
		hdmi_out0_driver_hdmi_phy_es2_new_c0 <= 2'd0;
		hdmi_out0_driver_hdmi_phy_es2_new_de0 <= 1'd0;
		hdmi_out0_driver_hdmi_phy_es2_new_c1 <= 2'd0;
		hdmi_out0_driver_hdmi_phy_es2_new_de1 <= 1'd0;
		hdmi_out0_driver_hdmi_phy_es2_new_c2 <= 2'd0;
		hdmi_out0_driver_hdmi_phy_es2_new_de2 <= 1'd0;
		hdmi_out0_driver_hdmi_phy_es2_ce <= 1'd0;
		hdmi_out0_resetinserter_y_fifo_level <= 3'd0;
		hdmi_out0_resetinserter_y_fifo_produce <= 2'd0;
		hdmi_out0_resetinserter_y_fifo_consume <= 2'd0;
		hdmi_out0_resetinserter_cb_fifo_level <= 3'd0;
		hdmi_out0_resetinserter_cb_fifo_produce <= 2'd0;
		hdmi_out0_resetinserter_cb_fifo_consume <= 2'd0;
		hdmi_out0_resetinserter_cr_fifo_level <= 3'd0;
		hdmi_out0_resetinserter_cr_fifo_produce <= 2'd0;
		hdmi_out0_resetinserter_cr_fifo_consume <= 2'd0;
		hdmi_out0_resetinserter_parity_in <= 1'd0;
		hdmi_out0_resetinserter_parity_out <= 1'd0;
		hdmi_out0_source_r <= 8'd0;
		hdmi_out0_source_g <= 8'd0;
		hdmi_out0_source_b <= 8'd0;
		hdmi_out0_record0_ycbcr_n_y <= 8'd0;
		hdmi_out0_record0_ycbcr_n_cb <= 8'd0;
		hdmi_out0_record0_ycbcr_n_cr <= 8'd0;
		hdmi_out0_record1_ycbcr_n_y <= 8'd0;
		hdmi_out0_record1_ycbcr_n_cb <= 8'd0;
		hdmi_out0_record1_ycbcr_n_cr <= 8'd0;
		hdmi_out0_record2_ycbcr_n_y <= 8'd0;
		hdmi_out0_record2_ycbcr_n_cb <= 8'd0;
		hdmi_out0_record2_ycbcr_n_cr <= 8'd0;
		hdmi_out0_record3_ycbcr_n_y <= 8'd0;
		hdmi_out0_record3_ycbcr_n_cb <= 8'd0;
		hdmi_out0_record3_ycbcr_n_cr <= 8'd0;
		hdmi_out0_cb_minus_coffset <= 9'sd512;
		hdmi_out0_cr_minus_coffset <= 9'sd512;
		hdmi_out0_y_minus_yoffset <= 9'sd512;
		hdmi_out0_cr_minus_coffset_mult_acoef <= 20'sd1048576;
		hdmi_out0_cb_minus_coffset_mult_bcoef <= 20'sd1048576;
		hdmi_out0_cr_minus_coffset_mult_ccoef <= 20'sd1048576;
		hdmi_out0_cb_minus_coffset_mult_dcoef <= 20'sd1048576;
		hdmi_out0_r <= 12'sd4096;
		hdmi_out0_g <= 12'sd4096;
		hdmi_out0_b <= 12'sd4096;
		hdmi_out0_valid_n0 <= 1'd0;
		hdmi_out0_valid_n1 <= 1'd0;
		hdmi_out0_valid_n2 <= 1'd0;
		hdmi_out0_valid_n3 <= 1'd0;
		hdmi_out0_first_n0 <= 1'd0;
		hdmi_out0_last_n0 <= 1'd0;
		hdmi_out0_first_n1 <= 1'd0;
		hdmi_out0_last_n1 <= 1'd0;
		hdmi_out0_first_n2 <= 1'd0;
		hdmi_out0_last_n2 <= 1'd0;
		hdmi_out0_first_n3 <= 1'd0;
		hdmi_out0_last_n3 <= 1'd0;
		hdmi_out0_next_s0 <= 1'd0;
		hdmi_out0_next_s1 <= 1'd0;
		hdmi_out0_next_s2 <= 1'd0;
		hdmi_out0_next_s3 <= 1'd0;
		hdmi_out0_next_s4 <= 1'd0;
		hdmi_out0_next_s5 <= 1'd0;
		hdmi_out0_next_s6 <= 1'd0;
		hdmi_out0_next_s7 <= 1'd0;
		hdmi_out0_next_s8 <= 1'd0;
		hdmi_out0_next_s9 <= 1'd0;
		hdmi_out0_next_s10 <= 1'd0;
		hdmi_out0_next_s11 <= 1'd0;
		hdmi_out0_next_s12 <= 1'd0;
		hdmi_out0_next_s13 <= 1'd0;
		hdmi_out0_next_s14 <= 1'd0;
		hdmi_out0_next_s15 <= 1'd0;
		hdmi_out0_next_s16 <= 1'd0;
		hdmi_out0_next_s17 <= 1'd0;
		hdmi_out0_de_r <= 1'd0;
		hdmi_out0_core_source_valid_d <= 1'd0;
		hdmi_out0_core_source_data_d <= 16'd0;
		videoout_state <= 1'd0;
	end
	xilinxmultiregimpl2_regs0 <= cmd_fifo_graycounter1_q;
	xilinxmultiregimpl2_regs1 <= xilinxmultiregimpl2_regs0;
	xilinxmultiregimpl3_regs0 <= rdata_fifo_graycounter0_q;
	xilinxmultiregimpl3_regs1 <= xilinxmultiregimpl3_regs0;
	xilinxmultiregimpl5_regs0 <= hdmi_out0_core_initiator_cdc_graycounter0_q;
	xilinxmultiregimpl5_regs1 <= xilinxmultiregimpl5_regs0;
	xilinxmultiregimpl8_regs0 <= hdmi_out0_core_toggle_i;
	xilinxmultiregimpl8_regs1 <= xilinxmultiregimpl8_regs0;
end

always @(posedge sys_clk) begin
	videooutsoc_sys_counter <= (videooutsoc_sys_counter + 1'd1);
	videooutsoc_videooutsoc_rom_bus_ack <= 1'd0;
	if (((videooutsoc_videooutsoc_rom_bus_cyc & videooutsoc_videooutsoc_rom_bus_stb) & (~videooutsoc_videooutsoc_rom_bus_ack))) begin
		videooutsoc_videooutsoc_rom_bus_ack <= 1'd1;
	end
	videooutsoc_videooutsoc_sram_bus_ack <= 1'd0;
	if (((videooutsoc_videooutsoc_sram_bus_cyc & videooutsoc_videooutsoc_sram_bus_stb) & (~videooutsoc_videooutsoc_sram_bus_ack))) begin
		videooutsoc_videooutsoc_sram_bus_ack <= 1'd1;
	end
	videooutsoc_videooutsoc_interface_we <= 1'd0;
	videooutsoc_videooutsoc_interface_dat_w <= videooutsoc_videooutsoc_bus_wishbone_dat_w;
	videooutsoc_videooutsoc_interface_adr <= videooutsoc_videooutsoc_bus_wishbone_adr;
	videooutsoc_videooutsoc_bus_wishbone_dat_r <= videooutsoc_videooutsoc_interface_dat_r;
	if ((videooutsoc_videooutsoc_counter == 1'd1)) begin
		videooutsoc_videooutsoc_interface_we <= videooutsoc_videooutsoc_bus_wishbone_we;
	end
	if ((videooutsoc_videooutsoc_counter == 2'd2)) begin
		videooutsoc_videooutsoc_bus_wishbone_ack <= 1'd1;
	end
	if ((videooutsoc_videooutsoc_counter == 2'd3)) begin
		videooutsoc_videooutsoc_bus_wishbone_ack <= 1'd0;
	end
	if ((videooutsoc_videooutsoc_counter != 1'd0)) begin
		videooutsoc_videooutsoc_counter <= (videooutsoc_videooutsoc_counter + 1'd1);
	end else begin
		if ((videooutsoc_videooutsoc_bus_wishbone_cyc & videooutsoc_videooutsoc_bus_wishbone_stb)) begin
			videooutsoc_videooutsoc_counter <= 1'd1;
		end
	end
	videooutsoc_videooutsoc_uart_phy_sink_ready <= 1'd0;
	if (((videooutsoc_videooutsoc_uart_phy_sink_valid & (~videooutsoc_videooutsoc_uart_phy_tx_busy)) & (~videooutsoc_videooutsoc_uart_phy_sink_ready))) begin
		videooutsoc_videooutsoc_uart_phy_tx_reg <= videooutsoc_videooutsoc_uart_phy_sink_payload_data;
		videooutsoc_videooutsoc_uart_phy_tx_bitcount <= 1'd0;
		videooutsoc_videooutsoc_uart_phy_tx_busy <= 1'd1;
		serial_tx <= 1'd0;
	end else begin
		if ((videooutsoc_videooutsoc_uart_phy_uart_clk_txen & videooutsoc_videooutsoc_uart_phy_tx_busy)) begin
			videooutsoc_videooutsoc_uart_phy_tx_bitcount <= (videooutsoc_videooutsoc_uart_phy_tx_bitcount + 1'd1);
			if ((videooutsoc_videooutsoc_uart_phy_tx_bitcount == 4'd8)) begin
				serial_tx <= 1'd1;
			end else begin
				if ((videooutsoc_videooutsoc_uart_phy_tx_bitcount == 4'd9)) begin
					serial_tx <= 1'd1;
					videooutsoc_videooutsoc_uart_phy_tx_busy <= 1'd0;
					videooutsoc_videooutsoc_uart_phy_sink_ready <= 1'd1;
				end else begin
					serial_tx <= videooutsoc_videooutsoc_uart_phy_tx_reg[0];
					videooutsoc_videooutsoc_uart_phy_tx_reg <= {1'd0, videooutsoc_videooutsoc_uart_phy_tx_reg[7:1]};
				end
			end
		end
	end
	if (videooutsoc_videooutsoc_uart_phy_tx_busy) begin
		{videooutsoc_videooutsoc_uart_phy_uart_clk_txen, videooutsoc_videooutsoc_uart_phy_phase_accumulator_tx} <= (videooutsoc_videooutsoc_uart_phy_phase_accumulator_tx + videooutsoc_videooutsoc_uart_phy_storage);
	end else begin
		{videooutsoc_videooutsoc_uart_phy_uart_clk_txen, videooutsoc_videooutsoc_uart_phy_phase_accumulator_tx} <= 1'd0;
	end
	videooutsoc_videooutsoc_uart_phy_source_valid <= 1'd0;
	videooutsoc_videooutsoc_uart_phy_rx_r <= videooutsoc_videooutsoc_uart_phy_rx;
	if ((~videooutsoc_videooutsoc_uart_phy_rx_busy)) begin
		if (((~videooutsoc_videooutsoc_uart_phy_rx) & videooutsoc_videooutsoc_uart_phy_rx_r)) begin
			videooutsoc_videooutsoc_uart_phy_rx_busy <= 1'd1;
			videooutsoc_videooutsoc_uart_phy_rx_bitcount <= 1'd0;
		end
	end else begin
		if (videooutsoc_videooutsoc_uart_phy_uart_clk_rxen) begin
			videooutsoc_videooutsoc_uart_phy_rx_bitcount <= (videooutsoc_videooutsoc_uart_phy_rx_bitcount + 1'd1);
			if ((videooutsoc_videooutsoc_uart_phy_rx_bitcount == 1'd0)) begin
				if (videooutsoc_videooutsoc_uart_phy_rx) begin
					videooutsoc_videooutsoc_uart_phy_rx_busy <= 1'd0;
				end
			end else begin
				if ((videooutsoc_videooutsoc_uart_phy_rx_bitcount == 4'd9)) begin
					videooutsoc_videooutsoc_uart_phy_rx_busy <= 1'd0;
					if (videooutsoc_videooutsoc_uart_phy_rx) begin
						videooutsoc_videooutsoc_uart_phy_source_payload_data <= videooutsoc_videooutsoc_uart_phy_rx_reg;
						videooutsoc_videooutsoc_uart_phy_source_valid <= 1'd1;
					end
				end else begin
					videooutsoc_videooutsoc_uart_phy_rx_reg <= {videooutsoc_videooutsoc_uart_phy_rx, videooutsoc_videooutsoc_uart_phy_rx_reg[7:1]};
				end
			end
		end
	end
	if (videooutsoc_videooutsoc_uart_phy_rx_busy) begin
		{videooutsoc_videooutsoc_uart_phy_uart_clk_rxen, videooutsoc_videooutsoc_uart_phy_phase_accumulator_rx} <= (videooutsoc_videooutsoc_uart_phy_phase_accumulator_rx + videooutsoc_videooutsoc_uart_phy_storage);
	end else begin
		{videooutsoc_videooutsoc_uart_phy_uart_clk_rxen, videooutsoc_videooutsoc_uart_phy_phase_accumulator_rx} <= 32'd2147483648;
	end
	if (videooutsoc_videooutsoc_uart_tx_clear) begin
		videooutsoc_videooutsoc_uart_tx_pending <= 1'd0;
	end
	videooutsoc_videooutsoc_uart_tx_old_trigger <= videooutsoc_videooutsoc_uart_tx_trigger;
	if (((~videooutsoc_videooutsoc_uart_tx_trigger) & videooutsoc_videooutsoc_uart_tx_old_trigger)) begin
		videooutsoc_videooutsoc_uart_tx_pending <= 1'd1;
	end
	if (videooutsoc_videooutsoc_uart_rx_clear) begin
		videooutsoc_videooutsoc_uart_rx_pending <= 1'd0;
	end
	videooutsoc_videooutsoc_uart_rx_old_trigger <= videooutsoc_videooutsoc_uart_rx_trigger;
	if (((~videooutsoc_videooutsoc_uart_rx_trigger) & videooutsoc_videooutsoc_uart_rx_old_trigger)) begin
		videooutsoc_videooutsoc_uart_rx_pending <= 1'd1;
	end
	if (((videooutsoc_videooutsoc_uart_tx_fifo_syncfifo_we & videooutsoc_videooutsoc_uart_tx_fifo_syncfifo_writable) & (~videooutsoc_videooutsoc_uart_tx_fifo_replace))) begin
		videooutsoc_videooutsoc_uart_tx_fifo_produce <= (videooutsoc_videooutsoc_uart_tx_fifo_produce + 1'd1);
	end
	if (videooutsoc_videooutsoc_uart_tx_fifo_do_read) begin
		videooutsoc_videooutsoc_uart_tx_fifo_consume <= (videooutsoc_videooutsoc_uart_tx_fifo_consume + 1'd1);
	end
	if (((videooutsoc_videooutsoc_uart_tx_fifo_syncfifo_we & videooutsoc_videooutsoc_uart_tx_fifo_syncfifo_writable) & (~videooutsoc_videooutsoc_uart_tx_fifo_replace))) begin
		if ((~videooutsoc_videooutsoc_uart_tx_fifo_do_read)) begin
			videooutsoc_videooutsoc_uart_tx_fifo_level <= (videooutsoc_videooutsoc_uart_tx_fifo_level + 1'd1);
		end
	end else begin
		if (videooutsoc_videooutsoc_uart_tx_fifo_do_read) begin
			videooutsoc_videooutsoc_uart_tx_fifo_level <= (videooutsoc_videooutsoc_uart_tx_fifo_level - 1'd1);
		end
	end
	if (((videooutsoc_videooutsoc_uart_rx_fifo_syncfifo_we & videooutsoc_videooutsoc_uart_rx_fifo_syncfifo_writable) & (~videooutsoc_videooutsoc_uart_rx_fifo_replace))) begin
		videooutsoc_videooutsoc_uart_rx_fifo_produce <= (videooutsoc_videooutsoc_uart_rx_fifo_produce + 1'd1);
	end
	if (videooutsoc_videooutsoc_uart_rx_fifo_do_read) begin
		videooutsoc_videooutsoc_uart_rx_fifo_consume <= (videooutsoc_videooutsoc_uart_rx_fifo_consume + 1'd1);
	end
	if (((videooutsoc_videooutsoc_uart_rx_fifo_syncfifo_we & videooutsoc_videooutsoc_uart_rx_fifo_syncfifo_writable) & (~videooutsoc_videooutsoc_uart_rx_fifo_replace))) begin
		if ((~videooutsoc_videooutsoc_uart_rx_fifo_do_read)) begin
			videooutsoc_videooutsoc_uart_rx_fifo_level <= (videooutsoc_videooutsoc_uart_rx_fifo_level + 1'd1);
		end
	end else begin
		if (videooutsoc_videooutsoc_uart_rx_fifo_do_read) begin
			videooutsoc_videooutsoc_uart_rx_fifo_level <= (videooutsoc_videooutsoc_uart_rx_fifo_level - 1'd1);
		end
	end
	if (videooutsoc_videooutsoc_timer0_en_storage) begin
		if ((videooutsoc_videooutsoc_timer0_value == 1'd0)) begin
			videooutsoc_videooutsoc_timer0_value <= videooutsoc_videooutsoc_timer0_reload_storage;
		end else begin
			videooutsoc_videooutsoc_timer0_value <= (videooutsoc_videooutsoc_timer0_value - 1'd1);
		end
	end else begin
		videooutsoc_videooutsoc_timer0_value <= videooutsoc_videooutsoc_timer0_load_storage;
	end
	if (videooutsoc_videooutsoc_timer0_update_value_re) begin
		videooutsoc_videooutsoc_timer0_value_status <= videooutsoc_videooutsoc_timer0_value;
	end
	if (videooutsoc_videooutsoc_timer0_zero_clear) begin
		videooutsoc_videooutsoc_timer0_zero_pending <= 1'd0;
	end
	videooutsoc_videooutsoc_timer0_zero_old_trigger <= videooutsoc_videooutsoc_timer0_zero_trigger;
	if (((~videooutsoc_videooutsoc_timer0_zero_trigger) & videooutsoc_videooutsoc_timer0_zero_old_trigger)) begin
		videooutsoc_videooutsoc_timer0_zero_pending <= 1'd1;
	end
	if ((videooutsoc_dna_cnt < 7'd114)) begin
		videooutsoc_dna_cnt <= (videooutsoc_dna_cnt + 1'd1);
		if (videooutsoc_dna_cnt[0]) begin
			videooutsoc_dna_status <= {videooutsoc_dna_status, videooutsoc_dna_do};
		end
	end
	if (videooutsoc_drdy) begin
		case (videooutsoc_channel)
			1'd0: begin
				videooutsoc_temperature_status <= (videooutsoc_data >>> 3'd4);
			end
			1'd1: begin
				videooutsoc_vccint_status <= (videooutsoc_data >>> 3'd4);
			end
			2'd2: begin
				videooutsoc_vccaux_status <= (videooutsoc_data >>> 3'd4);
			end
			3'd6: begin
				videooutsoc_vccbram_status <= (videooutsoc_data >>> 3'd4);
			end
		endcase
	end
	videooutsoc_n_rddata_en0 <= videooutsoc_dfi_p0_rddata_en;
	videooutsoc_n_rddata_en1 <= videooutsoc_n_rddata_en0;
	videooutsoc_n_rddata_en2 <= videooutsoc_n_rddata_en1;
	videooutsoc_n_rddata_en3 <= videooutsoc_n_rddata_en2;
	videooutsoc_n_rddata_en4 <= videooutsoc_n_rddata_en3;
	videooutsoc_dfi_p0_rddata_valid <= videooutsoc_n_rddata_en4;
	videooutsoc_dfi_p1_rddata_valid <= videooutsoc_n_rddata_en4;
	videooutsoc_dfi_p2_rddata_valid <= videooutsoc_n_rddata_en4;
	videooutsoc_dfi_p3_rddata_valid <= videooutsoc_n_rddata_en4;
	videooutsoc_last_wrdata_en <= {videooutsoc_last_wrdata_en[2:0], videooutsoc_dfi_p2_wrdata_en};
	videooutsoc_oe_dqs <= videooutsoc_oe;
	videooutsoc_oe_dq <= videooutsoc_oe;
	if (videooutsoc_sdram_inti_p0_rddata_valid) begin
		videooutsoc_sdram_phaseinjector0_status <= videooutsoc_sdram_inti_p0_rddata;
	end
	if (videooutsoc_sdram_inti_p1_rddata_valid) begin
		videooutsoc_sdram_phaseinjector1_status <= videooutsoc_sdram_inti_p1_rddata;
	end
	if (videooutsoc_sdram_inti_p2_rddata_valid) begin
		videooutsoc_sdram_phaseinjector2_status <= videooutsoc_sdram_inti_p2_rddata;
	end
	if (videooutsoc_sdram_inti_p3_rddata_valid) begin
		videooutsoc_sdram_phaseinjector3_status <= videooutsoc_sdram_inti_p3_rddata;
	end
	videooutsoc_sdram_cmd_payload_a <= 11'd1024;
	videooutsoc_sdram_cmd_payload_ba <= 1'd0;
	videooutsoc_sdram_cmd_payload_cas <= 1'd0;
	videooutsoc_sdram_cmd_payload_ras <= 1'd0;
	videooutsoc_sdram_cmd_payload_we <= 1'd0;
	videooutsoc_sdram_seq_done <= 1'd0;
	if ((videooutsoc_sdram_counter == 1'd1)) begin
		videooutsoc_sdram_cmd_payload_ras <= 1'd1;
		videooutsoc_sdram_cmd_payload_we <= 1'd1;
	end
	if ((videooutsoc_sdram_counter == 3'd4)) begin
		videooutsoc_sdram_cmd_payload_cas <= 1'd1;
		videooutsoc_sdram_cmd_payload_ras <= 1'd1;
	end
	if ((videooutsoc_sdram_counter == 5'd31)) begin
		videooutsoc_sdram_seq_done <= 1'd1;
	end
	if ((videooutsoc_sdram_counter != 1'd0)) begin
		videooutsoc_sdram_counter <= (videooutsoc_sdram_counter + 1'd1);
	end else begin
		if (videooutsoc_sdram_seq_start) begin
			videooutsoc_sdram_counter <= 1'd1;
		end
	end
	if (videooutsoc_sdram_wait) begin
		if ((~videooutsoc_sdram_done)) begin
			videooutsoc_sdram_count <= (videooutsoc_sdram_count - 1'd1);
		end
	end else begin
		videooutsoc_sdram_count <= 9'd391;
	end
	refresher_state <= refresher_next_state;
	if (videooutsoc_sdram_bankmachine0_track_close) begin
		videooutsoc_sdram_bankmachine0_has_openrow <= 1'd0;
	end else begin
		if (videooutsoc_sdram_bankmachine0_track_open) begin
			videooutsoc_sdram_bankmachine0_has_openrow <= 1'd1;
			videooutsoc_sdram_bankmachine0_openrow <= videooutsoc_sdram_bankmachine0_source_payload_adr[20:7];
		end
	end
	if (((videooutsoc_sdram_bankmachine0_syncfifo0_we & videooutsoc_sdram_bankmachine0_syncfifo0_writable) & (~videooutsoc_sdram_bankmachine0_replace))) begin
		videooutsoc_sdram_bankmachine0_produce <= (videooutsoc_sdram_bankmachine0_produce + 1'd1);
	end
	if (videooutsoc_sdram_bankmachine0_do_read) begin
		videooutsoc_sdram_bankmachine0_consume <= (videooutsoc_sdram_bankmachine0_consume + 1'd1);
	end
	if (((videooutsoc_sdram_bankmachine0_syncfifo0_we & videooutsoc_sdram_bankmachine0_syncfifo0_writable) & (~videooutsoc_sdram_bankmachine0_replace))) begin
		if ((~videooutsoc_sdram_bankmachine0_do_read)) begin
			videooutsoc_sdram_bankmachine0_level <= (videooutsoc_sdram_bankmachine0_level + 1'd1);
		end
	end else begin
		if (videooutsoc_sdram_bankmachine0_do_read) begin
			videooutsoc_sdram_bankmachine0_level <= (videooutsoc_sdram_bankmachine0_level - 1'd1);
		end
	end
	if (videooutsoc_sdram_bankmachine0_wait) begin
		if ((~videooutsoc_sdram_bankmachine0_done)) begin
			videooutsoc_sdram_bankmachine0_count <= (videooutsoc_sdram_bankmachine0_count - 1'd1);
		end
	end else begin
		videooutsoc_sdram_bankmachine0_count <= 3'd5;
	end
	bankmachine0_state <= bankmachine0_next_state;
	if (videooutsoc_sdram_bankmachine1_track_close) begin
		videooutsoc_sdram_bankmachine1_has_openrow <= 1'd0;
	end else begin
		if (videooutsoc_sdram_bankmachine1_track_open) begin
			videooutsoc_sdram_bankmachine1_has_openrow <= 1'd1;
			videooutsoc_sdram_bankmachine1_openrow <= videooutsoc_sdram_bankmachine1_source_payload_adr[20:7];
		end
	end
	if (((videooutsoc_sdram_bankmachine1_syncfifo1_we & videooutsoc_sdram_bankmachine1_syncfifo1_writable) & (~videooutsoc_sdram_bankmachine1_replace))) begin
		videooutsoc_sdram_bankmachine1_produce <= (videooutsoc_sdram_bankmachine1_produce + 1'd1);
	end
	if (videooutsoc_sdram_bankmachine1_do_read) begin
		videooutsoc_sdram_bankmachine1_consume <= (videooutsoc_sdram_bankmachine1_consume + 1'd1);
	end
	if (((videooutsoc_sdram_bankmachine1_syncfifo1_we & videooutsoc_sdram_bankmachine1_syncfifo1_writable) & (~videooutsoc_sdram_bankmachine1_replace))) begin
		if ((~videooutsoc_sdram_bankmachine1_do_read)) begin
			videooutsoc_sdram_bankmachine1_level <= (videooutsoc_sdram_bankmachine1_level + 1'd1);
		end
	end else begin
		if (videooutsoc_sdram_bankmachine1_do_read) begin
			videooutsoc_sdram_bankmachine1_level <= (videooutsoc_sdram_bankmachine1_level - 1'd1);
		end
	end
	if (videooutsoc_sdram_bankmachine1_wait) begin
		if ((~videooutsoc_sdram_bankmachine1_done)) begin
			videooutsoc_sdram_bankmachine1_count <= (videooutsoc_sdram_bankmachine1_count - 1'd1);
		end
	end else begin
		videooutsoc_sdram_bankmachine1_count <= 3'd5;
	end
	bankmachine1_state <= bankmachine1_next_state;
	if (videooutsoc_sdram_bankmachine2_track_close) begin
		videooutsoc_sdram_bankmachine2_has_openrow <= 1'd0;
	end else begin
		if (videooutsoc_sdram_bankmachine2_track_open) begin
			videooutsoc_sdram_bankmachine2_has_openrow <= 1'd1;
			videooutsoc_sdram_bankmachine2_openrow <= videooutsoc_sdram_bankmachine2_source_payload_adr[20:7];
		end
	end
	if (((videooutsoc_sdram_bankmachine2_syncfifo2_we & videooutsoc_sdram_bankmachine2_syncfifo2_writable) & (~videooutsoc_sdram_bankmachine2_replace))) begin
		videooutsoc_sdram_bankmachine2_produce <= (videooutsoc_sdram_bankmachine2_produce + 1'd1);
	end
	if (videooutsoc_sdram_bankmachine2_do_read) begin
		videooutsoc_sdram_bankmachine2_consume <= (videooutsoc_sdram_bankmachine2_consume + 1'd1);
	end
	if (((videooutsoc_sdram_bankmachine2_syncfifo2_we & videooutsoc_sdram_bankmachine2_syncfifo2_writable) & (~videooutsoc_sdram_bankmachine2_replace))) begin
		if ((~videooutsoc_sdram_bankmachine2_do_read)) begin
			videooutsoc_sdram_bankmachine2_level <= (videooutsoc_sdram_bankmachine2_level + 1'd1);
		end
	end else begin
		if (videooutsoc_sdram_bankmachine2_do_read) begin
			videooutsoc_sdram_bankmachine2_level <= (videooutsoc_sdram_bankmachine2_level - 1'd1);
		end
	end
	if (videooutsoc_sdram_bankmachine2_wait) begin
		if ((~videooutsoc_sdram_bankmachine2_done)) begin
			videooutsoc_sdram_bankmachine2_count <= (videooutsoc_sdram_bankmachine2_count - 1'd1);
		end
	end else begin
		videooutsoc_sdram_bankmachine2_count <= 3'd5;
	end
	bankmachine2_state <= bankmachine2_next_state;
	if (videooutsoc_sdram_bankmachine3_track_close) begin
		videooutsoc_sdram_bankmachine3_has_openrow <= 1'd0;
	end else begin
		if (videooutsoc_sdram_bankmachine3_track_open) begin
			videooutsoc_sdram_bankmachine3_has_openrow <= 1'd1;
			videooutsoc_sdram_bankmachine3_openrow <= videooutsoc_sdram_bankmachine3_source_payload_adr[20:7];
		end
	end
	if (((videooutsoc_sdram_bankmachine3_syncfifo3_we & videooutsoc_sdram_bankmachine3_syncfifo3_writable) & (~videooutsoc_sdram_bankmachine3_replace))) begin
		videooutsoc_sdram_bankmachine3_produce <= (videooutsoc_sdram_bankmachine3_produce + 1'd1);
	end
	if (videooutsoc_sdram_bankmachine3_do_read) begin
		videooutsoc_sdram_bankmachine3_consume <= (videooutsoc_sdram_bankmachine3_consume + 1'd1);
	end
	if (((videooutsoc_sdram_bankmachine3_syncfifo3_we & videooutsoc_sdram_bankmachine3_syncfifo3_writable) & (~videooutsoc_sdram_bankmachine3_replace))) begin
		if ((~videooutsoc_sdram_bankmachine3_do_read)) begin
			videooutsoc_sdram_bankmachine3_level <= (videooutsoc_sdram_bankmachine3_level + 1'd1);
		end
	end else begin
		if (videooutsoc_sdram_bankmachine3_do_read) begin
			videooutsoc_sdram_bankmachine3_level <= (videooutsoc_sdram_bankmachine3_level - 1'd1);
		end
	end
	if (videooutsoc_sdram_bankmachine3_wait) begin
		if ((~videooutsoc_sdram_bankmachine3_done)) begin
			videooutsoc_sdram_bankmachine3_count <= (videooutsoc_sdram_bankmachine3_count - 1'd1);
		end
	end else begin
		videooutsoc_sdram_bankmachine3_count <= 3'd5;
	end
	bankmachine3_state <= bankmachine3_next_state;
	if (videooutsoc_sdram_bankmachine4_track_close) begin
		videooutsoc_sdram_bankmachine4_has_openrow <= 1'd0;
	end else begin
		if (videooutsoc_sdram_bankmachine4_track_open) begin
			videooutsoc_sdram_bankmachine4_has_openrow <= 1'd1;
			videooutsoc_sdram_bankmachine4_openrow <= videooutsoc_sdram_bankmachine4_source_payload_adr[20:7];
		end
	end
	if (((videooutsoc_sdram_bankmachine4_syncfifo4_we & videooutsoc_sdram_bankmachine4_syncfifo4_writable) & (~videooutsoc_sdram_bankmachine4_replace))) begin
		videooutsoc_sdram_bankmachine4_produce <= (videooutsoc_sdram_bankmachine4_produce + 1'd1);
	end
	if (videooutsoc_sdram_bankmachine4_do_read) begin
		videooutsoc_sdram_bankmachine4_consume <= (videooutsoc_sdram_bankmachine4_consume + 1'd1);
	end
	if (((videooutsoc_sdram_bankmachine4_syncfifo4_we & videooutsoc_sdram_bankmachine4_syncfifo4_writable) & (~videooutsoc_sdram_bankmachine4_replace))) begin
		if ((~videooutsoc_sdram_bankmachine4_do_read)) begin
			videooutsoc_sdram_bankmachine4_level <= (videooutsoc_sdram_bankmachine4_level + 1'd1);
		end
	end else begin
		if (videooutsoc_sdram_bankmachine4_do_read) begin
			videooutsoc_sdram_bankmachine4_level <= (videooutsoc_sdram_bankmachine4_level - 1'd1);
		end
	end
	if (videooutsoc_sdram_bankmachine4_wait) begin
		if ((~videooutsoc_sdram_bankmachine4_done)) begin
			videooutsoc_sdram_bankmachine4_count <= (videooutsoc_sdram_bankmachine4_count - 1'd1);
		end
	end else begin
		videooutsoc_sdram_bankmachine4_count <= 3'd5;
	end
	bankmachine4_state <= bankmachine4_next_state;
	if (videooutsoc_sdram_bankmachine5_track_close) begin
		videooutsoc_sdram_bankmachine5_has_openrow <= 1'd0;
	end else begin
		if (videooutsoc_sdram_bankmachine5_track_open) begin
			videooutsoc_sdram_bankmachine5_has_openrow <= 1'd1;
			videooutsoc_sdram_bankmachine5_openrow <= videooutsoc_sdram_bankmachine5_source_payload_adr[20:7];
		end
	end
	if (((videooutsoc_sdram_bankmachine5_syncfifo5_we & videooutsoc_sdram_bankmachine5_syncfifo5_writable) & (~videooutsoc_sdram_bankmachine5_replace))) begin
		videooutsoc_sdram_bankmachine5_produce <= (videooutsoc_sdram_bankmachine5_produce + 1'd1);
	end
	if (videooutsoc_sdram_bankmachine5_do_read) begin
		videooutsoc_sdram_bankmachine5_consume <= (videooutsoc_sdram_bankmachine5_consume + 1'd1);
	end
	if (((videooutsoc_sdram_bankmachine5_syncfifo5_we & videooutsoc_sdram_bankmachine5_syncfifo5_writable) & (~videooutsoc_sdram_bankmachine5_replace))) begin
		if ((~videooutsoc_sdram_bankmachine5_do_read)) begin
			videooutsoc_sdram_bankmachine5_level <= (videooutsoc_sdram_bankmachine5_level + 1'd1);
		end
	end else begin
		if (videooutsoc_sdram_bankmachine5_do_read) begin
			videooutsoc_sdram_bankmachine5_level <= (videooutsoc_sdram_bankmachine5_level - 1'd1);
		end
	end
	if (videooutsoc_sdram_bankmachine5_wait) begin
		if ((~videooutsoc_sdram_bankmachine5_done)) begin
			videooutsoc_sdram_bankmachine5_count <= (videooutsoc_sdram_bankmachine5_count - 1'd1);
		end
	end else begin
		videooutsoc_sdram_bankmachine5_count <= 3'd5;
	end
	bankmachine5_state <= bankmachine5_next_state;
	if (videooutsoc_sdram_bankmachine6_track_close) begin
		videooutsoc_sdram_bankmachine6_has_openrow <= 1'd0;
	end else begin
		if (videooutsoc_sdram_bankmachine6_track_open) begin
			videooutsoc_sdram_bankmachine6_has_openrow <= 1'd1;
			videooutsoc_sdram_bankmachine6_openrow <= videooutsoc_sdram_bankmachine6_source_payload_adr[20:7];
		end
	end
	if (((videooutsoc_sdram_bankmachine6_syncfifo6_we & videooutsoc_sdram_bankmachine6_syncfifo6_writable) & (~videooutsoc_sdram_bankmachine6_replace))) begin
		videooutsoc_sdram_bankmachine6_produce <= (videooutsoc_sdram_bankmachine6_produce + 1'd1);
	end
	if (videooutsoc_sdram_bankmachine6_do_read) begin
		videooutsoc_sdram_bankmachine6_consume <= (videooutsoc_sdram_bankmachine6_consume + 1'd1);
	end
	if (((videooutsoc_sdram_bankmachine6_syncfifo6_we & videooutsoc_sdram_bankmachine6_syncfifo6_writable) & (~videooutsoc_sdram_bankmachine6_replace))) begin
		if ((~videooutsoc_sdram_bankmachine6_do_read)) begin
			videooutsoc_sdram_bankmachine6_level <= (videooutsoc_sdram_bankmachine6_level + 1'd1);
		end
	end else begin
		if (videooutsoc_sdram_bankmachine6_do_read) begin
			videooutsoc_sdram_bankmachine6_level <= (videooutsoc_sdram_bankmachine6_level - 1'd1);
		end
	end
	if (videooutsoc_sdram_bankmachine6_wait) begin
		if ((~videooutsoc_sdram_bankmachine6_done)) begin
			videooutsoc_sdram_bankmachine6_count <= (videooutsoc_sdram_bankmachine6_count - 1'd1);
		end
	end else begin
		videooutsoc_sdram_bankmachine6_count <= 3'd5;
	end
	bankmachine6_state <= bankmachine6_next_state;
	if (videooutsoc_sdram_bankmachine7_track_close) begin
		videooutsoc_sdram_bankmachine7_has_openrow <= 1'd0;
	end else begin
		if (videooutsoc_sdram_bankmachine7_track_open) begin
			videooutsoc_sdram_bankmachine7_has_openrow <= 1'd1;
			videooutsoc_sdram_bankmachine7_openrow <= videooutsoc_sdram_bankmachine7_source_payload_adr[20:7];
		end
	end
	if (((videooutsoc_sdram_bankmachine7_syncfifo7_we & videooutsoc_sdram_bankmachine7_syncfifo7_writable) & (~videooutsoc_sdram_bankmachine7_replace))) begin
		videooutsoc_sdram_bankmachine7_produce <= (videooutsoc_sdram_bankmachine7_produce + 1'd1);
	end
	if (videooutsoc_sdram_bankmachine7_do_read) begin
		videooutsoc_sdram_bankmachine7_consume <= (videooutsoc_sdram_bankmachine7_consume + 1'd1);
	end
	if (((videooutsoc_sdram_bankmachine7_syncfifo7_we & videooutsoc_sdram_bankmachine7_syncfifo7_writable) & (~videooutsoc_sdram_bankmachine7_replace))) begin
		if ((~videooutsoc_sdram_bankmachine7_do_read)) begin
			videooutsoc_sdram_bankmachine7_level <= (videooutsoc_sdram_bankmachine7_level + 1'd1);
		end
	end else begin
		if (videooutsoc_sdram_bankmachine7_do_read) begin
			videooutsoc_sdram_bankmachine7_level <= (videooutsoc_sdram_bankmachine7_level - 1'd1);
		end
	end
	if (videooutsoc_sdram_bankmachine7_wait) begin
		if ((~videooutsoc_sdram_bankmachine7_done)) begin
			videooutsoc_sdram_bankmachine7_count <= (videooutsoc_sdram_bankmachine7_count - 1'd1);
		end
	end else begin
		videooutsoc_sdram_bankmachine7_count <= 3'd5;
	end
	bankmachine7_state <= bankmachine7_next_state;
	if ((~videooutsoc_sdram_en0)) begin
		videooutsoc_sdram_time0 <= 5'd31;
	end else begin
		if ((~videooutsoc_sdram_max_time0)) begin
			videooutsoc_sdram_time0 <= (videooutsoc_sdram_time0 - 1'd1);
		end
	end
	if ((~videooutsoc_sdram_en1)) begin
		videooutsoc_sdram_time1 <= 4'd15;
	end else begin
		if ((~videooutsoc_sdram_max_time1)) begin
			videooutsoc_sdram_time1 <= (videooutsoc_sdram_time1 - 1'd1);
		end
	end
	if (videooutsoc_sdram_choose_cmd_ce) begin
		case (videooutsoc_sdram_choose_cmd_grant)
			1'd0: begin
				if (videooutsoc_sdram_choose_cmd_request[1]) begin
					videooutsoc_sdram_choose_cmd_grant <= 1'd1;
				end else begin
					if (videooutsoc_sdram_choose_cmd_request[2]) begin
						videooutsoc_sdram_choose_cmd_grant <= 2'd2;
					end else begin
						if (videooutsoc_sdram_choose_cmd_request[3]) begin
							videooutsoc_sdram_choose_cmd_grant <= 2'd3;
						end else begin
							if (videooutsoc_sdram_choose_cmd_request[4]) begin
								videooutsoc_sdram_choose_cmd_grant <= 3'd4;
							end else begin
								if (videooutsoc_sdram_choose_cmd_request[5]) begin
									videooutsoc_sdram_choose_cmd_grant <= 3'd5;
								end else begin
									if (videooutsoc_sdram_choose_cmd_request[6]) begin
										videooutsoc_sdram_choose_cmd_grant <= 3'd6;
									end else begin
										if (videooutsoc_sdram_choose_cmd_request[7]) begin
											videooutsoc_sdram_choose_cmd_grant <= 3'd7;
										end
									end
								end
							end
						end
					end
				end
			end
			1'd1: begin
				if (videooutsoc_sdram_choose_cmd_request[2]) begin
					videooutsoc_sdram_choose_cmd_grant <= 2'd2;
				end else begin
					if (videooutsoc_sdram_choose_cmd_request[3]) begin
						videooutsoc_sdram_choose_cmd_grant <= 2'd3;
					end else begin
						if (videooutsoc_sdram_choose_cmd_request[4]) begin
							videooutsoc_sdram_choose_cmd_grant <= 3'd4;
						end else begin
							if (videooutsoc_sdram_choose_cmd_request[5]) begin
								videooutsoc_sdram_choose_cmd_grant <= 3'd5;
							end else begin
								if (videooutsoc_sdram_choose_cmd_request[6]) begin
									videooutsoc_sdram_choose_cmd_grant <= 3'd6;
								end else begin
									if (videooutsoc_sdram_choose_cmd_request[7]) begin
										videooutsoc_sdram_choose_cmd_grant <= 3'd7;
									end else begin
										if (videooutsoc_sdram_choose_cmd_request[0]) begin
											videooutsoc_sdram_choose_cmd_grant <= 1'd0;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd2: begin
				if (videooutsoc_sdram_choose_cmd_request[3]) begin
					videooutsoc_sdram_choose_cmd_grant <= 2'd3;
				end else begin
					if (videooutsoc_sdram_choose_cmd_request[4]) begin
						videooutsoc_sdram_choose_cmd_grant <= 3'd4;
					end else begin
						if (videooutsoc_sdram_choose_cmd_request[5]) begin
							videooutsoc_sdram_choose_cmd_grant <= 3'd5;
						end else begin
							if (videooutsoc_sdram_choose_cmd_request[6]) begin
								videooutsoc_sdram_choose_cmd_grant <= 3'd6;
							end else begin
								if (videooutsoc_sdram_choose_cmd_request[7]) begin
									videooutsoc_sdram_choose_cmd_grant <= 3'd7;
								end else begin
									if (videooutsoc_sdram_choose_cmd_request[0]) begin
										videooutsoc_sdram_choose_cmd_grant <= 1'd0;
									end else begin
										if (videooutsoc_sdram_choose_cmd_request[1]) begin
											videooutsoc_sdram_choose_cmd_grant <= 1'd1;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd3: begin
				if (videooutsoc_sdram_choose_cmd_request[4]) begin
					videooutsoc_sdram_choose_cmd_grant <= 3'd4;
				end else begin
					if (videooutsoc_sdram_choose_cmd_request[5]) begin
						videooutsoc_sdram_choose_cmd_grant <= 3'd5;
					end else begin
						if (videooutsoc_sdram_choose_cmd_request[6]) begin
							videooutsoc_sdram_choose_cmd_grant <= 3'd6;
						end else begin
							if (videooutsoc_sdram_choose_cmd_request[7]) begin
								videooutsoc_sdram_choose_cmd_grant <= 3'd7;
							end else begin
								if (videooutsoc_sdram_choose_cmd_request[0]) begin
									videooutsoc_sdram_choose_cmd_grant <= 1'd0;
								end else begin
									if (videooutsoc_sdram_choose_cmd_request[1]) begin
										videooutsoc_sdram_choose_cmd_grant <= 1'd1;
									end else begin
										if (videooutsoc_sdram_choose_cmd_request[2]) begin
											videooutsoc_sdram_choose_cmd_grant <= 2'd2;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd4: begin
				if (videooutsoc_sdram_choose_cmd_request[5]) begin
					videooutsoc_sdram_choose_cmd_grant <= 3'd5;
				end else begin
					if (videooutsoc_sdram_choose_cmd_request[6]) begin
						videooutsoc_sdram_choose_cmd_grant <= 3'd6;
					end else begin
						if (videooutsoc_sdram_choose_cmd_request[7]) begin
							videooutsoc_sdram_choose_cmd_grant <= 3'd7;
						end else begin
							if (videooutsoc_sdram_choose_cmd_request[0]) begin
								videooutsoc_sdram_choose_cmd_grant <= 1'd0;
							end else begin
								if (videooutsoc_sdram_choose_cmd_request[1]) begin
									videooutsoc_sdram_choose_cmd_grant <= 1'd1;
								end else begin
									if (videooutsoc_sdram_choose_cmd_request[2]) begin
										videooutsoc_sdram_choose_cmd_grant <= 2'd2;
									end else begin
										if (videooutsoc_sdram_choose_cmd_request[3]) begin
											videooutsoc_sdram_choose_cmd_grant <= 2'd3;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd5: begin
				if (videooutsoc_sdram_choose_cmd_request[6]) begin
					videooutsoc_sdram_choose_cmd_grant <= 3'd6;
				end else begin
					if (videooutsoc_sdram_choose_cmd_request[7]) begin
						videooutsoc_sdram_choose_cmd_grant <= 3'd7;
					end else begin
						if (videooutsoc_sdram_choose_cmd_request[0]) begin
							videooutsoc_sdram_choose_cmd_grant <= 1'd0;
						end else begin
							if (videooutsoc_sdram_choose_cmd_request[1]) begin
								videooutsoc_sdram_choose_cmd_grant <= 1'd1;
							end else begin
								if (videooutsoc_sdram_choose_cmd_request[2]) begin
									videooutsoc_sdram_choose_cmd_grant <= 2'd2;
								end else begin
									if (videooutsoc_sdram_choose_cmd_request[3]) begin
										videooutsoc_sdram_choose_cmd_grant <= 2'd3;
									end else begin
										if (videooutsoc_sdram_choose_cmd_request[4]) begin
											videooutsoc_sdram_choose_cmd_grant <= 3'd4;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd6: begin
				if (videooutsoc_sdram_choose_cmd_request[7]) begin
					videooutsoc_sdram_choose_cmd_grant <= 3'd7;
				end else begin
					if (videooutsoc_sdram_choose_cmd_request[0]) begin
						videooutsoc_sdram_choose_cmd_grant <= 1'd0;
					end else begin
						if (videooutsoc_sdram_choose_cmd_request[1]) begin
							videooutsoc_sdram_choose_cmd_grant <= 1'd1;
						end else begin
							if (videooutsoc_sdram_choose_cmd_request[2]) begin
								videooutsoc_sdram_choose_cmd_grant <= 2'd2;
							end else begin
								if (videooutsoc_sdram_choose_cmd_request[3]) begin
									videooutsoc_sdram_choose_cmd_grant <= 2'd3;
								end else begin
									if (videooutsoc_sdram_choose_cmd_request[4]) begin
										videooutsoc_sdram_choose_cmd_grant <= 3'd4;
									end else begin
										if (videooutsoc_sdram_choose_cmd_request[5]) begin
											videooutsoc_sdram_choose_cmd_grant <= 3'd5;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd7: begin
				if (videooutsoc_sdram_choose_cmd_request[0]) begin
					videooutsoc_sdram_choose_cmd_grant <= 1'd0;
				end else begin
					if (videooutsoc_sdram_choose_cmd_request[1]) begin
						videooutsoc_sdram_choose_cmd_grant <= 1'd1;
					end else begin
						if (videooutsoc_sdram_choose_cmd_request[2]) begin
							videooutsoc_sdram_choose_cmd_grant <= 2'd2;
						end else begin
							if (videooutsoc_sdram_choose_cmd_request[3]) begin
								videooutsoc_sdram_choose_cmd_grant <= 2'd3;
							end else begin
								if (videooutsoc_sdram_choose_cmd_request[4]) begin
									videooutsoc_sdram_choose_cmd_grant <= 3'd4;
								end else begin
									if (videooutsoc_sdram_choose_cmd_request[5]) begin
										videooutsoc_sdram_choose_cmd_grant <= 3'd5;
									end else begin
										if (videooutsoc_sdram_choose_cmd_request[6]) begin
											videooutsoc_sdram_choose_cmd_grant <= 3'd6;
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
	if (videooutsoc_sdram_choose_req_ce) begin
		case (videooutsoc_sdram_choose_req_grant)
			1'd0: begin
				if (videooutsoc_sdram_choose_req_request[1]) begin
					videooutsoc_sdram_choose_req_grant <= 1'd1;
				end else begin
					if (videooutsoc_sdram_choose_req_request[2]) begin
						videooutsoc_sdram_choose_req_grant <= 2'd2;
					end else begin
						if (videooutsoc_sdram_choose_req_request[3]) begin
							videooutsoc_sdram_choose_req_grant <= 2'd3;
						end else begin
							if (videooutsoc_sdram_choose_req_request[4]) begin
								videooutsoc_sdram_choose_req_grant <= 3'd4;
							end else begin
								if (videooutsoc_sdram_choose_req_request[5]) begin
									videooutsoc_sdram_choose_req_grant <= 3'd5;
								end else begin
									if (videooutsoc_sdram_choose_req_request[6]) begin
										videooutsoc_sdram_choose_req_grant <= 3'd6;
									end else begin
										if (videooutsoc_sdram_choose_req_request[7]) begin
											videooutsoc_sdram_choose_req_grant <= 3'd7;
										end
									end
								end
							end
						end
					end
				end
			end
			1'd1: begin
				if (videooutsoc_sdram_choose_req_request[2]) begin
					videooutsoc_sdram_choose_req_grant <= 2'd2;
				end else begin
					if (videooutsoc_sdram_choose_req_request[3]) begin
						videooutsoc_sdram_choose_req_grant <= 2'd3;
					end else begin
						if (videooutsoc_sdram_choose_req_request[4]) begin
							videooutsoc_sdram_choose_req_grant <= 3'd4;
						end else begin
							if (videooutsoc_sdram_choose_req_request[5]) begin
								videooutsoc_sdram_choose_req_grant <= 3'd5;
							end else begin
								if (videooutsoc_sdram_choose_req_request[6]) begin
									videooutsoc_sdram_choose_req_grant <= 3'd6;
								end else begin
									if (videooutsoc_sdram_choose_req_request[7]) begin
										videooutsoc_sdram_choose_req_grant <= 3'd7;
									end else begin
										if (videooutsoc_sdram_choose_req_request[0]) begin
											videooutsoc_sdram_choose_req_grant <= 1'd0;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd2: begin
				if (videooutsoc_sdram_choose_req_request[3]) begin
					videooutsoc_sdram_choose_req_grant <= 2'd3;
				end else begin
					if (videooutsoc_sdram_choose_req_request[4]) begin
						videooutsoc_sdram_choose_req_grant <= 3'd4;
					end else begin
						if (videooutsoc_sdram_choose_req_request[5]) begin
							videooutsoc_sdram_choose_req_grant <= 3'd5;
						end else begin
							if (videooutsoc_sdram_choose_req_request[6]) begin
								videooutsoc_sdram_choose_req_grant <= 3'd6;
							end else begin
								if (videooutsoc_sdram_choose_req_request[7]) begin
									videooutsoc_sdram_choose_req_grant <= 3'd7;
								end else begin
									if (videooutsoc_sdram_choose_req_request[0]) begin
										videooutsoc_sdram_choose_req_grant <= 1'd0;
									end else begin
										if (videooutsoc_sdram_choose_req_request[1]) begin
											videooutsoc_sdram_choose_req_grant <= 1'd1;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd3: begin
				if (videooutsoc_sdram_choose_req_request[4]) begin
					videooutsoc_sdram_choose_req_grant <= 3'd4;
				end else begin
					if (videooutsoc_sdram_choose_req_request[5]) begin
						videooutsoc_sdram_choose_req_grant <= 3'd5;
					end else begin
						if (videooutsoc_sdram_choose_req_request[6]) begin
							videooutsoc_sdram_choose_req_grant <= 3'd6;
						end else begin
							if (videooutsoc_sdram_choose_req_request[7]) begin
								videooutsoc_sdram_choose_req_grant <= 3'd7;
							end else begin
								if (videooutsoc_sdram_choose_req_request[0]) begin
									videooutsoc_sdram_choose_req_grant <= 1'd0;
								end else begin
									if (videooutsoc_sdram_choose_req_request[1]) begin
										videooutsoc_sdram_choose_req_grant <= 1'd1;
									end else begin
										if (videooutsoc_sdram_choose_req_request[2]) begin
											videooutsoc_sdram_choose_req_grant <= 2'd2;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd4: begin
				if (videooutsoc_sdram_choose_req_request[5]) begin
					videooutsoc_sdram_choose_req_grant <= 3'd5;
				end else begin
					if (videooutsoc_sdram_choose_req_request[6]) begin
						videooutsoc_sdram_choose_req_grant <= 3'd6;
					end else begin
						if (videooutsoc_sdram_choose_req_request[7]) begin
							videooutsoc_sdram_choose_req_grant <= 3'd7;
						end else begin
							if (videooutsoc_sdram_choose_req_request[0]) begin
								videooutsoc_sdram_choose_req_grant <= 1'd0;
							end else begin
								if (videooutsoc_sdram_choose_req_request[1]) begin
									videooutsoc_sdram_choose_req_grant <= 1'd1;
								end else begin
									if (videooutsoc_sdram_choose_req_request[2]) begin
										videooutsoc_sdram_choose_req_grant <= 2'd2;
									end else begin
										if (videooutsoc_sdram_choose_req_request[3]) begin
											videooutsoc_sdram_choose_req_grant <= 2'd3;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd5: begin
				if (videooutsoc_sdram_choose_req_request[6]) begin
					videooutsoc_sdram_choose_req_grant <= 3'd6;
				end else begin
					if (videooutsoc_sdram_choose_req_request[7]) begin
						videooutsoc_sdram_choose_req_grant <= 3'd7;
					end else begin
						if (videooutsoc_sdram_choose_req_request[0]) begin
							videooutsoc_sdram_choose_req_grant <= 1'd0;
						end else begin
							if (videooutsoc_sdram_choose_req_request[1]) begin
								videooutsoc_sdram_choose_req_grant <= 1'd1;
							end else begin
								if (videooutsoc_sdram_choose_req_request[2]) begin
									videooutsoc_sdram_choose_req_grant <= 2'd2;
								end else begin
									if (videooutsoc_sdram_choose_req_request[3]) begin
										videooutsoc_sdram_choose_req_grant <= 2'd3;
									end else begin
										if (videooutsoc_sdram_choose_req_request[4]) begin
											videooutsoc_sdram_choose_req_grant <= 3'd4;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd6: begin
				if (videooutsoc_sdram_choose_req_request[7]) begin
					videooutsoc_sdram_choose_req_grant <= 3'd7;
				end else begin
					if (videooutsoc_sdram_choose_req_request[0]) begin
						videooutsoc_sdram_choose_req_grant <= 1'd0;
					end else begin
						if (videooutsoc_sdram_choose_req_request[1]) begin
							videooutsoc_sdram_choose_req_grant <= 1'd1;
						end else begin
							if (videooutsoc_sdram_choose_req_request[2]) begin
								videooutsoc_sdram_choose_req_grant <= 2'd2;
							end else begin
								if (videooutsoc_sdram_choose_req_request[3]) begin
									videooutsoc_sdram_choose_req_grant <= 2'd3;
								end else begin
									if (videooutsoc_sdram_choose_req_request[4]) begin
										videooutsoc_sdram_choose_req_grant <= 3'd4;
									end else begin
										if (videooutsoc_sdram_choose_req_request[5]) begin
											videooutsoc_sdram_choose_req_grant <= 3'd5;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd7: begin
				if (videooutsoc_sdram_choose_req_request[0]) begin
					videooutsoc_sdram_choose_req_grant <= 1'd0;
				end else begin
					if (videooutsoc_sdram_choose_req_request[1]) begin
						videooutsoc_sdram_choose_req_grant <= 1'd1;
					end else begin
						if (videooutsoc_sdram_choose_req_request[2]) begin
							videooutsoc_sdram_choose_req_grant <= 2'd2;
						end else begin
							if (videooutsoc_sdram_choose_req_request[3]) begin
								videooutsoc_sdram_choose_req_grant <= 2'd3;
							end else begin
								if (videooutsoc_sdram_choose_req_request[4]) begin
									videooutsoc_sdram_choose_req_grant <= 3'd4;
								end else begin
									if (videooutsoc_sdram_choose_req_request[5]) begin
										videooutsoc_sdram_choose_req_grant <= 3'd5;
									end else begin
										if (videooutsoc_sdram_choose_req_request[6]) begin
											videooutsoc_sdram_choose_req_grant <= 3'd6;
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
	videooutsoc_sdram_dfi_p0_address <= sync_rhs_array_muxed0;
	videooutsoc_sdram_dfi_p0_bank <= sync_rhs_array_muxed1;
	videooutsoc_sdram_dfi_p0_cas_n <= (~sync_rhs_array_muxed2);
	videooutsoc_sdram_dfi_p0_ras_n <= (~sync_rhs_array_muxed3);
	videooutsoc_sdram_dfi_p0_we_n <= (~sync_rhs_array_muxed4);
	videooutsoc_sdram_dfi_p0_rddata_en <= sync_rhs_array_muxed5;
	videooutsoc_sdram_dfi_p0_wrdata_en <= sync_rhs_array_muxed6;
	videooutsoc_sdram_dfi_p1_address <= sync_rhs_array_muxed7;
	videooutsoc_sdram_dfi_p1_bank <= sync_rhs_array_muxed8;
	videooutsoc_sdram_dfi_p1_cas_n <= (~sync_rhs_array_muxed9);
	videooutsoc_sdram_dfi_p1_ras_n <= (~sync_rhs_array_muxed10);
	videooutsoc_sdram_dfi_p1_we_n <= (~sync_rhs_array_muxed11);
	videooutsoc_sdram_dfi_p1_rddata_en <= sync_rhs_array_muxed12;
	videooutsoc_sdram_dfi_p1_wrdata_en <= sync_rhs_array_muxed13;
	videooutsoc_sdram_dfi_p2_address <= sync_rhs_array_muxed14;
	videooutsoc_sdram_dfi_p2_bank <= sync_rhs_array_muxed15;
	videooutsoc_sdram_dfi_p2_cas_n <= (~sync_rhs_array_muxed16);
	videooutsoc_sdram_dfi_p2_ras_n <= (~sync_rhs_array_muxed17);
	videooutsoc_sdram_dfi_p2_we_n <= (~sync_rhs_array_muxed18);
	videooutsoc_sdram_dfi_p2_rddata_en <= sync_rhs_array_muxed19;
	videooutsoc_sdram_dfi_p2_wrdata_en <= sync_rhs_array_muxed20;
	videooutsoc_sdram_dfi_p3_address <= sync_rhs_array_muxed21;
	videooutsoc_sdram_dfi_p3_bank <= sync_rhs_array_muxed22;
	videooutsoc_sdram_dfi_p3_cas_n <= (~sync_rhs_array_muxed23);
	videooutsoc_sdram_dfi_p3_ras_n <= (~sync_rhs_array_muxed24);
	videooutsoc_sdram_dfi_p3_we_n <= (~sync_rhs_array_muxed25);
	videooutsoc_sdram_dfi_p3_rddata_en <= sync_rhs_array_muxed26;
	videooutsoc_sdram_dfi_p3_wrdata_en <= sync_rhs_array_muxed27;
	multiplexer_state <= multiplexer_next_state;
	videooutsoc_sdram_bandwidth_cmd_valid <= videooutsoc_sdram_choose_req_cmd_valid;
	videooutsoc_sdram_bandwidth_cmd_ready <= videooutsoc_sdram_choose_req_cmd_ready;
	videooutsoc_sdram_bandwidth_cmd_is_read <= videooutsoc_sdram_choose_req_cmd_payload_is_read;
	videooutsoc_sdram_bandwidth_cmd_is_write <= videooutsoc_sdram_choose_req_cmd_payload_is_write;
	{videooutsoc_sdram_bandwidth_period, videooutsoc_sdram_bandwidth_counter} <= (videooutsoc_sdram_bandwidth_counter + 1'd1);
	if (videooutsoc_sdram_bandwidth_period) begin
		videooutsoc_sdram_bandwidth_nreads_r <= videooutsoc_sdram_bandwidth_nreads;
		videooutsoc_sdram_bandwidth_nwrites_r <= videooutsoc_sdram_bandwidth_nwrites;
		videooutsoc_sdram_bandwidth_nreads <= 1'd0;
		videooutsoc_sdram_bandwidth_nwrites <= 1'd0;
	end else begin
		if ((videooutsoc_sdram_bandwidth_cmd_valid & videooutsoc_sdram_bandwidth_cmd_ready)) begin
			if (videooutsoc_sdram_bandwidth_cmd_is_read) begin
				videooutsoc_sdram_bandwidth_nreads <= (videooutsoc_sdram_bandwidth_nreads + 1'd1);
			end
			if (videooutsoc_sdram_bandwidth_cmd_is_write) begin
				videooutsoc_sdram_bandwidth_nwrites <= (videooutsoc_sdram_bandwidth_nwrites + 1'd1);
			end
		end
	end
	if (videooutsoc_sdram_bandwidth_update_re) begin
		videooutsoc_sdram_bandwidth_nreads_status <= videooutsoc_sdram_bandwidth_nreads_r;
		videooutsoc_sdram_bandwidth_nwrites_status <= videooutsoc_sdram_bandwidth_nwrites_r;
	end
	new_master_wdata_ready0 <= ((((((((1'd0 | ((roundrobin0_grant == 1'd0) & videooutsoc_sdram_interface_bank0_wdata_ready)) | ((roundrobin1_grant == 1'd0) & videooutsoc_sdram_interface_bank1_wdata_ready)) | ((roundrobin2_grant == 1'd0) & videooutsoc_sdram_interface_bank2_wdata_ready)) | ((roundrobin3_grant == 1'd0) & videooutsoc_sdram_interface_bank3_wdata_ready)) | ((roundrobin4_grant == 1'd0) & videooutsoc_sdram_interface_bank4_wdata_ready)) | ((roundrobin5_grant == 1'd0) & videooutsoc_sdram_interface_bank5_wdata_ready)) | ((roundrobin6_grant == 1'd0) & videooutsoc_sdram_interface_bank6_wdata_ready)) | ((roundrobin7_grant == 1'd0) & videooutsoc_sdram_interface_bank7_wdata_ready));
	new_master_wdata_ready1 <= new_master_wdata_ready0;
	new_master_wdata_ready2 <= new_master_wdata_ready1;
	new_master_wdata_ready3 <= ((((((((1'd0 | ((roundrobin0_grant == 1'd1) & videooutsoc_sdram_interface_bank0_wdata_ready)) | ((roundrobin1_grant == 1'd1) & videooutsoc_sdram_interface_bank1_wdata_ready)) | ((roundrobin2_grant == 1'd1) & videooutsoc_sdram_interface_bank2_wdata_ready)) | ((roundrobin3_grant == 1'd1) & videooutsoc_sdram_interface_bank3_wdata_ready)) | ((roundrobin4_grant == 1'd1) & videooutsoc_sdram_interface_bank4_wdata_ready)) | ((roundrobin5_grant == 1'd1) & videooutsoc_sdram_interface_bank5_wdata_ready)) | ((roundrobin6_grant == 1'd1) & videooutsoc_sdram_interface_bank6_wdata_ready)) | ((roundrobin7_grant == 1'd1) & videooutsoc_sdram_interface_bank7_wdata_ready));
	new_master_wdata_ready4 <= new_master_wdata_ready3;
	new_master_wdata_ready5 <= new_master_wdata_ready4;
	new_master_rdata_valid0 <= ((((((((1'd0 | ((roundrobin0_grant == 1'd0) & videooutsoc_sdram_interface_bank0_rdata_valid)) | ((roundrobin1_grant == 1'd0) & videooutsoc_sdram_interface_bank1_rdata_valid)) | ((roundrobin2_grant == 1'd0) & videooutsoc_sdram_interface_bank2_rdata_valid)) | ((roundrobin3_grant == 1'd0) & videooutsoc_sdram_interface_bank3_rdata_valid)) | ((roundrobin4_grant == 1'd0) & videooutsoc_sdram_interface_bank4_rdata_valid)) | ((roundrobin5_grant == 1'd0) & videooutsoc_sdram_interface_bank5_rdata_valid)) | ((roundrobin6_grant == 1'd0) & videooutsoc_sdram_interface_bank6_rdata_valid)) | ((roundrobin7_grant == 1'd0) & videooutsoc_sdram_interface_bank7_rdata_valid));
	new_master_rdata_valid1 <= new_master_rdata_valid0;
	new_master_rdata_valid2 <= new_master_rdata_valid1;
	new_master_rdata_valid3 <= new_master_rdata_valid2;
	new_master_rdata_valid4 <= new_master_rdata_valid3;
	new_master_rdata_valid5 <= new_master_rdata_valid4;
	new_master_rdata_valid6 <= new_master_rdata_valid5;
	new_master_rdata_valid7 <= ((((((((1'd0 | ((roundrobin0_grant == 1'd1) & videooutsoc_sdram_interface_bank0_rdata_valid)) | ((roundrobin1_grant == 1'd1) & videooutsoc_sdram_interface_bank1_rdata_valid)) | ((roundrobin2_grant == 1'd1) & videooutsoc_sdram_interface_bank2_rdata_valid)) | ((roundrobin3_grant == 1'd1) & videooutsoc_sdram_interface_bank3_rdata_valid)) | ((roundrobin4_grant == 1'd1) & videooutsoc_sdram_interface_bank4_rdata_valid)) | ((roundrobin5_grant == 1'd1) & videooutsoc_sdram_interface_bank5_rdata_valid)) | ((roundrobin6_grant == 1'd1) & videooutsoc_sdram_interface_bank6_rdata_valid)) | ((roundrobin7_grant == 1'd1) & videooutsoc_sdram_interface_bank7_rdata_valid));
	new_master_rdata_valid8 <= new_master_rdata_valid7;
	new_master_rdata_valid9 <= new_master_rdata_valid8;
	new_master_rdata_valid10 <= new_master_rdata_valid9;
	new_master_rdata_valid11 <= new_master_rdata_valid10;
	new_master_rdata_valid12 <= new_master_rdata_valid11;
	new_master_rdata_valid13 <= new_master_rdata_valid12;
	cmd_fifo_graycounter1_q_binary <= cmd_fifo_graycounter1_q_next_binary;
	cmd_fifo_graycounter1_q <= cmd_fifo_graycounter1_q_next;
	rdata_fifo_graycounter0_q_binary <= rdata_fifo_graycounter0_q_next_binary;
	rdata_fifo_graycounter0_q <= rdata_fifo_graycounter0_q_next;
	if (roundrobin0_ce) begin
		case (roundrobin0_grant)
			1'd0: begin
				if (roundrobin0_request[1]) begin
					roundrobin0_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (roundrobin0_request[0]) begin
					roundrobin0_grant <= 1'd0;
				end
			end
		endcase
	end
	if (roundrobin1_ce) begin
		case (roundrobin1_grant)
			1'd0: begin
				if (roundrobin1_request[1]) begin
					roundrobin1_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (roundrobin1_request[0]) begin
					roundrobin1_grant <= 1'd0;
				end
			end
		endcase
	end
	if (roundrobin2_ce) begin
		case (roundrobin2_grant)
			1'd0: begin
				if (roundrobin2_request[1]) begin
					roundrobin2_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (roundrobin2_request[0]) begin
					roundrobin2_grant <= 1'd0;
				end
			end
		endcase
	end
	if (roundrobin3_ce) begin
		case (roundrobin3_grant)
			1'd0: begin
				if (roundrobin3_request[1]) begin
					roundrobin3_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (roundrobin3_request[0]) begin
					roundrobin3_grant <= 1'd0;
				end
			end
		endcase
	end
	if (roundrobin4_ce) begin
		case (roundrobin4_grant)
			1'd0: begin
				if (roundrobin4_request[1]) begin
					roundrobin4_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (roundrobin4_request[0]) begin
					roundrobin4_grant <= 1'd0;
				end
			end
		endcase
	end
	if (roundrobin5_ce) begin
		case (roundrobin5_grant)
			1'd0: begin
				if (roundrobin5_request[1]) begin
					roundrobin5_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (roundrobin5_request[0]) begin
					roundrobin5_grant <= 1'd0;
				end
			end
		endcase
	end
	if (roundrobin6_ce) begin
		case (roundrobin6_grant)
			1'd0: begin
				if (roundrobin6_request[1]) begin
					roundrobin6_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (roundrobin6_request[0]) begin
					roundrobin6_grant <= 1'd0;
				end
			end
		endcase
	end
	if (roundrobin7_ce) begin
		case (roundrobin7_grant)
			1'd0: begin
				if (roundrobin7_request[1]) begin
					roundrobin7_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (roundrobin7_request[0]) begin
					roundrobin7_grant <= 1'd0;
				end
			end
		endcase
	end
	videooutsoc_adr_offset_r <= videooutsoc_interface0_wb_sdram_adr[2:0];
	fullmemorywe_state <= fullmemorywe_next_state;
	litedramwishbonebridge_state <= litedramwishbonebridge_next_state;
	hdmi_out0_core_initiator_cdc_graycounter0_q_binary <= hdmi_out0_core_initiator_cdc_graycounter0_q_next_binary;
	hdmi_out0_core_initiator_cdc_graycounter0_q <= hdmi_out0_core_initiator_cdc_graycounter0_q_next;
	if (hdmi_out0_core_i) begin
		hdmi_out0_core_toggle_i <= (~hdmi_out0_core_toggle_i);
	end
	if ((hdmi_out0_driver_s7hdmioutclocking_mmcm_read_re | hdmi_out0_driver_s7hdmioutclocking_mmcm_write_re)) begin
		hdmi_out0_driver_s7hdmioutclocking_mmcm_drdy_status <= 1'd0;
	end else begin
		if (hdmi_out0_driver_s7hdmioutclocking_mmcm_drdy) begin
			hdmi_out0_driver_s7hdmioutclocking_mmcm_drdy_status <= 1'd1;
		end
	end
	case (videooutsoc_grant)
		1'd0: begin
			if ((~videooutsoc_request[0])) begin
				if (videooutsoc_request[1]) begin
					videooutsoc_grant <= 1'd1;
				end
			end
		end
		1'd1: begin
			if ((~videooutsoc_request[1])) begin
				if (videooutsoc_request[0]) begin
					videooutsoc_grant <= 1'd0;
				end
			end
		end
	endcase
	videooutsoc_slave_sel_r <= videooutsoc_slave_sel;
	videooutsoc_interface0_bank_bus_dat_r <= 1'd0;
	if (videooutsoc_csrbank0_sel) begin
		case (videooutsoc_interface0_bank_bus_adr[1:0])
			1'd0: begin
				videooutsoc_interface0_bank_bus_dat_r <= videooutsoc_csrbank0_dly_sel0_w;
			end
			1'd1: begin
				videooutsoc_interface0_bank_bus_dat_r <= videooutsoc_rdly_dq_rst_w;
			end
			2'd2: begin
				videooutsoc_interface0_bank_bus_dat_r <= videooutsoc_rdly_dq_inc_w;
			end
			2'd3: begin
				videooutsoc_interface0_bank_bus_dat_r <= videooutsoc_rdly_dq_bitslip_w;
			end
		endcase
	end
	if (videooutsoc_csrbank0_dly_sel0_re) begin
		videooutsoc_storage_full[3:0] <= videooutsoc_csrbank0_dly_sel0_r;
	end
	videooutsoc_re <= videooutsoc_csrbank0_dly_sel0_re;
	videooutsoc_interface1_bank_bus_dat_r <= 1'd0;
	if (videooutsoc_csrbank1_sel) begin
		case (videooutsoc_interface1_bank_bus_adr[5:0])
			1'd0: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_underflow_enable0_w;
			end
			1'd1: begin
				videooutsoc_interface1_bank_bus_dat_r <= hdmi_out0_core_underflow_update_underflow_update_w;
			end
			2'd2: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_underflow_counter3_w;
			end
			2'd3: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_underflow_counter2_w;
			end
			3'd4: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_underflow_counter1_w;
			end
			3'd5: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_underflow_counter0_w;
			end
			3'd6: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_initiator_enable0_w;
			end
			3'd7: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_initiator_hres1_w;
			end
			4'd8: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_initiator_hres0_w;
			end
			4'd9: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_initiator_hsync_start1_w;
			end
			4'd10: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_initiator_hsync_start0_w;
			end
			4'd11: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_initiator_hsync_end1_w;
			end
			4'd12: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_initiator_hsync_end0_w;
			end
			4'd13: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_initiator_hscan1_w;
			end
			4'd14: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_initiator_hscan0_w;
			end
			4'd15: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_initiator_vres1_w;
			end
			5'd16: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_initiator_vres0_w;
			end
			5'd17: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_initiator_vsync_start1_w;
			end
			5'd18: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_initiator_vsync_start0_w;
			end
			5'd19: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_initiator_vsync_end1_w;
			end
			5'd20: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_initiator_vsync_end0_w;
			end
			5'd21: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_initiator_vscan1_w;
			end
			5'd22: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_initiator_vscan0_w;
			end
			5'd23: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_initiator_base3_w;
			end
			5'd24: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_initiator_base2_w;
			end
			5'd25: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_initiator_base1_w;
			end
			5'd26: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_initiator_base0_w;
			end
			5'd27: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_initiator_length3_w;
			end
			5'd28: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_initiator_length2_w;
			end
			5'd29: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_initiator_length1_w;
			end
			5'd30: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_core_initiator_length0_w;
			end
			5'd31: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_driver_clocking_mmcm_reset0_w;
			end
			6'd32: begin
				videooutsoc_interface1_bank_bus_dat_r <= hdmi_out0_driver_s7hdmioutclocking_mmcm_read_w;
			end
			6'd33: begin
				videooutsoc_interface1_bank_bus_dat_r <= hdmi_out0_driver_s7hdmioutclocking_mmcm_write_w;
			end
			6'd34: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_driver_clocking_mmcm_drdy_w;
			end
			6'd35: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_driver_clocking_mmcm_adr0_w;
			end
			6'd36: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_driver_clocking_mmcm_dat_w1_w;
			end
			6'd37: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_driver_clocking_mmcm_dat_w0_w;
			end
			6'd38: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_driver_clocking_mmcm_dat_r1_w;
			end
			6'd39: begin
				videooutsoc_interface1_bank_bus_dat_r <= videooutsoc_csrbank1_driver_clocking_mmcm_dat_r0_w;
			end
		endcase
	end
	if (videooutsoc_csrbank1_core_underflow_enable0_re) begin
		hdmi_out0_core_underflow_enable_storage_full <= videooutsoc_csrbank1_core_underflow_enable0_r;
	end
	hdmi_out0_core_underflow_enable_re <= videooutsoc_csrbank1_core_underflow_enable0_re;
	if (videooutsoc_csrbank1_core_initiator_enable0_re) begin
		hdmi_out0_core_initiator_enable_storage_full <= videooutsoc_csrbank1_core_initiator_enable0_r;
	end
	hdmi_out0_core_initiator_enable_re <= videooutsoc_csrbank1_core_initiator_enable0_re;
	if (videooutsoc_csrbank1_core_initiator_hres1_re) begin
		videooutsoc_csrbank1_core_initiator_hres_backstore[3:0] <= videooutsoc_csrbank1_core_initiator_hres1_r;
	end
	if (videooutsoc_csrbank1_core_initiator_hres0_re) begin
		hdmi_out0_core_initiator_csrstorage0_storage_full <= {videooutsoc_csrbank1_core_initiator_hres_backstore, videooutsoc_csrbank1_core_initiator_hres0_r};
	end
	hdmi_out0_core_initiator_csrstorage0_re <= videooutsoc_csrbank1_core_initiator_hres0_re;
	if (videooutsoc_csrbank1_core_initiator_hsync_start1_re) begin
		videooutsoc_csrbank1_core_initiator_hsync_start_backstore[3:0] <= videooutsoc_csrbank1_core_initiator_hsync_start1_r;
	end
	if (videooutsoc_csrbank1_core_initiator_hsync_start0_re) begin
		hdmi_out0_core_initiator_csrstorage1_storage_full <= {videooutsoc_csrbank1_core_initiator_hsync_start_backstore, videooutsoc_csrbank1_core_initiator_hsync_start0_r};
	end
	hdmi_out0_core_initiator_csrstorage1_re <= videooutsoc_csrbank1_core_initiator_hsync_start0_re;
	if (videooutsoc_csrbank1_core_initiator_hsync_end1_re) begin
		videooutsoc_csrbank1_core_initiator_hsync_end_backstore[3:0] <= videooutsoc_csrbank1_core_initiator_hsync_end1_r;
	end
	if (videooutsoc_csrbank1_core_initiator_hsync_end0_re) begin
		hdmi_out0_core_initiator_csrstorage2_storage_full <= {videooutsoc_csrbank1_core_initiator_hsync_end_backstore, videooutsoc_csrbank1_core_initiator_hsync_end0_r};
	end
	hdmi_out0_core_initiator_csrstorage2_re <= videooutsoc_csrbank1_core_initiator_hsync_end0_re;
	if (videooutsoc_csrbank1_core_initiator_hscan1_re) begin
		videooutsoc_csrbank1_core_initiator_hscan_backstore[3:0] <= videooutsoc_csrbank1_core_initiator_hscan1_r;
	end
	if (videooutsoc_csrbank1_core_initiator_hscan0_re) begin
		hdmi_out0_core_initiator_csrstorage3_storage_full <= {videooutsoc_csrbank1_core_initiator_hscan_backstore, videooutsoc_csrbank1_core_initiator_hscan0_r};
	end
	hdmi_out0_core_initiator_csrstorage3_re <= videooutsoc_csrbank1_core_initiator_hscan0_re;
	if (videooutsoc_csrbank1_core_initiator_vres1_re) begin
		videooutsoc_csrbank1_core_initiator_vres_backstore[3:0] <= videooutsoc_csrbank1_core_initiator_vres1_r;
	end
	if (videooutsoc_csrbank1_core_initiator_vres0_re) begin
		hdmi_out0_core_initiator_csrstorage4_storage_full <= {videooutsoc_csrbank1_core_initiator_vres_backstore, videooutsoc_csrbank1_core_initiator_vres0_r};
	end
	hdmi_out0_core_initiator_csrstorage4_re <= videooutsoc_csrbank1_core_initiator_vres0_re;
	if (videooutsoc_csrbank1_core_initiator_vsync_start1_re) begin
		videooutsoc_csrbank1_core_initiator_vsync_start_backstore[3:0] <= videooutsoc_csrbank1_core_initiator_vsync_start1_r;
	end
	if (videooutsoc_csrbank1_core_initiator_vsync_start0_re) begin
		hdmi_out0_core_initiator_csrstorage5_storage_full <= {videooutsoc_csrbank1_core_initiator_vsync_start_backstore, videooutsoc_csrbank1_core_initiator_vsync_start0_r};
	end
	hdmi_out0_core_initiator_csrstorage5_re <= videooutsoc_csrbank1_core_initiator_vsync_start0_re;
	if (videooutsoc_csrbank1_core_initiator_vsync_end1_re) begin
		videooutsoc_csrbank1_core_initiator_vsync_end_backstore[3:0] <= videooutsoc_csrbank1_core_initiator_vsync_end1_r;
	end
	if (videooutsoc_csrbank1_core_initiator_vsync_end0_re) begin
		hdmi_out0_core_initiator_csrstorage6_storage_full <= {videooutsoc_csrbank1_core_initiator_vsync_end_backstore, videooutsoc_csrbank1_core_initiator_vsync_end0_r};
	end
	hdmi_out0_core_initiator_csrstorage6_re <= videooutsoc_csrbank1_core_initiator_vsync_end0_re;
	if (videooutsoc_csrbank1_core_initiator_vscan1_re) begin
		videooutsoc_csrbank1_core_initiator_vscan_backstore[3:0] <= videooutsoc_csrbank1_core_initiator_vscan1_r;
	end
	if (videooutsoc_csrbank1_core_initiator_vscan0_re) begin
		hdmi_out0_core_initiator_csrstorage7_storage_full <= {videooutsoc_csrbank1_core_initiator_vscan_backstore, videooutsoc_csrbank1_core_initiator_vscan0_r};
	end
	hdmi_out0_core_initiator_csrstorage7_re <= videooutsoc_csrbank1_core_initiator_vscan0_re;
	if (videooutsoc_csrbank1_core_initiator_base3_re) begin
		videooutsoc_csrbank1_core_initiator_base_backstore[23:16] <= videooutsoc_csrbank1_core_initiator_base3_r;
	end
	if (videooutsoc_csrbank1_core_initiator_base2_re) begin
		videooutsoc_csrbank1_core_initiator_base_backstore[15:8] <= videooutsoc_csrbank1_core_initiator_base2_r;
	end
	if (videooutsoc_csrbank1_core_initiator_base1_re) begin
		videooutsoc_csrbank1_core_initiator_base_backstore[7:0] <= videooutsoc_csrbank1_core_initiator_base1_r;
	end
	if (videooutsoc_csrbank1_core_initiator_base0_re) begin
		hdmi_out0_core_initiator_csrstorage8_storage_full <= {videooutsoc_csrbank1_core_initiator_base_backstore, videooutsoc_csrbank1_core_initiator_base0_r};
	end
	hdmi_out0_core_initiator_csrstorage8_re <= videooutsoc_csrbank1_core_initiator_base0_re;
	if (videooutsoc_csrbank1_core_initiator_length3_re) begin
		videooutsoc_csrbank1_core_initiator_length_backstore[23:16] <= videooutsoc_csrbank1_core_initiator_length3_r;
	end
	if (videooutsoc_csrbank1_core_initiator_length2_re) begin
		videooutsoc_csrbank1_core_initiator_length_backstore[15:8] <= videooutsoc_csrbank1_core_initiator_length2_r;
	end
	if (videooutsoc_csrbank1_core_initiator_length1_re) begin
		videooutsoc_csrbank1_core_initiator_length_backstore[7:0] <= videooutsoc_csrbank1_core_initiator_length1_r;
	end
	if (videooutsoc_csrbank1_core_initiator_length0_re) begin
		hdmi_out0_core_initiator_csrstorage9_storage_full <= {videooutsoc_csrbank1_core_initiator_length_backstore, videooutsoc_csrbank1_core_initiator_length0_r};
	end
	hdmi_out0_core_initiator_csrstorage9_re <= videooutsoc_csrbank1_core_initiator_length0_re;
	if (videooutsoc_csrbank1_driver_clocking_mmcm_reset0_re) begin
		hdmi_out0_driver_s7hdmioutclocking_mmcm_reset_storage_full <= videooutsoc_csrbank1_driver_clocking_mmcm_reset0_r;
	end
	hdmi_out0_driver_s7hdmioutclocking_mmcm_reset_re <= videooutsoc_csrbank1_driver_clocking_mmcm_reset0_re;
	if (videooutsoc_csrbank1_driver_clocking_mmcm_adr0_re) begin
		hdmi_out0_driver_s7hdmioutclocking_mmcm_adr_storage_full[6:0] <= videooutsoc_csrbank1_driver_clocking_mmcm_adr0_r;
	end
	hdmi_out0_driver_s7hdmioutclocking_mmcm_adr_re <= videooutsoc_csrbank1_driver_clocking_mmcm_adr0_re;
	if (videooutsoc_csrbank1_driver_clocking_mmcm_dat_w1_re) begin
		hdmi_out0_driver_s7hdmioutclocking_mmcm_dat_w_storage_full[15:8] <= videooutsoc_csrbank1_driver_clocking_mmcm_dat_w1_r;
	end
	if (videooutsoc_csrbank1_driver_clocking_mmcm_dat_w0_re) begin
		hdmi_out0_driver_s7hdmioutclocking_mmcm_dat_w_storage_full[7:0] <= videooutsoc_csrbank1_driver_clocking_mmcm_dat_w0_r;
	end
	hdmi_out0_driver_s7hdmioutclocking_mmcm_dat_w_re <= videooutsoc_csrbank1_driver_clocking_mmcm_dat_w0_re;
	videooutsoc_sel_r <= videooutsoc_sel;
	videooutsoc_interface2_bank_bus_dat_r <= 1'd0;
	if (videooutsoc_csrbank2_sel) begin
		case (videooutsoc_interface2_bank_bus_adr[5:0])
			1'd0: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_dna_id7_w;
			end
			1'd1: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_dna_id6_w;
			end
			2'd2: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_dna_id5_w;
			end
			2'd3: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_dna_id4_w;
			end
			3'd4: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_dna_id3_w;
			end
			3'd5: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_dna_id2_w;
			end
			3'd6: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_dna_id1_w;
			end
			3'd7: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_dna_id0_w;
			end
			4'd8: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_git_commit19_w;
			end
			4'd9: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_git_commit18_w;
			end
			4'd10: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_git_commit17_w;
			end
			4'd11: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_git_commit16_w;
			end
			4'd12: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_git_commit15_w;
			end
			4'd13: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_git_commit14_w;
			end
			4'd14: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_git_commit13_w;
			end
			4'd15: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_git_commit12_w;
			end
			5'd16: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_git_commit11_w;
			end
			5'd17: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_git_commit10_w;
			end
			5'd18: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_git_commit9_w;
			end
			5'd19: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_git_commit8_w;
			end
			5'd20: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_git_commit7_w;
			end
			5'd21: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_git_commit6_w;
			end
			5'd22: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_git_commit5_w;
			end
			5'd23: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_git_commit4_w;
			end
			5'd24: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_git_commit3_w;
			end
			5'd25: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_git_commit2_w;
			end
			5'd26: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_git_commit1_w;
			end
			5'd27: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_git_commit0_w;
			end
			5'd28: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_platform_platform7_w;
			end
			5'd29: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_platform_platform6_w;
			end
			5'd30: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_platform_platform5_w;
			end
			5'd31: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_platform_platform4_w;
			end
			6'd32: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_platform_platform3_w;
			end
			6'd33: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_platform_platform2_w;
			end
			6'd34: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_platform_platform1_w;
			end
			6'd35: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_platform_platform0_w;
			end
			6'd36: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_platform_target7_w;
			end
			6'd37: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_platform_target6_w;
			end
			6'd38: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_platform_target5_w;
			end
			6'd39: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_platform_target4_w;
			end
			6'd40: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_platform_target3_w;
			end
			6'd41: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_platform_target2_w;
			end
			6'd42: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_platform_target1_w;
			end
			6'd43: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_platform_target0_w;
			end
			6'd44: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_xadc_temperature1_w;
			end
			6'd45: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_xadc_temperature0_w;
			end
			6'd46: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_xadc_vccint1_w;
			end
			6'd47: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_xadc_vccint0_w;
			end
			6'd48: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_xadc_vccaux1_w;
			end
			6'd49: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_xadc_vccaux0_w;
			end
			6'd50: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_xadc_vccbram1_w;
			end
			6'd51: begin
				videooutsoc_interface2_bank_bus_dat_r <= videooutsoc_csrbank2_xadc_vccbram0_w;
			end
		endcase
	end
	videooutsoc_interface3_bank_bus_dat_r <= 1'd0;
	if (videooutsoc_csrbank3_sel) begin
		case (videooutsoc_interface3_bank_bus_adr[6:0])
			1'd0: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_control0_w;
			end
			1'd1: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi0_command0_w;
			end
			2'd2: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_sdram_phaseinjector0_command_issue_w;
			end
			2'd3: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi0_address1_w;
			end
			3'd4: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi0_address0_w;
			end
			3'd5: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi0_baddress0_w;
			end
			3'd6: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi0_wrdata7_w;
			end
			3'd7: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi0_wrdata6_w;
			end
			4'd8: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi0_wrdata5_w;
			end
			4'd9: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi0_wrdata4_w;
			end
			4'd10: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi0_wrdata3_w;
			end
			4'd11: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi0_wrdata2_w;
			end
			4'd12: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi0_wrdata1_w;
			end
			4'd13: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi0_wrdata0_w;
			end
			4'd14: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi0_rddata7_w;
			end
			4'd15: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi0_rddata6_w;
			end
			5'd16: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi0_rddata5_w;
			end
			5'd17: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi0_rddata4_w;
			end
			5'd18: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi0_rddata3_w;
			end
			5'd19: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi0_rddata2_w;
			end
			5'd20: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi0_rddata1_w;
			end
			5'd21: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi0_rddata0_w;
			end
			5'd22: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi1_command0_w;
			end
			5'd23: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_sdram_phaseinjector1_command_issue_w;
			end
			5'd24: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi1_address1_w;
			end
			5'd25: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi1_address0_w;
			end
			5'd26: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi1_baddress0_w;
			end
			5'd27: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi1_wrdata7_w;
			end
			5'd28: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi1_wrdata6_w;
			end
			5'd29: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi1_wrdata5_w;
			end
			5'd30: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi1_wrdata4_w;
			end
			5'd31: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi1_wrdata3_w;
			end
			6'd32: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi1_wrdata2_w;
			end
			6'd33: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi1_wrdata1_w;
			end
			6'd34: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi1_wrdata0_w;
			end
			6'd35: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi1_rddata7_w;
			end
			6'd36: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi1_rddata6_w;
			end
			6'd37: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi1_rddata5_w;
			end
			6'd38: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi1_rddata4_w;
			end
			6'd39: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi1_rddata3_w;
			end
			6'd40: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi1_rddata2_w;
			end
			6'd41: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi1_rddata1_w;
			end
			6'd42: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi1_rddata0_w;
			end
			6'd43: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi2_command0_w;
			end
			6'd44: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_sdram_phaseinjector2_command_issue_w;
			end
			6'd45: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi2_address1_w;
			end
			6'd46: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi2_address0_w;
			end
			6'd47: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi2_baddress0_w;
			end
			6'd48: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi2_wrdata7_w;
			end
			6'd49: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi2_wrdata6_w;
			end
			6'd50: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi2_wrdata5_w;
			end
			6'd51: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi2_wrdata4_w;
			end
			6'd52: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi2_wrdata3_w;
			end
			6'd53: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi2_wrdata2_w;
			end
			6'd54: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi2_wrdata1_w;
			end
			6'd55: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi2_wrdata0_w;
			end
			6'd56: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi2_rddata7_w;
			end
			6'd57: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi2_rddata6_w;
			end
			6'd58: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi2_rddata5_w;
			end
			6'd59: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi2_rddata4_w;
			end
			6'd60: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi2_rddata3_w;
			end
			6'd61: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi2_rddata2_w;
			end
			6'd62: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi2_rddata1_w;
			end
			6'd63: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi2_rddata0_w;
			end
			7'd64: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi3_command0_w;
			end
			7'd65: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_sdram_phaseinjector3_command_issue_w;
			end
			7'd66: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi3_address1_w;
			end
			7'd67: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi3_address0_w;
			end
			7'd68: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi3_baddress0_w;
			end
			7'd69: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi3_wrdata7_w;
			end
			7'd70: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi3_wrdata6_w;
			end
			7'd71: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi3_wrdata5_w;
			end
			7'd72: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi3_wrdata4_w;
			end
			7'd73: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi3_wrdata3_w;
			end
			7'd74: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi3_wrdata2_w;
			end
			7'd75: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi3_wrdata1_w;
			end
			7'd76: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi3_wrdata0_w;
			end
			7'd77: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi3_rddata7_w;
			end
			7'd78: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi3_rddata6_w;
			end
			7'd79: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi3_rddata5_w;
			end
			7'd80: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi3_rddata4_w;
			end
			7'd81: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi3_rddata3_w;
			end
			7'd82: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi3_rddata2_w;
			end
			7'd83: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi3_rddata1_w;
			end
			7'd84: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_dfii_pi3_rddata0_w;
			end
			7'd85: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_sdram_bandwidth_update_w;
			end
			7'd86: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_controller_bandwidth_nreads2_w;
			end
			7'd87: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_controller_bandwidth_nreads1_w;
			end
			7'd88: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_controller_bandwidth_nreads0_w;
			end
			7'd89: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_controller_bandwidth_nwrites2_w;
			end
			7'd90: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_controller_bandwidth_nwrites1_w;
			end
			7'd91: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_controller_bandwidth_nwrites0_w;
			end
			7'd92: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_controller_bandwidth_data_width1_w;
			end
			7'd93: begin
				videooutsoc_interface3_bank_bus_dat_r <= videooutsoc_csrbank3_controller_bandwidth_data_width0_w;
			end
		endcase
	end
	if (videooutsoc_csrbank3_dfii_control0_re) begin
		videooutsoc_sdram_storage_full[3:0] <= videooutsoc_csrbank3_dfii_control0_r;
	end
	videooutsoc_sdram_re <= videooutsoc_csrbank3_dfii_control0_re;
	if (videooutsoc_csrbank3_dfii_pi0_command0_re) begin
		videooutsoc_sdram_phaseinjector0_command_storage_full[5:0] <= videooutsoc_csrbank3_dfii_pi0_command0_r;
	end
	videooutsoc_sdram_phaseinjector0_command_re <= videooutsoc_csrbank3_dfii_pi0_command0_re;
	if (videooutsoc_csrbank3_dfii_pi0_address1_re) begin
		videooutsoc_sdram_phaseinjector0_address_storage_full[13:8] <= videooutsoc_csrbank3_dfii_pi0_address1_r;
	end
	if (videooutsoc_csrbank3_dfii_pi0_address0_re) begin
		videooutsoc_sdram_phaseinjector0_address_storage_full[7:0] <= videooutsoc_csrbank3_dfii_pi0_address0_r;
	end
	videooutsoc_sdram_phaseinjector0_address_re <= videooutsoc_csrbank3_dfii_pi0_address0_re;
	if (videooutsoc_csrbank3_dfii_pi0_baddress0_re) begin
		videooutsoc_sdram_phaseinjector0_baddress_storage_full[2:0] <= videooutsoc_csrbank3_dfii_pi0_baddress0_r;
	end
	videooutsoc_sdram_phaseinjector0_baddress_re <= videooutsoc_csrbank3_dfii_pi0_baddress0_re;
	if (videooutsoc_csrbank3_dfii_pi0_wrdata7_re) begin
		videooutsoc_sdram_phaseinjector0_wrdata_storage_full[63:56] <= videooutsoc_csrbank3_dfii_pi0_wrdata7_r;
	end
	if (videooutsoc_csrbank3_dfii_pi0_wrdata6_re) begin
		videooutsoc_sdram_phaseinjector0_wrdata_storage_full[55:48] <= videooutsoc_csrbank3_dfii_pi0_wrdata6_r;
	end
	if (videooutsoc_csrbank3_dfii_pi0_wrdata5_re) begin
		videooutsoc_sdram_phaseinjector0_wrdata_storage_full[47:40] <= videooutsoc_csrbank3_dfii_pi0_wrdata5_r;
	end
	if (videooutsoc_csrbank3_dfii_pi0_wrdata4_re) begin
		videooutsoc_sdram_phaseinjector0_wrdata_storage_full[39:32] <= videooutsoc_csrbank3_dfii_pi0_wrdata4_r;
	end
	if (videooutsoc_csrbank3_dfii_pi0_wrdata3_re) begin
		videooutsoc_sdram_phaseinjector0_wrdata_storage_full[31:24] <= videooutsoc_csrbank3_dfii_pi0_wrdata3_r;
	end
	if (videooutsoc_csrbank3_dfii_pi0_wrdata2_re) begin
		videooutsoc_sdram_phaseinjector0_wrdata_storage_full[23:16] <= videooutsoc_csrbank3_dfii_pi0_wrdata2_r;
	end
	if (videooutsoc_csrbank3_dfii_pi0_wrdata1_re) begin
		videooutsoc_sdram_phaseinjector0_wrdata_storage_full[15:8] <= videooutsoc_csrbank3_dfii_pi0_wrdata1_r;
	end
	if (videooutsoc_csrbank3_dfii_pi0_wrdata0_re) begin
		videooutsoc_sdram_phaseinjector0_wrdata_storage_full[7:0] <= videooutsoc_csrbank3_dfii_pi0_wrdata0_r;
	end
	videooutsoc_sdram_phaseinjector0_wrdata_re <= videooutsoc_csrbank3_dfii_pi0_wrdata0_re;
	if (videooutsoc_csrbank3_dfii_pi1_command0_re) begin
		videooutsoc_sdram_phaseinjector1_command_storage_full[5:0] <= videooutsoc_csrbank3_dfii_pi1_command0_r;
	end
	videooutsoc_sdram_phaseinjector1_command_re <= videooutsoc_csrbank3_dfii_pi1_command0_re;
	if (videooutsoc_csrbank3_dfii_pi1_address1_re) begin
		videooutsoc_sdram_phaseinjector1_address_storage_full[13:8] <= videooutsoc_csrbank3_dfii_pi1_address1_r;
	end
	if (videooutsoc_csrbank3_dfii_pi1_address0_re) begin
		videooutsoc_sdram_phaseinjector1_address_storage_full[7:0] <= videooutsoc_csrbank3_dfii_pi1_address0_r;
	end
	videooutsoc_sdram_phaseinjector1_address_re <= videooutsoc_csrbank3_dfii_pi1_address0_re;
	if (videooutsoc_csrbank3_dfii_pi1_baddress0_re) begin
		videooutsoc_sdram_phaseinjector1_baddress_storage_full[2:0] <= videooutsoc_csrbank3_dfii_pi1_baddress0_r;
	end
	videooutsoc_sdram_phaseinjector1_baddress_re <= videooutsoc_csrbank3_dfii_pi1_baddress0_re;
	if (videooutsoc_csrbank3_dfii_pi1_wrdata7_re) begin
		videooutsoc_sdram_phaseinjector1_wrdata_storage_full[63:56] <= videooutsoc_csrbank3_dfii_pi1_wrdata7_r;
	end
	if (videooutsoc_csrbank3_dfii_pi1_wrdata6_re) begin
		videooutsoc_sdram_phaseinjector1_wrdata_storage_full[55:48] <= videooutsoc_csrbank3_dfii_pi1_wrdata6_r;
	end
	if (videooutsoc_csrbank3_dfii_pi1_wrdata5_re) begin
		videooutsoc_sdram_phaseinjector1_wrdata_storage_full[47:40] <= videooutsoc_csrbank3_dfii_pi1_wrdata5_r;
	end
	if (videooutsoc_csrbank3_dfii_pi1_wrdata4_re) begin
		videooutsoc_sdram_phaseinjector1_wrdata_storage_full[39:32] <= videooutsoc_csrbank3_dfii_pi1_wrdata4_r;
	end
	if (videooutsoc_csrbank3_dfii_pi1_wrdata3_re) begin
		videooutsoc_sdram_phaseinjector1_wrdata_storage_full[31:24] <= videooutsoc_csrbank3_dfii_pi1_wrdata3_r;
	end
	if (videooutsoc_csrbank3_dfii_pi1_wrdata2_re) begin
		videooutsoc_sdram_phaseinjector1_wrdata_storage_full[23:16] <= videooutsoc_csrbank3_dfii_pi1_wrdata2_r;
	end
	if (videooutsoc_csrbank3_dfii_pi1_wrdata1_re) begin
		videooutsoc_sdram_phaseinjector1_wrdata_storage_full[15:8] <= videooutsoc_csrbank3_dfii_pi1_wrdata1_r;
	end
	if (videooutsoc_csrbank3_dfii_pi1_wrdata0_re) begin
		videooutsoc_sdram_phaseinjector1_wrdata_storage_full[7:0] <= videooutsoc_csrbank3_dfii_pi1_wrdata0_r;
	end
	videooutsoc_sdram_phaseinjector1_wrdata_re <= videooutsoc_csrbank3_dfii_pi1_wrdata0_re;
	if (videooutsoc_csrbank3_dfii_pi2_command0_re) begin
		videooutsoc_sdram_phaseinjector2_command_storage_full[5:0] <= videooutsoc_csrbank3_dfii_pi2_command0_r;
	end
	videooutsoc_sdram_phaseinjector2_command_re <= videooutsoc_csrbank3_dfii_pi2_command0_re;
	if (videooutsoc_csrbank3_dfii_pi2_address1_re) begin
		videooutsoc_sdram_phaseinjector2_address_storage_full[13:8] <= videooutsoc_csrbank3_dfii_pi2_address1_r;
	end
	if (videooutsoc_csrbank3_dfii_pi2_address0_re) begin
		videooutsoc_sdram_phaseinjector2_address_storage_full[7:0] <= videooutsoc_csrbank3_dfii_pi2_address0_r;
	end
	videooutsoc_sdram_phaseinjector2_address_re <= videooutsoc_csrbank3_dfii_pi2_address0_re;
	if (videooutsoc_csrbank3_dfii_pi2_baddress0_re) begin
		videooutsoc_sdram_phaseinjector2_baddress_storage_full[2:0] <= videooutsoc_csrbank3_dfii_pi2_baddress0_r;
	end
	videooutsoc_sdram_phaseinjector2_baddress_re <= videooutsoc_csrbank3_dfii_pi2_baddress0_re;
	if (videooutsoc_csrbank3_dfii_pi2_wrdata7_re) begin
		videooutsoc_sdram_phaseinjector2_wrdata_storage_full[63:56] <= videooutsoc_csrbank3_dfii_pi2_wrdata7_r;
	end
	if (videooutsoc_csrbank3_dfii_pi2_wrdata6_re) begin
		videooutsoc_sdram_phaseinjector2_wrdata_storage_full[55:48] <= videooutsoc_csrbank3_dfii_pi2_wrdata6_r;
	end
	if (videooutsoc_csrbank3_dfii_pi2_wrdata5_re) begin
		videooutsoc_sdram_phaseinjector2_wrdata_storage_full[47:40] <= videooutsoc_csrbank3_dfii_pi2_wrdata5_r;
	end
	if (videooutsoc_csrbank3_dfii_pi2_wrdata4_re) begin
		videooutsoc_sdram_phaseinjector2_wrdata_storage_full[39:32] <= videooutsoc_csrbank3_dfii_pi2_wrdata4_r;
	end
	if (videooutsoc_csrbank3_dfii_pi2_wrdata3_re) begin
		videooutsoc_sdram_phaseinjector2_wrdata_storage_full[31:24] <= videooutsoc_csrbank3_dfii_pi2_wrdata3_r;
	end
	if (videooutsoc_csrbank3_dfii_pi2_wrdata2_re) begin
		videooutsoc_sdram_phaseinjector2_wrdata_storage_full[23:16] <= videooutsoc_csrbank3_dfii_pi2_wrdata2_r;
	end
	if (videooutsoc_csrbank3_dfii_pi2_wrdata1_re) begin
		videooutsoc_sdram_phaseinjector2_wrdata_storage_full[15:8] <= videooutsoc_csrbank3_dfii_pi2_wrdata1_r;
	end
	if (videooutsoc_csrbank3_dfii_pi2_wrdata0_re) begin
		videooutsoc_sdram_phaseinjector2_wrdata_storage_full[7:0] <= videooutsoc_csrbank3_dfii_pi2_wrdata0_r;
	end
	videooutsoc_sdram_phaseinjector2_wrdata_re <= videooutsoc_csrbank3_dfii_pi2_wrdata0_re;
	if (videooutsoc_csrbank3_dfii_pi3_command0_re) begin
		videooutsoc_sdram_phaseinjector3_command_storage_full[5:0] <= videooutsoc_csrbank3_dfii_pi3_command0_r;
	end
	videooutsoc_sdram_phaseinjector3_command_re <= videooutsoc_csrbank3_dfii_pi3_command0_re;
	if (videooutsoc_csrbank3_dfii_pi3_address1_re) begin
		videooutsoc_sdram_phaseinjector3_address_storage_full[13:8] <= videooutsoc_csrbank3_dfii_pi3_address1_r;
	end
	if (videooutsoc_csrbank3_dfii_pi3_address0_re) begin
		videooutsoc_sdram_phaseinjector3_address_storage_full[7:0] <= videooutsoc_csrbank3_dfii_pi3_address0_r;
	end
	videooutsoc_sdram_phaseinjector3_address_re <= videooutsoc_csrbank3_dfii_pi3_address0_re;
	if (videooutsoc_csrbank3_dfii_pi3_baddress0_re) begin
		videooutsoc_sdram_phaseinjector3_baddress_storage_full[2:0] <= videooutsoc_csrbank3_dfii_pi3_baddress0_r;
	end
	videooutsoc_sdram_phaseinjector3_baddress_re <= videooutsoc_csrbank3_dfii_pi3_baddress0_re;
	if (videooutsoc_csrbank3_dfii_pi3_wrdata7_re) begin
		videooutsoc_sdram_phaseinjector3_wrdata_storage_full[63:56] <= videooutsoc_csrbank3_dfii_pi3_wrdata7_r;
	end
	if (videooutsoc_csrbank3_dfii_pi3_wrdata6_re) begin
		videooutsoc_sdram_phaseinjector3_wrdata_storage_full[55:48] <= videooutsoc_csrbank3_dfii_pi3_wrdata6_r;
	end
	if (videooutsoc_csrbank3_dfii_pi3_wrdata5_re) begin
		videooutsoc_sdram_phaseinjector3_wrdata_storage_full[47:40] <= videooutsoc_csrbank3_dfii_pi3_wrdata5_r;
	end
	if (videooutsoc_csrbank3_dfii_pi3_wrdata4_re) begin
		videooutsoc_sdram_phaseinjector3_wrdata_storage_full[39:32] <= videooutsoc_csrbank3_dfii_pi3_wrdata4_r;
	end
	if (videooutsoc_csrbank3_dfii_pi3_wrdata3_re) begin
		videooutsoc_sdram_phaseinjector3_wrdata_storage_full[31:24] <= videooutsoc_csrbank3_dfii_pi3_wrdata3_r;
	end
	if (videooutsoc_csrbank3_dfii_pi3_wrdata2_re) begin
		videooutsoc_sdram_phaseinjector3_wrdata_storage_full[23:16] <= videooutsoc_csrbank3_dfii_pi3_wrdata2_r;
	end
	if (videooutsoc_csrbank3_dfii_pi3_wrdata1_re) begin
		videooutsoc_sdram_phaseinjector3_wrdata_storage_full[15:8] <= videooutsoc_csrbank3_dfii_pi3_wrdata1_r;
	end
	if (videooutsoc_csrbank3_dfii_pi3_wrdata0_re) begin
		videooutsoc_sdram_phaseinjector3_wrdata_storage_full[7:0] <= videooutsoc_csrbank3_dfii_pi3_wrdata0_r;
	end
	videooutsoc_sdram_phaseinjector3_wrdata_re <= videooutsoc_csrbank3_dfii_pi3_wrdata0_re;
	videooutsoc_interface4_bank_bus_dat_r <= 1'd0;
	if (videooutsoc_csrbank4_sel) begin
		case (videooutsoc_interface4_bank_bus_adr[4:0])
			1'd0: begin
				videooutsoc_interface4_bank_bus_dat_r <= videooutsoc_csrbank4_load3_w;
			end
			1'd1: begin
				videooutsoc_interface4_bank_bus_dat_r <= videooutsoc_csrbank4_load2_w;
			end
			2'd2: begin
				videooutsoc_interface4_bank_bus_dat_r <= videooutsoc_csrbank4_load1_w;
			end
			2'd3: begin
				videooutsoc_interface4_bank_bus_dat_r <= videooutsoc_csrbank4_load0_w;
			end
			3'd4: begin
				videooutsoc_interface4_bank_bus_dat_r <= videooutsoc_csrbank4_reload3_w;
			end
			3'd5: begin
				videooutsoc_interface4_bank_bus_dat_r <= videooutsoc_csrbank4_reload2_w;
			end
			3'd6: begin
				videooutsoc_interface4_bank_bus_dat_r <= videooutsoc_csrbank4_reload1_w;
			end
			3'd7: begin
				videooutsoc_interface4_bank_bus_dat_r <= videooutsoc_csrbank4_reload0_w;
			end
			4'd8: begin
				videooutsoc_interface4_bank_bus_dat_r <= videooutsoc_csrbank4_en0_w;
			end
			4'd9: begin
				videooutsoc_interface4_bank_bus_dat_r <= videooutsoc_videooutsoc_timer0_update_value_w;
			end
			4'd10: begin
				videooutsoc_interface4_bank_bus_dat_r <= videooutsoc_csrbank4_value3_w;
			end
			4'd11: begin
				videooutsoc_interface4_bank_bus_dat_r <= videooutsoc_csrbank4_value2_w;
			end
			4'd12: begin
				videooutsoc_interface4_bank_bus_dat_r <= videooutsoc_csrbank4_value1_w;
			end
			4'd13: begin
				videooutsoc_interface4_bank_bus_dat_r <= videooutsoc_csrbank4_value0_w;
			end
			4'd14: begin
				videooutsoc_interface4_bank_bus_dat_r <= videooutsoc_videooutsoc_timer0_eventmanager_status_w;
			end
			4'd15: begin
				videooutsoc_interface4_bank_bus_dat_r <= videooutsoc_videooutsoc_timer0_eventmanager_pending_w;
			end
			5'd16: begin
				videooutsoc_interface4_bank_bus_dat_r <= videooutsoc_csrbank4_ev_enable0_w;
			end
		endcase
	end
	if (videooutsoc_csrbank4_load3_re) begin
		videooutsoc_videooutsoc_timer0_load_storage_full[31:24] <= videooutsoc_csrbank4_load3_r;
	end
	if (videooutsoc_csrbank4_load2_re) begin
		videooutsoc_videooutsoc_timer0_load_storage_full[23:16] <= videooutsoc_csrbank4_load2_r;
	end
	if (videooutsoc_csrbank4_load1_re) begin
		videooutsoc_videooutsoc_timer0_load_storage_full[15:8] <= videooutsoc_csrbank4_load1_r;
	end
	if (videooutsoc_csrbank4_load0_re) begin
		videooutsoc_videooutsoc_timer0_load_storage_full[7:0] <= videooutsoc_csrbank4_load0_r;
	end
	videooutsoc_videooutsoc_timer0_load_re <= videooutsoc_csrbank4_load0_re;
	if (videooutsoc_csrbank4_reload3_re) begin
		videooutsoc_videooutsoc_timer0_reload_storage_full[31:24] <= videooutsoc_csrbank4_reload3_r;
	end
	if (videooutsoc_csrbank4_reload2_re) begin
		videooutsoc_videooutsoc_timer0_reload_storage_full[23:16] <= videooutsoc_csrbank4_reload2_r;
	end
	if (videooutsoc_csrbank4_reload1_re) begin
		videooutsoc_videooutsoc_timer0_reload_storage_full[15:8] <= videooutsoc_csrbank4_reload1_r;
	end
	if (videooutsoc_csrbank4_reload0_re) begin
		videooutsoc_videooutsoc_timer0_reload_storage_full[7:0] <= videooutsoc_csrbank4_reload0_r;
	end
	videooutsoc_videooutsoc_timer0_reload_re <= videooutsoc_csrbank4_reload0_re;
	if (videooutsoc_csrbank4_en0_re) begin
		videooutsoc_videooutsoc_timer0_en_storage_full <= videooutsoc_csrbank4_en0_r;
	end
	videooutsoc_videooutsoc_timer0_en_re <= videooutsoc_csrbank4_en0_re;
	if (videooutsoc_csrbank4_ev_enable0_re) begin
		videooutsoc_videooutsoc_timer0_eventmanager_storage_full <= videooutsoc_csrbank4_ev_enable0_r;
	end
	videooutsoc_videooutsoc_timer0_eventmanager_re <= videooutsoc_csrbank4_ev_enable0_re;
	videooutsoc_interface5_bank_bus_dat_r <= 1'd0;
	if (videooutsoc_csrbank5_sel) begin
		case (videooutsoc_interface5_bank_bus_adr[2:0])
			1'd0: begin
				videooutsoc_interface5_bank_bus_dat_r <= videooutsoc_videooutsoc_uart_rxtx_w;
			end
			1'd1: begin
				videooutsoc_interface5_bank_bus_dat_r <= videooutsoc_csrbank5_txfull_w;
			end
			2'd2: begin
				videooutsoc_interface5_bank_bus_dat_r <= videooutsoc_csrbank5_rxempty_w;
			end
			2'd3: begin
				videooutsoc_interface5_bank_bus_dat_r <= videooutsoc_videooutsoc_uart_status_w;
			end
			3'd4: begin
				videooutsoc_interface5_bank_bus_dat_r <= videooutsoc_videooutsoc_uart_pending_w;
			end
			3'd5: begin
				videooutsoc_interface5_bank_bus_dat_r <= videooutsoc_csrbank5_ev_enable0_w;
			end
		endcase
	end
	if (videooutsoc_csrbank5_ev_enable0_re) begin
		videooutsoc_videooutsoc_uart_storage_full[1:0] <= videooutsoc_csrbank5_ev_enable0_r;
	end
	videooutsoc_videooutsoc_uart_re <= videooutsoc_csrbank5_ev_enable0_re;
	videooutsoc_interface6_bank_bus_dat_r <= 1'd0;
	if (videooutsoc_csrbank6_sel) begin
		case (videooutsoc_interface6_bank_bus_adr[1:0])
			1'd0: begin
				videooutsoc_interface6_bank_bus_dat_r <= videooutsoc_csrbank6_tuning_word3_w;
			end
			1'd1: begin
				videooutsoc_interface6_bank_bus_dat_r <= videooutsoc_csrbank6_tuning_word2_w;
			end
			2'd2: begin
				videooutsoc_interface6_bank_bus_dat_r <= videooutsoc_csrbank6_tuning_word1_w;
			end
			2'd3: begin
				videooutsoc_interface6_bank_bus_dat_r <= videooutsoc_csrbank6_tuning_word0_w;
			end
		endcase
	end
	if (videooutsoc_csrbank6_tuning_word3_re) begin
		videooutsoc_videooutsoc_uart_phy_storage_full[31:24] <= videooutsoc_csrbank6_tuning_word3_r;
	end
	if (videooutsoc_csrbank6_tuning_word2_re) begin
		videooutsoc_videooutsoc_uart_phy_storage_full[23:16] <= videooutsoc_csrbank6_tuning_word2_r;
	end
	if (videooutsoc_csrbank6_tuning_word1_re) begin
		videooutsoc_videooutsoc_uart_phy_storage_full[15:8] <= videooutsoc_csrbank6_tuning_word1_r;
	end
	if (videooutsoc_csrbank6_tuning_word0_re) begin
		videooutsoc_videooutsoc_uart_phy_storage_full[7:0] <= videooutsoc_csrbank6_tuning_word0_r;
	end
	videooutsoc_videooutsoc_uart_phy_re <= videooutsoc_csrbank6_tuning_word0_re;
	if (sys_rst) begin
		videooutsoc_videooutsoc_rom_bus_ack <= 1'd0;
		videooutsoc_videooutsoc_sram_bus_ack <= 1'd0;
		videooutsoc_videooutsoc_interface_adr <= 14'd0;
		videooutsoc_videooutsoc_interface_we <= 1'd0;
		videooutsoc_videooutsoc_interface_dat_w <= 8'd0;
		videooutsoc_videooutsoc_bus_wishbone_dat_r <= 32'd0;
		videooutsoc_videooutsoc_bus_wishbone_ack <= 1'd0;
		videooutsoc_videooutsoc_counter <= 2'd0;
		serial_tx <= 1'd1;
		videooutsoc_videooutsoc_uart_phy_storage_full <= 32'd4947802;
		videooutsoc_videooutsoc_uart_phy_re <= 1'd0;
		videooutsoc_videooutsoc_uart_phy_sink_ready <= 1'd0;
		videooutsoc_videooutsoc_uart_phy_uart_clk_txen <= 1'd0;
		videooutsoc_videooutsoc_uart_phy_phase_accumulator_tx <= 32'd0;
		videooutsoc_videooutsoc_uart_phy_tx_reg <= 8'd0;
		videooutsoc_videooutsoc_uart_phy_tx_bitcount <= 4'd0;
		videooutsoc_videooutsoc_uart_phy_tx_busy <= 1'd0;
		videooutsoc_videooutsoc_uart_phy_source_valid <= 1'd0;
		videooutsoc_videooutsoc_uart_phy_uart_clk_rxen <= 1'd0;
		videooutsoc_videooutsoc_uart_phy_phase_accumulator_rx <= 32'd0;
		videooutsoc_videooutsoc_uart_phy_rx_r <= 1'd0;
		videooutsoc_videooutsoc_uart_phy_rx_reg <= 8'd0;
		videooutsoc_videooutsoc_uart_phy_rx_bitcount <= 4'd0;
		videooutsoc_videooutsoc_uart_phy_rx_busy <= 1'd0;
		videooutsoc_videooutsoc_uart_tx_pending <= 1'd0;
		videooutsoc_videooutsoc_uart_tx_old_trigger <= 1'd0;
		videooutsoc_videooutsoc_uart_rx_pending <= 1'd0;
		videooutsoc_videooutsoc_uart_rx_old_trigger <= 1'd0;
		videooutsoc_videooutsoc_uart_storage_full <= 2'd0;
		videooutsoc_videooutsoc_uart_re <= 1'd0;
		videooutsoc_videooutsoc_uart_tx_fifo_level <= 5'd0;
		videooutsoc_videooutsoc_uart_tx_fifo_produce <= 4'd0;
		videooutsoc_videooutsoc_uart_tx_fifo_consume <= 4'd0;
		videooutsoc_videooutsoc_uart_rx_fifo_level <= 5'd0;
		videooutsoc_videooutsoc_uart_rx_fifo_produce <= 4'd0;
		videooutsoc_videooutsoc_uart_rx_fifo_consume <= 4'd0;
		videooutsoc_videooutsoc_timer0_load_storage_full <= 32'd0;
		videooutsoc_videooutsoc_timer0_load_re <= 1'd0;
		videooutsoc_videooutsoc_timer0_reload_storage_full <= 32'd0;
		videooutsoc_videooutsoc_timer0_reload_re <= 1'd0;
		videooutsoc_videooutsoc_timer0_en_storage_full <= 1'd0;
		videooutsoc_videooutsoc_timer0_en_re <= 1'd0;
		videooutsoc_videooutsoc_timer0_value_status <= 32'd0;
		videooutsoc_videooutsoc_timer0_zero_pending <= 1'd0;
		videooutsoc_videooutsoc_timer0_zero_old_trigger <= 1'd0;
		videooutsoc_videooutsoc_timer0_eventmanager_storage_full <= 1'd0;
		videooutsoc_videooutsoc_timer0_eventmanager_re <= 1'd0;
		videooutsoc_videooutsoc_timer0_value <= 32'd0;
		videooutsoc_dna_status <= 57'd0;
		videooutsoc_dna_cnt <= 7'd0;
		videooutsoc_temperature_status <= 12'd0;
		videooutsoc_vccint_status <= 12'd0;
		videooutsoc_vccaux_status <= 12'd0;
		videooutsoc_vccbram_status <= 12'd0;
		videooutsoc_storage_full <= 4'd0;
		videooutsoc_re <= 1'd0;
		videooutsoc_dfi_p0_rddata_valid <= 1'd0;
		videooutsoc_dfi_p1_rddata_valid <= 1'd0;
		videooutsoc_dfi_p2_rddata_valid <= 1'd0;
		videooutsoc_dfi_p3_rddata_valid <= 1'd0;
		videooutsoc_oe_dqs <= 1'd0;
		videooutsoc_oe_dq <= 1'd0;
		videooutsoc_n_rddata_en0 <= 1'd0;
		videooutsoc_n_rddata_en1 <= 1'd0;
		videooutsoc_n_rddata_en2 <= 1'd0;
		videooutsoc_n_rddata_en3 <= 1'd0;
		videooutsoc_n_rddata_en4 <= 1'd0;
		videooutsoc_last_wrdata_en <= 4'd0;
		videooutsoc_sdram_storage_full <= 4'd0;
		videooutsoc_sdram_re <= 1'd0;
		videooutsoc_sdram_phaseinjector0_command_storage_full <= 6'd0;
		videooutsoc_sdram_phaseinjector0_command_re <= 1'd0;
		videooutsoc_sdram_phaseinjector0_address_storage_full <= 14'd0;
		videooutsoc_sdram_phaseinjector0_address_re <= 1'd0;
		videooutsoc_sdram_phaseinjector0_baddress_storage_full <= 3'd0;
		videooutsoc_sdram_phaseinjector0_baddress_re <= 1'd0;
		videooutsoc_sdram_phaseinjector0_wrdata_storage_full <= 64'd0;
		videooutsoc_sdram_phaseinjector0_wrdata_re <= 1'd0;
		videooutsoc_sdram_phaseinjector0_status <= 64'd0;
		videooutsoc_sdram_phaseinjector1_command_storage_full <= 6'd0;
		videooutsoc_sdram_phaseinjector1_command_re <= 1'd0;
		videooutsoc_sdram_phaseinjector1_address_storage_full <= 14'd0;
		videooutsoc_sdram_phaseinjector1_address_re <= 1'd0;
		videooutsoc_sdram_phaseinjector1_baddress_storage_full <= 3'd0;
		videooutsoc_sdram_phaseinjector1_baddress_re <= 1'd0;
		videooutsoc_sdram_phaseinjector1_wrdata_storage_full <= 64'd0;
		videooutsoc_sdram_phaseinjector1_wrdata_re <= 1'd0;
		videooutsoc_sdram_phaseinjector1_status <= 64'd0;
		videooutsoc_sdram_phaseinjector2_command_storage_full <= 6'd0;
		videooutsoc_sdram_phaseinjector2_command_re <= 1'd0;
		videooutsoc_sdram_phaseinjector2_address_storage_full <= 14'd0;
		videooutsoc_sdram_phaseinjector2_address_re <= 1'd0;
		videooutsoc_sdram_phaseinjector2_baddress_storage_full <= 3'd0;
		videooutsoc_sdram_phaseinjector2_baddress_re <= 1'd0;
		videooutsoc_sdram_phaseinjector2_wrdata_storage_full <= 64'd0;
		videooutsoc_sdram_phaseinjector2_wrdata_re <= 1'd0;
		videooutsoc_sdram_phaseinjector2_status <= 64'd0;
		videooutsoc_sdram_phaseinjector3_command_storage_full <= 6'd0;
		videooutsoc_sdram_phaseinjector3_command_re <= 1'd0;
		videooutsoc_sdram_phaseinjector3_address_storage_full <= 14'd0;
		videooutsoc_sdram_phaseinjector3_address_re <= 1'd0;
		videooutsoc_sdram_phaseinjector3_baddress_storage_full <= 3'd0;
		videooutsoc_sdram_phaseinjector3_baddress_re <= 1'd0;
		videooutsoc_sdram_phaseinjector3_wrdata_storage_full <= 64'd0;
		videooutsoc_sdram_phaseinjector3_wrdata_re <= 1'd0;
		videooutsoc_sdram_phaseinjector3_status <= 64'd0;
		videooutsoc_sdram_dfi_p0_cas_n <= 1'd1;
		videooutsoc_sdram_dfi_p0_ras_n <= 1'd1;
		videooutsoc_sdram_dfi_p0_we_n <= 1'd1;
		videooutsoc_sdram_dfi_p0_wrdata_en <= 1'd0;
		videooutsoc_sdram_dfi_p0_rddata_en <= 1'd0;
		videooutsoc_sdram_dfi_p1_cas_n <= 1'd1;
		videooutsoc_sdram_dfi_p1_ras_n <= 1'd1;
		videooutsoc_sdram_dfi_p1_we_n <= 1'd1;
		videooutsoc_sdram_dfi_p1_wrdata_en <= 1'd0;
		videooutsoc_sdram_dfi_p1_rddata_en <= 1'd0;
		videooutsoc_sdram_dfi_p2_cas_n <= 1'd1;
		videooutsoc_sdram_dfi_p2_ras_n <= 1'd1;
		videooutsoc_sdram_dfi_p2_we_n <= 1'd1;
		videooutsoc_sdram_dfi_p2_wrdata_en <= 1'd0;
		videooutsoc_sdram_dfi_p2_rddata_en <= 1'd0;
		videooutsoc_sdram_dfi_p3_cas_n <= 1'd1;
		videooutsoc_sdram_dfi_p3_ras_n <= 1'd1;
		videooutsoc_sdram_dfi_p3_we_n <= 1'd1;
		videooutsoc_sdram_dfi_p3_wrdata_en <= 1'd0;
		videooutsoc_sdram_dfi_p3_rddata_en <= 1'd0;
		videooutsoc_sdram_seq_done <= 1'd0;
		videooutsoc_sdram_counter <= 5'd0;
		videooutsoc_sdram_count <= 9'd391;
		videooutsoc_sdram_bankmachine0_level <= 4'd0;
		videooutsoc_sdram_bankmachine0_produce <= 3'd0;
		videooutsoc_sdram_bankmachine0_consume <= 3'd0;
		videooutsoc_sdram_bankmachine0_has_openrow <= 1'd0;
		videooutsoc_sdram_bankmachine0_count <= 3'd5;
		videooutsoc_sdram_bankmachine1_level <= 4'd0;
		videooutsoc_sdram_bankmachine1_produce <= 3'd0;
		videooutsoc_sdram_bankmachine1_consume <= 3'd0;
		videooutsoc_sdram_bankmachine1_has_openrow <= 1'd0;
		videooutsoc_sdram_bankmachine1_count <= 3'd5;
		videooutsoc_sdram_bankmachine2_level <= 4'd0;
		videooutsoc_sdram_bankmachine2_produce <= 3'd0;
		videooutsoc_sdram_bankmachine2_consume <= 3'd0;
		videooutsoc_sdram_bankmachine2_has_openrow <= 1'd0;
		videooutsoc_sdram_bankmachine2_count <= 3'd5;
		videooutsoc_sdram_bankmachine3_level <= 4'd0;
		videooutsoc_sdram_bankmachine3_produce <= 3'd0;
		videooutsoc_sdram_bankmachine3_consume <= 3'd0;
		videooutsoc_sdram_bankmachine3_has_openrow <= 1'd0;
		videooutsoc_sdram_bankmachine3_count <= 3'd5;
		videooutsoc_sdram_bankmachine4_level <= 4'd0;
		videooutsoc_sdram_bankmachine4_produce <= 3'd0;
		videooutsoc_sdram_bankmachine4_consume <= 3'd0;
		videooutsoc_sdram_bankmachine4_has_openrow <= 1'd0;
		videooutsoc_sdram_bankmachine4_count <= 3'd5;
		videooutsoc_sdram_bankmachine5_level <= 4'd0;
		videooutsoc_sdram_bankmachine5_produce <= 3'd0;
		videooutsoc_sdram_bankmachine5_consume <= 3'd0;
		videooutsoc_sdram_bankmachine5_has_openrow <= 1'd0;
		videooutsoc_sdram_bankmachine5_count <= 3'd5;
		videooutsoc_sdram_bankmachine6_level <= 4'd0;
		videooutsoc_sdram_bankmachine6_produce <= 3'd0;
		videooutsoc_sdram_bankmachine6_consume <= 3'd0;
		videooutsoc_sdram_bankmachine6_has_openrow <= 1'd0;
		videooutsoc_sdram_bankmachine6_count <= 3'd5;
		videooutsoc_sdram_bankmachine7_level <= 4'd0;
		videooutsoc_sdram_bankmachine7_produce <= 3'd0;
		videooutsoc_sdram_bankmachine7_consume <= 3'd0;
		videooutsoc_sdram_bankmachine7_has_openrow <= 1'd0;
		videooutsoc_sdram_bankmachine7_count <= 3'd5;
		videooutsoc_sdram_choose_cmd_grant <= 3'd0;
		videooutsoc_sdram_choose_req_grant <= 3'd0;
		videooutsoc_sdram_time0 <= 5'd0;
		videooutsoc_sdram_time1 <= 4'd0;
		videooutsoc_sdram_bandwidth_nreads_status <= 24'd0;
		videooutsoc_sdram_bandwidth_nwrites_status <= 24'd0;
		videooutsoc_sdram_bandwidth_cmd_valid <= 1'd0;
		videooutsoc_sdram_bandwidth_cmd_ready <= 1'd0;
		videooutsoc_sdram_bandwidth_cmd_is_read <= 1'd0;
		videooutsoc_sdram_bandwidth_cmd_is_write <= 1'd0;
		videooutsoc_sdram_bandwidth_counter <= 24'd0;
		videooutsoc_sdram_bandwidth_period <= 1'd0;
		videooutsoc_sdram_bandwidth_nreads <= 24'd0;
		videooutsoc_sdram_bandwidth_nwrites <= 24'd0;
		videooutsoc_sdram_bandwidth_nreads_r <= 24'd0;
		videooutsoc_sdram_bandwidth_nwrites_r <= 24'd0;
		videooutsoc_adr_offset_r <= 3'd0;
		videooutsoc_sys_counter <= 32'd0;
		cmd_fifo_graycounter1_q <= 3'd0;
		cmd_fifo_graycounter1_q_binary <= 3'd0;
		rdata_fifo_graycounter0_q <= 5'd0;
		rdata_fifo_graycounter0_q_binary <= 5'd0;
		hdmi_out0_core_underflow_enable_storage_full <= 1'd0;
		hdmi_out0_core_underflow_enable_re <= 1'd0;
		hdmi_out0_core_initiator_cdc_graycounter0_q <= 2'd0;
		hdmi_out0_core_initiator_cdc_graycounter0_q_binary <= 2'd0;
		hdmi_out0_core_initiator_enable_storage_full <= 1'd0;
		hdmi_out0_core_initiator_enable_re <= 1'd0;
		hdmi_out0_core_initiator_csrstorage0_storage_full <= 12'd0;
		hdmi_out0_core_initiator_csrstorage0_re <= 1'd0;
		hdmi_out0_core_initiator_csrstorage1_storage_full <= 12'd0;
		hdmi_out0_core_initiator_csrstorage1_re <= 1'd0;
		hdmi_out0_core_initiator_csrstorage2_storage_full <= 12'd0;
		hdmi_out0_core_initiator_csrstorage2_re <= 1'd0;
		hdmi_out0_core_initiator_csrstorage3_storage_full <= 12'd0;
		hdmi_out0_core_initiator_csrstorage3_re <= 1'd0;
		hdmi_out0_core_initiator_csrstorage4_storage_full <= 12'd0;
		hdmi_out0_core_initiator_csrstorage4_re <= 1'd0;
		hdmi_out0_core_initiator_csrstorage5_storage_full <= 12'd0;
		hdmi_out0_core_initiator_csrstorage5_re <= 1'd0;
		hdmi_out0_core_initiator_csrstorage6_storage_full <= 12'd0;
		hdmi_out0_core_initiator_csrstorage6_re <= 1'd0;
		hdmi_out0_core_initiator_csrstorage7_storage_full <= 12'd0;
		hdmi_out0_core_initiator_csrstorage7_re <= 1'd0;
		hdmi_out0_core_initiator_csrstorage8_storage_full <= 32'd0;
		hdmi_out0_core_initiator_csrstorage8_re <= 1'd0;
		hdmi_out0_core_initiator_csrstorage9_storage_full <= 32'd0;
		hdmi_out0_core_initiator_csrstorage9_re <= 1'd0;
		hdmi_out0_driver_s7hdmioutclocking_mmcm_reset_storage_full <= 1'd0;
		hdmi_out0_driver_s7hdmioutclocking_mmcm_reset_re <= 1'd0;
		hdmi_out0_driver_s7hdmioutclocking_mmcm_drdy_status <= 1'd0;
		hdmi_out0_driver_s7hdmioutclocking_mmcm_adr_storage_full <= 7'd0;
		hdmi_out0_driver_s7hdmioutclocking_mmcm_adr_re <= 1'd0;
		hdmi_out0_driver_s7hdmioutclocking_mmcm_dat_w_storage_full <= 16'd0;
		hdmi_out0_driver_s7hdmioutclocking_mmcm_dat_w_re <= 1'd0;
		refresher_state <= 2'd0;
		bankmachine0_state <= 3'd0;
		bankmachine1_state <= 3'd0;
		bankmachine2_state <= 3'd0;
		bankmachine3_state <= 3'd0;
		bankmachine4_state <= 3'd0;
		bankmachine5_state <= 3'd0;
		bankmachine6_state <= 3'd0;
		bankmachine7_state <= 3'd0;
		multiplexer_state <= 4'd0;
		roundrobin0_grant <= 1'd0;
		roundrobin1_grant <= 1'd0;
		roundrobin2_grant <= 1'd0;
		roundrobin3_grant <= 1'd0;
		roundrobin4_grant <= 1'd0;
		roundrobin5_grant <= 1'd0;
		roundrobin6_grant <= 1'd0;
		roundrobin7_grant <= 1'd0;
		new_master_wdata_ready0 <= 1'd0;
		new_master_wdata_ready1 <= 1'd0;
		new_master_wdata_ready2 <= 1'd0;
		new_master_wdata_ready3 <= 1'd0;
		new_master_wdata_ready4 <= 1'd0;
		new_master_wdata_ready5 <= 1'd0;
		new_master_rdata_valid0 <= 1'd0;
		new_master_rdata_valid1 <= 1'd0;
		new_master_rdata_valid2 <= 1'd0;
		new_master_rdata_valid3 <= 1'd0;
		new_master_rdata_valid4 <= 1'd0;
		new_master_rdata_valid5 <= 1'd0;
		new_master_rdata_valid6 <= 1'd0;
		new_master_rdata_valid7 <= 1'd0;
		new_master_rdata_valid8 <= 1'd0;
		new_master_rdata_valid9 <= 1'd0;
		new_master_rdata_valid10 <= 1'd0;
		new_master_rdata_valid11 <= 1'd0;
		new_master_rdata_valid12 <= 1'd0;
		new_master_rdata_valid13 <= 1'd0;
		fullmemorywe_state <= 3'd0;
		litedramwishbonebridge_state <= 2'd0;
		videooutsoc_grant <= 1'd0;
		videooutsoc_slave_sel_r <= 4'd0;
		videooutsoc_interface0_bank_bus_dat_r <= 8'd0;
		videooutsoc_interface1_bank_bus_dat_r <= 8'd0;
		videooutsoc_csrbank1_core_initiator_hres_backstore <= 4'd0;
		videooutsoc_csrbank1_core_initiator_hsync_start_backstore <= 4'd0;
		videooutsoc_csrbank1_core_initiator_hsync_end_backstore <= 4'd0;
		videooutsoc_csrbank1_core_initiator_hscan_backstore <= 4'd0;
		videooutsoc_csrbank1_core_initiator_vres_backstore <= 4'd0;
		videooutsoc_csrbank1_core_initiator_vsync_start_backstore <= 4'd0;
		videooutsoc_csrbank1_core_initiator_vsync_end_backstore <= 4'd0;
		videooutsoc_csrbank1_core_initiator_vscan_backstore <= 4'd0;
		videooutsoc_csrbank1_core_initiator_base_backstore <= 24'd0;
		videooutsoc_csrbank1_core_initiator_length_backstore <= 24'd0;
		videooutsoc_sel_r <= 1'd0;
		videooutsoc_interface2_bank_bus_dat_r <= 8'd0;
		videooutsoc_interface3_bank_bus_dat_r <= 8'd0;
		videooutsoc_interface4_bank_bus_dat_r <= 8'd0;
		videooutsoc_interface5_bank_bus_dat_r <= 8'd0;
		videooutsoc_interface6_bank_bus_dat_r <= 8'd0;
	end
	xilinxmultiregimpl0_regs0 <= serial_rx;
	xilinxmultiregimpl0_regs1 <= xilinxmultiregimpl0_regs0;
	xilinxmultiregimpl1_regs0 <= cmd_fifo_graycounter0_q;
	xilinxmultiregimpl1_regs1 <= xilinxmultiregimpl1_regs0;
	xilinxmultiregimpl4_regs0 <= rdata_fifo_graycounter1_q;
	xilinxmultiregimpl4_regs1 <= xilinxmultiregimpl4_regs0;
	xilinxmultiregimpl6_regs0 <= hdmi_out0_core_initiator_cdc_graycounter1_q;
	xilinxmultiregimpl6_regs1 <= xilinxmultiregimpl6_regs0;
	xilinxmultiregimpl7_regs0 <= hdmi_out0_core_underflow_enable_storage;
	xilinxmultiregimpl7_regs1 <= xilinxmultiregimpl7_regs0;
end

lm32_cpu #(
	.eba_reset(32'h00000000)
) lm32_cpu (
	.D_ACK_I(videooutsoc_videooutsoc_dbus_ack),
	.D_DAT_I(videooutsoc_videooutsoc_dbus_dat_r),
	.D_ERR_I(videooutsoc_videooutsoc_dbus_err),
	.D_RTY_I(1'd0),
	.I_ACK_I(videooutsoc_videooutsoc_ibus_ack),
	.I_DAT_I(videooutsoc_videooutsoc_ibus_dat_r),
	.I_ERR_I(videooutsoc_videooutsoc_ibus_err),
	.I_RTY_I(1'd0),
	.clk_i(sys_clk),
	.interrupt(videooutsoc_videooutsoc_interrupt),
	.rst_i(sys_rst),
	.D_ADR_O(videooutsoc_videooutsoc_d_adr_o),
	.D_BTE_O(videooutsoc_videooutsoc_dbus_bte),
	.D_CTI_O(videooutsoc_videooutsoc_dbus_cti),
	.D_CYC_O(videooutsoc_videooutsoc_dbus_cyc),
	.D_DAT_O(videooutsoc_videooutsoc_dbus_dat_w),
	.D_SEL_O(videooutsoc_videooutsoc_dbus_sel),
	.D_STB_O(videooutsoc_videooutsoc_dbus_stb),
	.D_WE_O(videooutsoc_videooutsoc_dbus_we),
	.I_ADR_O(videooutsoc_videooutsoc_i_adr_o),
	.I_BTE_O(videooutsoc_videooutsoc_ibus_bte),
	.I_CTI_O(videooutsoc_videooutsoc_ibus_cti),
	.I_CYC_O(videooutsoc_videooutsoc_ibus_cyc),
	.I_DAT_O(videooutsoc_videooutsoc_ibus_dat_w),
	.I_SEL_O(videooutsoc_videooutsoc_ibus_sel),
	.I_STB_O(videooutsoc_videooutsoc_ibus_stb),
	.I_WE_O(videooutsoc_videooutsoc_ibus_we)
);

reg [31:0] mem[0:8191];
reg [31:0] memdat;
always @(posedge sys_clk) begin
	memdat <= mem[videooutsoc_videooutsoc_rom_adr];
end

assign videooutsoc_videooutsoc_rom_dat_r = memdat;

initial begin
	$readmemh("mem.init", mem);
end

reg [31:0] mem_1[0:8191];
reg [12:0] memadr;
always @(posedge sys_clk) begin
	if (videooutsoc_videooutsoc_sram_we[0])
		mem_1[videooutsoc_videooutsoc_sram_adr][7:0] <= videooutsoc_videooutsoc_sram_dat_w[7:0];
	if (videooutsoc_videooutsoc_sram_we[1])
		mem_1[videooutsoc_videooutsoc_sram_adr][15:8] <= videooutsoc_videooutsoc_sram_dat_w[15:8];
	if (videooutsoc_videooutsoc_sram_we[2])
		mem_1[videooutsoc_videooutsoc_sram_adr][23:16] <= videooutsoc_videooutsoc_sram_dat_w[23:16];
	if (videooutsoc_videooutsoc_sram_we[3])
		mem_1[videooutsoc_videooutsoc_sram_adr][31:24] <= videooutsoc_videooutsoc_sram_dat_w[31:24];
	memadr <= videooutsoc_videooutsoc_sram_adr;
end

assign videooutsoc_videooutsoc_sram_dat_r = mem_1[memadr];

reg [9:0] storage[0:15];
reg [3:0] memadr_1;
always @(posedge sys_clk) begin
	if (videooutsoc_videooutsoc_uart_tx_fifo_wrport_we)
		storage[videooutsoc_videooutsoc_uart_tx_fifo_wrport_adr] <= videooutsoc_videooutsoc_uart_tx_fifo_wrport_dat_w;
	memadr_1 <= videooutsoc_videooutsoc_uart_tx_fifo_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign videooutsoc_videooutsoc_uart_tx_fifo_wrport_dat_r = storage[memadr_1];
assign videooutsoc_videooutsoc_uart_tx_fifo_rdport_dat_r = storage[videooutsoc_videooutsoc_uart_tx_fifo_rdport_adr];

reg [9:0] storage_1[0:15];
reg [3:0] memadr_2;
always @(posedge sys_clk) begin
	if (videooutsoc_videooutsoc_uart_rx_fifo_wrport_we)
		storage_1[videooutsoc_videooutsoc_uart_rx_fifo_wrport_adr] <= videooutsoc_videooutsoc_uart_rx_fifo_wrport_dat_w;
	memadr_2 <= videooutsoc_videooutsoc_uart_rx_fifo_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign videooutsoc_videooutsoc_uart_rx_fifo_wrport_dat_r = storage_1[memadr_2];
assign videooutsoc_videooutsoc_uart_rx_fifo_rdport_dat_r = storage_1[videooutsoc_videooutsoc_uart_rx_fifo_rdport_adr];

reg [7:0] mem_2[0:20];
reg [7:0] memdat_1;
always @(posedge sys_clk) begin
	memdat_1 <= mem_2[videooutsoc_adr];
end

assign videooutsoc_dat_r = memdat_1;

initial begin
	$readmemh("mem_2.init", mem_2);
end

PLLE2_BASE #(
	.CLKFBOUT_MULT(6'd32),
	.CLKIN1_PERIOD(20.0),
	.CLKOUT0_DIVIDE(5'd16),
	.CLKOUT0_PHASE(0.0),
	.CLKOUT1_DIVIDE(3'd4),
	.CLKOUT1_PHASE(0.0),
	.CLKOUT2_DIVIDE(3'd4),
	.CLKOUT2_PHASE(90.0),
	.CLKOUT3_DIVIDE(4'd8),
	.CLKOUT3_PHASE(0.0),
	.DIVCLK_DIVIDE(1'd1),
	.REF_JITTER1(0.01),
	.STARTUP_WAIT("FALSE")
) PLLE2_BASE (
	.CLKFBIN(videooutsoc_crg_pll_fb),
	.CLKIN1(clk50),
	.CLKFBOUT(videooutsoc_crg_pll_fb),
	.CLKOUT0(videooutsoc_crg_pll_sys),
	.CLKOUT1(videooutsoc_crg_pll_sys4x),
	.CLKOUT2(videooutsoc_crg_pll_sys4x_dqs),
	.CLKOUT3(videooutsoc_crg_pll_clk200),
	.LOCKED(videooutsoc_crg_pll_locked)
);

BUFG BUFG(
	.I(videooutsoc_crg_pll_sys),
	.O(sys_clk)
);

BUFG BUFG_1(
	.I(videooutsoc_crg_pll_sys),
	.O(clk100_clk)
);

BUFG BUFG_2(
	.I(videooutsoc_crg_pll_clk200),
	.O(clk200_clk)
);

BUFG BUFG_3(
	.I(videooutsoc_crg_pll_sys4x),
	.O(sys4x_clk)
);

BUFG BUFG_4(
	.I(videooutsoc_crg_pll_sys4x_dqs),
	.O(sys4x_dqs_clk)
);

IDELAYCTRL IDELAYCTRL(
	.REFCLK(clk200_clk),
	.RST(videooutsoc_crg_ic_reset)
);

DNA_PORT DNA_PORT(
	.CLK(videooutsoc_dna_cnt[0]),
	.DIN(videooutsoc_dna_status[56]),
	.READ((videooutsoc_dna_cnt < 2'd2)),
	.SHIFT(1'd1),
	.DOUT(videooutsoc_dna_do)
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
	.DADDR(videooutsoc_channel),
	.DCLK(sys_clk),
	.DEN(videooutsoc_eoc),
	.DI(1'd0),
	.DWE(1'd0),
	.RESET(sys_rst),
	.VAUXN(1'd0),
	.VAUXP(1'd1),
	.VN(1'd0),
	.VP(1'd1),
	.ALM(videooutsoc_alarm),
	.BUSY(videooutsoc_busy),
	.CHANNEL(videooutsoc_channel),
	.DO(videooutsoc_data),
	.DRDY(videooutsoc_drdy),
	.EOC(videooutsoc_eoc),
	.EOS(videooutsoc_eos),
	.OT(videooutsoc_ot)
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
	.OQ(videooutsoc_sd_clk_se)
);

OBUFDS OBUFDS(
	.I(videooutsoc_sd_clk_se),
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
	.D1(videooutsoc_dfi_p0_address[0]),
	.D2(videooutsoc_dfi_p0_address[0]),
	.D3(videooutsoc_dfi_p1_address[0]),
	.D4(videooutsoc_dfi_p1_address[0]),
	.D5(videooutsoc_dfi_p2_address[0]),
	.D6(videooutsoc_dfi_p2_address[0]),
	.D7(videooutsoc_dfi_p3_address[0]),
	.D8(videooutsoc_dfi_p3_address[0]),
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
	.D1(videooutsoc_dfi_p0_address[1]),
	.D2(videooutsoc_dfi_p0_address[1]),
	.D3(videooutsoc_dfi_p1_address[1]),
	.D4(videooutsoc_dfi_p1_address[1]),
	.D5(videooutsoc_dfi_p2_address[1]),
	.D6(videooutsoc_dfi_p2_address[1]),
	.D7(videooutsoc_dfi_p3_address[1]),
	.D8(videooutsoc_dfi_p3_address[1]),
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
	.D1(videooutsoc_dfi_p0_address[2]),
	.D2(videooutsoc_dfi_p0_address[2]),
	.D3(videooutsoc_dfi_p1_address[2]),
	.D4(videooutsoc_dfi_p1_address[2]),
	.D5(videooutsoc_dfi_p2_address[2]),
	.D6(videooutsoc_dfi_p2_address[2]),
	.D7(videooutsoc_dfi_p3_address[2]),
	.D8(videooutsoc_dfi_p3_address[2]),
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
	.D1(videooutsoc_dfi_p0_address[3]),
	.D2(videooutsoc_dfi_p0_address[3]),
	.D3(videooutsoc_dfi_p1_address[3]),
	.D4(videooutsoc_dfi_p1_address[3]),
	.D5(videooutsoc_dfi_p2_address[3]),
	.D6(videooutsoc_dfi_p2_address[3]),
	.D7(videooutsoc_dfi_p3_address[3]),
	.D8(videooutsoc_dfi_p3_address[3]),
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
	.D1(videooutsoc_dfi_p0_address[4]),
	.D2(videooutsoc_dfi_p0_address[4]),
	.D3(videooutsoc_dfi_p1_address[4]),
	.D4(videooutsoc_dfi_p1_address[4]),
	.D5(videooutsoc_dfi_p2_address[4]),
	.D6(videooutsoc_dfi_p2_address[4]),
	.D7(videooutsoc_dfi_p3_address[4]),
	.D8(videooutsoc_dfi_p3_address[4]),
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
	.D1(videooutsoc_dfi_p0_address[5]),
	.D2(videooutsoc_dfi_p0_address[5]),
	.D3(videooutsoc_dfi_p1_address[5]),
	.D4(videooutsoc_dfi_p1_address[5]),
	.D5(videooutsoc_dfi_p2_address[5]),
	.D6(videooutsoc_dfi_p2_address[5]),
	.D7(videooutsoc_dfi_p3_address[5]),
	.D8(videooutsoc_dfi_p3_address[5]),
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
	.D1(videooutsoc_dfi_p0_address[6]),
	.D2(videooutsoc_dfi_p0_address[6]),
	.D3(videooutsoc_dfi_p1_address[6]),
	.D4(videooutsoc_dfi_p1_address[6]),
	.D5(videooutsoc_dfi_p2_address[6]),
	.D6(videooutsoc_dfi_p2_address[6]),
	.D7(videooutsoc_dfi_p3_address[6]),
	.D8(videooutsoc_dfi_p3_address[6]),
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
	.D1(videooutsoc_dfi_p0_address[7]),
	.D2(videooutsoc_dfi_p0_address[7]),
	.D3(videooutsoc_dfi_p1_address[7]),
	.D4(videooutsoc_dfi_p1_address[7]),
	.D5(videooutsoc_dfi_p2_address[7]),
	.D6(videooutsoc_dfi_p2_address[7]),
	.D7(videooutsoc_dfi_p3_address[7]),
	.D8(videooutsoc_dfi_p3_address[7]),
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
	.D1(videooutsoc_dfi_p0_address[8]),
	.D2(videooutsoc_dfi_p0_address[8]),
	.D3(videooutsoc_dfi_p1_address[8]),
	.D4(videooutsoc_dfi_p1_address[8]),
	.D5(videooutsoc_dfi_p2_address[8]),
	.D6(videooutsoc_dfi_p2_address[8]),
	.D7(videooutsoc_dfi_p3_address[8]),
	.D8(videooutsoc_dfi_p3_address[8]),
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
	.D1(videooutsoc_dfi_p0_address[9]),
	.D2(videooutsoc_dfi_p0_address[9]),
	.D3(videooutsoc_dfi_p1_address[9]),
	.D4(videooutsoc_dfi_p1_address[9]),
	.D5(videooutsoc_dfi_p2_address[9]),
	.D6(videooutsoc_dfi_p2_address[9]),
	.D7(videooutsoc_dfi_p3_address[9]),
	.D8(videooutsoc_dfi_p3_address[9]),
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
	.D1(videooutsoc_dfi_p0_address[10]),
	.D2(videooutsoc_dfi_p0_address[10]),
	.D3(videooutsoc_dfi_p1_address[10]),
	.D4(videooutsoc_dfi_p1_address[10]),
	.D5(videooutsoc_dfi_p2_address[10]),
	.D6(videooutsoc_dfi_p2_address[10]),
	.D7(videooutsoc_dfi_p3_address[10]),
	.D8(videooutsoc_dfi_p3_address[10]),
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
	.D1(videooutsoc_dfi_p0_address[11]),
	.D2(videooutsoc_dfi_p0_address[11]),
	.D3(videooutsoc_dfi_p1_address[11]),
	.D4(videooutsoc_dfi_p1_address[11]),
	.D5(videooutsoc_dfi_p2_address[11]),
	.D6(videooutsoc_dfi_p2_address[11]),
	.D7(videooutsoc_dfi_p3_address[11]),
	.D8(videooutsoc_dfi_p3_address[11]),
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
	.D1(videooutsoc_dfi_p0_address[12]),
	.D2(videooutsoc_dfi_p0_address[12]),
	.D3(videooutsoc_dfi_p1_address[12]),
	.D4(videooutsoc_dfi_p1_address[12]),
	.D5(videooutsoc_dfi_p2_address[12]),
	.D6(videooutsoc_dfi_p2_address[12]),
	.D7(videooutsoc_dfi_p3_address[12]),
	.D8(videooutsoc_dfi_p3_address[12]),
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
	.D1(videooutsoc_dfi_p0_address[13]),
	.D2(videooutsoc_dfi_p0_address[13]),
	.D3(videooutsoc_dfi_p1_address[13]),
	.D4(videooutsoc_dfi_p1_address[13]),
	.D5(videooutsoc_dfi_p2_address[13]),
	.D6(videooutsoc_dfi_p2_address[13]),
	.D7(videooutsoc_dfi_p3_address[13]),
	.D8(videooutsoc_dfi_p3_address[13]),
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
	.D1(videooutsoc_dfi_p0_bank[0]),
	.D2(videooutsoc_dfi_p0_bank[0]),
	.D3(videooutsoc_dfi_p1_bank[0]),
	.D4(videooutsoc_dfi_p1_bank[0]),
	.D5(videooutsoc_dfi_p2_bank[0]),
	.D6(videooutsoc_dfi_p2_bank[0]),
	.D7(videooutsoc_dfi_p3_bank[0]),
	.D8(videooutsoc_dfi_p3_bank[0]),
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
	.D1(videooutsoc_dfi_p0_bank[1]),
	.D2(videooutsoc_dfi_p0_bank[1]),
	.D3(videooutsoc_dfi_p1_bank[1]),
	.D4(videooutsoc_dfi_p1_bank[1]),
	.D5(videooutsoc_dfi_p2_bank[1]),
	.D6(videooutsoc_dfi_p2_bank[1]),
	.D7(videooutsoc_dfi_p3_bank[1]),
	.D8(videooutsoc_dfi_p3_bank[1]),
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
	.D1(videooutsoc_dfi_p0_bank[2]),
	.D2(videooutsoc_dfi_p0_bank[2]),
	.D3(videooutsoc_dfi_p1_bank[2]),
	.D4(videooutsoc_dfi_p1_bank[2]),
	.D5(videooutsoc_dfi_p2_bank[2]),
	.D6(videooutsoc_dfi_p2_bank[2]),
	.D7(videooutsoc_dfi_p3_bank[2]),
	.D8(videooutsoc_dfi_p3_bank[2]),
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
	.D1(videooutsoc_dfi_p0_ras_n),
	.D2(videooutsoc_dfi_p0_ras_n),
	.D3(videooutsoc_dfi_p1_ras_n),
	.D4(videooutsoc_dfi_p1_ras_n),
	.D5(videooutsoc_dfi_p2_ras_n),
	.D6(videooutsoc_dfi_p2_ras_n),
	.D7(videooutsoc_dfi_p3_ras_n),
	.D8(videooutsoc_dfi_p3_ras_n),
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
	.D1(videooutsoc_dfi_p0_cas_n),
	.D2(videooutsoc_dfi_p0_cas_n),
	.D3(videooutsoc_dfi_p1_cas_n),
	.D4(videooutsoc_dfi_p1_cas_n),
	.D5(videooutsoc_dfi_p2_cas_n),
	.D6(videooutsoc_dfi_p2_cas_n),
	.D7(videooutsoc_dfi_p3_cas_n),
	.D8(videooutsoc_dfi_p3_cas_n),
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
	.D1(videooutsoc_dfi_p0_we_n),
	.D2(videooutsoc_dfi_p0_we_n),
	.D3(videooutsoc_dfi_p1_we_n),
	.D4(videooutsoc_dfi_p1_we_n),
	.D5(videooutsoc_dfi_p2_we_n),
	.D6(videooutsoc_dfi_p2_we_n),
	.D7(videooutsoc_dfi_p3_we_n),
	.D8(videooutsoc_dfi_p3_we_n),
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
	.D1(videooutsoc_dfi_p0_cke),
	.D2(videooutsoc_dfi_p0_cke),
	.D3(videooutsoc_dfi_p1_cke),
	.D4(videooutsoc_dfi_p1_cke),
	.D5(videooutsoc_dfi_p2_cke),
	.D6(videooutsoc_dfi_p2_cke),
	.D7(videooutsoc_dfi_p3_cke),
	.D8(videooutsoc_dfi_p3_cke),
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
	.D1(videooutsoc_dfi_p0_odt),
	.D2(videooutsoc_dfi_p0_odt),
	.D3(videooutsoc_dfi_p1_odt),
	.D4(videooutsoc_dfi_p1_odt),
	.D5(videooutsoc_dfi_p2_odt),
	.D6(videooutsoc_dfi_p2_odt),
	.D7(videooutsoc_dfi_p3_odt),
	.D8(videooutsoc_dfi_p3_odt),
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
	.D1(videooutsoc_dfi_p0_reset_n),
	.D2(videooutsoc_dfi_p0_reset_n),
	.D3(videooutsoc_dfi_p1_reset_n),
	.D4(videooutsoc_dfi_p1_reset_n),
	.D5(videooutsoc_dfi_p2_reset_n),
	.D6(videooutsoc_dfi_p2_reset_n),
	.D7(videooutsoc_dfi_p3_reset_n),
	.D8(videooutsoc_dfi_p3_reset_n),
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
	.D1(videooutsoc_dfi_p0_cs_n),
	.D2(videooutsoc_dfi_p0_cs_n),
	.D3(videooutsoc_dfi_p1_cs_n),
	.D4(videooutsoc_dfi_p1_cs_n),
	.D5(videooutsoc_dfi_p2_cs_n),
	.D6(videooutsoc_dfi_p2_cs_n),
	.D7(videooutsoc_dfi_p3_cs_n),
	.D8(videooutsoc_dfi_p3_cs_n),
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
	.D1(videooutsoc_dfi_p0_wrdata_mask[0]),
	.D2(videooutsoc_dfi_p0_wrdata_mask[4]),
	.D3(videooutsoc_dfi_p1_wrdata_mask[0]),
	.D4(videooutsoc_dfi_p1_wrdata_mask[4]),
	.D5(videooutsoc_dfi_p2_wrdata_mask[0]),
	.D6(videooutsoc_dfi_p2_wrdata_mask[4]),
	.D7(videooutsoc_dfi_p3_wrdata_mask[0]),
	.D8(videooutsoc_dfi_p3_wrdata_mask[4]),
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
	.D1(videooutsoc_dqs_serdes_pattern[0]),
	.D2(videooutsoc_dqs_serdes_pattern[1]),
	.D3(videooutsoc_dqs_serdes_pattern[2]),
	.D4(videooutsoc_dqs_serdes_pattern[3]),
	.D5(videooutsoc_dqs_serdes_pattern[4]),
	.D6(videooutsoc_dqs_serdes_pattern[5]),
	.D7(videooutsoc_dqs_serdes_pattern[6]),
	.D8(videooutsoc_dqs_serdes_pattern[7]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dqs)),
	.TCE(1'd1),
	.OQ(videooutsoc_dqs0),
	.TQ(videooutsoc_dqs_t0)
);

OBUFTDS OBUFTDS(
	.I(videooutsoc_dqs0),
	.T(videooutsoc_dqs_t0),
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
	.D1(videooutsoc_dfi_p0_wrdata_mask[1]),
	.D2(videooutsoc_dfi_p0_wrdata_mask[5]),
	.D3(videooutsoc_dfi_p1_wrdata_mask[1]),
	.D4(videooutsoc_dfi_p1_wrdata_mask[5]),
	.D5(videooutsoc_dfi_p2_wrdata_mask[1]),
	.D6(videooutsoc_dfi_p2_wrdata_mask[5]),
	.D7(videooutsoc_dfi_p3_wrdata_mask[1]),
	.D8(videooutsoc_dfi_p3_wrdata_mask[5]),
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
	.D1(videooutsoc_dqs_serdes_pattern[0]),
	.D2(videooutsoc_dqs_serdes_pattern[1]),
	.D3(videooutsoc_dqs_serdes_pattern[2]),
	.D4(videooutsoc_dqs_serdes_pattern[3]),
	.D5(videooutsoc_dqs_serdes_pattern[4]),
	.D6(videooutsoc_dqs_serdes_pattern[5]),
	.D7(videooutsoc_dqs_serdes_pattern[6]),
	.D8(videooutsoc_dqs_serdes_pattern[7]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dqs)),
	.TCE(1'd1),
	.OQ(videooutsoc_dqs1),
	.TQ(videooutsoc_dqs_t1)
);

OBUFTDS OBUFTDS_1(
	.I(videooutsoc_dqs1),
	.T(videooutsoc_dqs_t1),
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
	.D1(videooutsoc_dfi_p0_wrdata_mask[2]),
	.D2(videooutsoc_dfi_p0_wrdata_mask[6]),
	.D3(videooutsoc_dfi_p1_wrdata_mask[2]),
	.D4(videooutsoc_dfi_p1_wrdata_mask[6]),
	.D5(videooutsoc_dfi_p2_wrdata_mask[2]),
	.D6(videooutsoc_dfi_p2_wrdata_mask[6]),
	.D7(videooutsoc_dfi_p3_wrdata_mask[2]),
	.D8(videooutsoc_dfi_p3_wrdata_mask[6]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_dm[2])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_30 (
	.CLK(sys4x_dqs_clk),
	.CLKDIV(sys_clk),
	.D1(videooutsoc_dqs_serdes_pattern[0]),
	.D2(videooutsoc_dqs_serdes_pattern[1]),
	.D3(videooutsoc_dqs_serdes_pattern[2]),
	.D4(videooutsoc_dqs_serdes_pattern[3]),
	.D5(videooutsoc_dqs_serdes_pattern[4]),
	.D6(videooutsoc_dqs_serdes_pattern[5]),
	.D7(videooutsoc_dqs_serdes_pattern[6]),
	.D8(videooutsoc_dqs_serdes_pattern[7]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dqs)),
	.TCE(1'd1),
	.OQ(videooutsoc_dqs2),
	.TQ(videooutsoc_dqs_t2)
);

OBUFTDS OBUFTDS_2(
	.I(videooutsoc_dqs2),
	.T(videooutsoc_dqs_t2),
	.O(ddram_dqs_p[2]),
	.OB(ddram_dqs_n[2])
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
	.D1(videooutsoc_dfi_p0_wrdata_mask[3]),
	.D2(videooutsoc_dfi_p0_wrdata_mask[7]),
	.D3(videooutsoc_dfi_p1_wrdata_mask[3]),
	.D4(videooutsoc_dfi_p1_wrdata_mask[7]),
	.D5(videooutsoc_dfi_p2_wrdata_mask[3]),
	.D6(videooutsoc_dfi_p2_wrdata_mask[7]),
	.D7(videooutsoc_dfi_p3_wrdata_mask[3]),
	.D8(videooutsoc_dfi_p3_wrdata_mask[7]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_dm[3])
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_32 (
	.CLK(sys4x_dqs_clk),
	.CLKDIV(sys_clk),
	.D1(videooutsoc_dqs_serdes_pattern[0]),
	.D2(videooutsoc_dqs_serdes_pattern[1]),
	.D3(videooutsoc_dqs_serdes_pattern[2]),
	.D4(videooutsoc_dqs_serdes_pattern[3]),
	.D5(videooutsoc_dqs_serdes_pattern[4]),
	.D6(videooutsoc_dqs_serdes_pattern[5]),
	.D7(videooutsoc_dqs_serdes_pattern[6]),
	.D8(videooutsoc_dqs_serdes_pattern[7]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dqs)),
	.TCE(1'd1),
	.OQ(videooutsoc_dqs3),
	.TQ(videooutsoc_dqs_t3)
);

OBUFTDS OBUFTDS_3(
	.I(videooutsoc_dqs3),
	.T(videooutsoc_dqs_t3),
	.O(ddram_dqs_p[3]),
	.OB(ddram_dqs_n[3])
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
	.D1(videooutsoc_dfi_p0_wrdata[0]),
	.D2(videooutsoc_dfi_p0_wrdata[32]),
	.D3(videooutsoc_dfi_p1_wrdata[0]),
	.D4(videooutsoc_dfi_p1_wrdata[32]),
	.D5(videooutsoc_dfi_p2_wrdata[0]),
	.D6(videooutsoc_dfi_p2_wrdata[32]),
	.D7(videooutsoc_dfi_p3_wrdata[0]),
	.D8(videooutsoc_dfi_p3_wrdata[32]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o0),
	.TQ(videooutsoc_dq_t0)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2 (
	.BITSLIP((videooutsoc_storage[0] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed0),
	.RST((sys_rst | (videooutsoc_storage[0] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[32]),
	.Q2(videooutsoc_dfi_p3_rddata[0]),
	.Q3(videooutsoc_dfi_p2_rddata[32]),
	.Q4(videooutsoc_dfi_p2_rddata[0]),
	.Q5(videooutsoc_dfi_p1_rddata[32]),
	.Q6(videooutsoc_dfi_p1_rddata[0]),
	.Q7(videooutsoc_dfi_p0_rddata[32]),
	.Q8(videooutsoc_dfi_p0_rddata[0])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2 (
	.C(sys_clk),
	.CE((videooutsoc_storage[0] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay0),
	.INC(1'd1),
	.LD((videooutsoc_storage[0] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed0)
);

IOBUF IOBUF(
	.I(videooutsoc_dq_o0),
	.T(videooutsoc_dq_t0),
	.IO(ddram_dq[0]),
	.O(videooutsoc_dq_i_nodelay0)
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
	.D1(videooutsoc_dfi_p0_wrdata[1]),
	.D2(videooutsoc_dfi_p0_wrdata[33]),
	.D3(videooutsoc_dfi_p1_wrdata[1]),
	.D4(videooutsoc_dfi_p1_wrdata[33]),
	.D5(videooutsoc_dfi_p2_wrdata[1]),
	.D6(videooutsoc_dfi_p2_wrdata[33]),
	.D7(videooutsoc_dfi_p3_wrdata[1]),
	.D8(videooutsoc_dfi_p3_wrdata[33]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o1),
	.TQ(videooutsoc_dq_t1)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_1 (
	.BITSLIP((videooutsoc_storage[0] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed1),
	.RST((sys_rst | (videooutsoc_storage[0] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[33]),
	.Q2(videooutsoc_dfi_p3_rddata[1]),
	.Q3(videooutsoc_dfi_p2_rddata[33]),
	.Q4(videooutsoc_dfi_p2_rddata[1]),
	.Q5(videooutsoc_dfi_p1_rddata[33]),
	.Q6(videooutsoc_dfi_p1_rddata[1]),
	.Q7(videooutsoc_dfi_p0_rddata[33]),
	.Q8(videooutsoc_dfi_p0_rddata[1])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_1 (
	.C(sys_clk),
	.CE((videooutsoc_storage[0] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay1),
	.INC(1'd1),
	.LD((videooutsoc_storage[0] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed1)
);

IOBUF IOBUF_1(
	.I(videooutsoc_dq_o1),
	.T(videooutsoc_dq_t1),
	.IO(ddram_dq[1]),
	.O(videooutsoc_dq_i_nodelay1)
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
	.D1(videooutsoc_dfi_p0_wrdata[2]),
	.D2(videooutsoc_dfi_p0_wrdata[34]),
	.D3(videooutsoc_dfi_p1_wrdata[2]),
	.D4(videooutsoc_dfi_p1_wrdata[34]),
	.D5(videooutsoc_dfi_p2_wrdata[2]),
	.D6(videooutsoc_dfi_p2_wrdata[34]),
	.D7(videooutsoc_dfi_p3_wrdata[2]),
	.D8(videooutsoc_dfi_p3_wrdata[34]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o2),
	.TQ(videooutsoc_dq_t2)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_2 (
	.BITSLIP((videooutsoc_storage[0] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed2),
	.RST((sys_rst | (videooutsoc_storage[0] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[34]),
	.Q2(videooutsoc_dfi_p3_rddata[2]),
	.Q3(videooutsoc_dfi_p2_rddata[34]),
	.Q4(videooutsoc_dfi_p2_rddata[2]),
	.Q5(videooutsoc_dfi_p1_rddata[34]),
	.Q6(videooutsoc_dfi_p1_rddata[2]),
	.Q7(videooutsoc_dfi_p0_rddata[34]),
	.Q8(videooutsoc_dfi_p0_rddata[2])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_2 (
	.C(sys_clk),
	.CE((videooutsoc_storage[0] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay2),
	.INC(1'd1),
	.LD((videooutsoc_storage[0] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed2)
);

IOBUF IOBUF_2(
	.I(videooutsoc_dq_o2),
	.T(videooutsoc_dq_t2),
	.IO(ddram_dq[2]),
	.O(videooutsoc_dq_i_nodelay2)
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
	.D1(videooutsoc_dfi_p0_wrdata[3]),
	.D2(videooutsoc_dfi_p0_wrdata[35]),
	.D3(videooutsoc_dfi_p1_wrdata[3]),
	.D4(videooutsoc_dfi_p1_wrdata[35]),
	.D5(videooutsoc_dfi_p2_wrdata[3]),
	.D6(videooutsoc_dfi_p2_wrdata[35]),
	.D7(videooutsoc_dfi_p3_wrdata[3]),
	.D8(videooutsoc_dfi_p3_wrdata[35]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o3),
	.TQ(videooutsoc_dq_t3)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_3 (
	.BITSLIP((videooutsoc_storage[0] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed3),
	.RST((sys_rst | (videooutsoc_storage[0] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[35]),
	.Q2(videooutsoc_dfi_p3_rddata[3]),
	.Q3(videooutsoc_dfi_p2_rddata[35]),
	.Q4(videooutsoc_dfi_p2_rddata[3]),
	.Q5(videooutsoc_dfi_p1_rddata[35]),
	.Q6(videooutsoc_dfi_p1_rddata[3]),
	.Q7(videooutsoc_dfi_p0_rddata[35]),
	.Q8(videooutsoc_dfi_p0_rddata[3])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_3 (
	.C(sys_clk),
	.CE((videooutsoc_storage[0] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay3),
	.INC(1'd1),
	.LD((videooutsoc_storage[0] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed3)
);

IOBUF IOBUF_3(
	.I(videooutsoc_dq_o3),
	.T(videooutsoc_dq_t3),
	.IO(ddram_dq[3]),
	.O(videooutsoc_dq_i_nodelay3)
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
	.D1(videooutsoc_dfi_p0_wrdata[4]),
	.D2(videooutsoc_dfi_p0_wrdata[36]),
	.D3(videooutsoc_dfi_p1_wrdata[4]),
	.D4(videooutsoc_dfi_p1_wrdata[36]),
	.D5(videooutsoc_dfi_p2_wrdata[4]),
	.D6(videooutsoc_dfi_p2_wrdata[36]),
	.D7(videooutsoc_dfi_p3_wrdata[4]),
	.D8(videooutsoc_dfi_p3_wrdata[36]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o4),
	.TQ(videooutsoc_dq_t4)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_4 (
	.BITSLIP((videooutsoc_storage[0] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed4),
	.RST((sys_rst | (videooutsoc_storage[0] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[36]),
	.Q2(videooutsoc_dfi_p3_rddata[4]),
	.Q3(videooutsoc_dfi_p2_rddata[36]),
	.Q4(videooutsoc_dfi_p2_rddata[4]),
	.Q5(videooutsoc_dfi_p1_rddata[36]),
	.Q6(videooutsoc_dfi_p1_rddata[4]),
	.Q7(videooutsoc_dfi_p0_rddata[36]),
	.Q8(videooutsoc_dfi_p0_rddata[4])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_4 (
	.C(sys_clk),
	.CE((videooutsoc_storage[0] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay4),
	.INC(1'd1),
	.LD((videooutsoc_storage[0] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed4)
);

IOBUF IOBUF_4(
	.I(videooutsoc_dq_o4),
	.T(videooutsoc_dq_t4),
	.IO(ddram_dq[4]),
	.O(videooutsoc_dq_i_nodelay4)
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
	.D1(videooutsoc_dfi_p0_wrdata[5]),
	.D2(videooutsoc_dfi_p0_wrdata[37]),
	.D3(videooutsoc_dfi_p1_wrdata[5]),
	.D4(videooutsoc_dfi_p1_wrdata[37]),
	.D5(videooutsoc_dfi_p2_wrdata[5]),
	.D6(videooutsoc_dfi_p2_wrdata[37]),
	.D7(videooutsoc_dfi_p3_wrdata[5]),
	.D8(videooutsoc_dfi_p3_wrdata[37]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o5),
	.TQ(videooutsoc_dq_t5)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_5 (
	.BITSLIP((videooutsoc_storage[0] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed5),
	.RST((sys_rst | (videooutsoc_storage[0] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[37]),
	.Q2(videooutsoc_dfi_p3_rddata[5]),
	.Q3(videooutsoc_dfi_p2_rddata[37]),
	.Q4(videooutsoc_dfi_p2_rddata[5]),
	.Q5(videooutsoc_dfi_p1_rddata[37]),
	.Q6(videooutsoc_dfi_p1_rddata[5]),
	.Q7(videooutsoc_dfi_p0_rddata[37]),
	.Q8(videooutsoc_dfi_p0_rddata[5])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_5 (
	.C(sys_clk),
	.CE((videooutsoc_storage[0] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay5),
	.INC(1'd1),
	.LD((videooutsoc_storage[0] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed5)
);

IOBUF IOBUF_5(
	.I(videooutsoc_dq_o5),
	.T(videooutsoc_dq_t5),
	.IO(ddram_dq[5]),
	.O(videooutsoc_dq_i_nodelay5)
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
	.D1(videooutsoc_dfi_p0_wrdata[6]),
	.D2(videooutsoc_dfi_p0_wrdata[38]),
	.D3(videooutsoc_dfi_p1_wrdata[6]),
	.D4(videooutsoc_dfi_p1_wrdata[38]),
	.D5(videooutsoc_dfi_p2_wrdata[6]),
	.D6(videooutsoc_dfi_p2_wrdata[38]),
	.D7(videooutsoc_dfi_p3_wrdata[6]),
	.D8(videooutsoc_dfi_p3_wrdata[38]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o6),
	.TQ(videooutsoc_dq_t6)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_6 (
	.BITSLIP((videooutsoc_storage[0] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed6),
	.RST((sys_rst | (videooutsoc_storage[0] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[38]),
	.Q2(videooutsoc_dfi_p3_rddata[6]),
	.Q3(videooutsoc_dfi_p2_rddata[38]),
	.Q4(videooutsoc_dfi_p2_rddata[6]),
	.Q5(videooutsoc_dfi_p1_rddata[38]),
	.Q6(videooutsoc_dfi_p1_rddata[6]),
	.Q7(videooutsoc_dfi_p0_rddata[38]),
	.Q8(videooutsoc_dfi_p0_rddata[6])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_6 (
	.C(sys_clk),
	.CE((videooutsoc_storage[0] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay6),
	.INC(1'd1),
	.LD((videooutsoc_storage[0] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed6)
);

IOBUF IOBUF_6(
	.I(videooutsoc_dq_o6),
	.T(videooutsoc_dq_t6),
	.IO(ddram_dq[6]),
	.O(videooutsoc_dq_i_nodelay6)
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
	.D1(videooutsoc_dfi_p0_wrdata[7]),
	.D2(videooutsoc_dfi_p0_wrdata[39]),
	.D3(videooutsoc_dfi_p1_wrdata[7]),
	.D4(videooutsoc_dfi_p1_wrdata[39]),
	.D5(videooutsoc_dfi_p2_wrdata[7]),
	.D6(videooutsoc_dfi_p2_wrdata[39]),
	.D7(videooutsoc_dfi_p3_wrdata[7]),
	.D8(videooutsoc_dfi_p3_wrdata[39]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o7),
	.TQ(videooutsoc_dq_t7)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_7 (
	.BITSLIP((videooutsoc_storage[0] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed7),
	.RST((sys_rst | (videooutsoc_storage[0] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[39]),
	.Q2(videooutsoc_dfi_p3_rddata[7]),
	.Q3(videooutsoc_dfi_p2_rddata[39]),
	.Q4(videooutsoc_dfi_p2_rddata[7]),
	.Q5(videooutsoc_dfi_p1_rddata[39]),
	.Q6(videooutsoc_dfi_p1_rddata[7]),
	.Q7(videooutsoc_dfi_p0_rddata[39]),
	.Q8(videooutsoc_dfi_p0_rddata[7])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_7 (
	.C(sys_clk),
	.CE((videooutsoc_storage[0] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay7),
	.INC(1'd1),
	.LD((videooutsoc_storage[0] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed7)
);

IOBUF IOBUF_7(
	.I(videooutsoc_dq_o7),
	.T(videooutsoc_dq_t7),
	.IO(ddram_dq[7]),
	.O(videooutsoc_dq_i_nodelay7)
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
	.D1(videooutsoc_dfi_p0_wrdata[8]),
	.D2(videooutsoc_dfi_p0_wrdata[40]),
	.D3(videooutsoc_dfi_p1_wrdata[8]),
	.D4(videooutsoc_dfi_p1_wrdata[40]),
	.D5(videooutsoc_dfi_p2_wrdata[8]),
	.D6(videooutsoc_dfi_p2_wrdata[40]),
	.D7(videooutsoc_dfi_p3_wrdata[8]),
	.D8(videooutsoc_dfi_p3_wrdata[40]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o8),
	.TQ(videooutsoc_dq_t8)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_8 (
	.BITSLIP((videooutsoc_storage[1] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed8),
	.RST((sys_rst | (videooutsoc_storage[1] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[40]),
	.Q2(videooutsoc_dfi_p3_rddata[8]),
	.Q3(videooutsoc_dfi_p2_rddata[40]),
	.Q4(videooutsoc_dfi_p2_rddata[8]),
	.Q5(videooutsoc_dfi_p1_rddata[40]),
	.Q6(videooutsoc_dfi_p1_rddata[8]),
	.Q7(videooutsoc_dfi_p0_rddata[40]),
	.Q8(videooutsoc_dfi_p0_rddata[8])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_8 (
	.C(sys_clk),
	.CE((videooutsoc_storage[1] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay8),
	.INC(1'd1),
	.LD((videooutsoc_storage[1] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed8)
);

IOBUF IOBUF_8(
	.I(videooutsoc_dq_o8),
	.T(videooutsoc_dq_t8),
	.IO(ddram_dq[8]),
	.O(videooutsoc_dq_i_nodelay8)
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
	.D1(videooutsoc_dfi_p0_wrdata[9]),
	.D2(videooutsoc_dfi_p0_wrdata[41]),
	.D3(videooutsoc_dfi_p1_wrdata[9]),
	.D4(videooutsoc_dfi_p1_wrdata[41]),
	.D5(videooutsoc_dfi_p2_wrdata[9]),
	.D6(videooutsoc_dfi_p2_wrdata[41]),
	.D7(videooutsoc_dfi_p3_wrdata[9]),
	.D8(videooutsoc_dfi_p3_wrdata[41]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o9),
	.TQ(videooutsoc_dq_t9)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_9 (
	.BITSLIP((videooutsoc_storage[1] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed9),
	.RST((sys_rst | (videooutsoc_storage[1] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[41]),
	.Q2(videooutsoc_dfi_p3_rddata[9]),
	.Q3(videooutsoc_dfi_p2_rddata[41]),
	.Q4(videooutsoc_dfi_p2_rddata[9]),
	.Q5(videooutsoc_dfi_p1_rddata[41]),
	.Q6(videooutsoc_dfi_p1_rddata[9]),
	.Q7(videooutsoc_dfi_p0_rddata[41]),
	.Q8(videooutsoc_dfi_p0_rddata[9])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_9 (
	.C(sys_clk),
	.CE((videooutsoc_storage[1] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay9),
	.INC(1'd1),
	.LD((videooutsoc_storage[1] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed9)
);

IOBUF IOBUF_9(
	.I(videooutsoc_dq_o9),
	.T(videooutsoc_dq_t9),
	.IO(ddram_dq[9]),
	.O(videooutsoc_dq_i_nodelay9)
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
	.D1(videooutsoc_dfi_p0_wrdata[10]),
	.D2(videooutsoc_dfi_p0_wrdata[42]),
	.D3(videooutsoc_dfi_p1_wrdata[10]),
	.D4(videooutsoc_dfi_p1_wrdata[42]),
	.D5(videooutsoc_dfi_p2_wrdata[10]),
	.D6(videooutsoc_dfi_p2_wrdata[42]),
	.D7(videooutsoc_dfi_p3_wrdata[10]),
	.D8(videooutsoc_dfi_p3_wrdata[42]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o10),
	.TQ(videooutsoc_dq_t10)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_10 (
	.BITSLIP((videooutsoc_storage[1] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed10),
	.RST((sys_rst | (videooutsoc_storage[1] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[42]),
	.Q2(videooutsoc_dfi_p3_rddata[10]),
	.Q3(videooutsoc_dfi_p2_rddata[42]),
	.Q4(videooutsoc_dfi_p2_rddata[10]),
	.Q5(videooutsoc_dfi_p1_rddata[42]),
	.Q6(videooutsoc_dfi_p1_rddata[10]),
	.Q7(videooutsoc_dfi_p0_rddata[42]),
	.Q8(videooutsoc_dfi_p0_rddata[10])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_10 (
	.C(sys_clk),
	.CE((videooutsoc_storage[1] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay10),
	.INC(1'd1),
	.LD((videooutsoc_storage[1] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed10)
);

IOBUF IOBUF_10(
	.I(videooutsoc_dq_o10),
	.T(videooutsoc_dq_t10),
	.IO(ddram_dq[10]),
	.O(videooutsoc_dq_i_nodelay10)
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
	.D1(videooutsoc_dfi_p0_wrdata[11]),
	.D2(videooutsoc_dfi_p0_wrdata[43]),
	.D3(videooutsoc_dfi_p1_wrdata[11]),
	.D4(videooutsoc_dfi_p1_wrdata[43]),
	.D5(videooutsoc_dfi_p2_wrdata[11]),
	.D6(videooutsoc_dfi_p2_wrdata[43]),
	.D7(videooutsoc_dfi_p3_wrdata[11]),
	.D8(videooutsoc_dfi_p3_wrdata[43]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o11),
	.TQ(videooutsoc_dq_t11)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_11 (
	.BITSLIP((videooutsoc_storage[1] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed11),
	.RST((sys_rst | (videooutsoc_storage[1] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[43]),
	.Q2(videooutsoc_dfi_p3_rddata[11]),
	.Q3(videooutsoc_dfi_p2_rddata[43]),
	.Q4(videooutsoc_dfi_p2_rddata[11]),
	.Q5(videooutsoc_dfi_p1_rddata[43]),
	.Q6(videooutsoc_dfi_p1_rddata[11]),
	.Q7(videooutsoc_dfi_p0_rddata[43]),
	.Q8(videooutsoc_dfi_p0_rddata[11])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_11 (
	.C(sys_clk),
	.CE((videooutsoc_storage[1] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay11),
	.INC(1'd1),
	.LD((videooutsoc_storage[1] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed11)
);

IOBUF IOBUF_11(
	.I(videooutsoc_dq_o11),
	.T(videooutsoc_dq_t11),
	.IO(ddram_dq[11]),
	.O(videooutsoc_dq_i_nodelay11)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_45 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(videooutsoc_dfi_p0_wrdata[12]),
	.D2(videooutsoc_dfi_p0_wrdata[44]),
	.D3(videooutsoc_dfi_p1_wrdata[12]),
	.D4(videooutsoc_dfi_p1_wrdata[44]),
	.D5(videooutsoc_dfi_p2_wrdata[12]),
	.D6(videooutsoc_dfi_p2_wrdata[44]),
	.D7(videooutsoc_dfi_p3_wrdata[12]),
	.D8(videooutsoc_dfi_p3_wrdata[44]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o12),
	.TQ(videooutsoc_dq_t12)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_12 (
	.BITSLIP((videooutsoc_storage[1] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed12),
	.RST((sys_rst | (videooutsoc_storage[1] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[44]),
	.Q2(videooutsoc_dfi_p3_rddata[12]),
	.Q3(videooutsoc_dfi_p2_rddata[44]),
	.Q4(videooutsoc_dfi_p2_rddata[12]),
	.Q5(videooutsoc_dfi_p1_rddata[44]),
	.Q6(videooutsoc_dfi_p1_rddata[12]),
	.Q7(videooutsoc_dfi_p0_rddata[44]),
	.Q8(videooutsoc_dfi_p0_rddata[12])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_12 (
	.C(sys_clk),
	.CE((videooutsoc_storage[1] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay12),
	.INC(1'd1),
	.LD((videooutsoc_storage[1] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed12)
);

IOBUF IOBUF_12(
	.I(videooutsoc_dq_o12),
	.T(videooutsoc_dq_t12),
	.IO(ddram_dq[12]),
	.O(videooutsoc_dq_i_nodelay12)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_46 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(videooutsoc_dfi_p0_wrdata[13]),
	.D2(videooutsoc_dfi_p0_wrdata[45]),
	.D3(videooutsoc_dfi_p1_wrdata[13]),
	.D4(videooutsoc_dfi_p1_wrdata[45]),
	.D5(videooutsoc_dfi_p2_wrdata[13]),
	.D6(videooutsoc_dfi_p2_wrdata[45]),
	.D7(videooutsoc_dfi_p3_wrdata[13]),
	.D8(videooutsoc_dfi_p3_wrdata[45]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o13),
	.TQ(videooutsoc_dq_t13)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_13 (
	.BITSLIP((videooutsoc_storage[1] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed13),
	.RST((sys_rst | (videooutsoc_storage[1] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[45]),
	.Q2(videooutsoc_dfi_p3_rddata[13]),
	.Q3(videooutsoc_dfi_p2_rddata[45]),
	.Q4(videooutsoc_dfi_p2_rddata[13]),
	.Q5(videooutsoc_dfi_p1_rddata[45]),
	.Q6(videooutsoc_dfi_p1_rddata[13]),
	.Q7(videooutsoc_dfi_p0_rddata[45]),
	.Q8(videooutsoc_dfi_p0_rddata[13])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_13 (
	.C(sys_clk),
	.CE((videooutsoc_storage[1] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay13),
	.INC(1'd1),
	.LD((videooutsoc_storage[1] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed13)
);

IOBUF IOBUF_13(
	.I(videooutsoc_dq_o13),
	.T(videooutsoc_dq_t13),
	.IO(ddram_dq[13]),
	.O(videooutsoc_dq_i_nodelay13)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_47 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(videooutsoc_dfi_p0_wrdata[14]),
	.D2(videooutsoc_dfi_p0_wrdata[46]),
	.D3(videooutsoc_dfi_p1_wrdata[14]),
	.D4(videooutsoc_dfi_p1_wrdata[46]),
	.D5(videooutsoc_dfi_p2_wrdata[14]),
	.D6(videooutsoc_dfi_p2_wrdata[46]),
	.D7(videooutsoc_dfi_p3_wrdata[14]),
	.D8(videooutsoc_dfi_p3_wrdata[46]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o14),
	.TQ(videooutsoc_dq_t14)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_14 (
	.BITSLIP((videooutsoc_storage[1] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed14),
	.RST((sys_rst | (videooutsoc_storage[1] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[46]),
	.Q2(videooutsoc_dfi_p3_rddata[14]),
	.Q3(videooutsoc_dfi_p2_rddata[46]),
	.Q4(videooutsoc_dfi_p2_rddata[14]),
	.Q5(videooutsoc_dfi_p1_rddata[46]),
	.Q6(videooutsoc_dfi_p1_rddata[14]),
	.Q7(videooutsoc_dfi_p0_rddata[46]),
	.Q8(videooutsoc_dfi_p0_rddata[14])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_14 (
	.C(sys_clk),
	.CE((videooutsoc_storage[1] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay14),
	.INC(1'd1),
	.LD((videooutsoc_storage[1] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed14)
);

IOBUF IOBUF_14(
	.I(videooutsoc_dq_o14),
	.T(videooutsoc_dq_t14),
	.IO(ddram_dq[14]),
	.O(videooutsoc_dq_i_nodelay14)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_48 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(videooutsoc_dfi_p0_wrdata[15]),
	.D2(videooutsoc_dfi_p0_wrdata[47]),
	.D3(videooutsoc_dfi_p1_wrdata[15]),
	.D4(videooutsoc_dfi_p1_wrdata[47]),
	.D5(videooutsoc_dfi_p2_wrdata[15]),
	.D6(videooutsoc_dfi_p2_wrdata[47]),
	.D7(videooutsoc_dfi_p3_wrdata[15]),
	.D8(videooutsoc_dfi_p3_wrdata[47]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o15),
	.TQ(videooutsoc_dq_t15)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_15 (
	.BITSLIP((videooutsoc_storage[1] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed15),
	.RST((sys_rst | (videooutsoc_storage[1] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[47]),
	.Q2(videooutsoc_dfi_p3_rddata[15]),
	.Q3(videooutsoc_dfi_p2_rddata[47]),
	.Q4(videooutsoc_dfi_p2_rddata[15]),
	.Q5(videooutsoc_dfi_p1_rddata[47]),
	.Q6(videooutsoc_dfi_p1_rddata[15]),
	.Q7(videooutsoc_dfi_p0_rddata[47]),
	.Q8(videooutsoc_dfi_p0_rddata[15])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_15 (
	.C(sys_clk),
	.CE((videooutsoc_storage[1] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay15),
	.INC(1'd1),
	.LD((videooutsoc_storage[1] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed15)
);

IOBUF IOBUF_15(
	.I(videooutsoc_dq_o15),
	.T(videooutsoc_dq_t15),
	.IO(ddram_dq[15]),
	.O(videooutsoc_dq_i_nodelay15)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_49 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(videooutsoc_dfi_p0_wrdata[16]),
	.D2(videooutsoc_dfi_p0_wrdata[48]),
	.D3(videooutsoc_dfi_p1_wrdata[16]),
	.D4(videooutsoc_dfi_p1_wrdata[48]),
	.D5(videooutsoc_dfi_p2_wrdata[16]),
	.D6(videooutsoc_dfi_p2_wrdata[48]),
	.D7(videooutsoc_dfi_p3_wrdata[16]),
	.D8(videooutsoc_dfi_p3_wrdata[48]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o16),
	.TQ(videooutsoc_dq_t16)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_16 (
	.BITSLIP((videooutsoc_storage[2] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed16),
	.RST((sys_rst | (videooutsoc_storage[2] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[48]),
	.Q2(videooutsoc_dfi_p3_rddata[16]),
	.Q3(videooutsoc_dfi_p2_rddata[48]),
	.Q4(videooutsoc_dfi_p2_rddata[16]),
	.Q5(videooutsoc_dfi_p1_rddata[48]),
	.Q6(videooutsoc_dfi_p1_rddata[16]),
	.Q7(videooutsoc_dfi_p0_rddata[48]),
	.Q8(videooutsoc_dfi_p0_rddata[16])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_16 (
	.C(sys_clk),
	.CE((videooutsoc_storage[2] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay16),
	.INC(1'd1),
	.LD((videooutsoc_storage[2] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed16)
);

IOBUF IOBUF_16(
	.I(videooutsoc_dq_o16),
	.T(videooutsoc_dq_t16),
	.IO(ddram_dq[16]),
	.O(videooutsoc_dq_i_nodelay16)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_50 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(videooutsoc_dfi_p0_wrdata[17]),
	.D2(videooutsoc_dfi_p0_wrdata[49]),
	.D3(videooutsoc_dfi_p1_wrdata[17]),
	.D4(videooutsoc_dfi_p1_wrdata[49]),
	.D5(videooutsoc_dfi_p2_wrdata[17]),
	.D6(videooutsoc_dfi_p2_wrdata[49]),
	.D7(videooutsoc_dfi_p3_wrdata[17]),
	.D8(videooutsoc_dfi_p3_wrdata[49]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o17),
	.TQ(videooutsoc_dq_t17)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_17 (
	.BITSLIP((videooutsoc_storage[2] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed17),
	.RST((sys_rst | (videooutsoc_storage[2] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[49]),
	.Q2(videooutsoc_dfi_p3_rddata[17]),
	.Q3(videooutsoc_dfi_p2_rddata[49]),
	.Q4(videooutsoc_dfi_p2_rddata[17]),
	.Q5(videooutsoc_dfi_p1_rddata[49]),
	.Q6(videooutsoc_dfi_p1_rddata[17]),
	.Q7(videooutsoc_dfi_p0_rddata[49]),
	.Q8(videooutsoc_dfi_p0_rddata[17])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_17 (
	.C(sys_clk),
	.CE((videooutsoc_storage[2] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay17),
	.INC(1'd1),
	.LD((videooutsoc_storage[2] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed17)
);

IOBUF IOBUF_17(
	.I(videooutsoc_dq_o17),
	.T(videooutsoc_dq_t17),
	.IO(ddram_dq[17]),
	.O(videooutsoc_dq_i_nodelay17)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_51 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(videooutsoc_dfi_p0_wrdata[18]),
	.D2(videooutsoc_dfi_p0_wrdata[50]),
	.D3(videooutsoc_dfi_p1_wrdata[18]),
	.D4(videooutsoc_dfi_p1_wrdata[50]),
	.D5(videooutsoc_dfi_p2_wrdata[18]),
	.D6(videooutsoc_dfi_p2_wrdata[50]),
	.D7(videooutsoc_dfi_p3_wrdata[18]),
	.D8(videooutsoc_dfi_p3_wrdata[50]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o18),
	.TQ(videooutsoc_dq_t18)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_18 (
	.BITSLIP((videooutsoc_storage[2] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed18),
	.RST((sys_rst | (videooutsoc_storage[2] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[50]),
	.Q2(videooutsoc_dfi_p3_rddata[18]),
	.Q3(videooutsoc_dfi_p2_rddata[50]),
	.Q4(videooutsoc_dfi_p2_rddata[18]),
	.Q5(videooutsoc_dfi_p1_rddata[50]),
	.Q6(videooutsoc_dfi_p1_rddata[18]),
	.Q7(videooutsoc_dfi_p0_rddata[50]),
	.Q8(videooutsoc_dfi_p0_rddata[18])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_18 (
	.C(sys_clk),
	.CE((videooutsoc_storage[2] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay18),
	.INC(1'd1),
	.LD((videooutsoc_storage[2] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed18)
);

IOBUF IOBUF_18(
	.I(videooutsoc_dq_o18),
	.T(videooutsoc_dq_t18),
	.IO(ddram_dq[18]),
	.O(videooutsoc_dq_i_nodelay18)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_52 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(videooutsoc_dfi_p0_wrdata[19]),
	.D2(videooutsoc_dfi_p0_wrdata[51]),
	.D3(videooutsoc_dfi_p1_wrdata[19]),
	.D4(videooutsoc_dfi_p1_wrdata[51]),
	.D5(videooutsoc_dfi_p2_wrdata[19]),
	.D6(videooutsoc_dfi_p2_wrdata[51]),
	.D7(videooutsoc_dfi_p3_wrdata[19]),
	.D8(videooutsoc_dfi_p3_wrdata[51]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o19),
	.TQ(videooutsoc_dq_t19)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_19 (
	.BITSLIP((videooutsoc_storage[2] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed19),
	.RST((sys_rst | (videooutsoc_storage[2] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[51]),
	.Q2(videooutsoc_dfi_p3_rddata[19]),
	.Q3(videooutsoc_dfi_p2_rddata[51]),
	.Q4(videooutsoc_dfi_p2_rddata[19]),
	.Q5(videooutsoc_dfi_p1_rddata[51]),
	.Q6(videooutsoc_dfi_p1_rddata[19]),
	.Q7(videooutsoc_dfi_p0_rddata[51]),
	.Q8(videooutsoc_dfi_p0_rddata[19])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_19 (
	.C(sys_clk),
	.CE((videooutsoc_storage[2] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay19),
	.INC(1'd1),
	.LD((videooutsoc_storage[2] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed19)
);

IOBUF IOBUF_19(
	.I(videooutsoc_dq_o19),
	.T(videooutsoc_dq_t19),
	.IO(ddram_dq[19]),
	.O(videooutsoc_dq_i_nodelay19)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_53 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(videooutsoc_dfi_p0_wrdata[20]),
	.D2(videooutsoc_dfi_p0_wrdata[52]),
	.D3(videooutsoc_dfi_p1_wrdata[20]),
	.D4(videooutsoc_dfi_p1_wrdata[52]),
	.D5(videooutsoc_dfi_p2_wrdata[20]),
	.D6(videooutsoc_dfi_p2_wrdata[52]),
	.D7(videooutsoc_dfi_p3_wrdata[20]),
	.D8(videooutsoc_dfi_p3_wrdata[52]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o20),
	.TQ(videooutsoc_dq_t20)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_20 (
	.BITSLIP((videooutsoc_storage[2] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed20),
	.RST((sys_rst | (videooutsoc_storage[2] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[52]),
	.Q2(videooutsoc_dfi_p3_rddata[20]),
	.Q3(videooutsoc_dfi_p2_rddata[52]),
	.Q4(videooutsoc_dfi_p2_rddata[20]),
	.Q5(videooutsoc_dfi_p1_rddata[52]),
	.Q6(videooutsoc_dfi_p1_rddata[20]),
	.Q7(videooutsoc_dfi_p0_rddata[52]),
	.Q8(videooutsoc_dfi_p0_rddata[20])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_20 (
	.C(sys_clk),
	.CE((videooutsoc_storage[2] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay20),
	.INC(1'd1),
	.LD((videooutsoc_storage[2] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed20)
);

IOBUF IOBUF_20(
	.I(videooutsoc_dq_o20),
	.T(videooutsoc_dq_t20),
	.IO(ddram_dq[20]),
	.O(videooutsoc_dq_i_nodelay20)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_54 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(videooutsoc_dfi_p0_wrdata[21]),
	.D2(videooutsoc_dfi_p0_wrdata[53]),
	.D3(videooutsoc_dfi_p1_wrdata[21]),
	.D4(videooutsoc_dfi_p1_wrdata[53]),
	.D5(videooutsoc_dfi_p2_wrdata[21]),
	.D6(videooutsoc_dfi_p2_wrdata[53]),
	.D7(videooutsoc_dfi_p3_wrdata[21]),
	.D8(videooutsoc_dfi_p3_wrdata[53]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o21),
	.TQ(videooutsoc_dq_t21)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_21 (
	.BITSLIP((videooutsoc_storage[2] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed21),
	.RST((sys_rst | (videooutsoc_storage[2] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[53]),
	.Q2(videooutsoc_dfi_p3_rddata[21]),
	.Q3(videooutsoc_dfi_p2_rddata[53]),
	.Q4(videooutsoc_dfi_p2_rddata[21]),
	.Q5(videooutsoc_dfi_p1_rddata[53]),
	.Q6(videooutsoc_dfi_p1_rddata[21]),
	.Q7(videooutsoc_dfi_p0_rddata[53]),
	.Q8(videooutsoc_dfi_p0_rddata[21])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_21 (
	.C(sys_clk),
	.CE((videooutsoc_storage[2] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay21),
	.INC(1'd1),
	.LD((videooutsoc_storage[2] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed21)
);

IOBUF IOBUF_21(
	.I(videooutsoc_dq_o21),
	.T(videooutsoc_dq_t21),
	.IO(ddram_dq[21]),
	.O(videooutsoc_dq_i_nodelay21)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_55 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(videooutsoc_dfi_p0_wrdata[22]),
	.D2(videooutsoc_dfi_p0_wrdata[54]),
	.D3(videooutsoc_dfi_p1_wrdata[22]),
	.D4(videooutsoc_dfi_p1_wrdata[54]),
	.D5(videooutsoc_dfi_p2_wrdata[22]),
	.D6(videooutsoc_dfi_p2_wrdata[54]),
	.D7(videooutsoc_dfi_p3_wrdata[22]),
	.D8(videooutsoc_dfi_p3_wrdata[54]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o22),
	.TQ(videooutsoc_dq_t22)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_22 (
	.BITSLIP((videooutsoc_storage[2] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed22),
	.RST((sys_rst | (videooutsoc_storage[2] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[54]),
	.Q2(videooutsoc_dfi_p3_rddata[22]),
	.Q3(videooutsoc_dfi_p2_rddata[54]),
	.Q4(videooutsoc_dfi_p2_rddata[22]),
	.Q5(videooutsoc_dfi_p1_rddata[54]),
	.Q6(videooutsoc_dfi_p1_rddata[22]),
	.Q7(videooutsoc_dfi_p0_rddata[54]),
	.Q8(videooutsoc_dfi_p0_rddata[22])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_22 (
	.C(sys_clk),
	.CE((videooutsoc_storage[2] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay22),
	.INC(1'd1),
	.LD((videooutsoc_storage[2] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed22)
);

IOBUF IOBUF_22(
	.I(videooutsoc_dq_o22),
	.T(videooutsoc_dq_t22),
	.IO(ddram_dq[22]),
	.O(videooutsoc_dq_i_nodelay22)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_56 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(videooutsoc_dfi_p0_wrdata[23]),
	.D2(videooutsoc_dfi_p0_wrdata[55]),
	.D3(videooutsoc_dfi_p1_wrdata[23]),
	.D4(videooutsoc_dfi_p1_wrdata[55]),
	.D5(videooutsoc_dfi_p2_wrdata[23]),
	.D6(videooutsoc_dfi_p2_wrdata[55]),
	.D7(videooutsoc_dfi_p3_wrdata[23]),
	.D8(videooutsoc_dfi_p3_wrdata[55]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o23),
	.TQ(videooutsoc_dq_t23)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_23 (
	.BITSLIP((videooutsoc_storage[2] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed23),
	.RST((sys_rst | (videooutsoc_storage[2] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[55]),
	.Q2(videooutsoc_dfi_p3_rddata[23]),
	.Q3(videooutsoc_dfi_p2_rddata[55]),
	.Q4(videooutsoc_dfi_p2_rddata[23]),
	.Q5(videooutsoc_dfi_p1_rddata[55]),
	.Q6(videooutsoc_dfi_p1_rddata[23]),
	.Q7(videooutsoc_dfi_p0_rddata[55]),
	.Q8(videooutsoc_dfi_p0_rddata[23])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_23 (
	.C(sys_clk),
	.CE((videooutsoc_storage[2] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay23),
	.INC(1'd1),
	.LD((videooutsoc_storage[2] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed23)
);

IOBUF IOBUF_23(
	.I(videooutsoc_dq_o23),
	.T(videooutsoc_dq_t23),
	.IO(ddram_dq[23]),
	.O(videooutsoc_dq_i_nodelay23)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_57 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(videooutsoc_dfi_p0_wrdata[24]),
	.D2(videooutsoc_dfi_p0_wrdata[56]),
	.D3(videooutsoc_dfi_p1_wrdata[24]),
	.D4(videooutsoc_dfi_p1_wrdata[56]),
	.D5(videooutsoc_dfi_p2_wrdata[24]),
	.D6(videooutsoc_dfi_p2_wrdata[56]),
	.D7(videooutsoc_dfi_p3_wrdata[24]),
	.D8(videooutsoc_dfi_p3_wrdata[56]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o24),
	.TQ(videooutsoc_dq_t24)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_24 (
	.BITSLIP((videooutsoc_storage[3] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed24),
	.RST((sys_rst | (videooutsoc_storage[3] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[56]),
	.Q2(videooutsoc_dfi_p3_rddata[24]),
	.Q3(videooutsoc_dfi_p2_rddata[56]),
	.Q4(videooutsoc_dfi_p2_rddata[24]),
	.Q5(videooutsoc_dfi_p1_rddata[56]),
	.Q6(videooutsoc_dfi_p1_rddata[24]),
	.Q7(videooutsoc_dfi_p0_rddata[56]),
	.Q8(videooutsoc_dfi_p0_rddata[24])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_24 (
	.C(sys_clk),
	.CE((videooutsoc_storage[3] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay24),
	.INC(1'd1),
	.LD((videooutsoc_storage[3] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed24)
);

IOBUF IOBUF_24(
	.I(videooutsoc_dq_o24),
	.T(videooutsoc_dq_t24),
	.IO(ddram_dq[24]),
	.O(videooutsoc_dq_i_nodelay24)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_58 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(videooutsoc_dfi_p0_wrdata[25]),
	.D2(videooutsoc_dfi_p0_wrdata[57]),
	.D3(videooutsoc_dfi_p1_wrdata[25]),
	.D4(videooutsoc_dfi_p1_wrdata[57]),
	.D5(videooutsoc_dfi_p2_wrdata[25]),
	.D6(videooutsoc_dfi_p2_wrdata[57]),
	.D7(videooutsoc_dfi_p3_wrdata[25]),
	.D8(videooutsoc_dfi_p3_wrdata[57]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o25),
	.TQ(videooutsoc_dq_t25)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_25 (
	.BITSLIP((videooutsoc_storage[3] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed25),
	.RST((sys_rst | (videooutsoc_storage[3] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[57]),
	.Q2(videooutsoc_dfi_p3_rddata[25]),
	.Q3(videooutsoc_dfi_p2_rddata[57]),
	.Q4(videooutsoc_dfi_p2_rddata[25]),
	.Q5(videooutsoc_dfi_p1_rddata[57]),
	.Q6(videooutsoc_dfi_p1_rddata[25]),
	.Q7(videooutsoc_dfi_p0_rddata[57]),
	.Q8(videooutsoc_dfi_p0_rddata[25])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_25 (
	.C(sys_clk),
	.CE((videooutsoc_storage[3] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay25),
	.INC(1'd1),
	.LD((videooutsoc_storage[3] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed25)
);

IOBUF IOBUF_25(
	.I(videooutsoc_dq_o25),
	.T(videooutsoc_dq_t25),
	.IO(ddram_dq[25]),
	.O(videooutsoc_dq_i_nodelay25)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_59 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(videooutsoc_dfi_p0_wrdata[26]),
	.D2(videooutsoc_dfi_p0_wrdata[58]),
	.D3(videooutsoc_dfi_p1_wrdata[26]),
	.D4(videooutsoc_dfi_p1_wrdata[58]),
	.D5(videooutsoc_dfi_p2_wrdata[26]),
	.D6(videooutsoc_dfi_p2_wrdata[58]),
	.D7(videooutsoc_dfi_p3_wrdata[26]),
	.D8(videooutsoc_dfi_p3_wrdata[58]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o26),
	.TQ(videooutsoc_dq_t26)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_26 (
	.BITSLIP((videooutsoc_storage[3] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed26),
	.RST((sys_rst | (videooutsoc_storage[3] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[58]),
	.Q2(videooutsoc_dfi_p3_rddata[26]),
	.Q3(videooutsoc_dfi_p2_rddata[58]),
	.Q4(videooutsoc_dfi_p2_rddata[26]),
	.Q5(videooutsoc_dfi_p1_rddata[58]),
	.Q6(videooutsoc_dfi_p1_rddata[26]),
	.Q7(videooutsoc_dfi_p0_rddata[58]),
	.Q8(videooutsoc_dfi_p0_rddata[26])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_26 (
	.C(sys_clk),
	.CE((videooutsoc_storage[3] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay26),
	.INC(1'd1),
	.LD((videooutsoc_storage[3] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed26)
);

IOBUF IOBUF_26(
	.I(videooutsoc_dq_o26),
	.T(videooutsoc_dq_t26),
	.IO(ddram_dq[26]),
	.O(videooutsoc_dq_i_nodelay26)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_60 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(videooutsoc_dfi_p0_wrdata[27]),
	.D2(videooutsoc_dfi_p0_wrdata[59]),
	.D3(videooutsoc_dfi_p1_wrdata[27]),
	.D4(videooutsoc_dfi_p1_wrdata[59]),
	.D5(videooutsoc_dfi_p2_wrdata[27]),
	.D6(videooutsoc_dfi_p2_wrdata[59]),
	.D7(videooutsoc_dfi_p3_wrdata[27]),
	.D8(videooutsoc_dfi_p3_wrdata[59]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o27),
	.TQ(videooutsoc_dq_t27)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_27 (
	.BITSLIP((videooutsoc_storage[3] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed27),
	.RST((sys_rst | (videooutsoc_storage[3] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[59]),
	.Q2(videooutsoc_dfi_p3_rddata[27]),
	.Q3(videooutsoc_dfi_p2_rddata[59]),
	.Q4(videooutsoc_dfi_p2_rddata[27]),
	.Q5(videooutsoc_dfi_p1_rddata[59]),
	.Q6(videooutsoc_dfi_p1_rddata[27]),
	.Q7(videooutsoc_dfi_p0_rddata[59]),
	.Q8(videooutsoc_dfi_p0_rddata[27])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_27 (
	.C(sys_clk),
	.CE((videooutsoc_storage[3] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay27),
	.INC(1'd1),
	.LD((videooutsoc_storage[3] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed27)
);

IOBUF IOBUF_27(
	.I(videooutsoc_dq_o27),
	.T(videooutsoc_dq_t27),
	.IO(ddram_dq[27]),
	.O(videooutsoc_dq_i_nodelay27)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_61 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(videooutsoc_dfi_p0_wrdata[28]),
	.D2(videooutsoc_dfi_p0_wrdata[60]),
	.D3(videooutsoc_dfi_p1_wrdata[28]),
	.D4(videooutsoc_dfi_p1_wrdata[60]),
	.D5(videooutsoc_dfi_p2_wrdata[28]),
	.D6(videooutsoc_dfi_p2_wrdata[60]),
	.D7(videooutsoc_dfi_p3_wrdata[28]),
	.D8(videooutsoc_dfi_p3_wrdata[60]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o28),
	.TQ(videooutsoc_dq_t28)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_28 (
	.BITSLIP((videooutsoc_storage[3] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed28),
	.RST((sys_rst | (videooutsoc_storage[3] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[60]),
	.Q2(videooutsoc_dfi_p3_rddata[28]),
	.Q3(videooutsoc_dfi_p2_rddata[60]),
	.Q4(videooutsoc_dfi_p2_rddata[28]),
	.Q5(videooutsoc_dfi_p1_rddata[60]),
	.Q6(videooutsoc_dfi_p1_rddata[28]),
	.Q7(videooutsoc_dfi_p0_rddata[60]),
	.Q8(videooutsoc_dfi_p0_rddata[28])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_28 (
	.C(sys_clk),
	.CE((videooutsoc_storage[3] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay28),
	.INC(1'd1),
	.LD((videooutsoc_storage[3] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed28)
);

IOBUF IOBUF_28(
	.I(videooutsoc_dq_o28),
	.T(videooutsoc_dq_t28),
	.IO(ddram_dq[28]),
	.O(videooutsoc_dq_i_nodelay28)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_62 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(videooutsoc_dfi_p0_wrdata[29]),
	.D2(videooutsoc_dfi_p0_wrdata[61]),
	.D3(videooutsoc_dfi_p1_wrdata[29]),
	.D4(videooutsoc_dfi_p1_wrdata[61]),
	.D5(videooutsoc_dfi_p2_wrdata[29]),
	.D6(videooutsoc_dfi_p2_wrdata[61]),
	.D7(videooutsoc_dfi_p3_wrdata[29]),
	.D8(videooutsoc_dfi_p3_wrdata[61]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o29),
	.TQ(videooutsoc_dq_t29)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_29 (
	.BITSLIP((videooutsoc_storage[3] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed29),
	.RST((sys_rst | (videooutsoc_storage[3] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[61]),
	.Q2(videooutsoc_dfi_p3_rddata[29]),
	.Q3(videooutsoc_dfi_p2_rddata[61]),
	.Q4(videooutsoc_dfi_p2_rddata[29]),
	.Q5(videooutsoc_dfi_p1_rddata[61]),
	.Q6(videooutsoc_dfi_p1_rddata[29]),
	.Q7(videooutsoc_dfi_p0_rddata[61]),
	.Q8(videooutsoc_dfi_p0_rddata[29])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_29 (
	.C(sys_clk),
	.CE((videooutsoc_storage[3] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay29),
	.INC(1'd1),
	.LD((videooutsoc_storage[3] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed29)
);

IOBUF IOBUF_29(
	.I(videooutsoc_dq_o29),
	.T(videooutsoc_dq_t29),
	.IO(ddram_dq[29]),
	.O(videooutsoc_dq_i_nodelay29)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_63 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(videooutsoc_dfi_p0_wrdata[30]),
	.D2(videooutsoc_dfi_p0_wrdata[62]),
	.D3(videooutsoc_dfi_p1_wrdata[30]),
	.D4(videooutsoc_dfi_p1_wrdata[62]),
	.D5(videooutsoc_dfi_p2_wrdata[30]),
	.D6(videooutsoc_dfi_p2_wrdata[62]),
	.D7(videooutsoc_dfi_p3_wrdata[30]),
	.D8(videooutsoc_dfi_p3_wrdata[62]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o30),
	.TQ(videooutsoc_dq_t30)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_30 (
	.BITSLIP((videooutsoc_storage[3] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed30),
	.RST((sys_rst | (videooutsoc_storage[3] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[62]),
	.Q2(videooutsoc_dfi_p3_rddata[30]),
	.Q3(videooutsoc_dfi_p2_rddata[62]),
	.Q4(videooutsoc_dfi_p2_rddata[30]),
	.Q5(videooutsoc_dfi_p1_rddata[62]),
	.Q6(videooutsoc_dfi_p1_rddata[30]),
	.Q7(videooutsoc_dfi_p0_rddata[62]),
	.Q8(videooutsoc_dfi_p0_rddata[30])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_30 (
	.C(sys_clk),
	.CE((videooutsoc_storage[3] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay30),
	.INC(1'd1),
	.LD((videooutsoc_storage[3] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed30)
);

IOBUF IOBUF_30(
	.I(videooutsoc_dq_o30),
	.T(videooutsoc_dq_t30),
	.IO(ddram_dq[30]),
	.O(videooutsoc_dq_i_nodelay30)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("BUF"),
	.DATA_WIDTH(4'd8),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_64 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(videooutsoc_dfi_p0_wrdata[31]),
	.D2(videooutsoc_dfi_p0_wrdata[63]),
	.D3(videooutsoc_dfi_p1_wrdata[31]),
	.D4(videooutsoc_dfi_p1_wrdata[63]),
	.D5(videooutsoc_dfi_p2_wrdata[31]),
	.D6(videooutsoc_dfi_p2_wrdata[63]),
	.D7(videooutsoc_dfi_p3_wrdata[31]),
	.D8(videooutsoc_dfi_p3_wrdata[63]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~videooutsoc_oe_dq)),
	.TCE(1'd1),
	.OQ(videooutsoc_dq_o31),
	.TQ(videooutsoc_dq_t31)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_31 (
	.BITSLIP((videooutsoc_storage[3] & videooutsoc_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(videooutsoc_dq_i_delayed31),
	.RST((sys_rst | (videooutsoc_storage[3] & videooutsoc_rdly_dq_rst_re))),
	.Q1(videooutsoc_dfi_p3_rddata[63]),
	.Q2(videooutsoc_dfi_p3_rddata[31]),
	.Q3(videooutsoc_dfi_p2_rddata[63]),
	.Q4(videooutsoc_dfi_p2_rddata[31]),
	.Q5(videooutsoc_dfi_p1_rddata[63]),
	.Q6(videooutsoc_dfi_p1_rddata[31]),
	.Q7(videooutsoc_dfi_p0_rddata[63]),
	.Q8(videooutsoc_dfi_p0_rddata[31])
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(3'd6),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_31 (
	.C(sys_clk),
	.CE((videooutsoc_storage[3] & videooutsoc_rdly_dq_inc_re)),
	.IDATAIN(videooutsoc_dq_i_nodelay31),
	.INC(1'd1),
	.LD((videooutsoc_storage[3] & videooutsoc_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(videooutsoc_dq_i_delayed31)
);

IOBUF IOBUF_31(
	.I(videooutsoc_dq_o31),
	.T(videooutsoc_dq_t31),
	.IO(ddram_dq[31]),
	.O(videooutsoc_dq_i_nodelay31)
);

reg [23:0] storage_2[0:7];
reg [2:0] memadr_3;
always @(posedge sys_clk) begin
	if (videooutsoc_sdram_bankmachine0_wrport_we)
		storage_2[videooutsoc_sdram_bankmachine0_wrport_adr] <= videooutsoc_sdram_bankmachine0_wrport_dat_w;
	memadr_3 <= videooutsoc_sdram_bankmachine0_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign videooutsoc_sdram_bankmachine0_wrport_dat_r = storage_2[memadr_3];
assign videooutsoc_sdram_bankmachine0_rdport_dat_r = storage_2[videooutsoc_sdram_bankmachine0_rdport_adr];

reg [23:0] storage_3[0:7];
reg [2:0] memadr_4;
always @(posedge sys_clk) begin
	if (videooutsoc_sdram_bankmachine1_wrport_we)
		storage_3[videooutsoc_sdram_bankmachine1_wrport_adr] <= videooutsoc_sdram_bankmachine1_wrport_dat_w;
	memadr_4 <= videooutsoc_sdram_bankmachine1_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign videooutsoc_sdram_bankmachine1_wrport_dat_r = storage_3[memadr_4];
assign videooutsoc_sdram_bankmachine1_rdport_dat_r = storage_3[videooutsoc_sdram_bankmachine1_rdport_adr];

reg [23:0] storage_4[0:7];
reg [2:0] memadr_5;
always @(posedge sys_clk) begin
	if (videooutsoc_sdram_bankmachine2_wrport_we)
		storage_4[videooutsoc_sdram_bankmachine2_wrport_adr] <= videooutsoc_sdram_bankmachine2_wrport_dat_w;
	memadr_5 <= videooutsoc_sdram_bankmachine2_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign videooutsoc_sdram_bankmachine2_wrport_dat_r = storage_4[memadr_5];
assign videooutsoc_sdram_bankmachine2_rdport_dat_r = storage_4[videooutsoc_sdram_bankmachine2_rdport_adr];

reg [23:0] storage_5[0:7];
reg [2:0] memadr_6;
always @(posedge sys_clk) begin
	if (videooutsoc_sdram_bankmachine3_wrport_we)
		storage_5[videooutsoc_sdram_bankmachine3_wrport_adr] <= videooutsoc_sdram_bankmachine3_wrport_dat_w;
	memadr_6 <= videooutsoc_sdram_bankmachine3_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign videooutsoc_sdram_bankmachine3_wrport_dat_r = storage_5[memadr_6];
assign videooutsoc_sdram_bankmachine3_rdport_dat_r = storage_5[videooutsoc_sdram_bankmachine3_rdport_adr];

reg [23:0] storage_6[0:7];
reg [2:0] memadr_7;
always @(posedge sys_clk) begin
	if (videooutsoc_sdram_bankmachine4_wrport_we)
		storage_6[videooutsoc_sdram_bankmachine4_wrport_adr] <= videooutsoc_sdram_bankmachine4_wrport_dat_w;
	memadr_7 <= videooutsoc_sdram_bankmachine4_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign videooutsoc_sdram_bankmachine4_wrport_dat_r = storage_6[memadr_7];
assign videooutsoc_sdram_bankmachine4_rdport_dat_r = storage_6[videooutsoc_sdram_bankmachine4_rdport_adr];

reg [23:0] storage_7[0:7];
reg [2:0] memadr_8;
always @(posedge sys_clk) begin
	if (videooutsoc_sdram_bankmachine5_wrport_we)
		storage_7[videooutsoc_sdram_bankmachine5_wrport_adr] <= videooutsoc_sdram_bankmachine5_wrport_dat_w;
	memadr_8 <= videooutsoc_sdram_bankmachine5_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign videooutsoc_sdram_bankmachine5_wrport_dat_r = storage_7[memadr_8];
assign videooutsoc_sdram_bankmachine5_rdport_dat_r = storage_7[videooutsoc_sdram_bankmachine5_rdport_adr];

reg [23:0] storage_8[0:7];
reg [2:0] memadr_9;
always @(posedge sys_clk) begin
	if (videooutsoc_sdram_bankmachine6_wrport_we)
		storage_8[videooutsoc_sdram_bankmachine6_wrport_adr] <= videooutsoc_sdram_bankmachine6_wrport_dat_w;
	memadr_9 <= videooutsoc_sdram_bankmachine6_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign videooutsoc_sdram_bankmachine6_wrport_dat_r = storage_8[memadr_9];
assign videooutsoc_sdram_bankmachine6_rdport_dat_r = storage_8[videooutsoc_sdram_bankmachine6_rdport_adr];

reg [23:0] storage_9[0:7];
reg [2:0] memadr_10;
always @(posedge sys_clk) begin
	if (videooutsoc_sdram_bankmachine7_wrport_we)
		storage_9[videooutsoc_sdram_bankmachine7_wrport_adr] <= videooutsoc_sdram_bankmachine7_wrport_dat_w;
	memadr_10 <= videooutsoc_sdram_bankmachine7_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign videooutsoc_sdram_bankmachine7_wrport_dat_r = storage_9[memadr_10];
assign videooutsoc_sdram_bankmachine7_rdport_dat_r = storage_9[videooutsoc_sdram_bankmachine7_rdport_adr];

reg [25:0] tag_mem[0:255];
reg [7:0] memadr_11;
always @(posedge sys_clk) begin
	if (videooutsoc_tag_port_we)
		tag_mem[videooutsoc_tag_port_adr] <= videooutsoc_tag_port_dat_w;
	memadr_11 <= videooutsoc_tag_port_adr;
end

assign videooutsoc_tag_port_dat_r = tag_mem[memadr_11];

reg [26:0] storage_10[0:3];
reg [1:0] memadr_12;
reg [26:0] memdat_2;
always @(posedge pix_clk) begin
	if (cmd_fifo_wrport_we)
		storage_10[cmd_fifo_wrport_adr] <= cmd_fifo_wrport_dat_w;
	memadr_12 <= cmd_fifo_wrport_adr;
end

always @(posedge sys_clk) begin
	memdat_2 <= storage_10[cmd_fifo_rdport_adr];
end

assign cmd_fifo_wrport_dat_r = storage_10[memadr_12];
assign cmd_fifo_rdport_dat_r = memdat_2;

reg [257:0] storage_11[0:15];
reg [3:0] memadr_13;
reg [257:0] memdat_3;
always @(posedge sys_clk) begin
	if (rdata_fifo_wrport_we)
		storage_11[rdata_fifo_wrport_adr] <= rdata_fifo_wrport_dat_w;
	memadr_13 <= rdata_fifo_wrport_adr;
end

always @(posedge pix_clk) begin
	memdat_3 <= storage_11[rdata_fifo_rdport_adr];
end

assign rdata_fifo_wrport_dat_r = storage_11[memadr_13];
assign rdata_fifo_rdport_dat_r = memdat_3;

reg [17:0] storage_12[0:3];
reg [1:0] memadr_14;
always @(posedge pix_clk) begin
	if (cmd_buffer_wrport_we)
		storage_12[cmd_buffer_wrport_adr] <= cmd_buffer_wrport_dat_w;
	memadr_14 <= cmd_buffer_wrport_adr;
end

always @(posedge pix_clk) begin
end

assign cmd_buffer_wrport_dat_r = storage_12[memadr_14];
assign cmd_buffer_rdport_dat_r = storage_12[cmd_buffer_rdport_adr];

reg [161:0] storage_13[0:1];
reg [0:0] memadr_15;
reg [161:0] memdat_4;
always @(posedge sys_clk) begin
	if (hdmi_out0_core_initiator_cdc_wrport_we)
		storage_13[hdmi_out0_core_initiator_cdc_wrport_adr] <= hdmi_out0_core_initiator_cdc_wrport_dat_w;
	memadr_15 <= hdmi_out0_core_initiator_cdc_wrport_adr;
end

always @(posedge pix_clk) begin
	memdat_4 <= storage_13[hdmi_out0_core_initiator_cdc_rdport_adr];
end

assign hdmi_out0_core_initiator_cdc_wrport_dat_r = storage_13[memadr_15];
assign hdmi_out0_core_initiator_cdc_rdport_dat_r = memdat_4;

reg [17:0] storage_14[0:511];
reg [8:0] memadr_16;
reg [17:0] memdat_5;
always @(posedge pix_clk) begin
	if (hdmi_out0_core_dmareader_fifo_wrport_we)
		storage_14[hdmi_out0_core_dmareader_fifo_wrport_adr] <= hdmi_out0_core_dmareader_fifo_wrport_dat_w;
	memadr_16 <= hdmi_out0_core_dmareader_fifo_wrport_adr;
end

always @(posedge pix_clk) begin
	if (hdmi_out0_core_dmareader_fifo_rdport_re)
		memdat_5 <= storage_14[hdmi_out0_core_dmareader_fifo_rdport_adr];
end

assign hdmi_out0_core_dmareader_fifo_wrport_dat_r = storage_14[memadr_16];
assign hdmi_out0_core_dmareader_fifo_rdport_dat_r = memdat_5;

MMCME2_ADV #(
	.BANDWIDTH("OPTIMIZED"),
	.CLKFBOUT_MULT_F(30.0),
	.CLKFBOUT_PHASE(0.0),
	.CLKIN1_PERIOD(10.0),
	.CLKOUT0_DIVIDE_F(10.0),
	.CLKOUT0_PHASE(0.0),
	.CLKOUT1_DIVIDE(2'd2),
	.CLKOUT1_PHASE(0.0),
	.DIVCLK_DIVIDE(2'd2),
	.REF_JITTER1(0.01)
) MMCME2_ADV (
	.CLKFBIN(hdmi_out0_driver_s7hdmioutclocking_mmcm_fb),
	.CLKIN1(clk100_clk),
	.DADDR(hdmi_out0_driver_s7hdmioutclocking_mmcm_adr_storage),
	.DCLK(sys_clk),
	.DEN((hdmi_out0_driver_s7hdmioutclocking_mmcm_read_re | hdmi_out0_driver_s7hdmioutclocking_mmcm_write_re)),
	.DI(hdmi_out0_driver_s7hdmioutclocking_mmcm_dat_w_storage),
	.DWE(hdmi_out0_driver_s7hdmioutclocking_mmcm_write_re),
	.RST(hdmi_out0_driver_s7hdmioutclocking_mmcm_reset_storage),
	.CLKFBOUT(hdmi_out0_driver_s7hdmioutclocking_mmcm_fb),
	.CLKOUT0(hdmi_out0_driver_s7hdmioutclocking_mmcm_clk0),
	.CLKOUT1(hdmi_out0_driver_s7hdmioutclocking_mmcm_clk1),
	.DO(hdmi_out0_driver_s7hdmioutclocking_mmcm_dat_r_status),
	.DRDY(hdmi_out0_driver_s7hdmioutclocking_mmcm_drdy),
	.LOCKED(hdmi_out0_driver_s7hdmioutclocking_mmcm_locked)
);

BUFG BUFG_5(
	.I(hdmi_out0_driver_s7hdmioutclocking_mmcm_clk0),
	.O(pix_clk)
);

BUFG BUFG_6(
	.I(hdmi_out0_driver_s7hdmioutclocking_mmcm_clk1),
	.O(pix5x_clk)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("DDR"),
	.DATA_WIDTH(4'd10),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_65 (
	.CLK(pix5x_clk),
	.CLKDIV(pix_clk),
	.D1(hdmi_out0_driver_s7hdmioutclocking_data1[0]),
	.D2(hdmi_out0_driver_s7hdmioutclocking_data1[1]),
	.D3(hdmi_out0_driver_s7hdmioutclocking_data1[2]),
	.D4(hdmi_out0_driver_s7hdmioutclocking_data1[3]),
	.D5(hdmi_out0_driver_s7hdmioutclocking_data1[4]),
	.D6(hdmi_out0_driver_s7hdmioutclocking_data1[5]),
	.D7(hdmi_out0_driver_s7hdmioutclocking_data1[6]),
	.D8(hdmi_out0_driver_s7hdmioutclocking_data1[7]),
	.OCE(hdmi_out0_driver_s7hdmioutclocking_ce),
	.RST(pix_rst),
	.SHIFTIN1(hdmi_out0_driver_s7hdmioutclocking_shift[0]),
	.SHIFTIN2(hdmi_out0_driver_s7hdmioutclocking_shift[1]),
	.TCE(1'd0),
	.OQ(hdmi_out0_driver_s7hdmioutclocking_pad_se)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("DDR"),
	.DATA_WIDTH(4'd10),
	.SERDES_MODE("SLAVE"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_66 (
	.CLK(pix5x_clk),
	.CLKDIV(pix_clk),
	.D1(1'd0),
	.D2(1'd0),
	.D3(hdmi_out0_driver_s7hdmioutclocking_data1[8]),
	.D4(hdmi_out0_driver_s7hdmioutclocking_data1[9]),
	.D5(1'd0),
	.D6(1'd0),
	.D7(1'd0),
	.D8(1'd0),
	.OCE(hdmi_out0_driver_s7hdmioutclocking_ce),
	.RST(pix_rst),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.TCE(1'd0),
	.SHIFTOUT1(hdmi_out0_driver_s7hdmioutclocking_shift[0]),
	.SHIFTOUT2(hdmi_out0_driver_s7hdmioutclocking_shift[1])
);

OBUFDS OBUFDS_1(
	.I(hdmi_out0_driver_s7hdmioutclocking_pad_se),
	.O(hdmi_out_clk_p),
	.OB(hdmi_out_clk_n)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("DDR"),
	.DATA_WIDTH(4'd10),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_67 (
	.CLK(pix5x_clk),
	.CLKDIV(pix_clk),
	.D1(hdmi_out0_driver_hdmi_phy_es0_data[0]),
	.D2(hdmi_out0_driver_hdmi_phy_es0_data[1]),
	.D3(hdmi_out0_driver_hdmi_phy_es0_data[2]),
	.D4(hdmi_out0_driver_hdmi_phy_es0_data[3]),
	.D5(hdmi_out0_driver_hdmi_phy_es0_data[4]),
	.D6(hdmi_out0_driver_hdmi_phy_es0_data[5]),
	.D7(hdmi_out0_driver_hdmi_phy_es0_data[6]),
	.D8(hdmi_out0_driver_hdmi_phy_es0_data[7]),
	.OCE(hdmi_out0_driver_hdmi_phy_es0_ce),
	.RST(pix_rst),
	.SHIFTIN1(hdmi_out0_driver_hdmi_phy_es0_shift[0]),
	.SHIFTIN2(hdmi_out0_driver_hdmi_phy_es0_shift[1]),
	.TCE(1'd0),
	.OQ(hdmi_out0_driver_hdmi_phy_es0_pad_se)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("DDR"),
	.DATA_WIDTH(4'd10),
	.SERDES_MODE("SLAVE"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_68 (
	.CLK(pix5x_clk),
	.CLKDIV(pix_clk),
	.D1(1'd0),
	.D2(1'd0),
	.D3(hdmi_out0_driver_hdmi_phy_es0_data[8]),
	.D4(hdmi_out0_driver_hdmi_phy_es0_data[9]),
	.D5(1'd0),
	.D6(1'd0),
	.D7(1'd0),
	.D8(1'd0),
	.OCE(hdmi_out0_driver_hdmi_phy_es0_ce),
	.RST(pix_rst),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.TCE(1'd0),
	.SHIFTOUT1(hdmi_out0_driver_hdmi_phy_es0_shift[0]),
	.SHIFTOUT2(hdmi_out0_driver_hdmi_phy_es0_shift[1])
);

OBUFDS OBUFDS_2(
	.I(hdmi_out0_driver_hdmi_phy_es0_pad_se),
	.O(hdmi_out_data0_p),
	.OB(hdmi_out_data0_n)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("DDR"),
	.DATA_WIDTH(4'd10),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_69 (
	.CLK(pix5x_clk),
	.CLKDIV(pix_clk),
	.D1(hdmi_out0_driver_hdmi_phy_es1_data[0]),
	.D2(hdmi_out0_driver_hdmi_phy_es1_data[1]),
	.D3(hdmi_out0_driver_hdmi_phy_es1_data[2]),
	.D4(hdmi_out0_driver_hdmi_phy_es1_data[3]),
	.D5(hdmi_out0_driver_hdmi_phy_es1_data[4]),
	.D6(hdmi_out0_driver_hdmi_phy_es1_data[5]),
	.D7(hdmi_out0_driver_hdmi_phy_es1_data[6]),
	.D8(hdmi_out0_driver_hdmi_phy_es1_data[7]),
	.OCE(hdmi_out0_driver_hdmi_phy_es1_ce),
	.RST(pix_rst),
	.SHIFTIN1(hdmi_out0_driver_hdmi_phy_es1_shift[0]),
	.SHIFTIN2(hdmi_out0_driver_hdmi_phy_es1_shift[1]),
	.TCE(1'd0),
	.OQ(hdmi_out0_driver_hdmi_phy_es1_pad_se)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("DDR"),
	.DATA_WIDTH(4'd10),
	.SERDES_MODE("SLAVE"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_70 (
	.CLK(pix5x_clk),
	.CLKDIV(pix_clk),
	.D1(1'd0),
	.D2(1'd0),
	.D3(hdmi_out0_driver_hdmi_phy_es1_data[8]),
	.D4(hdmi_out0_driver_hdmi_phy_es1_data[9]),
	.D5(1'd0),
	.D6(1'd0),
	.D7(1'd0),
	.D8(1'd0),
	.OCE(hdmi_out0_driver_hdmi_phy_es1_ce),
	.RST(pix_rst),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.TCE(1'd0),
	.SHIFTOUT1(hdmi_out0_driver_hdmi_phy_es1_shift[0]),
	.SHIFTOUT2(hdmi_out0_driver_hdmi_phy_es1_shift[1])
);

OBUFDS OBUFDS_3(
	.I(hdmi_out0_driver_hdmi_phy_es1_pad_se),
	.O(hdmi_out_data1_p),
	.OB(hdmi_out_data1_n)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("DDR"),
	.DATA_WIDTH(4'd10),
	.SERDES_MODE("MASTER"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_71 (
	.CLK(pix5x_clk),
	.CLKDIV(pix_clk),
	.D1(hdmi_out0_driver_hdmi_phy_es2_data[0]),
	.D2(hdmi_out0_driver_hdmi_phy_es2_data[1]),
	.D3(hdmi_out0_driver_hdmi_phy_es2_data[2]),
	.D4(hdmi_out0_driver_hdmi_phy_es2_data[3]),
	.D5(hdmi_out0_driver_hdmi_phy_es2_data[4]),
	.D6(hdmi_out0_driver_hdmi_phy_es2_data[5]),
	.D7(hdmi_out0_driver_hdmi_phy_es2_data[6]),
	.D8(hdmi_out0_driver_hdmi_phy_es2_data[7]),
	.OCE(hdmi_out0_driver_hdmi_phy_es2_ce),
	.RST(pix_rst),
	.SHIFTIN1(hdmi_out0_driver_hdmi_phy_es2_shift[0]),
	.SHIFTIN2(hdmi_out0_driver_hdmi_phy_es2_shift[1]),
	.TCE(1'd0),
	.OQ(hdmi_out0_driver_hdmi_phy_es2_pad_se)
);

OSERDESE2 #(
	.DATA_RATE_OQ("DDR"),
	.DATA_RATE_TQ("DDR"),
	.DATA_WIDTH(4'd10),
	.SERDES_MODE("SLAVE"),
	.TRISTATE_WIDTH(1'd1)
) OSERDESE2_72 (
	.CLK(pix5x_clk),
	.CLKDIV(pix_clk),
	.D1(1'd0),
	.D2(1'd0),
	.D3(hdmi_out0_driver_hdmi_phy_es2_data[8]),
	.D4(hdmi_out0_driver_hdmi_phy_es2_data[9]),
	.D5(1'd0),
	.D6(1'd0),
	.D7(1'd0),
	.D8(1'd0),
	.OCE(hdmi_out0_driver_hdmi_phy_es2_ce),
	.RST(pix_rst),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.TCE(1'd0),
	.SHIFTOUT1(hdmi_out0_driver_hdmi_phy_es2_shift[0]),
	.SHIFTOUT2(hdmi_out0_driver_hdmi_phy_es2_shift[1])
);

OBUFDS OBUFDS_4(
	.I(hdmi_out0_driver_hdmi_phy_es2_pad_se),
	.O(hdmi_out_data2_p),
	.OB(hdmi_out_data2_n)
);

reg [9:0] storage_15[0:3];
reg [1:0] memadr_17;
always @(posedge pix_clk) begin
	if (hdmi_out0_resetinserter_y_fifo_wrport_we)
		storage_15[hdmi_out0_resetinserter_y_fifo_wrport_adr] <= hdmi_out0_resetinserter_y_fifo_wrport_dat_w;
	memadr_17 <= hdmi_out0_resetinserter_y_fifo_wrport_adr;
end

always @(posedge pix_clk) begin
end

assign hdmi_out0_resetinserter_y_fifo_wrport_dat_r = storage_15[memadr_17];
assign hdmi_out0_resetinserter_y_fifo_rdport_dat_r = storage_15[hdmi_out0_resetinserter_y_fifo_rdport_adr];

reg [9:0] storage_16[0:3];
reg [1:0] memadr_18;
always @(posedge pix_clk) begin
	if (hdmi_out0_resetinserter_cb_fifo_wrport_we)
		storage_16[hdmi_out0_resetinserter_cb_fifo_wrport_adr] <= hdmi_out0_resetinserter_cb_fifo_wrport_dat_w;
	memadr_18 <= hdmi_out0_resetinserter_cb_fifo_wrport_adr;
end

always @(posedge pix_clk) begin
end

assign hdmi_out0_resetinserter_cb_fifo_wrport_dat_r = storage_16[memadr_18];
assign hdmi_out0_resetinserter_cb_fifo_rdport_dat_r = storage_16[hdmi_out0_resetinserter_cb_fifo_rdport_adr];

reg [9:0] storage_17[0:3];
reg [1:0] memadr_19;
always @(posedge pix_clk) begin
	if (hdmi_out0_resetinserter_cr_fifo_wrport_we)
		storage_17[hdmi_out0_resetinserter_cr_fifo_wrport_adr] <= hdmi_out0_resetinserter_cr_fifo_wrport_dat_w;
	memadr_19 <= hdmi_out0_resetinserter_cr_fifo_wrport_adr;
end

always @(posedge pix_clk) begin
end

assign hdmi_out0_resetinserter_cr_fifo_wrport_dat_r = storage_17[memadr_19];
assign hdmi_out0_resetinserter_cr_fifo_rdport_dat_r = storage_17[hdmi_out0_resetinserter_cr_fifo_rdport_adr];

reg [7:0] data_mem_grain0[0:255];
reg [7:0] memadr_20;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[0])
		data_mem_grain0[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[7:0];
	memadr_20 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[7:0] = data_mem_grain0[memadr_20];

reg [7:0] data_mem_grain1[0:255];
reg [7:0] memadr_21;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[1])
		data_mem_grain1[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[15:8];
	memadr_21 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[15:8] = data_mem_grain1[memadr_21];

reg [7:0] data_mem_grain2[0:255];
reg [7:0] memadr_22;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[2])
		data_mem_grain2[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[23:16];
	memadr_22 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[23:16] = data_mem_grain2[memadr_22];

reg [7:0] data_mem_grain3[0:255];
reg [7:0] memadr_23;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[3])
		data_mem_grain3[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[31:24];
	memadr_23 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[31:24] = data_mem_grain3[memadr_23];

reg [7:0] data_mem_grain4[0:255];
reg [7:0] memadr_24;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[4])
		data_mem_grain4[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[39:32];
	memadr_24 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[39:32] = data_mem_grain4[memadr_24];

reg [7:0] data_mem_grain5[0:255];
reg [7:0] memadr_25;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[5])
		data_mem_grain5[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[47:40];
	memadr_25 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[47:40] = data_mem_grain5[memadr_25];

reg [7:0] data_mem_grain6[0:255];
reg [7:0] memadr_26;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[6])
		data_mem_grain6[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[55:48];
	memadr_26 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[55:48] = data_mem_grain6[memadr_26];

reg [7:0] data_mem_grain7[0:255];
reg [7:0] memadr_27;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[7])
		data_mem_grain7[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[63:56];
	memadr_27 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[63:56] = data_mem_grain7[memadr_27];

reg [7:0] data_mem_grain8[0:255];
reg [7:0] memadr_28;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[8])
		data_mem_grain8[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[71:64];
	memadr_28 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[71:64] = data_mem_grain8[memadr_28];

reg [7:0] data_mem_grain9[0:255];
reg [7:0] memadr_29;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[9])
		data_mem_grain9[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[79:72];
	memadr_29 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[79:72] = data_mem_grain9[memadr_29];

reg [7:0] data_mem_grain10[0:255];
reg [7:0] memadr_30;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[10])
		data_mem_grain10[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[87:80];
	memadr_30 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[87:80] = data_mem_grain10[memadr_30];

reg [7:0] data_mem_grain11[0:255];
reg [7:0] memadr_31;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[11])
		data_mem_grain11[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[95:88];
	memadr_31 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[95:88] = data_mem_grain11[memadr_31];

reg [7:0] data_mem_grain12[0:255];
reg [7:0] memadr_32;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[12])
		data_mem_grain12[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[103:96];
	memadr_32 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[103:96] = data_mem_grain12[memadr_32];

reg [7:0] data_mem_grain13[0:255];
reg [7:0] memadr_33;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[13])
		data_mem_grain13[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[111:104];
	memadr_33 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[111:104] = data_mem_grain13[memadr_33];

reg [7:0] data_mem_grain14[0:255];
reg [7:0] memadr_34;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[14])
		data_mem_grain14[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[119:112];
	memadr_34 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[119:112] = data_mem_grain14[memadr_34];

reg [7:0] data_mem_grain15[0:255];
reg [7:0] memadr_35;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[15])
		data_mem_grain15[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[127:120];
	memadr_35 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[127:120] = data_mem_grain15[memadr_35];

reg [7:0] data_mem_grain16[0:255];
reg [7:0] memadr_36;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[16])
		data_mem_grain16[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[135:128];
	memadr_36 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[135:128] = data_mem_grain16[memadr_36];

reg [7:0] data_mem_grain17[0:255];
reg [7:0] memadr_37;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[17])
		data_mem_grain17[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[143:136];
	memadr_37 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[143:136] = data_mem_grain17[memadr_37];

reg [7:0] data_mem_grain18[0:255];
reg [7:0] memadr_38;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[18])
		data_mem_grain18[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[151:144];
	memadr_38 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[151:144] = data_mem_grain18[memadr_38];

reg [7:0] data_mem_grain19[0:255];
reg [7:0] memadr_39;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[19])
		data_mem_grain19[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[159:152];
	memadr_39 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[159:152] = data_mem_grain19[memadr_39];

reg [7:0] data_mem_grain20[0:255];
reg [7:0] memadr_40;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[20])
		data_mem_grain20[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[167:160];
	memadr_40 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[167:160] = data_mem_grain20[memadr_40];

reg [7:0] data_mem_grain21[0:255];
reg [7:0] memadr_41;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[21])
		data_mem_grain21[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[175:168];
	memadr_41 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[175:168] = data_mem_grain21[memadr_41];

reg [7:0] data_mem_grain22[0:255];
reg [7:0] memadr_42;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[22])
		data_mem_grain22[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[183:176];
	memadr_42 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[183:176] = data_mem_grain22[memadr_42];

reg [7:0] data_mem_grain23[0:255];
reg [7:0] memadr_43;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[23])
		data_mem_grain23[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[191:184];
	memadr_43 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[191:184] = data_mem_grain23[memadr_43];

reg [7:0] data_mem_grain24[0:255];
reg [7:0] memadr_44;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[24])
		data_mem_grain24[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[199:192];
	memadr_44 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[199:192] = data_mem_grain24[memadr_44];

reg [7:0] data_mem_grain25[0:255];
reg [7:0] memadr_45;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[25])
		data_mem_grain25[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[207:200];
	memadr_45 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[207:200] = data_mem_grain25[memadr_45];

reg [7:0] data_mem_grain26[0:255];
reg [7:0] memadr_46;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[26])
		data_mem_grain26[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[215:208];
	memadr_46 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[215:208] = data_mem_grain26[memadr_46];

reg [7:0] data_mem_grain27[0:255];
reg [7:0] memadr_47;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[27])
		data_mem_grain27[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[223:216];
	memadr_47 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[223:216] = data_mem_grain27[memadr_47];

reg [7:0] data_mem_grain28[0:255];
reg [7:0] memadr_48;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[28])
		data_mem_grain28[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[231:224];
	memadr_48 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[231:224] = data_mem_grain28[memadr_48];

reg [7:0] data_mem_grain29[0:255];
reg [7:0] memadr_49;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[29])
		data_mem_grain29[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[239:232];
	memadr_49 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[239:232] = data_mem_grain29[memadr_49];

reg [7:0] data_mem_grain30[0:255];
reg [7:0] memadr_50;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[30])
		data_mem_grain30[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[247:240];
	memadr_50 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[247:240] = data_mem_grain30[memadr_50];

reg [7:0] data_mem_grain31[0:255];
reg [7:0] memadr_51;
always @(posedge sys_clk) begin
	if (videooutsoc_data_port_we[31])
		data_mem_grain31[videooutsoc_data_port_adr] <= videooutsoc_data_port_dat_w[255:248];
	memadr_51 <= videooutsoc_data_port_adr;
end

assign videooutsoc_data_port_dat_r[255:248] = data_mem_grain31[memadr_51];

(* ars_ff = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE (
	.C(sys_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(xilinxasyncresetsynchronizerimpl0),
	.Q(xilinxasyncresetsynchronizerimpl0_rst_meta)
);

(* ars_ff = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_1 (
	.C(sys_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl0_rst_meta),
	.PRE(xilinxasyncresetsynchronizerimpl0),
	.Q(sys_rst)
);

(* ars_ff = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_2 (
	.C(clk200_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(xilinxasyncresetsynchronizerimpl1),
	.Q(xilinxasyncresetsynchronizerimpl1_rst_meta)
);

(* ars_ff = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_3 (
	.C(clk200_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl1_rst_meta),
	.PRE(xilinxasyncresetsynchronizerimpl1),
	.Q(clk200_rst)
);

(* ars_ff = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_4 (
	.C(clk100_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(xilinxasyncresetsynchronizerimpl2),
	.Q(xilinxasyncresetsynchronizerimpl2_rst_meta)
);

(* ars_ff = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_5 (
	.C(clk100_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl2_rst_meta),
	.PRE(xilinxasyncresetsynchronizerimpl2),
	.Q(clk100_rst)
);

endmodule
