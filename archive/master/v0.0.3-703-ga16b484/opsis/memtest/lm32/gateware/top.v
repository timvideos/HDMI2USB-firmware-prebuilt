/* Machine-generated using LiteX gen */
module top(
	input clk100,
	input cpu_reset,
	output ddram_clock_p,
	output ddram_clock_n,
	inout opsis_i2c_scl,
	inout opsis_i2c_sda,
	inout fx2_reset,
	output fx2_serial_tx,
	input fx2_serial_rx,
	output spiflash4x_cs_n,
	output spiflash4x_clk,
	inout [3:0] spiflash4x_dq,
	input pwrsw,
	output hdled,
	output pwled,
	output reg ddram_cke,
	output reg ddram_ras_n,
	output reg ddram_cas_n,
	output reg ddram_we_n,
	output reg [2:0] ddram_ba,
	output reg [14:0] ddram_a,
	inout [15:0] ddram_dq,
	output [1:0] ddram_dqs,
	output [1:0] ddram_dqs_n,
	output [1:0] ddram_dm,
	output reg ddram_odt,
	output reg ddram_reset_n,
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

wire [29:0] memtestsoc_ibus_adr;
wire [31:0] memtestsoc_ibus_dat_w;
wire [31:0] memtestsoc_ibus_dat_r;
wire [3:0] memtestsoc_ibus_sel;
wire memtestsoc_ibus_cyc;
wire memtestsoc_ibus_stb;
wire memtestsoc_ibus_ack;
wire memtestsoc_ibus_we;
wire [2:0] memtestsoc_ibus_cti;
wire [1:0] memtestsoc_ibus_bte;
wire memtestsoc_ibus_err;
wire [29:0] memtestsoc_dbus_adr;
wire [31:0] memtestsoc_dbus_dat_w;
wire [31:0] memtestsoc_dbus_dat_r;
wire [3:0] memtestsoc_dbus_sel;
wire memtestsoc_dbus_cyc;
wire memtestsoc_dbus_stb;
wire memtestsoc_dbus_ack;
wire memtestsoc_dbus_we;
wire [2:0] memtestsoc_dbus_cti;
wire [1:0] memtestsoc_dbus_bte;
wire memtestsoc_dbus_err;
reg [31:0] memtestsoc_interrupt = 32'd0;
wire [31:0] memtestsoc_i_adr_o;
wire [31:0] memtestsoc_d_adr_o;
wire [29:0] memtestsoc_rom_bus_adr;
wire [31:0] memtestsoc_rom_bus_dat_w;
wire [31:0] memtestsoc_rom_bus_dat_r;
wire [3:0] memtestsoc_rom_bus_sel;
wire memtestsoc_rom_bus_cyc;
wire memtestsoc_rom_bus_stb;
reg memtestsoc_rom_bus_ack = 1'd0;
wire memtestsoc_rom_bus_we;
wire [2:0] memtestsoc_rom_bus_cti;
wire [1:0] memtestsoc_rom_bus_bte;
reg memtestsoc_rom_bus_err = 1'd0;
wire [12:0] memtestsoc_rom_adr;
wire [31:0] memtestsoc_rom_dat_r;
wire [29:0] memtestsoc_sram_bus_adr;
wire [31:0] memtestsoc_sram_bus_dat_w;
wire [31:0] memtestsoc_sram_bus_dat_r;
wire [3:0] memtestsoc_sram_bus_sel;
wire memtestsoc_sram_bus_cyc;
wire memtestsoc_sram_bus_stb;
reg memtestsoc_sram_bus_ack = 1'd0;
wire memtestsoc_sram_bus_we;
wire [2:0] memtestsoc_sram_bus_cti;
wire [1:0] memtestsoc_sram_bus_bte;
reg memtestsoc_sram_bus_err = 1'd0;
wire [11:0] memtestsoc_sram_adr;
wire [31:0] memtestsoc_sram_dat_r;
reg [3:0] memtestsoc_sram_we = 4'd0;
wire [31:0] memtestsoc_sram_dat_w;
reg [13:0] memtestsoc_interface_adr = 14'd0;
reg memtestsoc_interface_we = 1'd0;
reg [7:0] memtestsoc_interface_dat_w = 8'd0;
wire [7:0] memtestsoc_interface_dat_r;
wire [29:0] memtestsoc_bus_wishbone_adr;
wire [31:0] memtestsoc_bus_wishbone_dat_w;
reg [31:0] memtestsoc_bus_wishbone_dat_r = 32'd0;
wire [3:0] memtestsoc_bus_wishbone_sel;
wire memtestsoc_bus_wishbone_cyc;
wire memtestsoc_bus_wishbone_stb;
reg memtestsoc_bus_wishbone_ack = 1'd0;
wire memtestsoc_bus_wishbone_we;
wire [2:0] memtestsoc_bus_wishbone_cti;
wire [1:0] memtestsoc_bus_wishbone_bte;
reg memtestsoc_bus_wishbone_err = 1'd0;
reg [1:0] memtestsoc_counter = 2'd0;
reg [31:0] memtestsoc_load_storage_full = 32'd0;
wire [31:0] memtestsoc_load_storage;
reg memtestsoc_load_re = 1'd0;
reg [31:0] memtestsoc_reload_storage_full = 32'd0;
wire [31:0] memtestsoc_reload_storage;
reg memtestsoc_reload_re = 1'd0;
reg memtestsoc_en_storage_full = 1'd0;
wire memtestsoc_en_storage;
reg memtestsoc_en_re = 1'd0;
wire memtestsoc_update_value_re;
wire memtestsoc_update_value_r;
reg memtestsoc_update_value_w = 1'd0;
reg [31:0] memtestsoc_value_status = 32'd0;
wire memtestsoc_irq;
wire memtestsoc_zero_status;
reg memtestsoc_zero_pending = 1'd0;
wire memtestsoc_zero_trigger;
reg memtestsoc_zero_clear = 1'd0;
reg memtestsoc_zero_old_trigger = 1'd0;
wire memtestsoc_eventmanager_status_re;
wire memtestsoc_eventmanager_status_r;
wire memtestsoc_eventmanager_status_w;
wire memtestsoc_eventmanager_pending_re;
wire memtestsoc_eventmanager_pending_r;
wire memtestsoc_eventmanager_pending_w;
reg memtestsoc_eventmanager_storage_full = 1'd0;
wire memtestsoc_eventmanager_storage;
reg memtestsoc_eventmanager_re = 1'd0;
reg [31:0] memtestsoc_value = 32'd0;
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
wire sys2x_clk;
wire sys2x_rst;
wire sdram_half_clk;
reg sdram_half_rst = 1'd0;
wire sdram_full_wr_clk;
wire sdram_full_rd_clk;
wire base50_clk;
wire base50_rst;
wire encoder_clk;
wire encoder_rst;
wire crg_reset;
wire crg_clk100a;
wire crg_clk100b;
wire crg_unbuf_sdram_full;
wire crg_unbuf_sdram_half_a;
wire crg_unbuf_sdram_half_b;
wire crg_unbuf_encoder;
wire crg_unbuf_sys;
wire crg_unbuf_sys2x;
wire crg_pll_lckd;
wire crg_pll_fb;
wire por_clk;
wire por_rst;
reg [10:0] crg_por = 11'd2047;
wire crg_clk8x_wr_strb;
wire crg_clk8x_rd_strb;
wire crg_clk_sdram_half_shifted;
wire crg_output_clk;
wire crg_dcm_base50_locked;
reg [56:0] dna_status = 57'd0;
wire dna_do;
reg [6:0] dna_cnt = 7'd0;
wire [159:0] git_status;
wire [63:0] platform_status;
wire [63:0] target_status;
wire opsis_i2c_i2cpads0_sda_o;
wire opsis_i2c_i2cpads0_sda_oe;
reg opsis_i2c_i2cpads0_sda_i = 1'd0;
wire opsis_i2c_i2cpads0_scl_o;
wire opsis_i2c_i2cpads0_scl_oe;
reg opsis_i2c_i2cpads0_scl_i = 1'd0;
reg [7:0] opsis_i2c_master_storage_full = 8'd1;
wire [7:0] opsis_i2c_master_storage;
reg opsis_i2c_master_re = 1'd0;
wire opsis_i2c_master_status;
wire opsis_i2c_fx2_reset_o;
wire opsis_i2c_fx2_reset_oe;
wire opsis_i2c_fx2_reset_i;
reg opsis_i2c_fx2_reset_storage_full = 1'd0;
wire opsis_i2c_fx2_reset_storage;
reg opsis_i2c_fx2_reset_re = 1'd0;
wire opsis_i2c_i2cpads1_sda_o;
wire opsis_i2c_i2cpads1_sda_oe;
reg opsis_i2c_i2cpads1_sda_i = 1'd0;
wire opsis_i2c_i2cpads1_scl_o;
wire opsis_i2c_i2cpads1_scl_oe;
reg opsis_i2c_i2cpads1_scl_i = 1'd0;
reg [7:0] opsis_i2c_shift_reg_storage_full = 8'd0;
wire [7:0] opsis_i2c_shift_reg_storage;
reg opsis_i2c_shift_reg_re = 1'd0;
reg opsis_i2c_shift_reg_we = 1'd0;
reg [7:0] opsis_i2c_shift_reg_dat_w = 8'd0;
reg [1:0] opsis_i2c_status_storage_full = 2'd2;
wire [1:0] opsis_i2c_status_storage;
reg opsis_i2c_status_re = 1'd0;
reg opsis_i2c_status_we = 1'd0;
reg [1:0] opsis_i2c_status_dat_w = 2'd0;
reg [6:0] opsis_i2c_slave_addr_storage_full = 7'd0;
wire [6:0] opsis_i2c_slave_addr_storage;
reg opsis_i2c_slave_addr_re = 1'd0;
wire opsis_i2c_scl_raw;
reg opsis_i2c_sda_i = 1'd0;
wire opsis_i2c_sda_raw;
reg opsis_i2c_sda_drv = 1'd0;
wire opsis_i2c_scl_drv;
reg opsis_i2c_sda_drv_reg = 1'd0;
wire opsis_i2c_sda_i_async;
wire opsis_i2c_scl_i_async;
reg opsis_i2c_scl_drv_reg = 1'd0;
wire opsis_i2c_sda_o;
wire opsis_i2c_shift_reg_full;
wire opsis_i2c_shift_reg_empty;
reg opsis_i2c_scl_i = 1'd0;
reg [2:0] opsis_i2c_samp_count = 3'd0;
reg opsis_i2c_samp_carry = 1'd0;
reg opsis_i2c_scl_r = 1'd0;
reg opsis_i2c_sda_r = 1'd0;
wire opsis_i2c_scl_rising;
wire opsis_i2c_scl_falling;
wire opsis_i2c_sda_rising;
wire opsis_i2c_sda_falling;
wire opsis_i2c_start;
reg [7:0] opsis_i2c_din = 8'd0;
reg [3:0] opsis_i2c_counter = 4'd0;
reg opsis_i2c_counter_reset = 1'd0;
reg opsis_i2c_is_read = 1'd0;
reg opsis_i2c_update_is_read = 1'd0;
reg opsis_i2c_data_bit = 1'd0;
reg opsis_i2c_zero_drv = 1'd0;
reg opsis_i2c_data_drv = 1'd0;
reg opsis_i2c_pause_drv = 1'd0;
reg opsis_i2c_data_drv_en = 1'd0;
reg opsis_i2c_data_drv_stop = 1'd0;
reg tx = 1'd1;
wire rx;
reg [31:0] phy_storage = 32'd9895604;
wire phy_sink_valid;
reg phy_sink_ready = 1'd0;
wire phy_sink_last;
wire [7:0] phy_sink_payload_data;
reg phy_uart_clk_txen = 1'd0;
reg [31:0] phy_phase_accumulator_tx = 32'd0;
reg [7:0] phy_tx_reg = 8'd0;
reg [3:0] phy_tx_bitcount = 4'd0;
reg phy_tx_busy = 1'd0;
reg phy_source_valid = 1'd0;
wire phy_source_ready;
reg phy_source_last = 1'd0;
reg [7:0] phy_source_payload_data = 8'd0;
reg phy_uart_clk_rxen = 1'd0;
reg [31:0] phy_phase_accumulator_rx = 32'd0;
wire phy_rx;
reg phy_rx_r = 1'd0;
reg [7:0] phy_rx_reg = 8'd0;
reg [3:0] phy_rx_bitcount = 4'd0;
reg phy_rx_busy = 1'd0;
wire uart_rxtx_re;
wire [7:0] uart_rxtx_r;
wire [7:0] uart_rxtx_w;
wire uart_txfull_status;
wire uart_rxempty_status;
wire uart_irq;
wire uart_tx_status;
reg uart_tx_pending = 1'd0;
wire uart_tx_trigger;
reg uart_tx_clear = 1'd0;
reg uart_tx_old_trigger = 1'd0;
wire uart_rx_status;
reg uart_rx_pending = 1'd0;
wire uart_rx_trigger;
reg uart_rx_clear = 1'd0;
reg uart_rx_old_trigger = 1'd0;
wire uart_status_re;
wire [1:0] uart_status_r;
reg [1:0] uart_status_w = 2'd0;
wire uart_pending_re;
wire [1:0] uart_pending_r;
reg [1:0] uart_pending_w = 2'd0;
reg [1:0] uart_storage_full = 2'd0;
wire [1:0] uart_storage;
reg uart_re = 1'd0;
wire uart_tx_fifo_sink_valid;
wire uart_tx_fifo_sink_ready;
reg uart_tx_fifo_sink_last = 1'd0;
wire [7:0] uart_tx_fifo_sink_payload_data;
wire uart_tx_fifo_source_valid;
wire uart_tx_fifo_source_ready;
wire uart_tx_fifo_source_last;
wire [7:0] uart_tx_fifo_source_payload_data;
wire uart_tx_fifo_syncfifo_we;
wire uart_tx_fifo_syncfifo_writable;
wire uart_tx_fifo_syncfifo_re;
wire uart_tx_fifo_syncfifo_readable;
wire [8:0] uart_tx_fifo_syncfifo_din;
wire [8:0] uart_tx_fifo_syncfifo_dout;
reg [4:0] uart_tx_fifo_level = 5'd0;
reg uart_tx_fifo_replace = 1'd0;
reg [3:0] uart_tx_fifo_produce = 4'd0;
reg [3:0] uart_tx_fifo_consume = 4'd0;
reg [3:0] uart_tx_fifo_wrport_adr = 4'd0;
wire [8:0] uart_tx_fifo_wrport_dat_r;
wire uart_tx_fifo_wrport_we;
wire [8:0] uart_tx_fifo_wrport_dat_w;
wire uart_tx_fifo_do_read;
wire [3:0] uart_tx_fifo_rdport_adr;
wire [8:0] uart_tx_fifo_rdport_dat_r;
wire [7:0] uart_tx_fifo_fifo_in_payload_data;
wire uart_tx_fifo_fifo_in_last;
wire [7:0] uart_tx_fifo_fifo_out_payload_data;
wire uart_tx_fifo_fifo_out_last;
wire uart_rx_fifo_sink_valid;
wire uart_rx_fifo_sink_ready;
wire uart_rx_fifo_sink_last;
wire [7:0] uart_rx_fifo_sink_payload_data;
wire uart_rx_fifo_source_valid;
wire uart_rx_fifo_source_ready;
wire uart_rx_fifo_source_last;
wire [7:0] uart_rx_fifo_source_payload_data;
wire uart_rx_fifo_syncfifo_we;
wire uart_rx_fifo_syncfifo_writable;
wire uart_rx_fifo_syncfifo_re;
wire uart_rx_fifo_syncfifo_readable;
wire [8:0] uart_rx_fifo_syncfifo_din;
wire [8:0] uart_rx_fifo_syncfifo_dout;
reg [4:0] uart_rx_fifo_level = 5'd0;
reg uart_rx_fifo_replace = 1'd0;
reg [3:0] uart_rx_fifo_produce = 4'd0;
reg [3:0] uart_rx_fifo_consume = 4'd0;
reg [3:0] uart_rx_fifo_wrport_adr = 4'd0;
wire [8:0] uart_rx_fifo_wrport_dat_r;
wire uart_rx_fifo_wrport_we;
wire [8:0] uart_rx_fifo_wrport_dat_w;
wire uart_rx_fifo_do_read;
wire [3:0] uart_rx_fifo_rdport_adr;
wire [8:0] uart_rx_fifo_rdport_dat_r;
wire [7:0] uart_rx_fifo_fifo_in_payload_data;
wire uart_rx_fifo_fifo_in_last;
wire [7:0] uart_rx_fifo_fifo_out_payload_data;
wire uart_rx_fifo_fifo_out_last;
wire [29:0] spiflash_bus_adr;
wire [31:0] spiflash_bus_dat_w;
wire [31:0] spiflash_bus_dat_r;
wire [3:0] spiflash_bus_sel;
wire spiflash_bus_cyc;
wire spiflash_bus_stb;
reg spiflash_bus_ack = 1'd0;
wire spiflash_bus_we;
wire [2:0] spiflash_bus_cti;
wire [1:0] spiflash_bus_bte;
reg spiflash_bus_err = 1'd0;
reg spiflash_cs_n = 1'd1;
reg spiflash_clk = 1'd0;
reg spiflash_dq_oe = 1'd0;
wire [3:0] spiflash_o;
wire spiflash_oe;
wire [3:0] spiflash_i0;
reg [31:0] spiflash_sr = 32'd0;
reg [1:0] spiflash_i1 = 2'd0;
reg [3:0] spiflash_dqi = 4'd0;
reg [7:0] spiflash_counter = 8'd0;
wire front_panel_switches;
wire [1:0] front_panel_leds;
wire front_panel_reset;
wire front_panel_switches_status;
reg [1:0] front_panel_leds_storage_full = 2'd0;
wire [1:0] front_panel_leds_storage;
reg front_panel_leds_re = 1'd0;
wire front_panel_wait;
wire front_panel_done;
reg [25:0] front_panel_count = 26'd50000000;
reg [14:0] half_rate_phy_dfi_p0_address = 15'd0;
reg [2:0] half_rate_phy_dfi_p0_bank = 3'd0;
reg half_rate_phy_dfi_p0_cas_n = 1'd1;
reg half_rate_phy_dfi_p0_cs_n = 1'd1;
reg half_rate_phy_dfi_p0_ras_n = 1'd1;
reg half_rate_phy_dfi_p0_we_n = 1'd1;
reg half_rate_phy_dfi_p0_cke = 1'd0;
reg half_rate_phy_dfi_p0_odt = 1'd0;
reg half_rate_phy_dfi_p0_reset_n = 1'd0;
reg [31:0] half_rate_phy_dfi_p0_wrdata = 32'd0;
reg half_rate_phy_dfi_p0_wrdata_en = 1'd0;
reg [3:0] half_rate_phy_dfi_p0_wrdata_mask = 4'd0;
reg half_rate_phy_dfi_p0_rddata_en = 1'd0;
wire [31:0] half_rate_phy_dfi_p0_rddata;
wire half_rate_phy_dfi_p0_rddata_valid;
reg [14:0] half_rate_phy_dfi_p1_address = 15'd0;
reg [2:0] half_rate_phy_dfi_p1_bank = 3'd0;
reg half_rate_phy_dfi_p1_cas_n = 1'd1;
reg half_rate_phy_dfi_p1_cs_n = 1'd1;
reg half_rate_phy_dfi_p1_ras_n = 1'd1;
reg half_rate_phy_dfi_p1_we_n = 1'd1;
reg half_rate_phy_dfi_p1_cke = 1'd0;
reg half_rate_phy_dfi_p1_odt = 1'd0;
reg half_rate_phy_dfi_p1_reset_n = 1'd0;
reg [31:0] half_rate_phy_dfi_p1_wrdata = 32'd0;
wire half_rate_phy_dfi_p1_wrdata_en;
reg [3:0] half_rate_phy_dfi_p1_wrdata_mask = 4'd0;
reg half_rate_phy_dfi_p1_rddata_en = 1'd0;
wire [31:0] half_rate_phy_dfi_p1_rddata;
wire half_rate_phy_dfi_p1_rddata_valid;
wire half_rate_phy_clk4x_wr_strb;
wire half_rate_phy_clk4x_rd_strb;
reg half_rate_phy_phase_sel = 1'd0;
reg half_rate_phy_phase_half = 1'd0;
reg half_rate_phy_phase_sys = 1'd0;
reg [14:0] half_rate_phy_record0_address = 15'd0;
reg [2:0] half_rate_phy_record0_bank = 3'd0;
reg half_rate_phy_record0_cas_n = 1'd0;
reg half_rate_phy_record0_cs_n = 1'd0;
reg half_rate_phy_record0_ras_n = 1'd0;
reg half_rate_phy_record0_we_n = 1'd0;
reg half_rate_phy_record0_cke = 1'd0;
reg half_rate_phy_record0_odt = 1'd0;
reg half_rate_phy_record0_reset_n = 1'd0;
reg [14:0] half_rate_phy_record1_address = 15'd0;
reg [2:0] half_rate_phy_record1_bank = 3'd0;
reg half_rate_phy_record1_cas_n = 1'd0;
reg half_rate_phy_record1_cs_n = 1'd0;
reg half_rate_phy_record1_ras_n = 1'd0;
reg half_rate_phy_record1_we_n = 1'd0;
reg half_rate_phy_record1_cke = 1'd0;
reg half_rate_phy_record1_odt = 1'd0;
reg half_rate_phy_record1_reset_n = 1'd0;
reg [3:0] half_rate_phy_bitslip_cnt = 4'd0;
reg half_rate_phy_bitslip_inc = 1'd0;
wire half_rate_phy_sdram_half_clk_n;
reg half_rate_phy_postamble = 1'd0;
wire half_rate_phy_drive_dqs;
wire half_rate_phy_dqs_t_d0;
wire half_rate_phy_dqs_t_d1;
wire [1:0] half_rate_phy_dqs_o;
wire [1:0] half_rate_phy_dqs_t;
wire [31:0] half_rate_phy_record0_wrdata;
wire half_rate_phy_record0_wrdata_en;
wire [3:0] half_rate_phy_record0_wrdata_mask;
wire half_rate_phy_record0_rddata_en;
wire [31:0] half_rate_phy_record0_rddata;
wire [31:0] half_rate_phy_record1_wrdata;
wire half_rate_phy_record1_wrdata_en;
wire [3:0] half_rate_phy_record1_wrdata_mask;
wire half_rate_phy_record1_rddata_en;
wire [31:0] half_rate_phy_record1_rddata;
reg [31:0] half_rate_phy_record2_wrdata = 32'd0;
reg [3:0] half_rate_phy_record2_wrdata_mask = 4'd0;
reg [31:0] half_rate_phy_record3_wrdata = 32'd0;
reg [3:0] half_rate_phy_record3_wrdata_mask = 4'd0;
wire half_rate_phy_drive_dq;
wire half_rate_phy_drive_dq_n0;
reg half_rate_phy_drive_dq_n1 = 1'd0;
wire [15:0] half_rate_phy_dq_t;
wire [15:0] half_rate_phy_dq_o;
wire [15:0] half_rate_phy_dq_i;
wire half_rate_phy_wrdata_en;
reg [4:0] half_rate_phy_r_drive_dq = 5'd0;
reg half_rate_phy_wrdata_en_d = 1'd0;
reg [5:0] half_rate_phy_r_dfi_wrdata_en = 6'd0;
wire half_rate_phy_rddata_en;
reg [5:0] half_rate_phy_rddata_sr = 6'd0;
wire [14:0] dfi_dfi_p0_address;
wire [2:0] dfi_dfi_p0_bank;
wire dfi_dfi_p0_cas_n;
wire dfi_dfi_p0_cs_n;
wire dfi_dfi_p0_ras_n;
wire dfi_dfi_p0_we_n;
wire dfi_dfi_p0_cke;
wire dfi_dfi_p0_odt;
wire dfi_dfi_p0_reset_n;
wire [31:0] dfi_dfi_p0_wrdata;
wire dfi_dfi_p0_wrdata_en;
wire [3:0] dfi_dfi_p0_wrdata_mask;
wire dfi_dfi_p0_rddata_en;
reg [31:0] dfi_dfi_p0_rddata = 32'd0;
reg dfi_dfi_p0_rddata_valid = 1'd0;
wire [14:0] dfi_dfi_p1_address;
wire [2:0] dfi_dfi_p1_bank;
wire dfi_dfi_p1_cas_n;
wire dfi_dfi_p1_cs_n;
wire dfi_dfi_p1_ras_n;
wire dfi_dfi_p1_we_n;
wire dfi_dfi_p1_cke;
wire dfi_dfi_p1_odt;
wire dfi_dfi_p1_reset_n;
wire [31:0] dfi_dfi_p1_wrdata;
wire dfi_dfi_p1_wrdata_en;
wire [3:0] dfi_dfi_p1_wrdata_mask;
wire dfi_dfi_p1_rddata_en;
reg [31:0] dfi_dfi_p1_rddata = 32'd0;
reg dfi_dfi_p1_rddata_valid = 1'd0;
wire [14:0] dfi_dfi_p2_address;
wire [2:0] dfi_dfi_p2_bank;
wire dfi_dfi_p2_cas_n;
wire dfi_dfi_p2_cs_n;
wire dfi_dfi_p2_ras_n;
wire dfi_dfi_p2_we_n;
wire dfi_dfi_p2_cke;
wire dfi_dfi_p2_odt;
wire dfi_dfi_p2_reset_n;
wire [31:0] dfi_dfi_p2_wrdata;
wire dfi_dfi_p2_wrdata_en;
wire [3:0] dfi_dfi_p2_wrdata_mask;
wire dfi_dfi_p2_rddata_en;
reg [31:0] dfi_dfi_p2_rddata = 32'd0;
reg dfi_dfi_p2_rddata_valid = 1'd0;
wire [14:0] dfi_dfi_p3_address;
wire [2:0] dfi_dfi_p3_bank;
wire dfi_dfi_p3_cas_n;
wire dfi_dfi_p3_cs_n;
wire dfi_dfi_p3_ras_n;
wire dfi_dfi_p3_we_n;
wire dfi_dfi_p3_cke;
wire dfi_dfi_p3_odt;
wire dfi_dfi_p3_reset_n;
wire [31:0] dfi_dfi_p3_wrdata;
wire dfi_dfi_p3_wrdata_en;
wire [3:0] dfi_dfi_p3_wrdata_mask;
wire dfi_dfi_p3_rddata_en;
reg [31:0] dfi_dfi_p3_rddata = 32'd0;
reg dfi_dfi_p3_rddata_valid = 1'd0;
reg phase_sel = 1'd0;
reg phase_sys2x = 1'd0;
reg phase_sys = 1'd0;
reg wr_data_en_d = 1'd0;
reg [31:0] rddata0 = 32'd0;
reg [31:0] rddata1 = 32'd0;
reg [1:0] rddata_valid = 2'd0;
wire [13:0] controllerinjector_inti_p0_address;
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
wire [13:0] controllerinjector_inti_p1_address;
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
wire [13:0] controllerinjector_inti_p2_address;
wire [2:0] controllerinjector_inti_p2_bank;
reg controllerinjector_inti_p2_cas_n = 1'd1;
reg controllerinjector_inti_p2_cs_n = 1'd1;
reg controllerinjector_inti_p2_ras_n = 1'd1;
reg controllerinjector_inti_p2_we_n = 1'd1;
wire controllerinjector_inti_p2_cke;
wire controllerinjector_inti_p2_odt;
wire controllerinjector_inti_p2_reset_n;
wire [31:0] controllerinjector_inti_p2_wrdata;
wire controllerinjector_inti_p2_wrdata_en;
wire [3:0] controllerinjector_inti_p2_wrdata_mask;
wire controllerinjector_inti_p2_rddata_en;
reg [31:0] controllerinjector_inti_p2_rddata = 32'd0;
reg controllerinjector_inti_p2_rddata_valid = 1'd0;
wire [13:0] controllerinjector_inti_p3_address;
wire [2:0] controllerinjector_inti_p3_bank;
reg controllerinjector_inti_p3_cas_n = 1'd1;
reg controllerinjector_inti_p3_cs_n = 1'd1;
reg controllerinjector_inti_p3_ras_n = 1'd1;
reg controllerinjector_inti_p3_we_n = 1'd1;
wire controllerinjector_inti_p3_cke;
wire controllerinjector_inti_p3_odt;
wire controllerinjector_inti_p3_reset_n;
wire [31:0] controllerinjector_inti_p3_wrdata;
wire controllerinjector_inti_p3_wrdata_en;
wire [3:0] controllerinjector_inti_p3_wrdata_mask;
wire controllerinjector_inti_p3_rddata_en;
reg [31:0] controllerinjector_inti_p3_rddata = 32'd0;
reg controllerinjector_inti_p3_rddata_valid = 1'd0;
wire [13:0] controllerinjector_slave_p0_address;
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
wire [13:0] controllerinjector_slave_p1_address;
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
wire [13:0] controllerinjector_slave_p2_address;
wire [2:0] controllerinjector_slave_p2_bank;
wire controllerinjector_slave_p2_cas_n;
wire controllerinjector_slave_p2_cs_n;
wire controllerinjector_slave_p2_ras_n;
wire controllerinjector_slave_p2_we_n;
wire controllerinjector_slave_p2_cke;
wire controllerinjector_slave_p2_odt;
wire controllerinjector_slave_p2_reset_n;
wire [31:0] controllerinjector_slave_p2_wrdata;
wire controllerinjector_slave_p2_wrdata_en;
wire [3:0] controllerinjector_slave_p2_wrdata_mask;
wire controllerinjector_slave_p2_rddata_en;
reg [31:0] controllerinjector_slave_p2_rddata = 32'd0;
reg controllerinjector_slave_p2_rddata_valid = 1'd0;
wire [13:0] controllerinjector_slave_p3_address;
wire [2:0] controllerinjector_slave_p3_bank;
wire controllerinjector_slave_p3_cas_n;
wire controllerinjector_slave_p3_cs_n;
wire controllerinjector_slave_p3_ras_n;
wire controllerinjector_slave_p3_we_n;
wire controllerinjector_slave_p3_cke;
wire controllerinjector_slave_p3_odt;
wire controllerinjector_slave_p3_reset_n;
wire [31:0] controllerinjector_slave_p3_wrdata;
wire controllerinjector_slave_p3_wrdata_en;
wire [3:0] controllerinjector_slave_p3_wrdata_mask;
wire controllerinjector_slave_p3_rddata_en;
reg [31:0] controllerinjector_slave_p3_rddata = 32'd0;
reg controllerinjector_slave_p3_rddata_valid = 1'd0;
reg [13:0] controllerinjector_master_p0_address = 14'd0;
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
reg [13:0] controllerinjector_master_p1_address = 14'd0;
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
reg [13:0] controllerinjector_master_p2_address = 14'd0;
reg [2:0] controllerinjector_master_p2_bank = 3'd0;
reg controllerinjector_master_p2_cas_n = 1'd1;
reg controllerinjector_master_p2_cs_n = 1'd1;
reg controllerinjector_master_p2_ras_n = 1'd1;
reg controllerinjector_master_p2_we_n = 1'd1;
reg controllerinjector_master_p2_cke = 1'd0;
reg controllerinjector_master_p2_odt = 1'd0;
reg controllerinjector_master_p2_reset_n = 1'd0;
reg [31:0] controllerinjector_master_p2_wrdata = 32'd0;
reg controllerinjector_master_p2_wrdata_en = 1'd0;
reg [3:0] controllerinjector_master_p2_wrdata_mask = 4'd0;
reg controllerinjector_master_p2_rddata_en = 1'd0;
wire [31:0] controllerinjector_master_p2_rddata;
wire controllerinjector_master_p2_rddata_valid;
reg [13:0] controllerinjector_master_p3_address = 14'd0;
reg [2:0] controllerinjector_master_p3_bank = 3'd0;
reg controllerinjector_master_p3_cas_n = 1'd1;
reg controllerinjector_master_p3_cs_n = 1'd1;
reg controllerinjector_master_p3_ras_n = 1'd1;
reg controllerinjector_master_p3_we_n = 1'd1;
reg controllerinjector_master_p3_cke = 1'd0;
reg controllerinjector_master_p3_odt = 1'd0;
reg controllerinjector_master_p3_reset_n = 1'd0;
reg [31:0] controllerinjector_master_p3_wrdata = 32'd0;
reg controllerinjector_master_p3_wrdata_en = 1'd0;
reg [3:0] controllerinjector_master_p3_wrdata_mask = 4'd0;
reg controllerinjector_master_p3_rddata_en = 1'd0;
wire [31:0] controllerinjector_master_p3_rddata;
wire controllerinjector_master_p3_rddata_valid;
reg [3:0] controllerinjector_storage_full = 4'd0;
wire [3:0] controllerinjector_storage;
reg controllerinjector_re = 1'd0;
reg [5:0] controllerinjector_phaseinjector0_command_storage_full = 6'd0;
wire [5:0] controllerinjector_phaseinjector0_command_storage;
reg controllerinjector_phaseinjector0_command_re = 1'd0;
wire controllerinjector_phaseinjector0_command_issue_re;
wire controllerinjector_phaseinjector0_command_issue_r;
reg controllerinjector_phaseinjector0_command_issue_w = 1'd0;
reg [13:0] controllerinjector_phaseinjector0_address_storage_full = 14'd0;
wire [13:0] controllerinjector_phaseinjector0_address_storage;
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
reg [13:0] controllerinjector_phaseinjector1_address_storage_full = 14'd0;
wire [13:0] controllerinjector_phaseinjector1_address_storage;
reg controllerinjector_phaseinjector1_address_re = 1'd0;
reg [2:0] controllerinjector_phaseinjector1_baddress_storage_full = 3'd0;
wire [2:0] controllerinjector_phaseinjector1_baddress_storage;
reg controllerinjector_phaseinjector1_baddress_re = 1'd0;
reg [31:0] controllerinjector_phaseinjector1_wrdata_storage_full = 32'd0;
wire [31:0] controllerinjector_phaseinjector1_wrdata_storage;
reg controllerinjector_phaseinjector1_wrdata_re = 1'd0;
reg [31:0] controllerinjector_phaseinjector1_status = 32'd0;
reg [5:0] controllerinjector_phaseinjector2_command_storage_full = 6'd0;
wire [5:0] controllerinjector_phaseinjector2_command_storage;
reg controllerinjector_phaseinjector2_command_re = 1'd0;
wire controllerinjector_phaseinjector2_command_issue_re;
wire controllerinjector_phaseinjector2_command_issue_r;
reg controllerinjector_phaseinjector2_command_issue_w = 1'd0;
reg [13:0] controllerinjector_phaseinjector2_address_storage_full = 14'd0;
wire [13:0] controllerinjector_phaseinjector2_address_storage;
reg controllerinjector_phaseinjector2_address_re = 1'd0;
reg [2:0] controllerinjector_phaseinjector2_baddress_storage_full = 3'd0;
wire [2:0] controllerinjector_phaseinjector2_baddress_storage;
reg controllerinjector_phaseinjector2_baddress_re = 1'd0;
reg [31:0] controllerinjector_phaseinjector2_wrdata_storage_full = 32'd0;
wire [31:0] controllerinjector_phaseinjector2_wrdata_storage;
reg controllerinjector_phaseinjector2_wrdata_re = 1'd0;
reg [31:0] controllerinjector_phaseinjector2_status = 32'd0;
reg [5:0] controllerinjector_phaseinjector3_command_storage_full = 6'd0;
wire [5:0] controllerinjector_phaseinjector3_command_storage;
reg controllerinjector_phaseinjector3_command_re = 1'd0;
wire controllerinjector_phaseinjector3_command_issue_re;
wire controllerinjector_phaseinjector3_command_issue_r;
reg controllerinjector_phaseinjector3_command_issue_w = 1'd0;
reg [13:0] controllerinjector_phaseinjector3_address_storage_full = 14'd0;
wire [13:0] controllerinjector_phaseinjector3_address_storage;
reg controllerinjector_phaseinjector3_address_re = 1'd0;
reg [2:0] controllerinjector_phaseinjector3_baddress_storage_full = 3'd0;
wire [2:0] controllerinjector_phaseinjector3_baddress_storage;
reg controllerinjector_phaseinjector3_baddress_re = 1'd0;
reg [31:0] controllerinjector_phaseinjector3_wrdata_storage_full = 32'd0;
wire [31:0] controllerinjector_phaseinjector3_wrdata_storage;
reg controllerinjector_phaseinjector3_wrdata_re = 1'd0;
reg [31:0] controllerinjector_phaseinjector3_status = 32'd0;
reg [13:0] controllerinjector_dfi_p0_address = 14'd0;
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
reg [13:0] controllerinjector_dfi_p1_address = 14'd0;
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
reg [13:0] controllerinjector_dfi_p2_address = 14'd0;
reg [2:0] controllerinjector_dfi_p2_bank = 3'd0;
reg controllerinjector_dfi_p2_cas_n = 1'd1;
wire controllerinjector_dfi_p2_cs_n;
reg controllerinjector_dfi_p2_ras_n = 1'd1;
reg controllerinjector_dfi_p2_we_n = 1'd1;
wire controllerinjector_dfi_p2_cke;
wire controllerinjector_dfi_p2_odt;
wire controllerinjector_dfi_p2_reset_n;
wire [31:0] controllerinjector_dfi_p2_wrdata;
reg controllerinjector_dfi_p2_wrdata_en = 1'd0;
wire [3:0] controllerinjector_dfi_p2_wrdata_mask;
reg controllerinjector_dfi_p2_rddata_en = 1'd0;
wire [31:0] controllerinjector_dfi_p2_rddata;
wire controllerinjector_dfi_p2_rddata_valid;
reg [13:0] controllerinjector_dfi_p3_address = 14'd0;
reg [2:0] controllerinjector_dfi_p3_bank = 3'd0;
reg controllerinjector_dfi_p3_cas_n = 1'd1;
wire controllerinjector_dfi_p3_cs_n;
reg controllerinjector_dfi_p3_ras_n = 1'd1;
reg controllerinjector_dfi_p3_we_n = 1'd1;
wire controllerinjector_dfi_p3_cke;
wire controllerinjector_dfi_p3_odt;
wire controllerinjector_dfi_p3_reset_n;
wire [31:0] controllerinjector_dfi_p3_wrdata;
reg controllerinjector_dfi_p3_wrdata_en = 1'd0;
wire [3:0] controllerinjector_dfi_p3_wrdata_mask;
reg controllerinjector_dfi_p3_rddata_en = 1'd0;
wire [31:0] controllerinjector_dfi_p3_rddata;
wire controllerinjector_dfi_p3_rddata_valid;
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
reg [127:0] controllerinjector_interface_wdata = 128'd0;
reg [15:0] controllerinjector_interface_wdata_we = 16'd0;
wire [127:0] controllerinjector_interface_rdata;
reg controllerinjector_cmd_valid = 1'd0;
reg controllerinjector_cmd_ready = 1'd0;
reg controllerinjector_cmd_last = 1'd0;
reg [13:0] controllerinjector_cmd_payload_a = 14'd0;
reg [2:0] controllerinjector_cmd_payload_ba = 3'd0;
reg controllerinjector_cmd_payload_cas = 1'd0;
reg controllerinjector_cmd_payload_ras = 1'd0;
reg controllerinjector_cmd_payload_we = 1'd0;
reg controllerinjector_cmd_payload_is_read = 1'd0;
reg controllerinjector_cmd_payload_is_write = 1'd0;
reg controllerinjector_seq_start = 1'd0;
reg controllerinjector_seq_done = 1'd0;
reg [4:0] controllerinjector_counter = 5'd0;
wire controllerinjector_wait;
wire controllerinjector_done;
reg [7:0] controllerinjector_count = 8'd196;
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
reg [13:0] controllerinjector_bankmachine0_cmd_payload_a = 14'd0;
wire [2:0] controllerinjector_bankmachine0_cmd_payload_ba;
reg controllerinjector_bankmachine0_cmd_payload_cas = 1'd0;
reg controllerinjector_bankmachine0_cmd_payload_ras = 1'd0;
reg controllerinjector_bankmachine0_cmd_payload_we = 1'd0;
reg controllerinjector_bankmachine0_cmd_payload_is_cmd = 1'd0;
reg controllerinjector_bankmachine0_cmd_payload_is_read = 1'd0;
reg controllerinjector_bankmachine0_cmd_payload_is_write = 1'd0;
wire controllerinjector_bankmachine0_sink_valid;
wire controllerinjector_bankmachine0_sink_ready;
reg controllerinjector_bankmachine0_sink_last = 1'd0;
wire controllerinjector_bankmachine0_sink_payload_we;
wire [20:0] controllerinjector_bankmachine0_sink_payload_adr;
wire controllerinjector_bankmachine0_source_valid;
wire controllerinjector_bankmachine0_source_ready;
wire controllerinjector_bankmachine0_source_last;
wire controllerinjector_bankmachine0_source_payload_we;
wire [20:0] controllerinjector_bankmachine0_source_payload_adr;
wire controllerinjector_bankmachine0_syncfifo0_we;
wire controllerinjector_bankmachine0_syncfifo0_writable;
wire controllerinjector_bankmachine0_syncfifo0_re;
wire controllerinjector_bankmachine0_syncfifo0_readable;
wire [22:0] controllerinjector_bankmachine0_syncfifo0_din;
wire [22:0] controllerinjector_bankmachine0_syncfifo0_dout;
reg [3:0] controllerinjector_bankmachine0_level = 4'd0;
reg controllerinjector_bankmachine0_replace = 1'd0;
reg [2:0] controllerinjector_bankmachine0_produce = 3'd0;
reg [2:0] controllerinjector_bankmachine0_consume = 3'd0;
reg [2:0] controllerinjector_bankmachine0_wrport_adr = 3'd0;
wire [22:0] controllerinjector_bankmachine0_wrport_dat_r;
wire controllerinjector_bankmachine0_wrport_we;
wire [22:0] controllerinjector_bankmachine0_wrport_dat_w;
wire controllerinjector_bankmachine0_do_read;
wire [2:0] controllerinjector_bankmachine0_rdport_adr;
wire [22:0] controllerinjector_bankmachine0_rdport_dat_r;
wire controllerinjector_bankmachine0_fifo_in_payload_we;
wire [20:0] controllerinjector_bankmachine0_fifo_in_payload_adr;
wire controllerinjector_bankmachine0_fifo_in_last;
wire controllerinjector_bankmachine0_fifo_out_payload_we;
wire [20:0] controllerinjector_bankmachine0_fifo_out_payload_adr;
wire controllerinjector_bankmachine0_fifo_out_last;
reg controllerinjector_bankmachine0_has_openrow = 1'd0;
reg [13:0] controllerinjector_bankmachine0_openrow = 14'd0;
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
reg [13:0] controllerinjector_bankmachine1_cmd_payload_a = 14'd0;
wire [2:0] controllerinjector_bankmachine1_cmd_payload_ba;
reg controllerinjector_bankmachine1_cmd_payload_cas = 1'd0;
reg controllerinjector_bankmachine1_cmd_payload_ras = 1'd0;
reg controllerinjector_bankmachine1_cmd_payload_we = 1'd0;
reg controllerinjector_bankmachine1_cmd_payload_is_cmd = 1'd0;
reg controllerinjector_bankmachine1_cmd_payload_is_read = 1'd0;
reg controllerinjector_bankmachine1_cmd_payload_is_write = 1'd0;
wire controllerinjector_bankmachine1_sink_valid;
wire controllerinjector_bankmachine1_sink_ready;
reg controllerinjector_bankmachine1_sink_last = 1'd0;
wire controllerinjector_bankmachine1_sink_payload_we;
wire [20:0] controllerinjector_bankmachine1_sink_payload_adr;
wire controllerinjector_bankmachine1_source_valid;
wire controllerinjector_bankmachine1_source_ready;
wire controllerinjector_bankmachine1_source_last;
wire controllerinjector_bankmachine1_source_payload_we;
wire [20:0] controllerinjector_bankmachine1_source_payload_adr;
wire controllerinjector_bankmachine1_syncfifo1_we;
wire controllerinjector_bankmachine1_syncfifo1_writable;
wire controllerinjector_bankmachine1_syncfifo1_re;
wire controllerinjector_bankmachine1_syncfifo1_readable;
wire [22:0] controllerinjector_bankmachine1_syncfifo1_din;
wire [22:0] controllerinjector_bankmachine1_syncfifo1_dout;
reg [3:0] controllerinjector_bankmachine1_level = 4'd0;
reg controllerinjector_bankmachine1_replace = 1'd0;
reg [2:0] controllerinjector_bankmachine1_produce = 3'd0;
reg [2:0] controllerinjector_bankmachine1_consume = 3'd0;
reg [2:0] controllerinjector_bankmachine1_wrport_adr = 3'd0;
wire [22:0] controllerinjector_bankmachine1_wrport_dat_r;
wire controllerinjector_bankmachine1_wrport_we;
wire [22:0] controllerinjector_bankmachine1_wrport_dat_w;
wire controllerinjector_bankmachine1_do_read;
wire [2:0] controllerinjector_bankmachine1_rdport_adr;
wire [22:0] controllerinjector_bankmachine1_rdport_dat_r;
wire controllerinjector_bankmachine1_fifo_in_payload_we;
wire [20:0] controllerinjector_bankmachine1_fifo_in_payload_adr;
wire controllerinjector_bankmachine1_fifo_in_last;
wire controllerinjector_bankmachine1_fifo_out_payload_we;
wire [20:0] controllerinjector_bankmachine1_fifo_out_payload_adr;
wire controllerinjector_bankmachine1_fifo_out_last;
reg controllerinjector_bankmachine1_has_openrow = 1'd0;
reg [13:0] controllerinjector_bankmachine1_openrow = 14'd0;
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
reg [13:0] controllerinjector_bankmachine2_cmd_payload_a = 14'd0;
wire [2:0] controllerinjector_bankmachine2_cmd_payload_ba;
reg controllerinjector_bankmachine2_cmd_payload_cas = 1'd0;
reg controllerinjector_bankmachine2_cmd_payload_ras = 1'd0;
reg controllerinjector_bankmachine2_cmd_payload_we = 1'd0;
reg controllerinjector_bankmachine2_cmd_payload_is_cmd = 1'd0;
reg controllerinjector_bankmachine2_cmd_payload_is_read = 1'd0;
reg controllerinjector_bankmachine2_cmd_payload_is_write = 1'd0;
wire controllerinjector_bankmachine2_sink_valid;
wire controllerinjector_bankmachine2_sink_ready;
reg controllerinjector_bankmachine2_sink_last = 1'd0;
wire controllerinjector_bankmachine2_sink_payload_we;
wire [20:0] controllerinjector_bankmachine2_sink_payload_adr;
wire controllerinjector_bankmachine2_source_valid;
wire controllerinjector_bankmachine2_source_ready;
wire controllerinjector_bankmachine2_source_last;
wire controllerinjector_bankmachine2_source_payload_we;
wire [20:0] controllerinjector_bankmachine2_source_payload_adr;
wire controllerinjector_bankmachine2_syncfifo2_we;
wire controllerinjector_bankmachine2_syncfifo2_writable;
wire controllerinjector_bankmachine2_syncfifo2_re;
wire controllerinjector_bankmachine2_syncfifo2_readable;
wire [22:0] controllerinjector_bankmachine2_syncfifo2_din;
wire [22:0] controllerinjector_bankmachine2_syncfifo2_dout;
reg [3:0] controllerinjector_bankmachine2_level = 4'd0;
reg controllerinjector_bankmachine2_replace = 1'd0;
reg [2:0] controllerinjector_bankmachine2_produce = 3'd0;
reg [2:0] controllerinjector_bankmachine2_consume = 3'd0;
reg [2:0] controllerinjector_bankmachine2_wrport_adr = 3'd0;
wire [22:0] controllerinjector_bankmachine2_wrport_dat_r;
wire controllerinjector_bankmachine2_wrport_we;
wire [22:0] controllerinjector_bankmachine2_wrport_dat_w;
wire controllerinjector_bankmachine2_do_read;
wire [2:0] controllerinjector_bankmachine2_rdport_adr;
wire [22:0] controllerinjector_bankmachine2_rdport_dat_r;
wire controllerinjector_bankmachine2_fifo_in_payload_we;
wire [20:0] controllerinjector_bankmachine2_fifo_in_payload_adr;
wire controllerinjector_bankmachine2_fifo_in_last;
wire controllerinjector_bankmachine2_fifo_out_payload_we;
wire [20:0] controllerinjector_bankmachine2_fifo_out_payload_adr;
wire controllerinjector_bankmachine2_fifo_out_last;
reg controllerinjector_bankmachine2_has_openrow = 1'd0;
reg [13:0] controllerinjector_bankmachine2_openrow = 14'd0;
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
reg [13:0] controllerinjector_bankmachine3_cmd_payload_a = 14'd0;
wire [2:0] controllerinjector_bankmachine3_cmd_payload_ba;
reg controllerinjector_bankmachine3_cmd_payload_cas = 1'd0;
reg controllerinjector_bankmachine3_cmd_payload_ras = 1'd0;
reg controllerinjector_bankmachine3_cmd_payload_we = 1'd0;
reg controllerinjector_bankmachine3_cmd_payload_is_cmd = 1'd0;
reg controllerinjector_bankmachine3_cmd_payload_is_read = 1'd0;
reg controllerinjector_bankmachine3_cmd_payload_is_write = 1'd0;
wire controllerinjector_bankmachine3_sink_valid;
wire controllerinjector_bankmachine3_sink_ready;
reg controllerinjector_bankmachine3_sink_last = 1'd0;
wire controllerinjector_bankmachine3_sink_payload_we;
wire [20:0] controllerinjector_bankmachine3_sink_payload_adr;
wire controllerinjector_bankmachine3_source_valid;
wire controllerinjector_bankmachine3_source_ready;
wire controllerinjector_bankmachine3_source_last;
wire controllerinjector_bankmachine3_source_payload_we;
wire [20:0] controllerinjector_bankmachine3_source_payload_adr;
wire controllerinjector_bankmachine3_syncfifo3_we;
wire controllerinjector_bankmachine3_syncfifo3_writable;
wire controllerinjector_bankmachine3_syncfifo3_re;
wire controllerinjector_bankmachine3_syncfifo3_readable;
wire [22:0] controllerinjector_bankmachine3_syncfifo3_din;
wire [22:0] controllerinjector_bankmachine3_syncfifo3_dout;
reg [3:0] controllerinjector_bankmachine3_level = 4'd0;
reg controllerinjector_bankmachine3_replace = 1'd0;
reg [2:0] controllerinjector_bankmachine3_produce = 3'd0;
reg [2:0] controllerinjector_bankmachine3_consume = 3'd0;
reg [2:0] controllerinjector_bankmachine3_wrport_adr = 3'd0;
wire [22:0] controllerinjector_bankmachine3_wrport_dat_r;
wire controllerinjector_bankmachine3_wrport_we;
wire [22:0] controllerinjector_bankmachine3_wrport_dat_w;
wire controllerinjector_bankmachine3_do_read;
wire [2:0] controllerinjector_bankmachine3_rdport_adr;
wire [22:0] controllerinjector_bankmachine3_rdport_dat_r;
wire controllerinjector_bankmachine3_fifo_in_payload_we;
wire [20:0] controllerinjector_bankmachine3_fifo_in_payload_adr;
wire controllerinjector_bankmachine3_fifo_in_last;
wire controllerinjector_bankmachine3_fifo_out_payload_we;
wire [20:0] controllerinjector_bankmachine3_fifo_out_payload_adr;
wire controllerinjector_bankmachine3_fifo_out_last;
reg controllerinjector_bankmachine3_has_openrow = 1'd0;
reg [13:0] controllerinjector_bankmachine3_openrow = 14'd0;
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
reg [13:0] controllerinjector_bankmachine4_cmd_payload_a = 14'd0;
wire [2:0] controllerinjector_bankmachine4_cmd_payload_ba;
reg controllerinjector_bankmachine4_cmd_payload_cas = 1'd0;
reg controllerinjector_bankmachine4_cmd_payload_ras = 1'd0;
reg controllerinjector_bankmachine4_cmd_payload_we = 1'd0;
reg controllerinjector_bankmachine4_cmd_payload_is_cmd = 1'd0;
reg controllerinjector_bankmachine4_cmd_payload_is_read = 1'd0;
reg controllerinjector_bankmachine4_cmd_payload_is_write = 1'd0;
wire controllerinjector_bankmachine4_sink_valid;
wire controllerinjector_bankmachine4_sink_ready;
reg controllerinjector_bankmachine4_sink_last = 1'd0;
wire controllerinjector_bankmachine4_sink_payload_we;
wire [20:0] controllerinjector_bankmachine4_sink_payload_adr;
wire controllerinjector_bankmachine4_source_valid;
wire controllerinjector_bankmachine4_source_ready;
wire controllerinjector_bankmachine4_source_last;
wire controllerinjector_bankmachine4_source_payload_we;
wire [20:0] controllerinjector_bankmachine4_source_payload_adr;
wire controllerinjector_bankmachine4_syncfifo4_we;
wire controllerinjector_bankmachine4_syncfifo4_writable;
wire controllerinjector_bankmachine4_syncfifo4_re;
wire controllerinjector_bankmachine4_syncfifo4_readable;
wire [22:0] controllerinjector_bankmachine4_syncfifo4_din;
wire [22:0] controllerinjector_bankmachine4_syncfifo4_dout;
reg [3:0] controllerinjector_bankmachine4_level = 4'd0;
reg controllerinjector_bankmachine4_replace = 1'd0;
reg [2:0] controllerinjector_bankmachine4_produce = 3'd0;
reg [2:0] controllerinjector_bankmachine4_consume = 3'd0;
reg [2:0] controllerinjector_bankmachine4_wrport_adr = 3'd0;
wire [22:0] controllerinjector_bankmachine4_wrport_dat_r;
wire controllerinjector_bankmachine4_wrport_we;
wire [22:0] controllerinjector_bankmachine4_wrport_dat_w;
wire controllerinjector_bankmachine4_do_read;
wire [2:0] controllerinjector_bankmachine4_rdport_adr;
wire [22:0] controllerinjector_bankmachine4_rdport_dat_r;
wire controllerinjector_bankmachine4_fifo_in_payload_we;
wire [20:0] controllerinjector_bankmachine4_fifo_in_payload_adr;
wire controllerinjector_bankmachine4_fifo_in_last;
wire controllerinjector_bankmachine4_fifo_out_payload_we;
wire [20:0] controllerinjector_bankmachine4_fifo_out_payload_adr;
wire controllerinjector_bankmachine4_fifo_out_last;
reg controllerinjector_bankmachine4_has_openrow = 1'd0;
reg [13:0] controllerinjector_bankmachine4_openrow = 14'd0;
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
reg [13:0] controllerinjector_bankmachine5_cmd_payload_a = 14'd0;
wire [2:0] controllerinjector_bankmachine5_cmd_payload_ba;
reg controllerinjector_bankmachine5_cmd_payload_cas = 1'd0;
reg controllerinjector_bankmachine5_cmd_payload_ras = 1'd0;
reg controllerinjector_bankmachine5_cmd_payload_we = 1'd0;
reg controllerinjector_bankmachine5_cmd_payload_is_cmd = 1'd0;
reg controllerinjector_bankmachine5_cmd_payload_is_read = 1'd0;
reg controllerinjector_bankmachine5_cmd_payload_is_write = 1'd0;
wire controllerinjector_bankmachine5_sink_valid;
wire controllerinjector_bankmachine5_sink_ready;
reg controllerinjector_bankmachine5_sink_last = 1'd0;
wire controllerinjector_bankmachine5_sink_payload_we;
wire [20:0] controllerinjector_bankmachine5_sink_payload_adr;
wire controllerinjector_bankmachine5_source_valid;
wire controllerinjector_bankmachine5_source_ready;
wire controllerinjector_bankmachine5_source_last;
wire controllerinjector_bankmachine5_source_payload_we;
wire [20:0] controllerinjector_bankmachine5_source_payload_adr;
wire controllerinjector_bankmachine5_syncfifo5_we;
wire controllerinjector_bankmachine5_syncfifo5_writable;
wire controllerinjector_bankmachine5_syncfifo5_re;
wire controllerinjector_bankmachine5_syncfifo5_readable;
wire [22:0] controllerinjector_bankmachine5_syncfifo5_din;
wire [22:0] controllerinjector_bankmachine5_syncfifo5_dout;
reg [3:0] controllerinjector_bankmachine5_level = 4'd0;
reg controllerinjector_bankmachine5_replace = 1'd0;
reg [2:0] controllerinjector_bankmachine5_produce = 3'd0;
reg [2:0] controllerinjector_bankmachine5_consume = 3'd0;
reg [2:0] controllerinjector_bankmachine5_wrport_adr = 3'd0;
wire [22:0] controllerinjector_bankmachine5_wrport_dat_r;
wire controllerinjector_bankmachine5_wrport_we;
wire [22:0] controllerinjector_bankmachine5_wrport_dat_w;
wire controllerinjector_bankmachine5_do_read;
wire [2:0] controllerinjector_bankmachine5_rdport_adr;
wire [22:0] controllerinjector_bankmachine5_rdport_dat_r;
wire controllerinjector_bankmachine5_fifo_in_payload_we;
wire [20:0] controllerinjector_bankmachine5_fifo_in_payload_adr;
wire controllerinjector_bankmachine5_fifo_in_last;
wire controllerinjector_bankmachine5_fifo_out_payload_we;
wire [20:0] controllerinjector_bankmachine5_fifo_out_payload_adr;
wire controllerinjector_bankmachine5_fifo_out_last;
reg controllerinjector_bankmachine5_has_openrow = 1'd0;
reg [13:0] controllerinjector_bankmachine5_openrow = 14'd0;
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
reg [13:0] controllerinjector_bankmachine6_cmd_payload_a = 14'd0;
wire [2:0] controllerinjector_bankmachine6_cmd_payload_ba;
reg controllerinjector_bankmachine6_cmd_payload_cas = 1'd0;
reg controllerinjector_bankmachine6_cmd_payload_ras = 1'd0;
reg controllerinjector_bankmachine6_cmd_payload_we = 1'd0;
reg controllerinjector_bankmachine6_cmd_payload_is_cmd = 1'd0;
reg controllerinjector_bankmachine6_cmd_payload_is_read = 1'd0;
reg controllerinjector_bankmachine6_cmd_payload_is_write = 1'd0;
wire controllerinjector_bankmachine6_sink_valid;
wire controllerinjector_bankmachine6_sink_ready;
reg controllerinjector_bankmachine6_sink_last = 1'd0;
wire controllerinjector_bankmachine6_sink_payload_we;
wire [20:0] controllerinjector_bankmachine6_sink_payload_adr;
wire controllerinjector_bankmachine6_source_valid;
wire controllerinjector_bankmachine6_source_ready;
wire controllerinjector_bankmachine6_source_last;
wire controllerinjector_bankmachine6_source_payload_we;
wire [20:0] controllerinjector_bankmachine6_source_payload_adr;
wire controllerinjector_bankmachine6_syncfifo6_we;
wire controllerinjector_bankmachine6_syncfifo6_writable;
wire controllerinjector_bankmachine6_syncfifo6_re;
wire controllerinjector_bankmachine6_syncfifo6_readable;
wire [22:0] controllerinjector_bankmachine6_syncfifo6_din;
wire [22:0] controllerinjector_bankmachine6_syncfifo6_dout;
reg [3:0] controllerinjector_bankmachine6_level = 4'd0;
reg controllerinjector_bankmachine6_replace = 1'd0;
reg [2:0] controllerinjector_bankmachine6_produce = 3'd0;
reg [2:0] controllerinjector_bankmachine6_consume = 3'd0;
reg [2:0] controllerinjector_bankmachine6_wrport_adr = 3'd0;
wire [22:0] controllerinjector_bankmachine6_wrport_dat_r;
wire controllerinjector_bankmachine6_wrport_we;
wire [22:0] controllerinjector_bankmachine6_wrport_dat_w;
wire controllerinjector_bankmachine6_do_read;
wire [2:0] controllerinjector_bankmachine6_rdport_adr;
wire [22:0] controllerinjector_bankmachine6_rdport_dat_r;
wire controllerinjector_bankmachine6_fifo_in_payload_we;
wire [20:0] controllerinjector_bankmachine6_fifo_in_payload_adr;
wire controllerinjector_bankmachine6_fifo_in_last;
wire controllerinjector_bankmachine6_fifo_out_payload_we;
wire [20:0] controllerinjector_bankmachine6_fifo_out_payload_adr;
wire controllerinjector_bankmachine6_fifo_out_last;
reg controllerinjector_bankmachine6_has_openrow = 1'd0;
reg [13:0] controllerinjector_bankmachine6_openrow = 14'd0;
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
reg [13:0] controllerinjector_bankmachine7_cmd_payload_a = 14'd0;
wire [2:0] controllerinjector_bankmachine7_cmd_payload_ba;
reg controllerinjector_bankmachine7_cmd_payload_cas = 1'd0;
reg controllerinjector_bankmachine7_cmd_payload_ras = 1'd0;
reg controllerinjector_bankmachine7_cmd_payload_we = 1'd0;
reg controllerinjector_bankmachine7_cmd_payload_is_cmd = 1'd0;
reg controllerinjector_bankmachine7_cmd_payload_is_read = 1'd0;
reg controllerinjector_bankmachine7_cmd_payload_is_write = 1'd0;
wire controllerinjector_bankmachine7_sink_valid;
wire controllerinjector_bankmachine7_sink_ready;
reg controllerinjector_bankmachine7_sink_last = 1'd0;
wire controllerinjector_bankmachine7_sink_payload_we;
wire [20:0] controllerinjector_bankmachine7_sink_payload_adr;
wire controllerinjector_bankmachine7_source_valid;
wire controllerinjector_bankmachine7_source_ready;
wire controllerinjector_bankmachine7_source_last;
wire controllerinjector_bankmachine7_source_payload_we;
wire [20:0] controllerinjector_bankmachine7_source_payload_adr;
wire controllerinjector_bankmachine7_syncfifo7_we;
wire controllerinjector_bankmachine7_syncfifo7_writable;
wire controllerinjector_bankmachine7_syncfifo7_re;
wire controllerinjector_bankmachine7_syncfifo7_readable;
wire [22:0] controllerinjector_bankmachine7_syncfifo7_din;
wire [22:0] controllerinjector_bankmachine7_syncfifo7_dout;
reg [3:0] controllerinjector_bankmachine7_level = 4'd0;
reg controllerinjector_bankmachine7_replace = 1'd0;
reg [2:0] controllerinjector_bankmachine7_produce = 3'd0;
reg [2:0] controllerinjector_bankmachine7_consume = 3'd0;
reg [2:0] controllerinjector_bankmachine7_wrport_adr = 3'd0;
wire [22:0] controllerinjector_bankmachine7_wrport_dat_r;
wire controllerinjector_bankmachine7_wrport_we;
wire [22:0] controllerinjector_bankmachine7_wrport_dat_w;
wire controllerinjector_bankmachine7_do_read;
wire [2:0] controllerinjector_bankmachine7_rdport_adr;
wire [22:0] controllerinjector_bankmachine7_rdport_dat_r;
wire controllerinjector_bankmachine7_fifo_in_payload_we;
wire [20:0] controllerinjector_bankmachine7_fifo_in_payload_adr;
wire controllerinjector_bankmachine7_fifo_in_last;
wire controllerinjector_bankmachine7_fifo_out_payload_we;
wire [20:0] controllerinjector_bankmachine7_fifo_out_payload_adr;
wire controllerinjector_bankmachine7_fifo_out_last;
reg controllerinjector_bankmachine7_has_openrow = 1'd0;
reg [13:0] controllerinjector_bankmachine7_openrow = 14'd0;
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
wire [13:0] controllerinjector_choose_cmd_cmd_payload_a;
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
wire [13:0] controllerinjector_choose_req_cmd_payload_a;
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
reg [13:0] controllerinjector_nop_a = 14'd0;
reg [2:0] controllerinjector_nop_ba = 3'd0;
reg controllerinjector_nop_cas = 1'd0;
reg controllerinjector_nop_ras = 1'd0;
reg controllerinjector_nop_we = 1'd0;
reg [1:0] controllerinjector_sel0 = 2'd0;
reg [1:0] controllerinjector_sel1 = 2'd0;
reg [1:0] controllerinjector_sel2 = 2'd0;
reg [1:0] controllerinjector_sel3 = 2'd0;
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
reg [7:0] controllerinjector_bandwidth_data_width_status = 8'd128;
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
wire [127:0] port_wdata_payload_data;
wire [15:0] port_wdata_payload_we;
wire port_rdata_valid;
reg port_rdata_ready = 1'd0;
wire [127:0] port_rdata_payload_data;
wire [29:0] interface_adr;
wire [127:0] interface_dat_w;
wire [127:0] interface_dat_r;
wire [15:0] interface_sel;
reg interface_cyc = 1'd0;
reg interface_stb = 1'd0;
reg interface_ack = 1'd0;
reg interface_we = 1'd0;
wire [8:0] data_port_adr;
wire [127:0] data_port_dat_r;
reg [15:0] data_port_we = 16'd0;
reg [127:0] data_port_dat_w = 128'd0;
reg write_from_slave = 1'd0;
reg [1:0] adr_offset_r = 2'd0;
wire [8:0] tag_port_adr;
wire [23:0] tag_port_dat_r;
reg tag_port_we = 1'd0;
wire [23:0] tag_port_dat_w;
wire [22:0] tag_do_tag;
wire tag_do_dirty;
wire [22:0] tag_di_tag;
reg tag_di_dirty = 1'd0;
reg word_clr = 1'd0;
reg word_inc = 1'd0;
reg ethphy_crg_storage_full = 1'd0;
wire ethphy_crg_storage;
reg ethphy_crg_re = 1'd0;
(* keep = "true" *) wire eth_rx_clk;
wire eth_rx_rst;
(* keep = "true" *) wire eth_tx_clk;
wire eth_tx_rst;
wire ethphy_sink_valid;
wire ethphy_sink_ready;
wire ethphy_sink_last;
wire [7:0] ethphy_sink_payload_data;
wire ethphy_sink_payload_last_be;
wire ethphy_sink_payload_error;
reg ethphy_source_valid = 1'd0;
wire ethphy_source_ready;
wire ethphy_source_last;
reg [7:0] ethphy_source_payload_data = 8'd0;
reg ethphy_source_payload_last_be = 1'd0;
reg ethphy_source_payload_error = 1'd0;
wire ethphy_rx_dv;
wire [7:0] ethphy_rxd;
reg [7:0] ethphy_tx_data = 8'd0;
reg ethphy_tx_valid = 1'd0;
reg ethphy_rx_dv_d = 1'd0;
reg [2:0] ethphy_mdio_storage_full = 3'd0;
wire [2:0] ethphy_mdio_storage;
reg ethphy_mdio_re = 1'd0;
wire ethphy_mdio_status;
wire ethphy_mdio_data_w;
wire ethphy_mdio_data_oe;
wire ethphy_mdio_data_r;
wire ethmac_tx_gap_inserter_sink_valid;
reg ethmac_tx_gap_inserter_sink_ready = 1'd0;
wire ethmac_tx_gap_inserter_sink_last;
wire [7:0] ethmac_tx_gap_inserter_sink_payload_data;
wire ethmac_tx_gap_inserter_sink_payload_last_be;
wire ethmac_tx_gap_inserter_sink_payload_error;
reg ethmac_tx_gap_inserter_source_valid = 1'd0;
wire ethmac_tx_gap_inserter_source_ready;
reg ethmac_tx_gap_inserter_source_last = 1'd0;
reg [7:0] ethmac_tx_gap_inserter_source_payload_data = 8'd0;
reg ethmac_tx_gap_inserter_source_payload_last_be = 1'd0;
reg ethmac_tx_gap_inserter_source_payload_error = 1'd0;
reg [3:0] ethmac_tx_gap_inserter_counter = 4'd0;
reg ethmac_tx_gap_inserter_counter_reset = 1'd0;
reg ethmac_tx_gap_inserter_counter_ce = 1'd0;
wire ethmac_rx_gap_checker_sink_valid;
reg ethmac_rx_gap_checker_sink_ready = 1'd0;
wire ethmac_rx_gap_checker_sink_last;
wire [7:0] ethmac_rx_gap_checker_sink_payload_data;
wire ethmac_rx_gap_checker_sink_payload_last_be;
wire ethmac_rx_gap_checker_sink_payload_error;
reg ethmac_rx_gap_checker_source_valid = 1'd0;
wire ethmac_rx_gap_checker_source_ready;
reg ethmac_rx_gap_checker_source_last = 1'd0;
reg [7:0] ethmac_rx_gap_checker_source_payload_data = 8'd0;
reg ethmac_rx_gap_checker_source_payload_last_be = 1'd0;
reg ethmac_rx_gap_checker_source_payload_error = 1'd0;
reg [3:0] ethmac_rx_gap_checker_counter = 4'd0;
reg ethmac_rx_gap_checker_counter_reset = 1'd0;
reg ethmac_rx_gap_checker_counter_ce = 1'd0;
reg ethmac_status = 1'd1;
wire ethmac_preamble_inserter_sink_valid;
reg ethmac_preamble_inserter_sink_ready = 1'd0;
wire ethmac_preamble_inserter_sink_last;
wire [7:0] ethmac_preamble_inserter_sink_payload_data;
wire ethmac_preamble_inserter_sink_payload_last_be;
wire ethmac_preamble_inserter_sink_payload_error;
reg ethmac_preamble_inserter_source_valid = 1'd0;
wire ethmac_preamble_inserter_source_ready;
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
wire ethmac_preamble_checker_sink_last;
wire [7:0] ethmac_preamble_checker_sink_payload_data;
wire ethmac_preamble_checker_sink_payload_last_be;
wire ethmac_preamble_checker_sink_payload_error;
reg ethmac_preamble_checker_source_valid = 1'd0;
wire ethmac_preamble_checker_source_ready;
reg ethmac_preamble_checker_source_last = 1'd0;
wire [7:0] ethmac_preamble_checker_source_payload_data;
wire ethmac_preamble_checker_source_payload_last_be;
reg ethmac_preamble_checker_source_payload_error = 1'd0;
reg [63:0] ethmac_preamble_checker_preamble = 64'd15372286728091293013;
reg [2:0] ethmac_preamble_checker_cnt = 3'd0;
reg ethmac_preamble_checker_clr_cnt = 1'd0;
reg ethmac_preamble_checker_inc_cnt = 1'd0;
reg ethmac_preamble_checker_discard = 1'd0;
reg ethmac_preamble_checker_clr_discard = 1'd0;
reg ethmac_preamble_checker_set_discard = 1'd0;
reg [7:0] ethmac_preamble_checker_ref = 8'd0;
wire ethmac_preamble_checker_match;
wire ethmac_crc32_inserter_sink_valid;
reg ethmac_crc32_inserter_sink_ready = 1'd0;
wire ethmac_crc32_inserter_sink_last;
wire [7:0] ethmac_crc32_inserter_sink_payload_data;
wire ethmac_crc32_inserter_sink_payload_last_be;
wire ethmac_crc32_inserter_sink_payload_error;
reg ethmac_crc32_inserter_source_valid = 1'd0;
wire ethmac_crc32_inserter_source_ready;
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
wire ethmac_crc32_checker_sink_sink_last;
wire [7:0] ethmac_crc32_checker_sink_sink_payload_data;
wire ethmac_crc32_checker_sink_sink_payload_last_be;
wire ethmac_crc32_checker_sink_sink_payload_error;
wire ethmac_crc32_checker_source_source_valid;
wire ethmac_crc32_checker_source_source_ready;
wire ethmac_crc32_checker_source_source_last;
wire [7:0] ethmac_crc32_checker_source_source_payload_data;
wire ethmac_crc32_checker_source_source_payload_last_be;
reg ethmac_crc32_checker_source_source_payload_error = 1'd0;
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
wire ethmac_crc32_checker_syncfifo_sink_last;
wire [7:0] ethmac_crc32_checker_syncfifo_sink_payload_data;
wire ethmac_crc32_checker_syncfifo_sink_payload_last_be;
wire ethmac_crc32_checker_syncfifo_sink_payload_error;
wire ethmac_crc32_checker_syncfifo_source_valid;
wire ethmac_crc32_checker_syncfifo_source_ready;
wire ethmac_crc32_checker_syncfifo_source_last;
wire [7:0] ethmac_crc32_checker_syncfifo_source_payload_data;
wire ethmac_crc32_checker_syncfifo_source_payload_last_be;
wire ethmac_crc32_checker_syncfifo_source_payload_error;
wire ethmac_crc32_checker_syncfifo_syncfifo_we;
wire ethmac_crc32_checker_syncfifo_syncfifo_writable;
wire ethmac_crc32_checker_syncfifo_syncfifo_re;
wire ethmac_crc32_checker_syncfifo_syncfifo_readable;
wire [10:0] ethmac_crc32_checker_syncfifo_syncfifo_din;
wire [10:0] ethmac_crc32_checker_syncfifo_syncfifo_dout;
reg [2:0] ethmac_crc32_checker_syncfifo_level = 3'd0;
reg ethmac_crc32_checker_syncfifo_replace = 1'd0;
reg [2:0] ethmac_crc32_checker_syncfifo_produce = 3'd0;
reg [2:0] ethmac_crc32_checker_syncfifo_consume = 3'd0;
reg [2:0] ethmac_crc32_checker_syncfifo_wrport_adr = 3'd0;
wire [10:0] ethmac_crc32_checker_syncfifo_wrport_dat_r;
wire ethmac_crc32_checker_syncfifo_wrport_we;
wire [10:0] ethmac_crc32_checker_syncfifo_wrport_dat_w;
wire ethmac_crc32_checker_syncfifo_do_read;
wire [2:0] ethmac_crc32_checker_syncfifo_rdport_adr;
wire [10:0] ethmac_crc32_checker_syncfifo_rdport_dat_r;
wire [7:0] ethmac_crc32_checker_syncfifo_fifo_in_payload_data;
wire ethmac_crc32_checker_syncfifo_fifo_in_payload_last_be;
wire ethmac_crc32_checker_syncfifo_fifo_in_payload_error;
wire ethmac_crc32_checker_syncfifo_fifo_in_last;
wire [7:0] ethmac_crc32_checker_syncfifo_fifo_out_payload_data;
wire ethmac_crc32_checker_syncfifo_fifo_out_payload_last_be;
wire ethmac_crc32_checker_syncfifo_fifo_out_payload_error;
wire ethmac_crc32_checker_syncfifo_fifo_out_last;
reg ethmac_crc32_checker_fifo_reset = 1'd0;
wire ethmac_crc32_checker_fifo_in;
wire ethmac_crc32_checker_fifo_out;
wire ethmac_crc32_checker_fifo_full;
wire ethmac_padding_inserter_sink_valid;
reg ethmac_padding_inserter_sink_ready = 1'd0;
wire ethmac_padding_inserter_sink_last;
wire [7:0] ethmac_padding_inserter_sink_payload_data;
wire ethmac_padding_inserter_sink_payload_last_be;
wire ethmac_padding_inserter_sink_payload_error;
reg ethmac_padding_inserter_source_valid = 1'd0;
wire ethmac_padding_inserter_source_ready;
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
wire ethmac_padding_checker_sink_last;
wire [7:0] ethmac_padding_checker_sink_payload_data;
wire ethmac_padding_checker_sink_payload_last_be;
wire ethmac_padding_checker_sink_payload_error;
wire ethmac_padding_checker_source_valid;
wire ethmac_padding_checker_source_ready;
wire ethmac_padding_checker_source_last;
wire [7:0] ethmac_padding_checker_source_payload_data;
wire ethmac_padding_checker_source_payload_last_be;
wire ethmac_padding_checker_source_payload_error;
wire ethmac_tx_last_be_sink_valid;
wire ethmac_tx_last_be_sink_ready;
wire ethmac_tx_last_be_sink_last;
wire [7:0] ethmac_tx_last_be_sink_payload_data;
wire ethmac_tx_last_be_sink_payload_last_be;
wire ethmac_tx_last_be_sink_payload_error;
wire ethmac_tx_last_be_source_valid;
wire ethmac_tx_last_be_source_ready;
wire ethmac_tx_last_be_source_last;
wire [7:0] ethmac_tx_last_be_source_payload_data;
reg ethmac_tx_last_be_source_payload_last_be = 1'd0;
reg ethmac_tx_last_be_source_payload_error = 1'd0;
reg ethmac_tx_last_be_ongoing = 1'd1;
wire ethmac_rx_last_be_sink_valid;
wire ethmac_rx_last_be_sink_ready;
wire ethmac_rx_last_be_sink_last;
wire [7:0] ethmac_rx_last_be_sink_payload_data;
wire ethmac_rx_last_be_sink_payload_last_be;
wire ethmac_rx_last_be_sink_payload_error;
wire ethmac_rx_last_be_source_valid;
wire ethmac_rx_last_be_source_ready;
wire ethmac_rx_last_be_source_last;
wire [7:0] ethmac_rx_last_be_source_payload_data;
reg ethmac_rx_last_be_source_payload_last_be = 1'd0;
wire ethmac_rx_last_be_source_payload_error;
wire ethmac_tx_converter_sink_valid;
wire ethmac_tx_converter_sink_ready;
wire ethmac_tx_converter_sink_last;
wire [31:0] ethmac_tx_converter_sink_payload_data;
wire [3:0] ethmac_tx_converter_sink_payload_last_be;
wire [3:0] ethmac_tx_converter_sink_payload_error;
wire ethmac_tx_converter_source_valid;
wire ethmac_tx_converter_source_ready;
wire ethmac_tx_converter_source_last;
wire [7:0] ethmac_tx_converter_source_payload_data;
wire ethmac_tx_converter_source_payload_last_be;
wire ethmac_tx_converter_source_payload_error;
wire ethmac_tx_converter_converter_sink_valid;
wire ethmac_tx_converter_converter_sink_ready;
wire ethmac_tx_converter_converter_sink_last;
reg [39:0] ethmac_tx_converter_converter_sink_payload_data = 40'd0;
wire ethmac_tx_converter_converter_source_valid;
wire ethmac_tx_converter_converter_source_ready;
wire ethmac_tx_converter_converter_source_last;
reg [9:0] ethmac_tx_converter_converter_source_payload_data = 10'd0;
wire ethmac_tx_converter_converter_source_payload_valid_token_count;
reg [1:0] ethmac_tx_converter_converter_mux = 2'd0;
wire ethmac_tx_converter_converter_last;
wire ethmac_tx_converter_source_source_valid;
wire ethmac_tx_converter_source_source_ready;
wire ethmac_tx_converter_source_source_last;
wire [9:0] ethmac_tx_converter_source_source_payload_data;
wire ethmac_rx_converter_sink_valid;
wire ethmac_rx_converter_sink_ready;
wire ethmac_rx_converter_sink_last;
wire [7:0] ethmac_rx_converter_sink_payload_data;
wire ethmac_rx_converter_sink_payload_last_be;
wire ethmac_rx_converter_sink_payload_error;
wire ethmac_rx_converter_source_valid;
wire ethmac_rx_converter_source_ready;
wire ethmac_rx_converter_source_last;
reg [31:0] ethmac_rx_converter_source_payload_data = 32'd0;
reg [3:0] ethmac_rx_converter_source_payload_last_be = 4'd0;
reg [3:0] ethmac_rx_converter_source_payload_error = 4'd0;
wire ethmac_rx_converter_converter_sink_valid;
wire ethmac_rx_converter_converter_sink_ready;
wire ethmac_rx_converter_converter_sink_last;
wire [9:0] ethmac_rx_converter_converter_sink_payload_data;
wire ethmac_rx_converter_converter_source_valid;
wire ethmac_rx_converter_converter_source_ready;
reg ethmac_rx_converter_converter_source_last = 1'd0;
reg [39:0] ethmac_rx_converter_converter_source_payload_data = 40'd0;
reg [2:0] ethmac_rx_converter_converter_source_payload_valid_token_count = 3'd0;
reg [1:0] ethmac_rx_converter_converter_demux = 2'd0;
wire ethmac_rx_converter_converter_load_part;
reg ethmac_rx_converter_converter_strobe_all = 1'd0;
wire ethmac_rx_converter_source_source_valid;
wire ethmac_rx_converter_source_source_ready;
wire ethmac_rx_converter_source_source_last;
wire [39:0] ethmac_rx_converter_source_source_payload_data;
wire ethmac_tx_cdc_sink_valid;
wire ethmac_tx_cdc_sink_ready;
wire ethmac_tx_cdc_sink_last;
wire [31:0] ethmac_tx_cdc_sink_payload_data;
wire [3:0] ethmac_tx_cdc_sink_payload_last_be;
wire [3:0] ethmac_tx_cdc_sink_payload_error;
wire ethmac_tx_cdc_source_valid;
wire ethmac_tx_cdc_source_ready;
wire ethmac_tx_cdc_source_last;
wire [31:0] ethmac_tx_cdc_source_payload_data;
wire [3:0] ethmac_tx_cdc_source_payload_last_be;
wire [3:0] ethmac_tx_cdc_source_payload_error;
wire ethmac_tx_cdc_asyncfifo_we;
wire ethmac_tx_cdc_asyncfifo_writable;
wire ethmac_tx_cdc_asyncfifo_re;
wire ethmac_tx_cdc_asyncfifo_readable;
wire [40:0] ethmac_tx_cdc_asyncfifo_din;
wire [40:0] ethmac_tx_cdc_asyncfifo_dout;
wire ethmac_tx_cdc_graycounter0_ce;
(* register_balancing = "no" *) reg [6:0] ethmac_tx_cdc_graycounter0_q = 7'd0;
wire [6:0] ethmac_tx_cdc_graycounter0_q_next;
reg [6:0] ethmac_tx_cdc_graycounter0_q_binary = 7'd0;
reg [6:0] ethmac_tx_cdc_graycounter0_q_next_binary = 7'd0;
wire ethmac_tx_cdc_graycounter1_ce;
(* register_balancing = "no" *) reg [6:0] ethmac_tx_cdc_graycounter1_q = 7'd0;
wire [6:0] ethmac_tx_cdc_graycounter1_q_next;
reg [6:0] ethmac_tx_cdc_graycounter1_q_binary = 7'd0;
reg [6:0] ethmac_tx_cdc_graycounter1_q_next_binary = 7'd0;
wire [6:0] ethmac_tx_cdc_produce_rdomain;
wire [6:0] ethmac_tx_cdc_consume_wdomain;
wire [5:0] ethmac_tx_cdc_wrport_adr;
wire [40:0] ethmac_tx_cdc_wrport_dat_r;
wire ethmac_tx_cdc_wrport_we;
wire [40:0] ethmac_tx_cdc_wrport_dat_w;
wire [5:0] ethmac_tx_cdc_rdport_adr;
wire [40:0] ethmac_tx_cdc_rdport_dat_r;
wire [31:0] ethmac_tx_cdc_fifo_in_payload_data;
wire [3:0] ethmac_tx_cdc_fifo_in_payload_last_be;
wire [3:0] ethmac_tx_cdc_fifo_in_payload_error;
wire ethmac_tx_cdc_fifo_in_last;
wire [31:0] ethmac_tx_cdc_fifo_out_payload_data;
wire [3:0] ethmac_tx_cdc_fifo_out_payload_last_be;
wire [3:0] ethmac_tx_cdc_fifo_out_payload_error;
wire ethmac_tx_cdc_fifo_out_last;
wire ethmac_rx_cdc_sink_valid;
wire ethmac_rx_cdc_sink_ready;
wire ethmac_rx_cdc_sink_last;
wire [31:0] ethmac_rx_cdc_sink_payload_data;
wire [3:0] ethmac_rx_cdc_sink_payload_last_be;
wire [3:0] ethmac_rx_cdc_sink_payload_error;
wire ethmac_rx_cdc_source_valid;
wire ethmac_rx_cdc_source_ready;
wire ethmac_rx_cdc_source_last;
wire [31:0] ethmac_rx_cdc_source_payload_data;
wire [3:0] ethmac_rx_cdc_source_payload_last_be;
wire [3:0] ethmac_rx_cdc_source_payload_error;
wire ethmac_rx_cdc_asyncfifo_we;
wire ethmac_rx_cdc_asyncfifo_writable;
wire ethmac_rx_cdc_asyncfifo_re;
wire ethmac_rx_cdc_asyncfifo_readable;
wire [40:0] ethmac_rx_cdc_asyncfifo_din;
wire [40:0] ethmac_rx_cdc_asyncfifo_dout;
wire ethmac_rx_cdc_graycounter0_ce;
(* register_balancing = "no" *) reg [6:0] ethmac_rx_cdc_graycounter0_q = 7'd0;
wire [6:0] ethmac_rx_cdc_graycounter0_q_next;
reg [6:0] ethmac_rx_cdc_graycounter0_q_binary = 7'd0;
reg [6:0] ethmac_rx_cdc_graycounter0_q_next_binary = 7'd0;
wire ethmac_rx_cdc_graycounter1_ce;
(* register_balancing = "no" *) reg [6:0] ethmac_rx_cdc_graycounter1_q = 7'd0;
wire [6:0] ethmac_rx_cdc_graycounter1_q_next;
reg [6:0] ethmac_rx_cdc_graycounter1_q_binary = 7'd0;
reg [6:0] ethmac_rx_cdc_graycounter1_q_next_binary = 7'd0;
wire [6:0] ethmac_rx_cdc_produce_rdomain;
wire [6:0] ethmac_rx_cdc_consume_wdomain;
wire [5:0] ethmac_rx_cdc_wrport_adr;
wire [40:0] ethmac_rx_cdc_wrport_dat_r;
wire ethmac_rx_cdc_wrport_we;
wire [40:0] ethmac_rx_cdc_wrport_dat_w;
wire [5:0] ethmac_rx_cdc_rdport_adr;
wire [40:0] ethmac_rx_cdc_rdport_dat_r;
wire [31:0] ethmac_rx_cdc_fifo_in_payload_data;
wire [3:0] ethmac_rx_cdc_fifo_in_payload_last_be;
wire [3:0] ethmac_rx_cdc_fifo_in_payload_error;
wire ethmac_rx_cdc_fifo_in_last;
wire [31:0] ethmac_rx_cdc_fifo_out_payload_data;
wire [3:0] ethmac_rx_cdc_fifo_out_payload_last_be;
wire [3:0] ethmac_rx_cdc_fifo_out_payload_error;
wire ethmac_rx_cdc_fifo_out_last;
wire ethmac_sink_valid;
wire ethmac_sink_ready;
wire ethmac_sink_last;
wire [31:0] ethmac_sink_payload_data;
wire [3:0] ethmac_sink_payload_last_be;
wire [3:0] ethmac_sink_payload_error;
wire ethmac_source_valid;
wire ethmac_source_ready;
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
wire ethmac_writer_sink_sink_last;
wire [31:0] ethmac_writer_sink_sink_payload_data;
wire [3:0] ethmac_writer_sink_sink_payload_last_be;
wire [3:0] ethmac_writer_sink_sink_payload_error;
wire ethmac_writer_slot_status;
wire [31:0] ethmac_writer_length_status;
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
reg ethmac_writer_fifo_sink_last = 1'd0;
wire ethmac_writer_fifo_sink_payload_slot;
wire [31:0] ethmac_writer_fifo_sink_payload_length;
wire ethmac_writer_fifo_source_valid;
wire ethmac_writer_fifo_source_ready;
wire ethmac_writer_fifo_source_last;
wire ethmac_writer_fifo_source_payload_slot;
wire [31:0] ethmac_writer_fifo_source_payload_length;
wire ethmac_writer_fifo_syncfifo_we;
wire ethmac_writer_fifo_syncfifo_writable;
wire ethmac_writer_fifo_syncfifo_re;
wire ethmac_writer_fifo_syncfifo_readable;
wire [33:0] ethmac_writer_fifo_syncfifo_din;
wire [33:0] ethmac_writer_fifo_syncfifo_dout;
reg [1:0] ethmac_writer_fifo_level = 2'd0;
reg ethmac_writer_fifo_replace = 1'd0;
reg ethmac_writer_fifo_produce = 1'd0;
reg ethmac_writer_fifo_consume = 1'd0;
reg ethmac_writer_fifo_wrport_adr = 1'd0;
wire [33:0] ethmac_writer_fifo_wrport_dat_r;
wire ethmac_writer_fifo_wrport_we;
wire [33:0] ethmac_writer_fifo_wrport_dat_w;
wire ethmac_writer_fifo_do_read;
wire ethmac_writer_fifo_rdport_adr;
wire [33:0] ethmac_writer_fifo_rdport_dat_r;
wire ethmac_writer_fifo_fifo_in_payload_slot;
wire [31:0] ethmac_writer_fifo_fifo_in_payload_length;
wire ethmac_writer_fifo_fifo_in_last;
wire ethmac_writer_fifo_fifo_out_payload_slot;
wire [31:0] ethmac_writer_fifo_fifo_out_payload_length;
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
reg ethmac_reader_source_source_last = 1'd0;
reg [31:0] ethmac_reader_source_source_payload_data = 32'd0;
reg [3:0] ethmac_reader_source_source_payload_last_be = 4'd0;
reg [3:0] ethmac_reader_source_source_payload_error = 4'd0;
wire ethmac_reader_start_re;
wire ethmac_reader_start_r;
reg ethmac_reader_start_w = 1'd0;
wire ethmac_reader_ready_status;
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
reg ethmac_reader_fifo_sink_last = 1'd0;
wire ethmac_reader_fifo_sink_payload_slot;
wire [10:0] ethmac_reader_fifo_sink_payload_length;
wire ethmac_reader_fifo_source_valid;
reg ethmac_reader_fifo_source_ready = 1'd0;
wire ethmac_reader_fifo_source_last;
wire ethmac_reader_fifo_source_payload_slot;
wire [10:0] ethmac_reader_fifo_source_payload_length;
wire ethmac_reader_fifo_syncfifo_we;
wire ethmac_reader_fifo_syncfifo_writable;
wire ethmac_reader_fifo_syncfifo_re;
wire ethmac_reader_fifo_syncfifo_readable;
wire [12:0] ethmac_reader_fifo_syncfifo_din;
wire [12:0] ethmac_reader_fifo_syncfifo_dout;
reg [1:0] ethmac_reader_fifo_level = 2'd0;
reg ethmac_reader_fifo_replace = 1'd0;
reg ethmac_reader_fifo_produce = 1'd0;
reg ethmac_reader_fifo_consume = 1'd0;
reg ethmac_reader_fifo_wrport_adr = 1'd0;
wire [12:0] ethmac_reader_fifo_wrport_dat_r;
wire ethmac_reader_fifo_wrport_we;
wire [12:0] ethmac_reader_fifo_wrport_dat_w;
wire ethmac_reader_fifo_do_read;
wire ethmac_reader_fifo_rdport_adr;
wire [12:0] ethmac_reader_fifo_rdport_dat_r;
wire ethmac_reader_fifo_fifo_in_payload_slot;
wire [10:0] ethmac_reader_fifo_fifo_in_payload_length;
wire ethmac_reader_fifo_fifo_in_last;
wire ethmac_reader_fifo_fifo_out_payload_slot;
wire [10:0] ethmac_reader_fifo_fifo_out_payload_length;
wire ethmac_reader_fifo_fifo_out_last;
reg [10:0] ethmac_reader_counter = 11'd0;
reg ethmac_reader_counter_reset = 1'd0;
reg ethmac_reader_counter_ce = 1'd0;
wire ethmac_reader_last;
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
reg litedramport0_cmd_valid0 = 1'd0;
wire litedramport0_cmd_ready0;
reg litedramport0_cmd_payload_we0 = 1'd0;
reg [23:0] litedramport0_cmd_payload_adr0 = 24'd0;
wire litedramport0_wdata_valid0;
wire litedramport0_wdata_ready0;
wire litedramport0_wdata_last0;
wire [127:0] litedramport0_wdata_payload_data0;
wire [15:0] litedramport0_wdata_payload_we0;
wire litedramport0_rdata_valid;
wire [127:0] litedramport0_rdata_payload_data;
wire litedramport0_cmd_valid1;
reg litedramport0_cmd_ready1 = 1'd0;
wire litedramport0_cmd_payload_we1;
wire [25:0] litedramport0_cmd_payload_adr1;
wire litedramport0_wdata_valid1;
wire litedramport0_wdata_ready1;
reg litedramport0_wdata_last1 = 1'd0;
wire [31:0] litedramport0_wdata_payload_data1;
wire [3:0] litedramport0_wdata_payload_we1;
reg litedramwriteportupconverter_we = 1'd0;
reg [23:0] litedramwriteportupconverter_address = 24'd0;
reg [1:0] litedramwriteportupconverter_counter = 2'd0;
reg litedramwriteportupconverter_counter_reset = 1'd0;
reg litedramwriteportupconverter_counter_ce = 1'd0;
wire litedramwriteportupconverter_sink_valid;
wire litedramwriteportupconverter_sink_ready;
wire litedramwriteportupconverter_sink_last;
wire [31:0] litedramwriteportupconverter_sink_payload_data;
wire [3:0] litedramwriteportupconverter_sink_payload_we;
wire litedramwriteportupconverter_source_valid;
wire litedramwriteportupconverter_source_ready;
wire litedramwriteportupconverter_source_last;
reg [127:0] litedramwriteportupconverter_source_payload_data = 128'd0;
reg [15:0] litedramwriteportupconverter_source_payload_we = 16'd0;
wire litedramwriteportupconverter_converter_sink_valid;
wire litedramwriteportupconverter_converter_sink_ready;
wire litedramwriteportupconverter_converter_sink_last;
wire [35:0] litedramwriteportupconverter_converter_sink_payload_data;
wire litedramwriteportupconverter_converter_source_valid;
wire litedramwriteportupconverter_converter_source_ready;
reg litedramwriteportupconverter_converter_source_last = 1'd0;
reg [143:0] litedramwriteportupconverter_converter_source_payload_data = 144'd0;
reg [2:0] litedramwriteportupconverter_converter_source_payload_valid_token_count = 3'd0;
reg [1:0] litedramwriteportupconverter_converter_demux = 2'd0;
wire litedramwriteportupconverter_converter_load_part;
reg litedramwriteportupconverter_converter_strobe_all = 1'd0;
wire litedramwriteportupconverter_source_source_valid;
wire litedramwriteportupconverter_source_source_ready;
wire litedramwriteportupconverter_source_source_last;
wire [143:0] litedramwriteportupconverter_source_source_payload_data;
wire generator_reset_re;
wire generator_reset_r;
reg generator_reset_w = 1'd0;
wire generator_start_re;
wire generator_start_r;
reg generator_start_w = 1'd0;
wire generator_status;
reg [25:0] generator_base_storage_full = 26'd0;
wire [25:0] generator_base_storage;
reg generator_base_re = 1'd0;
reg [25:0] generator_length_storage_full = 26'd0;
wire [25:0] generator_length_storage;
reg generator_length_re = 1'd0;
wire generator_core_start;
reg generator_core_done = 1'd0;
wire [25:0] generator_core_base;
wire [25:0] generator_core_length;
reg generator_core_sink_sink_valid = 1'd0;
wire generator_core_sink_sink_ready;
wire [25:0] generator_core_sink_sink_payload_address;
wire [31:0] generator_core_sink_sink_payload_data;
wire generator_core_fifo_sink_valid;
wire generator_core_fifo_sink_ready;
reg generator_core_fifo_sink_last = 1'd0;
wire [31:0] generator_core_fifo_sink_payload_data;
wire generator_core_fifo_source_valid;
wire generator_core_fifo_source_ready;
wire generator_core_fifo_source_last;
wire [31:0] generator_core_fifo_source_payload_data;
wire generator_core_fifo_syncfifo_we;
wire generator_core_fifo_syncfifo_writable;
wire generator_core_fifo_syncfifo_re;
wire generator_core_fifo_syncfifo_readable;
wire [32:0] generator_core_fifo_syncfifo_din;
wire [32:0] generator_core_fifo_syncfifo_dout;
reg [4:0] generator_core_fifo_level = 5'd0;
reg generator_core_fifo_replace = 1'd0;
reg [3:0] generator_core_fifo_produce = 4'd0;
reg [3:0] generator_core_fifo_consume = 4'd0;
reg [3:0] generator_core_fifo_wrport_adr = 4'd0;
wire [32:0] generator_core_fifo_wrport_dat_r;
wire generator_core_fifo_wrport_we;
wire [32:0] generator_core_fifo_wrport_dat_w;
wire generator_core_fifo_do_read;
wire [3:0] generator_core_fifo_rdport_adr;
wire [32:0] generator_core_fifo_rdport_dat_r;
wire [31:0] generator_core_fifo_fifo_in_payload_data;
wire generator_core_fifo_fifo_in_last;
wire [31:0] generator_core_fifo_fifo_out_payload_data;
wire generator_core_fifo_fifo_out_last;
reg [31:0] generator_core_o = 32'd0;
reg generator_core_ce = 1'd0;
reg [25:0] generator_core_cmd_counter = 26'd0;
wire generator_core_reset;
wire generator_reset_sync_i;
wire generator_reset_sync_o;
reg generator_reset_sync_toggle_i = 1'd0;
wire generator_reset_sync_toggle_o;
reg generator_reset_sync_toggle_o_r = 1'd0;
wire generator_start_sync_i;
wire generator_start_sync_o;
reg generator_start_sync_toggle_i = 1'd0;
wire generator_start_sync_toggle_o;
reg generator_start_sync_toggle_o_r = 1'd0;
wire generator_done_sync_i;
wire generator_done_sync_o;
wire [25:0] generator_base_sync_i;
reg [25:0] generator_base_sync_o = 26'd0;
reg generator_base_sync_starter = 1'd1;
wire generator_base_sync_ping_i;
wire generator_base_sync_ping_o;
reg generator_base_sync_ping_toggle_i = 1'd0;
wire generator_base_sync_ping_toggle_o;
reg generator_base_sync_ping_toggle_o_r = 1'd0;
wire generator_base_sync_pong_i;
wire generator_base_sync_pong_o;
reg generator_base_sync_pong_toggle_i = 1'd0;
wire generator_base_sync_pong_toggle_o;
reg generator_base_sync_pong_toggle_o_r = 1'd0;
wire generator_base_sync_wait;
wire generator_base_sync_done;
reg [7:0] generator_base_sync_count = 8'd128;
(* register_balancing = "no" *) reg [25:0] generator_base_sync_ibuffer = 26'd0;
wire [25:0] generator_base_sync_obuffer;
wire [25:0] generator_length_sync_i;
reg [25:0] generator_length_sync_o = 26'd0;
reg generator_length_sync_starter = 1'd1;
wire generator_length_sync_ping_i;
wire generator_length_sync_ping_o;
reg generator_length_sync_ping_toggle_i = 1'd0;
wire generator_length_sync_ping_toggle_o;
reg generator_length_sync_ping_toggle_o_r = 1'd0;
wire generator_length_sync_pong_i;
wire generator_length_sync_pong_o;
reg generator_length_sync_pong_toggle_i = 1'd0;
wire generator_length_sync_pong_toggle_o;
reg generator_length_sync_pong_toggle_o_r = 1'd0;
wire generator_length_sync_wait;
wire generator_length_sync_done;
reg [7:0] generator_length_sync_count = 8'd128;
(* register_balancing = "no" *) reg [25:0] generator_length_sync_ibuffer = 26'd0;
wire [25:0] generator_length_sync_obuffer;
reg litedramport1_cmd_valid0 = 1'd0;
wire litedramport1_cmd_ready0;
reg litedramport1_cmd_payload_we0 = 1'd0;
reg [23:0] litedramport1_cmd_payload_adr0 = 24'd0;
wire litedramport1_wdata_ready;
reg [127:0] litedramport1_wdata_payload_data = 128'd0;
reg [15:0] litedramport1_wdata_payload_we = 16'd0;
wire litedramport1_rdata_valid0;
wire litedramport1_rdata_ready0;
reg litedramport1_rdata_last0 = 1'd0;
wire [127:0] litedramport1_rdata_payload_data0;
wire litedramport1_cmd_valid1;
reg litedramport1_cmd_ready1 = 1'd0;
wire litedramport1_cmd_payload_we1;
wire [25:0] litedramport1_cmd_payload_adr1;
reg litedramport1_rdata_valid1 = 1'd0;
wire litedramport1_rdata_ready1;
reg litedramport1_rdata_last1 = 1'd0;
reg [31:0] litedramport1_rdata_payload_data1 = 32'd0;
reg litedramport1_flush = 1'd0;
reg litedramreadportupconverter_cmd_buffer_sink_valid = 1'd0;
wire litedramreadportupconverter_cmd_buffer_sink_ready;
reg litedramreadportupconverter_cmd_buffer_sink_last = 1'd0;
reg [3:0] litedramreadportupconverter_cmd_buffer_sink_payload_sel = 4'd0;
wire litedramreadportupconverter_cmd_buffer_source_valid;
wire litedramreadportupconverter_cmd_buffer_source_ready;
wire litedramreadportupconverter_cmd_buffer_source_last;
wire [3:0] litedramreadportupconverter_cmd_buffer_source_payload_sel;
wire litedramreadportupconverter_cmd_buffer_syncfifo_we;
wire litedramreadportupconverter_cmd_buffer_syncfifo_writable;
wire litedramreadportupconverter_cmd_buffer_syncfifo_re;
wire litedramreadportupconverter_cmd_buffer_syncfifo_readable;
wire [4:0] litedramreadportupconverter_cmd_buffer_syncfifo_din;
wire [4:0] litedramreadportupconverter_cmd_buffer_syncfifo_dout;
reg [2:0] litedramreadportupconverter_cmd_buffer_level = 3'd0;
reg litedramreadportupconverter_cmd_buffer_replace = 1'd0;
reg [1:0] litedramreadportupconverter_cmd_buffer_produce = 2'd0;
reg [1:0] litedramreadportupconverter_cmd_buffer_consume = 2'd0;
reg [1:0] litedramreadportupconverter_cmd_buffer_wrport_adr = 2'd0;
wire [4:0] litedramreadportupconverter_cmd_buffer_wrport_dat_r;
wire litedramreadportupconverter_cmd_buffer_wrport_we;
wire [4:0] litedramreadportupconverter_cmd_buffer_wrport_dat_w;
wire litedramreadportupconverter_cmd_buffer_do_read;
wire [1:0] litedramreadportupconverter_cmd_buffer_rdport_adr;
wire [4:0] litedramreadportupconverter_cmd_buffer_rdport_dat_r;
wire [3:0] litedramreadportupconverter_cmd_buffer_fifo_in_payload_sel;
wire litedramreadportupconverter_cmd_buffer_fifo_in_last;
wire [3:0] litedramreadportupconverter_cmd_buffer_fifo_out_payload_sel;
wire litedramreadportupconverter_cmd_buffer_fifo_out_last;
reg [1:0] litedramreadportupconverter_counter = 2'd0;
reg litedramreadportupconverter_counter_ce = 1'd0;
wire litedramreadportupconverter_rdata_buffer_sink_valid;
wire litedramreadportupconverter_rdata_buffer_sink_ready;
wire litedramreadportupconverter_rdata_buffer_sink_last;
wire [127:0] litedramreadportupconverter_rdata_buffer_sink_payload_data;
wire litedramreadportupconverter_rdata_buffer_source_valid;
wire litedramreadportupconverter_rdata_buffer_source_ready;
wire litedramreadportupconverter_rdata_buffer_source_last;
reg [127:0] litedramreadportupconverter_rdata_buffer_source_payload_data = 128'd0;
wire litedramreadportupconverter_rdata_buffer_pipe_ce;
wire litedramreadportupconverter_rdata_buffer_busy;
reg litedramreadportupconverter_rdata_buffer_valid_n = 1'd0;
reg litedramreadportupconverter_rdata_buffer_last_n = 1'd0;
wire litedramreadportupconverter_rdata_converter_sink_valid;
wire litedramreadportupconverter_rdata_converter_sink_ready;
wire litedramreadportupconverter_rdata_converter_sink_last;
wire [127:0] litedramreadportupconverter_rdata_converter_sink_payload_data;
wire litedramreadportupconverter_rdata_converter_source_valid;
reg litedramreadportupconverter_rdata_converter_source_ready = 1'd0;
wire litedramreadportupconverter_rdata_converter_source_last;
wire [31:0] litedramreadportupconverter_rdata_converter_source_payload_data;
wire litedramreadportupconverter_rdata_converter_converter_sink_valid;
wire litedramreadportupconverter_rdata_converter_converter_sink_ready;
wire litedramreadportupconverter_rdata_converter_converter_sink_last;
reg [127:0] litedramreadportupconverter_rdata_converter_converter_sink_payload_data = 128'd0;
wire litedramreadportupconverter_rdata_converter_converter_source_valid;
wire litedramreadportupconverter_rdata_converter_converter_source_ready;
wire litedramreadportupconverter_rdata_converter_converter_source_last;
reg [31:0] litedramreadportupconverter_rdata_converter_converter_source_payload_data = 32'd0;
wire litedramreadportupconverter_rdata_converter_converter_source_payload_valid_token_count;
reg [1:0] litedramreadportupconverter_rdata_converter_converter_mux = 2'd0;
wire litedramreadportupconverter_rdata_converter_converter_last;
wire litedramreadportupconverter_rdata_converter_source_source_valid;
wire litedramreadportupconverter_rdata_converter_source_source_ready;
wire litedramreadportupconverter_rdata_converter_source_source_last;
wire [31:0] litedramreadportupconverter_rdata_converter_source_source_payload_data;
reg [3:0] litedramreadportupconverter_rdata_chunk = 4'd1;
wire litedramreadportupconverter_rdata_chunk_valid;
wire checker_reset_re;
wire checker_reset_r;
reg checker_reset_w = 1'd0;
wire checker_start_re;
wire checker_start_r;
reg checker_start_w = 1'd0;
reg [25:0] checker_base_storage_full = 26'd0;
wire [25:0] checker_base_storage;
reg checker_base_re = 1'd0;
reg [25:0] checker_length_storage_full = 26'd0;
wire [25:0] checker_length_storage;
reg checker_length_re = 1'd0;
wire checker_done_status;
wire [31:0] checker_err_count_status;
wire checker_core_start;
wire checker_core_done;
wire [25:0] checker_core_base;
wire [25:0] checker_core_length;
reg [31:0] checker_core_err_count = 32'd0;
reg checker_core_sink_sink_valid = 1'd0;
wire checker_core_sink_sink_ready;
wire [25:0] checker_core_sink_sink_payload_address;
wire checker_core_source_source_valid;
reg checker_core_source_source_ready = 1'd0;
wire checker_core_source_source_last;
wire [31:0] checker_core_source_source_payload_data;
wire checker_core_request_enable;
wire checker_core_request_issued;
wire checker_core_data_dequeued;
reg [4:0] checker_core_rsv_level = 5'd0;
wire checker_core_fifo_sink_valid;
wire checker_core_fifo_sink_ready;
wire checker_core_fifo_sink_last;
wire [31:0] checker_core_fifo_sink_payload_data;
wire checker_core_fifo_source_valid;
wire checker_core_fifo_source_ready;
wire checker_core_fifo_source_last;
wire [31:0] checker_core_fifo_source_payload_data;
wire checker_core_fifo_syncfifo_we;
wire checker_core_fifo_syncfifo_writable;
wire checker_core_fifo_syncfifo_re;
wire checker_core_fifo_syncfifo_readable;
wire [32:0] checker_core_fifo_syncfifo_din;
wire [32:0] checker_core_fifo_syncfifo_dout;
reg [4:0] checker_core_fifo_level = 5'd0;
reg checker_core_fifo_replace = 1'd0;
reg [3:0] checker_core_fifo_produce = 4'd0;
reg [3:0] checker_core_fifo_consume = 4'd0;
reg [3:0] checker_core_fifo_wrport_adr = 4'd0;
wire [32:0] checker_core_fifo_wrport_dat_r;
wire checker_core_fifo_wrport_we;
wire [32:0] checker_core_fifo_wrport_dat_w;
wire checker_core_fifo_do_read;
wire [3:0] checker_core_fifo_rdport_adr;
wire [32:0] checker_core_fifo_rdport_dat_r;
wire [31:0] checker_core_fifo_fifo_in_payload_data;
wire checker_core_fifo_fifo_in_last;
wire [31:0] checker_core_fifo_fifo_out_payload_data;
wire checker_core_fifo_fifo_out_last;
reg [31:0] checker_core_o = 32'd0;
reg checker_core_ce = 1'd0;
reg [25:0] checker_core_cmd_counter = 26'd0;
reg [25:0] checker_core_data_counter = 26'd0;
reg checker_core_is_ongoing0 = 1'd0;
reg checker_core_is_ongoing1 = 1'd0;
wire checker_core_reset;
wire checker_reset_sync_i;
wire checker_reset_sync_o;
reg checker_reset_sync_toggle_i = 1'd0;
wire checker_reset_sync_toggle_o;
reg checker_reset_sync_toggle_o_r = 1'd0;
wire checker_start_sync_i;
wire checker_start_sync_o;
reg checker_start_sync_toggle_i = 1'd0;
wire checker_start_sync_toggle_o;
reg checker_start_sync_toggle_o_r = 1'd0;
wire checker_done_sync_i;
wire checker_done_sync_o;
wire [25:0] checker_base_sync_i;
reg [25:0] checker_base_sync_o = 26'd0;
reg checker_base_sync_starter = 1'd1;
wire checker_base_sync_ping_i;
wire checker_base_sync_ping_o;
reg checker_base_sync_ping_toggle_i = 1'd0;
wire checker_base_sync_ping_toggle_o;
reg checker_base_sync_ping_toggle_o_r = 1'd0;
wire checker_base_sync_pong_i;
wire checker_base_sync_pong_o;
reg checker_base_sync_pong_toggle_i = 1'd0;
wire checker_base_sync_pong_toggle_o;
reg checker_base_sync_pong_toggle_o_r = 1'd0;
wire checker_base_sync_wait;
wire checker_base_sync_done;
reg [7:0] checker_base_sync_count = 8'd128;
(* register_balancing = "no" *) reg [25:0] checker_base_sync_ibuffer = 26'd0;
wire [25:0] checker_base_sync_obuffer;
wire [25:0] checker_length_sync_i;
reg [25:0] checker_length_sync_o = 26'd0;
reg checker_length_sync_starter = 1'd1;
wire checker_length_sync_ping_i;
wire checker_length_sync_ping_o;
reg checker_length_sync_ping_toggle_i = 1'd0;
wire checker_length_sync_ping_toggle_o;
reg checker_length_sync_ping_toggle_o_r = 1'd0;
wire checker_length_sync_pong_i;
wire checker_length_sync_pong_o;
reg checker_length_sync_pong_toggle_i = 1'd0;
wire checker_length_sync_pong_toggle_o;
reg checker_length_sync_pong_toggle_o_r = 1'd0;
wire checker_length_sync_wait;
wire checker_length_sync_done;
reg [7:0] checker_length_sync_count = 8'd128;
(* register_balancing = "no" *) reg [25:0] checker_length_sync_ibuffer = 26'd0;
wire [25:0] checker_length_sync_obuffer;
wire [31:0] checker_err_count_sync_i;
reg [31:0] checker_err_count_sync_o = 32'd0;
reg checker_err_count_sync_starter = 1'd1;
wire checker_err_count_sync_ping_i;
wire checker_err_count_sync_ping_o;
reg checker_err_count_sync_ping_toggle_i = 1'd0;
wire checker_err_count_sync_ping_toggle_o;
reg checker_err_count_sync_ping_toggle_o_r = 1'd0;
wire checker_err_count_sync_pong_i;
wire checker_err_count_sync_pong_o;
reg checker_err_count_sync_pong_toggle_i = 1'd0;
wire checker_err_count_sync_pong_toggle_o;
reg checker_err_count_sync_pong_toggle_o_r = 1'd0;
wire checker_err_count_sync_wait;
wire checker_err_count_sync_done;
reg [7:0] checker_err_count_sync_count = 8'd128;
(* register_balancing = "no" *) reg [31:0] checker_err_count_sync_ibuffer = 32'd0;
wire [31:0] checker_err_count_sync_obuffer;
wire data_error;
wire [25:0] data_address;
wire [31:0] data_expected;
wire [31:0] data_actual;
wire frontend_sink_sink_valid;
wire frontend_sink_sink_ready;
reg frontend_sink_sink_last = 1'd0;
wire [90:0] frontend_sink_sink_payload_data;
reg frontend_sink_sink_payload_hit = 1'd0;
wire frontend_source_source_valid;
wire frontend_source_source_ready;
wire frontend_source_source_last;
wire [90:0] frontend_source_source_payload_data;
wire frontend_source_source_payload_hit;
wire frontend_buffer_sink_valid;
wire frontend_buffer_sink_ready;
wire frontend_buffer_sink_last;
wire [90:0] frontend_buffer_sink_payload_data;
wire frontend_buffer_sink_payload_hit;
wire frontend_buffer_source_valid;
wire frontend_buffer_source_ready;
wire frontend_buffer_source_last;
reg [90:0] frontend_buffer_source_payload_data = 91'd0;
reg frontend_buffer_source_payload_hit = 1'd0;
wire frontend_buffer_pipe_ce;
wire frontend_buffer_busy;
reg frontend_buffer_valid_n = 1'd0;
reg frontend_buffer_last_n = 1'd0;
wire frontend_trigger_sink_valid;
wire frontend_trigger_sink_ready;
wire frontend_trigger_sink_last;
wire [90:0] frontend_trigger_sink_payload_data;
wire frontend_trigger_sink_payload_hit;
wire frontend_trigger_source_valid;
wire frontend_trigger_source_ready;
wire frontend_trigger_source_last;
wire [90:0] frontend_trigger_source_payload_data;
reg frontend_trigger_source_payload_hit = 1'd0;
reg [90:0] frontend_trigger_value_storage_full = 91'd0;
wire [90:0] frontend_trigger_value_storage;
reg frontend_trigger_value_re = 1'd0;
reg [90:0] frontend_trigger_mask_storage_full = 91'd0;
wire [90:0] frontend_trigger_mask_storage;
reg frontend_trigger_mask_re = 1'd0;
wire [90:0] frontend_trigger_value;
wire [90:0] frontend_trigger_mask;
wire frontend_subsampler_sink_valid;
wire frontend_subsampler_sink_ready;
wire frontend_subsampler_sink_last;
wire [90:0] frontend_subsampler_sink_payload_data;
wire frontend_subsampler_sink_payload_hit;
wire frontend_subsampler_source_valid;
wire frontend_subsampler_source_ready;
wire frontend_subsampler_source_last;
wire [90:0] frontend_subsampler_source_payload_data;
wire frontend_subsampler_source_payload_hit;
reg [15:0] frontend_subsampler_value_storage_full = 16'd0;
wire [15:0] frontend_subsampler_value_storage;
reg frontend_subsampler_value_re = 1'd0;
wire [15:0] frontend_subsampler_value;
reg [15:0] frontend_subsampler_counter = 16'd0;
wire frontend_subsampler_done;
wire frontend_strideconverter_sink_valid;
wire frontend_strideconverter_sink_ready;
wire frontend_strideconverter_sink_last;
wire [90:0] frontend_strideconverter_sink_payload_data;
wire frontend_strideconverter_sink_payload_hit;
wire frontend_strideconverter_source_valid;
wire frontend_strideconverter_source_ready;
wire frontend_strideconverter_source_last;
wire [90:0] frontend_strideconverter_source_payload_data;
wire frontend_strideconverter_source_payload_hit;
wire frontend_strideconverter_converter_sink_valid;
wire frontend_strideconverter_converter_sink_ready;
wire frontend_strideconverter_converter_sink_last;
wire [91:0] frontend_strideconverter_converter_sink_payload_data;
wire frontend_strideconverter_converter_source_valid;
wire frontend_strideconverter_converter_source_ready;
wire frontend_strideconverter_converter_source_last;
wire [91:0] frontend_strideconverter_converter_source_payload_data;
wire frontend_strideconverter_converter_source_payload_valid_token_count;
wire frontend_strideconverter_source_source_valid;
wire frontend_strideconverter_source_source_ready;
wire frontend_strideconverter_source_source_last;
wire [91:0] frontend_strideconverter_source_source_payload_data;
wire frontend_asyncfifo_sink_valid;
wire frontend_asyncfifo_sink_ready;
wire frontend_asyncfifo_sink_last;
wire [90:0] frontend_asyncfifo_sink_payload_data;
wire frontend_asyncfifo_sink_payload_hit;
wire frontend_asyncfifo_source_valid;
wire frontend_asyncfifo_source_ready;
wire frontend_asyncfifo_source_last;
wire [90:0] frontend_asyncfifo_source_payload_data;
wire frontend_asyncfifo_source_payload_hit;
wire frontend_asyncfifo_asyncfifo_we;
wire frontend_asyncfifo_asyncfifo_writable;
wire frontend_asyncfifo_asyncfifo_re;
wire frontend_asyncfifo_asyncfifo_readable;
wire [92:0] frontend_asyncfifo_asyncfifo_din;
wire [92:0] frontend_asyncfifo_asyncfifo_dout;
wire frontend_asyncfifo_graycounter0_ce;
(* register_balancing = "no" *) reg [3:0] frontend_asyncfifo_graycounter0_q = 4'd0;
wire [3:0] frontend_asyncfifo_graycounter0_q_next;
reg [3:0] frontend_asyncfifo_graycounter0_q_binary = 4'd0;
reg [3:0] frontend_asyncfifo_graycounter0_q_next_binary = 4'd0;
wire frontend_asyncfifo_graycounter1_ce;
(* register_balancing = "no" *) reg [3:0] frontend_asyncfifo_graycounter1_q = 4'd0;
wire [3:0] frontend_asyncfifo_graycounter1_q_next;
reg [3:0] frontend_asyncfifo_graycounter1_q_binary = 4'd0;
reg [3:0] frontend_asyncfifo_graycounter1_q_next_binary = 4'd0;
wire [3:0] frontend_asyncfifo_produce_rdomain;
wire [3:0] frontend_asyncfifo_consume_wdomain;
wire [2:0] frontend_asyncfifo_wrport_adr;
wire [92:0] frontend_asyncfifo_wrport_dat_r;
wire frontend_asyncfifo_wrport_we;
wire [92:0] frontend_asyncfifo_wrport_dat_w;
wire [2:0] frontend_asyncfifo_rdport_adr;
wire [92:0] frontend_asyncfifo_rdport_dat_r;
wire [90:0] frontend_asyncfifo_fifo_in_payload_data;
wire frontend_asyncfifo_fifo_in_payload_hit;
wire frontend_asyncfifo_fifo_in_last;
wire [90:0] frontend_asyncfifo_fifo_out_payload_data;
wire frontend_asyncfifo_fifo_out_payload_hit;
wire frontend_asyncfifo_fifo_out_last;
wire storage_sink_sink_valid;
reg storage_sink_sink_ready = 1'd0;
wire storage_sink_sink_last;
wire [90:0] storage_sink_sink_payload_data;
wire storage_sink_sink_payload_hit;
wire storage_start_re;
wire storage_start_r;
reg storage_start_w = 1'd0;
reg [10:0] storage_length_storage_full = 11'd0;
wire [10:0] storage_length_storage;
reg storage_length_re = 1'd0;
reg [10:0] storage_offset_storage_full = 11'd0;
wire [10:0] storage_offset_storage;
reg storage_offset_re = 1'd0;
reg storage_idle_status = 1'd0;
reg storage_wait_status = 1'd0;
reg storage_run_status = 1'd0;
wire storage_mem_valid_status;
wire storage_mem_ready_re;
wire storage_mem_ready_r;
reg storage_mem_ready_w = 1'd0;
wire [90:0] storage_mem_data_status;
reg storage_mem_sink_valid = 1'd0;
wire storage_mem_sink_ready;
reg storage_mem_sink_last = 1'd0;
reg [90:0] storage_mem_sink_payload_data = 91'd0;
wire storage_mem_source_valid;
reg storage_mem_source_ready = 1'd0;
wire storage_mem_source_last;
wire [90:0] storage_mem_source_payload_data;
wire storage_mem_re;
reg storage_mem_readable = 1'd0;
wire storage_mem_syncfifo_we;
wire storage_mem_syncfifo_writable;
wire storage_mem_syncfifo_re;
wire storage_mem_syncfifo_readable;
wire [91:0] storage_mem_syncfifo_din;
wire [91:0] storage_mem_syncfifo_dout;
reg [10:0] storage_mem_level0 = 11'd0;
reg storage_mem_replace = 1'd0;
reg [9:0] storage_mem_produce = 10'd0;
reg [9:0] storage_mem_consume = 10'd0;
reg [9:0] storage_mem_wrport_adr = 10'd0;
wire [91:0] storage_mem_wrport_dat_r;
wire storage_mem_wrport_we;
wire [91:0] storage_mem_wrport_dat_w;
wire storage_mem_do_read;
wire [9:0] storage_mem_rdport_adr;
wire [91:0] storage_mem_rdport_dat_r;
wire storage_mem_rdport_re;
wire [10:0] storage_mem_level1;
wire [90:0] storage_mem_fifo_in_payload_data;
wire storage_mem_fifo_in_last;
wire [90:0] storage_mem_fifo_out_payload_data;
wire storage_mem_fifo_out_last;
reg opsisi2c_storage_full = 1'd0;
wire opsisi2c_storage;
reg opsisi2c_re = 1'd0;
reg opsisi2c_sda_o = 1'd0;
reg opsisi2c_sda_oe = 1'd0;
wire opsisi2c_sda_i;
reg opsisi2c_scl_o = 1'd0;
reg opsisi2c_scl_oe = 1'd0;
wire opsisi2c_scl_i;
reg [3:0] opsisi2c_state = 4'd0;
reg [3:0] opsisi2c_next_state = 4'd0;
reg [1:0] controllerinjector_refresher_state = 2'd0;
reg [1:0] controllerinjector_refresher_next_state = 2'd0;
reg [2:0] controllerinjector_bankmachine0_state = 3'd0;
reg [2:0] controllerinjector_bankmachine0_next_state = 3'd0;
reg [2:0] controllerinjector_bankmachine1_state = 3'd0;
reg [2:0] controllerinjector_bankmachine1_next_state = 3'd0;
reg [2:0] controllerinjector_bankmachine2_state = 3'd0;
reg [2:0] controllerinjector_bankmachine2_next_state = 3'd0;
reg [2:0] controllerinjector_bankmachine3_state = 3'd0;
reg [2:0] controllerinjector_bankmachine3_next_state = 3'd0;
reg [2:0] controllerinjector_bankmachine4_state = 3'd0;
reg [2:0] controllerinjector_bankmachine4_next_state = 3'd0;
reg [2:0] controllerinjector_bankmachine5_state = 3'd0;
reg [2:0] controllerinjector_bankmachine5_next_state = 3'd0;
reg [2:0] controllerinjector_bankmachine6_state = 3'd0;
reg [2:0] controllerinjector_bankmachine6_next_state = 3'd0;
reg [2:0] controllerinjector_bankmachine7_state = 3'd0;
reg [2:0] controllerinjector_bankmachine7_next_state = 3'd0;
reg [2:0] controllerinjector_multiplexer_state = 3'd0;
reg [2:0] controllerinjector_multiplexer_next_state = 3'd0;
reg [1:0] controllerinjector_state = 2'd0;
reg [1:0] controllerinjector_next_state = 2'd0;
reg litedramwriteportupconverter_we_controllerinjector_next_value0 = 1'd0;
reg litedramwriteportupconverter_we_controllerinjector_next_value_ce0 = 1'd0;
reg [23:0] litedramwriteportupconverter_address_controllerinjector_next_value1 = 24'd0;
reg litedramwriteportupconverter_address_controllerinjector_next_value_ce1 = 1'd0;
wire [2:0] controllerinjector_cba0;
wire [20:0] controllerinjector_rca0;
wire [2:0] controllerinjector_cba1;
wire [20:0] controllerinjector_rca1;
wire [2:0] controllerinjector_cba2;
wire [20:0] controllerinjector_rca2;
wire [2:0] controllerinjector_roundrobin0_request;
reg [1:0] controllerinjector_roundrobin0_grant = 2'd0;
wire controllerinjector_roundrobin0_ce;
wire [2:0] controllerinjector_roundrobin1_request;
reg [1:0] controllerinjector_roundrobin1_grant = 2'd0;
wire controllerinjector_roundrobin1_ce;
wire [2:0] controllerinjector_roundrobin2_request;
reg [1:0] controllerinjector_roundrobin2_grant = 2'd0;
wire controllerinjector_roundrobin2_ce;
wire [2:0] controllerinjector_roundrobin3_request;
reg [1:0] controllerinjector_roundrobin3_grant = 2'd0;
wire controllerinjector_roundrobin3_ce;
wire [2:0] controllerinjector_roundrobin4_request;
reg [1:0] controllerinjector_roundrobin4_grant = 2'd0;
wire controllerinjector_roundrobin4_ce;
wire [2:0] controllerinjector_roundrobin5_request;
reg [1:0] controllerinjector_roundrobin5_grant = 2'd0;
wire controllerinjector_roundrobin5_ce;
wire [2:0] controllerinjector_roundrobin6_request;
reg [1:0] controllerinjector_roundrobin6_grant = 2'd0;
wire controllerinjector_roundrobin6_ce;
wire [2:0] controllerinjector_roundrobin7_request;
reg [1:0] controllerinjector_roundrobin7_grant = 2'd0;
wire controllerinjector_roundrobin7_ce;
reg controllerinjector_new_master_wdata_ready0 = 1'd0;
reg controllerinjector_new_master_wdata_ready1 = 1'd0;
reg controllerinjector_new_master_wdata_ready2 = 1'd0;
reg controllerinjector_new_master_wdata_ready3 = 1'd0;
reg controllerinjector_new_master_wdata_ready4 = 1'd0;
reg controllerinjector_new_master_wdata_ready5 = 1'd0;
reg controllerinjector_new_master_rdata_valid0 = 1'd0;
reg controllerinjector_new_master_rdata_valid1 = 1'd0;
reg controllerinjector_new_master_rdata_valid2 = 1'd0;
reg controllerinjector_new_master_rdata_valid3 = 1'd0;
reg controllerinjector_new_master_rdata_valid4 = 1'd0;
reg controllerinjector_new_master_rdata_valid5 = 1'd0;
reg controllerinjector_new_master_rdata_valid6 = 1'd0;
reg controllerinjector_new_master_rdata_valid7 = 1'd0;
reg controllerinjector_new_master_rdata_valid8 = 1'd0;
reg controllerinjector_new_master_rdata_valid9 = 1'd0;
reg controllerinjector_new_master_rdata_valid10 = 1'd0;
reg controllerinjector_new_master_rdata_valid11 = 1'd0;
reg controllerinjector_new_master_rdata_valid12 = 1'd0;
reg controllerinjector_new_master_rdata_valid13 = 1'd0;
reg controllerinjector_new_master_rdata_valid14 = 1'd0;
reg [2:0] cache_state = 3'd0;
reg [2:0] cache_next_state = 3'd0;
reg [1:0] litedramwishbonebridge_state = 2'd0;
reg [1:0] litedramwishbonebridge_next_state = 2'd0;
reg clockdomainsrenamer0_state = 1'd0;
reg clockdomainsrenamer0_next_state = 1'd0;
reg clockdomainsrenamer1_state = 1'd0;
reg clockdomainsrenamer1_next_state = 1'd0;
reg [1:0] clockdomainsrenamer2_state = 2'd0;
reg [1:0] clockdomainsrenamer2_next_state = 2'd0;
reg [1:0] clockdomainsrenamer3_state = 2'd0;
reg [1:0] clockdomainsrenamer3_next_state = 2'd0;
reg [1:0] clockdomainsrenamer4_state = 2'd0;
reg [1:0] clockdomainsrenamer4_next_state = 2'd0;
reg [1:0] clockdomainsrenamer5_state = 2'd0;
reg [1:0] clockdomainsrenamer5_next_state = 2'd0;
reg clockdomainsrenamer6_state = 1'd0;
reg clockdomainsrenamer6_next_state = 1'd0;
reg [1:0] liteethmacsramwriter_state = 2'd0;
reg [1:0] liteethmacsramwriter_next_state = 2'd0;
reg [1:0] liteethmacsramreader_state = 2'd0;
reg [1:0] liteethmacsramreader_next_state = 2'd0;
reg [1:0] litedrambistgenerator_state = 2'd0;
reg [1:0] litedrambistgenerator_next_state = 2'd0;
reg [25:0] generator_core_cmd_counter_litedrambistgenerator_next_value = 26'd0;
reg generator_core_cmd_counter_litedrambistgenerator_next_value_ce = 1'd0;
reg [1:0] fsm0_state = 2'd0;
reg [1:0] fsm0_next_state = 2'd0;
reg [25:0] checker_core_cmd_counter_fsm0_next_value = 26'd0;
reg checker_core_cmd_counter_fsm0_next_value_ce = 1'd0;
reg [1:0] fsm1_state = 2'd0;
reg [1:0] fsm1_next_state = 2'd0;
reg [25:0] checker_core_data_counter_fsm1_next_value0 = 26'd0;
reg checker_core_data_counter_fsm1_next_value_ce0 = 1'd0;
reg [31:0] checker_core_err_count_fsm1_next_value1 = 32'd0;
reg checker_core_err_count_fsm1_next_value_ce1 = 1'd0;
reg [1:0] litescopeanalyzer_state = 2'd0;
reg [1:0] litescopeanalyzer_next_state = 2'd0;
wire wb_sdram_con_request;
wire wb_sdram_con_grant;
wire [29:0] memtestsoc_shared_adr;
wire [31:0] memtestsoc_shared_dat_w;
wire [31:0] memtestsoc_shared_dat_r;
wire [3:0] memtestsoc_shared_sel;
wire memtestsoc_shared_cyc;
wire memtestsoc_shared_stb;
wire memtestsoc_shared_ack;
wire memtestsoc_shared_we;
wire [2:0] memtestsoc_shared_cti;
wire [1:0] memtestsoc_shared_bte;
wire memtestsoc_shared_err;
wire [1:0] memtestsoc_request;
reg memtestsoc_grant = 1'd0;
reg [5:0] memtestsoc_slave_sel = 6'd0;
reg [5:0] memtestsoc_slave_sel_r = 6'd0;
wire [13:0] memtestsoc_interface0_adr;
wire memtestsoc_interface0_we;
wire [7:0] memtestsoc_interface0_dat_w;
reg [7:0] memtestsoc_interface0_dat_r = 8'd0;
wire memtestsoc_csrbank0_frontend_trigger_value11_re;
wire [2:0] memtestsoc_csrbank0_frontend_trigger_value11_r;
wire [2:0] memtestsoc_csrbank0_frontend_trigger_value11_w;
wire memtestsoc_csrbank0_frontend_trigger_value10_re;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_value10_r;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_value10_w;
wire memtestsoc_csrbank0_frontend_trigger_value9_re;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_value9_r;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_value9_w;
wire memtestsoc_csrbank0_frontend_trigger_value8_re;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_value8_r;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_value8_w;
wire memtestsoc_csrbank0_frontend_trigger_value7_re;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_value7_r;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_value7_w;
wire memtestsoc_csrbank0_frontend_trigger_value6_re;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_value6_r;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_value6_w;
wire memtestsoc_csrbank0_frontend_trigger_value5_re;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_value5_r;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_value5_w;
wire memtestsoc_csrbank0_frontend_trigger_value4_re;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_value4_r;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_value4_w;
wire memtestsoc_csrbank0_frontend_trigger_value3_re;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_value3_r;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_value3_w;
wire memtestsoc_csrbank0_frontend_trigger_value2_re;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_value2_r;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_value2_w;
wire memtestsoc_csrbank0_frontend_trigger_value1_re;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_value1_r;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_value1_w;
wire memtestsoc_csrbank0_frontend_trigger_value0_re;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_value0_r;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_value0_w;
wire memtestsoc_csrbank0_frontend_trigger_mask11_re;
wire [2:0] memtestsoc_csrbank0_frontend_trigger_mask11_r;
wire [2:0] memtestsoc_csrbank0_frontend_trigger_mask11_w;
wire memtestsoc_csrbank0_frontend_trigger_mask10_re;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_mask10_r;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_mask10_w;
wire memtestsoc_csrbank0_frontend_trigger_mask9_re;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_mask9_r;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_mask9_w;
wire memtestsoc_csrbank0_frontend_trigger_mask8_re;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_mask8_r;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_mask8_w;
wire memtestsoc_csrbank0_frontend_trigger_mask7_re;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_mask7_r;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_mask7_w;
wire memtestsoc_csrbank0_frontend_trigger_mask6_re;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_mask6_r;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_mask6_w;
wire memtestsoc_csrbank0_frontend_trigger_mask5_re;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_mask5_r;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_mask5_w;
wire memtestsoc_csrbank0_frontend_trigger_mask4_re;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_mask4_r;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_mask4_w;
wire memtestsoc_csrbank0_frontend_trigger_mask3_re;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_mask3_r;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_mask3_w;
wire memtestsoc_csrbank0_frontend_trigger_mask2_re;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_mask2_r;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_mask2_w;
wire memtestsoc_csrbank0_frontend_trigger_mask1_re;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_mask1_r;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_mask1_w;
wire memtestsoc_csrbank0_frontend_trigger_mask0_re;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_mask0_r;
wire [7:0] memtestsoc_csrbank0_frontend_trigger_mask0_w;
wire memtestsoc_csrbank0_frontend_subsampler_value1_re;
wire [7:0] memtestsoc_csrbank0_frontend_subsampler_value1_r;
wire [7:0] memtestsoc_csrbank0_frontend_subsampler_value1_w;
wire memtestsoc_csrbank0_frontend_subsampler_value0_re;
wire [7:0] memtestsoc_csrbank0_frontend_subsampler_value0_r;
wire [7:0] memtestsoc_csrbank0_frontend_subsampler_value0_w;
wire memtestsoc_csrbank0_storage_length1_re;
wire [2:0] memtestsoc_csrbank0_storage_length1_r;
wire [2:0] memtestsoc_csrbank0_storage_length1_w;
wire memtestsoc_csrbank0_storage_length0_re;
wire [7:0] memtestsoc_csrbank0_storage_length0_r;
wire [7:0] memtestsoc_csrbank0_storage_length0_w;
wire memtestsoc_csrbank0_storage_offset1_re;
wire [2:0] memtestsoc_csrbank0_storage_offset1_r;
wire [2:0] memtestsoc_csrbank0_storage_offset1_w;
wire memtestsoc_csrbank0_storage_offset0_re;
wire [7:0] memtestsoc_csrbank0_storage_offset0_r;
wire [7:0] memtestsoc_csrbank0_storage_offset0_w;
wire memtestsoc_csrbank0_storage_idle_re;
wire memtestsoc_csrbank0_storage_idle_r;
wire memtestsoc_csrbank0_storage_idle_w;
wire memtestsoc_csrbank0_storage_wait_re;
wire memtestsoc_csrbank0_storage_wait_r;
wire memtestsoc_csrbank0_storage_wait_w;
wire memtestsoc_csrbank0_storage_run_re;
wire memtestsoc_csrbank0_storage_run_r;
wire memtestsoc_csrbank0_storage_run_w;
wire memtestsoc_csrbank0_storage_mem_valid_re;
wire memtestsoc_csrbank0_storage_mem_valid_r;
wire memtestsoc_csrbank0_storage_mem_valid_w;
wire memtestsoc_csrbank0_storage_mem_data11_re;
wire [2:0] memtestsoc_csrbank0_storage_mem_data11_r;
wire [2:0] memtestsoc_csrbank0_storage_mem_data11_w;
wire memtestsoc_csrbank0_storage_mem_data10_re;
wire [7:0] memtestsoc_csrbank0_storage_mem_data10_r;
wire [7:0] memtestsoc_csrbank0_storage_mem_data10_w;
wire memtestsoc_csrbank0_storage_mem_data9_re;
wire [7:0] memtestsoc_csrbank0_storage_mem_data9_r;
wire [7:0] memtestsoc_csrbank0_storage_mem_data9_w;
wire memtestsoc_csrbank0_storage_mem_data8_re;
wire [7:0] memtestsoc_csrbank0_storage_mem_data8_r;
wire [7:0] memtestsoc_csrbank0_storage_mem_data8_w;
wire memtestsoc_csrbank0_storage_mem_data7_re;
wire [7:0] memtestsoc_csrbank0_storage_mem_data7_r;
wire [7:0] memtestsoc_csrbank0_storage_mem_data7_w;
wire memtestsoc_csrbank0_storage_mem_data6_re;
wire [7:0] memtestsoc_csrbank0_storage_mem_data6_r;
wire [7:0] memtestsoc_csrbank0_storage_mem_data6_w;
wire memtestsoc_csrbank0_storage_mem_data5_re;
wire [7:0] memtestsoc_csrbank0_storage_mem_data5_r;
wire [7:0] memtestsoc_csrbank0_storage_mem_data5_w;
wire memtestsoc_csrbank0_storage_mem_data4_re;
wire [7:0] memtestsoc_csrbank0_storage_mem_data4_r;
wire [7:0] memtestsoc_csrbank0_storage_mem_data4_w;
wire memtestsoc_csrbank0_storage_mem_data3_re;
wire [7:0] memtestsoc_csrbank0_storage_mem_data3_r;
wire [7:0] memtestsoc_csrbank0_storage_mem_data3_w;
wire memtestsoc_csrbank0_storage_mem_data2_re;
wire [7:0] memtestsoc_csrbank0_storage_mem_data2_r;
wire [7:0] memtestsoc_csrbank0_storage_mem_data2_w;
wire memtestsoc_csrbank0_storage_mem_data1_re;
wire [7:0] memtestsoc_csrbank0_storage_mem_data1_r;
wire [7:0] memtestsoc_csrbank0_storage_mem_data1_w;
wire memtestsoc_csrbank0_storage_mem_data0_re;
wire [7:0] memtestsoc_csrbank0_storage_mem_data0_r;
wire [7:0] memtestsoc_csrbank0_storage_mem_data0_w;
wire memtestsoc_csrbank0_sel;
wire [13:0] memtestsoc_interface1_adr;
wire memtestsoc_interface1_we;
wire [7:0] memtestsoc_interface1_dat_w;
reg [7:0] memtestsoc_interface1_dat_r = 8'd0;
wire memtestsoc_csrbank1_base3_re;
wire [1:0] memtestsoc_csrbank1_base3_r;
wire [1:0] memtestsoc_csrbank1_base3_w;
wire memtestsoc_csrbank1_base2_re;
wire [7:0] memtestsoc_csrbank1_base2_r;
wire [7:0] memtestsoc_csrbank1_base2_w;
wire memtestsoc_csrbank1_base1_re;
wire [7:0] memtestsoc_csrbank1_base1_r;
wire [7:0] memtestsoc_csrbank1_base1_w;
wire memtestsoc_csrbank1_base0_re;
wire [7:0] memtestsoc_csrbank1_base0_r;
wire [7:0] memtestsoc_csrbank1_base0_w;
wire memtestsoc_csrbank1_length3_re;
wire [1:0] memtestsoc_csrbank1_length3_r;
wire [1:0] memtestsoc_csrbank1_length3_w;
wire memtestsoc_csrbank1_length2_re;
wire [7:0] memtestsoc_csrbank1_length2_r;
wire [7:0] memtestsoc_csrbank1_length2_w;
wire memtestsoc_csrbank1_length1_re;
wire [7:0] memtestsoc_csrbank1_length1_r;
wire [7:0] memtestsoc_csrbank1_length1_w;
wire memtestsoc_csrbank1_length0_re;
wire [7:0] memtestsoc_csrbank1_length0_r;
wire [7:0] memtestsoc_csrbank1_length0_w;
wire memtestsoc_csrbank1_done_re;
wire memtestsoc_csrbank1_done_r;
wire memtestsoc_csrbank1_done_w;
wire memtestsoc_csrbank1_err_count3_re;
wire [7:0] memtestsoc_csrbank1_err_count3_r;
wire [7:0] memtestsoc_csrbank1_err_count3_w;
wire memtestsoc_csrbank1_err_count2_re;
wire [7:0] memtestsoc_csrbank1_err_count2_r;
wire [7:0] memtestsoc_csrbank1_err_count2_w;
wire memtestsoc_csrbank1_err_count1_re;
wire [7:0] memtestsoc_csrbank1_err_count1_r;
wire [7:0] memtestsoc_csrbank1_err_count1_w;
wire memtestsoc_csrbank1_err_count0_re;
wire [7:0] memtestsoc_csrbank1_err_count0_r;
wire [7:0] memtestsoc_csrbank1_err_count0_w;
wire memtestsoc_csrbank1_sel;
wire [13:0] memtestsoc_interface2_adr;
wire memtestsoc_interface2_we;
wire [7:0] memtestsoc_interface2_dat_w;
reg [7:0] memtestsoc_interface2_dat_r = 8'd0;
wire memtestsoc_csrbank2_sram_writer_slot_re;
wire memtestsoc_csrbank2_sram_writer_slot_r;
wire memtestsoc_csrbank2_sram_writer_slot_w;
wire memtestsoc_csrbank2_sram_writer_length3_re;
wire [7:0] memtestsoc_csrbank2_sram_writer_length3_r;
wire [7:0] memtestsoc_csrbank2_sram_writer_length3_w;
wire memtestsoc_csrbank2_sram_writer_length2_re;
wire [7:0] memtestsoc_csrbank2_sram_writer_length2_r;
wire [7:0] memtestsoc_csrbank2_sram_writer_length2_w;
wire memtestsoc_csrbank2_sram_writer_length1_re;
wire [7:0] memtestsoc_csrbank2_sram_writer_length1_r;
wire [7:0] memtestsoc_csrbank2_sram_writer_length1_w;
wire memtestsoc_csrbank2_sram_writer_length0_re;
wire [7:0] memtestsoc_csrbank2_sram_writer_length0_r;
wire [7:0] memtestsoc_csrbank2_sram_writer_length0_w;
wire memtestsoc_csrbank2_sram_writer_ev_enable0_re;
wire memtestsoc_csrbank2_sram_writer_ev_enable0_r;
wire memtestsoc_csrbank2_sram_writer_ev_enable0_w;
wire memtestsoc_csrbank2_sram_reader_ready_re;
wire memtestsoc_csrbank2_sram_reader_ready_r;
wire memtestsoc_csrbank2_sram_reader_ready_w;
wire memtestsoc_csrbank2_sram_reader_slot0_re;
wire memtestsoc_csrbank2_sram_reader_slot0_r;
wire memtestsoc_csrbank2_sram_reader_slot0_w;
wire memtestsoc_csrbank2_sram_reader_length1_re;
wire [2:0] memtestsoc_csrbank2_sram_reader_length1_r;
wire [2:0] memtestsoc_csrbank2_sram_reader_length1_w;
wire memtestsoc_csrbank2_sram_reader_length0_re;
wire [7:0] memtestsoc_csrbank2_sram_reader_length0_r;
wire [7:0] memtestsoc_csrbank2_sram_reader_length0_w;
wire memtestsoc_csrbank2_sram_reader_ev_enable0_re;
wire memtestsoc_csrbank2_sram_reader_ev_enable0_r;
wire memtestsoc_csrbank2_sram_reader_ev_enable0_w;
wire memtestsoc_csrbank2_preamble_crc_re;
wire memtestsoc_csrbank2_preamble_crc_r;
wire memtestsoc_csrbank2_preamble_crc_w;
wire memtestsoc_csrbank2_sel;
wire [13:0] memtestsoc_interface3_adr;
wire memtestsoc_interface3_we;
wire [7:0] memtestsoc_interface3_dat_w;
reg [7:0] memtestsoc_interface3_dat_r = 8'd0;
wire memtestsoc_csrbank3_crg_reset0_re;
wire memtestsoc_csrbank3_crg_reset0_r;
wire memtestsoc_csrbank3_crg_reset0_w;
wire memtestsoc_csrbank3_mdio_w0_re;
wire [2:0] memtestsoc_csrbank3_mdio_w0_r;
wire [2:0] memtestsoc_csrbank3_mdio_w0_w;
wire memtestsoc_csrbank3_mdio_r_re;
wire memtestsoc_csrbank3_mdio_r_r;
wire memtestsoc_csrbank3_mdio_r_w;
wire memtestsoc_csrbank3_sel;
wire [13:0] memtestsoc_interface4_adr;
wire memtestsoc_interface4_we;
wire [7:0] memtestsoc_interface4_dat_w;
reg [7:0] memtestsoc_interface4_dat_r = 8'd0;
wire memtestsoc_csrbank4_switches_in_re;
wire memtestsoc_csrbank4_switches_in_r;
wire memtestsoc_csrbank4_switches_in_w;
wire memtestsoc_csrbank4_leds_out0_re;
wire [1:0] memtestsoc_csrbank4_leds_out0_r;
wire [1:0] memtestsoc_csrbank4_leds_out0_w;
wire memtestsoc_csrbank4_sel;
wire [13:0] memtestsoc_interface5_adr;
wire memtestsoc_interface5_we;
wire [7:0] memtestsoc_interface5_dat_w;
reg [7:0] memtestsoc_interface5_dat_r = 8'd0;
wire memtestsoc_csrbank5_done_re;
wire memtestsoc_csrbank5_done_r;
wire memtestsoc_csrbank5_done_w;
wire memtestsoc_csrbank5_base3_re;
wire [1:0] memtestsoc_csrbank5_base3_r;
wire [1:0] memtestsoc_csrbank5_base3_w;
wire memtestsoc_csrbank5_base2_re;
wire [7:0] memtestsoc_csrbank5_base2_r;
wire [7:0] memtestsoc_csrbank5_base2_w;
wire memtestsoc_csrbank5_base1_re;
wire [7:0] memtestsoc_csrbank5_base1_r;
wire [7:0] memtestsoc_csrbank5_base1_w;
wire memtestsoc_csrbank5_base0_re;
wire [7:0] memtestsoc_csrbank5_base0_r;
wire [7:0] memtestsoc_csrbank5_base0_w;
wire memtestsoc_csrbank5_length3_re;
wire [1:0] memtestsoc_csrbank5_length3_r;
wire [1:0] memtestsoc_csrbank5_length3_w;
wire memtestsoc_csrbank5_length2_re;
wire [7:0] memtestsoc_csrbank5_length2_r;
wire [7:0] memtestsoc_csrbank5_length2_w;
wire memtestsoc_csrbank5_length1_re;
wire [7:0] memtestsoc_csrbank5_length1_r;
wire [7:0] memtestsoc_csrbank5_length1_w;
wire memtestsoc_csrbank5_length0_re;
wire [7:0] memtestsoc_csrbank5_length0_r;
wire [7:0] memtestsoc_csrbank5_length0_w;
wire memtestsoc_csrbank5_sel;
wire [13:0] memtestsoc_interface6_adr;
wire memtestsoc_interface6_we;
wire [7:0] memtestsoc_interface6_dat_w;
reg [7:0] memtestsoc_interface6_dat_r = 8'd0;
wire memtestsoc_csrbank6_dna_id7_re;
wire memtestsoc_csrbank6_dna_id7_r;
wire memtestsoc_csrbank6_dna_id7_w;
wire memtestsoc_csrbank6_dna_id6_re;
wire [7:0] memtestsoc_csrbank6_dna_id6_r;
wire [7:0] memtestsoc_csrbank6_dna_id6_w;
wire memtestsoc_csrbank6_dna_id5_re;
wire [7:0] memtestsoc_csrbank6_dna_id5_r;
wire [7:0] memtestsoc_csrbank6_dna_id5_w;
wire memtestsoc_csrbank6_dna_id4_re;
wire [7:0] memtestsoc_csrbank6_dna_id4_r;
wire [7:0] memtestsoc_csrbank6_dna_id4_w;
wire memtestsoc_csrbank6_dna_id3_re;
wire [7:0] memtestsoc_csrbank6_dna_id3_r;
wire [7:0] memtestsoc_csrbank6_dna_id3_w;
wire memtestsoc_csrbank6_dna_id2_re;
wire [7:0] memtestsoc_csrbank6_dna_id2_r;
wire [7:0] memtestsoc_csrbank6_dna_id2_w;
wire memtestsoc_csrbank6_dna_id1_re;
wire [7:0] memtestsoc_csrbank6_dna_id1_r;
wire [7:0] memtestsoc_csrbank6_dna_id1_w;
wire memtestsoc_csrbank6_dna_id0_re;
wire [7:0] memtestsoc_csrbank6_dna_id0_r;
wire [7:0] memtestsoc_csrbank6_dna_id0_w;
wire memtestsoc_csrbank6_git_commit19_re;
wire [7:0] memtestsoc_csrbank6_git_commit19_r;
wire [7:0] memtestsoc_csrbank6_git_commit19_w;
wire memtestsoc_csrbank6_git_commit18_re;
wire [7:0] memtestsoc_csrbank6_git_commit18_r;
wire [7:0] memtestsoc_csrbank6_git_commit18_w;
wire memtestsoc_csrbank6_git_commit17_re;
wire [7:0] memtestsoc_csrbank6_git_commit17_r;
wire [7:0] memtestsoc_csrbank6_git_commit17_w;
wire memtestsoc_csrbank6_git_commit16_re;
wire [7:0] memtestsoc_csrbank6_git_commit16_r;
wire [7:0] memtestsoc_csrbank6_git_commit16_w;
wire memtestsoc_csrbank6_git_commit15_re;
wire [7:0] memtestsoc_csrbank6_git_commit15_r;
wire [7:0] memtestsoc_csrbank6_git_commit15_w;
wire memtestsoc_csrbank6_git_commit14_re;
wire [7:0] memtestsoc_csrbank6_git_commit14_r;
wire [7:0] memtestsoc_csrbank6_git_commit14_w;
wire memtestsoc_csrbank6_git_commit13_re;
wire [7:0] memtestsoc_csrbank6_git_commit13_r;
wire [7:0] memtestsoc_csrbank6_git_commit13_w;
wire memtestsoc_csrbank6_git_commit12_re;
wire [7:0] memtestsoc_csrbank6_git_commit12_r;
wire [7:0] memtestsoc_csrbank6_git_commit12_w;
wire memtestsoc_csrbank6_git_commit11_re;
wire [7:0] memtestsoc_csrbank6_git_commit11_r;
wire [7:0] memtestsoc_csrbank6_git_commit11_w;
wire memtestsoc_csrbank6_git_commit10_re;
wire [7:0] memtestsoc_csrbank6_git_commit10_r;
wire [7:0] memtestsoc_csrbank6_git_commit10_w;
wire memtestsoc_csrbank6_git_commit9_re;
wire [7:0] memtestsoc_csrbank6_git_commit9_r;
wire [7:0] memtestsoc_csrbank6_git_commit9_w;
wire memtestsoc_csrbank6_git_commit8_re;
wire [7:0] memtestsoc_csrbank6_git_commit8_r;
wire [7:0] memtestsoc_csrbank6_git_commit8_w;
wire memtestsoc_csrbank6_git_commit7_re;
wire [7:0] memtestsoc_csrbank6_git_commit7_r;
wire [7:0] memtestsoc_csrbank6_git_commit7_w;
wire memtestsoc_csrbank6_git_commit6_re;
wire [7:0] memtestsoc_csrbank6_git_commit6_r;
wire [7:0] memtestsoc_csrbank6_git_commit6_w;
wire memtestsoc_csrbank6_git_commit5_re;
wire [7:0] memtestsoc_csrbank6_git_commit5_r;
wire [7:0] memtestsoc_csrbank6_git_commit5_w;
wire memtestsoc_csrbank6_git_commit4_re;
wire [7:0] memtestsoc_csrbank6_git_commit4_r;
wire [7:0] memtestsoc_csrbank6_git_commit4_w;
wire memtestsoc_csrbank6_git_commit3_re;
wire [7:0] memtestsoc_csrbank6_git_commit3_r;
wire [7:0] memtestsoc_csrbank6_git_commit3_w;
wire memtestsoc_csrbank6_git_commit2_re;
wire [7:0] memtestsoc_csrbank6_git_commit2_r;
wire [7:0] memtestsoc_csrbank6_git_commit2_w;
wire memtestsoc_csrbank6_git_commit1_re;
wire [7:0] memtestsoc_csrbank6_git_commit1_r;
wire [7:0] memtestsoc_csrbank6_git_commit1_w;
wire memtestsoc_csrbank6_git_commit0_re;
wire [7:0] memtestsoc_csrbank6_git_commit0_r;
wire [7:0] memtestsoc_csrbank6_git_commit0_w;
wire memtestsoc_csrbank6_platform_platform7_re;
wire [7:0] memtestsoc_csrbank6_platform_platform7_r;
wire [7:0] memtestsoc_csrbank6_platform_platform7_w;
wire memtestsoc_csrbank6_platform_platform6_re;
wire [7:0] memtestsoc_csrbank6_platform_platform6_r;
wire [7:0] memtestsoc_csrbank6_platform_platform6_w;
wire memtestsoc_csrbank6_platform_platform5_re;
wire [7:0] memtestsoc_csrbank6_platform_platform5_r;
wire [7:0] memtestsoc_csrbank6_platform_platform5_w;
wire memtestsoc_csrbank6_platform_platform4_re;
wire [7:0] memtestsoc_csrbank6_platform_platform4_r;
wire [7:0] memtestsoc_csrbank6_platform_platform4_w;
wire memtestsoc_csrbank6_platform_platform3_re;
wire [7:0] memtestsoc_csrbank6_platform_platform3_r;
wire [7:0] memtestsoc_csrbank6_platform_platform3_w;
wire memtestsoc_csrbank6_platform_platform2_re;
wire [7:0] memtestsoc_csrbank6_platform_platform2_r;
wire [7:0] memtestsoc_csrbank6_platform_platform2_w;
wire memtestsoc_csrbank6_platform_platform1_re;
wire [7:0] memtestsoc_csrbank6_platform_platform1_r;
wire [7:0] memtestsoc_csrbank6_platform_platform1_w;
wire memtestsoc_csrbank6_platform_platform0_re;
wire [7:0] memtestsoc_csrbank6_platform_platform0_r;
wire [7:0] memtestsoc_csrbank6_platform_platform0_w;
wire memtestsoc_csrbank6_platform_target7_re;
wire [7:0] memtestsoc_csrbank6_platform_target7_r;
wire [7:0] memtestsoc_csrbank6_platform_target7_w;
wire memtestsoc_csrbank6_platform_target6_re;
wire [7:0] memtestsoc_csrbank6_platform_target6_r;
wire [7:0] memtestsoc_csrbank6_platform_target6_w;
wire memtestsoc_csrbank6_platform_target5_re;
wire [7:0] memtestsoc_csrbank6_platform_target5_r;
wire [7:0] memtestsoc_csrbank6_platform_target5_w;
wire memtestsoc_csrbank6_platform_target4_re;
wire [7:0] memtestsoc_csrbank6_platform_target4_r;
wire [7:0] memtestsoc_csrbank6_platform_target4_w;
wire memtestsoc_csrbank6_platform_target3_re;
wire [7:0] memtestsoc_csrbank6_platform_target3_r;
wire [7:0] memtestsoc_csrbank6_platform_target3_w;
wire memtestsoc_csrbank6_platform_target2_re;
wire [7:0] memtestsoc_csrbank6_platform_target2_r;
wire [7:0] memtestsoc_csrbank6_platform_target2_w;
wire memtestsoc_csrbank6_platform_target1_re;
wire [7:0] memtestsoc_csrbank6_platform_target1_r;
wire [7:0] memtestsoc_csrbank6_platform_target1_w;
wire memtestsoc_csrbank6_platform_target0_re;
wire [7:0] memtestsoc_csrbank6_platform_target0_r;
wire [7:0] memtestsoc_csrbank6_platform_target0_w;
wire memtestsoc_csrbank6_sel;
wire [13:0] memtestsoc_interface7_adr;
wire memtestsoc_interface7_we;
wire [7:0] memtestsoc_interface7_dat_w;
reg [7:0] memtestsoc_interface7_dat_r = 8'd0;
wire memtestsoc_csrbank7_master_w0_re;
wire [7:0] memtestsoc_csrbank7_master_w0_r;
wire [7:0] memtestsoc_csrbank7_master_w0_w;
wire memtestsoc_csrbank7_master_r_re;
wire memtestsoc_csrbank7_master_r_r;
wire memtestsoc_csrbank7_master_r_w;
wire memtestsoc_csrbank7_fx2_reset_out0_re;
wire memtestsoc_csrbank7_fx2_reset_out0_r;
wire memtestsoc_csrbank7_fx2_reset_out0_w;
wire memtestsoc_csrbank7_fx2_hack_shift_reg0_re;
wire [7:0] memtestsoc_csrbank7_fx2_hack_shift_reg0_r;
wire [7:0] memtestsoc_csrbank7_fx2_hack_shift_reg0_w;
wire memtestsoc_csrbank7_fx2_hack_status0_re;
wire [1:0] memtestsoc_csrbank7_fx2_hack_status0_r;
wire [1:0] memtestsoc_csrbank7_fx2_hack_status0_w;
wire memtestsoc_csrbank7_fx2_hack_slave_addr0_re;
wire [6:0] memtestsoc_csrbank7_fx2_hack_slave_addr0_r;
wire [6:0] memtestsoc_csrbank7_fx2_hack_slave_addr0_w;
wire memtestsoc_csrbank7_mux_sel0_re;
wire memtestsoc_csrbank7_mux_sel0_r;
wire memtestsoc_csrbank7_mux_sel0_w;
wire memtestsoc_csrbank7_sel;
wire [13:0] memtestsoc_interface8_adr;
wire memtestsoc_interface8_we;
wire [7:0] memtestsoc_interface8_dat_w;
reg [7:0] memtestsoc_interface8_dat_r = 8'd0;
wire memtestsoc_csrbank8_dfii_control0_re;
wire [3:0] memtestsoc_csrbank8_dfii_control0_r;
wire [3:0] memtestsoc_csrbank8_dfii_control0_w;
wire memtestsoc_csrbank8_dfii_pi0_command0_re;
wire [5:0] memtestsoc_csrbank8_dfii_pi0_command0_r;
wire [5:0] memtestsoc_csrbank8_dfii_pi0_command0_w;
wire memtestsoc_csrbank8_dfii_pi0_address1_re;
wire [5:0] memtestsoc_csrbank8_dfii_pi0_address1_r;
wire [5:0] memtestsoc_csrbank8_dfii_pi0_address1_w;
wire memtestsoc_csrbank8_dfii_pi0_address0_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi0_address0_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi0_address0_w;
wire memtestsoc_csrbank8_dfii_pi0_baddress0_re;
wire [2:0] memtestsoc_csrbank8_dfii_pi0_baddress0_r;
wire [2:0] memtestsoc_csrbank8_dfii_pi0_baddress0_w;
wire memtestsoc_csrbank8_dfii_pi0_wrdata3_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi0_wrdata3_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi0_wrdata3_w;
wire memtestsoc_csrbank8_dfii_pi0_wrdata2_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi0_wrdata2_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi0_wrdata2_w;
wire memtestsoc_csrbank8_dfii_pi0_wrdata1_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi0_wrdata1_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi0_wrdata1_w;
wire memtestsoc_csrbank8_dfii_pi0_wrdata0_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi0_wrdata0_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi0_wrdata0_w;
wire memtestsoc_csrbank8_dfii_pi0_rddata3_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi0_rddata3_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi0_rddata3_w;
wire memtestsoc_csrbank8_dfii_pi0_rddata2_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi0_rddata2_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi0_rddata2_w;
wire memtestsoc_csrbank8_dfii_pi0_rddata1_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi0_rddata1_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi0_rddata1_w;
wire memtestsoc_csrbank8_dfii_pi0_rddata0_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi0_rddata0_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi0_rddata0_w;
wire memtestsoc_csrbank8_dfii_pi1_command0_re;
wire [5:0] memtestsoc_csrbank8_dfii_pi1_command0_r;
wire [5:0] memtestsoc_csrbank8_dfii_pi1_command0_w;
wire memtestsoc_csrbank8_dfii_pi1_address1_re;
wire [5:0] memtestsoc_csrbank8_dfii_pi1_address1_r;
wire [5:0] memtestsoc_csrbank8_dfii_pi1_address1_w;
wire memtestsoc_csrbank8_dfii_pi1_address0_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi1_address0_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi1_address0_w;
wire memtestsoc_csrbank8_dfii_pi1_baddress0_re;
wire [2:0] memtestsoc_csrbank8_dfii_pi1_baddress0_r;
wire [2:0] memtestsoc_csrbank8_dfii_pi1_baddress0_w;
wire memtestsoc_csrbank8_dfii_pi1_wrdata3_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi1_wrdata3_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi1_wrdata3_w;
wire memtestsoc_csrbank8_dfii_pi1_wrdata2_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi1_wrdata2_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi1_wrdata2_w;
wire memtestsoc_csrbank8_dfii_pi1_wrdata1_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi1_wrdata1_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi1_wrdata1_w;
wire memtestsoc_csrbank8_dfii_pi1_wrdata0_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi1_wrdata0_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi1_wrdata0_w;
wire memtestsoc_csrbank8_dfii_pi1_rddata3_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi1_rddata3_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi1_rddata3_w;
wire memtestsoc_csrbank8_dfii_pi1_rddata2_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi1_rddata2_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi1_rddata2_w;
wire memtestsoc_csrbank8_dfii_pi1_rddata1_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi1_rddata1_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi1_rddata1_w;
wire memtestsoc_csrbank8_dfii_pi1_rddata0_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi1_rddata0_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi1_rddata0_w;
wire memtestsoc_csrbank8_dfii_pi2_command0_re;
wire [5:0] memtestsoc_csrbank8_dfii_pi2_command0_r;
wire [5:0] memtestsoc_csrbank8_dfii_pi2_command0_w;
wire memtestsoc_csrbank8_dfii_pi2_address1_re;
wire [5:0] memtestsoc_csrbank8_dfii_pi2_address1_r;
wire [5:0] memtestsoc_csrbank8_dfii_pi2_address1_w;
wire memtestsoc_csrbank8_dfii_pi2_address0_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi2_address0_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi2_address0_w;
wire memtestsoc_csrbank8_dfii_pi2_baddress0_re;
wire [2:0] memtestsoc_csrbank8_dfii_pi2_baddress0_r;
wire [2:0] memtestsoc_csrbank8_dfii_pi2_baddress0_w;
wire memtestsoc_csrbank8_dfii_pi2_wrdata3_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi2_wrdata3_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi2_wrdata3_w;
wire memtestsoc_csrbank8_dfii_pi2_wrdata2_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi2_wrdata2_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi2_wrdata2_w;
wire memtestsoc_csrbank8_dfii_pi2_wrdata1_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi2_wrdata1_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi2_wrdata1_w;
wire memtestsoc_csrbank8_dfii_pi2_wrdata0_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi2_wrdata0_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi2_wrdata0_w;
wire memtestsoc_csrbank8_dfii_pi2_rddata3_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi2_rddata3_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi2_rddata3_w;
wire memtestsoc_csrbank8_dfii_pi2_rddata2_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi2_rddata2_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi2_rddata2_w;
wire memtestsoc_csrbank8_dfii_pi2_rddata1_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi2_rddata1_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi2_rddata1_w;
wire memtestsoc_csrbank8_dfii_pi2_rddata0_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi2_rddata0_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi2_rddata0_w;
wire memtestsoc_csrbank8_dfii_pi3_command0_re;
wire [5:0] memtestsoc_csrbank8_dfii_pi3_command0_r;
wire [5:0] memtestsoc_csrbank8_dfii_pi3_command0_w;
wire memtestsoc_csrbank8_dfii_pi3_address1_re;
wire [5:0] memtestsoc_csrbank8_dfii_pi3_address1_r;
wire [5:0] memtestsoc_csrbank8_dfii_pi3_address1_w;
wire memtestsoc_csrbank8_dfii_pi3_address0_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi3_address0_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi3_address0_w;
wire memtestsoc_csrbank8_dfii_pi3_baddress0_re;
wire [2:0] memtestsoc_csrbank8_dfii_pi3_baddress0_r;
wire [2:0] memtestsoc_csrbank8_dfii_pi3_baddress0_w;
wire memtestsoc_csrbank8_dfii_pi3_wrdata3_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi3_wrdata3_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi3_wrdata3_w;
wire memtestsoc_csrbank8_dfii_pi3_wrdata2_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi3_wrdata2_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi3_wrdata2_w;
wire memtestsoc_csrbank8_dfii_pi3_wrdata1_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi3_wrdata1_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi3_wrdata1_w;
wire memtestsoc_csrbank8_dfii_pi3_wrdata0_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi3_wrdata0_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi3_wrdata0_w;
wire memtestsoc_csrbank8_dfii_pi3_rddata3_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi3_rddata3_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi3_rddata3_w;
wire memtestsoc_csrbank8_dfii_pi3_rddata2_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi3_rddata2_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi3_rddata2_w;
wire memtestsoc_csrbank8_dfii_pi3_rddata1_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi3_rddata1_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi3_rddata1_w;
wire memtestsoc_csrbank8_dfii_pi3_rddata0_re;
wire [7:0] memtestsoc_csrbank8_dfii_pi3_rddata0_r;
wire [7:0] memtestsoc_csrbank8_dfii_pi3_rddata0_w;
wire memtestsoc_csrbank8_controller_bandwidth_nreads2_re;
wire [7:0] memtestsoc_csrbank8_controller_bandwidth_nreads2_r;
wire [7:0] memtestsoc_csrbank8_controller_bandwidth_nreads2_w;
wire memtestsoc_csrbank8_controller_bandwidth_nreads1_re;
wire [7:0] memtestsoc_csrbank8_controller_bandwidth_nreads1_r;
wire [7:0] memtestsoc_csrbank8_controller_bandwidth_nreads1_w;
wire memtestsoc_csrbank8_controller_bandwidth_nreads0_re;
wire [7:0] memtestsoc_csrbank8_controller_bandwidth_nreads0_r;
wire [7:0] memtestsoc_csrbank8_controller_bandwidth_nreads0_w;
wire memtestsoc_csrbank8_controller_bandwidth_nwrites2_re;
wire [7:0] memtestsoc_csrbank8_controller_bandwidth_nwrites2_r;
wire [7:0] memtestsoc_csrbank8_controller_bandwidth_nwrites2_w;
wire memtestsoc_csrbank8_controller_bandwidth_nwrites1_re;
wire [7:0] memtestsoc_csrbank8_controller_bandwidth_nwrites1_r;
wire [7:0] memtestsoc_csrbank8_controller_bandwidth_nwrites1_w;
wire memtestsoc_csrbank8_controller_bandwidth_nwrites0_re;
wire [7:0] memtestsoc_csrbank8_controller_bandwidth_nwrites0_r;
wire [7:0] memtestsoc_csrbank8_controller_bandwidth_nwrites0_w;
wire memtestsoc_csrbank8_controller_bandwidth_data_width_re;
wire [7:0] memtestsoc_csrbank8_controller_bandwidth_data_width_r;
wire [7:0] memtestsoc_csrbank8_controller_bandwidth_data_width_w;
wire memtestsoc_csrbank8_sel;
wire [13:0] memtestsoc_interface9_adr;
wire memtestsoc_interface9_we;
wire [7:0] memtestsoc_interface9_dat_w;
reg [7:0] memtestsoc_interface9_dat_r = 8'd0;
wire memtestsoc_csrbank9_load3_re;
wire [7:0] memtestsoc_csrbank9_load3_r;
wire [7:0] memtestsoc_csrbank9_load3_w;
wire memtestsoc_csrbank9_load2_re;
wire [7:0] memtestsoc_csrbank9_load2_r;
wire [7:0] memtestsoc_csrbank9_load2_w;
wire memtestsoc_csrbank9_load1_re;
wire [7:0] memtestsoc_csrbank9_load1_r;
wire [7:0] memtestsoc_csrbank9_load1_w;
wire memtestsoc_csrbank9_load0_re;
wire [7:0] memtestsoc_csrbank9_load0_r;
wire [7:0] memtestsoc_csrbank9_load0_w;
wire memtestsoc_csrbank9_reload3_re;
wire [7:0] memtestsoc_csrbank9_reload3_r;
wire [7:0] memtestsoc_csrbank9_reload3_w;
wire memtestsoc_csrbank9_reload2_re;
wire [7:0] memtestsoc_csrbank9_reload2_r;
wire [7:0] memtestsoc_csrbank9_reload2_w;
wire memtestsoc_csrbank9_reload1_re;
wire [7:0] memtestsoc_csrbank9_reload1_r;
wire [7:0] memtestsoc_csrbank9_reload1_w;
wire memtestsoc_csrbank9_reload0_re;
wire [7:0] memtestsoc_csrbank9_reload0_r;
wire [7:0] memtestsoc_csrbank9_reload0_w;
wire memtestsoc_csrbank9_en0_re;
wire memtestsoc_csrbank9_en0_r;
wire memtestsoc_csrbank9_en0_w;
wire memtestsoc_csrbank9_value3_re;
wire [7:0] memtestsoc_csrbank9_value3_r;
wire [7:0] memtestsoc_csrbank9_value3_w;
wire memtestsoc_csrbank9_value2_re;
wire [7:0] memtestsoc_csrbank9_value2_r;
wire [7:0] memtestsoc_csrbank9_value2_w;
wire memtestsoc_csrbank9_value1_re;
wire [7:0] memtestsoc_csrbank9_value1_r;
wire [7:0] memtestsoc_csrbank9_value1_w;
wire memtestsoc_csrbank9_value0_re;
wire [7:0] memtestsoc_csrbank9_value0_r;
wire [7:0] memtestsoc_csrbank9_value0_w;
wire memtestsoc_csrbank9_ev_enable0_re;
wire memtestsoc_csrbank9_ev_enable0_r;
wire memtestsoc_csrbank9_ev_enable0_w;
wire memtestsoc_csrbank9_sel;
wire [13:0] memtestsoc_interface10_adr;
wire memtestsoc_interface10_we;
wire [7:0] memtestsoc_interface10_dat_w;
reg [7:0] memtestsoc_interface10_dat_r = 8'd0;
wire memtestsoc_csrbank10_txfull_re;
wire memtestsoc_csrbank10_txfull_r;
wire memtestsoc_csrbank10_txfull_w;
wire memtestsoc_csrbank10_rxempty_re;
wire memtestsoc_csrbank10_rxempty_r;
wire memtestsoc_csrbank10_rxempty_w;
wire memtestsoc_csrbank10_ev_enable0_re;
wire [1:0] memtestsoc_csrbank10_ev_enable0_r;
wire [1:0] memtestsoc_csrbank10_ev_enable0_w;
wire memtestsoc_csrbank10_sel;
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
reg [14:0] array_muxed0 = 15'd0;
reg [2:0] array_muxed1 = 3'd0;
reg array_muxed2 = 1'd0;
reg array_muxed3 = 1'd0;
reg array_muxed4 = 1'd0;
reg array_muxed5 = 1'd0;
reg array_muxed6 = 1'd0;
reg array_muxed7 = 1'd0;
reg [13:0] array_muxed8 = 14'd0;
reg [2:0] array_muxed9 = 3'd0;
reg array_muxed10 = 1'd0;
reg array_muxed11 = 1'd0;
reg array_muxed12 = 1'd0;
reg array_muxed13 = 1'd0;
reg array_muxed14 = 1'd0;
reg [13:0] array_muxed15 = 14'd0;
reg [2:0] array_muxed16 = 3'd0;
reg array_muxed17 = 1'd0;
reg array_muxed18 = 1'd0;
reg array_muxed19 = 1'd0;
reg array_muxed20 = 1'd0;
reg array_muxed21 = 1'd0;
reg [13:0] array_muxed22 = 14'd0;
reg [2:0] array_muxed23 = 3'd0;
reg array_muxed24 = 1'd0;
reg array_muxed25 = 1'd0;
reg array_muxed26 = 1'd0;
reg array_muxed27 = 1'd0;
reg array_muxed28 = 1'd0;
reg [13:0] array_muxed29 = 14'd0;
reg [2:0] array_muxed30 = 3'd0;
reg array_muxed31 = 1'd0;
reg array_muxed32 = 1'd0;
reg array_muxed33 = 1'd0;
reg array_muxed34 = 1'd0;
reg array_muxed35 = 1'd0;
wire rst10;
wire rst11;
wire rst12;
wire rst13;
wire rst14;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl0_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl0_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl1_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl1_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl2_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl2_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl3_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl3_regs1 = 1'd0;
wire rst15;
wire rst16;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl4_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl4_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [6:0] xilinxmultiregimpl5_regs0 = 7'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [6:0] xilinxmultiregimpl5_regs1 = 7'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [6:0] xilinxmultiregimpl6_regs0 = 7'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [6:0] xilinxmultiregimpl6_regs1 = 7'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [6:0] xilinxmultiregimpl7_regs0 = 7'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [6:0] xilinxmultiregimpl7_regs1 = 7'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [6:0] xilinxmultiregimpl8_regs0 = 7'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [6:0] xilinxmultiregimpl8_regs1 = 7'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl9_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl9_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl10_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl10_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl11_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl11_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl12_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl12_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl13_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl13_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [25:0] xilinxmultiregimpl14_regs0 = 26'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [25:0] xilinxmultiregimpl14_regs1 = 26'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl15_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl15_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl16_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl16_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [25:0] xilinxmultiregimpl17_regs0 = 26'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [25:0] xilinxmultiregimpl17_regs1 = 26'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl18_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl18_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl19_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl19_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl20_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl20_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl21_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl21_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl22_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl22_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [25:0] xilinxmultiregimpl23_regs0 = 26'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [25:0] xilinxmultiregimpl23_regs1 = 26'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl24_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl24_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl25_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl25_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [25:0] xilinxmultiregimpl26_regs0 = 26'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [25:0] xilinxmultiregimpl26_regs1 = 26'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl27_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl27_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl28_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl28_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [31:0] xilinxmultiregimpl29_regs0 = 32'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [31:0] xilinxmultiregimpl29_regs1 = 32'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [90:0] xilinxmultiregimpl30_regs0 = 91'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [90:0] xilinxmultiregimpl30_regs1 = 91'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [90:0] xilinxmultiregimpl31_regs0 = 91'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [90:0] xilinxmultiregimpl31_regs1 = 91'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [15:0] xilinxmultiregimpl32_regs0 = 16'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [15:0] xilinxmultiregimpl32_regs1 = 16'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [3:0] xilinxmultiregimpl33_regs0 = 4'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [3:0] xilinxmultiregimpl33_regs1 = 4'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [3:0] xilinxmultiregimpl34_regs0 = 4'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [3:0] xilinxmultiregimpl34_regs1 = 4'd0;


// Adding a dummy event (using a dummy signal 'dummy_s') to get the simulator
// to run the combinatorial process once at the beginning.
// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign crg_reset = front_panel_reset;
assign half_rate_phy_clk4x_wr_strb = crg_clk8x_wr_strb;
assign half_rate_phy_clk4x_rd_strb = crg_clk8x_rd_strb;

// synthesis translate_off
reg dummy_d;
// synthesis translate_on
always @(*) begin
	memtestsoc_interrupt <= 32'd0;
	memtestsoc_interrupt[0] <= uart_irq;
	memtestsoc_interrupt[1] <= memtestsoc_irq;
	memtestsoc_interrupt[2] <= ethmac_ev_irq;
// synthesis translate_off
	dummy_d <= dummy_s;
// synthesis translate_on
end
assign memtestsoc_ibus_adr = memtestsoc_i_adr_o[31:2];
assign memtestsoc_dbus_adr = memtestsoc_d_adr_o[31:2];
assign memtestsoc_rom_adr = memtestsoc_rom_bus_adr[12:0];
assign memtestsoc_rom_bus_dat_r = memtestsoc_rom_dat_r;

// synthesis translate_off
reg dummy_d_1;
// synthesis translate_on
always @(*) begin
	memtestsoc_sram_we <= 4'd0;
	memtestsoc_sram_we[0] <= (((memtestsoc_sram_bus_cyc & memtestsoc_sram_bus_stb) & memtestsoc_sram_bus_we) & memtestsoc_sram_bus_sel[0]);
	memtestsoc_sram_we[1] <= (((memtestsoc_sram_bus_cyc & memtestsoc_sram_bus_stb) & memtestsoc_sram_bus_we) & memtestsoc_sram_bus_sel[1]);
	memtestsoc_sram_we[2] <= (((memtestsoc_sram_bus_cyc & memtestsoc_sram_bus_stb) & memtestsoc_sram_bus_we) & memtestsoc_sram_bus_sel[2]);
	memtestsoc_sram_we[3] <= (((memtestsoc_sram_bus_cyc & memtestsoc_sram_bus_stb) & memtestsoc_sram_bus_we) & memtestsoc_sram_bus_sel[3]);
// synthesis translate_off
	dummy_d_1 <= dummy_s;
// synthesis translate_on
end
assign memtestsoc_sram_adr = memtestsoc_sram_bus_adr[11:0];
assign memtestsoc_sram_bus_dat_r = memtestsoc_sram_dat_r;
assign memtestsoc_sram_dat_w = memtestsoc_sram_bus_dat_w;
assign memtestsoc_zero_trigger = (memtestsoc_value != 1'd0);
assign memtestsoc_eventmanager_status_w = memtestsoc_zero_status;

// synthesis translate_off
reg dummy_d_2;
// synthesis translate_on
always @(*) begin
	memtestsoc_zero_clear <= 1'd0;
	if ((memtestsoc_eventmanager_pending_re & memtestsoc_eventmanager_pending_r)) begin
		memtestsoc_zero_clear <= 1'd1;
	end
// synthesis translate_off
	dummy_d_2 <= dummy_s;
// synthesis translate_on
end
assign memtestsoc_eventmanager_pending_w = memtestsoc_zero_pending;
assign memtestsoc_irq = (memtestsoc_eventmanager_pending_w & memtestsoc_eventmanager_storage);
assign memtestsoc_zero_status = memtestsoc_zero_trigger;
assign por_clk = sys_clk;
assign sdram_full_rd_clk = sdram_full_wr_clk;
assign crg_clk8x_rd_strb = crg_clk8x_wr_strb;
assign git_status = 160'd921539989042561035622048624780866439018957707667;
assign platform_status = 63'd8030045032339734528;
assign target_status = 63'd5576983922814973011;
assign opsis_i2c_fx2_reset_o = 1'd0;

// synthesis translate_off
reg dummy_d_3;
// synthesis translate_on
always @(*) begin
	opsis_i2c_i2cpads0_sda_i <= 1'd0;
	opsisi2c_sda_o <= 1'd0;
	opsisi2c_sda_oe <= 1'd0;
	opsis_i2c_i2cpads0_scl_i <= 1'd0;
	opsisi2c_scl_o <= 1'd0;
	opsisi2c_scl_oe <= 1'd0;
	opsis_i2c_i2cpads1_sda_i <= 1'd0;
	opsis_i2c_i2cpads1_scl_i <= 1'd0;
	case (opsisi2c_storage)
		1'd0: begin
			opsisi2c_scl_oe <= opsis_i2c_i2cpads0_scl_oe;
			opsisi2c_scl_o <= opsis_i2c_i2cpads0_scl_o;
			opsis_i2c_i2cpads0_scl_i <= opsisi2c_scl_i;
			opsisi2c_sda_oe <= opsis_i2c_i2cpads0_sda_oe;
			opsisi2c_sda_o <= opsis_i2c_i2cpads0_sda_o;
			opsis_i2c_i2cpads0_sda_i <= opsisi2c_sda_i;
		end
		1'd1: begin
			opsisi2c_scl_oe <= opsis_i2c_i2cpads1_scl_oe;
			opsisi2c_scl_o <= opsis_i2c_i2cpads1_scl_o;
			opsis_i2c_i2cpads1_scl_i <= opsisi2c_scl_i;
			opsisi2c_sda_oe <= opsis_i2c_i2cpads1_sda_oe;
			opsisi2c_sda_o <= opsis_i2c_i2cpads1_sda_o;
			opsis_i2c_i2cpads1_sda_i <= opsisi2c_sda_i;
		end
	endcase
// synthesis translate_off
	dummy_d_3 <= dummy_s;
// synthesis translate_on
end
assign opsis_i2c_i2cpads0_scl_oe = 1'd1;
assign opsis_i2c_i2cpads0_scl_o = opsis_i2c_master_storage[0];
assign opsis_i2c_i2cpads0_sda_oe = opsis_i2c_master_storage[1];
assign opsis_i2c_i2cpads0_sda_o = opsis_i2c_master_storage[2];
assign opsis_i2c_master_status = opsis_i2c_i2cpads0_sda_i;
assign opsis_i2c_fx2_reset_oe = opsis_i2c_fx2_reset_storage;
assign opsis_i2c_i2cpads1_scl_o = 1'd0;
assign opsis_i2c_i2cpads1_scl_oe = opsis_i2c_scl_drv_reg;
assign opsis_i2c_scl_i_async = opsis_i2c_i2cpads1_scl_i;
assign opsis_i2c_i2cpads1_sda_o = 1'd0;
assign opsis_i2c_i2cpads1_sda_oe = opsis_i2c_sda_drv_reg;
assign opsis_i2c_sda_i_async = opsis_i2c_i2cpads1_sda_i;
assign opsis_i2c_sda_o = (~opsis_i2c_sda_drv_reg);
assign opsis_i2c_shift_reg_full = opsis_i2c_status_storage[0];
assign opsis_i2c_shift_reg_empty = opsis_i2c_status_storage[1];
assign opsis_i2c_scl_rising = (opsis_i2c_scl_i & (~opsis_i2c_scl_r));
assign opsis_i2c_scl_falling = ((~opsis_i2c_scl_i) & opsis_i2c_scl_r);
assign opsis_i2c_sda_rising = (opsis_i2c_sda_i & (~opsis_i2c_sda_r));
assign opsis_i2c_sda_falling = ((~opsis_i2c_sda_i) & opsis_i2c_sda_r);
assign opsis_i2c_start = (opsis_i2c_scl_i & opsis_i2c_sda_falling);
assign opsis_i2c_scl_drv = opsis_i2c_pause_drv;

// synthesis translate_off
reg dummy_d_4;
// synthesis translate_on
always @(*) begin
	opsis_i2c_sda_drv <= 1'd0;
	if (opsis_i2c_zero_drv) begin
		opsis_i2c_sda_drv <= 1'd1;
	end else begin
		if (opsis_i2c_data_drv) begin
			opsis_i2c_sda_drv <= (~opsis_i2c_data_bit);
		end
	end
// synthesis translate_off
	dummy_d_4 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_5;
// synthesis translate_on
always @(*) begin
	opsis_i2c_data_drv_stop <= 1'd0;
	opsis_i2c_counter_reset <= 1'd0;
	opsis_i2c_shift_reg_we <= 1'd0;
	opsis_i2c_shift_reg_dat_w <= 8'd0;
	opsis_i2c_update_is_read <= 1'd0;
	opsis_i2c_status_we <= 1'd0;
	opsis_i2c_status_dat_w <= 2'd0;
	opsis_i2c_zero_drv <= 1'd0;
	opsis_i2c_pause_drv <= 1'd0;
	opsisi2c_next_state <= 4'd0;
	opsis_i2c_data_drv_en <= 1'd0;
	opsisi2c_next_state <= opsisi2c_state;
	case (opsisi2c_state)
		1'd1: begin
			opsis_i2c_data_drv_stop <= 1'd1;
			if ((opsis_i2c_counter == 4'd8)) begin
				if ((opsis_i2c_din[7:1] == opsis_i2c_slave_addr_storage)) begin
					opsis_i2c_update_is_read <= 1'd1;
					opsisi2c_next_state <= 2'd2;
				end else begin
					opsisi2c_next_state <= 1'd0;
				end
			end
			if (opsis_i2c_start) begin
				opsisi2c_next_state <= 1'd1;
			end
			if (opsis_i2c_slave_addr_re) begin
				opsisi2c_next_state <= 1'd0;
			end
		end
		2'd2: begin
			opsis_i2c_counter_reset <= 1'd1;
			if ((~opsis_i2c_scl_i)) begin
				opsisi2c_next_state <= 2'd3;
			end
			if (opsis_i2c_start) begin
				opsisi2c_next_state <= 1'd1;
			end
			if (opsis_i2c_slave_addr_re) begin
				opsisi2c_next_state <= 1'd0;
			end
		end
		2'd3: begin
			opsis_i2c_counter_reset <= 1'd1;
			opsis_i2c_zero_drv <= 1'd1;
			if (opsis_i2c_scl_i) begin
				opsisi2c_next_state <= 3'd4;
			end
			if (opsis_i2c_start) begin
				opsisi2c_next_state <= 1'd1;
			end
			if (opsis_i2c_slave_addr_re) begin
				opsisi2c_next_state <= 1'd0;
			end
		end
		3'd4: begin
			opsis_i2c_counter_reset <= 1'd1;
			opsis_i2c_zero_drv <= 1'd1;
			if ((~opsis_i2c_scl_i)) begin
				opsisi2c_next_state <= 3'd5;
			end
			if (opsis_i2c_start) begin
				opsisi2c_next_state <= 1'd1;
			end
			if (opsis_i2c_slave_addr_re) begin
				opsisi2c_next_state <= 1'd0;
			end
		end
		3'd5: begin
			opsis_i2c_counter_reset <= 1'd1;
			opsis_i2c_pause_drv <= 1'd1;
			if (((~opsis_i2c_shift_reg_empty) & opsis_i2c_is_read)) begin
				opsis_i2c_counter_reset <= 1'd1;
				opsisi2c_next_state <= 3'd6;
			end else begin
				if (((~opsis_i2c_shift_reg_full) & (~opsis_i2c_is_read))) begin
					opsisi2c_next_state <= 4'd9;
				end
			end
			if (opsis_i2c_start) begin
				opsisi2c_next_state <= 1'd1;
			end
			if (opsis_i2c_slave_addr_re) begin
				opsisi2c_next_state <= 1'd0;
			end
		end
		3'd6: begin
			if ((~opsis_i2c_scl_i)) begin
				if ((opsis_i2c_counter == 4'd8)) begin
					opsis_i2c_data_drv_stop <= 1'd1;
					opsis_i2c_status_we <= 1'd1;
					opsis_i2c_status_dat_w <= 2'd2;
					opsisi2c_next_state <= 3'd7;
				end else begin
					opsis_i2c_data_drv_en <= 1'd1;
				end
			end
			if (opsis_i2c_start) begin
				opsisi2c_next_state <= 1'd1;
			end
			if (opsis_i2c_slave_addr_re) begin
				opsisi2c_next_state <= 1'd0;
			end
		end
		3'd7: begin
			opsis_i2c_counter_reset <= 1'd1;
			if (opsis_i2c_scl_rising) begin
				if (opsis_i2c_sda_i) begin
					opsisi2c_next_state <= 1'd0;
				end else begin
					opsisi2c_next_state <= 4'd8;
				end
			end
			if (opsis_i2c_start) begin
				opsisi2c_next_state <= 1'd1;
			end
			if (opsis_i2c_slave_addr_re) begin
				opsisi2c_next_state <= 1'd0;
			end
		end
		4'd8: begin
			opsis_i2c_counter_reset <= 1'd1;
			if (opsis_i2c_scl_falling) begin
				opsisi2c_next_state <= 3'd5;
			end
			if (opsis_i2c_start) begin
				opsisi2c_next_state <= 1'd1;
			end
			if (opsis_i2c_slave_addr_re) begin
				opsisi2c_next_state <= 1'd0;
			end
		end
		4'd9: begin
			if ((opsis_i2c_counter == 4'd8)) begin
				opsis_i2c_shift_reg_dat_w <= opsis_i2c_din;
				opsis_i2c_shift_reg_we <= 1'd1;
				opsisi2c_next_state <= 4'd10;
			end
			if (opsis_i2c_start) begin
				opsisi2c_next_state <= 1'd1;
			end
			if (opsis_i2c_slave_addr_re) begin
				opsisi2c_next_state <= 1'd0;
			end
		end
		4'd10: begin
			opsis_i2c_counter_reset <= 1'd1;
			if ((~opsis_i2c_scl_i)) begin
				opsisi2c_next_state <= 4'd11;
			end
			if (opsis_i2c_start) begin
				opsisi2c_next_state <= 1'd1;
			end
			if (opsis_i2c_slave_addr_re) begin
				opsisi2c_next_state <= 1'd0;
			end
		end
		4'd11: begin
			opsis_i2c_counter_reset <= 1'd1;
			opsis_i2c_zero_drv <= 1'd1;
			if (opsis_i2c_scl_i) begin
				opsisi2c_next_state <= 4'd12;
			end
			if (opsis_i2c_start) begin
				opsisi2c_next_state <= 1'd1;
			end
			if (opsis_i2c_slave_addr_re) begin
				opsisi2c_next_state <= 1'd0;
			end
		end
		4'd12: begin
			opsis_i2c_counter_reset <= 1'd1;
			opsis_i2c_zero_drv <= 1'd1;
			if ((~opsis_i2c_scl_i)) begin
				opsisi2c_next_state <= 3'd5;
				opsis_i2c_status_we <= 1'd1;
				opsis_i2c_status_dat_w <= 1'd1;
			end
			if (opsis_i2c_start) begin
				opsisi2c_next_state <= 1'd1;
			end
			if (opsis_i2c_slave_addr_re) begin
				opsisi2c_next_state <= 1'd0;
			end
		end
		default: begin
			opsis_i2c_data_drv_stop <= 1'd1;
			if (opsis_i2c_start) begin
				opsisi2c_next_state <= 1'd1;
			end
			if (opsis_i2c_slave_addr_re) begin
				opsisi2c_next_state <= 1'd0;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_5 <= dummy_s;
// synthesis translate_on
end
assign fx2_serial_tx = tx;
assign rx = fx2_serial_rx;
assign uart_tx_fifo_sink_valid = uart_rxtx_re;
assign uart_tx_fifo_sink_payload_data = uart_rxtx_r;
assign uart_txfull_status = (~uart_tx_fifo_sink_ready);
assign phy_sink_valid = uart_tx_fifo_source_valid;
assign uart_tx_fifo_source_ready = phy_sink_ready;
assign phy_sink_last = uart_tx_fifo_source_last;
assign phy_sink_payload_data = uart_tx_fifo_source_payload_data;
assign uart_tx_trigger = (~uart_tx_fifo_sink_ready);
assign uart_rx_fifo_sink_valid = phy_source_valid;
assign phy_source_ready = uart_rx_fifo_sink_ready;
assign uart_rx_fifo_sink_last = phy_source_last;
assign uart_rx_fifo_sink_payload_data = phy_source_payload_data;
assign uart_rxempty_status = (~uart_rx_fifo_source_valid);
assign uart_rxtx_w = uart_rx_fifo_source_payload_data;
assign uart_rx_fifo_source_ready = uart_rx_clear;
assign uart_rx_trigger = (~uart_rx_fifo_source_valid);

// synthesis translate_off
reg dummy_d_6;
// synthesis translate_on
always @(*) begin
	uart_tx_clear <= 1'd0;
	if ((uart_pending_re & uart_pending_r[0])) begin
		uart_tx_clear <= 1'd1;
	end
// synthesis translate_off
	dummy_d_6 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_7;
// synthesis translate_on
always @(*) begin
	uart_status_w <= 2'd0;
	uart_status_w[0] <= uart_tx_status;
	uart_status_w[1] <= uart_rx_status;
// synthesis translate_off
	dummy_d_7 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_8;
// synthesis translate_on
always @(*) begin
	uart_rx_clear <= 1'd0;
	if ((uart_pending_re & uart_pending_r[1])) begin
		uart_rx_clear <= 1'd1;
	end
// synthesis translate_off
	dummy_d_8 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_9;
// synthesis translate_on
always @(*) begin
	uart_pending_w <= 2'd0;
	uart_pending_w[0] <= uart_tx_pending;
	uart_pending_w[1] <= uart_rx_pending;
// synthesis translate_off
	dummy_d_9 <= dummy_s;
// synthesis translate_on
end
assign uart_irq = ((uart_pending_w[0] & uart_storage[0]) | (uart_pending_w[1] & uart_storage[1]));
assign uart_tx_status = uart_tx_trigger;
assign uart_rx_status = uart_rx_trigger;
assign uart_tx_fifo_syncfifo_din = {uart_tx_fifo_fifo_in_last, uart_tx_fifo_fifo_in_payload_data};
assign {uart_tx_fifo_fifo_out_last, uart_tx_fifo_fifo_out_payload_data} = uart_tx_fifo_syncfifo_dout;
assign uart_tx_fifo_sink_ready = uart_tx_fifo_syncfifo_writable;
assign uart_tx_fifo_syncfifo_we = uart_tx_fifo_sink_valid;
assign uart_tx_fifo_fifo_in_last = uart_tx_fifo_sink_last;
assign uart_tx_fifo_fifo_in_payload_data = uart_tx_fifo_sink_payload_data;
assign uart_tx_fifo_source_valid = uart_tx_fifo_syncfifo_readable;
assign uart_tx_fifo_source_last = uart_tx_fifo_fifo_out_last;
assign uart_tx_fifo_source_payload_data = uart_tx_fifo_fifo_out_payload_data;
assign uart_tx_fifo_syncfifo_re = uart_tx_fifo_source_ready;

// synthesis translate_off
reg dummy_d_10;
// synthesis translate_on
always @(*) begin
	uart_tx_fifo_wrport_adr <= 4'd0;
	if (uart_tx_fifo_replace) begin
		uart_tx_fifo_wrport_adr <= (uart_tx_fifo_produce - 1'd1);
	end else begin
		uart_tx_fifo_wrport_adr <= uart_tx_fifo_produce;
	end
// synthesis translate_off
	dummy_d_10 <= dummy_s;
// synthesis translate_on
end
assign uart_tx_fifo_wrport_dat_w = uart_tx_fifo_syncfifo_din;
assign uart_tx_fifo_wrport_we = (uart_tx_fifo_syncfifo_we & (uart_tx_fifo_syncfifo_writable | uart_tx_fifo_replace));
assign uart_tx_fifo_do_read = (uart_tx_fifo_syncfifo_readable & uart_tx_fifo_syncfifo_re);
assign uart_tx_fifo_rdport_adr = uart_tx_fifo_consume;
assign uart_tx_fifo_syncfifo_dout = uart_tx_fifo_rdport_dat_r;
assign uart_tx_fifo_syncfifo_writable = (uart_tx_fifo_level != 5'd16);
assign uart_tx_fifo_syncfifo_readable = (uart_tx_fifo_level != 1'd0);
assign uart_rx_fifo_syncfifo_din = {uart_rx_fifo_fifo_in_last, uart_rx_fifo_fifo_in_payload_data};
assign {uart_rx_fifo_fifo_out_last, uart_rx_fifo_fifo_out_payload_data} = uart_rx_fifo_syncfifo_dout;
assign uart_rx_fifo_sink_ready = uart_rx_fifo_syncfifo_writable;
assign uart_rx_fifo_syncfifo_we = uart_rx_fifo_sink_valid;
assign uart_rx_fifo_fifo_in_last = uart_rx_fifo_sink_last;
assign uart_rx_fifo_fifo_in_payload_data = uart_rx_fifo_sink_payload_data;
assign uart_rx_fifo_source_valid = uart_rx_fifo_syncfifo_readable;
assign uart_rx_fifo_source_last = uart_rx_fifo_fifo_out_last;
assign uart_rx_fifo_source_payload_data = uart_rx_fifo_fifo_out_payload_data;
assign uart_rx_fifo_syncfifo_re = uart_rx_fifo_source_ready;

// synthesis translate_off
reg dummy_d_11;
// synthesis translate_on
always @(*) begin
	uart_rx_fifo_wrport_adr <= 4'd0;
	if (uart_rx_fifo_replace) begin
		uart_rx_fifo_wrport_adr <= (uart_rx_fifo_produce - 1'd1);
	end else begin
		uart_rx_fifo_wrport_adr <= uart_rx_fifo_produce;
	end
// synthesis translate_off
	dummy_d_11 <= dummy_s;
// synthesis translate_on
end
assign uart_rx_fifo_wrport_dat_w = uart_rx_fifo_syncfifo_din;
assign uart_rx_fifo_wrport_we = (uart_rx_fifo_syncfifo_we & (uart_rx_fifo_syncfifo_writable | uart_rx_fifo_replace));
assign uart_rx_fifo_do_read = (uart_rx_fifo_syncfifo_readable & uart_rx_fifo_syncfifo_re);
assign uart_rx_fifo_rdport_adr = uart_rx_fifo_consume;
assign uart_rx_fifo_syncfifo_dout = uart_rx_fifo_rdport_dat_r;
assign uart_rx_fifo_syncfifo_writable = (uart_rx_fifo_level != 5'd16);
assign uart_rx_fifo_syncfifo_readable = (uart_rx_fifo_level != 1'd0);
assign spiflash_bus_dat_r = spiflash_sr;
assign spiflash4x_clk = spiflash_clk;
assign spiflash4x_cs_n = spiflash_cs_n;
assign spiflash_o = spiflash_sr[31:28];
assign spiflash_oe = spiflash_dq_oe;
assign front_panel_switches = (~pwrsw);
assign hdled = (~front_panel_leds[0]);
assign pwled = (~front_panel_leds[1]);
assign front_panel_wait = front_panel_switches;
assign front_panel_reset = front_panel_done;
assign front_panel_leds = front_panel_leds_storage;
assign front_panel_done = (front_panel_count == 1'd0);

// synthesis translate_off
reg dummy_d_12;
// synthesis translate_on
always @(*) begin
	half_rate_phy_dfi_p0_ras_n <= 1'd1;
	half_rate_phy_dfi_p0_we_n <= 1'd1;
	half_rate_phy_dfi_p0_cke <= 1'd0;
	half_rate_phy_dfi_p0_odt <= 1'd0;
	half_rate_phy_dfi_p0_reset_n <= 1'd0;
	half_rate_phy_dfi_p0_wrdata <= 32'd0;
	half_rate_phy_dfi_p0_wrdata_mask <= 4'd0;
	half_rate_phy_dfi_p0_rddata_en <= 1'd0;
	half_rate_phy_dfi_p1_address <= 15'd0;
	half_rate_phy_dfi_p1_bank <= 3'd0;
	half_rate_phy_dfi_p1_cas_n <= 1'd1;
	half_rate_phy_dfi_p1_cs_n <= 1'd1;
	half_rate_phy_dfi_p1_ras_n <= 1'd1;
	half_rate_phy_dfi_p1_we_n <= 1'd1;
	half_rate_phy_dfi_p1_cke <= 1'd0;
	half_rate_phy_dfi_p1_odt <= 1'd0;
	half_rate_phy_dfi_p1_reset_n <= 1'd0;
	half_rate_phy_dfi_p1_wrdata <= 32'd0;
	half_rate_phy_dfi_p1_wrdata_mask <= 4'd0;
	half_rate_phy_dfi_p1_rddata_en <= 1'd0;
	half_rate_phy_dfi_p0_address <= 15'd0;
	half_rate_phy_dfi_p0_bank <= 3'd0;
	half_rate_phy_dfi_p0_cas_n <= 1'd1;
	half_rate_phy_dfi_p0_cs_n <= 1'd1;
	if ((~phase_sel)) begin
		half_rate_phy_dfi_p0_address <= dfi_dfi_p0_address;
		half_rate_phy_dfi_p0_bank <= dfi_dfi_p0_bank;
		half_rate_phy_dfi_p0_cas_n <= dfi_dfi_p0_cas_n;
		half_rate_phy_dfi_p0_cs_n <= dfi_dfi_p0_cs_n;
		half_rate_phy_dfi_p0_ras_n <= dfi_dfi_p0_ras_n;
		half_rate_phy_dfi_p0_we_n <= dfi_dfi_p0_we_n;
		half_rate_phy_dfi_p0_cke <= dfi_dfi_p0_cke;
		half_rate_phy_dfi_p0_odt <= dfi_dfi_p0_odt;
		half_rate_phy_dfi_p0_reset_n <= dfi_dfi_p0_reset_n;
		half_rate_phy_dfi_p0_wrdata <= dfi_dfi_p0_wrdata;
		half_rate_phy_dfi_p0_wrdata_mask <= dfi_dfi_p0_wrdata_mask;
		half_rate_phy_dfi_p0_rddata_en <= dfi_dfi_p0_rddata_en;
		half_rate_phy_dfi_p1_address <= dfi_dfi_p1_address;
		half_rate_phy_dfi_p1_bank <= dfi_dfi_p1_bank;
		half_rate_phy_dfi_p1_cas_n <= dfi_dfi_p1_cas_n;
		half_rate_phy_dfi_p1_cs_n <= dfi_dfi_p1_cs_n;
		half_rate_phy_dfi_p1_ras_n <= dfi_dfi_p1_ras_n;
		half_rate_phy_dfi_p1_we_n <= dfi_dfi_p1_we_n;
		half_rate_phy_dfi_p1_cke <= dfi_dfi_p1_cke;
		half_rate_phy_dfi_p1_odt <= dfi_dfi_p1_odt;
		half_rate_phy_dfi_p1_reset_n <= dfi_dfi_p1_reset_n;
		half_rate_phy_dfi_p1_wrdata <= dfi_dfi_p1_wrdata;
		half_rate_phy_dfi_p1_wrdata_mask <= dfi_dfi_p1_wrdata_mask;
		half_rate_phy_dfi_p1_rddata_en <= dfi_dfi_p1_rddata_en;
	end else begin
		half_rate_phy_dfi_p0_address <= dfi_dfi_p2_address;
		half_rate_phy_dfi_p0_bank <= dfi_dfi_p2_bank;
		half_rate_phy_dfi_p0_cas_n <= dfi_dfi_p2_cas_n;
		half_rate_phy_dfi_p0_cs_n <= dfi_dfi_p2_cs_n;
		half_rate_phy_dfi_p0_ras_n <= dfi_dfi_p2_ras_n;
		half_rate_phy_dfi_p0_we_n <= dfi_dfi_p2_we_n;
		half_rate_phy_dfi_p0_cke <= dfi_dfi_p2_cke;
		half_rate_phy_dfi_p0_odt <= dfi_dfi_p2_odt;
		half_rate_phy_dfi_p0_reset_n <= dfi_dfi_p2_reset_n;
		half_rate_phy_dfi_p0_wrdata <= dfi_dfi_p2_wrdata;
		half_rate_phy_dfi_p0_wrdata_mask <= dfi_dfi_p2_wrdata_mask;
		half_rate_phy_dfi_p0_rddata_en <= dfi_dfi_p2_rddata_en;
		half_rate_phy_dfi_p1_address <= dfi_dfi_p3_address;
		half_rate_phy_dfi_p1_bank <= dfi_dfi_p3_bank;
		half_rate_phy_dfi_p1_cas_n <= dfi_dfi_p3_cas_n;
		half_rate_phy_dfi_p1_cs_n <= dfi_dfi_p3_cs_n;
		half_rate_phy_dfi_p1_ras_n <= dfi_dfi_p3_ras_n;
		half_rate_phy_dfi_p1_we_n <= dfi_dfi_p3_we_n;
		half_rate_phy_dfi_p1_cke <= dfi_dfi_p3_cke;
		half_rate_phy_dfi_p1_odt <= dfi_dfi_p3_odt;
		half_rate_phy_dfi_p1_reset_n <= dfi_dfi_p3_reset_n;
		half_rate_phy_dfi_p1_wrdata <= dfi_dfi_p3_wrdata;
		half_rate_phy_dfi_p1_wrdata_mask <= dfi_dfi_p3_wrdata_mask;
		half_rate_phy_dfi_p1_rddata_en <= dfi_dfi_p3_rddata_en;
	end
// synthesis translate_off
	dummy_d_12 <= dummy_s;
// synthesis translate_on
end
assign half_rate_phy_dfi_p1_wrdata_en = ((dfi_dfi_p1_wrdata_en & (~phase_sel)) | wr_data_en_d);
assign half_rate_phy_sdram_half_clk_n = (~sdram_half_clk);
assign half_rate_phy_dqs_t_d0 = (~(half_rate_phy_drive_dqs | half_rate_phy_postamble));
assign half_rate_phy_dqs_t_d1 = (~half_rate_phy_drive_dqs);
assign half_rate_phy_record0_wrdata = half_rate_phy_dfi_p0_wrdata;
assign half_rate_phy_record0_wrdata_mask = half_rate_phy_dfi_p0_wrdata_mask;
assign half_rate_phy_record0_wrdata_en = half_rate_phy_dfi_p0_wrdata_en;
assign half_rate_phy_record0_rddata_en = half_rate_phy_dfi_p0_rddata_en;
assign half_rate_phy_record1_wrdata = half_rate_phy_dfi_p1_wrdata;
assign half_rate_phy_record1_wrdata_mask = half_rate_phy_dfi_p1_wrdata_mask;
assign half_rate_phy_record1_wrdata_en = half_rate_phy_dfi_p1_wrdata_en;
assign half_rate_phy_record1_rddata_en = half_rate_phy_dfi_p1_rddata_en;
assign half_rate_phy_drive_dq_n0 = (~half_rate_phy_drive_dq);
assign half_rate_phy_wrdata_en = (half_rate_phy_record0_wrdata_en | half_rate_phy_record1_wrdata_en);
assign half_rate_phy_drive_dq = half_rate_phy_r_drive_dq[4];
assign half_rate_phy_drive_dqs = half_rate_phy_r_dfi_wrdata_en[5];
assign half_rate_phy_rddata_en = (half_rate_phy_record0_rddata_en | half_rate_phy_record1_rddata_en);
assign half_rate_phy_dfi_p0_rddata = half_rate_phy_record0_rddata;
assign half_rate_phy_dfi_p0_rddata_valid = half_rate_phy_rddata_sr[0];
assign half_rate_phy_dfi_p1_rddata = half_rate_phy_record1_rddata;
assign half_rate_phy_dfi_p1_rddata_valid = half_rate_phy_rddata_sr[0];
assign dfi_dfi_p0_address = controllerinjector_master_p0_address;
assign dfi_dfi_p0_bank = controllerinjector_master_p0_bank;
assign dfi_dfi_p0_cas_n = controllerinjector_master_p0_cas_n;
assign dfi_dfi_p0_cs_n = controllerinjector_master_p0_cs_n;
assign dfi_dfi_p0_ras_n = controllerinjector_master_p0_ras_n;
assign dfi_dfi_p0_we_n = controllerinjector_master_p0_we_n;
assign dfi_dfi_p0_cke = controllerinjector_master_p0_cke;
assign dfi_dfi_p0_odt = controllerinjector_master_p0_odt;
assign dfi_dfi_p0_reset_n = controllerinjector_master_p0_reset_n;
assign dfi_dfi_p0_wrdata = controllerinjector_master_p0_wrdata;
assign dfi_dfi_p0_wrdata_en = controllerinjector_master_p0_wrdata_en;
assign dfi_dfi_p0_wrdata_mask = controllerinjector_master_p0_wrdata_mask;
assign dfi_dfi_p0_rddata_en = controllerinjector_master_p0_rddata_en;
assign controllerinjector_master_p0_rddata = dfi_dfi_p0_rddata;
assign controllerinjector_master_p0_rddata_valid = dfi_dfi_p0_rddata_valid;
assign dfi_dfi_p1_address = controllerinjector_master_p1_address;
assign dfi_dfi_p1_bank = controllerinjector_master_p1_bank;
assign dfi_dfi_p1_cas_n = controllerinjector_master_p1_cas_n;
assign dfi_dfi_p1_cs_n = controllerinjector_master_p1_cs_n;
assign dfi_dfi_p1_ras_n = controllerinjector_master_p1_ras_n;
assign dfi_dfi_p1_we_n = controllerinjector_master_p1_we_n;
assign dfi_dfi_p1_cke = controllerinjector_master_p1_cke;
assign dfi_dfi_p1_odt = controllerinjector_master_p1_odt;
assign dfi_dfi_p1_reset_n = controllerinjector_master_p1_reset_n;
assign dfi_dfi_p1_wrdata = controllerinjector_master_p1_wrdata;
assign dfi_dfi_p1_wrdata_en = controllerinjector_master_p1_wrdata_en;
assign dfi_dfi_p1_wrdata_mask = controllerinjector_master_p1_wrdata_mask;
assign dfi_dfi_p1_rddata_en = controllerinjector_master_p1_rddata_en;
assign controllerinjector_master_p1_rddata = dfi_dfi_p1_rddata;
assign controllerinjector_master_p1_rddata_valid = dfi_dfi_p1_rddata_valid;
assign dfi_dfi_p2_address = controllerinjector_master_p2_address;
assign dfi_dfi_p2_bank = controllerinjector_master_p2_bank;
assign dfi_dfi_p2_cas_n = controllerinjector_master_p2_cas_n;
assign dfi_dfi_p2_cs_n = controllerinjector_master_p2_cs_n;
assign dfi_dfi_p2_ras_n = controllerinjector_master_p2_ras_n;
assign dfi_dfi_p2_we_n = controllerinjector_master_p2_we_n;
assign dfi_dfi_p2_cke = controllerinjector_master_p2_cke;
assign dfi_dfi_p2_odt = controllerinjector_master_p2_odt;
assign dfi_dfi_p2_reset_n = controllerinjector_master_p2_reset_n;
assign dfi_dfi_p2_wrdata = controllerinjector_master_p2_wrdata;
assign dfi_dfi_p2_wrdata_en = controllerinjector_master_p2_wrdata_en;
assign dfi_dfi_p2_wrdata_mask = controllerinjector_master_p2_wrdata_mask;
assign dfi_dfi_p2_rddata_en = controllerinjector_master_p2_rddata_en;
assign controllerinjector_master_p2_rddata = dfi_dfi_p2_rddata;
assign controllerinjector_master_p2_rddata_valid = dfi_dfi_p2_rddata_valid;
assign dfi_dfi_p3_address = controllerinjector_master_p3_address;
assign dfi_dfi_p3_bank = controllerinjector_master_p3_bank;
assign dfi_dfi_p3_cas_n = controllerinjector_master_p3_cas_n;
assign dfi_dfi_p3_cs_n = controllerinjector_master_p3_cs_n;
assign dfi_dfi_p3_ras_n = controllerinjector_master_p3_ras_n;
assign dfi_dfi_p3_we_n = controllerinjector_master_p3_we_n;
assign dfi_dfi_p3_cke = controllerinjector_master_p3_cke;
assign dfi_dfi_p3_odt = controllerinjector_master_p3_odt;
assign dfi_dfi_p3_reset_n = controllerinjector_master_p3_reset_n;
assign dfi_dfi_p3_wrdata = controllerinjector_master_p3_wrdata;
assign dfi_dfi_p3_wrdata_en = controllerinjector_master_p3_wrdata_en;
assign dfi_dfi_p3_wrdata_mask = controllerinjector_master_p3_wrdata_mask;
assign dfi_dfi_p3_rddata_en = controllerinjector_master_p3_rddata_en;
assign controllerinjector_master_p3_rddata = dfi_dfi_p3_rddata;
assign controllerinjector_master_p3_rddata_valid = dfi_dfi_p3_rddata_valid;
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
assign controllerinjector_slave_p2_address = controllerinjector_dfi_p2_address;
assign controllerinjector_slave_p2_bank = controllerinjector_dfi_p2_bank;
assign controllerinjector_slave_p2_cas_n = controllerinjector_dfi_p2_cas_n;
assign controllerinjector_slave_p2_cs_n = controllerinjector_dfi_p2_cs_n;
assign controllerinjector_slave_p2_ras_n = controllerinjector_dfi_p2_ras_n;
assign controllerinjector_slave_p2_we_n = controllerinjector_dfi_p2_we_n;
assign controllerinjector_slave_p2_cke = controllerinjector_dfi_p2_cke;
assign controllerinjector_slave_p2_odt = controllerinjector_dfi_p2_odt;
assign controllerinjector_slave_p2_reset_n = controllerinjector_dfi_p2_reset_n;
assign controllerinjector_slave_p2_wrdata = controllerinjector_dfi_p2_wrdata;
assign controllerinjector_slave_p2_wrdata_en = controllerinjector_dfi_p2_wrdata_en;
assign controllerinjector_slave_p2_wrdata_mask = controllerinjector_dfi_p2_wrdata_mask;
assign controllerinjector_slave_p2_rddata_en = controllerinjector_dfi_p2_rddata_en;
assign controllerinjector_dfi_p2_rddata = controllerinjector_slave_p2_rddata;
assign controllerinjector_dfi_p2_rddata_valid = controllerinjector_slave_p2_rddata_valid;
assign controllerinjector_slave_p3_address = controllerinjector_dfi_p3_address;
assign controllerinjector_slave_p3_bank = controllerinjector_dfi_p3_bank;
assign controllerinjector_slave_p3_cas_n = controllerinjector_dfi_p3_cas_n;
assign controllerinjector_slave_p3_cs_n = controllerinjector_dfi_p3_cs_n;
assign controllerinjector_slave_p3_ras_n = controllerinjector_dfi_p3_ras_n;
assign controllerinjector_slave_p3_we_n = controllerinjector_dfi_p3_we_n;
assign controllerinjector_slave_p3_cke = controllerinjector_dfi_p3_cke;
assign controllerinjector_slave_p3_odt = controllerinjector_dfi_p3_odt;
assign controllerinjector_slave_p3_reset_n = controllerinjector_dfi_p3_reset_n;
assign controllerinjector_slave_p3_wrdata = controllerinjector_dfi_p3_wrdata;
assign controllerinjector_slave_p3_wrdata_en = controllerinjector_dfi_p3_wrdata_en;
assign controllerinjector_slave_p3_wrdata_mask = controllerinjector_dfi_p3_wrdata_mask;
assign controllerinjector_slave_p3_rddata_en = controllerinjector_dfi_p3_rddata_en;
assign controllerinjector_dfi_p3_rddata = controllerinjector_slave_p3_rddata;
assign controllerinjector_dfi_p3_rddata_valid = controllerinjector_slave_p3_rddata_valid;

// synthesis translate_off
reg dummy_d_13;
// synthesis translate_on
always @(*) begin
	controllerinjector_master_p0_cs_n <= 1'd1;
	controllerinjector_master_p0_ras_n <= 1'd1;
	controllerinjector_master_p0_we_n <= 1'd1;
	controllerinjector_inti_p0_rddata <= 32'd0;
	controllerinjector_master_p0_cke <= 1'd0;
	controllerinjector_inti_p0_rddata_valid <= 1'd0;
	controllerinjector_master_p0_odt <= 1'd0;
	controllerinjector_master_p0_reset_n <= 1'd0;
	controllerinjector_master_p0_wrdata <= 32'd0;
	controllerinjector_master_p0_wrdata_en <= 1'd0;
	controllerinjector_master_p0_wrdata_mask <= 4'd0;
	controllerinjector_master_p0_rddata_en <= 1'd0;
	controllerinjector_master_p1_address <= 14'd0;
	controllerinjector_master_p1_bank <= 3'd0;
	controllerinjector_master_p1_cas_n <= 1'd1;
	controllerinjector_master_p1_cs_n <= 1'd1;
	controllerinjector_master_p1_ras_n <= 1'd1;
	controllerinjector_master_p1_we_n <= 1'd1;
	controllerinjector_inti_p1_rddata <= 32'd0;
	controllerinjector_master_p1_cke <= 1'd0;
	controllerinjector_inti_p1_rddata_valid <= 1'd0;
	controllerinjector_master_p1_odt <= 1'd0;
	controllerinjector_master_p1_reset_n <= 1'd0;
	controllerinjector_master_p1_wrdata <= 32'd0;
	controllerinjector_master_p1_wrdata_en <= 1'd0;
	controllerinjector_master_p1_wrdata_mask <= 4'd0;
	controllerinjector_master_p1_rddata_en <= 1'd0;
	controllerinjector_master_p2_address <= 14'd0;
	controllerinjector_master_p2_bank <= 3'd0;
	controllerinjector_master_p2_cas_n <= 1'd1;
	controllerinjector_master_p2_cs_n <= 1'd1;
	controllerinjector_master_p2_ras_n <= 1'd1;
	controllerinjector_master_p2_we_n <= 1'd1;
	controllerinjector_inti_p2_rddata <= 32'd0;
	controllerinjector_master_p2_cke <= 1'd0;
	controllerinjector_inti_p2_rddata_valid <= 1'd0;
	controllerinjector_master_p2_odt <= 1'd0;
	controllerinjector_master_p2_reset_n <= 1'd0;
	controllerinjector_master_p2_wrdata <= 32'd0;
	controllerinjector_master_p2_wrdata_en <= 1'd0;
	controllerinjector_master_p2_wrdata_mask <= 4'd0;
	controllerinjector_master_p2_rddata_en <= 1'd0;
	controllerinjector_master_p3_address <= 14'd0;
	controllerinjector_master_p3_bank <= 3'd0;
	controllerinjector_master_p3_cas_n <= 1'd1;
	controllerinjector_master_p3_cs_n <= 1'd1;
	controllerinjector_master_p3_ras_n <= 1'd1;
	controllerinjector_master_p3_we_n <= 1'd1;
	controllerinjector_inti_p3_rddata <= 32'd0;
	controllerinjector_master_p3_cke <= 1'd0;
	controllerinjector_inti_p3_rddata_valid <= 1'd0;
	controllerinjector_master_p3_odt <= 1'd0;
	controllerinjector_master_p3_reset_n <= 1'd0;
	controllerinjector_master_p3_wrdata <= 32'd0;
	controllerinjector_master_p3_wrdata_en <= 1'd0;
	controllerinjector_master_p3_wrdata_mask <= 4'd0;
	controllerinjector_master_p3_rddata_en <= 1'd0;
	controllerinjector_slave_p0_rddata <= 32'd0;
	controllerinjector_slave_p0_rddata_valid <= 1'd0;
	controllerinjector_slave_p1_rddata <= 32'd0;
	controllerinjector_slave_p1_rddata_valid <= 1'd0;
	controllerinjector_slave_p2_rddata <= 32'd0;
	controllerinjector_slave_p2_rddata_valid <= 1'd0;
	controllerinjector_slave_p3_rddata <= 32'd0;
	controllerinjector_slave_p3_rddata_valid <= 1'd0;
	controllerinjector_master_p0_address <= 14'd0;
	controllerinjector_master_p0_bank <= 3'd0;
	controllerinjector_master_p0_cas_n <= 1'd1;
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
		controllerinjector_master_p2_address <= controllerinjector_slave_p2_address;
		controllerinjector_master_p2_bank <= controllerinjector_slave_p2_bank;
		controllerinjector_master_p2_cas_n <= controllerinjector_slave_p2_cas_n;
		controllerinjector_master_p2_cs_n <= controllerinjector_slave_p2_cs_n;
		controllerinjector_master_p2_ras_n <= controllerinjector_slave_p2_ras_n;
		controllerinjector_master_p2_we_n <= controllerinjector_slave_p2_we_n;
		controllerinjector_master_p2_cke <= controllerinjector_slave_p2_cke;
		controllerinjector_master_p2_odt <= controllerinjector_slave_p2_odt;
		controllerinjector_master_p2_reset_n <= controllerinjector_slave_p2_reset_n;
		controllerinjector_master_p2_wrdata <= controllerinjector_slave_p2_wrdata;
		controllerinjector_master_p2_wrdata_en <= controllerinjector_slave_p2_wrdata_en;
		controllerinjector_master_p2_wrdata_mask <= controllerinjector_slave_p2_wrdata_mask;
		controllerinjector_master_p2_rddata_en <= controllerinjector_slave_p2_rddata_en;
		controllerinjector_slave_p2_rddata <= controllerinjector_master_p2_rddata;
		controllerinjector_slave_p2_rddata_valid <= controllerinjector_master_p2_rddata_valid;
		controllerinjector_master_p3_address <= controllerinjector_slave_p3_address;
		controllerinjector_master_p3_bank <= controllerinjector_slave_p3_bank;
		controllerinjector_master_p3_cas_n <= controllerinjector_slave_p3_cas_n;
		controllerinjector_master_p3_cs_n <= controllerinjector_slave_p3_cs_n;
		controllerinjector_master_p3_ras_n <= controllerinjector_slave_p3_ras_n;
		controllerinjector_master_p3_we_n <= controllerinjector_slave_p3_we_n;
		controllerinjector_master_p3_cke <= controllerinjector_slave_p3_cke;
		controllerinjector_master_p3_odt <= controllerinjector_slave_p3_odt;
		controllerinjector_master_p3_reset_n <= controllerinjector_slave_p3_reset_n;
		controllerinjector_master_p3_wrdata <= controllerinjector_slave_p3_wrdata;
		controllerinjector_master_p3_wrdata_en <= controllerinjector_slave_p3_wrdata_en;
		controllerinjector_master_p3_wrdata_mask <= controllerinjector_slave_p3_wrdata_mask;
		controllerinjector_master_p3_rddata_en <= controllerinjector_slave_p3_rddata_en;
		controllerinjector_slave_p3_rddata <= controllerinjector_master_p3_rddata;
		controllerinjector_slave_p3_rddata_valid <= controllerinjector_master_p3_rddata_valid;
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
		controllerinjector_master_p2_address <= controllerinjector_inti_p2_address;
		controllerinjector_master_p2_bank <= controllerinjector_inti_p2_bank;
		controllerinjector_master_p2_cas_n <= controllerinjector_inti_p2_cas_n;
		controllerinjector_master_p2_cs_n <= controllerinjector_inti_p2_cs_n;
		controllerinjector_master_p2_ras_n <= controllerinjector_inti_p2_ras_n;
		controllerinjector_master_p2_we_n <= controllerinjector_inti_p2_we_n;
		controllerinjector_master_p2_cke <= controllerinjector_inti_p2_cke;
		controllerinjector_master_p2_odt <= controllerinjector_inti_p2_odt;
		controllerinjector_master_p2_reset_n <= controllerinjector_inti_p2_reset_n;
		controllerinjector_master_p2_wrdata <= controllerinjector_inti_p2_wrdata;
		controllerinjector_master_p2_wrdata_en <= controllerinjector_inti_p2_wrdata_en;
		controllerinjector_master_p2_wrdata_mask <= controllerinjector_inti_p2_wrdata_mask;
		controllerinjector_master_p2_rddata_en <= controllerinjector_inti_p2_rddata_en;
		controllerinjector_inti_p2_rddata <= controllerinjector_master_p2_rddata;
		controllerinjector_inti_p2_rddata_valid <= controllerinjector_master_p2_rddata_valid;
		controllerinjector_master_p3_address <= controllerinjector_inti_p3_address;
		controllerinjector_master_p3_bank <= controllerinjector_inti_p3_bank;
		controllerinjector_master_p3_cas_n <= controllerinjector_inti_p3_cas_n;
		controllerinjector_master_p3_cs_n <= controllerinjector_inti_p3_cs_n;
		controllerinjector_master_p3_ras_n <= controllerinjector_inti_p3_ras_n;
		controllerinjector_master_p3_we_n <= controllerinjector_inti_p3_we_n;
		controllerinjector_master_p3_cke <= controllerinjector_inti_p3_cke;
		controllerinjector_master_p3_odt <= controllerinjector_inti_p3_odt;
		controllerinjector_master_p3_reset_n <= controllerinjector_inti_p3_reset_n;
		controllerinjector_master_p3_wrdata <= controllerinjector_inti_p3_wrdata;
		controllerinjector_master_p3_wrdata_en <= controllerinjector_inti_p3_wrdata_en;
		controllerinjector_master_p3_wrdata_mask <= controllerinjector_inti_p3_wrdata_mask;
		controllerinjector_master_p3_rddata_en <= controllerinjector_inti_p3_rddata_en;
		controllerinjector_inti_p3_rddata <= controllerinjector_master_p3_rddata;
		controllerinjector_inti_p3_rddata_valid <= controllerinjector_master_p3_rddata_valid;
	end
// synthesis translate_off
	dummy_d_13 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_inti_p0_cke = controllerinjector_storage[1];
assign controllerinjector_inti_p1_cke = controllerinjector_storage[1];
assign controllerinjector_inti_p2_cke = controllerinjector_storage[1];
assign controllerinjector_inti_p3_cke = controllerinjector_storage[1];
assign controllerinjector_inti_p0_odt = controllerinjector_storage[2];
assign controllerinjector_inti_p1_odt = controllerinjector_storage[2];
assign controllerinjector_inti_p2_odt = controllerinjector_storage[2];
assign controllerinjector_inti_p3_odt = controllerinjector_storage[2];
assign controllerinjector_inti_p0_reset_n = controllerinjector_storage[3];
assign controllerinjector_inti_p1_reset_n = controllerinjector_storage[3];
assign controllerinjector_inti_p2_reset_n = controllerinjector_storage[3];
assign controllerinjector_inti_p3_reset_n = controllerinjector_storage[3];

// synthesis translate_off
reg dummy_d_14;
// synthesis translate_on
always @(*) begin
	controllerinjector_inti_p0_cs_n <= 1'd1;
	controllerinjector_inti_p0_ras_n <= 1'd1;
	controllerinjector_inti_p0_we_n <= 1'd1;
	controllerinjector_inti_p0_cas_n <= 1'd1;
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
// synthesis translate_off
	dummy_d_14 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_inti_p0_address = controllerinjector_phaseinjector0_address_storage;
assign controllerinjector_inti_p0_bank = controllerinjector_phaseinjector0_baddress_storage;
assign controllerinjector_inti_p0_wrdata_en = (controllerinjector_phaseinjector0_command_issue_re & controllerinjector_phaseinjector0_command_storage[4]);
assign controllerinjector_inti_p0_rddata_en = (controllerinjector_phaseinjector0_command_issue_re & controllerinjector_phaseinjector0_command_storage[5]);
assign controllerinjector_inti_p0_wrdata = controllerinjector_phaseinjector0_wrdata_storage;
assign controllerinjector_inti_p0_wrdata_mask = 1'd0;

// synthesis translate_off
reg dummy_d_15;
// synthesis translate_on
always @(*) begin
	controllerinjector_inti_p1_ras_n <= 1'd1;
	controllerinjector_inti_p1_we_n <= 1'd1;
	controllerinjector_inti_p1_cas_n <= 1'd1;
	controllerinjector_inti_p1_cs_n <= 1'd1;
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
// synthesis translate_off
	dummy_d_15 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_inti_p1_address = controllerinjector_phaseinjector1_address_storage;
assign controllerinjector_inti_p1_bank = controllerinjector_phaseinjector1_baddress_storage;
assign controllerinjector_inti_p1_wrdata_en = (controllerinjector_phaseinjector1_command_issue_re & controllerinjector_phaseinjector1_command_storage[4]);
assign controllerinjector_inti_p1_rddata_en = (controllerinjector_phaseinjector1_command_issue_re & controllerinjector_phaseinjector1_command_storage[5]);
assign controllerinjector_inti_p1_wrdata = controllerinjector_phaseinjector1_wrdata_storage;
assign controllerinjector_inti_p1_wrdata_mask = 1'd0;

// synthesis translate_off
reg dummy_d_16;
// synthesis translate_on
always @(*) begin
	controllerinjector_inti_p2_we_n <= 1'd1;
	controllerinjector_inti_p2_cas_n <= 1'd1;
	controllerinjector_inti_p2_cs_n <= 1'd1;
	controllerinjector_inti_p2_ras_n <= 1'd1;
	if (controllerinjector_phaseinjector2_command_issue_re) begin
		controllerinjector_inti_p2_cs_n <= (~controllerinjector_phaseinjector2_command_storage[0]);
		controllerinjector_inti_p2_we_n <= (~controllerinjector_phaseinjector2_command_storage[1]);
		controllerinjector_inti_p2_cas_n <= (~controllerinjector_phaseinjector2_command_storage[2]);
		controllerinjector_inti_p2_ras_n <= (~controllerinjector_phaseinjector2_command_storage[3]);
	end else begin
		controllerinjector_inti_p2_cs_n <= 1'd1;
		controllerinjector_inti_p2_we_n <= 1'd1;
		controllerinjector_inti_p2_cas_n <= 1'd1;
		controllerinjector_inti_p2_ras_n <= 1'd1;
	end
// synthesis translate_off
	dummy_d_16 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_inti_p2_address = controllerinjector_phaseinjector2_address_storage;
assign controllerinjector_inti_p2_bank = controllerinjector_phaseinjector2_baddress_storage;
assign controllerinjector_inti_p2_wrdata_en = (controllerinjector_phaseinjector2_command_issue_re & controllerinjector_phaseinjector2_command_storage[4]);
assign controllerinjector_inti_p2_rddata_en = (controllerinjector_phaseinjector2_command_issue_re & controllerinjector_phaseinjector2_command_storage[5]);
assign controllerinjector_inti_p2_wrdata = controllerinjector_phaseinjector2_wrdata_storage;
assign controllerinjector_inti_p2_wrdata_mask = 1'd0;

// synthesis translate_off
reg dummy_d_17;
// synthesis translate_on
always @(*) begin
	controllerinjector_inti_p3_cas_n <= 1'd1;
	controllerinjector_inti_p3_cs_n <= 1'd1;
	controllerinjector_inti_p3_ras_n <= 1'd1;
	controllerinjector_inti_p3_we_n <= 1'd1;
	if (controllerinjector_phaseinjector3_command_issue_re) begin
		controllerinjector_inti_p3_cs_n <= (~controllerinjector_phaseinjector3_command_storage[0]);
		controllerinjector_inti_p3_we_n <= (~controllerinjector_phaseinjector3_command_storage[1]);
		controllerinjector_inti_p3_cas_n <= (~controllerinjector_phaseinjector3_command_storage[2]);
		controllerinjector_inti_p3_ras_n <= (~controllerinjector_phaseinjector3_command_storage[3]);
	end else begin
		controllerinjector_inti_p3_cs_n <= 1'd1;
		controllerinjector_inti_p3_we_n <= 1'd1;
		controllerinjector_inti_p3_cas_n <= 1'd1;
		controllerinjector_inti_p3_ras_n <= 1'd1;
	end
// synthesis translate_off
	dummy_d_17 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_inti_p3_address = controllerinjector_phaseinjector3_address_storage;
assign controllerinjector_inti_p3_bank = controllerinjector_phaseinjector3_baddress_storage;
assign controllerinjector_inti_p3_wrdata_en = (controllerinjector_phaseinjector3_command_issue_re & controllerinjector_phaseinjector3_command_storage[4]);
assign controllerinjector_inti_p3_rddata_en = (controllerinjector_phaseinjector3_command_issue_re & controllerinjector_phaseinjector3_command_storage[5]);
assign controllerinjector_inti_p3_wrdata = controllerinjector_phaseinjector3_wrdata_storage;
assign controllerinjector_inti_p3_wrdata_mask = 1'd0;
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

// synthesis translate_off
reg dummy_d_18;
// synthesis translate_on
always @(*) begin
	controllerinjector_seq_start <= 1'd0;
	controllerinjector_refresher_next_state <= 2'd0;
	controllerinjector_cmd_valid <= 1'd0;
	controllerinjector_cmd_last <= 1'd0;
	controllerinjector_refresher_next_state <= controllerinjector_refresher_state;
	case (controllerinjector_refresher_state)
		1'd1: begin
			controllerinjector_cmd_valid <= 1'd1;
			if (controllerinjector_cmd_ready) begin
				controllerinjector_seq_start <= 1'd1;
				controllerinjector_refresher_next_state <= 2'd2;
			end
		end
		2'd2: begin
			if (controllerinjector_seq_done) begin
				controllerinjector_cmd_last <= 1'd1;
				controllerinjector_refresher_next_state <= 1'd0;
			end else begin
				controllerinjector_cmd_valid <= 1'd1;
			end
		end
		default: begin
			if (controllerinjector_done) begin
				controllerinjector_refresher_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_18 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine0_sink_valid = controllerinjector_bankmachine0_req_valid;
assign controllerinjector_bankmachine0_req_ready = controllerinjector_bankmachine0_sink_ready;
assign controllerinjector_bankmachine0_sink_payload_we = controllerinjector_bankmachine0_req_we;
assign controllerinjector_bankmachine0_sink_payload_adr = controllerinjector_bankmachine0_req_adr;
assign controllerinjector_bankmachine0_source_ready = (controllerinjector_bankmachine0_req_wdata_ready | controllerinjector_bankmachine0_req_rdata_valid);
assign controllerinjector_bankmachine0_req_lock = controllerinjector_bankmachine0_source_valid;
assign controllerinjector_bankmachine0_hit = (controllerinjector_bankmachine0_openrow == controllerinjector_bankmachine0_source_payload_adr[20:7]);
assign controllerinjector_bankmachine0_cmd_payload_ba = 1'd0;

// synthesis translate_off
reg dummy_d_19;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine0_cmd_payload_a <= 14'd0;
	if (controllerinjector_bankmachine0_sel_row_adr) begin
		controllerinjector_bankmachine0_cmd_payload_a <= controllerinjector_bankmachine0_source_payload_adr[20:7];
	end else begin
		controllerinjector_bankmachine0_cmd_payload_a <= {controllerinjector_bankmachine0_source_payload_adr[6:0], {3{1'd0}}};
	end
// synthesis translate_off
	dummy_d_19 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine0_wait = (~((controllerinjector_bankmachine0_cmd_valid & controllerinjector_bankmachine0_cmd_ready) & controllerinjector_bankmachine0_cmd_payload_is_write));
assign controllerinjector_bankmachine0_syncfifo0_din = {controllerinjector_bankmachine0_fifo_in_last, controllerinjector_bankmachine0_fifo_in_payload_adr, controllerinjector_bankmachine0_fifo_in_payload_we};
assign {controllerinjector_bankmachine0_fifo_out_last, controllerinjector_bankmachine0_fifo_out_payload_adr, controllerinjector_bankmachine0_fifo_out_payload_we} = controllerinjector_bankmachine0_syncfifo0_dout;
assign controllerinjector_bankmachine0_sink_ready = controllerinjector_bankmachine0_syncfifo0_writable;
assign controllerinjector_bankmachine0_syncfifo0_we = controllerinjector_bankmachine0_sink_valid;
assign controllerinjector_bankmachine0_fifo_in_last = controllerinjector_bankmachine0_sink_last;
assign controllerinjector_bankmachine0_fifo_in_payload_we = controllerinjector_bankmachine0_sink_payload_we;
assign controllerinjector_bankmachine0_fifo_in_payload_adr = controllerinjector_bankmachine0_sink_payload_adr;
assign controllerinjector_bankmachine0_source_valid = controllerinjector_bankmachine0_syncfifo0_readable;
assign controllerinjector_bankmachine0_source_last = controllerinjector_bankmachine0_fifo_out_last;
assign controllerinjector_bankmachine0_source_payload_we = controllerinjector_bankmachine0_fifo_out_payload_we;
assign controllerinjector_bankmachine0_source_payload_adr = controllerinjector_bankmachine0_fifo_out_payload_adr;
assign controllerinjector_bankmachine0_syncfifo0_re = controllerinjector_bankmachine0_source_ready;

// synthesis translate_off
reg dummy_d_20;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine0_wrport_adr <= 3'd0;
	if (controllerinjector_bankmachine0_replace) begin
		controllerinjector_bankmachine0_wrport_adr <= (controllerinjector_bankmachine0_produce - 1'd1);
	end else begin
		controllerinjector_bankmachine0_wrport_adr <= controllerinjector_bankmachine0_produce;
	end
// synthesis translate_off
	dummy_d_20 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine0_wrport_dat_w = controllerinjector_bankmachine0_syncfifo0_din;
assign controllerinjector_bankmachine0_wrport_we = (controllerinjector_bankmachine0_syncfifo0_we & (controllerinjector_bankmachine0_syncfifo0_writable | controllerinjector_bankmachine0_replace));
assign controllerinjector_bankmachine0_do_read = (controllerinjector_bankmachine0_syncfifo0_readable & controllerinjector_bankmachine0_syncfifo0_re);
assign controllerinjector_bankmachine0_rdport_adr = controllerinjector_bankmachine0_consume;
assign controllerinjector_bankmachine0_syncfifo0_dout = controllerinjector_bankmachine0_rdport_dat_r;
assign controllerinjector_bankmachine0_syncfifo0_writable = (controllerinjector_bankmachine0_level != 4'd8);
assign controllerinjector_bankmachine0_syncfifo0_readable = (controllerinjector_bankmachine0_level != 1'd0);
assign controllerinjector_bankmachine0_done = (controllerinjector_bankmachine0_count == 1'd0);

// synthesis translate_off
reg dummy_d_21;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine0_sel_row_adr <= 1'd0;
	controllerinjector_bankmachine0_cmd_payload_cas <= 1'd0;
	controllerinjector_bankmachine0_cmd_payload_ras <= 1'd0;
	controllerinjector_bankmachine0_cmd_payload_we <= 1'd0;
	controllerinjector_bankmachine0_cmd_payload_is_cmd <= 1'd0;
	controllerinjector_bankmachine0_cmd_payload_is_read <= 1'd0;
	controllerinjector_bankmachine0_cmd_payload_is_write <= 1'd0;
	controllerinjector_bankmachine0_track_open <= 1'd0;
	controllerinjector_bankmachine0_req_wdata_ready <= 1'd0;
	controllerinjector_bankmachine0_req_rdata_valid <= 1'd0;
	controllerinjector_bankmachine0_next_state <= 3'd0;
	controllerinjector_bankmachine0_refresh_gnt <= 1'd0;
	controllerinjector_bankmachine0_cmd_valid <= 1'd0;
	controllerinjector_bankmachine0_track_close <= 1'd0;
	controllerinjector_bankmachine0_next_state <= controllerinjector_bankmachine0_state;
	case (controllerinjector_bankmachine0_state)
		1'd1: begin
			if (controllerinjector_bankmachine0_done) begin
				controllerinjector_bankmachine0_cmd_valid <= 1'd1;
				if (controllerinjector_bankmachine0_cmd_ready) begin
					controllerinjector_bankmachine0_next_state <= 3'd4;
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
				controllerinjector_bankmachine0_next_state <= 3'd5;
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
				controllerinjector_bankmachine0_next_state <= 1'd0;
			end
		end
		3'd4: begin
			controllerinjector_bankmachine0_next_state <= 2'd2;
		end
		3'd5: begin
			controllerinjector_bankmachine0_next_state <= 1'd0;
		end
		default: begin
			if (controllerinjector_bankmachine0_refresh_req) begin
				controllerinjector_bankmachine0_next_state <= 2'd3;
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
							controllerinjector_bankmachine0_next_state <= 1'd1;
						end
					end else begin
						controllerinjector_bankmachine0_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_21 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine1_sink_valid = controllerinjector_bankmachine1_req_valid;
assign controllerinjector_bankmachine1_req_ready = controllerinjector_bankmachine1_sink_ready;
assign controllerinjector_bankmachine1_sink_payload_we = controllerinjector_bankmachine1_req_we;
assign controllerinjector_bankmachine1_sink_payload_adr = controllerinjector_bankmachine1_req_adr;
assign controllerinjector_bankmachine1_source_ready = (controllerinjector_bankmachine1_req_wdata_ready | controllerinjector_bankmachine1_req_rdata_valid);
assign controllerinjector_bankmachine1_req_lock = controllerinjector_bankmachine1_source_valid;
assign controllerinjector_bankmachine1_hit = (controllerinjector_bankmachine1_openrow == controllerinjector_bankmachine1_source_payload_adr[20:7]);
assign controllerinjector_bankmachine1_cmd_payload_ba = 1'd1;

// synthesis translate_off
reg dummy_d_22;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine1_cmd_payload_a <= 14'd0;
	if (controllerinjector_bankmachine1_sel_row_adr) begin
		controllerinjector_bankmachine1_cmd_payload_a <= controllerinjector_bankmachine1_source_payload_adr[20:7];
	end else begin
		controllerinjector_bankmachine1_cmd_payload_a <= {controllerinjector_bankmachine1_source_payload_adr[6:0], {3{1'd0}}};
	end
// synthesis translate_off
	dummy_d_22 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine1_wait = (~((controllerinjector_bankmachine1_cmd_valid & controllerinjector_bankmachine1_cmd_ready) & controllerinjector_bankmachine1_cmd_payload_is_write));
assign controllerinjector_bankmachine1_syncfifo1_din = {controllerinjector_bankmachine1_fifo_in_last, controllerinjector_bankmachine1_fifo_in_payload_adr, controllerinjector_bankmachine1_fifo_in_payload_we};
assign {controllerinjector_bankmachine1_fifo_out_last, controllerinjector_bankmachine1_fifo_out_payload_adr, controllerinjector_bankmachine1_fifo_out_payload_we} = controllerinjector_bankmachine1_syncfifo1_dout;
assign controllerinjector_bankmachine1_sink_ready = controllerinjector_bankmachine1_syncfifo1_writable;
assign controllerinjector_bankmachine1_syncfifo1_we = controllerinjector_bankmachine1_sink_valid;
assign controllerinjector_bankmachine1_fifo_in_last = controllerinjector_bankmachine1_sink_last;
assign controllerinjector_bankmachine1_fifo_in_payload_we = controllerinjector_bankmachine1_sink_payload_we;
assign controllerinjector_bankmachine1_fifo_in_payload_adr = controllerinjector_bankmachine1_sink_payload_adr;
assign controllerinjector_bankmachine1_source_valid = controllerinjector_bankmachine1_syncfifo1_readable;
assign controllerinjector_bankmachine1_source_last = controllerinjector_bankmachine1_fifo_out_last;
assign controllerinjector_bankmachine1_source_payload_we = controllerinjector_bankmachine1_fifo_out_payload_we;
assign controllerinjector_bankmachine1_source_payload_adr = controllerinjector_bankmachine1_fifo_out_payload_adr;
assign controllerinjector_bankmachine1_syncfifo1_re = controllerinjector_bankmachine1_source_ready;

// synthesis translate_off
reg dummy_d_23;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine1_wrport_adr <= 3'd0;
	if (controllerinjector_bankmachine1_replace) begin
		controllerinjector_bankmachine1_wrport_adr <= (controllerinjector_bankmachine1_produce - 1'd1);
	end else begin
		controllerinjector_bankmachine1_wrport_adr <= controllerinjector_bankmachine1_produce;
	end
// synthesis translate_off
	dummy_d_23 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine1_wrport_dat_w = controllerinjector_bankmachine1_syncfifo1_din;
assign controllerinjector_bankmachine1_wrport_we = (controllerinjector_bankmachine1_syncfifo1_we & (controllerinjector_bankmachine1_syncfifo1_writable | controllerinjector_bankmachine1_replace));
assign controllerinjector_bankmachine1_do_read = (controllerinjector_bankmachine1_syncfifo1_readable & controllerinjector_bankmachine1_syncfifo1_re);
assign controllerinjector_bankmachine1_rdport_adr = controllerinjector_bankmachine1_consume;
assign controllerinjector_bankmachine1_syncfifo1_dout = controllerinjector_bankmachine1_rdport_dat_r;
assign controllerinjector_bankmachine1_syncfifo1_writable = (controllerinjector_bankmachine1_level != 4'd8);
assign controllerinjector_bankmachine1_syncfifo1_readable = (controllerinjector_bankmachine1_level != 1'd0);
assign controllerinjector_bankmachine1_done = (controllerinjector_bankmachine1_count == 1'd0);

// synthesis translate_off
reg dummy_d_24;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine1_track_open <= 1'd0;
	controllerinjector_bankmachine1_sel_row_adr <= 1'd0;
	controllerinjector_bankmachine1_cmd_payload_cas <= 1'd0;
	controllerinjector_bankmachine1_cmd_payload_ras <= 1'd0;
	controllerinjector_bankmachine1_cmd_payload_we <= 1'd0;
	controllerinjector_bankmachine1_next_state <= 3'd0;
	controllerinjector_bankmachine1_cmd_payload_is_cmd <= 1'd0;
	controllerinjector_bankmachine1_cmd_payload_is_read <= 1'd0;
	controllerinjector_bankmachine1_cmd_payload_is_write <= 1'd0;
	controllerinjector_bankmachine1_req_wdata_ready <= 1'd0;
	controllerinjector_bankmachine1_req_rdata_valid <= 1'd0;
	controllerinjector_bankmachine1_refresh_gnt <= 1'd0;
	controllerinjector_bankmachine1_cmd_valid <= 1'd0;
	controllerinjector_bankmachine1_track_close <= 1'd0;
	controllerinjector_bankmachine1_next_state <= controllerinjector_bankmachine1_state;
	case (controllerinjector_bankmachine1_state)
		1'd1: begin
			if (controllerinjector_bankmachine1_done) begin
				controllerinjector_bankmachine1_cmd_valid <= 1'd1;
				if (controllerinjector_bankmachine1_cmd_ready) begin
					controllerinjector_bankmachine1_next_state <= 3'd4;
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
				controllerinjector_bankmachine1_next_state <= 3'd5;
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
				controllerinjector_bankmachine1_next_state <= 1'd0;
			end
		end
		3'd4: begin
			controllerinjector_bankmachine1_next_state <= 2'd2;
		end
		3'd5: begin
			controllerinjector_bankmachine1_next_state <= 1'd0;
		end
		default: begin
			if (controllerinjector_bankmachine1_refresh_req) begin
				controllerinjector_bankmachine1_next_state <= 2'd3;
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
							controllerinjector_bankmachine1_next_state <= 1'd1;
						end
					end else begin
						controllerinjector_bankmachine1_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_24 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine2_sink_valid = controllerinjector_bankmachine2_req_valid;
assign controllerinjector_bankmachine2_req_ready = controllerinjector_bankmachine2_sink_ready;
assign controllerinjector_bankmachine2_sink_payload_we = controllerinjector_bankmachine2_req_we;
assign controllerinjector_bankmachine2_sink_payload_adr = controllerinjector_bankmachine2_req_adr;
assign controllerinjector_bankmachine2_source_ready = (controllerinjector_bankmachine2_req_wdata_ready | controllerinjector_bankmachine2_req_rdata_valid);
assign controllerinjector_bankmachine2_req_lock = controllerinjector_bankmachine2_source_valid;
assign controllerinjector_bankmachine2_hit = (controllerinjector_bankmachine2_openrow == controllerinjector_bankmachine2_source_payload_adr[20:7]);
assign controllerinjector_bankmachine2_cmd_payload_ba = 2'd2;

// synthesis translate_off
reg dummy_d_25;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine2_cmd_payload_a <= 14'd0;
	if (controllerinjector_bankmachine2_sel_row_adr) begin
		controllerinjector_bankmachine2_cmd_payload_a <= controllerinjector_bankmachine2_source_payload_adr[20:7];
	end else begin
		controllerinjector_bankmachine2_cmd_payload_a <= {controllerinjector_bankmachine2_source_payload_adr[6:0], {3{1'd0}}};
	end
// synthesis translate_off
	dummy_d_25 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine2_wait = (~((controllerinjector_bankmachine2_cmd_valid & controllerinjector_bankmachine2_cmd_ready) & controllerinjector_bankmachine2_cmd_payload_is_write));
assign controllerinjector_bankmachine2_syncfifo2_din = {controllerinjector_bankmachine2_fifo_in_last, controllerinjector_bankmachine2_fifo_in_payload_adr, controllerinjector_bankmachine2_fifo_in_payload_we};
assign {controllerinjector_bankmachine2_fifo_out_last, controllerinjector_bankmachine2_fifo_out_payload_adr, controllerinjector_bankmachine2_fifo_out_payload_we} = controllerinjector_bankmachine2_syncfifo2_dout;
assign controllerinjector_bankmachine2_sink_ready = controllerinjector_bankmachine2_syncfifo2_writable;
assign controllerinjector_bankmachine2_syncfifo2_we = controllerinjector_bankmachine2_sink_valid;
assign controllerinjector_bankmachine2_fifo_in_last = controllerinjector_bankmachine2_sink_last;
assign controllerinjector_bankmachine2_fifo_in_payload_we = controllerinjector_bankmachine2_sink_payload_we;
assign controllerinjector_bankmachine2_fifo_in_payload_adr = controllerinjector_bankmachine2_sink_payload_adr;
assign controllerinjector_bankmachine2_source_valid = controllerinjector_bankmachine2_syncfifo2_readable;
assign controllerinjector_bankmachine2_source_last = controllerinjector_bankmachine2_fifo_out_last;
assign controllerinjector_bankmachine2_source_payload_we = controllerinjector_bankmachine2_fifo_out_payload_we;
assign controllerinjector_bankmachine2_source_payload_adr = controllerinjector_bankmachine2_fifo_out_payload_adr;
assign controllerinjector_bankmachine2_syncfifo2_re = controllerinjector_bankmachine2_source_ready;

// synthesis translate_off
reg dummy_d_26;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine2_wrport_adr <= 3'd0;
	if (controllerinjector_bankmachine2_replace) begin
		controllerinjector_bankmachine2_wrport_adr <= (controllerinjector_bankmachine2_produce - 1'd1);
	end else begin
		controllerinjector_bankmachine2_wrport_adr <= controllerinjector_bankmachine2_produce;
	end
// synthesis translate_off
	dummy_d_26 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine2_wrport_dat_w = controllerinjector_bankmachine2_syncfifo2_din;
assign controllerinjector_bankmachine2_wrport_we = (controllerinjector_bankmachine2_syncfifo2_we & (controllerinjector_bankmachine2_syncfifo2_writable | controllerinjector_bankmachine2_replace));
assign controllerinjector_bankmachine2_do_read = (controllerinjector_bankmachine2_syncfifo2_readable & controllerinjector_bankmachine2_syncfifo2_re);
assign controllerinjector_bankmachine2_rdport_adr = controllerinjector_bankmachine2_consume;
assign controllerinjector_bankmachine2_syncfifo2_dout = controllerinjector_bankmachine2_rdport_dat_r;
assign controllerinjector_bankmachine2_syncfifo2_writable = (controllerinjector_bankmachine2_level != 4'd8);
assign controllerinjector_bankmachine2_syncfifo2_readable = (controllerinjector_bankmachine2_level != 1'd0);
assign controllerinjector_bankmachine2_done = (controllerinjector_bankmachine2_count == 1'd0);

// synthesis translate_off
reg dummy_d_27;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine2_track_close <= 1'd0;
	controllerinjector_bankmachine2_next_state <= 3'd0;
	controllerinjector_bankmachine2_sel_row_adr <= 1'd0;
	controllerinjector_bankmachine2_cmd_payload_cas <= 1'd0;
	controllerinjector_bankmachine2_cmd_payload_ras <= 1'd0;
	controllerinjector_bankmachine2_cmd_payload_we <= 1'd0;
	controllerinjector_bankmachine2_cmd_payload_is_cmd <= 1'd0;
	controllerinjector_bankmachine2_cmd_payload_is_read <= 1'd0;
	controllerinjector_bankmachine2_track_open <= 1'd0;
	controllerinjector_bankmachine2_cmd_payload_is_write <= 1'd0;
	controllerinjector_bankmachine2_req_wdata_ready <= 1'd0;
	controllerinjector_bankmachine2_req_rdata_valid <= 1'd0;
	controllerinjector_bankmachine2_refresh_gnt <= 1'd0;
	controllerinjector_bankmachine2_cmd_valid <= 1'd0;
	controllerinjector_bankmachine2_next_state <= controllerinjector_bankmachine2_state;
	case (controllerinjector_bankmachine2_state)
		1'd1: begin
			if (controllerinjector_bankmachine2_done) begin
				controllerinjector_bankmachine2_cmd_valid <= 1'd1;
				if (controllerinjector_bankmachine2_cmd_ready) begin
					controllerinjector_bankmachine2_next_state <= 3'd4;
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
				controllerinjector_bankmachine2_next_state <= 3'd5;
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
				controllerinjector_bankmachine2_next_state <= 1'd0;
			end
		end
		3'd4: begin
			controllerinjector_bankmachine2_next_state <= 2'd2;
		end
		3'd5: begin
			controllerinjector_bankmachine2_next_state <= 1'd0;
		end
		default: begin
			if (controllerinjector_bankmachine2_refresh_req) begin
				controllerinjector_bankmachine2_next_state <= 2'd3;
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
							controllerinjector_bankmachine2_next_state <= 1'd1;
						end
					end else begin
						controllerinjector_bankmachine2_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_27 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine3_sink_valid = controllerinjector_bankmachine3_req_valid;
assign controllerinjector_bankmachine3_req_ready = controllerinjector_bankmachine3_sink_ready;
assign controllerinjector_bankmachine3_sink_payload_we = controllerinjector_bankmachine3_req_we;
assign controllerinjector_bankmachine3_sink_payload_adr = controllerinjector_bankmachine3_req_adr;
assign controllerinjector_bankmachine3_source_ready = (controllerinjector_bankmachine3_req_wdata_ready | controllerinjector_bankmachine3_req_rdata_valid);
assign controllerinjector_bankmachine3_req_lock = controllerinjector_bankmachine3_source_valid;
assign controllerinjector_bankmachine3_hit = (controllerinjector_bankmachine3_openrow == controllerinjector_bankmachine3_source_payload_adr[20:7]);
assign controllerinjector_bankmachine3_cmd_payload_ba = 2'd3;

// synthesis translate_off
reg dummy_d_28;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine3_cmd_payload_a <= 14'd0;
	if (controllerinjector_bankmachine3_sel_row_adr) begin
		controllerinjector_bankmachine3_cmd_payload_a <= controllerinjector_bankmachine3_source_payload_adr[20:7];
	end else begin
		controllerinjector_bankmachine3_cmd_payload_a <= {controllerinjector_bankmachine3_source_payload_adr[6:0], {3{1'd0}}};
	end
// synthesis translate_off
	dummy_d_28 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine3_wait = (~((controllerinjector_bankmachine3_cmd_valid & controllerinjector_bankmachine3_cmd_ready) & controllerinjector_bankmachine3_cmd_payload_is_write));
assign controllerinjector_bankmachine3_syncfifo3_din = {controllerinjector_bankmachine3_fifo_in_last, controllerinjector_bankmachine3_fifo_in_payload_adr, controllerinjector_bankmachine3_fifo_in_payload_we};
assign {controllerinjector_bankmachine3_fifo_out_last, controllerinjector_bankmachine3_fifo_out_payload_adr, controllerinjector_bankmachine3_fifo_out_payload_we} = controllerinjector_bankmachine3_syncfifo3_dout;
assign controllerinjector_bankmachine3_sink_ready = controllerinjector_bankmachine3_syncfifo3_writable;
assign controllerinjector_bankmachine3_syncfifo3_we = controllerinjector_bankmachine3_sink_valid;
assign controllerinjector_bankmachine3_fifo_in_last = controllerinjector_bankmachine3_sink_last;
assign controllerinjector_bankmachine3_fifo_in_payload_we = controllerinjector_bankmachine3_sink_payload_we;
assign controllerinjector_bankmachine3_fifo_in_payload_adr = controllerinjector_bankmachine3_sink_payload_adr;
assign controllerinjector_bankmachine3_source_valid = controllerinjector_bankmachine3_syncfifo3_readable;
assign controllerinjector_bankmachine3_source_last = controllerinjector_bankmachine3_fifo_out_last;
assign controllerinjector_bankmachine3_source_payload_we = controllerinjector_bankmachine3_fifo_out_payload_we;
assign controllerinjector_bankmachine3_source_payload_adr = controllerinjector_bankmachine3_fifo_out_payload_adr;
assign controllerinjector_bankmachine3_syncfifo3_re = controllerinjector_bankmachine3_source_ready;

// synthesis translate_off
reg dummy_d_29;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine3_wrport_adr <= 3'd0;
	if (controllerinjector_bankmachine3_replace) begin
		controllerinjector_bankmachine3_wrport_adr <= (controllerinjector_bankmachine3_produce - 1'd1);
	end else begin
		controllerinjector_bankmachine3_wrport_adr <= controllerinjector_bankmachine3_produce;
	end
// synthesis translate_off
	dummy_d_29 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine3_wrport_dat_w = controllerinjector_bankmachine3_syncfifo3_din;
assign controllerinjector_bankmachine3_wrport_we = (controllerinjector_bankmachine3_syncfifo3_we & (controllerinjector_bankmachine3_syncfifo3_writable | controllerinjector_bankmachine3_replace));
assign controllerinjector_bankmachine3_do_read = (controllerinjector_bankmachine3_syncfifo3_readable & controllerinjector_bankmachine3_syncfifo3_re);
assign controllerinjector_bankmachine3_rdport_adr = controllerinjector_bankmachine3_consume;
assign controllerinjector_bankmachine3_syncfifo3_dout = controllerinjector_bankmachine3_rdport_dat_r;
assign controllerinjector_bankmachine3_syncfifo3_writable = (controllerinjector_bankmachine3_level != 4'd8);
assign controllerinjector_bankmachine3_syncfifo3_readable = (controllerinjector_bankmachine3_level != 1'd0);
assign controllerinjector_bankmachine3_done = (controllerinjector_bankmachine3_count == 1'd0);

// synthesis translate_off
reg dummy_d_30;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine3_cmd_valid <= 1'd0;
	controllerinjector_bankmachine3_track_open <= 1'd0;
	controllerinjector_bankmachine3_track_close <= 1'd0;
	controllerinjector_bankmachine3_sel_row_adr <= 1'd0;
	controllerinjector_bankmachine3_cmd_payload_cas <= 1'd0;
	controllerinjector_bankmachine3_cmd_payload_ras <= 1'd0;
	controllerinjector_bankmachine3_cmd_payload_we <= 1'd0;
	controllerinjector_bankmachine3_cmd_payload_is_cmd <= 1'd0;
	controllerinjector_bankmachine3_cmd_payload_is_read <= 1'd0;
	controllerinjector_bankmachine3_cmd_payload_is_write <= 1'd0;
	controllerinjector_bankmachine3_next_state <= 3'd0;
	controllerinjector_bankmachine3_req_wdata_ready <= 1'd0;
	controllerinjector_bankmachine3_req_rdata_valid <= 1'd0;
	controllerinjector_bankmachine3_refresh_gnt <= 1'd0;
	controllerinjector_bankmachine3_next_state <= controllerinjector_bankmachine3_state;
	case (controllerinjector_bankmachine3_state)
		1'd1: begin
			if (controllerinjector_bankmachine3_done) begin
				controllerinjector_bankmachine3_cmd_valid <= 1'd1;
				if (controllerinjector_bankmachine3_cmd_ready) begin
					controllerinjector_bankmachine3_next_state <= 3'd4;
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
				controllerinjector_bankmachine3_next_state <= 3'd5;
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
				controllerinjector_bankmachine3_next_state <= 1'd0;
			end
		end
		3'd4: begin
			controllerinjector_bankmachine3_next_state <= 2'd2;
		end
		3'd5: begin
			controllerinjector_bankmachine3_next_state <= 1'd0;
		end
		default: begin
			if (controllerinjector_bankmachine3_refresh_req) begin
				controllerinjector_bankmachine3_next_state <= 2'd3;
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
							controllerinjector_bankmachine3_next_state <= 1'd1;
						end
					end else begin
						controllerinjector_bankmachine3_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_30 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine4_sink_valid = controllerinjector_bankmachine4_req_valid;
assign controllerinjector_bankmachine4_req_ready = controllerinjector_bankmachine4_sink_ready;
assign controllerinjector_bankmachine4_sink_payload_we = controllerinjector_bankmachine4_req_we;
assign controllerinjector_bankmachine4_sink_payload_adr = controllerinjector_bankmachine4_req_adr;
assign controllerinjector_bankmachine4_source_ready = (controllerinjector_bankmachine4_req_wdata_ready | controllerinjector_bankmachine4_req_rdata_valid);
assign controllerinjector_bankmachine4_req_lock = controllerinjector_bankmachine4_source_valid;
assign controllerinjector_bankmachine4_hit = (controllerinjector_bankmachine4_openrow == controllerinjector_bankmachine4_source_payload_adr[20:7]);
assign controllerinjector_bankmachine4_cmd_payload_ba = 3'd4;

// synthesis translate_off
reg dummy_d_31;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine4_cmd_payload_a <= 14'd0;
	if (controllerinjector_bankmachine4_sel_row_adr) begin
		controllerinjector_bankmachine4_cmd_payload_a <= controllerinjector_bankmachine4_source_payload_adr[20:7];
	end else begin
		controllerinjector_bankmachine4_cmd_payload_a <= {controllerinjector_bankmachine4_source_payload_adr[6:0], {3{1'd0}}};
	end
// synthesis translate_off
	dummy_d_31 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine4_wait = (~((controllerinjector_bankmachine4_cmd_valid & controllerinjector_bankmachine4_cmd_ready) & controllerinjector_bankmachine4_cmd_payload_is_write));
assign controllerinjector_bankmachine4_syncfifo4_din = {controllerinjector_bankmachine4_fifo_in_last, controllerinjector_bankmachine4_fifo_in_payload_adr, controllerinjector_bankmachine4_fifo_in_payload_we};
assign {controllerinjector_bankmachine4_fifo_out_last, controllerinjector_bankmachine4_fifo_out_payload_adr, controllerinjector_bankmachine4_fifo_out_payload_we} = controllerinjector_bankmachine4_syncfifo4_dout;
assign controllerinjector_bankmachine4_sink_ready = controllerinjector_bankmachine4_syncfifo4_writable;
assign controllerinjector_bankmachine4_syncfifo4_we = controllerinjector_bankmachine4_sink_valid;
assign controllerinjector_bankmachine4_fifo_in_last = controllerinjector_bankmachine4_sink_last;
assign controllerinjector_bankmachine4_fifo_in_payload_we = controllerinjector_bankmachine4_sink_payload_we;
assign controllerinjector_bankmachine4_fifo_in_payload_adr = controllerinjector_bankmachine4_sink_payload_adr;
assign controllerinjector_bankmachine4_source_valid = controllerinjector_bankmachine4_syncfifo4_readable;
assign controllerinjector_bankmachine4_source_last = controllerinjector_bankmachine4_fifo_out_last;
assign controllerinjector_bankmachine4_source_payload_we = controllerinjector_bankmachine4_fifo_out_payload_we;
assign controllerinjector_bankmachine4_source_payload_adr = controllerinjector_bankmachine4_fifo_out_payload_adr;
assign controllerinjector_bankmachine4_syncfifo4_re = controllerinjector_bankmachine4_source_ready;

// synthesis translate_off
reg dummy_d_32;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine4_wrport_adr <= 3'd0;
	if (controllerinjector_bankmachine4_replace) begin
		controllerinjector_bankmachine4_wrport_adr <= (controllerinjector_bankmachine4_produce - 1'd1);
	end else begin
		controllerinjector_bankmachine4_wrport_adr <= controllerinjector_bankmachine4_produce;
	end
// synthesis translate_off
	dummy_d_32 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine4_wrport_dat_w = controllerinjector_bankmachine4_syncfifo4_din;
assign controllerinjector_bankmachine4_wrport_we = (controllerinjector_bankmachine4_syncfifo4_we & (controllerinjector_bankmachine4_syncfifo4_writable | controllerinjector_bankmachine4_replace));
assign controllerinjector_bankmachine4_do_read = (controllerinjector_bankmachine4_syncfifo4_readable & controllerinjector_bankmachine4_syncfifo4_re);
assign controllerinjector_bankmachine4_rdport_adr = controllerinjector_bankmachine4_consume;
assign controllerinjector_bankmachine4_syncfifo4_dout = controllerinjector_bankmachine4_rdport_dat_r;
assign controllerinjector_bankmachine4_syncfifo4_writable = (controllerinjector_bankmachine4_level != 4'd8);
assign controllerinjector_bankmachine4_syncfifo4_readable = (controllerinjector_bankmachine4_level != 1'd0);
assign controllerinjector_bankmachine4_done = (controllerinjector_bankmachine4_count == 1'd0);

// synthesis translate_off
reg dummy_d_33;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine4_refresh_gnt <= 1'd0;
	controllerinjector_bankmachine4_cmd_valid <= 1'd0;
	controllerinjector_bankmachine4_track_open <= 1'd0;
	controllerinjector_bankmachine4_track_close <= 1'd0;
	controllerinjector_bankmachine4_sel_row_adr <= 1'd0;
	controllerinjector_bankmachine4_cmd_payload_cas <= 1'd0;
	controllerinjector_bankmachine4_next_state <= 3'd0;
	controllerinjector_bankmachine4_cmd_payload_ras <= 1'd0;
	controllerinjector_bankmachine4_cmd_payload_we <= 1'd0;
	controllerinjector_bankmachine4_cmd_payload_is_cmd <= 1'd0;
	controllerinjector_bankmachine4_cmd_payload_is_read <= 1'd0;
	controllerinjector_bankmachine4_cmd_payload_is_write <= 1'd0;
	controllerinjector_bankmachine4_req_wdata_ready <= 1'd0;
	controllerinjector_bankmachine4_req_rdata_valid <= 1'd0;
	controllerinjector_bankmachine4_next_state <= controllerinjector_bankmachine4_state;
	case (controllerinjector_bankmachine4_state)
		1'd1: begin
			if (controllerinjector_bankmachine4_done) begin
				controllerinjector_bankmachine4_cmd_valid <= 1'd1;
				if (controllerinjector_bankmachine4_cmd_ready) begin
					controllerinjector_bankmachine4_next_state <= 3'd4;
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
				controllerinjector_bankmachine4_next_state <= 3'd5;
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
				controllerinjector_bankmachine4_next_state <= 1'd0;
			end
		end
		3'd4: begin
			controllerinjector_bankmachine4_next_state <= 2'd2;
		end
		3'd5: begin
			controllerinjector_bankmachine4_next_state <= 1'd0;
		end
		default: begin
			if (controllerinjector_bankmachine4_refresh_req) begin
				controllerinjector_bankmachine4_next_state <= 2'd3;
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
							controllerinjector_bankmachine4_next_state <= 1'd1;
						end
					end else begin
						controllerinjector_bankmachine4_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_33 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine5_sink_valid = controllerinjector_bankmachine5_req_valid;
assign controllerinjector_bankmachine5_req_ready = controllerinjector_bankmachine5_sink_ready;
assign controllerinjector_bankmachine5_sink_payload_we = controllerinjector_bankmachine5_req_we;
assign controllerinjector_bankmachine5_sink_payload_adr = controllerinjector_bankmachine5_req_adr;
assign controllerinjector_bankmachine5_source_ready = (controllerinjector_bankmachine5_req_wdata_ready | controllerinjector_bankmachine5_req_rdata_valid);
assign controllerinjector_bankmachine5_req_lock = controllerinjector_bankmachine5_source_valid;
assign controllerinjector_bankmachine5_hit = (controllerinjector_bankmachine5_openrow == controllerinjector_bankmachine5_source_payload_adr[20:7]);
assign controllerinjector_bankmachine5_cmd_payload_ba = 3'd5;

// synthesis translate_off
reg dummy_d_34;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine5_cmd_payload_a <= 14'd0;
	if (controllerinjector_bankmachine5_sel_row_adr) begin
		controllerinjector_bankmachine5_cmd_payload_a <= controllerinjector_bankmachine5_source_payload_adr[20:7];
	end else begin
		controllerinjector_bankmachine5_cmd_payload_a <= {controllerinjector_bankmachine5_source_payload_adr[6:0], {3{1'd0}}};
	end
// synthesis translate_off
	dummy_d_34 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine5_wait = (~((controllerinjector_bankmachine5_cmd_valid & controllerinjector_bankmachine5_cmd_ready) & controllerinjector_bankmachine5_cmd_payload_is_write));
assign controllerinjector_bankmachine5_syncfifo5_din = {controllerinjector_bankmachine5_fifo_in_last, controllerinjector_bankmachine5_fifo_in_payload_adr, controllerinjector_bankmachine5_fifo_in_payload_we};
assign {controllerinjector_bankmachine5_fifo_out_last, controllerinjector_bankmachine5_fifo_out_payload_adr, controllerinjector_bankmachine5_fifo_out_payload_we} = controllerinjector_bankmachine5_syncfifo5_dout;
assign controllerinjector_bankmachine5_sink_ready = controllerinjector_bankmachine5_syncfifo5_writable;
assign controllerinjector_bankmachine5_syncfifo5_we = controllerinjector_bankmachine5_sink_valid;
assign controllerinjector_bankmachine5_fifo_in_last = controllerinjector_bankmachine5_sink_last;
assign controllerinjector_bankmachine5_fifo_in_payload_we = controllerinjector_bankmachine5_sink_payload_we;
assign controllerinjector_bankmachine5_fifo_in_payload_adr = controllerinjector_bankmachine5_sink_payload_adr;
assign controllerinjector_bankmachine5_source_valid = controllerinjector_bankmachine5_syncfifo5_readable;
assign controllerinjector_bankmachine5_source_last = controllerinjector_bankmachine5_fifo_out_last;
assign controllerinjector_bankmachine5_source_payload_we = controllerinjector_bankmachine5_fifo_out_payload_we;
assign controllerinjector_bankmachine5_source_payload_adr = controllerinjector_bankmachine5_fifo_out_payload_adr;
assign controllerinjector_bankmachine5_syncfifo5_re = controllerinjector_bankmachine5_source_ready;

// synthesis translate_off
reg dummy_d_35;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine5_wrport_adr <= 3'd0;
	if (controllerinjector_bankmachine5_replace) begin
		controllerinjector_bankmachine5_wrport_adr <= (controllerinjector_bankmachine5_produce - 1'd1);
	end else begin
		controllerinjector_bankmachine5_wrport_adr <= controllerinjector_bankmachine5_produce;
	end
// synthesis translate_off
	dummy_d_35 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine5_wrport_dat_w = controllerinjector_bankmachine5_syncfifo5_din;
assign controllerinjector_bankmachine5_wrport_we = (controllerinjector_bankmachine5_syncfifo5_we & (controllerinjector_bankmachine5_syncfifo5_writable | controllerinjector_bankmachine5_replace));
assign controllerinjector_bankmachine5_do_read = (controllerinjector_bankmachine5_syncfifo5_readable & controllerinjector_bankmachine5_syncfifo5_re);
assign controllerinjector_bankmachine5_rdport_adr = controllerinjector_bankmachine5_consume;
assign controllerinjector_bankmachine5_syncfifo5_dout = controllerinjector_bankmachine5_rdport_dat_r;
assign controllerinjector_bankmachine5_syncfifo5_writable = (controllerinjector_bankmachine5_level != 4'd8);
assign controllerinjector_bankmachine5_syncfifo5_readable = (controllerinjector_bankmachine5_level != 1'd0);
assign controllerinjector_bankmachine5_done = (controllerinjector_bankmachine5_count == 1'd0);

// synthesis translate_off
reg dummy_d_36;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine5_refresh_gnt <= 1'd0;
	controllerinjector_bankmachine5_next_state <= 3'd0;
	controllerinjector_bankmachine5_cmd_valid <= 1'd0;
	controllerinjector_bankmachine5_track_open <= 1'd0;
	controllerinjector_bankmachine5_track_close <= 1'd0;
	controllerinjector_bankmachine5_sel_row_adr <= 1'd0;
	controllerinjector_bankmachine5_cmd_payload_cas <= 1'd0;
	controllerinjector_bankmachine5_cmd_payload_ras <= 1'd0;
	controllerinjector_bankmachine5_cmd_payload_we <= 1'd0;
	controllerinjector_bankmachine5_cmd_payload_is_cmd <= 1'd0;
	controllerinjector_bankmachine5_cmd_payload_is_read <= 1'd0;
	controllerinjector_bankmachine5_cmd_payload_is_write <= 1'd0;
	controllerinjector_bankmachine5_req_wdata_ready <= 1'd0;
	controllerinjector_bankmachine5_req_rdata_valid <= 1'd0;
	controllerinjector_bankmachine5_next_state <= controllerinjector_bankmachine5_state;
	case (controllerinjector_bankmachine5_state)
		1'd1: begin
			if (controllerinjector_bankmachine5_done) begin
				controllerinjector_bankmachine5_cmd_valid <= 1'd1;
				if (controllerinjector_bankmachine5_cmd_ready) begin
					controllerinjector_bankmachine5_next_state <= 3'd4;
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
				controllerinjector_bankmachine5_next_state <= 3'd5;
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
				controllerinjector_bankmachine5_next_state <= 1'd0;
			end
		end
		3'd4: begin
			controllerinjector_bankmachine5_next_state <= 2'd2;
		end
		3'd5: begin
			controllerinjector_bankmachine5_next_state <= 1'd0;
		end
		default: begin
			if (controllerinjector_bankmachine5_refresh_req) begin
				controllerinjector_bankmachine5_next_state <= 2'd3;
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
							controllerinjector_bankmachine5_next_state <= 1'd1;
						end
					end else begin
						controllerinjector_bankmachine5_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_36 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine6_sink_valid = controllerinjector_bankmachine6_req_valid;
assign controllerinjector_bankmachine6_req_ready = controllerinjector_bankmachine6_sink_ready;
assign controllerinjector_bankmachine6_sink_payload_we = controllerinjector_bankmachine6_req_we;
assign controllerinjector_bankmachine6_sink_payload_adr = controllerinjector_bankmachine6_req_adr;
assign controllerinjector_bankmachine6_source_ready = (controllerinjector_bankmachine6_req_wdata_ready | controllerinjector_bankmachine6_req_rdata_valid);
assign controllerinjector_bankmachine6_req_lock = controllerinjector_bankmachine6_source_valid;
assign controllerinjector_bankmachine6_hit = (controllerinjector_bankmachine6_openrow == controllerinjector_bankmachine6_source_payload_adr[20:7]);
assign controllerinjector_bankmachine6_cmd_payload_ba = 3'd6;

// synthesis translate_off
reg dummy_d_37;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine6_cmd_payload_a <= 14'd0;
	if (controllerinjector_bankmachine6_sel_row_adr) begin
		controllerinjector_bankmachine6_cmd_payload_a <= controllerinjector_bankmachine6_source_payload_adr[20:7];
	end else begin
		controllerinjector_bankmachine6_cmd_payload_a <= {controllerinjector_bankmachine6_source_payload_adr[6:0], {3{1'd0}}};
	end
// synthesis translate_off
	dummy_d_37 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine6_wait = (~((controllerinjector_bankmachine6_cmd_valid & controllerinjector_bankmachine6_cmd_ready) & controllerinjector_bankmachine6_cmd_payload_is_write));
assign controllerinjector_bankmachine6_syncfifo6_din = {controllerinjector_bankmachine6_fifo_in_last, controllerinjector_bankmachine6_fifo_in_payload_adr, controllerinjector_bankmachine6_fifo_in_payload_we};
assign {controllerinjector_bankmachine6_fifo_out_last, controllerinjector_bankmachine6_fifo_out_payload_adr, controllerinjector_bankmachine6_fifo_out_payload_we} = controllerinjector_bankmachine6_syncfifo6_dout;
assign controllerinjector_bankmachine6_sink_ready = controllerinjector_bankmachine6_syncfifo6_writable;
assign controllerinjector_bankmachine6_syncfifo6_we = controllerinjector_bankmachine6_sink_valid;
assign controllerinjector_bankmachine6_fifo_in_last = controllerinjector_bankmachine6_sink_last;
assign controllerinjector_bankmachine6_fifo_in_payload_we = controllerinjector_bankmachine6_sink_payload_we;
assign controllerinjector_bankmachine6_fifo_in_payload_adr = controllerinjector_bankmachine6_sink_payload_adr;
assign controllerinjector_bankmachine6_source_valid = controllerinjector_bankmachine6_syncfifo6_readable;
assign controllerinjector_bankmachine6_source_last = controllerinjector_bankmachine6_fifo_out_last;
assign controllerinjector_bankmachine6_source_payload_we = controllerinjector_bankmachine6_fifo_out_payload_we;
assign controllerinjector_bankmachine6_source_payload_adr = controllerinjector_bankmachine6_fifo_out_payload_adr;
assign controllerinjector_bankmachine6_syncfifo6_re = controllerinjector_bankmachine6_source_ready;

// synthesis translate_off
reg dummy_d_38;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine6_wrport_adr <= 3'd0;
	if (controllerinjector_bankmachine6_replace) begin
		controllerinjector_bankmachine6_wrport_adr <= (controllerinjector_bankmachine6_produce - 1'd1);
	end else begin
		controllerinjector_bankmachine6_wrport_adr <= controllerinjector_bankmachine6_produce;
	end
// synthesis translate_off
	dummy_d_38 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine6_wrport_dat_w = controllerinjector_bankmachine6_syncfifo6_din;
assign controllerinjector_bankmachine6_wrport_we = (controllerinjector_bankmachine6_syncfifo6_we & (controllerinjector_bankmachine6_syncfifo6_writable | controllerinjector_bankmachine6_replace));
assign controllerinjector_bankmachine6_do_read = (controllerinjector_bankmachine6_syncfifo6_readable & controllerinjector_bankmachine6_syncfifo6_re);
assign controllerinjector_bankmachine6_rdport_adr = controllerinjector_bankmachine6_consume;
assign controllerinjector_bankmachine6_syncfifo6_dout = controllerinjector_bankmachine6_rdport_dat_r;
assign controllerinjector_bankmachine6_syncfifo6_writable = (controllerinjector_bankmachine6_level != 4'd8);
assign controllerinjector_bankmachine6_syncfifo6_readable = (controllerinjector_bankmachine6_level != 1'd0);
assign controllerinjector_bankmachine6_done = (controllerinjector_bankmachine6_count == 1'd0);

// synthesis translate_off
reg dummy_d_39;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine6_req_rdata_valid <= 1'd0;
	controllerinjector_bankmachine6_refresh_gnt <= 1'd0;
	controllerinjector_bankmachine6_cmd_valid <= 1'd0;
	controllerinjector_bankmachine6_track_open <= 1'd0;
	controllerinjector_bankmachine6_track_close <= 1'd0;
	controllerinjector_bankmachine6_sel_row_adr <= 1'd0;
	controllerinjector_bankmachine6_cmd_payload_cas <= 1'd0;
	controllerinjector_bankmachine6_cmd_payload_ras <= 1'd0;
	controllerinjector_bankmachine6_cmd_payload_we <= 1'd0;
	controllerinjector_bankmachine6_cmd_payload_is_cmd <= 1'd0;
	controllerinjector_bankmachine6_cmd_payload_is_read <= 1'd0;
	controllerinjector_bankmachine6_next_state <= 3'd0;
	controllerinjector_bankmachine6_cmd_payload_is_write <= 1'd0;
	controllerinjector_bankmachine6_req_wdata_ready <= 1'd0;
	controllerinjector_bankmachine6_next_state <= controllerinjector_bankmachine6_state;
	case (controllerinjector_bankmachine6_state)
		1'd1: begin
			if (controllerinjector_bankmachine6_done) begin
				controllerinjector_bankmachine6_cmd_valid <= 1'd1;
				if (controllerinjector_bankmachine6_cmd_ready) begin
					controllerinjector_bankmachine6_next_state <= 3'd4;
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
				controllerinjector_bankmachine6_next_state <= 3'd5;
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
				controllerinjector_bankmachine6_next_state <= 1'd0;
			end
		end
		3'd4: begin
			controllerinjector_bankmachine6_next_state <= 2'd2;
		end
		3'd5: begin
			controllerinjector_bankmachine6_next_state <= 1'd0;
		end
		default: begin
			if (controllerinjector_bankmachine6_refresh_req) begin
				controllerinjector_bankmachine6_next_state <= 2'd3;
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
							controllerinjector_bankmachine6_next_state <= 1'd1;
						end
					end else begin
						controllerinjector_bankmachine6_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_39 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine7_sink_valid = controllerinjector_bankmachine7_req_valid;
assign controllerinjector_bankmachine7_req_ready = controllerinjector_bankmachine7_sink_ready;
assign controllerinjector_bankmachine7_sink_payload_we = controllerinjector_bankmachine7_req_we;
assign controllerinjector_bankmachine7_sink_payload_adr = controllerinjector_bankmachine7_req_adr;
assign controllerinjector_bankmachine7_source_ready = (controllerinjector_bankmachine7_req_wdata_ready | controllerinjector_bankmachine7_req_rdata_valid);
assign controllerinjector_bankmachine7_req_lock = controllerinjector_bankmachine7_source_valid;
assign controllerinjector_bankmachine7_hit = (controllerinjector_bankmachine7_openrow == controllerinjector_bankmachine7_source_payload_adr[20:7]);
assign controllerinjector_bankmachine7_cmd_payload_ba = 3'd7;

// synthesis translate_off
reg dummy_d_40;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine7_cmd_payload_a <= 14'd0;
	if (controllerinjector_bankmachine7_sel_row_adr) begin
		controllerinjector_bankmachine7_cmd_payload_a <= controllerinjector_bankmachine7_source_payload_adr[20:7];
	end else begin
		controllerinjector_bankmachine7_cmd_payload_a <= {controllerinjector_bankmachine7_source_payload_adr[6:0], {3{1'd0}}};
	end
// synthesis translate_off
	dummy_d_40 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine7_wait = (~((controllerinjector_bankmachine7_cmd_valid & controllerinjector_bankmachine7_cmd_ready) & controllerinjector_bankmachine7_cmd_payload_is_write));
assign controllerinjector_bankmachine7_syncfifo7_din = {controllerinjector_bankmachine7_fifo_in_last, controllerinjector_bankmachine7_fifo_in_payload_adr, controllerinjector_bankmachine7_fifo_in_payload_we};
assign {controllerinjector_bankmachine7_fifo_out_last, controllerinjector_bankmachine7_fifo_out_payload_adr, controllerinjector_bankmachine7_fifo_out_payload_we} = controllerinjector_bankmachine7_syncfifo7_dout;
assign controllerinjector_bankmachine7_sink_ready = controllerinjector_bankmachine7_syncfifo7_writable;
assign controllerinjector_bankmachine7_syncfifo7_we = controllerinjector_bankmachine7_sink_valid;
assign controllerinjector_bankmachine7_fifo_in_last = controllerinjector_bankmachine7_sink_last;
assign controllerinjector_bankmachine7_fifo_in_payload_we = controllerinjector_bankmachine7_sink_payload_we;
assign controllerinjector_bankmachine7_fifo_in_payload_adr = controllerinjector_bankmachine7_sink_payload_adr;
assign controllerinjector_bankmachine7_source_valid = controllerinjector_bankmachine7_syncfifo7_readable;
assign controllerinjector_bankmachine7_source_last = controllerinjector_bankmachine7_fifo_out_last;
assign controllerinjector_bankmachine7_source_payload_we = controllerinjector_bankmachine7_fifo_out_payload_we;
assign controllerinjector_bankmachine7_source_payload_adr = controllerinjector_bankmachine7_fifo_out_payload_adr;
assign controllerinjector_bankmachine7_syncfifo7_re = controllerinjector_bankmachine7_source_ready;

// synthesis translate_off
reg dummy_d_41;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine7_wrport_adr <= 3'd0;
	if (controllerinjector_bankmachine7_replace) begin
		controllerinjector_bankmachine7_wrport_adr <= (controllerinjector_bankmachine7_produce - 1'd1);
	end else begin
		controllerinjector_bankmachine7_wrport_adr <= controllerinjector_bankmachine7_produce;
	end
// synthesis translate_off
	dummy_d_41 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine7_wrport_dat_w = controllerinjector_bankmachine7_syncfifo7_din;
assign controllerinjector_bankmachine7_wrport_we = (controllerinjector_bankmachine7_syncfifo7_we & (controllerinjector_bankmachine7_syncfifo7_writable | controllerinjector_bankmachine7_replace));
assign controllerinjector_bankmachine7_do_read = (controllerinjector_bankmachine7_syncfifo7_readable & controllerinjector_bankmachine7_syncfifo7_re);
assign controllerinjector_bankmachine7_rdport_adr = controllerinjector_bankmachine7_consume;
assign controllerinjector_bankmachine7_syncfifo7_dout = controllerinjector_bankmachine7_rdport_dat_r;
assign controllerinjector_bankmachine7_syncfifo7_writable = (controllerinjector_bankmachine7_level != 4'd8);
assign controllerinjector_bankmachine7_syncfifo7_readable = (controllerinjector_bankmachine7_level != 1'd0);
assign controllerinjector_bankmachine7_done = (controllerinjector_bankmachine7_count == 1'd0);

// synthesis translate_off
reg dummy_d_42;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine7_req_wdata_ready <= 1'd0;
	controllerinjector_bankmachine7_req_rdata_valid <= 1'd0;
	controllerinjector_bankmachine7_refresh_gnt <= 1'd0;
	controllerinjector_bankmachine7_cmd_valid <= 1'd0;
	controllerinjector_bankmachine7_track_open <= 1'd0;
	controllerinjector_bankmachine7_track_close <= 1'd0;
	controllerinjector_bankmachine7_next_state <= 3'd0;
	controllerinjector_bankmachine7_sel_row_adr <= 1'd0;
	controllerinjector_bankmachine7_cmd_payload_cas <= 1'd0;
	controllerinjector_bankmachine7_cmd_payload_ras <= 1'd0;
	controllerinjector_bankmachine7_cmd_payload_we <= 1'd0;
	controllerinjector_bankmachine7_cmd_payload_is_cmd <= 1'd0;
	controllerinjector_bankmachine7_cmd_payload_is_read <= 1'd0;
	controllerinjector_bankmachine7_cmd_payload_is_write <= 1'd0;
	controllerinjector_bankmachine7_next_state <= controllerinjector_bankmachine7_state;
	case (controllerinjector_bankmachine7_state)
		1'd1: begin
			if (controllerinjector_bankmachine7_done) begin
				controllerinjector_bankmachine7_cmd_valid <= 1'd1;
				if (controllerinjector_bankmachine7_cmd_ready) begin
					controllerinjector_bankmachine7_next_state <= 3'd4;
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
				controllerinjector_bankmachine7_next_state <= 3'd5;
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
				controllerinjector_bankmachine7_next_state <= 1'd0;
			end
		end
		3'd4: begin
			controllerinjector_bankmachine7_next_state <= 2'd2;
		end
		3'd5: begin
			controllerinjector_bankmachine7_next_state <= 1'd0;
		end
		default: begin
			if (controllerinjector_bankmachine7_refresh_req) begin
				controllerinjector_bankmachine7_next_state <= 2'd3;
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
							controllerinjector_bankmachine7_next_state <= 1'd1;
						end
					end else begin
						controllerinjector_bankmachine7_next_state <= 2'd2;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_42 <= dummy_s;
// synthesis translate_on
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
assign controllerinjector_interface_rdata = {controllerinjector_dfi_p3_rddata, controllerinjector_dfi_p2_rddata, controllerinjector_dfi_p1_rddata, controllerinjector_dfi_p0_rddata};
assign {controllerinjector_dfi_p3_wrdata, controllerinjector_dfi_p2_wrdata, controllerinjector_dfi_p1_wrdata, controllerinjector_dfi_p0_wrdata} = controllerinjector_interface_wdata;
assign {controllerinjector_dfi_p3_wrdata_mask, controllerinjector_dfi_p2_wrdata_mask, controllerinjector_dfi_p1_wrdata_mask, controllerinjector_dfi_p0_wrdata_mask} = (~controllerinjector_interface_wdata_we);

// synthesis translate_off
reg dummy_d_43;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_43 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_choose_cmd_request = controllerinjector_choose_cmd_valids;
assign controllerinjector_choose_cmd_cmd_valid = rhs_array_muxed0;
assign controllerinjector_choose_cmd_cmd_payload_a = rhs_array_muxed1;
assign controllerinjector_choose_cmd_cmd_payload_ba = rhs_array_muxed2;
assign controllerinjector_choose_cmd_cmd_payload_is_read = rhs_array_muxed3;
assign controllerinjector_choose_cmd_cmd_payload_is_write = rhs_array_muxed4;
assign controllerinjector_choose_cmd_cmd_payload_is_cmd = rhs_array_muxed5;

// synthesis translate_off
reg dummy_d_44;
// synthesis translate_on
always @(*) begin
	controllerinjector_choose_cmd_cmd_payload_cas <= 1'd0;
	if (controllerinjector_choose_cmd_cmd_valid) begin
		controllerinjector_choose_cmd_cmd_payload_cas <= t_array_muxed0;
	end
// synthesis translate_off
	dummy_d_44 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_45;
// synthesis translate_on
always @(*) begin
	controllerinjector_choose_cmd_cmd_payload_ras <= 1'd0;
	if (controllerinjector_choose_cmd_cmd_valid) begin
		controllerinjector_choose_cmd_cmd_payload_ras <= t_array_muxed1;
	end
// synthesis translate_off
	dummy_d_45 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_46;
// synthesis translate_on
always @(*) begin
	controllerinjector_choose_cmd_cmd_payload_we <= 1'd0;
	if (controllerinjector_choose_cmd_cmd_valid) begin
		controllerinjector_choose_cmd_cmd_payload_we <= t_array_muxed2;
	end
// synthesis translate_off
	dummy_d_46 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_choose_cmd_ce = controllerinjector_choose_cmd_cmd_ready;

// synthesis translate_off
reg dummy_d_47;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_47 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_choose_req_request = controllerinjector_choose_req_valids;
assign controllerinjector_choose_req_cmd_valid = rhs_array_muxed6;
assign controllerinjector_choose_req_cmd_payload_a = rhs_array_muxed7;
assign controllerinjector_choose_req_cmd_payload_ba = rhs_array_muxed8;
assign controllerinjector_choose_req_cmd_payload_is_read = rhs_array_muxed9;
assign controllerinjector_choose_req_cmd_payload_is_write = rhs_array_muxed10;
assign controllerinjector_choose_req_cmd_payload_is_cmd = rhs_array_muxed11;

// synthesis translate_off
reg dummy_d_48;
// synthesis translate_on
always @(*) begin
	controllerinjector_choose_req_cmd_payload_cas <= 1'd0;
	if (controllerinjector_choose_req_cmd_valid) begin
		controllerinjector_choose_req_cmd_payload_cas <= t_array_muxed3;
	end
// synthesis translate_off
	dummy_d_48 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_49;
// synthesis translate_on
always @(*) begin
	controllerinjector_choose_req_cmd_payload_ras <= 1'd0;
	if (controllerinjector_choose_req_cmd_valid) begin
		controllerinjector_choose_req_cmd_payload_ras <= t_array_muxed4;
	end
// synthesis translate_off
	dummy_d_49 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_50;
// synthesis translate_on
always @(*) begin
	controllerinjector_choose_req_cmd_payload_we <= 1'd0;
	if (controllerinjector_choose_req_cmd_valid) begin
		controllerinjector_choose_req_cmd_payload_we <= t_array_muxed5;
	end
// synthesis translate_off
	dummy_d_50 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_51;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine0_cmd_ready <= 1'd0;
	if (((controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_ready) & (controllerinjector_choose_cmd_grant == 1'd0))) begin
		controllerinjector_bankmachine0_cmd_ready <= 1'd1;
	end
	if (((controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_ready) & (controllerinjector_choose_req_grant == 1'd0))) begin
		controllerinjector_bankmachine0_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_51 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_52;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine1_cmd_ready <= 1'd0;
	if (((controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_ready) & (controllerinjector_choose_cmd_grant == 1'd1))) begin
		controllerinjector_bankmachine1_cmd_ready <= 1'd1;
	end
	if (((controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_ready) & (controllerinjector_choose_req_grant == 1'd1))) begin
		controllerinjector_bankmachine1_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_52 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_53;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine2_cmd_ready <= 1'd0;
	if (((controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_ready) & (controllerinjector_choose_cmd_grant == 2'd2))) begin
		controllerinjector_bankmachine2_cmd_ready <= 1'd1;
	end
	if (((controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_ready) & (controllerinjector_choose_req_grant == 2'd2))) begin
		controllerinjector_bankmachine2_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_53 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_54;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine3_cmd_ready <= 1'd0;
	if (((controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_ready) & (controllerinjector_choose_cmd_grant == 2'd3))) begin
		controllerinjector_bankmachine3_cmd_ready <= 1'd1;
	end
	if (((controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_ready) & (controllerinjector_choose_req_grant == 2'd3))) begin
		controllerinjector_bankmachine3_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_54 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_55;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine4_cmd_ready <= 1'd0;
	if (((controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_ready) & (controllerinjector_choose_cmd_grant == 3'd4))) begin
		controllerinjector_bankmachine4_cmd_ready <= 1'd1;
	end
	if (((controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_ready) & (controllerinjector_choose_req_grant == 3'd4))) begin
		controllerinjector_bankmachine4_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_55 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_56;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine5_cmd_ready <= 1'd0;
	if (((controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_ready) & (controllerinjector_choose_cmd_grant == 3'd5))) begin
		controllerinjector_bankmachine5_cmd_ready <= 1'd1;
	end
	if (((controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_ready) & (controllerinjector_choose_req_grant == 3'd5))) begin
		controllerinjector_bankmachine5_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_56 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_57;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine6_cmd_ready <= 1'd0;
	if (((controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_ready) & (controllerinjector_choose_cmd_grant == 3'd6))) begin
		controllerinjector_bankmachine6_cmd_ready <= 1'd1;
	end
	if (((controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_ready) & (controllerinjector_choose_req_grant == 3'd6))) begin
		controllerinjector_bankmachine6_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_57 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_58;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine7_cmd_ready <= 1'd0;
	if (((controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_ready) & (controllerinjector_choose_cmd_grant == 3'd7))) begin
		controllerinjector_bankmachine7_cmd_ready <= 1'd1;
	end
	if (((controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_ready) & (controllerinjector_choose_req_grant == 3'd7))) begin
		controllerinjector_bankmachine7_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_58 <= dummy_s;
// synthesis translate_on
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
assign controllerinjector_dfi_p2_cke = 1'd1;
assign controllerinjector_dfi_p2_cs_n = 1'd0;
assign controllerinjector_dfi_p2_odt = 1'd1;
assign controllerinjector_dfi_p2_reset_n = 1'd1;
assign controllerinjector_dfi_p3_cke = 1'd1;
assign controllerinjector_dfi_p3_cs_n = 1'd0;
assign controllerinjector_dfi_p3_odt = 1'd1;
assign controllerinjector_dfi_p3_reset_n = 1'd1;

// synthesis translate_off
reg dummy_d_59;
// synthesis translate_on
always @(*) begin
	controllerinjector_choose_cmd_cmd_ready <= 1'd0;
	controllerinjector_sel2 <= 2'd0;
	controllerinjector_sel3 <= 2'd0;
	controllerinjector_cmd_ready <= 1'd0;
	controllerinjector_multiplexer_next_state <= 3'd0;
	controllerinjector_en0 <= 1'd0;
	controllerinjector_choose_req_want_writes <= 1'd0;
	controllerinjector_choose_req_want_reads <= 1'd0;
	controllerinjector_en1 <= 1'd0;
	controllerinjector_choose_req_cmd_ready <= 1'd0;
	controllerinjector_sel0 <= 2'd0;
	controllerinjector_sel1 <= 2'd0;
	controllerinjector_multiplexer_next_state <= controllerinjector_multiplexer_state;
	case (controllerinjector_multiplexer_state)
		1'd1: begin
			controllerinjector_en1 <= 1'd1;
			controllerinjector_choose_req_want_writes <= 1'd1;
			controllerinjector_choose_cmd_cmd_ready <= 1'd1;
			controllerinjector_choose_req_cmd_ready <= 1'd1;
			controllerinjector_sel0 <= 1'd1;
			controllerinjector_sel1 <= 2'd2;
			controllerinjector_sel2 <= 1'd0;
			controllerinjector_sel3 <= 1'd0;
			if (controllerinjector_read_available) begin
				if (((~controllerinjector_write_available) | controllerinjector_max_time1)) begin
					controllerinjector_multiplexer_next_state <= 3'd6;
				end
			end
			if (controllerinjector_go_to_refresh) begin
				controllerinjector_multiplexer_next_state <= 2'd2;
			end
		end
		2'd2: begin
			controllerinjector_sel0 <= 2'd3;
			controllerinjector_cmd_ready <= 1'd1;
			if (controllerinjector_cmd_last) begin
				controllerinjector_multiplexer_next_state <= 1'd0;
			end
		end
		2'd3: begin
			controllerinjector_multiplexer_next_state <= 3'd4;
		end
		3'd4: begin
			controllerinjector_multiplexer_next_state <= 3'd5;
		end
		3'd5: begin
			controllerinjector_multiplexer_next_state <= 1'd1;
		end
		3'd6: begin
			controllerinjector_multiplexer_next_state <= 3'd7;
		end
		3'd7: begin
			controllerinjector_multiplexer_next_state <= 1'd0;
		end
		default: begin
			controllerinjector_en0 <= 1'd1;
			controllerinjector_choose_req_want_reads <= 1'd1;
			controllerinjector_choose_cmd_cmd_ready <= 1'd1;
			controllerinjector_choose_req_cmd_ready <= 1'd1;
			controllerinjector_sel0 <= 2'd2;
			controllerinjector_sel1 <= 1'd1;
			controllerinjector_sel2 <= 1'd0;
			controllerinjector_sel3 <= 1'd0;
			if (controllerinjector_write_available) begin
				if (((~controllerinjector_read_available) | controllerinjector_max_time0)) begin
					controllerinjector_multiplexer_next_state <= 2'd3;
				end
			end
			if (controllerinjector_go_to_refresh) begin
				controllerinjector_multiplexer_next_state <= 2'd2;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_59 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_cba0 = port_cmd_payload_adr[9:7];
assign controllerinjector_rca0 = {port_cmd_payload_adr[23:10], port_cmd_payload_adr[6:0]};
assign controllerinjector_cba1 = litedramport0_cmd_payload_adr0[9:7];
assign controllerinjector_rca1 = {litedramport0_cmd_payload_adr0[23:10], litedramport0_cmd_payload_adr0[6:0]};
assign controllerinjector_cba2 = litedramport1_cmd_payload_adr0[9:7];
assign controllerinjector_rca2 = {litedramport1_cmd_payload_adr0[23:10], litedramport1_cmd_payload_adr0[6:0]};
assign controllerinjector_roundrobin0_request = {(((controllerinjector_cba2 == 1'd0) & (~(((((((1'd0 | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 2'd2))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 2'd2))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 2'd2))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 2'd2))))) & litedramport1_cmd_valid0), (((controllerinjector_cba1 == 1'd0) & (~(((((((1'd0 | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd1))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd1))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd1))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd1))))) & litedramport0_cmd_valid0), (((controllerinjector_cba0 == 1'd0) & (~(((((((1'd0 | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign controllerinjector_roundrobin0_ce = ((~controllerinjector_interface_bank0_valid) & (~controllerinjector_interface_bank0_lock));
assign controllerinjector_interface_bank0_adr = rhs_array_muxed12;
assign controllerinjector_interface_bank0_we = rhs_array_muxed13;
assign controllerinjector_interface_bank0_valid = rhs_array_muxed14;
assign controllerinjector_roundrobin1_request = {(((controllerinjector_cba2 == 1'd1) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 2'd2))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 2'd2))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 2'd2))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 2'd2))))) & litedramport1_cmd_valid0), (((controllerinjector_cba1 == 1'd1) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd1))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd1))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd1))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd1))))) & litedramport0_cmd_valid0), (((controllerinjector_cba0 == 1'd1) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign controllerinjector_roundrobin1_ce = ((~controllerinjector_interface_bank1_valid) & (~controllerinjector_interface_bank1_lock));
assign controllerinjector_interface_bank1_adr = rhs_array_muxed15;
assign controllerinjector_interface_bank1_we = rhs_array_muxed16;
assign controllerinjector_interface_bank1_valid = rhs_array_muxed17;
assign controllerinjector_roundrobin2_request = {(((controllerinjector_cba2 == 2'd2) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 2'd2))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 2'd2))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 2'd2))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 2'd2))))) & litedramport1_cmd_valid0), (((controllerinjector_cba1 == 2'd2) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd1))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd1))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd1))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd1))))) & litedramport0_cmd_valid0), (((controllerinjector_cba0 == 2'd2) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign controllerinjector_roundrobin2_ce = ((~controllerinjector_interface_bank2_valid) & (~controllerinjector_interface_bank2_lock));
assign controllerinjector_interface_bank2_adr = rhs_array_muxed18;
assign controllerinjector_interface_bank2_we = rhs_array_muxed19;
assign controllerinjector_interface_bank2_valid = rhs_array_muxed20;
assign controllerinjector_roundrobin3_request = {(((controllerinjector_cba2 == 2'd3) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 2'd2))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 2'd2))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 2'd2))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 2'd2))))) & litedramport1_cmd_valid0), (((controllerinjector_cba1 == 2'd3) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd1))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd1))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd1))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd1))))) & litedramport0_cmd_valid0), (((controllerinjector_cba0 == 2'd3) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign controllerinjector_roundrobin3_ce = ((~controllerinjector_interface_bank3_valid) & (~controllerinjector_interface_bank3_lock));
assign controllerinjector_interface_bank3_adr = rhs_array_muxed21;
assign controllerinjector_interface_bank3_we = rhs_array_muxed22;
assign controllerinjector_interface_bank3_valid = rhs_array_muxed23;
assign controllerinjector_roundrobin4_request = {(((controllerinjector_cba2 == 3'd4) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 2'd2))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 2'd2))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 2'd2))))) & litedramport1_cmd_valid0), (((controllerinjector_cba1 == 3'd4) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd1))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd1))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd1))))) & litedramport0_cmd_valid0), (((controllerinjector_cba0 == 3'd4) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign controllerinjector_roundrobin4_ce = ((~controllerinjector_interface_bank4_valid) & (~controllerinjector_interface_bank4_lock));
assign controllerinjector_interface_bank4_adr = rhs_array_muxed24;
assign controllerinjector_interface_bank4_we = rhs_array_muxed25;
assign controllerinjector_interface_bank4_valid = rhs_array_muxed26;
assign controllerinjector_roundrobin5_request = {(((controllerinjector_cba2 == 3'd5) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 2'd2))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 2'd2))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 2'd2))))) & litedramport1_cmd_valid0), (((controllerinjector_cba1 == 3'd5) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd1))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd1))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd1))))) & litedramport0_cmd_valid0), (((controllerinjector_cba0 == 3'd5) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign controllerinjector_roundrobin5_ce = ((~controllerinjector_interface_bank5_valid) & (~controllerinjector_interface_bank5_lock));
assign controllerinjector_interface_bank5_adr = rhs_array_muxed27;
assign controllerinjector_interface_bank5_we = rhs_array_muxed28;
assign controllerinjector_interface_bank5_valid = rhs_array_muxed29;
assign controllerinjector_roundrobin6_request = {(((controllerinjector_cba2 == 3'd6) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 2'd2))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 2'd2))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 2'd2))))) & litedramport1_cmd_valid0), (((controllerinjector_cba1 == 3'd6) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd1))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd1))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd1))))) & litedramport0_cmd_valid0), (((controllerinjector_cba0 == 3'd6) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign controllerinjector_roundrobin6_ce = ((~controllerinjector_interface_bank6_valid) & (~controllerinjector_interface_bank6_lock));
assign controllerinjector_interface_bank6_adr = rhs_array_muxed30;
assign controllerinjector_interface_bank6_we = rhs_array_muxed31;
assign controllerinjector_interface_bank6_valid = rhs_array_muxed32;
assign controllerinjector_roundrobin7_request = {(((controllerinjector_cba2 == 3'd7) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 2'd2))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 2'd2))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 2'd2))))) & litedramport1_cmd_valid0), (((controllerinjector_cba1 == 3'd7) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd1))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd1))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd1))))) & litedramport0_cmd_valid0), (((controllerinjector_cba0 == 3'd7) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd0))))) & port_cmd_valid)};
assign controllerinjector_roundrobin7_ce = ((~controllerinjector_interface_bank7_valid) & (~controllerinjector_interface_bank7_lock));
assign controllerinjector_interface_bank7_adr = rhs_array_muxed33;
assign controllerinjector_interface_bank7_we = rhs_array_muxed34;
assign controllerinjector_interface_bank7_valid = rhs_array_muxed35;
assign port_cmd_ready = ((((((((1'd0 | (((controllerinjector_roundrobin0_grant == 1'd0) & ((controllerinjector_cba0 == 1'd0) & (~(((((((1'd0 | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd0)))))) & controllerinjector_interface_bank0_ready)) | (((controllerinjector_roundrobin1_grant == 1'd0) & ((controllerinjector_cba0 == 1'd1) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd0)))))) & controllerinjector_interface_bank1_ready)) | (((controllerinjector_roundrobin2_grant == 1'd0) & ((controllerinjector_cba0 == 2'd2) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd0)))))) & controllerinjector_interface_bank2_ready)) | (((controllerinjector_roundrobin3_grant == 1'd0) & ((controllerinjector_cba0 == 2'd3) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd0)))))) & controllerinjector_interface_bank3_ready)) | (((controllerinjector_roundrobin4_grant == 1'd0) & ((controllerinjector_cba0 == 3'd4) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd0)))))) & controllerinjector_interface_bank4_ready)) | (((controllerinjector_roundrobin5_grant == 1'd0) & ((controllerinjector_cba0 == 3'd5) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd0)))))) & controllerinjector_interface_bank5_ready)) | (((controllerinjector_roundrobin6_grant == 1'd0) & ((controllerinjector_cba0 == 3'd6) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd0)))))) & controllerinjector_interface_bank6_ready)) | (((controllerinjector_roundrobin7_grant == 1'd0) & ((controllerinjector_cba0 == 3'd7) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd0)))))) & controllerinjector_interface_bank7_ready));
assign litedramport0_cmd_ready0 = ((((((((1'd0 | (((controllerinjector_roundrobin0_grant == 1'd1) & ((controllerinjector_cba1 == 1'd0) & (~(((((((1'd0 | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd1))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd1))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd1))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd1)))))) & controllerinjector_interface_bank0_ready)) | (((controllerinjector_roundrobin1_grant == 1'd1) & ((controllerinjector_cba1 == 1'd1) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd1))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd1))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd1))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd1)))))) & controllerinjector_interface_bank1_ready)) | (((controllerinjector_roundrobin2_grant == 1'd1) & ((controllerinjector_cba1 == 2'd2) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd1))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd1))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd1))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd1)))))) & controllerinjector_interface_bank2_ready)) | (((controllerinjector_roundrobin3_grant == 1'd1) & ((controllerinjector_cba1 == 2'd3) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd1))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd1))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd1))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd1)))))) & controllerinjector_interface_bank3_ready)) | (((controllerinjector_roundrobin4_grant == 1'd1) & ((controllerinjector_cba1 == 3'd4) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd1))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd1))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd1)))))) & controllerinjector_interface_bank4_ready)) | (((controllerinjector_roundrobin5_grant == 1'd1) & ((controllerinjector_cba1 == 3'd5) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd1))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd1))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd1)))))) & controllerinjector_interface_bank5_ready)) | (((controllerinjector_roundrobin6_grant == 1'd1) & ((controllerinjector_cba1 == 3'd6) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd1))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd1))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd1)))))) & controllerinjector_interface_bank6_ready)) | (((controllerinjector_roundrobin7_grant == 1'd1) & ((controllerinjector_cba1 == 3'd7) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd1))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd1))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd1)))))) & controllerinjector_interface_bank7_ready));
assign litedramport1_cmd_ready0 = ((((((((1'd0 | (((controllerinjector_roundrobin0_grant == 2'd2) & ((controllerinjector_cba2 == 1'd0) & (~(((((((1'd0 | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 2'd2))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 2'd2))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 2'd2))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 2'd2)))))) & controllerinjector_interface_bank0_ready)) | (((controllerinjector_roundrobin1_grant == 2'd2) & ((controllerinjector_cba2 == 1'd1) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 2'd2))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 2'd2))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 2'd2))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 2'd2)))))) & controllerinjector_interface_bank1_ready)) | (((controllerinjector_roundrobin2_grant == 2'd2) & ((controllerinjector_cba2 == 2'd2) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 2'd2))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 2'd2))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 2'd2))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 2'd2)))))) & controllerinjector_interface_bank2_ready)) | (((controllerinjector_roundrobin3_grant == 2'd2) & ((controllerinjector_cba2 == 2'd3) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 2'd2))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 2'd2))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 2'd2))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 2'd2)))))) & controllerinjector_interface_bank3_ready)) | (((controllerinjector_roundrobin4_grant == 2'd2) & ((controllerinjector_cba2 == 3'd4) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 2'd2))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 2'd2))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 2'd2)))))) & controllerinjector_interface_bank4_ready)) | (((controllerinjector_roundrobin5_grant == 2'd2) & ((controllerinjector_cba2 == 3'd5) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 2'd2))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 2'd2))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 2'd2)))))) & controllerinjector_interface_bank5_ready)) | (((controllerinjector_roundrobin6_grant == 2'd2) & ((controllerinjector_cba2 == 3'd6) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 2'd2))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 2'd2))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 2'd2)))))) & controllerinjector_interface_bank6_ready)) | (((controllerinjector_roundrobin7_grant == 2'd2) & ((controllerinjector_cba2 == 3'd7) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 2'd2))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 2'd2))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 2'd2)))))) & controllerinjector_interface_bank7_ready));
assign port_wdata_ready = controllerinjector_new_master_wdata_ready1;
assign litedramport0_wdata_ready0 = controllerinjector_new_master_wdata_ready3;
assign litedramport1_wdata_ready = controllerinjector_new_master_wdata_ready5;
assign port_rdata_valid = controllerinjector_new_master_rdata_valid4;
assign litedramport0_rdata_valid = controllerinjector_new_master_rdata_valid9;
assign litedramport1_rdata_valid0 = controllerinjector_new_master_rdata_valid14;

// synthesis translate_off
reg dummy_d_60;
// synthesis translate_on
always @(*) begin
	controllerinjector_interface_wdata <= 128'd0;
	controllerinjector_interface_wdata_we <= 16'd0;
	case ({controllerinjector_new_master_wdata_ready5, controllerinjector_new_master_wdata_ready3, controllerinjector_new_master_wdata_ready1})
		1'd1: begin
			controllerinjector_interface_wdata <= port_wdata_payload_data;
			controllerinjector_interface_wdata_we <= port_wdata_payload_we;
		end
		2'd2: begin
			controllerinjector_interface_wdata <= litedramport0_wdata_payload_data0;
			controllerinjector_interface_wdata_we <= litedramport0_wdata_payload_we0;
		end
		3'd4: begin
			controllerinjector_interface_wdata <= litedramport1_wdata_payload_data;
			controllerinjector_interface_wdata_we <= litedramport1_wdata_payload_we;
		end
		default: begin
			controllerinjector_interface_wdata <= 1'd0;
			controllerinjector_interface_wdata_we <= 1'd0;
		end
	endcase
// synthesis translate_off
	dummy_d_60 <= dummy_s;
// synthesis translate_on
end
assign port_rdata_payload_data = controllerinjector_interface_rdata;
assign litedramport0_rdata_payload_data = controllerinjector_interface_rdata;
assign litedramport1_rdata_payload_data0 = controllerinjector_interface_rdata;

// synthesis translate_off
reg dummy_d_61;
// synthesis translate_on
always @(*) begin
	controllerinjector_next_state <= 2'd0;
	litedramwriteportupconverter_we_controllerinjector_next_value0 <= 1'd0;
	litedramwriteportupconverter_we_controllerinjector_next_value_ce0 <= 1'd0;
	litedramwriteportupconverter_address_controllerinjector_next_value1 <= 24'd0;
	litedramwriteportupconverter_address_controllerinjector_next_value_ce1 <= 1'd0;
	litedramport0_cmd_valid0 <= 1'd0;
	litedramport0_cmd_ready1 <= 1'd0;
	litedramport0_cmd_payload_we0 <= 1'd0;
	litedramwriteportupconverter_counter_ce <= 1'd0;
	litedramport0_cmd_payload_adr0 <= 24'd0;
	controllerinjector_next_state <= controllerinjector_state;
	case (controllerinjector_state)
		1'd1: begin
			litedramport0_cmd_ready1 <= 1'd1;
			if (litedramport0_cmd_valid1) begin
				litedramwriteportupconverter_counter_ce <= 1'd1;
				if ((litedramwriteportupconverter_counter == 2'd3)) begin
					controllerinjector_next_state <= 2'd2;
				end
			end
		end
		2'd2: begin
			litedramport0_cmd_valid0 <= 1'd1;
			litedramport0_cmd_payload_we0 <= litedramwriteportupconverter_we;
			litedramport0_cmd_payload_adr0 <= litedramwriteportupconverter_address[23:2];
			if (litedramport0_cmd_ready0) begin
				controllerinjector_next_state <= 1'd0;
			end
		end
		default: begin
			litedramport0_cmd_ready1 <= 1'd1;
			if (litedramport0_cmd_valid1) begin
				litedramwriteportupconverter_counter_ce <= 1'd1;
				litedramwriteportupconverter_we_controllerinjector_next_value0 <= litedramport0_cmd_payload_we1;
				litedramwriteportupconverter_we_controllerinjector_next_value_ce0 <= 1'd1;
				litedramwriteportupconverter_address_controllerinjector_next_value1 <= litedramport0_cmd_payload_adr1;
				litedramwriteportupconverter_address_controllerinjector_next_value_ce1 <= 1'd1;
				controllerinjector_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_61 <= dummy_s;
// synthesis translate_on
end
assign litedramwriteportupconverter_converter_sink_valid = litedramwriteportupconverter_sink_valid;
assign litedramwriteportupconverter_converter_sink_last = litedramwriteportupconverter_sink_last;
assign litedramwriteportupconverter_sink_ready = litedramwriteportupconverter_converter_sink_ready;
assign litedramwriteportupconverter_converter_sink_payload_data = {litedramwriteportupconverter_sink_payload_we, litedramwriteportupconverter_sink_payload_data};
assign litedramwriteportupconverter_source_valid = litedramwriteportupconverter_source_source_valid;
assign litedramwriteportupconverter_source_last = litedramwriteportupconverter_source_source_last;
assign litedramwriteportupconverter_source_source_ready = litedramwriteportupconverter_source_ready;

// synthesis translate_off
reg dummy_d_62;
// synthesis translate_on
always @(*) begin
	litedramwriteportupconverter_source_payload_data <= 128'd0;
	litedramwriteportupconverter_source_payload_data[31:0] <= litedramwriteportupconverter_source_source_payload_data[31:0];
	litedramwriteportupconverter_source_payload_data[63:32] <= litedramwriteportupconverter_source_source_payload_data[67:36];
	litedramwriteportupconverter_source_payload_data[95:64] <= litedramwriteportupconverter_source_source_payload_data[103:72];
	litedramwriteportupconverter_source_payload_data[127:96] <= litedramwriteportupconverter_source_source_payload_data[139:108];
// synthesis translate_off
	dummy_d_62 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_63;
// synthesis translate_on
always @(*) begin
	litedramwriteportupconverter_source_payload_we <= 16'd0;
	litedramwriteportupconverter_source_payload_we[3:0] <= litedramwriteportupconverter_source_source_payload_data[35:32];
	litedramwriteportupconverter_source_payload_we[7:4] <= litedramwriteportupconverter_source_source_payload_data[71:68];
	litedramwriteportupconverter_source_payload_we[11:8] <= litedramwriteportupconverter_source_source_payload_data[107:104];
	litedramwriteportupconverter_source_payload_we[15:12] <= litedramwriteportupconverter_source_source_payload_data[143:140];
// synthesis translate_off
	dummy_d_63 <= dummy_s;
// synthesis translate_on
end
assign litedramwriteportupconverter_source_source_valid = litedramwriteportupconverter_converter_source_valid;
assign litedramwriteportupconverter_converter_source_ready = litedramwriteportupconverter_source_source_ready;
assign litedramwriteportupconverter_source_source_last = litedramwriteportupconverter_converter_source_last;
assign litedramwriteportupconverter_source_source_payload_data = litedramwriteportupconverter_converter_source_payload_data;
assign litedramwriteportupconverter_converter_sink_ready = ((~litedramwriteportupconverter_converter_strobe_all) | litedramwriteportupconverter_converter_source_ready);
assign litedramwriteportupconverter_converter_source_valid = litedramwriteportupconverter_converter_strobe_all;
assign litedramwriteportupconverter_converter_load_part = (litedramwriteportupconverter_converter_sink_valid & litedramwriteportupconverter_converter_sink_ready);
assign litedramwriteportupconverter_sink_valid = litedramport0_wdata_valid1;
assign litedramport0_wdata_ready1 = litedramwriteportupconverter_sink_ready;
assign litedramwriteportupconverter_sink_last = litedramport0_wdata_last1;
assign litedramwriteportupconverter_sink_payload_data = litedramport0_wdata_payload_data1;
assign litedramwriteportupconverter_sink_payload_we = litedramport0_wdata_payload_we1;
assign litedramport0_wdata_valid0 = litedramwriteportupconverter_source_valid;
assign litedramwriteportupconverter_source_ready = litedramport0_wdata_ready0;
assign litedramport0_wdata_last0 = litedramwriteportupconverter_source_last;
assign litedramport0_wdata_payload_data0 = litedramwriteportupconverter_source_payload_data;
assign litedramport0_wdata_payload_we0 = litedramwriteportupconverter_source_payload_we;

// synthesis translate_off
reg dummy_d_64;
// synthesis translate_on
always @(*) begin
	litedramreadportupconverter_counter_ce <= 1'd0;
	litedramport1_cmd_ready1 <= 1'd0;
	litedramport1_cmd_payload_adr0 <= 24'd0;
	litedramport1_cmd_valid0 <= 1'd0;
	if (litedramport1_cmd_valid1) begin
		if ((litedramreadportupconverter_counter == 1'd0)) begin
			litedramport1_cmd_valid0 <= 1'd1;
			litedramport1_cmd_payload_adr0 <= litedramport1_cmd_payload_adr1[25:2];
			litedramport1_cmd_ready1 <= litedramport1_cmd_ready0;
			litedramreadportupconverter_counter_ce <= litedramport1_cmd_ready0;
		end else begin
			litedramport1_cmd_ready1 <= 1'd1;
			litedramreadportupconverter_counter_ce <= 1'd1;
		end
	end
// synthesis translate_off
	dummy_d_64 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_65;
// synthesis translate_on
always @(*) begin
	litedramreadportupconverter_cmd_buffer_sink_payload_sel <= 4'd0;
	litedramreadportupconverter_cmd_buffer_sink_valid <= 1'd0;
	if ((litedramport1_cmd_valid0 & litedramport1_cmd_ready0)) begin
		litedramreadportupconverter_cmd_buffer_sink_valid <= 1'd1;
		litedramreadportupconverter_cmd_buffer_sink_payload_sel <= 4'd15;
	end
// synthesis translate_off
	dummy_d_65 <= dummy_s;
// synthesis translate_on
end
assign litedramreadportupconverter_rdata_buffer_sink_valid = litedramport1_rdata_valid0;
assign litedramport1_rdata_ready0 = litedramreadportupconverter_rdata_buffer_sink_ready;
assign litedramreadportupconverter_rdata_buffer_sink_last = litedramport1_rdata_last0;
assign litedramreadportupconverter_rdata_buffer_sink_payload_data = litedramport1_rdata_payload_data0;
assign litedramreadportupconverter_rdata_converter_sink_valid = litedramreadportupconverter_rdata_buffer_source_valid;
assign litedramreadportupconverter_rdata_buffer_source_ready = litedramreadportupconverter_rdata_converter_sink_ready;
assign litedramreadportupconverter_rdata_converter_sink_last = litedramreadportupconverter_rdata_buffer_source_last;
assign litedramreadportupconverter_rdata_converter_sink_payload_data = litedramreadportupconverter_rdata_buffer_source_payload_data;
assign litedramreadportupconverter_rdata_chunk_valid = ((litedramreadportupconverter_cmd_buffer_source_payload_sel & litedramreadportupconverter_rdata_chunk) != 1'd0);

// synthesis translate_off
reg dummy_d_66;
// synthesis translate_on
always @(*) begin
	litedramport1_rdata_payload_data1 <= 32'd0;
	litedramport1_rdata_valid1 <= 1'd0;
	litedramreadportupconverter_rdata_converter_source_ready <= 1'd0;
	if (litedramport1_flush) begin
		litedramreadportupconverter_rdata_converter_source_ready <= 1'd1;
	end else begin
		if (litedramreadportupconverter_cmd_buffer_source_valid) begin
			if (litedramreadportupconverter_rdata_chunk_valid) begin
				litedramport1_rdata_valid1 <= litedramreadportupconverter_rdata_converter_source_valid;
				litedramport1_rdata_payload_data1 <= litedramreadportupconverter_rdata_converter_source_payload_data;
				litedramreadportupconverter_rdata_converter_source_ready <= litedramport1_rdata_ready1;
			end else begin
				litedramreadportupconverter_rdata_converter_source_ready <= 1'd1;
			end
		end
	end
// synthesis translate_off
	dummy_d_66 <= dummy_s;
// synthesis translate_on
end
assign litedramreadportupconverter_cmd_buffer_source_ready = (litedramreadportupconverter_rdata_converter_source_ready & litedramreadportupconverter_rdata_chunk[3]);
assign litedramreadportupconverter_cmd_buffer_syncfifo_din = {litedramreadportupconverter_cmd_buffer_fifo_in_last, litedramreadportupconverter_cmd_buffer_fifo_in_payload_sel};
assign {litedramreadportupconverter_cmd_buffer_fifo_out_last, litedramreadportupconverter_cmd_buffer_fifo_out_payload_sel} = litedramreadportupconverter_cmd_buffer_syncfifo_dout;
assign litedramreadportupconverter_cmd_buffer_sink_ready = litedramreadportupconverter_cmd_buffer_syncfifo_writable;
assign litedramreadportupconverter_cmd_buffer_syncfifo_we = litedramreadportupconverter_cmd_buffer_sink_valid;
assign litedramreadportupconverter_cmd_buffer_fifo_in_last = litedramreadportupconverter_cmd_buffer_sink_last;
assign litedramreadportupconverter_cmd_buffer_fifo_in_payload_sel = litedramreadportupconverter_cmd_buffer_sink_payload_sel;
assign litedramreadportupconverter_cmd_buffer_source_valid = litedramreadportupconverter_cmd_buffer_syncfifo_readable;
assign litedramreadportupconverter_cmd_buffer_source_last = litedramreadportupconverter_cmd_buffer_fifo_out_last;
assign litedramreadportupconverter_cmd_buffer_source_payload_sel = litedramreadportupconverter_cmd_buffer_fifo_out_payload_sel;
assign litedramreadportupconverter_cmd_buffer_syncfifo_re = litedramreadportupconverter_cmd_buffer_source_ready;

// synthesis translate_off
reg dummy_d_67;
// synthesis translate_on
always @(*) begin
	litedramreadportupconverter_cmd_buffer_wrport_adr <= 2'd0;
	if (litedramreadportupconverter_cmd_buffer_replace) begin
		litedramreadportupconverter_cmd_buffer_wrport_adr <= (litedramreadportupconverter_cmd_buffer_produce - 1'd1);
	end else begin
		litedramreadportupconverter_cmd_buffer_wrport_adr <= litedramreadportupconverter_cmd_buffer_produce;
	end
// synthesis translate_off
	dummy_d_67 <= dummy_s;
// synthesis translate_on
end
assign litedramreadportupconverter_cmd_buffer_wrport_dat_w = litedramreadportupconverter_cmd_buffer_syncfifo_din;
assign litedramreadportupconverter_cmd_buffer_wrport_we = (litedramreadportupconverter_cmd_buffer_syncfifo_we & (litedramreadportupconverter_cmd_buffer_syncfifo_writable | litedramreadportupconverter_cmd_buffer_replace));
assign litedramreadportupconverter_cmd_buffer_do_read = (litedramreadportupconverter_cmd_buffer_syncfifo_readable & litedramreadportupconverter_cmd_buffer_syncfifo_re);
assign litedramreadportupconverter_cmd_buffer_rdport_adr = litedramreadportupconverter_cmd_buffer_consume;
assign litedramreadportupconverter_cmd_buffer_syncfifo_dout = litedramreadportupconverter_cmd_buffer_rdport_dat_r;
assign litedramreadportupconverter_cmd_buffer_syncfifo_writable = (litedramreadportupconverter_cmd_buffer_level != 3'd4);
assign litedramreadportupconverter_cmd_buffer_syncfifo_readable = (litedramreadportupconverter_cmd_buffer_level != 1'd0);
assign litedramreadportupconverter_rdata_buffer_pipe_ce = (litedramreadportupconverter_rdata_buffer_source_ready | (~litedramreadportupconverter_rdata_buffer_valid_n));
assign litedramreadportupconverter_rdata_buffer_sink_ready = litedramreadportupconverter_rdata_buffer_pipe_ce;
assign litedramreadportupconverter_rdata_buffer_source_valid = litedramreadportupconverter_rdata_buffer_valid_n;
assign litedramreadportupconverter_rdata_buffer_busy = (1'd0 | litedramreadportupconverter_rdata_buffer_valid_n);
assign litedramreadportupconverter_rdata_buffer_source_last = litedramreadportupconverter_rdata_buffer_last_n;
assign litedramreadportupconverter_rdata_converter_converter_sink_valid = litedramreadportupconverter_rdata_converter_sink_valid;
assign litedramreadportupconverter_rdata_converter_converter_sink_last = litedramreadportupconverter_rdata_converter_sink_last;
assign litedramreadportupconverter_rdata_converter_sink_ready = litedramreadportupconverter_rdata_converter_converter_sink_ready;

// synthesis translate_off
reg dummy_d_68;
// synthesis translate_on
always @(*) begin
	litedramreadportupconverter_rdata_converter_converter_sink_payload_data <= 128'd0;
	litedramreadportupconverter_rdata_converter_converter_sink_payload_data[31:0] <= litedramreadportupconverter_rdata_converter_sink_payload_data[31:0];
	litedramreadportupconverter_rdata_converter_converter_sink_payload_data[63:32] <= litedramreadportupconverter_rdata_converter_sink_payload_data[63:32];
	litedramreadportupconverter_rdata_converter_converter_sink_payload_data[95:64] <= litedramreadportupconverter_rdata_converter_sink_payload_data[95:64];
	litedramreadportupconverter_rdata_converter_converter_sink_payload_data[127:96] <= litedramreadportupconverter_rdata_converter_sink_payload_data[127:96];
// synthesis translate_off
	dummy_d_68 <= dummy_s;
// synthesis translate_on
end
assign litedramreadportupconverter_rdata_converter_source_valid = litedramreadportupconverter_rdata_converter_source_source_valid;
assign litedramreadportupconverter_rdata_converter_source_last = litedramreadportupconverter_rdata_converter_source_source_last;
assign litedramreadportupconverter_rdata_converter_source_source_ready = litedramreadportupconverter_rdata_converter_source_ready;
assign {litedramreadportupconverter_rdata_converter_source_payload_data} = litedramreadportupconverter_rdata_converter_source_source_payload_data;
assign litedramreadportupconverter_rdata_converter_source_source_valid = litedramreadportupconverter_rdata_converter_converter_source_valid;
assign litedramreadportupconverter_rdata_converter_converter_source_ready = litedramreadportupconverter_rdata_converter_source_source_ready;
assign litedramreadportupconverter_rdata_converter_source_source_last = litedramreadportupconverter_rdata_converter_converter_source_last;
assign litedramreadportupconverter_rdata_converter_source_source_payload_data = litedramreadportupconverter_rdata_converter_converter_source_payload_data;
assign litedramreadportupconverter_rdata_converter_converter_last = (litedramreadportupconverter_rdata_converter_converter_mux == 2'd3);
assign litedramreadportupconverter_rdata_converter_converter_source_valid = litedramreadportupconverter_rdata_converter_converter_sink_valid;
assign litedramreadportupconverter_rdata_converter_converter_source_last = (litedramreadportupconverter_rdata_converter_converter_sink_last & litedramreadportupconverter_rdata_converter_converter_last);
assign litedramreadportupconverter_rdata_converter_converter_sink_ready = (litedramreadportupconverter_rdata_converter_converter_last & litedramreadportupconverter_rdata_converter_converter_source_ready);

// synthesis translate_off
reg dummy_d_69;
// synthesis translate_on
always @(*) begin
	litedramreadportupconverter_rdata_converter_converter_source_payload_data <= 32'd0;
	case (litedramreadportupconverter_rdata_converter_converter_mux)
		1'd0: begin
			litedramreadportupconverter_rdata_converter_converter_source_payload_data <= litedramreadportupconverter_rdata_converter_converter_sink_payload_data[127:96];
		end
		1'd1: begin
			litedramreadportupconverter_rdata_converter_converter_source_payload_data <= litedramreadportupconverter_rdata_converter_converter_sink_payload_data[95:64];
		end
		2'd2: begin
			litedramreadportupconverter_rdata_converter_converter_source_payload_data <= litedramreadportupconverter_rdata_converter_converter_sink_payload_data[63:32];
		end
		default: begin
			litedramreadportupconverter_rdata_converter_converter_source_payload_data <= litedramreadportupconverter_rdata_converter_converter_sink_payload_data[31:0];
		end
	endcase
// synthesis translate_off
	dummy_d_69 <= dummy_s;
// synthesis translate_on
end
assign litedramreadportupconverter_rdata_converter_converter_source_payload_valid_token_count = litedramreadportupconverter_rdata_converter_converter_last;
assign data_port_adr = interface0_wb_sdram_adr[10:2];

// synthesis translate_off
reg dummy_d_70;
// synthesis translate_on
always @(*) begin
	data_port_we <= 16'd0;
	data_port_dat_w <= 128'd0;
	if (write_from_slave) begin
		data_port_dat_w <= interface_dat_r;
		data_port_we <= {16{1'd1}};
	end else begin
		data_port_dat_w <= {4{interface0_wb_sdram_dat_w}};
		if ((((interface0_wb_sdram_cyc & interface0_wb_sdram_stb) & interface0_wb_sdram_we) & interface0_wb_sdram_ack)) begin
			data_port_we <= {({4{(interface0_wb_sdram_adr[1:0] == 1'd0)}} & interface0_wb_sdram_sel), ({4{(interface0_wb_sdram_adr[1:0] == 1'd1)}} & interface0_wb_sdram_sel), ({4{(interface0_wb_sdram_adr[1:0] == 2'd2)}} & interface0_wb_sdram_sel), ({4{(interface0_wb_sdram_adr[1:0] == 2'd3)}} & interface0_wb_sdram_sel)};
		end
	end
// synthesis translate_off
	dummy_d_70 <= dummy_s;
// synthesis translate_on
end
assign interface_dat_w = data_port_dat_r;
assign interface_sel = 16'd65535;

// synthesis translate_off
reg dummy_d_71;
// synthesis translate_on
always @(*) begin
	interface0_wb_sdram_dat_r <= 32'd0;
	case (adr_offset_r)
		1'd0: begin
			interface0_wb_sdram_dat_r <= data_port_dat_r[127:96];
		end
		1'd1: begin
			interface0_wb_sdram_dat_r <= data_port_dat_r[95:64];
		end
		2'd2: begin
			interface0_wb_sdram_dat_r <= data_port_dat_r[63:32];
		end
		default: begin
			interface0_wb_sdram_dat_r <= data_port_dat_r[31:0];
		end
	endcase
// synthesis translate_off
	dummy_d_71 <= dummy_s;
// synthesis translate_on
end
assign {tag_do_dirty, tag_do_tag} = tag_port_dat_r;
assign tag_port_dat_w = {tag_di_dirty, tag_di_tag};
assign tag_port_adr = interface0_wb_sdram_adr[10:2];
assign tag_di_tag = interface0_wb_sdram_adr[29:11];
assign interface_adr = {tag_do_tag, interface0_wb_sdram_adr[10:2]};

// synthesis translate_off
reg dummy_d_72;
// synthesis translate_on
always @(*) begin
	word_clr <= 1'd0;
	word_inc <= 1'd0;
	cache_next_state <= 3'd0;
	write_from_slave <= 1'd0;
	interface_cyc <= 1'd0;
	interface0_wb_sdram_ack <= 1'd0;
	interface_stb <= 1'd0;
	tag_port_we <= 1'd0;
	interface_we <= 1'd0;
	tag_di_dirty <= 1'd0;
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
// synthesis translate_off
	dummy_d_72 <= dummy_s;
// synthesis translate_on
end
assign port_cmd_payload_adr = interface_adr;
assign port_wdata_payload_we = interface_sel;
assign port_wdata_payload_data = interface_dat_w;
assign interface_dat_r = port_rdata_payload_data;

// synthesis translate_off
reg dummy_d_73;
// synthesis translate_on
always @(*) begin
	port_wdata_valid <= 1'd0;
	interface_ack <= 1'd0;
	port_cmd_valid <= 1'd0;
	litedramwishbonebridge_next_state <= 2'd0;
	port_cmd_payload_we <= 1'd0;
	port_rdata_ready <= 1'd0;
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
// synthesis translate_off
	dummy_d_73 <= dummy_s;
// synthesis translate_on
end
assign ethphy_sink_ready = 1'd1;
assign ethphy_source_last = ((~ethphy_rx_dv) & ethphy_rx_dv_d);
assign eth_tx_clk = eth_rx_clk;
assign eth_rst_n = (~ethphy_crg_storage);
assign eth_mdc = ethphy_mdio_storage[0];
assign ethphy_mdio_data_oe = ethphy_mdio_storage[1];
assign ethphy_mdio_data_w = ethphy_mdio_storage[2];
assign ethmac_tx_cdc_sink_valid = ethmac_source_valid;
assign ethmac_source_ready = ethmac_tx_cdc_sink_ready;
assign ethmac_tx_cdc_sink_last = ethmac_source_last;
assign ethmac_tx_cdc_sink_payload_data = ethmac_source_payload_data;
assign ethmac_tx_cdc_sink_payload_last_be = ethmac_source_payload_last_be;
assign ethmac_tx_cdc_sink_payload_error = ethmac_source_payload_error;
assign ethmac_sink_valid = ethmac_rx_cdc_source_valid;
assign ethmac_rx_cdc_source_ready = ethmac_sink_ready;
assign ethmac_sink_last = ethmac_rx_cdc_source_last;
assign ethmac_sink_payload_data = ethmac_rx_cdc_source_payload_data;
assign ethmac_sink_payload_last_be = ethmac_rx_cdc_source_payload_last_be;
assign ethmac_sink_payload_error = ethmac_rx_cdc_source_payload_error;

// synthesis translate_off
reg dummy_d_74;
// synthesis translate_on
always @(*) begin
	ethmac_tx_gap_inserter_counter_reset <= 1'd0;
	ethmac_tx_gap_inserter_counter_ce <= 1'd0;
	ethmac_tx_gap_inserter_sink_ready <= 1'd0;
	clockdomainsrenamer0_next_state <= 1'd0;
	ethmac_tx_gap_inserter_source_valid <= 1'd0;
	ethmac_tx_gap_inserter_source_last <= 1'd0;
	ethmac_tx_gap_inserter_source_payload_data <= 8'd0;
	ethmac_tx_gap_inserter_source_payload_last_be <= 1'd0;
	ethmac_tx_gap_inserter_source_payload_error <= 1'd0;
	clockdomainsrenamer0_next_state <= clockdomainsrenamer0_state;
	case (clockdomainsrenamer0_state)
		1'd1: begin
			ethmac_tx_gap_inserter_counter_ce <= 1'd1;
			ethmac_tx_gap_inserter_sink_ready <= 1'd0;
			if ((ethmac_tx_gap_inserter_counter == 4'd11)) begin
				clockdomainsrenamer0_next_state <= 1'd0;
			end
		end
		default: begin
			ethmac_tx_gap_inserter_counter_reset <= 1'd1;
			ethmac_tx_gap_inserter_source_valid <= ethmac_tx_gap_inserter_sink_valid;
			ethmac_tx_gap_inserter_sink_ready <= ethmac_tx_gap_inserter_source_ready;
			ethmac_tx_gap_inserter_source_last <= ethmac_tx_gap_inserter_sink_last;
			ethmac_tx_gap_inserter_source_payload_data <= ethmac_tx_gap_inserter_sink_payload_data;
			ethmac_tx_gap_inserter_source_payload_last_be <= ethmac_tx_gap_inserter_sink_payload_last_be;
			ethmac_tx_gap_inserter_source_payload_error <= ethmac_tx_gap_inserter_sink_payload_error;
			if (((ethmac_tx_gap_inserter_sink_valid & ethmac_tx_gap_inserter_sink_last) & ethmac_tx_gap_inserter_sink_ready)) begin
				clockdomainsrenamer0_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_74 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_75;
// synthesis translate_on
always @(*) begin
	ethmac_rx_gap_checker_source_payload_data <= 8'd0;
	ethmac_rx_gap_checker_source_payload_last_be <= 1'd0;
	ethmac_rx_gap_checker_source_payload_error <= 1'd0;
	ethmac_rx_gap_checker_counter_reset <= 1'd0;
	ethmac_rx_gap_checker_counter_ce <= 1'd0;
	ethmac_rx_gap_checker_sink_ready <= 1'd0;
	ethmac_rx_gap_checker_source_valid <= 1'd0;
	clockdomainsrenamer1_next_state <= 1'd0;
	ethmac_rx_gap_checker_source_last <= 1'd0;
	clockdomainsrenamer1_next_state <= clockdomainsrenamer1_state;
	case (clockdomainsrenamer1_state)
		1'd1: begin
			ethmac_rx_gap_checker_counter_ce <= 1'd1;
			ethmac_rx_gap_checker_sink_ready <= 1'd1;
			if ((ethmac_rx_gap_checker_counter == 4'd11)) begin
				clockdomainsrenamer1_next_state <= 1'd0;
			end
		end
		default: begin
			ethmac_rx_gap_checker_counter_reset <= 1'd1;
			ethmac_rx_gap_checker_source_valid <= ethmac_rx_gap_checker_sink_valid;
			ethmac_rx_gap_checker_sink_ready <= ethmac_rx_gap_checker_source_ready;
			ethmac_rx_gap_checker_source_last <= ethmac_rx_gap_checker_sink_last;
			ethmac_rx_gap_checker_source_payload_data <= ethmac_rx_gap_checker_sink_payload_data;
			ethmac_rx_gap_checker_source_payload_last_be <= ethmac_rx_gap_checker_sink_payload_last_be;
			ethmac_rx_gap_checker_source_payload_error <= ethmac_rx_gap_checker_sink_payload_error;
			if (((ethmac_rx_gap_checker_sink_valid & ethmac_rx_gap_checker_sink_last) & ethmac_rx_gap_checker_sink_ready)) begin
				clockdomainsrenamer1_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_75 <= dummy_s;
// synthesis translate_on
end
assign ethmac_preamble_inserter_source_payload_last_be = ethmac_preamble_inserter_sink_payload_last_be;

// synthesis translate_off
reg dummy_d_76;
// synthesis translate_on
always @(*) begin
	ethmac_preamble_inserter_source_valid <= 1'd0;
	ethmac_preamble_inserter_source_last <= 1'd0;
	clockdomainsrenamer2_next_state <= 2'd0;
	ethmac_preamble_inserter_source_payload_data <= 8'd0;
	ethmac_preamble_inserter_source_payload_error <= 1'd0;
	ethmac_preamble_inserter_clr_cnt <= 1'd0;
	ethmac_preamble_inserter_inc_cnt <= 1'd0;
	ethmac_preamble_inserter_sink_ready <= 1'd0;
	ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_sink_payload_data;
	clockdomainsrenamer2_next_state <= clockdomainsrenamer2_state;
	case (clockdomainsrenamer2_state)
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
					clockdomainsrenamer2_next_state <= 2'd2;
				end
			end else begin
				ethmac_preamble_inserter_inc_cnt <= ethmac_preamble_inserter_source_ready;
			end
		end
		2'd2: begin
			ethmac_preamble_inserter_source_valid <= ethmac_preamble_inserter_sink_valid;
			ethmac_preamble_inserter_sink_ready <= ethmac_preamble_inserter_source_ready;
			ethmac_preamble_inserter_source_last <= ethmac_preamble_inserter_sink_last;
			ethmac_preamble_inserter_source_payload_error <= ethmac_preamble_inserter_sink_payload_error;
			if (((ethmac_preamble_inserter_sink_valid & ethmac_preamble_inserter_sink_last) & ethmac_preamble_inserter_source_ready)) begin
				clockdomainsrenamer2_next_state <= 1'd0;
			end
		end
		default: begin
			ethmac_preamble_inserter_sink_ready <= 1'd1;
			ethmac_preamble_inserter_clr_cnt <= 1'd1;
			if (ethmac_preamble_inserter_sink_valid) begin
				ethmac_preamble_inserter_sink_ready <= 1'd0;
				clockdomainsrenamer2_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_76 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_77;
// synthesis translate_on
always @(*) begin
	ethmac_preamble_checker_ref <= 8'd0;
	case (ethmac_preamble_checker_cnt)
		1'd0: begin
			ethmac_preamble_checker_ref <= ethmac_preamble_checker_preamble[7:0];
		end
		1'd1: begin
			ethmac_preamble_checker_ref <= ethmac_preamble_checker_preamble[15:8];
		end
		2'd2: begin
			ethmac_preamble_checker_ref <= ethmac_preamble_checker_preamble[23:16];
		end
		2'd3: begin
			ethmac_preamble_checker_ref <= ethmac_preamble_checker_preamble[31:24];
		end
		3'd4: begin
			ethmac_preamble_checker_ref <= ethmac_preamble_checker_preamble[39:32];
		end
		3'd5: begin
			ethmac_preamble_checker_ref <= ethmac_preamble_checker_preamble[47:40];
		end
		3'd6: begin
			ethmac_preamble_checker_ref <= ethmac_preamble_checker_preamble[55:48];
		end
		default: begin
			ethmac_preamble_checker_ref <= ethmac_preamble_checker_preamble[63:56];
		end
	endcase
// synthesis translate_off
	dummy_d_77 <= dummy_s;
// synthesis translate_on
end
assign ethmac_preamble_checker_match = (ethmac_preamble_checker_sink_payload_data == ethmac_preamble_checker_ref);
assign ethmac_preamble_checker_source_payload_data = ethmac_preamble_checker_sink_payload_data;
assign ethmac_preamble_checker_source_payload_last_be = ethmac_preamble_checker_sink_payload_last_be;

// synthesis translate_off
reg dummy_d_78;
// synthesis translate_on
always @(*) begin
	ethmac_preamble_checker_source_valid <= 1'd0;
	clockdomainsrenamer3_next_state <= 2'd0;
	ethmac_preamble_checker_source_last <= 1'd0;
	ethmac_preamble_checker_source_payload_error <= 1'd0;
	ethmac_preamble_checker_clr_cnt <= 1'd0;
	ethmac_preamble_checker_inc_cnt <= 1'd0;
	ethmac_preamble_checker_sink_ready <= 1'd0;
	ethmac_preamble_checker_clr_discard <= 1'd0;
	ethmac_preamble_checker_set_discard <= 1'd0;
	clockdomainsrenamer3_next_state <= clockdomainsrenamer3_state;
	case (clockdomainsrenamer3_state)
		1'd1: begin
			ethmac_preamble_checker_sink_ready <= 1'd1;
			if (ethmac_preamble_checker_sink_valid) begin
				ethmac_preamble_checker_set_discard <= (~ethmac_preamble_checker_match);
				if ((ethmac_preamble_checker_cnt == 3'd7)) begin
					if ((ethmac_preamble_checker_discard | (~ethmac_preamble_checker_match))) begin
						clockdomainsrenamer3_next_state <= 1'd0;
					end else begin
						clockdomainsrenamer3_next_state <= 2'd2;
					end
				end else begin
					ethmac_preamble_checker_inc_cnt <= 1'd1;
				end
			end
		end
		2'd2: begin
			ethmac_preamble_checker_source_valid <= ethmac_preamble_checker_sink_valid;
			ethmac_preamble_checker_sink_ready <= ethmac_preamble_checker_source_ready;
			ethmac_preamble_checker_source_last <= ethmac_preamble_checker_sink_last;
			ethmac_preamble_checker_source_payload_error <= ethmac_preamble_checker_sink_payload_error;
			if (((ethmac_preamble_checker_source_valid & ethmac_preamble_checker_source_last) & ethmac_preamble_checker_source_ready)) begin
				clockdomainsrenamer3_next_state <= 1'd0;
			end
		end
		default: begin
			ethmac_preamble_checker_sink_ready <= 1'd1;
			ethmac_preamble_checker_clr_cnt <= 1'd1;
			ethmac_preamble_checker_clr_discard <= 1'd1;
			if (ethmac_preamble_checker_sink_valid) begin
				ethmac_preamble_checker_clr_cnt <= 1'd0;
				ethmac_preamble_checker_inc_cnt <= 1'd1;
				ethmac_preamble_checker_clr_discard <= 1'd0;
				ethmac_preamble_checker_set_discard <= (~ethmac_preamble_checker_match);
				clockdomainsrenamer3_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_78 <= dummy_s;
// synthesis translate_on
end
assign ethmac_crc32_inserter_cnt_done = (ethmac_crc32_inserter_cnt == 1'd0);
assign ethmac_crc32_inserter_data1 = ethmac_crc32_inserter_data0;
assign ethmac_crc32_inserter_last = ethmac_crc32_inserter_reg;
assign ethmac_crc32_inserter_value = (~{ethmac_crc32_inserter_reg[0], ethmac_crc32_inserter_reg[1], ethmac_crc32_inserter_reg[2], ethmac_crc32_inserter_reg[3], ethmac_crc32_inserter_reg[4], ethmac_crc32_inserter_reg[5], ethmac_crc32_inserter_reg[6], ethmac_crc32_inserter_reg[7], ethmac_crc32_inserter_reg[8], ethmac_crc32_inserter_reg[9], ethmac_crc32_inserter_reg[10], ethmac_crc32_inserter_reg[11], ethmac_crc32_inserter_reg[12], ethmac_crc32_inserter_reg[13], ethmac_crc32_inserter_reg[14], ethmac_crc32_inserter_reg[15], ethmac_crc32_inserter_reg[16], ethmac_crc32_inserter_reg[17], ethmac_crc32_inserter_reg[18], ethmac_crc32_inserter_reg[19], ethmac_crc32_inserter_reg[20], ethmac_crc32_inserter_reg[21], ethmac_crc32_inserter_reg[22], ethmac_crc32_inserter_reg[23], ethmac_crc32_inserter_reg[24], ethmac_crc32_inserter_reg[25], ethmac_crc32_inserter_reg[26], ethmac_crc32_inserter_reg[27], ethmac_crc32_inserter_reg[28], ethmac_crc32_inserter_reg[29], ethmac_crc32_inserter_reg[30], ethmac_crc32_inserter_reg[31]});
assign ethmac_crc32_inserter_error = (ethmac_crc32_inserter_next != 32'd3338984827);

// synthesis translate_off
reg dummy_d_79;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_79 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_80;
// synthesis translate_on
always @(*) begin
	ethmac_crc32_inserter_is_ongoing0 <= 1'd0;
	ethmac_crc32_inserter_is_ongoing1 <= 1'd0;
	ethmac_crc32_inserter_sink_ready <= 1'd0;
	ethmac_crc32_inserter_ce <= 1'd0;
	ethmac_crc32_inserter_reset <= 1'd0;
	ethmac_crc32_inserter_source_valid <= 1'd0;
	ethmac_crc32_inserter_source_last <= 1'd0;
	ethmac_crc32_inserter_source_payload_data <= 8'd0;
	clockdomainsrenamer4_next_state <= 2'd0;
	ethmac_crc32_inserter_source_payload_last_be <= 1'd0;
	ethmac_crc32_inserter_source_payload_error <= 1'd0;
	ethmac_crc32_inserter_data0 <= 8'd0;
	clockdomainsrenamer4_next_state <= clockdomainsrenamer4_state;
	case (clockdomainsrenamer4_state)
		1'd1: begin
			ethmac_crc32_inserter_ce <= (ethmac_crc32_inserter_sink_valid & ethmac_crc32_inserter_source_ready);
			ethmac_crc32_inserter_data0 <= ethmac_crc32_inserter_sink_payload_data;
			ethmac_crc32_inserter_source_valid <= ethmac_crc32_inserter_sink_valid;
			ethmac_crc32_inserter_sink_ready <= ethmac_crc32_inserter_source_ready;
			ethmac_crc32_inserter_source_last <= ethmac_crc32_inserter_sink_last;
			ethmac_crc32_inserter_source_payload_data <= ethmac_crc32_inserter_sink_payload_data;
			ethmac_crc32_inserter_source_payload_last_be <= ethmac_crc32_inserter_sink_payload_last_be;
			ethmac_crc32_inserter_source_payload_error <= ethmac_crc32_inserter_sink_payload_error;
			ethmac_crc32_inserter_source_last <= 1'd0;
			if (((ethmac_crc32_inserter_sink_valid & ethmac_crc32_inserter_sink_last) & ethmac_crc32_inserter_source_ready)) begin
				clockdomainsrenamer4_next_state <= 2'd2;
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
					clockdomainsrenamer4_next_state <= 1'd0;
				end
			end
			ethmac_crc32_inserter_is_ongoing1 <= 1'd1;
		end
		default: begin
			ethmac_crc32_inserter_reset <= 1'd1;
			ethmac_crc32_inserter_sink_ready <= 1'd1;
			if (ethmac_crc32_inserter_sink_valid) begin
				ethmac_crc32_inserter_sink_ready <= 1'd0;
				clockdomainsrenamer4_next_state <= 1'd1;
			end
			ethmac_crc32_inserter_is_ongoing0 <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_80 <= dummy_s;
// synthesis translate_on
end
assign ethmac_crc32_checker_fifo_full = (ethmac_crc32_checker_syncfifo_level == 3'd4);
assign ethmac_crc32_checker_fifo_in = (ethmac_crc32_checker_sink_sink_valid & ((~ethmac_crc32_checker_fifo_full) | ethmac_crc32_checker_fifo_out));
assign ethmac_crc32_checker_fifo_out = (ethmac_crc32_checker_source_source_valid & ethmac_crc32_checker_source_source_ready);
assign ethmac_crc32_checker_syncfifo_sink_last = ethmac_crc32_checker_sink_sink_last;
assign ethmac_crc32_checker_syncfifo_sink_payload_data = ethmac_crc32_checker_sink_sink_payload_data;
assign ethmac_crc32_checker_syncfifo_sink_payload_last_be = ethmac_crc32_checker_sink_sink_payload_last_be;
assign ethmac_crc32_checker_syncfifo_sink_payload_error = ethmac_crc32_checker_sink_sink_payload_error;

// synthesis translate_off
reg dummy_d_81;
// synthesis translate_on
always @(*) begin
	ethmac_crc32_checker_syncfifo_sink_valid <= 1'd0;
	ethmac_crc32_checker_syncfifo_sink_valid <= ethmac_crc32_checker_sink_sink_valid;
	ethmac_crc32_checker_syncfifo_sink_valid <= ethmac_crc32_checker_fifo_in;
// synthesis translate_off
	dummy_d_81 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_82;
// synthesis translate_on
always @(*) begin
	ethmac_crc32_checker_sink_sink_ready <= 1'd0;
	ethmac_crc32_checker_sink_sink_ready <= ethmac_crc32_checker_syncfifo_sink_ready;
	ethmac_crc32_checker_sink_sink_ready <= ethmac_crc32_checker_fifo_in;
// synthesis translate_off
	dummy_d_82 <= dummy_s;
// synthesis translate_on
end
assign ethmac_crc32_checker_source_source_valid = (ethmac_crc32_checker_sink_sink_valid & ethmac_crc32_checker_fifo_full);
assign ethmac_crc32_checker_source_source_last = ethmac_crc32_checker_sink_sink_last;
assign ethmac_crc32_checker_syncfifo_source_ready = ethmac_crc32_checker_fifo_out;
assign ethmac_crc32_checker_source_source_payload_data = ethmac_crc32_checker_syncfifo_source_payload_data;
assign ethmac_crc32_checker_source_source_payload_last_be = ethmac_crc32_checker_syncfifo_source_payload_last_be;

// synthesis translate_off
reg dummy_d_83;
// synthesis translate_on
always @(*) begin
	ethmac_crc32_checker_source_source_payload_error <= 1'd0;
	ethmac_crc32_checker_source_source_payload_error <= ethmac_crc32_checker_syncfifo_source_payload_error;
	ethmac_crc32_checker_source_source_payload_error <= (ethmac_crc32_checker_sink_sink_payload_error | ethmac_crc32_checker_crc_error);
// synthesis translate_off
	dummy_d_83 <= dummy_s;
// synthesis translate_on
end
assign ethmac_crc32_checker_crc_data0 = ethmac_crc32_checker_sink_sink_payload_data;
assign ethmac_crc32_checker_crc_data1 = ethmac_crc32_checker_crc_data0;
assign ethmac_crc32_checker_crc_last = ethmac_crc32_checker_crc_reg;
assign ethmac_crc32_checker_crc_value = (~{ethmac_crc32_checker_crc_reg[0], ethmac_crc32_checker_crc_reg[1], ethmac_crc32_checker_crc_reg[2], ethmac_crc32_checker_crc_reg[3], ethmac_crc32_checker_crc_reg[4], ethmac_crc32_checker_crc_reg[5], ethmac_crc32_checker_crc_reg[6], ethmac_crc32_checker_crc_reg[7], ethmac_crc32_checker_crc_reg[8], ethmac_crc32_checker_crc_reg[9], ethmac_crc32_checker_crc_reg[10], ethmac_crc32_checker_crc_reg[11], ethmac_crc32_checker_crc_reg[12], ethmac_crc32_checker_crc_reg[13], ethmac_crc32_checker_crc_reg[14], ethmac_crc32_checker_crc_reg[15], ethmac_crc32_checker_crc_reg[16], ethmac_crc32_checker_crc_reg[17], ethmac_crc32_checker_crc_reg[18], ethmac_crc32_checker_crc_reg[19], ethmac_crc32_checker_crc_reg[20], ethmac_crc32_checker_crc_reg[21], ethmac_crc32_checker_crc_reg[22], ethmac_crc32_checker_crc_reg[23], ethmac_crc32_checker_crc_reg[24], ethmac_crc32_checker_crc_reg[25], ethmac_crc32_checker_crc_reg[26], ethmac_crc32_checker_crc_reg[27], ethmac_crc32_checker_crc_reg[28], ethmac_crc32_checker_crc_reg[29], ethmac_crc32_checker_crc_reg[30], ethmac_crc32_checker_crc_reg[31]});
assign ethmac_crc32_checker_crc_error = (ethmac_crc32_checker_crc_next != 32'd3338984827);

// synthesis translate_off
reg dummy_d_84;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_84 <= dummy_s;
// synthesis translate_on
end
assign ethmac_crc32_checker_syncfifo_syncfifo_din = {ethmac_crc32_checker_syncfifo_fifo_in_last, ethmac_crc32_checker_syncfifo_fifo_in_payload_error, ethmac_crc32_checker_syncfifo_fifo_in_payload_last_be, ethmac_crc32_checker_syncfifo_fifo_in_payload_data};
assign {ethmac_crc32_checker_syncfifo_fifo_out_last, ethmac_crc32_checker_syncfifo_fifo_out_payload_error, ethmac_crc32_checker_syncfifo_fifo_out_payload_last_be, ethmac_crc32_checker_syncfifo_fifo_out_payload_data} = ethmac_crc32_checker_syncfifo_syncfifo_dout;
assign ethmac_crc32_checker_syncfifo_sink_ready = ethmac_crc32_checker_syncfifo_syncfifo_writable;
assign ethmac_crc32_checker_syncfifo_syncfifo_we = ethmac_crc32_checker_syncfifo_sink_valid;
assign ethmac_crc32_checker_syncfifo_fifo_in_last = ethmac_crc32_checker_syncfifo_sink_last;
assign ethmac_crc32_checker_syncfifo_fifo_in_payload_data = ethmac_crc32_checker_syncfifo_sink_payload_data;
assign ethmac_crc32_checker_syncfifo_fifo_in_payload_last_be = ethmac_crc32_checker_syncfifo_sink_payload_last_be;
assign ethmac_crc32_checker_syncfifo_fifo_in_payload_error = ethmac_crc32_checker_syncfifo_sink_payload_error;
assign ethmac_crc32_checker_syncfifo_source_valid = ethmac_crc32_checker_syncfifo_syncfifo_readable;
assign ethmac_crc32_checker_syncfifo_source_last = ethmac_crc32_checker_syncfifo_fifo_out_last;
assign ethmac_crc32_checker_syncfifo_source_payload_data = ethmac_crc32_checker_syncfifo_fifo_out_payload_data;
assign ethmac_crc32_checker_syncfifo_source_payload_last_be = ethmac_crc32_checker_syncfifo_fifo_out_payload_last_be;
assign ethmac_crc32_checker_syncfifo_source_payload_error = ethmac_crc32_checker_syncfifo_fifo_out_payload_error;
assign ethmac_crc32_checker_syncfifo_syncfifo_re = ethmac_crc32_checker_syncfifo_source_ready;

// synthesis translate_off
reg dummy_d_85;
// synthesis translate_on
always @(*) begin
	ethmac_crc32_checker_syncfifo_wrport_adr <= 3'd0;
	if (ethmac_crc32_checker_syncfifo_replace) begin
		ethmac_crc32_checker_syncfifo_wrport_adr <= (ethmac_crc32_checker_syncfifo_produce - 1'd1);
	end else begin
		ethmac_crc32_checker_syncfifo_wrport_adr <= ethmac_crc32_checker_syncfifo_produce;
	end
// synthesis translate_off
	dummy_d_85 <= dummy_s;
// synthesis translate_on
end
assign ethmac_crc32_checker_syncfifo_wrport_dat_w = ethmac_crc32_checker_syncfifo_syncfifo_din;
assign ethmac_crc32_checker_syncfifo_wrport_we = (ethmac_crc32_checker_syncfifo_syncfifo_we & (ethmac_crc32_checker_syncfifo_syncfifo_writable | ethmac_crc32_checker_syncfifo_replace));
assign ethmac_crc32_checker_syncfifo_do_read = (ethmac_crc32_checker_syncfifo_syncfifo_readable & ethmac_crc32_checker_syncfifo_syncfifo_re);
assign ethmac_crc32_checker_syncfifo_rdport_adr = ethmac_crc32_checker_syncfifo_consume;
assign ethmac_crc32_checker_syncfifo_syncfifo_dout = ethmac_crc32_checker_syncfifo_rdport_dat_r;
assign ethmac_crc32_checker_syncfifo_syncfifo_writable = (ethmac_crc32_checker_syncfifo_level != 3'd5);
assign ethmac_crc32_checker_syncfifo_syncfifo_readable = (ethmac_crc32_checker_syncfifo_level != 1'd0);

// synthesis translate_off
reg dummy_d_86;
// synthesis translate_on
always @(*) begin
	clockdomainsrenamer5_next_state <= 2'd0;
	ethmac_crc32_checker_crc_ce <= 1'd0;
	ethmac_crc32_checker_crc_reset <= 1'd0;
	ethmac_crc32_checker_fifo_reset <= 1'd0;
	clockdomainsrenamer5_next_state <= clockdomainsrenamer5_state;
	case (clockdomainsrenamer5_state)
		1'd1: begin
			if ((ethmac_crc32_checker_sink_sink_valid & ethmac_crc32_checker_sink_sink_ready)) begin
				ethmac_crc32_checker_crc_ce <= 1'd1;
				clockdomainsrenamer5_next_state <= 2'd2;
			end
		end
		2'd2: begin
			if ((ethmac_crc32_checker_sink_sink_valid & ethmac_crc32_checker_sink_sink_ready)) begin
				ethmac_crc32_checker_crc_ce <= 1'd1;
				if (ethmac_crc32_checker_sink_sink_last) begin
					clockdomainsrenamer5_next_state <= 1'd0;
				end
			end
		end
		default: begin
			ethmac_crc32_checker_crc_reset <= 1'd1;
			ethmac_crc32_checker_fifo_reset <= 1'd1;
			clockdomainsrenamer5_next_state <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_86 <= dummy_s;
// synthesis translate_on
end
assign ethmac_padding_inserter_counter_done = (ethmac_padding_inserter_counter >= 6'd59);

// synthesis translate_off
reg dummy_d_87;
// synthesis translate_on
always @(*) begin
	ethmac_padding_inserter_source_valid <= 1'd0;
	ethmac_padding_inserter_source_last <= 1'd0;
	ethmac_padding_inserter_source_payload_data <= 8'd0;
	ethmac_padding_inserter_source_payload_last_be <= 1'd0;
	ethmac_padding_inserter_source_payload_error <= 1'd0;
	ethmac_padding_inserter_counter_reset <= 1'd0;
	ethmac_padding_inserter_counter_ce <= 1'd0;
	ethmac_padding_inserter_sink_ready <= 1'd0;
	clockdomainsrenamer6_next_state <= 1'd0;
	clockdomainsrenamer6_next_state <= clockdomainsrenamer6_state;
	case (clockdomainsrenamer6_state)
		1'd1: begin
			ethmac_padding_inserter_source_valid <= 1'd1;
			ethmac_padding_inserter_source_last <= ethmac_padding_inserter_counter_done;
			ethmac_padding_inserter_source_payload_data <= 1'd0;
			if ((ethmac_padding_inserter_source_valid & ethmac_padding_inserter_source_ready)) begin
				ethmac_padding_inserter_counter_ce <= 1'd1;
				if (ethmac_padding_inserter_counter_done) begin
					ethmac_padding_inserter_counter_reset <= 1'd1;
					clockdomainsrenamer6_next_state <= 1'd0;
				end
			end
		end
		default: begin
			ethmac_padding_inserter_source_valid <= ethmac_padding_inserter_sink_valid;
			ethmac_padding_inserter_sink_ready <= ethmac_padding_inserter_source_ready;
			ethmac_padding_inserter_source_last <= ethmac_padding_inserter_sink_last;
			ethmac_padding_inserter_source_payload_data <= ethmac_padding_inserter_sink_payload_data;
			ethmac_padding_inserter_source_payload_last_be <= ethmac_padding_inserter_sink_payload_last_be;
			ethmac_padding_inserter_source_payload_error <= ethmac_padding_inserter_sink_payload_error;
			if ((ethmac_padding_inserter_source_valid & ethmac_padding_inserter_source_ready)) begin
				ethmac_padding_inserter_counter_ce <= 1'd1;
				if (ethmac_padding_inserter_sink_last) begin
					if ((~ethmac_padding_inserter_counter_done)) begin
						ethmac_padding_inserter_source_last <= 1'd0;
						clockdomainsrenamer6_next_state <= 1'd1;
					end else begin
						ethmac_padding_inserter_counter_reset <= 1'd1;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_87 <= dummy_s;
// synthesis translate_on
end
assign ethmac_padding_checker_source_valid = ethmac_padding_checker_sink_valid;
assign ethmac_padding_checker_sink_ready = ethmac_padding_checker_source_ready;
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
assign ethmac_rx_last_be_source_last = ethmac_rx_last_be_sink_last;
assign ethmac_rx_last_be_source_payload_data = ethmac_rx_last_be_sink_payload_data;
assign ethmac_rx_last_be_source_payload_error = ethmac_rx_last_be_sink_payload_error;

// synthesis translate_off
reg dummy_d_88;
// synthesis translate_on
always @(*) begin
	ethmac_rx_last_be_source_payload_last_be <= 1'd0;
	ethmac_rx_last_be_source_payload_last_be <= ethmac_rx_last_be_sink_payload_last_be;
	ethmac_rx_last_be_source_payload_last_be <= ethmac_rx_last_be_sink_last;
// synthesis translate_off
	dummy_d_88 <= dummy_s;
// synthesis translate_on
end
assign ethmac_tx_converter_converter_sink_valid = ethmac_tx_converter_sink_valid;
assign ethmac_tx_converter_converter_sink_last = ethmac_tx_converter_sink_last;
assign ethmac_tx_converter_sink_ready = ethmac_tx_converter_converter_sink_ready;

// synthesis translate_off
reg dummy_d_89;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_89 <= dummy_s;
// synthesis translate_on
end
assign ethmac_tx_converter_source_valid = ethmac_tx_converter_source_source_valid;
assign ethmac_tx_converter_source_last = ethmac_tx_converter_source_source_last;
assign ethmac_tx_converter_source_source_ready = ethmac_tx_converter_source_ready;
assign {ethmac_tx_converter_source_payload_error, ethmac_tx_converter_source_payload_last_be, ethmac_tx_converter_source_payload_data} = ethmac_tx_converter_source_source_payload_data;
assign ethmac_tx_converter_source_source_valid = ethmac_tx_converter_converter_source_valid;
assign ethmac_tx_converter_converter_source_ready = ethmac_tx_converter_source_source_ready;
assign ethmac_tx_converter_source_source_last = ethmac_tx_converter_converter_source_last;
assign ethmac_tx_converter_source_source_payload_data = ethmac_tx_converter_converter_source_payload_data;
assign ethmac_tx_converter_converter_last = (ethmac_tx_converter_converter_mux == 2'd3);
assign ethmac_tx_converter_converter_source_valid = ethmac_tx_converter_converter_sink_valid;
assign ethmac_tx_converter_converter_source_last = (ethmac_tx_converter_converter_sink_last & ethmac_tx_converter_converter_last);
assign ethmac_tx_converter_converter_sink_ready = (ethmac_tx_converter_converter_last & ethmac_tx_converter_converter_source_ready);

// synthesis translate_off
reg dummy_d_90;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_90 <= dummy_s;
// synthesis translate_on
end
assign ethmac_tx_converter_converter_source_payload_valid_token_count = ethmac_tx_converter_converter_last;
assign ethmac_rx_converter_converter_sink_valid = ethmac_rx_converter_sink_valid;
assign ethmac_rx_converter_converter_sink_last = ethmac_rx_converter_sink_last;
assign ethmac_rx_converter_sink_ready = ethmac_rx_converter_converter_sink_ready;
assign ethmac_rx_converter_converter_sink_payload_data = {ethmac_rx_converter_sink_payload_error, ethmac_rx_converter_sink_payload_last_be, ethmac_rx_converter_sink_payload_data};
assign ethmac_rx_converter_source_valid = ethmac_rx_converter_source_source_valid;
assign ethmac_rx_converter_source_last = ethmac_rx_converter_source_source_last;
assign ethmac_rx_converter_source_source_ready = ethmac_rx_converter_source_ready;

// synthesis translate_off
reg dummy_d_91;
// synthesis translate_on
always @(*) begin
	ethmac_rx_converter_source_payload_data <= 32'd0;
	ethmac_rx_converter_source_payload_data[7:0] <= ethmac_rx_converter_source_source_payload_data[7:0];
	ethmac_rx_converter_source_payload_data[15:8] <= ethmac_rx_converter_source_source_payload_data[17:10];
	ethmac_rx_converter_source_payload_data[23:16] <= ethmac_rx_converter_source_source_payload_data[27:20];
	ethmac_rx_converter_source_payload_data[31:24] <= ethmac_rx_converter_source_source_payload_data[37:30];
// synthesis translate_off
	dummy_d_91 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_92;
// synthesis translate_on
always @(*) begin
	ethmac_rx_converter_source_payload_last_be <= 4'd0;
	ethmac_rx_converter_source_payload_last_be[0] <= ethmac_rx_converter_source_source_payload_data[8];
	ethmac_rx_converter_source_payload_last_be[1] <= ethmac_rx_converter_source_source_payload_data[18];
	ethmac_rx_converter_source_payload_last_be[2] <= ethmac_rx_converter_source_source_payload_data[28];
	ethmac_rx_converter_source_payload_last_be[3] <= ethmac_rx_converter_source_source_payload_data[38];
// synthesis translate_off
	dummy_d_92 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_93;
// synthesis translate_on
always @(*) begin
	ethmac_rx_converter_source_payload_error <= 4'd0;
	ethmac_rx_converter_source_payload_error[0] <= ethmac_rx_converter_source_source_payload_data[9];
	ethmac_rx_converter_source_payload_error[1] <= ethmac_rx_converter_source_source_payload_data[19];
	ethmac_rx_converter_source_payload_error[2] <= ethmac_rx_converter_source_source_payload_data[29];
	ethmac_rx_converter_source_payload_error[3] <= ethmac_rx_converter_source_source_payload_data[39];
// synthesis translate_off
	dummy_d_93 <= dummy_s;
// synthesis translate_on
end
assign ethmac_rx_converter_source_source_valid = ethmac_rx_converter_converter_source_valid;
assign ethmac_rx_converter_converter_source_ready = ethmac_rx_converter_source_source_ready;
assign ethmac_rx_converter_source_source_last = ethmac_rx_converter_converter_source_last;
assign ethmac_rx_converter_source_source_payload_data = ethmac_rx_converter_converter_source_payload_data;
assign ethmac_rx_converter_converter_sink_ready = ((~ethmac_rx_converter_converter_strobe_all) | ethmac_rx_converter_converter_source_ready);
assign ethmac_rx_converter_converter_source_valid = ethmac_rx_converter_converter_strobe_all;
assign ethmac_rx_converter_converter_load_part = (ethmac_rx_converter_converter_sink_valid & ethmac_rx_converter_converter_sink_ready);
assign ethmac_tx_cdc_asyncfifo_din = {ethmac_tx_cdc_fifo_in_last, ethmac_tx_cdc_fifo_in_payload_error, ethmac_tx_cdc_fifo_in_payload_last_be, ethmac_tx_cdc_fifo_in_payload_data};
assign {ethmac_tx_cdc_fifo_out_last, ethmac_tx_cdc_fifo_out_payload_error, ethmac_tx_cdc_fifo_out_payload_last_be, ethmac_tx_cdc_fifo_out_payload_data} = ethmac_tx_cdc_asyncfifo_dout;
assign ethmac_tx_cdc_sink_ready = ethmac_tx_cdc_asyncfifo_writable;
assign ethmac_tx_cdc_asyncfifo_we = ethmac_tx_cdc_sink_valid;
assign ethmac_tx_cdc_fifo_in_last = ethmac_tx_cdc_sink_last;
assign ethmac_tx_cdc_fifo_in_payload_data = ethmac_tx_cdc_sink_payload_data;
assign ethmac_tx_cdc_fifo_in_payload_last_be = ethmac_tx_cdc_sink_payload_last_be;
assign ethmac_tx_cdc_fifo_in_payload_error = ethmac_tx_cdc_sink_payload_error;
assign ethmac_tx_cdc_source_valid = ethmac_tx_cdc_asyncfifo_readable;
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

// synthesis translate_off
reg dummy_d_94;
// synthesis translate_on
always @(*) begin
	ethmac_tx_cdc_graycounter0_q_next_binary <= 7'd0;
	if (ethmac_tx_cdc_graycounter0_ce) begin
		ethmac_tx_cdc_graycounter0_q_next_binary <= (ethmac_tx_cdc_graycounter0_q_binary + 1'd1);
	end else begin
		ethmac_tx_cdc_graycounter0_q_next_binary <= ethmac_tx_cdc_graycounter0_q_binary;
	end
// synthesis translate_off
	dummy_d_94 <= dummy_s;
// synthesis translate_on
end
assign ethmac_tx_cdc_graycounter0_q_next = (ethmac_tx_cdc_graycounter0_q_next_binary ^ ethmac_tx_cdc_graycounter0_q_next_binary[6:1]);

// synthesis translate_off
reg dummy_d_95;
// synthesis translate_on
always @(*) begin
	ethmac_tx_cdc_graycounter1_q_next_binary <= 7'd0;
	if (ethmac_tx_cdc_graycounter1_ce) begin
		ethmac_tx_cdc_graycounter1_q_next_binary <= (ethmac_tx_cdc_graycounter1_q_binary + 1'd1);
	end else begin
		ethmac_tx_cdc_graycounter1_q_next_binary <= ethmac_tx_cdc_graycounter1_q_binary;
	end
// synthesis translate_off
	dummy_d_95 <= dummy_s;
// synthesis translate_on
end
assign ethmac_tx_cdc_graycounter1_q_next = (ethmac_tx_cdc_graycounter1_q_next_binary ^ ethmac_tx_cdc_graycounter1_q_next_binary[6:1]);
assign ethmac_rx_cdc_asyncfifo_din = {ethmac_rx_cdc_fifo_in_last, ethmac_rx_cdc_fifo_in_payload_error, ethmac_rx_cdc_fifo_in_payload_last_be, ethmac_rx_cdc_fifo_in_payload_data};
assign {ethmac_rx_cdc_fifo_out_last, ethmac_rx_cdc_fifo_out_payload_error, ethmac_rx_cdc_fifo_out_payload_last_be, ethmac_rx_cdc_fifo_out_payload_data} = ethmac_rx_cdc_asyncfifo_dout;
assign ethmac_rx_cdc_sink_ready = ethmac_rx_cdc_asyncfifo_writable;
assign ethmac_rx_cdc_asyncfifo_we = ethmac_rx_cdc_sink_valid;
assign ethmac_rx_cdc_fifo_in_last = ethmac_rx_cdc_sink_last;
assign ethmac_rx_cdc_fifo_in_payload_data = ethmac_rx_cdc_sink_payload_data;
assign ethmac_rx_cdc_fifo_in_payload_last_be = ethmac_rx_cdc_sink_payload_last_be;
assign ethmac_rx_cdc_fifo_in_payload_error = ethmac_rx_cdc_sink_payload_error;
assign ethmac_rx_cdc_source_valid = ethmac_rx_cdc_asyncfifo_readable;
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

// synthesis translate_off
reg dummy_d_96;
// synthesis translate_on
always @(*) begin
	ethmac_rx_cdc_graycounter0_q_next_binary <= 7'd0;
	if (ethmac_rx_cdc_graycounter0_ce) begin
		ethmac_rx_cdc_graycounter0_q_next_binary <= (ethmac_rx_cdc_graycounter0_q_binary + 1'd1);
	end else begin
		ethmac_rx_cdc_graycounter0_q_next_binary <= ethmac_rx_cdc_graycounter0_q_binary;
	end
// synthesis translate_off
	dummy_d_96 <= dummy_s;
// synthesis translate_on
end
assign ethmac_rx_cdc_graycounter0_q_next = (ethmac_rx_cdc_graycounter0_q_next_binary ^ ethmac_rx_cdc_graycounter0_q_next_binary[6:1]);

// synthesis translate_off
reg dummy_d_97;
// synthesis translate_on
always @(*) begin
	ethmac_rx_cdc_graycounter1_q_next_binary <= 7'd0;
	if (ethmac_rx_cdc_graycounter1_ce) begin
		ethmac_rx_cdc_graycounter1_q_next_binary <= (ethmac_rx_cdc_graycounter1_q_binary + 1'd1);
	end else begin
		ethmac_rx_cdc_graycounter1_q_next_binary <= ethmac_rx_cdc_graycounter1_q_binary;
	end
// synthesis translate_off
	dummy_d_97 <= dummy_s;
// synthesis translate_on
end
assign ethmac_rx_cdc_graycounter1_q_next = (ethmac_rx_cdc_graycounter1_q_next_binary ^ ethmac_rx_cdc_graycounter1_q_next_binary[6:1]);
assign ethmac_tx_converter_sink_valid = ethmac_tx_cdc_source_valid;
assign ethmac_tx_cdc_source_ready = ethmac_tx_converter_sink_ready;
assign ethmac_tx_converter_sink_last = ethmac_tx_cdc_source_last;
assign ethmac_tx_converter_sink_payload_data = ethmac_tx_cdc_source_payload_data;
assign ethmac_tx_converter_sink_payload_last_be = ethmac_tx_cdc_source_payload_last_be;
assign ethmac_tx_converter_sink_payload_error = ethmac_tx_cdc_source_payload_error;
assign ethmac_tx_last_be_sink_valid = ethmac_tx_converter_source_valid;
assign ethmac_tx_converter_source_ready = ethmac_tx_last_be_sink_ready;
assign ethmac_tx_last_be_sink_last = ethmac_tx_converter_source_last;
assign ethmac_tx_last_be_sink_payload_data = ethmac_tx_converter_source_payload_data;
assign ethmac_tx_last_be_sink_payload_last_be = ethmac_tx_converter_source_payload_last_be;
assign ethmac_tx_last_be_sink_payload_error = ethmac_tx_converter_source_payload_error;
assign ethmac_padding_inserter_sink_valid = ethmac_tx_last_be_source_valid;
assign ethmac_tx_last_be_source_ready = ethmac_padding_inserter_sink_ready;
assign ethmac_padding_inserter_sink_last = ethmac_tx_last_be_source_last;
assign ethmac_padding_inserter_sink_payload_data = ethmac_tx_last_be_source_payload_data;
assign ethmac_padding_inserter_sink_payload_last_be = ethmac_tx_last_be_source_payload_last_be;
assign ethmac_padding_inserter_sink_payload_error = ethmac_tx_last_be_source_payload_error;
assign ethmac_crc32_inserter_sink_valid = ethmac_padding_inserter_source_valid;
assign ethmac_padding_inserter_source_ready = ethmac_crc32_inserter_sink_ready;
assign ethmac_crc32_inserter_sink_last = ethmac_padding_inserter_source_last;
assign ethmac_crc32_inserter_sink_payload_data = ethmac_padding_inserter_source_payload_data;
assign ethmac_crc32_inserter_sink_payload_last_be = ethmac_padding_inserter_source_payload_last_be;
assign ethmac_crc32_inserter_sink_payload_error = ethmac_padding_inserter_source_payload_error;
assign ethmac_preamble_inserter_sink_valid = ethmac_crc32_inserter_source_valid;
assign ethmac_crc32_inserter_source_ready = ethmac_preamble_inserter_sink_ready;
assign ethmac_preamble_inserter_sink_last = ethmac_crc32_inserter_source_last;
assign ethmac_preamble_inserter_sink_payload_data = ethmac_crc32_inserter_source_payload_data;
assign ethmac_preamble_inserter_sink_payload_last_be = ethmac_crc32_inserter_source_payload_last_be;
assign ethmac_preamble_inserter_sink_payload_error = ethmac_crc32_inserter_source_payload_error;
assign ethmac_tx_gap_inserter_sink_valid = ethmac_preamble_inserter_source_valid;
assign ethmac_preamble_inserter_source_ready = ethmac_tx_gap_inserter_sink_ready;
assign ethmac_tx_gap_inserter_sink_last = ethmac_preamble_inserter_source_last;
assign ethmac_tx_gap_inserter_sink_payload_data = ethmac_preamble_inserter_source_payload_data;
assign ethmac_tx_gap_inserter_sink_payload_last_be = ethmac_preamble_inserter_source_payload_last_be;
assign ethmac_tx_gap_inserter_sink_payload_error = ethmac_preamble_inserter_source_payload_error;
assign ethphy_sink_valid = ethmac_tx_gap_inserter_source_valid;
assign ethmac_tx_gap_inserter_source_ready = ethphy_sink_ready;
assign ethphy_sink_last = ethmac_tx_gap_inserter_source_last;
assign ethphy_sink_payload_data = ethmac_tx_gap_inserter_source_payload_data;
assign ethphy_sink_payload_last_be = ethmac_tx_gap_inserter_source_payload_last_be;
assign ethphy_sink_payload_error = ethmac_tx_gap_inserter_source_payload_error;
assign ethmac_rx_gap_checker_sink_valid = ethphy_source_valid;
assign ethphy_source_ready = ethmac_rx_gap_checker_sink_ready;
assign ethmac_rx_gap_checker_sink_last = ethphy_source_last;
assign ethmac_rx_gap_checker_sink_payload_data = ethphy_source_payload_data;
assign ethmac_rx_gap_checker_sink_payload_last_be = ethphy_source_payload_last_be;
assign ethmac_rx_gap_checker_sink_payload_error = ethphy_source_payload_error;
assign ethmac_preamble_checker_sink_valid = ethmac_rx_gap_checker_source_valid;
assign ethmac_rx_gap_checker_source_ready = ethmac_preamble_checker_sink_ready;
assign ethmac_preamble_checker_sink_last = ethmac_rx_gap_checker_source_last;
assign ethmac_preamble_checker_sink_payload_data = ethmac_rx_gap_checker_source_payload_data;
assign ethmac_preamble_checker_sink_payload_last_be = ethmac_rx_gap_checker_source_payload_last_be;
assign ethmac_preamble_checker_sink_payload_error = ethmac_rx_gap_checker_source_payload_error;
assign ethmac_crc32_checker_sink_sink_valid = ethmac_preamble_checker_source_valid;
assign ethmac_preamble_checker_source_ready = ethmac_crc32_checker_sink_sink_ready;
assign ethmac_crc32_checker_sink_sink_last = ethmac_preamble_checker_source_last;
assign ethmac_crc32_checker_sink_sink_payload_data = ethmac_preamble_checker_source_payload_data;
assign ethmac_crc32_checker_sink_sink_payload_last_be = ethmac_preamble_checker_source_payload_last_be;
assign ethmac_crc32_checker_sink_sink_payload_error = ethmac_preamble_checker_source_payload_error;
assign ethmac_padding_checker_sink_valid = ethmac_crc32_checker_source_source_valid;
assign ethmac_crc32_checker_source_source_ready = ethmac_padding_checker_sink_ready;
assign ethmac_padding_checker_sink_last = ethmac_crc32_checker_source_source_last;
assign ethmac_padding_checker_sink_payload_data = ethmac_crc32_checker_source_source_payload_data;
assign ethmac_padding_checker_sink_payload_last_be = ethmac_crc32_checker_source_source_payload_last_be;
assign ethmac_padding_checker_sink_payload_error = ethmac_crc32_checker_source_source_payload_error;
assign ethmac_rx_last_be_sink_valid = ethmac_padding_checker_source_valid;
assign ethmac_padding_checker_source_ready = ethmac_rx_last_be_sink_ready;
assign ethmac_rx_last_be_sink_last = ethmac_padding_checker_source_last;
assign ethmac_rx_last_be_sink_payload_data = ethmac_padding_checker_source_payload_data;
assign ethmac_rx_last_be_sink_payload_last_be = ethmac_padding_checker_source_payload_last_be;
assign ethmac_rx_last_be_sink_payload_error = ethmac_padding_checker_source_payload_error;
assign ethmac_rx_converter_sink_valid = ethmac_rx_last_be_source_valid;
assign ethmac_rx_last_be_source_ready = ethmac_rx_converter_sink_ready;
assign ethmac_rx_converter_sink_last = ethmac_rx_last_be_source_last;
assign ethmac_rx_converter_sink_payload_data = ethmac_rx_last_be_source_payload_data;
assign ethmac_rx_converter_sink_payload_last_be = ethmac_rx_last_be_source_payload_last_be;
assign ethmac_rx_converter_sink_payload_error = ethmac_rx_last_be_source_payload_error;
assign ethmac_rx_cdc_sink_valid = ethmac_rx_converter_source_valid;
assign ethmac_rx_converter_source_ready = ethmac_rx_cdc_sink_ready;
assign ethmac_rx_cdc_sink_last = ethmac_rx_converter_source_last;
assign ethmac_rx_cdc_sink_payload_data = ethmac_rx_converter_source_payload_data;
assign ethmac_rx_cdc_sink_payload_last_be = ethmac_rx_converter_source_payload_last_be;
assign ethmac_rx_cdc_sink_payload_error = ethmac_rx_converter_source_payload_error;
assign ethmac_writer_sink_sink_valid = ethmac_sink_valid;
assign ethmac_sink_ready = ethmac_writer_sink_sink_ready;
assign ethmac_writer_sink_sink_last = ethmac_sink_last;
assign ethmac_writer_sink_sink_payload_data = ethmac_sink_payload_data;
assign ethmac_writer_sink_sink_payload_last_be = ethmac_sink_payload_last_be;
assign ethmac_writer_sink_sink_payload_error = ethmac_sink_payload_error;
assign ethmac_source_valid = ethmac_reader_source_source_valid;
assign ethmac_reader_source_source_ready = ethmac_source_ready;
assign ethmac_source_last = ethmac_reader_source_source_last;
assign ethmac_source_payload_data = ethmac_reader_source_source_payload_data;
assign ethmac_source_payload_last_be = ethmac_reader_source_source_payload_last_be;
assign ethmac_source_payload_error = ethmac_reader_source_source_payload_error;

// synthesis translate_off
reg dummy_d_98;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_98 <= dummy_s;
// synthesis translate_on
end
assign ethmac_writer_fifo_sink_payload_slot = ethmac_writer_slot;
assign ethmac_writer_fifo_sink_payload_length = ethmac_writer_counter;
assign ethmac_writer_fifo_source_ready = ethmac_writer_available_clear;
assign ethmac_writer_available_trigger = ethmac_writer_fifo_source_valid;
assign ethmac_writer_slot_status = ethmac_writer_fifo_source_payload_slot;
assign ethmac_writer_length_status = ethmac_writer_fifo_source_payload_length;

// synthesis translate_off
reg dummy_d_99;
// synthesis translate_on
always @(*) begin
	ethmac_writer_memory1_we <= 1'd0;
	ethmac_writer_memory0_adr <= 9'd0;
	ethmac_writer_memory1_dat_w <= 32'd0;
	ethmac_writer_memory0_we <= 1'd0;
	ethmac_writer_memory0_dat_w <= 32'd0;
	ethmac_writer_memory1_adr <= 9'd0;
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
// synthesis translate_off
	dummy_d_99 <= dummy_s;
// synthesis translate_on
end
assign ethmac_writer_status_w = ethmac_writer_available_status;

// synthesis translate_off
reg dummy_d_100;
// synthesis translate_on
always @(*) begin
	ethmac_writer_available_clear <= 1'd0;
	if ((ethmac_writer_pending_re & ethmac_writer_pending_r)) begin
		ethmac_writer_available_clear <= 1'd1;
	end
// synthesis translate_off
	dummy_d_100 <= dummy_s;
// synthesis translate_on
end
assign ethmac_writer_pending_w = ethmac_writer_available_pending;
assign ethmac_writer_irq = (ethmac_writer_pending_w & ethmac_writer_storage);
assign ethmac_writer_available_status = ethmac_writer_available_trigger;
assign ethmac_writer_available_pending = ethmac_writer_available_trigger;
assign ethmac_writer_fifo_syncfifo_din = {ethmac_writer_fifo_fifo_in_last, ethmac_writer_fifo_fifo_in_payload_length, ethmac_writer_fifo_fifo_in_payload_slot};
assign {ethmac_writer_fifo_fifo_out_last, ethmac_writer_fifo_fifo_out_payload_length, ethmac_writer_fifo_fifo_out_payload_slot} = ethmac_writer_fifo_syncfifo_dout;
assign ethmac_writer_fifo_sink_ready = ethmac_writer_fifo_syncfifo_writable;
assign ethmac_writer_fifo_syncfifo_we = ethmac_writer_fifo_sink_valid;
assign ethmac_writer_fifo_fifo_in_last = ethmac_writer_fifo_sink_last;
assign ethmac_writer_fifo_fifo_in_payload_slot = ethmac_writer_fifo_sink_payload_slot;
assign ethmac_writer_fifo_fifo_in_payload_length = ethmac_writer_fifo_sink_payload_length;
assign ethmac_writer_fifo_source_valid = ethmac_writer_fifo_syncfifo_readable;
assign ethmac_writer_fifo_source_last = ethmac_writer_fifo_fifo_out_last;
assign ethmac_writer_fifo_source_payload_slot = ethmac_writer_fifo_fifo_out_payload_slot;
assign ethmac_writer_fifo_source_payload_length = ethmac_writer_fifo_fifo_out_payload_length;
assign ethmac_writer_fifo_syncfifo_re = ethmac_writer_fifo_source_ready;

// synthesis translate_off
reg dummy_d_101;
// synthesis translate_on
always @(*) begin
	ethmac_writer_fifo_wrport_adr <= 1'd0;
	if (ethmac_writer_fifo_replace) begin
		ethmac_writer_fifo_wrport_adr <= (ethmac_writer_fifo_produce - 1'd1);
	end else begin
		ethmac_writer_fifo_wrport_adr <= ethmac_writer_fifo_produce;
	end
// synthesis translate_off
	dummy_d_101 <= dummy_s;
// synthesis translate_on
end
assign ethmac_writer_fifo_wrport_dat_w = ethmac_writer_fifo_syncfifo_din;
assign ethmac_writer_fifo_wrport_we = (ethmac_writer_fifo_syncfifo_we & (ethmac_writer_fifo_syncfifo_writable | ethmac_writer_fifo_replace));
assign ethmac_writer_fifo_do_read = (ethmac_writer_fifo_syncfifo_readable & ethmac_writer_fifo_syncfifo_re);
assign ethmac_writer_fifo_rdport_adr = ethmac_writer_fifo_consume;
assign ethmac_writer_fifo_syncfifo_dout = ethmac_writer_fifo_rdport_dat_r;
assign ethmac_writer_fifo_syncfifo_writable = (ethmac_writer_fifo_level != 2'd2);
assign ethmac_writer_fifo_syncfifo_readable = (ethmac_writer_fifo_level != 1'd0);

// synthesis translate_off
reg dummy_d_102;
// synthesis translate_on
always @(*) begin
	ethmac_writer_ongoing <= 1'd0;
	ethmac_writer_fifo_sink_valid <= 1'd0;
	liteethmacsramwriter_next_state <= 2'd0;
	ethmac_writer_counter_reset <= 1'd0;
	ethmac_writer_counter_ce <= 1'd0;
	ethmac_writer_slot_ce <= 1'd0;
	liteethmacsramwriter_next_state <= liteethmacsramwriter_state;
	case (liteethmacsramwriter_state)
		1'd1: begin
			ethmac_writer_counter_ce <= ethmac_writer_sink_sink_valid;
			ethmac_writer_ongoing <= (ethmac_writer_counter < 11'd1530);
			if ((ethmac_writer_sink_sink_valid & ethmac_writer_sink_sink_last)) begin
				if (((ethmac_writer_sink_sink_payload_error & ethmac_writer_sink_sink_payload_last_be) != 1'd0)) begin
					liteethmacsramwriter_next_state <= 2'd2;
				end else begin
					liteethmacsramwriter_next_state <= 2'd3;
				end
			end
		end
		2'd2: begin
			ethmac_writer_counter_reset <= 1'd1;
			liteethmacsramwriter_next_state <= 1'd0;
		end
		2'd3: begin
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
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_102 <= dummy_s;
// synthesis translate_on
end
assign ethmac_reader_fifo_sink_valid = ethmac_reader_start_re;
assign ethmac_reader_fifo_sink_payload_slot = ethmac_reader_slot_storage;
assign ethmac_reader_fifo_sink_payload_length = ethmac_reader_length_storage;
assign ethmac_reader_ready_status = ethmac_reader_fifo_sink_ready;

// synthesis translate_off
reg dummy_d_103;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_103 <= dummy_s;
// synthesis translate_on
end
assign ethmac_reader_last = (ethmac_reader_counter >= ethmac_reader_fifo_source_payload_length);
assign ethmac_reader_memory0_adr = ethmac_reader_counter[10:2];
assign ethmac_reader_memory1_adr = ethmac_reader_counter[10:2];

// synthesis translate_off
reg dummy_d_104;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_104 <= dummy_s;
// synthesis translate_on
end
assign ethmac_reader_eventmanager_status_w = ethmac_reader_done_status;

// synthesis translate_off
reg dummy_d_105;
// synthesis translate_on
always @(*) begin
	ethmac_reader_done_clear <= 1'd0;
	if ((ethmac_reader_eventmanager_pending_re & ethmac_reader_eventmanager_pending_r)) begin
		ethmac_reader_done_clear <= 1'd1;
	end
// synthesis translate_off
	dummy_d_105 <= dummy_s;
// synthesis translate_on
end
assign ethmac_reader_eventmanager_pending_w = ethmac_reader_done_pending;
assign ethmac_reader_irq = (ethmac_reader_eventmanager_pending_w & ethmac_reader_eventmanager_storage);
assign ethmac_reader_done_status = 1'd0;
assign ethmac_reader_fifo_syncfifo_din = {ethmac_reader_fifo_fifo_in_last, ethmac_reader_fifo_fifo_in_payload_length, ethmac_reader_fifo_fifo_in_payload_slot};
assign {ethmac_reader_fifo_fifo_out_last, ethmac_reader_fifo_fifo_out_payload_length, ethmac_reader_fifo_fifo_out_payload_slot} = ethmac_reader_fifo_syncfifo_dout;
assign ethmac_reader_fifo_sink_ready = ethmac_reader_fifo_syncfifo_writable;
assign ethmac_reader_fifo_syncfifo_we = ethmac_reader_fifo_sink_valid;
assign ethmac_reader_fifo_fifo_in_last = ethmac_reader_fifo_sink_last;
assign ethmac_reader_fifo_fifo_in_payload_slot = ethmac_reader_fifo_sink_payload_slot;
assign ethmac_reader_fifo_fifo_in_payload_length = ethmac_reader_fifo_sink_payload_length;
assign ethmac_reader_fifo_source_valid = ethmac_reader_fifo_syncfifo_readable;
assign ethmac_reader_fifo_source_last = ethmac_reader_fifo_fifo_out_last;
assign ethmac_reader_fifo_source_payload_slot = ethmac_reader_fifo_fifo_out_payload_slot;
assign ethmac_reader_fifo_source_payload_length = ethmac_reader_fifo_fifo_out_payload_length;
assign ethmac_reader_fifo_syncfifo_re = ethmac_reader_fifo_source_ready;

// synthesis translate_off
reg dummy_d_106;
// synthesis translate_on
always @(*) begin
	ethmac_reader_fifo_wrport_adr <= 1'd0;
	if (ethmac_reader_fifo_replace) begin
		ethmac_reader_fifo_wrport_adr <= (ethmac_reader_fifo_produce - 1'd1);
	end else begin
		ethmac_reader_fifo_wrport_adr <= ethmac_reader_fifo_produce;
	end
// synthesis translate_off
	dummy_d_106 <= dummy_s;
// synthesis translate_on
end
assign ethmac_reader_fifo_wrport_dat_w = ethmac_reader_fifo_syncfifo_din;
assign ethmac_reader_fifo_wrport_we = (ethmac_reader_fifo_syncfifo_we & (ethmac_reader_fifo_syncfifo_writable | ethmac_reader_fifo_replace));
assign ethmac_reader_fifo_do_read = (ethmac_reader_fifo_syncfifo_readable & ethmac_reader_fifo_syncfifo_re);
assign ethmac_reader_fifo_rdport_adr = ethmac_reader_fifo_consume;
assign ethmac_reader_fifo_syncfifo_dout = ethmac_reader_fifo_rdport_dat_r;
assign ethmac_reader_fifo_syncfifo_writable = (ethmac_reader_fifo_level != 2'd2);
assign ethmac_reader_fifo_syncfifo_readable = (ethmac_reader_fifo_level != 1'd0);

// synthesis translate_off
reg dummy_d_107;
// synthesis translate_on
always @(*) begin
	ethmac_reader_source_source_valid <= 1'd0;
	ethmac_reader_source_source_last <= 1'd0;
	ethmac_reader_counter_reset <= 1'd0;
	ethmac_reader_counter_ce <= 1'd0;
	liteethmacsramreader_next_state <= 2'd0;
	ethmac_reader_done_trigger <= 1'd0;
	ethmac_reader_fifo_source_ready <= 1'd0;
	liteethmacsramreader_next_state <= liteethmacsramreader_state;
	case (liteethmacsramreader_state)
		1'd1: begin
			ethmac_reader_source_source_valid <= 1'd1;
			ethmac_reader_source_source_last <= ethmac_reader_last;
			if (ethmac_reader_source_source_ready) begin
				ethmac_reader_counter_ce <= 1'd1;
				if (ethmac_reader_last) begin
					liteethmacsramreader_next_state <= 2'd2;
				end
			end
		end
		2'd2: begin
			ethmac_reader_fifo_source_ready <= 1'd1;
			ethmac_reader_done_trigger <= 1'd1;
			ethmac_reader_counter_reset <= 1'd1;
			liteethmacsramreader_next_state <= 1'd0;
		end
		default: begin
			if (ethmac_reader_fifo_source_valid) begin
				ethmac_reader_counter_ce <= 1'd1;
				liteethmacsramreader_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_107 <= dummy_s;
// synthesis translate_on
end
assign ethmac_ev_irq = (ethmac_writer_irq | ethmac_reader_irq);
assign ethmac_sram0_adr0 = ethmac_sram0_bus_adr0[8:0];
assign ethmac_sram0_bus_dat_r0 = ethmac_sram0_dat_r0;
assign ethmac_sram1_adr0 = ethmac_sram1_bus_adr0[8:0];
assign ethmac_sram1_bus_dat_r0 = ethmac_sram1_dat_r0;

// synthesis translate_off
reg dummy_d_108;
// synthesis translate_on
always @(*) begin
	ethmac_sram0_we <= 4'd0;
	ethmac_sram0_we[0] <= (((ethmac_sram0_bus_cyc1 & ethmac_sram0_bus_stb1) & ethmac_sram0_bus_we1) & ethmac_sram0_bus_sel1[0]);
	ethmac_sram0_we[1] <= (((ethmac_sram0_bus_cyc1 & ethmac_sram0_bus_stb1) & ethmac_sram0_bus_we1) & ethmac_sram0_bus_sel1[1]);
	ethmac_sram0_we[2] <= (((ethmac_sram0_bus_cyc1 & ethmac_sram0_bus_stb1) & ethmac_sram0_bus_we1) & ethmac_sram0_bus_sel1[2]);
	ethmac_sram0_we[3] <= (((ethmac_sram0_bus_cyc1 & ethmac_sram0_bus_stb1) & ethmac_sram0_bus_we1) & ethmac_sram0_bus_sel1[3]);
// synthesis translate_off
	dummy_d_108 <= dummy_s;
// synthesis translate_on
end
assign ethmac_sram0_adr1 = ethmac_sram0_bus_adr1[8:0];
assign ethmac_sram0_bus_dat_r1 = ethmac_sram0_dat_r1;
assign ethmac_sram0_dat_w = ethmac_sram0_bus_dat_w1;

// synthesis translate_off
reg dummy_d_109;
// synthesis translate_on
always @(*) begin
	ethmac_sram1_we <= 4'd0;
	ethmac_sram1_we[0] <= (((ethmac_sram1_bus_cyc1 & ethmac_sram1_bus_stb1) & ethmac_sram1_bus_we1) & ethmac_sram1_bus_sel1[0]);
	ethmac_sram1_we[1] <= (((ethmac_sram1_bus_cyc1 & ethmac_sram1_bus_stb1) & ethmac_sram1_bus_we1) & ethmac_sram1_bus_sel1[1]);
	ethmac_sram1_we[2] <= (((ethmac_sram1_bus_cyc1 & ethmac_sram1_bus_stb1) & ethmac_sram1_bus_we1) & ethmac_sram1_bus_sel1[2]);
	ethmac_sram1_we[3] <= (((ethmac_sram1_bus_cyc1 & ethmac_sram1_bus_stb1) & ethmac_sram1_bus_we1) & ethmac_sram1_bus_sel1[3]);
// synthesis translate_off
	dummy_d_109 <= dummy_s;
// synthesis translate_on
end
assign ethmac_sram1_adr1 = ethmac_sram1_bus_adr1[8:0];
assign ethmac_sram1_bus_dat_r1 = ethmac_sram1_dat_r1;
assign ethmac_sram1_dat_w = ethmac_sram1_bus_dat_w1;

// synthesis translate_off
reg dummy_d_110;
// synthesis translate_on
always @(*) begin
	ethmac_slave_sel <= 4'd0;
	ethmac_slave_sel[0] <= (ethmac_bus_adr[10:9] == 1'd0);
	ethmac_slave_sel[1] <= (ethmac_bus_adr[10:9] == 1'd1);
	ethmac_slave_sel[2] <= (ethmac_bus_adr[10:9] == 2'd2);
	ethmac_slave_sel[3] <= (ethmac_bus_adr[10:9] == 2'd3);
// synthesis translate_off
	dummy_d_110 <= dummy_s;
// synthesis translate_on
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
assign generator_reset_sync_i = generator_reset_re;
assign generator_core_reset = generator_reset_sync_o;
assign generator_start_sync_i = generator_start_re;
assign generator_core_start = generator_start_sync_o;
assign generator_done_sync_i = generator_core_done;
assign generator_status = generator_done_sync_o;
assign generator_base_sync_i = generator_base_storage;
assign generator_core_base = generator_base_sync_o;
assign generator_length_sync_i = generator_length_storage;
assign generator_core_length = generator_length_sync_o;
assign generator_core_sink_sink_payload_address = (generator_core_base + generator_core_cmd_counter);
assign generator_core_sink_sink_payload_data = generator_core_o;
assign litedramport0_cmd_payload_we1 = 1'd1;
assign litedramport0_cmd_valid1 = (generator_core_fifo_sink_ready & generator_core_sink_sink_valid);
assign litedramport0_cmd_payload_adr1 = generator_core_sink_sink_payload_address;
assign generator_core_sink_sink_ready = (generator_core_fifo_sink_ready & litedramport0_cmd_ready1);
assign generator_core_fifo_sink_valid = (generator_core_sink_sink_valid & litedramport0_cmd_ready1);
assign generator_core_fifo_sink_payload_data = generator_core_sink_sink_payload_data;
assign litedramport0_wdata_valid1 = generator_core_fifo_source_valid;
assign generator_core_fifo_source_ready = litedramport0_wdata_ready1;
assign litedramport0_wdata_payload_we1 = 4'd15;
assign litedramport0_wdata_payload_data1 = generator_core_fifo_source_payload_data;
assign generator_core_fifo_syncfifo_din = {generator_core_fifo_fifo_in_last, generator_core_fifo_fifo_in_payload_data};
assign {generator_core_fifo_fifo_out_last, generator_core_fifo_fifo_out_payload_data} = generator_core_fifo_syncfifo_dout;
assign generator_core_fifo_sink_ready = generator_core_fifo_syncfifo_writable;
assign generator_core_fifo_syncfifo_we = generator_core_fifo_sink_valid;
assign generator_core_fifo_fifo_in_last = generator_core_fifo_sink_last;
assign generator_core_fifo_fifo_in_payload_data = generator_core_fifo_sink_payload_data;
assign generator_core_fifo_source_valid = generator_core_fifo_syncfifo_readable;
assign generator_core_fifo_source_last = generator_core_fifo_fifo_out_last;
assign generator_core_fifo_source_payload_data = generator_core_fifo_fifo_out_payload_data;
assign generator_core_fifo_syncfifo_re = generator_core_fifo_source_ready;

// synthesis translate_off
reg dummy_d_111;
// synthesis translate_on
always @(*) begin
	generator_core_fifo_wrport_adr <= 4'd0;
	if (generator_core_fifo_replace) begin
		generator_core_fifo_wrport_adr <= (generator_core_fifo_produce - 1'd1);
	end else begin
		generator_core_fifo_wrport_adr <= generator_core_fifo_produce;
	end
// synthesis translate_off
	dummy_d_111 <= dummy_s;
// synthesis translate_on
end
assign generator_core_fifo_wrport_dat_w = generator_core_fifo_syncfifo_din;
assign generator_core_fifo_wrport_we = (generator_core_fifo_syncfifo_we & (generator_core_fifo_syncfifo_writable | generator_core_fifo_replace));
assign generator_core_fifo_do_read = (generator_core_fifo_syncfifo_readable & generator_core_fifo_syncfifo_re);
assign generator_core_fifo_rdport_adr = generator_core_fifo_consume;
assign generator_core_fifo_syncfifo_dout = generator_core_fifo_rdport_dat_r;
assign generator_core_fifo_syncfifo_writable = (generator_core_fifo_level != 5'd16);
assign generator_core_fifo_syncfifo_readable = (generator_core_fifo_level != 1'd0);

// synthesis translate_off
reg dummy_d_112;
// synthesis translate_on
always @(*) begin
	litedrambistgenerator_next_state <= 2'd0;
	generator_core_cmd_counter_litedrambistgenerator_next_value <= 26'd0;
	generator_core_cmd_counter_litedrambistgenerator_next_value_ce <= 1'd0;
	generator_core_done <= 1'd0;
	generator_core_ce <= 1'd0;
	generator_core_sink_sink_valid <= 1'd0;
	litedrambistgenerator_next_state <= litedrambistgenerator_state;
	case (litedrambistgenerator_state)
		1'd1: begin
			generator_core_sink_sink_valid <= 1'd1;
			if (generator_core_sink_sink_ready) begin
				generator_core_ce <= 1'd1;
				generator_core_cmd_counter_litedrambistgenerator_next_value <= (generator_core_cmd_counter + 1'd1);
				generator_core_cmd_counter_litedrambistgenerator_next_value_ce <= 1'd1;
				if ((generator_core_cmd_counter == (generator_core_length - 1'd1))) begin
					litedrambistgenerator_next_state <= 2'd2;
				end
			end
		end
		2'd2: begin
			generator_core_done <= 1'd1;
		end
		default: begin
			if (generator_core_start) begin
				generator_core_cmd_counter_litedrambistgenerator_next_value <= 1'd0;
				generator_core_cmd_counter_litedrambistgenerator_next_value_ce <= 1'd1;
				litedrambistgenerator_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_112 <= dummy_s;
// synthesis translate_on
end
assign generator_reset_sync_o = (generator_reset_sync_toggle_o ^ generator_reset_sync_toggle_o_r);
assign generator_start_sync_o = (generator_start_sync_toggle_o ^ generator_start_sync_toggle_o_r);
assign generator_base_sync_wait = (~generator_base_sync_ping_i);
assign generator_base_sync_ping_i = ((generator_base_sync_starter | generator_base_sync_pong_o) | generator_base_sync_done);
assign generator_base_sync_pong_i = generator_base_sync_ping_i;
assign generator_base_sync_ping_o = (generator_base_sync_ping_toggle_o ^ generator_base_sync_ping_toggle_o_r);
assign generator_base_sync_pong_o = (generator_base_sync_pong_toggle_o ^ generator_base_sync_pong_toggle_o_r);
assign generator_base_sync_done = (generator_base_sync_count == 1'd0);
assign generator_length_sync_wait = (~generator_length_sync_ping_i);
assign generator_length_sync_ping_i = ((generator_length_sync_starter | generator_length_sync_pong_o) | generator_length_sync_done);
assign generator_length_sync_pong_i = generator_length_sync_ping_i;
assign generator_length_sync_ping_o = (generator_length_sync_ping_toggle_o ^ generator_length_sync_ping_toggle_o_r);
assign generator_length_sync_pong_o = (generator_length_sync_pong_toggle_o ^ generator_length_sync_pong_toggle_o_r);
assign generator_length_sync_done = (generator_length_sync_count == 1'd0);
assign checker_reset_sync_i = checker_reset_re;
assign checker_core_reset = checker_reset_sync_o;
assign checker_start_sync_i = checker_start_re;
assign checker_core_start = checker_start_sync_o;
assign checker_done_sync_i = checker_core_done;
assign checker_done_status = checker_done_sync_o;
assign checker_base_sync_i = checker_base_storage;
assign checker_core_base = checker_base_sync_o;
assign checker_length_sync_i = checker_length_storage;
assign checker_core_length = checker_length_sync_o;
assign checker_err_count_sync_i = checker_core_err_count;
assign checker_err_count_status = checker_err_count_sync_o;
assign checker_core_sink_sink_payload_address = (checker_core_base + checker_core_cmd_counter);
assign checker_core_done = (checker_core_is_ongoing0 & checker_core_is_ongoing1);
assign litedramport1_cmd_payload_we1 = 1'd0;
assign litedramport1_cmd_valid1 = (checker_core_sink_sink_valid & checker_core_request_enable);
assign litedramport1_cmd_payload_adr1 = checker_core_sink_sink_payload_address;
assign checker_core_sink_sink_ready = (litedramport1_cmd_ready1 & checker_core_request_enable);
assign checker_core_request_issued = (litedramport1_cmd_valid1 & litedramport1_cmd_ready1);
assign checker_core_request_enable = (checker_core_rsv_level != 5'd16);
assign checker_core_fifo_sink_valid = litedramport1_rdata_valid1;
assign litedramport1_rdata_ready1 = checker_core_fifo_sink_ready;
assign checker_core_fifo_sink_last = litedramport1_rdata_last1;
assign checker_core_fifo_sink_payload_data = litedramport1_rdata_payload_data1;
assign checker_core_source_source_valid = checker_core_fifo_source_valid;
assign checker_core_fifo_source_ready = checker_core_source_source_ready;
assign checker_core_source_source_last = checker_core_fifo_source_last;
assign checker_core_source_source_payload_data = checker_core_fifo_source_payload_data;
assign checker_core_data_dequeued = (checker_core_source_source_valid & checker_core_source_source_ready);
assign checker_core_fifo_syncfifo_din = {checker_core_fifo_fifo_in_last, checker_core_fifo_fifo_in_payload_data};
assign {checker_core_fifo_fifo_out_last, checker_core_fifo_fifo_out_payload_data} = checker_core_fifo_syncfifo_dout;
assign checker_core_fifo_sink_ready = checker_core_fifo_syncfifo_writable;
assign checker_core_fifo_syncfifo_we = checker_core_fifo_sink_valid;
assign checker_core_fifo_fifo_in_last = checker_core_fifo_sink_last;
assign checker_core_fifo_fifo_in_payload_data = checker_core_fifo_sink_payload_data;
assign checker_core_fifo_source_valid = checker_core_fifo_syncfifo_readable;
assign checker_core_fifo_source_last = checker_core_fifo_fifo_out_last;
assign checker_core_fifo_source_payload_data = checker_core_fifo_fifo_out_payload_data;
assign checker_core_fifo_syncfifo_re = checker_core_fifo_source_ready;

// synthesis translate_off
reg dummy_d_113;
// synthesis translate_on
always @(*) begin
	checker_core_fifo_wrport_adr <= 4'd0;
	if (checker_core_fifo_replace) begin
		checker_core_fifo_wrport_adr <= (checker_core_fifo_produce - 1'd1);
	end else begin
		checker_core_fifo_wrport_adr <= checker_core_fifo_produce;
	end
// synthesis translate_off
	dummy_d_113 <= dummy_s;
// synthesis translate_on
end
assign checker_core_fifo_wrport_dat_w = checker_core_fifo_syncfifo_din;
assign checker_core_fifo_wrport_we = (checker_core_fifo_syncfifo_we & (checker_core_fifo_syncfifo_writable | checker_core_fifo_replace));
assign checker_core_fifo_do_read = (checker_core_fifo_syncfifo_readable & checker_core_fifo_syncfifo_re);
assign checker_core_fifo_rdport_adr = checker_core_fifo_consume;
assign checker_core_fifo_syncfifo_dout = checker_core_fifo_rdport_dat_r;
assign checker_core_fifo_syncfifo_writable = (checker_core_fifo_level != 5'd16);
assign checker_core_fifo_syncfifo_readable = (checker_core_fifo_level != 1'd0);

// synthesis translate_off
reg dummy_d_114;
// synthesis translate_on
always @(*) begin
	checker_core_is_ongoing0 <= 1'd0;
	fsm0_next_state <= 2'd0;
	checker_core_cmd_counter_fsm0_next_value <= 26'd0;
	checker_core_sink_sink_valid <= 1'd0;
	checker_core_cmd_counter_fsm0_next_value_ce <= 1'd0;
	fsm0_next_state <= fsm0_state;
	case (fsm0_state)
		1'd1: begin
			checker_core_sink_sink_valid <= 1'd1;
			if (checker_core_sink_sink_ready) begin
				checker_core_cmd_counter_fsm0_next_value <= (checker_core_cmd_counter + 1'd1);
				checker_core_cmd_counter_fsm0_next_value_ce <= 1'd1;
				if ((checker_core_cmd_counter == (checker_core_length - 1'd1))) begin
					fsm0_next_state <= 2'd2;
				end
			end
		end
		2'd2: begin
			checker_core_is_ongoing0 <= 1'd1;
		end
		default: begin
			if (checker_core_start) begin
				checker_core_cmd_counter_fsm0_next_value <= 1'd0;
				checker_core_cmd_counter_fsm0_next_value_ce <= 1'd1;
				fsm0_next_state <= 1'd1;
			end
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
	checker_core_source_source_ready <= 1'd0;
	checker_core_err_count_fsm1_next_value1 <= 32'd0;
	checker_core_err_count_fsm1_next_value_ce1 <= 1'd0;
	checker_core_is_ongoing1 <= 1'd0;
	checker_core_ce <= 1'd0;
	fsm1_next_state <= 2'd0;
	checker_core_data_counter_fsm1_next_value0 <= 26'd0;
	checker_core_data_counter_fsm1_next_value_ce0 <= 1'd0;
	fsm1_next_state <= fsm1_state;
	case (fsm1_state)
		1'd1: begin
			checker_core_source_source_ready <= 1'd1;
			if (checker_core_source_source_valid) begin
				checker_core_ce <= 1'd1;
				checker_core_data_counter_fsm1_next_value0 <= (checker_core_data_counter + 1'd1);
				checker_core_data_counter_fsm1_next_value_ce0 <= 1'd1;
				if ((checker_core_source_source_payload_data != checker_core_o)) begin
					checker_core_err_count_fsm1_next_value1 <= (checker_core_err_count + 1'd1);
					checker_core_err_count_fsm1_next_value_ce1 <= 1'd1;
				end
				if ((checker_core_data_counter == (checker_core_length - 1'd1))) begin
					fsm1_next_state <= 2'd2;
				end
			end
		end
		2'd2: begin
			checker_core_is_ongoing1 <= 1'd1;
		end
		default: begin
			if (checker_core_start) begin
				checker_core_data_counter_fsm1_next_value0 <= 1'd0;
				checker_core_data_counter_fsm1_next_value_ce0 <= 1'd1;
				checker_core_err_count_fsm1_next_value1 <= 1'd0;
				checker_core_err_count_fsm1_next_value_ce1 <= 1'd1;
				fsm1_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_115 <= dummy_s;
// synthesis translate_on
end
assign checker_reset_sync_o = (checker_reset_sync_toggle_o ^ checker_reset_sync_toggle_o_r);
assign checker_start_sync_o = (checker_start_sync_toggle_o ^ checker_start_sync_toggle_o_r);
assign checker_base_sync_wait = (~checker_base_sync_ping_i);
assign checker_base_sync_ping_i = ((checker_base_sync_starter | checker_base_sync_pong_o) | checker_base_sync_done);
assign checker_base_sync_pong_i = checker_base_sync_ping_i;
assign checker_base_sync_ping_o = (checker_base_sync_ping_toggle_o ^ checker_base_sync_ping_toggle_o_r);
assign checker_base_sync_pong_o = (checker_base_sync_pong_toggle_o ^ checker_base_sync_pong_toggle_o_r);
assign checker_base_sync_done = (checker_base_sync_count == 1'd0);
assign checker_length_sync_wait = (~checker_length_sync_ping_i);
assign checker_length_sync_ping_i = ((checker_length_sync_starter | checker_length_sync_pong_o) | checker_length_sync_done);
assign checker_length_sync_pong_i = checker_length_sync_ping_i;
assign checker_length_sync_ping_o = (checker_length_sync_ping_toggle_o ^ checker_length_sync_ping_toggle_o_r);
assign checker_length_sync_pong_o = (checker_length_sync_pong_toggle_o ^ checker_length_sync_pong_toggle_o_r);
assign checker_length_sync_done = (checker_length_sync_count == 1'd0);
assign checker_err_count_sync_wait = (~checker_err_count_sync_ping_i);
assign checker_err_count_sync_ping_i = ((checker_err_count_sync_starter | checker_err_count_sync_pong_o) | checker_err_count_sync_done);
assign checker_err_count_sync_pong_i = checker_err_count_sync_ping_i;
assign checker_err_count_sync_ping_o = (checker_err_count_sync_ping_toggle_o ^ checker_err_count_sync_ping_toggle_o_r);
assign checker_err_count_sync_pong_o = (checker_err_count_sync_pong_toggle_o ^ checker_err_count_sync_pong_toggle_o_r);
assign checker_err_count_sync_done = (checker_err_count_sync_count == 1'd0);
assign data_error = (checker_core_source_source_valid & (data_actual != data_expected));
assign data_address = (checker_core_base + checker_core_data_counter);
assign data_actual = checker_core_source_source_payload_data;
assign data_expected = checker_core_o;
assign frontend_sink_sink_valid = 1'd1;
assign frontend_sink_sink_payload_data = {data_actual, data_expected, data_address, data_error};
assign storage_sink_sink_valid = frontend_source_source_valid;
assign frontend_source_source_ready = storage_sink_sink_ready;
assign storage_sink_sink_last = frontend_source_source_last;
assign storage_sink_sink_payload_data = frontend_source_source_payload_data;
assign storage_sink_sink_payload_hit = frontend_source_source_payload_hit;
assign frontend_buffer_pipe_ce = (frontend_buffer_source_ready | (~frontend_buffer_valid_n));
assign frontend_buffer_sink_ready = frontend_buffer_pipe_ce;
assign frontend_buffer_source_valid = frontend_buffer_valid_n;
assign frontend_buffer_busy = (1'd0 | frontend_buffer_valid_n);
assign frontend_buffer_source_last = frontend_buffer_last_n;
assign frontend_trigger_source_valid = frontend_trigger_sink_valid;
assign frontend_trigger_sink_ready = frontend_trigger_source_ready;
assign frontend_trigger_source_last = frontend_trigger_sink_last;
assign frontend_trigger_source_payload_data = frontend_trigger_sink_payload_data;

// synthesis translate_off
reg dummy_d_116;
// synthesis translate_on
always @(*) begin
	frontend_trigger_source_payload_hit <= 1'd0;
	frontend_trigger_source_payload_hit <= frontend_trigger_sink_payload_hit;
	frontend_trigger_source_payload_hit <= ((frontend_trigger_sink_payload_data & frontend_trigger_mask) == frontend_trigger_value);
// synthesis translate_off
	dummy_d_116 <= dummy_s;
// synthesis translate_on
end
assign frontend_subsampler_done = (frontend_subsampler_counter == frontend_subsampler_value);
assign frontend_subsampler_sink_ready = frontend_subsampler_source_ready;
assign frontend_subsampler_source_last = frontend_subsampler_sink_last;
assign frontend_subsampler_source_payload_data = frontend_subsampler_sink_payload_data;
assign frontend_subsampler_source_payload_hit = frontend_subsampler_sink_payload_hit;
assign frontend_subsampler_source_valid = (frontend_subsampler_sink_valid & frontend_subsampler_done);
assign frontend_strideconverter_converter_sink_valid = frontend_strideconverter_sink_valid;
assign frontend_strideconverter_converter_sink_last = frontend_strideconverter_sink_last;
assign frontend_strideconverter_sink_ready = frontend_strideconverter_converter_sink_ready;
assign frontend_strideconverter_converter_sink_payload_data = {frontend_strideconverter_sink_payload_hit, frontend_strideconverter_sink_payload_data};
assign frontend_strideconverter_source_valid = frontend_strideconverter_source_source_valid;
assign frontend_strideconverter_source_last = frontend_strideconverter_source_source_last;
assign frontend_strideconverter_source_source_ready = frontend_strideconverter_source_ready;
assign {frontend_strideconverter_source_payload_hit, frontend_strideconverter_source_payload_data} = frontend_strideconverter_source_source_payload_data;
assign frontend_strideconverter_source_source_valid = frontend_strideconverter_converter_source_valid;
assign frontend_strideconverter_converter_source_ready = frontend_strideconverter_source_source_ready;
assign frontend_strideconverter_source_source_last = frontend_strideconverter_converter_source_last;
assign frontend_strideconverter_source_source_payload_data = frontend_strideconverter_converter_source_payload_data;
assign frontend_strideconverter_converter_source_valid = frontend_strideconverter_converter_sink_valid;
assign frontend_strideconverter_converter_sink_ready = frontend_strideconverter_converter_source_ready;
assign frontend_strideconverter_converter_source_last = frontend_strideconverter_converter_sink_last;
assign frontend_strideconverter_converter_source_payload_data = frontend_strideconverter_converter_sink_payload_data;
assign frontend_strideconverter_converter_source_payload_valid_token_count = 1'd1;
assign frontend_asyncfifo_asyncfifo_din = {frontend_asyncfifo_fifo_in_last, frontend_asyncfifo_fifo_in_payload_hit, frontend_asyncfifo_fifo_in_payload_data};
assign {frontend_asyncfifo_fifo_out_last, frontend_asyncfifo_fifo_out_payload_hit, frontend_asyncfifo_fifo_out_payload_data} = frontend_asyncfifo_asyncfifo_dout;
assign frontend_asyncfifo_sink_ready = frontend_asyncfifo_asyncfifo_writable;
assign frontend_asyncfifo_asyncfifo_we = frontend_asyncfifo_sink_valid;
assign frontend_asyncfifo_fifo_in_last = frontend_asyncfifo_sink_last;
assign frontend_asyncfifo_fifo_in_payload_data = frontend_asyncfifo_sink_payload_data;
assign frontend_asyncfifo_fifo_in_payload_hit = frontend_asyncfifo_sink_payload_hit;
assign frontend_asyncfifo_source_valid = frontend_asyncfifo_asyncfifo_readable;
assign frontend_asyncfifo_source_last = frontend_asyncfifo_fifo_out_last;
assign frontend_asyncfifo_source_payload_data = frontend_asyncfifo_fifo_out_payload_data;
assign frontend_asyncfifo_source_payload_hit = frontend_asyncfifo_fifo_out_payload_hit;
assign frontend_asyncfifo_asyncfifo_re = frontend_asyncfifo_source_ready;
assign frontend_asyncfifo_graycounter0_ce = (frontend_asyncfifo_asyncfifo_writable & frontend_asyncfifo_asyncfifo_we);
assign frontend_asyncfifo_graycounter1_ce = (frontend_asyncfifo_asyncfifo_readable & frontend_asyncfifo_asyncfifo_re);
assign frontend_asyncfifo_asyncfifo_writable = (((frontend_asyncfifo_graycounter0_q[3] == frontend_asyncfifo_consume_wdomain[3]) | (frontend_asyncfifo_graycounter0_q[2] == frontend_asyncfifo_consume_wdomain[2])) | (frontend_asyncfifo_graycounter0_q[1:0] != frontend_asyncfifo_consume_wdomain[1:0]));
assign frontend_asyncfifo_asyncfifo_readable = (frontend_asyncfifo_graycounter1_q != frontend_asyncfifo_produce_rdomain);
assign frontend_asyncfifo_wrport_adr = frontend_asyncfifo_graycounter0_q_binary[2:0];
assign frontend_asyncfifo_wrport_dat_w = frontend_asyncfifo_asyncfifo_din;
assign frontend_asyncfifo_wrport_we = frontend_asyncfifo_graycounter0_ce;
assign frontend_asyncfifo_rdport_adr = frontend_asyncfifo_graycounter1_q_next_binary[2:0];
assign frontend_asyncfifo_asyncfifo_dout = frontend_asyncfifo_rdport_dat_r;

// synthesis translate_off
reg dummy_d_117;
// synthesis translate_on
always @(*) begin
	frontend_asyncfifo_graycounter0_q_next_binary <= 4'd0;
	if (frontend_asyncfifo_graycounter0_ce) begin
		frontend_asyncfifo_graycounter0_q_next_binary <= (frontend_asyncfifo_graycounter0_q_binary + 1'd1);
	end else begin
		frontend_asyncfifo_graycounter0_q_next_binary <= frontend_asyncfifo_graycounter0_q_binary;
	end
// synthesis translate_off
	dummy_d_117 <= dummy_s;
// synthesis translate_on
end
assign frontend_asyncfifo_graycounter0_q_next = (frontend_asyncfifo_graycounter0_q_next_binary ^ frontend_asyncfifo_graycounter0_q_next_binary[3:1]);

// synthesis translate_off
reg dummy_d_118;
// synthesis translate_on
always @(*) begin
	frontend_asyncfifo_graycounter1_q_next_binary <= 4'd0;
	if (frontend_asyncfifo_graycounter1_ce) begin
		frontend_asyncfifo_graycounter1_q_next_binary <= (frontend_asyncfifo_graycounter1_q_binary + 1'd1);
	end else begin
		frontend_asyncfifo_graycounter1_q_next_binary <= frontend_asyncfifo_graycounter1_q_binary;
	end
// synthesis translate_off
	dummy_d_118 <= dummy_s;
// synthesis translate_on
end
assign frontend_asyncfifo_graycounter1_q_next = (frontend_asyncfifo_graycounter1_q_next_binary ^ frontend_asyncfifo_graycounter1_q_next_binary[3:1]);
assign frontend_buffer_sink_valid = frontend_sink_sink_valid;
assign frontend_sink_sink_ready = frontend_buffer_sink_ready;
assign frontend_buffer_sink_last = frontend_sink_sink_last;
assign frontend_buffer_sink_payload_data = frontend_sink_sink_payload_data;
assign frontend_buffer_sink_payload_hit = frontend_sink_sink_payload_hit;
assign frontend_trigger_sink_valid = frontend_buffer_source_valid;
assign frontend_buffer_source_ready = frontend_trigger_sink_ready;
assign frontend_trigger_sink_last = frontend_buffer_source_last;
assign frontend_trigger_sink_payload_data = frontend_buffer_source_payload_data;
assign frontend_trigger_sink_payload_hit = frontend_buffer_source_payload_hit;
assign frontend_subsampler_sink_valid = frontend_trigger_source_valid;
assign frontend_trigger_source_ready = frontend_subsampler_sink_ready;
assign frontend_subsampler_sink_last = frontend_trigger_source_last;
assign frontend_subsampler_sink_payload_data = frontend_trigger_source_payload_data;
assign frontend_subsampler_sink_payload_hit = frontend_trigger_source_payload_hit;
assign frontend_strideconverter_sink_valid = frontend_subsampler_source_valid;
assign frontend_subsampler_source_ready = frontend_strideconverter_sink_ready;
assign frontend_strideconverter_sink_last = frontend_subsampler_source_last;
assign frontend_strideconverter_sink_payload_data = frontend_subsampler_source_payload_data;
assign frontend_strideconverter_sink_payload_hit = frontend_subsampler_source_payload_hit;
assign frontend_asyncfifo_sink_valid = frontend_strideconverter_source_valid;
assign frontend_strideconverter_source_ready = frontend_asyncfifo_sink_ready;
assign frontend_asyncfifo_sink_last = frontend_strideconverter_source_last;
assign frontend_asyncfifo_sink_payload_data = frontend_strideconverter_source_payload_data;
assign frontend_asyncfifo_sink_payload_hit = frontend_strideconverter_source_payload_hit;
assign frontend_source_source_valid = frontend_asyncfifo_source_valid;
assign frontend_asyncfifo_source_ready = frontend_source_source_ready;
assign frontend_source_source_last = frontend_asyncfifo_source_last;
assign frontend_source_source_payload_data = frontend_asyncfifo_source_payload_data;
assign frontend_source_source_payload_hit = frontend_asyncfifo_source_payload_hit;
assign storage_mem_valid_status = storage_mem_source_valid;
assign storage_mem_data_status = storage_mem_source_payload_data;
assign storage_mem_syncfifo_din = {storage_mem_fifo_in_last, storage_mem_fifo_in_payload_data};
assign {storage_mem_fifo_out_last, storage_mem_fifo_out_payload_data} = storage_mem_syncfifo_dout;
assign storage_mem_sink_ready = storage_mem_syncfifo_writable;
assign storage_mem_syncfifo_we = storage_mem_sink_valid;
assign storage_mem_fifo_in_last = storage_mem_sink_last;
assign storage_mem_fifo_in_payload_data = storage_mem_sink_payload_data;
assign storage_mem_source_valid = storage_mem_readable;
assign storage_mem_source_last = storage_mem_fifo_out_last;
assign storage_mem_source_payload_data = storage_mem_fifo_out_payload_data;
assign storage_mem_re = storage_mem_source_ready;
assign storage_mem_syncfifo_re = (storage_mem_syncfifo_readable & ((~storage_mem_readable) | storage_mem_re));
assign storage_mem_level1 = (storage_mem_level0 + storage_mem_readable);

// synthesis translate_off
reg dummy_d_119;
// synthesis translate_on
always @(*) begin
	storage_mem_wrport_adr <= 10'd0;
	if (storage_mem_replace) begin
		storage_mem_wrport_adr <= (storage_mem_produce - 1'd1);
	end else begin
		storage_mem_wrport_adr <= storage_mem_produce;
	end
// synthesis translate_off
	dummy_d_119 <= dummy_s;
// synthesis translate_on
end
assign storage_mem_wrport_dat_w = storage_mem_syncfifo_din;
assign storage_mem_wrport_we = (storage_mem_syncfifo_we & (storage_mem_syncfifo_writable | storage_mem_replace));
assign storage_mem_do_read = (storage_mem_syncfifo_readable & storage_mem_syncfifo_re);
assign storage_mem_rdport_adr = storage_mem_consume;
assign storage_mem_syncfifo_dout = storage_mem_rdport_dat_r;
assign storage_mem_rdport_re = storage_mem_do_read;
assign storage_mem_syncfifo_writable = (storage_mem_level0 != 11'd1024);
assign storage_mem_syncfifo_readable = (storage_mem_level0 != 1'd0);

// synthesis translate_off
reg dummy_d_120;
// synthesis translate_on
always @(*) begin
	storage_mem_sink_valid <= 1'd0;
	storage_mem_sink_last <= 1'd0;
	storage_mem_sink_payload_data <= 91'd0;
	storage_mem_source_ready <= 1'd0;
	storage_sink_sink_ready <= 1'd0;
	storage_idle_status <= 1'd0;
	storage_wait_status <= 1'd0;
	storage_run_status <= 1'd0;
	litescopeanalyzer_next_state <= 2'd0;
	litescopeanalyzer_next_state <= litescopeanalyzer_state;
	case (litescopeanalyzer_state)
		1'd1: begin
			storage_wait_status <= 1'd1;
			storage_mem_sink_valid <= storage_sink_sink_valid;
			storage_sink_sink_ready <= storage_mem_sink_ready;
			storage_mem_sink_last <= storage_sink_sink_last;
			storage_mem_sink_payload_data <= storage_sink_sink_payload_data;
			if ((storage_sink_sink_valid & (storage_sink_sink_payload_hit != 1'd0))) begin
				litescopeanalyzer_next_state <= 2'd2;
			end
			storage_mem_source_ready <= (storage_mem_level1 >= storage_offset_storage);
		end
		2'd2: begin
			storage_run_status <= 1'd1;
			storage_mem_sink_valid <= storage_sink_sink_valid;
			storage_sink_sink_ready <= storage_mem_sink_ready;
			storage_mem_sink_last <= storage_sink_sink_last;
			storage_mem_sink_payload_data <= storage_sink_sink_payload_data;
			if (((~storage_mem_sink_ready) | (storage_mem_level1 >= storage_length_storage))) begin
				litescopeanalyzer_next_state <= 1'd0;
				storage_mem_source_ready <= 1'd1;
			end
		end
		default: begin
			storage_idle_status <= 1'd1;
			if (storage_start_re) begin
				litescopeanalyzer_next_state <= 1'd1;
			end
			storage_sink_sink_ready <= 1'd1;
			storage_mem_source_ready <= (storage_mem_ready_re & storage_mem_ready_r);
		end
	endcase
// synthesis translate_off
	dummy_d_120 <= dummy_s;
// synthesis translate_on
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
assign memtestsoc_shared_adr = rhs_array_muxed44;
assign memtestsoc_shared_dat_w = rhs_array_muxed45;
assign memtestsoc_shared_sel = rhs_array_muxed46;
assign memtestsoc_shared_cyc = rhs_array_muxed47;
assign memtestsoc_shared_stb = rhs_array_muxed48;
assign memtestsoc_shared_we = rhs_array_muxed49;
assign memtestsoc_shared_cti = rhs_array_muxed50;
assign memtestsoc_shared_bte = rhs_array_muxed51;
assign memtestsoc_ibus_dat_r = memtestsoc_shared_dat_r;
assign memtestsoc_dbus_dat_r = memtestsoc_shared_dat_r;
assign memtestsoc_ibus_ack = (memtestsoc_shared_ack & (memtestsoc_grant == 1'd0));
assign memtestsoc_dbus_ack = (memtestsoc_shared_ack & (memtestsoc_grant == 1'd1));
assign memtestsoc_ibus_err = (memtestsoc_shared_err & (memtestsoc_grant == 1'd0));
assign memtestsoc_dbus_err = (memtestsoc_shared_err & (memtestsoc_grant == 1'd1));
assign memtestsoc_request = {memtestsoc_dbus_cyc, memtestsoc_ibus_cyc};

// synthesis translate_off
reg dummy_d_121;
// synthesis translate_on
always @(*) begin
	memtestsoc_slave_sel <= 6'd0;
	memtestsoc_slave_sel[0] <= (memtestsoc_shared_adr[28:26] == 1'd0);
	memtestsoc_slave_sel[1] <= (memtestsoc_shared_adr[28:26] == 1'd1);
	memtestsoc_slave_sel[2] <= (memtestsoc_shared_adr[28:26] == 3'd6);
	memtestsoc_slave_sel[3] <= (memtestsoc_shared_adr[28:26] == 2'd2);
	memtestsoc_slave_sel[4] <= (memtestsoc_shared_adr[28:26] == 3'd4);
	memtestsoc_slave_sel[5] <= (memtestsoc_shared_adr[28:26] == 2'd3);
// synthesis translate_off
	dummy_d_121 <= dummy_s;
// synthesis translate_on
end
assign memtestsoc_rom_bus_adr = memtestsoc_shared_adr;
assign memtestsoc_rom_bus_dat_w = memtestsoc_shared_dat_w;
assign memtestsoc_rom_bus_sel = memtestsoc_shared_sel;
assign memtestsoc_rom_bus_stb = memtestsoc_shared_stb;
assign memtestsoc_rom_bus_we = memtestsoc_shared_we;
assign memtestsoc_rom_bus_cti = memtestsoc_shared_cti;
assign memtestsoc_rom_bus_bte = memtestsoc_shared_bte;
assign memtestsoc_sram_bus_adr = memtestsoc_shared_adr;
assign memtestsoc_sram_bus_dat_w = memtestsoc_shared_dat_w;
assign memtestsoc_sram_bus_sel = memtestsoc_shared_sel;
assign memtestsoc_sram_bus_stb = memtestsoc_shared_stb;
assign memtestsoc_sram_bus_we = memtestsoc_shared_we;
assign memtestsoc_sram_bus_cti = memtestsoc_shared_cti;
assign memtestsoc_sram_bus_bte = memtestsoc_shared_bte;
assign memtestsoc_bus_wishbone_adr = memtestsoc_shared_adr;
assign memtestsoc_bus_wishbone_dat_w = memtestsoc_shared_dat_w;
assign memtestsoc_bus_wishbone_sel = memtestsoc_shared_sel;
assign memtestsoc_bus_wishbone_stb = memtestsoc_shared_stb;
assign memtestsoc_bus_wishbone_we = memtestsoc_shared_we;
assign memtestsoc_bus_wishbone_cti = memtestsoc_shared_cti;
assign memtestsoc_bus_wishbone_bte = memtestsoc_shared_bte;
assign spiflash_bus_adr = memtestsoc_shared_adr;
assign spiflash_bus_dat_w = memtestsoc_shared_dat_w;
assign spiflash_bus_sel = memtestsoc_shared_sel;
assign spiflash_bus_stb = memtestsoc_shared_stb;
assign spiflash_bus_we = memtestsoc_shared_we;
assign spiflash_bus_cti = memtestsoc_shared_cti;
assign spiflash_bus_bte = memtestsoc_shared_bte;
assign interface1_wb_sdram_adr = memtestsoc_shared_adr;
assign interface1_wb_sdram_dat_w = memtestsoc_shared_dat_w;
assign interface1_wb_sdram_sel = memtestsoc_shared_sel;
assign interface1_wb_sdram_stb = memtestsoc_shared_stb;
assign interface1_wb_sdram_we = memtestsoc_shared_we;
assign interface1_wb_sdram_cti = memtestsoc_shared_cti;
assign interface1_wb_sdram_bte = memtestsoc_shared_bte;
assign ethmac_bus_adr = memtestsoc_shared_adr;
assign ethmac_bus_dat_w = memtestsoc_shared_dat_w;
assign ethmac_bus_sel = memtestsoc_shared_sel;
assign ethmac_bus_stb = memtestsoc_shared_stb;
assign ethmac_bus_we = memtestsoc_shared_we;
assign ethmac_bus_cti = memtestsoc_shared_cti;
assign ethmac_bus_bte = memtestsoc_shared_bte;
assign memtestsoc_rom_bus_cyc = (memtestsoc_shared_cyc & memtestsoc_slave_sel[0]);
assign memtestsoc_sram_bus_cyc = (memtestsoc_shared_cyc & memtestsoc_slave_sel[1]);
assign memtestsoc_bus_wishbone_cyc = (memtestsoc_shared_cyc & memtestsoc_slave_sel[2]);
assign spiflash_bus_cyc = (memtestsoc_shared_cyc & memtestsoc_slave_sel[3]);
assign interface1_wb_sdram_cyc = (memtestsoc_shared_cyc & memtestsoc_slave_sel[4]);
assign ethmac_bus_cyc = (memtestsoc_shared_cyc & memtestsoc_slave_sel[5]);
assign memtestsoc_shared_ack = (((((memtestsoc_rom_bus_ack | memtestsoc_sram_bus_ack) | memtestsoc_bus_wishbone_ack) | spiflash_bus_ack) | interface1_wb_sdram_ack) | ethmac_bus_ack);
assign memtestsoc_shared_err = (((((memtestsoc_rom_bus_err | memtestsoc_sram_bus_err) | memtestsoc_bus_wishbone_err) | spiflash_bus_err) | interface1_wb_sdram_err) | ethmac_bus_err);
assign memtestsoc_shared_dat_r = (((((({32{memtestsoc_slave_sel_r[0]}} & memtestsoc_rom_bus_dat_r) | ({32{memtestsoc_slave_sel_r[1]}} & memtestsoc_sram_bus_dat_r)) | ({32{memtestsoc_slave_sel_r[2]}} & memtestsoc_bus_wishbone_dat_r)) | ({32{memtestsoc_slave_sel_r[3]}} & spiflash_bus_dat_r)) | ({32{memtestsoc_slave_sel_r[4]}} & interface1_wb_sdram_dat_r)) | ({32{memtestsoc_slave_sel_r[5]}} & ethmac_bus_dat_r));
assign memtestsoc_csrbank0_sel = (memtestsoc_interface0_adr[13:9] == 5'd23);
assign memtestsoc_csrbank0_frontend_trigger_value11_r = memtestsoc_interface0_dat_w[2:0];
assign memtestsoc_csrbank0_frontend_trigger_value11_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 1'd0));
assign memtestsoc_csrbank0_frontend_trigger_value10_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_frontend_trigger_value10_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 1'd1));
assign memtestsoc_csrbank0_frontend_trigger_value9_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_frontend_trigger_value9_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 2'd2));
assign memtestsoc_csrbank0_frontend_trigger_value8_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_frontend_trigger_value8_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 2'd3));
assign memtestsoc_csrbank0_frontend_trigger_value7_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_frontend_trigger_value7_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 3'd4));
assign memtestsoc_csrbank0_frontend_trigger_value6_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_frontend_trigger_value6_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 3'd5));
assign memtestsoc_csrbank0_frontend_trigger_value5_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_frontend_trigger_value5_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 3'd6));
assign memtestsoc_csrbank0_frontend_trigger_value4_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_frontend_trigger_value4_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 3'd7));
assign memtestsoc_csrbank0_frontend_trigger_value3_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_frontend_trigger_value3_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 4'd8));
assign memtestsoc_csrbank0_frontend_trigger_value2_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_frontend_trigger_value2_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 4'd9));
assign memtestsoc_csrbank0_frontend_trigger_value1_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_frontend_trigger_value1_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 4'd10));
assign memtestsoc_csrbank0_frontend_trigger_value0_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_frontend_trigger_value0_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 4'd11));
assign memtestsoc_csrbank0_frontend_trigger_mask11_r = memtestsoc_interface0_dat_w[2:0];
assign memtestsoc_csrbank0_frontend_trigger_mask11_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 4'd12));
assign memtestsoc_csrbank0_frontend_trigger_mask10_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_frontend_trigger_mask10_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 4'd13));
assign memtestsoc_csrbank0_frontend_trigger_mask9_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_frontend_trigger_mask9_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 4'd14));
assign memtestsoc_csrbank0_frontend_trigger_mask8_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_frontend_trigger_mask8_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 4'd15));
assign memtestsoc_csrbank0_frontend_trigger_mask7_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_frontend_trigger_mask7_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 5'd16));
assign memtestsoc_csrbank0_frontend_trigger_mask6_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_frontend_trigger_mask6_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 5'd17));
assign memtestsoc_csrbank0_frontend_trigger_mask5_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_frontend_trigger_mask5_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 5'd18));
assign memtestsoc_csrbank0_frontend_trigger_mask4_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_frontend_trigger_mask4_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 5'd19));
assign memtestsoc_csrbank0_frontend_trigger_mask3_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_frontend_trigger_mask3_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 5'd20));
assign memtestsoc_csrbank0_frontend_trigger_mask2_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_frontend_trigger_mask2_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 5'd21));
assign memtestsoc_csrbank0_frontend_trigger_mask1_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_frontend_trigger_mask1_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 5'd22));
assign memtestsoc_csrbank0_frontend_trigger_mask0_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_frontend_trigger_mask0_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 5'd23));
assign memtestsoc_csrbank0_frontend_subsampler_value1_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_frontend_subsampler_value1_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 5'd24));
assign memtestsoc_csrbank0_frontend_subsampler_value0_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_frontend_subsampler_value0_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 5'd25));
assign storage_start_r = memtestsoc_interface0_dat_w[0];
assign storage_start_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 5'd26));
assign memtestsoc_csrbank0_storage_length1_r = memtestsoc_interface0_dat_w[2:0];
assign memtestsoc_csrbank0_storage_length1_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 5'd27));
assign memtestsoc_csrbank0_storage_length0_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_storage_length0_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 5'd28));
assign memtestsoc_csrbank0_storage_offset1_r = memtestsoc_interface0_dat_w[2:0];
assign memtestsoc_csrbank0_storage_offset1_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 5'd29));
assign memtestsoc_csrbank0_storage_offset0_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_storage_offset0_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 5'd30));
assign memtestsoc_csrbank0_storage_idle_r = memtestsoc_interface0_dat_w[0];
assign memtestsoc_csrbank0_storage_idle_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 5'd31));
assign memtestsoc_csrbank0_storage_wait_r = memtestsoc_interface0_dat_w[0];
assign memtestsoc_csrbank0_storage_wait_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd32));
assign memtestsoc_csrbank0_storage_run_r = memtestsoc_interface0_dat_w[0];
assign memtestsoc_csrbank0_storage_run_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd33));
assign memtestsoc_csrbank0_storage_mem_valid_r = memtestsoc_interface0_dat_w[0];
assign memtestsoc_csrbank0_storage_mem_valid_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd34));
assign storage_mem_ready_r = memtestsoc_interface0_dat_w[0];
assign storage_mem_ready_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd35));
assign memtestsoc_csrbank0_storage_mem_data11_r = memtestsoc_interface0_dat_w[2:0];
assign memtestsoc_csrbank0_storage_mem_data11_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd36));
assign memtestsoc_csrbank0_storage_mem_data10_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_storage_mem_data10_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd37));
assign memtestsoc_csrbank0_storage_mem_data9_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_storage_mem_data9_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd38));
assign memtestsoc_csrbank0_storage_mem_data8_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_storage_mem_data8_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd39));
assign memtestsoc_csrbank0_storage_mem_data7_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_storage_mem_data7_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd40));
assign memtestsoc_csrbank0_storage_mem_data6_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_storage_mem_data6_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd41));
assign memtestsoc_csrbank0_storage_mem_data5_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_storage_mem_data5_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd42));
assign memtestsoc_csrbank0_storage_mem_data4_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_storage_mem_data4_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd43));
assign memtestsoc_csrbank0_storage_mem_data3_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_storage_mem_data3_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd44));
assign memtestsoc_csrbank0_storage_mem_data2_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_storage_mem_data2_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd45));
assign memtestsoc_csrbank0_storage_mem_data1_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_storage_mem_data1_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd46));
assign memtestsoc_csrbank0_storage_mem_data0_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_storage_mem_data0_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd47));
assign frontend_trigger_value_storage = frontend_trigger_value_storage_full[90:0];
assign memtestsoc_csrbank0_frontend_trigger_value11_w = frontend_trigger_value_storage_full[90:88];
assign memtestsoc_csrbank0_frontend_trigger_value10_w = frontend_trigger_value_storage_full[87:80];
assign memtestsoc_csrbank0_frontend_trigger_value9_w = frontend_trigger_value_storage_full[79:72];
assign memtestsoc_csrbank0_frontend_trigger_value8_w = frontend_trigger_value_storage_full[71:64];
assign memtestsoc_csrbank0_frontend_trigger_value7_w = frontend_trigger_value_storage_full[63:56];
assign memtestsoc_csrbank0_frontend_trigger_value6_w = frontend_trigger_value_storage_full[55:48];
assign memtestsoc_csrbank0_frontend_trigger_value5_w = frontend_trigger_value_storage_full[47:40];
assign memtestsoc_csrbank0_frontend_trigger_value4_w = frontend_trigger_value_storage_full[39:32];
assign memtestsoc_csrbank0_frontend_trigger_value3_w = frontend_trigger_value_storage_full[31:24];
assign memtestsoc_csrbank0_frontend_trigger_value2_w = frontend_trigger_value_storage_full[23:16];
assign memtestsoc_csrbank0_frontend_trigger_value1_w = frontend_trigger_value_storage_full[15:8];
assign memtestsoc_csrbank0_frontend_trigger_value0_w = frontend_trigger_value_storage_full[7:0];
assign frontend_trigger_mask_storage = frontend_trigger_mask_storage_full[90:0];
assign memtestsoc_csrbank0_frontend_trigger_mask11_w = frontend_trigger_mask_storage_full[90:88];
assign memtestsoc_csrbank0_frontend_trigger_mask10_w = frontend_trigger_mask_storage_full[87:80];
assign memtestsoc_csrbank0_frontend_trigger_mask9_w = frontend_trigger_mask_storage_full[79:72];
assign memtestsoc_csrbank0_frontend_trigger_mask8_w = frontend_trigger_mask_storage_full[71:64];
assign memtestsoc_csrbank0_frontend_trigger_mask7_w = frontend_trigger_mask_storage_full[63:56];
assign memtestsoc_csrbank0_frontend_trigger_mask6_w = frontend_trigger_mask_storage_full[55:48];
assign memtestsoc_csrbank0_frontend_trigger_mask5_w = frontend_trigger_mask_storage_full[47:40];
assign memtestsoc_csrbank0_frontend_trigger_mask4_w = frontend_trigger_mask_storage_full[39:32];
assign memtestsoc_csrbank0_frontend_trigger_mask3_w = frontend_trigger_mask_storage_full[31:24];
assign memtestsoc_csrbank0_frontend_trigger_mask2_w = frontend_trigger_mask_storage_full[23:16];
assign memtestsoc_csrbank0_frontend_trigger_mask1_w = frontend_trigger_mask_storage_full[15:8];
assign memtestsoc_csrbank0_frontend_trigger_mask0_w = frontend_trigger_mask_storage_full[7:0];
assign frontend_subsampler_value_storage = frontend_subsampler_value_storage_full[15:0];
assign memtestsoc_csrbank0_frontend_subsampler_value1_w = frontend_subsampler_value_storage_full[15:8];
assign memtestsoc_csrbank0_frontend_subsampler_value0_w = frontend_subsampler_value_storage_full[7:0];
assign storage_length_storage = storage_length_storage_full[10:0];
assign memtestsoc_csrbank0_storage_length1_w = storage_length_storage_full[10:8];
assign memtestsoc_csrbank0_storage_length0_w = storage_length_storage_full[7:0];
assign storage_offset_storage = storage_offset_storage_full[10:0];
assign memtestsoc_csrbank0_storage_offset1_w = storage_offset_storage_full[10:8];
assign memtestsoc_csrbank0_storage_offset0_w = storage_offset_storage_full[7:0];
assign memtestsoc_csrbank0_storage_idle_w = storage_idle_status;
assign memtestsoc_csrbank0_storage_wait_w = storage_wait_status;
assign memtestsoc_csrbank0_storage_run_w = storage_run_status;
assign memtestsoc_csrbank0_storage_mem_valid_w = storage_mem_valid_status;
assign memtestsoc_csrbank0_storage_mem_data11_w = storage_mem_data_status[90:88];
assign memtestsoc_csrbank0_storage_mem_data10_w = storage_mem_data_status[87:80];
assign memtestsoc_csrbank0_storage_mem_data9_w = storage_mem_data_status[79:72];
assign memtestsoc_csrbank0_storage_mem_data8_w = storage_mem_data_status[71:64];
assign memtestsoc_csrbank0_storage_mem_data7_w = storage_mem_data_status[63:56];
assign memtestsoc_csrbank0_storage_mem_data6_w = storage_mem_data_status[55:48];
assign memtestsoc_csrbank0_storage_mem_data5_w = storage_mem_data_status[47:40];
assign memtestsoc_csrbank0_storage_mem_data4_w = storage_mem_data_status[39:32];
assign memtestsoc_csrbank0_storage_mem_data3_w = storage_mem_data_status[31:24];
assign memtestsoc_csrbank0_storage_mem_data2_w = storage_mem_data_status[23:16];
assign memtestsoc_csrbank0_storage_mem_data1_w = storage_mem_data_status[15:8];
assign memtestsoc_csrbank0_storage_mem_data0_w = storage_mem_data_status[7:0];
assign memtestsoc_csrbank1_sel = (memtestsoc_interface1_adr[13:9] == 5'd21);
assign checker_reset_r = memtestsoc_interface1_dat_w[0];
assign checker_reset_re = ((memtestsoc_csrbank1_sel & memtestsoc_interface1_we) & (memtestsoc_interface1_adr[3:0] == 1'd0));
assign checker_start_r = memtestsoc_interface1_dat_w[0];
assign checker_start_re = ((memtestsoc_csrbank1_sel & memtestsoc_interface1_we) & (memtestsoc_interface1_adr[3:0] == 1'd1));
assign memtestsoc_csrbank1_base3_r = memtestsoc_interface1_dat_w[1:0];
assign memtestsoc_csrbank1_base3_re = ((memtestsoc_csrbank1_sel & memtestsoc_interface1_we) & (memtestsoc_interface1_adr[3:0] == 2'd2));
assign memtestsoc_csrbank1_base2_r = memtestsoc_interface1_dat_w[7:0];
assign memtestsoc_csrbank1_base2_re = ((memtestsoc_csrbank1_sel & memtestsoc_interface1_we) & (memtestsoc_interface1_adr[3:0] == 2'd3));
assign memtestsoc_csrbank1_base1_r = memtestsoc_interface1_dat_w[7:0];
assign memtestsoc_csrbank1_base1_re = ((memtestsoc_csrbank1_sel & memtestsoc_interface1_we) & (memtestsoc_interface1_adr[3:0] == 3'd4));
assign memtestsoc_csrbank1_base0_r = memtestsoc_interface1_dat_w[7:0];
assign memtestsoc_csrbank1_base0_re = ((memtestsoc_csrbank1_sel & memtestsoc_interface1_we) & (memtestsoc_interface1_adr[3:0] == 3'd5));
assign memtestsoc_csrbank1_length3_r = memtestsoc_interface1_dat_w[1:0];
assign memtestsoc_csrbank1_length3_re = ((memtestsoc_csrbank1_sel & memtestsoc_interface1_we) & (memtestsoc_interface1_adr[3:0] == 3'd6));
assign memtestsoc_csrbank1_length2_r = memtestsoc_interface1_dat_w[7:0];
assign memtestsoc_csrbank1_length2_re = ((memtestsoc_csrbank1_sel & memtestsoc_interface1_we) & (memtestsoc_interface1_adr[3:0] == 3'd7));
assign memtestsoc_csrbank1_length1_r = memtestsoc_interface1_dat_w[7:0];
assign memtestsoc_csrbank1_length1_re = ((memtestsoc_csrbank1_sel & memtestsoc_interface1_we) & (memtestsoc_interface1_adr[3:0] == 4'd8));
assign memtestsoc_csrbank1_length0_r = memtestsoc_interface1_dat_w[7:0];
assign memtestsoc_csrbank1_length0_re = ((memtestsoc_csrbank1_sel & memtestsoc_interface1_we) & (memtestsoc_interface1_adr[3:0] == 4'd9));
assign memtestsoc_csrbank1_done_r = memtestsoc_interface1_dat_w[0];
assign memtestsoc_csrbank1_done_re = ((memtestsoc_csrbank1_sel & memtestsoc_interface1_we) & (memtestsoc_interface1_adr[3:0] == 4'd10));
assign memtestsoc_csrbank1_err_count3_r = memtestsoc_interface1_dat_w[7:0];
assign memtestsoc_csrbank1_err_count3_re = ((memtestsoc_csrbank1_sel & memtestsoc_interface1_we) & (memtestsoc_interface1_adr[3:0] == 4'd11));
assign memtestsoc_csrbank1_err_count2_r = memtestsoc_interface1_dat_w[7:0];
assign memtestsoc_csrbank1_err_count2_re = ((memtestsoc_csrbank1_sel & memtestsoc_interface1_we) & (memtestsoc_interface1_adr[3:0] == 4'd12));
assign memtestsoc_csrbank1_err_count1_r = memtestsoc_interface1_dat_w[7:0];
assign memtestsoc_csrbank1_err_count1_re = ((memtestsoc_csrbank1_sel & memtestsoc_interface1_we) & (memtestsoc_interface1_adr[3:0] == 4'd13));
assign memtestsoc_csrbank1_err_count0_r = memtestsoc_interface1_dat_w[7:0];
assign memtestsoc_csrbank1_err_count0_re = ((memtestsoc_csrbank1_sel & memtestsoc_interface1_we) & (memtestsoc_interface1_adr[3:0] == 4'd14));
assign checker_base_storage = checker_base_storage_full[25:0];
assign memtestsoc_csrbank1_base3_w = checker_base_storage_full[25:24];
assign memtestsoc_csrbank1_base2_w = checker_base_storage_full[23:16];
assign memtestsoc_csrbank1_base1_w = checker_base_storage_full[15:8];
assign memtestsoc_csrbank1_base0_w = checker_base_storage_full[7:0];
assign checker_length_storage = checker_length_storage_full[25:0];
assign memtestsoc_csrbank1_length3_w = checker_length_storage_full[25:24];
assign memtestsoc_csrbank1_length2_w = checker_length_storage_full[23:16];
assign memtestsoc_csrbank1_length1_w = checker_length_storage_full[15:8];
assign memtestsoc_csrbank1_length0_w = checker_length_storage_full[7:0];
assign memtestsoc_csrbank1_done_w = checker_done_status;
assign memtestsoc_csrbank1_err_count3_w = checker_err_count_status[31:24];
assign memtestsoc_csrbank1_err_count2_w = checker_err_count_status[23:16];
assign memtestsoc_csrbank1_err_count1_w = checker_err_count_status[15:8];
assign memtestsoc_csrbank1_err_count0_w = checker_err_count_status[7:0];
assign memtestsoc_csrbank2_sel = (memtestsoc_interface2_adr[13:9] == 5'd19);
assign memtestsoc_csrbank2_sram_writer_slot_r = memtestsoc_interface2_dat_w[0];
assign memtestsoc_csrbank2_sram_writer_slot_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[4:0] == 1'd0));
assign memtestsoc_csrbank2_sram_writer_length3_r = memtestsoc_interface2_dat_w[7:0];
assign memtestsoc_csrbank2_sram_writer_length3_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[4:0] == 1'd1));
assign memtestsoc_csrbank2_sram_writer_length2_r = memtestsoc_interface2_dat_w[7:0];
assign memtestsoc_csrbank2_sram_writer_length2_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[4:0] == 2'd2));
assign memtestsoc_csrbank2_sram_writer_length1_r = memtestsoc_interface2_dat_w[7:0];
assign memtestsoc_csrbank2_sram_writer_length1_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[4:0] == 2'd3));
assign memtestsoc_csrbank2_sram_writer_length0_r = memtestsoc_interface2_dat_w[7:0];
assign memtestsoc_csrbank2_sram_writer_length0_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[4:0] == 3'd4));
assign ethmac_writer_status_r = memtestsoc_interface2_dat_w[0];
assign ethmac_writer_status_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[4:0] == 3'd5));
assign ethmac_writer_pending_r = memtestsoc_interface2_dat_w[0];
assign ethmac_writer_pending_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[4:0] == 3'd6));
assign memtestsoc_csrbank2_sram_writer_ev_enable0_r = memtestsoc_interface2_dat_w[0];
assign memtestsoc_csrbank2_sram_writer_ev_enable0_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[4:0] == 3'd7));
assign ethmac_reader_start_r = memtestsoc_interface2_dat_w[0];
assign ethmac_reader_start_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[4:0] == 4'd8));
assign memtestsoc_csrbank2_sram_reader_ready_r = memtestsoc_interface2_dat_w[0];
assign memtestsoc_csrbank2_sram_reader_ready_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[4:0] == 4'd9));
assign memtestsoc_csrbank2_sram_reader_slot0_r = memtestsoc_interface2_dat_w[0];
assign memtestsoc_csrbank2_sram_reader_slot0_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[4:0] == 4'd10));
assign memtestsoc_csrbank2_sram_reader_length1_r = memtestsoc_interface2_dat_w[2:0];
assign memtestsoc_csrbank2_sram_reader_length1_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[4:0] == 4'd11));
assign memtestsoc_csrbank2_sram_reader_length0_r = memtestsoc_interface2_dat_w[7:0];
assign memtestsoc_csrbank2_sram_reader_length0_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[4:0] == 4'd12));
assign ethmac_reader_eventmanager_status_r = memtestsoc_interface2_dat_w[0];
assign ethmac_reader_eventmanager_status_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[4:0] == 4'd13));
assign ethmac_reader_eventmanager_pending_r = memtestsoc_interface2_dat_w[0];
assign ethmac_reader_eventmanager_pending_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[4:0] == 4'd14));
assign memtestsoc_csrbank2_sram_reader_ev_enable0_r = memtestsoc_interface2_dat_w[0];
assign memtestsoc_csrbank2_sram_reader_ev_enable0_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[4:0] == 4'd15));
assign memtestsoc_csrbank2_preamble_crc_r = memtestsoc_interface2_dat_w[0];
assign memtestsoc_csrbank2_preamble_crc_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[4:0] == 5'd16));
assign memtestsoc_csrbank2_sram_writer_slot_w = ethmac_writer_slot_status;
assign memtestsoc_csrbank2_sram_writer_length3_w = ethmac_writer_length_status[31:24];
assign memtestsoc_csrbank2_sram_writer_length2_w = ethmac_writer_length_status[23:16];
assign memtestsoc_csrbank2_sram_writer_length1_w = ethmac_writer_length_status[15:8];
assign memtestsoc_csrbank2_sram_writer_length0_w = ethmac_writer_length_status[7:0];
assign ethmac_writer_storage = ethmac_writer_storage_full;
assign memtestsoc_csrbank2_sram_writer_ev_enable0_w = ethmac_writer_storage_full;
assign memtestsoc_csrbank2_sram_reader_ready_w = ethmac_reader_ready_status;
assign ethmac_reader_slot_storage = ethmac_reader_slot_storage_full;
assign memtestsoc_csrbank2_sram_reader_slot0_w = ethmac_reader_slot_storage_full;
assign ethmac_reader_length_storage = ethmac_reader_length_storage_full[10:0];
assign memtestsoc_csrbank2_sram_reader_length1_w = ethmac_reader_length_storage_full[10:8];
assign memtestsoc_csrbank2_sram_reader_length0_w = ethmac_reader_length_storage_full[7:0];
assign ethmac_reader_eventmanager_storage = ethmac_reader_eventmanager_storage_full;
assign memtestsoc_csrbank2_sram_reader_ev_enable0_w = ethmac_reader_eventmanager_storage_full;
assign memtestsoc_csrbank2_preamble_crc_w = ethmac_status;
assign memtestsoc_csrbank3_sel = (memtestsoc_interface3_adr[13:9] == 5'd18);
assign memtestsoc_csrbank3_crg_reset0_r = memtestsoc_interface3_dat_w[0];
assign memtestsoc_csrbank3_crg_reset0_re = ((memtestsoc_csrbank3_sel & memtestsoc_interface3_we) & (memtestsoc_interface3_adr[1:0] == 1'd0));
assign memtestsoc_csrbank3_mdio_w0_r = memtestsoc_interface3_dat_w[2:0];
assign memtestsoc_csrbank3_mdio_w0_re = ((memtestsoc_csrbank3_sel & memtestsoc_interface3_we) & (memtestsoc_interface3_adr[1:0] == 1'd1));
assign memtestsoc_csrbank3_mdio_r_r = memtestsoc_interface3_dat_w[0];
assign memtestsoc_csrbank3_mdio_r_re = ((memtestsoc_csrbank3_sel & memtestsoc_interface3_we) & (memtestsoc_interface3_adr[1:0] == 2'd2));
assign ethphy_crg_storage = ethphy_crg_storage_full;
assign memtestsoc_csrbank3_crg_reset0_w = ethphy_crg_storage_full;
assign ethphy_mdio_storage = ethphy_mdio_storage_full[2:0];
assign memtestsoc_csrbank3_mdio_w0_w = ethphy_mdio_storage_full[2:0];
assign memtestsoc_csrbank3_mdio_r_w = ethphy_mdio_status;
assign memtestsoc_csrbank4_sel = (memtestsoc_interface4_adr[13:9] == 4'd11);
assign memtestsoc_csrbank4_switches_in_r = memtestsoc_interface4_dat_w[0];
assign memtestsoc_csrbank4_switches_in_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[0] == 1'd0));
assign memtestsoc_csrbank4_leds_out0_r = memtestsoc_interface4_dat_w[1:0];
assign memtestsoc_csrbank4_leds_out0_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[0] == 1'd1));
assign memtestsoc_csrbank4_switches_in_w = front_panel_switches_status;
assign front_panel_leds_storage = front_panel_leds_storage_full[1:0];
assign memtestsoc_csrbank4_leds_out0_w = front_panel_leds_storage_full[1:0];
assign memtestsoc_csrbank5_sel = (memtestsoc_interface5_adr[13:9] == 5'd20);
assign generator_reset_r = memtestsoc_interface5_dat_w[0];
assign generator_reset_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[3:0] == 1'd0));
assign generator_start_r = memtestsoc_interface5_dat_w[0];
assign generator_start_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[3:0] == 1'd1));
assign memtestsoc_csrbank5_done_r = memtestsoc_interface5_dat_w[0];
assign memtestsoc_csrbank5_done_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[3:0] == 2'd2));
assign memtestsoc_csrbank5_base3_r = memtestsoc_interface5_dat_w[1:0];
assign memtestsoc_csrbank5_base3_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[3:0] == 2'd3));
assign memtestsoc_csrbank5_base2_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_base2_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[3:0] == 3'd4));
assign memtestsoc_csrbank5_base1_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_base1_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[3:0] == 3'd5));
assign memtestsoc_csrbank5_base0_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_base0_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[3:0] == 3'd6));
assign memtestsoc_csrbank5_length3_r = memtestsoc_interface5_dat_w[1:0];
assign memtestsoc_csrbank5_length3_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[3:0] == 3'd7));
assign memtestsoc_csrbank5_length2_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_length2_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[3:0] == 4'd8));
assign memtestsoc_csrbank5_length1_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_length1_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[3:0] == 4'd9));
assign memtestsoc_csrbank5_length0_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_length0_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[3:0] == 4'd10));
assign memtestsoc_csrbank5_done_w = generator_status;
assign generator_base_storage = generator_base_storage_full[25:0];
assign memtestsoc_csrbank5_base3_w = generator_base_storage_full[25:24];
assign memtestsoc_csrbank5_base2_w = generator_base_storage_full[23:16];
assign memtestsoc_csrbank5_base1_w = generator_base_storage_full[15:8];
assign memtestsoc_csrbank5_base0_w = generator_base_storage_full[7:0];
assign generator_length_storage = generator_length_storage_full[25:0];
assign memtestsoc_csrbank5_length3_w = generator_length_storage_full[25:24];
assign memtestsoc_csrbank5_length2_w = generator_length_storage_full[23:16];
assign memtestsoc_csrbank5_length1_w = generator_length_storage_full[15:8];
assign memtestsoc_csrbank5_length0_w = generator_length_storage_full[7:0];
assign memtestsoc_csrbank6_sel = (memtestsoc_interface6_adr[13:9] == 4'd13);
assign memtestsoc_csrbank6_dna_id7_r = memtestsoc_interface6_dat_w[0];
assign memtestsoc_csrbank6_dna_id7_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 1'd0));
assign memtestsoc_csrbank6_dna_id6_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_dna_id6_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 1'd1));
assign memtestsoc_csrbank6_dna_id5_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_dna_id5_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 2'd2));
assign memtestsoc_csrbank6_dna_id4_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_dna_id4_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 2'd3));
assign memtestsoc_csrbank6_dna_id3_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_dna_id3_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 3'd4));
assign memtestsoc_csrbank6_dna_id2_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_dna_id2_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 3'd5));
assign memtestsoc_csrbank6_dna_id1_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_dna_id1_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 3'd6));
assign memtestsoc_csrbank6_dna_id0_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_dna_id0_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 3'd7));
assign memtestsoc_csrbank6_git_commit19_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_git_commit19_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 4'd8));
assign memtestsoc_csrbank6_git_commit18_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_git_commit18_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 4'd9));
assign memtestsoc_csrbank6_git_commit17_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_git_commit17_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 4'd10));
assign memtestsoc_csrbank6_git_commit16_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_git_commit16_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 4'd11));
assign memtestsoc_csrbank6_git_commit15_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_git_commit15_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 4'd12));
assign memtestsoc_csrbank6_git_commit14_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_git_commit14_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 4'd13));
assign memtestsoc_csrbank6_git_commit13_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_git_commit13_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 4'd14));
assign memtestsoc_csrbank6_git_commit12_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_git_commit12_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 4'd15));
assign memtestsoc_csrbank6_git_commit11_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_git_commit11_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 5'd16));
assign memtestsoc_csrbank6_git_commit10_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_git_commit10_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 5'd17));
assign memtestsoc_csrbank6_git_commit9_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_git_commit9_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 5'd18));
assign memtestsoc_csrbank6_git_commit8_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_git_commit8_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 5'd19));
assign memtestsoc_csrbank6_git_commit7_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_git_commit7_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 5'd20));
assign memtestsoc_csrbank6_git_commit6_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_git_commit6_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 5'd21));
assign memtestsoc_csrbank6_git_commit5_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_git_commit5_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 5'd22));
assign memtestsoc_csrbank6_git_commit4_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_git_commit4_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 5'd23));
assign memtestsoc_csrbank6_git_commit3_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_git_commit3_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 5'd24));
assign memtestsoc_csrbank6_git_commit2_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_git_commit2_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 5'd25));
assign memtestsoc_csrbank6_git_commit1_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_git_commit1_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 5'd26));
assign memtestsoc_csrbank6_git_commit0_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_git_commit0_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 5'd27));
assign memtestsoc_csrbank6_platform_platform7_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_platform_platform7_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 5'd28));
assign memtestsoc_csrbank6_platform_platform6_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_platform_platform6_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 5'd29));
assign memtestsoc_csrbank6_platform_platform5_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_platform_platform5_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 5'd30));
assign memtestsoc_csrbank6_platform_platform4_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_platform_platform4_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 5'd31));
assign memtestsoc_csrbank6_platform_platform3_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_platform_platform3_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 6'd32));
assign memtestsoc_csrbank6_platform_platform2_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_platform_platform2_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 6'd33));
assign memtestsoc_csrbank6_platform_platform1_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_platform_platform1_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 6'd34));
assign memtestsoc_csrbank6_platform_platform0_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_platform_platform0_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 6'd35));
assign memtestsoc_csrbank6_platform_target7_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_platform_target7_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 6'd36));
assign memtestsoc_csrbank6_platform_target6_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_platform_target6_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 6'd37));
assign memtestsoc_csrbank6_platform_target5_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_platform_target5_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 6'd38));
assign memtestsoc_csrbank6_platform_target4_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_platform_target4_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 6'd39));
assign memtestsoc_csrbank6_platform_target3_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_platform_target3_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 6'd40));
assign memtestsoc_csrbank6_platform_target2_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_platform_target2_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 6'd41));
assign memtestsoc_csrbank6_platform_target1_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_platform_target1_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 6'd42));
assign memtestsoc_csrbank6_platform_target0_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_platform_target0_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[5:0] == 6'd43));
assign memtestsoc_csrbank6_dna_id7_w = dna_status[56];
assign memtestsoc_csrbank6_dna_id6_w = dna_status[55:48];
assign memtestsoc_csrbank6_dna_id5_w = dna_status[47:40];
assign memtestsoc_csrbank6_dna_id4_w = dna_status[39:32];
assign memtestsoc_csrbank6_dna_id3_w = dna_status[31:24];
assign memtestsoc_csrbank6_dna_id2_w = dna_status[23:16];
assign memtestsoc_csrbank6_dna_id1_w = dna_status[15:8];
assign memtestsoc_csrbank6_dna_id0_w = dna_status[7:0];
assign memtestsoc_csrbank6_git_commit19_w = git_status[159:152];
assign memtestsoc_csrbank6_git_commit18_w = git_status[151:144];
assign memtestsoc_csrbank6_git_commit17_w = git_status[143:136];
assign memtestsoc_csrbank6_git_commit16_w = git_status[135:128];
assign memtestsoc_csrbank6_git_commit15_w = git_status[127:120];
assign memtestsoc_csrbank6_git_commit14_w = git_status[119:112];
assign memtestsoc_csrbank6_git_commit13_w = git_status[111:104];
assign memtestsoc_csrbank6_git_commit12_w = git_status[103:96];
assign memtestsoc_csrbank6_git_commit11_w = git_status[95:88];
assign memtestsoc_csrbank6_git_commit10_w = git_status[87:80];
assign memtestsoc_csrbank6_git_commit9_w = git_status[79:72];
assign memtestsoc_csrbank6_git_commit8_w = git_status[71:64];
assign memtestsoc_csrbank6_git_commit7_w = git_status[63:56];
assign memtestsoc_csrbank6_git_commit6_w = git_status[55:48];
assign memtestsoc_csrbank6_git_commit5_w = git_status[47:40];
assign memtestsoc_csrbank6_git_commit4_w = git_status[39:32];
assign memtestsoc_csrbank6_git_commit3_w = git_status[31:24];
assign memtestsoc_csrbank6_git_commit2_w = git_status[23:16];
assign memtestsoc_csrbank6_git_commit1_w = git_status[15:8];
assign memtestsoc_csrbank6_git_commit0_w = git_status[7:0];
assign memtestsoc_csrbank6_platform_platform7_w = platform_status[63:56];
assign memtestsoc_csrbank6_platform_platform6_w = platform_status[55:48];
assign memtestsoc_csrbank6_platform_platform5_w = platform_status[47:40];
assign memtestsoc_csrbank6_platform_platform4_w = platform_status[39:32];
assign memtestsoc_csrbank6_platform_platform3_w = platform_status[31:24];
assign memtestsoc_csrbank6_platform_platform2_w = platform_status[23:16];
assign memtestsoc_csrbank6_platform_platform1_w = platform_status[15:8];
assign memtestsoc_csrbank6_platform_platform0_w = platform_status[7:0];
assign memtestsoc_csrbank6_platform_target7_w = target_status[63:56];
assign memtestsoc_csrbank6_platform_target6_w = target_status[55:48];
assign memtestsoc_csrbank6_platform_target5_w = target_status[47:40];
assign memtestsoc_csrbank6_platform_target4_w = target_status[39:32];
assign memtestsoc_csrbank6_platform_target3_w = target_status[31:24];
assign memtestsoc_csrbank6_platform_target2_w = target_status[23:16];
assign memtestsoc_csrbank6_platform_target1_w = target_status[15:8];
assign memtestsoc_csrbank6_platform_target0_w = target_status[7:0];
assign memtestsoc_csrbank7_sel = (memtestsoc_interface7_adr[13:9] == 5'd17);
assign memtestsoc_csrbank7_master_w0_r = memtestsoc_interface7_dat_w[7:0];
assign memtestsoc_csrbank7_master_w0_re = ((memtestsoc_csrbank7_sel & memtestsoc_interface7_we) & (memtestsoc_interface7_adr[2:0] == 1'd0));
assign memtestsoc_csrbank7_master_r_r = memtestsoc_interface7_dat_w[0];
assign memtestsoc_csrbank7_master_r_re = ((memtestsoc_csrbank7_sel & memtestsoc_interface7_we) & (memtestsoc_interface7_adr[2:0] == 1'd1));
assign memtestsoc_csrbank7_fx2_reset_out0_r = memtestsoc_interface7_dat_w[0];
assign memtestsoc_csrbank7_fx2_reset_out0_re = ((memtestsoc_csrbank7_sel & memtestsoc_interface7_we) & (memtestsoc_interface7_adr[2:0] == 2'd2));
assign memtestsoc_csrbank7_fx2_hack_shift_reg0_r = memtestsoc_interface7_dat_w[7:0];
assign memtestsoc_csrbank7_fx2_hack_shift_reg0_re = ((memtestsoc_csrbank7_sel & memtestsoc_interface7_we) & (memtestsoc_interface7_adr[2:0] == 2'd3));
assign memtestsoc_csrbank7_fx2_hack_status0_r = memtestsoc_interface7_dat_w[1:0];
assign memtestsoc_csrbank7_fx2_hack_status0_re = ((memtestsoc_csrbank7_sel & memtestsoc_interface7_we) & (memtestsoc_interface7_adr[2:0] == 3'd4));
assign memtestsoc_csrbank7_fx2_hack_slave_addr0_r = memtestsoc_interface7_dat_w[6:0];
assign memtestsoc_csrbank7_fx2_hack_slave_addr0_re = ((memtestsoc_csrbank7_sel & memtestsoc_interface7_we) & (memtestsoc_interface7_adr[2:0] == 3'd5));
assign memtestsoc_csrbank7_mux_sel0_r = memtestsoc_interface7_dat_w[0];
assign memtestsoc_csrbank7_mux_sel0_re = ((memtestsoc_csrbank7_sel & memtestsoc_interface7_we) & (memtestsoc_interface7_adr[2:0] == 3'd6));
assign opsis_i2c_master_storage = opsis_i2c_master_storage_full[7:0];
assign memtestsoc_csrbank7_master_w0_w = opsis_i2c_master_storage_full[7:0];
assign memtestsoc_csrbank7_master_r_w = opsis_i2c_master_status;
assign opsis_i2c_fx2_reset_storage = opsis_i2c_fx2_reset_storage_full;
assign memtestsoc_csrbank7_fx2_reset_out0_w = opsis_i2c_fx2_reset_storage_full;
assign opsis_i2c_shift_reg_storage = opsis_i2c_shift_reg_storage_full[7:0];
assign memtestsoc_csrbank7_fx2_hack_shift_reg0_w = opsis_i2c_shift_reg_storage_full[7:0];
assign opsis_i2c_status_storage = opsis_i2c_status_storage_full[1:0];
assign memtestsoc_csrbank7_fx2_hack_status0_w = opsis_i2c_status_storage_full[1:0];
assign opsis_i2c_slave_addr_storage = opsis_i2c_slave_addr_storage_full[6:0];
assign memtestsoc_csrbank7_fx2_hack_slave_addr0_w = opsis_i2c_slave_addr_storage_full[6:0];
assign opsisi2c_storage = opsisi2c_storage_full;
assign memtestsoc_csrbank7_mux_sel0_w = opsisi2c_storage_full;
assign memtestsoc_csrbank8_sel = (memtestsoc_interface8_adr[13:9] == 4'd8);
assign memtestsoc_csrbank8_dfii_control0_r = memtestsoc_interface8_dat_w[3:0];
assign memtestsoc_csrbank8_dfii_control0_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 1'd0));
assign memtestsoc_csrbank8_dfii_pi0_command0_r = memtestsoc_interface8_dat_w[5:0];
assign memtestsoc_csrbank8_dfii_pi0_command0_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 1'd1));
assign controllerinjector_phaseinjector0_command_issue_r = memtestsoc_interface8_dat_w[0];
assign controllerinjector_phaseinjector0_command_issue_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 2'd2));
assign memtestsoc_csrbank8_dfii_pi0_address1_r = memtestsoc_interface8_dat_w[5:0];
assign memtestsoc_csrbank8_dfii_pi0_address1_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 2'd3));
assign memtestsoc_csrbank8_dfii_pi0_address0_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi0_address0_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 3'd4));
assign memtestsoc_csrbank8_dfii_pi0_baddress0_r = memtestsoc_interface8_dat_w[2:0];
assign memtestsoc_csrbank8_dfii_pi0_baddress0_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 3'd5));
assign memtestsoc_csrbank8_dfii_pi0_wrdata3_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi0_wrdata3_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 3'd6));
assign memtestsoc_csrbank8_dfii_pi0_wrdata2_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi0_wrdata2_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 3'd7));
assign memtestsoc_csrbank8_dfii_pi0_wrdata1_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi0_wrdata1_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 4'd8));
assign memtestsoc_csrbank8_dfii_pi0_wrdata0_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi0_wrdata0_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 4'd9));
assign memtestsoc_csrbank8_dfii_pi0_rddata3_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi0_rddata3_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 4'd10));
assign memtestsoc_csrbank8_dfii_pi0_rddata2_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi0_rddata2_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 4'd11));
assign memtestsoc_csrbank8_dfii_pi0_rddata1_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi0_rddata1_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 4'd12));
assign memtestsoc_csrbank8_dfii_pi0_rddata0_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi0_rddata0_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 4'd13));
assign memtestsoc_csrbank8_dfii_pi1_command0_r = memtestsoc_interface8_dat_w[5:0];
assign memtestsoc_csrbank8_dfii_pi1_command0_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 4'd14));
assign controllerinjector_phaseinjector1_command_issue_r = memtestsoc_interface8_dat_w[0];
assign controllerinjector_phaseinjector1_command_issue_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 4'd15));
assign memtestsoc_csrbank8_dfii_pi1_address1_r = memtestsoc_interface8_dat_w[5:0];
assign memtestsoc_csrbank8_dfii_pi1_address1_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 5'd16));
assign memtestsoc_csrbank8_dfii_pi1_address0_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi1_address0_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 5'd17));
assign memtestsoc_csrbank8_dfii_pi1_baddress0_r = memtestsoc_interface8_dat_w[2:0];
assign memtestsoc_csrbank8_dfii_pi1_baddress0_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 5'd18));
assign memtestsoc_csrbank8_dfii_pi1_wrdata3_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi1_wrdata3_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 5'd19));
assign memtestsoc_csrbank8_dfii_pi1_wrdata2_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi1_wrdata2_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 5'd20));
assign memtestsoc_csrbank8_dfii_pi1_wrdata1_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi1_wrdata1_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 5'd21));
assign memtestsoc_csrbank8_dfii_pi1_wrdata0_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi1_wrdata0_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 5'd22));
assign memtestsoc_csrbank8_dfii_pi1_rddata3_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi1_rddata3_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 5'd23));
assign memtestsoc_csrbank8_dfii_pi1_rddata2_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi1_rddata2_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 5'd24));
assign memtestsoc_csrbank8_dfii_pi1_rddata1_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi1_rddata1_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 5'd25));
assign memtestsoc_csrbank8_dfii_pi1_rddata0_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi1_rddata0_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 5'd26));
assign memtestsoc_csrbank8_dfii_pi2_command0_r = memtestsoc_interface8_dat_w[5:0];
assign memtestsoc_csrbank8_dfii_pi2_command0_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 5'd27));
assign controllerinjector_phaseinjector2_command_issue_r = memtestsoc_interface8_dat_w[0];
assign controllerinjector_phaseinjector2_command_issue_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 5'd28));
assign memtestsoc_csrbank8_dfii_pi2_address1_r = memtestsoc_interface8_dat_w[5:0];
assign memtestsoc_csrbank8_dfii_pi2_address1_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 5'd29));
assign memtestsoc_csrbank8_dfii_pi2_address0_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi2_address0_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 5'd30));
assign memtestsoc_csrbank8_dfii_pi2_baddress0_r = memtestsoc_interface8_dat_w[2:0];
assign memtestsoc_csrbank8_dfii_pi2_baddress0_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 5'd31));
assign memtestsoc_csrbank8_dfii_pi2_wrdata3_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi2_wrdata3_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd32));
assign memtestsoc_csrbank8_dfii_pi2_wrdata2_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi2_wrdata2_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd33));
assign memtestsoc_csrbank8_dfii_pi2_wrdata1_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi2_wrdata1_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd34));
assign memtestsoc_csrbank8_dfii_pi2_wrdata0_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi2_wrdata0_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd35));
assign memtestsoc_csrbank8_dfii_pi2_rddata3_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi2_rddata3_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd36));
assign memtestsoc_csrbank8_dfii_pi2_rddata2_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi2_rddata2_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd37));
assign memtestsoc_csrbank8_dfii_pi2_rddata1_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi2_rddata1_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd38));
assign memtestsoc_csrbank8_dfii_pi2_rddata0_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi2_rddata0_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd39));
assign memtestsoc_csrbank8_dfii_pi3_command0_r = memtestsoc_interface8_dat_w[5:0];
assign memtestsoc_csrbank8_dfii_pi3_command0_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd40));
assign controllerinjector_phaseinjector3_command_issue_r = memtestsoc_interface8_dat_w[0];
assign controllerinjector_phaseinjector3_command_issue_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd41));
assign memtestsoc_csrbank8_dfii_pi3_address1_r = memtestsoc_interface8_dat_w[5:0];
assign memtestsoc_csrbank8_dfii_pi3_address1_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd42));
assign memtestsoc_csrbank8_dfii_pi3_address0_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi3_address0_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd43));
assign memtestsoc_csrbank8_dfii_pi3_baddress0_r = memtestsoc_interface8_dat_w[2:0];
assign memtestsoc_csrbank8_dfii_pi3_baddress0_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd44));
assign memtestsoc_csrbank8_dfii_pi3_wrdata3_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi3_wrdata3_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd45));
assign memtestsoc_csrbank8_dfii_pi3_wrdata2_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi3_wrdata2_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd46));
assign memtestsoc_csrbank8_dfii_pi3_wrdata1_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi3_wrdata1_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd47));
assign memtestsoc_csrbank8_dfii_pi3_wrdata0_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi3_wrdata0_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd48));
assign memtestsoc_csrbank8_dfii_pi3_rddata3_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi3_rddata3_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd49));
assign memtestsoc_csrbank8_dfii_pi3_rddata2_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi3_rddata2_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd50));
assign memtestsoc_csrbank8_dfii_pi3_rddata1_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi3_rddata1_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd51));
assign memtestsoc_csrbank8_dfii_pi3_rddata0_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_dfii_pi3_rddata0_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd52));
assign controllerinjector_bandwidth_update_r = memtestsoc_interface8_dat_w[0];
assign controllerinjector_bandwidth_update_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd53));
assign memtestsoc_csrbank8_controller_bandwidth_nreads2_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_controller_bandwidth_nreads2_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd54));
assign memtestsoc_csrbank8_controller_bandwidth_nreads1_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_controller_bandwidth_nreads1_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd55));
assign memtestsoc_csrbank8_controller_bandwidth_nreads0_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_controller_bandwidth_nreads0_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd56));
assign memtestsoc_csrbank8_controller_bandwidth_nwrites2_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_controller_bandwidth_nwrites2_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd57));
assign memtestsoc_csrbank8_controller_bandwidth_nwrites1_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_controller_bandwidth_nwrites1_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd58));
assign memtestsoc_csrbank8_controller_bandwidth_nwrites0_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_controller_bandwidth_nwrites0_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd59));
assign memtestsoc_csrbank8_controller_bandwidth_data_width_r = memtestsoc_interface8_dat_w[7:0];
assign memtestsoc_csrbank8_controller_bandwidth_data_width_re = ((memtestsoc_csrbank8_sel & memtestsoc_interface8_we) & (memtestsoc_interface8_adr[5:0] == 6'd60));
assign controllerinjector_storage = controllerinjector_storage_full[3:0];
assign memtestsoc_csrbank8_dfii_control0_w = controllerinjector_storage_full[3:0];
assign controllerinjector_phaseinjector0_command_storage = controllerinjector_phaseinjector0_command_storage_full[5:0];
assign memtestsoc_csrbank8_dfii_pi0_command0_w = controllerinjector_phaseinjector0_command_storage_full[5:0];
assign controllerinjector_phaseinjector0_address_storage = controllerinjector_phaseinjector0_address_storage_full[13:0];
assign memtestsoc_csrbank8_dfii_pi0_address1_w = controllerinjector_phaseinjector0_address_storage_full[13:8];
assign memtestsoc_csrbank8_dfii_pi0_address0_w = controllerinjector_phaseinjector0_address_storage_full[7:0];
assign controllerinjector_phaseinjector0_baddress_storage = controllerinjector_phaseinjector0_baddress_storage_full[2:0];
assign memtestsoc_csrbank8_dfii_pi0_baddress0_w = controllerinjector_phaseinjector0_baddress_storage_full[2:0];
assign controllerinjector_phaseinjector0_wrdata_storage = controllerinjector_phaseinjector0_wrdata_storage_full[31:0];
assign memtestsoc_csrbank8_dfii_pi0_wrdata3_w = controllerinjector_phaseinjector0_wrdata_storage_full[31:24];
assign memtestsoc_csrbank8_dfii_pi0_wrdata2_w = controllerinjector_phaseinjector0_wrdata_storage_full[23:16];
assign memtestsoc_csrbank8_dfii_pi0_wrdata1_w = controllerinjector_phaseinjector0_wrdata_storage_full[15:8];
assign memtestsoc_csrbank8_dfii_pi0_wrdata0_w = controllerinjector_phaseinjector0_wrdata_storage_full[7:0];
assign memtestsoc_csrbank8_dfii_pi0_rddata3_w = controllerinjector_phaseinjector0_status[31:24];
assign memtestsoc_csrbank8_dfii_pi0_rddata2_w = controllerinjector_phaseinjector0_status[23:16];
assign memtestsoc_csrbank8_dfii_pi0_rddata1_w = controllerinjector_phaseinjector0_status[15:8];
assign memtestsoc_csrbank8_dfii_pi0_rddata0_w = controllerinjector_phaseinjector0_status[7:0];
assign controllerinjector_phaseinjector1_command_storage = controllerinjector_phaseinjector1_command_storage_full[5:0];
assign memtestsoc_csrbank8_dfii_pi1_command0_w = controllerinjector_phaseinjector1_command_storage_full[5:0];
assign controllerinjector_phaseinjector1_address_storage = controllerinjector_phaseinjector1_address_storage_full[13:0];
assign memtestsoc_csrbank8_dfii_pi1_address1_w = controllerinjector_phaseinjector1_address_storage_full[13:8];
assign memtestsoc_csrbank8_dfii_pi1_address0_w = controllerinjector_phaseinjector1_address_storage_full[7:0];
assign controllerinjector_phaseinjector1_baddress_storage = controllerinjector_phaseinjector1_baddress_storage_full[2:0];
assign memtestsoc_csrbank8_dfii_pi1_baddress0_w = controllerinjector_phaseinjector1_baddress_storage_full[2:0];
assign controllerinjector_phaseinjector1_wrdata_storage = controllerinjector_phaseinjector1_wrdata_storage_full[31:0];
assign memtestsoc_csrbank8_dfii_pi1_wrdata3_w = controllerinjector_phaseinjector1_wrdata_storage_full[31:24];
assign memtestsoc_csrbank8_dfii_pi1_wrdata2_w = controllerinjector_phaseinjector1_wrdata_storage_full[23:16];
assign memtestsoc_csrbank8_dfii_pi1_wrdata1_w = controllerinjector_phaseinjector1_wrdata_storage_full[15:8];
assign memtestsoc_csrbank8_dfii_pi1_wrdata0_w = controllerinjector_phaseinjector1_wrdata_storage_full[7:0];
assign memtestsoc_csrbank8_dfii_pi1_rddata3_w = controllerinjector_phaseinjector1_status[31:24];
assign memtestsoc_csrbank8_dfii_pi1_rddata2_w = controllerinjector_phaseinjector1_status[23:16];
assign memtestsoc_csrbank8_dfii_pi1_rddata1_w = controllerinjector_phaseinjector1_status[15:8];
assign memtestsoc_csrbank8_dfii_pi1_rddata0_w = controllerinjector_phaseinjector1_status[7:0];
assign controllerinjector_phaseinjector2_command_storage = controllerinjector_phaseinjector2_command_storage_full[5:0];
assign memtestsoc_csrbank8_dfii_pi2_command0_w = controllerinjector_phaseinjector2_command_storage_full[5:0];
assign controllerinjector_phaseinjector2_address_storage = controllerinjector_phaseinjector2_address_storage_full[13:0];
assign memtestsoc_csrbank8_dfii_pi2_address1_w = controllerinjector_phaseinjector2_address_storage_full[13:8];
assign memtestsoc_csrbank8_dfii_pi2_address0_w = controllerinjector_phaseinjector2_address_storage_full[7:0];
assign controllerinjector_phaseinjector2_baddress_storage = controllerinjector_phaseinjector2_baddress_storage_full[2:0];
assign memtestsoc_csrbank8_dfii_pi2_baddress0_w = controllerinjector_phaseinjector2_baddress_storage_full[2:0];
assign controllerinjector_phaseinjector2_wrdata_storage = controllerinjector_phaseinjector2_wrdata_storage_full[31:0];
assign memtestsoc_csrbank8_dfii_pi2_wrdata3_w = controllerinjector_phaseinjector2_wrdata_storage_full[31:24];
assign memtestsoc_csrbank8_dfii_pi2_wrdata2_w = controllerinjector_phaseinjector2_wrdata_storage_full[23:16];
assign memtestsoc_csrbank8_dfii_pi2_wrdata1_w = controllerinjector_phaseinjector2_wrdata_storage_full[15:8];
assign memtestsoc_csrbank8_dfii_pi2_wrdata0_w = controllerinjector_phaseinjector2_wrdata_storage_full[7:0];
assign memtestsoc_csrbank8_dfii_pi2_rddata3_w = controllerinjector_phaseinjector2_status[31:24];
assign memtestsoc_csrbank8_dfii_pi2_rddata2_w = controllerinjector_phaseinjector2_status[23:16];
assign memtestsoc_csrbank8_dfii_pi2_rddata1_w = controllerinjector_phaseinjector2_status[15:8];
assign memtestsoc_csrbank8_dfii_pi2_rddata0_w = controllerinjector_phaseinjector2_status[7:0];
assign controllerinjector_phaseinjector3_command_storage = controllerinjector_phaseinjector3_command_storage_full[5:0];
assign memtestsoc_csrbank8_dfii_pi3_command0_w = controllerinjector_phaseinjector3_command_storage_full[5:0];
assign controllerinjector_phaseinjector3_address_storage = controllerinjector_phaseinjector3_address_storage_full[13:0];
assign memtestsoc_csrbank8_dfii_pi3_address1_w = controllerinjector_phaseinjector3_address_storage_full[13:8];
assign memtestsoc_csrbank8_dfii_pi3_address0_w = controllerinjector_phaseinjector3_address_storage_full[7:0];
assign controllerinjector_phaseinjector3_baddress_storage = controllerinjector_phaseinjector3_baddress_storage_full[2:0];
assign memtestsoc_csrbank8_dfii_pi3_baddress0_w = controllerinjector_phaseinjector3_baddress_storage_full[2:0];
assign controllerinjector_phaseinjector3_wrdata_storage = controllerinjector_phaseinjector3_wrdata_storage_full[31:0];
assign memtestsoc_csrbank8_dfii_pi3_wrdata3_w = controllerinjector_phaseinjector3_wrdata_storage_full[31:24];
assign memtestsoc_csrbank8_dfii_pi3_wrdata2_w = controllerinjector_phaseinjector3_wrdata_storage_full[23:16];
assign memtestsoc_csrbank8_dfii_pi3_wrdata1_w = controllerinjector_phaseinjector3_wrdata_storage_full[15:8];
assign memtestsoc_csrbank8_dfii_pi3_wrdata0_w = controllerinjector_phaseinjector3_wrdata_storage_full[7:0];
assign memtestsoc_csrbank8_dfii_pi3_rddata3_w = controllerinjector_phaseinjector3_status[31:24];
assign memtestsoc_csrbank8_dfii_pi3_rddata2_w = controllerinjector_phaseinjector3_status[23:16];
assign memtestsoc_csrbank8_dfii_pi3_rddata1_w = controllerinjector_phaseinjector3_status[15:8];
assign memtestsoc_csrbank8_dfii_pi3_rddata0_w = controllerinjector_phaseinjector3_status[7:0];
assign memtestsoc_csrbank8_controller_bandwidth_nreads2_w = controllerinjector_bandwidth_nreads_status[23:16];
assign memtestsoc_csrbank8_controller_bandwidth_nreads1_w = controllerinjector_bandwidth_nreads_status[15:8];
assign memtestsoc_csrbank8_controller_bandwidth_nreads0_w = controllerinjector_bandwidth_nreads_status[7:0];
assign memtestsoc_csrbank8_controller_bandwidth_nwrites2_w = controllerinjector_bandwidth_nwrites_status[23:16];
assign memtestsoc_csrbank8_controller_bandwidth_nwrites1_w = controllerinjector_bandwidth_nwrites_status[15:8];
assign memtestsoc_csrbank8_controller_bandwidth_nwrites0_w = controllerinjector_bandwidth_nwrites_status[7:0];
assign memtestsoc_csrbank8_controller_bandwidth_data_width_w = controllerinjector_bandwidth_data_width_status[7:0];
assign memtestsoc_csrbank9_sel = (memtestsoc_interface9_adr[13:9] == 3'd4);
assign memtestsoc_csrbank9_load3_r = memtestsoc_interface9_dat_w[7:0];
assign memtestsoc_csrbank9_load3_re = ((memtestsoc_csrbank9_sel & memtestsoc_interface9_we) & (memtestsoc_interface9_adr[4:0] == 1'd0));
assign memtestsoc_csrbank9_load2_r = memtestsoc_interface9_dat_w[7:0];
assign memtestsoc_csrbank9_load2_re = ((memtestsoc_csrbank9_sel & memtestsoc_interface9_we) & (memtestsoc_interface9_adr[4:0] == 1'd1));
assign memtestsoc_csrbank9_load1_r = memtestsoc_interface9_dat_w[7:0];
assign memtestsoc_csrbank9_load1_re = ((memtestsoc_csrbank9_sel & memtestsoc_interface9_we) & (memtestsoc_interface9_adr[4:0] == 2'd2));
assign memtestsoc_csrbank9_load0_r = memtestsoc_interface9_dat_w[7:0];
assign memtestsoc_csrbank9_load0_re = ((memtestsoc_csrbank9_sel & memtestsoc_interface9_we) & (memtestsoc_interface9_adr[4:0] == 2'd3));
assign memtestsoc_csrbank9_reload3_r = memtestsoc_interface9_dat_w[7:0];
assign memtestsoc_csrbank9_reload3_re = ((memtestsoc_csrbank9_sel & memtestsoc_interface9_we) & (memtestsoc_interface9_adr[4:0] == 3'd4));
assign memtestsoc_csrbank9_reload2_r = memtestsoc_interface9_dat_w[7:0];
assign memtestsoc_csrbank9_reload2_re = ((memtestsoc_csrbank9_sel & memtestsoc_interface9_we) & (memtestsoc_interface9_adr[4:0] == 3'd5));
assign memtestsoc_csrbank9_reload1_r = memtestsoc_interface9_dat_w[7:0];
assign memtestsoc_csrbank9_reload1_re = ((memtestsoc_csrbank9_sel & memtestsoc_interface9_we) & (memtestsoc_interface9_adr[4:0] == 3'd6));
assign memtestsoc_csrbank9_reload0_r = memtestsoc_interface9_dat_w[7:0];
assign memtestsoc_csrbank9_reload0_re = ((memtestsoc_csrbank9_sel & memtestsoc_interface9_we) & (memtestsoc_interface9_adr[4:0] == 3'd7));
assign memtestsoc_csrbank9_en0_r = memtestsoc_interface9_dat_w[0];
assign memtestsoc_csrbank9_en0_re = ((memtestsoc_csrbank9_sel & memtestsoc_interface9_we) & (memtestsoc_interface9_adr[4:0] == 4'd8));
assign memtestsoc_update_value_r = memtestsoc_interface9_dat_w[0];
assign memtestsoc_update_value_re = ((memtestsoc_csrbank9_sel & memtestsoc_interface9_we) & (memtestsoc_interface9_adr[4:0] == 4'd9));
assign memtestsoc_csrbank9_value3_r = memtestsoc_interface9_dat_w[7:0];
assign memtestsoc_csrbank9_value3_re = ((memtestsoc_csrbank9_sel & memtestsoc_interface9_we) & (memtestsoc_interface9_adr[4:0] == 4'd10));
assign memtestsoc_csrbank9_value2_r = memtestsoc_interface9_dat_w[7:0];
assign memtestsoc_csrbank9_value2_re = ((memtestsoc_csrbank9_sel & memtestsoc_interface9_we) & (memtestsoc_interface9_adr[4:0] == 4'd11));
assign memtestsoc_csrbank9_value1_r = memtestsoc_interface9_dat_w[7:0];
assign memtestsoc_csrbank9_value1_re = ((memtestsoc_csrbank9_sel & memtestsoc_interface9_we) & (memtestsoc_interface9_adr[4:0] == 4'd12));
assign memtestsoc_csrbank9_value0_r = memtestsoc_interface9_dat_w[7:0];
assign memtestsoc_csrbank9_value0_re = ((memtestsoc_csrbank9_sel & memtestsoc_interface9_we) & (memtestsoc_interface9_adr[4:0] == 4'd13));
assign memtestsoc_eventmanager_status_r = memtestsoc_interface9_dat_w[0];
assign memtestsoc_eventmanager_status_re = ((memtestsoc_csrbank9_sel & memtestsoc_interface9_we) & (memtestsoc_interface9_adr[4:0] == 4'd14));
assign memtestsoc_eventmanager_pending_r = memtestsoc_interface9_dat_w[0];
assign memtestsoc_eventmanager_pending_re = ((memtestsoc_csrbank9_sel & memtestsoc_interface9_we) & (memtestsoc_interface9_adr[4:0] == 4'd15));
assign memtestsoc_csrbank9_ev_enable0_r = memtestsoc_interface9_dat_w[0];
assign memtestsoc_csrbank9_ev_enable0_re = ((memtestsoc_csrbank9_sel & memtestsoc_interface9_we) & (memtestsoc_interface9_adr[4:0] == 5'd16));
assign memtestsoc_load_storage = memtestsoc_load_storage_full[31:0];
assign memtestsoc_csrbank9_load3_w = memtestsoc_load_storage_full[31:24];
assign memtestsoc_csrbank9_load2_w = memtestsoc_load_storage_full[23:16];
assign memtestsoc_csrbank9_load1_w = memtestsoc_load_storage_full[15:8];
assign memtestsoc_csrbank9_load0_w = memtestsoc_load_storage_full[7:0];
assign memtestsoc_reload_storage = memtestsoc_reload_storage_full[31:0];
assign memtestsoc_csrbank9_reload3_w = memtestsoc_reload_storage_full[31:24];
assign memtestsoc_csrbank9_reload2_w = memtestsoc_reload_storage_full[23:16];
assign memtestsoc_csrbank9_reload1_w = memtestsoc_reload_storage_full[15:8];
assign memtestsoc_csrbank9_reload0_w = memtestsoc_reload_storage_full[7:0];
assign memtestsoc_en_storage = memtestsoc_en_storage_full;
assign memtestsoc_csrbank9_en0_w = memtestsoc_en_storage_full;
assign memtestsoc_csrbank9_value3_w = memtestsoc_value_status[31:24];
assign memtestsoc_csrbank9_value2_w = memtestsoc_value_status[23:16];
assign memtestsoc_csrbank9_value1_w = memtestsoc_value_status[15:8];
assign memtestsoc_csrbank9_value0_w = memtestsoc_value_status[7:0];
assign memtestsoc_eventmanager_storage = memtestsoc_eventmanager_storage_full;
assign memtestsoc_csrbank9_ev_enable0_w = memtestsoc_eventmanager_storage_full;
assign memtestsoc_csrbank10_sel = (memtestsoc_interface10_adr[13:9] == 2'd2);
assign uart_rxtx_r = memtestsoc_interface10_dat_w[7:0];
assign uart_rxtx_re = ((memtestsoc_csrbank10_sel & memtestsoc_interface10_we) & (memtestsoc_interface10_adr[2:0] == 1'd0));
assign memtestsoc_csrbank10_txfull_r = memtestsoc_interface10_dat_w[0];
assign memtestsoc_csrbank10_txfull_re = ((memtestsoc_csrbank10_sel & memtestsoc_interface10_we) & (memtestsoc_interface10_adr[2:0] == 1'd1));
assign memtestsoc_csrbank10_rxempty_r = memtestsoc_interface10_dat_w[0];
assign memtestsoc_csrbank10_rxempty_re = ((memtestsoc_csrbank10_sel & memtestsoc_interface10_we) & (memtestsoc_interface10_adr[2:0] == 2'd2));
assign uart_status_r = memtestsoc_interface10_dat_w[1:0];
assign uart_status_re = ((memtestsoc_csrbank10_sel & memtestsoc_interface10_we) & (memtestsoc_interface10_adr[2:0] == 2'd3));
assign uart_pending_r = memtestsoc_interface10_dat_w[1:0];
assign uart_pending_re = ((memtestsoc_csrbank10_sel & memtestsoc_interface10_we) & (memtestsoc_interface10_adr[2:0] == 3'd4));
assign memtestsoc_csrbank10_ev_enable0_r = memtestsoc_interface10_dat_w[1:0];
assign memtestsoc_csrbank10_ev_enable0_re = ((memtestsoc_csrbank10_sel & memtestsoc_interface10_we) & (memtestsoc_interface10_adr[2:0] == 3'd5));
assign memtestsoc_csrbank10_txfull_w = uart_txfull_status;
assign memtestsoc_csrbank10_rxempty_w = uart_rxempty_status;
assign uart_storage = uart_storage_full[1:0];
assign memtestsoc_csrbank10_ev_enable0_w = uart_storage_full[1:0];
assign memtestsoc_interface0_adr = memtestsoc_interface_adr;
assign memtestsoc_interface1_adr = memtestsoc_interface_adr;
assign memtestsoc_interface2_adr = memtestsoc_interface_adr;
assign memtestsoc_interface3_adr = memtestsoc_interface_adr;
assign memtestsoc_interface4_adr = memtestsoc_interface_adr;
assign memtestsoc_interface5_adr = memtestsoc_interface_adr;
assign memtestsoc_interface6_adr = memtestsoc_interface_adr;
assign memtestsoc_interface7_adr = memtestsoc_interface_adr;
assign memtestsoc_interface8_adr = memtestsoc_interface_adr;
assign memtestsoc_interface9_adr = memtestsoc_interface_adr;
assign memtestsoc_interface10_adr = memtestsoc_interface_adr;
assign memtestsoc_interface0_we = memtestsoc_interface_we;
assign memtestsoc_interface1_we = memtestsoc_interface_we;
assign memtestsoc_interface2_we = memtestsoc_interface_we;
assign memtestsoc_interface3_we = memtestsoc_interface_we;
assign memtestsoc_interface4_we = memtestsoc_interface_we;
assign memtestsoc_interface5_we = memtestsoc_interface_we;
assign memtestsoc_interface6_we = memtestsoc_interface_we;
assign memtestsoc_interface7_we = memtestsoc_interface_we;
assign memtestsoc_interface8_we = memtestsoc_interface_we;
assign memtestsoc_interface9_we = memtestsoc_interface_we;
assign memtestsoc_interface10_we = memtestsoc_interface_we;
assign memtestsoc_interface0_dat_w = memtestsoc_interface_dat_w;
assign memtestsoc_interface1_dat_w = memtestsoc_interface_dat_w;
assign memtestsoc_interface2_dat_w = memtestsoc_interface_dat_w;
assign memtestsoc_interface3_dat_w = memtestsoc_interface_dat_w;
assign memtestsoc_interface4_dat_w = memtestsoc_interface_dat_w;
assign memtestsoc_interface5_dat_w = memtestsoc_interface_dat_w;
assign memtestsoc_interface6_dat_w = memtestsoc_interface_dat_w;
assign memtestsoc_interface7_dat_w = memtestsoc_interface_dat_w;
assign memtestsoc_interface8_dat_w = memtestsoc_interface_dat_w;
assign memtestsoc_interface9_dat_w = memtestsoc_interface_dat_w;
assign memtestsoc_interface10_dat_w = memtestsoc_interface_dat_w;
assign memtestsoc_interface_dat_r = ((((((((((memtestsoc_interface0_dat_r | memtestsoc_interface1_dat_r) | memtestsoc_interface2_dat_r) | memtestsoc_interface3_dat_r) | memtestsoc_interface4_dat_r) | memtestsoc_interface5_dat_r) | memtestsoc_interface6_dat_r) | memtestsoc_interface7_dat_r) | memtestsoc_interface8_dat_r) | memtestsoc_interface9_dat_r) | memtestsoc_interface10_dat_r);
assign slice_proxy0 = half_rate_phy_record2_wrdata[31:16];
assign slice_proxy1 = half_rate_phy_record2_wrdata[15:0];
assign slice_proxy2 = half_rate_phy_record3_wrdata[31:16];
assign slice_proxy3 = half_rate_phy_record3_wrdata[15:0];
assign slice_proxy4 = half_rate_phy_record2_wrdata[31:16];
assign slice_proxy5 = half_rate_phy_record2_wrdata[15:0];
assign slice_proxy6 = half_rate_phy_record3_wrdata[31:16];
assign slice_proxy7 = half_rate_phy_record3_wrdata[15:0];
assign slice_proxy8 = half_rate_phy_record2_wrdata[31:16];
assign slice_proxy9 = half_rate_phy_record2_wrdata[15:0];
assign slice_proxy10 = half_rate_phy_record3_wrdata[31:16];
assign slice_proxy11 = half_rate_phy_record3_wrdata[15:0];
assign slice_proxy12 = half_rate_phy_record2_wrdata[31:16];
assign slice_proxy13 = half_rate_phy_record2_wrdata[15:0];
assign slice_proxy14 = half_rate_phy_record3_wrdata[31:16];
assign slice_proxy15 = half_rate_phy_record3_wrdata[15:0];
assign slice_proxy16 = half_rate_phy_record2_wrdata[31:16];
assign slice_proxy17 = half_rate_phy_record2_wrdata[15:0];
assign slice_proxy18 = half_rate_phy_record3_wrdata[31:16];
assign slice_proxy19 = half_rate_phy_record3_wrdata[15:0];
assign slice_proxy20 = half_rate_phy_record2_wrdata[31:16];
assign slice_proxy21 = half_rate_phy_record2_wrdata[15:0];
assign slice_proxy22 = half_rate_phy_record3_wrdata[31:16];
assign slice_proxy23 = half_rate_phy_record3_wrdata[15:0];
assign slice_proxy24 = half_rate_phy_record2_wrdata[31:16];
assign slice_proxy25 = half_rate_phy_record2_wrdata[15:0];
assign slice_proxy26 = half_rate_phy_record3_wrdata[31:16];
assign slice_proxy27 = half_rate_phy_record3_wrdata[15:0];
assign slice_proxy28 = half_rate_phy_record2_wrdata[31:16];
assign slice_proxy29 = half_rate_phy_record2_wrdata[15:0];
assign slice_proxy30 = half_rate_phy_record3_wrdata[31:16];
assign slice_proxy31 = half_rate_phy_record3_wrdata[15:0];
assign slice_proxy32 = half_rate_phy_record2_wrdata[31:16];
assign slice_proxy33 = half_rate_phy_record2_wrdata[15:0];
assign slice_proxy34 = half_rate_phy_record3_wrdata[31:16];
assign slice_proxy35 = half_rate_phy_record3_wrdata[15:0];
assign slice_proxy36 = half_rate_phy_record2_wrdata[31:16];
assign slice_proxy37 = half_rate_phy_record2_wrdata[15:0];
assign slice_proxy38 = half_rate_phy_record3_wrdata[31:16];
assign slice_proxy39 = half_rate_phy_record3_wrdata[15:0];
assign slice_proxy40 = half_rate_phy_record2_wrdata[31:16];
assign slice_proxy41 = half_rate_phy_record2_wrdata[15:0];
assign slice_proxy42 = half_rate_phy_record3_wrdata[31:16];
assign slice_proxy43 = half_rate_phy_record3_wrdata[15:0];
assign slice_proxy44 = half_rate_phy_record2_wrdata[31:16];
assign slice_proxy45 = half_rate_phy_record2_wrdata[15:0];
assign slice_proxy46 = half_rate_phy_record3_wrdata[31:16];
assign slice_proxy47 = half_rate_phy_record3_wrdata[15:0];
assign slice_proxy48 = half_rate_phy_record2_wrdata[31:16];
assign slice_proxy49 = half_rate_phy_record2_wrdata[15:0];
assign slice_proxy50 = half_rate_phy_record3_wrdata[31:16];
assign slice_proxy51 = half_rate_phy_record3_wrdata[15:0];
assign slice_proxy52 = half_rate_phy_record2_wrdata[31:16];
assign slice_proxy53 = half_rate_phy_record2_wrdata[15:0];
assign slice_proxy54 = half_rate_phy_record3_wrdata[31:16];
assign slice_proxy55 = half_rate_phy_record3_wrdata[15:0];
assign slice_proxy56 = half_rate_phy_record2_wrdata[31:16];
assign slice_proxy57 = half_rate_phy_record2_wrdata[15:0];
assign slice_proxy58 = half_rate_phy_record3_wrdata[31:16];
assign slice_proxy59 = half_rate_phy_record3_wrdata[15:0];
assign slice_proxy60 = half_rate_phy_record2_wrdata[31:16];
assign slice_proxy61 = half_rate_phy_record2_wrdata[15:0];
assign slice_proxy62 = half_rate_phy_record3_wrdata[31:16];
assign slice_proxy63 = half_rate_phy_record3_wrdata[15:0];
assign slice_proxy64 = half_rate_phy_record2_wrdata_mask[3:2];
assign slice_proxy65 = half_rate_phy_record2_wrdata_mask[1:0];
assign slice_proxy66 = half_rate_phy_record3_wrdata_mask[3:2];
assign slice_proxy67 = half_rate_phy_record3_wrdata_mask[1:0];
assign slice_proxy68 = half_rate_phy_record2_wrdata_mask[3:2];
assign slice_proxy69 = half_rate_phy_record2_wrdata_mask[1:0];
assign slice_proxy70 = half_rate_phy_record3_wrdata_mask[3:2];
assign slice_proxy71 = half_rate_phy_record3_wrdata_mask[1:0];

// synthesis translate_off
reg dummy_d_122;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_122 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_123;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed1 <= 14'd0;
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
// synthesis translate_off
	dummy_d_123 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_124;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_124 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_125;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_125 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_126;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_126 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_127;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_127 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_128;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_128 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_129;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_129 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_130;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_130 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_131;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_131 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_132;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed7 <= 14'd0;
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
// synthesis translate_off
	dummy_d_132 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_133;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_133 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_134;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_134 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_135;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_135 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_136;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_136 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_137;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_137 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_138;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_138 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_139;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_139 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_140;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed12 <= 21'd0;
	case (controllerinjector_roundrobin0_grant)
		1'd0: begin
			rhs_array_muxed12 <= controllerinjector_rca0;
		end
		1'd1: begin
			rhs_array_muxed12 <= controllerinjector_rca1;
		end
		default: begin
			rhs_array_muxed12 <= controllerinjector_rca2;
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
	rhs_array_muxed13 <= 1'd0;
	case (controllerinjector_roundrobin0_grant)
		1'd0: begin
			rhs_array_muxed13 <= port_cmd_payload_we;
		end
		1'd1: begin
			rhs_array_muxed13 <= litedramport0_cmd_payload_we0;
		end
		default: begin
			rhs_array_muxed13 <= litedramport1_cmd_payload_we0;
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
	rhs_array_muxed14 <= 1'd0;
	case (controllerinjector_roundrobin0_grant)
		1'd0: begin
			rhs_array_muxed14 <= (((controllerinjector_cba0 == 1'd0) & (~(((((((1'd0 | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd0))))) & port_cmd_valid);
		end
		1'd1: begin
			rhs_array_muxed14 <= (((controllerinjector_cba1 == 1'd0) & (~(((((((1'd0 | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd1))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd1))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd1))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd1))))) & litedramport0_cmd_valid0);
		end
		default: begin
			rhs_array_muxed14 <= (((controllerinjector_cba2 == 1'd0) & (~(((((((1'd0 | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 2'd2))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 2'd2))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 2'd2))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 2'd2))))) & litedramport1_cmd_valid0);
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
	rhs_array_muxed15 <= 21'd0;
	case (controllerinjector_roundrobin1_grant)
		1'd0: begin
			rhs_array_muxed15 <= controllerinjector_rca0;
		end
		1'd1: begin
			rhs_array_muxed15 <= controllerinjector_rca1;
		end
		default: begin
			rhs_array_muxed15 <= controllerinjector_rca2;
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
	rhs_array_muxed16 <= 1'd0;
	case (controllerinjector_roundrobin1_grant)
		1'd0: begin
			rhs_array_muxed16 <= port_cmd_payload_we;
		end
		1'd1: begin
			rhs_array_muxed16 <= litedramport0_cmd_payload_we0;
		end
		default: begin
			rhs_array_muxed16 <= litedramport1_cmd_payload_we0;
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
	rhs_array_muxed17 <= 1'd0;
	case (controllerinjector_roundrobin1_grant)
		1'd0: begin
			rhs_array_muxed17 <= (((controllerinjector_cba0 == 1'd1) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd0))))) & port_cmd_valid);
		end
		1'd1: begin
			rhs_array_muxed17 <= (((controllerinjector_cba1 == 1'd1) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd1))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd1))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd1))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd1))))) & litedramport0_cmd_valid0);
		end
		default: begin
			rhs_array_muxed17 <= (((controllerinjector_cba2 == 1'd1) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 2'd2))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 2'd2))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 2'd2))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 2'd2))))) & litedramport1_cmd_valid0);
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
	rhs_array_muxed18 <= 21'd0;
	case (controllerinjector_roundrobin2_grant)
		1'd0: begin
			rhs_array_muxed18 <= controllerinjector_rca0;
		end
		1'd1: begin
			rhs_array_muxed18 <= controllerinjector_rca1;
		end
		default: begin
			rhs_array_muxed18 <= controllerinjector_rca2;
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
	rhs_array_muxed19 <= 1'd0;
	case (controllerinjector_roundrobin2_grant)
		1'd0: begin
			rhs_array_muxed19 <= port_cmd_payload_we;
		end
		1'd1: begin
			rhs_array_muxed19 <= litedramport0_cmd_payload_we0;
		end
		default: begin
			rhs_array_muxed19 <= litedramport1_cmd_payload_we0;
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
	rhs_array_muxed20 <= 1'd0;
	case (controllerinjector_roundrobin2_grant)
		1'd0: begin
			rhs_array_muxed20 <= (((controllerinjector_cba0 == 2'd2) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd0))))) & port_cmd_valid);
		end
		1'd1: begin
			rhs_array_muxed20 <= (((controllerinjector_cba1 == 2'd2) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd1))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd1))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd1))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd1))))) & litedramport0_cmd_valid0);
		end
		default: begin
			rhs_array_muxed20 <= (((controllerinjector_cba2 == 2'd2) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 2'd2))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 2'd2))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 2'd2))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 2'd2))))) & litedramport1_cmd_valid0);
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
	rhs_array_muxed21 <= 21'd0;
	case (controllerinjector_roundrobin3_grant)
		1'd0: begin
			rhs_array_muxed21 <= controllerinjector_rca0;
		end
		1'd1: begin
			rhs_array_muxed21 <= controllerinjector_rca1;
		end
		default: begin
			rhs_array_muxed21 <= controllerinjector_rca2;
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
	rhs_array_muxed22 <= 1'd0;
	case (controllerinjector_roundrobin3_grant)
		1'd0: begin
			rhs_array_muxed22 <= port_cmd_payload_we;
		end
		1'd1: begin
			rhs_array_muxed22 <= litedramport0_cmd_payload_we0;
		end
		default: begin
			rhs_array_muxed22 <= litedramport1_cmd_payload_we0;
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
	rhs_array_muxed23 <= 1'd0;
	case (controllerinjector_roundrobin3_grant)
		1'd0: begin
			rhs_array_muxed23 <= (((controllerinjector_cba0 == 2'd3) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd0))))) & port_cmd_valid);
		end
		1'd1: begin
			rhs_array_muxed23 <= (((controllerinjector_cba1 == 2'd3) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd1))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd1))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd1))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd1))))) & litedramport0_cmd_valid0);
		end
		default: begin
			rhs_array_muxed23 <= (((controllerinjector_cba2 == 2'd3) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 2'd2))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 2'd2))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 2'd2))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 2'd2))))) & litedramport1_cmd_valid0);
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
	rhs_array_muxed24 <= 21'd0;
	case (controllerinjector_roundrobin4_grant)
		1'd0: begin
			rhs_array_muxed24 <= controllerinjector_rca0;
		end
		1'd1: begin
			rhs_array_muxed24 <= controllerinjector_rca1;
		end
		default: begin
			rhs_array_muxed24 <= controllerinjector_rca2;
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
	rhs_array_muxed25 <= 1'd0;
	case (controllerinjector_roundrobin4_grant)
		1'd0: begin
			rhs_array_muxed25 <= port_cmd_payload_we;
		end
		1'd1: begin
			rhs_array_muxed25 <= litedramport0_cmd_payload_we0;
		end
		default: begin
			rhs_array_muxed25 <= litedramport1_cmd_payload_we0;
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
	rhs_array_muxed26 <= 1'd0;
	case (controllerinjector_roundrobin4_grant)
		1'd0: begin
			rhs_array_muxed26 <= (((controllerinjector_cba0 == 3'd4) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd0))))) & port_cmd_valid);
		end
		1'd1: begin
			rhs_array_muxed26 <= (((controllerinjector_cba1 == 3'd4) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd1))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd1))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd1))))) & litedramport0_cmd_valid0);
		end
		default: begin
			rhs_array_muxed26 <= (((controllerinjector_cba2 == 3'd4) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 2'd2))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 2'd2))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 2'd2))))) & litedramport1_cmd_valid0);
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
	rhs_array_muxed27 <= 21'd0;
	case (controllerinjector_roundrobin5_grant)
		1'd0: begin
			rhs_array_muxed27 <= controllerinjector_rca0;
		end
		1'd1: begin
			rhs_array_muxed27 <= controllerinjector_rca1;
		end
		default: begin
			rhs_array_muxed27 <= controllerinjector_rca2;
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
	rhs_array_muxed28 <= 1'd0;
	case (controllerinjector_roundrobin5_grant)
		1'd0: begin
			rhs_array_muxed28 <= port_cmd_payload_we;
		end
		1'd1: begin
			rhs_array_muxed28 <= litedramport0_cmd_payload_we0;
		end
		default: begin
			rhs_array_muxed28 <= litedramport1_cmd_payload_we0;
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
	rhs_array_muxed29 <= 1'd0;
	case (controllerinjector_roundrobin5_grant)
		1'd0: begin
			rhs_array_muxed29 <= (((controllerinjector_cba0 == 3'd5) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd0))))) & port_cmd_valid);
		end
		1'd1: begin
			rhs_array_muxed29 <= (((controllerinjector_cba1 == 3'd5) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd1))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd1))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd1))))) & litedramport0_cmd_valid0);
		end
		default: begin
			rhs_array_muxed29 <= (((controllerinjector_cba2 == 3'd5) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 2'd2))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 2'd2))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 2'd2))))) & litedramport1_cmd_valid0);
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
	rhs_array_muxed30 <= 21'd0;
	case (controllerinjector_roundrobin6_grant)
		1'd0: begin
			rhs_array_muxed30 <= controllerinjector_rca0;
		end
		1'd1: begin
			rhs_array_muxed30 <= controllerinjector_rca1;
		end
		default: begin
			rhs_array_muxed30 <= controllerinjector_rca2;
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
	rhs_array_muxed31 <= 1'd0;
	case (controllerinjector_roundrobin6_grant)
		1'd0: begin
			rhs_array_muxed31 <= port_cmd_payload_we;
		end
		1'd1: begin
			rhs_array_muxed31 <= litedramport0_cmd_payload_we0;
		end
		default: begin
			rhs_array_muxed31 <= litedramport1_cmd_payload_we0;
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
	rhs_array_muxed32 <= 1'd0;
	case (controllerinjector_roundrobin6_grant)
		1'd0: begin
			rhs_array_muxed32 <= (((controllerinjector_cba0 == 3'd6) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd0))))) & port_cmd_valid);
		end
		1'd1: begin
			rhs_array_muxed32 <= (((controllerinjector_cba1 == 3'd6) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd1))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd1))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 1'd1))))) & litedramport0_cmd_valid0);
		end
		default: begin
			rhs_array_muxed32 <= (((controllerinjector_cba2 == 3'd6) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 2'd2))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 2'd2))) | (controllerinjector_interface_bank7_lock & (controllerinjector_roundrobin7_grant == 2'd2))))) & litedramport1_cmd_valid0);
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
	rhs_array_muxed33 <= 21'd0;
	case (controllerinjector_roundrobin7_grant)
		1'd0: begin
			rhs_array_muxed33 <= controllerinjector_rca0;
		end
		1'd1: begin
			rhs_array_muxed33 <= controllerinjector_rca1;
		end
		default: begin
			rhs_array_muxed33 <= controllerinjector_rca2;
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
	rhs_array_muxed34 <= 1'd0;
	case (controllerinjector_roundrobin7_grant)
		1'd0: begin
			rhs_array_muxed34 <= port_cmd_payload_we;
		end
		1'd1: begin
			rhs_array_muxed34 <= litedramport0_cmd_payload_we0;
		end
		default: begin
			rhs_array_muxed34 <= litedramport1_cmd_payload_we0;
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
	rhs_array_muxed35 <= 1'd0;
	case (controllerinjector_roundrobin7_grant)
		1'd0: begin
			rhs_array_muxed35 <= (((controllerinjector_cba0 == 3'd7) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd0))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd0))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd0))))) & port_cmd_valid);
		end
		1'd1: begin
			rhs_array_muxed35 <= (((controllerinjector_cba1 == 3'd7) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 1'd1))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 1'd1))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 1'd1))))) & litedramport0_cmd_valid0);
		end
		default: begin
			rhs_array_muxed35 <= (((controllerinjector_cba2 == 3'd7) & (~(((((((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2))) | (controllerinjector_interface_bank4_lock & (controllerinjector_roundrobin4_grant == 2'd2))) | (controllerinjector_interface_bank5_lock & (controllerinjector_roundrobin5_grant == 2'd2))) | (controllerinjector_interface_bank6_lock & (controllerinjector_roundrobin6_grant == 2'd2))))) & litedramport1_cmd_valid0);
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
	rhs_array_muxed36 <= 30'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed36 <= interface1_wb_sdram_adr;
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
	rhs_array_muxed37 <= 32'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed37 <= interface1_wb_sdram_dat_w;
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
	rhs_array_muxed38 <= 4'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed38 <= interface1_wb_sdram_sel;
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
	rhs_array_muxed39 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed39 <= interface1_wb_sdram_cyc;
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
	rhs_array_muxed40 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed40 <= interface1_wb_sdram_stb;
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
	rhs_array_muxed41 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed41 <= interface1_wb_sdram_we;
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
	rhs_array_muxed42 <= 3'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed42 <= interface1_wb_sdram_cti;
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
	rhs_array_muxed43 <= 2'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed43 <= interface1_wb_sdram_bte;
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
	rhs_array_muxed44 <= 30'd0;
	case (memtestsoc_grant)
		1'd0: begin
			rhs_array_muxed44 <= memtestsoc_ibus_adr;
		end
		default: begin
			rhs_array_muxed44 <= memtestsoc_dbus_adr;
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
	rhs_array_muxed45 <= 32'd0;
	case (memtestsoc_grant)
		1'd0: begin
			rhs_array_muxed45 <= memtestsoc_ibus_dat_w;
		end
		default: begin
			rhs_array_muxed45 <= memtestsoc_dbus_dat_w;
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
	rhs_array_muxed46 <= 4'd0;
	case (memtestsoc_grant)
		1'd0: begin
			rhs_array_muxed46 <= memtestsoc_ibus_sel;
		end
		default: begin
			rhs_array_muxed46 <= memtestsoc_dbus_sel;
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
	rhs_array_muxed47 <= 1'd0;
	case (memtestsoc_grant)
		1'd0: begin
			rhs_array_muxed47 <= memtestsoc_ibus_cyc;
		end
		default: begin
			rhs_array_muxed47 <= memtestsoc_dbus_cyc;
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
	rhs_array_muxed48 <= 1'd0;
	case (memtestsoc_grant)
		1'd0: begin
			rhs_array_muxed48 <= memtestsoc_ibus_stb;
		end
		default: begin
			rhs_array_muxed48 <= memtestsoc_dbus_stb;
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
	rhs_array_muxed49 <= 1'd0;
	case (memtestsoc_grant)
		1'd0: begin
			rhs_array_muxed49 <= memtestsoc_ibus_we;
		end
		default: begin
			rhs_array_muxed49 <= memtestsoc_dbus_we;
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
	rhs_array_muxed50 <= 3'd0;
	case (memtestsoc_grant)
		1'd0: begin
			rhs_array_muxed50 <= memtestsoc_ibus_cti;
		end
		default: begin
			rhs_array_muxed50 <= memtestsoc_dbus_cti;
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
	rhs_array_muxed51 <= 2'd0;
	case (memtestsoc_grant)
		1'd0: begin
			rhs_array_muxed51 <= memtestsoc_ibus_bte;
		end
		default: begin
			rhs_array_muxed51 <= memtestsoc_dbus_bte;
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
	array_muxed0 <= 15'd0;
	case (half_rate_phy_phase_sel)
		1'd0: begin
			array_muxed0 <= half_rate_phy_record0_address;
		end
		default: begin
			array_muxed0 <= half_rate_phy_record1_address;
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
	array_muxed1 <= 3'd0;
	case (half_rate_phy_phase_sel)
		1'd0: begin
			array_muxed1 <= half_rate_phy_record0_bank;
		end
		default: begin
			array_muxed1 <= half_rate_phy_record1_bank;
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
	array_muxed2 <= 1'd0;
	case (half_rate_phy_phase_sel)
		1'd0: begin
			array_muxed2 <= half_rate_phy_record0_cke;
		end
		default: begin
			array_muxed2 <= half_rate_phy_record1_cke;
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
	array_muxed3 <= 1'd0;
	case (half_rate_phy_phase_sel)
		1'd0: begin
			array_muxed3 <= half_rate_phy_record0_ras_n;
		end
		default: begin
			array_muxed3 <= half_rate_phy_record1_ras_n;
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
	array_muxed4 <= 1'd0;
	case (half_rate_phy_phase_sel)
		1'd0: begin
			array_muxed4 <= half_rate_phy_record0_cas_n;
		end
		default: begin
			array_muxed4 <= half_rate_phy_record1_cas_n;
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
	array_muxed5 <= 1'd0;
	case (half_rate_phy_phase_sel)
		1'd0: begin
			array_muxed5 <= half_rate_phy_record0_we_n;
		end
		default: begin
			array_muxed5 <= half_rate_phy_record1_we_n;
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
	array_muxed6 <= 1'd0;
	case (half_rate_phy_phase_sel)
		1'd0: begin
			array_muxed6 <= half_rate_phy_record0_reset_n;
		end
		default: begin
			array_muxed6 <= half_rate_phy_record1_reset_n;
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
	array_muxed7 <= 1'd0;
	case (half_rate_phy_phase_sel)
		1'd0: begin
			array_muxed7 <= half_rate_phy_record0_odt;
		end
		default: begin
			array_muxed7 <= half_rate_phy_record1_odt;
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
	array_muxed8 <= 14'd0;
	case (controllerinjector_sel0)
		1'd0: begin
			array_muxed8 <= controllerinjector_nop_a;
		end
		1'd1: begin
			array_muxed8 <= controllerinjector_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed8 <= controllerinjector_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed8 <= controllerinjector_cmd_payload_a;
		end
	endcase
// synthesis translate_off
	dummy_d_188 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_189;
// synthesis translate_on
always @(*) begin
	array_muxed9 <= 3'd0;
	case (controllerinjector_sel0)
		1'd0: begin
			array_muxed9 <= controllerinjector_nop_ba;
		end
		1'd1: begin
			array_muxed9 <= controllerinjector_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			array_muxed9 <= controllerinjector_choose_req_cmd_payload_ba;
		end
		default: begin
			array_muxed9 <= controllerinjector_cmd_payload_ba;
		end
	endcase
// synthesis translate_off
	dummy_d_189 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_190;
// synthesis translate_on
always @(*) begin
	array_muxed10 <= 1'd0;
	case (controllerinjector_sel0)
		1'd0: begin
			array_muxed10 <= controllerinjector_nop_cas;
		end
		1'd1: begin
			array_muxed10 <= controllerinjector_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			array_muxed10 <= controllerinjector_choose_req_cmd_payload_cas;
		end
		default: begin
			array_muxed10 <= controllerinjector_cmd_payload_cas;
		end
	endcase
// synthesis translate_off
	dummy_d_190 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_191;
// synthesis translate_on
always @(*) begin
	array_muxed11 <= 1'd0;
	case (controllerinjector_sel0)
		1'd0: begin
			array_muxed11 <= controllerinjector_nop_ras;
		end
		1'd1: begin
			array_muxed11 <= controllerinjector_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			array_muxed11 <= controllerinjector_choose_req_cmd_payload_ras;
		end
		default: begin
			array_muxed11 <= controllerinjector_cmd_payload_ras;
		end
	endcase
// synthesis translate_off
	dummy_d_191 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_192;
// synthesis translate_on
always @(*) begin
	array_muxed12 <= 1'd0;
	case (controllerinjector_sel0)
		1'd0: begin
			array_muxed12 <= controllerinjector_nop_we;
		end
		1'd1: begin
			array_muxed12 <= controllerinjector_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			array_muxed12 <= controllerinjector_choose_req_cmd_payload_we;
		end
		default: begin
			array_muxed12 <= controllerinjector_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_192 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_193;
// synthesis translate_on
always @(*) begin
	array_muxed13 <= 1'd0;
	case (controllerinjector_sel0)
		1'd0: begin
			array_muxed13 <= 1'd0;
		end
		1'd1: begin
			array_muxed13 <= (controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed13 <= (controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed13 <= (controllerinjector_cmd_valid & controllerinjector_cmd_payload_is_read);
		end
	endcase
// synthesis translate_off
	dummy_d_193 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_194;
// synthesis translate_on
always @(*) begin
	array_muxed14 <= 1'd0;
	case (controllerinjector_sel0)
		1'd0: begin
			array_muxed14 <= 1'd0;
		end
		1'd1: begin
			array_muxed14 <= (controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed14 <= (controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed14 <= (controllerinjector_cmd_valid & controllerinjector_cmd_payload_is_write);
		end
	endcase
// synthesis translate_off
	dummy_d_194 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_195;
// synthesis translate_on
always @(*) begin
	array_muxed15 <= 14'd0;
	case (controllerinjector_sel1)
		1'd0: begin
			array_muxed15 <= controllerinjector_nop_a;
		end
		1'd1: begin
			array_muxed15 <= controllerinjector_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed15 <= controllerinjector_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed15 <= controllerinjector_cmd_payload_a;
		end
	endcase
// synthesis translate_off
	dummy_d_195 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_196;
// synthesis translate_on
always @(*) begin
	array_muxed16 <= 3'd0;
	case (controllerinjector_sel1)
		1'd0: begin
			array_muxed16 <= controllerinjector_nop_ba;
		end
		1'd1: begin
			array_muxed16 <= controllerinjector_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			array_muxed16 <= controllerinjector_choose_req_cmd_payload_ba;
		end
		default: begin
			array_muxed16 <= controllerinjector_cmd_payload_ba;
		end
	endcase
// synthesis translate_off
	dummy_d_196 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_197;
// synthesis translate_on
always @(*) begin
	array_muxed17 <= 1'd0;
	case (controllerinjector_sel1)
		1'd0: begin
			array_muxed17 <= controllerinjector_nop_cas;
		end
		1'd1: begin
			array_muxed17 <= controllerinjector_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			array_muxed17 <= controllerinjector_choose_req_cmd_payload_cas;
		end
		default: begin
			array_muxed17 <= controllerinjector_cmd_payload_cas;
		end
	endcase
// synthesis translate_off
	dummy_d_197 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_198;
// synthesis translate_on
always @(*) begin
	array_muxed18 <= 1'd0;
	case (controllerinjector_sel1)
		1'd0: begin
			array_muxed18 <= controllerinjector_nop_ras;
		end
		1'd1: begin
			array_muxed18 <= controllerinjector_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			array_muxed18 <= controllerinjector_choose_req_cmd_payload_ras;
		end
		default: begin
			array_muxed18 <= controllerinjector_cmd_payload_ras;
		end
	endcase
// synthesis translate_off
	dummy_d_198 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_199;
// synthesis translate_on
always @(*) begin
	array_muxed19 <= 1'd0;
	case (controllerinjector_sel1)
		1'd0: begin
			array_muxed19 <= controllerinjector_nop_we;
		end
		1'd1: begin
			array_muxed19 <= controllerinjector_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			array_muxed19 <= controllerinjector_choose_req_cmd_payload_we;
		end
		default: begin
			array_muxed19 <= controllerinjector_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_199 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_200;
// synthesis translate_on
always @(*) begin
	array_muxed20 <= 1'd0;
	case (controllerinjector_sel1)
		1'd0: begin
			array_muxed20 <= 1'd0;
		end
		1'd1: begin
			array_muxed20 <= (controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed20 <= (controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed20 <= (controllerinjector_cmd_valid & controllerinjector_cmd_payload_is_read);
		end
	endcase
// synthesis translate_off
	dummy_d_200 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_201;
// synthesis translate_on
always @(*) begin
	array_muxed21 <= 1'd0;
	case (controllerinjector_sel1)
		1'd0: begin
			array_muxed21 <= 1'd0;
		end
		1'd1: begin
			array_muxed21 <= (controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed21 <= (controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed21 <= (controllerinjector_cmd_valid & controllerinjector_cmd_payload_is_write);
		end
	endcase
// synthesis translate_off
	dummy_d_201 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_202;
// synthesis translate_on
always @(*) begin
	array_muxed22 <= 14'd0;
	case (controllerinjector_sel2)
		1'd0: begin
			array_muxed22 <= controllerinjector_nop_a;
		end
		1'd1: begin
			array_muxed22 <= controllerinjector_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed22 <= controllerinjector_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed22 <= controllerinjector_cmd_payload_a;
		end
	endcase
// synthesis translate_off
	dummy_d_202 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_203;
// synthesis translate_on
always @(*) begin
	array_muxed23 <= 3'd0;
	case (controllerinjector_sel2)
		1'd0: begin
			array_muxed23 <= controllerinjector_nop_ba;
		end
		1'd1: begin
			array_muxed23 <= controllerinjector_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			array_muxed23 <= controllerinjector_choose_req_cmd_payload_ba;
		end
		default: begin
			array_muxed23 <= controllerinjector_cmd_payload_ba;
		end
	endcase
// synthesis translate_off
	dummy_d_203 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_204;
// synthesis translate_on
always @(*) begin
	array_muxed24 <= 1'd0;
	case (controllerinjector_sel2)
		1'd0: begin
			array_muxed24 <= controllerinjector_nop_cas;
		end
		1'd1: begin
			array_muxed24 <= controllerinjector_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			array_muxed24 <= controllerinjector_choose_req_cmd_payload_cas;
		end
		default: begin
			array_muxed24 <= controllerinjector_cmd_payload_cas;
		end
	endcase
// synthesis translate_off
	dummy_d_204 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_205;
// synthesis translate_on
always @(*) begin
	array_muxed25 <= 1'd0;
	case (controllerinjector_sel2)
		1'd0: begin
			array_muxed25 <= controllerinjector_nop_ras;
		end
		1'd1: begin
			array_muxed25 <= controllerinjector_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			array_muxed25 <= controllerinjector_choose_req_cmd_payload_ras;
		end
		default: begin
			array_muxed25 <= controllerinjector_cmd_payload_ras;
		end
	endcase
// synthesis translate_off
	dummy_d_205 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_206;
// synthesis translate_on
always @(*) begin
	array_muxed26 <= 1'd0;
	case (controllerinjector_sel2)
		1'd0: begin
			array_muxed26 <= controllerinjector_nop_we;
		end
		1'd1: begin
			array_muxed26 <= controllerinjector_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			array_muxed26 <= controllerinjector_choose_req_cmd_payload_we;
		end
		default: begin
			array_muxed26 <= controllerinjector_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_206 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_207;
// synthesis translate_on
always @(*) begin
	array_muxed27 <= 1'd0;
	case (controllerinjector_sel2)
		1'd0: begin
			array_muxed27 <= 1'd0;
		end
		1'd1: begin
			array_muxed27 <= (controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed27 <= (controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed27 <= (controllerinjector_cmd_valid & controllerinjector_cmd_payload_is_read);
		end
	endcase
// synthesis translate_off
	dummy_d_207 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_208;
// synthesis translate_on
always @(*) begin
	array_muxed28 <= 1'd0;
	case (controllerinjector_sel2)
		1'd0: begin
			array_muxed28 <= 1'd0;
		end
		1'd1: begin
			array_muxed28 <= (controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed28 <= (controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed28 <= (controllerinjector_cmd_valid & controllerinjector_cmd_payload_is_write);
		end
	endcase
// synthesis translate_off
	dummy_d_208 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_209;
// synthesis translate_on
always @(*) begin
	array_muxed29 <= 14'd0;
	case (controllerinjector_sel3)
		1'd0: begin
			array_muxed29 <= controllerinjector_nop_a;
		end
		1'd1: begin
			array_muxed29 <= controllerinjector_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed29 <= controllerinjector_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed29 <= controllerinjector_cmd_payload_a;
		end
	endcase
// synthesis translate_off
	dummy_d_209 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_210;
// synthesis translate_on
always @(*) begin
	array_muxed30 <= 3'd0;
	case (controllerinjector_sel3)
		1'd0: begin
			array_muxed30 <= controllerinjector_nop_ba;
		end
		1'd1: begin
			array_muxed30 <= controllerinjector_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			array_muxed30 <= controllerinjector_choose_req_cmd_payload_ba;
		end
		default: begin
			array_muxed30 <= controllerinjector_cmd_payload_ba;
		end
	endcase
// synthesis translate_off
	dummy_d_210 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_211;
// synthesis translate_on
always @(*) begin
	array_muxed31 <= 1'd0;
	case (controllerinjector_sel3)
		1'd0: begin
			array_muxed31 <= controllerinjector_nop_cas;
		end
		1'd1: begin
			array_muxed31 <= controllerinjector_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			array_muxed31 <= controllerinjector_choose_req_cmd_payload_cas;
		end
		default: begin
			array_muxed31 <= controllerinjector_cmd_payload_cas;
		end
	endcase
// synthesis translate_off
	dummy_d_211 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_212;
// synthesis translate_on
always @(*) begin
	array_muxed32 <= 1'd0;
	case (controllerinjector_sel3)
		1'd0: begin
			array_muxed32 <= controllerinjector_nop_ras;
		end
		1'd1: begin
			array_muxed32 <= controllerinjector_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			array_muxed32 <= controllerinjector_choose_req_cmd_payload_ras;
		end
		default: begin
			array_muxed32 <= controllerinjector_cmd_payload_ras;
		end
	endcase
// synthesis translate_off
	dummy_d_212 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_213;
// synthesis translate_on
always @(*) begin
	array_muxed33 <= 1'd0;
	case (controllerinjector_sel3)
		1'd0: begin
			array_muxed33 <= controllerinjector_nop_we;
		end
		1'd1: begin
			array_muxed33 <= controllerinjector_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			array_muxed33 <= controllerinjector_choose_req_cmd_payload_we;
		end
		default: begin
			array_muxed33 <= controllerinjector_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_213 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_214;
// synthesis translate_on
always @(*) begin
	array_muxed34 <= 1'd0;
	case (controllerinjector_sel3)
		1'd0: begin
			array_muxed34 <= 1'd0;
		end
		1'd1: begin
			array_muxed34 <= (controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed34 <= (controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed34 <= (controllerinjector_cmd_valid & controllerinjector_cmd_payload_is_read);
		end
	endcase
// synthesis translate_off
	dummy_d_214 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_215;
// synthesis translate_on
always @(*) begin
	array_muxed35 <= 1'd0;
	case (controllerinjector_sel3)
		1'd0: begin
			array_muxed35 <= 1'd0;
		end
		1'd1: begin
			array_muxed35 <= (controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed35 <= (controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed35 <= (controllerinjector_cmd_valid & controllerinjector_cmd_payload_is_write);
		end
	endcase
// synthesis translate_off
	dummy_d_215 <= dummy_s;
// synthesis translate_on
end
assign opsis_i2c_scl_raw = xilinxmultiregimpl0_regs1;
assign opsis_i2c_sda_raw = xilinxmultiregimpl1_regs1;
assign phy_rx = xilinxmultiregimpl2_regs1;
assign front_panel_switches_status = xilinxmultiregimpl3_regs1;
assign ethphy_mdio_status = xilinxmultiregimpl4_regs1;
assign ethmac_tx_cdc_produce_rdomain = xilinxmultiregimpl5_regs1;
assign ethmac_tx_cdc_consume_wdomain = xilinxmultiregimpl6_regs1;
assign ethmac_rx_cdc_produce_rdomain = xilinxmultiregimpl7_regs1;
assign ethmac_rx_cdc_consume_wdomain = xilinxmultiregimpl8_regs1;
assign generator_reset_sync_toggle_o = xilinxmultiregimpl9_regs1;
assign generator_start_sync_toggle_o = xilinxmultiregimpl10_regs1;
assign generator_done_sync_o = xilinxmultiregimpl11_regs1;
assign generator_base_sync_ping_toggle_o = xilinxmultiregimpl12_regs1;
assign generator_base_sync_pong_toggle_o = xilinxmultiregimpl13_regs1;
assign generator_base_sync_obuffer = xilinxmultiregimpl14_regs1;
assign generator_length_sync_ping_toggle_o = xilinxmultiregimpl15_regs1;
assign generator_length_sync_pong_toggle_o = xilinxmultiregimpl16_regs1;
assign generator_length_sync_obuffer = xilinxmultiregimpl17_regs1;
assign checker_reset_sync_toggle_o = xilinxmultiregimpl18_regs1;
assign checker_start_sync_toggle_o = xilinxmultiregimpl19_regs1;
assign checker_done_sync_o = xilinxmultiregimpl20_regs1;
assign checker_base_sync_ping_toggle_o = xilinxmultiregimpl21_regs1;
assign checker_base_sync_pong_toggle_o = xilinxmultiregimpl22_regs1;
assign checker_base_sync_obuffer = xilinxmultiregimpl23_regs1;
assign checker_length_sync_ping_toggle_o = xilinxmultiregimpl24_regs1;
assign checker_length_sync_pong_toggle_o = xilinxmultiregimpl25_regs1;
assign checker_length_sync_obuffer = xilinxmultiregimpl26_regs1;
assign checker_err_count_sync_ping_toggle_o = xilinxmultiregimpl27_regs1;
assign checker_err_count_sync_pong_toggle_o = xilinxmultiregimpl28_regs1;
assign checker_err_count_sync_obuffer = xilinxmultiregimpl29_regs1;
assign frontend_trigger_value = xilinxmultiregimpl30_regs1;
assign frontend_trigger_mask = xilinxmultiregimpl31_regs1;
assign frontend_subsampler_value = xilinxmultiregimpl32_regs1;
assign frontend_asyncfifo_produce_rdomain = xilinxmultiregimpl33_regs1;
assign frontend_asyncfifo_consume_wdomain = xilinxmultiregimpl34_regs1;

always @(posedge eth_rx_clk) begin
	if (eth_rx_rst) begin
		ethphy_source_valid <= 1'd0;
		ethphy_source_payload_data <= 8'd0;
		ethphy_rx_dv_d <= 1'd0;
		ethmac_rx_gap_checker_counter <= 4'd0;
		ethmac_preamble_checker_cnt <= 3'd0;
		ethmac_preamble_checker_discard <= 1'd0;
		ethmac_crc32_checker_crc_reg <= 32'd4294967295;
		ethmac_crc32_checker_syncfifo_level <= 3'd0;
		ethmac_crc32_checker_syncfifo_produce <= 3'd0;
		ethmac_crc32_checker_syncfifo_consume <= 3'd0;
		ethmac_rx_converter_converter_source_last <= 1'd0;
		ethmac_rx_converter_converter_source_payload_data <= 40'd0;
		ethmac_rx_converter_converter_source_payload_valid_token_count <= 3'd0;
		ethmac_rx_converter_converter_demux <= 2'd0;
		ethmac_rx_converter_converter_strobe_all <= 1'd0;
		ethmac_rx_cdc_graycounter0_q <= 7'd0;
		ethmac_rx_cdc_graycounter0_q_binary <= 7'd0;
		clockdomainsrenamer1_state <= 1'd0;
		clockdomainsrenamer3_state <= 2'd0;
		clockdomainsrenamer5_state <= 2'd0;
	end else begin
		ethphy_rx_dv_d <= ethphy_rx_dv;
		ethphy_source_valid <= ethphy_rx_dv;
		ethphy_source_payload_data <= ethphy_rxd;
		if (ethmac_rx_gap_checker_counter_reset) begin
			ethmac_rx_gap_checker_counter <= 1'd0;
		end else begin
			if (ethmac_rx_gap_checker_counter_ce) begin
				ethmac_rx_gap_checker_counter <= (ethmac_rx_gap_checker_counter + 1'd1);
			end
		end
		clockdomainsrenamer1_state <= clockdomainsrenamer1_next_state;
		if (ethmac_preamble_checker_clr_cnt) begin
			ethmac_preamble_checker_cnt <= 1'd0;
		end else begin
			if (ethmac_preamble_checker_inc_cnt) begin
				ethmac_preamble_checker_cnt <= (ethmac_preamble_checker_cnt + 1'd1);
			end
		end
		if (ethmac_preamble_checker_clr_discard) begin
			ethmac_preamble_checker_discard <= 1'd0;
		end else begin
			if (ethmac_preamble_checker_set_discard) begin
				ethmac_preamble_checker_discard <= 1'd1;
			end
		end
		clockdomainsrenamer3_state <= clockdomainsrenamer3_next_state;
		if (ethmac_crc32_checker_crc_reset) begin
			ethmac_crc32_checker_crc_reg <= 32'd4294967295;
		end else begin
			if (ethmac_crc32_checker_crc_ce) begin
				ethmac_crc32_checker_crc_reg <= ethmac_crc32_checker_crc_next;
			end
		end
		if (ethmac_crc32_checker_fifo_reset) begin
			ethmac_crc32_checker_syncfifo_level <= 3'd0;
			ethmac_crc32_checker_syncfifo_produce <= 3'd0;
			ethmac_crc32_checker_syncfifo_consume <= 3'd0;
		end else begin
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
		end
		clockdomainsrenamer5_state <= clockdomainsrenamer5_next_state;
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
			ethmac_rx_converter_converter_source_last <= ethmac_rx_converter_converter_sink_last;
		end else begin
			if ((ethmac_rx_converter_converter_sink_valid & ethmac_rx_converter_converter_sink_ready)) begin
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
	end
	xilinxmultiregimpl8_regs0 <= ethmac_rx_cdc_graycounter1_q;
	xilinxmultiregimpl8_regs1 <= xilinxmultiregimpl8_regs0;
end

always @(posedge eth_tx_clk) begin
	if (eth_tx_rst) begin
		ethphy_tx_data <= 8'd0;
		ethphy_tx_valid <= 1'd0;
		ethmac_tx_gap_inserter_counter <= 4'd0;
		ethmac_preamble_inserter_cnt <= 3'd0;
		ethmac_crc32_inserter_reg <= 32'd4294967295;
		ethmac_crc32_inserter_cnt <= 2'd3;
		ethmac_padding_inserter_counter <= 16'd1;
		ethmac_tx_last_be_ongoing <= 1'd1;
		ethmac_tx_converter_converter_mux <= 2'd0;
		ethmac_tx_cdc_graycounter1_q <= 7'd0;
		ethmac_tx_cdc_graycounter1_q_binary <= 7'd0;
		clockdomainsrenamer0_state <= 1'd0;
		clockdomainsrenamer2_state <= 2'd0;
		clockdomainsrenamer4_state <= 2'd0;
		clockdomainsrenamer6_state <= 1'd0;
	end else begin
		ethphy_tx_data <= ethphy_sink_payload_data;
		ethphy_tx_valid <= ethphy_sink_valid;
		if (ethmac_tx_gap_inserter_counter_reset) begin
			ethmac_tx_gap_inserter_counter <= 1'd0;
		end else begin
			if (ethmac_tx_gap_inserter_counter_ce) begin
				ethmac_tx_gap_inserter_counter <= (ethmac_tx_gap_inserter_counter + 1'd1);
			end
		end
		clockdomainsrenamer0_state <= clockdomainsrenamer0_next_state;
		if (ethmac_preamble_inserter_clr_cnt) begin
			ethmac_preamble_inserter_cnt <= 1'd0;
		end else begin
			if (ethmac_preamble_inserter_inc_cnt) begin
				ethmac_preamble_inserter_cnt <= (ethmac_preamble_inserter_cnt + 1'd1);
			end
		end
		clockdomainsrenamer2_state <= clockdomainsrenamer2_next_state;
		if (ethmac_crc32_inserter_is_ongoing0) begin
			ethmac_crc32_inserter_cnt <= 2'd3;
		end else begin
			if ((ethmac_crc32_inserter_is_ongoing1 & (~ethmac_crc32_inserter_cnt_done))) begin
				ethmac_crc32_inserter_cnt <= (ethmac_crc32_inserter_cnt - ethmac_crc32_inserter_source_ready);
			end
		end
		if (ethmac_crc32_inserter_reset) begin
			ethmac_crc32_inserter_reg <= 32'd4294967295;
		end else begin
			if (ethmac_crc32_inserter_ce) begin
				ethmac_crc32_inserter_reg <= ethmac_crc32_inserter_next;
			end
		end
		clockdomainsrenamer4_state <= clockdomainsrenamer4_next_state;
		if (ethmac_padding_inserter_counter_reset) begin
			ethmac_padding_inserter_counter <= 1'd0;
		end else begin
			if (ethmac_padding_inserter_counter_ce) begin
				ethmac_padding_inserter_counter <= (ethmac_padding_inserter_counter + 1'd1);
			end
		end
		clockdomainsrenamer6_state <= clockdomainsrenamer6_next_state;
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
	end
	xilinxmultiregimpl5_regs0 <= ethmac_tx_cdc_graycounter0_q;
	xilinxmultiregimpl5_regs1 <= xilinxmultiregimpl5_regs0;
end

always @(posedge por_clk) begin
	if (por_rst) begin
		crg_por <= 11'd2047;
	end else begin
		if ((crg_por != 1'd0)) begin
			crg_por <= (crg_por - 1'd1);
		end
	end
end

always @(posedge sdram_half_clk) begin
	if (sdram_half_rst) begin
		ddram_cke <= 1'd0;
		ddram_ras_n <= 1'd0;
		ddram_cas_n <= 1'd0;
		ddram_we_n <= 1'd0;
		ddram_ba <= 3'd0;
		ddram_a <= 15'd0;
		ddram_odt <= 1'd0;
		ddram_reset_n <= 1'd0;
		half_rate_phy_phase_sel <= 1'd0;
		half_rate_phy_phase_half <= 1'd0;
		half_rate_phy_record0_address <= 15'd0;
		half_rate_phy_record0_bank <= 3'd0;
		half_rate_phy_record0_cas_n <= 1'd0;
		half_rate_phy_record0_cs_n <= 1'd0;
		half_rate_phy_record0_ras_n <= 1'd0;
		half_rate_phy_record0_we_n <= 1'd0;
		half_rate_phy_record0_cke <= 1'd0;
		half_rate_phy_record0_odt <= 1'd0;
		half_rate_phy_record0_reset_n <= 1'd0;
		half_rate_phy_record1_address <= 15'd0;
		half_rate_phy_record1_bank <= 3'd0;
		half_rate_phy_record1_cas_n <= 1'd0;
		half_rate_phy_record1_cs_n <= 1'd0;
		half_rate_phy_record1_ras_n <= 1'd0;
		half_rate_phy_record1_we_n <= 1'd0;
		half_rate_phy_record1_cke <= 1'd0;
		half_rate_phy_record1_odt <= 1'd0;
		half_rate_phy_record1_reset_n <= 1'd0;
		half_rate_phy_postamble <= 1'd0;
		half_rate_phy_r_drive_dq <= 5'd0;
		half_rate_phy_r_dfi_wrdata_en <= 6'd0;
	end else begin
		if ((half_rate_phy_phase_half == half_rate_phy_phase_sys)) begin
			half_rate_phy_phase_sel <= 1'd0;
		end else begin
			half_rate_phy_phase_sel <= (half_rate_phy_phase_sel + 1'd1);
		end
		half_rate_phy_phase_half <= (half_rate_phy_phase_half + 1'd1);
		half_rate_phy_record0_reset_n <= half_rate_phy_dfi_p0_reset_n;
		half_rate_phy_record0_odt <= half_rate_phy_dfi_p0_odt;
		half_rate_phy_record0_address <= half_rate_phy_dfi_p0_address;
		half_rate_phy_record0_bank <= half_rate_phy_dfi_p0_bank;
		half_rate_phy_record0_cs_n <= half_rate_phy_dfi_p0_cs_n;
		half_rate_phy_record0_cke <= half_rate_phy_dfi_p0_cke;
		half_rate_phy_record0_cas_n <= half_rate_phy_dfi_p0_cas_n;
		half_rate_phy_record0_ras_n <= half_rate_phy_dfi_p0_ras_n;
		half_rate_phy_record0_we_n <= half_rate_phy_dfi_p0_we_n;
		half_rate_phy_record1_reset_n <= half_rate_phy_dfi_p1_reset_n;
		half_rate_phy_record1_odt <= half_rate_phy_dfi_p1_odt;
		half_rate_phy_record1_address <= half_rate_phy_dfi_p1_address;
		half_rate_phy_record1_bank <= half_rate_phy_dfi_p1_bank;
		half_rate_phy_record1_cs_n <= half_rate_phy_dfi_p1_cs_n;
		half_rate_phy_record1_cke <= half_rate_phy_dfi_p1_cke;
		half_rate_phy_record1_cas_n <= half_rate_phy_dfi_p1_cas_n;
		half_rate_phy_record1_ras_n <= half_rate_phy_dfi_p1_ras_n;
		half_rate_phy_record1_we_n <= half_rate_phy_dfi_p1_we_n;
		ddram_a <= array_muxed0;
		ddram_ba <= array_muxed1;
		ddram_cke <= array_muxed2;
		ddram_ras_n <= array_muxed3;
		ddram_cas_n <= array_muxed4;
		ddram_we_n <= array_muxed5;
		ddram_reset_n <= array_muxed6;
		ddram_odt <= array_muxed7;
		half_rate_phy_postamble <= half_rate_phy_drive_dqs;
		half_rate_phy_r_drive_dq <= {half_rate_phy_r_drive_dq, half_rate_phy_wrdata_en};
		half_rate_phy_r_dfi_wrdata_en <= {half_rate_phy_r_dfi_wrdata_en, half_rate_phy_wrdata_en_d};
	end
end

always @(posedge sys_clk) begin
	if (sys_rst) begin
		memtestsoc_rom_bus_ack <= 1'd0;
		memtestsoc_sram_bus_ack <= 1'd0;
		memtestsoc_interface_adr <= 14'd0;
		memtestsoc_interface_we <= 1'd0;
		memtestsoc_interface_dat_w <= 8'd0;
		memtestsoc_bus_wishbone_dat_r <= 32'd0;
		memtestsoc_bus_wishbone_ack <= 1'd0;
		memtestsoc_counter <= 2'd0;
		memtestsoc_load_storage_full <= 32'd0;
		memtestsoc_load_re <= 1'd0;
		memtestsoc_reload_storage_full <= 32'd0;
		memtestsoc_reload_re <= 1'd0;
		memtestsoc_en_storage_full <= 1'd0;
		memtestsoc_en_re <= 1'd0;
		memtestsoc_value_status <= 32'd0;
		memtestsoc_zero_pending <= 1'd0;
		memtestsoc_zero_old_trigger <= 1'd0;
		memtestsoc_eventmanager_storage_full <= 1'd0;
		memtestsoc_eventmanager_re <= 1'd0;
		memtestsoc_value <= 32'd0;
		dna_status <= 57'd0;
		dna_cnt <= 7'd0;
		opsis_i2c_master_storage_full <= 8'd1;
		opsis_i2c_master_re <= 1'd0;
		opsis_i2c_fx2_reset_storage_full <= 1'd0;
		opsis_i2c_fx2_reset_re <= 1'd0;
		opsis_i2c_shift_reg_storage_full <= 8'd0;
		opsis_i2c_shift_reg_re <= 1'd0;
		opsis_i2c_status_storage_full <= 2'd2;
		opsis_i2c_status_re <= 1'd0;
		opsis_i2c_slave_addr_storage_full <= 7'd0;
		opsis_i2c_slave_addr_re <= 1'd0;
		opsis_i2c_sda_i <= 1'd0;
		opsis_i2c_sda_drv_reg <= 1'd0;
		opsis_i2c_scl_drv_reg <= 1'd0;
		opsis_i2c_scl_i <= 1'd0;
		opsis_i2c_samp_count <= 3'd0;
		opsis_i2c_samp_carry <= 1'd0;
		opsis_i2c_scl_r <= 1'd0;
		opsis_i2c_sda_r <= 1'd0;
		opsis_i2c_din <= 8'd0;
		opsis_i2c_counter <= 4'd0;
		opsis_i2c_is_read <= 1'd0;
		opsis_i2c_data_bit <= 1'd0;
		opsis_i2c_data_drv <= 1'd0;
		tx <= 1'd1;
		phy_sink_ready <= 1'd0;
		phy_uart_clk_txen <= 1'd0;
		phy_phase_accumulator_tx <= 32'd0;
		phy_tx_reg <= 8'd0;
		phy_tx_bitcount <= 4'd0;
		phy_tx_busy <= 1'd0;
		phy_source_valid <= 1'd0;
		phy_source_payload_data <= 8'd0;
		phy_uart_clk_rxen <= 1'd0;
		phy_phase_accumulator_rx <= 32'd0;
		phy_rx_r <= 1'd0;
		phy_rx_reg <= 8'd0;
		phy_rx_bitcount <= 4'd0;
		phy_rx_busy <= 1'd0;
		uart_tx_pending <= 1'd0;
		uart_tx_old_trigger <= 1'd0;
		uart_rx_pending <= 1'd0;
		uart_rx_old_trigger <= 1'd0;
		uart_storage_full <= 2'd0;
		uart_re <= 1'd0;
		uart_tx_fifo_level <= 5'd0;
		uart_tx_fifo_produce <= 4'd0;
		uart_tx_fifo_consume <= 4'd0;
		uart_rx_fifo_level <= 5'd0;
		uart_rx_fifo_produce <= 4'd0;
		uart_rx_fifo_consume <= 4'd0;
		spiflash_bus_ack <= 1'd0;
		spiflash_cs_n <= 1'd1;
		spiflash_clk <= 1'd0;
		spiflash_dq_oe <= 1'd0;
		spiflash_sr <= 32'd0;
		spiflash_i1 <= 2'd0;
		spiflash_dqi <= 4'd0;
		spiflash_counter <= 8'd0;
		front_panel_leds_storage_full <= 2'd0;
		front_panel_leds_re <= 1'd0;
		front_panel_count <= 26'd50000000;
		dfi_dfi_p0_rddata <= 32'd0;
		dfi_dfi_p0_rddata_valid <= 1'd0;
		dfi_dfi_p1_rddata <= 32'd0;
		dfi_dfi_p1_rddata_valid <= 1'd0;
		dfi_dfi_p2_rddata <= 32'd0;
		dfi_dfi_p2_rddata_valid <= 1'd0;
		dfi_dfi_p3_rddata <= 32'd0;
		dfi_dfi_p3_rddata_valid <= 1'd0;
		phase_sys <= 1'd0;
		controllerinjector_storage_full <= 4'd0;
		controllerinjector_re <= 1'd0;
		controllerinjector_phaseinjector0_command_storage_full <= 6'd0;
		controllerinjector_phaseinjector0_command_re <= 1'd0;
		controllerinjector_phaseinjector0_address_storage_full <= 14'd0;
		controllerinjector_phaseinjector0_address_re <= 1'd0;
		controllerinjector_phaseinjector0_baddress_storage_full <= 3'd0;
		controllerinjector_phaseinjector0_baddress_re <= 1'd0;
		controllerinjector_phaseinjector0_wrdata_storage_full <= 32'd0;
		controllerinjector_phaseinjector0_wrdata_re <= 1'd0;
		controllerinjector_phaseinjector0_status <= 32'd0;
		controllerinjector_phaseinjector1_command_storage_full <= 6'd0;
		controllerinjector_phaseinjector1_command_re <= 1'd0;
		controllerinjector_phaseinjector1_address_storage_full <= 14'd0;
		controllerinjector_phaseinjector1_address_re <= 1'd0;
		controllerinjector_phaseinjector1_baddress_storage_full <= 3'd0;
		controllerinjector_phaseinjector1_baddress_re <= 1'd0;
		controllerinjector_phaseinjector1_wrdata_storage_full <= 32'd0;
		controllerinjector_phaseinjector1_wrdata_re <= 1'd0;
		controllerinjector_phaseinjector1_status <= 32'd0;
		controllerinjector_phaseinjector2_command_storage_full <= 6'd0;
		controllerinjector_phaseinjector2_command_re <= 1'd0;
		controllerinjector_phaseinjector2_address_storage_full <= 14'd0;
		controllerinjector_phaseinjector2_address_re <= 1'd0;
		controllerinjector_phaseinjector2_baddress_storage_full <= 3'd0;
		controllerinjector_phaseinjector2_baddress_re <= 1'd0;
		controllerinjector_phaseinjector2_wrdata_storage_full <= 32'd0;
		controllerinjector_phaseinjector2_wrdata_re <= 1'd0;
		controllerinjector_phaseinjector2_status <= 32'd0;
		controllerinjector_phaseinjector3_command_storage_full <= 6'd0;
		controllerinjector_phaseinjector3_command_re <= 1'd0;
		controllerinjector_phaseinjector3_address_storage_full <= 14'd0;
		controllerinjector_phaseinjector3_address_re <= 1'd0;
		controllerinjector_phaseinjector3_baddress_storage_full <= 3'd0;
		controllerinjector_phaseinjector3_baddress_re <= 1'd0;
		controllerinjector_phaseinjector3_wrdata_storage_full <= 32'd0;
		controllerinjector_phaseinjector3_wrdata_re <= 1'd0;
		controllerinjector_phaseinjector3_status <= 32'd0;
		controllerinjector_dfi_p0_address <= 14'd0;
		controllerinjector_dfi_p0_bank <= 3'd0;
		controllerinjector_dfi_p0_cas_n <= 1'd1;
		controllerinjector_dfi_p0_ras_n <= 1'd1;
		controllerinjector_dfi_p0_we_n <= 1'd1;
		controllerinjector_dfi_p0_wrdata_en <= 1'd0;
		controllerinjector_dfi_p0_rddata_en <= 1'd0;
		controllerinjector_dfi_p1_address <= 14'd0;
		controllerinjector_dfi_p1_bank <= 3'd0;
		controllerinjector_dfi_p1_cas_n <= 1'd1;
		controllerinjector_dfi_p1_ras_n <= 1'd1;
		controllerinjector_dfi_p1_we_n <= 1'd1;
		controllerinjector_dfi_p1_wrdata_en <= 1'd0;
		controllerinjector_dfi_p1_rddata_en <= 1'd0;
		controllerinjector_dfi_p2_address <= 14'd0;
		controllerinjector_dfi_p2_bank <= 3'd0;
		controllerinjector_dfi_p2_cas_n <= 1'd1;
		controllerinjector_dfi_p2_ras_n <= 1'd1;
		controllerinjector_dfi_p2_we_n <= 1'd1;
		controllerinjector_dfi_p2_wrdata_en <= 1'd0;
		controllerinjector_dfi_p2_rddata_en <= 1'd0;
		controllerinjector_dfi_p3_address <= 14'd0;
		controllerinjector_dfi_p3_bank <= 3'd0;
		controllerinjector_dfi_p3_cas_n <= 1'd1;
		controllerinjector_dfi_p3_ras_n <= 1'd1;
		controllerinjector_dfi_p3_we_n <= 1'd1;
		controllerinjector_dfi_p3_wrdata_en <= 1'd0;
		controllerinjector_dfi_p3_rddata_en <= 1'd0;
		controllerinjector_cmd_payload_a <= 14'd0;
		controllerinjector_cmd_payload_ba <= 3'd0;
		controllerinjector_cmd_payload_cas <= 1'd0;
		controllerinjector_cmd_payload_ras <= 1'd0;
		controllerinjector_cmd_payload_we <= 1'd0;
		controllerinjector_seq_done <= 1'd0;
		controllerinjector_counter <= 5'd0;
		controllerinjector_count <= 8'd196;
		controllerinjector_bankmachine0_level <= 4'd0;
		controllerinjector_bankmachine0_produce <= 3'd0;
		controllerinjector_bankmachine0_consume <= 3'd0;
		controllerinjector_bankmachine0_has_openrow <= 1'd0;
		controllerinjector_bankmachine0_openrow <= 14'd0;
		controllerinjector_bankmachine0_count <= 3'd4;
		controllerinjector_bankmachine1_level <= 4'd0;
		controllerinjector_bankmachine1_produce <= 3'd0;
		controllerinjector_bankmachine1_consume <= 3'd0;
		controllerinjector_bankmachine1_has_openrow <= 1'd0;
		controllerinjector_bankmachine1_openrow <= 14'd0;
		controllerinjector_bankmachine1_count <= 3'd4;
		controllerinjector_bankmachine2_level <= 4'd0;
		controllerinjector_bankmachine2_produce <= 3'd0;
		controllerinjector_bankmachine2_consume <= 3'd0;
		controllerinjector_bankmachine2_has_openrow <= 1'd0;
		controllerinjector_bankmachine2_openrow <= 14'd0;
		controllerinjector_bankmachine2_count <= 3'd4;
		controllerinjector_bankmachine3_level <= 4'd0;
		controllerinjector_bankmachine3_produce <= 3'd0;
		controllerinjector_bankmachine3_consume <= 3'd0;
		controllerinjector_bankmachine3_has_openrow <= 1'd0;
		controllerinjector_bankmachine3_openrow <= 14'd0;
		controllerinjector_bankmachine3_count <= 3'd4;
		controllerinjector_bankmachine4_level <= 4'd0;
		controllerinjector_bankmachine4_produce <= 3'd0;
		controllerinjector_bankmachine4_consume <= 3'd0;
		controllerinjector_bankmachine4_has_openrow <= 1'd0;
		controllerinjector_bankmachine4_openrow <= 14'd0;
		controllerinjector_bankmachine4_count <= 3'd4;
		controllerinjector_bankmachine5_level <= 4'd0;
		controllerinjector_bankmachine5_produce <= 3'd0;
		controllerinjector_bankmachine5_consume <= 3'd0;
		controllerinjector_bankmachine5_has_openrow <= 1'd0;
		controllerinjector_bankmachine5_openrow <= 14'd0;
		controllerinjector_bankmachine5_count <= 3'd4;
		controllerinjector_bankmachine6_level <= 4'd0;
		controllerinjector_bankmachine6_produce <= 3'd0;
		controllerinjector_bankmachine6_consume <= 3'd0;
		controllerinjector_bankmachine6_has_openrow <= 1'd0;
		controllerinjector_bankmachine6_openrow <= 14'd0;
		controllerinjector_bankmachine6_count <= 3'd4;
		controllerinjector_bankmachine7_level <= 4'd0;
		controllerinjector_bankmachine7_produce <= 3'd0;
		controllerinjector_bankmachine7_consume <= 3'd0;
		controllerinjector_bankmachine7_has_openrow <= 1'd0;
		controllerinjector_bankmachine7_openrow <= 14'd0;
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
		adr_offset_r <= 2'd0;
		ethphy_crg_storage_full <= 1'd0;
		ethphy_crg_re <= 1'd0;
		ethphy_mdio_storage_full <= 3'd0;
		ethphy_mdio_re <= 1'd0;
		ethmac_tx_cdc_graycounter0_q <= 7'd0;
		ethmac_tx_cdc_graycounter0_q_binary <= 7'd0;
		ethmac_rx_cdc_graycounter1_q <= 7'd0;
		ethmac_rx_cdc_graycounter1_q_binary <= 7'd0;
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
		ethmac_sram0_bus_ack0 <= 1'd0;
		ethmac_sram1_bus_ack0 <= 1'd0;
		ethmac_sram0_bus_ack1 <= 1'd0;
		ethmac_sram1_bus_ack1 <= 1'd0;
		ethmac_slave_sel_r <= 4'd0;
		litedramwriteportupconverter_we <= 1'd0;
		litedramwriteportupconverter_address <= 24'd0;
		litedramwriteportupconverter_counter <= 2'd0;
		litedramwriteportupconverter_converter_source_last <= 1'd0;
		litedramwriteportupconverter_converter_source_payload_data <= 144'd0;
		litedramwriteportupconverter_converter_source_payload_valid_token_count <= 3'd0;
		litedramwriteportupconverter_converter_demux <= 2'd0;
		litedramwriteportupconverter_converter_strobe_all <= 1'd0;
		generator_base_storage_full <= 26'd0;
		generator_base_re <= 1'd0;
		generator_length_storage_full <= 26'd0;
		generator_length_re <= 1'd0;
		generator_core_fifo_level <= 5'd0;
		generator_core_fifo_produce <= 4'd0;
		generator_core_fifo_consume <= 4'd0;
		generator_core_o <= 32'd0;
		generator_core_cmd_counter <= 26'd0;
		generator_reset_sync_toggle_i <= 1'd0;
		generator_reset_sync_toggle_o_r <= 1'd0;
		generator_start_sync_toggle_i <= 1'd0;
		generator_start_sync_toggle_o_r <= 1'd0;
		generator_base_sync_o <= 26'd0;
		generator_base_sync_starter <= 1'd1;
		generator_base_sync_ping_toggle_i <= 1'd0;
		generator_base_sync_ping_toggle_o_r <= 1'd0;
		generator_base_sync_pong_toggle_i <= 1'd0;
		generator_base_sync_pong_toggle_o_r <= 1'd0;
		generator_base_sync_count <= 8'd128;
		generator_base_sync_ibuffer <= 26'd0;
		generator_length_sync_o <= 26'd0;
		generator_length_sync_starter <= 1'd1;
		generator_length_sync_ping_toggle_i <= 1'd0;
		generator_length_sync_ping_toggle_o_r <= 1'd0;
		generator_length_sync_pong_toggle_i <= 1'd0;
		generator_length_sync_pong_toggle_o_r <= 1'd0;
		generator_length_sync_count <= 8'd128;
		generator_length_sync_ibuffer <= 26'd0;
		litedramreadportupconverter_cmd_buffer_level <= 3'd0;
		litedramreadportupconverter_cmd_buffer_produce <= 2'd0;
		litedramreadportupconverter_cmd_buffer_consume <= 2'd0;
		litedramreadportupconverter_counter <= 2'd0;
		litedramreadportupconverter_rdata_buffer_source_payload_data <= 128'd0;
		litedramreadportupconverter_rdata_buffer_valid_n <= 1'd0;
		litedramreadportupconverter_rdata_buffer_last_n <= 1'd0;
		litedramreadportupconverter_rdata_converter_converter_mux <= 2'd0;
		litedramreadportupconverter_rdata_chunk <= 4'd1;
		checker_base_storage_full <= 26'd0;
		checker_base_re <= 1'd0;
		checker_length_storage_full <= 26'd0;
		checker_length_re <= 1'd0;
		checker_core_err_count <= 32'd0;
		checker_core_rsv_level <= 5'd0;
		checker_core_fifo_level <= 5'd0;
		checker_core_fifo_produce <= 4'd0;
		checker_core_fifo_consume <= 4'd0;
		checker_core_o <= 32'd0;
		checker_core_cmd_counter <= 26'd0;
		checker_core_data_counter <= 26'd0;
		checker_reset_sync_toggle_i <= 1'd0;
		checker_reset_sync_toggle_o_r <= 1'd0;
		checker_start_sync_toggle_i <= 1'd0;
		checker_start_sync_toggle_o_r <= 1'd0;
		checker_base_sync_o <= 26'd0;
		checker_base_sync_starter <= 1'd1;
		checker_base_sync_ping_toggle_i <= 1'd0;
		checker_base_sync_ping_toggle_o_r <= 1'd0;
		checker_base_sync_pong_toggle_i <= 1'd0;
		checker_base_sync_pong_toggle_o_r <= 1'd0;
		checker_base_sync_count <= 8'd128;
		checker_base_sync_ibuffer <= 26'd0;
		checker_length_sync_o <= 26'd0;
		checker_length_sync_starter <= 1'd1;
		checker_length_sync_ping_toggle_i <= 1'd0;
		checker_length_sync_ping_toggle_o_r <= 1'd0;
		checker_length_sync_pong_toggle_i <= 1'd0;
		checker_length_sync_pong_toggle_o_r <= 1'd0;
		checker_length_sync_count <= 8'd128;
		checker_length_sync_ibuffer <= 26'd0;
		checker_err_count_sync_o <= 32'd0;
		checker_err_count_sync_starter <= 1'd1;
		checker_err_count_sync_ping_toggle_i <= 1'd0;
		checker_err_count_sync_ping_toggle_o_r <= 1'd0;
		checker_err_count_sync_pong_toggle_i <= 1'd0;
		checker_err_count_sync_pong_toggle_o_r <= 1'd0;
		checker_err_count_sync_count <= 8'd128;
		checker_err_count_sync_ibuffer <= 32'd0;
		frontend_buffer_source_payload_data <= 91'd0;
		frontend_buffer_source_payload_hit <= 1'd0;
		frontend_buffer_valid_n <= 1'd0;
		frontend_buffer_last_n <= 1'd0;
		frontend_trigger_value_storage_full <= 91'd0;
		frontend_trigger_value_re <= 1'd0;
		frontend_trigger_mask_storage_full <= 91'd0;
		frontend_trigger_mask_re <= 1'd0;
		frontend_subsampler_value_storage_full <= 16'd0;
		frontend_subsampler_value_re <= 1'd0;
		frontend_subsampler_counter <= 16'd0;
		frontend_asyncfifo_graycounter0_q <= 4'd0;
		frontend_asyncfifo_graycounter0_q_binary <= 4'd0;
		frontend_asyncfifo_graycounter1_q <= 4'd0;
		frontend_asyncfifo_graycounter1_q_binary <= 4'd0;
		storage_length_storage_full <= 11'd0;
		storage_length_re <= 1'd0;
		storage_offset_storage_full <= 11'd0;
		storage_offset_re <= 1'd0;
		storage_mem_readable <= 1'd0;
		storage_mem_level0 <= 11'd0;
		storage_mem_produce <= 10'd0;
		storage_mem_consume <= 10'd0;
		opsisi2c_storage_full <= 1'd0;
		opsisi2c_re <= 1'd0;
		opsisi2c_state <= 4'd0;
		controllerinjector_refresher_state <= 2'd0;
		controllerinjector_bankmachine0_state <= 3'd0;
		controllerinjector_bankmachine1_state <= 3'd0;
		controllerinjector_bankmachine2_state <= 3'd0;
		controllerinjector_bankmachine3_state <= 3'd0;
		controllerinjector_bankmachine4_state <= 3'd0;
		controllerinjector_bankmachine5_state <= 3'd0;
		controllerinjector_bankmachine6_state <= 3'd0;
		controllerinjector_bankmachine7_state <= 3'd0;
		controllerinjector_multiplexer_state <= 3'd0;
		controllerinjector_state <= 2'd0;
		controllerinjector_roundrobin0_grant <= 2'd0;
		controllerinjector_roundrobin1_grant <= 2'd0;
		controllerinjector_roundrobin2_grant <= 2'd0;
		controllerinjector_roundrobin3_grant <= 2'd0;
		controllerinjector_roundrobin4_grant <= 2'd0;
		controllerinjector_roundrobin5_grant <= 2'd0;
		controllerinjector_roundrobin6_grant <= 2'd0;
		controllerinjector_roundrobin7_grant <= 2'd0;
		controllerinjector_new_master_wdata_ready0 <= 1'd0;
		controllerinjector_new_master_wdata_ready1 <= 1'd0;
		controllerinjector_new_master_wdata_ready2 <= 1'd0;
		controllerinjector_new_master_wdata_ready3 <= 1'd0;
		controllerinjector_new_master_wdata_ready4 <= 1'd0;
		controllerinjector_new_master_wdata_ready5 <= 1'd0;
		controllerinjector_new_master_rdata_valid0 <= 1'd0;
		controllerinjector_new_master_rdata_valid1 <= 1'd0;
		controllerinjector_new_master_rdata_valid2 <= 1'd0;
		controllerinjector_new_master_rdata_valid3 <= 1'd0;
		controllerinjector_new_master_rdata_valid4 <= 1'd0;
		controllerinjector_new_master_rdata_valid5 <= 1'd0;
		controllerinjector_new_master_rdata_valid6 <= 1'd0;
		controllerinjector_new_master_rdata_valid7 <= 1'd0;
		controllerinjector_new_master_rdata_valid8 <= 1'd0;
		controllerinjector_new_master_rdata_valid9 <= 1'd0;
		controllerinjector_new_master_rdata_valid10 <= 1'd0;
		controllerinjector_new_master_rdata_valid11 <= 1'd0;
		controllerinjector_new_master_rdata_valid12 <= 1'd0;
		controllerinjector_new_master_rdata_valid13 <= 1'd0;
		controllerinjector_new_master_rdata_valid14 <= 1'd0;
		cache_state <= 3'd0;
		litedramwishbonebridge_state <= 2'd0;
		liteethmacsramwriter_state <= 2'd0;
		liteethmacsramreader_state <= 2'd0;
		litedrambistgenerator_state <= 2'd0;
		fsm0_state <= 2'd0;
		fsm1_state <= 2'd0;
		litescopeanalyzer_state <= 2'd0;
		memtestsoc_grant <= 1'd0;
		memtestsoc_slave_sel_r <= 6'd0;
		memtestsoc_interface0_dat_r <= 8'd0;
		memtestsoc_interface1_dat_r <= 8'd0;
		memtestsoc_interface2_dat_r <= 8'd0;
		memtestsoc_interface3_dat_r <= 8'd0;
		memtestsoc_interface4_dat_r <= 8'd0;
		memtestsoc_interface5_dat_r <= 8'd0;
		memtestsoc_interface6_dat_r <= 8'd0;
		memtestsoc_interface7_dat_r <= 8'd0;
		memtestsoc_interface8_dat_r <= 8'd0;
		memtestsoc_interface9_dat_r <= 8'd0;
		memtestsoc_interface10_dat_r <= 8'd0;
	end else begin
		memtestsoc_rom_bus_ack <= 1'd0;
		if (((memtestsoc_rom_bus_cyc & memtestsoc_rom_bus_stb) & (~memtestsoc_rom_bus_ack))) begin
			memtestsoc_rom_bus_ack <= 1'd1;
		end
		memtestsoc_sram_bus_ack <= 1'd0;
		if (((memtestsoc_sram_bus_cyc & memtestsoc_sram_bus_stb) & (~memtestsoc_sram_bus_ack))) begin
			memtestsoc_sram_bus_ack <= 1'd1;
		end
		memtestsoc_interface_we <= 1'd0;
		memtestsoc_interface_dat_w <= memtestsoc_bus_wishbone_dat_w;
		memtestsoc_interface_adr <= memtestsoc_bus_wishbone_adr;
		memtestsoc_bus_wishbone_dat_r <= memtestsoc_interface_dat_r;
		if ((memtestsoc_counter == 1'd1)) begin
			memtestsoc_interface_we <= memtestsoc_bus_wishbone_we;
		end
		if ((memtestsoc_counter == 2'd2)) begin
			memtestsoc_bus_wishbone_ack <= 1'd1;
		end
		if ((memtestsoc_counter == 2'd3)) begin
			memtestsoc_bus_wishbone_ack <= 1'd0;
		end
		if ((memtestsoc_counter != 1'd0)) begin
			memtestsoc_counter <= (memtestsoc_counter + 1'd1);
		end else begin
			if ((memtestsoc_bus_wishbone_cyc & memtestsoc_bus_wishbone_stb)) begin
				memtestsoc_counter <= 1'd1;
			end
		end
		if (memtestsoc_en_storage) begin
			if ((memtestsoc_value == 1'd0)) begin
				memtestsoc_value <= memtestsoc_reload_storage;
			end else begin
				memtestsoc_value <= (memtestsoc_value - 1'd1);
			end
		end else begin
			memtestsoc_value <= memtestsoc_load_storage;
		end
		if (memtestsoc_update_value_re) begin
			memtestsoc_value_status <= memtestsoc_value;
		end
		if (memtestsoc_zero_clear) begin
			memtestsoc_zero_pending <= 1'd0;
		end
		memtestsoc_zero_old_trigger <= memtestsoc_zero_trigger;
		if (((~memtestsoc_zero_trigger) & memtestsoc_zero_old_trigger)) begin
			memtestsoc_zero_pending <= 1'd1;
		end
		if ((dna_cnt < 7'd114)) begin
			dna_cnt <= (dna_cnt + 1'd1);
			if (dna_cnt[0]) begin
				dna_status <= {dna_status, dna_do};
			end
		end
		opsis_i2c_sda_drv_reg <= opsis_i2c_sda_drv;
		opsis_i2c_scl_drv_reg <= opsis_i2c_scl_drv;
		{opsis_i2c_samp_carry, opsis_i2c_samp_count} <= (opsis_i2c_samp_count + 1'd1);
		if (opsis_i2c_samp_carry) begin
			opsis_i2c_scl_i <= opsis_i2c_scl_raw;
			opsis_i2c_sda_i <= opsis_i2c_sda_raw;
		end
		opsis_i2c_scl_r <= opsis_i2c_scl_i;
		opsis_i2c_sda_r <= opsis_i2c_sda_i;
		if ((opsis_i2c_start | opsis_i2c_counter_reset)) begin
			opsis_i2c_counter <= 1'd0;
		end
		if (opsis_i2c_scl_rising) begin
			if ((opsis_i2c_counter == 4'd8)) begin
				opsis_i2c_counter <= 1'd0;
			end else begin
				opsis_i2c_counter <= (opsis_i2c_counter + 1'd1);
				opsis_i2c_din <= {opsis_i2c_din[6:0], opsis_i2c_sda_i};
			end
		end
		if (opsis_i2c_update_is_read) begin
			opsis_i2c_is_read <= opsis_i2c_din[0];
		end
		if (opsis_i2c_data_drv_en) begin
			opsis_i2c_data_drv <= 1'd1;
		end else begin
			if (opsis_i2c_data_drv_stop) begin
				opsis_i2c_data_drv <= 1'd0;
			end
		end
		if (opsis_i2c_data_drv_en) begin
			case (opsis_i2c_counter)
				1'd0: begin
					opsis_i2c_data_bit <= opsis_i2c_shift_reg_storage[7];
				end
				1'd1: begin
					opsis_i2c_data_bit <= opsis_i2c_shift_reg_storage[6];
				end
				2'd2: begin
					opsis_i2c_data_bit <= opsis_i2c_shift_reg_storage[5];
				end
				2'd3: begin
					opsis_i2c_data_bit <= opsis_i2c_shift_reg_storage[4];
				end
				3'd4: begin
					opsis_i2c_data_bit <= opsis_i2c_shift_reg_storage[3];
				end
				3'd5: begin
					opsis_i2c_data_bit <= opsis_i2c_shift_reg_storage[2];
				end
				3'd6: begin
					opsis_i2c_data_bit <= opsis_i2c_shift_reg_storage[1];
				end
				default: begin
					opsis_i2c_data_bit <= opsis_i2c_shift_reg_storage[0];
				end
			endcase
		end
		opsisi2c_state <= opsisi2c_next_state;
		phy_sink_ready <= 1'd0;
		if (((phy_sink_valid & (~phy_tx_busy)) & (~phy_sink_ready))) begin
			phy_tx_reg <= phy_sink_payload_data;
			phy_tx_bitcount <= 1'd0;
			phy_tx_busy <= 1'd1;
			tx <= 1'd0;
		end else begin
			if ((phy_uart_clk_txen & phy_tx_busy)) begin
				phy_tx_bitcount <= (phy_tx_bitcount + 1'd1);
				if ((phy_tx_bitcount == 4'd8)) begin
					tx <= 1'd1;
				end else begin
					if ((phy_tx_bitcount == 4'd9)) begin
						tx <= 1'd1;
						phy_tx_busy <= 1'd0;
						phy_sink_ready <= 1'd1;
					end else begin
						tx <= phy_tx_reg[0];
						phy_tx_reg <= {1'd0, phy_tx_reg[7:1]};
					end
				end
			end
		end
		if (phy_tx_busy) begin
			{phy_uart_clk_txen, phy_phase_accumulator_tx} <= (phy_phase_accumulator_tx + phy_storage);
		end else begin
			{phy_uart_clk_txen, phy_phase_accumulator_tx} <= 1'd0;
		end
		phy_source_valid <= 1'd0;
		phy_rx_r <= phy_rx;
		if ((~phy_rx_busy)) begin
			if (((~phy_rx) & phy_rx_r)) begin
				phy_rx_busy <= 1'd1;
				phy_rx_bitcount <= 1'd0;
			end
		end else begin
			if (phy_uart_clk_rxen) begin
				phy_rx_bitcount <= (phy_rx_bitcount + 1'd1);
				if ((phy_rx_bitcount == 1'd0)) begin
					if (phy_rx) begin
						phy_rx_busy <= 1'd0;
					end
				end else begin
					if ((phy_rx_bitcount == 4'd9)) begin
						phy_rx_busy <= 1'd0;
						if (phy_rx) begin
							phy_source_payload_data <= phy_rx_reg;
							phy_source_valid <= 1'd1;
						end
					end else begin
						phy_rx_reg <= {phy_rx, phy_rx_reg[7:1]};
					end
				end
			end
		end
		if (phy_rx_busy) begin
			{phy_uart_clk_rxen, phy_phase_accumulator_rx} <= (phy_phase_accumulator_rx + phy_storage);
		end else begin
			{phy_uart_clk_rxen, phy_phase_accumulator_rx} <= 32'd2147483648;
		end
		if (uart_tx_clear) begin
			uart_tx_pending <= 1'd0;
		end
		uart_tx_old_trigger <= uart_tx_trigger;
		if (((~uart_tx_trigger) & uart_tx_old_trigger)) begin
			uart_tx_pending <= 1'd1;
		end
		if (uart_rx_clear) begin
			uart_rx_pending <= 1'd0;
		end
		uart_rx_old_trigger <= uart_rx_trigger;
		if (((~uart_rx_trigger) & uart_rx_old_trigger)) begin
			uart_rx_pending <= 1'd1;
		end
		if (((uart_tx_fifo_syncfifo_we & uart_tx_fifo_syncfifo_writable) & (~uart_tx_fifo_replace))) begin
			uart_tx_fifo_produce <= (uart_tx_fifo_produce + 1'd1);
		end
		if (uart_tx_fifo_do_read) begin
			uart_tx_fifo_consume <= (uart_tx_fifo_consume + 1'd1);
		end
		if (((uart_tx_fifo_syncfifo_we & uart_tx_fifo_syncfifo_writable) & (~uart_tx_fifo_replace))) begin
			if ((~uart_tx_fifo_do_read)) begin
				uart_tx_fifo_level <= (uart_tx_fifo_level + 1'd1);
			end
		end else begin
			if (uart_tx_fifo_do_read) begin
				uart_tx_fifo_level <= (uart_tx_fifo_level - 1'd1);
			end
		end
		if (((uart_rx_fifo_syncfifo_we & uart_rx_fifo_syncfifo_writable) & (~uart_rx_fifo_replace))) begin
			uart_rx_fifo_produce <= (uart_rx_fifo_produce + 1'd1);
		end
		if (uart_rx_fifo_do_read) begin
			uart_rx_fifo_consume <= (uart_rx_fifo_consume + 1'd1);
		end
		if (((uart_rx_fifo_syncfifo_we & uart_rx_fifo_syncfifo_writable) & (~uart_rx_fifo_replace))) begin
			if ((~uart_rx_fifo_do_read)) begin
				uart_rx_fifo_level <= (uart_rx_fifo_level + 1'd1);
			end
		end else begin
			if (uart_rx_fifo_do_read) begin
				uart_rx_fifo_level <= (uart_rx_fifo_level - 1'd1);
			end
		end
		if ((spiflash_i1 == 1'd1)) begin
			spiflash_clk <= 1'd1;
			spiflash_dqi <= spiflash_i0;
		end
		if ((spiflash_i1 == 2'd3)) begin
			spiflash_i1 <= 1'd0;
			spiflash_clk <= 1'd0;
			spiflash_sr <= {spiflash_sr[27:0], spiflash_dqi};
		end else begin
			spiflash_i1 <= (spiflash_i1 + 1'd1);
		end
		if ((((spiflash_bus_cyc & spiflash_bus_stb) & (spiflash_i1 == 2'd3)) & (spiflash_counter == 1'd0))) begin
			spiflash_dq_oe <= 1'd1;
			spiflash_cs_n <= 1'd0;
			spiflash_sr[31:0] <= 32'd4294901503;
		end
		if ((spiflash_counter == 6'd32)) begin
			spiflash_sr[31:8] <= {spiflash_bus_adr, {2{1'd0}}};
		end
		if ((spiflash_counter == 6'd56)) begin
			spiflash_dq_oe <= 1'd0;
		end
		if ((spiflash_counter == 8'd128)) begin
			spiflash_bus_ack <= 1'd1;
			spiflash_cs_n <= 1'd1;
		end
		if ((spiflash_counter == 8'd129)) begin
			spiflash_bus_ack <= 1'd0;
		end
		if ((spiflash_counter == 8'd133)) begin
		end
		if ((spiflash_counter == 8'd133)) begin
			spiflash_counter <= 1'd0;
		end else begin
			if ((spiflash_counter != 1'd0)) begin
				spiflash_counter <= (spiflash_counter + 1'd1);
			end else begin
				if (((spiflash_bus_cyc & spiflash_bus_stb) & (spiflash_i1 == 2'd3))) begin
					spiflash_counter <= 1'd1;
				end
			end
		end
		if (front_panel_wait) begin
			if ((~front_panel_done)) begin
				front_panel_count <= (front_panel_count - 1'd1);
			end
		end else begin
			front_panel_count <= 26'd50000000;
		end
		phase_sys <= phase_sys2x;
		dfi_dfi_p0_rddata <= rddata0;
		dfi_dfi_p0_rddata_valid <= rddata_valid[0];
		dfi_dfi_p1_rddata <= rddata1;
		dfi_dfi_p1_rddata_valid <= rddata_valid[1];
		dfi_dfi_p2_rddata <= half_rate_phy_dfi_p0_rddata;
		dfi_dfi_p2_rddata_valid <= half_rate_phy_dfi_p0_rddata_valid;
		dfi_dfi_p3_rddata <= half_rate_phy_dfi_p1_rddata;
		dfi_dfi_p3_rddata_valid <= half_rate_phy_dfi_p1_rddata_valid;
		if (controllerinjector_inti_p0_rddata_valid) begin
			controllerinjector_phaseinjector0_status <= controllerinjector_inti_p0_rddata;
		end
		if (controllerinjector_inti_p1_rddata_valid) begin
			controllerinjector_phaseinjector1_status <= controllerinjector_inti_p1_rddata;
		end
		if (controllerinjector_inti_p2_rddata_valid) begin
			controllerinjector_phaseinjector2_status <= controllerinjector_inti_p2_rddata;
		end
		if (controllerinjector_inti_p3_rddata_valid) begin
			controllerinjector_phaseinjector3_status <= controllerinjector_inti_p3_rddata;
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
		if ((controllerinjector_counter == 5'd17)) begin
			controllerinjector_seq_done <= 1'd1;
		end
		if ((controllerinjector_counter == 5'd17)) begin
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
			controllerinjector_count <= 8'd196;
		end
		controllerinjector_refresher_state <= controllerinjector_refresher_next_state;
		if (controllerinjector_bankmachine0_track_close) begin
			controllerinjector_bankmachine0_has_openrow <= 1'd0;
		end else begin
			if (controllerinjector_bankmachine0_track_open) begin
				controllerinjector_bankmachine0_has_openrow <= 1'd1;
				controllerinjector_bankmachine0_openrow <= controllerinjector_bankmachine0_source_payload_adr[20:7];
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
		controllerinjector_bankmachine0_state <= controllerinjector_bankmachine0_next_state;
		if (controllerinjector_bankmachine1_track_close) begin
			controllerinjector_bankmachine1_has_openrow <= 1'd0;
		end else begin
			if (controllerinjector_bankmachine1_track_open) begin
				controllerinjector_bankmachine1_has_openrow <= 1'd1;
				controllerinjector_bankmachine1_openrow <= controllerinjector_bankmachine1_source_payload_adr[20:7];
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
		controllerinjector_bankmachine1_state <= controllerinjector_bankmachine1_next_state;
		if (controllerinjector_bankmachine2_track_close) begin
			controllerinjector_bankmachine2_has_openrow <= 1'd0;
		end else begin
			if (controllerinjector_bankmachine2_track_open) begin
				controllerinjector_bankmachine2_has_openrow <= 1'd1;
				controllerinjector_bankmachine2_openrow <= controllerinjector_bankmachine2_source_payload_adr[20:7];
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
		controllerinjector_bankmachine2_state <= controllerinjector_bankmachine2_next_state;
		if (controllerinjector_bankmachine3_track_close) begin
			controllerinjector_bankmachine3_has_openrow <= 1'd0;
		end else begin
			if (controllerinjector_bankmachine3_track_open) begin
				controllerinjector_bankmachine3_has_openrow <= 1'd1;
				controllerinjector_bankmachine3_openrow <= controllerinjector_bankmachine3_source_payload_adr[20:7];
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
		controllerinjector_bankmachine3_state <= controllerinjector_bankmachine3_next_state;
		if (controllerinjector_bankmachine4_track_close) begin
			controllerinjector_bankmachine4_has_openrow <= 1'd0;
		end else begin
			if (controllerinjector_bankmachine4_track_open) begin
				controllerinjector_bankmachine4_has_openrow <= 1'd1;
				controllerinjector_bankmachine4_openrow <= controllerinjector_bankmachine4_source_payload_adr[20:7];
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
		controllerinjector_bankmachine4_state <= controllerinjector_bankmachine4_next_state;
		if (controllerinjector_bankmachine5_track_close) begin
			controllerinjector_bankmachine5_has_openrow <= 1'd0;
		end else begin
			if (controllerinjector_bankmachine5_track_open) begin
				controllerinjector_bankmachine5_has_openrow <= 1'd1;
				controllerinjector_bankmachine5_openrow <= controllerinjector_bankmachine5_source_payload_adr[20:7];
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
		controllerinjector_bankmachine5_state <= controllerinjector_bankmachine5_next_state;
		if (controllerinjector_bankmachine6_track_close) begin
			controllerinjector_bankmachine6_has_openrow <= 1'd0;
		end else begin
			if (controllerinjector_bankmachine6_track_open) begin
				controllerinjector_bankmachine6_has_openrow <= 1'd1;
				controllerinjector_bankmachine6_openrow <= controllerinjector_bankmachine6_source_payload_adr[20:7];
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
		controllerinjector_bankmachine6_state <= controllerinjector_bankmachine6_next_state;
		if (controllerinjector_bankmachine7_track_close) begin
			controllerinjector_bankmachine7_has_openrow <= 1'd0;
		end else begin
			if (controllerinjector_bankmachine7_track_open) begin
				controllerinjector_bankmachine7_has_openrow <= 1'd1;
				controllerinjector_bankmachine7_openrow <= controllerinjector_bankmachine7_source_payload_adr[20:7];
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
		controllerinjector_bankmachine7_state <= controllerinjector_bankmachine7_next_state;
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
		controllerinjector_dfi_p0_address <= array_muxed8;
		controllerinjector_dfi_p0_bank <= array_muxed9;
		controllerinjector_dfi_p0_cas_n <= (~array_muxed10);
		controllerinjector_dfi_p0_ras_n <= (~array_muxed11);
		controllerinjector_dfi_p0_we_n <= (~array_muxed12);
		controllerinjector_dfi_p0_rddata_en <= array_muxed13;
		controllerinjector_dfi_p0_wrdata_en <= array_muxed14;
		controllerinjector_dfi_p1_address <= array_muxed15;
		controllerinjector_dfi_p1_bank <= array_muxed16;
		controllerinjector_dfi_p1_cas_n <= (~array_muxed17);
		controllerinjector_dfi_p1_ras_n <= (~array_muxed18);
		controllerinjector_dfi_p1_we_n <= (~array_muxed19);
		controllerinjector_dfi_p1_rddata_en <= array_muxed20;
		controllerinjector_dfi_p1_wrdata_en <= array_muxed21;
		controllerinjector_dfi_p2_address <= array_muxed22;
		controllerinjector_dfi_p2_bank <= array_muxed23;
		controllerinjector_dfi_p2_cas_n <= (~array_muxed24);
		controllerinjector_dfi_p2_ras_n <= (~array_muxed25);
		controllerinjector_dfi_p2_we_n <= (~array_muxed26);
		controllerinjector_dfi_p2_rddata_en <= array_muxed27;
		controllerinjector_dfi_p2_wrdata_en <= array_muxed28;
		controllerinjector_dfi_p3_address <= array_muxed29;
		controllerinjector_dfi_p3_bank <= array_muxed30;
		controllerinjector_dfi_p3_cas_n <= (~array_muxed31);
		controllerinjector_dfi_p3_ras_n <= (~array_muxed32);
		controllerinjector_dfi_p3_we_n <= (~array_muxed33);
		controllerinjector_dfi_p3_rddata_en <= array_muxed34;
		controllerinjector_dfi_p3_wrdata_en <= array_muxed35;
		controllerinjector_multiplexer_state <= controllerinjector_multiplexer_next_state;
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
		controllerinjector_new_master_wdata_ready0 <= ((((((((1'd0 | ((controllerinjector_roundrobin0_grant == 1'd0) & controllerinjector_interface_bank0_wdata_ready)) | ((controllerinjector_roundrobin1_grant == 1'd0) & controllerinjector_interface_bank1_wdata_ready)) | ((controllerinjector_roundrobin2_grant == 1'd0) & controllerinjector_interface_bank2_wdata_ready)) | ((controllerinjector_roundrobin3_grant == 1'd0) & controllerinjector_interface_bank3_wdata_ready)) | ((controllerinjector_roundrobin4_grant == 1'd0) & controllerinjector_interface_bank4_wdata_ready)) | ((controllerinjector_roundrobin5_grant == 1'd0) & controllerinjector_interface_bank5_wdata_ready)) | ((controllerinjector_roundrobin6_grant == 1'd0) & controllerinjector_interface_bank6_wdata_ready)) | ((controllerinjector_roundrobin7_grant == 1'd0) & controllerinjector_interface_bank7_wdata_ready));
		controllerinjector_new_master_wdata_ready1 <= controllerinjector_new_master_wdata_ready0;
		controllerinjector_new_master_wdata_ready2 <= ((((((((1'd0 | ((controllerinjector_roundrobin0_grant == 1'd1) & controllerinjector_interface_bank0_wdata_ready)) | ((controllerinjector_roundrobin1_grant == 1'd1) & controllerinjector_interface_bank1_wdata_ready)) | ((controllerinjector_roundrobin2_grant == 1'd1) & controllerinjector_interface_bank2_wdata_ready)) | ((controllerinjector_roundrobin3_grant == 1'd1) & controllerinjector_interface_bank3_wdata_ready)) | ((controllerinjector_roundrobin4_grant == 1'd1) & controllerinjector_interface_bank4_wdata_ready)) | ((controllerinjector_roundrobin5_grant == 1'd1) & controllerinjector_interface_bank5_wdata_ready)) | ((controllerinjector_roundrobin6_grant == 1'd1) & controllerinjector_interface_bank6_wdata_ready)) | ((controllerinjector_roundrobin7_grant == 1'd1) & controllerinjector_interface_bank7_wdata_ready));
		controllerinjector_new_master_wdata_ready3 <= controllerinjector_new_master_wdata_ready2;
		controllerinjector_new_master_wdata_ready4 <= ((((((((1'd0 | ((controllerinjector_roundrobin0_grant == 2'd2) & controllerinjector_interface_bank0_wdata_ready)) | ((controllerinjector_roundrobin1_grant == 2'd2) & controllerinjector_interface_bank1_wdata_ready)) | ((controllerinjector_roundrobin2_grant == 2'd2) & controllerinjector_interface_bank2_wdata_ready)) | ((controllerinjector_roundrobin3_grant == 2'd2) & controllerinjector_interface_bank3_wdata_ready)) | ((controllerinjector_roundrobin4_grant == 2'd2) & controllerinjector_interface_bank4_wdata_ready)) | ((controllerinjector_roundrobin5_grant == 2'd2) & controllerinjector_interface_bank5_wdata_ready)) | ((controllerinjector_roundrobin6_grant == 2'd2) & controllerinjector_interface_bank6_wdata_ready)) | ((controllerinjector_roundrobin7_grant == 2'd2) & controllerinjector_interface_bank7_wdata_ready));
		controllerinjector_new_master_wdata_ready5 <= controllerinjector_new_master_wdata_ready4;
		controllerinjector_new_master_rdata_valid0 <= ((((((((1'd0 | ((controllerinjector_roundrobin0_grant == 1'd0) & controllerinjector_interface_bank0_rdata_valid)) | ((controllerinjector_roundrobin1_grant == 1'd0) & controllerinjector_interface_bank1_rdata_valid)) | ((controllerinjector_roundrobin2_grant == 1'd0) & controllerinjector_interface_bank2_rdata_valid)) | ((controllerinjector_roundrobin3_grant == 1'd0) & controllerinjector_interface_bank3_rdata_valid)) | ((controllerinjector_roundrobin4_grant == 1'd0) & controllerinjector_interface_bank4_rdata_valid)) | ((controllerinjector_roundrobin5_grant == 1'd0) & controllerinjector_interface_bank5_rdata_valid)) | ((controllerinjector_roundrobin6_grant == 1'd0) & controllerinjector_interface_bank6_rdata_valid)) | ((controllerinjector_roundrobin7_grant == 1'd0) & controllerinjector_interface_bank7_rdata_valid));
		controllerinjector_new_master_rdata_valid1 <= controllerinjector_new_master_rdata_valid0;
		controllerinjector_new_master_rdata_valid2 <= controllerinjector_new_master_rdata_valid1;
		controllerinjector_new_master_rdata_valid3 <= controllerinjector_new_master_rdata_valid2;
		controllerinjector_new_master_rdata_valid4 <= controllerinjector_new_master_rdata_valid3;
		controllerinjector_new_master_rdata_valid5 <= ((((((((1'd0 | ((controllerinjector_roundrobin0_grant == 1'd1) & controllerinjector_interface_bank0_rdata_valid)) | ((controllerinjector_roundrobin1_grant == 1'd1) & controllerinjector_interface_bank1_rdata_valid)) | ((controllerinjector_roundrobin2_grant == 1'd1) & controllerinjector_interface_bank2_rdata_valid)) | ((controllerinjector_roundrobin3_grant == 1'd1) & controllerinjector_interface_bank3_rdata_valid)) | ((controllerinjector_roundrobin4_grant == 1'd1) & controllerinjector_interface_bank4_rdata_valid)) | ((controllerinjector_roundrobin5_grant == 1'd1) & controllerinjector_interface_bank5_rdata_valid)) | ((controllerinjector_roundrobin6_grant == 1'd1) & controllerinjector_interface_bank6_rdata_valid)) | ((controllerinjector_roundrobin7_grant == 1'd1) & controllerinjector_interface_bank7_rdata_valid));
		controllerinjector_new_master_rdata_valid6 <= controllerinjector_new_master_rdata_valid5;
		controllerinjector_new_master_rdata_valid7 <= controllerinjector_new_master_rdata_valid6;
		controllerinjector_new_master_rdata_valid8 <= controllerinjector_new_master_rdata_valid7;
		controllerinjector_new_master_rdata_valid9 <= controllerinjector_new_master_rdata_valid8;
		controllerinjector_new_master_rdata_valid10 <= ((((((((1'd0 | ((controllerinjector_roundrobin0_grant == 2'd2) & controllerinjector_interface_bank0_rdata_valid)) | ((controllerinjector_roundrobin1_grant == 2'd2) & controllerinjector_interface_bank1_rdata_valid)) | ((controllerinjector_roundrobin2_grant == 2'd2) & controllerinjector_interface_bank2_rdata_valid)) | ((controllerinjector_roundrobin3_grant == 2'd2) & controllerinjector_interface_bank3_rdata_valid)) | ((controllerinjector_roundrobin4_grant == 2'd2) & controllerinjector_interface_bank4_rdata_valid)) | ((controllerinjector_roundrobin5_grant == 2'd2) & controllerinjector_interface_bank5_rdata_valid)) | ((controllerinjector_roundrobin6_grant == 2'd2) & controllerinjector_interface_bank6_rdata_valid)) | ((controllerinjector_roundrobin7_grant == 2'd2) & controllerinjector_interface_bank7_rdata_valid));
		controllerinjector_new_master_rdata_valid11 <= controllerinjector_new_master_rdata_valid10;
		controllerinjector_new_master_rdata_valid12 <= controllerinjector_new_master_rdata_valid11;
		controllerinjector_new_master_rdata_valid13 <= controllerinjector_new_master_rdata_valid12;
		controllerinjector_new_master_rdata_valid14 <= controllerinjector_new_master_rdata_valid13;
		if (litedramwriteportupconverter_counter_reset) begin
			litedramwriteportupconverter_counter <= 1'd0;
		end else begin
			if (litedramwriteportupconverter_counter_ce) begin
				litedramwriteportupconverter_counter <= (litedramwriteportupconverter_counter + 1'd1);
			end
		end
		controllerinjector_state <= controllerinjector_next_state;
		if (litedramwriteportupconverter_we_controllerinjector_next_value_ce0) begin
			litedramwriteportupconverter_we <= litedramwriteportupconverter_we_controllerinjector_next_value0;
		end
		if (litedramwriteportupconverter_address_controllerinjector_next_value_ce1) begin
			litedramwriteportupconverter_address <= litedramwriteportupconverter_address_controllerinjector_next_value1;
		end
		if (litedramwriteportupconverter_converter_source_ready) begin
			litedramwriteportupconverter_converter_strobe_all <= 1'd0;
		end
		if (litedramwriteportupconverter_converter_load_part) begin
			if (((litedramwriteportupconverter_converter_demux == 2'd3) | litedramwriteportupconverter_converter_sink_last)) begin
				litedramwriteportupconverter_converter_demux <= 1'd0;
				litedramwriteportupconverter_converter_strobe_all <= 1'd1;
			end else begin
				litedramwriteportupconverter_converter_demux <= (litedramwriteportupconverter_converter_demux + 1'd1);
			end
		end
		if ((litedramwriteportupconverter_converter_source_valid & litedramwriteportupconverter_converter_source_ready)) begin
			litedramwriteportupconverter_converter_source_last <= litedramwriteportupconverter_converter_sink_last;
		end else begin
			if ((litedramwriteportupconverter_converter_sink_valid & litedramwriteportupconverter_converter_sink_ready)) begin
				litedramwriteportupconverter_converter_source_last <= (litedramwriteportupconverter_converter_sink_last | litedramwriteportupconverter_converter_source_last);
			end
		end
		if (litedramwriteportupconverter_converter_load_part) begin
			case (litedramwriteportupconverter_converter_demux)
				1'd0: begin
					litedramwriteportupconverter_converter_source_payload_data[35:0] <= litedramwriteportupconverter_converter_sink_payload_data;
				end
				1'd1: begin
					litedramwriteportupconverter_converter_source_payload_data[71:36] <= litedramwriteportupconverter_converter_sink_payload_data;
				end
				2'd2: begin
					litedramwriteportupconverter_converter_source_payload_data[107:72] <= litedramwriteportupconverter_converter_sink_payload_data;
				end
				2'd3: begin
					litedramwriteportupconverter_converter_source_payload_data[143:108] <= litedramwriteportupconverter_converter_sink_payload_data;
				end
			endcase
		end
		if (litedramwriteportupconverter_converter_load_part) begin
			litedramwriteportupconverter_converter_source_payload_valid_token_count <= (litedramwriteportupconverter_converter_demux + 1'd1);
		end
		if (litedramreadportupconverter_counter_ce) begin
			litedramreadportupconverter_counter <= (litedramreadportupconverter_counter + 1'd1);
		end
		if ((litedramreadportupconverter_rdata_converter_source_valid & litedramreadportupconverter_rdata_converter_source_ready)) begin
			litedramreadportupconverter_rdata_chunk <= {litedramreadportupconverter_rdata_chunk[2:0], litedramreadportupconverter_rdata_chunk[3]};
		end
		if (((litedramreadportupconverter_cmd_buffer_syncfifo_we & litedramreadportupconverter_cmd_buffer_syncfifo_writable) & (~litedramreadportupconverter_cmd_buffer_replace))) begin
			litedramreadportupconverter_cmd_buffer_produce <= (litedramreadportupconverter_cmd_buffer_produce + 1'd1);
		end
		if (litedramreadportupconverter_cmd_buffer_do_read) begin
			litedramreadportupconverter_cmd_buffer_consume <= (litedramreadportupconverter_cmd_buffer_consume + 1'd1);
		end
		if (((litedramreadportupconverter_cmd_buffer_syncfifo_we & litedramreadportupconverter_cmd_buffer_syncfifo_writable) & (~litedramreadportupconverter_cmd_buffer_replace))) begin
			if ((~litedramreadportupconverter_cmd_buffer_do_read)) begin
				litedramreadportupconverter_cmd_buffer_level <= (litedramreadportupconverter_cmd_buffer_level + 1'd1);
			end
		end else begin
			if (litedramreadportupconverter_cmd_buffer_do_read) begin
				litedramreadportupconverter_cmd_buffer_level <= (litedramreadportupconverter_cmd_buffer_level - 1'd1);
			end
		end
		if (litedramreadportupconverter_rdata_buffer_pipe_ce) begin
			litedramreadportupconverter_rdata_buffer_valid_n <= litedramreadportupconverter_rdata_buffer_sink_valid;
		end
		if (litedramreadportupconverter_rdata_buffer_pipe_ce) begin
			litedramreadportupconverter_rdata_buffer_last_n <= (litedramreadportupconverter_rdata_buffer_sink_valid & litedramreadportupconverter_rdata_buffer_sink_last);
		end
		if (litedramreadportupconverter_rdata_buffer_pipe_ce) begin
			litedramreadportupconverter_rdata_buffer_source_payload_data <= litedramreadportupconverter_rdata_buffer_sink_payload_data;
		end
		if ((litedramreadportupconverter_rdata_converter_converter_source_valid & litedramreadportupconverter_rdata_converter_converter_source_ready)) begin
			if (litedramreadportupconverter_rdata_converter_converter_last) begin
				litedramreadportupconverter_rdata_converter_converter_mux <= 1'd0;
			end else begin
				litedramreadportupconverter_rdata_converter_converter_mux <= (litedramreadportupconverter_rdata_converter_converter_mux + 1'd1);
			end
		end
		if (controllerinjector_roundrobin0_ce) begin
			case (controllerinjector_roundrobin0_grant)
				1'd0: begin
					if (controllerinjector_roundrobin0_request[1]) begin
						controllerinjector_roundrobin0_grant <= 1'd1;
					end else begin
						if (controllerinjector_roundrobin0_request[2]) begin
							controllerinjector_roundrobin0_grant <= 2'd2;
						end
					end
				end
				1'd1: begin
					if (controllerinjector_roundrobin0_request[2]) begin
						controllerinjector_roundrobin0_grant <= 2'd2;
					end else begin
						if (controllerinjector_roundrobin0_request[0]) begin
							controllerinjector_roundrobin0_grant <= 1'd0;
						end
					end
				end
				2'd2: begin
					if (controllerinjector_roundrobin0_request[0]) begin
						controllerinjector_roundrobin0_grant <= 1'd0;
					end else begin
						if (controllerinjector_roundrobin0_request[1]) begin
							controllerinjector_roundrobin0_grant <= 1'd1;
						end
					end
				end
			endcase
		end
		if (controllerinjector_roundrobin1_ce) begin
			case (controllerinjector_roundrobin1_grant)
				1'd0: begin
					if (controllerinjector_roundrobin1_request[1]) begin
						controllerinjector_roundrobin1_grant <= 1'd1;
					end else begin
						if (controllerinjector_roundrobin1_request[2]) begin
							controllerinjector_roundrobin1_grant <= 2'd2;
						end
					end
				end
				1'd1: begin
					if (controllerinjector_roundrobin1_request[2]) begin
						controllerinjector_roundrobin1_grant <= 2'd2;
					end else begin
						if (controllerinjector_roundrobin1_request[0]) begin
							controllerinjector_roundrobin1_grant <= 1'd0;
						end
					end
				end
				2'd2: begin
					if (controllerinjector_roundrobin1_request[0]) begin
						controllerinjector_roundrobin1_grant <= 1'd0;
					end else begin
						if (controllerinjector_roundrobin1_request[1]) begin
							controllerinjector_roundrobin1_grant <= 1'd1;
						end
					end
				end
			endcase
		end
		if (controllerinjector_roundrobin2_ce) begin
			case (controllerinjector_roundrobin2_grant)
				1'd0: begin
					if (controllerinjector_roundrobin2_request[1]) begin
						controllerinjector_roundrobin2_grant <= 1'd1;
					end else begin
						if (controllerinjector_roundrobin2_request[2]) begin
							controllerinjector_roundrobin2_grant <= 2'd2;
						end
					end
				end
				1'd1: begin
					if (controllerinjector_roundrobin2_request[2]) begin
						controllerinjector_roundrobin2_grant <= 2'd2;
					end else begin
						if (controllerinjector_roundrobin2_request[0]) begin
							controllerinjector_roundrobin2_grant <= 1'd0;
						end
					end
				end
				2'd2: begin
					if (controllerinjector_roundrobin2_request[0]) begin
						controllerinjector_roundrobin2_grant <= 1'd0;
					end else begin
						if (controllerinjector_roundrobin2_request[1]) begin
							controllerinjector_roundrobin2_grant <= 1'd1;
						end
					end
				end
			endcase
		end
		if (controllerinjector_roundrobin3_ce) begin
			case (controllerinjector_roundrobin3_grant)
				1'd0: begin
					if (controllerinjector_roundrobin3_request[1]) begin
						controllerinjector_roundrobin3_grant <= 1'd1;
					end else begin
						if (controllerinjector_roundrobin3_request[2]) begin
							controllerinjector_roundrobin3_grant <= 2'd2;
						end
					end
				end
				1'd1: begin
					if (controllerinjector_roundrobin3_request[2]) begin
						controllerinjector_roundrobin3_grant <= 2'd2;
					end else begin
						if (controllerinjector_roundrobin3_request[0]) begin
							controllerinjector_roundrobin3_grant <= 1'd0;
						end
					end
				end
				2'd2: begin
					if (controllerinjector_roundrobin3_request[0]) begin
						controllerinjector_roundrobin3_grant <= 1'd0;
					end else begin
						if (controllerinjector_roundrobin3_request[1]) begin
							controllerinjector_roundrobin3_grant <= 1'd1;
						end
					end
				end
			endcase
		end
		if (controllerinjector_roundrobin4_ce) begin
			case (controllerinjector_roundrobin4_grant)
				1'd0: begin
					if (controllerinjector_roundrobin4_request[1]) begin
						controllerinjector_roundrobin4_grant <= 1'd1;
					end else begin
						if (controllerinjector_roundrobin4_request[2]) begin
							controllerinjector_roundrobin4_grant <= 2'd2;
						end
					end
				end
				1'd1: begin
					if (controllerinjector_roundrobin4_request[2]) begin
						controllerinjector_roundrobin4_grant <= 2'd2;
					end else begin
						if (controllerinjector_roundrobin4_request[0]) begin
							controllerinjector_roundrobin4_grant <= 1'd0;
						end
					end
				end
				2'd2: begin
					if (controllerinjector_roundrobin4_request[0]) begin
						controllerinjector_roundrobin4_grant <= 1'd0;
					end else begin
						if (controllerinjector_roundrobin4_request[1]) begin
							controllerinjector_roundrobin4_grant <= 1'd1;
						end
					end
				end
			endcase
		end
		if (controllerinjector_roundrobin5_ce) begin
			case (controllerinjector_roundrobin5_grant)
				1'd0: begin
					if (controllerinjector_roundrobin5_request[1]) begin
						controllerinjector_roundrobin5_grant <= 1'd1;
					end else begin
						if (controllerinjector_roundrobin5_request[2]) begin
							controllerinjector_roundrobin5_grant <= 2'd2;
						end
					end
				end
				1'd1: begin
					if (controllerinjector_roundrobin5_request[2]) begin
						controllerinjector_roundrobin5_grant <= 2'd2;
					end else begin
						if (controllerinjector_roundrobin5_request[0]) begin
							controllerinjector_roundrobin5_grant <= 1'd0;
						end
					end
				end
				2'd2: begin
					if (controllerinjector_roundrobin5_request[0]) begin
						controllerinjector_roundrobin5_grant <= 1'd0;
					end else begin
						if (controllerinjector_roundrobin5_request[1]) begin
							controllerinjector_roundrobin5_grant <= 1'd1;
						end
					end
				end
			endcase
		end
		if (controllerinjector_roundrobin6_ce) begin
			case (controllerinjector_roundrobin6_grant)
				1'd0: begin
					if (controllerinjector_roundrobin6_request[1]) begin
						controllerinjector_roundrobin6_grant <= 1'd1;
					end else begin
						if (controllerinjector_roundrobin6_request[2]) begin
							controllerinjector_roundrobin6_grant <= 2'd2;
						end
					end
				end
				1'd1: begin
					if (controllerinjector_roundrobin6_request[2]) begin
						controllerinjector_roundrobin6_grant <= 2'd2;
					end else begin
						if (controllerinjector_roundrobin6_request[0]) begin
							controllerinjector_roundrobin6_grant <= 1'd0;
						end
					end
				end
				2'd2: begin
					if (controllerinjector_roundrobin6_request[0]) begin
						controllerinjector_roundrobin6_grant <= 1'd0;
					end else begin
						if (controllerinjector_roundrobin6_request[1]) begin
							controllerinjector_roundrobin6_grant <= 1'd1;
						end
					end
				end
			endcase
		end
		if (controllerinjector_roundrobin7_ce) begin
			case (controllerinjector_roundrobin7_grant)
				1'd0: begin
					if (controllerinjector_roundrobin7_request[1]) begin
						controllerinjector_roundrobin7_grant <= 1'd1;
					end else begin
						if (controllerinjector_roundrobin7_request[2]) begin
							controllerinjector_roundrobin7_grant <= 2'd2;
						end
					end
				end
				1'd1: begin
					if (controllerinjector_roundrobin7_request[2]) begin
						controllerinjector_roundrobin7_grant <= 2'd2;
					end else begin
						if (controllerinjector_roundrobin7_request[0]) begin
							controllerinjector_roundrobin7_grant <= 1'd0;
						end
					end
				end
				2'd2: begin
					if (controllerinjector_roundrobin7_request[0]) begin
						controllerinjector_roundrobin7_grant <= 1'd0;
					end else begin
						if (controllerinjector_roundrobin7_request[1]) begin
							controllerinjector_roundrobin7_grant <= 1'd1;
						end
					end
				end
			endcase
		end
		adr_offset_r <= interface0_wb_sdram_adr[1:0];
		cache_state <= cache_next_state;
		litedramwishbonebridge_state <= litedramwishbonebridge_next_state;
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
		if (ethmac_reader_counter_reset) begin
			ethmac_reader_counter <= 1'd0;
		end else begin
			if (ethmac_reader_counter_ce) begin
				ethmac_reader_counter <= (ethmac_reader_counter + 3'd4);
			end
		end
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
		if (generator_core_reset) begin
			generator_core_fifo_level <= 5'd0;
			generator_core_fifo_produce <= 4'd0;
			generator_core_fifo_consume <= 4'd0;
			generator_core_o <= 32'd0;
			generator_core_cmd_counter <= 26'd0;
			litedrambistgenerator_state <= 2'd0;
		end else begin
			if (((generator_core_fifo_syncfifo_we & generator_core_fifo_syncfifo_writable) & (~generator_core_fifo_replace))) begin
				generator_core_fifo_produce <= (generator_core_fifo_produce + 1'd1);
			end
			if (generator_core_fifo_do_read) begin
				generator_core_fifo_consume <= (generator_core_fifo_consume + 1'd1);
			end
			if (((generator_core_fifo_syncfifo_we & generator_core_fifo_syncfifo_writable) & (~generator_core_fifo_replace))) begin
				if ((~generator_core_fifo_do_read)) begin
					generator_core_fifo_level <= (generator_core_fifo_level + 1'd1);
				end
			end else begin
				if (generator_core_fifo_do_read) begin
					generator_core_fifo_level <= (generator_core_fifo_level - 1'd1);
				end
			end
			if (generator_core_ce) begin
				generator_core_o <= (generator_core_o + 1'd1);
			end
			litedrambistgenerator_state <= litedrambistgenerator_next_state;
			if (generator_core_cmd_counter_litedrambistgenerator_next_value_ce) begin
				generator_core_cmd_counter <= generator_core_cmd_counter_litedrambistgenerator_next_value;
			end
		end
		if (generator_reset_sync_i) begin
			generator_reset_sync_toggle_i <= (~generator_reset_sync_toggle_i);
		end
		generator_reset_sync_toggle_o_r <= generator_reset_sync_toggle_o;
		if (generator_start_sync_i) begin
			generator_start_sync_toggle_i <= (~generator_start_sync_toggle_i);
		end
		generator_start_sync_toggle_o_r <= generator_start_sync_toggle_o;
		generator_base_sync_starter <= 1'd0;
		if (generator_base_sync_pong_o) begin
			generator_base_sync_ibuffer <= generator_base_sync_i;
		end
		if (generator_base_sync_ping_o) begin
			generator_base_sync_o <= generator_base_sync_obuffer;
		end
		if (generator_base_sync_ping_i) begin
			generator_base_sync_ping_toggle_i <= (~generator_base_sync_ping_toggle_i);
		end
		generator_base_sync_ping_toggle_o_r <= generator_base_sync_ping_toggle_o;
		if (generator_base_sync_pong_i) begin
			generator_base_sync_pong_toggle_i <= (~generator_base_sync_pong_toggle_i);
		end
		generator_base_sync_pong_toggle_o_r <= generator_base_sync_pong_toggle_o;
		if (generator_base_sync_wait) begin
			if ((~generator_base_sync_done)) begin
				generator_base_sync_count <= (generator_base_sync_count - 1'd1);
			end
		end else begin
			generator_base_sync_count <= 8'd128;
		end
		generator_length_sync_starter <= 1'd0;
		if (generator_length_sync_pong_o) begin
			generator_length_sync_ibuffer <= generator_length_sync_i;
		end
		if (generator_length_sync_ping_o) begin
			generator_length_sync_o <= generator_length_sync_obuffer;
		end
		if (generator_length_sync_ping_i) begin
			generator_length_sync_ping_toggle_i <= (~generator_length_sync_ping_toggle_i);
		end
		generator_length_sync_ping_toggle_o_r <= generator_length_sync_ping_toggle_o;
		if (generator_length_sync_pong_i) begin
			generator_length_sync_pong_toggle_i <= (~generator_length_sync_pong_toggle_i);
		end
		generator_length_sync_pong_toggle_o_r <= generator_length_sync_pong_toggle_o;
		if (generator_length_sync_wait) begin
			if ((~generator_length_sync_done)) begin
				generator_length_sync_count <= (generator_length_sync_count - 1'd1);
			end
		end else begin
			generator_length_sync_count <= 8'd128;
		end
		if (checker_core_reset) begin
			checker_core_err_count <= 32'd0;
			checker_core_rsv_level <= 5'd0;
			checker_core_fifo_level <= 5'd0;
			checker_core_fifo_produce <= 4'd0;
			checker_core_fifo_consume <= 4'd0;
			checker_core_o <= 32'd0;
			checker_core_cmd_counter <= 26'd0;
			checker_core_data_counter <= 26'd0;
			fsm0_state <= 2'd0;
			fsm1_state <= 2'd0;
		end else begin
			if (checker_core_request_issued) begin
				if ((~checker_core_data_dequeued)) begin
					checker_core_rsv_level <= (checker_core_rsv_level + 1'd1);
				end
			end else begin
				if (checker_core_data_dequeued) begin
					checker_core_rsv_level <= (checker_core_rsv_level - 1'd1);
				end
			end
			if (((checker_core_fifo_syncfifo_we & checker_core_fifo_syncfifo_writable) & (~checker_core_fifo_replace))) begin
				checker_core_fifo_produce <= (checker_core_fifo_produce + 1'd1);
			end
			if (checker_core_fifo_do_read) begin
				checker_core_fifo_consume <= (checker_core_fifo_consume + 1'd1);
			end
			if (((checker_core_fifo_syncfifo_we & checker_core_fifo_syncfifo_writable) & (~checker_core_fifo_replace))) begin
				if ((~checker_core_fifo_do_read)) begin
					checker_core_fifo_level <= (checker_core_fifo_level + 1'd1);
				end
			end else begin
				if (checker_core_fifo_do_read) begin
					checker_core_fifo_level <= (checker_core_fifo_level - 1'd1);
				end
			end
			if (checker_core_ce) begin
				checker_core_o <= (checker_core_o + 1'd1);
			end
			fsm0_state <= fsm0_next_state;
			if (checker_core_cmd_counter_fsm0_next_value_ce) begin
				checker_core_cmd_counter <= checker_core_cmd_counter_fsm0_next_value;
			end
			fsm1_state <= fsm1_next_state;
			if (checker_core_data_counter_fsm1_next_value_ce0) begin
				checker_core_data_counter <= checker_core_data_counter_fsm1_next_value0;
			end
			if (checker_core_err_count_fsm1_next_value_ce1) begin
				checker_core_err_count <= checker_core_err_count_fsm1_next_value1;
			end
		end
		if (checker_reset_sync_i) begin
			checker_reset_sync_toggle_i <= (~checker_reset_sync_toggle_i);
		end
		checker_reset_sync_toggle_o_r <= checker_reset_sync_toggle_o;
		if (checker_start_sync_i) begin
			checker_start_sync_toggle_i <= (~checker_start_sync_toggle_i);
		end
		checker_start_sync_toggle_o_r <= checker_start_sync_toggle_o;
		checker_base_sync_starter <= 1'd0;
		if (checker_base_sync_pong_o) begin
			checker_base_sync_ibuffer <= checker_base_sync_i;
		end
		if (checker_base_sync_ping_o) begin
			checker_base_sync_o <= checker_base_sync_obuffer;
		end
		if (checker_base_sync_ping_i) begin
			checker_base_sync_ping_toggle_i <= (~checker_base_sync_ping_toggle_i);
		end
		checker_base_sync_ping_toggle_o_r <= checker_base_sync_ping_toggle_o;
		if (checker_base_sync_pong_i) begin
			checker_base_sync_pong_toggle_i <= (~checker_base_sync_pong_toggle_i);
		end
		checker_base_sync_pong_toggle_o_r <= checker_base_sync_pong_toggle_o;
		if (checker_base_sync_wait) begin
			if ((~checker_base_sync_done)) begin
				checker_base_sync_count <= (checker_base_sync_count - 1'd1);
			end
		end else begin
			checker_base_sync_count <= 8'd128;
		end
		checker_length_sync_starter <= 1'd0;
		if (checker_length_sync_pong_o) begin
			checker_length_sync_ibuffer <= checker_length_sync_i;
		end
		if (checker_length_sync_ping_o) begin
			checker_length_sync_o <= checker_length_sync_obuffer;
		end
		if (checker_length_sync_ping_i) begin
			checker_length_sync_ping_toggle_i <= (~checker_length_sync_ping_toggle_i);
		end
		checker_length_sync_ping_toggle_o_r <= checker_length_sync_ping_toggle_o;
		if (checker_length_sync_pong_i) begin
			checker_length_sync_pong_toggle_i <= (~checker_length_sync_pong_toggle_i);
		end
		checker_length_sync_pong_toggle_o_r <= checker_length_sync_pong_toggle_o;
		if (checker_length_sync_wait) begin
			if ((~checker_length_sync_done)) begin
				checker_length_sync_count <= (checker_length_sync_count - 1'd1);
			end
		end else begin
			checker_length_sync_count <= 8'd128;
		end
		checker_err_count_sync_starter <= 1'd0;
		if (checker_err_count_sync_pong_o) begin
			checker_err_count_sync_ibuffer <= checker_err_count_sync_i;
		end
		if (checker_err_count_sync_ping_o) begin
			checker_err_count_sync_o <= checker_err_count_sync_obuffer;
		end
		if (checker_err_count_sync_ping_i) begin
			checker_err_count_sync_ping_toggle_i <= (~checker_err_count_sync_ping_toggle_i);
		end
		checker_err_count_sync_ping_toggle_o_r <= checker_err_count_sync_ping_toggle_o;
		if (checker_err_count_sync_pong_i) begin
			checker_err_count_sync_pong_toggle_i <= (~checker_err_count_sync_pong_toggle_i);
		end
		checker_err_count_sync_pong_toggle_o_r <= checker_err_count_sync_pong_toggle_o;
		if (checker_err_count_sync_wait) begin
			if ((~checker_err_count_sync_done)) begin
				checker_err_count_sync_count <= (checker_err_count_sync_count - 1'd1);
			end
		end else begin
			checker_err_count_sync_count <= 8'd128;
		end
		if (frontend_buffer_pipe_ce) begin
			frontend_buffer_valid_n <= frontend_buffer_sink_valid;
		end
		if (frontend_buffer_pipe_ce) begin
			frontend_buffer_last_n <= (frontend_buffer_sink_valid & frontend_buffer_sink_last);
		end
		if (frontend_buffer_pipe_ce) begin
			frontend_buffer_source_payload_data <= frontend_buffer_sink_payload_data;
			frontend_buffer_source_payload_hit <= frontend_buffer_sink_payload_hit;
		end
		if (frontend_subsampler_source_ready) begin
			if (frontend_subsampler_done) begin
				frontend_subsampler_counter <= 1'd0;
			end else begin
				if (frontend_subsampler_sink_valid) begin
					frontend_subsampler_counter <= (frontend_subsampler_counter + 1'd1);
				end
			end
		end
		frontend_asyncfifo_graycounter0_q_binary <= frontend_asyncfifo_graycounter0_q_next_binary;
		frontend_asyncfifo_graycounter0_q <= frontend_asyncfifo_graycounter0_q_next;
		frontend_asyncfifo_graycounter1_q_binary <= frontend_asyncfifo_graycounter1_q_next_binary;
		frontend_asyncfifo_graycounter1_q <= frontend_asyncfifo_graycounter1_q_next;
		if (storage_mem_syncfifo_re) begin
			storage_mem_readable <= 1'd1;
		end else begin
			if (storage_mem_re) begin
				storage_mem_readable <= 1'd0;
			end
		end
		if (((storage_mem_syncfifo_we & storage_mem_syncfifo_writable) & (~storage_mem_replace))) begin
			storage_mem_produce <= (storage_mem_produce + 1'd1);
		end
		if (storage_mem_do_read) begin
			storage_mem_consume <= (storage_mem_consume + 1'd1);
		end
		if (((storage_mem_syncfifo_we & storage_mem_syncfifo_writable) & (~storage_mem_replace))) begin
			if ((~storage_mem_do_read)) begin
				storage_mem_level0 <= (storage_mem_level0 + 1'd1);
			end
		end else begin
			if (storage_mem_do_read) begin
				storage_mem_level0 <= (storage_mem_level0 - 1'd1);
			end
		end
		litescopeanalyzer_state <= litescopeanalyzer_next_state;
		case (memtestsoc_grant)
			1'd0: begin
				if ((~memtestsoc_request[0])) begin
					if (memtestsoc_request[1]) begin
						memtestsoc_grant <= 1'd1;
					end
				end
			end
			1'd1: begin
				if ((~memtestsoc_request[1])) begin
					if (memtestsoc_request[0]) begin
						memtestsoc_grant <= 1'd0;
					end
				end
			end
		endcase
		memtestsoc_slave_sel_r <= memtestsoc_slave_sel;
		memtestsoc_interface0_dat_r <= 1'd0;
		if (memtestsoc_csrbank0_sel) begin
			case (memtestsoc_interface0_adr[5:0])
				1'd0: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_frontend_trigger_value11_w;
				end
				1'd1: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_frontend_trigger_value10_w;
				end
				2'd2: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_frontend_trigger_value9_w;
				end
				2'd3: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_frontend_trigger_value8_w;
				end
				3'd4: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_frontend_trigger_value7_w;
				end
				3'd5: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_frontend_trigger_value6_w;
				end
				3'd6: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_frontend_trigger_value5_w;
				end
				3'd7: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_frontend_trigger_value4_w;
				end
				4'd8: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_frontend_trigger_value3_w;
				end
				4'd9: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_frontend_trigger_value2_w;
				end
				4'd10: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_frontend_trigger_value1_w;
				end
				4'd11: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_frontend_trigger_value0_w;
				end
				4'd12: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_frontend_trigger_mask11_w;
				end
				4'd13: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_frontend_trigger_mask10_w;
				end
				4'd14: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_frontend_trigger_mask9_w;
				end
				4'd15: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_frontend_trigger_mask8_w;
				end
				5'd16: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_frontend_trigger_mask7_w;
				end
				5'd17: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_frontend_trigger_mask6_w;
				end
				5'd18: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_frontend_trigger_mask5_w;
				end
				5'd19: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_frontend_trigger_mask4_w;
				end
				5'd20: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_frontend_trigger_mask3_w;
				end
				5'd21: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_frontend_trigger_mask2_w;
				end
				5'd22: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_frontend_trigger_mask1_w;
				end
				5'd23: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_frontend_trigger_mask0_w;
				end
				5'd24: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_frontend_subsampler_value1_w;
				end
				5'd25: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_frontend_subsampler_value0_w;
				end
				5'd26: begin
					memtestsoc_interface0_dat_r <= storage_start_w;
				end
				5'd27: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_length1_w;
				end
				5'd28: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_length0_w;
				end
				5'd29: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_offset1_w;
				end
				5'd30: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_offset0_w;
				end
				5'd31: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_idle_w;
				end
				6'd32: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_wait_w;
				end
				6'd33: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_run_w;
				end
				6'd34: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_mem_valid_w;
				end
				6'd35: begin
					memtestsoc_interface0_dat_r <= storage_mem_ready_w;
				end
				6'd36: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_mem_data11_w;
				end
				6'd37: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_mem_data10_w;
				end
				6'd38: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_mem_data9_w;
				end
				6'd39: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_mem_data8_w;
				end
				6'd40: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_mem_data7_w;
				end
				6'd41: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_mem_data6_w;
				end
				6'd42: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_mem_data5_w;
				end
				6'd43: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_mem_data4_w;
				end
				6'd44: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_mem_data3_w;
				end
				6'd45: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_mem_data2_w;
				end
				6'd46: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_mem_data1_w;
				end
				6'd47: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_mem_data0_w;
				end
			endcase
		end
		if (memtestsoc_csrbank0_frontend_trigger_value11_re) begin
			frontend_trigger_value_storage_full[90:88] <= memtestsoc_csrbank0_frontend_trigger_value11_r;
		end
		if (memtestsoc_csrbank0_frontend_trigger_value10_re) begin
			frontend_trigger_value_storage_full[87:80] <= memtestsoc_csrbank0_frontend_trigger_value10_r;
		end
		if (memtestsoc_csrbank0_frontend_trigger_value9_re) begin
			frontend_trigger_value_storage_full[79:72] <= memtestsoc_csrbank0_frontend_trigger_value9_r;
		end
		if (memtestsoc_csrbank0_frontend_trigger_value8_re) begin
			frontend_trigger_value_storage_full[71:64] <= memtestsoc_csrbank0_frontend_trigger_value8_r;
		end
		if (memtestsoc_csrbank0_frontend_trigger_value7_re) begin
			frontend_trigger_value_storage_full[63:56] <= memtestsoc_csrbank0_frontend_trigger_value7_r;
		end
		if (memtestsoc_csrbank0_frontend_trigger_value6_re) begin
			frontend_trigger_value_storage_full[55:48] <= memtestsoc_csrbank0_frontend_trigger_value6_r;
		end
		if (memtestsoc_csrbank0_frontend_trigger_value5_re) begin
			frontend_trigger_value_storage_full[47:40] <= memtestsoc_csrbank0_frontend_trigger_value5_r;
		end
		if (memtestsoc_csrbank0_frontend_trigger_value4_re) begin
			frontend_trigger_value_storage_full[39:32] <= memtestsoc_csrbank0_frontend_trigger_value4_r;
		end
		if (memtestsoc_csrbank0_frontend_trigger_value3_re) begin
			frontend_trigger_value_storage_full[31:24] <= memtestsoc_csrbank0_frontend_trigger_value3_r;
		end
		if (memtestsoc_csrbank0_frontend_trigger_value2_re) begin
			frontend_trigger_value_storage_full[23:16] <= memtestsoc_csrbank0_frontend_trigger_value2_r;
		end
		if (memtestsoc_csrbank0_frontend_trigger_value1_re) begin
			frontend_trigger_value_storage_full[15:8] <= memtestsoc_csrbank0_frontend_trigger_value1_r;
		end
		if (memtestsoc_csrbank0_frontend_trigger_value0_re) begin
			frontend_trigger_value_storage_full[7:0] <= memtestsoc_csrbank0_frontend_trigger_value0_r;
		end
		frontend_trigger_value_re <= memtestsoc_csrbank0_frontend_trigger_value0_re;
		if (memtestsoc_csrbank0_frontend_trigger_mask11_re) begin
			frontend_trigger_mask_storage_full[90:88] <= memtestsoc_csrbank0_frontend_trigger_mask11_r;
		end
		if (memtestsoc_csrbank0_frontend_trigger_mask10_re) begin
			frontend_trigger_mask_storage_full[87:80] <= memtestsoc_csrbank0_frontend_trigger_mask10_r;
		end
		if (memtestsoc_csrbank0_frontend_trigger_mask9_re) begin
			frontend_trigger_mask_storage_full[79:72] <= memtestsoc_csrbank0_frontend_trigger_mask9_r;
		end
		if (memtestsoc_csrbank0_frontend_trigger_mask8_re) begin
			frontend_trigger_mask_storage_full[71:64] <= memtestsoc_csrbank0_frontend_trigger_mask8_r;
		end
		if (memtestsoc_csrbank0_frontend_trigger_mask7_re) begin
			frontend_trigger_mask_storage_full[63:56] <= memtestsoc_csrbank0_frontend_trigger_mask7_r;
		end
		if (memtestsoc_csrbank0_frontend_trigger_mask6_re) begin
			frontend_trigger_mask_storage_full[55:48] <= memtestsoc_csrbank0_frontend_trigger_mask6_r;
		end
		if (memtestsoc_csrbank0_frontend_trigger_mask5_re) begin
			frontend_trigger_mask_storage_full[47:40] <= memtestsoc_csrbank0_frontend_trigger_mask5_r;
		end
		if (memtestsoc_csrbank0_frontend_trigger_mask4_re) begin
			frontend_trigger_mask_storage_full[39:32] <= memtestsoc_csrbank0_frontend_trigger_mask4_r;
		end
		if (memtestsoc_csrbank0_frontend_trigger_mask3_re) begin
			frontend_trigger_mask_storage_full[31:24] <= memtestsoc_csrbank0_frontend_trigger_mask3_r;
		end
		if (memtestsoc_csrbank0_frontend_trigger_mask2_re) begin
			frontend_trigger_mask_storage_full[23:16] <= memtestsoc_csrbank0_frontend_trigger_mask2_r;
		end
		if (memtestsoc_csrbank0_frontend_trigger_mask1_re) begin
			frontend_trigger_mask_storage_full[15:8] <= memtestsoc_csrbank0_frontend_trigger_mask1_r;
		end
		if (memtestsoc_csrbank0_frontend_trigger_mask0_re) begin
			frontend_trigger_mask_storage_full[7:0] <= memtestsoc_csrbank0_frontend_trigger_mask0_r;
		end
		frontend_trigger_mask_re <= memtestsoc_csrbank0_frontend_trigger_mask0_re;
		if (memtestsoc_csrbank0_frontend_subsampler_value1_re) begin
			frontend_subsampler_value_storage_full[15:8] <= memtestsoc_csrbank0_frontend_subsampler_value1_r;
		end
		if (memtestsoc_csrbank0_frontend_subsampler_value0_re) begin
			frontend_subsampler_value_storage_full[7:0] <= memtestsoc_csrbank0_frontend_subsampler_value0_r;
		end
		frontend_subsampler_value_re <= memtestsoc_csrbank0_frontend_subsampler_value0_re;
		if (memtestsoc_csrbank0_storage_length1_re) begin
			storage_length_storage_full[10:8] <= memtestsoc_csrbank0_storage_length1_r;
		end
		if (memtestsoc_csrbank0_storage_length0_re) begin
			storage_length_storage_full[7:0] <= memtestsoc_csrbank0_storage_length0_r;
		end
		storage_length_re <= memtestsoc_csrbank0_storage_length0_re;
		if (memtestsoc_csrbank0_storage_offset1_re) begin
			storage_offset_storage_full[10:8] <= memtestsoc_csrbank0_storage_offset1_r;
		end
		if (memtestsoc_csrbank0_storage_offset0_re) begin
			storage_offset_storage_full[7:0] <= memtestsoc_csrbank0_storage_offset0_r;
		end
		storage_offset_re <= memtestsoc_csrbank0_storage_offset0_re;
		memtestsoc_interface1_dat_r <= 1'd0;
		if (memtestsoc_csrbank1_sel) begin
			case (memtestsoc_interface1_adr[3:0])
				1'd0: begin
					memtestsoc_interface1_dat_r <= checker_reset_w;
				end
				1'd1: begin
					memtestsoc_interface1_dat_r <= checker_start_w;
				end
				2'd2: begin
					memtestsoc_interface1_dat_r <= memtestsoc_csrbank1_base3_w;
				end
				2'd3: begin
					memtestsoc_interface1_dat_r <= memtestsoc_csrbank1_base2_w;
				end
				3'd4: begin
					memtestsoc_interface1_dat_r <= memtestsoc_csrbank1_base1_w;
				end
				3'd5: begin
					memtestsoc_interface1_dat_r <= memtestsoc_csrbank1_base0_w;
				end
				3'd6: begin
					memtestsoc_interface1_dat_r <= memtestsoc_csrbank1_length3_w;
				end
				3'd7: begin
					memtestsoc_interface1_dat_r <= memtestsoc_csrbank1_length2_w;
				end
				4'd8: begin
					memtestsoc_interface1_dat_r <= memtestsoc_csrbank1_length1_w;
				end
				4'd9: begin
					memtestsoc_interface1_dat_r <= memtestsoc_csrbank1_length0_w;
				end
				4'd10: begin
					memtestsoc_interface1_dat_r <= memtestsoc_csrbank1_done_w;
				end
				4'd11: begin
					memtestsoc_interface1_dat_r <= memtestsoc_csrbank1_err_count3_w;
				end
				4'd12: begin
					memtestsoc_interface1_dat_r <= memtestsoc_csrbank1_err_count2_w;
				end
				4'd13: begin
					memtestsoc_interface1_dat_r <= memtestsoc_csrbank1_err_count1_w;
				end
				4'd14: begin
					memtestsoc_interface1_dat_r <= memtestsoc_csrbank1_err_count0_w;
				end
			endcase
		end
		if (memtestsoc_csrbank1_base3_re) begin
			checker_base_storage_full[25:24] <= memtestsoc_csrbank1_base3_r;
		end
		if (memtestsoc_csrbank1_base2_re) begin
			checker_base_storage_full[23:16] <= memtestsoc_csrbank1_base2_r;
		end
		if (memtestsoc_csrbank1_base1_re) begin
			checker_base_storage_full[15:8] <= memtestsoc_csrbank1_base1_r;
		end
		if (memtestsoc_csrbank1_base0_re) begin
			checker_base_storage_full[7:0] <= memtestsoc_csrbank1_base0_r;
		end
		checker_base_re <= memtestsoc_csrbank1_base0_re;
		if (memtestsoc_csrbank1_length3_re) begin
			checker_length_storage_full[25:24] <= memtestsoc_csrbank1_length3_r;
		end
		if (memtestsoc_csrbank1_length2_re) begin
			checker_length_storage_full[23:16] <= memtestsoc_csrbank1_length2_r;
		end
		if (memtestsoc_csrbank1_length1_re) begin
			checker_length_storage_full[15:8] <= memtestsoc_csrbank1_length1_r;
		end
		if (memtestsoc_csrbank1_length0_re) begin
			checker_length_storage_full[7:0] <= memtestsoc_csrbank1_length0_r;
		end
		checker_length_re <= memtestsoc_csrbank1_length0_re;
		memtestsoc_interface2_dat_r <= 1'd0;
		if (memtestsoc_csrbank2_sel) begin
			case (memtestsoc_interface2_adr[4:0])
				1'd0: begin
					memtestsoc_interface2_dat_r <= memtestsoc_csrbank2_sram_writer_slot_w;
				end
				1'd1: begin
					memtestsoc_interface2_dat_r <= memtestsoc_csrbank2_sram_writer_length3_w;
				end
				2'd2: begin
					memtestsoc_interface2_dat_r <= memtestsoc_csrbank2_sram_writer_length2_w;
				end
				2'd3: begin
					memtestsoc_interface2_dat_r <= memtestsoc_csrbank2_sram_writer_length1_w;
				end
				3'd4: begin
					memtestsoc_interface2_dat_r <= memtestsoc_csrbank2_sram_writer_length0_w;
				end
				3'd5: begin
					memtestsoc_interface2_dat_r <= ethmac_writer_status_w;
				end
				3'd6: begin
					memtestsoc_interface2_dat_r <= ethmac_writer_pending_w;
				end
				3'd7: begin
					memtestsoc_interface2_dat_r <= memtestsoc_csrbank2_sram_writer_ev_enable0_w;
				end
				4'd8: begin
					memtestsoc_interface2_dat_r <= ethmac_reader_start_w;
				end
				4'd9: begin
					memtestsoc_interface2_dat_r <= memtestsoc_csrbank2_sram_reader_ready_w;
				end
				4'd10: begin
					memtestsoc_interface2_dat_r <= memtestsoc_csrbank2_sram_reader_slot0_w;
				end
				4'd11: begin
					memtestsoc_interface2_dat_r <= memtestsoc_csrbank2_sram_reader_length1_w;
				end
				4'd12: begin
					memtestsoc_interface2_dat_r <= memtestsoc_csrbank2_sram_reader_length0_w;
				end
				4'd13: begin
					memtestsoc_interface2_dat_r <= ethmac_reader_eventmanager_status_w;
				end
				4'd14: begin
					memtestsoc_interface2_dat_r <= ethmac_reader_eventmanager_pending_w;
				end
				4'd15: begin
					memtestsoc_interface2_dat_r <= memtestsoc_csrbank2_sram_reader_ev_enable0_w;
				end
				5'd16: begin
					memtestsoc_interface2_dat_r <= memtestsoc_csrbank2_preamble_crc_w;
				end
			endcase
		end
		if (memtestsoc_csrbank2_sram_writer_ev_enable0_re) begin
			ethmac_writer_storage_full <= memtestsoc_csrbank2_sram_writer_ev_enable0_r;
		end
		ethmac_writer_re <= memtestsoc_csrbank2_sram_writer_ev_enable0_re;
		if (memtestsoc_csrbank2_sram_reader_slot0_re) begin
			ethmac_reader_slot_storage_full <= memtestsoc_csrbank2_sram_reader_slot0_r;
		end
		ethmac_reader_slot_re <= memtestsoc_csrbank2_sram_reader_slot0_re;
		if (memtestsoc_csrbank2_sram_reader_length1_re) begin
			ethmac_reader_length_storage_full[10:8] <= memtestsoc_csrbank2_sram_reader_length1_r;
		end
		if (memtestsoc_csrbank2_sram_reader_length0_re) begin
			ethmac_reader_length_storage_full[7:0] <= memtestsoc_csrbank2_sram_reader_length0_r;
		end
		ethmac_reader_length_re <= memtestsoc_csrbank2_sram_reader_length0_re;
		if (memtestsoc_csrbank2_sram_reader_ev_enable0_re) begin
			ethmac_reader_eventmanager_storage_full <= memtestsoc_csrbank2_sram_reader_ev_enable0_r;
		end
		ethmac_reader_eventmanager_re <= memtestsoc_csrbank2_sram_reader_ev_enable0_re;
		memtestsoc_interface3_dat_r <= 1'd0;
		if (memtestsoc_csrbank3_sel) begin
			case (memtestsoc_interface3_adr[1:0])
				1'd0: begin
					memtestsoc_interface3_dat_r <= memtestsoc_csrbank3_crg_reset0_w;
				end
				1'd1: begin
					memtestsoc_interface3_dat_r <= memtestsoc_csrbank3_mdio_w0_w;
				end
				2'd2: begin
					memtestsoc_interface3_dat_r <= memtestsoc_csrbank3_mdio_r_w;
				end
			endcase
		end
		if (memtestsoc_csrbank3_crg_reset0_re) begin
			ethphy_crg_storage_full <= memtestsoc_csrbank3_crg_reset0_r;
		end
		ethphy_crg_re <= memtestsoc_csrbank3_crg_reset0_re;
		if (memtestsoc_csrbank3_mdio_w0_re) begin
			ethphy_mdio_storage_full[2:0] <= memtestsoc_csrbank3_mdio_w0_r;
		end
		ethphy_mdio_re <= memtestsoc_csrbank3_mdio_w0_re;
		memtestsoc_interface4_dat_r <= 1'd0;
		if (memtestsoc_csrbank4_sel) begin
			case (memtestsoc_interface4_adr[0])
				1'd0: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_switches_in_w;
				end
				1'd1: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_leds_out0_w;
				end
			endcase
		end
		if (memtestsoc_csrbank4_leds_out0_re) begin
			front_panel_leds_storage_full[1:0] <= memtestsoc_csrbank4_leds_out0_r;
		end
		front_panel_leds_re <= memtestsoc_csrbank4_leds_out0_re;
		memtestsoc_interface5_dat_r <= 1'd0;
		if (memtestsoc_csrbank5_sel) begin
			case (memtestsoc_interface5_adr[3:0])
				1'd0: begin
					memtestsoc_interface5_dat_r <= generator_reset_w;
				end
				1'd1: begin
					memtestsoc_interface5_dat_r <= generator_start_w;
				end
				2'd2: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_done_w;
				end
				2'd3: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_base3_w;
				end
				3'd4: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_base2_w;
				end
				3'd5: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_base1_w;
				end
				3'd6: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_base0_w;
				end
				3'd7: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_length3_w;
				end
				4'd8: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_length2_w;
				end
				4'd9: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_length1_w;
				end
				4'd10: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_length0_w;
				end
			endcase
		end
		if (memtestsoc_csrbank5_base3_re) begin
			generator_base_storage_full[25:24] <= memtestsoc_csrbank5_base3_r;
		end
		if (memtestsoc_csrbank5_base2_re) begin
			generator_base_storage_full[23:16] <= memtestsoc_csrbank5_base2_r;
		end
		if (memtestsoc_csrbank5_base1_re) begin
			generator_base_storage_full[15:8] <= memtestsoc_csrbank5_base1_r;
		end
		if (memtestsoc_csrbank5_base0_re) begin
			generator_base_storage_full[7:0] <= memtestsoc_csrbank5_base0_r;
		end
		generator_base_re <= memtestsoc_csrbank5_base0_re;
		if (memtestsoc_csrbank5_length3_re) begin
			generator_length_storage_full[25:24] <= memtestsoc_csrbank5_length3_r;
		end
		if (memtestsoc_csrbank5_length2_re) begin
			generator_length_storage_full[23:16] <= memtestsoc_csrbank5_length2_r;
		end
		if (memtestsoc_csrbank5_length1_re) begin
			generator_length_storage_full[15:8] <= memtestsoc_csrbank5_length1_r;
		end
		if (memtestsoc_csrbank5_length0_re) begin
			generator_length_storage_full[7:0] <= memtestsoc_csrbank5_length0_r;
		end
		generator_length_re <= memtestsoc_csrbank5_length0_re;
		memtestsoc_interface6_dat_r <= 1'd0;
		if (memtestsoc_csrbank6_sel) begin
			case (memtestsoc_interface6_adr[5:0])
				1'd0: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_dna_id7_w;
				end
				1'd1: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_dna_id6_w;
				end
				2'd2: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_dna_id5_w;
				end
				2'd3: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_dna_id4_w;
				end
				3'd4: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_dna_id3_w;
				end
				3'd5: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_dna_id2_w;
				end
				3'd6: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_dna_id1_w;
				end
				3'd7: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_dna_id0_w;
				end
				4'd8: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_git_commit19_w;
				end
				4'd9: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_git_commit18_w;
				end
				4'd10: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_git_commit17_w;
				end
				4'd11: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_git_commit16_w;
				end
				4'd12: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_git_commit15_w;
				end
				4'd13: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_git_commit14_w;
				end
				4'd14: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_git_commit13_w;
				end
				4'd15: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_git_commit12_w;
				end
				5'd16: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_git_commit11_w;
				end
				5'd17: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_git_commit10_w;
				end
				5'd18: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_git_commit9_w;
				end
				5'd19: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_git_commit8_w;
				end
				5'd20: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_git_commit7_w;
				end
				5'd21: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_git_commit6_w;
				end
				5'd22: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_git_commit5_w;
				end
				5'd23: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_git_commit4_w;
				end
				5'd24: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_git_commit3_w;
				end
				5'd25: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_git_commit2_w;
				end
				5'd26: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_git_commit1_w;
				end
				5'd27: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_git_commit0_w;
				end
				5'd28: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_platform_platform7_w;
				end
				5'd29: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_platform_platform6_w;
				end
				5'd30: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_platform_platform5_w;
				end
				5'd31: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_platform_platform4_w;
				end
				6'd32: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_platform_platform3_w;
				end
				6'd33: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_platform_platform2_w;
				end
				6'd34: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_platform_platform1_w;
				end
				6'd35: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_platform_platform0_w;
				end
				6'd36: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_platform_target7_w;
				end
				6'd37: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_platform_target6_w;
				end
				6'd38: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_platform_target5_w;
				end
				6'd39: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_platform_target4_w;
				end
				6'd40: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_platform_target3_w;
				end
				6'd41: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_platform_target2_w;
				end
				6'd42: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_platform_target1_w;
				end
				6'd43: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_platform_target0_w;
				end
			endcase
		end
		memtestsoc_interface7_dat_r <= 1'd0;
		if (memtestsoc_csrbank7_sel) begin
			case (memtestsoc_interface7_adr[2:0])
				1'd0: begin
					memtestsoc_interface7_dat_r <= memtestsoc_csrbank7_master_w0_w;
				end
				1'd1: begin
					memtestsoc_interface7_dat_r <= memtestsoc_csrbank7_master_r_w;
				end
				2'd2: begin
					memtestsoc_interface7_dat_r <= memtestsoc_csrbank7_fx2_reset_out0_w;
				end
				2'd3: begin
					memtestsoc_interface7_dat_r <= memtestsoc_csrbank7_fx2_hack_shift_reg0_w;
				end
				3'd4: begin
					memtestsoc_interface7_dat_r <= memtestsoc_csrbank7_fx2_hack_status0_w;
				end
				3'd5: begin
					memtestsoc_interface7_dat_r <= memtestsoc_csrbank7_fx2_hack_slave_addr0_w;
				end
				3'd6: begin
					memtestsoc_interface7_dat_r <= memtestsoc_csrbank7_mux_sel0_w;
				end
			endcase
		end
		if (memtestsoc_csrbank7_master_w0_re) begin
			opsis_i2c_master_storage_full[7:0] <= memtestsoc_csrbank7_master_w0_r;
		end
		opsis_i2c_master_re <= memtestsoc_csrbank7_master_w0_re;
		if (memtestsoc_csrbank7_fx2_reset_out0_re) begin
			opsis_i2c_fx2_reset_storage_full <= memtestsoc_csrbank7_fx2_reset_out0_r;
		end
		opsis_i2c_fx2_reset_re <= memtestsoc_csrbank7_fx2_reset_out0_re;
		if (opsis_i2c_shift_reg_we) begin
			opsis_i2c_shift_reg_storage_full <= (opsis_i2c_shift_reg_dat_w <<< 1'd0);
		end
		if (memtestsoc_csrbank7_fx2_hack_shift_reg0_re) begin
			opsis_i2c_shift_reg_storage_full[7:0] <= memtestsoc_csrbank7_fx2_hack_shift_reg0_r;
		end
		opsis_i2c_shift_reg_re <= memtestsoc_csrbank7_fx2_hack_shift_reg0_re;
		if (opsis_i2c_status_we) begin
			opsis_i2c_status_storage_full <= (opsis_i2c_status_dat_w <<< 1'd0);
		end
		if (memtestsoc_csrbank7_fx2_hack_status0_re) begin
			opsis_i2c_status_storage_full[1:0] <= memtestsoc_csrbank7_fx2_hack_status0_r;
		end
		opsis_i2c_status_re <= memtestsoc_csrbank7_fx2_hack_status0_re;
		if (memtestsoc_csrbank7_fx2_hack_slave_addr0_re) begin
			opsis_i2c_slave_addr_storage_full[6:0] <= memtestsoc_csrbank7_fx2_hack_slave_addr0_r;
		end
		opsis_i2c_slave_addr_re <= memtestsoc_csrbank7_fx2_hack_slave_addr0_re;
		if (memtestsoc_csrbank7_mux_sel0_re) begin
			opsisi2c_storage_full <= memtestsoc_csrbank7_mux_sel0_r;
		end
		opsisi2c_re <= memtestsoc_csrbank7_mux_sel0_re;
		memtestsoc_interface8_dat_r <= 1'd0;
		if (memtestsoc_csrbank8_sel) begin
			case (memtestsoc_interface8_adr[5:0])
				1'd0: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_control0_w;
				end
				1'd1: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi0_command0_w;
				end
				2'd2: begin
					memtestsoc_interface8_dat_r <= controllerinjector_phaseinjector0_command_issue_w;
				end
				2'd3: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi0_address1_w;
				end
				3'd4: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi0_address0_w;
				end
				3'd5: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi0_baddress0_w;
				end
				3'd6: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi0_wrdata3_w;
				end
				3'd7: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi0_wrdata2_w;
				end
				4'd8: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi0_wrdata1_w;
				end
				4'd9: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi0_wrdata0_w;
				end
				4'd10: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi0_rddata3_w;
				end
				4'd11: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi0_rddata2_w;
				end
				4'd12: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi0_rddata1_w;
				end
				4'd13: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi0_rddata0_w;
				end
				4'd14: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi1_command0_w;
				end
				4'd15: begin
					memtestsoc_interface8_dat_r <= controllerinjector_phaseinjector1_command_issue_w;
				end
				5'd16: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi1_address1_w;
				end
				5'd17: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi1_address0_w;
				end
				5'd18: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi1_baddress0_w;
				end
				5'd19: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi1_wrdata3_w;
				end
				5'd20: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi1_wrdata2_w;
				end
				5'd21: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi1_wrdata1_w;
				end
				5'd22: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi1_wrdata0_w;
				end
				5'd23: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi1_rddata3_w;
				end
				5'd24: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi1_rddata2_w;
				end
				5'd25: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi1_rddata1_w;
				end
				5'd26: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi1_rddata0_w;
				end
				5'd27: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi2_command0_w;
				end
				5'd28: begin
					memtestsoc_interface8_dat_r <= controllerinjector_phaseinjector2_command_issue_w;
				end
				5'd29: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi2_address1_w;
				end
				5'd30: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi2_address0_w;
				end
				5'd31: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi2_baddress0_w;
				end
				6'd32: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi2_wrdata3_w;
				end
				6'd33: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi2_wrdata2_w;
				end
				6'd34: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi2_wrdata1_w;
				end
				6'd35: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi2_wrdata0_w;
				end
				6'd36: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi2_rddata3_w;
				end
				6'd37: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi2_rddata2_w;
				end
				6'd38: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi2_rddata1_w;
				end
				6'd39: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi2_rddata0_w;
				end
				6'd40: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi3_command0_w;
				end
				6'd41: begin
					memtestsoc_interface8_dat_r <= controllerinjector_phaseinjector3_command_issue_w;
				end
				6'd42: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi3_address1_w;
				end
				6'd43: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi3_address0_w;
				end
				6'd44: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi3_baddress0_w;
				end
				6'd45: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi3_wrdata3_w;
				end
				6'd46: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi3_wrdata2_w;
				end
				6'd47: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi3_wrdata1_w;
				end
				6'd48: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi3_wrdata0_w;
				end
				6'd49: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi3_rddata3_w;
				end
				6'd50: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi3_rddata2_w;
				end
				6'd51: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi3_rddata1_w;
				end
				6'd52: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_dfii_pi3_rddata0_w;
				end
				6'd53: begin
					memtestsoc_interface8_dat_r <= controllerinjector_bandwidth_update_w;
				end
				6'd54: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_controller_bandwidth_nreads2_w;
				end
				6'd55: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_controller_bandwidth_nreads1_w;
				end
				6'd56: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_controller_bandwidth_nreads0_w;
				end
				6'd57: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_controller_bandwidth_nwrites2_w;
				end
				6'd58: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_controller_bandwidth_nwrites1_w;
				end
				6'd59: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_controller_bandwidth_nwrites0_w;
				end
				6'd60: begin
					memtestsoc_interface8_dat_r <= memtestsoc_csrbank8_controller_bandwidth_data_width_w;
				end
			endcase
		end
		if (memtestsoc_csrbank8_dfii_control0_re) begin
			controllerinjector_storage_full[3:0] <= memtestsoc_csrbank8_dfii_control0_r;
		end
		controllerinjector_re <= memtestsoc_csrbank8_dfii_control0_re;
		if (memtestsoc_csrbank8_dfii_pi0_command0_re) begin
			controllerinjector_phaseinjector0_command_storage_full[5:0] <= memtestsoc_csrbank8_dfii_pi0_command0_r;
		end
		controllerinjector_phaseinjector0_command_re <= memtestsoc_csrbank8_dfii_pi0_command0_re;
		if (memtestsoc_csrbank8_dfii_pi0_address1_re) begin
			controllerinjector_phaseinjector0_address_storage_full[13:8] <= memtestsoc_csrbank8_dfii_pi0_address1_r;
		end
		if (memtestsoc_csrbank8_dfii_pi0_address0_re) begin
			controllerinjector_phaseinjector0_address_storage_full[7:0] <= memtestsoc_csrbank8_dfii_pi0_address0_r;
		end
		controllerinjector_phaseinjector0_address_re <= memtestsoc_csrbank8_dfii_pi0_address0_re;
		if (memtestsoc_csrbank8_dfii_pi0_baddress0_re) begin
			controllerinjector_phaseinjector0_baddress_storage_full[2:0] <= memtestsoc_csrbank8_dfii_pi0_baddress0_r;
		end
		controllerinjector_phaseinjector0_baddress_re <= memtestsoc_csrbank8_dfii_pi0_baddress0_re;
		if (memtestsoc_csrbank8_dfii_pi0_wrdata3_re) begin
			controllerinjector_phaseinjector0_wrdata_storage_full[31:24] <= memtestsoc_csrbank8_dfii_pi0_wrdata3_r;
		end
		if (memtestsoc_csrbank8_dfii_pi0_wrdata2_re) begin
			controllerinjector_phaseinjector0_wrdata_storage_full[23:16] <= memtestsoc_csrbank8_dfii_pi0_wrdata2_r;
		end
		if (memtestsoc_csrbank8_dfii_pi0_wrdata1_re) begin
			controllerinjector_phaseinjector0_wrdata_storage_full[15:8] <= memtestsoc_csrbank8_dfii_pi0_wrdata1_r;
		end
		if (memtestsoc_csrbank8_dfii_pi0_wrdata0_re) begin
			controllerinjector_phaseinjector0_wrdata_storage_full[7:0] <= memtestsoc_csrbank8_dfii_pi0_wrdata0_r;
		end
		controllerinjector_phaseinjector0_wrdata_re <= memtestsoc_csrbank8_dfii_pi0_wrdata0_re;
		if (memtestsoc_csrbank8_dfii_pi1_command0_re) begin
			controllerinjector_phaseinjector1_command_storage_full[5:0] <= memtestsoc_csrbank8_dfii_pi1_command0_r;
		end
		controllerinjector_phaseinjector1_command_re <= memtestsoc_csrbank8_dfii_pi1_command0_re;
		if (memtestsoc_csrbank8_dfii_pi1_address1_re) begin
			controllerinjector_phaseinjector1_address_storage_full[13:8] <= memtestsoc_csrbank8_dfii_pi1_address1_r;
		end
		if (memtestsoc_csrbank8_dfii_pi1_address0_re) begin
			controllerinjector_phaseinjector1_address_storage_full[7:0] <= memtestsoc_csrbank8_dfii_pi1_address0_r;
		end
		controllerinjector_phaseinjector1_address_re <= memtestsoc_csrbank8_dfii_pi1_address0_re;
		if (memtestsoc_csrbank8_dfii_pi1_baddress0_re) begin
			controllerinjector_phaseinjector1_baddress_storage_full[2:0] <= memtestsoc_csrbank8_dfii_pi1_baddress0_r;
		end
		controllerinjector_phaseinjector1_baddress_re <= memtestsoc_csrbank8_dfii_pi1_baddress0_re;
		if (memtestsoc_csrbank8_dfii_pi1_wrdata3_re) begin
			controllerinjector_phaseinjector1_wrdata_storage_full[31:24] <= memtestsoc_csrbank8_dfii_pi1_wrdata3_r;
		end
		if (memtestsoc_csrbank8_dfii_pi1_wrdata2_re) begin
			controllerinjector_phaseinjector1_wrdata_storage_full[23:16] <= memtestsoc_csrbank8_dfii_pi1_wrdata2_r;
		end
		if (memtestsoc_csrbank8_dfii_pi1_wrdata1_re) begin
			controllerinjector_phaseinjector1_wrdata_storage_full[15:8] <= memtestsoc_csrbank8_dfii_pi1_wrdata1_r;
		end
		if (memtestsoc_csrbank8_dfii_pi1_wrdata0_re) begin
			controllerinjector_phaseinjector1_wrdata_storage_full[7:0] <= memtestsoc_csrbank8_dfii_pi1_wrdata0_r;
		end
		controllerinjector_phaseinjector1_wrdata_re <= memtestsoc_csrbank8_dfii_pi1_wrdata0_re;
		if (memtestsoc_csrbank8_dfii_pi2_command0_re) begin
			controllerinjector_phaseinjector2_command_storage_full[5:0] <= memtestsoc_csrbank8_dfii_pi2_command0_r;
		end
		controllerinjector_phaseinjector2_command_re <= memtestsoc_csrbank8_dfii_pi2_command0_re;
		if (memtestsoc_csrbank8_dfii_pi2_address1_re) begin
			controllerinjector_phaseinjector2_address_storage_full[13:8] <= memtestsoc_csrbank8_dfii_pi2_address1_r;
		end
		if (memtestsoc_csrbank8_dfii_pi2_address0_re) begin
			controllerinjector_phaseinjector2_address_storage_full[7:0] <= memtestsoc_csrbank8_dfii_pi2_address0_r;
		end
		controllerinjector_phaseinjector2_address_re <= memtestsoc_csrbank8_dfii_pi2_address0_re;
		if (memtestsoc_csrbank8_dfii_pi2_baddress0_re) begin
			controllerinjector_phaseinjector2_baddress_storage_full[2:0] <= memtestsoc_csrbank8_dfii_pi2_baddress0_r;
		end
		controllerinjector_phaseinjector2_baddress_re <= memtestsoc_csrbank8_dfii_pi2_baddress0_re;
		if (memtestsoc_csrbank8_dfii_pi2_wrdata3_re) begin
			controllerinjector_phaseinjector2_wrdata_storage_full[31:24] <= memtestsoc_csrbank8_dfii_pi2_wrdata3_r;
		end
		if (memtestsoc_csrbank8_dfii_pi2_wrdata2_re) begin
			controllerinjector_phaseinjector2_wrdata_storage_full[23:16] <= memtestsoc_csrbank8_dfii_pi2_wrdata2_r;
		end
		if (memtestsoc_csrbank8_dfii_pi2_wrdata1_re) begin
			controllerinjector_phaseinjector2_wrdata_storage_full[15:8] <= memtestsoc_csrbank8_dfii_pi2_wrdata1_r;
		end
		if (memtestsoc_csrbank8_dfii_pi2_wrdata0_re) begin
			controllerinjector_phaseinjector2_wrdata_storage_full[7:0] <= memtestsoc_csrbank8_dfii_pi2_wrdata0_r;
		end
		controllerinjector_phaseinjector2_wrdata_re <= memtestsoc_csrbank8_dfii_pi2_wrdata0_re;
		if (memtestsoc_csrbank8_dfii_pi3_command0_re) begin
			controllerinjector_phaseinjector3_command_storage_full[5:0] <= memtestsoc_csrbank8_dfii_pi3_command0_r;
		end
		controllerinjector_phaseinjector3_command_re <= memtestsoc_csrbank8_dfii_pi3_command0_re;
		if (memtestsoc_csrbank8_dfii_pi3_address1_re) begin
			controllerinjector_phaseinjector3_address_storage_full[13:8] <= memtestsoc_csrbank8_dfii_pi3_address1_r;
		end
		if (memtestsoc_csrbank8_dfii_pi3_address0_re) begin
			controllerinjector_phaseinjector3_address_storage_full[7:0] <= memtestsoc_csrbank8_dfii_pi3_address0_r;
		end
		controllerinjector_phaseinjector3_address_re <= memtestsoc_csrbank8_dfii_pi3_address0_re;
		if (memtestsoc_csrbank8_dfii_pi3_baddress0_re) begin
			controllerinjector_phaseinjector3_baddress_storage_full[2:0] <= memtestsoc_csrbank8_dfii_pi3_baddress0_r;
		end
		controllerinjector_phaseinjector3_baddress_re <= memtestsoc_csrbank8_dfii_pi3_baddress0_re;
		if (memtestsoc_csrbank8_dfii_pi3_wrdata3_re) begin
			controllerinjector_phaseinjector3_wrdata_storage_full[31:24] <= memtestsoc_csrbank8_dfii_pi3_wrdata3_r;
		end
		if (memtestsoc_csrbank8_dfii_pi3_wrdata2_re) begin
			controllerinjector_phaseinjector3_wrdata_storage_full[23:16] <= memtestsoc_csrbank8_dfii_pi3_wrdata2_r;
		end
		if (memtestsoc_csrbank8_dfii_pi3_wrdata1_re) begin
			controllerinjector_phaseinjector3_wrdata_storage_full[15:8] <= memtestsoc_csrbank8_dfii_pi3_wrdata1_r;
		end
		if (memtestsoc_csrbank8_dfii_pi3_wrdata0_re) begin
			controllerinjector_phaseinjector3_wrdata_storage_full[7:0] <= memtestsoc_csrbank8_dfii_pi3_wrdata0_r;
		end
		controllerinjector_phaseinjector3_wrdata_re <= memtestsoc_csrbank8_dfii_pi3_wrdata0_re;
		memtestsoc_interface9_dat_r <= 1'd0;
		if (memtestsoc_csrbank9_sel) begin
			case (memtestsoc_interface9_adr[4:0])
				1'd0: begin
					memtestsoc_interface9_dat_r <= memtestsoc_csrbank9_load3_w;
				end
				1'd1: begin
					memtestsoc_interface9_dat_r <= memtestsoc_csrbank9_load2_w;
				end
				2'd2: begin
					memtestsoc_interface9_dat_r <= memtestsoc_csrbank9_load1_w;
				end
				2'd3: begin
					memtestsoc_interface9_dat_r <= memtestsoc_csrbank9_load0_w;
				end
				3'd4: begin
					memtestsoc_interface9_dat_r <= memtestsoc_csrbank9_reload3_w;
				end
				3'd5: begin
					memtestsoc_interface9_dat_r <= memtestsoc_csrbank9_reload2_w;
				end
				3'd6: begin
					memtestsoc_interface9_dat_r <= memtestsoc_csrbank9_reload1_w;
				end
				3'd7: begin
					memtestsoc_interface9_dat_r <= memtestsoc_csrbank9_reload0_w;
				end
				4'd8: begin
					memtestsoc_interface9_dat_r <= memtestsoc_csrbank9_en0_w;
				end
				4'd9: begin
					memtestsoc_interface9_dat_r <= memtestsoc_update_value_w;
				end
				4'd10: begin
					memtestsoc_interface9_dat_r <= memtestsoc_csrbank9_value3_w;
				end
				4'd11: begin
					memtestsoc_interface9_dat_r <= memtestsoc_csrbank9_value2_w;
				end
				4'd12: begin
					memtestsoc_interface9_dat_r <= memtestsoc_csrbank9_value1_w;
				end
				4'd13: begin
					memtestsoc_interface9_dat_r <= memtestsoc_csrbank9_value0_w;
				end
				4'd14: begin
					memtestsoc_interface9_dat_r <= memtestsoc_eventmanager_status_w;
				end
				4'd15: begin
					memtestsoc_interface9_dat_r <= memtestsoc_eventmanager_pending_w;
				end
				5'd16: begin
					memtestsoc_interface9_dat_r <= memtestsoc_csrbank9_ev_enable0_w;
				end
			endcase
		end
		if (memtestsoc_csrbank9_load3_re) begin
			memtestsoc_load_storage_full[31:24] <= memtestsoc_csrbank9_load3_r;
		end
		if (memtestsoc_csrbank9_load2_re) begin
			memtestsoc_load_storage_full[23:16] <= memtestsoc_csrbank9_load2_r;
		end
		if (memtestsoc_csrbank9_load1_re) begin
			memtestsoc_load_storage_full[15:8] <= memtestsoc_csrbank9_load1_r;
		end
		if (memtestsoc_csrbank9_load0_re) begin
			memtestsoc_load_storage_full[7:0] <= memtestsoc_csrbank9_load0_r;
		end
		memtestsoc_load_re <= memtestsoc_csrbank9_load0_re;
		if (memtestsoc_csrbank9_reload3_re) begin
			memtestsoc_reload_storage_full[31:24] <= memtestsoc_csrbank9_reload3_r;
		end
		if (memtestsoc_csrbank9_reload2_re) begin
			memtestsoc_reload_storage_full[23:16] <= memtestsoc_csrbank9_reload2_r;
		end
		if (memtestsoc_csrbank9_reload1_re) begin
			memtestsoc_reload_storage_full[15:8] <= memtestsoc_csrbank9_reload1_r;
		end
		if (memtestsoc_csrbank9_reload0_re) begin
			memtestsoc_reload_storage_full[7:0] <= memtestsoc_csrbank9_reload0_r;
		end
		memtestsoc_reload_re <= memtestsoc_csrbank9_reload0_re;
		if (memtestsoc_csrbank9_en0_re) begin
			memtestsoc_en_storage_full <= memtestsoc_csrbank9_en0_r;
		end
		memtestsoc_en_re <= memtestsoc_csrbank9_en0_re;
		if (memtestsoc_csrbank9_ev_enable0_re) begin
			memtestsoc_eventmanager_storage_full <= memtestsoc_csrbank9_ev_enable0_r;
		end
		memtestsoc_eventmanager_re <= memtestsoc_csrbank9_ev_enable0_re;
		memtestsoc_interface10_dat_r <= 1'd0;
		if (memtestsoc_csrbank10_sel) begin
			case (memtestsoc_interface10_adr[2:0])
				1'd0: begin
					memtestsoc_interface10_dat_r <= uart_rxtx_w;
				end
				1'd1: begin
					memtestsoc_interface10_dat_r <= memtestsoc_csrbank10_txfull_w;
				end
				2'd2: begin
					memtestsoc_interface10_dat_r <= memtestsoc_csrbank10_rxempty_w;
				end
				2'd3: begin
					memtestsoc_interface10_dat_r <= uart_status_w;
				end
				3'd4: begin
					memtestsoc_interface10_dat_r <= uart_pending_w;
				end
				3'd5: begin
					memtestsoc_interface10_dat_r <= memtestsoc_csrbank10_ev_enable0_w;
				end
			endcase
		end
		if (memtestsoc_csrbank10_ev_enable0_re) begin
			uart_storage_full[1:0] <= memtestsoc_csrbank10_ev_enable0_r;
		end
		uart_re <= memtestsoc_csrbank10_ev_enable0_re;
	end
	xilinxmultiregimpl0_regs0 <= opsis_i2c_scl_i_async;
	xilinxmultiregimpl0_regs1 <= xilinxmultiregimpl0_regs0;
	xilinxmultiregimpl1_regs0 <= opsis_i2c_sda_i_async;
	xilinxmultiregimpl1_regs1 <= xilinxmultiregimpl1_regs0;
	xilinxmultiregimpl2_regs0 <= rx;
	xilinxmultiregimpl2_regs1 <= xilinxmultiregimpl2_regs0;
	xilinxmultiregimpl3_regs0 <= front_panel_switches;
	xilinxmultiregimpl3_regs1 <= xilinxmultiregimpl3_regs0;
	xilinxmultiregimpl4_regs0 <= ethphy_mdio_data_r;
	xilinxmultiregimpl4_regs1 <= xilinxmultiregimpl4_regs0;
	xilinxmultiregimpl6_regs0 <= ethmac_tx_cdc_graycounter1_q;
	xilinxmultiregimpl6_regs1 <= xilinxmultiregimpl6_regs0;
	xilinxmultiregimpl7_regs0 <= ethmac_rx_cdc_graycounter0_q;
	xilinxmultiregimpl7_regs1 <= xilinxmultiregimpl7_regs0;
	xilinxmultiregimpl9_regs0 <= generator_reset_sync_toggle_i;
	xilinxmultiregimpl9_regs1 <= xilinxmultiregimpl9_regs0;
	xilinxmultiregimpl10_regs0 <= generator_start_sync_toggle_i;
	xilinxmultiregimpl10_regs1 <= xilinxmultiregimpl10_regs0;
	xilinxmultiregimpl11_regs0 <= generator_done_sync_i;
	xilinxmultiregimpl11_regs1 <= xilinxmultiregimpl11_regs0;
	xilinxmultiregimpl12_regs0 <= generator_base_sync_ping_toggle_i;
	xilinxmultiregimpl12_regs1 <= xilinxmultiregimpl12_regs0;
	xilinxmultiregimpl13_regs0 <= generator_base_sync_pong_toggle_i;
	xilinxmultiregimpl13_regs1 <= xilinxmultiregimpl13_regs0;
	xilinxmultiregimpl14_regs0 <= generator_base_sync_ibuffer;
	xilinxmultiregimpl14_regs1 <= xilinxmultiregimpl14_regs0;
	xilinxmultiregimpl15_regs0 <= generator_length_sync_ping_toggle_i;
	xilinxmultiregimpl15_regs1 <= xilinxmultiregimpl15_regs0;
	xilinxmultiregimpl16_regs0 <= generator_length_sync_pong_toggle_i;
	xilinxmultiregimpl16_regs1 <= xilinxmultiregimpl16_regs0;
	xilinxmultiregimpl17_regs0 <= generator_length_sync_ibuffer;
	xilinxmultiregimpl17_regs1 <= xilinxmultiregimpl17_regs0;
	xilinxmultiregimpl18_regs0 <= checker_reset_sync_toggle_i;
	xilinxmultiregimpl18_regs1 <= xilinxmultiregimpl18_regs0;
	xilinxmultiregimpl19_regs0 <= checker_start_sync_toggle_i;
	xilinxmultiregimpl19_regs1 <= xilinxmultiregimpl19_regs0;
	xilinxmultiregimpl20_regs0 <= checker_done_sync_i;
	xilinxmultiregimpl20_regs1 <= xilinxmultiregimpl20_regs0;
	xilinxmultiregimpl21_regs0 <= checker_base_sync_ping_toggle_i;
	xilinxmultiregimpl21_regs1 <= xilinxmultiregimpl21_regs0;
	xilinxmultiregimpl22_regs0 <= checker_base_sync_pong_toggle_i;
	xilinxmultiregimpl22_regs1 <= xilinxmultiregimpl22_regs0;
	xilinxmultiregimpl23_regs0 <= checker_base_sync_ibuffer;
	xilinxmultiregimpl23_regs1 <= xilinxmultiregimpl23_regs0;
	xilinxmultiregimpl24_regs0 <= checker_length_sync_ping_toggle_i;
	xilinxmultiregimpl24_regs1 <= xilinxmultiregimpl24_regs0;
	xilinxmultiregimpl25_regs0 <= checker_length_sync_pong_toggle_i;
	xilinxmultiregimpl25_regs1 <= xilinxmultiregimpl25_regs0;
	xilinxmultiregimpl26_regs0 <= checker_length_sync_ibuffer;
	xilinxmultiregimpl26_regs1 <= xilinxmultiregimpl26_regs0;
	xilinxmultiregimpl27_regs0 <= checker_err_count_sync_ping_toggle_i;
	xilinxmultiregimpl27_regs1 <= xilinxmultiregimpl27_regs0;
	xilinxmultiregimpl28_regs0 <= checker_err_count_sync_pong_toggle_i;
	xilinxmultiregimpl28_regs1 <= xilinxmultiregimpl28_regs0;
	xilinxmultiregimpl29_regs0 <= checker_err_count_sync_ibuffer;
	xilinxmultiregimpl29_regs1 <= xilinxmultiregimpl29_regs0;
	xilinxmultiregimpl30_regs0 <= frontend_trigger_value_storage;
	xilinxmultiregimpl30_regs1 <= xilinxmultiregimpl30_regs0;
	xilinxmultiregimpl31_regs0 <= frontend_trigger_mask_storage;
	xilinxmultiregimpl31_regs1 <= xilinxmultiregimpl31_regs0;
	xilinxmultiregimpl32_regs0 <= frontend_subsampler_value_storage;
	xilinxmultiregimpl32_regs1 <= xilinxmultiregimpl32_regs0;
	xilinxmultiregimpl33_regs0 <= frontend_asyncfifo_graycounter0_q;
	xilinxmultiregimpl33_regs1 <= xilinxmultiregimpl33_regs0;
	xilinxmultiregimpl34_regs0 <= frontend_asyncfifo_graycounter1_q;
	xilinxmultiregimpl34_regs1 <= xilinxmultiregimpl34_regs0;
end

always @(posedge sys2x_clk) begin
	if (sys2x_rst) begin
		half_rate_phy_phase_sys <= 1'd0;
		half_rate_phy_bitslip_cnt <= 4'd0;
		half_rate_phy_bitslip_inc <= 1'd0;
		half_rate_phy_record2_wrdata <= 32'd0;
		half_rate_phy_record2_wrdata_mask <= 4'd0;
		half_rate_phy_record3_wrdata <= 32'd0;
		half_rate_phy_record3_wrdata_mask <= 4'd0;
		half_rate_phy_drive_dq_n1 <= 1'd0;
		half_rate_phy_wrdata_en_d <= 1'd0;
		half_rate_phy_rddata_sr <= 6'd0;
		phase_sel <= 1'd0;
		phase_sys2x <= 1'd0;
		wr_data_en_d <= 1'd0;
		rddata0 <= 32'd0;
		rddata1 <= 32'd0;
		rddata_valid <= 2'd0;
	end else begin
		if ((phase_sys2x == phase_sys)) begin
			phase_sel <= 1'd0;
		end else begin
			phase_sel <= (~phase_sel);
		end
		phase_sys2x <= (~phase_sel);
		wr_data_en_d <= (dfi_dfi_p1_wrdata_en & (~phase_sel));
		rddata_valid[0] <= half_rate_phy_dfi_p0_rddata_valid;
		rddata0 <= half_rate_phy_dfi_p0_rddata;
		rddata_valid[1] <= half_rate_phy_dfi_p1_rddata_valid;
		rddata1 <= half_rate_phy_dfi_p1_rddata;
		half_rate_phy_phase_sys <= half_rate_phy_phase_half;
		if ((half_rate_phy_bitslip_cnt == 1'd0)) begin
			half_rate_phy_bitslip_inc <= 1'd0;
		end else begin
			half_rate_phy_bitslip_cnt <= (half_rate_phy_bitslip_cnt + 1'd1);
			half_rate_phy_bitslip_inc <= 1'd1;
		end
		half_rate_phy_record2_wrdata <= half_rate_phy_dfi_p0_wrdata;
		half_rate_phy_record2_wrdata_mask <= half_rate_phy_dfi_p0_wrdata_mask;
		half_rate_phy_record3_wrdata <= half_rate_phy_dfi_p1_wrdata;
		half_rate_phy_record3_wrdata_mask <= half_rate_phy_dfi_p1_wrdata_mask;
		half_rate_phy_drive_dq_n1 <= half_rate_phy_drive_dq_n0;
		half_rate_phy_wrdata_en_d <= half_rate_phy_wrdata_en;
		half_rate_phy_rddata_sr <= {half_rate_phy_rddata_en, half_rate_phy_rddata_sr[5:1]};
	end
end

lm32_cpu #(
	.eba_reset(32'h00000000)
) lm32_cpu (
	.D_ACK_I(memtestsoc_dbus_ack),
	.D_DAT_I(memtestsoc_dbus_dat_r),
	.D_ERR_I(memtestsoc_dbus_err),
	.D_RTY_I(1'd0),
	.I_ACK_I(memtestsoc_ibus_ack),
	.I_DAT_I(memtestsoc_ibus_dat_r),
	.I_ERR_I(memtestsoc_ibus_err),
	.I_RTY_I(1'd0),
	.clk_i(sys_clk),
	.interrupt(memtestsoc_interrupt),
	.rst_i(sys_rst),
	.D_ADR_O(memtestsoc_d_adr_o),
	.D_BTE_O(memtestsoc_dbus_bte),
	.D_CTI_O(memtestsoc_dbus_cti),
	.D_CYC_O(memtestsoc_dbus_cyc),
	.D_DAT_O(memtestsoc_dbus_dat_w),
	.D_SEL_O(memtestsoc_dbus_sel),
	.D_STB_O(memtestsoc_dbus_stb),
	.D_WE_O(memtestsoc_dbus_we),
	.I_ADR_O(memtestsoc_i_adr_o),
	.I_BTE_O(memtestsoc_ibus_bte),
	.I_CTI_O(memtestsoc_ibus_cti),
	.I_CYC_O(memtestsoc_ibus_cyc),
	.I_DAT_O(memtestsoc_ibus_dat_w),
	.I_SEL_O(memtestsoc_ibus_sel),
	.I_STB_O(memtestsoc_ibus_stb),
	.I_WE_O(memtestsoc_ibus_we)
);

reg [31:0] mem[0:8191];
reg [12:0] memadr;
always @(posedge sys_clk) begin
	memadr <= memtestsoc_rom_adr;
end

assign memtestsoc_rom_dat_r = mem[memadr];

initial begin
	$readmemh("mem.init", mem);
end

reg [31:0] mem_1[0:4095];
reg [11:0] memadr_1;
always @(posedge sys_clk) begin
	if (memtestsoc_sram_we[0])
		mem_1[memtestsoc_sram_adr][7:0] <= memtestsoc_sram_dat_w[7:0];
	if (memtestsoc_sram_we[1])
		mem_1[memtestsoc_sram_adr][15:8] <= memtestsoc_sram_dat_w[15:8];
	if (memtestsoc_sram_we[2])
		mem_1[memtestsoc_sram_adr][23:16] <= memtestsoc_sram_dat_w[23:16];
	if (memtestsoc_sram_we[3])
		mem_1[memtestsoc_sram_adr][31:24] <= memtestsoc_sram_dat_w[31:24];
	memadr_1 <= memtestsoc_sram_adr;
end

assign memtestsoc_sram_dat_r = mem_1[memadr_1];

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
	.CLKFBOUT_MULT(3'd4),
	.CLKFBOUT_PHASE(0.0),
	.CLKIN1_PERIOD(10.0),
	.CLKIN2_PERIOD(0.0),
	.CLKOUT0_DIVIDE(1'd1),
	.CLKOUT0_DUTY_CYCLE(0.5),
	.CLKOUT0_PHASE(0.0),
	.CLKOUT1_DIVIDE(3'd6),
	.CLKOUT1_DUTY_CYCLE(0.5),
	.CLKOUT1_PHASE(0.0),
	.CLKOUT2_DIVIDE(2'd2),
	.CLKOUT2_DUTY_CYCLE(0.5),
	.CLKOUT2_PHASE(230.0),
	.CLKOUT3_DIVIDE(2'd2),
	.CLKOUT3_DUTY_CYCLE(0.5),
	.CLKOUT3_PHASE(210.0),
	.CLKOUT4_DIVIDE(3'd4),
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
	.CLKOUT4(crg_unbuf_sys2x),
	.CLKOUT5(crg_unbuf_sys),
	.LOCKED(crg_pll_lckd)
);

BUFG sys_bufg(
	.I(crg_unbuf_sys),
	.O(sys_clk)
);

BUFG sys2x_bufg(
	.I(crg_unbuf_sys2x),
	.O(sys2x_clk)
);

BUFPLL #(
	.DIVIDE(3'd4)
) sdram_full_bufpll (
	.GCLK(sys2x_clk),
	.LOCKED(crg_pll_lckd),
	.PLLIN(crg_unbuf_sdram_full),
	.IOCLK(sdram_full_wr_clk),
	.SERDESSTROBE(crg_clk8x_wr_strb)
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

assign fx2_reset = opsis_i2c_fx2_reset_oe ? opsis_i2c_fx2_reset_o : 1'bz;
assign opsis_i2c_fx2_reset_i = fx2_reset;

reg [8:0] storage[0:15];
reg [3:0] memadr_2;
always @(posedge sys_clk) begin
	if (uart_tx_fifo_wrport_we)
		storage[uart_tx_fifo_wrport_adr] <= uart_tx_fifo_wrport_dat_w;
	memadr_2 <= uart_tx_fifo_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign uart_tx_fifo_wrport_dat_r = storage[memadr_2];
assign uart_tx_fifo_rdport_dat_r = storage[uart_tx_fifo_rdport_adr];

reg [8:0] storage_1[0:15];
reg [3:0] memadr_3;
always @(posedge sys_clk) begin
	if (uart_rx_fifo_wrport_we)
		storage_1[uart_rx_fifo_wrport_adr] <= uart_rx_fifo_wrport_dat_w;
	memadr_3 <= uart_rx_fifo_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign uart_rx_fifo_wrport_dat_r = storage_1[memadr_3];
assign uart_rx_fifo_rdport_dat_r = storage_1[uart_rx_fifo_rdport_adr];

assign spiflash4x_dq = spiflash_oe ? spiflash_o : 4'bz;
assign spiflash_i0 = spiflash4x_dq;

ODDR2 #(
	.DDR_ALIGNMENT("C0"),
	.INIT(1'd0),
	.SRTYPE("ASYNC")
) ODDR2_1 (
	.C0(sdram_half_clk),
	.C1(half_rate_phy_sdram_half_clk_n),
	.CE(1'd1),
	.D0(1'd0),
	.D1(1'd1),
	.R(1'd0),
	.S(1'd0),
	.Q(half_rate_phy_dqs_o[0])
);

ODDR2 #(
	.DDR_ALIGNMENT("C0"),
	.INIT(1'd0),
	.SRTYPE("ASYNC")
) ODDR2_2 (
	.C0(sdram_half_clk),
	.C1(half_rate_phy_sdram_half_clk_n),
	.CE(1'd1),
	.D0(half_rate_phy_dqs_t_d0),
	.D1(half_rate_phy_dqs_t_d1),
	.R(1'd0),
	.S(1'd0),
	.Q(half_rate_phy_dqs_t[0])
);

OBUFTDS OBUFTDS(
	.I(half_rate_phy_dqs_o[0]),
	.T(half_rate_phy_dqs_t[0]),
	.O(ddram_dqs[0]),
	.OB(ddram_dqs_n[0])
);

ODDR2 #(
	.DDR_ALIGNMENT("C0"),
	.INIT(1'd0),
	.SRTYPE("ASYNC")
) ODDR2_3 (
	.C0(sdram_half_clk),
	.C1(half_rate_phy_sdram_half_clk_n),
	.CE(1'd1),
	.D0(1'd0),
	.D1(1'd1),
	.R(1'd0),
	.S(1'd0),
	.Q(half_rate_phy_dqs_o[1])
);

ODDR2 #(
	.DDR_ALIGNMENT("C0"),
	.INIT(1'd0),
	.SRTYPE("ASYNC")
) ODDR2_4 (
	.C0(sdram_half_clk),
	.C1(half_rate_phy_sdram_half_clk_n),
	.CE(1'd1),
	.D0(half_rate_phy_dqs_t_d0),
	.D1(half_rate_phy_dqs_t_d1),
	.R(1'd0),
	.S(1'd0),
	.Q(half_rate_phy_dqs_t[1])
);

OBUFTDS OBUFTDS_1(
	.I(half_rate_phy_dqs_o[1]),
	.T(half_rate_phy_dqs_t[1]),
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
	.CLKDIV(sys2x_clk),
	.D1(slice_proxy0[0]),
	.D2(slice_proxy1[0]),
	.D3(slice_proxy2[0]),
	.D4(slice_proxy3[0]),
	.IOCE(half_rate_phy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(half_rate_phy_drive_dq_n1),
	.T2(half_rate_phy_drive_dq_n1),
	.T3(half_rate_phy_drive_dq_n1),
	.T4(half_rate_phy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(half_rate_phy_dq_o[0]),
	.TQ(half_rate_phy_dq_t[0])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2 (
	.BITSLIP(half_rate_phy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys2x_clk),
	.D(half_rate_phy_dq_i[0]),
	.IOCE(half_rate_phy_clk4x_rd_strb),
	.RST(sys2x_rst),
	.Q1(half_rate_phy_record0_rddata[16]),
	.Q2(half_rate_phy_record0_rddata[0]),
	.Q3(half_rate_phy_record1_rddata[16]),
	.Q4(half_rate_phy_record1_rddata[0])
);

IOBUF IOBUF(
	.I(half_rate_phy_dq_o[0]),
	.T(half_rate_phy_dq_t[0]),
	.IO(ddram_dq[0]),
	.O(half_rate_phy_dq_i[0])
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
	.CLKDIV(sys2x_clk),
	.D1(slice_proxy4[1]),
	.D2(slice_proxy5[1]),
	.D3(slice_proxy6[1]),
	.D4(slice_proxy7[1]),
	.IOCE(half_rate_phy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(half_rate_phy_drive_dq_n1),
	.T2(half_rate_phy_drive_dq_n1),
	.T3(half_rate_phy_drive_dq_n1),
	.T4(half_rate_phy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(half_rate_phy_dq_o[1]),
	.TQ(half_rate_phy_dq_t[1])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_1 (
	.BITSLIP(half_rate_phy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys2x_clk),
	.D(half_rate_phy_dq_i[1]),
	.IOCE(half_rate_phy_clk4x_rd_strb),
	.RST(sys2x_rst),
	.Q1(half_rate_phy_record0_rddata[17]),
	.Q2(half_rate_phy_record0_rddata[1]),
	.Q3(half_rate_phy_record1_rddata[17]),
	.Q4(half_rate_phy_record1_rddata[1])
);

IOBUF IOBUF_1(
	.I(half_rate_phy_dq_o[1]),
	.T(half_rate_phy_dq_t[1]),
	.IO(ddram_dq[1]),
	.O(half_rate_phy_dq_i[1])
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
	.CLKDIV(sys2x_clk),
	.D1(slice_proxy8[2]),
	.D2(slice_proxy9[2]),
	.D3(slice_proxy10[2]),
	.D4(slice_proxy11[2]),
	.IOCE(half_rate_phy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(half_rate_phy_drive_dq_n1),
	.T2(half_rate_phy_drive_dq_n1),
	.T3(half_rate_phy_drive_dq_n1),
	.T4(half_rate_phy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(half_rate_phy_dq_o[2]),
	.TQ(half_rate_phy_dq_t[2])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_2 (
	.BITSLIP(half_rate_phy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys2x_clk),
	.D(half_rate_phy_dq_i[2]),
	.IOCE(half_rate_phy_clk4x_rd_strb),
	.RST(sys2x_rst),
	.Q1(half_rate_phy_record0_rddata[18]),
	.Q2(half_rate_phy_record0_rddata[2]),
	.Q3(half_rate_phy_record1_rddata[18]),
	.Q4(half_rate_phy_record1_rddata[2])
);

IOBUF IOBUF_2(
	.I(half_rate_phy_dq_o[2]),
	.T(half_rate_phy_dq_t[2]),
	.IO(ddram_dq[2]),
	.O(half_rate_phy_dq_i[2])
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
	.CLKDIV(sys2x_clk),
	.D1(slice_proxy12[3]),
	.D2(slice_proxy13[3]),
	.D3(slice_proxy14[3]),
	.D4(slice_proxy15[3]),
	.IOCE(half_rate_phy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(half_rate_phy_drive_dq_n1),
	.T2(half_rate_phy_drive_dq_n1),
	.T3(half_rate_phy_drive_dq_n1),
	.T4(half_rate_phy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(half_rate_phy_dq_o[3]),
	.TQ(half_rate_phy_dq_t[3])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_3 (
	.BITSLIP(half_rate_phy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys2x_clk),
	.D(half_rate_phy_dq_i[3]),
	.IOCE(half_rate_phy_clk4x_rd_strb),
	.RST(sys2x_rst),
	.Q1(half_rate_phy_record0_rddata[19]),
	.Q2(half_rate_phy_record0_rddata[3]),
	.Q3(half_rate_phy_record1_rddata[19]),
	.Q4(half_rate_phy_record1_rddata[3])
);

IOBUF IOBUF_3(
	.I(half_rate_phy_dq_o[3]),
	.T(half_rate_phy_dq_t[3]),
	.IO(ddram_dq[3]),
	.O(half_rate_phy_dq_i[3])
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
	.CLKDIV(sys2x_clk),
	.D1(slice_proxy16[4]),
	.D2(slice_proxy17[4]),
	.D3(slice_proxy18[4]),
	.D4(slice_proxy19[4]),
	.IOCE(half_rate_phy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(half_rate_phy_drive_dq_n1),
	.T2(half_rate_phy_drive_dq_n1),
	.T3(half_rate_phy_drive_dq_n1),
	.T4(half_rate_phy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(half_rate_phy_dq_o[4]),
	.TQ(half_rate_phy_dq_t[4])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_4 (
	.BITSLIP(half_rate_phy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys2x_clk),
	.D(half_rate_phy_dq_i[4]),
	.IOCE(half_rate_phy_clk4x_rd_strb),
	.RST(sys2x_rst),
	.Q1(half_rate_phy_record0_rddata[20]),
	.Q2(half_rate_phy_record0_rddata[4]),
	.Q3(half_rate_phy_record1_rddata[20]),
	.Q4(half_rate_phy_record1_rddata[4])
);

IOBUF IOBUF_4(
	.I(half_rate_phy_dq_o[4]),
	.T(half_rate_phy_dq_t[4]),
	.IO(ddram_dq[4]),
	.O(half_rate_phy_dq_i[4])
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
	.CLKDIV(sys2x_clk),
	.D1(slice_proxy20[5]),
	.D2(slice_proxy21[5]),
	.D3(slice_proxy22[5]),
	.D4(slice_proxy23[5]),
	.IOCE(half_rate_phy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(half_rate_phy_drive_dq_n1),
	.T2(half_rate_phy_drive_dq_n1),
	.T3(half_rate_phy_drive_dq_n1),
	.T4(half_rate_phy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(half_rate_phy_dq_o[5]),
	.TQ(half_rate_phy_dq_t[5])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_5 (
	.BITSLIP(half_rate_phy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys2x_clk),
	.D(half_rate_phy_dq_i[5]),
	.IOCE(half_rate_phy_clk4x_rd_strb),
	.RST(sys2x_rst),
	.Q1(half_rate_phy_record0_rddata[21]),
	.Q2(half_rate_phy_record0_rddata[5]),
	.Q3(half_rate_phy_record1_rddata[21]),
	.Q4(half_rate_phy_record1_rddata[5])
);

IOBUF IOBUF_5(
	.I(half_rate_phy_dq_o[5]),
	.T(half_rate_phy_dq_t[5]),
	.IO(ddram_dq[5]),
	.O(half_rate_phy_dq_i[5])
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
	.CLKDIV(sys2x_clk),
	.D1(slice_proxy24[6]),
	.D2(slice_proxy25[6]),
	.D3(slice_proxy26[6]),
	.D4(slice_proxy27[6]),
	.IOCE(half_rate_phy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(half_rate_phy_drive_dq_n1),
	.T2(half_rate_phy_drive_dq_n1),
	.T3(half_rate_phy_drive_dq_n1),
	.T4(half_rate_phy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(half_rate_phy_dq_o[6]),
	.TQ(half_rate_phy_dq_t[6])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_6 (
	.BITSLIP(half_rate_phy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys2x_clk),
	.D(half_rate_phy_dq_i[6]),
	.IOCE(half_rate_phy_clk4x_rd_strb),
	.RST(sys2x_rst),
	.Q1(half_rate_phy_record0_rddata[22]),
	.Q2(half_rate_phy_record0_rddata[6]),
	.Q3(half_rate_phy_record1_rddata[22]),
	.Q4(half_rate_phy_record1_rddata[6])
);

IOBUF IOBUF_6(
	.I(half_rate_phy_dq_o[6]),
	.T(half_rate_phy_dq_t[6]),
	.IO(ddram_dq[6]),
	.O(half_rate_phy_dq_i[6])
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
	.CLKDIV(sys2x_clk),
	.D1(slice_proxy28[7]),
	.D2(slice_proxy29[7]),
	.D3(slice_proxy30[7]),
	.D4(slice_proxy31[7]),
	.IOCE(half_rate_phy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(half_rate_phy_drive_dq_n1),
	.T2(half_rate_phy_drive_dq_n1),
	.T3(half_rate_phy_drive_dq_n1),
	.T4(half_rate_phy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(half_rate_phy_dq_o[7]),
	.TQ(half_rate_phy_dq_t[7])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_7 (
	.BITSLIP(half_rate_phy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys2x_clk),
	.D(half_rate_phy_dq_i[7]),
	.IOCE(half_rate_phy_clk4x_rd_strb),
	.RST(sys2x_rst),
	.Q1(half_rate_phy_record0_rddata[23]),
	.Q2(half_rate_phy_record0_rddata[7]),
	.Q3(half_rate_phy_record1_rddata[23]),
	.Q4(half_rate_phy_record1_rddata[7])
);

IOBUF IOBUF_7(
	.I(half_rate_phy_dq_o[7]),
	.T(half_rate_phy_dq_t[7]),
	.IO(ddram_dq[7]),
	.O(half_rate_phy_dq_i[7])
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
	.CLKDIV(sys2x_clk),
	.D1(slice_proxy32[8]),
	.D2(slice_proxy33[8]),
	.D3(slice_proxy34[8]),
	.D4(slice_proxy35[8]),
	.IOCE(half_rate_phy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(half_rate_phy_drive_dq_n1),
	.T2(half_rate_phy_drive_dq_n1),
	.T3(half_rate_phy_drive_dq_n1),
	.T4(half_rate_phy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(half_rate_phy_dq_o[8]),
	.TQ(half_rate_phy_dq_t[8])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_8 (
	.BITSLIP(half_rate_phy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys2x_clk),
	.D(half_rate_phy_dq_i[8]),
	.IOCE(half_rate_phy_clk4x_rd_strb),
	.RST(sys2x_rst),
	.Q1(half_rate_phy_record0_rddata[24]),
	.Q2(half_rate_phy_record0_rddata[8]),
	.Q3(half_rate_phy_record1_rddata[24]),
	.Q4(half_rate_phy_record1_rddata[8])
);

IOBUF IOBUF_8(
	.I(half_rate_phy_dq_o[8]),
	.T(half_rate_phy_dq_t[8]),
	.IO(ddram_dq[8]),
	.O(half_rate_phy_dq_i[8])
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
	.CLKDIV(sys2x_clk),
	.D1(slice_proxy36[9]),
	.D2(slice_proxy37[9]),
	.D3(slice_proxy38[9]),
	.D4(slice_proxy39[9]),
	.IOCE(half_rate_phy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(half_rate_phy_drive_dq_n1),
	.T2(half_rate_phy_drive_dq_n1),
	.T3(half_rate_phy_drive_dq_n1),
	.T4(half_rate_phy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(half_rate_phy_dq_o[9]),
	.TQ(half_rate_phy_dq_t[9])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_9 (
	.BITSLIP(half_rate_phy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys2x_clk),
	.D(half_rate_phy_dq_i[9]),
	.IOCE(half_rate_phy_clk4x_rd_strb),
	.RST(sys2x_rst),
	.Q1(half_rate_phy_record0_rddata[25]),
	.Q2(half_rate_phy_record0_rddata[9]),
	.Q3(half_rate_phy_record1_rddata[25]),
	.Q4(half_rate_phy_record1_rddata[9])
);

IOBUF IOBUF_9(
	.I(half_rate_phy_dq_o[9]),
	.T(half_rate_phy_dq_t[9]),
	.IO(ddram_dq[9]),
	.O(half_rate_phy_dq_i[9])
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
	.CLKDIV(sys2x_clk),
	.D1(slice_proxy40[10]),
	.D2(slice_proxy41[10]),
	.D3(slice_proxy42[10]),
	.D4(slice_proxy43[10]),
	.IOCE(half_rate_phy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(half_rate_phy_drive_dq_n1),
	.T2(half_rate_phy_drive_dq_n1),
	.T3(half_rate_phy_drive_dq_n1),
	.T4(half_rate_phy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(half_rate_phy_dq_o[10]),
	.TQ(half_rate_phy_dq_t[10])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_10 (
	.BITSLIP(half_rate_phy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys2x_clk),
	.D(half_rate_phy_dq_i[10]),
	.IOCE(half_rate_phy_clk4x_rd_strb),
	.RST(sys2x_rst),
	.Q1(half_rate_phy_record0_rddata[26]),
	.Q2(half_rate_phy_record0_rddata[10]),
	.Q3(half_rate_phy_record1_rddata[26]),
	.Q4(half_rate_phy_record1_rddata[10])
);

IOBUF IOBUF_10(
	.I(half_rate_phy_dq_o[10]),
	.T(half_rate_phy_dq_t[10]),
	.IO(ddram_dq[10]),
	.O(half_rate_phy_dq_i[10])
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
	.CLKDIV(sys2x_clk),
	.D1(slice_proxy44[11]),
	.D2(slice_proxy45[11]),
	.D3(slice_proxy46[11]),
	.D4(slice_proxy47[11]),
	.IOCE(half_rate_phy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(half_rate_phy_drive_dq_n1),
	.T2(half_rate_phy_drive_dq_n1),
	.T3(half_rate_phy_drive_dq_n1),
	.T4(half_rate_phy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(half_rate_phy_dq_o[11]),
	.TQ(half_rate_phy_dq_t[11])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_11 (
	.BITSLIP(half_rate_phy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys2x_clk),
	.D(half_rate_phy_dq_i[11]),
	.IOCE(half_rate_phy_clk4x_rd_strb),
	.RST(sys2x_rst),
	.Q1(half_rate_phy_record0_rddata[27]),
	.Q2(half_rate_phy_record0_rddata[11]),
	.Q3(half_rate_phy_record1_rddata[27]),
	.Q4(half_rate_phy_record1_rddata[11])
);

IOBUF IOBUF_11(
	.I(half_rate_phy_dq_o[11]),
	.T(half_rate_phy_dq_t[11]),
	.IO(ddram_dq[11]),
	.O(half_rate_phy_dq_i[11])
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
	.CLKDIV(sys2x_clk),
	.D1(slice_proxy48[12]),
	.D2(slice_proxy49[12]),
	.D3(slice_proxy50[12]),
	.D4(slice_proxy51[12]),
	.IOCE(half_rate_phy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(half_rate_phy_drive_dq_n1),
	.T2(half_rate_phy_drive_dq_n1),
	.T3(half_rate_phy_drive_dq_n1),
	.T4(half_rate_phy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(half_rate_phy_dq_o[12]),
	.TQ(half_rate_phy_dq_t[12])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_12 (
	.BITSLIP(half_rate_phy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys2x_clk),
	.D(half_rate_phy_dq_i[12]),
	.IOCE(half_rate_phy_clk4x_rd_strb),
	.RST(sys2x_rst),
	.Q1(half_rate_phy_record0_rddata[28]),
	.Q2(half_rate_phy_record0_rddata[12]),
	.Q3(half_rate_phy_record1_rddata[28]),
	.Q4(half_rate_phy_record1_rddata[12])
);

IOBUF IOBUF_12(
	.I(half_rate_phy_dq_o[12]),
	.T(half_rate_phy_dq_t[12]),
	.IO(ddram_dq[12]),
	.O(half_rate_phy_dq_i[12])
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
	.CLKDIV(sys2x_clk),
	.D1(slice_proxy52[13]),
	.D2(slice_proxy53[13]),
	.D3(slice_proxy54[13]),
	.D4(slice_proxy55[13]),
	.IOCE(half_rate_phy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(half_rate_phy_drive_dq_n1),
	.T2(half_rate_phy_drive_dq_n1),
	.T3(half_rate_phy_drive_dq_n1),
	.T4(half_rate_phy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(half_rate_phy_dq_o[13]),
	.TQ(half_rate_phy_dq_t[13])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_13 (
	.BITSLIP(half_rate_phy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys2x_clk),
	.D(half_rate_phy_dq_i[13]),
	.IOCE(half_rate_phy_clk4x_rd_strb),
	.RST(sys2x_rst),
	.Q1(half_rate_phy_record0_rddata[29]),
	.Q2(half_rate_phy_record0_rddata[13]),
	.Q3(half_rate_phy_record1_rddata[29]),
	.Q4(half_rate_phy_record1_rddata[13])
);

IOBUF IOBUF_13(
	.I(half_rate_phy_dq_o[13]),
	.T(half_rate_phy_dq_t[13]),
	.IO(ddram_dq[13]),
	.O(half_rate_phy_dq_i[13])
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
	.CLKDIV(sys2x_clk),
	.D1(slice_proxy56[14]),
	.D2(slice_proxy57[14]),
	.D3(slice_proxy58[14]),
	.D4(slice_proxy59[14]),
	.IOCE(half_rate_phy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(half_rate_phy_drive_dq_n1),
	.T2(half_rate_phy_drive_dq_n1),
	.T3(half_rate_phy_drive_dq_n1),
	.T4(half_rate_phy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(half_rate_phy_dq_o[14]),
	.TQ(half_rate_phy_dq_t[14])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_14 (
	.BITSLIP(half_rate_phy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys2x_clk),
	.D(half_rate_phy_dq_i[14]),
	.IOCE(half_rate_phy_clk4x_rd_strb),
	.RST(sys2x_rst),
	.Q1(half_rate_phy_record0_rddata[30]),
	.Q2(half_rate_phy_record0_rddata[14]),
	.Q3(half_rate_phy_record1_rddata[30]),
	.Q4(half_rate_phy_record1_rddata[14])
);

IOBUF IOBUF_14(
	.I(half_rate_phy_dq_o[14]),
	.T(half_rate_phy_dq_t[14]),
	.IO(ddram_dq[14]),
	.O(half_rate_phy_dq_i[14])
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
	.CLKDIV(sys2x_clk),
	.D1(slice_proxy60[15]),
	.D2(slice_proxy61[15]),
	.D3(slice_proxy62[15]),
	.D4(slice_proxy63[15]),
	.IOCE(half_rate_phy_clk4x_wr_strb),
	.OCE(1'd1),
	.RST(1'd0),
	.SHIFTIN1(1'd0),
	.SHIFTIN2(1'd0),
	.SHIFTIN3(1'd0),
	.SHIFTIN4(1'd0),
	.T1(half_rate_phy_drive_dq_n1),
	.T2(half_rate_phy_drive_dq_n1),
	.T3(half_rate_phy_drive_dq_n1),
	.T4(half_rate_phy_drive_dq_n1),
	.TCE(1'd1),
	.TRAIN(1'd0),
	.OQ(half_rate_phy_dq_o[15]),
	.TQ(half_rate_phy_dq_t[15])
);

ISERDES2 #(
	.BITSLIP_ENABLE("TRUE"),
	.DATA_RATE("SDR"),
	.DATA_WIDTH(3'd4),
	.INTERFACE_TYPE("RETIMED"),
	.SERDES_MODE("NONE")
) ISERDES2_15 (
	.BITSLIP(half_rate_phy_bitslip_inc),
	.CE0(1'd1),
	.CLK0(sdram_full_rd_clk),
	.CLK1(1'd0),
	.CLKDIV(sys2x_clk),
	.D(half_rate_phy_dq_i[15]),
	.IOCE(half_rate_phy_clk4x_rd_strb),
	.RST(sys2x_rst),
	.Q1(half_rate_phy_record0_rddata[31]),
	.Q2(half_rate_phy_record0_rddata[15]),
	.Q3(half_rate_phy_record1_rddata[31]),
	.Q4(half_rate_phy_record1_rddata[15])
);

IOBUF IOBUF_15(
	.I(half_rate_phy_dq_o[15]),
	.T(half_rate_phy_dq_t[15]),
	.IO(ddram_dq[15]),
	.O(half_rate_phy_dq_i[15])
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
	.CLKDIV(sys2x_clk),
	.D1(slice_proxy64[0]),
	.D2(slice_proxy65[0]),
	.D3(slice_proxy66[0]),
	.D4(slice_proxy67[0]),
	.IOCE(half_rate_phy_clk4x_wr_strb),
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
	.CLKDIV(sys2x_clk),
	.D1(slice_proxy68[1]),
	.D2(slice_proxy69[1]),
	.D3(slice_proxy70[1]),
	.D4(slice_proxy71[1]),
	.IOCE(half_rate_phy_clk4x_wr_strb),
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

reg [22:0] storage_2[0:7];
reg [2:0] memadr_4;
always @(posedge sys_clk) begin
	if (controllerinjector_bankmachine0_wrport_we)
		storage_2[controllerinjector_bankmachine0_wrport_adr] <= controllerinjector_bankmachine0_wrport_dat_w;
	memadr_4 <= controllerinjector_bankmachine0_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign controllerinjector_bankmachine0_wrport_dat_r = storage_2[memadr_4];
assign controllerinjector_bankmachine0_rdport_dat_r = storage_2[controllerinjector_bankmachine0_rdport_adr];

reg [22:0] storage_3[0:7];
reg [2:0] memadr_5;
always @(posedge sys_clk) begin
	if (controllerinjector_bankmachine1_wrport_we)
		storage_3[controllerinjector_bankmachine1_wrport_adr] <= controllerinjector_bankmachine1_wrport_dat_w;
	memadr_5 <= controllerinjector_bankmachine1_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign controllerinjector_bankmachine1_wrport_dat_r = storage_3[memadr_5];
assign controllerinjector_bankmachine1_rdport_dat_r = storage_3[controllerinjector_bankmachine1_rdport_adr];

reg [22:0] storage_4[0:7];
reg [2:0] memadr_6;
always @(posedge sys_clk) begin
	if (controllerinjector_bankmachine2_wrport_we)
		storage_4[controllerinjector_bankmachine2_wrport_adr] <= controllerinjector_bankmachine2_wrport_dat_w;
	memadr_6 <= controllerinjector_bankmachine2_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign controllerinjector_bankmachine2_wrport_dat_r = storage_4[memadr_6];
assign controllerinjector_bankmachine2_rdport_dat_r = storage_4[controllerinjector_bankmachine2_rdport_adr];

reg [22:0] storage_5[0:7];
reg [2:0] memadr_7;
always @(posedge sys_clk) begin
	if (controllerinjector_bankmachine3_wrport_we)
		storage_5[controllerinjector_bankmachine3_wrport_adr] <= controllerinjector_bankmachine3_wrport_dat_w;
	memadr_7 <= controllerinjector_bankmachine3_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign controllerinjector_bankmachine3_wrport_dat_r = storage_5[memadr_7];
assign controllerinjector_bankmachine3_rdport_dat_r = storage_5[controllerinjector_bankmachine3_rdport_adr];

reg [22:0] storage_6[0:7];
reg [2:0] memadr_8;
always @(posedge sys_clk) begin
	if (controllerinjector_bankmachine4_wrport_we)
		storage_6[controllerinjector_bankmachine4_wrport_adr] <= controllerinjector_bankmachine4_wrport_dat_w;
	memadr_8 <= controllerinjector_bankmachine4_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign controllerinjector_bankmachine4_wrport_dat_r = storage_6[memadr_8];
assign controllerinjector_bankmachine4_rdport_dat_r = storage_6[controllerinjector_bankmachine4_rdport_adr];

reg [22:0] storage_7[0:7];
reg [2:0] memadr_9;
always @(posedge sys_clk) begin
	if (controllerinjector_bankmachine5_wrport_we)
		storage_7[controllerinjector_bankmachine5_wrport_adr] <= controllerinjector_bankmachine5_wrport_dat_w;
	memadr_9 <= controllerinjector_bankmachine5_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign controllerinjector_bankmachine5_wrport_dat_r = storage_7[memadr_9];
assign controllerinjector_bankmachine5_rdport_dat_r = storage_7[controllerinjector_bankmachine5_rdport_adr];

reg [22:0] storage_8[0:7];
reg [2:0] memadr_10;
always @(posedge sys_clk) begin
	if (controllerinjector_bankmachine6_wrport_we)
		storage_8[controllerinjector_bankmachine6_wrport_adr] <= controllerinjector_bankmachine6_wrport_dat_w;
	memadr_10 <= controllerinjector_bankmachine6_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign controllerinjector_bankmachine6_wrport_dat_r = storage_8[memadr_10];
assign controllerinjector_bankmachine6_rdport_dat_r = storage_8[controllerinjector_bankmachine6_rdport_adr];

reg [22:0] storage_9[0:7];
reg [2:0] memadr_11;
always @(posedge sys_clk) begin
	if (controllerinjector_bankmachine7_wrport_we)
		storage_9[controllerinjector_bankmachine7_wrport_adr] <= controllerinjector_bankmachine7_wrport_dat_w;
	memadr_11 <= controllerinjector_bankmachine7_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign controllerinjector_bankmachine7_wrport_dat_r = storage_9[memadr_11];
assign controllerinjector_bankmachine7_rdport_dat_r = storage_9[controllerinjector_bankmachine7_rdport_adr];

reg [127:0] data_mem[0:511];
reg [8:0] memadr_12;
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
	if (data_port_we[8])
		data_mem[data_port_adr][71:64] <= data_port_dat_w[71:64];
	if (data_port_we[9])
		data_mem[data_port_adr][79:72] <= data_port_dat_w[79:72];
	if (data_port_we[10])
		data_mem[data_port_adr][87:80] <= data_port_dat_w[87:80];
	if (data_port_we[11])
		data_mem[data_port_adr][95:88] <= data_port_dat_w[95:88];
	if (data_port_we[12])
		data_mem[data_port_adr][103:96] <= data_port_dat_w[103:96];
	if (data_port_we[13])
		data_mem[data_port_adr][111:104] <= data_port_dat_w[111:104];
	if (data_port_we[14])
		data_mem[data_port_adr][119:112] <= data_port_dat_w[119:112];
	if (data_port_we[15])
		data_mem[data_port_adr][127:120] <= data_port_dat_w[127:120];
	memadr_12 <= data_port_adr;
end

assign data_port_dat_r = data_mem[memadr_12];

reg [23:0] tag_mem[0:511];
reg [8:0] memadr_13;
always @(posedge sys_clk) begin
	if (tag_port_we)
		tag_mem[tag_port_adr] <= tag_port_dat_w;
	memadr_13 <= tag_port_adr;
end

assign tag_port_dat_r = tag_mem[memadr_13];

rgmii_if rgmii_if(
	.rgmii_rx_ctl(eth_rx_ctl),
	.rgmii_rxc(eth_clocks_rx),
	.rgmii_rxd(eth_rx_data),
	.rx_reset(ethphy_crg_storage),
	.tx_clk(eth_tx_clk),
	.tx_en_from_mac(ethphy_tx_valid),
	.tx_er_from_mac(1'd0),
	.tx_reset(ethphy_crg_storage),
	.txd_from_mac(ethphy_tx_data),
	.rgmii_tx_ctl(eth_tx_ctl),
	.rgmii_txc(eth_clocks_tx),
	.rgmii_txd(eth_tx_data),
	.rx_clk(eth_rx_clk),
	.rx_dv_to_mac(ethphy_rx_dv),
	.rxd_to_mac(ethphy_rxd)
);

assign eth_mdio = ethphy_mdio_data_oe ? ethphy_mdio_data_w : 1'bz;
assign ethphy_mdio_data_r = eth_mdio;

reg [10:0] storage_10[0:4];
reg [2:0] memadr_14;
always @(posedge eth_rx_clk) begin
	if (ethmac_crc32_checker_syncfifo_wrport_we)
		storage_10[ethmac_crc32_checker_syncfifo_wrport_adr] <= ethmac_crc32_checker_syncfifo_wrport_dat_w;
	memadr_14 <= ethmac_crc32_checker_syncfifo_wrport_adr;
end

always @(posedge eth_rx_clk) begin
end

assign ethmac_crc32_checker_syncfifo_wrport_dat_r = storage_10[memadr_14];
assign ethmac_crc32_checker_syncfifo_rdport_dat_r = storage_10[ethmac_crc32_checker_syncfifo_rdport_adr];

reg [40:0] storage_11[0:63];
reg [5:0] memadr_15;
reg [5:0] memadr_16;
always @(posedge sys_clk) begin
	if (ethmac_tx_cdc_wrport_we)
		storage_11[ethmac_tx_cdc_wrport_adr] <= ethmac_tx_cdc_wrport_dat_w;
	memadr_15 <= ethmac_tx_cdc_wrport_adr;
end

always @(posedge eth_tx_clk) begin
	memadr_16 <= ethmac_tx_cdc_rdport_adr;
end

assign ethmac_tx_cdc_wrport_dat_r = storage_11[memadr_15];
assign ethmac_tx_cdc_rdport_dat_r = storage_11[memadr_16];

reg [40:0] storage_12[0:63];
reg [5:0] memadr_17;
reg [5:0] memadr_18;
always @(posedge eth_rx_clk) begin
	if (ethmac_rx_cdc_wrport_we)
		storage_12[ethmac_rx_cdc_wrport_adr] <= ethmac_rx_cdc_wrport_dat_w;
	memadr_17 <= ethmac_rx_cdc_wrport_adr;
end

always @(posedge sys_clk) begin
	memadr_18 <= ethmac_rx_cdc_rdport_adr;
end

assign ethmac_rx_cdc_wrport_dat_r = storage_12[memadr_17];
assign ethmac_rx_cdc_rdport_dat_r = storage_12[memadr_18];

reg [33:0] storage_13[0:1];
reg [0:0] memadr_19;
always @(posedge sys_clk) begin
	if (ethmac_writer_fifo_wrport_we)
		storage_13[ethmac_writer_fifo_wrport_adr] <= ethmac_writer_fifo_wrport_dat_w;
	memadr_19 <= ethmac_writer_fifo_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign ethmac_writer_fifo_wrport_dat_r = storage_13[memadr_19];
assign ethmac_writer_fifo_rdport_dat_r = storage_13[ethmac_writer_fifo_rdport_adr];

reg [31:0] mem_2[0:511];
reg [8:0] memadr_20;
reg [8:0] memadr_21;
always @(posedge sys_clk) begin
	if (ethmac_writer_memory0_we)
		mem_2[ethmac_writer_memory0_adr] <= ethmac_writer_memory0_dat_w;
	memadr_20 <= ethmac_writer_memory0_adr;
end

always @(posedge sys_clk) begin
	memadr_21 <= ethmac_sram0_adr0;
end

assign ethmac_writer_memory0_dat_r = mem_2[memadr_20];
assign ethmac_sram0_dat_r0 = mem_2[memadr_21];

reg [31:0] mem_3[0:511];
reg [8:0] memadr_22;
reg [8:0] memadr_23;
always @(posedge sys_clk) begin
	if (ethmac_writer_memory1_we)
		mem_3[ethmac_writer_memory1_adr] <= ethmac_writer_memory1_dat_w;
	memadr_22 <= ethmac_writer_memory1_adr;
end

always @(posedge sys_clk) begin
	memadr_23 <= ethmac_sram1_adr0;
end

assign ethmac_writer_memory1_dat_r = mem_3[memadr_22];
assign ethmac_sram1_dat_r0 = mem_3[memadr_23];

reg [12:0] storage_14[0:1];
reg [0:0] memadr_24;
always @(posedge sys_clk) begin
	if (ethmac_reader_fifo_wrport_we)
		storage_14[ethmac_reader_fifo_wrport_adr] <= ethmac_reader_fifo_wrport_dat_w;
	memadr_24 <= ethmac_reader_fifo_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign ethmac_reader_fifo_wrport_dat_r = storage_14[memadr_24];
assign ethmac_reader_fifo_rdport_dat_r = storage_14[ethmac_reader_fifo_rdport_adr];

reg [32:0] storage_15[0:15];
reg [3:0] memadr_25;
always @(posedge sys_clk) begin
	if (generator_core_fifo_wrport_we)
		storage_15[generator_core_fifo_wrport_adr] <= generator_core_fifo_wrport_dat_w;
	memadr_25 <= generator_core_fifo_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign generator_core_fifo_wrport_dat_r = storage_15[memadr_25];
assign generator_core_fifo_rdport_dat_r = storage_15[generator_core_fifo_rdport_adr];

reg [4:0] storage_16[0:3];
reg [1:0] memadr_26;
always @(posedge sys_clk) begin
	if (litedramreadportupconverter_cmd_buffer_wrport_we)
		storage_16[litedramreadportupconverter_cmd_buffer_wrport_adr] <= litedramreadportupconverter_cmd_buffer_wrport_dat_w;
	memadr_26 <= litedramreadportupconverter_cmd_buffer_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign litedramreadportupconverter_cmd_buffer_wrport_dat_r = storage_16[memadr_26];
assign litedramreadportupconverter_cmd_buffer_rdport_dat_r = storage_16[litedramreadportupconverter_cmd_buffer_rdport_adr];

reg [32:0] storage_17[0:15];
reg [3:0] memadr_27;
always @(posedge sys_clk) begin
	if (checker_core_fifo_wrport_we)
		storage_17[checker_core_fifo_wrport_adr] <= checker_core_fifo_wrport_dat_w;
	memadr_27 <= checker_core_fifo_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign checker_core_fifo_wrport_dat_r = storage_17[memadr_27];
assign checker_core_fifo_rdport_dat_r = storage_17[checker_core_fifo_rdport_adr];

reg [92:0] storage_18[0:7];
reg [2:0] memadr_28;
reg [2:0] memadr_29;
always @(posedge sys_clk) begin
	if (frontend_asyncfifo_wrport_we)
		storage_18[frontend_asyncfifo_wrport_adr] <= frontend_asyncfifo_wrport_dat_w;
	memadr_28 <= frontend_asyncfifo_wrport_adr;
end

always @(posedge sys_clk) begin
	memadr_29 <= frontend_asyncfifo_rdport_adr;
end

assign frontend_asyncfifo_wrport_dat_r = storage_18[memadr_28];
assign frontend_asyncfifo_rdport_dat_r = storage_18[memadr_29];

reg [91:0] storage_19[0:1023];
reg [9:0] memadr_30;
reg [9:0] memadr_31;
always @(posedge sys_clk) begin
	if (storage_mem_wrport_we)
		storage_19[storage_mem_wrport_adr] <= storage_mem_wrport_dat_w;
	memadr_30 <= storage_mem_wrport_adr;
end

always @(posedge sys_clk) begin
	if (storage_mem_rdport_re)
		memadr_31 <= storage_mem_rdport_adr;
end

assign storage_mem_wrport_dat_r = storage_19[memadr_30];
assign storage_mem_rdport_dat_r = storage_19[memadr_31];

assign opsis_i2c_scl = opsisi2c_scl_oe ? opsisi2c_scl_o : 1'bz;
assign opsisi2c_scl_i = opsis_i2c_scl;

assign opsis_i2c_sda = opsisi2c_sda_oe ? opsisi2c_sda_o : 1'bz;
assign opsisi2c_sda_i = opsis_i2c_sda;

reg [7:0] mem_grain0[0:511];
reg [8:0] memadr_32;
reg [8:0] memadr_33;
always @(posedge sys_clk) begin
	memadr_32 <= ethmac_reader_memory0_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram0_we[0])
		mem_grain0[ethmac_sram0_adr1] <= ethmac_sram0_dat_w[7:0];
	memadr_33 <= ethmac_sram0_adr1;
end

assign ethmac_reader_memory0_dat_r[7:0] = mem_grain0[memadr_32];
assign ethmac_sram0_dat_r1[7:0] = mem_grain0[memadr_33];

reg [7:0] mem_grain1[0:511];
reg [8:0] memadr_34;
reg [8:0] memadr_35;
always @(posedge sys_clk) begin
	memadr_34 <= ethmac_reader_memory0_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram0_we[1])
		mem_grain1[ethmac_sram0_adr1] <= ethmac_sram0_dat_w[15:8];
	memadr_35 <= ethmac_sram0_adr1;
end

assign ethmac_reader_memory0_dat_r[15:8] = mem_grain1[memadr_34];
assign ethmac_sram0_dat_r1[15:8] = mem_grain1[memadr_35];

reg [7:0] mem_grain2[0:511];
reg [8:0] memadr_36;
reg [8:0] memadr_37;
always @(posedge sys_clk) begin
	memadr_36 <= ethmac_reader_memory0_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram0_we[2])
		mem_grain2[ethmac_sram0_adr1] <= ethmac_sram0_dat_w[23:16];
	memadr_37 <= ethmac_sram0_adr1;
end

assign ethmac_reader_memory0_dat_r[23:16] = mem_grain2[memadr_36];
assign ethmac_sram0_dat_r1[23:16] = mem_grain2[memadr_37];

reg [7:0] mem_grain3[0:511];
reg [8:0] memadr_38;
reg [8:0] memadr_39;
always @(posedge sys_clk) begin
	memadr_38 <= ethmac_reader_memory0_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram0_we[3])
		mem_grain3[ethmac_sram0_adr1] <= ethmac_sram0_dat_w[31:24];
	memadr_39 <= ethmac_sram0_adr1;
end

assign ethmac_reader_memory0_dat_r[31:24] = mem_grain3[memadr_38];
assign ethmac_sram0_dat_r1[31:24] = mem_grain3[memadr_39];

reg [7:0] mem_grain0_1[0:511];
reg [8:0] memadr_40;
reg [8:0] memadr_41;
always @(posedge sys_clk) begin
	memadr_40 <= ethmac_reader_memory1_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram1_we[0])
		mem_grain0_1[ethmac_sram1_adr1] <= ethmac_sram1_dat_w[7:0];
	memadr_41 <= ethmac_sram1_adr1;
end

assign ethmac_reader_memory1_dat_r[7:0] = mem_grain0_1[memadr_40];
assign ethmac_sram1_dat_r1[7:0] = mem_grain0_1[memadr_41];

reg [7:0] mem_grain1_1[0:511];
reg [8:0] memadr_42;
reg [8:0] memadr_43;
always @(posedge sys_clk) begin
	memadr_42 <= ethmac_reader_memory1_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram1_we[1])
		mem_grain1_1[ethmac_sram1_adr1] <= ethmac_sram1_dat_w[15:8];
	memadr_43 <= ethmac_sram1_adr1;
end

assign ethmac_reader_memory1_dat_r[15:8] = mem_grain1_1[memadr_42];
assign ethmac_sram1_dat_r1[15:8] = mem_grain1_1[memadr_43];

reg [7:0] mem_grain2_1[0:511];
reg [8:0] memadr_44;
reg [8:0] memadr_45;
always @(posedge sys_clk) begin
	memadr_44 <= ethmac_reader_memory1_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram1_we[2])
		mem_grain2_1[ethmac_sram1_adr1] <= ethmac_sram1_dat_w[23:16];
	memadr_45 <= ethmac_sram1_adr1;
end

assign ethmac_reader_memory1_dat_r[23:16] = mem_grain2_1[memadr_44];
assign ethmac_sram1_dat_r1[23:16] = mem_grain2_1[memadr_45];

reg [7:0] mem_grain3_1[0:511];
reg [8:0] memadr_46;
reg [8:0] memadr_47;
always @(posedge sys_clk) begin
	memadr_46 <= ethmac_reader_memory1_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram1_we[3])
		mem_grain3_1[ethmac_sram1_adr1] <= ethmac_sram1_dat_w[31:24];
	memadr_47 <= ethmac_sram1_adr1;
end

assign ethmac_reader_memory1_dat_r[31:24] = mem_grain3_1[memadr_46];
assign ethmac_sram1_dat_r1[31:24] = mem_grain3_1[memadr_47];

FDPE #(
	.INIT(1'd1)
) FDPE (
	.C(por_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(((~cpu_reset) | crg_reset)),
	.Q(rst10)
);

FDPE #(
	.INIT(1'd1)
) FDPE_1 (
	.C(por_clk),
	.CE(1'd1),
	.D(rst10),
	.PRE(((~cpu_reset) | crg_reset)),
	.Q(por_rst)
);

FDPE #(
	.INIT(1'd1)
) FDPE_2 (
	.C(sys_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(((~crg_pll_lckd) | (crg_por > 1'd0))),
	.Q(rst11)
);

FDPE #(
	.INIT(1'd1)
) FDPE_3 (
	.C(sys_clk),
	.CE(1'd1),
	.D(rst11),
	.PRE(((~crg_pll_lckd) | (crg_por > 1'd0))),
	.Q(sys_rst)
);

FDPE #(
	.INIT(1'd1)
) FDPE_4 (
	.C(sys2x_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(((~crg_pll_lckd) | (crg_por > 1'd0))),
	.Q(rst12)
);

FDPE #(
	.INIT(1'd1)
) FDPE_5 (
	.C(sys2x_clk),
	.CE(1'd1),
	.D(rst12),
	.PRE(((~crg_pll_lckd) | (crg_por > 1'd0))),
	.Q(sys2x_rst)
);

FDPE #(
	.INIT(1'd1)
) FDPE_6 (
	.C(base50_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE((sys_rst | (~crg_dcm_base50_locked))),
	.Q(rst13)
);

FDPE #(
	.INIT(1'd1)
) FDPE_7 (
	.C(base50_clk),
	.CE(1'd1),
	.D(rst13),
	.PRE((sys_rst | (~crg_dcm_base50_locked))),
	.Q(base50_rst)
);

FDPE #(
	.INIT(1'd1)
) FDPE_8 (
	.C(encoder_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(sys_rst),
	.Q(rst14)
);

FDPE #(
	.INIT(1'd1)
) FDPE_9 (
	.C(encoder_clk),
	.CE(1'd1),
	.D(rst14),
	.PRE(sys_rst),
	.Q(encoder_rst)
);

FDPE #(
	.INIT(1'd1)
) FDPE_10 (
	.C(eth_tx_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(ethphy_crg_storage),
	.Q(rst15)
);

FDPE #(
	.INIT(1'd1)
) FDPE_11 (
	.C(eth_tx_clk),
	.CE(1'd1),
	.D(rst15),
	.PRE(ethphy_crg_storage),
	.Q(eth_tx_rst)
);

FDPE #(
	.INIT(1'd1)
) FDPE_12 (
	.C(eth_rx_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(ethphy_crg_storage),
	.Q(rst16)
);

FDPE #(
	.INIT(1'd1)
) FDPE_13 (
	.C(eth_rx_clk),
	.CE(1'd1),
	.D(rst16),
	.PRE(ethphy_crg_storage),
	.Q(eth_rx_rst)
);

endmodule
