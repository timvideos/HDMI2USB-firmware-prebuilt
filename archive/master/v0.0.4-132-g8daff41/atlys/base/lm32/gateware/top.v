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
	output reg ddram_odt
);

wire [29:0] basesoc_ibus_adr;
wire [31:0] basesoc_ibus_dat_w;
wire [31:0] basesoc_ibus_dat_r;
wire [3:0] basesoc_ibus_sel;
wire basesoc_ibus_cyc;
wire basesoc_ibus_stb;
wire basesoc_ibus_ack;
wire basesoc_ibus_we;
wire [2:0] basesoc_ibus_cti;
wire [1:0] basesoc_ibus_bte;
wire basesoc_ibus_err;
wire [29:0] basesoc_dbus_adr;
wire [31:0] basesoc_dbus_dat_w;
wire [31:0] basesoc_dbus_dat_r;
wire [3:0] basesoc_dbus_sel;
wire basesoc_dbus_cyc;
wire basesoc_dbus_stb;
wire basesoc_dbus_ack;
wire basesoc_dbus_we;
wire [2:0] basesoc_dbus_cti;
wire [1:0] basesoc_dbus_bte;
wire basesoc_dbus_err;
reg [31:0] basesoc_interrupt = 32'd0;
wire [31:0] basesoc_i_adr_o;
wire [31:0] basesoc_d_adr_o;
wire [29:0] basesoc_rom_bus_adr;
wire [31:0] basesoc_rom_bus_dat_w;
wire [31:0] basesoc_rom_bus_dat_r;
wire [3:0] basesoc_rom_bus_sel;
wire basesoc_rom_bus_cyc;
wire basesoc_rom_bus_stb;
reg basesoc_rom_bus_ack = 1'd0;
wire basesoc_rom_bus_we;
wire [2:0] basesoc_rom_bus_cti;
wire [1:0] basesoc_rom_bus_bte;
reg basesoc_rom_bus_err = 1'd0;
wire [12:0] basesoc_rom_adr;
wire [31:0] basesoc_rom_dat_r;
wire [29:0] basesoc_sram_bus_adr;
wire [31:0] basesoc_sram_bus_dat_w;
wire [31:0] basesoc_sram_bus_dat_r;
wire [3:0] basesoc_sram_bus_sel;
wire basesoc_sram_bus_cyc;
wire basesoc_sram_bus_stb;
reg basesoc_sram_bus_ack = 1'd0;
wire basesoc_sram_bus_we;
wire [2:0] basesoc_sram_bus_cti;
wire [1:0] basesoc_sram_bus_bte;
reg basesoc_sram_bus_err = 1'd0;
wire [11:0] basesoc_sram_adr;
wire [31:0] basesoc_sram_dat_r;
reg [3:0] basesoc_sram_we = 4'd0;
wire [31:0] basesoc_sram_dat_w;
reg [13:0] basesoc_interface_adr = 14'd0;
reg basesoc_interface_we = 1'd0;
reg [7:0] basesoc_interface_dat_w = 8'd0;
wire [7:0] basesoc_interface_dat_r;
wire [29:0] basesoc_bus_wishbone_adr;
wire [31:0] basesoc_bus_wishbone_dat_w;
reg [31:0] basesoc_bus_wishbone_dat_r = 32'd0;
wire [3:0] basesoc_bus_wishbone_sel;
wire basesoc_bus_wishbone_cyc;
wire basesoc_bus_wishbone_stb;
reg basesoc_bus_wishbone_ack = 1'd0;
wire basesoc_bus_wishbone_we;
wire [2:0] basesoc_bus_wishbone_cti;
wire [1:0] basesoc_bus_wishbone_bte;
reg basesoc_bus_wishbone_err = 1'd0;
reg [1:0] basesoc_counter = 2'd0;
reg [31:0] basesoc_uart_phy_storage_full = 32'd6597069;
wire [31:0] basesoc_uart_phy_storage;
reg basesoc_uart_phy_re = 1'd0;
wire basesoc_uart_phy_sink_valid;
reg basesoc_uart_phy_sink_ready = 1'd0;
wire basesoc_uart_phy_sink_first;
wire basesoc_uart_phy_sink_last;
wire [7:0] basesoc_uart_phy_sink_payload_data;
reg basesoc_uart_phy_uart_clk_txen = 1'd0;
reg [31:0] basesoc_uart_phy_phase_accumulator_tx = 32'd0;
reg [7:0] basesoc_uart_phy_tx_reg = 8'd0;
reg [3:0] basesoc_uart_phy_tx_bitcount = 4'd0;
reg basesoc_uart_phy_tx_busy = 1'd0;
reg basesoc_uart_phy_source_valid = 1'd0;
wire basesoc_uart_phy_source_ready;
reg basesoc_uart_phy_source_first = 1'd0;
reg basesoc_uart_phy_source_last = 1'd0;
reg [7:0] basesoc_uart_phy_source_payload_data = 8'd0;
reg basesoc_uart_phy_uart_clk_rxen = 1'd0;
reg [31:0] basesoc_uart_phy_phase_accumulator_rx = 32'd0;
wire basesoc_uart_phy_rx;
reg basesoc_uart_phy_rx_r = 1'd0;
reg [7:0] basesoc_uart_phy_rx_reg = 8'd0;
reg [3:0] basesoc_uart_phy_rx_bitcount = 4'd0;
reg basesoc_uart_phy_rx_busy = 1'd0;
wire basesoc_uart_rxtx_re;
wire [7:0] basesoc_uart_rxtx_r;
wire [7:0] basesoc_uart_rxtx_w;
wire basesoc_uart_txfull_status;
wire basesoc_uart_rxempty_status;
wire basesoc_uart_irq;
wire basesoc_uart_tx_status;
reg basesoc_uart_tx_pending = 1'd0;
wire basesoc_uart_tx_trigger;
reg basesoc_uart_tx_clear = 1'd0;
reg basesoc_uart_tx_old_trigger = 1'd0;
wire basesoc_uart_rx_status;
reg basesoc_uart_rx_pending = 1'd0;
wire basesoc_uart_rx_trigger;
reg basesoc_uart_rx_clear = 1'd0;
reg basesoc_uart_rx_old_trigger = 1'd0;
wire basesoc_uart_status_re;
wire [1:0] basesoc_uart_status_r;
reg [1:0] basesoc_uart_status_w = 2'd0;
wire basesoc_uart_pending_re;
wire [1:0] basesoc_uart_pending_r;
reg [1:0] basesoc_uart_pending_w = 2'd0;
reg [1:0] basesoc_uart_storage_full = 2'd0;
wire [1:0] basesoc_uart_storage;
reg basesoc_uart_re = 1'd0;
wire basesoc_uart_tx_fifo_sink_valid;
wire basesoc_uart_tx_fifo_sink_ready;
reg basesoc_uart_tx_fifo_sink_first = 1'd0;
reg basesoc_uart_tx_fifo_sink_last = 1'd0;
wire [7:0] basesoc_uart_tx_fifo_sink_payload_data;
wire basesoc_uart_tx_fifo_source_valid;
wire basesoc_uart_tx_fifo_source_ready;
wire basesoc_uart_tx_fifo_source_first;
wire basesoc_uart_tx_fifo_source_last;
wire [7:0] basesoc_uart_tx_fifo_source_payload_data;
wire basesoc_uart_tx_fifo_syncfifo_we;
wire basesoc_uart_tx_fifo_syncfifo_writable;
wire basesoc_uart_tx_fifo_syncfifo_re;
wire basesoc_uart_tx_fifo_syncfifo_readable;
wire [9:0] basesoc_uart_tx_fifo_syncfifo_din;
wire [9:0] basesoc_uart_tx_fifo_syncfifo_dout;
reg [4:0] basesoc_uart_tx_fifo_level = 5'd0;
reg basesoc_uart_tx_fifo_replace = 1'd0;
reg [3:0] basesoc_uart_tx_fifo_produce = 4'd0;
reg [3:0] basesoc_uart_tx_fifo_consume = 4'd0;
reg [3:0] basesoc_uart_tx_fifo_wrport_adr = 4'd0;
wire [9:0] basesoc_uart_tx_fifo_wrport_dat_r;
wire basesoc_uart_tx_fifo_wrport_we;
wire [9:0] basesoc_uart_tx_fifo_wrport_dat_w;
wire basesoc_uart_tx_fifo_do_read;
wire [3:0] basesoc_uart_tx_fifo_rdport_adr;
wire [9:0] basesoc_uart_tx_fifo_rdport_dat_r;
wire [7:0] basesoc_uart_tx_fifo_fifo_in_payload_data;
wire basesoc_uart_tx_fifo_fifo_in_first;
wire basesoc_uart_tx_fifo_fifo_in_last;
wire [7:0] basesoc_uart_tx_fifo_fifo_out_payload_data;
wire basesoc_uart_tx_fifo_fifo_out_first;
wire basesoc_uart_tx_fifo_fifo_out_last;
wire basesoc_uart_rx_fifo_sink_valid;
wire basesoc_uart_rx_fifo_sink_ready;
wire basesoc_uart_rx_fifo_sink_first;
wire basesoc_uart_rx_fifo_sink_last;
wire [7:0] basesoc_uart_rx_fifo_sink_payload_data;
wire basesoc_uart_rx_fifo_source_valid;
wire basesoc_uart_rx_fifo_source_ready;
wire basesoc_uart_rx_fifo_source_first;
wire basesoc_uart_rx_fifo_source_last;
wire [7:0] basesoc_uart_rx_fifo_source_payload_data;
wire basesoc_uart_rx_fifo_syncfifo_we;
wire basesoc_uart_rx_fifo_syncfifo_writable;
wire basesoc_uart_rx_fifo_syncfifo_re;
wire basesoc_uart_rx_fifo_syncfifo_readable;
wire [9:0] basesoc_uart_rx_fifo_syncfifo_din;
wire [9:0] basesoc_uart_rx_fifo_syncfifo_dout;
reg [4:0] basesoc_uart_rx_fifo_level = 5'd0;
reg basesoc_uart_rx_fifo_replace = 1'd0;
reg [3:0] basesoc_uart_rx_fifo_produce = 4'd0;
reg [3:0] basesoc_uart_rx_fifo_consume = 4'd0;
reg [3:0] basesoc_uart_rx_fifo_wrport_adr = 4'd0;
wire [9:0] basesoc_uart_rx_fifo_wrport_dat_r;
wire basesoc_uart_rx_fifo_wrport_we;
wire [9:0] basesoc_uart_rx_fifo_wrport_dat_w;
wire basesoc_uart_rx_fifo_do_read;
wire [3:0] basesoc_uart_rx_fifo_rdport_adr;
wire [9:0] basesoc_uart_rx_fifo_rdport_dat_r;
wire [7:0] basesoc_uart_rx_fifo_fifo_in_payload_data;
wire basesoc_uart_rx_fifo_fifo_in_first;
wire basesoc_uart_rx_fifo_fifo_in_last;
wire [7:0] basesoc_uart_rx_fifo_fifo_out_payload_data;
wire basesoc_uart_rx_fifo_fifo_out_first;
wire basesoc_uart_rx_fifo_fifo_out_last;
reg [31:0] basesoc_timer0_load_storage_full = 32'd0;
wire [31:0] basesoc_timer0_load_storage;
reg basesoc_timer0_load_re = 1'd0;
reg [31:0] basesoc_timer0_reload_storage_full = 32'd0;
wire [31:0] basesoc_timer0_reload_storage;
reg basesoc_timer0_reload_re = 1'd0;
reg basesoc_timer0_en_storage_full = 1'd0;
wire basesoc_timer0_en_storage;
reg basesoc_timer0_en_re = 1'd0;
wire basesoc_timer0_update_value_re;
wire basesoc_timer0_update_value_r;
reg basesoc_timer0_update_value_w = 1'd0;
reg [31:0] basesoc_timer0_value_status = 32'd0;
wire basesoc_timer0_irq;
wire basesoc_timer0_zero_status;
reg basesoc_timer0_zero_pending = 1'd0;
wire basesoc_timer0_zero_trigger;
reg basesoc_timer0_zero_clear = 1'd0;
reg basesoc_timer0_zero_old_trigger = 1'd0;
wire basesoc_timer0_eventmanager_status_re;
wire basesoc_timer0_eventmanager_status_r;
wire basesoc_timer0_eventmanager_status_w;
wire basesoc_timer0_eventmanager_pending_re;
wire basesoc_timer0_eventmanager_pending_r;
wire basesoc_timer0_eventmanager_pending_w;
reg basesoc_timer0_eventmanager_storage_full = 1'd0;
wire basesoc_timer0_eventmanager_storage;
reg basesoc_timer0_eventmanager_re = 1'd0;
reg [31:0] basesoc_timer0_value = 32'd0;
wire [29:0] interface0_wb_sdram_adr;
wire [31:0] interface0_wb_sdram_dat_w;
reg [31:0] interface0_wb_sdram_dat_r = 32'd0;
wire [3:0] interface0_wb_sdram_sel;
wire interface0_wb_sdram_cyc;
wire interface0_wb_sdram_stb;
reg interface0_wb_sdram_ack = 1'd0;
wire interface0_wb_sdram_we;
wire [2:0] interface0_wb_sdram_cti;
wire [1:0] interface0_wb_sdram_bte;
reg interface0_wb_sdram_err = 1'd0;
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
reg crg_reset = 1'd0;
wire crg_clk100a;
wire crg_clk100b;
wire crg_unbuf_sdram_full;
wire crg_unbuf_sdram_half_a;
wire crg_unbuf_sdram_half_b;
wire crg_unbuf_encoder;
wire crg_unbuf_sys;
wire crg_unbuf_unused;
wire crg_pll_lckd;
wire crg_pll_fb;
wire por_clk;
wire por_rst;
reg [10:0] crg_por = 11'd2047;
wire crg_clk4x_wr_strb;
wire crg_clk4x_rd_strb;
wire crg_clk_sdram_half_shifted;
wire crg_output_clk;
wire crg_dcm_base50_locked;
reg [56:0] dna_status = 57'd0;
wire dna_do;
reg [6:0] dna_cnt = 7'd0;
wire [159:0] git_status;
wire [63:0] platform_status;
wire [63:0] target_status;
wire [29:0] bus_adr;
wire [31:0] bus_dat_w;
wire [31:0] bus_dat_r;
wire [3:0] bus_sel;
wire bus_cyc;
wire bus_stb;
reg bus_ack = 1'd0;
wire bus_we;
wire [2:0] bus_cti;
wire [1:0] bus_bte;
reg bus_err = 1'd0;
reg [3:0] bitbang_storage_full = 4'd0;
wire [3:0] bitbang_storage;
reg bitbang_re = 1'd0;
reg status = 1'd0;
reg bitbang_en_storage_full = 1'd0;
wire bitbang_en_storage;
reg bitbang_en_re = 1'd0;
reg cs_n = 1'd1;
reg clk = 1'd0;
reg dq_oe = 1'd0;
reg [3:0] o = 4'd0;
reg oe = 1'd0;
wire [3:0] i0;
reg [31:0] sr = 32'd0;
reg [1:0] i1 = 2'd0;
reg [3:0] dqi = 4'd0;
reg [7:0] counter = 8'd0;
wire [12:0] ddrphy_dfi_p0_address;
wire [2:0] ddrphy_dfi_p0_bank;
wire ddrphy_dfi_p0_cas_n;
wire ddrphy_dfi_p0_cs_n;
wire ddrphy_dfi_p0_ras_n;
wire ddrphy_dfi_p0_we_n;
wire ddrphy_dfi_p0_cke;
wire ddrphy_dfi_p0_odt;
wire ddrphy_dfi_p0_reset_n;
wire [31:0] ddrphy_dfi_p0_wrdata;
wire ddrphy_dfi_p0_wrdata_en;
wire [3:0] ddrphy_dfi_p0_wrdata_mask;
wire ddrphy_dfi_p0_rddata_en;
wire [31:0] ddrphy_dfi_p0_rddata;
wire ddrphy_dfi_p0_rddata_valid;
wire [12:0] ddrphy_dfi_p1_address;
wire [2:0] ddrphy_dfi_p1_bank;
wire ddrphy_dfi_p1_cas_n;
wire ddrphy_dfi_p1_cs_n;
wire ddrphy_dfi_p1_ras_n;
wire ddrphy_dfi_p1_we_n;
wire ddrphy_dfi_p1_cke;
wire ddrphy_dfi_p1_odt;
wire ddrphy_dfi_p1_reset_n;
wire [31:0] ddrphy_dfi_p1_wrdata;
wire ddrphy_dfi_p1_wrdata_en;
wire [3:0] ddrphy_dfi_p1_wrdata_mask;
wire ddrphy_dfi_p1_rddata_en;
wire [31:0] ddrphy_dfi_p1_rddata;
wire ddrphy_dfi_p1_rddata_valid;
wire ddrphy_clk4x_wr_strb;
wire ddrphy_clk4x_rd_strb;
reg ddrphy_phase_sel = 1'd0;
reg ddrphy_phase_half = 1'd0;
reg ddrphy_phase_sys = 1'd0;
reg [12:0] ddrphy_record0_address = 13'd0;
reg [2:0] ddrphy_record0_bank = 3'd0;
reg ddrphy_record0_cas_n = 1'd0;
reg ddrphy_record0_cs_n = 1'd0;
reg ddrphy_record0_ras_n = 1'd0;
reg ddrphy_record0_we_n = 1'd0;
reg ddrphy_record0_cke = 1'd0;
reg ddrphy_record0_odt = 1'd0;
reg ddrphy_record0_reset_n = 1'd0;
reg [12:0] ddrphy_record1_address = 13'd0;
reg [2:0] ddrphy_record1_bank = 3'd0;
reg ddrphy_record1_cas_n = 1'd0;
reg ddrphy_record1_cs_n = 1'd0;
reg ddrphy_record1_ras_n = 1'd0;
reg ddrphy_record1_we_n = 1'd0;
reg ddrphy_record1_cke = 1'd0;
reg ddrphy_record1_odt = 1'd0;
reg ddrphy_record1_reset_n = 1'd0;
reg [3:0] ddrphy_bitslip_cnt = 4'd0;
reg ddrphy_bitslip_inc = 1'd0;
wire ddrphy_sdram_half_clk_n;
reg ddrphy_postamble = 1'd0;
wire ddrphy_drive_dqs;
wire ddrphy_dqs_t_d0;
wire ddrphy_dqs_t_d1;
wire [1:0] ddrphy_dqs_o;
wire [1:0] ddrphy_dqs_t;
wire [31:0] ddrphy_record0_wrdata;
wire ddrphy_record0_wrdata_en;
wire [3:0] ddrphy_record0_wrdata_mask;
wire ddrphy_record0_rddata_en;
wire [31:0] ddrphy_record0_rddata;
wire [31:0] ddrphy_record1_wrdata;
wire ddrphy_record1_wrdata_en;
wire [3:0] ddrphy_record1_wrdata_mask;
wire ddrphy_record1_rddata_en;
wire [31:0] ddrphy_record1_rddata;
reg [31:0] ddrphy_record2_wrdata = 32'd0;
reg [3:0] ddrphy_record2_wrdata_mask = 4'd0;
reg [31:0] ddrphy_record3_wrdata = 32'd0;
reg [3:0] ddrphy_record3_wrdata_mask = 4'd0;
wire ddrphy_drive_dq;
wire ddrphy_drive_dq_n0;
reg ddrphy_drive_dq_n1 = 1'd0;
wire [15:0] ddrphy_dq_t;
wire [15:0] ddrphy_dq_o;
wire [15:0] ddrphy_dq_i;
wire ddrphy_wrdata_en;
reg ddrphy_wrdata_en_d = 1'd0;
reg [2:0] ddrphy_r_dfi_wrdata_en = 3'd0;
wire ddrphy_rddata_en;
reg [4:0] ddrphy_rddata_sr = 5'd0;
wire [12:0] controllerinjector_inti_p0_address;
wire [2:0] controllerinjector_inti_p0_bank;
reg controllerinjector_inti_p0_cas_n = 1'd1;
reg controllerinjector_inti_p0_cs_n = 1'd1;
reg controllerinjector_inti_p0_ras_n = 1'd1;
reg controllerinjector_inti_p0_we_n = 1'd1;
wire controllerinjector_inti_p0_cke;
wire controllerinjector_inti_p0_odt;
wire controllerinjector_inti_p0_reset_n;
wire [31:0] controllerinjector_inti_p0_wrdata;
wire controllerinjector_inti_p0_wrdata_en;
wire [3:0] controllerinjector_inti_p0_wrdata_mask;
wire controllerinjector_inti_p0_rddata_en;
reg [31:0] controllerinjector_inti_p0_rddata = 32'd0;
reg controllerinjector_inti_p0_rddata_valid = 1'd0;
wire [12:0] controllerinjector_inti_p1_address;
wire [2:0] controllerinjector_inti_p1_bank;
reg controllerinjector_inti_p1_cas_n = 1'd1;
reg controllerinjector_inti_p1_cs_n = 1'd1;
reg controllerinjector_inti_p1_ras_n = 1'd1;
reg controllerinjector_inti_p1_we_n = 1'd1;
wire controllerinjector_inti_p1_cke;
wire controllerinjector_inti_p1_odt;
wire controllerinjector_inti_p1_reset_n;
wire [31:0] controllerinjector_inti_p1_wrdata;
wire controllerinjector_inti_p1_wrdata_en;
wire [3:0] controllerinjector_inti_p1_wrdata_mask;
wire controllerinjector_inti_p1_rddata_en;
reg [31:0] controllerinjector_inti_p1_rddata = 32'd0;
reg controllerinjector_inti_p1_rddata_valid = 1'd0;
wire [12:0] controllerinjector_slave_p0_address;
wire [2:0] controllerinjector_slave_p0_bank;
wire controllerinjector_slave_p0_cas_n;
wire controllerinjector_slave_p0_cs_n;
wire controllerinjector_slave_p0_ras_n;
wire controllerinjector_slave_p0_we_n;
wire controllerinjector_slave_p0_cke;
wire controllerinjector_slave_p0_odt;
wire controllerinjector_slave_p0_reset_n;
wire [31:0] controllerinjector_slave_p0_wrdata;
wire controllerinjector_slave_p0_wrdata_en;
wire [3:0] controllerinjector_slave_p0_wrdata_mask;
wire controllerinjector_slave_p0_rddata_en;
reg [31:0] controllerinjector_slave_p0_rddata = 32'd0;
reg controllerinjector_slave_p0_rddata_valid = 1'd0;
wire [12:0] controllerinjector_slave_p1_address;
wire [2:0] controllerinjector_slave_p1_bank;
wire controllerinjector_slave_p1_cas_n;
wire controllerinjector_slave_p1_cs_n;
wire controllerinjector_slave_p1_ras_n;
wire controllerinjector_slave_p1_we_n;
wire controllerinjector_slave_p1_cke;
wire controllerinjector_slave_p1_odt;
wire controllerinjector_slave_p1_reset_n;
wire [31:0] controllerinjector_slave_p1_wrdata;
wire controllerinjector_slave_p1_wrdata_en;
wire [3:0] controllerinjector_slave_p1_wrdata_mask;
wire controllerinjector_slave_p1_rddata_en;
reg [31:0] controllerinjector_slave_p1_rddata = 32'd0;
reg controllerinjector_slave_p1_rddata_valid = 1'd0;
reg [12:0] controllerinjector_master_p0_address = 13'd0;
reg [2:0] controllerinjector_master_p0_bank = 3'd0;
reg controllerinjector_master_p0_cas_n = 1'd1;
reg controllerinjector_master_p0_cs_n = 1'd1;
reg controllerinjector_master_p0_ras_n = 1'd1;
reg controllerinjector_master_p0_we_n = 1'd1;
reg controllerinjector_master_p0_cke = 1'd0;
reg controllerinjector_master_p0_odt = 1'd0;
reg controllerinjector_master_p0_reset_n = 1'd0;
reg [31:0] controllerinjector_master_p0_wrdata = 32'd0;
reg controllerinjector_master_p0_wrdata_en = 1'd0;
reg [3:0] controllerinjector_master_p0_wrdata_mask = 4'd0;
reg controllerinjector_master_p0_rddata_en = 1'd0;
wire [31:0] controllerinjector_master_p0_rddata;
wire controllerinjector_master_p0_rddata_valid;
reg [12:0] controllerinjector_master_p1_address = 13'd0;
reg [2:0] controllerinjector_master_p1_bank = 3'd0;
reg controllerinjector_master_p1_cas_n = 1'd1;
reg controllerinjector_master_p1_cs_n = 1'd1;
reg controllerinjector_master_p1_ras_n = 1'd1;
reg controllerinjector_master_p1_we_n = 1'd1;
reg controllerinjector_master_p1_cke = 1'd0;
reg controllerinjector_master_p1_odt = 1'd0;
reg controllerinjector_master_p1_reset_n = 1'd0;
reg [31:0] controllerinjector_master_p1_wrdata = 32'd0;
reg controllerinjector_master_p1_wrdata_en = 1'd0;
reg [3:0] controllerinjector_master_p1_wrdata_mask = 4'd0;
reg controllerinjector_master_p1_rddata_en = 1'd0;
wire [31:0] controllerinjector_master_p1_rddata;
wire controllerinjector_master_p1_rddata_valid;
reg [3:0] controllerinjector_storage_full = 4'd0;
wire [3:0] controllerinjector_storage;
reg controllerinjector_re = 1'd0;
reg [5:0] controllerinjector_phaseinjector0_command_storage_full = 6'd0;
wire [5:0] controllerinjector_phaseinjector0_command_storage;
reg controllerinjector_phaseinjector0_command_re = 1'd0;
wire controllerinjector_phaseinjector0_command_issue_re;
wire controllerinjector_phaseinjector0_command_issue_r;
reg controllerinjector_phaseinjector0_command_issue_w = 1'd0;
reg [12:0] controllerinjector_phaseinjector0_address_storage_full = 13'd0;
wire [12:0] controllerinjector_phaseinjector0_address_storage;
reg controllerinjector_phaseinjector0_address_re = 1'd0;
reg [2:0] controllerinjector_phaseinjector0_baddress_storage_full = 3'd0;
wire [2:0] controllerinjector_phaseinjector0_baddress_storage;
reg controllerinjector_phaseinjector0_baddress_re = 1'd0;
reg [31:0] controllerinjector_phaseinjector0_wrdata_storage_full = 32'd0;
wire [31:0] controllerinjector_phaseinjector0_wrdata_storage;
reg controllerinjector_phaseinjector0_wrdata_re = 1'd0;
reg [31:0] controllerinjector_phaseinjector0_status = 32'd0;
reg [5:0] controllerinjector_phaseinjector1_command_storage_full = 6'd0;
wire [5:0] controllerinjector_phaseinjector1_command_storage;
reg controllerinjector_phaseinjector1_command_re = 1'd0;
wire controllerinjector_phaseinjector1_command_issue_re;
wire controllerinjector_phaseinjector1_command_issue_r;
reg controllerinjector_phaseinjector1_command_issue_w = 1'd0;
reg [12:0] controllerinjector_phaseinjector1_address_storage_full = 13'd0;
wire [12:0] controllerinjector_phaseinjector1_address_storage;
reg controllerinjector_phaseinjector1_address_re = 1'd0;
reg [2:0] controllerinjector_phaseinjector1_baddress_storage_full = 3'd0;
wire [2:0] controllerinjector_phaseinjector1_baddress_storage;
reg controllerinjector_phaseinjector1_baddress_re = 1'd0;
reg [31:0] controllerinjector_phaseinjector1_wrdata_storage_full = 32'd0;
wire [31:0] controllerinjector_phaseinjector1_wrdata_storage;
reg controllerinjector_phaseinjector1_wrdata_re = 1'd0;
reg [31:0] controllerinjector_phaseinjector1_status = 32'd0;
reg [12:0] controllerinjector_dfi_p0_address = 13'd0;
reg [2:0] controllerinjector_dfi_p0_bank = 3'd0;
reg controllerinjector_dfi_p0_cas_n = 1'd1;
wire controllerinjector_dfi_p0_cs_n;
reg controllerinjector_dfi_p0_ras_n = 1'd1;
reg controllerinjector_dfi_p0_we_n = 1'd1;
wire controllerinjector_dfi_p0_cke;
wire controllerinjector_dfi_p0_odt;
wire controllerinjector_dfi_p0_reset_n;
wire [31:0] controllerinjector_dfi_p0_wrdata;
reg controllerinjector_dfi_p0_wrdata_en = 1'd0;
wire [3:0] controllerinjector_dfi_p0_wrdata_mask;
reg controllerinjector_dfi_p0_rddata_en = 1'd0;
wire [31:0] controllerinjector_dfi_p0_rddata;
wire controllerinjector_dfi_p0_rddata_valid;
reg [12:0] controllerinjector_dfi_p1_address = 13'd0;
reg [2:0] controllerinjector_dfi_p1_bank = 3'd0;
reg controllerinjector_dfi_p1_cas_n = 1'd1;
wire controllerinjector_dfi_p1_cs_n;
reg controllerinjector_dfi_p1_ras_n = 1'd1;
reg controllerinjector_dfi_p1_we_n = 1'd1;
wire controllerinjector_dfi_p1_cke;
wire controllerinjector_dfi_p1_odt;
wire controllerinjector_dfi_p1_reset_n;
wire [31:0] controllerinjector_dfi_p1_wrdata;
reg controllerinjector_dfi_p1_wrdata_en = 1'd0;
wire [3:0] controllerinjector_dfi_p1_wrdata_mask;
reg controllerinjector_dfi_p1_rddata_en = 1'd0;
wire [31:0] controllerinjector_dfi_p1_rddata;
wire controllerinjector_dfi_p1_rddata_valid;
wire controllerinjector_interface_bank0_valid;
wire controllerinjector_interface_bank0_ready;
wire controllerinjector_interface_bank0_we;
wire [20:0] controllerinjector_interface_bank0_adr;
wire controllerinjector_interface_bank0_lock;
wire controllerinjector_interface_bank0_wdata_ready;
wire controllerinjector_interface_bank0_rdata_valid;
wire controllerinjector_interface_bank1_valid;
wire controllerinjector_interface_bank1_ready;
wire controllerinjector_interface_bank1_we;
wire [20:0] controllerinjector_interface_bank1_adr;
wire controllerinjector_interface_bank1_lock;
wire controllerinjector_interface_bank1_wdata_ready;
wire controllerinjector_interface_bank1_rdata_valid;
wire controllerinjector_interface_bank2_valid;
wire controllerinjector_interface_bank2_ready;
wire controllerinjector_interface_bank2_we;
wire [20:0] controllerinjector_interface_bank2_adr;
wire controllerinjector_interface_bank2_lock;
wire controllerinjector_interface_bank2_wdata_ready;
wire controllerinjector_interface_bank2_rdata_valid;
wire controllerinjector_interface_bank3_valid;
wire controllerinjector_interface_bank3_ready;
wire controllerinjector_interface_bank3_we;
wire [20:0] controllerinjector_interface_bank3_adr;
wire controllerinjector_interface_bank3_lock;
wire controllerinjector_interface_bank3_wdata_ready;
wire controllerinjector_interface_bank3_rdata_valid;
wire controllerinjector_interface_bank4_valid;
wire controllerinjector_interface_bank4_ready;
wire controllerinjector_interface_bank4_we;
wire [20:0] controllerinjector_interface_bank4_adr;
wire controllerinjector_interface_bank4_lock;
wire controllerinjector_interface_bank4_wdata_ready;
wire controllerinjector_interface_bank4_rdata_valid;
wire controllerinjector_interface_bank5_valid;
wire controllerinjector_interface_bank5_ready;
wire controllerinjector_interface_bank5_we;
wire [20:0] controllerinjector_interface_bank5_adr;
wire controllerinjector_interface_bank5_lock;
wire controllerinjector_interface_bank5_wdata_ready;
wire controllerinjector_interface_bank5_rdata_valid;
wire controllerinjector_interface_bank6_valid;
wire controllerinjector_interface_bank6_ready;
wire controllerinjector_interface_bank6_we;
wire [20:0] controllerinjector_interface_bank6_adr;
wire controllerinjector_interface_bank6_lock;
wire controllerinjector_interface_bank6_wdata_ready;
wire controllerinjector_interface_bank6_rdata_valid;
wire controllerinjector_interface_bank7_valid;
wire controllerinjector_interface_bank7_ready;
wire controllerinjector_interface_bank7_we;
wire [20:0] controllerinjector_interface_bank7_adr;
wire controllerinjector_interface_bank7_lock;
wire controllerinjector_interface_bank7_wdata_ready;
wire controllerinjector_interface_bank7_rdata_valid;
reg [63:0] controllerinjector_interface_wdata = 64'd0;
reg [7:0] controllerinjector_interface_wdata_we = 8'd0;
wire [63:0] controllerinjector_interface_rdata;
reg controllerinjector_cmd_valid = 1'd0;
reg controllerinjector_cmd_ready = 1'd0;
reg controllerinjector_cmd_last = 1'd0;
reg [12:0] controllerinjector_cmd_payload_a = 13'd0;
reg [2:0] controllerinjector_cmd_payload_ba = 3'd0;
reg controllerinjector_cmd_payload_cas = 1'd0;
reg controllerinjector_cmd_payload_ras = 1'd0;
reg controllerinjector_cmd_payload_we = 1'd0;
reg controllerinjector_cmd_payload_is_read = 1'd0;
reg controllerinjector_cmd_payload_is_write = 1'd0;
reg controllerinjector_seq_start = 1'd0;
reg controllerinjector_seq_done = 1'd0;
reg [3:0] controllerinjector_counter = 4'd0;
wire controllerinjector_wait;
wire controllerinjector_done;
reg [9:0] controllerinjector_count = 10'd585;
wire controllerinjector_bankmachine0_req_valid;
wire controllerinjector_bankmachine0_req_ready;
wire controllerinjector_bankmachine0_req_we;
wire [20:0] controllerinjector_bankmachine0_req_adr;
wire controllerinjector_bankmachine0_req_lock;
reg controllerinjector_bankmachine0_req_wdata_ready = 1'd0;
reg controllerinjector_bankmachine0_req_rdata_valid = 1'd0;
wire controllerinjector_bankmachine0_refresh_req;
reg controllerinjector_bankmachine0_refresh_gnt = 1'd0;
reg controllerinjector_bankmachine0_cmd_valid = 1'd0;
reg controllerinjector_bankmachine0_cmd_ready = 1'd0;
reg [12:0] controllerinjector_bankmachine0_cmd_payload_a = 13'd0;
wire [2:0] controllerinjector_bankmachine0_cmd_payload_ba;
reg controllerinjector_bankmachine0_cmd_payload_cas = 1'd0;
reg controllerinjector_bankmachine0_cmd_payload_ras = 1'd0;
reg controllerinjector_bankmachine0_cmd_payload_we = 1'd0;
reg controllerinjector_bankmachine0_cmd_payload_is_cmd = 1'd0;
reg controllerinjector_bankmachine0_cmd_payload_is_read = 1'd0;
reg controllerinjector_bankmachine0_cmd_payload_is_write = 1'd0;
wire controllerinjector_bankmachine0_sink_valid;
wire controllerinjector_bankmachine0_sink_ready;
reg controllerinjector_bankmachine0_sink_first = 1'd0;
reg controllerinjector_bankmachine0_sink_last = 1'd0;
wire controllerinjector_bankmachine0_sink_payload_we;
wire [20:0] controllerinjector_bankmachine0_sink_payload_adr;
wire controllerinjector_bankmachine0_source_valid;
wire controllerinjector_bankmachine0_source_ready;
wire controllerinjector_bankmachine0_source_first;
wire controllerinjector_bankmachine0_source_last;
wire controllerinjector_bankmachine0_source_payload_we;
wire [20:0] controllerinjector_bankmachine0_source_payload_adr;
wire controllerinjector_bankmachine0_syncfifo0_we;
wire controllerinjector_bankmachine0_syncfifo0_writable;
wire controllerinjector_bankmachine0_syncfifo0_re;
wire controllerinjector_bankmachine0_syncfifo0_readable;
wire [23:0] controllerinjector_bankmachine0_syncfifo0_din;
wire [23:0] controllerinjector_bankmachine0_syncfifo0_dout;
reg [3:0] controllerinjector_bankmachine0_level = 4'd0;
reg controllerinjector_bankmachine0_replace = 1'd0;
reg [2:0] controllerinjector_bankmachine0_produce = 3'd0;
reg [2:0] controllerinjector_bankmachine0_consume = 3'd0;
reg [2:0] controllerinjector_bankmachine0_wrport_adr = 3'd0;
wire [23:0] controllerinjector_bankmachine0_wrport_dat_r;
wire controllerinjector_bankmachine0_wrport_we;
wire [23:0] controllerinjector_bankmachine0_wrport_dat_w;
wire controllerinjector_bankmachine0_do_read;
wire [2:0] controllerinjector_bankmachine0_rdport_adr;
wire [23:0] controllerinjector_bankmachine0_rdport_dat_r;
wire controllerinjector_bankmachine0_fifo_in_payload_we;
wire [20:0] controllerinjector_bankmachine0_fifo_in_payload_adr;
wire controllerinjector_bankmachine0_fifo_in_first;
wire controllerinjector_bankmachine0_fifo_in_last;
wire controllerinjector_bankmachine0_fifo_out_payload_we;
wire [20:0] controllerinjector_bankmachine0_fifo_out_payload_adr;
wire controllerinjector_bankmachine0_fifo_out_first;
wire controllerinjector_bankmachine0_fifo_out_last;
reg controllerinjector_bankmachine0_has_openrow = 1'd0;
reg [12:0] controllerinjector_bankmachine0_openrow = 13'd0;
wire controllerinjector_bankmachine0_hit;
reg controllerinjector_bankmachine0_track_open = 1'd0;
reg controllerinjector_bankmachine0_track_close = 1'd0;
reg controllerinjector_bankmachine0_sel_row_adr = 1'd0;
wire controllerinjector_bankmachine0_wait;
wire controllerinjector_bankmachine0_done;
reg [2:0] controllerinjector_bankmachine0_count = 3'd4;
wire controllerinjector_bankmachine1_req_valid;
wire controllerinjector_bankmachine1_req_ready;
wire controllerinjector_bankmachine1_req_we;
wire [20:0] controllerinjector_bankmachine1_req_adr;
wire controllerinjector_bankmachine1_req_lock;
reg controllerinjector_bankmachine1_req_wdata_ready = 1'd0;
reg controllerinjector_bankmachine1_req_rdata_valid = 1'd0;
wire controllerinjector_bankmachine1_refresh_req;
reg controllerinjector_bankmachine1_refresh_gnt = 1'd0;
reg controllerinjector_bankmachine1_cmd_valid = 1'd0;
reg controllerinjector_bankmachine1_cmd_ready = 1'd0;
reg [12:0] controllerinjector_bankmachine1_cmd_payload_a = 13'd0;
wire [2:0] controllerinjector_bankmachine1_cmd_payload_ba;
reg controllerinjector_bankmachine1_cmd_payload_cas = 1'd0;
reg controllerinjector_bankmachine1_cmd_payload_ras = 1'd0;
reg controllerinjector_bankmachine1_cmd_payload_we = 1'd0;
reg controllerinjector_bankmachine1_cmd_payload_is_cmd = 1'd0;
reg controllerinjector_bankmachine1_cmd_payload_is_read = 1'd0;
reg controllerinjector_bankmachine1_cmd_payload_is_write = 1'd0;
wire controllerinjector_bankmachine1_sink_valid;
wire controllerinjector_bankmachine1_sink_ready;
reg controllerinjector_bankmachine1_sink_first = 1'd0;
reg controllerinjector_bankmachine1_sink_last = 1'd0;
wire controllerinjector_bankmachine1_sink_payload_we;
wire [20:0] controllerinjector_bankmachine1_sink_payload_adr;
wire controllerinjector_bankmachine1_source_valid;
wire controllerinjector_bankmachine1_source_ready;
wire controllerinjector_bankmachine1_source_first;
wire controllerinjector_bankmachine1_source_last;
wire controllerinjector_bankmachine1_source_payload_we;
wire [20:0] controllerinjector_bankmachine1_source_payload_adr;
wire controllerinjector_bankmachine1_syncfifo1_we;
wire controllerinjector_bankmachine1_syncfifo1_writable;
wire controllerinjector_bankmachine1_syncfifo1_re;
wire controllerinjector_bankmachine1_syncfifo1_readable;
wire [23:0] controllerinjector_bankmachine1_syncfifo1_din;
wire [23:0] controllerinjector_bankmachine1_syncfifo1_dout;
reg [3:0] controllerinjector_bankmachine1_level = 4'd0;
reg controllerinjector_bankmachine1_replace = 1'd0;
reg [2:0] controllerinjector_bankmachine1_produce = 3'd0;
reg [2:0] controllerinjector_bankmachine1_consume = 3'd0;
reg [2:0] controllerinjector_bankmachine1_wrport_adr = 3'd0;
wire [23:0] controllerinjector_bankmachine1_wrport_dat_r;
wire controllerinjector_bankmachine1_wrport_we;
wire [23:0] controllerinjector_bankmachine1_wrport_dat_w;
wire controllerinjector_bankmachine1_do_read;
wire [2:0] controllerinjector_bankmachine1_rdport_adr;
wire [23:0] controllerinjector_bankmachine1_rdport_dat_r;
wire controllerinjector_bankmachine1_fifo_in_payload_we;
wire [20:0] controllerinjector_bankmachine1_fifo_in_payload_adr;
wire controllerinjector_bankmachine1_fifo_in_first;
wire controllerinjector_bankmachine1_fifo_in_last;
wire controllerinjector_bankmachine1_fifo_out_payload_we;
wire [20:0] controllerinjector_bankmachine1_fifo_out_payload_adr;
wire controllerinjector_bankmachine1_fifo_out_first;
wire controllerinjector_bankmachine1_fifo_out_last;
reg controllerinjector_bankmachine1_has_openrow = 1'd0;
reg [12:0] controllerinjector_bankmachine1_openrow = 13'd0;
wire controllerinjector_bankmachine1_hit;
reg controllerinjector_bankmachine1_track_open = 1'd0;
reg controllerinjector_bankmachine1_track_close = 1'd0;
reg controllerinjector_bankmachine1_sel_row_adr = 1'd0;
wire controllerinjector_bankmachine1_wait;
wire controllerinjector_bankmachine1_done;
reg [2:0] controllerinjector_bankmachine1_count = 3'd4;
wire controllerinjector_bankmachine2_req_valid;
wire controllerinjector_bankmachine2_req_ready;
wire controllerinjector_bankmachine2_req_we;
wire [20:0] controllerinjector_bankmachine2_req_adr;
wire controllerinjector_bankmachine2_req_lock;
reg controllerinjector_bankmachine2_req_wdata_ready = 1'd0;
reg controllerinjector_bankmachine2_req_rdata_valid = 1'd0;
wire controllerinjector_bankmachine2_refresh_req;
reg controllerinjector_bankmachine2_refresh_gnt = 1'd0;
reg controllerinjector_bankmachine2_cmd_valid = 1'd0;
reg controllerinjector_bankmachine2_cmd_ready = 1'd0;
reg [12:0] controllerinjector_bankmachine2_cmd_payload_a = 13'd0;
wire [2:0] controllerinjector_bankmachine2_cmd_payload_ba;
reg controllerinjector_bankmachine2_cmd_payload_cas = 1'd0;
reg controllerinjector_bankmachine2_cmd_payload_ras = 1'd0;
reg controllerinjector_bankmachine2_cmd_payload_we = 1'd0;
reg controllerinjector_bankmachine2_cmd_payload_is_cmd = 1'd0;
reg controllerinjector_bankmachine2_cmd_payload_is_read = 1'd0;
reg controllerinjector_bankmachine2_cmd_payload_is_write = 1'd0;
wire controllerinjector_bankmachine2_sink_valid;
wire controllerinjector_bankmachine2_sink_ready;
reg controllerinjector_bankmachine2_sink_first = 1'd0;
reg controllerinjector_bankmachine2_sink_last = 1'd0;
wire controllerinjector_bankmachine2_sink_payload_we;
wire [20:0] controllerinjector_bankmachine2_sink_payload_adr;
wire controllerinjector_bankmachine2_source_valid;
wire controllerinjector_bankmachine2_source_ready;
wire controllerinjector_bankmachine2_source_first;
wire controllerinjector_bankmachine2_source_last;
wire controllerinjector_bankmachine2_source_payload_we;
wire [20:0] controllerinjector_bankmachine2_source_payload_adr;
wire controllerinjector_bankmachine2_syncfifo2_we;
wire controllerinjector_bankmachine2_syncfifo2_writable;
wire controllerinjector_bankmachine2_syncfifo2_re;
wire controllerinjector_bankmachine2_syncfifo2_readable;
wire [23:0] controllerinjector_bankmachine2_syncfifo2_din;
wire [23:0] controllerinjector_bankmachine2_syncfifo2_dout;
reg [3:0] controllerinjector_bankmachine2_level = 4'd0;
reg controllerinjector_bankmachine2_replace = 1'd0;
reg [2:0] controllerinjector_bankmachine2_produce = 3'd0;
reg [2:0] controllerinjector_bankmachine2_consume = 3'd0;
reg [2:0] controllerinjector_bankmachine2_wrport_adr = 3'd0;
wire [23:0] controllerinjector_bankmachine2_wrport_dat_r;
wire controllerinjector_bankmachine2_wrport_we;
wire [23:0] controllerinjector_bankmachine2_wrport_dat_w;
wire controllerinjector_bankmachine2_do_read;
wire [2:0] controllerinjector_bankmachine2_rdport_adr;
wire [23:0] controllerinjector_bankmachine2_rdport_dat_r;
wire controllerinjector_bankmachine2_fifo_in_payload_we;
wire [20:0] controllerinjector_bankmachine2_fifo_in_payload_adr;
wire controllerinjector_bankmachine2_fifo_in_first;
wire controllerinjector_bankmachine2_fifo_in_last;
wire controllerinjector_bankmachine2_fifo_out_payload_we;
wire [20:0] controllerinjector_bankmachine2_fifo_out_payload_adr;
wire controllerinjector_bankmachine2_fifo_out_first;
wire controllerinjector_bankmachine2_fifo_out_last;
reg controllerinjector_bankmachine2_has_openrow = 1'd0;
reg [12:0] controllerinjector_bankmachine2_openrow = 13'd0;
wire controllerinjector_bankmachine2_hit;
reg controllerinjector_bankmachine2_track_open = 1'd0;
reg controllerinjector_bankmachine2_track_close = 1'd0;
reg controllerinjector_bankmachine2_sel_row_adr = 1'd0;
wire controllerinjector_bankmachine2_wait;
wire controllerinjector_bankmachine2_done;
reg [2:0] controllerinjector_bankmachine2_count = 3'd4;
wire controllerinjector_bankmachine3_req_valid;
wire controllerinjector_bankmachine3_req_ready;
wire controllerinjector_bankmachine3_req_we;
wire [20:0] controllerinjector_bankmachine3_req_adr;
wire controllerinjector_bankmachine3_req_lock;
reg controllerinjector_bankmachine3_req_wdata_ready = 1'd0;
reg controllerinjector_bankmachine3_req_rdata_valid = 1'd0;
wire controllerinjector_bankmachine3_refresh_req;
reg controllerinjector_bankmachine3_refresh_gnt = 1'd0;
reg controllerinjector_bankmachine3_cmd_valid = 1'd0;
reg controllerinjector_bankmachine3_cmd_ready = 1'd0;
reg [12:0] controllerinjector_bankmachine3_cmd_payload_a = 13'd0;
wire [2:0] controllerinjector_bankmachine3_cmd_payload_ba;
reg controllerinjector_bankmachine3_cmd_payload_cas = 1'd0;
reg controllerinjector_bankmachine3_cmd_payload_ras = 1'd0;
reg controllerinjector_bankmachine3_cmd_payload_we = 1'd0;
reg controllerinjector_bankmachine3_cmd_payload_is_cmd = 1'd0;
reg controllerinjector_bankmachine3_cmd_payload_is_read = 1'd0;
reg controllerinjector_bankmachine3_cmd_payload_is_write = 1'd0;
wire controllerinjector_bankmachine3_sink_valid;
wire controllerinjector_bankmachine3_sink_ready;
reg controllerinjector_bankmachine3_sink_first = 1'd0;
reg controllerinjector_bankmachine3_sink_last = 1'd0;
wire controllerinjector_bankmachine3_sink_payload_we;
wire [20:0] controllerinjector_bankmachine3_sink_payload_adr;
wire controllerinjector_bankmachine3_source_valid;
wire controllerinjector_bankmachine3_source_ready;
wire controllerinjector_bankmachine3_source_first;
wire controllerinjector_bankmachine3_source_last;
wire controllerinjector_bankmachine3_source_payload_we;
wire [20:0] controllerinjector_bankmachine3_source_payload_adr;
wire controllerinjector_bankmachine3_syncfifo3_we;
wire controllerinjector_bankmachine3_syncfifo3_writable;
wire controllerinjector_bankmachine3_syncfifo3_re;
wire controllerinjector_bankmachine3_syncfifo3_readable;
wire [23:0] controllerinjector_bankmachine3_syncfifo3_din;
wire [23:0] controllerinjector_bankmachine3_syncfifo3_dout;
reg [3:0] controllerinjector_bankmachine3_level = 4'd0;
reg controllerinjector_bankmachine3_replace = 1'd0;
reg [2:0] controllerinjector_bankmachine3_produce = 3'd0;
reg [2:0] controllerinjector_bankmachine3_consume = 3'd0;
reg [2:0] controllerinjector_bankmachine3_wrport_adr = 3'd0;
wire [23:0] controllerinjector_bankmachine3_wrport_dat_r;
wire controllerinjector_bankmachine3_wrport_we;
wire [23:0] controllerinjector_bankmachine3_wrport_dat_w;
wire controllerinjector_bankmachine3_do_read;
wire [2:0] controllerinjector_bankmachine3_rdport_adr;
wire [23:0] controllerinjector_bankmachine3_rdport_dat_r;
wire controllerinjector_bankmachine3_fifo_in_payload_we;
wire [20:0] controllerinjector_bankmachine3_fifo_in_payload_adr;
wire controllerinjector_bankmachine3_fifo_in_first;
wire controllerinjector_bankmachine3_fifo_in_last;
wire controllerinjector_bankmachine3_fifo_out_payload_we;
wire [20:0] controllerinjector_bankmachine3_fifo_out_payload_adr;
wire controllerinjector_bankmachine3_fifo_out_first;
wire controllerinjector_bankmachine3_fifo_out_last;
reg controllerinjector_bankmachine3_has_openrow = 1'd0;
reg [12:0] controllerinjector_bankmachine3_openrow = 13'd0;
wire controllerinjector_bankmachine3_hit;
reg controllerinjector_bankmachine3_track_open = 1'd0;
reg controllerinjector_bankmachine3_track_close = 1'd0;
reg controllerinjector_bankmachine3_sel_row_adr = 1'd0;
wire controllerinjector_bankmachine3_wait;
wire controllerinjector_bankmachine3_done;
reg [2:0] controllerinjector_bankmachine3_count = 3'd4;
wire controllerinjector_bankmachine4_req_valid;
wire controllerinjector_bankmachine4_req_ready;
wire controllerinjector_bankmachine4_req_we;
wire [20:0] controllerinjector_bankmachine4_req_adr;
wire controllerinjector_bankmachine4_req_lock;
reg controllerinjector_bankmachine4_req_wdata_ready = 1'd0;
reg controllerinjector_bankmachine4_req_rdata_valid = 1'd0;
wire controllerinjector_bankmachine4_refresh_req;
reg controllerinjector_bankmachine4_refresh_gnt = 1'd0;
reg controllerinjector_bankmachine4_cmd_valid = 1'd0;
reg controllerinjector_bankmachine4_cmd_ready = 1'd0;
reg [12:0] controllerinjector_bankmachine4_cmd_payload_a = 13'd0;
wire [2:0] controllerinjector_bankmachine4_cmd_payload_ba;
reg controllerinjector_bankmachine4_cmd_payload_cas = 1'd0;
reg controllerinjector_bankmachine4_cmd_payload_ras = 1'd0;
reg controllerinjector_bankmachine4_cmd_payload_we = 1'd0;
reg controllerinjector_bankmachine4_cmd_payload_is_cmd = 1'd0;
reg controllerinjector_bankmachine4_cmd_payload_is_read = 1'd0;
reg controllerinjector_bankmachine4_cmd_payload_is_write = 1'd0;
wire controllerinjector_bankmachine4_sink_valid;
wire controllerinjector_bankmachine4_sink_ready;
reg controllerinjector_bankmachine4_sink_first = 1'd0;
reg controllerinjector_bankmachine4_sink_last = 1'd0;
wire controllerinjector_bankmachine4_sink_payload_we;
wire [20:0] controllerinjector_bankmachine4_sink_payload_adr;
wire controllerinjector_bankmachine4_source_valid;
wire controllerinjector_bankmachine4_source_ready;
wire controllerinjector_bankmachine4_source_first;
wire controllerinjector_bankmachine4_source_last;
wire controllerinjector_bankmachine4_source_payload_we;
wire [20:0] controllerinjector_bankmachine4_source_payload_adr;
wire controllerinjector_bankmachine4_syncfifo4_we;
wire controllerinjector_bankmachine4_syncfifo4_writable;
wire controllerinjector_bankmachine4_syncfifo4_re;
wire controllerinjector_bankmachine4_syncfifo4_readable;
wire [23:0] controllerinjector_bankmachine4_syncfifo4_din;
wire [23:0] controllerinjector_bankmachine4_syncfifo4_dout;
reg [3:0] controllerinjector_bankmachine4_level = 4'd0;
reg controllerinjector_bankmachine4_replace = 1'd0;
reg [2:0] controllerinjector_bankmachine4_produce = 3'd0;
reg [2:0] controllerinjector_bankmachine4_consume = 3'd0;
reg [2:0] controllerinjector_bankmachine4_wrport_adr = 3'd0;
wire [23:0] controllerinjector_bankmachine4_wrport_dat_r;
wire controllerinjector_bankmachine4_wrport_we;
wire [23:0] controllerinjector_bankmachine4_wrport_dat_w;
wire controllerinjector_bankmachine4_do_read;
wire [2:0] controllerinjector_bankmachine4_rdport_adr;
wire [23:0] controllerinjector_bankmachine4_rdport_dat_r;
wire controllerinjector_bankmachine4_fifo_in_payload_we;
wire [20:0] controllerinjector_bankmachine4_fifo_in_payload_adr;
wire controllerinjector_bankmachine4_fifo_in_first;
wire controllerinjector_bankmachine4_fifo_in_last;
wire controllerinjector_bankmachine4_fifo_out_payload_we;
wire [20:0] controllerinjector_bankmachine4_fifo_out_payload_adr;
wire controllerinjector_bankmachine4_fifo_out_first;
wire controllerinjector_bankmachine4_fifo_out_last;
reg controllerinjector_bankmachine4_has_openrow = 1'd0;
reg [12:0] controllerinjector_bankmachine4_openrow = 13'd0;
wire controllerinjector_bankmachine4_hit;
reg controllerinjector_bankmachine4_track_open = 1'd0;
reg controllerinjector_bankmachine4_track_close = 1'd0;
reg controllerinjector_bankmachine4_sel_row_adr = 1'd0;
wire controllerinjector_bankmachine4_wait;
wire controllerinjector_bankmachine4_done;
reg [2:0] controllerinjector_bankmachine4_count = 3'd4;
wire controllerinjector_bankmachine5_req_valid;
wire controllerinjector_bankmachine5_req_ready;
wire controllerinjector_bankmachine5_req_we;
wire [20:0] controllerinjector_bankmachine5_req_adr;
wire controllerinjector_bankmachine5_req_lock;
reg controllerinjector_bankmachine5_req_wdata_ready = 1'd0;
reg controllerinjector_bankmachine5_req_rdata_valid = 1'd0;
wire controllerinjector_bankmachine5_refresh_req;
reg controllerinjector_bankmachine5_refresh_gnt = 1'd0;
reg controllerinjector_bankmachine5_cmd_valid = 1'd0;
reg controllerinjector_bankmachine5_cmd_ready = 1'd0;
reg [12:0] controllerinjector_bankmachine5_cmd_payload_a = 13'd0;
wire [2:0] controllerinjector_bankmachine5_cmd_payload_ba;
reg controllerinjector_bankmachine5_cmd_payload_cas = 1'd0;
reg controllerinjector_bankmachine5_cmd_payload_ras = 1'd0;
reg controllerinjector_bankmachine5_cmd_payload_we = 1'd0;
reg controllerinjector_bankmachine5_cmd_payload_is_cmd = 1'd0;
reg controllerinjector_bankmachine5_cmd_payload_is_read = 1'd0;
reg controllerinjector_bankmachine5_cmd_payload_is_write = 1'd0;
wire controllerinjector_bankmachine5_sink_valid;
wire controllerinjector_bankmachine5_sink_ready;
reg controllerinjector_bankmachine5_sink_first = 1'd0;
reg controllerinjector_bankmachine5_sink_last = 1'd0;
wire controllerinjector_bankmachine5_sink_payload_we;
wire [20:0] controllerinjector_bankmachine5_sink_payload_adr;
wire controllerinjector_bankmachine5_source_valid;
wire controllerinjector_bankmachine5_source_ready;
wire controllerinjector_bankmachine5_source_first;
wire controllerinjector_bankmachine5_source_last;
wire controllerinjector_bankmachine5_source_payload_we;
wire [20:0] controllerinjector_bankmachine5_source_payload_adr;
wire controllerinjector_bankmachine5_syncfifo5_we;
wire controllerinjector_bankmachine5_syncfifo5_writable;
wire controllerinjector_bankmachine5_syncfifo5_re;
wire controllerinjector_bankmachine5_syncfifo5_readable;
wire [23:0] controllerinjector_bankmachine5_syncfifo5_din;
wire [23:0] controllerinjector_bankmachine5_syncfifo5_dout;
reg [3:0] controllerinjector_bankmachine5_level = 4'd0;
reg controllerinjector_bankmachine5_replace = 1'd0;
reg [2:0] controllerinjector_bankmachine5_produce = 3'd0;
reg [2:0] controllerinjector_bankmachine5_consume = 3'd0;
reg [2:0] controllerinjector_bankmachine5_wrport_adr = 3'd0;
wire [23:0] controllerinjector_bankmachine5_wrport_dat_r;
wire controllerinjector_bankmachine5_wrport_we;
wire [23:0] controllerinjector_bankmachine5_wrport_dat_w;
wire controllerinjector_bankmachine5_do_read;
wire [2:0] controllerinjector_bankmachine5_rdport_adr;
wire [23:0] controllerinjector_bankmachine5_rdport_dat_r;
wire controllerinjector_bankmachine5_fifo_in_payload_we;
wire [20:0] controllerinjector_bankmachine5_fifo_in_payload_adr;
wire controllerinjector_bankmachine5_fifo_in_first;
wire controllerinjector_bankmachine5_fifo_in_last;
wire controllerinjector_bankmachine5_fifo_out_payload_we;
wire [20:0] controllerinjector_bankmachine5_fifo_out_payload_adr;
wire controllerinjector_bankmachine5_fifo_out_first;
wire controllerinjector_bankmachine5_fifo_out_last;
reg controllerinjector_bankmachine5_has_openrow = 1'd0;
reg [12:0] controllerinjector_bankmachine5_openrow = 13'd0;
wire controllerinjector_bankmachine5_hit;
reg controllerinjector_bankmachine5_track_open = 1'd0;
reg controllerinjector_bankmachine5_track_close = 1'd0;
reg controllerinjector_bankmachine5_sel_row_adr = 1'd0;
wire controllerinjector_bankmachine5_wait;
wire controllerinjector_bankmachine5_done;
reg [2:0] controllerinjector_bankmachine5_count = 3'd4;
wire controllerinjector_bankmachine6_req_valid;
wire controllerinjector_bankmachine6_req_ready;
wire controllerinjector_bankmachine6_req_we;
wire [20:0] controllerinjector_bankmachine6_req_adr;
wire controllerinjector_bankmachine6_req_lock;
reg controllerinjector_bankmachine6_req_wdata_ready = 1'd0;
reg controllerinjector_bankmachine6_req_rdata_valid = 1'd0;
wire controllerinjector_bankmachine6_refresh_req;
reg controllerinjector_bankmachine6_refresh_gnt = 1'd0;
reg controllerinjector_bankmachine6_cmd_valid = 1'd0;
reg controllerinjector_bankmachine6_cmd_ready = 1'd0;
reg [12:0] controllerinjector_bankmachine6_cmd_payload_a = 13'd0;
wire [2:0] controllerinjector_bankmachine6_cmd_payload_ba;
reg controllerinjector_bankmachine6_cmd_payload_cas = 1'd0;
reg controllerinjector_bankmachine6_cmd_payload_ras = 1'd0;
reg controllerinjector_bankmachine6_cmd_payload_we = 1'd0;
reg controllerinjector_bankmachine6_cmd_payload_is_cmd = 1'd0;
reg controllerinjector_bankmachine6_cmd_payload_is_read = 1'd0;
reg controllerinjector_bankmachine6_cmd_payload_is_write = 1'd0;
wire controllerinjector_bankmachine6_sink_valid;
wire controllerinjector_bankmachine6_sink_ready;
reg controllerinjector_bankmachine6_sink_first = 1'd0;
reg controllerinjector_bankmachine6_sink_last = 1'd0;
wire controllerinjector_bankmachine6_sink_payload_we;
wire [20:0] controllerinjector_bankmachine6_sink_payload_adr;
wire controllerinjector_bankmachine6_source_valid;
wire controllerinjector_bankmachine6_source_ready;
wire controllerinjector_bankmachine6_source_first;
wire controllerinjector_bankmachine6_source_last;
wire controllerinjector_bankmachine6_source_payload_we;
wire [20:0] controllerinjector_bankmachine6_source_payload_adr;
wire controllerinjector_bankmachine6_syncfifo6_we;
wire controllerinjector_bankmachine6_syncfifo6_writable;
wire controllerinjector_bankmachine6_syncfifo6_re;
wire controllerinjector_bankmachine6_syncfifo6_readable;
wire [23:0] controllerinjector_bankmachine6_syncfifo6_din;
wire [23:0] controllerinjector_bankmachine6_syncfifo6_dout;
reg [3:0] controllerinjector_bankmachine6_level = 4'd0;
reg controllerinjector_bankmachine6_replace = 1'd0;
reg [2:0] controllerinjector_bankmachine6_produce = 3'd0;
reg [2:0] controllerinjector_bankmachine6_consume = 3'd0;
reg [2:0] controllerinjector_bankmachine6_wrport_adr = 3'd0;
wire [23:0] controllerinjector_bankmachine6_wrport_dat_r;
wire controllerinjector_bankmachine6_wrport_we;
wire [23:0] controllerinjector_bankmachine6_wrport_dat_w;
wire controllerinjector_bankmachine6_do_read;
wire [2:0] controllerinjector_bankmachine6_rdport_adr;
wire [23:0] controllerinjector_bankmachine6_rdport_dat_r;
wire controllerinjector_bankmachine6_fifo_in_payload_we;
wire [20:0] controllerinjector_bankmachine6_fifo_in_payload_adr;
wire controllerinjector_bankmachine6_fifo_in_first;
wire controllerinjector_bankmachine6_fifo_in_last;
wire controllerinjector_bankmachine6_fifo_out_payload_we;
wire [20:0] controllerinjector_bankmachine6_fifo_out_payload_adr;
wire controllerinjector_bankmachine6_fifo_out_first;
wire controllerinjector_bankmachine6_fifo_out_last;
reg controllerinjector_bankmachine6_has_openrow = 1'd0;
reg [12:0] controllerinjector_bankmachine6_openrow = 13'd0;
wire controllerinjector_bankmachine6_hit;
reg controllerinjector_bankmachine6_track_open = 1'd0;
reg controllerinjector_bankmachine6_track_close = 1'd0;
reg controllerinjector_bankmachine6_sel_row_adr = 1'd0;
wire controllerinjector_bankmachine6_wait;
wire controllerinjector_bankmachine6_done;
reg [2:0] controllerinjector_bankmachine6_count = 3'd4;
wire controllerinjector_bankmachine7_req_valid;
wire controllerinjector_bankmachine7_req_ready;
wire controllerinjector_bankmachine7_req_we;
wire [20:0] controllerinjector_bankmachine7_req_adr;
wire controllerinjector_bankmachine7_req_lock;
reg controllerinjector_bankmachine7_req_wdata_ready = 1'd0;
reg controllerinjector_bankmachine7_req_rdata_valid = 1'd0;
wire controllerinjector_bankmachine7_refresh_req;
reg controllerinjector_bankmachine7_refresh_gnt = 1'd0;
reg controllerinjector_bankmachine7_cmd_valid = 1'd0;
reg controllerinjector_bankmachine7_cmd_ready = 1'd0;
reg [12:0] controllerinjector_bankmachine7_cmd_payload_a = 13'd0;
wire [2:0] controllerinjector_bankmachine7_cmd_payload_ba;
reg controllerinjector_bankmachine7_cmd_payload_cas = 1'd0;
reg controllerinjector_bankmachine7_cmd_payload_ras = 1'd0;
reg controllerinjector_bankmachine7_cmd_payload_we = 1'd0;
reg controllerinjector_bankmachine7_cmd_payload_is_cmd = 1'd0;
reg controllerinjector_bankmachine7_cmd_payload_is_read = 1'd0;
reg controllerinjector_bankmachine7_cmd_payload_is_write = 1'd0;
wire controllerinjector_bankmachine7_sink_valid;
wire controllerinjector_bankmachine7_sink_ready;
reg controllerinjector_bankmachine7_sink_first = 1'd0;
reg controllerinjector_bankmachine7_sink_last = 1'd0;
wire controllerinjector_bankmachine7_sink_payload_we;
wire [20:0] controllerinjector_bankmachine7_sink_payload_adr;
wire controllerinjector_bankmachine7_source_valid;
wire controllerinjector_bankmachine7_source_ready;
wire controllerinjector_bankmachine7_source_first;
wire controllerinjector_bankmachine7_source_last;
wire controllerinjector_bankmachine7_source_payload_we;
wire [20:0] controllerinjector_bankmachine7_source_payload_adr;
wire controllerinjector_bankmachine7_syncfifo7_we;
wire controllerinjector_bankmachine7_syncfifo7_writable;
wire controllerinjector_bankmachine7_syncfifo7_re;
wire controllerinjector_bankmachine7_syncfifo7_readable;
wire [23:0] controllerinjector_bankmachine7_syncfifo7_din;
wire [23:0] controllerinjector_bankmachine7_syncfifo7_dout;
reg [3:0] controllerinjector_bankmachine7_level = 4'd0;
reg controllerinjector_bankmachine7_replace = 1'd0;
reg [2:0] controllerinjector_bankmachine7_produce = 3'd0;
reg [2:0] controllerinjector_bankmachine7_consume = 3'd0;
reg [2:0] controllerinjector_bankmachine7_wrport_adr = 3'd0;
wire [23:0] controllerinjector_bankmachine7_wrport_dat_r;
wire controllerinjector_bankmachine7_wrport_we;
wire [23:0] controllerinjector_bankmachine7_wrport_dat_w;
wire controllerinjector_bankmachine7_do_read;
wire [2:0] controllerinjector_bankmachine7_rdport_adr;
wire [23:0] controllerinjector_bankmachine7_rdport_dat_r;
wire controllerinjector_bankmachine7_fifo_in_payload_we;
wire [20:0] controllerinjector_bankmachine7_fifo_in_payload_adr;
wire controllerinjector_bankmachine7_fifo_in_first;
wire controllerinjector_bankmachine7_fifo_in_last;
wire controllerinjector_bankmachine7_fifo_out_payload_we;
wire [20:0] controllerinjector_bankmachine7_fifo_out_payload_adr;
wire controllerinjector_bankmachine7_fifo_out_first;
wire controllerinjector_bankmachine7_fifo_out_last;
reg controllerinjector_bankmachine7_has_openrow = 1'd0;
reg [12:0] controllerinjector_bankmachine7_openrow = 13'd0;
wire controllerinjector_bankmachine7_hit;
reg controllerinjector_bankmachine7_track_open = 1'd0;
reg controllerinjector_bankmachine7_track_close = 1'd0;
reg controllerinjector_bankmachine7_sel_row_adr = 1'd0;
wire controllerinjector_bankmachine7_wait;
wire controllerinjector_bankmachine7_done;
reg [2:0] controllerinjector_bankmachine7_count = 3'd4;
reg controllerinjector_choose_cmd_want_reads = 1'd0;
reg controllerinjector_choose_cmd_want_writes = 1'd0;
reg controllerinjector_choose_cmd_want_cmds = 1'd0;
wire controllerinjector_choose_cmd_cmd_valid;
reg controllerinjector_choose_cmd_cmd_ready = 1'd0;
wire [12:0] controllerinjector_choose_cmd_cmd_payload_a;
wire [2:0] controllerinjector_choose_cmd_cmd_payload_ba;
reg controllerinjector_choose_cmd_cmd_payload_cas = 1'd0;
reg controllerinjector_choose_cmd_cmd_payload_ras = 1'd0;
reg controllerinjector_choose_cmd_cmd_payload_we = 1'd0;
wire controllerinjector_choose_cmd_cmd_payload_is_cmd;
wire controllerinjector_choose_cmd_cmd_payload_is_read;
wire controllerinjector_choose_cmd_cmd_payload_is_write;
reg [7:0] controllerinjector_choose_cmd_valids = 8'd0;
wire [7:0] controllerinjector_choose_cmd_request;
reg [2:0] controllerinjector_choose_cmd_grant = 3'd0;
wire controllerinjector_choose_cmd_ce;
reg controllerinjector_choose_req_want_reads = 1'd0;
reg controllerinjector_choose_req_want_writes = 1'd0;
reg controllerinjector_choose_req_want_cmds = 1'd0;
wire controllerinjector_choose_req_cmd_valid;
reg controllerinjector_choose_req_cmd_ready = 1'd0;
wire [12:0] controllerinjector_choose_req_cmd_payload_a;
wire [2:0] controllerinjector_choose_req_cmd_payload_ba;
reg controllerinjector_choose_req_cmd_payload_cas = 1'd0;
reg controllerinjector_choose_req_cmd_payload_ras = 1'd0;
reg controllerinjector_choose_req_cmd_payload_we = 1'd0;
wire controllerinjector_choose_req_cmd_payload_is_cmd;
wire controllerinjector_choose_req_cmd_payload_is_read;
wire controllerinjector_choose_req_cmd_payload_is_write;
reg [7:0] controllerinjector_choose_req_valids = 8'd0;
wire [7:0] controllerinjector_choose_req_request;
reg [2:0] controllerinjector_choose_req_grant = 3'd0;
wire controllerinjector_choose_req_ce;
reg [12:0] controllerinjector_nop_a = 13'd0;
reg [2:0] controllerinjector_nop_ba = 3'd0;
reg controllerinjector_nop_cas = 1'd0;
reg controllerinjector_nop_ras = 1'd0;
reg controllerinjector_nop_we = 1'd0;
reg [1:0] controllerinjector_sel0 = 2'd0;
reg [1:0] controllerinjector_sel1 = 2'd0;
wire controllerinjector_read_available;
wire controllerinjector_write_available;
reg controllerinjector_en0 = 1'd0;
wire controllerinjector_max_time0;
reg [4:0] controllerinjector_time0 = 5'd0;
reg controllerinjector_en1 = 1'd0;
wire controllerinjector_max_time1;
reg [3:0] controllerinjector_time1 = 4'd0;
wire controllerinjector_go_to_refresh;
wire controllerinjector_bandwidth_update_re;
wire controllerinjector_bandwidth_update_r;
reg controllerinjector_bandwidth_update_w = 1'd0;
reg [23:0] controllerinjector_bandwidth_nreads_status = 24'd0;
reg [23:0] controllerinjector_bandwidth_nwrites_status = 24'd0;
reg [6:0] controllerinjector_bandwidth_data_width_status = 7'd64;
reg controllerinjector_bandwidth_cmd_valid = 1'd0;
reg controllerinjector_bandwidth_cmd_ready = 1'd0;
reg controllerinjector_bandwidth_cmd_is_read = 1'd0;
reg controllerinjector_bandwidth_cmd_is_write = 1'd0;
reg [23:0] controllerinjector_bandwidth_counter = 24'd0;
reg controllerinjector_bandwidth_period = 1'd0;
reg [23:0] controllerinjector_bandwidth_nreads = 24'd0;
reg [23:0] controllerinjector_bandwidth_nwrites = 24'd0;
reg [23:0] controllerinjector_bandwidth_nreads_r = 24'd0;
reg [23:0] controllerinjector_bandwidth_nwrites_r = 24'd0;
wire [29:0] interface1_wb_sdram_adr;
wire [31:0] interface1_wb_sdram_dat_w;
wire [31:0] interface1_wb_sdram_dat_r;
wire [3:0] interface1_wb_sdram_sel;
wire interface1_wb_sdram_cyc;
wire interface1_wb_sdram_stb;
wire interface1_wb_sdram_ack;
wire interface1_wb_sdram_we;
wire [2:0] interface1_wb_sdram_cti;
wire [1:0] interface1_wb_sdram_bte;
wire interface1_wb_sdram_err;
reg port_cmd_valid = 1'd0;
wire port_cmd_ready;
reg port_cmd_payload_we = 1'd0;
wire [23:0] port_cmd_payload_adr;
reg port_wdata_valid = 1'd0;
wire port_wdata_ready;
wire [63:0] port_wdata_payload_data;
wire [7:0] port_wdata_payload_we;
wire port_rdata_valid;
reg port_rdata_ready = 1'd0;
wire [63:0] port_rdata_payload_data;
wire [29:0] interface_adr;
wire [63:0] interface_dat_w;
wire [63:0] interface_dat_r;
wire [7:0] interface_sel;
reg interface_cyc = 1'd0;
reg interface_stb = 1'd0;
reg interface_ack = 1'd0;
reg interface_we = 1'd0;
wire [9:0] data_port_adr;
wire [63:0] data_port_dat_r;
reg [7:0] data_port_we = 8'd0;
reg [63:0] data_port_dat_w = 64'd0;
reg write_from_slave = 1'd0;
reg adr_offset_r = 1'd0;
wire [9:0] tag_port_adr;
wire [21:0] tag_port_dat_r;
reg tag_port_we = 1'd0;
wire [21:0] tag_port_dat_w;
wire [20:0] tag_do_tag;
wire tag_do_dirty;
wire [20:0] tag_di_tag;
reg tag_di_dirty = 1'd0;
reg word_clr = 1'd0;
reg word_inc = 1'd0;
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
reg new_master_wdata_ready = 1'd0;
reg new_master_rdata_valid0 = 1'd0;
reg new_master_rdata_valid1 = 1'd0;
reg new_master_rdata_valid2 = 1'd0;
reg new_master_rdata_valid3 = 1'd0;
reg new_master_rdata_valid4 = 1'd0;
reg new_master_rdata_valid5 = 1'd0;
reg [2:0] cache_state = 3'd0;
reg [2:0] cache_next_state = 3'd0;
reg [1:0] litedramwishbonebridge_state = 2'd0;
reg [1:0] litedramwishbonebridge_next_state = 2'd0;
wire wb_sdram_con_request;
wire wb_sdram_con_grant;
wire [29:0] basesoc_shared_adr;
wire [31:0] basesoc_shared_dat_w;
wire [31:0] basesoc_shared_dat_r;
wire [3:0] basesoc_shared_sel;
wire basesoc_shared_cyc;
wire basesoc_shared_stb;
wire basesoc_shared_ack;
wire basesoc_shared_we;
wire [2:0] basesoc_shared_cti;
wire [1:0] basesoc_shared_bte;
wire basesoc_shared_err;
wire [1:0] basesoc_request;
reg basesoc_grant = 1'd0;
reg [4:0] basesoc_slave_sel = 5'd0;
reg [4:0] basesoc_slave_sel_r = 5'd0;
wire [13:0] basesoc_interface0_adr;
wire basesoc_interface0_we;
wire [7:0] basesoc_interface0_dat_w;
reg [7:0] basesoc_interface0_dat_r = 8'd0;
wire [2:0] basesoc_mmap_adr;
wire [7:0] basesoc_mmap_dat_r;
wire basesoc_mmap_sel;
reg basesoc_mmap_sel_r = 1'd0;
wire [13:0] basesoc_interface1_adr;
wire basesoc_interface1_we;
wire [7:0] basesoc_interface1_dat_w;
reg [7:0] basesoc_interface1_dat_r = 8'd0;
wire basesoc_csrbank0_dna_id7_re;
wire basesoc_csrbank0_dna_id7_r;
wire basesoc_csrbank0_dna_id7_w;
wire basesoc_csrbank0_dna_id6_re;
wire [7:0] basesoc_csrbank0_dna_id6_r;
wire [7:0] basesoc_csrbank0_dna_id6_w;
wire basesoc_csrbank0_dna_id5_re;
wire [7:0] basesoc_csrbank0_dna_id5_r;
wire [7:0] basesoc_csrbank0_dna_id5_w;
wire basesoc_csrbank0_dna_id4_re;
wire [7:0] basesoc_csrbank0_dna_id4_r;
wire [7:0] basesoc_csrbank0_dna_id4_w;
wire basesoc_csrbank0_dna_id3_re;
wire [7:0] basesoc_csrbank0_dna_id3_r;
wire [7:0] basesoc_csrbank0_dna_id3_w;
wire basesoc_csrbank0_dna_id2_re;
wire [7:0] basesoc_csrbank0_dna_id2_r;
wire [7:0] basesoc_csrbank0_dna_id2_w;
wire basesoc_csrbank0_dna_id1_re;
wire [7:0] basesoc_csrbank0_dna_id1_r;
wire [7:0] basesoc_csrbank0_dna_id1_w;
wire basesoc_csrbank0_dna_id0_re;
wire [7:0] basesoc_csrbank0_dna_id0_r;
wire [7:0] basesoc_csrbank0_dna_id0_w;
wire basesoc_csrbank0_git_commit19_re;
wire [7:0] basesoc_csrbank0_git_commit19_r;
wire [7:0] basesoc_csrbank0_git_commit19_w;
wire basesoc_csrbank0_git_commit18_re;
wire [7:0] basesoc_csrbank0_git_commit18_r;
wire [7:0] basesoc_csrbank0_git_commit18_w;
wire basesoc_csrbank0_git_commit17_re;
wire [7:0] basesoc_csrbank0_git_commit17_r;
wire [7:0] basesoc_csrbank0_git_commit17_w;
wire basesoc_csrbank0_git_commit16_re;
wire [7:0] basesoc_csrbank0_git_commit16_r;
wire [7:0] basesoc_csrbank0_git_commit16_w;
wire basesoc_csrbank0_git_commit15_re;
wire [7:0] basesoc_csrbank0_git_commit15_r;
wire [7:0] basesoc_csrbank0_git_commit15_w;
wire basesoc_csrbank0_git_commit14_re;
wire [7:0] basesoc_csrbank0_git_commit14_r;
wire [7:0] basesoc_csrbank0_git_commit14_w;
wire basesoc_csrbank0_git_commit13_re;
wire [7:0] basesoc_csrbank0_git_commit13_r;
wire [7:0] basesoc_csrbank0_git_commit13_w;
wire basesoc_csrbank0_git_commit12_re;
wire [7:0] basesoc_csrbank0_git_commit12_r;
wire [7:0] basesoc_csrbank0_git_commit12_w;
wire basesoc_csrbank0_git_commit11_re;
wire [7:0] basesoc_csrbank0_git_commit11_r;
wire [7:0] basesoc_csrbank0_git_commit11_w;
wire basesoc_csrbank0_git_commit10_re;
wire [7:0] basesoc_csrbank0_git_commit10_r;
wire [7:0] basesoc_csrbank0_git_commit10_w;
wire basesoc_csrbank0_git_commit9_re;
wire [7:0] basesoc_csrbank0_git_commit9_r;
wire [7:0] basesoc_csrbank0_git_commit9_w;
wire basesoc_csrbank0_git_commit8_re;
wire [7:0] basesoc_csrbank0_git_commit8_r;
wire [7:0] basesoc_csrbank0_git_commit8_w;
wire basesoc_csrbank0_git_commit7_re;
wire [7:0] basesoc_csrbank0_git_commit7_r;
wire [7:0] basesoc_csrbank0_git_commit7_w;
wire basesoc_csrbank0_git_commit6_re;
wire [7:0] basesoc_csrbank0_git_commit6_r;
wire [7:0] basesoc_csrbank0_git_commit6_w;
wire basesoc_csrbank0_git_commit5_re;
wire [7:0] basesoc_csrbank0_git_commit5_r;
wire [7:0] basesoc_csrbank0_git_commit5_w;
wire basesoc_csrbank0_git_commit4_re;
wire [7:0] basesoc_csrbank0_git_commit4_r;
wire [7:0] basesoc_csrbank0_git_commit4_w;
wire basesoc_csrbank0_git_commit3_re;
wire [7:0] basesoc_csrbank0_git_commit3_r;
wire [7:0] basesoc_csrbank0_git_commit3_w;
wire basesoc_csrbank0_git_commit2_re;
wire [7:0] basesoc_csrbank0_git_commit2_r;
wire [7:0] basesoc_csrbank0_git_commit2_w;
wire basesoc_csrbank0_git_commit1_re;
wire [7:0] basesoc_csrbank0_git_commit1_r;
wire [7:0] basesoc_csrbank0_git_commit1_w;
wire basesoc_csrbank0_git_commit0_re;
wire [7:0] basesoc_csrbank0_git_commit0_r;
wire [7:0] basesoc_csrbank0_git_commit0_w;
wire basesoc_csrbank0_platform_platform7_re;
wire [7:0] basesoc_csrbank0_platform_platform7_r;
wire [7:0] basesoc_csrbank0_platform_platform7_w;
wire basesoc_csrbank0_platform_platform6_re;
wire [7:0] basesoc_csrbank0_platform_platform6_r;
wire [7:0] basesoc_csrbank0_platform_platform6_w;
wire basesoc_csrbank0_platform_platform5_re;
wire [7:0] basesoc_csrbank0_platform_platform5_r;
wire [7:0] basesoc_csrbank0_platform_platform5_w;
wire basesoc_csrbank0_platform_platform4_re;
wire [7:0] basesoc_csrbank0_platform_platform4_r;
wire [7:0] basesoc_csrbank0_platform_platform4_w;
wire basesoc_csrbank0_platform_platform3_re;
wire [7:0] basesoc_csrbank0_platform_platform3_r;
wire [7:0] basesoc_csrbank0_platform_platform3_w;
wire basesoc_csrbank0_platform_platform2_re;
wire [7:0] basesoc_csrbank0_platform_platform2_r;
wire [7:0] basesoc_csrbank0_platform_platform2_w;
wire basesoc_csrbank0_platform_platform1_re;
wire [7:0] basesoc_csrbank0_platform_platform1_r;
wire [7:0] basesoc_csrbank0_platform_platform1_w;
wire basesoc_csrbank0_platform_platform0_re;
wire [7:0] basesoc_csrbank0_platform_platform0_r;
wire [7:0] basesoc_csrbank0_platform_platform0_w;
wire basesoc_csrbank0_platform_target7_re;
wire [7:0] basesoc_csrbank0_platform_target7_r;
wire [7:0] basesoc_csrbank0_platform_target7_w;
wire basesoc_csrbank0_platform_target6_re;
wire [7:0] basesoc_csrbank0_platform_target6_r;
wire [7:0] basesoc_csrbank0_platform_target6_w;
wire basesoc_csrbank0_platform_target5_re;
wire [7:0] basesoc_csrbank0_platform_target5_r;
wire [7:0] basesoc_csrbank0_platform_target5_w;
wire basesoc_csrbank0_platform_target4_re;
wire [7:0] basesoc_csrbank0_platform_target4_r;
wire [7:0] basesoc_csrbank0_platform_target4_w;
wire basesoc_csrbank0_platform_target3_re;
wire [7:0] basesoc_csrbank0_platform_target3_r;
wire [7:0] basesoc_csrbank0_platform_target3_w;
wire basesoc_csrbank0_platform_target2_re;
wire [7:0] basesoc_csrbank0_platform_target2_r;
wire [7:0] basesoc_csrbank0_platform_target2_w;
wire basesoc_csrbank0_platform_target1_re;
wire [7:0] basesoc_csrbank0_platform_target1_r;
wire [7:0] basesoc_csrbank0_platform_target1_w;
wire basesoc_csrbank0_platform_target0_re;
wire [7:0] basesoc_csrbank0_platform_target0_r;
wire [7:0] basesoc_csrbank0_platform_target0_w;
wire basesoc_csrbank0_sel;
wire [13:0] basesoc_interface2_adr;
wire basesoc_interface2_we;
wire [7:0] basesoc_interface2_dat_w;
reg [7:0] basesoc_interface2_dat_r = 8'd0;
wire basesoc_csrbank1_dfii_control0_re;
wire [3:0] basesoc_csrbank1_dfii_control0_r;
wire [3:0] basesoc_csrbank1_dfii_control0_w;
wire basesoc_csrbank1_dfii_pi0_command0_re;
wire [5:0] basesoc_csrbank1_dfii_pi0_command0_r;
wire [5:0] basesoc_csrbank1_dfii_pi0_command0_w;
wire basesoc_csrbank1_dfii_pi0_address1_re;
wire [4:0] basesoc_csrbank1_dfii_pi0_address1_r;
wire [4:0] basesoc_csrbank1_dfii_pi0_address1_w;
wire basesoc_csrbank1_dfii_pi0_address0_re;
wire [7:0] basesoc_csrbank1_dfii_pi0_address0_r;
wire [7:0] basesoc_csrbank1_dfii_pi0_address0_w;
wire basesoc_csrbank1_dfii_pi0_baddress0_re;
wire [2:0] basesoc_csrbank1_dfii_pi0_baddress0_r;
wire [2:0] basesoc_csrbank1_dfii_pi0_baddress0_w;
wire basesoc_csrbank1_dfii_pi0_wrdata3_re;
wire [7:0] basesoc_csrbank1_dfii_pi0_wrdata3_r;
wire [7:0] basesoc_csrbank1_dfii_pi0_wrdata3_w;
wire basesoc_csrbank1_dfii_pi0_wrdata2_re;
wire [7:0] basesoc_csrbank1_dfii_pi0_wrdata2_r;
wire [7:0] basesoc_csrbank1_dfii_pi0_wrdata2_w;
wire basesoc_csrbank1_dfii_pi0_wrdata1_re;
wire [7:0] basesoc_csrbank1_dfii_pi0_wrdata1_r;
wire [7:0] basesoc_csrbank1_dfii_pi0_wrdata1_w;
wire basesoc_csrbank1_dfii_pi0_wrdata0_re;
wire [7:0] basesoc_csrbank1_dfii_pi0_wrdata0_r;
wire [7:0] basesoc_csrbank1_dfii_pi0_wrdata0_w;
wire basesoc_csrbank1_dfii_pi0_rddata3_re;
wire [7:0] basesoc_csrbank1_dfii_pi0_rddata3_r;
wire [7:0] basesoc_csrbank1_dfii_pi0_rddata3_w;
wire basesoc_csrbank1_dfii_pi0_rddata2_re;
wire [7:0] basesoc_csrbank1_dfii_pi0_rddata2_r;
wire [7:0] basesoc_csrbank1_dfii_pi0_rddata2_w;
wire basesoc_csrbank1_dfii_pi0_rddata1_re;
wire [7:0] basesoc_csrbank1_dfii_pi0_rddata1_r;
wire [7:0] basesoc_csrbank1_dfii_pi0_rddata1_w;
wire basesoc_csrbank1_dfii_pi0_rddata0_re;
wire [7:0] basesoc_csrbank1_dfii_pi0_rddata0_r;
wire [7:0] basesoc_csrbank1_dfii_pi0_rddata0_w;
wire basesoc_csrbank1_dfii_pi1_command0_re;
wire [5:0] basesoc_csrbank1_dfii_pi1_command0_r;
wire [5:0] basesoc_csrbank1_dfii_pi1_command0_w;
wire basesoc_csrbank1_dfii_pi1_address1_re;
wire [4:0] basesoc_csrbank1_dfii_pi1_address1_r;
wire [4:0] basesoc_csrbank1_dfii_pi1_address1_w;
wire basesoc_csrbank1_dfii_pi1_address0_re;
wire [7:0] basesoc_csrbank1_dfii_pi1_address0_r;
wire [7:0] basesoc_csrbank1_dfii_pi1_address0_w;
wire basesoc_csrbank1_dfii_pi1_baddress0_re;
wire [2:0] basesoc_csrbank1_dfii_pi1_baddress0_r;
wire [2:0] basesoc_csrbank1_dfii_pi1_baddress0_w;
wire basesoc_csrbank1_dfii_pi1_wrdata3_re;
wire [7:0] basesoc_csrbank1_dfii_pi1_wrdata3_r;
wire [7:0] basesoc_csrbank1_dfii_pi1_wrdata3_w;
wire basesoc_csrbank1_dfii_pi1_wrdata2_re;
wire [7:0] basesoc_csrbank1_dfii_pi1_wrdata2_r;
wire [7:0] basesoc_csrbank1_dfii_pi1_wrdata2_w;
wire basesoc_csrbank1_dfii_pi1_wrdata1_re;
wire [7:0] basesoc_csrbank1_dfii_pi1_wrdata1_r;
wire [7:0] basesoc_csrbank1_dfii_pi1_wrdata1_w;
wire basesoc_csrbank1_dfii_pi1_wrdata0_re;
wire [7:0] basesoc_csrbank1_dfii_pi1_wrdata0_r;
wire [7:0] basesoc_csrbank1_dfii_pi1_wrdata0_w;
wire basesoc_csrbank1_dfii_pi1_rddata3_re;
wire [7:0] basesoc_csrbank1_dfii_pi1_rddata3_r;
wire [7:0] basesoc_csrbank1_dfii_pi1_rddata3_w;
wire basesoc_csrbank1_dfii_pi1_rddata2_re;
wire [7:0] basesoc_csrbank1_dfii_pi1_rddata2_r;
wire [7:0] basesoc_csrbank1_dfii_pi1_rddata2_w;
wire basesoc_csrbank1_dfii_pi1_rddata1_re;
wire [7:0] basesoc_csrbank1_dfii_pi1_rddata1_r;
wire [7:0] basesoc_csrbank1_dfii_pi1_rddata1_w;
wire basesoc_csrbank1_dfii_pi1_rddata0_re;
wire [7:0] basesoc_csrbank1_dfii_pi1_rddata0_r;
wire [7:0] basesoc_csrbank1_dfii_pi1_rddata0_w;
wire basesoc_csrbank1_controller_bandwidth_nreads2_re;
wire [7:0] basesoc_csrbank1_controller_bandwidth_nreads2_r;
wire [7:0] basesoc_csrbank1_controller_bandwidth_nreads2_w;
wire basesoc_csrbank1_controller_bandwidth_nreads1_re;
wire [7:0] basesoc_csrbank1_controller_bandwidth_nreads1_r;
wire [7:0] basesoc_csrbank1_controller_bandwidth_nreads1_w;
wire basesoc_csrbank1_controller_bandwidth_nreads0_re;
wire [7:0] basesoc_csrbank1_controller_bandwidth_nreads0_r;
wire [7:0] basesoc_csrbank1_controller_bandwidth_nreads0_w;
wire basesoc_csrbank1_controller_bandwidth_nwrites2_re;
wire [7:0] basesoc_csrbank1_controller_bandwidth_nwrites2_r;
wire [7:0] basesoc_csrbank1_controller_bandwidth_nwrites2_w;
wire basesoc_csrbank1_controller_bandwidth_nwrites1_re;
wire [7:0] basesoc_csrbank1_controller_bandwidth_nwrites1_r;
wire [7:0] basesoc_csrbank1_controller_bandwidth_nwrites1_w;
wire basesoc_csrbank1_controller_bandwidth_nwrites0_re;
wire [7:0] basesoc_csrbank1_controller_bandwidth_nwrites0_r;
wire [7:0] basesoc_csrbank1_controller_bandwidth_nwrites0_w;
wire basesoc_csrbank1_controller_bandwidth_data_width_re;
wire [6:0] basesoc_csrbank1_controller_bandwidth_data_width_r;
wire [6:0] basesoc_csrbank1_controller_bandwidth_data_width_w;
wire basesoc_csrbank1_sel;
wire [13:0] basesoc_interface3_adr;
wire basesoc_interface3_we;
wire [7:0] basesoc_interface3_dat_w;
reg [7:0] basesoc_interface3_dat_r = 8'd0;
wire basesoc_csrbank2_bitbang0_re;
wire [3:0] basesoc_csrbank2_bitbang0_r;
wire [3:0] basesoc_csrbank2_bitbang0_w;
wire basesoc_csrbank2_miso_re;
wire basesoc_csrbank2_miso_r;
wire basesoc_csrbank2_miso_w;
wire basesoc_csrbank2_bitbang_en0_re;
wire basesoc_csrbank2_bitbang_en0_r;
wire basesoc_csrbank2_bitbang_en0_w;
wire basesoc_csrbank2_sel;
wire [13:0] basesoc_interface4_adr;
wire basesoc_interface4_we;
wire [7:0] basesoc_interface4_dat_w;
reg [7:0] basesoc_interface4_dat_r = 8'd0;
wire basesoc_csrbank3_load3_re;
wire [7:0] basesoc_csrbank3_load3_r;
wire [7:0] basesoc_csrbank3_load3_w;
wire basesoc_csrbank3_load2_re;
wire [7:0] basesoc_csrbank3_load2_r;
wire [7:0] basesoc_csrbank3_load2_w;
wire basesoc_csrbank3_load1_re;
wire [7:0] basesoc_csrbank3_load1_r;
wire [7:0] basesoc_csrbank3_load1_w;
wire basesoc_csrbank3_load0_re;
wire [7:0] basesoc_csrbank3_load0_r;
wire [7:0] basesoc_csrbank3_load0_w;
wire basesoc_csrbank3_reload3_re;
wire [7:0] basesoc_csrbank3_reload3_r;
wire [7:0] basesoc_csrbank3_reload3_w;
wire basesoc_csrbank3_reload2_re;
wire [7:0] basesoc_csrbank3_reload2_r;
wire [7:0] basesoc_csrbank3_reload2_w;
wire basesoc_csrbank3_reload1_re;
wire [7:0] basesoc_csrbank3_reload1_r;
wire [7:0] basesoc_csrbank3_reload1_w;
wire basesoc_csrbank3_reload0_re;
wire [7:0] basesoc_csrbank3_reload0_r;
wire [7:0] basesoc_csrbank3_reload0_w;
wire basesoc_csrbank3_en0_re;
wire basesoc_csrbank3_en0_r;
wire basesoc_csrbank3_en0_w;
wire basesoc_csrbank3_value3_re;
wire [7:0] basesoc_csrbank3_value3_r;
wire [7:0] basesoc_csrbank3_value3_w;
wire basesoc_csrbank3_value2_re;
wire [7:0] basesoc_csrbank3_value2_r;
wire [7:0] basesoc_csrbank3_value2_w;
wire basesoc_csrbank3_value1_re;
wire [7:0] basesoc_csrbank3_value1_r;
wire [7:0] basesoc_csrbank3_value1_w;
wire basesoc_csrbank3_value0_re;
wire [7:0] basesoc_csrbank3_value0_r;
wire [7:0] basesoc_csrbank3_value0_w;
wire basesoc_csrbank3_ev_enable0_re;
wire basesoc_csrbank3_ev_enable0_r;
wire basesoc_csrbank3_ev_enable0_w;
wire basesoc_csrbank3_sel;
wire [13:0] basesoc_interface5_adr;
wire basesoc_interface5_we;
wire [7:0] basesoc_interface5_dat_w;
reg [7:0] basesoc_interface5_dat_r = 8'd0;
wire basesoc_csrbank4_txfull_re;
wire basesoc_csrbank4_txfull_r;
wire basesoc_csrbank4_txfull_w;
wire basesoc_csrbank4_rxempty_re;
wire basesoc_csrbank4_rxempty_r;
wire basesoc_csrbank4_rxempty_w;
wire basesoc_csrbank4_ev_enable0_re;
wire [1:0] basesoc_csrbank4_ev_enable0_r;
wire [1:0] basesoc_csrbank4_ev_enable0_w;
wire basesoc_csrbank4_sel;
wire [13:0] basesoc_interface6_adr;
wire basesoc_interface6_we;
wire [7:0] basesoc_interface6_dat_w;
reg [7:0] basesoc_interface6_dat_r = 8'd0;
wire basesoc_csrbank5_tuning_word3_re;
wire [7:0] basesoc_csrbank5_tuning_word3_r;
wire [7:0] basesoc_csrbank5_tuning_word3_w;
wire basesoc_csrbank5_tuning_word2_re;
wire [7:0] basesoc_csrbank5_tuning_word2_r;
wire [7:0] basesoc_csrbank5_tuning_word2_w;
wire basesoc_csrbank5_tuning_word1_re;
wire [7:0] basesoc_csrbank5_tuning_word1_r;
wire [7:0] basesoc_csrbank5_tuning_word1_w;
wire basesoc_csrbank5_tuning_word0_re;
wire [7:0] basesoc_csrbank5_tuning_word0_r;
wire [7:0] basesoc_csrbank5_tuning_word0_w;
wire basesoc_csrbank5_sel;
wire [15:0] slice_proxy0;
wire [15:0] slice_proxy1;
wire [15:0] slice_proxy2;
wire [15:0] slice_proxy3;
wire [15:0] slice_proxy4;
wire [15:0] slice_proxy5;
wire [15:0] slice_proxy6;
wire [15:0] slice_proxy7;
wire [15:0] slice_proxy8;
wire [15:0] slice_proxy9;
wire [15:0] slice_proxy10;
wire [15:0] slice_proxy11;
wire [15:0] slice_proxy12;
wire [15:0] slice_proxy13;
wire [15:0] slice_proxy14;
wire [15:0] slice_proxy15;
wire [15:0] slice_proxy16;
wire [15:0] slice_proxy17;
wire [15:0] slice_proxy18;
wire [15:0] slice_proxy19;
wire [15:0] slice_proxy20;
wire [15:0] slice_proxy21;
wire [15:0] slice_proxy22;
wire [15:0] slice_proxy23;
wire [15:0] slice_proxy24;
wire [15:0] slice_proxy25;
wire [15:0] slice_proxy26;
wire [15:0] slice_proxy27;
wire [15:0] slice_proxy28;
wire [15:0] slice_proxy29;
wire [15:0] slice_proxy30;
wire [15:0] slice_proxy31;
wire [15:0] slice_proxy32;
wire [15:0] slice_proxy33;
wire [15:0] slice_proxy34;
wire [15:0] slice_proxy35;
wire [15:0] slice_proxy36;
wire [15:0] slice_proxy37;
wire [15:0] slice_proxy38;
wire [15:0] slice_proxy39;
wire [15:0] slice_proxy40;
wire [15:0] slice_proxy41;
wire [15:0] slice_proxy42;
wire [15:0] slice_proxy43;
wire [15:0] slice_proxy44;
wire [15:0] slice_proxy45;
wire [15:0] slice_proxy46;
wire [15:0] slice_proxy47;
wire [15:0] slice_proxy48;
wire [15:0] slice_proxy49;
wire [15:0] slice_proxy50;
wire [15:0] slice_proxy51;
wire [15:0] slice_proxy52;
wire [15:0] slice_proxy53;
wire [15:0] slice_proxy54;
wire [15:0] slice_proxy55;
wire [15:0] slice_proxy56;
wire [15:0] slice_proxy57;
wire [15:0] slice_proxy58;
wire [15:0] slice_proxy59;
wire [15:0] slice_proxy60;
wire [15:0] slice_proxy61;
wire [15:0] slice_proxy62;
wire [15:0] slice_proxy63;
wire [1:0] slice_proxy64;
wire [1:0] slice_proxy65;
wire [1:0] slice_proxy66;
wire [1:0] slice_proxy67;
wire [1:0] slice_proxy68;
wire [1:0] slice_proxy69;
wire [1:0] slice_proxy70;
wire [1:0] slice_proxy71;
reg rhs_array_muxed0 = 1'd0;
reg [12:0] rhs_array_muxed1 = 13'd0;
reg [2:0] rhs_array_muxed2 = 3'd0;
reg rhs_array_muxed3 = 1'd0;
reg rhs_array_muxed4 = 1'd0;
reg rhs_array_muxed5 = 1'd0;
reg t_array_muxed0 = 1'd0;
reg t_array_muxed1 = 1'd0;
reg t_array_muxed2 = 1'd0;
reg rhs_array_muxed6 = 1'd0;
reg [12:0] rhs_array_muxed7 = 13'd0;
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
reg [12:0] array_muxed0 = 13'd0;
reg [2:0] array_muxed1 = 3'd0;
reg array_muxed2 = 1'd0;
reg array_muxed3 = 1'd0;
reg array_muxed4 = 1'd0;
reg array_muxed5 = 1'd0;
reg array_muxed6 = 1'd0;
reg [12:0] array_muxed7 = 13'd0;
reg [2:0] array_muxed8 = 3'd0;
reg array_muxed9 = 1'd0;
reg array_muxed10 = 1'd0;
reg array_muxed11 = 1'd0;
reg array_muxed12 = 1'd0;
reg array_muxed13 = 1'd0;
reg [12:0] array_muxed14 = 13'd0;
reg [2:0] array_muxed15 = 3'd0;
reg array_muxed16 = 1'd0;
reg array_muxed17 = 1'd0;
reg array_muxed18 = 1'd0;
reg array_muxed19 = 1'd0;
reg array_muxed20 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg regs1 = 1'd0;
wire xilinxasyncresetsynchronizerimpl0;
wire xilinxasyncresetsynchronizerimpl0_rst_meta;
wire xilinxasyncresetsynchronizerimpl1;
wire xilinxasyncresetsynchronizerimpl1_rst_meta;
wire xilinxasyncresetsynchronizerimpl2;
wire xilinxasyncresetsynchronizerimpl2_rst_meta;
wire xilinxasyncresetsynchronizerimpl3_rst_meta;

assign ddrphy_clk4x_wr_strb = crg_clk4x_wr_strb;
assign ddrphy_clk4x_rd_strb = crg_clk4x_rd_strb;
always @(*) begin
	basesoc_interrupt <= 32'd0;
	basesoc_interrupt[1] <= basesoc_timer0_irq;
	basesoc_interrupt[2] <= basesoc_uart_irq;
end
assign basesoc_ibus_adr = basesoc_i_adr_o[31:2];
assign basesoc_dbus_adr = basesoc_d_adr_o[31:2];
assign basesoc_rom_adr = basesoc_rom_bus_adr[12:0];
assign basesoc_rom_bus_dat_r = basesoc_rom_dat_r;
always @(*) begin
	basesoc_sram_we <= 4'd0;
	basesoc_sram_we[0] <= (((basesoc_sram_bus_cyc & basesoc_sram_bus_stb) & basesoc_sram_bus_we) & basesoc_sram_bus_sel[0]);
	basesoc_sram_we[1] <= (((basesoc_sram_bus_cyc & basesoc_sram_bus_stb) & basesoc_sram_bus_we) & basesoc_sram_bus_sel[1]);
	basesoc_sram_we[2] <= (((basesoc_sram_bus_cyc & basesoc_sram_bus_stb) & basesoc_sram_bus_we) & basesoc_sram_bus_sel[2]);
	basesoc_sram_we[3] <= (((basesoc_sram_bus_cyc & basesoc_sram_bus_stb) & basesoc_sram_bus_we) & basesoc_sram_bus_sel[3]);
end
assign basesoc_sram_adr = basesoc_sram_bus_adr[11:0];
assign basesoc_sram_bus_dat_r = basesoc_sram_dat_r;
assign basesoc_sram_dat_w = basesoc_sram_bus_dat_w;
assign basesoc_uart_tx_fifo_sink_valid = basesoc_uart_rxtx_re;
assign basesoc_uart_tx_fifo_sink_payload_data = basesoc_uart_rxtx_r;
assign basesoc_uart_txfull_status = (~basesoc_uart_tx_fifo_sink_ready);
assign basesoc_uart_phy_sink_valid = basesoc_uart_tx_fifo_source_valid;
assign basesoc_uart_tx_fifo_source_ready = basesoc_uart_phy_sink_ready;
assign basesoc_uart_phy_sink_first = basesoc_uart_tx_fifo_source_first;
assign basesoc_uart_phy_sink_last = basesoc_uart_tx_fifo_source_last;
assign basesoc_uart_phy_sink_payload_data = basesoc_uart_tx_fifo_source_payload_data;
assign basesoc_uart_tx_trigger = (~basesoc_uart_tx_fifo_sink_ready);
assign basesoc_uart_rx_fifo_sink_valid = basesoc_uart_phy_source_valid;
assign basesoc_uart_phy_source_ready = basesoc_uart_rx_fifo_sink_ready;
assign basesoc_uart_rx_fifo_sink_first = basesoc_uart_phy_source_first;
assign basesoc_uart_rx_fifo_sink_last = basesoc_uart_phy_source_last;
assign basesoc_uart_rx_fifo_sink_payload_data = basesoc_uart_phy_source_payload_data;
assign basesoc_uart_rxempty_status = (~basesoc_uart_rx_fifo_source_valid);
assign basesoc_uart_rxtx_w = basesoc_uart_rx_fifo_source_payload_data;
assign basesoc_uart_rx_fifo_source_ready = basesoc_uart_rx_clear;
assign basesoc_uart_rx_trigger = (~basesoc_uart_rx_fifo_source_valid);
always @(*) begin
	basesoc_uart_tx_clear <= 1'd0;
	if ((basesoc_uart_pending_re & basesoc_uart_pending_r[0])) begin
		basesoc_uart_tx_clear <= 1'd1;
	end
end
always @(*) begin
	basesoc_uart_status_w <= 2'd0;
	basesoc_uart_status_w[0] <= basesoc_uart_tx_status;
	basesoc_uart_status_w[1] <= basesoc_uart_rx_status;
end
always @(*) begin
	basesoc_uart_rx_clear <= 1'd0;
	if ((basesoc_uart_pending_re & basesoc_uart_pending_r[1])) begin
		basesoc_uart_rx_clear <= 1'd1;
	end
end
always @(*) begin
	basesoc_uart_pending_w <= 2'd0;
	basesoc_uart_pending_w[0] <= basesoc_uart_tx_pending;
	basesoc_uart_pending_w[1] <= basesoc_uart_rx_pending;
end
assign basesoc_uart_irq = ((basesoc_uart_pending_w[0] & basesoc_uart_storage[0]) | (basesoc_uart_pending_w[1] & basesoc_uart_storage[1]));
assign basesoc_uart_tx_status = basesoc_uart_tx_trigger;
assign basesoc_uart_rx_status = basesoc_uart_rx_trigger;
assign basesoc_uart_tx_fifo_syncfifo_din = {basesoc_uart_tx_fifo_fifo_in_last, basesoc_uart_tx_fifo_fifo_in_first, basesoc_uart_tx_fifo_fifo_in_payload_data};
assign {basesoc_uart_tx_fifo_fifo_out_last, basesoc_uart_tx_fifo_fifo_out_first, basesoc_uart_tx_fifo_fifo_out_payload_data} = basesoc_uart_tx_fifo_syncfifo_dout;
assign basesoc_uart_tx_fifo_sink_ready = basesoc_uart_tx_fifo_syncfifo_writable;
assign basesoc_uart_tx_fifo_syncfifo_we = basesoc_uart_tx_fifo_sink_valid;
assign basesoc_uart_tx_fifo_fifo_in_first = basesoc_uart_tx_fifo_sink_first;
assign basesoc_uart_tx_fifo_fifo_in_last = basesoc_uart_tx_fifo_sink_last;
assign basesoc_uart_tx_fifo_fifo_in_payload_data = basesoc_uart_tx_fifo_sink_payload_data;
assign basesoc_uart_tx_fifo_source_valid = basesoc_uart_tx_fifo_syncfifo_readable;
assign basesoc_uart_tx_fifo_source_first = basesoc_uart_tx_fifo_fifo_out_first;
assign basesoc_uart_tx_fifo_source_last = basesoc_uart_tx_fifo_fifo_out_last;
assign basesoc_uart_tx_fifo_source_payload_data = basesoc_uart_tx_fifo_fifo_out_payload_data;
assign basesoc_uart_tx_fifo_syncfifo_re = basesoc_uart_tx_fifo_source_ready;
always @(*) begin
	basesoc_uart_tx_fifo_wrport_adr <= 4'd0;
	if (basesoc_uart_tx_fifo_replace) begin
		basesoc_uart_tx_fifo_wrport_adr <= (basesoc_uart_tx_fifo_produce - 1'd1);
	end else begin
		basesoc_uart_tx_fifo_wrport_adr <= basesoc_uart_tx_fifo_produce;
	end
end
assign basesoc_uart_tx_fifo_wrport_dat_w = basesoc_uart_tx_fifo_syncfifo_din;
assign basesoc_uart_tx_fifo_wrport_we = (basesoc_uart_tx_fifo_syncfifo_we & (basesoc_uart_tx_fifo_syncfifo_writable | basesoc_uart_tx_fifo_replace));
assign basesoc_uart_tx_fifo_do_read = (basesoc_uart_tx_fifo_syncfifo_readable & basesoc_uart_tx_fifo_syncfifo_re);
assign basesoc_uart_tx_fifo_rdport_adr = basesoc_uart_tx_fifo_consume;
assign basesoc_uart_tx_fifo_syncfifo_dout = basesoc_uart_tx_fifo_rdport_dat_r;
assign basesoc_uart_tx_fifo_syncfifo_writable = (basesoc_uart_tx_fifo_level != 5'd16);
assign basesoc_uart_tx_fifo_syncfifo_readable = (basesoc_uart_tx_fifo_level != 1'd0);
assign basesoc_uart_rx_fifo_syncfifo_din = {basesoc_uart_rx_fifo_fifo_in_last, basesoc_uart_rx_fifo_fifo_in_first, basesoc_uart_rx_fifo_fifo_in_payload_data};
assign {basesoc_uart_rx_fifo_fifo_out_last, basesoc_uart_rx_fifo_fifo_out_first, basesoc_uart_rx_fifo_fifo_out_payload_data} = basesoc_uart_rx_fifo_syncfifo_dout;
assign basesoc_uart_rx_fifo_sink_ready = basesoc_uart_rx_fifo_syncfifo_writable;
assign basesoc_uart_rx_fifo_syncfifo_we = basesoc_uart_rx_fifo_sink_valid;
assign basesoc_uart_rx_fifo_fifo_in_first = basesoc_uart_rx_fifo_sink_first;
assign basesoc_uart_rx_fifo_fifo_in_last = basesoc_uart_rx_fifo_sink_last;
assign basesoc_uart_rx_fifo_fifo_in_payload_data = basesoc_uart_rx_fifo_sink_payload_data;
assign basesoc_uart_rx_fifo_source_valid = basesoc_uart_rx_fifo_syncfifo_readable;
assign basesoc_uart_rx_fifo_source_first = basesoc_uart_rx_fifo_fifo_out_first;
assign basesoc_uart_rx_fifo_source_last = basesoc_uart_rx_fifo_fifo_out_last;
assign basesoc_uart_rx_fifo_source_payload_data = basesoc_uart_rx_fifo_fifo_out_payload_data;
assign basesoc_uart_rx_fifo_syncfifo_re = basesoc_uart_rx_fifo_source_ready;
always @(*) begin
	basesoc_uart_rx_fifo_wrport_adr <= 4'd0;
	if (basesoc_uart_rx_fifo_replace) begin
		basesoc_uart_rx_fifo_wrport_adr <= (basesoc_uart_rx_fifo_produce - 1'd1);
	end else begin
		basesoc_uart_rx_fifo_wrport_adr <= basesoc_uart_rx_fifo_produce;
	end
end
assign basesoc_uart_rx_fifo_wrport_dat_w = basesoc_uart_rx_fifo_syncfifo_din;
assign basesoc_uart_rx_fifo_wrport_we = (basesoc_uart_rx_fifo_syncfifo_we & (basesoc_uart_rx_fifo_syncfifo_writable | basesoc_uart_rx_fifo_replace));
assign basesoc_uart_rx_fifo_do_read = (basesoc_uart_rx_fifo_syncfifo_readable & basesoc_uart_rx_fifo_syncfifo_re);
assign basesoc_uart_rx_fifo_rdport_adr = basesoc_uart_rx_fifo_consume;
assign basesoc_uart_rx_fifo_syncfifo_dout = basesoc_uart_rx_fifo_rdport_dat_r;
assign basesoc_uart_rx_fifo_syncfifo_writable = (basesoc_uart_rx_fifo_level != 5'd16);
assign basesoc_uart_rx_fifo_syncfifo_readable = (basesoc_uart_rx_fifo_level != 1'd0);
assign basesoc_timer0_zero_trigger = (basesoc_timer0_value != 1'd0);
assign basesoc_timer0_eventmanager_status_w = basesoc_timer0_zero_status;
always @(*) begin
	basesoc_timer0_zero_clear <= 1'd0;
	if ((basesoc_timer0_eventmanager_pending_re & basesoc_timer0_eventmanager_pending_r)) begin
		basesoc_timer0_zero_clear <= 1'd1;
	end
end
assign basesoc_timer0_eventmanager_pending_w = basesoc_timer0_zero_pending;
assign basesoc_timer0_irq = (basesoc_timer0_eventmanager_pending_w & basesoc_timer0_eventmanager_storage);
assign basesoc_timer0_zero_status = basesoc_timer0_zero_trigger;
assign por_clk = sys_clk;
assign sdram_full_rd_clk = sdram_full_wr_clk;
assign crg_clk4x_rd_strb = crg_clk4x_wr_strb;
assign git_status = 160'd808891591174769402931515218378060802696784539380;
assign platform_status = 63'd7022356987853668352;
assign target_status = 63'd7089074166086762496;
assign bus_dat_r = sr;
always @(*) begin
	status <= 1'd0;
	o <= 4'd0;
	oe <= 1'd0;
	spiflash4x_cs_n <= 1'd0;
	spiflash4x_clk <= 1'd0;
	if (bitbang_en_storage) begin
		spiflash4x_clk <= bitbang_storage[1];
		spiflash4x_cs_n <= bitbang_storage[2];
		if (bitbang_storage[3]) begin
			oe <= 1'd0;
		end else begin
			oe <= 1'd1;
		end
		if (bitbang_storage[1]) begin
			status <= i0[1];
		end
		o <= {{3{1'd1}}, bitbang_storage[0]};
	end else begin
		spiflash4x_clk <= clk;
		spiflash4x_cs_n <= cs_n;
		o <= sr[31:28];
		oe <= dq_oe;
	end
end
assign ddrphy_sdram_half_clk_n = (~sdram_half_clk);
assign ddrphy_dqs_t_d0 = (~(ddrphy_drive_dqs | ddrphy_postamble));
assign ddrphy_dqs_t_d1 = (~ddrphy_drive_dqs);
assign ddrphy_record0_wrdata = ddrphy_dfi_p0_wrdata;
assign ddrphy_record0_wrdata_mask = ddrphy_dfi_p0_wrdata_mask;
assign ddrphy_record0_wrdata_en = ddrphy_dfi_p0_wrdata_en;
assign ddrphy_record0_rddata_en = ddrphy_dfi_p0_rddata_en;
assign ddrphy_record1_wrdata = ddrphy_dfi_p1_wrdata;
assign ddrphy_record1_wrdata_mask = ddrphy_dfi_p1_wrdata_mask;
assign ddrphy_record1_wrdata_en = ddrphy_dfi_p1_wrdata_en;
assign ddrphy_record1_rddata_en = ddrphy_dfi_p1_rddata_en;
assign ddrphy_drive_dq_n0 = (~ddrphy_drive_dq);
assign ddrphy_wrdata_en = (ddrphy_record0_wrdata_en | ddrphy_record1_wrdata_en);
assign ddrphy_drive_dq = ddrphy_wrdata_en;
assign ddrphy_drive_dqs = ddrphy_r_dfi_wrdata_en[1];
assign ddrphy_rddata_en = (ddrphy_record0_rddata_en | ddrphy_record1_rddata_en);
assign ddrphy_dfi_p0_rddata = ddrphy_record0_rddata;
assign ddrphy_dfi_p0_rddata_valid = ddrphy_rddata_sr[0];
assign ddrphy_dfi_p1_rddata = ddrphy_record1_rddata;
assign ddrphy_dfi_p1_rddata_valid = ddrphy_rddata_sr[0];
assign ddrphy_dfi_p0_address = controllerinjector_master_p0_address;
assign ddrphy_dfi_p0_bank = controllerinjector_master_p0_bank;
assign ddrphy_dfi_p0_cas_n = controllerinjector_master_p0_cas_n;
assign ddrphy_dfi_p0_cs_n = controllerinjector_master_p0_cs_n;
assign ddrphy_dfi_p0_ras_n = controllerinjector_master_p0_ras_n;
assign ddrphy_dfi_p0_we_n = controllerinjector_master_p0_we_n;
assign ddrphy_dfi_p0_cke = controllerinjector_master_p0_cke;
assign ddrphy_dfi_p0_odt = controllerinjector_master_p0_odt;
assign ddrphy_dfi_p0_reset_n = controllerinjector_master_p0_reset_n;
assign ddrphy_dfi_p0_wrdata = controllerinjector_master_p0_wrdata;
assign ddrphy_dfi_p0_wrdata_en = controllerinjector_master_p0_wrdata_en;
assign ddrphy_dfi_p0_wrdata_mask = controllerinjector_master_p0_wrdata_mask;
assign ddrphy_dfi_p0_rddata_en = controllerinjector_master_p0_rddata_en;
assign controllerinjector_master_p0_rddata = ddrphy_dfi_p0_rddata;
assign controllerinjector_master_p0_rddata_valid = ddrphy_dfi_p0_rddata_valid;
assign ddrphy_dfi_p1_address = controllerinjector_master_p1_address;
assign ddrphy_dfi_p1_bank = controllerinjector_master_p1_bank;
assign ddrphy_dfi_p1_cas_n = controllerinjector_master_p1_cas_n;
assign ddrphy_dfi_p1_cs_n = controllerinjector_master_p1_cs_n;
assign ddrphy_dfi_p1_ras_n = controllerinjector_master_p1_ras_n;
assign ddrphy_dfi_p1_we_n = controllerinjector_master_p1_we_n;
assign ddrphy_dfi_p1_cke = controllerinjector_master_p1_cke;
assign ddrphy_dfi_p1_odt = controllerinjector_master_p1_odt;
assign ddrphy_dfi_p1_reset_n = controllerinjector_master_p1_reset_n;
assign ddrphy_dfi_p1_wrdata = controllerinjector_master_p1_wrdata;
assign ddrphy_dfi_p1_wrdata_en = controllerinjector_master_p1_wrdata_en;
assign ddrphy_dfi_p1_wrdata_mask = controllerinjector_master_p1_wrdata_mask;
assign ddrphy_dfi_p1_rddata_en = controllerinjector_master_p1_rddata_en;
assign controllerinjector_master_p1_rddata = ddrphy_dfi_p1_rddata;
assign controllerinjector_master_p1_rddata_valid = ddrphy_dfi_p1_rddata_valid;
assign controllerinjector_slave_p0_address = controllerinjector_dfi_p0_address;
assign controllerinjector_slave_p0_bank = controllerinjector_dfi_p0_bank;
assign controllerinjector_slave_p0_cas_n = controllerinjector_dfi_p0_cas_n;
assign controllerinjector_slave_p0_cs_n = controllerinjector_dfi_p0_cs_n;
assign controllerinjector_slave_p0_ras_n = controllerinjector_dfi_p0_ras_n;
assign controllerinjector_slave_p0_we_n = controllerinjector_dfi_p0_we_n;
assign controllerinjector_slave_p0_cke = controllerinjector_dfi_p0_cke;
assign controllerinjector_slave_p0_odt = controllerinjector_dfi_p0_odt;
assign controllerinjector_slave_p0_reset_n = controllerinjector_dfi_p0_reset_n;
assign controllerinjector_slave_p0_wrdata = controllerinjector_dfi_p0_wrdata;
assign controllerinjector_slave_p0_wrdata_en = controllerinjector_dfi_p0_wrdata_en;
assign controllerinjector_slave_p0_wrdata_mask = controllerinjector_dfi_p0_wrdata_mask;
assign controllerinjector_slave_p0_rddata_en = controllerinjector_dfi_p0_rddata_en;
assign controllerinjector_dfi_p0_rddata = controllerinjector_slave_p0_rddata;
assign controllerinjector_dfi_p0_rddata_valid = controllerinjector_slave_p0_rddata_valid;
assign controllerinjector_slave_p1_address = controllerinjector_dfi_p1_address;
assign controllerinjector_slave_p1_bank = controllerinjector_dfi_p1_bank;
assign controllerinjector_slave_p1_cas_n = controllerinjector_dfi_p1_cas_n;
assign controllerinjector_slave_p1_cs_n = controllerinjector_dfi_p1_cs_n;
assign controllerinjector_slave_p1_ras_n = controllerinjector_dfi_p1_ras_n;
assign controllerinjector_slave_p1_we_n = controllerinjector_dfi_p1_we_n;
assign controllerinjector_slave_p1_cke = controllerinjector_dfi_p1_cke;
assign controllerinjector_slave_p1_odt = controllerinjector_dfi_p1_odt;
assign controllerinjector_slave_p1_reset_n = controllerinjector_dfi_p1_reset_n;
assign controllerinjector_slave_p1_wrdata = controllerinjector_dfi_p1_wrdata;
assign controllerinjector_slave_p1_wrdata_en = controllerinjector_dfi_p1_wrdata_en;
assign controllerinjector_slave_p1_wrdata_mask = controllerinjector_dfi_p1_wrdata_mask;
assign controllerinjector_slave_p1_rddata_en = controllerinjector_dfi_p1_rddata_en;
assign controllerinjector_dfi_p1_rddata = controllerinjector_slave_p1_rddata;
assign controllerinjector_dfi_p1_rddata_valid = controllerinjector_slave_p1_rddata_valid;
always @(*) begin
	controllerinjector_inti_p0_rddata <= 32'd0;
	controllerinjector_inti_p0_rddata_valid <= 1'd0;
	controllerinjector_inti_p1_rddata <= 32'd0;
	controllerinjector_inti_p1_rddata_valid <= 1'd0;
	controllerinjector_slave_p0_rddata <= 32'd0;
	controllerinjector_slave_p0_rddata_valid <= 1'd0;
	controllerinjector_slave_p1_rddata <= 32'd0;
	controllerinjector_slave_p1_rddata_valid <= 1'd0;
	controllerinjector_master_p0_address <= 13'd0;
	controllerinjector_master_p0_bank <= 3'd0;
	controllerinjector_master_p0_cas_n <= 1'd1;
	controllerinjector_master_p0_cs_n <= 1'd1;
	controllerinjector_master_p0_ras_n <= 1'd1;
	controllerinjector_master_p0_we_n <= 1'd1;
	controllerinjector_master_p0_cke <= 1'd0;
	controllerinjector_master_p0_odt <= 1'd0;
	controllerinjector_master_p0_reset_n <= 1'd0;
	controllerinjector_master_p0_wrdata <= 32'd0;
	controllerinjector_master_p0_wrdata_en <= 1'd0;
	controllerinjector_master_p0_wrdata_mask <= 4'd0;
	controllerinjector_master_p0_rddata_en <= 1'd0;
	controllerinjector_master_p1_address <= 13'd0;
	controllerinjector_master_p1_bank <= 3'd0;
	controllerinjector_master_p1_cas_n <= 1'd1;
	controllerinjector_master_p1_cs_n <= 1'd1;
	controllerinjector_master_p1_ras_n <= 1'd1;
	controllerinjector_master_p1_we_n <= 1'd1;
	controllerinjector_master_p1_cke <= 1'd0;
	controllerinjector_master_p1_odt <= 1'd0;
	controllerinjector_master_p1_reset_n <= 1'd0;
	controllerinjector_master_p1_wrdata <= 32'd0;
	controllerinjector_master_p1_wrdata_en <= 1'd0;
	controllerinjector_master_p1_wrdata_mask <= 4'd0;
	controllerinjector_master_p1_rddata_en <= 1'd0;
	if (controllerinjector_storage[0]) begin
		controllerinjector_master_p0_address <= controllerinjector_slave_p0_address;
		controllerinjector_master_p0_bank <= controllerinjector_slave_p0_bank;
		controllerinjector_master_p0_cas_n <= controllerinjector_slave_p0_cas_n;
		controllerinjector_master_p0_cs_n <= controllerinjector_slave_p0_cs_n;
		controllerinjector_master_p0_ras_n <= controllerinjector_slave_p0_ras_n;
		controllerinjector_master_p0_we_n <= controllerinjector_slave_p0_we_n;
		controllerinjector_master_p0_cke <= controllerinjector_slave_p0_cke;
		controllerinjector_master_p0_odt <= controllerinjector_slave_p0_odt;
		controllerinjector_master_p0_reset_n <= controllerinjector_slave_p0_reset_n;
		controllerinjector_master_p0_wrdata <= controllerinjector_slave_p0_wrdata;
		controllerinjector_master_p0_wrdata_en <= controllerinjector_slave_p0_wrdata_en;
		controllerinjector_master_p0_wrdata_mask <= controllerinjector_slave_p0_wrdata_mask;
		controllerinjector_master_p0_rddata_en <= controllerinjector_slave_p0_rddata_en;
		controllerinjector_slave_p0_rddata <= controllerinjector_master_p0_rddata;
		controllerinjector_slave_p0_rddata_valid <= controllerinjector_master_p0_rddata_valid;
		controllerinjector_master_p1_address <= controllerinjector_slave_p1_address;
		controllerinjector_master_p1_bank <= controllerinjector_slave_p1_bank;
		controllerinjector_master_p1_cas_n <= controllerinjector_slave_p1_cas_n;
		controllerinjector_master_p1_cs_n <= controllerinjector_slave_p1_cs_n;
		controllerinjector_master_p1_ras_n <= controllerinjector_slave_p1_ras_n;
		controllerinjector_master_p1_we_n <= controllerinjector_slave_p1_we_n;
		controllerinjector_master_p1_cke <= controllerinjector_slave_p1_cke;
		controllerinjector_master_p1_odt <= controllerinjector_slave_p1_odt;
		controllerinjector_master_p1_reset_n <= controllerinjector_slave_p1_reset_n;
		controllerinjector_master_p1_wrdata <= controllerinjector_slave_p1_wrdata;
		controllerinjector_master_p1_wrdata_en <= controllerinjector_slave_p1_wrdata_en;
		controllerinjector_master_p1_wrdata_mask <= controllerinjector_slave_p1_wrdata_mask;
		controllerinjector_master_p1_rddata_en <= controllerinjector_slave_p1_rddata_en;
		controllerinjector_slave_p1_rddata <= controllerinjector_master_p1_rddata;
		controllerinjector_slave_p1_rddata_valid <= controllerinjector_master_p1_rddata_valid;
	end else begin
		controllerinjector_master_p0_address <= controllerinjector_inti_p0_address;
		controllerinjector_master_p0_bank <= controllerinjector_inti_p0_bank;
		controllerinjector_master_p0_cas_n <= controllerinjector_inti_p0_cas_n;
		controllerinjector_master_p0_cs_n <= controllerinjector_inti_p0_cs_n;
		controllerinjector_master_p0_ras_n <= controllerinjector_inti_p0_ras_n;
		controllerinjector_master_p0_we_n <= controllerinjector_inti_p0_we_n;
		controllerinjector_master_p0_cke <= controllerinjector_inti_p0_cke;
		controllerinjector_master_p0_odt <= controllerinjector_inti_p0_odt;
		controllerinjector_master_p0_reset_n <= controllerinjector_inti_p0_reset_n;
		controllerinjector_master_p0_wrdata <= controllerinjector_inti_p0_wrdata;
		controllerinjector_master_p0_wrdata_en <= controllerinjector_inti_p0_wrdata_en;
		controllerinjector_master_p0_wrdata_mask <= controllerinjector_inti_p0_wrdata_mask;
		controllerinjector_master_p0_rddata_en <= controllerinjector_inti_p0_rddata_en;
		controllerinjector_inti_p0_rddata <= controllerinjector_master_p0_rddata;
		controllerinjector_inti_p0_rddata_valid <= controllerinjector_master_p0_rddata_valid;
		controllerinjector_master_p1_address <= controllerinjector_inti_p1_address;
		controllerinjector_master_p1_bank <= controllerinjector_inti_p1_bank;
		controllerinjector_master_p1_cas_n <= controllerinjector_inti_p1_cas_n;
		controllerinjector_master_p1_cs_n <= controllerinjector_inti_p1_cs_n;
		controllerinjector_master_p1_ras_n <= controllerinjector_inti_p1_ras_n;
		controllerinjector_master_p1_we_n <= controllerinjector_inti_p1_we_n;
		controllerinjector_master_p1_cke <= controllerinjector_inti_p1_cke;
		controllerinjector_master_p1_odt <= controllerinjector_inti_p1_odt;
		controllerinjector_master_p1_reset_n <= controllerinjector_inti_p1_reset_n;
		controllerinjector_master_p1_wrdata <= controllerinjector_inti_p1_wrdata;
		controllerinjector_master_p1_wrdata_en <= controllerinjector_inti_p1_wrdata_en;
		controllerinjector_master_p1_wrdata_mask <= controllerinjector_inti_p1_wrdata_mask;
		controllerinjector_master_p1_rddata_en <= controllerinjector_inti_p1_rddata_en;
		controllerinjector_inti_p1_rddata <= controllerinjector_master_p1_rddata;
		controllerinjector_inti_p1_rddata_valid <= controllerinjector_master_p1_rddata_valid;
	end
end
assign controllerinjector_inti_p0_cke = controllerinjector_storage[1];
assign controllerinjector_inti_p1_cke = controllerinjector_storage[1];
assign controllerinjector_inti_p0_odt = controllerinjector_storage[2];
assign controllerinjector_inti_p1_odt = controllerinjector_storage[2];
assign controllerinjector_inti_p0_reset_n = controllerinjector_storage[3];
assign controllerinjector_inti_p1_reset_n = controllerinjector_storage[3];
always @(*) begin
	controllerinjector_inti_p0_cas_n <= 1'd1;
	controllerinjector_inti_p0_cs_n <= 1'd1;
	controllerinjector_inti_p0_ras_n <= 1'd1;
	controllerinjector_inti_p0_we_n <= 1'd1;
	if (controllerinjector_phaseinjector0_command_issue_re) begin
		controllerinjector_inti_p0_cs_n <= (~controllerinjector_phaseinjector0_command_storage[0]);
		controllerinjector_inti_p0_we_n <= (~controllerinjector_phaseinjector0_command_storage[1]);
		controllerinjector_inti_p0_cas_n <= (~controllerinjector_phaseinjector0_command_storage[2]);
		controllerinjector_inti_p0_ras_n <= (~controllerinjector_phaseinjector0_command_storage[3]);
	end else begin
		controllerinjector_inti_p0_cs_n <= 1'd1;
		controllerinjector_inti_p0_we_n <= 1'd1;
		controllerinjector_inti_p0_cas_n <= 1'd1;
		controllerinjector_inti_p0_ras_n <= 1'd1;
	end
end
assign controllerinjector_inti_p0_address = controllerinjector_phaseinjector0_address_storage;
assign controllerinjector_inti_p0_bank = controllerinjector_phaseinjector0_baddress_storage;
assign controllerinjector_inti_p0_wrdata_en = (controllerinjector_phaseinjector0_command_issue_re & controllerinjector_phaseinjector0_command_storage[4]);
assign controllerinjector_inti_p0_rddata_en = (controllerinjector_phaseinjector0_command_issue_re & controllerinjector_phaseinjector0_command_storage[5]);
assign controllerinjector_inti_p0_wrdata = controllerinjector_phaseinjector0_wrdata_storage;
assign controllerinjector_inti_p0_wrdata_mask = 1'd0;
always @(*) begin
	controllerinjector_inti_p1_cs_n <= 1'd1;
	controllerinjector_inti_p1_ras_n <= 1'd1;
	controllerinjector_inti_p1_we_n <= 1'd1;
	controllerinjector_inti_p1_cas_n <= 1'd1;
	if (controllerinjector_phaseinjector1_command_issue_re) begin
		controllerinjector_inti_p1_cs_n <= (~controllerinjector_phaseinjector1_command_storage[0]);
		controllerinjector_inti_p1_we_n <= (~controllerinjector_phaseinjector1_command_storage[1]);
		controllerinjector_inti_p1_cas_n <= (~controllerinjector_phaseinjector1_command_storage[2]);
		controllerinjector_inti_p1_ras_n <= (~controllerinjector_phaseinjector1_command_storage[3]);
	end else begin
		controllerinjector_inti_p1_cs_n <= 1'd1;
		controllerinjector_inti_p1_we_n <= 1'd1;
		controllerinjector_inti_p1_cas_n <= 1'd1;
		controllerinjector_inti_p1_ras_n <= 1'd1;
	end
end
assign controllerinjector_inti_p1_address = controllerinjector_phaseinjector1_address_storage;
assign controllerinjector_inti_p1_bank = controllerinjector_phaseinjector1_baddress_storage;
assign controllerinjector_inti_p1_wrdata_en = (controllerinjector_phaseinjector1_command_issue_re & controllerinjector_phaseinjector1_command_storage[4]);
assign controllerinjector_inti_p1_rddata_en = (controllerinjector_phaseinjector1_command_issue_re & controllerinjector_phaseinjector1_command_storage[5]);
assign controllerinjector_inti_p1_wrdata = controllerinjector_phaseinjector1_wrdata_storage;
assign controllerinjector_inti_p1_wrdata_mask = 1'd0;
assign controllerinjector_bankmachine0_req_valid = controllerinjector_interface_bank0_valid;
assign controllerinjector_interface_bank0_ready = controllerinjector_bankmachine0_req_ready;
assign controllerinjector_bankmachine0_req_we = controllerinjector_interface_bank0_we;
assign controllerinjector_bankmachine0_req_adr = controllerinjector_interface_bank0_adr;
assign controllerinjector_interface_bank0_lock = controllerinjector_bankmachine0_req_lock;
assign controllerinjector_interface_bank0_wdata_ready = controllerinjector_bankmachine0_req_wdata_ready;
assign controllerinjector_interface_bank0_rdata_valid = controllerinjector_bankmachine0_req_rdata_valid;
assign controllerinjector_bankmachine1_req_valid = controllerinjector_interface_bank1_valid;
assign controllerinjector_interface_bank1_ready = controllerinjector_bankmachine1_req_ready;
assign controllerinjector_bankmachine1_req_we = controllerinjector_interface_bank1_we;
assign controllerinjector_bankmachine1_req_adr = controllerinjector_interface_bank1_adr;
assign controllerinjector_interface_bank1_lock = controllerinjector_bankmachine1_req_lock;
assign controllerinjector_interface_bank1_wdata_ready = controllerinjector_bankmachine1_req_wdata_ready;
assign controllerinjector_interface_bank1_rdata_valid = controllerinjector_bankmachine1_req_rdata_valid;
assign controllerinjector_bankmachine2_req_valid = controllerinjector_interface_bank2_valid;
assign controllerinjector_interface_bank2_ready = controllerinjector_bankmachine2_req_ready;
assign controllerinjector_bankmachine2_req_we = controllerinjector_interface_bank2_we;
assign controllerinjector_bankmachine2_req_adr = controllerinjector_interface_bank2_adr;
assign controllerinjector_interface_bank2_lock = controllerinjector_bankmachine2_req_lock;
assign controllerinjector_interface_bank2_wdata_ready = controllerinjector_bankmachine2_req_wdata_ready;
assign controllerinjector_interface_bank2_rdata_valid = controllerinjector_bankmachine2_req_rdata_valid;
assign controllerinjector_bankmachine3_req_valid = controllerinjector_interface_bank3_valid;
assign controllerinjector_interface_bank3_ready = controllerinjector_bankmachine3_req_ready;
assign controllerinjector_bankmachine3_req_we = controllerinjector_interface_bank3_we;
assign controllerinjector_bankmachine3_req_adr = controllerinjector_interface_bank3_adr;
assign controllerinjector_interface_bank3_lock = controllerinjector_bankmachine3_req_lock;
assign controllerinjector_interface_bank3_wdata_ready = controllerinjector_bankmachine3_req_wdata_ready;
assign controllerinjector_interface_bank3_rdata_valid = controllerinjector_bankmachine3_req_rdata_valid;
assign controllerinjector_bankmachine4_req_valid = controllerinjector_interface_bank4_valid;
assign controllerinjector_interface_bank4_ready = controllerinjector_bankmachine4_req_ready;
assign controllerinjector_bankmachine4_req_we = controllerinjector_interface_bank4_we;
assign controllerinjector_bankmachine4_req_adr = controllerinjector_interface_bank4_adr;
assign controllerinjector_interface_bank4_lock = controllerinjector_bankmachine4_req_lock;
assign controllerinjector_interface_bank4_wdata_ready = controllerinjector_bankmachine4_req_wdata_ready;
assign controllerinjector_interface_bank4_rdata_valid = controllerinjector_bankmachine4_req_rdata_valid;
assign controllerinjector_bankmachine5_req_valid = controllerinjector_interface_bank5_valid;
assign controllerinjector_interface_bank5_ready = controllerinjector_bankmachine5_req_ready;
assign controllerinjector_bankmachine5_req_we = controllerinjector_interface_bank5_we;
assign controllerinjector_bankmachine5_req_adr = controllerinjector_interface_bank5_adr;
assign controllerinjector_interface_bank5_lock = controllerinjector_bankmachine5_req_lock;
assign controllerinjector_interface_bank5_wdata_ready = controllerinjector_bankmachine5_req_wdata_ready;
assign controllerinjector_interface_bank5_rdata_valid = controllerinjector_bankmachine5_req_rdata_valid;
assign controllerinjector_bankmachine6_req_valid = controllerinjector_interface_bank6_valid;
assign controllerinjector_interface_bank6_ready = controllerinjector_bankmachine6_req_ready;
assign controllerinjector_bankmachine6_req_we = controllerinjector_interface_bank6_we;
assign controllerinjector_bankmachine6_req_adr = controllerinjector_interface_bank6_adr;
assign controllerinjector_interface_bank6_lock = controllerinjector_bankmachine6_req_lock;
assign controllerinjector_interface_bank6_wdata_ready = controllerinjector_bankmachine6_req_wdata_ready;
assign controllerinjector_interface_bank6_rdata_valid = controllerinjector_bankmachine6_req_rdata_valid;
assign controllerinjector_bankmachine7_req_valid = controllerinjector_interface_bank7_valid;
assign controllerinjector_interface_bank7_ready = controllerinjector_bankmachine7_req_ready;
assign controllerinjector_bankmachine7_req_we = controllerinjector_interface_bank7_we;
assign controllerinjector_bankmachine7_req_adr = controllerinjector_interface_bank7_adr;
assign controllerinjector_interface_bank7_lock = controllerinjector_bankmachine7_req_lock;
assign controllerinjector_interface_bank7_wdata_ready = controllerinjector_bankmachine7_req_wdata_ready;
assign controllerinjector_interface_bank7_rdata_valid = controllerinjector_bankmachine7_req_rdata_valid;
assign controllerinjector_wait = (1'd1 & (~controllerinjector_done));
assign controllerinjector_done = (controllerinjector_count == 1'd0);
always @(*) begin
	refresher_next_state <= 2'd0;
	controllerinjector_cmd_valid <= 1'd0;
	controllerinjector_cmd_last <= 1'd0;
	controllerinjector_seq_start <= 1'd0;
	refresher_next_state <= refresher_state;
	case (refresher_state)
		1'd1: begin
			controllerinjector_cmd_valid <= 1'd1;
			if (controllerinjector_cmd_ready) begin
				controllerinjector_seq_start <= 1'd1;
				refresher_next_state <= 2'd2;
			end
		end
		2'd2: begin
			if (controllerinjector_seq_done) begin
				controllerinjector_cmd_last <= 1'd1;
				refresher_next_state <= 1'd0;
			end else begin
				controllerinjector_cmd_valid <= 1'd1;
			end
		end
		default: begin
			if (controllerinjector_done) begin
				refresher_next_state <= 1'd1;
			end
		end
	endcase
end
assign controllerinjector_bankmachine0_sink_valid = controllerinjector_bankmachine0_req_valid;
assign controllerinjector_bankmachine0_req_ready = controllerinjector_bankmachine0_sink_ready;
assign controllerinjector_bankmachine0_sink_payload_we = controllerinjector_bankmachine0_req_we;
assign controllerinjector_bankmachine0_sink_payload_adr = controllerinjector_bankmachine0_req_adr;
assign controllerinjector_bankmachine0_source_ready = (controllerinjector_bankmachine0_req_wdata_ready | controllerinjector_bankmachine0_req_rdata_valid);
assign controllerinjector_bankmachine0_req_lock = controllerinjector_bankmachine0_source_valid;
assign controllerinjector_bankmachine0_hit = (controllerinjector_bankmachine0_openrow == controllerinjector_bankmachine0_source_payload_adr[20:8]);
assign controllerinjector_bankmachine0_cmd_payload_ba = 1'd0;
always @(*) begin
	controllerinjector_bankmachine0_cmd_payload_a <= 13'd0;
	if (controllerinjector_bankmachine0_sel_row_adr) begin
		controllerinjector_bankmachine0_cmd_payload_a <= controllerinjector_bankmachine0_source_payload_adr[20:8];
	end else begin
		controllerinjector_bankmachine0_cmd_payload_a <= {controllerinjector_bankmachine0_source_payload_adr[7:0], {2{1'd0}}};
	end
end
assign controllerinjector_bankmachine0_wait = (~((controllerinjector_bankmachine0_cmd_valid & controllerinjector_bankmachine0_cmd_ready) & controllerinjector_bankmachine0_cmd_payload_is_write));
assign controllerinjector_bankmachine0_syncfifo0_din = {controllerinjector_bankmachine0_fifo_in_last, controllerinjector_bankmachine0_fifo_in_first, controllerinjector_bankmachine0_fifo_in_payload_adr, controllerinjector_bankmachine0_fifo_in_payload_we};
assign {controllerinjector_bankmachine0_fifo_out_last, controllerinjector_bankmachine0_fifo_out_first, controllerinjector_bankmachine0_fifo_out_payload_adr, controllerinjector_bankmachine0_fifo_out_payload_we} = controllerinjector_bankmachine0_syncfifo0_dout;
assign controllerinjector_bankmachine0_sink_ready = controllerinjector_bankmachine0_syncfifo0_writable;
assign controllerinjector_bankmachine0_syncfifo0_we = controllerinjector_bankmachine0_sink_valid;
assign controllerinjector_bankmachine0_fifo_in_first = controllerinjector_bankmachine0_sink_first;
assign controllerinjector_bankmachine0_fifo_in_last = controllerinjector_bankmachine0_sink_last;
assign controllerinjector_bankmachine0_fifo_in_payload_we = controllerinjector_bankmachine0_sink_payload_we;
assign controllerinjector_bankmachine0_fifo_in_payload_adr = controllerinjector_bankmachine0_sink_payload_adr;
assign controllerinjector_bankmachine0_source_valid = controllerinjector_bankmachine0_syncfifo0_readable;
assign controllerinjector_bankmachine0_source_first = controllerinjector_bankmachine0_fifo_out_first;
assign controllerinjector_bankmachine0_source_last = controllerinjector_bankmachine0_fifo_out_last;
assign controllerinjector_bankmachine0_source_payload_we = controllerinjector_bankmachine0_fifo_out_payload_we;
assign controllerinjector_bankmachine0_source_payload_adr = controllerinjector_bankmachine0_fifo_out_payload_adr;
assign controllerinjector_bankmachine0_syncfifo0_re = controllerinjector_bankmachine0_source_ready;
always @(*) begin
	controllerinjector_bankmachine0_wrport_adr <= 3'd0;
	if (controllerinjector_bankmachine0_replace) begin
		controllerinjector_bankmachine0_wrport_adr <= (controllerinjector_bankmachine0_produce - 1'd1);
	end else begin
		controllerinjector_bankmachine0_wrport_adr <= controllerinjector_bankmachine0_produce;
	end
end
assign controllerinjector_bankmachine0_wrport_dat_w = controllerinjector_bankmachine0_syncfifo0_din;
assign controllerinjector_bankmachine0_wrport_we = (controllerinjector_bankmachine0_syncfifo0_we & (controllerinjector_bankmachine0_syncfifo0_writable | controllerinjector_bankmachine0_replace));
assign controllerinjector_bankmachine0_do_read = (controllerinjector_bankmachine0_syncfifo0_readable & controllerinjector_bankmachine0_syncfifo0_re);
assign controllerinjector_bankmachine0_rdport_adr = controllerinjector_bankmachine0_consume;
assign controllerinjector_bankmachine0_syncfifo0_dout = controllerinjector_bankmachine0_rdport_dat_r;
assign controllerinjector_bankmachine0_syncfifo0_writable = (controllerinjector_bankmachine0_level != 4'd8);
assign controllerinjector_bankmachine0_syncfifo0_readable = (controllerinjector_bankmachine0_level != 1'd0);
assign controllerinjector_bankmachine0_done = (controllerinjector_bankmachine0_count == 1'd0);
always @(*) begin
	bankmachine0_next_state <= 3'd0;
	controllerinjector_bankmachine0_req_wdata_ready <= 1'd0;
	controllerinjector_bankmachine0_req_rdata_valid <= 1'd0;
	controllerinjector_bankmachine0_refresh_gnt <= 1'd0;
	controllerinjector_bankmachine0_cmd_valid <= 1'd0;
	controllerinjector_bankmachine0_track_open <= 1'd0;
	controllerinjector_bankmachine0_track_close <= 1'd0;
	controllerinjector_bankmachine0_cmd_payload_cas <= 1'd0;
	controllerinjector_bankmachine0_cmd_payload_ras <= 1'd0;
	controllerinjector_bankmachine0_cmd_payload_we <= 1'd0;
	controllerinjector_bankmachine0_sel_row_adr <= 1'd0;
	controllerinjector_bankmachine0_cmd_payload_is_cmd <= 1'd0;
	controllerinjector_bankmachine0_cmd_payload_is_read <= 1'd0;
	controllerinjector_bankmachine0_cmd_payload_is_write <= 1'd0;
	bankmachine0_next_state <= bankmachine0_state;
	case (bankmachine0_state)
		1'd1: begin
			if (controllerinjector_bankmachine0_done) begin
				controllerinjector_bankmachine0_cmd_valid <= 1'd1;
				if (controllerinjector_bankmachine0_cmd_ready) begin
					bankmachine0_next_state <= 3'd4;
				end
				controllerinjector_bankmachine0_cmd_payload_ras <= 1'd1;
				controllerinjector_bankmachine0_cmd_payload_we <= 1'd1;
				controllerinjector_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			end
			controllerinjector_bankmachine0_track_close <= 1'd1;
		end
		2'd2: begin
			controllerinjector_bankmachine0_sel_row_adr <= 1'd1;
			controllerinjector_bankmachine0_track_open <= 1'd1;
			controllerinjector_bankmachine0_cmd_valid <= 1'd1;
			controllerinjector_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			if (controllerinjector_bankmachine0_cmd_ready) begin
				bankmachine0_next_state <= 3'd5;
			end
			controllerinjector_bankmachine0_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (controllerinjector_bankmachine0_done) begin
				controllerinjector_bankmachine0_refresh_gnt <= 1'd1;
			end
			controllerinjector_bankmachine0_track_close <= 1'd1;
			controllerinjector_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			if ((~controllerinjector_bankmachine0_refresh_req)) begin
				bankmachine0_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine0_next_state <= 2'd2;
		end
		3'd5: begin
			bankmachine0_next_state <= 1'd0;
		end
		default: begin
			if (controllerinjector_bankmachine0_refresh_req) begin
				bankmachine0_next_state <= 2'd3;
			end else begin
				if (controllerinjector_bankmachine0_source_valid) begin
					if (controllerinjector_bankmachine0_has_openrow) begin
						if (controllerinjector_bankmachine0_hit) begin
							controllerinjector_bankmachine0_cmd_valid <= 1'd1;
							if (controllerinjector_bankmachine0_source_payload_we) begin
								controllerinjector_bankmachine0_req_wdata_ready <= controllerinjector_bankmachine0_cmd_ready;
								controllerinjector_bankmachine0_cmd_payload_is_write <= 1'd1;
								controllerinjector_bankmachine0_cmd_payload_we <= 1'd1;
							end else begin
								controllerinjector_bankmachine0_req_rdata_valid <= controllerinjector_bankmachine0_cmd_ready;
								controllerinjector_bankmachine0_cmd_payload_is_read <= 1'd1;
							end
							controllerinjector_bankmachine0_cmd_payload_cas <= 1'd1;
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
assign controllerinjector_bankmachine1_sink_valid = controllerinjector_bankmachine1_req_valid;
assign controllerinjector_bankmachine1_req_ready = controllerinjector_bankmachine1_sink_ready;
assign controllerinjector_bankmachine1_sink_payload_we = controllerinjector_bankmachine1_req_we;
assign controllerinjector_bankmachine1_sink_payload_adr = controllerinjector_bankmachine1_req_adr;
assign controllerinjector_bankmachine1_source_ready = (controllerinjector_bankmachine1_req_wdata_ready | controllerinjector_bankmachine1_req_rdata_valid);
assign controllerinjector_bankmachine1_req_lock = controllerinjector_bankmachine1_source_valid;
assign controllerinjector_bankmachine1_hit = (controllerinjector_bankmachine1_openrow == controllerinjector_bankmachine1_source_payload_adr[20:8]);
assign controllerinjector_bankmachine1_cmd_payload_ba = 1'd1;
always @(*) begin
	controllerinjector_bankmachine1_cmd_payload_a <= 13'd0;
	if (controllerinjector_bankmachine1_sel_row_adr) begin
		controllerinjector_bankmachine1_cmd_payload_a <= controllerinjector_bankmachine1_source_payload_adr[20:8];
	end else begin
		controllerinjector_bankmachine1_cmd_payload_a <= {controllerinjector_bankmachine1_source_payload_adr[7:0], {2{1'd0}}};
	end
end
assign controllerinjector_bankmachine1_wait = (~((controllerinjector_bankmachine1_cmd_valid & controllerinjector_bankmachine1_cmd_ready) & controllerinjector_bankmachine1_cmd_payload_is_write));
assign controllerinjector_bankmachine1_syncfifo1_din = {controllerinjector_bankmachine1_fifo_in_last, controllerinjector_bankmachine1_fifo_in_first, controllerinjector_bankmachine1_fifo_in_payload_adr, controllerinjector_bankmachine1_fifo_in_payload_we};
assign {controllerinjector_bankmachine1_fifo_out_last, controllerinjector_bankmachine1_fifo_out_first, controllerinjector_bankmachine1_fifo_out_payload_adr, controllerinjector_bankmachine1_fifo_out_payload_we} = controllerinjector_bankmachine1_syncfifo1_dout;
assign controllerinjector_bankmachine1_sink_ready = controllerinjector_bankmachine1_syncfifo1_writable;
assign controllerinjector_bankmachine1_syncfifo1_we = controllerinjector_bankmachine1_sink_valid;
assign controllerinjector_bankmachine1_fifo_in_first = controllerinjector_bankmachine1_sink_first;
assign controllerinjector_bankmachine1_fifo_in_last = controllerinjector_bankmachine1_sink_last;
assign controllerinjector_bankmachine1_fifo_in_payload_we = controllerinjector_bankmachine1_sink_payload_we;
assign controllerinjector_bankmachine1_fifo_in_payload_adr = controllerinjector_bankmachine1_sink_payload_adr;
assign controllerinjector_bankmachine1_source_valid = controllerinjector_bankmachine1_syncfifo1_readable;
assign controllerinjector_bankmachine1_source_first = controllerinjector_bankmachine1_fifo_out_first;
assign controllerinjector_bankmachine1_source_last = controllerinjector_bankmachine1_fifo_out_last;
assign controllerinjector_bankmachine1_source_payload_we = controllerinjector_bankmachine1_fifo_out_payload_we;
assign controllerinjector_bankmachine1_source_payload_adr = controllerinjector_bankmachine1_fifo_out_payload_adr;
assign controllerinjector_bankmachine1_syncfifo1_re = controllerinjector_bankmachine1_source_ready;
always @(*) begin
	controllerinjector_bankmachine1_wrport_adr <= 3'd0;
	if (controllerinjector_bankmachine1_replace) begin
		controllerinjector_bankmachine1_wrport_adr <= (controllerinjector_bankmachine1_produce - 1'd1);
	end else begin
		controllerinjector_bankmachine1_wrport_adr <= controllerinjector_bankmachine1_produce;
	end
end
assign controllerinjector_bankmachine1_wrport_dat_w = controllerinjector_bankmachine1_syncfifo1_din;
assign controllerinjector_bankmachine1_wrport_we = (controllerinjector_bankmachine1_syncfifo1_we & (controllerinjector_bankmachine1_syncfifo1_writable | controllerinjector_bankmachine1_replace));
assign controllerinjector_bankmachine1_do_read = (controllerinjector_bankmachine1_syncfifo1_readable & controllerinjector_bankmachine1_syncfifo1_re);
assign controllerinjector_bankmachine1_rdport_adr = controllerinjector_bankmachine1_consume;
assign controllerinjector_bankmachine1_syncfifo1_dout = controllerinjector_bankmachine1_rdport_dat_r;
assign controllerinjector_bankmachine1_syncfifo1_writable = (controllerinjector_bankmachine1_level != 4'd8);
assign controllerinjector_bankmachine1_syncfifo1_readable = (controllerinjector_bankmachine1_level != 1'd0);
assign controllerinjector_bankmachine1_done = (controllerinjector_bankmachine1_count == 1'd0);
always @(*) begin
	controllerinjector_bankmachine1_cmd_payload_is_cmd <= 1'd0;
	controllerinjector_bankmachine1_cmd_payload_is_read <= 1'd0;
	controllerinjector_bankmachine1_cmd_payload_is_write <= 1'd0;
	bankmachine1_next_state <= 3'd0;
	controllerinjector_bankmachine1_req_wdata_ready <= 1'd0;
	controllerinjector_bankmachine1_track_close <= 1'd0;
	controllerinjector_bankmachine1_req_rdata_valid <= 1'd0;
	controllerinjector_bankmachine1_refresh_gnt <= 1'd0;
	controllerinjector_bankmachine1_cmd_valid <= 1'd0;
	controllerinjector_bankmachine1_track_open <= 1'd0;
	controllerinjector_bankmachine1_cmd_payload_cas <= 1'd0;
	controllerinjector_bankmachine1_cmd_payload_ras <= 1'd0;
	controllerinjector_bankmachine1_cmd_payload_we <= 1'd0;
	controllerinjector_bankmachine1_sel_row_adr <= 1'd0;
	bankmachine1_next_state <= bankmachine1_state;
	case (bankmachine1_state)
		1'd1: begin
			if (controllerinjector_bankmachine1_done) begin
				controllerinjector_bankmachine1_cmd_valid <= 1'd1;
				if (controllerinjector_bankmachine1_cmd_ready) begin
					bankmachine1_next_state <= 3'd4;
				end
				controllerinjector_bankmachine1_cmd_payload_ras <= 1'd1;
				controllerinjector_bankmachine1_cmd_payload_we <= 1'd1;
				controllerinjector_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			end
			controllerinjector_bankmachine1_track_close <= 1'd1;
		end
		2'd2: begin
			controllerinjector_bankmachine1_sel_row_adr <= 1'd1;
			controllerinjector_bankmachine1_track_open <= 1'd1;
			controllerinjector_bankmachine1_cmd_valid <= 1'd1;
			controllerinjector_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			if (controllerinjector_bankmachine1_cmd_ready) begin
				bankmachine1_next_state <= 3'd5;
			end
			controllerinjector_bankmachine1_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (controllerinjector_bankmachine1_done) begin
				controllerinjector_bankmachine1_refresh_gnt <= 1'd1;
			end
			controllerinjector_bankmachine1_track_close <= 1'd1;
			controllerinjector_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			if ((~controllerinjector_bankmachine1_refresh_req)) begin
				bankmachine1_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine1_next_state <= 2'd2;
		end
		3'd5: begin
			bankmachine1_next_state <= 1'd0;
		end
		default: begin
			if (controllerinjector_bankmachine1_refresh_req) begin
				bankmachine1_next_state <= 2'd3;
			end else begin
				if (controllerinjector_bankmachine1_source_valid) begin
					if (controllerinjector_bankmachine1_has_openrow) begin
						if (controllerinjector_bankmachine1_hit) begin
							controllerinjector_bankmachine1_cmd_valid <= 1'd1;
							if (controllerinjector_bankmachine1_source_payload_we) begin
								controllerinjector_bankmachine1_req_wdata_ready <= controllerinjector_bankmachine1_cmd_ready;
								controllerinjector_bankmachine1_cmd_payload_is_write <= 1'd1;
								controllerinjector_bankmachine1_cmd_payload_we <= 1'd1;
							end else begin
								controllerinjector_bankmachine1_req_rdata_valid <= controllerinjector_bankmachine1_cmd_ready;
								controllerinjector_bankmachine1_cmd_payload_is_read <= 1'd1;
							end
							controllerinjector_bankmachine1_cmd_payload_cas <= 1'd1;
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
assign controllerinjector_bankmachine2_sink_valid = controllerinjector_bankmachine2_req_valid;
assign controllerinjector_bankmachine2_req_ready = controllerinjector_bankmachine2_sink_ready;
assign controllerinjector_bankmachine2_sink_payload_we = controllerinjector_bankmachine2_req_we;
assign controllerinjector_bankmachine2_sink_payload_adr = controllerinjector_bankmachine2_req_adr;
assign controllerinjector_bankmachine2_source_ready = (controllerinjector_bankmachine2_req_wdata_ready | controllerinjector_bankmachine2_req_rdata_valid);
assign controllerinjector_bankmachine2_req_lock = controllerinjector_bankmachine2_source_valid;
assign controllerinjector_bankmachine2_hit = (controllerinjector_bankmachine2_openrow == controllerinjector_bankmachine2_source_payload_adr[20:8]);
assign controllerinjector_bankmachine2_cmd_payload_ba = 2'd2;
always @(*) begin
	controllerinjector_bankmachine2_cmd_payload_a <= 13'd0;
	if (controllerinjector_bankmachine2_sel_row_adr) begin
		controllerinjector_bankmachine2_cmd_payload_a <= controllerinjector_bankmachine2_source_payload_adr[20:8];
	end else begin
		controllerinjector_bankmachine2_cmd_payload_a <= {controllerinjector_bankmachine2_source_payload_adr[7:0], {2{1'd0}}};
	end
end
assign controllerinjector_bankmachine2_wait = (~((controllerinjector_bankmachine2_cmd_valid & controllerinjector_bankmachine2_cmd_ready) & controllerinjector_bankmachine2_cmd_payload_is_write));
assign controllerinjector_bankmachine2_syncfifo2_din = {controllerinjector_bankmachine2_fifo_in_last, controllerinjector_bankmachine2_fifo_in_first, controllerinjector_bankmachine2_fifo_in_payload_adr, controllerinjector_bankmachine2_fifo_in_payload_we};
assign {controllerinjector_bankmachine2_fifo_out_last, controllerinjector_bankmachine2_fifo_out_first, controllerinjector_bankmachine2_fifo_out_payload_adr, controllerinjector_bankmachine2_fifo_out_payload_we} = controllerinjector_bankmachine2_syncfifo2_dout;
assign controllerinjector_bankmachine2_sink_ready = controllerinjector_bankmachine2_syncfifo2_writable;
assign controllerinjector_bankmachine2_syncfifo2_we = controllerinjector_bankmachine2_sink_valid;
assign controllerinjector_bankmachine2_fifo_in_first = controllerinjector_bankmachine2_sink_first;
assign controllerinjector_bankmachine2_fifo_in_last = controllerinjector_bankmachine2_sink_last;
assign controllerinjector_bankmachine2_fifo_in_payload_we = controllerinjector_bankmachine2_sink_payload_we;
assign controllerinjector_bankmachine2_fifo_in_payload_adr = controllerinjector_bankmachine2_sink_payload_adr;
assign controllerinjector_bankmachine2_source_valid = controllerinjector_bankmachine2_syncfifo2_readable;
assign controllerinjector_bankmachine2_source_first = controllerinjector_bankmachine2_fifo_out_first;
assign controllerinjector_bankmachine2_source_last = controllerinjector_bankmachine2_fifo_out_last;
assign controllerinjector_bankmachine2_source_payload_we = controllerinjector_bankmachine2_fifo_out_payload_we;
assign controllerinjector_bankmachine2_source_payload_adr = controllerinjector_bankmachine2_fifo_out_payload_adr;
assign controllerinjector_bankmachine2_syncfifo2_re = controllerinjector_bankmachine2_source_ready;
always @(*) begin
	controllerinjector_bankmachine2_wrport_adr <= 3'd0;
	if (controllerinjector_bankmachine2_replace) begin
		controllerinjector_bankmachine2_wrport_adr <= (controllerinjector_bankmachine2_produce - 1'd1);
	end else begin
		controllerinjector_bankmachine2_wrport_adr <= controllerinjector_bankmachine2_produce;
	end
end
assign controllerinjector_bankmachine2_wrport_dat_w = controllerinjector_bankmachine2_syncfifo2_din;
assign controllerinjector_bankmachine2_wrport_we = (controllerinjector_bankmachine2_syncfifo2_we & (controllerinjector_bankmachine2_syncfifo2_writable | controllerinjector_bankmachine2_replace));
assign controllerinjector_bankmachine2_do_read = (controllerinjector_bankmachine2_syncfifo2_readable & controllerinjector_bankmachine2_syncfifo2_re);
assign controllerinjector_bankmachine2_rdport_adr = controllerinjector_bankmachine2_consume;
assign controllerinjector_bankmachine2_syncfifo2_dout = controllerinjector_bankmachine2_rdport_dat_r;
assign controllerinjector_bankmachine2_syncfifo2_writable = (controllerinjector_bankmachine2_level != 4'd8);
assign controllerinjector_bankmachine2_syncfifo2_readable = (controllerinjector_bankmachine2_level != 1'd0);
assign controllerinjector_bankmachine2_done = (controllerinjector_bankmachine2_count == 1'd0);
always @(*) begin
	controllerinjector_bankmachine2_track_open <= 1'd0;
	controllerinjector_bankmachine2_track_close <= 1'd0;
	controllerinjector_bankmachine2_cmd_payload_cas <= 1'd0;
	controllerinjector_bankmachine2_cmd_payload_ras <= 1'd0;
	controllerinjector_bankmachine2_cmd_payload_we <= 1'd0;
	controllerinjector_bankmachine2_sel_row_adr <= 1'd0;
	controllerinjector_bankmachine2_cmd_payload_is_cmd <= 1'd0;
	controllerinjector_bankmachine2_cmd_payload_is_read <= 1'd0;
	controllerinjector_bankmachine2_cmd_payload_is_write <= 1'd0;
	controllerinjector_bankmachine2_req_wdata_ready <= 1'd0;
	controllerinjector_bankmachine2_req_rdata_valid <= 1'd0;
	controllerinjector_bankmachine2_refresh_gnt <= 1'd0;
	controllerinjector_bankmachine2_cmd_valid <= 1'd0;
	bankmachine2_next_state <= 3'd0;
	bankmachine2_next_state <= bankmachine2_state;
	case (bankmachine2_state)
		1'd1: begin
			if (controllerinjector_bankmachine2_done) begin
				controllerinjector_bankmachine2_cmd_valid <= 1'd1;
				if (controllerinjector_bankmachine2_cmd_ready) begin
					bankmachine2_next_state <= 3'd4;
				end
				controllerinjector_bankmachine2_cmd_payload_ras <= 1'd1;
				controllerinjector_bankmachine2_cmd_payload_we <= 1'd1;
				controllerinjector_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			end
			controllerinjector_bankmachine2_track_close <= 1'd1;
		end
		2'd2: begin
			controllerinjector_bankmachine2_sel_row_adr <= 1'd1;
			controllerinjector_bankmachine2_track_open <= 1'd1;
			controllerinjector_bankmachine2_cmd_valid <= 1'd1;
			controllerinjector_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			if (controllerinjector_bankmachine2_cmd_ready) begin
				bankmachine2_next_state <= 3'd5;
			end
			controllerinjector_bankmachine2_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (controllerinjector_bankmachine2_done) begin
				controllerinjector_bankmachine2_refresh_gnt <= 1'd1;
			end
			controllerinjector_bankmachine2_track_close <= 1'd1;
			controllerinjector_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			if ((~controllerinjector_bankmachine2_refresh_req)) begin
				bankmachine2_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine2_next_state <= 2'd2;
		end
		3'd5: begin
			bankmachine2_next_state <= 1'd0;
		end
		default: begin
			if (controllerinjector_bankmachine2_refresh_req) begin
				bankmachine2_next_state <= 2'd3;
			end else begin
				if (controllerinjector_bankmachine2_source_valid) begin
					if (controllerinjector_bankmachine2_has_openrow) begin
						if (controllerinjector_bankmachine2_hit) begin
							controllerinjector_bankmachine2_cmd_valid <= 1'd1;
							if (controllerinjector_bankmachine2_source_payload_we) begin
								controllerinjector_bankmachine2_req_wdata_ready <= controllerinjector_bankmachine2_cmd_ready;
								controllerinjector_bankmachine2_cmd_payload_is_write <= 1'd1;
								controllerinjector_bankmachine2_cmd_payload_we <= 1'd1;
							end else begin
								controllerinjector_bankmachine2_req_rdata_valid <= controllerinjector_bankmachine2_cmd_ready;
								controllerinjector_bankmachine2_cmd_payload_is_read <= 1'd1;
							end
							controllerinjector_bankmachine2_cmd_payload_cas <= 1'd1;
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
assign controllerinjector_bankmachine3_sink_valid = controllerinjector_bankmachine3_req_valid;
assign controllerinjector_bankmachine3_req_ready = controllerinjector_bankmachine3_sink_ready;
assign controllerinjector_bankmachine3_sink_payload_we = controllerinjector_bankmachine3_req_we;
assign controllerinjector_bankmachine3_sink_payload_adr = controllerinjector_bankmachine3_req_adr;
assign controllerinjector_bankmachine3_source_ready = (controllerinjector_bankmachine3_req_wdata_ready | controllerinjector_bankmachine3_req_rdata_valid);
assign controllerinjector_bankmachine3_req_lock = controllerinjector_bankmachine3_source_valid;
assign controllerinjector_bankmachine3_hit = (controllerinjector_bankmachine3_openrow == controllerinjector_bankmachine3_source_payload_adr[20:8]);
assign controllerinjector_bankmachine3_cmd_payload_ba = 2'd3;
always @(*) begin
	controllerinjector_bankmachine3_cmd_payload_a <= 13'd0;
	if (controllerinjector_bankmachine3_sel_row_adr) begin
		controllerinjector_bankmachine3_cmd_payload_a <= controllerinjector_bankmachine3_source_payload_adr[20:8];
	end else begin
		controllerinjector_bankmachine3_cmd_payload_a <= {controllerinjector_bankmachine3_source_payload_adr[7:0], {2{1'd0}}};
	end
end
assign controllerinjector_bankmachine3_wait = (~((controllerinjector_bankmachine3_cmd_valid & controllerinjector_bankmachine3_cmd_ready) & controllerinjector_bankmachine3_cmd_payload_is_write));
assign controllerinjector_bankmachine3_syncfifo3_din = {controllerinjector_bankmachine3_fifo_in_last, controllerinjector_bankmachine3_fifo_in_first, controllerinjector_bankmachine3_fifo_in_payload_adr, controllerinjector_bankmachine3_fifo_in_payload_we};
assign {controllerinjector_bankmachine3_fifo_out_last, controllerinjector_bankmachine3_fifo_out_first, controllerinjector_bankmachine3_fifo_out_payload_adr, controllerinjector_bankmachine3_fifo_out_payload_we} = controllerinjector_bankmachine3_syncfifo3_dout;
assign controllerinjector_bankmachine3_sink_ready = controllerinjector_bankmachine3_syncfifo3_writable;
assign controllerinjector_bankmachine3_syncfifo3_we = controllerinjector_bankmachine3_sink_valid;
assign controllerinjector_bankmachine3_fifo_in_first = controllerinjector_bankmachine3_sink_first;
assign controllerinjector_bankmachine3_fifo_in_last = controllerinjector_bankmachine3_sink_last;
assign controllerinjector_bankmachine3_fifo_in_payload_we = controllerinjector_bankmachine3_sink_payload_we;
assign controllerinjector_bankmachine3_fifo_in_payload_adr = controllerinjector_bankmachine3_sink_payload_adr;
assign controllerinjector_bankmachine3_source_valid = controllerinjector_bankmachine3_syncfifo3_readable;
assign controllerinjector_bankmachine3_source_first = controllerinjector_bankmachine3_fifo_out_first;
assign controllerinjector_bankmachine3_source_last = controllerinjector_bankmachine3_fifo_out_last;
assign controllerinjector_bankmachine3_source_payload_we = controllerinjector_bankmachine3_fifo_out_payload_we;
assign controllerinjector_bankmachine3_source_payload_adr = controllerinjector_bankmachine3_fifo_out_payload_adr;
assign controllerinjector_bankmachine3_syncfifo3_re = controllerinjector_bankmachine3_source_ready;
always @(*) begin
	controllerinjector_bankmachine3_wrport_adr <= 3'd0;
	if (controllerinjector_bankmachine3_replace) begin
		controllerinjector_bankmachine3_wrport_adr <= (controllerinjector_bankmachine3_produce - 1'd1);
	end else begin
		controllerinjector_bankmachine3_wrport_adr <= controllerinjector_bankmachine3_produce;
	end
end
assign controllerinjector_bankmachine3_wrport_dat_w = controllerinjector_bankmachine3_syncfifo3_din;
assign controllerinjector_bankmachine3_wrport_we = (controllerinjector_bankmachine3_syncfifo3_we & (controllerinjector_bankmachine3_syncfifo3_writable | controllerinjector_bankmachine3_replace));
assign controllerinjector_bankmachine3_do_read = (controllerinjector_bankmachine3_syncfifo3_readable & controllerinjector_bankmachine3_syncfifo3_re);
assign controllerinjector_bankmachine3_rdport_adr = controllerinjector_bankmachine3_consume;
assign controllerinjector_bankmachine3_syncfifo3_dout = controllerinjector_bankmachine3_rdport_dat_r;
assign controllerinjector_bankmachine3_syncfifo3_writable = (controllerinjector_bankmachine3_level != 4'd8);
assign controllerinjector_bankmachine3_syncfifo3_readable = (controllerinjector_bankmachine3_level != 1'd0);
assign controllerinjector_bankmachine3_done = (controllerinjector_bankmachine3_count == 1'd0);
always @(*) begin
	controllerinjector_bankmachine3_req_rdata_valid <= 1'd0;
	controllerinjector_bankmachine3_refresh_gnt <= 1'd0;
	controllerinjector_bankmachine3_cmd_valid <= 1'd0;
	controllerinjector_bankmachine3_track_open <= 1'd0;
	bankmachine3_next_state <= 3'd0;
	controllerinjector_bankmachine3_track_close <= 1'd0;
	controllerinjector_bankmachine3_cmd_payload_cas <= 1'd0;
	controllerinjector_bankmachine3_cmd_payload_ras <= 1'd0;
	controllerinjector_bankmachine3_cmd_payload_we <= 1'd0;
	controllerinjector_bankmachine3_sel_row_adr <= 1'd0;
	controllerinjector_bankmachine3_cmd_payload_is_cmd <= 1'd0;
	controllerinjector_bankmachine3_cmd_payload_is_read <= 1'd0;
	controllerinjector_bankmachine3_cmd_payload_is_write <= 1'd0;
	controllerinjector_bankmachine3_req_wdata_ready <= 1'd0;
	bankmachine3_next_state <= bankmachine3_state;
	case (bankmachine3_state)
		1'd1: begin
			if (controllerinjector_bankmachine3_done) begin
				controllerinjector_bankmachine3_cmd_valid <= 1'd1;
				if (controllerinjector_bankmachine3_cmd_ready) begin
					bankmachine3_next_state <= 3'd4;
				end
				controllerinjector_bankmachine3_cmd_payload_ras <= 1'd1;
				controllerinjector_bankmachine3_cmd_payload_we <= 1'd1;
				controllerinjector_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			end
			controllerinjector_bankmachine3_track_close <= 1'd1;
		end
		2'd2: begin
			controllerinjector_bankmachine3_sel_row_adr <= 1'd1;
			controllerinjector_bankmachine3_track_open <= 1'd1;
			controllerinjector_bankmachine3_cmd_valid <= 1'd1;
			controllerinjector_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			if (controllerinjector_bankmachine3_cmd_ready) begin
				bankmachine3_next_state <= 3'd5;
			end
			controllerinjector_bankmachine3_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (controllerinjector_bankmachine3_done) begin
				controllerinjector_bankmachine3_refresh_gnt <= 1'd1;
			end
			controllerinjector_bankmachine3_track_close <= 1'd1;
			controllerinjector_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			if ((~controllerinjector_bankmachine3_refresh_req)) begin
				bankmachine3_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine3_next_state <= 2'd2;
		end
		3'd5: begin
			bankmachine3_next_state <= 1'd0;
		end
		default: begin
			if (controllerinjector_bankmachine3_refresh_req) begin
				bankmachine3_next_state <= 2'd3;
			end else begin
				if (controllerinjector_bankmachine3_source_valid) begin
					if (controllerinjector_bankmachine3_has_openrow) begin
						if (controllerinjector_bankmachine3_hit) begin
							controllerinjector_bankmachine3_cmd_valid <= 1'd1;
							if (controllerinjector_bankmachine3_source_payload_we) begin
								controllerinjector_bankmachine3_req_wdata_ready <= controllerinjector_bankmachine3_cmd_ready;
								controllerinjector_bankmachine3_cmd_payload_is_write <= 1'd1;
								controllerinjector_bankmachine3_cmd_payload_we <= 1'd1;
							end else begin
								controllerinjector_bankmachine3_req_rdata_valid <= controllerinjector_bankmachine3_cmd_ready;
								controllerinjector_bankmachine3_cmd_payload_is_read <= 1'd1;
							end
							controllerinjector_bankmachine3_cmd_payload_cas <= 1'd1;
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
assign controllerinjector_bankmachine4_sink_valid = controllerinjector_bankmachine4_req_valid;
assign controllerinjector_bankmachine4_req_ready = controllerinjector_bankmachine4_sink_ready;
assign controllerinjector_bankmachine4_sink_payload_we = controllerinjector_bankmachine4_req_we;
assign controllerinjector_bankmachine4_sink_payload_adr = controllerinjector_bankmachine4_req_adr;
assign controllerinjector_bankmachine4_source_ready = (controllerinjector_bankmachine4_req_wdata_ready | controllerinjector_bankmachine4_req_rdata_valid);
assign controllerinjector_bankmachine4_req_lock = controllerinjector_bankmachine4_source_valid;
assign controllerinjector_bankmachine4_hit = (controllerinjector_bankmachine4_openrow == controllerinjector_bankmachine4_source_payload_adr[20:8]);
assign controllerinjector_bankmachine4_cmd_payload_ba = 3'd4;
always @(*) begin
	controllerinjector_bankmachine4_cmd_payload_a <= 13'd0;
	if (controllerinjector_bankmachine4_sel_row_adr) begin
		controllerinjector_bankmachine4_cmd_payload_a <= controllerinjector_bankmachine4_source_payload_adr[20:8];
	end else begin
		controllerinjector_bankmachine4_cmd_payload_a <= {controllerinjector_bankmachine4_source_payload_adr[7:0], {2{1'd0}}};
	end
end
assign controllerinjector_bankmachine4_wait = (~((controllerinjector_bankmachine4_cmd_valid & controllerinjector_bankmachine4_cmd_ready) & controllerinjector_bankmachine4_cmd_payload_is_write));
assign controllerinjector_bankmachine4_syncfifo4_din = {controllerinjector_bankmachine4_fifo_in_last, controllerinjector_bankmachine4_fifo_in_first, controllerinjector_bankmachine4_fifo_in_payload_adr, controllerinjector_bankmachine4_fifo_in_payload_we};
assign {controllerinjector_bankmachine4_fifo_out_last, controllerinjector_bankmachine4_fifo_out_first, controllerinjector_bankmachine4_fifo_out_payload_adr, controllerinjector_bankmachine4_fifo_out_payload_we} = controllerinjector_bankmachine4_syncfifo4_dout;
assign controllerinjector_bankmachine4_sink_ready = controllerinjector_bankmachine4_syncfifo4_writable;
assign controllerinjector_bankmachine4_syncfifo4_we = controllerinjector_bankmachine4_sink_valid;
assign controllerinjector_bankmachine4_fifo_in_first = controllerinjector_bankmachine4_sink_first;
assign controllerinjector_bankmachine4_fifo_in_last = controllerinjector_bankmachine4_sink_last;
assign controllerinjector_bankmachine4_fifo_in_payload_we = controllerinjector_bankmachine4_sink_payload_we;
assign controllerinjector_bankmachine4_fifo_in_payload_adr = controllerinjector_bankmachine4_sink_payload_adr;
assign controllerinjector_bankmachine4_source_valid = controllerinjector_bankmachine4_syncfifo4_readable;
assign controllerinjector_bankmachine4_source_first = controllerinjector_bankmachine4_fifo_out_first;
assign controllerinjector_bankmachine4_source_last = controllerinjector_bankmachine4_fifo_out_last;
assign controllerinjector_bankmachine4_source_payload_we = controllerinjector_bankmachine4_fifo_out_payload_we;
assign controllerinjector_bankmachine4_source_payload_adr = controllerinjector_bankmachine4_fifo_out_payload_adr;
assign controllerinjector_bankmachine4_syncfifo4_re = controllerinjector_bankmachine4_source_ready;
always @(*) begin
	controllerinjector_bankmachine4_wrport_adr <= 3'd0;
	if (controllerinjector_bankmachine4_replace) begin
		controllerinjector_bankmachine4_wrport_adr <= (controllerinjector_bankmachine4_produce - 1'd1);
	end else begin
		controllerinjector_bankmachine4_wrport_adr <= controllerinjector_bankmachine4_produce;
	end
end
assign controllerinjector_bankmachine4_wrport_dat_w = controllerinjector_bankmachine4_syncfifo4_din;
assign controllerinjector_bankmachine4_wrport_we = (controllerinjector_bankmachine4_syncfifo4_we & (controllerinjector_bankmachine4_syncfifo4_writable | controllerinjector_bankmachine4_replace));
assign controllerinjector_bankmachine4_do_read = (controllerinjector_bankmachine4_syncfifo4_readable & controllerinjector_bankmachine4_syncfifo4_re);
assign controllerinjector_bankmachine4_rdport_adr = controllerinjector_bankmachine4_consume;
assign controllerinjector_bankmachine4_syncfifo4_dout = controllerinjector_bankmachine4_rdport_dat_r;
assign controllerinjector_bankmachine4_syncfifo4_writable = (controllerinjector_bankmachine4_level != 4'd8);
assign controllerinjector_bankmachine4_syncfifo4_readable = (controllerinjector_bankmachine4_level != 1'd0);
assign controllerinjector_bankmachine4_done = (controllerinjector_bankmachine4_count == 1'd0);
always @(*) begin
	controllerinjector_bankmachine4_req_wdata_ready <= 1'd0;
	controllerinjector_bankmachine4_req_rdata_valid <= 1'd0;
	controllerinjector_bankmachine4_refresh_gnt <= 1'd0;
	controllerinjector_bankmachine4_cmd_valid <= 1'd0;
	controllerinjector_bankmachine4_track_open <= 1'd0;
	controllerinjector_bankmachine4_cmd_payload_cas <= 1'd0;
	controllerinjector_bankmachine4_track_close <= 1'd0;
	controllerinjector_bankmachine4_cmd_payload_ras <= 1'd0;
	controllerinjector_bankmachine4_cmd_payload_we <= 1'd0;
	controllerinjector_bankmachine4_sel_row_adr <= 1'd0;
	controllerinjector_bankmachine4_cmd_payload_is_cmd <= 1'd0;
	controllerinjector_bankmachine4_cmd_payload_is_read <= 1'd0;
	bankmachine4_next_state <= 3'd0;
	controllerinjector_bankmachine4_cmd_payload_is_write <= 1'd0;
	bankmachine4_next_state <= bankmachine4_state;
	case (bankmachine4_state)
		1'd1: begin
			if (controllerinjector_bankmachine4_done) begin
				controllerinjector_bankmachine4_cmd_valid <= 1'd1;
				if (controllerinjector_bankmachine4_cmd_ready) begin
					bankmachine4_next_state <= 3'd4;
				end
				controllerinjector_bankmachine4_cmd_payload_ras <= 1'd1;
				controllerinjector_bankmachine4_cmd_payload_we <= 1'd1;
				controllerinjector_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			end
			controllerinjector_bankmachine4_track_close <= 1'd1;
		end
		2'd2: begin
			controllerinjector_bankmachine4_sel_row_adr <= 1'd1;
			controllerinjector_bankmachine4_track_open <= 1'd1;
			controllerinjector_bankmachine4_cmd_valid <= 1'd1;
			controllerinjector_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			if (controllerinjector_bankmachine4_cmd_ready) begin
				bankmachine4_next_state <= 3'd5;
			end
			controllerinjector_bankmachine4_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (controllerinjector_bankmachine4_done) begin
				controllerinjector_bankmachine4_refresh_gnt <= 1'd1;
			end
			controllerinjector_bankmachine4_track_close <= 1'd1;
			controllerinjector_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			if ((~controllerinjector_bankmachine4_refresh_req)) begin
				bankmachine4_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine4_next_state <= 2'd2;
		end
		3'd5: begin
			bankmachine4_next_state <= 1'd0;
		end
		default: begin
			if (controllerinjector_bankmachine4_refresh_req) begin
				bankmachine4_next_state <= 2'd3;
			end else begin
				if (controllerinjector_bankmachine4_source_valid) begin
					if (controllerinjector_bankmachine4_has_openrow) begin
						if (controllerinjector_bankmachine4_hit) begin
							controllerinjector_bankmachine4_cmd_valid <= 1'd1;
							if (controllerinjector_bankmachine4_source_payload_we) begin
								controllerinjector_bankmachine4_req_wdata_ready <= controllerinjector_bankmachine4_cmd_ready;
								controllerinjector_bankmachine4_cmd_payload_is_write <= 1'd1;
								controllerinjector_bankmachine4_cmd_payload_we <= 1'd1;
							end else begin
								controllerinjector_bankmachine4_req_rdata_valid <= controllerinjector_bankmachine4_cmd_ready;
								controllerinjector_bankmachine4_cmd_payload_is_read <= 1'd1;
							end
							controllerinjector_bankmachine4_cmd_payload_cas <= 1'd1;
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
assign controllerinjector_bankmachine5_sink_valid = controllerinjector_bankmachine5_req_valid;
assign controllerinjector_bankmachine5_req_ready = controllerinjector_bankmachine5_sink_ready;
assign controllerinjector_bankmachine5_sink_payload_we = controllerinjector_bankmachine5_req_we;
assign controllerinjector_bankmachine5_sink_payload_adr = controllerinjector_bankmachine5_req_adr;
assign controllerinjector_bankmachine5_source_ready = (controllerinjector_bankmachine5_req_wdata_ready | controllerinjector_bankmachine5_req_rdata_valid);
assign controllerinjector_bankmachine5_req_lock = controllerinjector_bankmachine5_source_valid;
assign controllerinjector_bankmachine5_hit = (controllerinjector_bankmachine5_openrow == controllerinjector_bankmachine5_source_payload_adr[20:8]);
assign controllerinjector_bankmachine5_cmd_payload_ba = 3'd5;
always @(*) begin
	controllerinjector_bankmachine5_cmd_payload_a <= 13'd0;
	if (controllerinjector_bankmachine5_sel_row_adr) begin
		controllerinjector_bankmachine5_cmd_payload_a <= controllerinjector_bankmachine5_source_payload_adr[20:8];
	end else begin
		controllerinjector_bankmachine5_cmd_payload_a <= {controllerinjector_bankmachine5_source_payload_adr[7:0], {2{1'd0}}};
	end
end
assign controllerinjector_bankmachine5_wait = (~((controllerinjector_bankmachine5_cmd_valid & controllerinjector_bankmachine5_cmd_ready) & controllerinjector_bankmachine5_cmd_payload_is_write));
assign controllerinjector_bankmachine5_syncfifo5_din = {controllerinjector_bankmachine5_fifo_in_last, controllerinjector_bankmachine5_fifo_in_first, controllerinjector_bankmachine5_fifo_in_payload_adr, controllerinjector_bankmachine5_fifo_in_payload_we};
assign {controllerinjector_bankmachine5_fifo_out_last, controllerinjector_bankmachine5_fifo_out_first, controllerinjector_bankmachine5_fifo_out_payload_adr, controllerinjector_bankmachine5_fifo_out_payload_we} = controllerinjector_bankmachine5_syncfifo5_dout;
assign controllerinjector_bankmachine5_sink_ready = controllerinjector_bankmachine5_syncfifo5_writable;
assign controllerinjector_bankmachine5_syncfifo5_we = controllerinjector_bankmachine5_sink_valid;
assign controllerinjector_bankmachine5_fifo_in_first = controllerinjector_bankmachine5_sink_first;
assign controllerinjector_bankmachine5_fifo_in_last = controllerinjector_bankmachine5_sink_last;
assign controllerinjector_bankmachine5_fifo_in_payload_we = controllerinjector_bankmachine5_sink_payload_we;
assign controllerinjector_bankmachine5_fifo_in_payload_adr = controllerinjector_bankmachine5_sink_payload_adr;
assign controllerinjector_bankmachine5_source_valid = controllerinjector_bankmachine5_syncfifo5_readable;
assign controllerinjector_bankmachine5_source_first = controllerinjector_bankmachine5_fifo_out_first;
assign controllerinjector_bankmachine5_source_last = controllerinjector_bankmachine5_fifo_out_last;
assign controllerinjector_bankmachine5_source_payload_we = controllerinjector_bankmachine5_fifo_out_payload_we;
assign controllerinjector_bankmachine5_source_payload_adr = controllerinjector_bankmachine5_fifo_out_payload_adr;
assign controllerinjector_bankmachine5_syncfifo5_re = controllerinjector_bankmachine5_source_ready;
always @(*) begin
	controllerinjector_bankmachine5_wrport_adr <= 3'd0;
	if (controllerinjector_bankmachine5_replace) begin
		controllerinjector_bankmachine5_wrport_adr <= (controllerinjector_bankmachine5_produce - 1'd1);
	end else begin
		controllerinjector_bankmachine5_wrport_adr <= controllerinjector_bankmachine5_produce;
	end
end
assign controllerinjector_bankmachine5_wrport_dat_w = controllerinjector_bankmachine5_syncfifo5_din;
assign controllerinjector_bankmachine5_wrport_we = (controllerinjector_bankmachine5_syncfifo5_we & (controllerinjector_bankmachine5_syncfifo5_writable | controllerinjector_bankmachine5_replace));
assign controllerinjector_bankmachine5_do_read = (controllerinjector_bankmachine5_syncfifo5_readable & controllerinjector_bankmachine5_syncfifo5_re);
assign controllerinjector_bankmachine5_rdport_adr = controllerinjector_bankmachine5_consume;
assign controllerinjector_bankmachine5_syncfifo5_dout = controllerinjector_bankmachine5_rdport_dat_r;
assign controllerinjector_bankmachine5_syncfifo5_writable = (controllerinjector_bankmachine5_level != 4'd8);
assign controllerinjector_bankmachine5_syncfifo5_readable = (controllerinjector_bankmachine5_level != 1'd0);
assign controllerinjector_bankmachine5_done = (controllerinjector_bankmachine5_count == 1'd0);
always @(*) begin
	controllerinjector_bankmachine5_req_wdata_ready <= 1'd0;
	controllerinjector_bankmachine5_req_rdata_valid <= 1'd0;
	controllerinjector_bankmachine5_refresh_gnt <= 1'd0;
	controllerinjector_bankmachine5_cmd_valid <= 1'd0;
	controllerinjector_bankmachine5_track_open <= 1'd0;
	controllerinjector_bankmachine5_track_close <= 1'd0;
	controllerinjector_bankmachine5_cmd_payload_cas <= 1'd0;
	controllerinjector_bankmachine5_cmd_payload_ras <= 1'd0;
	controllerinjector_bankmachine5_cmd_payload_we <= 1'd0;
	controllerinjector_bankmachine5_sel_row_adr <= 1'd0;
	controllerinjector_bankmachine5_cmd_payload_is_cmd <= 1'd0;
	controllerinjector_bankmachine5_cmd_payload_is_read <= 1'd0;
	controllerinjector_bankmachine5_cmd_payload_is_write <= 1'd0;
	bankmachine5_next_state <= 3'd0;
	bankmachine5_next_state <= bankmachine5_state;
	case (bankmachine5_state)
		1'd1: begin
			if (controllerinjector_bankmachine5_done) begin
				controllerinjector_bankmachine5_cmd_valid <= 1'd1;
				if (controllerinjector_bankmachine5_cmd_ready) begin
					bankmachine5_next_state <= 3'd4;
				end
				controllerinjector_bankmachine5_cmd_payload_ras <= 1'd1;
				controllerinjector_bankmachine5_cmd_payload_we <= 1'd1;
				controllerinjector_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			end
			controllerinjector_bankmachine5_track_close <= 1'd1;
		end
		2'd2: begin
			controllerinjector_bankmachine5_sel_row_adr <= 1'd1;
			controllerinjector_bankmachine5_track_open <= 1'd1;
			controllerinjector_bankmachine5_cmd_valid <= 1'd1;
			controllerinjector_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			if (controllerinjector_bankmachine5_cmd_ready) begin
				bankmachine5_next_state <= 3'd5;
			end
			controllerinjector_bankmachine5_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (controllerinjector_bankmachine5_done) begin
				controllerinjector_bankmachine5_refresh_gnt <= 1'd1;
			end
			controllerinjector_bankmachine5_track_close <= 1'd1;
			controllerinjector_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			if ((~controllerinjector_bankmachine5_refresh_req)) begin
				bankmachine5_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine5_next_state <= 2'd2;
		end
		3'd5: begin
			bankmachine5_next_state <= 1'd0;
		end
		default: begin
			if (controllerinjector_bankmachine5_refresh_req) begin
				bankmachine5_next_state <= 2'd3;
			end else begin
				if (controllerinjector_bankmachine5_source_valid) begin
					if (controllerinjector_bankmachine5_has_openrow) begin
						if (controllerinjector_bankmachine5_hit) begin
							controllerinjector_bankmachine5_cmd_valid <= 1'd1;
							if (controllerinjector_bankmachine5_source_payload_we) begin
								controllerinjector_bankmachine5_req_wdata_ready <= controllerinjector_bankmachine5_cmd_ready;
								controllerinjector_bankmachine5_cmd_payload_is_write <= 1'd1;
								controllerinjector_bankmachine5_cmd_payload_we <= 1'd1;
							end else begin
								controllerinjector_bankmachine5_req_rdata_valid <= controllerinjector_bankmachine5_cmd_ready;
								controllerinjector_bankmachine5_cmd_payload_is_read <= 1'd1;
							end
							controllerinjector_bankmachine5_cmd_payload_cas <= 1'd1;
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
assign controllerinjector_bankmachine6_sink_valid = controllerinjector_bankmachine6_req_valid;
assign controllerinjector_bankmachine6_req_ready = controllerinjector_bankmachine6_sink_ready;
assign controllerinjector_bankmachine6_sink_payload_we = controllerinjector_bankmachine6_req_we;
assign controllerinjector_bankmachine6_sink_payload_adr = controllerinjector_bankmachine6_req_adr;
assign controllerinjector_bankmachine6_source_ready = (controllerinjector_bankmachine6_req_wdata_ready | controllerinjector_bankmachine6_req_rdata_valid);
assign controllerinjector_bankmachine6_req_lock = controllerinjector_bankmachine6_source_valid;
assign controllerinjector_bankmachine6_hit = (controllerinjector_bankmachine6_openrow == controllerinjector_bankmachine6_source_payload_adr[20:8]);
assign controllerinjector_bankmachine6_cmd_payload_ba = 3'd6;
always @(*) begin
	controllerinjector_bankmachine6_cmd_payload_a <= 13'd0;
	if (controllerinjector_bankmachine6_sel_row_adr) begin
		controllerinjector_bankmachine6_cmd_payload_a <= controllerinjector_bankmachine6_source_payload_adr[20:8];
	end else begin
		controllerinjector_bankmachine6_cmd_payload_a <= {controllerinjector_bankmachine6_source_payload_adr[7:0], {2{1'd0}}};
	end
end
assign controllerinjector_bankmachine6_wait = (~((controllerinjector_bankmachine6_cmd_valid & controllerinjector_bankmachine6_cmd_ready) & controllerinjector_bankmachine6_cmd_payload_is_write));
assign controllerinjector_bankmachine6_syncfifo6_din = {controllerinjector_bankmachine6_fifo_in_last, controllerinjector_bankmachine6_fifo_in_first, controllerinjector_bankmachine6_fifo_in_payload_adr, controllerinjector_bankmachine6_fifo_in_payload_we};
assign {controllerinjector_bankmachine6_fifo_out_last, controllerinjector_bankmachine6_fifo_out_first, controllerinjector_bankmachine6_fifo_out_payload_adr, controllerinjector_bankmachine6_fifo_out_payload_we} = controllerinjector_bankmachine6_syncfifo6_dout;
assign controllerinjector_bankmachine6_sink_ready = controllerinjector_bankmachine6_syncfifo6_writable;
assign controllerinjector_bankmachine6_syncfifo6_we = controllerinjector_bankmachine6_sink_valid;
assign controllerinjector_bankmachine6_fifo_in_first = controllerinjector_bankmachine6_sink_first;
assign controllerinjector_bankmachine6_fifo_in_last = controllerinjector_bankmachine6_sink_last;
assign controllerinjector_bankmachine6_fifo_in_payload_we = controllerinjector_bankmachine6_sink_payload_we;
assign controllerinjector_bankmachine6_fifo_in_payload_adr = controllerinjector_bankmachine6_sink_payload_adr;
assign controllerinjector_bankmachine6_source_valid = controllerinjector_bankmachine6_syncfifo6_readable;
assign controllerinjector_bankmachine6_source_first = controllerinjector_bankmachine6_fifo_out_first;
assign controllerinjector_bankmachine6_source_last = controllerinjector_bankmachine6_fifo_out_last;
assign controllerinjector_bankmachine6_source_payload_we = controllerinjector_bankmachine6_fifo_out_payload_we;
assign controllerinjector_bankmachine6_source_payload_adr = controllerinjector_bankmachine6_fifo_out_payload_adr;
assign controllerinjector_bankmachine6_syncfifo6_re = controllerinjector_bankmachine6_source_ready;
always @(*) begin
	controllerinjector_bankmachine6_wrport_adr <= 3'd0;
	if (controllerinjector_bankmachine6_replace) begin
		controllerinjector_bankmachine6_wrport_adr <= (controllerinjector_bankmachine6_produce - 1'd1);
	end else begin
		controllerinjector_bankmachine6_wrport_adr <= controllerinjector_bankmachine6_produce;
	end
end
assign controllerinjector_bankmachine6_wrport_dat_w = controllerinjector_bankmachine6_syncfifo6_din;
assign controllerinjector_bankmachine6_wrport_we = (controllerinjector_bankmachine6_syncfifo6_we & (controllerinjector_bankmachine6_syncfifo6_writable | controllerinjector_bankmachine6_replace));
assign controllerinjector_bankmachine6_do_read = (controllerinjector_bankmachine6_syncfifo6_readable & controllerinjector_bankmachine6_syncfifo6_re);
assign controllerinjector_bankmachine6_rdport_adr = controllerinjector_bankmachine6_consume;
assign controllerinjector_bankmachine6_syncfifo6_dout = controllerinjector_bankmachine6_rdport_dat_r;
assign controllerinjector_bankmachine6_syncfifo6_writable = (controllerinjector_bankmachine6_level != 4'd8);
assign controllerinjector_bankmachine6_syncfifo6_readable = (controllerinjector_bankmachine6_level != 1'd0);
assign controllerinjector_bankmachine6_done = (controllerinjector_bankmachine6_count == 1'd0);
always @(*) begin
	controllerinjector_bankmachine6_cmd_payload_is_write <= 1'd0;
	bankmachine6_next_state <= 3'd0;
	controllerinjector_bankmachine6_req_wdata_ready <= 1'd0;
	controllerinjector_bankmachine6_req_rdata_valid <= 1'd0;
	controllerinjector_bankmachine6_refresh_gnt <= 1'd0;
	controllerinjector_bankmachine6_cmd_valid <= 1'd0;
	controllerinjector_bankmachine6_track_open <= 1'd0;
	controllerinjector_bankmachine6_track_close <= 1'd0;
	controllerinjector_bankmachine6_cmd_payload_cas <= 1'd0;
	controllerinjector_bankmachine6_cmd_payload_ras <= 1'd0;
	controllerinjector_bankmachine6_cmd_payload_we <= 1'd0;
	controllerinjector_bankmachine6_sel_row_adr <= 1'd0;
	controllerinjector_bankmachine6_cmd_payload_is_cmd <= 1'd0;
	controllerinjector_bankmachine6_cmd_payload_is_read <= 1'd0;
	bankmachine6_next_state <= bankmachine6_state;
	case (bankmachine6_state)
		1'd1: begin
			if (controllerinjector_bankmachine6_done) begin
				controllerinjector_bankmachine6_cmd_valid <= 1'd1;
				if (controllerinjector_bankmachine6_cmd_ready) begin
					bankmachine6_next_state <= 3'd4;
				end
				controllerinjector_bankmachine6_cmd_payload_ras <= 1'd1;
				controllerinjector_bankmachine6_cmd_payload_we <= 1'd1;
				controllerinjector_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			end
			controllerinjector_bankmachine6_track_close <= 1'd1;
		end
		2'd2: begin
			controllerinjector_bankmachine6_sel_row_adr <= 1'd1;
			controllerinjector_bankmachine6_track_open <= 1'd1;
			controllerinjector_bankmachine6_cmd_valid <= 1'd1;
			controllerinjector_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			if (controllerinjector_bankmachine6_cmd_ready) begin
				bankmachine6_next_state <= 3'd5;
			end
			controllerinjector_bankmachine6_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (controllerinjector_bankmachine6_done) begin
				controllerinjector_bankmachine6_refresh_gnt <= 1'd1;
			end
			controllerinjector_bankmachine6_track_close <= 1'd1;
			controllerinjector_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			if ((~controllerinjector_bankmachine6_refresh_req)) begin
				bankmachine6_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine6_next_state <= 2'd2;
		end
		3'd5: begin
			bankmachine6_next_state <= 1'd0;
		end
		default: begin
			if (controllerinjector_bankmachine6_refresh_req) begin
				bankmachine6_next_state <= 2'd3;
			end else begin
				if (controllerinjector_bankmachine6_source_valid) begin
					if (controllerinjector_bankmachine6_has_openrow) begin
						if (controllerinjector_bankmachine6_hit) begin
							controllerinjector_bankmachine6_cmd_valid <= 1'd1;
							if (controllerinjector_bankmachine6_source_payload_we) begin
								controllerinjector_bankmachine6_req_wdata_ready <= controllerinjector_bankmachine6_cmd_ready;
								controllerinjector_bankmachine6_cmd_payload_is_write <= 1'd1;
								controllerinjector_bankmachine6_cmd_payload_we <= 1'd1;
							end else begin
								controllerinjector_bankmachine6_req_rdata_valid <= controllerinjector_bankmachine6_cmd_ready;
								controllerinjector_bankmachine6_cmd_payload_is_read <= 1'd1;
							end
							controllerinjector_bankmachine6_cmd_payload_cas <= 1'd1;
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
assign controllerinjector_bankmachine7_sink_valid = controllerinjector_bankmachine7_req_valid;
assign controllerinjector_bankmachine7_req_ready = controllerinjector_bankmachine7_sink_ready;
assign controllerinjector_bankmachine7_sink_payload_we = controllerinjector_bankmachine7_req_we;
assign controllerinjector_bankmachine7_sink_payload_adr = controllerinjector_bankmachine7_req_adr;
assign controllerinjector_bankmachine7_source_ready = (controllerinjector_bankmachine7_req_wdata_ready | controllerinjector_bankmachine7_req_rdata_valid);
assign controllerinjector_bankmachine7_req_lock = controllerinjector_bankmachine7_source_valid;
assign controllerinjector_bankmachine7_hit = (controllerinjector_bankmachine7_openrow == controllerinjector_bankmachine7_source_payload_adr[20:8]);
assign controllerinjector_bankmachine7_cmd_payload_ba = 3'd7;
always @(*) begin
	controllerinjector_bankmachine7_cmd_payload_a <= 13'd0;
	if (controllerinjector_bankmachine7_sel_row_adr) begin
		controllerinjector_bankmachine7_cmd_payload_a <= controllerinjector_bankmachine7_source_payload_adr[20:8];
	end else begin
		controllerinjector_bankmachine7_cmd_payload_a <= {controllerinjector_bankmachine7_source_payload_adr[7:0], {2{1'd0}}};
	end
end
assign controllerinjector_bankmachine7_wait = (~((controllerinjector_bankmachine7_cmd_valid & controllerinjector_bankmachine7_cmd_ready) & controllerinjector_bankmachine7_cmd_payload_is_write));
assign controllerinjector_bankmachine7_syncfifo7_din = {controllerinjector_bankmachine7_fifo_in_last, controllerinjector_bankmachine7_fifo_in_first, controllerinjector_bankmachine7_fifo_in_payload_adr, controllerinjector_bankmachine7_fifo_in_payload_we};
assign {controllerinjector_bankmachine7_fifo_out_last, controllerinjector_bankmachine7_fifo_out_first, controllerinjector_bankmachine7_fifo_out_payload_adr, controllerinjector_bankmachine7_fifo_out_payload_we} = controllerinjector_bankmachine7_syncfifo7_dout;
assign controllerinjector_bankmachine7_sink_ready = controllerinjector_bankmachine7_syncfifo7_writable;
assign controllerinjector_bankmachine7_syncfifo7_we = controllerinjector_bankmachine7_sink_valid;
assign controllerinjector_bankmachine7_fifo_in_first = controllerinjector_bankmachine7_sink_first;
assign controllerinjector_bankmachine7_fifo_in_last = controllerinjector_bankmachine7_sink_last;
assign controllerinjector_bankmachine7_fifo_in_payload_we = controllerinjector_bankmachine7_sink_payload_we;
assign controllerinjector_bankmachine7_fifo_in_payload_adr = controllerinjector_bankmachine7_sink_payload_adr;
assign controllerinjector_bankmachine7_source_valid = controllerinjector_bankmachine7_syncfifo7_readable;
assign controllerinjector_bankmachine7_source_first = controllerinjector_bankmachine7_fifo_out_first;
assign controllerinjector_bankmachine7_source_last = controllerinjector_bankmachine7_fifo_out_last;
assign controllerinjector_bankmachine7_source_payload_we = controllerinjector_bankmachine7_fifo_out_payload_we;
assign controllerinjector_bankmachine7_source_payload_adr = controllerinjector_bankmachine7_fifo_out_payload_adr;
assign controllerinjector_bankmachine7_syncfifo7_re = controllerinjector_bankmachine7_source_ready;
always @(*) begin
	controllerinjector_bankmachine7_wrport_adr <= 3'd0;
	if (controllerinjector_bankmachine7_replace) begin
		controllerinjector_bankmachine7_wrport_adr <= (controllerinjector_bankmachine7_produce - 1'd1);
	end else begin
		controllerinjector_bankmachine7_wrport_adr <= controllerinjector_bankmachine7_produce;
	end
end
assign controllerinjector_bankmachine7_wrport_dat_w = controllerinjector_bankmachine7_syncfifo7_din;
assign controllerinjector_bankmachine7_wrport_we = (controllerinjector_bankmachine7_syncfifo7_we & (controllerinjector_bankmachine7_syncfifo7_writable | controllerinjector_bankmachine7_replace));
assign controllerinjector_bankmachine7_do_read = (controllerinjector_bankmachine7_syncfifo7_readable & controllerinjector_bankmachine7_syncfifo7_re);
assign controllerinjector_bankmachine7_rdport_adr = controllerinjector_bankmachine7_consume;
assign controllerinjector_bankmachine7_syncfifo7_dout = controllerinjector_bankmachine7_rdport_dat_r;
assign controllerinjector_bankmachine7_syncfifo7_writable = (controllerinjector_bankmachine7_level != 4'd8);
assign controllerinjector_bankmachine7_syncfifo7_readable = (controllerinjector_bankmachine7_level != 1'd0);
assign controllerinjector_bankmachine7_done = (controllerinjector_bankmachine7_count == 1'd0);
always @(*) begin
	controllerinjector_bankmachine7_track_open <= 1'd0;
	controllerinjector_bankmachine7_track_close <= 1'd0;
	controllerinjector_bankmachine7_cmd_payload_cas <= 1'd0;
	controllerinjector_bankmachine7_cmd_payload_ras <= 1'd0;
	controllerinjector_bankmachine7_cmd_payload_we <= 1'd0;
	controllerinjector_bankmachine7_sel_row_adr <= 1'd0;
	controllerinjector_bankmachine7_cmd_payload_is_cmd <= 1'd0;
	controllerinjector_bankmachine7_cmd_payload_is_read <= 1'd0;
	controllerinjector_bankmachine7_cmd_payload_is_write <= 1'd0;
	bankmachine7_next_state <= 3'd0;
	controllerinjector_bankmachine7_req_wdata_ready <= 1'd0;
	controllerinjector_bankmachine7_req_rdata_valid <= 1'd0;
	controllerinjector_bankmachine7_refresh_gnt <= 1'd0;
	controllerinjector_bankmachine7_cmd_valid <= 1'd0;
	bankmachine7_next_state <= bankmachine7_state;
	case (bankmachine7_state)
		1'd1: begin
			if (controllerinjector_bankmachine7_done) begin
				controllerinjector_bankmachine7_cmd_valid <= 1'd1;
				if (controllerinjector_bankmachine7_cmd_ready) begin
					bankmachine7_next_state <= 3'd4;
				end
				controllerinjector_bankmachine7_cmd_payload_ras <= 1'd1;
				controllerinjector_bankmachine7_cmd_payload_we <= 1'd1;
				controllerinjector_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			end
			controllerinjector_bankmachine7_track_close <= 1'd1;
		end
		2'd2: begin
			controllerinjector_bankmachine7_sel_row_adr <= 1'd1;
			controllerinjector_bankmachine7_track_open <= 1'd1;
			controllerinjector_bankmachine7_cmd_valid <= 1'd1;
			controllerinjector_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			if (controllerinjector_bankmachine7_cmd_ready) begin
				bankmachine7_next_state <= 3'd5;
			end
			controllerinjector_bankmachine7_cmd_payload_ras <= 1'd1;
		end
		2'd3: begin
			if (controllerinjector_bankmachine7_done) begin
				controllerinjector_bankmachine7_refresh_gnt <= 1'd1;
			end
			controllerinjector_bankmachine7_track_close <= 1'd1;
			controllerinjector_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			if ((~controllerinjector_bankmachine7_refresh_req)) begin
				bankmachine7_next_state <= 1'd0;
			end
		end
		3'd4: begin
			bankmachine7_next_state <= 2'd2;
		end
		3'd5: begin
			bankmachine7_next_state <= 1'd0;
		end
		default: begin
			if (controllerinjector_bankmachine7_refresh_req) begin
				bankmachine7_next_state <= 2'd3;
			end else begin
				if (controllerinjector_bankmachine7_source_valid) begin
					if (controllerinjector_bankmachine7_has_openrow) begin
						if (controllerinjector_bankmachine7_hit) begin
							controllerinjector_bankmachine7_cmd_valid <= 1'd1;
							if (controllerinjector_bankmachine7_source_payload_we) begin
								controllerinjector_bankmachine7_req_wdata_ready <= controllerinjector_bankmachine7_cmd_ready;
								controllerinjector_bankmachine7_cmd_payload_is_write <= 1'd1;
								controllerinjector_bankmachine7_cmd_payload_we <= 1'd1;
							end else begin
								controllerinjector_bankmachine7_req_rdata_valid <= controllerinjector_bankmachine7_cmd_ready;
								controllerinjector_bankmachine7_cmd_payload_is_read <= 1'd1;
							end
							controllerinjector_bankmachine7_cmd_payload_cas <= 1'd1;
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
assign controllerinjector_read_available = ((((((((controllerinjector_bankmachine0_cmd_valid & controllerinjector_bankmachine0_cmd_payload_is_read) | (controllerinjector_bankmachine1_cmd_valid & controllerinjector_bankmachine1_cmd_payload_is_read)) | (controllerinjector_bankmachine2_cmd_valid & controllerinjector_bankmachine2_cmd_payload_is_read)) | (controllerinjector_bankmachine3_cmd_valid & controllerinjector_bankmachine3_cmd_payload_is_read)) | (controllerinjector_bankmachine4_cmd_valid & controllerinjector_bankmachine4_cmd_payload_is_read)) | (controllerinjector_bankmachine5_cmd_valid & controllerinjector_bankmachine5_cmd_payload_is_read)) | (controllerinjector_bankmachine6_cmd_valid & controllerinjector_bankmachine6_cmd_payload_is_read)) | (controllerinjector_bankmachine7_cmd_valid & controllerinjector_bankmachine7_cmd_payload_is_read));
assign controllerinjector_write_available = ((((((((controllerinjector_bankmachine0_cmd_valid & controllerinjector_bankmachine0_cmd_payload_is_write) | (controllerinjector_bankmachine1_cmd_valid & controllerinjector_bankmachine1_cmd_payload_is_write)) | (controllerinjector_bankmachine2_cmd_valid & controllerinjector_bankmachine2_cmd_payload_is_write)) | (controllerinjector_bankmachine3_cmd_valid & controllerinjector_bankmachine3_cmd_payload_is_write)) | (controllerinjector_bankmachine4_cmd_valid & controllerinjector_bankmachine4_cmd_payload_is_write)) | (controllerinjector_bankmachine5_cmd_valid & controllerinjector_bankmachine5_cmd_payload_is_write)) | (controllerinjector_bankmachine6_cmd_valid & controllerinjector_bankmachine6_cmd_payload_is_write)) | (controllerinjector_bankmachine7_cmd_valid & controllerinjector_bankmachine7_cmd_payload_is_write));
assign controllerinjector_max_time0 = (controllerinjector_time0 == 1'd0);
assign controllerinjector_max_time1 = (controllerinjector_time1 == 1'd0);
assign controllerinjector_bankmachine0_refresh_req = controllerinjector_cmd_valid;
assign controllerinjector_bankmachine1_refresh_req = controllerinjector_cmd_valid;
assign controllerinjector_bankmachine2_refresh_req = controllerinjector_cmd_valid;
assign controllerinjector_bankmachine3_refresh_req = controllerinjector_cmd_valid;
assign controllerinjector_bankmachine4_refresh_req = controllerinjector_cmd_valid;
assign controllerinjector_bankmachine5_refresh_req = controllerinjector_cmd_valid;
assign controllerinjector_bankmachine6_refresh_req = controllerinjector_cmd_valid;
assign controllerinjector_bankmachine7_refresh_req = controllerinjector_cmd_valid;
assign controllerinjector_go_to_refresh = (((((((controllerinjector_bankmachine0_refresh_gnt & controllerinjector_bankmachine1_refresh_gnt) & controllerinjector_bankmachine2_refresh_gnt) & controllerinjector_bankmachine3_refresh_gnt) & controllerinjector_bankmachine4_refresh_gnt) & controllerinjector_bankmachine5_refresh_gnt) & controllerinjector_bankmachine6_refresh_gnt) & controllerinjector_bankmachine7_refresh_gnt);
assign controllerinjector_interface_rdata = {controllerinjector_dfi_p1_rddata, controllerinjector_dfi_p0_rddata};
assign {controllerinjector_dfi_p1_wrdata, controllerinjector_dfi_p0_wrdata} = controllerinjector_interface_wdata;
assign {controllerinjector_dfi_p1_wrdata_mask, controllerinjector_dfi_p0_wrdata_mask} = (~controllerinjector_interface_wdata_we);
always @(*) begin
	controllerinjector_choose_cmd_valids <= 8'd0;
	controllerinjector_choose_cmd_valids[0] <= (controllerinjector_bankmachine0_cmd_valid & ((controllerinjector_bankmachine0_cmd_payload_is_cmd & controllerinjector_choose_cmd_want_cmds) | ((controllerinjector_bankmachine0_cmd_payload_is_read == controllerinjector_choose_cmd_want_reads) & (controllerinjector_bankmachine0_cmd_payload_is_write == controllerinjector_choose_cmd_want_writes))));
	controllerinjector_choose_cmd_valids[1] <= (controllerinjector_bankmachine1_cmd_valid & ((controllerinjector_bankmachine1_cmd_payload_is_cmd & controllerinjector_choose_cmd_want_cmds) | ((controllerinjector_bankmachine1_cmd_payload_is_read == controllerinjector_choose_cmd_want_reads) & (controllerinjector_bankmachine1_cmd_payload_is_write == controllerinjector_choose_cmd_want_writes))));
	controllerinjector_choose_cmd_valids[2] <= (controllerinjector_bankmachine2_cmd_valid & ((controllerinjector_bankmachine2_cmd_payload_is_cmd & controllerinjector_choose_cmd_want_cmds) | ((controllerinjector_bankmachine2_cmd_payload_is_read == controllerinjector_choose_cmd_want_reads) & (controllerinjector_bankmachine2_cmd_payload_is_write == controllerinjector_choose_cmd_want_writes))));
	controllerinjector_choose_cmd_valids[3] <= (controllerinjector_bankmachine3_cmd_valid & ((controllerinjector_bankmachine3_cmd_payload_is_cmd & controllerinjector_choose_cmd_want_cmds) | ((controllerinjector_bankmachine3_cmd_payload_is_read == controllerinjector_choose_cmd_want_reads) & (controllerinjector_bankmachine3_cmd_payload_is_write == controllerinjector_choose_cmd_want_writes))));
	controllerinjector_choose_cmd_valids[4] <= (controllerinjector_bankmachine4_cmd_valid & ((controllerinjector_bankmachine4_cmd_payload_is_cmd & controllerinjector_choose_cmd_want_cmds) | ((controllerinjector_bankmachine4_cmd_payload_is_read == controllerinjector_choose_cmd_want_reads) & (controllerinjector_bankmachine4_cmd_payload_is_write == controllerinjector_choose_cmd_want_writes))));
	controllerinjector_choose_cmd_valids[5] <= (controllerinjector_bankmachine5_cmd_valid & ((controllerinjector_bankmachine5_cmd_payload_is_cmd & controllerinjector_choose_cmd_want_cmds) | ((controllerinjector_bankmachine5_cmd_payload_is_read == controllerinjector_choose_cmd_want_reads) & (controllerinjector_bankmachine5_cmd_payload_is_write == controllerinjector_choose_cmd_want_writes))));
	controllerinjector_choose_cmd_valids[6] <= (controllerinjector_bankmachine6_cmd_valid & ((controllerinjector_bankmachine6_cmd_payload_is_cmd & controllerinjector_choose_cmd_want_cmds) | ((controllerinjector_bankmachine6_cmd_payload_is_read == controllerinjector_choose_cmd_want_reads) & (controllerinjector_bankmachine6_cmd_payload_is_write == controllerinjector_choose_cmd_want_writes))));
	controllerinjector_choose_cmd_valids[7] <= (controllerinjector_bankmachine7_cmd_valid & ((controllerinjector_bankmachine7_cmd_payload_is_cmd & controllerinjector_choose_cmd_want_cmds) | ((controllerinjector_bankmachine7_cmd_payload_is_read == controllerinjector_choose_cmd_want_reads) & (controllerinjector_bankmachine7_cmd_payload_is_write == controllerinjector_choose_cmd_want_writes))));
end
assign controllerinjector_choose_cmd_request = controllerinjector_choose_cmd_valids;
assign controllerinjector_choose_cmd_cmd_valid = rhs_array_muxed0;
assign controllerinjector_choose_cmd_cmd_payload_a = rhs_array_muxed1;
assign controllerinjector_choose_cmd_cmd_payload_ba = rhs_array_muxed2;
assign controllerinjector_choose_cmd_cmd_payload_is_read = rhs_array_muxed3;
assign controllerinjector_choose_cmd_cmd_payload_is_write = rhs_array_muxed4;
assign controllerinjector_choose_cmd_cmd_payload_is_cmd = rhs_array_muxed5;
always @(*) begin
	controllerinjector_choose_cmd_cmd_payload_cas <= 1'd0;
	if (controllerinjector_choose_cmd_cmd_valid) begin
		controllerinjector_choose_cmd_cmd_payload_cas <= t_array_muxed0;
	end
end
always @(*) begin
	controllerinjector_choose_cmd_cmd_payload_ras <= 1'd0;
	if (controllerinjector_choose_cmd_cmd_valid) begin
		controllerinjector_choose_cmd_cmd_payload_ras <= t_array_muxed1;
	end
end
always @(*) begin
	controllerinjector_choose_cmd_cmd_payload_we <= 1'd0;
	if (controllerinjector_choose_cmd_cmd_valid) begin
		controllerinjector_choose_cmd_cmd_payload_we <= t_array_muxed2;
	end
end
assign controllerinjector_choose_cmd_ce = controllerinjector_choose_cmd_cmd_ready;
always @(*) begin
	controllerinjector_choose_req_valids <= 8'd0;
	controllerinjector_choose_req_valids[0] <= (controllerinjector_bankmachine0_cmd_valid & ((controllerinjector_bankmachine0_cmd_payload_is_cmd & controllerinjector_choose_req_want_cmds) | ((controllerinjector_bankmachine0_cmd_payload_is_read == controllerinjector_choose_req_want_reads) & (controllerinjector_bankmachine0_cmd_payload_is_write == controllerinjector_choose_req_want_writes))));
	controllerinjector_choose_req_valids[1] <= (controllerinjector_bankmachine1_cmd_valid & ((controllerinjector_bankmachine1_cmd_payload_is_cmd & controllerinjector_choose_req_want_cmds) | ((controllerinjector_bankmachine1_cmd_payload_is_read == controllerinjector_choose_req_want_reads) & (controllerinjector_bankmachine1_cmd_payload_is_write == controllerinjector_choose_req_want_writes))));
	controllerinjector_choose_req_valids[2] <= (controllerinjector_bankmachine2_cmd_valid & ((controllerinjector_bankmachine2_cmd_payload_is_cmd & controllerinjector_choose_req_want_cmds) | ((controllerinjector_bankmachine2_cmd_payload_is_read == controllerinjector_choose_req_want_reads) & (controllerinjector_bankmachine2_cmd_payload_is_write == controllerinjector_choose_req_want_writes))));
	controllerinjector_choose_req_valids[3] <= (controllerinjector_bankmachine3_cmd_valid & ((controllerinjector_bankmachine3_cmd_payload_is_cmd & controllerinjector_choose_req_want_cmds) | ((controllerinjector_bankmachine3_cmd_payload_is_read == controllerinjector_choose_req_want_reads) & (controllerinjector_bankmachine3_cmd_payload_is_write == controllerinjector_choose_req_want_writes))));
	controllerinjector_choose_req_valids[4] <= (controllerinjector_bankmachine4_cmd_valid & ((controllerinjector_bankmachine4_cmd_payload_is_cmd & controllerinjector_choose_req_want_cmds) | ((controllerinjector_bankmachine4_cmd_payload_is_read == controllerinjector_choose_req_want_reads) & (controllerinjector_bankmachine4_cmd_payload_is_write == controllerinjector_choose_req_want_writes))));
	controllerinjector_choose_req_valids[5] <= (controllerinjector_bankmachine5_cmd_valid & ((controllerinjector_bankmachine5_cmd_payload_is_cmd & controllerinjector_choose_req_want_cmds) | ((controllerinjector_bankmachine5_cmd_payload_is_read == controllerinjector_choose_req_want_reads) & (controllerinjector_bankmachine5_cmd_payload_is_write == controllerinjector_choose_req_want_writes))));
	controllerinjector_choose_req_valids[6] <= (controllerinjector_bankmachine6_cmd_valid & ((controllerinjector_bankmachine6_cmd_payload_is_cmd & controllerinjector_choose_req_want_cmds) | ((controllerinjector_bankmachine6_cmd_payload_is_read == controllerinjector_choose_req_want_reads) & (controllerinjector_bankmachine6_cmd_payload_is_write == controllerinjector_choose_req_want_writes))));
	controllerinjector_choose_req_valids[7] <= (controllerinjector_bankmachine7_cmd_valid & ((controllerinjector_bankmachine7_cmd_payload_is_cmd & controllerinjector_choose_req_want_cmds) | ((controllerinjector_bankmachine7_cmd_payload_is_read == controllerinjector_choose_req_want_reads) & (controllerinjector_bankmachine7_cmd_payload_is_write == controllerinjector_choose_req_want_writes))));
end
assign controllerinjector_choose_req_request = controllerinjector_choose_req_valids;
assign controllerinjector_choose_req_cmd_valid = rhs_array_muxed6;
assign controllerinjector_choose_req_cmd_payload_a = rhs_array_muxed7;
assign controllerinjector_choose_req_cmd_payload_ba = rhs_array_muxed8;
assign controllerinjector_choose_req_cmd_payload_is_read = rhs_array_muxed9;
assign controllerinjector_choose_req_cmd_payload_is_write = rhs_array_muxed10;
assign controllerinjector_choose_req_cmd_payload_is_cmd = rhs_array_muxed11;
always @(*) begin
	controllerinjector_choose_req_cmd_payload_cas <= 1'd0;
	if (controllerinjector_choose_req_cmd_valid) begin
		controllerinjector_choose_req_cmd_payload_cas <= t_array_muxed3;
	end
end
always @(*) begin
	controllerinjector_choose_req_cmd_payload_ras <= 1'd0;
	if (controllerinjector_choose_req_cmd_valid) begin
		controllerinjector_choose_req_cmd_payload_ras <= t_array_muxed4;
	end
end
always @(*) begin
	controllerinjector_choose_req_cmd_payload_we <= 1'd0;
	if (controllerinjector_choose_req_cmd_valid) begin
		controllerinjector_choose_req_cmd_payload_we <= t_array_muxed5;
	end
end
always @(*) begin
	controllerinjector_bankmachine0_cmd_ready <= 1'd0;
	if (((controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_ready) & (controllerinjector_choose_cmd_grant == 1'd0))) begin
		controllerinjector_bankmachine0_cmd_ready <= 1'd1;
	end
	if (((controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_ready) & (controllerinjector_choose_req_grant == 1'd0))) begin
		controllerinjector_bankmachine0_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	controllerinjector_bankmachine1_cmd_ready <= 1'd0;
	if (((controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_ready) & (controllerinjector_choose_cmd_grant == 1'd1))) begin
		controllerinjector_bankmachine1_cmd_ready <= 1'd1;
	end
	if (((controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_ready) & (controllerinjector_choose_req_grant == 1'd1))) begin
		controllerinjector_bankmachine1_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	controllerinjector_bankmachine2_cmd_ready <= 1'd0;
	if (((controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_ready) & (controllerinjector_choose_cmd_grant == 2'd2))) begin
		controllerinjector_bankmachine2_cmd_ready <= 1'd1;
	end
	if (((controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_ready) & (controllerinjector_choose_req_grant == 2'd2))) begin
		controllerinjector_bankmachine2_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	controllerinjector_bankmachine3_cmd_ready <= 1'd0;
	if (((controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_ready) & (controllerinjector_choose_cmd_grant == 2'd3))) begin
		controllerinjector_bankmachine3_cmd_ready <= 1'd1;
	end
	if (((controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_ready) & (controllerinjector_choose_req_grant == 2'd3))) begin
		controllerinjector_bankmachine3_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	controllerinjector_bankmachine4_cmd_ready <= 1'd0;
	if (((controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_ready) & (controllerinjector_choose_cmd_grant == 3'd4))) begin
		controllerinjector_bankmachine4_cmd_ready <= 1'd1;
	end
	if (((controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_ready) & (controllerinjector_choose_req_grant == 3'd4))) begin
		controllerinjector_bankmachine4_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	controllerinjector_bankmachine5_cmd_ready <= 1'd0;
	if (((controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_ready) & (controllerinjector_choose_cmd_grant == 3'd5))) begin
		controllerinjector_bankmachine5_cmd_ready <= 1'd1;
	end
	if (((controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_ready) & (controllerinjector_choose_req_grant == 3'd5))) begin
		controllerinjector_bankmachine5_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	controllerinjector_bankmachine6_cmd_ready <= 1'd0;
	if (((controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_ready) & (controllerinjector_choose_cmd_grant == 3'd6))) begin
		controllerinjector_bankmachine6_cmd_ready <= 1'd1;
	end
	if (((controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_ready) & (controllerinjector_choose_req_grant == 3'd6))) begin
		controllerinjector_bankmachine6_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	controllerinjector_bankmachine7_cmd_ready <= 1'd0;
	if (((controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_ready) & (controllerinjector_choose_cmd_grant == 3'd7))) begin
		controllerinjector_bankmachine7_cmd_ready <= 1'd1;
	end
	if (((controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_ready) & (controllerinjector_choose_req_grant == 3'd7))) begin
		controllerinjector_bankmachine7_cmd_ready <= 1'd1;
	end
end
assign controllerinjector_choose_req_ce = controllerinjector_choose_req_cmd_ready;
assign controllerinjector_dfi_p0_cke = 1'd1;
assign controllerinjector_dfi_p0_cs_n = 1'd0;
assign controllerinjector_dfi_p0_odt = 1'd1;
assign controllerinjector_dfi_p0_reset_n = 1'd1;
assign controllerinjector_dfi_p1_cke = 1'd1;
assign controllerinjector_dfi_p1_cs_n = 1'd0;
assign controllerinjector_dfi_p1_odt = 1'd1;
assign controllerinjector_dfi_p1_reset_n = 1'd1;
always @(*) begin
	controllerinjector_choose_req_want_writes <= 1'd0;
	controllerinjector_choose_req_cmd_ready <= 1'd0;
	controllerinjector_cmd_ready <= 1'd0;
	controllerinjector_sel0 <= 2'd0;
	controllerinjector_sel1 <= 2'd0;
	multiplexer_next_state <= 4'd0;
	controllerinjector_en0 <= 1'd0;
	controllerinjector_en1 <= 1'd0;
	controllerinjector_choose_cmd_cmd_ready <= 1'd0;
	controllerinjector_choose_req_want_reads <= 1'd0;
	multiplexer_next_state <= multiplexer_state;
	case (multiplexer_state)
		1'd1: begin
			controllerinjector_en1 <= 1'd1;
			controllerinjector_choose_req_want_writes <= 1'd1;
			controllerinjector_choose_cmd_cmd_ready <= 1'd1;
			controllerinjector_choose_req_cmd_ready <= 1'd1;
			controllerinjector_sel0 <= 1'd1;
			controllerinjector_sel1 <= 2'd2;
			if (controllerinjector_read_available) begin
				if (((~controllerinjector_write_available) | controllerinjector_max_time1)) begin
					multiplexer_next_state <= 3'd7;
				end
			end
			if (controllerinjector_go_to_refresh) begin
				multiplexer_next_state <= 2'd2;
			end
		end
		2'd2: begin
			controllerinjector_sel0 <= 2'd3;
			controllerinjector_cmd_ready <= 1'd1;
			if (controllerinjector_cmd_last) begin
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
			multiplexer_next_state <= 1'd1;
		end
		3'd7: begin
			multiplexer_next_state <= 4'd8;
		end
		4'd8: begin
			multiplexer_next_state <= 1'd0;
		end
		default: begin
			controllerinjector_en0 <= 1'd1;
			controllerinjector_choose_req_want_reads <= 1'd1;
			controllerinjector_choose_cmd_cmd_ready <= 1'd1;
			controllerinjector_choose_req_cmd_ready <= 1'd1;
			controllerinjector_sel0 <= 2'd2;
			controllerinjector_sel1 <= 1'd1;
			if (controllerinjector_write_available) begin
				if (((~controllerinjector_read_available) | controllerinjector_max_time0)) begin
					multiplexer_next_state <= 2'd3;
				end
			end
			if (controllerinjector_go_to_refresh) begin
				multiplexer_next_state <= 2'd2;
			end
		end
	endcase
end
assign cba = port_cmd_payload_adr[10:8];
assign rca = {port_cmd_payload_adr[23:11], port_cmd_payload_adr[7:0]};
assign roundrobin0_request = {(((cba == 1'd0) & (~(((((((1'd0 | (controllerinjector_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin0_ce = ((~controllerinjector_interface_bank0_valid) & (~controllerinjector_interface_bank0_lock));
assign controllerinjector_interface_bank0_adr = rhs_array_muxed12;
assign controllerinjector_interface_bank0_we = rhs_array_muxed13;
assign controllerinjector_interface_bank0_valid = rhs_array_muxed14;
assign roundrobin1_request = {(((cba == 1'd1) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin1_ce = ((~controllerinjector_interface_bank1_valid) & (~controllerinjector_interface_bank1_lock));
assign controllerinjector_interface_bank1_adr = rhs_array_muxed15;
assign controllerinjector_interface_bank1_we = rhs_array_muxed16;
assign controllerinjector_interface_bank1_valid = rhs_array_muxed17;
assign roundrobin2_request = {(((cba == 2'd2) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin2_ce = ((~controllerinjector_interface_bank2_valid) & (~controllerinjector_interface_bank2_lock));
assign controllerinjector_interface_bank2_adr = rhs_array_muxed18;
assign controllerinjector_interface_bank2_we = rhs_array_muxed19;
assign controllerinjector_interface_bank2_valid = rhs_array_muxed20;
assign roundrobin3_request = {(((cba == 2'd3) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin3_ce = ((~controllerinjector_interface_bank3_valid) & (~controllerinjector_interface_bank3_lock));
assign controllerinjector_interface_bank3_adr = rhs_array_muxed21;
assign controllerinjector_interface_bank3_we = rhs_array_muxed22;
assign controllerinjector_interface_bank3_valid = rhs_array_muxed23;
assign roundrobin4_request = {(((cba == 3'd4) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin4_ce = ((~controllerinjector_interface_bank4_valid) & (~controllerinjector_interface_bank4_lock));
assign controllerinjector_interface_bank4_adr = rhs_array_muxed24;
assign controllerinjector_interface_bank4_we = rhs_array_muxed25;
assign controllerinjector_interface_bank4_valid = rhs_array_muxed26;
assign roundrobin5_request = {(((cba == 3'd5) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin5_ce = ((~controllerinjector_interface_bank5_valid) & (~controllerinjector_interface_bank5_lock));
assign controllerinjector_interface_bank5_adr = rhs_array_muxed27;
assign controllerinjector_interface_bank5_we = rhs_array_muxed28;
assign controllerinjector_interface_bank5_valid = rhs_array_muxed29;
assign roundrobin6_request = {(((cba == 3'd6) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin6_ce = ((~controllerinjector_interface_bank6_valid) & (~controllerinjector_interface_bank6_lock));
assign controllerinjector_interface_bank6_adr = rhs_array_muxed30;
assign controllerinjector_interface_bank6_we = rhs_array_muxed31;
assign controllerinjector_interface_bank6_valid = rhs_array_muxed32;
assign roundrobin7_request = {(((cba == 3'd7) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (roundrobin6_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin7_ce = ((~controllerinjector_interface_bank7_valid) & (~controllerinjector_interface_bank7_lock));
assign controllerinjector_interface_bank7_adr = rhs_array_muxed33;
assign controllerinjector_interface_bank7_we = rhs_array_muxed34;
assign controllerinjector_interface_bank7_valid = rhs_array_muxed35;
assign port_cmd_ready = ((((((((1'd0 | (((roundrobin0_grant == 1'd0) & ((cba == 1'd0) & (~(((((((1'd0 | (controllerinjector_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & controllerinjector_interface_bank0_ready)) | (((roundrobin1_grant == 1'd0) & ((cba == 1'd1) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & controllerinjector_interface_bank1_ready)) | (((roundrobin2_grant == 1'd0) & ((cba == 2'd2) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & controllerinjector_interface_bank2_ready)) | (((roundrobin3_grant == 1'd0) & ((cba == 2'd3) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & controllerinjector_interface_bank3_ready)) | (((roundrobin4_grant == 1'd0) & ((cba == 3'd4) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & controllerinjector_interface_bank4_ready)) | (((roundrobin5_grant == 1'd0) & ((cba == 3'd5) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & controllerinjector_interface_bank5_ready)) | (((roundrobin6_grant == 1'd0) & ((cba == 3'd6) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & controllerinjector_interface_bank6_ready)) | (((roundrobin7_grant == 1'd0) & ((cba == 3'd7) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (roundrobin6_grant == 1'd0)))))) & controllerinjector_interface_bank7_ready));
assign port_wdata_ready = new_master_wdata_ready;
assign port_rdata_valid = new_master_rdata_valid5;
always @(*) begin
	controllerinjector_interface_wdata <= 64'd0;
	controllerinjector_interface_wdata_we <= 8'd0;
	case ({new_master_wdata_ready})
		1'd1: begin
			controllerinjector_interface_wdata <= port_wdata_payload_data;
			controllerinjector_interface_wdata_we <= port_wdata_payload_we;
		end
		default: begin
			controllerinjector_interface_wdata <= 1'd0;
			controllerinjector_interface_wdata_we <= 1'd0;
		end
	endcase
end
assign port_rdata_payload_data = controllerinjector_interface_rdata;
assign roundrobin0_grant = 1'd0;
assign roundrobin1_grant = 1'd0;
assign roundrobin2_grant = 1'd0;
assign roundrobin3_grant = 1'd0;
assign roundrobin4_grant = 1'd0;
assign roundrobin5_grant = 1'd0;
assign roundrobin6_grant = 1'd0;
assign roundrobin7_grant = 1'd0;
assign data_port_adr = interface0_wb_sdram_adr[10:1];
always @(*) begin
	data_port_dat_w <= 64'd0;
	data_port_we <= 8'd0;
	if (write_from_slave) begin
		data_port_dat_w <= interface_dat_r;
		data_port_we <= {8{1'd1}};
	end else begin
		data_port_dat_w <= {2{interface0_wb_sdram_dat_w}};
		if ((((interface0_wb_sdram_cyc & interface0_wb_sdram_stb) & interface0_wb_sdram_we) & interface0_wb_sdram_ack)) begin
			data_port_we <= {({4{(interface0_wb_sdram_adr[0] == 1'd0)}} & interface0_wb_sdram_sel), ({4{(interface0_wb_sdram_adr[0] == 1'd1)}} & interface0_wb_sdram_sel)};
		end
	end
end
assign interface_dat_w = data_port_dat_r;
assign interface_sel = 8'd255;
always @(*) begin
	interface0_wb_sdram_dat_r <= 32'd0;
	case (adr_offset_r)
		1'd0: begin
			interface0_wb_sdram_dat_r <= data_port_dat_r[63:32];
		end
		default: begin
			interface0_wb_sdram_dat_r <= data_port_dat_r[31:0];
		end
	endcase
end
assign {tag_do_dirty, tag_do_tag} = tag_port_dat_r;
assign tag_port_dat_w = {tag_di_dirty, tag_di_tag};
assign tag_port_adr = interface0_wb_sdram_adr[10:1];
assign tag_di_tag = interface0_wb_sdram_adr[29:11];
assign interface_adr = {tag_do_tag, interface0_wb_sdram_adr[10:1]};
always @(*) begin
	tag_port_we <= 1'd0;
	interface_cyc <= 1'd0;
	interface_stb <= 1'd0;
	tag_di_dirty <= 1'd0;
	interface_we <= 1'd0;
	word_clr <= 1'd0;
	word_inc <= 1'd0;
	interface0_wb_sdram_ack <= 1'd0;
	cache_next_state <= 3'd0;
	write_from_slave <= 1'd0;
	cache_next_state <= cache_state;
	case (cache_state)
		1'd1: begin
			word_clr <= 1'd1;
			if ((tag_do_tag == interface0_wb_sdram_adr[29:11])) begin
				interface0_wb_sdram_ack <= 1'd1;
				if (interface0_wb_sdram_we) begin
					tag_di_dirty <= 1'd1;
					tag_port_we <= 1'd1;
				end
				cache_next_state <= 1'd0;
			end else begin
				if (tag_do_dirty) begin
					cache_next_state <= 2'd2;
				end else begin
					cache_next_state <= 2'd3;
				end
			end
		end
		2'd2: begin
			interface_stb <= 1'd1;
			interface_cyc <= 1'd1;
			interface_we <= 1'd1;
			if (interface_ack) begin
				word_inc <= 1'd1;
				if (1'd1) begin
					cache_next_state <= 2'd3;
				end
			end
		end
		2'd3: begin
			tag_port_we <= 1'd1;
			word_clr <= 1'd1;
			cache_next_state <= 3'd4;
		end
		3'd4: begin
			interface_stb <= 1'd1;
			interface_cyc <= 1'd1;
			interface_we <= 1'd0;
			if (interface_ack) begin
				write_from_slave <= 1'd1;
				word_inc <= 1'd1;
				if (1'd1) begin
					cache_next_state <= 1'd1;
				end else begin
					cache_next_state <= 3'd4;
				end
			end
		end
		default: begin
			if ((interface0_wb_sdram_cyc & interface0_wb_sdram_stb)) begin
				cache_next_state <= 1'd1;
			end
		end
	endcase
end
assign port_cmd_payload_adr = interface_adr;
assign port_wdata_payload_we = interface_sel;
assign port_wdata_payload_data = interface_dat_w;
assign interface_dat_r = port_rdata_payload_data;
always @(*) begin
	port_rdata_ready <= 1'd0;
	litedramwishbonebridge_next_state <= 2'd0;
	port_cmd_valid <= 1'd0;
	port_cmd_payload_we <= 1'd0;
	port_wdata_valid <= 1'd0;
	interface_ack <= 1'd0;
	litedramwishbonebridge_next_state <= litedramwishbonebridge_state;
	case (litedramwishbonebridge_state)
		1'd1: begin
			port_cmd_valid <= 1'd1;
			port_cmd_payload_we <= interface_we;
			if (port_cmd_ready) begin
				if (interface_we) begin
					litedramwishbonebridge_next_state <= 2'd2;
				end else begin
					litedramwishbonebridge_next_state <= 2'd3;
				end
			end
		end
		2'd2: begin
			port_wdata_valid <= 1'd1;
			if (port_wdata_ready) begin
				interface_ack <= 1'd1;
				litedramwishbonebridge_next_state <= 1'd0;
			end
		end
		2'd3: begin
			port_rdata_ready <= 1'd1;
			if (port_rdata_valid) begin
				interface_ack <= 1'd1;
				litedramwishbonebridge_next_state <= 1'd0;
			end
		end
		default: begin
			if ((interface_cyc & interface_stb)) begin
				litedramwishbonebridge_next_state <= 1'd1;
			end
		end
	endcase
end
assign interface0_wb_sdram_adr = rhs_array_muxed36;
assign interface0_wb_sdram_dat_w = rhs_array_muxed37;
assign interface0_wb_sdram_sel = rhs_array_muxed38;
assign interface0_wb_sdram_cyc = rhs_array_muxed39;
assign interface0_wb_sdram_stb = rhs_array_muxed40;
assign interface0_wb_sdram_we = rhs_array_muxed41;
assign interface0_wb_sdram_cti = rhs_array_muxed42;
assign interface0_wb_sdram_bte = rhs_array_muxed43;
assign interface1_wb_sdram_dat_r = interface0_wb_sdram_dat_r;
assign interface1_wb_sdram_ack = (interface0_wb_sdram_ack & (wb_sdram_con_grant == 1'd0));
assign interface1_wb_sdram_err = (interface0_wb_sdram_err & (wb_sdram_con_grant == 1'd0));
assign wb_sdram_con_request = {interface1_wb_sdram_cyc};
assign wb_sdram_con_grant = 1'd0;
assign basesoc_shared_adr = rhs_array_muxed44;
assign basesoc_shared_dat_w = rhs_array_muxed45;
assign basesoc_shared_sel = rhs_array_muxed46;
assign basesoc_shared_cyc = rhs_array_muxed47;
assign basesoc_shared_stb = rhs_array_muxed48;
assign basesoc_shared_we = rhs_array_muxed49;
assign basesoc_shared_cti = rhs_array_muxed50;
assign basesoc_shared_bte = rhs_array_muxed51;
assign basesoc_ibus_dat_r = basesoc_shared_dat_r;
assign basesoc_dbus_dat_r = basesoc_shared_dat_r;
assign basesoc_ibus_ack = (basesoc_shared_ack & (basesoc_grant == 1'd0));
assign basesoc_dbus_ack = (basesoc_shared_ack & (basesoc_grant == 1'd1));
assign basesoc_ibus_err = (basesoc_shared_err & (basesoc_grant == 1'd0));
assign basesoc_dbus_err = (basesoc_shared_err & (basesoc_grant == 1'd1));
assign basesoc_request = {basesoc_dbus_cyc, basesoc_ibus_cyc};
always @(*) begin
	basesoc_slave_sel <= 5'd0;
	basesoc_slave_sel[0] <= (basesoc_shared_adr[28:26] == 1'd0);
	basesoc_slave_sel[1] <= (basesoc_shared_adr[28:26] == 1'd1);
	basesoc_slave_sel[2] <= (basesoc_shared_adr[28:26] == 3'd6);
	basesoc_slave_sel[3] <= (basesoc_shared_adr[28:26] == 2'd2);
	basesoc_slave_sel[4] <= (basesoc_shared_adr[28:26] == 3'd4);
end
assign basesoc_rom_bus_adr = basesoc_shared_adr;
assign basesoc_rom_bus_dat_w = basesoc_shared_dat_w;
assign basesoc_rom_bus_sel = basesoc_shared_sel;
assign basesoc_rom_bus_stb = basesoc_shared_stb;
assign basesoc_rom_bus_we = basesoc_shared_we;
assign basesoc_rom_bus_cti = basesoc_shared_cti;
assign basesoc_rom_bus_bte = basesoc_shared_bte;
assign basesoc_sram_bus_adr = basesoc_shared_adr;
assign basesoc_sram_bus_dat_w = basesoc_shared_dat_w;
assign basesoc_sram_bus_sel = basesoc_shared_sel;
assign basesoc_sram_bus_stb = basesoc_shared_stb;
assign basesoc_sram_bus_we = basesoc_shared_we;
assign basesoc_sram_bus_cti = basesoc_shared_cti;
assign basesoc_sram_bus_bte = basesoc_shared_bte;
assign basesoc_bus_wishbone_adr = basesoc_shared_adr;
assign basesoc_bus_wishbone_dat_w = basesoc_shared_dat_w;
assign basesoc_bus_wishbone_sel = basesoc_shared_sel;
assign basesoc_bus_wishbone_stb = basesoc_shared_stb;
assign basesoc_bus_wishbone_we = basesoc_shared_we;
assign basesoc_bus_wishbone_cti = basesoc_shared_cti;
assign basesoc_bus_wishbone_bte = basesoc_shared_bte;
assign bus_adr = basesoc_shared_adr;
assign bus_dat_w = basesoc_shared_dat_w;
assign bus_sel = basesoc_shared_sel;
assign bus_stb = basesoc_shared_stb;
assign bus_we = basesoc_shared_we;
assign bus_cti = basesoc_shared_cti;
assign bus_bte = basesoc_shared_bte;
assign interface1_wb_sdram_adr = basesoc_shared_adr;
assign interface1_wb_sdram_dat_w = basesoc_shared_dat_w;
assign interface1_wb_sdram_sel = basesoc_shared_sel;
assign interface1_wb_sdram_stb = basesoc_shared_stb;
assign interface1_wb_sdram_we = basesoc_shared_we;
assign interface1_wb_sdram_cti = basesoc_shared_cti;
assign interface1_wb_sdram_bte = basesoc_shared_bte;
assign basesoc_rom_bus_cyc = (basesoc_shared_cyc & basesoc_slave_sel[0]);
assign basesoc_sram_bus_cyc = (basesoc_shared_cyc & basesoc_slave_sel[1]);
assign basesoc_bus_wishbone_cyc = (basesoc_shared_cyc & basesoc_slave_sel[2]);
assign bus_cyc = (basesoc_shared_cyc & basesoc_slave_sel[3]);
assign interface1_wb_sdram_cyc = (basesoc_shared_cyc & basesoc_slave_sel[4]);
assign basesoc_shared_ack = ((((basesoc_rom_bus_ack | basesoc_sram_bus_ack) | basesoc_bus_wishbone_ack) | bus_ack) | interface1_wb_sdram_ack);
assign basesoc_shared_err = ((((basesoc_rom_bus_err | basesoc_sram_bus_err) | basesoc_bus_wishbone_err) | bus_err) | interface1_wb_sdram_err);
assign basesoc_shared_dat_r = ((((({32{basesoc_slave_sel_r[0]}} & basesoc_rom_bus_dat_r) | ({32{basesoc_slave_sel_r[1]}} & basesoc_sram_bus_dat_r)) | ({32{basesoc_slave_sel_r[2]}} & basesoc_bus_wishbone_dat_r)) | ({32{basesoc_slave_sel_r[3]}} & bus_dat_r)) | ({32{basesoc_slave_sel_r[4]}} & interface1_wb_sdram_dat_r));
assign basesoc_mmap_sel = (basesoc_interface0_adr[13:9] == 2'd3);
always @(*) begin
	basesoc_interface0_dat_r <= 8'd0;
	if (basesoc_mmap_sel_r) begin
		basesoc_interface0_dat_r <= basesoc_mmap_dat_r;
	end
end
assign basesoc_mmap_adr = basesoc_interface0_adr[2:0];
assign basesoc_csrbank0_sel = (basesoc_interface1_adr[13:9] == 4'd12);
assign basesoc_csrbank0_dna_id7_r = basesoc_interface1_dat_w[0];
assign basesoc_csrbank0_dna_id7_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 1'd0));
assign basesoc_csrbank0_dna_id6_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_dna_id6_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 1'd1));
assign basesoc_csrbank0_dna_id5_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_dna_id5_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 2'd2));
assign basesoc_csrbank0_dna_id4_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_dna_id4_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 2'd3));
assign basesoc_csrbank0_dna_id3_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_dna_id3_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 3'd4));
assign basesoc_csrbank0_dna_id2_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_dna_id2_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 3'd5));
assign basesoc_csrbank0_dna_id1_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_dna_id1_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 3'd6));
assign basesoc_csrbank0_dna_id0_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_dna_id0_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 3'd7));
assign basesoc_csrbank0_git_commit19_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_git_commit19_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 4'd8));
assign basesoc_csrbank0_git_commit18_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_git_commit18_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 4'd9));
assign basesoc_csrbank0_git_commit17_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_git_commit17_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 4'd10));
assign basesoc_csrbank0_git_commit16_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_git_commit16_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 4'd11));
assign basesoc_csrbank0_git_commit15_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_git_commit15_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 4'd12));
assign basesoc_csrbank0_git_commit14_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_git_commit14_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 4'd13));
assign basesoc_csrbank0_git_commit13_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_git_commit13_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 4'd14));
assign basesoc_csrbank0_git_commit12_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_git_commit12_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 4'd15));
assign basesoc_csrbank0_git_commit11_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_git_commit11_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 5'd16));
assign basesoc_csrbank0_git_commit10_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_git_commit10_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 5'd17));
assign basesoc_csrbank0_git_commit9_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_git_commit9_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 5'd18));
assign basesoc_csrbank0_git_commit8_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_git_commit8_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 5'd19));
assign basesoc_csrbank0_git_commit7_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_git_commit7_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 5'd20));
assign basesoc_csrbank0_git_commit6_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_git_commit6_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 5'd21));
assign basesoc_csrbank0_git_commit5_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_git_commit5_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 5'd22));
assign basesoc_csrbank0_git_commit4_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_git_commit4_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 5'd23));
assign basesoc_csrbank0_git_commit3_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_git_commit3_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 5'd24));
assign basesoc_csrbank0_git_commit2_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_git_commit2_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 5'd25));
assign basesoc_csrbank0_git_commit1_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_git_commit1_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 5'd26));
assign basesoc_csrbank0_git_commit0_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_git_commit0_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 5'd27));
assign basesoc_csrbank0_platform_platform7_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_platform_platform7_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 5'd28));
assign basesoc_csrbank0_platform_platform6_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_platform_platform6_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 5'd29));
assign basesoc_csrbank0_platform_platform5_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_platform_platform5_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 5'd30));
assign basesoc_csrbank0_platform_platform4_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_platform_platform4_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 5'd31));
assign basesoc_csrbank0_platform_platform3_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_platform_platform3_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 6'd32));
assign basesoc_csrbank0_platform_platform2_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_platform_platform2_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 6'd33));
assign basesoc_csrbank0_platform_platform1_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_platform_platform1_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 6'd34));
assign basesoc_csrbank0_platform_platform0_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_platform_platform0_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 6'd35));
assign basesoc_csrbank0_platform_target7_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_platform_target7_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 6'd36));
assign basesoc_csrbank0_platform_target6_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_platform_target6_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 6'd37));
assign basesoc_csrbank0_platform_target5_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_platform_target5_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 6'd38));
assign basesoc_csrbank0_platform_target4_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_platform_target4_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 6'd39));
assign basesoc_csrbank0_platform_target3_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_platform_target3_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 6'd40));
assign basesoc_csrbank0_platform_target2_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_platform_target2_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 6'd41));
assign basesoc_csrbank0_platform_target1_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_platform_target1_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 6'd42));
assign basesoc_csrbank0_platform_target0_r = basesoc_interface1_dat_w[7:0];
assign basesoc_csrbank0_platform_target0_re = ((basesoc_csrbank0_sel & basesoc_interface1_we) & (basesoc_interface1_adr[5:0] == 6'd43));
assign basesoc_csrbank0_dna_id7_w = dna_status[56];
assign basesoc_csrbank0_dna_id6_w = dna_status[55:48];
assign basesoc_csrbank0_dna_id5_w = dna_status[47:40];
assign basesoc_csrbank0_dna_id4_w = dna_status[39:32];
assign basesoc_csrbank0_dna_id3_w = dna_status[31:24];
assign basesoc_csrbank0_dna_id2_w = dna_status[23:16];
assign basesoc_csrbank0_dna_id1_w = dna_status[15:8];
assign basesoc_csrbank0_dna_id0_w = dna_status[7:0];
assign basesoc_csrbank0_git_commit19_w = git_status[159:152];
assign basesoc_csrbank0_git_commit18_w = git_status[151:144];
assign basesoc_csrbank0_git_commit17_w = git_status[143:136];
assign basesoc_csrbank0_git_commit16_w = git_status[135:128];
assign basesoc_csrbank0_git_commit15_w = git_status[127:120];
assign basesoc_csrbank0_git_commit14_w = git_status[119:112];
assign basesoc_csrbank0_git_commit13_w = git_status[111:104];
assign basesoc_csrbank0_git_commit12_w = git_status[103:96];
assign basesoc_csrbank0_git_commit11_w = git_status[95:88];
assign basesoc_csrbank0_git_commit10_w = git_status[87:80];
assign basesoc_csrbank0_git_commit9_w = git_status[79:72];
assign basesoc_csrbank0_git_commit8_w = git_status[71:64];
assign basesoc_csrbank0_git_commit7_w = git_status[63:56];
assign basesoc_csrbank0_git_commit6_w = git_status[55:48];
assign basesoc_csrbank0_git_commit5_w = git_status[47:40];
assign basesoc_csrbank0_git_commit4_w = git_status[39:32];
assign basesoc_csrbank0_git_commit3_w = git_status[31:24];
assign basesoc_csrbank0_git_commit2_w = git_status[23:16];
assign basesoc_csrbank0_git_commit1_w = git_status[15:8];
assign basesoc_csrbank0_git_commit0_w = git_status[7:0];
assign basesoc_csrbank0_platform_platform7_w = platform_status[63:56];
assign basesoc_csrbank0_platform_platform6_w = platform_status[55:48];
assign basesoc_csrbank0_platform_platform5_w = platform_status[47:40];
assign basesoc_csrbank0_platform_platform4_w = platform_status[39:32];
assign basesoc_csrbank0_platform_platform3_w = platform_status[31:24];
assign basesoc_csrbank0_platform_platform2_w = platform_status[23:16];
assign basesoc_csrbank0_platform_platform1_w = platform_status[15:8];
assign basesoc_csrbank0_platform_platform0_w = platform_status[7:0];
assign basesoc_csrbank0_platform_target7_w = target_status[63:56];
assign basesoc_csrbank0_platform_target6_w = target_status[55:48];
assign basesoc_csrbank0_platform_target5_w = target_status[47:40];
assign basesoc_csrbank0_platform_target4_w = target_status[39:32];
assign basesoc_csrbank0_platform_target3_w = target_status[31:24];
assign basesoc_csrbank0_platform_target2_w = target_status[23:16];
assign basesoc_csrbank0_platform_target1_w = target_status[15:8];
assign basesoc_csrbank0_platform_target0_w = target_status[7:0];
assign basesoc_csrbank1_sel = (basesoc_interface2_adr[13:9] == 4'd8);
assign basesoc_csrbank1_dfii_control0_r = basesoc_interface2_dat_w[3:0];
assign basesoc_csrbank1_dfii_control0_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 1'd0));
assign basesoc_csrbank1_dfii_pi0_command0_r = basesoc_interface2_dat_w[5:0];
assign basesoc_csrbank1_dfii_pi0_command0_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 1'd1));
assign controllerinjector_phaseinjector0_command_issue_r = basesoc_interface2_dat_w[0];
assign controllerinjector_phaseinjector0_command_issue_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 2'd2));
assign basesoc_csrbank1_dfii_pi0_address1_r = basesoc_interface2_dat_w[4:0];
assign basesoc_csrbank1_dfii_pi0_address1_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 2'd3));
assign basesoc_csrbank1_dfii_pi0_address0_r = basesoc_interface2_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi0_address0_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 3'd4));
assign basesoc_csrbank1_dfii_pi0_baddress0_r = basesoc_interface2_dat_w[2:0];
assign basesoc_csrbank1_dfii_pi0_baddress0_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 3'd5));
assign basesoc_csrbank1_dfii_pi0_wrdata3_r = basesoc_interface2_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi0_wrdata3_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 3'd6));
assign basesoc_csrbank1_dfii_pi0_wrdata2_r = basesoc_interface2_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi0_wrdata2_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 3'd7));
assign basesoc_csrbank1_dfii_pi0_wrdata1_r = basesoc_interface2_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi0_wrdata1_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 4'd8));
assign basesoc_csrbank1_dfii_pi0_wrdata0_r = basesoc_interface2_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi0_wrdata0_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 4'd9));
assign basesoc_csrbank1_dfii_pi0_rddata3_r = basesoc_interface2_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi0_rddata3_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 4'd10));
assign basesoc_csrbank1_dfii_pi0_rddata2_r = basesoc_interface2_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi0_rddata2_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 4'd11));
assign basesoc_csrbank1_dfii_pi0_rddata1_r = basesoc_interface2_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi0_rddata1_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 4'd12));
assign basesoc_csrbank1_dfii_pi0_rddata0_r = basesoc_interface2_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi0_rddata0_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 4'd13));
assign basesoc_csrbank1_dfii_pi1_command0_r = basesoc_interface2_dat_w[5:0];
assign basesoc_csrbank1_dfii_pi1_command0_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 4'd14));
assign controllerinjector_phaseinjector1_command_issue_r = basesoc_interface2_dat_w[0];
assign controllerinjector_phaseinjector1_command_issue_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 4'd15));
assign basesoc_csrbank1_dfii_pi1_address1_r = basesoc_interface2_dat_w[4:0];
assign basesoc_csrbank1_dfii_pi1_address1_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 5'd16));
assign basesoc_csrbank1_dfii_pi1_address0_r = basesoc_interface2_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi1_address0_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 5'd17));
assign basesoc_csrbank1_dfii_pi1_baddress0_r = basesoc_interface2_dat_w[2:0];
assign basesoc_csrbank1_dfii_pi1_baddress0_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 5'd18));
assign basesoc_csrbank1_dfii_pi1_wrdata3_r = basesoc_interface2_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi1_wrdata3_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 5'd19));
assign basesoc_csrbank1_dfii_pi1_wrdata2_r = basesoc_interface2_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi1_wrdata2_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 5'd20));
assign basesoc_csrbank1_dfii_pi1_wrdata1_r = basesoc_interface2_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi1_wrdata1_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 5'd21));
assign basesoc_csrbank1_dfii_pi1_wrdata0_r = basesoc_interface2_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi1_wrdata0_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 5'd22));
assign basesoc_csrbank1_dfii_pi1_rddata3_r = basesoc_interface2_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi1_rddata3_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 5'd23));
assign basesoc_csrbank1_dfii_pi1_rddata2_r = basesoc_interface2_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi1_rddata2_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 5'd24));
assign basesoc_csrbank1_dfii_pi1_rddata1_r = basesoc_interface2_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi1_rddata1_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 5'd25));
assign basesoc_csrbank1_dfii_pi1_rddata0_r = basesoc_interface2_dat_w[7:0];
assign basesoc_csrbank1_dfii_pi1_rddata0_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 5'd26));
assign controllerinjector_bandwidth_update_r = basesoc_interface2_dat_w[0];
assign controllerinjector_bandwidth_update_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 5'd27));
assign basesoc_csrbank1_controller_bandwidth_nreads2_r = basesoc_interface2_dat_w[7:0];
assign basesoc_csrbank1_controller_bandwidth_nreads2_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 5'd28));
assign basesoc_csrbank1_controller_bandwidth_nreads1_r = basesoc_interface2_dat_w[7:0];
assign basesoc_csrbank1_controller_bandwidth_nreads1_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 5'd29));
assign basesoc_csrbank1_controller_bandwidth_nreads0_r = basesoc_interface2_dat_w[7:0];
assign basesoc_csrbank1_controller_bandwidth_nreads0_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 5'd30));
assign basesoc_csrbank1_controller_bandwidth_nwrites2_r = basesoc_interface2_dat_w[7:0];
assign basesoc_csrbank1_controller_bandwidth_nwrites2_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 5'd31));
assign basesoc_csrbank1_controller_bandwidth_nwrites1_r = basesoc_interface2_dat_w[7:0];
assign basesoc_csrbank1_controller_bandwidth_nwrites1_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 6'd32));
assign basesoc_csrbank1_controller_bandwidth_nwrites0_r = basesoc_interface2_dat_w[7:0];
assign basesoc_csrbank1_controller_bandwidth_nwrites0_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 6'd33));
assign basesoc_csrbank1_controller_bandwidth_data_width_r = basesoc_interface2_dat_w[6:0];
assign basesoc_csrbank1_controller_bandwidth_data_width_re = ((basesoc_csrbank1_sel & basesoc_interface2_we) & (basesoc_interface2_adr[5:0] == 6'd34));
assign controllerinjector_storage = controllerinjector_storage_full[3:0];
assign basesoc_csrbank1_dfii_control0_w = controllerinjector_storage_full[3:0];
assign controllerinjector_phaseinjector0_command_storage = controllerinjector_phaseinjector0_command_storage_full[5:0];
assign basesoc_csrbank1_dfii_pi0_command0_w = controllerinjector_phaseinjector0_command_storage_full[5:0];
assign controllerinjector_phaseinjector0_address_storage = controllerinjector_phaseinjector0_address_storage_full[12:0];
assign basesoc_csrbank1_dfii_pi0_address1_w = controllerinjector_phaseinjector0_address_storage_full[12:8];
assign basesoc_csrbank1_dfii_pi0_address0_w = controllerinjector_phaseinjector0_address_storage_full[7:0];
assign controllerinjector_phaseinjector0_baddress_storage = controllerinjector_phaseinjector0_baddress_storage_full[2:0];
assign basesoc_csrbank1_dfii_pi0_baddress0_w = controllerinjector_phaseinjector0_baddress_storage_full[2:0];
assign controllerinjector_phaseinjector0_wrdata_storage = controllerinjector_phaseinjector0_wrdata_storage_full[31:0];
assign basesoc_csrbank1_dfii_pi0_wrdata3_w = controllerinjector_phaseinjector0_wrdata_storage_full[31:24];
assign basesoc_csrbank1_dfii_pi0_wrdata2_w = controllerinjector_phaseinjector0_wrdata_storage_full[23:16];
assign basesoc_csrbank1_dfii_pi0_wrdata1_w = controllerinjector_phaseinjector0_wrdata_storage_full[15:8];
assign basesoc_csrbank1_dfii_pi0_wrdata0_w = controllerinjector_phaseinjector0_wrdata_storage_full[7:0];
assign basesoc_csrbank1_dfii_pi0_rddata3_w = controllerinjector_phaseinjector0_status[31:24];
assign basesoc_csrbank1_dfii_pi0_rddata2_w = controllerinjector_phaseinjector0_status[23:16];
assign basesoc_csrbank1_dfii_pi0_rddata1_w = controllerinjector_phaseinjector0_status[15:8];
assign basesoc_csrbank1_dfii_pi0_rddata0_w = controllerinjector_phaseinjector0_status[7:0];
assign controllerinjector_phaseinjector1_command_storage = controllerinjector_phaseinjector1_command_storage_full[5:0];
assign basesoc_csrbank1_dfii_pi1_command0_w = controllerinjector_phaseinjector1_command_storage_full[5:0];
assign controllerinjector_phaseinjector1_address_storage = controllerinjector_phaseinjector1_address_storage_full[12:0];
assign basesoc_csrbank1_dfii_pi1_address1_w = controllerinjector_phaseinjector1_address_storage_full[12:8];
assign basesoc_csrbank1_dfii_pi1_address0_w = controllerinjector_phaseinjector1_address_storage_full[7:0];
assign controllerinjector_phaseinjector1_baddress_storage = controllerinjector_phaseinjector1_baddress_storage_full[2:0];
assign basesoc_csrbank1_dfii_pi1_baddress0_w = controllerinjector_phaseinjector1_baddress_storage_full[2:0];
assign controllerinjector_phaseinjector1_wrdata_storage = controllerinjector_phaseinjector1_wrdata_storage_full[31:0];
assign basesoc_csrbank1_dfii_pi1_wrdata3_w = controllerinjector_phaseinjector1_wrdata_storage_full[31:24];
assign basesoc_csrbank1_dfii_pi1_wrdata2_w = controllerinjector_phaseinjector1_wrdata_storage_full[23:16];
assign basesoc_csrbank1_dfii_pi1_wrdata1_w = controllerinjector_phaseinjector1_wrdata_storage_full[15:8];
assign basesoc_csrbank1_dfii_pi1_wrdata0_w = controllerinjector_phaseinjector1_wrdata_storage_full[7:0];
assign basesoc_csrbank1_dfii_pi1_rddata3_w = controllerinjector_phaseinjector1_status[31:24];
assign basesoc_csrbank1_dfii_pi1_rddata2_w = controllerinjector_phaseinjector1_status[23:16];
assign basesoc_csrbank1_dfii_pi1_rddata1_w = controllerinjector_phaseinjector1_status[15:8];
assign basesoc_csrbank1_dfii_pi1_rddata0_w = controllerinjector_phaseinjector1_status[7:0];
assign basesoc_csrbank1_controller_bandwidth_nreads2_w = controllerinjector_bandwidth_nreads_status[23:16];
assign basesoc_csrbank1_controller_bandwidth_nreads1_w = controllerinjector_bandwidth_nreads_status[15:8];
assign basesoc_csrbank1_controller_bandwidth_nreads0_w = controllerinjector_bandwidth_nreads_status[7:0];
assign basesoc_csrbank1_controller_bandwidth_nwrites2_w = controllerinjector_bandwidth_nwrites_status[23:16];
assign basesoc_csrbank1_controller_bandwidth_nwrites1_w = controllerinjector_bandwidth_nwrites_status[15:8];
assign basesoc_csrbank1_controller_bandwidth_nwrites0_w = controllerinjector_bandwidth_nwrites_status[7:0];
assign basesoc_csrbank1_controller_bandwidth_data_width_w = controllerinjector_bandwidth_data_width_status[6:0];
assign basesoc_csrbank2_sel = (basesoc_interface3_adr[13:9] == 4'd10);
assign basesoc_csrbank2_bitbang0_r = basesoc_interface3_dat_w[3:0];
assign basesoc_csrbank2_bitbang0_re = ((basesoc_csrbank2_sel & basesoc_interface3_we) & (basesoc_interface3_adr[1:0] == 1'd0));
assign basesoc_csrbank2_miso_r = basesoc_interface3_dat_w[0];
assign basesoc_csrbank2_miso_re = ((basesoc_csrbank2_sel & basesoc_interface3_we) & (basesoc_interface3_adr[1:0] == 1'd1));
assign basesoc_csrbank2_bitbang_en0_r = basesoc_interface3_dat_w[0];
assign basesoc_csrbank2_bitbang_en0_re = ((basesoc_csrbank2_sel & basesoc_interface3_we) & (basesoc_interface3_adr[1:0] == 2'd2));
assign bitbang_storage = bitbang_storage_full[3:0];
assign basesoc_csrbank2_bitbang0_w = bitbang_storage_full[3:0];
assign basesoc_csrbank2_miso_w = status;
assign bitbang_en_storage = bitbang_en_storage_full;
assign basesoc_csrbank2_bitbang_en0_w = bitbang_en_storage_full;
assign basesoc_csrbank3_sel = (basesoc_interface4_adr[13:9] == 3'd4);
assign basesoc_csrbank3_load3_r = basesoc_interface4_dat_w[7:0];
assign basesoc_csrbank3_load3_re = ((basesoc_csrbank3_sel & basesoc_interface4_we) & (basesoc_interface4_adr[4:0] == 1'd0));
assign basesoc_csrbank3_load2_r = basesoc_interface4_dat_w[7:0];
assign basesoc_csrbank3_load2_re = ((basesoc_csrbank3_sel & basesoc_interface4_we) & (basesoc_interface4_adr[4:0] == 1'd1));
assign basesoc_csrbank3_load1_r = basesoc_interface4_dat_w[7:0];
assign basesoc_csrbank3_load1_re = ((basesoc_csrbank3_sel & basesoc_interface4_we) & (basesoc_interface4_adr[4:0] == 2'd2));
assign basesoc_csrbank3_load0_r = basesoc_interface4_dat_w[7:0];
assign basesoc_csrbank3_load0_re = ((basesoc_csrbank3_sel & basesoc_interface4_we) & (basesoc_interface4_adr[4:0] == 2'd3));
assign basesoc_csrbank3_reload3_r = basesoc_interface4_dat_w[7:0];
assign basesoc_csrbank3_reload3_re = ((basesoc_csrbank3_sel & basesoc_interface4_we) & (basesoc_interface4_adr[4:0] == 3'd4));
assign basesoc_csrbank3_reload2_r = basesoc_interface4_dat_w[7:0];
assign basesoc_csrbank3_reload2_re = ((basesoc_csrbank3_sel & basesoc_interface4_we) & (basesoc_interface4_adr[4:0] == 3'd5));
assign basesoc_csrbank3_reload1_r = basesoc_interface4_dat_w[7:0];
assign basesoc_csrbank3_reload1_re = ((basesoc_csrbank3_sel & basesoc_interface4_we) & (basesoc_interface4_adr[4:0] == 3'd6));
assign basesoc_csrbank3_reload0_r = basesoc_interface4_dat_w[7:0];
assign basesoc_csrbank3_reload0_re = ((basesoc_csrbank3_sel & basesoc_interface4_we) & (basesoc_interface4_adr[4:0] == 3'd7));
assign basesoc_csrbank3_en0_r = basesoc_interface4_dat_w[0];
assign basesoc_csrbank3_en0_re = ((basesoc_csrbank3_sel & basesoc_interface4_we) & (basesoc_interface4_adr[4:0] == 4'd8));
assign basesoc_timer0_update_value_r = basesoc_interface4_dat_w[0];
assign basesoc_timer0_update_value_re = ((basesoc_csrbank3_sel & basesoc_interface4_we) & (basesoc_interface4_adr[4:0] == 4'd9));
assign basesoc_csrbank3_value3_r = basesoc_interface4_dat_w[7:0];
assign basesoc_csrbank3_value3_re = ((basesoc_csrbank3_sel & basesoc_interface4_we) & (basesoc_interface4_adr[4:0] == 4'd10));
assign basesoc_csrbank3_value2_r = basesoc_interface4_dat_w[7:0];
assign basesoc_csrbank3_value2_re = ((basesoc_csrbank3_sel & basesoc_interface4_we) & (basesoc_interface4_adr[4:0] == 4'd11));
assign basesoc_csrbank3_value1_r = basesoc_interface4_dat_w[7:0];
assign basesoc_csrbank3_value1_re = ((basesoc_csrbank3_sel & basesoc_interface4_we) & (basesoc_interface4_adr[4:0] == 4'd12));
assign basesoc_csrbank3_value0_r = basesoc_interface4_dat_w[7:0];
assign basesoc_csrbank3_value0_re = ((basesoc_csrbank3_sel & basesoc_interface4_we) & (basesoc_interface4_adr[4:0] == 4'd13));
assign basesoc_timer0_eventmanager_status_r = basesoc_interface4_dat_w[0];
assign basesoc_timer0_eventmanager_status_re = ((basesoc_csrbank3_sel & basesoc_interface4_we) & (basesoc_interface4_adr[4:0] == 4'd14));
assign basesoc_timer0_eventmanager_pending_r = basesoc_interface4_dat_w[0];
assign basesoc_timer0_eventmanager_pending_re = ((basesoc_csrbank3_sel & basesoc_interface4_we) & (basesoc_interface4_adr[4:0] == 4'd15));
assign basesoc_csrbank3_ev_enable0_r = basesoc_interface4_dat_w[0];
assign basesoc_csrbank3_ev_enable0_re = ((basesoc_csrbank3_sel & basesoc_interface4_we) & (basesoc_interface4_adr[4:0] == 5'd16));
assign basesoc_timer0_load_storage = basesoc_timer0_load_storage_full[31:0];
assign basesoc_csrbank3_load3_w = basesoc_timer0_load_storage_full[31:24];
assign basesoc_csrbank3_load2_w = basesoc_timer0_load_storage_full[23:16];
assign basesoc_csrbank3_load1_w = basesoc_timer0_load_storage_full[15:8];
assign basesoc_csrbank3_load0_w = basesoc_timer0_load_storage_full[7:0];
assign basesoc_timer0_reload_storage = basesoc_timer0_reload_storage_full[31:0];
assign basesoc_csrbank3_reload3_w = basesoc_timer0_reload_storage_full[31:24];
assign basesoc_csrbank3_reload2_w = basesoc_timer0_reload_storage_full[23:16];
assign basesoc_csrbank3_reload1_w = basesoc_timer0_reload_storage_full[15:8];
assign basesoc_csrbank3_reload0_w = basesoc_timer0_reload_storage_full[7:0];
assign basesoc_timer0_en_storage = basesoc_timer0_en_storage_full;
assign basesoc_csrbank3_en0_w = basesoc_timer0_en_storage_full;
assign basesoc_csrbank3_value3_w = basesoc_timer0_value_status[31:24];
assign basesoc_csrbank3_value2_w = basesoc_timer0_value_status[23:16];
assign basesoc_csrbank3_value1_w = basesoc_timer0_value_status[15:8];
assign basesoc_csrbank3_value0_w = basesoc_timer0_value_status[7:0];
assign basesoc_timer0_eventmanager_storage = basesoc_timer0_eventmanager_storage_full;
assign basesoc_csrbank3_ev_enable0_w = basesoc_timer0_eventmanager_storage_full;
assign basesoc_csrbank4_sel = (basesoc_interface5_adr[13:9] == 2'd2);
assign basesoc_uart_rxtx_r = basesoc_interface5_dat_w[7:0];
assign basesoc_uart_rxtx_re = ((basesoc_csrbank4_sel & basesoc_interface5_we) & (basesoc_interface5_adr[2:0] == 1'd0));
assign basesoc_csrbank4_txfull_r = basesoc_interface5_dat_w[0];
assign basesoc_csrbank4_txfull_re = ((basesoc_csrbank4_sel & basesoc_interface5_we) & (basesoc_interface5_adr[2:0] == 1'd1));
assign basesoc_csrbank4_rxempty_r = basesoc_interface5_dat_w[0];
assign basesoc_csrbank4_rxempty_re = ((basesoc_csrbank4_sel & basesoc_interface5_we) & (basesoc_interface5_adr[2:0] == 2'd2));
assign basesoc_uart_status_r = basesoc_interface5_dat_w[1:0];
assign basesoc_uart_status_re = ((basesoc_csrbank4_sel & basesoc_interface5_we) & (basesoc_interface5_adr[2:0] == 2'd3));
assign basesoc_uart_pending_r = basesoc_interface5_dat_w[1:0];
assign basesoc_uart_pending_re = ((basesoc_csrbank4_sel & basesoc_interface5_we) & (basesoc_interface5_adr[2:0] == 3'd4));
assign basesoc_csrbank4_ev_enable0_r = basesoc_interface5_dat_w[1:0];
assign basesoc_csrbank4_ev_enable0_re = ((basesoc_csrbank4_sel & basesoc_interface5_we) & (basesoc_interface5_adr[2:0] == 3'd5));
assign basesoc_csrbank4_txfull_w = basesoc_uart_txfull_status;
assign basesoc_csrbank4_rxempty_w = basesoc_uart_rxempty_status;
assign basesoc_uart_storage = basesoc_uart_storage_full[1:0];
assign basesoc_csrbank4_ev_enable0_w = basesoc_uart_storage_full[1:0];
assign basesoc_csrbank5_sel = (basesoc_interface6_adr[13:9] == 1'd1);
assign basesoc_csrbank5_tuning_word3_r = basesoc_interface6_dat_w[7:0];
assign basesoc_csrbank5_tuning_word3_re = ((basesoc_csrbank5_sel & basesoc_interface6_we) & (basesoc_interface6_adr[1:0] == 1'd0));
assign basesoc_csrbank5_tuning_word2_r = basesoc_interface6_dat_w[7:0];
assign basesoc_csrbank5_tuning_word2_re = ((basesoc_csrbank5_sel & basesoc_interface6_we) & (basesoc_interface6_adr[1:0] == 1'd1));
assign basesoc_csrbank5_tuning_word1_r = basesoc_interface6_dat_w[7:0];
assign basesoc_csrbank5_tuning_word1_re = ((basesoc_csrbank5_sel & basesoc_interface6_we) & (basesoc_interface6_adr[1:0] == 2'd2));
assign basesoc_csrbank5_tuning_word0_r = basesoc_interface6_dat_w[7:0];
assign basesoc_csrbank5_tuning_word0_re = ((basesoc_csrbank5_sel & basesoc_interface6_we) & (basesoc_interface6_adr[1:0] == 2'd3));
assign basesoc_uart_phy_storage = basesoc_uart_phy_storage_full[31:0];
assign basesoc_csrbank5_tuning_word3_w = basesoc_uart_phy_storage_full[31:24];
assign basesoc_csrbank5_tuning_word2_w = basesoc_uart_phy_storage_full[23:16];
assign basesoc_csrbank5_tuning_word1_w = basesoc_uart_phy_storage_full[15:8];
assign basesoc_csrbank5_tuning_word0_w = basesoc_uart_phy_storage_full[7:0];
assign basesoc_interface1_adr = basesoc_interface_adr;
assign basesoc_interface2_adr = basesoc_interface_adr;
assign basesoc_interface3_adr = basesoc_interface_adr;
assign basesoc_interface4_adr = basesoc_interface_adr;
assign basesoc_interface5_adr = basesoc_interface_adr;
assign basesoc_interface6_adr = basesoc_interface_adr;
assign basesoc_interface0_adr = basesoc_interface_adr;
assign basesoc_interface1_we = basesoc_interface_we;
assign basesoc_interface2_we = basesoc_interface_we;
assign basesoc_interface3_we = basesoc_interface_we;
assign basesoc_interface4_we = basesoc_interface_we;
assign basesoc_interface5_we = basesoc_interface_we;
assign basesoc_interface6_we = basesoc_interface_we;
assign basesoc_interface0_we = basesoc_interface_we;
assign basesoc_interface1_dat_w = basesoc_interface_dat_w;
assign basesoc_interface2_dat_w = basesoc_interface_dat_w;
assign basesoc_interface3_dat_w = basesoc_interface_dat_w;
assign basesoc_interface4_dat_w = basesoc_interface_dat_w;
assign basesoc_interface5_dat_w = basesoc_interface_dat_w;
assign basesoc_interface6_dat_w = basesoc_interface_dat_w;
assign basesoc_interface0_dat_w = basesoc_interface_dat_w;
assign basesoc_interface_dat_r = ((((((basesoc_interface1_dat_r | basesoc_interface2_dat_r) | basesoc_interface3_dat_r) | basesoc_interface4_dat_r) | basesoc_interface5_dat_r) | basesoc_interface6_dat_r) | basesoc_interface0_dat_r);
assign slice_proxy0 = ddrphy_record2_wrdata[31:16];
assign slice_proxy1 = ddrphy_record2_wrdata[15:0];
assign slice_proxy2 = ddrphy_record3_wrdata[31:16];
assign slice_proxy3 = ddrphy_record3_wrdata[15:0];
assign slice_proxy4 = ddrphy_record2_wrdata[31:16];
assign slice_proxy5 = ddrphy_record2_wrdata[15:0];
assign slice_proxy6 = ddrphy_record3_wrdata[31:16];
assign slice_proxy7 = ddrphy_record3_wrdata[15:0];
assign slice_proxy8 = ddrphy_record2_wrdata[31:16];
assign slice_proxy9 = ddrphy_record2_wrdata[15:0];
assign slice_proxy10 = ddrphy_record3_wrdata[31:16];
assign slice_proxy11 = ddrphy_record3_wrdata[15:0];
assign slice_proxy12 = ddrphy_record2_wrdata[31:16];
assign slice_proxy13 = ddrphy_record2_wrdata[15:0];
assign slice_proxy14 = ddrphy_record3_wrdata[31:16];
assign slice_proxy15 = ddrphy_record3_wrdata[15:0];
assign slice_proxy16 = ddrphy_record2_wrdata[31:16];
assign slice_proxy17 = ddrphy_record2_wrdata[15:0];
assign slice_proxy18 = ddrphy_record3_wrdata[31:16];
assign slice_proxy19 = ddrphy_record3_wrdata[15:0];
assign slice_proxy20 = ddrphy_record2_wrdata[31:16];
assign slice_proxy21 = ddrphy_record2_wrdata[15:0];
assign slice_proxy22 = ddrphy_record3_wrdata[31:16];
assign slice_proxy23 = ddrphy_record3_wrdata[15:0];
assign slice_proxy24 = ddrphy_record2_wrdata[31:16];
assign slice_proxy25 = ddrphy_record2_wrdata[15:0];
assign slice_proxy26 = ddrphy_record3_wrdata[31:16];
assign slice_proxy27 = ddrphy_record3_wrdata[15:0];
assign slice_proxy28 = ddrphy_record2_wrdata[31:16];
assign slice_proxy29 = ddrphy_record2_wrdata[15:0];
assign slice_proxy30 = ddrphy_record3_wrdata[31:16];
assign slice_proxy31 = ddrphy_record3_wrdata[15:0];
assign slice_proxy32 = ddrphy_record2_wrdata[31:16];
assign slice_proxy33 = ddrphy_record2_wrdata[15:0];
assign slice_proxy34 = ddrphy_record3_wrdata[31:16];
assign slice_proxy35 = ddrphy_record3_wrdata[15:0];
assign slice_proxy36 = ddrphy_record2_wrdata[31:16];
assign slice_proxy37 = ddrphy_record2_wrdata[15:0];
assign slice_proxy38 = ddrphy_record3_wrdata[31:16];
assign slice_proxy39 = ddrphy_record3_wrdata[15:0];
assign slice_proxy40 = ddrphy_record2_wrdata[31:16];
assign slice_proxy41 = ddrphy_record2_wrdata[15:0];
assign slice_proxy42 = ddrphy_record3_wrdata[31:16];
assign slice_proxy43 = ddrphy_record3_wrdata[15:0];
assign slice_proxy44 = ddrphy_record2_wrdata[31:16];
assign slice_proxy45 = ddrphy_record2_wrdata[15:0];
assign slice_proxy46 = ddrphy_record3_wrdata[31:16];
assign slice_proxy47 = ddrphy_record3_wrdata[15:0];
assign slice_proxy48 = ddrphy_record2_wrdata[31:16];
assign slice_proxy49 = ddrphy_record2_wrdata[15:0];
assign slice_proxy50 = ddrphy_record3_wrdata[31:16];
assign slice_proxy51 = ddrphy_record3_wrdata[15:0];
assign slice_proxy52 = ddrphy_record2_wrdata[31:16];
assign slice_proxy53 = ddrphy_record2_wrdata[15:0];
assign slice_proxy54 = ddrphy_record3_wrdata[31:16];
assign slice_proxy55 = ddrphy_record3_wrdata[15:0];
assign slice_proxy56 = ddrphy_record2_wrdata[31:16];
assign slice_proxy57 = ddrphy_record2_wrdata[15:0];
assign slice_proxy58 = ddrphy_record3_wrdata[31:16];
assign slice_proxy59 = ddrphy_record3_wrdata[15:0];
assign slice_proxy60 = ddrphy_record2_wrdata[31:16];
assign slice_proxy61 = ddrphy_record2_wrdata[15:0];
assign slice_proxy62 = ddrphy_record3_wrdata[31:16];
assign slice_proxy63 = ddrphy_record3_wrdata[15:0];
assign slice_proxy64 = ddrphy_record2_wrdata_mask[3:2];
assign slice_proxy65 = ddrphy_record2_wrdata_mask[1:0];
assign slice_proxy66 = ddrphy_record3_wrdata_mask[3:2];
assign slice_proxy67 = ddrphy_record3_wrdata_mask[1:0];
assign slice_proxy68 = ddrphy_record2_wrdata_mask[3:2];
assign slice_proxy69 = ddrphy_record2_wrdata_mask[1:0];
assign slice_proxy70 = ddrphy_record3_wrdata_mask[3:2];
assign slice_proxy71 = ddrphy_record3_wrdata_mask[1:0];
always @(*) begin
	rhs_array_muxed0 <= 1'd0;
	case (controllerinjector_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed0 <= controllerinjector_choose_cmd_valids[0];
		end
		1'd1: begin
			rhs_array_muxed0 <= controllerinjector_choose_cmd_valids[1];
		end
		2'd2: begin
			rhs_array_muxed0 <= controllerinjector_choose_cmd_valids[2];
		end
		2'd3: begin
			rhs_array_muxed0 <= controllerinjector_choose_cmd_valids[3];
		end
		3'd4: begin
			rhs_array_muxed0 <= controllerinjector_choose_cmd_valids[4];
		end
		3'd5: begin
			rhs_array_muxed0 <= controllerinjector_choose_cmd_valids[5];
		end
		3'd6: begin
			rhs_array_muxed0 <= controllerinjector_choose_cmd_valids[6];
		end
		default: begin
			rhs_array_muxed0 <= controllerinjector_choose_cmd_valids[7];
		end
	endcase
end
always @(*) begin
	rhs_array_muxed1 <= 13'd0;
	case (controllerinjector_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed1 <= controllerinjector_bankmachine0_cmd_payload_a;
		end
		1'd1: begin
			rhs_array_muxed1 <= controllerinjector_bankmachine1_cmd_payload_a;
		end
		2'd2: begin
			rhs_array_muxed1 <= controllerinjector_bankmachine2_cmd_payload_a;
		end
		2'd3: begin
			rhs_array_muxed1 <= controllerinjector_bankmachine3_cmd_payload_a;
		end
		3'd4: begin
			rhs_array_muxed1 <= controllerinjector_bankmachine4_cmd_payload_a;
		end
		3'd5: begin
			rhs_array_muxed1 <= controllerinjector_bankmachine5_cmd_payload_a;
		end
		3'd6: begin
			rhs_array_muxed1 <= controllerinjector_bankmachine6_cmd_payload_a;
		end
		default: begin
			rhs_array_muxed1 <= controllerinjector_bankmachine7_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed2 <= 3'd0;
	case (controllerinjector_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed2 <= controllerinjector_bankmachine0_cmd_payload_ba;
		end
		1'd1: begin
			rhs_array_muxed2 <= controllerinjector_bankmachine1_cmd_payload_ba;
		end
		2'd2: begin
			rhs_array_muxed2 <= controllerinjector_bankmachine2_cmd_payload_ba;
		end
		2'd3: begin
			rhs_array_muxed2 <= controllerinjector_bankmachine3_cmd_payload_ba;
		end
		3'd4: begin
			rhs_array_muxed2 <= controllerinjector_bankmachine4_cmd_payload_ba;
		end
		3'd5: begin
			rhs_array_muxed2 <= controllerinjector_bankmachine5_cmd_payload_ba;
		end
		3'd6: begin
			rhs_array_muxed2 <= controllerinjector_bankmachine6_cmd_payload_ba;
		end
		default: begin
			rhs_array_muxed2 <= controllerinjector_bankmachine7_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed3 <= 1'd0;
	case (controllerinjector_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed3 <= controllerinjector_bankmachine0_cmd_payload_is_read;
		end
		1'd1: begin
			rhs_array_muxed3 <= controllerinjector_bankmachine1_cmd_payload_is_read;
		end
		2'd2: begin
			rhs_array_muxed3 <= controllerinjector_bankmachine2_cmd_payload_is_read;
		end
		2'd3: begin
			rhs_array_muxed3 <= controllerinjector_bankmachine3_cmd_payload_is_read;
		end
		3'd4: begin
			rhs_array_muxed3 <= controllerinjector_bankmachine4_cmd_payload_is_read;
		end
		3'd5: begin
			rhs_array_muxed3 <= controllerinjector_bankmachine5_cmd_payload_is_read;
		end
		3'd6: begin
			rhs_array_muxed3 <= controllerinjector_bankmachine6_cmd_payload_is_read;
		end
		default: begin
			rhs_array_muxed3 <= controllerinjector_bankmachine7_cmd_payload_is_read;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed4 <= 1'd0;
	case (controllerinjector_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed4 <= controllerinjector_bankmachine0_cmd_payload_is_write;
		end
		1'd1: begin
			rhs_array_muxed4 <= controllerinjector_bankmachine1_cmd_payload_is_write;
		end
		2'd2: begin
			rhs_array_muxed4 <= controllerinjector_bankmachine2_cmd_payload_is_write;
		end
		2'd3: begin
			rhs_array_muxed4 <= controllerinjector_bankmachine3_cmd_payload_is_write;
		end
		3'd4: begin
			rhs_array_muxed4 <= controllerinjector_bankmachine4_cmd_payload_is_write;
		end
		3'd5: begin
			rhs_array_muxed4 <= controllerinjector_bankmachine5_cmd_payload_is_write;
		end
		3'd6: begin
			rhs_array_muxed4 <= controllerinjector_bankmachine6_cmd_payload_is_write;
		end
		default: begin
			rhs_array_muxed4 <= controllerinjector_bankmachine7_cmd_payload_is_write;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed5 <= 1'd0;
	case (controllerinjector_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed5 <= controllerinjector_bankmachine0_cmd_payload_is_cmd;
		end
		1'd1: begin
			rhs_array_muxed5 <= controllerinjector_bankmachine1_cmd_payload_is_cmd;
		end
		2'd2: begin
			rhs_array_muxed5 <= controllerinjector_bankmachine2_cmd_payload_is_cmd;
		end
		2'd3: begin
			rhs_array_muxed5 <= controllerinjector_bankmachine3_cmd_payload_is_cmd;
		end
		3'd4: begin
			rhs_array_muxed5 <= controllerinjector_bankmachine4_cmd_payload_is_cmd;
		end
		3'd5: begin
			rhs_array_muxed5 <= controllerinjector_bankmachine5_cmd_payload_is_cmd;
		end
		3'd6: begin
			rhs_array_muxed5 <= controllerinjector_bankmachine6_cmd_payload_is_cmd;
		end
		default: begin
			rhs_array_muxed5 <= controllerinjector_bankmachine7_cmd_payload_is_cmd;
		end
	endcase
end
always @(*) begin
	t_array_muxed0 <= 1'd0;
	case (controllerinjector_choose_cmd_grant)
		1'd0: begin
			t_array_muxed0 <= controllerinjector_bankmachine0_cmd_payload_cas;
		end
		1'd1: begin
			t_array_muxed0 <= controllerinjector_bankmachine1_cmd_payload_cas;
		end
		2'd2: begin
			t_array_muxed0 <= controllerinjector_bankmachine2_cmd_payload_cas;
		end
		2'd3: begin
			t_array_muxed0 <= controllerinjector_bankmachine3_cmd_payload_cas;
		end
		3'd4: begin
			t_array_muxed0 <= controllerinjector_bankmachine4_cmd_payload_cas;
		end
		3'd5: begin
			t_array_muxed0 <= controllerinjector_bankmachine5_cmd_payload_cas;
		end
		3'd6: begin
			t_array_muxed0 <= controllerinjector_bankmachine6_cmd_payload_cas;
		end
		default: begin
			t_array_muxed0 <= controllerinjector_bankmachine7_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	t_array_muxed1 <= 1'd0;
	case (controllerinjector_choose_cmd_grant)
		1'd0: begin
			t_array_muxed1 <= controllerinjector_bankmachine0_cmd_payload_ras;
		end
		1'd1: begin
			t_array_muxed1 <= controllerinjector_bankmachine1_cmd_payload_ras;
		end
		2'd2: begin
			t_array_muxed1 <= controllerinjector_bankmachine2_cmd_payload_ras;
		end
		2'd3: begin
			t_array_muxed1 <= controllerinjector_bankmachine3_cmd_payload_ras;
		end
		3'd4: begin
			t_array_muxed1 <= controllerinjector_bankmachine4_cmd_payload_ras;
		end
		3'd5: begin
			t_array_muxed1 <= controllerinjector_bankmachine5_cmd_payload_ras;
		end
		3'd6: begin
			t_array_muxed1 <= controllerinjector_bankmachine6_cmd_payload_ras;
		end
		default: begin
			t_array_muxed1 <= controllerinjector_bankmachine7_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	t_array_muxed2 <= 1'd0;
	case (controllerinjector_choose_cmd_grant)
		1'd0: begin
			t_array_muxed2 <= controllerinjector_bankmachine0_cmd_payload_we;
		end
		1'd1: begin
			t_array_muxed2 <= controllerinjector_bankmachine1_cmd_payload_we;
		end
		2'd2: begin
			t_array_muxed2 <= controllerinjector_bankmachine2_cmd_payload_we;
		end
		2'd3: begin
			t_array_muxed2 <= controllerinjector_bankmachine3_cmd_payload_we;
		end
		3'd4: begin
			t_array_muxed2 <= controllerinjector_bankmachine4_cmd_payload_we;
		end
		3'd5: begin
			t_array_muxed2 <= controllerinjector_bankmachine5_cmd_payload_we;
		end
		3'd6: begin
			t_array_muxed2 <= controllerinjector_bankmachine6_cmd_payload_we;
		end
		default: begin
			t_array_muxed2 <= controllerinjector_bankmachine7_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed6 <= 1'd0;
	case (controllerinjector_choose_req_grant)
		1'd0: begin
			rhs_array_muxed6 <= controllerinjector_choose_req_valids[0];
		end
		1'd1: begin
			rhs_array_muxed6 <= controllerinjector_choose_req_valids[1];
		end
		2'd2: begin
			rhs_array_muxed6 <= controllerinjector_choose_req_valids[2];
		end
		2'd3: begin
			rhs_array_muxed6 <= controllerinjector_choose_req_valids[3];
		end
		3'd4: begin
			rhs_array_muxed6 <= controllerinjector_choose_req_valids[4];
		end
		3'd5: begin
			rhs_array_muxed6 <= controllerinjector_choose_req_valids[5];
		end
		3'd6: begin
			rhs_array_muxed6 <= controllerinjector_choose_req_valids[6];
		end
		default: begin
			rhs_array_muxed6 <= controllerinjector_choose_req_valids[7];
		end
	endcase
end
always @(*) begin
	rhs_array_muxed7 <= 13'd0;
	case (controllerinjector_choose_req_grant)
		1'd0: begin
			rhs_array_muxed7 <= controllerinjector_bankmachine0_cmd_payload_a;
		end
		1'd1: begin
			rhs_array_muxed7 <= controllerinjector_bankmachine1_cmd_payload_a;
		end
		2'd2: begin
			rhs_array_muxed7 <= controllerinjector_bankmachine2_cmd_payload_a;
		end
		2'd3: begin
			rhs_array_muxed7 <= controllerinjector_bankmachine3_cmd_payload_a;
		end
		3'd4: begin
			rhs_array_muxed7 <= controllerinjector_bankmachine4_cmd_payload_a;
		end
		3'd5: begin
			rhs_array_muxed7 <= controllerinjector_bankmachine5_cmd_payload_a;
		end
		3'd6: begin
			rhs_array_muxed7 <= controllerinjector_bankmachine6_cmd_payload_a;
		end
		default: begin
			rhs_array_muxed7 <= controllerinjector_bankmachine7_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed8 <= 3'd0;
	case (controllerinjector_choose_req_grant)
		1'd0: begin
			rhs_array_muxed8 <= controllerinjector_bankmachine0_cmd_payload_ba;
		end
		1'd1: begin
			rhs_array_muxed8 <= controllerinjector_bankmachine1_cmd_payload_ba;
		end
		2'd2: begin
			rhs_array_muxed8 <= controllerinjector_bankmachine2_cmd_payload_ba;
		end
		2'd3: begin
			rhs_array_muxed8 <= controllerinjector_bankmachine3_cmd_payload_ba;
		end
		3'd4: begin
			rhs_array_muxed8 <= controllerinjector_bankmachine4_cmd_payload_ba;
		end
		3'd5: begin
			rhs_array_muxed8 <= controllerinjector_bankmachine5_cmd_payload_ba;
		end
		3'd6: begin
			rhs_array_muxed8 <= controllerinjector_bankmachine6_cmd_payload_ba;
		end
		default: begin
			rhs_array_muxed8 <= controllerinjector_bankmachine7_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed9 <= 1'd0;
	case (controllerinjector_choose_req_grant)
		1'd0: begin
			rhs_array_muxed9 <= controllerinjector_bankmachine0_cmd_payload_is_read;
		end
		1'd1: begin
			rhs_array_muxed9 <= controllerinjector_bankmachine1_cmd_payload_is_read;
		end
		2'd2: begin
			rhs_array_muxed9 <= controllerinjector_bankmachine2_cmd_payload_is_read;
		end
		2'd3: begin
			rhs_array_muxed9 <= controllerinjector_bankmachine3_cmd_payload_is_read;
		end
		3'd4: begin
			rhs_array_muxed9 <= controllerinjector_bankmachine4_cmd_payload_is_read;
		end
		3'd5: begin
			rhs_array_muxed9 <= controllerinjector_bankmachine5_cmd_payload_is_read;
		end
		3'd6: begin
			rhs_array_muxed9 <= controllerinjector_bankmachine6_cmd_payload_is_read;
		end
		default: begin
			rhs_array_muxed9 <= controllerinjector_bankmachine7_cmd_payload_is_read;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed10 <= 1'd0;
	case (controllerinjector_choose_req_grant)
		1'd0: begin
			rhs_array_muxed10 <= controllerinjector_bankmachine0_cmd_payload_is_write;
		end
		1'd1: begin
			rhs_array_muxed10 <= controllerinjector_bankmachine1_cmd_payload_is_write;
		end
		2'd2: begin
			rhs_array_muxed10 <= controllerinjector_bankmachine2_cmd_payload_is_write;
		end
		2'd3: begin
			rhs_array_muxed10 <= controllerinjector_bankmachine3_cmd_payload_is_write;
		end
		3'd4: begin
			rhs_array_muxed10 <= controllerinjector_bankmachine4_cmd_payload_is_write;
		end
		3'd5: begin
			rhs_array_muxed10 <= controllerinjector_bankmachine5_cmd_payload_is_write;
		end
		3'd6: begin
			rhs_array_muxed10 <= controllerinjector_bankmachine6_cmd_payload_is_write;
		end
		default: begin
			rhs_array_muxed10 <= controllerinjector_bankmachine7_cmd_payload_is_write;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed11 <= 1'd0;
	case (controllerinjector_choose_req_grant)
		1'd0: begin
			rhs_array_muxed11 <= controllerinjector_bankmachine0_cmd_payload_is_cmd;
		end
		1'd1: begin
			rhs_array_muxed11 <= controllerinjector_bankmachine1_cmd_payload_is_cmd;
		end
		2'd2: begin
			rhs_array_muxed11 <= controllerinjector_bankmachine2_cmd_payload_is_cmd;
		end
		2'd3: begin
			rhs_array_muxed11 <= controllerinjector_bankmachine3_cmd_payload_is_cmd;
		end
		3'd4: begin
			rhs_array_muxed11 <= controllerinjector_bankmachine4_cmd_payload_is_cmd;
		end
		3'd5: begin
			rhs_array_muxed11 <= controllerinjector_bankmachine5_cmd_payload_is_cmd;
		end
		3'd6: begin
			rhs_array_muxed11 <= controllerinjector_bankmachine6_cmd_payload_is_cmd;
		end
		default: begin
			rhs_array_muxed11 <= controllerinjector_bankmachine7_cmd_payload_is_cmd;
		end
	endcase
end
always @(*) begin
	t_array_muxed3 <= 1'd0;
	case (controllerinjector_choose_req_grant)
		1'd0: begin
			t_array_muxed3 <= controllerinjector_bankmachine0_cmd_payload_cas;
		end
		1'd1: begin
			t_array_muxed3 <= controllerinjector_bankmachine1_cmd_payload_cas;
		end
		2'd2: begin
			t_array_muxed3 <= controllerinjector_bankmachine2_cmd_payload_cas;
		end
		2'd3: begin
			t_array_muxed3 <= controllerinjector_bankmachine3_cmd_payload_cas;
		end
		3'd4: begin
			t_array_muxed3 <= controllerinjector_bankmachine4_cmd_payload_cas;
		end
		3'd5: begin
			t_array_muxed3 <= controllerinjector_bankmachine5_cmd_payload_cas;
		end
		3'd6: begin
			t_array_muxed3 <= controllerinjector_bankmachine6_cmd_payload_cas;
		end
		default: begin
			t_array_muxed3 <= controllerinjector_bankmachine7_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	t_array_muxed4 <= 1'd0;
	case (controllerinjector_choose_req_grant)
		1'd0: begin
			t_array_muxed4 <= controllerinjector_bankmachine0_cmd_payload_ras;
		end
		1'd1: begin
			t_array_muxed4 <= controllerinjector_bankmachine1_cmd_payload_ras;
		end
		2'd2: begin
			t_array_muxed4 <= controllerinjector_bankmachine2_cmd_payload_ras;
		end
		2'd3: begin
			t_array_muxed4 <= controllerinjector_bankmachine3_cmd_payload_ras;
		end
		3'd4: begin
			t_array_muxed4 <= controllerinjector_bankmachine4_cmd_payload_ras;
		end
		3'd5: begin
			t_array_muxed4 <= controllerinjector_bankmachine5_cmd_payload_ras;
		end
		3'd6: begin
			t_array_muxed4 <= controllerinjector_bankmachine6_cmd_payload_ras;
		end
		default: begin
			t_array_muxed4 <= controllerinjector_bankmachine7_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	t_array_muxed5 <= 1'd0;
	case (controllerinjector_choose_req_grant)
		1'd0: begin
			t_array_muxed5 <= controllerinjector_bankmachine0_cmd_payload_we;
		end
		1'd1: begin
			t_array_muxed5 <= controllerinjector_bankmachine1_cmd_payload_we;
		end
		2'd2: begin
			t_array_muxed5 <= controllerinjector_bankmachine2_cmd_payload_we;
		end
		2'd3: begin
			t_array_muxed5 <= controllerinjector_bankmachine3_cmd_payload_we;
		end
		3'd4: begin
			t_array_muxed5 <= controllerinjector_bankmachine4_cmd_payload_we;
		end
		3'd5: begin
			t_array_muxed5 <= controllerinjector_bankmachine5_cmd_payload_we;
		end
		3'd6: begin
			t_array_muxed5 <= controllerinjector_bankmachine6_cmd_payload_we;
		end
		default: begin
			t_array_muxed5 <= controllerinjector_bankmachine7_cmd_payload_we;
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
			rhs_array_muxed13 <= port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed14 <= 1'd0;
	case (roundrobin0_grant)
		default: begin
			rhs_array_muxed14 <= (((cba == 1'd0) & (~(((((((1'd0 | (controllerinjector_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid);
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
			rhs_array_muxed16 <= port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed17 <= 1'd0;
	case (roundrobin1_grant)
		default: begin
			rhs_array_muxed17 <= (((cba == 1'd1) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid);
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
			rhs_array_muxed19 <= port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed20 <= 1'd0;
	case (roundrobin2_grant)
		default: begin
			rhs_array_muxed20 <= (((cba == 2'd2) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid);
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
			rhs_array_muxed22 <= port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed23 <= 1'd0;
	case (roundrobin3_grant)
		default: begin
			rhs_array_muxed23 <= (((cba == 2'd3) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid);
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
			rhs_array_muxed25 <= port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed26 <= 1'd0;
	case (roundrobin4_grant)
		default: begin
			rhs_array_muxed26 <= (((cba == 3'd4) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid);
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
			rhs_array_muxed28 <= port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed29 <= 1'd0;
	case (roundrobin5_grant)
		default: begin
			rhs_array_muxed29 <= (((cba == 3'd5) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid);
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
			rhs_array_muxed31 <= port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed32 <= 1'd0;
	case (roundrobin6_grant)
		default: begin
			rhs_array_muxed32 <= (((cba == 3'd6) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid);
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
			rhs_array_muxed34 <= port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed35 <= 1'd0;
	case (roundrobin7_grant)
		default: begin
			rhs_array_muxed35 <= (((cba == 3'd7) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (roundrobin6_grant == 1'd0))))) & port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed36 <= 30'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed36 <= interface1_wb_sdram_adr;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed37 <= 32'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed37 <= interface1_wb_sdram_dat_w;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed38 <= 4'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed38 <= interface1_wb_sdram_sel;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed39 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed39 <= interface1_wb_sdram_cyc;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed40 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed40 <= interface1_wb_sdram_stb;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed41 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed41 <= interface1_wb_sdram_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed42 <= 3'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed42 <= interface1_wb_sdram_cti;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed43 <= 2'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed43 <= interface1_wb_sdram_bte;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed44 <= 30'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed44 <= basesoc_ibus_adr;
		end
		default: begin
			rhs_array_muxed44 <= basesoc_dbus_adr;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed45 <= 32'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed45 <= basesoc_ibus_dat_w;
		end
		default: begin
			rhs_array_muxed45 <= basesoc_dbus_dat_w;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed46 <= 4'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed46 <= basesoc_ibus_sel;
		end
		default: begin
			rhs_array_muxed46 <= basesoc_dbus_sel;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed47 <= 1'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed47 <= basesoc_ibus_cyc;
		end
		default: begin
			rhs_array_muxed47 <= basesoc_dbus_cyc;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed48 <= 1'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed48 <= basesoc_ibus_stb;
		end
		default: begin
			rhs_array_muxed48 <= basesoc_dbus_stb;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed49 <= 1'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed49 <= basesoc_ibus_we;
		end
		default: begin
			rhs_array_muxed49 <= basesoc_dbus_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed50 <= 3'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed50 <= basesoc_ibus_cti;
		end
		default: begin
			rhs_array_muxed50 <= basesoc_dbus_cti;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed51 <= 2'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed51 <= basesoc_ibus_bte;
		end
		default: begin
			rhs_array_muxed51 <= basesoc_dbus_bte;
		end
	endcase
end
always @(*) begin
	array_muxed0 <= 13'd0;
	case (ddrphy_phase_sel)
		1'd0: begin
			array_muxed0 <= ddrphy_record0_address;
		end
		default: begin
			array_muxed0 <= ddrphy_record1_address;
		end
	endcase
end
always @(*) begin
	array_muxed1 <= 3'd0;
	case (ddrphy_phase_sel)
		1'd0: begin
			array_muxed1 <= ddrphy_record0_bank;
		end
		default: begin
			array_muxed1 <= ddrphy_record1_bank;
		end
	endcase
end
always @(*) begin
	array_muxed2 <= 1'd0;
	case (ddrphy_phase_sel)
		1'd0: begin
			array_muxed2 <= ddrphy_record0_cke;
		end
		default: begin
			array_muxed2 <= ddrphy_record1_cke;
		end
	endcase
end
always @(*) begin
	array_muxed3 <= 1'd0;
	case (ddrphy_phase_sel)
		1'd0: begin
			array_muxed3 <= ddrphy_record0_ras_n;
		end
		default: begin
			array_muxed3 <= ddrphy_record1_ras_n;
		end
	endcase
end
always @(*) begin
	array_muxed4 <= 1'd0;
	case (ddrphy_phase_sel)
		1'd0: begin
			array_muxed4 <= ddrphy_record0_cas_n;
		end
		default: begin
			array_muxed4 <= ddrphy_record1_cas_n;
		end
	endcase
end
always @(*) begin
	array_muxed5 <= 1'd0;
	case (ddrphy_phase_sel)
		1'd0: begin
			array_muxed5 <= ddrphy_record0_we_n;
		end
		default: begin
			array_muxed5 <= ddrphy_record1_we_n;
		end
	endcase
end
always @(*) begin
	array_muxed6 <= 1'd0;
	case (ddrphy_phase_sel)
		1'd0: begin
			array_muxed6 <= ddrphy_record0_odt;
		end
		default: begin
			array_muxed6 <= ddrphy_record1_odt;
		end
	endcase
end
always @(*) begin
	array_muxed7 <= 13'd0;
	case (controllerinjector_sel0)
		1'd0: begin
			array_muxed7 <= controllerinjector_nop_a;
		end
		1'd1: begin
			array_muxed7 <= controllerinjector_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed7 <= controllerinjector_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed7 <= controllerinjector_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	array_muxed8 <= 3'd0;
	case (controllerinjector_sel0)
		1'd0: begin
			array_muxed8 <= controllerinjector_nop_ba;
		end
		1'd1: begin
			array_muxed8 <= controllerinjector_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			array_muxed8 <= controllerinjector_choose_req_cmd_payload_ba;
		end
		default: begin
			array_muxed8 <= controllerinjector_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	array_muxed9 <= 1'd0;
	case (controllerinjector_sel0)
		1'd0: begin
			array_muxed9 <= controllerinjector_nop_cas;
		end
		1'd1: begin
			array_muxed9 <= controllerinjector_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			array_muxed9 <= controllerinjector_choose_req_cmd_payload_cas;
		end
		default: begin
			array_muxed9 <= controllerinjector_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	array_muxed10 <= 1'd0;
	case (controllerinjector_sel0)
		1'd0: begin
			array_muxed10 <= controllerinjector_nop_ras;
		end
		1'd1: begin
			array_muxed10 <= controllerinjector_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			array_muxed10 <= controllerinjector_choose_req_cmd_payload_ras;
		end
		default: begin
			array_muxed10 <= controllerinjector_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	array_muxed11 <= 1'd0;
	case (controllerinjector_sel0)
		1'd0: begin
			array_muxed11 <= controllerinjector_nop_we;
		end
		1'd1: begin
			array_muxed11 <= controllerinjector_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			array_muxed11 <= controllerinjector_choose_req_cmd_payload_we;
		end
		default: begin
			array_muxed11 <= controllerinjector_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	array_muxed12 <= 1'd0;
	case (controllerinjector_sel0)
		1'd0: begin
			array_muxed12 <= 1'd0;
		end
		1'd1: begin
			array_muxed12 <= (controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed12 <= (controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed12 <= (controllerinjector_cmd_valid & controllerinjector_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	array_muxed13 <= 1'd0;
	case (controllerinjector_sel0)
		1'd0: begin
			array_muxed13 <= 1'd0;
		end
		1'd1: begin
			array_muxed13 <= (controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed13 <= (controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed13 <= (controllerinjector_cmd_valid & controllerinjector_cmd_payload_is_write);
		end
	endcase
end
always @(*) begin
	array_muxed14 <= 13'd0;
	case (controllerinjector_sel1)
		1'd0: begin
			array_muxed14 <= controllerinjector_nop_a;
		end
		1'd1: begin
			array_muxed14 <= controllerinjector_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed14 <= controllerinjector_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed14 <= controllerinjector_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	array_muxed15 <= 3'd0;
	case (controllerinjector_sel1)
		1'd0: begin
			array_muxed15 <= controllerinjector_nop_ba;
		end
		1'd1: begin
			array_muxed15 <= controllerinjector_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			array_muxed15 <= controllerinjector_choose_req_cmd_payload_ba;
		end
		default: begin
			array_muxed15 <= controllerinjector_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	array_muxed16 <= 1'd0;
	case (controllerinjector_sel1)
		1'd0: begin
			array_muxed16 <= controllerinjector_nop_cas;
		end
		1'd1: begin
			array_muxed16 <= controllerinjector_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			array_muxed16 <= controllerinjector_choose_req_cmd_payload_cas;
		end
		default: begin
			array_muxed16 <= controllerinjector_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	array_muxed17 <= 1'd0;
	case (controllerinjector_sel1)
		1'd0: begin
			array_muxed17 <= controllerinjector_nop_ras;
		end
		1'd1: begin
			array_muxed17 <= controllerinjector_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			array_muxed17 <= controllerinjector_choose_req_cmd_payload_ras;
		end
		default: begin
			array_muxed17 <= controllerinjector_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	array_muxed18 <= 1'd0;
	case (controllerinjector_sel1)
		1'd0: begin
			array_muxed18 <= controllerinjector_nop_we;
		end
		1'd1: begin
			array_muxed18 <= controllerinjector_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			array_muxed18 <= controllerinjector_choose_req_cmd_payload_we;
		end
		default: begin
			array_muxed18 <= controllerinjector_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	array_muxed19 <= 1'd0;
	case (controllerinjector_sel1)
		1'd0: begin
			array_muxed19 <= 1'd0;
		end
		1'd1: begin
			array_muxed19 <= (controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed19 <= (controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed19 <= (controllerinjector_cmd_valid & controllerinjector_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	array_muxed20 <= 1'd0;
	case (controllerinjector_sel1)
		1'd0: begin
			array_muxed20 <= 1'd0;
		end
		1'd1: begin
			array_muxed20 <= (controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed20 <= (controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed20 <= (controllerinjector_cmd_valid & controllerinjector_cmd_payload_is_write);
		end
	endcase
end
assign basesoc_uart_phy_rx = regs1;
assign xilinxasyncresetsynchronizerimpl0 = ((~cpu_reset) | crg_reset);
assign xilinxasyncresetsynchronizerimpl1 = ((~crg_pll_lckd) | (crg_por > 1'd0));
assign xilinxasyncresetsynchronizerimpl2 = (sys_rst | (~crg_dcm_base50_locked));

always @(posedge por_clk) begin
	if ((crg_por != 1'd0)) begin
		crg_por <= (crg_por - 1'd1);
	end
	if (por_rst) begin
		crg_por <= 11'd2047;
	end
end

always @(posedge sdram_half_clk) begin
	if ((ddrphy_phase_half == ddrphy_phase_sys)) begin
		ddrphy_phase_sel <= 1'd0;
	end else begin
		ddrphy_phase_sel <= (ddrphy_phase_sel + 1'd1);
	end
	ddrphy_phase_half <= (ddrphy_phase_half + 1'd1);
	ddrphy_record0_reset_n <= ddrphy_dfi_p0_reset_n;
	ddrphy_record0_odt <= ddrphy_dfi_p0_odt;
	ddrphy_record0_address <= ddrphy_dfi_p0_address;
	ddrphy_record0_bank <= ddrphy_dfi_p0_bank;
	ddrphy_record0_cs_n <= ddrphy_dfi_p0_cs_n;
	ddrphy_record0_cke <= ddrphy_dfi_p0_cke;
	ddrphy_record0_cas_n <= ddrphy_dfi_p0_cas_n;
	ddrphy_record0_ras_n <= ddrphy_dfi_p0_ras_n;
	ddrphy_record0_we_n <= ddrphy_dfi_p0_we_n;
	ddrphy_record1_reset_n <= ddrphy_dfi_p1_reset_n;
	ddrphy_record1_odt <= ddrphy_dfi_p1_odt;
	ddrphy_record1_address <= ddrphy_dfi_p1_address;
	ddrphy_record1_bank <= ddrphy_dfi_p1_bank;
	ddrphy_record1_cs_n <= ddrphy_dfi_p1_cs_n;
	ddrphy_record1_cke <= ddrphy_dfi_p1_cke;
	ddrphy_record1_cas_n <= ddrphy_dfi_p1_cas_n;
	ddrphy_record1_ras_n <= ddrphy_dfi_p1_ras_n;
	ddrphy_record1_we_n <= ddrphy_dfi_p1_we_n;
	ddram_a <= array_muxed0;
	ddram_ba <= array_muxed1;
	ddram_cke <= array_muxed2;
	ddram_ras_n <= array_muxed3;
	ddram_cas_n <= array_muxed4;
	ddram_we_n <= array_muxed5;
	ddram_odt <= array_muxed6;
	ddrphy_postamble <= ddrphy_drive_dqs;
	ddrphy_r_dfi_wrdata_en <= {ddrphy_r_dfi_wrdata_en, ddrphy_wrdata_en_d};
	if (sdram_half_rst) begin
		ddram_cke <= 1'd0;
		ddram_ras_n <= 1'd0;
		ddram_cas_n <= 1'd0;
		ddram_we_n <= 1'd0;
		ddram_ba <= 3'd0;
		ddram_a <= 13'd0;
		ddram_odt <= 1'd0;
		ddrphy_phase_sel <= 1'd0;
		ddrphy_phase_half <= 1'd0;
		ddrphy_record0_cas_n <= 1'd0;
		ddrphy_record0_cs_n <= 1'd0;
		ddrphy_record0_ras_n <= 1'd0;
		ddrphy_record0_we_n <= 1'd0;
		ddrphy_record0_cke <= 1'd0;
		ddrphy_record0_odt <= 1'd0;
		ddrphy_record0_reset_n <= 1'd0;
		ddrphy_record1_cas_n <= 1'd0;
		ddrphy_record1_cs_n <= 1'd0;
		ddrphy_record1_ras_n <= 1'd0;
		ddrphy_record1_we_n <= 1'd0;
		ddrphy_record1_cke <= 1'd0;
		ddrphy_record1_odt <= 1'd0;
		ddrphy_record1_reset_n <= 1'd0;
		ddrphy_postamble <= 1'd0;
		ddrphy_r_dfi_wrdata_en <= 3'd0;
	end
end

always @(posedge sys_clk) begin
	basesoc_rom_bus_ack <= 1'd0;
	if (((basesoc_rom_bus_cyc & basesoc_rom_bus_stb) & (~basesoc_rom_bus_ack))) begin
		basesoc_rom_bus_ack <= 1'd1;
	end
	basesoc_sram_bus_ack <= 1'd0;
	if (((basesoc_sram_bus_cyc & basesoc_sram_bus_stb) & (~basesoc_sram_bus_ack))) begin
		basesoc_sram_bus_ack <= 1'd1;
	end
	basesoc_interface_we <= 1'd0;
	basesoc_interface_dat_w <= basesoc_bus_wishbone_dat_w;
	basesoc_interface_adr <= basesoc_bus_wishbone_adr;
	basesoc_bus_wishbone_dat_r <= basesoc_interface_dat_r;
	if ((basesoc_counter == 1'd1)) begin
		basesoc_interface_we <= basesoc_bus_wishbone_we;
	end
	if ((basesoc_counter == 2'd2)) begin
		basesoc_bus_wishbone_ack <= 1'd1;
	end
	if ((basesoc_counter == 2'd3)) begin
		basesoc_bus_wishbone_ack <= 1'd0;
	end
	if ((basesoc_counter != 1'd0)) begin
		basesoc_counter <= (basesoc_counter + 1'd1);
	end else begin
		if ((basesoc_bus_wishbone_cyc & basesoc_bus_wishbone_stb)) begin
			basesoc_counter <= 1'd1;
		end
	end
	basesoc_uart_phy_sink_ready <= 1'd0;
	if (((basesoc_uart_phy_sink_valid & (~basesoc_uart_phy_tx_busy)) & (~basesoc_uart_phy_sink_ready))) begin
		basesoc_uart_phy_tx_reg <= basesoc_uart_phy_sink_payload_data;
		basesoc_uart_phy_tx_bitcount <= 1'd0;
		basesoc_uart_phy_tx_busy <= 1'd1;
		serial_tx <= 1'd0;
	end else begin
		if ((basesoc_uart_phy_uart_clk_txen & basesoc_uart_phy_tx_busy)) begin
			basesoc_uart_phy_tx_bitcount <= (basesoc_uart_phy_tx_bitcount + 1'd1);
			if ((basesoc_uart_phy_tx_bitcount == 4'd8)) begin
				serial_tx <= 1'd1;
			end else begin
				if ((basesoc_uart_phy_tx_bitcount == 4'd9)) begin
					serial_tx <= 1'd1;
					basesoc_uart_phy_tx_busy <= 1'd0;
					basesoc_uart_phy_sink_ready <= 1'd1;
				end else begin
					serial_tx <= basesoc_uart_phy_tx_reg[0];
					basesoc_uart_phy_tx_reg <= {1'd0, basesoc_uart_phy_tx_reg[7:1]};
				end
			end
		end
	end
	if (basesoc_uart_phy_tx_busy) begin
		{basesoc_uart_phy_uart_clk_txen, basesoc_uart_phy_phase_accumulator_tx} <= (basesoc_uart_phy_phase_accumulator_tx + basesoc_uart_phy_storage);
	end else begin
		{basesoc_uart_phy_uart_clk_txen, basesoc_uart_phy_phase_accumulator_tx} <= 1'd0;
	end
	basesoc_uart_phy_source_valid <= 1'd0;
	basesoc_uart_phy_rx_r <= basesoc_uart_phy_rx;
	if ((~basesoc_uart_phy_rx_busy)) begin
		if (((~basesoc_uart_phy_rx) & basesoc_uart_phy_rx_r)) begin
			basesoc_uart_phy_rx_busy <= 1'd1;
			basesoc_uart_phy_rx_bitcount <= 1'd0;
		end
	end else begin
		if (basesoc_uart_phy_uart_clk_rxen) begin
			basesoc_uart_phy_rx_bitcount <= (basesoc_uart_phy_rx_bitcount + 1'd1);
			if ((basesoc_uart_phy_rx_bitcount == 1'd0)) begin
				if (basesoc_uart_phy_rx) begin
					basesoc_uart_phy_rx_busy <= 1'd0;
				end
			end else begin
				if ((basesoc_uart_phy_rx_bitcount == 4'd9)) begin
					basesoc_uart_phy_rx_busy <= 1'd0;
					if (basesoc_uart_phy_rx) begin
						basesoc_uart_phy_source_payload_data <= basesoc_uart_phy_rx_reg;
						basesoc_uart_phy_source_valid <= 1'd1;
					end
				end else begin
					basesoc_uart_phy_rx_reg <= {basesoc_uart_phy_rx, basesoc_uart_phy_rx_reg[7:1]};
				end
			end
		end
	end
	if (basesoc_uart_phy_rx_busy) begin
		{basesoc_uart_phy_uart_clk_rxen, basesoc_uart_phy_phase_accumulator_rx} <= (basesoc_uart_phy_phase_accumulator_rx + basesoc_uart_phy_storage);
	end else begin
		{basesoc_uart_phy_uart_clk_rxen, basesoc_uart_phy_phase_accumulator_rx} <= 32'd2147483648;
	end
	if (basesoc_uart_tx_clear) begin
		basesoc_uart_tx_pending <= 1'd0;
	end
	basesoc_uart_tx_old_trigger <= basesoc_uart_tx_trigger;
	if (((~basesoc_uart_tx_trigger) & basesoc_uart_tx_old_trigger)) begin
		basesoc_uart_tx_pending <= 1'd1;
	end
	if (basesoc_uart_rx_clear) begin
		basesoc_uart_rx_pending <= 1'd0;
	end
	basesoc_uart_rx_old_trigger <= basesoc_uart_rx_trigger;
	if (((~basesoc_uart_rx_trigger) & basesoc_uart_rx_old_trigger)) begin
		basesoc_uart_rx_pending <= 1'd1;
	end
	if (((basesoc_uart_tx_fifo_syncfifo_we & basesoc_uart_tx_fifo_syncfifo_writable) & (~basesoc_uart_tx_fifo_replace))) begin
		basesoc_uart_tx_fifo_produce <= (basesoc_uart_tx_fifo_produce + 1'd1);
	end
	if (basesoc_uart_tx_fifo_do_read) begin
		basesoc_uart_tx_fifo_consume <= (basesoc_uart_tx_fifo_consume + 1'd1);
	end
	if (((basesoc_uart_tx_fifo_syncfifo_we & basesoc_uart_tx_fifo_syncfifo_writable) & (~basesoc_uart_tx_fifo_replace))) begin
		if ((~basesoc_uart_tx_fifo_do_read)) begin
			basesoc_uart_tx_fifo_level <= (basesoc_uart_tx_fifo_level + 1'd1);
		end
	end else begin
		if (basesoc_uart_tx_fifo_do_read) begin
			basesoc_uart_tx_fifo_level <= (basesoc_uart_tx_fifo_level - 1'd1);
		end
	end
	if (((basesoc_uart_rx_fifo_syncfifo_we & basesoc_uart_rx_fifo_syncfifo_writable) & (~basesoc_uart_rx_fifo_replace))) begin
		basesoc_uart_rx_fifo_produce <= (basesoc_uart_rx_fifo_produce + 1'd1);
	end
	if (basesoc_uart_rx_fifo_do_read) begin
		basesoc_uart_rx_fifo_consume <= (basesoc_uart_rx_fifo_consume + 1'd1);
	end
	if (((basesoc_uart_rx_fifo_syncfifo_we & basesoc_uart_rx_fifo_syncfifo_writable) & (~basesoc_uart_rx_fifo_replace))) begin
		if ((~basesoc_uart_rx_fifo_do_read)) begin
			basesoc_uart_rx_fifo_level <= (basesoc_uart_rx_fifo_level + 1'd1);
		end
	end else begin
		if (basesoc_uart_rx_fifo_do_read) begin
			basesoc_uart_rx_fifo_level <= (basesoc_uart_rx_fifo_level - 1'd1);
		end
	end
	if (basesoc_timer0_en_storage) begin
		if ((basesoc_timer0_value == 1'd0)) begin
			basesoc_timer0_value <= basesoc_timer0_reload_storage;
		end else begin
			basesoc_timer0_value <= (basesoc_timer0_value - 1'd1);
		end
	end else begin
		basesoc_timer0_value <= basesoc_timer0_load_storage;
	end
	if (basesoc_timer0_update_value_re) begin
		basesoc_timer0_value_status <= basesoc_timer0_value;
	end
	if (basesoc_timer0_zero_clear) begin
		basesoc_timer0_zero_pending <= 1'd0;
	end
	basesoc_timer0_zero_old_trigger <= basesoc_timer0_zero_trigger;
	if (((~basesoc_timer0_zero_trigger) & basesoc_timer0_zero_old_trigger)) begin
		basesoc_timer0_zero_pending <= 1'd1;
	end
	if ((dna_cnt < 7'd114)) begin
		dna_cnt <= (dna_cnt + 1'd1);
		if (dna_cnt[0]) begin
			dna_status <= {dna_status, dna_do};
		end
	end
	if ((i1 == 1'd1)) begin
		clk <= 1'd1;
		dqi <= i0;
	end
	if ((i1 == 2'd3)) begin
		i1 <= 1'd0;
		clk <= 1'd0;
		sr <= {sr[27:0], dqi};
	end else begin
		i1 <= (i1 + 1'd1);
	end
	if ((((bus_cyc & bus_stb) & (i1 == 2'd3)) & (counter == 1'd0))) begin
		dq_oe <= 1'd1;
		cs_n <= 1'd0;
		sr[31:0] <= 32'd4294901503;
	end
	if ((counter == 6'd32)) begin
		sr[31:8] <= {bus_adr, {2{1'd0}}};
	end
	if ((counter == 6'd56)) begin
		dq_oe <= 1'd0;
	end
	if ((counter == 8'd128)) begin
		bus_ack <= 1'd1;
		cs_n <= 1'd1;
	end
	if ((counter == 8'd129)) begin
		bus_ack <= 1'd0;
	end
	if ((counter == 8'd133)) begin
	end
	if ((counter == 8'd133)) begin
		counter <= 1'd0;
	end else begin
		if ((counter != 1'd0)) begin
			counter <= (counter + 1'd1);
		end else begin
			if (((bus_cyc & bus_stb) & (i1 == 2'd3))) begin
				counter <= 1'd1;
			end
		end
	end
	ddrphy_phase_sys <= ddrphy_phase_half;
	if ((ddrphy_bitslip_cnt == 1'd0)) begin
		ddrphy_bitslip_inc <= 1'd0;
	end else begin
		ddrphy_bitslip_cnt <= (ddrphy_bitslip_cnt + 1'd1);
		ddrphy_bitslip_inc <= 1'd1;
	end
	ddrphy_record2_wrdata <= ddrphy_dfi_p0_wrdata;
	ddrphy_record2_wrdata_mask <= ddrphy_dfi_p0_wrdata_mask;
	ddrphy_record3_wrdata <= ddrphy_dfi_p1_wrdata;
	ddrphy_record3_wrdata_mask <= ddrphy_dfi_p1_wrdata_mask;
	ddrphy_drive_dq_n1 <= ddrphy_drive_dq_n0;
	ddrphy_wrdata_en_d <= ddrphy_wrdata_en;
	ddrphy_rddata_sr <= {ddrphy_rddata_en, ddrphy_rddata_sr[4:1]};
	if (controllerinjector_inti_p0_rddata_valid) begin
		controllerinjector_phaseinjector0_status <= controllerinjector_inti_p0_rddata;
	end
	if (controllerinjector_inti_p1_rddata_valid) begin
		controllerinjector_phaseinjector1_status <= controllerinjector_inti_p1_rddata;
	end
	controllerinjector_cmd_payload_a <= 11'd1024;
	controllerinjector_cmd_payload_ba <= 1'd0;
	controllerinjector_cmd_payload_cas <= 1'd0;
	controllerinjector_cmd_payload_ras <= 1'd0;
	controllerinjector_cmd_payload_we <= 1'd0;
	controllerinjector_seq_done <= 1'd0;
	if ((controllerinjector_counter == 1'd1)) begin
		controllerinjector_cmd_payload_ras <= 1'd1;
		controllerinjector_cmd_payload_we <= 1'd1;
	end
	if ((controllerinjector_counter == 2'd3)) begin
		controllerinjector_cmd_payload_cas <= 1'd1;
		controllerinjector_cmd_payload_ras <= 1'd1;
	end
	if ((controllerinjector_counter == 4'd14)) begin
		controllerinjector_seq_done <= 1'd1;
	end
	if ((controllerinjector_counter == 4'd14)) begin
		controllerinjector_counter <= 1'd0;
	end else begin
		if ((controllerinjector_counter != 1'd0)) begin
			controllerinjector_counter <= (controllerinjector_counter + 1'd1);
		end else begin
			if (controllerinjector_seq_start) begin
				controllerinjector_counter <= 1'd1;
			end
		end
	end
	if (controllerinjector_wait) begin
		if ((~controllerinjector_done)) begin
			controllerinjector_count <= (controllerinjector_count - 1'd1);
		end
	end else begin
		controllerinjector_count <= 10'd585;
	end
	refresher_state <= refresher_next_state;
	if (controllerinjector_bankmachine0_track_close) begin
		controllerinjector_bankmachine0_has_openrow <= 1'd0;
	end else begin
		if (controllerinjector_bankmachine0_track_open) begin
			controllerinjector_bankmachine0_has_openrow <= 1'd1;
			controllerinjector_bankmachine0_openrow <= controllerinjector_bankmachine0_source_payload_adr[20:8];
		end
	end
	if (((controllerinjector_bankmachine0_syncfifo0_we & controllerinjector_bankmachine0_syncfifo0_writable) & (~controllerinjector_bankmachine0_replace))) begin
		controllerinjector_bankmachine0_produce <= (controllerinjector_bankmachine0_produce + 1'd1);
	end
	if (controllerinjector_bankmachine0_do_read) begin
		controllerinjector_bankmachine0_consume <= (controllerinjector_bankmachine0_consume + 1'd1);
	end
	if (((controllerinjector_bankmachine0_syncfifo0_we & controllerinjector_bankmachine0_syncfifo0_writable) & (~controllerinjector_bankmachine0_replace))) begin
		if ((~controllerinjector_bankmachine0_do_read)) begin
			controllerinjector_bankmachine0_level <= (controllerinjector_bankmachine0_level + 1'd1);
		end
	end else begin
		if (controllerinjector_bankmachine0_do_read) begin
			controllerinjector_bankmachine0_level <= (controllerinjector_bankmachine0_level - 1'd1);
		end
	end
	if (controllerinjector_bankmachine0_wait) begin
		if ((~controllerinjector_bankmachine0_done)) begin
			controllerinjector_bankmachine0_count <= (controllerinjector_bankmachine0_count - 1'd1);
		end
	end else begin
		controllerinjector_bankmachine0_count <= 3'd4;
	end
	bankmachine0_state <= bankmachine0_next_state;
	if (controllerinjector_bankmachine1_track_close) begin
		controllerinjector_bankmachine1_has_openrow <= 1'd0;
	end else begin
		if (controllerinjector_bankmachine1_track_open) begin
			controllerinjector_bankmachine1_has_openrow <= 1'd1;
			controllerinjector_bankmachine1_openrow <= controllerinjector_bankmachine1_source_payload_adr[20:8];
		end
	end
	if (((controllerinjector_bankmachine1_syncfifo1_we & controllerinjector_bankmachine1_syncfifo1_writable) & (~controllerinjector_bankmachine1_replace))) begin
		controllerinjector_bankmachine1_produce <= (controllerinjector_bankmachine1_produce + 1'd1);
	end
	if (controllerinjector_bankmachine1_do_read) begin
		controllerinjector_bankmachine1_consume <= (controllerinjector_bankmachine1_consume + 1'd1);
	end
	if (((controllerinjector_bankmachine1_syncfifo1_we & controllerinjector_bankmachine1_syncfifo1_writable) & (~controllerinjector_bankmachine1_replace))) begin
		if ((~controllerinjector_bankmachine1_do_read)) begin
			controllerinjector_bankmachine1_level <= (controllerinjector_bankmachine1_level + 1'd1);
		end
	end else begin
		if (controllerinjector_bankmachine1_do_read) begin
			controllerinjector_bankmachine1_level <= (controllerinjector_bankmachine1_level - 1'd1);
		end
	end
	if (controllerinjector_bankmachine1_wait) begin
		if ((~controllerinjector_bankmachine1_done)) begin
			controllerinjector_bankmachine1_count <= (controllerinjector_bankmachine1_count - 1'd1);
		end
	end else begin
		controllerinjector_bankmachine1_count <= 3'd4;
	end
	bankmachine1_state <= bankmachine1_next_state;
	if (controllerinjector_bankmachine2_track_close) begin
		controllerinjector_bankmachine2_has_openrow <= 1'd0;
	end else begin
		if (controllerinjector_bankmachine2_track_open) begin
			controllerinjector_bankmachine2_has_openrow <= 1'd1;
			controllerinjector_bankmachine2_openrow <= controllerinjector_bankmachine2_source_payload_adr[20:8];
		end
	end
	if (((controllerinjector_bankmachine2_syncfifo2_we & controllerinjector_bankmachine2_syncfifo2_writable) & (~controllerinjector_bankmachine2_replace))) begin
		controllerinjector_bankmachine2_produce <= (controllerinjector_bankmachine2_produce + 1'd1);
	end
	if (controllerinjector_bankmachine2_do_read) begin
		controllerinjector_bankmachine2_consume <= (controllerinjector_bankmachine2_consume + 1'd1);
	end
	if (((controllerinjector_bankmachine2_syncfifo2_we & controllerinjector_bankmachine2_syncfifo2_writable) & (~controllerinjector_bankmachine2_replace))) begin
		if ((~controllerinjector_bankmachine2_do_read)) begin
			controllerinjector_bankmachine2_level <= (controllerinjector_bankmachine2_level + 1'd1);
		end
	end else begin
		if (controllerinjector_bankmachine2_do_read) begin
			controllerinjector_bankmachine2_level <= (controllerinjector_bankmachine2_level - 1'd1);
		end
	end
	if (controllerinjector_bankmachine2_wait) begin
		if ((~controllerinjector_bankmachine2_done)) begin
			controllerinjector_bankmachine2_count <= (controllerinjector_bankmachine2_count - 1'd1);
		end
	end else begin
		controllerinjector_bankmachine2_count <= 3'd4;
	end
	bankmachine2_state <= bankmachine2_next_state;
	if (controllerinjector_bankmachine3_track_close) begin
		controllerinjector_bankmachine3_has_openrow <= 1'd0;
	end else begin
		if (controllerinjector_bankmachine3_track_open) begin
			controllerinjector_bankmachine3_has_openrow <= 1'd1;
			controllerinjector_bankmachine3_openrow <= controllerinjector_bankmachine3_source_payload_adr[20:8];
		end
	end
	if (((controllerinjector_bankmachine3_syncfifo3_we & controllerinjector_bankmachine3_syncfifo3_writable) & (~controllerinjector_bankmachine3_replace))) begin
		controllerinjector_bankmachine3_produce <= (controllerinjector_bankmachine3_produce + 1'd1);
	end
	if (controllerinjector_bankmachine3_do_read) begin
		controllerinjector_bankmachine3_consume <= (controllerinjector_bankmachine3_consume + 1'd1);
	end
	if (((controllerinjector_bankmachine3_syncfifo3_we & controllerinjector_bankmachine3_syncfifo3_writable) & (~controllerinjector_bankmachine3_replace))) begin
		if ((~controllerinjector_bankmachine3_do_read)) begin
			controllerinjector_bankmachine3_level <= (controllerinjector_bankmachine3_level + 1'd1);
		end
	end else begin
		if (controllerinjector_bankmachine3_do_read) begin
			controllerinjector_bankmachine3_level <= (controllerinjector_bankmachine3_level - 1'd1);
		end
	end
	if (controllerinjector_bankmachine3_wait) begin
		if ((~controllerinjector_bankmachine3_done)) begin
			controllerinjector_bankmachine3_count <= (controllerinjector_bankmachine3_count - 1'd1);
		end
	end else begin
		controllerinjector_bankmachine3_count <= 3'd4;
	end
	bankmachine3_state <= bankmachine3_next_state;
	if (controllerinjector_bankmachine4_track_close) begin
		controllerinjector_bankmachine4_has_openrow <= 1'd0;
	end else begin
		if (controllerinjector_bankmachine4_track_open) begin
			controllerinjector_bankmachine4_has_openrow <= 1'd1;
			controllerinjector_bankmachine4_openrow <= controllerinjector_bankmachine4_source_payload_adr[20:8];
		end
	end
	if (((controllerinjector_bankmachine4_syncfifo4_we & controllerinjector_bankmachine4_syncfifo4_writable) & (~controllerinjector_bankmachine4_replace))) begin
		controllerinjector_bankmachine4_produce <= (controllerinjector_bankmachine4_produce + 1'd1);
	end
	if (controllerinjector_bankmachine4_do_read) begin
		controllerinjector_bankmachine4_consume <= (controllerinjector_bankmachine4_consume + 1'd1);
	end
	if (((controllerinjector_bankmachine4_syncfifo4_we & controllerinjector_bankmachine4_syncfifo4_writable) & (~controllerinjector_bankmachine4_replace))) begin
		if ((~controllerinjector_bankmachine4_do_read)) begin
			controllerinjector_bankmachine4_level <= (controllerinjector_bankmachine4_level + 1'd1);
		end
	end else begin
		if (controllerinjector_bankmachine4_do_read) begin
			controllerinjector_bankmachine4_level <= (controllerinjector_bankmachine4_level - 1'd1);
		end
	end
	if (controllerinjector_bankmachine4_wait) begin
		if ((~controllerinjector_bankmachine4_done)) begin
			controllerinjector_bankmachine4_count <= (controllerinjector_bankmachine4_count - 1'd1);
		end
	end else begin
		controllerinjector_bankmachine4_count <= 3'd4;
	end
	bankmachine4_state <= bankmachine4_next_state;
	if (controllerinjector_bankmachine5_track_close) begin
		controllerinjector_bankmachine5_has_openrow <= 1'd0;
	end else begin
		if (controllerinjector_bankmachine5_track_open) begin
			controllerinjector_bankmachine5_has_openrow <= 1'd1;
			controllerinjector_bankmachine5_openrow <= controllerinjector_bankmachine5_source_payload_adr[20:8];
		end
	end
	if (((controllerinjector_bankmachine5_syncfifo5_we & controllerinjector_bankmachine5_syncfifo5_writable) & (~controllerinjector_bankmachine5_replace))) begin
		controllerinjector_bankmachine5_produce <= (controllerinjector_bankmachine5_produce + 1'd1);
	end
	if (controllerinjector_bankmachine5_do_read) begin
		controllerinjector_bankmachine5_consume <= (controllerinjector_bankmachine5_consume + 1'd1);
	end
	if (((controllerinjector_bankmachine5_syncfifo5_we & controllerinjector_bankmachine5_syncfifo5_writable) & (~controllerinjector_bankmachine5_replace))) begin
		if ((~controllerinjector_bankmachine5_do_read)) begin
			controllerinjector_bankmachine5_level <= (controllerinjector_bankmachine5_level + 1'd1);
		end
	end else begin
		if (controllerinjector_bankmachine5_do_read) begin
			controllerinjector_bankmachine5_level <= (controllerinjector_bankmachine5_level - 1'd1);
		end
	end
	if (controllerinjector_bankmachine5_wait) begin
		if ((~controllerinjector_bankmachine5_done)) begin
			controllerinjector_bankmachine5_count <= (controllerinjector_bankmachine5_count - 1'd1);
		end
	end else begin
		controllerinjector_bankmachine5_count <= 3'd4;
	end
	bankmachine5_state <= bankmachine5_next_state;
	if (controllerinjector_bankmachine6_track_close) begin
		controllerinjector_bankmachine6_has_openrow <= 1'd0;
	end else begin
		if (controllerinjector_bankmachine6_track_open) begin
			controllerinjector_bankmachine6_has_openrow <= 1'd1;
			controllerinjector_bankmachine6_openrow <= controllerinjector_bankmachine6_source_payload_adr[20:8];
		end
	end
	if (((controllerinjector_bankmachine6_syncfifo6_we & controllerinjector_bankmachine6_syncfifo6_writable) & (~controllerinjector_bankmachine6_replace))) begin
		controllerinjector_bankmachine6_produce <= (controllerinjector_bankmachine6_produce + 1'd1);
	end
	if (controllerinjector_bankmachine6_do_read) begin
		controllerinjector_bankmachine6_consume <= (controllerinjector_bankmachine6_consume + 1'd1);
	end
	if (((controllerinjector_bankmachine6_syncfifo6_we & controllerinjector_bankmachine6_syncfifo6_writable) & (~controllerinjector_bankmachine6_replace))) begin
		if ((~controllerinjector_bankmachine6_do_read)) begin
			controllerinjector_bankmachine6_level <= (controllerinjector_bankmachine6_level + 1'd1);
		end
	end else begin
		if (controllerinjector_bankmachine6_do_read) begin
			controllerinjector_bankmachine6_level <= (controllerinjector_bankmachine6_level - 1'd1);
		end
	end
	if (controllerinjector_bankmachine6_wait) begin
		if ((~controllerinjector_bankmachine6_done)) begin
			controllerinjector_bankmachine6_count <= (controllerinjector_bankmachine6_count - 1'd1);
		end
	end else begin
		controllerinjector_bankmachine6_count <= 3'd4;
	end
	bankmachine6_state <= bankmachine6_next_state;
	if (controllerinjector_bankmachine7_track_close) begin
		controllerinjector_bankmachine7_has_openrow <= 1'd0;
	end else begin
		if (controllerinjector_bankmachine7_track_open) begin
			controllerinjector_bankmachine7_has_openrow <= 1'd1;
			controllerinjector_bankmachine7_openrow <= controllerinjector_bankmachine7_source_payload_adr[20:8];
		end
	end
	if (((controllerinjector_bankmachine7_syncfifo7_we & controllerinjector_bankmachine7_syncfifo7_writable) & (~controllerinjector_bankmachine7_replace))) begin
		controllerinjector_bankmachine7_produce <= (controllerinjector_bankmachine7_produce + 1'd1);
	end
	if (controllerinjector_bankmachine7_do_read) begin
		controllerinjector_bankmachine7_consume <= (controllerinjector_bankmachine7_consume + 1'd1);
	end
	if (((controllerinjector_bankmachine7_syncfifo7_we & controllerinjector_bankmachine7_syncfifo7_writable) & (~controllerinjector_bankmachine7_replace))) begin
		if ((~controllerinjector_bankmachine7_do_read)) begin
			controllerinjector_bankmachine7_level <= (controllerinjector_bankmachine7_level + 1'd1);
		end
	end else begin
		if (controllerinjector_bankmachine7_do_read) begin
			controllerinjector_bankmachine7_level <= (controllerinjector_bankmachine7_level - 1'd1);
		end
	end
	if (controllerinjector_bankmachine7_wait) begin
		if ((~controllerinjector_bankmachine7_done)) begin
			controllerinjector_bankmachine7_count <= (controllerinjector_bankmachine7_count - 1'd1);
		end
	end else begin
		controllerinjector_bankmachine7_count <= 3'd4;
	end
	bankmachine7_state <= bankmachine7_next_state;
	if ((~controllerinjector_en0)) begin
		controllerinjector_time0 <= 5'd31;
	end else begin
		if ((~controllerinjector_max_time0)) begin
			controllerinjector_time0 <= (controllerinjector_time0 - 1'd1);
		end
	end
	if ((~controllerinjector_en1)) begin
		controllerinjector_time1 <= 4'd15;
	end else begin
		if ((~controllerinjector_max_time1)) begin
			controllerinjector_time1 <= (controllerinjector_time1 - 1'd1);
		end
	end
	if (controllerinjector_choose_cmd_ce) begin
		case (controllerinjector_choose_cmd_grant)
			1'd0: begin
				if (controllerinjector_choose_cmd_request[1]) begin
					controllerinjector_choose_cmd_grant <= 1'd1;
				end else begin
					if (controllerinjector_choose_cmd_request[2]) begin
						controllerinjector_choose_cmd_grant <= 2'd2;
					end else begin
						if (controllerinjector_choose_cmd_request[3]) begin
							controllerinjector_choose_cmd_grant <= 2'd3;
						end else begin
							if (controllerinjector_choose_cmd_request[4]) begin
								controllerinjector_choose_cmd_grant <= 3'd4;
							end else begin
								if (controllerinjector_choose_cmd_request[5]) begin
									controllerinjector_choose_cmd_grant <= 3'd5;
								end else begin
									if (controllerinjector_choose_cmd_request[6]) begin
										controllerinjector_choose_cmd_grant <= 3'd6;
									end else begin
										if (controllerinjector_choose_cmd_request[7]) begin
											controllerinjector_choose_cmd_grant <= 3'd7;
										end
									end
								end
							end
						end
					end
				end
			end
			1'd1: begin
				if (controllerinjector_choose_cmd_request[2]) begin
					controllerinjector_choose_cmd_grant <= 2'd2;
				end else begin
					if (controllerinjector_choose_cmd_request[3]) begin
						controllerinjector_choose_cmd_grant <= 2'd3;
					end else begin
						if (controllerinjector_choose_cmd_request[4]) begin
							controllerinjector_choose_cmd_grant <= 3'd4;
						end else begin
							if (controllerinjector_choose_cmd_request[5]) begin
								controllerinjector_choose_cmd_grant <= 3'd5;
							end else begin
								if (controllerinjector_choose_cmd_request[6]) begin
									controllerinjector_choose_cmd_grant <= 3'd6;
								end else begin
									if (controllerinjector_choose_cmd_request[7]) begin
										controllerinjector_choose_cmd_grant <= 3'd7;
									end else begin
										if (controllerinjector_choose_cmd_request[0]) begin
											controllerinjector_choose_cmd_grant <= 1'd0;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd2: begin
				if (controllerinjector_choose_cmd_request[3]) begin
					controllerinjector_choose_cmd_grant <= 2'd3;
				end else begin
					if (controllerinjector_choose_cmd_request[4]) begin
						controllerinjector_choose_cmd_grant <= 3'd4;
					end else begin
						if (controllerinjector_choose_cmd_request[5]) begin
							controllerinjector_choose_cmd_grant <= 3'd5;
						end else begin
							if (controllerinjector_choose_cmd_request[6]) begin
								controllerinjector_choose_cmd_grant <= 3'd6;
							end else begin
								if (controllerinjector_choose_cmd_request[7]) begin
									controllerinjector_choose_cmd_grant <= 3'd7;
								end else begin
									if (controllerinjector_choose_cmd_request[0]) begin
										controllerinjector_choose_cmd_grant <= 1'd0;
									end else begin
										if (controllerinjector_choose_cmd_request[1]) begin
											controllerinjector_choose_cmd_grant <= 1'd1;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd3: begin
				if (controllerinjector_choose_cmd_request[4]) begin
					controllerinjector_choose_cmd_grant <= 3'd4;
				end else begin
					if (controllerinjector_choose_cmd_request[5]) begin
						controllerinjector_choose_cmd_grant <= 3'd5;
					end else begin
						if (controllerinjector_choose_cmd_request[6]) begin
							controllerinjector_choose_cmd_grant <= 3'd6;
						end else begin
							if (controllerinjector_choose_cmd_request[7]) begin
								controllerinjector_choose_cmd_grant <= 3'd7;
							end else begin
								if (controllerinjector_choose_cmd_request[0]) begin
									controllerinjector_choose_cmd_grant <= 1'd0;
								end else begin
									if (controllerinjector_choose_cmd_request[1]) begin
										controllerinjector_choose_cmd_grant <= 1'd1;
									end else begin
										if (controllerinjector_choose_cmd_request[2]) begin
											controllerinjector_choose_cmd_grant <= 2'd2;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd4: begin
				if (controllerinjector_choose_cmd_request[5]) begin
					controllerinjector_choose_cmd_grant <= 3'd5;
				end else begin
					if (controllerinjector_choose_cmd_request[6]) begin
						controllerinjector_choose_cmd_grant <= 3'd6;
					end else begin
						if (controllerinjector_choose_cmd_request[7]) begin
							controllerinjector_choose_cmd_grant <= 3'd7;
						end else begin
							if (controllerinjector_choose_cmd_request[0]) begin
								controllerinjector_choose_cmd_grant <= 1'd0;
							end else begin
								if (controllerinjector_choose_cmd_request[1]) begin
									controllerinjector_choose_cmd_grant <= 1'd1;
								end else begin
									if (controllerinjector_choose_cmd_request[2]) begin
										controllerinjector_choose_cmd_grant <= 2'd2;
									end else begin
										if (controllerinjector_choose_cmd_request[3]) begin
											controllerinjector_choose_cmd_grant <= 2'd3;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd5: begin
				if (controllerinjector_choose_cmd_request[6]) begin
					controllerinjector_choose_cmd_grant <= 3'd6;
				end else begin
					if (controllerinjector_choose_cmd_request[7]) begin
						controllerinjector_choose_cmd_grant <= 3'd7;
					end else begin
						if (controllerinjector_choose_cmd_request[0]) begin
							controllerinjector_choose_cmd_grant <= 1'd0;
						end else begin
							if (controllerinjector_choose_cmd_request[1]) begin
								controllerinjector_choose_cmd_grant <= 1'd1;
							end else begin
								if (controllerinjector_choose_cmd_request[2]) begin
									controllerinjector_choose_cmd_grant <= 2'd2;
								end else begin
									if (controllerinjector_choose_cmd_request[3]) begin
										controllerinjector_choose_cmd_grant <= 2'd3;
									end else begin
										if (controllerinjector_choose_cmd_request[4]) begin
											controllerinjector_choose_cmd_grant <= 3'd4;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd6: begin
				if (controllerinjector_choose_cmd_request[7]) begin
					controllerinjector_choose_cmd_grant <= 3'd7;
				end else begin
					if (controllerinjector_choose_cmd_request[0]) begin
						controllerinjector_choose_cmd_grant <= 1'd0;
					end else begin
						if (controllerinjector_choose_cmd_request[1]) begin
							controllerinjector_choose_cmd_grant <= 1'd1;
						end else begin
							if (controllerinjector_choose_cmd_request[2]) begin
								controllerinjector_choose_cmd_grant <= 2'd2;
							end else begin
								if (controllerinjector_choose_cmd_request[3]) begin
									controllerinjector_choose_cmd_grant <= 2'd3;
								end else begin
									if (controllerinjector_choose_cmd_request[4]) begin
										controllerinjector_choose_cmd_grant <= 3'd4;
									end else begin
										if (controllerinjector_choose_cmd_request[5]) begin
											controllerinjector_choose_cmd_grant <= 3'd5;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd7: begin
				if (controllerinjector_choose_cmd_request[0]) begin
					controllerinjector_choose_cmd_grant <= 1'd0;
				end else begin
					if (controllerinjector_choose_cmd_request[1]) begin
						controllerinjector_choose_cmd_grant <= 1'd1;
					end else begin
						if (controllerinjector_choose_cmd_request[2]) begin
							controllerinjector_choose_cmd_grant <= 2'd2;
						end else begin
							if (controllerinjector_choose_cmd_request[3]) begin
								controllerinjector_choose_cmd_grant <= 2'd3;
							end else begin
								if (controllerinjector_choose_cmd_request[4]) begin
									controllerinjector_choose_cmd_grant <= 3'd4;
								end else begin
									if (controllerinjector_choose_cmd_request[5]) begin
										controllerinjector_choose_cmd_grant <= 3'd5;
									end else begin
										if (controllerinjector_choose_cmd_request[6]) begin
											controllerinjector_choose_cmd_grant <= 3'd6;
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
	if (controllerinjector_choose_req_ce) begin
		case (controllerinjector_choose_req_grant)
			1'd0: begin
				if (controllerinjector_choose_req_request[1]) begin
					controllerinjector_choose_req_grant <= 1'd1;
				end else begin
					if (controllerinjector_choose_req_request[2]) begin
						controllerinjector_choose_req_grant <= 2'd2;
					end else begin
						if (controllerinjector_choose_req_request[3]) begin
							controllerinjector_choose_req_grant <= 2'd3;
						end else begin
							if (controllerinjector_choose_req_request[4]) begin
								controllerinjector_choose_req_grant <= 3'd4;
							end else begin
								if (controllerinjector_choose_req_request[5]) begin
									controllerinjector_choose_req_grant <= 3'd5;
								end else begin
									if (controllerinjector_choose_req_request[6]) begin
										controllerinjector_choose_req_grant <= 3'd6;
									end else begin
										if (controllerinjector_choose_req_request[7]) begin
											controllerinjector_choose_req_grant <= 3'd7;
										end
									end
								end
							end
						end
					end
				end
			end
			1'd1: begin
				if (controllerinjector_choose_req_request[2]) begin
					controllerinjector_choose_req_grant <= 2'd2;
				end else begin
					if (controllerinjector_choose_req_request[3]) begin
						controllerinjector_choose_req_grant <= 2'd3;
					end else begin
						if (controllerinjector_choose_req_request[4]) begin
							controllerinjector_choose_req_grant <= 3'd4;
						end else begin
							if (controllerinjector_choose_req_request[5]) begin
								controllerinjector_choose_req_grant <= 3'd5;
							end else begin
								if (controllerinjector_choose_req_request[6]) begin
									controllerinjector_choose_req_grant <= 3'd6;
								end else begin
									if (controllerinjector_choose_req_request[7]) begin
										controllerinjector_choose_req_grant <= 3'd7;
									end else begin
										if (controllerinjector_choose_req_request[0]) begin
											controllerinjector_choose_req_grant <= 1'd0;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd2: begin
				if (controllerinjector_choose_req_request[3]) begin
					controllerinjector_choose_req_grant <= 2'd3;
				end else begin
					if (controllerinjector_choose_req_request[4]) begin
						controllerinjector_choose_req_grant <= 3'd4;
					end else begin
						if (controllerinjector_choose_req_request[5]) begin
							controllerinjector_choose_req_grant <= 3'd5;
						end else begin
							if (controllerinjector_choose_req_request[6]) begin
								controllerinjector_choose_req_grant <= 3'd6;
							end else begin
								if (controllerinjector_choose_req_request[7]) begin
									controllerinjector_choose_req_grant <= 3'd7;
								end else begin
									if (controllerinjector_choose_req_request[0]) begin
										controllerinjector_choose_req_grant <= 1'd0;
									end else begin
										if (controllerinjector_choose_req_request[1]) begin
											controllerinjector_choose_req_grant <= 1'd1;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd3: begin
				if (controllerinjector_choose_req_request[4]) begin
					controllerinjector_choose_req_grant <= 3'd4;
				end else begin
					if (controllerinjector_choose_req_request[5]) begin
						controllerinjector_choose_req_grant <= 3'd5;
					end else begin
						if (controllerinjector_choose_req_request[6]) begin
							controllerinjector_choose_req_grant <= 3'd6;
						end else begin
							if (controllerinjector_choose_req_request[7]) begin
								controllerinjector_choose_req_grant <= 3'd7;
							end else begin
								if (controllerinjector_choose_req_request[0]) begin
									controllerinjector_choose_req_grant <= 1'd0;
								end else begin
									if (controllerinjector_choose_req_request[1]) begin
										controllerinjector_choose_req_grant <= 1'd1;
									end else begin
										if (controllerinjector_choose_req_request[2]) begin
											controllerinjector_choose_req_grant <= 2'd2;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd4: begin
				if (controllerinjector_choose_req_request[5]) begin
					controllerinjector_choose_req_grant <= 3'd5;
				end else begin
					if (controllerinjector_choose_req_request[6]) begin
						controllerinjector_choose_req_grant <= 3'd6;
					end else begin
						if (controllerinjector_choose_req_request[7]) begin
							controllerinjector_choose_req_grant <= 3'd7;
						end else begin
							if (controllerinjector_choose_req_request[0]) begin
								controllerinjector_choose_req_grant <= 1'd0;
							end else begin
								if (controllerinjector_choose_req_request[1]) begin
									controllerinjector_choose_req_grant <= 1'd1;
								end else begin
									if (controllerinjector_choose_req_request[2]) begin
										controllerinjector_choose_req_grant <= 2'd2;
									end else begin
										if (controllerinjector_choose_req_request[3]) begin
											controllerinjector_choose_req_grant <= 2'd3;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd5: begin
				if (controllerinjector_choose_req_request[6]) begin
					controllerinjector_choose_req_grant <= 3'd6;
				end else begin
					if (controllerinjector_choose_req_request[7]) begin
						controllerinjector_choose_req_grant <= 3'd7;
					end else begin
						if (controllerinjector_choose_req_request[0]) begin
							controllerinjector_choose_req_grant <= 1'd0;
						end else begin
							if (controllerinjector_choose_req_request[1]) begin
								controllerinjector_choose_req_grant <= 1'd1;
							end else begin
								if (controllerinjector_choose_req_request[2]) begin
									controllerinjector_choose_req_grant <= 2'd2;
								end else begin
									if (controllerinjector_choose_req_request[3]) begin
										controllerinjector_choose_req_grant <= 2'd3;
									end else begin
										if (controllerinjector_choose_req_request[4]) begin
											controllerinjector_choose_req_grant <= 3'd4;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd6: begin
				if (controllerinjector_choose_req_request[7]) begin
					controllerinjector_choose_req_grant <= 3'd7;
				end else begin
					if (controllerinjector_choose_req_request[0]) begin
						controllerinjector_choose_req_grant <= 1'd0;
					end else begin
						if (controllerinjector_choose_req_request[1]) begin
							controllerinjector_choose_req_grant <= 1'd1;
						end else begin
							if (controllerinjector_choose_req_request[2]) begin
								controllerinjector_choose_req_grant <= 2'd2;
							end else begin
								if (controllerinjector_choose_req_request[3]) begin
									controllerinjector_choose_req_grant <= 2'd3;
								end else begin
									if (controllerinjector_choose_req_request[4]) begin
										controllerinjector_choose_req_grant <= 3'd4;
									end else begin
										if (controllerinjector_choose_req_request[5]) begin
											controllerinjector_choose_req_grant <= 3'd5;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd7: begin
				if (controllerinjector_choose_req_request[0]) begin
					controllerinjector_choose_req_grant <= 1'd0;
				end else begin
					if (controllerinjector_choose_req_request[1]) begin
						controllerinjector_choose_req_grant <= 1'd1;
					end else begin
						if (controllerinjector_choose_req_request[2]) begin
							controllerinjector_choose_req_grant <= 2'd2;
						end else begin
							if (controllerinjector_choose_req_request[3]) begin
								controllerinjector_choose_req_grant <= 2'd3;
							end else begin
								if (controllerinjector_choose_req_request[4]) begin
									controllerinjector_choose_req_grant <= 3'd4;
								end else begin
									if (controllerinjector_choose_req_request[5]) begin
										controllerinjector_choose_req_grant <= 3'd5;
									end else begin
										if (controllerinjector_choose_req_request[6]) begin
											controllerinjector_choose_req_grant <= 3'd6;
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
	controllerinjector_dfi_p0_address <= array_muxed7;
	controllerinjector_dfi_p0_bank <= array_muxed8;
	controllerinjector_dfi_p0_cas_n <= (~array_muxed9);
	controllerinjector_dfi_p0_ras_n <= (~array_muxed10);
	controllerinjector_dfi_p0_we_n <= (~array_muxed11);
	controllerinjector_dfi_p0_rddata_en <= array_muxed12;
	controllerinjector_dfi_p0_wrdata_en <= array_muxed13;
	controllerinjector_dfi_p1_address <= array_muxed14;
	controllerinjector_dfi_p1_bank <= array_muxed15;
	controllerinjector_dfi_p1_cas_n <= (~array_muxed16);
	controllerinjector_dfi_p1_ras_n <= (~array_muxed17);
	controllerinjector_dfi_p1_we_n <= (~array_muxed18);
	controllerinjector_dfi_p1_rddata_en <= array_muxed19;
	controllerinjector_dfi_p1_wrdata_en <= array_muxed20;
	multiplexer_state <= multiplexer_next_state;
	controllerinjector_bandwidth_cmd_valid <= controllerinjector_choose_req_cmd_valid;
	controllerinjector_bandwidth_cmd_ready <= controllerinjector_choose_req_cmd_ready;
	controllerinjector_bandwidth_cmd_is_read <= controllerinjector_choose_req_cmd_payload_is_read;
	controllerinjector_bandwidth_cmd_is_write <= controllerinjector_choose_req_cmd_payload_is_write;
	{controllerinjector_bandwidth_period, controllerinjector_bandwidth_counter} <= (controllerinjector_bandwidth_counter + 1'd1);
	if (controllerinjector_bandwidth_period) begin
		controllerinjector_bandwidth_nreads_r <= controllerinjector_bandwidth_nreads;
		controllerinjector_bandwidth_nwrites_r <= controllerinjector_bandwidth_nwrites;
		controllerinjector_bandwidth_nreads <= 1'd0;
		controllerinjector_bandwidth_nwrites <= 1'd0;
	end else begin
		if ((controllerinjector_bandwidth_cmd_valid & controllerinjector_bandwidth_cmd_ready)) begin
			if (controllerinjector_bandwidth_cmd_is_read) begin
				controllerinjector_bandwidth_nreads <= (controllerinjector_bandwidth_nreads + 1'd1);
			end
			if (controllerinjector_bandwidth_cmd_is_write) begin
				controllerinjector_bandwidth_nwrites <= (controllerinjector_bandwidth_nwrites + 1'd1);
			end
		end
	end
	if (controllerinjector_bandwidth_update_re) begin
		controllerinjector_bandwidth_nreads_status <= controllerinjector_bandwidth_nreads_r;
		controllerinjector_bandwidth_nwrites_status <= controllerinjector_bandwidth_nwrites_r;
	end
	new_master_wdata_ready <= ((((((((1'd0 | ((roundrobin0_grant == 1'd0) & controllerinjector_interface_bank0_wdata_ready)) | ((roundrobin1_grant == 1'd0) & controllerinjector_interface_bank1_wdata_ready)) | ((roundrobin2_grant == 1'd0) & controllerinjector_interface_bank2_wdata_ready)) | ((roundrobin3_grant == 1'd0) & controllerinjector_interface_bank3_wdata_ready)) | ((roundrobin4_grant == 1'd0) & controllerinjector_interface_bank4_wdata_ready)) | ((roundrobin5_grant == 1'd0) & controllerinjector_interface_bank5_wdata_ready)) | ((roundrobin6_grant == 1'd0) & controllerinjector_interface_bank6_wdata_ready)) | ((roundrobin7_grant == 1'd0) & controllerinjector_interface_bank7_wdata_ready));
	new_master_rdata_valid0 <= ((((((((1'd0 | ((roundrobin0_grant == 1'd0) & controllerinjector_interface_bank0_rdata_valid)) | ((roundrobin1_grant == 1'd0) & controllerinjector_interface_bank1_rdata_valid)) | ((roundrobin2_grant == 1'd0) & controllerinjector_interface_bank2_rdata_valid)) | ((roundrobin3_grant == 1'd0) & controllerinjector_interface_bank3_rdata_valid)) | ((roundrobin4_grant == 1'd0) & controllerinjector_interface_bank4_rdata_valid)) | ((roundrobin5_grant == 1'd0) & controllerinjector_interface_bank5_rdata_valid)) | ((roundrobin6_grant == 1'd0) & controllerinjector_interface_bank6_rdata_valid)) | ((roundrobin7_grant == 1'd0) & controllerinjector_interface_bank7_rdata_valid));
	new_master_rdata_valid1 <= new_master_rdata_valid0;
	new_master_rdata_valid2 <= new_master_rdata_valid1;
	new_master_rdata_valid3 <= new_master_rdata_valid2;
	new_master_rdata_valid4 <= new_master_rdata_valid3;
	new_master_rdata_valid5 <= new_master_rdata_valid4;
	adr_offset_r <= interface0_wb_sdram_adr[0];
	cache_state <= cache_next_state;
	litedramwishbonebridge_state <= litedramwishbonebridge_next_state;
	case (basesoc_grant)
		1'd0: begin
			if ((~basesoc_request[0])) begin
				if (basesoc_request[1]) begin
					basesoc_grant <= 1'd1;
				end
			end
		end
		1'd1: begin
			if ((~basesoc_request[1])) begin
				if (basesoc_request[0]) begin
					basesoc_grant <= 1'd0;
				end
			end
		end
	endcase
	basesoc_slave_sel_r <= basesoc_slave_sel;
	basesoc_mmap_sel_r <= basesoc_mmap_sel;
	basesoc_interface1_dat_r <= 1'd0;
	if (basesoc_csrbank0_sel) begin
		case (basesoc_interface1_adr[5:0])
			1'd0: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_dna_id7_w;
			end
			1'd1: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_dna_id6_w;
			end
			2'd2: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_dna_id5_w;
			end
			2'd3: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_dna_id4_w;
			end
			3'd4: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_dna_id3_w;
			end
			3'd5: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_dna_id2_w;
			end
			3'd6: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_dna_id1_w;
			end
			3'd7: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_dna_id0_w;
			end
			4'd8: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_git_commit19_w;
			end
			4'd9: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_git_commit18_w;
			end
			4'd10: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_git_commit17_w;
			end
			4'd11: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_git_commit16_w;
			end
			4'd12: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_git_commit15_w;
			end
			4'd13: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_git_commit14_w;
			end
			4'd14: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_git_commit13_w;
			end
			4'd15: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_git_commit12_w;
			end
			5'd16: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_git_commit11_w;
			end
			5'd17: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_git_commit10_w;
			end
			5'd18: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_git_commit9_w;
			end
			5'd19: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_git_commit8_w;
			end
			5'd20: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_git_commit7_w;
			end
			5'd21: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_git_commit6_w;
			end
			5'd22: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_git_commit5_w;
			end
			5'd23: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_git_commit4_w;
			end
			5'd24: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_git_commit3_w;
			end
			5'd25: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_git_commit2_w;
			end
			5'd26: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_git_commit1_w;
			end
			5'd27: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_git_commit0_w;
			end
			5'd28: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_platform_platform7_w;
			end
			5'd29: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_platform_platform6_w;
			end
			5'd30: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_platform_platform5_w;
			end
			5'd31: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_platform_platform4_w;
			end
			6'd32: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_platform_platform3_w;
			end
			6'd33: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_platform_platform2_w;
			end
			6'd34: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_platform_platform1_w;
			end
			6'd35: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_platform_platform0_w;
			end
			6'd36: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_platform_target7_w;
			end
			6'd37: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_platform_target6_w;
			end
			6'd38: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_platform_target5_w;
			end
			6'd39: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_platform_target4_w;
			end
			6'd40: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_platform_target3_w;
			end
			6'd41: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_platform_target2_w;
			end
			6'd42: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_platform_target1_w;
			end
			6'd43: begin
				basesoc_interface1_dat_r <= basesoc_csrbank0_platform_target0_w;
			end
		endcase
	end
	basesoc_interface2_dat_r <= 1'd0;
	if (basesoc_csrbank1_sel) begin
		case (basesoc_interface2_adr[5:0])
			1'd0: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_dfii_control0_w;
			end
			1'd1: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_dfii_pi0_command0_w;
			end
			2'd2: begin
				basesoc_interface2_dat_r <= controllerinjector_phaseinjector0_command_issue_w;
			end
			2'd3: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_dfii_pi0_address1_w;
			end
			3'd4: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_dfii_pi0_address0_w;
			end
			3'd5: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_dfii_pi0_baddress0_w;
			end
			3'd6: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_dfii_pi0_wrdata3_w;
			end
			3'd7: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_dfii_pi0_wrdata2_w;
			end
			4'd8: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_dfii_pi0_wrdata1_w;
			end
			4'd9: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_dfii_pi0_wrdata0_w;
			end
			4'd10: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_dfii_pi0_rddata3_w;
			end
			4'd11: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_dfii_pi0_rddata2_w;
			end
			4'd12: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_dfii_pi0_rddata1_w;
			end
			4'd13: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_dfii_pi0_rddata0_w;
			end
			4'd14: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_dfii_pi1_command0_w;
			end
			4'd15: begin
				basesoc_interface2_dat_r <= controllerinjector_phaseinjector1_command_issue_w;
			end
			5'd16: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_dfii_pi1_address1_w;
			end
			5'd17: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_dfii_pi1_address0_w;
			end
			5'd18: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_dfii_pi1_baddress0_w;
			end
			5'd19: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_dfii_pi1_wrdata3_w;
			end
			5'd20: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_dfii_pi1_wrdata2_w;
			end
			5'd21: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_dfii_pi1_wrdata1_w;
			end
			5'd22: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_dfii_pi1_wrdata0_w;
			end
			5'd23: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_dfii_pi1_rddata3_w;
			end
			5'd24: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_dfii_pi1_rddata2_w;
			end
			5'd25: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_dfii_pi1_rddata1_w;
			end
			5'd26: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_dfii_pi1_rddata0_w;
			end
			5'd27: begin
				basesoc_interface2_dat_r <= controllerinjector_bandwidth_update_w;
			end
			5'd28: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_controller_bandwidth_nreads2_w;
			end
			5'd29: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_controller_bandwidth_nreads1_w;
			end
			5'd30: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_controller_bandwidth_nreads0_w;
			end
			5'd31: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_controller_bandwidth_nwrites2_w;
			end
			6'd32: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_controller_bandwidth_nwrites1_w;
			end
			6'd33: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_controller_bandwidth_nwrites0_w;
			end
			6'd34: begin
				basesoc_interface2_dat_r <= basesoc_csrbank1_controller_bandwidth_data_width_w;
			end
		endcase
	end
	if (basesoc_csrbank1_dfii_control0_re) begin
		controllerinjector_storage_full[3:0] <= basesoc_csrbank1_dfii_control0_r;
	end
	controllerinjector_re <= basesoc_csrbank1_dfii_control0_re;
	if (basesoc_csrbank1_dfii_pi0_command0_re) begin
		controllerinjector_phaseinjector0_command_storage_full[5:0] <= basesoc_csrbank1_dfii_pi0_command0_r;
	end
	controllerinjector_phaseinjector0_command_re <= basesoc_csrbank1_dfii_pi0_command0_re;
	if (basesoc_csrbank1_dfii_pi0_address1_re) begin
		controllerinjector_phaseinjector0_address_storage_full[12:8] <= basesoc_csrbank1_dfii_pi0_address1_r;
	end
	if (basesoc_csrbank1_dfii_pi0_address0_re) begin
		controllerinjector_phaseinjector0_address_storage_full[7:0] <= basesoc_csrbank1_dfii_pi0_address0_r;
	end
	controllerinjector_phaseinjector0_address_re <= basesoc_csrbank1_dfii_pi0_address0_re;
	if (basesoc_csrbank1_dfii_pi0_baddress0_re) begin
		controllerinjector_phaseinjector0_baddress_storage_full[2:0] <= basesoc_csrbank1_dfii_pi0_baddress0_r;
	end
	controllerinjector_phaseinjector0_baddress_re <= basesoc_csrbank1_dfii_pi0_baddress0_re;
	if (basesoc_csrbank1_dfii_pi0_wrdata3_re) begin
		controllerinjector_phaseinjector0_wrdata_storage_full[31:24] <= basesoc_csrbank1_dfii_pi0_wrdata3_r;
	end
	if (basesoc_csrbank1_dfii_pi0_wrdata2_re) begin
		controllerinjector_phaseinjector0_wrdata_storage_full[23:16] <= basesoc_csrbank1_dfii_pi0_wrdata2_r;
	end
	if (basesoc_csrbank1_dfii_pi0_wrdata1_re) begin
		controllerinjector_phaseinjector0_wrdata_storage_full[15:8] <= basesoc_csrbank1_dfii_pi0_wrdata1_r;
	end
	if (basesoc_csrbank1_dfii_pi0_wrdata0_re) begin
		controllerinjector_phaseinjector0_wrdata_storage_full[7:0] <= basesoc_csrbank1_dfii_pi0_wrdata0_r;
	end
	controllerinjector_phaseinjector0_wrdata_re <= basesoc_csrbank1_dfii_pi0_wrdata0_re;
	if (basesoc_csrbank1_dfii_pi1_command0_re) begin
		controllerinjector_phaseinjector1_command_storage_full[5:0] <= basesoc_csrbank1_dfii_pi1_command0_r;
	end
	controllerinjector_phaseinjector1_command_re <= basesoc_csrbank1_dfii_pi1_command0_re;
	if (basesoc_csrbank1_dfii_pi1_address1_re) begin
		controllerinjector_phaseinjector1_address_storage_full[12:8] <= basesoc_csrbank1_dfii_pi1_address1_r;
	end
	if (basesoc_csrbank1_dfii_pi1_address0_re) begin
		controllerinjector_phaseinjector1_address_storage_full[7:0] <= basesoc_csrbank1_dfii_pi1_address0_r;
	end
	controllerinjector_phaseinjector1_address_re <= basesoc_csrbank1_dfii_pi1_address0_re;
	if (basesoc_csrbank1_dfii_pi1_baddress0_re) begin
		controllerinjector_phaseinjector1_baddress_storage_full[2:0] <= basesoc_csrbank1_dfii_pi1_baddress0_r;
	end
	controllerinjector_phaseinjector1_baddress_re <= basesoc_csrbank1_dfii_pi1_baddress0_re;
	if (basesoc_csrbank1_dfii_pi1_wrdata3_re) begin
		controllerinjector_phaseinjector1_wrdata_storage_full[31:24] <= basesoc_csrbank1_dfii_pi1_wrdata3_r;
	end
	if (basesoc_csrbank1_dfii_pi1_wrdata2_re) begin
		controllerinjector_phaseinjector1_wrdata_storage_full[23:16] <= basesoc_csrbank1_dfii_pi1_wrdata2_r;
	end
	if (basesoc_csrbank1_dfii_pi1_wrdata1_re) begin
		controllerinjector_phaseinjector1_wrdata_storage_full[15:8] <= basesoc_csrbank1_dfii_pi1_wrdata1_r;
	end
	if (basesoc_csrbank1_dfii_pi1_wrdata0_re) begin
		controllerinjector_phaseinjector1_wrdata_storage_full[7:0] <= basesoc_csrbank1_dfii_pi1_wrdata0_r;
	end
	controllerinjector_phaseinjector1_wrdata_re <= basesoc_csrbank1_dfii_pi1_wrdata0_re;
	basesoc_interface3_dat_r <= 1'd0;
	if (basesoc_csrbank2_sel) begin
		case (basesoc_interface3_adr[1:0])
			1'd0: begin
				basesoc_interface3_dat_r <= basesoc_csrbank2_bitbang0_w;
			end
			1'd1: begin
				basesoc_interface3_dat_r <= basesoc_csrbank2_miso_w;
			end
			2'd2: begin
				basesoc_interface3_dat_r <= basesoc_csrbank2_bitbang_en0_w;
			end
		endcase
	end
	if (basesoc_csrbank2_bitbang0_re) begin
		bitbang_storage_full[3:0] <= basesoc_csrbank2_bitbang0_r;
	end
	bitbang_re <= basesoc_csrbank2_bitbang0_re;
	if (basesoc_csrbank2_bitbang_en0_re) begin
		bitbang_en_storage_full <= basesoc_csrbank2_bitbang_en0_r;
	end
	bitbang_en_re <= basesoc_csrbank2_bitbang_en0_re;
	basesoc_interface4_dat_r <= 1'd0;
	if (basesoc_csrbank3_sel) begin
		case (basesoc_interface4_adr[4:0])
			1'd0: begin
				basesoc_interface4_dat_r <= basesoc_csrbank3_load3_w;
			end
			1'd1: begin
				basesoc_interface4_dat_r <= basesoc_csrbank3_load2_w;
			end
			2'd2: begin
				basesoc_interface4_dat_r <= basesoc_csrbank3_load1_w;
			end
			2'd3: begin
				basesoc_interface4_dat_r <= basesoc_csrbank3_load0_w;
			end
			3'd4: begin
				basesoc_interface4_dat_r <= basesoc_csrbank3_reload3_w;
			end
			3'd5: begin
				basesoc_interface4_dat_r <= basesoc_csrbank3_reload2_w;
			end
			3'd6: begin
				basesoc_interface4_dat_r <= basesoc_csrbank3_reload1_w;
			end
			3'd7: begin
				basesoc_interface4_dat_r <= basesoc_csrbank3_reload0_w;
			end
			4'd8: begin
				basesoc_interface4_dat_r <= basesoc_csrbank3_en0_w;
			end
			4'd9: begin
				basesoc_interface4_dat_r <= basesoc_timer0_update_value_w;
			end
			4'd10: begin
				basesoc_interface4_dat_r <= basesoc_csrbank3_value3_w;
			end
			4'd11: begin
				basesoc_interface4_dat_r <= basesoc_csrbank3_value2_w;
			end
			4'd12: begin
				basesoc_interface4_dat_r <= basesoc_csrbank3_value1_w;
			end
			4'd13: begin
				basesoc_interface4_dat_r <= basesoc_csrbank3_value0_w;
			end
			4'd14: begin
				basesoc_interface4_dat_r <= basesoc_timer0_eventmanager_status_w;
			end
			4'd15: begin
				basesoc_interface4_dat_r <= basesoc_timer0_eventmanager_pending_w;
			end
			5'd16: begin
				basesoc_interface4_dat_r <= basesoc_csrbank3_ev_enable0_w;
			end
		endcase
	end
	if (basesoc_csrbank3_load3_re) begin
		basesoc_timer0_load_storage_full[31:24] <= basesoc_csrbank3_load3_r;
	end
	if (basesoc_csrbank3_load2_re) begin
		basesoc_timer0_load_storage_full[23:16] <= basesoc_csrbank3_load2_r;
	end
	if (basesoc_csrbank3_load1_re) begin
		basesoc_timer0_load_storage_full[15:8] <= basesoc_csrbank3_load1_r;
	end
	if (basesoc_csrbank3_load0_re) begin
		basesoc_timer0_load_storage_full[7:0] <= basesoc_csrbank3_load0_r;
	end
	basesoc_timer0_load_re <= basesoc_csrbank3_load0_re;
	if (basesoc_csrbank3_reload3_re) begin
		basesoc_timer0_reload_storage_full[31:24] <= basesoc_csrbank3_reload3_r;
	end
	if (basesoc_csrbank3_reload2_re) begin
		basesoc_timer0_reload_storage_full[23:16] <= basesoc_csrbank3_reload2_r;
	end
	if (basesoc_csrbank3_reload1_re) begin
		basesoc_timer0_reload_storage_full[15:8] <= basesoc_csrbank3_reload1_r;
	end
	if (basesoc_csrbank3_reload0_re) begin
		basesoc_timer0_reload_storage_full[7:0] <= basesoc_csrbank3_reload0_r;
	end
	basesoc_timer0_reload_re <= basesoc_csrbank3_reload0_re;
	if (basesoc_csrbank3_en0_re) begin
		basesoc_timer0_en_storage_full <= basesoc_csrbank3_en0_r;
	end
	basesoc_timer0_en_re <= basesoc_csrbank3_en0_re;
	if (basesoc_csrbank3_ev_enable0_re) begin
		basesoc_timer0_eventmanager_storage_full <= basesoc_csrbank3_ev_enable0_r;
	end
	basesoc_timer0_eventmanager_re <= basesoc_csrbank3_ev_enable0_re;
	basesoc_interface5_dat_r <= 1'd0;
	if (basesoc_csrbank4_sel) begin
		case (basesoc_interface5_adr[2:0])
			1'd0: begin
				basesoc_interface5_dat_r <= basesoc_uart_rxtx_w;
			end
			1'd1: begin
				basesoc_interface5_dat_r <= basesoc_csrbank4_txfull_w;
			end
			2'd2: begin
				basesoc_interface5_dat_r <= basesoc_csrbank4_rxempty_w;
			end
			2'd3: begin
				basesoc_interface5_dat_r <= basesoc_uart_status_w;
			end
			3'd4: begin
				basesoc_interface5_dat_r <= basesoc_uart_pending_w;
			end
			3'd5: begin
				basesoc_interface5_dat_r <= basesoc_csrbank4_ev_enable0_w;
			end
		endcase
	end
	if (basesoc_csrbank4_ev_enable0_re) begin
		basesoc_uart_storage_full[1:0] <= basesoc_csrbank4_ev_enable0_r;
	end
	basesoc_uart_re <= basesoc_csrbank4_ev_enable0_re;
	basesoc_interface6_dat_r <= 1'd0;
	if (basesoc_csrbank5_sel) begin
		case (basesoc_interface6_adr[1:0])
			1'd0: begin
				basesoc_interface6_dat_r <= basesoc_csrbank5_tuning_word3_w;
			end
			1'd1: begin
				basesoc_interface6_dat_r <= basesoc_csrbank5_tuning_word2_w;
			end
			2'd2: begin
				basesoc_interface6_dat_r <= basesoc_csrbank5_tuning_word1_w;
			end
			2'd3: begin
				basesoc_interface6_dat_r <= basesoc_csrbank5_tuning_word0_w;
			end
		endcase
	end
	if (basesoc_csrbank5_tuning_word3_re) begin
		basesoc_uart_phy_storage_full[31:24] <= basesoc_csrbank5_tuning_word3_r;
	end
	if (basesoc_csrbank5_tuning_word2_re) begin
		basesoc_uart_phy_storage_full[23:16] <= basesoc_csrbank5_tuning_word2_r;
	end
	if (basesoc_csrbank5_tuning_word1_re) begin
		basesoc_uart_phy_storage_full[15:8] <= basesoc_csrbank5_tuning_word1_r;
	end
	if (basesoc_csrbank5_tuning_word0_re) begin
		basesoc_uart_phy_storage_full[7:0] <= basesoc_csrbank5_tuning_word0_r;
	end
	basesoc_uart_phy_re <= basesoc_csrbank5_tuning_word0_re;
	if (sys_rst) begin
		basesoc_rom_bus_ack <= 1'd0;
		basesoc_sram_bus_ack <= 1'd0;
		basesoc_interface_adr <= 14'd0;
		basesoc_interface_we <= 1'd0;
		basesoc_interface_dat_w <= 8'd0;
		basesoc_bus_wishbone_dat_r <= 32'd0;
		basesoc_bus_wishbone_ack <= 1'd0;
		basesoc_counter <= 2'd0;
		serial_tx <= 1'd1;
		basesoc_uart_phy_storage_full <= 32'd6597069;
		basesoc_uart_phy_re <= 1'd0;
		basesoc_uart_phy_sink_ready <= 1'd0;
		basesoc_uart_phy_uart_clk_txen <= 1'd0;
		basesoc_uart_phy_phase_accumulator_tx <= 32'd0;
		basesoc_uart_phy_tx_reg <= 8'd0;
		basesoc_uart_phy_tx_bitcount <= 4'd0;
		basesoc_uart_phy_tx_busy <= 1'd0;
		basesoc_uart_phy_source_valid <= 1'd0;
		basesoc_uart_phy_uart_clk_rxen <= 1'd0;
		basesoc_uart_phy_phase_accumulator_rx <= 32'd0;
		basesoc_uart_phy_rx_r <= 1'd0;
		basesoc_uart_phy_rx_reg <= 8'd0;
		basesoc_uart_phy_rx_bitcount <= 4'd0;
		basesoc_uart_phy_rx_busy <= 1'd0;
		basesoc_uart_tx_pending <= 1'd0;
		basesoc_uart_tx_old_trigger <= 1'd0;
		basesoc_uart_rx_pending <= 1'd0;
		basesoc_uart_rx_old_trigger <= 1'd0;
		basesoc_uart_storage_full <= 2'd0;
		basesoc_uart_re <= 1'd0;
		basesoc_uart_tx_fifo_level <= 5'd0;
		basesoc_uart_tx_fifo_produce <= 4'd0;
		basesoc_uart_tx_fifo_consume <= 4'd0;
		basesoc_uart_rx_fifo_level <= 5'd0;
		basesoc_uart_rx_fifo_produce <= 4'd0;
		basesoc_uart_rx_fifo_consume <= 4'd0;
		basesoc_timer0_load_storage_full <= 32'd0;
		basesoc_timer0_load_re <= 1'd0;
		basesoc_timer0_reload_storage_full <= 32'd0;
		basesoc_timer0_reload_re <= 1'd0;
		basesoc_timer0_en_storage_full <= 1'd0;
		basesoc_timer0_en_re <= 1'd0;
		basesoc_timer0_value_status <= 32'd0;
		basesoc_timer0_zero_pending <= 1'd0;
		basesoc_timer0_zero_old_trigger <= 1'd0;
		basesoc_timer0_eventmanager_storage_full <= 1'd0;
		basesoc_timer0_eventmanager_re <= 1'd0;
		basesoc_timer0_value <= 32'd0;
		dna_status <= 57'd0;
		dna_cnt <= 7'd0;
		bus_ack <= 1'd0;
		bitbang_storage_full <= 4'd0;
		bitbang_re <= 1'd0;
		bitbang_en_storage_full <= 1'd0;
		bitbang_en_re <= 1'd0;
		cs_n <= 1'd1;
		clk <= 1'd0;
		dq_oe <= 1'd0;
		sr <= 32'd0;
		i1 <= 2'd0;
		dqi <= 4'd0;
		counter <= 8'd0;
		ddrphy_phase_sys <= 1'd0;
		ddrphy_bitslip_cnt <= 4'd0;
		ddrphy_bitslip_inc <= 1'd0;
		ddrphy_drive_dq_n1 <= 1'd0;
		ddrphy_wrdata_en_d <= 1'd0;
		ddrphy_rddata_sr <= 5'd0;
		controllerinjector_storage_full <= 4'd0;
		controllerinjector_re <= 1'd0;
		controllerinjector_phaseinjector0_command_storage_full <= 6'd0;
		controllerinjector_phaseinjector0_command_re <= 1'd0;
		controllerinjector_phaseinjector0_address_storage_full <= 13'd0;
		controllerinjector_phaseinjector0_address_re <= 1'd0;
		controllerinjector_phaseinjector0_baddress_storage_full <= 3'd0;
		controllerinjector_phaseinjector0_baddress_re <= 1'd0;
		controllerinjector_phaseinjector0_wrdata_storage_full <= 32'd0;
		controllerinjector_phaseinjector0_wrdata_re <= 1'd0;
		controllerinjector_phaseinjector0_status <= 32'd0;
		controllerinjector_phaseinjector1_command_storage_full <= 6'd0;
		controllerinjector_phaseinjector1_command_re <= 1'd0;
		controllerinjector_phaseinjector1_address_storage_full <= 13'd0;
		controllerinjector_phaseinjector1_address_re <= 1'd0;
		controllerinjector_phaseinjector1_baddress_storage_full <= 3'd0;
		controllerinjector_phaseinjector1_baddress_re <= 1'd0;
		controllerinjector_phaseinjector1_wrdata_storage_full <= 32'd0;
		controllerinjector_phaseinjector1_wrdata_re <= 1'd0;
		controllerinjector_phaseinjector1_status <= 32'd0;
		controllerinjector_dfi_p0_cas_n <= 1'd1;
		controllerinjector_dfi_p0_ras_n <= 1'd1;
		controllerinjector_dfi_p0_we_n <= 1'd1;
		controllerinjector_dfi_p0_wrdata_en <= 1'd0;
		controllerinjector_dfi_p0_rddata_en <= 1'd0;
		controllerinjector_dfi_p1_cas_n <= 1'd1;
		controllerinjector_dfi_p1_ras_n <= 1'd1;
		controllerinjector_dfi_p1_we_n <= 1'd1;
		controllerinjector_dfi_p1_wrdata_en <= 1'd0;
		controllerinjector_dfi_p1_rddata_en <= 1'd0;
		controllerinjector_seq_done <= 1'd0;
		controllerinjector_counter <= 4'd0;
		controllerinjector_count <= 10'd585;
		controllerinjector_bankmachine0_level <= 4'd0;
		controllerinjector_bankmachine0_produce <= 3'd0;
		controllerinjector_bankmachine0_consume <= 3'd0;
		controllerinjector_bankmachine0_has_openrow <= 1'd0;
		controllerinjector_bankmachine0_count <= 3'd4;
		controllerinjector_bankmachine1_level <= 4'd0;
		controllerinjector_bankmachine1_produce <= 3'd0;
		controllerinjector_bankmachine1_consume <= 3'd0;
		controllerinjector_bankmachine1_has_openrow <= 1'd0;
		controllerinjector_bankmachine1_count <= 3'd4;
		controllerinjector_bankmachine2_level <= 4'd0;
		controllerinjector_bankmachine2_produce <= 3'd0;
		controllerinjector_bankmachine2_consume <= 3'd0;
		controllerinjector_bankmachine2_has_openrow <= 1'd0;
		controllerinjector_bankmachine2_count <= 3'd4;
		controllerinjector_bankmachine3_level <= 4'd0;
		controllerinjector_bankmachine3_produce <= 3'd0;
		controllerinjector_bankmachine3_consume <= 3'd0;
		controllerinjector_bankmachine3_has_openrow <= 1'd0;
		controllerinjector_bankmachine3_count <= 3'd4;
		controllerinjector_bankmachine4_level <= 4'd0;
		controllerinjector_bankmachine4_produce <= 3'd0;
		controllerinjector_bankmachine4_consume <= 3'd0;
		controllerinjector_bankmachine4_has_openrow <= 1'd0;
		controllerinjector_bankmachine4_count <= 3'd4;
		controllerinjector_bankmachine5_level <= 4'd0;
		controllerinjector_bankmachine5_produce <= 3'd0;
		controllerinjector_bankmachine5_consume <= 3'd0;
		controllerinjector_bankmachine5_has_openrow <= 1'd0;
		controllerinjector_bankmachine5_count <= 3'd4;
		controllerinjector_bankmachine6_level <= 4'd0;
		controllerinjector_bankmachine6_produce <= 3'd0;
		controllerinjector_bankmachine6_consume <= 3'd0;
		controllerinjector_bankmachine6_has_openrow <= 1'd0;
		controllerinjector_bankmachine6_count <= 3'd4;
		controllerinjector_bankmachine7_level <= 4'd0;
		controllerinjector_bankmachine7_produce <= 3'd0;
		controllerinjector_bankmachine7_consume <= 3'd0;
		controllerinjector_bankmachine7_has_openrow <= 1'd0;
		controllerinjector_bankmachine7_count <= 3'd4;
		controllerinjector_choose_cmd_grant <= 3'd0;
		controllerinjector_choose_req_grant <= 3'd0;
		controllerinjector_time0 <= 5'd0;
		controllerinjector_time1 <= 4'd0;
		controllerinjector_bandwidth_nreads_status <= 24'd0;
		controllerinjector_bandwidth_nwrites_status <= 24'd0;
		controllerinjector_bandwidth_cmd_valid <= 1'd0;
		controllerinjector_bandwidth_cmd_ready <= 1'd0;
		controllerinjector_bandwidth_cmd_is_read <= 1'd0;
		controllerinjector_bandwidth_cmd_is_write <= 1'd0;
		controllerinjector_bandwidth_counter <= 24'd0;
		controllerinjector_bandwidth_period <= 1'd0;
		controllerinjector_bandwidth_nreads <= 24'd0;
		controllerinjector_bandwidth_nwrites <= 24'd0;
		controllerinjector_bandwidth_nreads_r <= 24'd0;
		controllerinjector_bandwidth_nwrites_r <= 24'd0;
		adr_offset_r <= 1'd0;
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
		new_master_wdata_ready <= 1'd0;
		new_master_rdata_valid0 <= 1'd0;
		new_master_rdata_valid1 <= 1'd0;
		new_master_rdata_valid2 <= 1'd0;
		new_master_rdata_valid3 <= 1'd0;
		new_master_rdata_valid4 <= 1'd0;
		new_master_rdata_valid5 <= 1'd0;
		cache_state <= 3'd0;
		litedramwishbonebridge_state <= 2'd0;
		basesoc_grant <= 1'd0;
		basesoc_slave_sel_r <= 5'd0;
		basesoc_mmap_sel_r <= 1'd0;
		basesoc_interface1_dat_r <= 8'd0;
		basesoc_interface2_dat_r <= 8'd0;
		basesoc_interface3_dat_r <= 8'd0;
		basesoc_interface4_dat_r <= 8'd0;
		basesoc_interface5_dat_r <= 8'd0;
		basesoc_interface6_dat_r <= 8'd0;
	end
	regs0 <= serial_rx;
	regs1 <= regs0;
end

lm32_cpu #(
	.eba_reset(32'h00000000)
) lm32_cpu (
	.D_ACK_I(basesoc_dbus_ack),
	.D_DAT_I(basesoc_dbus_dat_r),
	.D_ERR_I(basesoc_dbus_err),
	.D_RTY_I(1'd0),
	.I_ACK_I(basesoc_ibus_ack),
	.I_DAT_I(basesoc_ibus_dat_r),
	.I_ERR_I(basesoc_ibus_err),
	.I_RTY_I(1'd0),
	.clk_i(sys_clk),
	.interrupt(basesoc_interrupt),
	.rst_i(sys_rst),
	.D_ADR_O(basesoc_d_adr_o),
	.D_BTE_O(basesoc_dbus_bte),
	.D_CTI_O(basesoc_dbus_cti),
	.D_CYC_O(basesoc_dbus_cyc),
	.D_DAT_O(basesoc_dbus_dat_w),
	.D_SEL_O(basesoc_dbus_sel),
	.D_STB_O(basesoc_dbus_stb),
	.D_WE_O(basesoc_dbus_we),
	.I_ADR_O(basesoc_i_adr_o),
	.I_BTE_O(basesoc_ibus_bte),
	.I_CTI_O(basesoc_ibus_cti),
	.I_CYC_O(basesoc_ibus_cyc),
	.I_DAT_O(basesoc_ibus_dat_w),
	.I_SEL_O(basesoc_ibus_sel),
	.I_STB_O(basesoc_ibus_stb),
	.I_WE_O(basesoc_ibus_we)
);

reg [31:0] mem[0:8191];
reg [31:0] memdat;
always @(posedge sys_clk) begin
	memdat <= mem[basesoc_rom_adr];
end

assign basesoc_rom_dat_r = memdat;

initial begin
	$readmemh("mem.init", mem);
end

reg [31:0] mem_1[0:4095];
reg [11:0] memadr;
always @(posedge sys_clk) begin
	if (basesoc_sram_we[0])
		mem_1[basesoc_sram_adr][7:0] <= basesoc_sram_dat_w[7:0];
	if (basesoc_sram_we[1])
		mem_1[basesoc_sram_adr][15:8] <= basesoc_sram_dat_w[15:8];
	if (basesoc_sram_we[2])
		mem_1[basesoc_sram_adr][23:16] <= basesoc_sram_dat_w[23:16];
	if (basesoc_sram_we[3])
		mem_1[basesoc_sram_adr][31:24] <= basesoc_sram_dat_w[31:24];
	memadr <= basesoc_sram_adr;
end

assign basesoc_sram_dat_r = mem_1[memadr];

reg [9:0] storage[0:15];
reg [3:0] memadr_1;
always @(posedge sys_clk) begin
	if (basesoc_uart_tx_fifo_wrport_we)
		storage[basesoc_uart_tx_fifo_wrport_adr] <= basesoc_uart_tx_fifo_wrport_dat_w;
	memadr_1 <= basesoc_uart_tx_fifo_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign basesoc_uart_tx_fifo_wrport_dat_r = storage[memadr_1];
assign basesoc_uart_tx_fifo_rdport_dat_r = storage[basesoc_uart_tx_fifo_rdport_adr];

reg [9:0] storage_1[0:15];
reg [3:0] memadr_2;
always @(posedge sys_clk) begin
	if (basesoc_uart_rx_fifo_wrport_we)
		storage_1[basesoc_uart_rx_fifo_wrport_adr] <= basesoc_uart_rx_fifo_wrport_dat_w;
	memadr_2 <= basesoc_uart_rx_fifo_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign basesoc_uart_rx_fifo_wrport_dat_r = storage_1[memadr_2];
assign basesoc_uart_rx_fifo_rdport_dat_r = storage_1[basesoc_uart_rx_fifo_rdport_adr];

reg [7:0] mem_2[0:7];
reg [7:0] memdat_1;
always @(posedge sys_clk) begin
	memdat_1 <= mem_2[basesoc_mmap_adr];
end

assign basesoc_mmap_dat_r = memdat_1;

initial begin
	$readmemh("mem_2.init", mem_2);
end

IBUFG IBUFG(
	.I(clk100),
	.O(crg_clk100a)
);

BUFIO2 #(
	.DIVIDE(1'd1),
	.DIVIDE_BYPASS("TRUE"),
	.I_INVERT("FALSE")
) BUFIO2 (
	.I(crg_clk100a),
	.DIVCLK(crg_clk100b)
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
	.CLKFBIN(crg_pll_fb),
	.CLKIN1(crg_clk100b),
	.CLKIN2(1'd0),
	.CLKINSEL(1'd1),
	.DADDR(1'd0),
	.DCLK(1'd0),
	.DEN(1'd0),
	.DI(1'd0),
	.DWE(1'd0),
	.REL(1'd0),
	.RST(1'd0),
	.CLKFBOUT(crg_pll_fb),
	.CLKOUT0(crg_unbuf_sdram_full),
	.CLKOUT1(crg_unbuf_encoder),
	.CLKOUT2(crg_unbuf_sdram_half_a),
	.CLKOUT3(crg_unbuf_sdram_half_b),
	.CLKOUT4(crg_unbuf_unused),
	.CLKOUT5(crg_unbuf_sys),
	.LOCKED(crg_pll_lckd)
);

BUFG sys_bufg(
	.I(crg_unbuf_sys),
	.O(sys_clk)
);

BUFPLL #(
	.DIVIDE(3'd4)
) sdram_full_bufpll (
	.GCLK(sys_clk),
	.LOCKED(crg_pll_lckd),
	.PLLIN(crg_unbuf_sdram_full),
	.IOCLK(sdram_full_wr_clk),
	.SERDESSTROBE(crg_clk4x_wr_strb)
);

BUFG sdram_half_a_bufpll(
	.I(crg_unbuf_sdram_half_a),
	.O(sdram_half_clk)
);

BUFG sdram_half_b_bufpll(
	.I(crg_unbuf_sdram_half_b),
	.O(crg_clk_sdram_half_shifted)
);

ODDR2 #(
	.DDR_ALIGNMENT("NONE"),
	.INIT(1'd0),
	.SRTYPE("SYNC")
) ODDR2 (
	.C0(crg_clk_sdram_half_shifted),
	.C1((~crg_clk_sdram_half_shifted)),
	.CE(1'd1),
	.D0(1'd1),
	.D1(1'd0),
	.R(1'd0),
	.S(1'd0),
	.Q(crg_output_clk)
);

OBUFDS OBUFDS(
	.I(crg_output_clk),
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
	.CLKIN(crg_clk100a),
	.FREEZEDCM(1'd0),
	.RST(sys_rst),
	.CLKFX(base50_clk),
	.LOCKED(crg_dcm_base50_locked)
);

BUFG encoder_bufg(
	.I(crg_unbuf_encoder),
	.O(encoder_clk)
);

DNA_PORT DNA_PORT(
	.CLK(dna_cnt[0]),
	.DIN(dna_status[56]),
	.READ((dna_cnt < 2'd2)),
	.SHIFT(1'd1),
	.DOUT(dna_do)
);

assign spiflash4x_dq = oe ? o : 4'bz;
assign i0 = spiflash4x_dq;

ODDR2 #(
	.DDR_ALIGNMENT("C0"),
	.INIT(1'd0),
	.SRTYPE("ASYNC")
) ODDR2_1 (
	.C0(sdram_half_clk),
	.C1(ddrphy_sdram_half_clk_n),
	.CE(1'd1),
	.D0(1'd0),
	.D1(1'd1),
	.R(1'd0),
	.S(1'd0),
	.Q(ddrphy_dqs_o[0])
);

ODDR2 #(
	.DDR_ALIGNMENT("C0"),
	.INIT(1'd0),
	.SRTYPE("ASYNC")
) ODDR2_2 (
	.C0(sdram_half_clk),
	.C1(ddrphy_sdram_half_clk_n),
	.CE(1'd1),
	.D0(ddrphy_dqs_t_d0),
	.D1(ddrphy_dqs_t_d1),
	.R(1'd0),
	.S(1'd0),
	.Q(ddrphy_dqs_t[0])
);

OBUFTDS OBUFTDS(
	.I(ddrphy_dqs_o[0]),
	.T(ddrphy_dqs_t[0]),
	.O(ddram_dqs[0]),
	.OB(ddram_dqs_n[0])
);

ODDR2 #(
	.DDR_ALIGNMENT("C0"),
	.INIT(1'd0),
	.SRTYPE("ASYNC")
) ODDR2_3 (
	.C0(sdram_half_clk),
	.C1(ddrphy_sdram_half_clk_n),
	.CE(1'd1),
	.D0(1'd0),
	.D1(1'd1),
	.R(1'd0),
	.S(1'd0),
	.Q(ddrphy_dqs_o[1])
);

ODDR2 #(
	.DDR_ALIGNMENT("C0"),
	.INIT(1'd0),
	.SRTYPE("ASYNC")
) ODDR2_4 (
	.C0(sdram_half_clk),
	.C1(ddrphy_sdram_half_clk_n),
	.CE(1'd1),
	.D0(ddrphy_dqs_t_d0),
	.D1(ddrphy_dqs_t_d1),
	.R(1'd0),
	.S(1'd0),
	.Q(ddrphy_dqs_t[1])
);

OBUFTDS OBUFTDS_1(
	.I(ddrphy_dqs_o[1]),
	.T(ddrphy_dqs_t[1]),
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
	.D1(slice_proxy0[0]),
	.D2(slice_proxy1[0]),
	.D3(slice_proxy2[0]),
	.D4(slice_proxy3[0]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[0]),
	.TQ(ddrphy_dq_t[0])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[0]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[16]),
	.Q2(ddrphy_record0_rddata[0]),
	.Q3(ddrphy_record1_rddata[16]),
	.Q4(ddrphy_record1_rddata[0])
);

IOBUF IOBUF(
	.I(ddrphy_dq_o[0]),
	.T(ddrphy_dq_t[0]),
	.IO(ddram_dq[0]),
	.O(ddrphy_dq_i[0])
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
	.D1(slice_proxy4[1]),
	.D2(slice_proxy5[1]),
	.D3(slice_proxy6[1]),
	.D4(slice_proxy7[1]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[1]),
	.TQ(ddrphy_dq_t[1])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_1 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[1]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[17]),
	.Q2(ddrphy_record0_rddata[1]),
	.Q3(ddrphy_record1_rddata[17]),
	.Q4(ddrphy_record1_rddata[1])
);

IOBUF IOBUF_1(
	.I(ddrphy_dq_o[1]),
	.T(ddrphy_dq_t[1]),
	.IO(ddram_dq[1]),
	.O(ddrphy_dq_i[1])
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
	.D1(slice_proxy8[2]),
	.D2(slice_proxy9[2]),
	.D3(slice_proxy10[2]),
	.D4(slice_proxy11[2]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[2]),
	.TQ(ddrphy_dq_t[2])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_2 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[2]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[18]),
	.Q2(ddrphy_record0_rddata[2]),
	.Q3(ddrphy_record1_rddata[18]),
	.Q4(ddrphy_record1_rddata[2])
);

IOBUF IOBUF_2(
	.I(ddrphy_dq_o[2]),
	.T(ddrphy_dq_t[2]),
	.IO(ddram_dq[2]),
	.O(ddrphy_dq_i[2])
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
	.D1(slice_proxy12[3]),
	.D2(slice_proxy13[3]),
	.D3(slice_proxy14[3]),
	.D4(slice_proxy15[3]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[3]),
	.TQ(ddrphy_dq_t[3])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_3 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[3]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[19]),
	.Q2(ddrphy_record0_rddata[3]),
	.Q3(ddrphy_record1_rddata[19]),
	.Q4(ddrphy_record1_rddata[3])
);

IOBUF IOBUF_3(
	.I(ddrphy_dq_o[3]),
	.T(ddrphy_dq_t[3]),
	.IO(ddram_dq[3]),
	.O(ddrphy_dq_i[3])
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
	.D1(slice_proxy16[4]),
	.D2(slice_proxy17[4]),
	.D3(slice_proxy18[4]),
	.D4(slice_proxy19[4]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[4]),
	.TQ(ddrphy_dq_t[4])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_4 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[4]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[20]),
	.Q2(ddrphy_record0_rddata[4]),
	.Q3(ddrphy_record1_rddata[20]),
	.Q4(ddrphy_record1_rddata[4])
);

IOBUF IOBUF_4(
	.I(ddrphy_dq_o[4]),
	.T(ddrphy_dq_t[4]),
	.IO(ddram_dq[4]),
	.O(ddrphy_dq_i[4])
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
	.D1(slice_proxy20[5]),
	.D2(slice_proxy21[5]),
	.D3(slice_proxy22[5]),
	.D4(slice_proxy23[5]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[5]),
	.TQ(ddrphy_dq_t[5])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_5 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[5]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[21]),
	.Q2(ddrphy_record0_rddata[5]),
	.Q3(ddrphy_record1_rddata[21]),
	.Q4(ddrphy_record1_rddata[5])
);

IOBUF IOBUF_5(
	.I(ddrphy_dq_o[5]),
	.T(ddrphy_dq_t[5]),
	.IO(ddram_dq[5]),
	.O(ddrphy_dq_i[5])
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
	.D1(slice_proxy24[6]),
	.D2(slice_proxy25[6]),
	.D3(slice_proxy26[6]),
	.D4(slice_proxy27[6]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[6]),
	.TQ(ddrphy_dq_t[6])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_6 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[6]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[22]),
	.Q2(ddrphy_record0_rddata[6]),
	.Q3(ddrphy_record1_rddata[22]),
	.Q4(ddrphy_record1_rddata[6])
);

IOBUF IOBUF_6(
	.I(ddrphy_dq_o[6]),
	.T(ddrphy_dq_t[6]),
	.IO(ddram_dq[6]),
	.O(ddrphy_dq_i[6])
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
	.D1(slice_proxy28[7]),
	.D2(slice_proxy29[7]),
	.D3(slice_proxy30[7]),
	.D4(slice_proxy31[7]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[7]),
	.TQ(ddrphy_dq_t[7])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_7 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[7]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[23]),
	.Q2(ddrphy_record0_rddata[7]),
	.Q3(ddrphy_record1_rddata[23]),
	.Q4(ddrphy_record1_rddata[7])
);

IOBUF IOBUF_7(
	.I(ddrphy_dq_o[7]),
	.T(ddrphy_dq_t[7]),
	.IO(ddram_dq[7]),
	.O(ddrphy_dq_i[7])
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
	.D1(slice_proxy32[8]),
	.D2(slice_proxy33[8]),
	.D3(slice_proxy34[8]),
	.D4(slice_proxy35[8]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[8]),
	.TQ(ddrphy_dq_t[8])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_8 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[8]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[24]),
	.Q2(ddrphy_record0_rddata[8]),
	.Q3(ddrphy_record1_rddata[24]),
	.Q4(ddrphy_record1_rddata[8])
);

IOBUF IOBUF_8(
	.I(ddrphy_dq_o[8]),
	.T(ddrphy_dq_t[8]),
	.IO(ddram_dq[8]),
	.O(ddrphy_dq_i[8])
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
	.D1(slice_proxy36[9]),
	.D2(slice_proxy37[9]),
	.D3(slice_proxy38[9]),
	.D4(slice_proxy39[9]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[9]),
	.TQ(ddrphy_dq_t[9])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_9 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[9]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[25]),
	.Q2(ddrphy_record0_rddata[9]),
	.Q3(ddrphy_record1_rddata[25]),
	.Q4(ddrphy_record1_rddata[9])
);

IOBUF IOBUF_9(
	.I(ddrphy_dq_o[9]),
	.T(ddrphy_dq_t[9]),
	.IO(ddram_dq[9]),
	.O(ddrphy_dq_i[9])
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
	.D1(slice_proxy40[10]),
	.D2(slice_proxy41[10]),
	.D3(slice_proxy42[10]),
	.D4(slice_proxy43[10]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[10]),
	.TQ(ddrphy_dq_t[10])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_10 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[10]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[26]),
	.Q2(ddrphy_record0_rddata[10]),
	.Q3(ddrphy_record1_rddata[26]),
	.Q4(ddrphy_record1_rddata[10])
);

IOBUF IOBUF_10(
	.I(ddrphy_dq_o[10]),
	.T(ddrphy_dq_t[10]),
	.IO(ddram_dq[10]),
	.O(ddrphy_dq_i[10])
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
	.D1(slice_proxy44[11]),
	.D2(slice_proxy45[11]),
	.D3(slice_proxy46[11]),
	.D4(slice_proxy47[11]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[11]),
	.TQ(ddrphy_dq_t[11])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_11 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[11]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[27]),
	.Q2(ddrphy_record0_rddata[11]),
	.Q3(ddrphy_record1_rddata[27]),
	.Q4(ddrphy_record1_rddata[11])
);

IOBUF IOBUF_11(
	.I(ddrphy_dq_o[11]),
	.T(ddrphy_dq_t[11]),
	.IO(ddram_dq[11]),
	.O(ddrphy_dq_i[11])
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
	.D1(slice_proxy48[12]),
	.D2(slice_proxy49[12]),
	.D3(slice_proxy50[12]),
	.D4(slice_proxy51[12]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[12]),
	.TQ(ddrphy_dq_t[12])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_12 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[12]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[28]),
	.Q2(ddrphy_record0_rddata[12]),
	.Q3(ddrphy_record1_rddata[28]),
	.Q4(ddrphy_record1_rddata[12])
);

IOBUF IOBUF_12(
	.I(ddrphy_dq_o[12]),
	.T(ddrphy_dq_t[12]),
	.IO(ddram_dq[12]),
	.O(ddrphy_dq_i[12])
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
	.D1(slice_proxy52[13]),
	.D2(slice_proxy53[13]),
	.D3(slice_proxy54[13]),
	.D4(slice_proxy55[13]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[13]),
	.TQ(ddrphy_dq_t[13])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_13 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[13]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[29]),
	.Q2(ddrphy_record0_rddata[13]),
	.Q3(ddrphy_record1_rddata[29]),
	.Q4(ddrphy_record1_rddata[13])
);

IOBUF IOBUF_13(
	.I(ddrphy_dq_o[13]),
	.T(ddrphy_dq_t[13]),
	.IO(ddram_dq[13]),
	.O(ddrphy_dq_i[13])
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
	.D1(slice_proxy56[14]),
	.D2(slice_proxy57[14]),
	.D3(slice_proxy58[14]),
	.D4(slice_proxy59[14]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[14]),
	.TQ(ddrphy_dq_t[14])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_14 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[14]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[30]),
	.Q2(ddrphy_record0_rddata[14]),
	.Q3(ddrphy_record1_rddata[30]),
	.Q4(ddrphy_record1_rddata[14])
);

IOBUF IOBUF_14(
	.I(ddrphy_dq_o[14]),
	.T(ddrphy_dq_t[14]),
	.IO(ddram_dq[14]),
	.O(ddrphy_dq_i[14])
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
	.D1(slice_proxy60[15]),
	.D2(slice_proxy61[15]),
	.D3(slice_proxy62[15]),
	.D4(slice_proxy63[15]),
	.IOCE(ddrphy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(ddrphy_drive_dq_n1),
	.T2(ddrphy_drive_dq_n1),
	.T3(ddrphy_drive_dq_n1),
	.T4(ddrphy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(ddrphy_dq_o[15]),
	.TQ(ddrphy_dq_t[15])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_15 (
	.BITSLIP(ddrphy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys_clk),
	.D(ddrphy_dq_i[15]),
	.IOCE(ddrphy_clk4x_rd_strb),
	.RST(sys_rst),
	.Q1(ddrphy_record0_rddata[31]),
	.Q2(ddrphy_record0_rddata[15]),
	.Q3(ddrphy_record1_rddata[31]),
	.Q4(ddrphy_record1_rddata[15])
);

IOBUF IOBUF_15(
	.I(ddrphy_dq_o[15]),
	.T(ddrphy_dq_t[15]),
	.IO(ddram_dq[15]),
	.O(ddrphy_dq_i[15])
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
	.D1(slice_proxy64[0]),
	.D2(slice_proxy65[0]),
	.D3(slice_proxy66[0]),
	.D4(slice_proxy67[0]),
	.IOCE(ddrphy_clk4x_wr_strb),
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
	.D1(slice_proxy68[1]),
	.D2(slice_proxy69[1]),
	.D3(slice_proxy70[1]),
	.D4(slice_proxy71[1]),
	.IOCE(ddrphy_clk4x_wr_strb),
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
reg [2:0] memadr_3;
always @(posedge sys_clk) begin
	if (controllerinjector_bankmachine0_wrport_we)
		storage_2[controllerinjector_bankmachine0_wrport_adr] <= controllerinjector_bankmachine0_wrport_dat_w;
	memadr_3 <= controllerinjector_bankmachine0_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign controllerinjector_bankmachine0_wrport_dat_r = storage_2[memadr_3];
assign controllerinjector_bankmachine0_rdport_dat_r = storage_2[controllerinjector_bankmachine0_rdport_adr];

reg [23:0] storage_3[0:7];
reg [2:0] memadr_4;
always @(posedge sys_clk) begin
	if (controllerinjector_bankmachine1_wrport_we)
		storage_3[controllerinjector_bankmachine1_wrport_adr] <= controllerinjector_bankmachine1_wrport_dat_w;
	memadr_4 <= controllerinjector_bankmachine1_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign controllerinjector_bankmachine1_wrport_dat_r = storage_3[memadr_4];
assign controllerinjector_bankmachine1_rdport_dat_r = storage_3[controllerinjector_bankmachine1_rdport_adr];

reg [23:0] storage_4[0:7];
reg [2:0] memadr_5;
always @(posedge sys_clk) begin
	if (controllerinjector_bankmachine2_wrport_we)
		storage_4[controllerinjector_bankmachine2_wrport_adr] <= controllerinjector_bankmachine2_wrport_dat_w;
	memadr_5 <= controllerinjector_bankmachine2_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign controllerinjector_bankmachine2_wrport_dat_r = storage_4[memadr_5];
assign controllerinjector_bankmachine2_rdport_dat_r = storage_4[controllerinjector_bankmachine2_rdport_adr];

reg [23:0] storage_5[0:7];
reg [2:0] memadr_6;
always @(posedge sys_clk) begin
	if (controllerinjector_bankmachine3_wrport_we)
		storage_5[controllerinjector_bankmachine3_wrport_adr] <= controllerinjector_bankmachine3_wrport_dat_w;
	memadr_6 <= controllerinjector_bankmachine3_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign controllerinjector_bankmachine3_wrport_dat_r = storage_5[memadr_6];
assign controllerinjector_bankmachine3_rdport_dat_r = storage_5[controllerinjector_bankmachine3_rdport_adr];

reg [23:0] storage_6[0:7];
reg [2:0] memadr_7;
always @(posedge sys_clk) begin
	if (controllerinjector_bankmachine4_wrport_we)
		storage_6[controllerinjector_bankmachine4_wrport_adr] <= controllerinjector_bankmachine4_wrport_dat_w;
	memadr_7 <= controllerinjector_bankmachine4_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign controllerinjector_bankmachine4_wrport_dat_r = storage_6[memadr_7];
assign controllerinjector_bankmachine4_rdport_dat_r = storage_6[controllerinjector_bankmachine4_rdport_adr];

reg [23:0] storage_7[0:7];
reg [2:0] memadr_8;
always @(posedge sys_clk) begin
	if (controllerinjector_bankmachine5_wrport_we)
		storage_7[controllerinjector_bankmachine5_wrport_adr] <= controllerinjector_bankmachine5_wrport_dat_w;
	memadr_8 <= controllerinjector_bankmachine5_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign controllerinjector_bankmachine5_wrport_dat_r = storage_7[memadr_8];
assign controllerinjector_bankmachine5_rdport_dat_r = storage_7[controllerinjector_bankmachine5_rdport_adr];

reg [23:0] storage_8[0:7];
reg [2:0] memadr_9;
always @(posedge sys_clk) begin
	if (controllerinjector_bankmachine6_wrport_we)
		storage_8[controllerinjector_bankmachine6_wrport_adr] <= controllerinjector_bankmachine6_wrport_dat_w;
	memadr_9 <= controllerinjector_bankmachine6_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign controllerinjector_bankmachine6_wrport_dat_r = storage_8[memadr_9];
assign controllerinjector_bankmachine6_rdport_dat_r = storage_8[controllerinjector_bankmachine6_rdport_adr];

reg [23:0] storage_9[0:7];
reg [2:0] memadr_10;
always @(posedge sys_clk) begin
	if (controllerinjector_bankmachine7_wrport_we)
		storage_9[controllerinjector_bankmachine7_wrport_adr] <= controllerinjector_bankmachine7_wrport_dat_w;
	memadr_10 <= controllerinjector_bankmachine7_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign controllerinjector_bankmachine7_wrport_dat_r = storage_9[memadr_10];
assign controllerinjector_bankmachine7_rdport_dat_r = storage_9[controllerinjector_bankmachine7_rdport_adr];

reg [63:0] data_mem[0:1023];
reg [9:0] memadr_11;
always @(posedge sys_clk) begin
	if (data_port_we[0])
		data_mem[data_port_adr][7:0] <= data_port_dat_w[7:0];
	if (data_port_we[1])
		data_mem[data_port_adr][15:8] <= data_port_dat_w[15:8];
	if (data_port_we[2])
		data_mem[data_port_adr][23:16] <= data_port_dat_w[23:16];
	if (data_port_we[3])
		data_mem[data_port_adr][31:24] <= data_port_dat_w[31:24];
	if (data_port_we[4])
		data_mem[data_port_adr][39:32] <= data_port_dat_w[39:32];
	if (data_port_we[5])
		data_mem[data_port_adr][47:40] <= data_port_dat_w[47:40];
	if (data_port_we[6])
		data_mem[data_port_adr][55:48] <= data_port_dat_w[55:48];
	if (data_port_we[7])
		data_mem[data_port_adr][63:56] <= data_port_dat_w[63:56];
	memadr_11 <= data_port_adr;
end

assign data_port_dat_r = data_mem[memadr_11];

reg [21:0] tag_mem[0:1023];
reg [9:0] memadr_12;
always @(posedge sys_clk) begin
	if (tag_port_we)
		tag_mem[tag_port_adr] <= tag_port_dat_w;
	memadr_12 <= tag_port_adr;
end

assign tag_port_dat_r = tag_mem[memadr_12];

FDPE #(
	.INIT(1'd1)
) FDPE (
	.C(por_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(xilinxasyncresetsynchronizerimpl0),
	.Q(xilinxasyncresetsynchronizerimpl0_rst_meta)
);

FDPE #(
	.INIT(1'd1)
) FDPE_1 (
	.C(por_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl0_rst_meta),
	.PRE(xilinxasyncresetsynchronizerimpl0),
	.Q(por_rst)
);

FDPE #(
	.INIT(1'd1)
) FDPE_2 (
	.C(sys_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(xilinxasyncresetsynchronizerimpl1),
	.Q(xilinxasyncresetsynchronizerimpl1_rst_meta)
);

FDPE #(
	.INIT(1'd1)
) FDPE_3 (
	.C(sys_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl1_rst_meta),
	.PRE(xilinxasyncresetsynchronizerimpl1),
	.Q(sys_rst)
);

FDPE #(
	.INIT(1'd1)
) FDPE_4 (
	.C(base50_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(xilinxasyncresetsynchronizerimpl2),
	.Q(xilinxasyncresetsynchronizerimpl2_rst_meta)
);

FDPE #(
	.INIT(1'd1)
) FDPE_5 (
	.C(base50_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl2_rst_meta),
	.PRE(xilinxasyncresetsynchronizerimpl2),
	.Q(base50_rst)
);

FDPE #(
	.INIT(1'd1)
) FDPE_6 (
	.C(encoder_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(sys_rst),
	.Q(xilinxasyncresetsynchronizerimpl3_rst_meta)
);

FDPE #(
	.INIT(1'd1)
) FDPE_7 (
	.C(encoder_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl3_rst_meta),
	.PRE(sys_rst),
	.Q(encoder_rst)
);

endmodule
