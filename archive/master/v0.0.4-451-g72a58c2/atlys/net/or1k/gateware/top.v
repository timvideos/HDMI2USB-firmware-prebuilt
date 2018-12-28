/* Machine-generated using LiteX gen */
module top(
	input serial_rx,
	output reg serial_tx,
	input clk100,
	input cpu_reset,
	output ddram_clock_p,
	output ddram_clock_n,
	output reg spiflash4x_cs_n,
	output reg spiflash4x_clk,
	inout [3:0] spiflash4x_dq,
	output reg ddram_cke,
	output reg ddram_ras_n,
	output reg ddram_cas_n,
	output reg ddram_we_n,
	output reg [2:0] ddram_ba,
	output reg [12:0] ddram_a,
	inout [15:0] ddram_dq,
	output [1:0] ddram_dqs,
	output [1:0] ddram_dqs_n,
	output [1:0] ddram_dm,
	output reg ddram_odt,
	input eth_clocks_tx,
	output eth_clocks_gtx,
	input eth_clocks_rx,
	output eth_rst_n,
	input eth_int_n,
	inout eth_mdio,
	output eth_mdc,
	input eth_rx_dv,
	input eth_rx_er,
	input [7:0] eth_rx_data,
	output reg eth_tx_en,
	output eth_tx_er,
	output reg [7:0] eth_tx_data,
	input eth_col,
	input eth_crs
);

wire soc_netsoc_ctrl_reset_reset_re;
wire soc_netsoc_ctrl_reset_reset_r;
reg soc_netsoc_ctrl_reset_reset_w = 1'd0;
reg [31:0] soc_netsoc_ctrl_storage_full = 32'd305419896;
wire [31:0] soc_netsoc_ctrl_storage;
reg soc_netsoc_ctrl_re = 1'd0;
wire [31:0] soc_netsoc_ctrl_bus_errors_status;
wire soc_netsoc_ctrl_reset;
wire soc_netsoc_ctrl_bus_error;
reg [31:0] soc_netsoc_ctrl_bus_errors = 32'd0;
wire soc_netsoc_mor1kx_reset;
wire [29:0] soc_netsoc_mor1kx_ibus_adr;
wire [31:0] soc_netsoc_mor1kx_ibus_dat_w;
wire [31:0] soc_netsoc_mor1kx_ibus_dat_r;
wire [3:0] soc_netsoc_mor1kx_ibus_sel;
wire soc_netsoc_mor1kx_ibus_cyc;
wire soc_netsoc_mor1kx_ibus_stb;
wire soc_netsoc_mor1kx_ibus_ack;
wire soc_netsoc_mor1kx_ibus_we;
wire [2:0] soc_netsoc_mor1kx_ibus_cti;
wire [1:0] soc_netsoc_mor1kx_ibus_bte;
wire soc_netsoc_mor1kx_ibus_err;
wire [29:0] soc_netsoc_mor1kx_dbus_adr;
wire [31:0] soc_netsoc_mor1kx_dbus_dat_w;
wire [31:0] soc_netsoc_mor1kx_dbus_dat_r;
wire [3:0] soc_netsoc_mor1kx_dbus_sel;
wire soc_netsoc_mor1kx_dbus_cyc;
wire soc_netsoc_mor1kx_dbus_stb;
wire soc_netsoc_mor1kx_dbus_ack;
wire soc_netsoc_mor1kx_dbus_we;
wire [2:0] soc_netsoc_mor1kx_dbus_cti;
wire [1:0] soc_netsoc_mor1kx_dbus_bte;
wire soc_netsoc_mor1kx_dbus_err;
reg [31:0] soc_netsoc_mor1kx_interrupt = 32'd0;
wire [31:0] soc_netsoc_mor1kx_i_adr_o;
wire [31:0] soc_netsoc_mor1kx_d_adr_o;
wire [29:0] soc_netsoc_rom_bus_adr;
wire [31:0] soc_netsoc_rom_bus_dat_w;
wire [31:0] soc_netsoc_rom_bus_dat_r;
wire [3:0] soc_netsoc_rom_bus_sel;
wire soc_netsoc_rom_bus_cyc;
wire soc_netsoc_rom_bus_stb;
reg soc_netsoc_rom_bus_ack = 1'd0;
wire soc_netsoc_rom_bus_we;
wire [2:0] soc_netsoc_rom_bus_cti;
wire [1:0] soc_netsoc_rom_bus_bte;
reg soc_netsoc_rom_bus_err = 1'd0;
wire [13:0] soc_netsoc_rom_adr;
wire [31:0] soc_netsoc_rom_dat_r;
wire [29:0] soc_netsoc_sram_bus_adr;
wire [31:0] soc_netsoc_sram_bus_dat_w;
wire [31:0] soc_netsoc_sram_bus_dat_r;
wire [3:0] soc_netsoc_sram_bus_sel;
wire soc_netsoc_sram_bus_cyc;
wire soc_netsoc_sram_bus_stb;
reg soc_netsoc_sram_bus_ack = 1'd0;
wire soc_netsoc_sram_bus_we;
wire [2:0] soc_netsoc_sram_bus_cti;
wire [1:0] soc_netsoc_sram_bus_bte;
reg soc_netsoc_sram_bus_err = 1'd0;
wire [12:0] soc_netsoc_sram_adr;
wire [31:0] soc_netsoc_sram_dat_r;
reg [3:0] soc_netsoc_sram_we = 4'd0;
wire [31:0] soc_netsoc_sram_dat_w;
reg [13:0] soc_netsoc_interface_adr = 14'd0;
reg soc_netsoc_interface_we = 1'd0;
reg [7:0] soc_netsoc_interface_dat_w = 8'd0;
wire [7:0] soc_netsoc_interface_dat_r;
wire [29:0] soc_netsoc_bus_wishbone_adr;
wire [31:0] soc_netsoc_bus_wishbone_dat_w;
reg [31:0] soc_netsoc_bus_wishbone_dat_r = 32'd0;
wire [3:0] soc_netsoc_bus_wishbone_sel;
wire soc_netsoc_bus_wishbone_cyc;
wire soc_netsoc_bus_wishbone_stb;
reg soc_netsoc_bus_wishbone_ack = 1'd0;
wire soc_netsoc_bus_wishbone_we;
wire [2:0] soc_netsoc_bus_wishbone_cti;
wire [1:0] soc_netsoc_bus_wishbone_bte;
reg soc_netsoc_bus_wishbone_err = 1'd0;
reg [1:0] soc_netsoc_counter = 2'd0;
reg [31:0] soc_netsoc_uart_phy_storage_full = 32'd6597069;
wire [31:0] soc_netsoc_uart_phy_storage;
reg soc_netsoc_uart_phy_re = 1'd0;
wire soc_netsoc_uart_phy_sink_valid;
reg soc_netsoc_uart_phy_sink_ready = 1'd0;
wire soc_netsoc_uart_phy_sink_first;
wire soc_netsoc_uart_phy_sink_last;
wire [7:0] soc_netsoc_uart_phy_sink_payload_data;
reg soc_netsoc_uart_phy_uart_clk_txen = 1'd0;
reg [31:0] soc_netsoc_uart_phy_phase_accumulator_tx = 32'd0;
reg [7:0] soc_netsoc_uart_phy_tx_reg = 8'd0;
reg [3:0] soc_netsoc_uart_phy_tx_bitcount = 4'd0;
reg soc_netsoc_uart_phy_tx_busy = 1'd0;
reg soc_netsoc_uart_phy_source_valid = 1'd0;
wire soc_netsoc_uart_phy_source_ready;
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
wire soc_netsoc_uart_eventmanager_status_re;
wire [1:0] soc_netsoc_uart_eventmanager_status_r;
reg [1:0] soc_netsoc_uart_eventmanager_status_w = 2'd0;
wire soc_netsoc_uart_eventmanager_pending_re;
wire [1:0] soc_netsoc_uart_eventmanager_pending_r;
reg [1:0] soc_netsoc_uart_eventmanager_pending_w = 2'd0;
reg [1:0] soc_netsoc_uart_eventmanager_storage_full = 2'd0;
wire [1:0] soc_netsoc_uart_eventmanager_storage;
reg soc_netsoc_uart_eventmanager_re = 1'd0;
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
wire soc_netsoc_uart_tx_fifo_re;
reg soc_netsoc_uart_tx_fifo_readable = 1'd0;
wire soc_netsoc_uart_tx_fifo_syncfifo_we;
wire soc_netsoc_uart_tx_fifo_syncfifo_writable;
wire soc_netsoc_uart_tx_fifo_syncfifo_re;
wire soc_netsoc_uart_tx_fifo_syncfifo_readable;
wire [9:0] soc_netsoc_uart_tx_fifo_syncfifo_din;
wire [9:0] soc_netsoc_uart_tx_fifo_syncfifo_dout;
reg [4:0] soc_netsoc_uart_tx_fifo_level0 = 5'd0;
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
wire soc_netsoc_uart_tx_fifo_rdport_re;
wire [4:0] soc_netsoc_uart_tx_fifo_level1;
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
wire soc_netsoc_uart_rx_fifo_re;
reg soc_netsoc_uart_rx_fifo_readable = 1'd0;
wire soc_netsoc_uart_rx_fifo_syncfifo_we;
wire soc_netsoc_uart_rx_fifo_syncfifo_writable;
wire soc_netsoc_uart_rx_fifo_syncfifo_re;
wire soc_netsoc_uart_rx_fifo_syncfifo_readable;
wire [9:0] soc_netsoc_uart_rx_fifo_syncfifo_din;
wire [9:0] soc_netsoc_uart_rx_fifo_syncfifo_dout;
reg [4:0] soc_netsoc_uart_rx_fifo_level0 = 5'd0;
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
wire soc_netsoc_uart_rx_fifo_rdport_re;
wire [4:0] soc_netsoc_uart_rx_fifo_level1;
wire [7:0] soc_netsoc_uart_rx_fifo_fifo_in_payload_data;
wire soc_netsoc_uart_rx_fifo_fifo_in_first;
wire soc_netsoc_uart_rx_fifo_fifo_in_last;
wire [7:0] soc_netsoc_uart_rx_fifo_fifo_out_payload_data;
wire soc_netsoc_uart_rx_fifo_fifo_out_first;
wire soc_netsoc_uart_rx_fifo_fifo_out_last;
reg soc_netsoc_uart_reset = 1'd0;
reg [31:0] soc_netsoc_timer0_load_storage_full = 32'd0;
wire [31:0] soc_netsoc_timer0_load_storage;
reg soc_netsoc_timer0_load_re = 1'd0;
reg [31:0] soc_netsoc_timer0_reload_storage_full = 32'd0;
wire [31:0] soc_netsoc_timer0_reload_storage;
reg soc_netsoc_timer0_reload_re = 1'd0;
reg soc_netsoc_timer0_en_storage_full = 1'd0;
wire soc_netsoc_timer0_en_storage;
reg soc_netsoc_timer0_en_re = 1'd0;
wire soc_netsoc_timer0_update_value_re;
wire soc_netsoc_timer0_update_value_r;
reg soc_netsoc_timer0_update_value_w = 1'd0;
reg [31:0] soc_netsoc_timer0_value_status = 32'd0;
wire soc_netsoc_timer0_irq;
wire soc_netsoc_timer0_zero_status;
reg soc_netsoc_timer0_zero_pending = 1'd0;
wire soc_netsoc_timer0_zero_trigger;
reg soc_netsoc_timer0_zero_clear = 1'd0;
reg soc_netsoc_timer0_zero_old_trigger = 1'd0;
wire soc_netsoc_timer0_eventmanager_status_re;
wire soc_netsoc_timer0_eventmanager_status_r;
wire soc_netsoc_timer0_eventmanager_status_w;
wire soc_netsoc_timer0_eventmanager_pending_re;
wire soc_netsoc_timer0_eventmanager_pending_r;
wire soc_netsoc_timer0_eventmanager_pending_w;
reg soc_netsoc_timer0_eventmanager_storage_full = 1'd0;
wire soc_netsoc_timer0_eventmanager_storage;
reg soc_netsoc_timer0_eventmanager_re = 1'd0;
reg [31:0] soc_netsoc_timer0_value = 32'd0;
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
wire sys_clk;
wire sys_rst;
wire sdram_half_clk;
reg sdram_half_rst = 1'd0;
wire sdram_full_wr_clk;
wire sdram_full_rd_clk;
wire base50_clk;
wire base50_rst;
wire encoder_clk;
wire encoder_rst;
reg soc_crg_reset = 1'd0;
wire soc_crg_clk100a;
wire soc_crg_clk100b;
wire soc_crg_unbuf_sdram_full;
wire soc_crg_unbuf_sdram_half_a;
wire soc_crg_unbuf_sdram_half_b;
wire soc_crg_unbuf_encoder;
wire soc_crg_unbuf_sys;
wire soc_crg_unbuf_unused;
wire soc_crg_pll_lckd;
wire soc_crg_pll_fb;
wire por_clk;
wire por_rst;
reg [10:0] soc_crg_por = 11'd2047;
wire soc_crg_clk4x_wr_strb;
wire soc_crg_clk4x_rd_strb;
wire soc_crg_clk_sdram_half_shifted;
wire soc_crg_output_clk;
wire soc_crg_dcm_base50_locked;
reg [56:0] soc_dna_status = 57'd0;
wire soc_dna_do;
reg [6:0] soc_dna_cnt = 7'd0;
wire [159:0] soc_git_status;
wire [63:0] soc_platform_status;
wire [63:0] soc_target_status;
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
reg soc_spiflash_status = 1'd0;
reg soc_spiflash_bitbang_en_storage_full = 1'd0;
wire soc_spiflash_bitbang_en_storage;
reg soc_spiflash_bitbang_en_re = 1'd0;
reg soc_spiflash_cs_n = 1'd1;
reg soc_spiflash_clk = 1'd0;
reg soc_spiflash_dq_oe = 1'd0;
reg [3:0] soc_spiflash_o = 4'd0;
reg soc_spiflash_oe = 1'd0;
wire [3:0] soc_spiflash_i0;
reg [31:0] soc_spiflash_sr = 32'd0;
reg [1:0] soc_spiflash_i1 = 2'd0;
reg [3:0] soc_spiflash_dqi = 4'd0;
reg [7:0] soc_spiflash_counter = 8'd0;
wire [12:0] soc_ddrphy_dfi_p0_address;
wire [2:0] soc_ddrphy_dfi_p0_bank;
wire soc_ddrphy_dfi_p0_cas_n;
wire soc_ddrphy_dfi_p0_cs_n;
wire soc_ddrphy_dfi_p0_ras_n;
wire soc_ddrphy_dfi_p0_we_n;
wire soc_ddrphy_dfi_p0_cke;
wire soc_ddrphy_dfi_p0_odt;
wire soc_ddrphy_dfi_p0_reset_n;
wire soc_ddrphy_dfi_p0_act_n;
wire [31:0] soc_ddrphy_dfi_p0_wrdata;
wire soc_ddrphy_dfi_p0_wrdata_en;
wire [3:0] soc_ddrphy_dfi_p0_wrdata_mask;
wire soc_ddrphy_dfi_p0_rddata_en;
wire [31:0] soc_ddrphy_dfi_p0_rddata;
wire soc_ddrphy_dfi_p0_rddata_valid;
wire [12:0] soc_ddrphy_dfi_p1_address;
wire [2:0] soc_ddrphy_dfi_p1_bank;
wire soc_ddrphy_dfi_p1_cas_n;
wire soc_ddrphy_dfi_p1_cs_n;
wire soc_ddrphy_dfi_p1_ras_n;
wire soc_ddrphy_dfi_p1_we_n;
wire soc_ddrphy_dfi_p1_cke;
wire soc_ddrphy_dfi_p1_odt;
wire soc_ddrphy_dfi_p1_reset_n;
wire soc_ddrphy_dfi_p1_act_n;
wire [31:0] soc_ddrphy_dfi_p1_wrdata;
wire soc_ddrphy_dfi_p1_wrdata_en;
wire [3:0] soc_ddrphy_dfi_p1_wrdata_mask;
wire soc_ddrphy_dfi_p1_rddata_en;
wire [31:0] soc_ddrphy_dfi_p1_rddata;
wire soc_ddrphy_dfi_p1_rddata_valid;
wire soc_ddrphy_clk4x_wr_strb;
wire soc_ddrphy_clk4x_rd_strb;
reg soc_ddrphy_phase_sel = 1'd0;
reg soc_ddrphy_phase_half = 1'd0;
reg soc_ddrphy_phase_sys = 1'd0;
reg [12:0] soc_ddrphy_record0_address = 13'd0;
reg [2:0] soc_ddrphy_record0_bank = 3'd0;
reg soc_ddrphy_record0_cas_n = 1'd0;
reg soc_ddrphy_record0_cs_n = 1'd0;
reg soc_ddrphy_record0_ras_n = 1'd0;
reg soc_ddrphy_record0_we_n = 1'd0;
reg soc_ddrphy_record0_cke = 1'd0;
reg soc_ddrphy_record0_odt = 1'd0;
reg soc_ddrphy_record0_reset_n = 1'd0;
reg [12:0] soc_ddrphy_record1_address = 13'd0;
reg [2:0] soc_ddrphy_record1_bank = 3'd0;
reg soc_ddrphy_record1_cas_n = 1'd0;
reg soc_ddrphy_record1_cs_n = 1'd0;
reg soc_ddrphy_record1_ras_n = 1'd0;
reg soc_ddrphy_record1_we_n = 1'd0;
reg soc_ddrphy_record1_cke = 1'd0;
reg soc_ddrphy_record1_odt = 1'd0;
reg soc_ddrphy_record1_reset_n = 1'd0;
reg [3:0] soc_ddrphy_bitslip_cnt = 4'd0;
reg soc_ddrphy_bitslip_inc = 1'd0;
wire soc_ddrphy_sdram_half_clk_n;
reg soc_ddrphy_postamble = 1'd0;
wire soc_ddrphy_drive_dqs;
wire soc_ddrphy_dqs_t_d0;
wire soc_ddrphy_dqs_t_d1;
wire [1:0] soc_ddrphy_dqs_o;
wire [1:0] soc_ddrphy_dqs_t;
wire [31:0] soc_ddrphy_record0_wrdata;
wire soc_ddrphy_record0_wrdata_en;
wire [3:0] soc_ddrphy_record0_wrdata_mask;
wire soc_ddrphy_record0_rddata_en;
wire [31:0] soc_ddrphy_record0_rddata;
wire [31:0] soc_ddrphy_record1_wrdata;
wire soc_ddrphy_record1_wrdata_en;
wire [3:0] soc_ddrphy_record1_wrdata_mask;
wire soc_ddrphy_record1_rddata_en;
wire [31:0] soc_ddrphy_record1_rddata;
reg [31:0] soc_ddrphy_record2_wrdata = 32'd0;
reg [3:0] soc_ddrphy_record2_wrdata_mask = 4'd0;
reg [31:0] soc_ddrphy_record3_wrdata = 32'd0;
reg [3:0] soc_ddrphy_record3_wrdata_mask = 4'd0;
wire soc_ddrphy_drive_dq;
wire soc_ddrphy_drive_dq_n0;
reg soc_ddrphy_drive_dq_n1 = 1'd0;
wire [15:0] soc_ddrphy_dq_t;
wire [15:0] soc_ddrphy_dq_o;
wire [15:0] soc_ddrphy_dq_i;
wire soc_ddrphy_wrdata_en;
reg soc_ddrphy_wrdata_en_d = 1'd0;
reg [2:0] soc_ddrphy_r_dfi_wrdata_en = 3'd0;
wire soc_ddrphy_rddata_en;
reg [4:0] soc_ddrphy_rddata_sr = 5'd0;
wire [12:0] soc_netsoc_sdram_inti_p0_address;
wire [2:0] soc_netsoc_sdram_inti_p0_bank;
reg soc_netsoc_sdram_inti_p0_cas_n = 1'd1;
reg soc_netsoc_sdram_inti_p0_cs_n = 1'd1;
reg soc_netsoc_sdram_inti_p0_ras_n = 1'd1;
reg soc_netsoc_sdram_inti_p0_we_n = 1'd1;
wire soc_netsoc_sdram_inti_p0_cke;
wire soc_netsoc_sdram_inti_p0_odt;
wire soc_netsoc_sdram_inti_p0_reset_n;
reg soc_netsoc_sdram_inti_p0_act_n = 1'd1;
wire [31:0] soc_netsoc_sdram_inti_p0_wrdata;
wire soc_netsoc_sdram_inti_p0_wrdata_en;
wire [3:0] soc_netsoc_sdram_inti_p0_wrdata_mask;
wire soc_netsoc_sdram_inti_p0_rddata_en;
reg [31:0] soc_netsoc_sdram_inti_p0_rddata = 32'd0;
reg soc_netsoc_sdram_inti_p0_rddata_valid = 1'd0;
wire [12:0] soc_netsoc_sdram_inti_p1_address;
wire [2:0] soc_netsoc_sdram_inti_p1_bank;
reg soc_netsoc_sdram_inti_p1_cas_n = 1'd1;
reg soc_netsoc_sdram_inti_p1_cs_n = 1'd1;
reg soc_netsoc_sdram_inti_p1_ras_n = 1'd1;
reg soc_netsoc_sdram_inti_p1_we_n = 1'd1;
wire soc_netsoc_sdram_inti_p1_cke;
wire soc_netsoc_sdram_inti_p1_odt;
wire soc_netsoc_sdram_inti_p1_reset_n;
reg soc_netsoc_sdram_inti_p1_act_n = 1'd1;
wire [31:0] soc_netsoc_sdram_inti_p1_wrdata;
wire soc_netsoc_sdram_inti_p1_wrdata_en;
wire [3:0] soc_netsoc_sdram_inti_p1_wrdata_mask;
wire soc_netsoc_sdram_inti_p1_rddata_en;
reg [31:0] soc_netsoc_sdram_inti_p1_rddata = 32'd0;
reg soc_netsoc_sdram_inti_p1_rddata_valid = 1'd0;
wire [12:0] soc_netsoc_sdram_slave_p0_address;
wire [2:0] soc_netsoc_sdram_slave_p0_bank;
wire soc_netsoc_sdram_slave_p0_cas_n;
wire soc_netsoc_sdram_slave_p0_cs_n;
wire soc_netsoc_sdram_slave_p0_ras_n;
wire soc_netsoc_sdram_slave_p0_we_n;
wire soc_netsoc_sdram_slave_p0_cke;
wire soc_netsoc_sdram_slave_p0_odt;
wire soc_netsoc_sdram_slave_p0_reset_n;
wire soc_netsoc_sdram_slave_p0_act_n;
wire [31:0] soc_netsoc_sdram_slave_p0_wrdata;
wire soc_netsoc_sdram_slave_p0_wrdata_en;
wire [3:0] soc_netsoc_sdram_slave_p0_wrdata_mask;
wire soc_netsoc_sdram_slave_p0_rddata_en;
reg [31:0] soc_netsoc_sdram_slave_p0_rddata = 32'd0;
reg soc_netsoc_sdram_slave_p0_rddata_valid = 1'd0;
wire [12:0] soc_netsoc_sdram_slave_p1_address;
wire [2:0] soc_netsoc_sdram_slave_p1_bank;
wire soc_netsoc_sdram_slave_p1_cas_n;
wire soc_netsoc_sdram_slave_p1_cs_n;
wire soc_netsoc_sdram_slave_p1_ras_n;
wire soc_netsoc_sdram_slave_p1_we_n;
wire soc_netsoc_sdram_slave_p1_cke;
wire soc_netsoc_sdram_slave_p1_odt;
wire soc_netsoc_sdram_slave_p1_reset_n;
wire soc_netsoc_sdram_slave_p1_act_n;
wire [31:0] soc_netsoc_sdram_slave_p1_wrdata;
wire soc_netsoc_sdram_slave_p1_wrdata_en;
wire [3:0] soc_netsoc_sdram_slave_p1_wrdata_mask;
wire soc_netsoc_sdram_slave_p1_rddata_en;
reg [31:0] soc_netsoc_sdram_slave_p1_rddata = 32'd0;
reg soc_netsoc_sdram_slave_p1_rddata_valid = 1'd0;
reg [12:0] soc_netsoc_sdram_master_p0_address = 13'd0;
reg [2:0] soc_netsoc_sdram_master_p0_bank = 3'd0;
reg soc_netsoc_sdram_master_p0_cas_n = 1'd1;
reg soc_netsoc_sdram_master_p0_cs_n = 1'd1;
reg soc_netsoc_sdram_master_p0_ras_n = 1'd1;
reg soc_netsoc_sdram_master_p0_we_n = 1'd1;
reg soc_netsoc_sdram_master_p0_cke = 1'd0;
reg soc_netsoc_sdram_master_p0_odt = 1'd0;
reg soc_netsoc_sdram_master_p0_reset_n = 1'd0;
reg soc_netsoc_sdram_master_p0_act_n = 1'd1;
reg [31:0] soc_netsoc_sdram_master_p0_wrdata = 32'd0;
reg soc_netsoc_sdram_master_p0_wrdata_en = 1'd0;
reg [3:0] soc_netsoc_sdram_master_p0_wrdata_mask = 4'd0;
reg soc_netsoc_sdram_master_p0_rddata_en = 1'd0;
wire [31:0] soc_netsoc_sdram_master_p0_rddata;
wire soc_netsoc_sdram_master_p0_rddata_valid;
reg [12:0] soc_netsoc_sdram_master_p1_address = 13'd0;
reg [2:0] soc_netsoc_sdram_master_p1_bank = 3'd0;
reg soc_netsoc_sdram_master_p1_cas_n = 1'd1;
reg soc_netsoc_sdram_master_p1_cs_n = 1'd1;
reg soc_netsoc_sdram_master_p1_ras_n = 1'd1;
reg soc_netsoc_sdram_master_p1_we_n = 1'd1;
reg soc_netsoc_sdram_master_p1_cke = 1'd0;
reg soc_netsoc_sdram_master_p1_odt = 1'd0;
reg soc_netsoc_sdram_master_p1_reset_n = 1'd0;
reg soc_netsoc_sdram_master_p1_act_n = 1'd1;
reg [31:0] soc_netsoc_sdram_master_p1_wrdata = 32'd0;
reg soc_netsoc_sdram_master_p1_wrdata_en = 1'd0;
reg [3:0] soc_netsoc_sdram_master_p1_wrdata_mask = 4'd0;
reg soc_netsoc_sdram_master_p1_rddata_en = 1'd0;
wire [31:0] soc_netsoc_sdram_master_p1_rddata;
wire soc_netsoc_sdram_master_p1_rddata_valid;
reg [3:0] soc_netsoc_sdram_storage_full = 4'd0;
wire [3:0] soc_netsoc_sdram_storage;
reg soc_netsoc_sdram_re = 1'd0;
reg [5:0] soc_netsoc_sdram_phaseinjector0_command_storage_full = 6'd0;
wire [5:0] soc_netsoc_sdram_phaseinjector0_command_storage;
reg soc_netsoc_sdram_phaseinjector0_command_re = 1'd0;
wire soc_netsoc_sdram_phaseinjector0_command_issue_re;
wire soc_netsoc_sdram_phaseinjector0_command_issue_r;
reg soc_netsoc_sdram_phaseinjector0_command_issue_w = 1'd0;
reg [12:0] soc_netsoc_sdram_phaseinjector0_address_storage_full = 13'd0;
wire [12:0] soc_netsoc_sdram_phaseinjector0_address_storage;
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
reg [12:0] soc_netsoc_sdram_phaseinjector1_address_storage_full = 13'd0;
wire [12:0] soc_netsoc_sdram_phaseinjector1_address_storage;
reg soc_netsoc_sdram_phaseinjector1_address_re = 1'd0;
reg [2:0] soc_netsoc_sdram_phaseinjector1_baddress_storage_full = 3'd0;
wire [2:0] soc_netsoc_sdram_phaseinjector1_baddress_storage;
reg soc_netsoc_sdram_phaseinjector1_baddress_re = 1'd0;
reg [31:0] soc_netsoc_sdram_phaseinjector1_wrdata_storage_full = 32'd0;
wire [31:0] soc_netsoc_sdram_phaseinjector1_wrdata_storage;
reg soc_netsoc_sdram_phaseinjector1_wrdata_re = 1'd0;
reg [31:0] soc_netsoc_sdram_phaseinjector1_status = 32'd0;
reg [12:0] soc_netsoc_sdram_dfi_p0_address = 13'd0;
reg [2:0] soc_netsoc_sdram_dfi_p0_bank = 3'd0;
reg soc_netsoc_sdram_dfi_p0_cas_n = 1'd1;
reg soc_netsoc_sdram_dfi_p0_cs_n = 1'd1;
reg soc_netsoc_sdram_dfi_p0_ras_n = 1'd1;
reg soc_netsoc_sdram_dfi_p0_we_n = 1'd1;
wire soc_netsoc_sdram_dfi_p0_cke;
wire soc_netsoc_sdram_dfi_p0_odt;
wire soc_netsoc_sdram_dfi_p0_reset_n;
reg soc_netsoc_sdram_dfi_p0_act_n = 1'd1;
wire [31:0] soc_netsoc_sdram_dfi_p0_wrdata;
reg soc_netsoc_sdram_dfi_p0_wrdata_en = 1'd0;
wire [3:0] soc_netsoc_sdram_dfi_p0_wrdata_mask;
reg soc_netsoc_sdram_dfi_p0_rddata_en = 1'd0;
wire [31:0] soc_netsoc_sdram_dfi_p0_rddata;
wire soc_netsoc_sdram_dfi_p0_rddata_valid;
reg [12:0] soc_netsoc_sdram_dfi_p1_address = 13'd0;
reg [2:0] soc_netsoc_sdram_dfi_p1_bank = 3'd0;
reg soc_netsoc_sdram_dfi_p1_cas_n = 1'd1;
reg soc_netsoc_sdram_dfi_p1_cs_n = 1'd1;
reg soc_netsoc_sdram_dfi_p1_ras_n = 1'd1;
reg soc_netsoc_sdram_dfi_p1_we_n = 1'd1;
wire soc_netsoc_sdram_dfi_p1_cke;
wire soc_netsoc_sdram_dfi_p1_odt;
wire soc_netsoc_sdram_dfi_p1_reset_n;
reg soc_netsoc_sdram_dfi_p1_act_n = 1'd1;
wire [31:0] soc_netsoc_sdram_dfi_p1_wrdata;
reg soc_netsoc_sdram_dfi_p1_wrdata_en = 1'd0;
wire [3:0] soc_netsoc_sdram_dfi_p1_wrdata_mask;
reg soc_netsoc_sdram_dfi_p1_rddata_en = 1'd0;
wire [31:0] soc_netsoc_sdram_dfi_p1_rddata;
wire soc_netsoc_sdram_dfi_p1_rddata_valid;
wire soc_netsoc_sdram_interface_bank0_valid;
wire soc_netsoc_sdram_interface_bank0_ready;
wire soc_netsoc_sdram_interface_bank0_we;
wire [20:0] soc_netsoc_sdram_interface_bank0_addr;
wire soc_netsoc_sdram_interface_bank0_lock;
wire soc_netsoc_sdram_interface_bank0_wdata_ready;
wire soc_netsoc_sdram_interface_bank0_rdata_valid;
wire soc_netsoc_sdram_interface_bank1_valid;
wire soc_netsoc_sdram_interface_bank1_ready;
wire soc_netsoc_sdram_interface_bank1_we;
wire [20:0] soc_netsoc_sdram_interface_bank1_addr;
wire soc_netsoc_sdram_interface_bank1_lock;
wire soc_netsoc_sdram_interface_bank1_wdata_ready;
wire soc_netsoc_sdram_interface_bank1_rdata_valid;
wire soc_netsoc_sdram_interface_bank2_valid;
wire soc_netsoc_sdram_interface_bank2_ready;
wire soc_netsoc_sdram_interface_bank2_we;
wire [20:0] soc_netsoc_sdram_interface_bank2_addr;
wire soc_netsoc_sdram_interface_bank2_lock;
wire soc_netsoc_sdram_interface_bank2_wdata_ready;
wire soc_netsoc_sdram_interface_bank2_rdata_valid;
wire soc_netsoc_sdram_interface_bank3_valid;
wire soc_netsoc_sdram_interface_bank3_ready;
wire soc_netsoc_sdram_interface_bank3_we;
wire [20:0] soc_netsoc_sdram_interface_bank3_addr;
wire soc_netsoc_sdram_interface_bank3_lock;
wire soc_netsoc_sdram_interface_bank3_wdata_ready;
wire soc_netsoc_sdram_interface_bank3_rdata_valid;
wire soc_netsoc_sdram_interface_bank4_valid;
wire soc_netsoc_sdram_interface_bank4_ready;
wire soc_netsoc_sdram_interface_bank4_we;
wire [20:0] soc_netsoc_sdram_interface_bank4_addr;
wire soc_netsoc_sdram_interface_bank4_lock;
wire soc_netsoc_sdram_interface_bank4_wdata_ready;
wire soc_netsoc_sdram_interface_bank4_rdata_valid;
wire soc_netsoc_sdram_interface_bank5_valid;
wire soc_netsoc_sdram_interface_bank5_ready;
wire soc_netsoc_sdram_interface_bank5_we;
wire [20:0] soc_netsoc_sdram_interface_bank5_addr;
wire soc_netsoc_sdram_interface_bank5_lock;
wire soc_netsoc_sdram_interface_bank5_wdata_ready;
wire soc_netsoc_sdram_interface_bank5_rdata_valid;
wire soc_netsoc_sdram_interface_bank6_valid;
wire soc_netsoc_sdram_interface_bank6_ready;
wire soc_netsoc_sdram_interface_bank6_we;
wire [20:0] soc_netsoc_sdram_interface_bank6_addr;
wire soc_netsoc_sdram_interface_bank6_lock;
wire soc_netsoc_sdram_interface_bank6_wdata_ready;
wire soc_netsoc_sdram_interface_bank6_rdata_valid;
wire soc_netsoc_sdram_interface_bank7_valid;
wire soc_netsoc_sdram_interface_bank7_ready;
wire soc_netsoc_sdram_interface_bank7_we;
wire [20:0] soc_netsoc_sdram_interface_bank7_addr;
wire soc_netsoc_sdram_interface_bank7_lock;
wire soc_netsoc_sdram_interface_bank7_wdata_ready;
wire soc_netsoc_sdram_interface_bank7_rdata_valid;
reg [63:0] soc_netsoc_sdram_interface_wdata = 64'd0;
reg [7:0] soc_netsoc_sdram_interface_wdata_we = 8'd0;
wire [63:0] soc_netsoc_sdram_interface_rdata;
reg soc_netsoc_sdram_cmd_valid = 1'd0;
reg soc_netsoc_sdram_cmd_ready = 1'd0;
reg soc_netsoc_sdram_cmd_last = 1'd0;
reg [12:0] soc_netsoc_sdram_cmd_payload_a = 13'd0;
reg [2:0] soc_netsoc_sdram_cmd_payload_ba = 3'd0;
reg soc_netsoc_sdram_cmd_payload_cas = 1'd0;
reg soc_netsoc_sdram_cmd_payload_ras = 1'd0;
reg soc_netsoc_sdram_cmd_payload_we = 1'd0;
reg soc_netsoc_sdram_cmd_payload_is_read = 1'd0;
reg soc_netsoc_sdram_cmd_payload_is_write = 1'd0;
wire soc_netsoc_sdram_timer_wait;
wire soc_netsoc_sdram_timer_done;
reg [9:0] soc_netsoc_sdram_timer_count = 10'd586;
reg soc_netsoc_sdram_timer_load = 1'd0;
reg [9:0] soc_netsoc_sdram_timer_load_count = 10'd0;
wire soc_netsoc_sdram_timer_reset;
reg soc_netsoc_sdram_generator_start = 1'd0;
reg soc_netsoc_sdram_generator_done = 1'd0;
reg [3:0] soc_netsoc_sdram_generator_counter = 4'd0;
wire soc_netsoc_sdram_bankmachine0_req_valid;
wire soc_netsoc_sdram_bankmachine0_req_ready;
wire soc_netsoc_sdram_bankmachine0_req_we;
wire [20:0] soc_netsoc_sdram_bankmachine0_req_addr;
wire soc_netsoc_sdram_bankmachine0_req_lock;
reg soc_netsoc_sdram_bankmachine0_req_wdata_ready = 1'd0;
reg soc_netsoc_sdram_bankmachine0_req_rdata_valid = 1'd0;
wire soc_netsoc_sdram_bankmachine0_refresh_req;
reg soc_netsoc_sdram_bankmachine0_refresh_gnt = 1'd0;
reg soc_netsoc_sdram_bankmachine0_cmd_valid = 1'd0;
reg soc_netsoc_sdram_bankmachine0_cmd_ready = 1'd0;
reg [12:0] soc_netsoc_sdram_bankmachine0_cmd_payload_a = 13'd0;
wire [2:0] soc_netsoc_sdram_bankmachine0_cmd_payload_ba;
reg soc_netsoc_sdram_bankmachine0_cmd_payload_cas = 1'd0;
reg soc_netsoc_sdram_bankmachine0_cmd_payload_ras = 1'd0;
reg soc_netsoc_sdram_bankmachine0_cmd_payload_we = 1'd0;
reg soc_netsoc_sdram_bankmachine0_cmd_payload_is_cmd = 1'd0;
reg soc_netsoc_sdram_bankmachine0_cmd_payload_is_read = 1'd0;
reg soc_netsoc_sdram_bankmachine0_cmd_payload_is_write = 1'd0;
reg soc_netsoc_sdram_bankmachine0_auto_precharge = 1'd0;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_valid;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_ready;
reg soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_first = 1'd0;
reg soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_last = 1'd0;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_addr;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_valid;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_ready;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_first;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_last;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_addr;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_re;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable;
wire [23:0] soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_din;
wire [23:0] soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_dout;
reg [3:0] soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_level = 4'd0;
reg soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_r;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_we;
wire [23:0] soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_w;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_do_read;
wire [2:0] soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_adr;
wire [23:0] soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_dat_r;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_addr;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_first;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_last;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_addr;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_first;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_last;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_sink_valid;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_sink_ready;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_sink_first;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_sink_last;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_sink_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine0_cmd_buffer_sink_payload_addr;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_source_valid;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_source_ready;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_source_first;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_source_last;
reg soc_netsoc_sdram_bankmachine0_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] soc_netsoc_sdram_bankmachine0_cmd_buffer_source_payload_addr = 21'd0;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_pipe_ce;
wire soc_netsoc_sdram_bankmachine0_cmd_buffer_busy;
reg soc_netsoc_sdram_bankmachine0_cmd_buffer_valid_n = 1'd0;
reg soc_netsoc_sdram_bankmachine0_cmd_buffer_first_n = 1'd0;
reg soc_netsoc_sdram_bankmachine0_cmd_buffer_last_n = 1'd0;
reg [12:0] soc_netsoc_sdram_bankmachine0_row = 13'd0;
reg soc_netsoc_sdram_bankmachine0_row_opened = 1'd0;
wire soc_netsoc_sdram_bankmachine0_row_hit;
reg soc_netsoc_sdram_bankmachine0_row_open = 1'd0;
reg soc_netsoc_sdram_bankmachine0_row_close = 1'd0;
reg soc_netsoc_sdram_bankmachine0_row_col_n_addr_sel = 1'd0;
wire soc_netsoc_sdram_bankmachine0_twtpcon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_bankmachine0_twtpcon_ready = 1'd1;
reg [2:0] soc_netsoc_sdram_bankmachine0_twtpcon_count = 3'd0;
wire soc_netsoc_sdram_bankmachine0_trccon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_bankmachine0_trccon_ready = 1'd1;
wire soc_netsoc_sdram_bankmachine0_trascon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_bankmachine0_trascon_ready = 1'd1;
wire soc_netsoc_sdram_bankmachine1_req_valid;
wire soc_netsoc_sdram_bankmachine1_req_ready;
wire soc_netsoc_sdram_bankmachine1_req_we;
wire [20:0] soc_netsoc_sdram_bankmachine1_req_addr;
wire soc_netsoc_sdram_bankmachine1_req_lock;
reg soc_netsoc_sdram_bankmachine1_req_wdata_ready = 1'd0;
reg soc_netsoc_sdram_bankmachine1_req_rdata_valid = 1'd0;
wire soc_netsoc_sdram_bankmachine1_refresh_req;
reg soc_netsoc_sdram_bankmachine1_refresh_gnt = 1'd0;
reg soc_netsoc_sdram_bankmachine1_cmd_valid = 1'd0;
reg soc_netsoc_sdram_bankmachine1_cmd_ready = 1'd0;
reg [12:0] soc_netsoc_sdram_bankmachine1_cmd_payload_a = 13'd0;
wire [2:0] soc_netsoc_sdram_bankmachine1_cmd_payload_ba;
reg soc_netsoc_sdram_bankmachine1_cmd_payload_cas = 1'd0;
reg soc_netsoc_sdram_bankmachine1_cmd_payload_ras = 1'd0;
reg soc_netsoc_sdram_bankmachine1_cmd_payload_we = 1'd0;
reg soc_netsoc_sdram_bankmachine1_cmd_payload_is_cmd = 1'd0;
reg soc_netsoc_sdram_bankmachine1_cmd_payload_is_read = 1'd0;
reg soc_netsoc_sdram_bankmachine1_cmd_payload_is_write = 1'd0;
reg soc_netsoc_sdram_bankmachine1_auto_precharge = 1'd0;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_valid;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_ready;
reg soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_first = 1'd0;
reg soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_last = 1'd0;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_addr;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_valid;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_ready;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_first;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_last;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_addr;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_re;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable;
wire [23:0] soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_din;
wire [23:0] soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_dout;
reg [3:0] soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_level = 4'd0;
reg soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_r;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_we;
wire [23:0] soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_w;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_do_read;
wire [2:0] soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_adr;
wire [23:0] soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_dat_r;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_addr;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_first;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_last;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_addr;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_first;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_last;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_sink_valid;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_sink_ready;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_sink_first;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_sink_last;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_sink_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine1_cmd_buffer_sink_payload_addr;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_source_valid;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_source_ready;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_source_first;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_source_last;
reg soc_netsoc_sdram_bankmachine1_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] soc_netsoc_sdram_bankmachine1_cmd_buffer_source_payload_addr = 21'd0;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_pipe_ce;
wire soc_netsoc_sdram_bankmachine1_cmd_buffer_busy;
reg soc_netsoc_sdram_bankmachine1_cmd_buffer_valid_n = 1'd0;
reg soc_netsoc_sdram_bankmachine1_cmd_buffer_first_n = 1'd0;
reg soc_netsoc_sdram_bankmachine1_cmd_buffer_last_n = 1'd0;
reg [12:0] soc_netsoc_sdram_bankmachine1_row = 13'd0;
reg soc_netsoc_sdram_bankmachine1_row_opened = 1'd0;
wire soc_netsoc_sdram_bankmachine1_row_hit;
reg soc_netsoc_sdram_bankmachine1_row_open = 1'd0;
reg soc_netsoc_sdram_bankmachine1_row_close = 1'd0;
reg soc_netsoc_sdram_bankmachine1_row_col_n_addr_sel = 1'd0;
wire soc_netsoc_sdram_bankmachine1_twtpcon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_bankmachine1_twtpcon_ready = 1'd1;
reg [2:0] soc_netsoc_sdram_bankmachine1_twtpcon_count = 3'd0;
wire soc_netsoc_sdram_bankmachine1_trccon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_bankmachine1_trccon_ready = 1'd1;
wire soc_netsoc_sdram_bankmachine1_trascon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_bankmachine1_trascon_ready = 1'd1;
wire soc_netsoc_sdram_bankmachine2_req_valid;
wire soc_netsoc_sdram_bankmachine2_req_ready;
wire soc_netsoc_sdram_bankmachine2_req_we;
wire [20:0] soc_netsoc_sdram_bankmachine2_req_addr;
wire soc_netsoc_sdram_bankmachine2_req_lock;
reg soc_netsoc_sdram_bankmachine2_req_wdata_ready = 1'd0;
reg soc_netsoc_sdram_bankmachine2_req_rdata_valid = 1'd0;
wire soc_netsoc_sdram_bankmachine2_refresh_req;
reg soc_netsoc_sdram_bankmachine2_refresh_gnt = 1'd0;
reg soc_netsoc_sdram_bankmachine2_cmd_valid = 1'd0;
reg soc_netsoc_sdram_bankmachine2_cmd_ready = 1'd0;
reg [12:0] soc_netsoc_sdram_bankmachine2_cmd_payload_a = 13'd0;
wire [2:0] soc_netsoc_sdram_bankmachine2_cmd_payload_ba;
reg soc_netsoc_sdram_bankmachine2_cmd_payload_cas = 1'd0;
reg soc_netsoc_sdram_bankmachine2_cmd_payload_ras = 1'd0;
reg soc_netsoc_sdram_bankmachine2_cmd_payload_we = 1'd0;
reg soc_netsoc_sdram_bankmachine2_cmd_payload_is_cmd = 1'd0;
reg soc_netsoc_sdram_bankmachine2_cmd_payload_is_read = 1'd0;
reg soc_netsoc_sdram_bankmachine2_cmd_payload_is_write = 1'd0;
reg soc_netsoc_sdram_bankmachine2_auto_precharge = 1'd0;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_valid;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_ready;
reg soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_first = 1'd0;
reg soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_last = 1'd0;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_addr;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_valid;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_ready;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_first;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_last;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_addr;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_re;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable;
wire [23:0] soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_din;
wire [23:0] soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_dout;
reg [3:0] soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_level = 4'd0;
reg soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_r;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_we;
wire [23:0] soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_w;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_do_read;
wire [2:0] soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_adr;
wire [23:0] soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_dat_r;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_addr;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_first;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_last;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_addr;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_first;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_last;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_sink_valid;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_sink_ready;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_sink_first;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_sink_last;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_sink_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine2_cmd_buffer_sink_payload_addr;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_source_valid;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_source_ready;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_source_first;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_source_last;
reg soc_netsoc_sdram_bankmachine2_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] soc_netsoc_sdram_bankmachine2_cmd_buffer_source_payload_addr = 21'd0;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_pipe_ce;
wire soc_netsoc_sdram_bankmachine2_cmd_buffer_busy;
reg soc_netsoc_sdram_bankmachine2_cmd_buffer_valid_n = 1'd0;
reg soc_netsoc_sdram_bankmachine2_cmd_buffer_first_n = 1'd0;
reg soc_netsoc_sdram_bankmachine2_cmd_buffer_last_n = 1'd0;
reg [12:0] soc_netsoc_sdram_bankmachine2_row = 13'd0;
reg soc_netsoc_sdram_bankmachine2_row_opened = 1'd0;
wire soc_netsoc_sdram_bankmachine2_row_hit;
reg soc_netsoc_sdram_bankmachine2_row_open = 1'd0;
reg soc_netsoc_sdram_bankmachine2_row_close = 1'd0;
reg soc_netsoc_sdram_bankmachine2_row_col_n_addr_sel = 1'd0;
wire soc_netsoc_sdram_bankmachine2_twtpcon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_bankmachine2_twtpcon_ready = 1'd1;
reg [2:0] soc_netsoc_sdram_bankmachine2_twtpcon_count = 3'd0;
wire soc_netsoc_sdram_bankmachine2_trccon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_bankmachine2_trccon_ready = 1'd1;
wire soc_netsoc_sdram_bankmachine2_trascon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_bankmachine2_trascon_ready = 1'd1;
wire soc_netsoc_sdram_bankmachine3_req_valid;
wire soc_netsoc_sdram_bankmachine3_req_ready;
wire soc_netsoc_sdram_bankmachine3_req_we;
wire [20:0] soc_netsoc_sdram_bankmachine3_req_addr;
wire soc_netsoc_sdram_bankmachine3_req_lock;
reg soc_netsoc_sdram_bankmachine3_req_wdata_ready = 1'd0;
reg soc_netsoc_sdram_bankmachine3_req_rdata_valid = 1'd0;
wire soc_netsoc_sdram_bankmachine3_refresh_req;
reg soc_netsoc_sdram_bankmachine3_refresh_gnt = 1'd0;
reg soc_netsoc_sdram_bankmachine3_cmd_valid = 1'd0;
reg soc_netsoc_sdram_bankmachine3_cmd_ready = 1'd0;
reg [12:0] soc_netsoc_sdram_bankmachine3_cmd_payload_a = 13'd0;
wire [2:0] soc_netsoc_sdram_bankmachine3_cmd_payload_ba;
reg soc_netsoc_sdram_bankmachine3_cmd_payload_cas = 1'd0;
reg soc_netsoc_sdram_bankmachine3_cmd_payload_ras = 1'd0;
reg soc_netsoc_sdram_bankmachine3_cmd_payload_we = 1'd0;
reg soc_netsoc_sdram_bankmachine3_cmd_payload_is_cmd = 1'd0;
reg soc_netsoc_sdram_bankmachine3_cmd_payload_is_read = 1'd0;
reg soc_netsoc_sdram_bankmachine3_cmd_payload_is_write = 1'd0;
reg soc_netsoc_sdram_bankmachine3_auto_precharge = 1'd0;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_valid;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_ready;
reg soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_first = 1'd0;
reg soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_last = 1'd0;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_addr;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_valid;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_ready;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_first;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_last;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_addr;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_re;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable;
wire [23:0] soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_din;
wire [23:0] soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_dout;
reg [3:0] soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_level = 4'd0;
reg soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_r;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_we;
wire [23:0] soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_w;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_do_read;
wire [2:0] soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_adr;
wire [23:0] soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_dat_r;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_addr;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_first;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_last;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_addr;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_first;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_last;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_sink_valid;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_sink_ready;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_sink_first;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_sink_last;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_sink_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine3_cmd_buffer_sink_payload_addr;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_source_valid;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_source_ready;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_source_first;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_source_last;
reg soc_netsoc_sdram_bankmachine3_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] soc_netsoc_sdram_bankmachine3_cmd_buffer_source_payload_addr = 21'd0;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_pipe_ce;
wire soc_netsoc_sdram_bankmachine3_cmd_buffer_busy;
reg soc_netsoc_sdram_bankmachine3_cmd_buffer_valid_n = 1'd0;
reg soc_netsoc_sdram_bankmachine3_cmd_buffer_first_n = 1'd0;
reg soc_netsoc_sdram_bankmachine3_cmd_buffer_last_n = 1'd0;
reg [12:0] soc_netsoc_sdram_bankmachine3_row = 13'd0;
reg soc_netsoc_sdram_bankmachine3_row_opened = 1'd0;
wire soc_netsoc_sdram_bankmachine3_row_hit;
reg soc_netsoc_sdram_bankmachine3_row_open = 1'd0;
reg soc_netsoc_sdram_bankmachine3_row_close = 1'd0;
reg soc_netsoc_sdram_bankmachine3_row_col_n_addr_sel = 1'd0;
wire soc_netsoc_sdram_bankmachine3_twtpcon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_bankmachine3_twtpcon_ready = 1'd1;
reg [2:0] soc_netsoc_sdram_bankmachine3_twtpcon_count = 3'd0;
wire soc_netsoc_sdram_bankmachine3_trccon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_bankmachine3_trccon_ready = 1'd1;
wire soc_netsoc_sdram_bankmachine3_trascon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_bankmachine3_trascon_ready = 1'd1;
wire soc_netsoc_sdram_bankmachine4_req_valid;
wire soc_netsoc_sdram_bankmachine4_req_ready;
wire soc_netsoc_sdram_bankmachine4_req_we;
wire [20:0] soc_netsoc_sdram_bankmachine4_req_addr;
wire soc_netsoc_sdram_bankmachine4_req_lock;
reg soc_netsoc_sdram_bankmachine4_req_wdata_ready = 1'd0;
reg soc_netsoc_sdram_bankmachine4_req_rdata_valid = 1'd0;
wire soc_netsoc_sdram_bankmachine4_refresh_req;
reg soc_netsoc_sdram_bankmachine4_refresh_gnt = 1'd0;
reg soc_netsoc_sdram_bankmachine4_cmd_valid = 1'd0;
reg soc_netsoc_sdram_bankmachine4_cmd_ready = 1'd0;
reg [12:0] soc_netsoc_sdram_bankmachine4_cmd_payload_a = 13'd0;
wire [2:0] soc_netsoc_sdram_bankmachine4_cmd_payload_ba;
reg soc_netsoc_sdram_bankmachine4_cmd_payload_cas = 1'd0;
reg soc_netsoc_sdram_bankmachine4_cmd_payload_ras = 1'd0;
reg soc_netsoc_sdram_bankmachine4_cmd_payload_we = 1'd0;
reg soc_netsoc_sdram_bankmachine4_cmd_payload_is_cmd = 1'd0;
reg soc_netsoc_sdram_bankmachine4_cmd_payload_is_read = 1'd0;
reg soc_netsoc_sdram_bankmachine4_cmd_payload_is_write = 1'd0;
reg soc_netsoc_sdram_bankmachine4_auto_precharge = 1'd0;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_valid;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_ready;
reg soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_first = 1'd0;
reg soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_last = 1'd0;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_addr;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_valid;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_ready;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_first;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_last;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_addr;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_we;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_re;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable;
wire [23:0] soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_din;
wire [23:0] soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_dout;
reg [3:0] soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_level = 4'd0;
reg soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_dat_r;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_we;
wire [23:0] soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_dat_w;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_do_read;
wire [2:0] soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_rdport_adr;
wire [23:0] soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_rdport_dat_r;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_addr;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_first;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_last;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_addr;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_first;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_last;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_sink_valid;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_sink_ready;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_sink_first;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_sink_last;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_sink_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine4_cmd_buffer_sink_payload_addr;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_source_valid;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_source_ready;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_source_first;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_source_last;
reg soc_netsoc_sdram_bankmachine4_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] soc_netsoc_sdram_bankmachine4_cmd_buffer_source_payload_addr = 21'd0;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_pipe_ce;
wire soc_netsoc_sdram_bankmachine4_cmd_buffer_busy;
reg soc_netsoc_sdram_bankmachine4_cmd_buffer_valid_n = 1'd0;
reg soc_netsoc_sdram_bankmachine4_cmd_buffer_first_n = 1'd0;
reg soc_netsoc_sdram_bankmachine4_cmd_buffer_last_n = 1'd0;
reg [12:0] soc_netsoc_sdram_bankmachine4_row = 13'd0;
reg soc_netsoc_sdram_bankmachine4_row_opened = 1'd0;
wire soc_netsoc_sdram_bankmachine4_row_hit;
reg soc_netsoc_sdram_bankmachine4_row_open = 1'd0;
reg soc_netsoc_sdram_bankmachine4_row_close = 1'd0;
reg soc_netsoc_sdram_bankmachine4_row_col_n_addr_sel = 1'd0;
wire soc_netsoc_sdram_bankmachine4_twtpcon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_bankmachine4_twtpcon_ready = 1'd1;
reg [2:0] soc_netsoc_sdram_bankmachine4_twtpcon_count = 3'd0;
wire soc_netsoc_sdram_bankmachine4_trccon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_bankmachine4_trccon_ready = 1'd1;
wire soc_netsoc_sdram_bankmachine4_trascon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_bankmachine4_trascon_ready = 1'd1;
wire soc_netsoc_sdram_bankmachine5_req_valid;
wire soc_netsoc_sdram_bankmachine5_req_ready;
wire soc_netsoc_sdram_bankmachine5_req_we;
wire [20:0] soc_netsoc_sdram_bankmachine5_req_addr;
wire soc_netsoc_sdram_bankmachine5_req_lock;
reg soc_netsoc_sdram_bankmachine5_req_wdata_ready = 1'd0;
reg soc_netsoc_sdram_bankmachine5_req_rdata_valid = 1'd0;
wire soc_netsoc_sdram_bankmachine5_refresh_req;
reg soc_netsoc_sdram_bankmachine5_refresh_gnt = 1'd0;
reg soc_netsoc_sdram_bankmachine5_cmd_valid = 1'd0;
reg soc_netsoc_sdram_bankmachine5_cmd_ready = 1'd0;
reg [12:0] soc_netsoc_sdram_bankmachine5_cmd_payload_a = 13'd0;
wire [2:0] soc_netsoc_sdram_bankmachine5_cmd_payload_ba;
reg soc_netsoc_sdram_bankmachine5_cmd_payload_cas = 1'd0;
reg soc_netsoc_sdram_bankmachine5_cmd_payload_ras = 1'd0;
reg soc_netsoc_sdram_bankmachine5_cmd_payload_we = 1'd0;
reg soc_netsoc_sdram_bankmachine5_cmd_payload_is_cmd = 1'd0;
reg soc_netsoc_sdram_bankmachine5_cmd_payload_is_read = 1'd0;
reg soc_netsoc_sdram_bankmachine5_cmd_payload_is_write = 1'd0;
reg soc_netsoc_sdram_bankmachine5_auto_precharge = 1'd0;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_valid;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_ready;
reg soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_first = 1'd0;
reg soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_last = 1'd0;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_addr;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_valid;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_ready;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_first;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_last;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_addr;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_we;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_re;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable;
wire [23:0] soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_din;
wire [23:0] soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_dout;
reg [3:0] soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_level = 4'd0;
reg soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_dat_r;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_we;
wire [23:0] soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_dat_w;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_do_read;
wire [2:0] soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_rdport_adr;
wire [23:0] soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_rdport_dat_r;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_addr;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_first;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_last;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_addr;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_first;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_last;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_sink_valid;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_sink_ready;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_sink_first;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_sink_last;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_sink_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine5_cmd_buffer_sink_payload_addr;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_source_valid;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_source_ready;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_source_first;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_source_last;
reg soc_netsoc_sdram_bankmachine5_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] soc_netsoc_sdram_bankmachine5_cmd_buffer_source_payload_addr = 21'd0;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_pipe_ce;
wire soc_netsoc_sdram_bankmachine5_cmd_buffer_busy;
reg soc_netsoc_sdram_bankmachine5_cmd_buffer_valid_n = 1'd0;
reg soc_netsoc_sdram_bankmachine5_cmd_buffer_first_n = 1'd0;
reg soc_netsoc_sdram_bankmachine5_cmd_buffer_last_n = 1'd0;
reg [12:0] soc_netsoc_sdram_bankmachine5_row = 13'd0;
reg soc_netsoc_sdram_bankmachine5_row_opened = 1'd0;
wire soc_netsoc_sdram_bankmachine5_row_hit;
reg soc_netsoc_sdram_bankmachine5_row_open = 1'd0;
reg soc_netsoc_sdram_bankmachine5_row_close = 1'd0;
reg soc_netsoc_sdram_bankmachine5_row_col_n_addr_sel = 1'd0;
wire soc_netsoc_sdram_bankmachine5_twtpcon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_bankmachine5_twtpcon_ready = 1'd1;
reg [2:0] soc_netsoc_sdram_bankmachine5_twtpcon_count = 3'd0;
wire soc_netsoc_sdram_bankmachine5_trccon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_bankmachine5_trccon_ready = 1'd1;
wire soc_netsoc_sdram_bankmachine5_trascon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_bankmachine5_trascon_ready = 1'd1;
wire soc_netsoc_sdram_bankmachine6_req_valid;
wire soc_netsoc_sdram_bankmachine6_req_ready;
wire soc_netsoc_sdram_bankmachine6_req_we;
wire [20:0] soc_netsoc_sdram_bankmachine6_req_addr;
wire soc_netsoc_sdram_bankmachine6_req_lock;
reg soc_netsoc_sdram_bankmachine6_req_wdata_ready = 1'd0;
reg soc_netsoc_sdram_bankmachine6_req_rdata_valid = 1'd0;
wire soc_netsoc_sdram_bankmachine6_refresh_req;
reg soc_netsoc_sdram_bankmachine6_refresh_gnt = 1'd0;
reg soc_netsoc_sdram_bankmachine6_cmd_valid = 1'd0;
reg soc_netsoc_sdram_bankmachine6_cmd_ready = 1'd0;
reg [12:0] soc_netsoc_sdram_bankmachine6_cmd_payload_a = 13'd0;
wire [2:0] soc_netsoc_sdram_bankmachine6_cmd_payload_ba;
reg soc_netsoc_sdram_bankmachine6_cmd_payload_cas = 1'd0;
reg soc_netsoc_sdram_bankmachine6_cmd_payload_ras = 1'd0;
reg soc_netsoc_sdram_bankmachine6_cmd_payload_we = 1'd0;
reg soc_netsoc_sdram_bankmachine6_cmd_payload_is_cmd = 1'd0;
reg soc_netsoc_sdram_bankmachine6_cmd_payload_is_read = 1'd0;
reg soc_netsoc_sdram_bankmachine6_cmd_payload_is_write = 1'd0;
reg soc_netsoc_sdram_bankmachine6_auto_precharge = 1'd0;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_valid;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_ready;
reg soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_first = 1'd0;
reg soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_last = 1'd0;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_addr;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_valid;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_ready;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_first;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_last;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_addr;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_we;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_re;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable;
wire [23:0] soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_din;
wire [23:0] soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_dout;
reg [3:0] soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_level = 4'd0;
reg soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_dat_r;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_we;
wire [23:0] soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_dat_w;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_do_read;
wire [2:0] soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_rdport_adr;
wire [23:0] soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_rdport_dat_r;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_addr;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_first;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_last;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_addr;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_first;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_last;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_sink_valid;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_sink_ready;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_sink_first;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_sink_last;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_sink_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine6_cmd_buffer_sink_payload_addr;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_source_valid;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_source_ready;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_source_first;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_source_last;
reg soc_netsoc_sdram_bankmachine6_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] soc_netsoc_sdram_bankmachine6_cmd_buffer_source_payload_addr = 21'd0;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_pipe_ce;
wire soc_netsoc_sdram_bankmachine6_cmd_buffer_busy;
reg soc_netsoc_sdram_bankmachine6_cmd_buffer_valid_n = 1'd0;
reg soc_netsoc_sdram_bankmachine6_cmd_buffer_first_n = 1'd0;
reg soc_netsoc_sdram_bankmachine6_cmd_buffer_last_n = 1'd0;
reg [12:0] soc_netsoc_sdram_bankmachine6_row = 13'd0;
reg soc_netsoc_sdram_bankmachine6_row_opened = 1'd0;
wire soc_netsoc_sdram_bankmachine6_row_hit;
reg soc_netsoc_sdram_bankmachine6_row_open = 1'd0;
reg soc_netsoc_sdram_bankmachine6_row_close = 1'd0;
reg soc_netsoc_sdram_bankmachine6_row_col_n_addr_sel = 1'd0;
wire soc_netsoc_sdram_bankmachine6_twtpcon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_bankmachine6_twtpcon_ready = 1'd1;
reg [2:0] soc_netsoc_sdram_bankmachine6_twtpcon_count = 3'd0;
wire soc_netsoc_sdram_bankmachine6_trccon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_bankmachine6_trccon_ready = 1'd1;
wire soc_netsoc_sdram_bankmachine6_trascon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_bankmachine6_trascon_ready = 1'd1;
wire soc_netsoc_sdram_bankmachine7_req_valid;
wire soc_netsoc_sdram_bankmachine7_req_ready;
wire soc_netsoc_sdram_bankmachine7_req_we;
wire [20:0] soc_netsoc_sdram_bankmachine7_req_addr;
wire soc_netsoc_sdram_bankmachine7_req_lock;
reg soc_netsoc_sdram_bankmachine7_req_wdata_ready = 1'd0;
reg soc_netsoc_sdram_bankmachine7_req_rdata_valid = 1'd0;
wire soc_netsoc_sdram_bankmachine7_refresh_req;
reg soc_netsoc_sdram_bankmachine7_refresh_gnt = 1'd0;
reg soc_netsoc_sdram_bankmachine7_cmd_valid = 1'd0;
reg soc_netsoc_sdram_bankmachine7_cmd_ready = 1'd0;
reg [12:0] soc_netsoc_sdram_bankmachine7_cmd_payload_a = 13'd0;
wire [2:0] soc_netsoc_sdram_bankmachine7_cmd_payload_ba;
reg soc_netsoc_sdram_bankmachine7_cmd_payload_cas = 1'd0;
reg soc_netsoc_sdram_bankmachine7_cmd_payload_ras = 1'd0;
reg soc_netsoc_sdram_bankmachine7_cmd_payload_we = 1'd0;
reg soc_netsoc_sdram_bankmachine7_cmd_payload_is_cmd = 1'd0;
reg soc_netsoc_sdram_bankmachine7_cmd_payload_is_read = 1'd0;
reg soc_netsoc_sdram_bankmachine7_cmd_payload_is_write = 1'd0;
reg soc_netsoc_sdram_bankmachine7_auto_precharge = 1'd0;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_valid;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_ready;
reg soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_first = 1'd0;
reg soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_last = 1'd0;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_addr;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_valid;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_ready;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_first;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_last;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_addr;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_we;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_re;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable;
wire [23:0] soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_din;
wire [23:0] soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_dout;
reg [3:0] soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_level = 4'd0;
reg soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_dat_r;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_we;
wire [23:0] soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_dat_w;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_do_read;
wire [2:0] soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_rdport_adr;
wire [23:0] soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_rdport_dat_r;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_addr;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_first;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_last;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_addr;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_first;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_last;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_sink_valid;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_sink_ready;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_sink_first;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_sink_last;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_sink_payload_we;
wire [20:0] soc_netsoc_sdram_bankmachine7_cmd_buffer_sink_payload_addr;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_source_valid;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_source_ready;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_source_first;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_source_last;
reg soc_netsoc_sdram_bankmachine7_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] soc_netsoc_sdram_bankmachine7_cmd_buffer_source_payload_addr = 21'd0;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_pipe_ce;
wire soc_netsoc_sdram_bankmachine7_cmd_buffer_busy;
reg soc_netsoc_sdram_bankmachine7_cmd_buffer_valid_n = 1'd0;
reg soc_netsoc_sdram_bankmachine7_cmd_buffer_first_n = 1'd0;
reg soc_netsoc_sdram_bankmachine7_cmd_buffer_last_n = 1'd0;
reg [12:0] soc_netsoc_sdram_bankmachine7_row = 13'd0;
reg soc_netsoc_sdram_bankmachine7_row_opened = 1'd0;
wire soc_netsoc_sdram_bankmachine7_row_hit;
reg soc_netsoc_sdram_bankmachine7_row_open = 1'd0;
reg soc_netsoc_sdram_bankmachine7_row_close = 1'd0;
reg soc_netsoc_sdram_bankmachine7_row_col_n_addr_sel = 1'd0;
wire soc_netsoc_sdram_bankmachine7_twtpcon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_bankmachine7_twtpcon_ready = 1'd1;
reg [2:0] soc_netsoc_sdram_bankmachine7_twtpcon_count = 3'd0;
wire soc_netsoc_sdram_bankmachine7_trccon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_bankmachine7_trccon_ready = 1'd1;
wire soc_netsoc_sdram_bankmachine7_trascon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_bankmachine7_trascon_ready = 1'd1;
wire soc_netsoc_sdram_ras_allowed;
wire soc_netsoc_sdram_cas_allowed;
reg soc_netsoc_sdram_choose_cmd_want_reads = 1'd0;
reg soc_netsoc_sdram_choose_cmd_want_writes = 1'd0;
reg soc_netsoc_sdram_choose_cmd_want_cmds = 1'd0;
reg soc_netsoc_sdram_choose_cmd_want_activates = 1'd0;
wire soc_netsoc_sdram_choose_cmd_cmd_valid;
reg soc_netsoc_sdram_choose_cmd_cmd_ready = 1'd0;
wire [12:0] soc_netsoc_sdram_choose_cmd_cmd_payload_a;
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
reg soc_netsoc_sdram_choose_req_want_activates = 1'd0;
wire soc_netsoc_sdram_choose_req_cmd_valid;
reg soc_netsoc_sdram_choose_req_cmd_ready = 1'd0;
wire [12:0] soc_netsoc_sdram_choose_req_cmd_payload_a;
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
reg [12:0] soc_netsoc_sdram_nop_a = 13'd0;
reg [2:0] soc_netsoc_sdram_nop_ba = 3'd0;
reg [1:0] soc_netsoc_sdram_steerer_sel0 = 2'd0;
reg [1:0] soc_netsoc_sdram_steerer_sel1 = 2'd0;
reg soc_netsoc_sdram_steerer0 = 1'd1;
reg soc_netsoc_sdram_steerer1 = 1'd1;
reg soc_netsoc_sdram_steerer2 = 1'd1;
reg soc_netsoc_sdram_steerer3 = 1'd1;
wire soc_netsoc_sdram_trrdcon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_trrdcon_ready = 1'd1;
wire soc_netsoc_sdram_tfawcon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_tfawcon_ready = 1'd1;
wire soc_netsoc_sdram_tccdcon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_tccdcon_ready = 1'd1;
reg soc_netsoc_sdram_tccdcon_count = 1'd0;
wire soc_netsoc_sdram_twtrcon_valid;
(* register_balancing = "no" *) reg soc_netsoc_sdram_twtrcon_ready = 1'd1;
reg [2:0] soc_netsoc_sdram_twtrcon_count = 3'd0;
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
reg [6:0] soc_netsoc_sdram_bandwidth_data_width_status = 7'd64;
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
reg [23:0] soc_netsoc_port_cmd_payload_addr = 24'd0;
reg soc_netsoc_port_wdata_valid = 1'd0;
wire soc_netsoc_port_wdata_ready;
reg [63:0] soc_netsoc_port_wdata_payload_data = 64'd0;
reg [7:0] soc_netsoc_port_wdata_payload_we = 8'd0;
wire soc_netsoc_port_rdata_valid;
reg soc_netsoc_port_rdata_ready = 1'd0;
wire [63:0] soc_netsoc_port_rdata_payload_data;
wire [29:0] soc_netsoc_adr;
wire [63:0] soc_netsoc_dat_w;
reg [63:0] soc_netsoc_dat_r = 64'd0;
wire [7:0] soc_netsoc_sel;
reg soc_netsoc_cyc = 1'd0;
reg soc_netsoc_stb = 1'd0;
reg soc_netsoc_ack = 1'd0;
reg soc_netsoc_we = 1'd0;
wire [9:0] soc_netsoc_data_port_adr;
wire [63:0] soc_netsoc_data_port_dat_r;
reg [7:0] soc_netsoc_data_port_we = 8'd0;
reg [63:0] soc_netsoc_data_port_dat_w = 64'd0;
reg soc_netsoc_write_from_slave = 1'd0;
reg soc_netsoc_adr_offset_r = 1'd0;
wire [9:0] soc_netsoc_tag_port_adr;
wire [21:0] soc_netsoc_tag_port_dat_r;
reg soc_netsoc_tag_port_we = 1'd0;
wire [21:0] soc_netsoc_tag_port_dat_w;
wire [20:0] soc_netsoc_tag_do_tag;
wire soc_netsoc_tag_do_dirty;
wire [20:0] soc_netsoc_tag_di_tag;
reg soc_netsoc_tag_di_dirty = 1'd0;
reg soc_netsoc_word_clr = 1'd0;
reg soc_netsoc_word_inc = 1'd0;
reg soc_mode0 = 1'd0;
wire soc_mode_status;
reg soc_mode1 = 1'd0;
reg soc_update_mode = 1'd0;
wire soc_eth_tick;
reg [9:0] soc_eth_counter = 10'd0;
wire soc_sys_tick;
wire soc_i;
wire soc_o;
reg soc_toggle_i = 1'd0;
wire soc_toggle_o;
reg soc_toggle_o_r = 1'd0;
reg [23:0] soc_sys_counter = 24'd0;
reg soc_sys_counter_reset = 1'd0;
reg soc_sys_counter_ce = 1'd0;
reg soc_reset_storage_full = 1'd0;
wire soc_reset_storage;
reg soc_reset_re = 1'd0;
(* keep = "true" *) wire eth_rx_clk;
wire eth_rx_rst;
(* keep = "true" *) wire eth_tx_clk;
wire eth_tx_rst;
wire soc_reset0;
wire soc_reset1;
reg [8:0] soc_counter = 9'd0;
wire soc_counter_done;
wire soc_counter_ce;
wire soc_liteethphygmiimiitx_sink_sink_valid0;
wire soc_liteethphygmiimiitx_sink_sink_ready0;
wire soc_liteethphygmiimiitx_sink_sink_first0;
wire soc_liteethphygmiimiitx_sink_sink_last0;
wire [7:0] soc_liteethphygmiimiitx_sink_sink_payload_data0;
wire soc_liteethphygmiimiitx_sink_sink_payload_last_be0;
wire soc_liteethphygmiimiitx_sink_sink_payload_error0;
reg soc_liteethphygmiimiitx_gmii_tx_pads_tx_er = 1'd0;
reg soc_liteethphygmiimiitx_gmii_tx_pads_tx_en = 1'd0;
reg [7:0] soc_liteethphygmiimiitx_gmii_tx_pads_tx_data = 8'd0;
wire soc_liteethphygmiimiitx_gmii_tx_sink_valid;
reg soc_liteethphygmiimiitx_gmii_tx_sink_ready = 1'd0;
wire soc_liteethphygmiimiitx_gmii_tx_sink_first;
wire soc_liteethphygmiimiitx_gmii_tx_sink_last;
wire [7:0] soc_liteethphygmiimiitx_gmii_tx_sink_payload_data;
wire soc_liteethphygmiimiitx_gmii_tx_sink_payload_last_be;
wire soc_liteethphygmiimiitx_gmii_tx_sink_payload_error;
reg soc_liteethphygmiimiitx_mii_tx_pads_tx_er = 1'd0;
reg soc_liteethphygmiimiitx_mii_tx_pads_tx_en = 1'd0;
reg [7:0] soc_liteethphygmiimiitx_mii_tx_pads_tx_data = 8'd0;
wire soc_liteethphygmiimiitx_sink_sink_valid1;
wire soc_liteethphygmiimiitx_sink_sink_ready1;
wire soc_liteethphygmiimiitx_sink_sink_first1;
wire soc_liteethphygmiimiitx_sink_sink_last1;
wire [7:0] soc_liteethphygmiimiitx_sink_sink_payload_data1;
wire soc_liteethphygmiimiitx_sink_sink_payload_last_be1;
wire soc_liteethphygmiimiitx_sink_sink_payload_error1;
wire soc_liteethphygmiimiitx_converter_sink_valid;
wire soc_liteethphygmiimiitx_converter_sink_ready;
reg soc_liteethphygmiimiitx_converter_sink_first = 1'd0;
reg soc_liteethphygmiimiitx_converter_sink_last = 1'd0;
wire [7:0] soc_liteethphygmiimiitx_converter_sink_payload_data;
wire soc_liteethphygmiimiitx_converter_source_valid;
wire soc_liteethphygmiimiitx_converter_source_ready;
wire soc_liteethphygmiimiitx_converter_source_first;
wire soc_liteethphygmiimiitx_converter_source_last;
wire [3:0] soc_liteethphygmiimiitx_converter_source_payload_data;
wire soc_liteethphygmiimiitx_converter_converter_sink_valid;
wire soc_liteethphygmiimiitx_converter_converter_sink_ready;
wire soc_liteethphygmiimiitx_converter_converter_sink_first;
wire soc_liteethphygmiimiitx_converter_converter_sink_last;
reg [7:0] soc_liteethphygmiimiitx_converter_converter_sink_payload_data = 8'd0;
wire soc_liteethphygmiimiitx_converter_converter_source_valid;
wire soc_liteethphygmiimiitx_converter_converter_source_ready;
wire soc_liteethphygmiimiitx_converter_converter_source_first;
wire soc_liteethphygmiimiitx_converter_converter_source_last;
reg [3:0] soc_liteethphygmiimiitx_converter_converter_source_payload_data = 4'd0;
wire soc_liteethphygmiimiitx_converter_converter_source_payload_valid_token_count;
reg soc_liteethphygmiimiitx_converter_converter_mux = 1'd0;
wire soc_liteethphygmiimiitx_converter_converter_first;
wire soc_liteethphygmiimiitx_converter_converter_last;
wire soc_liteethphygmiimiitx_converter_source_source_valid;
wire soc_liteethphygmiimiitx_converter_source_source_ready;
wire soc_liteethphygmiimiitx_converter_source_source_first;
wire soc_liteethphygmiimiitx_converter_source_source_last;
wire [3:0] soc_liteethphygmiimiitx_converter_source_source_payload_data;
wire soc_liteethphygmiimiitx_demux_sink_valid;
reg soc_liteethphygmiimiitx_demux_sink_ready = 1'd0;
wire soc_liteethphygmiimiitx_demux_sink_first;
wire soc_liteethphygmiimiitx_demux_sink_last;
wire [7:0] soc_liteethphygmiimiitx_demux_sink_payload_data;
wire soc_liteethphygmiimiitx_demux_sink_payload_last_be;
wire soc_liteethphygmiimiitx_demux_sink_payload_error;
reg soc_liteethphygmiimiitx_demux_endpoint0_source_valid = 1'd0;
wire soc_liteethphygmiimiitx_demux_endpoint0_source_ready;
reg soc_liteethphygmiimiitx_demux_endpoint0_source_first = 1'd0;
reg soc_liteethphygmiimiitx_demux_endpoint0_source_last = 1'd0;
reg [7:0] soc_liteethphygmiimiitx_demux_endpoint0_source_payload_data = 8'd0;
reg soc_liteethphygmiimiitx_demux_endpoint0_source_payload_last_be = 1'd0;
reg soc_liteethphygmiimiitx_demux_endpoint0_source_payload_error = 1'd0;
reg soc_liteethphygmiimiitx_demux_endpoint1_source_valid = 1'd0;
wire soc_liteethphygmiimiitx_demux_endpoint1_source_ready;
reg soc_liteethphygmiimiitx_demux_endpoint1_source_first = 1'd0;
reg soc_liteethphygmiimiitx_demux_endpoint1_source_last = 1'd0;
reg [7:0] soc_liteethphygmiimiitx_demux_endpoint1_source_payload_data = 8'd0;
reg soc_liteethphygmiimiitx_demux_endpoint1_source_payload_last_be = 1'd0;
reg soc_liteethphygmiimiitx_demux_endpoint1_source_payload_error = 1'd0;
wire soc_liteethphygmiimiitx_demux_sel;
wire soc_liteethphygmiimiirx_source_source_valid0;
wire soc_liteethphygmiimiirx_source_source_ready0;
wire soc_liteethphygmiimiirx_source_source_first0;
wire soc_liteethphygmiimiirx_source_source_last0;
wire [7:0] soc_liteethphygmiimiirx_source_source_payload_data0;
wire soc_liteethphygmiimiirx_source_source_payload_last_be0;
wire soc_liteethphygmiimiirx_source_source_payload_error0;
reg soc_liteethphygmiimiirx_pads_d_rx_dv = 1'd0;
reg [7:0] soc_liteethphygmiimiirx_pads_d_rx_data = 8'd0;
reg soc_liteethphygmiimiirx_gmii_rx_source_valid = 1'd0;
wire soc_liteethphygmiimiirx_gmii_rx_source_ready;
reg soc_liteethphygmiimiirx_gmii_rx_source_first = 1'd0;
wire soc_liteethphygmiimiirx_gmii_rx_source_last;
reg [7:0] soc_liteethphygmiimiirx_gmii_rx_source_payload_data = 8'd0;
reg soc_liteethphygmiimiirx_gmii_rx_source_payload_last_be = 1'd0;
reg soc_liteethphygmiimiirx_gmii_rx_source_payload_error = 1'd0;
reg soc_liteethphygmiimiirx_gmii_rx_dv_d = 1'd0;
wire soc_liteethphygmiimiirx_source_source_valid1;
wire soc_liteethphygmiimiirx_source_source_ready1;
wire soc_liteethphygmiimiirx_source_source_first1;
wire soc_liteethphygmiimiirx_source_source_last1;
wire [7:0] soc_liteethphygmiimiirx_source_source_payload_data1;
reg soc_liteethphygmiimiirx_source_source_payload_last_be1 = 1'd0;
reg soc_liteethphygmiimiirx_source_source_payload_error1 = 1'd0;
reg soc_liteethphygmiimiirx_converter_sink_valid = 1'd0;
wire soc_liteethphygmiimiirx_converter_sink_ready;
reg soc_liteethphygmiimiirx_converter_sink_first = 1'd0;
wire soc_liteethphygmiimiirx_converter_sink_last;
reg [3:0] soc_liteethphygmiimiirx_converter_sink_payload_data = 4'd0;
wire soc_liteethphygmiimiirx_converter_source_valid;
wire soc_liteethphygmiimiirx_converter_source_ready;
wire soc_liteethphygmiimiirx_converter_source_first;
wire soc_liteethphygmiimiirx_converter_source_last;
reg [7:0] soc_liteethphygmiimiirx_converter_source_payload_data = 8'd0;
wire soc_liteethphygmiimiirx_converter_converter_sink_valid;
wire soc_liteethphygmiimiirx_converter_converter_sink_ready;
wire soc_liteethphygmiimiirx_converter_converter_sink_first;
wire soc_liteethphygmiimiirx_converter_converter_sink_last;
wire [3:0] soc_liteethphygmiimiirx_converter_converter_sink_payload_data;
wire soc_liteethphygmiimiirx_converter_converter_source_valid;
wire soc_liteethphygmiimiirx_converter_converter_source_ready;
reg soc_liteethphygmiimiirx_converter_converter_source_first = 1'd0;
reg soc_liteethphygmiimiirx_converter_converter_source_last = 1'd0;
reg [7:0] soc_liteethphygmiimiirx_converter_converter_source_payload_data = 8'd0;
reg [1:0] soc_liteethphygmiimiirx_converter_converter_source_payload_valid_token_count = 2'd0;
reg soc_liteethphygmiimiirx_converter_converter_demux = 1'd0;
wire soc_liteethphygmiimiirx_converter_converter_load_part;
reg soc_liteethphygmiimiirx_converter_converter_strobe_all = 1'd0;
wire soc_liteethphygmiimiirx_converter_source_source_valid;
wire soc_liteethphygmiimiirx_converter_source_source_ready;
wire soc_liteethphygmiimiirx_converter_source_source_first;
wire soc_liteethphygmiimiirx_converter_source_source_last;
wire [7:0] soc_liteethphygmiimiirx_converter_source_source_payload_data;
reg soc_liteethphygmiimiirx_converter_reset = 1'd0;
reg soc_liteethphygmiimiirx_mux_source_valid = 1'd0;
wire soc_liteethphygmiimiirx_mux_source_ready;
reg soc_liteethphygmiimiirx_mux_source_first = 1'd0;
reg soc_liteethphygmiimiirx_mux_source_last = 1'd0;
reg [7:0] soc_liteethphygmiimiirx_mux_source_payload_data = 8'd0;
reg soc_liteethphygmiimiirx_mux_source_payload_last_be = 1'd0;
reg soc_liteethphygmiimiirx_mux_source_payload_error = 1'd0;
wire soc_liteethphygmiimiirx_mux_endpoint0_sink_valid;
reg soc_liteethphygmiimiirx_mux_endpoint0_sink_ready = 1'd0;
wire soc_liteethphygmiimiirx_mux_endpoint0_sink_first;
wire soc_liteethphygmiimiirx_mux_endpoint0_sink_last;
wire [7:0] soc_liteethphygmiimiirx_mux_endpoint0_sink_payload_data;
wire soc_liteethphygmiimiirx_mux_endpoint0_sink_payload_last_be;
wire soc_liteethphygmiimiirx_mux_endpoint0_sink_payload_error;
wire soc_liteethphygmiimiirx_mux_endpoint1_sink_valid;
reg soc_liteethphygmiimiirx_mux_endpoint1_sink_ready = 1'd0;
wire soc_liteethphygmiimiirx_mux_endpoint1_sink_first;
wire soc_liteethphygmiimiirx_mux_endpoint1_sink_last;
wire [7:0] soc_liteethphygmiimiirx_mux_endpoint1_sink_payload_data;
wire soc_liteethphygmiimiirx_mux_endpoint1_sink_payload_last_be;
wire soc_liteethphygmiimiirx_mux_endpoint1_sink_payload_error;
wire soc_liteethphygmiimiirx_mux_sel;
reg [2:0] soc_storage_full = 3'd0;
wire [2:0] soc_storage;
reg soc_re = 1'd0;
wire soc_status;
wire soc_data_w;
wire soc_data_oe;
wire soc_data_r;
wire soc_tx_gap_inserter_sink_valid;
reg soc_tx_gap_inserter_sink_ready = 1'd0;
wire soc_tx_gap_inserter_sink_first;
wire soc_tx_gap_inserter_sink_last;
wire [7:0] soc_tx_gap_inserter_sink_payload_data;
wire soc_tx_gap_inserter_sink_payload_last_be;
wire soc_tx_gap_inserter_sink_payload_error;
reg soc_tx_gap_inserter_source_valid = 1'd0;
wire soc_tx_gap_inserter_source_ready;
reg soc_tx_gap_inserter_source_first = 1'd0;
reg soc_tx_gap_inserter_source_last = 1'd0;
reg [7:0] soc_tx_gap_inserter_source_payload_data = 8'd0;
reg soc_tx_gap_inserter_source_payload_last_be = 1'd0;
reg soc_tx_gap_inserter_source_payload_error = 1'd0;
reg [3:0] soc_tx_gap_inserter_counter = 4'd0;
reg soc_tx_gap_inserter_counter_reset = 1'd0;
reg soc_tx_gap_inserter_counter_ce = 1'd0;
reg soc_preamble_crc_status = 1'd1;
reg [31:0] soc_preamble_errors_status = 32'd0;
reg [31:0] soc_crc_errors_status = 32'd0;
wire soc_preamble_inserter_sink_valid;
reg soc_preamble_inserter_sink_ready = 1'd0;
wire soc_preamble_inserter_sink_first;
wire soc_preamble_inserter_sink_last;
wire [7:0] soc_preamble_inserter_sink_payload_data;
wire soc_preamble_inserter_sink_payload_last_be;
wire soc_preamble_inserter_sink_payload_error;
reg soc_preamble_inserter_source_valid = 1'd0;
wire soc_preamble_inserter_source_ready;
reg soc_preamble_inserter_source_first = 1'd0;
reg soc_preamble_inserter_source_last = 1'd0;
reg [7:0] soc_preamble_inserter_source_payload_data = 8'd0;
wire soc_preamble_inserter_source_payload_last_be;
reg soc_preamble_inserter_source_payload_error = 1'd0;
reg [63:0] soc_preamble_inserter_preamble = 64'd15372286728091293013;
reg [2:0] soc_preamble_inserter_cnt = 3'd0;
reg soc_preamble_inserter_clr_cnt = 1'd0;
reg soc_preamble_inserter_inc_cnt = 1'd0;
wire soc_preamble_checker_sink_valid;
reg soc_preamble_checker_sink_ready = 1'd0;
wire soc_preamble_checker_sink_first;
wire soc_preamble_checker_sink_last;
wire [7:0] soc_preamble_checker_sink_payload_data;
wire soc_preamble_checker_sink_payload_last_be;
wire soc_preamble_checker_sink_payload_error;
reg soc_preamble_checker_source_valid = 1'd0;
wire soc_preamble_checker_source_ready;
reg soc_preamble_checker_source_first = 1'd0;
reg soc_preamble_checker_source_last = 1'd0;
wire [7:0] soc_preamble_checker_source_payload_data;
wire soc_preamble_checker_source_payload_last_be;
reg soc_preamble_checker_source_payload_error = 1'd0;
reg soc_preamble_checker_error = 1'd0;
wire soc_crc32_inserter_sink_valid;
reg soc_crc32_inserter_sink_ready = 1'd0;
wire soc_crc32_inserter_sink_first;
wire soc_crc32_inserter_sink_last;
wire [7:0] soc_crc32_inserter_sink_payload_data;
wire soc_crc32_inserter_sink_payload_last_be;
wire soc_crc32_inserter_sink_payload_error;
reg soc_crc32_inserter_source_valid = 1'd0;
wire soc_crc32_inserter_source_ready;
reg soc_crc32_inserter_source_first = 1'd0;
reg soc_crc32_inserter_source_last = 1'd0;
reg [7:0] soc_crc32_inserter_source_payload_data = 8'd0;
reg soc_crc32_inserter_source_payload_last_be = 1'd0;
reg soc_crc32_inserter_source_payload_error = 1'd0;
reg [7:0] soc_crc32_inserter_data0 = 8'd0;
wire [31:0] soc_crc32_inserter_value;
wire soc_crc32_inserter_error;
wire [7:0] soc_crc32_inserter_data1;
wire [31:0] soc_crc32_inserter_last;
reg [31:0] soc_crc32_inserter_next = 32'd0;
reg [31:0] soc_crc32_inserter_reg = 32'd4294967295;
reg soc_crc32_inserter_ce = 1'd0;
reg soc_crc32_inserter_reset = 1'd0;
reg [1:0] soc_crc32_inserter_cnt = 2'd3;
wire soc_crc32_inserter_cnt_done;
reg soc_crc32_inserter_is_ongoing0 = 1'd0;
reg soc_crc32_inserter_is_ongoing1 = 1'd0;
wire soc_crc32_checker_sink_sink_valid;
reg soc_crc32_checker_sink_sink_ready = 1'd0;
wire soc_crc32_checker_sink_sink_first;
wire soc_crc32_checker_sink_sink_last;
wire [7:0] soc_crc32_checker_sink_sink_payload_data;
wire soc_crc32_checker_sink_sink_payload_last_be;
wire soc_crc32_checker_sink_sink_payload_error;
wire soc_crc32_checker_source_source_valid;
wire soc_crc32_checker_source_source_ready;
reg soc_crc32_checker_source_source_first = 1'd0;
wire soc_crc32_checker_source_source_last;
wire [7:0] soc_crc32_checker_source_source_payload_data;
wire soc_crc32_checker_source_source_payload_last_be;
reg soc_crc32_checker_source_source_payload_error = 1'd0;
wire soc_crc32_checker_error;
wire [7:0] soc_crc32_checker_crc_data0;
wire [31:0] soc_crc32_checker_crc_value;
wire soc_crc32_checker_crc_error;
wire [7:0] soc_crc32_checker_crc_data1;
wire [31:0] soc_crc32_checker_crc_last;
reg [31:0] soc_crc32_checker_crc_next = 32'd0;
reg [31:0] soc_crc32_checker_crc_reg = 32'd4294967295;
reg soc_crc32_checker_crc_ce = 1'd0;
reg soc_crc32_checker_crc_reset = 1'd0;
reg soc_crc32_checker_syncfifo_sink_valid = 1'd0;
wire soc_crc32_checker_syncfifo_sink_ready;
wire soc_crc32_checker_syncfifo_sink_first;
wire soc_crc32_checker_syncfifo_sink_last;
wire [7:0] soc_crc32_checker_syncfifo_sink_payload_data;
wire soc_crc32_checker_syncfifo_sink_payload_last_be;
wire soc_crc32_checker_syncfifo_sink_payload_error;
wire soc_crc32_checker_syncfifo_source_valid;
wire soc_crc32_checker_syncfifo_source_ready;
wire soc_crc32_checker_syncfifo_source_first;
wire soc_crc32_checker_syncfifo_source_last;
wire [7:0] soc_crc32_checker_syncfifo_source_payload_data;
wire soc_crc32_checker_syncfifo_source_payload_last_be;
wire soc_crc32_checker_syncfifo_source_payload_error;
wire soc_crc32_checker_syncfifo_syncfifo_we;
wire soc_crc32_checker_syncfifo_syncfifo_writable;
wire soc_crc32_checker_syncfifo_syncfifo_re;
wire soc_crc32_checker_syncfifo_syncfifo_readable;
wire [11:0] soc_crc32_checker_syncfifo_syncfifo_din;
wire [11:0] soc_crc32_checker_syncfifo_syncfifo_dout;
reg [2:0] soc_crc32_checker_syncfifo_level = 3'd0;
reg soc_crc32_checker_syncfifo_replace = 1'd0;
reg [2:0] soc_crc32_checker_syncfifo_produce = 3'd0;
reg [2:0] soc_crc32_checker_syncfifo_consume = 3'd0;
reg [2:0] soc_crc32_checker_syncfifo_wrport_adr = 3'd0;
wire [11:0] soc_crc32_checker_syncfifo_wrport_dat_r;
wire soc_crc32_checker_syncfifo_wrport_we;
wire [11:0] soc_crc32_checker_syncfifo_wrport_dat_w;
wire soc_crc32_checker_syncfifo_do_read;
wire [2:0] soc_crc32_checker_syncfifo_rdport_adr;
wire [11:0] soc_crc32_checker_syncfifo_rdport_dat_r;
wire [7:0] soc_crc32_checker_syncfifo_fifo_in_payload_data;
wire soc_crc32_checker_syncfifo_fifo_in_payload_last_be;
wire soc_crc32_checker_syncfifo_fifo_in_payload_error;
wire soc_crc32_checker_syncfifo_fifo_in_first;
wire soc_crc32_checker_syncfifo_fifo_in_last;
wire [7:0] soc_crc32_checker_syncfifo_fifo_out_payload_data;
wire soc_crc32_checker_syncfifo_fifo_out_payload_last_be;
wire soc_crc32_checker_syncfifo_fifo_out_payload_error;
wire soc_crc32_checker_syncfifo_fifo_out_first;
wire soc_crc32_checker_syncfifo_fifo_out_last;
reg soc_crc32_checker_fifo_reset = 1'd0;
wire soc_crc32_checker_fifo_in;
wire soc_crc32_checker_fifo_out;
wire soc_crc32_checker_fifo_full;
wire soc_ps_preamble_error_i;
wire soc_ps_preamble_error_o;
reg soc_ps_preamble_error_toggle_i = 1'd0;
wire soc_ps_preamble_error_toggle_o;
reg soc_ps_preamble_error_toggle_o_r = 1'd0;
wire soc_ps_crc_error_i;
wire soc_ps_crc_error_o;
reg soc_ps_crc_error_toggle_i = 1'd0;
wire soc_ps_crc_error_toggle_o;
reg soc_ps_crc_error_toggle_o_r = 1'd0;
wire soc_padding_inserter_sink_valid;
reg soc_padding_inserter_sink_ready = 1'd0;
wire soc_padding_inserter_sink_first;
wire soc_padding_inserter_sink_last;
wire [7:0] soc_padding_inserter_sink_payload_data;
wire soc_padding_inserter_sink_payload_last_be;
wire soc_padding_inserter_sink_payload_error;
reg soc_padding_inserter_source_valid = 1'd0;
wire soc_padding_inserter_source_ready;
reg soc_padding_inserter_source_first = 1'd0;
reg soc_padding_inserter_source_last = 1'd0;
reg [7:0] soc_padding_inserter_source_payload_data = 8'd0;
reg soc_padding_inserter_source_payload_last_be = 1'd0;
reg soc_padding_inserter_source_payload_error = 1'd0;
reg [15:0] soc_padding_inserter_counter = 16'd1;
wire soc_padding_inserter_counter_done;
reg soc_padding_inserter_counter_reset = 1'd0;
reg soc_padding_inserter_counter_ce = 1'd0;
wire soc_padding_checker_sink_valid;
wire soc_padding_checker_sink_ready;
wire soc_padding_checker_sink_first;
wire soc_padding_checker_sink_last;
wire [7:0] soc_padding_checker_sink_payload_data;
wire soc_padding_checker_sink_payload_last_be;
wire soc_padding_checker_sink_payload_error;
wire soc_padding_checker_source_valid;
wire soc_padding_checker_source_ready;
wire soc_padding_checker_source_first;
wire soc_padding_checker_source_last;
wire [7:0] soc_padding_checker_source_payload_data;
wire soc_padding_checker_source_payload_last_be;
wire soc_padding_checker_source_payload_error;
wire soc_tx_last_be_sink_valid;
wire soc_tx_last_be_sink_ready;
wire soc_tx_last_be_sink_first;
wire soc_tx_last_be_sink_last;
wire [7:0] soc_tx_last_be_sink_payload_data;
wire soc_tx_last_be_sink_payload_last_be;
wire soc_tx_last_be_sink_payload_error;
wire soc_tx_last_be_source_valid;
wire soc_tx_last_be_source_ready;
reg soc_tx_last_be_source_first = 1'd0;
wire soc_tx_last_be_source_last;
wire [7:0] soc_tx_last_be_source_payload_data;
reg soc_tx_last_be_source_payload_last_be = 1'd0;
reg soc_tx_last_be_source_payload_error = 1'd0;
reg soc_tx_last_be_ongoing = 1'd1;
wire soc_rx_last_be_sink_valid;
wire soc_rx_last_be_sink_ready;
wire soc_rx_last_be_sink_first;
wire soc_rx_last_be_sink_last;
wire [7:0] soc_rx_last_be_sink_payload_data;
wire soc_rx_last_be_sink_payload_last_be;
wire soc_rx_last_be_sink_payload_error;
wire soc_rx_last_be_source_valid;
wire soc_rx_last_be_source_ready;
wire soc_rx_last_be_source_first;
wire soc_rx_last_be_source_last;
wire [7:0] soc_rx_last_be_source_payload_data;
reg soc_rx_last_be_source_payload_last_be = 1'd0;
wire soc_rx_last_be_source_payload_error;
wire soc_tx_converter_sink_valid;
wire soc_tx_converter_sink_ready;
wire soc_tx_converter_sink_first;
wire soc_tx_converter_sink_last;
wire [31:0] soc_tx_converter_sink_payload_data;
wire [3:0] soc_tx_converter_sink_payload_last_be;
wire [3:0] soc_tx_converter_sink_payload_error;
wire soc_tx_converter_source_valid;
wire soc_tx_converter_source_ready;
wire soc_tx_converter_source_first;
wire soc_tx_converter_source_last;
wire [7:0] soc_tx_converter_source_payload_data;
wire soc_tx_converter_source_payload_last_be;
wire soc_tx_converter_source_payload_error;
wire soc_tx_converter_converter_sink_valid;
wire soc_tx_converter_converter_sink_ready;
wire soc_tx_converter_converter_sink_first;
wire soc_tx_converter_converter_sink_last;
reg [39:0] soc_tx_converter_converter_sink_payload_data = 40'd0;
wire soc_tx_converter_converter_source_valid;
wire soc_tx_converter_converter_source_ready;
wire soc_tx_converter_converter_source_first;
wire soc_tx_converter_converter_source_last;
reg [9:0] soc_tx_converter_converter_source_payload_data = 10'd0;
wire soc_tx_converter_converter_source_payload_valid_token_count;
reg [1:0] soc_tx_converter_converter_mux = 2'd0;
wire soc_tx_converter_converter_first;
wire soc_tx_converter_converter_last;
wire soc_tx_converter_source_source_valid;
wire soc_tx_converter_source_source_ready;
wire soc_tx_converter_source_source_first;
wire soc_tx_converter_source_source_last;
wire [9:0] soc_tx_converter_source_source_payload_data;
wire soc_rx_converter_sink_valid;
wire soc_rx_converter_sink_ready;
wire soc_rx_converter_sink_first;
wire soc_rx_converter_sink_last;
wire [7:0] soc_rx_converter_sink_payload_data;
wire soc_rx_converter_sink_payload_last_be;
wire soc_rx_converter_sink_payload_error;
wire soc_rx_converter_source_valid;
wire soc_rx_converter_source_ready;
wire soc_rx_converter_source_first;
wire soc_rx_converter_source_last;
reg [31:0] soc_rx_converter_source_payload_data = 32'd0;
reg [3:0] soc_rx_converter_source_payload_last_be = 4'd0;
reg [3:0] soc_rx_converter_source_payload_error = 4'd0;
wire soc_rx_converter_converter_sink_valid;
wire soc_rx_converter_converter_sink_ready;
wire soc_rx_converter_converter_sink_first;
wire soc_rx_converter_converter_sink_last;
wire [9:0] soc_rx_converter_converter_sink_payload_data;
wire soc_rx_converter_converter_source_valid;
wire soc_rx_converter_converter_source_ready;
reg soc_rx_converter_converter_source_first = 1'd0;
reg soc_rx_converter_converter_source_last = 1'd0;
reg [39:0] soc_rx_converter_converter_source_payload_data = 40'd0;
reg [2:0] soc_rx_converter_converter_source_payload_valid_token_count = 3'd0;
reg [1:0] soc_rx_converter_converter_demux = 2'd0;
wire soc_rx_converter_converter_load_part;
reg soc_rx_converter_converter_strobe_all = 1'd0;
wire soc_rx_converter_source_source_valid;
wire soc_rx_converter_source_source_ready;
wire soc_rx_converter_source_source_first;
wire soc_rx_converter_source_source_last;
wire [39:0] soc_rx_converter_source_source_payload_data;
wire soc_tx_cdc_sink_valid;
wire soc_tx_cdc_sink_ready;
wire soc_tx_cdc_sink_first;
wire soc_tx_cdc_sink_last;
wire [31:0] soc_tx_cdc_sink_payload_data;
wire [3:0] soc_tx_cdc_sink_payload_last_be;
wire [3:0] soc_tx_cdc_sink_payload_error;
wire soc_tx_cdc_source_valid;
wire soc_tx_cdc_source_ready;
wire soc_tx_cdc_source_first;
wire soc_tx_cdc_source_last;
wire [31:0] soc_tx_cdc_source_payload_data;
wire [3:0] soc_tx_cdc_source_payload_last_be;
wire [3:0] soc_tx_cdc_source_payload_error;
wire soc_tx_cdc_asyncfifo_we;
wire soc_tx_cdc_asyncfifo_writable;
wire soc_tx_cdc_asyncfifo_re;
wire soc_tx_cdc_asyncfifo_readable;
wire [41:0] soc_tx_cdc_asyncfifo_din;
wire [41:0] soc_tx_cdc_asyncfifo_dout;
wire soc_tx_cdc_graycounter0_ce;
(* register_balancing = "no" *) reg [6:0] soc_tx_cdc_graycounter0_q = 7'd0;
wire [6:0] soc_tx_cdc_graycounter0_q_next;
reg [6:0] soc_tx_cdc_graycounter0_q_binary = 7'd0;
reg [6:0] soc_tx_cdc_graycounter0_q_next_binary = 7'd0;
wire soc_tx_cdc_graycounter1_ce;
(* register_balancing = "no" *) reg [6:0] soc_tx_cdc_graycounter1_q = 7'd0;
wire [6:0] soc_tx_cdc_graycounter1_q_next;
reg [6:0] soc_tx_cdc_graycounter1_q_binary = 7'd0;
reg [6:0] soc_tx_cdc_graycounter1_q_next_binary = 7'd0;
wire [6:0] soc_tx_cdc_produce_rdomain;
wire [6:0] soc_tx_cdc_consume_wdomain;
wire [5:0] soc_tx_cdc_wrport_adr;
wire [41:0] soc_tx_cdc_wrport_dat_r;
wire soc_tx_cdc_wrport_we;
wire [41:0] soc_tx_cdc_wrport_dat_w;
wire [5:0] soc_tx_cdc_rdport_adr;
wire [41:0] soc_tx_cdc_rdport_dat_r;
wire [31:0] soc_tx_cdc_fifo_in_payload_data;
wire [3:0] soc_tx_cdc_fifo_in_payload_last_be;
wire [3:0] soc_tx_cdc_fifo_in_payload_error;
wire soc_tx_cdc_fifo_in_first;
wire soc_tx_cdc_fifo_in_last;
wire [31:0] soc_tx_cdc_fifo_out_payload_data;
wire [3:0] soc_tx_cdc_fifo_out_payload_last_be;
wire [3:0] soc_tx_cdc_fifo_out_payload_error;
wire soc_tx_cdc_fifo_out_first;
wire soc_tx_cdc_fifo_out_last;
wire soc_rx_cdc_sink_valid;
wire soc_rx_cdc_sink_ready;
wire soc_rx_cdc_sink_first;
wire soc_rx_cdc_sink_last;
wire [31:0] soc_rx_cdc_sink_payload_data;
wire [3:0] soc_rx_cdc_sink_payload_last_be;
wire [3:0] soc_rx_cdc_sink_payload_error;
wire soc_rx_cdc_source_valid;
wire soc_rx_cdc_source_ready;
wire soc_rx_cdc_source_first;
wire soc_rx_cdc_source_last;
wire [31:0] soc_rx_cdc_source_payload_data;
wire [3:0] soc_rx_cdc_source_payload_last_be;
wire [3:0] soc_rx_cdc_source_payload_error;
wire soc_rx_cdc_asyncfifo_we;
wire soc_rx_cdc_asyncfifo_writable;
wire soc_rx_cdc_asyncfifo_re;
wire soc_rx_cdc_asyncfifo_readable;
wire [41:0] soc_rx_cdc_asyncfifo_din;
wire [41:0] soc_rx_cdc_asyncfifo_dout;
wire soc_rx_cdc_graycounter0_ce;
(* register_balancing = "no" *) reg [6:0] soc_rx_cdc_graycounter0_q = 7'd0;
wire [6:0] soc_rx_cdc_graycounter0_q_next;
reg [6:0] soc_rx_cdc_graycounter0_q_binary = 7'd0;
reg [6:0] soc_rx_cdc_graycounter0_q_next_binary = 7'd0;
wire soc_rx_cdc_graycounter1_ce;
(* register_balancing = "no" *) reg [6:0] soc_rx_cdc_graycounter1_q = 7'd0;
wire [6:0] soc_rx_cdc_graycounter1_q_next;
reg [6:0] soc_rx_cdc_graycounter1_q_binary = 7'd0;
reg [6:0] soc_rx_cdc_graycounter1_q_next_binary = 7'd0;
wire [6:0] soc_rx_cdc_produce_rdomain;
wire [6:0] soc_rx_cdc_consume_wdomain;
wire [5:0] soc_rx_cdc_wrport_adr;
wire [41:0] soc_rx_cdc_wrport_dat_r;
wire soc_rx_cdc_wrport_we;
wire [41:0] soc_rx_cdc_wrport_dat_w;
wire [5:0] soc_rx_cdc_rdport_adr;
wire [41:0] soc_rx_cdc_rdport_dat_r;
wire [31:0] soc_rx_cdc_fifo_in_payload_data;
wire [3:0] soc_rx_cdc_fifo_in_payload_last_be;
wire [3:0] soc_rx_cdc_fifo_in_payload_error;
wire soc_rx_cdc_fifo_in_first;
wire soc_rx_cdc_fifo_in_last;
wire [31:0] soc_rx_cdc_fifo_out_payload_data;
wire [3:0] soc_rx_cdc_fifo_out_payload_last_be;
wire [3:0] soc_rx_cdc_fifo_out_payload_error;
wire soc_rx_cdc_fifo_out_first;
wire soc_rx_cdc_fifo_out_last;
wire soc_sink_valid;
wire soc_sink_ready;
wire soc_sink_first;
wire soc_sink_last;
wire [31:0] soc_sink_payload_data;
wire [3:0] soc_sink_payload_last_be;
wire [3:0] soc_sink_payload_error;
wire soc_source_valid;
wire soc_source_ready;
wire soc_source_first;
wire soc_source_last;
wire [31:0] soc_source_payload_data;
wire [3:0] soc_source_payload_last_be;
wire [3:0] soc_source_payload_error;
wire [29:0] soc_bus_adr;
wire [31:0] soc_bus_dat_w;
wire [31:0] soc_bus_dat_r;
wire [3:0] soc_bus_sel;
wire soc_bus_cyc;
wire soc_bus_stb;
wire soc_bus_ack;
wire soc_bus_we;
wire [2:0] soc_bus_cti;
wire [1:0] soc_bus_bte;
wire soc_bus_err;
wire soc_writer_sink_sink_valid;
reg soc_writer_sink_sink_ready = 1'd1;
wire soc_writer_sink_sink_first;
wire soc_writer_sink_sink_last;
wire [31:0] soc_writer_sink_sink_payload_data;
wire [3:0] soc_writer_sink_sink_payload_last_be;
wire [3:0] soc_writer_sink_sink_payload_error;
wire soc_writer_slot_status;
wire [31:0] soc_writer_length_status;
reg [31:0] soc_writer_errors_status = 32'd0;
wire soc_writer_irq;
wire soc_writer_available_status;
wire soc_writer_available_pending;
wire soc_writer_available_trigger;
reg soc_writer_available_clear = 1'd0;
wire soc_writer_status_re;
wire soc_writer_status_r;
wire soc_writer_status_w;
wire soc_writer_pending_re;
wire soc_writer_pending_r;
wire soc_writer_pending_w;
reg soc_writer_storage_full = 1'd0;
wire soc_writer_storage;
reg soc_writer_re = 1'd0;
reg [2:0] soc_writer_inc = 3'd0;
reg [31:0] soc_writer_counter = 32'd0;
reg soc_writer_counter_reset = 1'd0;
reg soc_writer_counter_ce = 1'd0;
reg soc_writer_slot = 1'd0;
reg soc_writer_slot_ce = 1'd0;
reg soc_writer_ongoing = 1'd0;
reg soc_writer_fifo_sink_valid = 1'd0;
wire soc_writer_fifo_sink_ready;
reg soc_writer_fifo_sink_first = 1'd0;
reg soc_writer_fifo_sink_last = 1'd0;
wire soc_writer_fifo_sink_payload_slot;
wire [31:0] soc_writer_fifo_sink_payload_length;
wire soc_writer_fifo_source_valid;
wire soc_writer_fifo_source_ready;
wire soc_writer_fifo_source_first;
wire soc_writer_fifo_source_last;
wire soc_writer_fifo_source_payload_slot;
wire [31:0] soc_writer_fifo_source_payload_length;
wire soc_writer_fifo_syncfifo_we;
wire soc_writer_fifo_syncfifo_writable;
wire soc_writer_fifo_syncfifo_re;
wire soc_writer_fifo_syncfifo_readable;
wire [34:0] soc_writer_fifo_syncfifo_din;
wire [34:0] soc_writer_fifo_syncfifo_dout;
reg [1:0] soc_writer_fifo_level = 2'd0;
reg soc_writer_fifo_replace = 1'd0;
reg soc_writer_fifo_produce = 1'd0;
reg soc_writer_fifo_consume = 1'd0;
reg soc_writer_fifo_wrport_adr = 1'd0;
wire [34:0] soc_writer_fifo_wrport_dat_r;
wire soc_writer_fifo_wrport_we;
wire [34:0] soc_writer_fifo_wrport_dat_w;
wire soc_writer_fifo_do_read;
wire soc_writer_fifo_rdport_adr;
wire [34:0] soc_writer_fifo_rdport_dat_r;
wire soc_writer_fifo_fifo_in_payload_slot;
wire [31:0] soc_writer_fifo_fifo_in_payload_length;
wire soc_writer_fifo_fifo_in_first;
wire soc_writer_fifo_fifo_in_last;
wire soc_writer_fifo_fifo_out_payload_slot;
wire [31:0] soc_writer_fifo_fifo_out_payload_length;
wire soc_writer_fifo_fifo_out_first;
wire soc_writer_fifo_fifo_out_last;
reg [8:0] soc_writer_memory0_adr = 9'd0;
wire [31:0] soc_writer_memory0_dat_r;
reg soc_writer_memory0_we = 1'd0;
reg [31:0] soc_writer_memory0_dat_w = 32'd0;
reg [8:0] soc_writer_memory1_adr = 9'd0;
wire [31:0] soc_writer_memory1_dat_r;
reg soc_writer_memory1_we = 1'd0;
reg [31:0] soc_writer_memory1_dat_w = 32'd0;
reg soc_reader_source_source_valid = 1'd0;
wire soc_reader_source_source_ready;
reg soc_reader_source_source_first = 1'd0;
reg soc_reader_source_source_last = 1'd0;
reg [31:0] soc_reader_source_source_payload_data = 32'd0;
reg [3:0] soc_reader_source_source_payload_last_be = 4'd0;
reg [3:0] soc_reader_source_source_payload_error = 4'd0;
wire soc_reader_start_re;
wire soc_reader_start_r;
reg soc_reader_start_w = 1'd0;
wire soc_reader_ready_status;
wire [1:0] soc_reader_level_status;
reg soc_reader_slot_storage_full = 1'd0;
wire soc_reader_slot_storage;
reg soc_reader_slot_re = 1'd0;
reg [10:0] soc_reader_length_storage_full = 11'd0;
wire [10:0] soc_reader_length_storage;
reg soc_reader_length_re = 1'd0;
wire soc_reader_irq;
wire soc_reader_done_status;
reg soc_reader_done_pending = 1'd0;
reg soc_reader_done_trigger = 1'd0;
reg soc_reader_done_clear = 1'd0;
wire soc_reader_eventmanager_status_re;
wire soc_reader_eventmanager_status_r;
wire soc_reader_eventmanager_status_w;
wire soc_reader_eventmanager_pending_re;
wire soc_reader_eventmanager_pending_r;
wire soc_reader_eventmanager_pending_w;
reg soc_reader_eventmanager_storage_full = 1'd0;
wire soc_reader_eventmanager_storage;
reg soc_reader_eventmanager_re = 1'd0;
wire soc_reader_fifo_sink_valid;
wire soc_reader_fifo_sink_ready;
reg soc_reader_fifo_sink_first = 1'd0;
reg soc_reader_fifo_sink_last = 1'd0;
wire soc_reader_fifo_sink_payload_slot;
wire [10:0] soc_reader_fifo_sink_payload_length;
wire soc_reader_fifo_source_valid;
reg soc_reader_fifo_source_ready = 1'd0;
wire soc_reader_fifo_source_first;
wire soc_reader_fifo_source_last;
wire soc_reader_fifo_source_payload_slot;
wire [10:0] soc_reader_fifo_source_payload_length;
wire soc_reader_fifo_syncfifo_we;
wire soc_reader_fifo_syncfifo_writable;
wire soc_reader_fifo_syncfifo_re;
wire soc_reader_fifo_syncfifo_readable;
wire [13:0] soc_reader_fifo_syncfifo_din;
wire [13:0] soc_reader_fifo_syncfifo_dout;
reg [1:0] soc_reader_fifo_level = 2'd0;
reg soc_reader_fifo_replace = 1'd0;
reg soc_reader_fifo_produce = 1'd0;
reg soc_reader_fifo_consume = 1'd0;
reg soc_reader_fifo_wrport_adr = 1'd0;
wire [13:0] soc_reader_fifo_wrport_dat_r;
wire soc_reader_fifo_wrport_we;
wire [13:0] soc_reader_fifo_wrport_dat_w;
wire soc_reader_fifo_do_read;
wire soc_reader_fifo_rdport_adr;
wire [13:0] soc_reader_fifo_rdport_dat_r;
wire soc_reader_fifo_fifo_in_payload_slot;
wire [10:0] soc_reader_fifo_fifo_in_payload_length;
wire soc_reader_fifo_fifo_in_first;
wire soc_reader_fifo_fifo_in_last;
wire soc_reader_fifo_fifo_out_payload_slot;
wire [10:0] soc_reader_fifo_fifo_out_payload_length;
wire soc_reader_fifo_fifo_out_first;
wire soc_reader_fifo_fifo_out_last;
reg [10:0] soc_reader_counter = 11'd0;
reg soc_reader_counter_reset = 1'd0;
reg soc_reader_counter_ce = 1'd0;
wire soc_reader_last;
reg soc_reader_last_d = 1'd0;
wire [8:0] soc_reader_memory0_adr;
wire [31:0] soc_reader_memory0_dat_r;
wire [8:0] soc_reader_memory1_adr;
wire [31:0] soc_reader_memory1_dat_r;
wire soc_ev_irq;
wire [29:0] soc_sram0_bus_adr0;
wire [31:0] soc_sram0_bus_dat_w0;
wire [31:0] soc_sram0_bus_dat_r0;
wire [3:0] soc_sram0_bus_sel0;
wire soc_sram0_bus_cyc0;
wire soc_sram0_bus_stb0;
reg soc_sram0_bus_ack0 = 1'd0;
wire soc_sram0_bus_we0;
wire [2:0] soc_sram0_bus_cti0;
wire [1:0] soc_sram0_bus_bte0;
reg soc_sram0_bus_err0 = 1'd0;
wire [8:0] soc_sram0_adr0;
wire [31:0] soc_sram0_dat_r0;
wire [29:0] soc_sram1_bus_adr0;
wire [31:0] soc_sram1_bus_dat_w0;
wire [31:0] soc_sram1_bus_dat_r0;
wire [3:0] soc_sram1_bus_sel0;
wire soc_sram1_bus_cyc0;
wire soc_sram1_bus_stb0;
reg soc_sram1_bus_ack0 = 1'd0;
wire soc_sram1_bus_we0;
wire [2:0] soc_sram1_bus_cti0;
wire [1:0] soc_sram1_bus_bte0;
reg soc_sram1_bus_err0 = 1'd0;
wire [8:0] soc_sram1_adr0;
wire [31:0] soc_sram1_dat_r0;
wire [29:0] soc_sram0_bus_adr1;
wire [31:0] soc_sram0_bus_dat_w1;
wire [31:0] soc_sram0_bus_dat_r1;
wire [3:0] soc_sram0_bus_sel1;
wire soc_sram0_bus_cyc1;
wire soc_sram0_bus_stb1;
reg soc_sram0_bus_ack1 = 1'd0;
wire soc_sram0_bus_we1;
wire [2:0] soc_sram0_bus_cti1;
wire [1:0] soc_sram0_bus_bte1;
reg soc_sram0_bus_err1 = 1'd0;
wire [8:0] soc_sram0_adr1;
wire [31:0] soc_sram0_dat_r1;
reg [3:0] soc_sram0_we = 4'd0;
wire [31:0] soc_sram0_dat_w;
wire [29:0] soc_sram1_bus_adr1;
wire [31:0] soc_sram1_bus_dat_w1;
wire [31:0] soc_sram1_bus_dat_r1;
wire [3:0] soc_sram1_bus_sel1;
wire soc_sram1_bus_cyc1;
wire soc_sram1_bus_stb1;
reg soc_sram1_bus_ack1 = 1'd0;
wire soc_sram1_bus_we1;
wire [2:0] soc_sram1_bus_cti1;
wire [1:0] soc_sram1_bus_bte1;
reg soc_sram1_bus_err1 = 1'd0;
wire [8:0] soc_sram1_adr1;
wire [31:0] soc_sram1_dat_r1;
reg [3:0] soc_sram1_we = 4'd0;
wire [31:0] soc_sram1_dat_w;
reg [3:0] soc_slave_sel = 4'd0;
reg [3:0] soc_slave_sel_r = 4'd0;
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
reg [2:0] vns_multiplexer_state = 3'd0;
reg [2:0] vns_multiplexer_next_state = 3'd0;
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
reg vns_new_master_wdata_ready = 1'd0;
reg vns_new_master_rdata_valid0 = 1'd0;
reg vns_new_master_rdata_valid1 = 1'd0;
reg vns_new_master_rdata_valid2 = 1'd0;
reg vns_new_master_rdata_valid3 = 1'd0;
reg vns_new_master_rdata_valid4 = 1'd0;
reg vns_new_master_rdata_valid5 = 1'd0;
reg [2:0] vns_cache_state = 3'd0;
reg [2:0] vns_cache_next_state = 3'd0;
reg [1:0] vns_litedramwishbone2native_state = 2'd0;
reg [1:0] vns_litedramwishbone2native_next_state = 2'd0;
reg [1:0] vns_liteethphygmiimii_state = 2'd0;
reg [1:0] vns_liteethphygmiimii_next_state = 2'd0;
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
reg [31:0] soc_writer_errors_status_next_value = 32'd0;
reg soc_writer_errors_status_next_value_ce = 1'd0;
reg [1:0] vns_liteethmacsramreader_state = 2'd0;
reg [1:0] vns_liteethmacsramreader_next_state = 2'd0;
wire vns_wb_sdram_con_request;
wire vns_wb_sdram_con_grant;
wire [29:0] vns_netsoc_shared_adr;
wire [31:0] vns_netsoc_shared_dat_w;
reg [31:0] vns_netsoc_shared_dat_r = 32'd0;
wire [3:0] vns_netsoc_shared_sel;
wire vns_netsoc_shared_cyc;
wire vns_netsoc_shared_stb;
reg vns_netsoc_shared_ack = 1'd0;
wire vns_netsoc_shared_we;
wire [2:0] vns_netsoc_shared_cti;
wire [1:0] vns_netsoc_shared_bte;
wire vns_netsoc_shared_err;
wire [1:0] vns_netsoc_request;
reg vns_netsoc_grant = 1'd0;
reg [5:0] vns_netsoc_slave_sel = 6'd0;
reg [5:0] vns_netsoc_slave_sel_r = 6'd0;
reg vns_netsoc_error = 1'd0;
wire vns_netsoc_wait;
wire vns_netsoc_done;
reg [16:0] vns_netsoc_count = 17'd65536;
wire [13:0] vns_netsoc_interface0_bank_bus_adr;
wire vns_netsoc_interface0_bank_bus_we;
wire [7:0] vns_netsoc_interface0_bank_bus_dat_w;
reg [7:0] vns_netsoc_interface0_bank_bus_dat_r = 8'd0;
wire vns_netsoc_csrbank0_scratch3_re;
wire [7:0] vns_netsoc_csrbank0_scratch3_r;
wire [7:0] vns_netsoc_csrbank0_scratch3_w;
wire vns_netsoc_csrbank0_scratch2_re;
wire [7:0] vns_netsoc_csrbank0_scratch2_r;
wire [7:0] vns_netsoc_csrbank0_scratch2_w;
wire vns_netsoc_csrbank0_scratch1_re;
wire [7:0] vns_netsoc_csrbank0_scratch1_r;
wire [7:0] vns_netsoc_csrbank0_scratch1_w;
wire vns_netsoc_csrbank0_scratch0_re;
wire [7:0] vns_netsoc_csrbank0_scratch0_r;
wire [7:0] vns_netsoc_csrbank0_scratch0_w;
wire vns_netsoc_csrbank0_bus_errors3_re;
wire [7:0] vns_netsoc_csrbank0_bus_errors3_r;
wire [7:0] vns_netsoc_csrbank0_bus_errors3_w;
wire vns_netsoc_csrbank0_bus_errors2_re;
wire [7:0] vns_netsoc_csrbank0_bus_errors2_r;
wire [7:0] vns_netsoc_csrbank0_bus_errors2_w;
wire vns_netsoc_csrbank0_bus_errors1_re;
wire [7:0] vns_netsoc_csrbank0_bus_errors1_r;
wire [7:0] vns_netsoc_csrbank0_bus_errors1_w;
wire vns_netsoc_csrbank0_bus_errors0_re;
wire [7:0] vns_netsoc_csrbank0_bus_errors0_r;
wire [7:0] vns_netsoc_csrbank0_bus_errors0_w;
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
wire vns_netsoc_csrbank2_mode_detection_mode_re;
wire vns_netsoc_csrbank2_mode_detection_mode_r;
wire vns_netsoc_csrbank2_mode_detection_mode_w;
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
wire vns_netsoc_csrbank3_sel;
wire [13:0] vns_netsoc_interface4_bank_bus_adr;
wire vns_netsoc_interface4_bank_bus_we;
wire [7:0] vns_netsoc_interface4_bank_bus_dat_w;
reg [7:0] vns_netsoc_interface4_bank_bus_dat_r = 8'd0;
wire vns_netsoc_csrbank4_dfii_control0_re;
wire [3:0] vns_netsoc_csrbank4_dfii_control0_r;
wire [3:0] vns_netsoc_csrbank4_dfii_control0_w;
wire vns_netsoc_csrbank4_dfii_pi0_command0_re;
wire [5:0] vns_netsoc_csrbank4_dfii_pi0_command0_r;
wire [5:0] vns_netsoc_csrbank4_dfii_pi0_command0_w;
wire vns_netsoc_csrbank4_dfii_pi0_address1_re;
wire [4:0] vns_netsoc_csrbank4_dfii_pi0_address1_r;
wire [4:0] vns_netsoc_csrbank4_dfii_pi0_address1_w;
wire vns_netsoc_csrbank4_dfii_pi0_address0_re;
wire [7:0] vns_netsoc_csrbank4_dfii_pi0_address0_r;
wire [7:0] vns_netsoc_csrbank4_dfii_pi0_address0_w;
wire vns_netsoc_csrbank4_dfii_pi0_baddress0_re;
wire [2:0] vns_netsoc_csrbank4_dfii_pi0_baddress0_r;
wire [2:0] vns_netsoc_csrbank4_dfii_pi0_baddress0_w;
wire vns_netsoc_csrbank4_dfii_pi0_wrdata3_re;
wire [7:0] vns_netsoc_csrbank4_dfii_pi0_wrdata3_r;
wire [7:0] vns_netsoc_csrbank4_dfii_pi0_wrdata3_w;
wire vns_netsoc_csrbank4_dfii_pi0_wrdata2_re;
wire [7:0] vns_netsoc_csrbank4_dfii_pi0_wrdata2_r;
wire [7:0] vns_netsoc_csrbank4_dfii_pi0_wrdata2_w;
wire vns_netsoc_csrbank4_dfii_pi0_wrdata1_re;
wire [7:0] vns_netsoc_csrbank4_dfii_pi0_wrdata1_r;
wire [7:0] vns_netsoc_csrbank4_dfii_pi0_wrdata1_w;
wire vns_netsoc_csrbank4_dfii_pi0_wrdata0_re;
wire [7:0] vns_netsoc_csrbank4_dfii_pi0_wrdata0_r;
wire [7:0] vns_netsoc_csrbank4_dfii_pi0_wrdata0_w;
wire vns_netsoc_csrbank4_dfii_pi0_rddata3_re;
wire [7:0] vns_netsoc_csrbank4_dfii_pi0_rddata3_r;
wire [7:0] vns_netsoc_csrbank4_dfii_pi0_rddata3_w;
wire vns_netsoc_csrbank4_dfii_pi0_rddata2_re;
wire [7:0] vns_netsoc_csrbank4_dfii_pi0_rddata2_r;
wire [7:0] vns_netsoc_csrbank4_dfii_pi0_rddata2_w;
wire vns_netsoc_csrbank4_dfii_pi0_rddata1_re;
wire [7:0] vns_netsoc_csrbank4_dfii_pi0_rddata1_r;
wire [7:0] vns_netsoc_csrbank4_dfii_pi0_rddata1_w;
wire vns_netsoc_csrbank4_dfii_pi0_rddata0_re;
wire [7:0] vns_netsoc_csrbank4_dfii_pi0_rddata0_r;
wire [7:0] vns_netsoc_csrbank4_dfii_pi0_rddata0_w;
wire vns_netsoc_csrbank4_dfii_pi1_command0_re;
wire [5:0] vns_netsoc_csrbank4_dfii_pi1_command0_r;
wire [5:0] vns_netsoc_csrbank4_dfii_pi1_command0_w;
wire vns_netsoc_csrbank4_dfii_pi1_address1_re;
wire [4:0] vns_netsoc_csrbank4_dfii_pi1_address1_r;
wire [4:0] vns_netsoc_csrbank4_dfii_pi1_address1_w;
wire vns_netsoc_csrbank4_dfii_pi1_address0_re;
wire [7:0] vns_netsoc_csrbank4_dfii_pi1_address0_r;
wire [7:0] vns_netsoc_csrbank4_dfii_pi1_address0_w;
wire vns_netsoc_csrbank4_dfii_pi1_baddress0_re;
wire [2:0] vns_netsoc_csrbank4_dfii_pi1_baddress0_r;
wire [2:0] vns_netsoc_csrbank4_dfii_pi1_baddress0_w;
wire vns_netsoc_csrbank4_dfii_pi1_wrdata3_re;
wire [7:0] vns_netsoc_csrbank4_dfii_pi1_wrdata3_r;
wire [7:0] vns_netsoc_csrbank4_dfii_pi1_wrdata3_w;
wire vns_netsoc_csrbank4_dfii_pi1_wrdata2_re;
wire [7:0] vns_netsoc_csrbank4_dfii_pi1_wrdata2_r;
wire [7:0] vns_netsoc_csrbank4_dfii_pi1_wrdata2_w;
wire vns_netsoc_csrbank4_dfii_pi1_wrdata1_re;
wire [7:0] vns_netsoc_csrbank4_dfii_pi1_wrdata1_r;
wire [7:0] vns_netsoc_csrbank4_dfii_pi1_wrdata1_w;
wire vns_netsoc_csrbank4_dfii_pi1_wrdata0_re;
wire [7:0] vns_netsoc_csrbank4_dfii_pi1_wrdata0_r;
wire [7:0] vns_netsoc_csrbank4_dfii_pi1_wrdata0_w;
wire vns_netsoc_csrbank4_dfii_pi1_rddata3_re;
wire [7:0] vns_netsoc_csrbank4_dfii_pi1_rddata3_r;
wire [7:0] vns_netsoc_csrbank4_dfii_pi1_rddata3_w;
wire vns_netsoc_csrbank4_dfii_pi1_rddata2_re;
wire [7:0] vns_netsoc_csrbank4_dfii_pi1_rddata2_r;
wire [7:0] vns_netsoc_csrbank4_dfii_pi1_rddata2_w;
wire vns_netsoc_csrbank4_dfii_pi1_rddata1_re;
wire [7:0] vns_netsoc_csrbank4_dfii_pi1_rddata1_r;
wire [7:0] vns_netsoc_csrbank4_dfii_pi1_rddata1_w;
wire vns_netsoc_csrbank4_dfii_pi1_rddata0_re;
wire [7:0] vns_netsoc_csrbank4_dfii_pi1_rddata0_r;
wire [7:0] vns_netsoc_csrbank4_dfii_pi1_rddata0_w;
wire vns_netsoc_csrbank4_controller_bandwidth_nreads2_re;
wire [7:0] vns_netsoc_csrbank4_controller_bandwidth_nreads2_r;
wire [7:0] vns_netsoc_csrbank4_controller_bandwidth_nreads2_w;
wire vns_netsoc_csrbank4_controller_bandwidth_nreads1_re;
wire [7:0] vns_netsoc_csrbank4_controller_bandwidth_nreads1_r;
wire [7:0] vns_netsoc_csrbank4_controller_bandwidth_nreads1_w;
wire vns_netsoc_csrbank4_controller_bandwidth_nreads0_re;
wire [7:0] vns_netsoc_csrbank4_controller_bandwidth_nreads0_r;
wire [7:0] vns_netsoc_csrbank4_controller_bandwidth_nreads0_w;
wire vns_netsoc_csrbank4_controller_bandwidth_nwrites2_re;
wire [7:0] vns_netsoc_csrbank4_controller_bandwidth_nwrites2_r;
wire [7:0] vns_netsoc_csrbank4_controller_bandwidth_nwrites2_w;
wire vns_netsoc_csrbank4_controller_bandwidth_nwrites1_re;
wire [7:0] vns_netsoc_csrbank4_controller_bandwidth_nwrites1_r;
wire [7:0] vns_netsoc_csrbank4_controller_bandwidth_nwrites1_w;
wire vns_netsoc_csrbank4_controller_bandwidth_nwrites0_re;
wire [7:0] vns_netsoc_csrbank4_controller_bandwidth_nwrites0_r;
wire [7:0] vns_netsoc_csrbank4_controller_bandwidth_nwrites0_w;
wire vns_netsoc_csrbank4_controller_bandwidth_data_width_re;
wire [6:0] vns_netsoc_csrbank4_controller_bandwidth_data_width_r;
wire [6:0] vns_netsoc_csrbank4_controller_bandwidth_data_width_w;
wire vns_netsoc_csrbank4_sel;
wire [13:0] vns_netsoc_interface5_bank_bus_adr;
wire vns_netsoc_interface5_bank_bus_we;
wire [7:0] vns_netsoc_interface5_bank_bus_dat_w;
reg [7:0] vns_netsoc_interface5_bank_bus_dat_r = 8'd0;
wire vns_netsoc_csrbank5_bitbang0_re;
wire [3:0] vns_netsoc_csrbank5_bitbang0_r;
wire [3:0] vns_netsoc_csrbank5_bitbang0_w;
wire vns_netsoc_csrbank5_miso_re;
wire vns_netsoc_csrbank5_miso_r;
wire vns_netsoc_csrbank5_miso_w;
wire vns_netsoc_csrbank5_bitbang_en0_re;
wire vns_netsoc_csrbank5_bitbang_en0_r;
wire vns_netsoc_csrbank5_bitbang_en0_w;
wire vns_netsoc_csrbank5_sel;
wire [13:0] vns_netsoc_interface6_bank_bus_adr;
wire vns_netsoc_interface6_bank_bus_we;
wire [7:0] vns_netsoc_interface6_bank_bus_dat_w;
reg [7:0] vns_netsoc_interface6_bank_bus_dat_r = 8'd0;
wire vns_netsoc_csrbank6_load3_re;
wire [7:0] vns_netsoc_csrbank6_load3_r;
wire [7:0] vns_netsoc_csrbank6_load3_w;
wire vns_netsoc_csrbank6_load2_re;
wire [7:0] vns_netsoc_csrbank6_load2_r;
wire [7:0] vns_netsoc_csrbank6_load2_w;
wire vns_netsoc_csrbank6_load1_re;
wire [7:0] vns_netsoc_csrbank6_load1_r;
wire [7:0] vns_netsoc_csrbank6_load1_w;
wire vns_netsoc_csrbank6_load0_re;
wire [7:0] vns_netsoc_csrbank6_load0_r;
wire [7:0] vns_netsoc_csrbank6_load0_w;
wire vns_netsoc_csrbank6_reload3_re;
wire [7:0] vns_netsoc_csrbank6_reload3_r;
wire [7:0] vns_netsoc_csrbank6_reload3_w;
wire vns_netsoc_csrbank6_reload2_re;
wire [7:0] vns_netsoc_csrbank6_reload2_r;
wire [7:0] vns_netsoc_csrbank6_reload2_w;
wire vns_netsoc_csrbank6_reload1_re;
wire [7:0] vns_netsoc_csrbank6_reload1_r;
wire [7:0] vns_netsoc_csrbank6_reload1_w;
wire vns_netsoc_csrbank6_reload0_re;
wire [7:0] vns_netsoc_csrbank6_reload0_r;
wire [7:0] vns_netsoc_csrbank6_reload0_w;
wire vns_netsoc_csrbank6_en0_re;
wire vns_netsoc_csrbank6_en0_r;
wire vns_netsoc_csrbank6_en0_w;
wire vns_netsoc_csrbank6_value3_re;
wire [7:0] vns_netsoc_csrbank6_value3_r;
wire [7:0] vns_netsoc_csrbank6_value3_w;
wire vns_netsoc_csrbank6_value2_re;
wire [7:0] vns_netsoc_csrbank6_value2_r;
wire [7:0] vns_netsoc_csrbank6_value2_w;
wire vns_netsoc_csrbank6_value1_re;
wire [7:0] vns_netsoc_csrbank6_value1_r;
wire [7:0] vns_netsoc_csrbank6_value1_w;
wire vns_netsoc_csrbank6_value0_re;
wire [7:0] vns_netsoc_csrbank6_value0_r;
wire [7:0] vns_netsoc_csrbank6_value0_w;
wire vns_netsoc_csrbank6_ev_enable0_re;
wire vns_netsoc_csrbank6_ev_enable0_r;
wire vns_netsoc_csrbank6_ev_enable0_w;
wire vns_netsoc_csrbank6_sel;
wire [13:0] vns_netsoc_interface7_bank_bus_adr;
wire vns_netsoc_interface7_bank_bus_we;
wire [7:0] vns_netsoc_interface7_bank_bus_dat_w;
reg [7:0] vns_netsoc_interface7_bank_bus_dat_r = 8'd0;
wire vns_netsoc_csrbank7_txfull_re;
wire vns_netsoc_csrbank7_txfull_r;
wire vns_netsoc_csrbank7_txfull_w;
wire vns_netsoc_csrbank7_rxempty_re;
wire vns_netsoc_csrbank7_rxempty_r;
wire vns_netsoc_csrbank7_rxempty_w;
wire vns_netsoc_csrbank7_ev_enable0_re;
wire [1:0] vns_netsoc_csrbank7_ev_enable0_r;
wire [1:0] vns_netsoc_csrbank7_ev_enable0_w;
wire vns_netsoc_csrbank7_sel;
wire [13:0] vns_netsoc_interface8_bank_bus_adr;
wire vns_netsoc_interface8_bank_bus_we;
wire [7:0] vns_netsoc_interface8_bank_bus_dat_w;
reg [7:0] vns_netsoc_interface8_bank_bus_dat_r = 8'd0;
wire vns_netsoc_csrbank8_tuning_word3_re;
wire [7:0] vns_netsoc_csrbank8_tuning_word3_r;
wire [7:0] vns_netsoc_csrbank8_tuning_word3_w;
wire vns_netsoc_csrbank8_tuning_word2_re;
wire [7:0] vns_netsoc_csrbank8_tuning_word2_r;
wire [7:0] vns_netsoc_csrbank8_tuning_word2_w;
wire vns_netsoc_csrbank8_tuning_word1_re;
wire [7:0] vns_netsoc_csrbank8_tuning_word1_r;
wire [7:0] vns_netsoc_csrbank8_tuning_word1_w;
wire vns_netsoc_csrbank8_tuning_word0_re;
wire [7:0] vns_netsoc_csrbank8_tuning_word0_r;
wire [7:0] vns_netsoc_csrbank8_tuning_word0_w;
wire vns_netsoc_csrbank8_sel;
wire [15:0] vns_slice_proxy0;
wire [15:0] vns_slice_proxy1;
wire [15:0] vns_slice_proxy2;
wire [15:0] vns_slice_proxy3;
wire [15:0] vns_slice_proxy4;
wire [15:0] vns_slice_proxy5;
wire [15:0] vns_slice_proxy6;
wire [15:0] vns_slice_proxy7;
wire [15:0] vns_slice_proxy8;
wire [15:0] vns_slice_proxy9;
wire [15:0] vns_slice_proxy10;
wire [15:0] vns_slice_proxy11;
wire [15:0] vns_slice_proxy12;
wire [15:0] vns_slice_proxy13;
wire [15:0] vns_slice_proxy14;
wire [15:0] vns_slice_proxy15;
wire [15:0] vns_slice_proxy16;
wire [15:0] vns_slice_proxy17;
wire [15:0] vns_slice_proxy18;
wire [15:0] vns_slice_proxy19;
wire [15:0] vns_slice_proxy20;
wire [15:0] vns_slice_proxy21;
wire [15:0] vns_slice_proxy22;
wire [15:0] vns_slice_proxy23;
wire [15:0] vns_slice_proxy24;
wire [15:0] vns_slice_proxy25;
wire [15:0] vns_slice_proxy26;
wire [15:0] vns_slice_proxy27;
wire [15:0] vns_slice_proxy28;
wire [15:0] vns_slice_proxy29;
wire [15:0] vns_slice_proxy30;
wire [15:0] vns_slice_proxy31;
wire [15:0] vns_slice_proxy32;
wire [15:0] vns_slice_proxy33;
wire [15:0] vns_slice_proxy34;
wire [15:0] vns_slice_proxy35;
wire [15:0] vns_slice_proxy36;
wire [15:0] vns_slice_proxy37;
wire [15:0] vns_slice_proxy38;
wire [15:0] vns_slice_proxy39;
wire [15:0] vns_slice_proxy40;
wire [15:0] vns_slice_proxy41;
wire [15:0] vns_slice_proxy42;
wire [15:0] vns_slice_proxy43;
wire [15:0] vns_slice_proxy44;
wire [15:0] vns_slice_proxy45;
wire [15:0] vns_slice_proxy46;
wire [15:0] vns_slice_proxy47;
wire [15:0] vns_slice_proxy48;
wire [15:0] vns_slice_proxy49;
wire [15:0] vns_slice_proxy50;
wire [15:0] vns_slice_proxy51;
wire [15:0] vns_slice_proxy52;
wire [15:0] vns_slice_proxy53;
wire [15:0] vns_slice_proxy54;
wire [15:0] vns_slice_proxy55;
wire [15:0] vns_slice_proxy56;
wire [15:0] vns_slice_proxy57;
wire [15:0] vns_slice_proxy58;
wire [15:0] vns_slice_proxy59;
wire [15:0] vns_slice_proxy60;
wire [15:0] vns_slice_proxy61;
wire [15:0] vns_slice_proxy62;
wire [15:0] vns_slice_proxy63;
wire [1:0] vns_slice_proxy64;
wire [1:0] vns_slice_proxy65;
wire [1:0] vns_slice_proxy66;
wire [1:0] vns_slice_proxy67;
wire [1:0] vns_slice_proxy68;
wire [1:0] vns_slice_proxy69;
wire [1:0] vns_slice_proxy70;
wire [1:0] vns_slice_proxy71;
reg vns_rhs_array_muxed0 = 1'd0;
reg [12:0] vns_rhs_array_muxed1 = 13'd0;
reg [2:0] vns_rhs_array_muxed2 = 3'd0;
reg vns_rhs_array_muxed3 = 1'd0;
reg vns_rhs_array_muxed4 = 1'd0;
reg vns_rhs_array_muxed5 = 1'd0;
reg vns_t_array_muxed0 = 1'd0;
reg vns_t_array_muxed1 = 1'd0;
reg vns_t_array_muxed2 = 1'd0;
reg vns_rhs_array_muxed6 = 1'd0;
reg [12:0] vns_rhs_array_muxed7 = 13'd0;
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
reg [12:0] vns_array_muxed0 = 13'd0;
reg [2:0] vns_array_muxed1 = 3'd0;
reg vns_array_muxed2 = 1'd0;
reg vns_array_muxed3 = 1'd0;
reg vns_array_muxed4 = 1'd0;
reg vns_array_muxed5 = 1'd0;
reg vns_array_muxed6 = 1'd0;
reg [2:0] vns_array_muxed7 = 3'd0;
reg [12:0] vns_array_muxed8 = 13'd0;
reg vns_array_muxed9 = 1'd0;
reg vns_array_muxed10 = 1'd0;
reg vns_array_muxed11 = 1'd0;
reg vns_array_muxed12 = 1'd0;
reg vns_array_muxed13 = 1'd0;
reg [2:0] vns_array_muxed14 = 3'd0;
reg [12:0] vns_array_muxed15 = 13'd0;
reg vns_array_muxed16 = 1'd0;
reg vns_array_muxed17 = 1'd0;
reg vns_array_muxed18 = 1'd0;
reg vns_array_muxed19 = 1'd0;
reg vns_array_muxed20 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg vns_xilinxmultiregimpl0_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg vns_xilinxmultiregimpl0_regs1 = 1'd0;
wire vns_xilinxasyncresetsynchronizerimpl0;
wire vns_xilinxasyncresetsynchronizerimpl0_rst_meta;
wire vns_xilinxasyncresetsynchronizerimpl1;
wire vns_xilinxasyncresetsynchronizerimpl1_rst_meta;
wire vns_xilinxasyncresetsynchronizerimpl2;
wire vns_xilinxasyncresetsynchronizerimpl2_rst_meta;
wire vns_xilinxasyncresetsynchronizerimpl3_rst_meta;
(* register_balancing = "no", shreg_extract = "no" *) reg vns_xilinxmultiregimpl1_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg vns_xilinxmultiregimpl1_regs1 = 1'd0;
wire vns_xilinxasyncresetsynchronizerimpl4_rst_meta;
wire vns_xilinxasyncresetsynchronizerimpl5_rst_meta;
(* register_balancing = "no", shreg_extract = "no" *) reg vns_xilinxmultiregimpl2_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg vns_xilinxmultiregimpl2_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg vns_xilinxmultiregimpl3_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg vns_xilinxmultiregimpl3_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg vns_xilinxmultiregimpl4_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg vns_xilinxmultiregimpl4_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [6:0] vns_xilinxmultiregimpl5_regs0 = 7'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [6:0] vns_xilinxmultiregimpl5_regs1 = 7'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [6:0] vns_xilinxmultiregimpl6_regs0 = 7'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [6:0] vns_xilinxmultiregimpl6_regs1 = 7'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [6:0] vns_xilinxmultiregimpl7_regs0 = 7'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [6:0] vns_xilinxmultiregimpl7_regs1 = 7'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [6:0] vns_xilinxmultiregimpl8_regs0 = 7'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [6:0] vns_xilinxmultiregimpl8_regs1 = 7'd0;

assign soc_netsoc_mor1kx_reset = soc_netsoc_ctrl_reset;
assign soc_ddrphy_clk4x_wr_strb = soc_crg_clk4x_wr_strb;
assign soc_ddrphy_clk4x_rd_strb = soc_crg_clk4x_rd_strb;
assign soc_netsoc_ctrl_bus_error = vns_netsoc_error;
always @(*) begin
	soc_netsoc_mor1kx_interrupt <= 32'd0;
	soc_netsoc_mor1kx_interrupt[1] <= soc_netsoc_timer0_irq;
	soc_netsoc_mor1kx_interrupt[2] <= soc_netsoc_uart_irq;
	soc_netsoc_mor1kx_interrupt[3] <= soc_ev_irq;
end
assign soc_netsoc_ctrl_reset = soc_netsoc_ctrl_reset_reset_re;
assign soc_netsoc_ctrl_bus_errors_status = soc_netsoc_ctrl_bus_errors;
assign soc_netsoc_mor1kx_ibus_adr = soc_netsoc_mor1kx_i_adr_o[31:2];
assign soc_netsoc_mor1kx_dbus_adr = soc_netsoc_mor1kx_d_adr_o[31:2];
assign soc_netsoc_rom_adr = soc_netsoc_rom_bus_adr[13:0];
assign soc_netsoc_rom_bus_dat_r = soc_netsoc_rom_dat_r;
always @(*) begin
	soc_netsoc_sram_we <= 4'd0;
	soc_netsoc_sram_we[0] <= (((soc_netsoc_sram_bus_cyc & soc_netsoc_sram_bus_stb) & soc_netsoc_sram_bus_we) & soc_netsoc_sram_bus_sel[0]);
	soc_netsoc_sram_we[1] <= (((soc_netsoc_sram_bus_cyc & soc_netsoc_sram_bus_stb) & soc_netsoc_sram_bus_we) & soc_netsoc_sram_bus_sel[1]);
	soc_netsoc_sram_we[2] <= (((soc_netsoc_sram_bus_cyc & soc_netsoc_sram_bus_stb) & soc_netsoc_sram_bus_we) & soc_netsoc_sram_bus_sel[2]);
	soc_netsoc_sram_we[3] <= (((soc_netsoc_sram_bus_cyc & soc_netsoc_sram_bus_stb) & soc_netsoc_sram_bus_we) & soc_netsoc_sram_bus_sel[3]);
end
assign soc_netsoc_sram_adr = soc_netsoc_sram_bus_adr[12:0];
assign soc_netsoc_sram_bus_dat_r = soc_netsoc_sram_dat_r;
assign soc_netsoc_sram_dat_w = soc_netsoc_sram_bus_dat_w;
assign soc_netsoc_uart_tx_fifo_sink_valid = soc_netsoc_uart_rxtx_re;
assign soc_netsoc_uart_tx_fifo_sink_payload_data = soc_netsoc_uart_rxtx_r;
assign soc_netsoc_uart_txfull_status = (~soc_netsoc_uart_tx_fifo_sink_ready);
assign soc_netsoc_uart_phy_sink_valid = soc_netsoc_uart_tx_fifo_source_valid;
assign soc_netsoc_uart_tx_fifo_source_ready = soc_netsoc_uart_phy_sink_ready;
assign soc_netsoc_uart_phy_sink_first = soc_netsoc_uart_tx_fifo_source_first;
assign soc_netsoc_uart_phy_sink_last = soc_netsoc_uart_tx_fifo_source_last;
assign soc_netsoc_uart_phy_sink_payload_data = soc_netsoc_uart_tx_fifo_source_payload_data;
assign soc_netsoc_uart_tx_trigger = (~soc_netsoc_uart_tx_fifo_sink_ready);
assign soc_netsoc_uart_rx_fifo_sink_valid = soc_netsoc_uart_phy_source_valid;
assign soc_netsoc_uart_phy_source_ready = soc_netsoc_uart_rx_fifo_sink_ready;
assign soc_netsoc_uart_rx_fifo_sink_first = soc_netsoc_uart_phy_source_first;
assign soc_netsoc_uart_rx_fifo_sink_last = soc_netsoc_uart_phy_source_last;
assign soc_netsoc_uart_rx_fifo_sink_payload_data = soc_netsoc_uart_phy_source_payload_data;
assign soc_netsoc_uart_rxempty_status = (~soc_netsoc_uart_rx_fifo_source_valid);
assign soc_netsoc_uart_rxtx_w = soc_netsoc_uart_rx_fifo_source_payload_data;
assign soc_netsoc_uart_rx_fifo_source_ready = soc_netsoc_uart_rx_clear;
assign soc_netsoc_uart_rx_trigger = (~soc_netsoc_uart_rx_fifo_source_valid);
always @(*) begin
	soc_netsoc_uart_tx_clear <= 1'd0;
	if ((soc_netsoc_uart_eventmanager_pending_re & soc_netsoc_uart_eventmanager_pending_r[0])) begin
		soc_netsoc_uart_tx_clear <= 1'd1;
	end
end
always @(*) begin
	soc_netsoc_uart_eventmanager_status_w <= 2'd0;
	soc_netsoc_uart_eventmanager_status_w[0] <= soc_netsoc_uart_tx_status;
	soc_netsoc_uart_eventmanager_status_w[1] <= soc_netsoc_uart_rx_status;
end
always @(*) begin
	soc_netsoc_uart_rx_clear <= 1'd0;
	if ((soc_netsoc_uart_eventmanager_pending_re & soc_netsoc_uart_eventmanager_pending_r[1])) begin
		soc_netsoc_uart_rx_clear <= 1'd1;
	end
end
always @(*) begin
	soc_netsoc_uart_eventmanager_pending_w <= 2'd0;
	soc_netsoc_uart_eventmanager_pending_w[0] <= soc_netsoc_uart_tx_pending;
	soc_netsoc_uart_eventmanager_pending_w[1] <= soc_netsoc_uart_rx_pending;
end
assign soc_netsoc_uart_irq = ((soc_netsoc_uart_eventmanager_pending_w[0] & soc_netsoc_uart_eventmanager_storage[0]) | (soc_netsoc_uart_eventmanager_pending_w[1] & soc_netsoc_uart_eventmanager_storage[1]));
assign soc_netsoc_uart_tx_status = soc_netsoc_uart_tx_trigger;
assign soc_netsoc_uart_rx_status = soc_netsoc_uart_rx_trigger;
assign soc_netsoc_uart_tx_fifo_syncfifo_din = {soc_netsoc_uart_tx_fifo_fifo_in_last, soc_netsoc_uart_tx_fifo_fifo_in_first, soc_netsoc_uart_tx_fifo_fifo_in_payload_data};
assign {soc_netsoc_uart_tx_fifo_fifo_out_last, soc_netsoc_uart_tx_fifo_fifo_out_first, soc_netsoc_uart_tx_fifo_fifo_out_payload_data} = soc_netsoc_uart_tx_fifo_syncfifo_dout;
assign soc_netsoc_uart_tx_fifo_sink_ready = soc_netsoc_uart_tx_fifo_syncfifo_writable;
assign soc_netsoc_uart_tx_fifo_syncfifo_we = soc_netsoc_uart_tx_fifo_sink_valid;
assign soc_netsoc_uart_tx_fifo_fifo_in_first = soc_netsoc_uart_tx_fifo_sink_first;
assign soc_netsoc_uart_tx_fifo_fifo_in_last = soc_netsoc_uart_tx_fifo_sink_last;
assign soc_netsoc_uart_tx_fifo_fifo_in_payload_data = soc_netsoc_uart_tx_fifo_sink_payload_data;
assign soc_netsoc_uart_tx_fifo_source_valid = soc_netsoc_uart_tx_fifo_readable;
assign soc_netsoc_uart_tx_fifo_source_first = soc_netsoc_uart_tx_fifo_fifo_out_first;
assign soc_netsoc_uart_tx_fifo_source_last = soc_netsoc_uart_tx_fifo_fifo_out_last;
assign soc_netsoc_uart_tx_fifo_source_payload_data = soc_netsoc_uart_tx_fifo_fifo_out_payload_data;
assign soc_netsoc_uart_tx_fifo_re = soc_netsoc_uart_tx_fifo_source_ready;
assign soc_netsoc_uart_tx_fifo_syncfifo_re = (soc_netsoc_uart_tx_fifo_syncfifo_readable & ((~soc_netsoc_uart_tx_fifo_readable) | soc_netsoc_uart_tx_fifo_re));
assign soc_netsoc_uart_tx_fifo_level1 = (soc_netsoc_uart_tx_fifo_level0 + soc_netsoc_uart_tx_fifo_readable);
always @(*) begin
	soc_netsoc_uart_tx_fifo_wrport_adr <= 4'd0;
	if (soc_netsoc_uart_tx_fifo_replace) begin
		soc_netsoc_uart_tx_fifo_wrport_adr <= (soc_netsoc_uart_tx_fifo_produce - 1'd1);
	end else begin
		soc_netsoc_uart_tx_fifo_wrport_adr <= soc_netsoc_uart_tx_fifo_produce;
	end
end
assign soc_netsoc_uart_tx_fifo_wrport_dat_w = soc_netsoc_uart_tx_fifo_syncfifo_din;
assign soc_netsoc_uart_tx_fifo_wrport_we = (soc_netsoc_uart_tx_fifo_syncfifo_we & (soc_netsoc_uart_tx_fifo_syncfifo_writable | soc_netsoc_uart_tx_fifo_replace));
assign soc_netsoc_uart_tx_fifo_do_read = (soc_netsoc_uart_tx_fifo_syncfifo_readable & soc_netsoc_uart_tx_fifo_syncfifo_re);
assign soc_netsoc_uart_tx_fifo_rdport_adr = soc_netsoc_uart_tx_fifo_consume;
assign soc_netsoc_uart_tx_fifo_syncfifo_dout = soc_netsoc_uart_tx_fifo_rdport_dat_r;
assign soc_netsoc_uart_tx_fifo_rdport_re = soc_netsoc_uart_tx_fifo_do_read;
assign soc_netsoc_uart_tx_fifo_syncfifo_writable = (soc_netsoc_uart_tx_fifo_level0 != 5'd16);
assign soc_netsoc_uart_tx_fifo_syncfifo_readable = (soc_netsoc_uart_tx_fifo_level0 != 1'd0);
assign soc_netsoc_uart_rx_fifo_syncfifo_din = {soc_netsoc_uart_rx_fifo_fifo_in_last, soc_netsoc_uart_rx_fifo_fifo_in_first, soc_netsoc_uart_rx_fifo_fifo_in_payload_data};
assign {soc_netsoc_uart_rx_fifo_fifo_out_last, soc_netsoc_uart_rx_fifo_fifo_out_first, soc_netsoc_uart_rx_fifo_fifo_out_payload_data} = soc_netsoc_uart_rx_fifo_syncfifo_dout;
assign soc_netsoc_uart_rx_fifo_sink_ready = soc_netsoc_uart_rx_fifo_syncfifo_writable;
assign soc_netsoc_uart_rx_fifo_syncfifo_we = soc_netsoc_uart_rx_fifo_sink_valid;
assign soc_netsoc_uart_rx_fifo_fifo_in_first = soc_netsoc_uart_rx_fifo_sink_first;
assign soc_netsoc_uart_rx_fifo_fifo_in_last = soc_netsoc_uart_rx_fifo_sink_last;
assign soc_netsoc_uart_rx_fifo_fifo_in_payload_data = soc_netsoc_uart_rx_fifo_sink_payload_data;
assign soc_netsoc_uart_rx_fifo_source_valid = soc_netsoc_uart_rx_fifo_readable;
assign soc_netsoc_uart_rx_fifo_source_first = soc_netsoc_uart_rx_fifo_fifo_out_first;
assign soc_netsoc_uart_rx_fifo_source_last = soc_netsoc_uart_rx_fifo_fifo_out_last;
assign soc_netsoc_uart_rx_fifo_source_payload_data = soc_netsoc_uart_rx_fifo_fifo_out_payload_data;
assign soc_netsoc_uart_rx_fifo_re = soc_netsoc_uart_rx_fifo_source_ready;
assign soc_netsoc_uart_rx_fifo_syncfifo_re = (soc_netsoc_uart_rx_fifo_syncfifo_readable & ((~soc_netsoc_uart_rx_fifo_readable) | soc_netsoc_uart_rx_fifo_re));
assign soc_netsoc_uart_rx_fifo_level1 = (soc_netsoc_uart_rx_fifo_level0 + soc_netsoc_uart_rx_fifo_readable);
always @(*) begin
	soc_netsoc_uart_rx_fifo_wrport_adr <= 4'd0;
	if (soc_netsoc_uart_rx_fifo_replace) begin
		soc_netsoc_uart_rx_fifo_wrport_adr <= (soc_netsoc_uart_rx_fifo_produce - 1'd1);
	end else begin
		soc_netsoc_uart_rx_fifo_wrport_adr <= soc_netsoc_uart_rx_fifo_produce;
	end
end
assign soc_netsoc_uart_rx_fifo_wrport_dat_w = soc_netsoc_uart_rx_fifo_syncfifo_din;
assign soc_netsoc_uart_rx_fifo_wrport_we = (soc_netsoc_uart_rx_fifo_syncfifo_we & (soc_netsoc_uart_rx_fifo_syncfifo_writable | soc_netsoc_uart_rx_fifo_replace));
assign soc_netsoc_uart_rx_fifo_do_read = (soc_netsoc_uart_rx_fifo_syncfifo_readable & soc_netsoc_uart_rx_fifo_syncfifo_re);
assign soc_netsoc_uart_rx_fifo_rdport_adr = soc_netsoc_uart_rx_fifo_consume;
assign soc_netsoc_uart_rx_fifo_syncfifo_dout = soc_netsoc_uart_rx_fifo_rdport_dat_r;
assign soc_netsoc_uart_rx_fifo_rdport_re = soc_netsoc_uart_rx_fifo_do_read;
assign soc_netsoc_uart_rx_fifo_syncfifo_writable = (soc_netsoc_uart_rx_fifo_level0 != 5'd16);
assign soc_netsoc_uart_rx_fifo_syncfifo_readable = (soc_netsoc_uart_rx_fifo_level0 != 1'd0);
assign soc_netsoc_timer0_zero_trigger = (soc_netsoc_timer0_value != 1'd0);
assign soc_netsoc_timer0_eventmanager_status_w = soc_netsoc_timer0_zero_status;
always @(*) begin
	soc_netsoc_timer0_zero_clear <= 1'd0;
	if ((soc_netsoc_timer0_eventmanager_pending_re & soc_netsoc_timer0_eventmanager_pending_r)) begin
		soc_netsoc_timer0_zero_clear <= 1'd1;
	end
end
assign soc_netsoc_timer0_eventmanager_pending_w = soc_netsoc_timer0_zero_pending;
assign soc_netsoc_timer0_irq = (soc_netsoc_timer0_eventmanager_pending_w & soc_netsoc_timer0_eventmanager_storage);
assign soc_netsoc_timer0_zero_status = soc_netsoc_timer0_zero_trigger;
assign por_clk = sys_clk;
assign sdram_full_rd_clk = sdram_full_wr_clk;
assign soc_crg_clk4x_rd_strb = soc_crg_clk4x_wr_strb;
assign soc_git_status = 159'd654516777491648312730067856677330909266892272604;
assign soc_platform_status = 63'd7022356987853668352;
assign soc_target_status = 63'd7954891860168671232;
assign soc_spiflash_bus_dat_r = soc_spiflash_sr;
always @(*) begin
	soc_spiflash_o <= 4'd0;
	soc_spiflash_oe <= 1'd0;
	spiflash4x_cs_n <= 1'd0;
	spiflash4x_clk <= 1'd0;
	soc_spiflash_status <= 1'd0;
	if (soc_spiflash_bitbang_en_storage) begin
		spiflash4x_clk <= soc_spiflash_bitbang_storage[1];
		spiflash4x_cs_n <= soc_spiflash_bitbang_storage[2];
		if (soc_spiflash_bitbang_storage[3]) begin
			soc_spiflash_oe <= 1'd0;
		end else begin
			soc_spiflash_oe <= 1'd1;
		end
		if (soc_spiflash_bitbang_storage[1]) begin
			soc_spiflash_status <= soc_spiflash_i0[1];
		end
		soc_spiflash_o <= {{3{1'd1}}, soc_spiflash_bitbang_storage[0]};
	end else begin
		spiflash4x_clk <= soc_spiflash_clk;
		spiflash4x_cs_n <= soc_spiflash_cs_n;
		soc_spiflash_o <= soc_spiflash_sr[31:28];
		soc_spiflash_oe <= soc_spiflash_dq_oe;
	end
end
assign soc_ddrphy_sdram_half_clk_n = (~sdram_half_clk);
assign soc_ddrphy_dqs_t_d0 = (~(soc_ddrphy_drive_dqs | soc_ddrphy_postamble));
assign soc_ddrphy_dqs_t_d1 = (~soc_ddrphy_drive_dqs);
assign soc_ddrphy_record0_wrdata = soc_ddrphy_dfi_p0_wrdata;
assign soc_ddrphy_record0_wrdata_mask = soc_ddrphy_dfi_p0_wrdata_mask;
assign soc_ddrphy_record0_wrdata_en = soc_ddrphy_dfi_p0_wrdata_en;
assign soc_ddrphy_record0_rddata_en = soc_ddrphy_dfi_p0_rddata_en;
assign soc_ddrphy_record1_wrdata = soc_ddrphy_dfi_p1_wrdata;
assign soc_ddrphy_record1_wrdata_mask = soc_ddrphy_dfi_p1_wrdata_mask;
assign soc_ddrphy_record1_wrdata_en = soc_ddrphy_dfi_p1_wrdata_en;
assign soc_ddrphy_record1_rddata_en = soc_ddrphy_dfi_p1_rddata_en;
assign soc_ddrphy_drive_dq_n0 = (~soc_ddrphy_drive_dq);
assign soc_ddrphy_wrdata_en = (soc_ddrphy_record0_wrdata_en | soc_ddrphy_record1_wrdata_en);
assign soc_ddrphy_drive_dq = soc_ddrphy_wrdata_en;
assign soc_ddrphy_drive_dqs = soc_ddrphy_r_dfi_wrdata_en[1];
assign soc_ddrphy_rddata_en = (soc_ddrphy_record0_rddata_en | soc_ddrphy_record1_rddata_en);
assign soc_ddrphy_dfi_p0_rddata = soc_ddrphy_record0_rddata;
assign soc_ddrphy_dfi_p0_rddata_valid = soc_ddrphy_rddata_sr[0];
assign soc_ddrphy_dfi_p1_rddata = soc_ddrphy_record1_rddata;
assign soc_ddrphy_dfi_p1_rddata_valid = soc_ddrphy_rddata_sr[0];
assign soc_ddrphy_dfi_p0_address = soc_netsoc_sdram_master_p0_address;
assign soc_ddrphy_dfi_p0_bank = soc_netsoc_sdram_master_p0_bank;
assign soc_ddrphy_dfi_p0_cas_n = soc_netsoc_sdram_master_p0_cas_n;
assign soc_ddrphy_dfi_p0_cs_n = soc_netsoc_sdram_master_p0_cs_n;
assign soc_ddrphy_dfi_p0_ras_n = soc_netsoc_sdram_master_p0_ras_n;
assign soc_ddrphy_dfi_p0_we_n = soc_netsoc_sdram_master_p0_we_n;
assign soc_ddrphy_dfi_p0_cke = soc_netsoc_sdram_master_p0_cke;
assign soc_ddrphy_dfi_p0_odt = soc_netsoc_sdram_master_p0_odt;
assign soc_ddrphy_dfi_p0_reset_n = soc_netsoc_sdram_master_p0_reset_n;
assign soc_ddrphy_dfi_p0_act_n = soc_netsoc_sdram_master_p0_act_n;
assign soc_ddrphy_dfi_p0_wrdata = soc_netsoc_sdram_master_p0_wrdata;
assign soc_ddrphy_dfi_p0_wrdata_en = soc_netsoc_sdram_master_p0_wrdata_en;
assign soc_ddrphy_dfi_p0_wrdata_mask = soc_netsoc_sdram_master_p0_wrdata_mask;
assign soc_ddrphy_dfi_p0_rddata_en = soc_netsoc_sdram_master_p0_rddata_en;
assign soc_netsoc_sdram_master_p0_rddata = soc_ddrphy_dfi_p0_rddata;
assign soc_netsoc_sdram_master_p0_rddata_valid = soc_ddrphy_dfi_p0_rddata_valid;
assign soc_ddrphy_dfi_p1_address = soc_netsoc_sdram_master_p1_address;
assign soc_ddrphy_dfi_p1_bank = soc_netsoc_sdram_master_p1_bank;
assign soc_ddrphy_dfi_p1_cas_n = soc_netsoc_sdram_master_p1_cas_n;
assign soc_ddrphy_dfi_p1_cs_n = soc_netsoc_sdram_master_p1_cs_n;
assign soc_ddrphy_dfi_p1_ras_n = soc_netsoc_sdram_master_p1_ras_n;
assign soc_ddrphy_dfi_p1_we_n = soc_netsoc_sdram_master_p1_we_n;
assign soc_ddrphy_dfi_p1_cke = soc_netsoc_sdram_master_p1_cke;
assign soc_ddrphy_dfi_p1_odt = soc_netsoc_sdram_master_p1_odt;
assign soc_ddrphy_dfi_p1_reset_n = soc_netsoc_sdram_master_p1_reset_n;
assign soc_ddrphy_dfi_p1_act_n = soc_netsoc_sdram_master_p1_act_n;
assign soc_ddrphy_dfi_p1_wrdata = soc_netsoc_sdram_master_p1_wrdata;
assign soc_ddrphy_dfi_p1_wrdata_en = soc_netsoc_sdram_master_p1_wrdata_en;
assign soc_ddrphy_dfi_p1_wrdata_mask = soc_netsoc_sdram_master_p1_wrdata_mask;
assign soc_ddrphy_dfi_p1_rddata_en = soc_netsoc_sdram_master_p1_rddata_en;
assign soc_netsoc_sdram_master_p1_rddata = soc_ddrphy_dfi_p1_rddata;
assign soc_netsoc_sdram_master_p1_rddata_valid = soc_ddrphy_dfi_p1_rddata_valid;
assign soc_netsoc_sdram_slave_p0_address = soc_netsoc_sdram_dfi_p0_address;
assign soc_netsoc_sdram_slave_p0_bank = soc_netsoc_sdram_dfi_p0_bank;
assign soc_netsoc_sdram_slave_p0_cas_n = soc_netsoc_sdram_dfi_p0_cas_n;
assign soc_netsoc_sdram_slave_p0_cs_n = soc_netsoc_sdram_dfi_p0_cs_n;
assign soc_netsoc_sdram_slave_p0_ras_n = soc_netsoc_sdram_dfi_p0_ras_n;
assign soc_netsoc_sdram_slave_p0_we_n = soc_netsoc_sdram_dfi_p0_we_n;
assign soc_netsoc_sdram_slave_p0_cke = soc_netsoc_sdram_dfi_p0_cke;
assign soc_netsoc_sdram_slave_p0_odt = soc_netsoc_sdram_dfi_p0_odt;
assign soc_netsoc_sdram_slave_p0_reset_n = soc_netsoc_sdram_dfi_p0_reset_n;
assign soc_netsoc_sdram_slave_p0_act_n = soc_netsoc_sdram_dfi_p0_act_n;
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
assign soc_netsoc_sdram_slave_p1_act_n = soc_netsoc_sdram_dfi_p1_act_n;
assign soc_netsoc_sdram_slave_p1_wrdata = soc_netsoc_sdram_dfi_p1_wrdata;
assign soc_netsoc_sdram_slave_p1_wrdata_en = soc_netsoc_sdram_dfi_p1_wrdata_en;
assign soc_netsoc_sdram_slave_p1_wrdata_mask = soc_netsoc_sdram_dfi_p1_wrdata_mask;
assign soc_netsoc_sdram_slave_p1_rddata_en = soc_netsoc_sdram_dfi_p1_rddata_en;
assign soc_netsoc_sdram_dfi_p1_rddata = soc_netsoc_sdram_slave_p1_rddata;
assign soc_netsoc_sdram_dfi_p1_rddata_valid = soc_netsoc_sdram_slave_p1_rddata_valid;
always @(*) begin
	soc_netsoc_sdram_slave_p0_rddata <= 32'd0;
	soc_netsoc_sdram_slave_p0_rddata_valid <= 1'd0;
	soc_netsoc_sdram_slave_p1_rddata <= 32'd0;
	soc_netsoc_sdram_slave_p1_rddata_valid <= 1'd0;
	soc_netsoc_sdram_master_p0_address <= 13'd0;
	soc_netsoc_sdram_master_p0_bank <= 3'd0;
	soc_netsoc_sdram_master_p0_cas_n <= 1'd1;
	soc_netsoc_sdram_master_p0_cs_n <= 1'd1;
	soc_netsoc_sdram_master_p0_ras_n <= 1'd1;
	soc_netsoc_sdram_master_p0_we_n <= 1'd1;
	soc_netsoc_sdram_master_p0_cke <= 1'd0;
	soc_netsoc_sdram_master_p0_odt <= 1'd0;
	soc_netsoc_sdram_master_p0_reset_n <= 1'd0;
	soc_netsoc_sdram_master_p0_act_n <= 1'd1;
	soc_netsoc_sdram_master_p0_wrdata <= 32'd0;
	soc_netsoc_sdram_master_p0_wrdata_en <= 1'd0;
	soc_netsoc_sdram_master_p0_wrdata_mask <= 4'd0;
	soc_netsoc_sdram_master_p0_rddata_en <= 1'd0;
	soc_netsoc_sdram_master_p1_address <= 13'd0;
	soc_netsoc_sdram_master_p1_bank <= 3'd0;
	soc_netsoc_sdram_master_p1_cas_n <= 1'd1;
	soc_netsoc_sdram_master_p1_cs_n <= 1'd1;
	soc_netsoc_sdram_master_p1_ras_n <= 1'd1;
	soc_netsoc_sdram_master_p1_we_n <= 1'd1;
	soc_netsoc_sdram_master_p1_cke <= 1'd0;
	soc_netsoc_sdram_master_p1_odt <= 1'd0;
	soc_netsoc_sdram_master_p1_reset_n <= 1'd0;
	soc_netsoc_sdram_master_p1_act_n <= 1'd1;
	soc_netsoc_sdram_master_p1_wrdata <= 32'd0;
	soc_netsoc_sdram_master_p1_wrdata_en <= 1'd0;
	soc_netsoc_sdram_master_p1_wrdata_mask <= 4'd0;
	soc_netsoc_sdram_master_p1_rddata_en <= 1'd0;
	soc_netsoc_sdram_inti_p0_rddata <= 32'd0;
	soc_netsoc_sdram_inti_p0_rddata_valid <= 1'd0;
	soc_netsoc_sdram_inti_p1_rddata <= 32'd0;
	soc_netsoc_sdram_inti_p1_rddata_valid <= 1'd0;
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
		soc_netsoc_sdram_master_p0_act_n <= soc_netsoc_sdram_slave_p0_act_n;
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
		soc_netsoc_sdram_master_p1_act_n <= soc_netsoc_sdram_slave_p1_act_n;
		soc_netsoc_sdram_master_p1_wrdata <= soc_netsoc_sdram_slave_p1_wrdata;
		soc_netsoc_sdram_master_p1_wrdata_en <= soc_netsoc_sdram_slave_p1_wrdata_en;
		soc_netsoc_sdram_master_p1_wrdata_mask <= soc_netsoc_sdram_slave_p1_wrdata_mask;
		soc_netsoc_sdram_master_p1_rddata_en <= soc_netsoc_sdram_slave_p1_rddata_en;
		soc_netsoc_sdram_slave_p1_rddata <= soc_netsoc_sdram_master_p1_rddata;
		soc_netsoc_sdram_slave_p1_rddata_valid <= soc_netsoc_sdram_master_p1_rddata_valid;
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
		soc_netsoc_sdram_master_p0_act_n <= soc_netsoc_sdram_inti_p0_act_n;
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
		soc_netsoc_sdram_master_p1_act_n <= soc_netsoc_sdram_inti_p1_act_n;
		soc_netsoc_sdram_master_p1_wrdata <= soc_netsoc_sdram_inti_p1_wrdata;
		soc_netsoc_sdram_master_p1_wrdata_en <= soc_netsoc_sdram_inti_p1_wrdata_en;
		soc_netsoc_sdram_master_p1_wrdata_mask <= soc_netsoc_sdram_inti_p1_wrdata_mask;
		soc_netsoc_sdram_master_p1_rddata_en <= soc_netsoc_sdram_inti_p1_rddata_en;
		soc_netsoc_sdram_inti_p1_rddata <= soc_netsoc_sdram_master_p1_rddata;
		soc_netsoc_sdram_inti_p1_rddata_valid <= soc_netsoc_sdram_master_p1_rddata_valid;
	end
end
assign soc_netsoc_sdram_inti_p0_cke = soc_netsoc_sdram_storage[1];
assign soc_netsoc_sdram_inti_p1_cke = soc_netsoc_sdram_storage[1];
assign soc_netsoc_sdram_inti_p0_odt = soc_netsoc_sdram_storage[2];
assign soc_netsoc_sdram_inti_p1_odt = soc_netsoc_sdram_storage[2];
assign soc_netsoc_sdram_inti_p0_reset_n = soc_netsoc_sdram_storage[3];
assign soc_netsoc_sdram_inti_p1_reset_n = soc_netsoc_sdram_storage[3];
always @(*) begin
	soc_netsoc_sdram_inti_p0_cas_n <= 1'd1;
	soc_netsoc_sdram_inti_p0_cs_n <= 1'd1;
	soc_netsoc_sdram_inti_p0_ras_n <= 1'd1;
	soc_netsoc_sdram_inti_p0_we_n <= 1'd1;
	if (soc_netsoc_sdram_phaseinjector0_command_issue_re) begin
		soc_netsoc_sdram_inti_p0_cs_n <= {1{(~soc_netsoc_sdram_phaseinjector0_command_storage[0])}};
		soc_netsoc_sdram_inti_p0_we_n <= (~soc_netsoc_sdram_phaseinjector0_command_storage[1]);
		soc_netsoc_sdram_inti_p0_cas_n <= (~soc_netsoc_sdram_phaseinjector0_command_storage[2]);
		soc_netsoc_sdram_inti_p0_ras_n <= (~soc_netsoc_sdram_phaseinjector0_command_storage[3]);
	end else begin
		soc_netsoc_sdram_inti_p0_cs_n <= {1{1'd1}};
		soc_netsoc_sdram_inti_p0_we_n <= 1'd1;
		soc_netsoc_sdram_inti_p0_cas_n <= 1'd1;
		soc_netsoc_sdram_inti_p0_ras_n <= 1'd1;
	end
end
assign soc_netsoc_sdram_inti_p0_address = soc_netsoc_sdram_phaseinjector0_address_storage;
assign soc_netsoc_sdram_inti_p0_bank = soc_netsoc_sdram_phaseinjector0_baddress_storage;
assign soc_netsoc_sdram_inti_p0_wrdata_en = (soc_netsoc_sdram_phaseinjector0_command_issue_re & soc_netsoc_sdram_phaseinjector0_command_storage[4]);
assign soc_netsoc_sdram_inti_p0_rddata_en = (soc_netsoc_sdram_phaseinjector0_command_issue_re & soc_netsoc_sdram_phaseinjector0_command_storage[5]);
assign soc_netsoc_sdram_inti_p0_wrdata = soc_netsoc_sdram_phaseinjector0_wrdata_storage;
assign soc_netsoc_sdram_inti_p0_wrdata_mask = 1'd0;
always @(*) begin
	soc_netsoc_sdram_inti_p1_cas_n <= 1'd1;
	soc_netsoc_sdram_inti_p1_cs_n <= 1'd1;
	soc_netsoc_sdram_inti_p1_ras_n <= 1'd1;
	soc_netsoc_sdram_inti_p1_we_n <= 1'd1;
	if (soc_netsoc_sdram_phaseinjector1_command_issue_re) begin
		soc_netsoc_sdram_inti_p1_cs_n <= {1{(~soc_netsoc_sdram_phaseinjector1_command_storage[0])}};
		soc_netsoc_sdram_inti_p1_we_n <= (~soc_netsoc_sdram_phaseinjector1_command_storage[1]);
		soc_netsoc_sdram_inti_p1_cas_n <= (~soc_netsoc_sdram_phaseinjector1_command_storage[2]);
		soc_netsoc_sdram_inti_p1_ras_n <= (~soc_netsoc_sdram_phaseinjector1_command_storage[3]);
	end else begin
		soc_netsoc_sdram_inti_p1_cs_n <= {1{1'd1}};
		soc_netsoc_sdram_inti_p1_we_n <= 1'd1;
		soc_netsoc_sdram_inti_p1_cas_n <= 1'd1;
		soc_netsoc_sdram_inti_p1_ras_n <= 1'd1;
	end
end
assign soc_netsoc_sdram_inti_p1_address = soc_netsoc_sdram_phaseinjector1_address_storage;
assign soc_netsoc_sdram_inti_p1_bank = soc_netsoc_sdram_phaseinjector1_baddress_storage;
assign soc_netsoc_sdram_inti_p1_wrdata_en = (soc_netsoc_sdram_phaseinjector1_command_issue_re & soc_netsoc_sdram_phaseinjector1_command_storage[4]);
assign soc_netsoc_sdram_inti_p1_rddata_en = (soc_netsoc_sdram_phaseinjector1_command_issue_re & soc_netsoc_sdram_phaseinjector1_command_storage[5]);
assign soc_netsoc_sdram_inti_p1_wrdata = soc_netsoc_sdram_phaseinjector1_wrdata_storage;
assign soc_netsoc_sdram_inti_p1_wrdata_mask = 1'd0;
assign soc_netsoc_sdram_bankmachine0_req_valid = soc_netsoc_sdram_interface_bank0_valid;
assign soc_netsoc_sdram_interface_bank0_ready = soc_netsoc_sdram_bankmachine0_req_ready;
assign soc_netsoc_sdram_bankmachine0_req_we = soc_netsoc_sdram_interface_bank0_we;
assign soc_netsoc_sdram_bankmachine0_req_addr = soc_netsoc_sdram_interface_bank0_addr;
assign soc_netsoc_sdram_interface_bank0_lock = soc_netsoc_sdram_bankmachine0_req_lock;
assign soc_netsoc_sdram_interface_bank0_wdata_ready = soc_netsoc_sdram_bankmachine0_req_wdata_ready;
assign soc_netsoc_sdram_interface_bank0_rdata_valid = soc_netsoc_sdram_bankmachine0_req_rdata_valid;
assign soc_netsoc_sdram_bankmachine1_req_valid = soc_netsoc_sdram_interface_bank1_valid;
assign soc_netsoc_sdram_interface_bank1_ready = soc_netsoc_sdram_bankmachine1_req_ready;
assign soc_netsoc_sdram_bankmachine1_req_we = soc_netsoc_sdram_interface_bank1_we;
assign soc_netsoc_sdram_bankmachine1_req_addr = soc_netsoc_sdram_interface_bank1_addr;
assign soc_netsoc_sdram_interface_bank1_lock = soc_netsoc_sdram_bankmachine1_req_lock;
assign soc_netsoc_sdram_interface_bank1_wdata_ready = soc_netsoc_sdram_bankmachine1_req_wdata_ready;
assign soc_netsoc_sdram_interface_bank1_rdata_valid = soc_netsoc_sdram_bankmachine1_req_rdata_valid;
assign soc_netsoc_sdram_bankmachine2_req_valid = soc_netsoc_sdram_interface_bank2_valid;
assign soc_netsoc_sdram_interface_bank2_ready = soc_netsoc_sdram_bankmachine2_req_ready;
assign soc_netsoc_sdram_bankmachine2_req_we = soc_netsoc_sdram_interface_bank2_we;
assign soc_netsoc_sdram_bankmachine2_req_addr = soc_netsoc_sdram_interface_bank2_addr;
assign soc_netsoc_sdram_interface_bank2_lock = soc_netsoc_sdram_bankmachine2_req_lock;
assign soc_netsoc_sdram_interface_bank2_wdata_ready = soc_netsoc_sdram_bankmachine2_req_wdata_ready;
assign soc_netsoc_sdram_interface_bank2_rdata_valid = soc_netsoc_sdram_bankmachine2_req_rdata_valid;
assign soc_netsoc_sdram_bankmachine3_req_valid = soc_netsoc_sdram_interface_bank3_valid;
assign soc_netsoc_sdram_interface_bank3_ready = soc_netsoc_sdram_bankmachine3_req_ready;
assign soc_netsoc_sdram_bankmachine3_req_we = soc_netsoc_sdram_interface_bank3_we;
assign soc_netsoc_sdram_bankmachine3_req_addr = soc_netsoc_sdram_interface_bank3_addr;
assign soc_netsoc_sdram_interface_bank3_lock = soc_netsoc_sdram_bankmachine3_req_lock;
assign soc_netsoc_sdram_interface_bank3_wdata_ready = soc_netsoc_sdram_bankmachine3_req_wdata_ready;
assign soc_netsoc_sdram_interface_bank3_rdata_valid = soc_netsoc_sdram_bankmachine3_req_rdata_valid;
assign soc_netsoc_sdram_bankmachine4_req_valid = soc_netsoc_sdram_interface_bank4_valid;
assign soc_netsoc_sdram_interface_bank4_ready = soc_netsoc_sdram_bankmachine4_req_ready;
assign soc_netsoc_sdram_bankmachine4_req_we = soc_netsoc_sdram_interface_bank4_we;
assign soc_netsoc_sdram_bankmachine4_req_addr = soc_netsoc_sdram_interface_bank4_addr;
assign soc_netsoc_sdram_interface_bank4_lock = soc_netsoc_sdram_bankmachine4_req_lock;
assign soc_netsoc_sdram_interface_bank4_wdata_ready = soc_netsoc_sdram_bankmachine4_req_wdata_ready;
assign soc_netsoc_sdram_interface_bank4_rdata_valid = soc_netsoc_sdram_bankmachine4_req_rdata_valid;
assign soc_netsoc_sdram_bankmachine5_req_valid = soc_netsoc_sdram_interface_bank5_valid;
assign soc_netsoc_sdram_interface_bank5_ready = soc_netsoc_sdram_bankmachine5_req_ready;
assign soc_netsoc_sdram_bankmachine5_req_we = soc_netsoc_sdram_interface_bank5_we;
assign soc_netsoc_sdram_bankmachine5_req_addr = soc_netsoc_sdram_interface_bank5_addr;
assign soc_netsoc_sdram_interface_bank5_lock = soc_netsoc_sdram_bankmachine5_req_lock;
assign soc_netsoc_sdram_interface_bank5_wdata_ready = soc_netsoc_sdram_bankmachine5_req_wdata_ready;
assign soc_netsoc_sdram_interface_bank5_rdata_valid = soc_netsoc_sdram_bankmachine5_req_rdata_valid;
assign soc_netsoc_sdram_bankmachine6_req_valid = soc_netsoc_sdram_interface_bank6_valid;
assign soc_netsoc_sdram_interface_bank6_ready = soc_netsoc_sdram_bankmachine6_req_ready;
assign soc_netsoc_sdram_bankmachine6_req_we = soc_netsoc_sdram_interface_bank6_we;
assign soc_netsoc_sdram_bankmachine6_req_addr = soc_netsoc_sdram_interface_bank6_addr;
assign soc_netsoc_sdram_interface_bank6_lock = soc_netsoc_sdram_bankmachine6_req_lock;
assign soc_netsoc_sdram_interface_bank6_wdata_ready = soc_netsoc_sdram_bankmachine6_req_wdata_ready;
assign soc_netsoc_sdram_interface_bank6_rdata_valid = soc_netsoc_sdram_bankmachine6_req_rdata_valid;
assign soc_netsoc_sdram_bankmachine7_req_valid = soc_netsoc_sdram_interface_bank7_valid;
assign soc_netsoc_sdram_interface_bank7_ready = soc_netsoc_sdram_bankmachine7_req_ready;
assign soc_netsoc_sdram_bankmachine7_req_we = soc_netsoc_sdram_interface_bank7_we;
assign soc_netsoc_sdram_bankmachine7_req_addr = soc_netsoc_sdram_interface_bank7_addr;
assign soc_netsoc_sdram_interface_bank7_lock = soc_netsoc_sdram_bankmachine7_req_lock;
assign soc_netsoc_sdram_interface_bank7_wdata_ready = soc_netsoc_sdram_bankmachine7_req_wdata_ready;
assign soc_netsoc_sdram_interface_bank7_rdata_valid = soc_netsoc_sdram_bankmachine7_req_rdata_valid;
assign soc_netsoc_sdram_timer_reset = 2'sd2;
assign soc_netsoc_sdram_timer_wait = (~soc_netsoc_sdram_timer_done);
assign soc_netsoc_sdram_timer_done = (soc_netsoc_sdram_timer_count == 1'd0);
always @(*) begin
	soc_netsoc_sdram_cmd_valid <= 1'd0;
	soc_netsoc_sdram_cmd_last <= 1'd0;
	soc_netsoc_sdram_generator_start <= 1'd0;
	vns_refresher_next_state <= 2'd0;
	vns_refresher_next_state <= vns_refresher_state;
	case (vns_refresher_state)
		1'd1: begin
			soc_netsoc_sdram_cmd_valid <= 1'd1;
			if (soc_netsoc_sdram_cmd_ready) begin
				soc_netsoc_sdram_generator_start <= 1'd1;
				vns_refresher_next_state <= 2'd2;
			end
		end
		2'd2: begin
			if (soc_netsoc_sdram_generator_done) begin
				soc_netsoc_sdram_cmd_last <= 1'd1;
				vns_refresher_next_state <= 1'd0;
			end else begin
				soc_netsoc_sdram_cmd_valid <= 1'd1;
			end
		end
		default: begin
			if (soc_netsoc_sdram_timer_done) begin
				vns_refresher_next_state <= 1'd1;
			end
		end
	endcase
end
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_valid = soc_netsoc_sdram_bankmachine0_req_valid;
assign soc_netsoc_sdram_bankmachine0_req_ready = soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_ready;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_we = soc_netsoc_sdram_bankmachine0_req_we;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_addr = soc_netsoc_sdram_bankmachine0_req_addr;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_sink_valid = soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_valid;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_ready = soc_netsoc_sdram_bankmachine0_cmd_buffer_sink_ready;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_sink_first = soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_first;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_sink_last = soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_last;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_sink_payload_we = soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_we;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_sink_payload_addr = soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_addr;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_source_ready = (soc_netsoc_sdram_bankmachine0_req_wdata_ready | soc_netsoc_sdram_bankmachine0_req_rdata_valid);
assign soc_netsoc_sdram_bankmachine0_req_lock = (soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_valid | soc_netsoc_sdram_bankmachine0_cmd_buffer_source_valid);
assign soc_netsoc_sdram_bankmachine0_row_hit = (soc_netsoc_sdram_bankmachine0_row == soc_netsoc_sdram_bankmachine0_cmd_buffer_source_payload_addr[20:8]);
assign soc_netsoc_sdram_bankmachine0_cmd_payload_ba = 1'd0;
always @(*) begin
	soc_netsoc_sdram_bankmachine0_cmd_payload_a <= 13'd0;
	if (soc_netsoc_sdram_bankmachine0_row_col_n_addr_sel) begin
		soc_netsoc_sdram_bankmachine0_cmd_payload_a <= soc_netsoc_sdram_bankmachine0_cmd_buffer_source_payload_addr[20:8];
	end else begin
		soc_netsoc_sdram_bankmachine0_cmd_payload_a <= ((soc_netsoc_sdram_bankmachine0_auto_precharge <<< 4'd10) | {soc_netsoc_sdram_bankmachine0_cmd_buffer_source_payload_addr[7:0], {2{1'd0}}});
	end
end
assign soc_netsoc_sdram_bankmachine0_twtpcon_valid = ((soc_netsoc_sdram_bankmachine0_cmd_valid & soc_netsoc_sdram_bankmachine0_cmd_ready) & soc_netsoc_sdram_bankmachine0_cmd_payload_is_write);
assign soc_netsoc_sdram_bankmachine0_trccon_valid = ((soc_netsoc_sdram_bankmachine0_cmd_valid & soc_netsoc_sdram_bankmachine0_cmd_ready) & soc_netsoc_sdram_bankmachine0_row_open);
assign soc_netsoc_sdram_bankmachine0_trascon_valid = ((soc_netsoc_sdram_bankmachine0_cmd_valid & soc_netsoc_sdram_bankmachine0_cmd_ready) & soc_netsoc_sdram_bankmachine0_row_open);
always @(*) begin
	soc_netsoc_sdram_bankmachine0_auto_precharge <= 1'd0;
	if ((soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_valid & soc_netsoc_sdram_bankmachine0_cmd_buffer_source_valid)) begin
		if ((soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_addr[20:8] != soc_netsoc_sdram_bankmachine0_cmd_buffer_source_payload_addr[20:8])) begin
			soc_netsoc_sdram_bankmachine0_auto_precharge <= (soc_netsoc_sdram_bankmachine0_row_close == 1'd0);
		end
	end
end
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_din = {soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_last, soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_first, soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_addr, soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we};
assign {soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_last, soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_first, soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_addr, soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we} = soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_dout;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_ready = soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we = soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_valid;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_first = soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_first;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_last = soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_last;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we = soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_we;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_addr = soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_addr;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_valid = soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_first = soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_first;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_last = soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_last;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_we = soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_addr = soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_addr;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_re = soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_ready;
always @(*) begin
	soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_replace) begin
		soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr <= (soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr <= soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_produce;
	end
end
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_w = soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_din;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_we = (soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we & (soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable | soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_replace));
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_do_read = (soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable & soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_re);
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_adr = soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_consume;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_dout = soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_dat_r;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable = (soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_level != 4'd8);
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable = (soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_level != 1'd0);
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_pipe_ce = (soc_netsoc_sdram_bankmachine0_cmd_buffer_source_ready | (~soc_netsoc_sdram_bankmachine0_cmd_buffer_valid_n));
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_sink_ready = soc_netsoc_sdram_bankmachine0_cmd_buffer_pipe_ce;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_source_valid = soc_netsoc_sdram_bankmachine0_cmd_buffer_valid_n;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_busy = (1'd0 | soc_netsoc_sdram_bankmachine0_cmd_buffer_valid_n);
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_source_first = soc_netsoc_sdram_bankmachine0_cmd_buffer_first_n;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_source_last = soc_netsoc_sdram_bankmachine0_cmd_buffer_last_n;
always @(*) begin
	soc_netsoc_sdram_bankmachine0_row_open <= 1'd0;
	soc_netsoc_sdram_bankmachine0_row_close <= 1'd0;
	soc_netsoc_sdram_bankmachine0_req_wdata_ready <= 1'd0;
	soc_netsoc_sdram_bankmachine0_req_rdata_valid <= 1'd0;
	vns_bankmachine0_next_state <= 3'd0;
	soc_netsoc_sdram_bankmachine0_row_col_n_addr_sel <= 1'd0;
	soc_netsoc_sdram_bankmachine0_refresh_gnt <= 1'd0;
	soc_netsoc_sdram_bankmachine0_cmd_valid <= 1'd0;
	soc_netsoc_sdram_bankmachine0_cmd_payload_cas <= 1'd0;
	soc_netsoc_sdram_bankmachine0_cmd_payload_ras <= 1'd0;
	soc_netsoc_sdram_bankmachine0_cmd_payload_we <= 1'd0;
	soc_netsoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd0;
	soc_netsoc_sdram_bankmachine0_cmd_payload_is_read <= 1'd0;
	soc_netsoc_sdram_bankmachine0_cmd_payload_is_write <= 1'd0;
	vns_bankmachine0_next_state <= vns_bankmachine0_state;
	case (vns_bankmachine0_state)
		1'd1: begin
			if ((soc_netsoc_sdram_bankmachine0_twtpcon_ready & soc_netsoc_sdram_bankmachine0_trascon_ready)) begin
				soc_netsoc_sdram_bankmachine0_cmd_valid <= 1'd1;
				if (soc_netsoc_sdram_bankmachine0_cmd_ready) begin
					vns_bankmachine0_next_state <= 3'd5;
				end
				soc_netsoc_sdram_bankmachine0_cmd_payload_ras <= 1'd1;
				soc_netsoc_sdram_bankmachine0_cmd_payload_we <= 1'd1;
				soc_netsoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine0_row_close <= 1'd1;
		end
		2'd2: begin
			if ((soc_netsoc_sdram_bankmachine0_twtpcon_ready & soc_netsoc_sdram_bankmachine0_trascon_ready)) begin
				vns_bankmachine0_next_state <= 3'd5;
			end
			soc_netsoc_sdram_bankmachine0_row_close <= 1'd1;
		end
		2'd3: begin
			if (soc_netsoc_sdram_bankmachine0_trccon_ready) begin
				soc_netsoc_sdram_bankmachine0_row_col_n_addr_sel <= 1'd1;
				soc_netsoc_sdram_bankmachine0_row_open <= 1'd1;
				soc_netsoc_sdram_bankmachine0_cmd_valid <= 1'd1;
				soc_netsoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
				if (soc_netsoc_sdram_bankmachine0_cmd_ready) begin
					vns_bankmachine0_next_state <= 3'd6;
				end
				soc_netsoc_sdram_bankmachine0_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (soc_netsoc_sdram_bankmachine0_twtpcon_ready) begin
				soc_netsoc_sdram_bankmachine0_refresh_gnt <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine0_row_close <= 1'd1;
			soc_netsoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			if ((~soc_netsoc_sdram_bankmachine0_refresh_req)) begin
				vns_bankmachine0_next_state <= 1'd0;
			end
		end
		3'd5: begin
			vns_bankmachine0_next_state <= 2'd3;
		end
		3'd6: begin
			vns_bankmachine0_next_state <= 1'd0;
		end
		default: begin
			if (soc_netsoc_sdram_bankmachine0_refresh_req) begin
				vns_bankmachine0_next_state <= 3'd4;
			end else begin
				if (soc_netsoc_sdram_bankmachine0_cmd_buffer_source_valid) begin
					if (soc_netsoc_sdram_bankmachine0_row_opened) begin
						if (soc_netsoc_sdram_bankmachine0_row_hit) begin
							soc_netsoc_sdram_bankmachine0_cmd_valid <= 1'd1;
							if (soc_netsoc_sdram_bankmachine0_cmd_buffer_source_payload_we) begin
								soc_netsoc_sdram_bankmachine0_req_wdata_ready <= soc_netsoc_sdram_bankmachine0_cmd_ready;
								soc_netsoc_sdram_bankmachine0_cmd_payload_is_write <= 1'd1;
								soc_netsoc_sdram_bankmachine0_cmd_payload_we <= 1'd1;
							end else begin
								soc_netsoc_sdram_bankmachine0_req_rdata_valid <= soc_netsoc_sdram_bankmachine0_cmd_ready;
								soc_netsoc_sdram_bankmachine0_cmd_payload_is_read <= 1'd1;
							end
							soc_netsoc_sdram_bankmachine0_cmd_payload_cas <= 1'd1;
							if ((soc_netsoc_sdram_bankmachine0_cmd_ready & soc_netsoc_sdram_bankmachine0_auto_precharge)) begin
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
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_valid = soc_netsoc_sdram_bankmachine1_req_valid;
assign soc_netsoc_sdram_bankmachine1_req_ready = soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_ready;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_we = soc_netsoc_sdram_bankmachine1_req_we;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_addr = soc_netsoc_sdram_bankmachine1_req_addr;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_sink_valid = soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_valid;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_ready = soc_netsoc_sdram_bankmachine1_cmd_buffer_sink_ready;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_sink_first = soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_first;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_sink_last = soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_last;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_sink_payload_we = soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_we;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_sink_payload_addr = soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_addr;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_source_ready = (soc_netsoc_sdram_bankmachine1_req_wdata_ready | soc_netsoc_sdram_bankmachine1_req_rdata_valid);
assign soc_netsoc_sdram_bankmachine1_req_lock = (soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_valid | soc_netsoc_sdram_bankmachine1_cmd_buffer_source_valid);
assign soc_netsoc_sdram_bankmachine1_row_hit = (soc_netsoc_sdram_bankmachine1_row == soc_netsoc_sdram_bankmachine1_cmd_buffer_source_payload_addr[20:8]);
assign soc_netsoc_sdram_bankmachine1_cmd_payload_ba = 1'd1;
always @(*) begin
	soc_netsoc_sdram_bankmachine1_cmd_payload_a <= 13'd0;
	if (soc_netsoc_sdram_bankmachine1_row_col_n_addr_sel) begin
		soc_netsoc_sdram_bankmachine1_cmd_payload_a <= soc_netsoc_sdram_bankmachine1_cmd_buffer_source_payload_addr[20:8];
	end else begin
		soc_netsoc_sdram_bankmachine1_cmd_payload_a <= ((soc_netsoc_sdram_bankmachine1_auto_precharge <<< 4'd10) | {soc_netsoc_sdram_bankmachine1_cmd_buffer_source_payload_addr[7:0], {2{1'd0}}});
	end
end
assign soc_netsoc_sdram_bankmachine1_twtpcon_valid = ((soc_netsoc_sdram_bankmachine1_cmd_valid & soc_netsoc_sdram_bankmachine1_cmd_ready) & soc_netsoc_sdram_bankmachine1_cmd_payload_is_write);
assign soc_netsoc_sdram_bankmachine1_trccon_valid = ((soc_netsoc_sdram_bankmachine1_cmd_valid & soc_netsoc_sdram_bankmachine1_cmd_ready) & soc_netsoc_sdram_bankmachine1_row_open);
assign soc_netsoc_sdram_bankmachine1_trascon_valid = ((soc_netsoc_sdram_bankmachine1_cmd_valid & soc_netsoc_sdram_bankmachine1_cmd_ready) & soc_netsoc_sdram_bankmachine1_row_open);
always @(*) begin
	soc_netsoc_sdram_bankmachine1_auto_precharge <= 1'd0;
	if ((soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_valid & soc_netsoc_sdram_bankmachine1_cmd_buffer_source_valid)) begin
		if ((soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_addr[20:8] != soc_netsoc_sdram_bankmachine1_cmd_buffer_source_payload_addr[20:8])) begin
			soc_netsoc_sdram_bankmachine1_auto_precharge <= (soc_netsoc_sdram_bankmachine1_row_close == 1'd0);
		end
	end
end
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_din = {soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_last, soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_first, soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_addr, soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we};
assign {soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_last, soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_first, soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_addr, soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we} = soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_dout;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_ready = soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we = soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_valid;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_first = soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_first;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_last = soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_last;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we = soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_we;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_addr = soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_addr;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_valid = soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_first = soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_first;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_last = soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_last;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_we = soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_addr = soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_addr;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_re = soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_ready;
always @(*) begin
	soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_replace) begin
		soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr <= (soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr <= soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_produce;
	end
end
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_w = soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_din;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_we = (soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we & (soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable | soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_replace));
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_do_read = (soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable & soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_re);
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_adr = soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_consume;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_dout = soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_dat_r;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable = (soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_level != 4'd8);
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable = (soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_level != 1'd0);
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_pipe_ce = (soc_netsoc_sdram_bankmachine1_cmd_buffer_source_ready | (~soc_netsoc_sdram_bankmachine1_cmd_buffer_valid_n));
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_sink_ready = soc_netsoc_sdram_bankmachine1_cmd_buffer_pipe_ce;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_source_valid = soc_netsoc_sdram_bankmachine1_cmd_buffer_valid_n;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_busy = (1'd0 | soc_netsoc_sdram_bankmachine1_cmd_buffer_valid_n);
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_source_first = soc_netsoc_sdram_bankmachine1_cmd_buffer_first_n;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_source_last = soc_netsoc_sdram_bankmachine1_cmd_buffer_last_n;
always @(*) begin
	vns_bankmachine1_next_state <= 3'd0;
	soc_netsoc_sdram_bankmachine1_cmd_payload_cas <= 1'd0;
	soc_netsoc_sdram_bankmachine1_cmd_payload_ras <= 1'd0;
	soc_netsoc_sdram_bankmachine1_cmd_payload_we <= 1'd0;
	soc_netsoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd0;
	soc_netsoc_sdram_bankmachine1_cmd_payload_is_read <= 1'd0;
	soc_netsoc_sdram_bankmachine1_cmd_payload_is_write <= 1'd0;
	soc_netsoc_sdram_bankmachine1_row_open <= 1'd0;
	soc_netsoc_sdram_bankmachine1_row_close <= 1'd0;
	soc_netsoc_sdram_bankmachine1_req_wdata_ready <= 1'd0;
	soc_netsoc_sdram_bankmachine1_req_rdata_valid <= 1'd0;
	soc_netsoc_sdram_bankmachine1_row_col_n_addr_sel <= 1'd0;
	soc_netsoc_sdram_bankmachine1_refresh_gnt <= 1'd0;
	soc_netsoc_sdram_bankmachine1_cmd_valid <= 1'd0;
	vns_bankmachine1_next_state <= vns_bankmachine1_state;
	case (vns_bankmachine1_state)
		1'd1: begin
			if ((soc_netsoc_sdram_bankmachine1_twtpcon_ready & soc_netsoc_sdram_bankmachine1_trascon_ready)) begin
				soc_netsoc_sdram_bankmachine1_cmd_valid <= 1'd1;
				if (soc_netsoc_sdram_bankmachine1_cmd_ready) begin
					vns_bankmachine1_next_state <= 3'd5;
				end
				soc_netsoc_sdram_bankmachine1_cmd_payload_ras <= 1'd1;
				soc_netsoc_sdram_bankmachine1_cmd_payload_we <= 1'd1;
				soc_netsoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine1_row_close <= 1'd1;
		end
		2'd2: begin
			if ((soc_netsoc_sdram_bankmachine1_twtpcon_ready & soc_netsoc_sdram_bankmachine1_trascon_ready)) begin
				vns_bankmachine1_next_state <= 3'd5;
			end
			soc_netsoc_sdram_bankmachine1_row_close <= 1'd1;
		end
		2'd3: begin
			if (soc_netsoc_sdram_bankmachine1_trccon_ready) begin
				soc_netsoc_sdram_bankmachine1_row_col_n_addr_sel <= 1'd1;
				soc_netsoc_sdram_bankmachine1_row_open <= 1'd1;
				soc_netsoc_sdram_bankmachine1_cmd_valid <= 1'd1;
				soc_netsoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
				if (soc_netsoc_sdram_bankmachine1_cmd_ready) begin
					vns_bankmachine1_next_state <= 3'd6;
				end
				soc_netsoc_sdram_bankmachine1_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (soc_netsoc_sdram_bankmachine1_twtpcon_ready) begin
				soc_netsoc_sdram_bankmachine1_refresh_gnt <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine1_row_close <= 1'd1;
			soc_netsoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			if ((~soc_netsoc_sdram_bankmachine1_refresh_req)) begin
				vns_bankmachine1_next_state <= 1'd0;
			end
		end
		3'd5: begin
			vns_bankmachine1_next_state <= 2'd3;
		end
		3'd6: begin
			vns_bankmachine1_next_state <= 1'd0;
		end
		default: begin
			if (soc_netsoc_sdram_bankmachine1_refresh_req) begin
				vns_bankmachine1_next_state <= 3'd4;
			end else begin
				if (soc_netsoc_sdram_bankmachine1_cmd_buffer_source_valid) begin
					if (soc_netsoc_sdram_bankmachine1_row_opened) begin
						if (soc_netsoc_sdram_bankmachine1_row_hit) begin
							soc_netsoc_sdram_bankmachine1_cmd_valid <= 1'd1;
							if (soc_netsoc_sdram_bankmachine1_cmd_buffer_source_payload_we) begin
								soc_netsoc_sdram_bankmachine1_req_wdata_ready <= soc_netsoc_sdram_bankmachine1_cmd_ready;
								soc_netsoc_sdram_bankmachine1_cmd_payload_is_write <= 1'd1;
								soc_netsoc_sdram_bankmachine1_cmd_payload_we <= 1'd1;
							end else begin
								soc_netsoc_sdram_bankmachine1_req_rdata_valid <= soc_netsoc_sdram_bankmachine1_cmd_ready;
								soc_netsoc_sdram_bankmachine1_cmd_payload_is_read <= 1'd1;
							end
							soc_netsoc_sdram_bankmachine1_cmd_payload_cas <= 1'd1;
							if ((soc_netsoc_sdram_bankmachine1_cmd_ready & soc_netsoc_sdram_bankmachine1_auto_precharge)) begin
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
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_valid = soc_netsoc_sdram_bankmachine2_req_valid;
assign soc_netsoc_sdram_bankmachine2_req_ready = soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_ready;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_we = soc_netsoc_sdram_bankmachine2_req_we;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_addr = soc_netsoc_sdram_bankmachine2_req_addr;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_sink_valid = soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_valid;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_ready = soc_netsoc_sdram_bankmachine2_cmd_buffer_sink_ready;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_sink_first = soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_first;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_sink_last = soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_last;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_sink_payload_we = soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_we;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_sink_payload_addr = soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_addr;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_source_ready = (soc_netsoc_sdram_bankmachine2_req_wdata_ready | soc_netsoc_sdram_bankmachine2_req_rdata_valid);
assign soc_netsoc_sdram_bankmachine2_req_lock = (soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_valid | soc_netsoc_sdram_bankmachine2_cmd_buffer_source_valid);
assign soc_netsoc_sdram_bankmachine2_row_hit = (soc_netsoc_sdram_bankmachine2_row == soc_netsoc_sdram_bankmachine2_cmd_buffer_source_payload_addr[20:8]);
assign soc_netsoc_sdram_bankmachine2_cmd_payload_ba = 2'd2;
always @(*) begin
	soc_netsoc_sdram_bankmachine2_cmd_payload_a <= 13'd0;
	if (soc_netsoc_sdram_bankmachine2_row_col_n_addr_sel) begin
		soc_netsoc_sdram_bankmachine2_cmd_payload_a <= soc_netsoc_sdram_bankmachine2_cmd_buffer_source_payload_addr[20:8];
	end else begin
		soc_netsoc_sdram_bankmachine2_cmd_payload_a <= ((soc_netsoc_sdram_bankmachine2_auto_precharge <<< 4'd10) | {soc_netsoc_sdram_bankmachine2_cmd_buffer_source_payload_addr[7:0], {2{1'd0}}});
	end
end
assign soc_netsoc_sdram_bankmachine2_twtpcon_valid = ((soc_netsoc_sdram_bankmachine2_cmd_valid & soc_netsoc_sdram_bankmachine2_cmd_ready) & soc_netsoc_sdram_bankmachine2_cmd_payload_is_write);
assign soc_netsoc_sdram_bankmachine2_trccon_valid = ((soc_netsoc_sdram_bankmachine2_cmd_valid & soc_netsoc_sdram_bankmachine2_cmd_ready) & soc_netsoc_sdram_bankmachine2_row_open);
assign soc_netsoc_sdram_bankmachine2_trascon_valid = ((soc_netsoc_sdram_bankmachine2_cmd_valid & soc_netsoc_sdram_bankmachine2_cmd_ready) & soc_netsoc_sdram_bankmachine2_row_open);
always @(*) begin
	soc_netsoc_sdram_bankmachine2_auto_precharge <= 1'd0;
	if ((soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_valid & soc_netsoc_sdram_bankmachine2_cmd_buffer_source_valid)) begin
		if ((soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_addr[20:8] != soc_netsoc_sdram_bankmachine2_cmd_buffer_source_payload_addr[20:8])) begin
			soc_netsoc_sdram_bankmachine2_auto_precharge <= (soc_netsoc_sdram_bankmachine2_row_close == 1'd0);
		end
	end
end
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_din = {soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_last, soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_first, soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_addr, soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we};
assign {soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_last, soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_first, soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_addr, soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we} = soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_dout;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_ready = soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we = soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_valid;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_first = soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_first;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_last = soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_last;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we = soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_we;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_addr = soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_addr;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_valid = soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_first = soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_first;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_last = soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_last;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_we = soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_addr = soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_addr;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_re = soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_ready;
always @(*) begin
	soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_replace) begin
		soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr <= (soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr <= soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_produce;
	end
end
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_w = soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_din;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_we = (soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we & (soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable | soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_replace));
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_do_read = (soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable & soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_re);
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_adr = soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_consume;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_dout = soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_dat_r;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable = (soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_level != 4'd8);
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable = (soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_level != 1'd0);
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_pipe_ce = (soc_netsoc_sdram_bankmachine2_cmd_buffer_source_ready | (~soc_netsoc_sdram_bankmachine2_cmd_buffer_valid_n));
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_sink_ready = soc_netsoc_sdram_bankmachine2_cmd_buffer_pipe_ce;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_source_valid = soc_netsoc_sdram_bankmachine2_cmd_buffer_valid_n;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_busy = (1'd0 | soc_netsoc_sdram_bankmachine2_cmd_buffer_valid_n);
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_source_first = soc_netsoc_sdram_bankmachine2_cmd_buffer_first_n;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_source_last = soc_netsoc_sdram_bankmachine2_cmd_buffer_last_n;
always @(*) begin
	soc_netsoc_sdram_bankmachine2_row_open <= 1'd0;
	soc_netsoc_sdram_bankmachine2_row_close <= 1'd0;
	soc_netsoc_sdram_bankmachine2_req_wdata_ready <= 1'd0;
	soc_netsoc_sdram_bankmachine2_req_rdata_valid <= 1'd0;
	soc_netsoc_sdram_bankmachine2_row_col_n_addr_sel <= 1'd0;
	soc_netsoc_sdram_bankmachine2_refresh_gnt <= 1'd0;
	soc_netsoc_sdram_bankmachine2_cmd_valid <= 1'd0;
	soc_netsoc_sdram_bankmachine2_cmd_payload_cas <= 1'd0;
	vns_bankmachine2_next_state <= 3'd0;
	soc_netsoc_sdram_bankmachine2_cmd_payload_ras <= 1'd0;
	soc_netsoc_sdram_bankmachine2_cmd_payload_we <= 1'd0;
	soc_netsoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd0;
	soc_netsoc_sdram_bankmachine2_cmd_payload_is_read <= 1'd0;
	soc_netsoc_sdram_bankmachine2_cmd_payload_is_write <= 1'd0;
	vns_bankmachine2_next_state <= vns_bankmachine2_state;
	case (vns_bankmachine2_state)
		1'd1: begin
			if ((soc_netsoc_sdram_bankmachine2_twtpcon_ready & soc_netsoc_sdram_bankmachine2_trascon_ready)) begin
				soc_netsoc_sdram_bankmachine2_cmd_valid <= 1'd1;
				if (soc_netsoc_sdram_bankmachine2_cmd_ready) begin
					vns_bankmachine2_next_state <= 3'd5;
				end
				soc_netsoc_sdram_bankmachine2_cmd_payload_ras <= 1'd1;
				soc_netsoc_sdram_bankmachine2_cmd_payload_we <= 1'd1;
				soc_netsoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine2_row_close <= 1'd1;
		end
		2'd2: begin
			if ((soc_netsoc_sdram_bankmachine2_twtpcon_ready & soc_netsoc_sdram_bankmachine2_trascon_ready)) begin
				vns_bankmachine2_next_state <= 3'd5;
			end
			soc_netsoc_sdram_bankmachine2_row_close <= 1'd1;
		end
		2'd3: begin
			if (soc_netsoc_sdram_bankmachine2_trccon_ready) begin
				soc_netsoc_sdram_bankmachine2_row_col_n_addr_sel <= 1'd1;
				soc_netsoc_sdram_bankmachine2_row_open <= 1'd1;
				soc_netsoc_sdram_bankmachine2_cmd_valid <= 1'd1;
				soc_netsoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
				if (soc_netsoc_sdram_bankmachine2_cmd_ready) begin
					vns_bankmachine2_next_state <= 3'd6;
				end
				soc_netsoc_sdram_bankmachine2_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (soc_netsoc_sdram_bankmachine2_twtpcon_ready) begin
				soc_netsoc_sdram_bankmachine2_refresh_gnt <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine2_row_close <= 1'd1;
			soc_netsoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			if ((~soc_netsoc_sdram_bankmachine2_refresh_req)) begin
				vns_bankmachine2_next_state <= 1'd0;
			end
		end
		3'd5: begin
			vns_bankmachine2_next_state <= 2'd3;
		end
		3'd6: begin
			vns_bankmachine2_next_state <= 1'd0;
		end
		default: begin
			if (soc_netsoc_sdram_bankmachine2_refresh_req) begin
				vns_bankmachine2_next_state <= 3'd4;
			end else begin
				if (soc_netsoc_sdram_bankmachine2_cmd_buffer_source_valid) begin
					if (soc_netsoc_sdram_bankmachine2_row_opened) begin
						if (soc_netsoc_sdram_bankmachine2_row_hit) begin
							soc_netsoc_sdram_bankmachine2_cmd_valid <= 1'd1;
							if (soc_netsoc_sdram_bankmachine2_cmd_buffer_source_payload_we) begin
								soc_netsoc_sdram_bankmachine2_req_wdata_ready <= soc_netsoc_sdram_bankmachine2_cmd_ready;
								soc_netsoc_sdram_bankmachine2_cmd_payload_is_write <= 1'd1;
								soc_netsoc_sdram_bankmachine2_cmd_payload_we <= 1'd1;
							end else begin
								soc_netsoc_sdram_bankmachine2_req_rdata_valid <= soc_netsoc_sdram_bankmachine2_cmd_ready;
								soc_netsoc_sdram_bankmachine2_cmd_payload_is_read <= 1'd1;
							end
							soc_netsoc_sdram_bankmachine2_cmd_payload_cas <= 1'd1;
							if ((soc_netsoc_sdram_bankmachine2_cmd_ready & soc_netsoc_sdram_bankmachine2_auto_precharge)) begin
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
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_valid = soc_netsoc_sdram_bankmachine3_req_valid;
assign soc_netsoc_sdram_bankmachine3_req_ready = soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_ready;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_we = soc_netsoc_sdram_bankmachine3_req_we;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_addr = soc_netsoc_sdram_bankmachine3_req_addr;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_sink_valid = soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_valid;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_ready = soc_netsoc_sdram_bankmachine3_cmd_buffer_sink_ready;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_sink_first = soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_first;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_sink_last = soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_last;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_sink_payload_we = soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_we;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_sink_payload_addr = soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_addr;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_source_ready = (soc_netsoc_sdram_bankmachine3_req_wdata_ready | soc_netsoc_sdram_bankmachine3_req_rdata_valid);
assign soc_netsoc_sdram_bankmachine3_req_lock = (soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_valid | soc_netsoc_sdram_bankmachine3_cmd_buffer_source_valid);
assign soc_netsoc_sdram_bankmachine3_row_hit = (soc_netsoc_sdram_bankmachine3_row == soc_netsoc_sdram_bankmachine3_cmd_buffer_source_payload_addr[20:8]);
assign soc_netsoc_sdram_bankmachine3_cmd_payload_ba = 2'd3;
always @(*) begin
	soc_netsoc_sdram_bankmachine3_cmd_payload_a <= 13'd0;
	if (soc_netsoc_sdram_bankmachine3_row_col_n_addr_sel) begin
		soc_netsoc_sdram_bankmachine3_cmd_payload_a <= soc_netsoc_sdram_bankmachine3_cmd_buffer_source_payload_addr[20:8];
	end else begin
		soc_netsoc_sdram_bankmachine3_cmd_payload_a <= ((soc_netsoc_sdram_bankmachine3_auto_precharge <<< 4'd10) | {soc_netsoc_sdram_bankmachine3_cmd_buffer_source_payload_addr[7:0], {2{1'd0}}});
	end
end
assign soc_netsoc_sdram_bankmachine3_twtpcon_valid = ((soc_netsoc_sdram_bankmachine3_cmd_valid & soc_netsoc_sdram_bankmachine3_cmd_ready) & soc_netsoc_sdram_bankmachine3_cmd_payload_is_write);
assign soc_netsoc_sdram_bankmachine3_trccon_valid = ((soc_netsoc_sdram_bankmachine3_cmd_valid & soc_netsoc_sdram_bankmachine3_cmd_ready) & soc_netsoc_sdram_bankmachine3_row_open);
assign soc_netsoc_sdram_bankmachine3_trascon_valid = ((soc_netsoc_sdram_bankmachine3_cmd_valid & soc_netsoc_sdram_bankmachine3_cmd_ready) & soc_netsoc_sdram_bankmachine3_row_open);
always @(*) begin
	soc_netsoc_sdram_bankmachine3_auto_precharge <= 1'd0;
	if ((soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_valid & soc_netsoc_sdram_bankmachine3_cmd_buffer_source_valid)) begin
		if ((soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_addr[20:8] != soc_netsoc_sdram_bankmachine3_cmd_buffer_source_payload_addr[20:8])) begin
			soc_netsoc_sdram_bankmachine3_auto_precharge <= (soc_netsoc_sdram_bankmachine3_row_close == 1'd0);
		end
	end
end
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_din = {soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_last, soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_first, soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_addr, soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we};
assign {soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_last, soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_first, soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_addr, soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we} = soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_dout;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_ready = soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we = soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_valid;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_first = soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_first;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_last = soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_last;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we = soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_we;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_addr = soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_addr;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_valid = soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_first = soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_first;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_last = soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_last;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_we = soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_addr = soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_addr;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_re = soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_ready;
always @(*) begin
	soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_replace) begin
		soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr <= (soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr <= soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_produce;
	end
end
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_w = soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_din;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_we = (soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we & (soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable | soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_replace));
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_do_read = (soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable & soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_re);
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_adr = soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_consume;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_dout = soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_dat_r;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable = (soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_level != 4'd8);
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable = (soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_level != 1'd0);
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_pipe_ce = (soc_netsoc_sdram_bankmachine3_cmd_buffer_source_ready | (~soc_netsoc_sdram_bankmachine3_cmd_buffer_valid_n));
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_sink_ready = soc_netsoc_sdram_bankmachine3_cmd_buffer_pipe_ce;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_source_valid = soc_netsoc_sdram_bankmachine3_cmd_buffer_valid_n;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_busy = (1'd0 | soc_netsoc_sdram_bankmachine3_cmd_buffer_valid_n);
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_source_first = soc_netsoc_sdram_bankmachine3_cmd_buffer_first_n;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_source_last = soc_netsoc_sdram_bankmachine3_cmd_buffer_last_n;
always @(*) begin
	vns_bankmachine3_next_state <= 3'd0;
	soc_netsoc_sdram_bankmachine3_row_open <= 1'd0;
	soc_netsoc_sdram_bankmachine3_row_close <= 1'd0;
	soc_netsoc_sdram_bankmachine3_req_wdata_ready <= 1'd0;
	soc_netsoc_sdram_bankmachine3_req_rdata_valid <= 1'd0;
	soc_netsoc_sdram_bankmachine3_row_col_n_addr_sel <= 1'd0;
	soc_netsoc_sdram_bankmachine3_refresh_gnt <= 1'd0;
	soc_netsoc_sdram_bankmachine3_cmd_valid <= 1'd0;
	soc_netsoc_sdram_bankmachine3_cmd_payload_cas <= 1'd0;
	soc_netsoc_sdram_bankmachine3_cmd_payload_ras <= 1'd0;
	soc_netsoc_sdram_bankmachine3_cmd_payload_we <= 1'd0;
	soc_netsoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd0;
	soc_netsoc_sdram_bankmachine3_cmd_payload_is_read <= 1'd0;
	soc_netsoc_sdram_bankmachine3_cmd_payload_is_write <= 1'd0;
	vns_bankmachine3_next_state <= vns_bankmachine3_state;
	case (vns_bankmachine3_state)
		1'd1: begin
			if ((soc_netsoc_sdram_bankmachine3_twtpcon_ready & soc_netsoc_sdram_bankmachine3_trascon_ready)) begin
				soc_netsoc_sdram_bankmachine3_cmd_valid <= 1'd1;
				if (soc_netsoc_sdram_bankmachine3_cmd_ready) begin
					vns_bankmachine3_next_state <= 3'd5;
				end
				soc_netsoc_sdram_bankmachine3_cmd_payload_ras <= 1'd1;
				soc_netsoc_sdram_bankmachine3_cmd_payload_we <= 1'd1;
				soc_netsoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine3_row_close <= 1'd1;
		end
		2'd2: begin
			if ((soc_netsoc_sdram_bankmachine3_twtpcon_ready & soc_netsoc_sdram_bankmachine3_trascon_ready)) begin
				vns_bankmachine3_next_state <= 3'd5;
			end
			soc_netsoc_sdram_bankmachine3_row_close <= 1'd1;
		end
		2'd3: begin
			if (soc_netsoc_sdram_bankmachine3_trccon_ready) begin
				soc_netsoc_sdram_bankmachine3_row_col_n_addr_sel <= 1'd1;
				soc_netsoc_sdram_bankmachine3_row_open <= 1'd1;
				soc_netsoc_sdram_bankmachine3_cmd_valid <= 1'd1;
				soc_netsoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
				if (soc_netsoc_sdram_bankmachine3_cmd_ready) begin
					vns_bankmachine3_next_state <= 3'd6;
				end
				soc_netsoc_sdram_bankmachine3_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (soc_netsoc_sdram_bankmachine3_twtpcon_ready) begin
				soc_netsoc_sdram_bankmachine3_refresh_gnt <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine3_row_close <= 1'd1;
			soc_netsoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			if ((~soc_netsoc_sdram_bankmachine3_refresh_req)) begin
				vns_bankmachine3_next_state <= 1'd0;
			end
		end
		3'd5: begin
			vns_bankmachine3_next_state <= 2'd3;
		end
		3'd6: begin
			vns_bankmachine3_next_state <= 1'd0;
		end
		default: begin
			if (soc_netsoc_sdram_bankmachine3_refresh_req) begin
				vns_bankmachine3_next_state <= 3'd4;
			end else begin
				if (soc_netsoc_sdram_bankmachine3_cmd_buffer_source_valid) begin
					if (soc_netsoc_sdram_bankmachine3_row_opened) begin
						if (soc_netsoc_sdram_bankmachine3_row_hit) begin
							soc_netsoc_sdram_bankmachine3_cmd_valid <= 1'd1;
							if (soc_netsoc_sdram_bankmachine3_cmd_buffer_source_payload_we) begin
								soc_netsoc_sdram_bankmachine3_req_wdata_ready <= soc_netsoc_sdram_bankmachine3_cmd_ready;
								soc_netsoc_sdram_bankmachine3_cmd_payload_is_write <= 1'd1;
								soc_netsoc_sdram_bankmachine3_cmd_payload_we <= 1'd1;
							end else begin
								soc_netsoc_sdram_bankmachine3_req_rdata_valid <= soc_netsoc_sdram_bankmachine3_cmd_ready;
								soc_netsoc_sdram_bankmachine3_cmd_payload_is_read <= 1'd1;
							end
							soc_netsoc_sdram_bankmachine3_cmd_payload_cas <= 1'd1;
							if ((soc_netsoc_sdram_bankmachine3_cmd_ready & soc_netsoc_sdram_bankmachine3_auto_precharge)) begin
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
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_valid = soc_netsoc_sdram_bankmachine4_req_valid;
assign soc_netsoc_sdram_bankmachine4_req_ready = soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_ready;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_we = soc_netsoc_sdram_bankmachine4_req_we;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_addr = soc_netsoc_sdram_bankmachine4_req_addr;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_sink_valid = soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_valid;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_ready = soc_netsoc_sdram_bankmachine4_cmd_buffer_sink_ready;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_sink_first = soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_first;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_sink_last = soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_last;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_sink_payload_we = soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_we;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_sink_payload_addr = soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_addr;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_source_ready = (soc_netsoc_sdram_bankmachine4_req_wdata_ready | soc_netsoc_sdram_bankmachine4_req_rdata_valid);
assign soc_netsoc_sdram_bankmachine4_req_lock = (soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_valid | soc_netsoc_sdram_bankmachine4_cmd_buffer_source_valid);
assign soc_netsoc_sdram_bankmachine4_row_hit = (soc_netsoc_sdram_bankmachine4_row == soc_netsoc_sdram_bankmachine4_cmd_buffer_source_payload_addr[20:8]);
assign soc_netsoc_sdram_bankmachine4_cmd_payload_ba = 3'd4;
always @(*) begin
	soc_netsoc_sdram_bankmachine4_cmd_payload_a <= 13'd0;
	if (soc_netsoc_sdram_bankmachine4_row_col_n_addr_sel) begin
		soc_netsoc_sdram_bankmachine4_cmd_payload_a <= soc_netsoc_sdram_bankmachine4_cmd_buffer_source_payload_addr[20:8];
	end else begin
		soc_netsoc_sdram_bankmachine4_cmd_payload_a <= ((soc_netsoc_sdram_bankmachine4_auto_precharge <<< 4'd10) | {soc_netsoc_sdram_bankmachine4_cmd_buffer_source_payload_addr[7:0], {2{1'd0}}});
	end
end
assign soc_netsoc_sdram_bankmachine4_twtpcon_valid = ((soc_netsoc_sdram_bankmachine4_cmd_valid & soc_netsoc_sdram_bankmachine4_cmd_ready) & soc_netsoc_sdram_bankmachine4_cmd_payload_is_write);
assign soc_netsoc_sdram_bankmachine4_trccon_valid = ((soc_netsoc_sdram_bankmachine4_cmd_valid & soc_netsoc_sdram_bankmachine4_cmd_ready) & soc_netsoc_sdram_bankmachine4_row_open);
assign soc_netsoc_sdram_bankmachine4_trascon_valid = ((soc_netsoc_sdram_bankmachine4_cmd_valid & soc_netsoc_sdram_bankmachine4_cmd_ready) & soc_netsoc_sdram_bankmachine4_row_open);
always @(*) begin
	soc_netsoc_sdram_bankmachine4_auto_precharge <= 1'd0;
	if ((soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_valid & soc_netsoc_sdram_bankmachine4_cmd_buffer_source_valid)) begin
		if ((soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_addr[20:8] != soc_netsoc_sdram_bankmachine4_cmd_buffer_source_payload_addr[20:8])) begin
			soc_netsoc_sdram_bankmachine4_auto_precharge <= (soc_netsoc_sdram_bankmachine4_row_close == 1'd0);
		end
	end
end
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_din = {soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_last, soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_first, soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_addr, soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_we};
assign {soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_last, soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_first, soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_addr, soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_we} = soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_dout;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_ready = soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_we = soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_valid;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_first = soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_first;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_last = soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_last;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_we = soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_we;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_addr = soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_addr;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_valid = soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_first = soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_first;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_last = soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_last;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_we = soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_we;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_addr = soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_addr;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_re = soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_ready;
always @(*) begin
	soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_replace) begin
		soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr <= (soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr <= soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_produce;
	end
end
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_dat_w = soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_din;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_we = (soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_we & (soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable | soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_replace));
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_do_read = (soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable & soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_re);
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_rdport_adr = soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_consume;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_dout = soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_rdport_dat_r;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable = (soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_level != 4'd8);
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable = (soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_level != 1'd0);
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_pipe_ce = (soc_netsoc_sdram_bankmachine4_cmd_buffer_source_ready | (~soc_netsoc_sdram_bankmachine4_cmd_buffer_valid_n));
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_sink_ready = soc_netsoc_sdram_bankmachine4_cmd_buffer_pipe_ce;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_source_valid = soc_netsoc_sdram_bankmachine4_cmd_buffer_valid_n;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_busy = (1'd0 | soc_netsoc_sdram_bankmachine4_cmd_buffer_valid_n);
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_source_first = soc_netsoc_sdram_bankmachine4_cmd_buffer_first_n;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_source_last = soc_netsoc_sdram_bankmachine4_cmd_buffer_last_n;
always @(*) begin
	soc_netsoc_sdram_bankmachine4_cmd_payload_cas <= 1'd0;
	soc_netsoc_sdram_bankmachine4_cmd_payload_ras <= 1'd0;
	soc_netsoc_sdram_bankmachine4_cmd_payload_we <= 1'd0;
	soc_netsoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd0;
	soc_netsoc_sdram_bankmachine4_cmd_payload_is_read <= 1'd0;
	soc_netsoc_sdram_bankmachine4_cmd_payload_is_write <= 1'd0;
	vns_bankmachine4_next_state <= 3'd0;
	soc_netsoc_sdram_bankmachine4_row_open <= 1'd0;
	soc_netsoc_sdram_bankmachine4_row_close <= 1'd0;
	soc_netsoc_sdram_bankmachine4_req_wdata_ready <= 1'd0;
	soc_netsoc_sdram_bankmachine4_req_rdata_valid <= 1'd0;
	soc_netsoc_sdram_bankmachine4_row_col_n_addr_sel <= 1'd0;
	soc_netsoc_sdram_bankmachine4_refresh_gnt <= 1'd0;
	soc_netsoc_sdram_bankmachine4_cmd_valid <= 1'd0;
	vns_bankmachine4_next_state <= vns_bankmachine4_state;
	case (vns_bankmachine4_state)
		1'd1: begin
			if ((soc_netsoc_sdram_bankmachine4_twtpcon_ready & soc_netsoc_sdram_bankmachine4_trascon_ready)) begin
				soc_netsoc_sdram_bankmachine4_cmd_valid <= 1'd1;
				if (soc_netsoc_sdram_bankmachine4_cmd_ready) begin
					vns_bankmachine4_next_state <= 3'd5;
				end
				soc_netsoc_sdram_bankmachine4_cmd_payload_ras <= 1'd1;
				soc_netsoc_sdram_bankmachine4_cmd_payload_we <= 1'd1;
				soc_netsoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine4_row_close <= 1'd1;
		end
		2'd2: begin
			if ((soc_netsoc_sdram_bankmachine4_twtpcon_ready & soc_netsoc_sdram_bankmachine4_trascon_ready)) begin
				vns_bankmachine4_next_state <= 3'd5;
			end
			soc_netsoc_sdram_bankmachine4_row_close <= 1'd1;
		end
		2'd3: begin
			if (soc_netsoc_sdram_bankmachine4_trccon_ready) begin
				soc_netsoc_sdram_bankmachine4_row_col_n_addr_sel <= 1'd1;
				soc_netsoc_sdram_bankmachine4_row_open <= 1'd1;
				soc_netsoc_sdram_bankmachine4_cmd_valid <= 1'd1;
				soc_netsoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd1;
				if (soc_netsoc_sdram_bankmachine4_cmd_ready) begin
					vns_bankmachine4_next_state <= 3'd6;
				end
				soc_netsoc_sdram_bankmachine4_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (soc_netsoc_sdram_bankmachine4_twtpcon_ready) begin
				soc_netsoc_sdram_bankmachine4_refresh_gnt <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine4_row_close <= 1'd1;
			soc_netsoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			if ((~soc_netsoc_sdram_bankmachine4_refresh_req)) begin
				vns_bankmachine4_next_state <= 1'd0;
			end
		end
		3'd5: begin
			vns_bankmachine4_next_state <= 2'd3;
		end
		3'd6: begin
			vns_bankmachine4_next_state <= 1'd0;
		end
		default: begin
			if (soc_netsoc_sdram_bankmachine4_refresh_req) begin
				vns_bankmachine4_next_state <= 3'd4;
			end else begin
				if (soc_netsoc_sdram_bankmachine4_cmd_buffer_source_valid) begin
					if (soc_netsoc_sdram_bankmachine4_row_opened) begin
						if (soc_netsoc_sdram_bankmachine4_row_hit) begin
							soc_netsoc_sdram_bankmachine4_cmd_valid <= 1'd1;
							if (soc_netsoc_sdram_bankmachine4_cmd_buffer_source_payload_we) begin
								soc_netsoc_sdram_bankmachine4_req_wdata_ready <= soc_netsoc_sdram_bankmachine4_cmd_ready;
								soc_netsoc_sdram_bankmachine4_cmd_payload_is_write <= 1'd1;
								soc_netsoc_sdram_bankmachine4_cmd_payload_we <= 1'd1;
							end else begin
								soc_netsoc_sdram_bankmachine4_req_rdata_valid <= soc_netsoc_sdram_bankmachine4_cmd_ready;
								soc_netsoc_sdram_bankmachine4_cmd_payload_is_read <= 1'd1;
							end
							soc_netsoc_sdram_bankmachine4_cmd_payload_cas <= 1'd1;
							if ((soc_netsoc_sdram_bankmachine4_cmd_ready & soc_netsoc_sdram_bankmachine4_auto_precharge)) begin
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
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_valid = soc_netsoc_sdram_bankmachine5_req_valid;
assign soc_netsoc_sdram_bankmachine5_req_ready = soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_ready;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_we = soc_netsoc_sdram_bankmachine5_req_we;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_addr = soc_netsoc_sdram_bankmachine5_req_addr;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_sink_valid = soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_valid;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_ready = soc_netsoc_sdram_bankmachine5_cmd_buffer_sink_ready;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_sink_first = soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_first;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_sink_last = soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_last;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_sink_payload_we = soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_we;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_sink_payload_addr = soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_addr;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_source_ready = (soc_netsoc_sdram_bankmachine5_req_wdata_ready | soc_netsoc_sdram_bankmachine5_req_rdata_valid);
assign soc_netsoc_sdram_bankmachine5_req_lock = (soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_valid | soc_netsoc_sdram_bankmachine5_cmd_buffer_source_valid);
assign soc_netsoc_sdram_bankmachine5_row_hit = (soc_netsoc_sdram_bankmachine5_row == soc_netsoc_sdram_bankmachine5_cmd_buffer_source_payload_addr[20:8]);
assign soc_netsoc_sdram_bankmachine5_cmd_payload_ba = 3'd5;
always @(*) begin
	soc_netsoc_sdram_bankmachine5_cmd_payload_a <= 13'd0;
	if (soc_netsoc_sdram_bankmachine5_row_col_n_addr_sel) begin
		soc_netsoc_sdram_bankmachine5_cmd_payload_a <= soc_netsoc_sdram_bankmachine5_cmd_buffer_source_payload_addr[20:8];
	end else begin
		soc_netsoc_sdram_bankmachine5_cmd_payload_a <= ((soc_netsoc_sdram_bankmachine5_auto_precharge <<< 4'd10) | {soc_netsoc_sdram_bankmachine5_cmd_buffer_source_payload_addr[7:0], {2{1'd0}}});
	end
end
assign soc_netsoc_sdram_bankmachine5_twtpcon_valid = ((soc_netsoc_sdram_bankmachine5_cmd_valid & soc_netsoc_sdram_bankmachine5_cmd_ready) & soc_netsoc_sdram_bankmachine5_cmd_payload_is_write);
assign soc_netsoc_sdram_bankmachine5_trccon_valid = ((soc_netsoc_sdram_bankmachine5_cmd_valid & soc_netsoc_sdram_bankmachine5_cmd_ready) & soc_netsoc_sdram_bankmachine5_row_open);
assign soc_netsoc_sdram_bankmachine5_trascon_valid = ((soc_netsoc_sdram_bankmachine5_cmd_valid & soc_netsoc_sdram_bankmachine5_cmd_ready) & soc_netsoc_sdram_bankmachine5_row_open);
always @(*) begin
	soc_netsoc_sdram_bankmachine5_auto_precharge <= 1'd0;
	if ((soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_valid & soc_netsoc_sdram_bankmachine5_cmd_buffer_source_valid)) begin
		if ((soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_addr[20:8] != soc_netsoc_sdram_bankmachine5_cmd_buffer_source_payload_addr[20:8])) begin
			soc_netsoc_sdram_bankmachine5_auto_precharge <= (soc_netsoc_sdram_bankmachine5_row_close == 1'd0);
		end
	end
end
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_din = {soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_last, soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_first, soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_addr, soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_we};
assign {soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_last, soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_first, soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_addr, soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_we} = soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_dout;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_ready = soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_we = soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_valid;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_first = soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_first;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_last = soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_last;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_we = soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_we;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_addr = soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_addr;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_valid = soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_first = soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_first;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_last = soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_last;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_we = soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_we;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_addr = soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_addr;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_re = soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_ready;
always @(*) begin
	soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_replace) begin
		soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr <= (soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr <= soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_produce;
	end
end
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_dat_w = soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_din;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_we = (soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_we & (soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable | soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_replace));
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_do_read = (soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable & soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_re);
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_rdport_adr = soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_consume;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_dout = soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_rdport_dat_r;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable = (soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_level != 4'd8);
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable = (soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_level != 1'd0);
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_pipe_ce = (soc_netsoc_sdram_bankmachine5_cmd_buffer_source_ready | (~soc_netsoc_sdram_bankmachine5_cmd_buffer_valid_n));
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_sink_ready = soc_netsoc_sdram_bankmachine5_cmd_buffer_pipe_ce;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_source_valid = soc_netsoc_sdram_bankmachine5_cmd_buffer_valid_n;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_busy = (1'd0 | soc_netsoc_sdram_bankmachine5_cmd_buffer_valid_n);
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_source_first = soc_netsoc_sdram_bankmachine5_cmd_buffer_first_n;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_source_last = soc_netsoc_sdram_bankmachine5_cmd_buffer_last_n;
always @(*) begin
	soc_netsoc_sdram_bankmachine5_row_open <= 1'd0;
	soc_netsoc_sdram_bankmachine5_row_close <= 1'd0;
	soc_netsoc_sdram_bankmachine5_req_wdata_ready <= 1'd0;
	soc_netsoc_sdram_bankmachine5_req_rdata_valid <= 1'd0;
	soc_netsoc_sdram_bankmachine5_row_col_n_addr_sel <= 1'd0;
	soc_netsoc_sdram_bankmachine5_refresh_gnt <= 1'd0;
	soc_netsoc_sdram_bankmachine5_cmd_valid <= 1'd0;
	soc_netsoc_sdram_bankmachine5_cmd_payload_cas <= 1'd0;
	soc_netsoc_sdram_bankmachine5_cmd_payload_ras <= 1'd0;
	soc_netsoc_sdram_bankmachine5_cmd_payload_we <= 1'd0;
	soc_netsoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd0;
	soc_netsoc_sdram_bankmachine5_cmd_payload_is_read <= 1'd0;
	soc_netsoc_sdram_bankmachine5_cmd_payload_is_write <= 1'd0;
	vns_bankmachine5_next_state <= 3'd0;
	vns_bankmachine5_next_state <= vns_bankmachine5_state;
	case (vns_bankmachine5_state)
		1'd1: begin
			if ((soc_netsoc_sdram_bankmachine5_twtpcon_ready & soc_netsoc_sdram_bankmachine5_trascon_ready)) begin
				soc_netsoc_sdram_bankmachine5_cmd_valid <= 1'd1;
				if (soc_netsoc_sdram_bankmachine5_cmd_ready) begin
					vns_bankmachine5_next_state <= 3'd5;
				end
				soc_netsoc_sdram_bankmachine5_cmd_payload_ras <= 1'd1;
				soc_netsoc_sdram_bankmachine5_cmd_payload_we <= 1'd1;
				soc_netsoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine5_row_close <= 1'd1;
		end
		2'd2: begin
			if ((soc_netsoc_sdram_bankmachine5_twtpcon_ready & soc_netsoc_sdram_bankmachine5_trascon_ready)) begin
				vns_bankmachine5_next_state <= 3'd5;
			end
			soc_netsoc_sdram_bankmachine5_row_close <= 1'd1;
		end
		2'd3: begin
			if (soc_netsoc_sdram_bankmachine5_trccon_ready) begin
				soc_netsoc_sdram_bankmachine5_row_col_n_addr_sel <= 1'd1;
				soc_netsoc_sdram_bankmachine5_row_open <= 1'd1;
				soc_netsoc_sdram_bankmachine5_cmd_valid <= 1'd1;
				soc_netsoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd1;
				if (soc_netsoc_sdram_bankmachine5_cmd_ready) begin
					vns_bankmachine5_next_state <= 3'd6;
				end
				soc_netsoc_sdram_bankmachine5_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (soc_netsoc_sdram_bankmachine5_twtpcon_ready) begin
				soc_netsoc_sdram_bankmachine5_refresh_gnt <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine5_row_close <= 1'd1;
			soc_netsoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			if ((~soc_netsoc_sdram_bankmachine5_refresh_req)) begin
				vns_bankmachine5_next_state <= 1'd0;
			end
		end
		3'd5: begin
			vns_bankmachine5_next_state <= 2'd3;
		end
		3'd6: begin
			vns_bankmachine5_next_state <= 1'd0;
		end
		default: begin
			if (soc_netsoc_sdram_bankmachine5_refresh_req) begin
				vns_bankmachine5_next_state <= 3'd4;
			end else begin
				if (soc_netsoc_sdram_bankmachine5_cmd_buffer_source_valid) begin
					if (soc_netsoc_sdram_bankmachine5_row_opened) begin
						if (soc_netsoc_sdram_bankmachine5_row_hit) begin
							soc_netsoc_sdram_bankmachine5_cmd_valid <= 1'd1;
							if (soc_netsoc_sdram_bankmachine5_cmd_buffer_source_payload_we) begin
								soc_netsoc_sdram_bankmachine5_req_wdata_ready <= soc_netsoc_sdram_bankmachine5_cmd_ready;
								soc_netsoc_sdram_bankmachine5_cmd_payload_is_write <= 1'd1;
								soc_netsoc_sdram_bankmachine5_cmd_payload_we <= 1'd1;
							end else begin
								soc_netsoc_sdram_bankmachine5_req_rdata_valid <= soc_netsoc_sdram_bankmachine5_cmd_ready;
								soc_netsoc_sdram_bankmachine5_cmd_payload_is_read <= 1'd1;
							end
							soc_netsoc_sdram_bankmachine5_cmd_payload_cas <= 1'd1;
							if ((soc_netsoc_sdram_bankmachine5_cmd_ready & soc_netsoc_sdram_bankmachine5_auto_precharge)) begin
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
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_valid = soc_netsoc_sdram_bankmachine6_req_valid;
assign soc_netsoc_sdram_bankmachine6_req_ready = soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_ready;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_we = soc_netsoc_sdram_bankmachine6_req_we;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_addr = soc_netsoc_sdram_bankmachine6_req_addr;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_sink_valid = soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_valid;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_ready = soc_netsoc_sdram_bankmachine6_cmd_buffer_sink_ready;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_sink_first = soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_first;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_sink_last = soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_last;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_sink_payload_we = soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_we;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_sink_payload_addr = soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_addr;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_source_ready = (soc_netsoc_sdram_bankmachine6_req_wdata_ready | soc_netsoc_sdram_bankmachine6_req_rdata_valid);
assign soc_netsoc_sdram_bankmachine6_req_lock = (soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_valid | soc_netsoc_sdram_bankmachine6_cmd_buffer_source_valid);
assign soc_netsoc_sdram_bankmachine6_row_hit = (soc_netsoc_sdram_bankmachine6_row == soc_netsoc_sdram_bankmachine6_cmd_buffer_source_payload_addr[20:8]);
assign soc_netsoc_sdram_bankmachine6_cmd_payload_ba = 3'd6;
always @(*) begin
	soc_netsoc_sdram_bankmachine6_cmd_payload_a <= 13'd0;
	if (soc_netsoc_sdram_bankmachine6_row_col_n_addr_sel) begin
		soc_netsoc_sdram_bankmachine6_cmd_payload_a <= soc_netsoc_sdram_bankmachine6_cmd_buffer_source_payload_addr[20:8];
	end else begin
		soc_netsoc_sdram_bankmachine6_cmd_payload_a <= ((soc_netsoc_sdram_bankmachine6_auto_precharge <<< 4'd10) | {soc_netsoc_sdram_bankmachine6_cmd_buffer_source_payload_addr[7:0], {2{1'd0}}});
	end
end
assign soc_netsoc_sdram_bankmachine6_twtpcon_valid = ((soc_netsoc_sdram_bankmachine6_cmd_valid & soc_netsoc_sdram_bankmachine6_cmd_ready) & soc_netsoc_sdram_bankmachine6_cmd_payload_is_write);
assign soc_netsoc_sdram_bankmachine6_trccon_valid = ((soc_netsoc_sdram_bankmachine6_cmd_valid & soc_netsoc_sdram_bankmachine6_cmd_ready) & soc_netsoc_sdram_bankmachine6_row_open);
assign soc_netsoc_sdram_bankmachine6_trascon_valid = ((soc_netsoc_sdram_bankmachine6_cmd_valid & soc_netsoc_sdram_bankmachine6_cmd_ready) & soc_netsoc_sdram_bankmachine6_row_open);
always @(*) begin
	soc_netsoc_sdram_bankmachine6_auto_precharge <= 1'd0;
	if ((soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_valid & soc_netsoc_sdram_bankmachine6_cmd_buffer_source_valid)) begin
		if ((soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_addr[20:8] != soc_netsoc_sdram_bankmachine6_cmd_buffer_source_payload_addr[20:8])) begin
			soc_netsoc_sdram_bankmachine6_auto_precharge <= (soc_netsoc_sdram_bankmachine6_row_close == 1'd0);
		end
	end
end
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_din = {soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_last, soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_first, soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_addr, soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_we};
assign {soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_last, soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_first, soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_addr, soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_we} = soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_dout;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_ready = soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_we = soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_valid;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_first = soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_first;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_last = soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_last;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_we = soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_we;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_addr = soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_addr;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_valid = soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_first = soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_first;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_last = soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_last;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_we = soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_we;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_addr = soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_addr;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_re = soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_ready;
always @(*) begin
	soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_replace) begin
		soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr <= (soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr <= soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_produce;
	end
end
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_dat_w = soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_din;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_we = (soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_we & (soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable | soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_replace));
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_do_read = (soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable & soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_re);
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_rdport_adr = soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_consume;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_dout = soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_rdport_dat_r;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable = (soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_level != 4'd8);
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable = (soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_level != 1'd0);
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_pipe_ce = (soc_netsoc_sdram_bankmachine6_cmd_buffer_source_ready | (~soc_netsoc_sdram_bankmachine6_cmd_buffer_valid_n));
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_sink_ready = soc_netsoc_sdram_bankmachine6_cmd_buffer_pipe_ce;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_source_valid = soc_netsoc_sdram_bankmachine6_cmd_buffer_valid_n;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_busy = (1'd0 | soc_netsoc_sdram_bankmachine6_cmd_buffer_valid_n);
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_source_first = soc_netsoc_sdram_bankmachine6_cmd_buffer_first_n;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_source_last = soc_netsoc_sdram_bankmachine6_cmd_buffer_last_n;
always @(*) begin
	vns_bankmachine6_next_state <= 3'd0;
	soc_netsoc_sdram_bankmachine6_row_open <= 1'd0;
	soc_netsoc_sdram_bankmachine6_row_close <= 1'd0;
	soc_netsoc_sdram_bankmachine6_req_wdata_ready <= 1'd0;
	soc_netsoc_sdram_bankmachine6_req_rdata_valid <= 1'd0;
	soc_netsoc_sdram_bankmachine6_row_col_n_addr_sel <= 1'd0;
	soc_netsoc_sdram_bankmachine6_refresh_gnt <= 1'd0;
	soc_netsoc_sdram_bankmachine6_cmd_valid <= 1'd0;
	soc_netsoc_sdram_bankmachine6_cmd_payload_cas <= 1'd0;
	soc_netsoc_sdram_bankmachine6_cmd_payload_ras <= 1'd0;
	soc_netsoc_sdram_bankmachine6_cmd_payload_we <= 1'd0;
	soc_netsoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd0;
	soc_netsoc_sdram_bankmachine6_cmd_payload_is_read <= 1'd0;
	soc_netsoc_sdram_bankmachine6_cmd_payload_is_write <= 1'd0;
	vns_bankmachine6_next_state <= vns_bankmachine6_state;
	case (vns_bankmachine6_state)
		1'd1: begin
			if ((soc_netsoc_sdram_bankmachine6_twtpcon_ready & soc_netsoc_sdram_bankmachine6_trascon_ready)) begin
				soc_netsoc_sdram_bankmachine6_cmd_valid <= 1'd1;
				if (soc_netsoc_sdram_bankmachine6_cmd_ready) begin
					vns_bankmachine6_next_state <= 3'd5;
				end
				soc_netsoc_sdram_bankmachine6_cmd_payload_ras <= 1'd1;
				soc_netsoc_sdram_bankmachine6_cmd_payload_we <= 1'd1;
				soc_netsoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine6_row_close <= 1'd1;
		end
		2'd2: begin
			if ((soc_netsoc_sdram_bankmachine6_twtpcon_ready & soc_netsoc_sdram_bankmachine6_trascon_ready)) begin
				vns_bankmachine6_next_state <= 3'd5;
			end
			soc_netsoc_sdram_bankmachine6_row_close <= 1'd1;
		end
		2'd3: begin
			if (soc_netsoc_sdram_bankmachine6_trccon_ready) begin
				soc_netsoc_sdram_bankmachine6_row_col_n_addr_sel <= 1'd1;
				soc_netsoc_sdram_bankmachine6_row_open <= 1'd1;
				soc_netsoc_sdram_bankmachine6_cmd_valid <= 1'd1;
				soc_netsoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd1;
				if (soc_netsoc_sdram_bankmachine6_cmd_ready) begin
					vns_bankmachine6_next_state <= 3'd6;
				end
				soc_netsoc_sdram_bankmachine6_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (soc_netsoc_sdram_bankmachine6_twtpcon_ready) begin
				soc_netsoc_sdram_bankmachine6_refresh_gnt <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine6_row_close <= 1'd1;
			soc_netsoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			if ((~soc_netsoc_sdram_bankmachine6_refresh_req)) begin
				vns_bankmachine6_next_state <= 1'd0;
			end
		end
		3'd5: begin
			vns_bankmachine6_next_state <= 2'd3;
		end
		3'd6: begin
			vns_bankmachine6_next_state <= 1'd0;
		end
		default: begin
			if (soc_netsoc_sdram_bankmachine6_refresh_req) begin
				vns_bankmachine6_next_state <= 3'd4;
			end else begin
				if (soc_netsoc_sdram_bankmachine6_cmd_buffer_source_valid) begin
					if (soc_netsoc_sdram_bankmachine6_row_opened) begin
						if (soc_netsoc_sdram_bankmachine6_row_hit) begin
							soc_netsoc_sdram_bankmachine6_cmd_valid <= 1'd1;
							if (soc_netsoc_sdram_bankmachine6_cmd_buffer_source_payload_we) begin
								soc_netsoc_sdram_bankmachine6_req_wdata_ready <= soc_netsoc_sdram_bankmachine6_cmd_ready;
								soc_netsoc_sdram_bankmachine6_cmd_payload_is_write <= 1'd1;
								soc_netsoc_sdram_bankmachine6_cmd_payload_we <= 1'd1;
							end else begin
								soc_netsoc_sdram_bankmachine6_req_rdata_valid <= soc_netsoc_sdram_bankmachine6_cmd_ready;
								soc_netsoc_sdram_bankmachine6_cmd_payload_is_read <= 1'd1;
							end
							soc_netsoc_sdram_bankmachine6_cmd_payload_cas <= 1'd1;
							if ((soc_netsoc_sdram_bankmachine6_cmd_ready & soc_netsoc_sdram_bankmachine6_auto_precharge)) begin
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
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_valid = soc_netsoc_sdram_bankmachine7_req_valid;
assign soc_netsoc_sdram_bankmachine7_req_ready = soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_ready;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_we = soc_netsoc_sdram_bankmachine7_req_we;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_addr = soc_netsoc_sdram_bankmachine7_req_addr;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_sink_valid = soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_valid;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_ready = soc_netsoc_sdram_bankmachine7_cmd_buffer_sink_ready;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_sink_first = soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_first;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_sink_last = soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_last;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_sink_payload_we = soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_we;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_sink_payload_addr = soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_addr;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_source_ready = (soc_netsoc_sdram_bankmachine7_req_wdata_ready | soc_netsoc_sdram_bankmachine7_req_rdata_valid);
assign soc_netsoc_sdram_bankmachine7_req_lock = (soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_valid | soc_netsoc_sdram_bankmachine7_cmd_buffer_source_valid);
assign soc_netsoc_sdram_bankmachine7_row_hit = (soc_netsoc_sdram_bankmachine7_row == soc_netsoc_sdram_bankmachine7_cmd_buffer_source_payload_addr[20:8]);
assign soc_netsoc_sdram_bankmachine7_cmd_payload_ba = 3'd7;
always @(*) begin
	soc_netsoc_sdram_bankmachine7_cmd_payload_a <= 13'd0;
	if (soc_netsoc_sdram_bankmachine7_row_col_n_addr_sel) begin
		soc_netsoc_sdram_bankmachine7_cmd_payload_a <= soc_netsoc_sdram_bankmachine7_cmd_buffer_source_payload_addr[20:8];
	end else begin
		soc_netsoc_sdram_bankmachine7_cmd_payload_a <= ((soc_netsoc_sdram_bankmachine7_auto_precharge <<< 4'd10) | {soc_netsoc_sdram_bankmachine7_cmd_buffer_source_payload_addr[7:0], {2{1'd0}}});
	end
end
assign soc_netsoc_sdram_bankmachine7_twtpcon_valid = ((soc_netsoc_sdram_bankmachine7_cmd_valid & soc_netsoc_sdram_bankmachine7_cmd_ready) & soc_netsoc_sdram_bankmachine7_cmd_payload_is_write);
assign soc_netsoc_sdram_bankmachine7_trccon_valid = ((soc_netsoc_sdram_bankmachine7_cmd_valid & soc_netsoc_sdram_bankmachine7_cmd_ready) & soc_netsoc_sdram_bankmachine7_row_open);
assign soc_netsoc_sdram_bankmachine7_trascon_valid = ((soc_netsoc_sdram_bankmachine7_cmd_valid & soc_netsoc_sdram_bankmachine7_cmd_ready) & soc_netsoc_sdram_bankmachine7_row_open);
always @(*) begin
	soc_netsoc_sdram_bankmachine7_auto_precharge <= 1'd0;
	if ((soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_valid & soc_netsoc_sdram_bankmachine7_cmd_buffer_source_valid)) begin
		if ((soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_addr[20:8] != soc_netsoc_sdram_bankmachine7_cmd_buffer_source_payload_addr[20:8])) begin
			soc_netsoc_sdram_bankmachine7_auto_precharge <= (soc_netsoc_sdram_bankmachine7_row_close == 1'd0);
		end
	end
end
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_din = {soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_last, soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_first, soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_addr, soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_we};
assign {soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_last, soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_first, soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_addr, soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_we} = soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_dout;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_ready = soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_we = soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_valid;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_first = soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_first;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_last = soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_last;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_we = soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_we;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_addr = soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_addr;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_valid = soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_first = soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_first;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_last = soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_last;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_we = soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_we;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_addr = soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_addr;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_re = soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_ready;
always @(*) begin
	soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_replace) begin
		soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr <= (soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr <= soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_produce;
	end
end
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_dat_w = soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_din;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_we = (soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_we & (soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable | soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_replace));
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_do_read = (soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable & soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_re);
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_rdport_adr = soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_consume;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_dout = soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_rdport_dat_r;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable = (soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_level != 4'd8);
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable = (soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_level != 1'd0);
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_pipe_ce = (soc_netsoc_sdram_bankmachine7_cmd_buffer_source_ready | (~soc_netsoc_sdram_bankmachine7_cmd_buffer_valid_n));
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_sink_ready = soc_netsoc_sdram_bankmachine7_cmd_buffer_pipe_ce;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_source_valid = soc_netsoc_sdram_bankmachine7_cmd_buffer_valid_n;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_busy = (1'd0 | soc_netsoc_sdram_bankmachine7_cmd_buffer_valid_n);
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_source_first = soc_netsoc_sdram_bankmachine7_cmd_buffer_first_n;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_source_last = soc_netsoc_sdram_bankmachine7_cmd_buffer_last_n;
always @(*) begin
	soc_netsoc_sdram_bankmachine7_cmd_payload_cas <= 1'd0;
	soc_netsoc_sdram_bankmachine7_cmd_payload_ras <= 1'd0;
	soc_netsoc_sdram_bankmachine7_cmd_payload_we <= 1'd0;
	soc_netsoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd0;
	soc_netsoc_sdram_bankmachine7_cmd_payload_is_read <= 1'd0;
	soc_netsoc_sdram_bankmachine7_cmd_payload_is_write <= 1'd0;
	soc_netsoc_sdram_bankmachine7_row_open <= 1'd0;
	vns_bankmachine7_next_state <= 3'd0;
	soc_netsoc_sdram_bankmachine7_row_close <= 1'd0;
	soc_netsoc_sdram_bankmachine7_req_wdata_ready <= 1'd0;
	soc_netsoc_sdram_bankmachine7_req_rdata_valid <= 1'd0;
	soc_netsoc_sdram_bankmachine7_row_col_n_addr_sel <= 1'd0;
	soc_netsoc_sdram_bankmachine7_refresh_gnt <= 1'd0;
	soc_netsoc_sdram_bankmachine7_cmd_valid <= 1'd0;
	vns_bankmachine7_next_state <= vns_bankmachine7_state;
	case (vns_bankmachine7_state)
		1'd1: begin
			if ((soc_netsoc_sdram_bankmachine7_twtpcon_ready & soc_netsoc_sdram_bankmachine7_trascon_ready)) begin
				soc_netsoc_sdram_bankmachine7_cmd_valid <= 1'd1;
				if (soc_netsoc_sdram_bankmachine7_cmd_ready) begin
					vns_bankmachine7_next_state <= 3'd5;
				end
				soc_netsoc_sdram_bankmachine7_cmd_payload_ras <= 1'd1;
				soc_netsoc_sdram_bankmachine7_cmd_payload_we <= 1'd1;
				soc_netsoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine7_row_close <= 1'd1;
		end
		2'd2: begin
			if ((soc_netsoc_sdram_bankmachine7_twtpcon_ready & soc_netsoc_sdram_bankmachine7_trascon_ready)) begin
				vns_bankmachine7_next_state <= 3'd5;
			end
			soc_netsoc_sdram_bankmachine7_row_close <= 1'd1;
		end
		2'd3: begin
			if (soc_netsoc_sdram_bankmachine7_trccon_ready) begin
				soc_netsoc_sdram_bankmachine7_row_col_n_addr_sel <= 1'd1;
				soc_netsoc_sdram_bankmachine7_row_open <= 1'd1;
				soc_netsoc_sdram_bankmachine7_cmd_valid <= 1'd1;
				soc_netsoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd1;
				if (soc_netsoc_sdram_bankmachine7_cmd_ready) begin
					vns_bankmachine7_next_state <= 3'd6;
				end
				soc_netsoc_sdram_bankmachine7_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (soc_netsoc_sdram_bankmachine7_twtpcon_ready) begin
				soc_netsoc_sdram_bankmachine7_refresh_gnt <= 1'd1;
			end
			soc_netsoc_sdram_bankmachine7_row_close <= 1'd1;
			soc_netsoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			if ((~soc_netsoc_sdram_bankmachine7_refresh_req)) begin
				vns_bankmachine7_next_state <= 1'd0;
			end
		end
		3'd5: begin
			vns_bankmachine7_next_state <= 2'd3;
		end
		3'd6: begin
			vns_bankmachine7_next_state <= 1'd0;
		end
		default: begin
			if (soc_netsoc_sdram_bankmachine7_refresh_req) begin
				vns_bankmachine7_next_state <= 3'd4;
			end else begin
				if (soc_netsoc_sdram_bankmachine7_cmd_buffer_source_valid) begin
					if (soc_netsoc_sdram_bankmachine7_row_opened) begin
						if (soc_netsoc_sdram_bankmachine7_row_hit) begin
							soc_netsoc_sdram_bankmachine7_cmd_valid <= 1'd1;
							if (soc_netsoc_sdram_bankmachine7_cmd_buffer_source_payload_we) begin
								soc_netsoc_sdram_bankmachine7_req_wdata_ready <= soc_netsoc_sdram_bankmachine7_cmd_ready;
								soc_netsoc_sdram_bankmachine7_cmd_payload_is_write <= 1'd1;
								soc_netsoc_sdram_bankmachine7_cmd_payload_we <= 1'd1;
							end else begin
								soc_netsoc_sdram_bankmachine7_req_rdata_valid <= soc_netsoc_sdram_bankmachine7_cmd_ready;
								soc_netsoc_sdram_bankmachine7_cmd_payload_is_read <= 1'd1;
							end
							soc_netsoc_sdram_bankmachine7_cmd_payload_cas <= 1'd1;
							if ((soc_netsoc_sdram_bankmachine7_cmd_ready & soc_netsoc_sdram_bankmachine7_auto_precharge)) begin
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
assign soc_netsoc_sdram_trrdcon_valid = ((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & ((soc_netsoc_sdram_choose_cmd_cmd_payload_ras & (~soc_netsoc_sdram_choose_cmd_cmd_payload_cas)) & (~soc_netsoc_sdram_choose_cmd_cmd_payload_we)));
assign soc_netsoc_sdram_tfawcon_valid = ((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & ((soc_netsoc_sdram_choose_cmd_cmd_payload_ras & (~soc_netsoc_sdram_choose_cmd_cmd_payload_cas)) & (~soc_netsoc_sdram_choose_cmd_cmd_payload_we)));
assign soc_netsoc_sdram_ras_allowed = (soc_netsoc_sdram_trrdcon_ready & soc_netsoc_sdram_tfawcon_ready);
assign soc_netsoc_sdram_tccdcon_valid = ((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & (soc_netsoc_sdram_choose_req_cmd_payload_is_write | soc_netsoc_sdram_choose_req_cmd_payload_is_read));
assign soc_netsoc_sdram_cas_allowed = soc_netsoc_sdram_tccdcon_ready;
assign soc_netsoc_sdram_twtrcon_valid = ((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & soc_netsoc_sdram_choose_req_cmd_payload_is_write);
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
assign soc_netsoc_sdram_interface_rdata = {soc_netsoc_sdram_dfi_p1_rddata, soc_netsoc_sdram_dfi_p0_rddata};
assign {soc_netsoc_sdram_dfi_p1_wrdata, soc_netsoc_sdram_dfi_p0_wrdata} = soc_netsoc_sdram_interface_wdata;
assign {soc_netsoc_sdram_dfi_p1_wrdata_mask, soc_netsoc_sdram_dfi_p0_wrdata_mask} = (~soc_netsoc_sdram_interface_wdata_we);
always @(*) begin
	soc_netsoc_sdram_choose_cmd_valids <= 8'd0;
	soc_netsoc_sdram_choose_cmd_valids[0] <= (soc_netsoc_sdram_bankmachine0_cmd_valid & (((soc_netsoc_sdram_bankmachine0_cmd_payload_is_cmd & soc_netsoc_sdram_choose_cmd_want_cmds) & ((~((soc_netsoc_sdram_bankmachine0_cmd_payload_ras & (~soc_netsoc_sdram_bankmachine0_cmd_payload_cas)) & (~soc_netsoc_sdram_bankmachine0_cmd_payload_we))) | soc_netsoc_sdram_choose_cmd_want_activates)) | ((soc_netsoc_sdram_bankmachine0_cmd_payload_is_read == soc_netsoc_sdram_choose_cmd_want_reads) & (soc_netsoc_sdram_bankmachine0_cmd_payload_is_write == soc_netsoc_sdram_choose_cmd_want_writes))));
	soc_netsoc_sdram_choose_cmd_valids[1] <= (soc_netsoc_sdram_bankmachine1_cmd_valid & (((soc_netsoc_sdram_bankmachine1_cmd_payload_is_cmd & soc_netsoc_sdram_choose_cmd_want_cmds) & ((~((soc_netsoc_sdram_bankmachine1_cmd_payload_ras & (~soc_netsoc_sdram_bankmachine1_cmd_payload_cas)) & (~soc_netsoc_sdram_bankmachine1_cmd_payload_we))) | soc_netsoc_sdram_choose_cmd_want_activates)) | ((soc_netsoc_sdram_bankmachine1_cmd_payload_is_read == soc_netsoc_sdram_choose_cmd_want_reads) & (soc_netsoc_sdram_bankmachine1_cmd_payload_is_write == soc_netsoc_sdram_choose_cmd_want_writes))));
	soc_netsoc_sdram_choose_cmd_valids[2] <= (soc_netsoc_sdram_bankmachine2_cmd_valid & (((soc_netsoc_sdram_bankmachine2_cmd_payload_is_cmd & soc_netsoc_sdram_choose_cmd_want_cmds) & ((~((soc_netsoc_sdram_bankmachine2_cmd_payload_ras & (~soc_netsoc_sdram_bankmachine2_cmd_payload_cas)) & (~soc_netsoc_sdram_bankmachine2_cmd_payload_we))) | soc_netsoc_sdram_choose_cmd_want_activates)) | ((soc_netsoc_sdram_bankmachine2_cmd_payload_is_read == soc_netsoc_sdram_choose_cmd_want_reads) & (soc_netsoc_sdram_bankmachine2_cmd_payload_is_write == soc_netsoc_sdram_choose_cmd_want_writes))));
	soc_netsoc_sdram_choose_cmd_valids[3] <= (soc_netsoc_sdram_bankmachine3_cmd_valid & (((soc_netsoc_sdram_bankmachine3_cmd_payload_is_cmd & soc_netsoc_sdram_choose_cmd_want_cmds) & ((~((soc_netsoc_sdram_bankmachine3_cmd_payload_ras & (~soc_netsoc_sdram_bankmachine3_cmd_payload_cas)) & (~soc_netsoc_sdram_bankmachine3_cmd_payload_we))) | soc_netsoc_sdram_choose_cmd_want_activates)) | ((soc_netsoc_sdram_bankmachine3_cmd_payload_is_read == soc_netsoc_sdram_choose_cmd_want_reads) & (soc_netsoc_sdram_bankmachine3_cmd_payload_is_write == soc_netsoc_sdram_choose_cmd_want_writes))));
	soc_netsoc_sdram_choose_cmd_valids[4] <= (soc_netsoc_sdram_bankmachine4_cmd_valid & (((soc_netsoc_sdram_bankmachine4_cmd_payload_is_cmd & soc_netsoc_sdram_choose_cmd_want_cmds) & ((~((soc_netsoc_sdram_bankmachine4_cmd_payload_ras & (~soc_netsoc_sdram_bankmachine4_cmd_payload_cas)) & (~soc_netsoc_sdram_bankmachine4_cmd_payload_we))) | soc_netsoc_sdram_choose_cmd_want_activates)) | ((soc_netsoc_sdram_bankmachine4_cmd_payload_is_read == soc_netsoc_sdram_choose_cmd_want_reads) & (soc_netsoc_sdram_bankmachine4_cmd_payload_is_write == soc_netsoc_sdram_choose_cmd_want_writes))));
	soc_netsoc_sdram_choose_cmd_valids[5] <= (soc_netsoc_sdram_bankmachine5_cmd_valid & (((soc_netsoc_sdram_bankmachine5_cmd_payload_is_cmd & soc_netsoc_sdram_choose_cmd_want_cmds) & ((~((soc_netsoc_sdram_bankmachine5_cmd_payload_ras & (~soc_netsoc_sdram_bankmachine5_cmd_payload_cas)) & (~soc_netsoc_sdram_bankmachine5_cmd_payload_we))) | soc_netsoc_sdram_choose_cmd_want_activates)) | ((soc_netsoc_sdram_bankmachine5_cmd_payload_is_read == soc_netsoc_sdram_choose_cmd_want_reads) & (soc_netsoc_sdram_bankmachine5_cmd_payload_is_write == soc_netsoc_sdram_choose_cmd_want_writes))));
	soc_netsoc_sdram_choose_cmd_valids[6] <= (soc_netsoc_sdram_bankmachine6_cmd_valid & (((soc_netsoc_sdram_bankmachine6_cmd_payload_is_cmd & soc_netsoc_sdram_choose_cmd_want_cmds) & ((~((soc_netsoc_sdram_bankmachine6_cmd_payload_ras & (~soc_netsoc_sdram_bankmachine6_cmd_payload_cas)) & (~soc_netsoc_sdram_bankmachine6_cmd_payload_we))) | soc_netsoc_sdram_choose_cmd_want_activates)) | ((soc_netsoc_sdram_bankmachine6_cmd_payload_is_read == soc_netsoc_sdram_choose_cmd_want_reads) & (soc_netsoc_sdram_bankmachine6_cmd_payload_is_write == soc_netsoc_sdram_choose_cmd_want_writes))));
	soc_netsoc_sdram_choose_cmd_valids[7] <= (soc_netsoc_sdram_bankmachine7_cmd_valid & (((soc_netsoc_sdram_bankmachine7_cmd_payload_is_cmd & soc_netsoc_sdram_choose_cmd_want_cmds) & ((~((soc_netsoc_sdram_bankmachine7_cmd_payload_ras & (~soc_netsoc_sdram_bankmachine7_cmd_payload_cas)) & (~soc_netsoc_sdram_bankmachine7_cmd_payload_we))) | soc_netsoc_sdram_choose_cmd_want_activates)) | ((soc_netsoc_sdram_bankmachine7_cmd_payload_is_read == soc_netsoc_sdram_choose_cmd_want_reads) & (soc_netsoc_sdram_bankmachine7_cmd_payload_is_write == soc_netsoc_sdram_choose_cmd_want_writes))));
end
assign soc_netsoc_sdram_choose_cmd_request = soc_netsoc_sdram_choose_cmd_valids;
assign soc_netsoc_sdram_choose_cmd_cmd_valid = vns_rhs_array_muxed0;
assign soc_netsoc_sdram_choose_cmd_cmd_payload_a = vns_rhs_array_muxed1;
assign soc_netsoc_sdram_choose_cmd_cmd_payload_ba = vns_rhs_array_muxed2;
assign soc_netsoc_sdram_choose_cmd_cmd_payload_is_read = vns_rhs_array_muxed3;
assign soc_netsoc_sdram_choose_cmd_cmd_payload_is_write = vns_rhs_array_muxed4;
assign soc_netsoc_sdram_choose_cmd_cmd_payload_is_cmd = vns_rhs_array_muxed5;
always @(*) begin
	soc_netsoc_sdram_choose_cmd_cmd_payload_cas <= 1'd0;
	if (soc_netsoc_sdram_choose_cmd_cmd_valid) begin
		soc_netsoc_sdram_choose_cmd_cmd_payload_cas <= vns_t_array_muxed0;
	end
end
always @(*) begin
	soc_netsoc_sdram_choose_cmd_cmd_payload_ras <= 1'd0;
	if (soc_netsoc_sdram_choose_cmd_cmd_valid) begin
		soc_netsoc_sdram_choose_cmd_cmd_payload_ras <= vns_t_array_muxed1;
	end
end
always @(*) begin
	soc_netsoc_sdram_choose_cmd_cmd_payload_we <= 1'd0;
	if (soc_netsoc_sdram_choose_cmd_cmd_valid) begin
		soc_netsoc_sdram_choose_cmd_cmd_payload_we <= vns_t_array_muxed2;
	end
end
assign soc_netsoc_sdram_choose_cmd_ce = (soc_netsoc_sdram_choose_cmd_cmd_ready | (~soc_netsoc_sdram_choose_cmd_cmd_valid));
always @(*) begin
	soc_netsoc_sdram_choose_req_valids <= 8'd0;
	soc_netsoc_sdram_choose_req_valids[0] <= (soc_netsoc_sdram_bankmachine0_cmd_valid & (((soc_netsoc_sdram_bankmachine0_cmd_payload_is_cmd & soc_netsoc_sdram_choose_req_want_cmds) & ((~((soc_netsoc_sdram_bankmachine0_cmd_payload_ras & (~soc_netsoc_sdram_bankmachine0_cmd_payload_cas)) & (~soc_netsoc_sdram_bankmachine0_cmd_payload_we))) | soc_netsoc_sdram_choose_req_want_activates)) | ((soc_netsoc_sdram_bankmachine0_cmd_payload_is_read == soc_netsoc_sdram_choose_req_want_reads) & (soc_netsoc_sdram_bankmachine0_cmd_payload_is_write == soc_netsoc_sdram_choose_req_want_writes))));
	soc_netsoc_sdram_choose_req_valids[1] <= (soc_netsoc_sdram_bankmachine1_cmd_valid & (((soc_netsoc_sdram_bankmachine1_cmd_payload_is_cmd & soc_netsoc_sdram_choose_req_want_cmds) & ((~((soc_netsoc_sdram_bankmachine1_cmd_payload_ras & (~soc_netsoc_sdram_bankmachine1_cmd_payload_cas)) & (~soc_netsoc_sdram_bankmachine1_cmd_payload_we))) | soc_netsoc_sdram_choose_req_want_activates)) | ((soc_netsoc_sdram_bankmachine1_cmd_payload_is_read == soc_netsoc_sdram_choose_req_want_reads) & (soc_netsoc_sdram_bankmachine1_cmd_payload_is_write == soc_netsoc_sdram_choose_req_want_writes))));
	soc_netsoc_sdram_choose_req_valids[2] <= (soc_netsoc_sdram_bankmachine2_cmd_valid & (((soc_netsoc_sdram_bankmachine2_cmd_payload_is_cmd & soc_netsoc_sdram_choose_req_want_cmds) & ((~((soc_netsoc_sdram_bankmachine2_cmd_payload_ras & (~soc_netsoc_sdram_bankmachine2_cmd_payload_cas)) & (~soc_netsoc_sdram_bankmachine2_cmd_payload_we))) | soc_netsoc_sdram_choose_req_want_activates)) | ((soc_netsoc_sdram_bankmachine2_cmd_payload_is_read == soc_netsoc_sdram_choose_req_want_reads) & (soc_netsoc_sdram_bankmachine2_cmd_payload_is_write == soc_netsoc_sdram_choose_req_want_writes))));
	soc_netsoc_sdram_choose_req_valids[3] <= (soc_netsoc_sdram_bankmachine3_cmd_valid & (((soc_netsoc_sdram_bankmachine3_cmd_payload_is_cmd & soc_netsoc_sdram_choose_req_want_cmds) & ((~((soc_netsoc_sdram_bankmachine3_cmd_payload_ras & (~soc_netsoc_sdram_bankmachine3_cmd_payload_cas)) & (~soc_netsoc_sdram_bankmachine3_cmd_payload_we))) | soc_netsoc_sdram_choose_req_want_activates)) | ((soc_netsoc_sdram_bankmachine3_cmd_payload_is_read == soc_netsoc_sdram_choose_req_want_reads) & (soc_netsoc_sdram_bankmachine3_cmd_payload_is_write == soc_netsoc_sdram_choose_req_want_writes))));
	soc_netsoc_sdram_choose_req_valids[4] <= (soc_netsoc_sdram_bankmachine4_cmd_valid & (((soc_netsoc_sdram_bankmachine4_cmd_payload_is_cmd & soc_netsoc_sdram_choose_req_want_cmds) & ((~((soc_netsoc_sdram_bankmachine4_cmd_payload_ras & (~soc_netsoc_sdram_bankmachine4_cmd_payload_cas)) & (~soc_netsoc_sdram_bankmachine4_cmd_payload_we))) | soc_netsoc_sdram_choose_req_want_activates)) | ((soc_netsoc_sdram_bankmachine4_cmd_payload_is_read == soc_netsoc_sdram_choose_req_want_reads) & (soc_netsoc_sdram_bankmachine4_cmd_payload_is_write == soc_netsoc_sdram_choose_req_want_writes))));
	soc_netsoc_sdram_choose_req_valids[5] <= (soc_netsoc_sdram_bankmachine5_cmd_valid & (((soc_netsoc_sdram_bankmachine5_cmd_payload_is_cmd & soc_netsoc_sdram_choose_req_want_cmds) & ((~((soc_netsoc_sdram_bankmachine5_cmd_payload_ras & (~soc_netsoc_sdram_bankmachine5_cmd_payload_cas)) & (~soc_netsoc_sdram_bankmachine5_cmd_payload_we))) | soc_netsoc_sdram_choose_req_want_activates)) | ((soc_netsoc_sdram_bankmachine5_cmd_payload_is_read == soc_netsoc_sdram_choose_req_want_reads) & (soc_netsoc_sdram_bankmachine5_cmd_payload_is_write == soc_netsoc_sdram_choose_req_want_writes))));
	soc_netsoc_sdram_choose_req_valids[6] <= (soc_netsoc_sdram_bankmachine6_cmd_valid & (((soc_netsoc_sdram_bankmachine6_cmd_payload_is_cmd & soc_netsoc_sdram_choose_req_want_cmds) & ((~((soc_netsoc_sdram_bankmachine6_cmd_payload_ras & (~soc_netsoc_sdram_bankmachine6_cmd_payload_cas)) & (~soc_netsoc_sdram_bankmachine6_cmd_payload_we))) | soc_netsoc_sdram_choose_req_want_activates)) | ((soc_netsoc_sdram_bankmachine6_cmd_payload_is_read == soc_netsoc_sdram_choose_req_want_reads) & (soc_netsoc_sdram_bankmachine6_cmd_payload_is_write == soc_netsoc_sdram_choose_req_want_writes))));
	soc_netsoc_sdram_choose_req_valids[7] <= (soc_netsoc_sdram_bankmachine7_cmd_valid & (((soc_netsoc_sdram_bankmachine7_cmd_payload_is_cmd & soc_netsoc_sdram_choose_req_want_cmds) & ((~((soc_netsoc_sdram_bankmachine7_cmd_payload_ras & (~soc_netsoc_sdram_bankmachine7_cmd_payload_cas)) & (~soc_netsoc_sdram_bankmachine7_cmd_payload_we))) | soc_netsoc_sdram_choose_req_want_activates)) | ((soc_netsoc_sdram_bankmachine7_cmd_payload_is_read == soc_netsoc_sdram_choose_req_want_reads) & (soc_netsoc_sdram_bankmachine7_cmd_payload_is_write == soc_netsoc_sdram_choose_req_want_writes))));
end
assign soc_netsoc_sdram_choose_req_request = soc_netsoc_sdram_choose_req_valids;
assign soc_netsoc_sdram_choose_req_cmd_valid = vns_rhs_array_muxed6;
assign soc_netsoc_sdram_choose_req_cmd_payload_a = vns_rhs_array_muxed7;
assign soc_netsoc_sdram_choose_req_cmd_payload_ba = vns_rhs_array_muxed8;
assign soc_netsoc_sdram_choose_req_cmd_payload_is_read = vns_rhs_array_muxed9;
assign soc_netsoc_sdram_choose_req_cmd_payload_is_write = vns_rhs_array_muxed10;
assign soc_netsoc_sdram_choose_req_cmd_payload_is_cmd = vns_rhs_array_muxed11;
always @(*) begin
	soc_netsoc_sdram_choose_req_cmd_payload_cas <= 1'd0;
	if (soc_netsoc_sdram_choose_req_cmd_valid) begin
		soc_netsoc_sdram_choose_req_cmd_payload_cas <= vns_t_array_muxed3;
	end
end
always @(*) begin
	soc_netsoc_sdram_choose_req_cmd_payload_ras <= 1'd0;
	if (soc_netsoc_sdram_choose_req_cmd_valid) begin
		soc_netsoc_sdram_choose_req_cmd_payload_ras <= vns_t_array_muxed4;
	end
end
always @(*) begin
	soc_netsoc_sdram_choose_req_cmd_payload_we <= 1'd0;
	if (soc_netsoc_sdram_choose_req_cmd_valid) begin
		soc_netsoc_sdram_choose_req_cmd_payload_we <= vns_t_array_muxed5;
	end
end
always @(*) begin
	soc_netsoc_sdram_bankmachine0_cmd_ready <= 1'd0;
	if (((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & (soc_netsoc_sdram_choose_cmd_grant == 1'd0))) begin
		soc_netsoc_sdram_bankmachine0_cmd_ready <= 1'd1;
	end
	if (((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & (soc_netsoc_sdram_choose_req_grant == 1'd0))) begin
		soc_netsoc_sdram_bankmachine0_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	soc_netsoc_sdram_bankmachine1_cmd_ready <= 1'd0;
	if (((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & (soc_netsoc_sdram_choose_cmd_grant == 1'd1))) begin
		soc_netsoc_sdram_bankmachine1_cmd_ready <= 1'd1;
	end
	if (((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & (soc_netsoc_sdram_choose_req_grant == 1'd1))) begin
		soc_netsoc_sdram_bankmachine1_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	soc_netsoc_sdram_bankmachine2_cmd_ready <= 1'd0;
	if (((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & (soc_netsoc_sdram_choose_cmd_grant == 2'd2))) begin
		soc_netsoc_sdram_bankmachine2_cmd_ready <= 1'd1;
	end
	if (((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & (soc_netsoc_sdram_choose_req_grant == 2'd2))) begin
		soc_netsoc_sdram_bankmachine2_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	soc_netsoc_sdram_bankmachine3_cmd_ready <= 1'd0;
	if (((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & (soc_netsoc_sdram_choose_cmd_grant == 2'd3))) begin
		soc_netsoc_sdram_bankmachine3_cmd_ready <= 1'd1;
	end
	if (((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & (soc_netsoc_sdram_choose_req_grant == 2'd3))) begin
		soc_netsoc_sdram_bankmachine3_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	soc_netsoc_sdram_bankmachine4_cmd_ready <= 1'd0;
	if (((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & (soc_netsoc_sdram_choose_cmd_grant == 3'd4))) begin
		soc_netsoc_sdram_bankmachine4_cmd_ready <= 1'd1;
	end
	if (((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & (soc_netsoc_sdram_choose_req_grant == 3'd4))) begin
		soc_netsoc_sdram_bankmachine4_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	soc_netsoc_sdram_bankmachine5_cmd_ready <= 1'd0;
	if (((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & (soc_netsoc_sdram_choose_cmd_grant == 3'd5))) begin
		soc_netsoc_sdram_bankmachine5_cmd_ready <= 1'd1;
	end
	if (((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & (soc_netsoc_sdram_choose_req_grant == 3'd5))) begin
		soc_netsoc_sdram_bankmachine5_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	soc_netsoc_sdram_bankmachine6_cmd_ready <= 1'd0;
	if (((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & (soc_netsoc_sdram_choose_cmd_grant == 3'd6))) begin
		soc_netsoc_sdram_bankmachine6_cmd_ready <= 1'd1;
	end
	if (((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & (soc_netsoc_sdram_choose_req_grant == 3'd6))) begin
		soc_netsoc_sdram_bankmachine6_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	soc_netsoc_sdram_bankmachine7_cmd_ready <= 1'd0;
	if (((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & (soc_netsoc_sdram_choose_cmd_grant == 3'd7))) begin
		soc_netsoc_sdram_bankmachine7_cmd_ready <= 1'd1;
	end
	if (((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & (soc_netsoc_sdram_choose_req_grant == 3'd7))) begin
		soc_netsoc_sdram_bankmachine7_cmd_ready <= 1'd1;
	end
end
assign soc_netsoc_sdram_choose_req_ce = (soc_netsoc_sdram_choose_req_cmd_ready | (~soc_netsoc_sdram_choose_req_cmd_valid));
assign soc_netsoc_sdram_dfi_p0_reset_n = 1'd1;
assign soc_netsoc_sdram_dfi_p0_cke = {1{soc_netsoc_sdram_steerer0}};
assign soc_netsoc_sdram_dfi_p0_odt = {1{soc_netsoc_sdram_steerer1}};
assign soc_netsoc_sdram_dfi_p1_reset_n = 1'd1;
assign soc_netsoc_sdram_dfi_p1_cke = {1{soc_netsoc_sdram_steerer2}};
assign soc_netsoc_sdram_dfi_p1_odt = {1{soc_netsoc_sdram_steerer3}};
always @(*) begin
	soc_netsoc_sdram_choose_cmd_want_activates <= 1'd0;
	soc_netsoc_sdram_choose_cmd_cmd_ready <= 1'd0;
	soc_netsoc_sdram_choose_req_want_reads <= 1'd0;
	vns_multiplexer_next_state <= 3'd0;
	soc_netsoc_sdram_choose_req_want_writes <= 1'd0;
	soc_netsoc_sdram_cmd_ready <= 1'd0;
	soc_netsoc_sdram_choose_req_cmd_ready <= 1'd0;
	soc_netsoc_sdram_steerer_sel0 <= 2'd0;
	soc_netsoc_sdram_steerer_sel1 <= 2'd0;
	soc_netsoc_sdram_en0 <= 1'd0;
	soc_netsoc_sdram_en1 <= 1'd0;
	vns_multiplexer_next_state <= vns_multiplexer_state;
	case (vns_multiplexer_state)
		1'd1: begin
			soc_netsoc_sdram_en1 <= 1'd1;
			soc_netsoc_sdram_choose_req_want_writes <= 1'd1;
			soc_netsoc_sdram_choose_cmd_want_activates <= soc_netsoc_sdram_ras_allowed;
			soc_netsoc_sdram_choose_cmd_cmd_ready <= ((~((soc_netsoc_sdram_choose_cmd_cmd_payload_ras & (~soc_netsoc_sdram_choose_cmd_cmd_payload_cas)) & (~soc_netsoc_sdram_choose_cmd_cmd_payload_we))) | soc_netsoc_sdram_ras_allowed);
			soc_netsoc_sdram_choose_req_cmd_ready <= soc_netsoc_sdram_cas_allowed;
			soc_netsoc_sdram_steerer_sel0 <= 1'd1;
			soc_netsoc_sdram_steerer_sel1 <= 2'd2;
			if (soc_netsoc_sdram_read_available) begin
				if (((~soc_netsoc_sdram_write_available) | soc_netsoc_sdram_max_time1)) begin
					vns_multiplexer_next_state <= 2'd3;
				end
			end
			if (soc_netsoc_sdram_go_to_refresh) begin
				vns_multiplexer_next_state <= 2'd2;
			end
		end
		2'd2: begin
			soc_netsoc_sdram_steerer_sel0 <= 2'd3;
			soc_netsoc_sdram_cmd_ready <= 1'd1;
			if (soc_netsoc_sdram_cmd_last) begin
				vns_multiplexer_next_state <= 1'd0;
			end
		end
		2'd3: begin
			if (soc_netsoc_sdram_twtrcon_ready) begin
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
			vns_multiplexer_next_state <= 1'd1;
		end
		default: begin
			soc_netsoc_sdram_en0 <= 1'd1;
			soc_netsoc_sdram_choose_req_want_reads <= 1'd1;
			soc_netsoc_sdram_choose_cmd_want_activates <= soc_netsoc_sdram_ras_allowed;
			soc_netsoc_sdram_choose_cmd_cmd_ready <= ((~((soc_netsoc_sdram_choose_cmd_cmd_payload_ras & (~soc_netsoc_sdram_choose_cmd_cmd_payload_cas)) & (~soc_netsoc_sdram_choose_cmd_cmd_payload_we))) | soc_netsoc_sdram_ras_allowed);
			soc_netsoc_sdram_choose_req_cmd_ready <= soc_netsoc_sdram_cas_allowed;
			soc_netsoc_sdram_steerer_sel0 <= 2'd2;
			soc_netsoc_sdram_steerer_sel1 <= 1'd1;
			if (soc_netsoc_sdram_write_available) begin
				if (((~soc_netsoc_sdram_read_available) | soc_netsoc_sdram_max_time0)) begin
					vns_multiplexer_next_state <= 3'd4;
				end
			end
			if (soc_netsoc_sdram_go_to_refresh) begin
				vns_multiplexer_next_state <= 2'd2;
			end
		end
	endcase
end
assign vns_roundrobin0_request = {(((soc_netsoc_port_cmd_payload_addr[10:8] == 1'd0) & (~(((((((vns_locked0 | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid)};
assign vns_roundrobin0_ce = ((~soc_netsoc_sdram_interface_bank0_valid) & (~soc_netsoc_sdram_interface_bank0_lock));
assign soc_netsoc_sdram_interface_bank0_addr = vns_rhs_array_muxed12;
assign soc_netsoc_sdram_interface_bank0_we = vns_rhs_array_muxed13;
assign soc_netsoc_sdram_interface_bank0_valid = vns_rhs_array_muxed14;
assign vns_roundrobin1_request = {(((soc_netsoc_port_cmd_payload_addr[10:8] == 1'd1) & (~(((((((vns_locked1 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid)};
assign vns_roundrobin1_ce = ((~soc_netsoc_sdram_interface_bank1_valid) & (~soc_netsoc_sdram_interface_bank1_lock));
assign soc_netsoc_sdram_interface_bank1_addr = vns_rhs_array_muxed15;
assign soc_netsoc_sdram_interface_bank1_we = vns_rhs_array_muxed16;
assign soc_netsoc_sdram_interface_bank1_valid = vns_rhs_array_muxed17;
assign vns_roundrobin2_request = {(((soc_netsoc_port_cmd_payload_addr[10:8] == 2'd2) & (~(((((((vns_locked2 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid)};
assign vns_roundrobin2_ce = ((~soc_netsoc_sdram_interface_bank2_valid) & (~soc_netsoc_sdram_interface_bank2_lock));
assign soc_netsoc_sdram_interface_bank2_addr = vns_rhs_array_muxed18;
assign soc_netsoc_sdram_interface_bank2_we = vns_rhs_array_muxed19;
assign soc_netsoc_sdram_interface_bank2_valid = vns_rhs_array_muxed20;
assign vns_roundrobin3_request = {(((soc_netsoc_port_cmd_payload_addr[10:8] == 2'd3) & (~(((((((vns_locked3 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid)};
assign vns_roundrobin3_ce = ((~soc_netsoc_sdram_interface_bank3_valid) & (~soc_netsoc_sdram_interface_bank3_lock));
assign soc_netsoc_sdram_interface_bank3_addr = vns_rhs_array_muxed21;
assign soc_netsoc_sdram_interface_bank3_we = vns_rhs_array_muxed22;
assign soc_netsoc_sdram_interface_bank3_valid = vns_rhs_array_muxed23;
assign vns_roundrobin4_request = {(((soc_netsoc_port_cmd_payload_addr[10:8] == 3'd4) & (~(((((((vns_locked4 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid)};
assign vns_roundrobin4_ce = ((~soc_netsoc_sdram_interface_bank4_valid) & (~soc_netsoc_sdram_interface_bank4_lock));
assign soc_netsoc_sdram_interface_bank4_addr = vns_rhs_array_muxed24;
assign soc_netsoc_sdram_interface_bank4_we = vns_rhs_array_muxed25;
assign soc_netsoc_sdram_interface_bank4_valid = vns_rhs_array_muxed26;
assign vns_roundrobin5_request = {(((soc_netsoc_port_cmd_payload_addr[10:8] == 3'd5) & (~(((((((vns_locked5 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid)};
assign vns_roundrobin5_ce = ((~soc_netsoc_sdram_interface_bank5_valid) & (~soc_netsoc_sdram_interface_bank5_lock));
assign soc_netsoc_sdram_interface_bank5_addr = vns_rhs_array_muxed27;
assign soc_netsoc_sdram_interface_bank5_we = vns_rhs_array_muxed28;
assign soc_netsoc_sdram_interface_bank5_valid = vns_rhs_array_muxed29;
assign vns_roundrobin6_request = {(((soc_netsoc_port_cmd_payload_addr[10:8] == 3'd6) & (~(((((((vns_locked6 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid)};
assign vns_roundrobin6_ce = ((~soc_netsoc_sdram_interface_bank6_valid) & (~soc_netsoc_sdram_interface_bank6_lock));
assign soc_netsoc_sdram_interface_bank6_addr = vns_rhs_array_muxed30;
assign soc_netsoc_sdram_interface_bank6_we = vns_rhs_array_muxed31;
assign soc_netsoc_sdram_interface_bank6_valid = vns_rhs_array_muxed32;
assign vns_roundrobin7_request = {(((soc_netsoc_port_cmd_payload_addr[10:8] == 3'd7) & (~(((((((vns_locked7 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))))) & soc_netsoc_port_cmd_valid)};
assign vns_roundrobin7_ce = ((~soc_netsoc_sdram_interface_bank7_valid) & (~soc_netsoc_sdram_interface_bank7_lock));
assign soc_netsoc_sdram_interface_bank7_addr = vns_rhs_array_muxed33;
assign soc_netsoc_sdram_interface_bank7_we = vns_rhs_array_muxed34;
assign soc_netsoc_sdram_interface_bank7_valid = vns_rhs_array_muxed35;
assign soc_netsoc_port_cmd_ready = ((((((((1'd0 | (((vns_roundrobin0_grant == 1'd0) & ((soc_netsoc_port_cmd_payload_addr[10:8] == 1'd0) & (~(((((((vns_locked0 | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0)))))) & soc_netsoc_sdram_interface_bank0_ready)) | (((vns_roundrobin1_grant == 1'd0) & ((soc_netsoc_port_cmd_payload_addr[10:8] == 1'd1) & (~(((((((vns_locked1 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0)))))) & soc_netsoc_sdram_interface_bank1_ready)) | (((vns_roundrobin2_grant == 1'd0) & ((soc_netsoc_port_cmd_payload_addr[10:8] == 2'd2) & (~(((((((vns_locked2 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0)))))) & soc_netsoc_sdram_interface_bank2_ready)) | (((vns_roundrobin3_grant == 1'd0) & ((soc_netsoc_port_cmd_payload_addr[10:8] == 2'd3) & (~(((((((vns_locked3 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0)))))) & soc_netsoc_sdram_interface_bank3_ready)) | (((vns_roundrobin4_grant == 1'd0) & ((soc_netsoc_port_cmd_payload_addr[10:8] == 3'd4) & (~(((((((vns_locked4 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0)))))) & soc_netsoc_sdram_interface_bank4_ready)) | (((vns_roundrobin5_grant == 1'd0) & ((soc_netsoc_port_cmd_payload_addr[10:8] == 3'd5) & (~(((((((vns_locked5 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0)))))) & soc_netsoc_sdram_interface_bank5_ready)) | (((vns_roundrobin6_grant == 1'd0) & ((soc_netsoc_port_cmd_payload_addr[10:8] == 3'd6) & (~(((((((vns_locked6 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0)))))) & soc_netsoc_sdram_interface_bank6_ready)) | (((vns_roundrobin7_grant == 1'd0) & ((soc_netsoc_port_cmd_payload_addr[10:8] == 3'd7) & (~(((((((vns_locked7 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0)))))) & soc_netsoc_sdram_interface_bank7_ready));
assign soc_netsoc_port_wdata_ready = vns_new_master_wdata_ready;
assign soc_netsoc_port_rdata_valid = vns_new_master_rdata_valid5;
always @(*) begin
	soc_netsoc_sdram_interface_wdata <= 64'd0;
	soc_netsoc_sdram_interface_wdata_we <= 8'd0;
	case ({vns_new_master_wdata_ready})
		1'd1: begin
			soc_netsoc_sdram_interface_wdata <= soc_netsoc_port_wdata_payload_data;
			soc_netsoc_sdram_interface_wdata_we <= soc_netsoc_port_wdata_payload_we;
		end
		default: begin
			soc_netsoc_sdram_interface_wdata <= 1'd0;
			soc_netsoc_sdram_interface_wdata_we <= 1'd0;
		end
	endcase
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
assign soc_netsoc_data_port_adr = soc_netsoc_interface0_wb_sdram_adr[10:1];
always @(*) begin
	soc_netsoc_data_port_we <= 8'd0;
	soc_netsoc_data_port_dat_w <= 64'd0;
	if (soc_netsoc_write_from_slave) begin
		soc_netsoc_data_port_dat_w <= soc_netsoc_dat_r;
		soc_netsoc_data_port_we <= {8{1'd1}};
	end else begin
		soc_netsoc_data_port_dat_w <= {2{soc_netsoc_interface0_wb_sdram_dat_w}};
		if ((((soc_netsoc_interface0_wb_sdram_cyc & soc_netsoc_interface0_wb_sdram_stb) & soc_netsoc_interface0_wb_sdram_we) & soc_netsoc_interface0_wb_sdram_ack)) begin
			soc_netsoc_data_port_we <= {({4{(soc_netsoc_interface0_wb_sdram_adr[0] == 1'd0)}} & soc_netsoc_interface0_wb_sdram_sel), ({4{(soc_netsoc_interface0_wb_sdram_adr[0] == 1'd1)}} & soc_netsoc_interface0_wb_sdram_sel)};
		end
	end
end
assign soc_netsoc_dat_w = soc_netsoc_data_port_dat_r;
assign soc_netsoc_sel = 8'd255;
always @(*) begin
	soc_netsoc_interface0_wb_sdram_dat_r <= 32'd0;
	case (soc_netsoc_adr_offset_r)
		1'd0: begin
			soc_netsoc_interface0_wb_sdram_dat_r <= soc_netsoc_data_port_dat_r[63:32];
		end
		default: begin
			soc_netsoc_interface0_wb_sdram_dat_r <= soc_netsoc_data_port_dat_r[31:0];
		end
	endcase
end
assign {soc_netsoc_tag_do_dirty, soc_netsoc_tag_do_tag} = soc_netsoc_tag_port_dat_r;
assign soc_netsoc_tag_port_dat_w = {soc_netsoc_tag_di_dirty, soc_netsoc_tag_di_tag};
assign soc_netsoc_tag_port_adr = soc_netsoc_interface0_wb_sdram_adr[10:1];
assign soc_netsoc_tag_di_tag = soc_netsoc_interface0_wb_sdram_adr[29:11];
assign soc_netsoc_adr = {soc_netsoc_tag_do_tag, soc_netsoc_interface0_wb_sdram_adr[10:1]};
always @(*) begin
	soc_netsoc_write_from_slave <= 1'd0;
	soc_netsoc_interface0_wb_sdram_ack <= 1'd0;
	vns_cache_next_state <= 3'd0;
	soc_netsoc_tag_port_we <= 1'd0;
	soc_netsoc_cyc <= 1'd0;
	soc_netsoc_stb <= 1'd0;
	soc_netsoc_tag_di_dirty <= 1'd0;
	soc_netsoc_we <= 1'd0;
	soc_netsoc_word_clr <= 1'd0;
	soc_netsoc_word_inc <= 1'd0;
	vns_cache_next_state <= vns_cache_state;
	case (vns_cache_state)
		1'd1: begin
			soc_netsoc_word_clr <= 1'd1;
			if ((soc_netsoc_tag_do_tag == soc_netsoc_interface0_wb_sdram_adr[29:11])) begin
				soc_netsoc_interface0_wb_sdram_ack <= 1'd1;
				if (soc_netsoc_interface0_wb_sdram_we) begin
					soc_netsoc_tag_di_dirty <= 1'd1;
					soc_netsoc_tag_port_we <= 1'd1;
				end
				vns_cache_next_state <= 1'd0;
			end else begin
				if (soc_netsoc_tag_do_dirty) begin
					vns_cache_next_state <= 2'd2;
				end else begin
					vns_cache_next_state <= 2'd3;
				end
			end
		end
		2'd2: begin
			soc_netsoc_stb <= 1'd1;
			soc_netsoc_cyc <= 1'd1;
			soc_netsoc_we <= 1'd1;
			if (soc_netsoc_ack) begin
				soc_netsoc_word_inc <= 1'd1;
				if (1'd1) begin
					vns_cache_next_state <= 2'd3;
				end
			end
		end
		2'd3: begin
			soc_netsoc_tag_port_we <= 1'd1;
			soc_netsoc_word_clr <= 1'd1;
			vns_cache_next_state <= 3'd4;
		end
		3'd4: begin
			soc_netsoc_stb <= 1'd1;
			soc_netsoc_cyc <= 1'd1;
			soc_netsoc_we <= 1'd0;
			if (soc_netsoc_ack) begin
				soc_netsoc_write_from_slave <= 1'd1;
				soc_netsoc_word_inc <= 1'd1;
				if (1'd1) begin
					vns_cache_next_state <= 1'd1;
				end else begin
					vns_cache_next_state <= 3'd4;
				end
			end
		end
		default: begin
			if ((soc_netsoc_interface0_wb_sdram_cyc & soc_netsoc_interface0_wb_sdram_stb)) begin
				vns_cache_next_state <= 1'd1;
			end
		end
	endcase
end
always @(*) begin
	soc_netsoc_port_cmd_payload_we <= 1'd0;
	soc_netsoc_port_cmd_payload_addr <= 24'd0;
	soc_netsoc_port_wdata_valid <= 1'd0;
	soc_netsoc_port_wdata_payload_data <= 64'd0;
	soc_netsoc_port_wdata_payload_we <= 8'd0;
	soc_netsoc_port_rdata_ready <= 1'd0;
	soc_netsoc_dat_r <= 64'd0;
	vns_litedramwishbone2native_next_state <= 2'd0;
	soc_netsoc_ack <= 1'd0;
	soc_netsoc_port_cmd_valid <= 1'd0;
	vns_litedramwishbone2native_next_state <= vns_litedramwishbone2native_state;
	case (vns_litedramwishbone2native_state)
		1'd1: begin
			soc_netsoc_port_cmd_valid <= 1'd1;
			soc_netsoc_port_cmd_payload_addr <= soc_netsoc_adr;
			soc_netsoc_port_cmd_payload_we <= soc_netsoc_we;
			if (soc_netsoc_port_cmd_ready) begin
				if (soc_netsoc_we) begin
					vns_litedramwishbone2native_next_state <= 2'd2;
				end else begin
					vns_litedramwishbone2native_next_state <= 2'd3;
				end
			end
		end
		2'd2: begin
			soc_netsoc_port_wdata_valid <= 1'd1;
			soc_netsoc_port_wdata_payload_we <= soc_netsoc_sel;
			soc_netsoc_port_wdata_payload_data <= soc_netsoc_dat_w;
			if (soc_netsoc_port_wdata_ready) begin
				soc_netsoc_ack <= 1'd1;
				vns_litedramwishbone2native_next_state <= 1'd0;
			end
		end
		2'd3: begin
			soc_netsoc_port_rdata_ready <= 1'd1;
			if (soc_netsoc_port_rdata_valid) begin
				soc_netsoc_dat_r <= soc_netsoc_port_rdata_payload_data;
				soc_netsoc_ack <= 1'd1;
				vns_litedramwishbone2native_next_state <= 1'd0;
			end
		end
		default: begin
			if ((soc_netsoc_cyc & soc_netsoc_stb)) begin
				vns_litedramwishbone2native_next_state <= 1'd1;
			end
		end
	endcase
end
assign soc_mode_status = soc_mode0;
assign soc_eth_tick = (soc_eth_counter == 1'd0);
assign soc_i = soc_eth_tick;
assign soc_sys_tick = soc_o;
assign soc_o = (soc_toggle_o ^ soc_toggle_o_r);
always @(*) begin
	soc_sys_counter_reset <= 1'd0;
	soc_sys_counter_ce <= 1'd0;
	soc_mode1 <= 1'd0;
	soc_update_mode <= 1'd0;
	vns_liteethphygmiimii_next_state <= 2'd0;
	vns_liteethphygmiimii_next_state <= vns_liteethphygmiimii_state;
	case (vns_liteethphygmiimii_state)
		1'd1: begin
			soc_sys_counter_ce <= 1'd1;
			if (soc_sys_tick) begin
				vns_liteethphygmiimii_next_state <= 2'd2;
			end
		end
		2'd2: begin
			soc_update_mode <= 1'd1;
			if ((soc_sys_counter > 10'd645)) begin
				soc_mode1 <= 1'd1;
			end else begin
				soc_mode1 <= 1'd0;
			end
			vns_liteethphygmiimii_next_state <= 1'd0;
		end
		default: begin
			soc_sys_counter_reset <= 1'd1;
			if (soc_sys_tick) begin
				vns_liteethphygmiimii_next_state <= 1'd1;
			end
		end
	endcase
end
assign eth_rx_clk = eth_clocks_rx;
assign soc_reset0 = (soc_reset_storage | soc_reset1);
assign eth_rst_n = (~soc_reset0);
assign soc_counter_done = (soc_counter == 9'd256);
assign soc_counter_ce = (~soc_counter_done);
assign soc_reset1 = (~soc_counter_done);
assign soc_liteethphygmiimiitx_demux_sel = (soc_mode0 == 1'd1);
assign soc_liteethphygmiimiitx_demux_sink_valid = soc_liteethphygmiimiitx_sink_sink_valid0;
assign soc_liteethphygmiimiitx_sink_sink_ready0 = soc_liteethphygmiimiitx_demux_sink_ready;
assign soc_liteethphygmiimiitx_demux_sink_first = soc_liteethphygmiimiitx_sink_sink_first0;
assign soc_liteethphygmiimiitx_demux_sink_last = soc_liteethphygmiimiitx_sink_sink_last0;
assign soc_liteethphygmiimiitx_demux_sink_payload_data = soc_liteethphygmiimiitx_sink_sink_payload_data0;
assign soc_liteethphygmiimiitx_demux_sink_payload_last_be = soc_liteethphygmiimiitx_sink_sink_payload_last_be0;
assign soc_liteethphygmiimiitx_demux_sink_payload_error = soc_liteethphygmiimiitx_sink_sink_payload_error0;
assign soc_liteethphygmiimiitx_gmii_tx_sink_valid = soc_liteethphygmiimiitx_demux_endpoint0_source_valid;
assign soc_liteethphygmiimiitx_demux_endpoint0_source_ready = soc_liteethphygmiimiitx_gmii_tx_sink_ready;
assign soc_liteethphygmiimiitx_gmii_tx_sink_first = soc_liteethphygmiimiitx_demux_endpoint0_source_first;
assign soc_liteethphygmiimiitx_gmii_tx_sink_last = soc_liteethphygmiimiitx_demux_endpoint0_source_last;
assign soc_liteethphygmiimiitx_gmii_tx_sink_payload_data = soc_liteethphygmiimiitx_demux_endpoint0_source_payload_data;
assign soc_liteethphygmiimiitx_gmii_tx_sink_payload_last_be = soc_liteethphygmiimiitx_demux_endpoint0_source_payload_last_be;
assign soc_liteethphygmiimiitx_gmii_tx_sink_payload_error = soc_liteethphygmiimiitx_demux_endpoint0_source_payload_error;
assign soc_liteethphygmiimiitx_sink_sink_valid1 = soc_liteethphygmiimiitx_demux_endpoint1_source_valid;
assign soc_liteethphygmiimiitx_demux_endpoint1_source_ready = soc_liteethphygmiimiitx_sink_sink_ready1;
assign soc_liteethphygmiimiitx_sink_sink_first1 = soc_liteethphygmiimiitx_demux_endpoint1_source_first;
assign soc_liteethphygmiimiitx_sink_sink_last1 = soc_liteethphygmiimiitx_demux_endpoint1_source_last;
assign soc_liteethphygmiimiitx_sink_sink_payload_data1 = soc_liteethphygmiimiitx_demux_endpoint1_source_payload_data;
assign soc_liteethphygmiimiitx_sink_sink_payload_last_be1 = soc_liteethphygmiimiitx_demux_endpoint1_source_payload_last_be;
assign soc_liteethphygmiimiitx_sink_sink_payload_error1 = soc_liteethphygmiimiitx_demux_endpoint1_source_payload_error;
assign eth_tx_er = 1'd0;
assign soc_liteethphygmiimiitx_converter_sink_valid = soc_liteethphygmiimiitx_sink_sink_valid1;
assign soc_liteethphygmiimiitx_converter_sink_payload_data = soc_liteethphygmiimiitx_sink_sink_payload_data1;
assign soc_liteethphygmiimiitx_sink_sink_ready1 = soc_liteethphygmiimiitx_converter_sink_ready;
assign soc_liteethphygmiimiitx_converter_source_ready = 1'd1;
assign soc_liteethphygmiimiitx_converter_converter_sink_valid = soc_liteethphygmiimiitx_converter_sink_valid;
assign soc_liteethphygmiimiitx_converter_converter_sink_first = soc_liteethphygmiimiitx_converter_sink_first;
assign soc_liteethphygmiimiitx_converter_converter_sink_last = soc_liteethphygmiimiitx_converter_sink_last;
assign soc_liteethphygmiimiitx_converter_sink_ready = soc_liteethphygmiimiitx_converter_converter_sink_ready;
always @(*) begin
	soc_liteethphygmiimiitx_converter_converter_sink_payload_data <= 8'd0;
	soc_liteethphygmiimiitx_converter_converter_sink_payload_data[3:0] <= soc_liteethphygmiimiitx_converter_sink_payload_data[3:0];
	soc_liteethphygmiimiitx_converter_converter_sink_payload_data[7:4] <= soc_liteethphygmiimiitx_converter_sink_payload_data[7:4];
end
assign soc_liteethphygmiimiitx_converter_source_valid = soc_liteethphygmiimiitx_converter_source_source_valid;
assign soc_liteethphygmiimiitx_converter_source_first = soc_liteethphygmiimiitx_converter_source_source_first;
assign soc_liteethphygmiimiitx_converter_source_last = soc_liteethphygmiimiitx_converter_source_source_last;
assign soc_liteethphygmiimiitx_converter_source_source_ready = soc_liteethphygmiimiitx_converter_source_ready;
assign {soc_liteethphygmiimiitx_converter_source_payload_data} = soc_liteethphygmiimiitx_converter_source_source_payload_data;
assign soc_liteethphygmiimiitx_converter_source_source_valid = soc_liteethphygmiimiitx_converter_converter_source_valid;
assign soc_liteethphygmiimiitx_converter_converter_source_ready = soc_liteethphygmiimiitx_converter_source_source_ready;
assign soc_liteethphygmiimiitx_converter_source_source_first = soc_liteethphygmiimiitx_converter_converter_source_first;
assign soc_liteethphygmiimiitx_converter_source_source_last = soc_liteethphygmiimiitx_converter_converter_source_last;
assign soc_liteethphygmiimiitx_converter_source_source_payload_data = soc_liteethphygmiimiitx_converter_converter_source_payload_data;
assign soc_liteethphygmiimiitx_converter_converter_first = (soc_liteethphygmiimiitx_converter_converter_mux == 1'd0);
assign soc_liteethphygmiimiitx_converter_converter_last = (soc_liteethphygmiimiitx_converter_converter_mux == 1'd1);
assign soc_liteethphygmiimiitx_converter_converter_source_valid = soc_liteethphygmiimiitx_converter_converter_sink_valid;
assign soc_liteethphygmiimiitx_converter_converter_source_first = (soc_liteethphygmiimiitx_converter_converter_sink_first & soc_liteethphygmiimiitx_converter_converter_first);
assign soc_liteethphygmiimiitx_converter_converter_source_last = (soc_liteethphygmiimiitx_converter_converter_sink_last & soc_liteethphygmiimiitx_converter_converter_last);
assign soc_liteethphygmiimiitx_converter_converter_sink_ready = (soc_liteethphygmiimiitx_converter_converter_last & soc_liteethphygmiimiitx_converter_converter_source_ready);
always @(*) begin
	soc_liteethphygmiimiitx_converter_converter_source_payload_data <= 4'd0;
	case (soc_liteethphygmiimiitx_converter_converter_mux)
		1'd0: begin
			soc_liteethphygmiimiitx_converter_converter_source_payload_data <= soc_liteethphygmiimiitx_converter_converter_sink_payload_data[3:0];
		end
		default: begin
			soc_liteethphygmiimiitx_converter_converter_source_payload_data <= soc_liteethphygmiimiitx_converter_converter_sink_payload_data[7:4];
		end
	endcase
end
assign soc_liteethphygmiimiitx_converter_converter_source_payload_valid_token_count = soc_liteethphygmiimiitx_converter_converter_last;
always @(*) begin
	soc_liteethphygmiimiitx_demux_sink_ready <= 1'd0;
	soc_liteethphygmiimiitx_demux_endpoint0_source_valid <= 1'd0;
	soc_liteethphygmiimiitx_demux_endpoint0_source_first <= 1'd0;
	soc_liteethphygmiimiitx_demux_endpoint0_source_last <= 1'd0;
	soc_liteethphygmiimiitx_demux_endpoint0_source_payload_data <= 8'd0;
	soc_liteethphygmiimiitx_demux_endpoint0_source_payload_last_be <= 1'd0;
	soc_liteethphygmiimiitx_demux_endpoint0_source_payload_error <= 1'd0;
	soc_liteethphygmiimiitx_demux_endpoint1_source_valid <= 1'd0;
	soc_liteethphygmiimiitx_demux_endpoint1_source_first <= 1'd0;
	soc_liteethphygmiimiitx_demux_endpoint1_source_last <= 1'd0;
	soc_liteethphygmiimiitx_demux_endpoint1_source_payload_data <= 8'd0;
	soc_liteethphygmiimiitx_demux_endpoint1_source_payload_last_be <= 1'd0;
	soc_liteethphygmiimiitx_demux_endpoint1_source_payload_error <= 1'd0;
	case (soc_liteethphygmiimiitx_demux_sel)
		1'd0: begin
			soc_liteethphygmiimiitx_demux_endpoint0_source_valid <= soc_liteethphygmiimiitx_demux_sink_valid;
			soc_liteethphygmiimiitx_demux_sink_ready <= soc_liteethphygmiimiitx_demux_endpoint0_source_ready;
			soc_liteethphygmiimiitx_demux_endpoint0_source_first <= soc_liteethphygmiimiitx_demux_sink_first;
			soc_liteethphygmiimiitx_demux_endpoint0_source_last <= soc_liteethphygmiimiitx_demux_sink_last;
			soc_liteethphygmiimiitx_demux_endpoint0_source_payload_data <= soc_liteethphygmiimiitx_demux_sink_payload_data;
			soc_liteethphygmiimiitx_demux_endpoint0_source_payload_last_be <= soc_liteethphygmiimiitx_demux_sink_payload_last_be;
			soc_liteethphygmiimiitx_demux_endpoint0_source_payload_error <= soc_liteethphygmiimiitx_demux_sink_payload_error;
		end
		1'd1: begin
			soc_liteethphygmiimiitx_demux_endpoint1_source_valid <= soc_liteethphygmiimiitx_demux_sink_valid;
			soc_liteethphygmiimiitx_demux_sink_ready <= soc_liteethphygmiimiitx_demux_endpoint1_source_ready;
			soc_liteethphygmiimiitx_demux_endpoint1_source_first <= soc_liteethphygmiimiitx_demux_sink_first;
			soc_liteethphygmiimiitx_demux_endpoint1_source_last <= soc_liteethphygmiimiitx_demux_sink_last;
			soc_liteethphygmiimiitx_demux_endpoint1_source_payload_data <= soc_liteethphygmiimiitx_demux_sink_payload_data;
			soc_liteethphygmiimiitx_demux_endpoint1_source_payload_last_be <= soc_liteethphygmiimiitx_demux_sink_payload_last_be;
			soc_liteethphygmiimiitx_demux_endpoint1_source_payload_error <= soc_liteethphygmiimiitx_demux_sink_payload_error;
		end
	endcase
end
assign soc_liteethphygmiimiirx_mux_sel = (soc_mode0 == 1'd1);
assign soc_liteethphygmiimiirx_mux_endpoint0_sink_valid = soc_liteethphygmiimiirx_gmii_rx_source_valid;
assign soc_liteethphygmiimiirx_gmii_rx_source_ready = soc_liteethphygmiimiirx_mux_endpoint0_sink_ready;
assign soc_liteethphygmiimiirx_mux_endpoint0_sink_first = soc_liteethphygmiimiirx_gmii_rx_source_first;
assign soc_liteethphygmiimiirx_mux_endpoint0_sink_last = soc_liteethphygmiimiirx_gmii_rx_source_last;
assign soc_liteethphygmiimiirx_mux_endpoint0_sink_payload_data = soc_liteethphygmiimiirx_gmii_rx_source_payload_data;
assign soc_liteethphygmiimiirx_mux_endpoint0_sink_payload_last_be = soc_liteethphygmiimiirx_gmii_rx_source_payload_last_be;
assign soc_liteethphygmiimiirx_mux_endpoint0_sink_payload_error = soc_liteethphygmiimiirx_gmii_rx_source_payload_error;
assign soc_liteethphygmiimiirx_mux_endpoint1_sink_valid = soc_liteethphygmiimiirx_source_source_valid1;
assign soc_liteethphygmiimiirx_source_source_ready1 = soc_liteethphygmiimiirx_mux_endpoint1_sink_ready;
assign soc_liteethphygmiimiirx_mux_endpoint1_sink_first = soc_liteethphygmiimiirx_source_source_first1;
assign soc_liteethphygmiimiirx_mux_endpoint1_sink_last = soc_liteethphygmiimiirx_source_source_last1;
assign soc_liteethphygmiimiirx_mux_endpoint1_sink_payload_data = soc_liteethphygmiimiirx_source_source_payload_data1;
assign soc_liteethphygmiimiirx_mux_endpoint1_sink_payload_last_be = soc_liteethphygmiimiirx_source_source_payload_last_be1;
assign soc_liteethphygmiimiirx_mux_endpoint1_sink_payload_error = soc_liteethphygmiimiirx_source_source_payload_error1;
assign soc_liteethphygmiimiirx_source_source_valid0 = soc_liteethphygmiimiirx_mux_source_valid;
assign soc_liteethphygmiimiirx_mux_source_ready = soc_liteethphygmiimiirx_source_source_ready0;
assign soc_liteethphygmiimiirx_source_source_first0 = soc_liteethphygmiimiirx_mux_source_first;
assign soc_liteethphygmiimiirx_source_source_last0 = soc_liteethphygmiimiirx_mux_source_last;
assign soc_liteethphygmiimiirx_source_source_payload_data0 = soc_liteethphygmiimiirx_mux_source_payload_data;
assign soc_liteethphygmiimiirx_source_source_payload_last_be0 = soc_liteethphygmiimiirx_mux_source_payload_last_be;
assign soc_liteethphygmiimiirx_source_source_payload_error0 = soc_liteethphygmiimiirx_mux_source_payload_error;
assign soc_liteethphygmiimiirx_gmii_rx_source_last = ((~soc_liteethphygmiimiirx_pads_d_rx_dv) & soc_liteethphygmiimiirx_gmii_rx_dv_d);
assign soc_liteethphygmiimiirx_converter_sink_last = (~soc_liteethphygmiimiirx_pads_d_rx_dv);
assign soc_liteethphygmiimiirx_source_source_valid1 = soc_liteethphygmiimiirx_converter_source_valid;
assign soc_liteethphygmiimiirx_converter_source_ready = soc_liteethphygmiimiirx_source_source_ready1;
assign soc_liteethphygmiimiirx_source_source_first1 = soc_liteethphygmiimiirx_converter_source_first;
assign soc_liteethphygmiimiirx_source_source_last1 = soc_liteethphygmiimiirx_converter_source_last;
assign soc_liteethphygmiimiirx_source_source_payload_data1 = soc_liteethphygmiimiirx_converter_source_payload_data;
assign soc_liteethphygmiimiirx_converter_converter_sink_valid = soc_liteethphygmiimiirx_converter_sink_valid;
assign soc_liteethphygmiimiirx_converter_converter_sink_first = soc_liteethphygmiimiirx_converter_sink_first;
assign soc_liteethphygmiimiirx_converter_converter_sink_last = soc_liteethphygmiimiirx_converter_sink_last;
assign soc_liteethphygmiimiirx_converter_sink_ready = soc_liteethphygmiimiirx_converter_converter_sink_ready;
assign soc_liteethphygmiimiirx_converter_converter_sink_payload_data = {soc_liteethphygmiimiirx_converter_sink_payload_data};
assign soc_liteethphygmiimiirx_converter_source_valid = soc_liteethphygmiimiirx_converter_source_source_valid;
assign soc_liteethphygmiimiirx_converter_source_first = soc_liteethphygmiimiirx_converter_source_source_first;
assign soc_liteethphygmiimiirx_converter_source_last = soc_liteethphygmiimiirx_converter_source_source_last;
assign soc_liteethphygmiimiirx_converter_source_source_ready = soc_liteethphygmiimiirx_converter_source_ready;
always @(*) begin
	soc_liteethphygmiimiirx_converter_source_payload_data <= 8'd0;
	soc_liteethphygmiimiirx_converter_source_payload_data[3:0] <= soc_liteethphygmiimiirx_converter_source_source_payload_data[3:0];
	soc_liteethphygmiimiirx_converter_source_payload_data[7:4] <= soc_liteethphygmiimiirx_converter_source_source_payload_data[7:4];
end
assign soc_liteethphygmiimiirx_converter_source_source_valid = soc_liteethphygmiimiirx_converter_converter_source_valid;
assign soc_liteethphygmiimiirx_converter_converter_source_ready = soc_liteethphygmiimiirx_converter_source_source_ready;
assign soc_liteethphygmiimiirx_converter_source_source_first = soc_liteethphygmiimiirx_converter_converter_source_first;
assign soc_liteethphygmiimiirx_converter_source_source_last = soc_liteethphygmiimiirx_converter_converter_source_last;
assign soc_liteethphygmiimiirx_converter_source_source_payload_data = soc_liteethphygmiimiirx_converter_converter_source_payload_data;
assign soc_liteethphygmiimiirx_converter_converter_sink_ready = ((~soc_liteethphygmiimiirx_converter_converter_strobe_all) | soc_liteethphygmiimiirx_converter_converter_source_ready);
assign soc_liteethphygmiimiirx_converter_converter_source_valid = soc_liteethphygmiimiirx_converter_converter_strobe_all;
assign soc_liteethphygmiimiirx_converter_converter_load_part = (soc_liteethphygmiimiirx_converter_converter_sink_valid & soc_liteethphygmiimiirx_converter_converter_sink_ready);
always @(*) begin
	soc_liteethphygmiimiirx_mux_source_valid <= 1'd0;
	soc_liteethphygmiimiirx_mux_source_first <= 1'd0;
	soc_liteethphygmiimiirx_mux_source_last <= 1'd0;
	soc_liteethphygmiimiirx_mux_source_payload_data <= 8'd0;
	soc_liteethphygmiimiirx_mux_source_payload_last_be <= 1'd0;
	soc_liteethphygmiimiirx_mux_source_payload_error <= 1'd0;
	soc_liteethphygmiimiirx_mux_endpoint0_sink_ready <= 1'd0;
	soc_liteethphygmiimiirx_mux_endpoint1_sink_ready <= 1'd0;
	case (soc_liteethphygmiimiirx_mux_sel)
		1'd0: begin
			soc_liteethphygmiimiirx_mux_source_valid <= soc_liteethphygmiimiirx_mux_endpoint0_sink_valid;
			soc_liteethphygmiimiirx_mux_endpoint0_sink_ready <= soc_liteethphygmiimiirx_mux_source_ready;
			soc_liteethphygmiimiirx_mux_source_first <= soc_liteethphygmiimiirx_mux_endpoint0_sink_first;
			soc_liteethphygmiimiirx_mux_source_last <= soc_liteethphygmiimiirx_mux_endpoint0_sink_last;
			soc_liteethphygmiimiirx_mux_source_payload_data <= soc_liteethphygmiimiirx_mux_endpoint0_sink_payload_data;
			soc_liteethphygmiimiirx_mux_source_payload_last_be <= soc_liteethphygmiimiirx_mux_endpoint0_sink_payload_last_be;
			soc_liteethphygmiimiirx_mux_source_payload_error <= soc_liteethphygmiimiirx_mux_endpoint0_sink_payload_error;
		end
		1'd1: begin
			soc_liteethphygmiimiirx_mux_source_valid <= soc_liteethphygmiimiirx_mux_endpoint1_sink_valid;
			soc_liteethphygmiimiirx_mux_endpoint1_sink_ready <= soc_liteethphygmiimiirx_mux_source_ready;
			soc_liteethphygmiimiirx_mux_source_first <= soc_liteethphygmiimiirx_mux_endpoint1_sink_first;
			soc_liteethphygmiimiirx_mux_source_last <= soc_liteethphygmiimiirx_mux_endpoint1_sink_last;
			soc_liteethphygmiimiirx_mux_source_payload_data <= soc_liteethphygmiimiirx_mux_endpoint1_sink_payload_data;
			soc_liteethphygmiimiirx_mux_source_payload_last_be <= soc_liteethphygmiimiirx_mux_endpoint1_sink_payload_last_be;
			soc_liteethphygmiimiirx_mux_source_payload_error <= soc_liteethphygmiimiirx_mux_endpoint1_sink_payload_error;
		end
	endcase
end
assign eth_mdc = soc_storage[0];
assign soc_data_oe = soc_storage[1];
assign soc_data_w = soc_storage[2];
assign soc_tx_cdc_sink_valid = soc_source_valid;
assign soc_source_ready = soc_tx_cdc_sink_ready;
assign soc_tx_cdc_sink_first = soc_source_first;
assign soc_tx_cdc_sink_last = soc_source_last;
assign soc_tx_cdc_sink_payload_data = soc_source_payload_data;
assign soc_tx_cdc_sink_payload_last_be = soc_source_payload_last_be;
assign soc_tx_cdc_sink_payload_error = soc_source_payload_error;
assign soc_sink_valid = soc_rx_cdc_source_valid;
assign soc_rx_cdc_source_ready = soc_sink_ready;
assign soc_sink_first = soc_rx_cdc_source_first;
assign soc_sink_last = soc_rx_cdc_source_last;
assign soc_sink_payload_data = soc_rx_cdc_source_payload_data;
assign soc_sink_payload_last_be = soc_rx_cdc_source_payload_last_be;
assign soc_sink_payload_error = soc_rx_cdc_source_payload_error;
assign soc_ps_preamble_error_i = soc_preamble_checker_error;
assign soc_ps_crc_error_i = soc_crc32_checker_error;
always @(*) begin
	vns_liteethmacgap_next_state <= 1'd0;
	soc_tx_gap_inserter_sink_ready <= 1'd0;
	soc_tx_gap_inserter_source_valid <= 1'd0;
	soc_tx_gap_inserter_source_first <= 1'd0;
	soc_tx_gap_inserter_source_last <= 1'd0;
	soc_tx_gap_inserter_source_payload_data <= 8'd0;
	soc_tx_gap_inserter_source_payload_last_be <= 1'd0;
	soc_tx_gap_inserter_source_payload_error <= 1'd0;
	soc_tx_gap_inserter_counter_reset <= 1'd0;
	soc_tx_gap_inserter_counter_ce <= 1'd0;
	vns_liteethmacgap_next_state <= vns_liteethmacgap_state;
	case (vns_liteethmacgap_state)
		1'd1: begin
			soc_tx_gap_inserter_counter_ce <= 1'd1;
			if ((soc_tx_gap_inserter_counter == 4'd11)) begin
				vns_liteethmacgap_next_state <= 1'd0;
			end
		end
		default: begin
			soc_tx_gap_inserter_counter_reset <= 1'd1;
			soc_tx_gap_inserter_source_valid <= soc_tx_gap_inserter_sink_valid;
			soc_tx_gap_inserter_sink_ready <= soc_tx_gap_inserter_source_ready;
			soc_tx_gap_inserter_source_first <= soc_tx_gap_inserter_sink_first;
			soc_tx_gap_inserter_source_last <= soc_tx_gap_inserter_sink_last;
			soc_tx_gap_inserter_source_payload_data <= soc_tx_gap_inserter_sink_payload_data;
			soc_tx_gap_inserter_source_payload_last_be <= soc_tx_gap_inserter_sink_payload_last_be;
			soc_tx_gap_inserter_source_payload_error <= soc_tx_gap_inserter_sink_payload_error;
			if (((soc_tx_gap_inserter_sink_valid & soc_tx_gap_inserter_sink_last) & soc_tx_gap_inserter_sink_ready)) begin
				vns_liteethmacgap_next_state <= 1'd1;
			end
		end
	endcase
end
assign soc_preamble_inserter_source_payload_last_be = soc_preamble_inserter_sink_payload_last_be;
always @(*) begin
	soc_preamble_inserter_sink_ready <= 1'd0;
	vns_liteethmacpreambleinserter_next_state <= 2'd0;
	soc_preamble_inserter_source_valid <= 1'd0;
	soc_preamble_inserter_source_first <= 1'd0;
	soc_preamble_inserter_source_last <= 1'd0;
	soc_preamble_inserter_source_payload_data <= 8'd0;
	soc_preamble_inserter_source_payload_error <= 1'd0;
	soc_preamble_inserter_clr_cnt <= 1'd0;
	soc_preamble_inserter_inc_cnt <= 1'd0;
	soc_preamble_inserter_source_payload_data <= soc_preamble_inserter_sink_payload_data;
	vns_liteethmacpreambleinserter_next_state <= vns_liteethmacpreambleinserter_state;
	case (vns_liteethmacpreambleinserter_state)
		1'd1: begin
			soc_preamble_inserter_source_valid <= 1'd1;
			case (soc_preamble_inserter_cnt)
				1'd0: begin
					soc_preamble_inserter_source_payload_data <= soc_preamble_inserter_preamble[7:0];
				end
				1'd1: begin
					soc_preamble_inserter_source_payload_data <= soc_preamble_inserter_preamble[15:8];
				end
				2'd2: begin
					soc_preamble_inserter_source_payload_data <= soc_preamble_inserter_preamble[23:16];
				end
				2'd3: begin
					soc_preamble_inserter_source_payload_data <= soc_preamble_inserter_preamble[31:24];
				end
				3'd4: begin
					soc_preamble_inserter_source_payload_data <= soc_preamble_inserter_preamble[39:32];
				end
				3'd5: begin
					soc_preamble_inserter_source_payload_data <= soc_preamble_inserter_preamble[47:40];
				end
				3'd6: begin
					soc_preamble_inserter_source_payload_data <= soc_preamble_inserter_preamble[55:48];
				end
				default: begin
					soc_preamble_inserter_source_payload_data <= soc_preamble_inserter_preamble[63:56];
				end
			endcase
			if ((soc_preamble_inserter_cnt == 3'd7)) begin
				if (soc_preamble_inserter_source_ready) begin
					vns_liteethmacpreambleinserter_next_state <= 2'd2;
				end
			end else begin
				soc_preamble_inserter_inc_cnt <= soc_preamble_inserter_source_ready;
			end
		end
		2'd2: begin
			soc_preamble_inserter_source_valid <= soc_preamble_inserter_sink_valid;
			soc_preamble_inserter_sink_ready <= soc_preamble_inserter_source_ready;
			soc_preamble_inserter_source_first <= soc_preamble_inserter_sink_first;
			soc_preamble_inserter_source_last <= soc_preamble_inserter_sink_last;
			soc_preamble_inserter_source_payload_error <= soc_preamble_inserter_sink_payload_error;
			if (((soc_preamble_inserter_sink_valid & soc_preamble_inserter_sink_last) & soc_preamble_inserter_source_ready)) begin
				vns_liteethmacpreambleinserter_next_state <= 1'd0;
			end
		end
		default: begin
			soc_preamble_inserter_sink_ready <= 1'd1;
			soc_preamble_inserter_clr_cnt <= 1'd1;
			if (soc_preamble_inserter_sink_valid) begin
				soc_preamble_inserter_sink_ready <= 1'd0;
				vns_liteethmacpreambleinserter_next_state <= 1'd1;
			end
		end
	endcase
end
assign soc_preamble_checker_source_payload_data = soc_preamble_checker_sink_payload_data;
assign soc_preamble_checker_source_payload_last_be = soc_preamble_checker_sink_payload_last_be;
always @(*) begin
	soc_preamble_checker_source_payload_error <= 1'd0;
	soc_preamble_checker_error <= 1'd0;
	vns_liteethmacpreamblechecker_next_state <= 1'd0;
	soc_preamble_checker_sink_ready <= 1'd0;
	soc_preamble_checker_source_valid <= 1'd0;
	soc_preamble_checker_source_first <= 1'd0;
	soc_preamble_checker_source_last <= 1'd0;
	vns_liteethmacpreamblechecker_next_state <= vns_liteethmacpreamblechecker_state;
	case (vns_liteethmacpreamblechecker_state)
		1'd1: begin
			soc_preamble_checker_source_valid <= soc_preamble_checker_sink_valid;
			soc_preamble_checker_sink_ready <= soc_preamble_checker_source_ready;
			soc_preamble_checker_source_first <= soc_preamble_checker_sink_first;
			soc_preamble_checker_source_last <= soc_preamble_checker_sink_last;
			soc_preamble_checker_source_payload_error <= soc_preamble_checker_sink_payload_error;
			if (((soc_preamble_checker_source_valid & soc_preamble_checker_source_last) & soc_preamble_checker_source_ready)) begin
				vns_liteethmacpreamblechecker_next_state <= 1'd0;
			end
		end
		default: begin
			soc_preamble_checker_sink_ready <= 1'd1;
			if (((soc_preamble_checker_sink_valid & (~soc_preamble_checker_sink_last)) & (soc_preamble_checker_sink_payload_data == 8'd213))) begin
				vns_liteethmacpreamblechecker_next_state <= 1'd1;
			end
			if ((soc_preamble_checker_sink_valid & soc_preamble_checker_sink_last)) begin
				soc_preamble_checker_error <= 1'd1;
			end
		end
	endcase
end
assign soc_crc32_inserter_cnt_done = (soc_crc32_inserter_cnt == 1'd0);
assign soc_crc32_inserter_data1 = soc_crc32_inserter_data0;
assign soc_crc32_inserter_last = soc_crc32_inserter_reg;
assign soc_crc32_inserter_value = (~{soc_crc32_inserter_reg[0], soc_crc32_inserter_reg[1], soc_crc32_inserter_reg[2], soc_crc32_inserter_reg[3], soc_crc32_inserter_reg[4], soc_crc32_inserter_reg[5], soc_crc32_inserter_reg[6], soc_crc32_inserter_reg[7], soc_crc32_inserter_reg[8], soc_crc32_inserter_reg[9], soc_crc32_inserter_reg[10], soc_crc32_inserter_reg[11], soc_crc32_inserter_reg[12], soc_crc32_inserter_reg[13], soc_crc32_inserter_reg[14], soc_crc32_inserter_reg[15], soc_crc32_inserter_reg[16], soc_crc32_inserter_reg[17], soc_crc32_inserter_reg[18], soc_crc32_inserter_reg[19], soc_crc32_inserter_reg[20], soc_crc32_inserter_reg[21], soc_crc32_inserter_reg[22], soc_crc32_inserter_reg[23], soc_crc32_inserter_reg[24], soc_crc32_inserter_reg[25], soc_crc32_inserter_reg[26], soc_crc32_inserter_reg[27], soc_crc32_inserter_reg[28], soc_crc32_inserter_reg[29], soc_crc32_inserter_reg[30], soc_crc32_inserter_reg[31]});
assign soc_crc32_inserter_error = (soc_crc32_inserter_next != 32'd3338984827);
always @(*) begin
	soc_crc32_inserter_next <= 32'd0;
	soc_crc32_inserter_next[0] <= (((soc_crc32_inserter_last[24] ^ soc_crc32_inserter_last[30]) ^ soc_crc32_inserter_data1[1]) ^ soc_crc32_inserter_data1[7]);
	soc_crc32_inserter_next[1] <= (((((((soc_crc32_inserter_last[25] ^ soc_crc32_inserter_last[31]) ^ soc_crc32_inserter_data1[0]) ^ soc_crc32_inserter_data1[6]) ^ soc_crc32_inserter_last[24]) ^ soc_crc32_inserter_last[30]) ^ soc_crc32_inserter_data1[1]) ^ soc_crc32_inserter_data1[7]);
	soc_crc32_inserter_next[2] <= (((((((((soc_crc32_inserter_last[26] ^ soc_crc32_inserter_data1[5]) ^ soc_crc32_inserter_last[25]) ^ soc_crc32_inserter_last[31]) ^ soc_crc32_inserter_data1[0]) ^ soc_crc32_inserter_data1[6]) ^ soc_crc32_inserter_last[24]) ^ soc_crc32_inserter_last[30]) ^ soc_crc32_inserter_data1[1]) ^ soc_crc32_inserter_data1[7]);
	soc_crc32_inserter_next[3] <= (((((((soc_crc32_inserter_last[27] ^ soc_crc32_inserter_data1[4]) ^ soc_crc32_inserter_last[26]) ^ soc_crc32_inserter_data1[5]) ^ soc_crc32_inserter_last[25]) ^ soc_crc32_inserter_last[31]) ^ soc_crc32_inserter_data1[0]) ^ soc_crc32_inserter_data1[6]);
	soc_crc32_inserter_next[4] <= (((((((((soc_crc32_inserter_last[28] ^ soc_crc32_inserter_data1[3]) ^ soc_crc32_inserter_last[27]) ^ soc_crc32_inserter_data1[4]) ^ soc_crc32_inserter_last[26]) ^ soc_crc32_inserter_data1[5]) ^ soc_crc32_inserter_last[24]) ^ soc_crc32_inserter_last[30]) ^ soc_crc32_inserter_data1[1]) ^ soc_crc32_inserter_data1[7]);
	soc_crc32_inserter_next[5] <= (((((((((((((soc_crc32_inserter_last[29] ^ soc_crc32_inserter_data1[2]) ^ soc_crc32_inserter_last[28]) ^ soc_crc32_inserter_data1[3]) ^ soc_crc32_inserter_last[27]) ^ soc_crc32_inserter_data1[4]) ^ soc_crc32_inserter_last[25]) ^ soc_crc32_inserter_last[31]) ^ soc_crc32_inserter_data1[0]) ^ soc_crc32_inserter_data1[6]) ^ soc_crc32_inserter_last[24]) ^ soc_crc32_inserter_last[30]) ^ soc_crc32_inserter_data1[1]) ^ soc_crc32_inserter_data1[7]);
	soc_crc32_inserter_next[6] <= (((((((((((soc_crc32_inserter_last[30] ^ soc_crc32_inserter_data1[1]) ^ soc_crc32_inserter_last[29]) ^ soc_crc32_inserter_data1[2]) ^ soc_crc32_inserter_last[28]) ^ soc_crc32_inserter_data1[3]) ^ soc_crc32_inserter_last[26]) ^ soc_crc32_inserter_data1[5]) ^ soc_crc32_inserter_last[25]) ^ soc_crc32_inserter_last[31]) ^ soc_crc32_inserter_data1[0]) ^ soc_crc32_inserter_data1[6]);
	soc_crc32_inserter_next[7] <= (((((((((soc_crc32_inserter_last[31] ^ soc_crc32_inserter_data1[0]) ^ soc_crc32_inserter_last[29]) ^ soc_crc32_inserter_data1[2]) ^ soc_crc32_inserter_last[27]) ^ soc_crc32_inserter_data1[4]) ^ soc_crc32_inserter_last[26]) ^ soc_crc32_inserter_data1[5]) ^ soc_crc32_inserter_last[24]) ^ soc_crc32_inserter_data1[7]);
	soc_crc32_inserter_next[8] <= ((((((((soc_crc32_inserter_last[0] ^ soc_crc32_inserter_last[28]) ^ soc_crc32_inserter_data1[3]) ^ soc_crc32_inserter_last[27]) ^ soc_crc32_inserter_data1[4]) ^ soc_crc32_inserter_last[25]) ^ soc_crc32_inserter_data1[6]) ^ soc_crc32_inserter_last[24]) ^ soc_crc32_inserter_data1[7]);
	soc_crc32_inserter_next[9] <= ((((((((soc_crc32_inserter_last[1] ^ soc_crc32_inserter_last[29]) ^ soc_crc32_inserter_data1[2]) ^ soc_crc32_inserter_last[28]) ^ soc_crc32_inserter_data1[3]) ^ soc_crc32_inserter_last[26]) ^ soc_crc32_inserter_data1[5]) ^ soc_crc32_inserter_last[25]) ^ soc_crc32_inserter_data1[6]);
	soc_crc32_inserter_next[10] <= ((((((((soc_crc32_inserter_last[2] ^ soc_crc32_inserter_last[29]) ^ soc_crc32_inserter_data1[2]) ^ soc_crc32_inserter_last[27]) ^ soc_crc32_inserter_data1[4]) ^ soc_crc32_inserter_last[26]) ^ soc_crc32_inserter_data1[5]) ^ soc_crc32_inserter_last[24]) ^ soc_crc32_inserter_data1[7]);
	soc_crc32_inserter_next[11] <= ((((((((soc_crc32_inserter_last[3] ^ soc_crc32_inserter_last[28]) ^ soc_crc32_inserter_data1[3]) ^ soc_crc32_inserter_last[27]) ^ soc_crc32_inserter_data1[4]) ^ soc_crc32_inserter_last[25]) ^ soc_crc32_inserter_data1[6]) ^ soc_crc32_inserter_last[24]) ^ soc_crc32_inserter_data1[7]);
	soc_crc32_inserter_next[12] <= ((((((((((((soc_crc32_inserter_last[4] ^ soc_crc32_inserter_last[29]) ^ soc_crc32_inserter_data1[2]) ^ soc_crc32_inserter_last[28]) ^ soc_crc32_inserter_data1[3]) ^ soc_crc32_inserter_last[26]) ^ soc_crc32_inserter_data1[5]) ^ soc_crc32_inserter_last[25]) ^ soc_crc32_inserter_data1[6]) ^ soc_crc32_inserter_last[24]) ^ soc_crc32_inserter_last[30]) ^ soc_crc32_inserter_data1[1]) ^ soc_crc32_inserter_data1[7]);
	soc_crc32_inserter_next[13] <= ((((((((((((soc_crc32_inserter_last[5] ^ soc_crc32_inserter_last[30]) ^ soc_crc32_inserter_data1[1]) ^ soc_crc32_inserter_last[29]) ^ soc_crc32_inserter_data1[2]) ^ soc_crc32_inserter_last[27]) ^ soc_crc32_inserter_data1[4]) ^ soc_crc32_inserter_last[26]) ^ soc_crc32_inserter_data1[5]) ^ soc_crc32_inserter_last[25]) ^ soc_crc32_inserter_last[31]) ^ soc_crc32_inserter_data1[0]) ^ soc_crc32_inserter_data1[6]);
	soc_crc32_inserter_next[14] <= ((((((((((soc_crc32_inserter_last[6] ^ soc_crc32_inserter_last[31]) ^ soc_crc32_inserter_data1[0]) ^ soc_crc32_inserter_last[30]) ^ soc_crc32_inserter_data1[1]) ^ soc_crc32_inserter_last[28]) ^ soc_crc32_inserter_data1[3]) ^ soc_crc32_inserter_last[27]) ^ soc_crc32_inserter_data1[4]) ^ soc_crc32_inserter_last[26]) ^ soc_crc32_inserter_data1[5]);
	soc_crc32_inserter_next[15] <= ((((((((soc_crc32_inserter_last[7] ^ soc_crc32_inserter_last[31]) ^ soc_crc32_inserter_data1[0]) ^ soc_crc32_inserter_last[29]) ^ soc_crc32_inserter_data1[2]) ^ soc_crc32_inserter_last[28]) ^ soc_crc32_inserter_data1[3]) ^ soc_crc32_inserter_last[27]) ^ soc_crc32_inserter_data1[4]);
	soc_crc32_inserter_next[16] <= ((((((soc_crc32_inserter_last[8] ^ soc_crc32_inserter_last[29]) ^ soc_crc32_inserter_data1[2]) ^ soc_crc32_inserter_last[28]) ^ soc_crc32_inserter_data1[3]) ^ soc_crc32_inserter_last[24]) ^ soc_crc32_inserter_data1[7]);
	soc_crc32_inserter_next[17] <= ((((((soc_crc32_inserter_last[9] ^ soc_crc32_inserter_last[30]) ^ soc_crc32_inserter_data1[1]) ^ soc_crc32_inserter_last[29]) ^ soc_crc32_inserter_data1[2]) ^ soc_crc32_inserter_last[25]) ^ soc_crc32_inserter_data1[6]);
	soc_crc32_inserter_next[18] <= ((((((soc_crc32_inserter_last[10] ^ soc_crc32_inserter_last[31]) ^ soc_crc32_inserter_data1[0]) ^ soc_crc32_inserter_last[30]) ^ soc_crc32_inserter_data1[1]) ^ soc_crc32_inserter_last[26]) ^ soc_crc32_inserter_data1[5]);
	soc_crc32_inserter_next[19] <= ((((soc_crc32_inserter_last[11] ^ soc_crc32_inserter_last[31]) ^ soc_crc32_inserter_data1[0]) ^ soc_crc32_inserter_last[27]) ^ soc_crc32_inserter_data1[4]);
	soc_crc32_inserter_next[20] <= ((soc_crc32_inserter_last[12] ^ soc_crc32_inserter_last[28]) ^ soc_crc32_inserter_data1[3]);
	soc_crc32_inserter_next[21] <= ((soc_crc32_inserter_last[13] ^ soc_crc32_inserter_last[29]) ^ soc_crc32_inserter_data1[2]);
	soc_crc32_inserter_next[22] <= ((soc_crc32_inserter_last[14] ^ soc_crc32_inserter_last[24]) ^ soc_crc32_inserter_data1[7]);
	soc_crc32_inserter_next[23] <= ((((((soc_crc32_inserter_last[15] ^ soc_crc32_inserter_last[25]) ^ soc_crc32_inserter_data1[6]) ^ soc_crc32_inserter_last[24]) ^ soc_crc32_inserter_last[30]) ^ soc_crc32_inserter_data1[1]) ^ soc_crc32_inserter_data1[7]);
	soc_crc32_inserter_next[24] <= ((((((soc_crc32_inserter_last[16] ^ soc_crc32_inserter_last[26]) ^ soc_crc32_inserter_data1[5]) ^ soc_crc32_inserter_last[25]) ^ soc_crc32_inserter_last[31]) ^ soc_crc32_inserter_data1[0]) ^ soc_crc32_inserter_data1[6]);
	soc_crc32_inserter_next[25] <= ((((soc_crc32_inserter_last[17] ^ soc_crc32_inserter_last[27]) ^ soc_crc32_inserter_data1[4]) ^ soc_crc32_inserter_last[26]) ^ soc_crc32_inserter_data1[5]);
	soc_crc32_inserter_next[26] <= ((((((((soc_crc32_inserter_last[18] ^ soc_crc32_inserter_last[28]) ^ soc_crc32_inserter_data1[3]) ^ soc_crc32_inserter_last[27]) ^ soc_crc32_inserter_data1[4]) ^ soc_crc32_inserter_last[24]) ^ soc_crc32_inserter_last[30]) ^ soc_crc32_inserter_data1[1]) ^ soc_crc32_inserter_data1[7]);
	soc_crc32_inserter_next[27] <= ((((((((soc_crc32_inserter_last[19] ^ soc_crc32_inserter_last[29]) ^ soc_crc32_inserter_data1[2]) ^ soc_crc32_inserter_last[28]) ^ soc_crc32_inserter_data1[3]) ^ soc_crc32_inserter_last[25]) ^ soc_crc32_inserter_last[31]) ^ soc_crc32_inserter_data1[0]) ^ soc_crc32_inserter_data1[6]);
	soc_crc32_inserter_next[28] <= ((((((soc_crc32_inserter_last[20] ^ soc_crc32_inserter_last[30]) ^ soc_crc32_inserter_data1[1]) ^ soc_crc32_inserter_last[29]) ^ soc_crc32_inserter_data1[2]) ^ soc_crc32_inserter_last[26]) ^ soc_crc32_inserter_data1[5]);
	soc_crc32_inserter_next[29] <= ((((((soc_crc32_inserter_last[21] ^ soc_crc32_inserter_last[31]) ^ soc_crc32_inserter_data1[0]) ^ soc_crc32_inserter_last[30]) ^ soc_crc32_inserter_data1[1]) ^ soc_crc32_inserter_last[27]) ^ soc_crc32_inserter_data1[4]);
	soc_crc32_inserter_next[30] <= ((((soc_crc32_inserter_last[22] ^ soc_crc32_inserter_last[31]) ^ soc_crc32_inserter_data1[0]) ^ soc_crc32_inserter_last[28]) ^ soc_crc32_inserter_data1[3]);
	soc_crc32_inserter_next[31] <= ((soc_crc32_inserter_last[23] ^ soc_crc32_inserter_last[29]) ^ soc_crc32_inserter_data1[2]);
end
always @(*) begin
	soc_crc32_inserter_source_valid <= 1'd0;
	soc_crc32_inserter_source_first <= 1'd0;
	soc_crc32_inserter_source_last <= 1'd0;
	soc_crc32_inserter_source_payload_data <= 8'd0;
	soc_crc32_inserter_source_payload_last_be <= 1'd0;
	soc_crc32_inserter_source_payload_error <= 1'd0;
	soc_crc32_inserter_data0 <= 8'd0;
	soc_crc32_inserter_is_ongoing0 <= 1'd0;
	soc_crc32_inserter_is_ongoing1 <= 1'd0;
	soc_crc32_inserter_sink_ready <= 1'd0;
	vns_liteethmaccrc32inserter_next_state <= 2'd0;
	soc_crc32_inserter_reset <= 1'd0;
	soc_crc32_inserter_ce <= 1'd0;
	vns_liteethmaccrc32inserter_next_state <= vns_liteethmaccrc32inserter_state;
	case (vns_liteethmaccrc32inserter_state)
		1'd1: begin
			soc_crc32_inserter_ce <= (soc_crc32_inserter_sink_valid & soc_crc32_inserter_source_ready);
			soc_crc32_inserter_data0 <= soc_crc32_inserter_sink_payload_data;
			soc_crc32_inserter_source_valid <= soc_crc32_inserter_sink_valid;
			soc_crc32_inserter_sink_ready <= soc_crc32_inserter_source_ready;
			soc_crc32_inserter_source_first <= soc_crc32_inserter_sink_first;
			soc_crc32_inserter_source_last <= soc_crc32_inserter_sink_last;
			soc_crc32_inserter_source_payload_data <= soc_crc32_inserter_sink_payload_data;
			soc_crc32_inserter_source_payload_last_be <= soc_crc32_inserter_sink_payload_last_be;
			soc_crc32_inserter_source_payload_error <= soc_crc32_inserter_sink_payload_error;
			soc_crc32_inserter_source_last <= 1'd0;
			if (((soc_crc32_inserter_sink_valid & soc_crc32_inserter_sink_last) & soc_crc32_inserter_source_ready)) begin
				vns_liteethmaccrc32inserter_next_state <= 2'd2;
			end
		end
		2'd2: begin
			soc_crc32_inserter_source_valid <= 1'd1;
			case (soc_crc32_inserter_cnt)
				1'd0: begin
					soc_crc32_inserter_source_payload_data <= soc_crc32_inserter_value[31:24];
				end
				1'd1: begin
					soc_crc32_inserter_source_payload_data <= soc_crc32_inserter_value[23:16];
				end
				2'd2: begin
					soc_crc32_inserter_source_payload_data <= soc_crc32_inserter_value[15:8];
				end
				default: begin
					soc_crc32_inserter_source_payload_data <= soc_crc32_inserter_value[7:0];
				end
			endcase
			if (soc_crc32_inserter_cnt_done) begin
				soc_crc32_inserter_source_last <= 1'd1;
				if (soc_crc32_inserter_source_ready) begin
					vns_liteethmaccrc32inserter_next_state <= 1'd0;
				end
			end
			soc_crc32_inserter_is_ongoing1 <= 1'd1;
		end
		default: begin
			soc_crc32_inserter_reset <= 1'd1;
			soc_crc32_inserter_sink_ready <= 1'd1;
			if (soc_crc32_inserter_sink_valid) begin
				soc_crc32_inserter_sink_ready <= 1'd0;
				vns_liteethmaccrc32inserter_next_state <= 1'd1;
			end
			soc_crc32_inserter_is_ongoing0 <= 1'd1;
		end
	endcase
end
assign soc_crc32_checker_fifo_full = (soc_crc32_checker_syncfifo_level == 3'd4);
assign soc_crc32_checker_fifo_in = (soc_crc32_checker_sink_sink_valid & ((~soc_crc32_checker_fifo_full) | soc_crc32_checker_fifo_out));
assign soc_crc32_checker_fifo_out = (soc_crc32_checker_source_source_valid & soc_crc32_checker_source_source_ready);
assign soc_crc32_checker_syncfifo_sink_first = soc_crc32_checker_sink_sink_first;
assign soc_crc32_checker_syncfifo_sink_last = soc_crc32_checker_sink_sink_last;
assign soc_crc32_checker_syncfifo_sink_payload_data = soc_crc32_checker_sink_sink_payload_data;
assign soc_crc32_checker_syncfifo_sink_payload_last_be = soc_crc32_checker_sink_sink_payload_last_be;
assign soc_crc32_checker_syncfifo_sink_payload_error = soc_crc32_checker_sink_sink_payload_error;
always @(*) begin
	soc_crc32_checker_syncfifo_sink_valid <= 1'd0;
	soc_crc32_checker_syncfifo_sink_valid <= soc_crc32_checker_sink_sink_valid;
	soc_crc32_checker_syncfifo_sink_valid <= soc_crc32_checker_fifo_in;
end
always @(*) begin
	soc_crc32_checker_sink_sink_ready <= 1'd0;
	soc_crc32_checker_sink_sink_ready <= soc_crc32_checker_syncfifo_sink_ready;
	soc_crc32_checker_sink_sink_ready <= soc_crc32_checker_fifo_in;
end
assign soc_crc32_checker_source_source_valid = (soc_crc32_checker_sink_sink_valid & soc_crc32_checker_fifo_full);
assign soc_crc32_checker_source_source_last = soc_crc32_checker_sink_sink_last;
assign soc_crc32_checker_syncfifo_source_ready = soc_crc32_checker_fifo_out;
assign soc_crc32_checker_source_source_payload_data = soc_crc32_checker_syncfifo_source_payload_data;
assign soc_crc32_checker_source_source_payload_last_be = soc_crc32_checker_syncfifo_source_payload_last_be;
always @(*) begin
	soc_crc32_checker_source_source_payload_error <= 1'd0;
	soc_crc32_checker_source_source_payload_error <= soc_crc32_checker_syncfifo_source_payload_error;
	soc_crc32_checker_source_source_payload_error <= (soc_crc32_checker_sink_sink_payload_error | soc_crc32_checker_crc_error);
end
assign soc_crc32_checker_error = ((soc_crc32_checker_source_source_valid & soc_crc32_checker_source_source_last) & soc_crc32_checker_crc_error);
assign soc_crc32_checker_crc_data0 = soc_crc32_checker_sink_sink_payload_data;
assign soc_crc32_checker_crc_data1 = soc_crc32_checker_crc_data0;
assign soc_crc32_checker_crc_last = soc_crc32_checker_crc_reg;
assign soc_crc32_checker_crc_value = (~{soc_crc32_checker_crc_reg[0], soc_crc32_checker_crc_reg[1], soc_crc32_checker_crc_reg[2], soc_crc32_checker_crc_reg[3], soc_crc32_checker_crc_reg[4], soc_crc32_checker_crc_reg[5], soc_crc32_checker_crc_reg[6], soc_crc32_checker_crc_reg[7], soc_crc32_checker_crc_reg[8], soc_crc32_checker_crc_reg[9], soc_crc32_checker_crc_reg[10], soc_crc32_checker_crc_reg[11], soc_crc32_checker_crc_reg[12], soc_crc32_checker_crc_reg[13], soc_crc32_checker_crc_reg[14], soc_crc32_checker_crc_reg[15], soc_crc32_checker_crc_reg[16], soc_crc32_checker_crc_reg[17], soc_crc32_checker_crc_reg[18], soc_crc32_checker_crc_reg[19], soc_crc32_checker_crc_reg[20], soc_crc32_checker_crc_reg[21], soc_crc32_checker_crc_reg[22], soc_crc32_checker_crc_reg[23], soc_crc32_checker_crc_reg[24], soc_crc32_checker_crc_reg[25], soc_crc32_checker_crc_reg[26], soc_crc32_checker_crc_reg[27], soc_crc32_checker_crc_reg[28], soc_crc32_checker_crc_reg[29], soc_crc32_checker_crc_reg[30], soc_crc32_checker_crc_reg[31]});
assign soc_crc32_checker_crc_error = (soc_crc32_checker_crc_next != 32'd3338984827);
always @(*) begin
	soc_crc32_checker_crc_next <= 32'd0;
	soc_crc32_checker_crc_next[0] <= (((soc_crc32_checker_crc_last[24] ^ soc_crc32_checker_crc_last[30]) ^ soc_crc32_checker_crc_data1[1]) ^ soc_crc32_checker_crc_data1[7]);
	soc_crc32_checker_crc_next[1] <= (((((((soc_crc32_checker_crc_last[25] ^ soc_crc32_checker_crc_last[31]) ^ soc_crc32_checker_crc_data1[0]) ^ soc_crc32_checker_crc_data1[6]) ^ soc_crc32_checker_crc_last[24]) ^ soc_crc32_checker_crc_last[30]) ^ soc_crc32_checker_crc_data1[1]) ^ soc_crc32_checker_crc_data1[7]);
	soc_crc32_checker_crc_next[2] <= (((((((((soc_crc32_checker_crc_last[26] ^ soc_crc32_checker_crc_data1[5]) ^ soc_crc32_checker_crc_last[25]) ^ soc_crc32_checker_crc_last[31]) ^ soc_crc32_checker_crc_data1[0]) ^ soc_crc32_checker_crc_data1[6]) ^ soc_crc32_checker_crc_last[24]) ^ soc_crc32_checker_crc_last[30]) ^ soc_crc32_checker_crc_data1[1]) ^ soc_crc32_checker_crc_data1[7]);
	soc_crc32_checker_crc_next[3] <= (((((((soc_crc32_checker_crc_last[27] ^ soc_crc32_checker_crc_data1[4]) ^ soc_crc32_checker_crc_last[26]) ^ soc_crc32_checker_crc_data1[5]) ^ soc_crc32_checker_crc_last[25]) ^ soc_crc32_checker_crc_last[31]) ^ soc_crc32_checker_crc_data1[0]) ^ soc_crc32_checker_crc_data1[6]);
	soc_crc32_checker_crc_next[4] <= (((((((((soc_crc32_checker_crc_last[28] ^ soc_crc32_checker_crc_data1[3]) ^ soc_crc32_checker_crc_last[27]) ^ soc_crc32_checker_crc_data1[4]) ^ soc_crc32_checker_crc_last[26]) ^ soc_crc32_checker_crc_data1[5]) ^ soc_crc32_checker_crc_last[24]) ^ soc_crc32_checker_crc_last[30]) ^ soc_crc32_checker_crc_data1[1]) ^ soc_crc32_checker_crc_data1[7]);
	soc_crc32_checker_crc_next[5] <= (((((((((((((soc_crc32_checker_crc_last[29] ^ soc_crc32_checker_crc_data1[2]) ^ soc_crc32_checker_crc_last[28]) ^ soc_crc32_checker_crc_data1[3]) ^ soc_crc32_checker_crc_last[27]) ^ soc_crc32_checker_crc_data1[4]) ^ soc_crc32_checker_crc_last[25]) ^ soc_crc32_checker_crc_last[31]) ^ soc_crc32_checker_crc_data1[0]) ^ soc_crc32_checker_crc_data1[6]) ^ soc_crc32_checker_crc_last[24]) ^ soc_crc32_checker_crc_last[30]) ^ soc_crc32_checker_crc_data1[1]) ^ soc_crc32_checker_crc_data1[7]);
	soc_crc32_checker_crc_next[6] <= (((((((((((soc_crc32_checker_crc_last[30] ^ soc_crc32_checker_crc_data1[1]) ^ soc_crc32_checker_crc_last[29]) ^ soc_crc32_checker_crc_data1[2]) ^ soc_crc32_checker_crc_last[28]) ^ soc_crc32_checker_crc_data1[3]) ^ soc_crc32_checker_crc_last[26]) ^ soc_crc32_checker_crc_data1[5]) ^ soc_crc32_checker_crc_last[25]) ^ soc_crc32_checker_crc_last[31]) ^ soc_crc32_checker_crc_data1[0]) ^ soc_crc32_checker_crc_data1[6]);
	soc_crc32_checker_crc_next[7] <= (((((((((soc_crc32_checker_crc_last[31] ^ soc_crc32_checker_crc_data1[0]) ^ soc_crc32_checker_crc_last[29]) ^ soc_crc32_checker_crc_data1[2]) ^ soc_crc32_checker_crc_last[27]) ^ soc_crc32_checker_crc_data1[4]) ^ soc_crc32_checker_crc_last[26]) ^ soc_crc32_checker_crc_data1[5]) ^ soc_crc32_checker_crc_last[24]) ^ soc_crc32_checker_crc_data1[7]);
	soc_crc32_checker_crc_next[8] <= ((((((((soc_crc32_checker_crc_last[0] ^ soc_crc32_checker_crc_last[28]) ^ soc_crc32_checker_crc_data1[3]) ^ soc_crc32_checker_crc_last[27]) ^ soc_crc32_checker_crc_data1[4]) ^ soc_crc32_checker_crc_last[25]) ^ soc_crc32_checker_crc_data1[6]) ^ soc_crc32_checker_crc_last[24]) ^ soc_crc32_checker_crc_data1[7]);
	soc_crc32_checker_crc_next[9] <= ((((((((soc_crc32_checker_crc_last[1] ^ soc_crc32_checker_crc_last[29]) ^ soc_crc32_checker_crc_data1[2]) ^ soc_crc32_checker_crc_last[28]) ^ soc_crc32_checker_crc_data1[3]) ^ soc_crc32_checker_crc_last[26]) ^ soc_crc32_checker_crc_data1[5]) ^ soc_crc32_checker_crc_last[25]) ^ soc_crc32_checker_crc_data1[6]);
	soc_crc32_checker_crc_next[10] <= ((((((((soc_crc32_checker_crc_last[2] ^ soc_crc32_checker_crc_last[29]) ^ soc_crc32_checker_crc_data1[2]) ^ soc_crc32_checker_crc_last[27]) ^ soc_crc32_checker_crc_data1[4]) ^ soc_crc32_checker_crc_last[26]) ^ soc_crc32_checker_crc_data1[5]) ^ soc_crc32_checker_crc_last[24]) ^ soc_crc32_checker_crc_data1[7]);
	soc_crc32_checker_crc_next[11] <= ((((((((soc_crc32_checker_crc_last[3] ^ soc_crc32_checker_crc_last[28]) ^ soc_crc32_checker_crc_data1[3]) ^ soc_crc32_checker_crc_last[27]) ^ soc_crc32_checker_crc_data1[4]) ^ soc_crc32_checker_crc_last[25]) ^ soc_crc32_checker_crc_data1[6]) ^ soc_crc32_checker_crc_last[24]) ^ soc_crc32_checker_crc_data1[7]);
	soc_crc32_checker_crc_next[12] <= ((((((((((((soc_crc32_checker_crc_last[4] ^ soc_crc32_checker_crc_last[29]) ^ soc_crc32_checker_crc_data1[2]) ^ soc_crc32_checker_crc_last[28]) ^ soc_crc32_checker_crc_data1[3]) ^ soc_crc32_checker_crc_last[26]) ^ soc_crc32_checker_crc_data1[5]) ^ soc_crc32_checker_crc_last[25]) ^ soc_crc32_checker_crc_data1[6]) ^ soc_crc32_checker_crc_last[24]) ^ soc_crc32_checker_crc_last[30]) ^ soc_crc32_checker_crc_data1[1]) ^ soc_crc32_checker_crc_data1[7]);
	soc_crc32_checker_crc_next[13] <= ((((((((((((soc_crc32_checker_crc_last[5] ^ soc_crc32_checker_crc_last[30]) ^ soc_crc32_checker_crc_data1[1]) ^ soc_crc32_checker_crc_last[29]) ^ soc_crc32_checker_crc_data1[2]) ^ soc_crc32_checker_crc_last[27]) ^ soc_crc32_checker_crc_data1[4]) ^ soc_crc32_checker_crc_last[26]) ^ soc_crc32_checker_crc_data1[5]) ^ soc_crc32_checker_crc_last[25]) ^ soc_crc32_checker_crc_last[31]) ^ soc_crc32_checker_crc_data1[0]) ^ soc_crc32_checker_crc_data1[6]);
	soc_crc32_checker_crc_next[14] <= ((((((((((soc_crc32_checker_crc_last[6] ^ soc_crc32_checker_crc_last[31]) ^ soc_crc32_checker_crc_data1[0]) ^ soc_crc32_checker_crc_last[30]) ^ soc_crc32_checker_crc_data1[1]) ^ soc_crc32_checker_crc_last[28]) ^ soc_crc32_checker_crc_data1[3]) ^ soc_crc32_checker_crc_last[27]) ^ soc_crc32_checker_crc_data1[4]) ^ soc_crc32_checker_crc_last[26]) ^ soc_crc32_checker_crc_data1[5]);
	soc_crc32_checker_crc_next[15] <= ((((((((soc_crc32_checker_crc_last[7] ^ soc_crc32_checker_crc_last[31]) ^ soc_crc32_checker_crc_data1[0]) ^ soc_crc32_checker_crc_last[29]) ^ soc_crc32_checker_crc_data1[2]) ^ soc_crc32_checker_crc_last[28]) ^ soc_crc32_checker_crc_data1[3]) ^ soc_crc32_checker_crc_last[27]) ^ soc_crc32_checker_crc_data1[4]);
	soc_crc32_checker_crc_next[16] <= ((((((soc_crc32_checker_crc_last[8] ^ soc_crc32_checker_crc_last[29]) ^ soc_crc32_checker_crc_data1[2]) ^ soc_crc32_checker_crc_last[28]) ^ soc_crc32_checker_crc_data1[3]) ^ soc_crc32_checker_crc_last[24]) ^ soc_crc32_checker_crc_data1[7]);
	soc_crc32_checker_crc_next[17] <= ((((((soc_crc32_checker_crc_last[9] ^ soc_crc32_checker_crc_last[30]) ^ soc_crc32_checker_crc_data1[1]) ^ soc_crc32_checker_crc_last[29]) ^ soc_crc32_checker_crc_data1[2]) ^ soc_crc32_checker_crc_last[25]) ^ soc_crc32_checker_crc_data1[6]);
	soc_crc32_checker_crc_next[18] <= ((((((soc_crc32_checker_crc_last[10] ^ soc_crc32_checker_crc_last[31]) ^ soc_crc32_checker_crc_data1[0]) ^ soc_crc32_checker_crc_last[30]) ^ soc_crc32_checker_crc_data1[1]) ^ soc_crc32_checker_crc_last[26]) ^ soc_crc32_checker_crc_data1[5]);
	soc_crc32_checker_crc_next[19] <= ((((soc_crc32_checker_crc_last[11] ^ soc_crc32_checker_crc_last[31]) ^ soc_crc32_checker_crc_data1[0]) ^ soc_crc32_checker_crc_last[27]) ^ soc_crc32_checker_crc_data1[4]);
	soc_crc32_checker_crc_next[20] <= ((soc_crc32_checker_crc_last[12] ^ soc_crc32_checker_crc_last[28]) ^ soc_crc32_checker_crc_data1[3]);
	soc_crc32_checker_crc_next[21] <= ((soc_crc32_checker_crc_last[13] ^ soc_crc32_checker_crc_last[29]) ^ soc_crc32_checker_crc_data1[2]);
	soc_crc32_checker_crc_next[22] <= ((soc_crc32_checker_crc_last[14] ^ soc_crc32_checker_crc_last[24]) ^ soc_crc32_checker_crc_data1[7]);
	soc_crc32_checker_crc_next[23] <= ((((((soc_crc32_checker_crc_last[15] ^ soc_crc32_checker_crc_last[25]) ^ soc_crc32_checker_crc_data1[6]) ^ soc_crc32_checker_crc_last[24]) ^ soc_crc32_checker_crc_last[30]) ^ soc_crc32_checker_crc_data1[1]) ^ soc_crc32_checker_crc_data1[7]);
	soc_crc32_checker_crc_next[24] <= ((((((soc_crc32_checker_crc_last[16] ^ soc_crc32_checker_crc_last[26]) ^ soc_crc32_checker_crc_data1[5]) ^ soc_crc32_checker_crc_last[25]) ^ soc_crc32_checker_crc_last[31]) ^ soc_crc32_checker_crc_data1[0]) ^ soc_crc32_checker_crc_data1[6]);
	soc_crc32_checker_crc_next[25] <= ((((soc_crc32_checker_crc_last[17] ^ soc_crc32_checker_crc_last[27]) ^ soc_crc32_checker_crc_data1[4]) ^ soc_crc32_checker_crc_last[26]) ^ soc_crc32_checker_crc_data1[5]);
	soc_crc32_checker_crc_next[26] <= ((((((((soc_crc32_checker_crc_last[18] ^ soc_crc32_checker_crc_last[28]) ^ soc_crc32_checker_crc_data1[3]) ^ soc_crc32_checker_crc_last[27]) ^ soc_crc32_checker_crc_data1[4]) ^ soc_crc32_checker_crc_last[24]) ^ soc_crc32_checker_crc_last[30]) ^ soc_crc32_checker_crc_data1[1]) ^ soc_crc32_checker_crc_data1[7]);
	soc_crc32_checker_crc_next[27] <= ((((((((soc_crc32_checker_crc_last[19] ^ soc_crc32_checker_crc_last[29]) ^ soc_crc32_checker_crc_data1[2]) ^ soc_crc32_checker_crc_last[28]) ^ soc_crc32_checker_crc_data1[3]) ^ soc_crc32_checker_crc_last[25]) ^ soc_crc32_checker_crc_last[31]) ^ soc_crc32_checker_crc_data1[0]) ^ soc_crc32_checker_crc_data1[6]);
	soc_crc32_checker_crc_next[28] <= ((((((soc_crc32_checker_crc_last[20] ^ soc_crc32_checker_crc_last[30]) ^ soc_crc32_checker_crc_data1[1]) ^ soc_crc32_checker_crc_last[29]) ^ soc_crc32_checker_crc_data1[2]) ^ soc_crc32_checker_crc_last[26]) ^ soc_crc32_checker_crc_data1[5]);
	soc_crc32_checker_crc_next[29] <= ((((((soc_crc32_checker_crc_last[21] ^ soc_crc32_checker_crc_last[31]) ^ soc_crc32_checker_crc_data1[0]) ^ soc_crc32_checker_crc_last[30]) ^ soc_crc32_checker_crc_data1[1]) ^ soc_crc32_checker_crc_last[27]) ^ soc_crc32_checker_crc_data1[4]);
	soc_crc32_checker_crc_next[30] <= ((((soc_crc32_checker_crc_last[22] ^ soc_crc32_checker_crc_last[31]) ^ soc_crc32_checker_crc_data1[0]) ^ soc_crc32_checker_crc_last[28]) ^ soc_crc32_checker_crc_data1[3]);
	soc_crc32_checker_crc_next[31] <= ((soc_crc32_checker_crc_last[23] ^ soc_crc32_checker_crc_last[29]) ^ soc_crc32_checker_crc_data1[2]);
end
assign soc_crc32_checker_syncfifo_syncfifo_din = {soc_crc32_checker_syncfifo_fifo_in_last, soc_crc32_checker_syncfifo_fifo_in_first, soc_crc32_checker_syncfifo_fifo_in_payload_error, soc_crc32_checker_syncfifo_fifo_in_payload_last_be, soc_crc32_checker_syncfifo_fifo_in_payload_data};
assign {soc_crc32_checker_syncfifo_fifo_out_last, soc_crc32_checker_syncfifo_fifo_out_first, soc_crc32_checker_syncfifo_fifo_out_payload_error, soc_crc32_checker_syncfifo_fifo_out_payload_last_be, soc_crc32_checker_syncfifo_fifo_out_payload_data} = soc_crc32_checker_syncfifo_syncfifo_dout;
assign soc_crc32_checker_syncfifo_sink_ready = soc_crc32_checker_syncfifo_syncfifo_writable;
assign soc_crc32_checker_syncfifo_syncfifo_we = soc_crc32_checker_syncfifo_sink_valid;
assign soc_crc32_checker_syncfifo_fifo_in_first = soc_crc32_checker_syncfifo_sink_first;
assign soc_crc32_checker_syncfifo_fifo_in_last = soc_crc32_checker_syncfifo_sink_last;
assign soc_crc32_checker_syncfifo_fifo_in_payload_data = soc_crc32_checker_syncfifo_sink_payload_data;
assign soc_crc32_checker_syncfifo_fifo_in_payload_last_be = soc_crc32_checker_syncfifo_sink_payload_last_be;
assign soc_crc32_checker_syncfifo_fifo_in_payload_error = soc_crc32_checker_syncfifo_sink_payload_error;
assign soc_crc32_checker_syncfifo_source_valid = soc_crc32_checker_syncfifo_syncfifo_readable;
assign soc_crc32_checker_syncfifo_source_first = soc_crc32_checker_syncfifo_fifo_out_first;
assign soc_crc32_checker_syncfifo_source_last = soc_crc32_checker_syncfifo_fifo_out_last;
assign soc_crc32_checker_syncfifo_source_payload_data = soc_crc32_checker_syncfifo_fifo_out_payload_data;
assign soc_crc32_checker_syncfifo_source_payload_last_be = soc_crc32_checker_syncfifo_fifo_out_payload_last_be;
assign soc_crc32_checker_syncfifo_source_payload_error = soc_crc32_checker_syncfifo_fifo_out_payload_error;
assign soc_crc32_checker_syncfifo_syncfifo_re = soc_crc32_checker_syncfifo_source_ready;
always @(*) begin
	soc_crc32_checker_syncfifo_wrport_adr <= 3'd0;
	if (soc_crc32_checker_syncfifo_replace) begin
		soc_crc32_checker_syncfifo_wrport_adr <= (soc_crc32_checker_syncfifo_produce - 1'd1);
	end else begin
		soc_crc32_checker_syncfifo_wrport_adr <= soc_crc32_checker_syncfifo_produce;
	end
end
assign soc_crc32_checker_syncfifo_wrport_dat_w = soc_crc32_checker_syncfifo_syncfifo_din;
assign soc_crc32_checker_syncfifo_wrport_we = (soc_crc32_checker_syncfifo_syncfifo_we & (soc_crc32_checker_syncfifo_syncfifo_writable | soc_crc32_checker_syncfifo_replace));
assign soc_crc32_checker_syncfifo_do_read = (soc_crc32_checker_syncfifo_syncfifo_readable & soc_crc32_checker_syncfifo_syncfifo_re);
assign soc_crc32_checker_syncfifo_rdport_adr = soc_crc32_checker_syncfifo_consume;
assign soc_crc32_checker_syncfifo_syncfifo_dout = soc_crc32_checker_syncfifo_rdport_dat_r;
assign soc_crc32_checker_syncfifo_syncfifo_writable = (soc_crc32_checker_syncfifo_level != 3'd5);
assign soc_crc32_checker_syncfifo_syncfifo_readable = (soc_crc32_checker_syncfifo_level != 1'd0);
always @(*) begin
	soc_crc32_checker_fifo_reset <= 1'd0;
	soc_crc32_checker_crc_ce <= 1'd0;
	soc_crc32_checker_crc_reset <= 1'd0;
	vns_liteethmaccrc32checker_next_state <= 2'd0;
	vns_liteethmaccrc32checker_next_state <= vns_liteethmaccrc32checker_state;
	case (vns_liteethmaccrc32checker_state)
		1'd1: begin
			if ((soc_crc32_checker_sink_sink_valid & soc_crc32_checker_sink_sink_ready)) begin
				soc_crc32_checker_crc_ce <= 1'd1;
				vns_liteethmaccrc32checker_next_state <= 2'd2;
			end
		end
		2'd2: begin
			if ((soc_crc32_checker_sink_sink_valid & soc_crc32_checker_sink_sink_ready)) begin
				soc_crc32_checker_crc_ce <= 1'd1;
				if (soc_crc32_checker_sink_sink_last) begin
					vns_liteethmaccrc32checker_next_state <= 1'd0;
				end
			end
		end
		default: begin
			soc_crc32_checker_crc_reset <= 1'd1;
			soc_crc32_checker_fifo_reset <= 1'd1;
			vns_liteethmaccrc32checker_next_state <= 1'd1;
		end
	endcase
end
assign soc_ps_preamble_error_o = (soc_ps_preamble_error_toggle_o ^ soc_ps_preamble_error_toggle_o_r);
assign soc_ps_crc_error_o = (soc_ps_crc_error_toggle_o ^ soc_ps_crc_error_toggle_o_r);
assign soc_padding_inserter_counter_done = (soc_padding_inserter_counter >= 6'd59);
always @(*) begin
	soc_padding_inserter_sink_ready <= 1'd0;
	vns_liteethmacpaddinginserter_next_state <= 1'd0;
	soc_padding_inserter_source_valid <= 1'd0;
	soc_padding_inserter_source_first <= 1'd0;
	soc_padding_inserter_source_last <= 1'd0;
	soc_padding_inserter_source_payload_data <= 8'd0;
	soc_padding_inserter_source_payload_last_be <= 1'd0;
	soc_padding_inserter_source_payload_error <= 1'd0;
	soc_padding_inserter_counter_reset <= 1'd0;
	soc_padding_inserter_counter_ce <= 1'd0;
	vns_liteethmacpaddinginserter_next_state <= vns_liteethmacpaddinginserter_state;
	case (vns_liteethmacpaddinginserter_state)
		1'd1: begin
			soc_padding_inserter_source_valid <= 1'd1;
			soc_padding_inserter_source_last <= soc_padding_inserter_counter_done;
			soc_padding_inserter_source_payload_data <= 1'd0;
			if ((soc_padding_inserter_source_valid & soc_padding_inserter_source_ready)) begin
				soc_padding_inserter_counter_ce <= 1'd1;
				if (soc_padding_inserter_counter_done) begin
					soc_padding_inserter_counter_reset <= 1'd1;
					vns_liteethmacpaddinginserter_next_state <= 1'd0;
				end
			end
		end
		default: begin
			soc_padding_inserter_source_valid <= soc_padding_inserter_sink_valid;
			soc_padding_inserter_sink_ready <= soc_padding_inserter_source_ready;
			soc_padding_inserter_source_first <= soc_padding_inserter_sink_first;
			soc_padding_inserter_source_last <= soc_padding_inserter_sink_last;
			soc_padding_inserter_source_payload_data <= soc_padding_inserter_sink_payload_data;
			soc_padding_inserter_source_payload_last_be <= soc_padding_inserter_sink_payload_last_be;
			soc_padding_inserter_source_payload_error <= soc_padding_inserter_sink_payload_error;
			if ((soc_padding_inserter_source_valid & soc_padding_inserter_source_ready)) begin
				soc_padding_inserter_counter_ce <= 1'd1;
				if (soc_padding_inserter_sink_last) begin
					if ((~soc_padding_inserter_counter_done)) begin
						soc_padding_inserter_source_last <= 1'd0;
						vns_liteethmacpaddinginserter_next_state <= 1'd1;
					end else begin
						soc_padding_inserter_counter_reset <= 1'd1;
					end
				end
			end
		end
	endcase
end
assign soc_padding_checker_source_valid = soc_padding_checker_sink_valid;
assign soc_padding_checker_sink_ready = soc_padding_checker_source_ready;
assign soc_padding_checker_source_first = soc_padding_checker_sink_first;
assign soc_padding_checker_source_last = soc_padding_checker_sink_last;
assign soc_padding_checker_source_payload_data = soc_padding_checker_sink_payload_data;
assign soc_padding_checker_source_payload_last_be = soc_padding_checker_sink_payload_last_be;
assign soc_padding_checker_source_payload_error = soc_padding_checker_sink_payload_error;
assign soc_tx_last_be_source_valid = (soc_tx_last_be_sink_valid & soc_tx_last_be_ongoing);
assign soc_tx_last_be_source_last = soc_tx_last_be_sink_payload_last_be;
assign soc_tx_last_be_source_payload_data = soc_tx_last_be_sink_payload_data;
assign soc_tx_last_be_sink_ready = soc_tx_last_be_source_ready;
assign soc_rx_last_be_source_valid = soc_rx_last_be_sink_valid;
assign soc_rx_last_be_sink_ready = soc_rx_last_be_source_ready;
assign soc_rx_last_be_source_first = soc_rx_last_be_sink_first;
assign soc_rx_last_be_source_last = soc_rx_last_be_sink_last;
assign soc_rx_last_be_source_payload_data = soc_rx_last_be_sink_payload_data;
assign soc_rx_last_be_source_payload_error = soc_rx_last_be_sink_payload_error;
always @(*) begin
	soc_rx_last_be_source_payload_last_be <= 1'd0;
	soc_rx_last_be_source_payload_last_be <= soc_rx_last_be_sink_payload_last_be;
	soc_rx_last_be_source_payload_last_be <= soc_rx_last_be_sink_last;
end
assign soc_tx_converter_converter_sink_valid = soc_tx_converter_sink_valid;
assign soc_tx_converter_converter_sink_first = soc_tx_converter_sink_first;
assign soc_tx_converter_converter_sink_last = soc_tx_converter_sink_last;
assign soc_tx_converter_sink_ready = soc_tx_converter_converter_sink_ready;
always @(*) begin
	soc_tx_converter_converter_sink_payload_data <= 40'd0;
	soc_tx_converter_converter_sink_payload_data[7:0] <= soc_tx_converter_sink_payload_data[7:0];
	soc_tx_converter_converter_sink_payload_data[8] <= soc_tx_converter_sink_payload_last_be[0];
	soc_tx_converter_converter_sink_payload_data[9] <= soc_tx_converter_sink_payload_error[0];
	soc_tx_converter_converter_sink_payload_data[17:10] <= soc_tx_converter_sink_payload_data[15:8];
	soc_tx_converter_converter_sink_payload_data[18] <= soc_tx_converter_sink_payload_last_be[1];
	soc_tx_converter_converter_sink_payload_data[19] <= soc_tx_converter_sink_payload_error[1];
	soc_tx_converter_converter_sink_payload_data[27:20] <= soc_tx_converter_sink_payload_data[23:16];
	soc_tx_converter_converter_sink_payload_data[28] <= soc_tx_converter_sink_payload_last_be[2];
	soc_tx_converter_converter_sink_payload_data[29] <= soc_tx_converter_sink_payload_error[2];
	soc_tx_converter_converter_sink_payload_data[37:30] <= soc_tx_converter_sink_payload_data[31:24];
	soc_tx_converter_converter_sink_payload_data[38] <= soc_tx_converter_sink_payload_last_be[3];
	soc_tx_converter_converter_sink_payload_data[39] <= soc_tx_converter_sink_payload_error[3];
end
assign soc_tx_converter_source_valid = soc_tx_converter_source_source_valid;
assign soc_tx_converter_source_first = soc_tx_converter_source_source_first;
assign soc_tx_converter_source_last = soc_tx_converter_source_source_last;
assign soc_tx_converter_source_source_ready = soc_tx_converter_source_ready;
assign {soc_tx_converter_source_payload_error, soc_tx_converter_source_payload_last_be, soc_tx_converter_source_payload_data} = soc_tx_converter_source_source_payload_data;
assign soc_tx_converter_source_source_valid = soc_tx_converter_converter_source_valid;
assign soc_tx_converter_converter_source_ready = soc_tx_converter_source_source_ready;
assign soc_tx_converter_source_source_first = soc_tx_converter_converter_source_first;
assign soc_tx_converter_source_source_last = soc_tx_converter_converter_source_last;
assign soc_tx_converter_source_source_payload_data = soc_tx_converter_converter_source_payload_data;
assign soc_tx_converter_converter_first = (soc_tx_converter_converter_mux == 1'd0);
assign soc_tx_converter_converter_last = (soc_tx_converter_converter_mux == 2'd3);
assign soc_tx_converter_converter_source_valid = soc_tx_converter_converter_sink_valid;
assign soc_tx_converter_converter_source_first = (soc_tx_converter_converter_sink_first & soc_tx_converter_converter_first);
assign soc_tx_converter_converter_source_last = (soc_tx_converter_converter_sink_last & soc_tx_converter_converter_last);
assign soc_tx_converter_converter_sink_ready = (soc_tx_converter_converter_last & soc_tx_converter_converter_source_ready);
always @(*) begin
	soc_tx_converter_converter_source_payload_data <= 10'd0;
	case (soc_tx_converter_converter_mux)
		1'd0: begin
			soc_tx_converter_converter_source_payload_data <= soc_tx_converter_converter_sink_payload_data[39:30];
		end
		1'd1: begin
			soc_tx_converter_converter_source_payload_data <= soc_tx_converter_converter_sink_payload_data[29:20];
		end
		2'd2: begin
			soc_tx_converter_converter_source_payload_data <= soc_tx_converter_converter_sink_payload_data[19:10];
		end
		default: begin
			soc_tx_converter_converter_source_payload_data <= soc_tx_converter_converter_sink_payload_data[9:0];
		end
	endcase
end
assign soc_tx_converter_converter_source_payload_valid_token_count = soc_tx_converter_converter_last;
assign soc_rx_converter_converter_sink_valid = soc_rx_converter_sink_valid;
assign soc_rx_converter_converter_sink_first = soc_rx_converter_sink_first;
assign soc_rx_converter_converter_sink_last = soc_rx_converter_sink_last;
assign soc_rx_converter_sink_ready = soc_rx_converter_converter_sink_ready;
assign soc_rx_converter_converter_sink_payload_data = {soc_rx_converter_sink_payload_error, soc_rx_converter_sink_payload_last_be, soc_rx_converter_sink_payload_data};
assign soc_rx_converter_source_valid = soc_rx_converter_source_source_valid;
assign soc_rx_converter_source_first = soc_rx_converter_source_source_first;
assign soc_rx_converter_source_last = soc_rx_converter_source_source_last;
assign soc_rx_converter_source_source_ready = soc_rx_converter_source_ready;
always @(*) begin
	soc_rx_converter_source_payload_data <= 32'd0;
	soc_rx_converter_source_payload_data[7:0] <= soc_rx_converter_source_source_payload_data[7:0];
	soc_rx_converter_source_payload_data[15:8] <= soc_rx_converter_source_source_payload_data[17:10];
	soc_rx_converter_source_payload_data[23:16] <= soc_rx_converter_source_source_payload_data[27:20];
	soc_rx_converter_source_payload_data[31:24] <= soc_rx_converter_source_source_payload_data[37:30];
end
always @(*) begin
	soc_rx_converter_source_payload_last_be <= 4'd0;
	soc_rx_converter_source_payload_last_be[0] <= soc_rx_converter_source_source_payload_data[8];
	soc_rx_converter_source_payload_last_be[1] <= soc_rx_converter_source_source_payload_data[18];
	soc_rx_converter_source_payload_last_be[2] <= soc_rx_converter_source_source_payload_data[28];
	soc_rx_converter_source_payload_last_be[3] <= soc_rx_converter_source_source_payload_data[38];
end
always @(*) begin
	soc_rx_converter_source_payload_error <= 4'd0;
	soc_rx_converter_source_payload_error[0] <= soc_rx_converter_source_source_payload_data[9];
	soc_rx_converter_source_payload_error[1] <= soc_rx_converter_source_source_payload_data[19];
	soc_rx_converter_source_payload_error[2] <= soc_rx_converter_source_source_payload_data[29];
	soc_rx_converter_source_payload_error[3] <= soc_rx_converter_source_source_payload_data[39];
end
assign soc_rx_converter_source_source_valid = soc_rx_converter_converter_source_valid;
assign soc_rx_converter_converter_source_ready = soc_rx_converter_source_source_ready;
assign soc_rx_converter_source_source_first = soc_rx_converter_converter_source_first;
assign soc_rx_converter_source_source_last = soc_rx_converter_converter_source_last;
assign soc_rx_converter_source_source_payload_data = soc_rx_converter_converter_source_payload_data;
assign soc_rx_converter_converter_sink_ready = ((~soc_rx_converter_converter_strobe_all) | soc_rx_converter_converter_source_ready);
assign soc_rx_converter_converter_source_valid = soc_rx_converter_converter_strobe_all;
assign soc_rx_converter_converter_load_part = (soc_rx_converter_converter_sink_valid & soc_rx_converter_converter_sink_ready);
assign soc_tx_cdc_asyncfifo_din = {soc_tx_cdc_fifo_in_last, soc_tx_cdc_fifo_in_first, soc_tx_cdc_fifo_in_payload_error, soc_tx_cdc_fifo_in_payload_last_be, soc_tx_cdc_fifo_in_payload_data};
assign {soc_tx_cdc_fifo_out_last, soc_tx_cdc_fifo_out_first, soc_tx_cdc_fifo_out_payload_error, soc_tx_cdc_fifo_out_payload_last_be, soc_tx_cdc_fifo_out_payload_data} = soc_tx_cdc_asyncfifo_dout;
assign soc_tx_cdc_sink_ready = soc_tx_cdc_asyncfifo_writable;
assign soc_tx_cdc_asyncfifo_we = soc_tx_cdc_sink_valid;
assign soc_tx_cdc_fifo_in_first = soc_tx_cdc_sink_first;
assign soc_tx_cdc_fifo_in_last = soc_tx_cdc_sink_last;
assign soc_tx_cdc_fifo_in_payload_data = soc_tx_cdc_sink_payload_data;
assign soc_tx_cdc_fifo_in_payload_last_be = soc_tx_cdc_sink_payload_last_be;
assign soc_tx_cdc_fifo_in_payload_error = soc_tx_cdc_sink_payload_error;
assign soc_tx_cdc_source_valid = soc_tx_cdc_asyncfifo_readable;
assign soc_tx_cdc_source_first = soc_tx_cdc_fifo_out_first;
assign soc_tx_cdc_source_last = soc_tx_cdc_fifo_out_last;
assign soc_tx_cdc_source_payload_data = soc_tx_cdc_fifo_out_payload_data;
assign soc_tx_cdc_source_payload_last_be = soc_tx_cdc_fifo_out_payload_last_be;
assign soc_tx_cdc_source_payload_error = soc_tx_cdc_fifo_out_payload_error;
assign soc_tx_cdc_asyncfifo_re = soc_tx_cdc_source_ready;
assign soc_tx_cdc_graycounter0_ce = (soc_tx_cdc_asyncfifo_writable & soc_tx_cdc_asyncfifo_we);
assign soc_tx_cdc_graycounter1_ce = (soc_tx_cdc_asyncfifo_readable & soc_tx_cdc_asyncfifo_re);
assign soc_tx_cdc_asyncfifo_writable = (((soc_tx_cdc_graycounter0_q[6] == soc_tx_cdc_consume_wdomain[6]) | (soc_tx_cdc_graycounter0_q[5] == soc_tx_cdc_consume_wdomain[5])) | (soc_tx_cdc_graycounter0_q[4:0] != soc_tx_cdc_consume_wdomain[4:0]));
assign soc_tx_cdc_asyncfifo_readable = (soc_tx_cdc_graycounter1_q != soc_tx_cdc_produce_rdomain);
assign soc_tx_cdc_wrport_adr = soc_tx_cdc_graycounter0_q_binary[5:0];
assign soc_tx_cdc_wrport_dat_w = soc_tx_cdc_asyncfifo_din;
assign soc_tx_cdc_wrport_we = soc_tx_cdc_graycounter0_ce;
assign soc_tx_cdc_rdport_adr = soc_tx_cdc_graycounter1_q_next_binary[5:0];
assign soc_tx_cdc_asyncfifo_dout = soc_tx_cdc_rdport_dat_r;
always @(*) begin
	soc_tx_cdc_graycounter0_q_next_binary <= 7'd0;
	if (soc_tx_cdc_graycounter0_ce) begin
		soc_tx_cdc_graycounter0_q_next_binary <= (soc_tx_cdc_graycounter0_q_binary + 1'd1);
	end else begin
		soc_tx_cdc_graycounter0_q_next_binary <= soc_tx_cdc_graycounter0_q_binary;
	end
end
assign soc_tx_cdc_graycounter0_q_next = (soc_tx_cdc_graycounter0_q_next_binary ^ soc_tx_cdc_graycounter0_q_next_binary[6:1]);
always @(*) begin
	soc_tx_cdc_graycounter1_q_next_binary <= 7'd0;
	if (soc_tx_cdc_graycounter1_ce) begin
		soc_tx_cdc_graycounter1_q_next_binary <= (soc_tx_cdc_graycounter1_q_binary + 1'd1);
	end else begin
		soc_tx_cdc_graycounter1_q_next_binary <= soc_tx_cdc_graycounter1_q_binary;
	end
end
assign soc_tx_cdc_graycounter1_q_next = (soc_tx_cdc_graycounter1_q_next_binary ^ soc_tx_cdc_graycounter1_q_next_binary[6:1]);
assign soc_rx_cdc_asyncfifo_din = {soc_rx_cdc_fifo_in_last, soc_rx_cdc_fifo_in_first, soc_rx_cdc_fifo_in_payload_error, soc_rx_cdc_fifo_in_payload_last_be, soc_rx_cdc_fifo_in_payload_data};
assign {soc_rx_cdc_fifo_out_last, soc_rx_cdc_fifo_out_first, soc_rx_cdc_fifo_out_payload_error, soc_rx_cdc_fifo_out_payload_last_be, soc_rx_cdc_fifo_out_payload_data} = soc_rx_cdc_asyncfifo_dout;
assign soc_rx_cdc_sink_ready = soc_rx_cdc_asyncfifo_writable;
assign soc_rx_cdc_asyncfifo_we = soc_rx_cdc_sink_valid;
assign soc_rx_cdc_fifo_in_first = soc_rx_cdc_sink_first;
assign soc_rx_cdc_fifo_in_last = soc_rx_cdc_sink_last;
assign soc_rx_cdc_fifo_in_payload_data = soc_rx_cdc_sink_payload_data;
assign soc_rx_cdc_fifo_in_payload_last_be = soc_rx_cdc_sink_payload_last_be;
assign soc_rx_cdc_fifo_in_payload_error = soc_rx_cdc_sink_payload_error;
assign soc_rx_cdc_source_valid = soc_rx_cdc_asyncfifo_readable;
assign soc_rx_cdc_source_first = soc_rx_cdc_fifo_out_first;
assign soc_rx_cdc_source_last = soc_rx_cdc_fifo_out_last;
assign soc_rx_cdc_source_payload_data = soc_rx_cdc_fifo_out_payload_data;
assign soc_rx_cdc_source_payload_last_be = soc_rx_cdc_fifo_out_payload_last_be;
assign soc_rx_cdc_source_payload_error = soc_rx_cdc_fifo_out_payload_error;
assign soc_rx_cdc_asyncfifo_re = soc_rx_cdc_source_ready;
assign soc_rx_cdc_graycounter0_ce = (soc_rx_cdc_asyncfifo_writable & soc_rx_cdc_asyncfifo_we);
assign soc_rx_cdc_graycounter1_ce = (soc_rx_cdc_asyncfifo_readable & soc_rx_cdc_asyncfifo_re);
assign soc_rx_cdc_asyncfifo_writable = (((soc_rx_cdc_graycounter0_q[6] == soc_rx_cdc_consume_wdomain[6]) | (soc_rx_cdc_graycounter0_q[5] == soc_rx_cdc_consume_wdomain[5])) | (soc_rx_cdc_graycounter0_q[4:0] != soc_rx_cdc_consume_wdomain[4:0]));
assign soc_rx_cdc_asyncfifo_readable = (soc_rx_cdc_graycounter1_q != soc_rx_cdc_produce_rdomain);
assign soc_rx_cdc_wrport_adr = soc_rx_cdc_graycounter0_q_binary[5:0];
assign soc_rx_cdc_wrport_dat_w = soc_rx_cdc_asyncfifo_din;
assign soc_rx_cdc_wrport_we = soc_rx_cdc_graycounter0_ce;
assign soc_rx_cdc_rdport_adr = soc_rx_cdc_graycounter1_q_next_binary[5:0];
assign soc_rx_cdc_asyncfifo_dout = soc_rx_cdc_rdport_dat_r;
always @(*) begin
	soc_rx_cdc_graycounter0_q_next_binary <= 7'd0;
	if (soc_rx_cdc_graycounter0_ce) begin
		soc_rx_cdc_graycounter0_q_next_binary <= (soc_rx_cdc_graycounter0_q_binary + 1'd1);
	end else begin
		soc_rx_cdc_graycounter0_q_next_binary <= soc_rx_cdc_graycounter0_q_binary;
	end
end
assign soc_rx_cdc_graycounter0_q_next = (soc_rx_cdc_graycounter0_q_next_binary ^ soc_rx_cdc_graycounter0_q_next_binary[6:1]);
always @(*) begin
	soc_rx_cdc_graycounter1_q_next_binary <= 7'd0;
	if (soc_rx_cdc_graycounter1_ce) begin
		soc_rx_cdc_graycounter1_q_next_binary <= (soc_rx_cdc_graycounter1_q_binary + 1'd1);
	end else begin
		soc_rx_cdc_graycounter1_q_next_binary <= soc_rx_cdc_graycounter1_q_binary;
	end
end
assign soc_rx_cdc_graycounter1_q_next = (soc_rx_cdc_graycounter1_q_next_binary ^ soc_rx_cdc_graycounter1_q_next_binary[6:1]);
assign soc_tx_converter_sink_valid = soc_tx_cdc_source_valid;
assign soc_tx_cdc_source_ready = soc_tx_converter_sink_ready;
assign soc_tx_converter_sink_first = soc_tx_cdc_source_first;
assign soc_tx_converter_sink_last = soc_tx_cdc_source_last;
assign soc_tx_converter_sink_payload_data = soc_tx_cdc_source_payload_data;
assign soc_tx_converter_sink_payload_last_be = soc_tx_cdc_source_payload_last_be;
assign soc_tx_converter_sink_payload_error = soc_tx_cdc_source_payload_error;
assign soc_tx_last_be_sink_valid = soc_tx_converter_source_valid;
assign soc_tx_converter_source_ready = soc_tx_last_be_sink_ready;
assign soc_tx_last_be_sink_first = soc_tx_converter_source_first;
assign soc_tx_last_be_sink_last = soc_tx_converter_source_last;
assign soc_tx_last_be_sink_payload_data = soc_tx_converter_source_payload_data;
assign soc_tx_last_be_sink_payload_last_be = soc_tx_converter_source_payload_last_be;
assign soc_tx_last_be_sink_payload_error = soc_tx_converter_source_payload_error;
assign soc_padding_inserter_sink_valid = soc_tx_last_be_source_valid;
assign soc_tx_last_be_source_ready = soc_padding_inserter_sink_ready;
assign soc_padding_inserter_sink_first = soc_tx_last_be_source_first;
assign soc_padding_inserter_sink_last = soc_tx_last_be_source_last;
assign soc_padding_inserter_sink_payload_data = soc_tx_last_be_source_payload_data;
assign soc_padding_inserter_sink_payload_last_be = soc_tx_last_be_source_payload_last_be;
assign soc_padding_inserter_sink_payload_error = soc_tx_last_be_source_payload_error;
assign soc_crc32_inserter_sink_valid = soc_padding_inserter_source_valid;
assign soc_padding_inserter_source_ready = soc_crc32_inserter_sink_ready;
assign soc_crc32_inserter_sink_first = soc_padding_inserter_source_first;
assign soc_crc32_inserter_sink_last = soc_padding_inserter_source_last;
assign soc_crc32_inserter_sink_payload_data = soc_padding_inserter_source_payload_data;
assign soc_crc32_inserter_sink_payload_last_be = soc_padding_inserter_source_payload_last_be;
assign soc_crc32_inserter_sink_payload_error = soc_padding_inserter_source_payload_error;
assign soc_preamble_inserter_sink_valid = soc_crc32_inserter_source_valid;
assign soc_crc32_inserter_source_ready = soc_preamble_inserter_sink_ready;
assign soc_preamble_inserter_sink_first = soc_crc32_inserter_source_first;
assign soc_preamble_inserter_sink_last = soc_crc32_inserter_source_last;
assign soc_preamble_inserter_sink_payload_data = soc_crc32_inserter_source_payload_data;
assign soc_preamble_inserter_sink_payload_last_be = soc_crc32_inserter_source_payload_last_be;
assign soc_preamble_inserter_sink_payload_error = soc_crc32_inserter_source_payload_error;
assign soc_tx_gap_inserter_sink_valid = soc_preamble_inserter_source_valid;
assign soc_preamble_inserter_source_ready = soc_tx_gap_inserter_sink_ready;
assign soc_tx_gap_inserter_sink_first = soc_preamble_inserter_source_first;
assign soc_tx_gap_inserter_sink_last = soc_preamble_inserter_source_last;
assign soc_tx_gap_inserter_sink_payload_data = soc_preamble_inserter_source_payload_data;
assign soc_tx_gap_inserter_sink_payload_last_be = soc_preamble_inserter_source_payload_last_be;
assign soc_tx_gap_inserter_sink_payload_error = soc_preamble_inserter_source_payload_error;
assign soc_liteethphygmiimiitx_sink_sink_valid0 = soc_tx_gap_inserter_source_valid;
assign soc_tx_gap_inserter_source_ready = soc_liteethphygmiimiitx_sink_sink_ready0;
assign soc_liteethphygmiimiitx_sink_sink_first0 = soc_tx_gap_inserter_source_first;
assign soc_liteethphygmiimiitx_sink_sink_last0 = soc_tx_gap_inserter_source_last;
assign soc_liteethphygmiimiitx_sink_sink_payload_data0 = soc_tx_gap_inserter_source_payload_data;
assign soc_liteethphygmiimiitx_sink_sink_payload_last_be0 = soc_tx_gap_inserter_source_payload_last_be;
assign soc_liteethphygmiimiitx_sink_sink_payload_error0 = soc_tx_gap_inserter_source_payload_error;
assign soc_preamble_checker_sink_valid = soc_liteethphygmiimiirx_source_source_valid0;
assign soc_liteethphygmiimiirx_source_source_ready0 = soc_preamble_checker_sink_ready;
assign soc_preamble_checker_sink_first = soc_liteethphygmiimiirx_source_source_first0;
assign soc_preamble_checker_sink_last = soc_liteethphygmiimiirx_source_source_last0;
assign soc_preamble_checker_sink_payload_data = soc_liteethphygmiimiirx_source_source_payload_data0;
assign soc_preamble_checker_sink_payload_last_be = soc_liteethphygmiimiirx_source_source_payload_last_be0;
assign soc_preamble_checker_sink_payload_error = soc_liteethphygmiimiirx_source_source_payload_error0;
assign soc_crc32_checker_sink_sink_valid = soc_preamble_checker_source_valid;
assign soc_preamble_checker_source_ready = soc_crc32_checker_sink_sink_ready;
assign soc_crc32_checker_sink_sink_first = soc_preamble_checker_source_first;
assign soc_crc32_checker_sink_sink_last = soc_preamble_checker_source_last;
assign soc_crc32_checker_sink_sink_payload_data = soc_preamble_checker_source_payload_data;
assign soc_crc32_checker_sink_sink_payload_last_be = soc_preamble_checker_source_payload_last_be;
assign soc_crc32_checker_sink_sink_payload_error = soc_preamble_checker_source_payload_error;
assign soc_padding_checker_sink_valid = soc_crc32_checker_source_source_valid;
assign soc_crc32_checker_source_source_ready = soc_padding_checker_sink_ready;
assign soc_padding_checker_sink_first = soc_crc32_checker_source_source_first;
assign soc_padding_checker_sink_last = soc_crc32_checker_source_source_last;
assign soc_padding_checker_sink_payload_data = soc_crc32_checker_source_source_payload_data;
assign soc_padding_checker_sink_payload_last_be = soc_crc32_checker_source_source_payload_last_be;
assign soc_padding_checker_sink_payload_error = soc_crc32_checker_source_source_payload_error;
assign soc_rx_last_be_sink_valid = soc_padding_checker_source_valid;
assign soc_padding_checker_source_ready = soc_rx_last_be_sink_ready;
assign soc_rx_last_be_sink_first = soc_padding_checker_source_first;
assign soc_rx_last_be_sink_last = soc_padding_checker_source_last;
assign soc_rx_last_be_sink_payload_data = soc_padding_checker_source_payload_data;
assign soc_rx_last_be_sink_payload_last_be = soc_padding_checker_source_payload_last_be;
assign soc_rx_last_be_sink_payload_error = soc_padding_checker_source_payload_error;
assign soc_rx_converter_sink_valid = soc_rx_last_be_source_valid;
assign soc_rx_last_be_source_ready = soc_rx_converter_sink_ready;
assign soc_rx_converter_sink_first = soc_rx_last_be_source_first;
assign soc_rx_converter_sink_last = soc_rx_last_be_source_last;
assign soc_rx_converter_sink_payload_data = soc_rx_last_be_source_payload_data;
assign soc_rx_converter_sink_payload_last_be = soc_rx_last_be_source_payload_last_be;
assign soc_rx_converter_sink_payload_error = soc_rx_last_be_source_payload_error;
assign soc_rx_cdc_sink_valid = soc_rx_converter_source_valid;
assign soc_rx_converter_source_ready = soc_rx_cdc_sink_ready;
assign soc_rx_cdc_sink_first = soc_rx_converter_source_first;
assign soc_rx_cdc_sink_last = soc_rx_converter_source_last;
assign soc_rx_cdc_sink_payload_data = soc_rx_converter_source_payload_data;
assign soc_rx_cdc_sink_payload_last_be = soc_rx_converter_source_payload_last_be;
assign soc_rx_cdc_sink_payload_error = soc_rx_converter_source_payload_error;
assign soc_writer_sink_sink_valid = soc_sink_valid;
assign soc_sink_ready = soc_writer_sink_sink_ready;
assign soc_writer_sink_sink_first = soc_sink_first;
assign soc_writer_sink_sink_last = soc_sink_last;
assign soc_writer_sink_sink_payload_data = soc_sink_payload_data;
assign soc_writer_sink_sink_payload_last_be = soc_sink_payload_last_be;
assign soc_writer_sink_sink_payload_error = soc_sink_payload_error;
assign soc_source_valid = soc_reader_source_source_valid;
assign soc_reader_source_source_ready = soc_source_ready;
assign soc_source_first = soc_reader_source_source_first;
assign soc_source_last = soc_reader_source_source_last;
assign soc_source_payload_data = soc_reader_source_source_payload_data;
assign soc_source_payload_last_be = soc_reader_source_source_payload_last_be;
assign soc_source_payload_error = soc_reader_source_source_payload_error;
always @(*) begin
	soc_writer_inc <= 3'd0;
	case (soc_writer_sink_sink_payload_last_be)
		2'd2: begin
			soc_writer_inc <= 2'd3;
		end
		3'd4: begin
			soc_writer_inc <= 2'd2;
		end
		4'd8: begin
			soc_writer_inc <= 1'd1;
		end
		default: begin
			soc_writer_inc <= 3'd4;
		end
	endcase
end
assign soc_writer_fifo_sink_payload_slot = soc_writer_slot;
assign soc_writer_fifo_sink_payload_length = soc_writer_counter;
assign soc_writer_fifo_source_ready = soc_writer_available_clear;
assign soc_writer_available_trigger = soc_writer_fifo_source_valid;
assign soc_writer_slot_status = soc_writer_fifo_source_payload_slot;
assign soc_writer_length_status = soc_writer_fifo_source_payload_length;
always @(*) begin
	soc_writer_memory0_we <= 1'd0;
	soc_writer_memory0_dat_w <= 32'd0;
	soc_writer_memory1_adr <= 9'd0;
	soc_writer_memory1_we <= 1'd0;
	soc_writer_memory1_dat_w <= 32'd0;
	soc_writer_memory0_adr <= 9'd0;
	case (soc_writer_slot)
		1'd0: begin
			soc_writer_memory0_adr <= soc_writer_counter[31:2];
			soc_writer_memory0_dat_w <= soc_writer_sink_sink_payload_data;
			if ((soc_writer_sink_sink_valid & soc_writer_ongoing)) begin
				soc_writer_memory0_we <= 4'd15;
			end
		end
		1'd1: begin
			soc_writer_memory1_adr <= soc_writer_counter[31:2];
			soc_writer_memory1_dat_w <= soc_writer_sink_sink_payload_data;
			if ((soc_writer_sink_sink_valid & soc_writer_ongoing)) begin
				soc_writer_memory1_we <= 4'd15;
			end
		end
	endcase
end
assign soc_writer_status_w = soc_writer_available_status;
always @(*) begin
	soc_writer_available_clear <= 1'd0;
	if ((soc_writer_pending_re & soc_writer_pending_r)) begin
		soc_writer_available_clear <= 1'd1;
	end
end
assign soc_writer_pending_w = soc_writer_available_pending;
assign soc_writer_irq = (soc_writer_pending_w & soc_writer_storage);
assign soc_writer_available_status = soc_writer_available_trigger;
assign soc_writer_available_pending = soc_writer_available_trigger;
assign soc_writer_fifo_syncfifo_din = {soc_writer_fifo_fifo_in_last, soc_writer_fifo_fifo_in_first, soc_writer_fifo_fifo_in_payload_length, soc_writer_fifo_fifo_in_payload_slot};
assign {soc_writer_fifo_fifo_out_last, soc_writer_fifo_fifo_out_first, soc_writer_fifo_fifo_out_payload_length, soc_writer_fifo_fifo_out_payload_slot} = soc_writer_fifo_syncfifo_dout;
assign soc_writer_fifo_sink_ready = soc_writer_fifo_syncfifo_writable;
assign soc_writer_fifo_syncfifo_we = soc_writer_fifo_sink_valid;
assign soc_writer_fifo_fifo_in_first = soc_writer_fifo_sink_first;
assign soc_writer_fifo_fifo_in_last = soc_writer_fifo_sink_last;
assign soc_writer_fifo_fifo_in_payload_slot = soc_writer_fifo_sink_payload_slot;
assign soc_writer_fifo_fifo_in_payload_length = soc_writer_fifo_sink_payload_length;
assign soc_writer_fifo_source_valid = soc_writer_fifo_syncfifo_readable;
assign soc_writer_fifo_source_first = soc_writer_fifo_fifo_out_first;
assign soc_writer_fifo_source_last = soc_writer_fifo_fifo_out_last;
assign soc_writer_fifo_source_payload_slot = soc_writer_fifo_fifo_out_payload_slot;
assign soc_writer_fifo_source_payload_length = soc_writer_fifo_fifo_out_payload_length;
assign soc_writer_fifo_syncfifo_re = soc_writer_fifo_source_ready;
always @(*) begin
	soc_writer_fifo_wrport_adr <= 1'd0;
	if (soc_writer_fifo_replace) begin
		soc_writer_fifo_wrport_adr <= (soc_writer_fifo_produce - 1'd1);
	end else begin
		soc_writer_fifo_wrport_adr <= soc_writer_fifo_produce;
	end
end
assign soc_writer_fifo_wrport_dat_w = soc_writer_fifo_syncfifo_din;
assign soc_writer_fifo_wrport_we = (soc_writer_fifo_syncfifo_we & (soc_writer_fifo_syncfifo_writable | soc_writer_fifo_replace));
assign soc_writer_fifo_do_read = (soc_writer_fifo_syncfifo_readable & soc_writer_fifo_syncfifo_re);
assign soc_writer_fifo_rdport_adr = soc_writer_fifo_consume;
assign soc_writer_fifo_syncfifo_dout = soc_writer_fifo_rdport_dat_r;
assign soc_writer_fifo_syncfifo_writable = (soc_writer_fifo_level != 2'd2);
assign soc_writer_fifo_syncfifo_readable = (soc_writer_fifo_level != 1'd0);
always @(*) begin
	soc_writer_counter_reset <= 1'd0;
	soc_writer_counter_ce <= 1'd0;
	soc_writer_slot_ce <= 1'd0;
	soc_writer_ongoing <= 1'd0;
	soc_writer_fifo_sink_valid <= 1'd0;
	vns_liteethmacsramwriter_next_state <= 3'd0;
	soc_writer_errors_status_next_value <= 32'd0;
	soc_writer_errors_status_next_value_ce <= 1'd0;
	vns_liteethmacsramwriter_next_state <= vns_liteethmacsramwriter_state;
	case (vns_liteethmacsramwriter_state)
		1'd1: begin
			if (soc_writer_sink_sink_valid) begin
				if ((soc_writer_counter == 11'd1530)) begin
					vns_liteethmacsramwriter_next_state <= 2'd3;
				end else begin
					soc_writer_counter_ce <= 1'd1;
					soc_writer_ongoing <= 1'd1;
				end
				if (soc_writer_sink_sink_last) begin
					if (((soc_writer_sink_sink_payload_error & soc_writer_sink_sink_payload_last_be) != 1'd0)) begin
						vns_liteethmacsramwriter_next_state <= 2'd2;
					end else begin
						vns_liteethmacsramwriter_next_state <= 3'd4;
					end
				end
			end
		end
		2'd2: begin
			soc_writer_counter_reset <= 1'd1;
			vns_liteethmacsramwriter_next_state <= 1'd0;
		end
		2'd3: begin
			if ((soc_writer_sink_sink_valid & soc_writer_sink_sink_last)) begin
				vns_liteethmacsramwriter_next_state <= 3'd4;
			end
		end
		3'd4: begin
			soc_writer_counter_reset <= 1'd1;
			soc_writer_slot_ce <= 1'd1;
			soc_writer_fifo_sink_valid <= 1'd1;
			vns_liteethmacsramwriter_next_state <= 1'd0;
		end
		default: begin
			if (soc_writer_sink_sink_valid) begin
				if (soc_writer_fifo_sink_ready) begin
					soc_writer_ongoing <= 1'd1;
					soc_writer_counter_ce <= 1'd1;
					vns_liteethmacsramwriter_next_state <= 1'd1;
				end else begin
					soc_writer_errors_status_next_value <= (soc_writer_errors_status + 1'd1);
					soc_writer_errors_status_next_value_ce <= 1'd1;
					vns_liteethmacsramwriter_next_state <= 2'd3;
				end
			end
		end
	endcase
end
assign soc_reader_fifo_sink_valid = soc_reader_start_re;
assign soc_reader_fifo_sink_payload_slot = soc_reader_slot_storage;
assign soc_reader_fifo_sink_payload_length = soc_reader_length_storage;
assign soc_reader_ready_status = soc_reader_fifo_sink_ready;
assign soc_reader_level_status = soc_reader_fifo_level;
always @(*) begin
	soc_reader_source_source_payload_last_be <= 4'd0;
	if (soc_reader_last) begin
		case (soc_reader_fifo_source_payload_length[1:0])
			1'd0: begin
				soc_reader_source_source_payload_last_be <= 1'd1;
			end
			1'd1: begin
				soc_reader_source_source_payload_last_be <= 4'd8;
			end
			2'd2: begin
				soc_reader_source_source_payload_last_be <= 3'd4;
			end
			2'd3: begin
				soc_reader_source_source_payload_last_be <= 2'd2;
			end
		endcase
	end
end
assign soc_reader_last = ((soc_reader_counter + 3'd4) >= soc_reader_fifo_source_payload_length);
assign soc_reader_memory0_adr = soc_reader_counter[10:2];
assign soc_reader_memory1_adr = soc_reader_counter[10:2];
always @(*) begin
	soc_reader_source_source_payload_data <= 32'd0;
	case (soc_reader_fifo_source_payload_slot)
		1'd0: begin
			soc_reader_source_source_payload_data <= soc_reader_memory0_dat_r;
		end
		1'd1: begin
			soc_reader_source_source_payload_data <= soc_reader_memory1_dat_r;
		end
	endcase
end
assign soc_reader_eventmanager_status_w = soc_reader_done_status;
always @(*) begin
	soc_reader_done_clear <= 1'd0;
	if ((soc_reader_eventmanager_pending_re & soc_reader_eventmanager_pending_r)) begin
		soc_reader_done_clear <= 1'd1;
	end
end
assign soc_reader_eventmanager_pending_w = soc_reader_done_pending;
assign soc_reader_irq = (soc_reader_eventmanager_pending_w & soc_reader_eventmanager_storage);
assign soc_reader_done_status = 1'd0;
assign soc_reader_fifo_syncfifo_din = {soc_reader_fifo_fifo_in_last, soc_reader_fifo_fifo_in_first, soc_reader_fifo_fifo_in_payload_length, soc_reader_fifo_fifo_in_payload_slot};
assign {soc_reader_fifo_fifo_out_last, soc_reader_fifo_fifo_out_first, soc_reader_fifo_fifo_out_payload_length, soc_reader_fifo_fifo_out_payload_slot} = soc_reader_fifo_syncfifo_dout;
assign soc_reader_fifo_sink_ready = soc_reader_fifo_syncfifo_writable;
assign soc_reader_fifo_syncfifo_we = soc_reader_fifo_sink_valid;
assign soc_reader_fifo_fifo_in_first = soc_reader_fifo_sink_first;
assign soc_reader_fifo_fifo_in_last = soc_reader_fifo_sink_last;
assign soc_reader_fifo_fifo_in_payload_slot = soc_reader_fifo_sink_payload_slot;
assign soc_reader_fifo_fifo_in_payload_length = soc_reader_fifo_sink_payload_length;
assign soc_reader_fifo_source_valid = soc_reader_fifo_syncfifo_readable;
assign soc_reader_fifo_source_first = soc_reader_fifo_fifo_out_first;
assign soc_reader_fifo_source_last = soc_reader_fifo_fifo_out_last;
assign soc_reader_fifo_source_payload_slot = soc_reader_fifo_fifo_out_payload_slot;
assign soc_reader_fifo_source_payload_length = soc_reader_fifo_fifo_out_payload_length;
assign soc_reader_fifo_syncfifo_re = soc_reader_fifo_source_ready;
always @(*) begin
	soc_reader_fifo_wrport_adr <= 1'd0;
	if (soc_reader_fifo_replace) begin
		soc_reader_fifo_wrport_adr <= (soc_reader_fifo_produce - 1'd1);
	end else begin
		soc_reader_fifo_wrport_adr <= soc_reader_fifo_produce;
	end
end
assign soc_reader_fifo_wrport_dat_w = soc_reader_fifo_syncfifo_din;
assign soc_reader_fifo_wrport_we = (soc_reader_fifo_syncfifo_we & (soc_reader_fifo_syncfifo_writable | soc_reader_fifo_replace));
assign soc_reader_fifo_do_read = (soc_reader_fifo_syncfifo_readable & soc_reader_fifo_syncfifo_re);
assign soc_reader_fifo_rdport_adr = soc_reader_fifo_consume;
assign soc_reader_fifo_syncfifo_dout = soc_reader_fifo_rdport_dat_r;
assign soc_reader_fifo_syncfifo_writable = (soc_reader_fifo_level != 2'd2);
assign soc_reader_fifo_syncfifo_readable = (soc_reader_fifo_level != 1'd0);
always @(*) begin
	vns_liteethmacsramreader_next_state <= 2'd0;
	soc_reader_done_trigger <= 1'd0;
	soc_reader_source_source_valid <= 1'd0;
	soc_reader_counter_reset <= 1'd0;
	soc_reader_counter_ce <= 1'd0;
	soc_reader_fifo_source_ready <= 1'd0;
	soc_reader_source_source_last <= 1'd0;
	vns_liteethmacsramreader_next_state <= vns_liteethmacsramreader_state;
	case (vns_liteethmacsramreader_state)
		1'd1: begin
			if ((~soc_reader_last_d)) begin
				vns_liteethmacsramreader_next_state <= 2'd2;
			end else begin
				vns_liteethmacsramreader_next_state <= 2'd3;
			end
		end
		2'd2: begin
			soc_reader_source_source_valid <= 1'd1;
			soc_reader_source_source_last <= soc_reader_last;
			if (soc_reader_source_source_ready) begin
				soc_reader_counter_ce <= (~soc_reader_last);
				vns_liteethmacsramreader_next_state <= 1'd1;
			end
		end
		2'd3: begin
			soc_reader_fifo_source_ready <= 1'd1;
			soc_reader_done_trigger <= 1'd1;
			vns_liteethmacsramreader_next_state <= 1'd0;
		end
		default: begin
			soc_reader_counter_reset <= 1'd1;
			if (soc_reader_fifo_source_valid) begin
				vns_liteethmacsramreader_next_state <= 1'd1;
			end
		end
	endcase
end
assign soc_ev_irq = (soc_writer_irq | soc_reader_irq);
assign soc_sram0_adr0 = soc_sram0_bus_adr0[8:0];
assign soc_sram0_bus_dat_r0 = soc_sram0_dat_r0;
assign soc_sram1_adr0 = soc_sram1_bus_adr0[8:0];
assign soc_sram1_bus_dat_r0 = soc_sram1_dat_r0;
always @(*) begin
	soc_sram0_we <= 4'd0;
	soc_sram0_we[0] <= (((soc_sram0_bus_cyc1 & soc_sram0_bus_stb1) & soc_sram0_bus_we1) & soc_sram0_bus_sel1[0]);
	soc_sram0_we[1] <= (((soc_sram0_bus_cyc1 & soc_sram0_bus_stb1) & soc_sram0_bus_we1) & soc_sram0_bus_sel1[1]);
	soc_sram0_we[2] <= (((soc_sram0_bus_cyc1 & soc_sram0_bus_stb1) & soc_sram0_bus_we1) & soc_sram0_bus_sel1[2]);
	soc_sram0_we[3] <= (((soc_sram0_bus_cyc1 & soc_sram0_bus_stb1) & soc_sram0_bus_we1) & soc_sram0_bus_sel1[3]);
end
assign soc_sram0_adr1 = soc_sram0_bus_adr1[8:0];
assign soc_sram0_bus_dat_r1 = soc_sram0_dat_r1;
assign soc_sram0_dat_w = soc_sram0_bus_dat_w1;
always @(*) begin
	soc_sram1_we <= 4'd0;
	soc_sram1_we[0] <= (((soc_sram1_bus_cyc1 & soc_sram1_bus_stb1) & soc_sram1_bus_we1) & soc_sram1_bus_sel1[0]);
	soc_sram1_we[1] <= (((soc_sram1_bus_cyc1 & soc_sram1_bus_stb1) & soc_sram1_bus_we1) & soc_sram1_bus_sel1[1]);
	soc_sram1_we[2] <= (((soc_sram1_bus_cyc1 & soc_sram1_bus_stb1) & soc_sram1_bus_we1) & soc_sram1_bus_sel1[2]);
	soc_sram1_we[3] <= (((soc_sram1_bus_cyc1 & soc_sram1_bus_stb1) & soc_sram1_bus_we1) & soc_sram1_bus_sel1[3]);
end
assign soc_sram1_adr1 = soc_sram1_bus_adr1[8:0];
assign soc_sram1_bus_dat_r1 = soc_sram1_dat_r1;
assign soc_sram1_dat_w = soc_sram1_bus_dat_w1;
always @(*) begin
	soc_slave_sel <= 4'd0;
	soc_slave_sel[0] <= (soc_bus_adr[10:9] == 1'd0);
	soc_slave_sel[1] <= (soc_bus_adr[10:9] == 1'd1);
	soc_slave_sel[2] <= (soc_bus_adr[10:9] == 2'd2);
	soc_slave_sel[3] <= (soc_bus_adr[10:9] == 2'd3);
end
assign soc_sram0_bus_adr0 = soc_bus_adr;
assign soc_sram0_bus_dat_w0 = soc_bus_dat_w;
assign soc_sram0_bus_sel0 = soc_bus_sel;
assign soc_sram0_bus_stb0 = soc_bus_stb;
assign soc_sram0_bus_we0 = soc_bus_we;
assign soc_sram0_bus_cti0 = soc_bus_cti;
assign soc_sram0_bus_bte0 = soc_bus_bte;
assign soc_sram1_bus_adr0 = soc_bus_adr;
assign soc_sram1_bus_dat_w0 = soc_bus_dat_w;
assign soc_sram1_bus_sel0 = soc_bus_sel;
assign soc_sram1_bus_stb0 = soc_bus_stb;
assign soc_sram1_bus_we0 = soc_bus_we;
assign soc_sram1_bus_cti0 = soc_bus_cti;
assign soc_sram1_bus_bte0 = soc_bus_bte;
assign soc_sram0_bus_adr1 = soc_bus_adr;
assign soc_sram0_bus_dat_w1 = soc_bus_dat_w;
assign soc_sram0_bus_sel1 = soc_bus_sel;
assign soc_sram0_bus_stb1 = soc_bus_stb;
assign soc_sram0_bus_we1 = soc_bus_we;
assign soc_sram0_bus_cti1 = soc_bus_cti;
assign soc_sram0_bus_bte1 = soc_bus_bte;
assign soc_sram1_bus_adr1 = soc_bus_adr;
assign soc_sram1_bus_dat_w1 = soc_bus_dat_w;
assign soc_sram1_bus_sel1 = soc_bus_sel;
assign soc_sram1_bus_stb1 = soc_bus_stb;
assign soc_sram1_bus_we1 = soc_bus_we;
assign soc_sram1_bus_cti1 = soc_bus_cti;
assign soc_sram1_bus_bte1 = soc_bus_bte;
assign soc_sram0_bus_cyc0 = (soc_bus_cyc & soc_slave_sel[0]);
assign soc_sram1_bus_cyc0 = (soc_bus_cyc & soc_slave_sel[1]);
assign soc_sram0_bus_cyc1 = (soc_bus_cyc & soc_slave_sel[2]);
assign soc_sram1_bus_cyc1 = (soc_bus_cyc & soc_slave_sel[3]);
assign soc_bus_ack = (((soc_sram0_bus_ack0 | soc_sram1_bus_ack0) | soc_sram0_bus_ack1) | soc_sram1_bus_ack1);
assign soc_bus_err = (((soc_sram0_bus_err0 | soc_sram1_bus_err0) | soc_sram0_bus_err1) | soc_sram1_bus_err1);
assign soc_bus_dat_r = (((({32{soc_slave_sel_r[0]}} & soc_sram0_bus_dat_r0) | ({32{soc_slave_sel_r[1]}} & soc_sram1_bus_dat_r0)) | ({32{soc_slave_sel_r[2]}} & soc_sram0_bus_dat_r1)) | ({32{soc_slave_sel_r[3]}} & soc_sram1_bus_dat_r1));
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
assign soc_netsoc_mor1kx_ibus_dat_r = vns_netsoc_shared_dat_r;
assign soc_netsoc_mor1kx_dbus_dat_r = vns_netsoc_shared_dat_r;
assign soc_netsoc_mor1kx_ibus_ack = (vns_netsoc_shared_ack & (vns_netsoc_grant == 1'd0));
assign soc_netsoc_mor1kx_dbus_ack = (vns_netsoc_shared_ack & (vns_netsoc_grant == 1'd1));
assign soc_netsoc_mor1kx_ibus_err = (vns_netsoc_shared_err & (vns_netsoc_grant == 1'd0));
assign soc_netsoc_mor1kx_dbus_err = (vns_netsoc_shared_err & (vns_netsoc_grant == 1'd1));
assign vns_netsoc_request = {soc_netsoc_mor1kx_dbus_cyc, soc_netsoc_mor1kx_ibus_cyc};
always @(*) begin
	vns_netsoc_slave_sel <= 6'd0;
	vns_netsoc_slave_sel[0] <= (vns_netsoc_shared_adr[28:26] == 1'd0);
	vns_netsoc_slave_sel[1] <= (vns_netsoc_shared_adr[28:26] == 1'd1);
	vns_netsoc_slave_sel[2] <= (vns_netsoc_shared_adr[28:26] == 3'd6);
	vns_netsoc_slave_sel[3] <= (vns_netsoc_shared_adr[28:26] == 2'd2);
	vns_netsoc_slave_sel[4] <= (vns_netsoc_shared_adr[28:26] == 3'd4);
	vns_netsoc_slave_sel[5] <= (vns_netsoc_shared_adr[28:26] == 2'd3);
end
assign soc_netsoc_rom_bus_adr = vns_netsoc_shared_adr;
assign soc_netsoc_rom_bus_dat_w = vns_netsoc_shared_dat_w;
assign soc_netsoc_rom_bus_sel = vns_netsoc_shared_sel;
assign soc_netsoc_rom_bus_stb = vns_netsoc_shared_stb;
assign soc_netsoc_rom_bus_we = vns_netsoc_shared_we;
assign soc_netsoc_rom_bus_cti = vns_netsoc_shared_cti;
assign soc_netsoc_rom_bus_bte = vns_netsoc_shared_bte;
assign soc_netsoc_sram_bus_adr = vns_netsoc_shared_adr;
assign soc_netsoc_sram_bus_dat_w = vns_netsoc_shared_dat_w;
assign soc_netsoc_sram_bus_sel = vns_netsoc_shared_sel;
assign soc_netsoc_sram_bus_stb = vns_netsoc_shared_stb;
assign soc_netsoc_sram_bus_we = vns_netsoc_shared_we;
assign soc_netsoc_sram_bus_cti = vns_netsoc_shared_cti;
assign soc_netsoc_sram_bus_bte = vns_netsoc_shared_bte;
assign soc_netsoc_bus_wishbone_adr = vns_netsoc_shared_adr;
assign soc_netsoc_bus_wishbone_dat_w = vns_netsoc_shared_dat_w;
assign soc_netsoc_bus_wishbone_sel = vns_netsoc_shared_sel;
assign soc_netsoc_bus_wishbone_stb = vns_netsoc_shared_stb;
assign soc_netsoc_bus_wishbone_we = vns_netsoc_shared_we;
assign soc_netsoc_bus_wishbone_cti = vns_netsoc_shared_cti;
assign soc_netsoc_bus_wishbone_bte = vns_netsoc_shared_bte;
assign soc_spiflash_bus_adr = vns_netsoc_shared_adr;
assign soc_spiflash_bus_dat_w = vns_netsoc_shared_dat_w;
assign soc_spiflash_bus_sel = vns_netsoc_shared_sel;
assign soc_spiflash_bus_stb = vns_netsoc_shared_stb;
assign soc_spiflash_bus_we = vns_netsoc_shared_we;
assign soc_spiflash_bus_cti = vns_netsoc_shared_cti;
assign soc_spiflash_bus_bte = vns_netsoc_shared_bte;
assign soc_netsoc_interface1_wb_sdram_adr = vns_netsoc_shared_adr;
assign soc_netsoc_interface1_wb_sdram_dat_w = vns_netsoc_shared_dat_w;
assign soc_netsoc_interface1_wb_sdram_sel = vns_netsoc_shared_sel;
assign soc_netsoc_interface1_wb_sdram_stb = vns_netsoc_shared_stb;
assign soc_netsoc_interface1_wb_sdram_we = vns_netsoc_shared_we;
assign soc_netsoc_interface1_wb_sdram_cti = vns_netsoc_shared_cti;
assign soc_netsoc_interface1_wb_sdram_bte = vns_netsoc_shared_bte;
assign soc_bus_adr = vns_netsoc_shared_adr;
assign soc_bus_dat_w = vns_netsoc_shared_dat_w;
assign soc_bus_sel = vns_netsoc_shared_sel;
assign soc_bus_stb = vns_netsoc_shared_stb;
assign soc_bus_we = vns_netsoc_shared_we;
assign soc_bus_cti = vns_netsoc_shared_cti;
assign soc_bus_bte = vns_netsoc_shared_bte;
assign soc_netsoc_rom_bus_cyc = (vns_netsoc_shared_cyc & vns_netsoc_slave_sel[0]);
assign soc_netsoc_sram_bus_cyc = (vns_netsoc_shared_cyc & vns_netsoc_slave_sel[1]);
assign soc_netsoc_bus_wishbone_cyc = (vns_netsoc_shared_cyc & vns_netsoc_slave_sel[2]);
assign soc_spiflash_bus_cyc = (vns_netsoc_shared_cyc & vns_netsoc_slave_sel[3]);
assign soc_netsoc_interface1_wb_sdram_cyc = (vns_netsoc_shared_cyc & vns_netsoc_slave_sel[4]);
assign soc_bus_cyc = (vns_netsoc_shared_cyc & vns_netsoc_slave_sel[5]);
assign vns_netsoc_shared_err = (((((soc_netsoc_rom_bus_err | soc_netsoc_sram_bus_err) | soc_netsoc_bus_wishbone_err) | soc_spiflash_bus_err) | soc_netsoc_interface1_wb_sdram_err) | soc_bus_err);
assign vns_netsoc_wait = ((vns_netsoc_shared_stb & vns_netsoc_shared_cyc) & (~vns_netsoc_shared_ack));
always @(*) begin
	vns_netsoc_error <= 1'd0;
	vns_netsoc_shared_ack <= 1'd0;
	vns_netsoc_shared_dat_r <= 32'd0;
	vns_netsoc_shared_ack <= (((((soc_netsoc_rom_bus_ack | soc_netsoc_sram_bus_ack) | soc_netsoc_bus_wishbone_ack) | soc_spiflash_bus_ack) | soc_netsoc_interface1_wb_sdram_ack) | soc_bus_ack);
	vns_netsoc_shared_dat_r <= (((((({32{vns_netsoc_slave_sel_r[0]}} & soc_netsoc_rom_bus_dat_r) | ({32{vns_netsoc_slave_sel_r[1]}} & soc_netsoc_sram_bus_dat_r)) | ({32{vns_netsoc_slave_sel_r[2]}} & soc_netsoc_bus_wishbone_dat_r)) | ({32{vns_netsoc_slave_sel_r[3]}} & soc_spiflash_bus_dat_r)) | ({32{vns_netsoc_slave_sel_r[4]}} & soc_netsoc_interface1_wb_sdram_dat_r)) | ({32{vns_netsoc_slave_sel_r[5]}} & soc_bus_dat_r));
	if (vns_netsoc_done) begin
		vns_netsoc_shared_dat_r <= 32'd4294967295;
		vns_netsoc_shared_ack <= 1'd1;
		vns_netsoc_error <= 1'd1;
	end
end
assign vns_netsoc_done = (vns_netsoc_count == 1'd0);
assign vns_netsoc_csrbank0_sel = (vns_netsoc_interface0_bank_bus_adr[13:9] == 1'd0);
assign soc_netsoc_ctrl_reset_reset_r = vns_netsoc_interface0_bank_bus_dat_w[0];
assign soc_netsoc_ctrl_reset_reset_re = ((vns_netsoc_csrbank0_sel & vns_netsoc_interface0_bank_bus_we) & (vns_netsoc_interface0_bank_bus_adr[3:0] == 1'd0));
assign vns_netsoc_csrbank0_scratch3_r = vns_netsoc_interface0_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank0_scratch3_re = ((vns_netsoc_csrbank0_sel & vns_netsoc_interface0_bank_bus_we) & (vns_netsoc_interface0_bank_bus_adr[3:0] == 1'd1));
assign vns_netsoc_csrbank0_scratch2_r = vns_netsoc_interface0_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank0_scratch2_re = ((vns_netsoc_csrbank0_sel & vns_netsoc_interface0_bank_bus_we) & (vns_netsoc_interface0_bank_bus_adr[3:0] == 2'd2));
assign vns_netsoc_csrbank0_scratch1_r = vns_netsoc_interface0_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank0_scratch1_re = ((vns_netsoc_csrbank0_sel & vns_netsoc_interface0_bank_bus_we) & (vns_netsoc_interface0_bank_bus_adr[3:0] == 2'd3));
assign vns_netsoc_csrbank0_scratch0_r = vns_netsoc_interface0_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank0_scratch0_re = ((vns_netsoc_csrbank0_sel & vns_netsoc_interface0_bank_bus_we) & (vns_netsoc_interface0_bank_bus_adr[3:0] == 3'd4));
assign vns_netsoc_csrbank0_bus_errors3_r = vns_netsoc_interface0_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank0_bus_errors3_re = ((vns_netsoc_csrbank0_sel & vns_netsoc_interface0_bank_bus_we) & (vns_netsoc_interface0_bank_bus_adr[3:0] == 3'd5));
assign vns_netsoc_csrbank0_bus_errors2_r = vns_netsoc_interface0_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank0_bus_errors2_re = ((vns_netsoc_csrbank0_sel & vns_netsoc_interface0_bank_bus_we) & (vns_netsoc_interface0_bank_bus_adr[3:0] == 3'd6));
assign vns_netsoc_csrbank0_bus_errors1_r = vns_netsoc_interface0_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank0_bus_errors1_re = ((vns_netsoc_csrbank0_sel & vns_netsoc_interface0_bank_bus_we) & (vns_netsoc_interface0_bank_bus_adr[3:0] == 3'd7));
assign vns_netsoc_csrbank0_bus_errors0_r = vns_netsoc_interface0_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank0_bus_errors0_re = ((vns_netsoc_csrbank0_sel & vns_netsoc_interface0_bank_bus_we) & (vns_netsoc_interface0_bank_bus_adr[3:0] == 4'd8));
assign soc_netsoc_ctrl_storage = soc_netsoc_ctrl_storage_full[31:0];
assign vns_netsoc_csrbank0_scratch3_w = soc_netsoc_ctrl_storage_full[31:24];
assign vns_netsoc_csrbank0_scratch2_w = soc_netsoc_ctrl_storage_full[23:16];
assign vns_netsoc_csrbank0_scratch1_w = soc_netsoc_ctrl_storage_full[15:8];
assign vns_netsoc_csrbank0_scratch0_w = soc_netsoc_ctrl_storage_full[7:0];
assign vns_netsoc_csrbank0_bus_errors3_w = soc_netsoc_ctrl_bus_errors_status[31:24];
assign vns_netsoc_csrbank0_bus_errors2_w = soc_netsoc_ctrl_bus_errors_status[23:16];
assign vns_netsoc_csrbank0_bus_errors1_w = soc_netsoc_ctrl_bus_errors_status[15:8];
assign vns_netsoc_csrbank0_bus_errors0_w = soc_netsoc_ctrl_bus_errors_status[7:0];
assign vns_netsoc_csrbank1_sel = (vns_netsoc_interface1_bank_bus_adr[13:9] == 4'd14);
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
assign soc_writer_status_r = vns_netsoc_interface1_bank_bus_dat_w[0];
assign soc_writer_status_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 4'd9));
assign soc_writer_pending_r = vns_netsoc_interface1_bank_bus_dat_w[0];
assign soc_writer_pending_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 4'd10));
assign vns_netsoc_csrbank1_sram_writer_ev_enable0_r = vns_netsoc_interface1_bank_bus_dat_w[0];
assign vns_netsoc_csrbank1_sram_writer_ev_enable0_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 4'd11));
assign soc_reader_start_r = vns_netsoc_interface1_bank_bus_dat_w[0];
assign soc_reader_start_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 4'd12));
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
assign soc_reader_eventmanager_status_r = vns_netsoc_interface1_bank_bus_dat_w[0];
assign soc_reader_eventmanager_status_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 5'd18));
assign soc_reader_eventmanager_pending_r = vns_netsoc_interface1_bank_bus_dat_w[0];
assign soc_reader_eventmanager_pending_re = ((vns_netsoc_csrbank1_sel & vns_netsoc_interface1_bank_bus_we) & (vns_netsoc_interface1_bank_bus_adr[4:0] == 5'd19));
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
assign vns_netsoc_csrbank1_sram_writer_slot_w = soc_writer_slot_status;
assign vns_netsoc_csrbank1_sram_writer_length3_w = soc_writer_length_status[31:24];
assign vns_netsoc_csrbank1_sram_writer_length2_w = soc_writer_length_status[23:16];
assign vns_netsoc_csrbank1_sram_writer_length1_w = soc_writer_length_status[15:8];
assign vns_netsoc_csrbank1_sram_writer_length0_w = soc_writer_length_status[7:0];
assign vns_netsoc_csrbank1_sram_writer_errors3_w = soc_writer_errors_status[31:24];
assign vns_netsoc_csrbank1_sram_writer_errors2_w = soc_writer_errors_status[23:16];
assign vns_netsoc_csrbank1_sram_writer_errors1_w = soc_writer_errors_status[15:8];
assign vns_netsoc_csrbank1_sram_writer_errors0_w = soc_writer_errors_status[7:0];
assign soc_writer_storage = soc_writer_storage_full;
assign vns_netsoc_csrbank1_sram_writer_ev_enable0_w = soc_writer_storage_full;
assign vns_netsoc_csrbank1_sram_reader_ready_w = soc_reader_ready_status;
assign vns_netsoc_csrbank1_sram_reader_level_w = soc_reader_level_status[1:0];
assign soc_reader_slot_storage = soc_reader_slot_storage_full;
assign vns_netsoc_csrbank1_sram_reader_slot0_w = soc_reader_slot_storage_full;
assign soc_reader_length_storage = soc_reader_length_storage_full[10:0];
assign vns_netsoc_csrbank1_sram_reader_length1_w = soc_reader_length_storage_full[10:8];
assign vns_netsoc_csrbank1_sram_reader_length0_w = soc_reader_length_storage_full[7:0];
assign soc_reader_eventmanager_storage = soc_reader_eventmanager_storage_full;
assign vns_netsoc_csrbank1_sram_reader_ev_enable0_w = soc_reader_eventmanager_storage_full;
assign vns_netsoc_csrbank1_preamble_crc_w = soc_preamble_crc_status;
assign vns_netsoc_csrbank1_preamble_errors3_w = soc_preamble_errors_status[31:24];
assign vns_netsoc_csrbank1_preamble_errors2_w = soc_preamble_errors_status[23:16];
assign vns_netsoc_csrbank1_preamble_errors1_w = soc_preamble_errors_status[15:8];
assign vns_netsoc_csrbank1_preamble_errors0_w = soc_preamble_errors_status[7:0];
assign vns_netsoc_csrbank1_crc_errors3_w = soc_crc_errors_status[31:24];
assign vns_netsoc_csrbank1_crc_errors2_w = soc_crc_errors_status[23:16];
assign vns_netsoc_csrbank1_crc_errors1_w = soc_crc_errors_status[15:8];
assign vns_netsoc_csrbank1_crc_errors0_w = soc_crc_errors_status[7:0];
assign vns_netsoc_csrbank2_sel = (vns_netsoc_interface2_bank_bus_adr[13:9] == 4'd13);
assign vns_netsoc_csrbank2_mode_detection_mode_r = vns_netsoc_interface2_bank_bus_dat_w[0];
assign vns_netsoc_csrbank2_mode_detection_mode_re = ((vns_netsoc_csrbank2_sel & vns_netsoc_interface2_bank_bus_we) & (vns_netsoc_interface2_bank_bus_adr[1:0] == 1'd0));
assign vns_netsoc_csrbank2_crg_reset0_r = vns_netsoc_interface2_bank_bus_dat_w[0];
assign vns_netsoc_csrbank2_crg_reset0_re = ((vns_netsoc_csrbank2_sel & vns_netsoc_interface2_bank_bus_we) & (vns_netsoc_interface2_bank_bus_adr[1:0] == 1'd1));
assign vns_netsoc_csrbank2_mdio_w0_r = vns_netsoc_interface2_bank_bus_dat_w[2:0];
assign vns_netsoc_csrbank2_mdio_w0_re = ((vns_netsoc_csrbank2_sel & vns_netsoc_interface2_bank_bus_we) & (vns_netsoc_interface2_bank_bus_adr[1:0] == 2'd2));
assign vns_netsoc_csrbank2_mdio_r_r = vns_netsoc_interface2_bank_bus_dat_w[0];
assign vns_netsoc_csrbank2_mdio_r_re = ((vns_netsoc_csrbank2_sel & vns_netsoc_interface2_bank_bus_we) & (vns_netsoc_interface2_bank_bus_adr[1:0] == 2'd3));
assign vns_netsoc_csrbank2_mode_detection_mode_w = soc_mode_status;
assign soc_reset_storage = soc_reset_storage_full;
assign vns_netsoc_csrbank2_crg_reset0_w = soc_reset_storage_full;
assign soc_storage = soc_storage_full[2:0];
assign vns_netsoc_csrbank2_mdio_w0_w = soc_storage_full[2:0];
assign vns_netsoc_csrbank2_mdio_r_w = soc_status;
assign vns_netsoc_sel = (vns_netsoc_sram_bus_adr[13:9] == 3'd4);
always @(*) begin
	vns_netsoc_sram_bus_dat_r <= 8'd0;
	if (vns_netsoc_sel_r) begin
		vns_netsoc_sram_bus_dat_r <= vns_netsoc_dat_r;
	end
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
assign vns_netsoc_csrbank3_dna_id7_w = soc_dna_status[56];
assign vns_netsoc_csrbank3_dna_id6_w = soc_dna_status[55:48];
assign vns_netsoc_csrbank3_dna_id5_w = soc_dna_status[47:40];
assign vns_netsoc_csrbank3_dna_id4_w = soc_dna_status[39:32];
assign vns_netsoc_csrbank3_dna_id3_w = soc_dna_status[31:24];
assign vns_netsoc_csrbank3_dna_id2_w = soc_dna_status[23:16];
assign vns_netsoc_csrbank3_dna_id1_w = soc_dna_status[15:8];
assign vns_netsoc_csrbank3_dna_id0_w = soc_dna_status[7:0];
assign vns_netsoc_csrbank3_git_commit19_w = soc_git_status[159:152];
assign vns_netsoc_csrbank3_git_commit18_w = soc_git_status[151:144];
assign vns_netsoc_csrbank3_git_commit17_w = soc_git_status[143:136];
assign vns_netsoc_csrbank3_git_commit16_w = soc_git_status[135:128];
assign vns_netsoc_csrbank3_git_commit15_w = soc_git_status[127:120];
assign vns_netsoc_csrbank3_git_commit14_w = soc_git_status[119:112];
assign vns_netsoc_csrbank3_git_commit13_w = soc_git_status[111:104];
assign vns_netsoc_csrbank3_git_commit12_w = soc_git_status[103:96];
assign vns_netsoc_csrbank3_git_commit11_w = soc_git_status[95:88];
assign vns_netsoc_csrbank3_git_commit10_w = soc_git_status[87:80];
assign vns_netsoc_csrbank3_git_commit9_w = soc_git_status[79:72];
assign vns_netsoc_csrbank3_git_commit8_w = soc_git_status[71:64];
assign vns_netsoc_csrbank3_git_commit7_w = soc_git_status[63:56];
assign vns_netsoc_csrbank3_git_commit6_w = soc_git_status[55:48];
assign vns_netsoc_csrbank3_git_commit5_w = soc_git_status[47:40];
assign vns_netsoc_csrbank3_git_commit4_w = soc_git_status[39:32];
assign vns_netsoc_csrbank3_git_commit3_w = soc_git_status[31:24];
assign vns_netsoc_csrbank3_git_commit2_w = soc_git_status[23:16];
assign vns_netsoc_csrbank3_git_commit1_w = soc_git_status[15:8];
assign vns_netsoc_csrbank3_git_commit0_w = soc_git_status[7:0];
assign vns_netsoc_csrbank3_platform_platform7_w = soc_platform_status[63:56];
assign vns_netsoc_csrbank3_platform_platform6_w = soc_platform_status[55:48];
assign vns_netsoc_csrbank3_platform_platform5_w = soc_platform_status[47:40];
assign vns_netsoc_csrbank3_platform_platform4_w = soc_platform_status[39:32];
assign vns_netsoc_csrbank3_platform_platform3_w = soc_platform_status[31:24];
assign vns_netsoc_csrbank3_platform_platform2_w = soc_platform_status[23:16];
assign vns_netsoc_csrbank3_platform_platform1_w = soc_platform_status[15:8];
assign vns_netsoc_csrbank3_platform_platform0_w = soc_platform_status[7:0];
assign vns_netsoc_csrbank3_platform_target7_w = soc_target_status[63:56];
assign vns_netsoc_csrbank3_platform_target6_w = soc_target_status[55:48];
assign vns_netsoc_csrbank3_platform_target5_w = soc_target_status[47:40];
assign vns_netsoc_csrbank3_platform_target4_w = soc_target_status[39:32];
assign vns_netsoc_csrbank3_platform_target3_w = soc_target_status[31:24];
assign vns_netsoc_csrbank3_platform_target2_w = soc_target_status[23:16];
assign vns_netsoc_csrbank3_platform_target1_w = soc_target_status[15:8];
assign vns_netsoc_csrbank3_platform_target0_w = soc_target_status[7:0];
assign vns_netsoc_csrbank4_sel = (vns_netsoc_interface4_bank_bus_adr[13:9] == 4'd8);
assign vns_netsoc_csrbank4_dfii_control0_r = vns_netsoc_interface4_bank_bus_dat_w[3:0];
assign vns_netsoc_csrbank4_dfii_control0_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 1'd0));
assign vns_netsoc_csrbank4_dfii_pi0_command0_r = vns_netsoc_interface4_bank_bus_dat_w[5:0];
assign vns_netsoc_csrbank4_dfii_pi0_command0_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 1'd1));
assign soc_netsoc_sdram_phaseinjector0_command_issue_r = vns_netsoc_interface4_bank_bus_dat_w[0];
assign soc_netsoc_sdram_phaseinjector0_command_issue_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 2'd2));
assign vns_netsoc_csrbank4_dfii_pi0_address1_r = vns_netsoc_interface4_bank_bus_dat_w[4:0];
assign vns_netsoc_csrbank4_dfii_pi0_address1_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 2'd3));
assign vns_netsoc_csrbank4_dfii_pi0_address0_r = vns_netsoc_interface4_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank4_dfii_pi0_address0_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 3'd4));
assign vns_netsoc_csrbank4_dfii_pi0_baddress0_r = vns_netsoc_interface4_bank_bus_dat_w[2:0];
assign vns_netsoc_csrbank4_dfii_pi0_baddress0_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 3'd5));
assign vns_netsoc_csrbank4_dfii_pi0_wrdata3_r = vns_netsoc_interface4_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank4_dfii_pi0_wrdata3_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 3'd6));
assign vns_netsoc_csrbank4_dfii_pi0_wrdata2_r = vns_netsoc_interface4_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank4_dfii_pi0_wrdata2_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 3'd7));
assign vns_netsoc_csrbank4_dfii_pi0_wrdata1_r = vns_netsoc_interface4_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank4_dfii_pi0_wrdata1_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 4'd8));
assign vns_netsoc_csrbank4_dfii_pi0_wrdata0_r = vns_netsoc_interface4_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank4_dfii_pi0_wrdata0_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 4'd9));
assign vns_netsoc_csrbank4_dfii_pi0_rddata3_r = vns_netsoc_interface4_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank4_dfii_pi0_rddata3_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 4'd10));
assign vns_netsoc_csrbank4_dfii_pi0_rddata2_r = vns_netsoc_interface4_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank4_dfii_pi0_rddata2_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 4'd11));
assign vns_netsoc_csrbank4_dfii_pi0_rddata1_r = vns_netsoc_interface4_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank4_dfii_pi0_rddata1_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 4'd12));
assign vns_netsoc_csrbank4_dfii_pi0_rddata0_r = vns_netsoc_interface4_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank4_dfii_pi0_rddata0_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 4'd13));
assign vns_netsoc_csrbank4_dfii_pi1_command0_r = vns_netsoc_interface4_bank_bus_dat_w[5:0];
assign vns_netsoc_csrbank4_dfii_pi1_command0_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 4'd14));
assign soc_netsoc_sdram_phaseinjector1_command_issue_r = vns_netsoc_interface4_bank_bus_dat_w[0];
assign soc_netsoc_sdram_phaseinjector1_command_issue_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 4'd15));
assign vns_netsoc_csrbank4_dfii_pi1_address1_r = vns_netsoc_interface4_bank_bus_dat_w[4:0];
assign vns_netsoc_csrbank4_dfii_pi1_address1_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 5'd16));
assign vns_netsoc_csrbank4_dfii_pi1_address0_r = vns_netsoc_interface4_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank4_dfii_pi1_address0_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 5'd17));
assign vns_netsoc_csrbank4_dfii_pi1_baddress0_r = vns_netsoc_interface4_bank_bus_dat_w[2:0];
assign vns_netsoc_csrbank4_dfii_pi1_baddress0_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 5'd18));
assign vns_netsoc_csrbank4_dfii_pi1_wrdata3_r = vns_netsoc_interface4_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank4_dfii_pi1_wrdata3_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 5'd19));
assign vns_netsoc_csrbank4_dfii_pi1_wrdata2_r = vns_netsoc_interface4_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank4_dfii_pi1_wrdata2_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 5'd20));
assign vns_netsoc_csrbank4_dfii_pi1_wrdata1_r = vns_netsoc_interface4_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank4_dfii_pi1_wrdata1_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 5'd21));
assign vns_netsoc_csrbank4_dfii_pi1_wrdata0_r = vns_netsoc_interface4_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank4_dfii_pi1_wrdata0_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 5'd22));
assign vns_netsoc_csrbank4_dfii_pi1_rddata3_r = vns_netsoc_interface4_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank4_dfii_pi1_rddata3_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 5'd23));
assign vns_netsoc_csrbank4_dfii_pi1_rddata2_r = vns_netsoc_interface4_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank4_dfii_pi1_rddata2_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 5'd24));
assign vns_netsoc_csrbank4_dfii_pi1_rddata1_r = vns_netsoc_interface4_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank4_dfii_pi1_rddata1_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 5'd25));
assign vns_netsoc_csrbank4_dfii_pi1_rddata0_r = vns_netsoc_interface4_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank4_dfii_pi1_rddata0_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 5'd26));
assign soc_netsoc_sdram_bandwidth_update_r = vns_netsoc_interface4_bank_bus_dat_w[0];
assign soc_netsoc_sdram_bandwidth_update_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 5'd27));
assign vns_netsoc_csrbank4_controller_bandwidth_nreads2_r = vns_netsoc_interface4_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank4_controller_bandwidth_nreads2_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 5'd28));
assign vns_netsoc_csrbank4_controller_bandwidth_nreads1_r = vns_netsoc_interface4_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank4_controller_bandwidth_nreads1_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 5'd29));
assign vns_netsoc_csrbank4_controller_bandwidth_nreads0_r = vns_netsoc_interface4_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank4_controller_bandwidth_nreads0_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 5'd30));
assign vns_netsoc_csrbank4_controller_bandwidth_nwrites2_r = vns_netsoc_interface4_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank4_controller_bandwidth_nwrites2_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 5'd31));
assign vns_netsoc_csrbank4_controller_bandwidth_nwrites1_r = vns_netsoc_interface4_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank4_controller_bandwidth_nwrites1_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 6'd32));
assign vns_netsoc_csrbank4_controller_bandwidth_nwrites0_r = vns_netsoc_interface4_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank4_controller_bandwidth_nwrites0_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 6'd33));
assign vns_netsoc_csrbank4_controller_bandwidth_data_width_r = vns_netsoc_interface4_bank_bus_dat_w[6:0];
assign vns_netsoc_csrbank4_controller_bandwidth_data_width_re = ((vns_netsoc_csrbank4_sel & vns_netsoc_interface4_bank_bus_we) & (vns_netsoc_interface4_bank_bus_adr[5:0] == 6'd34));
assign soc_netsoc_sdram_storage = soc_netsoc_sdram_storage_full[3:0];
assign vns_netsoc_csrbank4_dfii_control0_w = soc_netsoc_sdram_storage_full[3:0];
assign soc_netsoc_sdram_phaseinjector0_command_storage = soc_netsoc_sdram_phaseinjector0_command_storage_full[5:0];
assign vns_netsoc_csrbank4_dfii_pi0_command0_w = soc_netsoc_sdram_phaseinjector0_command_storage_full[5:0];
assign soc_netsoc_sdram_phaseinjector0_address_storage = soc_netsoc_sdram_phaseinjector0_address_storage_full[12:0];
assign vns_netsoc_csrbank4_dfii_pi0_address1_w = soc_netsoc_sdram_phaseinjector0_address_storage_full[12:8];
assign vns_netsoc_csrbank4_dfii_pi0_address0_w = soc_netsoc_sdram_phaseinjector0_address_storage_full[7:0];
assign soc_netsoc_sdram_phaseinjector0_baddress_storage = soc_netsoc_sdram_phaseinjector0_baddress_storage_full[2:0];
assign vns_netsoc_csrbank4_dfii_pi0_baddress0_w = soc_netsoc_sdram_phaseinjector0_baddress_storage_full[2:0];
assign soc_netsoc_sdram_phaseinjector0_wrdata_storage = soc_netsoc_sdram_phaseinjector0_wrdata_storage_full[31:0];
assign vns_netsoc_csrbank4_dfii_pi0_wrdata3_w = soc_netsoc_sdram_phaseinjector0_wrdata_storage_full[31:24];
assign vns_netsoc_csrbank4_dfii_pi0_wrdata2_w = soc_netsoc_sdram_phaseinjector0_wrdata_storage_full[23:16];
assign vns_netsoc_csrbank4_dfii_pi0_wrdata1_w = soc_netsoc_sdram_phaseinjector0_wrdata_storage_full[15:8];
assign vns_netsoc_csrbank4_dfii_pi0_wrdata0_w = soc_netsoc_sdram_phaseinjector0_wrdata_storage_full[7:0];
assign vns_netsoc_csrbank4_dfii_pi0_rddata3_w = soc_netsoc_sdram_phaseinjector0_status[31:24];
assign vns_netsoc_csrbank4_dfii_pi0_rddata2_w = soc_netsoc_sdram_phaseinjector0_status[23:16];
assign vns_netsoc_csrbank4_dfii_pi0_rddata1_w = soc_netsoc_sdram_phaseinjector0_status[15:8];
assign vns_netsoc_csrbank4_dfii_pi0_rddata0_w = soc_netsoc_sdram_phaseinjector0_status[7:0];
assign soc_netsoc_sdram_phaseinjector1_command_storage = soc_netsoc_sdram_phaseinjector1_command_storage_full[5:0];
assign vns_netsoc_csrbank4_dfii_pi1_command0_w = soc_netsoc_sdram_phaseinjector1_command_storage_full[5:0];
assign soc_netsoc_sdram_phaseinjector1_address_storage = soc_netsoc_sdram_phaseinjector1_address_storage_full[12:0];
assign vns_netsoc_csrbank4_dfii_pi1_address1_w = soc_netsoc_sdram_phaseinjector1_address_storage_full[12:8];
assign vns_netsoc_csrbank4_dfii_pi1_address0_w = soc_netsoc_sdram_phaseinjector1_address_storage_full[7:0];
assign soc_netsoc_sdram_phaseinjector1_baddress_storage = soc_netsoc_sdram_phaseinjector1_baddress_storage_full[2:0];
assign vns_netsoc_csrbank4_dfii_pi1_baddress0_w = soc_netsoc_sdram_phaseinjector1_baddress_storage_full[2:0];
assign soc_netsoc_sdram_phaseinjector1_wrdata_storage = soc_netsoc_sdram_phaseinjector1_wrdata_storage_full[31:0];
assign vns_netsoc_csrbank4_dfii_pi1_wrdata3_w = soc_netsoc_sdram_phaseinjector1_wrdata_storage_full[31:24];
assign vns_netsoc_csrbank4_dfii_pi1_wrdata2_w = soc_netsoc_sdram_phaseinjector1_wrdata_storage_full[23:16];
assign vns_netsoc_csrbank4_dfii_pi1_wrdata1_w = soc_netsoc_sdram_phaseinjector1_wrdata_storage_full[15:8];
assign vns_netsoc_csrbank4_dfii_pi1_wrdata0_w = soc_netsoc_sdram_phaseinjector1_wrdata_storage_full[7:0];
assign vns_netsoc_csrbank4_dfii_pi1_rddata3_w = soc_netsoc_sdram_phaseinjector1_status[31:24];
assign vns_netsoc_csrbank4_dfii_pi1_rddata2_w = soc_netsoc_sdram_phaseinjector1_status[23:16];
assign vns_netsoc_csrbank4_dfii_pi1_rddata1_w = soc_netsoc_sdram_phaseinjector1_status[15:8];
assign vns_netsoc_csrbank4_dfii_pi1_rddata0_w = soc_netsoc_sdram_phaseinjector1_status[7:0];
assign vns_netsoc_csrbank4_controller_bandwidth_nreads2_w = soc_netsoc_sdram_bandwidth_nreads_status[23:16];
assign vns_netsoc_csrbank4_controller_bandwidth_nreads1_w = soc_netsoc_sdram_bandwidth_nreads_status[15:8];
assign vns_netsoc_csrbank4_controller_bandwidth_nreads0_w = soc_netsoc_sdram_bandwidth_nreads_status[7:0];
assign vns_netsoc_csrbank4_controller_bandwidth_nwrites2_w = soc_netsoc_sdram_bandwidth_nwrites_status[23:16];
assign vns_netsoc_csrbank4_controller_bandwidth_nwrites1_w = soc_netsoc_sdram_bandwidth_nwrites_status[15:8];
assign vns_netsoc_csrbank4_controller_bandwidth_nwrites0_w = soc_netsoc_sdram_bandwidth_nwrites_status[7:0];
assign vns_netsoc_csrbank4_controller_bandwidth_data_width_w = soc_netsoc_sdram_bandwidth_data_width_status[6:0];
assign vns_netsoc_csrbank5_sel = (vns_netsoc_interface5_bank_bus_adr[13:9] == 4'd10);
assign vns_netsoc_csrbank5_bitbang0_r = vns_netsoc_interface5_bank_bus_dat_w[3:0];
assign vns_netsoc_csrbank5_bitbang0_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[1:0] == 1'd0));
assign vns_netsoc_csrbank5_miso_r = vns_netsoc_interface5_bank_bus_dat_w[0];
assign vns_netsoc_csrbank5_miso_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[1:0] == 1'd1));
assign vns_netsoc_csrbank5_bitbang_en0_r = vns_netsoc_interface5_bank_bus_dat_w[0];
assign vns_netsoc_csrbank5_bitbang_en0_re = ((vns_netsoc_csrbank5_sel & vns_netsoc_interface5_bank_bus_we) & (vns_netsoc_interface5_bank_bus_adr[1:0] == 2'd2));
assign soc_spiflash_bitbang_storage = soc_spiflash_bitbang_storage_full[3:0];
assign vns_netsoc_csrbank5_bitbang0_w = soc_spiflash_bitbang_storage_full[3:0];
assign vns_netsoc_csrbank5_miso_w = soc_spiflash_status;
assign soc_spiflash_bitbang_en_storage = soc_spiflash_bitbang_en_storage_full;
assign vns_netsoc_csrbank5_bitbang_en0_w = soc_spiflash_bitbang_en_storage_full;
assign vns_netsoc_csrbank6_sel = (vns_netsoc_interface6_bank_bus_adr[13:9] == 3'd5);
assign vns_netsoc_csrbank6_load3_r = vns_netsoc_interface6_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank6_load3_re = ((vns_netsoc_csrbank6_sel & vns_netsoc_interface6_bank_bus_we) & (vns_netsoc_interface6_bank_bus_adr[4:0] == 1'd0));
assign vns_netsoc_csrbank6_load2_r = vns_netsoc_interface6_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank6_load2_re = ((vns_netsoc_csrbank6_sel & vns_netsoc_interface6_bank_bus_we) & (vns_netsoc_interface6_bank_bus_adr[4:0] == 1'd1));
assign vns_netsoc_csrbank6_load1_r = vns_netsoc_interface6_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank6_load1_re = ((vns_netsoc_csrbank6_sel & vns_netsoc_interface6_bank_bus_we) & (vns_netsoc_interface6_bank_bus_adr[4:0] == 2'd2));
assign vns_netsoc_csrbank6_load0_r = vns_netsoc_interface6_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank6_load0_re = ((vns_netsoc_csrbank6_sel & vns_netsoc_interface6_bank_bus_we) & (vns_netsoc_interface6_bank_bus_adr[4:0] == 2'd3));
assign vns_netsoc_csrbank6_reload3_r = vns_netsoc_interface6_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank6_reload3_re = ((vns_netsoc_csrbank6_sel & vns_netsoc_interface6_bank_bus_we) & (vns_netsoc_interface6_bank_bus_adr[4:0] == 3'd4));
assign vns_netsoc_csrbank6_reload2_r = vns_netsoc_interface6_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank6_reload2_re = ((vns_netsoc_csrbank6_sel & vns_netsoc_interface6_bank_bus_we) & (vns_netsoc_interface6_bank_bus_adr[4:0] == 3'd5));
assign vns_netsoc_csrbank6_reload1_r = vns_netsoc_interface6_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank6_reload1_re = ((vns_netsoc_csrbank6_sel & vns_netsoc_interface6_bank_bus_we) & (vns_netsoc_interface6_bank_bus_adr[4:0] == 3'd6));
assign vns_netsoc_csrbank6_reload0_r = vns_netsoc_interface6_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank6_reload0_re = ((vns_netsoc_csrbank6_sel & vns_netsoc_interface6_bank_bus_we) & (vns_netsoc_interface6_bank_bus_adr[4:0] == 3'd7));
assign vns_netsoc_csrbank6_en0_r = vns_netsoc_interface6_bank_bus_dat_w[0];
assign vns_netsoc_csrbank6_en0_re = ((vns_netsoc_csrbank6_sel & vns_netsoc_interface6_bank_bus_we) & (vns_netsoc_interface6_bank_bus_adr[4:0] == 4'd8));
assign soc_netsoc_timer0_update_value_r = vns_netsoc_interface6_bank_bus_dat_w[0];
assign soc_netsoc_timer0_update_value_re = ((vns_netsoc_csrbank6_sel & vns_netsoc_interface6_bank_bus_we) & (vns_netsoc_interface6_bank_bus_adr[4:0] == 4'd9));
assign vns_netsoc_csrbank6_value3_r = vns_netsoc_interface6_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank6_value3_re = ((vns_netsoc_csrbank6_sel & vns_netsoc_interface6_bank_bus_we) & (vns_netsoc_interface6_bank_bus_adr[4:0] == 4'd10));
assign vns_netsoc_csrbank6_value2_r = vns_netsoc_interface6_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank6_value2_re = ((vns_netsoc_csrbank6_sel & vns_netsoc_interface6_bank_bus_we) & (vns_netsoc_interface6_bank_bus_adr[4:0] == 4'd11));
assign vns_netsoc_csrbank6_value1_r = vns_netsoc_interface6_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank6_value1_re = ((vns_netsoc_csrbank6_sel & vns_netsoc_interface6_bank_bus_we) & (vns_netsoc_interface6_bank_bus_adr[4:0] == 4'd12));
assign vns_netsoc_csrbank6_value0_r = vns_netsoc_interface6_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank6_value0_re = ((vns_netsoc_csrbank6_sel & vns_netsoc_interface6_bank_bus_we) & (vns_netsoc_interface6_bank_bus_adr[4:0] == 4'd13));
assign soc_netsoc_timer0_eventmanager_status_r = vns_netsoc_interface6_bank_bus_dat_w[0];
assign soc_netsoc_timer0_eventmanager_status_re = ((vns_netsoc_csrbank6_sel & vns_netsoc_interface6_bank_bus_we) & (vns_netsoc_interface6_bank_bus_adr[4:0] == 4'd14));
assign soc_netsoc_timer0_eventmanager_pending_r = vns_netsoc_interface6_bank_bus_dat_w[0];
assign soc_netsoc_timer0_eventmanager_pending_re = ((vns_netsoc_csrbank6_sel & vns_netsoc_interface6_bank_bus_we) & (vns_netsoc_interface6_bank_bus_adr[4:0] == 4'd15));
assign vns_netsoc_csrbank6_ev_enable0_r = vns_netsoc_interface6_bank_bus_dat_w[0];
assign vns_netsoc_csrbank6_ev_enable0_re = ((vns_netsoc_csrbank6_sel & vns_netsoc_interface6_bank_bus_we) & (vns_netsoc_interface6_bank_bus_adr[4:0] == 5'd16));
assign soc_netsoc_timer0_load_storage = soc_netsoc_timer0_load_storage_full[31:0];
assign vns_netsoc_csrbank6_load3_w = soc_netsoc_timer0_load_storage_full[31:24];
assign vns_netsoc_csrbank6_load2_w = soc_netsoc_timer0_load_storage_full[23:16];
assign vns_netsoc_csrbank6_load1_w = soc_netsoc_timer0_load_storage_full[15:8];
assign vns_netsoc_csrbank6_load0_w = soc_netsoc_timer0_load_storage_full[7:0];
assign soc_netsoc_timer0_reload_storage = soc_netsoc_timer0_reload_storage_full[31:0];
assign vns_netsoc_csrbank6_reload3_w = soc_netsoc_timer0_reload_storage_full[31:24];
assign vns_netsoc_csrbank6_reload2_w = soc_netsoc_timer0_reload_storage_full[23:16];
assign vns_netsoc_csrbank6_reload1_w = soc_netsoc_timer0_reload_storage_full[15:8];
assign vns_netsoc_csrbank6_reload0_w = soc_netsoc_timer0_reload_storage_full[7:0];
assign soc_netsoc_timer0_en_storage = soc_netsoc_timer0_en_storage_full;
assign vns_netsoc_csrbank6_en0_w = soc_netsoc_timer0_en_storage_full;
assign vns_netsoc_csrbank6_value3_w = soc_netsoc_timer0_value_status[31:24];
assign vns_netsoc_csrbank6_value2_w = soc_netsoc_timer0_value_status[23:16];
assign vns_netsoc_csrbank6_value1_w = soc_netsoc_timer0_value_status[15:8];
assign vns_netsoc_csrbank6_value0_w = soc_netsoc_timer0_value_status[7:0];
assign soc_netsoc_timer0_eventmanager_storage = soc_netsoc_timer0_eventmanager_storage_full;
assign vns_netsoc_csrbank6_ev_enable0_w = soc_netsoc_timer0_eventmanager_storage_full;
assign vns_netsoc_csrbank7_sel = (vns_netsoc_interface7_bank_bus_adr[13:9] == 2'd3);
assign soc_netsoc_uart_rxtx_r = vns_netsoc_interface7_bank_bus_dat_w[7:0];
assign soc_netsoc_uart_rxtx_re = ((vns_netsoc_csrbank7_sel & vns_netsoc_interface7_bank_bus_we) & (vns_netsoc_interface7_bank_bus_adr[2:0] == 1'd0));
assign vns_netsoc_csrbank7_txfull_r = vns_netsoc_interface7_bank_bus_dat_w[0];
assign vns_netsoc_csrbank7_txfull_re = ((vns_netsoc_csrbank7_sel & vns_netsoc_interface7_bank_bus_we) & (vns_netsoc_interface7_bank_bus_adr[2:0] == 1'd1));
assign vns_netsoc_csrbank7_rxempty_r = vns_netsoc_interface7_bank_bus_dat_w[0];
assign vns_netsoc_csrbank7_rxempty_re = ((vns_netsoc_csrbank7_sel & vns_netsoc_interface7_bank_bus_we) & (vns_netsoc_interface7_bank_bus_adr[2:0] == 2'd2));
assign soc_netsoc_uart_eventmanager_status_r = vns_netsoc_interface7_bank_bus_dat_w[1:0];
assign soc_netsoc_uart_eventmanager_status_re = ((vns_netsoc_csrbank7_sel & vns_netsoc_interface7_bank_bus_we) & (vns_netsoc_interface7_bank_bus_adr[2:0] == 2'd3));
assign soc_netsoc_uart_eventmanager_pending_r = vns_netsoc_interface7_bank_bus_dat_w[1:0];
assign soc_netsoc_uart_eventmanager_pending_re = ((vns_netsoc_csrbank7_sel & vns_netsoc_interface7_bank_bus_we) & (vns_netsoc_interface7_bank_bus_adr[2:0] == 3'd4));
assign vns_netsoc_csrbank7_ev_enable0_r = vns_netsoc_interface7_bank_bus_dat_w[1:0];
assign vns_netsoc_csrbank7_ev_enable0_re = ((vns_netsoc_csrbank7_sel & vns_netsoc_interface7_bank_bus_we) & (vns_netsoc_interface7_bank_bus_adr[2:0] == 3'd5));
assign vns_netsoc_csrbank7_txfull_w = soc_netsoc_uart_txfull_status;
assign vns_netsoc_csrbank7_rxempty_w = soc_netsoc_uart_rxempty_status;
assign soc_netsoc_uart_eventmanager_storage = soc_netsoc_uart_eventmanager_storage_full[1:0];
assign vns_netsoc_csrbank7_ev_enable0_w = soc_netsoc_uart_eventmanager_storage_full[1:0];
assign vns_netsoc_csrbank8_sel = (vns_netsoc_interface8_bank_bus_adr[13:9] == 2'd2);
assign vns_netsoc_csrbank8_tuning_word3_r = vns_netsoc_interface8_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank8_tuning_word3_re = ((vns_netsoc_csrbank8_sel & vns_netsoc_interface8_bank_bus_we) & (vns_netsoc_interface8_bank_bus_adr[1:0] == 1'd0));
assign vns_netsoc_csrbank8_tuning_word2_r = vns_netsoc_interface8_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank8_tuning_word2_re = ((vns_netsoc_csrbank8_sel & vns_netsoc_interface8_bank_bus_we) & (vns_netsoc_interface8_bank_bus_adr[1:0] == 1'd1));
assign vns_netsoc_csrbank8_tuning_word1_r = vns_netsoc_interface8_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank8_tuning_word1_re = ((vns_netsoc_csrbank8_sel & vns_netsoc_interface8_bank_bus_we) & (vns_netsoc_interface8_bank_bus_adr[1:0] == 2'd2));
assign vns_netsoc_csrbank8_tuning_word0_r = vns_netsoc_interface8_bank_bus_dat_w[7:0];
assign vns_netsoc_csrbank8_tuning_word0_re = ((vns_netsoc_csrbank8_sel & vns_netsoc_interface8_bank_bus_we) & (vns_netsoc_interface8_bank_bus_adr[1:0] == 2'd3));
assign soc_netsoc_uart_phy_storage = soc_netsoc_uart_phy_storage_full[31:0];
assign vns_netsoc_csrbank8_tuning_word3_w = soc_netsoc_uart_phy_storage_full[31:24];
assign vns_netsoc_csrbank8_tuning_word2_w = soc_netsoc_uart_phy_storage_full[23:16];
assign vns_netsoc_csrbank8_tuning_word1_w = soc_netsoc_uart_phy_storage_full[15:8];
assign vns_netsoc_csrbank8_tuning_word0_w = soc_netsoc_uart_phy_storage_full[7:0];
assign vns_netsoc_interface0_bank_bus_adr = soc_netsoc_interface_adr;
assign vns_netsoc_interface1_bank_bus_adr = soc_netsoc_interface_adr;
assign vns_netsoc_interface2_bank_bus_adr = soc_netsoc_interface_adr;
assign vns_netsoc_interface3_bank_bus_adr = soc_netsoc_interface_adr;
assign vns_netsoc_interface4_bank_bus_adr = soc_netsoc_interface_adr;
assign vns_netsoc_interface5_bank_bus_adr = soc_netsoc_interface_adr;
assign vns_netsoc_interface6_bank_bus_adr = soc_netsoc_interface_adr;
assign vns_netsoc_interface7_bank_bus_adr = soc_netsoc_interface_adr;
assign vns_netsoc_interface8_bank_bus_adr = soc_netsoc_interface_adr;
assign vns_netsoc_sram_bus_adr = soc_netsoc_interface_adr;
assign vns_netsoc_interface0_bank_bus_we = soc_netsoc_interface_we;
assign vns_netsoc_interface1_bank_bus_we = soc_netsoc_interface_we;
assign vns_netsoc_interface2_bank_bus_we = soc_netsoc_interface_we;
assign vns_netsoc_interface3_bank_bus_we = soc_netsoc_interface_we;
assign vns_netsoc_interface4_bank_bus_we = soc_netsoc_interface_we;
assign vns_netsoc_interface5_bank_bus_we = soc_netsoc_interface_we;
assign vns_netsoc_interface6_bank_bus_we = soc_netsoc_interface_we;
assign vns_netsoc_interface7_bank_bus_we = soc_netsoc_interface_we;
assign vns_netsoc_interface8_bank_bus_we = soc_netsoc_interface_we;
assign vns_netsoc_sram_bus_we = soc_netsoc_interface_we;
assign vns_netsoc_interface0_bank_bus_dat_w = soc_netsoc_interface_dat_w;
assign vns_netsoc_interface1_bank_bus_dat_w = soc_netsoc_interface_dat_w;
assign vns_netsoc_interface2_bank_bus_dat_w = soc_netsoc_interface_dat_w;
assign vns_netsoc_interface3_bank_bus_dat_w = soc_netsoc_interface_dat_w;
assign vns_netsoc_interface4_bank_bus_dat_w = soc_netsoc_interface_dat_w;
assign vns_netsoc_interface5_bank_bus_dat_w = soc_netsoc_interface_dat_w;
assign vns_netsoc_interface6_bank_bus_dat_w = soc_netsoc_interface_dat_w;
assign vns_netsoc_interface7_bank_bus_dat_w = soc_netsoc_interface_dat_w;
assign vns_netsoc_interface8_bank_bus_dat_w = soc_netsoc_interface_dat_w;
assign vns_netsoc_sram_bus_dat_w = soc_netsoc_interface_dat_w;
assign soc_netsoc_interface_dat_r = (((((((((vns_netsoc_interface0_bank_bus_dat_r | vns_netsoc_interface1_bank_bus_dat_r) | vns_netsoc_interface2_bank_bus_dat_r) | vns_netsoc_interface3_bank_bus_dat_r) | vns_netsoc_interface4_bank_bus_dat_r) | vns_netsoc_interface5_bank_bus_dat_r) | vns_netsoc_interface6_bank_bus_dat_r) | vns_netsoc_interface7_bank_bus_dat_r) | vns_netsoc_interface8_bank_bus_dat_r) | vns_netsoc_sram_bus_dat_r);
assign vns_slice_proxy0 = soc_ddrphy_record2_wrdata[31:16];
assign vns_slice_proxy1 = soc_ddrphy_record2_wrdata[15:0];
assign vns_slice_proxy2 = soc_ddrphy_record3_wrdata[31:16];
assign vns_slice_proxy3 = soc_ddrphy_record3_wrdata[15:0];
assign vns_slice_proxy4 = soc_ddrphy_record2_wrdata[31:16];
assign vns_slice_proxy5 = soc_ddrphy_record2_wrdata[15:0];
assign vns_slice_proxy6 = soc_ddrphy_record3_wrdata[31:16];
assign vns_slice_proxy7 = soc_ddrphy_record3_wrdata[15:0];
assign vns_slice_proxy8 = soc_ddrphy_record2_wrdata[31:16];
assign vns_slice_proxy9 = soc_ddrphy_record2_wrdata[15:0];
assign vns_slice_proxy10 = soc_ddrphy_record3_wrdata[31:16];
assign vns_slice_proxy11 = soc_ddrphy_record3_wrdata[15:0];
assign vns_slice_proxy12 = soc_ddrphy_record2_wrdata[31:16];
assign vns_slice_proxy13 = soc_ddrphy_record2_wrdata[15:0];
assign vns_slice_proxy14 = soc_ddrphy_record3_wrdata[31:16];
assign vns_slice_proxy15 = soc_ddrphy_record3_wrdata[15:0];
assign vns_slice_proxy16 = soc_ddrphy_record2_wrdata[31:16];
assign vns_slice_proxy17 = soc_ddrphy_record2_wrdata[15:0];
assign vns_slice_proxy18 = soc_ddrphy_record3_wrdata[31:16];
assign vns_slice_proxy19 = soc_ddrphy_record3_wrdata[15:0];
assign vns_slice_proxy20 = soc_ddrphy_record2_wrdata[31:16];
assign vns_slice_proxy21 = soc_ddrphy_record2_wrdata[15:0];
assign vns_slice_proxy22 = soc_ddrphy_record3_wrdata[31:16];
assign vns_slice_proxy23 = soc_ddrphy_record3_wrdata[15:0];
assign vns_slice_proxy24 = soc_ddrphy_record2_wrdata[31:16];
assign vns_slice_proxy25 = soc_ddrphy_record2_wrdata[15:0];
assign vns_slice_proxy26 = soc_ddrphy_record3_wrdata[31:16];
assign vns_slice_proxy27 = soc_ddrphy_record3_wrdata[15:0];
assign vns_slice_proxy28 = soc_ddrphy_record2_wrdata[31:16];
assign vns_slice_proxy29 = soc_ddrphy_record2_wrdata[15:0];
assign vns_slice_proxy30 = soc_ddrphy_record3_wrdata[31:16];
assign vns_slice_proxy31 = soc_ddrphy_record3_wrdata[15:0];
assign vns_slice_proxy32 = soc_ddrphy_record2_wrdata[31:16];
assign vns_slice_proxy33 = soc_ddrphy_record2_wrdata[15:0];
assign vns_slice_proxy34 = soc_ddrphy_record3_wrdata[31:16];
assign vns_slice_proxy35 = soc_ddrphy_record3_wrdata[15:0];
assign vns_slice_proxy36 = soc_ddrphy_record2_wrdata[31:16];
assign vns_slice_proxy37 = soc_ddrphy_record2_wrdata[15:0];
assign vns_slice_proxy38 = soc_ddrphy_record3_wrdata[31:16];
assign vns_slice_proxy39 = soc_ddrphy_record3_wrdata[15:0];
assign vns_slice_proxy40 = soc_ddrphy_record2_wrdata[31:16];
assign vns_slice_proxy41 = soc_ddrphy_record2_wrdata[15:0];
assign vns_slice_proxy42 = soc_ddrphy_record3_wrdata[31:16];
assign vns_slice_proxy43 = soc_ddrphy_record3_wrdata[15:0];
assign vns_slice_proxy44 = soc_ddrphy_record2_wrdata[31:16];
assign vns_slice_proxy45 = soc_ddrphy_record2_wrdata[15:0];
assign vns_slice_proxy46 = soc_ddrphy_record3_wrdata[31:16];
assign vns_slice_proxy47 = soc_ddrphy_record3_wrdata[15:0];
assign vns_slice_proxy48 = soc_ddrphy_record2_wrdata[31:16];
assign vns_slice_proxy49 = soc_ddrphy_record2_wrdata[15:0];
assign vns_slice_proxy50 = soc_ddrphy_record3_wrdata[31:16];
assign vns_slice_proxy51 = soc_ddrphy_record3_wrdata[15:0];
assign vns_slice_proxy52 = soc_ddrphy_record2_wrdata[31:16];
assign vns_slice_proxy53 = soc_ddrphy_record2_wrdata[15:0];
assign vns_slice_proxy54 = soc_ddrphy_record3_wrdata[31:16];
assign vns_slice_proxy55 = soc_ddrphy_record3_wrdata[15:0];
assign vns_slice_proxy56 = soc_ddrphy_record2_wrdata[31:16];
assign vns_slice_proxy57 = soc_ddrphy_record2_wrdata[15:0];
assign vns_slice_proxy58 = soc_ddrphy_record3_wrdata[31:16];
assign vns_slice_proxy59 = soc_ddrphy_record3_wrdata[15:0];
assign vns_slice_proxy60 = soc_ddrphy_record2_wrdata[31:16];
assign vns_slice_proxy61 = soc_ddrphy_record2_wrdata[15:0];
assign vns_slice_proxy62 = soc_ddrphy_record3_wrdata[31:16];
assign vns_slice_proxy63 = soc_ddrphy_record3_wrdata[15:0];
assign vns_slice_proxy64 = soc_ddrphy_record2_wrdata_mask[3:2];
assign vns_slice_proxy65 = soc_ddrphy_record2_wrdata_mask[1:0];
assign vns_slice_proxy66 = soc_ddrphy_record3_wrdata_mask[3:2];
assign vns_slice_proxy67 = soc_ddrphy_record3_wrdata_mask[1:0];
assign vns_slice_proxy68 = soc_ddrphy_record2_wrdata_mask[3:2];
assign vns_slice_proxy69 = soc_ddrphy_record2_wrdata_mask[1:0];
assign vns_slice_proxy70 = soc_ddrphy_record3_wrdata_mask[3:2];
assign vns_slice_proxy71 = soc_ddrphy_record3_wrdata_mask[1:0];
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
end
always @(*) begin
	vns_rhs_array_muxed1 <= 13'd0;
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
end
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
end
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
end
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
end
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
end
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
end
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
end
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
end
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
end
always @(*) begin
	vns_rhs_array_muxed7 <= 13'd0;
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
end
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
end
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
end
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
end
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
end
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
end
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
end
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
end
always @(*) begin
	vns_rhs_array_muxed12 <= 21'd0;
	case (vns_roundrobin0_grant)
		default: begin
			vns_rhs_array_muxed12 <= {soc_netsoc_port_cmd_payload_addr[23:11], soc_netsoc_port_cmd_payload_addr[7:0]};
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed13 <= 1'd0;
	case (vns_roundrobin0_grant)
		default: begin
			vns_rhs_array_muxed13 <= soc_netsoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed14 <= 1'd0;
	case (vns_roundrobin0_grant)
		default: begin
			vns_rhs_array_muxed14 <= (((soc_netsoc_port_cmd_payload_addr[10:8] == 1'd0) & (~(((((((vns_locked0 | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed15 <= 21'd0;
	case (vns_roundrobin1_grant)
		default: begin
			vns_rhs_array_muxed15 <= {soc_netsoc_port_cmd_payload_addr[23:11], soc_netsoc_port_cmd_payload_addr[7:0]};
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed16 <= 1'd0;
	case (vns_roundrobin1_grant)
		default: begin
			vns_rhs_array_muxed16 <= soc_netsoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed17 <= 1'd0;
	case (vns_roundrobin1_grant)
		default: begin
			vns_rhs_array_muxed17 <= (((soc_netsoc_port_cmd_payload_addr[10:8] == 1'd1) & (~(((((((vns_locked1 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed18 <= 21'd0;
	case (vns_roundrobin2_grant)
		default: begin
			vns_rhs_array_muxed18 <= {soc_netsoc_port_cmd_payload_addr[23:11], soc_netsoc_port_cmd_payload_addr[7:0]};
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed19 <= 1'd0;
	case (vns_roundrobin2_grant)
		default: begin
			vns_rhs_array_muxed19 <= soc_netsoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed20 <= 1'd0;
	case (vns_roundrobin2_grant)
		default: begin
			vns_rhs_array_muxed20 <= (((soc_netsoc_port_cmd_payload_addr[10:8] == 2'd2) & (~(((((((vns_locked2 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed21 <= 21'd0;
	case (vns_roundrobin3_grant)
		default: begin
			vns_rhs_array_muxed21 <= {soc_netsoc_port_cmd_payload_addr[23:11], soc_netsoc_port_cmd_payload_addr[7:0]};
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed22 <= 1'd0;
	case (vns_roundrobin3_grant)
		default: begin
			vns_rhs_array_muxed22 <= soc_netsoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed23 <= 1'd0;
	case (vns_roundrobin3_grant)
		default: begin
			vns_rhs_array_muxed23 <= (((soc_netsoc_port_cmd_payload_addr[10:8] == 2'd3) & (~(((((((vns_locked3 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed24 <= 21'd0;
	case (vns_roundrobin4_grant)
		default: begin
			vns_rhs_array_muxed24 <= {soc_netsoc_port_cmd_payload_addr[23:11], soc_netsoc_port_cmd_payload_addr[7:0]};
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed25 <= 1'd0;
	case (vns_roundrobin4_grant)
		default: begin
			vns_rhs_array_muxed25 <= soc_netsoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed26 <= 1'd0;
	case (vns_roundrobin4_grant)
		default: begin
			vns_rhs_array_muxed26 <= (((soc_netsoc_port_cmd_payload_addr[10:8] == 3'd4) & (~(((((((vns_locked4 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed27 <= 21'd0;
	case (vns_roundrobin5_grant)
		default: begin
			vns_rhs_array_muxed27 <= {soc_netsoc_port_cmd_payload_addr[23:11], soc_netsoc_port_cmd_payload_addr[7:0]};
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed28 <= 1'd0;
	case (vns_roundrobin5_grant)
		default: begin
			vns_rhs_array_muxed28 <= soc_netsoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed29 <= 1'd0;
	case (vns_roundrobin5_grant)
		default: begin
			vns_rhs_array_muxed29 <= (((soc_netsoc_port_cmd_payload_addr[10:8] == 3'd5) & (~(((((((vns_locked5 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed30 <= 21'd0;
	case (vns_roundrobin6_grant)
		default: begin
			vns_rhs_array_muxed30 <= {soc_netsoc_port_cmd_payload_addr[23:11], soc_netsoc_port_cmd_payload_addr[7:0]};
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed31 <= 1'd0;
	case (vns_roundrobin6_grant)
		default: begin
			vns_rhs_array_muxed31 <= soc_netsoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed32 <= 1'd0;
	case (vns_roundrobin6_grant)
		default: begin
			vns_rhs_array_muxed32 <= (((soc_netsoc_port_cmd_payload_addr[10:8] == 3'd6) & (~(((((((vns_locked6 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank7_lock & (vns_roundrobin7_grant == 1'd0))))) & soc_netsoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed33 <= 21'd0;
	case (vns_roundrobin7_grant)
		default: begin
			vns_rhs_array_muxed33 <= {soc_netsoc_port_cmd_payload_addr[23:11], soc_netsoc_port_cmd_payload_addr[7:0]};
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed34 <= 1'd0;
	case (vns_roundrobin7_grant)
		default: begin
			vns_rhs_array_muxed34 <= soc_netsoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed35 <= 1'd0;
	case (vns_roundrobin7_grant)
		default: begin
			vns_rhs_array_muxed35 <= (((soc_netsoc_port_cmd_payload_addr[10:8] == 3'd7) & (~(((((((vns_locked7 | (soc_netsoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank4_lock & (vns_roundrobin4_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank5_lock & (vns_roundrobin5_grant == 1'd0))) | (soc_netsoc_sdram_interface_bank6_lock & (vns_roundrobin6_grant == 1'd0))))) & soc_netsoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed36 <= 30'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed36 <= soc_netsoc_interface1_wb_sdram_adr;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed37 <= 32'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed37 <= soc_netsoc_interface1_wb_sdram_dat_w;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed38 <= 4'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed38 <= soc_netsoc_interface1_wb_sdram_sel;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed39 <= 1'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed39 <= soc_netsoc_interface1_wb_sdram_cyc;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed40 <= 1'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed40 <= soc_netsoc_interface1_wb_sdram_stb;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed41 <= 1'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed41 <= soc_netsoc_interface1_wb_sdram_we;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed42 <= 3'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed42 <= soc_netsoc_interface1_wb_sdram_cti;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed43 <= 2'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed43 <= soc_netsoc_interface1_wb_sdram_bte;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed44 <= 30'd0;
	case (vns_netsoc_grant)
		1'd0: begin
			vns_rhs_array_muxed44 <= soc_netsoc_mor1kx_ibus_adr;
		end
		default: begin
			vns_rhs_array_muxed44 <= soc_netsoc_mor1kx_dbus_adr;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed45 <= 32'd0;
	case (vns_netsoc_grant)
		1'd0: begin
			vns_rhs_array_muxed45 <= soc_netsoc_mor1kx_ibus_dat_w;
		end
		default: begin
			vns_rhs_array_muxed45 <= soc_netsoc_mor1kx_dbus_dat_w;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed46 <= 4'd0;
	case (vns_netsoc_grant)
		1'd0: begin
			vns_rhs_array_muxed46 <= soc_netsoc_mor1kx_ibus_sel;
		end
		default: begin
			vns_rhs_array_muxed46 <= soc_netsoc_mor1kx_dbus_sel;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed47 <= 1'd0;
	case (vns_netsoc_grant)
		1'd0: begin
			vns_rhs_array_muxed47 <= soc_netsoc_mor1kx_ibus_cyc;
		end
		default: begin
			vns_rhs_array_muxed47 <= soc_netsoc_mor1kx_dbus_cyc;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed48 <= 1'd0;
	case (vns_netsoc_grant)
		1'd0: begin
			vns_rhs_array_muxed48 <= soc_netsoc_mor1kx_ibus_stb;
		end
		default: begin
			vns_rhs_array_muxed48 <= soc_netsoc_mor1kx_dbus_stb;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed49 <= 1'd0;
	case (vns_netsoc_grant)
		1'd0: begin
			vns_rhs_array_muxed49 <= soc_netsoc_mor1kx_ibus_we;
		end
		default: begin
			vns_rhs_array_muxed49 <= soc_netsoc_mor1kx_dbus_we;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed50 <= 3'd0;
	case (vns_netsoc_grant)
		1'd0: begin
			vns_rhs_array_muxed50 <= soc_netsoc_mor1kx_ibus_cti;
		end
		default: begin
			vns_rhs_array_muxed50 <= soc_netsoc_mor1kx_dbus_cti;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed51 <= 2'd0;
	case (vns_netsoc_grant)
		1'd0: begin
			vns_rhs_array_muxed51 <= soc_netsoc_mor1kx_ibus_bte;
		end
		default: begin
			vns_rhs_array_muxed51 <= soc_netsoc_mor1kx_dbus_bte;
		end
	endcase
end
always @(*) begin
	vns_array_muxed0 <= 13'd0;
	case (soc_ddrphy_phase_sel)
		1'd0: begin
			vns_array_muxed0 <= soc_ddrphy_record0_address;
		end
		default: begin
			vns_array_muxed0 <= soc_ddrphy_record1_address;
		end
	endcase
end
always @(*) begin
	vns_array_muxed1 <= 3'd0;
	case (soc_ddrphy_phase_sel)
		1'd0: begin
			vns_array_muxed1 <= soc_ddrphy_record0_bank;
		end
		default: begin
			vns_array_muxed1 <= soc_ddrphy_record1_bank;
		end
	endcase
end
always @(*) begin
	vns_array_muxed2 <= 1'd0;
	case (soc_ddrphy_phase_sel)
		1'd0: begin
			vns_array_muxed2 <= soc_ddrphy_record0_cke;
		end
		default: begin
			vns_array_muxed2 <= soc_ddrphy_record1_cke;
		end
	endcase
end
always @(*) begin
	vns_array_muxed3 <= 1'd0;
	case (soc_ddrphy_phase_sel)
		1'd0: begin
			vns_array_muxed3 <= soc_ddrphy_record0_ras_n;
		end
		default: begin
			vns_array_muxed3 <= soc_ddrphy_record1_ras_n;
		end
	endcase
end
always @(*) begin
	vns_array_muxed4 <= 1'd0;
	case (soc_ddrphy_phase_sel)
		1'd0: begin
			vns_array_muxed4 <= soc_ddrphy_record0_cas_n;
		end
		default: begin
			vns_array_muxed4 <= soc_ddrphy_record1_cas_n;
		end
	endcase
end
always @(*) begin
	vns_array_muxed5 <= 1'd0;
	case (soc_ddrphy_phase_sel)
		1'd0: begin
			vns_array_muxed5 <= soc_ddrphy_record0_we_n;
		end
		default: begin
			vns_array_muxed5 <= soc_ddrphy_record1_we_n;
		end
	endcase
end
always @(*) begin
	vns_array_muxed6 <= 1'd0;
	case (soc_ddrphy_phase_sel)
		1'd0: begin
			vns_array_muxed6 <= soc_ddrphy_record0_odt;
		end
		default: begin
			vns_array_muxed6 <= soc_ddrphy_record1_odt;
		end
	endcase
end
always @(*) begin
	vns_array_muxed7 <= 3'd0;
	case (soc_netsoc_sdram_steerer_sel0)
		1'd0: begin
			vns_array_muxed7 <= soc_netsoc_sdram_nop_ba[2:0];
		end
		1'd1: begin
			vns_array_muxed7 <= soc_netsoc_sdram_choose_cmd_cmd_payload_ba[2:0];
		end
		2'd2: begin
			vns_array_muxed7 <= soc_netsoc_sdram_choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			vns_array_muxed7 <= soc_netsoc_sdram_cmd_payload_ba[2:0];
		end
	endcase
end
always @(*) begin
	vns_array_muxed8 <= 13'd0;
	case (soc_netsoc_sdram_steerer_sel0)
		1'd0: begin
			vns_array_muxed8 <= soc_netsoc_sdram_nop_a;
		end
		1'd1: begin
			vns_array_muxed8 <= soc_netsoc_sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			vns_array_muxed8 <= soc_netsoc_sdram_choose_req_cmd_payload_a;
		end
		default: begin
			vns_array_muxed8 <= soc_netsoc_sdram_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	vns_array_muxed9 <= 1'd0;
	case (soc_netsoc_sdram_steerer_sel0)
		1'd0: begin
			vns_array_muxed9 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed9 <= ((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & soc_netsoc_sdram_choose_cmd_cmd_payload_cas);
		end
		2'd2: begin
			vns_array_muxed9 <= ((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & soc_netsoc_sdram_choose_req_cmd_payload_cas);
		end
		default: begin
			vns_array_muxed9 <= ((soc_netsoc_sdram_cmd_valid & soc_netsoc_sdram_cmd_ready) & soc_netsoc_sdram_cmd_payload_cas);
		end
	endcase
end
always @(*) begin
	vns_array_muxed10 <= 1'd0;
	case (soc_netsoc_sdram_steerer_sel0)
		1'd0: begin
			vns_array_muxed10 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed10 <= ((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & soc_netsoc_sdram_choose_cmd_cmd_payload_ras);
		end
		2'd2: begin
			vns_array_muxed10 <= ((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & soc_netsoc_sdram_choose_req_cmd_payload_ras);
		end
		default: begin
			vns_array_muxed10 <= ((soc_netsoc_sdram_cmd_valid & soc_netsoc_sdram_cmd_ready) & soc_netsoc_sdram_cmd_payload_ras);
		end
	endcase
end
always @(*) begin
	vns_array_muxed11 <= 1'd0;
	case (soc_netsoc_sdram_steerer_sel0)
		1'd0: begin
			vns_array_muxed11 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed11 <= ((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & soc_netsoc_sdram_choose_cmd_cmd_payload_we);
		end
		2'd2: begin
			vns_array_muxed11 <= ((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & soc_netsoc_sdram_choose_req_cmd_payload_we);
		end
		default: begin
			vns_array_muxed11 <= ((soc_netsoc_sdram_cmd_valid & soc_netsoc_sdram_cmd_ready) & soc_netsoc_sdram_cmd_payload_we);
		end
	endcase
end
always @(*) begin
	vns_array_muxed12 <= 1'd0;
	case (soc_netsoc_sdram_steerer_sel0)
		1'd0: begin
			vns_array_muxed12 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed12 <= ((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & soc_netsoc_sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			vns_array_muxed12 <= ((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & soc_netsoc_sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			vns_array_muxed12 <= ((soc_netsoc_sdram_cmd_valid & soc_netsoc_sdram_cmd_ready) & soc_netsoc_sdram_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	vns_array_muxed13 <= 1'd0;
	case (soc_netsoc_sdram_steerer_sel0)
		1'd0: begin
			vns_array_muxed13 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed13 <= ((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & soc_netsoc_sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			vns_array_muxed13 <= ((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & soc_netsoc_sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			vns_array_muxed13 <= ((soc_netsoc_sdram_cmd_valid & soc_netsoc_sdram_cmd_ready) & soc_netsoc_sdram_cmd_payload_is_write);
		end
	endcase
end
always @(*) begin
	vns_array_muxed14 <= 3'd0;
	case (soc_netsoc_sdram_steerer_sel1)
		1'd0: begin
			vns_array_muxed14 <= soc_netsoc_sdram_nop_ba[2:0];
		end
		1'd1: begin
			vns_array_muxed14 <= soc_netsoc_sdram_choose_cmd_cmd_payload_ba[2:0];
		end
		2'd2: begin
			vns_array_muxed14 <= soc_netsoc_sdram_choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			vns_array_muxed14 <= soc_netsoc_sdram_cmd_payload_ba[2:0];
		end
	endcase
end
always @(*) begin
	vns_array_muxed15 <= 13'd0;
	case (soc_netsoc_sdram_steerer_sel1)
		1'd0: begin
			vns_array_muxed15 <= soc_netsoc_sdram_nop_a;
		end
		1'd1: begin
			vns_array_muxed15 <= soc_netsoc_sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			vns_array_muxed15 <= soc_netsoc_sdram_choose_req_cmd_payload_a;
		end
		default: begin
			vns_array_muxed15 <= soc_netsoc_sdram_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	vns_array_muxed16 <= 1'd0;
	case (soc_netsoc_sdram_steerer_sel1)
		1'd0: begin
			vns_array_muxed16 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed16 <= ((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & soc_netsoc_sdram_choose_cmd_cmd_payload_cas);
		end
		2'd2: begin
			vns_array_muxed16 <= ((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & soc_netsoc_sdram_choose_req_cmd_payload_cas);
		end
		default: begin
			vns_array_muxed16 <= ((soc_netsoc_sdram_cmd_valid & soc_netsoc_sdram_cmd_ready) & soc_netsoc_sdram_cmd_payload_cas);
		end
	endcase
end
always @(*) begin
	vns_array_muxed17 <= 1'd0;
	case (soc_netsoc_sdram_steerer_sel1)
		1'd0: begin
			vns_array_muxed17 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed17 <= ((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & soc_netsoc_sdram_choose_cmd_cmd_payload_ras);
		end
		2'd2: begin
			vns_array_muxed17 <= ((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & soc_netsoc_sdram_choose_req_cmd_payload_ras);
		end
		default: begin
			vns_array_muxed17 <= ((soc_netsoc_sdram_cmd_valid & soc_netsoc_sdram_cmd_ready) & soc_netsoc_sdram_cmd_payload_ras);
		end
	endcase
end
always @(*) begin
	vns_array_muxed18 <= 1'd0;
	case (soc_netsoc_sdram_steerer_sel1)
		1'd0: begin
			vns_array_muxed18 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed18 <= ((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & soc_netsoc_sdram_choose_cmd_cmd_payload_we);
		end
		2'd2: begin
			vns_array_muxed18 <= ((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & soc_netsoc_sdram_choose_req_cmd_payload_we);
		end
		default: begin
			vns_array_muxed18 <= ((soc_netsoc_sdram_cmd_valid & soc_netsoc_sdram_cmd_ready) & soc_netsoc_sdram_cmd_payload_we);
		end
	endcase
end
always @(*) begin
	vns_array_muxed19 <= 1'd0;
	case (soc_netsoc_sdram_steerer_sel1)
		1'd0: begin
			vns_array_muxed19 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed19 <= ((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & soc_netsoc_sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			vns_array_muxed19 <= ((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & soc_netsoc_sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			vns_array_muxed19 <= ((soc_netsoc_sdram_cmd_valid & soc_netsoc_sdram_cmd_ready) & soc_netsoc_sdram_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	vns_array_muxed20 <= 1'd0;
	case (soc_netsoc_sdram_steerer_sel1)
		1'd0: begin
			vns_array_muxed20 <= 1'd0;
		end
		1'd1: begin
			vns_array_muxed20 <= ((soc_netsoc_sdram_choose_cmd_cmd_valid & soc_netsoc_sdram_choose_cmd_cmd_ready) & soc_netsoc_sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			vns_array_muxed20 <= ((soc_netsoc_sdram_choose_req_cmd_valid & soc_netsoc_sdram_choose_req_cmd_ready) & soc_netsoc_sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			vns_array_muxed20 <= ((soc_netsoc_sdram_cmd_valid & soc_netsoc_sdram_cmd_ready) & soc_netsoc_sdram_cmd_payload_is_write);
		end
	endcase
end
assign soc_netsoc_uart_phy_rx = vns_xilinxmultiregimpl0_regs1;
assign vns_xilinxasyncresetsynchronizerimpl0 = ((~cpu_reset) | soc_crg_reset);
assign vns_xilinxasyncresetsynchronizerimpl1 = ((~soc_crg_pll_lckd) | (soc_crg_por > 1'd0));
assign vns_xilinxasyncresetsynchronizerimpl2 = (sys_rst | (~soc_crg_dcm_base50_locked));
assign soc_toggle_o = vns_xilinxmultiregimpl1_regs1;
assign soc_status = vns_xilinxmultiregimpl2_regs1;
assign soc_ps_preamble_error_toggle_o = vns_xilinxmultiregimpl3_regs1;
assign soc_ps_crc_error_toggle_o = vns_xilinxmultiregimpl4_regs1;
assign soc_tx_cdc_produce_rdomain = vns_xilinxmultiregimpl5_regs1;
assign soc_tx_cdc_consume_wdomain = vns_xilinxmultiregimpl6_regs1;
assign soc_rx_cdc_produce_rdomain = vns_xilinxmultiregimpl7_regs1;
assign soc_rx_cdc_consume_wdomain = vns_xilinxmultiregimpl8_regs1;

always @(posedge eth_rx_clk) begin
	soc_eth_counter <= (soc_eth_counter + 1'd1);
	if (soc_i) begin
		soc_toggle_i <= (~soc_toggle_i);
	end
	soc_liteethphygmiimiirx_pads_d_rx_dv <= eth_rx_dv;
	soc_liteethphygmiimiirx_pads_d_rx_data <= eth_rx_data;
	soc_liteethphygmiimiirx_gmii_rx_dv_d <= soc_liteethphygmiimiirx_pads_d_rx_dv;
	soc_liteethphygmiimiirx_gmii_rx_source_valid <= soc_liteethphygmiimiirx_pads_d_rx_dv;
	soc_liteethphygmiimiirx_gmii_rx_source_payload_data <= soc_liteethphygmiimiirx_pads_d_rx_data;
	soc_liteethphygmiimiirx_converter_reset <= (~soc_liteethphygmiimiirx_pads_d_rx_dv);
	soc_liteethphygmiimiirx_converter_sink_valid <= 1'd1;
	soc_liteethphygmiimiirx_converter_sink_payload_data <= soc_liteethphygmiimiirx_pads_d_rx_data;
	if (soc_liteethphygmiimiirx_converter_converter_source_ready) begin
		soc_liteethphygmiimiirx_converter_converter_strobe_all <= 1'd0;
	end
	if (soc_liteethphygmiimiirx_converter_converter_load_part) begin
		if (((soc_liteethphygmiimiirx_converter_converter_demux == 1'd1) | soc_liteethphygmiimiirx_converter_converter_sink_last)) begin
			soc_liteethphygmiimiirx_converter_converter_demux <= 1'd0;
			soc_liteethphygmiimiirx_converter_converter_strobe_all <= 1'd1;
		end else begin
			soc_liteethphygmiimiirx_converter_converter_demux <= (soc_liteethphygmiimiirx_converter_converter_demux + 1'd1);
		end
	end
	if ((soc_liteethphygmiimiirx_converter_converter_source_valid & soc_liteethphygmiimiirx_converter_converter_source_ready)) begin
		if ((soc_liteethphygmiimiirx_converter_converter_sink_valid & soc_liteethphygmiimiirx_converter_converter_sink_ready)) begin
			soc_liteethphygmiimiirx_converter_converter_source_first <= soc_liteethphygmiimiirx_converter_converter_sink_first;
			soc_liteethphygmiimiirx_converter_converter_source_last <= soc_liteethphygmiimiirx_converter_converter_sink_last;
		end else begin
			soc_liteethphygmiimiirx_converter_converter_source_first <= 1'd0;
			soc_liteethphygmiimiirx_converter_converter_source_last <= 1'd0;
		end
	end else begin
		if ((soc_liteethphygmiimiirx_converter_converter_sink_valid & soc_liteethphygmiimiirx_converter_converter_sink_ready)) begin
			soc_liteethphygmiimiirx_converter_converter_source_first <= (soc_liteethphygmiimiirx_converter_converter_sink_first | soc_liteethphygmiimiirx_converter_converter_source_first);
			soc_liteethphygmiimiirx_converter_converter_source_last <= (soc_liteethphygmiimiirx_converter_converter_sink_last | soc_liteethphygmiimiirx_converter_converter_source_last);
		end
	end
	if (soc_liteethphygmiimiirx_converter_converter_load_part) begin
		case (soc_liteethphygmiimiirx_converter_converter_demux)
			1'd0: begin
				soc_liteethphygmiimiirx_converter_converter_source_payload_data[3:0] <= soc_liteethphygmiimiirx_converter_converter_sink_payload_data;
			end
			1'd1: begin
				soc_liteethphygmiimiirx_converter_converter_source_payload_data[7:4] <= soc_liteethphygmiimiirx_converter_converter_sink_payload_data;
			end
		endcase
	end
	if (soc_liteethphygmiimiirx_converter_converter_load_part) begin
		soc_liteethphygmiimiirx_converter_converter_source_payload_valid_token_count <= (soc_liteethphygmiimiirx_converter_converter_demux + 1'd1);
	end
	if (soc_liteethphygmiimiirx_converter_reset) begin
		soc_liteethphygmiimiirx_converter_converter_source_first <= 1'd0;
		soc_liteethphygmiimiirx_converter_converter_source_last <= 1'd0;
		soc_liteethphygmiimiirx_converter_converter_source_payload_data <= 8'd0;
		soc_liteethphygmiimiirx_converter_converter_source_payload_valid_token_count <= 2'd0;
		soc_liteethphygmiimiirx_converter_converter_demux <= 1'd0;
		soc_liteethphygmiimiirx_converter_converter_strobe_all <= 1'd0;
	end
	vns_liteethmacpreamblechecker_state <= vns_liteethmacpreamblechecker_next_state;
	if (soc_crc32_checker_crc_ce) begin
		soc_crc32_checker_crc_reg <= soc_crc32_checker_crc_next;
	end
	if (soc_crc32_checker_crc_reset) begin
		soc_crc32_checker_crc_reg <= 32'd4294967295;
	end
	if (((soc_crc32_checker_syncfifo_syncfifo_we & soc_crc32_checker_syncfifo_syncfifo_writable) & (~soc_crc32_checker_syncfifo_replace))) begin
		if ((soc_crc32_checker_syncfifo_produce == 3'd4)) begin
			soc_crc32_checker_syncfifo_produce <= 1'd0;
		end else begin
			soc_crc32_checker_syncfifo_produce <= (soc_crc32_checker_syncfifo_produce + 1'd1);
		end
	end
	if (soc_crc32_checker_syncfifo_do_read) begin
		if ((soc_crc32_checker_syncfifo_consume == 3'd4)) begin
			soc_crc32_checker_syncfifo_consume <= 1'd0;
		end else begin
			soc_crc32_checker_syncfifo_consume <= (soc_crc32_checker_syncfifo_consume + 1'd1);
		end
	end
	if (((soc_crc32_checker_syncfifo_syncfifo_we & soc_crc32_checker_syncfifo_syncfifo_writable) & (~soc_crc32_checker_syncfifo_replace))) begin
		if ((~soc_crc32_checker_syncfifo_do_read)) begin
			soc_crc32_checker_syncfifo_level <= (soc_crc32_checker_syncfifo_level + 1'd1);
		end
	end else begin
		if (soc_crc32_checker_syncfifo_do_read) begin
			soc_crc32_checker_syncfifo_level <= (soc_crc32_checker_syncfifo_level - 1'd1);
		end
	end
	if (soc_crc32_checker_fifo_reset) begin
		soc_crc32_checker_syncfifo_level <= 3'd0;
		soc_crc32_checker_syncfifo_produce <= 3'd0;
		soc_crc32_checker_syncfifo_consume <= 3'd0;
	end
	vns_liteethmaccrc32checker_state <= vns_liteethmaccrc32checker_next_state;
	if (soc_ps_preamble_error_i) begin
		soc_ps_preamble_error_toggle_i <= (~soc_ps_preamble_error_toggle_i);
	end
	if (soc_ps_crc_error_i) begin
		soc_ps_crc_error_toggle_i <= (~soc_ps_crc_error_toggle_i);
	end
	if (soc_rx_converter_converter_source_ready) begin
		soc_rx_converter_converter_strobe_all <= 1'd0;
	end
	if (soc_rx_converter_converter_load_part) begin
		if (((soc_rx_converter_converter_demux == 2'd3) | soc_rx_converter_converter_sink_last)) begin
			soc_rx_converter_converter_demux <= 1'd0;
			soc_rx_converter_converter_strobe_all <= 1'd1;
		end else begin
			soc_rx_converter_converter_demux <= (soc_rx_converter_converter_demux + 1'd1);
		end
	end
	if ((soc_rx_converter_converter_source_valid & soc_rx_converter_converter_source_ready)) begin
		if ((soc_rx_converter_converter_sink_valid & soc_rx_converter_converter_sink_ready)) begin
			soc_rx_converter_converter_source_first <= soc_rx_converter_converter_sink_first;
			soc_rx_converter_converter_source_last <= soc_rx_converter_converter_sink_last;
		end else begin
			soc_rx_converter_converter_source_first <= 1'd0;
			soc_rx_converter_converter_source_last <= 1'd0;
		end
	end else begin
		if ((soc_rx_converter_converter_sink_valid & soc_rx_converter_converter_sink_ready)) begin
			soc_rx_converter_converter_source_first <= (soc_rx_converter_converter_sink_first | soc_rx_converter_converter_source_first);
			soc_rx_converter_converter_source_last <= (soc_rx_converter_converter_sink_last | soc_rx_converter_converter_source_last);
		end
	end
	if (soc_rx_converter_converter_load_part) begin
		case (soc_rx_converter_converter_demux)
			1'd0: begin
				soc_rx_converter_converter_source_payload_data[39:30] <= soc_rx_converter_converter_sink_payload_data;
			end
			1'd1: begin
				soc_rx_converter_converter_source_payload_data[29:20] <= soc_rx_converter_converter_sink_payload_data;
			end
			2'd2: begin
				soc_rx_converter_converter_source_payload_data[19:10] <= soc_rx_converter_converter_sink_payload_data;
			end
			2'd3: begin
				soc_rx_converter_converter_source_payload_data[9:0] <= soc_rx_converter_converter_sink_payload_data;
			end
		endcase
	end
	if (soc_rx_converter_converter_load_part) begin
		soc_rx_converter_converter_source_payload_valid_token_count <= (soc_rx_converter_converter_demux + 1'd1);
	end
	soc_rx_cdc_graycounter0_q_binary <= soc_rx_cdc_graycounter0_q_next_binary;
	soc_rx_cdc_graycounter0_q <= soc_rx_cdc_graycounter0_q_next;
	if (eth_rx_rst) begin
		soc_liteethphygmiimiirx_gmii_rx_source_valid <= 1'd0;
		soc_liteethphygmiimiirx_gmii_rx_source_payload_data <= 8'd0;
		soc_liteethphygmiimiirx_gmii_rx_dv_d <= 1'd0;
		soc_liteethphygmiimiirx_converter_sink_valid <= 1'd0;
		soc_liteethphygmiimiirx_converter_sink_payload_data <= 4'd0;
		soc_liteethphygmiimiirx_converter_converter_source_first <= 1'd0;
		soc_liteethphygmiimiirx_converter_converter_source_last <= 1'd0;
		soc_liteethphygmiimiirx_converter_converter_source_payload_data <= 8'd0;
		soc_liteethphygmiimiirx_converter_converter_source_payload_valid_token_count <= 2'd0;
		soc_liteethphygmiimiirx_converter_converter_demux <= 1'd0;
		soc_liteethphygmiimiirx_converter_converter_strobe_all <= 1'd0;
		soc_liteethphygmiimiirx_converter_reset <= 1'd0;
		soc_crc32_checker_crc_reg <= 32'd4294967295;
		soc_crc32_checker_syncfifo_level <= 3'd0;
		soc_crc32_checker_syncfifo_produce <= 3'd0;
		soc_crc32_checker_syncfifo_consume <= 3'd0;
		soc_rx_converter_converter_source_first <= 1'd0;
		soc_rx_converter_converter_source_last <= 1'd0;
		soc_rx_converter_converter_source_payload_data <= 40'd0;
		soc_rx_converter_converter_source_payload_valid_token_count <= 3'd0;
		soc_rx_converter_converter_demux <= 2'd0;
		soc_rx_converter_converter_strobe_all <= 1'd0;
		soc_rx_cdc_graycounter0_q <= 7'd0;
		soc_rx_cdc_graycounter0_q_binary <= 7'd0;
		vns_liteethmacpreamblechecker_state <= 1'd0;
		vns_liteethmaccrc32checker_state <= 2'd0;
	end
	vns_xilinxmultiregimpl8_regs0 <= soc_rx_cdc_graycounter1_q;
	vns_xilinxmultiregimpl8_regs1 <= vns_xilinxmultiregimpl8_regs0;
end

always @(posedge eth_tx_clk) begin
	if ((soc_mode0 == 1'd1)) begin
		eth_tx_en <= soc_liteethphygmiimiitx_mii_tx_pads_tx_en;
		eth_tx_data <= soc_liteethphygmiimiitx_mii_tx_pads_tx_data;
	end else begin
		eth_tx_en <= soc_liteethphygmiimiitx_gmii_tx_pads_tx_en;
		eth_tx_data <= soc_liteethphygmiimiitx_gmii_tx_pads_tx_data;
	end
	soc_liteethphygmiimiitx_gmii_tx_pads_tx_er <= 1'd0;
	soc_liteethphygmiimiitx_gmii_tx_pads_tx_en <= soc_liteethphygmiimiitx_gmii_tx_sink_valid;
	soc_liteethphygmiimiitx_gmii_tx_pads_tx_data <= soc_liteethphygmiimiitx_gmii_tx_sink_payload_data;
	soc_liteethphygmiimiitx_gmii_tx_sink_ready <= 1'd1;
	soc_liteethphygmiimiitx_mii_tx_pads_tx_er <= 1'd0;
	soc_liteethphygmiimiitx_mii_tx_pads_tx_en <= soc_liteethphygmiimiitx_converter_source_valid;
	soc_liteethphygmiimiitx_mii_tx_pads_tx_data <= soc_liteethphygmiimiitx_converter_source_payload_data;
	if ((soc_liteethphygmiimiitx_converter_converter_source_valid & soc_liteethphygmiimiitx_converter_converter_source_ready)) begin
		if (soc_liteethphygmiimiitx_converter_converter_last) begin
			soc_liteethphygmiimiitx_converter_converter_mux <= 1'd0;
		end else begin
			soc_liteethphygmiimiitx_converter_converter_mux <= (soc_liteethphygmiimiitx_converter_converter_mux + 1'd1);
		end
	end
	if (soc_tx_gap_inserter_counter_reset) begin
		soc_tx_gap_inserter_counter <= 1'd0;
	end else begin
		if (soc_tx_gap_inserter_counter_ce) begin
			soc_tx_gap_inserter_counter <= (soc_tx_gap_inserter_counter + 1'd1);
		end
	end
	vns_liteethmacgap_state <= vns_liteethmacgap_next_state;
	if (soc_preamble_inserter_clr_cnt) begin
		soc_preamble_inserter_cnt <= 1'd0;
	end else begin
		if (soc_preamble_inserter_inc_cnt) begin
			soc_preamble_inserter_cnt <= (soc_preamble_inserter_cnt + 1'd1);
		end
	end
	vns_liteethmacpreambleinserter_state <= vns_liteethmacpreambleinserter_next_state;
	if (soc_crc32_inserter_is_ongoing0) begin
		soc_crc32_inserter_cnt <= 2'd3;
	end else begin
		if ((soc_crc32_inserter_is_ongoing1 & (~soc_crc32_inserter_cnt_done))) begin
			soc_crc32_inserter_cnt <= (soc_crc32_inserter_cnt - soc_crc32_inserter_source_ready);
		end
	end
	if (soc_crc32_inserter_ce) begin
		soc_crc32_inserter_reg <= soc_crc32_inserter_next;
	end
	if (soc_crc32_inserter_reset) begin
		soc_crc32_inserter_reg <= 32'd4294967295;
	end
	vns_liteethmaccrc32inserter_state <= vns_liteethmaccrc32inserter_next_state;
	if (soc_padding_inserter_counter_reset) begin
		soc_padding_inserter_counter <= 1'd0;
	end else begin
		if (soc_padding_inserter_counter_ce) begin
			soc_padding_inserter_counter <= (soc_padding_inserter_counter + 1'd1);
		end
	end
	vns_liteethmacpaddinginserter_state <= vns_liteethmacpaddinginserter_next_state;
	if ((soc_tx_last_be_sink_valid & soc_tx_last_be_sink_ready)) begin
		if (soc_tx_last_be_sink_last) begin
			soc_tx_last_be_ongoing <= 1'd1;
		end else begin
			if (soc_tx_last_be_sink_payload_last_be) begin
				soc_tx_last_be_ongoing <= 1'd0;
			end
		end
	end
	if ((soc_tx_converter_converter_source_valid & soc_tx_converter_converter_source_ready)) begin
		if (soc_tx_converter_converter_last) begin
			soc_tx_converter_converter_mux <= 1'd0;
		end else begin
			soc_tx_converter_converter_mux <= (soc_tx_converter_converter_mux + 1'd1);
		end
	end
	soc_tx_cdc_graycounter1_q_binary <= soc_tx_cdc_graycounter1_q_next_binary;
	soc_tx_cdc_graycounter1_q <= soc_tx_cdc_graycounter1_q_next;
	if (eth_tx_rst) begin
		soc_liteethphygmiimiitx_gmii_tx_sink_ready <= 1'd0;
		soc_liteethphygmiimiitx_converter_converter_mux <= 1'd0;
		soc_crc32_inserter_reg <= 32'd4294967295;
		soc_crc32_inserter_cnt <= 2'd3;
		soc_padding_inserter_counter <= 16'd1;
		soc_tx_last_be_ongoing <= 1'd1;
		soc_tx_converter_converter_mux <= 2'd0;
		soc_tx_cdc_graycounter1_q <= 7'd0;
		soc_tx_cdc_graycounter1_q_binary <= 7'd0;
		vns_liteethmacgap_state <= 1'd0;
		vns_liteethmacpreambleinserter_state <= 2'd0;
		vns_liteethmaccrc32inserter_state <= 2'd0;
		vns_liteethmacpaddinginserter_state <= 1'd0;
	end
	vns_xilinxmultiregimpl5_regs0 <= soc_tx_cdc_graycounter0_q;
	vns_xilinxmultiregimpl5_regs1 <= vns_xilinxmultiregimpl5_regs0;
end

always @(posedge por_clk) begin
	if ((soc_crg_por != 1'd0)) begin
		soc_crg_por <= (soc_crg_por - 1'd1);
	end
	if (por_rst) begin
		soc_crg_por <= 11'd2047;
	end
end

always @(posedge sdram_half_clk) begin
	if ((soc_ddrphy_phase_half == soc_ddrphy_phase_sys)) begin
		soc_ddrphy_phase_sel <= 1'd0;
	end else begin
		soc_ddrphy_phase_sel <= (soc_ddrphy_phase_sel + 1'd1);
	end
	soc_ddrphy_phase_half <= (soc_ddrphy_phase_half + 1'd1);
	soc_ddrphy_record0_reset_n <= soc_ddrphy_dfi_p0_reset_n;
	soc_ddrphy_record0_odt <= soc_ddrphy_dfi_p0_odt;
	soc_ddrphy_record0_address <= soc_ddrphy_dfi_p0_address;
	soc_ddrphy_record0_bank <= soc_ddrphy_dfi_p0_bank;
	soc_ddrphy_record0_cs_n <= soc_ddrphy_dfi_p0_cs_n;
	soc_ddrphy_record0_cke <= soc_ddrphy_dfi_p0_cke;
	soc_ddrphy_record0_cas_n <= soc_ddrphy_dfi_p0_cas_n;
	soc_ddrphy_record0_ras_n <= soc_ddrphy_dfi_p0_ras_n;
	soc_ddrphy_record0_we_n <= soc_ddrphy_dfi_p0_we_n;
	soc_ddrphy_record1_reset_n <= soc_ddrphy_dfi_p1_reset_n;
	soc_ddrphy_record1_odt <= soc_ddrphy_dfi_p1_odt;
	soc_ddrphy_record1_address <= soc_ddrphy_dfi_p1_address;
	soc_ddrphy_record1_bank <= soc_ddrphy_dfi_p1_bank;
	soc_ddrphy_record1_cs_n <= soc_ddrphy_dfi_p1_cs_n;
	soc_ddrphy_record1_cke <= soc_ddrphy_dfi_p1_cke;
	soc_ddrphy_record1_cas_n <= soc_ddrphy_dfi_p1_cas_n;
	soc_ddrphy_record1_ras_n <= soc_ddrphy_dfi_p1_ras_n;
	soc_ddrphy_record1_we_n <= soc_ddrphy_dfi_p1_we_n;
	ddram_a <= vns_array_muxed0;
	ddram_ba <= vns_array_muxed1;
	ddram_cke <= vns_array_muxed2;
	ddram_ras_n <= vns_array_muxed3;
	ddram_cas_n <= vns_array_muxed4;
	ddram_we_n <= vns_array_muxed5;
	ddram_odt <= vns_array_muxed6;
	soc_ddrphy_postamble <= soc_ddrphy_drive_dqs;
	soc_ddrphy_r_dfi_wrdata_en <= {soc_ddrphy_r_dfi_wrdata_en, soc_ddrphy_wrdata_en_d};
	if (sdram_half_rst) begin
		ddram_cke <= 1'd0;
		ddram_ras_n <= 1'd0;
		ddram_cas_n <= 1'd0;
		ddram_we_n <= 1'd0;
		ddram_ba <= 3'd0;
		ddram_a <= 13'd0;
		ddram_odt <= 1'd0;
		soc_ddrphy_phase_sel <= 1'd0;
		soc_ddrphy_phase_half <= 1'd0;
		soc_ddrphy_record0_address <= 13'd0;
		soc_ddrphy_record0_bank <= 3'd0;
		soc_ddrphy_record0_cas_n <= 1'd0;
		soc_ddrphy_record0_cs_n <= 1'd0;
		soc_ddrphy_record0_ras_n <= 1'd0;
		soc_ddrphy_record0_we_n <= 1'd0;
		soc_ddrphy_record0_cke <= 1'd0;
		soc_ddrphy_record0_odt <= 1'd0;
		soc_ddrphy_record0_reset_n <= 1'd0;
		soc_ddrphy_record1_address <= 13'd0;
		soc_ddrphy_record1_bank <= 3'd0;
		soc_ddrphy_record1_cas_n <= 1'd0;
		soc_ddrphy_record1_cs_n <= 1'd0;
		soc_ddrphy_record1_ras_n <= 1'd0;
		soc_ddrphy_record1_we_n <= 1'd0;
		soc_ddrphy_record1_cke <= 1'd0;
		soc_ddrphy_record1_odt <= 1'd0;
		soc_ddrphy_record1_reset_n <= 1'd0;
		soc_ddrphy_postamble <= 1'd0;
		soc_ddrphy_r_dfi_wrdata_en <= 3'd0;
	end
end

always @(posedge sys_clk) begin
	if ((soc_netsoc_ctrl_bus_errors != 32'd4294967295)) begin
		if (soc_netsoc_ctrl_bus_error) begin
			soc_netsoc_ctrl_bus_errors <= (soc_netsoc_ctrl_bus_errors + 1'd1);
		end
	end
	soc_netsoc_rom_bus_ack <= 1'd0;
	if (((soc_netsoc_rom_bus_cyc & soc_netsoc_rom_bus_stb) & (~soc_netsoc_rom_bus_ack))) begin
		soc_netsoc_rom_bus_ack <= 1'd1;
	end
	soc_netsoc_sram_bus_ack <= 1'd0;
	if (((soc_netsoc_sram_bus_cyc & soc_netsoc_sram_bus_stb) & (~soc_netsoc_sram_bus_ack))) begin
		soc_netsoc_sram_bus_ack <= 1'd1;
	end
	soc_netsoc_interface_we <= 1'd0;
	soc_netsoc_interface_dat_w <= soc_netsoc_bus_wishbone_dat_w;
	soc_netsoc_interface_adr <= soc_netsoc_bus_wishbone_adr;
	soc_netsoc_bus_wishbone_dat_r <= soc_netsoc_interface_dat_r;
	if ((soc_netsoc_counter == 1'd1)) begin
		soc_netsoc_interface_we <= soc_netsoc_bus_wishbone_we;
	end
	if ((soc_netsoc_counter == 2'd2)) begin
		soc_netsoc_bus_wishbone_ack <= 1'd1;
	end
	if ((soc_netsoc_counter == 2'd3)) begin
		soc_netsoc_bus_wishbone_ack <= 1'd0;
	end
	if ((soc_netsoc_counter != 1'd0)) begin
		soc_netsoc_counter <= (soc_netsoc_counter + 1'd1);
	end else begin
		if ((soc_netsoc_bus_wishbone_cyc & soc_netsoc_bus_wishbone_stb)) begin
			soc_netsoc_counter <= 1'd1;
		end
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
	if (soc_netsoc_uart_tx_fifo_syncfifo_re) begin
		soc_netsoc_uart_tx_fifo_readable <= 1'd1;
	end else begin
		if (soc_netsoc_uart_tx_fifo_re) begin
			soc_netsoc_uart_tx_fifo_readable <= 1'd0;
		end
	end
	if (((soc_netsoc_uart_tx_fifo_syncfifo_we & soc_netsoc_uart_tx_fifo_syncfifo_writable) & (~soc_netsoc_uart_tx_fifo_replace))) begin
		soc_netsoc_uart_tx_fifo_produce <= (soc_netsoc_uart_tx_fifo_produce + 1'd1);
	end
	if (soc_netsoc_uart_tx_fifo_do_read) begin
		soc_netsoc_uart_tx_fifo_consume <= (soc_netsoc_uart_tx_fifo_consume + 1'd1);
	end
	if (((soc_netsoc_uart_tx_fifo_syncfifo_we & soc_netsoc_uart_tx_fifo_syncfifo_writable) & (~soc_netsoc_uart_tx_fifo_replace))) begin
		if ((~soc_netsoc_uart_tx_fifo_do_read)) begin
			soc_netsoc_uart_tx_fifo_level0 <= (soc_netsoc_uart_tx_fifo_level0 + 1'd1);
		end
	end else begin
		if (soc_netsoc_uart_tx_fifo_do_read) begin
			soc_netsoc_uart_tx_fifo_level0 <= (soc_netsoc_uart_tx_fifo_level0 - 1'd1);
		end
	end
	if (soc_netsoc_uart_rx_fifo_syncfifo_re) begin
		soc_netsoc_uart_rx_fifo_readable <= 1'd1;
	end else begin
		if (soc_netsoc_uart_rx_fifo_re) begin
			soc_netsoc_uart_rx_fifo_readable <= 1'd0;
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
			soc_netsoc_uart_rx_fifo_level0 <= (soc_netsoc_uart_rx_fifo_level0 + 1'd1);
		end
	end else begin
		if (soc_netsoc_uart_rx_fifo_do_read) begin
			soc_netsoc_uart_rx_fifo_level0 <= (soc_netsoc_uart_rx_fifo_level0 - 1'd1);
		end
	end
	if (soc_netsoc_uart_reset) begin
		soc_netsoc_uart_tx_pending <= 1'd0;
		soc_netsoc_uart_tx_old_trigger <= 1'd0;
		soc_netsoc_uart_rx_pending <= 1'd0;
		soc_netsoc_uart_rx_old_trigger <= 1'd0;
		soc_netsoc_uart_tx_fifo_readable <= 1'd0;
		soc_netsoc_uart_tx_fifo_level0 <= 5'd0;
		soc_netsoc_uart_tx_fifo_produce <= 4'd0;
		soc_netsoc_uart_tx_fifo_consume <= 4'd0;
		soc_netsoc_uart_rx_fifo_readable <= 1'd0;
		soc_netsoc_uart_rx_fifo_level0 <= 5'd0;
		soc_netsoc_uart_rx_fifo_produce <= 4'd0;
		soc_netsoc_uart_rx_fifo_consume <= 4'd0;
	end
	if (soc_netsoc_timer0_en_storage) begin
		if ((soc_netsoc_timer0_value == 1'd0)) begin
			soc_netsoc_timer0_value <= soc_netsoc_timer0_reload_storage;
		end else begin
			soc_netsoc_timer0_value <= (soc_netsoc_timer0_value - 1'd1);
		end
	end else begin
		soc_netsoc_timer0_value <= soc_netsoc_timer0_load_storage;
	end
	if (soc_netsoc_timer0_update_value_re) begin
		soc_netsoc_timer0_value_status <= soc_netsoc_timer0_value;
	end
	if (soc_netsoc_timer0_zero_clear) begin
		soc_netsoc_timer0_zero_pending <= 1'd0;
	end
	soc_netsoc_timer0_zero_old_trigger <= soc_netsoc_timer0_zero_trigger;
	if (((~soc_netsoc_timer0_zero_trigger) & soc_netsoc_timer0_zero_old_trigger)) begin
		soc_netsoc_timer0_zero_pending <= 1'd1;
	end
	if ((soc_dna_cnt < 7'd114)) begin
		soc_dna_cnt <= (soc_dna_cnt + 1'd1);
		if (soc_dna_cnt[0]) begin
			soc_dna_status <= {soc_dna_status, soc_dna_do};
		end
	end
	if ((soc_spiflash_i1 == 1'd1)) begin
		soc_spiflash_clk <= 1'd1;
		soc_spiflash_dqi <= soc_spiflash_i0;
	end
	if ((soc_spiflash_i1 == 2'd3)) begin
		soc_spiflash_i1 <= 1'd0;
		soc_spiflash_clk <= 1'd0;
		soc_spiflash_sr <= {soc_spiflash_sr[27:0], soc_spiflash_dqi};
	end else begin
		soc_spiflash_i1 <= (soc_spiflash_i1 + 1'd1);
	end
	if ((((soc_spiflash_bus_cyc & soc_spiflash_bus_stb) & (soc_spiflash_i1 == 2'd3)) & (soc_spiflash_counter == 1'd0))) begin
		soc_spiflash_dq_oe <= 1'd1;
		soc_spiflash_cs_n <= 1'd0;
		soc_spiflash_sr[31:0] <= 32'd4294901503;
	end
	if ((soc_spiflash_counter == 6'd32)) begin
		soc_spiflash_sr[31:8] <= {soc_spiflash_bus_adr, {2{1'd0}}};
	end
	if ((soc_spiflash_counter == 6'd56)) begin
		soc_spiflash_dq_oe <= 1'd0;
	end
	if ((soc_spiflash_counter == 8'd128)) begin
		soc_spiflash_bus_ack <= 1'd1;
		soc_spiflash_cs_n <= 1'd1;
	end
	if ((soc_spiflash_counter == 8'd129)) begin
		soc_spiflash_bus_ack <= 1'd0;
	end
	if ((soc_spiflash_counter == 8'd133)) begin
	end
	if ((soc_spiflash_counter == 8'd133)) begin
		soc_spiflash_counter <= 1'd0;
	end else begin
		if ((soc_spiflash_counter != 1'd0)) begin
			soc_spiflash_counter <= (soc_spiflash_counter + 1'd1);
		end else begin
			if (((soc_spiflash_bus_cyc & soc_spiflash_bus_stb) & (soc_spiflash_i1 == 2'd3))) begin
				soc_spiflash_counter <= 1'd1;
			end
		end
	end
	soc_ddrphy_phase_sys <= soc_ddrphy_phase_half;
	if ((soc_ddrphy_bitslip_cnt == 1'd0)) begin
		soc_ddrphy_bitslip_inc <= 1'd0;
	end else begin
		soc_ddrphy_bitslip_cnt <= (soc_ddrphy_bitslip_cnt + 1'd1);
		soc_ddrphy_bitslip_inc <= 1'd1;
	end
	soc_ddrphy_record2_wrdata <= soc_ddrphy_dfi_p0_wrdata;
	soc_ddrphy_record2_wrdata_mask <= soc_ddrphy_dfi_p0_wrdata_mask;
	soc_ddrphy_record3_wrdata <= soc_ddrphy_dfi_p1_wrdata;
	soc_ddrphy_record3_wrdata_mask <= soc_ddrphy_dfi_p1_wrdata_mask;
	soc_ddrphy_drive_dq_n1 <= soc_ddrphy_drive_dq_n0;
	soc_ddrphy_wrdata_en_d <= soc_ddrphy_wrdata_en;
	soc_ddrphy_rddata_sr <= {soc_ddrphy_rddata_en, soc_ddrphy_rddata_sr[4:1]};
	if (soc_netsoc_sdram_inti_p0_rddata_valid) begin
		soc_netsoc_sdram_phaseinjector0_status <= soc_netsoc_sdram_inti_p0_rddata;
	end
	if (soc_netsoc_sdram_inti_p1_rddata_valid) begin
		soc_netsoc_sdram_phaseinjector1_status <= soc_netsoc_sdram_inti_p1_rddata;
	end
	if (soc_netsoc_sdram_timer_wait) begin
		if ((~soc_netsoc_sdram_timer_done)) begin
			if ((soc_netsoc_sdram_timer_load & (soc_netsoc_sdram_timer_load_count < soc_netsoc_sdram_timer_count))) begin
				soc_netsoc_sdram_timer_count <= soc_netsoc_sdram_timer_load_count;
			end else begin
				soc_netsoc_sdram_timer_count <= (soc_netsoc_sdram_timer_count - 1'd1);
			end
		end
	end else begin
		soc_netsoc_sdram_timer_count <= 10'd586;
	end
	if (soc_netsoc_sdram_timer_reset) begin
		soc_netsoc_sdram_timer_count <= 10'd586;
	end
	soc_netsoc_sdram_cmd_payload_a <= 11'd1024;
	soc_netsoc_sdram_cmd_payload_ba <= 1'd0;
	soc_netsoc_sdram_cmd_payload_cas <= 1'd0;
	soc_netsoc_sdram_cmd_payload_ras <= 1'd0;
	soc_netsoc_sdram_cmd_payload_we <= 1'd0;
	soc_netsoc_sdram_generator_done <= 1'd0;
	if ((soc_netsoc_sdram_generator_counter == 1'd1)) begin
		soc_netsoc_sdram_cmd_payload_ras <= 1'd1;
		soc_netsoc_sdram_cmd_payload_we <= 1'd1;
	end
	if ((soc_netsoc_sdram_generator_counter == 2'd3)) begin
		soc_netsoc_sdram_cmd_payload_cas <= 1'd1;
		soc_netsoc_sdram_cmd_payload_ras <= 1'd1;
	end
	if ((soc_netsoc_sdram_generator_counter == 4'd14)) begin
		soc_netsoc_sdram_generator_done <= 1'd1;
	end
	if ((soc_netsoc_sdram_generator_counter == 4'd14)) begin
		soc_netsoc_sdram_generator_counter <= 1'd0;
	end else begin
		if ((soc_netsoc_sdram_generator_counter != 1'd0)) begin
			soc_netsoc_sdram_generator_counter <= (soc_netsoc_sdram_generator_counter + 1'd1);
		end else begin
			if (soc_netsoc_sdram_generator_start) begin
				soc_netsoc_sdram_generator_counter <= 1'd1;
			end
		end
	end
	vns_refresher_state <= vns_refresher_next_state;
	if (soc_netsoc_sdram_bankmachine0_row_close) begin
		soc_netsoc_sdram_bankmachine0_row_opened <= 1'd0;
	end else begin
		if (soc_netsoc_sdram_bankmachine0_row_open) begin
			soc_netsoc_sdram_bankmachine0_row_opened <= 1'd1;
			soc_netsoc_sdram_bankmachine0_row <= soc_netsoc_sdram_bankmachine0_cmd_buffer_source_payload_addr[20:8];
		end
	end
	if (((soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we & soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable) & (~soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_replace))) begin
		soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_produce <= (soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_do_read) begin
		soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_consume <= (soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we & soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable) & (~soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_replace))) begin
		if ((~soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_do_read)) begin
			soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_level <= (soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_do_read) begin
			soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_level <= (soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (soc_netsoc_sdram_bankmachine0_cmd_buffer_pipe_ce) begin
		soc_netsoc_sdram_bankmachine0_cmd_buffer_valid_n <= soc_netsoc_sdram_bankmachine0_cmd_buffer_sink_valid;
	end
	if (soc_netsoc_sdram_bankmachine0_cmd_buffer_pipe_ce) begin
		soc_netsoc_sdram_bankmachine0_cmd_buffer_first_n <= (soc_netsoc_sdram_bankmachine0_cmd_buffer_sink_valid & soc_netsoc_sdram_bankmachine0_cmd_buffer_sink_first);
		soc_netsoc_sdram_bankmachine0_cmd_buffer_last_n <= (soc_netsoc_sdram_bankmachine0_cmd_buffer_sink_valid & soc_netsoc_sdram_bankmachine0_cmd_buffer_sink_last);
	end
	if (soc_netsoc_sdram_bankmachine0_cmd_buffer_pipe_ce) begin
		soc_netsoc_sdram_bankmachine0_cmd_buffer_source_payload_we <= soc_netsoc_sdram_bankmachine0_cmd_buffer_sink_payload_we;
		soc_netsoc_sdram_bankmachine0_cmd_buffer_source_payload_addr <= soc_netsoc_sdram_bankmachine0_cmd_buffer_sink_payload_addr;
	end
	if (soc_netsoc_sdram_bankmachine0_twtpcon_valid) begin
		soc_netsoc_sdram_bankmachine0_twtpcon_count <= 3'd4;
		if (1'd0) begin
			soc_netsoc_sdram_bankmachine0_twtpcon_ready <= 1'd1;
		end else begin
			soc_netsoc_sdram_bankmachine0_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_netsoc_sdram_bankmachine0_twtpcon_ready)) begin
			soc_netsoc_sdram_bankmachine0_twtpcon_count <= (soc_netsoc_sdram_bankmachine0_twtpcon_count - 1'd1);
			if ((soc_netsoc_sdram_bankmachine0_twtpcon_count == 1'd1)) begin
				soc_netsoc_sdram_bankmachine0_twtpcon_ready <= 1'd1;
			end
		end
	end
	vns_bankmachine0_state <= vns_bankmachine0_next_state;
	if (soc_netsoc_sdram_bankmachine1_row_close) begin
		soc_netsoc_sdram_bankmachine1_row_opened <= 1'd0;
	end else begin
		if (soc_netsoc_sdram_bankmachine1_row_open) begin
			soc_netsoc_sdram_bankmachine1_row_opened <= 1'd1;
			soc_netsoc_sdram_bankmachine1_row <= soc_netsoc_sdram_bankmachine1_cmd_buffer_source_payload_addr[20:8];
		end
	end
	if (((soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we & soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable) & (~soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_replace))) begin
		soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_produce <= (soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_do_read) begin
		soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_consume <= (soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we & soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable) & (~soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_replace))) begin
		if ((~soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_do_read)) begin
			soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_level <= (soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_do_read) begin
			soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_level <= (soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (soc_netsoc_sdram_bankmachine1_cmd_buffer_pipe_ce) begin
		soc_netsoc_sdram_bankmachine1_cmd_buffer_valid_n <= soc_netsoc_sdram_bankmachine1_cmd_buffer_sink_valid;
	end
	if (soc_netsoc_sdram_bankmachine1_cmd_buffer_pipe_ce) begin
		soc_netsoc_sdram_bankmachine1_cmd_buffer_first_n <= (soc_netsoc_sdram_bankmachine1_cmd_buffer_sink_valid & soc_netsoc_sdram_bankmachine1_cmd_buffer_sink_first);
		soc_netsoc_sdram_bankmachine1_cmd_buffer_last_n <= (soc_netsoc_sdram_bankmachine1_cmd_buffer_sink_valid & soc_netsoc_sdram_bankmachine1_cmd_buffer_sink_last);
	end
	if (soc_netsoc_sdram_bankmachine1_cmd_buffer_pipe_ce) begin
		soc_netsoc_sdram_bankmachine1_cmd_buffer_source_payload_we <= soc_netsoc_sdram_bankmachine1_cmd_buffer_sink_payload_we;
		soc_netsoc_sdram_bankmachine1_cmd_buffer_source_payload_addr <= soc_netsoc_sdram_bankmachine1_cmd_buffer_sink_payload_addr;
	end
	if (soc_netsoc_sdram_bankmachine1_twtpcon_valid) begin
		soc_netsoc_sdram_bankmachine1_twtpcon_count <= 3'd4;
		if (1'd0) begin
			soc_netsoc_sdram_bankmachine1_twtpcon_ready <= 1'd1;
		end else begin
			soc_netsoc_sdram_bankmachine1_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_netsoc_sdram_bankmachine1_twtpcon_ready)) begin
			soc_netsoc_sdram_bankmachine1_twtpcon_count <= (soc_netsoc_sdram_bankmachine1_twtpcon_count - 1'd1);
			if ((soc_netsoc_sdram_bankmachine1_twtpcon_count == 1'd1)) begin
				soc_netsoc_sdram_bankmachine1_twtpcon_ready <= 1'd1;
			end
		end
	end
	vns_bankmachine1_state <= vns_bankmachine1_next_state;
	if (soc_netsoc_sdram_bankmachine2_row_close) begin
		soc_netsoc_sdram_bankmachine2_row_opened <= 1'd0;
	end else begin
		if (soc_netsoc_sdram_bankmachine2_row_open) begin
			soc_netsoc_sdram_bankmachine2_row_opened <= 1'd1;
			soc_netsoc_sdram_bankmachine2_row <= soc_netsoc_sdram_bankmachine2_cmd_buffer_source_payload_addr[20:8];
		end
	end
	if (((soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we & soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable) & (~soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_replace))) begin
		soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_produce <= (soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_do_read) begin
		soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_consume <= (soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we & soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable) & (~soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_replace))) begin
		if ((~soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_do_read)) begin
			soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_level <= (soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_do_read) begin
			soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_level <= (soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (soc_netsoc_sdram_bankmachine2_cmd_buffer_pipe_ce) begin
		soc_netsoc_sdram_bankmachine2_cmd_buffer_valid_n <= soc_netsoc_sdram_bankmachine2_cmd_buffer_sink_valid;
	end
	if (soc_netsoc_sdram_bankmachine2_cmd_buffer_pipe_ce) begin
		soc_netsoc_sdram_bankmachine2_cmd_buffer_first_n <= (soc_netsoc_sdram_bankmachine2_cmd_buffer_sink_valid & soc_netsoc_sdram_bankmachine2_cmd_buffer_sink_first);
		soc_netsoc_sdram_bankmachine2_cmd_buffer_last_n <= (soc_netsoc_sdram_bankmachine2_cmd_buffer_sink_valid & soc_netsoc_sdram_bankmachine2_cmd_buffer_sink_last);
	end
	if (soc_netsoc_sdram_bankmachine2_cmd_buffer_pipe_ce) begin
		soc_netsoc_sdram_bankmachine2_cmd_buffer_source_payload_we <= soc_netsoc_sdram_bankmachine2_cmd_buffer_sink_payload_we;
		soc_netsoc_sdram_bankmachine2_cmd_buffer_source_payload_addr <= soc_netsoc_sdram_bankmachine2_cmd_buffer_sink_payload_addr;
	end
	if (soc_netsoc_sdram_bankmachine2_twtpcon_valid) begin
		soc_netsoc_sdram_bankmachine2_twtpcon_count <= 3'd4;
		if (1'd0) begin
			soc_netsoc_sdram_bankmachine2_twtpcon_ready <= 1'd1;
		end else begin
			soc_netsoc_sdram_bankmachine2_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_netsoc_sdram_bankmachine2_twtpcon_ready)) begin
			soc_netsoc_sdram_bankmachine2_twtpcon_count <= (soc_netsoc_sdram_bankmachine2_twtpcon_count - 1'd1);
			if ((soc_netsoc_sdram_bankmachine2_twtpcon_count == 1'd1)) begin
				soc_netsoc_sdram_bankmachine2_twtpcon_ready <= 1'd1;
			end
		end
	end
	vns_bankmachine2_state <= vns_bankmachine2_next_state;
	if (soc_netsoc_sdram_bankmachine3_row_close) begin
		soc_netsoc_sdram_bankmachine3_row_opened <= 1'd0;
	end else begin
		if (soc_netsoc_sdram_bankmachine3_row_open) begin
			soc_netsoc_sdram_bankmachine3_row_opened <= 1'd1;
			soc_netsoc_sdram_bankmachine3_row <= soc_netsoc_sdram_bankmachine3_cmd_buffer_source_payload_addr[20:8];
		end
	end
	if (((soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we & soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable) & (~soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_replace))) begin
		soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_produce <= (soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_do_read) begin
		soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_consume <= (soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we & soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable) & (~soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_replace))) begin
		if ((~soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_do_read)) begin
			soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_level <= (soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_do_read) begin
			soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_level <= (soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (soc_netsoc_sdram_bankmachine3_cmd_buffer_pipe_ce) begin
		soc_netsoc_sdram_bankmachine3_cmd_buffer_valid_n <= soc_netsoc_sdram_bankmachine3_cmd_buffer_sink_valid;
	end
	if (soc_netsoc_sdram_bankmachine3_cmd_buffer_pipe_ce) begin
		soc_netsoc_sdram_bankmachine3_cmd_buffer_first_n <= (soc_netsoc_sdram_bankmachine3_cmd_buffer_sink_valid & soc_netsoc_sdram_bankmachine3_cmd_buffer_sink_first);
		soc_netsoc_sdram_bankmachine3_cmd_buffer_last_n <= (soc_netsoc_sdram_bankmachine3_cmd_buffer_sink_valid & soc_netsoc_sdram_bankmachine3_cmd_buffer_sink_last);
	end
	if (soc_netsoc_sdram_bankmachine3_cmd_buffer_pipe_ce) begin
		soc_netsoc_sdram_bankmachine3_cmd_buffer_source_payload_we <= soc_netsoc_sdram_bankmachine3_cmd_buffer_sink_payload_we;
		soc_netsoc_sdram_bankmachine3_cmd_buffer_source_payload_addr <= soc_netsoc_sdram_bankmachine3_cmd_buffer_sink_payload_addr;
	end
	if (soc_netsoc_sdram_bankmachine3_twtpcon_valid) begin
		soc_netsoc_sdram_bankmachine3_twtpcon_count <= 3'd4;
		if (1'd0) begin
			soc_netsoc_sdram_bankmachine3_twtpcon_ready <= 1'd1;
		end else begin
			soc_netsoc_sdram_bankmachine3_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_netsoc_sdram_bankmachine3_twtpcon_ready)) begin
			soc_netsoc_sdram_bankmachine3_twtpcon_count <= (soc_netsoc_sdram_bankmachine3_twtpcon_count - 1'd1);
			if ((soc_netsoc_sdram_bankmachine3_twtpcon_count == 1'd1)) begin
				soc_netsoc_sdram_bankmachine3_twtpcon_ready <= 1'd1;
			end
		end
	end
	vns_bankmachine3_state <= vns_bankmachine3_next_state;
	if (soc_netsoc_sdram_bankmachine4_row_close) begin
		soc_netsoc_sdram_bankmachine4_row_opened <= 1'd0;
	end else begin
		if (soc_netsoc_sdram_bankmachine4_row_open) begin
			soc_netsoc_sdram_bankmachine4_row_opened <= 1'd1;
			soc_netsoc_sdram_bankmachine4_row <= soc_netsoc_sdram_bankmachine4_cmd_buffer_source_payload_addr[20:8];
		end
	end
	if (((soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_we & soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable) & (~soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_replace))) begin
		soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_produce <= (soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_do_read) begin
		soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_consume <= (soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_we & soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable) & (~soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_replace))) begin
		if ((~soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_do_read)) begin
			soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_level <= (soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_do_read) begin
			soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_level <= (soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (soc_netsoc_sdram_bankmachine4_cmd_buffer_pipe_ce) begin
		soc_netsoc_sdram_bankmachine4_cmd_buffer_valid_n <= soc_netsoc_sdram_bankmachine4_cmd_buffer_sink_valid;
	end
	if (soc_netsoc_sdram_bankmachine4_cmd_buffer_pipe_ce) begin
		soc_netsoc_sdram_bankmachine4_cmd_buffer_first_n <= (soc_netsoc_sdram_bankmachine4_cmd_buffer_sink_valid & soc_netsoc_sdram_bankmachine4_cmd_buffer_sink_first);
		soc_netsoc_sdram_bankmachine4_cmd_buffer_last_n <= (soc_netsoc_sdram_bankmachine4_cmd_buffer_sink_valid & soc_netsoc_sdram_bankmachine4_cmd_buffer_sink_last);
	end
	if (soc_netsoc_sdram_bankmachine4_cmd_buffer_pipe_ce) begin
		soc_netsoc_sdram_bankmachine4_cmd_buffer_source_payload_we <= soc_netsoc_sdram_bankmachine4_cmd_buffer_sink_payload_we;
		soc_netsoc_sdram_bankmachine4_cmd_buffer_source_payload_addr <= soc_netsoc_sdram_bankmachine4_cmd_buffer_sink_payload_addr;
	end
	if (soc_netsoc_sdram_bankmachine4_twtpcon_valid) begin
		soc_netsoc_sdram_bankmachine4_twtpcon_count <= 3'd4;
		if (1'd0) begin
			soc_netsoc_sdram_bankmachine4_twtpcon_ready <= 1'd1;
		end else begin
			soc_netsoc_sdram_bankmachine4_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_netsoc_sdram_bankmachine4_twtpcon_ready)) begin
			soc_netsoc_sdram_bankmachine4_twtpcon_count <= (soc_netsoc_sdram_bankmachine4_twtpcon_count - 1'd1);
			if ((soc_netsoc_sdram_bankmachine4_twtpcon_count == 1'd1)) begin
				soc_netsoc_sdram_bankmachine4_twtpcon_ready <= 1'd1;
			end
		end
	end
	vns_bankmachine4_state <= vns_bankmachine4_next_state;
	if (soc_netsoc_sdram_bankmachine5_row_close) begin
		soc_netsoc_sdram_bankmachine5_row_opened <= 1'd0;
	end else begin
		if (soc_netsoc_sdram_bankmachine5_row_open) begin
			soc_netsoc_sdram_bankmachine5_row_opened <= 1'd1;
			soc_netsoc_sdram_bankmachine5_row <= soc_netsoc_sdram_bankmachine5_cmd_buffer_source_payload_addr[20:8];
		end
	end
	if (((soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_we & soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable) & (~soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_replace))) begin
		soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_produce <= (soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_do_read) begin
		soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_consume <= (soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_we & soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable) & (~soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_replace))) begin
		if ((~soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_do_read)) begin
			soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_level <= (soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_do_read) begin
			soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_level <= (soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (soc_netsoc_sdram_bankmachine5_cmd_buffer_pipe_ce) begin
		soc_netsoc_sdram_bankmachine5_cmd_buffer_valid_n <= soc_netsoc_sdram_bankmachine5_cmd_buffer_sink_valid;
	end
	if (soc_netsoc_sdram_bankmachine5_cmd_buffer_pipe_ce) begin
		soc_netsoc_sdram_bankmachine5_cmd_buffer_first_n <= (soc_netsoc_sdram_bankmachine5_cmd_buffer_sink_valid & soc_netsoc_sdram_bankmachine5_cmd_buffer_sink_first);
		soc_netsoc_sdram_bankmachine5_cmd_buffer_last_n <= (soc_netsoc_sdram_bankmachine5_cmd_buffer_sink_valid & soc_netsoc_sdram_bankmachine5_cmd_buffer_sink_last);
	end
	if (soc_netsoc_sdram_bankmachine5_cmd_buffer_pipe_ce) begin
		soc_netsoc_sdram_bankmachine5_cmd_buffer_source_payload_we <= soc_netsoc_sdram_bankmachine5_cmd_buffer_sink_payload_we;
		soc_netsoc_sdram_bankmachine5_cmd_buffer_source_payload_addr <= soc_netsoc_sdram_bankmachine5_cmd_buffer_sink_payload_addr;
	end
	if (soc_netsoc_sdram_bankmachine5_twtpcon_valid) begin
		soc_netsoc_sdram_bankmachine5_twtpcon_count <= 3'd4;
		if (1'd0) begin
			soc_netsoc_sdram_bankmachine5_twtpcon_ready <= 1'd1;
		end else begin
			soc_netsoc_sdram_bankmachine5_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_netsoc_sdram_bankmachine5_twtpcon_ready)) begin
			soc_netsoc_sdram_bankmachine5_twtpcon_count <= (soc_netsoc_sdram_bankmachine5_twtpcon_count - 1'd1);
			if ((soc_netsoc_sdram_bankmachine5_twtpcon_count == 1'd1)) begin
				soc_netsoc_sdram_bankmachine5_twtpcon_ready <= 1'd1;
			end
		end
	end
	vns_bankmachine5_state <= vns_bankmachine5_next_state;
	if (soc_netsoc_sdram_bankmachine6_row_close) begin
		soc_netsoc_sdram_bankmachine6_row_opened <= 1'd0;
	end else begin
		if (soc_netsoc_sdram_bankmachine6_row_open) begin
			soc_netsoc_sdram_bankmachine6_row_opened <= 1'd1;
			soc_netsoc_sdram_bankmachine6_row <= soc_netsoc_sdram_bankmachine6_cmd_buffer_source_payload_addr[20:8];
		end
	end
	if (((soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_we & soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable) & (~soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_replace))) begin
		soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_produce <= (soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_do_read) begin
		soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_consume <= (soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_we & soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable) & (~soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_replace))) begin
		if ((~soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_do_read)) begin
			soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_level <= (soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_do_read) begin
			soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_level <= (soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (soc_netsoc_sdram_bankmachine6_cmd_buffer_pipe_ce) begin
		soc_netsoc_sdram_bankmachine6_cmd_buffer_valid_n <= soc_netsoc_sdram_bankmachine6_cmd_buffer_sink_valid;
	end
	if (soc_netsoc_sdram_bankmachine6_cmd_buffer_pipe_ce) begin
		soc_netsoc_sdram_bankmachine6_cmd_buffer_first_n <= (soc_netsoc_sdram_bankmachine6_cmd_buffer_sink_valid & soc_netsoc_sdram_bankmachine6_cmd_buffer_sink_first);
		soc_netsoc_sdram_bankmachine6_cmd_buffer_last_n <= (soc_netsoc_sdram_bankmachine6_cmd_buffer_sink_valid & soc_netsoc_sdram_bankmachine6_cmd_buffer_sink_last);
	end
	if (soc_netsoc_sdram_bankmachine6_cmd_buffer_pipe_ce) begin
		soc_netsoc_sdram_bankmachine6_cmd_buffer_source_payload_we <= soc_netsoc_sdram_bankmachine6_cmd_buffer_sink_payload_we;
		soc_netsoc_sdram_bankmachine6_cmd_buffer_source_payload_addr <= soc_netsoc_sdram_bankmachine6_cmd_buffer_sink_payload_addr;
	end
	if (soc_netsoc_sdram_bankmachine6_twtpcon_valid) begin
		soc_netsoc_sdram_bankmachine6_twtpcon_count <= 3'd4;
		if (1'd0) begin
			soc_netsoc_sdram_bankmachine6_twtpcon_ready <= 1'd1;
		end else begin
			soc_netsoc_sdram_bankmachine6_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_netsoc_sdram_bankmachine6_twtpcon_ready)) begin
			soc_netsoc_sdram_bankmachine6_twtpcon_count <= (soc_netsoc_sdram_bankmachine6_twtpcon_count - 1'd1);
			if ((soc_netsoc_sdram_bankmachine6_twtpcon_count == 1'd1)) begin
				soc_netsoc_sdram_bankmachine6_twtpcon_ready <= 1'd1;
			end
		end
	end
	vns_bankmachine6_state <= vns_bankmachine6_next_state;
	if (soc_netsoc_sdram_bankmachine7_row_close) begin
		soc_netsoc_sdram_bankmachine7_row_opened <= 1'd0;
	end else begin
		if (soc_netsoc_sdram_bankmachine7_row_open) begin
			soc_netsoc_sdram_bankmachine7_row_opened <= 1'd1;
			soc_netsoc_sdram_bankmachine7_row <= soc_netsoc_sdram_bankmachine7_cmd_buffer_source_payload_addr[20:8];
		end
	end
	if (((soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_we & soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable) & (~soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_replace))) begin
		soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_produce <= (soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_do_read) begin
		soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_consume <= (soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_we & soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable) & (~soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_replace))) begin
		if ((~soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_do_read)) begin
			soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_level <= (soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_do_read) begin
			soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_level <= (soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (soc_netsoc_sdram_bankmachine7_cmd_buffer_pipe_ce) begin
		soc_netsoc_sdram_bankmachine7_cmd_buffer_valid_n <= soc_netsoc_sdram_bankmachine7_cmd_buffer_sink_valid;
	end
	if (soc_netsoc_sdram_bankmachine7_cmd_buffer_pipe_ce) begin
		soc_netsoc_sdram_bankmachine7_cmd_buffer_first_n <= (soc_netsoc_sdram_bankmachine7_cmd_buffer_sink_valid & soc_netsoc_sdram_bankmachine7_cmd_buffer_sink_first);
		soc_netsoc_sdram_bankmachine7_cmd_buffer_last_n <= (soc_netsoc_sdram_bankmachine7_cmd_buffer_sink_valid & soc_netsoc_sdram_bankmachine7_cmd_buffer_sink_last);
	end
	if (soc_netsoc_sdram_bankmachine7_cmd_buffer_pipe_ce) begin
		soc_netsoc_sdram_bankmachine7_cmd_buffer_source_payload_we <= soc_netsoc_sdram_bankmachine7_cmd_buffer_sink_payload_we;
		soc_netsoc_sdram_bankmachine7_cmd_buffer_source_payload_addr <= soc_netsoc_sdram_bankmachine7_cmd_buffer_sink_payload_addr;
	end
	if (soc_netsoc_sdram_bankmachine7_twtpcon_valid) begin
		soc_netsoc_sdram_bankmachine7_twtpcon_count <= 3'd4;
		if (1'd0) begin
			soc_netsoc_sdram_bankmachine7_twtpcon_ready <= 1'd1;
		end else begin
			soc_netsoc_sdram_bankmachine7_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_netsoc_sdram_bankmachine7_twtpcon_ready)) begin
			soc_netsoc_sdram_bankmachine7_twtpcon_count <= (soc_netsoc_sdram_bankmachine7_twtpcon_count - 1'd1);
			if ((soc_netsoc_sdram_bankmachine7_twtpcon_count == 1'd1)) begin
				soc_netsoc_sdram_bankmachine7_twtpcon_ready <= 1'd1;
			end
		end
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
	soc_netsoc_sdram_dfi_p0_cs_n <= 1'd0;
	soc_netsoc_sdram_dfi_p0_bank <= vns_array_muxed7;
	soc_netsoc_sdram_dfi_p0_address <= vns_array_muxed8;
	soc_netsoc_sdram_dfi_p0_cas_n <= (~vns_array_muxed9);
	soc_netsoc_sdram_dfi_p0_ras_n <= (~vns_array_muxed10);
	soc_netsoc_sdram_dfi_p0_we_n <= (~vns_array_muxed11);
	soc_netsoc_sdram_dfi_p0_rddata_en <= vns_array_muxed12;
	soc_netsoc_sdram_dfi_p0_wrdata_en <= vns_array_muxed13;
	soc_netsoc_sdram_dfi_p1_cs_n <= 1'd0;
	soc_netsoc_sdram_dfi_p1_bank <= vns_array_muxed14;
	soc_netsoc_sdram_dfi_p1_address <= vns_array_muxed15;
	soc_netsoc_sdram_dfi_p1_cas_n <= (~vns_array_muxed16);
	soc_netsoc_sdram_dfi_p1_ras_n <= (~vns_array_muxed17);
	soc_netsoc_sdram_dfi_p1_we_n <= (~vns_array_muxed18);
	soc_netsoc_sdram_dfi_p1_rddata_en <= vns_array_muxed19;
	soc_netsoc_sdram_dfi_p1_wrdata_en <= vns_array_muxed20;
	if (soc_netsoc_sdram_tccdcon_valid) begin
		soc_netsoc_sdram_tccdcon_count <= 1'd0;
		if (1'd1) begin
			soc_netsoc_sdram_tccdcon_ready <= 1'd1;
		end else begin
			soc_netsoc_sdram_tccdcon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_netsoc_sdram_tccdcon_ready)) begin
			soc_netsoc_sdram_tccdcon_count <= (soc_netsoc_sdram_tccdcon_count - 1'd1);
			if ((soc_netsoc_sdram_tccdcon_count == 1'd1)) begin
				soc_netsoc_sdram_tccdcon_ready <= 1'd1;
			end
		end
	end
	if (soc_netsoc_sdram_twtrcon_valid) begin
		soc_netsoc_sdram_twtrcon_count <= 3'd4;
		if (1'd0) begin
			soc_netsoc_sdram_twtrcon_ready <= 1'd1;
		end else begin
			soc_netsoc_sdram_twtrcon_ready <= 1'd0;
		end
	end else begin
		if ((~soc_netsoc_sdram_twtrcon_ready)) begin
			soc_netsoc_sdram_twtrcon_count <= (soc_netsoc_sdram_twtrcon_count - 1'd1);
			if ((soc_netsoc_sdram_twtrcon_count == 1'd1)) begin
				soc_netsoc_sdram_twtrcon_ready <= 1'd1;
			end
		end
	end
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
	if (((vns_roundrobin0_grant == 1'd0) & soc_netsoc_sdram_interface_bank0_rdata_valid)) begin
		vns_rbank <= 1'd0;
	end
	if (((vns_roundrobin0_grant == 1'd0) & soc_netsoc_sdram_interface_bank0_wdata_ready)) begin
		vns_wbank <= 1'd0;
	end
	if (((vns_roundrobin1_grant == 1'd0) & soc_netsoc_sdram_interface_bank1_rdata_valid)) begin
		vns_rbank <= 1'd1;
	end
	if (((vns_roundrobin1_grant == 1'd0) & soc_netsoc_sdram_interface_bank1_wdata_ready)) begin
		vns_wbank <= 1'd1;
	end
	if (((vns_roundrobin2_grant == 1'd0) & soc_netsoc_sdram_interface_bank2_rdata_valid)) begin
		vns_rbank <= 2'd2;
	end
	if (((vns_roundrobin2_grant == 1'd0) & soc_netsoc_sdram_interface_bank2_wdata_ready)) begin
		vns_wbank <= 2'd2;
	end
	if (((vns_roundrobin3_grant == 1'd0) & soc_netsoc_sdram_interface_bank3_rdata_valid)) begin
		vns_rbank <= 2'd3;
	end
	if (((vns_roundrobin3_grant == 1'd0) & soc_netsoc_sdram_interface_bank3_wdata_ready)) begin
		vns_wbank <= 2'd3;
	end
	if (((vns_roundrobin4_grant == 1'd0) & soc_netsoc_sdram_interface_bank4_rdata_valid)) begin
		vns_rbank <= 3'd4;
	end
	if (((vns_roundrobin4_grant == 1'd0) & soc_netsoc_sdram_interface_bank4_wdata_ready)) begin
		vns_wbank <= 3'd4;
	end
	if (((vns_roundrobin5_grant == 1'd0) & soc_netsoc_sdram_interface_bank5_rdata_valid)) begin
		vns_rbank <= 3'd5;
	end
	if (((vns_roundrobin5_grant == 1'd0) & soc_netsoc_sdram_interface_bank5_wdata_ready)) begin
		vns_wbank <= 3'd5;
	end
	if (((vns_roundrobin6_grant == 1'd0) & soc_netsoc_sdram_interface_bank6_rdata_valid)) begin
		vns_rbank <= 3'd6;
	end
	if (((vns_roundrobin6_grant == 1'd0) & soc_netsoc_sdram_interface_bank6_wdata_ready)) begin
		vns_wbank <= 3'd6;
	end
	if (((vns_roundrobin7_grant == 1'd0) & soc_netsoc_sdram_interface_bank7_rdata_valid)) begin
		vns_rbank <= 3'd7;
	end
	if (((vns_roundrobin7_grant == 1'd0) & soc_netsoc_sdram_interface_bank7_wdata_ready)) begin
		vns_wbank <= 3'd7;
	end
	vns_new_master_wdata_ready <= ((((((((1'd0 | ((vns_roundrobin0_grant == 1'd0) & soc_netsoc_sdram_interface_bank0_wdata_ready)) | ((vns_roundrobin1_grant == 1'd0) & soc_netsoc_sdram_interface_bank1_wdata_ready)) | ((vns_roundrobin2_grant == 1'd0) & soc_netsoc_sdram_interface_bank2_wdata_ready)) | ((vns_roundrobin3_grant == 1'd0) & soc_netsoc_sdram_interface_bank3_wdata_ready)) | ((vns_roundrobin4_grant == 1'd0) & soc_netsoc_sdram_interface_bank4_wdata_ready)) | ((vns_roundrobin5_grant == 1'd0) & soc_netsoc_sdram_interface_bank5_wdata_ready)) | ((vns_roundrobin6_grant == 1'd0) & soc_netsoc_sdram_interface_bank6_wdata_ready)) | ((vns_roundrobin7_grant == 1'd0) & soc_netsoc_sdram_interface_bank7_wdata_ready));
	vns_new_master_rdata_valid0 <= ((((((((1'd0 | ((vns_roundrobin0_grant == 1'd0) & soc_netsoc_sdram_interface_bank0_rdata_valid)) | ((vns_roundrobin1_grant == 1'd0) & soc_netsoc_sdram_interface_bank1_rdata_valid)) | ((vns_roundrobin2_grant == 1'd0) & soc_netsoc_sdram_interface_bank2_rdata_valid)) | ((vns_roundrobin3_grant == 1'd0) & soc_netsoc_sdram_interface_bank3_rdata_valid)) | ((vns_roundrobin4_grant == 1'd0) & soc_netsoc_sdram_interface_bank4_rdata_valid)) | ((vns_roundrobin5_grant == 1'd0) & soc_netsoc_sdram_interface_bank5_rdata_valid)) | ((vns_roundrobin6_grant == 1'd0) & soc_netsoc_sdram_interface_bank6_rdata_valid)) | ((vns_roundrobin7_grant == 1'd0) & soc_netsoc_sdram_interface_bank7_rdata_valid));
	vns_new_master_rdata_valid1 <= vns_new_master_rdata_valid0;
	vns_new_master_rdata_valid2 <= vns_new_master_rdata_valid1;
	vns_new_master_rdata_valid3 <= vns_new_master_rdata_valid2;
	vns_new_master_rdata_valid4 <= vns_new_master_rdata_valid3;
	vns_new_master_rdata_valid5 <= vns_new_master_rdata_valid4;
	soc_netsoc_adr_offset_r <= soc_netsoc_interface0_wb_sdram_adr[0];
	vns_cache_state <= vns_cache_next_state;
	vns_litedramwishbone2native_state <= vns_litedramwishbone2native_next_state;
	if (soc_update_mode) begin
		soc_mode0 <= soc_mode1;
	end
	if (soc_sys_counter_reset) begin
		soc_sys_counter <= 1'd0;
	end else begin
		if (soc_sys_counter_ce) begin
			soc_sys_counter <= (soc_sys_counter + 1'd1);
		end
	end
	soc_toggle_o_r <= soc_toggle_o;
	vns_liteethphygmiimii_state <= vns_liteethphygmiimii_next_state;
	if (soc_counter_ce) begin
		soc_counter <= (soc_counter + 1'd1);
	end
	if (soc_ps_preamble_error_o) begin
		soc_preamble_errors_status <= (soc_preamble_errors_status + 1'd1);
	end
	if (soc_ps_crc_error_o) begin
		soc_crc_errors_status <= (soc_crc_errors_status + 1'd1);
	end
	soc_ps_preamble_error_toggle_o_r <= soc_ps_preamble_error_toggle_o;
	soc_ps_crc_error_toggle_o_r <= soc_ps_crc_error_toggle_o;
	soc_tx_cdc_graycounter0_q_binary <= soc_tx_cdc_graycounter0_q_next_binary;
	soc_tx_cdc_graycounter0_q <= soc_tx_cdc_graycounter0_q_next;
	soc_rx_cdc_graycounter1_q_binary <= soc_rx_cdc_graycounter1_q_next_binary;
	soc_rx_cdc_graycounter1_q <= soc_rx_cdc_graycounter1_q_next;
	if (soc_writer_counter_reset) begin
		soc_writer_counter <= 1'd0;
	end else begin
		if (soc_writer_counter_ce) begin
			soc_writer_counter <= (soc_writer_counter + soc_writer_inc);
		end
	end
	if (soc_writer_slot_ce) begin
		soc_writer_slot <= (soc_writer_slot + 1'd1);
	end
	if (((soc_writer_fifo_syncfifo_we & soc_writer_fifo_syncfifo_writable) & (~soc_writer_fifo_replace))) begin
		soc_writer_fifo_produce <= (soc_writer_fifo_produce + 1'd1);
	end
	if (soc_writer_fifo_do_read) begin
		soc_writer_fifo_consume <= (soc_writer_fifo_consume + 1'd1);
	end
	if (((soc_writer_fifo_syncfifo_we & soc_writer_fifo_syncfifo_writable) & (~soc_writer_fifo_replace))) begin
		if ((~soc_writer_fifo_do_read)) begin
			soc_writer_fifo_level <= (soc_writer_fifo_level + 1'd1);
		end
	end else begin
		if (soc_writer_fifo_do_read) begin
			soc_writer_fifo_level <= (soc_writer_fifo_level - 1'd1);
		end
	end
	vns_liteethmacsramwriter_state <= vns_liteethmacsramwriter_next_state;
	if (soc_writer_errors_status_next_value_ce) begin
		soc_writer_errors_status <= soc_writer_errors_status_next_value;
	end
	if (soc_reader_counter_reset) begin
		soc_reader_counter <= 1'd0;
	end else begin
		if (soc_reader_counter_ce) begin
			soc_reader_counter <= (soc_reader_counter + 3'd4);
		end
	end
	soc_reader_last_d <= soc_reader_last;
	if (soc_reader_done_clear) begin
		soc_reader_done_pending <= 1'd0;
	end
	if (soc_reader_done_trigger) begin
		soc_reader_done_pending <= 1'd1;
	end
	if (((soc_reader_fifo_syncfifo_we & soc_reader_fifo_syncfifo_writable) & (~soc_reader_fifo_replace))) begin
		soc_reader_fifo_produce <= (soc_reader_fifo_produce + 1'd1);
	end
	if (soc_reader_fifo_do_read) begin
		soc_reader_fifo_consume <= (soc_reader_fifo_consume + 1'd1);
	end
	if (((soc_reader_fifo_syncfifo_we & soc_reader_fifo_syncfifo_writable) & (~soc_reader_fifo_replace))) begin
		if ((~soc_reader_fifo_do_read)) begin
			soc_reader_fifo_level <= (soc_reader_fifo_level + 1'd1);
		end
	end else begin
		if (soc_reader_fifo_do_read) begin
			soc_reader_fifo_level <= (soc_reader_fifo_level - 1'd1);
		end
	end
	vns_liteethmacsramreader_state <= vns_liteethmacsramreader_next_state;
	soc_sram0_bus_ack0 <= 1'd0;
	if (((soc_sram0_bus_cyc0 & soc_sram0_bus_stb0) & (~soc_sram0_bus_ack0))) begin
		soc_sram0_bus_ack0 <= 1'd1;
	end
	soc_sram1_bus_ack0 <= 1'd0;
	if (((soc_sram1_bus_cyc0 & soc_sram1_bus_stb0) & (~soc_sram1_bus_ack0))) begin
		soc_sram1_bus_ack0 <= 1'd1;
	end
	soc_sram0_bus_ack1 <= 1'd0;
	if (((soc_sram0_bus_cyc1 & soc_sram0_bus_stb1) & (~soc_sram0_bus_ack1))) begin
		soc_sram0_bus_ack1 <= 1'd1;
	end
	soc_sram1_bus_ack1 <= 1'd0;
	if (((soc_sram1_bus_cyc1 & soc_sram1_bus_stb1) & (~soc_sram1_bus_ack1))) begin
		soc_sram1_bus_ack1 <= 1'd1;
	end
	soc_slave_sel_r <= soc_slave_sel;
	case (vns_netsoc_grant)
		1'd0: begin
			if ((~vns_netsoc_request[0])) begin
				if (vns_netsoc_request[1]) begin
					vns_netsoc_grant <= 1'd1;
				end
			end
		end
		1'd1: begin
			if ((~vns_netsoc_request[1])) begin
				if (vns_netsoc_request[0]) begin
					vns_netsoc_grant <= 1'd0;
				end
			end
		end
	endcase
	vns_netsoc_slave_sel_r <= vns_netsoc_slave_sel;
	if (vns_netsoc_wait) begin
		if ((~vns_netsoc_done)) begin
			vns_netsoc_count <= (vns_netsoc_count - 1'd1);
		end
	end else begin
		vns_netsoc_count <= 17'd65536;
	end
	vns_netsoc_interface0_bank_bus_dat_r <= 1'd0;
	if (vns_netsoc_csrbank0_sel) begin
		case (vns_netsoc_interface0_bank_bus_adr[3:0])
			1'd0: begin
				vns_netsoc_interface0_bank_bus_dat_r <= soc_netsoc_ctrl_reset_reset_w;
			end
			1'd1: begin
				vns_netsoc_interface0_bank_bus_dat_r <= vns_netsoc_csrbank0_scratch3_w;
			end
			2'd2: begin
				vns_netsoc_interface0_bank_bus_dat_r <= vns_netsoc_csrbank0_scratch2_w;
			end
			2'd3: begin
				vns_netsoc_interface0_bank_bus_dat_r <= vns_netsoc_csrbank0_scratch1_w;
			end
			3'd4: begin
				vns_netsoc_interface0_bank_bus_dat_r <= vns_netsoc_csrbank0_scratch0_w;
			end
			3'd5: begin
				vns_netsoc_interface0_bank_bus_dat_r <= vns_netsoc_csrbank0_bus_errors3_w;
			end
			3'd6: begin
				vns_netsoc_interface0_bank_bus_dat_r <= vns_netsoc_csrbank0_bus_errors2_w;
			end
			3'd7: begin
				vns_netsoc_interface0_bank_bus_dat_r <= vns_netsoc_csrbank0_bus_errors1_w;
			end
			4'd8: begin
				vns_netsoc_interface0_bank_bus_dat_r <= vns_netsoc_csrbank0_bus_errors0_w;
			end
		endcase
	end
	if (vns_netsoc_csrbank0_scratch3_re) begin
		soc_netsoc_ctrl_storage_full[31:24] <= vns_netsoc_csrbank0_scratch3_r;
	end
	if (vns_netsoc_csrbank0_scratch2_re) begin
		soc_netsoc_ctrl_storage_full[23:16] <= vns_netsoc_csrbank0_scratch2_r;
	end
	if (vns_netsoc_csrbank0_scratch1_re) begin
		soc_netsoc_ctrl_storage_full[15:8] <= vns_netsoc_csrbank0_scratch1_r;
	end
	if (vns_netsoc_csrbank0_scratch0_re) begin
		soc_netsoc_ctrl_storage_full[7:0] <= vns_netsoc_csrbank0_scratch0_r;
	end
	soc_netsoc_ctrl_re <= vns_netsoc_csrbank0_scratch0_re;
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
				vns_netsoc_interface1_bank_bus_dat_r <= soc_writer_status_w;
			end
			4'd10: begin
				vns_netsoc_interface1_bank_bus_dat_r <= soc_writer_pending_w;
			end
			4'd11: begin
				vns_netsoc_interface1_bank_bus_dat_r <= vns_netsoc_csrbank1_sram_writer_ev_enable0_w;
			end
			4'd12: begin
				vns_netsoc_interface1_bank_bus_dat_r <= soc_reader_start_w;
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
				vns_netsoc_interface1_bank_bus_dat_r <= soc_reader_eventmanager_status_w;
			end
			5'd19: begin
				vns_netsoc_interface1_bank_bus_dat_r <= soc_reader_eventmanager_pending_w;
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
		soc_writer_storage_full <= vns_netsoc_csrbank1_sram_writer_ev_enable0_r;
	end
	soc_writer_re <= vns_netsoc_csrbank1_sram_writer_ev_enable0_re;
	if (vns_netsoc_csrbank1_sram_reader_slot0_re) begin
		soc_reader_slot_storage_full <= vns_netsoc_csrbank1_sram_reader_slot0_r;
	end
	soc_reader_slot_re <= vns_netsoc_csrbank1_sram_reader_slot0_re;
	if (vns_netsoc_csrbank1_sram_reader_length1_re) begin
		soc_reader_length_storage_full[10:8] <= vns_netsoc_csrbank1_sram_reader_length1_r;
	end
	if (vns_netsoc_csrbank1_sram_reader_length0_re) begin
		soc_reader_length_storage_full[7:0] <= vns_netsoc_csrbank1_sram_reader_length0_r;
	end
	soc_reader_length_re <= vns_netsoc_csrbank1_sram_reader_length0_re;
	if (vns_netsoc_csrbank1_sram_reader_ev_enable0_re) begin
		soc_reader_eventmanager_storage_full <= vns_netsoc_csrbank1_sram_reader_ev_enable0_r;
	end
	soc_reader_eventmanager_re <= vns_netsoc_csrbank1_sram_reader_ev_enable0_re;
	vns_netsoc_interface2_bank_bus_dat_r <= 1'd0;
	if (vns_netsoc_csrbank2_sel) begin
		case (vns_netsoc_interface2_bank_bus_adr[1:0])
			1'd0: begin
				vns_netsoc_interface2_bank_bus_dat_r <= vns_netsoc_csrbank2_mode_detection_mode_w;
			end
			1'd1: begin
				vns_netsoc_interface2_bank_bus_dat_r <= vns_netsoc_csrbank2_crg_reset0_w;
			end
			2'd2: begin
				vns_netsoc_interface2_bank_bus_dat_r <= vns_netsoc_csrbank2_mdio_w0_w;
			end
			2'd3: begin
				vns_netsoc_interface2_bank_bus_dat_r <= vns_netsoc_csrbank2_mdio_r_w;
			end
		endcase
	end
	if (vns_netsoc_csrbank2_crg_reset0_re) begin
		soc_reset_storage_full <= vns_netsoc_csrbank2_crg_reset0_r;
	end
	soc_reset_re <= vns_netsoc_csrbank2_crg_reset0_re;
	if (vns_netsoc_csrbank2_mdio_w0_re) begin
		soc_storage_full[2:0] <= vns_netsoc_csrbank2_mdio_w0_r;
	end
	soc_re <= vns_netsoc_csrbank2_mdio_w0_re;
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
		endcase
	end
	vns_netsoc_interface4_bank_bus_dat_r <= 1'd0;
	if (vns_netsoc_csrbank4_sel) begin
		case (vns_netsoc_interface4_bank_bus_adr[5:0])
			1'd0: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_dfii_control0_w;
			end
			1'd1: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_dfii_pi0_command0_w;
			end
			2'd2: begin
				vns_netsoc_interface4_bank_bus_dat_r <= soc_netsoc_sdram_phaseinjector0_command_issue_w;
			end
			2'd3: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_dfii_pi0_address1_w;
			end
			3'd4: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_dfii_pi0_address0_w;
			end
			3'd5: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_dfii_pi0_baddress0_w;
			end
			3'd6: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_dfii_pi0_wrdata3_w;
			end
			3'd7: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_dfii_pi0_wrdata2_w;
			end
			4'd8: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_dfii_pi0_wrdata1_w;
			end
			4'd9: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_dfii_pi0_wrdata0_w;
			end
			4'd10: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_dfii_pi0_rddata3_w;
			end
			4'd11: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_dfii_pi0_rddata2_w;
			end
			4'd12: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_dfii_pi0_rddata1_w;
			end
			4'd13: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_dfii_pi0_rddata0_w;
			end
			4'd14: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_dfii_pi1_command0_w;
			end
			4'd15: begin
				vns_netsoc_interface4_bank_bus_dat_r <= soc_netsoc_sdram_phaseinjector1_command_issue_w;
			end
			5'd16: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_dfii_pi1_address1_w;
			end
			5'd17: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_dfii_pi1_address0_w;
			end
			5'd18: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_dfii_pi1_baddress0_w;
			end
			5'd19: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_dfii_pi1_wrdata3_w;
			end
			5'd20: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_dfii_pi1_wrdata2_w;
			end
			5'd21: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_dfii_pi1_wrdata1_w;
			end
			5'd22: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_dfii_pi1_wrdata0_w;
			end
			5'd23: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_dfii_pi1_rddata3_w;
			end
			5'd24: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_dfii_pi1_rddata2_w;
			end
			5'd25: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_dfii_pi1_rddata1_w;
			end
			5'd26: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_dfii_pi1_rddata0_w;
			end
			5'd27: begin
				vns_netsoc_interface4_bank_bus_dat_r <= soc_netsoc_sdram_bandwidth_update_w;
			end
			5'd28: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_controller_bandwidth_nreads2_w;
			end
			5'd29: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_controller_bandwidth_nreads1_w;
			end
			5'd30: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_controller_bandwidth_nreads0_w;
			end
			5'd31: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_controller_bandwidth_nwrites2_w;
			end
			6'd32: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_controller_bandwidth_nwrites1_w;
			end
			6'd33: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_controller_bandwidth_nwrites0_w;
			end
			6'd34: begin
				vns_netsoc_interface4_bank_bus_dat_r <= vns_netsoc_csrbank4_controller_bandwidth_data_width_w;
			end
		endcase
	end
	if (vns_netsoc_csrbank4_dfii_control0_re) begin
		soc_netsoc_sdram_storage_full[3:0] <= vns_netsoc_csrbank4_dfii_control0_r;
	end
	soc_netsoc_sdram_re <= vns_netsoc_csrbank4_dfii_control0_re;
	if (vns_netsoc_csrbank4_dfii_pi0_command0_re) begin
		soc_netsoc_sdram_phaseinjector0_command_storage_full[5:0] <= vns_netsoc_csrbank4_dfii_pi0_command0_r;
	end
	soc_netsoc_sdram_phaseinjector0_command_re <= vns_netsoc_csrbank4_dfii_pi0_command0_re;
	if (vns_netsoc_csrbank4_dfii_pi0_address1_re) begin
		soc_netsoc_sdram_phaseinjector0_address_storage_full[12:8] <= vns_netsoc_csrbank4_dfii_pi0_address1_r;
	end
	if (vns_netsoc_csrbank4_dfii_pi0_address0_re) begin
		soc_netsoc_sdram_phaseinjector0_address_storage_full[7:0] <= vns_netsoc_csrbank4_dfii_pi0_address0_r;
	end
	soc_netsoc_sdram_phaseinjector0_address_re <= vns_netsoc_csrbank4_dfii_pi0_address0_re;
	if (vns_netsoc_csrbank4_dfii_pi0_baddress0_re) begin
		soc_netsoc_sdram_phaseinjector0_baddress_storage_full[2:0] <= vns_netsoc_csrbank4_dfii_pi0_baddress0_r;
	end
	soc_netsoc_sdram_phaseinjector0_baddress_re <= vns_netsoc_csrbank4_dfii_pi0_baddress0_re;
	if (vns_netsoc_csrbank4_dfii_pi0_wrdata3_re) begin
		soc_netsoc_sdram_phaseinjector0_wrdata_storage_full[31:24] <= vns_netsoc_csrbank4_dfii_pi0_wrdata3_r;
	end
	if (vns_netsoc_csrbank4_dfii_pi0_wrdata2_re) begin
		soc_netsoc_sdram_phaseinjector0_wrdata_storage_full[23:16] <= vns_netsoc_csrbank4_dfii_pi0_wrdata2_r;
	end
	if (vns_netsoc_csrbank4_dfii_pi0_wrdata1_re) begin
		soc_netsoc_sdram_phaseinjector0_wrdata_storage_full[15:8] <= vns_netsoc_csrbank4_dfii_pi0_wrdata1_r;
	end
	if (vns_netsoc_csrbank4_dfii_pi0_wrdata0_re) begin
		soc_netsoc_sdram_phaseinjector0_wrdata_storage_full[7:0] <= vns_netsoc_csrbank4_dfii_pi0_wrdata0_r;
	end
	soc_netsoc_sdram_phaseinjector0_wrdata_re <= vns_netsoc_csrbank4_dfii_pi0_wrdata0_re;
	if (vns_netsoc_csrbank4_dfii_pi1_command0_re) begin
		soc_netsoc_sdram_phaseinjector1_command_storage_full[5:0] <= vns_netsoc_csrbank4_dfii_pi1_command0_r;
	end
	soc_netsoc_sdram_phaseinjector1_command_re <= vns_netsoc_csrbank4_dfii_pi1_command0_re;
	if (vns_netsoc_csrbank4_dfii_pi1_address1_re) begin
		soc_netsoc_sdram_phaseinjector1_address_storage_full[12:8] <= vns_netsoc_csrbank4_dfii_pi1_address1_r;
	end
	if (vns_netsoc_csrbank4_dfii_pi1_address0_re) begin
		soc_netsoc_sdram_phaseinjector1_address_storage_full[7:0] <= vns_netsoc_csrbank4_dfii_pi1_address0_r;
	end
	soc_netsoc_sdram_phaseinjector1_address_re <= vns_netsoc_csrbank4_dfii_pi1_address0_re;
	if (vns_netsoc_csrbank4_dfii_pi1_baddress0_re) begin
		soc_netsoc_sdram_phaseinjector1_baddress_storage_full[2:0] <= vns_netsoc_csrbank4_dfii_pi1_baddress0_r;
	end
	soc_netsoc_sdram_phaseinjector1_baddress_re <= vns_netsoc_csrbank4_dfii_pi1_baddress0_re;
	if (vns_netsoc_csrbank4_dfii_pi1_wrdata3_re) begin
		soc_netsoc_sdram_phaseinjector1_wrdata_storage_full[31:24] <= vns_netsoc_csrbank4_dfii_pi1_wrdata3_r;
	end
	if (vns_netsoc_csrbank4_dfii_pi1_wrdata2_re) begin
		soc_netsoc_sdram_phaseinjector1_wrdata_storage_full[23:16] <= vns_netsoc_csrbank4_dfii_pi1_wrdata2_r;
	end
	if (vns_netsoc_csrbank4_dfii_pi1_wrdata1_re) begin
		soc_netsoc_sdram_phaseinjector1_wrdata_storage_full[15:8] <= vns_netsoc_csrbank4_dfii_pi1_wrdata1_r;
	end
	if (vns_netsoc_csrbank4_dfii_pi1_wrdata0_re) begin
		soc_netsoc_sdram_phaseinjector1_wrdata_storage_full[7:0] <= vns_netsoc_csrbank4_dfii_pi1_wrdata0_r;
	end
	soc_netsoc_sdram_phaseinjector1_wrdata_re <= vns_netsoc_csrbank4_dfii_pi1_wrdata0_re;
	vns_netsoc_interface5_bank_bus_dat_r <= 1'd0;
	if (vns_netsoc_csrbank5_sel) begin
		case (vns_netsoc_interface5_bank_bus_adr[1:0])
			1'd0: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_bitbang0_w;
			end
			1'd1: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_miso_w;
			end
			2'd2: begin
				vns_netsoc_interface5_bank_bus_dat_r <= vns_netsoc_csrbank5_bitbang_en0_w;
			end
		endcase
	end
	if (vns_netsoc_csrbank5_bitbang0_re) begin
		soc_spiflash_bitbang_storage_full[3:0] <= vns_netsoc_csrbank5_bitbang0_r;
	end
	soc_spiflash_bitbang_re <= vns_netsoc_csrbank5_bitbang0_re;
	if (vns_netsoc_csrbank5_bitbang_en0_re) begin
		soc_spiflash_bitbang_en_storage_full <= vns_netsoc_csrbank5_bitbang_en0_r;
	end
	soc_spiflash_bitbang_en_re <= vns_netsoc_csrbank5_bitbang_en0_re;
	vns_netsoc_interface6_bank_bus_dat_r <= 1'd0;
	if (vns_netsoc_csrbank6_sel) begin
		case (vns_netsoc_interface6_bank_bus_adr[4:0])
			1'd0: begin
				vns_netsoc_interface6_bank_bus_dat_r <= vns_netsoc_csrbank6_load3_w;
			end
			1'd1: begin
				vns_netsoc_interface6_bank_bus_dat_r <= vns_netsoc_csrbank6_load2_w;
			end
			2'd2: begin
				vns_netsoc_interface6_bank_bus_dat_r <= vns_netsoc_csrbank6_load1_w;
			end
			2'd3: begin
				vns_netsoc_interface6_bank_bus_dat_r <= vns_netsoc_csrbank6_load0_w;
			end
			3'd4: begin
				vns_netsoc_interface6_bank_bus_dat_r <= vns_netsoc_csrbank6_reload3_w;
			end
			3'd5: begin
				vns_netsoc_interface6_bank_bus_dat_r <= vns_netsoc_csrbank6_reload2_w;
			end
			3'd6: begin
				vns_netsoc_interface6_bank_bus_dat_r <= vns_netsoc_csrbank6_reload1_w;
			end
			3'd7: begin
				vns_netsoc_interface6_bank_bus_dat_r <= vns_netsoc_csrbank6_reload0_w;
			end
			4'd8: begin
				vns_netsoc_interface6_bank_bus_dat_r <= vns_netsoc_csrbank6_en0_w;
			end
			4'd9: begin
				vns_netsoc_interface6_bank_bus_dat_r <= soc_netsoc_timer0_update_value_w;
			end
			4'd10: begin
				vns_netsoc_interface6_bank_bus_dat_r <= vns_netsoc_csrbank6_value3_w;
			end
			4'd11: begin
				vns_netsoc_interface6_bank_bus_dat_r <= vns_netsoc_csrbank6_value2_w;
			end
			4'd12: begin
				vns_netsoc_interface6_bank_bus_dat_r <= vns_netsoc_csrbank6_value1_w;
			end
			4'd13: begin
				vns_netsoc_interface6_bank_bus_dat_r <= vns_netsoc_csrbank6_value0_w;
			end
			4'd14: begin
				vns_netsoc_interface6_bank_bus_dat_r <= soc_netsoc_timer0_eventmanager_status_w;
			end
			4'd15: begin
				vns_netsoc_interface6_bank_bus_dat_r <= soc_netsoc_timer0_eventmanager_pending_w;
			end
			5'd16: begin
				vns_netsoc_interface6_bank_bus_dat_r <= vns_netsoc_csrbank6_ev_enable0_w;
			end
		endcase
	end
	if (vns_netsoc_csrbank6_load3_re) begin
		soc_netsoc_timer0_load_storage_full[31:24] <= vns_netsoc_csrbank6_load3_r;
	end
	if (vns_netsoc_csrbank6_load2_re) begin
		soc_netsoc_timer0_load_storage_full[23:16] <= vns_netsoc_csrbank6_load2_r;
	end
	if (vns_netsoc_csrbank6_load1_re) begin
		soc_netsoc_timer0_load_storage_full[15:8] <= vns_netsoc_csrbank6_load1_r;
	end
	if (vns_netsoc_csrbank6_load0_re) begin
		soc_netsoc_timer0_load_storage_full[7:0] <= vns_netsoc_csrbank6_load0_r;
	end
	soc_netsoc_timer0_load_re <= vns_netsoc_csrbank6_load0_re;
	if (vns_netsoc_csrbank6_reload3_re) begin
		soc_netsoc_timer0_reload_storage_full[31:24] <= vns_netsoc_csrbank6_reload3_r;
	end
	if (vns_netsoc_csrbank6_reload2_re) begin
		soc_netsoc_timer0_reload_storage_full[23:16] <= vns_netsoc_csrbank6_reload2_r;
	end
	if (vns_netsoc_csrbank6_reload1_re) begin
		soc_netsoc_timer0_reload_storage_full[15:8] <= vns_netsoc_csrbank6_reload1_r;
	end
	if (vns_netsoc_csrbank6_reload0_re) begin
		soc_netsoc_timer0_reload_storage_full[7:0] <= vns_netsoc_csrbank6_reload0_r;
	end
	soc_netsoc_timer0_reload_re <= vns_netsoc_csrbank6_reload0_re;
	if (vns_netsoc_csrbank6_en0_re) begin
		soc_netsoc_timer0_en_storage_full <= vns_netsoc_csrbank6_en0_r;
	end
	soc_netsoc_timer0_en_re <= vns_netsoc_csrbank6_en0_re;
	if (vns_netsoc_csrbank6_ev_enable0_re) begin
		soc_netsoc_timer0_eventmanager_storage_full <= vns_netsoc_csrbank6_ev_enable0_r;
	end
	soc_netsoc_timer0_eventmanager_re <= vns_netsoc_csrbank6_ev_enable0_re;
	vns_netsoc_interface7_bank_bus_dat_r <= 1'd0;
	if (vns_netsoc_csrbank7_sel) begin
		case (vns_netsoc_interface7_bank_bus_adr[2:0])
			1'd0: begin
				vns_netsoc_interface7_bank_bus_dat_r <= soc_netsoc_uart_rxtx_w;
			end
			1'd1: begin
				vns_netsoc_interface7_bank_bus_dat_r <= vns_netsoc_csrbank7_txfull_w;
			end
			2'd2: begin
				vns_netsoc_interface7_bank_bus_dat_r <= vns_netsoc_csrbank7_rxempty_w;
			end
			2'd3: begin
				vns_netsoc_interface7_bank_bus_dat_r <= soc_netsoc_uart_eventmanager_status_w;
			end
			3'd4: begin
				vns_netsoc_interface7_bank_bus_dat_r <= soc_netsoc_uart_eventmanager_pending_w;
			end
			3'd5: begin
				vns_netsoc_interface7_bank_bus_dat_r <= vns_netsoc_csrbank7_ev_enable0_w;
			end
		endcase
	end
	if (vns_netsoc_csrbank7_ev_enable0_re) begin
		soc_netsoc_uart_eventmanager_storage_full[1:0] <= vns_netsoc_csrbank7_ev_enable0_r;
	end
	soc_netsoc_uart_eventmanager_re <= vns_netsoc_csrbank7_ev_enable0_re;
	vns_netsoc_interface8_bank_bus_dat_r <= 1'd0;
	if (vns_netsoc_csrbank8_sel) begin
		case (vns_netsoc_interface8_bank_bus_adr[1:0])
			1'd0: begin
				vns_netsoc_interface8_bank_bus_dat_r <= vns_netsoc_csrbank8_tuning_word3_w;
			end
			1'd1: begin
				vns_netsoc_interface8_bank_bus_dat_r <= vns_netsoc_csrbank8_tuning_word2_w;
			end
			2'd2: begin
				vns_netsoc_interface8_bank_bus_dat_r <= vns_netsoc_csrbank8_tuning_word1_w;
			end
			2'd3: begin
				vns_netsoc_interface8_bank_bus_dat_r <= vns_netsoc_csrbank8_tuning_word0_w;
			end
		endcase
	end
	if (vns_netsoc_csrbank8_tuning_word3_re) begin
		soc_netsoc_uart_phy_storage_full[31:24] <= vns_netsoc_csrbank8_tuning_word3_r;
	end
	if (vns_netsoc_csrbank8_tuning_word2_re) begin
		soc_netsoc_uart_phy_storage_full[23:16] <= vns_netsoc_csrbank8_tuning_word2_r;
	end
	if (vns_netsoc_csrbank8_tuning_word1_re) begin
		soc_netsoc_uart_phy_storage_full[15:8] <= vns_netsoc_csrbank8_tuning_word1_r;
	end
	if (vns_netsoc_csrbank8_tuning_word0_re) begin
		soc_netsoc_uart_phy_storage_full[7:0] <= vns_netsoc_csrbank8_tuning_word0_r;
	end
	soc_netsoc_uart_phy_re <= vns_netsoc_csrbank8_tuning_word0_re;
	if (sys_rst) begin
		soc_netsoc_ctrl_storage_full <= 32'd305419896;
		soc_netsoc_ctrl_re <= 1'd0;
		soc_netsoc_ctrl_bus_errors <= 32'd0;
		soc_netsoc_rom_bus_ack <= 1'd0;
		soc_netsoc_sram_bus_ack <= 1'd0;
		soc_netsoc_interface_adr <= 14'd0;
		soc_netsoc_interface_we <= 1'd0;
		soc_netsoc_interface_dat_w <= 8'd0;
		soc_netsoc_bus_wishbone_dat_r <= 32'd0;
		soc_netsoc_bus_wishbone_ack <= 1'd0;
		soc_netsoc_counter <= 2'd0;
		serial_tx <= 1'd1;
		soc_netsoc_uart_phy_storage_full <= 32'd6597069;
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
		soc_netsoc_uart_tx_pending <= 1'd0;
		soc_netsoc_uart_tx_old_trigger <= 1'd0;
		soc_netsoc_uart_rx_pending <= 1'd0;
		soc_netsoc_uart_rx_old_trigger <= 1'd0;
		soc_netsoc_uart_eventmanager_storage_full <= 2'd0;
		soc_netsoc_uart_eventmanager_re <= 1'd0;
		soc_netsoc_uart_tx_fifo_readable <= 1'd0;
		soc_netsoc_uart_tx_fifo_level0 <= 5'd0;
		soc_netsoc_uart_tx_fifo_produce <= 4'd0;
		soc_netsoc_uart_tx_fifo_consume <= 4'd0;
		soc_netsoc_uart_rx_fifo_readable <= 1'd0;
		soc_netsoc_uart_rx_fifo_level0 <= 5'd0;
		soc_netsoc_uart_rx_fifo_produce <= 4'd0;
		soc_netsoc_uart_rx_fifo_consume <= 4'd0;
		soc_netsoc_timer0_load_storage_full <= 32'd0;
		soc_netsoc_timer0_load_re <= 1'd0;
		soc_netsoc_timer0_reload_storage_full <= 32'd0;
		soc_netsoc_timer0_reload_re <= 1'd0;
		soc_netsoc_timer0_en_storage_full <= 1'd0;
		soc_netsoc_timer0_en_re <= 1'd0;
		soc_netsoc_timer0_value_status <= 32'd0;
		soc_netsoc_timer0_zero_pending <= 1'd0;
		soc_netsoc_timer0_zero_old_trigger <= 1'd0;
		soc_netsoc_timer0_eventmanager_storage_full <= 1'd0;
		soc_netsoc_timer0_eventmanager_re <= 1'd0;
		soc_netsoc_timer0_value <= 32'd0;
		soc_dna_status <= 57'd0;
		soc_dna_cnt <= 7'd0;
		soc_spiflash_bus_ack <= 1'd0;
		soc_spiflash_bitbang_storage_full <= 4'd0;
		soc_spiflash_bitbang_re <= 1'd0;
		soc_spiflash_bitbang_en_storage_full <= 1'd0;
		soc_spiflash_bitbang_en_re <= 1'd0;
		soc_spiflash_cs_n <= 1'd1;
		soc_spiflash_clk <= 1'd0;
		soc_spiflash_dq_oe <= 1'd0;
		soc_spiflash_sr <= 32'd0;
		soc_spiflash_i1 <= 2'd0;
		soc_spiflash_dqi <= 4'd0;
		soc_spiflash_counter <= 8'd0;
		soc_ddrphy_phase_sys <= 1'd0;
		soc_ddrphy_bitslip_cnt <= 4'd0;
		soc_ddrphy_bitslip_inc <= 1'd0;
		soc_ddrphy_record2_wrdata <= 32'd0;
		soc_ddrphy_record2_wrdata_mask <= 4'd0;
		soc_ddrphy_record3_wrdata <= 32'd0;
		soc_ddrphy_record3_wrdata_mask <= 4'd0;
		soc_ddrphy_drive_dq_n1 <= 1'd0;
		soc_ddrphy_wrdata_en_d <= 1'd0;
		soc_ddrphy_rddata_sr <= 5'd0;
		soc_netsoc_sdram_storage_full <= 4'd0;
		soc_netsoc_sdram_re <= 1'd0;
		soc_netsoc_sdram_phaseinjector0_command_storage_full <= 6'd0;
		soc_netsoc_sdram_phaseinjector0_command_re <= 1'd0;
		soc_netsoc_sdram_phaseinjector0_address_storage_full <= 13'd0;
		soc_netsoc_sdram_phaseinjector0_address_re <= 1'd0;
		soc_netsoc_sdram_phaseinjector0_baddress_storage_full <= 3'd0;
		soc_netsoc_sdram_phaseinjector0_baddress_re <= 1'd0;
		soc_netsoc_sdram_phaseinjector0_wrdata_storage_full <= 32'd0;
		soc_netsoc_sdram_phaseinjector0_wrdata_re <= 1'd0;
		soc_netsoc_sdram_phaseinjector0_status <= 32'd0;
		soc_netsoc_sdram_phaseinjector1_command_storage_full <= 6'd0;
		soc_netsoc_sdram_phaseinjector1_command_re <= 1'd0;
		soc_netsoc_sdram_phaseinjector1_address_storage_full <= 13'd0;
		soc_netsoc_sdram_phaseinjector1_address_re <= 1'd0;
		soc_netsoc_sdram_phaseinjector1_baddress_storage_full <= 3'd0;
		soc_netsoc_sdram_phaseinjector1_baddress_re <= 1'd0;
		soc_netsoc_sdram_phaseinjector1_wrdata_storage_full <= 32'd0;
		soc_netsoc_sdram_phaseinjector1_wrdata_re <= 1'd0;
		soc_netsoc_sdram_phaseinjector1_status <= 32'd0;
		soc_netsoc_sdram_dfi_p0_address <= 13'd0;
		soc_netsoc_sdram_dfi_p0_bank <= 3'd0;
		soc_netsoc_sdram_dfi_p0_cas_n <= 1'd1;
		soc_netsoc_sdram_dfi_p0_cs_n <= 1'd1;
		soc_netsoc_sdram_dfi_p0_ras_n <= 1'd1;
		soc_netsoc_sdram_dfi_p0_we_n <= 1'd1;
		soc_netsoc_sdram_dfi_p0_wrdata_en <= 1'd0;
		soc_netsoc_sdram_dfi_p0_rddata_en <= 1'd0;
		soc_netsoc_sdram_dfi_p1_address <= 13'd0;
		soc_netsoc_sdram_dfi_p1_bank <= 3'd0;
		soc_netsoc_sdram_dfi_p1_cas_n <= 1'd1;
		soc_netsoc_sdram_dfi_p1_cs_n <= 1'd1;
		soc_netsoc_sdram_dfi_p1_ras_n <= 1'd1;
		soc_netsoc_sdram_dfi_p1_we_n <= 1'd1;
		soc_netsoc_sdram_dfi_p1_wrdata_en <= 1'd0;
		soc_netsoc_sdram_dfi_p1_rddata_en <= 1'd0;
		soc_netsoc_sdram_cmd_payload_a <= 13'd0;
		soc_netsoc_sdram_cmd_payload_ba <= 3'd0;
		soc_netsoc_sdram_cmd_payload_cas <= 1'd0;
		soc_netsoc_sdram_cmd_payload_ras <= 1'd0;
		soc_netsoc_sdram_cmd_payload_we <= 1'd0;
		soc_netsoc_sdram_timer_count <= 10'd586;
		soc_netsoc_sdram_generator_done <= 1'd0;
		soc_netsoc_sdram_generator_counter <= 4'd0;
		soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_level <= 4'd0;
		soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_produce <= 3'd0;
		soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_consume <= 3'd0;
		soc_netsoc_sdram_bankmachine0_cmd_buffer_source_payload_we <= 1'd0;
		soc_netsoc_sdram_bankmachine0_cmd_buffer_source_payload_addr <= 21'd0;
		soc_netsoc_sdram_bankmachine0_cmd_buffer_valid_n <= 1'd0;
		soc_netsoc_sdram_bankmachine0_cmd_buffer_first_n <= 1'd0;
		soc_netsoc_sdram_bankmachine0_cmd_buffer_last_n <= 1'd0;
		soc_netsoc_sdram_bankmachine0_row <= 13'd0;
		soc_netsoc_sdram_bankmachine0_row_opened <= 1'd0;
		soc_netsoc_sdram_bankmachine0_twtpcon_ready <= 1'd1;
		soc_netsoc_sdram_bankmachine0_twtpcon_count <= 3'd0;
		soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_level <= 4'd0;
		soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_produce <= 3'd0;
		soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_consume <= 3'd0;
		soc_netsoc_sdram_bankmachine1_cmd_buffer_source_payload_we <= 1'd0;
		soc_netsoc_sdram_bankmachine1_cmd_buffer_source_payload_addr <= 21'd0;
		soc_netsoc_sdram_bankmachine1_cmd_buffer_valid_n <= 1'd0;
		soc_netsoc_sdram_bankmachine1_cmd_buffer_first_n <= 1'd0;
		soc_netsoc_sdram_bankmachine1_cmd_buffer_last_n <= 1'd0;
		soc_netsoc_sdram_bankmachine1_row <= 13'd0;
		soc_netsoc_sdram_bankmachine1_row_opened <= 1'd0;
		soc_netsoc_sdram_bankmachine1_twtpcon_ready <= 1'd1;
		soc_netsoc_sdram_bankmachine1_twtpcon_count <= 3'd0;
		soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_level <= 4'd0;
		soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_produce <= 3'd0;
		soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_consume <= 3'd0;
		soc_netsoc_sdram_bankmachine2_cmd_buffer_source_payload_we <= 1'd0;
		soc_netsoc_sdram_bankmachine2_cmd_buffer_source_payload_addr <= 21'd0;
		soc_netsoc_sdram_bankmachine2_cmd_buffer_valid_n <= 1'd0;
		soc_netsoc_sdram_bankmachine2_cmd_buffer_first_n <= 1'd0;
		soc_netsoc_sdram_bankmachine2_cmd_buffer_last_n <= 1'd0;
		soc_netsoc_sdram_bankmachine2_row <= 13'd0;
		soc_netsoc_sdram_bankmachine2_row_opened <= 1'd0;
		soc_netsoc_sdram_bankmachine2_twtpcon_ready <= 1'd1;
		soc_netsoc_sdram_bankmachine2_twtpcon_count <= 3'd0;
		soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_level <= 4'd0;
		soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_produce <= 3'd0;
		soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_consume <= 3'd0;
		soc_netsoc_sdram_bankmachine3_cmd_buffer_source_payload_we <= 1'd0;
		soc_netsoc_sdram_bankmachine3_cmd_buffer_source_payload_addr <= 21'd0;
		soc_netsoc_sdram_bankmachine3_cmd_buffer_valid_n <= 1'd0;
		soc_netsoc_sdram_bankmachine3_cmd_buffer_first_n <= 1'd0;
		soc_netsoc_sdram_bankmachine3_cmd_buffer_last_n <= 1'd0;
		soc_netsoc_sdram_bankmachine3_row <= 13'd0;
		soc_netsoc_sdram_bankmachine3_row_opened <= 1'd0;
		soc_netsoc_sdram_bankmachine3_twtpcon_ready <= 1'd1;
		soc_netsoc_sdram_bankmachine3_twtpcon_count <= 3'd0;
		soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_level <= 4'd0;
		soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_produce <= 3'd0;
		soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_consume <= 3'd0;
		soc_netsoc_sdram_bankmachine4_cmd_buffer_source_payload_we <= 1'd0;
		soc_netsoc_sdram_bankmachine4_cmd_buffer_source_payload_addr <= 21'd0;
		soc_netsoc_sdram_bankmachine4_cmd_buffer_valid_n <= 1'd0;
		soc_netsoc_sdram_bankmachine4_cmd_buffer_first_n <= 1'd0;
		soc_netsoc_sdram_bankmachine4_cmd_buffer_last_n <= 1'd0;
		soc_netsoc_sdram_bankmachine4_row <= 13'd0;
		soc_netsoc_sdram_bankmachine4_row_opened <= 1'd0;
		soc_netsoc_sdram_bankmachine4_twtpcon_ready <= 1'd1;
		soc_netsoc_sdram_bankmachine4_twtpcon_count <= 3'd0;
		soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_level <= 4'd0;
		soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_produce <= 3'd0;
		soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_consume <= 3'd0;
		soc_netsoc_sdram_bankmachine5_cmd_buffer_source_payload_we <= 1'd0;
		soc_netsoc_sdram_bankmachine5_cmd_buffer_source_payload_addr <= 21'd0;
		soc_netsoc_sdram_bankmachine5_cmd_buffer_valid_n <= 1'd0;
		soc_netsoc_sdram_bankmachine5_cmd_buffer_first_n <= 1'd0;
		soc_netsoc_sdram_bankmachine5_cmd_buffer_last_n <= 1'd0;
		soc_netsoc_sdram_bankmachine5_row <= 13'd0;
		soc_netsoc_sdram_bankmachine5_row_opened <= 1'd0;
		soc_netsoc_sdram_bankmachine5_twtpcon_ready <= 1'd1;
		soc_netsoc_sdram_bankmachine5_twtpcon_count <= 3'd0;
		soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_level <= 4'd0;
		soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_produce <= 3'd0;
		soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_consume <= 3'd0;
		soc_netsoc_sdram_bankmachine6_cmd_buffer_source_payload_we <= 1'd0;
		soc_netsoc_sdram_bankmachine6_cmd_buffer_source_payload_addr <= 21'd0;
		soc_netsoc_sdram_bankmachine6_cmd_buffer_valid_n <= 1'd0;
		soc_netsoc_sdram_bankmachine6_cmd_buffer_first_n <= 1'd0;
		soc_netsoc_sdram_bankmachine6_cmd_buffer_last_n <= 1'd0;
		soc_netsoc_sdram_bankmachine6_row <= 13'd0;
		soc_netsoc_sdram_bankmachine6_row_opened <= 1'd0;
		soc_netsoc_sdram_bankmachine6_twtpcon_ready <= 1'd1;
		soc_netsoc_sdram_bankmachine6_twtpcon_count <= 3'd0;
		soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_level <= 4'd0;
		soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_produce <= 3'd0;
		soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_consume <= 3'd0;
		soc_netsoc_sdram_bankmachine7_cmd_buffer_source_payload_we <= 1'd0;
		soc_netsoc_sdram_bankmachine7_cmd_buffer_source_payload_addr <= 21'd0;
		soc_netsoc_sdram_bankmachine7_cmd_buffer_valid_n <= 1'd0;
		soc_netsoc_sdram_bankmachine7_cmd_buffer_first_n <= 1'd0;
		soc_netsoc_sdram_bankmachine7_cmd_buffer_last_n <= 1'd0;
		soc_netsoc_sdram_bankmachine7_row <= 13'd0;
		soc_netsoc_sdram_bankmachine7_row_opened <= 1'd0;
		soc_netsoc_sdram_bankmachine7_twtpcon_ready <= 1'd1;
		soc_netsoc_sdram_bankmachine7_twtpcon_count <= 3'd0;
		soc_netsoc_sdram_choose_cmd_grant <= 3'd0;
		soc_netsoc_sdram_choose_req_grant <= 3'd0;
		soc_netsoc_sdram_tccdcon_ready <= 1'd1;
		soc_netsoc_sdram_tccdcon_count <= 1'd0;
		soc_netsoc_sdram_twtrcon_ready <= 1'd1;
		soc_netsoc_sdram_twtrcon_count <= 3'd0;
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
		soc_netsoc_adr_offset_r <= 1'd0;
		soc_mode0 <= 1'd0;
		soc_reset_storage_full <= 1'd0;
		soc_reset_re <= 1'd0;
		soc_counter <= 9'd0;
		soc_storage_full <= 3'd0;
		soc_re <= 1'd0;
		soc_preamble_errors_status <= 32'd0;
		soc_crc_errors_status <= 32'd0;
		soc_tx_cdc_graycounter0_q <= 7'd0;
		soc_tx_cdc_graycounter0_q_binary <= 7'd0;
		soc_rx_cdc_graycounter1_q <= 7'd0;
		soc_rx_cdc_graycounter1_q_binary <= 7'd0;
		soc_writer_errors_status <= 32'd0;
		soc_writer_storage_full <= 1'd0;
		soc_writer_re <= 1'd0;
		soc_writer_counter <= 32'd0;
		soc_writer_slot <= 1'd0;
		soc_writer_fifo_level <= 2'd0;
		soc_writer_fifo_produce <= 1'd0;
		soc_writer_fifo_consume <= 1'd0;
		soc_reader_slot_storage_full <= 1'd0;
		soc_reader_slot_re <= 1'd0;
		soc_reader_length_storage_full <= 11'd0;
		soc_reader_length_re <= 1'd0;
		soc_reader_done_pending <= 1'd0;
		soc_reader_eventmanager_storage_full <= 1'd0;
		soc_reader_eventmanager_re <= 1'd0;
		soc_reader_fifo_level <= 2'd0;
		soc_reader_fifo_produce <= 1'd0;
		soc_reader_fifo_consume <= 1'd0;
		soc_reader_counter <= 11'd0;
		soc_reader_last_d <= 1'd0;
		soc_sram0_bus_ack0 <= 1'd0;
		soc_sram1_bus_ack0 <= 1'd0;
		soc_sram0_bus_ack1 <= 1'd0;
		soc_sram1_bus_ack1 <= 1'd0;
		soc_slave_sel_r <= 4'd0;
		vns_refresher_state <= 2'd0;
		vns_bankmachine0_state <= 3'd0;
		vns_bankmachine1_state <= 3'd0;
		vns_bankmachine2_state <= 3'd0;
		vns_bankmachine3_state <= 3'd0;
		vns_bankmachine4_state <= 3'd0;
		vns_bankmachine5_state <= 3'd0;
		vns_bankmachine6_state <= 3'd0;
		vns_bankmachine7_state <= 3'd0;
		vns_multiplexer_state <= 3'd0;
		vns_rbank <= 3'd0;
		vns_wbank <= 3'd0;
		vns_new_master_wdata_ready <= 1'd0;
		vns_new_master_rdata_valid0 <= 1'd0;
		vns_new_master_rdata_valid1 <= 1'd0;
		vns_new_master_rdata_valid2 <= 1'd0;
		vns_new_master_rdata_valid3 <= 1'd0;
		vns_new_master_rdata_valid4 <= 1'd0;
		vns_new_master_rdata_valid5 <= 1'd0;
		vns_cache_state <= 3'd0;
		vns_litedramwishbone2native_state <= 2'd0;
		vns_liteethphygmiimii_state <= 2'd0;
		vns_liteethmacsramwriter_state <= 3'd0;
		vns_liteethmacsramreader_state <= 2'd0;
		vns_netsoc_grant <= 1'd0;
		vns_netsoc_slave_sel_r <= 6'd0;
		vns_netsoc_count <= 17'd65536;
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
	end
	vns_xilinxmultiregimpl0_regs0 <= serial_rx;
	vns_xilinxmultiregimpl0_regs1 <= vns_xilinxmultiregimpl0_regs0;
	vns_xilinxmultiregimpl1_regs0 <= soc_toggle_i;
	vns_xilinxmultiregimpl1_regs1 <= vns_xilinxmultiregimpl1_regs0;
	vns_xilinxmultiregimpl2_regs0 <= soc_data_r;
	vns_xilinxmultiregimpl2_regs1 <= vns_xilinxmultiregimpl2_regs0;
	vns_xilinxmultiregimpl3_regs0 <= soc_ps_preamble_error_toggle_i;
	vns_xilinxmultiregimpl3_regs1 <= vns_xilinxmultiregimpl3_regs0;
	vns_xilinxmultiregimpl4_regs0 <= soc_ps_crc_error_toggle_i;
	vns_xilinxmultiregimpl4_regs1 <= vns_xilinxmultiregimpl4_regs0;
	vns_xilinxmultiregimpl6_regs0 <= soc_tx_cdc_graycounter1_q;
	vns_xilinxmultiregimpl6_regs1 <= vns_xilinxmultiregimpl6_regs0;
	vns_xilinxmultiregimpl7_regs0 <= soc_rx_cdc_graycounter0_q;
	vns_xilinxmultiregimpl7_regs1 <= vns_xilinxmultiregimpl7_regs0;
end

mor1kx #(
	.DBUS_WB_TYPE("B3_REGISTERED_FEEDBACK"),
	.FEATURE_ADDC("ENABLED"),
	.FEATURE_CMOV("ENABLED"),
	.FEATURE_DATACACHE("ENABLED"),
	.FEATURE_FFL1("ENABLED"),
	.FEATURE_INSTRUCTIONCACHE("ENABLED"),
	.FEATURE_OVERFLOW("NONE"),
	.FEATURE_RANGE("NONE"),
	.FEATURE_SYSCALL("NONE"),
	.FEATURE_TIMER("NONE"),
	.FEATURE_TRAP("NONE"),
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
	.dwbm_ack_i(soc_netsoc_mor1kx_dbus_ack),
	.dwbm_dat_i(soc_netsoc_mor1kx_dbus_dat_r),
	.dwbm_err_i(soc_netsoc_mor1kx_dbus_err),
	.dwbm_rty_i(1'd0),
	.irq_i(soc_netsoc_mor1kx_interrupt),
	.iwbm_ack_i(soc_netsoc_mor1kx_ibus_ack),
	.iwbm_dat_i(soc_netsoc_mor1kx_ibus_dat_r),
	.iwbm_err_i(soc_netsoc_mor1kx_ibus_err),
	.iwbm_rty_i(1'd0),
	.rst((sys_rst | soc_netsoc_mor1kx_reset)),
	.dwbm_adr_o(soc_netsoc_mor1kx_d_adr_o),
	.dwbm_bte_o(soc_netsoc_mor1kx_dbus_bte),
	.dwbm_cti_o(soc_netsoc_mor1kx_dbus_cti),
	.dwbm_cyc_o(soc_netsoc_mor1kx_dbus_cyc),
	.dwbm_dat_o(soc_netsoc_mor1kx_dbus_dat_w),
	.dwbm_sel_o(soc_netsoc_mor1kx_dbus_sel),
	.dwbm_stb_o(soc_netsoc_mor1kx_dbus_stb),
	.dwbm_we_o(soc_netsoc_mor1kx_dbus_we),
	.iwbm_adr_o(soc_netsoc_mor1kx_i_adr_o),
	.iwbm_bte_o(soc_netsoc_mor1kx_ibus_bte),
	.iwbm_cti_o(soc_netsoc_mor1kx_ibus_cti),
	.iwbm_cyc_o(soc_netsoc_mor1kx_ibus_cyc),
	.iwbm_dat_o(soc_netsoc_mor1kx_ibus_dat_w),
	.iwbm_sel_o(soc_netsoc_mor1kx_ibus_sel),
	.iwbm_stb_o(soc_netsoc_mor1kx_ibus_stb),
	.iwbm_we_o(soc_netsoc_mor1kx_ibus_we)
);

reg [31:0] mem[0:16383];
reg [13:0] memadr;
always @(posedge sys_clk) begin
	memadr <= soc_netsoc_rom_adr;
end

assign soc_netsoc_rom_dat_r = mem[memadr];

initial begin
	$readmemh("mem.init", mem);
end

reg [31:0] mem_1[0:8191];
reg [12:0] memadr_1;
always @(posedge sys_clk) begin
	if (soc_netsoc_sram_we[0])
		mem_1[soc_netsoc_sram_adr][7:0] <= soc_netsoc_sram_dat_w[7:0];
	if (soc_netsoc_sram_we[1])
		mem_1[soc_netsoc_sram_adr][15:8] <= soc_netsoc_sram_dat_w[15:8];
	if (soc_netsoc_sram_we[2])
		mem_1[soc_netsoc_sram_adr][23:16] <= soc_netsoc_sram_dat_w[23:16];
	if (soc_netsoc_sram_we[3])
		mem_1[soc_netsoc_sram_adr][31:24] <= soc_netsoc_sram_dat_w[31:24];
	memadr_1 <= soc_netsoc_sram_adr;
end

assign soc_netsoc_sram_dat_r = mem_1[memadr_1];

reg [9:0] storage[0:15];
reg [9:0] memdat;
reg [9:0] memdat_1;
always @(posedge sys_clk) begin
	if (soc_netsoc_uart_tx_fifo_wrport_we)
		storage[soc_netsoc_uart_tx_fifo_wrport_adr] <= soc_netsoc_uart_tx_fifo_wrport_dat_w;
	memdat <= storage[soc_netsoc_uart_tx_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
	if (soc_netsoc_uart_tx_fifo_rdport_re)
		memdat_1 <= storage[soc_netsoc_uart_tx_fifo_rdport_adr];
end

assign soc_netsoc_uart_tx_fifo_wrport_dat_r = memdat;
assign soc_netsoc_uart_tx_fifo_rdport_dat_r = memdat_1;

reg [9:0] storage_1[0:15];
reg [9:0] memdat_2;
reg [9:0] memdat_3;
always @(posedge sys_clk) begin
	if (soc_netsoc_uart_rx_fifo_wrport_we)
		storage_1[soc_netsoc_uart_rx_fifo_wrport_adr] <= soc_netsoc_uart_rx_fifo_wrport_dat_w;
	memdat_2 <= storage_1[soc_netsoc_uart_rx_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
	if (soc_netsoc_uart_rx_fifo_rdport_re)
		memdat_3 <= storage_1[soc_netsoc_uart_rx_fifo_rdport_adr];
end

assign soc_netsoc_uart_rx_fifo_wrport_dat_r = memdat_2;
assign soc_netsoc_uart_rx_fifo_rdport_dat_r = memdat_3;

reg [7:0] mem_2[0:6];
reg [2:0] memadr_2;
always @(posedge sys_clk) begin
	memadr_2 <= vns_netsoc_adr;
end

assign vns_netsoc_dat_r = mem_2[memadr_2];

initial begin
	$readmemh("mem_2.init", mem_2);
end

IBUFG IBUFG(
	.I(clk100),
	.O(soc_crg_clk100a)
);

BUFIO2 #(
	.DIVIDE(1'd1),
	.DIVIDE_BYPASS("TRUE"),
	.I_INVERT("FALSE")
) BUFIO2 (
	.I(soc_crg_clk100a),
	.DIVCLK(soc_crg_clk100b)
);

PLL_ADV #(
	.BANDWIDTH("OPTIMIZED"),
	.CLKFBOUT_MULT(3'd6),
	.CLKFBOUT_PHASE(0.0),
	.CLKIN1_PERIOD(10.0),
	.CLKIN2_PERIOD(0.0),
	.CLKOUT0_DIVIDE(2'd2),
	.CLKOUT0_DUTY_CYCLE(0.5),
	.CLKOUT0_PHASE(0.0),
	.CLKOUT1_DIVIDE(4'd9),
	.CLKOUT1_DUTY_CYCLE(0.5),
	.CLKOUT1_PHASE(0.0),
	.CLKOUT2_DIVIDE(3'd4),
	.CLKOUT2_DUTY_CYCLE(0.5),
	.CLKOUT2_PHASE(270.0),
	.CLKOUT3_DIVIDE(3'd4),
	.CLKOUT3_DUTY_CYCLE(0.5),
	.CLKOUT3_PHASE(250.0),
	.CLKOUT4_DIVIDE(4'd12),
	.CLKOUT4_DUTY_CYCLE(0.5),
	.CLKOUT4_PHASE(0.0),
	.CLKOUT5_DIVIDE(4'd8),
	.CLKOUT5_DUTY_CYCLE(0.5),
	.CLKOUT5_PHASE(0.0),
	.CLK_FEEDBACK("CLKFBOUT"),
	.COMPENSATION("INTERNAL"),
	.DIVCLK_DIVIDE(1'd1),
	.REF_JITTER(0.01),
	.SIM_DEVICE("SPARTAN6")
) crg_pll_adv (
	.CLKFBIN(soc_crg_pll_fb),
	.CLKIN1(soc_crg_clk100b),
	.CLKIN2(1'd0),
	.CLKINSEL(1'd1),
	.DADDR(1'd0),
	.DCLK(1'd0),
	.DEN(1'd0),
	.DI(1'd0),
	.DWE(1'd0),
	.REL(1'd0),
	.RST(1'd0),
	.CLKFBOUT(soc_crg_pll_fb),
	.CLKOUT0(soc_crg_unbuf_sdram_full),
	.CLKOUT1(soc_crg_unbuf_encoder),
	.CLKOUT2(soc_crg_unbuf_sdram_half_a),
	.CLKOUT3(soc_crg_unbuf_sdram_half_b),
	.CLKOUT4(soc_crg_unbuf_unused),
	.CLKOUT5(soc_crg_unbuf_sys),
	.LOCKED(soc_crg_pll_lckd)
);

BUFG sys_bufg(
	.I(soc_crg_unbuf_sys),
	.O(sys_clk)
);

BUFPLL #(
	.DIVIDE(3'd4)
) sdram_full_bufpll (
	.GCLK(sys_clk),
	.LOCKED(soc_crg_pll_lckd),
	.PLLIN(soc_crg_unbuf_sdram_full),
	.IOCLK(sdram_full_wr_clk),
	.SERDESSTROBE(soc_crg_clk4x_wr_strb)
);

BUFG sdram_half_a_bufpll(
	.I(soc_crg_unbuf_sdram_half_a),
	.O(sdram_half_clk)
);

BUFG sdram_half_b_bufpll(
	.I(soc_crg_unbuf_sdram_half_b),
	.O(soc_crg_clk_sdram_half_shifted)
);

ODDR2 #(
	.DDR_ALIGNMENT("NONE"),
	.INIT(1'd0),
	.SRTYPE("SYNC")
) ODDR2 (
	.C0(soc_crg_clk_sdram_half_shifted),
	.C1((~soc_crg_clk_sdram_half_shifted)),
	.CE(1'd1),
	.D0(1'd1),
	.D1(1'd0),
	.R(1'd0),
	.S(1'd0),
	.Q(soc_crg_output_clk)
);

OBUFDS OBUFDS(
	.I(soc_crg_output_clk),
	.O(ddram_clock_p),
	.OB(ddram_clock_n)
);

DCM_CLKGEN #(
	.CLKFXDV_DIVIDE(2'd2),
	.CLKFX_DIVIDE(3'd4),
	.CLKFX_MD_MAX(0.5),
	.CLKFX_MULTIPLY(2'd2),
	.CLKIN_PERIOD(10.0),
	.SPREAD_SPECTRUM("NONE"),
	.STARTUP_WAIT("FALSE")
) crg_periph_dcm_clkgen (
	.CLKIN(soc_crg_clk100a),
	.FREEZEDCM(1'd0),
	.RST(sys_rst),
	.CLKFX(base50_clk),
	.LOCKED(soc_crg_dcm_base50_locked)
);

BUFG encoder_bufg(
	.I(soc_crg_unbuf_encoder),
	.O(encoder_clk)
);

DNA_PORT DNA_PORT(
	.CLK(soc_dna_cnt[0]),
	.DIN(soc_dna_status[56]),
	.READ((soc_dna_cnt < 2'd2)),
	.SHIFT(1'd1),
	.DOUT(soc_dna_do)
);

assign spiflash4x_dq = soc_spiflash_oe ? soc_spiflash_o : 4'bz;
assign soc_spiflash_i0 = spiflash4x_dq;

ODDR2 #(
	.DDR_ALIGNMENT("C0"),
	.INIT(1'd0),
	.SRTYPE("ASYNC")
) ODDR2_1 (
	.C0(sdram_half_clk),
	.C1(soc_ddrphy_sdram_half_clk_n),
	.CE(1'd1),
	.D0(1'd0),
	.D1(1'd1),
	.R(1'd0),
	.S(1'd0),
	.Q(soc_ddrphy_dqs_o[0])
);

ODDR2 #(
	.DDR_ALIGNMENT("C0"),
	.INIT(1'd0),
	.SRTYPE("ASYNC")
) ODDR2_2 (
	.C0(sdram_half_clk),
	.C1(soc_ddrphy_sdram_half_clk_n),
	.CE(1'd1),
	.D0(soc_ddrphy_dqs_t_d0),
	.D1(soc_ddrphy_dqs_t_d1),
	.R(1'd0),
	.S(1'd0),
	.Q(soc_ddrphy_dqs_t[0])
);

OBUFTDS OBUFTDS(
	.I(soc_ddrphy_dqs_o[0]),
	.T(soc_ddrphy_dqs_t[0]),
	.O(ddram_dqs[0]),
	.OB(ddram_dqs_n[0])
);

ODDR2 #(
	.DDR_ALIGNMENT("C0"),
	.INIT(1'd0),
	.SRTYPE("ASYNC")
) ODDR2_3 (
	.C0(sdram_half_clk),
	.C1(soc_ddrphy_sdram_half_clk_n),
	.CE(1'd1),
	.D0(1'd0),
	.D1(1'd1),
	.R(1'd0),
	.S(1'd0),
	.Q(soc_ddrphy_dqs_o[1])
);

ODDR2 #(
	.DDR_ALIGNMENT("C0"),
	.INIT(1'd0),
	.SRTYPE("ASYNC")
) ODDR2_4 (
	.C0(sdram_half_clk),
	.C1(soc_ddrphy_sdram_half_clk_n),
	.CE(1'd1),
	.D0(soc_ddrphy_dqs_t_d0),
	.D1(soc_ddrphy_dqs_t_d1),
	.R(1'd0),
	.S(1'd0),
	.Q(soc_ddrphy_dqs_t[1])
);

OBUFTDS OBUFTDS_1(
	.I(soc_ddrphy_dqs_o[1]),
	.T(soc_ddrphy_dqs_t[1]),
	.O(ddram_dqs[1]),
	.OB(ddram_dqs_n[1])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(vns_slice_proxy0[0]),
	.D2(vns_slice_proxy1[0]),
	.D3(vns_slice_proxy2[0]),
	.D4(vns_slice_proxy3[0]),
	.IOCE(soc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(soc_ddrphy_drive_dq_n1),
	.T2(soc_ddrphy_drive_dq_n1),
	.T3(soc_ddrphy_drive_dq_n1),
	.T4(soc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(soc_ddrphy_dq_o[0]),
	.TQ(soc_ddrphy_dq_t[0])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2 (
	.BITSLIP(soc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(soc_ddrphy_dq_i[0]),
	.IOCE(soc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(soc_ddrphy_record0_rddata[16]),
	.Q2(soc_ddrphy_record0_rddata[0]),
	.Q3(soc_ddrphy_record1_rddata[16]),
	.Q4(soc_ddrphy_record1_rddata[0])
);

IOBUF IOBUF(
	.I(soc_ddrphy_dq_o[0]),
	.T(soc_ddrphy_dq_t[0]),
	.IO(ddram_dq[0]),
	.O(soc_ddrphy_dq_i[0])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_1 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(vns_slice_proxy4[1]),
	.D2(vns_slice_proxy5[1]),
	.D3(vns_slice_proxy6[1]),
	.D4(vns_slice_proxy7[1]),
	.IOCE(soc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(soc_ddrphy_drive_dq_n1),
	.T2(soc_ddrphy_drive_dq_n1),
	.T3(soc_ddrphy_drive_dq_n1),
	.T4(soc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(soc_ddrphy_dq_o[1]),
	.TQ(soc_ddrphy_dq_t[1])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_1 (
	.BITSLIP(soc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(soc_ddrphy_dq_i[1]),
	.IOCE(soc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(soc_ddrphy_record0_rddata[17]),
	.Q2(soc_ddrphy_record0_rddata[1]),
	.Q3(soc_ddrphy_record1_rddata[17]),
	.Q4(soc_ddrphy_record1_rddata[1])
);

IOBUF IOBUF_1(
	.I(soc_ddrphy_dq_o[1]),
	.T(soc_ddrphy_dq_t[1]),
	.IO(ddram_dq[1]),
	.O(soc_ddrphy_dq_i[1])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_2 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(vns_slice_proxy8[2]),
	.D2(vns_slice_proxy9[2]),
	.D3(vns_slice_proxy10[2]),
	.D4(vns_slice_proxy11[2]),
	.IOCE(soc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(soc_ddrphy_drive_dq_n1),
	.T2(soc_ddrphy_drive_dq_n1),
	.T3(soc_ddrphy_drive_dq_n1),
	.T4(soc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(soc_ddrphy_dq_o[2]),
	.TQ(soc_ddrphy_dq_t[2])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_2 (
	.BITSLIP(soc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(soc_ddrphy_dq_i[2]),
	.IOCE(soc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(soc_ddrphy_record0_rddata[18]),
	.Q2(soc_ddrphy_record0_rddata[2]),
	.Q3(soc_ddrphy_record1_rddata[18]),
	.Q4(soc_ddrphy_record1_rddata[2])
);

IOBUF IOBUF_2(
	.I(soc_ddrphy_dq_o[2]),
	.T(soc_ddrphy_dq_t[2]),
	.IO(ddram_dq[2]),
	.O(soc_ddrphy_dq_i[2])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_3 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(vns_slice_proxy12[3]),
	.D2(vns_slice_proxy13[3]),
	.D3(vns_slice_proxy14[3]),
	.D4(vns_slice_proxy15[3]),
	.IOCE(soc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(soc_ddrphy_drive_dq_n1),
	.T2(soc_ddrphy_drive_dq_n1),
	.T3(soc_ddrphy_drive_dq_n1),
	.T4(soc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(soc_ddrphy_dq_o[3]),
	.TQ(soc_ddrphy_dq_t[3])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_3 (
	.BITSLIP(soc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(soc_ddrphy_dq_i[3]),
	.IOCE(soc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(soc_ddrphy_record0_rddata[19]),
	.Q2(soc_ddrphy_record0_rddata[3]),
	.Q3(soc_ddrphy_record1_rddata[19]),
	.Q4(soc_ddrphy_record1_rddata[3])
);

IOBUF IOBUF_3(
	.I(soc_ddrphy_dq_o[3]),
	.T(soc_ddrphy_dq_t[3]),
	.IO(ddram_dq[3]),
	.O(soc_ddrphy_dq_i[3])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_4 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(vns_slice_proxy16[4]),
	.D2(vns_slice_proxy17[4]),
	.D3(vns_slice_proxy18[4]),
	.D4(vns_slice_proxy19[4]),
	.IOCE(soc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(soc_ddrphy_drive_dq_n1),
	.T2(soc_ddrphy_drive_dq_n1),
	.T3(soc_ddrphy_drive_dq_n1),
	.T4(soc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(soc_ddrphy_dq_o[4]),
	.TQ(soc_ddrphy_dq_t[4])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_4 (
	.BITSLIP(soc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(soc_ddrphy_dq_i[4]),
	.IOCE(soc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(soc_ddrphy_record0_rddata[20]),
	.Q2(soc_ddrphy_record0_rddata[4]),
	.Q3(soc_ddrphy_record1_rddata[20]),
	.Q4(soc_ddrphy_record1_rddata[4])
);

IOBUF IOBUF_4(
	.I(soc_ddrphy_dq_o[4]),
	.T(soc_ddrphy_dq_t[4]),
	.IO(ddram_dq[4]),
	.O(soc_ddrphy_dq_i[4])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_5 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(vns_slice_proxy20[5]),
	.D2(vns_slice_proxy21[5]),
	.D3(vns_slice_proxy22[5]),
	.D4(vns_slice_proxy23[5]),
	.IOCE(soc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(soc_ddrphy_drive_dq_n1),
	.T2(soc_ddrphy_drive_dq_n1),
	.T3(soc_ddrphy_drive_dq_n1),
	.T4(soc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(soc_ddrphy_dq_o[5]),
	.TQ(soc_ddrphy_dq_t[5])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_5 (
	.BITSLIP(soc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(soc_ddrphy_dq_i[5]),
	.IOCE(soc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(soc_ddrphy_record0_rddata[21]),
	.Q2(soc_ddrphy_record0_rddata[5]),
	.Q3(soc_ddrphy_record1_rddata[21]),
	.Q4(soc_ddrphy_record1_rddata[5])
);

IOBUF IOBUF_5(
	.I(soc_ddrphy_dq_o[5]),
	.T(soc_ddrphy_dq_t[5]),
	.IO(ddram_dq[5]),
	.O(soc_ddrphy_dq_i[5])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_6 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(vns_slice_proxy24[6]),
	.D2(vns_slice_proxy25[6]),
	.D3(vns_slice_proxy26[6]),
	.D4(vns_slice_proxy27[6]),
	.IOCE(soc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(soc_ddrphy_drive_dq_n1),
	.T2(soc_ddrphy_drive_dq_n1),
	.T3(soc_ddrphy_drive_dq_n1),
	.T4(soc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(soc_ddrphy_dq_o[6]),
	.TQ(soc_ddrphy_dq_t[6])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_6 (
	.BITSLIP(soc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(soc_ddrphy_dq_i[6]),
	.IOCE(soc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(soc_ddrphy_record0_rddata[22]),
	.Q2(soc_ddrphy_record0_rddata[6]),
	.Q3(soc_ddrphy_record1_rddata[22]),
	.Q4(soc_ddrphy_record1_rddata[6])
);

IOBUF IOBUF_6(
	.I(soc_ddrphy_dq_o[6]),
	.T(soc_ddrphy_dq_t[6]),
	.IO(ddram_dq[6]),
	.O(soc_ddrphy_dq_i[6])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_7 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(vns_slice_proxy28[7]),
	.D2(vns_slice_proxy29[7]),
	.D3(vns_slice_proxy30[7]),
	.D4(vns_slice_proxy31[7]),
	.IOCE(soc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(soc_ddrphy_drive_dq_n1),
	.T2(soc_ddrphy_drive_dq_n1),
	.T3(soc_ddrphy_drive_dq_n1),
	.T4(soc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(soc_ddrphy_dq_o[7]),
	.TQ(soc_ddrphy_dq_t[7])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_7 (
	.BITSLIP(soc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(soc_ddrphy_dq_i[7]),
	.IOCE(soc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(soc_ddrphy_record0_rddata[23]),
	.Q2(soc_ddrphy_record0_rddata[7]),
	.Q3(soc_ddrphy_record1_rddata[23]),
	.Q4(soc_ddrphy_record1_rddata[7])
);

IOBUF IOBUF_7(
	.I(soc_ddrphy_dq_o[7]),
	.T(soc_ddrphy_dq_t[7]),
	.IO(ddram_dq[7]),
	.O(soc_ddrphy_dq_i[7])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_8 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(vns_slice_proxy32[8]),
	.D2(vns_slice_proxy33[8]),
	.D3(vns_slice_proxy34[8]),
	.D4(vns_slice_proxy35[8]),
	.IOCE(soc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(soc_ddrphy_drive_dq_n1),
	.T2(soc_ddrphy_drive_dq_n1),
	.T3(soc_ddrphy_drive_dq_n1),
	.T4(soc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(soc_ddrphy_dq_o[8]),
	.TQ(soc_ddrphy_dq_t[8])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_8 (
	.BITSLIP(soc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(soc_ddrphy_dq_i[8]),
	.IOCE(soc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(soc_ddrphy_record0_rddata[24]),
	.Q2(soc_ddrphy_record0_rddata[8]),
	.Q3(soc_ddrphy_record1_rddata[24]),
	.Q4(soc_ddrphy_record1_rddata[8])
);

IOBUF IOBUF_8(
	.I(soc_ddrphy_dq_o[8]),
	.T(soc_ddrphy_dq_t[8]),
	.IO(ddram_dq[8]),
	.O(soc_ddrphy_dq_i[8])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_9 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(vns_slice_proxy36[9]),
	.D2(vns_slice_proxy37[9]),
	.D3(vns_slice_proxy38[9]),
	.D4(vns_slice_proxy39[9]),
	.IOCE(soc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(soc_ddrphy_drive_dq_n1),
	.T2(soc_ddrphy_drive_dq_n1),
	.T3(soc_ddrphy_drive_dq_n1),
	.T4(soc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(soc_ddrphy_dq_o[9]),
	.TQ(soc_ddrphy_dq_t[9])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_9 (
	.BITSLIP(soc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(soc_ddrphy_dq_i[9]),
	.IOCE(soc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(soc_ddrphy_record0_rddata[25]),
	.Q2(soc_ddrphy_record0_rddata[9]),
	.Q3(soc_ddrphy_record1_rddata[25]),
	.Q4(soc_ddrphy_record1_rddata[9])
);

IOBUF IOBUF_9(
	.I(soc_ddrphy_dq_o[9]),
	.T(soc_ddrphy_dq_t[9]),
	.IO(ddram_dq[9]),
	.O(soc_ddrphy_dq_i[9])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_10 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(vns_slice_proxy40[10]),
	.D2(vns_slice_proxy41[10]),
	.D3(vns_slice_proxy42[10]),
	.D4(vns_slice_proxy43[10]),
	.IOCE(soc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(soc_ddrphy_drive_dq_n1),
	.T2(soc_ddrphy_drive_dq_n1),
	.T3(soc_ddrphy_drive_dq_n1),
	.T4(soc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(soc_ddrphy_dq_o[10]),
	.TQ(soc_ddrphy_dq_t[10])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_10 (
	.BITSLIP(soc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(soc_ddrphy_dq_i[10]),
	.IOCE(soc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(soc_ddrphy_record0_rddata[26]),
	.Q2(soc_ddrphy_record0_rddata[10]),
	.Q3(soc_ddrphy_record1_rddata[26]),
	.Q4(soc_ddrphy_record1_rddata[10])
);

IOBUF IOBUF_10(
	.I(soc_ddrphy_dq_o[10]),
	.T(soc_ddrphy_dq_t[10]),
	.IO(ddram_dq[10]),
	.O(soc_ddrphy_dq_i[10])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_11 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(vns_slice_proxy44[11]),
	.D2(vns_slice_proxy45[11]),
	.D3(vns_slice_proxy46[11]),
	.D4(vns_slice_proxy47[11]),
	.IOCE(soc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(soc_ddrphy_drive_dq_n1),
	.T2(soc_ddrphy_drive_dq_n1),
	.T3(soc_ddrphy_drive_dq_n1),
	.T4(soc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(soc_ddrphy_dq_o[11]),
	.TQ(soc_ddrphy_dq_t[11])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_11 (
	.BITSLIP(soc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(soc_ddrphy_dq_i[11]),
	.IOCE(soc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(soc_ddrphy_record0_rddata[27]),
	.Q2(soc_ddrphy_record0_rddata[11]),
	.Q3(soc_ddrphy_record1_rddata[27]),
	.Q4(soc_ddrphy_record1_rddata[11])
);

IOBUF IOBUF_11(
	.I(soc_ddrphy_dq_o[11]),
	.T(soc_ddrphy_dq_t[11]),
	.IO(ddram_dq[11]),
	.O(soc_ddrphy_dq_i[11])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_12 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(vns_slice_proxy48[12]),
	.D2(vns_slice_proxy49[12]),
	.D3(vns_slice_proxy50[12]),
	.D4(vns_slice_proxy51[12]),
	.IOCE(soc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(soc_ddrphy_drive_dq_n1),
	.T2(soc_ddrphy_drive_dq_n1),
	.T3(soc_ddrphy_drive_dq_n1),
	.T4(soc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(soc_ddrphy_dq_o[12]),
	.TQ(soc_ddrphy_dq_t[12])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_12 (
	.BITSLIP(soc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(soc_ddrphy_dq_i[12]),
	.IOCE(soc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(soc_ddrphy_record0_rddata[28]),
	.Q2(soc_ddrphy_record0_rddata[12]),
	.Q3(soc_ddrphy_record1_rddata[28]),
	.Q4(soc_ddrphy_record1_rddata[12])
);

IOBUF IOBUF_12(
	.I(soc_ddrphy_dq_o[12]),
	.T(soc_ddrphy_dq_t[12]),
	.IO(ddram_dq[12]),
	.O(soc_ddrphy_dq_i[12])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_13 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(vns_slice_proxy52[13]),
	.D2(vns_slice_proxy53[13]),
	.D3(vns_slice_proxy54[13]),
	.D4(vns_slice_proxy55[13]),
	.IOCE(soc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(soc_ddrphy_drive_dq_n1),
	.T2(soc_ddrphy_drive_dq_n1),
	.T3(soc_ddrphy_drive_dq_n1),
	.T4(soc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(soc_ddrphy_dq_o[13]),
	.TQ(soc_ddrphy_dq_t[13])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_13 (
	.BITSLIP(soc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(soc_ddrphy_dq_i[13]),
	.IOCE(soc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(soc_ddrphy_record0_rddata[29]),
	.Q2(soc_ddrphy_record0_rddata[13]),
	.Q3(soc_ddrphy_record1_rddata[29]),
	.Q4(soc_ddrphy_record1_rddata[13])
);

IOBUF IOBUF_13(
	.I(soc_ddrphy_dq_o[13]),
	.T(soc_ddrphy_dq_t[13]),
	.IO(ddram_dq[13]),
	.O(soc_ddrphy_dq_i[13])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_14 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(vns_slice_proxy56[14]),
	.D2(vns_slice_proxy57[14]),
	.D3(vns_slice_proxy58[14]),
	.D4(vns_slice_proxy59[14]),
	.IOCE(soc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(soc_ddrphy_drive_dq_n1),
	.T2(soc_ddrphy_drive_dq_n1),
	.T3(soc_ddrphy_drive_dq_n1),
	.T4(soc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(soc_ddrphy_dq_o[14]),
	.TQ(soc_ddrphy_dq_t[14])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_14 (
	.BITSLIP(soc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(soc_ddrphy_dq_i[14]),
	.IOCE(soc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(soc_ddrphy_record0_rddata[30]),
	.Q2(soc_ddrphy_record0_rddata[14]),
	.Q3(soc_ddrphy_record1_rddata[30]),
	.Q4(soc_ddrphy_record1_rddata[14])
);

IOBUF IOBUF_14(
	.I(soc_ddrphy_dq_o[14]),
	.T(soc_ddrphy_dq_t[14]),
	.IO(ddram_dq[14]),
	.O(soc_ddrphy_dq_i[14])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_15 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(vns_slice_proxy60[15]),
	.D2(vns_slice_proxy61[15]),
	.D3(vns_slice_proxy62[15]),
	.D4(vns_slice_proxy63[15]),
	.IOCE(soc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(soc_ddrphy_drive_dq_n1),
	.T2(soc_ddrphy_drive_dq_n1),
	.T3(soc_ddrphy_drive_dq_n1),
	.T4(soc_ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(soc_ddrphy_dq_o[15]),
	.TQ(soc_ddrphy_dq_t[15])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_15 (
	.BITSLIP(soc_ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(soc_ddrphy_dq_i[15]),
	.IOCE(soc_ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(soc_ddrphy_record0_rddata[31]),
	.Q2(soc_ddrphy_record0_rddata[15]),
	.Q3(soc_ddrphy_record1_rddata[31]),
	.Q4(soc_ddrphy_record1_rddata[15])
);

IOBUF IOBUF_15(
	.I(soc_ddrphy_dq_o[15]),
	.T(soc_ddrphy_dq_t[15]),
	.IO(ddram_dq[15]),
	.O(soc_ddrphy_dq_i[15])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_16 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(vns_slice_proxy64[0]),
	.D2(vns_slice_proxy65[0]),
	.D3(vns_slice_proxy66[0]),
	.D4(vns_slice_proxy67[0]),
	.IOCE(soc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.TCE(1'd0),
	.TRAIN(1'd0),
	.OQ(ddram_dm[0])
);

OSERDES2 #(
	.DATA_RATE_OQ("SDR"),
	.DATA_RATE_OT("SDR"),
	.DATA_WIDTH(3'd4),
	.OUTPUT_MODE("SINGLE_ENDED"),
	.SERDES_MODE("NONE")
) OSERDES2_17 (
	.CLK0(sdram_full_wr_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D1(vns_slice_proxy68[1]),
	.D2(vns_slice_proxy69[1]),
	.D3(vns_slice_proxy70[1]),
	.D4(vns_slice_proxy71[1]),
	.IOCE(soc_ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.TCE(1'd0),
	.TRAIN(1'd0),
	.OQ(ddram_dm[1])
);

reg [23:0] storage_2[0:7];
reg [23:0] memdat_4;
always @(posedge sys_clk) begin
	if (soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_we)
		storage_2[soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr] <= soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_w;
	memdat_4 <= storage_2[soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_r = memdat_4;
assign soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_dat_r = storage_2[soc_netsoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_3[0:7];
reg [23:0] memdat_5;
always @(posedge sys_clk) begin
	if (soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_we)
		storage_3[soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr] <= soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_w;
	memdat_5 <= storage_3[soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_r = memdat_5;
assign soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_dat_r = storage_3[soc_netsoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_4[0:7];
reg [23:0] memdat_6;
always @(posedge sys_clk) begin
	if (soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_we)
		storage_4[soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr] <= soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_w;
	memdat_6 <= storage_4[soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_r = memdat_6;
assign soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_dat_r = storage_4[soc_netsoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_5[0:7];
reg [23:0] memdat_7;
always @(posedge sys_clk) begin
	if (soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_we)
		storage_5[soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr] <= soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_w;
	memdat_7 <= storage_5[soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_r = memdat_7;
assign soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_dat_r = storage_5[soc_netsoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_6[0:7];
reg [23:0] memdat_8;
always @(posedge sys_clk) begin
	if (soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_we)
		storage_6[soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr] <= soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_dat_w;
	memdat_8 <= storage_6[soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_dat_r = memdat_8;
assign soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_rdport_dat_r = storage_6[soc_netsoc_sdram_bankmachine4_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_7[0:7];
reg [23:0] memdat_9;
always @(posedge sys_clk) begin
	if (soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_we)
		storage_7[soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr] <= soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_dat_w;
	memdat_9 <= storage_7[soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_dat_r = memdat_9;
assign soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_rdport_dat_r = storage_7[soc_netsoc_sdram_bankmachine5_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_8[0:7];
reg [23:0] memdat_10;
always @(posedge sys_clk) begin
	if (soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_we)
		storage_8[soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr] <= soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_dat_w;
	memdat_10 <= storage_8[soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_dat_r = memdat_10;
assign soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_rdport_dat_r = storage_8[soc_netsoc_sdram_bankmachine6_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_9[0:7];
reg [23:0] memdat_11;
always @(posedge sys_clk) begin
	if (soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_we)
		storage_9[soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr] <= soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_dat_w;
	memdat_11 <= storage_9[soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_dat_r = memdat_11;
assign soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_rdport_dat_r = storage_9[soc_netsoc_sdram_bankmachine7_cmd_buffer_lookahead_rdport_adr];

reg [63:0] data_mem[0:1023];
reg [9:0] memadr_3;
always @(posedge sys_clk) begin
	if (soc_netsoc_data_port_we[0])
		data_mem[soc_netsoc_data_port_adr][7:0] <= soc_netsoc_data_port_dat_w[7:0];
	if (soc_netsoc_data_port_we[1])
		data_mem[soc_netsoc_data_port_adr][15:8] <= soc_netsoc_data_port_dat_w[15:8];
	if (soc_netsoc_data_port_we[2])
		data_mem[soc_netsoc_data_port_adr][23:16] <= soc_netsoc_data_port_dat_w[23:16];
	if (soc_netsoc_data_port_we[3])
		data_mem[soc_netsoc_data_port_adr][31:24] <= soc_netsoc_data_port_dat_w[31:24];
	if (soc_netsoc_data_port_we[4])
		data_mem[soc_netsoc_data_port_adr][39:32] <= soc_netsoc_data_port_dat_w[39:32];
	if (soc_netsoc_data_port_we[5])
		data_mem[soc_netsoc_data_port_adr][47:40] <= soc_netsoc_data_port_dat_w[47:40];
	if (soc_netsoc_data_port_we[6])
		data_mem[soc_netsoc_data_port_adr][55:48] <= soc_netsoc_data_port_dat_w[55:48];
	if (soc_netsoc_data_port_we[7])
		data_mem[soc_netsoc_data_port_adr][63:56] <= soc_netsoc_data_port_dat_w[63:56];
	memadr_3 <= soc_netsoc_data_port_adr;
end

assign soc_netsoc_data_port_dat_r = data_mem[memadr_3];

reg [21:0] tag_mem[0:1023];
reg [9:0] memadr_4;
always @(posedge sys_clk) begin
	if (soc_netsoc_tag_port_we)
		tag_mem[soc_netsoc_tag_port_adr] <= soc_netsoc_tag_port_dat_w;
	memadr_4 <= soc_netsoc_tag_port_adr;
end

assign soc_netsoc_tag_port_dat_r = tag_mem[memadr_4];

BUFGMUX BUFGMUX(
	.I0(eth_rx_clk),
	.I1(eth_clocks_tx),
	.S((soc_mode0 == 1'd1)),
	.O(eth_tx_clk)
);

assign eth_mdio = soc_data_oe ? soc_data_w : 1'bz;
assign soc_data_r = eth_mdio;

reg [11:0] storage_10[0:4];
reg [11:0] memdat_12;
always @(posedge eth_rx_clk) begin
	if (soc_crc32_checker_syncfifo_wrport_we)
		storage_10[soc_crc32_checker_syncfifo_wrport_adr] <= soc_crc32_checker_syncfifo_wrport_dat_w;
	memdat_12 <= storage_10[soc_crc32_checker_syncfifo_wrport_adr];
end

always @(posedge eth_rx_clk) begin
end

assign soc_crc32_checker_syncfifo_wrport_dat_r = memdat_12;
assign soc_crc32_checker_syncfifo_rdport_dat_r = storage_10[soc_crc32_checker_syncfifo_rdport_adr];

reg [41:0] storage_11[0:63];
reg [5:0] memadr_5;
reg [5:0] memadr_6;
always @(posedge sys_clk) begin
	if (soc_tx_cdc_wrport_we)
		storage_11[soc_tx_cdc_wrport_adr] <= soc_tx_cdc_wrport_dat_w;
	memadr_5 <= soc_tx_cdc_wrport_adr;
end

always @(posedge eth_tx_clk) begin
	memadr_6 <= soc_tx_cdc_rdport_adr;
end

assign soc_tx_cdc_wrport_dat_r = storage_11[memadr_5];
assign soc_tx_cdc_rdport_dat_r = storage_11[memadr_6];

reg [41:0] storage_12[0:63];
reg [5:0] memadr_7;
reg [5:0] memadr_8;
always @(posedge eth_rx_clk) begin
	if (soc_rx_cdc_wrport_we)
		storage_12[soc_rx_cdc_wrport_adr] <= soc_rx_cdc_wrport_dat_w;
	memadr_7 <= soc_rx_cdc_wrport_adr;
end

always @(posedge sys_clk) begin
	memadr_8 <= soc_rx_cdc_rdport_adr;
end

assign soc_rx_cdc_wrport_dat_r = storage_12[memadr_7];
assign soc_rx_cdc_rdport_dat_r = storage_12[memadr_8];

reg [34:0] storage_13[0:1];
reg [34:0] memdat_13;
always @(posedge sys_clk) begin
	if (soc_writer_fifo_wrport_we)
		storage_13[soc_writer_fifo_wrport_adr] <= soc_writer_fifo_wrport_dat_w;
	memdat_13 <= storage_13[soc_writer_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_writer_fifo_wrport_dat_r = memdat_13;
assign soc_writer_fifo_rdport_dat_r = storage_13[soc_writer_fifo_rdport_adr];

reg [31:0] mem_3[0:381];
reg [8:0] memadr_9;
reg [8:0] memadr_10;
always @(posedge sys_clk) begin
	if (soc_writer_memory0_we)
		mem_3[soc_writer_memory0_adr] <= soc_writer_memory0_dat_w;
	memadr_9 <= soc_writer_memory0_adr;
end

always @(posedge sys_clk) begin
	memadr_10 <= soc_sram0_adr0;
end

assign soc_writer_memory0_dat_r = mem_3[memadr_9];
assign soc_sram0_dat_r0 = mem_3[memadr_10];

reg [31:0] mem_4[0:381];
reg [8:0] memadr_11;
reg [8:0] memadr_12;
always @(posedge sys_clk) begin
	if (soc_writer_memory1_we)
		mem_4[soc_writer_memory1_adr] <= soc_writer_memory1_dat_w;
	memadr_11 <= soc_writer_memory1_adr;
end

always @(posedge sys_clk) begin
	memadr_12 <= soc_sram1_adr0;
end

assign soc_writer_memory1_dat_r = mem_4[memadr_11];
assign soc_sram1_dat_r0 = mem_4[memadr_12];

reg [13:0] storage_14[0:1];
reg [13:0] memdat_14;
always @(posedge sys_clk) begin
	if (soc_reader_fifo_wrport_we)
		storage_14[soc_reader_fifo_wrport_adr] <= soc_reader_fifo_wrport_dat_w;
	memdat_14 <= storage_14[soc_reader_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_reader_fifo_wrport_dat_r = memdat_14;
assign soc_reader_fifo_rdport_dat_r = storage_14[soc_reader_fifo_rdport_adr];

reg [7:0] mem_grain0[0:381];
reg [8:0] memadr_13;
reg [8:0] memadr_14;
always @(posedge sys_clk) begin
	memadr_13 <= soc_reader_memory0_adr;
end

always @(posedge sys_clk) begin
	if (soc_sram0_we[0])
		mem_grain0[soc_sram0_adr1] <= soc_sram0_dat_w[7:0];
	memadr_14 <= soc_sram0_adr1;
end

assign soc_reader_memory0_dat_r[7:0] = mem_grain0[memadr_13];
assign soc_sram0_dat_r1[7:0] = mem_grain0[memadr_14];

reg [7:0] mem_grain1[0:381];
reg [8:0] memadr_15;
reg [8:0] memadr_16;
always @(posedge sys_clk) begin
	memadr_15 <= soc_reader_memory0_adr;
end

always @(posedge sys_clk) begin
	if (soc_sram0_we[1])
		mem_grain1[soc_sram0_adr1] <= soc_sram0_dat_w[15:8];
	memadr_16 <= soc_sram0_adr1;
end

assign soc_reader_memory0_dat_r[15:8] = mem_grain1[memadr_15];
assign soc_sram0_dat_r1[15:8] = mem_grain1[memadr_16];

reg [7:0] mem_grain2[0:381];
reg [8:0] memadr_17;
reg [8:0] memadr_18;
always @(posedge sys_clk) begin
	memadr_17 <= soc_reader_memory0_adr;
end

always @(posedge sys_clk) begin
	if (soc_sram0_we[2])
		mem_grain2[soc_sram0_adr1] <= soc_sram0_dat_w[23:16];
	memadr_18 <= soc_sram0_adr1;
end

assign soc_reader_memory0_dat_r[23:16] = mem_grain2[memadr_17];
assign soc_sram0_dat_r1[23:16] = mem_grain2[memadr_18];

reg [7:0] mem_grain3[0:381];
reg [8:0] memadr_19;
reg [8:0] memadr_20;
always @(posedge sys_clk) begin
	memadr_19 <= soc_reader_memory0_adr;
end

always @(posedge sys_clk) begin
	if (soc_sram0_we[3])
		mem_grain3[soc_sram0_adr1] <= soc_sram0_dat_w[31:24];
	memadr_20 <= soc_sram0_adr1;
end

assign soc_reader_memory0_dat_r[31:24] = mem_grain3[memadr_19];
assign soc_sram0_dat_r1[31:24] = mem_grain3[memadr_20];

reg [7:0] mem_grain0_1[0:381];
reg [8:0] memadr_21;
reg [8:0] memadr_22;
always @(posedge sys_clk) begin
	memadr_21 <= soc_reader_memory1_adr;
end

always @(posedge sys_clk) begin
	if (soc_sram1_we[0])
		mem_grain0_1[soc_sram1_adr1] <= soc_sram1_dat_w[7:0];
	memadr_22 <= soc_sram1_adr1;
end

assign soc_reader_memory1_dat_r[7:0] = mem_grain0_1[memadr_21];
assign soc_sram1_dat_r1[7:0] = mem_grain0_1[memadr_22];

reg [7:0] mem_grain1_1[0:381];
reg [8:0] memadr_23;
reg [8:0] memadr_24;
always @(posedge sys_clk) begin
	memadr_23 <= soc_reader_memory1_adr;
end

always @(posedge sys_clk) begin
	if (soc_sram1_we[1])
		mem_grain1_1[soc_sram1_adr1] <= soc_sram1_dat_w[15:8];
	memadr_24 <= soc_sram1_adr1;
end

assign soc_reader_memory1_dat_r[15:8] = mem_grain1_1[memadr_23];
assign soc_sram1_dat_r1[15:8] = mem_grain1_1[memadr_24];

reg [7:0] mem_grain2_1[0:381];
reg [8:0] memadr_25;
reg [8:0] memadr_26;
always @(posedge sys_clk) begin
	memadr_25 <= soc_reader_memory1_adr;
end

always @(posedge sys_clk) begin
	if (soc_sram1_we[2])
		mem_grain2_1[soc_sram1_adr1] <= soc_sram1_dat_w[23:16];
	memadr_26 <= soc_sram1_adr1;
end

assign soc_reader_memory1_dat_r[23:16] = mem_grain2_1[memadr_25];
assign soc_sram1_dat_r1[23:16] = mem_grain2_1[memadr_26];

reg [7:0] mem_grain3_1[0:381];
reg [8:0] memadr_27;
reg [8:0] memadr_28;
always @(posedge sys_clk) begin
	memadr_27 <= soc_reader_memory1_adr;
end

always @(posedge sys_clk) begin
	if (soc_sram1_we[3])
		mem_grain3_1[soc_sram1_adr1] <= soc_sram1_dat_w[31:24];
	memadr_28 <= soc_sram1_adr1;
end

assign soc_reader_memory1_dat_r[31:24] = mem_grain3_1[memadr_27];
assign soc_sram1_dat_r1[31:24] = mem_grain3_1[memadr_28];

FDPE #(
	.INIT(1'd1)
) FDPE (
	.C(por_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(vns_xilinxasyncresetsynchronizerimpl0),
	.Q(vns_xilinxasyncresetsynchronizerimpl0_rst_meta)
);

FDPE #(
	.INIT(1'd1)
) FDPE_1 (
	.C(por_clk),
	.CE(1'd1),
	.D(vns_xilinxasyncresetsynchronizerimpl0_rst_meta),
	.PRE(vns_xilinxasyncresetsynchronizerimpl0),
	.Q(por_rst)
);

FDPE #(
	.INIT(1'd1)
) FDPE_2 (
	.C(sys_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(vns_xilinxasyncresetsynchronizerimpl1),
	.Q(vns_xilinxasyncresetsynchronizerimpl1_rst_meta)
);

FDPE #(
	.INIT(1'd1)
) FDPE_3 (
	.C(sys_clk),
	.CE(1'd1),
	.D(vns_xilinxasyncresetsynchronizerimpl1_rst_meta),
	.PRE(vns_xilinxasyncresetsynchronizerimpl1),
	.Q(sys_rst)
);

FDPE #(
	.INIT(1'd1)
) FDPE_4 (
	.C(base50_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(vns_xilinxasyncresetsynchronizerimpl2),
	.Q(vns_xilinxasyncresetsynchronizerimpl2_rst_meta)
);

FDPE #(
	.INIT(1'd1)
) FDPE_5 (
	.C(base50_clk),
	.CE(1'd1),
	.D(vns_xilinxasyncresetsynchronizerimpl2_rst_meta),
	.PRE(vns_xilinxasyncresetsynchronizerimpl2),
	.Q(base50_rst)
);

FDPE #(
	.INIT(1'd1)
) FDPE_6 (
	.C(encoder_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(sys_rst),
	.Q(vns_xilinxasyncresetsynchronizerimpl3_rst_meta)
);

FDPE #(
	.INIT(1'd1)
) FDPE_7 (
	.C(encoder_clk),
	.CE(1'd1),
	.D(vns_xilinxasyncresetsynchronizerimpl3_rst_meta),
	.PRE(sys_rst),
	.Q(encoder_rst)
);

ODDR2 #(
	.DDR_ALIGNMENT("C0"),
	.INIT(1'd0),
	.SRTYPE("ASYNC")
) ODDR2_5 (
	.C0(eth_tx_clk),
	.C1((~eth_tx_clk)),
	.CE(1'd1),
	.D0(1'd1),
	.D1((soc_mode0 == 1'd1)),
	.R(1'd0),
	.S(1'd0),
	.Q(eth_clocks_gtx)
);

FDPE #(
	.INIT(1'd1)
) FDPE_8 (
	.C(eth_tx_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(soc_reset0),
	.Q(vns_xilinxasyncresetsynchronizerimpl4_rst_meta)
);

FDPE #(
	.INIT(1'd1)
) FDPE_9 (
	.C(eth_tx_clk),
	.CE(1'd1),
	.D(vns_xilinxasyncresetsynchronizerimpl4_rst_meta),
	.PRE(soc_reset0),
	.Q(eth_tx_rst)
);

FDPE #(
	.INIT(1'd1)
) FDPE_10 (
	.C(eth_rx_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(soc_reset0),
	.Q(vns_xilinxasyncresetsynchronizerimpl5_rst_meta)
);

FDPE #(
	.INIT(1'd1)
) FDPE_11 (
	.C(eth_rx_clk),
	.CE(1'd1),
	.D(vns_xilinxasyncresetsynchronizerimpl5_rst_meta),
	.PRE(soc_reset0),
	.Q(eth_rx_rst)
);

endmodule
