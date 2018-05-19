/* Machine-generated using Migen */
module top(
	input clk100,
	input cpu_reset,
	output reg serial_tx,
	input serial_rx,
	input user_sw0,
	output oled_dc,
	output oled_res,
	output oled_sclk,
	output oled_sdin,
	output oled_vbat,
	output oled_vdd,
	output [14:0] ddram_a,
	output [2:0] ddram_ba,
	output ddram_ras_n,
	output ddram_cas_n,
	output ddram_we_n,
	output [1:0] ddram_dm,
	inout [15:0] ddram_dq,
	output [1:0] ddram_dqs_p,
	output [1:0] ddram_dqs_n,
	output ddram_clk_p,
	output ddram_clk_n,
	output ddram_cke,
	output ddram_odt,
	output ddram_reset_n,
	output reg spiflash_1x_cs_n,
	output reg spiflash_1x_mosi,
	input spiflash_1x_miso,
	output spiflash_1x_wp,
	output spiflash_1x_hold,
	output eth_clocks_tx,
	input eth_clocks_rx,
	output eth_rst_n,
	input eth_int_n,
	inout eth_mdio,
	output eth_mdc,
	input eth_rx_ctl,
	input [3:0] eth_rx_data,
	output eth_tx_ctl,
	output [3:0] eth_tx_data
);

wire [29:0] soc_netsoc_netsoc_ibus_adr;
wire [31:0] soc_netsoc_netsoc_ibus_dat_w;
wire [31:0] soc_netsoc_netsoc_ibus_dat_r;
wire [3:0] soc_netsoc_netsoc_ibus_sel;
wire soc_netsoc_netsoc_ibus_cyc;
wire soc_netsoc_netsoc_ibus_stb;
wire soc_netsoc_netsoc_ibus_ack;
wire soc_netsoc_netsoc_ibus_we;
wire [2:0] soc_netsoc_netsoc_ibus_cti;
wire [1:0] soc_netsoc_netsoc_ibus_bte;
wire soc_netsoc_netsoc_ibus_err;
wire [29:0] soc_netsoc_netsoc_dbus_adr;
wire [31:0] soc_netsoc_netsoc_dbus_dat_w;
wire [31:0] soc_netsoc_netsoc_dbus_dat_r;
wire [3:0] soc_netsoc_netsoc_dbus_sel;
wire soc_netsoc_netsoc_dbus_cyc;
wire soc_netsoc_netsoc_dbus_stb;
wire soc_netsoc_netsoc_dbus_ack;
wire soc_netsoc_netsoc_dbus_we;
wire [2:0] soc_netsoc_netsoc_dbus_cti;
wire [1:0] soc_netsoc_netsoc_dbus_bte;
wire soc_netsoc_netsoc_dbus_err;
reg [31:0] soc_netsoc_netsoc_interrupt = 32'd0;
wire [31:0] soc_netsoc_netsoc_i_adr_o;
wire [31:0] soc_netsoc_netsoc_d_adr_o;
wire [29:0] soc_netsoc_netsoc_rom_bus_adr;
wire [31:0] soc_netsoc_netsoc_rom_bus_dat_w;
wire [31:0] soc_netsoc_netsoc_rom_bus_dat_r;
wire [3:0] soc_netsoc_netsoc_rom_bus_sel;
wire soc_netsoc_netsoc_rom_bus_cyc;
wire soc_netsoc_netsoc_rom_bus_stb;
reg soc_netsoc_netsoc_rom_bus_ack = 1'd0;
wire soc_netsoc_netsoc_rom_bus_we;
wire [2:0] soc_netsoc_netsoc_rom_bus_cti;
wire [1:0] soc_netsoc_netsoc_rom_bus_bte;
reg soc_netsoc_netsoc_rom_bus_err = 1'd0;
wire [12:0] soc_netsoc_netsoc_rom_adr;
wire [31:0] soc_netsoc_netsoc_rom_dat_r;
wire [29:0] soc_netsoc_netsoc_sram_bus_adr;
wire [31:0] soc_netsoc_netsoc_sram_bus_dat_w;
wire [31:0] soc_netsoc_netsoc_sram_bus_dat_r;
wire [3:0] soc_netsoc_netsoc_sram_bus_sel;
wire soc_netsoc_netsoc_sram_bus_cyc;
wire soc_netsoc_netsoc_sram_bus_stb;
reg soc_netsoc_netsoc_sram_bus_ack = 1'd0;
wire soc_netsoc_netsoc_sram_bus_we;
wire [2:0] soc_netsoc_netsoc_sram_bus_cti;
wire [1:0] soc_netsoc_netsoc_sram_bus_bte;
reg soc_netsoc_netsoc_sram_bus_err = 1'd0;
wire [12:0] soc_netsoc_netsoc_sram_adr;
wire [31:0] soc_netsoc_netsoc_sram_dat_r;
reg [3:0] soc_netsoc_netsoc_sram_we = 4'd0;
wire [31:0] soc_netsoc_netsoc_sram_dat_w;
reg [13:0] soc_netsoc_netsoc_interface_adr = 14'd0;
reg soc_netsoc_netsoc_interface_we = 1'd0;
reg [7:0] soc_netsoc_netsoc_interface_dat_w = 8'd0;
wire [7:0] soc_netsoc_netsoc_interface_dat_r;
wire [29:0] soc_netsoc_netsoc_bus_wishbone_adr;
wire [31:0] soc_netsoc_netsoc_bus_wishbone_dat_w;
reg [31:0] soc_netsoc_netsoc_bus_wishbone_dat_r = 32'd0;
wire [3:0] soc_netsoc_netsoc_bus_wishbone_sel;
wire soc_netsoc_netsoc_bus_wishbone_cyc;
wire soc_netsoc_netsoc_bus_wishbone_stb;
reg soc_netsoc_netsoc_bus_wishbone_ack = 1'd0;
wire soc_netsoc_netsoc_bus_wishbone_we;
wire [2:0] soc_netsoc_netsoc_bus_wishbone_cti;
wire [1:0] soc_netsoc_netsoc_bus_wishbone_bte;
reg soc_netsoc_netsoc_bus_wishbone_err = 1'd0;
reg [1:0] soc_netsoc_netsoc_counter = 2'd0;
reg [31:0] soc_netsoc_netsoc_load_storage_full = 32'd0;
wire [31:0] soc_netsoc_netsoc_load_storage;
reg soc_netsoc_netsoc_load_re = 1'd0;
reg [31:0] soc_netsoc_netsoc_reload_storage_full = 32'd0;
wire [31:0] soc_netsoc_netsoc_reload_storage;
reg soc_netsoc_netsoc_reload_re = 1'd0;
reg soc_netsoc_netsoc_en_storage_full = 1'd0;
wire soc_netsoc_netsoc_en_storage;
reg soc_netsoc_netsoc_en_re = 1'd0;
wire soc_netsoc_netsoc_update_value_re;
wire soc_netsoc_netsoc_update_value_r;
reg soc_netsoc_netsoc_update_value_w = 1'd0;
reg [31:0] soc_netsoc_netsoc_value_status = 32'd0;
wire soc_netsoc_netsoc_irq;
wire soc_netsoc_netsoc_zero_status;
reg soc_netsoc_netsoc_zero_pending = 1'd0;
wire soc_netsoc_netsoc_zero_trigger;
reg soc_netsoc_netsoc_zero_clear = 1'd0;
reg soc_netsoc_netsoc_zero_old_trigger = 1'd0;
wire soc_netsoc_netsoc_eventmanager_status_re;
wire soc_netsoc_netsoc_eventmanager_status_r;
wire soc_netsoc_netsoc_eventmanager_status_w;
wire soc_netsoc_netsoc_eventmanager_pending_re;
wire soc_netsoc_netsoc_eventmanager_pending_r;
wire soc_netsoc_netsoc_eventmanager_pending_w;
reg soc_netsoc_netsoc_eventmanager_storage_full = 1'd0;
wire soc_netsoc_netsoc_eventmanager_storage;
reg soc_netsoc_netsoc_eventmanager_re = 1'd0;
reg [31:0] soc_netsoc_netsoc_value = 32'd0;
wire [29:0] soc_netsoc_interface0_wb_sdram_adr;
wire [31:0] soc_netsoc_interface0_wb_sdram_dat_w;
reg [31:0] soc_netsoc_interface0_wb_sdram_dat_r = 32'd0;
wire [3:0] soc_netsoc_interface0_wb_sdram_sel;
wire soc_netsoc_interface0_wb_sdram_cyc;
wire soc_netsoc_interface0_wb_sdram_stb;
reg soc_netsoc_interface0_wb_sdram_ack = 1'd0;
wire soc_netsoc_interface0_wb_sdram_we;
wire [2:0] soc_netsoc_interface0_wb_sdram_cti;
wire [1:0] soc_netsoc_interface0_wb_sdram_bte;
reg soc_netsoc_interface0_wb_sdram_err = 1'd0;
(* dont_touch = "true" *) wire sys_clk;
wire sys_rst;
wire sys4x_clk;
wire sys4x_dqs_clk;
wire clk200_clk;
wire clk200_rst;
wire clk100_clk;
wire clk100_rst;
wire soc_netsoc_pll_locked;
wire soc_netsoc_pll_fb;
wire soc_netsoc_pll_sys;
wire soc_netsoc_pll_sys4x;
wire soc_netsoc_pll_sys4x_dqs;
wire soc_netsoc_pll_clk200;
reg [3:0] soc_netsoc_reset_counter = 4'd15;
reg soc_netsoc_ic_reset = 1'd1;
wire soc_netsoc_rs232phyinterface0_sink_valid;
reg soc_netsoc_rs232phyinterface0_sink_ready = 1'd0;
wire soc_netsoc_rs232phyinterface0_sink_first;
wire soc_netsoc_rs232phyinterface0_sink_last;
wire [7:0] soc_netsoc_rs232phyinterface0_sink_payload_data;
reg soc_netsoc_rs232phyinterface0_source_valid = 1'd0;
wire soc_netsoc_rs232phyinterface0_source_ready;
reg soc_netsoc_rs232phyinterface0_source_first = 1'd0;
reg soc_netsoc_rs232phyinterface0_source_last = 1'd0;
reg [7:0] soc_netsoc_rs232phyinterface0_source_payload_data = 8'd0;
reg soc_netsoc_rs232phyinterface1_sink_valid = 1'd0;
reg soc_netsoc_rs232phyinterface1_sink_ready = 1'd0;
reg soc_netsoc_rs232phyinterface1_sink_first = 1'd0;
wire soc_netsoc_rs232phyinterface1_sink_last;
reg [7:0] soc_netsoc_rs232phyinterface1_sink_payload_data = 8'd0;
reg soc_netsoc_rs232phyinterface1_source_valid = 1'd0;
wire soc_netsoc_rs232phyinterface1_source_ready;
reg soc_netsoc_rs232phyinterface1_source_first = 1'd0;
reg soc_netsoc_rs232phyinterface1_source_last = 1'd0;
reg [7:0] soc_netsoc_rs232phyinterface1_source_payload_data = 8'd0;
wire soc_netsoc_uart_rxtx_re;
wire [7:0] soc_netsoc_uart_rxtx_r;
wire [7:0] soc_netsoc_uart_rxtx_w;
wire soc_netsoc_uart_txfull_status;
wire soc_netsoc_uart_rxempty_status;
wire soc_netsoc_uart_irq;
wire soc_netsoc_uart_tx_status;
reg soc_netsoc_uart_tx_pending = 1'd0;
wire soc_netsoc_uart_tx_trigger;
reg soc_netsoc_uart_tx_clear = 1'd0;
reg soc_netsoc_uart_tx_old_trigger = 1'd0;
wire soc_netsoc_uart_rx_status;
reg soc_netsoc_uart_rx_pending = 1'd0;
wire soc_netsoc_uart_rx_trigger;
reg soc_netsoc_uart_rx_clear = 1'd0;
reg soc_netsoc_uart_rx_old_trigger = 1'd0;
wire soc_netsoc_uart_status_re;
wire [1:0] soc_netsoc_uart_status_r;
reg [1:0] soc_netsoc_uart_status_w = 2'd0;
wire soc_netsoc_uart_pending_re;
wire [1:0] soc_netsoc_uart_pending_r;
reg [1:0] soc_netsoc_uart_pending_w = 2'd0;
reg [1:0] soc_netsoc_uart_storage_full = 2'd0;
wire [1:0] soc_netsoc_uart_storage;
reg soc_netsoc_uart_re = 1'd0;
wire soc_netsoc_uart_tx_fifo_sink_valid;
wire soc_netsoc_uart_tx_fifo_sink_ready;
reg soc_netsoc_uart_tx_fifo_sink_first = 1'd0;
reg soc_netsoc_uart_tx_fifo_sink_last = 1'd0;
wire [7:0] soc_netsoc_uart_tx_fifo_sink_payload_data;
wire soc_netsoc_uart_tx_fifo_source_valid;
wire soc_netsoc_uart_tx_fifo_source_ready;
wire soc_netsoc_uart_tx_fifo_source_first;
wire soc_netsoc_uart_tx_fifo_source_last;
wire [7:0] soc_netsoc_uart_tx_fifo_source_payload_data;
wire soc_netsoc_uart_tx_fifo_syncfifo_we;
wire soc_netsoc_uart_tx_fifo_syncfifo_writable;
wire soc_netsoc_uart_tx_fifo_syncfifo_re;
wire soc_netsoc_uart_tx_fifo_syncfifo_readable;
wire [9:0] soc_netsoc_uart_tx_fifo_syncfifo_din;
wire [9:0] soc_netsoc_uart_tx_fifo_syncfifo_dout;
reg [4:0] soc_netsoc_uart_tx_fifo_level = 5'd0;
reg soc_netsoc_uart_tx_fifo_replace = 1'd0;
reg [3:0] soc_netsoc_uart_tx_fifo_produce = 4'd0;
reg [3:0] soc_netsoc_uart_tx_fifo_consume = 4'd0;
reg [3:0] soc_netsoc_uart_tx_fifo_wrport_adr = 4'd0;
wire [9:0] soc_netsoc_uart_tx_fifo_wrport_dat_r;
wire soc_netsoc_uart_tx_fifo_wrport_we;
wire [9:0] soc_netsoc_uart_tx_fifo_wrport_dat_w;
wire soc_netsoc_uart_tx_fifo_do_read;
wire [3:0] soc_netsoc_uart_tx_fifo_rdport_adr;
wire [9:0] soc_netsoc_uart_tx_fifo_rdport_dat_r;
wire [7:0] soc_netsoc_uart_tx_fifo_fifo_in_payload_data;
wire soc_netsoc_uart_tx_fifo_fifo_in_first;
wire soc_netsoc_uart_tx_fifo_fifo_in_last;
wire [7:0] soc_netsoc_uart_tx_fifo_fifo_out_payload_data;
wire soc_netsoc_uart_tx_fifo_fifo_out_first;
wire soc_netsoc_uart_tx_fifo_fifo_out_last;
wire soc_netsoc_uart_rx_fifo_sink_valid;
wire soc_netsoc_uart_rx_fifo_sink_ready;
wire soc_netsoc_uart_rx_fifo_sink_first;
wire soc_netsoc_uart_rx_fifo_sink_last;
wire [7:0] soc_netsoc_uart_rx_fifo_sink_payload_data;
wire soc_netsoc_uart_rx_fifo_source_valid;
wire soc_netsoc_uart_rx_fifo_source_ready;
wire soc_netsoc_uart_rx_fifo_source_first;
wire soc_netsoc_uart_rx_fifo_source_last;
wire [7:0] soc_netsoc_uart_rx_fifo_source_payload_data;
wire soc_netsoc_uart_rx_fifo_syncfifo_we;
wire soc_netsoc_uart_rx_fifo_syncfifo_writable;
wire soc_netsoc_uart_rx_fifo_syncfifo_re;
wire soc_netsoc_uart_rx_fifo_syncfifo_readable;
wire [9:0] soc_netsoc_uart_rx_fifo_syncfifo_din;
wire [9:0] soc_netsoc_uart_rx_fifo_syncfifo_dout;
reg [4:0] soc_netsoc_uart_rx_fifo_level = 5'd0;
reg soc_netsoc_uart_rx_fifo_replace = 1'd0;
reg [3:0] soc_netsoc_uart_rx_fifo_produce = 4'd0;
reg [3:0] soc_netsoc_uart_rx_fifo_consume = 4'd0;
reg [3:0] soc_netsoc_uart_rx_fifo_wrport_adr = 4'd0;
wire [9:0] soc_netsoc_uart_rx_fifo_wrport_dat_r;
wire soc_netsoc_uart_rx_fifo_wrport_we;
wire [9:0] soc_netsoc_uart_rx_fifo_wrport_dat_w;
wire soc_netsoc_uart_rx_fifo_do_read;
wire [3:0] soc_netsoc_uart_rx_fifo_rdport_adr;
wire [9:0] soc_netsoc_uart_rx_fifo_rdport_dat_r;
wire [7:0] soc_netsoc_uart_rx_fifo_fifo_in_payload_data;
wire soc_netsoc_uart_rx_fifo_fifo_in_first;
wire soc_netsoc_uart_rx_fifo_fifo_in_last;
wire [7:0] soc_netsoc_uart_rx_fifo_fifo_out_payload_data;
wire soc_netsoc_uart_rx_fifo_fifo_out_first;
wire soc_netsoc_uart_rx_fifo_fifo_out_last;
wire [29:0] soc_netsoc_bridge_wishbone_adr;
wire [31:0] soc_netsoc_bridge_wishbone_dat_w;
wire [31:0] soc_netsoc_bridge_wishbone_dat_r;
wire [3:0] soc_netsoc_bridge_wishbone_sel;
reg soc_netsoc_bridge_wishbone_cyc = 1'd0;
reg soc_netsoc_bridge_wishbone_stb = 1'd0;
wire soc_netsoc_bridge_wishbone_ack;
reg soc_netsoc_bridge_wishbone_we = 1'd0;
reg [2:0] soc_netsoc_bridge_wishbone_cti = 3'd0;
reg [1:0] soc_netsoc_bridge_wishbone_bte = 2'd0;
wire soc_netsoc_bridge_wishbone_err;
reg [2:0] soc_netsoc_bridge_byte_counter = 3'd0;
reg soc_netsoc_bridge_byte_counter_reset = 1'd0;
reg soc_netsoc_bridge_byte_counter_ce = 1'd0;
reg [2:0] soc_netsoc_bridge_word_counter = 3'd0;
reg soc_netsoc_bridge_word_counter_reset = 1'd0;
reg soc_netsoc_bridge_word_counter_ce = 1'd0;
reg [7:0] soc_netsoc_bridge_cmd = 8'd0;
reg soc_netsoc_bridge_cmd_ce = 1'd0;
reg [7:0] soc_netsoc_bridge_length = 8'd0;
reg soc_netsoc_bridge_length_ce = 1'd0;
reg [31:0] soc_netsoc_bridge_address = 32'd0;
reg soc_netsoc_bridge_address_ce = 1'd0;
reg [31:0] soc_netsoc_bridge_data = 32'd0;
reg soc_netsoc_bridge_rx_data_ce = 1'd0;
reg soc_netsoc_bridge_tx_data_ce = 1'd0;
wire soc_netsoc_bridge_reset;
wire soc_netsoc_bridge_wait;
wire soc_netsoc_bridge_done;
reg [23:0] soc_netsoc_bridge_count = 24'd10000000;
reg soc_netsoc_bridge_is_ongoing = 1'd0;
reg [31:0] soc_netsoc_uart_phy_storage_full = 32'd4947802;
wire [31:0] soc_netsoc_uart_phy_storage;
reg soc_netsoc_uart_phy_re = 1'd0;
reg soc_netsoc_uart_phy_sink_valid = 1'd0;
reg soc_netsoc_uart_phy_sink_ready = 1'd0;
reg soc_netsoc_uart_phy_sink_first = 1'd0;
reg soc_netsoc_uart_phy_sink_last = 1'd0;
reg [7:0] soc_netsoc_uart_phy_sink_payload_data = 8'd0;
reg soc_netsoc_uart_phy_uart_clk_txen = 1'd0;
reg [31:0] soc_netsoc_uart_phy_phase_accumulator_tx = 32'd0;
reg [7:0] soc_netsoc_uart_phy_tx_reg = 8'd0;
reg [3:0] soc_netsoc_uart_phy_tx_bitcount = 4'd0;
reg soc_netsoc_uart_phy_tx_busy = 1'd0;
reg soc_netsoc_uart_phy_source_valid = 1'd0;
reg soc_netsoc_uart_phy_source_ready = 1'd0;
reg soc_netsoc_uart_phy_source_first = 1'd0;
reg soc_netsoc_uart_phy_source_last = 1'd0;
reg [7:0] soc_netsoc_uart_phy_source_payload_data = 8'd0;
reg soc_netsoc_uart_phy_uart_clk_rxen = 1'd0;
reg [31:0] soc_netsoc_uart_phy_phase_accumulator_rx = 32'd0;
wire soc_netsoc_uart_phy_rx;
reg soc_netsoc_uart_phy_rx_r = 1'd0;
reg [7:0] soc_netsoc_uart_phy_rx_reg = 8'd0;
reg [3:0] soc_netsoc_uart_phy_rx_bitcount = 4'd0;
reg soc_netsoc_uart_phy_rx_busy = 1'd0;
wire soc_netsoc_sel;
reg [56:0] soc_netsoc_info_dna_status = 57'd0;
wire soc_netsoc_info_dna_do;
reg [6:0] soc_netsoc_info_dna_cnt = 7'd0;
wire [159:0] soc_netsoc_info_git_status;
wire [63:0] soc_netsoc_info_platform_status;
wire [63:0] soc_netsoc_info_target_status;
reg [11:0] soc_netsoc_info_temperature_status = 12'd0;
reg [11:0] soc_netsoc_info_vccint_status = 12'd0;
reg [11:0] soc_netsoc_info_vccaux_status = 12'd0;
reg [11:0] soc_netsoc_info_vccbram_status = 12'd0;
wire [7:0] soc_netsoc_info_alarm;
wire soc_netsoc_info_ot;
wire soc_netsoc_info_busy;
wire [6:0] soc_netsoc_info_channel;
wire soc_netsoc_info_eoc;
wire soc_netsoc_info_eos;
wire [15:0] soc_netsoc_info_data;
wire soc_netsoc_info_drdy;
wire soc_netsoc_oled_spi_pads_cs_n;
reg soc_netsoc_oled_spi_pads_clk = 1'd0;
reg soc_netsoc_oled_spi_pads_mosi = 1'd0;
wire soc_netsoc_oled_spimaster_ctrl_re;
wire soc_netsoc_oled_spimaster_ctrl_r;
reg soc_netsoc_oled_spimaster_ctrl_w = 1'd0;
reg [7:0] soc_netsoc_oled_spimaster_length_storage_full = 8'd0;
wire [7:0] soc_netsoc_oled_spimaster_length_storage;
reg soc_netsoc_oled_spimaster_length_re = 1'd0;
wire soc_netsoc_oled_spimaster_status;
reg [7:0] soc_netsoc_oled_spimaster_mosi_storage_full = 8'd0;
wire [7:0] soc_netsoc_oled_spimaster_mosi_storage;
reg soc_netsoc_oled_spimaster_mosi_re = 1'd0;
reg soc_netsoc_oled_spimaster_irq = 1'd0;
wire soc_netsoc_oled_spimaster_start;
reg soc_netsoc_oled_spimaster_enable_cs = 1'd0;
reg soc_netsoc_oled_spimaster_enable_shift = 1'd0;
reg soc_netsoc_oled_spimaster_done = 1'd0;
reg [3:0] soc_netsoc_oled_spimaster_i = 4'd0;
wire soc_netsoc_oled_spimaster_set_clk;
wire soc_netsoc_oled_spimaster_clr_clk;
reg [7:0] soc_netsoc_oled_spimaster_cnt = 8'd0;
reg soc_netsoc_oled_spimaster_clr_cnt = 1'd0;
reg soc_netsoc_oled_spimaster_inc_cnt = 1'd0;
reg [7:0] soc_netsoc_oled_spimaster_sr_mosi = 8'd0;
reg soc_netsoc_oled_spimaster = 1'd0;
reg [3:0] soc_netsoc_oled_storage_full = 4'd0;
wire [3:0] soc_netsoc_oled_storage;
reg soc_netsoc_oled_re = 1'd0;
reg [1:0] soc_netsoc_ddrphy_storage_full = 2'd0;
wire [1:0] soc_netsoc_ddrphy_storage;
reg soc_netsoc_ddrphy_re = 1'd0;
wire soc_netsoc_ddrphy_rdly_dq_rst_re;
wire soc_netsoc_ddrphy_rdly_dq_rst_r;
reg soc_netsoc_ddrphy_rdly_dq_rst_w = 1'd0;
wire soc_netsoc_ddrphy_rdly_dq_inc_re;
wire soc_netsoc_ddrphy_rdly_dq_inc_r;
reg soc_netsoc_ddrphy_rdly_dq_inc_w = 1'd0;
wire soc_netsoc_ddrphy_rdly_dq_bitslip_re;
wire soc_netsoc_ddrphy_rdly_dq_bitslip_r;
reg soc_netsoc_ddrphy_rdly_dq_bitslip_w = 1'd0;
wire [14:0] soc_netsoc_ddrphy_dfi_p0_address;
wire [2:0] soc_netsoc_ddrphy_dfi_p0_bank;
wire soc_netsoc_ddrphy_dfi_p0_cas_n;
wire soc_netsoc_ddrphy_dfi_p0_cs_n;
wire soc_netsoc_ddrphy_dfi_p0_ras_n;
wire soc_netsoc_ddrphy_dfi_p0_we_n;
wire soc_netsoc_ddrphy_dfi_p0_cke;
wire soc_netsoc_ddrphy_dfi_p0_odt;
wire soc_netsoc_ddrphy_dfi_p0_reset_n;
wire [31:0] soc_netsoc_ddrphy_dfi_p0_wrdata;
wire soc_netsoc_ddrphy_dfi_p0_wrdata_en;
wire [3:0] soc_netsoc_ddrphy_dfi_p0_wrdata_mask;
wire soc_netsoc_ddrphy_dfi_p0_rddata_en;
wire [31:0] soc_netsoc_ddrphy_dfi_p0_rddata;
reg soc_netsoc_ddrphy_dfi_p0_rddata_valid = 1'd0;
wire [14:0] soc_netsoc_ddrphy_dfi_p1_address;
wire [2:0] soc_netsoc_ddrphy_dfi_p1_bank;
wire soc_netsoc_ddrphy_dfi_p1_cas_n;
wire soc_netsoc_ddrphy_dfi_p1_cs_n;
wire soc_netsoc_ddrphy_dfi_p1_ras_n;
wire soc_netsoc_ddrphy_dfi_p1_we_n;
wire soc_netsoc_ddrphy_dfi_p1_cke;
wire soc_netsoc_ddrphy_dfi_p1_odt;
wire soc_netsoc_ddrphy_dfi_p1_reset_n;
wire [31:0] soc_netsoc_ddrphy_dfi_p1_wrdata;
wire soc_netsoc_ddrphy_dfi_p1_wrdata_en;
wire [3:0] soc_netsoc_ddrphy_dfi_p1_wrdata_mask;
wire soc_netsoc_ddrphy_dfi_p1_rddata_en;
wire [31:0] soc_netsoc_ddrphy_dfi_p1_rddata;
reg soc_netsoc_ddrphy_dfi_p1_rddata_valid = 1'd0;
wire [14:0] soc_netsoc_ddrphy_dfi_p2_address;
wire [2:0] soc_netsoc_ddrphy_dfi_p2_bank;
wire soc_netsoc_ddrphy_dfi_p2_cas_n;
wire soc_netsoc_ddrphy_dfi_p2_cs_n;
wire soc_netsoc_ddrphy_dfi_p2_ras_n;
wire soc_netsoc_ddrphy_dfi_p2_we_n;
wire soc_netsoc_ddrphy_dfi_p2_cke;
wire soc_netsoc_ddrphy_dfi_p2_odt;
wire soc_netsoc_ddrphy_dfi_p2_reset_n;
wire [31:0] soc_netsoc_ddrphy_dfi_p2_wrdata;
wire soc_netsoc_ddrphy_dfi_p2_wrdata_en;
wire [3:0] soc_netsoc_ddrphy_dfi_p2_wrdata_mask;
wire soc_netsoc_ddrphy_dfi_p2_rddata_en;
wire [31:0] soc_netsoc_ddrphy_dfi_p2_rddata;
reg soc_netsoc_ddrphy_dfi_p2_rddata_valid = 1'd0;
wire [14:0] soc_netsoc_ddrphy_dfi_p3_address;
wire [2:0] soc_netsoc_ddrphy_dfi_p3_bank;
wire soc_netsoc_ddrphy_dfi_p3_cas_n;
wire soc_netsoc_ddrphy_dfi_p3_cs_n;
wire soc_netsoc_ddrphy_dfi_p3_ras_n;
wire soc_netsoc_ddrphy_dfi_p3_we_n;
wire soc_netsoc_ddrphy_dfi_p3_cke;
wire soc_netsoc_ddrphy_dfi_p3_odt;
wire soc_netsoc_ddrphy_dfi_p3_reset_n;
wire [31:0] soc_netsoc_ddrphy_dfi_p3_wrdata;
wire soc_netsoc_ddrphy_dfi_p3_wrdata_en;
wire [3:0] soc_netsoc_ddrphy_dfi_p3_wrdata_mask;
wire soc_netsoc_ddrphy_dfi_p3_rddata_en;
wire [31:0] soc_netsoc_ddrphy_dfi_p3_rddata;
reg soc_netsoc_ddrphy_dfi_p3_rddata_valid = 1'd0;
wire soc_netsoc_ddrphy_sd_clk_se;
reg soc_netsoc_ddrphy_oe_dqs = 1'd0;
reg [7:0] soc_netsoc_ddrphy_dqs_serdes_pattern = 8'd85;
wire soc_netsoc_ddrphy_dqs0;
wire soc_netsoc_ddrphy_dqs_t0;
wire soc_netsoc_ddrphy_dqs1;
wire soc_netsoc_ddrphy_dqs_t1;
reg soc_netsoc_ddrphy_oe_dq = 1'd0;
wire soc_netsoc_ddrphy_dq_o0;
wire soc_netsoc_ddrphy_dq_i_nodelay0;
wire soc_netsoc_ddrphy_dq_i_delayed0;
wire soc_netsoc_ddrphy_dq_t0;
wire soc_netsoc_ddrphy_dq_o1;
wire soc_netsoc_ddrphy_dq_i_nodelay1;
wire soc_netsoc_ddrphy_dq_i_delayed1;
wire soc_netsoc_ddrphy_dq_t1;
wire soc_netsoc_ddrphy_dq_o2;
wire soc_netsoc_ddrphy_dq_i_nodelay2;
wire soc_netsoc_ddrphy_dq_i_delayed2;
wire soc_netsoc_ddrphy_dq_t2;
wire soc_netsoc_ddrphy_dq_o3;
wire soc_netsoc_ddrphy_dq_i_nodelay3;
wire soc_netsoc_ddrphy_dq_i_delayed3;
wire soc_netsoc_ddrphy_dq_t3;
wire soc_netsoc_ddrphy_dq_o4;
wire soc_netsoc_ddrphy_dq_i_nodelay4;
wire soc_netsoc_ddrphy_dq_i_delayed4;
wire soc_netsoc_ddrphy_dq_t4;
wire soc_netsoc_ddrphy_dq_o5;
wire soc_netsoc_ddrphy_dq_i_nodelay5;
wire soc_netsoc_ddrphy_dq_i_delayed5;
wire soc_netsoc_ddrphy_dq_t5;
wire soc_netsoc_ddrphy_dq_o6;
wire soc_netsoc_ddrphy_dq_i_nodelay6;
wire soc_netsoc_ddrphy_dq_i_delayed6;
wire soc_netsoc_ddrphy_dq_t6;
wire soc_netsoc_ddrphy_dq_o7;
wire soc_netsoc_ddrphy_dq_i_nodelay7;
wire soc_netsoc_ddrphy_dq_i_delayed7;
wire soc_netsoc_ddrphy_dq_t7;
wire soc_netsoc_ddrphy_dq_o8;
wire soc_netsoc_ddrphy_dq_i_nodelay8;
wire soc_netsoc_ddrphy_dq_i_delayed8;
wire soc_netsoc_ddrphy_dq_t8;
wire soc_netsoc_ddrphy_dq_o9;
wire soc_netsoc_ddrphy_dq_i_nodelay9;
wire soc_netsoc_ddrphy_dq_i_delayed9;
wire soc_netsoc_ddrphy_dq_t9;
wire soc_netsoc_ddrphy_dq_o10;
wire soc_netsoc_ddrphy_dq_i_nodelay10;
wire soc_netsoc_ddrphy_dq_i_delayed10;
wire soc_netsoc_ddrphy_dq_t10;
wire soc_netsoc_ddrphy_dq_o11;
wire soc_netsoc_ddrphy_dq_i_nodelay11;
wire soc_netsoc_ddrphy_dq_i_delayed11;
wire soc_netsoc_ddrphy_dq_t11;
wire soc_netsoc_ddrphy_dq_o12;
wire soc_netsoc_ddrphy_dq_i_nodelay12;
wire soc_netsoc_ddrphy_dq_i_delayed12;
wire soc_netsoc_ddrphy_dq_t12;
wire soc_netsoc_ddrphy_dq_o13;
wire soc_netsoc_ddrphy_dq_i_nodelay13;
wire soc_netsoc_ddrphy_dq_i_delayed13;
wire soc_netsoc_ddrphy_dq_t13;
wire soc_netsoc_ddrphy_dq_o14;
wire soc_netsoc_ddrphy_dq_i_nodelay14;
wire soc_netsoc_ddrphy_dq_i_delayed14;
wire soc_netsoc_ddrphy_dq_t14;
wire soc_netsoc_ddrphy_dq_o15;
wire soc_netsoc_ddrphy_dq_i_nodelay15;
wire soc_netsoc_ddrphy_dq_i_delayed15;
wire soc_netsoc_ddrphy_dq_t15;
reg soc_netsoc_ddrphy_n_rddata_en0 = 1'd0;
reg soc_netsoc_ddrphy_n_rddata_en1 = 1'd0;
reg soc_netsoc_ddrphy_n_rddata_en2 = 1'd0;
reg soc_netsoc_ddrphy_n_rddata_en3 = 1'd0;
reg soc_netsoc_ddrphy_n_rddata_en4 = 1'd0;
wire soc_netsoc_ddrphy_oe;
reg [3:0] soc_netsoc_ddrphy_last_wrdata_en = 4'd0;
wire [14:0] soc_netsoc_sdram_inti_p0_address;
wire [2:0] soc_netsoc_sdram_inti_p0_bank;
reg soc_netsoc_sdram_inti_p0_cas_n = 1'd1;
reg soc_netsoc_sdram_inti_p0_cs_n = 1'd1;
reg soc_netsoc_sdram_inti_p0_ras_n = 1'd1;
reg soc_netsoc_sdram_inti_p0_we_n = 1'd1;
wire soc_netsoc_sdram_inti_p0_cke;
wire soc_netsoc_sdram_inti_p0_odt;
wire soc_netsoc_sdram_inti_p0_reset_n;
wire [31:0] soc_netsoc_sdram_inti_p0_wrdata;
wire soc_netsoc_sdram_inti_p0_wrdata_en;
wire [3:0] soc_netsoc_sdram_inti_p0_wrdata_mask;
wire soc_netsoc_sdram_inti_p0_rddata_en;
reg [31:0] soc_netsoc_sdram_inti_p0_rddata = 32'd0;
reg soc_netsoc_sdram_inti_p0_rddata_valid = 1'd0;
wire [14:0] soc_netsoc_sdram_inti_p1_address;
wire [2:0] soc_netsoc_sdram_inti_p1_bank;
reg soc_netsoc_sdram_inti_p1_cas_n = 1'd1;
reg soc_netsoc_sdram_inti_p1_cs_n = 1'd1;
reg soc_netsoc_sdram_inti_p1_ras_n = 1'd1;
reg soc_netsoc_sdram_inti_p1_we_n = 1'd1;
wire soc_netsoc_sdram_inti_p1_cke;
wire soc_netsoc_sdram_inti_p1_odt;
wire soc_netsoc_sdram_inti_p1_reset_n;
wire [31:0] soc_netsoc_sdram_inti_p1_wrdata;
wire soc_netsoc_sdram_inti_p1_wrdata_en;
wire [3:0] soc_netsoc_sdram_inti_p1_wrdata_mask;
wire soc_netsoc_sdram_inti_p1_rddata_en;
reg [31:0] soc_netsoc_sdram_inti_p1_rddata = 32'd0;
reg soc_netsoc_sdram_inti_p1_rddata_valid = 1'd0;
wire [14:0] soc_netsoc_sdram_inti_p2_address;
wire [2:0] soc_netsoc_sdram_inti_p2_bank;
reg soc_netsoc_sdram_inti_p2_cas_n = 1'd1;
reg soc_netsoc_sdram_inti_p2_cs_n = 1'd1;
reg soc_netsoc_sdram_inti_p2_ras_n = 1'd1;
reg soc_netsoc_sdram_inti_p2_we_n = 1'd1;
wire soc_netsoc_sdram_inti_p2_cke;
wire soc_netsoc_sdram_inti_p2_odt;
wire soc_netsoc_sdram_inti_p2_reset_n;
wire [31:0] soc_netsoc_sdram_inti_p2_wrdata;
wire soc_netsoc_sdram_inti_p2_wrdata_en;
wire [3:0] soc_netsoc_sdram_inti_p2_wrdata_mask;
wire soc_netsoc_sdram_inti_p2_rddata_en;
reg [31:0] soc_netsoc_sdram_inti_p2_rddata = 32'd0;
reg soc_netsoc_sdram_inti_p2_rddata_valid = 1'd0;
wire [14:0] soc_netsoc_sdram_inti_p3_address;
wire [2:0] soc_netsoc_sdram_inti_p3_bank;
reg soc_netsoc_sdram_inti_p3_cas_n = 1'd1;
reg soc_netsoc_sdram_inti_p3_cs_n = 1'd1;
reg soc_netsoc_sdram_inti_p3_ras_n = 1'd1;
reg soc_netsoc_sdram_inti_p3_we_n = 1'd1;
wire soc_netsoc_sdram_inti_p3_cke;
wire soc_netsoc_sdram_inti_p3_odt;
wire soc_netsoc_sdram_inti_p3_reset_n;
wire [31:0] soc_netsoc_sdram_inti_p3_wrdata;
wire soc_netsoc_sdram_inti_p3_wrdata_en;
wire [3:0] soc_netsoc_sdram_inti_p3_wrdata_mask;
wire soc_netsoc_sdram_inti_p3_rddata_en;
reg [31:0] soc_netsoc_sdram_inti_p3_rddata = 32'd0;
reg soc_netsoc_sdram_inti_p3_rddata_valid = 1'd0;
wire [14:0] soc_netsoc_sdram_slave_p0_address;
wire [2:0] soc_netsoc_sdram_slave_p0_bank;
wire soc_netsoc_sdram_slave_p0_cas_n;
wire soc_netsoc_sdram_slave_p0_cs_n;
wire soc_netsoc_sdram_slave_p0_ras_n;
wire soc_netsoc_sdram_slave_p0_we_n;
wire soc_netsoc_sdram_slave_p0_cke;
wire soc_netsoc_sdram_slave_p0_odt;
wire soc_netsoc_sdram_slave_p0_reset_n;
wire [31:0] soc_netsoc_sdram_slave_p0_wrdata;
wire soc_netsoc_sdram_slave_p0_wrdata_en;
wire [3:0] soc_netsoc_sdram_slave_p0_wrdata_mask;
wire soc_netsoc_sdram_slave_p0_rddata_en;
reg [31:0] soc_netsoc_sdram_slave_p0_rddata = 32'd0;
reg soc_netsoc_sdram_slave_p0_rddata_valid = 1'd0;
wire [14:0] soc_netsoc_sdram_slave_p1_address;
wire [2:0] soc_netsoc_sdram_slave_p1_bank;
wire soc_netsoc_sdram_slave_p1_cas_n;
wire soc_netsoc_sdram_slave_p1_cs_n;
wire soc_netsoc_sdram_slave_p1_ras_n;
wire soc_netsoc_sdram_slave_p1_we_n;
wire soc_netsoc_sdram_slave_p1_cke;
wire soc_netsoc_sdram_slave_p1_odt;
wire soc_netsoc_sdram_slave_p1_reset_n;
wire [31:0] soc_netsoc_sdram_slave_p1_wrdata;
wire soc_netsoc_sdram_slave_p1_wrdata_en;
wire [3:0] soc_netsoc_sdram_slave_p1_wrdata_mask;
wire soc_netsoc_sdram_slave_p1_rddata_en;
reg [31:0] soc_netsoc_sdram_slave_p1_rddata = 32'd0;
reg soc_netsoc_sdram_slave_p1_rddata_valid = 1'd0;
wire [14:0] soc_netsoc_sdram_slave_p2_address;
wire [2:0] soc_netsoc_sdram_slave_p2_bank;
wire soc_netsoc_sdram_slave_p2_cas_n;
wire soc_netsoc_sdram_slave_p2_cs_n;
wire soc_netsoc_sdram_slave_p2_ras_n;
wire soc_netsoc_sdram_slave_p2_we_n;
wire soc_netsoc_sdram_slave_p2_cke;
wire soc_netsoc_sdram_slave_p2_odt;
wire soc_netsoc_sdram_slave_p2_reset_n;
wire [31:0] soc_netsoc_sdram_slave_p2_wrdata;
wire soc_netsoc_sdram_slave_p2_wrdata_en;
wire [3:0] soc_netsoc_sdram_slave_p2_wrdata_mask;
wire soc_netsoc_sdram_slave_p2_rddata_en;
reg [31:0] soc_netsoc_sdram_slave_p2_rddata = 32'd0;
reg soc_netsoc_sdram_slave_p2_rddata_valid = 1'd0;
wire [14:0] soc_netsoc_sdram_slave_p3_address;
wire [2:0] soc_netsoc_sdram_slave_p3_bank;
wire soc_netsoc_sdram_slave_p3_cas_n;
wire soc_netsoc_sdram_slave_p3_cs_n;
wire soc_netsoc_sdram_slave_p3_ras_n;
wire soc_netsoc_sdram_slave_p3_we_n;
wire soc_netsoc_sdram_slave_p3_cke;
wire soc_netsoc_sdram_slave_p3_odt;
wire soc_netsoc_sdram_slave_p3_reset_n;
wire [31:0] soc_netsoc_sdram_slave_p3_wrdata;
wire soc_netsoc_sdram_slave_p3_wrdata_en;
wire [3:0] soc_netsoc_sdram_slave_p3_wrdata_mask;
wire soc_netsoc_sdram_slave_p3_rddata_en;
reg [31:0] soc_netsoc_sdram_slave_p3_rddata = 32'd0;
reg soc_netsoc_sdram_slave_p3_rddata_valid = 1'd0;
reg [14:0] soc_netsoc_sdram_master_p0_address = 15'd0;
reg [2:0] soc_netsoc_sdram_master_p0_bank = 3'd0;
reg soc_netsoc_sdram_master_p0_cas_n = 1'd1;
reg soc_netsoc_sdram_master_p0_cs_n = 1'd1;
reg soc_netsoc_sdram_master_p0_ras_n = 1'd1;
reg soc_netsoc_sdram_master_p0_we_n = 1'd1;
reg soc_netsoc_sdram_master_p0_cke = 1'd0;
reg soc_netsoc_sdram_master_p0_odt = 1'd0;
reg soc_netsoc_sdram_master_p0_reset_n = 1'd0;
reg [31:0] soc_netsoc_sdram_master_p0_wrdata = 32'd0;
reg soc_netsoc_sdram_master_p0_wrdata_en = 1'd0;
reg [3:0] soc_netsoc_sdram_master_p0_wrdata_mask = 4'd0;
reg soc_netsoc_sdram_master_p0_rddata_en = 1'd0;
wire [31:0] soc_netsoc_sdram_master_p0_rddata;
wire soc_netsoc_sdram_master_p0_rddata_valid;
reg [14:0] soc_netsoc_sdram_master_p1_address = 15'd0;
reg [2:0] soc_netsoc_sdram_master_p1_bank = 3'd0;
reg soc_netsoc_sdram_master_p1_cas_n = 1'd1;
reg soc_netsoc_sdram_master_p1_cs_n = 1'd1;
reg soc_netsoc_sdram_master_p1_ras_n = 1'd1;
reg soc_netsoc_sdram_master_p1_we_n = 1'd1;
reg soc_netsoc_sdram_master_p1_cke = 1'd0;
reg soc_netsoc_sdram_master_p1_odt = 1'd0;
reg soc_netsoc_sdram_master_p1_reset_n = 1'd0;
reg [31:0] soc_netsoc_sdram_master_p1_wrdata = 32'd0;
reg soc_netsoc_sdram_master_p1_wrdata_en = 1'd0;
reg [3:0] soc_netsoc_sdram_master_p1_wrdata_mask = 4'd0;
reg soc_netsoc_sdram_master_p1_rddata_en = 1'd0;
wire [31:0] soc_netsoc_sdram_master_p1_rddata;
wire soc_netsoc_sdram_master_p1_rddata_valid;
reg [14:0] soc_netsoc_sdram_master_p2_address = 15'd0;
reg [2:0] soc_netsoc_sdram_master_p2_bank = 3'd0;
reg soc_netsoc_sdram_master_p2_cas_n = 1'd1;
reg soc_netsoc_sdram_master_p2_cs_n = 1'd1;
reg soc_netsoc_sdram_master_p2_ras_n = 1'd1;
reg soc_netsoc_sdram_master_p2_we_n = 1'd1;
reg soc_netsoc_sdram_master_p2_cke = 1'd0;
reg soc_netsoc_sdram_master_p2_odt = 1'd0;
reg soc_netsoc_sdram_master_p2_reset_n = 1'd0;
reg [31:0] soc_netsoc_sdram_master_p2_wrdata = 32'd0;
reg soc_netsoc_sdram_master_p2_wrdata_en = 1'd0;
reg [3:0] soc_netsoc_sdram_master_p2_wrdata_mask = 4'd0;
reg soc_netsoc_sdram_master_p2_rddata_en = 1'd0;
wire [31:0] soc_netsoc_sdram_master_p2_rddata;
wire soc_netsoc_sdram_master_p2_rddata_valid;
reg [14:0] soc_netsoc_sdram_master_p3_address = 15'd0;
reg [2:0] soc_netsoc_sdram_master_p3_bank = 3'd0;
reg soc_netsoc_sdram_master_p3_cas_n = 1'd1;
reg soc_netsoc_sdram_master_p3_cs_n = 1'd1;
reg soc_netsoc_sdram_master_p3_ras_n = 1'd1;
reg soc_netsoc_sdram_master_p3_we_n = 1'd1;
reg soc_netsoc_sdram_master_p3_cke = 1'd0;
reg soc_netsoc_sdram_master_p3_odt = 1'd0;
reg soc_netsoc_sdram_master_p3_reset_n = 1'd0;
reg [31:0] soc_netsoc_sdram_master_p3_wrdata = 32'd0;
reg soc_netsoc_sdram_master_p3_wrdata_en = 1'd0;
reg [3:0] soc_netsoc_sdram_master_p3_wrdata_mask = 4'd0;
reg soc_netsoc_sdram_master_p3_rddata_en = 1'd0;
wire [31:0] soc_netsoc_sdram_master_p3_rddata;
wire soc_netsoc_sdram_master_p3_rddata_valid;
reg [3:0] soc_netsoc_sdram_storage_full = 4'd0;
wire [3:0] soc_netsoc_sdram_storage;
reg soc_netsoc_sdram_re = 1'd0;
reg [5:0] soc_netsoc_sdram_phaseinjector0_command_storage_full = 6'd0;
wire [5:0] soc_netsoc_sdram_phaseinjector0_command_storage;
reg soc_netsoc_sdram_phaseinjector0_command_re = 1'd0;
wire soc_netsoc_sdram_phaseinjector0_command_issue_re;
wire soc_netsoc_sdram_phaseinjector0_command_issue_r;
reg soc_netsoc_sdram_phaseinjector0_command_issue_w = 1'd0;
reg [14:0] soc_netsoc_sdram_phaseinjector0_address_storage_full = 15'd0;
wire [14:0] soc_netsoc_sdram_phaseinjector0_address_storage;
reg soc_netsoc_sdram_phaseinjector0_address_re = 1'd0;
reg [2:0] soc_netsoc_sdram_phaseinjector0_baddress_storage_full = 3'd0;
wire [2:0] soc_netsoc_sdram_phaseinjector0_baddress_storage;
reg soc_netsoc_sdram_phaseinjector0_baddress_re = 1'd0;
reg [31:0] soc_netsoc_sdram_phaseinjector0_wrdata_storage_full = 32'd0;
wire [31:0] soc_netsoc_sdram_phaseinjector0_wrdata_storage;
reg soc_netsoc_sdram_phaseinjector0_wrdata_re = 1'd0;
reg [31:0] soc_netsoc_sdram_phaseinjector0_status = 32'd0;
reg [5:0] soc_netsoc_sdram_phaseinjector1_command_storage_full = 6'd0;
wire [5:0] soc_netsoc_sdram_phaseinjector1_command_storage;
reg soc_netsoc_sdram_phaseinjector1_command_re = 1'd0;
wire soc_netsoc_sdram_phaseinjector1_command_issue_re;
wire soc_netsoc_sdram_phaseinjector1_command_issue_r;
reg soc_netsoc_sdram_phaseinjector1_command_issue_w = 1'd0;
reg [14:0] soc_netsoc_sdram_phaseinjector1_address_storage_full = 15'd0;
wire [14:0] soc_netsoc_sdram_phaseinjector1_address_storage;
reg soc_netsoc_sdram_phaseinjector1_address_re = 1'd0;
reg [2:0] soc_netsoc_sdram_phaseinjector1_baddress_storage_full = 3'd0;
wire [2:0] soc_netsoc_sdram_phaseinjector1_baddress_storage;
reg soc_netsoc_sdram_phaseinjector1_baddress_re = 1'd0;
reg [31:0] soc_netsoc_sdram_phaseinjector1_wrdata_storage_full = 32'd0;
wire [31:0] soc_netsoc_sdram_phaseinjector1_wrdata_storage;
reg soc_netsoc_sdram_phaseinjector1_wrdata_re = 1'd0;
reg [31:0] soc_netsoc_sdram_phaseinjector1_status = 32'd0;
reg [5:0] soc_netsoc_sdram_phaseinjector2_command_storage_full = 6'd0;
wire [5:0] soc_netsoc_sdram_phaseinjector2_command_storage;
reg soc_netsoc_sdram_phaseinjector2_command_re = 1'd0;
wire soc_netsoc_sdram_phaseinjector2_command_issue_re;
wire soc_netsoc_sdram_phaseinjector2_command_issue_r;
reg soc_netsoc_sdram_phaseinjector2_command_issue_w = 1'd0;
reg [14:0] soc_netsoc_sdram_phaseinjector2_address_storage_full = 15'd0;
wire [14:0] soc_netsoc_sdram_phaseinjector2_address_storage;
reg soc_netsoc_sdram_phaseinjector2_address_re = 1'd0;
reg [2:0] soc_netsoc_sdram_phaseinjector2_baddress_storage_full = 3'd0;
wire [2:0] soc_netsoc_sdram_phaseinjector2_baddress_storage;
reg soc_netsoc_sdram_phaseinjector2_baddress_re = 1'd0;
reg [31:0] soc_netsoc_sdram_phaseinjector2_wrdata_storage_full = 32'd0;
wire [31:0] soc_netsoc_sdram_phaseinjector2_wrdata_storage;
reg soc_netsoc_sdram_phaseinjector2_wrdata_re = 1'd0;
reg [31:0] soc_netsoc_sdram_phaseinjector2_status = 32'd0;
reg [5:0] soc_netsoc_sdram_phaseinjector3_command_storage_full = 6'd0;
wire [5:0] soc_netsoc_sdram_phaseinjector3_command_storage;
reg soc_netsoc_sdram_phaseinjector3_command_re = 1'd0;
wire soc_netsoc_sdram_phaseinjector3_command_issue_re;
wire soc_netsoc_sdram_phaseinjector3_command_issue_r;
reg soc_netsoc_sdram_phaseinjector3_command_issue_w = 1'd0;
reg [14:0] soc_netsoc_sdram_phaseinjector3_address_storage_full = 15'd0;
wire [14:0] soc_netsoc_sdram_phaseinjector3_address_storage;
reg soc_netsoc_sdram_phaseinjector3_address_re = 1'd0;
reg [2:0] soc_netsoc_sdram_phaseinjector3_baddress_storage_full = 3'd0;
wire [2:0] soc_netsoc_sdram_phaseinjector3_baddress_storage;
reg soc_netsoc_sdram_phaseinjector3_baddress_re = 1'd0;
reg [31:0] soc_netsoc_sdram_phaseinjector3_wrdata_storage_full = 32'd0;
wire [31:0] soc_netsoc_sdram_phaseinjector3_wrdata_storage;
reg soc_netsoc_sdram_phaseinjector3_wrdata_re = 1'd0;
reg [31:0] soc_netsoc_sdram_phaseinjector3_status = 32'd0;
reg [14:0] soc_netsoc_sdram_dfi_p0_address = 15'd0;
reg [2:0] soc_netsoc_sdram_dfi_p0_bank = 3'd0;
reg soc_netsoc_sdram_dfi_p0_cas_n = 1'd1;
wire soc_netsoc_sdram_dfi_p0_cs_n;
reg soc_netsoc_sdram_dfi_p0_ras_n = 1'd1;
reg soc_netsoc_sdram_dfi_p0_we_n = 1'd1;
wire soc_netsoc_sdram_dfi_p0_cke;
wire soc_netsoc_sdram_dfi_p0_odt;
wire soc_netsoc_sdram_dfi_p0_reset_n;
wire [31:0] soc_netsoc_sdram_dfi_p0_wrdata;
reg soc_netsoc_sdram_dfi_p0_wrdata_en = 1'd0;
wire [3:0] soc_netsoc_sdram_dfi_p0_wrdata_mask;
reg soc_netsoc_sdram_dfi_p0_rddata_en = 1'd0;
wire [31:0] soc_netsoc_sdram_dfi_p0_rddata;
wire soc_netsoc_sdram_dfi_p0_rddata_valid;
reg [14:0] soc_netsoc_sdram_dfi_p1_address = 15'd0;
reg [2:0] soc_netsoc_sdram_dfi_p1_bank = 3'd0;
reg soc_netsoc_sdram_dfi_p1_cas_n = 1'd1;
wire soc_netsoc_sdram_dfi_p1_cs_n;
reg soc_netsoc_sdram_dfi_p1_ras_n = 1'd1;
reg soc_netsoc_sdram_dfi_p1_we_n = 1'd1;
wire soc_netsoc_sdram_dfi_p1_cke;
wire soc_netsoc_sdram_dfi_p1_odt;
wire soc_netsoc_sdram_dfi_p1_reset_n;
wire [31:0] soc_netsoc_sdram_dfi_p1_wrdata;
reg soc_netsoc_sdram_dfi_p1_wrdata_en = 1'd0;
wire [3:0] soc_netsoc_sdram_dfi_p1_wrdata_mask;
reg soc_netsoc_sdram_dfi_p1_rddata_en = 1'd0;
wire [31:0] soc_netsoc_sdram_dfi_p1_rddata;
wire soc_netsoc_sdram_dfi_p1_rddata_valid;
reg [14:0] soc_netsoc_sdram_dfi_p2_address = 15'd0;
reg [2:0] soc_netsoc_sdram_dfi_p2_bank = 3'd0;
reg soc_netsoc_sdram_dfi_p2_cas_n = 1'd1;
wire soc_netsoc_sdram_dfi_p2_cs_n;
reg soc_netsoc_sdram_dfi_p2_ras_n = 1'd1;
reg soc_netsoc_sdram_dfi_p2_we_n = 1'd1;
wire soc_netsoc_sdram_dfi_p2_cke;
wire soc_netsoc_sdram_dfi_p2_odt;
wire soc_netsoc_sdram_dfi_p2_reset_n;
wire [31:0] soc_netsoc_sdram_dfi_p2_wrdata;
reg soc_netsoc_sdram_dfi_p2_wrdata_en = 1'd0;
wire [3:0] soc_netsoc_sdram_dfi_p2_wrdata_mask;
reg soc_netsoc_sdram_dfi_p2_rddata_en = 1'd0;
wire [31:0] soc_netsoc_sdram_dfi_p2_rddata;
wire soc_netsoc_sdram_dfi_p2_rddata_valid;
reg [14:0] soc_netsoc_sdram_dfi_p3_address = 15'd0;
reg [2:0] soc_netsoc_sdram_dfi_p3_bank = 3'd0;
reg soc_netsoc_sdram_dfi_p3_cas_n = 1'd1;
wire soc_netsoc_sdram_dfi_p3_cs_n;
reg soc_netsoc_sdram_dfi_p3_ras_n = 1'd1;
reg soc_netsoc_sdram_dfi_p3_we_n = 1'd1;
wire soc_netsoc_sdram_dfi_p3_cke;
wire soc_netsoc_sdram_dfi_p3_odt;
wire soc_netsoc_sdram_dfi_p3_reset_n;
wire [31:0] soc_netsoc_sdram_dfi_p3_wrdata;
reg soc_netsoc_sdram_dfi_p3_wrdata_en = 1'd0;
wire [3:0] soc_netsoc_sdram_dfi_p3_wrdata_mask;
reg soc_netsoc_sdram_dfi_p3_rddata_en = 1'd0;
wire [31:0] soc_netsoc_sdram_dfi_p3_rddata;
wire soc_netsoc_sdram_dfi_p3_rddata_valid;
wire soc_netsoc_sdram_interface_bank0_valid;
wire soc_netsoc_sdram_interface_bank0_ready;
wire soc_netsoc_sdram_interface_bank0_we;
wire [21:0] soc_netsoc_sdram_interface_bank0_adr;
wire soc_netsoc_sdram_interface_bank0_lock;
wire soc_netsoc_sdram_interface_bank0_wdata_ready;
wire soc_netsoc_sdram_interface_bank0_rdata_valid;
wire soc_netsoc_sdram_interface_bank1_valid;
wire soc_netsoc_sdram_interface_bank1_ready;
wire soc_netsoc_sdram_interface_bank1_we;
wire [21:0] soc_netsoc_sdram_interface_bank1_adr;
wire soc_netsoc_sdram_interface_bank1_lock;
wire soc_netsoc_sdram_interface_bank1_wdata_ready;
wire soc_netsoc_sdram_interface_bank1_rdata_valid;
wire soc_netsoc_sdram_interface_bank2_valid;
wire soc_netsoc_sdram_interface_bank2_ready;
wire soc_netsoc_sdram_interface_bank2_we;
wire [21:0] soc_netsoc_sdram_interface_bank2_adr;
wire soc_netsoc_sdram_interface_bank2_lock;
wire soc_netsoc_sdram_interface_bank2_wdata_ready;
wire soc_netsoc_sdram_interface_bank2_rdata_valid;
wire soc_netsoc_sdram_interface_bank3_valid;
wire soc_netsoc_sdram_interface_bank3_ready;
wire soc_netsoc_sdram_interface_bank3_we;
wire [21:0] soc_netsoc_sdram_interface_bank3_adr;
wire soc_netsoc_sdram_interface_bank3_lock;
wire soc_netsoc_sdram_interface_bank3_wdata_ready;
wire soc_netsoc_sdram_interface_bank3_rdata_valid;
wire soc_netsoc_sdram_interface_bank4_valid;
wire soc_netsoc_sdram_interface_bank4_ready;
wire soc_netsoc_sdram_interface_bank4_we;
wire [21:0] soc_netsoc_sdram_interface_bank4_adr;
wire soc_netsoc_sdram_interface_bank4_lock;
wire soc_netsoc_sdram_interface_bank4_wdata_ready;
wire soc_netsoc_sdram_interface_bank4_rdata_valid;
wire soc_netsoc_sdram_interface_bank5_valid;
wire soc_netsoc_sdram_interface_bank5_ready;
wire soc_netsoc_sdram_interface_bank5_we;
wire [21:0] soc_netsoc_sdram_interface_bank5_adr;
wire soc_netsoc_sdram_interface_bank5_lock;
wire soc_netsoc_sdram_interface_bank5_wdata_ready;
wire soc_netsoc_sdram_interface_bank5_rdata_valid;
wire soc_netsoc_sdram_interface_bank6_valid;
wire soc_netsoc_sdram_interface_bank6_ready;
wire soc_netsoc_sdram_interface_bank6_we;
wire [21:0] soc_netsoc_sdram_interface_bank6_adr;
wire soc_netsoc_sdram_interface_bank6_lock;
wire soc_netsoc_sdram_interface_bank6_wdata_ready;
wire soc_netsoc_sdram_interface_bank6_rdata_valid;
wire soc_netsoc_sdram_interface_bank7_valid;
wire soc_netsoc_sdram_interface_bank7_ready;
wire soc_netsoc_sdram_interface_bank7_we;
wire [21:0] soc_netsoc_sdram_interface_bank7_adr;
wire soc_netsoc_sdram_interface_bank7_lock;
wire soc_netsoc_sdram_interface_bank7_wdata_ready;
wire soc_netsoc_sdram_interface_bank7_rdata_valid;
reg [127:0] soc_netsoc_sdram_interface_wdata = 128'd0;
reg [15:0] soc_netsoc_sdram_interface_wdata_we = 16'd0;
wire [127:0] soc_netsoc_sdram_interface_rdata;
reg soc_netsoc_sdram_cmd_valid = 1'd0;
reg soc_netsoc_sdram_cmd_ready = 1'd0;
reg soc_netsoc_sdram_cmd_last = 1'd0;
reg [14:0] soc_netsoc_sdram_cmd_payload_a = 15'd0;
reg [2:0] soc_netsoc_sdram_cmd_payload_ba = 3'd0;
reg soc_netsoc_sdram_cmd_payload_cas = 1'd0;
reg soc_netsoc_sdram_cmd_payload_ras = 1'd0;
reg soc_netsoc_sdram_cmd_payload_we = 1'd0;
reg soc_netsoc_sdram_cmd_payload_is_read = 1'd0;
reg soc_netsoc_sdram_cmd_payload_is_write = 1'd0;
reg soc_netsoc_sdram_seq_start = 1'd0;
reg soc_netsoc_sdram_seq_done = 1'd0;
reg [4:0] soc_netsoc_sdram_counter = 5'd0;
wire soc_netsoc_sdram_wait;
wire soc_netsoc_sdram_done;
reg [9:0] soc_netsoc_sdram_count = 10'd782;
wire soc_netsoc_sdram_bankmachine0_req_valid;
wire soc_netsoc_sdram_bankmachine0_req_ready;
wire soc_netsoc_sdram_bankmachine0_req_we;
wire [21:0] soc_netsoc_sdram_bankmachine0_req_adr;
wire soc_netsoc_sdram_bankmachine0_req_lock;
reg soc_netsoc_sdram_bankmachine0_req_wdata_ready = 1'd0;
reg soc_netsoc_sdram_bankmachine0_req_rdata_valid = 1'd0;
wire soc_netsoc_sdram_bankmachine0_refresh_req;
reg soc_netsoc_sdram_bankmachine0_refresh_gnt = 1'd0;
reg soc_netsoc_sdram_bankmachine0_cmd_valid = 1'd0;
reg soc_netsoc_sdram_bankmachine0_cmd_ready = 1'd0;
reg [14:0] soc_netsoc_sdram_bankmachine0_cmd_payload_a = 15'd0;
wire [2:0] soc_netsoc_sdram_bankmachine0_cmd_payload_ba;
reg soc_netsoc_sdram_bankmachine0_cmd_payload_cas = 1'd0;
reg soc_netsoc_sdram_bankmachine0_cmd_payload_ras = 1'd0;
reg soc_netsoc_sdram_bankmachine0_cmd_payload_we = 1'd0;
reg soc_netsoc_sdram_bankmachine0_cmd_payload_is_cmd = 1'd0;
reg soc_netsoc_sdram_bankmachine0_cmd_payload_is_read = 1'd0;
reg soc_netsoc_sdram_bankmachine0_cmd_payload_is_write = 1'd0;
wire soc_netsoc_sdram_bankmachine0_sink_valid;
wire soc_netsoc_sdram_bankmachine0_sink_ready;
reg soc_netsoc_sdram_bankmachine0_sink_first = 1'd0;
reg soc_netsoc_sdram_bankmachine0_sink_last = 1'd0;
wire soc_netsoc_sdram_bankmachine0_sink_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine0_sink_payload_adr;
wire soc_netsoc_sdram_bankmachine0_source_valid;
wire soc_netsoc_sdram_bankmachine0_source_ready;
wire soc_netsoc_sdram_bankmachine0_source_first;
wire soc_netsoc_sdram_bankmachine0_source_last;
wire soc_netsoc_sdram_bankmachine0_source_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine0_source_payload_adr;
wire soc_netsoc_sdram_bankmachine0_syncfifo0_we;
wire soc_netsoc_sdram_bankmachine0_syncfifo0_writable;
wire soc_netsoc_sdram_bankmachine0_syncfifo0_re;
wire soc_netsoc_sdram_bankmachine0_syncfifo0_readable;
wire [24:0] soc_netsoc_sdram_bankmachine0_syncfifo0_din;
wire [24:0] soc_netsoc_sdram_bankmachine0_syncfifo0_dout;
reg [3:0] soc_netsoc_sdram_bankmachine0_level = 4'd0;
reg soc_netsoc_sdram_bankmachine0_replace = 1'd0;
reg [2:0] soc_netsoc_sdram_bankmachine0_produce = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine0_consume = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine0_wrport_adr = 3'd0;
wire [24:0] soc_netsoc_sdram_bankmachine0_wrport_dat_r;
wire soc_netsoc_sdram_bankmachine0_wrport_we;
wire [24:0] soc_netsoc_sdram_bankmachine0_wrport_dat_w;
wire soc_netsoc_sdram_bankmachine0_do_read;
wire [2:0] soc_netsoc_sdram_bankmachine0_rdport_adr;
wire [24:0] soc_netsoc_sdram_bankmachine0_rdport_dat_r;
wire soc_netsoc_sdram_bankmachine0_fifo_in_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine0_fifo_in_payload_adr;
wire soc_netsoc_sdram_bankmachine0_fifo_in_first;
wire soc_netsoc_sdram_bankmachine0_fifo_in_last;
wire soc_netsoc_sdram_bankmachine0_fifo_out_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine0_fifo_out_payload_adr;
wire soc_netsoc_sdram_bankmachine0_fifo_out_first;
wire soc_netsoc_sdram_bankmachine0_fifo_out_last;
reg soc_netsoc_sdram_bankmachine0_has_openrow = 1'd0;
reg [14:0] soc_netsoc_sdram_bankmachine0_openrow = 15'd0;
wire soc_netsoc_sdram_bankmachine0_hit;
reg soc_netsoc_sdram_bankmachine0_track_open = 1'd0;
reg soc_netsoc_sdram_bankmachine0_track_close = 1'd0;
reg soc_netsoc_sdram_bankmachine0_sel_row_adr = 1'd0;
wire soc_netsoc_sdram_bankmachine0_wait;
wire soc_netsoc_sdram_bankmachine0_done;
reg [2:0] soc_netsoc_sdram_bankmachine0_count = 3'd5;
wire soc_netsoc_sdram_bankmachine1_req_valid;
wire soc_netsoc_sdram_bankmachine1_req_ready;
wire soc_netsoc_sdram_bankmachine1_req_we;
wire [21:0] soc_netsoc_sdram_bankmachine1_req_adr;
wire soc_netsoc_sdram_bankmachine1_req_lock;
reg soc_netsoc_sdram_bankmachine1_req_wdata_ready = 1'd0;
reg soc_netsoc_sdram_bankmachine1_req_rdata_valid = 1'd0;
wire soc_netsoc_sdram_bankmachine1_refresh_req;
reg soc_netsoc_sdram_bankmachine1_refresh_gnt = 1'd0;
reg soc_netsoc_sdram_bankmachine1_cmd_valid = 1'd0;
reg soc_netsoc_sdram_bankmachine1_cmd_ready = 1'd0;
reg [14:0] soc_netsoc_sdram_bankmachine1_cmd_payload_a = 15'd0;
wire [2:0] soc_netsoc_sdram_bankmachine1_cmd_payload_ba;
reg soc_netsoc_sdram_bankmachine1_cmd_payload_cas = 1'd0;
reg soc_netsoc_sdram_bankmachine1_cmd_payload_ras = 1'd0;
reg soc_netsoc_sdram_bankmachine1_cmd_payload_we = 1'd0;
reg soc_netsoc_sdram_bankmachine1_cmd_payload_is_cmd = 1'd0;
reg soc_netsoc_sdram_bankmachine1_cmd_payload_is_read = 1'd0;
reg soc_netsoc_sdram_bankmachine1_cmd_payload_is_write = 1'd0;
wire soc_netsoc_sdram_bankmachine1_sink_valid;
wire soc_netsoc_sdram_bankmachine1_sink_ready;
reg soc_netsoc_sdram_bankmachine1_sink_first = 1'd0;
reg soc_netsoc_sdram_bankmachine1_sink_last = 1'd0;
wire soc_netsoc_sdram_bankmachine1_sink_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine1_sink_payload_adr;
wire soc_netsoc_sdram_bankmachine1_source_valid;
wire soc_netsoc_sdram_bankmachine1_source_ready;
wire soc_netsoc_sdram_bankmachine1_source_first;
wire soc_netsoc_sdram_bankmachine1_source_last;
wire soc_netsoc_sdram_bankmachine1_source_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine1_source_payload_adr;
wire soc_netsoc_sdram_bankmachine1_syncfifo1_we;
wire soc_netsoc_sdram_bankmachine1_syncfifo1_writable;
wire soc_netsoc_sdram_bankmachine1_syncfifo1_re;
wire soc_netsoc_sdram_bankmachine1_syncfifo1_readable;
wire [24:0] soc_netsoc_sdram_bankmachine1_syncfifo1_din;
wire [24:0] soc_netsoc_sdram_bankmachine1_syncfifo1_dout;
reg [3:0] soc_netsoc_sdram_bankmachine1_level = 4'd0;
reg soc_netsoc_sdram_bankmachine1_replace = 1'd0;
reg [2:0] soc_netsoc_sdram_bankmachine1_produce = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine1_consume = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine1_wrport_adr = 3'd0;
wire [24:0] soc_netsoc_sdram_bankmachine1_wrport_dat_r;
wire soc_netsoc_sdram_bankmachine1_wrport_we;
wire [24:0] soc_netsoc_sdram_bankmachine1_wrport_dat_w;
wire soc_netsoc_sdram_bankmachine1_do_read;
wire [2:0] soc_netsoc_sdram_bankmachine1_rdport_adr;
wire [24:0] soc_netsoc_sdram_bankmachine1_rdport_dat_r;
wire soc_netsoc_sdram_bankmachine1_fifo_in_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine1_fifo_in_payload_adr;
wire soc_netsoc_sdram_bankmachine1_fifo_in_first;
wire soc_netsoc_sdram_bankmachine1_fifo_in_last;
wire soc_netsoc_sdram_bankmachine1_fifo_out_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine1_fifo_out_payload_adr;
wire soc_netsoc_sdram_bankmachine1_fifo_out_first;
wire soc_netsoc_sdram_bankmachine1_fifo_out_last;
reg soc_netsoc_sdram_bankmachine1_has_openrow = 1'd0;
reg [14:0] soc_netsoc_sdram_bankmachine1_openrow = 15'd0;
wire soc_netsoc_sdram_bankmachine1_hit;
reg soc_netsoc_sdram_bankmachine1_track_open = 1'd0;
reg soc_netsoc_sdram_bankmachine1_track_close = 1'd0;
reg soc_netsoc_sdram_bankmachine1_sel_row_adr = 1'd0;
wire soc_netsoc_sdram_bankmachine1_wait;
wire soc_netsoc_sdram_bankmachine1_done;
reg [2:0] soc_netsoc_sdram_bankmachine1_count = 3'd5;
wire soc_netsoc_sdram_bankmachine2_req_valid;
wire soc_netsoc_sdram_bankmachine2_req_ready;
wire soc_netsoc_sdram_bankmachine2_req_we;
wire [21:0] soc_netsoc_sdram_bankmachine2_req_adr;
wire soc_netsoc_sdram_bankmachine2_req_lock;
reg soc_netsoc_sdram_bankmachine2_req_wdata_ready = 1'd0;
reg soc_netsoc_sdram_bankmachine2_req_rdata_valid = 1'd0;
wire soc_netsoc_sdram_bankmachine2_refresh_req;
reg soc_netsoc_sdram_bankmachine2_refresh_gnt = 1'd0;
reg soc_netsoc_sdram_bankmachine2_cmd_valid = 1'd0;
reg soc_netsoc_sdram_bankmachine2_cmd_ready = 1'd0;
reg [14:0] soc_netsoc_sdram_bankmachine2_cmd_payload_a = 15'd0;
wire [2:0] soc_netsoc_sdram_bankmachine2_cmd_payload_ba;
reg soc_netsoc_sdram_bankmachine2_cmd_payload_cas = 1'd0;
reg soc_netsoc_sdram_bankmachine2_cmd_payload_ras = 1'd0;
reg soc_netsoc_sdram_bankmachine2_cmd_payload_we = 1'd0;
reg soc_netsoc_sdram_bankmachine2_cmd_payload_is_cmd = 1'd0;
reg soc_netsoc_sdram_bankmachine2_cmd_payload_is_read = 1'd0;
reg soc_netsoc_sdram_bankmachine2_cmd_payload_is_write = 1'd0;
wire soc_netsoc_sdram_bankmachine2_sink_valid;
wire soc_netsoc_sdram_bankmachine2_sink_ready;
reg soc_netsoc_sdram_bankmachine2_sink_first = 1'd0;
reg soc_netsoc_sdram_bankmachine2_sink_last = 1'd0;
wire soc_netsoc_sdram_bankmachine2_sink_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine2_sink_payload_adr;
wire soc_netsoc_sdram_bankmachine2_source_valid;
wire soc_netsoc_sdram_bankmachine2_source_ready;
wire soc_netsoc_sdram_bankmachine2_source_first;
wire soc_netsoc_sdram_bankmachine2_source_last;
wire soc_netsoc_sdram_bankmachine2_source_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine2_source_payload_adr;
wire soc_netsoc_sdram_bankmachine2_syncfifo2_we;
wire soc_netsoc_sdram_bankmachine2_syncfifo2_writable;
wire soc_netsoc_sdram_bankmachine2_syncfifo2_re;
wire soc_netsoc_sdram_bankmachine2_syncfifo2_readable;
wire [24:0] soc_netsoc_sdram_bankmachine2_syncfifo2_din;
wire [24:0] soc_netsoc_sdram_bankmachine2_syncfifo2_dout;
reg [3:0] soc_netsoc_sdram_bankmachine2_level = 4'd0;
reg soc_netsoc_sdram_bankmachine2_replace = 1'd0;
reg [2:0] soc_netsoc_sdram_bankmachine2_produce = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine2_consume = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine2_wrport_adr = 3'd0;
wire [24:0] soc_netsoc_sdram_bankmachine2_wrport_dat_r;
wire soc_netsoc_sdram_bankmachine2_wrport_we;
wire [24:0] soc_netsoc_sdram_bankmachine2_wrport_dat_w;
wire soc_netsoc_sdram_bankmachine2_do_read;
wire [2:0] soc_netsoc_sdram_bankmachine2_rdport_adr;
wire [24:0] soc_netsoc_sdram_bankmachine2_rdport_dat_r;
wire soc_netsoc_sdram_bankmachine2_fifo_in_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine2_fifo_in_payload_adr;
wire soc_netsoc_sdram_bankmachine2_fifo_in_first;
wire soc_netsoc_sdram_bankmachine2_fifo_in_last;
wire soc_netsoc_sdram_bankmachine2_fifo_out_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine2_fifo_out_payload_adr;
wire soc_netsoc_sdram_bankmachine2_fifo_out_first;
wire soc_netsoc_sdram_bankmachine2_fifo_out_last;
reg soc_netsoc_sdram_bankmachine2_has_openrow = 1'd0;
reg [14:0] soc_netsoc_sdram_bankmachine2_openrow = 15'd0;
wire soc_netsoc_sdram_bankmachine2_hit;
reg soc_netsoc_sdram_bankmachine2_track_open = 1'd0;
reg soc_netsoc_sdram_bankmachine2_track_close = 1'd0;
reg soc_netsoc_sdram_bankmachine2_sel_row_adr = 1'd0;
wire soc_netsoc_sdram_bankmachine2_wait;
wire soc_netsoc_sdram_bankmachine2_done;
reg [2:0] soc_netsoc_sdram_bankmachine2_count = 3'd5;
wire soc_netsoc_sdram_bankmachine3_req_valid;
wire soc_netsoc_sdram_bankmachine3_req_ready;
wire soc_netsoc_sdram_bankmachine3_req_we;
wire [21:0] soc_netsoc_sdram_bankmachine3_req_adr;
wire soc_netsoc_sdram_bankmachine3_req_lock;
reg soc_netsoc_sdram_bankmachine3_req_wdata_ready = 1'd0;
reg soc_netsoc_sdram_bankmachine3_req_rdata_valid = 1'd0;
wire soc_netsoc_sdram_bankmachine3_refresh_req;
reg soc_netsoc_sdram_bankmachine3_refresh_gnt = 1'd0;
reg soc_netsoc_sdram_bankmachine3_cmd_valid = 1'd0;
reg soc_netsoc_sdram_bankmachine3_cmd_ready = 1'd0;
reg [14:0] soc_netsoc_sdram_bankmachine3_cmd_payload_a = 15'd0;
wire [2:0] soc_netsoc_sdram_bankmachine3_cmd_payload_ba;
reg soc_netsoc_sdram_bankmachine3_cmd_payload_cas = 1'd0;
reg soc_netsoc_sdram_bankmachine3_cmd_payload_ras = 1'd0;
reg soc_netsoc_sdram_bankmachine3_cmd_payload_we = 1'd0;
reg soc_netsoc_sdram_bankmachine3_cmd_payload_is_cmd = 1'd0;
reg soc_netsoc_sdram_bankmachine3_cmd_payload_is_read = 1'd0;
reg soc_netsoc_sdram_bankmachine3_cmd_payload_is_write = 1'd0;
wire soc_netsoc_sdram_bankmachine3_sink_valid;
wire soc_netsoc_sdram_bankmachine3_sink_ready;
reg soc_netsoc_sdram_bankmachine3_sink_first = 1'd0;
reg soc_netsoc_sdram_bankmachine3_sink_last = 1'd0;
wire soc_netsoc_sdram_bankmachine3_sink_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine3_sink_payload_adr;
wire soc_netsoc_sdram_bankmachine3_source_valid;
wire soc_netsoc_sdram_bankmachine3_source_ready;
wire soc_netsoc_sdram_bankmachine3_source_first;
wire soc_netsoc_sdram_bankmachine3_source_last;
wire soc_netsoc_sdram_bankmachine3_source_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine3_source_payload_adr;
wire soc_netsoc_sdram_bankmachine3_syncfifo3_we;
wire soc_netsoc_sdram_bankmachine3_syncfifo3_writable;
wire soc_netsoc_sdram_bankmachine3_syncfifo3_re;
wire soc_netsoc_sdram_bankmachine3_syncfifo3_readable;
wire [24:0] soc_netsoc_sdram_bankmachine3_syncfifo3_din;
wire [24:0] soc_netsoc_sdram_bankmachine3_syncfifo3_dout;
reg [3:0] soc_netsoc_sdram_bankmachine3_level = 4'd0;
reg soc_netsoc_sdram_bankmachine3_replace = 1'd0;
reg [2:0] soc_netsoc_sdram_bankmachine3_produce = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine3_consume = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine3_wrport_adr = 3'd0;
wire [24:0] soc_netsoc_sdram_bankmachine3_wrport_dat_r;
wire soc_netsoc_sdram_bankmachine3_wrport_we;
wire [24:0] soc_netsoc_sdram_bankmachine3_wrport_dat_w;
wire soc_netsoc_sdram_bankmachine3_do_read;
wire [2:0] soc_netsoc_sdram_bankmachine3_rdport_adr;
wire [24:0] soc_netsoc_sdram_bankmachine3_rdport_dat_r;
wire soc_netsoc_sdram_bankmachine3_fifo_in_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine3_fifo_in_payload_adr;
wire soc_netsoc_sdram_bankmachine3_fifo_in_first;
wire soc_netsoc_sdram_bankmachine3_fifo_in_last;
wire soc_netsoc_sdram_bankmachine3_fifo_out_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine3_fifo_out_payload_adr;
wire soc_netsoc_sdram_bankmachine3_fifo_out_first;
wire soc_netsoc_sdram_bankmachine3_fifo_out_last;
reg soc_netsoc_sdram_bankmachine3_has_openrow = 1'd0;
reg [14:0] soc_netsoc_sdram_bankmachine3_openrow = 15'd0;
wire soc_netsoc_sdram_bankmachine3_hit;
reg soc_netsoc_sdram_bankmachine3_track_open = 1'd0;
reg soc_netsoc_sdram_bankmachine3_track_close = 1'd0;
reg soc_netsoc_sdram_bankmachine3_sel_row_adr = 1'd0;
wire soc_netsoc_sdram_bankmachine3_wait;
wire soc_netsoc_sdram_bankmachine3_done;
reg [2:0] soc_netsoc_sdram_bankmachine3_count = 3'd5;
wire soc_netsoc_sdram_bankmachine4_req_valid;
wire soc_netsoc_sdram_bankmachine4_req_ready;
wire soc_netsoc_sdram_bankmachine4_req_we;
wire [21:0] soc_netsoc_sdram_bankmachine4_req_adr;
wire soc_netsoc_sdram_bankmachine4_req_lock;
reg soc_netsoc_sdram_bankmachine4_req_wdata_ready = 1'd0;
reg soc_netsoc_sdram_bankmachine4_req_rdata_valid = 1'd0;
wire soc_netsoc_sdram_bankmachine4_refresh_req;
reg soc_netsoc_sdram_bankmachine4_refresh_gnt = 1'd0;
reg soc_netsoc_sdram_bankmachine4_cmd_valid = 1'd0;
reg soc_netsoc_sdram_bankmachine4_cmd_ready = 1'd0;
reg [14:0] soc_netsoc_sdram_bankmachine4_cmd_payload_a = 15'd0;
wire [2:0] soc_netsoc_sdram_bankmachine4_cmd_payload_ba;
reg soc_netsoc_sdram_bankmachine4_cmd_payload_cas = 1'd0;
reg soc_netsoc_sdram_bankmachine4_cmd_payload_ras = 1'd0;
reg soc_netsoc_sdram_bankmachine4_cmd_payload_we = 1'd0;
reg soc_netsoc_sdram_bankmachine4_cmd_payload_is_cmd = 1'd0;
reg soc_netsoc_sdram_bankmachine4_cmd_payload_is_read = 1'd0;
reg soc_netsoc_sdram_bankmachine4_cmd_payload_is_write = 1'd0;
wire soc_netsoc_sdram_bankmachine4_sink_valid;
wire soc_netsoc_sdram_bankmachine4_sink_ready;
reg soc_netsoc_sdram_bankmachine4_sink_first = 1'd0;
reg soc_netsoc_sdram_bankmachine4_sink_last = 1'd0;
wire soc_netsoc_sdram_bankmachine4_sink_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine4_sink_payload_adr;
wire soc_netsoc_sdram_bankmachine4_source_valid;
wire soc_netsoc_sdram_bankmachine4_source_ready;
wire soc_netsoc_sdram_bankmachine4_source_first;
wire soc_netsoc_sdram_bankmachine4_source_last;
wire soc_netsoc_sdram_bankmachine4_source_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine4_source_payload_adr;
wire soc_netsoc_sdram_bankmachine4_syncfifo4_we;
wire soc_netsoc_sdram_bankmachine4_syncfifo4_writable;
wire soc_netsoc_sdram_bankmachine4_syncfifo4_re;
wire soc_netsoc_sdram_bankmachine4_syncfifo4_readable;
wire [24:0] soc_netsoc_sdram_bankmachine4_syncfifo4_din;
wire [24:0] soc_netsoc_sdram_bankmachine4_syncfifo4_dout;
reg [3:0] soc_netsoc_sdram_bankmachine4_level = 4'd0;
reg soc_netsoc_sdram_bankmachine4_replace = 1'd0;
reg [2:0] soc_netsoc_sdram_bankmachine4_produce = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine4_consume = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine4_wrport_adr = 3'd0;
wire [24:0] soc_netsoc_sdram_bankmachine4_wrport_dat_r;
wire soc_netsoc_sdram_bankmachine4_wrport_we;
wire [24:0] soc_netsoc_sdram_bankmachine4_wrport_dat_w;
wire soc_netsoc_sdram_bankmachine4_do_read;
wire [2:0] soc_netsoc_sdram_bankmachine4_rdport_adr;
wire [24:0] soc_netsoc_sdram_bankmachine4_rdport_dat_r;
wire soc_netsoc_sdram_bankmachine4_fifo_in_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine4_fifo_in_payload_adr;
wire soc_netsoc_sdram_bankmachine4_fifo_in_first;
wire soc_netsoc_sdram_bankmachine4_fifo_in_last;
wire soc_netsoc_sdram_bankmachine4_fifo_out_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine4_fifo_out_payload_adr;
wire soc_netsoc_sdram_bankmachine4_fifo_out_first;
wire soc_netsoc_sdram_bankmachine4_fifo_out_last;
reg soc_netsoc_sdram_bankmachine4_has_openrow = 1'd0;
reg [14:0] soc_netsoc_sdram_bankmachine4_openrow = 15'd0;
wire soc_netsoc_sdram_bankmachine4_hit;
reg soc_netsoc_sdram_bankmachine4_track_open = 1'd0;
reg soc_netsoc_sdram_bankmachine4_track_close = 1'd0;
reg soc_netsoc_sdram_bankmachine4_sel_row_adr = 1'd0;
wire soc_netsoc_sdram_bankmachine4_wait;
wire soc_netsoc_sdram_bankmachine4_done;
reg [2:0] soc_netsoc_sdram_bankmachine4_count = 3'd5;
wire soc_netsoc_sdram_bankmachine5_req_valid;
wire soc_netsoc_sdram_bankmachine5_req_ready;
wire soc_netsoc_sdram_bankmachine5_req_we;
wire [21:0] soc_netsoc_sdram_bankmachine5_req_adr;
wire soc_netsoc_sdram_bankmachine5_req_lock;
reg soc_netsoc_sdram_bankmachine5_req_wdata_ready = 1'd0;
reg soc_netsoc_sdram_bankmachine5_req_rdata_valid = 1'd0;
wire soc_netsoc_sdram_bankmachine5_refresh_req;
reg soc_netsoc_sdram_bankmachine5_refresh_gnt = 1'd0;
reg soc_netsoc_sdram_bankmachine5_cmd_valid = 1'd0;
reg soc_netsoc_sdram_bankmachine5_cmd_ready = 1'd0;
reg [14:0] soc_netsoc_sdram_bankmachine5_cmd_payload_a = 15'd0;
wire [2:0] soc_netsoc_sdram_bankmachine5_cmd_payload_ba;
reg soc_netsoc_sdram_bankmachine5_cmd_payload_cas = 1'd0;
reg soc_netsoc_sdram_bankmachine5_cmd_payload_ras = 1'd0;
reg soc_netsoc_sdram_bankmachine5_cmd_payload_we = 1'd0;
reg soc_netsoc_sdram_bankmachine5_cmd_payload_is_cmd = 1'd0;
reg soc_netsoc_sdram_bankmachine5_cmd_payload_is_read = 1'd0;
reg soc_netsoc_sdram_bankmachine5_cmd_payload_is_write = 1'd0;
wire soc_netsoc_sdram_bankmachine5_sink_valid;
wire soc_netsoc_sdram_bankmachine5_sink_ready;
reg soc_netsoc_sdram_bankmachine5_sink_first = 1'd0;
reg soc_netsoc_sdram_bankmachine5_sink_last = 1'd0;
wire soc_netsoc_sdram_bankmachine5_sink_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine5_sink_payload_adr;
wire soc_netsoc_sdram_bankmachine5_source_valid;
wire soc_netsoc_sdram_bankmachine5_source_ready;
wire soc_netsoc_sdram_bankmachine5_source_first;
wire soc_netsoc_sdram_bankmachine5_source_last;
wire soc_netsoc_sdram_bankmachine5_source_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine5_source_payload_adr;
wire soc_netsoc_sdram_bankmachine5_syncfifo5_we;
wire soc_netsoc_sdram_bankmachine5_syncfifo5_writable;
wire soc_netsoc_sdram_bankmachine5_syncfifo5_re;
wire soc_netsoc_sdram_bankmachine5_syncfifo5_readable;
wire [24:0] soc_netsoc_sdram_bankmachine5_syncfifo5_din;
wire [24:0] soc_netsoc_sdram_bankmachine5_syncfifo5_dout;
reg [3:0] soc_netsoc_sdram_bankmachine5_level = 4'd0;
reg soc_netsoc_sdram_bankmachine5_replace = 1'd0;
reg [2:0] soc_netsoc_sdram_bankmachine5_produce = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine5_consume = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine5_wrport_adr = 3'd0;
wire [24:0] soc_netsoc_sdram_bankmachine5_wrport_dat_r;
wire soc_netsoc_sdram_bankmachine5_wrport_we;
wire [24:0] soc_netsoc_sdram_bankmachine5_wrport_dat_w;
wire soc_netsoc_sdram_bankmachine5_do_read;
wire [2:0] soc_netsoc_sdram_bankmachine5_rdport_adr;
wire [24:0] soc_netsoc_sdram_bankmachine5_rdport_dat_r;
wire soc_netsoc_sdram_bankmachine5_fifo_in_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine5_fifo_in_payload_adr;
wire soc_netsoc_sdram_bankmachine5_fifo_in_first;
wire soc_netsoc_sdram_bankmachine5_fifo_in_last;
wire soc_netsoc_sdram_bankmachine5_fifo_out_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine5_fifo_out_payload_adr;
wire soc_netsoc_sdram_bankmachine5_fifo_out_first;
wire soc_netsoc_sdram_bankmachine5_fifo_out_last;
reg soc_netsoc_sdram_bankmachine5_has_openrow = 1'd0;
reg [14:0] soc_netsoc_sdram_bankmachine5_openrow = 15'd0;
wire soc_netsoc_sdram_bankmachine5_hit;
reg soc_netsoc_sdram_bankmachine5_track_open = 1'd0;
reg soc_netsoc_sdram_bankmachine5_track_close = 1'd0;
reg soc_netsoc_sdram_bankmachine5_sel_row_adr = 1'd0;
wire soc_netsoc_sdram_bankmachine5_wait;
wire soc_netsoc_sdram_bankmachine5_done;
reg [2:0] soc_netsoc_sdram_bankmachine5_count = 3'd5;
wire soc_netsoc_sdram_bankmachine6_req_valid;
wire soc_netsoc_sdram_bankmachine6_req_ready;
wire soc_netsoc_sdram_bankmachine6_req_we;
wire [21:0] soc_netsoc_sdram_bankmachine6_req_adr;
wire soc_netsoc_sdram_bankmachine6_req_lock;
reg soc_netsoc_sdram_bankmachine6_req_wdata_ready = 1'd0;
reg soc_netsoc_sdram_bankmachine6_req_rdata_valid = 1'd0;
wire soc_netsoc_sdram_bankmachine6_refresh_req;
reg soc_netsoc_sdram_bankmachine6_refresh_gnt = 1'd0;
reg soc_netsoc_sdram_bankmachine6_cmd_valid = 1'd0;
reg soc_netsoc_sdram_bankmachine6_cmd_ready = 1'd0;
reg [14:0] soc_netsoc_sdram_bankmachine6_cmd_payload_a = 15'd0;
wire [2:0] soc_netsoc_sdram_bankmachine6_cmd_payload_ba;
reg soc_netsoc_sdram_bankmachine6_cmd_payload_cas = 1'd0;
reg soc_netsoc_sdram_bankmachine6_cmd_payload_ras = 1'd0;
reg soc_netsoc_sdram_bankmachine6_cmd_payload_we = 1'd0;
reg soc_netsoc_sdram_bankmachine6_cmd_payload_is_cmd = 1'd0;
reg soc_netsoc_sdram_bankmachine6_cmd_payload_is_read = 1'd0;
reg soc_netsoc_sdram_bankmachine6_cmd_payload_is_write = 1'd0;
wire soc_netsoc_sdram_bankmachine6_sink_valid;
wire soc_netsoc_sdram_bankmachine6_sink_ready;
reg soc_netsoc_sdram_bankmachine6_sink_first = 1'd0;
reg soc_netsoc_sdram_bankmachine6_sink_last = 1'd0;
wire soc_netsoc_sdram_bankmachine6_sink_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine6_sink_payload_adr;
wire soc_netsoc_sdram_bankmachine6_source_valid;
wire soc_netsoc_sdram_bankmachine6_source_ready;
wire soc_netsoc_sdram_bankmachine6_source_first;
wire soc_netsoc_sdram_bankmachine6_source_last;
wire soc_netsoc_sdram_bankmachine6_source_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine6_source_payload_adr;
wire soc_netsoc_sdram_bankmachine6_syncfifo6_we;
wire soc_netsoc_sdram_bankmachine6_syncfifo6_writable;
wire soc_netsoc_sdram_bankmachine6_syncfifo6_re;
wire soc_netsoc_sdram_bankmachine6_syncfifo6_readable;
wire [24:0] soc_netsoc_sdram_bankmachine6_syncfifo6_din;
wire [24:0] soc_netsoc_sdram_bankmachine6_syncfifo6_dout;
reg [3:0] soc_netsoc_sdram_bankmachine6_level = 4'd0;
reg soc_netsoc_sdram_bankmachine6_replace = 1'd0;
reg [2:0] soc_netsoc_sdram_bankmachine6_produce = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine6_consume = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine6_wrport_adr = 3'd0;
wire [24:0] soc_netsoc_sdram_bankmachine6_wrport_dat_r;
wire soc_netsoc_sdram_bankmachine6_wrport_we;
wire [24:0] soc_netsoc_sdram_bankmachine6_wrport_dat_w;
wire soc_netsoc_sdram_bankmachine6_do_read;
wire [2:0] soc_netsoc_sdram_bankmachine6_rdport_adr;
wire [24:0] soc_netsoc_sdram_bankmachine6_rdport_dat_r;
wire soc_netsoc_sdram_bankmachine6_fifo_in_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine6_fifo_in_payload_adr;
wire soc_netsoc_sdram_bankmachine6_fifo_in_first;
wire soc_netsoc_sdram_bankmachine6_fifo_in_last;
wire soc_netsoc_sdram_bankmachine6_fifo_out_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine6_fifo_out_payload_adr;
wire soc_netsoc_sdram_bankmachine6_fifo_out_first;
wire soc_netsoc_sdram_bankmachine6_fifo_out_last;
reg soc_netsoc_sdram_bankmachine6_has_openrow = 1'd0;
reg [14:0] soc_netsoc_sdram_bankmachine6_openrow = 15'd0;
wire soc_netsoc_sdram_bankmachine6_hit;
reg soc_netsoc_sdram_bankmachine6_track_open = 1'd0;
reg soc_netsoc_sdram_bankmachine6_track_close = 1'd0;
reg soc_netsoc_sdram_bankmachine6_sel_row_adr = 1'd0;
wire soc_netsoc_sdram_bankmachine6_wait;
wire soc_netsoc_sdram_bankmachine6_done;
reg [2:0] soc_netsoc_sdram_bankmachine6_count = 3'd5;
wire soc_netsoc_sdram_bankmachine7_req_valid;
wire soc_netsoc_sdram_bankmachine7_req_ready;
wire soc_netsoc_sdram_bankmachine7_req_we;
wire [21:0] soc_netsoc_sdram_bankmachine7_req_adr;
wire soc_netsoc_sdram_bankmachine7_req_lock;
reg soc_netsoc_sdram_bankmachine7_req_wdata_ready = 1'd0;
reg soc_netsoc_sdram_bankmachine7_req_rdata_valid = 1'd0;
wire soc_netsoc_sdram_bankmachine7_refresh_req;
reg soc_netsoc_sdram_bankmachine7_refresh_gnt = 1'd0;
reg soc_netsoc_sdram_bankmachine7_cmd_valid = 1'd0;
reg soc_netsoc_sdram_bankmachine7_cmd_ready = 1'd0;
reg [14:0] soc_netsoc_sdram_bankmachine7_cmd_payload_a = 15'd0;
wire [2:0] soc_netsoc_sdram_bankmachine7_cmd_payload_ba;
reg soc_netsoc_sdram_bankmachine7_cmd_payload_cas = 1'd0;
reg soc_netsoc_sdram_bankmachine7_cmd_payload_ras = 1'd0;
reg soc_netsoc_sdram_bankmachine7_cmd_payload_we = 1'd0;
reg soc_netsoc_sdram_bankmachine7_cmd_payload_is_cmd = 1'd0;
reg soc_netsoc_sdram_bankmachine7_cmd_payload_is_read = 1'd0;
reg soc_netsoc_sdram_bankmachine7_cmd_payload_is_write = 1'd0;
wire soc_netsoc_sdram_bankmachine7_sink_valid;
wire soc_netsoc_sdram_bankmachine7_sink_ready;
reg soc_netsoc_sdram_bankmachine7_sink_first = 1'd0;
reg soc_netsoc_sdram_bankmachine7_sink_last = 1'd0;
wire soc_netsoc_sdram_bankmachine7_sink_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine7_sink_payload_adr;
wire soc_netsoc_sdram_bankmachine7_source_valid;
wire soc_netsoc_sdram_bankmachine7_source_ready;
wire soc_netsoc_sdram_bankmachine7_source_first;
wire soc_netsoc_sdram_bankmachine7_source_last;
wire soc_netsoc_sdram_bankmachine7_source_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine7_source_payload_adr;
wire soc_netsoc_sdram_bankmachine7_syncfifo7_we;
wire soc_netsoc_sdram_bankmachine7_syncfifo7_writable;
wire soc_netsoc_sdram_bankmachine7_syncfifo7_re;
wire soc_netsoc_sdram_bankmachine7_syncfifo7_readable;
wire [24:0] soc_netsoc_sdram_bankmachine7_syncfifo7_din;
wire [24:0] soc_netsoc_sdram_bankmachine7_syncfifo7_dout;
reg [3:0] soc_netsoc_sdram_bankmachine7_level = 4'd0;
reg soc_netsoc_sdram_bankmachine7_replace = 1'd0;
reg [2:0] soc_netsoc_sdram_bankmachine7_produce = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine7_consume = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine7_wrport_adr = 3'd0;
wire [24:0] soc_netsoc_sdram_bankmachine7_wrport_dat_r;
wire soc_netsoc_sdram_bankmachine7_wrport_we;
wire [24:0] soc_netsoc_sdram_bankmachine7_wrport_dat_w;
wire soc_netsoc_sdram_bankmachine7_do_read;
wire [2:0] soc_netsoc_sdram_bankmachine7_rdport_adr;
wire [24:0] soc_netsoc_sdram_bankmachine7_rdport_dat_r;
wire soc_netsoc_sdram_bankmachine7_fifo_in_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine7_fifo_in_payload_adr;
wire soc_netsoc_sdram_bankmachine7_fifo_in_first;
wire soc_netsoc_sdram_bankmachine7_fifo_in_last;
wire soc_netsoc_sdram_bankmachine7_fifo_out_payload_we;
wire [21:0] soc_netsoc_sdram_bankmachine7_fifo_out_payload_adr;
wire soc_netsoc_sdram_bankmachine7_fifo_out_first;
wire soc_netsoc_sdram_bankmachine7_fifo_out_last;
reg soc_netsoc_sdram_bankmachine7_has_openrow = 1'd0;
reg [14:0] soc_netsoc_sdram_bankmachine7_openrow = 15'd0;
wire soc_netsoc_sdram_bankmachine7_hit;
reg soc_netsoc_sdram_bankmachine7_track_open = 1'd0;
reg soc_netsoc_sdram_bankmachine7_track_close = 1'd0;
reg soc_netsoc_sdram_bankmachine7_sel_row_adr = 1'd0;
wire soc_netsoc_sdram_bankmachine7_wait;
wire soc_netsoc_sdram_bankmachine7_done;
reg [2:0] soc_netsoc_sdram_bankmachine7_count = 3'd5;
reg soc_netsoc_sdram_choose_cmd_want_reads = 1'd0;
reg soc_netsoc_sdram_choose_cmd_want_writes = 1'd0;
reg soc_netsoc_sdram_choose_cmd_want_cmds = 1'd0;
wire soc_netsoc_sdram_choose_cmd_cmd_valid;
reg soc_netsoc_sdram_choose_cmd_cmd_ready = 1'd0;
wire [14:0] soc_netsoc_sdram_choose_cmd_cmd_payload_a;
wire [2:0] soc_netsoc_sdram_choose_cmd_cmd_payload_ba;
reg soc_netsoc_sdram_choose_cmd_cmd_payload_cas = 1'd0;
reg soc_netsoc_sdram_choose_cmd_cmd_payload_ras = 1'd0;
reg soc_netsoc_sdram_choose_cmd_cmd_payload_we = 1'd0;
wire soc_netsoc_sdram_choose_cmd_cmd_payload_is_cmd;
wire soc_netsoc_sdram_choose_cmd_cmd_payload_is_read;
wire soc_netsoc_sdram_choose_cmd_cmd_payload_is_write;
reg [7:0] soc_netsoc_sdram_choose_cmd_valids = 8'd0;
wire [7:0] soc_netsoc_sdram_choose_cmd_request;
reg [2:0] soc_netsoc_sdram_choose_cmd_grant = 3'd0;
wire soc_netsoc_sdram_choose_cmd_ce;
reg soc_netsoc_sdram_choose_req_want_reads = 1'd0;
reg soc_netsoc_sdram_choose_req_want_writes = 1'd0;
reg soc_netsoc_sdram_choose_req_want_cmds = 1'd0;
wire soc_netsoc_sdram_choose_req_cmd_valid;
reg soc_netsoc_sdram_choose_req_cmd_ready = 1'd0;
wire [14:0] soc_netsoc_sdram_choose_req_cmd_payload_a;
wire [2:0] soc_netsoc_sdram_choose_req_cmd_payload_ba;
reg soc_netsoc_sdram_choose_req_cmd_payload_cas = 1'd0;
reg soc_netsoc_sdram_choose_req_cmd_payload_ras = 1'd0;
reg soc_netsoc_sdram_choose_req_cmd_payload_we = 1'd0;
wire soc_netsoc_sdram_choose_req_cmd_payload_is_cmd;
wire soc_netsoc_sdram_choose_req_cmd_payload_is_read;
wire soc_netsoc_sdram_choose_req_cmd_payload_is_write;
reg [7:0] soc_netsoc_sdram_choose_req_valids = 8'd0;
wire [7:0] soc_netsoc_sdram_choose_req_request;
reg [2:0] soc_netsoc_sdram_choose_req_grant = 3'd0;
wire soc_netsoc_sdram_choose_req_ce;
reg [14:0] soc_netsoc_sdram_nop_a = 15'd0;
reg [2:0] soc_netsoc_sdram_nop_ba = 3'd0;
reg soc_netsoc_sdram_nop_cas = 1'd0;
reg soc_netsoc_sdram_nop_ras = 1'd0;
reg soc_netsoc_sdram_nop_we = 1'd0;
reg [1:0] soc_netsoc_sdram_sel0 = 2'd0;
reg [1:0] soc_netsoc_sdram_sel1 = 2'd0;
reg [1:0] soc_netsoc_sdram_sel2 = 2'd0;
reg [1:0] soc_netsoc_sdram_sel3 = 2'd0;
wire soc_netsoc_sdram_read_available;
wire soc_netsoc_sdram_write_available;
reg soc_netsoc_sdram_en0 = 1'd0;
wire soc_netsoc_sdram_max_time0;
reg [4:0] soc_netsoc_sdram_time0 = 5'd0;
reg soc_netsoc_sdram_en1 = 1'd0;
wire soc_netsoc_sdram_max_time1;
reg [3:0] soc_netsoc_sdram_time1 = 4'd0;
wire soc_netsoc_sdram_go_to_refresh;
wire soc_netsoc_sdram_bandwidth_update_re;
wire soc_netsoc_sdram_bandwidth_update_r;
reg soc_netsoc_sdram_bandwidth_update_w = 1'd0;
reg [23:0] soc_netsoc_sdram_bandwidth_nreads_status = 24'd0;
reg [23:0] soc_netsoc_sdram_bandwidth_nwrites_status = 24'd0;
reg [7:0] soc_netsoc_sdram_bandwidth_data_width_status = 8'd128;
reg soc_netsoc_sdram_bandwidth_cmd_valid = 1'd0;
reg soc_netsoc_sdram_bandwidth_cmd_ready = 1'd0;
reg soc_netsoc_sdram_bandwidth_cmd_is_read = 1'd0;
reg soc_netsoc_sdram_bandwidth_cmd_is_write = 1'd0;
reg [23:0] soc_netsoc_sdram_bandwidth_counter = 24'd0;
reg soc_netsoc_sdram_bandwidth_period = 1'd0;
reg [23:0] soc_netsoc_sdram_bandwidth_nreads = 24'd0;
reg [23:0] soc_netsoc_sdram_bandwidth_nwrites = 24'd0;
reg [23:0] soc_netsoc_sdram_bandwidth_nreads_r = 24'd0;
reg [23:0] soc_netsoc_sdram_bandwidth_nwrites_r = 24'd0;
wire [29:0] soc_netsoc_interface1_wb_sdram_adr;
wire [31:0] soc_netsoc_interface1_wb_sdram_dat_w;
wire [31:0] soc_netsoc_interface1_wb_sdram_dat_r;
wire [3:0] soc_netsoc_interface1_wb_sdram_sel;
wire soc_netsoc_interface1_wb_sdram_cyc;
wire soc_netsoc_interface1_wb_sdram_stb;
wire soc_netsoc_interface1_wb_sdram_ack;
wire soc_netsoc_interface1_wb_sdram_we;
wire [2:0] soc_netsoc_interface1_wb_sdram_cti;
wire [1:0] soc_netsoc_interface1_wb_sdram_bte;
wire soc_netsoc_interface1_wb_sdram_err;
reg soc_netsoc_port_cmd_valid = 1'd0;
wire soc_netsoc_port_cmd_ready;
reg soc_netsoc_port_cmd_payload_we = 1'd0;
wire [24:0] soc_netsoc_port_cmd_payload_adr;
reg soc_netsoc_port_wdata_valid = 1'd0;
wire soc_netsoc_port_wdata_ready;
wire [127:0] soc_netsoc_port_wdata_payload_data;
wire [15:0] soc_netsoc_port_wdata_payload_we;
wire soc_netsoc_port_rdata_valid;
reg soc_netsoc_port_rdata_ready = 1'd0;
wire [127:0] soc_netsoc_port_rdata_payload_data;
wire [29:0] soc_netsoc_interface_adr;
wire [127:0] soc_netsoc_interface_dat_w;
wire [127:0] soc_netsoc_interface_dat_r;
wire [15:0] soc_netsoc_interface_sel;
reg soc_netsoc_interface_cyc = 1'd0;
reg soc_netsoc_interface_stb = 1'd0;
reg soc_netsoc_interface_ack = 1'd0;
reg soc_netsoc_interface_we = 1'd0;
wire [8:0] soc_netsoc_data_port_adr;
wire [127:0] soc_netsoc_data_port_dat_r;
reg [15:0] soc_netsoc_data_port_we = 16'd0;
reg [127:0] soc_netsoc_data_port_dat_w = 128'd0;
reg soc_netsoc_write_from_slave = 1'd0;
reg [1:0] soc_netsoc_adr_offset_r = 2'd0;
wire [8:0] soc_netsoc_tag_port_adr;
wire [23:0] soc_netsoc_tag_port_dat_r;
reg soc_netsoc_tag_port_we = 1'd0;
wire [23:0] soc_netsoc_tag_port_dat_w;
wire [22:0] soc_netsoc_tag_do_tag;
wire soc_netsoc_tag_do_dirty;
wire [22:0] soc_netsoc_tag_di_tag;
reg soc_netsoc_tag_di_dirty = 1'd0;
reg soc_netsoc_word_clr = 1'd0;
reg soc_netsoc_word_inc = 1'd0;
reg soc_netsoc_clk0 = 1'd0;
wire [29:0] soc_netsoc_bus_adr;
wire [31:0] soc_netsoc_bus_dat_w;
wire [31:0] soc_netsoc_bus_dat_r;
wire [3:0] soc_netsoc_bus_sel;
wire soc_netsoc_bus_cyc;
wire soc_netsoc_bus_stb;
reg soc_netsoc_bus_ack = 1'd0;
wire soc_netsoc_bus_we;
wire [2:0] soc_netsoc_bus_cti;
wire [1:0] soc_netsoc_bus_bte;
reg soc_netsoc_bus_err = 1'd0;
reg [3:0] soc_netsoc_bitbang_storage_full = 4'd0;
wire [3:0] soc_netsoc_bitbang_storage;
reg soc_netsoc_bitbang_re = 1'd0;
reg soc_netsoc_miso_status = 1'd0;
reg soc_netsoc_bitbang_en_storage_full = 1'd0;
wire soc_netsoc_bitbang_en_storage;
reg soc_netsoc_bitbang_en_re = 1'd0;
reg soc_netsoc_cs_n = 1'd1;
reg soc_netsoc_clk1 = 1'd0;
reg [31:0] soc_netsoc_sr = 32'd0;
reg soc_netsoc_i = 1'd0;
reg soc_netsoc_miso = 1'd0;
reg [7:0] soc_netsoc_counter = 8'd0;
reg soc_ethphy_reset_storage_full = 1'd0;
wire soc_ethphy_reset_storage;
reg soc_ethphy_reset_re = 1'd0;
(* dont_touch = "true" *) wire eth_rx_clk;
wire eth_rx_rst;
(* dont_touch = "true" *) wire eth_tx_clk;
wire eth_tx_rst;
wire eth_tx90_clk;
wire soc_ethphy_eth_rx_clk_ibuf;
wire soc_ethphy_pll_locked;
wire soc_ethphy_pll_fb;
wire soc_ethphy_pll_clk_tx;
wire soc_ethphy_pll_clk_tx90;
wire soc_ethphy_eth_tx_clk_obuf;
wire soc_ethphy_reset0;
wire soc_ethphy_reset1;
reg [8:0] soc_ethphy_counter = 9'd0;
wire soc_ethphy_counter_done;
wire soc_ethphy_counter_ce;
wire soc_ethphy_sink_valid;
wire soc_ethphy_sink_ready;
wire soc_ethphy_sink_first;
wire soc_ethphy_sink_last;
wire [7:0] soc_ethphy_sink_payload_data;
wire soc_ethphy_sink_payload_last_be;
wire soc_ethphy_sink_payload_error;
wire soc_ethphy_tx_ctl_obuf;
wire [3:0] soc_ethphy_tx_data_obuf;
reg soc_ethphy_source_valid = 1'd0;
wire soc_ethphy_source_ready;
reg soc_ethphy_source_first = 1'd0;
wire soc_ethphy_source_last;
reg [7:0] soc_ethphy_source_payload_data = 8'd0;
reg soc_ethphy_source_payload_last_be = 1'd0;
reg soc_ethphy_source_payload_error = 1'd0;
wire soc_ethphy_rx_ctl_ibuf;
wire soc_ethphy_rx_ctl_idelay;
wire soc_ethphy_rx_ctl;
wire [3:0] soc_ethphy_rx_data_ibuf;
wire [3:0] soc_ethphy_rx_data_idelay;
wire [7:0] soc_ethphy_rx_data;
reg soc_ethphy_rx_ctl_d = 1'd0;
wire soc_ethphy_last;
reg [2:0] soc_ethphy_storage_full = 3'd0;
wire [2:0] soc_ethphy_storage;
reg soc_ethphy_re = 1'd0;
wire soc_ethphy_status;
wire soc_ethphy_data_w;
wire soc_ethphy_data_oe;
wire soc_ethphy_data_r;
wire soc_ethmac_tx_gap_inserter_sink_valid;
reg soc_ethmac_tx_gap_inserter_sink_ready = 1'd0;
wire soc_ethmac_tx_gap_inserter_sink_first;
wire soc_ethmac_tx_gap_inserter_sink_last;
wire [7:0] soc_ethmac_tx_gap_inserter_sink_payload_data;
wire soc_ethmac_tx_gap_inserter_sink_payload_last_be;
wire soc_ethmac_tx_gap_inserter_sink_payload_error;
reg soc_ethmac_tx_gap_inserter_source_valid = 1'd0;
wire soc_ethmac_tx_gap_inserter_source_ready;
reg soc_ethmac_tx_gap_inserter_source_first = 1'd0;
reg soc_ethmac_tx_gap_inserter_source_last = 1'd0;
reg [7:0] soc_ethmac_tx_gap_inserter_source_payload_data = 8'd0;
reg soc_ethmac_tx_gap_inserter_source_payload_last_be = 1'd0;
reg soc_ethmac_tx_gap_inserter_source_payload_error = 1'd0;
reg [3:0] soc_ethmac_tx_gap_inserter_counter = 4'd0;
reg soc_ethmac_tx_gap_inserter_counter_reset = 1'd0;
reg soc_ethmac_tx_gap_inserter_counter_ce = 1'd0;
reg soc_ethmac_preamble_crc_status = 1'd1;
reg [31:0] soc_ethmac_preamble_errors_status = 32'd0;
reg [31:0] soc_ethmac_crc_errors_status = 32'd0;
wire soc_ethmac_preamble_inserter_sink_valid;
reg soc_ethmac_preamble_inserter_sink_ready = 1'd0;
wire soc_ethmac_preamble_inserter_sink_first;
wire soc_ethmac_preamble_inserter_sink_last;
wire [7:0] soc_ethmac_preamble_inserter_sink_payload_data;
wire soc_ethmac_preamble_inserter_sink_payload_last_be;
wire soc_ethmac_preamble_inserter_sink_payload_error;
reg soc_ethmac_preamble_inserter_source_valid = 1'd0;
wire soc_ethmac_preamble_inserter_source_ready;
reg soc_ethmac_preamble_inserter_source_first = 1'd0;
reg soc_ethmac_preamble_inserter_source_last = 1'd0;
reg [7:0] soc_ethmac_preamble_inserter_source_payload_data = 8'd0;
wire soc_ethmac_preamble_inserter_source_payload_last_be;
reg soc_ethmac_preamble_inserter_source_payload_error = 1'd0;
reg [63:0] soc_ethmac_preamble_inserter_preamble = 64'd15372286728091293013;
reg [2:0] soc_ethmac_preamble_inserter_cnt = 3'd0;
reg soc_ethmac_preamble_inserter_clr_cnt = 1'd0;
reg soc_ethmac_preamble_inserter_inc_cnt = 1'd0;
wire soc_ethmac_preamble_checker_sink_valid;
reg soc_ethmac_preamble_checker_sink_ready = 1'd0;
wire soc_ethmac_preamble_checker_sink_first;
wire soc_ethmac_preamble_checker_sink_last;
wire [7:0] soc_ethmac_preamble_checker_sink_payload_data;
wire soc_ethmac_preamble_checker_sink_payload_last_be;
wire soc_ethmac_preamble_checker_sink_payload_error;
reg soc_ethmac_preamble_checker_source_valid = 1'd0;
wire soc_ethmac_preamble_checker_source_ready;
reg soc_ethmac_preamble_checker_source_first = 1'd0;
reg soc_ethmac_preamble_checker_source_last = 1'd0;
wire [7:0] soc_ethmac_preamble_checker_source_payload_data;
wire soc_ethmac_preamble_checker_source_payload_last_be;
reg soc_ethmac_preamble_checker_source_payload_error = 1'd0;
reg soc_ethmac_preamble_checker_error = 1'd0;
wire soc_ethmac_crc32_inserter_sink_valid;
reg soc_ethmac_crc32_inserter_sink_ready = 1'd0;
wire soc_ethmac_crc32_inserter_sink_first;
wire soc_ethmac_crc32_inserter_sink_last;
wire [7:0] soc_ethmac_crc32_inserter_sink_payload_data;
wire soc_ethmac_crc32_inserter_sink_payload_last_be;
wire soc_ethmac_crc32_inserter_sink_payload_error;
reg soc_ethmac_crc32_inserter_source_valid = 1'd0;
wire soc_ethmac_crc32_inserter_source_ready;
reg soc_ethmac_crc32_inserter_source_first = 1'd0;
reg soc_ethmac_crc32_inserter_source_last = 1'd0;
reg [7:0] soc_ethmac_crc32_inserter_source_payload_data = 8'd0;
reg soc_ethmac_crc32_inserter_source_payload_last_be = 1'd0;
reg soc_ethmac_crc32_inserter_source_payload_error = 1'd0;
reg [7:0] soc_ethmac_crc32_inserter_data0 = 8'd0;
wire [31:0] soc_ethmac_crc32_inserter_value;
wire soc_ethmac_crc32_inserter_error;
wire [7:0] soc_ethmac_crc32_inserter_data1;
wire [31:0] soc_ethmac_crc32_inserter_last;
reg [31:0] soc_ethmac_crc32_inserter_next = 32'd0;
reg [31:0] soc_ethmac_crc32_inserter_reg = 32'd4294967295;
reg soc_ethmac_crc32_inserter_ce = 1'd0;
reg soc_ethmac_crc32_inserter_reset = 1'd0;
reg [1:0] soc_ethmac_crc32_inserter_cnt = 2'd3;
wire soc_ethmac_crc32_inserter_cnt_done;
reg soc_ethmac_crc32_inserter_is_ongoing0 = 1'd0;
reg soc_ethmac_crc32_inserter_is_ongoing1 = 1'd0;
wire soc_ethmac_crc32_checker_sink_sink_valid;
reg soc_ethmac_crc32_checker_sink_sink_ready = 1'd0;
wire soc_ethmac_crc32_checker_sink_sink_first;
wire soc_ethmac_crc32_checker_sink_sink_last;
wire [7:0] soc_ethmac_crc32_checker_sink_sink_payload_data;
wire soc_ethmac_crc32_checker_sink_sink_payload_last_be;
wire soc_ethmac_crc32_checker_sink_sink_payload_error;
wire soc_ethmac_crc32_checker_source_source_valid;
wire soc_ethmac_crc32_checker_source_source_ready;
reg soc_ethmac_crc32_checker_source_source_first = 1'd0;
wire soc_ethmac_crc32_checker_source_source_last;
wire [7:0] soc_ethmac_crc32_checker_source_source_payload_data;
wire soc_ethmac_crc32_checker_source_source_payload_last_be;
reg soc_ethmac_crc32_checker_source_source_payload_error = 1'd0;
wire soc_ethmac_crc32_checker_error;
wire [7:0] soc_ethmac_crc32_checker_crc_data0;
wire [31:0] soc_ethmac_crc32_checker_crc_value;
wire soc_ethmac_crc32_checker_crc_error;
wire [7:0] soc_ethmac_crc32_checker_crc_data1;
wire [31:0] soc_ethmac_crc32_checker_crc_last;
reg [31:0] soc_ethmac_crc32_checker_crc_next = 32'd0;
reg [31:0] soc_ethmac_crc32_checker_crc_reg = 32'd4294967295;
reg soc_ethmac_crc32_checker_crc_ce = 1'd0;
reg soc_ethmac_crc32_checker_crc_reset = 1'd0;
reg soc_ethmac_crc32_checker_syncfifo_sink_valid = 1'd0;
wire soc_ethmac_crc32_checker_syncfifo_sink_ready;
wire soc_ethmac_crc32_checker_syncfifo_sink_first;
wire soc_ethmac_crc32_checker_syncfifo_sink_last;
wire [7:0] soc_ethmac_crc32_checker_syncfifo_sink_payload_data;
wire soc_ethmac_crc32_checker_syncfifo_sink_payload_last_be;
wire soc_ethmac_crc32_checker_syncfifo_sink_payload_error;
wire soc_ethmac_crc32_checker_syncfifo_source_valid;
wire soc_ethmac_crc32_checker_syncfifo_source_ready;
wire soc_ethmac_crc32_checker_syncfifo_source_first;
wire soc_ethmac_crc32_checker_syncfifo_source_last;
wire [7:0] soc_ethmac_crc32_checker_syncfifo_source_payload_data;
wire soc_ethmac_crc32_checker_syncfifo_source_payload_last_be;
wire soc_ethmac_crc32_checker_syncfifo_source_payload_error;
wire soc_ethmac_crc32_checker_syncfifo_syncfifo_we;
wire soc_ethmac_crc32_checker_syncfifo_syncfifo_writable;
wire soc_ethmac_crc32_checker_syncfifo_syncfifo_re;
wire soc_ethmac_crc32_checker_syncfifo_syncfifo_readable;
wire [11:0] soc_ethmac_crc32_checker_syncfifo_syncfifo_din;
wire [11:0] soc_ethmac_crc32_checker_syncfifo_syncfifo_dout;
reg [2:0] soc_ethmac_crc32_checker_syncfifo_level = 3'd0;
reg soc_ethmac_crc32_checker_syncfifo_replace = 1'd0;
reg [2:0] soc_ethmac_crc32_checker_syncfifo_produce = 3'd0;
reg [2:0] soc_ethmac_crc32_checker_syncfifo_consume = 3'd0;
reg [2:0] soc_ethmac_crc32_checker_syncfifo_wrport_adr = 3'd0;
wire [11:0] soc_ethmac_crc32_checker_syncfifo_wrport_dat_r;
wire soc_ethmac_crc32_checker_syncfifo_wrport_we;
wire [11:0] soc_ethmac_crc32_checker_syncfifo_wrport_dat_w;
wire soc_ethmac_crc32_checker_syncfifo_do_read;
wire [2:0] soc_ethmac_crc32_checker_syncfifo_rdport_adr;
wire [11:0] soc_ethmac_crc32_checker_syncfifo_rdport_dat_r;
wire [7:0] soc_ethmac_crc32_checker_syncfifo_fifo_in_payload_data;
wire soc_ethmac_crc32_checker_syncfifo_fifo_in_payload_last_be;
wire soc_ethmac_crc32_checker_syncfifo_fifo_in_payload_error;
wire soc_ethmac_crc32_checker_syncfifo_fifo_in_first;
wire soc_ethmac_crc32_checker_syncfifo_fifo_in_last;
wire [7:0] soc_ethmac_crc32_checker_syncfifo_fifo_out_payload_data;
wire soc_ethmac_crc32_checker_syncfifo_fifo_out_payload_last_be;
wire soc_ethmac_crc32_checker_syncfifo_fifo_out_payload_error;
wire soc_ethmac_crc32_checker_syncfifo_fifo_out_first;
wire soc_ethmac_crc32_checker_syncfifo_fifo_out_last;
reg soc_ethmac_crc32_checker_fifo_reset = 1'd0;
wire soc_ethmac_crc32_checker_fifo_in;
wire soc_ethmac_crc32_checker_fifo_out;
wire soc_ethmac_crc32_checker_fifo_full;
wire soc_ethmac_ps_preamble_error_i;
wire soc_ethmac_ps_preamble_error_o;
reg soc_ethmac_ps_preamble_error_toggle_i = 1'd0;
wire soc_ethmac_ps_preamble_error_toggle_o;
reg soc_ethmac_ps_preamble_error_toggle_o_r = 1'd0;
wire soc_ethmac_ps_crc_error_i;
wire soc_ethmac_ps_crc_error_o;
reg soc_ethmac_ps_crc_error_toggle_i = 1'd0;
wire soc_ethmac_ps_crc_error_toggle_o;
reg soc_ethmac_ps_crc_error_toggle_o_r = 1'd0;
wire soc_ethmac_padding_inserter_sink_valid;
reg soc_ethmac_padding_inserter_sink_ready = 1'd0;
wire soc_ethmac_padding_inserter_sink_first;
wire soc_ethmac_padding_inserter_sink_last;
wire [7:0] soc_ethmac_padding_inserter_sink_payload_data;
wire soc_ethmac_padding_inserter_sink_payload_last_be;
wire soc_ethmac_padding_inserter_sink_payload_error;
reg soc_ethmac_padding_inserter_source_valid = 1'd0;
wire soc_ethmac_padding_inserter_source_ready;
reg soc_ethmac_padding_inserter_source_first = 1'd0;
reg soc_ethmac_padding_inserter_source_last = 1'd0;
reg [7:0] soc_ethmac_padding_inserter_source_payload_data = 8'd0;
reg soc_ethmac_padding_inserter_source_payload_last_be = 1'd0;
reg soc_ethmac_padding_inserter_source_payload_error = 1'd0;
reg [15:0] soc_ethmac_padding_inserter_counter = 16'd1;
wire soc_ethmac_padding_inserter_counter_done;
reg soc_ethmac_padding_inserter_counter_reset = 1'd0;
reg soc_ethmac_padding_inserter_counter_ce = 1'd0;
wire soc_ethmac_padding_checker_sink_valid;
wire soc_ethmac_padding_checker_sink_ready;
wire soc_ethmac_padding_checker_sink_first;
wire soc_ethmac_padding_checker_sink_last;
wire [7:0] soc_ethmac_padding_checker_sink_payload_data;
wire soc_ethmac_padding_checker_sink_payload_last_be;
wire soc_ethmac_padding_checker_sink_payload_error;
wire soc_ethmac_padding_checker_source_valid;
wire soc_ethmac_padding_checker_source_ready;
wire soc_ethmac_padding_checker_source_first;
wire soc_ethmac_padding_checker_source_last;
wire [7:0] soc_ethmac_padding_checker_source_payload_data;
wire soc_ethmac_padding_checker_source_payload_last_be;
wire soc_ethmac_padding_checker_source_payload_error;
wire soc_ethmac_tx_last_be_sink_valid;
wire soc_ethmac_tx_last_be_sink_ready;
wire soc_ethmac_tx_last_be_sink_first;
wire soc_ethmac_tx_last_be_sink_last;
wire [7:0] soc_ethmac_tx_last_be_sink_payload_data;
wire soc_ethmac_tx_last_be_sink_payload_last_be;
wire soc_ethmac_tx_last_be_sink_payload_error;
wire soc_ethmac_tx_last_be_source_valid;
wire soc_ethmac_tx_last_be_source_ready;
reg soc_ethmac_tx_last_be_source_first = 1'd0;
wire soc_ethmac_tx_last_be_source_last;
wire [7:0] soc_ethmac_tx_last_be_source_payload_data;
reg soc_ethmac_tx_last_be_source_payload_last_be = 1'd0;
reg soc_ethmac_tx_last_be_source_payload_error = 1'd0;
reg soc_ethmac_tx_last_be_ongoing = 1'd1;
wire soc_ethmac_rx_last_be_sink_valid;
wire soc_ethmac_rx_last_be_sink_ready;
wire soc_ethmac_rx_last_be_sink_first;
wire soc_ethmac_rx_last_be_sink_last;
wire [7:0] soc_ethmac_rx_last_be_sink_payload_data;
wire soc_ethmac_rx_last_be_sink_payload_last_be;
wire soc_ethmac_rx_last_be_sink_payload_error;
wire soc_ethmac_rx_last_be_source_valid;
wire soc_ethmac_rx_last_be_source_ready;
wire soc_ethmac_rx_last_be_source_first;
wire soc_ethmac_rx_last_be_source_last;
wire [7:0] soc_ethmac_rx_last_be_source_payload_data;
reg soc_ethmac_rx_last_be_source_payload_last_be = 1'd0;
wire soc_ethmac_rx_last_be_source_payload_error;
wire soc_ethmac_tx_converter_sink_valid;
wire soc_ethmac_tx_converter_sink_ready;
wire soc_ethmac_tx_converter_sink_first;
wire soc_ethmac_tx_converter_sink_last;
wire [31:0] soc_ethmac_tx_converter_sink_payload_data;
wire [3:0] soc_ethmac_tx_converter_sink_payload_last_be;
wire [3:0] soc_ethmac_tx_converter_sink_payload_error;
wire soc_ethmac_tx_converter_source_valid;
wire soc_ethmac_tx_converter_source_ready;
wire soc_ethmac_tx_converter_source_first;
wire soc_ethmac_tx_converter_source_last;
wire [7:0] soc_ethmac_tx_converter_source_payload_data;
wire soc_ethmac_tx_converter_source_payload_last_be;
wire soc_ethmac_tx_converter_source_payload_error;
wire soc_ethmac_tx_converter_converter_sink_valid;
wire soc_ethmac_tx_converter_converter_sink_ready;
wire soc_ethmac_tx_converter_converter_sink_first;
wire soc_ethmac_tx_converter_converter_sink_last;
reg [39:0] soc_ethmac_tx_converter_converter_sink_payload_data = 40'd0;
wire soc_ethmac_tx_converter_converter_source_valid;
wire soc_ethmac_tx_converter_converter_source_ready;
wire soc_ethmac_tx_converter_converter_source_first;
wire soc_ethmac_tx_converter_converter_source_last;
reg [9:0] soc_ethmac_tx_converter_converter_source_payload_data = 10'd0;
wire soc_ethmac_tx_converter_converter_source_payload_valid_token_count;
reg [1:0] soc_ethmac_tx_converter_converter_mux = 2'd0;
wire soc_ethmac_tx_converter_converter_first;
wire soc_ethmac_tx_converter_converter_last;
wire soc_ethmac_tx_converter_source_source_valid;
wire soc_ethmac_tx_converter_source_source_ready;
wire soc_ethmac_tx_converter_source_source_first;
wire soc_ethmac_tx_converter_source_source_last;
wire [9:0] soc_ethmac_tx_converter_source_source_payload_data;
wire soc_ethmac_rx_converter_sink_valid;
wire soc_ethmac_rx_converter_sink_ready;
wire soc_ethmac_rx_converter_sink_first;
wire soc_ethmac_rx_converter_sink_last;
wire [7:0] soc_ethmac_rx_converter_sink_payload_data;
wire soc_ethmac_rx_converter_sink_payload_last_be;
wire soc_ethmac_rx_converter_sink_payload_error;
wire soc_ethmac_rx_converter_source_valid;
wire soc_ethmac_rx_converter_source_ready;
wire soc_ethmac_rx_converter_source_first;
wire soc_ethmac_rx_converter_source_last;
reg [31:0] soc_ethmac_rx_converter_source_payload_data = 32'd0;
reg [3:0] soc_ethmac_rx_converter_source_payload_last_be = 4'd0;
reg [3:0] soc_ethmac_rx_converter_source_payload_error = 4'd0;
wire soc_ethmac_rx_converter_converter_sink_valid;
wire soc_ethmac_rx_converter_converter_sink_ready;
wire soc_ethmac_rx_converter_converter_sink_first;
wire soc_ethmac_rx_converter_converter_sink_last;
wire [9:0] soc_ethmac_rx_converter_converter_sink_payload_data;
wire soc_ethmac_rx_converter_converter_source_valid;
wire soc_ethmac_rx_converter_converter_source_ready;
reg soc_ethmac_rx_converter_converter_source_first = 1'd0;
reg soc_ethmac_rx_converter_converter_source_last = 1'd0;
reg [39:0] soc_ethmac_rx_converter_converter_source_payload_data = 40'd0;
reg [2:0] soc_ethmac_rx_converter_converter_source_payload_valid_token_count = 3'd0;
reg [1:0] soc_ethmac_rx_converter_converter_demux = 2'd0;
wire soc_ethmac_rx_converter_converter_load_part;
reg soc_ethmac_rx_converter_converter_strobe_all = 1'd0;
wire soc_ethmac_rx_converter_source_source_valid;
wire soc_ethmac_rx_converter_source_source_ready;
wire soc_ethmac_rx_converter_source_source_first;
wire soc_ethmac_rx_converter_source_source_last;
wire [39:0] soc_ethmac_rx_converter_source_source_payload_data;
wire soc_ethmac_tx_cdc_sink_valid;
wire soc_ethmac_tx_cdc_sink_ready;
wire soc_ethmac_tx_cdc_sink_first;
wire soc_ethmac_tx_cdc_sink_last;
wire [31:0] soc_ethmac_tx_cdc_sink_payload_data;
wire [3:0] soc_ethmac_tx_cdc_sink_payload_last_be;
wire [3:0] soc_ethmac_tx_cdc_sink_payload_error;
wire soc_ethmac_tx_cdc_source_valid;
wire soc_ethmac_tx_cdc_source_ready;
wire soc_ethmac_tx_cdc_source_first;
wire soc_ethmac_tx_cdc_source_last;
wire [31:0] soc_ethmac_tx_cdc_source_payload_data;
wire [3:0] soc_ethmac_tx_cdc_source_payload_last_be;
wire [3:0] soc_ethmac_tx_cdc_source_payload_error;
wire soc_ethmac_tx_cdc_asyncfifo_we;
wire soc_ethmac_tx_cdc_asyncfifo_writable;
wire soc_ethmac_tx_cdc_asyncfifo_re;
wire soc_ethmac_tx_cdc_asyncfifo_readable;
wire [41:0] soc_ethmac_tx_cdc_asyncfifo_din;
wire [41:0] soc_ethmac_tx_cdc_asyncfifo_dout;
wire soc_ethmac_tx_cdc_graycounter0_ce;
(* dont_touch = "true" *) reg [6:0] soc_ethmac_tx_cdc_graycounter0_q = 7'd0;
wire [6:0] soc_ethmac_tx_cdc_graycounter0_q_next;
reg [6:0] soc_ethmac_tx_cdc_graycounter0_q_binary = 7'd0;
reg [6:0] soc_ethmac_tx_cdc_graycounter0_q_next_binary = 7'd0;
wire soc_ethmac_tx_cdc_graycounter1_ce;
(* dont_touch = "true" *) reg [6:0] soc_ethmac_tx_cdc_graycounter1_q = 7'd0;
wire [6:0] soc_ethmac_tx_cdc_graycounter1_q_next;
reg [6:0] soc_ethmac_tx_cdc_graycounter1_q_binary = 7'd0;
reg [6:0] soc_ethmac_tx_cdc_graycounter1_q_next_binary = 7'd0;
wire [6:0] soc_ethmac_tx_cdc_produce_rdomain;
wire [6:0] soc_ethmac_tx_cdc_consume_wdomain;
wire [5:0] soc_ethmac_tx_cdc_wrport_adr;
wire [41:0] soc_ethmac_tx_cdc_wrport_dat_r;
wire soc_ethmac_tx_cdc_wrport_we;
wire [41:0] soc_ethmac_tx_cdc_wrport_dat_w;
wire [5:0] soc_ethmac_tx_cdc_rdport_adr;
wire [41:0] soc_ethmac_tx_cdc_rdport_dat_r;
wire [31:0] soc_ethmac_tx_cdc_fifo_in_payload_data;
wire [3:0] soc_ethmac_tx_cdc_fifo_in_payload_last_be;
wire [3:0] soc_ethmac_tx_cdc_fifo_in_payload_error;
wire soc_ethmac_tx_cdc_fifo_in_first;
wire soc_ethmac_tx_cdc_fifo_in_last;
wire [31:0] soc_ethmac_tx_cdc_fifo_out_payload_data;
wire [3:0] soc_ethmac_tx_cdc_fifo_out_payload_last_be;
wire [3:0] soc_ethmac_tx_cdc_fifo_out_payload_error;
wire soc_ethmac_tx_cdc_fifo_out_first;
wire soc_ethmac_tx_cdc_fifo_out_last;
wire soc_ethmac_rx_cdc_sink_valid;
wire soc_ethmac_rx_cdc_sink_ready;
wire soc_ethmac_rx_cdc_sink_first;
wire soc_ethmac_rx_cdc_sink_last;
wire [31:0] soc_ethmac_rx_cdc_sink_payload_data;
wire [3:0] soc_ethmac_rx_cdc_sink_payload_last_be;
wire [3:0] soc_ethmac_rx_cdc_sink_payload_error;
wire soc_ethmac_rx_cdc_source_valid;
wire soc_ethmac_rx_cdc_source_ready;
wire soc_ethmac_rx_cdc_source_first;
wire soc_ethmac_rx_cdc_source_last;
wire [31:0] soc_ethmac_rx_cdc_source_payload_data;
wire [3:0] soc_ethmac_rx_cdc_source_payload_last_be;
wire [3:0] soc_ethmac_rx_cdc_source_payload_error;
wire soc_ethmac_rx_cdc_asyncfifo_we;
wire soc_ethmac_rx_cdc_asyncfifo_writable;
wire soc_ethmac_rx_cdc_asyncfifo_re;
wire soc_ethmac_rx_cdc_asyncfifo_readable;
wire [41:0] soc_ethmac_rx_cdc_asyncfifo_din;
wire [41:0] soc_ethmac_rx_cdc_asyncfifo_dout;
wire soc_ethmac_rx_cdc_graycounter0_ce;
(* dont_touch = "true" *) reg [6:0] soc_ethmac_rx_cdc_graycounter0_q = 7'd0;
wire [6:0] soc_ethmac_rx_cdc_graycounter0_q_next;
reg [6:0] soc_ethmac_rx_cdc_graycounter0_q_binary = 7'd0;
reg [6:0] soc_ethmac_rx_cdc_graycounter0_q_next_binary = 7'd0;
wire soc_ethmac_rx_cdc_graycounter1_ce;
(* dont_touch = "true" *) reg [6:0] soc_ethmac_rx_cdc_graycounter1_q = 7'd0;
wire [6:0] soc_ethmac_rx_cdc_graycounter1_q_next;
reg [6:0] soc_ethmac_rx_cdc_graycounter1_q_binary = 7'd0;
reg [6:0] soc_ethmac_rx_cdc_graycounter1_q_next_binary = 7'd0;
wire [6:0] soc_ethmac_rx_cdc_produce_rdomain;
wire [6:0] soc_ethmac_rx_cdc_consume_wdomain;
wire [5:0] soc_ethmac_rx_cdc_wrport_adr;
wire [41:0] soc_ethmac_rx_cdc_wrport_dat_r;
wire soc_ethmac_rx_cdc_wrport_we;
wire [41:0] soc_ethmac_rx_cdc_wrport_dat_w;
wire [5:0] soc_ethmac_rx_cdc_rdport_adr;
wire [41:0] soc_ethmac_rx_cdc_rdport_dat_r;
wire [31:0] soc_ethmac_rx_cdc_fifo_in_payload_data;
wire [3:0] soc_ethmac_rx_cdc_fifo_in_payload_last_be;
wire [3:0] soc_ethmac_rx_cdc_fifo_in_payload_error;
wire soc_ethmac_rx_cdc_fifo_in_first;
wire soc_ethmac_rx_cdc_fifo_in_last;
wire [31:0] soc_ethmac_rx_cdc_fifo_out_payload_data;
wire [3:0] soc_ethmac_rx_cdc_fifo_out_payload_last_be;
wire [3:0] soc_ethmac_rx_cdc_fifo_out_payload_error;
wire soc_ethmac_rx_cdc_fifo_out_first;
wire soc_ethmac_rx_cdc_fifo_out_last;
wire soc_ethmac_sink_valid;
wire soc_ethmac_sink_ready;
wire soc_ethmac_sink_first;
wire soc_ethmac_sink_last;
wire [31:0] soc_ethmac_sink_payload_data;
wire [3:0] soc_ethmac_sink_payload_last_be;
wire [3:0] soc_ethmac_sink_payload_error;
wire soc_ethmac_source_valid;
wire soc_ethmac_source_ready;
wire soc_ethmac_source_first;
wire soc_ethmac_source_last;
wire [31:0] soc_ethmac_source_payload_data;
wire [3:0] soc_ethmac_source_payload_last_be;
wire [3:0] soc_ethmac_source_payload_error;
wire [29:0] soc_ethmac_bus_adr;
wire [31:0] soc_ethmac_bus_dat_w;
wire [31:0] soc_ethmac_bus_dat_r;
wire [3:0] soc_ethmac_bus_sel;
wire soc_ethmac_bus_cyc;
wire soc_ethmac_bus_stb;
wire soc_ethmac_bus_ack;
wire soc_ethmac_bus_we;
wire [2:0] soc_ethmac_bus_cti;
wire [1:0] soc_ethmac_bus_bte;
wire soc_ethmac_bus_err;
wire soc_ethmac_writer_sink_sink_valid;
reg soc_ethmac_writer_sink_sink_ready = 1'd1;
wire soc_ethmac_writer_sink_sink_first;
wire soc_ethmac_writer_sink_sink_last;
wire [31:0] soc_ethmac_writer_sink_sink_payload_data;
wire [3:0] soc_ethmac_writer_sink_sink_payload_last_be;
wire [3:0] soc_ethmac_writer_sink_sink_payload_error;
wire soc_ethmac_writer_slot_status;
wire [31:0] soc_ethmac_writer_length_status;
reg [31:0] soc_ethmac_writer_errors_status = 32'd0;
wire soc_ethmac_writer_irq;
wire soc_ethmac_writer_available_status;
wire soc_ethmac_writer_available_pending;
wire soc_ethmac_writer_available_trigger;
reg soc_ethmac_writer_available_clear = 1'd0;
wire soc_ethmac_writer_status_re;
wire soc_ethmac_writer_status_r;
wire soc_ethmac_writer_status_w;
wire soc_ethmac_writer_pending_re;
wire soc_ethmac_writer_pending_r;
wire soc_ethmac_writer_pending_w;
reg soc_ethmac_writer_storage_full = 1'd0;
wire soc_ethmac_writer_storage;
reg soc_ethmac_writer_re = 1'd0;
reg [2:0] soc_ethmac_writer_increment = 3'd0;
reg [31:0] soc_ethmac_writer_counter = 32'd0;
reg soc_ethmac_writer_counter_reset = 1'd0;
reg soc_ethmac_writer_counter_ce = 1'd0;
reg soc_ethmac_writer_slot = 1'd0;
reg soc_ethmac_writer_slot_ce = 1'd0;
reg soc_ethmac_writer_ongoing = 1'd0;
reg soc_ethmac_writer_fifo_sink_valid = 1'd0;
wire soc_ethmac_writer_fifo_sink_ready;
reg soc_ethmac_writer_fifo_sink_first = 1'd0;
reg soc_ethmac_writer_fifo_sink_last = 1'd0;
wire soc_ethmac_writer_fifo_sink_payload_slot;
wire [31:0] soc_ethmac_writer_fifo_sink_payload_length;
wire soc_ethmac_writer_fifo_source_valid;
wire soc_ethmac_writer_fifo_source_ready;
wire soc_ethmac_writer_fifo_source_first;
wire soc_ethmac_writer_fifo_source_last;
wire soc_ethmac_writer_fifo_source_payload_slot;
wire [31:0] soc_ethmac_writer_fifo_source_payload_length;
wire soc_ethmac_writer_fifo_syncfifo_we;
wire soc_ethmac_writer_fifo_syncfifo_writable;
wire soc_ethmac_writer_fifo_syncfifo_re;
wire soc_ethmac_writer_fifo_syncfifo_readable;
wire [34:0] soc_ethmac_writer_fifo_syncfifo_din;
wire [34:0] soc_ethmac_writer_fifo_syncfifo_dout;
reg [1:0] soc_ethmac_writer_fifo_level = 2'd0;
reg soc_ethmac_writer_fifo_replace = 1'd0;
reg soc_ethmac_writer_fifo_produce = 1'd0;
reg soc_ethmac_writer_fifo_consume = 1'd0;
reg soc_ethmac_writer_fifo_wrport_adr = 1'd0;
wire [34:0] soc_ethmac_writer_fifo_wrport_dat_r;
wire soc_ethmac_writer_fifo_wrport_we;
wire [34:0] soc_ethmac_writer_fifo_wrport_dat_w;
wire soc_ethmac_writer_fifo_do_read;
wire soc_ethmac_writer_fifo_rdport_adr;
wire [34:0] soc_ethmac_writer_fifo_rdport_dat_r;
wire soc_ethmac_writer_fifo_fifo_in_payload_slot;
wire [31:0] soc_ethmac_writer_fifo_fifo_in_payload_length;
wire soc_ethmac_writer_fifo_fifo_in_first;
wire soc_ethmac_writer_fifo_fifo_in_last;
wire soc_ethmac_writer_fifo_fifo_out_payload_slot;
wire [31:0] soc_ethmac_writer_fifo_fifo_out_payload_length;
wire soc_ethmac_writer_fifo_fifo_out_first;
wire soc_ethmac_writer_fifo_fifo_out_last;
reg [8:0] soc_ethmac_writer_memory0_adr = 9'd0;
wire [31:0] soc_ethmac_writer_memory0_dat_r;
reg soc_ethmac_writer_memory0_we = 1'd0;
reg [31:0] soc_ethmac_writer_memory0_dat_w = 32'd0;
reg [8:0] soc_ethmac_writer_memory1_adr = 9'd0;
wire [31:0] soc_ethmac_writer_memory1_dat_r;
reg soc_ethmac_writer_memory1_we = 1'd0;
reg [31:0] soc_ethmac_writer_memory1_dat_w = 32'd0;
reg soc_ethmac_reader_source_source_valid = 1'd0;
wire soc_ethmac_reader_source_source_ready;
reg soc_ethmac_reader_source_source_first = 1'd0;
reg soc_ethmac_reader_source_source_last = 1'd0;
reg [31:0] soc_ethmac_reader_source_source_payload_data = 32'd0;
reg [3:0] soc_ethmac_reader_source_source_payload_last_be = 4'd0;
reg [3:0] soc_ethmac_reader_source_source_payload_error = 4'd0;
wire soc_ethmac_reader_start_re;
wire soc_ethmac_reader_start_r;
reg soc_ethmac_reader_start_w = 1'd0;
wire soc_ethmac_reader_ready_status;
wire [1:0] soc_ethmac_reader_level_status;
reg soc_ethmac_reader_slot_storage_full = 1'd0;
wire soc_ethmac_reader_slot_storage;
reg soc_ethmac_reader_slot_re = 1'd0;
reg [10:0] soc_ethmac_reader_length_storage_full = 11'd0;
wire [10:0] soc_ethmac_reader_length_storage;
reg soc_ethmac_reader_length_re = 1'd0;
wire soc_ethmac_reader_irq;
wire soc_ethmac_reader_done_status;
reg soc_ethmac_reader_done_pending = 1'd0;
reg soc_ethmac_reader_done_trigger = 1'd0;
reg soc_ethmac_reader_done_clear = 1'd0;
wire soc_ethmac_reader_eventmanager_status_re;
wire soc_ethmac_reader_eventmanager_status_r;
wire soc_ethmac_reader_eventmanager_status_w;
wire soc_ethmac_reader_eventmanager_pending_re;
wire soc_ethmac_reader_eventmanager_pending_r;
wire soc_ethmac_reader_eventmanager_pending_w;
reg soc_ethmac_reader_eventmanager_storage_full = 1'd0;
wire soc_ethmac_reader_eventmanager_storage;
reg soc_ethmac_reader_eventmanager_re = 1'd0;
wire soc_ethmac_reader_fifo_sink_valid;
wire soc_ethmac_reader_fifo_sink_ready;
reg soc_ethmac_reader_fifo_sink_first = 1'd0;
reg soc_ethmac_reader_fifo_sink_last = 1'd0;
wire soc_ethmac_reader_fifo_sink_payload_slot;
wire [10:0] soc_ethmac_reader_fifo_sink_payload_length;
wire soc_ethmac_reader_fifo_source_valid;
reg soc_ethmac_reader_fifo_source_ready = 1'd0;
wire soc_ethmac_reader_fifo_source_first;
wire soc_ethmac_reader_fifo_source_last;
wire soc_ethmac_reader_fifo_source_payload_slot;
wire [10:0] soc_ethmac_reader_fifo_source_payload_length;
wire soc_ethmac_reader_fifo_syncfifo_we;
wire soc_ethmac_reader_fifo_syncfifo_writable;
wire soc_ethmac_reader_fifo_syncfifo_re;
wire soc_ethmac_reader_fifo_syncfifo_readable;
wire [13:0] soc_ethmac_reader_fifo_syncfifo_din;
wire [13:0] soc_ethmac_reader_fifo_syncfifo_dout;
reg [1:0] soc_ethmac_reader_fifo_level = 2'd0;
reg soc_ethmac_reader_fifo_replace = 1'd0;
reg soc_ethmac_reader_fifo_produce = 1'd0;
reg soc_ethmac_reader_fifo_consume = 1'd0;
reg soc_ethmac_reader_fifo_wrport_adr = 1'd0;
wire [13:0] soc_ethmac_reader_fifo_wrport_dat_r;
wire soc_ethmac_reader_fifo_wrport_we;
wire [13:0] soc_ethmac_reader_fifo_wrport_dat_w;
wire soc_ethmac_reader_fifo_do_read;
wire soc_ethmac_reader_fifo_rdport_adr;
wire [13:0] soc_ethmac_reader_fifo_rdport_dat_r;
wire soc_ethmac_reader_fifo_fifo_in_payload_slot;
wire [10:0] soc_ethmac_reader_fifo_fifo_in_payload_length;
wire soc_ethmac_reader_fifo_fifo_in_first;
wire soc_ethmac_reader_fifo_fifo_in_last;
wire soc_ethmac_reader_fifo_fifo_out_payload_slot;
wire [10:0] soc_ethmac_reader_fifo_fifo_out_payload_length;
wire soc_ethmac_reader_fifo_fifo_out_first;
wire soc_ethmac_reader_fifo_fifo_out_last;
reg [10:0] soc_ethmac_reader_counter = 11'd0;
reg soc_ethmac_reader_counter_reset = 1'd0;
reg soc_ethmac_reader_counter_ce = 1'd0;
wire soc_ethmac_reader_last;
reg soc_ethmac_reader_last_d = 1'd0;
wire [8:0] soc_ethmac_reader_memory0_adr;
wire [31:0] soc_ethmac_reader_memory0_dat_r;
wire [8:0] soc_ethmac_reader_memory1_adr;
wire [31:0] soc_ethmac_reader_memory1_dat_r;
wire soc_ethmac_ev_irq;
wire [29:0] soc_ethmac_sram0_bus_adr0;
wire [31:0] soc_ethmac_sram0_bus_dat_w0;
wire [31:0] soc_ethmac_sram0_bus_dat_r0;
wire [3:0] soc_ethmac_sram0_bus_sel0;
wire soc_ethmac_sram0_bus_cyc0;
wire soc_ethmac_sram0_bus_stb0;
reg soc_ethmac_sram0_bus_ack0 = 1'd0;
wire soc_ethmac_sram0_bus_we0;
wire [2:0] soc_ethmac_sram0_bus_cti0;
wire [1:0] soc_ethmac_sram0_bus_bte0;
reg soc_ethmac_sram0_bus_err0 = 1'd0;
wire [8:0] soc_ethmac_sram0_adr0;
wire [31:0] soc_ethmac_sram0_dat_r0;
wire [29:0] soc_ethmac_sram1_bus_adr0;
wire [31:0] soc_ethmac_sram1_bus_dat_w0;
wire [31:0] soc_ethmac_sram1_bus_dat_r0;
wire [3:0] soc_ethmac_sram1_bus_sel0;
wire soc_ethmac_sram1_bus_cyc0;
wire soc_ethmac_sram1_bus_stb0;
reg soc_ethmac_sram1_bus_ack0 = 1'd0;
wire soc_ethmac_sram1_bus_we0;
wire [2:0] soc_ethmac_sram1_bus_cti0;
wire [1:0] soc_ethmac_sram1_bus_bte0;
reg soc_ethmac_sram1_bus_err0 = 1'd0;
wire [8:0] soc_ethmac_sram1_adr0;
wire [31:0] soc_ethmac_sram1_dat_r0;
wire [29:0] soc_ethmac_sram0_bus_adr1;
wire [31:0] soc_ethmac_sram0_bus_dat_w1;
wire [31:0] soc_ethmac_sram0_bus_dat_r1;
wire [3:0] soc_ethmac_sram0_bus_sel1;
wire soc_ethmac_sram0_bus_cyc1;
wire soc_ethmac_sram0_bus_stb1;
reg soc_ethmac_sram0_bus_ack1 = 1'd0;
wire soc_ethmac_sram0_bus_we1;
wire [2:0] soc_ethmac_sram0_bus_cti1;
wire [1:0] soc_ethmac_sram0_bus_bte1;
reg soc_ethmac_sram0_bus_err1 = 1'd0;
wire [8:0] soc_ethmac_sram0_adr1;
wire [31:0] soc_ethmac_sram0_dat_r1;
reg [3:0] soc_ethmac_sram0_we = 4'd0;
wire [31:0] soc_ethmac_sram0_dat_w;
wire [29:0] soc_ethmac_sram1_bus_adr1;
wire [31:0] soc_ethmac_sram1_bus_dat_w1;
wire [31:0] soc_ethmac_sram1_bus_dat_r1;
wire [3:0] soc_ethmac_sram1_bus_sel1;
wire soc_ethmac_sram1_bus_cyc1;
wire soc_ethmac_sram1_bus_stb1;
reg soc_ethmac_sram1_bus_ack1 = 1'd0;
wire soc_ethmac_sram1_bus_we1;
wire [2:0] soc_ethmac_sram1_bus_cti1;
wire [1:0] soc_ethmac_sram1_bus_bte1;
reg soc_ethmac_sram1_bus_err1 = 1'd0;
wire [8:0] soc_ethmac_sram1_adr1;
wire [31:0] soc_ethmac_sram1_dat_r1;
reg [3:0] soc_ethmac_sram1_we = 4'd0;
wire [31:0] soc_ethmac_sram1_dat_w;
reg [3:0] soc_ethmac_slave_sel = 4'd0;
reg [3:0] soc_ethmac_slave_sel_r = 4'd0;
reg [2:0] vns_wishbonestreamingbridge_state = 3'd0;
reg [2:0] vns_wishbonestreamingbridge_next_state = 3'd0;
reg [1:0] vns_oled_state = 2'd0;
reg [1:0] vns_oled_next_state = 2'd0;
reg [1:0] vns_refresher_state = 2'd0;
reg [1:0] vns_refresher_next_state = 2'd0;
reg [2:0] vns_bankmachine0_state = 3'd0;
reg [2:0] vns_bankmachine0_next_state = 3'd0;
reg [2:0] vns_bankmachine1_state = 3'd0;
reg [2:0] vns_bankmachine1_next_state = 3'd0;
reg [2:0] vns_bankmachine2_state = 3'd0;
reg [2:0] vns_bankmachine2_next_state = 3'd0;
reg [2:0] vns_bankmachine3_state = 3'd0;
reg [2:0] vns_bankmachine3_next_state = 3'd0;
reg [2:0] vns_bankmachine4_state = 3'd0;
reg [2:0] vns_bankmachine4_next_state = 3'd0;
reg [2:0] vns_bankmachine5_state = 3'd0;
reg [2:0] vns_bankmachine5_next_state = 3'd0;
reg [2:0] vns_bankmachine6_state = 3'd0;
reg [2:0] vns_bankmachine6_next_state = 3'd0;
reg [2:0] vns_bankmachine7_state = 3'd0;
reg [2:0] vns_bankmachine7_next_state = 3'd0;
reg [3:0] vns_multiplexer_state = 4'd0;
reg [3:0] vns_multiplexer_next_state = 4'd0;
wire [2:0] vns_cba;
wire [21:0] vns_rca;
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
reg [2:0] vns_fullmemorywe_state = 3'd0;
reg [2:0] vns_fullmemorywe_next_state = 3'd0;
reg [1:0] vns_litedramwishbonebridge_state = 2'd0;
reg [1:0] vns_litedramwishbonebridge_next_state = 2'd0;
reg vns_liteethmacgap_state = 1'd0;
reg vns_liteethmacgap_next_state = 1'd0;
reg [1:0] vns_liteethmacpreambleinserter_state = 2'd0;
reg [1:0] vns_liteethmacpreambleinserter_next_state = 2'd0;
reg vns_liteethmacpreamblechecker_state = 1'd0;
reg vns_liteethmacpreamblechecker_next_state = 1'd0;
reg [1:0] vns_liteethmaccrc32inserter_state = 2'd0;
reg [1:0] vns_liteethmaccrc32inserter_next_state = 2'd0;
reg [1:0] vns_liteethmaccrc32checker_state = 2'd0;
reg [1:0] vns_liteethmaccrc32checker_next_state = 2'd0;
reg vns_liteethmacpaddinginserter_state = 1'd0;
reg vns_liteethmacpaddinginserter_next_state = 1'd0;
reg [2:0] vns_liteethmacsramwriter_state = 3'd0;
reg [2:0] vns_liteethmacsramwriter_next_state = 3'd0;
reg [31:0] soc_ethmac_writer_errors_status_next_value = 32'd0;
reg soc_ethmac_writer_errors_status_next_value_ce = 1'd0;
reg [1:0] vns_liteethmacsramreader_state = 2'd0;
reg [1:0] vns_liteethmacsramreader_next_state = 2'd0;
wire vns_wb_sdram_con_request;
wire vns_wb_sdram_con_grant;
wire [29:0] vns_netsoc_shared_adr;
wire [31:0] vns_netsoc_shared_dat_w;
wire [31:0] vns_netsoc_shared_dat_r;
wire [3:0] vns_netsoc_shared_sel;
wire vns_netsoc_shared_cyc;
wire vns_netsoc_shared_stb;
wire vns_netsoc_shared_ack;
wire vns_netsoc_shared_we;
wire [2:0] vns_netsoc_shared_cti;
wire [1:0] vns_netsoc_shared_bte;
wire vns_netsoc_shared_err;
wire [2:0] vns_netsoc_request;
reg [1:0] vns_netsoc_grant = 2'd0;
reg [5:0] vns_netsoc_slave_sel = 6'd0;
reg [5:0] vns_netsoc_slave_sel_r = 6'd0;
wire [13:0] vns_netsoc_interface0_bank_bus_adr;
wire vns_netsoc_interface0_bank_bus_we;
wire [7:0] vns_netsoc_interface0_bank_bus_dat_w;
reg [7:0] vns_netsoc_interface0_bank_bus_dat_r = 8'd0;
wire vns_netsoc_csrbank0_dly_sel0_re;
wire [1:0] vns_netsoc_csrbank0_dly_sel0_r;
wire [1:0] vns_netsoc_csrbank0_dly_sel0_w;
wire vns_netsoc_csrbank0_sel;
wire [13:0] vns_netsoc_interface1_bank_bus_adr;
wire vns_netsoc_interface1_bank_bus_we;
wire [7:0] vns_netsoc_interface1_bank_bus_dat_w;
reg [7:0] vns_netsoc_interface1_bank_bus_dat_r = 8'd0;
wire vns_netsoc_csrbank1_sram_writer_slot_re;
wire vns_netsoc_csrbank1_sram_writer_slot_r;
wire vns_netsoc_csrbank1_sram_writer_slot_w;
wire vns_netsoc_csrbank1_sram_writer_length3_re;
wire [7:0] vns_netsoc_csrbank1_sram_writer_length3_r;
wire [7:0] vns_netsoc_csrbank1_sram_writer_length3_w;
wire vns_netsoc_csrbank1_sram_writer_length2_re;
wire [7:0] vns_netsoc_csrbank1_sram_writer_length2_r;
wire [7:0] vns_netsoc_csrbank1_sram_writer_length2_w;
wire vns_netsoc_csrbank1_sram_writer_length1_re;
wire [7:0] vns_netsoc_csrbank1_sram_writer_length1_r;
wire [7:0] vns_netsoc_csrbank1_sram_writer_length1_w;
wire vns_netsoc_csrbank1_sram_writer_length0_re;
wire [7:0] vns_netsoc_csrbank1_sram_writer_length0_r;
wire [7:0] vns_netsoc_csrbank1_sram_writer_length0_w;
wire vns_netsoc_csrbank1_sram_writer_errors3_re;
wire [7:0] vns_netsoc_csrbank1_sram_writer_errors3_r;
wire [7:0] vns_netsoc_csrbank1_sram_writer_errors3_w;
wire vns_netsoc_csrbank1_sram_writer_errors2_re;
wire [7:0] vns_netsoc_csrbank1_sram_writer_errors2_r;
wire [7:0] vns_netsoc_csrbank1_sram_writer_errors2_w;
wire vns_netsoc_csrbank1_sram_writer_errors1_re;
wire [7:0] vns_netsoc_csrbank1_sram_writer_errors1_r;
wire [7:0] vns_netsoc_csrbank1_sram_writer_errors1_w;
wire vns_netsoc_csrbank1_sram_writer_errors0_re;
wire [7:0] vns_netsoc_csrbank1_sram_writer_errors0_r;
wire [7:0] vns_netsoc_csrbank1_sram_writer_errors0_w;
wire vns_netsoc_csrbank1_sram_writer_ev_enable0_re;
wire vns_netsoc_csrbank1_sram_writer_ev_enable0_r;
wire vns_netsoc_csrbank1_sram_writer_ev_enable0_w;
wire vns_netsoc_csrbank1_sram_reader_ready_re;
wire vns_netsoc_csrbank1_sram_reader_ready_r;
wire vns_netsoc_csrbank1_sram_reader_ready_w;
wire vns_netsoc_csrbank1_sram_reader_level_re;
wire [1:0] vns_netsoc_csrbank1_sram_reader_level_r;
wire [1:0] vns_netsoc_csrbank1_sram_reader_level_w;
wire vns_netsoc_csrbank1_sram_reader_slot0_re;
wire vns_netsoc_csrbank1_sram_reader_slot0_r;
wire vns_netsoc_csrbank1_sram_reader_slot0_w;
wire vns_netsoc_csrbank1_sram_reader_length1_re;
wire [2:0] vns_netsoc_csrbank1_sram_reader_length1_r;
wire [2:0] vns_netsoc_csrbank1_sram_reader_length1_w;
wire vns_netsoc_csrbank1_sram_reader_length0_re;
wire [7:0] vns_netsoc_csrbank1_sram_reader_length0_r;
wire [7:0] vns_netsoc_csrbank1_sram_reader_length0_w;
wire vns_netsoc_csrbank1_sram_reader_ev_enable0_re;
wire vns_netsoc_csrbank1_sram_reader_ev_enable0_r;
wire vns_netsoc_csrbank1_sram_reader_ev_enable0_w;
wire vns_netsoc_csrbank1_preamble_crc_re;
wire vns_netsoc_csrbank1_preamble_crc_r;
wire vns_netsoc_csrbank1_preamble_crc_w;
wire vns_netsoc_csrbank1_preamble_errors3_re;
wire [7:0] vns_netsoc_csrbank1_preamble_errors3_r;
wire [7:0] vns_netsoc_csrbank1_preamble_errors3_w;
wire vns_netsoc_csrbank1_preamble_errors2_re;
wire [7:0] vns_netsoc_csrbank1_preamble_errors2_r;
wire [7:0] vns_netsoc_csrbank1_preamble_errors2_w;
wire vns_netsoc_csrbank1_preamble_errors1_re;
wire [7:0] vns_netsoc_csrbank1_preamble_errors1_r;
wire [7:0] vns_netsoc_csrbank1_preamble_errors1_w;
wire vns_netsoc_csrbank1_preamble_errors0_re;
wire [7:0] vns_netsoc_csrbank1_preamble_errors0_r;
wire [7:0] vns_netsoc_csrbank1_preamble_errors0_w;
wire vns_netsoc_csrbank1_crc_errors3_re;
wire [7:0] vns_netsoc_csrbank1_crc_errors3_r;
wire [7:0] vns_netsoc_csrbank1_crc_errors3_w;
wire vns_netsoc_csrbank1_crc_errors2_re;
wire [7:0] vns_netsoc_csrbank1_crc_errors2_r;
wire [7:0] vns_netsoc_csrbank1_crc_errors2_w;
wire vns_netsoc_csrbank1_crc_errors1_re;
wire [7:0] vns_netsoc_csrbank1_crc_errors1_r;
wire [7:0] vns_netsoc_csrbank1_crc_errors1_w;
wire vns_netsoc_csrbank1_crc_errors0_re;
wire [7:0] vns_netsoc_csrbank1_crc_errors0_r;
wire [7:0] vns_netsoc_csrbank1_crc_errors0_w;
wire vns_netsoc_csrbank1_sel;
wire [13:0] vns_netsoc_interface2_bank_bus_adr;
wire vns_netsoc_interface2_bank_bus_we;
wire [7:0] vns_netsoc_interface2_bank_bus_dat_w;
reg [7:0] vns_netsoc_interface2_bank_bus_dat_r = 8'd0;
wire vns_netsoc_csrbank2_crg_reset0_re;
wire vns_netsoc_csrbank2_crg_reset0_r;
wire vns_netsoc_csrbank2_crg_reset0_w;
wire vns_netsoc_csrbank2_mdio_w0_re;
wire [2:0] vns_netsoc_csrbank2_mdio_w0_r;
wire [2:0] vns_netsoc_csrbank2_mdio_w0_w;
wire vns_netsoc_csrbank2_mdio_r_re;
wire vns_netsoc_csrbank2_mdio_r_r;
wire vns_netsoc_csrbank2_mdio_r_w;
wire vns_netsoc_csrbank2_sel;
wire [13:0] vns_netsoc_sram_bus_adr;
wire vns_netsoc_sram_bus_we;
wire [7:0] vns_netsoc_sram_bus_dat_w;
reg [7:0] vns_netsoc_sram_bus_dat_r = 8'd0;
wire [2:0] vns_netsoc_adr;
wire [7:0] vns_netsoc_dat_r;
wire vns_netsoc_sel;
reg vns_netsoc_sel_r = 1'd0;
wire [13:0] vns_netsoc_interface3_bank_bus_adr;
wire vns_netsoc_interface3_bank_bus_we;
wire [7:0] vns_netsoc_interface3_bank_bus_dat_w;
reg [7:0] vns_netsoc_interface3_bank_bus_dat_r = 8'd0;
wire vns_netsoc_csrbank3_dna_id7_re;
wire vns_netsoc_csrbank3_dna_id7_r;
wire vns_netsoc_csrbank3_dna_id7_w;
wire vns_netsoc_csrbank3_dna_id6_re;
wire [7:0] vns_netsoc_csrbank3_dna_id6_r;
wire [7:0] vns_netsoc_csrbank3_dna_id6_w;
wire vns_netsoc_csrbank3_dna_id5_re;
wire [7:0] vns_netsoc_csrbank3_dna_id5_r;
wire [7:0] vns_netsoc_csrbank3_dna_id5_w;
wire vns_netsoc_csrbank3_dna_id4_re;
wire [7:0] vns_netsoc_csrbank3_dna_id4_r;
wire [7:0] vns_netsoc_csrbank3_dna_id4_w;
wire vns_netsoc_csrbank3_dna_id3_re;
wire [7:0] vns_netsoc_csrbank3_dna_id3_r;
wire [7:0] vns_netsoc_csrbank3_dna_id3_w;
wire vns_netsoc_csrbank3_dna_id2_re;
wire [7:0] vns_netsoc_csrbank3_dna_id2_r;
wire [7:0] vns_netsoc_csrbank3_dna_id2_w;
wire vns_netsoc_csrbank3_dna_id1_re;
wire [7:0] vns_netsoc_csrbank3_dna_id1_r;
wire [7:0] vns_netsoc_csrbank3_dna_id1_w;
wire vns_netsoc_csrbank3_dna_id0_re;
wire [7:0] vns_netsoc_csrbank3_dna_id0_r;
wire [7:0] vns_netsoc_csrbank3_dna_id0_w;
wire vns_netsoc_csrbank3_git_commit19_re;
wire [7:0] vns_netsoc_csrbank3_git_commit19_r;
wire [7:0] vns_netsoc_csrbank3_git_commit19_w;
wire vns_netsoc_csrbank3_git_commit18_re;
wire [7:0] vns_netsoc_csrbank3_git_commit18_r;
wire [7:0] vns_netsoc_csrbank3_git_commit18_w;
wire vns_netsoc_csrbank3_git_commit17_re;
wire [7:0] vns_netsoc_csrbank3_git_commit17_r;
wire [7:0] vns_netsoc_csrbank3_git_commit17_w;
wire vns_netsoc_csrbank3_git_commit16_re;
wire [7:0] vns_netsoc_csrbank3_git_commit16_r;
wire [7:0] vns_netsoc_csrbank3_git_commit16_w;
wire vns_netsoc_csrbank3_git_commit15_re;
wire [7:0] vns_netsoc_csrbank3_git_commit15_r;
wire [7:0] vns_netsoc_csrbank3_git_commit15_w;
wire vns_netsoc_csrbank3_git_commit14_re;
wire [7:0] vns_netsoc_csrbank3_git_commit14_r;
wire [7:0] vns_netsoc_csrbank3_git_commit14_w;
wire vns_netsoc_csrbank3_git_commit13_re;
wire [7:0] vns_netsoc_csrbank3_git_commit13_r;
wire [7:0] vns_netsoc_csrbank3_git_commit13_w;
wire vns_netsoc_csrbank3_git_commit12_re;
wire [7:0] vns_netsoc_csrbank3_git_commit12_r;
wire [7:0] vns_netsoc_csrbank3_git_commit12_w;
wire vns_netsoc_csrbank3_git_commit11_re;
wire [7:0] vns_netsoc_csrbank3_git_commit11_r;
wire [7:0] vns_netsoc_csrbank3_git_commit11_w;
wire vns_netsoc_csrbank3_git_commit10_re;
wire [7:0] vns_netsoc_csrbank3_git_commit10_r;
wire [7:0] vns_netsoc_csrbank3_git_commit10_w;
wire vns_netsoc_csrbank3_git_commit9_re;
wire [7:0] vns_netsoc_csrbank3_git_commit9_r;
wire [7:0] vns_netsoc_csrbank3_git_commit9_w;
wire vns_netsoc_csrbank3_git_commit8_re;
wire [7:0] vns_netsoc_csrbank3_git_commit8_r;
wire [7:0] vns_netsoc_csrbank3_git_commit8_w;
wire vns_netsoc_csrbank3_git_commit7_re;
wire [7:0] vns_netsoc_csrbank3_git_commit7_r;
wire [7:0] vns_netsoc_csrbank3_git_commit7_w;
wire vns_netsoc_csrbank3_git_commit6_re;
wire [7:0] vns_netsoc_csrbank3_git_commit6_r;
wire [7:0] vns_netsoc_csrbank3_git_commit6_w;
wire vns_netsoc_csrbank3_git_commit5_re;
wire [7:0] vns_netsoc_csrbank3_git_commit5_r;
wire [7:0] vns_netsoc_csrbank3_git_commit5_w;
wire vns_netsoc_csrbank3_git_commit4_re;
wire [7:0] vns_netsoc_csrbank3_git_commit4_r;
wire [7:0] vns_netsoc_csrbank3_git_commit4_w;
wire vns_netsoc_csrbank3_git_commit3_re;
wire [7:0] vns_netsoc_csrbank3_git_commit3_r;
wire [7:0] vns_netsoc_csrbank3_git_commit3_w;
wire vns_netsoc_csrbank3_git_commit2_re;
wire [7:0] vns_netsoc_csrbank3_git_commit2_r;
wire [7:0] vns_netsoc_csrbank3_git_commit2_w;
wire vns_netsoc_csrbank3_git_commit1_re;
wire [7:0] vns_netsoc_csrbank3_git_commit1_r;
wire [7:0] vns_netsoc_csrbank3_git_commit1_w;
wire vns_netsoc_csrbank3_git_commit0_re;
wire [7:0] vns_netsoc_csrbank3_git_commit0_r;
wire [7:0] vns_netsoc_csrbank3_git_commit0_w;
wire vns_netsoc_csrbank3_platform_platform7_re;
wire [7:0] vns_netsoc_csrbank3_platform_platform7_r;
wire [7:0] vns_netsoc_csrbank3_platform_platform7_w;
wire vns_netsoc_csrbank3_platform_platform6_re;
wire [7:0] vns_netsoc_csrbank3_platform_platform6_r;
wire [7:0] vns_netsoc_csrbank3_platform_platform6_w;
wire vns_netsoc_csrbank3_platform_platform5_re;
wire [7:0] vns_netsoc_csrbank3_platform_platform5_r;
wire [7:0] vns_netsoc_csrbank3_platform_platform5_w;
wire vns_netsoc_csrbank3_platform_platform4_re;
wire [7:0] vns_netsoc_csrbank3_platform_platform4_r;
wire [7:0] vns_netsoc_csrbank3_platform_platform4_w;
wire vns_netsoc_csrbank3_platform_platform3_re;
wire [7:0] vns_netsoc_csrbank3_platform_platform3_r;
wire [7:0] vns_netsoc_csrbank3_platform_platform3_w;
wire vns_netsoc_csrbank3_platform_platform2_re;
wire [7:0] vns_netsoc_csrbank3_platform_platform2_r;
wire [7:0] vns_netsoc_csrbank3_platform_platform2_w;
wire vns_netsoc_csrbank3_platform_platform1_re;
wire [7:0] vns_netsoc_csrbank3_platform_platform1_r;
wire [7:0] vns_netsoc_csrbank3_platform_platform1_w;
wire vns_netsoc_csrbank3_platform_platform0_re;
wire [7:0] vns_netsoc_csrbank3_platform_platform0_r;
wire [7:0] vns_netsoc_csrbank3_platform_platform0_w;
wire vns_netsoc_csrbank3_platform_target7_re;
wire [7:0] vns_netsoc_csrbank3_platform_target7_r;
wire [7:0] vns_netsoc_csrbank3_platform_target7_w;
wire vns_netsoc_csrbank3_platform_target6_re;
wire [7:0] vns_netsoc_csrbank3_platform_target6_r;
wire [7:0] vns_netsoc_csrbank3_platform_target6_w;
wire vns_netsoc_csrbank3_platform_target5_re;
wire [7:0] vns_netsoc_csrbank3_platform_target5_r;
wire [7:0] vns_netsoc_csrbank3_platform_target5_w;
wire vns_netsoc_csrbank3_platform_target4_re;
wire [7:0] vns_netsoc_csrbank3_platform_target4_r;
wire [7:0] vns_netsoc_csrbank3_platform_target4_w;
wire vns_netsoc_csrbank3_platform_target3_re;
wire [7:0] vns_netsoc_csrbank3_platform_target3_r;
wire [7:0] vns_netsoc_csrbank3_platform_target3_w;
wire vns_netsoc_csrbank3_platform_target2_re;
wire [7:0] vns_netsoc_csrbank3_platform_target2_r;
wire [7:0] vns_netsoc_csrbank3_platform_target2_w;
wire vns_netsoc_csrbank3_platform_target1_re;
wire [7:0] vns_netsoc_csrbank3_platform_target1_r;
wire [7:0] vns_netsoc_csrbank3_platform_target1_w;
wire vns_netsoc_csrbank3_platform_target0_re;
wire [7:0] vns_netsoc_csrbank3_platform_target0_r;
wire [7:0] vns_netsoc_csrbank3_platform_target0_w;
wire vns_netsoc_csrbank3_xadc_temperature1_re;
wire [3:0] vns_netsoc_csrbank3_xadc_temperature1_r;
wire [3:0] vns_netsoc_csrbank3_xadc_temperature1_w;
wire vns_netsoc_csrbank3_xadc_temperature0_re;
wire [7:0] vns_netsoc_csrbank3_xadc_temperature0_r;
wire [7:0] vns_netsoc_csrbank3_xadc_temperature0_w;
wire vns_netsoc_csrbank3_xadc_vccint1_re;
wire [3:0] vns_netsoc_csrbank3_xadc_vccint1_r;
wire [3:0] vns_netsoc_csrbank3_xadc_vccint1_w;
wire vns_netsoc_csrbank3_xadc_vccint0_re;
wire [7:0] vns_netsoc_csrbank3_xadc_vccint0_r;
wire [7:0] vns_netsoc_csrbank3_xadc_vccint0_w;
wire vns_netsoc_csrbank3_xadc_vccaux1_re;
wire [3:0] vns_netsoc_csrbank3_xadc_vccaux1_r;
wire [3:0] vns_netsoc_csrbank3_xadc_vccaux1_w;
wire vns_netsoc_csrbank3_xadc_vccaux0_re;
wire [7:0] vns_netsoc_csrbank3_xadc_vccaux0_r;
wire [7:0] vns_netsoc_csrbank3_xadc_vccaux0_w;
wire vns_netsoc_csrbank3_xadc_vccbram1_re;
wire [3:0] vns_netsoc_csrbank3_xadc_vccbram1_r;
wire [3:0] vns_netsoc_csrbank3_xadc_vccbram1_w;
wire vns_netsoc_csrbank3_xadc_vccbram0_re;
wire [7:0] vns_netsoc_csrbank3_xadc_vccbram0_r;
wire [7:0] vns_netsoc_csrbank3_xadc_vccbram0_w;
wire vns_netsoc_csrbank3_sel;
wire [13:0] vns_netsoc_interface4_bank_bus_adr;
wire vns_netsoc_interface4_bank_bus_we;
wire [7:0] vns_netsoc_interface4_bank_bus_dat_w;
reg [7:0] vns_netsoc_interface4_bank_bus_dat_r = 8'd0;
wire vns_netsoc_csrbank4_spi_length0_re;
wire [7:0] vns_netsoc_csrbank4_spi_length0_r;
wire [7:0] vns_netsoc_csrbank4_spi_length0_w;
wire vns_netsoc_csrbank4_spi_status_re;
wire vns_netsoc_csrbank4_spi_status_r;
wire vns_netsoc_csrbank4_spi_status_w;
wire vns_netsoc_csrbank4_spi_mosi0_re;
wire [7:0] vns_netsoc_csrbank4_spi_mosi0_r;
wire [7:0] vns_netsoc_csrbank4_spi_mosi0_w;
wire vns_netsoc_csrbank4_gpio_out0_re;
wire [3:0] vns_netsoc_csrbank4_gpio_out0_r;
wire [3:0] vns_netsoc_csrbank4_gpio_out0_w;
wire vns_netsoc_csrbank4_sel;
wire [13:0] vns_netsoc_interface5_bank_bus_adr;
wire vns_netsoc_interface5_bank_bus_we;
wire [7:0] vns_netsoc_interface5_bank_bus_dat_w;
reg [7:0] vns_netsoc_interface5_bank_bus_dat_r = 8'd0;
wire vns_netsoc_csrbank5_dfii_control0_re;
wire [3:0] vns_netsoc_csrbank5_dfii_control0_r;
wire [3:0] vns_netsoc_csrbank5_dfii_control0_w;
wire vns_netsoc_csrbank5_dfii_pi0_command0_re;
wire [5:0] vns_netsoc_csrbank5_dfii_pi0_command0_r;
wire [5:0] vns_netsoc_csrbank5_dfii_pi0_command0_w;
wire vns_netsoc_csrbank5_dfii_pi0_address1_re;
wire [6:0] vns_netsoc_csrbank5_dfii_pi0_address1_r;
wire [6:0] vns_netsoc_csrbank5_dfii_pi0_address1_w;
wire vns_netsoc_csrbank5_dfii_pi0_address0_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi0_address0_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi0_address0_w;
wire vns_netsoc_csrbank5_dfii_pi0_baddress0_re;
wire [2:0] vns_netsoc_csrbank5_dfii_pi0_baddress0_r;
wire [2:0] vns_netsoc_csrbank5_dfii_pi0_baddress0_w;
wire vns_netsoc_csrbank5_dfii_pi0_wrdata3_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi0_wrdata3_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi0_wrdata3_w;
wire vns_netsoc_csrbank5_dfii_pi0_wrdata2_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi0_wrdata2_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi0_wrdata2_w;
wire vns_netsoc_csrbank5_dfii_pi0_wrdata1_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi0_wrdata1_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi0_wrdata1_w;
wire vns_netsoc_csrbank5_dfii_pi0_wrdata0_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi0_wrdata0_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi0_wrdata0_w;
wire vns_netsoc_csrbank5_dfii_pi0_rddata3_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi0_rddata3_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi0_rddata3_w;
wire vns_netsoc_csrbank5_dfii_pi0_rddata2_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi0_rddata2_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi0_rddata2_w;
wire vns_netsoc_csrbank5_dfii_pi0_rddata1_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi0_rddata1_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi0_rddata1_w;
wire vns_netsoc_csrbank5_dfii_pi0_rddata0_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi0_rddata0_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi0_rddata0_w;
wire vns_netsoc_csrbank5_dfii_pi1_command0_re;
wire [5:0] vns_netsoc_csrbank5_dfii_pi1_command0_r;
wire [5:0] vns_netsoc_csrbank5_dfii_pi1_command0_w;
wire vns_netsoc_csrbank5_dfii_pi1_address1_re;
wire [6:0] vns_netsoc_csrbank5_dfii_pi1_address1_r;
wire [6:0] vns_netsoc_csrbank5_dfii_pi1_address1_w;
wire vns_netsoc_csrbank5_dfii_pi1_address0_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi1_address0_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi1_address0_w;
wire vns_netsoc_csrbank5_dfii_pi1_baddress0_re;
wire [2:0] vns_netsoc_csrbank5_dfii_pi1_baddress0_r;
wire [2:0] vns_netsoc_csrbank5_dfii_pi1_baddress0_w;
wire vns_netsoc_csrbank5_dfii_pi1_wrdata3_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi1_wrdata3_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi1_wrdata3_w;
wire vns_netsoc_csrbank5_dfii_pi1_wrdata2_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi1_wrdata2_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi1_wrdata2_w;
wire vns_netsoc_csrbank5_dfii_pi1_wrdata1_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi1_wrdata1_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi1_wrdata1_w;
wire vns_netsoc_csrbank5_dfii_pi1_wrdata0_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi1_wrdata0_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi1_wrdata0_w;
wire vns_netsoc_csrbank5_dfii_pi1_rddata3_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi1_rddata3_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi1_rddata3_w;
wire vns_netsoc_csrbank5_dfii_pi1_rddata2_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi1_rddata2_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi1_rddata2_w;
wire vns_netsoc_csrbank5_dfii_pi1_rddata1_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi1_rddata1_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi1_rddata1_w;
wire vns_netsoc_csrbank5_dfii_pi1_rddata0_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi1_rddata0_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi1_rddata0_w;
wire vns_netsoc_csrbank5_dfii_pi2_command0_re;
wire [5:0] vns_netsoc_csrbank5_dfii_pi2_command0_r;
wire [5:0] vns_netsoc_csrbank5_dfii_pi2_command0_w;
wire vns_netsoc_csrbank5_dfii_pi2_address1_re;
wire [6:0] vns_netsoc_csrbank5_dfii_pi2_address1_r;
wire [6:0] vns_netsoc_csrbank5_dfii_pi2_address1_w;
wire vns_netsoc_csrbank5_dfii_pi2_address0_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi2_address0_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi2_address0_w;
wire vns_netsoc_csrbank5_dfii_pi2_baddress0_re;
wire [2:0] vns_netsoc_csrbank5_dfii_pi2_baddress0_r;
wire [2:0] vns_netsoc_csrbank5_dfii_pi2_baddress0_w;
wire vns_netsoc_csrbank5_dfii_pi2_wrdata3_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi2_wrdata3_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi2_wrdata3_w;
wire vns_netsoc_csrbank5_dfii_pi2_wrdata2_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi2_wrdata2_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi2_wrdata2_w;
wire vns_netsoc_csrbank5_dfii_pi2_wrdata1_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi2_wrdata1_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi2_wrdata1_w;
wire vns_netsoc_csrbank5_dfii_pi2_wrdata0_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi2_wrdata0_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi2_wrdata0_w;
wire vns_netsoc_csrbank5_dfii_pi2_rddata3_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi2_rddata3_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi2_rddata3_w;
wire vns_netsoc_csrbank5_dfii_pi2_rddata2_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi2_rddata2_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi2_rddata2_w;
wire vns_netsoc_csrbank5_dfii_pi2_rddata1_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi2_rddata1_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi2_rddata1_w;
wire vns_netsoc_csrbank5_dfii_pi2_rddata0_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi2_rddata0_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi2_rddata0_w;
wire vns_netsoc_csrbank5_dfii_pi3_command0_re;
wire [5:0] vns_netsoc_csrbank5_dfii_pi3_command0_r;
wire [5:0] vns_netsoc_csrbank5_dfii_pi3_command0_w;
wire vns_netsoc_csrbank5_dfii_pi3_address1_re;
wire [6:0] vns_netsoc_csrbank5_dfii_pi3_address1_r;
wire [6:0] vns_netsoc_csrbank5_dfii_pi3_address1_w;
wire vns_netsoc_csrbank5_dfii_pi3_address0_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi3_address0_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi3_address0_w;
wire vns_netsoc_csrbank5_dfii_pi3_baddress0_re;
wire [2:0] vns_netsoc_csrbank5_dfii_pi3_baddress0_r;
wire [2:0] vns_netsoc_csrbank5_dfii_pi3_baddress0_w;
wire vns_netsoc_csrbank5_dfii_pi3_wrdata3_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi3_wrdata3_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi3_wrdata3_w;
wire vns_netsoc_csrbank5_dfii_pi3_wrdata2_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi3_wrdata2_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi3_wrdata2_w;
wire vns_netsoc_csrbank5_dfii_pi3_wrdata1_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi3_wrdata1_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi3_wrdata1_w;
wire vns_netsoc_csrbank5_dfii_pi3_wrdata0_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi3_wrdata0_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi3_wrdata0_w;
wire vns_netsoc_csrbank5_dfii_pi3_rddata3_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi3_rddata3_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi3_rddata3_w;
wire vns_netsoc_csrbank5_dfii_pi3_rddata2_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi3_rddata2_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi3_rddata2_w;
wire vns_netsoc_csrbank5_dfii_pi3_rddata1_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi3_rddata1_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi3_rddata1_w;
wire vns_netsoc_csrbank5_dfii_pi3_rddata0_re;
wire [7:0] vns_netsoc_csrbank5_dfii_pi3_rddata0_r;
wire [7:0] vns_netsoc_csrbank5_dfii_pi3_rddata0_w;
wire vns_netsoc_csrbank5_controller_bandwidth_nreads2_re;
wire [7:0] vns_netsoc_csrbank5_controller_bandwidth_nreads2_r;
wire [7:0] vns_netsoc_csrbank5_controller_bandwidth_nreads2_w;
wire vns_netsoc_csrbank5_controller_bandwidth_nreads1_re;
wire [7:0] vns_netsoc_csrbank5_controller_bandwidth_nreads1_r;
wire [7:0] vns_netsoc_csrbank5_controller_bandwidth_nreads1_w;
wire vns_netsoc_csrbank5_controller_bandwidth_nreads0_re;
wire [7:0] vns_netsoc_csrbank5_controller_bandwidth_nreads0_r;
wire [7:0] vns_netsoc_csrbank5_controller_bandwidth_nreads0_w;
wire vns_netsoc_csrbank5_controller_bandwidth_nwrites2_re;
wire [7:0] vns_netsoc_csrbank5_controller_bandwidth_nwrites2_r;
wire [7:0] vns_netsoc_csrbank5_controller_bandwidth_nwrites2_w;
wire vns_netsoc_csrbank5_controller_bandwidth_nwrites1_re;
wire [7:0] vns_netsoc_csrbank5_controller_bandwidth_nwrites1_r;
wire [7:0] vns_netsoc_csrbank5_controller_bandwidth_nwrites1_w;
wire vns_netsoc_csrbank5_controller_bandwidth_nwrites0_re;
wire [7:0] vns_netsoc_csrbank5_controller_bandwidth_nwrites0_r;
wire [7:0] vns_netsoc_csrbank5_controller_bandwidth_nwrites0_w;
wire vns_netsoc_csrbank5_controller_bandwidth_data_width_re;
wire [7:0] vns_netsoc_csrbank5_controller_bandwidth_data_width_r;
wire [7:0] vns_netsoc_csrbank5_controller_bandwidth_data_width_w;
wire vns_netsoc_csrbank5_sel;
wire [13:0] vns_netsoc_interface6_bank_bus_adr;
wire vns_netsoc_interface6_bank_bus_we;
wire [7:0] vns_netsoc_interface6_bank_bus_dat_w;
reg [7:0] vns_netsoc_interface6_bank_bus_dat_r = 8'd0;
wire vns_netsoc_csrbank6_bitbang0_re;
wire [3:0] vns_netsoc_csrbank6_bitbang0_r;
wire [3:0] vns_netsoc_csrbank6_bitbang0_w;
wire vns_netsoc_csrbank6_miso_re;
wire vns_netsoc_csrbank6_miso_r;
wire vns_netsoc_csrbank6_miso_w;
wire vns_netsoc_csrbank6_bitbang_en0_re;
wire vns_netsoc_csrbank6_bitbang_en0_r;
wire vns_netsoc_csrbank6_bitbang_en0_w;
wire vns_netsoc_csrbank6_sel;
wire [13:0] vns_netsoc_interface7_bank_bus_adr;
wire vns_netsoc_interface7_bank_bus_we;
wire [7:0] vns_netsoc_interface7_bank_bus_dat_w;
reg [7:0] vns_netsoc_interface7_bank_bus_dat_r = 8'd0;
wire vns_netsoc_csrbank7_load3_re;
wire [7:0] vns_netsoc_csrbank7_load3_r;
wire [7:0] vns_netsoc_csrbank7_load3_w;
wire vns_netsoc_csrbank7_load2_re;
wire [7:0] vns_netsoc_csrbank7_load2_r;
wire [7:0] vns_netsoc_csrbank7_load2_w;
wire vns_netsoc_csrbank7_load1_re;
wire [7:0] vns_netsoc_csrbank7_load1_r;
wire [7:0] vns_netsoc_csrbank7_load1_w;
wire vns_netsoc_csrbank7_load0_re;
wire [7:0] vns_netsoc_csrbank7_load0_r;
wire [7:0] vns_netsoc_csrbank7_load0_w;
wire vns_netsoc_csrbank7_reload3_re;
wire [7:0] vns_netsoc_csrbank7_reload3_r;
wire [7:0] vns_netsoc_csrbank7_reload3_w;
wire vns_netsoc_csrbank7_reload2_re;
wire [7:0] vns_netsoc_csrbank7_reload2_r;
wire [7:0] vns_netsoc_csrbank7_reload2_w;
wire vns_netsoc_csrbank7_reload1_re;
wire [7:0] vns_netsoc_csrbank7_reload1_r;
wire [7:0] vns_netsoc_csrbank7_reload1_w;
wire vns_netsoc_csrbank7_reload0_re;
wire [7:0] vns_netsoc_csrbank7_reload0_r;
wire [7:0] vns_netsoc_csrbank7_reload0_w;
wire vns_netsoc_csrbank7_en0_re;
wire vns_netsoc_csrbank7_en0_r;
wire vns_netsoc_csrbank7_en0_w;
wire vns_netsoc_csrbank7_value3_re;
wire [7:0] vns_netsoc_csrbank7_value3_r;
wire [7:0] vns_netsoc_csrbank7_value3_w;
wire vns_netsoc_csrbank7_value2_re;
wire [7:0] vns_netsoc_csrbank7_value2_r;
wire [7:0] vns_netsoc_csrbank7_value2_w;
wire vns_netsoc_csrbank7_value1_re;
wire [7:0] vns_netsoc_csrbank7_value1_r;
wire [7:0] vns_netsoc_csrbank7_value1_w;
wire vns_netsoc_csrbank7_value0_re;
wire [7:0] vns_netsoc_csrbank7_value0_r;
wire [7:0] vns_netsoc_csrbank7_value0_w;
wire vns_netsoc_csrbank7_ev_enable0_re;
wire vns_netsoc_csrbank7_ev_enable0_r;
wire vns_netsoc_csrbank7_ev_enable0_w;
wire vns_netsoc_csrbank7_sel;
wire [13:0] vns_netsoc_interface8_bank_bus_adr;
wire vns_netsoc_interface8_bank_bus_we;
wire [7:0] vns_netsoc_interface8_bank_bus_dat_w;
reg [7:0] vns_netsoc_interface8_bank_bus_dat_r = 8'd0;
wire vns_netsoc_csrbank8_txfull_re;
wire vns_netsoc_csrbank8_txfull_r;
wire vns_netsoc_csrbank8_txfull_w;
wire vns_netsoc_csrbank8_rxempty_re;
wire vns_netsoc_csrbank8_rxempty_r;
wire vns_netsoc_csrbank8_rxempty_w;
wire vns_netsoc_csrbank8_ev_enable0_re;
wire [1:0] vns_netsoc_csrbank8_ev_enable0_r;
wire [1:0] vns_netsoc_csrbank8_ev_enable0_w;
wire vns_netsoc_csrbank8_sel;
wire [13:0] vns_netsoc_interface9_bank_bus_adr;
wire vns_netsoc_interface9_bank_bus_we;
wire [7:0] vns_netsoc_interface9_bank_bus_dat_w;
reg [7:0] vns_netsoc_interface9_bank_bus_dat_r = 8'd0;
wire vns_netsoc_csrbank9_tuning_word3_re;
wire [7:0] vns_netsoc_csrbank9_tuning_word3_r;
wire [7:0] vns_netsoc_csrbank9_tuning_word3_w;
wire vns_netsoc_csrbank9_tuning_word2_re;
wire [7:0] vns_netsoc_csrbank9_tuning_word2_r;
wire [7:0] vns_netsoc_csrbank9_tuning_word2_w;
wire vns_netsoc_csrbank9_tuning_word1_re;
wire [7:0] vns_netsoc_csrbank9_tuning_word1_r;
wire [7:0] vns_netsoc_csrbank9_tuning_word1_w;
wire vns_netsoc_csrbank9_tuning_word0_re;
wire [7:0] vns_netsoc_csrbank9_tuning_word0_r;
wire [7:0] vns_netsoc_csrbank9_tuning_word0_w;
wire vns_netsoc_csrbank9_sel;
reg vns_rhs_array_muxed0 = 1'd0;
reg [14:0] vns_rhs_array_muxed1 = 15'd0;
reg [2:0] vns_rhs_array_muxed2 = 3'd0;
reg vns_rhs_array_muxed3 = 1'd0;
reg vns_rhs_array_muxed4 = 1'd0;
reg vns_rhs_array_muxed5 = 1'd0;
reg vns_t_array_muxed0 = 1'd0;
reg vns_t_array_muxed1 = 1'd0;
reg vns_t_array_muxed2 = 1'd0;
reg vns_rhs_array_muxed6 = 1'd0;
reg [14:0] vns_rhs_array_muxed7 = 15'd0;
reg [2:0] vns_rhs_array_muxed8 = 3'd0;
reg vns_rhs_array_muxed9 = 1'd0;
reg vns_rhs_array_muxed10 = 1'd0;
reg vns_rhs_array_muxed11 = 1'd0;
reg vns_t_array_muxed3 = 1'd0;
reg vns_t_array_muxed4 = 1'd0;
reg vns_t_array_muxed5 = 1'd0;
reg [21:0] vns_rhs_array_muxed12 = 22'd0;
reg vns_rhs_array_muxed13 = 1'd0;
reg vns_rhs_array_muxed14 = 1'd0;
reg [21:0] vns_rhs_array_muxed15 = 22'd0;
reg vns_rhs_array_muxed16 = 1'd0;
reg vns_rhs_array_muxed17 = 1'd0;
reg [21:0] vns_rhs_array_muxed18 = 22'd0;
reg vns_rhs_array_muxed19 = 1'd0;
reg vns_rhs_array_muxed20 = 1'd0;
reg [21:0] vns_rhs_array_muxed21 = 22'd0;
reg vns_rhs_array_muxed22 = 1'd0;
reg vns_rhs_array_muxed23 = 1'd0;
reg [21:0] vns_rhs_array_muxed24 = 22'd0;
reg vns_rhs_array_muxed25 = 1'd0;
reg vns_rhs_array_muxed26 = 1'd0;
reg [21:0] vns_rhs_array_muxed27 = 22'd0;
reg vns_rhs_array_muxed28 = 1'd0;
reg vns_rhs_array_muxed29 = 1'd0;
reg [21:0] vns_rhs_array_muxed30 = 22'd0;
reg vns_rhs_array_muxed31 = 1'd0;
reg vns_rhs_array_muxed32 = 1'd0;
reg [21:0] vns_rhs_array_muxed33 = 22'd0;
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
reg [14:0] vns_array_muxed0 = 15'd0;
reg [2:0] vns_array_muxed1 = 3'd0;
reg vns_array_muxed2 = 1'd0;
reg vns_array_muxed3 = 1'd0;
reg vns_array_muxed4 = 1'd0;
reg vns_array_muxed5 = 1'd0;
reg vns_array_muxed6 = 1'd0;
reg [14:0] vns_array_muxed7 = 15'd0;
reg [2:0] vns_array_muxed8 = 3'd0;
reg vns_array_muxed9 = 1'd0;
reg vns_array_muxed10 = 1'd0;
reg vns_array_muxed11 = 1'd0;
reg vns_array_muxed12 = 1'd0;
reg vns_array_muxed13 = 1'd0;
reg [14:0] vns_array_muxed14 = 15'd0;
reg [2:0] vns_array_muxed15 = 3'd0;
reg vns_array_muxed16 = 1'd0;
reg vns_array_muxed17 = 1'd0;
reg vns_array_muxed18 = 1'd0;
reg vns_array_muxed19 = 1'd0;
reg vns_array_muxed20 = 1'd0;
reg [14:0] vns_array_muxed21 = 15'd0;
reg [2:0] vns_array_muxed22 = 3'd0;
reg vns_array_muxed23 = 1'd0;
reg vns_array_muxed24 = 1'd0;
reg vns_array_muxed25 = 1'd0;
reg vns_array_muxed26 = 1'd0;
reg vns_array_muxed27 = 1'd0;
wire vns_xilinxasyncresetsynchronizerimpl0;
wire vns_xilinxasyncresetsynchronizerimpl0_rst_meta;
wire vns_xilinxasyncresetsynchronizerimpl1;
wire vns_xilinxasyncresetsynchronizerimpl1_rst_meta;
wire vns_xilinxasyncresetsynchronizerimpl2;
wire vns_xilinxasyncresetsynchronizerimpl2_rst_meta;
(* async_reg = "true", mr_ff = "true", dont_touch = "true" *) reg vns_xilinxmultiregimpl0_regs0 = 1'd0;
(* async_reg = "true", dont_touch = "true" *) reg vns_xilinxmultiregimpl0_regs1 = 1'd0;
wire vns_xilinxasyncresetsynchronizerimpl3_rst_meta;
wire vns_xilinxasyncresetsynchronizerimpl4_rst_meta;
(* async_reg = "true", mr_ff = "true", dont_touch = "true" *) reg vns_xilinxmultiregimpl1_regs0 = 1'd0;
(* async_reg = "true", dont_touch = "true" *) reg vns_xilinxmultiregimpl1_regs1 = 1'd0;
(* async_reg = "true", mr_ff = "true", dont_touch = "true" *) reg vns_xilinxmultiregimpl2_regs0 = 1'd0;
(* async_reg = "true", dont_touch = "true" *) reg vns_xilinxmultiregimpl2_regs1 = 1'd0;
(* async_reg = "true", mr_ff = "true", dont_touch = "true" *) reg vns_xilinxmultiregimpl3_regs0 = 1'd0;
(* async_reg = "true", dont_touch = "true" *) reg vns_xilinxmultiregimpl3_regs1 = 1'd0;
(* async_reg = "true", mr_ff = "true", dont_touch = "true" *) reg [6:0] vns_xilinxmultiregimpl4_regs0 = 7'd0;
(* async_reg = "true", dont_touch = "true" *) reg [6:0] vns_xilinxmultiregimpl4_regs1 = 7'd0;
(* async_reg = "true", mr_ff = "true", dont_touch = "true" *) reg [6:0] vns_xilinxmultiregimpl5_regs0 = 7'd0;
(* async_reg = "true", dont_touch = "true" *) reg [6:0] vns_xilinxmultiregimpl5_regs1 = 7'd0;
(* async_reg = "true", mr_ff = "true", dont_touch = "true" *) reg [6:0] vns_xilinxmultiregimpl6_regs0 = 7'd0;
(* async_reg = "true", dont_touch = "true" *) reg [6:0] vns_xilinxmultiregimpl6_regs1 = 7'd0;
(* async_reg = "true", mr_ff = "true", dont_touch = "true" *) reg [6:0] vns_xilinxmultiregimpl7_regs0 = 7'd0;
(* async_reg = "true", dont_touch = "true" *) reg [6:0] vns_xilinxmultiregimpl7_regs1 = 7'd0;


// Adding a dummy event (using a dummy signal 'dummy_s') to get the simulator
// to run the combinatorial process once at the beginning.
// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign soc_netsoc_sel = user_sw0;

// synthesis translate_off
reg dummy_d;
// synthesis translate_on
always @(*) begin
	soc_netsoc_netsoc_interrupt <= 32'd0;
	soc_netsoc_netsoc_interrupt[1] <= soc_netsoc_netsoc_irq;
	soc_netsoc_netsoc_interrupt[2] <= soc_netsoc_uart_irq;
	soc_netsoc_netsoc_interrupt[3] <= soc_ethmac_ev_irq;
// synthesis translate_off
	dummy_d <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_netsoc_ibus_adr = soc_netsoc_netsoc_i_adr_o[31:2];
assign soc_netsoc_netsoc_dbus_adr = soc_netsoc_netsoc_d_adr_o[31:2];
assign soc_netsoc_netsoc_rom_adr = soc_netsoc_netsoc_rom_bus_adr[12:0];
assign soc_netsoc_netsoc_rom_bus_dat_r = soc_netsoc_netsoc_rom_dat_r;

// synthesis translate_off
reg dummy_d_1;
// synthesis translate_on
always @(*) begin
	soc_netsoc_netsoc_sram_we <= 4'd0;
	soc_netsoc_netsoc_sram_we[0] <= (((soc_netsoc_netsoc_sram_bus_cyc & soc_netsoc_netsoc_sram_bus_stb) & soc_netsoc_netsoc_sram_bus_we) & soc_netsoc_netsoc_sram_bus_sel[0]);
	soc_netsoc_netsoc_sram_we[1] <= (((soc_netsoc_netsoc_sram_bus_cyc & soc_netsoc_netsoc_sram_bus_stb) & soc_netsoc_netsoc_sram_bus_we) & soc_netsoc_netsoc_sram_bus_sel[1]);
	soc_netsoc_netsoc_sram_we[2] <= (((soc_netsoc_netsoc_sram_bus_cyc & soc_netsoc_netsoc_sram_bus_stb) & soc_netsoc_netsoc_sram_bus_we) & soc_netsoc_netsoc_sram_bus_sel[2]);
	soc_netsoc_netsoc_sram_we[3] <= (((soc_netsoc_netsoc_sram_bus_cyc & soc_netsoc_netsoc_sram_bus_stb) & soc_netsoc_netsoc_sram_bus_we) & soc_netsoc_netsoc_sram_bus_sel[3]);
// synthesis translate_off
	dummy_d_1 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_netsoc_sram_adr = soc_netsoc_netsoc_sram_bus_adr[12:0];
assign soc_netsoc_netsoc_sram_bus_dat_r = soc_netsoc_netsoc_sram_dat_r;
assign soc_netsoc_netsoc_sram_dat_w = soc_netsoc_netsoc_sram_bus_dat_w;
assign soc_netsoc_netsoc_zero_trigger = (soc_netsoc_netsoc_value != 1'd0);
assign soc_netsoc_netsoc_eventmanager_status_w = soc_netsoc_netsoc_zero_status;

// synthesis translate_off
reg dummy_d_2;
// synthesis translate_on
always @(*) begin
	soc_netsoc_netsoc_zero_clear <= 1'd0;
	if ((soc_netsoc_netsoc_eventmanager_pending_re & soc_netsoc_netsoc_eventmanager_pending_r)) begin
		soc_netsoc_netsoc_zero_clear <= 1'd1;
	end
// synthesis translate_off
	dummy_d_2 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_netsoc_eventmanager_pending_w = soc_netsoc_netsoc_zero_pending;
assign soc_netsoc_netsoc_irq = (soc_netsoc_netsoc_eventmanager_pending_w & soc_netsoc_netsoc_eventmanager_storage);
assign soc_netsoc_netsoc_zero_status = soc_netsoc_netsoc_zero_trigger;
assign soc_netsoc_uart_tx_fifo_sink_valid = soc_netsoc_uart_rxtx_re;
assign soc_netsoc_uart_tx_fifo_sink_payload_data = soc_netsoc_uart_rxtx_r;
assign soc_netsoc_uart_txfull_status = (~soc_netsoc_uart_tx_fifo_sink_ready);
assign soc_netsoc_rs232phyinterface0_sink_valid = soc_netsoc_uart_tx_fifo_source_valid;
assign soc_netsoc_uart_tx_fifo_source_ready = soc_netsoc_rs232phyinterface0_sink_ready;
assign soc_netsoc_rs232phyinterface0_sink_first = soc_netsoc_uart_tx_fifo_source_first;
assign soc_netsoc_rs232phyinterface0_sink_last = soc_netsoc_uart_tx_fifo_source_last;
assign soc_netsoc_rs232phyinterface0_sink_payload_data = soc_netsoc_uart_tx_fifo_source_payload_data;
assign soc_netsoc_uart_tx_trigger = (~soc_netsoc_uart_tx_fifo_sink_ready);
assign soc_netsoc_uart_rx_fifo_sink_valid = soc_netsoc_rs232phyinterface0_source_valid;
assign soc_netsoc_rs232phyinterface0_source_ready = soc_netsoc_uart_rx_fifo_sink_ready;
assign soc_netsoc_uart_rx_fifo_sink_first = soc_netsoc_rs232phyinterface0_source_first;
assign soc_netsoc_uart_rx_fifo_sink_last = soc_netsoc_rs232phyinterface0_source_last;
assign soc_netsoc_uart_rx_fifo_sink_payload_data = soc_netsoc_rs232phyinterface0_source_payload_data;
assign soc_netsoc_uart_rxempty_status = (~soc_netsoc_uart_rx_fifo_source_valid);
assign soc_netsoc_uart_rxtx_w = soc_netsoc_uart_rx_fifo_source_payload_data;
assign soc_netsoc_uart_rx_fifo_source_ready = soc_netsoc_uart_rx_clear;
assign soc_netsoc_uart_rx_trigger = (~soc_netsoc_uart_rx_fifo_source_valid);

// synthesis translate_off
reg dummy_d_3;
// synthesis translate_on
always @(*) begin
	soc_netsoc_uart_tx_clear <= 1'd0;
	if ((soc_netsoc_uart_pending_re & soc_netsoc_uart_pending_r[0])) begin
		soc_netsoc_uart_tx_clear <= 1'd1;
	end
// synthesis translate_off
	dummy_d_3 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_4;
// synthesis translate_on
always @(*) begin
	soc_netsoc_uart_status_w <= 2'd0;
	soc_netsoc_uart_status_w[0] <= soc_netsoc_uart_tx_status;
	soc_netsoc_uart_status_w[1] <= soc_netsoc_uart_rx_status;
// synthesis translate_off
	dummy_d_4 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_5;
// synthesis translate_on
always @(*) begin
	soc_netsoc_uart_rx_clear <= 1'd0;
	if ((soc_netsoc_uart_pending_re & soc_netsoc_uart_pending_r[1])) begin
		soc_netsoc_uart_rx_clear <= 1'd1;
	end
// synthesis translate_off
	dummy_d_5 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_6;
// synthesis translate_on
always @(*) begin
	soc_netsoc_uart_pending_w <= 2'd0;
	soc_netsoc_uart_pending_w[0] <= soc_netsoc_uart_tx_pending;
	soc_netsoc_uart_pending_w[1] <= soc_netsoc_uart_rx_pending;
// synthesis translate_off
	dummy_d_6 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_uart_irq = ((soc_netsoc_uart_pending_w[0] & soc_netsoc_uart_storage[0]) | (soc_netsoc_uart_pending_w[1] & soc_netsoc_uart_storage[1]));
assign soc_netsoc_uart_tx_status = soc_netsoc_uart_tx_trigger;
assign soc_netsoc_uart_rx_status = soc_netsoc_uart_rx_trigger;
assign soc_netsoc_uart_tx_fifo_syncfifo_din = {soc_netsoc_uart_tx_fifo_fifo_in_last, soc_netsoc_uart_tx_fifo_fifo_in_first, soc_netsoc_uart_tx_fifo_fifo_in_payload_data};
assign {soc_netsoc_uart_tx_fifo_fifo_out_last, soc_netsoc_uart_tx_fifo_fifo_out_first, soc_netsoc_uart_tx_fifo_fifo_out_payload_data} = soc_netsoc_uart_tx_fifo_syncfifo_dout;
assign soc_netsoc_uart_tx_fifo_sink_ready = soc_netsoc_uart_tx_fifo_syncfifo_writable;
assign soc_netsoc_uart_tx_fifo_syncfifo_we = soc_netsoc_uart_tx_fifo_sink_valid;
assign soc_netsoc_uart_tx_fifo_fifo_in_first = soc_netsoc_uart_tx_fifo_sink_first;
assign soc_netsoc_uart_tx_fifo_fifo_in_last = soc_netsoc_uart_tx_fifo_sink_last;
assign soc_netsoc_uart_tx_fifo_fifo_in_payload_data = soc_netsoc_uart_tx_fifo_sink_payload_data;
assign soc_netsoc_uart_tx_fifo_source_valid = soc_netsoc_uart_tx_fifo_syncfifo_readable;
assign soc_netsoc_uart_tx_fifo_source_first = soc_netsoc_uart_tx_fifo_fifo_out_first;
assign soc_netsoc_uart_tx_fifo_source_last = soc_netsoc_uart_tx_fifo_fifo_out_last;
assign soc_netsoc_uart_tx_fifo_source_payload_data = soc_netsoc_uart_tx_fifo_fifo_out_payload_data;
assign soc_netsoc_uart_tx_fifo_syncfifo_re = soc_netsoc_uart_tx_fifo_source_ready;

// synthesis translate_off
reg dummy_d_7;
// synthesis translate_on
always @(*) begin
	soc_netsoc_uart_tx_fifo_wrport_adr <= 4'd0;
	if (soc_netsoc_uart_tx_fifo_replace) begin
		soc_netsoc_uart_tx_fifo_wrport_adr <= (soc_netsoc_uart_tx_fifo_produce - 1'd1);
	end else begin
		soc_netsoc_uart_tx_fifo_wrport_adr <= soc_netsoc_uart_tx_fifo_produce;
	end
// synthesis translate_off
	dummy_d_7 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_uart_tx_fifo_wrport_dat_w = soc_netsoc_uart_tx_fifo_syncfifo_din;
assign soc_netsoc_uart_tx_fifo_wrport_we = (soc_netsoc_uart_tx_fifo_syncfifo_we & (soc_netsoc_uart_tx_fifo_syncfifo_writable | soc_netsoc_uart_tx_fifo_replace));
assign soc_netsoc_uart_tx_fifo_do_read = (soc_netsoc_uart_tx_fifo_syncfifo_readable & soc_netsoc_uart_tx_fifo_syncfifo_re);
assign soc_netsoc_uart_tx_fifo_rdport_adr = soc_netsoc_uart_tx_fifo_consume;
assign soc_netsoc_uart_tx_fifo_syncfifo_dout = soc_netsoc_uart_tx_fifo_rdport_dat_r;
assign soc_netsoc_uart_tx_fifo_syncfifo_writable = (soc_netsoc_uart_tx_fifo_level != 5'd16);
assign soc_netsoc_uart_tx_fifo_syncfifo_readable = (soc_netsoc_uart_tx_fifo_level != 1'd0);
assign soc_netsoc_uart_rx_fifo_syncfifo_din = {soc_netsoc_uart_rx_fifo_fifo_in_last, soc_netsoc_uart_rx_fifo_fifo_in_first, soc_netsoc_uart_rx_fifo_fifo_in_payload_data};
assign {soc_netsoc_uart_rx_fifo_fifo_out_last, soc_netsoc_uart_rx_fifo_fifo_out_first, soc_netsoc_uart_rx_fifo_fifo_out_payload_data} = soc_netsoc_uart_rx_fifo_syncfifo_dout;
assign soc_netsoc_uart_rx_fifo_sink_ready = soc_netsoc_uart_rx_fifo_syncfifo_writable;
assign soc_netsoc_uart_rx_fifo_syncfifo_we = soc_netsoc_uart_rx_fifo_sink_valid;
assign soc_netsoc_uart_rx_fifo_fifo_in_first = soc_netsoc_uart_rx_fifo_sink_first;
assign soc_netsoc_uart_rx_fifo_fifo_in_last = soc_netsoc_uart_rx_fifo_sink_last;
assign soc_netsoc_uart_rx_fifo_fifo_in_payload_data = soc_netsoc_uart_rx_fifo_sink_payload_data;
assign soc_netsoc_uart_rx_fifo_source_valid = soc_netsoc_uart_rx_fifo_syncfifo_readable;
assign soc_netsoc_uart_rx_fifo_source_first = soc_netsoc_uart_rx_fifo_fifo_out_first;
assign soc_netsoc_uart_rx_fifo_source_last = soc_netsoc_uart_rx_fifo_fifo_out_last;
assign soc_netsoc_uart_rx_fifo_source_payload_data = soc_netsoc_uart_rx_fifo_fifo_out_payload_data;
assign soc_netsoc_uart_rx_fifo_syncfifo_re = soc_netsoc_uart_rx_fifo_source_ready;

// synthesis translate_off
reg dummy_d_8;
// synthesis translate_on
always @(*) begin
	soc_netsoc_uart_rx_fifo_wrport_adr <= 4'd0;
	if (soc_netsoc_uart_rx_fifo_replace) begin
		soc_netsoc_uart_rx_fifo_wrport_adr <= (soc_netsoc_uart_rx_fifo_produce - 1'd1);
	end else begin
		soc_netsoc_uart_rx_fifo_wrport_adr <= soc_netsoc_uart_rx_fifo_produce;
	end
// synthesis translate_off
	dummy_d_8 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_uart_rx_fifo_wrport_dat_w = soc_netsoc_uart_rx_fifo_syncfifo_din;
assign soc_netsoc_uart_rx_fifo_wrport_we = (soc_netsoc_uart_rx_fifo_syncfifo_we & (soc_netsoc_uart_rx_fifo_syncfifo_writable | soc_netsoc_uart_rx_fifo_replace));
assign soc_netsoc_uart_rx_fifo_do_read = (soc_netsoc_uart_rx_fifo_syncfifo_readable & soc_netsoc_uart_rx_fifo_syncfifo_re);
assign soc_netsoc_uart_rx_fifo_rdport_adr = soc_netsoc_uart_rx_fifo_consume;
assign soc_netsoc_uart_rx_fifo_syncfifo_dout = soc_netsoc_uart_rx_fifo_rdport_dat_r;
assign soc_netsoc_uart_rx_fifo_syncfifo_writable = (soc_netsoc_uart_rx_fifo_level != 5'd16);
assign soc_netsoc_uart_rx_fifo_syncfifo_readable = (soc_netsoc_uart_rx_fifo_level != 1'd0);
assign soc_netsoc_bridge_reset = soc_netsoc_bridge_done;
assign soc_netsoc_rs232phyinterface1_source_ready = 1'd1;
assign soc_netsoc_bridge_wishbone_adr = (soc_netsoc_bridge_address + soc_netsoc_bridge_word_counter);
assign soc_netsoc_bridge_wishbone_dat_w = soc_netsoc_bridge_data;
assign soc_netsoc_bridge_wishbone_sel = 4'd15;

// synthesis translate_off
reg dummy_d_9;
// synthesis translate_on
always @(*) begin
	soc_netsoc_rs232phyinterface1_sink_payload_data <= 8'd0;
	case (soc_netsoc_bridge_byte_counter)
		1'd0: begin
			soc_netsoc_rs232phyinterface1_sink_payload_data <= soc_netsoc_bridge_data[31:24];
		end
		1'd1: begin
			soc_netsoc_rs232phyinterface1_sink_payload_data <= soc_netsoc_bridge_data[23:16];
		end
		2'd2: begin
			soc_netsoc_rs232phyinterface1_sink_payload_data <= soc_netsoc_bridge_data[15:8];
		end
		default: begin
			soc_netsoc_rs232phyinterface1_sink_payload_data <= soc_netsoc_bridge_data[7:0];
		end
	endcase
// synthesis translate_off
	dummy_d_9 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_bridge_wait = (~soc_netsoc_bridge_is_ongoing);
assign soc_netsoc_rs232phyinterface1_sink_last = ((soc_netsoc_bridge_byte_counter == 2'd3) & (soc_netsoc_bridge_word_counter == (soc_netsoc_bridge_length - 1'd1)));

// synthesis translate_off
reg dummy_d_10;
// synthesis translate_on
always @(*) begin
	soc_netsoc_bridge_wishbone_cyc <= 1'd0;
	soc_netsoc_bridge_wishbone_stb <= 1'd0;
	soc_netsoc_bridge_wishbone_we <= 1'd0;
	soc_netsoc_rs232phyinterface1_sink_valid <= 1'd0;
	soc_netsoc_bridge_byte_counter_reset <= 1'd0;
	soc_netsoc_bridge_byte_counter_ce <= 1'd0;
	soc_netsoc_bridge_word_counter_reset <= 1'd0;
	soc_netsoc_bridge_word_counter_ce <= 1'd0;
	soc_netsoc_bridge_cmd_ce <= 1'd0;
	soc_netsoc_bridge_length_ce <= 1'd0;
	vns_wishbonestreamingbridge_next_state <= 3'd0;
	soc_netsoc_bridge_address_ce <= 1'd0;
	soc_netsoc_bridge_rx_data_ce <= 1'd0;
	soc_netsoc_bridge_tx_data_ce <= 1'd0;
	soc_netsoc_bridge_is_ongoing <= 1'd0;
	vns_wishbonestreamingbridge_next_state <= vns_wishbonestreamingbridge_state;
	case (vns_wishbonestreamingbridge_state)
		1'd1: begin
			if (soc_netsoc_rs232phyinterface1_source_valid) begin
				soc_netsoc_bridge_length_ce <= 1'd1;
				vns_wishbonestreamingbridge_next_state <= 2'd2;
			end
		end
		2'd2: begin
			if (soc_netsoc_rs232phyinterface1_source_valid) begin
				soc_netsoc_bridge_address_ce <= 1'd1;
				soc_netsoc_bridge_byte_counter_ce <= 1'd1;
				if ((soc_netsoc_bridge_byte_counter == 2'd3)) begin
					if ((soc_netsoc_bridge_cmd == 1'd1)) begin
						vns_wishbonestreamingbridge_next_state <= 2'd3;
					end else begin
						if ((soc_netsoc_bridge_cmd == 2'd2)) begin
							vns_wishbonestreamingbridge_next_state <= 3'd5;
						end
					end
					soc_netsoc_bridge_byte_counter_reset <= 1'd1;
				end
			end
		end
		2'd3: begin
			if (soc_netsoc_rs232phyinterface1_source_valid) begin
				soc_netsoc_bridge_rx_data_ce <= 1'd1;
				soc_netsoc_bridge_byte_counter_ce <= 1'd1;
				if ((soc_netsoc_bridge_byte_counter == 2'd3)) begin
					vns_wishbonestreamingbridge_next_state <= 3'd4;
					soc_netsoc_bridge_byte_counter_reset <= 1'd1;
				end
			end
		end
		3'd4: begin
			soc_netsoc_bridge_wishbone_stb <= 1'd1;
			soc_netsoc_bridge_wishbone_we <= 1'd1;
			soc_netsoc_bridge_wishbone_cyc <= 1'd1;
			if (soc_netsoc_bridge_wishbone_ack) begin
				soc_netsoc_bridge_word_counter_ce <= 1'd1;
				if ((soc_netsoc_bridge_word_counter == (soc_netsoc_bridge_length - 1'd1))) begin
					vns_wishbonestreamingbridge_next_state <= 1'd0;
				end else begin
					vns_wishbonestreamingbridge_next_state <= 2'd3;
				end
			end
		end
		3'd5: begin
			soc_netsoc_bridge_wishbone_stb <= 1'd1;
			soc_netsoc_bridge_wishbone_we <= 1'd0;
			soc_netsoc_bridge_wishbone_cyc <= 1'd1;
			if (soc_netsoc_bridge_wishbone_ack) begin
				soc_netsoc_bridge_tx_data_ce <= 1'd1;
				vns_wishbonestreamingbridge_next_state <= 3'd6;
			end
		end
		3'd6: begin
			soc_netsoc_rs232phyinterface1_sink_valid <= 1'd1;
			if (soc_netsoc_rs232phyinterface1_sink_ready) begin
				soc_netsoc_bridge_byte_counter_ce <= 1'd1;
				if ((soc_netsoc_bridge_byte_counter == 2'd3)) begin
					soc_netsoc_bridge_word_counter_ce <= 1'd1;
					if ((soc_netsoc_bridge_word_counter == (soc_netsoc_bridge_length - 1'd1))) begin
						vns_wishbonestreamingbridge_next_state <= 1'd0;
					end else begin
						vns_wishbonestreamingbridge_next_state <= 3'd5;
						soc_netsoc_bridge_byte_counter_reset <= 1'd1;
					end
				end
			end
		end
		default: begin
			if (soc_netsoc_rs232phyinterface1_source_valid) begin
				soc_netsoc_bridge_cmd_ce <= 1'd1;
				if (((soc_netsoc_rs232phyinterface1_source_payload_data == 1'd1) | (soc_netsoc_rs232phyinterface1_source_payload_data == 2'd2))) begin
					vns_wishbonestreamingbridge_next_state <= 1'd1;
				end
				soc_netsoc_bridge_byte_counter_reset <= 1'd1;
				soc_netsoc_bridge_word_counter_reset <= 1'd1;
			end
			soc_netsoc_bridge_is_ongoing <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_10 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_bridge_done = (soc_netsoc_bridge_count == 1'd0);

// synthesis translate_off
reg dummy_d_11;
// synthesis translate_on
always @(*) begin
	soc_netsoc_rs232phyinterface0_source_valid <= 1'd0;
	soc_netsoc_uart_phy_source_ready <= 1'd0;
	soc_netsoc_rs232phyinterface0_source_first <= 1'd0;
	soc_netsoc_rs232phyinterface0_source_last <= 1'd0;
	soc_netsoc_rs232phyinterface0_source_payload_data <= 8'd0;
	soc_netsoc_rs232phyinterface1_sink_ready <= 1'd0;
	soc_netsoc_uart_phy_sink_valid <= 1'd0;
	soc_netsoc_uart_phy_sink_first <= 1'd0;
	soc_netsoc_rs232phyinterface1_source_valid <= 1'd0;
	soc_netsoc_uart_phy_sink_last <= 1'd0;
	soc_netsoc_uart_phy_sink_payload_data <= 8'd0;
	soc_netsoc_rs232phyinterface1_source_first <= 1'd0;
	soc_netsoc_rs232phyinterface1_source_last <= 1'd0;
	soc_netsoc_rs232phyinterface1_source_payload_data <= 8'd0;
	soc_netsoc_rs232phyinterface0_sink_ready <= 1'd0;
	soc_netsoc_rs232phyinterface0_sink_ready <= 1'd1;
	soc_netsoc_rs232phyinterface1_sink_ready <= 1'd1;
	case (soc_netsoc_sel)
		1'd0: begin
			soc_netsoc_rs232phyinterface0_source_valid <= soc_netsoc_uart_phy_source_valid;
			soc_netsoc_uart_phy_source_ready <= soc_netsoc_rs232phyinterface0_source_ready;
			soc_netsoc_rs232phyinterface0_source_first <= soc_netsoc_uart_phy_source_first;
			soc_netsoc_rs232phyinterface0_source_last <= soc_netsoc_uart_phy_source_last;
			soc_netsoc_rs232phyinterface0_source_payload_data <= soc_netsoc_uart_phy_source_payload_data;
			soc_netsoc_uart_phy_sink_valid <= soc_netsoc_rs232phyinterface0_sink_valid;
			soc_netsoc_rs232phyinterface0_sink_ready <= soc_netsoc_uart_phy_sink_ready;
			soc_netsoc_uart_phy_sink_first <= soc_netsoc_rs232phyinterface0_sink_first;
			soc_netsoc_uart_phy_sink_last <= soc_netsoc_rs232phyinterface0_sink_last;
			soc_netsoc_uart_phy_sink_payload_data <= soc_netsoc_rs232phyinterface0_sink_payload_data;
		end
		1'd1: begin
			soc_netsoc_rs232phyinterface1_source_valid <= soc_netsoc_uart_phy_source_valid;
			soc_netsoc_uart_phy_source_ready <= soc_netsoc_rs232phyinterface1_source_ready;
			soc_netsoc_rs232phyinterface1_source_first <= soc_netsoc_uart_phy_source_first;
			soc_netsoc_rs232phyinterface1_source_last <= soc_netsoc_uart_phy_source_last;
			soc_netsoc_rs232phyinterface1_source_payload_data <= soc_netsoc_uart_phy_source_payload_data;
			soc_netsoc_uart_phy_sink_valid <= soc_netsoc_rs232phyinterface1_sink_valid;
			soc_netsoc_rs232phyinterface1_sink_ready <= soc_netsoc_uart_phy_sink_ready;
			soc_netsoc_uart_phy_sink_first <= soc_netsoc_rs232phyinterface1_sink_first;
			soc_netsoc_uart_phy_sink_last <= soc_netsoc_rs232phyinterface1_sink_last;
			soc_netsoc_uart_phy_sink_payload_data <= soc_netsoc_rs232phyinterface1_sink_payload_data;
		end
	endcase
// synthesis translate_off
	dummy_d_11 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_info_git_status = 160'd962445570203994990314553414955732408856019280927;
assign soc_netsoc_info_platform_status = 63'd7954896779841861225;
assign soc_netsoc_info_target_status = 63'd7954891860168671232;
assign oled_sclk = soc_netsoc_oled_spi_pads_clk;
assign oled_sdin = soc_netsoc_oled_spi_pads_mosi;
assign soc_netsoc_oled_spimaster_start = (soc_netsoc_oled_spimaster_ctrl_re & soc_netsoc_oled_spimaster_ctrl_r);
assign soc_netsoc_oled_spimaster_status = soc_netsoc_oled_spimaster_done;
assign soc_netsoc_oled_spimaster_set_clk = (soc_netsoc_oled_spimaster_i == 3'd7);
assign soc_netsoc_oled_spimaster_clr_clk = (soc_netsoc_oled_spimaster_i == 4'd15);
assign soc_netsoc_oled_spi_pads_cs_n = (~soc_netsoc_oled_spimaster_enable_cs);

// synthesis translate_off
reg dummy_d_12;
// synthesis translate_on
always @(*) begin
	soc_netsoc_oled_spimaster_clr_cnt <= 1'd0;
	soc_netsoc_oled_spimaster_inc_cnt <= 1'd0;
	soc_netsoc_oled_spimaster_irq <= 1'd0;
	soc_netsoc_oled_spimaster_enable_cs <= 1'd0;
	vns_oled_next_state <= 2'd0;
	soc_netsoc_oled_spimaster_enable_shift <= 1'd0;
	soc_netsoc_oled_spimaster_done <= 1'd0;
	vns_oled_next_state <= vns_oled_state;
	case (vns_oled_state)
		1'd1: begin
			if (soc_netsoc_oled_spimaster_clr_clk) begin
				vns_oled_next_state <= 2'd2;
			end
		end
		2'd2: begin
			if ((soc_netsoc_oled_spimaster_cnt == soc_netsoc_oled_spimaster_length_storage)) begin
				vns_oled_next_state <= 2'd3;
			end else begin
				soc_netsoc_oled_spimaster_inc_cnt <= soc_netsoc_oled_spimaster_clr_clk;
			end
			soc_netsoc_oled_spimaster_enable_cs <= 1'd1;
			soc_netsoc_oled_spimaster_enable_shift <= 1'd1;
		end
		2'd3: begin
			if (soc_netsoc_oled_spimaster_set_clk) begin
				vns_oled_next_state <= 1'd0;
			end
			soc_netsoc_oled_spimaster_enable_shift <= 1'd1;
			soc_netsoc_oled_spimaster_irq <= 1'd1;
		end
		default: begin
			if (soc_netsoc_oled_spimaster_start) begin
				vns_oled_next_state <= 1'd1;
			end
			soc_netsoc_oled_spimaster_done <= 1'd1;
			soc_netsoc_oled_spimaster_clr_cnt <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_12 <= dummy_s;
// synthesis translate_on
end
assign {oled_vdd, oled_vbat, oled_dc, oled_res} = soc_netsoc_oled_storage;
assign soc_netsoc_ddrphy_oe = ((soc_netsoc_ddrphy_last_wrdata_en[1] | soc_netsoc_ddrphy_last_wrdata_en[2]) | soc_netsoc_ddrphy_last_wrdata_en[3]);
assign soc_netsoc_ddrphy_dfi_p0_address = soc_netsoc_sdram_master_p0_address;
assign soc_netsoc_ddrphy_dfi_p0_bank = soc_netsoc_sdram_master_p0_bank;
assign soc_netsoc_ddrphy_dfi_p0_cas_n = soc_netsoc_sdram_master_p0_cas_n;
assign soc_netsoc_ddrphy_dfi_p0_cs_n = soc_netsoc_sdram_master_p0_cs_n;
assign soc_netsoc_ddrphy_dfi_p0_ras_n = soc_netsoc_sdram_master_p0_ras_n;
assign soc_netsoc_ddrphy_dfi_p0_we_n = soc_netsoc_sdram_master_p0_we_n;
assign soc_netsoc_ddrphy_dfi_p0_cke = soc_netsoc_sdram_master_p0_cke;
assign soc_netsoc_ddrphy_dfi_p0_odt = soc_netsoc_sdram_master_p0_odt;
assign soc_netsoc_ddrphy_dfi_p0_reset_n = soc_netsoc_sdram_master_p0_reset_n;
assign soc_netsoc_ddrphy_dfi_p0_wrdata = soc_netsoc_sdram_master_p0_wrdata;
assign soc_netsoc_ddrphy_dfi_p0_wrdata_en = soc_netsoc_sdram_master_p0_wrdata_en;
assign soc_netsoc_ddrphy_dfi_p0_wrdata_mask = soc_netsoc_sdram_master_p0_wrdata_mask;
assign soc_netsoc_ddrphy_dfi_p0_rddata_en = soc_netsoc_sdram_master_p0_rddata_en;
assign soc_netsoc_sdram_master_p0_rddata = soc_netsoc_ddrphy_dfi_p0_rddata;
assign soc_netsoc_sdram_master_p0_rddata_valid = soc_netsoc_ddrphy_dfi_p0_rddata_valid;
assign soc_netsoc_ddrphy_dfi_p1_address = soc_netsoc_sdram_master_p1_address;
assign soc_netsoc_ddrphy_dfi_p1_bank = soc_netsoc_sdram_master_p1_bank;
assign soc_netsoc_ddrphy_dfi_p1_cas_n = soc_netsoc_sdram_master_p1_cas_n;
assign soc_netsoc_ddrphy_dfi_p1_cs_n = soc_netsoc_sdram_master_p1_cs_n;
assign soc_netsoc_ddrphy_dfi_p1_ras_n = soc_netsoc_sdram_master_p1_ras_n;
assign soc_netsoc_ddrphy_dfi_p1_we_n = soc_netsoc_sdram_master_p1_we_n;
assign soc_netsoc_ddrphy_dfi_p1_cke = soc_netsoc_sdram_master_p1_cke;
assign soc_netsoc_ddrphy_dfi_p1_odt = soc_netsoc_sdram_master_p1_odt;
assign soc_netsoc_ddrphy_dfi_p1_reset_n = soc_netsoc_sdram_master_p1_reset_n;
assign soc_netsoc_ddrphy_dfi_p1_wrdata = soc_netsoc_sdram_master_p1_wrdata;
assign soc_netsoc_ddrphy_dfi_p1_wrdata_en = soc_netsoc_sdram_master_p1_wrdata_en;
assign soc_netsoc_ddrphy_dfi_p1_wrdata_mask = soc_netsoc_sdram_master_p1_wrdata_mask;
assign soc_netsoc_ddrphy_dfi_p1_rddata_en = soc_netsoc_sdram_master_p1_rddata_en;
assign soc_netsoc_sdram_master_p1_rddata = soc_netsoc_ddrphy_dfi_p1_rddata;
assign soc_netsoc_sdram_master_p1_rddata_valid = soc_netsoc_ddrphy_dfi_p1_rddata_valid;
assign soc_netsoc_ddrphy_dfi_p2_address = soc_netsoc_sdram_master_p2_address;
assign soc_netsoc_ddrphy_dfi_p2_bank = soc_netsoc_sdram_master_p2_bank;
assign soc_netsoc_ddrphy_dfi_p2_cas_n = soc_netsoc_sdram_master_p2_cas_n;
assign soc_netsoc_ddrphy_dfi_p2_cs_n = soc_netsoc_sdram_master_p2_cs_n;
assign soc_netsoc_ddrphy_dfi_p2_ras_n = soc_netsoc_sdram_master_p2_ras_n;
assign soc_netsoc_ddrphy_dfi_p2_we_n = soc_netsoc_sdram_master_p2_we_n;
assign soc_netsoc_ddrphy_dfi_p2_cke = soc_netsoc_sdram_master_p2_cke;
assign soc_netsoc_ddrphy_dfi_p2_odt = soc_netsoc_sdram_master_p2_odt;
assign soc_netsoc_ddrphy_dfi_p2_reset_n = soc_netsoc_sdram_master_p2_reset_n;
assign soc_netsoc_ddrphy_dfi_p2_wrdata = soc_netsoc_sdram_master_p2_wrdata;
assign soc_netsoc_ddrphy_dfi_p2_wrdata_en = soc_netsoc_sdram_master_p2_wrdata_en;
assign soc_netsoc_ddrphy_dfi_p2_wrdata_mask = soc_netsoc_sdram_master_p2_wrdata_mask;
assign soc_netsoc_ddrphy_dfi_p2_rddata_en = soc_netsoc_sdram_master_p2_rddata_en;
assign soc_netsoc_sdram_master_p2_rddata = soc_netsoc_ddrphy_dfi_p2_rddata;
assign soc_netsoc_sdram_master_p2_rddata_valid = soc_netsoc_ddrphy_dfi_p2_rddata_valid;
assign soc_netsoc_ddrphy_dfi_p3_address = soc_netsoc_sdram_master_p3_address;
assign soc_netsoc_ddrphy_dfi_p3_bank = soc_netsoc_sdram_master_p3_bank;
assign soc_netsoc_ddrphy_dfi_p3_cas_n = soc_netsoc_sdram_master_p3_cas_n;
assign soc_netsoc_ddrphy_dfi_p3_cs_n = soc_netsoc_sdram_master_p3_cs_n;
assign soc_netsoc_ddrphy_dfi_p3_ras_n = soc_netsoc_sdram_master_p3_ras_n;
assign soc_netsoc_ddrphy_dfi_p3_we_n = soc_netsoc_sdram_master_p3_we_n;
assign soc_netsoc_ddrphy_dfi_p3_cke = soc_netsoc_sdram_master_p3_cke;
assign soc_netsoc_ddrphy_dfi_p3_odt = soc_netsoc_sdram_master_p3_odt;
assign soc_netsoc_ddrphy_dfi_p3_reset_n = soc_netsoc_sdram_master_p3_reset_n;
assign soc_netsoc_ddrphy_dfi_p3_wrdata = soc_netsoc_sdram_master_p3_wrdata;
assign soc_netsoc_ddrphy_dfi_p3_wrdata_en = soc_netsoc_sdram_master_p3_wrdata_en;
assign soc_netsoc_ddrphy_dfi_p3_wrdata_mask = soc_netsoc_sdram_master_p3_wrdata_mask;
assign soc_netsoc_ddrphy_dfi_p3_rddata_en = soc_netsoc_sdram_master_p3_rddata_en;
assign soc_netsoc_sdram_master_p3_rddata = soc_netsoc_ddrphy_dfi_p3_rddata;
assign soc_netsoc_sdram_master_p3_rddata_valid = soc_netsoc_ddrphy_dfi_p3_rddata_valid;
assign soc_netsoc_sdram_slave_p0_address = soc_netsoc_sdram_dfi_p0_address;
assign soc_netsoc_sdram_slave_p0_bank = soc_netsoc_sdram_dfi_p0_bank;
assign soc_netsoc_sdram_slave_p0_cas_n = soc_netsoc_sdram_dfi_p0_cas_n;
assign soc_netsoc_sdram_slave_p0_cs_n = soc_netsoc_sdram_dfi_p0_cs_n;
assign soc_netsoc_sdram_slave_p0_ras_n = soc_netsoc_sdram_dfi_p0_ras_n;
assign soc_netsoc_sdram_slave_p0_we_n = soc_netsoc_sdram_dfi_p0_we_n;
assign soc_netsoc_sdram_slave_p0_cke = soc_netsoc_sdram_dfi_p0_cke;
assign soc_netsoc_sdram_slave_p0_odt = soc_netsoc_sdram_dfi_p0_odt;
assign soc_netsoc_sdram_slave_p0_reset_n = soc_netsoc_sdram_dfi_p0_reset_n;
assign soc_netsoc_sdram_slave_p0_wrdata = soc_netsoc_sdram_dfi_p0_wrdata;
assign soc_netsoc_sdram_slave_p0_wrdata_en = soc_netsoc_sdram_dfi_p0_wrdata_en;
assign soc_netsoc_sdram_slave_p0_wrdata_mask = soc_netsoc_sdram_dfi_p0_wrdata_mask;
assign soc_netsoc_sdram_slave_p0_rddata_en = soc_netsoc_sdram_dfi_p0_rddata_en;
assign soc_netsoc_sdram_dfi_p0_rddata = soc_netsoc_sdram_slave_p0_rddata;
assign soc_netsoc_sdram_dfi_p0_rddata_valid = soc_netsoc_sdram_slave_p0_rddata_valid;
assign soc_netsoc_sdram_slave_p1_address = soc_netsoc_sdram_dfi_p1_address;
assign soc_netsoc_sdram_slave_p1_bank = soc_netsoc_sdram_dfi_p1_bank;
assign soc_netsoc_sdram_slave_p1_cas_n = soc_netsoc_sdram_dfi_p1_cas_n;
assign soc_netsoc_sdram_slave_p1_cs_n = soc_netsoc_sdram_dfi_p1_cs_n;
assign soc_netsoc_sdram_slave_p1_ras_n = soc_netsoc_sdram_dfi_p1_ras_n;
assign soc_netsoc_sdram_slave_p1_we_n = soc_netsoc_sdram_dfi_p1_we_n;
assign soc_netsoc_sdram_slave_p1_cke = soc_netsoc_sdram_dfi_p1_cke;
assign soc_netsoc_sdram_slave_p1_odt = soc_netsoc_sdram_dfi_p1_odt;
assign soc_netsoc_sdram_slave_p1_reset_n = soc_netsoc_sdram_dfi_p1_reset_n;
assign soc_netsoc_sdram_slave_p1_wrdata = soc_netsoc_sdram_dfi_p1_wrdata;
assign soc_netsoc_sdram_slave_p1_wrdata_en = soc_netsoc_sdram_dfi_p1_wrdata_en;
assign soc_netsoc_sdram_slave_p1_wrdata_mask = soc_netsoc_sdram_dfi_p1_wrdata_mask;
assign soc_netsoc_sdram_slave_p1_rddata_en = soc_netsoc_sdram_dfi_p1_rddata_en;
assign soc_netsoc_sdram_dfi_p1_rddata = soc_netsoc_sdram_slave_p1_rddata;
assign soc_netsoc_sdram_dfi_p1_rddata_valid = soc_netsoc_sdram_slave_p1_rddata_valid;
assign soc_netsoc_sdram_slave_p2_address = soc_netsoc_sdram_dfi_p2_address;
assign soc_netsoc_sdram_slave_p2_bank = soc_netsoc_sdram_dfi_p2_bank;
assign soc_netsoc_sdram_slave_p2_cas_n = soc_netsoc_sdram_dfi_p2_cas_n;
assign soc_netsoc_sdram_slave_p2_cs_n = soc_netsoc_sdram_dfi_p2_cs_n;
assign soc_netsoc_sdram_slave_p2_ras_n = soc_netsoc_sdram_dfi_p2_ras_n;
assign soc_netsoc_sdram_slave_p2_we_n = soc_netsoc_sdram_dfi_p2_we_n;
assign soc_netsoc_sdram_slave_p2_cke = soc_netsoc_sdram_dfi_p2_cke;
assign soc_netsoc_sdram_slave_p2_odt = soc_netsoc_sdram_dfi_p2_odt;
assign soc_netsoc_sdram_slave_p2_reset_n = soc_netsoc_sdram_dfi_p2_reset_n;
assign soc_netsoc_sdram_slave_p2_wrdata = soc_netsoc_sdram_dfi_p2_wrdata;
assign soc_netsoc_sdram_slave_p2_wrdata_en = soc_netsoc_sdram_dfi_p2_wrdata_en;
assign soc_netsoc_sdram_slave_p2_wrdata_mask = soc_netsoc_sdram_dfi_p2_wrdata_mask;
assign soc_netsoc_sdram_slave_p2_rddata_en = soc_netsoc_sdram_dfi_p2_rddata_en;
assign soc_netsoc_sdram_dfi_p2_rddata = soc_netsoc_sdram_slave_p2_rddata;
assign soc_netsoc_sdram_dfi_p2_rddata_valid = soc_netsoc_sdram_slave_p2_rddata_valid;
assign soc_netsoc_sdram_slave_p3_address = soc_netsoc_sdram_dfi_p3_address;
assign soc_netsoc_sdram_slave_p3_bank = soc_netsoc_sdram_dfi_p3_bank;
assign soc_netsoc_sdram_slave_p3_cas_n = soc_netsoc_sdram_dfi_p3_cas_n;
assign soc_netsoc_sdram_slave_p3_cs_n = soc_netsoc_sdram_dfi_p3_cs_n;
assign soc_netsoc_sdram_slave_p3_ras_n = soc_netsoc_sdram_dfi_p3_ras_n;
assign soc_netsoc_sdram_slave_p3_we_n = soc_netsoc_sdram_dfi_p3_we_n;
assign soc_netsoc_sdram_slave_p3_cke = soc_netsoc_sdram_dfi_p3_cke;
assign soc_netsoc_sdram_slave_p3_odt = soc_netsoc_sdram_dfi_p3_odt;
assign soc_netsoc_sdram_slave_p3_reset_n = soc_netsoc_sdram_dfi_p3_reset_n;
assign soc_netsoc_sdram_slave_p3_wrdata = soc_netsoc_sdram_dfi_p3_wrdata;
assign soc_netsoc_sdram_slave_p3_wrdata_en = soc_netsoc_sdram_dfi_p3_wrdata_en;
assign soc_netsoc_sdram_slave_p3_wrdata_mask = soc_netsoc_sdram_dfi_p3_wrdata_mask;
assign soc_netsoc_sdram_slave_p3_rddata_en = soc_netsoc_sdram_dfi_p3_rddata_en;
assign soc_netsoc_sdram_dfi_p3_rddata = soc_netsoc_sdram_slave_p3_rddata;
assign soc_netsoc_sdram_dfi_p3_rddata_valid = soc_netsoc_sdram_slave_p3_rddata_valid;

// synthesis translate_off
reg dummy_d_13;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_master_p2_cas_n <= 1'd1;
	soc_netsoc_sdram_master_p2_cs_n <= 1'd1;
	soc_netsoc_sdram_master_p2_ras_n <= 1'd1;
	soc_netsoc_sdram_master_p2_we_n <= 1'd1;
	soc_netsoc_sdram_master_p2_cke <= 1'd0;
	soc_netsoc_sdram_master_p2_odt <= 1'd0;
	soc_netsoc_sdram_master_p2_reset_n <= 1'd0;
	soc_netsoc_sdram_master_p2_wrdata <= 32'd0;
	soc_netsoc_sdram_master_p2_wrdata_en <= 1'd0;
	soc_netsoc_sdram_master_p2_wrdata_mask <= 4'd0;
	soc_netsoc_sdram_master_p2_rddata_en <= 1'd0;
	soc_netsoc_sdram_master_p3_address <= 15'd0;
	soc_netsoc_sdram_master_p3_bank <= 3'd0;
	soc_netsoc_sdram_master_p3_cas_n <= 1'd1;
	soc_netsoc_sdram_master_p3_cs_n <= 1'd1;
	soc_netsoc_sdram_master_p3_ras_n <= 1'd1;
	soc_netsoc_sdram_master_p3_we_n <= 1'd1;
	soc_netsoc_sdram_master_p3_cke <= 1'd0;
	soc_netsoc_sdram_master_p3_odt <= 1'd0;
	soc_netsoc_sdram_master_p3_reset_n <= 1'd0;
	soc_netsoc_sdram_master_p3_wrdata <= 32'd0;
	soc_netsoc_sdram_master_p3_wrdata_en <= 1'd0;
	soc_netsoc_sdram_master_p3_wrdata_mask <= 4'd0;
	soc_netsoc_sdram_master_p3_rddata_en <= 1'd0;
	soc_netsoc_sdram_inti_p0_rddata <= 32'd0;
	soc_netsoc_sdram_inti_p0_rddata_valid <= 1'd0;
	soc_netsoc_sdram_inti_p1_rddata <= 32'd0;
	soc_netsoc_sdram_inti_p1_rddata_valid <= 1'd0;
	soc_netsoc_sdram_inti_p2_rddata <= 32'd0;
	soc_netsoc_sdram_inti_p2_rddata_valid <= 1'd0;
	soc_netsoc_sdram_inti_p3_rddata <= 32'd0;
	soc_netsoc_sdram_inti_p3_rddata_valid <= 1'd0;
	soc_netsoc_sdram_slave_p0_rddata <= 32'd0;
	soc_netsoc_sdram_slave_p0_rddata_valid <= 1'd0;
	soc_netsoc_sdram_slave_p1_rddata <= 32'd0;
	soc_netsoc_sdram_slave_p1_rddata_valid <= 1'd0;
	soc_netsoc_sdram_slave_p2_rddata <= 32'd0;
	soc_netsoc_sdram_slave_p2_rddata_valid <= 1'd0;
	soc_netsoc_sdram_slave_p3_rddata <= 32'd0;
	soc_netsoc_sdram_slave_p3_rddata_valid <= 1'd0;
	soc_netsoc_sdram_master_p0_address <= 15'd0;
	soc_netsoc_sdram_master_p0_bank <= 3'd0;
	soc_netsoc_sdram_master_p0_cas_n <= 1'd1;
	soc_netsoc_sdram_master_p0_cs_n <= 1'd1;
	soc_netsoc_sdram_master_p0_ras_n <= 1'd1;
	soc_netsoc_sdram_master_p0_we_n <= 1'd1;
	soc_netsoc_sdram_master_p0_cke <= 1'd0;
	soc_netsoc_sdram_master_p0_odt <= 1'd0;
	soc_netsoc_sdram_master_p0_reset_n <= 1'd0;
	soc_netsoc_sdram_master_p0_wrdata <= 32'd0;
	soc_netsoc_sdram_master_p0_wrdata_en <= 1'd0;
	soc_netsoc_sdram_master_p0_wrdata_mask <= 4'd0;
	soc_netsoc_sdram_master_p0_rddata_en <= 1'd0;
	soc_netsoc_sdram_master_p1_address <= 15'd0;
	soc_netsoc_sdram_master_p1_bank <= 3'd0;
	soc_netsoc_sdram_master_p1_cas_n <= 1'd1;
	soc_netsoc_sdram_master_p1_cs_n <= 1'd1;
	soc_netsoc_sdram_master_p1_ras_n <= 1'd1;
	soc_netsoc_sdram_master_p1_we_n <= 1'd1;
	soc_netsoc_sdram_master_p1_cke <= 1'd0;
	soc_netsoc_sdram_master_p1_odt <= 1'd0;
	soc_netsoc_sdram_master_p1_reset_n <= 1'd0;
	soc_netsoc_sdram_master_p1_wrdata <= 32'd0;
	soc_netsoc_sdram_master_p1_wrdata_en <= 1'd0;
	soc_netsoc_sdram_master_p1_wrdata_mask <= 4'd0;
	soc_netsoc_sdram_master_p1_rddata_en <= 1'd0;
	soc_netsoc_sdram_master_p2_address <= 15'd0;
	soc_netsoc_sdram_master_p2_bank <= 3'd0;
	if (soc_netsoc_sdram_storage[0]) begin
		soc_netsoc_sdram_master_p0_address <= soc_netsoc_sdram_slave_p0_address;
		soc_netsoc_sdram_master_p0_bank <= soc_netsoc_sdram_slave_p0_bank;
		soc_netsoc_sdram_master_p0_cas_n <= soc_netsoc_sdram_slave_p0_cas_n;
		soc_netsoc_sdram_master_p0_cs_n <= soc_netsoc_sdram_slave_p0_cs_n;
		soc_netsoc_sdram_master_p0_ras_n <= soc_netsoc_sdram_slave_p0_ras_n;
		soc_netsoc_sdram_master_p0_we_n <= soc_netsoc_sdram_slave_p0_we_n;
		soc_netsoc_sdram_master_p0_cke <= soc_netsoc_sdram_slave_p0_cke;
		soc_netsoc_sdram_master_p0_odt <= soc_netsoc_sdram_slave_p0_odt;
		soc_netsoc_sdram_master_p0_reset_n <= soc_netsoc_sdram_slave_p0_reset_n;
		soc_netsoc_sdram_master_p0_wrdata <= soc_netsoc_sdram_slave_p0_wrdata;
		soc_netsoc_sdram_master_p0_wrdata_en <= soc_netsoc_sdram_slave_p0_wrdata_en;
		soc_netsoc_sdram_master_p0_wrdata_mask <= soc_netsoc_sdram_slave_p0_wrdata_mask;
		soc_netsoc_sdram_master_p0_rddata_en <= soc_netsoc_sdram_slave_p0_rddata_en;
		soc_netsoc_sdram_slave_p0_rddata <= soc_netsoc_sdram_master_p0_rddata;
		soc_netsoc_sdram_slave_p0_rddata_valid <= soc_netsoc_sdram_master_p0_rddata_valid;
		soc_netsoc_sdram_master_p1_address <= soc_netsoc_sdram_slave_p1_address;
		soc_netsoc_sdram_master_p1_bank <= soc_netsoc_sdram_slave_p1_bank;
		soc_netsoc_sdram_master_p1_cas_n <= soc_netsoc_sdram_slave_p1_cas_n;
		soc_netsoc_sdram_master_p1_cs_n <= soc_netsoc_sdram_slave_p1_cs_n;
		soc_netsoc_sdram_master_p1_ras_n <= soc_netsoc_sdram_slave_p1_ras_n;
		soc_netsoc_sdram_master_p1_we_n <= soc_netsoc_sdram_slave_p1_we_n;
		soc_netsoc_sdram_master_p1_cke <= soc_netsoc_sdram_slave_p1_cke;
		soc_netsoc_sdram_master_p1_odt <= soc_netsoc_sdram_slave_p1_odt;
		soc_netsoc_sdram_master_p1_reset_n <= soc_netsoc_sdram_slave_p1_reset_n;
		soc_netsoc_sdram_master_p1_wrdata <= soc_netsoc_sdram_slave_p1_wrdata;
		soc_netsoc_sdram_master_p1_wrdata_en <= soc_netsoc_sdram_slave_p1_wrdata_en;
		soc_netsoc_sdram_master_p1_wrdata_mask <= soc_netsoc_sdram_slave_p1_wrdata_mask;
		soc_netsoc_sdram_master_p1_rddata_en <= soc_netsoc_sdram_slave_p1_rddata_en;
		soc_netsoc_sdram_slave_p1_rddata <= soc_netsoc_sdram_master_p1_rddata;
		soc_netsoc_sdram_slave_p1_rddata_valid <= soc_netsoc_sdram_master_p1_rddata_valid;
		soc_netsoc_sdram_master_p2_address <= soc_netsoc_sdram_slave_p2_address;
		soc_netsoc_sdram_master_p2_bank <= soc_netsoc_sdram_slave_p2_bank;
		soc_netsoc_sdram_master_p2_cas_n <= soc_netsoc_sdram_slave_p2_cas_n;
		soc_netsoc_sdram_master_p2_cs_n <= soc_netsoc_sdram_slave_p2_cs_n;
		soc_netsoc_sdram_master_p2_ras_n <= soc_netsoc_sdram_slave_p2_ras_n;
		soc_netsoc_sdram_master_p2_we_n <= soc_netsoc_sdram_slave_p2_we_n;
		soc_netsoc_sdram_master_p2_cke <= soc_netsoc_sdram_slave_p2_cke;
		soc_netsoc_sdram_master_p2_odt <= soc_netsoc_sdram_slave_p2_odt;
		soc_netsoc_sdram_master_p2_reset_n <= soc_netsoc_sdram_slave_p2_reset_n;
		soc_netsoc_sdram_master_p2_wrdata <= soc_netsoc_sdram_slave_p2_wrdata;
		soc_netsoc_sdram_master_p2_wrdata_en <= soc_netsoc_sdram_slave_p2_wrdata_en;
		soc_netsoc_sdram_master_p2_wrdata_mask <= soc_netsoc_sdram_slave_p2_wrdata_mask;
		soc_netsoc_sdram_master_p2_rddata_en <= soc_netsoc_sdram_slave_p2_rddata_en;
		soc_netsoc_sdram_slave_p2_rddata <= soc_netsoc_sdram_master_p2_rddata;
		soc_netsoc_sdram_slave_p2_rddata_valid <= soc_netsoc_sdram_master_p2_rddata_valid;
		soc_netsoc_sdram_master_p3_address <= soc_netsoc_sdram_slave_p3_address;
		soc_netsoc_sdram_master_p3_bank <= soc_netsoc_sdram_slave_p3_bank;
		soc_netsoc_sdram_master_p3_cas_n <= soc_netsoc_sdram_slave_p3_cas_n;
		soc_netsoc_sdram_master_p3_cs_n <= soc_netsoc_sdram_slave_p3_cs_n;
		soc_netsoc_sdram_master_p3_ras_n <= soc_netsoc_sdram_slave_p3_ras_n;
		soc_netsoc_sdram_master_p3_we_n <= soc_netsoc_sdram_slave_p3_we_n;
		soc_netsoc_sdram_master_p3_cke <= soc_netsoc_sdram_slave_p3_cke;
		soc_netsoc_sdram_master_p3_odt <= soc_netsoc_sdram_slave_p3_odt;
		soc_netsoc_sdram_master_p3_reset_n <= soc_netsoc_sdram_slave_p3_reset_n;
		soc_netsoc_sdram_master_p3_wrdata <= soc_netsoc_sdram_slave_p3_wrdata;
		soc_netsoc_sdram_master_p3_wrdata_en <= soc_netsoc_sdram_slave_p3_wrdata_en;
		soc_netsoc_sdram_master_p3_wrdata_mask <= soc_netsoc_sdram_slave_p3_wrdata_mask;
		soc_netsoc_sdram_master_p3_rddata_en <= soc_netsoc_sdram_slave_p3_rddata_en;
		soc_netsoc_sdram_slave_p3_rddata <= soc_netsoc_sdram_master_p3_rddata;
		soc_netsoc_sdram_slave_p3_rddata_valid <= soc_netsoc_sdram_master_p3_rddata_valid;
	end else begin
		soc_netsoc_sdram_master_p0_address <= soc_netsoc_sdram_inti_p0_address;
		soc_netsoc_sdram_master_p0_bank <= soc_netsoc_sdram_inti_p0_bank;
		soc_netsoc_sdram_master_p0_cas_n <= soc_netsoc_sdram_inti_p0_cas_n;
		soc_netsoc_sdram_master_p0_cs_n <= soc_netsoc_sdram_inti_p0_cs_n;
		soc_netsoc_sdram_master_p0_ras_n <= soc_netsoc_sdram_inti_p0_ras_n;
		soc_netsoc_sdram_master_p0_we_n <= soc_netsoc_sdram_inti_p0_we_n;
		soc_netsoc_sdram_master_p0_cke <= soc_netsoc_sdram_inti_p0_cke;
		soc_netsoc_sdram_master_p0_odt <= soc_netsoc_sdram_inti_p0_odt;
		soc_netsoc_sdram_master_p0_reset_n <= soc_netsoc_sdram_inti_p0_reset_n;
		soc_netsoc_sdram_master_p0_wrdata <= soc_netsoc_sdram_inti_p0_wrdata;
		soc_netsoc_sdram_master_p0_wrdata_en <= soc_netsoc_sdram_inti_p0_wrdata_en;
		soc_netsoc_sdram_master_p0_wrdata_mask <= soc_netsoc_sdram_inti_p0_wrdata_mask;
		soc_netsoc_sdram_master_p0_rddata_en <= soc_netsoc_sdram_inti_p0_rddata_en;
		soc_netsoc_sdram_inti_p0_rddata <= soc_netsoc_sdram_master_p0_rddata;
		soc_netsoc_sdram_inti_p0_rddata_valid <= soc_netsoc_sdram_master_p0_rddata_valid;
		soc_netsoc_sdram_master_p1_address <= soc_netsoc_sdram_inti_p1_address;
		soc_netsoc_sdram_master_p1_bank <= soc_netsoc_sdram_inti_p1_bank;
		soc_netsoc_sdram_master_p1_cas_n <= soc_netsoc_sdram_inti_p1_cas_n;
		soc_netsoc_sdram_master_p1_cs_n <= soc_netsoc_sdram_inti_p1_cs_n;
		soc_netsoc_sdram_master_p1_ras_n <= soc_netsoc_sdram_inti_p1_ras_n;
		soc_netsoc_sdram_master_p1_we_n <= soc_netsoc_sdram_inti_p1_we_n;
		soc_netsoc_sdram_master_p1_cke <= soc_netsoc_sdram_inti_p1_cke;
		soc_netsoc_sdram_master_p1_odt <= soc_netsoc_sdram_inti_p1_odt;
		soc_netsoc_sdram_master_p1_reset_n <= soc_netsoc_sdram_inti_p1_reset_n;
		soc_netsoc_sdram_master_p1_wrdata <= soc_netsoc_sdram_inti_p1_wrdata;
		soc_netsoc_sdram_master_p1_wrdata_en <= soc_netsoc_sdram_inti_p1_wrdata_en;
		soc_netsoc_sdram_master_p1_wrdata_mask <= soc_netsoc_sdram_inti_p1_wrdata_mask;
		soc_netsoc_sdram_master_p1_rddata_en <= soc_netsoc_sdram_inti_p1_rddata_en;
		soc_netsoc_sdram_inti_p1_rddata <= soc_netsoc_sdram_master_p1_rddata;
		soc_netsoc_sdram_inti_p1_rddata_valid <= soc_netsoc_sdram_master_p1_rddata_valid;
		soc_netsoc_sdram_master_p2_address <= soc_netsoc_sdram_inti_p2_address;
		soc_netsoc_sdram_master_p2_bank <= soc_netsoc_sdram_inti_p2_bank;
		soc_netsoc_sdram_master_p2_cas_n <= soc_netsoc_sdram_inti_p2_cas_n;
		soc_netsoc_sdram_master_p2_cs_n <= soc_netsoc_sdram_inti_p2_cs_n;
		soc_netsoc_sdram_master_p2_ras_n <= soc_netsoc_sdram_inti_p2_ras_n;
		soc_netsoc_sdram_master_p2_we_n <= soc_netsoc_sdram_inti_p2_we_n;
		soc_netsoc_sdram_master_p2_cke <= soc_netsoc_sdram_inti_p2_cke;
		soc_netsoc_sdram_master_p2_odt <= soc_netsoc_sdram_inti_p2_odt;
		soc_netsoc_sdram_master_p2_reset_n <= soc_netsoc_sdram_inti_p2_reset_n;
		soc_netsoc_sdram_master_p2_wrdata <= soc_netsoc_sdram_inti_p2_wrdata;
		soc_netsoc_sdram_master_p2_wrdata_en <= soc_netsoc_sdram_inti_p2_wrdata_en;
		soc_netsoc_sdram_master_p2_wrdata_mask <= soc_netsoc_sdram_inti_p2_wrdata_mask;
		soc_netsoc_sdram_master_p2_rddata_en <= soc_netsoc_sdram_inti_p2_rddata_en;
		soc_netsoc_sdram_inti_p2_rddata <= soc_netsoc_sdram_master_p2_rddata;
		soc_netsoc_sdram_inti_p2_rddata_valid <= soc_netsoc_sdram_master_p2_rddata_valid;
		soc_netsoc_sdram_master_p3_address <= soc_netsoc_sdram_inti_p3_address;
		soc_netsoc_sdram_master_p3_bank <= soc_netsoc_sdram_inti_p3_bank;
		soc_netsoc_sdram_master_p3_cas_n <= soc_netsoc_sdram_inti_p3_cas_n;
		soc_netsoc_sdram_master_p3_cs_n <= soc_netsoc_sdram_inti_p3_cs_n;
		soc_netsoc_sdram_master_p3_ras_n <= soc_netsoc_sdram_inti_p3_ras_n;
		soc_netsoc_sdram_master_p3_we_n <= soc_netsoc_sdram_inti_p3_we_n;
		soc_netsoc_sdram_master_p3_cke <= soc_netsoc_sdram_inti_p3_cke;
		soc_netsoc_sdram_master_p3_odt <= soc_netsoc_sdram_inti_p3_odt;
		soc_netsoc_sdram_master_p3_reset_n <= soc_netsoc_sdram_inti_p3_reset_n;
		soc_netsoc_sdram_master_p3_wrdata <= soc_netsoc_sdram_inti_p3_wrdata;
		soc_netsoc_sdram_master_p3_wrdata_en <= soc_netsoc_sdram_inti_p3_wrdata_en;
		soc_netsoc_sdram_master_p3_wrdata_mask <= soc_netsoc_sdram_inti_p3_wrdata_mask;
		soc_netsoc_sdram_master_p3_rddata_en <= soc_netsoc_sdram_inti_p3_rddata_en;
		soc_netsoc_sdram_inti_p3_rddata <= soc_netsoc_sdram_master_p3_rddata;
		soc_netsoc_sdram_inti_p3_rddata_valid <= soc_netsoc_sdram_master_p3_rddata_valid;
	end
// synthesis translate_off
	dummy_d_13 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_inti_p0_cke = soc_netsoc_sdram_storage[1];
assign soc_netsoc_sdram_inti_p1_cke = soc_netsoc_sdram_storage[1];
assign soc_netsoc_sdram_inti_p2_cke = soc_netsoc_sdram_storage[1];
assign soc_netsoc_sdram_inti_p3_cke = soc_netsoc_sdram_storage[1];
assign soc_netsoc_sdram_inti_p0_odt = soc_netsoc_sdram_storage[2];
assign soc_netsoc_sdram_inti_p1_odt = soc_netsoc_sdram_storage[2];
assign soc_netsoc_sdram_inti_p2_odt = soc_netsoc_sdram_storage[2];
assign soc_netsoc_sdram_inti_p3_odt = soc_netsoc_sdram_storage[2];
assign soc_netsoc_sdram_inti_p0_reset_n = soc_netsoc_sdram_storage[3];
assign soc_netsoc_sdram_inti_p1_reset_n = soc_netsoc_sdram_storage[3];
assign soc_netsoc_sdram_inti_p2_reset_n = soc_netsoc_sdram_storage[3];
assign soc_netsoc_sdram_inti_p3_reset_n = soc_netsoc_sdram_storage[3];

// synthesis translate_off
reg dummy_d_14;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_inti_p0_ras_n <= 1'd1;
	soc_netsoc_sdram_inti_p0_we_n <= 1'd1;
	soc_netsoc_sdram_inti_p0_cas_n <= 1'd1;
	soc_netsoc_sdram_inti_p0_cs_n <= 1'd1;
	if (soc_netsoc_sdram_phaseinjector0_command_issue_re) begin
		soc_netsoc_sdram_inti_p0_cs_n <= (~soc_netsoc_sdram_phaseinjector0_command_storage[0]);
		soc_netsoc_sdram_inti_p0_we_n <= (~soc_netsoc_sdram_phaseinjector0_command_storage[1]);
		soc_netsoc_sdram_inti_p0_cas_n <= (~soc_netsoc_sdram_phaseinjector0_command_storage[2]);
		soc_netsoc_sdram_inti_p0_ras_n <= (~soc_netsoc_sdram_phaseinjector0_command_storage[3]);
	end else begin
		soc_netsoc_sdram_inti_p0_cs_n <= 1'd1;
		soc_netsoc_sdram_inti_p0_we_n <= 1'd1;
		soc_netsoc_sdram_inti_p0_cas_n <= 1'd1;
		soc_netsoc_sdram_inti_p0_ras_n <= 1'd1;
	end
// synthesis translate_off
	dummy_d_14 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_inti_p0_address = soc_netsoc_sdram_phaseinjector0_address_storage;
assign soc_netsoc_sdram_inti_p0_bank = soc_netsoc_sdram_phaseinjector0_baddress_storage;
assign soc_netsoc_sdram_inti_p0_wrdata_en = (soc_netsoc_sdram_phaseinjector0_command_issue_re & soc_netsoc_sdram_phaseinjector0_command_storage[4]);
assign soc_netsoc_sdram_inti_p0_rddata_en = (soc_netsoc_sdram_phaseinjector0_command_issue_re & soc_netsoc_sdram_phaseinjector0_command_storage[5]);
assign soc_netsoc_sdram_inti_p0_wrdata = soc_netsoc_sdram_phaseinjector0_wrdata_storage;
assign soc_netsoc_sdram_inti_p0_wrdata_mask = 1'd0;

// synthesis translate_off
reg dummy_d_15;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_inti_p1_we_n <= 1'd1;
	soc_netsoc_sdram_inti_p1_cas_n <= 1'd1;
	soc_netsoc_sdram_inti_p1_cs_n <= 1'd1;
	soc_netsoc_sdram_inti_p1_ras_n <= 1'd1;
	if (soc_netsoc_sdram_phaseinjector1_command_issue_re) begin
		soc_netsoc_sdram_inti_p1_cs_n <= (~soc_netsoc_sdram_phaseinjector1_command_storage[0]);
		soc_netsoc_sdram_inti_p1_we_n <= (~soc_netsoc_sdram_phaseinjector1_command_storage[1]);
		soc_netsoc_sdram_inti_p1_cas_n <= (~soc_netsoc_sdram_phaseinjector1_command_storage[2]);
		soc_netsoc_sdram_inti_p1_ras_n <= (~soc_netsoc_sdram_phaseinjector1_command_storage[3]);
	end else begin
		soc_netsoc_sdram_inti_p1_cs_n <= 1'd1;
		soc_netsoc_sdram_inti_p1_we_n <= 1'd1;
		soc_netsoc_sdram_inti_p1_cas_n <= 1'd1;
		soc_netsoc_sdram_inti_p1_ras_n <= 1'd1;
	end
// synthesis translate_off
	dummy_d_15 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_inti_p1_address = soc_netsoc_sdram_phaseinjector1_address_storage;
assign soc_netsoc_sdram_inti_p1_bank = soc_netsoc_sdram_phaseinjector1_baddress_storage;
assign soc_netsoc_sdram_inti_p1_wrdata_en = (soc_netsoc_sdram_phaseinjector1_command_issue_re & soc_netsoc_sdram_phaseinjector1_command_storage[4]);
assign soc_netsoc_sdram_inti_p1_rddata_en = (soc_netsoc_sdram_phaseinjector1_command_issue_re & soc_netsoc_sdram_phaseinjector1_command_storage[5]);
assign soc_netsoc_sdram_inti_p1_wrdata = soc_netsoc_sdram_phaseinjector1_wrdata_storage;
assign soc_netsoc_sdram_inti_p1_wrdata_mask = 1'd0;

// synthesis translate_off
reg dummy_d_16;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_inti_p2_cas_n <= 1'd1;
	soc_netsoc_sdram_inti_p2_cs_n <= 1'd1;
	soc_netsoc_sdram_inti_p2_ras_n <= 1'd1;
	soc_netsoc_sdram_inti_p2_we_n <= 1'd1;
	if (soc_netsoc_sdram_phaseinjector2_command_issue_re) begin
		soc_netsoc_sdram_inti_p2_cs_n <= (~soc_netsoc_sdram_phaseinjector2_command_storage[0]);
		soc_netsoc_sdram_inti_p2_we_n <= (~soc_netsoc_sdram_phaseinjector2_command_storage[1]);
		soc_netsoc_sdram_inti_p2_cas_n <= (~soc_netsoc_sdram_phaseinjector2_command_storage[2]);
		soc_netsoc_sdram_inti_p2_ras_n <= (~soc_netsoc_sdram_phaseinjector2_command_storage[3]);
	end else begin
		soc_netsoc_sdram_inti_p2_cs_n <= 1'd1;
		soc_netsoc_sdram_inti_p2_we_n <= 1'd1;
		soc_netsoc_sdram_inti_p2_cas_n <= 1'd1;
		soc_netsoc_sdram_inti_p2_ras_n <= 1'd1;
	end
// synthesis translate_off
	dummy_d_16 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_inti_p2_address = soc_netsoc_sdram_phaseinjector2_address_storage;
assign soc_netsoc_sdram_inti_p2_bank = soc_netsoc_sdram_phaseinjector2_baddress_storage;
assign soc_netsoc_sdram_inti_p2_wrdata_en = (soc_netsoc_sdram_phaseinjector2_command_issue_re & soc_netsoc_sdram_phaseinjector2_command_storage[4]);
assign soc_netsoc_sdram_inti_p2_rddata_en = (soc_netsoc_sdram_phaseinjector2_command_issue_re & soc_netsoc_sdram_phaseinjector2_command_storage[5]);
assign soc_netsoc_sdram_inti_p2_wrdata = soc_netsoc_sdram_phaseinjector2_wrdata_storage;
assign soc_netsoc_sdram_inti_p2_wrdata_mask = 1'd0;

// synthesis translate_off
reg dummy_d_17;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_inti_p3_cs_n <= 1'd1;
	soc_netsoc_sdram_inti_p3_ras_n <= 1'd1;
	soc_netsoc_sdram_inti_p3_we_n <= 1'd1;
	soc_netsoc_sdram_inti_p3_cas_n <= 1'd1;
	if (soc_netsoc_sdram_phaseinjector3_command_issue_re) begin
		soc_netsoc_sdram_inti_p3_cs_n <= (~soc_netsoc_sdram_phaseinjector3_command_storage[0]);
		soc_netsoc_sdram_inti_p3_we_n <= (~soc_netsoc_sdram_phaseinjector3_command_storage[1]);
		soc_netsoc_sdram_inti_p3_cas_n <= (~soc_netsoc_sdram_phaseinjector3_command_storage[2]);
		soc_netsoc_sdram_inti_p3_ras_n <= (~soc_netsoc_sdram_phaseinjector3_command_storage[3]);
	end else begin
		soc_netsoc_sdram_inti_p3_cs_n <= 1'd1;
		soc_netsoc_sdram_inti_p3_we_n <= 1'd1;
		soc_netsoc_sdram_inti_p3_cas_n <= 1'd1;
		soc_netsoc_sdram_inti_p3_ras_n <= 1'd1;
	end
// synthesis translate_off
	dummy_d_17 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_inti_p3_address = soc_netsoc_sdram_phaseinjector3_address_storage;
assign soc_netsoc_sdram_inti_p3_bank = soc_netsoc_sdram_phaseinjector3_baddress_storage;
assign soc_netsoc_sdram_inti_p3_wrdata_en = (soc_netsoc_sdram_phaseinjector3_command_issue_re & soc_netsoc_sdram_phaseinjector3_command_storage[4]);
assign soc_netsoc_sdram_inti_p3_rddata_en = (soc_netsoc_sdram_phaseinjector3_command_issue_re & soc_netsoc_sdram_phaseinjector3_command_storage[5]);
assign soc_netsoc_sdram_inti_p3_wrdata = soc_netsoc_sdram_phaseinjector3_wrdata_storage;
assign soc_netsoc_sdram_inti_p3_wrdata_mask = 1'd0;
assign soc_netsoc_sdram_bankmachine0_req_valid = soc_netsoc_sdram_interface_bank0_valid;
assign soc_netsoc_sdram_interface_bank0_ready = soc_netsoc_sdram_bankmachine0_req_ready;
assign soc_netsoc_sdram_bankmachine0_req_we = soc_netsoc_sdram_interface_bank0_we;
assign soc_netsoc_sdram_bankmachine0_req_adr = soc_netsoc_sdram_interface_bank0_adr;
assign soc_netsoc_sdram_interface_bank0_lock = soc_netsoc_sdram_bankmachine0_req_lock;
assign soc_netsoc_sdram_interface_bank0_wdata_ready = soc_netsoc_sdram_bankmachine0_req_wdata_ready;
assign soc_netsoc_sdram_interface_bank0_rdata_valid = soc_netsoc_sdram_bankmachine0_req_rdata_valid;
assign soc_netsoc_sdram_bankmachine1_req_valid = soc_netsoc_sdram_interface_bank1_valid;
assign soc_netsoc_sdram_interface_bank1_ready = soc_netsoc_sdram_bankmachine1_req_ready;
assign soc_netsoc_sdram_bankmachine1_req_we = soc_netsoc_sdram_interface_bank1_we;
assign soc_netsoc_sdram_bankmachine1_req_adr = soc_netsoc_sdram_interface_bank1_adr;
assign soc_netsoc_sdram_interface_bank1_lock = soc_netsoc_sdram_bankmachine1_req_lock;
assign soc_netsoc_sdram_interface_bank1_wdata_ready = soc_netsoc_sdram_bankmachine1_req_wdata_ready;
assign soc_netsoc_sdram_interface_bank1_rdata_valid = soc_netsoc_sdram_bankmachine1_req_rdata_valid;
assign soc_netsoc_sdram_bankmachine2_req_valid = soc_netsoc_sdram_interface_bank2_valid;
assign soc_netsoc_sdram_interface_bank2_ready = soc_netsoc_sdram_bankmachine2_req_ready;
assign soc_netsoc_sdram_bankmachine2_req_we = soc_netsoc_sdram_interface_bank2_we;
assign soc_netsoc_sdram_bankmachine2_req_adr = soc_netsoc_sdram_interface_bank2_adr;
assign soc_netsoc_sdram_interface_bank2_lock = soc_netsoc_sdram_bankmachine2_req_lock;
assign soc_netsoc_sdram_interface_bank2_wdata_ready = soc_netsoc_sdram_bankmachine2_req_wdata_ready;
assign soc_netsoc_sdram_interface_bank2_rdata_valid = soc_netsoc_sdram_bankmachine2_req_rdata_valid;
assign soc_netsoc_sdram_bankmachine3_req_valid = soc_netsoc_sdram_interface_bank3_valid;
assign soc_netsoc_sdram_interface_bank3_ready = soc_netsoc_sdram_bankmachine3_req_ready;
assign soc_netsoc_sdram_bankmachine3_req_we = soc_netsoc_sdram_interface_bank3_we;
assign soc_netsoc_sdram_bankmachine3_req_adr = soc_netsoc_sdram_interface_bank3_adr;
assign soc_netsoc_sdram_interface_bank3_lock = soc_netsoc_sdram_bankmachine3_req_lock;
assign soc_netsoc_sdram_interface_bank3_wdata_ready = soc_netsoc_sdram_bankmachine3_req_wdata_ready;
assign soc_netsoc_sdram_interface_bank3_rdata_valid = soc_netsoc_sdram_bankmachine3_req_rdata_valid;
assign soc_netsoc_sdram_bankmachine4_req_valid = soc_netsoc_sdram_interface_bank4_valid;
assign soc_netsoc_sdram_interface_bank4_ready = soc_netsoc_sdram_bankmachine4_req_ready;
assign soc_netsoc_sdram_bankmachine4_req_we = soc_netsoc_sdram_interface_bank4_we;
assign soc_netsoc_sdram_bankmachine4_req_adr = soc_netsoc_sdram_interface_bank4_adr;
assign soc_netsoc_sdram_interface_bank4_lock = soc_netsoc_sdram_bankmachine4_req_lock;
assign soc_netsoc_sdram_interface_bank4_wdata_ready = soc_netsoc_sdram_bankmachine4_req_wdata_ready;
assign soc_netsoc_sdram_interface_bank4_rdata_valid = soc_netsoc_sdram_bankmachine4_req_rdata_valid;
assign soc_netsoc_sdram_bankmachine5_req_valid = soc_netsoc_sdram_interface_bank5_valid;
assign soc_netsoc_sdram_interface_bank5_ready = soc_netsoc_sdram_bankmachine5_req_ready;
assign soc_netsoc_sdram_bankmachine5_req_we = soc_netsoc_sdram_interface_bank5_we;
assign soc_netsoc_sdram_bankmachine5_req_adr = soc_netsoc_sdram_interface_bank5_adr;
assign soc_netsoc_sdram_interface_bank5_lock = soc_netsoc_sdram_bankmachine5_req_lock;
assign soc_netsoc_sdram_interface_bank5_wdata_ready = soc_netsoc_sdram_bankmachine5_req_wdata_ready;
assign soc_netsoc_sdram_interface_bank5_rdata_valid = soc_netsoc_sdram_bankmachine5_req_rdata_valid;
assign soc_netsoc_sdram_bankmachine6_req_valid = soc_netsoc_sdram_interface_bank6_valid;
assign soc_netsoc_sdram_interface_bank6_ready = soc_netsoc_sdram_bankmachine6_req_ready;
assign soc_netsoc_sdram_bankmachine6_req_we = soc_netsoc_sdram_interface_bank6_we;
assign soc_netsoc_sdram_bankmachine6_req_adr = soc_netsoc_sdram_interface_bank6_adr;
assign soc_netsoc_sdram_interface_bank6_lock = soc_netsoc_sdram_bankmachine6_req_lock;
assign soc_netsoc_sdram_interface_bank6_wdata_ready = soc_netsoc_sdram_bankmachine6_req_wdata_ready;
assign soc_netsoc_sdram_interface_bank6_rdata_valid = soc_netsoc_sdram_bankmachine6_req_rdata_valid;
assign soc_netsoc_sdram_bankmachine7_req_valid = soc_netsoc_sdram_interface_bank7_valid;
assign soc_netsoc_sdram_interface_bank7_ready = soc_netsoc_sdram_bankmachine7_req_ready;
assign soc_netsoc_sdram_bankmachine7_req_we = soc_netsoc_sdram_interface_bank7_we;
assign soc_netsoc_sdram_bankmachine7_req_adr = soc_netsoc_sdram_interface_bank7_adr;
assign soc_netsoc_sdram_interface_bank7_lock = soc_netsoc_sdram_bankmachine7_req_lock;
assign soc_netsoc_sdram_interface_bank7_wdata_ready = soc_netsoc_sdram_bankmachine7_req_wdata_ready;
assign soc_netsoc_sdram_interface_bank7_rdata_valid = soc_netsoc_sdram_bankmachine7_req_rdata_valid;
assign soc_netsoc_sdram_wait = (1'd1 & (~soc_netsoc_sdram_done));
assign soc_netsoc_sdram_done = (soc_netsoc_sdram_count == 1'd0);

// synthesis translate_off
reg dummy_d_18;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_seq_start <= 1'd0;
	soc_netsoc_sdram_cmd_valid <= 1'd0;
	soc_netsoc_sdram_cmd_last <= 1'd0;
	vns_refresher_next_state <= 2'd0;
	vns_refresher_next_state <= vns_refresher_state;
	case (vns_refresher_state)
		1'd1: begin
			soc_netsoc_sdram_cmd_valid <= 1'd1;
			if (soc_netsoc_sdram_cmd_ready) begin
				soc_netsoc_sdram_seq_start <= 1'd1;
				vns_refresher_next_state <= 2'd2;
			end
		end
		2'd2: begin
			if (soc_netsoc_sdram_seq_done) begin
				soc_netsoc_sdram_cmd_last <= 1'd1;
				vns_refresher_next_state <= 1'd0;
			end else begin
				soc_netsoc_sdram_cmd_valid <= 1'd1;
			end
		end
		default: begin
			if (soc_netsoc_sdram_done) begin
				vns_refresher_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_18 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_bankmachine0_sink_valid = soc_netsoc_sdram_bankmachine0_req_valid;
assign soc_netsoc_sdram_bankmachine0_req_ready = soc_netsoc_sdram_bankmachine0_sink_ready;
assign soc_netsoc_sdram_bankmachine0_sink_payload_we = soc_netsoc_sdram_bankmachine0_req_we;
assign soc_netsoc_sdram_bankmachine0_sink_payload_adr = soc_netsoc_sdram_bankmachine0_req_adr;
assign soc_netsoc_sdram_bankmachine0_source_ready = (soc_netsoc_sdram_bankmachine0_req_wdata_ready | soc_netsoc_sdram_bankmachine0_req_rdata_valid);
assign soc_netsoc_sdram_bankmachine0_req_lock = soc_netsoc_sdram_bankmachine0_source_valid;
assign soc_netsoc_sdram_bankmachine0_hit = (soc_netsoc_sdram_bankmachine0_openrow == soc_netsoc_sdram_bankmachine0_source_payload_adr[21:7]);
assign soc_netsoc_sdram_bankmachine0_cmd_payload_ba = 1'd0;

// synthesis translate_off
reg dummy_d_19;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine0_cmd_payload_a <= 15'd0;
	if (soc_netsoc_sdram_bankmachine0_sel_row_adr) begin
		soc_netsoc_sdram_bankmachine0_cmd_payload_a <= soc_netsoc_sdram_bankmachine0_source_payload_adr[21:7];
	end else begin
		soc_netsoc_sdram_bankmachine0_cmd_payload_a <= {soc_netsoc_sdram_bankmachine0_source_payload_adr[6:0], {3{1'd0}}};
	end
// synthesis translate_off
	dummy_d_19 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_bankmachine0_wait = (~((soc_netsoc_sdram_bankmachine0_cmd_valid & soc_netsoc_sdram_bankmachine0_cmd_ready) & soc_netsoc_sdram_bankmachine0_cmd_payload_is_write));
assign soc_netsoc_sdram_bankmachine0_syncfifo0_din = {soc_netsoc_sdram_bankmachine0_fifo_in_last, soc_netsoc_sdram_bankmachine0_fifo_in_first, soc_netsoc_sdram_bankmachine0_fifo_in_payload_adr, soc_netsoc_sdram_bankmachine0_fifo_in_payload_we};
assign {soc_netsoc_sdram_bankmachine0_fifo_out_last, soc_netsoc_sdram_bankmachine0_fifo_out_first, soc_netsoc_sdram_bankmachine0_fifo_out_payload_adr, soc_netsoc_sdram_bankmachine0_fifo_out_payload_we} = soc_netsoc_sdram_bankmachine0_syncfifo0_dout;
assign soc_netsoc_sdram_bankmachine0_sink_ready = soc_netsoc_sdram_bankmachine0_syncfifo0_writable;
assign soc_netsoc_sdram_bankmachine0_syncfifo0_we = soc_netsoc_sdram_bankmachine0_sink_valid;
assign soc_netsoc_sdram_bankmachine0_fifo_in_first = soc_netsoc_sdram_bankmachine0_sink_first;
assign soc_netsoc_sdram_bankmachine0_fifo_in_last = soc_netsoc_sdram_bankmachine0_sink_last;
assign soc_netsoc_sdram_bankmachine0_fifo_in_payload_we = soc_netsoc_sdram_bankmachine0_sink_payload_we;
assign soc_netsoc_sdram_bankmachine0_fifo_in_payload_adr = soc_netsoc_sdram_bankmachine0_sink_payload_adr;
assign soc_netsoc_sdram_bankmachine0_source_valid = soc_netsoc_sdram_bankmachine0_syncfifo0_readable;
assign soc_netsoc_sdram_bankmachine0_source_first = soc_netsoc_sdram_bankmachine0_fifo_out_first;
assign soc_netsoc_sdram_bankmachine0_source_last = soc_netsoc_sdram_bankmachine0_fifo_out_last;
assign soc_netsoc_sdram_bankmachine0_source_payload_we = soc_netsoc_sdram_bankmachine0_fifo_out_payload_we;
assign soc_netsoc_sdram_bankmachine0_source_payload_adr = soc_netsoc_sdram_bankmachine0_fifo_out_payload_adr;
assign soc_netsoc_sdram_bankmachine0_syncfifo0_re = soc_netsoc_sdram_bankmachine0_source_ready;

// synthesis translate_off
reg dummy_d_20;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine0_wrport_adr <= 3'd0;
	if (soc_netsoc_sdram_bankmachine0_replace) begin
		soc_netsoc_sdram_bankmachine0_wrport_adr <= (soc_netsoc_sdram_bankmachine0_produce - 1'd1);
	end else begin
		soc_netsoc_sdram_bankmachine0_wrport_adr <= soc_netsoc_sdram_bankmachine0_produce;
	end
// synthesis translate_off
	dummy_d_20 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_bankmachine0_wrport_dat_w = soc_netsoc_sdram_bankmachine0_syncfifo0_din;
assign soc_netsoc_sdram_bankmachine0_wrport_we = (soc_netsoc_sdram_bankmachine0_syncfifo0_we & (soc_netsoc_sdram_bankmachine0_syncfifo0_writable | soc_netsoc_sdram_bankmachine0_replace));
assign soc_netsoc_sdram_bankmachine0_do_read = (soc_netsoc_sdram_bankmachine0_syncfifo0_readable & soc_netsoc_sdram_bankmachine0_syncfifo0_re);
assign soc_netsoc_sdram_bankmachine0_rdport_adr = soc_netsoc_sdram_bankmachine0_consume;
assign soc_netsoc_sdram_bankmachine0_syncfifo0_dout = soc_netsoc_sdram_bankmachine0_rdport_dat_r;
assign soc_netsoc_sdram_bankmachine0_syncfifo0_writable = (soc_netsoc_sdram_bankmachine0_level != 4'd8);
assign soc_netsoc_sdram_bankmachine0_syncfifo0_readable = (soc_netsoc_sdram_bankmachine0_level != 1'd0);
assign soc_netsoc_sdram_bankmachine0_done = (soc_netsoc_sdram_bankmachine0_count == 1'd0);

// synthesis translate_off
reg dummy_d_21;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine0_req_wdata_ready <= 1'd0;
	soc_netsoc_sdram_bankmachine0_req_rdata_valid <= 1'd0;
	soc_netsoc_sdram_bankmachine0_refresh_gnt <= 1'd0;
	soc_netsoc_sdram_bankmachine0_cmd_valid <= 1'd0;
	soc_netsoc_sdram_bankmachine0_track_open <= 1'd0;
	vns_bankmachine0_next_state <= 3'd0;
	soc_netsoc_sdram_bankmachine0_track_close <= 1'd0;
	soc_netsoc_sdram_bankmachine0_cmd_payload_ras <= 1'd0;
	soc_netsoc_sdram_bankmachine0_cmd_payload_cas <= 1'd0;
	soc_netsoc_sdram_bankmachine0_cmd_payload_we <= 1'd0;
	soc_netsoc_sdram_bankmachine0_sel_row_adr <= 1'd0;
	soc_netsoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd0;
	soc_netsoc_sdram_bankmachine0_cmd_payload_is_read <= 1'd0;
	soc_netsoc_sdram_bankmachine0_cmd_payload_is_write <= 1'd0;
	vns_bankmachine0_next_state <= vns_bankmachine0_state;
	case (vns_bankmachine0_state)
		1'd1: begin
			if (soc_netsoc_sdram_bankmachine0_done) begin
				soc_netsoc_sdram_bankmachine0_cmd_valid <= 1'd1;
				if (soc_netsoc_sdram_bankmachine0_cmd_ready) begin
					vns_bankmachine0_next_state <= 3'd4;
				end
				soc_netsoc_sdram_bankmachine0_cmd_payload_ras <= 1'd1;
				soc_netsoc_sdram_bankmachine0_cmd_payload_we <= 1'd1;
				soc_netsoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine0_track_close <= 1'd1;
		end
		2'd2: begin
			soc_netsoc_sdram_bankmachine0_sel_row_adr <= 1'd1;
			soc_netsoc_sdram_bankmachine0_track_open <= 1'd1;
			soc_netsoc_sdram_bankmachine0_cmd_valid <= 1'd1;
			soc_netsoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			if (soc_netsoc_sdram_bankmachine0_cmd_ready) begin
				vns_bankmachine0_next_state <= 3'd6;
			end
			soc_netsoc_sdram_bankmachine0_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (soc_netsoc_sdram_bankmachine0_done) begin
				soc_netsoc_sdram_bankmachine0_refresh_gnt <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine0_track_close <= 1'd1;
			soc_netsoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			if ((~soc_netsoc_sdram_bankmachine0_refresh_req)) begin
				vns_bankmachine0_next_state <= 1'd0;
			end
		end
		3'd4: begin
			vns_bankmachine0_next_state <= 3'd5;
		end
		3'd5: begin
			vns_bankmachine0_next_state <= 2'd2;
		end
		3'd6: begin
			vns_bankmachine0_next_state <= 3'd7;
		end
		3'd7: begin
			vns_bankmachine0_next_state <= 1'd0;
		end
		default: begin
			if (soc_netsoc_sdram_bankmachine0_refresh_req) begin
				vns_bankmachine0_next_state <= 2'd3;
			end else begin
				if (soc_netsoc_sdram_bankmachine0_source_valid) begin
					if (soc_netsoc_sdram_bankmachine0_has_openrow) begin
						if (soc_netsoc_sdram_bankmachine0_hit) begin
							soc_netsoc_sdram_bankmachine0_cmd_valid <= 1'd1;
							if (soc_netsoc_sdram_bankmachine0_source_payload_we) begin
								soc_netsoc_sdram_bankmachine0_req_wdata_ready <= soc_netsoc_sdram_bankmachine0_cmd_ready;
								soc_netsoc_sdram_bankmachine0_cmd_payload_is_write <= 1'd1;
								soc_netsoc_sdram_bankmachine0_cmd_payload_we <= 1'd1;
							end else begin
								soc_netsoc_sdram_bankmachine0_req_rdata_valid <= soc_netsoc_sdram_bankmachine0_cmd_ready;
								soc_netsoc_sdram_bankmachine0_cmd_payload_is_read <= 1'd1;
							end
							soc_netsoc_sdram_bankmachine0_cmd_payload_cas <= 1'd1;
						end else begin
							vns_bankmachine0_next_state <= 1'd1;
						end
					end else begin
						vns_bankmachine0_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_21 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_bankmachine1_sink_valid = soc_netsoc_sdram_bankmachine1_req_valid;
assign soc_netsoc_sdram_bankmachine1_req_ready = soc_netsoc_sdram_bankmachine1_sink_ready;
assign soc_netsoc_sdram_bankmachine1_sink_payload_we = soc_netsoc_sdram_bankmachine1_req_we;
assign soc_netsoc_sdram_bankmachine1_sink_payload_adr = soc_netsoc_sdram_bankmachine1_req_adr;
assign soc_netsoc_sdram_bankmachine1_source_ready = (soc_netsoc_sdram_bankmachine1_req_wdata_ready | soc_netsoc_sdram_bankmachine1_req_rdata_valid);
assign soc_netsoc_sdram_bankmachine1_req_lock = soc_netsoc_sdram_bankmachine1_source_valid;
assign soc_netsoc_sdram_bankmachine1_hit = (soc_netsoc_sdram_bankmachine1_openrow == soc_netsoc_sdram_bankmachine1_source_payload_adr[21:7]);
assign soc_netsoc_sdram_bankmachine1_cmd_payload_ba = 1'd1;

// synthesis translate_off
reg dummy_d_22;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine1_cmd_payload_a <= 15'd0;
	if (soc_netsoc_sdram_bankmachine1_sel_row_adr) begin
		soc_netsoc_sdram_bankmachine1_cmd_payload_a <= soc_netsoc_sdram_bankmachine1_source_payload_adr[21:7];
	end else begin
		soc_netsoc_sdram_bankmachine1_cmd_payload_a <= {soc_netsoc_sdram_bankmachine1_source_payload_adr[6:0], {3{1'd0}}};
	end
// synthesis translate_off
	dummy_d_22 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_bankmachine1_wait = (~((soc_netsoc_sdram_bankmachine1_cmd_valid & soc_netsoc_sdram_bankmachine1_cmd_ready) & soc_netsoc_sdram_bankmachine1_cmd_payload_is_write));
assign soc_netsoc_sdram_bankmachine1_syncfifo1_din = {soc_netsoc_sdram_bankmachine1_fifo_in_last, soc_netsoc_sdram_bankmachine1_fifo_in_first, soc_netsoc_sdram_bankmachine1_fifo_in_payload_adr, soc_netsoc_sdram_bankmachine1_fifo_in_payload_we};
assign {soc_netsoc_sdram_bankmachine1_fifo_out_last, soc_netsoc_sdram_bankmachine1_fifo_out_first, soc_netsoc_sdram_bankmachine1_fifo_out_payload_adr, soc_netsoc_sdram_bankmachine1_fifo_out_payload_we} = soc_netsoc_sdram_bankmachine1_syncfifo1_dout;
assign soc_netsoc_sdram_bankmachine1_sink_ready = soc_netsoc_sdram_bankmachine1_syncfifo1_writable;
assign soc_netsoc_sdram_bankmachine1_syncfifo1_we = soc_netsoc_sdram_bankmachine1_sink_valid;
assign soc_netsoc_sdram_bankmachine1_fifo_in_first = soc_netsoc_sdram_bankmachine1_sink_first;
assign soc_netsoc_sdram_bankmachine1_fifo_in_last = soc_netsoc_sdram_bankmachine1_sink_last;
assign soc_netsoc_sdram_bankmachine1_fifo_in_payload_we = soc_netsoc_sdram_bankmachine1_sink_payload_we;
assign soc_netsoc_sdram_bankmachine1_fifo_in_payload_adr = soc_netsoc_sdram_bankmachine1_sink_payload_adr;
assign soc_netsoc_sdram_bankmachine1_source_valid = soc_netsoc_sdram_bankmachine1_syncfifo1_readable;
assign soc_netsoc_sdram_bankmachine1_source_first = soc_netsoc_sdram_bankmachine1_fifo_out_first;
assign soc_netsoc_sdram_bankmachine1_source_last = soc_netsoc_sdram_bankmachine1_fifo_out_last;
assign soc_netsoc_sdram_bankmachine1_source_payload_we = soc_netsoc_sdram_bankmachine1_fifo_out_payload_we;
assign soc_netsoc_sdram_bankmachine1_source_payload_adr = soc_netsoc_sdram_bankmachine1_fifo_out_payload_adr;
assign soc_netsoc_sdram_bankmachine1_syncfifo1_re = soc_netsoc_sdram_bankmachine1_source_ready;

// synthesis translate_off
reg dummy_d_23;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine1_wrport_adr <= 3'd0;
	if (soc_netsoc_sdram_bankmachine1_replace) begin
		soc_netsoc_sdram_bankmachine1_wrport_adr <= (soc_netsoc_sdram_bankmachine1_produce - 1'd1);
	end else begin
		soc_netsoc_sdram_bankmachine1_wrport_adr <= soc_netsoc_sdram_bankmachine1_produce;
	end
// synthesis translate_off
	dummy_d_23 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_bankmachine1_wrport_dat_w = soc_netsoc_sdram_bankmachine1_syncfifo1_din;
assign soc_netsoc_sdram_bankmachine1_wrport_we = (soc_netsoc_sdram_bankmachine1_syncfifo1_we & (soc_netsoc_sdram_bankmachine1_syncfifo1_writable | soc_netsoc_sdram_bankmachine1_replace));
assign soc_netsoc_sdram_bankmachine1_do_read = (soc_netsoc_sdram_bankmachine1_syncfifo1_readable & soc_netsoc_sdram_bankmachine1_syncfifo1_re);
assign soc_netsoc_sdram_bankmachine1_rdport_adr = soc_netsoc_sdram_bankmachine1_consume;
assign soc_netsoc_sdram_bankmachine1_syncfifo1_dout = soc_netsoc_sdram_bankmachine1_rdport_dat_r;
assign soc_netsoc_sdram_bankmachine1_syncfifo1_writable = (soc_netsoc_sdram_bankmachine1_level != 4'd8);
assign soc_netsoc_sdram_bankmachine1_syncfifo1_readable = (soc_netsoc_sdram_bankmachine1_level != 1'd0);
assign soc_netsoc_sdram_bankmachine1_done = (soc_netsoc_sdram_bankmachine1_count == 1'd0);

// synthesis translate_off
reg dummy_d_24;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine1_cmd_payload_is_read <= 1'd0;
	soc_netsoc_sdram_bankmachine1_cmd_payload_is_write <= 1'd0;
	vns_bankmachine1_next_state <= 3'd0;
	soc_netsoc_sdram_bankmachine1_track_close <= 1'd0;
	soc_netsoc_sdram_bankmachine1_req_wdata_ready <= 1'd0;
	soc_netsoc_sdram_bankmachine1_req_rdata_valid <= 1'd0;
	soc_netsoc_sdram_bankmachine1_refresh_gnt <= 1'd0;
	soc_netsoc_sdram_bankmachine1_cmd_valid <= 1'd0;
	soc_netsoc_sdram_bankmachine1_track_open <= 1'd0;
	soc_netsoc_sdram_bankmachine1_cmd_payload_cas <= 1'd0;
	soc_netsoc_sdram_bankmachine1_cmd_payload_ras <= 1'd0;
	soc_netsoc_sdram_bankmachine1_cmd_payload_we <= 1'd0;
	soc_netsoc_sdram_bankmachine1_sel_row_adr <= 1'd0;
	soc_netsoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd0;
	vns_bankmachine1_next_state <= vns_bankmachine1_state;
	case (vns_bankmachine1_state)
		1'd1: begin
			if (soc_netsoc_sdram_bankmachine1_done) begin
				soc_netsoc_sdram_bankmachine1_cmd_valid <= 1'd1;
				if (soc_netsoc_sdram_bankmachine1_cmd_ready) begin
					vns_bankmachine1_next_state <= 3'd4;
				end
				soc_netsoc_sdram_bankmachine1_cmd_payload_ras <= 1'd1;
				soc_netsoc_sdram_bankmachine1_cmd_payload_we <= 1'd1;
				soc_netsoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine1_track_close <= 1'd1;
		end
		2'd2: begin
			soc_netsoc_sdram_bankmachine1_sel_row_adr <= 1'd1;
			soc_netsoc_sdram_bankmachine1_track_open <= 1'd1;
			soc_netsoc_sdram_bankmachine1_cmd_valid <= 1'd1;
			soc_netsoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			if (soc_netsoc_sdram_bankmachine1_cmd_ready) begin
				vns_bankmachine1_next_state <= 3'd6;
			end
			soc_netsoc_sdram_bankmachine1_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (soc_netsoc_sdram_bankmachine1_done) begin
				soc_netsoc_sdram_bankmachine1_refresh_gnt <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine1_track_close <= 1'd1;
			soc_netsoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			if ((~soc_netsoc_sdram_bankmachine1_refresh_req)) begin
				vns_bankmachine1_next_state <= 1'd0;
			end
		end
		3'd4: begin
			vns_bankmachine1_next_state <= 3'd5;
		end
		3'd5: begin
			vns_bankmachine1_next_state <= 2'd2;
		end
		3'd6: begin
			vns_bankmachine1_next_state <= 3'd7;
		end
		3'd7: begin
			vns_bankmachine1_next_state <= 1'd0;
		end
		default: begin
			if (soc_netsoc_sdram_bankmachine1_refresh_req) begin
				vns_bankmachine1_next_state <= 2'd3;
			end else begin
				if (soc_netsoc_sdram_bankmachine1_source_valid) begin
					if (soc_netsoc_sdram_bankmachine1_has_openrow) begin
						if (soc_netsoc_sdram_bankmachine1_hit) begin
							soc_netsoc_sdram_bankmachine1_cmd_valid <= 1'd1;
							if (soc_netsoc_sdram_bankmachine1_source_payload_we) begin
								soc_netsoc_sdram_bankmachine1_req_wdata_ready <= soc_netsoc_sdram_bankmachine1_cmd_ready;
								soc_netsoc_sdram_bankmachine1_cmd_payload_is_write <= 1'd1;
								soc_netsoc_sdram_bankmachine1_cmd_payload_we <= 1'd1;
							end else begin
								soc_netsoc_sdram_bankmachine1_req_rdata_valid <= soc_netsoc_sdram_bankmachine1_cmd_ready;
								soc_netsoc_sdram_bankmachine1_cmd_payload_is_read <= 1'd1;
							end
							soc_netsoc_sdram_bankmachine1_cmd_payload_cas <= 1'd1;
						end else begin
							vns_bankmachine1_next_state <= 1'd1;
						end
					end else begin
						vns_bankmachine1_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_24 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_bankmachine2_sink_valid = soc_netsoc_sdram_bankmachine2_req_valid;
assign soc_netsoc_sdram_bankmachine2_req_ready = soc_netsoc_sdram_bankmachine2_sink_ready;
assign soc_netsoc_sdram_bankmachine2_sink_payload_we = soc_netsoc_sdram_bankmachine2_req_we;
assign soc_netsoc_sdram_bankmachine2_sink_payload_adr = soc_netsoc_sdram_bankmachine2_req_adr;
assign soc_netsoc_sdram_bankmachine2_source_ready = (soc_netsoc_sdram_bankmachine2_req_wdata_ready | soc_netsoc_sdram_bankmachine2_req_rdata_valid);
assign soc_netsoc_sdram_bankmachine2_req_lock = soc_netsoc_sdram_bankmachine2_source_valid;
assign soc_netsoc_sdram_bankmachine2_hit = (soc_netsoc_sdram_bankmachine2_openrow == soc_netsoc_sdram_bankmachine2_source_payload_adr[21:7]);
assign soc_netsoc_sdram_bankmachine2_cmd_payload_ba = 2'd2;

// synthesis translate_off
reg dummy_d_25;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine2_cmd_payload_a <= 15'd0;
	if (soc_netsoc_sdram_bankmachine2_sel_row_adr) begin
		soc_netsoc_sdram_bankmachine2_cmd_payload_a <= soc_netsoc_sdram_bankmachine2_source_payload_adr[21:7];
	end else begin
		soc_netsoc_sdram_bankmachine2_cmd_payload_a <= {soc_netsoc_sdram_bankmachine2_source_payload_adr[6:0], {3{1'd0}}};
	end
// synthesis translate_off
	dummy_d_25 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_bankmachine2_wait = (~((soc_netsoc_sdram_bankmachine2_cmd_valid & soc_netsoc_sdram_bankmachine2_cmd_ready) & soc_netsoc_sdram_bankmachine2_cmd_payload_is_write));
assign soc_netsoc_sdram_bankmachine2_syncfifo2_din = {soc_netsoc_sdram_bankmachine2_fifo_in_last, soc_netsoc_sdram_bankmachine2_fifo_in_first, soc_netsoc_sdram_bankmachine2_fifo_in_payload_adr, soc_netsoc_sdram_bankmachine2_fifo_in_payload_we};
assign {soc_netsoc_sdram_bankmachine2_fifo_out_last, soc_netsoc_sdram_bankmachine2_fifo_out_first, soc_netsoc_sdram_bankmachine2_fifo_out_payload_adr, soc_netsoc_sdram_bankmachine2_fifo_out_payload_we} = soc_netsoc_sdram_bankmachine2_syncfifo2_dout;
assign soc_netsoc_sdram_bankmachine2_sink_ready = soc_netsoc_sdram_bankmachine2_syncfifo2_writable;
assign soc_netsoc_sdram_bankmachine2_syncfifo2_we = soc_netsoc_sdram_bankmachine2_sink_valid;
assign soc_netsoc_sdram_bankmachine2_fifo_in_first = soc_netsoc_sdram_bankmachine2_sink_first;
assign soc_netsoc_sdram_bankmachine2_fifo_in_last = soc_netsoc_sdram_bankmachine2_sink_last;
assign soc_netsoc_sdram_bankmachine2_fifo_in_payload_we = soc_netsoc_sdram_bankmachine2_sink_payload_we;
assign soc_netsoc_sdram_bankmachine2_fifo_in_payload_adr = soc_netsoc_sdram_bankmachine2_sink_payload_adr;
assign soc_netsoc_sdram_bankmachine2_source_valid = soc_netsoc_sdram_bankmachine2_syncfifo2_readable;
assign soc_netsoc_sdram_bankmachine2_source_first = soc_netsoc_sdram_bankmachine2_fifo_out_first;
assign soc_netsoc_sdram_bankmachine2_source_last = soc_netsoc_sdram_bankmachine2_fifo_out_last;
assign soc_netsoc_sdram_bankmachine2_source_payload_we = soc_netsoc_sdram_bankmachine2_fifo_out_payload_we;
assign soc_netsoc_sdram_bankmachine2_source_payload_adr = soc_netsoc_sdram_bankmachine2_fifo_out_payload_adr;
assign soc_netsoc_sdram_bankmachine2_syncfifo2_re = soc_netsoc_sdram_bankmachine2_source_ready;

// synthesis translate_off
reg dummy_d_26;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine2_wrport_adr <= 3'd0;
	if (soc_netsoc_sdram_bankmachine2_replace) begin
		soc_netsoc_sdram_bankmachine2_wrport_adr <= (soc_netsoc_sdram_bankmachine2_produce - 1'd1);
	end else begin
		soc_netsoc_sdram_bankmachine2_wrport_adr <= soc_netsoc_sdram_bankmachine2_produce;
	end
// synthesis translate_off
	dummy_d_26 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_bankmachine2_wrport_dat_w = soc_netsoc_sdram_bankmachine2_syncfifo2_din;
assign soc_netsoc_sdram_bankmachine2_wrport_we = (soc_netsoc_sdram_bankmachine2_syncfifo2_we & (soc_netsoc_sdram_bankmachine2_syncfifo2_writable | soc_netsoc_sdram_bankmachine2_replace));
assign soc_netsoc_sdram_bankmachine2_do_read = (soc_netsoc_sdram_bankmachine2_syncfifo2_readable & soc_netsoc_sdram_bankmachine2_syncfifo2_re);
assign soc_netsoc_sdram_bankmachine2_rdport_adr = soc_netsoc_sdram_bankmachine2_consume;
assign soc_netsoc_sdram_bankmachine2_syncfifo2_dout = soc_netsoc_sdram_bankmachine2_rdport_dat_r;
assign soc_netsoc_sdram_bankmachine2_syncfifo2_writable = (soc_netsoc_sdram_bankmachine2_level != 4'd8);
assign soc_netsoc_sdram_bankmachine2_syncfifo2_readable = (soc_netsoc_sdram_bankmachine2_level != 1'd0);
assign soc_netsoc_sdram_bankmachine2_done = (soc_netsoc_sdram_bankmachine2_count == 1'd0);

// synthesis translate_off
reg dummy_d_27;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine2_track_open <= 1'd0;
	soc_netsoc_sdram_bankmachine2_track_close <= 1'd0;
	soc_netsoc_sdram_bankmachine2_cmd_payload_cas <= 1'd0;
	soc_netsoc_sdram_bankmachine2_cmd_payload_ras <= 1'd0;
	soc_netsoc_sdram_bankmachine2_cmd_payload_we <= 1'd0;
	soc_netsoc_sdram_bankmachine2_sel_row_adr <= 1'd0;
	soc_netsoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd0;
	soc_netsoc_sdram_bankmachine2_cmd_payload_is_read <= 1'd0;
	soc_netsoc_sdram_bankmachine2_cmd_payload_is_write <= 1'd0;
	vns_bankmachine2_next_state <= 3'd0;
	soc_netsoc_sdram_bankmachine2_req_wdata_ready <= 1'd0;
	soc_netsoc_sdram_bankmachine2_req_rdata_valid <= 1'd0;
	soc_netsoc_sdram_bankmachine2_refresh_gnt <= 1'd0;
	soc_netsoc_sdram_bankmachine2_cmd_valid <= 1'd0;
	vns_bankmachine2_next_state <= vns_bankmachine2_state;
	case (vns_bankmachine2_state)
		1'd1: begin
			if (soc_netsoc_sdram_bankmachine2_done) begin
				soc_netsoc_sdram_bankmachine2_cmd_valid <= 1'd1;
				if (soc_netsoc_sdram_bankmachine2_cmd_ready) begin
					vns_bankmachine2_next_state <= 3'd4;
				end
				soc_netsoc_sdram_bankmachine2_cmd_payload_ras <= 1'd1;
				soc_netsoc_sdram_bankmachine2_cmd_payload_we <= 1'd1;
				soc_netsoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine2_track_close <= 1'd1;
		end
		2'd2: begin
			soc_netsoc_sdram_bankmachine2_sel_row_adr <= 1'd1;
			soc_netsoc_sdram_bankmachine2_track_open <= 1'd1;
			soc_netsoc_sdram_bankmachine2_cmd_valid <= 1'd1;
			soc_netsoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			if (soc_netsoc_sdram_bankmachine2_cmd_ready) begin
				vns_bankmachine2_next_state <= 3'd6;
			end
			soc_netsoc_sdram_bankmachine2_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (soc_netsoc_sdram_bankmachine2_done) begin
				soc_netsoc_sdram_bankmachine2_refresh_gnt <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine2_track_close <= 1'd1;
			soc_netsoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			if ((~soc_netsoc_sdram_bankmachine2_refresh_req)) begin
				vns_bankmachine2_next_state <= 1'd0;
			end
		end
		3'd4: begin
			vns_bankmachine2_next_state <= 3'd5;
		end
		3'd5: begin
			vns_bankmachine2_next_state <= 2'd2;
		end
		3'd6: begin
			vns_bankmachine2_next_state <= 3'd7;
		end
		3'd7: begin
			vns_bankmachine2_next_state <= 1'd0;
		end
		default: begin
			if (soc_netsoc_sdram_bankmachine2_refresh_req) begin
				vns_bankmachine2_next_state <= 2'd3;
			end else begin
				if (soc_netsoc_sdram_bankmachine2_source_valid) begin
					if (soc_netsoc_sdram_bankmachine2_has_openrow) begin
						if (soc_netsoc_sdram_bankmachine2_hit) begin
							soc_netsoc_sdram_bankmachine2_cmd_valid <= 1'd1;
							if (soc_netsoc_sdram_bankmachine2_source_payload_we) begin
								soc_netsoc_sdram_bankmachine2_req_wdata_ready <= soc_netsoc_sdram_bankmachine2_cmd_ready;
								soc_netsoc_sdram_bankmachine2_cmd_payload_is_write <= 1'd1;
								soc_netsoc_sdram_bankmachine2_cmd_payload_we <= 1'd1;
							end else begin
								soc_netsoc_sdram_bankmachine2_req_rdata_valid <= soc_netsoc_sdram_bankmachine2_cmd_ready;
								soc_netsoc_sdram_bankmachine2_cmd_payload_is_read <= 1'd1;
							end
							soc_netsoc_sdram_bankmachine2_cmd_payload_cas <= 1'd1;
						end else begin
							vns_bankmachine2_next_state <= 1'd1;
						end
					end else begin
						vns_bankmachine2_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_27 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_bankmachine3_sink_valid = soc_netsoc_sdram_bankmachine3_req_valid;
assign soc_netsoc_sdram_bankmachine3_req_ready = soc_netsoc_sdram_bankmachine3_sink_ready;
assign soc_netsoc_sdram_bankmachine3_sink_payload_we = soc_netsoc_sdram_bankmachine3_req_we;
assign soc_netsoc_sdram_bankmachine3_sink_payload_adr = soc_netsoc_sdram_bankmachine3_req_adr;
assign soc_netsoc_sdram_bankmachine3_source_ready = (soc_netsoc_sdram_bankmachine3_req_wdata_ready | soc_netsoc_sdram_bankmachine3_req_rdata_valid);
assign soc_netsoc_sdram_bankmachine3_req_lock = soc_netsoc_sdram_bankmachine3_source_valid;
assign soc_netsoc_sdram_bankmachine3_hit = (soc_netsoc_sdram_bankmachine3_openrow == soc_netsoc_sdram_bankmachine3_source_payload_adr[21:7]);
assign soc_netsoc_sdram_bankmachine3_cmd_payload_ba = 2'd3;

// synthesis translate_off
reg dummy_d_28;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine3_cmd_payload_a <= 15'd0;
	if (soc_netsoc_sdram_bankmachine3_sel_row_adr) begin
		soc_netsoc_sdram_bankmachine3_cmd_payload_a <= soc_netsoc_sdram_bankmachine3_source_payload_adr[21:7];
	end else begin
		soc_netsoc_sdram_bankmachine3_cmd_payload_a <= {soc_netsoc_sdram_bankmachine3_source_payload_adr[6:0], {3{1'd0}}};
	end
// synthesis translate_off
	dummy_d_28 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_bankmachine3_wait = (~((soc_netsoc_sdram_bankmachine3_cmd_valid & soc_netsoc_sdram_bankmachine3_cmd_ready) & soc_netsoc_sdram_bankmachine3_cmd_payload_is_write));
assign soc_netsoc_sdram_bankmachine3_syncfifo3_din = {soc_netsoc_sdram_bankmachine3_fifo_in_last, soc_netsoc_sdram_bankmachine3_fifo_in_first, soc_netsoc_sdram_bankmachine3_fifo_in_payload_adr, soc_netsoc_sdram_bankmachine3_fifo_in_payload_we};
assign {soc_netsoc_sdram_bankmachine3_fifo_out_last, soc_netsoc_sdram_bankmachine3_fifo_out_first, soc_netsoc_sdram_bankmachine3_fifo_out_payload_adr, soc_netsoc_sdram_bankmachine3_fifo_out_payload_we} = soc_netsoc_sdram_bankmachine3_syncfifo3_dout;
assign soc_netsoc_sdram_bankmachine3_sink_ready = soc_netsoc_sdram_bankmachine3_syncfifo3_writable;
assign soc_netsoc_sdram_bankmachine3_syncfifo3_we = soc_netsoc_sdram_bankmachine3_sink_valid;
assign soc_netsoc_sdram_bankmachine3_fifo_in_first = soc_netsoc_sdram_bankmachine3_sink_first;
assign soc_netsoc_sdram_bankmachine3_fifo_in_last = soc_netsoc_sdram_bankmachine3_sink_last;
assign soc_netsoc_sdram_bankmachine3_fifo_in_payload_we = soc_netsoc_sdram_bankmachine3_sink_payload_we;
assign soc_netsoc_sdram_bankmachine3_fifo_in_payload_adr = soc_netsoc_sdram_bankmachine3_sink_payload_adr;
assign soc_netsoc_sdram_bankmachine3_source_valid = soc_netsoc_sdram_bankmachine3_syncfifo3_readable;
assign soc_netsoc_sdram_bankmachine3_source_first = soc_netsoc_sdram_bankmachine3_fifo_out_first;
assign soc_netsoc_sdram_bankmachine3_source_last = soc_netsoc_sdram_bankmachine3_fifo_out_last;
assign soc_netsoc_sdram_bankmachine3_source_payload_we = soc_netsoc_sdram_bankmachine3_fifo_out_payload_we;
assign soc_netsoc_sdram_bankmachine3_source_payload_adr = soc_netsoc_sdram_bankmachine3_fifo_out_payload_adr;
assign soc_netsoc_sdram_bankmachine3_syncfifo3_re = soc_netsoc_sdram_bankmachine3_source_ready;

// synthesis translate_off
reg dummy_d_29;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine3_wrport_adr <= 3'd0;
	if (soc_netsoc_sdram_bankmachine3_replace) begin
		soc_netsoc_sdram_bankmachine3_wrport_adr <= (soc_netsoc_sdram_bankmachine3_produce - 1'd1);
	end else begin
		soc_netsoc_sdram_bankmachine3_wrport_adr <= soc_netsoc_sdram_bankmachine3_produce;
	end
// synthesis translate_off
	dummy_d_29 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_bankmachine3_wrport_dat_w = soc_netsoc_sdram_bankmachine3_syncfifo3_din;
assign soc_netsoc_sdram_bankmachine3_wrport_we = (soc_netsoc_sdram_bankmachine3_syncfifo3_we & (soc_netsoc_sdram_bankmachine3_syncfifo3_writable | soc_netsoc_sdram_bankmachine3_replace));
assign soc_netsoc_sdram_bankmachine3_do_read = (soc_netsoc_sdram_bankmachine3_syncfifo3_readable & soc_netsoc_sdram_bankmachine3_syncfifo3_re);
assign soc_netsoc_sdram_bankmachine3_rdport_adr = soc_netsoc_sdram_bankmachine3_consume;
assign soc_netsoc_sdram_bankmachine3_syncfifo3_dout = soc_netsoc_sdram_bankmachine3_rdport_dat_r;
assign soc_netsoc_sdram_bankmachine3_syncfifo3_writable = (soc_netsoc_sdram_bankmachine3_level != 4'd8);
assign soc_netsoc_sdram_bankmachine3_syncfifo3_readable = (soc_netsoc_sdram_bankmachine3_level != 1'd0);
assign soc_netsoc_sdram_bankmachine3_done = (soc_netsoc_sdram_bankmachine3_count == 1'd0);

// synthesis translate_off
reg dummy_d_30;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine3_refresh_gnt <= 1'd0;
	soc_netsoc_sdram_bankmachine3_cmd_valid <= 1'd0;
	soc_netsoc_sdram_bankmachine3_track_open <= 1'd0;
	soc_netsoc_sdram_bankmachine3_track_close <= 1'd0;
	soc_netsoc_sdram_bankmachine3_cmd_payload_cas <= 1'd0;
	soc_netsoc_sdram_bankmachine3_cmd_payload_ras <= 1'd0;
	soc_netsoc_sdram_bankmachine3_cmd_payload_we <= 1'd0;
	soc_netsoc_sdram_bankmachine3_sel_row_adr <= 1'd0;
	soc_netsoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd0;
	soc_netsoc_sdram_bankmachine3_cmd_payload_is_read <= 1'd0;
	soc_netsoc_sdram_bankmachine3_cmd_payload_is_write <= 1'd0;
	vns_bankmachine3_next_state <= 3'd0;
	soc_netsoc_sdram_bankmachine3_req_wdata_ready <= 1'd0;
	soc_netsoc_sdram_bankmachine3_req_rdata_valid <= 1'd0;
	vns_bankmachine3_next_state <= vns_bankmachine3_state;
	case (vns_bankmachine3_state)
		1'd1: begin
			if (soc_netsoc_sdram_bankmachine3_done) begin
				soc_netsoc_sdram_bankmachine3_cmd_valid <= 1'd1;
				if (soc_netsoc_sdram_bankmachine3_cmd_ready) begin
					vns_bankmachine3_next_state <= 3'd4;
				end
				soc_netsoc_sdram_bankmachine3_cmd_payload_ras <= 1'd1;
				soc_netsoc_sdram_bankmachine3_cmd_payload_we <= 1'd1;
				soc_netsoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine3_track_close <= 1'd1;
		end
		2'd2: begin
			soc_netsoc_sdram_bankmachine3_sel_row_adr <= 1'd1;
			soc_netsoc_sdram_bankmachine3_track_open <= 1'd1;
			soc_netsoc_sdram_bankmachine3_cmd_valid <= 1'd1;
			soc_netsoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			if (soc_netsoc_sdram_bankmachine3_cmd_ready) begin
				vns_bankmachine3_next_state <= 3'd6;
			end
			soc_netsoc_sdram_bankmachine3_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (soc_netsoc_sdram_bankmachine3_done) begin
				soc_netsoc_sdram_bankmachine3_refresh_gnt <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine3_track_close <= 1'd1;
			soc_netsoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			if ((~soc_netsoc_sdram_bankmachine3_refresh_req)) begin
				vns_bankmachine3_next_state <= 1'd0;
			end
		end
		3'd4: begin
			vns_bankmachine3_next_state <= 3'd5;
		end
		3'd5: begin
			vns_bankmachine3_next_state <= 2'd2;
		end
		3'd6: begin
			vns_bankmachine3_next_state <= 3'd7;
		end
		3'd7: begin
			vns_bankmachine3_next_state <= 1'd0;
		end
		default: begin
			if (soc_netsoc_sdram_bankmachine3_refresh_req) begin
				vns_bankmachine3_next_state <= 2'd3;
			end else begin
				if (soc_netsoc_sdram_bankmachine3_source_valid) begin
					if (soc_netsoc_sdram_bankmachine3_has_openrow) begin
						if (soc_netsoc_sdram_bankmachine3_hit) begin
							soc_netsoc_sdram_bankmachine3_cmd_valid <= 1'd1;
							if (soc_netsoc_sdram_bankmachine3_source_payload_we) begin
								soc_netsoc_sdram_bankmachine3_req_wdata_ready <= soc_netsoc_sdram_bankmachine3_cmd_ready;
								soc_netsoc_sdram_bankmachine3_cmd_payload_is_write <= 1'd1;
								soc_netsoc_sdram_bankmachine3_cmd_payload_we <= 1'd1;
							end else begin
								soc_netsoc_sdram_bankmachine3_req_rdata_valid <= soc_netsoc_sdram_bankmachine3_cmd_ready;
								soc_netsoc_sdram_bankmachine3_cmd_payload_is_read <= 1'd1;
							end
							soc_netsoc_sdram_bankmachine3_cmd_payload_cas <= 1'd1;
						end else begin
							vns_bankmachine3_next_state <= 1'd1;
						end
					end else begin
						vns_bankmachine3_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_30 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_bankmachine4_sink_valid = soc_netsoc_sdram_bankmachine4_req_valid;
assign soc_netsoc_sdram_bankmachine4_req_ready = soc_netsoc_sdram_bankmachine4_sink_ready;
assign soc_netsoc_sdram_bankmachine4_sink_payload_we = soc_netsoc_sdram_bankmachine4_req_we;
assign soc_netsoc_sdram_bankmachine4_sink_payload_adr = soc_netsoc_sdram_bankmachine4_req_adr;
assign soc_netsoc_sdram_bankmachine4_source_ready = (soc_netsoc_sdram_bankmachine4_req_wdata_ready | soc_netsoc_sdram_bankmachine4_req_rdata_valid);
assign soc_netsoc_sdram_bankmachine4_req_lock = soc_netsoc_sdram_bankmachine4_source_valid;
assign soc_netsoc_sdram_bankmachine4_hit = (soc_netsoc_sdram_bankmachine4_openrow == soc_netsoc_sdram_bankmachine4_source_payload_adr[21:7]);
assign soc_netsoc_sdram_bankmachine4_cmd_payload_ba = 3'd4;

// synthesis translate_off
reg dummy_d_31;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine4_cmd_payload_a <= 15'd0;
	if (soc_netsoc_sdram_bankmachine4_sel_row_adr) begin
		soc_netsoc_sdram_bankmachine4_cmd_payload_a <= soc_netsoc_sdram_bankmachine4_source_payload_adr[21:7];
	end else begin
		soc_netsoc_sdram_bankmachine4_cmd_payload_a <= {soc_netsoc_sdram_bankmachine4_source_payload_adr[6:0], {3{1'd0}}};
	end
// synthesis translate_off
	dummy_d_31 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_bankmachine4_wait = (~((soc_netsoc_sdram_bankmachine4_cmd_valid & soc_netsoc_sdram_bankmachine4_cmd_ready) & soc_netsoc_sdram_bankmachine4_cmd_payload_is_write));
assign soc_netsoc_sdram_bankmachine4_syncfifo4_din = {soc_netsoc_sdram_bankmachine4_fifo_in_last, soc_netsoc_sdram_bankmachine4_fifo_in_first, soc_netsoc_sdram_bankmachine4_fifo_in_payload_adr, soc_netsoc_sdram_bankmachine4_fifo_in_payload_we};
assign {soc_netsoc_sdram_bankmachine4_fifo_out_last, soc_netsoc_sdram_bankmachine4_fifo_out_first, soc_netsoc_sdram_bankmachine4_fifo_out_payload_adr, soc_netsoc_sdram_bankmachine4_fifo_out_payload_we} = soc_netsoc_sdram_bankmachine4_syncfifo4_dout;
assign soc_netsoc_sdram_bankmachine4_sink_ready = soc_netsoc_sdram_bankmachine4_syncfifo4_writable;
assign soc_netsoc_sdram_bankmachine4_syncfifo4_we = soc_netsoc_sdram_bankmachine4_sink_valid;
assign soc_netsoc_sdram_bankmachine4_fifo_in_first = soc_netsoc_sdram_bankmachine4_sink_first;
assign soc_netsoc_sdram_bankmachine4_fifo_in_last = soc_netsoc_sdram_bankmachine4_sink_last;
assign soc_netsoc_sdram_bankmachine4_fifo_in_payload_we = soc_netsoc_sdram_bankmachine4_sink_payload_we;
assign soc_netsoc_sdram_bankmachine4_fifo_in_payload_adr = soc_netsoc_sdram_bankmachine4_sink_payload_adr;
assign soc_netsoc_sdram_bankmachine4_source_valid = soc_netsoc_sdram_bankmachine4_syncfifo4_readable;
assign soc_netsoc_sdram_bankmachine4_source_first = soc_netsoc_sdram_bankmachine4_fifo_out_first;
assign soc_netsoc_sdram_bankmachine4_source_last = soc_netsoc_sdram_bankmachine4_fifo_out_last;
assign soc_netsoc_sdram_bankmachine4_source_payload_we = soc_netsoc_sdram_bankmachine4_fifo_out_payload_we;
assign soc_netsoc_sdram_bankmachine4_source_payload_adr = soc_netsoc_sdram_bankmachine4_fifo_out_payload_adr;
assign soc_netsoc_sdram_bankmachine4_syncfifo4_re = soc_netsoc_sdram_bankmachine4_source_ready;

// synthesis translate_off
reg dummy_d_32;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine4_wrport_adr <= 3'd0;
	if (soc_netsoc_sdram_bankmachine4_replace) begin
		soc_netsoc_sdram_bankmachine4_wrport_adr <= (soc_netsoc_sdram_bankmachine4_produce - 1'd1);
	end else begin
		soc_netsoc_sdram_bankmachine4_wrport_adr <= soc_netsoc_sdram_bankmachine4_produce;
	end
// synthesis translate_off
	dummy_d_32 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_bankmachine4_wrport_dat_w = soc_netsoc_sdram_bankmachine4_syncfifo4_din;
assign soc_netsoc_sdram_bankmachine4_wrport_we = (soc_netsoc_sdram_bankmachine4_syncfifo4_we & (soc_netsoc_sdram_bankmachine4_syncfifo4_writable | soc_netsoc_sdram_bankmachine4_replace));
assign soc_netsoc_sdram_bankmachine4_do_read = (soc_netsoc_sdram_bankmachine4_syncfifo4_readable & soc_netsoc_sdram_bankmachine4_syncfifo4_re);
assign soc_netsoc_sdram_bankmachine4_rdport_adr = soc_netsoc_sdram_bankmachine4_consume;
assign soc_netsoc_sdram_bankmachine4_syncfifo4_dout = soc_netsoc_sdram_bankmachine4_rdport_dat_r;
assign soc_netsoc_sdram_bankmachine4_syncfifo4_writable = (soc_netsoc_sdram_bankmachine4_level != 4'd8);
assign soc_netsoc_sdram_bankmachine4_syncfifo4_readable = (soc_netsoc_sdram_bankmachine4_level != 1'd0);
assign soc_netsoc_sdram_bankmachine4_done = (soc_netsoc_sdram_bankmachine4_count == 1'd0);

// synthesis translate_off
reg dummy_d_33;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine4_req_wdata_ready <= 1'd0;
	soc_netsoc_sdram_bankmachine4_req_rdata_valid <= 1'd0;
	soc_netsoc_sdram_bankmachine4_refresh_gnt <= 1'd0;
	soc_netsoc_sdram_bankmachine4_cmd_valid <= 1'd0;
	vns_bankmachine4_next_state <= 3'd0;
	soc_netsoc_sdram_bankmachine4_track_open <= 1'd0;
	soc_netsoc_sdram_bankmachine4_cmd_payload_cas <= 1'd0;
	soc_netsoc_sdram_bankmachine4_track_close <= 1'd0;
	soc_netsoc_sdram_bankmachine4_cmd_payload_ras <= 1'd0;
	soc_netsoc_sdram_bankmachine4_cmd_payload_we <= 1'd0;
	soc_netsoc_sdram_bankmachine4_sel_row_adr <= 1'd0;
	soc_netsoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd0;
	soc_netsoc_sdram_bankmachine4_cmd_payload_is_read <= 1'd0;
	soc_netsoc_sdram_bankmachine4_cmd_payload_is_write <= 1'd0;
	vns_bankmachine4_next_state <= vns_bankmachine4_state;
	case (vns_bankmachine4_state)
		1'd1: begin
			if (soc_netsoc_sdram_bankmachine4_done) begin
				soc_netsoc_sdram_bankmachine4_cmd_valid <= 1'd1;
				if (soc_netsoc_sdram_bankmachine4_cmd_ready) begin
					vns_bankmachine4_next_state <= 3'd4;
				end
				soc_netsoc_sdram_bankmachine4_cmd_payload_ras <= 1'd1;
				soc_netsoc_sdram_bankmachine4_cmd_payload_we <= 1'd1;
				soc_netsoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine4_track_close <= 1'd1;
		end
		2'd2: begin
			soc_netsoc_sdram_bankmachine4_sel_row_adr <= 1'd1;
			soc_netsoc_sdram_bankmachine4_track_open <= 1'd1;
			soc_netsoc_sdram_bankmachine4_cmd_valid <= 1'd1;
			soc_netsoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			if (soc_netsoc_sdram_bankmachine4_cmd_ready) begin
				vns_bankmachine4_next_state <= 3'd6;
			end
			soc_netsoc_sdram_bankmachine4_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (soc_netsoc_sdram_bankmachine4_done) begin
				soc_netsoc_sdram_bankmachine4_refresh_gnt <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine4_track_close <= 1'd1;
			soc_netsoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			if ((~soc_netsoc_sdram_bankmachine4_refresh_req)) begin
				vns_bankmachine4_next_state <= 1'd0;
			end
		end
		3'd4: begin
			vns_bankmachine4_next_state <= 3'd5;
		end
		3'd5: begin
			vns_bankmachine4_next_state <= 2'd2;
		end
		3'd6: begin
			vns_bankmachine4_next_state <= 3'd7;
		end
		3'd7: begin
			vns_bankmachine4_next_state <= 1'd0;
		end
		default: begin
			if (soc_netsoc_sdram_bankmachine4_refresh_req) begin
				vns_bankmachine4_next_state <= 2'd3;
			end else begin
				if (soc_netsoc_sdram_bankmachine4_source_valid) begin
					if (soc_netsoc_sdram_bankmachine4_has_openrow) begin
						if (soc_netsoc_sdram_bankmachine4_hit) begin
							soc_netsoc_sdram_bankmachine4_cmd_valid <= 1'd1;
							if (soc_netsoc_sdram_bankmachine4_source_payload_we) begin
								soc_netsoc_sdram_bankmachine4_req_wdata_ready <= soc_netsoc_sdram_bankmachine4_cmd_ready;
								soc_netsoc_sdram_bankmachine4_cmd_payload_is_write <= 1'd1;
								soc_netsoc_sdram_bankmachine4_cmd_payload_we <= 1'd1;
							end else begin
								soc_netsoc_sdram_bankmachine4_req_rdata_valid <= soc_netsoc_sdram_bankmachine4_cmd_ready;
								soc_netsoc_sdram_bankmachine4_cmd_payload_is_read <= 1'd1;
							end
							soc_netsoc_sdram_bankmachine4_cmd_payload_cas <= 1'd1;
						end else begin
							vns_bankmachine4_next_state <= 1'd1;
						end
					end else begin
						vns_bankmachine4_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_33 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_bankmachine5_sink_valid = soc_netsoc_sdram_bankmachine5_req_valid;
assign soc_netsoc_sdram_bankmachine5_req_ready = soc_netsoc_sdram_bankmachine5_sink_ready;
assign soc_netsoc_sdram_bankmachine5_sink_payload_we = soc_netsoc_sdram_bankmachine5_req_we;
assign soc_netsoc_sdram_bankmachine5_sink_payload_adr = soc_netsoc_sdram_bankmachine5_req_adr;
assign soc_netsoc_sdram_bankmachine5_source_ready = (soc_netsoc_sdram_bankmachine5_req_wdata_ready | soc_netsoc_sdram_bankmachine5_req_rdata_valid);
assign soc_netsoc_sdram_bankmachine5_req_lock = soc_netsoc_sdram_bankmachine5_source_valid;
assign soc_netsoc_sdram_bankmachine5_hit = (soc_netsoc_sdram_bankmachine5_openrow == soc_netsoc_sdram_bankmachine5_source_payload_adr[21:7]);
assign soc_netsoc_sdram_bankmachine5_cmd_payload_ba = 3'd5;

// synthesis translate_off
reg dummy_d_34;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine5_cmd_payload_a <= 15'd0;
	if (soc_netsoc_sdram_bankmachine5_sel_row_adr) begin
		soc_netsoc_sdram_bankmachine5_cmd_payload_a <= soc_netsoc_sdram_bankmachine5_source_payload_adr[21:7];
	end else begin
		soc_netsoc_sdram_bankmachine5_cmd_payload_a <= {soc_netsoc_sdram_bankmachine5_source_payload_adr[6:0], {3{1'd0}}};
	end
// synthesis translate_off
	dummy_d_34 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_bankmachine5_wait = (~((soc_netsoc_sdram_bankmachine5_cmd_valid & soc_netsoc_sdram_bankmachine5_cmd_ready) & soc_netsoc_sdram_bankmachine5_cmd_payload_is_write));
assign soc_netsoc_sdram_bankmachine5_syncfifo5_din = {soc_netsoc_sdram_bankmachine5_fifo_in_last, soc_netsoc_sdram_bankmachine5_fifo_in_first, soc_netsoc_sdram_bankmachine5_fifo_in_payload_adr, soc_netsoc_sdram_bankmachine5_fifo_in_payload_we};
assign {soc_netsoc_sdram_bankmachine5_fifo_out_last, soc_netsoc_sdram_bankmachine5_fifo_out_first, soc_netsoc_sdram_bankmachine5_fifo_out_payload_adr, soc_netsoc_sdram_bankmachine5_fifo_out_payload_we} = soc_netsoc_sdram_bankmachine5_syncfifo5_dout;
assign soc_netsoc_sdram_bankmachine5_sink_ready = soc_netsoc_sdram_bankmachine5_syncfifo5_writable;
assign soc_netsoc_sdram_bankmachine5_syncfifo5_we = soc_netsoc_sdram_bankmachine5_sink_valid;
assign soc_netsoc_sdram_bankmachine5_fifo_in_first = soc_netsoc_sdram_bankmachine5_sink_first;
assign soc_netsoc_sdram_bankmachine5_fifo_in_last = soc_netsoc_sdram_bankmachine5_sink_last;
assign soc_netsoc_sdram_bankmachine5_fifo_in_payload_we = soc_netsoc_sdram_bankmachine5_sink_payload_we;
assign soc_netsoc_sdram_bankmachine5_fifo_in_payload_adr = soc_netsoc_sdram_bankmachine5_sink_payload_adr;
assign soc_netsoc_sdram_bankmachine5_source_valid = soc_netsoc_sdram_bankmachine5_syncfifo5_readable;
assign soc_netsoc_sdram_bankmachine5_source_first = soc_netsoc_sdram_bankmachine5_fifo_out_first;
assign soc_netsoc_sdram_bankmachine5_source_last = soc_netsoc_sdram_bankmachine5_fifo_out_last;
assign soc_netsoc_sdram_bankmachine5_source_payload_we = soc_netsoc_sdram_bankmachine5_fifo_out_payload_we;
assign soc_netsoc_sdram_bankmachine5_source_payload_adr = soc_netsoc_sdram_bankmachine5_fifo_out_payload_adr;
assign soc_netsoc_sdram_bankmachine5_syncfifo5_re = soc_netsoc_sdram_bankmachine5_source_ready;

// synthesis translate_off
reg dummy_d_35;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine5_wrport_adr <= 3'd0;
	if (soc_netsoc_sdram_bankmachine5_replace) begin
		soc_netsoc_sdram_bankmachine5_wrport_adr <= (soc_netsoc_sdram_bankmachine5_produce - 1'd1);
	end else begin
		soc_netsoc_sdram_bankmachine5_wrport_adr <= soc_netsoc_sdram_bankmachine5_produce;
	end
// synthesis translate_off
	dummy_d_35 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_bankmachine5_wrport_dat_w = soc_netsoc_sdram_bankmachine5_syncfifo5_din;
assign soc_netsoc_sdram_bankmachine5_wrport_we = (soc_netsoc_sdram_bankmachine5_syncfifo5_we & (soc_netsoc_sdram_bankmachine5_syncfifo5_writable | soc_netsoc_sdram_bankmachine5_replace));
assign soc_netsoc_sdram_bankmachine5_do_read = (soc_netsoc_sdram_bankmachine5_syncfifo5_readable & soc_netsoc_sdram_bankmachine5_syncfifo5_re);
assign soc_netsoc_sdram_bankmachine5_rdport_adr = soc_netsoc_sdram_bankmachine5_consume;
assign soc_netsoc_sdram_bankmachine5_syncfifo5_dout = soc_netsoc_sdram_bankmachine5_rdport_dat_r;
assign soc_netsoc_sdram_bankmachine5_syncfifo5_writable = (soc_netsoc_sdram_bankmachine5_level != 4'd8);
assign soc_netsoc_sdram_bankmachine5_syncfifo5_readable = (soc_netsoc_sdram_bankmachine5_level != 1'd0);
assign soc_netsoc_sdram_bankmachine5_done = (soc_netsoc_sdram_bankmachine5_count == 1'd0);

// synthesis translate_off
reg dummy_d_36;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine5_req_wdata_ready <= 1'd0;
	soc_netsoc_sdram_bankmachine5_req_rdata_valid <= 1'd0;
	soc_netsoc_sdram_bankmachine5_refresh_gnt <= 1'd0;
	soc_netsoc_sdram_bankmachine5_cmd_valid <= 1'd0;
	soc_netsoc_sdram_bankmachine5_track_open <= 1'd0;
	soc_netsoc_sdram_bankmachine5_track_close <= 1'd0;
	soc_netsoc_sdram_bankmachine5_cmd_payload_cas <= 1'd0;
	soc_netsoc_sdram_bankmachine5_cmd_payload_ras <= 1'd0;
	soc_netsoc_sdram_bankmachine5_cmd_payload_we <= 1'd0;
	soc_netsoc_sdram_bankmachine5_sel_row_adr <= 1'd0;
	soc_netsoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd0;
	vns_bankmachine5_next_state <= 3'd0;
	soc_netsoc_sdram_bankmachine5_cmd_payload_is_read <= 1'd0;
	soc_netsoc_sdram_bankmachine5_cmd_payload_is_write <= 1'd0;
	vns_bankmachine5_next_state <= vns_bankmachine5_state;
	case (vns_bankmachine5_state)
		1'd1: begin
			if (soc_netsoc_sdram_bankmachine5_done) begin
				soc_netsoc_sdram_bankmachine5_cmd_valid <= 1'd1;
				if (soc_netsoc_sdram_bankmachine5_cmd_ready) begin
					vns_bankmachine5_next_state <= 3'd4;
				end
				soc_netsoc_sdram_bankmachine5_cmd_payload_ras <= 1'd1;
				soc_netsoc_sdram_bankmachine5_cmd_payload_we <= 1'd1;
				soc_netsoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine5_track_close <= 1'd1;
		end
		2'd2: begin
			soc_netsoc_sdram_bankmachine5_sel_row_adr <= 1'd1;
			soc_netsoc_sdram_bankmachine5_track_open <= 1'd1;
			soc_netsoc_sdram_bankmachine5_cmd_valid <= 1'd1;
			soc_netsoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			if (soc_netsoc_sdram_bankmachine5_cmd_ready) begin
				vns_bankmachine5_next_state <= 3'd6;
			end
			soc_netsoc_sdram_bankmachine5_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (soc_netsoc_sdram_bankmachine5_done) begin
				soc_netsoc_sdram_bankmachine5_refresh_gnt <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine5_track_close <= 1'd1;
			soc_netsoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			if ((~soc_netsoc_sdram_bankmachine5_refresh_req)) begin
				vns_bankmachine5_next_state <= 1'd0;
			end
		end
		3'd4: begin
			vns_bankmachine5_next_state <= 3'd5;
		end
		3'd5: begin
			vns_bankmachine5_next_state <= 2'd2;
		end
		3'd6: begin
			vns_bankmachine5_next_state <= 3'd7;
		end
		3'd7: begin
			vns_bankmachine5_next_state <= 1'd0;
		end
		default: begin
			if (soc_netsoc_sdram_bankmachine5_refresh_req) begin
				vns_bankmachine5_next_state <= 2'd3;
			end else begin
				if (soc_netsoc_sdram_bankmachine5_source_valid) begin
					if (soc_netsoc_sdram_bankmachine5_has_openrow) begin
						if (soc_netsoc_sdram_bankmachine5_hit) begin
							soc_netsoc_sdram_bankmachine5_cmd_valid <= 1'd1;
							if (soc_netsoc_sdram_bankmachine5_source_payload_we) begin
								soc_netsoc_sdram_bankmachine5_req_wdata_ready <= soc_netsoc_sdram_bankmachine5_cmd_ready;
								soc_netsoc_sdram_bankmachine5_cmd_payload_is_write <= 1'd1;
								soc_netsoc_sdram_bankmachine5_cmd_payload_we <= 1'd1;
							end else begin
								soc_netsoc_sdram_bankmachine5_req_rdata_valid <= soc_netsoc_sdram_bankmachine5_cmd_ready;
								soc_netsoc_sdram_bankmachine5_cmd_payload_is_read <= 1'd1;
							end
							soc_netsoc_sdram_bankmachine5_cmd_payload_cas <= 1'd1;
						end else begin
							vns_bankmachine5_next_state <= 1'd1;
						end
					end else begin
						vns_bankmachine5_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_36 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_bankmachine6_sink_valid = soc_netsoc_sdram_bankmachine6_req_valid;
assign soc_netsoc_sdram_bankmachine6_req_ready = soc_netsoc_sdram_bankmachine6_sink_ready;
assign soc_netsoc_sdram_bankmachine6_sink_payload_we = soc_netsoc_sdram_bankmachine6_req_we;
assign soc_netsoc_sdram_bankmachine6_sink_payload_adr = soc_netsoc_sdram_bankmachine6_req_adr;
assign soc_netsoc_sdram_bankmachine6_source_ready = (soc_netsoc_sdram_bankmachine6_req_wdata_ready | soc_netsoc_sdram_bankmachine6_req_rdata_valid);
assign soc_netsoc_sdram_bankmachine6_req_lock = soc_netsoc_sdram_bankmachine6_source_valid;
assign soc_netsoc_sdram_bankmachine6_hit = (soc_netsoc_sdram_bankmachine6_openrow == soc_netsoc_sdram_bankmachine6_source_payload_adr[21:7]);
assign soc_netsoc_sdram_bankmachine6_cmd_payload_ba = 3'd6;

// synthesis translate_off
reg dummy_d_37;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine6_cmd_payload_a <= 15'd0;
	if (soc_netsoc_sdram_bankmachine6_sel_row_adr) begin
		soc_netsoc_sdram_bankmachine6_cmd_payload_a <= soc_netsoc_sdram_bankmachine6_source_payload_adr[21:7];
	end else begin
		soc_netsoc_sdram_bankmachine6_cmd_payload_a <= {soc_netsoc_sdram_bankmachine6_source_payload_adr[6:0], {3{1'd0}}};
	end
// synthesis translate_off
	dummy_d_37 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_bankmachine6_wait = (~((soc_netsoc_sdram_bankmachine6_cmd_valid & soc_netsoc_sdram_bankmachine6_cmd_ready) & soc_netsoc_sdram_bankmachine6_cmd_payload_is_write));
assign soc_netsoc_sdram_bankmachine6_syncfifo6_din = {soc_netsoc_sdram_bankmachine6_fifo_in_last, soc_netsoc_sdram_bankmachine6_fifo_in_first, soc_netsoc_sdram_bankmachine6_fifo_in_payload_adr, soc_netsoc_sdram_bankmachine6_fifo_in_payload_we};
assign {soc_netsoc_sdram_bankmachine6_fifo_out_last, soc_netsoc_sdram_bankmachine6_fifo_out_first, soc_netsoc_sdram_bankmachine6_fifo_out_payload_adr, soc_netsoc_sdram_bankmachine6_fifo_out_payload_we} = soc_netsoc_sdram_bankmachine6_syncfifo6_dout;
assign soc_netsoc_sdram_bankmachine6_sink_ready = soc_netsoc_sdram_bankmachine6_syncfifo6_writable;
assign soc_netsoc_sdram_bankmachine6_syncfifo6_we = soc_netsoc_sdram_bankmachine6_sink_valid;
assign soc_netsoc_sdram_bankmachine6_fifo_in_first = soc_netsoc_sdram_bankmachine6_sink_first;
assign soc_netsoc_sdram_bankmachine6_fifo_in_last = soc_netsoc_sdram_bankmachine6_sink_last;
assign soc_netsoc_sdram_bankmachine6_fifo_in_payload_we = soc_netsoc_sdram_bankmachine6_sink_payload_we;
assign soc_netsoc_sdram_bankmachine6_fifo_in_payload_adr = soc_netsoc_sdram_bankmachine6_sink_payload_adr;
assign soc_netsoc_sdram_bankmachine6_source_valid = soc_netsoc_sdram_bankmachine6_syncfifo6_readable;
assign soc_netsoc_sdram_bankmachine6_source_first = soc_netsoc_sdram_bankmachine6_fifo_out_first;
assign soc_netsoc_sdram_bankmachine6_source_last = soc_netsoc_sdram_bankmachine6_fifo_out_last;
assign soc_netsoc_sdram_bankmachine6_source_payload_we = soc_netsoc_sdram_bankmachine6_fifo_out_payload_we;
assign soc_netsoc_sdram_bankmachine6_source_payload_adr = soc_netsoc_sdram_bankmachine6_fifo_out_payload_adr;
assign soc_netsoc_sdram_bankmachine6_syncfifo6_re = soc_netsoc_sdram_bankmachine6_source_ready;

// synthesis translate_off
reg dummy_d_38;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine6_wrport_adr <= 3'd0;
	if (soc_netsoc_sdram_bankmachine6_replace) begin
		soc_netsoc_sdram_bankmachine6_wrport_adr <= (soc_netsoc_sdram_bankmachine6_produce - 1'd1);
	end else begin
		soc_netsoc_sdram_bankmachine6_wrport_adr <= soc_netsoc_sdram_bankmachine6_produce;
	end
// synthesis translate_off
	dummy_d_38 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_bankmachine6_wrport_dat_w = soc_netsoc_sdram_bankmachine6_syncfifo6_din;
assign soc_netsoc_sdram_bankmachine6_wrport_we = (soc_netsoc_sdram_bankmachine6_syncfifo6_we & (soc_netsoc_sdram_bankmachine6_syncfifo6_writable | soc_netsoc_sdram_bankmachine6_replace));
assign soc_netsoc_sdram_bankmachine6_do_read = (soc_netsoc_sdram_bankmachine6_syncfifo6_readable & soc_netsoc_sdram_bankmachine6_syncfifo6_re);
assign soc_netsoc_sdram_bankmachine6_rdport_adr = soc_netsoc_sdram_bankmachine6_consume;
assign soc_netsoc_sdram_bankmachine6_syncfifo6_dout = soc_netsoc_sdram_bankmachine6_rdport_dat_r;
assign soc_netsoc_sdram_bankmachine6_syncfifo6_writable = (soc_netsoc_sdram_bankmachine6_level != 4'd8);
assign soc_netsoc_sdram_bankmachine6_syncfifo6_readable = (soc_netsoc_sdram_bankmachine6_level != 1'd0);
assign soc_netsoc_sdram_bankmachine6_done = (soc_netsoc_sdram_bankmachine6_count == 1'd0);

// synthesis translate_off
reg dummy_d_39;
// synthesis translate_on
always @(*) begin
	vns_bankmachine6_next_state <= 3'd0;
	soc_netsoc_sdram_bankmachine6_req_wdata_ready <= 1'd0;
	soc_netsoc_sdram_bankmachine6_req_rdata_valid <= 1'd0;
	soc_netsoc_sdram_bankmachine6_refresh_gnt <= 1'd0;
	soc_netsoc_sdram_bankmachine6_cmd_valid <= 1'd0;
	soc_netsoc_sdram_bankmachine6_track_open <= 1'd0;
	soc_netsoc_sdram_bankmachine6_track_close <= 1'd0;
	soc_netsoc_sdram_bankmachine6_cmd_payload_cas <= 1'd0;
	soc_netsoc_sdram_bankmachine6_cmd_payload_ras <= 1'd0;
	soc_netsoc_sdram_bankmachine6_cmd_payload_we <= 1'd0;
	soc_netsoc_sdram_bankmachine6_sel_row_adr <= 1'd0;
	soc_netsoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd0;
	soc_netsoc_sdram_bankmachine6_cmd_payload_is_read <= 1'd0;
	soc_netsoc_sdram_bankmachine6_cmd_payload_is_write <= 1'd0;
	vns_bankmachine6_next_state <= vns_bankmachine6_state;
	case (vns_bankmachine6_state)
		1'd1: begin
			if (soc_netsoc_sdram_bankmachine6_done) begin
				soc_netsoc_sdram_bankmachine6_cmd_valid <= 1'd1;
				if (soc_netsoc_sdram_bankmachine6_cmd_ready) begin
					vns_bankmachine6_next_state <= 3'd4;
				end
				soc_netsoc_sdram_bankmachine6_cmd_payload_ras <= 1'd1;
				soc_netsoc_sdram_bankmachine6_cmd_payload_we <= 1'd1;
				soc_netsoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine6_track_close <= 1'd1;
		end
		2'd2: begin
			soc_netsoc_sdram_bankmachine6_sel_row_adr <= 1'd1;
			soc_netsoc_sdram_bankmachine6_track_open <= 1'd1;
			soc_netsoc_sdram_bankmachine6_cmd_valid <= 1'd1;
			soc_netsoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			if (soc_netsoc_sdram_bankmachine6_cmd_ready) begin
				vns_bankmachine6_next_state <= 3'd6;
			end
			soc_netsoc_sdram_bankmachine6_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (soc_netsoc_sdram_bankmachine6_done) begin
				soc_netsoc_sdram_bankmachine6_refresh_gnt <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine6_track_close <= 1'd1;
			soc_netsoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			if ((~soc_netsoc_sdram_bankmachine6_refresh_req)) begin
				vns_bankmachine6_next_state <= 1'd0;
			end
		end
		3'd4: begin
			vns_bankmachine6_next_state <= 3'd5;
		end
		3'd5: begin
			vns_bankmachine6_next_state <= 2'd2;
		end
		3'd6: begin
			vns_bankmachine6_next_state <= 3'd7;
		end
		3'd7: begin
			vns_bankmachine6_next_state <= 1'd0;
		end
		default: begin
			if (soc_netsoc_sdram_bankmachine6_refresh_req) begin
				vns_bankmachine6_next_state <= 2'd3;
			end else begin
				if (soc_netsoc_sdram_bankmachine6_source_valid) begin
					if (soc_netsoc_sdram_bankmachine6_has_openrow) begin
						if (soc_netsoc_sdram_bankmachine6_hit) begin
							soc_netsoc_sdram_bankmachine6_cmd_valid <= 1'd1;
							if (soc_netsoc_sdram_bankmachine6_source_payload_we) begin
								soc_netsoc_sdram_bankmachine6_req_wdata_ready <= soc_netsoc_sdram_bankmachine6_cmd_ready;
								soc_netsoc_sdram_bankmachine6_cmd_payload_is_write <= 1'd1;
								soc_netsoc_sdram_bankmachine6_cmd_payload_we <= 1'd1;
							end else begin
								soc_netsoc_sdram_bankmachine6_req_rdata_valid <= soc_netsoc_sdram_bankmachine6_cmd_ready;
								soc_netsoc_sdram_bankmachine6_cmd_payload_is_read <= 1'd1;
							end
							soc_netsoc_sdram_bankmachine6_cmd_payload_cas <= 1'd1;
						end else begin
							vns_bankmachine6_next_state <= 1'd1;
						end
					end else begin
						vns_bankmachine6_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_39 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_bankmachine7_sink_valid = soc_netsoc_sdram_bankmachine7_req_valid;
assign soc_netsoc_sdram_bankmachine7_req_ready = soc_netsoc_sdram_bankmachine7_sink_ready;
assign soc_netsoc_sdram_bankmachine7_sink_payload_we = soc_netsoc_sdram_bankmachine7_req_we;
assign soc_netsoc_sdram_bankmachine7_sink_payload_adr = soc_netsoc_sdram_bankmachine7_req_adr;
assign soc_netsoc_sdram_bankmachine7_source_ready = (soc_netsoc_sdram_bankmachine7_req_wdata_ready | soc_netsoc_sdram_bankmachine7_req_rdata_valid);
assign soc_netsoc_sdram_bankmachine7_req_lock = soc_netsoc_sdram_bankmachine7_source_valid;
assign soc_netsoc_sdram_bankmachine7_hit = (soc_netsoc_sdram_bankmachine7_openrow == soc_netsoc_sdram_bankmachine7_source_payload_adr[21:7]);
assign soc_netsoc_sdram_bankmachine7_cmd_payload_ba = 3'd7;

// synthesis translate_off
reg dummy_d_40;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine7_cmd_payload_a <= 15'd0;
	if (soc_netsoc_sdram_bankmachine7_sel_row_adr) begin
		soc_netsoc_sdram_bankmachine7_cmd_payload_a <= soc_netsoc_sdram_bankmachine7_source_payload_adr[21:7];
	end else begin
		soc_netsoc_sdram_bankmachine7_cmd_payload_a <= {soc_netsoc_sdram_bankmachine7_source_payload_adr[6:0], {3{1'd0}}};
	end
// synthesis translate_off
	dummy_d_40 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_bankmachine7_wait = (~((soc_netsoc_sdram_bankmachine7_cmd_valid & soc_netsoc_sdram_bankmachine7_cmd_ready) & soc_netsoc_sdram_bankmachine7_cmd_payload_is_write));
assign soc_netsoc_sdram_bankmachine7_syncfifo7_din = {soc_netsoc_sdram_bankmachine7_fifo_in_last, soc_netsoc_sdram_bankmachine7_fifo_in_first, soc_netsoc_sdram_bankmachine7_fifo_in_payload_adr, soc_netsoc_sdram_bankmachine7_fifo_in_payload_we};
assign {soc_netsoc_sdram_bankmachine7_fifo_out_last, soc_netsoc_sdram_bankmachine7_fifo_out_first, soc_netsoc_sdram_bankmachine7_fifo_out_payload_adr, soc_netsoc_sdram_bankmachine7_fifo_out_payload_we} = soc_netsoc_sdram_bankmachine7_syncfifo7_dout;
assign soc_netsoc_sdram_bankmachine7_sink_ready = soc_netsoc_sdram_bankmachine7_syncfifo7_writable;
assign soc_netsoc_sdram_bankmachine7_syncfifo7_we = soc_netsoc_sdram_bankmachine7_sink_valid;
assign soc_netsoc_sdram_bankmachine7_fifo_in_first = soc_netsoc_sdram_bankmachine7_sink_first;
assign soc_netsoc_sdram_bankmachine7_fifo_in_last = soc_netsoc_sdram_bankmachine7_sink_last;
assign soc_netsoc_sdram_bankmachine7_fifo_in_payload_we = soc_netsoc_sdram_bankmachine7_sink_payload_we;
assign soc_netsoc_sdram_bankmachine7_fifo_in_payload_adr = soc_netsoc_sdram_bankmachine7_sink_payload_adr;
assign soc_netsoc_sdram_bankmachine7_source_valid = soc_netsoc_sdram_bankmachine7_syncfifo7_readable;
assign soc_netsoc_sdram_bankmachine7_source_first = soc_netsoc_sdram_bankmachine7_fifo_out_first;
assign soc_netsoc_sdram_bankmachine7_source_last = soc_netsoc_sdram_bankmachine7_fifo_out_last;
assign soc_netsoc_sdram_bankmachine7_source_payload_we = soc_netsoc_sdram_bankmachine7_fifo_out_payload_we;
assign soc_netsoc_sdram_bankmachine7_source_payload_adr = soc_netsoc_sdram_bankmachine7_fifo_out_payload_adr;
assign soc_netsoc_sdram_bankmachine7_syncfifo7_re = soc_netsoc_sdram_bankmachine7_source_ready;

// synthesis translate_off
reg dummy_d_41;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine7_wrport_adr <= 3'd0;
	if (soc_netsoc_sdram_bankmachine7_replace) begin
		soc_netsoc_sdram_bankmachine7_wrport_adr <= (soc_netsoc_sdram_bankmachine7_produce - 1'd1);
	end else begin
		soc_netsoc_sdram_bankmachine7_wrport_adr <= soc_netsoc_sdram_bankmachine7_produce;
	end
// synthesis translate_off
	dummy_d_41 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_bankmachine7_wrport_dat_w = soc_netsoc_sdram_bankmachine7_syncfifo7_din;
assign soc_netsoc_sdram_bankmachine7_wrport_we = (soc_netsoc_sdram_bankmachine7_syncfifo7_we & (soc_netsoc_sdram_bankmachine7_syncfifo7_writable | soc_netsoc_sdram_bankmachine7_replace));
assign soc_netsoc_sdram_bankmachine7_do_read = (soc_netsoc_sdram_bankmachine7_syncfifo7_readable & soc_netsoc_sdram_bankmachine7_syncfifo7_re);
assign soc_netsoc_sdram_bankmachine7_rdport_adr = soc_netsoc_sdram_bankmachine7_consume;
assign soc_netsoc_sdram_bankmachine7_syncfifo7_dout = soc_netsoc_sdram_bankmachine7_rdport_dat_r;
assign soc_netsoc_sdram_bankmachine7_syncfifo7_writable = (soc_netsoc_sdram_bankmachine7_level != 4'd8);
assign soc_netsoc_sdram_bankmachine7_syncfifo7_readable = (soc_netsoc_sdram_bankmachine7_level != 1'd0);
assign soc_netsoc_sdram_bankmachine7_done = (soc_netsoc_sdram_bankmachine7_count == 1'd0);

// synthesis translate_off
reg dummy_d_42;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine7_track_close <= 1'd0;
	soc_netsoc_sdram_bankmachine7_cmd_payload_cas <= 1'd0;
	soc_netsoc_sdram_bankmachine7_cmd_payload_ras <= 1'd0;
	soc_netsoc_sdram_bankmachine7_cmd_payload_we <= 1'd0;
	soc_netsoc_sdram_bankmachine7_sel_row_adr <= 1'd0;
	soc_netsoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd0;
	soc_netsoc_sdram_bankmachine7_cmd_payload_is_read <= 1'd0;
	soc_netsoc_sdram_bankmachine7_cmd_payload_is_write <= 1'd0;
	vns_bankmachine7_next_state <= 3'd0;
	soc_netsoc_sdram_bankmachine7_req_wdata_ready <= 1'd0;
	soc_netsoc_sdram_bankmachine7_req_rdata_valid <= 1'd0;
	soc_netsoc_sdram_bankmachine7_refresh_gnt <= 1'd0;
	soc_netsoc_sdram_bankmachine7_cmd_valid <= 1'd0;
	soc_netsoc_sdram_bankmachine7_track_open <= 1'd0;
	vns_bankmachine7_next_state <= vns_bankmachine7_state;
	case (vns_bankmachine7_state)
		1'd1: begin
			if (soc_netsoc_sdram_bankmachine7_done) begin
				soc_netsoc_sdram_bankmachine7_cmd_valid <= 1'd1;
				if (soc_netsoc_sdram_bankmachine7_cmd_ready) begin
					vns_bankmachine7_next_state <= 3'd4;
				end
				soc_netsoc_sdram_bankmachine7_cmd_payload_ras <= 1'd1;
				soc_netsoc_sdram_bankmachine7_cmd_payload_we <= 1'd1;
				soc_netsoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine7_track_close <= 1'd1;
		end
		2'd2: begin
			soc_netsoc_sdram_bankmachine7_sel_row_adr <= 1'd1;
			soc_netsoc_sdram_bankmachine7_track_open <= 1'd1;
			soc_netsoc_sdram_bankmachine7_cmd_valid <= 1'd1;
			soc_netsoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			if (soc_netsoc_sdram_bankmachine7_cmd_ready) begin
				vns_bankmachine7_next_state <= 3'd6;
			end
			soc_netsoc_sdram_bankmachine7_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (soc_netsoc_sdram_bankmachine7_done) begin
				soc_netsoc_sdram_bankmachine7_refresh_gnt <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine7_track_close <= 1'd1;
			soc_netsoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			if ((~soc_netsoc_sdram_bankmachine7_refresh_req)) begin
				vns_bankmachine7_next_state <= 1'd0;
			end
		end
		3'd4: begin
			vns_bankmachine7_next_state <= 3'd5;
		end
		3'd5: begin
			vns_bankmachine7_next_state <= 2'd2;
		end
		3'd6: begin
			vns_bankmachine7_next_state <= 3'd7;
		end
		3'd7: begin
			vns_bankmachine7_next_state <= 1'd0;
		end
		default: begin
			if (soc_netsoc_sdram_bankmachine7_refresh_req) begin
				vns_bankmachine7_next_state <= 2'd3;
			end else begin
				if (soc_netsoc_sdram_bankmachine7_source_valid) begin
					if (soc_netsoc_sdram_bankmachine7_has_openrow) begin
						if (soc_netsoc_sdram_bankmachine7_hit) begin
							soc_netsoc_sdram_bankmachine7_cmd_valid <= 1'd1;
							if (soc_netsoc_sdram_bankmachine7_source_payload_we) begin
								soc_netsoc_sdram_bankmachine7_req_wdata_ready <= soc_netsoc_sdram_bankmachine7_cmd_ready;
								soc_netsoc_sdram_bankmachine7_cmd_payload_is_write <= 1'd1;
								soc_netsoc_sdram_bankmachine7_cmd_payload_we <= 1'd1;
							end else begin
								soc_netsoc_sdram_bankmachine7_req_rdata_valid <= soc_netsoc_sdram_bankmachine7_cmd_ready;
								soc_netsoc_sdram_bankmachine7_cmd_payload_is_read <= 1'd1;
							end
							soc_netsoc_sdram_bankmachine7_cmd_payload_cas <= 1'd1;
						end else begin
							vns_bankmachine7_next_state <= 1'd1;
						end
					end else begin
						vns_bankmachine7_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_42 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_read_available = ((((((((soc_netsoc_sdram_bankmachine0_cmd_valid & soc_netsoc_sdram_bankmachine0_cmd_payload_is_read) | (soc_netsoc_sdram_bankmachine1_cmd_valid & soc_netsoc_sdram_bankmachine1_cmd_payload_is_read)) | (soc_netsoc_sdram_bankmachine2_cmd_valid & soc_netsoc_sdram_bankmachine2_cmd_payload_is_read)) | (soc_netsoc_sdram_bankmachine3_cmd_valid & soc_netsoc_sdram_bankmachine3_cmd_payload_is_read)) | (soc_netsoc_sdram_bankmachine4_cmd_valid & soc_netsoc_sdram_bankmachine4_cmd_payload_is_read)) | (soc_netsoc_sdram_bankmachine5_cmd_valid & soc_netsoc_sdram_bankmachine5_cmd_payload_is_read)) | (soc_netsoc_sdram_bankmachine6_cmd_valid & soc_netsoc_sdram_bankmachine6_cmd_payload_is_read)) | (soc_netsoc_sdram_bankmachine7_cmd_valid & soc_netsoc_sdram_bankmachine7_cmd_payload_is_read));
assign soc_netsoc_sdram_write_available = ((((((((soc_netsoc_sdram_bankmachine0_cmd_valid & soc_netsoc_sdram_bankmachine0_cmd_payload_is_write) | (soc_netsoc_sdram_bankmachine1_cmd_valid & soc_netsoc_sdram_bankmachine1_cmd_payload_is_write)) | (soc_netsoc_sdram_bankmachine2_cmd_valid & soc_netsoc_sdram_bankmachine2_cmd_payload_is_write)) | (soc_netsoc_sdram_bankmachine3_cmd_valid & soc_netsoc_sdram_bankmachine3_cmd_payload_is_write)) | (soc_netsoc_sdram_bankmachine4_cmd_valid & soc_netsoc_sdram_bankmachine4_cmd_payload_is_write)) | (soc_netsoc_sdram_bankmachine5_cmd_valid & soc_netsoc_sdram_bankmachine5_cmd_payload_is_write)) | (soc_netsoc_sdram_bankmachine6_cmd_valid & soc_netsoc_sdram_bankmachine6_cmd_payload_is_write)) | (soc_netsoc_sdram_bankmachine7_cmd_valid & soc_netsoc_sdram_bankmachine7_cmd_payload_is_write));
assign soc_netsoc_sdram_max_time0 = (soc_netsoc_sdram_time0 == 1'd0);
assign soc_netsoc_sdram_max_time1 = (soc_netsoc_sdram_time1 == 1'd0);
assign soc_netsoc_sdram_bankmachine0_refresh_req = soc_netsoc_sdram_cmd_valid;
assign soc_netsoc_sdram_bankmachine1_refresh_req = soc_netsoc_sdram_cmd_valid;
assign soc_netsoc_sdram_bankmachine2_refresh_req = soc_netsoc_sdram_cmd_valid;
assign soc_netsoc_sdram_bankmachine3_refresh_req = soc_netsoc_sdram_cmd_valid;
assign soc_netsoc_sdram_bankmachine4_refresh_req = soc_netsoc_sdram_cmd_valid;
assign soc_netsoc_sdram_bankmachine5_refresh_req = soc_netsoc_sdram_cmd_valid;
assign soc_netsoc_sdram_bankmachine6_refresh_req = soc_netsoc_sdram_cmd_valid;
assign soc_netsoc_sdram_bankmachine7_refresh_req = soc_netsoc_sdram_cmd_valid;
assign soc_netsoc_sdram_go_to_refresh = (((((((soc_netsoc_sdram_bankmachine0_refresh_gnt & soc_netsoc_sdram_bankmachine1_refresh_gnt) & soc_netsoc_sdram_bankmachine2_refresh_gnt) & soc_netsoc_sdram_bankmachine3_refresh_gnt) & soc_netsoc_sdram_bankmachine4_refresh_gnt) & soc_netsoc_sdram_bankmachine5_refresh_gnt) & soc_netsoc_sdram_bankmachine6_refresh_gnt) & soc_netsoc_sdram_bankmachine7_refresh_gnt);
assign soc_netsoc_sdram_interface_rdata = {soc_netsoc_sdram_dfi_p3_rddata, soc_netsoc_sdram_dfi_p2_rddata, soc_netsoc_sdram_dfi_p1_rddata, soc_netsoc_sdram_dfi_p0_rddata};
assign {soc_netsoc_sdram_dfi_p3_wrdata, soc_netsoc_sdram_dfi_p2_wrdata, soc_netsoc_sdram_dfi_p1_wrdata, soc_netsoc_sdram_dfi_p0_wrdata} = soc_netsoc_sdram_interface_wdata;
assign {soc_netsoc_sdram_dfi_p3_wrdata_mask, soc_netsoc_sdram_dfi_p2_wrdata_mask, soc_netsoc_sdram_dfi_p1_wrdata_mask, soc_netsoc_sdram_dfi_p0_wrdata_mask} = (~soc_netsoc_sdram_interface_wdata_we);

// synthesis translate_off
reg dummy_d_43;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_choose_cmd_valids <= 8'd0;
	soc_netsoc_sdram_choose_cmd_valids[0] <= (soc_netsoc_sdram_bankmachine0_cmd_valid & ((soc_netsoc_sdram_bankmachine0_cmd_payload_is_cmd & soc_netsoc_sdram_choose_cmd_want_cmds) | ((soc_netsoc_sdram_bankmachine0_cmd_payload_is_read == soc_netsoc_sdram_choose_cmd_want_reads) & (soc_netsoc_sdram_bankmachine0_cmd_payload_is_write == soc_netsoc_sdram_choose_cmd_want_writes))));
	soc_netsoc_sdram_choose_cmd_valids[1] <= (soc_netsoc_sdram_bankmachine1_cmd_valid & ((soc_netsoc_sdram_bankmachine1_cmd_payload_is_cmd & soc_netsoc_sdram_choose_cmd_want_cmds) | ((soc_netsoc_sdram_bankmachine1_cmd_payload_is_read == soc_netsoc_sdram_choose_cmd_want_reads) & (soc_netsoc_sdram_bankmachine1_cmd_payload_is_write == soc_netsoc_sdram_choose_cmd_want_writes))));
	soc_netsoc_sdram_choose_cmd_valids[2] <= (soc_netsoc_sdram_bankmachine2_cmd_valid & ((soc_netsoc_sdram_bankmachine2_cmd_payload_is_cmd & soc_netsoc_sdram_choose_cmd_want_cmds) | ((soc_netsoc_sdram_bankmachine2_cmd_payload_is_read == soc_netsoc_sdram_choose_cmd_want_reads) & (soc_netsoc_sdram_bankmachine2_cmd_payload_is_write == soc_netsoc_sdram_choose_cmd_want_writes))));
	soc_netsoc_sdram_choose_cmd_valids[3] <= (soc_netsoc_sdram_bankmachine3_cmd_valid & ((soc_netsoc_sdram_bankmachine3_cmd_payload_is_cmd & soc_netsoc_sdram_choose_cmd_want_cmds) | ((soc_netsoc_sdram_bankmachine3_cmd_payload_is_read == soc_netsoc_sdram_choose_cmd_want_reads) & (soc_netsoc_sdram_bankmachine3_cmd_payload_is_write == soc_netsoc_sdram_choose_cmd_want_writes))));
	soc_netsoc_sdram_choose_cmd_valids[4] <= (soc_netsoc_sdram_bankmachine4_cmd_valid & ((soc_netsoc_sdram_bankmachine4_cmd_payload_is_cmd & soc_netsoc_sdram_choose_cmd_want_cmds) | ((soc_netsoc_sdram_bankmachine4_cmd_payload_is_read == soc_netsoc_sdram_choose_cmd_want_reads) & (soc_netsoc_sdram_bankmachine4_cmd_payload_is_write == soc_netsoc_sdram_choose_cmd_want_writes))));
	soc_netsoc_sdram_choose_cmd_valids[5] <= (soc_netsoc_sdram_bankmachine5_cmd_valid & ((soc_netsoc_sdram_bankmachine5_cmd_payload_is_cmd & soc_netsoc_sdram_choose_cmd_want_cmds) | ((soc_netsoc_sdram_bankmachine5_cmd_payload_is_read == soc_netsoc_sdram_choose_cmd_want_reads) & (soc_netsoc_sdram_bankmachine5_cmd_payload_is_write == soc_netsoc_sdram_choose_cmd_want_writes))));
	soc_netsoc_sdram_choose_cmd_valids[6] <= (soc_netsoc_sdram_bankmachine6_cmd_valid & ((soc_netsoc_sdram_bankmachine6_cmd_payload_is_cmd & soc_netsoc_sdram_choose_cmd_want_cmds) | ((soc_netsoc_sdram_bankmachine6_cmd_payload_is_read == soc_netsoc_sdram_choose_cmd_want_reads) & (soc_netsoc_sdram_bankmachine6_cmd_payload_is_write == soc_netsoc_sdram_choose_cmd_want_writes))));
	soc_netsoc_sdram_choose_cmd_valids[7] <= (soc_netsoc_sdram_bankmachine7_cmd_valid & ((soc_netsoc_sdram_bankmachine7_cmd_payload_is_cmd & soc_netsoc_sdram_choose_cmd_want_cmds) | ((soc_netsoc_sdram_bankmachine7_cmd_payload_is_read == soc_netsoc_sdram_choose_cmd_want_reads) & (soc_netsoc_sdram_bankmachine7_cmd_payload_is_write == soc_netsoc_sdram_choose_cmd_want_writes))));
// synthesis translate_off
	dummy_d_43 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_choose_cmd_request = soc_netsoc_sdram_choose_cmd_valids;
assign soc_netsoc_sdram_choose_cmd_cmd_valid = vns_rhs_array_muxed0;
assign soc_netsoc_sdram_choose_cmd_cmd_payload_a = vns_rhs_array_muxed1;
assign soc_netsoc_sdram_choose_cmd_cmd_payload_ba = vns_rhs_array_muxed2;
assign soc_netsoc_sdram_choose_cmd_cmd_payload_is_read = vns_rhs_array_muxed3;
assign soc_netsoc_sdram_choose_cmd_cmd_payload_is_write = vns_rhs_array_muxed4;
assign soc_netsoc_sdram_choose_cmd_cmd_payload_is_cmd = vns_rhs_array_muxed5;

// synthesis translate_off
reg dummy_d_44;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_choose_cmd_cmd_payload_cas <= 1'd0;
	if (soc_netsoc_sdram_choose_cmd_cmd_valid) begin
		soc_netsoc_sdram_choose_cmd_cmd_payload_cas <= vns_t_array_muxed0;
	end
// synthesis translate_off
	dummy_d_44 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_45;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_choose_cmd_cmd_payload_ras <= 1'd0;
	if (soc_netsoc_sdram_choose_cmd_cmd_valid) begin
		soc_netsoc_sdram_choose_cmd_cmd_payload_ras <= vns_t_array_muxed1;
	end
// synthesis translate_off
	dummy_d_45 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_46;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_choose_cmd_cmd_payload_we <= 1'd0;
	if (soc_netsoc_sdram_choose_cmd_cmd_valid) begin
		soc_netsoc_sdram_choose_cmd_cmd_payload_we <= vns_t_array_muxed2;
	end
// synthesis translate_off
	dummy_d_46 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_choose_cmd_ce = soc_netsoc_sdram_choose_cmd_cmd_ready;

// synthesis translate_off
reg dummy_d_47;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_choose_req_valids <= 8'd0;
	soc_netsoc_sdram_choose_req_valids[0] <= (soc_netsoc_sdram_bankmachine0_cmd_valid & ((soc_netsoc_sdram_bankmachine0_cmd_payload_is_cmd & soc_netsoc_sdram_choose_req_want_cmds) | ((soc_netsoc_sdram_bankmachine0_cmd_payload_is_read == soc_netsoc_sdram_choose_req_want_reads) & (soc_netsoc_sdram_bankmachine0_cmd_payload_is_write == soc_netsoc_sdram_choose_req_want_writes))));
	soc_netsoc_sdram_choose_req_valids[1] <= (soc_netsoc_sdram_bankmachine1_cmd_valid & ((soc_netsoc_sdram_bankmachine1_cmd_payload_is_cmd & soc_netsoc_sdram_choose_req_want_cmds) | ((soc_netsoc_sdram_bankmachine1_cmd_payload_is_read == soc_netsoc_sdram_choose_req_want_reads) & (soc_netsoc_sdram_bankmachine1_cmd_payload_is_write == soc_netsoc_sdram_choose_req_want_writes))));
	soc_netsoc_sdram_choose_req_valids[2] <= (soc_netsoc_sdram_bankmachine2_cmd_valid & ((soc_netsoc_sdram_bankmachine2_cmd_payload_is_cmd & soc_netsoc_sdram_choose_req_want_cmds) | ((soc_netsoc_sdram_bankmachine2_cmd_payload_is_read == soc_netsoc_sdram_choose_req_want_reads) & (soc_netsoc_sdram_bankmachine2_cmd_payload_is_write == soc_netsoc_sdram_choose_req_want_writes))));
	soc_netsoc_sdram_choose_req_valids[3] <= (soc_netsoc_sdram_bankmachine3_cmd_valid & ((soc_netsoc_sdram_bankmachine3_cmd_payload_is_cmd & soc_netsoc_sdram_choose_req_want_cmds) | ((soc_netsoc_sdram_bankmachine3_cmd_payload_is_read == soc_netsoc_sdram_choose_req_want_reads) & (soc_netsoc_sdram_bankmachine3_cmd_payload_is_write == soc_netsoc_sdram_choose_req_want_writes))));
	soc_netsoc_sdram_choose_req_valids[4] <= (soc_netsoc_sdram_bankmachine4_cmd_valid & ((soc_netsoc_sdram_bankmachine4_cmd_payload_is_cmd & soc_netsoc_sdram_choose_req_want_cmds) | ((soc_netsoc_sdram_bankmachine4_cmd_payload_is_read == soc_netsoc_sdram_choose_req_want_reads) & (soc_netsoc_sdram_bankmachine4_cmd_payload_is_write == soc_netsoc_sdram_choose_req_want_writes))));
	soc_netsoc_sdram_choose_req_valids[5] <= (soc_netsoc_sdram_bankmachine5_cmd_valid & ((soc_netsoc_sdram_bankmachine5_cmd_payload_is_cmd & soc_netsoc_sdram_choose_req_want_cmds) | ((soc_netsoc_sdram_bankmachine5_cmd_payload_is_read == soc_netsoc_sdram_choose_req_want_reads) & (soc_netsoc_sdram_bankmachine5_cmd_payload_is_write == soc_netsoc_sdram_choose_req_want_writes))));
	soc_netsoc_sdram_choose_req_valids[6] <= (soc_netsoc_sdram_bankmachine6_cmd_valid & ((soc_netsoc_sdram_bankmachine6_cmd_payload_is_cmd & soc_netsoc_sdram_choose_req_want_cmds) | ((soc_netsoc_sdram_bankmachine6_cmd_payload_is_read == soc_netsoc_sdram_choose_req_want_reads) & (soc_netsoc_sdram_bankmachine6_cmd_payload_is_write == soc_netsoc_sdram_choose_req_want_writes))));
	soc_netsoc_sdram_choose_req_valids[7] <= (soc_netsoc_sdram_bankmachine7_cmd_valid & ((soc_netsoc_sdram_bankmachine7_cmd_payload_is_cmd & soc_netsoc_sdram_choose_req_want_cmds) | ((soc_netsoc_sdram_bankmachine7_cmd_payload_is_read == soc_netsoc_sdram_choose_req_want_reads) & (soc_netsoc_sdram_bankmachine7_cmd_payload_is_write == soc_netsoc_sdram_choose_req_want_writes))));
// synthesis translate_off
	dummy_d_47 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_choose_req_request = soc_netsoc_sdram_choose_req_valids;
assign soc_netsoc_sdram_choose_req_cmd_valid = vns_rhs_array_muxed6;
assign soc_netsoc_sdram_choose_req_cmd_payload_a = vns_rhs_array_muxed7;
assign soc_netsoc_sdram_choose_req_cmd_payload_ba = vns_rhs_array_muxed8;
assign soc_netsoc_sdram_choose_req_cmd_payload_is_read = vns_rhs_array_muxed9;
assign soc_netsoc_sdram_choose_req_cmd_payload_is_write = vns_rhs_array_muxed10;
assign soc_netsoc_sdram_choose_req_cmd_payload_is_cmd = vns_rhs_array_muxed11;

// synthesis translate_off
reg dummy_d_48;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_choose_req_cmd_payload_cas <= 1'd0;
	if (soc_netsoc_sdram_choose_req_cmd_valid) begin
		soc_netsoc_sdram_choose_req_cmd_payload_cas <= vns_t_array_muxed3;
	end
// synthesis translate_off
	dummy_d_48 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_49;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_choose_req_cmd_payload_ras <= 1'd0;
	if (soc_netsoc_sdram_choose_req_cmd_valid) begin
		soc_netsoc_sdram_choose_req_cmd_payload_ras <= vns_t_array_muxed4;
	end
// synthesis translate_off
	dummy_d_49 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_50;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_choose_req_cmd_payload_we <= 1'd0;
	if (soc_netsoc_sdram_choose_req_cmd_valid) begin
		soc_netsoc_sdram_choose_req_cmd_payload_we <= vns_t_array_muxed5;
	end
// synthesis translate_off
	dummy_d_50 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_51;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine0_cmd_ready <= 1'd0;
	if (((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & (soc_netsoc_sdram_choose_cmd_grant == 1'd0))) begin
		soc_netsoc_sdram_bankmachine0_cmd_ready <= 1'd1;
	end
	if (((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & (soc_netsoc_sdram_choose_req_grant == 1'd0))) begin
		soc_netsoc_sdram_bankmachine0_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_51 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_52;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine1_cmd_ready <= 1'd0;
	if (((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & (soc_netsoc_sdram_choose_cmd_grant == 1'd1))) begin
		soc_netsoc_sdram_bankmachine1_cmd_ready <= 1'd1;
	end
	if (((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & (soc_netsoc_sdram_choose_req_grant == 1'd1))) begin
		soc_netsoc_sdram_bankmachine1_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_52 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_53;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine2_cmd_ready <= 1'd0;
	if (((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & (soc_netsoc_sdram_choose_cmd_grant == 2'd2))) begin
		soc_netsoc_sdram_bankmachine2_cmd_ready <= 1'd1;
	end
	if (((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & (soc_netsoc_sdram_choose_req_grant == 2'd2))) begin
		soc_netsoc_sdram_bankmachine2_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_53 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_54;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine3_cmd_ready <= 1'd0;
	if (((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & (soc_netsoc_sdram_choose_cmd_grant == 2'd3))) begin
		soc_netsoc_sdram_bankmachine3_cmd_ready <= 1'd1;
	end
	if (((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & (soc_netsoc_sdram_choose_req_grant == 2'd3))) begin
		soc_netsoc_sdram_bankmachine3_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_54 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_55;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine4_cmd_ready <= 1'd0;
	if (((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & (soc_netsoc_sdram_choose_cmd_grant == 3'd4))) begin
		soc_netsoc_sdram_bankmachine4_cmd_ready <= 1'd1;
	end
	if (((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & (soc_netsoc_sdram_choose_req_grant == 3'd4))) begin
		soc_netsoc_sdram_bankmachine4_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_55 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_56;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine5_cmd_ready <= 1'd0;
	if (((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & (soc_netsoc_sdram_choose_cmd_grant == 3'd5))) begin
		soc_netsoc_sdram_bankmachine5_cmd_ready <= 1'd1;
	end
	if (((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & (soc_netsoc_sdram_choose_req_grant == 3'd5))) begin
		soc_netsoc_sdram_bankmachine5_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_56 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_57;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine6_cmd_ready <= 1'd0;
	if (((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & (soc_netsoc_sdram_choose_cmd_grant == 3'd6))) begin
		soc_netsoc_sdram_bankmachine6_cmd_ready <= 1'd1;
	end
	if (((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & (soc_netsoc_sdram_choose_req_grant == 3'd6))) begin
		soc_netsoc_sdram_bankmachine6_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_57 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_58;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_bankmachine7_cmd_ready <= 1'd0;
	if (((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & (soc_netsoc_sdram_choose_cmd_grant == 3'd7))) begin
		soc_netsoc_sdram_bankmachine7_cmd_ready <= 1'd1;
	end
	if (((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & (soc_netsoc_sdram_choose_req_grant == 3'd7))) begin
		soc_netsoc_sdram_bankmachine7_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_58 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_sdram_choose_req_ce = soc_netsoc_sdram_choose_req_cmd_ready;
assign soc_netsoc_sdram_dfi_p0_cke = 1'd1;
assign soc_netsoc_sdram_dfi_p0_cs_n = 1'd0;
assign soc_netsoc_sdram_dfi_p0_odt = 1'd1;
assign soc_netsoc_sdram_dfi_p0_reset_n = 1'd1;
assign soc_netsoc_sdram_dfi_p1_cke = 1'd1;
assign soc_netsoc_sdram_dfi_p1_cs_n = 1'd0;
assign soc_netsoc_sdram_dfi_p1_odt = 1'd1;
assign soc_netsoc_sdram_dfi_p1_reset_n = 1'd1;
assign soc_netsoc_sdram_dfi_p2_cke = 1'd1;
assign soc_netsoc_sdram_dfi_p2_cs_n = 1'd0;
assign soc_netsoc_sdram_dfi_p2_odt = 1'd1;
assign soc_netsoc_sdram_dfi_p2_reset_n = 1'd1;
assign soc_netsoc_sdram_dfi_p3_cke = 1'd1;
assign soc_netsoc_sdram_dfi_p3_cs_n = 1'd0;
assign soc_netsoc_sdram_dfi_p3_odt = 1'd1;
assign soc_netsoc_sdram_dfi_p3_reset_n = 1'd1;

// synthesis translate_off
reg dummy_d_59;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_choose_req_cmd_ready <= 1'd0;
	soc_netsoc_sdram_cmd_ready <= 1'd0;
	soc_netsoc_sdram_sel0 <= 2'd0;
	soc_netsoc_sdram_en0 <= 1'd0;
	soc_netsoc_sdram_sel1 <= 2'd0;
	soc_netsoc_sdram_sel2 <= 2'd0;
	soc_netsoc_sdram_sel3 <= 2'd0;
	soc_netsoc_sdram_en1 <= 1'd0;
	soc_netsoc_sdram_choose_cmd_cmd_ready <= 1'd0;
	vns_multiplexer_next_state <= 4'd0;
	soc_netsoc_sdram_choose_req_want_reads <= 1'd0;
	soc_netsoc_sdram_choose_req_want_writes <= 1'd0;
	vns_multiplexer_next_state <= vns_multiplexer_state;
	case (vns_multiplexer_state)
		1'd1: begin
			soc_netsoc_sdram_en1 <= 1'd1;
			soc_netsoc_sdram_choose_req_want_writes <= 1'd1;
			soc_netsoc_sdram_choose_cmd_cmd_ready <= 1'd1;
			soc_netsoc_sdram_choose_req_cmd_ready <= 1'd1;
			soc_netsoc_sdram_sel0 <= 1'd1;
			soc_netsoc_sdram_sel1 <= 1'd0;
			soc_netsoc_sdram_sel2 <= 2'd2;
			soc_netsoc_sdram_sel3 <= 1'd0;
			if (soc_netsoc_sdram_read_available) begin
				if (((~soc_netsoc_sdram_write_available) | soc_netsoc_sdram_max_time1)) begin
					vns_multiplexer_next_state <= 4'd8;
				end
			end
			if (soc_netsoc_sdram_go_to_refresh) begin
				vns_multiplexer_next_state <= 2'd2;
			end
		end
		2'd2: begin
			soc_netsoc_sdram_sel0 <= 2'd3;
			soc_netsoc_sdram_cmd_ready <= 1'd1;
			if (soc_netsoc_sdram_cmd_last) begin
				vns_multiplexer_next_state <= 1'd0;
			end
		end
		2'd3: begin
			vns_multiplexer_next_state <= 3'd4;
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
			vns_multiplexer_next_state <= 1'd1;
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
			vns_multiplexer_next_state <= 4'd12;
		end
		4'd12: begin
			vns_multiplexer_next_state <= 4'd13;
		end
		4'd13: begin
			vns_multiplexer_next_state <= 4'd14;
		end
		4'd14: begin
			vns_multiplexer_next_state <= 1'd0;
		end
		default: begin
			soc_netsoc_sdram_en0 <= 1'd1;
			soc_netsoc_sdram_choose_req_want_reads <= 1'd1;
			soc_netsoc_sdram_choose_cmd_cmd_ready <= 1'd1;
			soc_netsoc_sdram_choose_req_cmd_ready <= 1'd1;
			soc_netsoc_sdram_sel0 <= 2'd2;
			soc_netsoc_sdram_sel1 <= 1'd1;
			soc_netsoc_sdram_sel2 <= 1'd0;
			soc_netsoc_sdram_sel3 <= 1'd0;
			if (soc_netsoc_sdram_write_available) begin
				if (((~soc_netsoc_sdram_read_available) | soc_netsoc_sdram_max_time0)) begin
					vns_multiplexer_next_state <= 2'd3;
				end
			end
			if (soc_netsoc_sdram_go_to_refresh) begin
				vns_multiplexer_next_state <= 2'd2;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_59 <= dummy_s;
// synthesis translate_on
end
assign vns_cba = soc_netsoc_port_cmd_payload_adr[9:7];
assign vns_rca = {soc_netsoc_port_cmd_payload_adr[24:10], soc_netsoc_port_cmd_payload_adr[6:0]};
assign vns_roundrobin0_request = {(((vns_cba == 1'd0) & (~(((((((1'd0 | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid)};
assign vns_roundrobin0_ce = ((~soc_netsoc_sdram_interface_bank0_valid) & (~soc_netsoc_sdram_interface_bank0_lock));
assign soc_netsoc_sdram_interface_bank0_adr = vns_rhs_array_muxed12;
assign soc_netsoc_sdram_interface_bank0_we = vns_rhs_array_muxed13;
assign soc_netsoc_sdram_interface_bank0_valid = vns_rhs_array_muxed14;
assign vns_roundrobin1_request = {(((vns_cba == 1'd1) & (~(((((((1'd0 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid)};
assign vns_roundrobin1_ce = ((~soc_netsoc_sdram_interface_bank1_valid) & (~soc_netsoc_sdram_interface_bank1_lock));
assign soc_netsoc_sdram_interface_bank1_adr = vns_rhs_array_muxed15;
assign soc_netsoc_sdram_interface_bank1_we = vns_rhs_array_muxed16;
assign soc_netsoc_sdram_interface_bank1_valid = vns_rhs_array_muxed17;
assign vns_roundrobin2_request = {(((vns_cba == 2'd2) & (~(((((((1'd0 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid)};
assign vns_roundrobin2_ce = ((~soc_netsoc_sdram_interface_bank2_valid) & (~soc_netsoc_sdram_interface_bank2_lock));
assign soc_netsoc_sdram_interface_bank2_adr = vns_rhs_array_muxed18;
assign soc_netsoc_sdram_interface_bank2_we = vns_rhs_array_muxed19;
assign soc_netsoc_sdram_interface_bank2_valid = vns_rhs_array_muxed20;
assign vns_roundrobin3_request = {(((vns_cba == 2'd3) & (~(((((((1'd0 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid)};
assign vns_roundrobin3_ce = ((~soc_netsoc_sdram_interface_bank3_valid) & (~soc_netsoc_sdram_interface_bank3_lock));
assign soc_netsoc_sdram_interface_bank3_adr = vns_rhs_array_muxed21;
assign soc_netsoc_sdram_interface_bank3_we = vns_rhs_array_muxed22;
assign soc_netsoc_sdram_interface_bank3_valid = vns_rhs_array_muxed23;
assign vns_roundrobin4_request = {(((vns_cba == 3'd4) & (~(((((((1'd0 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid)};
assign vns_roundrobin4_ce = ((~soc_netsoc_sdram_interface_bank4_valid) & (~soc_netsoc_sdram_interface_bank4_lock));
assign soc_netsoc_sdram_interface_bank4_adr = vns_rhs_array_muxed24;
assign soc_netsoc_sdram_interface_bank4_we = vns_rhs_array_muxed25;
assign soc_netsoc_sdram_interface_bank4_valid = vns_rhs_array_muxed26;
assign vns_roundrobin5_request = {(((vns_cba == 3'd5) & (~(((((((1'd0 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid)};
assign vns_roundrobin5_ce = ((~soc_netsoc_sdram_interface_bank5_valid) & (~soc_netsoc_sdram_interface_bank5_lock));
assign soc_netsoc_sdram_interface_bank5_adr = vns_rhs_array_muxed27;
assign soc_netsoc_sdram_interface_bank5_we = vns_rhs_array_muxed28;
assign soc_netsoc_sdram_interface_bank5_valid = vns_rhs_array_muxed29;
assign vns_roundrobin6_request = {(((vns_cba == 3'd6) & (~(((((((1'd0 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid)};
assign vns_roundrobin6_ce = ((~soc_netsoc_sdram_interface_bank6_valid) & (~soc_netsoc_sdram_interface_bank6_lock));
assign soc_netsoc_sdram_interface_bank6_adr = vns_rhs_array_muxed30;
assign soc_netsoc_sdram_interface_bank6_we = vns_rhs_array_muxed31;
assign soc_netsoc_sdram_interface_bank6_valid = vns_rhs_array_muxed32;
assign vns_roundrobin7_request = {(((vns_cba == 3'd7) & (~(((((((1'd0 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))))) & soc_netsoc_port_cmd_valid)};
assign vns_roundrobin7_ce = ((~soc_netsoc_sdram_interface_bank7_valid) & (~soc_netsoc_sdram_interface_bank7_lock));
assign soc_netsoc_sdram_interface_bank7_adr = vns_rhs_array_muxed33;
assign soc_netsoc_sdram_interface_bank7_we = vns_rhs_array_muxed34;
assign soc_netsoc_sdram_interface_bank7_valid = vns_rhs_array_muxed35;
assign soc_netsoc_port_cmd_ready = ((((((((1'd0 | (((vns_roundrobin0_grant == 1'd0) & ((vns_cba == 1'd0) & (~(((((((1'd0 | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0)))))) & soc_netsoc_sdram_interface_bank0_ready)) | (((vns_roundrobin1_grant == 1'd0) & ((vns_cba == 1'd1) & (~(((((((1'd0 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0)))))) & soc_netsoc_sdram_interface_bank1_ready)) | (((vns_roundrobin2_grant == 1'd0) & ((vns_cba == 2'd2) & (~(((((((1'd0 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0)))))) & soc_netsoc_sdram_interface_bank2_ready)) | (((vns_roundrobin3_grant == 1'd0) & ((vns_cba == 2'd3) & (~(((((((1'd0 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0)))))) & soc_netsoc_sdram_interface_bank3_ready)) | (((vns_roundrobin4_grant == 1'd0) & ((vns_cba == 3'd4) & (~(((((((1'd0 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0)))))) & soc_netsoc_sdram_interface_bank4_ready)) | (((vns_roundrobin5_grant == 1'd0) & ((vns_cba == 3'd5) & (~(((((((1'd0 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0)))))) & soc_netsoc_sdram_interface_bank5_ready)) | (((vns_roundrobin6_grant == 1'd0) & ((vns_cba == 3'd6) & (~(((((((1'd0 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0)))))) & soc_netsoc_sdram_interface_bank6_ready)) | (((vns_roundrobin7_grant == 1'd0) & ((vns_cba == 3'd7) & (~(((((((1'd0 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0)))))) & soc_netsoc_sdram_interface_bank7_ready));
assign soc_netsoc_port_wdata_ready = vns_new_master_wdata_ready2;
assign soc_netsoc_port_rdata_valid = vns_new_master_rdata_valid6;

// synthesis translate_off
reg dummy_d_60;
// synthesis translate_on
always @(*) begin
	soc_netsoc_sdram_interface_wdata <= 128'd0;
	soc_netsoc_sdram_interface_wdata_we <= 16'd0;
	case ({vns_new_master_wdata_ready2})
		1'd1: begin
			soc_netsoc_sdram_interface_wdata <= soc_netsoc_port_wdata_payload_data;
			soc_netsoc_sdram_interface_wdata_we <= soc_netsoc_port_wdata_payload_we;
		end
		default: begin
			soc_netsoc_sdram_interface_wdata <= 1'd0;
			soc_netsoc_sdram_interface_wdata_we <= 1'd0;
		end
	endcase
// synthesis translate_off
	dummy_d_60 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_port_rdata_payload_data = soc_netsoc_sdram_interface_rdata;
assign vns_roundrobin0_grant = 1'd0;
assign vns_roundrobin1_grant = 1'd0;
assign vns_roundrobin2_grant = 1'd0;
assign vns_roundrobin3_grant = 1'd0;
assign vns_roundrobin4_grant = 1'd0;
assign vns_roundrobin5_grant = 1'd0;
assign vns_roundrobin6_grant = 1'd0;
assign vns_roundrobin7_grant = 1'd0;
assign soc_netsoc_data_port_adr = soc_netsoc_interface0_wb_sdram_adr[10:2];

// synthesis translate_off
reg dummy_d_61;
// synthesis translate_on
always @(*) begin
	soc_netsoc_data_port_we <= 16'd0;
	soc_netsoc_data_port_dat_w <= 128'd0;
	if (soc_netsoc_write_from_slave) begin
		soc_netsoc_data_port_dat_w <= soc_netsoc_interface_dat_r;
		soc_netsoc_data_port_we <= {16{1'd1}};
	end else begin
		soc_netsoc_data_port_dat_w <= {4{soc_netsoc_interface0_wb_sdram_dat_w}};
		if ((((soc_netsoc_interface0_wb_sdram_cyc & soc_netsoc_interface0_wb_sdram_stb) & soc_netsoc_interface0_wb_sdram_we) & soc_netsoc_interface0_wb_sdram_ack)) begin
			soc_netsoc_data_port_we <= {({4{(soc_netsoc_interface0_wb_sdram_adr[1:0] == 1'd0)}} & soc_netsoc_interface0_wb_sdram_sel), ({4{(soc_netsoc_interface0_wb_sdram_adr[1:0] == 1'd1)}} & soc_netsoc_interface0_wb_sdram_sel), ({4{(soc_netsoc_interface0_wb_sdram_adr[1:0] == 2'd2)}} & soc_netsoc_interface0_wb_sdram_sel), ({4{(soc_netsoc_interface0_wb_sdram_adr[1:0] == 2'd3)}} & soc_netsoc_interface0_wb_sdram_sel)};
		end
	end
// synthesis translate_off
	dummy_d_61 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_interface_dat_w = soc_netsoc_data_port_dat_r;
assign soc_netsoc_interface_sel = 16'd65535;

// synthesis translate_off
reg dummy_d_62;
// synthesis translate_on
always @(*) begin
	soc_netsoc_interface0_wb_sdram_dat_r <= 32'd0;
	case (soc_netsoc_adr_offset_r)
		1'd0: begin
			soc_netsoc_interface0_wb_sdram_dat_r <= soc_netsoc_data_port_dat_r[127:96];
		end
		1'd1: begin
			soc_netsoc_interface0_wb_sdram_dat_r <= soc_netsoc_data_port_dat_r[95:64];
		end
		2'd2: begin
			soc_netsoc_interface0_wb_sdram_dat_r <= soc_netsoc_data_port_dat_r[63:32];
		end
		default: begin
			soc_netsoc_interface0_wb_sdram_dat_r <= soc_netsoc_data_port_dat_r[31:0];
		end
	endcase
// synthesis translate_off
	dummy_d_62 <= dummy_s;
// synthesis translate_on
end
assign {soc_netsoc_tag_do_dirty, soc_netsoc_tag_do_tag} = soc_netsoc_tag_port_dat_r;
assign soc_netsoc_tag_port_dat_w = {soc_netsoc_tag_di_dirty, soc_netsoc_tag_di_tag};
assign soc_netsoc_tag_port_adr = soc_netsoc_interface0_wb_sdram_adr[10:2];
assign soc_netsoc_tag_di_tag = soc_netsoc_interface0_wb_sdram_adr[29:11];
assign soc_netsoc_interface_adr = {soc_netsoc_tag_do_tag, soc_netsoc_interface0_wb_sdram_adr[10:2]};

// synthesis translate_off
reg dummy_d_63;
// synthesis translate_on
always @(*) begin
	vns_fullmemorywe_next_state <= 3'd0;
	soc_netsoc_interface_cyc <= 1'd0;
	soc_netsoc_interface_stb <= 1'd0;
	soc_netsoc_tag_port_we <= 1'd0;
	soc_netsoc_interface_we <= 1'd0;
	soc_netsoc_tag_di_dirty <= 1'd0;
	soc_netsoc_word_clr <= 1'd0;
	soc_netsoc_word_inc <= 1'd0;
	soc_netsoc_write_from_slave <= 1'd0;
	soc_netsoc_interface0_wb_sdram_ack <= 1'd0;
	vns_fullmemorywe_next_state <= vns_fullmemorywe_state;
	case (vns_fullmemorywe_state)
		1'd1: begin
			soc_netsoc_word_clr <= 1'd1;
			if ((soc_netsoc_tag_do_tag == soc_netsoc_interface0_wb_sdram_adr[29:11])) begin
				soc_netsoc_interface0_wb_sdram_ack <= 1'd1;
				if (soc_netsoc_interface0_wb_sdram_we) begin
					soc_netsoc_tag_di_dirty <= 1'd1;
					soc_netsoc_tag_port_we <= 1'd1;
				end
				vns_fullmemorywe_next_state <= 1'd0;
			end else begin
				if (soc_netsoc_tag_do_dirty) begin
					vns_fullmemorywe_next_state <= 2'd2;
				end else begin
					vns_fullmemorywe_next_state <= 2'd3;
				end
			end
		end
		2'd2: begin
			soc_netsoc_interface_stb <= 1'd1;
			soc_netsoc_interface_cyc <= 1'd1;
			soc_netsoc_interface_we <= 1'd1;
			if (soc_netsoc_interface_ack) begin
				soc_netsoc_word_inc <= 1'd1;
				if (1'd1) begin
					vns_fullmemorywe_next_state <= 2'd3;
				end
			end
		end
		2'd3: begin
			soc_netsoc_tag_port_we <= 1'd1;
			soc_netsoc_word_clr <= 1'd1;
			vns_fullmemorywe_next_state <= 3'd4;
		end
		3'd4: begin
			soc_netsoc_interface_stb <= 1'd1;
			soc_netsoc_interface_cyc <= 1'd1;
			soc_netsoc_interface_we <= 1'd0;
			if (soc_netsoc_interface_ack) begin
				soc_netsoc_write_from_slave <= 1'd1;
				soc_netsoc_word_inc <= 1'd1;
				if (1'd1) begin
					vns_fullmemorywe_next_state <= 1'd1;
				end else begin
					vns_fullmemorywe_next_state <= 3'd4;
				end
			end
		end
		default: begin
			if ((soc_netsoc_interface0_wb_sdram_cyc & soc_netsoc_interface0_wb_sdram_stb)) begin
				vns_fullmemorywe_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_63 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_port_cmd_payload_adr = soc_netsoc_interface_adr;
assign soc_netsoc_port_wdata_payload_we = soc_netsoc_interface_sel;
assign soc_netsoc_port_wdata_payload_data = soc_netsoc_interface_dat_w;
assign soc_netsoc_interface_dat_r = soc_netsoc_port_rdata_payload_data;

// synthesis translate_off
reg dummy_d_64;
// synthesis translate_on
always @(*) begin
	soc_netsoc_port_rdata_ready <= 1'd0;
	soc_netsoc_port_cmd_payload_we <= 1'd0;
	soc_netsoc_port_wdata_valid <= 1'd0;
	soc_netsoc_interface_ack <= 1'd0;
	vns_litedramwishbonebridge_next_state <= 2'd0;
	soc_netsoc_port_cmd_valid <= 1'd0;
	vns_litedramwishbonebridge_next_state <= vns_litedramwishbonebridge_state;
	case (vns_litedramwishbonebridge_state)
		1'd1: begin
			soc_netsoc_port_cmd_valid <= 1'd1;
			soc_netsoc_port_cmd_payload_we <= soc_netsoc_interface_we;
			if (soc_netsoc_port_cmd_ready) begin
				if (soc_netsoc_interface_we) begin
					vns_litedramwishbonebridge_next_state <= 2'd2;
				end else begin
					vns_litedramwishbonebridge_next_state <= 2'd3;
				end
			end
		end
		2'd2: begin
			soc_netsoc_port_wdata_valid <= 1'd1;
			if (soc_netsoc_port_wdata_ready) begin
				soc_netsoc_interface_ack <= 1'd1;
				vns_litedramwishbonebridge_next_state <= 1'd0;
			end
		end
		2'd3: begin
			soc_netsoc_port_rdata_ready <= 1'd1;
			if (soc_netsoc_port_rdata_valid) begin
				soc_netsoc_interface_ack <= 1'd1;
				vns_litedramwishbonebridge_next_state <= 1'd0;
			end
		end
		default: begin
			if ((soc_netsoc_interface_cyc & soc_netsoc_interface_stb)) begin
				vns_litedramwishbonebridge_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_64 <= dummy_s;
// synthesis translate_on
end
assign spiflash_1x_wp = 1'd1;
assign spiflash_1x_hold = 1'd1;
assign soc_netsoc_bus_dat_r = soc_netsoc_sr;

// synthesis translate_off
reg dummy_d_65;
// synthesis translate_on
always @(*) begin
	soc_netsoc_clk0 <= 1'd0;
	soc_netsoc_miso_status <= 1'd0;
	spiflash_1x_cs_n <= 1'd0;
	spiflash_1x_mosi <= 1'd0;
	if (soc_netsoc_bitbang_en_storage) begin
		soc_netsoc_clk0 <= soc_netsoc_bitbang_storage[1];
		spiflash_1x_cs_n <= soc_netsoc_bitbang_storage[2];
		if (soc_netsoc_bitbang_storage[1]) begin
			soc_netsoc_miso_status <= spiflash_1x_miso;
		end
		spiflash_1x_mosi <= soc_netsoc_bitbang_storage[0];
	end else begin
		soc_netsoc_clk0 <= soc_netsoc_clk1;
		spiflash_1x_cs_n <= soc_netsoc_cs_n;
		spiflash_1x_mosi <= soc_netsoc_sr[31];
	end
// synthesis translate_off
	dummy_d_65 <= dummy_s;
// synthesis translate_on
end
assign soc_ethphy_reset0 = (soc_ethphy_reset_storage | soc_ethphy_reset1);
assign eth_rst_n = (~soc_ethphy_reset0);
assign soc_ethphy_counter_done = (soc_ethphy_counter == 9'd256);
assign soc_ethphy_counter_ce = (~soc_ethphy_counter_done);
assign soc_ethphy_reset1 = (~soc_ethphy_counter_done);
assign soc_ethphy_sink_ready = 1'd1;
assign soc_ethphy_last = ((~soc_ethphy_rx_ctl) & soc_ethphy_rx_ctl_d);
assign soc_ethphy_source_last = soc_ethphy_last;
assign eth_mdc = soc_ethphy_storage[0];
assign soc_ethphy_data_oe = soc_ethphy_storage[1];
assign soc_ethphy_data_w = soc_ethphy_storage[2];
assign soc_ethmac_tx_cdc_sink_valid = soc_ethmac_source_valid;
assign soc_ethmac_source_ready = soc_ethmac_tx_cdc_sink_ready;
assign soc_ethmac_tx_cdc_sink_first = soc_ethmac_source_first;
assign soc_ethmac_tx_cdc_sink_last = soc_ethmac_source_last;
assign soc_ethmac_tx_cdc_sink_payload_data = soc_ethmac_source_payload_data;
assign soc_ethmac_tx_cdc_sink_payload_last_be = soc_ethmac_source_payload_last_be;
assign soc_ethmac_tx_cdc_sink_payload_error = soc_ethmac_source_payload_error;
assign soc_ethmac_sink_valid = soc_ethmac_rx_cdc_source_valid;
assign soc_ethmac_rx_cdc_source_ready = soc_ethmac_sink_ready;
assign soc_ethmac_sink_first = soc_ethmac_rx_cdc_source_first;
assign soc_ethmac_sink_last = soc_ethmac_rx_cdc_source_last;
assign soc_ethmac_sink_payload_data = soc_ethmac_rx_cdc_source_payload_data;
assign soc_ethmac_sink_payload_last_be = soc_ethmac_rx_cdc_source_payload_last_be;
assign soc_ethmac_sink_payload_error = soc_ethmac_rx_cdc_source_payload_error;
assign soc_ethmac_ps_preamble_error_i = soc_ethmac_preamble_checker_error;
assign soc_ethmac_ps_crc_error_i = soc_ethmac_crc32_checker_error;

// synthesis translate_off
reg dummy_d_66;
// synthesis translate_on
always @(*) begin
	soc_ethmac_tx_gap_inserter_source_payload_last_be <= 1'd0;
	soc_ethmac_tx_gap_inserter_source_payload_error <= 1'd0;
	soc_ethmac_tx_gap_inserter_counter_reset <= 1'd0;
	soc_ethmac_tx_gap_inserter_counter_ce <= 1'd0;
	vns_liteethmacgap_next_state <= 1'd0;
	soc_ethmac_tx_gap_inserter_sink_ready <= 1'd0;
	soc_ethmac_tx_gap_inserter_source_valid <= 1'd0;
	soc_ethmac_tx_gap_inserter_source_first <= 1'd0;
	soc_ethmac_tx_gap_inserter_source_last <= 1'd0;
	soc_ethmac_tx_gap_inserter_source_payload_data <= 8'd0;
	vns_liteethmacgap_next_state <= vns_liteethmacgap_state;
	case (vns_liteethmacgap_state)
		1'd1: begin
			soc_ethmac_tx_gap_inserter_counter_ce <= 1'd1;
			if ((soc_ethmac_tx_gap_inserter_counter == 4'd11)) begin
				vns_liteethmacgap_next_state <= 1'd0;
			end
		end
		default: begin
			soc_ethmac_tx_gap_inserter_counter_reset <= 1'd1;
			soc_ethmac_tx_gap_inserter_source_valid <= soc_ethmac_tx_gap_inserter_sink_valid;
			soc_ethmac_tx_gap_inserter_sink_ready <= soc_ethmac_tx_gap_inserter_source_ready;
			soc_ethmac_tx_gap_inserter_source_first <= soc_ethmac_tx_gap_inserter_sink_first;
			soc_ethmac_tx_gap_inserter_source_last <= soc_ethmac_tx_gap_inserter_sink_last;
			soc_ethmac_tx_gap_inserter_source_payload_data <= soc_ethmac_tx_gap_inserter_sink_payload_data;
			soc_ethmac_tx_gap_inserter_source_payload_last_be <= soc_ethmac_tx_gap_inserter_sink_payload_last_be;
			soc_ethmac_tx_gap_inserter_source_payload_error <= soc_ethmac_tx_gap_inserter_sink_payload_error;
			if (((soc_ethmac_tx_gap_inserter_sink_valid & soc_ethmac_tx_gap_inserter_sink_last) & soc_ethmac_tx_gap_inserter_sink_ready)) begin
				vns_liteethmacgap_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_66 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_preamble_inserter_source_payload_last_be = soc_ethmac_preamble_inserter_sink_payload_last_be;

// synthesis translate_off
reg dummy_d_67;
// synthesis translate_on
always @(*) begin
	vns_liteethmacpreambleinserter_next_state <= 2'd0;
	soc_ethmac_preamble_inserter_sink_ready <= 1'd0;
	soc_ethmac_preamble_inserter_source_valid <= 1'd0;
	soc_ethmac_preamble_inserter_source_first <= 1'd0;
	soc_ethmac_preamble_inserter_source_last <= 1'd0;
	soc_ethmac_preamble_inserter_source_payload_data <= 8'd0;
	soc_ethmac_preamble_inserter_source_payload_error <= 1'd0;
	soc_ethmac_preamble_inserter_clr_cnt <= 1'd0;
	soc_ethmac_preamble_inserter_inc_cnt <= 1'd0;
	soc_ethmac_preamble_inserter_source_payload_data <= soc_ethmac_preamble_inserter_sink_payload_data;
	vns_liteethmacpreambleinserter_next_state <= vns_liteethmacpreambleinserter_state;
	case (vns_liteethmacpreambleinserter_state)
		1'd1: begin
			soc_ethmac_preamble_inserter_source_valid <= 1'd1;
			case (soc_ethmac_preamble_inserter_cnt)
				1'd0: begin
					soc_ethmac_preamble_inserter_source_payload_data <= soc_ethmac_preamble_inserter_preamble[7:0];
				end
				1'd1: begin
					soc_ethmac_preamble_inserter_source_payload_data <= soc_ethmac_preamble_inserter_preamble[15:8];
				end
				2'd2: begin
					soc_ethmac_preamble_inserter_source_payload_data <= soc_ethmac_preamble_inserter_preamble[23:16];
				end
				2'd3: begin
					soc_ethmac_preamble_inserter_source_payload_data <= soc_ethmac_preamble_inserter_preamble[31:24];
				end
				3'd4: begin
					soc_ethmac_preamble_inserter_source_payload_data <= soc_ethmac_preamble_inserter_preamble[39:32];
				end
				3'd5: begin
					soc_ethmac_preamble_inserter_source_payload_data <= soc_ethmac_preamble_inserter_preamble[47:40];
				end
				3'd6: begin
					soc_ethmac_preamble_inserter_source_payload_data <= soc_ethmac_preamble_inserter_preamble[55:48];
				end
				default: begin
					soc_ethmac_preamble_inserter_source_payload_data <= soc_ethmac_preamble_inserter_preamble[63:56];
				end
			endcase
			if ((soc_ethmac_preamble_inserter_cnt == 3'd7)) begin
				if (soc_ethmac_preamble_inserter_source_ready) begin
					vns_liteethmacpreambleinserter_next_state <= 2'd2;
				end
			end else begin
				soc_ethmac_preamble_inserter_inc_cnt <= soc_ethmac_preamble_inserter_source_ready;
			end
		end
		2'd2: begin
			soc_ethmac_preamble_inserter_source_valid <= soc_ethmac_preamble_inserter_sink_valid;
			soc_ethmac_preamble_inserter_sink_ready <= soc_ethmac_preamble_inserter_source_ready;
			soc_ethmac_preamble_inserter_source_first <= soc_ethmac_preamble_inserter_sink_first;
			soc_ethmac_preamble_inserter_source_last <= soc_ethmac_preamble_inserter_sink_last;
			soc_ethmac_preamble_inserter_source_payload_error <= soc_ethmac_preamble_inserter_sink_payload_error;
			if (((soc_ethmac_preamble_inserter_sink_valid & soc_ethmac_preamble_inserter_sink_last) & soc_ethmac_preamble_inserter_source_ready)) begin
				vns_liteethmacpreambleinserter_next_state <= 1'd0;
			end
		end
		default: begin
			soc_ethmac_preamble_inserter_sink_ready <= 1'd1;
			soc_ethmac_preamble_inserter_clr_cnt <= 1'd1;
			if (soc_ethmac_preamble_inserter_sink_valid) begin
				soc_ethmac_preamble_inserter_sink_ready <= 1'd0;
				vns_liteethmacpreambleinserter_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_67 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_preamble_checker_source_payload_data = soc_ethmac_preamble_checker_sink_payload_data;
assign soc_ethmac_preamble_checker_source_payload_last_be = soc_ethmac_preamble_checker_sink_payload_last_be;

// synthesis translate_off
reg dummy_d_68;
// synthesis translate_on
always @(*) begin
	soc_ethmac_preamble_checker_source_valid <= 1'd0;
	soc_ethmac_preamble_checker_source_first <= 1'd0;
	soc_ethmac_preamble_checker_source_last <= 1'd0;
	vns_liteethmacpreamblechecker_next_state <= 1'd0;
	soc_ethmac_preamble_checker_source_payload_error <= 1'd0;
	soc_ethmac_preamble_checker_error <= 1'd0;
	soc_ethmac_preamble_checker_sink_ready <= 1'd0;
	vns_liteethmacpreamblechecker_next_state <= vns_liteethmacpreamblechecker_state;
	case (vns_liteethmacpreamblechecker_state)
		1'd1: begin
			soc_ethmac_preamble_checker_source_valid <= soc_ethmac_preamble_checker_sink_valid;
			soc_ethmac_preamble_checker_sink_ready <= soc_ethmac_preamble_checker_source_ready;
			soc_ethmac_preamble_checker_source_first <= soc_ethmac_preamble_checker_sink_first;
			soc_ethmac_preamble_checker_source_last <= soc_ethmac_preamble_checker_sink_last;
			soc_ethmac_preamble_checker_source_payload_error <= soc_ethmac_preamble_checker_sink_payload_error;
			if (((soc_ethmac_preamble_checker_source_valid & soc_ethmac_preamble_checker_source_last) & soc_ethmac_preamble_checker_source_ready)) begin
				vns_liteethmacpreamblechecker_next_state <= 1'd0;
			end
		end
		default: begin
			soc_ethmac_preamble_checker_sink_ready <= 1'd1;
			if (((soc_ethmac_preamble_checker_sink_valid & (~soc_ethmac_preamble_checker_sink_last)) & (soc_ethmac_preamble_checker_sink_payload_data == 8'd213))) begin
				vns_liteethmacpreamblechecker_next_state <= 1'd1;
			end
			if ((soc_ethmac_preamble_checker_sink_valid & soc_ethmac_preamble_checker_sink_last)) begin
				soc_ethmac_preamble_checker_error <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_68 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_crc32_inserter_cnt_done = (soc_ethmac_crc32_inserter_cnt == 1'd0);
assign soc_ethmac_crc32_inserter_data1 = soc_ethmac_crc32_inserter_data0;
assign soc_ethmac_crc32_inserter_last = soc_ethmac_crc32_inserter_reg;
assign soc_ethmac_crc32_inserter_value = (~{soc_ethmac_crc32_inserter_reg[0], soc_ethmac_crc32_inserter_reg[1], soc_ethmac_crc32_inserter_reg[2], soc_ethmac_crc32_inserter_reg[3], soc_ethmac_crc32_inserter_reg[4], soc_ethmac_crc32_inserter_reg[5], soc_ethmac_crc32_inserter_reg[6], soc_ethmac_crc32_inserter_reg[7], soc_ethmac_crc32_inserter_reg[8], soc_ethmac_crc32_inserter_reg[9], soc_ethmac_crc32_inserter_reg[10], soc_ethmac_crc32_inserter_reg[11], soc_ethmac_crc32_inserter_reg[12], soc_ethmac_crc32_inserter_reg[13], soc_ethmac_crc32_inserter_reg[14], soc_ethmac_crc32_inserter_reg[15], soc_ethmac_crc32_inserter_reg[16], soc_ethmac_crc32_inserter_reg[17], soc_ethmac_crc32_inserter_reg[18], soc_ethmac_crc32_inserter_reg[19], soc_ethmac_crc32_inserter_reg[20], soc_ethmac_crc32_inserter_reg[21], soc_ethmac_crc32_inserter_reg[22], soc_ethmac_crc32_inserter_reg[23], soc_ethmac_crc32_inserter_reg[24], soc_ethmac_crc32_inserter_reg[25], soc_ethmac_crc32_inserter_reg[26], soc_ethmac_crc32_inserter_reg[27], soc_ethmac_crc32_inserter_reg[28], soc_ethmac_crc32_inserter_reg[29], soc_ethmac_crc32_inserter_reg[30], soc_ethmac_crc32_inserter_reg[31]});
assign soc_ethmac_crc32_inserter_error = (soc_ethmac_crc32_inserter_next != 32'd3338984827);

// synthesis translate_off
reg dummy_d_69;
// synthesis translate_on
always @(*) begin
	soc_ethmac_crc32_inserter_next <= 32'd0;
	soc_ethmac_crc32_inserter_next[0] <= (((soc_ethmac_crc32_inserter_last[24] ^ soc_ethmac_crc32_inserter_last[30]) ^ soc_ethmac_crc32_inserter_data1[1]) ^ soc_ethmac_crc32_inserter_data1[7]);
	soc_ethmac_crc32_inserter_next[1] <= (((((((soc_ethmac_crc32_inserter_last[25] ^ soc_ethmac_crc32_inserter_last[31]) ^ soc_ethmac_crc32_inserter_data1[0]) ^ soc_ethmac_crc32_inserter_data1[6]) ^ soc_ethmac_crc32_inserter_last[24]) ^ soc_ethmac_crc32_inserter_last[30]) ^ soc_ethmac_crc32_inserter_data1[1]) ^ soc_ethmac_crc32_inserter_data1[7]);
	soc_ethmac_crc32_inserter_next[2] <= (((((((((soc_ethmac_crc32_inserter_last[26] ^ soc_ethmac_crc32_inserter_data1[5]) ^ soc_ethmac_crc32_inserter_last[25]) ^ soc_ethmac_crc32_inserter_last[31]) ^ soc_ethmac_crc32_inserter_data1[0]) ^ soc_ethmac_crc32_inserter_data1[6]) ^ soc_ethmac_crc32_inserter_last[24]) ^ soc_ethmac_crc32_inserter_last[30]) ^ soc_ethmac_crc32_inserter_data1[1]) ^ soc_ethmac_crc32_inserter_data1[7]);
	soc_ethmac_crc32_inserter_next[3] <= (((((((soc_ethmac_crc32_inserter_last[27] ^ soc_ethmac_crc32_inserter_data1[4]) ^ soc_ethmac_crc32_inserter_last[26]) ^ soc_ethmac_crc32_inserter_data1[5]) ^ soc_ethmac_crc32_inserter_last[25]) ^ soc_ethmac_crc32_inserter_last[31]) ^ soc_ethmac_crc32_inserter_data1[0]) ^ soc_ethmac_crc32_inserter_data1[6]);
	soc_ethmac_crc32_inserter_next[4] <= (((((((((soc_ethmac_crc32_inserter_last[28] ^ soc_ethmac_crc32_inserter_data1[3]) ^ soc_ethmac_crc32_inserter_last[27]) ^ soc_ethmac_crc32_inserter_data1[4]) ^ soc_ethmac_crc32_inserter_last[26]) ^ soc_ethmac_crc32_inserter_data1[5]) ^ soc_ethmac_crc32_inserter_last[24]) ^ soc_ethmac_crc32_inserter_last[30]) ^ soc_ethmac_crc32_inserter_data1[1]) ^ soc_ethmac_crc32_inserter_data1[7]);
	soc_ethmac_crc32_inserter_next[5] <= (((((((((((((soc_ethmac_crc32_inserter_last[29] ^ soc_ethmac_crc32_inserter_data1[2]) ^ soc_ethmac_crc32_inserter_last[28]) ^ soc_ethmac_crc32_inserter_data1[3]) ^ soc_ethmac_crc32_inserter_last[27]) ^ soc_ethmac_crc32_inserter_data1[4]) ^ soc_ethmac_crc32_inserter_last[25]) ^ soc_ethmac_crc32_inserter_last[31]) ^ soc_ethmac_crc32_inserter_data1[0]) ^ soc_ethmac_crc32_inserter_data1[6]) ^ soc_ethmac_crc32_inserter_last[24]) ^ soc_ethmac_crc32_inserter_last[30]) ^ soc_ethmac_crc32_inserter_data1[1]) ^ soc_ethmac_crc32_inserter_data1[7]);
	soc_ethmac_crc32_inserter_next[6] <= (((((((((((soc_ethmac_crc32_inserter_last[30] ^ soc_ethmac_crc32_inserter_data1[1]) ^ soc_ethmac_crc32_inserter_last[29]) ^ soc_ethmac_crc32_inserter_data1[2]) ^ soc_ethmac_crc32_inserter_last[28]) ^ soc_ethmac_crc32_inserter_data1[3]) ^ soc_ethmac_crc32_inserter_last[26]) ^ soc_ethmac_crc32_inserter_data1[5]) ^ soc_ethmac_crc32_inserter_last[25]) ^ soc_ethmac_crc32_inserter_last[31]) ^ soc_ethmac_crc32_inserter_data1[0]) ^ soc_ethmac_crc32_inserter_data1[6]);
	soc_ethmac_crc32_inserter_next[7] <= (((((((((soc_ethmac_crc32_inserter_last[31] ^ soc_ethmac_crc32_inserter_data1[0]) ^ soc_ethmac_crc32_inserter_last[29]) ^ soc_ethmac_crc32_inserter_data1[2]) ^ soc_ethmac_crc32_inserter_last[27]) ^ soc_ethmac_crc32_inserter_data1[4]) ^ soc_ethmac_crc32_inserter_last[26]) ^ soc_ethmac_crc32_inserter_data1[5]) ^ soc_ethmac_crc32_inserter_last[24]) ^ soc_ethmac_crc32_inserter_data1[7]);
	soc_ethmac_crc32_inserter_next[8] <= ((((((((soc_ethmac_crc32_inserter_last[0] ^ soc_ethmac_crc32_inserter_last[28]) ^ soc_ethmac_crc32_inserter_data1[3]) ^ soc_ethmac_crc32_inserter_last[27]) ^ soc_ethmac_crc32_inserter_data1[4]) ^ soc_ethmac_crc32_inserter_last[25]) ^ soc_ethmac_crc32_inserter_data1[6]) ^ soc_ethmac_crc32_inserter_last[24]) ^ soc_ethmac_crc32_inserter_data1[7]);
	soc_ethmac_crc32_inserter_next[9] <= ((((((((soc_ethmac_crc32_inserter_last[1] ^ soc_ethmac_crc32_inserter_last[29]) ^ soc_ethmac_crc32_inserter_data1[2]) ^ soc_ethmac_crc32_inserter_last[28]) ^ soc_ethmac_crc32_inserter_data1[3]) ^ soc_ethmac_crc32_inserter_last[26]) ^ soc_ethmac_crc32_inserter_data1[5]) ^ soc_ethmac_crc32_inserter_last[25]) ^ soc_ethmac_crc32_inserter_data1[6]);
	soc_ethmac_crc32_inserter_next[10] <= ((((((((soc_ethmac_crc32_inserter_last[2] ^ soc_ethmac_crc32_inserter_last[29]) ^ soc_ethmac_crc32_inserter_data1[2]) ^ soc_ethmac_crc32_inserter_last[27]) ^ soc_ethmac_crc32_inserter_data1[4]) ^ soc_ethmac_crc32_inserter_last[26]) ^ soc_ethmac_crc32_inserter_data1[5]) ^ soc_ethmac_crc32_inserter_last[24]) ^ soc_ethmac_crc32_inserter_data1[7]);
	soc_ethmac_crc32_inserter_next[11] <= ((((((((soc_ethmac_crc32_inserter_last[3] ^ soc_ethmac_crc32_inserter_last[28]) ^ soc_ethmac_crc32_inserter_data1[3]) ^ soc_ethmac_crc32_inserter_last[27]) ^ soc_ethmac_crc32_inserter_data1[4]) ^ soc_ethmac_crc32_inserter_last[25]) ^ soc_ethmac_crc32_inserter_data1[6]) ^ soc_ethmac_crc32_inserter_last[24]) ^ soc_ethmac_crc32_inserter_data1[7]);
	soc_ethmac_crc32_inserter_next[12] <= ((((((((((((soc_ethmac_crc32_inserter_last[4] ^ soc_ethmac_crc32_inserter_last[29]) ^ soc_ethmac_crc32_inserter_data1[2]) ^ soc_ethmac_crc32_inserter_last[28]) ^ soc_ethmac_crc32_inserter_data1[3]) ^ soc_ethmac_crc32_inserter_last[26]) ^ soc_ethmac_crc32_inserter_data1[5]) ^ soc_ethmac_crc32_inserter_last[25]) ^ soc_ethmac_crc32_inserter_data1[6]) ^ soc_ethmac_crc32_inserter_last[24]) ^ soc_ethmac_crc32_inserter_last[30]) ^ soc_ethmac_crc32_inserter_data1[1]) ^ soc_ethmac_crc32_inserter_data1[7]);
	soc_ethmac_crc32_inserter_next[13] <= ((((((((((((soc_ethmac_crc32_inserter_last[5] ^ soc_ethmac_crc32_inserter_last[30]) ^ soc_ethmac_crc32_inserter_data1[1]) ^ soc_ethmac_crc32_inserter_last[29]) ^ soc_ethmac_crc32_inserter_data1[2]) ^ soc_ethmac_crc32_inserter_last[27]) ^ soc_ethmac_crc32_inserter_data1[4]) ^ soc_ethmac_crc32_inserter_last[26]) ^ soc_ethmac_crc32_inserter_data1[5]) ^ soc_ethmac_crc32_inserter_last[25]) ^ soc_ethmac_crc32_inserter_last[31]) ^ soc_ethmac_crc32_inserter_data1[0]) ^ soc_ethmac_crc32_inserter_data1[6]);
	soc_ethmac_crc32_inserter_next[14] <= ((((((((((soc_ethmac_crc32_inserter_last[6] ^ soc_ethmac_crc32_inserter_last[31]) ^ soc_ethmac_crc32_inserter_data1[0]) ^ soc_ethmac_crc32_inserter_last[30]) ^ soc_ethmac_crc32_inserter_data1[1]) ^ soc_ethmac_crc32_inserter_last[28]) ^ soc_ethmac_crc32_inserter_data1[3]) ^ soc_ethmac_crc32_inserter_last[27]) ^ soc_ethmac_crc32_inserter_data1[4]) ^ soc_ethmac_crc32_inserter_last[26]) ^ soc_ethmac_crc32_inserter_data1[5]);
	soc_ethmac_crc32_inserter_next[15] <= ((((((((soc_ethmac_crc32_inserter_last[7] ^ soc_ethmac_crc32_inserter_last[31]) ^ soc_ethmac_crc32_inserter_data1[0]) ^ soc_ethmac_crc32_inserter_last[29]) ^ soc_ethmac_crc32_inserter_data1[2]) ^ soc_ethmac_crc32_inserter_last[28]) ^ soc_ethmac_crc32_inserter_data1[3]) ^ soc_ethmac_crc32_inserter_last[27]) ^ soc_ethmac_crc32_inserter_data1[4]);
	soc_ethmac_crc32_inserter_next[16] <= ((((((soc_ethmac_crc32_inserter_last[8] ^ soc_ethmac_crc32_inserter_last[29]) ^ soc_ethmac_crc32_inserter_data1[2]) ^ soc_ethmac_crc32_inserter_last[28]) ^ soc_ethmac_crc32_inserter_data1[3]) ^ soc_ethmac_crc32_inserter_last[24]) ^ soc_ethmac_crc32_inserter_data1[7]);
	soc_ethmac_crc32_inserter_next[17] <= ((((((soc_ethmac_crc32_inserter_last[9] ^ soc_ethmac_crc32_inserter_last[30]) ^ soc_ethmac_crc32_inserter_data1[1]) ^ soc_ethmac_crc32_inserter_last[29]) ^ soc_ethmac_crc32_inserter_data1[2]) ^ soc_ethmac_crc32_inserter_last[25]) ^ soc_ethmac_crc32_inserter_data1[6]);
	soc_ethmac_crc32_inserter_next[18] <= ((((((soc_ethmac_crc32_inserter_last[10] ^ soc_ethmac_crc32_inserter_last[31]) ^ soc_ethmac_crc32_inserter_data1[0]) ^ soc_ethmac_crc32_inserter_last[30]) ^ soc_ethmac_crc32_inserter_data1[1]) ^ soc_ethmac_crc32_inserter_last[26]) ^ soc_ethmac_crc32_inserter_data1[5]);
	soc_ethmac_crc32_inserter_next[19] <= ((((soc_ethmac_crc32_inserter_last[11] ^ soc_ethmac_crc32_inserter_last[31]) ^ soc_ethmac_crc32_inserter_data1[0]) ^ soc_ethmac_crc32_inserter_last[27]) ^ soc_ethmac_crc32_inserter_data1[4]);
	soc_ethmac_crc32_inserter_next[20] <= ((soc_ethmac_crc32_inserter_last[12] ^ soc_ethmac_crc32_inserter_last[28]) ^ soc_ethmac_crc32_inserter_data1[3]);
	soc_ethmac_crc32_inserter_next[21] <= ((soc_ethmac_crc32_inserter_last[13] ^ soc_ethmac_crc32_inserter_last[29]) ^ soc_ethmac_crc32_inserter_data1[2]);
	soc_ethmac_crc32_inserter_next[22] <= ((soc_ethmac_crc32_inserter_last[14] ^ soc_ethmac_crc32_inserter_last[24]) ^ soc_ethmac_crc32_inserter_data1[7]);
	soc_ethmac_crc32_inserter_next[23] <= ((((((soc_ethmac_crc32_inserter_last[15] ^ soc_ethmac_crc32_inserter_last[25]) ^ soc_ethmac_crc32_inserter_data1[6]) ^ soc_ethmac_crc32_inserter_last[24]) ^ soc_ethmac_crc32_inserter_last[30]) ^ soc_ethmac_crc32_inserter_data1[1]) ^ soc_ethmac_crc32_inserter_data1[7]);
	soc_ethmac_crc32_inserter_next[24] <= ((((((soc_ethmac_crc32_inserter_last[16] ^ soc_ethmac_crc32_inserter_last[26]) ^ soc_ethmac_crc32_inserter_data1[5]) ^ soc_ethmac_crc32_inserter_last[25]) ^ soc_ethmac_crc32_inserter_last[31]) ^ soc_ethmac_crc32_inserter_data1[0]) ^ soc_ethmac_crc32_inserter_data1[6]);
	soc_ethmac_crc32_inserter_next[25] <= ((((soc_ethmac_crc32_inserter_last[17] ^ soc_ethmac_crc32_inserter_last[27]) ^ soc_ethmac_crc32_inserter_data1[4]) ^ soc_ethmac_crc32_inserter_last[26]) ^ soc_ethmac_crc32_inserter_data1[5]);
	soc_ethmac_crc32_inserter_next[26] <= ((((((((soc_ethmac_crc32_inserter_last[18] ^ soc_ethmac_crc32_inserter_last[28]) ^ soc_ethmac_crc32_inserter_data1[3]) ^ soc_ethmac_crc32_inserter_last[27]) ^ soc_ethmac_crc32_inserter_data1[4]) ^ soc_ethmac_crc32_inserter_last[24]) ^ soc_ethmac_crc32_inserter_last[30]) ^ soc_ethmac_crc32_inserter_data1[1]) ^ soc_ethmac_crc32_inserter_data1[7]);
	soc_ethmac_crc32_inserter_next[27] <= ((((((((soc_ethmac_crc32_inserter_last[19] ^ soc_ethmac_crc32_inserter_last[29]) ^ soc_ethmac_crc32_inserter_data1[2]) ^ soc_ethmac_crc32_inserter_last[28]) ^ soc_ethmac_crc32_inserter_data1[3]) ^ soc_ethmac_crc32_inserter_last[25]) ^ soc_ethmac_crc32_inserter_last[31]) ^ soc_ethmac_crc32_inserter_data1[0]) ^ soc_ethmac_crc32_inserter_data1[6]);
	soc_ethmac_crc32_inserter_next[28] <= ((((((soc_ethmac_crc32_inserter_last[20] ^ soc_ethmac_crc32_inserter_last[30]) ^ soc_ethmac_crc32_inserter_data1[1]) ^ soc_ethmac_crc32_inserter_last[29]) ^ soc_ethmac_crc32_inserter_data1[2]) ^ soc_ethmac_crc32_inserter_last[26]) ^ soc_ethmac_crc32_inserter_data1[5]);
	soc_ethmac_crc32_inserter_next[29] <= ((((((soc_ethmac_crc32_inserter_last[21] ^ soc_ethmac_crc32_inserter_last[31]) ^ soc_ethmac_crc32_inserter_data1[0]) ^ soc_ethmac_crc32_inserter_last[30]) ^ soc_ethmac_crc32_inserter_data1[1]) ^ soc_ethmac_crc32_inserter_last[27]) ^ soc_ethmac_crc32_inserter_data1[4]);
	soc_ethmac_crc32_inserter_next[30] <= ((((soc_ethmac_crc32_inserter_last[22] ^ soc_ethmac_crc32_inserter_last[31]) ^ soc_ethmac_crc32_inserter_data1[0]) ^ soc_ethmac_crc32_inserter_last[28]) ^ soc_ethmac_crc32_inserter_data1[3]);
	soc_ethmac_crc32_inserter_next[31] <= ((soc_ethmac_crc32_inserter_last[23] ^ soc_ethmac_crc32_inserter_last[29]) ^ soc_ethmac_crc32_inserter_data1[2]);
// synthesis translate_off
	dummy_d_69 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_70;
// synthesis translate_on
always @(*) begin
	vns_liteethmaccrc32inserter_next_state <= 2'd0;
	soc_ethmac_crc32_inserter_sink_ready <= 1'd0;
	soc_ethmac_crc32_inserter_ce <= 1'd0;
	soc_ethmac_crc32_inserter_reset <= 1'd0;
	soc_ethmac_crc32_inserter_source_valid <= 1'd0;
	soc_ethmac_crc32_inserter_source_first <= 1'd0;
	soc_ethmac_crc32_inserter_source_last <= 1'd0;
	soc_ethmac_crc32_inserter_source_payload_data <= 8'd0;
	soc_ethmac_crc32_inserter_source_payload_last_be <= 1'd0;
	soc_ethmac_crc32_inserter_source_payload_error <= 1'd0;
	soc_ethmac_crc32_inserter_data0 <= 8'd0;
	soc_ethmac_crc32_inserter_is_ongoing0 <= 1'd0;
	soc_ethmac_crc32_inserter_is_ongoing1 <= 1'd0;
	vns_liteethmaccrc32inserter_next_state <= vns_liteethmaccrc32inserter_state;
	case (vns_liteethmaccrc32inserter_state)
		1'd1: begin
			soc_ethmac_crc32_inserter_ce <= (soc_ethmac_crc32_inserter_sink_valid & soc_ethmac_crc32_inserter_source_ready);
			soc_ethmac_crc32_inserter_data0 <= soc_ethmac_crc32_inserter_sink_payload_data;
			soc_ethmac_crc32_inserter_source_valid <= soc_ethmac_crc32_inserter_sink_valid;
			soc_ethmac_crc32_inserter_sink_ready <= soc_ethmac_crc32_inserter_source_ready;
			soc_ethmac_crc32_inserter_source_first <= soc_ethmac_crc32_inserter_sink_first;
			soc_ethmac_crc32_inserter_source_last <= soc_ethmac_crc32_inserter_sink_last;
			soc_ethmac_crc32_inserter_source_payload_data <= soc_ethmac_crc32_inserter_sink_payload_data;
			soc_ethmac_crc32_inserter_source_payload_last_be <= soc_ethmac_crc32_inserter_sink_payload_last_be;
			soc_ethmac_crc32_inserter_source_payload_error <= soc_ethmac_crc32_inserter_sink_payload_error;
			soc_ethmac_crc32_inserter_source_last <= 1'd0;
			if (((soc_ethmac_crc32_inserter_sink_valid & soc_ethmac_crc32_inserter_sink_last) & soc_ethmac_crc32_inserter_source_ready)) begin
				vns_liteethmaccrc32inserter_next_state <= 2'd2;
			end
		end
		2'd2: begin
			soc_ethmac_crc32_inserter_source_valid <= 1'd1;
			case (soc_ethmac_crc32_inserter_cnt)
				1'd0: begin
					soc_ethmac_crc32_inserter_source_payload_data <= soc_ethmac_crc32_inserter_value[31:24];
				end
				1'd1: begin
					soc_ethmac_crc32_inserter_source_payload_data <= soc_ethmac_crc32_inserter_value[23:16];
				end
				2'd2: begin
					soc_ethmac_crc32_inserter_source_payload_data <= soc_ethmac_crc32_inserter_value[15:8];
				end
				default: begin
					soc_ethmac_crc32_inserter_source_payload_data <= soc_ethmac_crc32_inserter_value[7:0];
				end
			endcase
			if (soc_ethmac_crc32_inserter_cnt_done) begin
				soc_ethmac_crc32_inserter_source_last <= 1'd1;
				if (soc_ethmac_crc32_inserter_source_ready) begin
					vns_liteethmaccrc32inserter_next_state <= 1'd0;
				end
			end
			soc_ethmac_crc32_inserter_is_ongoing1 <= 1'd1;
		end
		default: begin
			soc_ethmac_crc32_inserter_reset <= 1'd1;
			soc_ethmac_crc32_inserter_sink_ready <= 1'd1;
			if (soc_ethmac_crc32_inserter_sink_valid) begin
				soc_ethmac_crc32_inserter_sink_ready <= 1'd0;
				vns_liteethmaccrc32inserter_next_state <= 1'd1;
			end
			soc_ethmac_crc32_inserter_is_ongoing0 <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_70 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_crc32_checker_fifo_full = (soc_ethmac_crc32_checker_syncfifo_level == 3'd4);
assign soc_ethmac_crc32_checker_fifo_in = (soc_ethmac_crc32_checker_sink_sink_valid & ((~soc_ethmac_crc32_checker_fifo_full) | soc_ethmac_crc32_checker_fifo_out));
assign soc_ethmac_crc32_checker_fifo_out = (soc_ethmac_crc32_checker_source_source_valid & soc_ethmac_crc32_checker_source_source_ready);
assign soc_ethmac_crc32_checker_syncfifo_sink_first = soc_ethmac_crc32_checker_sink_sink_first;
assign soc_ethmac_crc32_checker_syncfifo_sink_last = soc_ethmac_crc32_checker_sink_sink_last;
assign soc_ethmac_crc32_checker_syncfifo_sink_payload_data = soc_ethmac_crc32_checker_sink_sink_payload_data;
assign soc_ethmac_crc32_checker_syncfifo_sink_payload_last_be = soc_ethmac_crc32_checker_sink_sink_payload_last_be;
assign soc_ethmac_crc32_checker_syncfifo_sink_payload_error = soc_ethmac_crc32_checker_sink_sink_payload_error;

// synthesis translate_off
reg dummy_d_71;
// synthesis translate_on
always @(*) begin
	soc_ethmac_crc32_checker_syncfifo_sink_valid <= 1'd0;
	soc_ethmac_crc32_checker_syncfifo_sink_valid <= soc_ethmac_crc32_checker_sink_sink_valid;
	soc_ethmac_crc32_checker_syncfifo_sink_valid <= soc_ethmac_crc32_checker_fifo_in;
// synthesis translate_off
	dummy_d_71 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_72;
// synthesis translate_on
always @(*) begin
	soc_ethmac_crc32_checker_sink_sink_ready <= 1'd0;
	soc_ethmac_crc32_checker_sink_sink_ready <= soc_ethmac_crc32_checker_syncfifo_sink_ready;
	soc_ethmac_crc32_checker_sink_sink_ready <= soc_ethmac_crc32_checker_fifo_in;
// synthesis translate_off
	dummy_d_72 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_crc32_checker_source_source_valid = (soc_ethmac_crc32_checker_sink_sink_valid & soc_ethmac_crc32_checker_fifo_full);
assign soc_ethmac_crc32_checker_source_source_last = soc_ethmac_crc32_checker_sink_sink_last;
assign soc_ethmac_crc32_checker_syncfifo_source_ready = soc_ethmac_crc32_checker_fifo_out;
assign soc_ethmac_crc32_checker_source_source_payload_data = soc_ethmac_crc32_checker_syncfifo_source_payload_data;
assign soc_ethmac_crc32_checker_source_source_payload_last_be = soc_ethmac_crc32_checker_syncfifo_source_payload_last_be;

// synthesis translate_off
reg dummy_d_73;
// synthesis translate_on
always @(*) begin
	soc_ethmac_crc32_checker_source_source_payload_error <= 1'd0;
	soc_ethmac_crc32_checker_source_source_payload_error <= soc_ethmac_crc32_checker_syncfifo_source_payload_error;
	soc_ethmac_crc32_checker_source_source_payload_error <= (soc_ethmac_crc32_checker_sink_sink_payload_error | soc_ethmac_crc32_checker_crc_error);
// synthesis translate_off
	dummy_d_73 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_crc32_checker_error = ((soc_ethmac_crc32_checker_source_source_valid & soc_ethmac_crc32_checker_source_source_last) & soc_ethmac_crc32_checker_crc_error);
assign soc_ethmac_crc32_checker_crc_data0 = soc_ethmac_crc32_checker_sink_sink_payload_data;
assign soc_ethmac_crc32_checker_crc_data1 = soc_ethmac_crc32_checker_crc_data0;
assign soc_ethmac_crc32_checker_crc_last = soc_ethmac_crc32_checker_crc_reg;
assign soc_ethmac_crc32_checker_crc_value = (~{soc_ethmac_crc32_checker_crc_reg[0], soc_ethmac_crc32_checker_crc_reg[1], soc_ethmac_crc32_checker_crc_reg[2], soc_ethmac_crc32_checker_crc_reg[3], soc_ethmac_crc32_checker_crc_reg[4], soc_ethmac_crc32_checker_crc_reg[5], soc_ethmac_crc32_checker_crc_reg[6], soc_ethmac_crc32_checker_crc_reg[7], soc_ethmac_crc32_checker_crc_reg[8], soc_ethmac_crc32_checker_crc_reg[9], soc_ethmac_crc32_checker_crc_reg[10], soc_ethmac_crc32_checker_crc_reg[11], soc_ethmac_crc32_checker_crc_reg[12], soc_ethmac_crc32_checker_crc_reg[13], soc_ethmac_crc32_checker_crc_reg[14], soc_ethmac_crc32_checker_crc_reg[15], soc_ethmac_crc32_checker_crc_reg[16], soc_ethmac_crc32_checker_crc_reg[17], soc_ethmac_crc32_checker_crc_reg[18], soc_ethmac_crc32_checker_crc_reg[19], soc_ethmac_crc32_checker_crc_reg[20], soc_ethmac_crc32_checker_crc_reg[21], soc_ethmac_crc32_checker_crc_reg[22], soc_ethmac_crc32_checker_crc_reg[23], soc_ethmac_crc32_checker_crc_reg[24], soc_ethmac_crc32_checker_crc_reg[25], soc_ethmac_crc32_checker_crc_reg[26], soc_ethmac_crc32_checker_crc_reg[27], soc_ethmac_crc32_checker_crc_reg[28], soc_ethmac_crc32_checker_crc_reg[29], soc_ethmac_crc32_checker_crc_reg[30], soc_ethmac_crc32_checker_crc_reg[31]});
assign soc_ethmac_crc32_checker_crc_error = (soc_ethmac_crc32_checker_crc_next != 32'd3338984827);

// synthesis translate_off
reg dummy_d_74;
// synthesis translate_on
always @(*) begin
	soc_ethmac_crc32_checker_crc_next <= 32'd0;
	soc_ethmac_crc32_checker_crc_next[0] <= (((soc_ethmac_crc32_checker_crc_last[24] ^ soc_ethmac_crc32_checker_crc_last[30]) ^ soc_ethmac_crc32_checker_crc_data1[1]) ^ soc_ethmac_crc32_checker_crc_data1[7]);
	soc_ethmac_crc32_checker_crc_next[1] <= (((((((soc_ethmac_crc32_checker_crc_last[25] ^ soc_ethmac_crc32_checker_crc_last[31]) ^ soc_ethmac_crc32_checker_crc_data1[0]) ^ soc_ethmac_crc32_checker_crc_data1[6]) ^ soc_ethmac_crc32_checker_crc_last[24]) ^ soc_ethmac_crc32_checker_crc_last[30]) ^ soc_ethmac_crc32_checker_crc_data1[1]) ^ soc_ethmac_crc32_checker_crc_data1[7]);
	soc_ethmac_crc32_checker_crc_next[2] <= (((((((((soc_ethmac_crc32_checker_crc_last[26] ^ soc_ethmac_crc32_checker_crc_data1[5]) ^ soc_ethmac_crc32_checker_crc_last[25]) ^ soc_ethmac_crc32_checker_crc_last[31]) ^ soc_ethmac_crc32_checker_crc_data1[0]) ^ soc_ethmac_crc32_checker_crc_data1[6]) ^ soc_ethmac_crc32_checker_crc_last[24]) ^ soc_ethmac_crc32_checker_crc_last[30]) ^ soc_ethmac_crc32_checker_crc_data1[1]) ^ soc_ethmac_crc32_checker_crc_data1[7]);
	soc_ethmac_crc32_checker_crc_next[3] <= (((((((soc_ethmac_crc32_checker_crc_last[27] ^ soc_ethmac_crc32_checker_crc_data1[4]) ^ soc_ethmac_crc32_checker_crc_last[26]) ^ soc_ethmac_crc32_checker_crc_data1[5]) ^ soc_ethmac_crc32_checker_crc_last[25]) ^ soc_ethmac_crc32_checker_crc_last[31]) ^ soc_ethmac_crc32_checker_crc_data1[0]) ^ soc_ethmac_crc32_checker_crc_data1[6]);
	soc_ethmac_crc32_checker_crc_next[4] <= (((((((((soc_ethmac_crc32_checker_crc_last[28] ^ soc_ethmac_crc32_checker_crc_data1[3]) ^ soc_ethmac_crc32_checker_crc_last[27]) ^ soc_ethmac_crc32_checker_crc_data1[4]) ^ soc_ethmac_crc32_checker_crc_last[26]) ^ soc_ethmac_crc32_checker_crc_data1[5]) ^ soc_ethmac_crc32_checker_crc_last[24]) ^ soc_ethmac_crc32_checker_crc_last[30]) ^ soc_ethmac_crc32_checker_crc_data1[1]) ^ soc_ethmac_crc32_checker_crc_data1[7]);
	soc_ethmac_crc32_checker_crc_next[5] <= (((((((((((((soc_ethmac_crc32_checker_crc_last[29] ^ soc_ethmac_crc32_checker_crc_data1[2]) ^ soc_ethmac_crc32_checker_crc_last[28]) ^ soc_ethmac_crc32_checker_crc_data1[3]) ^ soc_ethmac_crc32_checker_crc_last[27]) ^ soc_ethmac_crc32_checker_crc_data1[4]) ^ soc_ethmac_crc32_checker_crc_last[25]) ^ soc_ethmac_crc32_checker_crc_last[31]) ^ soc_ethmac_crc32_checker_crc_data1[0]) ^ soc_ethmac_crc32_checker_crc_data1[6]) ^ soc_ethmac_crc32_checker_crc_last[24]) ^ soc_ethmac_crc32_checker_crc_last[30]) ^ soc_ethmac_crc32_checker_crc_data1[1]) ^ soc_ethmac_crc32_checker_crc_data1[7]);
	soc_ethmac_crc32_checker_crc_next[6] <= (((((((((((soc_ethmac_crc32_checker_crc_last[30] ^ soc_ethmac_crc32_checker_crc_data1[1]) ^ soc_ethmac_crc32_checker_crc_last[29]) ^ soc_ethmac_crc32_checker_crc_data1[2]) ^ soc_ethmac_crc32_checker_crc_last[28]) ^ soc_ethmac_crc32_checker_crc_data1[3]) ^ soc_ethmac_crc32_checker_crc_last[26]) ^ soc_ethmac_crc32_checker_crc_data1[5]) ^ soc_ethmac_crc32_checker_crc_last[25]) ^ soc_ethmac_crc32_checker_crc_last[31]) ^ soc_ethmac_crc32_checker_crc_data1[0]) ^ soc_ethmac_crc32_checker_crc_data1[6]);
	soc_ethmac_crc32_checker_crc_next[7] <= (((((((((soc_ethmac_crc32_checker_crc_last[31] ^ soc_ethmac_crc32_checker_crc_data1[0]) ^ soc_ethmac_crc32_checker_crc_last[29]) ^ soc_ethmac_crc32_checker_crc_data1[2]) ^ soc_ethmac_crc32_checker_crc_last[27]) ^ soc_ethmac_crc32_checker_crc_data1[4]) ^ soc_ethmac_crc32_checker_crc_last[26]) ^ soc_ethmac_crc32_checker_crc_data1[5]) ^ soc_ethmac_crc32_checker_crc_last[24]) ^ soc_ethmac_crc32_checker_crc_data1[7]);
	soc_ethmac_crc32_checker_crc_next[8] <= ((((((((soc_ethmac_crc32_checker_crc_last[0] ^ soc_ethmac_crc32_checker_crc_last[28]) ^ soc_ethmac_crc32_checker_crc_data1[3]) ^ soc_ethmac_crc32_checker_crc_last[27]) ^ soc_ethmac_crc32_checker_crc_data1[4]) ^ soc_ethmac_crc32_checker_crc_last[25]) ^ soc_ethmac_crc32_checker_crc_data1[6]) ^ soc_ethmac_crc32_checker_crc_last[24]) ^ soc_ethmac_crc32_checker_crc_data1[7]);
	soc_ethmac_crc32_checker_crc_next[9] <= ((((((((soc_ethmac_crc32_checker_crc_last[1] ^ soc_ethmac_crc32_checker_crc_last[29]) ^ soc_ethmac_crc32_checker_crc_data1[2]) ^ soc_ethmac_crc32_checker_crc_last[28]) ^ soc_ethmac_crc32_checker_crc_data1[3]) ^ soc_ethmac_crc32_checker_crc_last[26]) ^ soc_ethmac_crc32_checker_crc_data1[5]) ^ soc_ethmac_crc32_checker_crc_last[25]) ^ soc_ethmac_crc32_checker_crc_data1[6]);
	soc_ethmac_crc32_checker_crc_next[10] <= ((((((((soc_ethmac_crc32_checker_crc_last[2] ^ soc_ethmac_crc32_checker_crc_last[29]) ^ soc_ethmac_crc32_checker_crc_data1[2]) ^ soc_ethmac_crc32_checker_crc_last[27]) ^ soc_ethmac_crc32_checker_crc_data1[4]) ^ soc_ethmac_crc32_checker_crc_last[26]) ^ soc_ethmac_crc32_checker_crc_data1[5]) ^ soc_ethmac_crc32_checker_crc_last[24]) ^ soc_ethmac_crc32_checker_crc_data1[7]);
	soc_ethmac_crc32_checker_crc_next[11] <= ((((((((soc_ethmac_crc32_checker_crc_last[3] ^ soc_ethmac_crc32_checker_crc_last[28]) ^ soc_ethmac_crc32_checker_crc_data1[3]) ^ soc_ethmac_crc32_checker_crc_last[27]) ^ soc_ethmac_crc32_checker_crc_data1[4]) ^ soc_ethmac_crc32_checker_crc_last[25]) ^ soc_ethmac_crc32_checker_crc_data1[6]) ^ soc_ethmac_crc32_checker_crc_last[24]) ^ soc_ethmac_crc32_checker_crc_data1[7]);
	soc_ethmac_crc32_checker_crc_next[12] <= ((((((((((((soc_ethmac_crc32_checker_crc_last[4] ^ soc_ethmac_crc32_checker_crc_last[29]) ^ soc_ethmac_crc32_checker_crc_data1[2]) ^ soc_ethmac_crc32_checker_crc_last[28]) ^ soc_ethmac_crc32_checker_crc_data1[3]) ^ soc_ethmac_crc32_checker_crc_last[26]) ^ soc_ethmac_crc32_checker_crc_data1[5]) ^ soc_ethmac_crc32_checker_crc_last[25]) ^ soc_ethmac_crc32_checker_crc_data1[6]) ^ soc_ethmac_crc32_checker_crc_last[24]) ^ soc_ethmac_crc32_checker_crc_last[30]) ^ soc_ethmac_crc32_checker_crc_data1[1]) ^ soc_ethmac_crc32_checker_crc_data1[7]);
	soc_ethmac_crc32_checker_crc_next[13] <= ((((((((((((soc_ethmac_crc32_checker_crc_last[5] ^ soc_ethmac_crc32_checker_crc_last[30]) ^ soc_ethmac_crc32_checker_crc_data1[1]) ^ soc_ethmac_crc32_checker_crc_last[29]) ^ soc_ethmac_crc32_checker_crc_data1[2]) ^ soc_ethmac_crc32_checker_crc_last[27]) ^ soc_ethmac_crc32_checker_crc_data1[4]) ^ soc_ethmac_crc32_checker_crc_last[26]) ^ soc_ethmac_crc32_checker_crc_data1[5]) ^ soc_ethmac_crc32_checker_crc_last[25]) ^ soc_ethmac_crc32_checker_crc_last[31]) ^ soc_ethmac_crc32_checker_crc_data1[0]) ^ soc_ethmac_crc32_checker_crc_data1[6]);
	soc_ethmac_crc32_checker_crc_next[14] <= ((((((((((soc_ethmac_crc32_checker_crc_last[6] ^ soc_ethmac_crc32_checker_crc_last[31]) ^ soc_ethmac_crc32_checker_crc_data1[0]) ^ soc_ethmac_crc32_checker_crc_last[30]) ^ soc_ethmac_crc32_checker_crc_data1[1]) ^ soc_ethmac_crc32_checker_crc_last[28]) ^ soc_ethmac_crc32_checker_crc_data1[3]) ^ soc_ethmac_crc32_checker_crc_last[27]) ^ soc_ethmac_crc32_checker_crc_data1[4]) ^ soc_ethmac_crc32_checker_crc_last[26]) ^ soc_ethmac_crc32_checker_crc_data1[5]);
	soc_ethmac_crc32_checker_crc_next[15] <= ((((((((soc_ethmac_crc32_checker_crc_last[7] ^ soc_ethmac_crc32_checker_crc_last[31]) ^ soc_ethmac_crc32_checker_crc_data1[0]) ^ soc_ethmac_crc32_checker_crc_last[29]) ^ soc_ethmac_crc32_checker_crc_data1[2]) ^ soc_ethmac_crc32_checker_crc_last[28]) ^ soc_ethmac_crc32_checker_crc_data1[3]) ^ soc_ethmac_crc32_checker_crc_last[27]) ^ soc_ethmac_crc32_checker_crc_data1[4]);
	soc_ethmac_crc32_checker_crc_next[16] <= ((((((soc_ethmac_crc32_checker_crc_last[8] ^ soc_ethmac_crc32_checker_crc_last[29]) ^ soc_ethmac_crc32_checker_crc_data1[2]) ^ soc_ethmac_crc32_checker_crc_last[28]) ^ soc_ethmac_crc32_checker_crc_data1[3]) ^ soc_ethmac_crc32_checker_crc_last[24]) ^ soc_ethmac_crc32_checker_crc_data1[7]);
	soc_ethmac_crc32_checker_crc_next[17] <= ((((((soc_ethmac_crc32_checker_crc_last[9] ^ soc_ethmac_crc32_checker_crc_last[30]) ^ soc_ethmac_crc32_checker_crc_data1[1]) ^ soc_ethmac_crc32_checker_crc_last[29]) ^ soc_ethmac_crc32_checker_crc_data1[2]) ^ soc_ethmac_crc32_checker_crc_last[25]) ^ soc_ethmac_crc32_checker_crc_data1[6]);
	soc_ethmac_crc32_checker_crc_next[18] <= ((((((soc_ethmac_crc32_checker_crc_last[10] ^ soc_ethmac_crc32_checker_crc_last[31]) ^ soc_ethmac_crc32_checker_crc_data1[0]) ^ soc_ethmac_crc32_checker_crc_last[30]) ^ soc_ethmac_crc32_checker_crc_data1[1]) ^ soc_ethmac_crc32_checker_crc_last[26]) ^ soc_ethmac_crc32_checker_crc_data1[5]);
	soc_ethmac_crc32_checker_crc_next[19] <= ((((soc_ethmac_crc32_checker_crc_last[11] ^ soc_ethmac_crc32_checker_crc_last[31]) ^ soc_ethmac_crc32_checker_crc_data1[0]) ^ soc_ethmac_crc32_checker_crc_last[27]) ^ soc_ethmac_crc32_checker_crc_data1[4]);
	soc_ethmac_crc32_checker_crc_next[20] <= ((soc_ethmac_crc32_checker_crc_last[12] ^ soc_ethmac_crc32_checker_crc_last[28]) ^ soc_ethmac_crc32_checker_crc_data1[3]);
	soc_ethmac_crc32_checker_crc_next[21] <= ((soc_ethmac_crc32_checker_crc_last[13] ^ soc_ethmac_crc32_checker_crc_last[29]) ^ soc_ethmac_crc32_checker_crc_data1[2]);
	soc_ethmac_crc32_checker_crc_next[22] <= ((soc_ethmac_crc32_checker_crc_last[14] ^ soc_ethmac_crc32_checker_crc_last[24]) ^ soc_ethmac_crc32_checker_crc_data1[7]);
	soc_ethmac_crc32_checker_crc_next[23] <= ((((((soc_ethmac_crc32_checker_crc_last[15] ^ soc_ethmac_crc32_checker_crc_last[25]) ^ soc_ethmac_crc32_checker_crc_data1[6]) ^ soc_ethmac_crc32_checker_crc_last[24]) ^ soc_ethmac_crc32_checker_crc_last[30]) ^ soc_ethmac_crc32_checker_crc_data1[1]) ^ soc_ethmac_crc32_checker_crc_data1[7]);
	soc_ethmac_crc32_checker_crc_next[24] <= ((((((soc_ethmac_crc32_checker_crc_last[16] ^ soc_ethmac_crc32_checker_crc_last[26]) ^ soc_ethmac_crc32_checker_crc_data1[5]) ^ soc_ethmac_crc32_checker_crc_last[25]) ^ soc_ethmac_crc32_checker_crc_last[31]) ^ soc_ethmac_crc32_checker_crc_data1[0]) ^ soc_ethmac_crc32_checker_crc_data1[6]);
	soc_ethmac_crc32_checker_crc_next[25] <= ((((soc_ethmac_crc32_checker_crc_last[17] ^ soc_ethmac_crc32_checker_crc_last[27]) ^ soc_ethmac_crc32_checker_crc_data1[4]) ^ soc_ethmac_crc32_checker_crc_last[26]) ^ soc_ethmac_crc32_checker_crc_data1[5]);
	soc_ethmac_crc32_checker_crc_next[26] <= ((((((((soc_ethmac_crc32_checker_crc_last[18] ^ soc_ethmac_crc32_checker_crc_last[28]) ^ soc_ethmac_crc32_checker_crc_data1[3]) ^ soc_ethmac_crc32_checker_crc_last[27]) ^ soc_ethmac_crc32_checker_crc_data1[4]) ^ soc_ethmac_crc32_checker_crc_last[24]) ^ soc_ethmac_crc32_checker_crc_last[30]) ^ soc_ethmac_crc32_checker_crc_data1[1]) ^ soc_ethmac_crc32_checker_crc_data1[7]);
	soc_ethmac_crc32_checker_crc_next[27] <= ((((((((soc_ethmac_crc32_checker_crc_last[19] ^ soc_ethmac_crc32_checker_crc_last[29]) ^ soc_ethmac_crc32_checker_crc_data1[2]) ^ soc_ethmac_crc32_checker_crc_last[28]) ^ soc_ethmac_crc32_checker_crc_data1[3]) ^ soc_ethmac_crc32_checker_crc_last[25]) ^ soc_ethmac_crc32_checker_crc_last[31]) ^ soc_ethmac_crc32_checker_crc_data1[0]) ^ soc_ethmac_crc32_checker_crc_data1[6]);
	soc_ethmac_crc32_checker_crc_next[28] <= ((((((soc_ethmac_crc32_checker_crc_last[20] ^ soc_ethmac_crc32_checker_crc_last[30]) ^ soc_ethmac_crc32_checker_crc_data1[1]) ^ soc_ethmac_crc32_checker_crc_last[29]) ^ soc_ethmac_crc32_checker_crc_data1[2]) ^ soc_ethmac_crc32_checker_crc_last[26]) ^ soc_ethmac_crc32_checker_crc_data1[5]);
	soc_ethmac_crc32_checker_crc_next[29] <= ((((((soc_ethmac_crc32_checker_crc_last[21] ^ soc_ethmac_crc32_checker_crc_last[31]) ^ soc_ethmac_crc32_checker_crc_data1[0]) ^ soc_ethmac_crc32_checker_crc_last[30]) ^ soc_ethmac_crc32_checker_crc_data1[1]) ^ soc_ethmac_crc32_checker_crc_last[27]) ^ soc_ethmac_crc32_checker_crc_data1[4]);
	soc_ethmac_crc32_checker_crc_next[30] <= ((((soc_ethmac_crc32_checker_crc_last[22] ^ soc_ethmac_crc32_checker_crc_last[31]) ^ soc_ethmac_crc32_checker_crc_data1[0]) ^ soc_ethmac_crc32_checker_crc_last[28]) ^ soc_ethmac_crc32_checker_crc_data1[3]);
	soc_ethmac_crc32_checker_crc_next[31] <= ((soc_ethmac_crc32_checker_crc_last[23] ^ soc_ethmac_crc32_checker_crc_last[29]) ^ soc_ethmac_crc32_checker_crc_data1[2]);
// synthesis translate_off
	dummy_d_74 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_crc32_checker_syncfifo_syncfifo_din = {soc_ethmac_crc32_checker_syncfifo_fifo_in_last, soc_ethmac_crc32_checker_syncfifo_fifo_in_first, soc_ethmac_crc32_checker_syncfifo_fifo_in_payload_error, soc_ethmac_crc32_checker_syncfifo_fifo_in_payload_last_be, soc_ethmac_crc32_checker_syncfifo_fifo_in_payload_data};
assign {soc_ethmac_crc32_checker_syncfifo_fifo_out_last, soc_ethmac_crc32_checker_syncfifo_fifo_out_first, soc_ethmac_crc32_checker_syncfifo_fifo_out_payload_error, soc_ethmac_crc32_checker_syncfifo_fifo_out_payload_last_be, soc_ethmac_crc32_checker_syncfifo_fifo_out_payload_data} = soc_ethmac_crc32_checker_syncfifo_syncfifo_dout;
assign soc_ethmac_crc32_checker_syncfifo_sink_ready = soc_ethmac_crc32_checker_syncfifo_syncfifo_writable;
assign soc_ethmac_crc32_checker_syncfifo_syncfifo_we = soc_ethmac_crc32_checker_syncfifo_sink_valid;
assign soc_ethmac_crc32_checker_syncfifo_fifo_in_first = soc_ethmac_crc32_checker_syncfifo_sink_first;
assign soc_ethmac_crc32_checker_syncfifo_fifo_in_last = soc_ethmac_crc32_checker_syncfifo_sink_last;
assign soc_ethmac_crc32_checker_syncfifo_fifo_in_payload_data = soc_ethmac_crc32_checker_syncfifo_sink_payload_data;
assign soc_ethmac_crc32_checker_syncfifo_fifo_in_payload_last_be = soc_ethmac_crc32_checker_syncfifo_sink_payload_last_be;
assign soc_ethmac_crc32_checker_syncfifo_fifo_in_payload_error = soc_ethmac_crc32_checker_syncfifo_sink_payload_error;
assign soc_ethmac_crc32_checker_syncfifo_source_valid = soc_ethmac_crc32_checker_syncfifo_syncfifo_readable;
assign soc_ethmac_crc32_checker_syncfifo_source_first = soc_ethmac_crc32_checker_syncfifo_fifo_out_first;
assign soc_ethmac_crc32_checker_syncfifo_source_last = soc_ethmac_crc32_checker_syncfifo_fifo_out_last;
assign soc_ethmac_crc32_checker_syncfifo_source_payload_data = soc_ethmac_crc32_checker_syncfifo_fifo_out_payload_data;
assign soc_ethmac_crc32_checker_syncfifo_source_payload_last_be = soc_ethmac_crc32_checker_syncfifo_fifo_out_payload_last_be;
assign soc_ethmac_crc32_checker_syncfifo_source_payload_error = soc_ethmac_crc32_checker_syncfifo_fifo_out_payload_error;
assign soc_ethmac_crc32_checker_syncfifo_syncfifo_re = soc_ethmac_crc32_checker_syncfifo_source_ready;

// synthesis translate_off
reg dummy_d_75;
// synthesis translate_on
always @(*) begin
	soc_ethmac_crc32_checker_syncfifo_wrport_adr <= 3'd0;
	if (soc_ethmac_crc32_checker_syncfifo_replace) begin
		soc_ethmac_crc32_checker_syncfifo_wrport_adr <= (soc_ethmac_crc32_checker_syncfifo_produce - 1'd1);
	end else begin
		soc_ethmac_crc32_checker_syncfifo_wrport_adr <= soc_ethmac_crc32_checker_syncfifo_produce;
	end
// synthesis translate_off
	dummy_d_75 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_crc32_checker_syncfifo_wrport_dat_w = soc_ethmac_crc32_checker_syncfifo_syncfifo_din;
assign soc_ethmac_crc32_checker_syncfifo_wrport_we = (soc_ethmac_crc32_checker_syncfifo_syncfifo_we & (soc_ethmac_crc32_checker_syncfifo_syncfifo_writable | soc_ethmac_crc32_checker_syncfifo_replace));
assign soc_ethmac_crc32_checker_syncfifo_do_read = (soc_ethmac_crc32_checker_syncfifo_syncfifo_readable & soc_ethmac_crc32_checker_syncfifo_syncfifo_re);
assign soc_ethmac_crc32_checker_syncfifo_rdport_adr = soc_ethmac_crc32_checker_syncfifo_consume;
assign soc_ethmac_crc32_checker_syncfifo_syncfifo_dout = soc_ethmac_crc32_checker_syncfifo_rdport_dat_r;
assign soc_ethmac_crc32_checker_syncfifo_syncfifo_writable = (soc_ethmac_crc32_checker_syncfifo_level != 3'd5);
assign soc_ethmac_crc32_checker_syncfifo_syncfifo_readable = (soc_ethmac_crc32_checker_syncfifo_level != 1'd0);

// synthesis translate_off
reg dummy_d_76;
// synthesis translate_on
always @(*) begin
	soc_ethmac_crc32_checker_fifo_reset <= 1'd0;
	soc_ethmac_crc32_checker_crc_ce <= 1'd0;
	vns_liteethmaccrc32checker_next_state <= 2'd0;
	soc_ethmac_crc32_checker_crc_reset <= 1'd0;
	vns_liteethmaccrc32checker_next_state <= vns_liteethmaccrc32checker_state;
	case (vns_liteethmaccrc32checker_state)
		1'd1: begin
			if ((soc_ethmac_crc32_checker_sink_sink_valid & soc_ethmac_crc32_checker_sink_sink_ready)) begin
				soc_ethmac_crc32_checker_crc_ce <= 1'd1;
				vns_liteethmaccrc32checker_next_state <= 2'd2;
			end
		end
		2'd2: begin
			if ((soc_ethmac_crc32_checker_sink_sink_valid & soc_ethmac_crc32_checker_sink_sink_ready)) begin
				soc_ethmac_crc32_checker_crc_ce <= 1'd1;
				if (soc_ethmac_crc32_checker_sink_sink_last) begin
					vns_liteethmaccrc32checker_next_state <= 1'd0;
				end
			end
		end
		default: begin
			soc_ethmac_crc32_checker_crc_reset <= 1'd1;
			soc_ethmac_crc32_checker_fifo_reset <= 1'd1;
			vns_liteethmaccrc32checker_next_state <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_76 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_ps_preamble_error_o = (soc_ethmac_ps_preamble_error_toggle_o ^ soc_ethmac_ps_preamble_error_toggle_o_r);
assign soc_ethmac_ps_crc_error_o = (soc_ethmac_ps_crc_error_toggle_o ^ soc_ethmac_ps_crc_error_toggle_o_r);
assign soc_ethmac_padding_inserter_counter_done = (soc_ethmac_padding_inserter_counter >= 6'd59);

// synthesis translate_off
reg dummy_d_77;
// synthesis translate_on
always @(*) begin
	soc_ethmac_padding_inserter_source_payload_error <= 1'd0;
	soc_ethmac_padding_inserter_counter_reset <= 1'd0;
	soc_ethmac_padding_inserter_counter_ce <= 1'd0;
	vns_liteethmacpaddinginserter_next_state <= 1'd0;
	soc_ethmac_padding_inserter_sink_ready <= 1'd0;
	soc_ethmac_padding_inserter_source_valid <= 1'd0;
	soc_ethmac_padding_inserter_source_first <= 1'd0;
	soc_ethmac_padding_inserter_source_last <= 1'd0;
	soc_ethmac_padding_inserter_source_payload_data <= 8'd0;
	soc_ethmac_padding_inserter_source_payload_last_be <= 1'd0;
	vns_liteethmacpaddinginserter_next_state <= vns_liteethmacpaddinginserter_state;
	case (vns_liteethmacpaddinginserter_state)
		1'd1: begin
			soc_ethmac_padding_inserter_source_valid <= 1'd1;
			soc_ethmac_padding_inserter_source_last <= soc_ethmac_padding_inserter_counter_done;
			soc_ethmac_padding_inserter_source_payload_data <= 1'd0;
			if ((soc_ethmac_padding_inserter_source_valid & soc_ethmac_padding_inserter_source_ready)) begin
				soc_ethmac_padding_inserter_counter_ce <= 1'd1;
				if (soc_ethmac_padding_inserter_counter_done) begin
					soc_ethmac_padding_inserter_counter_reset <= 1'd1;
					vns_liteethmacpaddinginserter_next_state <= 1'd0;
				end
			end
		end
		default: begin
			soc_ethmac_padding_inserter_source_valid <= soc_ethmac_padding_inserter_sink_valid;
			soc_ethmac_padding_inserter_sink_ready <= soc_ethmac_padding_inserter_source_ready;
			soc_ethmac_padding_inserter_source_first <= soc_ethmac_padding_inserter_sink_first;
			soc_ethmac_padding_inserter_source_last <= soc_ethmac_padding_inserter_sink_last;
			soc_ethmac_padding_inserter_source_payload_data <= soc_ethmac_padding_inserter_sink_payload_data;
			soc_ethmac_padding_inserter_source_payload_last_be <= soc_ethmac_padding_inserter_sink_payload_last_be;
			soc_ethmac_padding_inserter_source_payload_error <= soc_ethmac_padding_inserter_sink_payload_error;
			if ((soc_ethmac_padding_inserter_source_valid & soc_ethmac_padding_inserter_source_ready)) begin
				soc_ethmac_padding_inserter_counter_ce <= 1'd1;
				if (soc_ethmac_padding_inserter_sink_last) begin
					if ((~soc_ethmac_padding_inserter_counter_done)) begin
						soc_ethmac_padding_inserter_source_last <= 1'd0;
						vns_liteethmacpaddinginserter_next_state <= 1'd1;
					end else begin
						soc_ethmac_padding_inserter_counter_reset <= 1'd1;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_77 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_padding_checker_source_valid = soc_ethmac_padding_checker_sink_valid;
assign soc_ethmac_padding_checker_sink_ready = soc_ethmac_padding_checker_source_ready;
assign soc_ethmac_padding_checker_source_first = soc_ethmac_padding_checker_sink_first;
assign soc_ethmac_padding_checker_source_last = soc_ethmac_padding_checker_sink_last;
assign soc_ethmac_padding_checker_source_payload_data = soc_ethmac_padding_checker_sink_payload_data;
assign soc_ethmac_padding_checker_source_payload_last_be = soc_ethmac_padding_checker_sink_payload_last_be;
assign soc_ethmac_padding_checker_source_payload_error = soc_ethmac_padding_checker_sink_payload_error;
assign soc_ethmac_tx_last_be_source_valid = (soc_ethmac_tx_last_be_sink_valid & soc_ethmac_tx_last_be_ongoing);
assign soc_ethmac_tx_last_be_source_last = soc_ethmac_tx_last_be_sink_payload_last_be;
assign soc_ethmac_tx_last_be_source_payload_data = soc_ethmac_tx_last_be_sink_payload_data;
assign soc_ethmac_tx_last_be_sink_ready = soc_ethmac_tx_last_be_source_ready;
assign soc_ethmac_rx_last_be_source_valid = soc_ethmac_rx_last_be_sink_valid;
assign soc_ethmac_rx_last_be_sink_ready = soc_ethmac_rx_last_be_source_ready;
assign soc_ethmac_rx_last_be_source_first = soc_ethmac_rx_last_be_sink_first;
assign soc_ethmac_rx_last_be_source_last = soc_ethmac_rx_last_be_sink_last;
assign soc_ethmac_rx_last_be_source_payload_data = soc_ethmac_rx_last_be_sink_payload_data;
assign soc_ethmac_rx_last_be_source_payload_error = soc_ethmac_rx_last_be_sink_payload_error;

// synthesis translate_off
reg dummy_d_78;
// synthesis translate_on
always @(*) begin
	soc_ethmac_rx_last_be_source_payload_last_be <= 1'd0;
	soc_ethmac_rx_last_be_source_payload_last_be <= soc_ethmac_rx_last_be_sink_payload_last_be;
	soc_ethmac_rx_last_be_source_payload_last_be <= soc_ethmac_rx_last_be_sink_last;
// synthesis translate_off
	dummy_d_78 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_tx_converter_converter_sink_valid = soc_ethmac_tx_converter_sink_valid;
assign soc_ethmac_tx_converter_converter_sink_first = soc_ethmac_tx_converter_sink_first;
assign soc_ethmac_tx_converter_converter_sink_last = soc_ethmac_tx_converter_sink_last;
assign soc_ethmac_tx_converter_sink_ready = soc_ethmac_tx_converter_converter_sink_ready;

// synthesis translate_off
reg dummy_d_79;
// synthesis translate_on
always @(*) begin
	soc_ethmac_tx_converter_converter_sink_payload_data <= 40'd0;
	soc_ethmac_tx_converter_converter_sink_payload_data[7:0] <= soc_ethmac_tx_converter_sink_payload_data[7:0];
	soc_ethmac_tx_converter_converter_sink_payload_data[8] <= soc_ethmac_tx_converter_sink_payload_last_be[0];
	soc_ethmac_tx_converter_converter_sink_payload_data[9] <= soc_ethmac_tx_converter_sink_payload_error[0];
	soc_ethmac_tx_converter_converter_sink_payload_data[17:10] <= soc_ethmac_tx_converter_sink_payload_data[15:8];
	soc_ethmac_tx_converter_converter_sink_payload_data[18] <= soc_ethmac_tx_converter_sink_payload_last_be[1];
	soc_ethmac_tx_converter_converter_sink_payload_data[19] <= soc_ethmac_tx_converter_sink_payload_error[1];
	soc_ethmac_tx_converter_converter_sink_payload_data[27:20] <= soc_ethmac_tx_converter_sink_payload_data[23:16];
	soc_ethmac_tx_converter_converter_sink_payload_data[28] <= soc_ethmac_tx_converter_sink_payload_last_be[2];
	soc_ethmac_tx_converter_converter_sink_payload_data[29] <= soc_ethmac_tx_converter_sink_payload_error[2];
	soc_ethmac_tx_converter_converter_sink_payload_data[37:30] <= soc_ethmac_tx_converter_sink_payload_data[31:24];
	soc_ethmac_tx_converter_converter_sink_payload_data[38] <= soc_ethmac_tx_converter_sink_payload_last_be[3];
	soc_ethmac_tx_converter_converter_sink_payload_data[39] <= soc_ethmac_tx_converter_sink_payload_error[3];
// synthesis translate_off
	dummy_d_79 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_tx_converter_source_valid = soc_ethmac_tx_converter_source_source_valid;
assign soc_ethmac_tx_converter_source_first = soc_ethmac_tx_converter_source_source_first;
assign soc_ethmac_tx_converter_source_last = soc_ethmac_tx_converter_source_source_last;
assign soc_ethmac_tx_converter_source_source_ready = soc_ethmac_tx_converter_source_ready;
assign {soc_ethmac_tx_converter_source_payload_error, soc_ethmac_tx_converter_source_payload_last_be, soc_ethmac_tx_converter_source_payload_data} = soc_ethmac_tx_converter_source_source_payload_data;
assign soc_ethmac_tx_converter_source_source_valid = soc_ethmac_tx_converter_converter_source_valid;
assign soc_ethmac_tx_converter_converter_source_ready = soc_ethmac_tx_converter_source_source_ready;
assign soc_ethmac_tx_converter_source_source_first = soc_ethmac_tx_converter_converter_source_first;
assign soc_ethmac_tx_converter_source_source_last = soc_ethmac_tx_converter_converter_source_last;
assign soc_ethmac_tx_converter_source_source_payload_data = soc_ethmac_tx_converter_converter_source_payload_data;
assign soc_ethmac_tx_converter_converter_first = (soc_ethmac_tx_converter_converter_mux == 1'd0);
assign soc_ethmac_tx_converter_converter_last = (soc_ethmac_tx_converter_converter_mux == 2'd3);
assign soc_ethmac_tx_converter_converter_source_valid = soc_ethmac_tx_converter_converter_sink_valid;
assign soc_ethmac_tx_converter_converter_source_first = (soc_ethmac_tx_converter_converter_sink_first & soc_ethmac_tx_converter_converter_first);
assign soc_ethmac_tx_converter_converter_source_last = (soc_ethmac_tx_converter_converter_sink_last & soc_ethmac_tx_converter_converter_last);
assign soc_ethmac_tx_converter_converter_sink_ready = (soc_ethmac_tx_converter_converter_last & soc_ethmac_tx_converter_converter_source_ready);

// synthesis translate_off
reg dummy_d_80;
// synthesis translate_on
always @(*) begin
	soc_ethmac_tx_converter_converter_source_payload_data <= 10'd0;
	case (soc_ethmac_tx_converter_converter_mux)
		1'd0: begin
			soc_ethmac_tx_converter_converter_source_payload_data <= soc_ethmac_tx_converter_converter_sink_payload_data[39:30];
		end
		1'd1: begin
			soc_ethmac_tx_converter_converter_source_payload_data <= soc_ethmac_tx_converter_converter_sink_payload_data[29:20];
		end
		2'd2: begin
			soc_ethmac_tx_converter_converter_source_payload_data <= soc_ethmac_tx_converter_converter_sink_payload_data[19:10];
		end
		default: begin
			soc_ethmac_tx_converter_converter_source_payload_data <= soc_ethmac_tx_converter_converter_sink_payload_data[9:0];
		end
	endcase
// synthesis translate_off
	dummy_d_80 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_tx_converter_converter_source_payload_valid_token_count = soc_ethmac_tx_converter_converter_last;
assign soc_ethmac_rx_converter_converter_sink_valid = soc_ethmac_rx_converter_sink_valid;
assign soc_ethmac_rx_converter_converter_sink_first = soc_ethmac_rx_converter_sink_first;
assign soc_ethmac_rx_converter_converter_sink_last = soc_ethmac_rx_converter_sink_last;
assign soc_ethmac_rx_converter_sink_ready = soc_ethmac_rx_converter_converter_sink_ready;
assign soc_ethmac_rx_converter_converter_sink_payload_data = {soc_ethmac_rx_converter_sink_payload_error, soc_ethmac_rx_converter_sink_payload_last_be, soc_ethmac_rx_converter_sink_payload_data};
assign soc_ethmac_rx_converter_source_valid = soc_ethmac_rx_converter_source_source_valid;
assign soc_ethmac_rx_converter_source_first = soc_ethmac_rx_converter_source_source_first;
assign soc_ethmac_rx_converter_source_last = soc_ethmac_rx_converter_source_source_last;
assign soc_ethmac_rx_converter_source_source_ready = soc_ethmac_rx_converter_source_ready;

// synthesis translate_off
reg dummy_d_81;
// synthesis translate_on
always @(*) begin
	soc_ethmac_rx_converter_source_payload_data <= 32'd0;
	soc_ethmac_rx_converter_source_payload_data[7:0] <= soc_ethmac_rx_converter_source_source_payload_data[7:0];
	soc_ethmac_rx_converter_source_payload_data[15:8] <= soc_ethmac_rx_converter_source_source_payload_data[17:10];
	soc_ethmac_rx_converter_source_payload_data[23:16] <= soc_ethmac_rx_converter_source_source_payload_data[27:20];
	soc_ethmac_rx_converter_source_payload_data[31:24] <= soc_ethmac_rx_converter_source_source_payload_data[37:30];
// synthesis translate_off
	dummy_d_81 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_82;
// synthesis translate_on
always @(*) begin
	soc_ethmac_rx_converter_source_payload_last_be <= 4'd0;
	soc_ethmac_rx_converter_source_payload_last_be[0] <= soc_ethmac_rx_converter_source_source_payload_data[8];
	soc_ethmac_rx_converter_source_payload_last_be[1] <= soc_ethmac_rx_converter_source_source_payload_data[18];
	soc_ethmac_rx_converter_source_payload_last_be[2] <= soc_ethmac_rx_converter_source_source_payload_data[28];
	soc_ethmac_rx_converter_source_payload_last_be[3] <= soc_ethmac_rx_converter_source_source_payload_data[38];
// synthesis translate_off
	dummy_d_82 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_83;
// synthesis translate_on
always @(*) begin
	soc_ethmac_rx_converter_source_payload_error <= 4'd0;
	soc_ethmac_rx_converter_source_payload_error[0] <= soc_ethmac_rx_converter_source_source_payload_data[9];
	soc_ethmac_rx_converter_source_payload_error[1] <= soc_ethmac_rx_converter_source_source_payload_data[19];
	soc_ethmac_rx_converter_source_payload_error[2] <= soc_ethmac_rx_converter_source_source_payload_data[29];
	soc_ethmac_rx_converter_source_payload_error[3] <= soc_ethmac_rx_converter_source_source_payload_data[39];
// synthesis translate_off
	dummy_d_83 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_rx_converter_source_source_valid = soc_ethmac_rx_converter_converter_source_valid;
assign soc_ethmac_rx_converter_converter_source_ready = soc_ethmac_rx_converter_source_source_ready;
assign soc_ethmac_rx_converter_source_source_first = soc_ethmac_rx_converter_converter_source_first;
assign soc_ethmac_rx_converter_source_source_last = soc_ethmac_rx_converter_converter_source_last;
assign soc_ethmac_rx_converter_source_source_payload_data = soc_ethmac_rx_converter_converter_source_payload_data;
assign soc_ethmac_rx_converter_converter_sink_ready = ((~soc_ethmac_rx_converter_converter_strobe_all) | soc_ethmac_rx_converter_converter_source_ready);
assign soc_ethmac_rx_converter_converter_source_valid = soc_ethmac_rx_converter_converter_strobe_all;
assign soc_ethmac_rx_converter_converter_load_part = (soc_ethmac_rx_converter_converter_sink_valid & soc_ethmac_rx_converter_converter_sink_ready);
assign soc_ethmac_tx_cdc_asyncfifo_din = {soc_ethmac_tx_cdc_fifo_in_last, soc_ethmac_tx_cdc_fifo_in_first, soc_ethmac_tx_cdc_fifo_in_payload_error, soc_ethmac_tx_cdc_fifo_in_payload_last_be, soc_ethmac_tx_cdc_fifo_in_payload_data};
assign {soc_ethmac_tx_cdc_fifo_out_last, soc_ethmac_tx_cdc_fifo_out_first, soc_ethmac_tx_cdc_fifo_out_payload_error, soc_ethmac_tx_cdc_fifo_out_payload_last_be, soc_ethmac_tx_cdc_fifo_out_payload_data} = soc_ethmac_tx_cdc_asyncfifo_dout;
assign soc_ethmac_tx_cdc_sink_ready = soc_ethmac_tx_cdc_asyncfifo_writable;
assign soc_ethmac_tx_cdc_asyncfifo_we = soc_ethmac_tx_cdc_sink_valid;
assign soc_ethmac_tx_cdc_fifo_in_first = soc_ethmac_tx_cdc_sink_first;
assign soc_ethmac_tx_cdc_fifo_in_last = soc_ethmac_tx_cdc_sink_last;
assign soc_ethmac_tx_cdc_fifo_in_payload_data = soc_ethmac_tx_cdc_sink_payload_data;
assign soc_ethmac_tx_cdc_fifo_in_payload_last_be = soc_ethmac_tx_cdc_sink_payload_last_be;
assign soc_ethmac_tx_cdc_fifo_in_payload_error = soc_ethmac_tx_cdc_sink_payload_error;
assign soc_ethmac_tx_cdc_source_valid = soc_ethmac_tx_cdc_asyncfifo_readable;
assign soc_ethmac_tx_cdc_source_first = soc_ethmac_tx_cdc_fifo_out_first;
assign soc_ethmac_tx_cdc_source_last = soc_ethmac_tx_cdc_fifo_out_last;
assign soc_ethmac_tx_cdc_source_payload_data = soc_ethmac_tx_cdc_fifo_out_payload_data;
assign soc_ethmac_tx_cdc_source_payload_last_be = soc_ethmac_tx_cdc_fifo_out_payload_last_be;
assign soc_ethmac_tx_cdc_source_payload_error = soc_ethmac_tx_cdc_fifo_out_payload_error;
assign soc_ethmac_tx_cdc_asyncfifo_re = soc_ethmac_tx_cdc_source_ready;
assign soc_ethmac_tx_cdc_graycounter0_ce = (soc_ethmac_tx_cdc_asyncfifo_writable & soc_ethmac_tx_cdc_asyncfifo_we);
assign soc_ethmac_tx_cdc_graycounter1_ce = (soc_ethmac_tx_cdc_asyncfifo_readable & soc_ethmac_tx_cdc_asyncfifo_re);
assign soc_ethmac_tx_cdc_asyncfifo_writable = (((soc_ethmac_tx_cdc_graycounter0_q[6] == soc_ethmac_tx_cdc_consume_wdomain[6]) | (soc_ethmac_tx_cdc_graycounter0_q[5] == soc_ethmac_tx_cdc_consume_wdomain[5])) | (soc_ethmac_tx_cdc_graycounter0_q[4:0] != soc_ethmac_tx_cdc_consume_wdomain[4:0]));
assign soc_ethmac_tx_cdc_asyncfifo_readable = (soc_ethmac_tx_cdc_graycounter1_q != soc_ethmac_tx_cdc_produce_rdomain);
assign soc_ethmac_tx_cdc_wrport_adr = soc_ethmac_tx_cdc_graycounter0_q_binary[5:0];
assign soc_ethmac_tx_cdc_wrport_dat_w = soc_ethmac_tx_cdc_asyncfifo_din;
assign soc_ethmac_tx_cdc_wrport_we = soc_ethmac_tx_cdc_graycounter0_ce;
assign soc_ethmac_tx_cdc_rdport_adr = soc_ethmac_tx_cdc_graycounter1_q_next_binary[5:0];
assign soc_ethmac_tx_cdc_asyncfifo_dout = soc_ethmac_tx_cdc_rdport_dat_r;

// synthesis translate_off
reg dummy_d_84;
// synthesis translate_on
always @(*) begin
	soc_ethmac_tx_cdc_graycounter0_q_next_binary <= 7'd0;
	if (soc_ethmac_tx_cdc_graycounter0_ce) begin
		soc_ethmac_tx_cdc_graycounter0_q_next_binary <= (soc_ethmac_tx_cdc_graycounter0_q_binary + 1'd1);
	end else begin
		soc_ethmac_tx_cdc_graycounter0_q_next_binary <= soc_ethmac_tx_cdc_graycounter0_q_binary;
	end
// synthesis translate_off
	dummy_d_84 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_tx_cdc_graycounter0_q_next = (soc_ethmac_tx_cdc_graycounter0_q_next_binary ^ soc_ethmac_tx_cdc_graycounter0_q_next_binary[6:1]);

// synthesis translate_off
reg dummy_d_85;
// synthesis translate_on
always @(*) begin
	soc_ethmac_tx_cdc_graycounter1_q_next_binary <= 7'd0;
	if (soc_ethmac_tx_cdc_graycounter1_ce) begin
		soc_ethmac_tx_cdc_graycounter1_q_next_binary <= (soc_ethmac_tx_cdc_graycounter1_q_binary + 1'd1);
	end else begin
		soc_ethmac_tx_cdc_graycounter1_q_next_binary <= soc_ethmac_tx_cdc_graycounter1_q_binary;
	end
// synthesis translate_off
	dummy_d_85 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_tx_cdc_graycounter1_q_next = (soc_ethmac_tx_cdc_graycounter1_q_next_binary ^ soc_ethmac_tx_cdc_graycounter1_q_next_binary[6:1]);
assign soc_ethmac_rx_cdc_asyncfifo_din = {soc_ethmac_rx_cdc_fifo_in_last, soc_ethmac_rx_cdc_fifo_in_first, soc_ethmac_rx_cdc_fifo_in_payload_error, soc_ethmac_rx_cdc_fifo_in_payload_last_be, soc_ethmac_rx_cdc_fifo_in_payload_data};
assign {soc_ethmac_rx_cdc_fifo_out_last, soc_ethmac_rx_cdc_fifo_out_first, soc_ethmac_rx_cdc_fifo_out_payload_error, soc_ethmac_rx_cdc_fifo_out_payload_last_be, soc_ethmac_rx_cdc_fifo_out_payload_data} = soc_ethmac_rx_cdc_asyncfifo_dout;
assign soc_ethmac_rx_cdc_sink_ready = soc_ethmac_rx_cdc_asyncfifo_writable;
assign soc_ethmac_rx_cdc_asyncfifo_we = soc_ethmac_rx_cdc_sink_valid;
assign soc_ethmac_rx_cdc_fifo_in_first = soc_ethmac_rx_cdc_sink_first;
assign soc_ethmac_rx_cdc_fifo_in_last = soc_ethmac_rx_cdc_sink_last;
assign soc_ethmac_rx_cdc_fifo_in_payload_data = soc_ethmac_rx_cdc_sink_payload_data;
assign soc_ethmac_rx_cdc_fifo_in_payload_last_be = soc_ethmac_rx_cdc_sink_payload_last_be;
assign soc_ethmac_rx_cdc_fifo_in_payload_error = soc_ethmac_rx_cdc_sink_payload_error;
assign soc_ethmac_rx_cdc_source_valid = soc_ethmac_rx_cdc_asyncfifo_readable;
assign soc_ethmac_rx_cdc_source_first = soc_ethmac_rx_cdc_fifo_out_first;
assign soc_ethmac_rx_cdc_source_last = soc_ethmac_rx_cdc_fifo_out_last;
assign soc_ethmac_rx_cdc_source_payload_data = soc_ethmac_rx_cdc_fifo_out_payload_data;
assign soc_ethmac_rx_cdc_source_payload_last_be = soc_ethmac_rx_cdc_fifo_out_payload_last_be;
assign soc_ethmac_rx_cdc_source_payload_error = soc_ethmac_rx_cdc_fifo_out_payload_error;
assign soc_ethmac_rx_cdc_asyncfifo_re = soc_ethmac_rx_cdc_source_ready;
assign soc_ethmac_rx_cdc_graycounter0_ce = (soc_ethmac_rx_cdc_asyncfifo_writable & soc_ethmac_rx_cdc_asyncfifo_we);
assign soc_ethmac_rx_cdc_graycounter1_ce = (soc_ethmac_rx_cdc_asyncfifo_readable & soc_ethmac_rx_cdc_asyncfifo_re);
assign soc_ethmac_rx_cdc_asyncfifo_writable = (((soc_ethmac_rx_cdc_graycounter0_q[6] == soc_ethmac_rx_cdc_consume_wdomain[6]) | (soc_ethmac_rx_cdc_graycounter0_q[5] == soc_ethmac_rx_cdc_consume_wdomain[5])) | (soc_ethmac_rx_cdc_graycounter0_q[4:0] != soc_ethmac_rx_cdc_consume_wdomain[4:0]));
assign soc_ethmac_rx_cdc_asyncfifo_readable = (soc_ethmac_rx_cdc_graycounter1_q != soc_ethmac_rx_cdc_produce_rdomain);
assign soc_ethmac_rx_cdc_wrport_adr = soc_ethmac_rx_cdc_graycounter0_q_binary[5:0];
assign soc_ethmac_rx_cdc_wrport_dat_w = soc_ethmac_rx_cdc_asyncfifo_din;
assign soc_ethmac_rx_cdc_wrport_we = soc_ethmac_rx_cdc_graycounter0_ce;
assign soc_ethmac_rx_cdc_rdport_adr = soc_ethmac_rx_cdc_graycounter1_q_next_binary[5:0];
assign soc_ethmac_rx_cdc_asyncfifo_dout = soc_ethmac_rx_cdc_rdport_dat_r;

// synthesis translate_off
reg dummy_d_86;
// synthesis translate_on
always @(*) begin
	soc_ethmac_rx_cdc_graycounter0_q_next_binary <= 7'd0;
	if (soc_ethmac_rx_cdc_graycounter0_ce) begin
		soc_ethmac_rx_cdc_graycounter0_q_next_binary <= (soc_ethmac_rx_cdc_graycounter0_q_binary + 1'd1);
	end else begin
		soc_ethmac_rx_cdc_graycounter0_q_next_binary <= soc_ethmac_rx_cdc_graycounter0_q_binary;
	end
// synthesis translate_off
	dummy_d_86 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_rx_cdc_graycounter0_q_next = (soc_ethmac_rx_cdc_graycounter0_q_next_binary ^ soc_ethmac_rx_cdc_graycounter0_q_next_binary[6:1]);

// synthesis translate_off
reg dummy_d_87;
// synthesis translate_on
always @(*) begin
	soc_ethmac_rx_cdc_graycounter1_q_next_binary <= 7'd0;
	if (soc_ethmac_rx_cdc_graycounter1_ce) begin
		soc_ethmac_rx_cdc_graycounter1_q_next_binary <= (soc_ethmac_rx_cdc_graycounter1_q_binary + 1'd1);
	end else begin
		soc_ethmac_rx_cdc_graycounter1_q_next_binary <= soc_ethmac_rx_cdc_graycounter1_q_binary;
	end
// synthesis translate_off
	dummy_d_87 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_rx_cdc_graycounter1_q_next = (soc_ethmac_rx_cdc_graycounter1_q_next_binary ^ soc_ethmac_rx_cdc_graycounter1_q_next_binary[6:1]);
assign soc_ethmac_tx_converter_sink_valid = soc_ethmac_tx_cdc_source_valid;
assign soc_ethmac_tx_cdc_source_ready = soc_ethmac_tx_converter_sink_ready;
assign soc_ethmac_tx_converter_sink_first = soc_ethmac_tx_cdc_source_first;
assign soc_ethmac_tx_converter_sink_last = soc_ethmac_tx_cdc_source_last;
assign soc_ethmac_tx_converter_sink_payload_data = soc_ethmac_tx_cdc_source_payload_data;
assign soc_ethmac_tx_converter_sink_payload_last_be = soc_ethmac_tx_cdc_source_payload_last_be;
assign soc_ethmac_tx_converter_sink_payload_error = soc_ethmac_tx_cdc_source_payload_error;
assign soc_ethmac_tx_last_be_sink_valid = soc_ethmac_tx_converter_source_valid;
assign soc_ethmac_tx_converter_source_ready = soc_ethmac_tx_last_be_sink_ready;
assign soc_ethmac_tx_last_be_sink_first = soc_ethmac_tx_converter_source_first;
assign soc_ethmac_tx_last_be_sink_last = soc_ethmac_tx_converter_source_last;
assign soc_ethmac_tx_last_be_sink_payload_data = soc_ethmac_tx_converter_source_payload_data;
assign soc_ethmac_tx_last_be_sink_payload_last_be = soc_ethmac_tx_converter_source_payload_last_be;
assign soc_ethmac_tx_last_be_sink_payload_error = soc_ethmac_tx_converter_source_payload_error;
assign soc_ethmac_padding_inserter_sink_valid = soc_ethmac_tx_last_be_source_valid;
assign soc_ethmac_tx_last_be_source_ready = soc_ethmac_padding_inserter_sink_ready;
assign soc_ethmac_padding_inserter_sink_first = soc_ethmac_tx_last_be_source_first;
assign soc_ethmac_padding_inserter_sink_last = soc_ethmac_tx_last_be_source_last;
assign soc_ethmac_padding_inserter_sink_payload_data = soc_ethmac_tx_last_be_source_payload_data;
assign soc_ethmac_padding_inserter_sink_payload_last_be = soc_ethmac_tx_last_be_source_payload_last_be;
assign soc_ethmac_padding_inserter_sink_payload_error = soc_ethmac_tx_last_be_source_payload_error;
assign soc_ethmac_crc32_inserter_sink_valid = soc_ethmac_padding_inserter_source_valid;
assign soc_ethmac_padding_inserter_source_ready = soc_ethmac_crc32_inserter_sink_ready;
assign soc_ethmac_crc32_inserter_sink_first = soc_ethmac_padding_inserter_source_first;
assign soc_ethmac_crc32_inserter_sink_last = soc_ethmac_padding_inserter_source_last;
assign soc_ethmac_crc32_inserter_sink_payload_data = soc_ethmac_padding_inserter_source_payload_data;
assign soc_ethmac_crc32_inserter_sink_payload_last_be = soc_ethmac_padding_inserter_source_payload_last_be;
assign soc_ethmac_crc32_inserter_sink_payload_error = soc_ethmac_padding_inserter_source_payload_error;
assign soc_ethmac_preamble_inserter_sink_valid = soc_ethmac_crc32_inserter_source_valid;
assign soc_ethmac_crc32_inserter_source_ready = soc_ethmac_preamble_inserter_sink_ready;
assign soc_ethmac_preamble_inserter_sink_first = soc_ethmac_crc32_inserter_source_first;
assign soc_ethmac_preamble_inserter_sink_last = soc_ethmac_crc32_inserter_source_last;
assign soc_ethmac_preamble_inserter_sink_payload_data = soc_ethmac_crc32_inserter_source_payload_data;
assign soc_ethmac_preamble_inserter_sink_payload_last_be = soc_ethmac_crc32_inserter_source_payload_last_be;
assign soc_ethmac_preamble_inserter_sink_payload_error = soc_ethmac_crc32_inserter_source_payload_error;
assign soc_ethmac_tx_gap_inserter_sink_valid = soc_ethmac_preamble_inserter_source_valid;
assign soc_ethmac_preamble_inserter_source_ready = soc_ethmac_tx_gap_inserter_sink_ready;
assign soc_ethmac_tx_gap_inserter_sink_first = soc_ethmac_preamble_inserter_source_first;
assign soc_ethmac_tx_gap_inserter_sink_last = soc_ethmac_preamble_inserter_source_last;
assign soc_ethmac_tx_gap_inserter_sink_payload_data = soc_ethmac_preamble_inserter_source_payload_data;
assign soc_ethmac_tx_gap_inserter_sink_payload_last_be = soc_ethmac_preamble_inserter_source_payload_last_be;
assign soc_ethmac_tx_gap_inserter_sink_payload_error = soc_ethmac_preamble_inserter_source_payload_error;
assign soc_ethphy_sink_valid = soc_ethmac_tx_gap_inserter_source_valid;
assign soc_ethmac_tx_gap_inserter_source_ready = soc_ethphy_sink_ready;
assign soc_ethphy_sink_first = soc_ethmac_tx_gap_inserter_source_first;
assign soc_ethphy_sink_last = soc_ethmac_tx_gap_inserter_source_last;
assign soc_ethphy_sink_payload_data = soc_ethmac_tx_gap_inserter_source_payload_data;
assign soc_ethphy_sink_payload_last_be = soc_ethmac_tx_gap_inserter_source_payload_last_be;
assign soc_ethphy_sink_payload_error = soc_ethmac_tx_gap_inserter_source_payload_error;
assign soc_ethmac_preamble_checker_sink_valid = soc_ethphy_source_valid;
assign soc_ethphy_source_ready = soc_ethmac_preamble_checker_sink_ready;
assign soc_ethmac_preamble_checker_sink_first = soc_ethphy_source_first;
assign soc_ethmac_preamble_checker_sink_last = soc_ethphy_source_last;
assign soc_ethmac_preamble_checker_sink_payload_data = soc_ethphy_source_payload_data;
assign soc_ethmac_preamble_checker_sink_payload_last_be = soc_ethphy_source_payload_last_be;
assign soc_ethmac_preamble_checker_sink_payload_error = soc_ethphy_source_payload_error;
assign soc_ethmac_crc32_checker_sink_sink_valid = soc_ethmac_preamble_checker_source_valid;
assign soc_ethmac_preamble_checker_source_ready = soc_ethmac_crc32_checker_sink_sink_ready;
assign soc_ethmac_crc32_checker_sink_sink_first = soc_ethmac_preamble_checker_source_first;
assign soc_ethmac_crc32_checker_sink_sink_last = soc_ethmac_preamble_checker_source_last;
assign soc_ethmac_crc32_checker_sink_sink_payload_data = soc_ethmac_preamble_checker_source_payload_data;
assign soc_ethmac_crc32_checker_sink_sink_payload_last_be = soc_ethmac_preamble_checker_source_payload_last_be;
assign soc_ethmac_crc32_checker_sink_sink_payload_error = soc_ethmac_preamble_checker_source_payload_error;
assign soc_ethmac_padding_checker_sink_valid = soc_ethmac_crc32_checker_source_source_valid;
assign soc_ethmac_crc32_checker_source_source_ready = soc_ethmac_padding_checker_sink_ready;
assign soc_ethmac_padding_checker_sink_first = soc_ethmac_crc32_checker_source_source_first;
assign soc_ethmac_padding_checker_sink_last = soc_ethmac_crc32_checker_source_source_last;
assign soc_ethmac_padding_checker_sink_payload_data = soc_ethmac_crc32_checker_source_source_payload_data;
assign soc_ethmac_padding_checker_sink_payload_last_be = soc_ethmac_crc32_checker_source_source_payload_last_be;
assign soc_ethmac_padding_checker_sink_payload_error = soc_ethmac_crc32_checker_source_source_payload_error;
assign soc_ethmac_rx_last_be_sink_valid = soc_ethmac_padding_checker_source_valid;
assign soc_ethmac_padding_checker_source_ready = soc_ethmac_rx_last_be_sink_ready;
assign soc_ethmac_rx_last_be_sink_first = soc_ethmac_padding_checker_source_first;
assign soc_ethmac_rx_last_be_sink_last = soc_ethmac_padding_checker_source_last;
assign soc_ethmac_rx_last_be_sink_payload_data = soc_ethmac_padding_checker_source_payload_data;
assign soc_ethmac_rx_last_be_sink_payload_last_be = soc_ethmac_padding_checker_source_payload_last_be;
assign soc_ethmac_rx_last_be_sink_payload_error = soc_ethmac_padding_checker_source_payload_error;
assign soc_ethmac_rx_converter_sink_valid = soc_ethmac_rx_last_be_source_valid;
assign soc_ethmac_rx_last_be_source_ready = soc_ethmac_rx_converter_sink_ready;
assign soc_ethmac_rx_converter_sink_first = soc_ethmac_rx_last_be_source_first;
assign soc_ethmac_rx_converter_sink_last = soc_ethmac_rx_last_be_source_last;
assign soc_ethmac_rx_converter_sink_payload_data = soc_ethmac_rx_last_be_source_payload_data;
assign soc_ethmac_rx_converter_sink_payload_last_be = soc_ethmac_rx_last_be_source_payload_last_be;
assign soc_ethmac_rx_converter_sink_payload_error = soc_ethmac_rx_last_be_source_payload_error;
assign soc_ethmac_rx_cdc_sink_valid = soc_ethmac_rx_converter_source_valid;
assign soc_ethmac_rx_converter_source_ready = soc_ethmac_rx_cdc_sink_ready;
assign soc_ethmac_rx_cdc_sink_first = soc_ethmac_rx_converter_source_first;
assign soc_ethmac_rx_cdc_sink_last = soc_ethmac_rx_converter_source_last;
assign soc_ethmac_rx_cdc_sink_payload_data = soc_ethmac_rx_converter_source_payload_data;
assign soc_ethmac_rx_cdc_sink_payload_last_be = soc_ethmac_rx_converter_source_payload_last_be;
assign soc_ethmac_rx_cdc_sink_payload_error = soc_ethmac_rx_converter_source_payload_error;
assign soc_ethmac_writer_sink_sink_valid = soc_ethmac_sink_valid;
assign soc_ethmac_sink_ready = soc_ethmac_writer_sink_sink_ready;
assign soc_ethmac_writer_sink_sink_first = soc_ethmac_sink_first;
assign soc_ethmac_writer_sink_sink_last = soc_ethmac_sink_last;
assign soc_ethmac_writer_sink_sink_payload_data = soc_ethmac_sink_payload_data;
assign soc_ethmac_writer_sink_sink_payload_last_be = soc_ethmac_sink_payload_last_be;
assign soc_ethmac_writer_sink_sink_payload_error = soc_ethmac_sink_payload_error;
assign soc_ethmac_source_valid = soc_ethmac_reader_source_source_valid;
assign soc_ethmac_reader_source_source_ready = soc_ethmac_source_ready;
assign soc_ethmac_source_first = soc_ethmac_reader_source_source_first;
assign soc_ethmac_source_last = soc_ethmac_reader_source_source_last;
assign soc_ethmac_source_payload_data = soc_ethmac_reader_source_source_payload_data;
assign soc_ethmac_source_payload_last_be = soc_ethmac_reader_source_source_payload_last_be;
assign soc_ethmac_source_payload_error = soc_ethmac_reader_source_source_payload_error;

// synthesis translate_off
reg dummy_d_88;
// synthesis translate_on
always @(*) begin
	soc_ethmac_writer_increment <= 3'd0;
	if (soc_ethmac_writer_sink_sink_payload_last_be[3]) begin
		soc_ethmac_writer_increment <= 1'd1;
	end else begin
		if (soc_ethmac_writer_sink_sink_payload_last_be[2]) begin
			soc_ethmac_writer_increment <= 2'd2;
		end else begin
			if (soc_ethmac_writer_sink_sink_payload_last_be[1]) begin
				soc_ethmac_writer_increment <= 2'd3;
			end else begin
				soc_ethmac_writer_increment <= 3'd4;
			end
		end
	end
// synthesis translate_off
	dummy_d_88 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_writer_fifo_sink_payload_slot = soc_ethmac_writer_slot;
assign soc_ethmac_writer_fifo_sink_payload_length = soc_ethmac_writer_counter;
assign soc_ethmac_writer_fifo_source_ready = soc_ethmac_writer_available_clear;
assign soc_ethmac_writer_available_trigger = soc_ethmac_writer_fifo_source_valid;
assign soc_ethmac_writer_slot_status = soc_ethmac_writer_fifo_source_payload_slot;
assign soc_ethmac_writer_length_status = soc_ethmac_writer_fifo_source_payload_length;

// synthesis translate_off
reg dummy_d_89;
// synthesis translate_on
always @(*) begin
	soc_ethmac_writer_memory0_adr <= 9'd0;
	soc_ethmac_writer_memory0_we <= 1'd0;
	soc_ethmac_writer_memory0_dat_w <= 32'd0;
	soc_ethmac_writer_memory1_adr <= 9'd0;
	soc_ethmac_writer_memory1_we <= 1'd0;
	soc_ethmac_writer_memory1_dat_w <= 32'd0;
	case (soc_ethmac_writer_slot)
		1'd0: begin
			soc_ethmac_writer_memory0_adr <= soc_ethmac_writer_counter[31:2];
			soc_ethmac_writer_memory0_dat_w <= soc_ethmac_writer_sink_sink_payload_data;
			if ((soc_ethmac_writer_sink_sink_valid & soc_ethmac_writer_ongoing)) begin
				soc_ethmac_writer_memory0_we <= 4'd15;
			end
		end
		1'd1: begin
			soc_ethmac_writer_memory1_adr <= soc_ethmac_writer_counter[31:2];
			soc_ethmac_writer_memory1_dat_w <= soc_ethmac_writer_sink_sink_payload_data;
			if ((soc_ethmac_writer_sink_sink_valid & soc_ethmac_writer_ongoing)) begin
				soc_ethmac_writer_memory1_we <= 4'd15;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_89 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_writer_status_w = soc_ethmac_writer_available_status;

// synthesis translate_off
reg dummy_d_90;
// synthesis translate_on
always @(*) begin
	soc_ethmac_writer_available_clear <= 1'd0;
	if ((soc_ethmac_writer_pending_re & soc_ethmac_writer_pending_r)) begin
		soc_ethmac_writer_available_clear <= 1'd1;
	end
// synthesis translate_off
	dummy_d_90 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_writer_pending_w = soc_ethmac_writer_available_pending;
assign soc_ethmac_writer_irq = (soc_ethmac_writer_pending_w & soc_ethmac_writer_storage);
assign soc_ethmac_writer_available_status = soc_ethmac_writer_available_trigger;
assign soc_ethmac_writer_available_pending = soc_ethmac_writer_available_trigger;
assign soc_ethmac_writer_fifo_syncfifo_din = {soc_ethmac_writer_fifo_fifo_in_last, soc_ethmac_writer_fifo_fifo_in_first, soc_ethmac_writer_fifo_fifo_in_payload_length, soc_ethmac_writer_fifo_fifo_in_payload_slot};
assign {soc_ethmac_writer_fifo_fifo_out_last, soc_ethmac_writer_fifo_fifo_out_first, soc_ethmac_writer_fifo_fifo_out_payload_length, soc_ethmac_writer_fifo_fifo_out_payload_slot} = soc_ethmac_writer_fifo_syncfifo_dout;
assign soc_ethmac_writer_fifo_sink_ready = soc_ethmac_writer_fifo_syncfifo_writable;
assign soc_ethmac_writer_fifo_syncfifo_we = soc_ethmac_writer_fifo_sink_valid;
assign soc_ethmac_writer_fifo_fifo_in_first = soc_ethmac_writer_fifo_sink_first;
assign soc_ethmac_writer_fifo_fifo_in_last = soc_ethmac_writer_fifo_sink_last;
assign soc_ethmac_writer_fifo_fifo_in_payload_slot = soc_ethmac_writer_fifo_sink_payload_slot;
assign soc_ethmac_writer_fifo_fifo_in_payload_length = soc_ethmac_writer_fifo_sink_payload_length;
assign soc_ethmac_writer_fifo_source_valid = soc_ethmac_writer_fifo_syncfifo_readable;
assign soc_ethmac_writer_fifo_source_first = soc_ethmac_writer_fifo_fifo_out_first;
assign soc_ethmac_writer_fifo_source_last = soc_ethmac_writer_fifo_fifo_out_last;
assign soc_ethmac_writer_fifo_source_payload_slot = soc_ethmac_writer_fifo_fifo_out_payload_slot;
assign soc_ethmac_writer_fifo_source_payload_length = soc_ethmac_writer_fifo_fifo_out_payload_length;
assign soc_ethmac_writer_fifo_syncfifo_re = soc_ethmac_writer_fifo_source_ready;

// synthesis translate_off
reg dummy_d_91;
// synthesis translate_on
always @(*) begin
	soc_ethmac_writer_fifo_wrport_adr <= 1'd0;
	if (soc_ethmac_writer_fifo_replace) begin
		soc_ethmac_writer_fifo_wrport_adr <= (soc_ethmac_writer_fifo_produce - 1'd1);
	end else begin
		soc_ethmac_writer_fifo_wrport_adr <= soc_ethmac_writer_fifo_produce;
	end
// synthesis translate_off
	dummy_d_91 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_writer_fifo_wrport_dat_w = soc_ethmac_writer_fifo_syncfifo_din;
assign soc_ethmac_writer_fifo_wrport_we = (soc_ethmac_writer_fifo_syncfifo_we & (soc_ethmac_writer_fifo_syncfifo_writable | soc_ethmac_writer_fifo_replace));
assign soc_ethmac_writer_fifo_do_read = (soc_ethmac_writer_fifo_syncfifo_readable & soc_ethmac_writer_fifo_syncfifo_re);
assign soc_ethmac_writer_fifo_rdport_adr = soc_ethmac_writer_fifo_consume;
assign soc_ethmac_writer_fifo_syncfifo_dout = soc_ethmac_writer_fifo_rdport_dat_r;
assign soc_ethmac_writer_fifo_syncfifo_writable = (soc_ethmac_writer_fifo_level != 2'd2);
assign soc_ethmac_writer_fifo_syncfifo_readable = (soc_ethmac_writer_fifo_level != 1'd0);

// synthesis translate_off
reg dummy_d_92;
// synthesis translate_on
always @(*) begin
	soc_ethmac_writer_counter_reset <= 1'd0;
	soc_ethmac_writer_counter_ce <= 1'd0;
	soc_ethmac_writer_slot_ce <= 1'd0;
	soc_ethmac_writer_ongoing <= 1'd0;
	vns_liteethmacsramwriter_next_state <= 3'd0;
	soc_ethmac_writer_fifo_sink_valid <= 1'd0;
	soc_ethmac_writer_errors_status_next_value <= 32'd0;
	soc_ethmac_writer_errors_status_next_value_ce <= 1'd0;
	vns_liteethmacsramwriter_next_state <= vns_liteethmacsramwriter_state;
	case (vns_liteethmacsramwriter_state)
		1'd1: begin
			if (soc_ethmac_writer_sink_sink_valid) begin
				if ((soc_ethmac_writer_counter == 11'd1530)) begin
					vns_liteethmacsramwriter_next_state <= 2'd3;
				end else begin
					soc_ethmac_writer_counter_ce <= 1'd1;
					soc_ethmac_writer_ongoing <= 1'd1;
				end
				if (soc_ethmac_writer_sink_sink_last) begin
					if (((soc_ethmac_writer_sink_sink_payload_error & soc_ethmac_writer_sink_sink_payload_last_be) != 1'd0)) begin
						vns_liteethmacsramwriter_next_state <= 2'd2;
					end else begin
						vns_liteethmacsramwriter_next_state <= 3'd4;
					end
				end
			end
		end
		2'd2: begin
			soc_ethmac_writer_counter_reset <= 1'd1;
			vns_liteethmacsramwriter_next_state <= 1'd0;
		end
		2'd3: begin
			if ((soc_ethmac_writer_sink_sink_valid & soc_ethmac_writer_sink_sink_last)) begin
				vns_liteethmacsramwriter_next_state <= 3'd4;
			end
		end
		3'd4: begin
			soc_ethmac_writer_counter_reset <= 1'd1;
			soc_ethmac_writer_slot_ce <= 1'd1;
			soc_ethmac_writer_fifo_sink_valid <= 1'd1;
			vns_liteethmacsramwriter_next_state <= 1'd0;
		end
		default: begin
			if (soc_ethmac_writer_sink_sink_valid) begin
				if (soc_ethmac_writer_fifo_sink_ready) begin
					soc_ethmac_writer_ongoing <= 1'd1;
					soc_ethmac_writer_counter_ce <= 1'd1;
					vns_liteethmacsramwriter_next_state <= 1'd1;
				end else begin
					soc_ethmac_writer_errors_status_next_value <= (soc_ethmac_writer_errors_status + 1'd1);
					soc_ethmac_writer_errors_status_next_value_ce <= 1'd1;
					vns_liteethmacsramwriter_next_state <= 2'd3;
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_92 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_reader_fifo_sink_valid = soc_ethmac_reader_start_re;
assign soc_ethmac_reader_fifo_sink_payload_slot = soc_ethmac_reader_slot_storage;
assign soc_ethmac_reader_fifo_sink_payload_length = soc_ethmac_reader_length_storage;
assign soc_ethmac_reader_ready_status = soc_ethmac_reader_fifo_sink_ready;
assign soc_ethmac_reader_level_status = soc_ethmac_reader_fifo_level;

// synthesis translate_off
reg dummy_d_93;
// synthesis translate_on
always @(*) begin
	soc_ethmac_reader_source_source_payload_last_be <= 4'd0;
	if (soc_ethmac_reader_last) begin
		if ((soc_ethmac_reader_fifo_source_payload_length[1:0] == 2'd3)) begin
			soc_ethmac_reader_source_source_payload_last_be <= 2'd2;
		end else begin
			if ((soc_ethmac_reader_fifo_source_payload_length[1:0] == 2'd2)) begin
				soc_ethmac_reader_source_source_payload_last_be <= 3'd4;
			end else begin
				if ((soc_ethmac_reader_fifo_source_payload_length[1:0] == 1'd1)) begin
					soc_ethmac_reader_source_source_payload_last_be <= 4'd8;
				end else begin
					soc_ethmac_reader_source_source_payload_last_be <= 1'd1;
				end
			end
		end
	end
// synthesis translate_off
	dummy_d_93 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_reader_last = ((soc_ethmac_reader_counter + 3'd4) >= soc_ethmac_reader_fifo_source_payload_length);
assign soc_ethmac_reader_memory0_adr = soc_ethmac_reader_counter[10:2];
assign soc_ethmac_reader_memory1_adr = soc_ethmac_reader_counter[10:2];

// synthesis translate_off
reg dummy_d_94;
// synthesis translate_on
always @(*) begin
	soc_ethmac_reader_source_source_payload_data <= 32'd0;
	case (soc_ethmac_reader_fifo_source_payload_slot)
		1'd0: begin
			soc_ethmac_reader_source_source_payload_data <= soc_ethmac_reader_memory0_dat_r;
		end
		1'd1: begin
			soc_ethmac_reader_source_source_payload_data <= soc_ethmac_reader_memory1_dat_r;
		end
	endcase
// synthesis translate_off
	dummy_d_94 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_reader_eventmanager_status_w = soc_ethmac_reader_done_status;

// synthesis translate_off
reg dummy_d_95;
// synthesis translate_on
always @(*) begin
	soc_ethmac_reader_done_clear <= 1'd0;
	if ((soc_ethmac_reader_eventmanager_pending_re & soc_ethmac_reader_eventmanager_pending_r)) begin
		soc_ethmac_reader_done_clear <= 1'd1;
	end
// synthesis translate_off
	dummy_d_95 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_reader_eventmanager_pending_w = soc_ethmac_reader_done_pending;
assign soc_ethmac_reader_irq = (soc_ethmac_reader_eventmanager_pending_w & soc_ethmac_reader_eventmanager_storage);
assign soc_ethmac_reader_done_status = 1'd0;
assign soc_ethmac_reader_fifo_syncfifo_din = {soc_ethmac_reader_fifo_fifo_in_last, soc_ethmac_reader_fifo_fifo_in_first, soc_ethmac_reader_fifo_fifo_in_payload_length, soc_ethmac_reader_fifo_fifo_in_payload_slot};
assign {soc_ethmac_reader_fifo_fifo_out_last, soc_ethmac_reader_fifo_fifo_out_first, soc_ethmac_reader_fifo_fifo_out_payload_length, soc_ethmac_reader_fifo_fifo_out_payload_slot} = soc_ethmac_reader_fifo_syncfifo_dout;
assign soc_ethmac_reader_fifo_sink_ready = soc_ethmac_reader_fifo_syncfifo_writable;
assign soc_ethmac_reader_fifo_syncfifo_we = soc_ethmac_reader_fifo_sink_valid;
assign soc_ethmac_reader_fifo_fifo_in_first = soc_ethmac_reader_fifo_sink_first;
assign soc_ethmac_reader_fifo_fifo_in_last = soc_ethmac_reader_fifo_sink_last;
assign soc_ethmac_reader_fifo_fifo_in_payload_slot = soc_ethmac_reader_fifo_sink_payload_slot;
assign soc_ethmac_reader_fifo_fifo_in_payload_length = soc_ethmac_reader_fifo_sink_payload_length;
assign soc_ethmac_reader_fifo_source_valid = soc_ethmac_reader_fifo_syncfifo_readable;
assign soc_ethmac_reader_fifo_source_first = soc_ethmac_reader_fifo_fifo_out_first;
assign soc_ethmac_reader_fifo_source_last = soc_ethmac_reader_fifo_fifo_out_last;
assign soc_ethmac_reader_fifo_source_payload_slot = soc_ethmac_reader_fifo_fifo_out_payload_slot;
assign soc_ethmac_reader_fifo_source_payload_length = soc_ethmac_reader_fifo_fifo_out_payload_length;
assign soc_ethmac_reader_fifo_syncfifo_re = soc_ethmac_reader_fifo_source_ready;

// synthesis translate_off
reg dummy_d_96;
// synthesis translate_on
always @(*) begin
	soc_ethmac_reader_fifo_wrport_adr <= 1'd0;
	if (soc_ethmac_reader_fifo_replace) begin
		soc_ethmac_reader_fifo_wrport_adr <= (soc_ethmac_reader_fifo_produce - 1'd1);
	end else begin
		soc_ethmac_reader_fifo_wrport_adr <= soc_ethmac_reader_fifo_produce;
	end
// synthesis translate_off
	dummy_d_96 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_reader_fifo_wrport_dat_w = soc_ethmac_reader_fifo_syncfifo_din;
assign soc_ethmac_reader_fifo_wrport_we = (soc_ethmac_reader_fifo_syncfifo_we & (soc_ethmac_reader_fifo_syncfifo_writable | soc_ethmac_reader_fifo_replace));
assign soc_ethmac_reader_fifo_do_read = (soc_ethmac_reader_fifo_syncfifo_readable & soc_ethmac_reader_fifo_syncfifo_re);
assign soc_ethmac_reader_fifo_rdport_adr = soc_ethmac_reader_fifo_consume;
assign soc_ethmac_reader_fifo_syncfifo_dout = soc_ethmac_reader_fifo_rdport_dat_r;
assign soc_ethmac_reader_fifo_syncfifo_writable = (soc_ethmac_reader_fifo_level != 2'd2);
assign soc_ethmac_reader_fifo_syncfifo_readable = (soc_ethmac_reader_fifo_level != 1'd0);

// synthesis translate_off
reg dummy_d_97;
// synthesis translate_on
always @(*) begin
	soc_ethmac_reader_source_source_valid <= 1'd0;
	soc_ethmac_reader_counter_reset <= 1'd0;
	soc_ethmac_reader_counter_ce <= 1'd0;
	soc_ethmac_reader_fifo_source_ready <= 1'd0;
	vns_liteethmacsramreader_next_state <= 2'd0;
	soc_ethmac_reader_source_source_last <= 1'd0;
	soc_ethmac_reader_done_trigger <= 1'd0;
	vns_liteethmacsramreader_next_state <= vns_liteethmacsramreader_state;
	case (vns_liteethmacsramreader_state)
		1'd1: begin
			if ((~soc_ethmac_reader_last_d)) begin
				vns_liteethmacsramreader_next_state <= 2'd2;
			end else begin
				vns_liteethmacsramreader_next_state <= 2'd3;
			end
		end
		2'd2: begin
			soc_ethmac_reader_source_source_valid <= 1'd1;
			soc_ethmac_reader_source_source_last <= soc_ethmac_reader_last;
			if (soc_ethmac_reader_source_source_ready) begin
				soc_ethmac_reader_counter_ce <= (~soc_ethmac_reader_last);
				vns_liteethmacsramreader_next_state <= 1'd1;
			end
		end
		2'd3: begin
			soc_ethmac_reader_fifo_source_ready <= 1'd1;
			soc_ethmac_reader_done_trigger <= 1'd1;
			vns_liteethmacsramreader_next_state <= 1'd0;
		end
		default: begin
			soc_ethmac_reader_counter_reset <= 1'd1;
			if (soc_ethmac_reader_fifo_source_valid) begin
				vns_liteethmacsramreader_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_97 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_ev_irq = (soc_ethmac_writer_irq | soc_ethmac_reader_irq);
assign soc_ethmac_sram0_adr0 = soc_ethmac_sram0_bus_adr0[8:0];
assign soc_ethmac_sram0_bus_dat_r0 = soc_ethmac_sram0_dat_r0;
assign soc_ethmac_sram1_adr0 = soc_ethmac_sram1_bus_adr0[8:0];
assign soc_ethmac_sram1_bus_dat_r0 = soc_ethmac_sram1_dat_r0;

// synthesis translate_off
reg dummy_d_98;
// synthesis translate_on
always @(*) begin
	soc_ethmac_sram0_we <= 4'd0;
	soc_ethmac_sram0_we[0] <= (((soc_ethmac_sram0_bus_cyc1 & soc_ethmac_sram0_bus_stb1) & soc_ethmac_sram0_bus_we1) & soc_ethmac_sram0_bus_sel1[0]);
	soc_ethmac_sram0_we[1] <= (((soc_ethmac_sram0_bus_cyc1 & soc_ethmac_sram0_bus_stb1) & soc_ethmac_sram0_bus_we1) & soc_ethmac_sram0_bus_sel1[1]);
	soc_ethmac_sram0_we[2] <= (((soc_ethmac_sram0_bus_cyc1 & soc_ethmac_sram0_bus_stb1) & soc_ethmac_sram0_bus_we1) & soc_ethmac_sram0_bus_sel1[2]);
	soc_ethmac_sram0_we[3] <= (((soc_ethmac_sram0_bus_cyc1 & soc_ethmac_sram0_bus_stb1) & soc_ethmac_sram0_bus_we1) & soc_ethmac_sram0_bus_sel1[3]);
// synthesis translate_off
	dummy_d_98 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_sram0_adr1 = soc_ethmac_sram0_bus_adr1[8:0];
assign soc_ethmac_sram0_bus_dat_r1 = soc_ethmac_sram0_dat_r1;
assign soc_ethmac_sram0_dat_w = soc_ethmac_sram0_bus_dat_w1;

// synthesis translate_off
reg dummy_d_99;
// synthesis translate_on
always @(*) begin
	soc_ethmac_sram1_we <= 4'd0;
	soc_ethmac_sram1_we[0] <= (((soc_ethmac_sram1_bus_cyc1 & soc_ethmac_sram1_bus_stb1) & soc_ethmac_sram1_bus_we1) & soc_ethmac_sram1_bus_sel1[0]);
	soc_ethmac_sram1_we[1] <= (((soc_ethmac_sram1_bus_cyc1 & soc_ethmac_sram1_bus_stb1) & soc_ethmac_sram1_bus_we1) & soc_ethmac_sram1_bus_sel1[1]);
	soc_ethmac_sram1_we[2] <= (((soc_ethmac_sram1_bus_cyc1 & soc_ethmac_sram1_bus_stb1) & soc_ethmac_sram1_bus_we1) & soc_ethmac_sram1_bus_sel1[2]);
	soc_ethmac_sram1_we[3] <= (((soc_ethmac_sram1_bus_cyc1 & soc_ethmac_sram1_bus_stb1) & soc_ethmac_sram1_bus_we1) & soc_ethmac_sram1_bus_sel1[3]);
// synthesis translate_off
	dummy_d_99 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_sram1_adr1 = soc_ethmac_sram1_bus_adr1[8:0];
assign soc_ethmac_sram1_bus_dat_r1 = soc_ethmac_sram1_dat_r1;
assign soc_ethmac_sram1_dat_w = soc_ethmac_sram1_bus_dat_w1;

// synthesis translate_off
reg dummy_d_100;
// synthesis translate_on
always @(*) begin
	soc_ethmac_slave_sel <= 4'd0;
	soc_ethmac_slave_sel[0] <= (soc_ethmac_bus_adr[10:9] == 1'd0);
	soc_ethmac_slave_sel[1] <= (soc_ethmac_bus_adr[10:9] == 1'd1);
	soc_ethmac_slave_sel[2] <= (soc_ethmac_bus_adr[10:9] == 2'd2);
	soc_ethmac_slave_sel[3] <= (soc_ethmac_bus_adr[10:9] == 2'd3);
// synthesis translate_off
	dummy_d_100 <= dummy_s;
// synthesis translate_on
end
assign soc_ethmac_sram0_bus_adr0 = soc_ethmac_bus_adr;
assign soc_ethmac_sram0_bus_dat_w0 = soc_ethmac_bus_dat_w;
assign soc_ethmac_sram0_bus_sel0 = soc_ethmac_bus_sel;
assign soc_ethmac_sram0_bus_stb0 = soc_ethmac_bus_stb;
assign soc_ethmac_sram0_bus_we0 = soc_ethmac_bus_we;
assign soc_ethmac_sram0_bus_cti0 = soc_ethmac_bus_cti;
assign soc_ethmac_sram0_bus_bte0 = soc_ethmac_bus_bte;
assign soc_ethmac_sram1_bus_adr0 = soc_ethmac_bus_adr;
assign soc_ethmac_sram1_bus_dat_w0 = soc_ethmac_bus_dat_w;
assign soc_ethmac_sram1_bus_sel0 = soc_ethmac_bus_sel;
assign soc_ethmac_sram1_bus_stb0 = soc_ethmac_bus_stb;
assign soc_ethmac_sram1_bus_we0 = soc_ethmac_bus_we;
assign soc_ethmac_sram1_bus_cti0 = soc_ethmac_bus_cti;
assign soc_ethmac_sram1_bus_bte0 = soc_ethmac_bus_bte;
assign soc_ethmac_sram0_bus_adr1 = soc_ethmac_bus_adr;
assign soc_ethmac_sram0_bus_dat_w1 = soc_ethmac_bus_dat_w;
assign soc_ethmac_sram0_bus_sel1 = soc_ethmac_bus_sel;
assign soc_ethmac_sram0_bus_stb1 = soc_ethmac_bus_stb;
assign soc_ethmac_sram0_bus_we1 = soc_ethmac_bus_we;
assign soc_ethmac_sram0_bus_cti1 = soc_ethmac_bus_cti;
assign soc_ethmac_sram0_bus_bte1 = soc_ethmac_bus_bte;
assign soc_ethmac_sram1_bus_adr1 = soc_ethmac_bus_adr;
assign soc_ethmac_sram1_bus_dat_w1 = soc_ethmac_bus_dat_w;
assign soc_ethmac_sram1_bus_sel1 = soc_ethmac_bus_sel;
assign soc_ethmac_sram1_bus_stb1 = soc_ethmac_bus_stb;
assign soc_ethmac_sram1_bus_we1 = soc_ethmac_bus_we;
assign soc_ethmac_sram1_bus_cti1 = soc_ethmac_bus_cti;
assign soc_ethmac_sram1_bus_bte1 = soc_ethmac_bus_bte;
assign soc_ethmac_sram0_bus_cyc0 = (soc_ethmac_bus_cyc & soc_ethmac_slave_sel[0]);
assign soc_ethmac_sram1_bus_cyc0 = (soc_ethmac_bus_cyc & soc_ethmac_slave_sel[1]);
assign soc_ethmac_sram0_bus_cyc1 = (soc_ethmac_bus_cyc & soc_ethmac_slave_sel[2]);
assign soc_ethmac_sram1_bus_cyc1 = (soc_ethmac_bus_cyc & soc_ethmac_slave_sel[3]);
assign soc_ethmac_bus_ack = (((soc_ethmac_sram0_bus_ack0 | soc_ethmac_sram1_bus_ack0) | soc_ethmac_sram0_bus_ack1) | soc_ethmac_sram1_bus_ack1);
assign soc_ethmac_bus_err = (((soc_ethmac_sram0_bus_err0 | soc_ethmac_sram1_bus_err0) | soc_ethmac_sram0_bus_err1) | soc_ethmac_sram1_bus_err1);
assign soc_ethmac_bus_dat_r = (((({32{soc_ethmac_slave_sel_r[0]}} & soc_ethmac_sram0_bus_dat_r0) | ({32{soc_ethmac_slave_sel_r[1]}} & soc_ethmac_sram1_bus_dat_r0)) | ({32{soc_ethmac_slave_sel_r[2]}} & soc_ethmac_sram0_bus_dat_r1)) | ({32{soc_ethmac_slave_sel_r[3]}} & soc_ethmac_sram1_bus_dat_r1));
assign soc_netsoc_interface0_wb_sdram_adr = vns_rhs_array_muxed36;
assign soc_netsoc_interface0_wb_sdram_dat_w = vns_rhs_array_muxed37;
assign soc_netsoc_interface0_wb_sdram_sel = vns_rhs_array_muxed38;
assign soc_netsoc_interface0_wb_sdram_cyc = vns_rhs_array_muxed39;
assign soc_netsoc_interface0_wb_sdram_stb = vns_rhs_array_muxed40;
assign soc_netsoc_interface0_wb_sdram_we = vns_rhs_array_muxed41;
assign soc_netsoc_interface0_wb_sdram_cti = vns_rhs_array_muxed42;
assign soc_netsoc_interface0_wb_sdram_bte = vns_rhs_array_muxed43;
assign soc_netsoc_interface1_wb_sdram_dat_r = soc_netsoc_interface0_wb_sdram_dat_r;
assign soc_netsoc_interface1_wb_sdram_ack = (soc_netsoc_interface0_wb_sdram_ack & (vns_wb_sdram_con_grant == 1'd0));
assign soc_netsoc_interface1_wb_sdram_err = (soc_netsoc_interface0_wb_sdram_err & (vns_wb_sdram_con_grant == 1'd0));
assign vns_wb_sdram_con_request = {soc_netsoc_interface1_wb_sdram_cyc};
assign vns_wb_sdram_con_grant = 1'd0;
assign vns_netsoc_shared_adr = vns_rhs_array_muxed44;
assign vns_netsoc_shared_dat_w = vns_rhs_array_muxed45;
assign vns_netsoc_shared_sel = vns_rhs_array_muxed46;
assign vns_netsoc_shared_cyc = vns_rhs_array_muxed47;
assign vns_netsoc_shared_stb = vns_rhs_array_muxed48;
assign vns_netsoc_shared_we = vns_rhs_array_muxed49;
assign vns_netsoc_shared_cti = vns_rhs_array_muxed50;
assign vns_netsoc_shared_bte = vns_rhs_array_muxed51;
assign soc_netsoc_netsoc_ibus_dat_r = vns_netsoc_shared_dat_r;
assign soc_netsoc_netsoc_dbus_dat_r = vns_netsoc_shared_dat_r;
assign soc_netsoc_bridge_wishbone_dat_r = vns_netsoc_shared_dat_r;
assign soc_netsoc_netsoc_ibus_ack = (vns_netsoc_shared_ack & (vns_netsoc_grant == 1'd0));
assign soc_netsoc_netsoc_dbus_ack = (vns_netsoc_shared_ack & (vns_netsoc_grant == 1'd1));
assign soc_netsoc_bridge_wishbone_ack = (vns_netsoc_shared_ack & (vns_netsoc_grant == 2'd2));
assign soc_netsoc_netsoc_ibus_err = (vns_netsoc_shared_err & (vns_netsoc_grant == 1'd0));
assign soc_netsoc_netsoc_dbus_err = (vns_netsoc_shared_err & (vns_netsoc_grant == 1'd1));
assign soc_netsoc_bridge_wishbone_err = (vns_netsoc_shared_err & (vns_netsoc_grant == 2'd2));
assign vns_netsoc_request = {soc_netsoc_bridge_wishbone_cyc, soc_netsoc_netsoc_dbus_cyc, soc_netsoc_netsoc_ibus_cyc};

// synthesis translate_off
reg dummy_d_101;
// synthesis translate_on
always @(*) begin
	vns_netsoc_slave_sel <= 6'd0;
	vns_netsoc_slave_sel[0] <= (vns_netsoc_shared_adr[28:26] == 1'd0);
	vns_netsoc_slave_sel[1] <= (vns_netsoc_shared_adr[28:26] == 1'd1);
	vns_netsoc_slave_sel[2] <= (vns_netsoc_shared_adr[28:26] == 3'd6);
	vns_netsoc_slave_sel[3] <= (vns_netsoc_shared_adr[28:26] == 3'd4);
	vns_netsoc_slave_sel[4] <= (vns_netsoc_shared_adr[28:26] == 2'd2);
	vns_netsoc_slave_sel[5] <= (vns_netsoc_shared_adr[28:26] == 2'd3);
// synthesis translate_off
	dummy_d_101 <= dummy_s;
// synthesis translate_on
end
assign soc_netsoc_netsoc_rom_bus_adr = vns_netsoc_shared_adr;
assign soc_netsoc_netsoc_rom_bus_dat_w = vns_netsoc_shared_dat_w;
assign soc_netsoc_netsoc_rom_bus_sel = vns_netsoc_shared_sel;
assign soc_netsoc_netsoc_rom_bus_stb = vns_netsoc_shared_stb;
assign soc_netsoc_netsoc_rom_bus_we = vns_netsoc_shared_we;
assign soc_netsoc_netsoc_rom_bus_cti = vns_netsoc_shared_cti;
assign soc_netsoc_netsoc_rom_bus_bte = vns_netsoc_shared_bte;
assign soc_netsoc_netsoc_sram_bus_adr = vns_netsoc_shared_adr;
assign soc_netsoc_netsoc_sram_bus_dat_w = vns_netsoc_shared_dat_w;
assign soc_netsoc_netsoc_sram_bus_sel = vns_netsoc_shared_sel;
assign soc_netsoc_netsoc_sram_bus_stb = vns_netsoc_shared_stb;
assign soc_netsoc_netsoc_sram_bus_we = vns_netsoc_shared_we;
assign soc_netsoc_netsoc_sram_bus_cti = vns_netsoc_shared_cti;
assign soc_netsoc_netsoc_sram_bus_bte = vns_netsoc_shared_bte;
assign soc_netsoc_netsoc_bus_wishbone_adr = vns_netsoc_shared_adr;
assign soc_netsoc_netsoc_bus_wishbone_dat_w = vns_netsoc_shared_dat_w;
assign soc_netsoc_netsoc_bus_wishbone_sel = vns_netsoc_shared_sel;
assign soc_netsoc_netsoc_bus_wishbone_stb = vns_netsoc_shared_stb;
assign soc_netsoc_netsoc_bus_wishbone_we = vns_netsoc_shared_we;
assign soc_netsoc_netsoc_bus_wishbone_cti = vns_netsoc_shared_cti;
assign soc_netsoc_netsoc_bus_wishbone_bte = vns_netsoc_shared_bte;
assign soc_netsoc_interface1_wb_sdram_adr = vns_netsoc_shared_adr;
assign soc_netsoc_interface1_wb_sdram_dat_w = vns_netsoc_shared_dat_w;
assign soc_netsoc_interface1_wb_sdram_sel = vns_netsoc_shared_sel;
assign soc_netsoc_interface1_wb_sdram_stb = vns_netsoc_shared_stb;
assign soc_netsoc_interface1_wb_sdram_we = vns_netsoc_shared_we;
assign soc_netsoc_interface1_wb_sdram_cti = vns_netsoc_shared_cti;
assign soc_netsoc_interface1_wb_sdram_bte = vns_netsoc_shared_bte;
assign soc_netsoc_bus_adr = vns_netsoc_shared_adr;
assign soc_netsoc_bus_dat_w = vns_netsoc_shared_dat_w;
assign soc_netsoc_bus_sel = vns_netsoc_shared_sel;
assign soc_netsoc_bus_stb = vns_netsoc_shared_stb;
assign soc_netsoc_bus_we = vns_netsoc_shared_we;
assign soc_netsoc_bus_cti = vns_netsoc_shared_cti;
assign soc_netsoc_bus_bte = vns_netsoc_shared_bte;
assign soc_ethmac_bus_adr = vns_netsoc_shared_adr;
assign soc_ethmac_bus_dat_w = vns_netsoc_shared_dat_w;
assign soc_ethmac_bus_sel = vns_netsoc_shared_sel;
assign soc_ethmac_bus_stb = vns_netsoc_shared_stb;
assign soc_ethmac_bus_we = vns_netsoc_shared_we;
assign soc_ethmac_bus_cti = vns_netsoc_shared_cti;
assign soc_ethmac_bus_bte = vns_netsoc_shared_bte;
assign soc_netsoc_netsoc_rom_bus_cyc = (vns_netsoc_shared_cyc & vns_netsoc_slave_sel[0]);
assign soc_netsoc_netsoc_sram_bus_cyc = (vns_netsoc_shared_cyc & vns_netsoc_slave_sel[1]);
assign soc_netsoc_netsoc_bus_wishbone_cyc = (vns_netsoc_shared_cyc & vns_netsoc_slave_sel[2]);
assign soc_netsoc_interface1_wb_sdram_cyc = (vns_netsoc_shared_cyc & vns_netsoc_slave_sel[3]);
assign soc_netsoc_bus_cyc = (vns_netsoc_shared_cyc & vns_netsoc_slave_sel[4]);
assign soc_ethmac_bus_cyc = (vns_netsoc_shared_cyc & vns_netsoc_slave_sel[5]);
assign vns_netsoc_shared_ack = (((((soc_netsoc_netsoc_rom_bus_ack | soc_netsoc_netsoc_sram_bus_ack) | soc_netsoc_netsoc_bus_wishbone_ack) | soc_netsoc_interface1_wb_sdram_ack) | soc_netsoc_bus_ack) | soc_ethmac_bus_ack);
assign vns_netsoc_shared_err = (((((soc_netsoc_netsoc_rom_bus_err | soc_netsoc_netsoc_sram_bus_err) | soc_netsoc_netsoc_bus_wishbone_err) | soc_netsoc_interface1_wb_sdram_err) | soc_netsoc_bus_err) | soc_ethmac_bus_err);
assign vns_netsoc_shared_dat_r = (((((({32{vns_netsoc_slave_sel_r[0]}} & soc_netsoc_netsoc_rom_bus_dat_r) | ({32{vns_netsoc_slave_sel_r[1]}} & soc_netsoc_netsoc_sram_bus_dat_r)) | ({32{vns_netsoc_slave_sel_r[2]}} & soc_netsoc_netsoc_bus_wishbone_dat_r)) | ({32{vns_netsoc_slave_sel_r[3]}} & soc_netsoc_interface1_wb_sdram_dat_r)) | ({32{vns_netsoc_slave_sel_r[4]}} & soc_netsoc_bus_dat_r)) | ({32{vns_netsoc_slave_sel_r[5]}} & soc_ethmac_bus_dat_r));
assign vns_netsoc_csrbank0_sel = (vns_netsoc_interface0_bank_bus_adr[13:9] == 4'd11);
assign vns_netsoc_csrbank0_dly_sel0_r = vns_netsoc_interface0_bank_bus_dat_w[1:0];
assign vns_netsoc_csrbank0_dly_sel0_re = ((vns_netsoc_csrbank0_sel & vns_netsoc_interface0_bank_bus_we) & (vns_netsoc_interface0_bank_bus_adr[1:0] == 1'd0));
assign soc_netsoc_ddrphy_rdly_dq_rst_r = vns_netsoc_interface0_bank_bus_dat_w[0];
assign soc_netsoc_ddrphy_rdly_dq_rst_re = ((vns_netsoc_csrbank0_sel & vns_netsoc_interface0_bank_bus_we) & (vns_netsoc_interface0_bank_bus_adr[1:0] == 1'd1));
assign soc_netsoc_ddrphy_rdly_dq_inc_r = vns_netsoc_interface0_bank_bus_dat_w[0];
assign soc_netsoc_ddrphy_rdly_dq_inc_re = ((vns_netsoc_csrbank0_sel & vns_netsoc_interface0_bank_bus_we) & (vns_netsoc_interface0_bank_bus_adr[1:0] == 2'd2));
assign soc_netsoc_ddrphy_rdly_dq_bitslip_r = vns_netsoc_interface0_bank_bus_dat_w[0];
assign soc_netsoc_ddrphy_rdly_dq_bitslip_re = ((vns_netsoc_csrbank0_sel & vns_netsoc_interface0_bank_bus_we) & (vns_netsoc_interface0_bank_bus_adr[1:0] == 2'd3));
assign soc_netsoc_ddrphy_storage = soc_netsoc_ddrphy_storage_full[1:0];
assign vns_netsoc_csrbank0_dly_sel0_w = soc_netsoc_ddrphy_storage_full[1:0];
assign vns_netsoc_csrbank1_sel = (vns_netsoc_interface1_bank_bus_adr[13:9] == 4'd15);
assign vns_netsoc_csrbank1_sram_writer_slot_r = vns_netsoc_interface1_bank_bus_dat_w[0];
assign vns_netsoc_csrbank1_sram_writer_slot_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 1'd0));
assign vns_netsoc_csrbank1_sram_writer_length3_r = vns_netsoc_interface1_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank1_sram_writer_length3_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 1'd1));
assign vns_netsoc_csrbank1_sram_writer_length2_r = vns_netsoc_interface1_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank1_sram_writer_length2_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 2'd2));
assign vns_netsoc_csrbank1_sram_writer_length1_r = vns_netsoc_interface1_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank1_sram_writer_length1_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 2'd3));
assign vns_netsoc_csrbank1_sram_writer_length0_r = vns_netsoc_interface1_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank1_sram_writer_length0_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 3'd4));
assign vns_netsoc_csrbank1_sram_writer_errors3_r = vns_netsoc_interface1_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank1_sram_writer_errors3_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 3'd5));
assign vns_netsoc_csrbank1_sram_writer_errors2_r = vns_netsoc_interface1_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank1_sram_writer_errors2_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 3'd6));
assign vns_netsoc_csrbank1_sram_writer_errors1_r = vns_netsoc_interface1_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank1_sram_writer_errors1_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 3'd7));
assign vns_netsoc_csrbank1_sram_writer_errors0_r = vns_netsoc_interface1_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank1_sram_writer_errors0_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 4'd8));
assign soc_ethmac_writer_status_r = vns_netsoc_interface1_bank_bus_dat_w[0];
assign soc_ethmac_writer_status_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 4'd9));
assign soc_ethmac_writer_pending_r = vns_netsoc_interface1_bank_bus_dat_w[0];
assign soc_ethmac_writer_pending_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 4'd10));
assign vns_netsoc_csrbank1_sram_writer_ev_enable0_r = vns_netsoc_interface1_bank_bus_dat_w[0];
assign vns_netsoc_csrbank1_sram_writer_ev_enable0_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 4'd11));
assign soc_ethmac_reader_start_r = vns_netsoc_interface1_bank_bus_dat_w[0];
assign soc_ethmac_reader_start_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 4'd12));
assign vns_netsoc_csrbank1_sram_reader_ready_r = vns_netsoc_interface1_bank_bus_dat_w[0];
assign vns_netsoc_csrbank1_sram_reader_ready_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 4'd13));
assign vns_netsoc_csrbank1_sram_reader_level_r = vns_netsoc_interface1_bank_bus_dat_w[1:0];
assign vns_netsoc_csrbank1_sram_reader_level_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 4'd14));
assign vns_netsoc_csrbank1_sram_reader_slot0_r = vns_netsoc_interface1_bank_bus_dat_w[0];
assign vns_netsoc_csrbank1_sram_reader_slot0_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 4'd15));
assign vns_netsoc_csrbank1_sram_reader_length1_r = vns_netsoc_interface1_bank_bus_dat_w[2:0];
assign vns_netsoc_csrbank1_sram_reader_length1_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 5'd16));
assign vns_netsoc_csrbank1_sram_reader_length0_r = vns_netsoc_interface1_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank1_sram_reader_length0_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 5'd17));
assign soc_ethmac_reader_eventmanager_status_r = vns_netsoc_interface1_bank_bus_dat_w[0];
assign soc_ethmac_reader_eventmanager_status_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 5'd18));
assign soc_ethmac_reader_eventmanager_pending_r = vns_netsoc_interface1_bank_bus_dat_w[0];
assign soc_ethmac_reader_eventmanager_pending_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 5'd19));
assign vns_netsoc_csrbank1_sram_reader_ev_enable0_r = vns_netsoc_interface1_bank_bus_dat_w[0];
assign vns_netsoc_csrbank1_sram_reader_ev_enable0_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 5'd20));
assign vns_netsoc_csrbank1_preamble_crc_r = vns_netsoc_interface1_bank_bus_dat_w[0];
assign vns_netsoc_csrbank1_preamble_crc_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 5'd21));
assign vns_netsoc_csrbank1_preamble_errors3_r = vns_netsoc_interface1_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank1_preamble_errors3_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 5'd22));
assign vns_netsoc_csrbank1_preamble_errors2_r = vns_netsoc_interface1_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank1_preamble_errors2_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 5'd23));
assign vns_netsoc_csrbank1_preamble_errors1_r = vns_netsoc_interface1_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank1_preamble_errors1_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 5'd24));
assign vns_netsoc_csrbank1_preamble_errors0_r = vns_netsoc_interface1_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank1_preamble_errors0_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 5'd25));
assign vns_netsoc_csrbank1_crc_errors3_r = vns_netsoc_interface1_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank1_crc_errors3_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 5'd26));
assign vns_netsoc_csrbank1_crc_errors2_r = vns_netsoc_interface1_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank1_crc_errors2_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 5'd27));
assign vns_netsoc_csrbank1_crc_errors1_r = vns_netsoc_interface1_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank1_crc_errors1_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 5'd28));
assign vns_netsoc_csrbank1_crc_errors0_r = vns_netsoc_interface1_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank1_crc_errors0_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 5'd29));
assign vns_netsoc_csrbank1_sram_writer_slot_w = soc_ethmac_writer_slot_status;
assign vns_netsoc_csrbank1_sram_writer_length3_w = soc_ethmac_writer_length_status[31:24];
assign vns_netsoc_csrbank1_sram_writer_length2_w = soc_ethmac_writer_length_status[23:16];
assign vns_netsoc_csrbank1_sram_writer_length1_w = soc_ethmac_writer_length_status[15:8];
assign vns_netsoc_csrbank1_sram_writer_length0_w = soc_ethmac_writer_length_status[7:0];
assign vns_netsoc_csrbank1_sram_writer_errors3_w = soc_ethmac_writer_errors_status[31:24];
assign vns_netsoc_csrbank1_sram_writer_errors2_w = soc_ethmac_writer_errors_status[23:16];
assign vns_netsoc_csrbank1_sram_writer_errors1_w = soc_ethmac_writer_errors_status[15:8];
assign vns_netsoc_csrbank1_sram_writer_errors0_w = soc_ethmac_writer_errors_status[7:0];
assign soc_ethmac_writer_storage = soc_ethmac_writer_storage_full;
assign vns_netsoc_csrbank1_sram_writer_ev_enable0_w = soc_ethmac_writer_storage_full;
assign vns_netsoc_csrbank1_sram_reader_ready_w = soc_ethmac_reader_ready_status;
assign vns_netsoc_csrbank1_sram_reader_level_w = soc_ethmac_reader_level_status[1:0];
assign soc_ethmac_reader_slot_storage = soc_ethmac_reader_slot_storage_full;
assign vns_netsoc_csrbank1_sram_reader_slot0_w = soc_ethmac_reader_slot_storage_full;
assign soc_ethmac_reader_length_storage = soc_ethmac_reader_length_storage_full[10:0];
assign vns_netsoc_csrbank1_sram_reader_length1_w = soc_ethmac_reader_length_storage_full[10:8];
assign vns_netsoc_csrbank1_sram_reader_length0_w = soc_ethmac_reader_length_storage_full[7:0];
assign soc_ethmac_reader_eventmanager_storage = soc_ethmac_reader_eventmanager_storage_full;
assign vns_netsoc_csrbank1_sram_reader_ev_enable0_w = soc_ethmac_reader_eventmanager_storage_full;
assign vns_netsoc_csrbank1_preamble_crc_w = soc_ethmac_preamble_crc_status;
assign vns_netsoc_csrbank1_preamble_errors3_w = soc_ethmac_preamble_errors_status[31:24];
assign vns_netsoc_csrbank1_preamble_errors2_w = soc_ethmac_preamble_errors_status[23:16];
assign vns_netsoc_csrbank1_preamble_errors1_w = soc_ethmac_preamble_errors_status[15:8];
assign vns_netsoc_csrbank1_preamble_errors0_w = soc_ethmac_preamble_errors_status[7:0];
assign vns_netsoc_csrbank1_crc_errors3_w = soc_ethmac_crc_errors_status[31:24];
assign vns_netsoc_csrbank1_crc_errors2_w = soc_ethmac_crc_errors_status[23:16];
assign vns_netsoc_csrbank1_crc_errors1_w = soc_ethmac_crc_errors_status[15:8];
assign vns_netsoc_csrbank1_crc_errors0_w = soc_ethmac_crc_errors_status[7:0];
assign vns_netsoc_csrbank2_sel = (vns_netsoc_interface2_bank_bus_adr[13:9] == 4'd14);
assign vns_netsoc_csrbank2_crg_reset0_r = vns_netsoc_interface2_bank_bus_dat_w[0];
assign vns_netsoc_csrbank2_crg_reset0_re = ((vns_netsoc_csrbank2_sel & vns_netsoc_interface2_bank_bus_we) & (vns_netsoc_interface2_bank_bus_adr[1:0] == 1'd0));
assign vns_netsoc_csrbank2_mdio_w0_r = vns_netsoc_interface2_bank_bus_dat_w[2:0];
assign vns_netsoc_csrbank2_mdio_w0_re = ((vns_netsoc_csrbank2_sel & vns_netsoc_interface2_bank_bus_we) & (vns_netsoc_interface2_bank_bus_adr[1:0] == 1'd1));
assign vns_netsoc_csrbank2_mdio_r_r = vns_netsoc_interface2_bank_bus_dat_w[0];
assign vns_netsoc_csrbank2_mdio_r_re = ((vns_netsoc_csrbank2_sel & vns_netsoc_interface2_bank_bus_we) & (vns_netsoc_interface2_bank_bus_adr[1:0] == 2'd2));
assign soc_ethphy_reset_storage = soc_ethphy_reset_storage_full;
assign vns_netsoc_csrbank2_crg_reset0_w = soc_ethphy_reset_storage_full;
assign soc_ethphy_storage = soc_ethphy_storage_full[2:0];
assign vns_netsoc_csrbank2_mdio_w0_w = soc_ethphy_storage_full[2:0];
assign vns_netsoc_csrbank2_mdio_r_w = soc_ethphy_status;
assign vns_netsoc_sel = (vns_netsoc_sram_bus_adr[13:9] == 2'd3);

// synthesis translate_off
reg dummy_d_102;
// synthesis translate_on
always @(*) begin
	vns_netsoc_sram_bus_dat_r <= 8'd0;
	if (vns_netsoc_sel_r) begin
		vns_netsoc_sram_bus_dat_r <= vns_netsoc_dat_r;
	end
// synthesis translate_off
	dummy_d_102 <= dummy_s;
// synthesis translate_on
end
assign vns_netsoc_adr = vns_netsoc_sram_bus_adr[2:0];
assign vns_netsoc_csrbank3_sel = (vns_netsoc_interface3_bank_bus_adr[13:9] == 4'd12);
assign vns_netsoc_csrbank3_dna_id7_r = vns_netsoc_interface3_bank_bus_dat_w[0];
assign vns_netsoc_csrbank3_dna_id7_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 1'd0));
assign vns_netsoc_csrbank3_dna_id6_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_dna_id6_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 1'd1));
assign vns_netsoc_csrbank3_dna_id5_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_dna_id5_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 2'd2));
assign vns_netsoc_csrbank3_dna_id4_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_dna_id4_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 2'd3));
assign vns_netsoc_csrbank3_dna_id3_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_dna_id3_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 3'd4));
assign vns_netsoc_csrbank3_dna_id2_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_dna_id2_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 3'd5));
assign vns_netsoc_csrbank3_dna_id1_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_dna_id1_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 3'd6));
assign vns_netsoc_csrbank3_dna_id0_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_dna_id0_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 3'd7));
assign vns_netsoc_csrbank3_git_commit19_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_git_commit19_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 4'd8));
assign vns_netsoc_csrbank3_git_commit18_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_git_commit18_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 4'd9));
assign vns_netsoc_csrbank3_git_commit17_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_git_commit17_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 4'd10));
assign vns_netsoc_csrbank3_git_commit16_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_git_commit16_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 4'd11));
assign vns_netsoc_csrbank3_git_commit15_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_git_commit15_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 4'd12));
assign vns_netsoc_csrbank3_git_commit14_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_git_commit14_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 4'd13));
assign vns_netsoc_csrbank3_git_commit13_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_git_commit13_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 4'd14));
assign vns_netsoc_csrbank3_git_commit12_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_git_commit12_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 4'd15));
assign vns_netsoc_csrbank3_git_commit11_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_git_commit11_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 5'd16));
assign vns_netsoc_csrbank3_git_commit10_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_git_commit10_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 5'd17));
assign vns_netsoc_csrbank3_git_commit9_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_git_commit9_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 5'd18));
assign vns_netsoc_csrbank3_git_commit8_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_git_commit8_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 5'd19));
assign vns_netsoc_csrbank3_git_commit7_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_git_commit7_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 5'd20));
assign vns_netsoc_csrbank3_git_commit6_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_git_commit6_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 5'd21));
assign vns_netsoc_csrbank3_git_commit5_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_git_commit5_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 5'd22));
assign vns_netsoc_csrbank3_git_commit4_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_git_commit4_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 5'd23));
assign vns_netsoc_csrbank3_git_commit3_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_git_commit3_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 5'd24));
assign vns_netsoc_csrbank3_git_commit2_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_git_commit2_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 5'd25));
assign vns_netsoc_csrbank3_git_commit1_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_git_commit1_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 5'd26));
assign vns_netsoc_csrbank3_git_commit0_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_git_commit0_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 5'd27));
assign vns_netsoc_csrbank3_platform_platform7_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_platform_platform7_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 5'd28));
assign vns_netsoc_csrbank3_platform_platform6_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_platform_platform6_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 5'd29));
assign vns_netsoc_csrbank3_platform_platform5_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_platform_platform5_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 5'd30));
assign vns_netsoc_csrbank3_platform_platform4_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_platform_platform4_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 5'd31));
assign vns_netsoc_csrbank3_platform_platform3_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_platform_platform3_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 6'd32));
assign vns_netsoc_csrbank3_platform_platform2_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_platform_platform2_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 6'd33));
assign vns_netsoc_csrbank3_platform_platform1_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_platform_platform1_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 6'd34));
assign vns_netsoc_csrbank3_platform_platform0_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_platform_platform0_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 6'd35));
assign vns_netsoc_csrbank3_platform_target7_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_platform_target7_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 6'd36));
assign vns_netsoc_csrbank3_platform_target6_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_platform_target6_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 6'd37));
assign vns_netsoc_csrbank3_platform_target5_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_platform_target5_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 6'd38));
assign vns_netsoc_csrbank3_platform_target4_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_platform_target4_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 6'd39));
assign vns_netsoc_csrbank3_platform_target3_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_platform_target3_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 6'd40));
assign vns_netsoc_csrbank3_platform_target2_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_platform_target2_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 6'd41));
assign vns_netsoc_csrbank3_platform_target1_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_platform_target1_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 6'd42));
assign vns_netsoc_csrbank3_platform_target0_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_platform_target0_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 6'd43));
assign vns_netsoc_csrbank3_xadc_temperature1_r = vns_netsoc_interface3_bank_bus_dat_w[3:0];
assign vns_netsoc_csrbank3_xadc_temperature1_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 6'd44));
assign vns_netsoc_csrbank3_xadc_temperature0_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_xadc_temperature0_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 6'd45));
assign vns_netsoc_csrbank3_xadc_vccint1_r = vns_netsoc_interface3_bank_bus_dat_w[3:0];
assign vns_netsoc_csrbank3_xadc_vccint1_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 6'd46));
assign vns_netsoc_csrbank3_xadc_vccint0_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_xadc_vccint0_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 6'd47));
assign vns_netsoc_csrbank3_xadc_vccaux1_r = vns_netsoc_interface3_bank_bus_dat_w[3:0];
assign vns_netsoc_csrbank3_xadc_vccaux1_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 6'd48));
assign vns_netsoc_csrbank3_xadc_vccaux0_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_xadc_vccaux0_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 6'd49));
assign vns_netsoc_csrbank3_xadc_vccbram1_r = vns_netsoc_interface3_bank_bus_dat_w[3:0];
assign vns_netsoc_csrbank3_xadc_vccbram1_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 6'd50));
assign vns_netsoc_csrbank3_xadc_vccbram0_r = vns_netsoc_interface3_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank3_xadc_vccbram0_re = ((vns_netsoc_csrbank3_sel & vns_netsoc_interface3_bank_bus_we) & (vns_netsoc_interface3_bank_bus_adr[5:0] == 6'd51));
assign vns_netsoc_csrbank3_dna_id7_w = soc_netsoc_info_dna_status[56];
assign vns_netsoc_csrbank3_dna_id6_w = soc_netsoc_info_dna_status[55:48];
assign vns_netsoc_csrbank3_dna_id5_w = soc_netsoc_info_dna_status[47:40];
assign vns_netsoc_csrbank3_dna_id4_w = soc_netsoc_info_dna_status[39:32];
assign vns_netsoc_csrbank3_dna_id3_w = soc_netsoc_info_dna_status[31:24];
assign vns_netsoc_csrbank3_dna_id2_w = soc_netsoc_info_dna_status[23:16];
assign vns_netsoc_csrbank3_dna_id1_w = soc_netsoc_info_dna_status[15:8];
assign vns_netsoc_csrbank3_dna_id0_w = soc_netsoc_info_dna_status[7:0];
assign vns_netsoc_csrbank3_git_commit19_w = soc_netsoc_info_git_status[159:152];
assign vns_netsoc_csrbank3_git_commit18_w = soc_netsoc_info_git_status[151:144];
assign vns_netsoc_csrbank3_git_commit17_w = soc_netsoc_info_git_status[143:136];
assign vns_netsoc_csrbank3_git_commit16_w = soc_netsoc_info_git_status[135:128];
assign vns_netsoc_csrbank3_git_commit15_w = soc_netsoc_info_git_status[127:120];
assign vns_netsoc_csrbank3_git_commit14_w = soc_netsoc_info_git_status[119:112];
assign vns_netsoc_csrbank3_git_commit13_w = soc_netsoc_info_git_status[111:104];
assign vns_netsoc_csrbank3_git_commit12_w = soc_netsoc_info_git_status[103:96];
assign vns_netsoc_csrbank3_git_commit11_w = soc_netsoc_info_git_status[95:88];
assign vns_netsoc_csrbank3_git_commit10_w = soc_netsoc_info_git_status[87:80];
assign vns_netsoc_csrbank3_git_commit9_w = soc_netsoc_info_git_status[79:72];
assign vns_netsoc_csrbank3_git_commit8_w = soc_netsoc_info_git_status[71:64];
assign vns_netsoc_csrbank3_git_commit7_w = soc_netsoc_info_git_status[63:56];
assign vns_netsoc_csrbank3_git_commit6_w = soc_netsoc_info_git_status[55:48];
assign vns_netsoc_csrbank3_git_commit5_w = soc_netsoc_info_git_status[47:40];
assign vns_netsoc_csrbank3_git_commit4_w = soc_netsoc_info_git_status[39:32];
assign vns_netsoc_csrbank3_git_commit3_w = soc_netsoc_info_git_status[31:24];
assign vns_netsoc_csrbank3_git_commit2_w = soc_netsoc_info_git_status[23:16];
assign vns_netsoc_csrbank3_git_commit1_w = soc_netsoc_info_git_status[15:8];
assign vns_netsoc_csrbank3_git_commit0_w = soc_netsoc_info_git_status[7:0];
assign vns_netsoc_csrbank3_platform_platform7_w = soc_netsoc_info_platform_status[63:56];
assign vns_netsoc_csrbank3_platform_platform6_w = soc_netsoc_info_platform_status[55:48];
assign vns_netsoc_csrbank3_platform_platform5_w = soc_netsoc_info_platform_status[47:40];
assign vns_netsoc_csrbank3_platform_platform4_w = soc_netsoc_info_platform_status[39:32];
assign vns_netsoc_csrbank3_platform_platform3_w = soc_netsoc_info_platform_status[31:24];
assign vns_netsoc_csrbank3_platform_platform2_w = soc_netsoc_info_platform_status[23:16];
assign vns_netsoc_csrbank3_platform_platform1_w = soc_netsoc_info_platform_status[15:8];
assign vns_netsoc_csrbank3_platform_platform0_w = soc_netsoc_info_platform_status[7:0];
assign vns_netsoc_csrbank3_platform_target7_w = soc_netsoc_info_target_status[63:56];
assign vns_netsoc_csrbank3_platform_target6_w = soc_netsoc_info_target_status[55:48];
assign vns_netsoc_csrbank3_platform_target5_w = soc_netsoc_info_target_status[47:40];
assign vns_netsoc_csrbank3_platform_target4_w = soc_netsoc_info_target_status[39:32];
assign vns_netsoc_csrbank3_platform_target3_w = soc_netsoc_info_target_status[31:24];
assign vns_netsoc_csrbank3_platform_target2_w = soc_netsoc_info_target_status[23:16];
assign vns_netsoc_csrbank3_platform_target1_w = soc_netsoc_info_target_status[15:8];
assign vns_netsoc_csrbank3_platform_target0_w = soc_netsoc_info_target_status[7:0];
assign vns_netsoc_csrbank3_xadc_temperature1_w = soc_netsoc_info_temperature_status[11:8];
assign vns_netsoc_csrbank3_xadc_temperature0_w = soc_netsoc_info_temperature_status[7:0];
assign vns_netsoc_csrbank3_xadc_vccint1_w = soc_netsoc_info_vccint_status[11:8];
assign vns_netsoc_csrbank3_xadc_vccint0_w = soc_netsoc_info_vccint_status[7:0];
assign vns_netsoc_csrbank3_xadc_vccaux1_w = soc_netsoc_info_vccaux_status[11:8];
assign vns_netsoc_csrbank3_xadc_vccaux0_w = soc_netsoc_info_vccaux_status[7:0];
assign vns_netsoc_csrbank3_xadc_vccbram1_w = soc_netsoc_info_vccbram_status[11:8];
assign vns_netsoc_csrbank3_xadc_vccbram0_w = soc_netsoc_info_vccbram_status[7:0];
assign vns_netsoc_csrbank4_sel = (vns_netsoc_interface4_bank_bus_adr[13:9] == 4'd13);
assign soc_netsoc_oled_spimaster_ctrl_r = vns_netsoc_interface4_bank_bus_dat_w[0];
assign soc_netsoc_oled_spimaster_ctrl_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[2:0] == 1'd0));
assign vns_netsoc_csrbank4_spi_length0_r = vns_netsoc_interface4_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank4_spi_length0_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[2:0] == 1'd1));
assign vns_netsoc_csrbank4_spi_status_r = vns_netsoc_interface4_bank_bus_dat_w[0];
assign vns_netsoc_csrbank4_spi_status_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[2:0] == 2'd2));
assign vns_netsoc_csrbank4_spi_mosi0_r = vns_netsoc_interface4_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank4_spi_mosi0_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[2:0] == 2'd3));
assign vns_netsoc_csrbank4_gpio_out0_r = vns_netsoc_interface4_bank_bus_dat_w[3:0];
assign vns_netsoc_csrbank4_gpio_out0_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[2:0] == 3'd4));
assign soc_netsoc_oled_spimaster_length_storage = soc_netsoc_oled_spimaster_length_storage_full[7:0];
assign vns_netsoc_csrbank4_spi_length0_w = soc_netsoc_oled_spimaster_length_storage_full[7:0];
assign vns_netsoc_csrbank4_spi_status_w = soc_netsoc_oled_spimaster_status;
assign soc_netsoc_oled_spimaster_mosi_storage = soc_netsoc_oled_spimaster_mosi_storage_full[7:0];
assign vns_netsoc_csrbank4_spi_mosi0_w = soc_netsoc_oled_spimaster_mosi_storage_full[7:0];
assign soc_netsoc_oled_storage = soc_netsoc_oled_storage_full[3:0];
assign vns_netsoc_csrbank4_gpio_out0_w = soc_netsoc_oled_storage_full[3:0];
assign vns_netsoc_csrbank5_sel = (vns_netsoc_interface5_bank_bus_adr[13:9] == 4'd8);
assign vns_netsoc_csrbank5_dfii_control0_r = vns_netsoc_interface5_bank_bus_dat_w[3:0];
assign vns_netsoc_csrbank5_dfii_control0_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 1'd0));
assign vns_netsoc_csrbank5_dfii_pi0_command0_r = vns_netsoc_interface5_bank_bus_dat_w[5:0];
assign vns_netsoc_csrbank5_dfii_pi0_command0_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 1'd1));
assign soc_netsoc_sdram_phaseinjector0_command_issue_r = vns_netsoc_interface5_bank_bus_dat_w[0];
assign soc_netsoc_sdram_phaseinjector0_command_issue_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 2'd2));
assign vns_netsoc_csrbank5_dfii_pi0_address1_r = vns_netsoc_interface5_bank_bus_dat_w[6:0];
assign vns_netsoc_csrbank5_dfii_pi0_address1_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 2'd3));
assign vns_netsoc_csrbank5_dfii_pi0_address0_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi0_address0_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 3'd4));
assign vns_netsoc_csrbank5_dfii_pi0_baddress0_r = vns_netsoc_interface5_bank_bus_dat_w[2:0];
assign vns_netsoc_csrbank5_dfii_pi0_baddress0_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 3'd5));
assign vns_netsoc_csrbank5_dfii_pi0_wrdata3_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi0_wrdata3_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 3'd6));
assign vns_netsoc_csrbank5_dfii_pi0_wrdata2_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi0_wrdata2_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 3'd7));
assign vns_netsoc_csrbank5_dfii_pi0_wrdata1_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi0_wrdata1_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 4'd8));
assign vns_netsoc_csrbank5_dfii_pi0_wrdata0_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi0_wrdata0_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 4'd9));
assign vns_netsoc_csrbank5_dfii_pi0_rddata3_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi0_rddata3_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 4'd10));
assign vns_netsoc_csrbank5_dfii_pi0_rddata2_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi0_rddata2_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 4'd11));
assign vns_netsoc_csrbank5_dfii_pi0_rddata1_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi0_rddata1_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 4'd12));
assign vns_netsoc_csrbank5_dfii_pi0_rddata0_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi0_rddata0_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 4'd13));
assign vns_netsoc_csrbank5_dfii_pi1_command0_r = vns_netsoc_interface5_bank_bus_dat_w[5:0];
assign vns_netsoc_csrbank5_dfii_pi1_command0_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 4'd14));
assign soc_netsoc_sdram_phaseinjector1_command_issue_r = vns_netsoc_interface5_bank_bus_dat_w[0];
assign soc_netsoc_sdram_phaseinjector1_command_issue_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 4'd15));
assign vns_netsoc_csrbank5_dfii_pi1_address1_r = vns_netsoc_interface5_bank_bus_dat_w[6:0];
assign vns_netsoc_csrbank5_dfii_pi1_address1_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 5'd16));
assign vns_netsoc_csrbank5_dfii_pi1_address0_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi1_address0_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 5'd17));
assign vns_netsoc_csrbank5_dfii_pi1_baddress0_r = vns_netsoc_interface5_bank_bus_dat_w[2:0];
assign vns_netsoc_csrbank5_dfii_pi1_baddress0_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 5'd18));
assign vns_netsoc_csrbank5_dfii_pi1_wrdata3_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi1_wrdata3_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 5'd19));
assign vns_netsoc_csrbank5_dfii_pi1_wrdata2_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi1_wrdata2_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 5'd20));
assign vns_netsoc_csrbank5_dfii_pi1_wrdata1_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi1_wrdata1_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 5'd21));
assign vns_netsoc_csrbank5_dfii_pi1_wrdata0_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi1_wrdata0_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 5'd22));
assign vns_netsoc_csrbank5_dfii_pi1_rddata3_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi1_rddata3_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 5'd23));
assign vns_netsoc_csrbank5_dfii_pi1_rddata2_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi1_rddata2_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 5'd24));
assign vns_netsoc_csrbank5_dfii_pi1_rddata1_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi1_rddata1_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 5'd25));
assign vns_netsoc_csrbank5_dfii_pi1_rddata0_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi1_rddata0_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 5'd26));
assign vns_netsoc_csrbank5_dfii_pi2_command0_r = vns_netsoc_interface5_bank_bus_dat_w[5:0];
assign vns_netsoc_csrbank5_dfii_pi2_command0_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 5'd27));
assign soc_netsoc_sdram_phaseinjector2_command_issue_r = vns_netsoc_interface5_bank_bus_dat_w[0];
assign soc_netsoc_sdram_phaseinjector2_command_issue_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 5'd28));
assign vns_netsoc_csrbank5_dfii_pi2_address1_r = vns_netsoc_interface5_bank_bus_dat_w[6:0];
assign vns_netsoc_csrbank5_dfii_pi2_address1_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 5'd29));
assign vns_netsoc_csrbank5_dfii_pi2_address0_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi2_address0_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 5'd30));
assign vns_netsoc_csrbank5_dfii_pi2_baddress0_r = vns_netsoc_interface5_bank_bus_dat_w[2:0];
assign vns_netsoc_csrbank5_dfii_pi2_baddress0_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 5'd31));
assign vns_netsoc_csrbank5_dfii_pi2_wrdata3_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi2_wrdata3_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd32));
assign vns_netsoc_csrbank5_dfii_pi2_wrdata2_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi2_wrdata2_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd33));
assign vns_netsoc_csrbank5_dfii_pi2_wrdata1_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi2_wrdata1_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd34));
assign vns_netsoc_csrbank5_dfii_pi2_wrdata0_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi2_wrdata0_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd35));
assign vns_netsoc_csrbank5_dfii_pi2_rddata3_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi2_rddata3_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd36));
assign vns_netsoc_csrbank5_dfii_pi2_rddata2_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi2_rddata2_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd37));
assign vns_netsoc_csrbank5_dfii_pi2_rddata1_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi2_rddata1_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd38));
assign vns_netsoc_csrbank5_dfii_pi2_rddata0_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi2_rddata0_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd39));
assign vns_netsoc_csrbank5_dfii_pi3_command0_r = vns_netsoc_interface5_bank_bus_dat_w[5:0];
assign vns_netsoc_csrbank5_dfii_pi3_command0_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd40));
assign soc_netsoc_sdram_phaseinjector3_command_issue_r = vns_netsoc_interface5_bank_bus_dat_w[0];
assign soc_netsoc_sdram_phaseinjector3_command_issue_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd41));
assign vns_netsoc_csrbank5_dfii_pi3_address1_r = vns_netsoc_interface5_bank_bus_dat_w[6:0];
assign vns_netsoc_csrbank5_dfii_pi3_address1_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd42));
assign vns_netsoc_csrbank5_dfii_pi3_address0_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi3_address0_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd43));
assign vns_netsoc_csrbank5_dfii_pi3_baddress0_r = vns_netsoc_interface5_bank_bus_dat_w[2:0];
assign vns_netsoc_csrbank5_dfii_pi3_baddress0_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd44));
assign vns_netsoc_csrbank5_dfii_pi3_wrdata3_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi3_wrdata3_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd45));
assign vns_netsoc_csrbank5_dfii_pi3_wrdata2_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi3_wrdata2_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd46));
assign vns_netsoc_csrbank5_dfii_pi3_wrdata1_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi3_wrdata1_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd47));
assign vns_netsoc_csrbank5_dfii_pi3_wrdata0_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi3_wrdata0_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd48));
assign vns_netsoc_csrbank5_dfii_pi3_rddata3_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi3_rddata3_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd49));
assign vns_netsoc_csrbank5_dfii_pi3_rddata2_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi3_rddata2_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd50));
assign vns_netsoc_csrbank5_dfii_pi3_rddata1_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi3_rddata1_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd51));
assign vns_netsoc_csrbank5_dfii_pi3_rddata0_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_dfii_pi3_rddata0_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd52));
assign soc_netsoc_sdram_bandwidth_update_r = vns_netsoc_interface5_bank_bus_dat_w[0];
assign soc_netsoc_sdram_bandwidth_update_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd53));
assign vns_netsoc_csrbank5_controller_bandwidth_nreads2_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_controller_bandwidth_nreads2_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd54));
assign vns_netsoc_csrbank5_controller_bandwidth_nreads1_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_controller_bandwidth_nreads1_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd55));
assign vns_netsoc_csrbank5_controller_bandwidth_nreads0_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_controller_bandwidth_nreads0_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd56));
assign vns_netsoc_csrbank5_controller_bandwidth_nwrites2_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_controller_bandwidth_nwrites2_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd57));
assign vns_netsoc_csrbank5_controller_bandwidth_nwrites1_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_controller_bandwidth_nwrites1_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd58));
assign vns_netsoc_csrbank5_controller_bandwidth_nwrites0_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_controller_bandwidth_nwrites0_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd59));
assign vns_netsoc_csrbank5_controller_bandwidth_data_width_r = vns_netsoc_interface5_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank5_controller_bandwidth_data_width_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[5:0] == 6'd60));
assign soc_netsoc_sdram_storage = soc_netsoc_sdram_storage_full[3:0];
assign vns_netsoc_csrbank5_dfii_control0_w = soc_netsoc_sdram_storage_full[3:0];
assign soc_netsoc_sdram_phaseinjector0_command_storage = soc_netsoc_sdram_phaseinjector0_command_storage_full[5:0];
assign vns_netsoc_csrbank5_dfii_pi0_command0_w = soc_netsoc_sdram_phaseinjector0_command_storage_full[5:0];
assign soc_netsoc_sdram_phaseinjector0_address_storage = soc_netsoc_sdram_phaseinjector0_address_storage_full[14:0];
assign vns_netsoc_csrbank5_dfii_pi0_address1_w = soc_netsoc_sdram_phaseinjector0_address_storage_full[14:8];
assign vns_netsoc_csrbank5_dfii_pi0_address0_w = soc_netsoc_sdram_phaseinjector0_address_storage_full[7:0];
assign soc_netsoc_sdram_phaseinjector0_baddress_storage = soc_netsoc_sdram_phaseinjector0_baddress_storage_full[2:0];
assign vns_netsoc_csrbank5_dfii_pi0_baddress0_w = soc_netsoc_sdram_phaseinjector0_baddress_storage_full[2:0];
assign soc_netsoc_sdram_phaseinjector0_wrdata_storage = soc_netsoc_sdram_phaseinjector0_wrdata_storage_full[31:0];
assign vns_netsoc_csrbank5_dfii_pi0_wrdata3_w = soc_netsoc_sdram_phaseinjector0_wrdata_storage_full[31:24];
assign vns_netsoc_csrbank5_dfii_pi0_wrdata2_w = soc_netsoc_sdram_phaseinjector0_wrdata_storage_full[23:16];
assign vns_netsoc_csrbank5_dfii_pi0_wrdata1_w = soc_netsoc_sdram_phaseinjector0_wrdata_storage_full[15:8];
assign vns_netsoc_csrbank5_dfii_pi0_wrdata0_w = soc_netsoc_sdram_phaseinjector0_wrdata_storage_full[7:0];
assign vns_netsoc_csrbank5_dfii_pi0_rddata3_w = soc_netsoc_sdram_phaseinjector0_status[31:24];
assign vns_netsoc_csrbank5_dfii_pi0_rddata2_w = soc_netsoc_sdram_phaseinjector0_status[23:16];
assign vns_netsoc_csrbank5_dfii_pi0_rddata1_w = soc_netsoc_sdram_phaseinjector0_status[15:8];
assign vns_netsoc_csrbank5_dfii_pi0_rddata0_w = soc_netsoc_sdram_phaseinjector0_status[7:0];
assign soc_netsoc_sdram_phaseinjector1_command_storage = soc_netsoc_sdram_phaseinjector1_command_storage_full[5:0];
assign vns_netsoc_csrbank5_dfii_pi1_command0_w = soc_netsoc_sdram_phaseinjector1_command_storage_full[5:0];
assign soc_netsoc_sdram_phaseinjector1_address_storage = soc_netsoc_sdram_phaseinjector1_address_storage_full[14:0];
assign vns_netsoc_csrbank5_dfii_pi1_address1_w = soc_netsoc_sdram_phaseinjector1_address_storage_full[14:8];
assign vns_netsoc_csrbank5_dfii_pi1_address0_w = soc_netsoc_sdram_phaseinjector1_address_storage_full[7:0];
assign soc_netsoc_sdram_phaseinjector1_baddress_storage = soc_netsoc_sdram_phaseinjector1_baddress_storage_full[2:0];
assign vns_netsoc_csrbank5_dfii_pi1_baddress0_w = soc_netsoc_sdram_phaseinjector1_baddress_storage_full[2:0];
assign soc_netsoc_sdram_phaseinjector1_wrdata_storage = soc_netsoc_sdram_phaseinjector1_wrdata_storage_full[31:0];
assign vns_netsoc_csrbank5_dfii_pi1_wrdata3_w = soc_netsoc_sdram_phaseinjector1_wrdata_storage_full[31:24];
assign vns_netsoc_csrbank5_dfii_pi1_wrdata2_w = soc_netsoc_sdram_phaseinjector1_wrdata_storage_full[23:16];
assign vns_netsoc_csrbank5_dfii_pi1_wrdata1_w = soc_netsoc_sdram_phaseinjector1_wrdata_storage_full[15:8];
assign vns_netsoc_csrbank5_dfii_pi1_wrdata0_w = soc_netsoc_sdram_phaseinjector1_wrdata_storage_full[7:0];
assign vns_netsoc_csrbank5_dfii_pi1_rddata3_w = soc_netsoc_sdram_phaseinjector1_status[31:24];
assign vns_netsoc_csrbank5_dfii_pi1_rddata2_w = soc_netsoc_sdram_phaseinjector1_status[23:16];
assign vns_netsoc_csrbank5_dfii_pi1_rddata1_w = soc_netsoc_sdram_phaseinjector1_status[15:8];
assign vns_netsoc_csrbank5_dfii_pi1_rddata0_w = soc_netsoc_sdram_phaseinjector1_status[7:0];
assign soc_netsoc_sdram_phaseinjector2_command_storage = soc_netsoc_sdram_phaseinjector2_command_storage_full[5:0];
assign vns_netsoc_csrbank5_dfii_pi2_command0_w = soc_netsoc_sdram_phaseinjector2_command_storage_full[5:0];
assign soc_netsoc_sdram_phaseinjector2_address_storage = soc_netsoc_sdram_phaseinjector2_address_storage_full[14:0];
assign vns_netsoc_csrbank5_dfii_pi2_address1_w = soc_netsoc_sdram_phaseinjector2_address_storage_full[14:8];
assign vns_netsoc_csrbank5_dfii_pi2_address0_w = soc_netsoc_sdram_phaseinjector2_address_storage_full[7:0];
assign soc_netsoc_sdram_phaseinjector2_baddress_storage = soc_netsoc_sdram_phaseinjector2_baddress_storage_full[2:0];
assign vns_netsoc_csrbank5_dfii_pi2_baddress0_w = soc_netsoc_sdram_phaseinjector2_baddress_storage_full[2:0];
assign soc_netsoc_sdram_phaseinjector2_wrdata_storage = soc_netsoc_sdram_phaseinjector2_wrdata_storage_full[31:0];
assign vns_netsoc_csrbank5_dfii_pi2_wrdata3_w = soc_netsoc_sdram_phaseinjector2_wrdata_storage_full[31:24];
assign vns_netsoc_csrbank5_dfii_pi2_wrdata2_w = soc_netsoc_sdram_phaseinjector2_wrdata_storage_full[23:16];
assign vns_netsoc_csrbank5_dfii_pi2_wrdata1_w = soc_netsoc_sdram_phaseinjector2_wrdata_storage_full[15:8];
assign vns_netsoc_csrbank5_dfii_pi2_wrdata0_w = soc_netsoc_sdram_phaseinjector2_wrdata_storage_full[7:0];
assign vns_netsoc_csrbank5_dfii_pi2_rddata3_w = soc_netsoc_sdram_phaseinjector2_status[31:24];
assign vns_netsoc_csrbank5_dfii_pi2_rddata2_w = soc_netsoc_sdram_phaseinjector2_status[23:16];
assign vns_netsoc_csrbank5_dfii_pi2_rddata1_w = soc_netsoc_sdram_phaseinjector2_status[15:8];
assign vns_netsoc_csrbank5_dfii_pi2_rddata0_w = soc_netsoc_sdram_phaseinjector2_status[7:0];
assign soc_netsoc_sdram_phaseinjector3_command_storage = soc_netsoc_sdram_phaseinjector3_command_storage_full[5:0];
assign vns_netsoc_csrbank5_dfii_pi3_command0_w = soc_netsoc_sdram_phaseinjector3_command_storage_full[5:0];
assign soc_netsoc_sdram_phaseinjector3_address_storage = soc_netsoc_sdram_phaseinjector3_address_storage_full[14:0];
assign vns_netsoc_csrbank5_dfii_pi3_address1_w = soc_netsoc_sdram_phaseinjector3_address_storage_full[14:8];
assign vns_netsoc_csrbank5_dfii_pi3_address0_w = soc_netsoc_sdram_phaseinjector3_address_storage_full[7:0];
assign soc_netsoc_sdram_phaseinjector3_baddress_storage = soc_netsoc_sdram_phaseinjector3_baddress_storage_full[2:0];
assign vns_netsoc_csrbank5_dfii_pi3_baddress0_w = soc_netsoc_sdram_phaseinjector3_baddress_storage_full[2:0];
assign soc_netsoc_sdram_phaseinjector3_wrdata_storage = soc_netsoc_sdram_phaseinjector3_wrdata_storage_full[31:0];
assign vns_netsoc_csrbank5_dfii_pi3_wrdata3_w = soc_netsoc_sdram_phaseinjector3_wrdata_storage_full[31:24];
assign vns_netsoc_csrbank5_dfii_pi3_wrdata2_w = soc_netsoc_sdram_phaseinjector3_wrdata_storage_full[23:16];
assign vns_netsoc_csrbank5_dfii_pi3_wrdata1_w = soc_netsoc_sdram_phaseinjector3_wrdata_storage_full[15:8];
assign vns_netsoc_csrbank5_dfii_pi3_wrdata0_w = soc_netsoc_sdram_phaseinjector3_wrdata_storage_full[7:0];
assign vns_netsoc_csrbank5_dfii_pi3_rddata3_w = soc_netsoc_sdram_phaseinjector3_status[31:24];
assign vns_netsoc_csrbank5_dfii_pi3_rddata2_w = soc_netsoc_sdram_phaseinjector3_status[23:16];
assign vns_netsoc_csrbank5_dfii_pi3_rddata1_w = soc_netsoc_sdram_phaseinjector3_status[15:8];
assign vns_netsoc_csrbank5_dfii_pi3_rddata0_w = soc_netsoc_sdram_phaseinjector3_status[7:0];
assign vns_netsoc_csrbank5_controller_bandwidth_nreads2_w = soc_netsoc_sdram_bandwidth_nreads_status[23:16];
assign vns_netsoc_csrbank5_controller_bandwidth_nreads1_w = soc_netsoc_sdram_bandwidth_nreads_status[15:8];
assign vns_netsoc_csrbank5_controller_bandwidth_nreads0_w = soc_netsoc_sdram_bandwidth_nreads_status[7:0];
assign vns_netsoc_csrbank5_controller_bandwidth_nwrites2_w = soc_netsoc_sdram_bandwidth_nwrites_status[23:16];
assign vns_netsoc_csrbank5_controller_bandwidth_nwrites1_w = soc_netsoc_sdram_bandwidth_nwrites_status[15:8];
assign vns_netsoc_csrbank5_controller_bandwidth_nwrites0_w = soc_netsoc_sdram_bandwidth_nwrites_status[7:0];
assign vns_netsoc_csrbank5_controller_bandwidth_data_width_w = soc_netsoc_sdram_bandwidth_data_width_status[7:0];
assign vns_netsoc_csrbank6_sel = (vns_netsoc_interface6_bank_bus_adr[13:9] == 4'd10);
assign vns_netsoc_csrbank6_bitbang0_r = vns_netsoc_interface6_bank_bus_dat_w[3:0];
assign vns_netsoc_csrbank6_bitbang0_re = ((vns_netsoc_csrbank6_sel & vns_netsoc_interface6_bank_bus_we) & (vns_netsoc_interface6_bank_bus_adr[1:0] == 1'd0));
assign vns_netsoc_csrbank6_miso_r = vns_netsoc_interface6_bank_bus_dat_w[0];
assign vns_netsoc_csrbank6_miso_re = ((vns_netsoc_csrbank6_sel & vns_netsoc_interface6_bank_bus_we) & (vns_netsoc_interface6_bank_bus_adr[1:0] == 1'd1));
assign vns_netsoc_csrbank6_bitbang_en0_r = vns_netsoc_interface6_bank_bus_dat_w[0];
assign vns_netsoc_csrbank6_bitbang_en0_re = ((vns_netsoc_csrbank6_sel & vns_netsoc_interface6_bank_bus_we) & (vns_netsoc_interface6_bank_bus_adr[1:0] == 2'd2));
assign soc_netsoc_bitbang_storage = soc_netsoc_bitbang_storage_full[3:0];
assign vns_netsoc_csrbank6_bitbang0_w = soc_netsoc_bitbang_storage_full[3:0];
assign vns_netsoc_csrbank6_miso_w = soc_netsoc_miso_status;
assign soc_netsoc_bitbang_en_storage = soc_netsoc_bitbang_en_storage_full;
assign vns_netsoc_csrbank6_bitbang_en0_w = soc_netsoc_bitbang_en_storage_full;
assign vns_netsoc_csrbank7_sel = (vns_netsoc_interface7_bank_bus_adr[13:9] == 3'd4);
assign vns_netsoc_csrbank7_load3_r = vns_netsoc_interface7_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank7_load3_re = ((vns_netsoc_csrbank7_sel & vns_netsoc_interface7_bank_bus_we) & (vns_netsoc_interface7_bank_bus_adr[4:0] == 1'd0));
assign vns_netsoc_csrbank7_load2_r = vns_netsoc_interface7_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank7_load2_re = ((vns_netsoc_csrbank7_sel & vns_netsoc_interface7_bank_bus_we) & (vns_netsoc_interface7_bank_bus_adr[4:0] == 1'd1));
assign vns_netsoc_csrbank7_load1_r = vns_netsoc_interface7_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank7_load1_re = ((vns_netsoc_csrbank7_sel & vns_netsoc_interface7_bank_bus_we) & (vns_netsoc_interface7_bank_bus_adr[4:0] == 2'd2));
assign vns_netsoc_csrbank7_load0_r = vns_netsoc_interface7_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank7_load0_re = ((vns_netsoc_csrbank7_sel & vns_netsoc_interface7_bank_bus_we) & (vns_netsoc_interface7_bank_bus_adr[4:0] == 2'd3));
assign vns_netsoc_csrbank7_reload3_r = vns_netsoc_interface7_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank7_reload3_re = ((vns_netsoc_csrbank7_sel & vns_netsoc_interface7_bank_bus_we) & (vns_netsoc_interface7_bank_bus_adr[4:0] == 3'd4));
assign vns_netsoc_csrbank7_reload2_r = vns_netsoc_interface7_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank7_reload2_re = ((vns_netsoc_csrbank7_sel & vns_netsoc_interface7_bank_bus_we) & (vns_netsoc_interface7_bank_bus_adr[4:0] == 3'd5));
assign vns_netsoc_csrbank7_reload1_r = vns_netsoc_interface7_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank7_reload1_re = ((vns_netsoc_csrbank7_sel & vns_netsoc_interface7_bank_bus_we) & (vns_netsoc_interface7_bank_bus_adr[4:0] == 3'd6));
assign vns_netsoc_csrbank7_reload0_r = vns_netsoc_interface7_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank7_reload0_re = ((vns_netsoc_csrbank7_sel & vns_netsoc_interface7_bank_bus_we) & (vns_netsoc_interface7_bank_bus_adr[4:0] == 3'd7));
assign vns_netsoc_csrbank7_en0_r = vns_netsoc_interface7_bank_bus_dat_w[0];
assign vns_netsoc_csrbank7_en0_re = ((vns_netsoc_csrbank7_sel & vns_netsoc_interface7_bank_bus_we) & (vns_netsoc_interface7_bank_bus_adr[4:0] == 4'd8));
assign soc_netsoc_netsoc_update_value_r = vns_netsoc_interface7_bank_bus_dat_w[0];
assign soc_netsoc_netsoc_update_value_re = ((vns_netsoc_csrbank7_sel & vns_netsoc_interface7_bank_bus_we) & (vns_netsoc_interface7_bank_bus_adr[4:0] == 4'd9));
assign vns_netsoc_csrbank7_value3_r = vns_netsoc_interface7_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank7_value3_re = ((vns_netsoc_csrbank7_sel & vns_netsoc_interface7_bank_bus_we) & (vns_netsoc_interface7_bank_bus_adr[4:0] == 4'd10));
assign vns_netsoc_csrbank7_value2_r = vns_netsoc_interface7_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank7_value2_re = ((vns_netsoc_csrbank7_sel & vns_netsoc_interface7_bank_bus_we) & (vns_netsoc_interface7_bank_bus_adr[4:0] == 4'd11));
assign vns_netsoc_csrbank7_value1_r = vns_netsoc_interface7_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank7_value1_re = ((vns_netsoc_csrbank7_sel & vns_netsoc_interface7_bank_bus_we) & (vns_netsoc_interface7_bank_bus_adr[4:0] == 4'd12));
assign vns_netsoc_csrbank7_value0_r = vns_netsoc_interface7_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank7_value0_re = ((vns_netsoc_csrbank7_sel & vns_netsoc_interface7_bank_bus_we) & (vns_netsoc_interface7_bank_bus_adr[4:0] == 4'd13));
assign soc_netsoc_netsoc_eventmanager_status_r = vns_netsoc_interface7_bank_bus_dat_w[0];
assign soc_netsoc_netsoc_eventmanager_status_re = ((vns_netsoc_csrbank7_sel & vns_netsoc_interface7_bank_bus_we) & (vns_netsoc_interface7_bank_bus_adr[4:0] == 4'd14));
assign soc_netsoc_netsoc_eventmanager_pending_r = vns_netsoc_interface7_bank_bus_dat_w[0];
assign soc_netsoc_netsoc_eventmanager_pending_re = ((vns_netsoc_csrbank7_sel & vns_netsoc_interface7_bank_bus_we) & (vns_netsoc_interface7_bank_bus_adr[4:0] == 4'd15));
assign vns_netsoc_csrbank7_ev_enable0_r = vns_netsoc_interface7_bank_bus_dat_w[0];
assign vns_netsoc_csrbank7_ev_enable0_re = ((vns_netsoc_csrbank7_sel & vns_netsoc_interface7_bank_bus_we) & (vns_netsoc_interface7_bank_bus_adr[4:0] == 5'd16));
assign soc_netsoc_netsoc_load_storage = soc_netsoc_netsoc_load_storage_full[31:0];
assign vns_netsoc_csrbank7_load3_w = soc_netsoc_netsoc_load_storage_full[31:24];
assign vns_netsoc_csrbank7_load2_w = soc_netsoc_netsoc_load_storage_full[23:16];
assign vns_netsoc_csrbank7_load1_w = soc_netsoc_netsoc_load_storage_full[15:8];
assign vns_netsoc_csrbank7_load0_w = soc_netsoc_netsoc_load_storage_full[7:0];
assign soc_netsoc_netsoc_reload_storage = soc_netsoc_netsoc_reload_storage_full[31:0];
assign vns_netsoc_csrbank7_reload3_w = soc_netsoc_netsoc_reload_storage_full[31:24];
assign vns_netsoc_csrbank7_reload2_w = soc_netsoc_netsoc_reload_storage_full[23:16];
assign vns_netsoc_csrbank7_reload1_w = soc_netsoc_netsoc_reload_storage_full[15:8];
assign vns_netsoc_csrbank7_reload0_w = soc_netsoc_netsoc_reload_storage_full[7:0];
assign soc_netsoc_netsoc_en_storage = soc_netsoc_netsoc_en_storage_full;
assign vns_netsoc_csrbank7_en0_w = soc_netsoc_netsoc_en_storage_full;
assign vns_netsoc_csrbank7_value3_w = soc_netsoc_netsoc_value_status[31:24];
assign vns_netsoc_csrbank7_value2_w = soc_netsoc_netsoc_value_status[23:16];
assign vns_netsoc_csrbank7_value1_w = soc_netsoc_netsoc_value_status[15:8];
assign vns_netsoc_csrbank7_value0_w = soc_netsoc_netsoc_value_status[7:0];
assign soc_netsoc_netsoc_eventmanager_storage = soc_netsoc_netsoc_eventmanager_storage_full;
assign vns_netsoc_csrbank7_ev_enable0_w = soc_netsoc_netsoc_eventmanager_storage_full;
assign vns_netsoc_csrbank8_sel = (vns_netsoc_interface8_bank_bus_adr[13:9] == 2'd2);
assign soc_netsoc_uart_rxtx_r = vns_netsoc_interface8_bank_bus_dat_w[7:0];
assign soc_netsoc_uart_rxtx_re = ((vns_netsoc_csrbank8_sel & vns_netsoc_interface8_bank_bus_we) & (vns_netsoc_interface8_bank_bus_adr[2:0] == 1'd0));
assign vns_netsoc_csrbank8_txfull_r = vns_netsoc_interface8_bank_bus_dat_w[0];
assign vns_netsoc_csrbank8_txfull_re = ((vns_netsoc_csrbank8_sel & vns_netsoc_interface8_bank_bus_we) & (vns_netsoc_interface8_bank_bus_adr[2:0] == 1'd1));
assign vns_netsoc_csrbank8_rxempty_r = vns_netsoc_interface8_bank_bus_dat_w[0];
assign vns_netsoc_csrbank8_rxempty_re = ((vns_netsoc_csrbank8_sel & vns_netsoc_interface8_bank_bus_we) & (vns_netsoc_interface8_bank_bus_adr[2:0] == 2'd2));
assign soc_netsoc_uart_status_r = vns_netsoc_interface8_bank_bus_dat_w[1:0];
assign soc_netsoc_uart_status_re = ((vns_netsoc_csrbank8_sel & vns_netsoc_interface8_bank_bus_we) & (vns_netsoc_interface8_bank_bus_adr[2:0] == 2'd3));
assign soc_netsoc_uart_pending_r = vns_netsoc_interface8_bank_bus_dat_w[1:0];
assign soc_netsoc_uart_pending_re = ((vns_netsoc_csrbank8_sel & vns_netsoc_interface8_bank_bus_we) & (vns_netsoc_interface8_bank_bus_adr[2:0] == 3'd4));
assign vns_netsoc_csrbank8_ev_enable0_r = vns_netsoc_interface8_bank_bus_dat_w[1:0];
assign vns_netsoc_csrbank8_ev_enable0_re = ((vns_netsoc_csrbank8_sel & vns_netsoc_interface8_bank_bus_we) & (vns_netsoc_interface8_bank_bus_adr[2:0] == 3'd5));
assign vns_netsoc_csrbank8_txfull_w = soc_netsoc_uart_txfull_status;
assign vns_netsoc_csrbank8_rxempty_w = soc_netsoc_uart_rxempty_status;
assign soc_netsoc_uart_storage = soc_netsoc_uart_storage_full[1:0];
assign vns_netsoc_csrbank8_ev_enable0_w = soc_netsoc_uart_storage_full[1:0];
assign vns_netsoc_csrbank9_sel = (vns_netsoc_interface9_bank_bus_adr[13:9] == 1'd1);
assign vns_netsoc_csrbank9_tuning_word3_r = vns_netsoc_interface9_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank9_tuning_word3_re = ((vns_netsoc_csrbank9_sel & vns_netsoc_interface9_bank_bus_we) & (vns_netsoc_interface9_bank_bus_adr[1:0] == 1'd0));
assign vns_netsoc_csrbank9_tuning_word2_r = vns_netsoc_interface9_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank9_tuning_word2_re = ((vns_netsoc_csrbank9_sel & vns_netsoc_interface9_bank_bus_we) & (vns_netsoc_interface9_bank_bus_adr[1:0] == 1'd1));
assign vns_netsoc_csrbank9_tuning_word1_r = vns_netsoc_interface9_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank9_tuning_word1_re = ((vns_netsoc_csrbank9_sel & vns_netsoc_interface9_bank_bus_we) & (vns_netsoc_interface9_bank_bus_adr[1:0] == 2'd2));
assign vns_netsoc_csrbank9_tuning_word0_r = vns_netsoc_interface9_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank9_tuning_word0_re = ((vns_netsoc_csrbank9_sel & vns_netsoc_interface9_bank_bus_we) & (vns_netsoc_interface9_bank_bus_adr[1:0] == 2'd3));
assign soc_netsoc_uart_phy_storage = soc_netsoc_uart_phy_storage_full[31:0];
assign vns_netsoc_csrbank9_tuning_word3_w = soc_netsoc_uart_phy_storage_full[31:24];
assign vns_netsoc_csrbank9_tuning_word2_w = soc_netsoc_uart_phy_storage_full[23:16];
assign vns_netsoc_csrbank9_tuning_word1_w = soc_netsoc_uart_phy_storage_full[15:8];
assign vns_netsoc_csrbank9_tuning_word0_w = soc_netsoc_uart_phy_storage_full[7:0];
assign vns_netsoc_interface0_bank_bus_adr = soc_netsoc_netsoc_interface_adr;
assign vns_netsoc_interface1_bank_bus_adr = soc_netsoc_netsoc_interface_adr;
assign vns_netsoc_interface2_bank_bus_adr = soc_netsoc_netsoc_interface_adr;
assign vns_netsoc_interface3_bank_bus_adr = soc_netsoc_netsoc_interface_adr;
assign vns_netsoc_interface4_bank_bus_adr = soc_netsoc_netsoc_interface_adr;
assign vns_netsoc_interface5_bank_bus_adr = soc_netsoc_netsoc_interface_adr;
assign vns_netsoc_interface6_bank_bus_adr = soc_netsoc_netsoc_interface_adr;
assign vns_netsoc_interface7_bank_bus_adr = soc_netsoc_netsoc_interface_adr;
assign vns_netsoc_interface8_bank_bus_adr = soc_netsoc_netsoc_interface_adr;
assign vns_netsoc_interface9_bank_bus_adr = soc_netsoc_netsoc_interface_adr;
assign vns_netsoc_sram_bus_adr = soc_netsoc_netsoc_interface_adr;
assign vns_netsoc_interface0_bank_bus_we = soc_netsoc_netsoc_interface_we;
assign vns_netsoc_interface1_bank_bus_we = soc_netsoc_netsoc_interface_we;
assign vns_netsoc_interface2_bank_bus_we = soc_netsoc_netsoc_interface_we;
assign vns_netsoc_interface3_bank_bus_we = soc_netsoc_netsoc_interface_we;
assign vns_netsoc_interface4_bank_bus_we = soc_netsoc_netsoc_interface_we;
assign vns_netsoc_interface5_bank_bus_we = soc_netsoc_netsoc_interface_we;
assign vns_netsoc_interface6_bank_bus_we = soc_netsoc_netsoc_interface_we;
assign vns_netsoc_interface7_bank_bus_we = soc_netsoc_netsoc_interface_we;
assign vns_netsoc_interface8_bank_bus_we = soc_netsoc_netsoc_interface_we;
assign vns_netsoc_interface9_bank_bus_we = soc_netsoc_netsoc_interface_we;
assign vns_netsoc_sram_bus_we = soc_netsoc_netsoc_interface_we;
assign vns_netsoc_interface0_bank_bus_dat_w = soc_netsoc_netsoc_interface_dat_w;
assign vns_netsoc_interface1_bank_bus_dat_w = soc_netsoc_netsoc_interface_dat_w;
assign vns_netsoc_interface2_bank_bus_dat_w = soc_netsoc_netsoc_interface_dat_w;
assign vns_netsoc_interface3_bank_bus_dat_w = soc_netsoc_netsoc_interface_dat_w;
assign vns_netsoc_interface4_bank_bus_dat_w = soc_netsoc_netsoc_interface_dat_w;
assign vns_netsoc_interface5_bank_bus_dat_w = soc_netsoc_netsoc_interface_dat_w;
assign vns_netsoc_interface6_bank_bus_dat_w = soc_netsoc_netsoc_interface_dat_w;
assign vns_netsoc_interface7_bank_bus_dat_w = soc_netsoc_netsoc_interface_dat_w;
assign vns_netsoc_interface8_bank_bus_dat_w = soc_netsoc_netsoc_interface_dat_w;
assign vns_netsoc_interface9_bank_bus_dat_w = soc_netsoc_netsoc_interface_dat_w;
assign vns_netsoc_sram_bus_dat_w = soc_netsoc_netsoc_interface_dat_w;
assign soc_netsoc_netsoc_interface_dat_r = ((((((((((vns_netsoc_interface0_bank_bus_dat_r | vns_netsoc_interface1_bank_bus_dat_r) | vns_netsoc_interface2_bank_bus_dat_r) | vns_netsoc_interface3_bank_bus_dat_r) | vns_netsoc_interface4_bank_bus_dat_r) | vns_netsoc_interface5_bank_bus_dat_r) | vns_netsoc_interface6_bank_bus_dat_r) | vns_netsoc_interface7_bank_bus_dat_r) | vns_netsoc_interface8_bank_bus_dat_r) | vns_netsoc_interface9_bank_bus_dat_r) | vns_netsoc_sram_bus_dat_r);

// synthesis translate_off
reg dummy_d_103;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed0 <= 1'd0;
	case (soc_netsoc_sdram_choose_cmd_grant)
		1'd0: begin
			vns_rhs_array_muxed0 <= soc_netsoc_sdram_choose_cmd_valids[0];
		end
		1'd1: begin
			vns_rhs_array_muxed0 <= soc_netsoc_sdram_choose_cmd_valids[1];
		end
		2'd2: begin
			vns_rhs_array_muxed0 <= soc_netsoc_sdram_choose_cmd_valids[2];
		end
		2'd3: begin
			vns_rhs_array_muxed0 <= soc_netsoc_sdram_choose_cmd_valids[3];
		end
		3'd4: begin
			vns_rhs_array_muxed0 <= soc_netsoc_sdram_choose_cmd_valids[4];
		end
		3'd5: begin
			vns_rhs_array_muxed0 <= soc_netsoc_sdram_choose_cmd_valids[5];
		end
		3'd6: begin
			vns_rhs_array_muxed0 <= soc_netsoc_sdram_choose_cmd_valids[6];
		end
		default: begin
			vns_rhs_array_muxed0 <= soc_netsoc_sdram_choose_cmd_valids[7];
		end
	endcase
// synthesis translate_off
	dummy_d_103 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_104;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed1 <= 15'd0;
	case (soc_netsoc_sdram_choose_cmd_grant)
		1'd0: begin
			vns_rhs_array_muxed1 <= soc_netsoc_sdram_bankmachine0_cmd_payload_a;
		end
		1'd1: begin
			vns_rhs_array_muxed1 <= soc_netsoc_sdram_bankmachine1_cmd_payload_a;
		end
		2'd2: begin
			vns_rhs_array_muxed1 <= soc_netsoc_sdram_bankmachine2_cmd_payload_a;
		end
		2'd3: begin
			vns_rhs_array_muxed1 <= soc_netsoc_sdram_bankmachine3_cmd_payload_a;
		end
		3'd4: begin
			vns_rhs_array_muxed1 <= soc_netsoc_sdram_bankmachine4_cmd_payload_a;
		end
		3'd5: begin
			vns_rhs_array_muxed1 <= soc_netsoc_sdram_bankmachine5_cmd_payload_a;
		end
		3'd6: begin
			vns_rhs_array_muxed1 <= soc_netsoc_sdram_bankmachine6_cmd_payload_a;
		end
		default: begin
			vns_rhs_array_muxed1 <= soc_netsoc_sdram_bankmachine7_cmd_payload_a;
		end
	endcase
// synthesis translate_off
	dummy_d_104 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_105;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed2 <= 3'd0;
	case (soc_netsoc_sdram_choose_cmd_grant)
		1'd0: begin
			vns_rhs_array_muxed2 <= soc_netsoc_sdram_bankmachine0_cmd_payload_ba;
		end
		1'd1: begin
			vns_rhs_array_muxed2 <= soc_netsoc_sdram_bankmachine1_cmd_payload_ba;
		end
		2'd2: begin
			vns_rhs_array_muxed2 <= soc_netsoc_sdram_bankmachine2_cmd_payload_ba;
		end
		2'd3: begin
			vns_rhs_array_muxed2 <= soc_netsoc_sdram_bankmachine3_cmd_payload_ba;
		end
		3'd4: begin
			vns_rhs_array_muxed2 <= soc_netsoc_sdram_bankmachine4_cmd_payload_ba;
		end
		3'd5: begin
			vns_rhs_array_muxed2 <= soc_netsoc_sdram_bankmachine5_cmd_payload_ba;
		end
		3'd6: begin
			vns_rhs_array_muxed2 <= soc_netsoc_sdram_bankmachine6_cmd_payload_ba;
		end
		default: begin
			vns_rhs_array_muxed2 <= soc_netsoc_sdram_bankmachine7_cmd_payload_ba;
		end
	endcase
// synthesis translate_off
	dummy_d_105 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_106;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed3 <= 1'd0;
	case (soc_netsoc_sdram_choose_cmd_grant)
		1'd0: begin
			vns_rhs_array_muxed3 <= soc_netsoc_sdram_bankmachine0_cmd_payload_is_read;
		end
		1'd1: begin
			vns_rhs_array_muxed3 <= soc_netsoc_sdram_bankmachine1_cmd_payload_is_read;
		end
		2'd2: begin
			vns_rhs_array_muxed3 <= soc_netsoc_sdram_bankmachine2_cmd_payload_is_read;
		end
		2'd3: begin
			vns_rhs_array_muxed3 <= soc_netsoc_sdram_bankmachine3_cmd_payload_is_read;
		end
		3'd4: begin
			vns_rhs_array_muxed3 <= soc_netsoc_sdram_bankmachine4_cmd_payload_is_read;
		end
		3'd5: begin
			vns_rhs_array_muxed3 <= soc_netsoc_sdram_bankmachine5_cmd_payload_is_read;
		end
		3'd6: begin
			vns_rhs_array_muxed3 <= soc_netsoc_sdram_bankmachine6_cmd_payload_is_read;
		end
		default: begin
			vns_rhs_array_muxed3 <= soc_netsoc_sdram_bankmachine7_cmd_payload_is_read;
		end
	endcase
// synthesis translate_off
	dummy_d_106 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_107;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed4 <= 1'd0;
	case (soc_netsoc_sdram_choose_cmd_grant)
		1'd0: begin
			vns_rhs_array_muxed4 <= soc_netsoc_sdram_bankmachine0_cmd_payload_is_write;
		end
		1'd1: begin
			vns_rhs_array_muxed4 <= soc_netsoc_sdram_bankmachine1_cmd_payload_is_write;
		end
		2'd2: begin
			vns_rhs_array_muxed4 <= soc_netsoc_sdram_bankmachine2_cmd_payload_is_write;
		end
		2'd3: begin
			vns_rhs_array_muxed4 <= soc_netsoc_sdram_bankmachine3_cmd_payload_is_write;
		end
		3'd4: begin
			vns_rhs_array_muxed4 <= soc_netsoc_sdram_bankmachine4_cmd_payload_is_write;
		end
		3'd5: begin
			vns_rhs_array_muxed4 <= soc_netsoc_sdram_bankmachine5_cmd_payload_is_write;
		end
		3'd6: begin
			vns_rhs_array_muxed4 <= soc_netsoc_sdram_bankmachine6_cmd_payload_is_write;
		end
		default: begin
			vns_rhs_array_muxed4 <= soc_netsoc_sdram_bankmachine7_cmd_payload_is_write;
		end
	endcase
// synthesis translate_off
	dummy_d_107 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_108;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed5 <= 1'd0;
	case (soc_netsoc_sdram_choose_cmd_grant)
		1'd0: begin
			vns_rhs_array_muxed5 <= soc_netsoc_sdram_bankmachine0_cmd_payload_is_cmd;
		end
		1'd1: begin
			vns_rhs_array_muxed5 <= soc_netsoc_sdram_bankmachine1_cmd_payload_is_cmd;
		end
		2'd2: begin
			vns_rhs_array_muxed5 <= soc_netsoc_sdram_bankmachine2_cmd_payload_is_cmd;
		end
		2'd3: begin
			vns_rhs_array_muxed5 <= soc_netsoc_sdram_bankmachine3_cmd_payload_is_cmd;
		end
		3'd4: begin
			vns_rhs_array_muxed5 <= soc_netsoc_sdram_bankmachine4_cmd_payload_is_cmd;
		end
		3'd5: begin
			vns_rhs_array_muxed5 <= soc_netsoc_sdram_bankmachine5_cmd_payload_is_cmd;
		end
		3'd6: begin
			vns_rhs_array_muxed5 <= soc_netsoc_sdram_bankmachine6_cmd_payload_is_cmd;
		end
		default: begin
			vns_rhs_array_muxed5 <= soc_netsoc_sdram_bankmachine7_cmd_payload_is_cmd;
		end
	endcase
// synthesis translate_off
	dummy_d_108 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_109;
// synthesis translate_on
always @(*) begin
	vns_t_array_muxed0 <= 1'd0;
	case (soc_netsoc_sdram_choose_cmd_grant)
		1'd0: begin
			vns_t_array_muxed0 <= soc_netsoc_sdram_bankmachine0_cmd_payload_cas;
		end
		1'd1: begin
			vns_t_array_muxed0 <= soc_netsoc_sdram_bankmachine1_cmd_payload_cas;
		end
		2'd2: begin
			vns_t_array_muxed0 <= soc_netsoc_sdram_bankmachine2_cmd_payload_cas;
		end
		2'd3: begin
			vns_t_array_muxed0 <= soc_netsoc_sdram_bankmachine3_cmd_payload_cas;
		end
		3'd4: begin
			vns_t_array_muxed0 <= soc_netsoc_sdram_bankmachine4_cmd_payload_cas;
		end
		3'd5: begin
			vns_t_array_muxed0 <= soc_netsoc_sdram_bankmachine5_cmd_payload_cas;
		end
		3'd6: begin
			vns_t_array_muxed0 <= soc_netsoc_sdram_bankmachine6_cmd_payload_cas;
		end
		default: begin
			vns_t_array_muxed0 <= soc_netsoc_sdram_bankmachine7_cmd_payload_cas;
		end
	endcase
// synthesis translate_off
	dummy_d_109 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_110;
// synthesis translate_on
always @(*) begin
	vns_t_array_muxed1 <= 1'd0;
	case (soc_netsoc_sdram_choose_cmd_grant)
		1'd0: begin
			vns_t_array_muxed1 <= soc_netsoc_sdram_bankmachine0_cmd_payload_ras;
		end
		1'd1: begin
			vns_t_array_muxed1 <= soc_netsoc_sdram_bankmachine1_cmd_payload_ras;
		end
		2'd2: begin
			vns_t_array_muxed1 <= soc_netsoc_sdram_bankmachine2_cmd_payload_ras;
		end
		2'd3: begin
			vns_t_array_muxed1 <= soc_netsoc_sdram_bankmachine3_cmd_payload_ras;
		end
		3'd4: begin
			vns_t_array_muxed1 <= soc_netsoc_sdram_bankmachine4_cmd_payload_ras;
		end
		3'd5: begin
			vns_t_array_muxed1 <= soc_netsoc_sdram_bankmachine5_cmd_payload_ras;
		end
		3'd6: begin
			vns_t_array_muxed1 <= soc_netsoc_sdram_bankmachine6_cmd_payload_ras;
		end
		default: begin
			vns_t_array_muxed1 <= soc_netsoc_sdram_bankmachine7_cmd_payload_ras;
		end
	endcase
// synthesis translate_off
	dummy_d_110 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_111;
// synthesis translate_on
always @(*) begin
	vns_t_array_muxed2 <= 1'd0;
	case (soc_netsoc_sdram_choose_cmd_grant)
		1'd0: begin
			vns_t_array_muxed2 <= soc_netsoc_sdram_bankmachine0_cmd_payload_we;
		end
		1'd1: begin
			vns_t_array_muxed2 <= soc_netsoc_sdram_bankmachine1_cmd_payload_we;
		end
		2'd2: begin
			vns_t_array_muxed2 <= soc_netsoc_sdram_bankmachine2_cmd_payload_we;
		end
		2'd3: begin
			vns_t_array_muxed2 <= soc_netsoc_sdram_bankmachine3_cmd_payload_we;
		end
		3'd4: begin
			vns_t_array_muxed2 <= soc_netsoc_sdram_bankmachine4_cmd_payload_we;
		end
		3'd5: begin
			vns_t_array_muxed2 <= soc_netsoc_sdram_bankmachine5_cmd_payload_we;
		end
		3'd6: begin
			vns_t_array_muxed2 <= soc_netsoc_sdram_bankmachine6_cmd_payload_we;
		end
		default: begin
			vns_t_array_muxed2 <= soc_netsoc_sdram_bankmachine7_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_111 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_112;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed6 <= 1'd0;
	case (soc_netsoc_sdram_choose_req_grant)
		1'd0: begin
			vns_rhs_array_muxed6 <= soc_netsoc_sdram_choose_req_valids[0];
		end
		1'd1: begin
			vns_rhs_array_muxed6 <= soc_netsoc_sdram_choose_req_valids[1];
		end
		2'd2: begin
			vns_rhs_array_muxed6 <= soc_netsoc_sdram_choose_req_valids[2];
		end
		2'd3: begin
			vns_rhs_array_muxed6 <= soc_netsoc_sdram_choose_req_valids[3];
		end
		3'd4: begin
			vns_rhs_array_muxed6 <= soc_netsoc_sdram_choose_req_valids[4];
		end
		3'd5: begin
			vns_rhs_array_muxed6 <= soc_netsoc_sdram_choose_req_valids[5];
		end
		3'd6: begin
			vns_rhs_array_muxed6 <= soc_netsoc_sdram_choose_req_valids[6];
		end
		default: begin
			vns_rhs_array_muxed6 <= soc_netsoc_sdram_choose_req_valids[7];
		end
	endcase
// synthesis translate_off
	dummy_d_112 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_113;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed7 <= 15'd0;
	case (soc_netsoc_sdram_choose_req_grant)
		1'd0: begin
			vns_rhs_array_muxed7 <= soc_netsoc_sdram_bankmachine0_cmd_payload_a;
		end
		1'd1: begin
			vns_rhs_array_muxed7 <= soc_netsoc_sdram_bankmachine1_cmd_payload_a;
		end
		2'd2: begin
			vns_rhs_array_muxed7 <= soc_netsoc_sdram_bankmachine2_cmd_payload_a;
		end
		2'd3: begin
			vns_rhs_array_muxed7 <= soc_netsoc_sdram_bankmachine3_cmd_payload_a;
		end
		3'd4: begin
			vns_rhs_array_muxed7 <= soc_netsoc_sdram_bankmachine4_cmd_payload_a;
		end
		3'd5: begin
			vns_rhs_array_muxed7 <= soc_netsoc_sdram_bankmachine5_cmd_payload_a;
		end
		3'd6: begin
			vns_rhs_array_muxed7 <= soc_netsoc_sdram_bankmachine6_cmd_payload_a;
		end
		default: begin
			vns_rhs_array_muxed7 <= soc_netsoc_sdram_bankmachine7_cmd_payload_a;
		end
	endcase
// synthesis translate_off
	dummy_d_113 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_114;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed8 <= 3'd0;
	case (soc_netsoc_sdram_choose_req_grant)
		1'd0: begin
			vns_rhs_array_muxed8 <= soc_netsoc_sdram_bankmachine0_cmd_payload_ba;
		end
		1'd1: begin
			vns_rhs_array_muxed8 <= soc_netsoc_sdram_bankmachine1_cmd_payload_ba;
		end
		2'd2: begin
			vns_rhs_array_muxed8 <= soc_netsoc_sdram_bankmachine2_cmd_payload_ba;
		end
		2'd3: begin
			vns_rhs_array_muxed8 <= soc_netsoc_sdram_bankmachine3_cmd_payload_ba;
		end
		3'd4: begin
			vns_rhs_array_muxed8 <= soc_netsoc_sdram_bankmachine4_cmd_payload_ba;
		end
		3'd5: begin
			vns_rhs_array_muxed8 <= soc_netsoc_sdram_bankmachine5_cmd_payload_ba;
		end
		3'd6: begin
			vns_rhs_array_muxed8 <= soc_netsoc_sdram_bankmachine6_cmd_payload_ba;
		end
		default: begin
			vns_rhs_array_muxed8 <= soc_netsoc_sdram_bankmachine7_cmd_payload_ba;
		end
	endcase
// synthesis translate_off
	dummy_d_114 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_115;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed9 <= 1'd0;
	case (soc_netsoc_sdram_choose_req_grant)
		1'd0: begin
			vns_rhs_array_muxed9 <= soc_netsoc_sdram_bankmachine0_cmd_payload_is_read;
		end
		1'd1: begin
			vns_rhs_array_muxed9 <= soc_netsoc_sdram_bankmachine1_cmd_payload_is_read;
		end
		2'd2: begin
			vns_rhs_array_muxed9 <= soc_netsoc_sdram_bankmachine2_cmd_payload_is_read;
		end
		2'd3: begin
			vns_rhs_array_muxed9 <= soc_netsoc_sdram_bankmachine3_cmd_payload_is_read;
		end
		3'd4: begin
			vns_rhs_array_muxed9 <= soc_netsoc_sdram_bankmachine4_cmd_payload_is_read;
		end
		3'd5: begin
			vns_rhs_array_muxed9 <= soc_netsoc_sdram_bankmachine5_cmd_payload_is_read;
		end
		3'd6: begin
			vns_rhs_array_muxed9 <= soc_netsoc_sdram_bankmachine6_cmd_payload_is_read;
		end
		default: begin
			vns_rhs_array_muxed9 <= soc_netsoc_sdram_bankmachine7_cmd_payload_is_read;
		end
	endcase
// synthesis translate_off
	dummy_d_115 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_116;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed10 <= 1'd0;
	case (soc_netsoc_sdram_choose_req_grant)
		1'd0: begin
			vns_rhs_array_muxed10 <= soc_netsoc_sdram_bankmachine0_cmd_payload_is_write;
		end
		1'd1: begin
			vns_rhs_array_muxed10 <= soc_netsoc_sdram_bankmachine1_cmd_payload_is_write;
		end
		2'd2: begin
			vns_rhs_array_muxed10 <= soc_netsoc_sdram_bankmachine2_cmd_payload_is_write;
		end
		2'd3: begin
			vns_rhs_array_muxed10 <= soc_netsoc_sdram_bankmachine3_cmd_payload_is_write;
		end
		3'd4: begin
			vns_rhs_array_muxed10 <= soc_netsoc_sdram_bankmachine4_cmd_payload_is_write;
		end
		3'd5: begin
			vns_rhs_array_muxed10 <= soc_netsoc_sdram_bankmachine5_cmd_payload_is_write;
		end
		3'd6: begin
			vns_rhs_array_muxed10 <= soc_netsoc_sdram_bankmachine6_cmd_payload_is_write;
		end
		default: begin
			vns_rhs_array_muxed10 <= soc_netsoc_sdram_bankmachine7_cmd_payload_is_write;
		end
	endcase
// synthesis translate_off
	dummy_d_116 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_117;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed11 <= 1'd0;
	case (soc_netsoc_sdram_choose_req_grant)
		1'd0: begin
			vns_rhs_array_muxed11 <= soc_netsoc_sdram_bankmachine0_cmd_payload_is_cmd;
		end
		1'd1: begin
			vns_rhs_array_muxed11 <= soc_netsoc_sdram_bankmachine1_cmd_payload_is_cmd;
		end
		2'd2: begin
			vns_rhs_array_muxed11 <= soc_netsoc_sdram_bankmachine2_cmd_payload_is_cmd;
		end
		2'd3: begin
			vns_rhs_array_muxed11 <= soc_netsoc_sdram_bankmachine3_cmd_payload_is_cmd;
		end
		3'd4: begin
			vns_rhs_array_muxed11 <= soc_netsoc_sdram_bankmachine4_cmd_payload_is_cmd;
		end
		3'd5: begin
			vns_rhs_array_muxed11 <= soc_netsoc_sdram_bankmachine5_cmd_payload_is_cmd;
		end
		3'd6: begin
			vns_rhs_array_muxed11 <= soc_netsoc_sdram_bankmachine6_cmd_payload_is_cmd;
		end
		default: begin
			vns_rhs_array_muxed11 <= soc_netsoc_sdram_bankmachine7_cmd_payload_is_cmd;
		end
	endcase
// synthesis translate_off
	dummy_d_117 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_118;
// synthesis translate_on
always @(*) begin
	vns_t_array_muxed3 <= 1'd0;
	case (soc_netsoc_sdram_choose_req_grant)
		1'd0: begin
			vns_t_array_muxed3 <= soc_netsoc_sdram_bankmachine0_cmd_payload_cas;
		end
		1'd1: begin
			vns_t_array_muxed3 <= soc_netsoc_sdram_bankmachine1_cmd_payload_cas;
		end
		2'd2: begin
			vns_t_array_muxed3 <= soc_netsoc_sdram_bankmachine2_cmd_payload_cas;
		end
		2'd3: begin
			vns_t_array_muxed3 <= soc_netsoc_sdram_bankmachine3_cmd_payload_cas;
		end
		3'd4: begin
			vns_t_array_muxed3 <= soc_netsoc_sdram_bankmachine4_cmd_payload_cas;
		end
		3'd5: begin
			vns_t_array_muxed3 <= soc_netsoc_sdram_bankmachine5_cmd_payload_cas;
		end
		3'd6: begin
			vns_t_array_muxed3 <= soc_netsoc_sdram_bankmachine6_cmd_payload_cas;
		end
		default: begin
			vns_t_array_muxed3 <= soc_netsoc_sdram_bankmachine7_cmd_payload_cas;
		end
	endcase
// synthesis translate_off
	dummy_d_118 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_119;
// synthesis translate_on
always @(*) begin
	vns_t_array_muxed4 <= 1'd0;
	case (soc_netsoc_sdram_choose_req_grant)
		1'd0: begin
			vns_t_array_muxed4 <= soc_netsoc_sdram_bankmachine0_cmd_payload_ras;
		end
		1'd1: begin
			vns_t_array_muxed4 <= soc_netsoc_sdram_bankmachine1_cmd_payload_ras;
		end
		2'd2: begin
			vns_t_array_muxed4 <= soc_netsoc_sdram_bankmachine2_cmd_payload_ras;
		end
		2'd3: begin
			vns_t_array_muxed4 <= soc_netsoc_sdram_bankmachine3_cmd_payload_ras;
		end
		3'd4: begin
			vns_t_array_muxed4 <= soc_netsoc_sdram_bankmachine4_cmd_payload_ras;
		end
		3'd5: begin
			vns_t_array_muxed4 <= soc_netsoc_sdram_bankmachine5_cmd_payload_ras;
		end
		3'd6: begin
			vns_t_array_muxed4 <= soc_netsoc_sdram_bankmachine6_cmd_payload_ras;
		end
		default: begin
			vns_t_array_muxed4 <= soc_netsoc_sdram_bankmachine7_cmd_payload_ras;
		end
	endcase
// synthesis translate_off
	dummy_d_119 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_120;
// synthesis translate_on
always @(*) begin
	vns_t_array_muxed5 <= 1'd0;
	case (soc_netsoc_sdram_choose_req_grant)
		1'd0: begin
			vns_t_array_muxed5 <= soc_netsoc_sdram_bankmachine0_cmd_payload_we;
		end
		1'd1: begin
			vns_t_array_muxed5 <= soc_netsoc_sdram_bankmachine1_cmd_payload_we;
		end
		2'd2: begin
			vns_t_array_muxed5 <= soc_netsoc_sdram_bankmachine2_cmd_payload_we;
		end
		2'd3: begin
			vns_t_array_muxed5 <= soc_netsoc_sdram_bankmachine3_cmd_payload_we;
		end
		3'd4: begin
			vns_t_array_muxed5 <= soc_netsoc_sdram_bankmachine4_cmd_payload_we;
		end
		3'd5: begin
			vns_t_array_muxed5 <= soc_netsoc_sdram_bankmachine5_cmd_payload_we;
		end
		3'd6: begin
			vns_t_array_muxed5 <= soc_netsoc_sdram_bankmachine6_cmd_payload_we;
		end
		default: begin
			vns_t_array_muxed5 <= soc_netsoc_sdram_bankmachine7_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_120 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_121;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed12 <= 22'd0;
	case (vns_roundrobin0_grant)
		default: begin
			vns_rhs_array_muxed12 <= vns_rca;
		end
	endcase
// synthesis translate_off
	dummy_d_121 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_122;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed13 <= 1'd0;
	case (vns_roundrobin0_grant)
		default: begin
			vns_rhs_array_muxed13 <= soc_netsoc_port_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_122 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_123;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed14 <= 1'd0;
	case (vns_roundrobin0_grant)
		default: begin
			vns_rhs_array_muxed14 <= (((vns_cba == 1'd0) & (~(((((((1'd0 | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_123 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_124;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed15 <= 22'd0;
	case (vns_roundrobin1_grant)
		default: begin
			vns_rhs_array_muxed15 <= vns_rca;
		end
	endcase
// synthesis translate_off
	dummy_d_124 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_125;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed16 <= 1'd0;
	case (vns_roundrobin1_grant)
		default: begin
			vns_rhs_array_muxed16 <= soc_netsoc_port_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_125 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_126;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed17 <= 1'd0;
	case (vns_roundrobin1_grant)
		default: begin
			vns_rhs_array_muxed17 <= (((vns_cba == 1'd1) & (~(((((((1'd0 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_126 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_127;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed18 <= 22'd0;
	case (vns_roundrobin2_grant)
		default: begin
			vns_rhs_array_muxed18 <= vns_rca;
		end
	endcase
// synthesis translate_off
	dummy_d_127 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_128;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed19 <= 1'd0;
	case (vns_roundrobin2_grant)
		default: begin
			vns_rhs_array_muxed19 <= soc_netsoc_port_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_128 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_129;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed20 <= 1'd0;
	case (vns_roundrobin2_grant)
		default: begin
			vns_rhs_array_muxed20 <= (((vns_cba == 2'd2) & (~(((((((1'd0 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_129 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_130;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed21 <= 22'd0;
	case (vns_roundrobin3_grant)
		default: begin
			vns_rhs_array_muxed21 <= vns_rca;
		end
	endcase
// synthesis translate_off
	dummy_d_130 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_131;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed22 <= 1'd0;
	case (vns_roundrobin3_grant)
		default: begin
			vns_rhs_array_muxed22 <= soc_netsoc_port_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_131 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_132;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed23 <= 1'd0;
	case (vns_roundrobin3_grant)
		default: begin
			vns_rhs_array_muxed23 <= (((vns_cba == 2'd3) & (~(((((((1'd0 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_132 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_133;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed24 <= 22'd0;
	case (vns_roundrobin4_grant)
		default: begin
			vns_rhs_array_muxed24 <= vns_rca;
		end
	endcase
// synthesis translate_off
	dummy_d_133 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_134;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed25 <= 1'd0;
	case (vns_roundrobin4_grant)
		default: begin
			vns_rhs_array_muxed25 <= soc_netsoc_port_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_134 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_135;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed26 <= 1'd0;
	case (vns_roundrobin4_grant)
		default: begin
			vns_rhs_array_muxed26 <= (((vns_cba == 3'd4) & (~(((((((1'd0 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_135 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_136;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed27 <= 22'd0;
	case (vns_roundrobin5_grant)
		default: begin
			vns_rhs_array_muxed27 <= vns_rca;
		end
	endcase
// synthesis translate_off
	dummy_d_136 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_137;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed28 <= 1'd0;
	case (vns_roundrobin5_grant)
		default: begin
			vns_rhs_array_muxed28 <= soc_netsoc_port_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_137 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_138;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed29 <= 1'd0;
	case (vns_roundrobin5_grant)
		default: begin
			vns_rhs_array_muxed29 <= (((vns_cba == 3'd5) & (~(((((((1'd0 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_138 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_139;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed30 <= 22'd0;
	case (vns_roundrobin6_grant)
		default: begin
			vns_rhs_array_muxed30 <= vns_rca;
		end
	endcase
// synthesis translate_off
	dummy_d_139 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_140;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed31 <= 1'd0;
	case (vns_roundrobin6_grant)
		default: begin
			vns_rhs_array_muxed31 <= soc_netsoc_port_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_140 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_141;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed32 <= 1'd0;
	case (vns_roundrobin6_grant)
		default: begin
			vns_rhs_array_muxed32 <= (((vns_cba == 3'd6) & (~(((((((1'd0 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_141 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_142;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed33 <= 22'd0;
	case (vns_roundrobin7_grant)
		default: begin
			vns_rhs_array_muxed33 <= vns_rca;
		end
	endcase
// synthesis translate_off
	dummy_d_142 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_143;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed34 <= 1'd0;
	case (vns_roundrobin7_grant)
		default: begin
			vns_rhs_array_muxed34 <= soc_netsoc_port_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_143 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_144;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed35 <= 1'd0;
	case (vns_roundrobin7_grant)
		default: begin
			vns_rhs_array_muxed35 <= (((vns_cba == 3'd7) & (~(((((((1'd0 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))))) & soc_netsoc_port_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_144 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_145;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed36 <= 30'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed36 <= soc_netsoc_interface1_wb_sdram_adr;
		end
	endcase
// synthesis translate_off
	dummy_d_145 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_146;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed37 <= 32'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed37 <= soc_netsoc_interface1_wb_sdram_dat_w;
		end
	endcase
// synthesis translate_off
	dummy_d_146 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_147;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed38 <= 4'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed38 <= soc_netsoc_interface1_wb_sdram_sel;
		end
	endcase
// synthesis translate_off
	dummy_d_147 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_148;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed39 <= 1'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed39 <= soc_netsoc_interface1_wb_sdram_cyc;
		end
	endcase
// synthesis translate_off
	dummy_d_148 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_149;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed40 <= 1'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed40 <= soc_netsoc_interface1_wb_sdram_stb;
		end
	endcase
// synthesis translate_off
	dummy_d_149 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_150;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed41 <= 1'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed41 <= soc_netsoc_interface1_wb_sdram_we;
		end
	endcase
// synthesis translate_off
	dummy_d_150 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_151;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed42 <= 3'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed42 <= soc_netsoc_interface1_wb_sdram_cti;
		end
	endcase
// synthesis translate_off
	dummy_d_151 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_152;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed43 <= 2'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed43 <= soc_netsoc_interface1_wb_sdram_bte;
		end
	endcase
// synthesis translate_off
	dummy_d_152 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_153;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed44 <= 30'd0;
	case (vns_netsoc_grant)
		1'd0: begin
			vns_rhs_array_muxed44 <= soc_netsoc_netsoc_ibus_adr;
		end
		1'd1: begin
			vns_rhs_array_muxed44 <= soc_netsoc_netsoc_dbus_adr;
		end
		default: begin
			vns_rhs_array_muxed44 <= soc_netsoc_bridge_wishbone_adr;
		end
	endcase
// synthesis translate_off
	dummy_d_153 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_154;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed45 <= 32'd0;
	case (vns_netsoc_grant)
		1'd0: begin
			vns_rhs_array_muxed45 <= soc_netsoc_netsoc_ibus_dat_w;
		end
		1'd1: begin
			vns_rhs_array_muxed45 <= soc_netsoc_netsoc_dbus_dat_w;
		end
		default: begin
			vns_rhs_array_muxed45 <= soc_netsoc_bridge_wishbone_dat_w;
		end
	endcase
// synthesis translate_off
	dummy_d_154 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_155;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed46 <= 4'd0;
	case (vns_netsoc_grant)
		1'd0: begin
			vns_rhs_array_muxed46 <= soc_netsoc_netsoc_ibus_sel;
		end
		1'd1: begin
			vns_rhs_array_muxed46 <= soc_netsoc_netsoc_dbus_sel;
		end
		default: begin
			vns_rhs_array_muxed46 <= soc_netsoc_bridge_wishbone_sel;
		end
	endcase
// synthesis translate_off
	dummy_d_155 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_156;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed47 <= 1'd0;
	case (vns_netsoc_grant)
		1'd0: begin
			vns_rhs_array_muxed47 <= soc_netsoc_netsoc_ibus_cyc;
		end
		1'd1: begin
			vns_rhs_array_muxed47 <= soc_netsoc_netsoc_dbus_cyc;
		end
		default: begin
			vns_rhs_array_muxed47 <= soc_netsoc_bridge_wishbone_cyc;
		end
	endcase
// synthesis translate_off
	dummy_d_156 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_157;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed48 <= 1'd0;
	case (vns_netsoc_grant)
		1'd0: begin
			vns_rhs_array_muxed48 <= soc_netsoc_netsoc_ibus_stb;
		end
		1'd1: begin
			vns_rhs_array_muxed48 <= soc_netsoc_netsoc_dbus_stb;
		end
		default: begin
			vns_rhs_array_muxed48 <= soc_netsoc_bridge_wishbone_stb;
		end
	endcase
// synthesis translate_off
	dummy_d_157 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_158;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed49 <= 1'd0;
	case (vns_netsoc_grant)
		1'd0: begin
			vns_rhs_array_muxed49 <= soc_netsoc_netsoc_ibus_we;
		end
		1'd1: begin
			vns_rhs_array_muxed49 <= soc_netsoc_netsoc_dbus_we;
		end
		default: begin
			vns_rhs_array_muxed49 <= soc_netsoc_bridge_wishbone_we;
		end
	endcase
// synthesis translate_off
	dummy_d_158 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_159;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed50 <= 3'd0;
	case (vns_netsoc_grant)
		1'd0: begin
			vns_rhs_array_muxed50 <= soc_netsoc_netsoc_ibus_cti;
		end
		1'd1: begin
			vns_rhs_array_muxed50 <= soc_netsoc_netsoc_dbus_cti;
		end
		default: begin
			vns_rhs_array_muxed50 <= soc_netsoc_bridge_wishbone_cti;
		end
	endcase
// synthesis translate_off
	dummy_d_159 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_160;
// synthesis translate_on
always @(*) begin
	vns_rhs_array_muxed51 <= 2'd0;
	case (vns_netsoc_grant)
		1'd0: begin
			vns_rhs_array_muxed51 <= soc_netsoc_netsoc_ibus_bte;
		end
		1'd1: begin
			vns_rhs_array_muxed51 <= soc_netsoc_netsoc_dbus_bte;
		end
		default: begin
			vns_rhs_array_muxed51 <= soc_netsoc_bridge_wishbone_bte;
		end
	endcase
// synthesis translate_off
	dummy_d_160 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_161;
// synthesis translate_on
always @(*) begin
	vns_array_muxed0 <= 15'd0;
	case (soc_netsoc_sdram_sel0)
		1'd0: begin
			vns_array_muxed0 <= soc_netsoc_sdram_nop_a;
		end
		1'd1: begin
			vns_array_muxed0 <= soc_netsoc_sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			vns_array_muxed0 <= soc_netsoc_sdram_choose_req_cmd_payload_a;
		end
		default: begin
			vns_array_muxed0 <= soc_netsoc_sdram_cmd_payload_a;
		end
	endcase
// synthesis translate_off
	dummy_d_161 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_162;
// synthesis translate_on
always @(*) begin
	vns_array_muxed1 <= 3'd0;
	case (soc_netsoc_sdram_sel0)
		1'd0: begin
			vns_array_muxed1 <= soc_netsoc_sdram_nop_ba;
		end
		1'd1: begin
			vns_array_muxed1 <= soc_netsoc_sdram_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			vns_array_muxed1 <= soc_netsoc_sdram_choose_req_cmd_payload_ba;
		end
		default: begin
			vns_array_muxed1 <= soc_netsoc_sdram_cmd_payload_ba;
		end
	endcase
// synthesis translate_off
	dummy_d_162 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_163;
// synthesis translate_on
always @(*) begin
	vns_array_muxed2 <= 1'd0;
	case (soc_netsoc_sdram_sel0)
		1'd0: begin
			vns_array_muxed2 <= soc_netsoc_sdram_nop_cas;
		end
		1'd1: begin
			vns_array_muxed2 <= soc_netsoc_sdram_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			vns_array_muxed2 <= soc_netsoc_sdram_choose_req_cmd_payload_cas;
		end
		default: begin
			vns_array_muxed2 <= soc_netsoc_sdram_cmd_payload_cas;
		end
	endcase
// synthesis translate_off
	dummy_d_163 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_164;
// synthesis translate_on
always @(*) begin
	vns_array_muxed3 <= 1'd0;
	case (soc_netsoc_sdram_sel0)
		1'd0: begin
			vns_array_muxed3 <= soc_netsoc_sdram_nop_ras;
		end
		1'd1: begin
			vns_array_muxed3 <= soc_netsoc_sdram_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			vns_array_muxed3 <= soc_netsoc_sdram_choose_req_cmd_payload_ras;
		end
		default: begin
			vns_array_muxed3 <= soc_netsoc_sdram_cmd_payload_ras;
		end
	endcase
// synthesis translate_off
	dummy_d_164 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_165;
// synthesis translate_on
always @(*) begin
	vns_array_muxed4 <= 1'd0;
	case (soc_netsoc_sdram_sel0)
		1'd0: begin
			vns_array_muxed4 <= soc_netsoc_sdram_nop_we;
		end
		1'd1: begin
			vns_array_muxed4 <= soc_netsoc_sdram_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			vns_array_muxed4 <= soc_netsoc_sdram_choose_req_cmd_payload_we;
		end
		default: begin
			vns_array_muxed4 <= soc_netsoc_sdram_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_165 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_166;
// synthesis translate_on
always @(*) begin
	vns_array_muxed5 <= 1'd0;
	case (soc_netsoc_sdram_sel0)
		1'd0: begin
			vns_array_muxed5 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed5 <= (soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			vns_array_muxed5 <= (soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			vns_array_muxed5 <= (soc_netsoc_sdram_cmd_valid & soc_netsoc_sdram_cmd_payload_is_read);
		end
	endcase
// synthesis translate_off
	dummy_d_166 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_167;
// synthesis translate_on
always @(*) begin
	vns_array_muxed6 <= 1'd0;
	case (soc_netsoc_sdram_sel0)
		1'd0: begin
			vns_array_muxed6 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed6 <= (soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			vns_array_muxed6 <= (soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			vns_array_muxed6 <= (soc_netsoc_sdram_cmd_valid & soc_netsoc_sdram_cmd_payload_is_write);
		end
	endcase
// synthesis translate_off
	dummy_d_167 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_168;
// synthesis translate_on
always @(*) begin
	vns_array_muxed7 <= 15'd0;
	case (soc_netsoc_sdram_sel1)
		1'd0: begin
			vns_array_muxed7 <= soc_netsoc_sdram_nop_a;
		end
		1'd1: begin
			vns_array_muxed7 <= soc_netsoc_sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			vns_array_muxed7 <= soc_netsoc_sdram_choose_req_cmd_payload_a;
		end
		default: begin
			vns_array_muxed7 <= soc_netsoc_sdram_cmd_payload_a;
		end
	endcase
// synthesis translate_off
	dummy_d_168 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_169;
// synthesis translate_on
always @(*) begin
	vns_array_muxed8 <= 3'd0;
	case (soc_netsoc_sdram_sel1)
		1'd0: begin
			vns_array_muxed8 <= soc_netsoc_sdram_nop_ba;
		end
		1'd1: begin
			vns_array_muxed8 <= soc_netsoc_sdram_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			vns_array_muxed8 <= soc_netsoc_sdram_choose_req_cmd_payload_ba;
		end
		default: begin
			vns_array_muxed8 <= soc_netsoc_sdram_cmd_payload_ba;
		end
	endcase
// synthesis translate_off
	dummy_d_169 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_170;
// synthesis translate_on
always @(*) begin
	vns_array_muxed9 <= 1'd0;
	case (soc_netsoc_sdram_sel1)
		1'd0: begin
			vns_array_muxed9 <= soc_netsoc_sdram_nop_cas;
		end
		1'd1: begin
			vns_array_muxed9 <= soc_netsoc_sdram_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			vns_array_muxed9 <= soc_netsoc_sdram_choose_req_cmd_payload_cas;
		end
		default: begin
			vns_array_muxed9 <= soc_netsoc_sdram_cmd_payload_cas;
		end
	endcase
// synthesis translate_off
	dummy_d_170 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_171;
// synthesis translate_on
always @(*) begin
	vns_array_muxed10 <= 1'd0;
	case (soc_netsoc_sdram_sel1)
		1'd0: begin
			vns_array_muxed10 <= soc_netsoc_sdram_nop_ras;
		end
		1'd1: begin
			vns_array_muxed10 <= soc_netsoc_sdram_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			vns_array_muxed10 <= soc_netsoc_sdram_choose_req_cmd_payload_ras;
		end
		default: begin
			vns_array_muxed10 <= soc_netsoc_sdram_cmd_payload_ras;
		end
	endcase
// synthesis translate_off
	dummy_d_171 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_172;
// synthesis translate_on
always @(*) begin
	vns_array_muxed11 <= 1'd0;
	case (soc_netsoc_sdram_sel1)
		1'd0: begin
			vns_array_muxed11 <= soc_netsoc_sdram_nop_we;
		end
		1'd1: begin
			vns_array_muxed11 <= soc_netsoc_sdram_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			vns_array_muxed11 <= soc_netsoc_sdram_choose_req_cmd_payload_we;
		end
		default: begin
			vns_array_muxed11 <= soc_netsoc_sdram_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_172 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_173;
// synthesis translate_on
always @(*) begin
	vns_array_muxed12 <= 1'd0;
	case (soc_netsoc_sdram_sel1)
		1'd0: begin
			vns_array_muxed12 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed12 <= (soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			vns_array_muxed12 <= (soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			vns_array_muxed12 <= (soc_netsoc_sdram_cmd_valid & soc_netsoc_sdram_cmd_payload_is_read);
		end
	endcase
// synthesis translate_off
	dummy_d_173 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_174;
// synthesis translate_on
always @(*) begin
	vns_array_muxed13 <= 1'd0;
	case (soc_netsoc_sdram_sel1)
		1'd0: begin
			vns_array_muxed13 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed13 <= (soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			vns_array_muxed13 <= (soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			vns_array_muxed13 <= (soc_netsoc_sdram_cmd_valid & soc_netsoc_sdram_cmd_payload_is_write);
		end
	endcase
// synthesis translate_off
	dummy_d_174 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_175;
// synthesis translate_on
always @(*) begin
	vns_array_muxed14 <= 15'd0;
	case (soc_netsoc_sdram_sel2)
		1'd0: begin
			vns_array_muxed14 <= soc_netsoc_sdram_nop_a;
		end
		1'd1: begin
			vns_array_muxed14 <= soc_netsoc_sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			vns_array_muxed14 <= soc_netsoc_sdram_choose_req_cmd_payload_a;
		end
		default: begin
			vns_array_muxed14 <= soc_netsoc_sdram_cmd_payload_a;
		end
	endcase
// synthesis translate_off
	dummy_d_175 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_176;
// synthesis translate_on
always @(*) begin
	vns_array_muxed15 <= 3'd0;
	case (soc_netsoc_sdram_sel2)
		1'd0: begin
			vns_array_muxed15 <= soc_netsoc_sdram_nop_ba;
		end
		1'd1: begin
			vns_array_muxed15 <= soc_netsoc_sdram_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			vns_array_muxed15 <= soc_netsoc_sdram_choose_req_cmd_payload_ba;
		end
		default: begin
			vns_array_muxed15 <= soc_netsoc_sdram_cmd_payload_ba;
		end
	endcase
// synthesis translate_off
	dummy_d_176 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_177;
// synthesis translate_on
always @(*) begin
	vns_array_muxed16 <= 1'd0;
	case (soc_netsoc_sdram_sel2)
		1'd0: begin
			vns_array_muxed16 <= soc_netsoc_sdram_nop_cas;
		end
		1'd1: begin
			vns_array_muxed16 <= soc_netsoc_sdram_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			vns_array_muxed16 <= soc_netsoc_sdram_choose_req_cmd_payload_cas;
		end
		default: begin
			vns_array_muxed16 <= soc_netsoc_sdram_cmd_payload_cas;
		end
	endcase
// synthesis translate_off
	dummy_d_177 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_178;
// synthesis translate_on
always @(*) begin
	vns_array_muxed17 <= 1'd0;
	case (soc_netsoc_sdram_sel2)
		1'd0: begin
			vns_array_muxed17 <= soc_netsoc_sdram_nop_ras;
		end
		1'd1: begin
			vns_array_muxed17 <= soc_netsoc_sdram_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			vns_array_muxed17 <= soc_netsoc_sdram_choose_req_cmd_payload_ras;
		end
		default: begin
			vns_array_muxed17 <= soc_netsoc_sdram_cmd_payload_ras;
		end
	endcase
// synthesis translate_off
	dummy_d_178 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_179;
// synthesis translate_on
always @(*) begin
	vns_array_muxed18 <= 1'd0;
	case (soc_netsoc_sdram_sel2)
		1'd0: begin
			vns_array_muxed18 <= soc_netsoc_sdram_nop_we;
		end
		1'd1: begin
			vns_array_muxed18 <= soc_netsoc_sdram_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			vns_array_muxed18 <= soc_netsoc_sdram_choose_req_cmd_payload_we;
		end
		default: begin
			vns_array_muxed18 <= soc_netsoc_sdram_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_179 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_180;
// synthesis translate_on
always @(*) begin
	vns_array_muxed19 <= 1'd0;
	case (soc_netsoc_sdram_sel2)
		1'd0: begin
			vns_array_muxed19 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed19 <= (soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			vns_array_muxed19 <= (soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			vns_array_muxed19 <= (soc_netsoc_sdram_cmd_valid & soc_netsoc_sdram_cmd_payload_is_read);
		end
	endcase
// synthesis translate_off
	dummy_d_180 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_181;
// synthesis translate_on
always @(*) begin
	vns_array_muxed20 <= 1'd0;
	case (soc_netsoc_sdram_sel2)
		1'd0: begin
			vns_array_muxed20 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed20 <= (soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			vns_array_muxed20 <= (soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			vns_array_muxed20 <= (soc_netsoc_sdram_cmd_valid & soc_netsoc_sdram_cmd_payload_is_write);
		end
	endcase
// synthesis translate_off
	dummy_d_181 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_182;
// synthesis translate_on
always @(*) begin
	vns_array_muxed21 <= 15'd0;
	case (soc_netsoc_sdram_sel3)
		1'd0: begin
			vns_array_muxed21 <= soc_netsoc_sdram_nop_a;
		end
		1'd1: begin
			vns_array_muxed21 <= soc_netsoc_sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			vns_array_muxed21 <= soc_netsoc_sdram_choose_req_cmd_payload_a;
		end
		default: begin
			vns_array_muxed21 <= soc_netsoc_sdram_cmd_payload_a;
		end
	endcase
// synthesis translate_off
	dummy_d_182 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_183;
// synthesis translate_on
always @(*) begin
	vns_array_muxed22 <= 3'd0;
	case (soc_netsoc_sdram_sel3)
		1'd0: begin
			vns_array_muxed22 <= soc_netsoc_sdram_nop_ba;
		end
		1'd1: begin
			vns_array_muxed22 <= soc_netsoc_sdram_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			vns_array_muxed22 <= soc_netsoc_sdram_choose_req_cmd_payload_ba;
		end
		default: begin
			vns_array_muxed22 <= soc_netsoc_sdram_cmd_payload_ba;
		end
	endcase
// synthesis translate_off
	dummy_d_183 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_184;
// synthesis translate_on
always @(*) begin
	vns_array_muxed23 <= 1'd0;
	case (soc_netsoc_sdram_sel3)
		1'd0: begin
			vns_array_muxed23 <= soc_netsoc_sdram_nop_cas;
		end
		1'd1: begin
			vns_array_muxed23 <= soc_netsoc_sdram_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			vns_array_muxed23 <= soc_netsoc_sdram_choose_req_cmd_payload_cas;
		end
		default: begin
			vns_array_muxed23 <= soc_netsoc_sdram_cmd_payload_cas;
		end
	endcase
// synthesis translate_off
	dummy_d_184 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_185;
// synthesis translate_on
always @(*) begin
	vns_array_muxed24 <= 1'd0;
	case (soc_netsoc_sdram_sel3)
		1'd0: begin
			vns_array_muxed24 <= soc_netsoc_sdram_nop_ras;
		end
		1'd1: begin
			vns_array_muxed24 <= soc_netsoc_sdram_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			vns_array_muxed24 <= soc_netsoc_sdram_choose_req_cmd_payload_ras;
		end
		default: begin
			vns_array_muxed24 <= soc_netsoc_sdram_cmd_payload_ras;
		end
	endcase
// synthesis translate_off
	dummy_d_185 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_186;
// synthesis translate_on
always @(*) begin
	vns_array_muxed25 <= 1'd0;
	case (soc_netsoc_sdram_sel3)
		1'd0: begin
			vns_array_muxed25 <= soc_netsoc_sdram_nop_we;
		end
		1'd1: begin
			vns_array_muxed25 <= soc_netsoc_sdram_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			vns_array_muxed25 <= soc_netsoc_sdram_choose_req_cmd_payload_we;
		end
		default: begin
			vns_array_muxed25 <= soc_netsoc_sdram_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_186 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_187;
// synthesis translate_on
always @(*) begin
	vns_array_muxed26 <= 1'd0;
	case (soc_netsoc_sdram_sel3)
		1'd0: begin
			vns_array_muxed26 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed26 <= (soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			vns_array_muxed26 <= (soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			vns_array_muxed26 <= (soc_netsoc_sdram_cmd_valid & soc_netsoc_sdram_cmd_payload_is_read);
		end
	endcase
// synthesis translate_off
	dummy_d_187 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_188;
// synthesis translate_on
always @(*) begin
	vns_array_muxed27 <= 1'd0;
	case (soc_netsoc_sdram_sel3)
		1'd0: begin
			vns_array_muxed27 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed27 <= (soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			vns_array_muxed27 <= (soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			vns_array_muxed27 <= (soc_netsoc_sdram_cmd_valid & soc_netsoc_sdram_cmd_payload_is_write);
		end
	endcase
// synthesis translate_off
	dummy_d_188 <= dummy_s;
// synthesis translate_on
end
assign vns_xilinxasyncresetsynchronizerimpl0 = ((~soc_netsoc_pll_locked) | (~cpu_reset));
assign vns_xilinxasyncresetsynchronizerimpl1 = ((~soc_netsoc_pll_locked) | (~cpu_reset));
assign vns_xilinxasyncresetsynchronizerimpl2 = ((~soc_netsoc_pll_locked) | (~cpu_reset));
assign soc_netsoc_uart_phy_rx = vns_xilinxmultiregimpl0_regs1;
assign soc_ethphy_status = vns_xilinxmultiregimpl1_regs1;
assign soc_ethmac_ps_preamble_error_toggle_o = vns_xilinxmultiregimpl2_regs1;
assign soc_ethmac_ps_crc_error_toggle_o = vns_xilinxmultiregimpl3_regs1;
assign soc_ethmac_tx_cdc_produce_rdomain = vns_xilinxmultiregimpl4_regs1;
assign soc_ethmac_tx_cdc_consume_wdomain = vns_xilinxmultiregimpl5_regs1;
assign soc_ethmac_rx_cdc_produce_rdomain = vns_xilinxmultiregimpl6_regs1;
assign soc_ethmac_rx_cdc_consume_wdomain = vns_xilinxmultiregimpl7_regs1;

always @(posedge clk200_clk) begin
	if ((soc_netsoc_reset_counter != 1'd0)) begin
		soc_netsoc_reset_counter <= (soc_netsoc_reset_counter - 1'd1);
	end else begin
		soc_netsoc_ic_reset <= 1'd0;
	end
	if (clk200_rst) begin
		soc_netsoc_reset_counter <= 4'd15;
		soc_netsoc_ic_reset <= 1'd1;
	end
end

always @(posedge eth_rx_clk) begin
	soc_ethphy_rx_ctl_d <= soc_ethphy_rx_ctl;
	soc_ethphy_source_valid <= soc_ethphy_rx_ctl;
	soc_ethphy_source_payload_data <= soc_ethphy_rx_data;
	vns_liteethmacpreamblechecker_state <= vns_liteethmacpreamblechecker_next_state;
	if (soc_ethmac_crc32_checker_crc_ce) begin
		soc_ethmac_crc32_checker_crc_reg <= soc_ethmac_crc32_checker_crc_next;
	end
	if (soc_ethmac_crc32_checker_crc_reset) begin
		soc_ethmac_crc32_checker_crc_reg <= 32'd4294967295;
	end
	if (((soc_ethmac_crc32_checker_syncfifo_syncfifo_we & soc_ethmac_crc32_checker_syncfifo_syncfifo_writable) & (~soc_ethmac_crc32_checker_syncfifo_replace))) begin
		if ((soc_ethmac_crc32_checker_syncfifo_produce == 3'd4)) begin
			soc_ethmac_crc32_checker_syncfifo_produce <= 1'd0;
		end else begin
			soc_ethmac_crc32_checker_syncfifo_produce <= (soc_ethmac_crc32_checker_syncfifo_produce + 1'd1);
		end
	end
	if (soc_ethmac_crc32_checker_syncfifo_do_read) begin
		if ((soc_ethmac_crc32_checker_syncfifo_consume == 3'd4)) begin
			soc_ethmac_crc32_checker_syncfifo_consume <= 1'd0;
		end else begin
			soc_ethmac_crc32_checker_syncfifo_consume <= (soc_ethmac_crc32_checker_syncfifo_consume + 1'd1);
		end
	end
	if (((soc_ethmac_crc32_checker_syncfifo_syncfifo_we & soc_ethmac_crc32_checker_syncfifo_syncfifo_writable) & (~soc_ethmac_crc32_checker_syncfifo_replace))) begin
		if ((~soc_ethmac_crc32_checker_syncfifo_do_read)) begin
			soc_ethmac_crc32_checker_syncfifo_level <= (soc_ethmac_crc32_checker_syncfifo_level + 1'd1);
		end
	end else begin
		if (soc_ethmac_crc32_checker_syncfifo_do_read) begin
			soc_ethmac_crc32_checker_syncfifo_level <= (soc_ethmac_crc32_checker_syncfifo_level - 1'd1);
		end
	end
	if (soc_ethmac_crc32_checker_fifo_reset) begin
		soc_ethmac_crc32_checker_syncfifo_level <= 3'd0;
		soc_ethmac_crc32_checker_syncfifo_produce <= 3'd0;
		soc_ethmac_crc32_checker_syncfifo_consume <= 3'd0;
	end
	vns_liteethmaccrc32checker_state <= vns_liteethmaccrc32checker_next_state;
	if (soc_ethmac_ps_preamble_error_i) begin
		soc_ethmac_ps_preamble_error_toggle_i <= (~soc_ethmac_ps_preamble_error_toggle_i);
	end
	if (soc_ethmac_ps_crc_error_i) begin
		soc_ethmac_ps_crc_error_toggle_i <= (~soc_ethmac_ps_crc_error_toggle_i);
	end
	if (soc_ethmac_rx_converter_converter_source_ready) begin
		soc_ethmac_rx_converter_converter_strobe_all <= 1'd0;
	end
	if (soc_ethmac_rx_converter_converter_load_part) begin
		if (((soc_ethmac_rx_converter_converter_demux == 2'd3) | soc_ethmac_rx_converter_converter_sink_last)) begin
			soc_ethmac_rx_converter_converter_demux <= 1'd0;
			soc_ethmac_rx_converter_converter_strobe_all <= 1'd1;
		end else begin
			soc_ethmac_rx_converter_converter_demux <= (soc_ethmac_rx_converter_converter_demux + 1'd1);
		end
	end
	if ((soc_ethmac_rx_converter_converter_source_valid & soc_ethmac_rx_converter_converter_source_ready)) begin
		if ((soc_ethmac_rx_converter_converter_sink_valid & soc_ethmac_rx_converter_converter_sink_ready)) begin
			soc_ethmac_rx_converter_converter_source_first <= soc_ethmac_rx_converter_converter_sink_first;
			soc_ethmac_rx_converter_converter_source_last <= soc_ethmac_rx_converter_converter_sink_last;
		end else begin
			soc_ethmac_rx_converter_converter_source_first <= 1'd0;
			soc_ethmac_rx_converter_converter_source_last <= 1'd0;
		end
	end else begin
		if ((soc_ethmac_rx_converter_converter_sink_valid & soc_ethmac_rx_converter_converter_sink_ready)) begin
			soc_ethmac_rx_converter_converter_source_first <= (soc_ethmac_rx_converter_converter_sink_first | soc_ethmac_rx_converter_converter_source_first);
			soc_ethmac_rx_converter_converter_source_last <= (soc_ethmac_rx_converter_converter_sink_last | soc_ethmac_rx_converter_converter_source_last);
		end
	end
	if (soc_ethmac_rx_converter_converter_load_part) begin
		case (soc_ethmac_rx_converter_converter_demux)
			1'd0: begin
				soc_ethmac_rx_converter_converter_source_payload_data[39:30] <= soc_ethmac_rx_converter_converter_sink_payload_data;
			end
			1'd1: begin
				soc_ethmac_rx_converter_converter_source_payload_data[29:20] <= soc_ethmac_rx_converter_converter_sink_payload_data;
			end
			2'd2: begin
				soc_ethmac_rx_converter_converter_source_payload_data[19:10] <= soc_ethmac_rx_converter_converter_sink_payload_data;
			end
			2'd3: begin
				soc_ethmac_rx_converter_converter_source_payload_data[9:0] <= soc_ethmac_rx_converter_converter_sink_payload_data;
			end
		endcase
	end
	if (soc_ethmac_rx_converter_converter_load_part) begin
		soc_ethmac_rx_converter_converter_source_payload_valid_token_count <= (soc_ethmac_rx_converter_converter_demux + 1'd1);
	end
	soc_ethmac_rx_cdc_graycounter0_q_binary <= soc_ethmac_rx_cdc_graycounter0_q_next_binary;
	soc_ethmac_rx_cdc_graycounter0_q <= soc_ethmac_rx_cdc_graycounter0_q_next;
	if (eth_rx_rst) begin
		soc_ethphy_source_valid <= 1'd0;
		soc_ethphy_source_payload_data <= 8'd0;
		soc_ethphy_rx_ctl_d <= 1'd0;
		soc_ethmac_crc32_checker_crc_reg <= 32'd4294967295;
		soc_ethmac_crc32_checker_syncfifo_level <= 3'd0;
		soc_ethmac_crc32_checker_syncfifo_produce <= 3'd0;
		soc_ethmac_crc32_checker_syncfifo_consume <= 3'd0;
		soc_ethmac_rx_converter_converter_source_first <= 1'd0;
		soc_ethmac_rx_converter_converter_source_last <= 1'd0;
		soc_ethmac_rx_converter_converter_source_payload_data <= 40'd0;
		soc_ethmac_rx_converter_converter_source_payload_valid_token_count <= 3'd0;
		soc_ethmac_rx_converter_converter_demux <= 2'd0;
		soc_ethmac_rx_converter_converter_strobe_all <= 1'd0;
		soc_ethmac_rx_cdc_graycounter0_q <= 7'd0;
		soc_ethmac_rx_cdc_graycounter0_q_binary <= 7'd0;
		vns_liteethmacpreamblechecker_state <= 1'd0;
		vns_liteethmaccrc32checker_state <= 2'd0;
	end
	vns_xilinxmultiregimpl7_regs0 <= soc_ethmac_rx_cdc_graycounter1_q;
	vns_xilinxmultiregimpl7_regs1 <= vns_xilinxmultiregimpl7_regs0;
end

always @(posedge eth_tx_clk) begin
	if (soc_ethmac_tx_gap_inserter_counter_reset) begin
		soc_ethmac_tx_gap_inserter_counter <= 1'd0;
	end else begin
		if (soc_ethmac_tx_gap_inserter_counter_ce) begin
			soc_ethmac_tx_gap_inserter_counter <= (soc_ethmac_tx_gap_inserter_counter + 1'd1);
		end
	end
	vns_liteethmacgap_state <= vns_liteethmacgap_next_state;
	if (soc_ethmac_preamble_inserter_clr_cnt) begin
		soc_ethmac_preamble_inserter_cnt <= 1'd0;
	end else begin
		if (soc_ethmac_preamble_inserter_inc_cnt) begin
			soc_ethmac_preamble_inserter_cnt <= (soc_ethmac_preamble_inserter_cnt + 1'd1);
		end
	end
	vns_liteethmacpreambleinserter_state <= vns_liteethmacpreambleinserter_next_state;
	if (soc_ethmac_crc32_inserter_is_ongoing0) begin
		soc_ethmac_crc32_inserter_cnt <= 2'd3;
	end else begin
		if ((soc_ethmac_crc32_inserter_is_ongoing1 & (~soc_ethmac_crc32_inserter_cnt_done))) begin
			soc_ethmac_crc32_inserter_cnt <= (soc_ethmac_crc32_inserter_cnt - soc_ethmac_crc32_inserter_source_ready);
		end
	end
	if (soc_ethmac_crc32_inserter_ce) begin
		soc_ethmac_crc32_inserter_reg <= soc_ethmac_crc32_inserter_next;
	end
	if (soc_ethmac_crc32_inserter_reset) begin
		soc_ethmac_crc32_inserter_reg <= 32'd4294967295;
	end
	vns_liteethmaccrc32inserter_state <= vns_liteethmaccrc32inserter_next_state;
	if (soc_ethmac_padding_inserter_counter_reset) begin
		soc_ethmac_padding_inserter_counter <= 1'd0;
	end else begin
		if (soc_ethmac_padding_inserter_counter_ce) begin
			soc_ethmac_padding_inserter_counter <= (soc_ethmac_padding_inserter_counter + 1'd1);
		end
	end
	vns_liteethmacpaddinginserter_state <= vns_liteethmacpaddinginserter_next_state;
	if ((soc_ethmac_tx_last_be_sink_valid & soc_ethmac_tx_last_be_sink_ready)) begin
		if (soc_ethmac_tx_last_be_sink_last) begin
			soc_ethmac_tx_last_be_ongoing <= 1'd1;
		end else begin
			if (soc_ethmac_tx_last_be_sink_payload_last_be) begin
				soc_ethmac_tx_last_be_ongoing <= 1'd0;
			end
		end
	end
	if ((soc_ethmac_tx_converter_converter_source_valid & soc_ethmac_tx_converter_converter_source_ready)) begin
		if (soc_ethmac_tx_converter_converter_last) begin
			soc_ethmac_tx_converter_converter_mux <= 1'd0;
		end else begin
			soc_ethmac_tx_converter_converter_mux <= (soc_ethmac_tx_converter_converter_mux + 1'd1);
		end
	end
	soc_ethmac_tx_cdc_graycounter1_q_binary <= soc_ethmac_tx_cdc_graycounter1_q_next_binary;
	soc_ethmac_tx_cdc_graycounter1_q <= soc_ethmac_tx_cdc_graycounter1_q_next;
	if (eth_tx_rst) begin
		soc_ethmac_crc32_inserter_reg <= 32'd4294967295;
		soc_ethmac_crc32_inserter_cnt <= 2'd3;
		soc_ethmac_padding_inserter_counter <= 16'd1;
		soc_ethmac_tx_last_be_ongoing <= 1'd1;
		soc_ethmac_tx_converter_converter_mux <= 2'd0;
		soc_ethmac_tx_cdc_graycounter1_q <= 7'd0;
		soc_ethmac_tx_cdc_graycounter1_q_binary <= 7'd0;
		vns_liteethmacgap_state <= 1'd0;
		vns_liteethmacpreambleinserter_state <= 2'd0;
		vns_liteethmaccrc32inserter_state <= 2'd0;
		vns_liteethmacpaddinginserter_state <= 1'd0;
	end
	vns_xilinxmultiregimpl4_regs0 <= soc_ethmac_tx_cdc_graycounter0_q;
	vns_xilinxmultiregimpl4_regs1 <= vns_xilinxmultiregimpl4_regs0;
end

always @(posedge sys_clk) begin
	soc_netsoc_netsoc_rom_bus_ack <= 1'd0;
	if (((soc_netsoc_netsoc_rom_bus_cyc & soc_netsoc_netsoc_rom_bus_stb) & (~soc_netsoc_netsoc_rom_bus_ack))) begin
		soc_netsoc_netsoc_rom_bus_ack <= 1'd1;
	end
	soc_netsoc_netsoc_sram_bus_ack <= 1'd0;
	if (((soc_netsoc_netsoc_sram_bus_cyc & soc_netsoc_netsoc_sram_bus_stb) & (~soc_netsoc_netsoc_sram_bus_ack))) begin
		soc_netsoc_netsoc_sram_bus_ack <= 1'd1;
	end
	soc_netsoc_netsoc_interface_we <= 1'd0;
	soc_netsoc_netsoc_interface_dat_w <= soc_netsoc_netsoc_bus_wishbone_dat_w;
	soc_netsoc_netsoc_interface_adr <= soc_netsoc_netsoc_bus_wishbone_adr;
	soc_netsoc_netsoc_bus_wishbone_dat_r <= soc_netsoc_netsoc_interface_dat_r;
	if ((soc_netsoc_netsoc_counter == 1'd1)) begin
		soc_netsoc_netsoc_interface_we <= soc_netsoc_netsoc_bus_wishbone_we;
	end
	if ((soc_netsoc_netsoc_counter == 2'd2)) begin
		soc_netsoc_netsoc_bus_wishbone_ack <= 1'd1;
	end
	if ((soc_netsoc_netsoc_counter == 2'd3)) begin
		soc_netsoc_netsoc_bus_wishbone_ack <= 1'd0;
	end
	if ((soc_netsoc_netsoc_counter != 1'd0)) begin
		soc_netsoc_netsoc_counter <= (soc_netsoc_netsoc_counter + 1'd1);
	end else begin
		if ((soc_netsoc_netsoc_bus_wishbone_cyc & soc_netsoc_netsoc_bus_wishbone_stb)) begin
			soc_netsoc_netsoc_counter <= 1'd1;
		end
	end
	if (soc_netsoc_netsoc_en_storage) begin
		if ((soc_netsoc_netsoc_value == 1'd0)) begin
			soc_netsoc_netsoc_value <= soc_netsoc_netsoc_reload_storage;
		end else begin
			soc_netsoc_netsoc_value <= (soc_netsoc_netsoc_value - 1'd1);
		end
	end else begin
		soc_netsoc_netsoc_value <= soc_netsoc_netsoc_load_storage;
	end
	if (soc_netsoc_netsoc_update_value_re) begin
		soc_netsoc_netsoc_value_status <= soc_netsoc_netsoc_value;
	end
	if (soc_netsoc_netsoc_zero_clear) begin
		soc_netsoc_netsoc_zero_pending <= 1'd0;
	end
	soc_netsoc_netsoc_zero_old_trigger <= soc_netsoc_netsoc_zero_trigger;
	if (((~soc_netsoc_netsoc_zero_trigger) & soc_netsoc_netsoc_zero_old_trigger)) begin
		soc_netsoc_netsoc_zero_pending <= 1'd1;
	end
	if (soc_netsoc_uart_tx_clear) begin
		soc_netsoc_uart_tx_pending <= 1'd0;
	end
	soc_netsoc_uart_tx_old_trigger <= soc_netsoc_uart_tx_trigger;
	if (((~soc_netsoc_uart_tx_trigger) & soc_netsoc_uart_tx_old_trigger)) begin
		soc_netsoc_uart_tx_pending <= 1'd1;
	end
	if (soc_netsoc_uart_rx_clear) begin
		soc_netsoc_uart_rx_pending <= 1'd0;
	end
	soc_netsoc_uart_rx_old_trigger <= soc_netsoc_uart_rx_trigger;
	if (((~soc_netsoc_uart_rx_trigger) & soc_netsoc_uart_rx_old_trigger)) begin
		soc_netsoc_uart_rx_pending <= 1'd1;
	end
	if (((soc_netsoc_uart_tx_fifo_syncfifo_we & soc_netsoc_uart_tx_fifo_syncfifo_writable) & (~soc_netsoc_uart_tx_fifo_replace))) begin
		soc_netsoc_uart_tx_fifo_produce <= (soc_netsoc_uart_tx_fifo_produce + 1'd1);
	end
	if (soc_netsoc_uart_tx_fifo_do_read) begin
		soc_netsoc_uart_tx_fifo_consume <= (soc_netsoc_uart_tx_fifo_consume + 1'd1);
	end
	if (((soc_netsoc_uart_tx_fifo_syncfifo_we & soc_netsoc_uart_tx_fifo_syncfifo_writable) & (~soc_netsoc_uart_tx_fifo_replace))) begin
		if ((~soc_netsoc_uart_tx_fifo_do_read)) begin
			soc_netsoc_uart_tx_fifo_level <= (soc_netsoc_uart_tx_fifo_level + 1'd1);
		end
	end else begin
		if (soc_netsoc_uart_tx_fifo_do_read) begin
			soc_netsoc_uart_tx_fifo_level <= (soc_netsoc_uart_tx_fifo_level - 1'd1);
		end
	end
	if (((soc_netsoc_uart_rx_fifo_syncfifo_we & soc_netsoc_uart_rx_fifo_syncfifo_writable) & (~soc_netsoc_uart_rx_fifo_replace))) begin
		soc_netsoc_uart_rx_fifo_produce <= (soc_netsoc_uart_rx_fifo_produce + 1'd1);
	end
	if (soc_netsoc_uart_rx_fifo_do_read) begin
		soc_netsoc_uart_rx_fifo_consume <= (soc_netsoc_uart_rx_fifo_consume + 1'd1);
	end
	if (((soc_netsoc_uart_rx_fifo_syncfifo_we & soc_netsoc_uart_rx_fifo_syncfifo_writable) & (~soc_netsoc_uart_rx_fifo_replace))) begin
		if ((~soc_netsoc_uart_rx_fifo_do_read)) begin
			soc_netsoc_uart_rx_fifo_level <= (soc_netsoc_uart_rx_fifo_level + 1'd1);
		end
	end else begin
		if (soc_netsoc_uart_rx_fifo_do_read) begin
			soc_netsoc_uart_rx_fifo_level <= (soc_netsoc_uart_rx_fifo_level - 1'd1);
		end
	end
	if (soc_netsoc_bridge_byte_counter_reset) begin
		soc_netsoc_bridge_byte_counter <= 1'd0;
	end else begin
		if (soc_netsoc_bridge_byte_counter_ce) begin
			soc_netsoc_bridge_byte_counter <= (soc_netsoc_bridge_byte_counter + 1'd1);
		end
	end
	if (soc_netsoc_bridge_word_counter_reset) begin
		soc_netsoc_bridge_word_counter <= 1'd0;
	end else begin
		if (soc_netsoc_bridge_word_counter_ce) begin
			soc_netsoc_bridge_word_counter <= (soc_netsoc_bridge_word_counter + 1'd1);
		end
	end
	if (soc_netsoc_bridge_cmd_ce) begin
		soc_netsoc_bridge_cmd <= soc_netsoc_rs232phyinterface1_source_payload_data;
	end
	if (soc_netsoc_bridge_length_ce) begin
		soc_netsoc_bridge_length <= soc_netsoc_rs232phyinterface1_source_payload_data;
	end
	if (soc_netsoc_bridge_address_ce) begin
		soc_netsoc_bridge_address <= {soc_netsoc_bridge_address[23:0], soc_netsoc_rs232phyinterface1_source_payload_data};
	end
	if (soc_netsoc_bridge_rx_data_ce) begin
		soc_netsoc_bridge_data <= {soc_netsoc_bridge_data[23:0], soc_netsoc_rs232phyinterface1_source_payload_data};
	end else begin
		if (soc_netsoc_bridge_tx_data_ce) begin
			soc_netsoc_bridge_data <= soc_netsoc_bridge_wishbone_dat_r;
		end
	end
	vns_wishbonestreamingbridge_state <= vns_wishbonestreamingbridge_next_state;
	if (soc_netsoc_bridge_reset) begin
		vns_wishbonestreamingbridge_state <= 3'd0;
	end
	if (soc_netsoc_bridge_wait) begin
		if ((~soc_netsoc_bridge_done)) begin
			soc_netsoc_bridge_count <= (soc_netsoc_bridge_count - 1'd1);
		end
	end else begin
		soc_netsoc_bridge_count <= 24'd10000000;
	end
	soc_netsoc_uart_phy_sink_ready <= 1'd0;
	if (((soc_netsoc_uart_phy_sink_valid & (~soc_netsoc_uart_phy_tx_busy)) & (~soc_netsoc_uart_phy_sink_ready))) begin
		soc_netsoc_uart_phy_tx_reg <= soc_netsoc_uart_phy_sink_payload_data;
		soc_netsoc_uart_phy_tx_bitcount <= 1'd0;
		soc_netsoc_uart_phy_tx_busy <= 1'd1;
		serial_tx <= 1'd0;
	end else begin
		if ((soc_netsoc_uart_phy_uart_clk_txen & soc_netsoc_uart_phy_tx_busy)) begin
			soc_netsoc_uart_phy_tx_bitcount <= (soc_netsoc_uart_phy_tx_bitcount + 1'd1);
			if ((soc_netsoc_uart_phy_tx_bitcount == 4'd8)) begin
				serial_tx <= 1'd1;
			end else begin
				if ((soc_netsoc_uart_phy_tx_bitcount == 4'd9)) begin
					serial_tx <= 1'd1;
					soc_netsoc_uart_phy_tx_busy <= 1'd0;
					soc_netsoc_uart_phy_sink_ready <= 1'd1;
				end else begin
					serial_tx <= soc_netsoc_uart_phy_tx_reg[0];
					soc_netsoc_uart_phy_tx_reg <= {1'd0, soc_netsoc_uart_phy_tx_reg[7:1]};
				end
			end
		end
	end
	if (soc_netsoc_uart_phy_tx_busy) begin
		{soc_netsoc_uart_phy_uart_clk_txen, soc_netsoc_uart_phy_phase_accumulator_tx} <= (soc_netsoc_uart_phy_phase_accumulator_tx + soc_netsoc_uart_phy_storage);
	end else begin
		{soc_netsoc_uart_phy_uart_clk_txen, soc_netsoc_uart_phy_phase_accumulator_tx} <= 1'd0;
	end
	soc_netsoc_uart_phy_source_valid <= 1'd0;
	soc_netsoc_uart_phy_rx_r <= soc_netsoc_uart_phy_rx;
	if ((~soc_netsoc_uart_phy_rx_busy)) begin
		if (((~soc_netsoc_uart_phy_rx) & soc_netsoc_uart_phy_rx_r)) begin
			soc_netsoc_uart_phy_rx_busy <= 1'd1;
			soc_netsoc_uart_phy_rx_bitcount <= 1'd0;
		end
	end else begin
		if (soc_netsoc_uart_phy_uart_clk_rxen) begin
			soc_netsoc_uart_phy_rx_bitcount <= (soc_netsoc_uart_phy_rx_bitcount + 1'd1);
			if ((soc_netsoc_uart_phy_rx_bitcount == 1'd0)) begin
				if (soc_netsoc_uart_phy_rx) begin
					soc_netsoc_uart_phy_rx_busy <= 1'd0;
				end
			end else begin
				if ((soc_netsoc_uart_phy_rx_bitcount == 4'd9)) begin
					soc_netsoc_uart_phy_rx_busy <= 1'd0;
					if (soc_netsoc_uart_phy_rx) begin
						soc_netsoc_uart_phy_source_payload_data <= soc_netsoc_uart_phy_rx_reg;
						soc_netsoc_uart_phy_source_valid <= 1'd1;
					end
				end else begin
					soc_netsoc_uart_phy_rx_reg <= {soc_netsoc_uart_phy_rx, soc_netsoc_uart_phy_rx_reg[7:1]};
				end
			end
		end
	end
	if (soc_netsoc_uart_phy_rx_busy) begin
		{soc_netsoc_uart_phy_uart_clk_rxen, soc_netsoc_uart_phy_phase_accumulator_rx} <= (soc_netsoc_uart_phy_phase_accumulator_rx + soc_netsoc_uart_phy_storage);
	end else begin
		{soc_netsoc_uart_phy_uart_clk_rxen, soc_netsoc_uart_phy_phase_accumulator_rx} <= 32'd2147483648;
	end
	if ((soc_netsoc_info_dna_cnt < 7'd114)) begin
		soc_netsoc_info_dna_cnt <= (soc_netsoc_info_dna_cnt + 1'd1);
		if (soc_netsoc_info_dna_cnt[0]) begin
			soc_netsoc_info_dna_status <= {soc_netsoc_info_dna_status, soc_netsoc_info_dna_do};
		end
	end
	if (soc_netsoc_info_drdy) begin
		case (soc_netsoc_info_channel)
			1'd0: begin
				soc_netsoc_info_temperature_status <= (soc_netsoc_info_data >>> 3'd4);
			end
			1'd1: begin
				soc_netsoc_info_vccint_status <= (soc_netsoc_info_data >>> 3'd4);
			end
			2'd2: begin
				soc_netsoc_info_vccaux_status <= (soc_netsoc_info_data >>> 3'd4);
			end
			3'd6: begin
				soc_netsoc_info_vccbram_status <= (soc_netsoc_info_data >>> 3'd4);
			end
		endcase
	end
	if (soc_netsoc_oled_spimaster_set_clk) begin
		soc_netsoc_oled_spi_pads_clk <= soc_netsoc_oled_spimaster_enable_cs;
	end
	if (soc_netsoc_oled_spimaster_clr_clk) begin
		soc_netsoc_oled_spi_pads_clk <= 1'd0;
		soc_netsoc_oled_spimaster_i <= 1'd0;
	end else begin
		soc_netsoc_oled_spimaster_i <= (soc_netsoc_oled_spimaster_i + 1'd1);
	end
	if (soc_netsoc_oled_spimaster_clr_cnt) begin
		soc_netsoc_oled_spimaster_cnt <= 1'd0;
	end else begin
		if (soc_netsoc_oled_spimaster_inc_cnt) begin
			soc_netsoc_oled_spimaster_cnt <= (soc_netsoc_oled_spimaster_cnt + 1'd1);
		end
	end
	if (soc_netsoc_oled_spimaster_start) begin
		soc_netsoc_oled_spimaster_sr_mosi <= soc_netsoc_oled_spimaster_mosi_storage;
	end else begin
		if ((soc_netsoc_oled_spimaster_set_clk & soc_netsoc_oled_spimaster_enable_shift)) begin
			soc_netsoc_oled_spimaster_sr_mosi <= {soc_netsoc_oled_spimaster_sr_mosi[6:0], soc_netsoc_oled_spimaster};
		end else begin
			if (soc_netsoc_oled_spimaster_clr_clk) begin
				soc_netsoc_oled_spi_pads_mosi <= soc_netsoc_oled_spimaster_sr_mosi[7];
			end
		end
	end
	vns_oled_state <= vns_oled_next_state;
	soc_netsoc_ddrphy_n_rddata_en0 <= soc_netsoc_ddrphy_dfi_p0_rddata_en;
	soc_netsoc_ddrphy_n_rddata_en1 <= soc_netsoc_ddrphy_n_rddata_en0;
	soc_netsoc_ddrphy_n_rddata_en2 <= soc_netsoc_ddrphy_n_rddata_en1;
	soc_netsoc_ddrphy_n_rddata_en3 <= soc_netsoc_ddrphy_n_rddata_en2;
	soc_netsoc_ddrphy_n_rddata_en4 <= soc_netsoc_ddrphy_n_rddata_en3;
	soc_netsoc_ddrphy_dfi_p0_rddata_valid <= soc_netsoc_ddrphy_n_rddata_en4;
	soc_netsoc_ddrphy_dfi_p1_rddata_valid <= soc_netsoc_ddrphy_n_rddata_en4;
	soc_netsoc_ddrphy_dfi_p2_rddata_valid <= soc_netsoc_ddrphy_n_rddata_en4;
	soc_netsoc_ddrphy_dfi_p3_rddata_valid <= soc_netsoc_ddrphy_n_rddata_en4;
	soc_netsoc_ddrphy_last_wrdata_en <= {soc_netsoc_ddrphy_last_wrdata_en[2:0], soc_netsoc_ddrphy_dfi_p2_wrdata_en};
	soc_netsoc_ddrphy_oe_dqs <= soc_netsoc_ddrphy_oe;
	soc_netsoc_ddrphy_oe_dq <= soc_netsoc_ddrphy_oe;
	if (soc_netsoc_sdram_inti_p0_rddata_valid) begin
		soc_netsoc_sdram_phaseinjector0_status <= soc_netsoc_sdram_inti_p0_rddata;
	end
	if (soc_netsoc_sdram_inti_p1_rddata_valid) begin
		soc_netsoc_sdram_phaseinjector1_status <= soc_netsoc_sdram_inti_p1_rddata;
	end
	if (soc_netsoc_sdram_inti_p2_rddata_valid) begin
		soc_netsoc_sdram_phaseinjector2_status <= soc_netsoc_sdram_inti_p2_rddata;
	end
	if (soc_netsoc_sdram_inti_p3_rddata_valid) begin
		soc_netsoc_sdram_phaseinjector3_status <= soc_netsoc_sdram_inti_p3_rddata;
	end
	soc_netsoc_sdram_cmd_payload_a <= 11'd1024;
	soc_netsoc_sdram_cmd_payload_ba <= 1'd0;
	soc_netsoc_sdram_cmd_payload_cas <= 1'd0;
	soc_netsoc_sdram_cmd_payload_ras <= 1'd0;
	soc_netsoc_sdram_cmd_payload_we <= 1'd0;
	soc_netsoc_sdram_seq_done <= 1'd0;
	if ((soc_netsoc_sdram_counter == 1'd1)) begin
		soc_netsoc_sdram_cmd_payload_ras <= 1'd1;
		soc_netsoc_sdram_cmd_payload_we <= 1'd1;
	end
	if ((soc_netsoc_sdram_counter == 3'd4)) begin
		soc_netsoc_sdram_cmd_payload_cas <= 1'd1;
		soc_netsoc_sdram_cmd_payload_ras <= 1'd1;
	end
	if ((soc_netsoc_sdram_counter == 5'd31)) begin
		soc_netsoc_sdram_seq_done <= 1'd1;
	end
	if ((soc_netsoc_sdram_counter != 1'd0)) begin
		soc_netsoc_sdram_counter <= (soc_netsoc_sdram_counter + 1'd1);
	end else begin
		if (soc_netsoc_sdram_seq_start) begin
			soc_netsoc_sdram_counter <= 1'd1;
		end
	end
	if (soc_netsoc_sdram_wait) begin
		if ((~soc_netsoc_sdram_done)) begin
			soc_netsoc_sdram_count <= (soc_netsoc_sdram_count - 1'd1);
		end
	end else begin
		soc_netsoc_sdram_count <= 10'd782;
	end
	vns_refresher_state <= vns_refresher_next_state;
	if (soc_netsoc_sdram_bankmachine0_track_close) begin
		soc_netsoc_sdram_bankmachine0_has_openrow <= 1'd0;
	end else begin
		if (soc_netsoc_sdram_bankmachine0_track_open) begin
			soc_netsoc_sdram_bankmachine0_has_openrow <= 1'd1;
			soc_netsoc_sdram_bankmachine0_openrow <= soc_netsoc_sdram_bankmachine0_source_payload_adr[21:7];
		end
	end
	if (((soc_netsoc_sdram_bankmachine0_syncfifo0_we & soc_netsoc_sdram_bankmachine0_syncfifo0_writable) & (~soc_netsoc_sdram_bankmachine0_replace))) begin
		soc_netsoc_sdram_bankmachine0_produce <= (soc_netsoc_sdram_bankmachine0_produce + 1'd1);
	end
	if (soc_netsoc_sdram_bankmachine0_do_read) begin
		soc_netsoc_sdram_bankmachine0_consume <= (soc_netsoc_sdram_bankmachine0_consume + 1'd1);
	end
	if (((soc_netsoc_sdram_bankmachine0_syncfifo0_we & soc_netsoc_sdram_bankmachine0_syncfifo0_writable) & (~soc_netsoc_sdram_bankmachine0_replace))) begin
		if ((~soc_netsoc_sdram_bankmachine0_do_read)) begin
			soc_netsoc_sdram_bankmachine0_level <= (soc_netsoc_sdram_bankmachine0_level + 1'd1);
		end
	end else begin
		if (soc_netsoc_sdram_bankmachine0_do_read) begin
			soc_netsoc_sdram_bankmachine0_level <= (soc_netsoc_sdram_bankmachine0_level - 1'd1);
		end
	end
	if (soc_netsoc_sdram_bankmachine0_wait) begin
		if ((~soc_netsoc_sdram_bankmachine0_done)) begin
			soc_netsoc_sdram_bankmachine0_count <= (soc_netsoc_sdram_bankmachine0_count - 1'd1);
		end
	end else begin
		soc_netsoc_sdram_bankmachine0_count <= 3'd5;
	end
	vns_bankmachine0_state <= vns_bankmachine0_next_state;
	if (soc_netsoc_sdram_bankmachine1_track_close) begin
		soc_netsoc_sdram_bankmachine1_has_openrow <= 1'd0;
	end else begin
		if (soc_netsoc_sdram_bankmachine1_track_open) begin
			soc_netsoc_sdram_bankmachine1_has_openrow <= 1'd1;
			soc_netsoc_sdram_bankmachine1_openrow <= soc_netsoc_sdram_bankmachine1_source_payload_adr[21:7];
		end
	end
	if (((soc_netsoc_sdram_bankmachine1_syncfifo1_we & soc_netsoc_sdram_bankmachine1_syncfifo1_writable) & (~soc_netsoc_sdram_bankmachine1_replace))) begin
		soc_netsoc_sdram_bankmachine1_produce <= (soc_netsoc_sdram_bankmachine1_produce + 1'd1);
	end
	if (soc_netsoc_sdram_bankmachine1_do_read) begin
		soc_netsoc_sdram_bankmachine1_consume <= (soc_netsoc_sdram_bankmachine1_consume + 1'd1);
	end
	if (((soc_netsoc_sdram_bankmachine1_syncfifo1_we & soc_netsoc_sdram_bankmachine1_syncfifo1_writable) & (~soc_netsoc_sdram_bankmachine1_replace))) begin
		if ((~soc_netsoc_sdram_bankmachine1_do_read)) begin
			soc_netsoc_sdram_bankmachine1_level <= (soc_netsoc_sdram_bankmachine1_level + 1'd1);
		end
	end else begin
		if (soc_netsoc_sdram_bankmachine1_do_read) begin
			soc_netsoc_sdram_bankmachine1_level <= (soc_netsoc_sdram_bankmachine1_level - 1'd1);
		end
	end
	if (soc_netsoc_sdram_bankmachine1_wait) begin
		if ((~soc_netsoc_sdram_bankmachine1_done)) begin
			soc_netsoc_sdram_bankmachine1_count <= (soc_netsoc_sdram_bankmachine1_count - 1'd1);
		end
	end else begin
		soc_netsoc_sdram_bankmachine1_count <= 3'd5;
	end
	vns_bankmachine1_state <= vns_bankmachine1_next_state;
	if (soc_netsoc_sdram_bankmachine2_track_close) begin
		soc_netsoc_sdram_bankmachine2_has_openrow <= 1'd0;
	end else begin
		if (soc_netsoc_sdram_bankmachine2_track_open) begin
			soc_netsoc_sdram_bankmachine2_has_openrow <= 1'd1;
			soc_netsoc_sdram_bankmachine2_openrow <= soc_netsoc_sdram_bankmachine2_source_payload_adr[21:7];
		end
	end
	if (((soc_netsoc_sdram_bankmachine2_syncfifo2_we & soc_netsoc_sdram_bankmachine2_syncfifo2_writable) & (~soc_netsoc_sdram_bankmachine2_replace))) begin
		soc_netsoc_sdram_bankmachine2_produce <= (soc_netsoc_sdram_bankmachine2_produce + 1'd1);
	end
	if (soc_netsoc_sdram_bankmachine2_do_read) begin
		soc_netsoc_sdram_bankmachine2_consume <= (soc_netsoc_sdram_bankmachine2_consume + 1'd1);
	end
	if (((soc_netsoc_sdram_bankmachine2_syncfifo2_we & soc_netsoc_sdram_bankmachine2_syncfifo2_writable) & (~soc_netsoc_sdram_bankmachine2_replace))) begin
		if ((~soc_netsoc_sdram_bankmachine2_do_read)) begin
			soc_netsoc_sdram_bankmachine2_level <= (soc_netsoc_sdram_bankmachine2_level + 1'd1);
		end
	end else begin
		if (soc_netsoc_sdram_bankmachine2_do_read) begin
			soc_netsoc_sdram_bankmachine2_level <= (soc_netsoc_sdram_bankmachine2_level - 1'd1);
		end
	end
	if (soc_netsoc_sdram_bankmachine2_wait) begin
		if ((~soc_netsoc_sdram_bankmachine2_done)) begin
			soc_netsoc_sdram_bankmachine2_count <= (soc_netsoc_sdram_bankmachine2_count - 1'd1);
		end
	end else begin
		soc_netsoc_sdram_bankmachine2_count <= 3'd5;
	end
	vns_bankmachine2_state <= vns_bankmachine2_next_state;
	if (soc_netsoc_sdram_bankmachine3_track_close) begin
		soc_netsoc_sdram_bankmachine3_has_openrow <= 1'd0;
	end else begin
		if (soc_netsoc_sdram_bankmachine3_track_open) begin
			soc_netsoc_sdram_bankmachine3_has_openrow <= 1'd1;
			soc_netsoc_sdram_bankmachine3_openrow <= soc_netsoc_sdram_bankmachine3_source_payload_adr[21:7];
		end
	end
	if (((soc_netsoc_sdram_bankmachine3_syncfifo3_we & soc_netsoc_sdram_bankmachine3_syncfifo3_writable) & (~soc_netsoc_sdram_bankmachine3_replace))) begin
		soc_netsoc_sdram_bankmachine3_produce <= (soc_netsoc_sdram_bankmachine3_produce + 1'd1);
	end
	if (soc_netsoc_sdram_bankmachine3_do_read) begin
		soc_netsoc_sdram_bankmachine3_consume <= (soc_netsoc_sdram_bankmachine3_consume + 1'd1);
	end
	if (((soc_netsoc_sdram_bankmachine3_syncfifo3_we & soc_netsoc_sdram_bankmachine3_syncfifo3_writable) & (~soc_netsoc_sdram_bankmachine3_replace))) begin
		if ((~soc_netsoc_sdram_bankmachine3_do_read)) begin
			soc_netsoc_sdram_bankmachine3_level <= (soc_netsoc_sdram_bankmachine3_level + 1'd1);
		end
	end else begin
		if (soc_netsoc_sdram_bankmachine3_do_read) begin
			soc_netsoc_sdram_bankmachine3_level <= (soc_netsoc_sdram_bankmachine3_level - 1'd1);
		end
	end
	if (soc_netsoc_sdram_bankmachine3_wait) begin
		if ((~soc_netsoc_sdram_bankmachine3_done)) begin
			soc_netsoc_sdram_bankmachine3_count <= (soc_netsoc_sdram_bankmachine3_count - 1'd1);
		end
	end else begin
		soc_netsoc_sdram_bankmachine3_count <= 3'd5;
	end
	vns_bankmachine3_state <= vns_bankmachine3_next_state;
	if (soc_netsoc_sdram_bankmachine4_track_close) begin
		soc_netsoc_sdram_bankmachine4_has_openrow <= 1'd0;
	end else begin
		if (soc_netsoc_sdram_bankmachine4_track_open) begin
			soc_netsoc_sdram_bankmachine4_has_openrow <= 1'd1;
			soc_netsoc_sdram_bankmachine4_openrow <= soc_netsoc_sdram_bankmachine4_source_payload_adr[21:7];
		end
	end
	if (((soc_netsoc_sdram_bankmachine4_syncfifo4_we & soc_netsoc_sdram_bankmachine4_syncfifo4_writable) & (~soc_netsoc_sdram_bankmachine4_replace))) begin
		soc_netsoc_sdram_bankmachine4_produce <= (soc_netsoc_sdram_bankmachine4_produce + 1'd1);
	end
	if (soc_netsoc_sdram_bankmachine4_do_read) begin
		soc_netsoc_sdram_bankmachine4_consume <= (soc_netsoc_sdram_bankmachine4_consume + 1'd1);
	end
	if (((soc_netsoc_sdram_bankmachine4_syncfifo4_we & soc_netsoc_sdram_bankmachine4_syncfifo4_writable) & (~soc_netsoc_sdram_bankmachine4_replace))) begin
		if ((~soc_netsoc_sdram_bankmachine4_do_read)) begin
			soc_netsoc_sdram_bankmachine4_level <= (soc_netsoc_sdram_bankmachine4_level + 1'd1);
		end
	end else begin
		if (soc_netsoc_sdram_bankmachine4_do_read) begin
			soc_netsoc_sdram_bankmachine4_level <= (soc_netsoc_sdram_bankmachine4_level - 1'd1);
		end
	end
	if (soc_netsoc_sdram_bankmachine4_wait) begin
		if ((~soc_netsoc_sdram_bankmachine4_done)) begin
			soc_netsoc_sdram_bankmachine4_count <= (soc_netsoc_sdram_bankmachine4_count - 1'd1);
		end
	end else begin
		soc_netsoc_sdram_bankmachine4_count <= 3'd5;
	end
	vns_bankmachine4_state <= vns_bankmachine4_next_state;
	if (soc_netsoc_sdram_bankmachine5_track_close) begin
		soc_netsoc_sdram_bankmachine5_has_openrow <= 1'd0;
	end else begin
		if (soc_netsoc_sdram_bankmachine5_track_open) begin
			soc_netsoc_sdram_bankmachine5_has_openrow <= 1'd1;
			soc_netsoc_sdram_bankmachine5_openrow <= soc_netsoc_sdram_bankmachine5_source_payload_adr[21:7];
		end
	end
	if (((soc_netsoc_sdram_bankmachine5_syncfifo5_we & soc_netsoc_sdram_bankmachine5_syncfifo5_writable) & (~soc_netsoc_sdram_bankmachine5_replace))) begin
		soc_netsoc_sdram_bankmachine5_produce <= (soc_netsoc_sdram_bankmachine5_produce + 1'd1);
	end
	if (soc_netsoc_sdram_bankmachine5_do_read) begin
		soc_netsoc_sdram_bankmachine5_consume <= (soc_netsoc_sdram_bankmachine5_consume + 1'd1);
	end
	if (((soc_netsoc_sdram_bankmachine5_syncfifo5_we & soc_netsoc_sdram_bankmachine5_syncfifo5_writable) & (~soc_netsoc_sdram_bankmachine5_replace))) begin
		if ((~soc_netsoc_sdram_bankmachine5_do_read)) begin
			soc_netsoc_sdram_bankmachine5_level <= (soc_netsoc_sdram_bankmachine5_level + 1'd1);
		end
	end else begin
		if (soc_netsoc_sdram_bankmachine5_do_read) begin
			soc_netsoc_sdram_bankmachine5_level <= (soc_netsoc_sdram_bankmachine5_level - 1'd1);
		end
	end
	if (soc_netsoc_sdram_bankmachine5_wait) begin
		if ((~soc_netsoc_sdram_bankmachine5_done)) begin
			soc_netsoc_sdram_bankmachine5_count <= (soc_netsoc_sdram_bankmachine5_count - 1'd1);
		end
	end else begin
		soc_netsoc_sdram_bankmachine5_count <= 3'd5;
	end
	vns_bankmachine5_state <= vns_bankmachine5_next_state;
	if (soc_netsoc_sdram_bankmachine6_track_close) begin
		soc_netsoc_sdram_bankmachine6_has_openrow <= 1'd0;
	end else begin
		if (soc_netsoc_sdram_bankmachine6_track_open) begin
			soc_netsoc_sdram_bankmachine6_has_openrow <= 1'd1;
			soc_netsoc_sdram_bankmachine6_openrow <= soc_netsoc_sdram_bankmachine6_source_payload_adr[21:7];
		end
	end
	if (((soc_netsoc_sdram_bankmachine6_syncfifo6_we & soc_netsoc_sdram_bankmachine6_syncfifo6_writable) & (~soc_netsoc_sdram_bankmachine6_replace))) begin
		soc_netsoc_sdram_bankmachine6_produce <= (soc_netsoc_sdram_bankmachine6_produce + 1'd1);
	end
	if (soc_netsoc_sdram_bankmachine6_do_read) begin
		soc_netsoc_sdram_bankmachine6_consume <= (soc_netsoc_sdram_bankmachine6_consume + 1'd1);
	end
	if (((soc_netsoc_sdram_bankmachine6_syncfifo6_we & soc_netsoc_sdram_bankmachine6_syncfifo6_writable) & (~soc_netsoc_sdram_bankmachine6_replace))) begin
		if ((~soc_netsoc_sdram_bankmachine6_do_read)) begin
			soc_netsoc_sdram_bankmachine6_level <= (soc_netsoc_sdram_bankmachine6_level + 1'd1);
		end
	end else begin
		if (soc_netsoc_sdram_bankmachine6_do_read) begin
			soc_netsoc_sdram_bankmachine6_level <= (soc_netsoc_sdram_bankmachine6_level - 1'd1);
		end
	end
	if (soc_netsoc_sdram_bankmachine6_wait) begin
		if ((~soc_netsoc_sdram_bankmachine6_done)) begin
			soc_netsoc_sdram_bankmachine6_count <= (soc_netsoc_sdram_bankmachine6_count - 1'd1);
		end
	end else begin
		soc_netsoc_sdram_bankmachine6_count <= 3'd5;
	end
	vns_bankmachine6_state <= vns_bankmachine6_next_state;
	if (soc_netsoc_sdram_bankmachine7_track_close) begin
		soc_netsoc_sdram_bankmachine7_has_openrow <= 1'd0;
	end else begin
		if (soc_netsoc_sdram_bankmachine7_track_open) begin
			soc_netsoc_sdram_bankmachine7_has_openrow <= 1'd1;
			soc_netsoc_sdram_bankmachine7_openrow <= soc_netsoc_sdram_bankmachine7_source_payload_adr[21:7];
		end
	end
	if (((soc_netsoc_sdram_bankmachine7_syncfifo7_we & soc_netsoc_sdram_bankmachine7_syncfifo7_writable) & (~soc_netsoc_sdram_bankmachine7_replace))) begin
		soc_netsoc_sdram_bankmachine7_produce <= (soc_netsoc_sdram_bankmachine7_produce + 1'd1);
	end
	if (soc_netsoc_sdram_bankmachine7_do_read) begin
		soc_netsoc_sdram_bankmachine7_consume <= (soc_netsoc_sdram_bankmachine7_consume + 1'd1);
	end
	if (((soc_netsoc_sdram_bankmachine7_syncfifo7_we & soc_netsoc_sdram_bankmachine7_syncfifo7_writable) & (~soc_netsoc_sdram_bankmachine7_replace))) begin
		if ((~soc_netsoc_sdram_bankmachine7_do_read)) begin
			soc_netsoc_sdram_bankmachine7_level <= (soc_netsoc_sdram_bankmachine7_level + 1'd1);
		end
	end else begin
		if (soc_netsoc_sdram_bankmachine7_do_read) begin
			soc_netsoc_sdram_bankmachine7_level <= (soc_netsoc_sdram_bankmachine7_level - 1'd1);
		end
	end
	if (soc_netsoc_sdram_bankmachine7_wait) begin
		if ((~soc_netsoc_sdram_bankmachine7_done)) begin
			soc_netsoc_sdram_bankmachine7_count <= (soc_netsoc_sdram_bankmachine7_count - 1'd1);
		end
	end else begin
		soc_netsoc_sdram_bankmachine7_count <= 3'd5;
	end
	vns_bankmachine7_state <= vns_bankmachine7_next_state;
	if ((~soc_netsoc_sdram_en0)) begin
		soc_netsoc_sdram_time0 <= 5'd31;
	end else begin
		if ((~soc_netsoc_sdram_max_time0)) begin
			soc_netsoc_sdram_time0 <= (soc_netsoc_sdram_time0 - 1'd1);
		end
	end
	if ((~soc_netsoc_sdram_en1)) begin
		soc_netsoc_sdram_time1 <= 4'd15;
	end else begin
		if ((~soc_netsoc_sdram_max_time1)) begin
			soc_netsoc_sdram_time1 <= (soc_netsoc_sdram_time1 - 1'd1);
		end
	end
	if (soc_netsoc_sdram_choose_cmd_ce) begin
		case (soc_netsoc_sdram_choose_cmd_grant)
			1'd0: begin
				if (soc_netsoc_sdram_choose_cmd_request[1]) begin
					soc_netsoc_sdram_choose_cmd_grant <= 1'd1;
				end else begin
					if (soc_netsoc_sdram_choose_cmd_request[2]) begin
						soc_netsoc_sdram_choose_cmd_grant <= 2'd2;
					end else begin
						if (soc_netsoc_sdram_choose_cmd_request[3]) begin
							soc_netsoc_sdram_choose_cmd_grant <= 2'd3;
						end else begin
							if (soc_netsoc_sdram_choose_cmd_request[4]) begin
								soc_netsoc_sdram_choose_cmd_grant <= 3'd4;
							end else begin
								if (soc_netsoc_sdram_choose_cmd_request[5]) begin
									soc_netsoc_sdram_choose_cmd_grant <= 3'd5;
								end else begin
									if (soc_netsoc_sdram_choose_cmd_request[6]) begin
										soc_netsoc_sdram_choose_cmd_grant <= 3'd6;
									end else begin
										if (soc_netsoc_sdram_choose_cmd_request[7]) begin
											soc_netsoc_sdram_choose_cmd_grant <= 3'd7;
										end
									end
								end
							end
						end
					end
				end
			end
			1'd1: begin
				if (soc_netsoc_sdram_choose_cmd_request[2]) begin
					soc_netsoc_sdram_choose_cmd_grant <= 2'd2;
				end else begin
					if (soc_netsoc_sdram_choose_cmd_request[3]) begin
						soc_netsoc_sdram_choose_cmd_grant <= 2'd3;
					end else begin
						if (soc_netsoc_sdram_choose_cmd_request[4]) begin
							soc_netsoc_sdram_choose_cmd_grant <= 3'd4;
						end else begin
							if (soc_netsoc_sdram_choose_cmd_request[5]) begin
								soc_netsoc_sdram_choose_cmd_grant <= 3'd5;
							end else begin
								if (soc_netsoc_sdram_choose_cmd_request[6]) begin
									soc_netsoc_sdram_choose_cmd_grant <= 3'd6;
								end else begin
									if (soc_netsoc_sdram_choose_cmd_request[7]) begin
										soc_netsoc_sdram_choose_cmd_grant <= 3'd7;
									end else begin
										if (soc_netsoc_sdram_choose_cmd_request[0]) begin
											soc_netsoc_sdram_choose_cmd_grant <= 1'd0;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd2: begin
				if (soc_netsoc_sdram_choose_cmd_request[3]) begin
					soc_netsoc_sdram_choose_cmd_grant <= 2'd3;
				end else begin
					if (soc_netsoc_sdram_choose_cmd_request[4]) begin
						soc_netsoc_sdram_choose_cmd_grant <= 3'd4;
					end else begin
						if (soc_netsoc_sdram_choose_cmd_request[5]) begin
							soc_netsoc_sdram_choose_cmd_grant <= 3'd5;
						end else begin
							if (soc_netsoc_sdram_choose_cmd_request[6]) begin
								soc_netsoc_sdram_choose_cmd_grant <= 3'd6;
							end else begin
								if (soc_netsoc_sdram_choose_cmd_request[7]) begin
									soc_netsoc_sdram_choose_cmd_grant <= 3'd7;
								end else begin
									if (soc_netsoc_sdram_choose_cmd_request[0]) begin
										soc_netsoc_sdram_choose_cmd_grant <= 1'd0;
									end else begin
										if (soc_netsoc_sdram_choose_cmd_request[1]) begin
											soc_netsoc_sdram_choose_cmd_grant <= 1'd1;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd3: begin
				if (soc_netsoc_sdram_choose_cmd_request[4]) begin
					soc_netsoc_sdram_choose_cmd_grant <= 3'd4;
				end else begin
					if (soc_netsoc_sdram_choose_cmd_request[5]) begin
						soc_netsoc_sdram_choose_cmd_grant <= 3'd5;
					end else begin
						if (soc_netsoc_sdram_choose_cmd_request[6]) begin
							soc_netsoc_sdram_choose_cmd_grant <= 3'd6;
						end else begin
							if (soc_netsoc_sdram_choose_cmd_request[7]) begin
								soc_netsoc_sdram_choose_cmd_grant <= 3'd7;
							end else begin
								if (soc_netsoc_sdram_choose_cmd_request[0]) begin
									soc_netsoc_sdram_choose_cmd_grant <= 1'd0;
								end else begin
									if (soc_netsoc_sdram_choose_cmd_request[1]) begin
										soc_netsoc_sdram_choose_cmd_grant <= 1'd1;
									end else begin
										if (soc_netsoc_sdram_choose_cmd_request[2]) begin
											soc_netsoc_sdram_choose_cmd_grant <= 2'd2;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd4: begin
				if (soc_netsoc_sdram_choose_cmd_request[5]) begin
					soc_netsoc_sdram_choose_cmd_grant <= 3'd5;
				end else begin
					if (soc_netsoc_sdram_choose_cmd_request[6]) begin
						soc_netsoc_sdram_choose_cmd_grant <= 3'd6;
					end else begin
						if (soc_netsoc_sdram_choose_cmd_request[7]) begin
							soc_netsoc_sdram_choose_cmd_grant <= 3'd7;
						end else begin
							if (soc_netsoc_sdram_choose_cmd_request[0]) begin
								soc_netsoc_sdram_choose_cmd_grant <= 1'd0;
							end else begin
								if (soc_netsoc_sdram_choose_cmd_request[1]) begin
									soc_netsoc_sdram_choose_cmd_grant <= 1'd1;
								end else begin
									if (soc_netsoc_sdram_choose_cmd_request[2]) begin
										soc_netsoc_sdram_choose_cmd_grant <= 2'd2;
									end else begin
										if (soc_netsoc_sdram_choose_cmd_request[3]) begin
											soc_netsoc_sdram_choose_cmd_grant <= 2'd3;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd5: begin
				if (soc_netsoc_sdram_choose_cmd_request[6]) begin
					soc_netsoc_sdram_choose_cmd_grant <= 3'd6;
				end else begin
					if (soc_netsoc_sdram_choose_cmd_request[7]) begin
						soc_netsoc_sdram_choose_cmd_grant <= 3'd7;
					end else begin
						if (soc_netsoc_sdram_choose_cmd_request[0]) begin
							soc_netsoc_sdram_choose_cmd_grant <= 1'd0;
						end else begin
							if (soc_netsoc_sdram_choose_cmd_request[1]) begin
								soc_netsoc_sdram_choose_cmd_grant <= 1'd1;
							end else begin
								if (soc_netsoc_sdram_choose_cmd_request[2]) begin
									soc_netsoc_sdram_choose_cmd_grant <= 2'd2;
								end else begin
									if (soc_netsoc_sdram_choose_cmd_request[3]) begin
										soc_netsoc_sdram_choose_cmd_grant <= 2'd3;
									end else begin
										if (soc_netsoc_sdram_choose_cmd_request[4]) begin
											soc_netsoc_sdram_choose_cmd_grant <= 3'd4;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd6: begin
				if (soc_netsoc_sdram_choose_cmd_request[7]) begin
					soc_netsoc_sdram_choose_cmd_grant <= 3'd7;
				end else begin
					if (soc_netsoc_sdram_choose_cmd_request[0]) begin
						soc_netsoc_sdram_choose_cmd_grant <= 1'd0;
					end else begin
						if (soc_netsoc_sdram_choose_cmd_request[1]) begin
							soc_netsoc_sdram_choose_cmd_grant <= 1'd1;
						end else begin
							if (soc_netsoc_sdram_choose_cmd_request[2]) begin
								soc_netsoc_sdram_choose_cmd_grant <= 2'd2;
							end else begin
								if (soc_netsoc_sdram_choose_cmd_request[3]) begin
									soc_netsoc_sdram_choose_cmd_grant <= 2'd3;
								end else begin
									if (soc_netsoc_sdram_choose_cmd_request[4]) begin
										soc_netsoc_sdram_choose_cmd_grant <= 3'd4;
									end else begin
										if (soc_netsoc_sdram_choose_cmd_request[5]) begin
											soc_netsoc_sdram_choose_cmd_grant <= 3'd5;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd7: begin
				if (soc_netsoc_sdram_choose_cmd_request[0]) begin
					soc_netsoc_sdram_choose_cmd_grant <= 1'd0;
				end else begin
					if (soc_netsoc_sdram_choose_cmd_request[1]) begin
						soc_netsoc_sdram_choose_cmd_grant <= 1'd1;
					end else begin
						if (soc_netsoc_sdram_choose_cmd_request[2]) begin
							soc_netsoc_sdram_choose_cmd_grant <= 2'd2;
						end else begin
							if (soc_netsoc_sdram_choose_cmd_request[3]) begin
								soc_netsoc_sdram_choose_cmd_grant <= 2'd3;
							end else begin
								if (soc_netsoc_sdram_choose_cmd_request[4]) begin
									soc_netsoc_sdram_choose_cmd_grant <= 3'd4;
								end else begin
									if (soc_netsoc_sdram_choose_cmd_request[5]) begin
										soc_netsoc_sdram_choose_cmd_grant <= 3'd5;
									end else begin
										if (soc_netsoc_sdram_choose_cmd_request[6]) begin
											soc_netsoc_sdram_choose_cmd_grant <= 3'd6;
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
	if (soc_netsoc_sdram_choose_req_ce) begin
		case (soc_netsoc_sdram_choose_req_grant)
			1'd0: begin
				if (soc_netsoc_sdram_choose_req_request[1]) begin
					soc_netsoc_sdram_choose_req_grant <= 1'd1;
				end else begin
					if (soc_netsoc_sdram_choose_req_request[2]) begin
						soc_netsoc_sdram_choose_req_grant <= 2'd2;
					end else begin
						if (soc_netsoc_sdram_choose_req_request[3]) begin
							soc_netsoc_sdram_choose_req_grant <= 2'd3;
						end else begin
							if (soc_netsoc_sdram_choose_req_request[4]) begin
								soc_netsoc_sdram_choose_req_grant <= 3'd4;
							end else begin
								if (soc_netsoc_sdram_choose_req_request[5]) begin
									soc_netsoc_sdram_choose_req_grant <= 3'd5;
								end else begin
									if (soc_netsoc_sdram_choose_req_request[6]) begin
										soc_netsoc_sdram_choose_req_grant <= 3'd6;
									end else begin
										if (soc_netsoc_sdram_choose_req_request[7]) begin
											soc_netsoc_sdram_choose_req_grant <= 3'd7;
										end
									end
								end
							end
						end
					end
				end
			end
			1'd1: begin
				if (soc_netsoc_sdram_choose_req_request[2]) begin
					soc_netsoc_sdram_choose_req_grant <= 2'd2;
				end else begin
					if (soc_netsoc_sdram_choose_req_request[3]) begin
						soc_netsoc_sdram_choose_req_grant <= 2'd3;
					end else begin
						if (soc_netsoc_sdram_choose_req_request[4]) begin
							soc_netsoc_sdram_choose_req_grant <= 3'd4;
						end else begin
							if (soc_netsoc_sdram_choose_req_request[5]) begin
								soc_netsoc_sdram_choose_req_grant <= 3'd5;
							end else begin
								if (soc_netsoc_sdram_choose_req_request[6]) begin
									soc_netsoc_sdram_choose_req_grant <= 3'd6;
								end else begin
									if (soc_netsoc_sdram_choose_req_request[7]) begin
										soc_netsoc_sdram_choose_req_grant <= 3'd7;
									end else begin
										if (soc_netsoc_sdram_choose_req_request[0]) begin
											soc_netsoc_sdram_choose_req_grant <= 1'd0;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd2: begin
				if (soc_netsoc_sdram_choose_req_request[3]) begin
					soc_netsoc_sdram_choose_req_grant <= 2'd3;
				end else begin
					if (soc_netsoc_sdram_choose_req_request[4]) begin
						soc_netsoc_sdram_choose_req_grant <= 3'd4;
					end else begin
						if (soc_netsoc_sdram_choose_req_request[5]) begin
							soc_netsoc_sdram_choose_req_grant <= 3'd5;
						end else begin
							if (soc_netsoc_sdram_choose_req_request[6]) begin
								soc_netsoc_sdram_choose_req_grant <= 3'd6;
							end else begin
								if (soc_netsoc_sdram_choose_req_request[7]) begin
									soc_netsoc_sdram_choose_req_grant <= 3'd7;
								end else begin
									if (soc_netsoc_sdram_choose_req_request[0]) begin
										soc_netsoc_sdram_choose_req_grant <= 1'd0;
									end else begin
										if (soc_netsoc_sdram_choose_req_request[1]) begin
											soc_netsoc_sdram_choose_req_grant <= 1'd1;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd3: begin
				if (soc_netsoc_sdram_choose_req_request[4]) begin
					soc_netsoc_sdram_choose_req_grant <= 3'd4;
				end else begin
					if (soc_netsoc_sdram_choose_req_request[5]) begin
						soc_netsoc_sdram_choose_req_grant <= 3'd5;
					end else begin
						if (soc_netsoc_sdram_choose_req_request[6]) begin
							soc_netsoc_sdram_choose_req_grant <= 3'd6;
						end else begin
							if (soc_netsoc_sdram_choose_req_request[7]) begin
								soc_netsoc_sdram_choose_req_grant <= 3'd7;
							end else begin
								if (soc_netsoc_sdram_choose_req_request[0]) begin
									soc_netsoc_sdram_choose_req_grant <= 1'd0;
								end else begin
									if (soc_netsoc_sdram_choose_req_request[1]) begin
										soc_netsoc_sdram_choose_req_grant <= 1'd1;
									end else begin
										if (soc_netsoc_sdram_choose_req_request[2]) begin
											soc_netsoc_sdram_choose_req_grant <= 2'd2;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd4: begin
				if (soc_netsoc_sdram_choose_req_request[5]) begin
					soc_netsoc_sdram_choose_req_grant <= 3'd5;
				end else begin
					if (soc_netsoc_sdram_choose_req_request[6]) begin
						soc_netsoc_sdram_choose_req_grant <= 3'd6;
					end else begin
						if (soc_netsoc_sdram_choose_req_request[7]) begin
							soc_netsoc_sdram_choose_req_grant <= 3'd7;
						end else begin
							if (soc_netsoc_sdram_choose_req_request[0]) begin
								soc_netsoc_sdram_choose_req_grant <= 1'd0;
							end else begin
								if (soc_netsoc_sdram_choose_req_request[1]) begin
									soc_netsoc_sdram_choose_req_grant <= 1'd1;
								end else begin
									if (soc_netsoc_sdram_choose_req_request[2]) begin
										soc_netsoc_sdram_choose_req_grant <= 2'd2;
									end else begin
										if (soc_netsoc_sdram_choose_req_request[3]) begin
											soc_netsoc_sdram_choose_req_grant <= 2'd3;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd5: begin
				if (soc_netsoc_sdram_choose_req_request[6]) begin
					soc_netsoc_sdram_choose_req_grant <= 3'd6;
				end else begin
					if (soc_netsoc_sdram_choose_req_request[7]) begin
						soc_netsoc_sdram_choose_req_grant <= 3'd7;
					end else begin
						if (soc_netsoc_sdram_choose_req_request[0]) begin
							soc_netsoc_sdram_choose_req_grant <= 1'd0;
						end else begin
							if (soc_netsoc_sdram_choose_req_request[1]) begin
								soc_netsoc_sdram_choose_req_grant <= 1'd1;
							end else begin
								if (soc_netsoc_sdram_choose_req_request[2]) begin
									soc_netsoc_sdram_choose_req_grant <= 2'd2;
								end else begin
									if (soc_netsoc_sdram_choose_req_request[3]) begin
										soc_netsoc_sdram_choose_req_grant <= 2'd3;
									end else begin
										if (soc_netsoc_sdram_choose_req_request[4]) begin
											soc_netsoc_sdram_choose_req_grant <= 3'd4;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd6: begin
				if (soc_netsoc_sdram_choose_req_request[7]) begin
					soc_netsoc_sdram_choose_req_grant <= 3'd7;
				end else begin
					if (soc_netsoc_sdram_choose_req_request[0]) begin
						soc_netsoc_sdram_choose_req_grant <= 1'd0;
					end else begin
						if (soc_netsoc_sdram_choose_req_request[1]) begin
							soc_netsoc_sdram_choose_req_grant <= 1'd1;
						end else begin
							if (soc_netsoc_sdram_choose_req_request[2]) begin
								soc_netsoc_sdram_choose_req_grant <= 2'd2;
							end else begin
								if (soc_netsoc_sdram_choose_req_request[3]) begin
									soc_netsoc_sdram_choose_req_grant <= 2'd3;
								end else begin
									if (soc_netsoc_sdram_choose_req_request[4]) begin
										soc_netsoc_sdram_choose_req_grant <= 3'd4;
									end else begin
										if (soc_netsoc_sdram_choose_req_request[5]) begin
											soc_netsoc_sdram_choose_req_grant <= 3'd5;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd7: begin
				if (soc_netsoc_sdram_choose_req_request[0]) begin
					soc_netsoc_sdram_choose_req_grant <= 1'd0;
				end else begin
					if (soc_netsoc_sdram_choose_req_request[1]) begin
						soc_netsoc_sdram_choose_req_grant <= 1'd1;
					end else begin
						if (soc_netsoc_sdram_choose_req_request[2]) begin
							soc_netsoc_sdram_choose_req_grant <= 2'd2;
						end else begin
							if (soc_netsoc_sdram_choose_req_request[3]) begin
								soc_netsoc_sdram_choose_req_grant <= 2'd3;
							end else begin
								if (soc_netsoc_sdram_choose_req_request[4]) begin
									soc_netsoc_sdram_choose_req_grant <= 3'd4;
								end else begin
									if (soc_netsoc_sdram_choose_req_request[5]) begin
										soc_netsoc_sdram_choose_req_grant <= 3'd5;
									end else begin
										if (soc_netsoc_sdram_choose_req_request[6]) begin
											soc_netsoc_sdram_choose_req_grant <= 3'd6;
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
	soc_netsoc_sdram_dfi_p0_address <= vns_array_muxed0;
	soc_netsoc_sdram_dfi_p0_bank <= vns_array_muxed1;
	soc_netsoc_sdram_dfi_p0_cas_n <= (~vns_array_muxed2);
	soc_netsoc_sdram_dfi_p0_ras_n <= (~vns_array_muxed3);
	soc_netsoc_sdram_dfi_p0_we_n <= (~vns_array_muxed4);
	soc_netsoc_sdram_dfi_p0_rddata_en <= vns_array_muxed5;
	soc_netsoc_sdram_dfi_p0_wrdata_en <= vns_array_muxed6;
	soc_netsoc_sdram_dfi_p1_address <= vns_array_muxed7;
	soc_netsoc_sdram_dfi_p1_bank <= vns_array_muxed8;
	soc_netsoc_sdram_dfi_p1_cas_n <= (~vns_array_muxed9);
	soc_netsoc_sdram_dfi_p1_ras_n <= (~vns_array_muxed10);
	soc_netsoc_sdram_dfi_p1_we_n <= (~vns_array_muxed11);
	soc_netsoc_sdram_dfi_p1_rddata_en <= vns_array_muxed12;
	soc_netsoc_sdram_dfi_p1_wrdata_en <= vns_array_muxed13;
	soc_netsoc_sdram_dfi_p2_address <= vns_array_muxed14;
	soc_netsoc_sdram_dfi_p2_bank <= vns_array_muxed15;
	soc_netsoc_sdram_dfi_p2_cas_n <= (~vns_array_muxed16);
	soc_netsoc_sdram_dfi_p2_ras_n <= (~vns_array_muxed17);
	soc_netsoc_sdram_dfi_p2_we_n <= (~vns_array_muxed18);
	soc_netsoc_sdram_dfi_p2_rddata_en <= vns_array_muxed19;
	soc_netsoc_sdram_dfi_p2_wrdata_en <= vns_array_muxed20;
	soc_netsoc_sdram_dfi_p3_address <= vns_array_muxed21;
	soc_netsoc_sdram_dfi_p3_bank <= vns_array_muxed22;
	soc_netsoc_sdram_dfi_p3_cas_n <= (~vns_array_muxed23);
	soc_netsoc_sdram_dfi_p3_ras_n <= (~vns_array_muxed24);
	soc_netsoc_sdram_dfi_p3_we_n <= (~vns_array_muxed25);
	soc_netsoc_sdram_dfi_p3_rddata_en <= vns_array_muxed26;
	soc_netsoc_sdram_dfi_p3_wrdata_en <= vns_array_muxed27;
	vns_multiplexer_state <= vns_multiplexer_next_state;
	soc_netsoc_sdram_bandwidth_cmd_valid <= soc_netsoc_sdram_choose_req_cmd_valid;
	soc_netsoc_sdram_bandwidth_cmd_ready <= soc_netsoc_sdram_choose_req_cmd_ready;
	soc_netsoc_sdram_bandwidth_cmd_is_read <= soc_netsoc_sdram_choose_req_cmd_payload_is_read;
	soc_netsoc_sdram_bandwidth_cmd_is_write <= soc_netsoc_sdram_choose_req_cmd_payload_is_write;
	{soc_netsoc_sdram_bandwidth_period, soc_netsoc_sdram_bandwidth_counter} <= (soc_netsoc_sdram_bandwidth_counter + 1'd1);
	if (soc_netsoc_sdram_bandwidth_period) begin
		soc_netsoc_sdram_bandwidth_nreads_r <= soc_netsoc_sdram_bandwidth_nreads;
		soc_netsoc_sdram_bandwidth_nwrites_r <= soc_netsoc_sdram_bandwidth_nwrites;
		soc_netsoc_sdram_bandwidth_nreads <= 1'd0;
		soc_netsoc_sdram_bandwidth_nwrites <= 1'd0;
	end else begin
		if ((soc_netsoc_sdram_bandwidth_cmd_valid & soc_netsoc_sdram_bandwidth_cmd_ready)) begin
			if (soc_netsoc_sdram_bandwidth_cmd_is_read) begin
				soc_netsoc_sdram_bandwidth_nreads <= (soc_netsoc_sdram_bandwidth_nreads + 1'd1);
			end
			if (soc_netsoc_sdram_bandwidth_cmd_is_write) begin
				soc_netsoc_sdram_bandwidth_nwrites <= (soc_netsoc_sdram_bandwidth_nwrites + 1'd1);
			end
		end
	end
	if (soc_netsoc_sdram_bandwidth_update_re) begin
		soc_netsoc_sdram_bandwidth_nreads_status <= soc_netsoc_sdram_bandwidth_nreads_r;
		soc_netsoc_sdram_bandwidth_nwrites_status <= soc_netsoc_sdram_bandwidth_nwrites_r;
	end
	vns_new_master_wdata_ready0 <= ((((((((1'd0 | ((vns_roundrobin0_grant == 1'd0) & soc_netsoc_sdram_interface_bank0_wdata_ready)) | ((vns_roundrobin1_grant == 1'd0) & soc_netsoc_sdram_interface_bank1_wdata_ready)) | ((vns_roundrobin2_grant == 1'd0) & soc_netsoc_sdram_interface_bank2_wdata_ready)) | ((vns_roundrobin3_grant == 1'd0) & soc_netsoc_sdram_interface_bank3_wdata_ready)) | ((vns_roundrobin4_grant == 1'd0) & soc_netsoc_sdram_interface_bank4_wdata_ready)) | ((vns_roundrobin5_grant == 1'd0) & soc_netsoc_sdram_interface_bank5_wdata_ready)) | ((vns_roundrobin6_grant == 1'd0) & soc_netsoc_sdram_interface_bank6_wdata_ready)) | ((vns_roundrobin7_grant == 1'd0) & soc_netsoc_sdram_interface_bank7_wdata_ready));
	vns_new_master_wdata_ready1 <= vns_new_master_wdata_ready0;
	vns_new_master_wdata_ready2 <= vns_new_master_wdata_ready1;
	vns_new_master_rdata_valid0 <= ((((((((1'd0 | ((vns_roundrobin0_grant == 1'd0) & soc_netsoc_sdram_interface_bank0_rdata_valid)) | ((vns_roundrobin1_grant == 1'd0) & soc_netsoc_sdram_interface_bank1_rdata_valid)) | ((vns_roundrobin2_grant == 1'd0) & soc_netsoc_sdram_interface_bank2_rdata_valid)) | ((vns_roundrobin3_grant == 1'd0) & soc_netsoc_sdram_interface_bank3_rdata_valid)) | ((vns_roundrobin4_grant == 1'd0) & soc_netsoc_sdram_interface_bank4_rdata_valid)) | ((vns_roundrobin5_grant == 1'd0) & soc_netsoc_sdram_interface_bank5_rdata_valid)) | ((vns_roundrobin6_grant == 1'd0) & soc_netsoc_sdram_interface_bank6_rdata_valid)) | ((vns_roundrobin7_grant == 1'd0) & soc_netsoc_sdram_interface_bank7_rdata_valid));
	vns_new_master_rdata_valid1 <= vns_new_master_rdata_valid0;
	vns_new_master_rdata_valid2 <= vns_new_master_rdata_valid1;
	vns_new_master_rdata_valid3 <= vns_new_master_rdata_valid2;
	vns_new_master_rdata_valid4 <= vns_new_master_rdata_valid3;
	vns_new_master_rdata_valid5 <= vns_new_master_rdata_valid4;
	vns_new_master_rdata_valid6 <= vns_new_master_rdata_valid5;
	soc_netsoc_adr_offset_r <= soc_netsoc_interface0_wb_sdram_adr[1:0];
	vns_fullmemorywe_state <= vns_fullmemorywe_next_state;
	vns_litedramwishbonebridge_state <= vns_litedramwishbonebridge_next_state;
	if ((soc_netsoc_i == 1'd0)) begin
		soc_netsoc_clk1 <= 1'd1;
		soc_netsoc_miso <= spiflash_1x_miso;
	end
	if ((soc_netsoc_i == 1'd1)) begin
		soc_netsoc_i <= 1'd0;
		soc_netsoc_clk1 <= 1'd0;
		soc_netsoc_sr <= {soc_netsoc_sr[30:0], soc_netsoc_miso};
	end else begin
		soc_netsoc_i <= (soc_netsoc_i + 1'd1);
	end
	if ((((soc_netsoc_bus_cyc & soc_netsoc_bus_stb) & (soc_netsoc_i == 1'd1)) & (soc_netsoc_counter == 1'd0))) begin
		soc_netsoc_cs_n <= 1'd0;
		soc_netsoc_sr[31:24] <= 4'd11;
	end
	if ((soc_netsoc_counter == 5'd16)) begin
		soc_netsoc_sr[31:8] <= {soc_netsoc_bus_adr, {2{1'd0}}};
	end
	if ((soc_netsoc_counter == 7'd64)) begin
	end
	if ((soc_netsoc_counter == 8'd146)) begin
		soc_netsoc_bus_ack <= 1'd1;
		soc_netsoc_cs_n <= 1'd1;
	end
	if ((soc_netsoc_counter == 8'd147)) begin
		soc_netsoc_bus_ack <= 1'd0;
	end
	if ((soc_netsoc_counter == 8'd149)) begin
	end
	if ((soc_netsoc_counter == 8'd149)) begin
		soc_netsoc_counter <= 1'd0;
	end else begin
		if ((soc_netsoc_counter != 1'd0)) begin
			soc_netsoc_counter <= (soc_netsoc_counter + 1'd1);
		end else begin
			if (((soc_netsoc_bus_cyc & soc_netsoc_bus_stb) & (soc_netsoc_i == 1'd1))) begin
				soc_netsoc_counter <= 1'd1;
			end
		end
	end
	if (soc_ethphy_counter_ce) begin
		soc_ethphy_counter <= (soc_ethphy_counter + 1'd1);
	end
	if (soc_ethmac_ps_preamble_error_o) begin
		soc_ethmac_preamble_errors_status <= (soc_ethmac_preamble_errors_status + 1'd1);
	end
	if (soc_ethmac_ps_crc_error_o) begin
		soc_ethmac_crc_errors_status <= (soc_ethmac_crc_errors_status + 1'd1);
	end
	soc_ethmac_ps_preamble_error_toggle_o_r <= soc_ethmac_ps_preamble_error_toggle_o;
	soc_ethmac_ps_crc_error_toggle_o_r <= soc_ethmac_ps_crc_error_toggle_o;
	soc_ethmac_tx_cdc_graycounter0_q_binary <= soc_ethmac_tx_cdc_graycounter0_q_next_binary;
	soc_ethmac_tx_cdc_graycounter0_q <= soc_ethmac_tx_cdc_graycounter0_q_next;
	soc_ethmac_rx_cdc_graycounter1_q_binary <= soc_ethmac_rx_cdc_graycounter1_q_next_binary;
	soc_ethmac_rx_cdc_graycounter1_q <= soc_ethmac_rx_cdc_graycounter1_q_next;
	if (soc_ethmac_writer_counter_reset) begin
		soc_ethmac_writer_counter <= 1'd0;
	end else begin
		if (soc_ethmac_writer_counter_ce) begin
			soc_ethmac_writer_counter <= (soc_ethmac_writer_counter + soc_ethmac_writer_increment);
		end
	end
	if (soc_ethmac_writer_slot_ce) begin
		soc_ethmac_writer_slot <= (soc_ethmac_writer_slot + 1'd1);
	end
	if (((soc_ethmac_writer_fifo_syncfifo_we & soc_ethmac_writer_fifo_syncfifo_writable) & (~soc_ethmac_writer_fifo_replace))) begin
		soc_ethmac_writer_fifo_produce <= (soc_ethmac_writer_fifo_produce + 1'd1);
	end
	if (soc_ethmac_writer_fifo_do_read) begin
		soc_ethmac_writer_fifo_consume <= (soc_ethmac_writer_fifo_consume + 1'd1);
	end
	if (((soc_ethmac_writer_fifo_syncfifo_we & soc_ethmac_writer_fifo_syncfifo_writable) & (~soc_ethmac_writer_fifo_replace))) begin
		if ((~soc_ethmac_writer_fifo_do_read)) begin
			soc_ethmac_writer_fifo_level <= (soc_ethmac_writer_fifo_level + 1'd1);
		end
	end else begin
		if (soc_ethmac_writer_fifo_do_read) begin
			soc_ethmac_writer_fifo_level <= (soc_ethmac_writer_fifo_level - 1'd1);
		end
	end
	vns_liteethmacsramwriter_state <= vns_liteethmacsramwriter_next_state;
	if (soc_ethmac_writer_errors_status_next_value_ce) begin
		soc_ethmac_writer_errors_status <= soc_ethmac_writer_errors_status_next_value;
	end
	if (soc_ethmac_reader_counter_reset) begin
		soc_ethmac_reader_counter <= 1'd0;
	end else begin
		if (soc_ethmac_reader_counter_ce) begin
			soc_ethmac_reader_counter <= (soc_ethmac_reader_counter + 3'd4);
		end
	end
	soc_ethmac_reader_last_d <= soc_ethmac_reader_last;
	if (soc_ethmac_reader_done_clear) begin
		soc_ethmac_reader_done_pending <= 1'd0;
	end
	if (soc_ethmac_reader_done_trigger) begin
		soc_ethmac_reader_done_pending <= 1'd1;
	end
	if (((soc_ethmac_reader_fifo_syncfifo_we & soc_ethmac_reader_fifo_syncfifo_writable) & (~soc_ethmac_reader_fifo_replace))) begin
		soc_ethmac_reader_fifo_produce <= (soc_ethmac_reader_fifo_produce + 1'd1);
	end
	if (soc_ethmac_reader_fifo_do_read) begin
		soc_ethmac_reader_fifo_consume <= (soc_ethmac_reader_fifo_consume + 1'd1);
	end
	if (((soc_ethmac_reader_fifo_syncfifo_we & soc_ethmac_reader_fifo_syncfifo_writable) & (~soc_ethmac_reader_fifo_replace))) begin
		if ((~soc_ethmac_reader_fifo_do_read)) begin
			soc_ethmac_reader_fifo_level <= (soc_ethmac_reader_fifo_level + 1'd1);
		end
	end else begin
		if (soc_ethmac_reader_fifo_do_read) begin
			soc_ethmac_reader_fifo_level <= (soc_ethmac_reader_fifo_level - 1'd1);
		end
	end
	vns_liteethmacsramreader_state <= vns_liteethmacsramreader_next_state;
	soc_ethmac_sram0_bus_ack0 <= 1'd0;
	if (((soc_ethmac_sram0_bus_cyc0 & soc_ethmac_sram0_bus_stb0) & (~soc_ethmac_sram0_bus_ack0))) begin
		soc_ethmac_sram0_bus_ack0 <= 1'd1;
	end
	soc_ethmac_sram1_bus_ack0 <= 1'd0;
	if (((soc_ethmac_sram1_bus_cyc0 & soc_ethmac_sram1_bus_stb0) & (~soc_ethmac_sram1_bus_ack0))) begin
		soc_ethmac_sram1_bus_ack0 <= 1'd1;
	end
	soc_ethmac_sram0_bus_ack1 <= 1'd0;
	if (((soc_ethmac_sram0_bus_cyc1 & soc_ethmac_sram0_bus_stb1) & (~soc_ethmac_sram0_bus_ack1))) begin
		soc_ethmac_sram0_bus_ack1 <= 1'd1;
	end
	soc_ethmac_sram1_bus_ack1 <= 1'd0;
	if (((soc_ethmac_sram1_bus_cyc1 & soc_ethmac_sram1_bus_stb1) & (~soc_ethmac_sram1_bus_ack1))) begin
		soc_ethmac_sram1_bus_ack1 <= 1'd1;
	end
	soc_ethmac_slave_sel_r <= soc_ethmac_slave_sel;
	case (vns_netsoc_grant)
		1'd0: begin
			if ((~vns_netsoc_request[0])) begin
				if (vns_netsoc_request[1]) begin
					vns_netsoc_grant <= 1'd1;
				end else begin
					if (vns_netsoc_request[2]) begin
						vns_netsoc_grant <= 2'd2;
					end
				end
			end
		end
		1'd1: begin
			if ((~vns_netsoc_request[1])) begin
				if (vns_netsoc_request[2]) begin
					vns_netsoc_grant <= 2'd2;
				end else begin
					if (vns_netsoc_request[0]) begin
						vns_netsoc_grant <= 1'd0;
					end
				end
			end
		end
		2'd2: begin
			if ((~vns_netsoc_request[2])) begin
				if (vns_netsoc_request[0]) begin
					vns_netsoc_grant <= 1'd0;
				end else begin
					if (vns_netsoc_request[1]) begin
						vns_netsoc_grant <= 1'd1;
					end
				end
			end
		end
	endcase
	vns_netsoc_slave_sel_r <= vns_netsoc_slave_sel;
	vns_netsoc_interface0_bank_bus_dat_r <= 1'd0;
	if (vns_netsoc_csrbank0_sel) begin
		case (vns_netsoc_interface0_bank_bus_adr[1:0])
			1'd0: begin
				vns_netsoc_interface0_bank_bus_dat_r <= vns_netsoc_csrbank0_dly_sel0_w;
			end
			1'd1: begin
				vns_netsoc_interface0_bank_bus_dat_r <= soc_netsoc_ddrphy_rdly_dq_rst_w;
			end
			2'd2: begin
				vns_netsoc_interface0_bank_bus_dat_r <= soc_netsoc_ddrphy_rdly_dq_inc_w;
			end
			2'd3: begin
				vns_netsoc_interface0_bank_bus_dat_r <= soc_netsoc_ddrphy_rdly_dq_bitslip_w;
			end
		endcase
	end
	if (vns_netsoc_csrbank0_dly_sel0_re) begin
		soc_netsoc_ddrphy_storage_full[1:0] <= vns_netsoc_csrbank0_dly_sel0_r;
	end
	soc_netsoc_ddrphy_re <= vns_netsoc_csrbank0_dly_sel0_re;
	vns_netsoc_interface1_bank_bus_dat_r <= 1'd0;
	if (vns_netsoc_csrbank1_sel) begin
		case (vns_netsoc_interface1_bank_bus_adr[4:0])
			1'd0: begin
				vns_netsoc_interface1_bank_bus_dat_r <= vns_netsoc_csrbank1_sram_writer_slot_w;
			end
			1'd1: begin
				vns_netsoc_interface1_bank_bus_dat_r <= vns_netsoc_csrbank1_sram_writer_length3_w;
			end
			2'd2: begin
				vns_netsoc_interface1_bank_bus_dat_r <= vns_netsoc_csrbank1_sram_writer_length2_w;
			end
			2'd3: begin
				vns_netsoc_interface1_bank_bus_dat_r <= vns_netsoc_csrbank1_sram_writer_length1_w;
			end
			3'd4: begin
				vns_netsoc_interface1_bank_bus_dat_r <= vns_netsoc_csrbank1_sram_writer_length0_w;
			end
			3'd5: begin
				vns_netsoc_interface1_bank_bus_dat_r <= vns_netsoc_csrbank1_sram_writer_errors3_w;
			end
			3'd6: begin
				vns_netsoc_interface1_bank_bus_dat_r <= vns_netsoc_csrbank1_sram_writer_errors2_w;
			end
			3'd7: begin
				vns_netsoc_interface1_bank_bus_dat_r <= vns_netsoc_csrbank1_sram_writer_errors1_w;
			end
			4'd8: begin
				vns_netsoc_interface1_bank_bus_dat_r <= vns_netsoc_csrbank1_sram_writer_errors0_w;
			end
			4'd9: begin
				vns_netsoc_interface1_bank_bus_dat_r <= soc_ethmac_writer_status_w;
			end
			4'd10: begin
				vns_netsoc_interface1_bank_bus_dat_r <= soc_ethmac_writer_pending_w;
			end
			4'd11: begin
				vns_netsoc_interface1_bank_bus_dat_r <= vns_netsoc_csrbank1_sram_writer_ev_enable0_w;
			end
			4'd12: begin
				vns_netsoc_interface1_bank_bus_dat_r <= soc_ethmac_reader_start_w;
			end
			4'd13: begin
				vns_netsoc_interface1_bank_bus_dat_r <= vns_netsoc_csrbank1_sram_reader_ready_w;
			end
			4'd14: begin
				vns_netsoc_interface1_bank_bus_dat_r <= vns_netsoc_csrbank1_sram_reader_level_w;
			end
			4'd15: begin
				vns_netsoc_interface1_bank_bus_dat_r <= vns_netsoc_csrbank1_sram_reader_slot0_w;
			end
			5'd16: begin
				vns_netsoc_interface1_bank_bus_dat_r <= vns_netsoc_csrbank1_sram_reader_length1_w;
			end
			5'd17: begin
				vns_netsoc_interface1_bank_bus_dat_r <= vns_netsoc_csrbank1_sram_reader_length0_w;
			end
			5'd18: begin
				vns_netsoc_interface1_bank_bus_dat_r <= soc_ethmac_reader_eventmanager_status_w;
			end
			5'd19: begin
				vns_netsoc_interface1_bank_bus_dat_r <= soc_ethmac_reader_eventmanager_pending_w;
			end
			5'd20: begin
				vns_netsoc_interface1_bank_bus_dat_r <= vns_netsoc_csrbank1_sram_reader_ev_enable0_w;
			end
			5'd21: begin
				vns_netsoc_interface1_bank_bus_dat_r <= vns_netsoc_csrbank1_preamble_crc_w;
			end
			5'd22: begin
				vns_netsoc_interface1_bank_bus_dat_r <= vns_netsoc_csrbank1_preamble_errors3_w;
			end
			5'd23: begin
				vns_netsoc_interface1_bank_bus_dat_r <= vns_netsoc_csrbank1_preamble_errors2_w;
			end
			5'd24: begin
				vns_netsoc_interface1_bank_bus_dat_r <= vns_netsoc_csrbank1_preamble_errors1_w;
			end
			5'd25: begin
				vns_netsoc_interface1_bank_bus_dat_r <= vns_netsoc_csrbank1_preamble_errors0_w;
			end
			5'd26: begin
				vns_netsoc_interface1_bank_bus_dat_r <= vns_netsoc_csrbank1_crc_errors3_w;
			end
			5'd27: begin
				vns_netsoc_interface1_bank_bus_dat_r <= vns_netsoc_csrbank1_crc_errors2_w;
			end
			5'd28: begin
				vns_netsoc_interface1_bank_bus_dat_r <= vns_netsoc_csrbank1_crc_errors1_w;
			end
			5'd29: begin
				vns_netsoc_interface1_bank_bus_dat_r <= vns_netsoc_csrbank1_crc_errors0_w;
			end
		endcase
	end
	if (vns_netsoc_csrbank1_sram_writer_ev_enable0_re) begin
		soc_ethmac_writer_storage_full <= vns_netsoc_csrbank1_sram_writer_ev_enable0_r;
	end
	soc_ethmac_writer_re <= vns_netsoc_csrbank1_sram_writer_ev_enable0_re;
	if (vns_netsoc_csrbank1_sram_reader_slot0_re) begin
		soc_ethmac_reader_slot_storage_full <= vns_netsoc_csrbank1_sram_reader_slot0_r;
	end
	soc_ethmac_reader_slot_re <= vns_netsoc_csrbank1_sram_reader_slot0_re;
	if (vns_netsoc_csrbank1_sram_reader_length1_re) begin
		soc_ethmac_reader_length_storage_full[10:8] <= vns_netsoc_csrbank1_sram_reader_length1_r;
	end
	if (vns_netsoc_csrbank1_sram_reader_length0_re) begin
		soc_ethmac_reader_length_storage_full[7:0] <= vns_netsoc_csrbank1_sram_reader_length0_r;
	end
	soc_ethmac_reader_length_re <= vns_netsoc_csrbank1_sram_reader_length0_re;
	if (vns_netsoc_csrbank1_sram_reader_ev_enable0_re) begin
		soc_ethmac_reader_eventmanager_storage_full <= vns_netsoc_csrbank1_sram_reader_ev_enable0_r;
	end
	soc_ethmac_reader_eventmanager_re <= vns_netsoc_csrbank1_sram_reader_ev_enable0_re;
	vns_netsoc_interface2_bank_bus_dat_r <= 1'd0;
	if (vns_netsoc_csrbank2_sel) begin
		case (vns_netsoc_interface2_bank_bus_adr[1:0])
			1'd0: begin
				vns_netsoc_interface2_bank_bus_dat_r <= vns_netsoc_csrbank2_crg_reset0_w;
			end
			1'd1: begin
				vns_netsoc_interface2_bank_bus_dat_r <= vns_netsoc_csrbank2_mdio_w0_w;
			end
			2'd2: begin
				vns_netsoc_interface2_bank_bus_dat_r <= vns_netsoc_csrbank2_mdio_r_w;
			end
		endcase
	end
	if (vns_netsoc_csrbank2_crg_reset0_re) begin
		soc_ethphy_reset_storage_full <= vns_netsoc_csrbank2_crg_reset0_r;
	end
	soc_ethphy_reset_re <= vns_netsoc_csrbank2_crg_reset0_re;
	if (vns_netsoc_csrbank2_mdio_w0_re) begin
		soc_ethphy_storage_full[2:0] <= vns_netsoc_csrbank2_mdio_w0_r;
	end
	soc_ethphy_re <= vns_netsoc_csrbank2_mdio_w0_re;
	vns_netsoc_sel_r <= vns_netsoc_sel;
	vns_netsoc_interface3_bank_bus_dat_r <= 1'd0;
	if (vns_netsoc_csrbank3_sel) begin
		case (vns_netsoc_interface3_bank_bus_adr[5:0])
			1'd0: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_dna_id7_w;
			end
			1'd1: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_dna_id6_w;
			end
			2'd2: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_dna_id5_w;
			end
			2'd3: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_dna_id4_w;
			end
			3'd4: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_dna_id3_w;
			end
			3'd5: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_dna_id2_w;
			end
			3'd6: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_dna_id1_w;
			end
			3'd7: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_dna_id0_w;
			end
			4'd8: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_git_commit19_w;
			end
			4'd9: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_git_commit18_w;
			end
			4'd10: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_git_commit17_w;
			end
			4'd11: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_git_commit16_w;
			end
			4'd12: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_git_commit15_w;
			end
			4'd13: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_git_commit14_w;
			end
			4'd14: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_git_commit13_w;
			end
			4'd15: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_git_commit12_w;
			end
			5'd16: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_git_commit11_w;
			end
			5'd17: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_git_commit10_w;
			end
			5'd18: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_git_commit9_w;
			end
			5'd19: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_git_commit8_w;
			end
			5'd20: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_git_commit7_w;
			end
			5'd21: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_git_commit6_w;
			end
			5'd22: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_git_commit5_w;
			end
			5'd23: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_git_commit4_w;
			end
			5'd24: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_git_commit3_w;
			end
			5'd25: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_git_commit2_w;
			end
			5'd26: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_git_commit1_w;
			end
			5'd27: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_git_commit0_w;
			end
			5'd28: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_platform_platform7_w;
			end
			5'd29: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_platform_platform6_w;
			end
			5'd30: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_platform_platform5_w;
			end
			5'd31: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_platform_platform4_w;
			end
			6'd32: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_platform_platform3_w;
			end
			6'd33: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_platform_platform2_w;
			end
			6'd34: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_platform_platform1_w;
			end
			6'd35: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_platform_platform0_w;
			end
			6'd36: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_platform_target7_w;
			end
			6'd37: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_platform_target6_w;
			end
			6'd38: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_platform_target5_w;
			end
			6'd39: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_platform_target4_w;
			end
			6'd40: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_platform_target3_w;
			end
			6'd41: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_platform_target2_w;
			end
			6'd42: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_platform_target1_w;
			end
			6'd43: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_platform_target0_w;
			end
			6'd44: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_xadc_temperature1_w;
			end
			6'd45: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_xadc_temperature0_w;
			end
			6'd46: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_xadc_vccint1_w;
			end
			6'd47: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_xadc_vccint0_w;
			end
			6'd48: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_xadc_vccaux1_w;
			end
			6'd49: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_xadc_vccaux0_w;
			end
			6'd50: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_xadc_vccbram1_w;
			end
			6'd51: begin
				vns_netsoc_interface3_bank_bus_dat_r <= vns_netsoc_csrbank3_xadc_vccbram0_w;
			end
		endcase
	end
	vns_netsoc_interface4_bank_bus_dat_r <= 1'd0;
	if (vns_netsoc_csrbank4_sel) begin
		case (vns_netsoc_interface4_bank_bus_adr[2:0])
			1'd0: begin
				vns_netsoc_interface4_bank_bus_dat_r <= soc_netsoc_oled_spimaster_ctrl_w;
			end
			1'd1: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_spi_length0_w;
			end
			2'd2: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_spi_status_w;
			end
			2'd3: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_spi_mosi0_w;
			end
			3'd4: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_gpio_out0_w;
			end
		endcase
	end
	if (vns_netsoc_csrbank4_spi_length0_re) begin
		soc_netsoc_oled_spimaster_length_storage_full[7:0] <= vns_netsoc_csrbank4_spi_length0_r;
	end
	soc_netsoc_oled_spimaster_length_re <= vns_netsoc_csrbank4_spi_length0_re;
	if (vns_netsoc_csrbank4_spi_mosi0_re) begin
		soc_netsoc_oled_spimaster_mosi_storage_full[7:0] <= vns_netsoc_csrbank4_spi_mosi0_r;
	end
	soc_netsoc_oled_spimaster_mosi_re <= vns_netsoc_csrbank4_spi_mosi0_re;
	if (vns_netsoc_csrbank4_gpio_out0_re) begin
		soc_netsoc_oled_storage_full[3:0] <= vns_netsoc_csrbank4_gpio_out0_r;
	end
	soc_netsoc_oled_re <= vns_netsoc_csrbank4_gpio_out0_re;
	vns_netsoc_interface5_bank_bus_dat_r <= 1'd0;
	if (vns_netsoc_csrbank5_sel) begin
		case (vns_netsoc_interface5_bank_bus_adr[5:0])
			1'd0: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_control0_w;
			end
			1'd1: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi0_command0_w;
			end
			2'd2: begin
				vns_netsoc_interface5_bank_bus_dat_r <= soc_netsoc_sdram_phaseinjector0_command_issue_w;
			end
			2'd3: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi0_address1_w;
			end
			3'd4: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi0_address0_w;
			end
			3'd5: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi0_baddress0_w;
			end
			3'd6: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi0_wrdata3_w;
			end
			3'd7: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi0_wrdata2_w;
			end
			4'd8: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi0_wrdata1_w;
			end
			4'd9: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi0_wrdata0_w;
			end
			4'd10: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi0_rddata3_w;
			end
			4'd11: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi0_rddata2_w;
			end
			4'd12: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi0_rddata1_w;
			end
			4'd13: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi0_rddata0_w;
			end
			4'd14: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi1_command0_w;
			end
			4'd15: begin
				vns_netsoc_interface5_bank_bus_dat_r <= soc_netsoc_sdram_phaseinjector1_command_issue_w;
			end
			5'd16: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi1_address1_w;
			end
			5'd17: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi1_address0_w;
			end
			5'd18: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi1_baddress0_w;
			end
			5'd19: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi1_wrdata3_w;
			end
			5'd20: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi1_wrdata2_w;
			end
			5'd21: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi1_wrdata1_w;
			end
			5'd22: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi1_wrdata0_w;
			end
			5'd23: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi1_rddata3_w;
			end
			5'd24: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi1_rddata2_w;
			end
			5'd25: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi1_rddata1_w;
			end
			5'd26: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi1_rddata0_w;
			end
			5'd27: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi2_command0_w;
			end
			5'd28: begin
				vns_netsoc_interface5_bank_bus_dat_r <= soc_netsoc_sdram_phaseinjector2_command_issue_w;
			end
			5'd29: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi2_address1_w;
			end
			5'd30: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi2_address0_w;
			end
			5'd31: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi2_baddress0_w;
			end
			6'd32: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi2_wrdata3_w;
			end
			6'd33: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi2_wrdata2_w;
			end
			6'd34: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi2_wrdata1_w;
			end
			6'd35: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi2_wrdata0_w;
			end
			6'd36: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi2_rddata3_w;
			end
			6'd37: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi2_rddata2_w;
			end
			6'd38: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi2_rddata1_w;
			end
			6'd39: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi2_rddata0_w;
			end
			6'd40: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi3_command0_w;
			end
			6'd41: begin
				vns_netsoc_interface5_bank_bus_dat_r <= soc_netsoc_sdram_phaseinjector3_command_issue_w;
			end
			6'd42: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi3_address1_w;
			end
			6'd43: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi3_address0_w;
			end
			6'd44: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi3_baddress0_w;
			end
			6'd45: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi3_wrdata3_w;
			end
			6'd46: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi3_wrdata2_w;
			end
			6'd47: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi3_wrdata1_w;
			end
			6'd48: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi3_wrdata0_w;
			end
			6'd49: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi3_rddata3_w;
			end
			6'd50: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi3_rddata2_w;
			end
			6'd51: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi3_rddata1_w;
			end
			6'd52: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_dfii_pi3_rddata0_w;
			end
			6'd53: begin
				vns_netsoc_interface5_bank_bus_dat_r <= soc_netsoc_sdram_bandwidth_update_w;
			end
			6'd54: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_controller_bandwidth_nreads2_w;
			end
			6'd55: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_controller_bandwidth_nreads1_w;
			end
			6'd56: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_controller_bandwidth_nreads0_w;
			end
			6'd57: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_controller_bandwidth_nwrites2_w;
			end
			6'd58: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_controller_bandwidth_nwrites1_w;
			end
			6'd59: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_controller_bandwidth_nwrites0_w;
			end
			6'd60: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_controller_bandwidth_data_width_w;
			end
		endcase
	end
	if (vns_netsoc_csrbank5_dfii_control0_re) begin
		soc_netsoc_sdram_storage_full[3:0] <= vns_netsoc_csrbank5_dfii_control0_r;
	end
	soc_netsoc_sdram_re <= vns_netsoc_csrbank5_dfii_control0_re;
	if (vns_netsoc_csrbank5_dfii_pi0_command0_re) begin
		soc_netsoc_sdram_phaseinjector0_command_storage_full[5:0] <= vns_netsoc_csrbank5_dfii_pi0_command0_r;
	end
	soc_netsoc_sdram_phaseinjector0_command_re <= vns_netsoc_csrbank5_dfii_pi0_command0_re;
	if (vns_netsoc_csrbank5_dfii_pi0_address1_re) begin
		soc_netsoc_sdram_phaseinjector0_address_storage_full[14:8] <= vns_netsoc_csrbank5_dfii_pi0_address1_r;
	end
	if (vns_netsoc_csrbank5_dfii_pi0_address0_re) begin
		soc_netsoc_sdram_phaseinjector0_address_storage_full[7:0] <= vns_netsoc_csrbank5_dfii_pi0_address0_r;
	end
	soc_netsoc_sdram_phaseinjector0_address_re <= vns_netsoc_csrbank5_dfii_pi0_address0_re;
	if (vns_netsoc_csrbank5_dfii_pi0_baddress0_re) begin
		soc_netsoc_sdram_phaseinjector0_baddress_storage_full[2:0] <= vns_netsoc_csrbank5_dfii_pi0_baddress0_r;
	end
	soc_netsoc_sdram_phaseinjector0_baddress_re <= vns_netsoc_csrbank5_dfii_pi0_baddress0_re;
	if (vns_netsoc_csrbank5_dfii_pi0_wrdata3_re) begin
		soc_netsoc_sdram_phaseinjector0_wrdata_storage_full[31:24] <= vns_netsoc_csrbank5_dfii_pi0_wrdata3_r;
	end
	if (vns_netsoc_csrbank5_dfii_pi0_wrdata2_re) begin
		soc_netsoc_sdram_phaseinjector0_wrdata_storage_full[23:16] <= vns_netsoc_csrbank5_dfii_pi0_wrdata2_r;
	end
	if (vns_netsoc_csrbank5_dfii_pi0_wrdata1_re) begin
		soc_netsoc_sdram_phaseinjector0_wrdata_storage_full[15:8] <= vns_netsoc_csrbank5_dfii_pi0_wrdata1_r;
	end
	if (vns_netsoc_csrbank5_dfii_pi0_wrdata0_re) begin
		soc_netsoc_sdram_phaseinjector0_wrdata_storage_full[7:0] <= vns_netsoc_csrbank5_dfii_pi0_wrdata0_r;
	end
	soc_netsoc_sdram_phaseinjector0_wrdata_re <= vns_netsoc_csrbank5_dfii_pi0_wrdata0_re;
	if (vns_netsoc_csrbank5_dfii_pi1_command0_re) begin
		soc_netsoc_sdram_phaseinjector1_command_storage_full[5:0] <= vns_netsoc_csrbank5_dfii_pi1_command0_r;
	end
	soc_netsoc_sdram_phaseinjector1_command_re <= vns_netsoc_csrbank5_dfii_pi1_command0_re;
	if (vns_netsoc_csrbank5_dfii_pi1_address1_re) begin
		soc_netsoc_sdram_phaseinjector1_address_storage_full[14:8] <= vns_netsoc_csrbank5_dfii_pi1_address1_r;
	end
	if (vns_netsoc_csrbank5_dfii_pi1_address0_re) begin
		soc_netsoc_sdram_phaseinjector1_address_storage_full[7:0] <= vns_netsoc_csrbank5_dfii_pi1_address0_r;
	end
	soc_netsoc_sdram_phaseinjector1_address_re <= vns_netsoc_csrbank5_dfii_pi1_address0_re;
	if (vns_netsoc_csrbank5_dfii_pi1_baddress0_re) begin
		soc_netsoc_sdram_phaseinjector1_baddress_storage_full[2:0] <= vns_netsoc_csrbank5_dfii_pi1_baddress0_r;
	end
	soc_netsoc_sdram_phaseinjector1_baddress_re <= vns_netsoc_csrbank5_dfii_pi1_baddress0_re;
	if (vns_netsoc_csrbank5_dfii_pi1_wrdata3_re) begin
		soc_netsoc_sdram_phaseinjector1_wrdata_storage_full[31:24] <= vns_netsoc_csrbank5_dfii_pi1_wrdata3_r;
	end
	if (vns_netsoc_csrbank5_dfii_pi1_wrdata2_re) begin
		soc_netsoc_sdram_phaseinjector1_wrdata_storage_full[23:16] <= vns_netsoc_csrbank5_dfii_pi1_wrdata2_r;
	end
	if (vns_netsoc_csrbank5_dfii_pi1_wrdata1_re) begin
		soc_netsoc_sdram_phaseinjector1_wrdata_storage_full[15:8] <= vns_netsoc_csrbank5_dfii_pi1_wrdata1_r;
	end
	if (vns_netsoc_csrbank5_dfii_pi1_wrdata0_re) begin
		soc_netsoc_sdram_phaseinjector1_wrdata_storage_full[7:0] <= vns_netsoc_csrbank5_dfii_pi1_wrdata0_r;
	end
	soc_netsoc_sdram_phaseinjector1_wrdata_re <= vns_netsoc_csrbank5_dfii_pi1_wrdata0_re;
	if (vns_netsoc_csrbank5_dfii_pi2_command0_re) begin
		soc_netsoc_sdram_phaseinjector2_command_storage_full[5:0] <= vns_netsoc_csrbank5_dfii_pi2_command0_r;
	end
	soc_netsoc_sdram_phaseinjector2_command_re <= vns_netsoc_csrbank5_dfii_pi2_command0_re;
	if (vns_netsoc_csrbank5_dfii_pi2_address1_re) begin
		soc_netsoc_sdram_phaseinjector2_address_storage_full[14:8] <= vns_netsoc_csrbank5_dfii_pi2_address1_r;
	end
	if (vns_netsoc_csrbank5_dfii_pi2_address0_re) begin
		soc_netsoc_sdram_phaseinjector2_address_storage_full[7:0] <= vns_netsoc_csrbank5_dfii_pi2_address0_r;
	end
	soc_netsoc_sdram_phaseinjector2_address_re <= vns_netsoc_csrbank5_dfii_pi2_address0_re;
	if (vns_netsoc_csrbank5_dfii_pi2_baddress0_re) begin
		soc_netsoc_sdram_phaseinjector2_baddress_storage_full[2:0] <= vns_netsoc_csrbank5_dfii_pi2_baddress0_r;
	end
	soc_netsoc_sdram_phaseinjector2_baddress_re <= vns_netsoc_csrbank5_dfii_pi2_baddress0_re;
	if (vns_netsoc_csrbank5_dfii_pi2_wrdata3_re) begin
		soc_netsoc_sdram_phaseinjector2_wrdata_storage_full[31:24] <= vns_netsoc_csrbank5_dfii_pi2_wrdata3_r;
	end
	if (vns_netsoc_csrbank5_dfii_pi2_wrdata2_re) begin
		soc_netsoc_sdram_phaseinjector2_wrdata_storage_full[23:16] <= vns_netsoc_csrbank5_dfii_pi2_wrdata2_r;
	end
	if (vns_netsoc_csrbank5_dfii_pi2_wrdata1_re) begin
		soc_netsoc_sdram_phaseinjector2_wrdata_storage_full[15:8] <= vns_netsoc_csrbank5_dfii_pi2_wrdata1_r;
	end
	if (vns_netsoc_csrbank5_dfii_pi2_wrdata0_re) begin
		soc_netsoc_sdram_phaseinjector2_wrdata_storage_full[7:0] <= vns_netsoc_csrbank5_dfii_pi2_wrdata0_r;
	end
	soc_netsoc_sdram_phaseinjector2_wrdata_re <= vns_netsoc_csrbank5_dfii_pi2_wrdata0_re;
	if (vns_netsoc_csrbank5_dfii_pi3_command0_re) begin
		soc_netsoc_sdram_phaseinjector3_command_storage_full[5:0] <= vns_netsoc_csrbank5_dfii_pi3_command0_r;
	end
	soc_netsoc_sdram_phaseinjector3_command_re <= vns_netsoc_csrbank5_dfii_pi3_command0_re;
	if (vns_netsoc_csrbank5_dfii_pi3_address1_re) begin
		soc_netsoc_sdram_phaseinjector3_address_storage_full[14:8] <= vns_netsoc_csrbank5_dfii_pi3_address1_r;
	end
	if (vns_netsoc_csrbank5_dfii_pi3_address0_re) begin
		soc_netsoc_sdram_phaseinjector3_address_storage_full[7:0] <= vns_netsoc_csrbank5_dfii_pi3_address0_r;
	end
	soc_netsoc_sdram_phaseinjector3_address_re <= vns_netsoc_csrbank5_dfii_pi3_address0_re;
	if (vns_netsoc_csrbank5_dfii_pi3_baddress0_re) begin
		soc_netsoc_sdram_phaseinjector3_baddress_storage_full[2:0] <= vns_netsoc_csrbank5_dfii_pi3_baddress0_r;
	end
	soc_netsoc_sdram_phaseinjector3_baddress_re <= vns_netsoc_csrbank5_dfii_pi3_baddress0_re;
	if (vns_netsoc_csrbank5_dfii_pi3_wrdata3_re) begin
		soc_netsoc_sdram_phaseinjector3_wrdata_storage_full[31:24] <= vns_netsoc_csrbank5_dfii_pi3_wrdata3_r;
	end
	if (vns_netsoc_csrbank5_dfii_pi3_wrdata2_re) begin
		soc_netsoc_sdram_phaseinjector3_wrdata_storage_full[23:16] <= vns_netsoc_csrbank5_dfii_pi3_wrdata2_r;
	end
	if (vns_netsoc_csrbank5_dfii_pi3_wrdata1_re) begin
		soc_netsoc_sdram_phaseinjector3_wrdata_storage_full[15:8] <= vns_netsoc_csrbank5_dfii_pi3_wrdata1_r;
	end
	if (vns_netsoc_csrbank5_dfii_pi3_wrdata0_re) begin
		soc_netsoc_sdram_phaseinjector3_wrdata_storage_full[7:0] <= vns_netsoc_csrbank5_dfii_pi3_wrdata0_r;
	end
	soc_netsoc_sdram_phaseinjector3_wrdata_re <= vns_netsoc_csrbank5_dfii_pi3_wrdata0_re;
	vns_netsoc_interface6_bank_bus_dat_r <= 1'd0;
	if (vns_netsoc_csrbank6_sel) begin
		case (vns_netsoc_interface6_bank_bus_adr[1:0])
			1'd0: begin
				vns_netsoc_interface6_bank_bus_dat_r <= vns_netsoc_csrbank6_bitbang0_w;
			end
			1'd1: begin
				vns_netsoc_interface6_bank_bus_dat_r <= vns_netsoc_csrbank6_miso_w;
			end
			2'd2: begin
				vns_netsoc_interface6_bank_bus_dat_r <= vns_netsoc_csrbank6_bitbang_en0_w;
			end
		endcase
	end
	if (vns_netsoc_csrbank6_bitbang0_re) begin
		soc_netsoc_bitbang_storage_full[3:0] <= vns_netsoc_csrbank6_bitbang0_r;
	end
	soc_netsoc_bitbang_re <= vns_netsoc_csrbank6_bitbang0_re;
	if (vns_netsoc_csrbank6_bitbang_en0_re) begin
		soc_netsoc_bitbang_en_storage_full <= vns_netsoc_csrbank6_bitbang_en0_r;
	end
	soc_netsoc_bitbang_en_re <= vns_netsoc_csrbank6_bitbang_en0_re;
	vns_netsoc_interface7_bank_bus_dat_r <= 1'd0;
	if (vns_netsoc_csrbank7_sel) begin
		case (vns_netsoc_interface7_bank_bus_adr[4:0])
			1'd0: begin
				vns_netsoc_interface7_bank_bus_dat_r <= vns_netsoc_csrbank7_load3_w;
			end
			1'd1: begin
				vns_netsoc_interface7_bank_bus_dat_r <= vns_netsoc_csrbank7_load2_w;
			end
			2'd2: begin
				vns_netsoc_interface7_bank_bus_dat_r <= vns_netsoc_csrbank7_load1_w;
			end
			2'd3: begin
				vns_netsoc_interface7_bank_bus_dat_r <= vns_netsoc_csrbank7_load0_w;
			end
			3'd4: begin
				vns_netsoc_interface7_bank_bus_dat_r <= vns_netsoc_csrbank7_reload3_w;
			end
			3'd5: begin
				vns_netsoc_interface7_bank_bus_dat_r <= vns_netsoc_csrbank7_reload2_w;
			end
			3'd6: begin
				vns_netsoc_interface7_bank_bus_dat_r <= vns_netsoc_csrbank7_reload1_w;
			end
			3'd7: begin
				vns_netsoc_interface7_bank_bus_dat_r <= vns_netsoc_csrbank7_reload0_w;
			end
			4'd8: begin
				vns_netsoc_interface7_bank_bus_dat_r <= vns_netsoc_csrbank7_en0_w;
			end
			4'd9: begin
				vns_netsoc_interface7_bank_bus_dat_r <= soc_netsoc_netsoc_update_value_w;
			end
			4'd10: begin
				vns_netsoc_interface7_bank_bus_dat_r <= vns_netsoc_csrbank7_value3_w;
			end
			4'd11: begin
				vns_netsoc_interface7_bank_bus_dat_r <= vns_netsoc_csrbank7_value2_w;
			end
			4'd12: begin
				vns_netsoc_interface7_bank_bus_dat_r <= vns_netsoc_csrbank7_value1_w;
			end
			4'd13: begin
				vns_netsoc_interface7_bank_bus_dat_r <= vns_netsoc_csrbank7_value0_w;
			end
			4'd14: begin
				vns_netsoc_interface7_bank_bus_dat_r <= soc_netsoc_netsoc_eventmanager_status_w;
			end
			4'd15: begin
				vns_netsoc_interface7_bank_bus_dat_r <= soc_netsoc_netsoc_eventmanager_pending_w;
			end
			5'd16: begin
				vns_netsoc_interface7_bank_bus_dat_r <= vns_netsoc_csrbank7_ev_enable0_w;
			end
		endcase
	end
	if (vns_netsoc_csrbank7_load3_re) begin
		soc_netsoc_netsoc_load_storage_full[31:24] <= vns_netsoc_csrbank7_load3_r;
	end
	if (vns_netsoc_csrbank7_load2_re) begin
		soc_netsoc_netsoc_load_storage_full[23:16] <= vns_netsoc_csrbank7_load2_r;
	end
	if (vns_netsoc_csrbank7_load1_re) begin
		soc_netsoc_netsoc_load_storage_full[15:8] <= vns_netsoc_csrbank7_load1_r;
	end
	if (vns_netsoc_csrbank7_load0_re) begin
		soc_netsoc_netsoc_load_storage_full[7:0] <= vns_netsoc_csrbank7_load0_r;
	end
	soc_netsoc_netsoc_load_re <= vns_netsoc_csrbank7_load0_re;
	if (vns_netsoc_csrbank7_reload3_re) begin
		soc_netsoc_netsoc_reload_storage_full[31:24] <= vns_netsoc_csrbank7_reload3_r;
	end
	if (vns_netsoc_csrbank7_reload2_re) begin
		soc_netsoc_netsoc_reload_storage_full[23:16] <= vns_netsoc_csrbank7_reload2_r;
	end
	if (vns_netsoc_csrbank7_reload1_re) begin
		soc_netsoc_netsoc_reload_storage_full[15:8] <= vns_netsoc_csrbank7_reload1_r;
	end
	if (vns_netsoc_csrbank7_reload0_re) begin
		soc_netsoc_netsoc_reload_storage_full[7:0] <= vns_netsoc_csrbank7_reload0_r;
	end
	soc_netsoc_netsoc_reload_re <= vns_netsoc_csrbank7_reload0_re;
	if (vns_netsoc_csrbank7_en0_re) begin
		soc_netsoc_netsoc_en_storage_full <= vns_netsoc_csrbank7_en0_r;
	end
	soc_netsoc_netsoc_en_re <= vns_netsoc_csrbank7_en0_re;
	if (vns_netsoc_csrbank7_ev_enable0_re) begin
		soc_netsoc_netsoc_eventmanager_storage_full <= vns_netsoc_csrbank7_ev_enable0_r;
	end
	soc_netsoc_netsoc_eventmanager_re <= vns_netsoc_csrbank7_ev_enable0_re;
	vns_netsoc_interface8_bank_bus_dat_r <= 1'd0;
	if (vns_netsoc_csrbank8_sel) begin
		case (vns_netsoc_interface8_bank_bus_adr[2:0])
			1'd0: begin
				vns_netsoc_interface8_bank_bus_dat_r <= soc_netsoc_uart_rxtx_w;
			end
			1'd1: begin
				vns_netsoc_interface8_bank_bus_dat_r <= vns_netsoc_csrbank8_txfull_w;
			end
			2'd2: begin
				vns_netsoc_interface8_bank_bus_dat_r <= vns_netsoc_csrbank8_rxempty_w;
			end
			2'd3: begin
				vns_netsoc_interface8_bank_bus_dat_r <= soc_netsoc_uart_status_w;
			end
			3'd4: begin
				vns_netsoc_interface8_bank_bus_dat_r <= soc_netsoc_uart_pending_w;
			end
			3'd5: begin
				vns_netsoc_interface8_bank_bus_dat_r <= vns_netsoc_csrbank8_ev_enable0_w;
			end
		endcase
	end
	if (vns_netsoc_csrbank8_ev_enable0_re) begin
		soc_netsoc_uart_storage_full[1:0] <= vns_netsoc_csrbank8_ev_enable0_r;
	end
	soc_netsoc_uart_re <= vns_netsoc_csrbank8_ev_enable0_re;
	vns_netsoc_interface9_bank_bus_dat_r <= 1'd0;
	if (vns_netsoc_csrbank9_sel) begin
		case (vns_netsoc_interface9_bank_bus_adr[1:0])
			1'd0: begin
				vns_netsoc_interface9_bank_bus_dat_r <= vns_netsoc_csrbank9_tuning_word3_w;
			end
			1'd1: begin
				vns_netsoc_interface9_bank_bus_dat_r <= vns_netsoc_csrbank9_tuning_word2_w;
			end
			2'd2: begin
				vns_netsoc_interface9_bank_bus_dat_r <= vns_netsoc_csrbank9_tuning_word1_w;
			end
			2'd3: begin
				vns_netsoc_interface9_bank_bus_dat_r <= vns_netsoc_csrbank9_tuning_word0_w;
			end
		endcase
	end
	if (vns_netsoc_csrbank9_tuning_word3_re) begin
		soc_netsoc_uart_phy_storage_full[31:24] <= vns_netsoc_csrbank9_tuning_word3_r;
	end
	if (vns_netsoc_csrbank9_tuning_word2_re) begin
		soc_netsoc_uart_phy_storage_full[23:16] <= vns_netsoc_csrbank9_tuning_word2_r;
	end
	if (vns_netsoc_csrbank9_tuning_word1_re) begin
		soc_netsoc_uart_phy_storage_full[15:8] <= vns_netsoc_csrbank9_tuning_word1_r;
	end
	if (vns_netsoc_csrbank9_tuning_word0_re) begin
		soc_netsoc_uart_phy_storage_full[7:0] <= vns_netsoc_csrbank9_tuning_word0_r;
	end
	soc_netsoc_uart_phy_re <= vns_netsoc_csrbank9_tuning_word0_re;
	if (sys_rst) begin
		soc_netsoc_netsoc_rom_bus_ack <= 1'd0;
		soc_netsoc_netsoc_sram_bus_ack <= 1'd0;
		soc_netsoc_netsoc_interface_adr <= 14'd0;
		soc_netsoc_netsoc_interface_we <= 1'd0;
		soc_netsoc_netsoc_interface_dat_w <= 8'd0;
		soc_netsoc_netsoc_bus_wishbone_dat_r <= 32'd0;
		soc_netsoc_netsoc_bus_wishbone_ack <= 1'd0;
		soc_netsoc_netsoc_counter <= 2'd0;
		soc_netsoc_netsoc_load_storage_full <= 32'd0;
		soc_netsoc_netsoc_load_re <= 1'd0;
		soc_netsoc_netsoc_reload_storage_full <= 32'd0;
		soc_netsoc_netsoc_reload_re <= 1'd0;
		soc_netsoc_netsoc_en_storage_full <= 1'd0;
		soc_netsoc_netsoc_en_re <= 1'd0;
		soc_netsoc_netsoc_value_status <= 32'd0;
		soc_netsoc_netsoc_zero_pending <= 1'd0;
		soc_netsoc_netsoc_zero_old_trigger <= 1'd0;
		soc_netsoc_netsoc_eventmanager_storage_full <= 1'd0;
		soc_netsoc_netsoc_eventmanager_re <= 1'd0;
		soc_netsoc_netsoc_value <= 32'd0;
		soc_netsoc_uart_tx_pending <= 1'd0;
		soc_netsoc_uart_tx_old_trigger <= 1'd0;
		soc_netsoc_uart_rx_pending <= 1'd0;
		soc_netsoc_uart_rx_old_trigger <= 1'd0;
		soc_netsoc_uart_storage_full <= 2'd0;
		soc_netsoc_uart_re <= 1'd0;
		soc_netsoc_uart_tx_fifo_level <= 5'd0;
		soc_netsoc_uart_tx_fifo_produce <= 4'd0;
		soc_netsoc_uart_tx_fifo_consume <= 4'd0;
		soc_netsoc_uart_rx_fifo_level <= 5'd0;
		soc_netsoc_uart_rx_fifo_produce <= 4'd0;
		soc_netsoc_uart_rx_fifo_consume <= 4'd0;
		soc_netsoc_bridge_count <= 24'd10000000;
		serial_tx <= 1'd1;
		soc_netsoc_uart_phy_storage_full <= 32'd4947802;
		soc_netsoc_uart_phy_re <= 1'd0;
		soc_netsoc_uart_phy_sink_ready <= 1'd0;
		soc_netsoc_uart_phy_uart_clk_txen <= 1'd0;
		soc_netsoc_uart_phy_phase_accumulator_tx <= 32'd0;
		soc_netsoc_uart_phy_tx_reg <= 8'd0;
		soc_netsoc_uart_phy_tx_bitcount <= 4'd0;
		soc_netsoc_uart_phy_tx_busy <= 1'd0;
		soc_netsoc_uart_phy_source_valid <= 1'd0;
		soc_netsoc_uart_phy_source_payload_data <= 8'd0;
		soc_netsoc_uart_phy_uart_clk_rxen <= 1'd0;
		soc_netsoc_uart_phy_phase_accumulator_rx <= 32'd0;
		soc_netsoc_uart_phy_rx_r <= 1'd0;
		soc_netsoc_uart_phy_rx_reg <= 8'd0;
		soc_netsoc_uart_phy_rx_bitcount <= 4'd0;
		soc_netsoc_uart_phy_rx_busy <= 1'd0;
		soc_netsoc_info_dna_status <= 57'd0;
		soc_netsoc_info_dna_cnt <= 7'd0;
		soc_netsoc_info_temperature_status <= 12'd0;
		soc_netsoc_info_vccint_status <= 12'd0;
		soc_netsoc_info_vccaux_status <= 12'd0;
		soc_netsoc_info_vccbram_status <= 12'd0;
		soc_netsoc_oled_spi_pads_clk <= 1'd0;
		soc_netsoc_oled_spi_pads_mosi <= 1'd0;
		soc_netsoc_oled_spimaster_length_storage_full <= 8'd0;
		soc_netsoc_oled_spimaster_length_re <= 1'd0;
		soc_netsoc_oled_spimaster_mosi_storage_full <= 8'd0;
		soc_netsoc_oled_spimaster_mosi_re <= 1'd0;
		soc_netsoc_oled_spimaster_i <= 4'd0;
		soc_netsoc_oled_spimaster_cnt <= 8'd0;
		soc_netsoc_oled_spimaster_sr_mosi <= 8'd0;
		soc_netsoc_oled_storage_full <= 4'd0;
		soc_netsoc_oled_re <= 1'd0;
		soc_netsoc_ddrphy_storage_full <= 2'd0;
		soc_netsoc_ddrphy_re <= 1'd0;
		soc_netsoc_ddrphy_dfi_p0_rddata_valid <= 1'd0;
		soc_netsoc_ddrphy_dfi_p1_rddata_valid <= 1'd0;
		soc_netsoc_ddrphy_dfi_p2_rddata_valid <= 1'd0;
		soc_netsoc_ddrphy_dfi_p3_rddata_valid <= 1'd0;
		soc_netsoc_ddrphy_oe_dqs <= 1'd0;
		soc_netsoc_ddrphy_oe_dq <= 1'd0;
		soc_netsoc_ddrphy_n_rddata_en0 <= 1'd0;
		soc_netsoc_ddrphy_n_rddata_en1 <= 1'd0;
		soc_netsoc_ddrphy_n_rddata_en2 <= 1'd0;
		soc_netsoc_ddrphy_n_rddata_en3 <= 1'd0;
		soc_netsoc_ddrphy_n_rddata_en4 <= 1'd0;
		soc_netsoc_ddrphy_last_wrdata_en <= 4'd0;
		soc_netsoc_sdram_storage_full <= 4'd0;
		soc_netsoc_sdram_re <= 1'd0;
		soc_netsoc_sdram_phaseinjector0_command_storage_full <= 6'd0;
		soc_netsoc_sdram_phaseinjector0_command_re <= 1'd0;
		soc_netsoc_sdram_phaseinjector0_address_storage_full <= 15'd0;
		soc_netsoc_sdram_phaseinjector0_address_re <= 1'd0;
		soc_netsoc_sdram_phaseinjector0_baddress_storage_full <= 3'd0;
		soc_netsoc_sdram_phaseinjector0_baddress_re <= 1'd0;
		soc_netsoc_sdram_phaseinjector0_wrdata_storage_full <= 32'd0;
		soc_netsoc_sdram_phaseinjector0_wrdata_re <= 1'd0;
		soc_netsoc_sdram_phaseinjector0_status <= 32'd0;
		soc_netsoc_sdram_phaseinjector1_command_storage_full <= 6'd0;
		soc_netsoc_sdram_phaseinjector1_command_re <= 1'd0;
		soc_netsoc_sdram_phaseinjector1_address_storage_full <= 15'd0;
		soc_netsoc_sdram_phaseinjector1_address_re <= 1'd0;
		soc_netsoc_sdram_phaseinjector1_baddress_storage_full <= 3'd0;
		soc_netsoc_sdram_phaseinjector1_baddress_re <= 1'd0;
		soc_netsoc_sdram_phaseinjector1_wrdata_storage_full <= 32'd0;
		soc_netsoc_sdram_phaseinjector1_wrdata_re <= 1'd0;
		soc_netsoc_sdram_phaseinjector1_status <= 32'd0;
		soc_netsoc_sdram_phaseinjector2_command_storage_full <= 6'd0;
		soc_netsoc_sdram_phaseinjector2_command_re <= 1'd0;
		soc_netsoc_sdram_phaseinjector2_address_storage_full <= 15'd0;
		soc_netsoc_sdram_phaseinjector2_address_re <= 1'd0;
		soc_netsoc_sdram_phaseinjector2_baddress_storage_full <= 3'd0;
		soc_netsoc_sdram_phaseinjector2_baddress_re <= 1'd0;
		soc_netsoc_sdram_phaseinjector2_wrdata_storage_full <= 32'd0;
		soc_netsoc_sdram_phaseinjector2_wrdata_re <= 1'd0;
		soc_netsoc_sdram_phaseinjector2_status <= 32'd0;
		soc_netsoc_sdram_phaseinjector3_command_storage_full <= 6'd0;
		soc_netsoc_sdram_phaseinjector3_command_re <= 1'd0;
		soc_netsoc_sdram_phaseinjector3_address_storage_full <= 15'd0;
		soc_netsoc_sdram_phaseinjector3_address_re <= 1'd0;
		soc_netsoc_sdram_phaseinjector3_baddress_storage_full <= 3'd0;
		soc_netsoc_sdram_phaseinjector3_baddress_re <= 1'd0;
		soc_netsoc_sdram_phaseinjector3_wrdata_storage_full <= 32'd0;
		soc_netsoc_sdram_phaseinjector3_wrdata_re <= 1'd0;
		soc_netsoc_sdram_phaseinjector3_status <= 32'd0;
		soc_netsoc_sdram_dfi_p0_address <= 15'd0;
		soc_netsoc_sdram_dfi_p0_bank <= 3'd0;
		soc_netsoc_sdram_dfi_p0_cas_n <= 1'd1;
		soc_netsoc_sdram_dfi_p0_ras_n <= 1'd1;
		soc_netsoc_sdram_dfi_p0_we_n <= 1'd1;
		soc_netsoc_sdram_dfi_p0_wrdata_en <= 1'd0;
		soc_netsoc_sdram_dfi_p0_rddata_en <= 1'd0;
		soc_netsoc_sdram_dfi_p1_address <= 15'd0;
		soc_netsoc_sdram_dfi_p1_bank <= 3'd0;
		soc_netsoc_sdram_dfi_p1_cas_n <= 1'd1;
		soc_netsoc_sdram_dfi_p1_ras_n <= 1'd1;
		soc_netsoc_sdram_dfi_p1_we_n <= 1'd1;
		soc_netsoc_sdram_dfi_p1_wrdata_en <= 1'd0;
		soc_netsoc_sdram_dfi_p1_rddata_en <= 1'd0;
		soc_netsoc_sdram_dfi_p2_address <= 15'd0;
		soc_netsoc_sdram_dfi_p2_bank <= 3'd0;
		soc_netsoc_sdram_dfi_p2_cas_n <= 1'd1;
		soc_netsoc_sdram_dfi_p2_ras_n <= 1'd1;
		soc_netsoc_sdram_dfi_p2_we_n <= 1'd1;
		soc_netsoc_sdram_dfi_p2_wrdata_en <= 1'd0;
		soc_netsoc_sdram_dfi_p2_rddata_en <= 1'd0;
		soc_netsoc_sdram_dfi_p3_address <= 15'd0;
		soc_netsoc_sdram_dfi_p3_bank <= 3'd0;
		soc_netsoc_sdram_dfi_p3_cas_n <= 1'd1;
		soc_netsoc_sdram_dfi_p3_ras_n <= 1'd1;
		soc_netsoc_sdram_dfi_p3_we_n <= 1'd1;
		soc_netsoc_sdram_dfi_p3_wrdata_en <= 1'd0;
		soc_netsoc_sdram_dfi_p3_rddata_en <= 1'd0;
		soc_netsoc_sdram_cmd_payload_a <= 15'd0;
		soc_netsoc_sdram_cmd_payload_ba <= 3'd0;
		soc_netsoc_sdram_cmd_payload_cas <= 1'd0;
		soc_netsoc_sdram_cmd_payload_ras <= 1'd0;
		soc_netsoc_sdram_cmd_payload_we <= 1'd0;
		soc_netsoc_sdram_seq_done <= 1'd0;
		soc_netsoc_sdram_counter <= 5'd0;
		soc_netsoc_sdram_count <= 10'd782;
		soc_netsoc_sdram_bankmachine0_level <= 4'd0;
		soc_netsoc_sdram_bankmachine0_produce <= 3'd0;
		soc_netsoc_sdram_bankmachine0_consume <= 3'd0;
		soc_netsoc_sdram_bankmachine0_has_openrow <= 1'd0;
		soc_netsoc_sdram_bankmachine0_count <= 3'd5;
		soc_netsoc_sdram_bankmachine1_level <= 4'd0;
		soc_netsoc_sdram_bankmachine1_produce <= 3'd0;
		soc_netsoc_sdram_bankmachine1_consume <= 3'd0;
		soc_netsoc_sdram_bankmachine1_has_openrow <= 1'd0;
		soc_netsoc_sdram_bankmachine1_count <= 3'd5;
		soc_netsoc_sdram_bankmachine2_level <= 4'd0;
		soc_netsoc_sdram_bankmachine2_produce <= 3'd0;
		soc_netsoc_sdram_bankmachine2_consume <= 3'd0;
		soc_netsoc_sdram_bankmachine2_has_openrow <= 1'd0;
		soc_netsoc_sdram_bankmachine2_count <= 3'd5;
		soc_netsoc_sdram_bankmachine3_level <= 4'd0;
		soc_netsoc_sdram_bankmachine3_produce <= 3'd0;
		soc_netsoc_sdram_bankmachine3_consume <= 3'd0;
		soc_netsoc_sdram_bankmachine3_has_openrow <= 1'd0;
		soc_netsoc_sdram_bankmachine3_count <= 3'd5;
		soc_netsoc_sdram_bankmachine4_level <= 4'd0;
		soc_netsoc_sdram_bankmachine4_produce <= 3'd0;
		soc_netsoc_sdram_bankmachine4_consume <= 3'd0;
		soc_netsoc_sdram_bankmachine4_has_openrow <= 1'd0;
		soc_netsoc_sdram_bankmachine4_count <= 3'd5;
		soc_netsoc_sdram_bankmachine5_level <= 4'd0;
		soc_netsoc_sdram_bankmachine5_produce <= 3'd0;
		soc_netsoc_sdram_bankmachine5_consume <= 3'd0;
		soc_netsoc_sdram_bankmachine5_has_openrow <= 1'd0;
		soc_netsoc_sdram_bankmachine5_count <= 3'd5;
		soc_netsoc_sdram_bankmachine6_level <= 4'd0;
		soc_netsoc_sdram_bankmachine6_produce <= 3'd0;
		soc_netsoc_sdram_bankmachine6_consume <= 3'd0;
		soc_netsoc_sdram_bankmachine6_has_openrow <= 1'd0;
		soc_netsoc_sdram_bankmachine6_count <= 3'd5;
		soc_netsoc_sdram_bankmachine7_level <= 4'd0;
		soc_netsoc_sdram_bankmachine7_produce <= 3'd0;
		soc_netsoc_sdram_bankmachine7_consume <= 3'd0;
		soc_netsoc_sdram_bankmachine7_has_openrow <= 1'd0;
		soc_netsoc_sdram_bankmachine7_count <= 3'd5;
		soc_netsoc_sdram_choose_cmd_grant <= 3'd0;
		soc_netsoc_sdram_choose_req_grant <= 3'd0;
		soc_netsoc_sdram_time0 <= 5'd0;
		soc_netsoc_sdram_time1 <= 4'd0;
		soc_netsoc_sdram_bandwidth_nreads_status <= 24'd0;
		soc_netsoc_sdram_bandwidth_nwrites_status <= 24'd0;
		soc_netsoc_sdram_bandwidth_cmd_valid <= 1'd0;
		soc_netsoc_sdram_bandwidth_cmd_ready <= 1'd0;
		soc_netsoc_sdram_bandwidth_cmd_is_read <= 1'd0;
		soc_netsoc_sdram_bandwidth_cmd_is_write <= 1'd0;
		soc_netsoc_sdram_bandwidth_counter <= 24'd0;
		soc_netsoc_sdram_bandwidth_period <= 1'd0;
		soc_netsoc_sdram_bandwidth_nreads <= 24'd0;
		soc_netsoc_sdram_bandwidth_nwrites <= 24'd0;
		soc_netsoc_sdram_bandwidth_nreads_r <= 24'd0;
		soc_netsoc_sdram_bandwidth_nwrites_r <= 24'd0;
		soc_netsoc_adr_offset_r <= 2'd0;
		soc_netsoc_bus_ack <= 1'd0;
		soc_netsoc_bitbang_storage_full <= 4'd0;
		soc_netsoc_bitbang_re <= 1'd0;
		soc_netsoc_bitbang_en_storage_full <= 1'd0;
		soc_netsoc_bitbang_en_re <= 1'd0;
		soc_netsoc_cs_n <= 1'd1;
		soc_netsoc_clk1 <= 1'd0;
		soc_netsoc_sr <= 32'd0;
		soc_netsoc_i <= 1'd0;
		soc_netsoc_miso <= 1'd0;
		soc_netsoc_counter <= 8'd0;
		soc_ethphy_reset_storage_full <= 1'd0;
		soc_ethphy_reset_re <= 1'd0;
		soc_ethphy_counter <= 9'd0;
		soc_ethphy_storage_full <= 3'd0;
		soc_ethphy_re <= 1'd0;
		soc_ethmac_preamble_errors_status <= 32'd0;
		soc_ethmac_crc_errors_status <= 32'd0;
		soc_ethmac_tx_cdc_graycounter0_q <= 7'd0;
		soc_ethmac_tx_cdc_graycounter0_q_binary <= 7'd0;
		soc_ethmac_rx_cdc_graycounter1_q <= 7'd0;
		soc_ethmac_rx_cdc_graycounter1_q_binary <= 7'd0;
		soc_ethmac_writer_errors_status <= 32'd0;
		soc_ethmac_writer_storage_full <= 1'd0;
		soc_ethmac_writer_re <= 1'd0;
		soc_ethmac_writer_counter <= 32'd0;
		soc_ethmac_writer_slot <= 1'd0;
		soc_ethmac_writer_fifo_level <= 2'd0;
		soc_ethmac_writer_fifo_produce <= 1'd0;
		soc_ethmac_writer_fifo_consume <= 1'd0;
		soc_ethmac_reader_slot_storage_full <= 1'd0;
		soc_ethmac_reader_slot_re <= 1'd0;
		soc_ethmac_reader_length_storage_full <= 11'd0;
		soc_ethmac_reader_length_re <= 1'd0;
		soc_ethmac_reader_done_pending <= 1'd0;
		soc_ethmac_reader_eventmanager_storage_full <= 1'd0;
		soc_ethmac_reader_eventmanager_re <= 1'd0;
		soc_ethmac_reader_fifo_level <= 2'd0;
		soc_ethmac_reader_fifo_produce <= 1'd0;
		soc_ethmac_reader_fifo_consume <= 1'd0;
		soc_ethmac_reader_counter <= 11'd0;
		soc_ethmac_reader_last_d <= 1'd0;
		soc_ethmac_sram0_bus_ack0 <= 1'd0;
		soc_ethmac_sram1_bus_ack0 <= 1'd0;
		soc_ethmac_sram0_bus_ack1 <= 1'd0;
		soc_ethmac_sram1_bus_ack1 <= 1'd0;
		soc_ethmac_slave_sel_r <= 4'd0;
		vns_wishbonestreamingbridge_state <= 3'd0;
		vns_oled_state <= 2'd0;
		vns_refresher_state <= 2'd0;
		vns_bankmachine0_state <= 3'd0;
		vns_bankmachine1_state <= 3'd0;
		vns_bankmachine2_state <= 3'd0;
		vns_bankmachine3_state <= 3'd0;
		vns_bankmachine4_state <= 3'd0;
		vns_bankmachine5_state <= 3'd0;
		vns_bankmachine6_state <= 3'd0;
		vns_bankmachine7_state <= 3'd0;
		vns_multiplexer_state <= 4'd0;
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
		vns_fullmemorywe_state <= 3'd0;
		vns_litedramwishbonebridge_state <= 2'd0;
		vns_liteethmacsramwriter_state <= 3'd0;
		vns_liteethmacsramreader_state <= 2'd0;
		vns_netsoc_grant <= 2'd0;
		vns_netsoc_slave_sel_r <= 6'd0;
		vns_netsoc_interface0_bank_bus_dat_r <= 8'd0;
		vns_netsoc_interface1_bank_bus_dat_r <= 8'd0;
		vns_netsoc_interface2_bank_bus_dat_r <= 8'd0;
		vns_netsoc_sel_r <= 1'd0;
		vns_netsoc_interface3_bank_bus_dat_r <= 8'd0;
		vns_netsoc_interface4_bank_bus_dat_r <= 8'd0;
		vns_netsoc_interface5_bank_bus_dat_r <= 8'd0;
		vns_netsoc_interface6_bank_bus_dat_r <= 8'd0;
		vns_netsoc_interface7_bank_bus_dat_r <= 8'd0;
		vns_netsoc_interface8_bank_bus_dat_r <= 8'd0;
		vns_netsoc_interface9_bank_bus_dat_r <= 8'd0;
	end
	vns_xilinxmultiregimpl0_regs0 <= serial_rx;
	vns_xilinxmultiregimpl0_regs1 <= vns_xilinxmultiregimpl0_regs0;
	vns_xilinxmultiregimpl1_regs0 <= soc_ethphy_data_r;
	vns_xilinxmultiregimpl1_regs1 <= vns_xilinxmultiregimpl1_regs0;
	vns_xilinxmultiregimpl2_regs0 <= soc_ethmac_ps_preamble_error_toggle_i;
	vns_xilinxmultiregimpl2_regs1 <= vns_xilinxmultiregimpl2_regs0;
	vns_xilinxmultiregimpl3_regs0 <= soc_ethmac_ps_crc_error_toggle_i;
	vns_xilinxmultiregimpl3_regs1 <= vns_xilinxmultiregimpl3_regs0;
	vns_xilinxmultiregimpl5_regs0 <= soc_ethmac_tx_cdc_graycounter1_q;
	vns_xilinxmultiregimpl5_regs1 <= vns_xilinxmultiregimpl5_regs0;
	vns_xilinxmultiregimpl6_regs0 <= soc_ethmac_rx_cdc_graycounter0_q;
	vns_xilinxmultiregimpl6_regs1 <= vns_xilinxmultiregimpl6_regs0;
end

lm32_cpu #(
	.eba_reset(32'h00000000)
) lm32_cpu (
	.D_ACK_I(soc_netsoc_netsoc_dbus_ack),
	.D_DAT_I(soc_netsoc_netsoc_dbus_dat_r),
	.D_ERR_I(soc_netsoc_netsoc_dbus_err),
	.D_RTY_I(1'd0),
	.I_ACK_I(soc_netsoc_netsoc_ibus_ack),
	.I_DAT_I(soc_netsoc_netsoc_ibus_dat_r),
	.I_ERR_I(soc_netsoc_netsoc_ibus_err),
	.I_RTY_I(1'd0),
	.clk_i(sys_clk),
	.interrupt(soc_netsoc_netsoc_interrupt),
	.rst_i(sys_rst),
	.D_ADR_O(soc_netsoc_netsoc_d_adr_o),
	.D_BTE_O(soc_netsoc_netsoc_dbus_bte),
	.D_CTI_O(soc_netsoc_netsoc_dbus_cti),
	.D_CYC_O(soc_netsoc_netsoc_dbus_cyc),
	.D_DAT_O(soc_netsoc_netsoc_dbus_dat_w),
	.D_SEL_O(soc_netsoc_netsoc_dbus_sel),
	.D_STB_O(soc_netsoc_netsoc_dbus_stb),
	.D_WE_O(soc_netsoc_netsoc_dbus_we),
	.I_ADR_O(soc_netsoc_netsoc_i_adr_o),
	.I_BTE_O(soc_netsoc_netsoc_ibus_bte),
	.I_CTI_O(soc_netsoc_netsoc_ibus_cti),
	.I_CYC_O(soc_netsoc_netsoc_ibus_cyc),
	.I_DAT_O(soc_netsoc_netsoc_ibus_dat_w),
	.I_SEL_O(soc_netsoc_netsoc_ibus_sel),
	.I_STB_O(soc_netsoc_netsoc_ibus_stb),
	.I_WE_O(soc_netsoc_netsoc_ibus_we)
);

reg [31:0] mem[0:8191];
reg [12:0] memadr;
always @(posedge sys_clk) begin
	memadr <= soc_netsoc_netsoc_rom_adr;
end

assign soc_netsoc_netsoc_rom_dat_r = mem[memadr];

initial begin
	$readmemh("mem.init", mem);
end

reg [31:0] mem_1[0:8191];
reg [12:0] memadr_1;
always @(posedge sys_clk) begin
	if (soc_netsoc_netsoc_sram_we[0])
		mem_1[soc_netsoc_netsoc_sram_adr][7:0] <= soc_netsoc_netsoc_sram_dat_w[7:0];
	if (soc_netsoc_netsoc_sram_we[1])
		mem_1[soc_netsoc_netsoc_sram_adr][15:8] <= soc_netsoc_netsoc_sram_dat_w[15:8];
	if (soc_netsoc_netsoc_sram_we[2])
		mem_1[soc_netsoc_netsoc_sram_adr][23:16] <= soc_netsoc_netsoc_sram_dat_w[23:16];
	if (soc_netsoc_netsoc_sram_we[3])
		mem_1[soc_netsoc_netsoc_sram_adr][31:24] <= soc_netsoc_netsoc_sram_dat_w[31:24];
	memadr_1 <= soc_netsoc_netsoc_sram_adr;
end

assign soc_netsoc_netsoc_sram_dat_r = mem_1[memadr_1];

reg [7:0] mem_2[0:6];
reg [2:0] memadr_2;
always @(posedge sys_clk) begin
	memadr_2 <= vns_netsoc_adr;
end

assign vns_netsoc_dat_r = mem_2[memadr_2];

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
	.DIVCLK_DIVIDE(1'd1),
	.REF_JITTER1(0.01),
	.STARTUP_WAIT("FALSE")
) PLLE2_BASE (
	.CLKFBIN(soc_netsoc_pll_fb),
	.CLKIN1(clk100),
	.CLKFBOUT(soc_netsoc_pll_fb),
	.CLKOUT0(soc_netsoc_pll_sys),
	.CLKOUT1(soc_netsoc_pll_sys4x),
	.CLKOUT2(soc_netsoc_pll_sys4x_dqs),
	.CLKOUT3(soc_netsoc_pll_clk200),
	.LOCKED(soc_netsoc_pll_locked)
);

BUFG BUFG(
	.I(soc_netsoc_pll_sys),
	.O(sys_clk)
);

BUFG BUFG_1(
	.I(soc_netsoc_pll_sys4x),
	.O(sys4x_clk)
);

BUFG BUFG_2(
	.I(soc_netsoc_pll_sys4x_dqs),
	.O(sys4x_dqs_clk)
);

BUFG BUFG_3(
	.I(soc_netsoc_pll_clk200),
	.O(clk200_clk)
);

BUFG BUFG_4(
	.I(clk100),
	.O(clk100_clk)
);

IDELAYCTRL IDELAYCTRL(
	.REFCLK(clk200_clk),
	.RST(soc_netsoc_ic_reset)
);

reg [9:0] storage[0:15];
reg [9:0] memdat;
always @(posedge sys_clk) begin
	if (soc_netsoc_uart_tx_fifo_wrport_we)
		storage[soc_netsoc_uart_tx_fifo_wrport_adr] <= soc_netsoc_uart_tx_fifo_wrport_dat_w;
	memdat <= storage[soc_netsoc_uart_tx_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_netsoc_uart_tx_fifo_wrport_dat_r = memdat;
assign soc_netsoc_uart_tx_fifo_rdport_dat_r = storage[soc_netsoc_uart_tx_fifo_rdport_adr];

reg [9:0] storage_1[0:15];
reg [9:0] memdat_1;
always @(posedge sys_clk) begin
	if (soc_netsoc_uart_rx_fifo_wrport_we)
		storage_1[soc_netsoc_uart_rx_fifo_wrport_adr] <= soc_netsoc_uart_rx_fifo_wrport_dat_w;
	memdat_1 <= storage_1[soc_netsoc_uart_rx_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_netsoc_uart_rx_fifo_wrport_dat_r = memdat_1;
assign soc_netsoc_uart_rx_fifo_rdport_dat_r = storage_1[soc_netsoc_uart_rx_fifo_rdport_adr];

DNA_PORT DNA_PORT(
	.CLK(soc_netsoc_info_dna_cnt[0]),
	.DIN(soc_netsoc_info_dna_status[56]),
	.READ((soc_netsoc_info_dna_cnt < 2'd2)),
	.SHIFT(1'd1),
	.DOUT(soc_netsoc_info_dna_do)
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
	.DADDR(soc_netsoc_info_channel),
	.DCLK(sys_clk),
	.DEN(soc_netsoc_info_eoc),
	.DI(1'd0),
	.DWE(1'd0),
	.RESET(sys_rst),
	.VAUXN(1'd0),
	.VAUXP(1'd1),
	.VN(1'd0),
	.VP(1'd1),
	.ALM(soc_netsoc_info_alarm),
	.BUSY(soc_netsoc_info_busy),
	.CHANNEL(soc_netsoc_info_channel),
	.DO(soc_netsoc_info_data),
	.DRDY(soc_netsoc_info_drdy),
	.EOC(soc_netsoc_info_eoc),
	.EOS(soc_netsoc_info_eos),
	.OT(soc_netsoc_info_ot)
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
	.OQ(soc_netsoc_ddrphy_sd_clk_se)
);

OBUFDS OBUFDS(
	.I(soc_netsoc_ddrphy_sd_clk_se),
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
	.D1(soc_netsoc_ddrphy_dfi_p0_address[0]),
	.D2(soc_netsoc_ddrphy_dfi_p0_address[0]),
	.D3(soc_netsoc_ddrphy_dfi_p1_address[0]),
	.D4(soc_netsoc_ddrphy_dfi_p1_address[0]),
	.D5(soc_netsoc_ddrphy_dfi_p2_address[0]),
	.D6(soc_netsoc_ddrphy_dfi_p2_address[0]),
	.D7(soc_netsoc_ddrphy_dfi_p3_address[0]),
	.D8(soc_netsoc_ddrphy_dfi_p3_address[0]),
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
	.D1(soc_netsoc_ddrphy_dfi_p0_address[1]),
	.D2(soc_netsoc_ddrphy_dfi_p0_address[1]),
	.D3(soc_netsoc_ddrphy_dfi_p1_address[1]),
	.D4(soc_netsoc_ddrphy_dfi_p1_address[1]),
	.D5(soc_netsoc_ddrphy_dfi_p2_address[1]),
	.D6(soc_netsoc_ddrphy_dfi_p2_address[1]),
	.D7(soc_netsoc_ddrphy_dfi_p3_address[1]),
	.D8(soc_netsoc_ddrphy_dfi_p3_address[1]),
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
	.D1(soc_netsoc_ddrphy_dfi_p0_address[2]),
	.D2(soc_netsoc_ddrphy_dfi_p0_address[2]),
	.D3(soc_netsoc_ddrphy_dfi_p1_address[2]),
	.D4(soc_netsoc_ddrphy_dfi_p1_address[2]),
	.D5(soc_netsoc_ddrphy_dfi_p2_address[2]),
	.D6(soc_netsoc_ddrphy_dfi_p2_address[2]),
	.D7(soc_netsoc_ddrphy_dfi_p3_address[2]),
	.D8(soc_netsoc_ddrphy_dfi_p3_address[2]),
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
	.D1(soc_netsoc_ddrphy_dfi_p0_address[3]),
	.D2(soc_netsoc_ddrphy_dfi_p0_address[3]),
	.D3(soc_netsoc_ddrphy_dfi_p1_address[3]),
	.D4(soc_netsoc_ddrphy_dfi_p1_address[3]),
	.D5(soc_netsoc_ddrphy_dfi_p2_address[3]),
	.D6(soc_netsoc_ddrphy_dfi_p2_address[3]),
	.D7(soc_netsoc_ddrphy_dfi_p3_address[3]),
	.D8(soc_netsoc_ddrphy_dfi_p3_address[3]),
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
	.D1(soc_netsoc_ddrphy_dfi_p0_address[4]),
	.D2(soc_netsoc_ddrphy_dfi_p0_address[4]),
	.D3(soc_netsoc_ddrphy_dfi_p1_address[4]),
	.D4(soc_netsoc_ddrphy_dfi_p1_address[4]),
	.D5(soc_netsoc_ddrphy_dfi_p2_address[4]),
	.D6(soc_netsoc_ddrphy_dfi_p2_address[4]),
	.D7(soc_netsoc_ddrphy_dfi_p3_address[4]),
	.D8(soc_netsoc_ddrphy_dfi_p3_address[4]),
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
	.D1(soc_netsoc_ddrphy_dfi_p0_address[5]),
	.D2(soc_netsoc_ddrphy_dfi_p0_address[5]),
	.D3(soc_netsoc_ddrphy_dfi_p1_address[5]),
	.D4(soc_netsoc_ddrphy_dfi_p1_address[5]),
	.D5(soc_netsoc_ddrphy_dfi_p2_address[5]),
	.D6(soc_netsoc_ddrphy_dfi_p2_address[5]),
	.D7(soc_netsoc_ddrphy_dfi_p3_address[5]),
	.D8(soc_netsoc_ddrphy_dfi_p3_address[5]),
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
	.D1(soc_netsoc_ddrphy_dfi_p0_address[6]),
	.D2(soc_netsoc_ddrphy_dfi_p0_address[6]),
	.D3(soc_netsoc_ddrphy_dfi_p1_address[6]),
	.D4(soc_netsoc_ddrphy_dfi_p1_address[6]),
	.D5(soc_netsoc_ddrphy_dfi_p2_address[6]),
	.D6(soc_netsoc_ddrphy_dfi_p2_address[6]),
	.D7(soc_netsoc_ddrphy_dfi_p3_address[6]),
	.D8(soc_netsoc_ddrphy_dfi_p3_address[6]),
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
	.D1(soc_netsoc_ddrphy_dfi_p0_address[7]),
	.D2(soc_netsoc_ddrphy_dfi_p0_address[7]),
	.D3(soc_netsoc_ddrphy_dfi_p1_address[7]),
	.D4(soc_netsoc_ddrphy_dfi_p1_address[7]),
	.D5(soc_netsoc_ddrphy_dfi_p2_address[7]),
	.D6(soc_netsoc_ddrphy_dfi_p2_address[7]),
	.D7(soc_netsoc_ddrphy_dfi_p3_address[7]),
	.D8(soc_netsoc_ddrphy_dfi_p3_address[7]),
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
	.D1(soc_netsoc_ddrphy_dfi_p0_address[8]),
	.D2(soc_netsoc_ddrphy_dfi_p0_address[8]),
	.D3(soc_netsoc_ddrphy_dfi_p1_address[8]),
	.D4(soc_netsoc_ddrphy_dfi_p1_address[8]),
	.D5(soc_netsoc_ddrphy_dfi_p2_address[8]),
	.D6(soc_netsoc_ddrphy_dfi_p2_address[8]),
	.D7(soc_netsoc_ddrphy_dfi_p3_address[8]),
	.D8(soc_netsoc_ddrphy_dfi_p3_address[8]),
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
	.D1(soc_netsoc_ddrphy_dfi_p0_address[9]),
	.D2(soc_netsoc_ddrphy_dfi_p0_address[9]),
	.D3(soc_netsoc_ddrphy_dfi_p1_address[9]),
	.D4(soc_netsoc_ddrphy_dfi_p1_address[9]),
	.D5(soc_netsoc_ddrphy_dfi_p2_address[9]),
	.D6(soc_netsoc_ddrphy_dfi_p2_address[9]),
	.D7(soc_netsoc_ddrphy_dfi_p3_address[9]),
	.D8(soc_netsoc_ddrphy_dfi_p3_address[9]),
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
	.D1(soc_netsoc_ddrphy_dfi_p0_address[10]),
	.D2(soc_netsoc_ddrphy_dfi_p0_address[10]),
	.D3(soc_netsoc_ddrphy_dfi_p1_address[10]),
	.D4(soc_netsoc_ddrphy_dfi_p1_address[10]),
	.D5(soc_netsoc_ddrphy_dfi_p2_address[10]),
	.D6(soc_netsoc_ddrphy_dfi_p2_address[10]),
	.D7(soc_netsoc_ddrphy_dfi_p3_address[10]),
	.D8(soc_netsoc_ddrphy_dfi_p3_address[10]),
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
	.D1(soc_netsoc_ddrphy_dfi_p0_address[11]),
	.D2(soc_netsoc_ddrphy_dfi_p0_address[11]),
	.D3(soc_netsoc_ddrphy_dfi_p1_address[11]),
	.D4(soc_netsoc_ddrphy_dfi_p1_address[11]),
	.D5(soc_netsoc_ddrphy_dfi_p2_address[11]),
	.D6(soc_netsoc_ddrphy_dfi_p2_address[11]),
	.D7(soc_netsoc_ddrphy_dfi_p3_address[11]),
	.D8(soc_netsoc_ddrphy_dfi_p3_address[11]),
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
	.D1(soc_netsoc_ddrphy_dfi_p0_address[12]),
	.D2(soc_netsoc_ddrphy_dfi_p0_address[12]),
	.D3(soc_netsoc_ddrphy_dfi_p1_address[12]),
	.D4(soc_netsoc_ddrphy_dfi_p1_address[12]),
	.D5(soc_netsoc_ddrphy_dfi_p2_address[12]),
	.D6(soc_netsoc_ddrphy_dfi_p2_address[12]),
	.D7(soc_netsoc_ddrphy_dfi_p3_address[12]),
	.D8(soc_netsoc_ddrphy_dfi_p3_address[12]),
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
	.D1(soc_netsoc_ddrphy_dfi_p0_address[13]),
	.D2(soc_netsoc_ddrphy_dfi_p0_address[13]),
	.D3(soc_netsoc_ddrphy_dfi_p1_address[13]),
	.D4(soc_netsoc_ddrphy_dfi_p1_address[13]),
	.D5(soc_netsoc_ddrphy_dfi_p2_address[13]),
	.D6(soc_netsoc_ddrphy_dfi_p2_address[13]),
	.D7(soc_netsoc_ddrphy_dfi_p3_address[13]),
	.D8(soc_netsoc_ddrphy_dfi_p3_address[13]),
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
	.D1(soc_netsoc_ddrphy_dfi_p0_address[14]),
	.D2(soc_netsoc_ddrphy_dfi_p0_address[14]),
	.D3(soc_netsoc_ddrphy_dfi_p1_address[14]),
	.D4(soc_netsoc_ddrphy_dfi_p1_address[14]),
	.D5(soc_netsoc_ddrphy_dfi_p2_address[14]),
	.D6(soc_netsoc_ddrphy_dfi_p2_address[14]),
	.D7(soc_netsoc_ddrphy_dfi_p3_address[14]),
	.D8(soc_netsoc_ddrphy_dfi_p3_address[14]),
	.OCE(1'd1),
	.RST(sys_rst),
	.OQ(ddram_a[14])
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
	.D1(soc_netsoc_ddrphy_dfi_p0_bank[0]),
	.D2(soc_netsoc_ddrphy_dfi_p0_bank[0]),
	.D3(soc_netsoc_ddrphy_dfi_p1_bank[0]),
	.D4(soc_netsoc_ddrphy_dfi_p1_bank[0]),
	.D5(soc_netsoc_ddrphy_dfi_p2_bank[0]),
	.D6(soc_netsoc_ddrphy_dfi_p2_bank[0]),
	.D7(soc_netsoc_ddrphy_dfi_p3_bank[0]),
	.D8(soc_netsoc_ddrphy_dfi_p3_bank[0]),
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
) OSERDESE2_17 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_netsoc_ddrphy_dfi_p0_bank[1]),
	.D2(soc_netsoc_ddrphy_dfi_p0_bank[1]),
	.D3(soc_netsoc_ddrphy_dfi_p1_bank[1]),
	.D4(soc_netsoc_ddrphy_dfi_p1_bank[1]),
	.D5(soc_netsoc_ddrphy_dfi_p2_bank[1]),
	.D6(soc_netsoc_ddrphy_dfi_p2_bank[1]),
	.D7(soc_netsoc_ddrphy_dfi_p3_bank[1]),
	.D8(soc_netsoc_ddrphy_dfi_p3_bank[1]),
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
) OSERDESE2_18 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_netsoc_ddrphy_dfi_p0_bank[2]),
	.D2(soc_netsoc_ddrphy_dfi_p0_bank[2]),
	.D3(soc_netsoc_ddrphy_dfi_p1_bank[2]),
	.D4(soc_netsoc_ddrphy_dfi_p1_bank[2]),
	.D5(soc_netsoc_ddrphy_dfi_p2_bank[2]),
	.D6(soc_netsoc_ddrphy_dfi_p2_bank[2]),
	.D7(soc_netsoc_ddrphy_dfi_p3_bank[2]),
	.D8(soc_netsoc_ddrphy_dfi_p3_bank[2]),
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
) OSERDESE2_19 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_netsoc_ddrphy_dfi_p0_ras_n),
	.D2(soc_netsoc_ddrphy_dfi_p0_ras_n),
	.D3(soc_netsoc_ddrphy_dfi_p1_ras_n),
	.D4(soc_netsoc_ddrphy_dfi_p1_ras_n),
	.D5(soc_netsoc_ddrphy_dfi_p2_ras_n),
	.D6(soc_netsoc_ddrphy_dfi_p2_ras_n),
	.D7(soc_netsoc_ddrphy_dfi_p3_ras_n),
	.D8(soc_netsoc_ddrphy_dfi_p3_ras_n),
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
) OSERDESE2_20 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_netsoc_ddrphy_dfi_p0_cas_n),
	.D2(soc_netsoc_ddrphy_dfi_p0_cas_n),
	.D3(soc_netsoc_ddrphy_dfi_p1_cas_n),
	.D4(soc_netsoc_ddrphy_dfi_p1_cas_n),
	.D5(soc_netsoc_ddrphy_dfi_p2_cas_n),
	.D6(soc_netsoc_ddrphy_dfi_p2_cas_n),
	.D7(soc_netsoc_ddrphy_dfi_p3_cas_n),
	.D8(soc_netsoc_ddrphy_dfi_p3_cas_n),
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
) OSERDESE2_21 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_netsoc_ddrphy_dfi_p0_we_n),
	.D2(soc_netsoc_ddrphy_dfi_p0_we_n),
	.D3(soc_netsoc_ddrphy_dfi_p1_we_n),
	.D4(soc_netsoc_ddrphy_dfi_p1_we_n),
	.D5(soc_netsoc_ddrphy_dfi_p2_we_n),
	.D6(soc_netsoc_ddrphy_dfi_p2_we_n),
	.D7(soc_netsoc_ddrphy_dfi_p3_we_n),
	.D8(soc_netsoc_ddrphy_dfi_p3_we_n),
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
) OSERDESE2_22 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_netsoc_ddrphy_dfi_p0_cke),
	.D2(soc_netsoc_ddrphy_dfi_p0_cke),
	.D3(soc_netsoc_ddrphy_dfi_p1_cke),
	.D4(soc_netsoc_ddrphy_dfi_p1_cke),
	.D5(soc_netsoc_ddrphy_dfi_p2_cke),
	.D6(soc_netsoc_ddrphy_dfi_p2_cke),
	.D7(soc_netsoc_ddrphy_dfi_p3_cke),
	.D8(soc_netsoc_ddrphy_dfi_p3_cke),
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
) OSERDESE2_23 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_netsoc_ddrphy_dfi_p0_odt),
	.D2(soc_netsoc_ddrphy_dfi_p0_odt),
	.D3(soc_netsoc_ddrphy_dfi_p1_odt),
	.D4(soc_netsoc_ddrphy_dfi_p1_odt),
	.D5(soc_netsoc_ddrphy_dfi_p2_odt),
	.D6(soc_netsoc_ddrphy_dfi_p2_odt),
	.D7(soc_netsoc_ddrphy_dfi_p3_odt),
	.D8(soc_netsoc_ddrphy_dfi_p3_odt),
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
) OSERDESE2_24 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_netsoc_ddrphy_dfi_p0_reset_n),
	.D2(soc_netsoc_ddrphy_dfi_p0_reset_n),
	.D3(soc_netsoc_ddrphy_dfi_p1_reset_n),
	.D4(soc_netsoc_ddrphy_dfi_p1_reset_n),
	.D5(soc_netsoc_ddrphy_dfi_p2_reset_n),
	.D6(soc_netsoc_ddrphy_dfi_p2_reset_n),
	.D7(soc_netsoc_ddrphy_dfi_p3_reset_n),
	.D8(soc_netsoc_ddrphy_dfi_p3_reset_n),
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
) OSERDESE2_25 (
	.CLK(sys4x_clk),
	.CLKDIV(sys_clk),
	.D1(soc_netsoc_ddrphy_dfi_p0_wrdata_mask[0]),
	.D2(soc_netsoc_ddrphy_dfi_p0_wrdata_mask[2]),
	.D3(soc_netsoc_ddrphy_dfi_p1_wrdata_mask[0]),
	.D4(soc_netsoc_ddrphy_dfi_p1_wrdata_mask[2]),
	.D5(soc_netsoc_ddrphy_dfi_p2_wrdata_mask[0]),
	.D6(soc_netsoc_ddrphy_dfi_p2_wrdata_mask[2]),
	.D7(soc_netsoc_ddrphy_dfi_p3_wrdata_mask[0]),
	.D8(soc_netsoc_ddrphy_dfi_p3_wrdata_mask[2]),
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
	.D1(soc_netsoc_ddrphy_dqs_serdes_pattern[0]),
	.D2(soc_netsoc_ddrphy_dqs_serdes_pattern[1]),
	.D3(soc_netsoc_ddrphy_dqs_serdes_pattern[2]),
	.D4(soc_netsoc_ddrphy_dqs_serdes_pattern[3]),
	.D5(soc_netsoc_ddrphy_dqs_serdes_pattern[4]),
	.D6(soc_netsoc_ddrphy_dqs_serdes_pattern[5]),
	.D7(soc_netsoc_ddrphy_dqs_serdes_pattern[6]),
	.D8(soc_netsoc_ddrphy_dqs_serdes_pattern[7]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_netsoc_ddrphy_oe_dqs)),
	.TCE(1'd1),
	.OQ(soc_netsoc_ddrphy_dqs0),
	.TQ(soc_netsoc_ddrphy_dqs_t0)
);

OBUFTDS OBUFTDS(
	.I(soc_netsoc_ddrphy_dqs0),
	.T(soc_netsoc_ddrphy_dqs_t0),
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
	.D1(soc_netsoc_ddrphy_dfi_p0_wrdata_mask[1]),
	.D2(soc_netsoc_ddrphy_dfi_p0_wrdata_mask[3]),
	.D3(soc_netsoc_ddrphy_dfi_p1_wrdata_mask[1]),
	.D4(soc_netsoc_ddrphy_dfi_p1_wrdata_mask[3]),
	.D5(soc_netsoc_ddrphy_dfi_p2_wrdata_mask[1]),
	.D6(soc_netsoc_ddrphy_dfi_p2_wrdata_mask[3]),
	.D7(soc_netsoc_ddrphy_dfi_p3_wrdata_mask[1]),
	.D8(soc_netsoc_ddrphy_dfi_p3_wrdata_mask[3]),
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
	.D1(soc_netsoc_ddrphy_dqs_serdes_pattern[0]),
	.D2(soc_netsoc_ddrphy_dqs_serdes_pattern[1]),
	.D3(soc_netsoc_ddrphy_dqs_serdes_pattern[2]),
	.D4(soc_netsoc_ddrphy_dqs_serdes_pattern[3]),
	.D5(soc_netsoc_ddrphy_dqs_serdes_pattern[4]),
	.D6(soc_netsoc_ddrphy_dqs_serdes_pattern[5]),
	.D7(soc_netsoc_ddrphy_dqs_serdes_pattern[6]),
	.D8(soc_netsoc_ddrphy_dqs_serdes_pattern[7]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_netsoc_ddrphy_oe_dqs)),
	.TCE(1'd1),
	.OQ(soc_netsoc_ddrphy_dqs1),
	.TQ(soc_netsoc_ddrphy_dqs_t1)
);

OBUFTDS OBUFTDS_1(
	.I(soc_netsoc_ddrphy_dqs1),
	.T(soc_netsoc_ddrphy_dqs_t1),
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
	.D1(soc_netsoc_ddrphy_dfi_p0_wrdata[0]),
	.D2(soc_netsoc_ddrphy_dfi_p0_wrdata[16]),
	.D3(soc_netsoc_ddrphy_dfi_p1_wrdata[0]),
	.D4(soc_netsoc_ddrphy_dfi_p1_wrdata[16]),
	.D5(soc_netsoc_ddrphy_dfi_p2_wrdata[0]),
	.D6(soc_netsoc_ddrphy_dfi_p2_wrdata[16]),
	.D7(soc_netsoc_ddrphy_dfi_p3_wrdata[0]),
	.D8(soc_netsoc_ddrphy_dfi_p3_wrdata[16]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_netsoc_ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_netsoc_ddrphy_dq_o0),
	.TQ(soc_netsoc_ddrphy_dq_t0)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2 (
	.BITSLIP((soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_netsoc_ddrphy_dq_i_delayed0),
	.RST((sys_rst | (soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_rst_re))),
	.Q1(soc_netsoc_ddrphy_dfi_p3_rddata[16]),
	.Q2(soc_netsoc_ddrphy_dfi_p3_rddata[0]),
	.Q3(soc_netsoc_ddrphy_dfi_p2_rddata[16]),
	.Q4(soc_netsoc_ddrphy_dfi_p2_rddata[0]),
	.Q5(soc_netsoc_ddrphy_dfi_p1_rddata[16]),
	.Q6(soc_netsoc_ddrphy_dfi_p1_rddata[0]),
	.Q7(soc_netsoc_ddrphy_dfi_p0_rddata[16]),
	.Q8(soc_netsoc_ddrphy_dfi_p0_rddata[0])
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
	.CE((soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_netsoc_ddrphy_dq_i_nodelay0),
	.INC(1'd1),
	.LD((soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_netsoc_ddrphy_dq_i_delayed0)
);

IOBUF IOBUF(
	.I(soc_netsoc_ddrphy_dq_o0),
	.T(soc_netsoc_ddrphy_dq_t0),
	.IO(ddram_dq[0]),
	.O(soc_netsoc_ddrphy_dq_i_nodelay0)
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
	.D1(soc_netsoc_ddrphy_dfi_p0_wrdata[1]),
	.D2(soc_netsoc_ddrphy_dfi_p0_wrdata[17]),
	.D3(soc_netsoc_ddrphy_dfi_p1_wrdata[1]),
	.D4(soc_netsoc_ddrphy_dfi_p1_wrdata[17]),
	.D5(soc_netsoc_ddrphy_dfi_p2_wrdata[1]),
	.D6(soc_netsoc_ddrphy_dfi_p2_wrdata[17]),
	.D7(soc_netsoc_ddrphy_dfi_p3_wrdata[1]),
	.D8(soc_netsoc_ddrphy_dfi_p3_wrdata[17]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_netsoc_ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_netsoc_ddrphy_dq_o1),
	.TQ(soc_netsoc_ddrphy_dq_t1)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_1 (
	.BITSLIP((soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_netsoc_ddrphy_dq_i_delayed1),
	.RST((sys_rst | (soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_rst_re))),
	.Q1(soc_netsoc_ddrphy_dfi_p3_rddata[17]),
	.Q2(soc_netsoc_ddrphy_dfi_p3_rddata[1]),
	.Q3(soc_netsoc_ddrphy_dfi_p2_rddata[17]),
	.Q4(soc_netsoc_ddrphy_dfi_p2_rddata[1]),
	.Q5(soc_netsoc_ddrphy_dfi_p1_rddata[17]),
	.Q6(soc_netsoc_ddrphy_dfi_p1_rddata[1]),
	.Q7(soc_netsoc_ddrphy_dfi_p0_rddata[17]),
	.Q8(soc_netsoc_ddrphy_dfi_p0_rddata[1])
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
	.CE((soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_netsoc_ddrphy_dq_i_nodelay1),
	.INC(1'd1),
	.LD((soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_netsoc_ddrphy_dq_i_delayed1)
);

IOBUF IOBUF_1(
	.I(soc_netsoc_ddrphy_dq_o1),
	.T(soc_netsoc_ddrphy_dq_t1),
	.IO(ddram_dq[1]),
	.O(soc_netsoc_ddrphy_dq_i_nodelay1)
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
	.D1(soc_netsoc_ddrphy_dfi_p0_wrdata[2]),
	.D2(soc_netsoc_ddrphy_dfi_p0_wrdata[18]),
	.D3(soc_netsoc_ddrphy_dfi_p1_wrdata[2]),
	.D4(soc_netsoc_ddrphy_dfi_p1_wrdata[18]),
	.D5(soc_netsoc_ddrphy_dfi_p2_wrdata[2]),
	.D6(soc_netsoc_ddrphy_dfi_p2_wrdata[18]),
	.D7(soc_netsoc_ddrphy_dfi_p3_wrdata[2]),
	.D8(soc_netsoc_ddrphy_dfi_p3_wrdata[18]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_netsoc_ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_netsoc_ddrphy_dq_o2),
	.TQ(soc_netsoc_ddrphy_dq_t2)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_2 (
	.BITSLIP((soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_netsoc_ddrphy_dq_i_delayed2),
	.RST((sys_rst | (soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_rst_re))),
	.Q1(soc_netsoc_ddrphy_dfi_p3_rddata[18]),
	.Q2(soc_netsoc_ddrphy_dfi_p3_rddata[2]),
	.Q3(soc_netsoc_ddrphy_dfi_p2_rddata[18]),
	.Q4(soc_netsoc_ddrphy_dfi_p2_rddata[2]),
	.Q5(soc_netsoc_ddrphy_dfi_p1_rddata[18]),
	.Q6(soc_netsoc_ddrphy_dfi_p1_rddata[2]),
	.Q7(soc_netsoc_ddrphy_dfi_p0_rddata[18]),
	.Q8(soc_netsoc_ddrphy_dfi_p0_rddata[2])
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
	.CE((soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_netsoc_ddrphy_dq_i_nodelay2),
	.INC(1'd1),
	.LD((soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_netsoc_ddrphy_dq_i_delayed2)
);

IOBUF IOBUF_2(
	.I(soc_netsoc_ddrphy_dq_o2),
	.T(soc_netsoc_ddrphy_dq_t2),
	.IO(ddram_dq[2]),
	.O(soc_netsoc_ddrphy_dq_i_nodelay2)
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
	.D1(soc_netsoc_ddrphy_dfi_p0_wrdata[3]),
	.D2(soc_netsoc_ddrphy_dfi_p0_wrdata[19]),
	.D3(soc_netsoc_ddrphy_dfi_p1_wrdata[3]),
	.D4(soc_netsoc_ddrphy_dfi_p1_wrdata[19]),
	.D5(soc_netsoc_ddrphy_dfi_p2_wrdata[3]),
	.D6(soc_netsoc_ddrphy_dfi_p2_wrdata[19]),
	.D7(soc_netsoc_ddrphy_dfi_p3_wrdata[3]),
	.D8(soc_netsoc_ddrphy_dfi_p3_wrdata[19]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_netsoc_ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_netsoc_ddrphy_dq_o3),
	.TQ(soc_netsoc_ddrphy_dq_t3)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_3 (
	.BITSLIP((soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_netsoc_ddrphy_dq_i_delayed3),
	.RST((sys_rst | (soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_rst_re))),
	.Q1(soc_netsoc_ddrphy_dfi_p3_rddata[19]),
	.Q2(soc_netsoc_ddrphy_dfi_p3_rddata[3]),
	.Q3(soc_netsoc_ddrphy_dfi_p2_rddata[19]),
	.Q4(soc_netsoc_ddrphy_dfi_p2_rddata[3]),
	.Q5(soc_netsoc_ddrphy_dfi_p1_rddata[19]),
	.Q6(soc_netsoc_ddrphy_dfi_p1_rddata[3]),
	.Q7(soc_netsoc_ddrphy_dfi_p0_rddata[19]),
	.Q8(soc_netsoc_ddrphy_dfi_p0_rddata[3])
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
	.CE((soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_netsoc_ddrphy_dq_i_nodelay3),
	.INC(1'd1),
	.LD((soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_netsoc_ddrphy_dq_i_delayed3)
);

IOBUF IOBUF_3(
	.I(soc_netsoc_ddrphy_dq_o3),
	.T(soc_netsoc_ddrphy_dq_t3),
	.IO(ddram_dq[3]),
	.O(soc_netsoc_ddrphy_dq_i_nodelay3)
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
	.D1(soc_netsoc_ddrphy_dfi_p0_wrdata[4]),
	.D2(soc_netsoc_ddrphy_dfi_p0_wrdata[20]),
	.D3(soc_netsoc_ddrphy_dfi_p1_wrdata[4]),
	.D4(soc_netsoc_ddrphy_dfi_p1_wrdata[20]),
	.D5(soc_netsoc_ddrphy_dfi_p2_wrdata[4]),
	.D6(soc_netsoc_ddrphy_dfi_p2_wrdata[20]),
	.D7(soc_netsoc_ddrphy_dfi_p3_wrdata[4]),
	.D8(soc_netsoc_ddrphy_dfi_p3_wrdata[20]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_netsoc_ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_netsoc_ddrphy_dq_o4),
	.TQ(soc_netsoc_ddrphy_dq_t4)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_4 (
	.BITSLIP((soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_netsoc_ddrphy_dq_i_delayed4),
	.RST((sys_rst | (soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_rst_re))),
	.Q1(soc_netsoc_ddrphy_dfi_p3_rddata[20]),
	.Q2(soc_netsoc_ddrphy_dfi_p3_rddata[4]),
	.Q3(soc_netsoc_ddrphy_dfi_p2_rddata[20]),
	.Q4(soc_netsoc_ddrphy_dfi_p2_rddata[4]),
	.Q5(soc_netsoc_ddrphy_dfi_p1_rddata[20]),
	.Q6(soc_netsoc_ddrphy_dfi_p1_rddata[4]),
	.Q7(soc_netsoc_ddrphy_dfi_p0_rddata[20]),
	.Q8(soc_netsoc_ddrphy_dfi_p0_rddata[4])
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
	.CE((soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_netsoc_ddrphy_dq_i_nodelay4),
	.INC(1'd1),
	.LD((soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_netsoc_ddrphy_dq_i_delayed4)
);

IOBUF IOBUF_4(
	.I(soc_netsoc_ddrphy_dq_o4),
	.T(soc_netsoc_ddrphy_dq_t4),
	.IO(ddram_dq[4]),
	.O(soc_netsoc_ddrphy_dq_i_nodelay4)
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
	.D1(soc_netsoc_ddrphy_dfi_p0_wrdata[5]),
	.D2(soc_netsoc_ddrphy_dfi_p0_wrdata[21]),
	.D3(soc_netsoc_ddrphy_dfi_p1_wrdata[5]),
	.D4(soc_netsoc_ddrphy_dfi_p1_wrdata[21]),
	.D5(soc_netsoc_ddrphy_dfi_p2_wrdata[5]),
	.D6(soc_netsoc_ddrphy_dfi_p2_wrdata[21]),
	.D7(soc_netsoc_ddrphy_dfi_p3_wrdata[5]),
	.D8(soc_netsoc_ddrphy_dfi_p3_wrdata[21]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_netsoc_ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_netsoc_ddrphy_dq_o5),
	.TQ(soc_netsoc_ddrphy_dq_t5)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_5 (
	.BITSLIP((soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_netsoc_ddrphy_dq_i_delayed5),
	.RST((sys_rst | (soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_rst_re))),
	.Q1(soc_netsoc_ddrphy_dfi_p3_rddata[21]),
	.Q2(soc_netsoc_ddrphy_dfi_p3_rddata[5]),
	.Q3(soc_netsoc_ddrphy_dfi_p2_rddata[21]),
	.Q4(soc_netsoc_ddrphy_dfi_p2_rddata[5]),
	.Q5(soc_netsoc_ddrphy_dfi_p1_rddata[21]),
	.Q6(soc_netsoc_ddrphy_dfi_p1_rddata[5]),
	.Q7(soc_netsoc_ddrphy_dfi_p0_rddata[21]),
	.Q8(soc_netsoc_ddrphy_dfi_p0_rddata[5])
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
	.CE((soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_netsoc_ddrphy_dq_i_nodelay5),
	.INC(1'd1),
	.LD((soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_netsoc_ddrphy_dq_i_delayed5)
);

IOBUF IOBUF_5(
	.I(soc_netsoc_ddrphy_dq_o5),
	.T(soc_netsoc_ddrphy_dq_t5),
	.IO(ddram_dq[5]),
	.O(soc_netsoc_ddrphy_dq_i_nodelay5)
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
	.D1(soc_netsoc_ddrphy_dfi_p0_wrdata[6]),
	.D2(soc_netsoc_ddrphy_dfi_p0_wrdata[22]),
	.D3(soc_netsoc_ddrphy_dfi_p1_wrdata[6]),
	.D4(soc_netsoc_ddrphy_dfi_p1_wrdata[22]),
	.D5(soc_netsoc_ddrphy_dfi_p2_wrdata[6]),
	.D6(soc_netsoc_ddrphy_dfi_p2_wrdata[22]),
	.D7(soc_netsoc_ddrphy_dfi_p3_wrdata[6]),
	.D8(soc_netsoc_ddrphy_dfi_p3_wrdata[22]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_netsoc_ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_netsoc_ddrphy_dq_o6),
	.TQ(soc_netsoc_ddrphy_dq_t6)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_6 (
	.BITSLIP((soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_netsoc_ddrphy_dq_i_delayed6),
	.RST((sys_rst | (soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_rst_re))),
	.Q1(soc_netsoc_ddrphy_dfi_p3_rddata[22]),
	.Q2(soc_netsoc_ddrphy_dfi_p3_rddata[6]),
	.Q3(soc_netsoc_ddrphy_dfi_p2_rddata[22]),
	.Q4(soc_netsoc_ddrphy_dfi_p2_rddata[6]),
	.Q5(soc_netsoc_ddrphy_dfi_p1_rddata[22]),
	.Q6(soc_netsoc_ddrphy_dfi_p1_rddata[6]),
	.Q7(soc_netsoc_ddrphy_dfi_p0_rddata[22]),
	.Q8(soc_netsoc_ddrphy_dfi_p0_rddata[6])
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
	.CE((soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_netsoc_ddrphy_dq_i_nodelay6),
	.INC(1'd1),
	.LD((soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_netsoc_ddrphy_dq_i_delayed6)
);

IOBUF IOBUF_6(
	.I(soc_netsoc_ddrphy_dq_o6),
	.T(soc_netsoc_ddrphy_dq_t6),
	.IO(ddram_dq[6]),
	.O(soc_netsoc_ddrphy_dq_i_nodelay6)
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
	.D1(soc_netsoc_ddrphy_dfi_p0_wrdata[7]),
	.D2(soc_netsoc_ddrphy_dfi_p0_wrdata[23]),
	.D3(soc_netsoc_ddrphy_dfi_p1_wrdata[7]),
	.D4(soc_netsoc_ddrphy_dfi_p1_wrdata[23]),
	.D5(soc_netsoc_ddrphy_dfi_p2_wrdata[7]),
	.D6(soc_netsoc_ddrphy_dfi_p2_wrdata[23]),
	.D7(soc_netsoc_ddrphy_dfi_p3_wrdata[7]),
	.D8(soc_netsoc_ddrphy_dfi_p3_wrdata[23]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_netsoc_ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_netsoc_ddrphy_dq_o7),
	.TQ(soc_netsoc_ddrphy_dq_t7)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_7 (
	.BITSLIP((soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_netsoc_ddrphy_dq_i_delayed7),
	.RST((sys_rst | (soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_rst_re))),
	.Q1(soc_netsoc_ddrphy_dfi_p3_rddata[23]),
	.Q2(soc_netsoc_ddrphy_dfi_p3_rddata[7]),
	.Q3(soc_netsoc_ddrphy_dfi_p2_rddata[23]),
	.Q4(soc_netsoc_ddrphy_dfi_p2_rddata[7]),
	.Q5(soc_netsoc_ddrphy_dfi_p1_rddata[23]),
	.Q6(soc_netsoc_ddrphy_dfi_p1_rddata[7]),
	.Q7(soc_netsoc_ddrphy_dfi_p0_rddata[23]),
	.Q8(soc_netsoc_ddrphy_dfi_p0_rddata[7])
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
	.CE((soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_netsoc_ddrphy_dq_i_nodelay7),
	.INC(1'd1),
	.LD((soc_netsoc_ddrphy_storage[0] & soc_netsoc_ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_netsoc_ddrphy_dq_i_delayed7)
);

IOBUF IOBUF_7(
	.I(soc_netsoc_ddrphy_dq_o7),
	.T(soc_netsoc_ddrphy_dq_t7),
	.IO(ddram_dq[7]),
	.O(soc_netsoc_ddrphy_dq_i_nodelay7)
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
	.D1(soc_netsoc_ddrphy_dfi_p0_wrdata[8]),
	.D2(soc_netsoc_ddrphy_dfi_p0_wrdata[24]),
	.D3(soc_netsoc_ddrphy_dfi_p1_wrdata[8]),
	.D4(soc_netsoc_ddrphy_dfi_p1_wrdata[24]),
	.D5(soc_netsoc_ddrphy_dfi_p2_wrdata[8]),
	.D6(soc_netsoc_ddrphy_dfi_p2_wrdata[24]),
	.D7(soc_netsoc_ddrphy_dfi_p3_wrdata[8]),
	.D8(soc_netsoc_ddrphy_dfi_p3_wrdata[24]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_netsoc_ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_netsoc_ddrphy_dq_o8),
	.TQ(soc_netsoc_ddrphy_dq_t8)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_8 (
	.BITSLIP((soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_netsoc_ddrphy_dq_i_delayed8),
	.RST((sys_rst | (soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_rst_re))),
	.Q1(soc_netsoc_ddrphy_dfi_p3_rddata[24]),
	.Q2(soc_netsoc_ddrphy_dfi_p3_rddata[8]),
	.Q3(soc_netsoc_ddrphy_dfi_p2_rddata[24]),
	.Q4(soc_netsoc_ddrphy_dfi_p2_rddata[8]),
	.Q5(soc_netsoc_ddrphy_dfi_p1_rddata[24]),
	.Q6(soc_netsoc_ddrphy_dfi_p1_rddata[8]),
	.Q7(soc_netsoc_ddrphy_dfi_p0_rddata[24]),
	.Q8(soc_netsoc_ddrphy_dfi_p0_rddata[8])
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
	.CE((soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_netsoc_ddrphy_dq_i_nodelay8),
	.INC(1'd1),
	.LD((soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_netsoc_ddrphy_dq_i_delayed8)
);

IOBUF IOBUF_8(
	.I(soc_netsoc_ddrphy_dq_o8),
	.T(soc_netsoc_ddrphy_dq_t8),
	.IO(ddram_dq[8]),
	.O(soc_netsoc_ddrphy_dq_i_nodelay8)
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
	.D1(soc_netsoc_ddrphy_dfi_p0_wrdata[9]),
	.D2(soc_netsoc_ddrphy_dfi_p0_wrdata[25]),
	.D3(soc_netsoc_ddrphy_dfi_p1_wrdata[9]),
	.D4(soc_netsoc_ddrphy_dfi_p1_wrdata[25]),
	.D5(soc_netsoc_ddrphy_dfi_p2_wrdata[9]),
	.D6(soc_netsoc_ddrphy_dfi_p2_wrdata[25]),
	.D7(soc_netsoc_ddrphy_dfi_p3_wrdata[9]),
	.D8(soc_netsoc_ddrphy_dfi_p3_wrdata[25]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_netsoc_ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_netsoc_ddrphy_dq_o9),
	.TQ(soc_netsoc_ddrphy_dq_t9)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_9 (
	.BITSLIP((soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_netsoc_ddrphy_dq_i_delayed9),
	.RST((sys_rst | (soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_rst_re))),
	.Q1(soc_netsoc_ddrphy_dfi_p3_rddata[25]),
	.Q2(soc_netsoc_ddrphy_dfi_p3_rddata[9]),
	.Q3(soc_netsoc_ddrphy_dfi_p2_rddata[25]),
	.Q4(soc_netsoc_ddrphy_dfi_p2_rddata[9]),
	.Q5(soc_netsoc_ddrphy_dfi_p1_rddata[25]),
	.Q6(soc_netsoc_ddrphy_dfi_p1_rddata[9]),
	.Q7(soc_netsoc_ddrphy_dfi_p0_rddata[25]),
	.Q8(soc_netsoc_ddrphy_dfi_p0_rddata[9])
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
	.CE((soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_netsoc_ddrphy_dq_i_nodelay9),
	.INC(1'd1),
	.LD((soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_netsoc_ddrphy_dq_i_delayed9)
);

IOBUF IOBUF_9(
	.I(soc_netsoc_ddrphy_dq_o9),
	.T(soc_netsoc_ddrphy_dq_t9),
	.IO(ddram_dq[9]),
	.O(soc_netsoc_ddrphy_dq_i_nodelay9)
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
	.D1(soc_netsoc_ddrphy_dfi_p0_wrdata[10]),
	.D2(soc_netsoc_ddrphy_dfi_p0_wrdata[26]),
	.D3(soc_netsoc_ddrphy_dfi_p1_wrdata[10]),
	.D4(soc_netsoc_ddrphy_dfi_p1_wrdata[26]),
	.D5(soc_netsoc_ddrphy_dfi_p2_wrdata[10]),
	.D6(soc_netsoc_ddrphy_dfi_p2_wrdata[26]),
	.D7(soc_netsoc_ddrphy_dfi_p3_wrdata[10]),
	.D8(soc_netsoc_ddrphy_dfi_p3_wrdata[26]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_netsoc_ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_netsoc_ddrphy_dq_o10),
	.TQ(soc_netsoc_ddrphy_dq_t10)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_10 (
	.BITSLIP((soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_netsoc_ddrphy_dq_i_delayed10),
	.RST((sys_rst | (soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_rst_re))),
	.Q1(soc_netsoc_ddrphy_dfi_p3_rddata[26]),
	.Q2(soc_netsoc_ddrphy_dfi_p3_rddata[10]),
	.Q3(soc_netsoc_ddrphy_dfi_p2_rddata[26]),
	.Q4(soc_netsoc_ddrphy_dfi_p2_rddata[10]),
	.Q5(soc_netsoc_ddrphy_dfi_p1_rddata[26]),
	.Q6(soc_netsoc_ddrphy_dfi_p1_rddata[10]),
	.Q7(soc_netsoc_ddrphy_dfi_p0_rddata[26]),
	.Q8(soc_netsoc_ddrphy_dfi_p0_rddata[10])
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
	.CE((soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_netsoc_ddrphy_dq_i_nodelay10),
	.INC(1'd1),
	.LD((soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_netsoc_ddrphy_dq_i_delayed10)
);

IOBUF IOBUF_10(
	.I(soc_netsoc_ddrphy_dq_o10),
	.T(soc_netsoc_ddrphy_dq_t10),
	.IO(ddram_dq[10]),
	.O(soc_netsoc_ddrphy_dq_i_nodelay10)
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
	.D1(soc_netsoc_ddrphy_dfi_p0_wrdata[11]),
	.D2(soc_netsoc_ddrphy_dfi_p0_wrdata[27]),
	.D3(soc_netsoc_ddrphy_dfi_p1_wrdata[11]),
	.D4(soc_netsoc_ddrphy_dfi_p1_wrdata[27]),
	.D5(soc_netsoc_ddrphy_dfi_p2_wrdata[11]),
	.D6(soc_netsoc_ddrphy_dfi_p2_wrdata[27]),
	.D7(soc_netsoc_ddrphy_dfi_p3_wrdata[11]),
	.D8(soc_netsoc_ddrphy_dfi_p3_wrdata[27]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_netsoc_ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_netsoc_ddrphy_dq_o11),
	.TQ(soc_netsoc_ddrphy_dq_t11)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_11 (
	.BITSLIP((soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_netsoc_ddrphy_dq_i_delayed11),
	.RST((sys_rst | (soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_rst_re))),
	.Q1(soc_netsoc_ddrphy_dfi_p3_rddata[27]),
	.Q2(soc_netsoc_ddrphy_dfi_p3_rddata[11]),
	.Q3(soc_netsoc_ddrphy_dfi_p2_rddata[27]),
	.Q4(soc_netsoc_ddrphy_dfi_p2_rddata[11]),
	.Q5(soc_netsoc_ddrphy_dfi_p1_rddata[27]),
	.Q6(soc_netsoc_ddrphy_dfi_p1_rddata[11]),
	.Q7(soc_netsoc_ddrphy_dfi_p0_rddata[27]),
	.Q8(soc_netsoc_ddrphy_dfi_p0_rddata[11])
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
	.CE((soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_netsoc_ddrphy_dq_i_nodelay11),
	.INC(1'd1),
	.LD((soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_netsoc_ddrphy_dq_i_delayed11)
);

IOBUF IOBUF_11(
	.I(soc_netsoc_ddrphy_dq_o11),
	.T(soc_netsoc_ddrphy_dq_t11),
	.IO(ddram_dq[11]),
	.O(soc_netsoc_ddrphy_dq_i_nodelay11)
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
	.D1(soc_netsoc_ddrphy_dfi_p0_wrdata[12]),
	.D2(soc_netsoc_ddrphy_dfi_p0_wrdata[28]),
	.D3(soc_netsoc_ddrphy_dfi_p1_wrdata[12]),
	.D4(soc_netsoc_ddrphy_dfi_p1_wrdata[28]),
	.D5(soc_netsoc_ddrphy_dfi_p2_wrdata[12]),
	.D6(soc_netsoc_ddrphy_dfi_p2_wrdata[28]),
	.D7(soc_netsoc_ddrphy_dfi_p3_wrdata[12]),
	.D8(soc_netsoc_ddrphy_dfi_p3_wrdata[28]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_netsoc_ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_netsoc_ddrphy_dq_o12),
	.TQ(soc_netsoc_ddrphy_dq_t12)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_12 (
	.BITSLIP((soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_netsoc_ddrphy_dq_i_delayed12),
	.RST((sys_rst | (soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_rst_re))),
	.Q1(soc_netsoc_ddrphy_dfi_p3_rddata[28]),
	.Q2(soc_netsoc_ddrphy_dfi_p3_rddata[12]),
	.Q3(soc_netsoc_ddrphy_dfi_p2_rddata[28]),
	.Q4(soc_netsoc_ddrphy_dfi_p2_rddata[12]),
	.Q5(soc_netsoc_ddrphy_dfi_p1_rddata[28]),
	.Q6(soc_netsoc_ddrphy_dfi_p1_rddata[12]),
	.Q7(soc_netsoc_ddrphy_dfi_p0_rddata[28]),
	.Q8(soc_netsoc_ddrphy_dfi_p0_rddata[12])
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
	.CE((soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_netsoc_ddrphy_dq_i_nodelay12),
	.INC(1'd1),
	.LD((soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_netsoc_ddrphy_dq_i_delayed12)
);

IOBUF IOBUF_12(
	.I(soc_netsoc_ddrphy_dq_o12),
	.T(soc_netsoc_ddrphy_dq_t12),
	.IO(ddram_dq[12]),
	.O(soc_netsoc_ddrphy_dq_i_nodelay12)
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
	.D1(soc_netsoc_ddrphy_dfi_p0_wrdata[13]),
	.D2(soc_netsoc_ddrphy_dfi_p0_wrdata[29]),
	.D3(soc_netsoc_ddrphy_dfi_p1_wrdata[13]),
	.D4(soc_netsoc_ddrphy_dfi_p1_wrdata[29]),
	.D5(soc_netsoc_ddrphy_dfi_p2_wrdata[13]),
	.D6(soc_netsoc_ddrphy_dfi_p2_wrdata[29]),
	.D7(soc_netsoc_ddrphy_dfi_p3_wrdata[13]),
	.D8(soc_netsoc_ddrphy_dfi_p3_wrdata[29]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_netsoc_ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_netsoc_ddrphy_dq_o13),
	.TQ(soc_netsoc_ddrphy_dq_t13)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_13 (
	.BITSLIP((soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_netsoc_ddrphy_dq_i_delayed13),
	.RST((sys_rst | (soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_rst_re))),
	.Q1(soc_netsoc_ddrphy_dfi_p3_rddata[29]),
	.Q2(soc_netsoc_ddrphy_dfi_p3_rddata[13]),
	.Q3(soc_netsoc_ddrphy_dfi_p2_rddata[29]),
	.Q4(soc_netsoc_ddrphy_dfi_p2_rddata[13]),
	.Q5(soc_netsoc_ddrphy_dfi_p1_rddata[29]),
	.Q6(soc_netsoc_ddrphy_dfi_p1_rddata[13]),
	.Q7(soc_netsoc_ddrphy_dfi_p0_rddata[29]),
	.Q8(soc_netsoc_ddrphy_dfi_p0_rddata[13])
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
	.CE((soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_netsoc_ddrphy_dq_i_nodelay13),
	.INC(1'd1),
	.LD((soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_netsoc_ddrphy_dq_i_delayed13)
);

IOBUF IOBUF_13(
	.I(soc_netsoc_ddrphy_dq_o13),
	.T(soc_netsoc_ddrphy_dq_t13),
	.IO(ddram_dq[13]),
	.O(soc_netsoc_ddrphy_dq_i_nodelay13)
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
	.D1(soc_netsoc_ddrphy_dfi_p0_wrdata[14]),
	.D2(soc_netsoc_ddrphy_dfi_p0_wrdata[30]),
	.D3(soc_netsoc_ddrphy_dfi_p1_wrdata[14]),
	.D4(soc_netsoc_ddrphy_dfi_p1_wrdata[30]),
	.D5(soc_netsoc_ddrphy_dfi_p2_wrdata[14]),
	.D6(soc_netsoc_ddrphy_dfi_p2_wrdata[30]),
	.D7(soc_netsoc_ddrphy_dfi_p3_wrdata[14]),
	.D8(soc_netsoc_ddrphy_dfi_p3_wrdata[30]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_netsoc_ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_netsoc_ddrphy_dq_o14),
	.TQ(soc_netsoc_ddrphy_dq_t14)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_14 (
	.BITSLIP((soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_netsoc_ddrphy_dq_i_delayed14),
	.RST((sys_rst | (soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_rst_re))),
	.Q1(soc_netsoc_ddrphy_dfi_p3_rddata[30]),
	.Q2(soc_netsoc_ddrphy_dfi_p3_rddata[14]),
	.Q3(soc_netsoc_ddrphy_dfi_p2_rddata[30]),
	.Q4(soc_netsoc_ddrphy_dfi_p2_rddata[14]),
	.Q5(soc_netsoc_ddrphy_dfi_p1_rddata[30]),
	.Q6(soc_netsoc_ddrphy_dfi_p1_rddata[14]),
	.Q7(soc_netsoc_ddrphy_dfi_p0_rddata[30]),
	.Q8(soc_netsoc_ddrphy_dfi_p0_rddata[14])
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
	.CE((soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_netsoc_ddrphy_dq_i_nodelay14),
	.INC(1'd1),
	.LD((soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_netsoc_ddrphy_dq_i_delayed14)
);

IOBUF IOBUF_14(
	.I(soc_netsoc_ddrphy_dq_o14),
	.T(soc_netsoc_ddrphy_dq_t14),
	.IO(ddram_dq[14]),
	.O(soc_netsoc_ddrphy_dq_i_nodelay14)
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
	.D1(soc_netsoc_ddrphy_dfi_p0_wrdata[15]),
	.D2(soc_netsoc_ddrphy_dfi_p0_wrdata[31]),
	.D3(soc_netsoc_ddrphy_dfi_p1_wrdata[15]),
	.D4(soc_netsoc_ddrphy_dfi_p1_wrdata[31]),
	.D5(soc_netsoc_ddrphy_dfi_p2_wrdata[15]),
	.D6(soc_netsoc_ddrphy_dfi_p2_wrdata[31]),
	.D7(soc_netsoc_ddrphy_dfi_p3_wrdata[15]),
	.D8(soc_netsoc_ddrphy_dfi_p3_wrdata[31]),
	.OCE(1'd1),
	.RST(sys_rst),
	.T1((~soc_netsoc_ddrphy_oe_dq)),
	.TCE(1'd1),
	.OQ(soc_netsoc_ddrphy_dq_o15),
	.TQ(soc_netsoc_ddrphy_dq_t15)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_15 (
	.BITSLIP((soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_bitslip_re)),
	.CE1(1'd1),
	.CLK(sys4x_clk),
	.CLKB((~sys4x_clk)),
	.CLKDIV(sys_clk),
	.DDLY(soc_netsoc_ddrphy_dq_i_delayed15),
	.RST((sys_rst | (soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_rst_re))),
	.Q1(soc_netsoc_ddrphy_dfi_p3_rddata[31]),
	.Q2(soc_netsoc_ddrphy_dfi_p3_rddata[15]),
	.Q3(soc_netsoc_ddrphy_dfi_p2_rddata[31]),
	.Q4(soc_netsoc_ddrphy_dfi_p2_rddata[15]),
	.Q5(soc_netsoc_ddrphy_dfi_p1_rddata[31]),
	.Q6(soc_netsoc_ddrphy_dfi_p1_rddata[15]),
	.Q7(soc_netsoc_ddrphy_dfi_p0_rddata[31]),
	.Q8(soc_netsoc_ddrphy_dfi_p0_rddata[15])
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
	.CE((soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_inc_re)),
	.IDATAIN(soc_netsoc_ddrphy_dq_i_nodelay15),
	.INC(1'd1),
	.LD((soc_netsoc_ddrphy_storage[1] & soc_netsoc_ddrphy_rdly_dq_rst_re)),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_netsoc_ddrphy_dq_i_delayed15)
);

IOBUF IOBUF_15(
	.I(soc_netsoc_ddrphy_dq_o15),
	.T(soc_netsoc_ddrphy_dq_t15),
	.IO(ddram_dq[15]),
	.O(soc_netsoc_ddrphy_dq_i_nodelay15)
);

reg [24:0] storage_2[0:7];
reg [24:0] memdat_2;
always @(posedge sys_clk) begin
	if (soc_netsoc_sdram_bankmachine0_wrport_we)
		storage_2[soc_netsoc_sdram_bankmachine0_wrport_adr] <= soc_netsoc_sdram_bankmachine0_wrport_dat_w;
	memdat_2 <= storage_2[soc_netsoc_sdram_bankmachine0_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_netsoc_sdram_bankmachine0_wrport_dat_r = memdat_2;
assign soc_netsoc_sdram_bankmachine0_rdport_dat_r = storage_2[soc_netsoc_sdram_bankmachine0_rdport_adr];

reg [24:0] storage_3[0:7];
reg [24:0] memdat_3;
always @(posedge sys_clk) begin
	if (soc_netsoc_sdram_bankmachine1_wrport_we)
		storage_3[soc_netsoc_sdram_bankmachine1_wrport_adr] <= soc_netsoc_sdram_bankmachine1_wrport_dat_w;
	memdat_3 <= storage_3[soc_netsoc_sdram_bankmachine1_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_netsoc_sdram_bankmachine1_wrport_dat_r = memdat_3;
assign soc_netsoc_sdram_bankmachine1_rdport_dat_r = storage_3[soc_netsoc_sdram_bankmachine1_rdport_adr];

reg [24:0] storage_4[0:7];
reg [24:0] memdat_4;
always @(posedge sys_clk) begin
	if (soc_netsoc_sdram_bankmachine2_wrport_we)
		storage_4[soc_netsoc_sdram_bankmachine2_wrport_adr] <= soc_netsoc_sdram_bankmachine2_wrport_dat_w;
	memdat_4 <= storage_4[soc_netsoc_sdram_bankmachine2_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_netsoc_sdram_bankmachine2_wrport_dat_r = memdat_4;
assign soc_netsoc_sdram_bankmachine2_rdport_dat_r = storage_4[soc_netsoc_sdram_bankmachine2_rdport_adr];

reg [24:0] storage_5[0:7];
reg [24:0] memdat_5;
always @(posedge sys_clk) begin
	if (soc_netsoc_sdram_bankmachine3_wrport_we)
		storage_5[soc_netsoc_sdram_bankmachine3_wrport_adr] <= soc_netsoc_sdram_bankmachine3_wrport_dat_w;
	memdat_5 <= storage_5[soc_netsoc_sdram_bankmachine3_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_netsoc_sdram_bankmachine3_wrport_dat_r = memdat_5;
assign soc_netsoc_sdram_bankmachine3_rdport_dat_r = storage_5[soc_netsoc_sdram_bankmachine3_rdport_adr];

reg [24:0] storage_6[0:7];
reg [24:0] memdat_6;
always @(posedge sys_clk) begin
	if (soc_netsoc_sdram_bankmachine4_wrport_we)
		storage_6[soc_netsoc_sdram_bankmachine4_wrport_adr] <= soc_netsoc_sdram_bankmachine4_wrport_dat_w;
	memdat_6 <= storage_6[soc_netsoc_sdram_bankmachine4_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_netsoc_sdram_bankmachine4_wrport_dat_r = memdat_6;
assign soc_netsoc_sdram_bankmachine4_rdport_dat_r = storage_6[soc_netsoc_sdram_bankmachine4_rdport_adr];

reg [24:0] storage_7[0:7];
reg [24:0] memdat_7;
always @(posedge sys_clk) begin
	if (soc_netsoc_sdram_bankmachine5_wrport_we)
		storage_7[soc_netsoc_sdram_bankmachine5_wrport_adr] <= soc_netsoc_sdram_bankmachine5_wrport_dat_w;
	memdat_7 <= storage_7[soc_netsoc_sdram_bankmachine5_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_netsoc_sdram_bankmachine5_wrport_dat_r = memdat_7;
assign soc_netsoc_sdram_bankmachine5_rdport_dat_r = storage_7[soc_netsoc_sdram_bankmachine5_rdport_adr];

reg [24:0] storage_8[0:7];
reg [24:0] memdat_8;
always @(posedge sys_clk) begin
	if (soc_netsoc_sdram_bankmachine6_wrport_we)
		storage_8[soc_netsoc_sdram_bankmachine6_wrport_adr] <= soc_netsoc_sdram_bankmachine6_wrport_dat_w;
	memdat_8 <= storage_8[soc_netsoc_sdram_bankmachine6_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_netsoc_sdram_bankmachine6_wrport_dat_r = memdat_8;
assign soc_netsoc_sdram_bankmachine6_rdport_dat_r = storage_8[soc_netsoc_sdram_bankmachine6_rdport_adr];

reg [24:0] storage_9[0:7];
reg [24:0] memdat_9;
always @(posedge sys_clk) begin
	if (soc_netsoc_sdram_bankmachine7_wrport_we)
		storage_9[soc_netsoc_sdram_bankmachine7_wrport_adr] <= soc_netsoc_sdram_bankmachine7_wrport_dat_w;
	memdat_9 <= storage_9[soc_netsoc_sdram_bankmachine7_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_netsoc_sdram_bankmachine7_wrport_dat_r = memdat_9;
assign soc_netsoc_sdram_bankmachine7_rdport_dat_r = storage_9[soc_netsoc_sdram_bankmachine7_rdport_adr];

reg [23:0] tag_mem[0:511];
reg [8:0] memadr_3;
always @(posedge sys_clk) begin
	if (soc_netsoc_tag_port_we)
		tag_mem[soc_netsoc_tag_port_adr] <= soc_netsoc_tag_port_dat_w;
	memadr_3 <= soc_netsoc_tag_port_adr;
end

assign soc_netsoc_tag_port_dat_r = tag_mem[memadr_3];

STARTUPE2 STARTUPE2(
	.CLK(1'd0),
	.GSR(1'd0),
	.GTS(1'd0),
	.KEYCLEARB(1'd0),
	.PACK(1'd0),
	.USRCCLKO(soc_netsoc_clk0),
	.USRCCLKTS(1'd0),
	.USRDONEO(1'd1),
	.USRDONETS(1'd1)
);

IBUF IBUF(
	.I(eth_clocks_rx),
	.O(soc_ethphy_eth_rx_clk_ibuf)
);

BUFG BUFG_5(
	.I(soc_ethphy_eth_rx_clk_ibuf),
	.O(eth_rx_clk)
);

PLLE2_BASE #(
	.CLKFBOUT_MULT(4'd8),
	.CLKIN1_PERIOD(8.0),
	.CLKOUT0_DIVIDE(4'd8),
	.CLKOUT0_PHASE(0.0),
	.CLKOUT1_DIVIDE(4'd8),
	.CLKOUT1_PHASE(90.0),
	.DIVCLK_DIVIDE(1'd1),
	.REF_JITTER1(0.01),
	.STARTUP_WAIT("FALSE")
) PLLE2_BASE_1 (
	.CLKFBIN(soc_ethphy_pll_fb),
	.CLKIN1(eth_rx_clk),
	.CLKFBOUT(soc_ethphy_pll_fb),
	.CLKOUT0(soc_ethphy_pll_clk_tx),
	.CLKOUT1(soc_ethphy_pll_clk_tx90),
	.LOCKED(soc_ethphy_pll_locked)
);

BUFG BUFG_6(
	.I(soc_ethphy_pll_clk_tx),
	.O(eth_tx_clk)
);

BUFG BUFG_7(
	.I(soc_ethphy_pll_clk_tx90),
	.O(eth_tx90_clk)
);

ODDR #(
	.DDR_CLK_EDGE("SAME_EDGE")
) ODDR (
	.C(eth_tx90_clk),
	.CE(1'd1),
	.D1(1'd1),
	.D2(1'd0),
	.R(1'd0),
	.S(1'd0),
	.Q(soc_ethphy_eth_tx_clk_obuf)
);

OBUF OBUF(
	.I(soc_ethphy_eth_tx_clk_obuf),
	.O(eth_clocks_tx)
);

ODDR #(
	.DDR_CLK_EDGE("SAME_EDGE")
) ODDR_1 (
	.C(eth_tx_clk),
	.CE(1'd1),
	.D1(soc_ethphy_sink_valid),
	.D2(soc_ethphy_sink_valid),
	.R(1'd0),
	.S(1'd0),
	.Q(soc_ethphy_tx_ctl_obuf)
);

OBUF OBUF_1(
	.I(soc_ethphy_tx_ctl_obuf),
	.O(eth_tx_ctl)
);

ODDR #(
	.DDR_CLK_EDGE("SAME_EDGE")
) ODDR_2 (
	.C(eth_tx_clk),
	.CE(1'd1),
	.D1(soc_ethphy_sink_payload_data[0]),
	.D2(soc_ethphy_sink_payload_data[4]),
	.R(1'd0),
	.S(1'd0),
	.Q(soc_ethphy_tx_data_obuf[0])
);

OBUF OBUF_2(
	.I(soc_ethphy_tx_data_obuf[0]),
	.O(eth_tx_data[0])
);

ODDR #(
	.DDR_CLK_EDGE("SAME_EDGE")
) ODDR_3 (
	.C(eth_tx_clk),
	.CE(1'd1),
	.D1(soc_ethphy_sink_payload_data[1]),
	.D2(soc_ethphy_sink_payload_data[5]),
	.R(1'd0),
	.S(1'd0),
	.Q(soc_ethphy_tx_data_obuf[1])
);

OBUF OBUF_3(
	.I(soc_ethphy_tx_data_obuf[1]),
	.O(eth_tx_data[1])
);

ODDR #(
	.DDR_CLK_EDGE("SAME_EDGE")
) ODDR_4 (
	.C(eth_tx_clk),
	.CE(1'd1),
	.D1(soc_ethphy_sink_payload_data[2]),
	.D2(soc_ethphy_sink_payload_data[6]),
	.R(1'd0),
	.S(1'd0),
	.Q(soc_ethphy_tx_data_obuf[2])
);

OBUF OBUF_4(
	.I(soc_ethphy_tx_data_obuf[2]),
	.O(eth_tx_data[2])
);

ODDR #(
	.DDR_CLK_EDGE("SAME_EDGE")
) ODDR_5 (
	.C(eth_tx_clk),
	.CE(1'd1),
	.D1(soc_ethphy_sink_payload_data[3]),
	.D2(soc_ethphy_sink_payload_data[7]),
	.R(1'd0),
	.S(1'd0),
	.Q(soc_ethphy_tx_data_obuf[3])
);

OBUF OBUF_5(
	.I(soc_ethphy_tx_data_obuf[3]),
	.O(eth_tx_data[3])
);

IBUF IBUF_1(
	.I(eth_rx_ctl),
	.O(soc_ethphy_rx_ctl_ibuf)
);

IDELAYE2 #(
	.IDELAY_TYPE("FIXED")
) IDELAYE2_16 (
	.C(1'd0),
	.CE(1'd0),
	.IDATAIN(soc_ethphy_rx_ctl_ibuf),
	.INC(1'd0),
	.LD(1'd0),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_ethphy_rx_ctl_idelay)
);

IDDR #(
	.DDR_CLK_EDGE("SAME_EDGE_PIPELINED")
) IDDR (
	.C(eth_rx_clk),
	.CE(1'd1),
	.D(soc_ethphy_rx_ctl_idelay),
	.R(1'd0),
	.S(1'd0),
	.Q1(soc_ethphy_rx_ctl)
);

IBUF IBUF_2(
	.I(eth_rx_data[0]),
	.O(soc_ethphy_rx_data_ibuf[0])
);

IDELAYE2 #(
	.IDELAY_TYPE("FIXED")
) IDELAYE2_17 (
	.C(1'd0),
	.CE(1'd0),
	.IDATAIN(soc_ethphy_rx_data_ibuf[0]),
	.INC(1'd0),
	.LD(1'd0),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_ethphy_rx_data_idelay[0])
);

IDDR #(
	.DDR_CLK_EDGE("SAME_EDGE_PIPELINED")
) IDDR_1 (
	.C(eth_rx_clk),
	.CE(1'd1),
	.D(soc_ethphy_rx_data_idelay[0]),
	.R(1'd0),
	.S(1'd0),
	.Q1(soc_ethphy_rx_data[0]),
	.Q2(soc_ethphy_rx_data[4])
);

IBUF IBUF_3(
	.I(eth_rx_data[1]),
	.O(soc_ethphy_rx_data_ibuf[1])
);

IDELAYE2 #(
	.IDELAY_TYPE("FIXED")
) IDELAYE2_18 (
	.C(1'd0),
	.CE(1'd0),
	.IDATAIN(soc_ethphy_rx_data_ibuf[1]),
	.INC(1'd0),
	.LD(1'd0),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_ethphy_rx_data_idelay[1])
);

IDDR #(
	.DDR_CLK_EDGE("SAME_EDGE_PIPELINED")
) IDDR_2 (
	.C(eth_rx_clk),
	.CE(1'd1),
	.D(soc_ethphy_rx_data_idelay[1]),
	.R(1'd0),
	.S(1'd0),
	.Q1(soc_ethphy_rx_data[1]),
	.Q2(soc_ethphy_rx_data[5])
);

IBUF IBUF_4(
	.I(eth_rx_data[2]),
	.O(soc_ethphy_rx_data_ibuf[2])
);

IDELAYE2 #(
	.IDELAY_TYPE("FIXED")
) IDELAYE2_19 (
	.C(1'd0),
	.CE(1'd0),
	.IDATAIN(soc_ethphy_rx_data_ibuf[2]),
	.INC(1'd0),
	.LD(1'd0),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_ethphy_rx_data_idelay[2])
);

IDDR #(
	.DDR_CLK_EDGE("SAME_EDGE_PIPELINED")
) IDDR_3 (
	.C(eth_rx_clk),
	.CE(1'd1),
	.D(soc_ethphy_rx_data_idelay[2]),
	.R(1'd0),
	.S(1'd0),
	.Q1(soc_ethphy_rx_data[2]),
	.Q2(soc_ethphy_rx_data[6])
);

IBUF IBUF_5(
	.I(eth_rx_data[3]),
	.O(soc_ethphy_rx_data_ibuf[3])
);

IDELAYE2 #(
	.IDELAY_TYPE("FIXED")
) IDELAYE2_20 (
	.C(1'd0),
	.CE(1'd0),
	.IDATAIN(soc_ethphy_rx_data_ibuf[3]),
	.INC(1'd0),
	.LD(1'd0),
	.LDPIPEEN(1'd0),
	.DATAOUT(soc_ethphy_rx_data_idelay[3])
);

IDDR #(
	.DDR_CLK_EDGE("SAME_EDGE_PIPELINED")
) IDDR_4 (
	.C(eth_rx_clk),
	.CE(1'd1),
	.D(soc_ethphy_rx_data_idelay[3]),
	.R(1'd0),
	.S(1'd0),
	.Q1(soc_ethphy_rx_data[3]),
	.Q2(soc_ethphy_rx_data[7])
);

assign eth_mdio = soc_ethphy_data_oe ? soc_ethphy_data_w : 1'bz;
assign soc_ethphy_data_r = eth_mdio;

reg [11:0] storage_10[0:4];
reg [11:0] memdat_10;
always @(posedge eth_rx_clk) begin
	if (soc_ethmac_crc32_checker_syncfifo_wrport_we)
		storage_10[soc_ethmac_crc32_checker_syncfifo_wrport_adr] <= soc_ethmac_crc32_checker_syncfifo_wrport_dat_w;
	memdat_10 <= storage_10[soc_ethmac_crc32_checker_syncfifo_wrport_adr];
end

always @(posedge eth_rx_clk) begin
end

assign soc_ethmac_crc32_checker_syncfifo_wrport_dat_r = memdat_10;
assign soc_ethmac_crc32_checker_syncfifo_rdport_dat_r = storage_10[soc_ethmac_crc32_checker_syncfifo_rdport_adr];

reg [41:0] storage_11[0:63];
reg [5:0] memadr_4;
reg [5:0] memadr_5;
always @(posedge sys_clk) begin
	if (soc_ethmac_tx_cdc_wrport_we)
		storage_11[soc_ethmac_tx_cdc_wrport_adr] <= soc_ethmac_tx_cdc_wrport_dat_w;
	memadr_4 <= soc_ethmac_tx_cdc_wrport_adr;
end

always @(posedge eth_tx_clk) begin
	memadr_5 <= soc_ethmac_tx_cdc_rdport_adr;
end

assign soc_ethmac_tx_cdc_wrport_dat_r = storage_11[memadr_4];
assign soc_ethmac_tx_cdc_rdport_dat_r = storage_11[memadr_5];

reg [41:0] storage_12[0:63];
reg [5:0] memadr_6;
reg [5:0] memadr_7;
always @(posedge eth_rx_clk) begin
	if (soc_ethmac_rx_cdc_wrport_we)
		storage_12[soc_ethmac_rx_cdc_wrport_adr] <= soc_ethmac_rx_cdc_wrport_dat_w;
	memadr_6 <= soc_ethmac_rx_cdc_wrport_adr;
end

always @(posedge sys_clk) begin
	memadr_7 <= soc_ethmac_rx_cdc_rdport_adr;
end

assign soc_ethmac_rx_cdc_wrport_dat_r = storage_12[memadr_6];
assign soc_ethmac_rx_cdc_rdport_dat_r = storage_12[memadr_7];

reg [34:0] storage_13[0:1];
reg [34:0] memdat_11;
always @(posedge sys_clk) begin
	if (soc_ethmac_writer_fifo_wrport_we)
		storage_13[soc_ethmac_writer_fifo_wrport_adr] <= soc_ethmac_writer_fifo_wrport_dat_w;
	memdat_11 <= storage_13[soc_ethmac_writer_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_ethmac_writer_fifo_wrport_dat_r = memdat_11;
assign soc_ethmac_writer_fifo_rdport_dat_r = storage_13[soc_ethmac_writer_fifo_rdport_adr];

reg [31:0] mem_3[0:381];
reg [8:0] memadr_8;
reg [8:0] memadr_9;
always @(posedge sys_clk) begin
	if (soc_ethmac_writer_memory0_we)
		mem_3[soc_ethmac_writer_memory0_adr] <= soc_ethmac_writer_memory0_dat_w;
	memadr_8 <= soc_ethmac_writer_memory0_adr;
end

always @(posedge sys_clk) begin
	memadr_9 <= soc_ethmac_sram0_adr0;
end

assign soc_ethmac_writer_memory0_dat_r = mem_3[memadr_8];
assign soc_ethmac_sram0_dat_r0 = mem_3[memadr_9];

reg [31:0] mem_4[0:381];
reg [8:0] memadr_10;
reg [8:0] memadr_11;
always @(posedge sys_clk) begin
	if (soc_ethmac_writer_memory1_we)
		mem_4[soc_ethmac_writer_memory1_adr] <= soc_ethmac_writer_memory1_dat_w;
	memadr_10 <= soc_ethmac_writer_memory1_adr;
end

always @(posedge sys_clk) begin
	memadr_11 <= soc_ethmac_sram1_adr0;
end

assign soc_ethmac_writer_memory1_dat_r = mem_4[memadr_10];
assign soc_ethmac_sram1_dat_r0 = mem_4[memadr_11];

reg [13:0] storage_14[0:1];
reg [13:0] memdat_12;
always @(posedge sys_clk) begin
	if (soc_ethmac_reader_fifo_wrport_we)
		storage_14[soc_ethmac_reader_fifo_wrport_adr] <= soc_ethmac_reader_fifo_wrport_dat_w;
	memdat_12 <= storage_14[soc_ethmac_reader_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_ethmac_reader_fifo_wrport_dat_r = memdat_12;
assign soc_ethmac_reader_fifo_rdport_dat_r = storage_14[soc_ethmac_reader_fifo_rdport_adr];

reg [7:0] data_mem_grain0[0:511];
reg [8:0] memadr_12;
always @(posedge sys_clk) begin
	if (soc_netsoc_data_port_we[0])
		data_mem_grain0[soc_netsoc_data_port_adr] <= soc_netsoc_data_port_dat_w[7:0];
	memadr_12 <= soc_netsoc_data_port_adr;
end

assign soc_netsoc_data_port_dat_r[7:0] = data_mem_grain0[memadr_12];

reg [7:0] data_mem_grain1[0:511];
reg [8:0] memadr_13;
always @(posedge sys_clk) begin
	if (soc_netsoc_data_port_we[1])
		data_mem_grain1[soc_netsoc_data_port_adr] <= soc_netsoc_data_port_dat_w[15:8];
	memadr_13 <= soc_netsoc_data_port_adr;
end

assign soc_netsoc_data_port_dat_r[15:8] = data_mem_grain1[memadr_13];

reg [7:0] data_mem_grain2[0:511];
reg [8:0] memadr_14;
always @(posedge sys_clk) begin
	if (soc_netsoc_data_port_we[2])
		data_mem_grain2[soc_netsoc_data_port_adr] <= soc_netsoc_data_port_dat_w[23:16];
	memadr_14 <= soc_netsoc_data_port_adr;
end

assign soc_netsoc_data_port_dat_r[23:16] = data_mem_grain2[memadr_14];

reg [7:0] data_mem_grain3[0:511];
reg [8:0] memadr_15;
always @(posedge sys_clk) begin
	if (soc_netsoc_data_port_we[3])
		data_mem_grain3[soc_netsoc_data_port_adr] <= soc_netsoc_data_port_dat_w[31:24];
	memadr_15 <= soc_netsoc_data_port_adr;
end

assign soc_netsoc_data_port_dat_r[31:24] = data_mem_grain3[memadr_15];

reg [7:0] data_mem_grain4[0:511];
reg [8:0] memadr_16;
always @(posedge sys_clk) begin
	if (soc_netsoc_data_port_we[4])
		data_mem_grain4[soc_netsoc_data_port_adr] <= soc_netsoc_data_port_dat_w[39:32];
	memadr_16 <= soc_netsoc_data_port_adr;
end

assign soc_netsoc_data_port_dat_r[39:32] = data_mem_grain4[memadr_16];

reg [7:0] data_mem_grain5[0:511];
reg [8:0] memadr_17;
always @(posedge sys_clk) begin
	if (soc_netsoc_data_port_we[5])
		data_mem_grain5[soc_netsoc_data_port_adr] <= soc_netsoc_data_port_dat_w[47:40];
	memadr_17 <= soc_netsoc_data_port_adr;
end

assign soc_netsoc_data_port_dat_r[47:40] = data_mem_grain5[memadr_17];

reg [7:0] data_mem_grain6[0:511];
reg [8:0] memadr_18;
always @(posedge sys_clk) begin
	if (soc_netsoc_data_port_we[6])
		data_mem_grain6[soc_netsoc_data_port_adr] <= soc_netsoc_data_port_dat_w[55:48];
	memadr_18 <= soc_netsoc_data_port_adr;
end

assign soc_netsoc_data_port_dat_r[55:48] = data_mem_grain6[memadr_18];

reg [7:0] data_mem_grain7[0:511];
reg [8:0] memadr_19;
always @(posedge sys_clk) begin
	if (soc_netsoc_data_port_we[7])
		data_mem_grain7[soc_netsoc_data_port_adr] <= soc_netsoc_data_port_dat_w[63:56];
	memadr_19 <= soc_netsoc_data_port_adr;
end

assign soc_netsoc_data_port_dat_r[63:56] = data_mem_grain7[memadr_19];

reg [7:0] data_mem_grain8[0:511];
reg [8:0] memadr_20;
always @(posedge sys_clk) begin
	if (soc_netsoc_data_port_we[8])
		data_mem_grain8[soc_netsoc_data_port_adr] <= soc_netsoc_data_port_dat_w[71:64];
	memadr_20 <= soc_netsoc_data_port_adr;
end

assign soc_netsoc_data_port_dat_r[71:64] = data_mem_grain8[memadr_20];

reg [7:0] data_mem_grain9[0:511];
reg [8:0] memadr_21;
always @(posedge sys_clk) begin
	if (soc_netsoc_data_port_we[9])
		data_mem_grain9[soc_netsoc_data_port_adr] <= soc_netsoc_data_port_dat_w[79:72];
	memadr_21 <= soc_netsoc_data_port_adr;
end

assign soc_netsoc_data_port_dat_r[79:72] = data_mem_grain9[memadr_21];

reg [7:0] data_mem_grain10[0:511];
reg [8:0] memadr_22;
always @(posedge sys_clk) begin
	if (soc_netsoc_data_port_we[10])
		data_mem_grain10[soc_netsoc_data_port_adr] <= soc_netsoc_data_port_dat_w[87:80];
	memadr_22 <= soc_netsoc_data_port_adr;
end

assign soc_netsoc_data_port_dat_r[87:80] = data_mem_grain10[memadr_22];

reg [7:0] data_mem_grain11[0:511];
reg [8:0] memadr_23;
always @(posedge sys_clk) begin
	if (soc_netsoc_data_port_we[11])
		data_mem_grain11[soc_netsoc_data_port_adr] <= soc_netsoc_data_port_dat_w[95:88];
	memadr_23 <= soc_netsoc_data_port_adr;
end

assign soc_netsoc_data_port_dat_r[95:88] = data_mem_grain11[memadr_23];

reg [7:0] data_mem_grain12[0:511];
reg [8:0] memadr_24;
always @(posedge sys_clk) begin
	if (soc_netsoc_data_port_we[12])
		data_mem_grain12[soc_netsoc_data_port_adr] <= soc_netsoc_data_port_dat_w[103:96];
	memadr_24 <= soc_netsoc_data_port_adr;
end

assign soc_netsoc_data_port_dat_r[103:96] = data_mem_grain12[memadr_24];

reg [7:0] data_mem_grain13[0:511];
reg [8:0] memadr_25;
always @(posedge sys_clk) begin
	if (soc_netsoc_data_port_we[13])
		data_mem_grain13[soc_netsoc_data_port_adr] <= soc_netsoc_data_port_dat_w[111:104];
	memadr_25 <= soc_netsoc_data_port_adr;
end

assign soc_netsoc_data_port_dat_r[111:104] = data_mem_grain13[memadr_25];

reg [7:0] data_mem_grain14[0:511];
reg [8:0] memadr_26;
always @(posedge sys_clk) begin
	if (soc_netsoc_data_port_we[14])
		data_mem_grain14[soc_netsoc_data_port_adr] <= soc_netsoc_data_port_dat_w[119:112];
	memadr_26 <= soc_netsoc_data_port_adr;
end

assign soc_netsoc_data_port_dat_r[119:112] = data_mem_grain14[memadr_26];

reg [7:0] data_mem_grain15[0:511];
reg [8:0] memadr_27;
always @(posedge sys_clk) begin
	if (soc_netsoc_data_port_we[15])
		data_mem_grain15[soc_netsoc_data_port_adr] <= soc_netsoc_data_port_dat_w[127:120];
	memadr_27 <= soc_netsoc_data_port_adr;
end

assign soc_netsoc_data_port_dat_r[127:120] = data_mem_grain15[memadr_27];

reg [7:0] mem_grain0[0:381];
reg [8:0] memadr_28;
reg [8:0] memadr_29;
always @(posedge sys_clk) begin
	memadr_28 <= soc_ethmac_reader_memory0_adr;
end

always @(posedge sys_clk) begin
	if (soc_ethmac_sram0_we[0])
		mem_grain0[soc_ethmac_sram0_adr1] <= soc_ethmac_sram0_dat_w[7:0];
	memadr_29 <= soc_ethmac_sram0_adr1;
end

assign soc_ethmac_reader_memory0_dat_r[7:0] = mem_grain0[memadr_28];
assign soc_ethmac_sram0_dat_r1[7:0] = mem_grain0[memadr_29];

reg [7:0] mem_grain1[0:381];
reg [8:0] memadr_30;
reg [8:0] memadr_31;
always @(posedge sys_clk) begin
	memadr_30 <= soc_ethmac_reader_memory0_adr;
end

always @(posedge sys_clk) begin
	if (soc_ethmac_sram0_we[1])
		mem_grain1[soc_ethmac_sram0_adr1] <= soc_ethmac_sram0_dat_w[15:8];
	memadr_31 <= soc_ethmac_sram0_adr1;
end

assign soc_ethmac_reader_memory0_dat_r[15:8] = mem_grain1[memadr_30];
assign soc_ethmac_sram0_dat_r1[15:8] = mem_grain1[memadr_31];

reg [7:0] mem_grain2[0:381];
reg [8:0] memadr_32;
reg [8:0] memadr_33;
always @(posedge sys_clk) begin
	memadr_32 <= soc_ethmac_reader_memory0_adr;
end

always @(posedge sys_clk) begin
	if (soc_ethmac_sram0_we[2])
		mem_grain2[soc_ethmac_sram0_adr1] <= soc_ethmac_sram0_dat_w[23:16];
	memadr_33 <= soc_ethmac_sram0_adr1;
end

assign soc_ethmac_reader_memory0_dat_r[23:16] = mem_grain2[memadr_32];
assign soc_ethmac_sram0_dat_r1[23:16] = mem_grain2[memadr_33];

reg [7:0] mem_grain3[0:381];
reg [8:0] memadr_34;
reg [8:0] memadr_35;
always @(posedge sys_clk) begin
	memadr_34 <= soc_ethmac_reader_memory0_adr;
end

always @(posedge sys_clk) begin
	if (soc_ethmac_sram0_we[3])
		mem_grain3[soc_ethmac_sram0_adr1] <= soc_ethmac_sram0_dat_w[31:24];
	memadr_35 <= soc_ethmac_sram0_adr1;
end

assign soc_ethmac_reader_memory0_dat_r[31:24] = mem_grain3[memadr_34];
assign soc_ethmac_sram0_dat_r1[31:24] = mem_grain3[memadr_35];

reg [7:0] mem_grain0_1[0:381];
reg [8:0] memadr_36;
reg [8:0] memadr_37;
always @(posedge sys_clk) begin
	memadr_36 <= soc_ethmac_reader_memory1_adr;
end

always @(posedge sys_clk) begin
	if (soc_ethmac_sram1_we[0])
		mem_grain0_1[soc_ethmac_sram1_adr1] <= soc_ethmac_sram1_dat_w[7:0];
	memadr_37 <= soc_ethmac_sram1_adr1;
end

assign soc_ethmac_reader_memory1_dat_r[7:0] = mem_grain0_1[memadr_36];
assign soc_ethmac_sram1_dat_r1[7:0] = mem_grain0_1[memadr_37];

reg [7:0] mem_grain1_1[0:381];
reg [8:0] memadr_38;
reg [8:0] memadr_39;
always @(posedge sys_clk) begin
	memadr_38 <= soc_ethmac_reader_memory1_adr;
end

always @(posedge sys_clk) begin
	if (soc_ethmac_sram1_we[1])
		mem_grain1_1[soc_ethmac_sram1_adr1] <= soc_ethmac_sram1_dat_w[15:8];
	memadr_39 <= soc_ethmac_sram1_adr1;
end

assign soc_ethmac_reader_memory1_dat_r[15:8] = mem_grain1_1[memadr_38];
assign soc_ethmac_sram1_dat_r1[15:8] = mem_grain1_1[memadr_39];

reg [7:0] mem_grain2_1[0:381];
reg [8:0] memadr_40;
reg [8:0] memadr_41;
always @(posedge sys_clk) begin
	memadr_40 <= soc_ethmac_reader_memory1_adr;
end

always @(posedge sys_clk) begin
	if (soc_ethmac_sram1_we[2])
		mem_grain2_1[soc_ethmac_sram1_adr1] <= soc_ethmac_sram1_dat_w[23:16];
	memadr_41 <= soc_ethmac_sram1_adr1;
end

assign soc_ethmac_reader_memory1_dat_r[23:16] = mem_grain2_1[memadr_40];
assign soc_ethmac_sram1_dat_r1[23:16] = mem_grain2_1[memadr_41];

reg [7:0] mem_grain3_1[0:381];
reg [8:0] memadr_42;
reg [8:0] memadr_43;
always @(posedge sys_clk) begin
	memadr_42 <= soc_ethmac_reader_memory1_adr;
end

always @(posedge sys_clk) begin
	if (soc_ethmac_sram1_we[3])
		mem_grain3_1[soc_ethmac_sram1_adr1] <= soc_ethmac_sram1_dat_w[31:24];
	memadr_43 <= soc_ethmac_sram1_adr1;
end

assign soc_ethmac_reader_memory1_dat_r[31:24] = mem_grain3_1[memadr_42];
assign soc_ethmac_sram1_dat_r1[31:24] = mem_grain3_1[memadr_43];

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
	.C(eth_tx_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(soc_ethphy_reset0),
	.Q(vns_xilinxasyncresetsynchronizerimpl3_rst_meta)
);

(* ars_ff2 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_7 (
	.C(eth_tx_clk),
	.CE(1'd1),
	.D(vns_xilinxasyncresetsynchronizerimpl3_rst_meta),
	.PRE(soc_ethphy_reset0),
	.Q(eth_tx_rst)
);

(* ars_ff1 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_8 (
	.C(eth_rx_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(soc_ethphy_reset0),
	.Q(vns_xilinxasyncresetsynchronizerimpl4_rst_meta)
);

(* ars_ff2 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_9 (
	.C(eth_rx_clk),
	.CE(1'd1),
	.D(vns_xilinxasyncresetsynchronizerimpl4_rst_meta),
	.PRE(soc_ethphy_reset0),
	.Q(eth_rx_rst)
);

endmodule
