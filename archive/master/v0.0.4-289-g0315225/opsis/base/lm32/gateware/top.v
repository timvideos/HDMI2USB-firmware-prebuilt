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
	output reg spiflash4x_cs_n,
	output reg spiflash4x_clk,
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
	output reg ddram_reset_n
);

wire basesoc_ctrl_reset_reset_re;
wire basesoc_ctrl_reset_reset_r;
reg basesoc_ctrl_reset_reset_w = 1'd0;
reg [31:0] basesoc_ctrl_storage_full = 32'd305419896;
wire [31:0] basesoc_ctrl_storage;
reg basesoc_ctrl_re = 1'd0;
wire [31:0] basesoc_ctrl_bus_errors_status;
wire basesoc_ctrl_reset;
wire basesoc_ctrl_bus_error;
reg [31:0] basesoc_ctrl_bus_errors = 32'd0;
wire basesoc_lm32_reset;
wire [29:0] basesoc_lm32_ibus_adr;
wire [31:0] basesoc_lm32_ibus_dat_w;
wire [31:0] basesoc_lm32_ibus_dat_r;
wire [3:0] basesoc_lm32_ibus_sel;
wire basesoc_lm32_ibus_cyc;
wire basesoc_lm32_ibus_stb;
wire basesoc_lm32_ibus_ack;
wire basesoc_lm32_ibus_we;
wire [2:0] basesoc_lm32_ibus_cti;
wire [1:0] basesoc_lm32_ibus_bte;
wire basesoc_lm32_ibus_err;
wire [29:0] basesoc_lm32_dbus_adr;
wire [31:0] basesoc_lm32_dbus_dat_w;
wire [31:0] basesoc_lm32_dbus_dat_r;
wire [3:0] basesoc_lm32_dbus_sel;
wire basesoc_lm32_dbus_cyc;
wire basesoc_lm32_dbus_stb;
wire basesoc_lm32_dbus_ack;
wire basesoc_lm32_dbus_we;
wire [2:0] basesoc_lm32_dbus_cti;
wire [1:0] basesoc_lm32_dbus_bte;
wire basesoc_lm32_dbus_err;
reg [31:0] basesoc_lm32_interrupt = 32'd0;
wire [31:0] basesoc_lm32_i_adr_o;
wire [31:0] basesoc_lm32_d_adr_o;
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
wire [29:0] basesoc_sram_bus_adr0;
wire [31:0] basesoc_sram_bus_dat_w0;
wire [31:0] basesoc_sram_bus_dat_r0;
wire [3:0] basesoc_sram_bus_sel;
wire basesoc_sram_bus_cyc;
wire basesoc_sram_bus_stb;
reg basesoc_sram_bus_ack = 1'd0;
wire basesoc_sram_bus_we0;
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
reg [31:0] basesoc_load_storage_full = 32'd0;
wire [31:0] basesoc_load_storage;
reg basesoc_load_re = 1'd0;
reg [31:0] basesoc_reload_storage_full = 32'd0;
wire [31:0] basesoc_reload_storage;
reg basesoc_reload_re = 1'd0;
reg basesoc_en_storage_full = 1'd0;
wire basesoc_en_storage;
reg basesoc_en_re = 1'd0;
wire basesoc_update_value_re;
wire basesoc_update_value_r;
reg basesoc_update_value_w = 1'd0;
reg [31:0] basesoc_value_status = 32'd0;
wire basesoc_irq;
wire basesoc_zero_status;
reg basesoc_zero_pending = 1'd0;
wire basesoc_zero_trigger;
reg basesoc_zero_clear = 1'd0;
reg basesoc_zero_old_trigger = 1'd0;
wire basesoc_eventmanager_status_re;
wire basesoc_eventmanager_status_r;
wire basesoc_eventmanager_status_w;
wire basesoc_eventmanager_pending_re;
wire basesoc_eventmanager_pending_r;
wire basesoc_eventmanager_pending_w;
reg basesoc_eventmanager_storage_full = 1'd0;
wire basesoc_eventmanager_storage;
reg basesoc_eventmanager_re = 1'd0;
reg [31:0] basesoc_value = 32'd0;
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
wire phy_sink_first;
wire phy_sink_last;
wire [7:0] phy_sink_payload_data;
reg phy_uart_clk_txen = 1'd0;
reg [31:0] phy_phase_accumulator_tx = 32'd0;
reg [7:0] phy_tx_reg = 8'd0;
reg [3:0] phy_tx_bitcount = 4'd0;
reg phy_tx_busy = 1'd0;
reg phy_source_valid = 1'd0;
wire phy_source_ready;
reg phy_source_first = 1'd0;
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
reg uart_tx_fifo_sink_first = 1'd0;
reg uart_tx_fifo_sink_last = 1'd0;
wire [7:0] uart_tx_fifo_sink_payload_data;
wire uart_tx_fifo_source_valid;
wire uart_tx_fifo_source_ready;
wire uart_tx_fifo_source_first;
wire uart_tx_fifo_source_last;
wire [7:0] uart_tx_fifo_source_payload_data;
wire uart_tx_fifo_syncfifo_we;
wire uart_tx_fifo_syncfifo_writable;
wire uart_tx_fifo_syncfifo_re;
wire uart_tx_fifo_syncfifo_readable;
wire [9:0] uart_tx_fifo_syncfifo_din;
wire [9:0] uart_tx_fifo_syncfifo_dout;
reg [4:0] uart_tx_fifo_level = 5'd0;
reg uart_tx_fifo_replace = 1'd0;
reg [3:0] uart_tx_fifo_produce = 4'd0;
reg [3:0] uart_tx_fifo_consume = 4'd0;
reg [3:0] uart_tx_fifo_wrport_adr = 4'd0;
wire [9:0] uart_tx_fifo_wrport_dat_r;
wire uart_tx_fifo_wrport_we;
wire [9:0] uart_tx_fifo_wrport_dat_w;
wire uart_tx_fifo_do_read;
wire [3:0] uart_tx_fifo_rdport_adr;
wire [9:0] uart_tx_fifo_rdport_dat_r;
wire [7:0] uart_tx_fifo_fifo_in_payload_data;
wire uart_tx_fifo_fifo_in_first;
wire uart_tx_fifo_fifo_in_last;
wire [7:0] uart_tx_fifo_fifo_out_payload_data;
wire uart_tx_fifo_fifo_out_first;
wire uart_tx_fifo_fifo_out_last;
wire uart_rx_fifo_sink_valid;
wire uart_rx_fifo_sink_ready;
wire uart_rx_fifo_sink_first;
wire uart_rx_fifo_sink_last;
wire [7:0] uart_rx_fifo_sink_payload_data;
wire uart_rx_fifo_source_valid;
wire uart_rx_fifo_source_ready;
wire uart_rx_fifo_source_first;
wire uart_rx_fifo_source_last;
wire [7:0] uart_rx_fifo_source_payload_data;
wire uart_rx_fifo_syncfifo_we;
wire uart_rx_fifo_syncfifo_writable;
wire uart_rx_fifo_syncfifo_re;
wire uart_rx_fifo_syncfifo_readable;
wire [9:0] uart_rx_fifo_syncfifo_din;
wire [9:0] uart_rx_fifo_syncfifo_dout;
reg [4:0] uart_rx_fifo_level = 5'd0;
reg uart_rx_fifo_replace = 1'd0;
reg [3:0] uart_rx_fifo_produce = 4'd0;
reg [3:0] uart_rx_fifo_consume = 4'd0;
reg [3:0] uart_rx_fifo_wrport_adr = 4'd0;
wire [9:0] uart_rx_fifo_wrport_dat_r;
wire uart_rx_fifo_wrport_we;
wire [9:0] uart_rx_fifo_wrport_dat_w;
wire uart_rx_fifo_do_read;
wire [3:0] uart_rx_fifo_rdport_adr;
wire [9:0] uart_rx_fifo_rdport_dat_r;
wire [7:0] uart_rx_fifo_fifo_in_payload_data;
wire uart_rx_fifo_fifo_in_first;
wire uart_rx_fifo_fifo_in_last;
wire [7:0] uart_rx_fifo_fifo_out_payload_data;
wire uart_rx_fifo_fifo_out_first;
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
reg [3:0] spiflash_bitbang_storage_full = 4'd0;
wire [3:0] spiflash_bitbang_storage;
reg spiflash_bitbang_re = 1'd0;
reg spiflash_status = 1'd0;
reg spiflash_bitbang_en_storage_full = 1'd0;
wire spiflash_bitbang_en_storage;
reg spiflash_bitbang_en_re = 1'd0;
reg spiflash_cs_n = 1'd1;
reg spiflash_clk = 1'd0;
reg spiflash_dq_oe = 1'd0;
reg [3:0] spiflash_o = 4'd0;
reg spiflash_oe = 1'd0;
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
wire [13:0] sdram_inti_p0_address;
wire [2:0] sdram_inti_p0_bank;
reg sdram_inti_p0_cas_n = 1'd1;
reg sdram_inti_p0_cs_n = 1'd1;
reg sdram_inti_p0_ras_n = 1'd1;
reg sdram_inti_p0_we_n = 1'd1;
wire sdram_inti_p0_cke;
wire sdram_inti_p0_odt;
wire sdram_inti_p0_reset_n;
wire [31:0] sdram_inti_p0_wrdata;
wire sdram_inti_p0_wrdata_en;
wire [3:0] sdram_inti_p0_wrdata_mask;
wire sdram_inti_p0_rddata_en;
reg [31:0] sdram_inti_p0_rddata = 32'd0;
reg sdram_inti_p0_rddata_valid = 1'd0;
wire [13:0] sdram_inti_p1_address;
wire [2:0] sdram_inti_p1_bank;
reg sdram_inti_p1_cas_n = 1'd1;
reg sdram_inti_p1_cs_n = 1'd1;
reg sdram_inti_p1_ras_n = 1'd1;
reg sdram_inti_p1_we_n = 1'd1;
wire sdram_inti_p1_cke;
wire sdram_inti_p1_odt;
wire sdram_inti_p1_reset_n;
wire [31:0] sdram_inti_p1_wrdata;
wire sdram_inti_p1_wrdata_en;
wire [3:0] sdram_inti_p1_wrdata_mask;
wire sdram_inti_p1_rddata_en;
reg [31:0] sdram_inti_p1_rddata = 32'd0;
reg sdram_inti_p1_rddata_valid = 1'd0;
wire [13:0] sdram_inti_p2_address;
wire [2:0] sdram_inti_p2_bank;
reg sdram_inti_p2_cas_n = 1'd1;
reg sdram_inti_p2_cs_n = 1'd1;
reg sdram_inti_p2_ras_n = 1'd1;
reg sdram_inti_p2_we_n = 1'd1;
wire sdram_inti_p2_cke;
wire sdram_inti_p2_odt;
wire sdram_inti_p2_reset_n;
wire [31:0] sdram_inti_p2_wrdata;
wire sdram_inti_p2_wrdata_en;
wire [3:0] sdram_inti_p2_wrdata_mask;
wire sdram_inti_p2_rddata_en;
reg [31:0] sdram_inti_p2_rddata = 32'd0;
reg sdram_inti_p2_rddata_valid = 1'd0;
wire [13:0] sdram_inti_p3_address;
wire [2:0] sdram_inti_p3_bank;
reg sdram_inti_p3_cas_n = 1'd1;
reg sdram_inti_p3_cs_n = 1'd1;
reg sdram_inti_p3_ras_n = 1'd1;
reg sdram_inti_p3_we_n = 1'd1;
wire sdram_inti_p3_cke;
wire sdram_inti_p3_odt;
wire sdram_inti_p3_reset_n;
wire [31:0] sdram_inti_p3_wrdata;
wire sdram_inti_p3_wrdata_en;
wire [3:0] sdram_inti_p3_wrdata_mask;
wire sdram_inti_p3_rddata_en;
reg [31:0] sdram_inti_p3_rddata = 32'd0;
reg sdram_inti_p3_rddata_valid = 1'd0;
wire [13:0] sdram_slave_p0_address;
wire [2:0] sdram_slave_p0_bank;
wire sdram_slave_p0_cas_n;
wire sdram_slave_p0_cs_n;
wire sdram_slave_p0_ras_n;
wire sdram_slave_p0_we_n;
wire sdram_slave_p0_cke;
wire sdram_slave_p0_odt;
wire sdram_slave_p0_reset_n;
wire [31:0] sdram_slave_p0_wrdata;
wire sdram_slave_p0_wrdata_en;
wire [3:0] sdram_slave_p0_wrdata_mask;
wire sdram_slave_p0_rddata_en;
reg [31:0] sdram_slave_p0_rddata = 32'd0;
reg sdram_slave_p0_rddata_valid = 1'd0;
wire [13:0] sdram_slave_p1_address;
wire [2:0] sdram_slave_p1_bank;
wire sdram_slave_p1_cas_n;
wire sdram_slave_p1_cs_n;
wire sdram_slave_p1_ras_n;
wire sdram_slave_p1_we_n;
wire sdram_slave_p1_cke;
wire sdram_slave_p1_odt;
wire sdram_slave_p1_reset_n;
wire [31:0] sdram_slave_p1_wrdata;
wire sdram_slave_p1_wrdata_en;
wire [3:0] sdram_slave_p1_wrdata_mask;
wire sdram_slave_p1_rddata_en;
reg [31:0] sdram_slave_p1_rddata = 32'd0;
reg sdram_slave_p1_rddata_valid = 1'd0;
wire [13:0] sdram_slave_p2_address;
wire [2:0] sdram_slave_p2_bank;
wire sdram_slave_p2_cas_n;
wire sdram_slave_p2_cs_n;
wire sdram_slave_p2_ras_n;
wire sdram_slave_p2_we_n;
wire sdram_slave_p2_cke;
wire sdram_slave_p2_odt;
wire sdram_slave_p2_reset_n;
wire [31:0] sdram_slave_p2_wrdata;
wire sdram_slave_p2_wrdata_en;
wire [3:0] sdram_slave_p2_wrdata_mask;
wire sdram_slave_p2_rddata_en;
reg [31:0] sdram_slave_p2_rddata = 32'd0;
reg sdram_slave_p2_rddata_valid = 1'd0;
wire [13:0] sdram_slave_p3_address;
wire [2:0] sdram_slave_p3_bank;
wire sdram_slave_p3_cas_n;
wire sdram_slave_p3_cs_n;
wire sdram_slave_p3_ras_n;
wire sdram_slave_p3_we_n;
wire sdram_slave_p3_cke;
wire sdram_slave_p3_odt;
wire sdram_slave_p3_reset_n;
wire [31:0] sdram_slave_p3_wrdata;
wire sdram_slave_p3_wrdata_en;
wire [3:0] sdram_slave_p3_wrdata_mask;
wire sdram_slave_p3_rddata_en;
reg [31:0] sdram_slave_p3_rddata = 32'd0;
reg sdram_slave_p3_rddata_valid = 1'd0;
reg [13:0] sdram_master_p0_address = 14'd0;
reg [2:0] sdram_master_p0_bank = 3'd0;
reg sdram_master_p0_cas_n = 1'd1;
reg sdram_master_p0_cs_n = 1'd1;
reg sdram_master_p0_ras_n = 1'd1;
reg sdram_master_p0_we_n = 1'd1;
reg sdram_master_p0_cke = 1'd0;
reg sdram_master_p0_odt = 1'd0;
reg sdram_master_p0_reset_n = 1'd0;
reg [31:0] sdram_master_p0_wrdata = 32'd0;
reg sdram_master_p0_wrdata_en = 1'd0;
reg [3:0] sdram_master_p0_wrdata_mask = 4'd0;
reg sdram_master_p0_rddata_en = 1'd0;
wire [31:0] sdram_master_p0_rddata;
wire sdram_master_p0_rddata_valid;
reg [13:0] sdram_master_p1_address = 14'd0;
reg [2:0] sdram_master_p1_bank = 3'd0;
reg sdram_master_p1_cas_n = 1'd1;
reg sdram_master_p1_cs_n = 1'd1;
reg sdram_master_p1_ras_n = 1'd1;
reg sdram_master_p1_we_n = 1'd1;
reg sdram_master_p1_cke = 1'd0;
reg sdram_master_p1_odt = 1'd0;
reg sdram_master_p1_reset_n = 1'd0;
reg [31:0] sdram_master_p1_wrdata = 32'd0;
reg sdram_master_p1_wrdata_en = 1'd0;
reg [3:0] sdram_master_p1_wrdata_mask = 4'd0;
reg sdram_master_p1_rddata_en = 1'd0;
wire [31:0] sdram_master_p1_rddata;
wire sdram_master_p1_rddata_valid;
reg [13:0] sdram_master_p2_address = 14'd0;
reg [2:0] sdram_master_p2_bank = 3'd0;
reg sdram_master_p2_cas_n = 1'd1;
reg sdram_master_p2_cs_n = 1'd1;
reg sdram_master_p2_ras_n = 1'd1;
reg sdram_master_p2_we_n = 1'd1;
reg sdram_master_p2_cke = 1'd0;
reg sdram_master_p2_odt = 1'd0;
reg sdram_master_p2_reset_n = 1'd0;
reg [31:0] sdram_master_p2_wrdata = 32'd0;
reg sdram_master_p2_wrdata_en = 1'd0;
reg [3:0] sdram_master_p2_wrdata_mask = 4'd0;
reg sdram_master_p2_rddata_en = 1'd0;
wire [31:0] sdram_master_p2_rddata;
wire sdram_master_p2_rddata_valid;
reg [13:0] sdram_master_p3_address = 14'd0;
reg [2:0] sdram_master_p3_bank = 3'd0;
reg sdram_master_p3_cas_n = 1'd1;
reg sdram_master_p3_cs_n = 1'd1;
reg sdram_master_p3_ras_n = 1'd1;
reg sdram_master_p3_we_n = 1'd1;
reg sdram_master_p3_cke = 1'd0;
reg sdram_master_p3_odt = 1'd0;
reg sdram_master_p3_reset_n = 1'd0;
reg [31:0] sdram_master_p3_wrdata = 32'd0;
reg sdram_master_p3_wrdata_en = 1'd0;
reg [3:0] sdram_master_p3_wrdata_mask = 4'd0;
reg sdram_master_p3_rddata_en = 1'd0;
wire [31:0] sdram_master_p3_rddata;
wire sdram_master_p3_rddata_valid;
reg [3:0] sdram_storage_full = 4'd0;
wire [3:0] sdram_storage;
reg sdram_re = 1'd0;
reg [5:0] sdram_phaseinjector0_command_storage_full = 6'd0;
wire [5:0] sdram_phaseinjector0_command_storage;
reg sdram_phaseinjector0_command_re = 1'd0;
wire sdram_phaseinjector0_command_issue_re;
wire sdram_phaseinjector0_command_issue_r;
reg sdram_phaseinjector0_command_issue_w = 1'd0;
reg [13:0] sdram_phaseinjector0_address_storage_full = 14'd0;
wire [13:0] sdram_phaseinjector0_address_storage;
reg sdram_phaseinjector0_address_re = 1'd0;
reg [2:0] sdram_phaseinjector0_baddress_storage_full = 3'd0;
wire [2:0] sdram_phaseinjector0_baddress_storage;
reg sdram_phaseinjector0_baddress_re = 1'd0;
reg [31:0] sdram_phaseinjector0_wrdata_storage_full = 32'd0;
wire [31:0] sdram_phaseinjector0_wrdata_storage;
reg sdram_phaseinjector0_wrdata_re = 1'd0;
reg [31:0] sdram_phaseinjector0_status = 32'd0;
reg [5:0] sdram_phaseinjector1_command_storage_full = 6'd0;
wire [5:0] sdram_phaseinjector1_command_storage;
reg sdram_phaseinjector1_command_re = 1'd0;
wire sdram_phaseinjector1_command_issue_re;
wire sdram_phaseinjector1_command_issue_r;
reg sdram_phaseinjector1_command_issue_w = 1'd0;
reg [13:0] sdram_phaseinjector1_address_storage_full = 14'd0;
wire [13:0] sdram_phaseinjector1_address_storage;
reg sdram_phaseinjector1_address_re = 1'd0;
reg [2:0] sdram_phaseinjector1_baddress_storage_full = 3'd0;
wire [2:0] sdram_phaseinjector1_baddress_storage;
reg sdram_phaseinjector1_baddress_re = 1'd0;
reg [31:0] sdram_phaseinjector1_wrdata_storage_full = 32'd0;
wire [31:0] sdram_phaseinjector1_wrdata_storage;
reg sdram_phaseinjector1_wrdata_re = 1'd0;
reg [31:0] sdram_phaseinjector1_status = 32'd0;
reg [5:0] sdram_phaseinjector2_command_storage_full = 6'd0;
wire [5:0] sdram_phaseinjector2_command_storage;
reg sdram_phaseinjector2_command_re = 1'd0;
wire sdram_phaseinjector2_command_issue_re;
wire sdram_phaseinjector2_command_issue_r;
reg sdram_phaseinjector2_command_issue_w = 1'd0;
reg [13:0] sdram_phaseinjector2_address_storage_full = 14'd0;
wire [13:0] sdram_phaseinjector2_address_storage;
reg sdram_phaseinjector2_address_re = 1'd0;
reg [2:0] sdram_phaseinjector2_baddress_storage_full = 3'd0;
wire [2:0] sdram_phaseinjector2_baddress_storage;
reg sdram_phaseinjector2_baddress_re = 1'd0;
reg [31:0] sdram_phaseinjector2_wrdata_storage_full = 32'd0;
wire [31:0] sdram_phaseinjector2_wrdata_storage;
reg sdram_phaseinjector2_wrdata_re = 1'd0;
reg [31:0] sdram_phaseinjector2_status = 32'd0;
reg [5:0] sdram_phaseinjector3_command_storage_full = 6'd0;
wire [5:0] sdram_phaseinjector3_command_storage;
reg sdram_phaseinjector3_command_re = 1'd0;
wire sdram_phaseinjector3_command_issue_re;
wire sdram_phaseinjector3_command_issue_r;
reg sdram_phaseinjector3_command_issue_w = 1'd0;
reg [13:0] sdram_phaseinjector3_address_storage_full = 14'd0;
wire [13:0] sdram_phaseinjector3_address_storage;
reg sdram_phaseinjector3_address_re = 1'd0;
reg [2:0] sdram_phaseinjector3_baddress_storage_full = 3'd0;
wire [2:0] sdram_phaseinjector3_baddress_storage;
reg sdram_phaseinjector3_baddress_re = 1'd0;
reg [31:0] sdram_phaseinjector3_wrdata_storage_full = 32'd0;
wire [31:0] sdram_phaseinjector3_wrdata_storage;
reg sdram_phaseinjector3_wrdata_re = 1'd0;
reg [31:0] sdram_phaseinjector3_status = 32'd0;
reg [13:0] sdram_dfi_p0_address = 14'd0;
reg [2:0] sdram_dfi_p0_bank = 3'd0;
reg sdram_dfi_p0_cas_n = 1'd1;
wire sdram_dfi_p0_cs_n;
reg sdram_dfi_p0_ras_n = 1'd1;
reg sdram_dfi_p0_we_n = 1'd1;
wire sdram_dfi_p0_cke;
wire sdram_dfi_p0_odt;
wire sdram_dfi_p0_reset_n;
wire [31:0] sdram_dfi_p0_wrdata;
reg sdram_dfi_p0_wrdata_en = 1'd0;
wire [3:0] sdram_dfi_p0_wrdata_mask;
reg sdram_dfi_p0_rddata_en = 1'd0;
wire [31:0] sdram_dfi_p0_rddata;
wire sdram_dfi_p0_rddata_valid;
reg [13:0] sdram_dfi_p1_address = 14'd0;
reg [2:0] sdram_dfi_p1_bank = 3'd0;
reg sdram_dfi_p1_cas_n = 1'd1;
wire sdram_dfi_p1_cs_n;
reg sdram_dfi_p1_ras_n = 1'd1;
reg sdram_dfi_p1_we_n = 1'd1;
wire sdram_dfi_p1_cke;
wire sdram_dfi_p1_odt;
wire sdram_dfi_p1_reset_n;
wire [31:0] sdram_dfi_p1_wrdata;
reg sdram_dfi_p1_wrdata_en = 1'd0;
wire [3:0] sdram_dfi_p1_wrdata_mask;
reg sdram_dfi_p1_rddata_en = 1'd0;
wire [31:0] sdram_dfi_p1_rddata;
wire sdram_dfi_p1_rddata_valid;
reg [13:0] sdram_dfi_p2_address = 14'd0;
reg [2:0] sdram_dfi_p2_bank = 3'd0;
reg sdram_dfi_p2_cas_n = 1'd1;
wire sdram_dfi_p2_cs_n;
reg sdram_dfi_p2_ras_n = 1'd1;
reg sdram_dfi_p2_we_n = 1'd1;
wire sdram_dfi_p2_cke;
wire sdram_dfi_p2_odt;
wire sdram_dfi_p2_reset_n;
wire [31:0] sdram_dfi_p2_wrdata;
reg sdram_dfi_p2_wrdata_en = 1'd0;
wire [3:0] sdram_dfi_p2_wrdata_mask;
reg sdram_dfi_p2_rddata_en = 1'd0;
wire [31:0] sdram_dfi_p2_rddata;
wire sdram_dfi_p2_rddata_valid;
reg [13:0] sdram_dfi_p3_address = 14'd0;
reg [2:0] sdram_dfi_p3_bank = 3'd0;
reg sdram_dfi_p3_cas_n = 1'd1;
wire sdram_dfi_p3_cs_n;
reg sdram_dfi_p3_ras_n = 1'd1;
reg sdram_dfi_p3_we_n = 1'd1;
wire sdram_dfi_p3_cke;
wire sdram_dfi_p3_odt;
wire sdram_dfi_p3_reset_n;
wire [31:0] sdram_dfi_p3_wrdata;
reg sdram_dfi_p3_wrdata_en = 1'd0;
wire [3:0] sdram_dfi_p3_wrdata_mask;
reg sdram_dfi_p3_rddata_en = 1'd0;
wire [31:0] sdram_dfi_p3_rddata;
wire sdram_dfi_p3_rddata_valid;
wire sdram_interface_bank0_valid;
wire sdram_interface_bank0_ready;
wire sdram_interface_bank0_we;
wire [20:0] sdram_interface_bank0_adr;
wire sdram_interface_bank0_lock;
wire sdram_interface_bank0_wdata_ready;
wire sdram_interface_bank0_rdata_valid;
wire sdram_interface_bank1_valid;
wire sdram_interface_bank1_ready;
wire sdram_interface_bank1_we;
wire [20:0] sdram_interface_bank1_adr;
wire sdram_interface_bank1_lock;
wire sdram_interface_bank1_wdata_ready;
wire sdram_interface_bank1_rdata_valid;
wire sdram_interface_bank2_valid;
wire sdram_interface_bank2_ready;
wire sdram_interface_bank2_we;
wire [20:0] sdram_interface_bank2_adr;
wire sdram_interface_bank2_lock;
wire sdram_interface_bank2_wdata_ready;
wire sdram_interface_bank2_rdata_valid;
wire sdram_interface_bank3_valid;
wire sdram_interface_bank3_ready;
wire sdram_interface_bank3_we;
wire [20:0] sdram_interface_bank3_adr;
wire sdram_interface_bank3_lock;
wire sdram_interface_bank3_wdata_ready;
wire sdram_interface_bank3_rdata_valid;
wire sdram_interface_bank4_valid;
wire sdram_interface_bank4_ready;
wire sdram_interface_bank4_we;
wire [20:0] sdram_interface_bank4_adr;
wire sdram_interface_bank4_lock;
wire sdram_interface_bank4_wdata_ready;
wire sdram_interface_bank4_rdata_valid;
wire sdram_interface_bank5_valid;
wire sdram_interface_bank5_ready;
wire sdram_interface_bank5_we;
wire [20:0] sdram_interface_bank5_adr;
wire sdram_interface_bank5_lock;
wire sdram_interface_bank5_wdata_ready;
wire sdram_interface_bank5_rdata_valid;
wire sdram_interface_bank6_valid;
wire sdram_interface_bank6_ready;
wire sdram_interface_bank6_we;
wire [20:0] sdram_interface_bank6_adr;
wire sdram_interface_bank6_lock;
wire sdram_interface_bank6_wdata_ready;
wire sdram_interface_bank6_rdata_valid;
wire sdram_interface_bank7_valid;
wire sdram_interface_bank7_ready;
wire sdram_interface_bank7_we;
wire [20:0] sdram_interface_bank7_adr;
wire sdram_interface_bank7_lock;
wire sdram_interface_bank7_wdata_ready;
wire sdram_interface_bank7_rdata_valid;
reg [127:0] sdram_interface_wdata = 128'd0;
reg [15:0] sdram_interface_wdata_we = 16'd0;
wire [127:0] sdram_interface_rdata;
reg sdram_cmd_valid = 1'd0;
reg sdram_cmd_ready = 1'd0;
reg sdram_cmd_last = 1'd0;
reg [13:0] sdram_cmd_payload_a = 14'd0;
reg [2:0] sdram_cmd_payload_ba = 3'd0;
reg sdram_cmd_payload_cas = 1'd0;
reg sdram_cmd_payload_ras = 1'd0;
reg sdram_cmd_payload_we = 1'd0;
reg sdram_cmd_payload_is_read = 1'd0;
reg sdram_cmd_payload_is_write = 1'd0;
reg sdram_seq_start = 1'd0;
reg sdram_seq_done = 1'd0;
reg [3:0] sdram_counter = 4'd0;
wire sdram_wait;
wire sdram_done;
reg [8:0] sdram_count = 9'd391;
wire sdram_bankmachine0_req_valid;
wire sdram_bankmachine0_req_ready;
wire sdram_bankmachine0_req_we;
wire [20:0] sdram_bankmachine0_req_adr;
wire sdram_bankmachine0_req_lock;
reg sdram_bankmachine0_req_wdata_ready = 1'd0;
reg sdram_bankmachine0_req_rdata_valid = 1'd0;
wire sdram_bankmachine0_refresh_req;
reg sdram_bankmachine0_refresh_gnt = 1'd0;
wire sdram_bankmachine0_ras_allowed;
wire sdram_bankmachine0_cas_allowed;
reg sdram_bankmachine0_cmd_valid = 1'd0;
reg sdram_bankmachine0_cmd_ready = 1'd0;
reg [13:0] sdram_bankmachine0_cmd_payload_a = 14'd0;
wire [2:0] sdram_bankmachine0_cmd_payload_ba;
reg sdram_bankmachine0_cmd_payload_cas = 1'd0;
reg sdram_bankmachine0_cmd_payload_ras = 1'd0;
reg sdram_bankmachine0_cmd_payload_we = 1'd0;
reg sdram_bankmachine0_cmd_payload_is_cmd = 1'd0;
reg sdram_bankmachine0_cmd_payload_is_read = 1'd0;
reg sdram_bankmachine0_cmd_payload_is_write = 1'd0;
reg sdram_bankmachine0_auto_precharge = 1'd0;
wire sdram_bankmachine0_cmd_buffer_lookahead_sink_valid;
wire sdram_bankmachine0_cmd_buffer_lookahead_sink_ready;
reg sdram_bankmachine0_cmd_buffer_lookahead_sink_first = 1'd0;
reg sdram_bankmachine0_cmd_buffer_lookahead_sink_last = 1'd0;
wire sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_adr;
wire sdram_bankmachine0_cmd_buffer_lookahead_source_valid;
wire sdram_bankmachine0_cmd_buffer_lookahead_source_ready;
wire sdram_bankmachine0_cmd_buffer_lookahead_source_first;
wire sdram_bankmachine0_cmd_buffer_lookahead_source_last;
wire sdram_bankmachine0_cmd_buffer_lookahead_source_payload_we;
wire [20:0] sdram_bankmachine0_cmd_buffer_lookahead_source_payload_adr;
wire sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we;
wire sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable;
wire sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_re;
wire sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable;
wire [23:0] sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_din;
wire [23:0] sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_dout;
reg [3:0] sdram_bankmachine0_cmd_buffer_lookahead_level = 4'd0;
reg sdram_bankmachine0_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] sdram_bankmachine0_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] sdram_bankmachine0_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_r;
wire sdram_bankmachine0_cmd_buffer_lookahead_wrport_we;
wire [23:0] sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_w;
wire sdram_bankmachine0_cmd_buffer_lookahead_do_read;
wire [2:0] sdram_bankmachine0_cmd_buffer_lookahead_rdport_adr;
wire [23:0] sdram_bankmachine0_cmd_buffer_lookahead_rdport_dat_r;
wire sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_adr;
wire sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_first;
wire sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_last;
wire sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_adr;
wire sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_first;
wire sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_last;
wire sdram_bankmachine0_cmd_buffer_sink_valid;
wire sdram_bankmachine0_cmd_buffer_sink_ready;
wire sdram_bankmachine0_cmd_buffer_sink_first;
wire sdram_bankmachine0_cmd_buffer_sink_last;
wire sdram_bankmachine0_cmd_buffer_sink_payload_we;
wire [20:0] sdram_bankmachine0_cmd_buffer_sink_payload_adr;
wire sdram_bankmachine0_cmd_buffer_source_valid;
wire sdram_bankmachine0_cmd_buffer_source_ready;
wire sdram_bankmachine0_cmd_buffer_source_first;
wire sdram_bankmachine0_cmd_buffer_source_last;
reg sdram_bankmachine0_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] sdram_bankmachine0_cmd_buffer_source_payload_adr = 21'd0;
wire sdram_bankmachine0_cmd_buffer_pipe_ce;
wire sdram_bankmachine0_cmd_buffer_busy;
reg sdram_bankmachine0_cmd_buffer_valid_n = 1'd0;
reg sdram_bankmachine0_cmd_buffer_first_n = 1'd0;
reg sdram_bankmachine0_cmd_buffer_last_n = 1'd0;
reg sdram_bankmachine0_has_openrow = 1'd0;
reg [13:0] sdram_bankmachine0_openrow = 14'd0;
wire sdram_bankmachine0_hit;
reg sdram_bankmachine0_track_open = 1'd0;
reg sdram_bankmachine0_track_close = 1'd0;
reg sdram_bankmachine0_sel_row_adr = 1'd0;
wire sdram_bankmachine0_wait;
wire sdram_bankmachine0_done;
reg [2:0] sdram_bankmachine0_count = 3'd4;
wire sdram_bankmachine1_req_valid;
wire sdram_bankmachine1_req_ready;
wire sdram_bankmachine1_req_we;
wire [20:0] sdram_bankmachine1_req_adr;
wire sdram_bankmachine1_req_lock;
reg sdram_bankmachine1_req_wdata_ready = 1'd0;
reg sdram_bankmachine1_req_rdata_valid = 1'd0;
wire sdram_bankmachine1_refresh_req;
reg sdram_bankmachine1_refresh_gnt = 1'd0;
wire sdram_bankmachine1_ras_allowed;
wire sdram_bankmachine1_cas_allowed;
reg sdram_bankmachine1_cmd_valid = 1'd0;
reg sdram_bankmachine1_cmd_ready = 1'd0;
reg [13:0] sdram_bankmachine1_cmd_payload_a = 14'd0;
wire [2:0] sdram_bankmachine1_cmd_payload_ba;
reg sdram_bankmachine1_cmd_payload_cas = 1'd0;
reg sdram_bankmachine1_cmd_payload_ras = 1'd0;
reg sdram_bankmachine1_cmd_payload_we = 1'd0;
reg sdram_bankmachine1_cmd_payload_is_cmd = 1'd0;
reg sdram_bankmachine1_cmd_payload_is_read = 1'd0;
reg sdram_bankmachine1_cmd_payload_is_write = 1'd0;
reg sdram_bankmachine1_auto_precharge = 1'd0;
wire sdram_bankmachine1_cmd_buffer_lookahead_sink_valid;
wire sdram_bankmachine1_cmd_buffer_lookahead_sink_ready;
reg sdram_bankmachine1_cmd_buffer_lookahead_sink_first = 1'd0;
reg sdram_bankmachine1_cmd_buffer_lookahead_sink_last = 1'd0;
wire sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_adr;
wire sdram_bankmachine1_cmd_buffer_lookahead_source_valid;
wire sdram_bankmachine1_cmd_buffer_lookahead_source_ready;
wire sdram_bankmachine1_cmd_buffer_lookahead_source_first;
wire sdram_bankmachine1_cmd_buffer_lookahead_source_last;
wire sdram_bankmachine1_cmd_buffer_lookahead_source_payload_we;
wire [20:0] sdram_bankmachine1_cmd_buffer_lookahead_source_payload_adr;
wire sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we;
wire sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable;
wire sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_re;
wire sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable;
wire [23:0] sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_din;
wire [23:0] sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_dout;
reg [3:0] sdram_bankmachine1_cmd_buffer_lookahead_level = 4'd0;
reg sdram_bankmachine1_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] sdram_bankmachine1_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] sdram_bankmachine1_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_r;
wire sdram_bankmachine1_cmd_buffer_lookahead_wrport_we;
wire [23:0] sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_w;
wire sdram_bankmachine1_cmd_buffer_lookahead_do_read;
wire [2:0] sdram_bankmachine1_cmd_buffer_lookahead_rdport_adr;
wire [23:0] sdram_bankmachine1_cmd_buffer_lookahead_rdport_dat_r;
wire sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_adr;
wire sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_first;
wire sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_last;
wire sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_adr;
wire sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_first;
wire sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_last;
wire sdram_bankmachine1_cmd_buffer_sink_valid;
wire sdram_bankmachine1_cmd_buffer_sink_ready;
wire sdram_bankmachine1_cmd_buffer_sink_first;
wire sdram_bankmachine1_cmd_buffer_sink_last;
wire sdram_bankmachine1_cmd_buffer_sink_payload_we;
wire [20:0] sdram_bankmachine1_cmd_buffer_sink_payload_adr;
wire sdram_bankmachine1_cmd_buffer_source_valid;
wire sdram_bankmachine1_cmd_buffer_source_ready;
wire sdram_bankmachine1_cmd_buffer_source_first;
wire sdram_bankmachine1_cmd_buffer_source_last;
reg sdram_bankmachine1_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] sdram_bankmachine1_cmd_buffer_source_payload_adr = 21'd0;
wire sdram_bankmachine1_cmd_buffer_pipe_ce;
wire sdram_bankmachine1_cmd_buffer_busy;
reg sdram_bankmachine1_cmd_buffer_valid_n = 1'd0;
reg sdram_bankmachine1_cmd_buffer_first_n = 1'd0;
reg sdram_bankmachine1_cmd_buffer_last_n = 1'd0;
reg sdram_bankmachine1_has_openrow = 1'd0;
reg [13:0] sdram_bankmachine1_openrow = 14'd0;
wire sdram_bankmachine1_hit;
reg sdram_bankmachine1_track_open = 1'd0;
reg sdram_bankmachine1_track_close = 1'd0;
reg sdram_bankmachine1_sel_row_adr = 1'd0;
wire sdram_bankmachine1_wait;
wire sdram_bankmachine1_done;
reg [2:0] sdram_bankmachine1_count = 3'd4;
wire sdram_bankmachine2_req_valid;
wire sdram_bankmachine2_req_ready;
wire sdram_bankmachine2_req_we;
wire [20:0] sdram_bankmachine2_req_adr;
wire sdram_bankmachine2_req_lock;
reg sdram_bankmachine2_req_wdata_ready = 1'd0;
reg sdram_bankmachine2_req_rdata_valid = 1'd0;
wire sdram_bankmachine2_refresh_req;
reg sdram_bankmachine2_refresh_gnt = 1'd0;
wire sdram_bankmachine2_ras_allowed;
wire sdram_bankmachine2_cas_allowed;
reg sdram_bankmachine2_cmd_valid = 1'd0;
reg sdram_bankmachine2_cmd_ready = 1'd0;
reg [13:0] sdram_bankmachine2_cmd_payload_a = 14'd0;
wire [2:0] sdram_bankmachine2_cmd_payload_ba;
reg sdram_bankmachine2_cmd_payload_cas = 1'd0;
reg sdram_bankmachine2_cmd_payload_ras = 1'd0;
reg sdram_bankmachine2_cmd_payload_we = 1'd0;
reg sdram_bankmachine2_cmd_payload_is_cmd = 1'd0;
reg sdram_bankmachine2_cmd_payload_is_read = 1'd0;
reg sdram_bankmachine2_cmd_payload_is_write = 1'd0;
reg sdram_bankmachine2_auto_precharge = 1'd0;
wire sdram_bankmachine2_cmd_buffer_lookahead_sink_valid;
wire sdram_bankmachine2_cmd_buffer_lookahead_sink_ready;
reg sdram_bankmachine2_cmd_buffer_lookahead_sink_first = 1'd0;
reg sdram_bankmachine2_cmd_buffer_lookahead_sink_last = 1'd0;
wire sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_adr;
wire sdram_bankmachine2_cmd_buffer_lookahead_source_valid;
wire sdram_bankmachine2_cmd_buffer_lookahead_source_ready;
wire sdram_bankmachine2_cmd_buffer_lookahead_source_first;
wire sdram_bankmachine2_cmd_buffer_lookahead_source_last;
wire sdram_bankmachine2_cmd_buffer_lookahead_source_payload_we;
wire [20:0] sdram_bankmachine2_cmd_buffer_lookahead_source_payload_adr;
wire sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we;
wire sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable;
wire sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_re;
wire sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable;
wire [23:0] sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_din;
wire [23:0] sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_dout;
reg [3:0] sdram_bankmachine2_cmd_buffer_lookahead_level = 4'd0;
reg sdram_bankmachine2_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] sdram_bankmachine2_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] sdram_bankmachine2_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_r;
wire sdram_bankmachine2_cmd_buffer_lookahead_wrport_we;
wire [23:0] sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_w;
wire sdram_bankmachine2_cmd_buffer_lookahead_do_read;
wire [2:0] sdram_bankmachine2_cmd_buffer_lookahead_rdport_adr;
wire [23:0] sdram_bankmachine2_cmd_buffer_lookahead_rdport_dat_r;
wire sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_adr;
wire sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_first;
wire sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_last;
wire sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_adr;
wire sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_first;
wire sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_last;
wire sdram_bankmachine2_cmd_buffer_sink_valid;
wire sdram_bankmachine2_cmd_buffer_sink_ready;
wire sdram_bankmachine2_cmd_buffer_sink_first;
wire sdram_bankmachine2_cmd_buffer_sink_last;
wire sdram_bankmachine2_cmd_buffer_sink_payload_we;
wire [20:0] sdram_bankmachine2_cmd_buffer_sink_payload_adr;
wire sdram_bankmachine2_cmd_buffer_source_valid;
wire sdram_bankmachine2_cmd_buffer_source_ready;
wire sdram_bankmachine2_cmd_buffer_source_first;
wire sdram_bankmachine2_cmd_buffer_source_last;
reg sdram_bankmachine2_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] sdram_bankmachine2_cmd_buffer_source_payload_adr = 21'd0;
wire sdram_bankmachine2_cmd_buffer_pipe_ce;
wire sdram_bankmachine2_cmd_buffer_busy;
reg sdram_bankmachine2_cmd_buffer_valid_n = 1'd0;
reg sdram_bankmachine2_cmd_buffer_first_n = 1'd0;
reg sdram_bankmachine2_cmd_buffer_last_n = 1'd0;
reg sdram_bankmachine2_has_openrow = 1'd0;
reg [13:0] sdram_bankmachine2_openrow = 14'd0;
wire sdram_bankmachine2_hit;
reg sdram_bankmachine2_track_open = 1'd0;
reg sdram_bankmachine2_track_close = 1'd0;
reg sdram_bankmachine2_sel_row_adr = 1'd0;
wire sdram_bankmachine2_wait;
wire sdram_bankmachine2_done;
reg [2:0] sdram_bankmachine2_count = 3'd4;
wire sdram_bankmachine3_req_valid;
wire sdram_bankmachine3_req_ready;
wire sdram_bankmachine3_req_we;
wire [20:0] sdram_bankmachine3_req_adr;
wire sdram_bankmachine3_req_lock;
reg sdram_bankmachine3_req_wdata_ready = 1'd0;
reg sdram_bankmachine3_req_rdata_valid = 1'd0;
wire sdram_bankmachine3_refresh_req;
reg sdram_bankmachine3_refresh_gnt = 1'd0;
wire sdram_bankmachine3_ras_allowed;
wire sdram_bankmachine3_cas_allowed;
reg sdram_bankmachine3_cmd_valid = 1'd0;
reg sdram_bankmachine3_cmd_ready = 1'd0;
reg [13:0] sdram_bankmachine3_cmd_payload_a = 14'd0;
wire [2:0] sdram_bankmachine3_cmd_payload_ba;
reg sdram_bankmachine3_cmd_payload_cas = 1'd0;
reg sdram_bankmachine3_cmd_payload_ras = 1'd0;
reg sdram_bankmachine3_cmd_payload_we = 1'd0;
reg sdram_bankmachine3_cmd_payload_is_cmd = 1'd0;
reg sdram_bankmachine3_cmd_payload_is_read = 1'd0;
reg sdram_bankmachine3_cmd_payload_is_write = 1'd0;
reg sdram_bankmachine3_auto_precharge = 1'd0;
wire sdram_bankmachine3_cmd_buffer_lookahead_sink_valid;
wire sdram_bankmachine3_cmd_buffer_lookahead_sink_ready;
reg sdram_bankmachine3_cmd_buffer_lookahead_sink_first = 1'd0;
reg sdram_bankmachine3_cmd_buffer_lookahead_sink_last = 1'd0;
wire sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_adr;
wire sdram_bankmachine3_cmd_buffer_lookahead_source_valid;
wire sdram_bankmachine3_cmd_buffer_lookahead_source_ready;
wire sdram_bankmachine3_cmd_buffer_lookahead_source_first;
wire sdram_bankmachine3_cmd_buffer_lookahead_source_last;
wire sdram_bankmachine3_cmd_buffer_lookahead_source_payload_we;
wire [20:0] sdram_bankmachine3_cmd_buffer_lookahead_source_payload_adr;
wire sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we;
wire sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable;
wire sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_re;
wire sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable;
wire [23:0] sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_din;
wire [23:0] sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_dout;
reg [3:0] sdram_bankmachine3_cmd_buffer_lookahead_level = 4'd0;
reg sdram_bankmachine3_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] sdram_bankmachine3_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] sdram_bankmachine3_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_r;
wire sdram_bankmachine3_cmd_buffer_lookahead_wrport_we;
wire [23:0] sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_w;
wire sdram_bankmachine3_cmd_buffer_lookahead_do_read;
wire [2:0] sdram_bankmachine3_cmd_buffer_lookahead_rdport_adr;
wire [23:0] sdram_bankmachine3_cmd_buffer_lookahead_rdport_dat_r;
wire sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_adr;
wire sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_first;
wire sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_last;
wire sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_adr;
wire sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_first;
wire sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_last;
wire sdram_bankmachine3_cmd_buffer_sink_valid;
wire sdram_bankmachine3_cmd_buffer_sink_ready;
wire sdram_bankmachine3_cmd_buffer_sink_first;
wire sdram_bankmachine3_cmd_buffer_sink_last;
wire sdram_bankmachine3_cmd_buffer_sink_payload_we;
wire [20:0] sdram_bankmachine3_cmd_buffer_sink_payload_adr;
wire sdram_bankmachine3_cmd_buffer_source_valid;
wire sdram_bankmachine3_cmd_buffer_source_ready;
wire sdram_bankmachine3_cmd_buffer_source_first;
wire sdram_bankmachine3_cmd_buffer_source_last;
reg sdram_bankmachine3_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] sdram_bankmachine3_cmd_buffer_source_payload_adr = 21'd0;
wire sdram_bankmachine3_cmd_buffer_pipe_ce;
wire sdram_bankmachine3_cmd_buffer_busy;
reg sdram_bankmachine3_cmd_buffer_valid_n = 1'd0;
reg sdram_bankmachine3_cmd_buffer_first_n = 1'd0;
reg sdram_bankmachine3_cmd_buffer_last_n = 1'd0;
reg sdram_bankmachine3_has_openrow = 1'd0;
reg [13:0] sdram_bankmachine3_openrow = 14'd0;
wire sdram_bankmachine3_hit;
reg sdram_bankmachine3_track_open = 1'd0;
reg sdram_bankmachine3_track_close = 1'd0;
reg sdram_bankmachine3_sel_row_adr = 1'd0;
wire sdram_bankmachine3_wait;
wire sdram_bankmachine3_done;
reg [2:0] sdram_bankmachine3_count = 3'd4;
wire sdram_bankmachine4_req_valid;
wire sdram_bankmachine4_req_ready;
wire sdram_bankmachine4_req_we;
wire [20:0] sdram_bankmachine4_req_adr;
wire sdram_bankmachine4_req_lock;
reg sdram_bankmachine4_req_wdata_ready = 1'd0;
reg sdram_bankmachine4_req_rdata_valid = 1'd0;
wire sdram_bankmachine4_refresh_req;
reg sdram_bankmachine4_refresh_gnt = 1'd0;
wire sdram_bankmachine4_ras_allowed;
wire sdram_bankmachine4_cas_allowed;
reg sdram_bankmachine4_cmd_valid = 1'd0;
reg sdram_bankmachine4_cmd_ready = 1'd0;
reg [13:0] sdram_bankmachine4_cmd_payload_a = 14'd0;
wire [2:0] sdram_bankmachine4_cmd_payload_ba;
reg sdram_bankmachine4_cmd_payload_cas = 1'd0;
reg sdram_bankmachine4_cmd_payload_ras = 1'd0;
reg sdram_bankmachine4_cmd_payload_we = 1'd0;
reg sdram_bankmachine4_cmd_payload_is_cmd = 1'd0;
reg sdram_bankmachine4_cmd_payload_is_read = 1'd0;
reg sdram_bankmachine4_cmd_payload_is_write = 1'd0;
reg sdram_bankmachine4_auto_precharge = 1'd0;
wire sdram_bankmachine4_cmd_buffer_lookahead_sink_valid;
wire sdram_bankmachine4_cmd_buffer_lookahead_sink_ready;
reg sdram_bankmachine4_cmd_buffer_lookahead_sink_first = 1'd0;
reg sdram_bankmachine4_cmd_buffer_lookahead_sink_last = 1'd0;
wire sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_adr;
wire sdram_bankmachine4_cmd_buffer_lookahead_source_valid;
wire sdram_bankmachine4_cmd_buffer_lookahead_source_ready;
wire sdram_bankmachine4_cmd_buffer_lookahead_source_first;
wire sdram_bankmachine4_cmd_buffer_lookahead_source_last;
wire sdram_bankmachine4_cmd_buffer_lookahead_source_payload_we;
wire [20:0] sdram_bankmachine4_cmd_buffer_lookahead_source_payload_adr;
wire sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_we;
wire sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable;
wire sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_re;
wire sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable;
wire [23:0] sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_din;
wire [23:0] sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_dout;
reg [3:0] sdram_bankmachine4_cmd_buffer_lookahead_level = 4'd0;
reg sdram_bankmachine4_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] sdram_bankmachine4_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] sdram_bankmachine4_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] sdram_bankmachine4_cmd_buffer_lookahead_wrport_dat_r;
wire sdram_bankmachine4_cmd_buffer_lookahead_wrport_we;
wire [23:0] sdram_bankmachine4_cmd_buffer_lookahead_wrport_dat_w;
wire sdram_bankmachine4_cmd_buffer_lookahead_do_read;
wire [2:0] sdram_bankmachine4_cmd_buffer_lookahead_rdport_adr;
wire [23:0] sdram_bankmachine4_cmd_buffer_lookahead_rdport_dat_r;
wire sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_adr;
wire sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_first;
wire sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_last;
wire sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_adr;
wire sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_first;
wire sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_last;
wire sdram_bankmachine4_cmd_buffer_sink_valid;
wire sdram_bankmachine4_cmd_buffer_sink_ready;
wire sdram_bankmachine4_cmd_buffer_sink_first;
wire sdram_bankmachine4_cmd_buffer_sink_last;
wire sdram_bankmachine4_cmd_buffer_sink_payload_we;
wire [20:0] sdram_bankmachine4_cmd_buffer_sink_payload_adr;
wire sdram_bankmachine4_cmd_buffer_source_valid;
wire sdram_bankmachine4_cmd_buffer_source_ready;
wire sdram_bankmachine4_cmd_buffer_source_first;
wire sdram_bankmachine4_cmd_buffer_source_last;
reg sdram_bankmachine4_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] sdram_bankmachine4_cmd_buffer_source_payload_adr = 21'd0;
wire sdram_bankmachine4_cmd_buffer_pipe_ce;
wire sdram_bankmachine4_cmd_buffer_busy;
reg sdram_bankmachine4_cmd_buffer_valid_n = 1'd0;
reg sdram_bankmachine4_cmd_buffer_first_n = 1'd0;
reg sdram_bankmachine4_cmd_buffer_last_n = 1'd0;
reg sdram_bankmachine4_has_openrow = 1'd0;
reg [13:0] sdram_bankmachine4_openrow = 14'd0;
wire sdram_bankmachine4_hit;
reg sdram_bankmachine4_track_open = 1'd0;
reg sdram_bankmachine4_track_close = 1'd0;
reg sdram_bankmachine4_sel_row_adr = 1'd0;
wire sdram_bankmachine4_wait;
wire sdram_bankmachine4_done;
reg [2:0] sdram_bankmachine4_count = 3'd4;
wire sdram_bankmachine5_req_valid;
wire sdram_bankmachine5_req_ready;
wire sdram_bankmachine5_req_we;
wire [20:0] sdram_bankmachine5_req_adr;
wire sdram_bankmachine5_req_lock;
reg sdram_bankmachine5_req_wdata_ready = 1'd0;
reg sdram_bankmachine5_req_rdata_valid = 1'd0;
wire sdram_bankmachine5_refresh_req;
reg sdram_bankmachine5_refresh_gnt = 1'd0;
wire sdram_bankmachine5_ras_allowed;
wire sdram_bankmachine5_cas_allowed;
reg sdram_bankmachine5_cmd_valid = 1'd0;
reg sdram_bankmachine5_cmd_ready = 1'd0;
reg [13:0] sdram_bankmachine5_cmd_payload_a = 14'd0;
wire [2:0] sdram_bankmachine5_cmd_payload_ba;
reg sdram_bankmachine5_cmd_payload_cas = 1'd0;
reg sdram_bankmachine5_cmd_payload_ras = 1'd0;
reg sdram_bankmachine5_cmd_payload_we = 1'd0;
reg sdram_bankmachine5_cmd_payload_is_cmd = 1'd0;
reg sdram_bankmachine5_cmd_payload_is_read = 1'd0;
reg sdram_bankmachine5_cmd_payload_is_write = 1'd0;
reg sdram_bankmachine5_auto_precharge = 1'd0;
wire sdram_bankmachine5_cmd_buffer_lookahead_sink_valid;
wire sdram_bankmachine5_cmd_buffer_lookahead_sink_ready;
reg sdram_bankmachine5_cmd_buffer_lookahead_sink_first = 1'd0;
reg sdram_bankmachine5_cmd_buffer_lookahead_sink_last = 1'd0;
wire sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_adr;
wire sdram_bankmachine5_cmd_buffer_lookahead_source_valid;
wire sdram_bankmachine5_cmd_buffer_lookahead_source_ready;
wire sdram_bankmachine5_cmd_buffer_lookahead_source_first;
wire sdram_bankmachine5_cmd_buffer_lookahead_source_last;
wire sdram_bankmachine5_cmd_buffer_lookahead_source_payload_we;
wire [20:0] sdram_bankmachine5_cmd_buffer_lookahead_source_payload_adr;
wire sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_we;
wire sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable;
wire sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_re;
wire sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable;
wire [23:0] sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_din;
wire [23:0] sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_dout;
reg [3:0] sdram_bankmachine5_cmd_buffer_lookahead_level = 4'd0;
reg sdram_bankmachine5_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] sdram_bankmachine5_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] sdram_bankmachine5_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] sdram_bankmachine5_cmd_buffer_lookahead_wrport_dat_r;
wire sdram_bankmachine5_cmd_buffer_lookahead_wrport_we;
wire [23:0] sdram_bankmachine5_cmd_buffer_lookahead_wrport_dat_w;
wire sdram_bankmachine5_cmd_buffer_lookahead_do_read;
wire [2:0] sdram_bankmachine5_cmd_buffer_lookahead_rdport_adr;
wire [23:0] sdram_bankmachine5_cmd_buffer_lookahead_rdport_dat_r;
wire sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_adr;
wire sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_first;
wire sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_last;
wire sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_adr;
wire sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_first;
wire sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_last;
wire sdram_bankmachine5_cmd_buffer_sink_valid;
wire sdram_bankmachine5_cmd_buffer_sink_ready;
wire sdram_bankmachine5_cmd_buffer_sink_first;
wire sdram_bankmachine5_cmd_buffer_sink_last;
wire sdram_bankmachine5_cmd_buffer_sink_payload_we;
wire [20:0] sdram_bankmachine5_cmd_buffer_sink_payload_adr;
wire sdram_bankmachine5_cmd_buffer_source_valid;
wire sdram_bankmachine5_cmd_buffer_source_ready;
wire sdram_bankmachine5_cmd_buffer_source_first;
wire sdram_bankmachine5_cmd_buffer_source_last;
reg sdram_bankmachine5_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] sdram_bankmachine5_cmd_buffer_source_payload_adr = 21'd0;
wire sdram_bankmachine5_cmd_buffer_pipe_ce;
wire sdram_bankmachine5_cmd_buffer_busy;
reg sdram_bankmachine5_cmd_buffer_valid_n = 1'd0;
reg sdram_bankmachine5_cmd_buffer_first_n = 1'd0;
reg sdram_bankmachine5_cmd_buffer_last_n = 1'd0;
reg sdram_bankmachine5_has_openrow = 1'd0;
reg [13:0] sdram_bankmachine5_openrow = 14'd0;
wire sdram_bankmachine5_hit;
reg sdram_bankmachine5_track_open = 1'd0;
reg sdram_bankmachine5_track_close = 1'd0;
reg sdram_bankmachine5_sel_row_adr = 1'd0;
wire sdram_bankmachine5_wait;
wire sdram_bankmachine5_done;
reg [2:0] sdram_bankmachine5_count = 3'd4;
wire sdram_bankmachine6_req_valid;
wire sdram_bankmachine6_req_ready;
wire sdram_bankmachine6_req_we;
wire [20:0] sdram_bankmachine6_req_adr;
wire sdram_bankmachine6_req_lock;
reg sdram_bankmachine6_req_wdata_ready = 1'd0;
reg sdram_bankmachine6_req_rdata_valid = 1'd0;
wire sdram_bankmachine6_refresh_req;
reg sdram_bankmachine6_refresh_gnt = 1'd0;
wire sdram_bankmachine6_ras_allowed;
wire sdram_bankmachine6_cas_allowed;
reg sdram_bankmachine6_cmd_valid = 1'd0;
reg sdram_bankmachine6_cmd_ready = 1'd0;
reg [13:0] sdram_bankmachine6_cmd_payload_a = 14'd0;
wire [2:0] sdram_bankmachine6_cmd_payload_ba;
reg sdram_bankmachine6_cmd_payload_cas = 1'd0;
reg sdram_bankmachine6_cmd_payload_ras = 1'd0;
reg sdram_bankmachine6_cmd_payload_we = 1'd0;
reg sdram_bankmachine6_cmd_payload_is_cmd = 1'd0;
reg sdram_bankmachine6_cmd_payload_is_read = 1'd0;
reg sdram_bankmachine6_cmd_payload_is_write = 1'd0;
reg sdram_bankmachine6_auto_precharge = 1'd0;
wire sdram_bankmachine6_cmd_buffer_lookahead_sink_valid;
wire sdram_bankmachine6_cmd_buffer_lookahead_sink_ready;
reg sdram_bankmachine6_cmd_buffer_lookahead_sink_first = 1'd0;
reg sdram_bankmachine6_cmd_buffer_lookahead_sink_last = 1'd0;
wire sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_adr;
wire sdram_bankmachine6_cmd_buffer_lookahead_source_valid;
wire sdram_bankmachine6_cmd_buffer_lookahead_source_ready;
wire sdram_bankmachine6_cmd_buffer_lookahead_source_first;
wire sdram_bankmachine6_cmd_buffer_lookahead_source_last;
wire sdram_bankmachine6_cmd_buffer_lookahead_source_payload_we;
wire [20:0] sdram_bankmachine6_cmd_buffer_lookahead_source_payload_adr;
wire sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_we;
wire sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable;
wire sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_re;
wire sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable;
wire [23:0] sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_din;
wire [23:0] sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_dout;
reg [3:0] sdram_bankmachine6_cmd_buffer_lookahead_level = 4'd0;
reg sdram_bankmachine6_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] sdram_bankmachine6_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] sdram_bankmachine6_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] sdram_bankmachine6_cmd_buffer_lookahead_wrport_dat_r;
wire sdram_bankmachine6_cmd_buffer_lookahead_wrport_we;
wire [23:0] sdram_bankmachine6_cmd_buffer_lookahead_wrport_dat_w;
wire sdram_bankmachine6_cmd_buffer_lookahead_do_read;
wire [2:0] sdram_bankmachine6_cmd_buffer_lookahead_rdport_adr;
wire [23:0] sdram_bankmachine6_cmd_buffer_lookahead_rdport_dat_r;
wire sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_adr;
wire sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_first;
wire sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_last;
wire sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_adr;
wire sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_first;
wire sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_last;
wire sdram_bankmachine6_cmd_buffer_sink_valid;
wire sdram_bankmachine6_cmd_buffer_sink_ready;
wire sdram_bankmachine6_cmd_buffer_sink_first;
wire sdram_bankmachine6_cmd_buffer_sink_last;
wire sdram_bankmachine6_cmd_buffer_sink_payload_we;
wire [20:0] sdram_bankmachine6_cmd_buffer_sink_payload_adr;
wire sdram_bankmachine6_cmd_buffer_source_valid;
wire sdram_bankmachine6_cmd_buffer_source_ready;
wire sdram_bankmachine6_cmd_buffer_source_first;
wire sdram_bankmachine6_cmd_buffer_source_last;
reg sdram_bankmachine6_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] sdram_bankmachine6_cmd_buffer_source_payload_adr = 21'd0;
wire sdram_bankmachine6_cmd_buffer_pipe_ce;
wire sdram_bankmachine6_cmd_buffer_busy;
reg sdram_bankmachine6_cmd_buffer_valid_n = 1'd0;
reg sdram_bankmachine6_cmd_buffer_first_n = 1'd0;
reg sdram_bankmachine6_cmd_buffer_last_n = 1'd0;
reg sdram_bankmachine6_has_openrow = 1'd0;
reg [13:0] sdram_bankmachine6_openrow = 14'd0;
wire sdram_bankmachine6_hit;
reg sdram_bankmachine6_track_open = 1'd0;
reg sdram_bankmachine6_track_close = 1'd0;
reg sdram_bankmachine6_sel_row_adr = 1'd0;
wire sdram_bankmachine6_wait;
wire sdram_bankmachine6_done;
reg [2:0] sdram_bankmachine6_count = 3'd4;
wire sdram_bankmachine7_req_valid;
wire sdram_bankmachine7_req_ready;
wire sdram_bankmachine7_req_we;
wire [20:0] sdram_bankmachine7_req_adr;
wire sdram_bankmachine7_req_lock;
reg sdram_bankmachine7_req_wdata_ready = 1'd0;
reg sdram_bankmachine7_req_rdata_valid = 1'd0;
wire sdram_bankmachine7_refresh_req;
reg sdram_bankmachine7_refresh_gnt = 1'd0;
wire sdram_bankmachine7_ras_allowed;
wire sdram_bankmachine7_cas_allowed;
reg sdram_bankmachine7_cmd_valid = 1'd0;
reg sdram_bankmachine7_cmd_ready = 1'd0;
reg [13:0] sdram_bankmachine7_cmd_payload_a = 14'd0;
wire [2:0] sdram_bankmachine7_cmd_payload_ba;
reg sdram_bankmachine7_cmd_payload_cas = 1'd0;
reg sdram_bankmachine7_cmd_payload_ras = 1'd0;
reg sdram_bankmachine7_cmd_payload_we = 1'd0;
reg sdram_bankmachine7_cmd_payload_is_cmd = 1'd0;
reg sdram_bankmachine7_cmd_payload_is_read = 1'd0;
reg sdram_bankmachine7_cmd_payload_is_write = 1'd0;
reg sdram_bankmachine7_auto_precharge = 1'd0;
wire sdram_bankmachine7_cmd_buffer_lookahead_sink_valid;
wire sdram_bankmachine7_cmd_buffer_lookahead_sink_ready;
reg sdram_bankmachine7_cmd_buffer_lookahead_sink_first = 1'd0;
reg sdram_bankmachine7_cmd_buffer_lookahead_sink_last = 1'd0;
wire sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_we;
wire [20:0] sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_adr;
wire sdram_bankmachine7_cmd_buffer_lookahead_source_valid;
wire sdram_bankmachine7_cmd_buffer_lookahead_source_ready;
wire sdram_bankmachine7_cmd_buffer_lookahead_source_first;
wire sdram_bankmachine7_cmd_buffer_lookahead_source_last;
wire sdram_bankmachine7_cmd_buffer_lookahead_source_payload_we;
wire [20:0] sdram_bankmachine7_cmd_buffer_lookahead_source_payload_adr;
wire sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_we;
wire sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable;
wire sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_re;
wire sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable;
wire [23:0] sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_din;
wire [23:0] sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_dout;
reg [3:0] sdram_bankmachine7_cmd_buffer_lookahead_level = 4'd0;
reg sdram_bankmachine7_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] sdram_bankmachine7_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] sdram_bankmachine7_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [23:0] sdram_bankmachine7_cmd_buffer_lookahead_wrport_dat_r;
wire sdram_bankmachine7_cmd_buffer_lookahead_wrport_we;
wire [23:0] sdram_bankmachine7_cmd_buffer_lookahead_wrport_dat_w;
wire sdram_bankmachine7_cmd_buffer_lookahead_do_read;
wire [2:0] sdram_bankmachine7_cmd_buffer_lookahead_rdport_adr;
wire [23:0] sdram_bankmachine7_cmd_buffer_lookahead_rdport_dat_r;
wire sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_we;
wire [20:0] sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_adr;
wire sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_first;
wire sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_last;
wire sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_we;
wire [20:0] sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_adr;
wire sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_first;
wire sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_last;
wire sdram_bankmachine7_cmd_buffer_sink_valid;
wire sdram_bankmachine7_cmd_buffer_sink_ready;
wire sdram_bankmachine7_cmd_buffer_sink_first;
wire sdram_bankmachine7_cmd_buffer_sink_last;
wire sdram_bankmachine7_cmd_buffer_sink_payload_we;
wire [20:0] sdram_bankmachine7_cmd_buffer_sink_payload_adr;
wire sdram_bankmachine7_cmd_buffer_source_valid;
wire sdram_bankmachine7_cmd_buffer_source_ready;
wire sdram_bankmachine7_cmd_buffer_source_first;
wire sdram_bankmachine7_cmd_buffer_source_last;
reg sdram_bankmachine7_cmd_buffer_source_payload_we = 1'd0;
reg [20:0] sdram_bankmachine7_cmd_buffer_source_payload_adr = 21'd0;
wire sdram_bankmachine7_cmd_buffer_pipe_ce;
wire sdram_bankmachine7_cmd_buffer_busy;
reg sdram_bankmachine7_cmd_buffer_valid_n = 1'd0;
reg sdram_bankmachine7_cmd_buffer_first_n = 1'd0;
reg sdram_bankmachine7_cmd_buffer_last_n = 1'd0;
reg sdram_bankmachine7_has_openrow = 1'd0;
reg [13:0] sdram_bankmachine7_openrow = 14'd0;
wire sdram_bankmachine7_hit;
reg sdram_bankmachine7_track_open = 1'd0;
reg sdram_bankmachine7_track_close = 1'd0;
reg sdram_bankmachine7_sel_row_adr = 1'd0;
wire sdram_bankmachine7_wait;
wire sdram_bankmachine7_done;
reg [2:0] sdram_bankmachine7_count = 3'd4;
wire sdram_ras_allowed;
wire sdram_cas_allowed;
reg sdram_choose_cmd_want_reads = 1'd0;
reg sdram_choose_cmd_want_writes = 1'd0;
reg sdram_choose_cmd_want_cmds = 1'd0;
reg sdram_choose_cmd_want_activates = 1'd0;
wire sdram_choose_cmd_cmd_valid;
reg sdram_choose_cmd_cmd_ready = 1'd0;
wire [13:0] sdram_choose_cmd_cmd_payload_a;
wire [2:0] sdram_choose_cmd_cmd_payload_ba;
reg sdram_choose_cmd_cmd_payload_cas = 1'd0;
reg sdram_choose_cmd_cmd_payload_ras = 1'd0;
reg sdram_choose_cmd_cmd_payload_we = 1'd0;
wire sdram_choose_cmd_cmd_payload_is_cmd;
wire sdram_choose_cmd_cmd_payload_is_read;
wire sdram_choose_cmd_cmd_payload_is_write;
reg [7:0] sdram_choose_cmd_valids = 8'd0;
wire [7:0] sdram_choose_cmd_request;
reg [2:0] sdram_choose_cmd_grant = 3'd0;
wire sdram_choose_cmd_ce;
reg sdram_choose_req_want_reads = 1'd0;
reg sdram_choose_req_want_writes = 1'd0;
reg sdram_choose_req_want_cmds = 1'd0;
reg sdram_choose_req_want_activates = 1'd0;
wire sdram_choose_req_cmd_valid;
reg sdram_choose_req_cmd_ready = 1'd0;
wire [13:0] sdram_choose_req_cmd_payload_a;
wire [2:0] sdram_choose_req_cmd_payload_ba;
reg sdram_choose_req_cmd_payload_cas = 1'd0;
reg sdram_choose_req_cmd_payload_ras = 1'd0;
reg sdram_choose_req_cmd_payload_we = 1'd0;
wire sdram_choose_req_cmd_payload_is_cmd;
wire sdram_choose_req_cmd_payload_is_read;
wire sdram_choose_req_cmd_payload_is_write;
reg [7:0] sdram_choose_req_valids = 8'd0;
wire [7:0] sdram_choose_req_request;
reg [2:0] sdram_choose_req_grant = 3'd0;
wire sdram_choose_req_ce;
reg [13:0] sdram_nop_a = 14'd0;
reg [2:0] sdram_nop_ba = 3'd0;
reg sdram_nop_cas = 1'd0;
reg sdram_nop_ras = 1'd0;
reg sdram_nop_we = 1'd0;
reg [1:0] sdram_sel0 = 2'd0;
reg [1:0] sdram_sel1 = 2'd0;
reg [1:0] sdram_sel2 = 2'd0;
reg [1:0] sdram_sel3 = 2'd0;
wire sdram_trrdcon_valid;
(* register_balancing = "no" *) reg sdram_trrdcon_ready = 1'd1;
reg sdram_trrdcon_count = 1'd0;
wire sdram_tfawcon_valid;
(* register_balancing = "no" *) reg sdram_tfawcon_ready = 1'd1;
wire [2:0] sdram_tfawcon_count;
reg [7:0] sdram_tfawcon_window = 8'd0;
wire sdram_tccdcon_valid;
(* register_balancing = "no" *) reg sdram_tccdcon_ready = 1'd1;
reg sdram_tccdcon_count = 1'd0;
wire sdram_twtrcon_valid;
(* register_balancing = "no" *) reg sdram_twtrcon_ready = 1'd1;
reg [1:0] sdram_twtrcon_count = 2'd0;
wire sdram_read_available;
wire sdram_write_available;
reg sdram_en0 = 1'd0;
wire sdram_max_time0;
reg [4:0] sdram_time0 = 5'd0;
reg sdram_en1 = 1'd0;
wire sdram_max_time1;
reg [3:0] sdram_time1 = 4'd0;
wire sdram_go_to_refresh;
wire sdram_bandwidth_update_re;
wire sdram_bandwidth_update_r;
reg sdram_bandwidth_update_w = 1'd0;
reg [23:0] sdram_bandwidth_nreads_status = 24'd0;
reg [23:0] sdram_bandwidth_nwrites_status = 24'd0;
reg [7:0] sdram_bandwidth_data_width_status = 8'd128;
reg sdram_bandwidth_cmd_valid = 1'd0;
reg sdram_bandwidth_cmd_ready = 1'd0;
reg sdram_bandwidth_cmd_is_read = 1'd0;
reg sdram_bandwidth_cmd_is_write = 1'd0;
reg [23:0] sdram_bandwidth_counter = 24'd0;
reg sdram_bandwidth_period = 1'd0;
reg [23:0] sdram_bandwidth_nreads = 24'd0;
reg [23:0] sdram_bandwidth_nwrites = 24'd0;
reg [23:0] sdram_bandwidth_nreads_r = 24'd0;
reg [23:0] sdram_bandwidth_nwrites_r = 24'd0;
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
reg [2:0] multiplexer_state = 3'd0;
reg [2:0] multiplexer_next_state = 3'd0;
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
reg new_master_rdata_valid0 = 1'd0;
reg new_master_rdata_valid1 = 1'd0;
reg new_master_rdata_valid2 = 1'd0;
reg new_master_rdata_valid3 = 1'd0;
reg new_master_rdata_valid4 = 1'd0;
reg [2:0] new_master_rbank0 = 3'd0;
reg [2:0] new_master_rbank1 = 3'd0;
reg [2:0] new_master_rbank2 = 3'd0;
reg [2:0] new_master_rbank3 = 3'd0;
reg [2:0] new_master_wbank = 3'd0;
reg [2:0] cache_state = 3'd0;
reg [2:0] cache_next_state = 3'd0;
reg [1:0] litedramwishbone2native_state = 2'd0;
reg [1:0] litedramwishbone2native_next_state = 2'd0;
wire wb_sdram_con_request;
wire wb_sdram_con_grant;
wire [29:0] basesoc_shared_adr;
wire [31:0] basesoc_shared_dat_w;
reg [31:0] basesoc_shared_dat_r = 32'd0;
wire [3:0] basesoc_shared_sel;
wire basesoc_shared_cyc;
wire basesoc_shared_stb;
reg basesoc_shared_ack = 1'd0;
wire basesoc_shared_we;
wire [2:0] basesoc_shared_cti;
wire [1:0] basesoc_shared_bte;
wire basesoc_shared_err;
wire [1:0] basesoc_request;
reg basesoc_grant = 1'd0;
reg [4:0] basesoc_slave_sel = 5'd0;
reg [4:0] basesoc_slave_sel_r = 5'd0;
reg basesoc_error = 1'd0;
wire basesoc_wait;
wire basesoc_done;
reg [16:0] basesoc_count = 17'd65536;
wire [13:0] basesoc_interface0_bank_bus_adr;
wire basesoc_interface0_bank_bus_we;
wire [7:0] basesoc_interface0_bank_bus_dat_w;
reg [7:0] basesoc_interface0_bank_bus_dat_r = 8'd0;
wire basesoc_csrbank0_scratch3_re;
wire [7:0] basesoc_csrbank0_scratch3_r;
wire [7:0] basesoc_csrbank0_scratch3_w;
wire basesoc_csrbank0_scratch2_re;
wire [7:0] basesoc_csrbank0_scratch2_r;
wire [7:0] basesoc_csrbank0_scratch2_w;
wire basesoc_csrbank0_scratch1_re;
wire [7:0] basesoc_csrbank0_scratch1_r;
wire [7:0] basesoc_csrbank0_scratch1_w;
wire basesoc_csrbank0_scratch0_re;
wire [7:0] basesoc_csrbank0_scratch0_r;
wire [7:0] basesoc_csrbank0_scratch0_w;
wire basesoc_csrbank0_bus_errors3_re;
wire [7:0] basesoc_csrbank0_bus_errors3_r;
wire [7:0] basesoc_csrbank0_bus_errors3_w;
wire basesoc_csrbank0_bus_errors2_re;
wire [7:0] basesoc_csrbank0_bus_errors2_r;
wire [7:0] basesoc_csrbank0_bus_errors2_w;
wire basesoc_csrbank0_bus_errors1_re;
wire [7:0] basesoc_csrbank0_bus_errors1_r;
wire [7:0] basesoc_csrbank0_bus_errors1_w;
wire basesoc_csrbank0_bus_errors0_re;
wire [7:0] basesoc_csrbank0_bus_errors0_r;
wire [7:0] basesoc_csrbank0_bus_errors0_w;
wire basesoc_csrbank0_sel;
wire [13:0] basesoc_interface1_bank_bus_adr;
wire basesoc_interface1_bank_bus_we;
wire [7:0] basesoc_interface1_bank_bus_dat_w;
reg [7:0] basesoc_interface1_bank_bus_dat_r = 8'd0;
wire basesoc_csrbank1_switches_in_re;
wire basesoc_csrbank1_switches_in_r;
wire basesoc_csrbank1_switches_in_w;
wire basesoc_csrbank1_leds_out0_re;
wire [1:0] basesoc_csrbank1_leds_out0_r;
wire [1:0] basesoc_csrbank1_leds_out0_w;
wire basesoc_csrbank1_sel;
wire [13:0] basesoc_sram_bus_adr1;
wire basesoc_sram_bus_we1;
wire [7:0] basesoc_sram_bus_dat_w1;
reg [7:0] basesoc_sram_bus_dat_r1 = 8'd0;
wire [2:0] basesoc_adr;
wire [7:0] basesoc_dat_r;
wire basesoc_sel;
reg basesoc_sel_r = 1'd0;
wire [13:0] basesoc_interface2_bank_bus_adr;
wire basesoc_interface2_bank_bus_we;
wire [7:0] basesoc_interface2_bank_bus_dat_w;
reg [7:0] basesoc_interface2_bank_bus_dat_r = 8'd0;
wire basesoc_csrbank2_dna_id7_re;
wire basesoc_csrbank2_dna_id7_r;
wire basesoc_csrbank2_dna_id7_w;
wire basesoc_csrbank2_dna_id6_re;
wire [7:0] basesoc_csrbank2_dna_id6_r;
wire [7:0] basesoc_csrbank2_dna_id6_w;
wire basesoc_csrbank2_dna_id5_re;
wire [7:0] basesoc_csrbank2_dna_id5_r;
wire [7:0] basesoc_csrbank2_dna_id5_w;
wire basesoc_csrbank2_dna_id4_re;
wire [7:0] basesoc_csrbank2_dna_id4_r;
wire [7:0] basesoc_csrbank2_dna_id4_w;
wire basesoc_csrbank2_dna_id3_re;
wire [7:0] basesoc_csrbank2_dna_id3_r;
wire [7:0] basesoc_csrbank2_dna_id3_w;
wire basesoc_csrbank2_dna_id2_re;
wire [7:0] basesoc_csrbank2_dna_id2_r;
wire [7:0] basesoc_csrbank2_dna_id2_w;
wire basesoc_csrbank2_dna_id1_re;
wire [7:0] basesoc_csrbank2_dna_id1_r;
wire [7:0] basesoc_csrbank2_dna_id1_w;
wire basesoc_csrbank2_dna_id0_re;
wire [7:0] basesoc_csrbank2_dna_id0_r;
wire [7:0] basesoc_csrbank2_dna_id0_w;
wire basesoc_csrbank2_git_commit19_re;
wire [7:0] basesoc_csrbank2_git_commit19_r;
wire [7:0] basesoc_csrbank2_git_commit19_w;
wire basesoc_csrbank2_git_commit18_re;
wire [7:0] basesoc_csrbank2_git_commit18_r;
wire [7:0] basesoc_csrbank2_git_commit18_w;
wire basesoc_csrbank2_git_commit17_re;
wire [7:0] basesoc_csrbank2_git_commit17_r;
wire [7:0] basesoc_csrbank2_git_commit17_w;
wire basesoc_csrbank2_git_commit16_re;
wire [7:0] basesoc_csrbank2_git_commit16_r;
wire [7:0] basesoc_csrbank2_git_commit16_w;
wire basesoc_csrbank2_git_commit15_re;
wire [7:0] basesoc_csrbank2_git_commit15_r;
wire [7:0] basesoc_csrbank2_git_commit15_w;
wire basesoc_csrbank2_git_commit14_re;
wire [7:0] basesoc_csrbank2_git_commit14_r;
wire [7:0] basesoc_csrbank2_git_commit14_w;
wire basesoc_csrbank2_git_commit13_re;
wire [7:0] basesoc_csrbank2_git_commit13_r;
wire [7:0] basesoc_csrbank2_git_commit13_w;
wire basesoc_csrbank2_git_commit12_re;
wire [7:0] basesoc_csrbank2_git_commit12_r;
wire [7:0] basesoc_csrbank2_git_commit12_w;
wire basesoc_csrbank2_git_commit11_re;
wire [7:0] basesoc_csrbank2_git_commit11_r;
wire [7:0] basesoc_csrbank2_git_commit11_w;
wire basesoc_csrbank2_git_commit10_re;
wire [7:0] basesoc_csrbank2_git_commit10_r;
wire [7:0] basesoc_csrbank2_git_commit10_w;
wire basesoc_csrbank2_git_commit9_re;
wire [7:0] basesoc_csrbank2_git_commit9_r;
wire [7:0] basesoc_csrbank2_git_commit9_w;
wire basesoc_csrbank2_git_commit8_re;
wire [7:0] basesoc_csrbank2_git_commit8_r;
wire [7:0] basesoc_csrbank2_git_commit8_w;
wire basesoc_csrbank2_git_commit7_re;
wire [7:0] basesoc_csrbank2_git_commit7_r;
wire [7:0] basesoc_csrbank2_git_commit7_w;
wire basesoc_csrbank2_git_commit6_re;
wire [7:0] basesoc_csrbank2_git_commit6_r;
wire [7:0] basesoc_csrbank2_git_commit6_w;
wire basesoc_csrbank2_git_commit5_re;
wire [7:0] basesoc_csrbank2_git_commit5_r;
wire [7:0] basesoc_csrbank2_git_commit5_w;
wire basesoc_csrbank2_git_commit4_re;
wire [7:0] basesoc_csrbank2_git_commit4_r;
wire [7:0] basesoc_csrbank2_git_commit4_w;
wire basesoc_csrbank2_git_commit3_re;
wire [7:0] basesoc_csrbank2_git_commit3_r;
wire [7:0] basesoc_csrbank2_git_commit3_w;
wire basesoc_csrbank2_git_commit2_re;
wire [7:0] basesoc_csrbank2_git_commit2_r;
wire [7:0] basesoc_csrbank2_git_commit2_w;
wire basesoc_csrbank2_git_commit1_re;
wire [7:0] basesoc_csrbank2_git_commit1_r;
wire [7:0] basesoc_csrbank2_git_commit1_w;
wire basesoc_csrbank2_git_commit0_re;
wire [7:0] basesoc_csrbank2_git_commit0_r;
wire [7:0] basesoc_csrbank2_git_commit0_w;
wire basesoc_csrbank2_platform_platform7_re;
wire [7:0] basesoc_csrbank2_platform_platform7_r;
wire [7:0] basesoc_csrbank2_platform_platform7_w;
wire basesoc_csrbank2_platform_platform6_re;
wire [7:0] basesoc_csrbank2_platform_platform6_r;
wire [7:0] basesoc_csrbank2_platform_platform6_w;
wire basesoc_csrbank2_platform_platform5_re;
wire [7:0] basesoc_csrbank2_platform_platform5_r;
wire [7:0] basesoc_csrbank2_platform_platform5_w;
wire basesoc_csrbank2_platform_platform4_re;
wire [7:0] basesoc_csrbank2_platform_platform4_r;
wire [7:0] basesoc_csrbank2_platform_platform4_w;
wire basesoc_csrbank2_platform_platform3_re;
wire [7:0] basesoc_csrbank2_platform_platform3_r;
wire [7:0] basesoc_csrbank2_platform_platform3_w;
wire basesoc_csrbank2_platform_platform2_re;
wire [7:0] basesoc_csrbank2_platform_platform2_r;
wire [7:0] basesoc_csrbank2_platform_platform2_w;
wire basesoc_csrbank2_platform_platform1_re;
wire [7:0] basesoc_csrbank2_platform_platform1_r;
wire [7:0] basesoc_csrbank2_platform_platform1_w;
wire basesoc_csrbank2_platform_platform0_re;
wire [7:0] basesoc_csrbank2_platform_platform0_r;
wire [7:0] basesoc_csrbank2_platform_platform0_w;
wire basesoc_csrbank2_platform_target7_re;
wire [7:0] basesoc_csrbank2_platform_target7_r;
wire [7:0] basesoc_csrbank2_platform_target7_w;
wire basesoc_csrbank2_platform_target6_re;
wire [7:0] basesoc_csrbank2_platform_target6_r;
wire [7:0] basesoc_csrbank2_platform_target6_w;
wire basesoc_csrbank2_platform_target5_re;
wire [7:0] basesoc_csrbank2_platform_target5_r;
wire [7:0] basesoc_csrbank2_platform_target5_w;
wire basesoc_csrbank2_platform_target4_re;
wire [7:0] basesoc_csrbank2_platform_target4_r;
wire [7:0] basesoc_csrbank2_platform_target4_w;
wire basesoc_csrbank2_platform_target3_re;
wire [7:0] basesoc_csrbank2_platform_target3_r;
wire [7:0] basesoc_csrbank2_platform_target3_w;
wire basesoc_csrbank2_platform_target2_re;
wire [7:0] basesoc_csrbank2_platform_target2_r;
wire [7:0] basesoc_csrbank2_platform_target2_w;
wire basesoc_csrbank2_platform_target1_re;
wire [7:0] basesoc_csrbank2_platform_target1_r;
wire [7:0] basesoc_csrbank2_platform_target1_w;
wire basesoc_csrbank2_platform_target0_re;
wire [7:0] basesoc_csrbank2_platform_target0_r;
wire [7:0] basesoc_csrbank2_platform_target0_w;
wire basesoc_csrbank2_sel;
wire [13:0] basesoc_interface3_bank_bus_adr;
wire basesoc_interface3_bank_bus_we;
wire [7:0] basesoc_interface3_bank_bus_dat_w;
reg [7:0] basesoc_interface3_bank_bus_dat_r = 8'd0;
wire basesoc_csrbank3_master_w0_re;
wire [7:0] basesoc_csrbank3_master_w0_r;
wire [7:0] basesoc_csrbank3_master_w0_w;
wire basesoc_csrbank3_master_r_re;
wire basesoc_csrbank3_master_r_r;
wire basesoc_csrbank3_master_r_w;
wire basesoc_csrbank3_fx2_reset_out0_re;
wire basesoc_csrbank3_fx2_reset_out0_r;
wire basesoc_csrbank3_fx2_reset_out0_w;
wire basesoc_csrbank3_fx2_hack_shift_reg0_re;
wire [7:0] basesoc_csrbank3_fx2_hack_shift_reg0_r;
wire [7:0] basesoc_csrbank3_fx2_hack_shift_reg0_w;
wire basesoc_csrbank3_fx2_hack_status0_re;
wire [1:0] basesoc_csrbank3_fx2_hack_status0_r;
wire [1:0] basesoc_csrbank3_fx2_hack_status0_w;
wire basesoc_csrbank3_fx2_hack_slave_addr0_re;
wire [6:0] basesoc_csrbank3_fx2_hack_slave_addr0_r;
wire [6:0] basesoc_csrbank3_fx2_hack_slave_addr0_w;
wire basesoc_csrbank3_mux_sel0_re;
wire basesoc_csrbank3_mux_sel0_r;
wire basesoc_csrbank3_mux_sel0_w;
wire basesoc_csrbank3_sel;
wire [13:0] basesoc_interface4_bank_bus_adr;
wire basesoc_interface4_bank_bus_we;
wire [7:0] basesoc_interface4_bank_bus_dat_w;
reg [7:0] basesoc_interface4_bank_bus_dat_r = 8'd0;
wire basesoc_csrbank4_dfii_control0_re;
wire [3:0] basesoc_csrbank4_dfii_control0_r;
wire [3:0] basesoc_csrbank4_dfii_control0_w;
wire basesoc_csrbank4_dfii_pi0_command0_re;
wire [5:0] basesoc_csrbank4_dfii_pi0_command0_r;
wire [5:0] basesoc_csrbank4_dfii_pi0_command0_w;
wire basesoc_csrbank4_dfii_pi0_address1_re;
wire [5:0] basesoc_csrbank4_dfii_pi0_address1_r;
wire [5:0] basesoc_csrbank4_dfii_pi0_address1_w;
wire basesoc_csrbank4_dfii_pi0_address0_re;
wire [7:0] basesoc_csrbank4_dfii_pi0_address0_r;
wire [7:0] basesoc_csrbank4_dfii_pi0_address0_w;
wire basesoc_csrbank4_dfii_pi0_baddress0_re;
wire [2:0] basesoc_csrbank4_dfii_pi0_baddress0_r;
wire [2:0] basesoc_csrbank4_dfii_pi0_baddress0_w;
wire basesoc_csrbank4_dfii_pi0_wrdata3_re;
wire [7:0] basesoc_csrbank4_dfii_pi0_wrdata3_r;
wire [7:0] basesoc_csrbank4_dfii_pi0_wrdata3_w;
wire basesoc_csrbank4_dfii_pi0_wrdata2_re;
wire [7:0] basesoc_csrbank4_dfii_pi0_wrdata2_r;
wire [7:0] basesoc_csrbank4_dfii_pi0_wrdata2_w;
wire basesoc_csrbank4_dfii_pi0_wrdata1_re;
wire [7:0] basesoc_csrbank4_dfii_pi0_wrdata1_r;
wire [7:0] basesoc_csrbank4_dfii_pi0_wrdata1_w;
wire basesoc_csrbank4_dfii_pi0_wrdata0_re;
wire [7:0] basesoc_csrbank4_dfii_pi0_wrdata0_r;
wire [7:0] basesoc_csrbank4_dfii_pi0_wrdata0_w;
wire basesoc_csrbank4_dfii_pi0_rddata3_re;
wire [7:0] basesoc_csrbank4_dfii_pi0_rddata3_r;
wire [7:0] basesoc_csrbank4_dfii_pi0_rddata3_w;
wire basesoc_csrbank4_dfii_pi0_rddata2_re;
wire [7:0] basesoc_csrbank4_dfii_pi0_rddata2_r;
wire [7:0] basesoc_csrbank4_dfii_pi0_rddata2_w;
wire basesoc_csrbank4_dfii_pi0_rddata1_re;
wire [7:0] basesoc_csrbank4_dfii_pi0_rddata1_r;
wire [7:0] basesoc_csrbank4_dfii_pi0_rddata1_w;
wire basesoc_csrbank4_dfii_pi0_rddata0_re;
wire [7:0] basesoc_csrbank4_dfii_pi0_rddata0_r;
wire [7:0] basesoc_csrbank4_dfii_pi0_rddata0_w;
wire basesoc_csrbank4_dfii_pi1_command0_re;
wire [5:0] basesoc_csrbank4_dfii_pi1_command0_r;
wire [5:0] basesoc_csrbank4_dfii_pi1_command0_w;
wire basesoc_csrbank4_dfii_pi1_address1_re;
wire [5:0] basesoc_csrbank4_dfii_pi1_address1_r;
wire [5:0] basesoc_csrbank4_dfii_pi1_address1_w;
wire basesoc_csrbank4_dfii_pi1_address0_re;
wire [7:0] basesoc_csrbank4_dfii_pi1_address0_r;
wire [7:0] basesoc_csrbank4_dfii_pi1_address0_w;
wire basesoc_csrbank4_dfii_pi1_baddress0_re;
wire [2:0] basesoc_csrbank4_dfii_pi1_baddress0_r;
wire [2:0] basesoc_csrbank4_dfii_pi1_baddress0_w;
wire basesoc_csrbank4_dfii_pi1_wrdata3_re;
wire [7:0] basesoc_csrbank4_dfii_pi1_wrdata3_r;
wire [7:0] basesoc_csrbank4_dfii_pi1_wrdata3_w;
wire basesoc_csrbank4_dfii_pi1_wrdata2_re;
wire [7:0] basesoc_csrbank4_dfii_pi1_wrdata2_r;
wire [7:0] basesoc_csrbank4_dfii_pi1_wrdata2_w;
wire basesoc_csrbank4_dfii_pi1_wrdata1_re;
wire [7:0] basesoc_csrbank4_dfii_pi1_wrdata1_r;
wire [7:0] basesoc_csrbank4_dfii_pi1_wrdata1_w;
wire basesoc_csrbank4_dfii_pi1_wrdata0_re;
wire [7:0] basesoc_csrbank4_dfii_pi1_wrdata0_r;
wire [7:0] basesoc_csrbank4_dfii_pi1_wrdata0_w;
wire basesoc_csrbank4_dfii_pi1_rddata3_re;
wire [7:0] basesoc_csrbank4_dfii_pi1_rddata3_r;
wire [7:0] basesoc_csrbank4_dfii_pi1_rddata3_w;
wire basesoc_csrbank4_dfii_pi1_rddata2_re;
wire [7:0] basesoc_csrbank4_dfii_pi1_rddata2_r;
wire [7:0] basesoc_csrbank4_dfii_pi1_rddata2_w;
wire basesoc_csrbank4_dfii_pi1_rddata1_re;
wire [7:0] basesoc_csrbank4_dfii_pi1_rddata1_r;
wire [7:0] basesoc_csrbank4_dfii_pi1_rddata1_w;
wire basesoc_csrbank4_dfii_pi1_rddata0_re;
wire [7:0] basesoc_csrbank4_dfii_pi1_rddata0_r;
wire [7:0] basesoc_csrbank4_dfii_pi1_rddata0_w;
wire basesoc_csrbank4_dfii_pi2_command0_re;
wire [5:0] basesoc_csrbank4_dfii_pi2_command0_r;
wire [5:0] basesoc_csrbank4_dfii_pi2_command0_w;
wire basesoc_csrbank4_dfii_pi2_address1_re;
wire [5:0] basesoc_csrbank4_dfii_pi2_address1_r;
wire [5:0] basesoc_csrbank4_dfii_pi2_address1_w;
wire basesoc_csrbank4_dfii_pi2_address0_re;
wire [7:0] basesoc_csrbank4_dfii_pi2_address0_r;
wire [7:0] basesoc_csrbank4_dfii_pi2_address0_w;
wire basesoc_csrbank4_dfii_pi2_baddress0_re;
wire [2:0] basesoc_csrbank4_dfii_pi2_baddress0_r;
wire [2:0] basesoc_csrbank4_dfii_pi2_baddress0_w;
wire basesoc_csrbank4_dfii_pi2_wrdata3_re;
wire [7:0] basesoc_csrbank4_dfii_pi2_wrdata3_r;
wire [7:0] basesoc_csrbank4_dfii_pi2_wrdata3_w;
wire basesoc_csrbank4_dfii_pi2_wrdata2_re;
wire [7:0] basesoc_csrbank4_dfii_pi2_wrdata2_r;
wire [7:0] basesoc_csrbank4_dfii_pi2_wrdata2_w;
wire basesoc_csrbank4_dfii_pi2_wrdata1_re;
wire [7:0] basesoc_csrbank4_dfii_pi2_wrdata1_r;
wire [7:0] basesoc_csrbank4_dfii_pi2_wrdata1_w;
wire basesoc_csrbank4_dfii_pi2_wrdata0_re;
wire [7:0] basesoc_csrbank4_dfii_pi2_wrdata0_r;
wire [7:0] basesoc_csrbank4_dfii_pi2_wrdata0_w;
wire basesoc_csrbank4_dfii_pi2_rddata3_re;
wire [7:0] basesoc_csrbank4_dfii_pi2_rddata3_r;
wire [7:0] basesoc_csrbank4_dfii_pi2_rddata3_w;
wire basesoc_csrbank4_dfii_pi2_rddata2_re;
wire [7:0] basesoc_csrbank4_dfii_pi2_rddata2_r;
wire [7:0] basesoc_csrbank4_dfii_pi2_rddata2_w;
wire basesoc_csrbank4_dfii_pi2_rddata1_re;
wire [7:0] basesoc_csrbank4_dfii_pi2_rddata1_r;
wire [7:0] basesoc_csrbank4_dfii_pi2_rddata1_w;
wire basesoc_csrbank4_dfii_pi2_rddata0_re;
wire [7:0] basesoc_csrbank4_dfii_pi2_rddata0_r;
wire [7:0] basesoc_csrbank4_dfii_pi2_rddata0_w;
wire basesoc_csrbank4_dfii_pi3_command0_re;
wire [5:0] basesoc_csrbank4_dfii_pi3_command0_r;
wire [5:0] basesoc_csrbank4_dfii_pi3_command0_w;
wire basesoc_csrbank4_dfii_pi3_address1_re;
wire [5:0] basesoc_csrbank4_dfii_pi3_address1_r;
wire [5:0] basesoc_csrbank4_dfii_pi3_address1_w;
wire basesoc_csrbank4_dfii_pi3_address0_re;
wire [7:0] basesoc_csrbank4_dfii_pi3_address0_r;
wire [7:0] basesoc_csrbank4_dfii_pi3_address0_w;
wire basesoc_csrbank4_dfii_pi3_baddress0_re;
wire [2:0] basesoc_csrbank4_dfii_pi3_baddress0_r;
wire [2:0] basesoc_csrbank4_dfii_pi3_baddress0_w;
wire basesoc_csrbank4_dfii_pi3_wrdata3_re;
wire [7:0] basesoc_csrbank4_dfii_pi3_wrdata3_r;
wire [7:0] basesoc_csrbank4_dfii_pi3_wrdata3_w;
wire basesoc_csrbank4_dfii_pi3_wrdata2_re;
wire [7:0] basesoc_csrbank4_dfii_pi3_wrdata2_r;
wire [7:0] basesoc_csrbank4_dfii_pi3_wrdata2_w;
wire basesoc_csrbank4_dfii_pi3_wrdata1_re;
wire [7:0] basesoc_csrbank4_dfii_pi3_wrdata1_r;
wire [7:0] basesoc_csrbank4_dfii_pi3_wrdata1_w;
wire basesoc_csrbank4_dfii_pi3_wrdata0_re;
wire [7:0] basesoc_csrbank4_dfii_pi3_wrdata0_r;
wire [7:0] basesoc_csrbank4_dfii_pi3_wrdata0_w;
wire basesoc_csrbank4_dfii_pi3_rddata3_re;
wire [7:0] basesoc_csrbank4_dfii_pi3_rddata3_r;
wire [7:0] basesoc_csrbank4_dfii_pi3_rddata3_w;
wire basesoc_csrbank4_dfii_pi3_rddata2_re;
wire [7:0] basesoc_csrbank4_dfii_pi3_rddata2_r;
wire [7:0] basesoc_csrbank4_dfii_pi3_rddata2_w;
wire basesoc_csrbank4_dfii_pi3_rddata1_re;
wire [7:0] basesoc_csrbank4_dfii_pi3_rddata1_r;
wire [7:0] basesoc_csrbank4_dfii_pi3_rddata1_w;
wire basesoc_csrbank4_dfii_pi3_rddata0_re;
wire [7:0] basesoc_csrbank4_dfii_pi3_rddata0_r;
wire [7:0] basesoc_csrbank4_dfii_pi3_rddata0_w;
wire basesoc_csrbank4_controller_bandwidth_nreads2_re;
wire [7:0] basesoc_csrbank4_controller_bandwidth_nreads2_r;
wire [7:0] basesoc_csrbank4_controller_bandwidth_nreads2_w;
wire basesoc_csrbank4_controller_bandwidth_nreads1_re;
wire [7:0] basesoc_csrbank4_controller_bandwidth_nreads1_r;
wire [7:0] basesoc_csrbank4_controller_bandwidth_nreads1_w;
wire basesoc_csrbank4_controller_bandwidth_nreads0_re;
wire [7:0] basesoc_csrbank4_controller_bandwidth_nreads0_r;
wire [7:0] basesoc_csrbank4_controller_bandwidth_nreads0_w;
wire basesoc_csrbank4_controller_bandwidth_nwrites2_re;
wire [7:0] basesoc_csrbank4_controller_bandwidth_nwrites2_r;
wire [7:0] basesoc_csrbank4_controller_bandwidth_nwrites2_w;
wire basesoc_csrbank4_controller_bandwidth_nwrites1_re;
wire [7:0] basesoc_csrbank4_controller_bandwidth_nwrites1_r;
wire [7:0] basesoc_csrbank4_controller_bandwidth_nwrites1_w;
wire basesoc_csrbank4_controller_bandwidth_nwrites0_re;
wire [7:0] basesoc_csrbank4_controller_bandwidth_nwrites0_r;
wire [7:0] basesoc_csrbank4_controller_bandwidth_nwrites0_w;
wire basesoc_csrbank4_controller_bandwidth_data_width_re;
wire [7:0] basesoc_csrbank4_controller_bandwidth_data_width_r;
wire [7:0] basesoc_csrbank4_controller_bandwidth_data_width_w;
wire basesoc_csrbank4_sel;
wire [13:0] basesoc_interface5_bank_bus_adr;
wire basesoc_interface5_bank_bus_we;
wire [7:0] basesoc_interface5_bank_bus_dat_w;
reg [7:0] basesoc_interface5_bank_bus_dat_r = 8'd0;
wire basesoc_csrbank5_bitbang0_re;
wire [3:0] basesoc_csrbank5_bitbang0_r;
wire [3:0] basesoc_csrbank5_bitbang0_w;
wire basesoc_csrbank5_miso_re;
wire basesoc_csrbank5_miso_r;
wire basesoc_csrbank5_miso_w;
wire basesoc_csrbank5_bitbang_en0_re;
wire basesoc_csrbank5_bitbang_en0_r;
wire basesoc_csrbank5_bitbang_en0_w;
wire basesoc_csrbank5_sel;
wire [13:0] basesoc_interface6_bank_bus_adr;
wire basesoc_interface6_bank_bus_we;
wire [7:0] basesoc_interface6_bank_bus_dat_w;
reg [7:0] basesoc_interface6_bank_bus_dat_r = 8'd0;
wire basesoc_csrbank6_load3_re;
wire [7:0] basesoc_csrbank6_load3_r;
wire [7:0] basesoc_csrbank6_load3_w;
wire basesoc_csrbank6_load2_re;
wire [7:0] basesoc_csrbank6_load2_r;
wire [7:0] basesoc_csrbank6_load2_w;
wire basesoc_csrbank6_load1_re;
wire [7:0] basesoc_csrbank6_load1_r;
wire [7:0] basesoc_csrbank6_load1_w;
wire basesoc_csrbank6_load0_re;
wire [7:0] basesoc_csrbank6_load0_r;
wire [7:0] basesoc_csrbank6_load0_w;
wire basesoc_csrbank6_reload3_re;
wire [7:0] basesoc_csrbank6_reload3_r;
wire [7:0] basesoc_csrbank6_reload3_w;
wire basesoc_csrbank6_reload2_re;
wire [7:0] basesoc_csrbank6_reload2_r;
wire [7:0] basesoc_csrbank6_reload2_w;
wire basesoc_csrbank6_reload1_re;
wire [7:0] basesoc_csrbank6_reload1_r;
wire [7:0] basesoc_csrbank6_reload1_w;
wire basesoc_csrbank6_reload0_re;
wire [7:0] basesoc_csrbank6_reload0_r;
wire [7:0] basesoc_csrbank6_reload0_w;
wire basesoc_csrbank6_en0_re;
wire basesoc_csrbank6_en0_r;
wire basesoc_csrbank6_en0_w;
wire basesoc_csrbank6_value3_re;
wire [7:0] basesoc_csrbank6_value3_r;
wire [7:0] basesoc_csrbank6_value3_w;
wire basesoc_csrbank6_value2_re;
wire [7:0] basesoc_csrbank6_value2_r;
wire [7:0] basesoc_csrbank6_value2_w;
wire basesoc_csrbank6_value1_re;
wire [7:0] basesoc_csrbank6_value1_r;
wire [7:0] basesoc_csrbank6_value1_w;
wire basesoc_csrbank6_value0_re;
wire [7:0] basesoc_csrbank6_value0_r;
wire [7:0] basesoc_csrbank6_value0_w;
wire basesoc_csrbank6_ev_enable0_re;
wire basesoc_csrbank6_ev_enable0_r;
wire basesoc_csrbank6_ev_enable0_w;
wire basesoc_csrbank6_sel;
wire [13:0] basesoc_interface7_bank_bus_adr;
wire basesoc_interface7_bank_bus_we;
wire [7:0] basesoc_interface7_bank_bus_dat_w;
reg [7:0] basesoc_interface7_bank_bus_dat_r = 8'd0;
wire basesoc_csrbank7_txfull_re;
wire basesoc_csrbank7_txfull_r;
wire basesoc_csrbank7_txfull_w;
wire basesoc_csrbank7_rxempty_re;
wire basesoc_csrbank7_rxempty_r;
wire basesoc_csrbank7_rxempty_w;
wire basesoc_csrbank7_ev_enable0_re;
wire [1:0] basesoc_csrbank7_ev_enable0_r;
wire [1:0] basesoc_csrbank7_ev_enable0_w;
wire basesoc_csrbank7_sel;
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
wire xilinxasyncresetsynchronizerimpl0;
wire xilinxasyncresetsynchronizerimpl0_rst_meta;
wire xilinxasyncresetsynchronizerimpl1;
wire xilinxasyncresetsynchronizerimpl1_rst_meta;
wire xilinxasyncresetsynchronizerimpl2;
wire xilinxasyncresetsynchronizerimpl2_rst_meta;
wire xilinxasyncresetsynchronizerimpl3;
wire xilinxasyncresetsynchronizerimpl3_rst_meta;
wire xilinxasyncresetsynchronizerimpl4_rst_meta;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl0_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl0_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl1_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl1_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl2_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl2_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl3_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl3_regs1 = 1'd0;

assign basesoc_lm32_reset = basesoc_ctrl_reset;
assign crg_reset = front_panel_reset;
assign half_rate_phy_clk4x_wr_strb = crg_clk8x_wr_strb;
assign half_rate_phy_clk4x_rd_strb = crg_clk8x_rd_strb;
assign basesoc_ctrl_bus_error = basesoc_error;
always @(*) begin
	basesoc_lm32_interrupt <= 32'd0;
	basesoc_lm32_interrupt[1] <= basesoc_irq;
	basesoc_lm32_interrupt[2] <= uart_irq;
end
assign basesoc_ctrl_reset = basesoc_ctrl_reset_reset_re;
assign basesoc_ctrl_bus_errors_status = basesoc_ctrl_bus_errors;
assign basesoc_lm32_ibus_adr = basesoc_lm32_i_adr_o[31:2];
assign basesoc_lm32_dbus_adr = basesoc_lm32_d_adr_o[31:2];
assign basesoc_rom_adr = basesoc_rom_bus_adr[12:0];
assign basesoc_rom_bus_dat_r = basesoc_rom_dat_r;
always @(*) begin
	basesoc_sram_we <= 4'd0;
	basesoc_sram_we[0] <= (((basesoc_sram_bus_cyc & basesoc_sram_bus_stb) & basesoc_sram_bus_we0) & basesoc_sram_bus_sel[0]);
	basesoc_sram_we[1] <= (((basesoc_sram_bus_cyc & basesoc_sram_bus_stb) & basesoc_sram_bus_we0) & basesoc_sram_bus_sel[1]);
	basesoc_sram_we[2] <= (((basesoc_sram_bus_cyc & basesoc_sram_bus_stb) & basesoc_sram_bus_we0) & basesoc_sram_bus_sel[2]);
	basesoc_sram_we[3] <= (((basesoc_sram_bus_cyc & basesoc_sram_bus_stb) & basesoc_sram_bus_we0) & basesoc_sram_bus_sel[3]);
end
assign basesoc_sram_adr = basesoc_sram_bus_adr0[11:0];
assign basesoc_sram_bus_dat_r0 = basesoc_sram_dat_r;
assign basesoc_sram_dat_w = basesoc_sram_bus_dat_w0;
assign basesoc_zero_trigger = (basesoc_value != 1'd0);
assign basesoc_eventmanager_status_w = basesoc_zero_status;
always @(*) begin
	basesoc_zero_clear <= 1'd0;
	if ((basesoc_eventmanager_pending_re & basesoc_eventmanager_pending_r)) begin
		basesoc_zero_clear <= 1'd1;
	end
end
assign basesoc_eventmanager_pending_w = basesoc_zero_pending;
assign basesoc_irq = (basesoc_eventmanager_pending_w & basesoc_eventmanager_storage);
assign basesoc_zero_status = basesoc_zero_trigger;
assign por_clk = sys_clk;
assign sdram_full_rd_clk = sdram_full_wr_clk;
assign crg_clk8x_rd_strb = crg_clk8x_wr_strb;
assign git_status = 154'd17598278262155879883707433868560991407619451042;
assign platform_status = 63'd8030045032339734528;
assign target_status = 63'd7089074166086762496;
assign opsis_i2c_fx2_reset_o = 1'd0;
always @(*) begin
	opsis_i2c_i2cpads0_sda_i <= 1'd0;
	opsisi2c_sda_o <= 1'd0;
	opsis_i2c_i2cpads0_scl_i <= 1'd0;
	opsisi2c_sda_oe <= 1'd0;
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
always @(*) begin
	opsis_i2c_sda_drv <= 1'd0;
	if (opsis_i2c_zero_drv) begin
		opsis_i2c_sda_drv <= 1'd1;
	end else begin
		if (opsis_i2c_data_drv) begin
			opsis_i2c_sda_drv <= (~opsis_i2c_data_bit);
		end
	end
end
always @(*) begin
	opsis_i2c_data_drv_stop <= 1'd0;
	opsis_i2c_shift_reg_we <= 1'd0;
	opsis_i2c_shift_reg_dat_w <= 8'd0;
	opsis_i2c_status_we <= 1'd0;
	opsis_i2c_status_dat_w <= 2'd0;
	opsisi2c_next_state <= 4'd0;
	opsis_i2c_counter_reset <= 1'd0;
	opsis_i2c_update_is_read <= 1'd0;
	opsis_i2c_zero_drv <= 1'd0;
	opsis_i2c_pause_drv <= 1'd0;
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
end
assign fx2_serial_tx = tx;
assign rx = fx2_serial_rx;
assign uart_tx_fifo_sink_valid = uart_rxtx_re;
assign uart_tx_fifo_sink_payload_data = uart_rxtx_r;
assign uart_txfull_status = (~uart_tx_fifo_sink_ready);
assign phy_sink_valid = uart_tx_fifo_source_valid;
assign uart_tx_fifo_source_ready = phy_sink_ready;
assign phy_sink_first = uart_tx_fifo_source_first;
assign phy_sink_last = uart_tx_fifo_source_last;
assign phy_sink_payload_data = uart_tx_fifo_source_payload_data;
assign uart_tx_trigger = (~uart_tx_fifo_sink_ready);
assign uart_rx_fifo_sink_valid = phy_source_valid;
assign phy_source_ready = uart_rx_fifo_sink_ready;
assign uart_rx_fifo_sink_first = phy_source_first;
assign uart_rx_fifo_sink_last = phy_source_last;
assign uart_rx_fifo_sink_payload_data = phy_source_payload_data;
assign uart_rxempty_status = (~uart_rx_fifo_source_valid);
assign uart_rxtx_w = uart_rx_fifo_source_payload_data;
assign uart_rx_fifo_source_ready = uart_rx_clear;
assign uart_rx_trigger = (~uart_rx_fifo_source_valid);
always @(*) begin
	uart_tx_clear <= 1'd0;
	if ((uart_pending_re & uart_pending_r[0])) begin
		uart_tx_clear <= 1'd1;
	end
end
always @(*) begin
	uart_status_w <= 2'd0;
	uart_status_w[0] <= uart_tx_status;
	uart_status_w[1] <= uart_rx_status;
end
always @(*) begin
	uart_rx_clear <= 1'd0;
	if ((uart_pending_re & uart_pending_r[1])) begin
		uart_rx_clear <= 1'd1;
	end
end
always @(*) begin
	uart_pending_w <= 2'd0;
	uart_pending_w[0] <= uart_tx_pending;
	uart_pending_w[1] <= uart_rx_pending;
end
assign uart_irq = ((uart_pending_w[0] & uart_storage[0]) | (uart_pending_w[1] & uart_storage[1]));
assign uart_tx_status = uart_tx_trigger;
assign uart_rx_status = uart_rx_trigger;
assign uart_tx_fifo_syncfifo_din = {uart_tx_fifo_fifo_in_last, uart_tx_fifo_fifo_in_first, uart_tx_fifo_fifo_in_payload_data};
assign {uart_tx_fifo_fifo_out_last, uart_tx_fifo_fifo_out_first, uart_tx_fifo_fifo_out_payload_data} = uart_tx_fifo_syncfifo_dout;
assign uart_tx_fifo_sink_ready = uart_tx_fifo_syncfifo_writable;
assign uart_tx_fifo_syncfifo_we = uart_tx_fifo_sink_valid;
assign uart_tx_fifo_fifo_in_first = uart_tx_fifo_sink_first;
assign uart_tx_fifo_fifo_in_last = uart_tx_fifo_sink_last;
assign uart_tx_fifo_fifo_in_payload_data = uart_tx_fifo_sink_payload_data;
assign uart_tx_fifo_source_valid = uart_tx_fifo_syncfifo_readable;
assign uart_tx_fifo_source_first = uart_tx_fifo_fifo_out_first;
assign uart_tx_fifo_source_last = uart_tx_fifo_fifo_out_last;
assign uart_tx_fifo_source_payload_data = uart_tx_fifo_fifo_out_payload_data;
assign uart_tx_fifo_syncfifo_re = uart_tx_fifo_source_ready;
always @(*) begin
	uart_tx_fifo_wrport_adr <= 4'd0;
	if (uart_tx_fifo_replace) begin
		uart_tx_fifo_wrport_adr <= (uart_tx_fifo_produce - 1'd1);
	end else begin
		uart_tx_fifo_wrport_adr <= uart_tx_fifo_produce;
	end
end
assign uart_tx_fifo_wrport_dat_w = uart_tx_fifo_syncfifo_din;
assign uart_tx_fifo_wrport_we = (uart_tx_fifo_syncfifo_we & (uart_tx_fifo_syncfifo_writable | uart_tx_fifo_replace));
assign uart_tx_fifo_do_read = (uart_tx_fifo_syncfifo_readable & uart_tx_fifo_syncfifo_re);
assign uart_tx_fifo_rdport_adr = uart_tx_fifo_consume;
assign uart_tx_fifo_syncfifo_dout = uart_tx_fifo_rdport_dat_r;
assign uart_tx_fifo_syncfifo_writable = (uart_tx_fifo_level != 5'd16);
assign uart_tx_fifo_syncfifo_readable = (uart_tx_fifo_level != 1'd0);
assign uart_rx_fifo_syncfifo_din = {uart_rx_fifo_fifo_in_last, uart_rx_fifo_fifo_in_first, uart_rx_fifo_fifo_in_payload_data};
assign {uart_rx_fifo_fifo_out_last, uart_rx_fifo_fifo_out_first, uart_rx_fifo_fifo_out_payload_data} = uart_rx_fifo_syncfifo_dout;
assign uart_rx_fifo_sink_ready = uart_rx_fifo_syncfifo_writable;
assign uart_rx_fifo_syncfifo_we = uart_rx_fifo_sink_valid;
assign uart_rx_fifo_fifo_in_first = uart_rx_fifo_sink_first;
assign uart_rx_fifo_fifo_in_last = uart_rx_fifo_sink_last;
assign uart_rx_fifo_fifo_in_payload_data = uart_rx_fifo_sink_payload_data;
assign uart_rx_fifo_source_valid = uart_rx_fifo_syncfifo_readable;
assign uart_rx_fifo_source_first = uart_rx_fifo_fifo_out_first;
assign uart_rx_fifo_source_last = uart_rx_fifo_fifo_out_last;
assign uart_rx_fifo_source_payload_data = uart_rx_fifo_fifo_out_payload_data;
assign uart_rx_fifo_syncfifo_re = uart_rx_fifo_source_ready;
always @(*) begin
	uart_rx_fifo_wrport_adr <= 4'd0;
	if (uart_rx_fifo_replace) begin
		uart_rx_fifo_wrport_adr <= (uart_rx_fifo_produce - 1'd1);
	end else begin
		uart_rx_fifo_wrport_adr <= uart_rx_fifo_produce;
	end
end
assign uart_rx_fifo_wrport_dat_w = uart_rx_fifo_syncfifo_din;
assign uart_rx_fifo_wrport_we = (uart_rx_fifo_syncfifo_we & (uart_rx_fifo_syncfifo_writable | uart_rx_fifo_replace));
assign uart_rx_fifo_do_read = (uart_rx_fifo_syncfifo_readable & uart_rx_fifo_syncfifo_re);
assign uart_rx_fifo_rdport_adr = uart_rx_fifo_consume;
assign uart_rx_fifo_syncfifo_dout = uart_rx_fifo_rdport_dat_r;
assign uart_rx_fifo_syncfifo_writable = (uart_rx_fifo_level != 5'd16);
assign uart_rx_fifo_syncfifo_readable = (uart_rx_fifo_level != 1'd0);
assign spiflash_bus_dat_r = spiflash_sr;
always @(*) begin
	spiflash4x_cs_n <= 1'd0;
	spiflash4x_clk <= 1'd0;
	spiflash_status <= 1'd0;
	spiflash_o <= 4'd0;
	spiflash_oe <= 1'd0;
	if (spiflash_bitbang_en_storage) begin
		spiflash4x_clk <= spiflash_bitbang_storage[1];
		spiflash4x_cs_n <= spiflash_bitbang_storage[2];
		if (spiflash_bitbang_storage[3]) begin
			spiflash_oe <= 1'd0;
		end else begin
			spiflash_oe <= 1'd1;
		end
		if (spiflash_bitbang_storage[1]) begin
			spiflash_status <= spiflash_i0[1];
		end
		spiflash_o <= {{3{1'd1}}, spiflash_bitbang_storage[0]};
	end else begin
		spiflash4x_clk <= spiflash_clk;
		spiflash4x_cs_n <= spiflash_cs_n;
		spiflash_o <= spiflash_sr[31:28];
		spiflash_oe <= spiflash_dq_oe;
	end
end
assign front_panel_switches = (~pwrsw);
assign hdled = (~front_panel_leds[0]);
assign pwled = (~front_panel_leds[1]);
assign front_panel_wait = front_panel_switches;
assign front_panel_reset = front_panel_done;
assign front_panel_leds = front_panel_leds_storage;
assign front_panel_done = (front_panel_count == 1'd0);
always @(*) begin
	half_rate_phy_dfi_p1_rddata_en <= 1'd0;
	half_rate_phy_dfi_p0_address <= 15'd0;
	half_rate_phy_dfi_p0_bank <= 3'd0;
	half_rate_phy_dfi_p0_cas_n <= 1'd1;
	half_rate_phy_dfi_p0_cs_n <= 1'd1;
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
assign dfi_dfi_p0_address = sdram_master_p0_address;
assign dfi_dfi_p0_bank = sdram_master_p0_bank;
assign dfi_dfi_p0_cas_n = sdram_master_p0_cas_n;
assign dfi_dfi_p0_cs_n = sdram_master_p0_cs_n;
assign dfi_dfi_p0_ras_n = sdram_master_p0_ras_n;
assign dfi_dfi_p0_we_n = sdram_master_p0_we_n;
assign dfi_dfi_p0_cke = sdram_master_p0_cke;
assign dfi_dfi_p0_odt = sdram_master_p0_odt;
assign dfi_dfi_p0_reset_n = sdram_master_p0_reset_n;
assign dfi_dfi_p0_wrdata = sdram_master_p0_wrdata;
assign dfi_dfi_p0_wrdata_en = sdram_master_p0_wrdata_en;
assign dfi_dfi_p0_wrdata_mask = sdram_master_p0_wrdata_mask;
assign dfi_dfi_p0_rddata_en = sdram_master_p0_rddata_en;
assign sdram_master_p0_rddata = dfi_dfi_p0_rddata;
assign sdram_master_p0_rddata_valid = dfi_dfi_p0_rddata_valid;
assign dfi_dfi_p1_address = sdram_master_p1_address;
assign dfi_dfi_p1_bank = sdram_master_p1_bank;
assign dfi_dfi_p1_cas_n = sdram_master_p1_cas_n;
assign dfi_dfi_p1_cs_n = sdram_master_p1_cs_n;
assign dfi_dfi_p1_ras_n = sdram_master_p1_ras_n;
assign dfi_dfi_p1_we_n = sdram_master_p1_we_n;
assign dfi_dfi_p1_cke = sdram_master_p1_cke;
assign dfi_dfi_p1_odt = sdram_master_p1_odt;
assign dfi_dfi_p1_reset_n = sdram_master_p1_reset_n;
assign dfi_dfi_p1_wrdata = sdram_master_p1_wrdata;
assign dfi_dfi_p1_wrdata_en = sdram_master_p1_wrdata_en;
assign dfi_dfi_p1_wrdata_mask = sdram_master_p1_wrdata_mask;
assign dfi_dfi_p1_rddata_en = sdram_master_p1_rddata_en;
assign sdram_master_p1_rddata = dfi_dfi_p1_rddata;
assign sdram_master_p1_rddata_valid = dfi_dfi_p1_rddata_valid;
assign dfi_dfi_p2_address = sdram_master_p2_address;
assign dfi_dfi_p2_bank = sdram_master_p2_bank;
assign dfi_dfi_p2_cas_n = sdram_master_p2_cas_n;
assign dfi_dfi_p2_cs_n = sdram_master_p2_cs_n;
assign dfi_dfi_p2_ras_n = sdram_master_p2_ras_n;
assign dfi_dfi_p2_we_n = sdram_master_p2_we_n;
assign dfi_dfi_p2_cke = sdram_master_p2_cke;
assign dfi_dfi_p2_odt = sdram_master_p2_odt;
assign dfi_dfi_p2_reset_n = sdram_master_p2_reset_n;
assign dfi_dfi_p2_wrdata = sdram_master_p2_wrdata;
assign dfi_dfi_p2_wrdata_en = sdram_master_p2_wrdata_en;
assign dfi_dfi_p2_wrdata_mask = sdram_master_p2_wrdata_mask;
assign dfi_dfi_p2_rddata_en = sdram_master_p2_rddata_en;
assign sdram_master_p2_rddata = dfi_dfi_p2_rddata;
assign sdram_master_p2_rddata_valid = dfi_dfi_p2_rddata_valid;
assign dfi_dfi_p3_address = sdram_master_p3_address;
assign dfi_dfi_p3_bank = sdram_master_p3_bank;
assign dfi_dfi_p3_cas_n = sdram_master_p3_cas_n;
assign dfi_dfi_p3_cs_n = sdram_master_p3_cs_n;
assign dfi_dfi_p3_ras_n = sdram_master_p3_ras_n;
assign dfi_dfi_p3_we_n = sdram_master_p3_we_n;
assign dfi_dfi_p3_cke = sdram_master_p3_cke;
assign dfi_dfi_p3_odt = sdram_master_p3_odt;
assign dfi_dfi_p3_reset_n = sdram_master_p3_reset_n;
assign dfi_dfi_p3_wrdata = sdram_master_p3_wrdata;
assign dfi_dfi_p3_wrdata_en = sdram_master_p3_wrdata_en;
assign dfi_dfi_p3_wrdata_mask = sdram_master_p3_wrdata_mask;
assign dfi_dfi_p3_rddata_en = sdram_master_p3_rddata_en;
assign sdram_master_p3_rddata = dfi_dfi_p3_rddata;
assign sdram_master_p3_rddata_valid = dfi_dfi_p3_rddata_valid;
assign sdram_slave_p0_address = sdram_dfi_p0_address;
assign sdram_slave_p0_bank = sdram_dfi_p0_bank;
assign sdram_slave_p0_cas_n = sdram_dfi_p0_cas_n;
assign sdram_slave_p0_cs_n = sdram_dfi_p0_cs_n;
assign sdram_slave_p0_ras_n = sdram_dfi_p0_ras_n;
assign sdram_slave_p0_we_n = sdram_dfi_p0_we_n;
assign sdram_slave_p0_cke = sdram_dfi_p0_cke;
assign sdram_slave_p0_odt = sdram_dfi_p0_odt;
assign sdram_slave_p0_reset_n = sdram_dfi_p0_reset_n;
assign sdram_slave_p0_wrdata = sdram_dfi_p0_wrdata;
assign sdram_slave_p0_wrdata_en = sdram_dfi_p0_wrdata_en;
assign sdram_slave_p0_wrdata_mask = sdram_dfi_p0_wrdata_mask;
assign sdram_slave_p0_rddata_en = sdram_dfi_p0_rddata_en;
assign sdram_dfi_p0_rddata = sdram_slave_p0_rddata;
assign sdram_dfi_p0_rddata_valid = sdram_slave_p0_rddata_valid;
assign sdram_slave_p1_address = sdram_dfi_p1_address;
assign sdram_slave_p1_bank = sdram_dfi_p1_bank;
assign sdram_slave_p1_cas_n = sdram_dfi_p1_cas_n;
assign sdram_slave_p1_cs_n = sdram_dfi_p1_cs_n;
assign sdram_slave_p1_ras_n = sdram_dfi_p1_ras_n;
assign sdram_slave_p1_we_n = sdram_dfi_p1_we_n;
assign sdram_slave_p1_cke = sdram_dfi_p1_cke;
assign sdram_slave_p1_odt = sdram_dfi_p1_odt;
assign sdram_slave_p1_reset_n = sdram_dfi_p1_reset_n;
assign sdram_slave_p1_wrdata = sdram_dfi_p1_wrdata;
assign sdram_slave_p1_wrdata_en = sdram_dfi_p1_wrdata_en;
assign sdram_slave_p1_wrdata_mask = sdram_dfi_p1_wrdata_mask;
assign sdram_slave_p1_rddata_en = sdram_dfi_p1_rddata_en;
assign sdram_dfi_p1_rddata = sdram_slave_p1_rddata;
assign sdram_dfi_p1_rddata_valid = sdram_slave_p1_rddata_valid;
assign sdram_slave_p2_address = sdram_dfi_p2_address;
assign sdram_slave_p2_bank = sdram_dfi_p2_bank;
assign sdram_slave_p2_cas_n = sdram_dfi_p2_cas_n;
assign sdram_slave_p2_cs_n = sdram_dfi_p2_cs_n;
assign sdram_slave_p2_ras_n = sdram_dfi_p2_ras_n;
assign sdram_slave_p2_we_n = sdram_dfi_p2_we_n;
assign sdram_slave_p2_cke = sdram_dfi_p2_cke;
assign sdram_slave_p2_odt = sdram_dfi_p2_odt;
assign sdram_slave_p2_reset_n = sdram_dfi_p2_reset_n;
assign sdram_slave_p2_wrdata = sdram_dfi_p2_wrdata;
assign sdram_slave_p2_wrdata_en = sdram_dfi_p2_wrdata_en;
assign sdram_slave_p2_wrdata_mask = sdram_dfi_p2_wrdata_mask;
assign sdram_slave_p2_rddata_en = sdram_dfi_p2_rddata_en;
assign sdram_dfi_p2_rddata = sdram_slave_p2_rddata;
assign sdram_dfi_p2_rddata_valid = sdram_slave_p2_rddata_valid;
assign sdram_slave_p3_address = sdram_dfi_p3_address;
assign sdram_slave_p3_bank = sdram_dfi_p3_bank;
assign sdram_slave_p3_cas_n = sdram_dfi_p3_cas_n;
assign sdram_slave_p3_cs_n = sdram_dfi_p3_cs_n;
assign sdram_slave_p3_ras_n = sdram_dfi_p3_ras_n;
assign sdram_slave_p3_we_n = sdram_dfi_p3_we_n;
assign sdram_slave_p3_cke = sdram_dfi_p3_cke;
assign sdram_slave_p3_odt = sdram_dfi_p3_odt;
assign sdram_slave_p3_reset_n = sdram_dfi_p3_reset_n;
assign sdram_slave_p3_wrdata = sdram_dfi_p3_wrdata;
assign sdram_slave_p3_wrdata_en = sdram_dfi_p3_wrdata_en;
assign sdram_slave_p3_wrdata_mask = sdram_dfi_p3_wrdata_mask;
assign sdram_slave_p3_rddata_en = sdram_dfi_p3_rddata_en;
assign sdram_dfi_p3_rddata = sdram_slave_p3_rddata;
assign sdram_dfi_p3_rddata_valid = sdram_slave_p3_rddata_valid;
always @(*) begin
	sdram_slave_p2_rddata <= 32'd0;
	sdram_slave_p2_rddata_valid <= 1'd0;
	sdram_slave_p3_rddata <= 32'd0;
	sdram_slave_p3_rddata_valid <= 1'd0;
	sdram_master_p0_address <= 14'd0;
	sdram_master_p0_bank <= 3'd0;
	sdram_master_p0_cas_n <= 1'd1;
	sdram_master_p0_cs_n <= 1'd1;
	sdram_master_p0_ras_n <= 1'd1;
	sdram_master_p0_we_n <= 1'd1;
	sdram_master_p0_cke <= 1'd0;
	sdram_master_p0_odt <= 1'd0;
	sdram_master_p0_reset_n <= 1'd0;
	sdram_master_p0_wrdata <= 32'd0;
	sdram_master_p0_wrdata_en <= 1'd0;
	sdram_master_p0_wrdata_mask <= 4'd0;
	sdram_master_p0_rddata_en <= 1'd0;
	sdram_master_p1_address <= 14'd0;
	sdram_master_p1_bank <= 3'd0;
	sdram_master_p1_cas_n <= 1'd1;
	sdram_master_p1_cs_n <= 1'd1;
	sdram_master_p1_ras_n <= 1'd1;
	sdram_master_p1_we_n <= 1'd1;
	sdram_master_p1_cke <= 1'd0;
	sdram_master_p1_odt <= 1'd0;
	sdram_master_p1_reset_n <= 1'd0;
	sdram_master_p1_wrdata <= 32'd0;
	sdram_master_p1_wrdata_en <= 1'd0;
	sdram_master_p1_wrdata_mask <= 4'd0;
	sdram_master_p1_rddata_en <= 1'd0;
	sdram_master_p2_address <= 14'd0;
	sdram_master_p2_bank <= 3'd0;
	sdram_master_p2_cas_n <= 1'd1;
	sdram_master_p2_cs_n <= 1'd1;
	sdram_master_p2_ras_n <= 1'd1;
	sdram_master_p2_we_n <= 1'd1;
	sdram_master_p2_cke <= 1'd0;
	sdram_master_p2_odt <= 1'd0;
	sdram_master_p2_reset_n <= 1'd0;
	sdram_master_p2_wrdata <= 32'd0;
	sdram_master_p2_wrdata_en <= 1'd0;
	sdram_master_p2_wrdata_mask <= 4'd0;
	sdram_master_p2_rddata_en <= 1'd0;
	sdram_master_p3_address <= 14'd0;
	sdram_master_p3_bank <= 3'd0;
	sdram_master_p3_cas_n <= 1'd1;
	sdram_master_p3_cs_n <= 1'd1;
	sdram_master_p3_ras_n <= 1'd1;
	sdram_master_p3_we_n <= 1'd1;
	sdram_master_p3_cke <= 1'd0;
	sdram_master_p3_odt <= 1'd0;
	sdram_master_p3_reset_n <= 1'd0;
	sdram_master_p3_wrdata <= 32'd0;
	sdram_master_p3_wrdata_en <= 1'd0;
	sdram_master_p3_wrdata_mask <= 4'd0;
	sdram_master_p3_rddata_en <= 1'd0;
	sdram_inti_p0_rddata <= 32'd0;
	sdram_inti_p0_rddata_valid <= 1'd0;
	sdram_inti_p1_rddata <= 32'd0;
	sdram_inti_p1_rddata_valid <= 1'd0;
	sdram_inti_p2_rddata <= 32'd0;
	sdram_inti_p2_rddata_valid <= 1'd0;
	sdram_inti_p3_rddata <= 32'd0;
	sdram_inti_p3_rddata_valid <= 1'd0;
	sdram_slave_p0_rddata <= 32'd0;
	sdram_slave_p0_rddata_valid <= 1'd0;
	sdram_slave_p1_rddata <= 32'd0;
	sdram_slave_p1_rddata_valid <= 1'd0;
	if (sdram_storage[0]) begin
		sdram_master_p0_address <= sdram_slave_p0_address;
		sdram_master_p0_bank <= sdram_slave_p0_bank;
		sdram_master_p0_cas_n <= sdram_slave_p0_cas_n;
		sdram_master_p0_cs_n <= sdram_slave_p0_cs_n;
		sdram_master_p0_ras_n <= sdram_slave_p0_ras_n;
		sdram_master_p0_we_n <= sdram_slave_p0_we_n;
		sdram_master_p0_cke <= sdram_slave_p0_cke;
		sdram_master_p0_odt <= sdram_slave_p0_odt;
		sdram_master_p0_reset_n <= sdram_slave_p0_reset_n;
		sdram_master_p0_wrdata <= sdram_slave_p0_wrdata;
		sdram_master_p0_wrdata_en <= sdram_slave_p0_wrdata_en;
		sdram_master_p0_wrdata_mask <= sdram_slave_p0_wrdata_mask;
		sdram_master_p0_rddata_en <= sdram_slave_p0_rddata_en;
		sdram_slave_p0_rddata <= sdram_master_p0_rddata;
		sdram_slave_p0_rddata_valid <= sdram_master_p0_rddata_valid;
		sdram_master_p1_address <= sdram_slave_p1_address;
		sdram_master_p1_bank <= sdram_slave_p1_bank;
		sdram_master_p1_cas_n <= sdram_slave_p1_cas_n;
		sdram_master_p1_cs_n <= sdram_slave_p1_cs_n;
		sdram_master_p1_ras_n <= sdram_slave_p1_ras_n;
		sdram_master_p1_we_n <= sdram_slave_p1_we_n;
		sdram_master_p1_cke <= sdram_slave_p1_cke;
		sdram_master_p1_odt <= sdram_slave_p1_odt;
		sdram_master_p1_reset_n <= sdram_slave_p1_reset_n;
		sdram_master_p1_wrdata <= sdram_slave_p1_wrdata;
		sdram_master_p1_wrdata_en <= sdram_slave_p1_wrdata_en;
		sdram_master_p1_wrdata_mask <= sdram_slave_p1_wrdata_mask;
		sdram_master_p1_rddata_en <= sdram_slave_p1_rddata_en;
		sdram_slave_p1_rddata <= sdram_master_p1_rddata;
		sdram_slave_p1_rddata_valid <= sdram_master_p1_rddata_valid;
		sdram_master_p2_address <= sdram_slave_p2_address;
		sdram_master_p2_bank <= sdram_slave_p2_bank;
		sdram_master_p2_cas_n <= sdram_slave_p2_cas_n;
		sdram_master_p2_cs_n <= sdram_slave_p2_cs_n;
		sdram_master_p2_ras_n <= sdram_slave_p2_ras_n;
		sdram_master_p2_we_n <= sdram_slave_p2_we_n;
		sdram_master_p2_cke <= sdram_slave_p2_cke;
		sdram_master_p2_odt <= sdram_slave_p2_odt;
		sdram_master_p2_reset_n <= sdram_slave_p2_reset_n;
		sdram_master_p2_wrdata <= sdram_slave_p2_wrdata;
		sdram_master_p2_wrdata_en <= sdram_slave_p2_wrdata_en;
		sdram_master_p2_wrdata_mask <= sdram_slave_p2_wrdata_mask;
		sdram_master_p2_rddata_en <= sdram_slave_p2_rddata_en;
		sdram_slave_p2_rddata <= sdram_master_p2_rddata;
		sdram_slave_p2_rddata_valid <= sdram_master_p2_rddata_valid;
		sdram_master_p3_address <= sdram_slave_p3_address;
		sdram_master_p3_bank <= sdram_slave_p3_bank;
		sdram_master_p3_cas_n <= sdram_slave_p3_cas_n;
		sdram_master_p3_cs_n <= sdram_slave_p3_cs_n;
		sdram_master_p3_ras_n <= sdram_slave_p3_ras_n;
		sdram_master_p3_we_n <= sdram_slave_p3_we_n;
		sdram_master_p3_cke <= sdram_slave_p3_cke;
		sdram_master_p3_odt <= sdram_slave_p3_odt;
		sdram_master_p3_reset_n <= sdram_slave_p3_reset_n;
		sdram_master_p3_wrdata <= sdram_slave_p3_wrdata;
		sdram_master_p3_wrdata_en <= sdram_slave_p3_wrdata_en;
		sdram_master_p3_wrdata_mask <= sdram_slave_p3_wrdata_mask;
		sdram_master_p3_rddata_en <= sdram_slave_p3_rddata_en;
		sdram_slave_p3_rddata <= sdram_master_p3_rddata;
		sdram_slave_p3_rddata_valid <= sdram_master_p3_rddata_valid;
	end else begin
		sdram_master_p0_address <= sdram_inti_p0_address;
		sdram_master_p0_bank <= sdram_inti_p0_bank;
		sdram_master_p0_cas_n <= sdram_inti_p0_cas_n;
		sdram_master_p0_cs_n <= sdram_inti_p0_cs_n;
		sdram_master_p0_ras_n <= sdram_inti_p0_ras_n;
		sdram_master_p0_we_n <= sdram_inti_p0_we_n;
		sdram_master_p0_cke <= sdram_inti_p0_cke;
		sdram_master_p0_odt <= sdram_inti_p0_odt;
		sdram_master_p0_reset_n <= sdram_inti_p0_reset_n;
		sdram_master_p0_wrdata <= sdram_inti_p0_wrdata;
		sdram_master_p0_wrdata_en <= sdram_inti_p0_wrdata_en;
		sdram_master_p0_wrdata_mask <= sdram_inti_p0_wrdata_mask;
		sdram_master_p0_rddata_en <= sdram_inti_p0_rddata_en;
		sdram_inti_p0_rddata <= sdram_master_p0_rddata;
		sdram_inti_p0_rddata_valid <= sdram_master_p0_rddata_valid;
		sdram_master_p1_address <= sdram_inti_p1_address;
		sdram_master_p1_bank <= sdram_inti_p1_bank;
		sdram_master_p1_cas_n <= sdram_inti_p1_cas_n;
		sdram_master_p1_cs_n <= sdram_inti_p1_cs_n;
		sdram_master_p1_ras_n <= sdram_inti_p1_ras_n;
		sdram_master_p1_we_n <= sdram_inti_p1_we_n;
		sdram_master_p1_cke <= sdram_inti_p1_cke;
		sdram_master_p1_odt <= sdram_inti_p1_odt;
		sdram_master_p1_reset_n <= sdram_inti_p1_reset_n;
		sdram_master_p1_wrdata <= sdram_inti_p1_wrdata;
		sdram_master_p1_wrdata_en <= sdram_inti_p1_wrdata_en;
		sdram_master_p1_wrdata_mask <= sdram_inti_p1_wrdata_mask;
		sdram_master_p1_rddata_en <= sdram_inti_p1_rddata_en;
		sdram_inti_p1_rddata <= sdram_master_p1_rddata;
		sdram_inti_p1_rddata_valid <= sdram_master_p1_rddata_valid;
		sdram_master_p2_address <= sdram_inti_p2_address;
		sdram_master_p2_bank <= sdram_inti_p2_bank;
		sdram_master_p2_cas_n <= sdram_inti_p2_cas_n;
		sdram_master_p2_cs_n <= sdram_inti_p2_cs_n;
		sdram_master_p2_ras_n <= sdram_inti_p2_ras_n;
		sdram_master_p2_we_n <= sdram_inti_p2_we_n;
		sdram_master_p2_cke <= sdram_inti_p2_cke;
		sdram_master_p2_odt <= sdram_inti_p2_odt;
		sdram_master_p2_reset_n <= sdram_inti_p2_reset_n;
		sdram_master_p2_wrdata <= sdram_inti_p2_wrdata;
		sdram_master_p2_wrdata_en <= sdram_inti_p2_wrdata_en;
		sdram_master_p2_wrdata_mask <= sdram_inti_p2_wrdata_mask;
		sdram_master_p2_rddata_en <= sdram_inti_p2_rddata_en;
		sdram_inti_p2_rddata <= sdram_master_p2_rddata;
		sdram_inti_p2_rddata_valid <= sdram_master_p2_rddata_valid;
		sdram_master_p3_address <= sdram_inti_p3_address;
		sdram_master_p3_bank <= sdram_inti_p3_bank;
		sdram_master_p3_cas_n <= sdram_inti_p3_cas_n;
		sdram_master_p3_cs_n <= sdram_inti_p3_cs_n;
		sdram_master_p3_ras_n <= sdram_inti_p3_ras_n;
		sdram_master_p3_we_n <= sdram_inti_p3_we_n;
		sdram_master_p3_cke <= sdram_inti_p3_cke;
		sdram_master_p3_odt <= sdram_inti_p3_odt;
		sdram_master_p3_reset_n <= sdram_inti_p3_reset_n;
		sdram_master_p3_wrdata <= sdram_inti_p3_wrdata;
		sdram_master_p3_wrdata_en <= sdram_inti_p3_wrdata_en;
		sdram_master_p3_wrdata_mask <= sdram_inti_p3_wrdata_mask;
		sdram_master_p3_rddata_en <= sdram_inti_p3_rddata_en;
		sdram_inti_p3_rddata <= sdram_master_p3_rddata;
		sdram_inti_p3_rddata_valid <= sdram_master_p3_rddata_valid;
	end
end
assign sdram_inti_p0_cke = sdram_storage[1];
assign sdram_inti_p1_cke = sdram_storage[1];
assign sdram_inti_p2_cke = sdram_storage[1];
assign sdram_inti_p3_cke = sdram_storage[1];
assign sdram_inti_p0_odt = sdram_storage[2];
assign sdram_inti_p1_odt = sdram_storage[2];
assign sdram_inti_p2_odt = sdram_storage[2];
assign sdram_inti_p3_odt = sdram_storage[2];
assign sdram_inti_p0_reset_n = sdram_storage[3];
assign sdram_inti_p1_reset_n = sdram_storage[3];
assign sdram_inti_p2_reset_n = sdram_storage[3];
assign sdram_inti_p3_reset_n = sdram_storage[3];
always @(*) begin
	sdram_inti_p0_cas_n <= 1'd1;
	sdram_inti_p0_cs_n <= 1'd1;
	sdram_inti_p0_ras_n <= 1'd1;
	sdram_inti_p0_we_n <= 1'd1;
	if (sdram_phaseinjector0_command_issue_re) begin
		sdram_inti_p0_cs_n <= (~sdram_phaseinjector0_command_storage[0]);
		sdram_inti_p0_we_n <= (~sdram_phaseinjector0_command_storage[1]);
		sdram_inti_p0_cas_n <= (~sdram_phaseinjector0_command_storage[2]);
		sdram_inti_p0_ras_n <= (~sdram_phaseinjector0_command_storage[3]);
	end else begin
		sdram_inti_p0_cs_n <= 1'd1;
		sdram_inti_p0_we_n <= 1'd1;
		sdram_inti_p0_cas_n <= 1'd1;
		sdram_inti_p0_ras_n <= 1'd1;
	end
end
assign sdram_inti_p0_address = sdram_phaseinjector0_address_storage;
assign sdram_inti_p0_bank = sdram_phaseinjector0_baddress_storage;
assign sdram_inti_p0_wrdata_en = (sdram_phaseinjector0_command_issue_re & sdram_phaseinjector0_command_storage[4]);
assign sdram_inti_p0_rddata_en = (sdram_phaseinjector0_command_issue_re & sdram_phaseinjector0_command_storage[5]);
assign sdram_inti_p0_wrdata = sdram_phaseinjector0_wrdata_storage;
assign sdram_inti_p0_wrdata_mask = 1'd0;
always @(*) begin
	sdram_inti_p1_cs_n <= 1'd1;
	sdram_inti_p1_ras_n <= 1'd1;
	sdram_inti_p1_we_n <= 1'd1;
	sdram_inti_p1_cas_n <= 1'd1;
	if (sdram_phaseinjector1_command_issue_re) begin
		sdram_inti_p1_cs_n <= (~sdram_phaseinjector1_command_storage[0]);
		sdram_inti_p1_we_n <= (~sdram_phaseinjector1_command_storage[1]);
		sdram_inti_p1_cas_n <= (~sdram_phaseinjector1_command_storage[2]);
		sdram_inti_p1_ras_n <= (~sdram_phaseinjector1_command_storage[3]);
	end else begin
		sdram_inti_p1_cs_n <= 1'd1;
		sdram_inti_p1_we_n <= 1'd1;
		sdram_inti_p1_cas_n <= 1'd1;
		sdram_inti_p1_ras_n <= 1'd1;
	end
end
assign sdram_inti_p1_address = sdram_phaseinjector1_address_storage;
assign sdram_inti_p1_bank = sdram_phaseinjector1_baddress_storage;
assign sdram_inti_p1_wrdata_en = (sdram_phaseinjector1_command_issue_re & sdram_phaseinjector1_command_storage[4]);
assign sdram_inti_p1_rddata_en = (sdram_phaseinjector1_command_issue_re & sdram_phaseinjector1_command_storage[5]);
assign sdram_inti_p1_wrdata = sdram_phaseinjector1_wrdata_storage;
assign sdram_inti_p1_wrdata_mask = 1'd0;
always @(*) begin
	sdram_inti_p2_ras_n <= 1'd1;
	sdram_inti_p2_we_n <= 1'd1;
	sdram_inti_p2_cas_n <= 1'd1;
	sdram_inti_p2_cs_n <= 1'd1;
	if (sdram_phaseinjector2_command_issue_re) begin
		sdram_inti_p2_cs_n <= (~sdram_phaseinjector2_command_storage[0]);
		sdram_inti_p2_we_n <= (~sdram_phaseinjector2_command_storage[1]);
		sdram_inti_p2_cas_n <= (~sdram_phaseinjector2_command_storage[2]);
		sdram_inti_p2_ras_n <= (~sdram_phaseinjector2_command_storage[3]);
	end else begin
		sdram_inti_p2_cs_n <= 1'd1;
		sdram_inti_p2_we_n <= 1'd1;
		sdram_inti_p2_cas_n <= 1'd1;
		sdram_inti_p2_ras_n <= 1'd1;
	end
end
assign sdram_inti_p2_address = sdram_phaseinjector2_address_storage;
assign sdram_inti_p2_bank = sdram_phaseinjector2_baddress_storage;
assign sdram_inti_p2_wrdata_en = (sdram_phaseinjector2_command_issue_re & sdram_phaseinjector2_command_storage[4]);
assign sdram_inti_p2_rddata_en = (sdram_phaseinjector2_command_issue_re & sdram_phaseinjector2_command_storage[5]);
assign sdram_inti_p2_wrdata = sdram_phaseinjector2_wrdata_storage;
assign sdram_inti_p2_wrdata_mask = 1'd0;
always @(*) begin
	sdram_inti_p3_we_n <= 1'd1;
	sdram_inti_p3_cas_n <= 1'd1;
	sdram_inti_p3_cs_n <= 1'd1;
	sdram_inti_p3_ras_n <= 1'd1;
	if (sdram_phaseinjector3_command_issue_re) begin
		sdram_inti_p3_cs_n <= (~sdram_phaseinjector3_command_storage[0]);
		sdram_inti_p3_we_n <= (~sdram_phaseinjector3_command_storage[1]);
		sdram_inti_p3_cas_n <= (~sdram_phaseinjector3_command_storage[2]);
		sdram_inti_p3_ras_n <= (~sdram_phaseinjector3_command_storage[3]);
	end else begin
		sdram_inti_p3_cs_n <= 1'd1;
		sdram_inti_p3_we_n <= 1'd1;
		sdram_inti_p3_cas_n <= 1'd1;
		sdram_inti_p3_ras_n <= 1'd1;
	end
end
assign sdram_inti_p3_address = sdram_phaseinjector3_address_storage;
assign sdram_inti_p3_bank = sdram_phaseinjector3_baddress_storage;
assign sdram_inti_p3_wrdata_en = (sdram_phaseinjector3_command_issue_re & sdram_phaseinjector3_command_storage[4]);
assign sdram_inti_p3_rddata_en = (sdram_phaseinjector3_command_issue_re & sdram_phaseinjector3_command_storage[5]);
assign sdram_inti_p3_wrdata = sdram_phaseinjector3_wrdata_storage;
assign sdram_inti_p3_wrdata_mask = 1'd0;
assign sdram_bankmachine0_req_valid = sdram_interface_bank0_valid;
assign sdram_interface_bank0_ready = sdram_bankmachine0_req_ready;
assign sdram_bankmachine0_req_we = sdram_interface_bank0_we;
assign sdram_bankmachine0_req_adr = sdram_interface_bank0_adr;
assign sdram_interface_bank0_lock = sdram_bankmachine0_req_lock;
assign sdram_interface_bank0_wdata_ready = sdram_bankmachine0_req_wdata_ready;
assign sdram_interface_bank0_rdata_valid = sdram_bankmachine0_req_rdata_valid;
assign sdram_bankmachine1_req_valid = sdram_interface_bank1_valid;
assign sdram_interface_bank1_ready = sdram_bankmachine1_req_ready;
assign sdram_bankmachine1_req_we = sdram_interface_bank1_we;
assign sdram_bankmachine1_req_adr = sdram_interface_bank1_adr;
assign sdram_interface_bank1_lock = sdram_bankmachine1_req_lock;
assign sdram_interface_bank1_wdata_ready = sdram_bankmachine1_req_wdata_ready;
assign sdram_interface_bank1_rdata_valid = sdram_bankmachine1_req_rdata_valid;
assign sdram_bankmachine2_req_valid = sdram_interface_bank2_valid;
assign sdram_interface_bank2_ready = sdram_bankmachine2_req_ready;
assign sdram_bankmachine2_req_we = sdram_interface_bank2_we;
assign sdram_bankmachine2_req_adr = sdram_interface_bank2_adr;
assign sdram_interface_bank2_lock = sdram_bankmachine2_req_lock;
assign sdram_interface_bank2_wdata_ready = sdram_bankmachine2_req_wdata_ready;
assign sdram_interface_bank2_rdata_valid = sdram_bankmachine2_req_rdata_valid;
assign sdram_bankmachine3_req_valid = sdram_interface_bank3_valid;
assign sdram_interface_bank3_ready = sdram_bankmachine3_req_ready;
assign sdram_bankmachine3_req_we = sdram_interface_bank3_we;
assign sdram_bankmachine3_req_adr = sdram_interface_bank3_adr;
assign sdram_interface_bank3_lock = sdram_bankmachine3_req_lock;
assign sdram_interface_bank3_wdata_ready = sdram_bankmachine3_req_wdata_ready;
assign sdram_interface_bank3_rdata_valid = sdram_bankmachine3_req_rdata_valid;
assign sdram_bankmachine4_req_valid = sdram_interface_bank4_valid;
assign sdram_interface_bank4_ready = sdram_bankmachine4_req_ready;
assign sdram_bankmachine4_req_we = sdram_interface_bank4_we;
assign sdram_bankmachine4_req_adr = sdram_interface_bank4_adr;
assign sdram_interface_bank4_lock = sdram_bankmachine4_req_lock;
assign sdram_interface_bank4_wdata_ready = sdram_bankmachine4_req_wdata_ready;
assign sdram_interface_bank4_rdata_valid = sdram_bankmachine4_req_rdata_valid;
assign sdram_bankmachine5_req_valid = sdram_interface_bank5_valid;
assign sdram_interface_bank5_ready = sdram_bankmachine5_req_ready;
assign sdram_bankmachine5_req_we = sdram_interface_bank5_we;
assign sdram_bankmachine5_req_adr = sdram_interface_bank5_adr;
assign sdram_interface_bank5_lock = sdram_bankmachine5_req_lock;
assign sdram_interface_bank5_wdata_ready = sdram_bankmachine5_req_wdata_ready;
assign sdram_interface_bank5_rdata_valid = sdram_bankmachine5_req_rdata_valid;
assign sdram_bankmachine6_req_valid = sdram_interface_bank6_valid;
assign sdram_interface_bank6_ready = sdram_bankmachine6_req_ready;
assign sdram_bankmachine6_req_we = sdram_interface_bank6_we;
assign sdram_bankmachine6_req_adr = sdram_interface_bank6_adr;
assign sdram_interface_bank6_lock = sdram_bankmachine6_req_lock;
assign sdram_interface_bank6_wdata_ready = sdram_bankmachine6_req_wdata_ready;
assign sdram_interface_bank6_rdata_valid = sdram_bankmachine6_req_rdata_valid;
assign sdram_bankmachine7_req_valid = sdram_interface_bank7_valid;
assign sdram_interface_bank7_ready = sdram_bankmachine7_req_ready;
assign sdram_bankmachine7_req_we = sdram_interface_bank7_we;
assign sdram_bankmachine7_req_adr = sdram_interface_bank7_adr;
assign sdram_interface_bank7_lock = sdram_bankmachine7_req_lock;
assign sdram_interface_bank7_wdata_ready = sdram_bankmachine7_req_wdata_ready;
assign sdram_interface_bank7_rdata_valid = sdram_bankmachine7_req_rdata_valid;
assign sdram_wait = (1'd1 & (~sdram_done));
assign sdram_done = (sdram_count == 1'd0);
always @(*) begin
	refresher_next_state <= 2'd0;
	sdram_seq_start <= 1'd0;
	sdram_cmd_valid <= 1'd0;
	sdram_cmd_last <= 1'd0;
	refresher_next_state <= refresher_state;
	case (refresher_state)
		1'd1: begin
			sdram_cmd_valid <= 1'd1;
			if (sdram_cmd_ready) begin
				sdram_seq_start <= 1'd1;
				refresher_next_state <= 2'd2;
			end
		end
		2'd2: begin
			if (sdram_seq_done) begin
				sdram_cmd_last <= 1'd1;
				refresher_next_state <= 1'd0;
			end else begin
				sdram_cmd_valid <= 1'd1;
			end
		end
		default: begin
			if (sdram_done) begin
				refresher_next_state <= 1'd1;
			end
		end
	endcase
end
assign sdram_bankmachine0_cmd_buffer_lookahead_sink_valid = sdram_bankmachine0_req_valid;
assign sdram_bankmachine0_req_ready = sdram_bankmachine0_cmd_buffer_lookahead_sink_ready;
assign sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_we = sdram_bankmachine0_req_we;
assign sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_adr = sdram_bankmachine0_req_adr;
assign sdram_bankmachine0_cmd_buffer_sink_valid = sdram_bankmachine0_cmd_buffer_lookahead_source_valid;
assign sdram_bankmachine0_cmd_buffer_lookahead_source_ready = sdram_bankmachine0_cmd_buffer_sink_ready;
assign sdram_bankmachine0_cmd_buffer_sink_first = sdram_bankmachine0_cmd_buffer_lookahead_source_first;
assign sdram_bankmachine0_cmd_buffer_sink_last = sdram_bankmachine0_cmd_buffer_lookahead_source_last;
assign sdram_bankmachine0_cmd_buffer_sink_payload_we = sdram_bankmachine0_cmd_buffer_lookahead_source_payload_we;
assign sdram_bankmachine0_cmd_buffer_sink_payload_adr = sdram_bankmachine0_cmd_buffer_lookahead_source_payload_adr;
assign sdram_bankmachine0_cmd_buffer_source_ready = (sdram_bankmachine0_req_wdata_ready | sdram_bankmachine0_req_rdata_valid);
assign sdram_bankmachine0_req_lock = (sdram_bankmachine0_cmd_buffer_lookahead_source_valid | sdram_bankmachine0_cmd_buffer_source_valid);
assign sdram_bankmachine0_hit = (sdram_bankmachine0_openrow == sdram_bankmachine0_cmd_buffer_source_payload_adr[20:7]);
assign sdram_bankmachine0_cmd_payload_ba = 1'd0;
always @(*) begin
	sdram_bankmachine0_cmd_payload_a <= 14'd0;
	if (sdram_bankmachine0_sel_row_adr) begin
		sdram_bankmachine0_cmd_payload_a <= sdram_bankmachine0_cmd_buffer_source_payload_adr[20:7];
	end else begin
		sdram_bankmachine0_cmd_payload_a <= ((sdram_bankmachine0_auto_precharge <<< 4'd10) | {sdram_bankmachine0_cmd_buffer_source_payload_adr[6:0], {3{1'd0}}});
	end
end
assign sdram_bankmachine0_wait = (~((sdram_bankmachine0_cmd_valid & sdram_bankmachine0_cmd_ready) & sdram_bankmachine0_cmd_payload_is_write));
always @(*) begin
	sdram_bankmachine0_auto_precharge <= 1'd0;
	if ((sdram_bankmachine0_cmd_buffer_lookahead_source_valid & sdram_bankmachine0_cmd_buffer_source_valid)) begin
		if ((sdram_bankmachine0_cmd_buffer_lookahead_source_payload_adr[20:7] != sdram_bankmachine0_cmd_buffer_source_payload_adr[20:7])) begin
			sdram_bankmachine0_auto_precharge <= (sdram_bankmachine0_track_close == 1'd0);
		end
	end
end
assign sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_din = {sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_last, sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_first, sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_adr, sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we};
assign {sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_last, sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_first, sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_adr, sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we} = sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_dout;
assign sdram_bankmachine0_cmd_buffer_lookahead_sink_ready = sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable;
assign sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we = sdram_bankmachine0_cmd_buffer_lookahead_sink_valid;
assign sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_first = sdram_bankmachine0_cmd_buffer_lookahead_sink_first;
assign sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_last = sdram_bankmachine0_cmd_buffer_lookahead_sink_last;
assign sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we = sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_we;
assign sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_adr = sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_adr;
assign sdram_bankmachine0_cmd_buffer_lookahead_source_valid = sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable;
assign sdram_bankmachine0_cmd_buffer_lookahead_source_first = sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_first;
assign sdram_bankmachine0_cmd_buffer_lookahead_source_last = sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_last;
assign sdram_bankmachine0_cmd_buffer_lookahead_source_payload_we = sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we;
assign sdram_bankmachine0_cmd_buffer_lookahead_source_payload_adr = sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_adr;
assign sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_re = sdram_bankmachine0_cmd_buffer_lookahead_source_ready;
always @(*) begin
	sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (sdram_bankmachine0_cmd_buffer_lookahead_replace) begin
		sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr <= (sdram_bankmachine0_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr <= sdram_bankmachine0_cmd_buffer_lookahead_produce;
	end
end
assign sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_w = sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_din;
assign sdram_bankmachine0_cmd_buffer_lookahead_wrport_we = (sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we & (sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable | sdram_bankmachine0_cmd_buffer_lookahead_replace));
assign sdram_bankmachine0_cmd_buffer_lookahead_do_read = (sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable & sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_re);
assign sdram_bankmachine0_cmd_buffer_lookahead_rdport_adr = sdram_bankmachine0_cmd_buffer_lookahead_consume;
assign sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_dout = sdram_bankmachine0_cmd_buffer_lookahead_rdport_dat_r;
assign sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable = (sdram_bankmachine0_cmd_buffer_lookahead_level != 4'd8);
assign sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable = (sdram_bankmachine0_cmd_buffer_lookahead_level != 1'd0);
assign sdram_bankmachine0_cmd_buffer_pipe_ce = (sdram_bankmachine0_cmd_buffer_source_ready | (~sdram_bankmachine0_cmd_buffer_valid_n));
assign sdram_bankmachine0_cmd_buffer_sink_ready = sdram_bankmachine0_cmd_buffer_pipe_ce;
assign sdram_bankmachine0_cmd_buffer_source_valid = sdram_bankmachine0_cmd_buffer_valid_n;
assign sdram_bankmachine0_cmd_buffer_busy = (1'd0 | sdram_bankmachine0_cmd_buffer_valid_n);
assign sdram_bankmachine0_cmd_buffer_source_first = sdram_bankmachine0_cmd_buffer_first_n;
assign sdram_bankmachine0_cmd_buffer_source_last = sdram_bankmachine0_cmd_buffer_last_n;
assign sdram_bankmachine0_done = (sdram_bankmachine0_count == 1'd0);
always @(*) begin
	sdram_bankmachine0_cmd_payload_cas <= 1'd0;
	sdram_bankmachine0_cmd_payload_ras <= 1'd0;
	sdram_bankmachine0_cmd_payload_we <= 1'd0;
	sdram_bankmachine0_cmd_payload_is_cmd <= 1'd0;
	sdram_bankmachine0_cmd_payload_is_read <= 1'd0;
	sdram_bankmachine0_cmd_payload_is_write <= 1'd0;
	sdram_bankmachine0_req_wdata_ready <= 1'd0;
	sdram_bankmachine0_track_open <= 1'd0;
	sdram_bankmachine0_req_rdata_valid <= 1'd0;
	sdram_bankmachine0_track_close <= 1'd0;
	sdram_bankmachine0_refresh_gnt <= 1'd0;
	sdram_bankmachine0_sel_row_adr <= 1'd0;
	sdram_bankmachine0_cmd_valid <= 1'd0;
	bankmachine0_next_state <= 3'd0;
	bankmachine0_next_state <= bankmachine0_state;
	case (bankmachine0_state)
		1'd1: begin
			if (sdram_bankmachine0_done) begin
				sdram_bankmachine0_cmd_valid <= 1'd1;
				if (sdram_bankmachine0_cmd_ready) begin
					bankmachine0_next_state <= 3'd5;
				end
				sdram_bankmachine0_cmd_payload_ras <= 1'd1;
				sdram_bankmachine0_cmd_payload_we <= 1'd1;
				sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			end
			sdram_bankmachine0_track_close <= 1'd1;
		end
		2'd2: begin
			if (sdram_bankmachine0_done) begin
				bankmachine0_next_state <= 3'd5;
			end
			sdram_bankmachine0_track_close <= 1'd1;
		end
		2'd3: begin
			sdram_bankmachine0_sel_row_adr <= 1'd1;
			sdram_bankmachine0_track_open <= 1'd1;
			sdram_bankmachine0_cmd_valid <= sdram_bankmachine0_ras_allowed;
			sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			if ((sdram_bankmachine0_cmd_ready & sdram_bankmachine0_ras_allowed)) begin
				bankmachine0_next_state <= 3'd6;
			end
			sdram_bankmachine0_cmd_payload_ras <= 1'd1;
		end
		3'd4: begin
			if (sdram_bankmachine0_done) begin
				sdram_bankmachine0_refresh_gnt <= 1'd1;
			end
			sdram_bankmachine0_track_close <= 1'd1;
			sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			if ((~sdram_bankmachine0_refresh_req)) begin
				bankmachine0_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine0_next_state <= 2'd3;
		end
		3'd6: begin
			bankmachine0_next_state <= 1'd0;
		end
		default: begin
			if (sdram_bankmachine0_refresh_req) begin
				bankmachine0_next_state <= 3'd4;
			end else begin
				if (sdram_bankmachine0_cmd_buffer_source_valid) begin
					if (sdram_bankmachine0_has_openrow) begin
						if (sdram_bankmachine0_hit) begin
							if (sdram_bankmachine0_cas_allowed) begin
								sdram_bankmachine0_cmd_valid <= 1'd1;
								if (sdram_bankmachine0_cmd_buffer_source_payload_we) begin
									sdram_bankmachine0_req_wdata_ready <= sdram_bankmachine0_cmd_ready;
									sdram_bankmachine0_cmd_payload_is_write <= 1'd1;
									sdram_bankmachine0_cmd_payload_we <= 1'd1;
								end else begin
									sdram_bankmachine0_req_rdata_valid <= sdram_bankmachine0_cmd_ready;
									sdram_bankmachine0_cmd_payload_is_read <= 1'd1;
								end
								sdram_bankmachine0_cmd_payload_cas <= 1'd1;
								if ((sdram_bankmachine0_cmd_ready & sdram_bankmachine0_auto_precharge)) begin
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
assign sdram_bankmachine1_cmd_buffer_lookahead_sink_valid = sdram_bankmachine1_req_valid;
assign sdram_bankmachine1_req_ready = sdram_bankmachine1_cmd_buffer_lookahead_sink_ready;
assign sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_we = sdram_bankmachine1_req_we;
assign sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_adr = sdram_bankmachine1_req_adr;
assign sdram_bankmachine1_cmd_buffer_sink_valid = sdram_bankmachine1_cmd_buffer_lookahead_source_valid;
assign sdram_bankmachine1_cmd_buffer_lookahead_source_ready = sdram_bankmachine1_cmd_buffer_sink_ready;
assign sdram_bankmachine1_cmd_buffer_sink_first = sdram_bankmachine1_cmd_buffer_lookahead_source_first;
assign sdram_bankmachine1_cmd_buffer_sink_last = sdram_bankmachine1_cmd_buffer_lookahead_source_last;
assign sdram_bankmachine1_cmd_buffer_sink_payload_we = sdram_bankmachine1_cmd_buffer_lookahead_source_payload_we;
assign sdram_bankmachine1_cmd_buffer_sink_payload_adr = sdram_bankmachine1_cmd_buffer_lookahead_source_payload_adr;
assign sdram_bankmachine1_cmd_buffer_source_ready = (sdram_bankmachine1_req_wdata_ready | sdram_bankmachine1_req_rdata_valid);
assign sdram_bankmachine1_req_lock = (sdram_bankmachine1_cmd_buffer_lookahead_source_valid | sdram_bankmachine1_cmd_buffer_source_valid);
assign sdram_bankmachine1_hit = (sdram_bankmachine1_openrow == sdram_bankmachine1_cmd_buffer_source_payload_adr[20:7]);
assign sdram_bankmachine1_cmd_payload_ba = 1'd1;
always @(*) begin
	sdram_bankmachine1_cmd_payload_a <= 14'd0;
	if (sdram_bankmachine1_sel_row_adr) begin
		sdram_bankmachine1_cmd_payload_a <= sdram_bankmachine1_cmd_buffer_source_payload_adr[20:7];
	end else begin
		sdram_bankmachine1_cmd_payload_a <= ((sdram_bankmachine1_auto_precharge <<< 4'd10) | {sdram_bankmachine1_cmd_buffer_source_payload_adr[6:0], {3{1'd0}}});
	end
end
assign sdram_bankmachine1_wait = (~((sdram_bankmachine1_cmd_valid & sdram_bankmachine1_cmd_ready) & sdram_bankmachine1_cmd_payload_is_write));
always @(*) begin
	sdram_bankmachine1_auto_precharge <= 1'd0;
	if ((sdram_bankmachine1_cmd_buffer_lookahead_source_valid & sdram_bankmachine1_cmd_buffer_source_valid)) begin
		if ((sdram_bankmachine1_cmd_buffer_lookahead_source_payload_adr[20:7] != sdram_bankmachine1_cmd_buffer_source_payload_adr[20:7])) begin
			sdram_bankmachine1_auto_precharge <= (sdram_bankmachine1_track_close == 1'd0);
		end
	end
end
assign sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_din = {sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_last, sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_first, sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_adr, sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we};
assign {sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_last, sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_first, sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_adr, sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we} = sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_dout;
assign sdram_bankmachine1_cmd_buffer_lookahead_sink_ready = sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable;
assign sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we = sdram_bankmachine1_cmd_buffer_lookahead_sink_valid;
assign sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_first = sdram_bankmachine1_cmd_buffer_lookahead_sink_first;
assign sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_last = sdram_bankmachine1_cmd_buffer_lookahead_sink_last;
assign sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we = sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_we;
assign sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_adr = sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_adr;
assign sdram_bankmachine1_cmd_buffer_lookahead_source_valid = sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable;
assign sdram_bankmachine1_cmd_buffer_lookahead_source_first = sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_first;
assign sdram_bankmachine1_cmd_buffer_lookahead_source_last = sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_last;
assign sdram_bankmachine1_cmd_buffer_lookahead_source_payload_we = sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we;
assign sdram_bankmachine1_cmd_buffer_lookahead_source_payload_adr = sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_adr;
assign sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_re = sdram_bankmachine1_cmd_buffer_lookahead_source_ready;
always @(*) begin
	sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (sdram_bankmachine1_cmd_buffer_lookahead_replace) begin
		sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr <= (sdram_bankmachine1_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr <= sdram_bankmachine1_cmd_buffer_lookahead_produce;
	end
end
assign sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_w = sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_din;
assign sdram_bankmachine1_cmd_buffer_lookahead_wrport_we = (sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we & (sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable | sdram_bankmachine1_cmd_buffer_lookahead_replace));
assign sdram_bankmachine1_cmd_buffer_lookahead_do_read = (sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable & sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_re);
assign sdram_bankmachine1_cmd_buffer_lookahead_rdport_adr = sdram_bankmachine1_cmd_buffer_lookahead_consume;
assign sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_dout = sdram_bankmachine1_cmd_buffer_lookahead_rdport_dat_r;
assign sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable = (sdram_bankmachine1_cmd_buffer_lookahead_level != 4'd8);
assign sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable = (sdram_bankmachine1_cmd_buffer_lookahead_level != 1'd0);
assign sdram_bankmachine1_cmd_buffer_pipe_ce = (sdram_bankmachine1_cmd_buffer_source_ready | (~sdram_bankmachine1_cmd_buffer_valid_n));
assign sdram_bankmachine1_cmd_buffer_sink_ready = sdram_bankmachine1_cmd_buffer_pipe_ce;
assign sdram_bankmachine1_cmd_buffer_source_valid = sdram_bankmachine1_cmd_buffer_valid_n;
assign sdram_bankmachine1_cmd_buffer_busy = (1'd0 | sdram_bankmachine1_cmd_buffer_valid_n);
assign sdram_bankmachine1_cmd_buffer_source_first = sdram_bankmachine1_cmd_buffer_first_n;
assign sdram_bankmachine1_cmd_buffer_source_last = sdram_bankmachine1_cmd_buffer_last_n;
assign sdram_bankmachine1_done = (sdram_bankmachine1_count == 1'd0);
always @(*) begin
	sdram_bankmachine1_cmd_payload_cas <= 1'd0;
	sdram_bankmachine1_cmd_payload_ras <= 1'd0;
	sdram_bankmachine1_cmd_payload_we <= 1'd0;
	sdram_bankmachine1_cmd_payload_is_cmd <= 1'd0;
	sdram_bankmachine1_cmd_payload_is_read <= 1'd0;
	bankmachine1_next_state <= 3'd0;
	sdram_bankmachine1_cmd_payload_is_write <= 1'd0;
	sdram_bankmachine1_req_wdata_ready <= 1'd0;
	sdram_bankmachine1_track_open <= 1'd0;
	sdram_bankmachine1_req_rdata_valid <= 1'd0;
	sdram_bankmachine1_track_close <= 1'd0;
	sdram_bankmachine1_refresh_gnt <= 1'd0;
	sdram_bankmachine1_sel_row_adr <= 1'd0;
	sdram_bankmachine1_cmd_valid <= 1'd0;
	bankmachine1_next_state <= bankmachine1_state;
	case (bankmachine1_state)
		1'd1: begin
			if (sdram_bankmachine1_done) begin
				sdram_bankmachine1_cmd_valid <= 1'd1;
				if (sdram_bankmachine1_cmd_ready) begin
					bankmachine1_next_state <= 3'd5;
				end
				sdram_bankmachine1_cmd_payload_ras <= 1'd1;
				sdram_bankmachine1_cmd_payload_we <= 1'd1;
				sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			end
			sdram_bankmachine1_track_close <= 1'd1;
		end
		2'd2: begin
			if (sdram_bankmachine1_done) begin
				bankmachine1_next_state <= 3'd5;
			end
			sdram_bankmachine1_track_close <= 1'd1;
		end
		2'd3: begin
			sdram_bankmachine1_sel_row_adr <= 1'd1;
			sdram_bankmachine1_track_open <= 1'd1;
			sdram_bankmachine1_cmd_valid <= sdram_bankmachine1_ras_allowed;
			sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			if ((sdram_bankmachine1_cmd_ready & sdram_bankmachine1_ras_allowed)) begin
				bankmachine1_next_state <= 3'd6;
			end
			sdram_bankmachine1_cmd_payload_ras <= 1'd1;
		end
		3'd4: begin
			if (sdram_bankmachine1_done) begin
				sdram_bankmachine1_refresh_gnt <= 1'd1;
			end
			sdram_bankmachine1_track_close <= 1'd1;
			sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			if ((~sdram_bankmachine1_refresh_req)) begin
				bankmachine1_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine1_next_state <= 2'd3;
		end
		3'd6: begin
			bankmachine1_next_state <= 1'd0;
		end
		default: begin
			if (sdram_bankmachine1_refresh_req) begin
				bankmachine1_next_state <= 3'd4;
			end else begin
				if (sdram_bankmachine1_cmd_buffer_source_valid) begin
					if (sdram_bankmachine1_has_openrow) begin
						if (sdram_bankmachine1_hit) begin
							if (sdram_bankmachine1_cas_allowed) begin
								sdram_bankmachine1_cmd_valid <= 1'd1;
								if (sdram_bankmachine1_cmd_buffer_source_payload_we) begin
									sdram_bankmachine1_req_wdata_ready <= sdram_bankmachine1_cmd_ready;
									sdram_bankmachine1_cmd_payload_is_write <= 1'd1;
									sdram_bankmachine1_cmd_payload_we <= 1'd1;
								end else begin
									sdram_bankmachine1_req_rdata_valid <= sdram_bankmachine1_cmd_ready;
									sdram_bankmachine1_cmd_payload_is_read <= 1'd1;
								end
								sdram_bankmachine1_cmd_payload_cas <= 1'd1;
								if ((sdram_bankmachine1_cmd_ready & sdram_bankmachine1_auto_precharge)) begin
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
assign sdram_bankmachine2_cmd_buffer_lookahead_sink_valid = sdram_bankmachine2_req_valid;
assign sdram_bankmachine2_req_ready = sdram_bankmachine2_cmd_buffer_lookahead_sink_ready;
assign sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_we = sdram_bankmachine2_req_we;
assign sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_adr = sdram_bankmachine2_req_adr;
assign sdram_bankmachine2_cmd_buffer_sink_valid = sdram_bankmachine2_cmd_buffer_lookahead_source_valid;
assign sdram_bankmachine2_cmd_buffer_lookahead_source_ready = sdram_bankmachine2_cmd_buffer_sink_ready;
assign sdram_bankmachine2_cmd_buffer_sink_first = sdram_bankmachine2_cmd_buffer_lookahead_source_first;
assign sdram_bankmachine2_cmd_buffer_sink_last = sdram_bankmachine2_cmd_buffer_lookahead_source_last;
assign sdram_bankmachine2_cmd_buffer_sink_payload_we = sdram_bankmachine2_cmd_buffer_lookahead_source_payload_we;
assign sdram_bankmachine2_cmd_buffer_sink_payload_adr = sdram_bankmachine2_cmd_buffer_lookahead_source_payload_adr;
assign sdram_bankmachine2_cmd_buffer_source_ready = (sdram_bankmachine2_req_wdata_ready | sdram_bankmachine2_req_rdata_valid);
assign sdram_bankmachine2_req_lock = (sdram_bankmachine2_cmd_buffer_lookahead_source_valid | sdram_bankmachine2_cmd_buffer_source_valid);
assign sdram_bankmachine2_hit = (sdram_bankmachine2_openrow == sdram_bankmachine2_cmd_buffer_source_payload_adr[20:7]);
assign sdram_bankmachine2_cmd_payload_ba = 2'd2;
always @(*) begin
	sdram_bankmachine2_cmd_payload_a <= 14'd0;
	if (sdram_bankmachine2_sel_row_adr) begin
		sdram_bankmachine2_cmd_payload_a <= sdram_bankmachine2_cmd_buffer_source_payload_adr[20:7];
	end else begin
		sdram_bankmachine2_cmd_payload_a <= ((sdram_bankmachine2_auto_precharge <<< 4'd10) | {sdram_bankmachine2_cmd_buffer_source_payload_adr[6:0], {3{1'd0}}});
	end
end
assign sdram_bankmachine2_wait = (~((sdram_bankmachine2_cmd_valid & sdram_bankmachine2_cmd_ready) & sdram_bankmachine2_cmd_payload_is_write));
always @(*) begin
	sdram_bankmachine2_auto_precharge <= 1'd0;
	if ((sdram_bankmachine2_cmd_buffer_lookahead_source_valid & sdram_bankmachine2_cmd_buffer_source_valid)) begin
		if ((sdram_bankmachine2_cmd_buffer_lookahead_source_payload_adr[20:7] != sdram_bankmachine2_cmd_buffer_source_payload_adr[20:7])) begin
			sdram_bankmachine2_auto_precharge <= (sdram_bankmachine2_track_close == 1'd0);
		end
	end
end
assign sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_din = {sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_last, sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_first, sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_adr, sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we};
assign {sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_last, sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_first, sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_adr, sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we} = sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_dout;
assign sdram_bankmachine2_cmd_buffer_lookahead_sink_ready = sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable;
assign sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we = sdram_bankmachine2_cmd_buffer_lookahead_sink_valid;
assign sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_first = sdram_bankmachine2_cmd_buffer_lookahead_sink_first;
assign sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_last = sdram_bankmachine2_cmd_buffer_lookahead_sink_last;
assign sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we = sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_we;
assign sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_adr = sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_adr;
assign sdram_bankmachine2_cmd_buffer_lookahead_source_valid = sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable;
assign sdram_bankmachine2_cmd_buffer_lookahead_source_first = sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_first;
assign sdram_bankmachine2_cmd_buffer_lookahead_source_last = sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_last;
assign sdram_bankmachine2_cmd_buffer_lookahead_source_payload_we = sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we;
assign sdram_bankmachine2_cmd_buffer_lookahead_source_payload_adr = sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_adr;
assign sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_re = sdram_bankmachine2_cmd_buffer_lookahead_source_ready;
always @(*) begin
	sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (sdram_bankmachine2_cmd_buffer_lookahead_replace) begin
		sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr <= (sdram_bankmachine2_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr <= sdram_bankmachine2_cmd_buffer_lookahead_produce;
	end
end
assign sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_w = sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_din;
assign sdram_bankmachine2_cmd_buffer_lookahead_wrport_we = (sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we & (sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable | sdram_bankmachine2_cmd_buffer_lookahead_replace));
assign sdram_bankmachine2_cmd_buffer_lookahead_do_read = (sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable & sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_re);
assign sdram_bankmachine2_cmd_buffer_lookahead_rdport_adr = sdram_bankmachine2_cmd_buffer_lookahead_consume;
assign sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_dout = sdram_bankmachine2_cmd_buffer_lookahead_rdport_dat_r;
assign sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable = (sdram_bankmachine2_cmd_buffer_lookahead_level != 4'd8);
assign sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable = (sdram_bankmachine2_cmd_buffer_lookahead_level != 1'd0);
assign sdram_bankmachine2_cmd_buffer_pipe_ce = (sdram_bankmachine2_cmd_buffer_source_ready | (~sdram_bankmachine2_cmd_buffer_valid_n));
assign sdram_bankmachine2_cmd_buffer_sink_ready = sdram_bankmachine2_cmd_buffer_pipe_ce;
assign sdram_bankmachine2_cmd_buffer_source_valid = sdram_bankmachine2_cmd_buffer_valid_n;
assign sdram_bankmachine2_cmd_buffer_busy = (1'd0 | sdram_bankmachine2_cmd_buffer_valid_n);
assign sdram_bankmachine2_cmd_buffer_source_first = sdram_bankmachine2_cmd_buffer_first_n;
assign sdram_bankmachine2_cmd_buffer_source_last = sdram_bankmachine2_cmd_buffer_last_n;
assign sdram_bankmachine2_done = (sdram_bankmachine2_count == 1'd0);
always @(*) begin
	sdram_bankmachine2_cmd_valid <= 1'd0;
	sdram_bankmachine2_cmd_payload_cas <= 1'd0;
	sdram_bankmachine2_cmd_payload_ras <= 1'd0;
	sdram_bankmachine2_cmd_payload_we <= 1'd0;
	sdram_bankmachine2_cmd_payload_is_cmd <= 1'd0;
	sdram_bankmachine2_cmd_payload_is_read <= 1'd0;
	sdram_bankmachine2_cmd_payload_is_write <= 1'd0;
	bankmachine2_next_state <= 3'd0;
	sdram_bankmachine2_req_wdata_ready <= 1'd0;
	sdram_bankmachine2_track_open <= 1'd0;
	sdram_bankmachine2_req_rdata_valid <= 1'd0;
	sdram_bankmachine2_track_close <= 1'd0;
	sdram_bankmachine2_refresh_gnt <= 1'd0;
	sdram_bankmachine2_sel_row_adr <= 1'd0;
	bankmachine2_next_state <= bankmachine2_state;
	case (bankmachine2_state)
		1'd1: begin
			if (sdram_bankmachine2_done) begin
				sdram_bankmachine2_cmd_valid <= 1'd1;
				if (sdram_bankmachine2_cmd_ready) begin
					bankmachine2_next_state <= 3'd5;
				end
				sdram_bankmachine2_cmd_payload_ras <= 1'd1;
				sdram_bankmachine2_cmd_payload_we <= 1'd1;
				sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			end
			sdram_bankmachine2_track_close <= 1'd1;
		end
		2'd2: begin
			if (sdram_bankmachine2_done) begin
				bankmachine2_next_state <= 3'd5;
			end
			sdram_bankmachine2_track_close <= 1'd1;
		end
		2'd3: begin
			sdram_bankmachine2_sel_row_adr <= 1'd1;
			sdram_bankmachine2_track_open <= 1'd1;
			sdram_bankmachine2_cmd_valid <= sdram_bankmachine2_ras_allowed;
			sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			if ((sdram_bankmachine2_cmd_ready & sdram_bankmachine2_ras_allowed)) begin
				bankmachine2_next_state <= 3'd6;
			end
			sdram_bankmachine2_cmd_payload_ras <= 1'd1;
		end
		3'd4: begin
			if (sdram_bankmachine2_done) begin
				sdram_bankmachine2_refresh_gnt <= 1'd1;
			end
			sdram_bankmachine2_track_close <= 1'd1;
			sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			if ((~sdram_bankmachine2_refresh_req)) begin
				bankmachine2_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine2_next_state <= 2'd3;
		end
		3'd6: begin
			bankmachine2_next_state <= 1'd0;
		end
		default: begin
			if (sdram_bankmachine2_refresh_req) begin
				bankmachine2_next_state <= 3'd4;
			end else begin
				if (sdram_bankmachine2_cmd_buffer_source_valid) begin
					if (sdram_bankmachine2_has_openrow) begin
						if (sdram_bankmachine2_hit) begin
							if (sdram_bankmachine2_cas_allowed) begin
								sdram_bankmachine2_cmd_valid <= 1'd1;
								if (sdram_bankmachine2_cmd_buffer_source_payload_we) begin
									sdram_bankmachine2_req_wdata_ready <= sdram_bankmachine2_cmd_ready;
									sdram_bankmachine2_cmd_payload_is_write <= 1'd1;
									sdram_bankmachine2_cmd_payload_we <= 1'd1;
								end else begin
									sdram_bankmachine2_req_rdata_valid <= sdram_bankmachine2_cmd_ready;
									sdram_bankmachine2_cmd_payload_is_read <= 1'd1;
								end
								sdram_bankmachine2_cmd_payload_cas <= 1'd1;
								if ((sdram_bankmachine2_cmd_ready & sdram_bankmachine2_auto_precharge)) begin
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
assign sdram_bankmachine3_cmd_buffer_lookahead_sink_valid = sdram_bankmachine3_req_valid;
assign sdram_bankmachine3_req_ready = sdram_bankmachine3_cmd_buffer_lookahead_sink_ready;
assign sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_we = sdram_bankmachine3_req_we;
assign sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_adr = sdram_bankmachine3_req_adr;
assign sdram_bankmachine3_cmd_buffer_sink_valid = sdram_bankmachine3_cmd_buffer_lookahead_source_valid;
assign sdram_bankmachine3_cmd_buffer_lookahead_source_ready = sdram_bankmachine3_cmd_buffer_sink_ready;
assign sdram_bankmachine3_cmd_buffer_sink_first = sdram_bankmachine3_cmd_buffer_lookahead_source_first;
assign sdram_bankmachine3_cmd_buffer_sink_last = sdram_bankmachine3_cmd_buffer_lookahead_source_last;
assign sdram_bankmachine3_cmd_buffer_sink_payload_we = sdram_bankmachine3_cmd_buffer_lookahead_source_payload_we;
assign sdram_bankmachine3_cmd_buffer_sink_payload_adr = sdram_bankmachine3_cmd_buffer_lookahead_source_payload_adr;
assign sdram_bankmachine3_cmd_buffer_source_ready = (sdram_bankmachine3_req_wdata_ready | sdram_bankmachine3_req_rdata_valid);
assign sdram_bankmachine3_req_lock = (sdram_bankmachine3_cmd_buffer_lookahead_source_valid | sdram_bankmachine3_cmd_buffer_source_valid);
assign sdram_bankmachine3_hit = (sdram_bankmachine3_openrow == sdram_bankmachine3_cmd_buffer_source_payload_adr[20:7]);
assign sdram_bankmachine3_cmd_payload_ba = 2'd3;
always @(*) begin
	sdram_bankmachine3_cmd_payload_a <= 14'd0;
	if (sdram_bankmachine3_sel_row_adr) begin
		sdram_bankmachine3_cmd_payload_a <= sdram_bankmachine3_cmd_buffer_source_payload_adr[20:7];
	end else begin
		sdram_bankmachine3_cmd_payload_a <= ((sdram_bankmachine3_auto_precharge <<< 4'd10) | {sdram_bankmachine3_cmd_buffer_source_payload_adr[6:0], {3{1'd0}}});
	end
end
assign sdram_bankmachine3_wait = (~((sdram_bankmachine3_cmd_valid & sdram_bankmachine3_cmd_ready) & sdram_bankmachine3_cmd_payload_is_write));
always @(*) begin
	sdram_bankmachine3_auto_precharge <= 1'd0;
	if ((sdram_bankmachine3_cmd_buffer_lookahead_source_valid & sdram_bankmachine3_cmd_buffer_source_valid)) begin
		if ((sdram_bankmachine3_cmd_buffer_lookahead_source_payload_adr[20:7] != sdram_bankmachine3_cmd_buffer_source_payload_adr[20:7])) begin
			sdram_bankmachine3_auto_precharge <= (sdram_bankmachine3_track_close == 1'd0);
		end
	end
end
assign sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_din = {sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_last, sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_first, sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_adr, sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we};
assign {sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_last, sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_first, sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_adr, sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we} = sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_dout;
assign sdram_bankmachine3_cmd_buffer_lookahead_sink_ready = sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable;
assign sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we = sdram_bankmachine3_cmd_buffer_lookahead_sink_valid;
assign sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_first = sdram_bankmachine3_cmd_buffer_lookahead_sink_first;
assign sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_last = sdram_bankmachine3_cmd_buffer_lookahead_sink_last;
assign sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we = sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_we;
assign sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_adr = sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_adr;
assign sdram_bankmachine3_cmd_buffer_lookahead_source_valid = sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable;
assign sdram_bankmachine3_cmd_buffer_lookahead_source_first = sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_first;
assign sdram_bankmachine3_cmd_buffer_lookahead_source_last = sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_last;
assign sdram_bankmachine3_cmd_buffer_lookahead_source_payload_we = sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we;
assign sdram_bankmachine3_cmd_buffer_lookahead_source_payload_adr = sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_adr;
assign sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_re = sdram_bankmachine3_cmd_buffer_lookahead_source_ready;
always @(*) begin
	sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (sdram_bankmachine3_cmd_buffer_lookahead_replace) begin
		sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr <= (sdram_bankmachine3_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr <= sdram_bankmachine3_cmd_buffer_lookahead_produce;
	end
end
assign sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_w = sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_din;
assign sdram_bankmachine3_cmd_buffer_lookahead_wrport_we = (sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we & (sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable | sdram_bankmachine3_cmd_buffer_lookahead_replace));
assign sdram_bankmachine3_cmd_buffer_lookahead_do_read = (sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable & sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_re);
assign sdram_bankmachine3_cmd_buffer_lookahead_rdport_adr = sdram_bankmachine3_cmd_buffer_lookahead_consume;
assign sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_dout = sdram_bankmachine3_cmd_buffer_lookahead_rdport_dat_r;
assign sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable = (sdram_bankmachine3_cmd_buffer_lookahead_level != 4'd8);
assign sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable = (sdram_bankmachine3_cmd_buffer_lookahead_level != 1'd0);
assign sdram_bankmachine3_cmd_buffer_pipe_ce = (sdram_bankmachine3_cmd_buffer_source_ready | (~sdram_bankmachine3_cmd_buffer_valid_n));
assign sdram_bankmachine3_cmd_buffer_sink_ready = sdram_bankmachine3_cmd_buffer_pipe_ce;
assign sdram_bankmachine3_cmd_buffer_source_valid = sdram_bankmachine3_cmd_buffer_valid_n;
assign sdram_bankmachine3_cmd_buffer_busy = (1'd0 | sdram_bankmachine3_cmd_buffer_valid_n);
assign sdram_bankmachine3_cmd_buffer_source_first = sdram_bankmachine3_cmd_buffer_first_n;
assign sdram_bankmachine3_cmd_buffer_source_last = sdram_bankmachine3_cmd_buffer_last_n;
assign sdram_bankmachine3_done = (sdram_bankmachine3_count == 1'd0);
always @(*) begin
	sdram_bankmachine3_track_close <= 1'd0;
	sdram_bankmachine3_refresh_gnt <= 1'd0;
	sdram_bankmachine3_sel_row_adr <= 1'd0;
	sdram_bankmachine3_cmd_valid <= 1'd0;
	bankmachine3_next_state <= 3'd0;
	sdram_bankmachine3_cmd_payload_cas <= 1'd0;
	sdram_bankmachine3_cmd_payload_ras <= 1'd0;
	sdram_bankmachine3_cmd_payload_we <= 1'd0;
	sdram_bankmachine3_cmd_payload_is_cmd <= 1'd0;
	sdram_bankmachine3_cmd_payload_is_read <= 1'd0;
	sdram_bankmachine3_cmd_payload_is_write <= 1'd0;
	sdram_bankmachine3_req_wdata_ready <= 1'd0;
	sdram_bankmachine3_track_open <= 1'd0;
	sdram_bankmachine3_req_rdata_valid <= 1'd0;
	bankmachine3_next_state <= bankmachine3_state;
	case (bankmachine3_state)
		1'd1: begin
			if (sdram_bankmachine3_done) begin
				sdram_bankmachine3_cmd_valid <= 1'd1;
				if (sdram_bankmachine3_cmd_ready) begin
					bankmachine3_next_state <= 3'd5;
				end
				sdram_bankmachine3_cmd_payload_ras <= 1'd1;
				sdram_bankmachine3_cmd_payload_we <= 1'd1;
				sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			end
			sdram_bankmachine3_track_close <= 1'd1;
		end
		2'd2: begin
			if (sdram_bankmachine3_done) begin
				bankmachine3_next_state <= 3'd5;
			end
			sdram_bankmachine3_track_close <= 1'd1;
		end
		2'd3: begin
			sdram_bankmachine3_sel_row_adr <= 1'd1;
			sdram_bankmachine3_track_open <= 1'd1;
			sdram_bankmachine3_cmd_valid <= sdram_bankmachine3_ras_allowed;
			sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			if ((sdram_bankmachine3_cmd_ready & sdram_bankmachine3_ras_allowed)) begin
				bankmachine3_next_state <= 3'd6;
			end
			sdram_bankmachine3_cmd_payload_ras <= 1'd1;
		end
		3'd4: begin
			if (sdram_bankmachine3_done) begin
				sdram_bankmachine3_refresh_gnt <= 1'd1;
			end
			sdram_bankmachine3_track_close <= 1'd1;
			sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			if ((~sdram_bankmachine3_refresh_req)) begin
				bankmachine3_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine3_next_state <= 2'd3;
		end
		3'd6: begin
			bankmachine3_next_state <= 1'd0;
		end
		default: begin
			if (sdram_bankmachine3_refresh_req) begin
				bankmachine3_next_state <= 3'd4;
			end else begin
				if (sdram_bankmachine3_cmd_buffer_source_valid) begin
					if (sdram_bankmachine3_has_openrow) begin
						if (sdram_bankmachine3_hit) begin
							if (sdram_bankmachine3_cas_allowed) begin
								sdram_bankmachine3_cmd_valid <= 1'd1;
								if (sdram_bankmachine3_cmd_buffer_source_payload_we) begin
									sdram_bankmachine3_req_wdata_ready <= sdram_bankmachine3_cmd_ready;
									sdram_bankmachine3_cmd_payload_is_write <= 1'd1;
									sdram_bankmachine3_cmd_payload_we <= 1'd1;
								end else begin
									sdram_bankmachine3_req_rdata_valid <= sdram_bankmachine3_cmd_ready;
									sdram_bankmachine3_cmd_payload_is_read <= 1'd1;
								end
								sdram_bankmachine3_cmd_payload_cas <= 1'd1;
								if ((sdram_bankmachine3_cmd_ready & sdram_bankmachine3_auto_precharge)) begin
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
assign sdram_bankmachine4_cmd_buffer_lookahead_sink_valid = sdram_bankmachine4_req_valid;
assign sdram_bankmachine4_req_ready = sdram_bankmachine4_cmd_buffer_lookahead_sink_ready;
assign sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_we = sdram_bankmachine4_req_we;
assign sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_adr = sdram_bankmachine4_req_adr;
assign sdram_bankmachine4_cmd_buffer_sink_valid = sdram_bankmachine4_cmd_buffer_lookahead_source_valid;
assign sdram_bankmachine4_cmd_buffer_lookahead_source_ready = sdram_bankmachine4_cmd_buffer_sink_ready;
assign sdram_bankmachine4_cmd_buffer_sink_first = sdram_bankmachine4_cmd_buffer_lookahead_source_first;
assign sdram_bankmachine4_cmd_buffer_sink_last = sdram_bankmachine4_cmd_buffer_lookahead_source_last;
assign sdram_bankmachine4_cmd_buffer_sink_payload_we = sdram_bankmachine4_cmd_buffer_lookahead_source_payload_we;
assign sdram_bankmachine4_cmd_buffer_sink_payload_adr = sdram_bankmachine4_cmd_buffer_lookahead_source_payload_adr;
assign sdram_bankmachine4_cmd_buffer_source_ready = (sdram_bankmachine4_req_wdata_ready | sdram_bankmachine4_req_rdata_valid);
assign sdram_bankmachine4_req_lock = (sdram_bankmachine4_cmd_buffer_lookahead_source_valid | sdram_bankmachine4_cmd_buffer_source_valid);
assign sdram_bankmachine4_hit = (sdram_bankmachine4_openrow == sdram_bankmachine4_cmd_buffer_source_payload_adr[20:7]);
assign sdram_bankmachine4_cmd_payload_ba = 3'd4;
always @(*) begin
	sdram_bankmachine4_cmd_payload_a <= 14'd0;
	if (sdram_bankmachine4_sel_row_adr) begin
		sdram_bankmachine4_cmd_payload_a <= sdram_bankmachine4_cmd_buffer_source_payload_adr[20:7];
	end else begin
		sdram_bankmachine4_cmd_payload_a <= ((sdram_bankmachine4_auto_precharge <<< 4'd10) | {sdram_bankmachine4_cmd_buffer_source_payload_adr[6:0], {3{1'd0}}});
	end
end
assign sdram_bankmachine4_wait = (~((sdram_bankmachine4_cmd_valid & sdram_bankmachine4_cmd_ready) & sdram_bankmachine4_cmd_payload_is_write));
always @(*) begin
	sdram_bankmachine4_auto_precharge <= 1'd0;
	if ((sdram_bankmachine4_cmd_buffer_lookahead_source_valid & sdram_bankmachine4_cmd_buffer_source_valid)) begin
		if ((sdram_bankmachine4_cmd_buffer_lookahead_source_payload_adr[20:7] != sdram_bankmachine4_cmd_buffer_source_payload_adr[20:7])) begin
			sdram_bankmachine4_auto_precharge <= (sdram_bankmachine4_track_close == 1'd0);
		end
	end
end
assign sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_din = {sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_last, sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_first, sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_adr, sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_we};
assign {sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_last, sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_first, sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_adr, sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_we} = sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_dout;
assign sdram_bankmachine4_cmd_buffer_lookahead_sink_ready = sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable;
assign sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_we = sdram_bankmachine4_cmd_buffer_lookahead_sink_valid;
assign sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_first = sdram_bankmachine4_cmd_buffer_lookahead_sink_first;
assign sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_last = sdram_bankmachine4_cmd_buffer_lookahead_sink_last;
assign sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_we = sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_we;
assign sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_adr = sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_adr;
assign sdram_bankmachine4_cmd_buffer_lookahead_source_valid = sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable;
assign sdram_bankmachine4_cmd_buffer_lookahead_source_first = sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_first;
assign sdram_bankmachine4_cmd_buffer_lookahead_source_last = sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_last;
assign sdram_bankmachine4_cmd_buffer_lookahead_source_payload_we = sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_we;
assign sdram_bankmachine4_cmd_buffer_lookahead_source_payload_adr = sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_adr;
assign sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_re = sdram_bankmachine4_cmd_buffer_lookahead_source_ready;
always @(*) begin
	sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (sdram_bankmachine4_cmd_buffer_lookahead_replace) begin
		sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr <= (sdram_bankmachine4_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr <= sdram_bankmachine4_cmd_buffer_lookahead_produce;
	end
end
assign sdram_bankmachine4_cmd_buffer_lookahead_wrport_dat_w = sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_din;
assign sdram_bankmachine4_cmd_buffer_lookahead_wrport_we = (sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_we & (sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable | sdram_bankmachine4_cmd_buffer_lookahead_replace));
assign sdram_bankmachine4_cmd_buffer_lookahead_do_read = (sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable & sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_re);
assign sdram_bankmachine4_cmd_buffer_lookahead_rdport_adr = sdram_bankmachine4_cmd_buffer_lookahead_consume;
assign sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_dout = sdram_bankmachine4_cmd_buffer_lookahead_rdport_dat_r;
assign sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable = (sdram_bankmachine4_cmd_buffer_lookahead_level != 4'd8);
assign sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable = (sdram_bankmachine4_cmd_buffer_lookahead_level != 1'd0);
assign sdram_bankmachine4_cmd_buffer_pipe_ce = (sdram_bankmachine4_cmd_buffer_source_ready | (~sdram_bankmachine4_cmd_buffer_valid_n));
assign sdram_bankmachine4_cmd_buffer_sink_ready = sdram_bankmachine4_cmd_buffer_pipe_ce;
assign sdram_bankmachine4_cmd_buffer_source_valid = sdram_bankmachine4_cmd_buffer_valid_n;
assign sdram_bankmachine4_cmd_buffer_busy = (1'd0 | sdram_bankmachine4_cmd_buffer_valid_n);
assign sdram_bankmachine4_cmd_buffer_source_first = sdram_bankmachine4_cmd_buffer_first_n;
assign sdram_bankmachine4_cmd_buffer_source_last = sdram_bankmachine4_cmd_buffer_last_n;
assign sdram_bankmachine4_done = (sdram_bankmachine4_count == 1'd0);
always @(*) begin
	sdram_bankmachine4_req_wdata_ready <= 1'd0;
	sdram_bankmachine4_track_open <= 1'd0;
	sdram_bankmachine4_req_rdata_valid <= 1'd0;
	sdram_bankmachine4_track_close <= 1'd0;
	sdram_bankmachine4_refresh_gnt <= 1'd0;
	sdram_bankmachine4_sel_row_adr <= 1'd0;
	sdram_bankmachine4_cmd_valid <= 1'd0;
	sdram_bankmachine4_cmd_payload_cas <= 1'd0;
	sdram_bankmachine4_cmd_payload_ras <= 1'd0;
	sdram_bankmachine4_cmd_payload_we <= 1'd0;
	sdram_bankmachine4_cmd_payload_is_cmd <= 1'd0;
	sdram_bankmachine4_cmd_payload_is_read <= 1'd0;
	bankmachine4_next_state <= 3'd0;
	sdram_bankmachine4_cmd_payload_is_write <= 1'd0;
	bankmachine4_next_state <= bankmachine4_state;
	case (bankmachine4_state)
		1'd1: begin
			if (sdram_bankmachine4_done) begin
				sdram_bankmachine4_cmd_valid <= 1'd1;
				if (sdram_bankmachine4_cmd_ready) begin
					bankmachine4_next_state <= 3'd5;
				end
				sdram_bankmachine4_cmd_payload_ras <= 1'd1;
				sdram_bankmachine4_cmd_payload_we <= 1'd1;
				sdram_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			end
			sdram_bankmachine4_track_close <= 1'd1;
		end
		2'd2: begin
			if (sdram_bankmachine4_done) begin
				bankmachine4_next_state <= 3'd5;
			end
			sdram_bankmachine4_track_close <= 1'd1;
		end
		2'd3: begin
			sdram_bankmachine4_sel_row_adr <= 1'd1;
			sdram_bankmachine4_track_open <= 1'd1;
			sdram_bankmachine4_cmd_valid <= sdram_bankmachine4_ras_allowed;
			sdram_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			if ((sdram_bankmachine4_cmd_ready & sdram_bankmachine4_ras_allowed)) begin
				bankmachine4_next_state <= 3'd6;
			end
			sdram_bankmachine4_cmd_payload_ras <= 1'd1;
		end
		3'd4: begin
			if (sdram_bankmachine4_done) begin
				sdram_bankmachine4_refresh_gnt <= 1'd1;
			end
			sdram_bankmachine4_track_close <= 1'd1;
			sdram_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			if ((~sdram_bankmachine4_refresh_req)) begin
				bankmachine4_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine4_next_state <= 2'd3;
		end
		3'd6: begin
			bankmachine4_next_state <= 1'd0;
		end
		default: begin
			if (sdram_bankmachine4_refresh_req) begin
				bankmachine4_next_state <= 3'd4;
			end else begin
				if (sdram_bankmachine4_cmd_buffer_source_valid) begin
					if (sdram_bankmachine4_has_openrow) begin
						if (sdram_bankmachine4_hit) begin
							if (sdram_bankmachine4_cas_allowed) begin
								sdram_bankmachine4_cmd_valid <= 1'd1;
								if (sdram_bankmachine4_cmd_buffer_source_payload_we) begin
									sdram_bankmachine4_req_wdata_ready <= sdram_bankmachine4_cmd_ready;
									sdram_bankmachine4_cmd_payload_is_write <= 1'd1;
									sdram_bankmachine4_cmd_payload_we <= 1'd1;
								end else begin
									sdram_bankmachine4_req_rdata_valid <= sdram_bankmachine4_cmd_ready;
									sdram_bankmachine4_cmd_payload_is_read <= 1'd1;
								end
								sdram_bankmachine4_cmd_payload_cas <= 1'd1;
								if ((sdram_bankmachine4_cmd_ready & sdram_bankmachine4_auto_precharge)) begin
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
assign sdram_bankmachine5_cmd_buffer_lookahead_sink_valid = sdram_bankmachine5_req_valid;
assign sdram_bankmachine5_req_ready = sdram_bankmachine5_cmd_buffer_lookahead_sink_ready;
assign sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_we = sdram_bankmachine5_req_we;
assign sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_adr = sdram_bankmachine5_req_adr;
assign sdram_bankmachine5_cmd_buffer_sink_valid = sdram_bankmachine5_cmd_buffer_lookahead_source_valid;
assign sdram_bankmachine5_cmd_buffer_lookahead_source_ready = sdram_bankmachine5_cmd_buffer_sink_ready;
assign sdram_bankmachine5_cmd_buffer_sink_first = sdram_bankmachine5_cmd_buffer_lookahead_source_first;
assign sdram_bankmachine5_cmd_buffer_sink_last = sdram_bankmachine5_cmd_buffer_lookahead_source_last;
assign sdram_bankmachine5_cmd_buffer_sink_payload_we = sdram_bankmachine5_cmd_buffer_lookahead_source_payload_we;
assign sdram_bankmachine5_cmd_buffer_sink_payload_adr = sdram_bankmachine5_cmd_buffer_lookahead_source_payload_adr;
assign sdram_bankmachine5_cmd_buffer_source_ready = (sdram_bankmachine5_req_wdata_ready | sdram_bankmachine5_req_rdata_valid);
assign sdram_bankmachine5_req_lock = (sdram_bankmachine5_cmd_buffer_lookahead_source_valid | sdram_bankmachine5_cmd_buffer_source_valid);
assign sdram_bankmachine5_hit = (sdram_bankmachine5_openrow == sdram_bankmachine5_cmd_buffer_source_payload_adr[20:7]);
assign sdram_bankmachine5_cmd_payload_ba = 3'd5;
always @(*) begin
	sdram_bankmachine5_cmd_payload_a <= 14'd0;
	if (sdram_bankmachine5_sel_row_adr) begin
		sdram_bankmachine5_cmd_payload_a <= sdram_bankmachine5_cmd_buffer_source_payload_adr[20:7];
	end else begin
		sdram_bankmachine5_cmd_payload_a <= ((sdram_bankmachine5_auto_precharge <<< 4'd10) | {sdram_bankmachine5_cmd_buffer_source_payload_adr[6:0], {3{1'd0}}});
	end
end
assign sdram_bankmachine5_wait = (~((sdram_bankmachine5_cmd_valid & sdram_bankmachine5_cmd_ready) & sdram_bankmachine5_cmd_payload_is_write));
always @(*) begin
	sdram_bankmachine5_auto_precharge <= 1'd0;
	if ((sdram_bankmachine5_cmd_buffer_lookahead_source_valid & sdram_bankmachine5_cmd_buffer_source_valid)) begin
		if ((sdram_bankmachine5_cmd_buffer_lookahead_source_payload_adr[20:7] != sdram_bankmachine5_cmd_buffer_source_payload_adr[20:7])) begin
			sdram_bankmachine5_auto_precharge <= (sdram_bankmachine5_track_close == 1'd0);
		end
	end
end
assign sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_din = {sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_last, sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_first, sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_adr, sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_we};
assign {sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_last, sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_first, sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_adr, sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_we} = sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_dout;
assign sdram_bankmachine5_cmd_buffer_lookahead_sink_ready = sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable;
assign sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_we = sdram_bankmachine5_cmd_buffer_lookahead_sink_valid;
assign sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_first = sdram_bankmachine5_cmd_buffer_lookahead_sink_first;
assign sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_last = sdram_bankmachine5_cmd_buffer_lookahead_sink_last;
assign sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_we = sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_we;
assign sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_adr = sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_adr;
assign sdram_bankmachine5_cmd_buffer_lookahead_source_valid = sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable;
assign sdram_bankmachine5_cmd_buffer_lookahead_source_first = sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_first;
assign sdram_bankmachine5_cmd_buffer_lookahead_source_last = sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_last;
assign sdram_bankmachine5_cmd_buffer_lookahead_source_payload_we = sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_we;
assign sdram_bankmachine5_cmd_buffer_lookahead_source_payload_adr = sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_adr;
assign sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_re = sdram_bankmachine5_cmd_buffer_lookahead_source_ready;
always @(*) begin
	sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (sdram_bankmachine5_cmd_buffer_lookahead_replace) begin
		sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr <= (sdram_bankmachine5_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr <= sdram_bankmachine5_cmd_buffer_lookahead_produce;
	end
end
assign sdram_bankmachine5_cmd_buffer_lookahead_wrport_dat_w = sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_din;
assign sdram_bankmachine5_cmd_buffer_lookahead_wrport_we = (sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_we & (sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable | sdram_bankmachine5_cmd_buffer_lookahead_replace));
assign sdram_bankmachine5_cmd_buffer_lookahead_do_read = (sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable & sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_re);
assign sdram_bankmachine5_cmd_buffer_lookahead_rdport_adr = sdram_bankmachine5_cmd_buffer_lookahead_consume;
assign sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_dout = sdram_bankmachine5_cmd_buffer_lookahead_rdport_dat_r;
assign sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable = (sdram_bankmachine5_cmd_buffer_lookahead_level != 4'd8);
assign sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable = (sdram_bankmachine5_cmd_buffer_lookahead_level != 1'd0);
assign sdram_bankmachine5_cmd_buffer_pipe_ce = (sdram_bankmachine5_cmd_buffer_source_ready | (~sdram_bankmachine5_cmd_buffer_valid_n));
assign sdram_bankmachine5_cmd_buffer_sink_ready = sdram_bankmachine5_cmd_buffer_pipe_ce;
assign sdram_bankmachine5_cmd_buffer_source_valid = sdram_bankmachine5_cmd_buffer_valid_n;
assign sdram_bankmachine5_cmd_buffer_busy = (1'd0 | sdram_bankmachine5_cmd_buffer_valid_n);
assign sdram_bankmachine5_cmd_buffer_source_first = sdram_bankmachine5_cmd_buffer_first_n;
assign sdram_bankmachine5_cmd_buffer_source_last = sdram_bankmachine5_cmd_buffer_last_n;
assign sdram_bankmachine5_done = (sdram_bankmachine5_count == 1'd0);
always @(*) begin
	sdram_bankmachine5_req_wdata_ready <= 1'd0;
	sdram_bankmachine5_track_open <= 1'd0;
	sdram_bankmachine5_req_rdata_valid <= 1'd0;
	sdram_bankmachine5_track_close <= 1'd0;
	sdram_bankmachine5_refresh_gnt <= 1'd0;
	sdram_bankmachine5_sel_row_adr <= 1'd0;
	sdram_bankmachine5_cmd_valid <= 1'd0;
	sdram_bankmachine5_cmd_payload_cas <= 1'd0;
	sdram_bankmachine5_cmd_payload_ras <= 1'd0;
	sdram_bankmachine5_cmd_payload_we <= 1'd0;
	sdram_bankmachine5_cmd_payload_is_cmd <= 1'd0;
	sdram_bankmachine5_cmd_payload_is_read <= 1'd0;
	sdram_bankmachine5_cmd_payload_is_write <= 1'd0;
	bankmachine5_next_state <= 3'd0;
	bankmachine5_next_state <= bankmachine5_state;
	case (bankmachine5_state)
		1'd1: begin
			if (sdram_bankmachine5_done) begin
				sdram_bankmachine5_cmd_valid <= 1'd1;
				if (sdram_bankmachine5_cmd_ready) begin
					bankmachine5_next_state <= 3'd5;
				end
				sdram_bankmachine5_cmd_payload_ras <= 1'd1;
				sdram_bankmachine5_cmd_payload_we <= 1'd1;
				sdram_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			end
			sdram_bankmachine5_track_close <= 1'd1;
		end
		2'd2: begin
			if (sdram_bankmachine5_done) begin
				bankmachine5_next_state <= 3'd5;
			end
			sdram_bankmachine5_track_close <= 1'd1;
		end
		2'd3: begin
			sdram_bankmachine5_sel_row_adr <= 1'd1;
			sdram_bankmachine5_track_open <= 1'd1;
			sdram_bankmachine5_cmd_valid <= sdram_bankmachine5_ras_allowed;
			sdram_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			if ((sdram_bankmachine5_cmd_ready & sdram_bankmachine5_ras_allowed)) begin
				bankmachine5_next_state <= 3'd6;
			end
			sdram_bankmachine5_cmd_payload_ras <= 1'd1;
		end
		3'd4: begin
			if (sdram_bankmachine5_done) begin
				sdram_bankmachine5_refresh_gnt <= 1'd1;
			end
			sdram_bankmachine5_track_close <= 1'd1;
			sdram_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			if ((~sdram_bankmachine5_refresh_req)) begin
				bankmachine5_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine5_next_state <= 2'd3;
		end
		3'd6: begin
			bankmachine5_next_state <= 1'd0;
		end
		default: begin
			if (sdram_bankmachine5_refresh_req) begin
				bankmachine5_next_state <= 3'd4;
			end else begin
				if (sdram_bankmachine5_cmd_buffer_source_valid) begin
					if (sdram_bankmachine5_has_openrow) begin
						if (sdram_bankmachine5_hit) begin
							if (sdram_bankmachine5_cas_allowed) begin
								sdram_bankmachine5_cmd_valid <= 1'd1;
								if (sdram_bankmachine5_cmd_buffer_source_payload_we) begin
									sdram_bankmachine5_req_wdata_ready <= sdram_bankmachine5_cmd_ready;
									sdram_bankmachine5_cmd_payload_is_write <= 1'd1;
									sdram_bankmachine5_cmd_payload_we <= 1'd1;
								end else begin
									sdram_bankmachine5_req_rdata_valid <= sdram_bankmachine5_cmd_ready;
									sdram_bankmachine5_cmd_payload_is_read <= 1'd1;
								end
								sdram_bankmachine5_cmd_payload_cas <= 1'd1;
								if ((sdram_bankmachine5_cmd_ready & sdram_bankmachine5_auto_precharge)) begin
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
assign sdram_bankmachine6_cmd_buffer_lookahead_sink_valid = sdram_bankmachine6_req_valid;
assign sdram_bankmachine6_req_ready = sdram_bankmachine6_cmd_buffer_lookahead_sink_ready;
assign sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_we = sdram_bankmachine6_req_we;
assign sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_adr = sdram_bankmachine6_req_adr;
assign sdram_bankmachine6_cmd_buffer_sink_valid = sdram_bankmachine6_cmd_buffer_lookahead_source_valid;
assign sdram_bankmachine6_cmd_buffer_lookahead_source_ready = sdram_bankmachine6_cmd_buffer_sink_ready;
assign sdram_bankmachine6_cmd_buffer_sink_first = sdram_bankmachine6_cmd_buffer_lookahead_source_first;
assign sdram_bankmachine6_cmd_buffer_sink_last = sdram_bankmachine6_cmd_buffer_lookahead_source_last;
assign sdram_bankmachine6_cmd_buffer_sink_payload_we = sdram_bankmachine6_cmd_buffer_lookahead_source_payload_we;
assign sdram_bankmachine6_cmd_buffer_sink_payload_adr = sdram_bankmachine6_cmd_buffer_lookahead_source_payload_adr;
assign sdram_bankmachine6_cmd_buffer_source_ready = (sdram_bankmachine6_req_wdata_ready | sdram_bankmachine6_req_rdata_valid);
assign sdram_bankmachine6_req_lock = (sdram_bankmachine6_cmd_buffer_lookahead_source_valid | sdram_bankmachine6_cmd_buffer_source_valid);
assign sdram_bankmachine6_hit = (sdram_bankmachine6_openrow == sdram_bankmachine6_cmd_buffer_source_payload_adr[20:7]);
assign sdram_bankmachine6_cmd_payload_ba = 3'd6;
always @(*) begin
	sdram_bankmachine6_cmd_payload_a <= 14'd0;
	if (sdram_bankmachine6_sel_row_adr) begin
		sdram_bankmachine6_cmd_payload_a <= sdram_bankmachine6_cmd_buffer_source_payload_adr[20:7];
	end else begin
		sdram_bankmachine6_cmd_payload_a <= ((sdram_bankmachine6_auto_precharge <<< 4'd10) | {sdram_bankmachine6_cmd_buffer_source_payload_adr[6:0], {3{1'd0}}});
	end
end
assign sdram_bankmachine6_wait = (~((sdram_bankmachine6_cmd_valid & sdram_bankmachine6_cmd_ready) & sdram_bankmachine6_cmd_payload_is_write));
always @(*) begin
	sdram_bankmachine6_auto_precharge <= 1'd0;
	if ((sdram_bankmachine6_cmd_buffer_lookahead_source_valid & sdram_bankmachine6_cmd_buffer_source_valid)) begin
		if ((sdram_bankmachine6_cmd_buffer_lookahead_source_payload_adr[20:7] != sdram_bankmachine6_cmd_buffer_source_payload_adr[20:7])) begin
			sdram_bankmachine6_auto_precharge <= (sdram_bankmachine6_track_close == 1'd0);
		end
	end
end
assign sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_din = {sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_last, sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_first, sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_adr, sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_we};
assign {sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_last, sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_first, sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_adr, sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_we} = sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_dout;
assign sdram_bankmachine6_cmd_buffer_lookahead_sink_ready = sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable;
assign sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_we = sdram_bankmachine6_cmd_buffer_lookahead_sink_valid;
assign sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_first = sdram_bankmachine6_cmd_buffer_lookahead_sink_first;
assign sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_last = sdram_bankmachine6_cmd_buffer_lookahead_sink_last;
assign sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_we = sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_we;
assign sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_adr = sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_adr;
assign sdram_bankmachine6_cmd_buffer_lookahead_source_valid = sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable;
assign sdram_bankmachine6_cmd_buffer_lookahead_source_first = sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_first;
assign sdram_bankmachine6_cmd_buffer_lookahead_source_last = sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_last;
assign sdram_bankmachine6_cmd_buffer_lookahead_source_payload_we = sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_we;
assign sdram_bankmachine6_cmd_buffer_lookahead_source_payload_adr = sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_adr;
assign sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_re = sdram_bankmachine6_cmd_buffer_lookahead_source_ready;
always @(*) begin
	sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (sdram_bankmachine6_cmd_buffer_lookahead_replace) begin
		sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr <= (sdram_bankmachine6_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr <= sdram_bankmachine6_cmd_buffer_lookahead_produce;
	end
end
assign sdram_bankmachine6_cmd_buffer_lookahead_wrport_dat_w = sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_din;
assign sdram_bankmachine6_cmd_buffer_lookahead_wrport_we = (sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_we & (sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable | sdram_bankmachine6_cmd_buffer_lookahead_replace));
assign sdram_bankmachine6_cmd_buffer_lookahead_do_read = (sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable & sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_re);
assign sdram_bankmachine6_cmd_buffer_lookahead_rdport_adr = sdram_bankmachine6_cmd_buffer_lookahead_consume;
assign sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_dout = sdram_bankmachine6_cmd_buffer_lookahead_rdport_dat_r;
assign sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable = (sdram_bankmachine6_cmd_buffer_lookahead_level != 4'd8);
assign sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable = (sdram_bankmachine6_cmd_buffer_lookahead_level != 1'd0);
assign sdram_bankmachine6_cmd_buffer_pipe_ce = (sdram_bankmachine6_cmd_buffer_source_ready | (~sdram_bankmachine6_cmd_buffer_valid_n));
assign sdram_bankmachine6_cmd_buffer_sink_ready = sdram_bankmachine6_cmd_buffer_pipe_ce;
assign sdram_bankmachine6_cmd_buffer_source_valid = sdram_bankmachine6_cmd_buffer_valid_n;
assign sdram_bankmachine6_cmd_buffer_busy = (1'd0 | sdram_bankmachine6_cmd_buffer_valid_n);
assign sdram_bankmachine6_cmd_buffer_source_first = sdram_bankmachine6_cmd_buffer_first_n;
assign sdram_bankmachine6_cmd_buffer_source_last = sdram_bankmachine6_cmd_buffer_last_n;
assign sdram_bankmachine6_done = (sdram_bankmachine6_count == 1'd0);
always @(*) begin
	sdram_bankmachine6_req_wdata_ready <= 1'd0;
	sdram_bankmachine6_track_open <= 1'd0;
	sdram_bankmachine6_req_rdata_valid <= 1'd0;
	sdram_bankmachine6_track_close <= 1'd0;
	sdram_bankmachine6_refresh_gnt <= 1'd0;
	sdram_bankmachine6_sel_row_adr <= 1'd0;
	bankmachine6_next_state <= 3'd0;
	sdram_bankmachine6_cmd_valid <= 1'd0;
	sdram_bankmachine6_cmd_payload_cas <= 1'd0;
	sdram_bankmachine6_cmd_payload_ras <= 1'd0;
	sdram_bankmachine6_cmd_payload_we <= 1'd0;
	sdram_bankmachine6_cmd_payload_is_cmd <= 1'd0;
	sdram_bankmachine6_cmd_payload_is_read <= 1'd0;
	sdram_bankmachine6_cmd_payload_is_write <= 1'd0;
	bankmachine6_next_state <= bankmachine6_state;
	case (bankmachine6_state)
		1'd1: begin
			if (sdram_bankmachine6_done) begin
				sdram_bankmachine6_cmd_valid <= 1'd1;
				if (sdram_bankmachine6_cmd_ready) begin
					bankmachine6_next_state <= 3'd5;
				end
				sdram_bankmachine6_cmd_payload_ras <= 1'd1;
				sdram_bankmachine6_cmd_payload_we <= 1'd1;
				sdram_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			end
			sdram_bankmachine6_track_close <= 1'd1;
		end
		2'd2: begin
			if (sdram_bankmachine6_done) begin
				bankmachine6_next_state <= 3'd5;
			end
			sdram_bankmachine6_track_close <= 1'd1;
		end
		2'd3: begin
			sdram_bankmachine6_sel_row_adr <= 1'd1;
			sdram_bankmachine6_track_open <= 1'd1;
			sdram_bankmachine6_cmd_valid <= sdram_bankmachine6_ras_allowed;
			sdram_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			if ((sdram_bankmachine6_cmd_ready & sdram_bankmachine6_ras_allowed)) begin
				bankmachine6_next_state <= 3'd6;
			end
			sdram_bankmachine6_cmd_payload_ras <= 1'd1;
		end
		3'd4: begin
			if (sdram_bankmachine6_done) begin
				sdram_bankmachine6_refresh_gnt <= 1'd1;
			end
			sdram_bankmachine6_track_close <= 1'd1;
			sdram_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			if ((~sdram_bankmachine6_refresh_req)) begin
				bankmachine6_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine6_next_state <= 2'd3;
		end
		3'd6: begin
			bankmachine6_next_state <= 1'd0;
		end
		default: begin
			if (sdram_bankmachine6_refresh_req) begin
				bankmachine6_next_state <= 3'd4;
			end else begin
				if (sdram_bankmachine6_cmd_buffer_source_valid) begin
					if (sdram_bankmachine6_has_openrow) begin
						if (sdram_bankmachine6_hit) begin
							if (sdram_bankmachine6_cas_allowed) begin
								sdram_bankmachine6_cmd_valid <= 1'd1;
								if (sdram_bankmachine6_cmd_buffer_source_payload_we) begin
									sdram_bankmachine6_req_wdata_ready <= sdram_bankmachine6_cmd_ready;
									sdram_bankmachine6_cmd_payload_is_write <= 1'd1;
									sdram_bankmachine6_cmd_payload_we <= 1'd1;
								end else begin
									sdram_bankmachine6_req_rdata_valid <= sdram_bankmachine6_cmd_ready;
									sdram_bankmachine6_cmd_payload_is_read <= 1'd1;
								end
								sdram_bankmachine6_cmd_payload_cas <= 1'd1;
								if ((sdram_bankmachine6_cmd_ready & sdram_bankmachine6_auto_precharge)) begin
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
assign sdram_bankmachine7_cmd_buffer_lookahead_sink_valid = sdram_bankmachine7_req_valid;
assign sdram_bankmachine7_req_ready = sdram_bankmachine7_cmd_buffer_lookahead_sink_ready;
assign sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_we = sdram_bankmachine7_req_we;
assign sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_adr = sdram_bankmachine7_req_adr;
assign sdram_bankmachine7_cmd_buffer_sink_valid = sdram_bankmachine7_cmd_buffer_lookahead_source_valid;
assign sdram_bankmachine7_cmd_buffer_lookahead_source_ready = sdram_bankmachine7_cmd_buffer_sink_ready;
assign sdram_bankmachine7_cmd_buffer_sink_first = sdram_bankmachine7_cmd_buffer_lookahead_source_first;
assign sdram_bankmachine7_cmd_buffer_sink_last = sdram_bankmachine7_cmd_buffer_lookahead_source_last;
assign sdram_bankmachine7_cmd_buffer_sink_payload_we = sdram_bankmachine7_cmd_buffer_lookahead_source_payload_we;
assign sdram_bankmachine7_cmd_buffer_sink_payload_adr = sdram_bankmachine7_cmd_buffer_lookahead_source_payload_adr;
assign sdram_bankmachine7_cmd_buffer_source_ready = (sdram_bankmachine7_req_wdata_ready | sdram_bankmachine7_req_rdata_valid);
assign sdram_bankmachine7_req_lock = (sdram_bankmachine7_cmd_buffer_lookahead_source_valid | sdram_bankmachine7_cmd_buffer_source_valid);
assign sdram_bankmachine7_hit = (sdram_bankmachine7_openrow == sdram_bankmachine7_cmd_buffer_source_payload_adr[20:7]);
assign sdram_bankmachine7_cmd_payload_ba = 3'd7;
always @(*) begin
	sdram_bankmachine7_cmd_payload_a <= 14'd0;
	if (sdram_bankmachine7_sel_row_adr) begin
		sdram_bankmachine7_cmd_payload_a <= sdram_bankmachine7_cmd_buffer_source_payload_adr[20:7];
	end else begin
		sdram_bankmachine7_cmd_payload_a <= ((sdram_bankmachine7_auto_precharge <<< 4'd10) | {sdram_bankmachine7_cmd_buffer_source_payload_adr[6:0], {3{1'd0}}});
	end
end
assign sdram_bankmachine7_wait = (~((sdram_bankmachine7_cmd_valid & sdram_bankmachine7_cmd_ready) & sdram_bankmachine7_cmd_payload_is_write));
always @(*) begin
	sdram_bankmachine7_auto_precharge <= 1'd0;
	if ((sdram_bankmachine7_cmd_buffer_lookahead_source_valid & sdram_bankmachine7_cmd_buffer_source_valid)) begin
		if ((sdram_bankmachine7_cmd_buffer_lookahead_source_payload_adr[20:7] != sdram_bankmachine7_cmd_buffer_source_payload_adr[20:7])) begin
			sdram_bankmachine7_auto_precharge <= (sdram_bankmachine7_track_close == 1'd0);
		end
	end
end
assign sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_din = {sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_last, sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_first, sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_adr, sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_we};
assign {sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_last, sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_first, sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_adr, sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_we} = sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_dout;
assign sdram_bankmachine7_cmd_buffer_lookahead_sink_ready = sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable;
assign sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_we = sdram_bankmachine7_cmd_buffer_lookahead_sink_valid;
assign sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_first = sdram_bankmachine7_cmd_buffer_lookahead_sink_first;
assign sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_last = sdram_bankmachine7_cmd_buffer_lookahead_sink_last;
assign sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_we = sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_we;
assign sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_adr = sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_adr;
assign sdram_bankmachine7_cmd_buffer_lookahead_source_valid = sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable;
assign sdram_bankmachine7_cmd_buffer_lookahead_source_first = sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_first;
assign sdram_bankmachine7_cmd_buffer_lookahead_source_last = sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_last;
assign sdram_bankmachine7_cmd_buffer_lookahead_source_payload_we = sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_we;
assign sdram_bankmachine7_cmd_buffer_lookahead_source_payload_adr = sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_adr;
assign sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_re = sdram_bankmachine7_cmd_buffer_lookahead_source_ready;
always @(*) begin
	sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (sdram_bankmachine7_cmd_buffer_lookahead_replace) begin
		sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr <= (sdram_bankmachine7_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr <= sdram_bankmachine7_cmd_buffer_lookahead_produce;
	end
end
assign sdram_bankmachine7_cmd_buffer_lookahead_wrport_dat_w = sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_din;
assign sdram_bankmachine7_cmd_buffer_lookahead_wrport_we = (sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_we & (sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable | sdram_bankmachine7_cmd_buffer_lookahead_replace));
assign sdram_bankmachine7_cmd_buffer_lookahead_do_read = (sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable & sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_re);
assign sdram_bankmachine7_cmd_buffer_lookahead_rdport_adr = sdram_bankmachine7_cmd_buffer_lookahead_consume;
assign sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_dout = sdram_bankmachine7_cmd_buffer_lookahead_rdport_dat_r;
assign sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable = (sdram_bankmachine7_cmd_buffer_lookahead_level != 4'd8);
assign sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable = (sdram_bankmachine7_cmd_buffer_lookahead_level != 1'd0);
assign sdram_bankmachine7_cmd_buffer_pipe_ce = (sdram_bankmachine7_cmd_buffer_source_ready | (~sdram_bankmachine7_cmd_buffer_valid_n));
assign sdram_bankmachine7_cmd_buffer_sink_ready = sdram_bankmachine7_cmd_buffer_pipe_ce;
assign sdram_bankmachine7_cmd_buffer_source_valid = sdram_bankmachine7_cmd_buffer_valid_n;
assign sdram_bankmachine7_cmd_buffer_busy = (1'd0 | sdram_bankmachine7_cmd_buffer_valid_n);
assign sdram_bankmachine7_cmd_buffer_source_first = sdram_bankmachine7_cmd_buffer_first_n;
assign sdram_bankmachine7_cmd_buffer_source_last = sdram_bankmachine7_cmd_buffer_last_n;
assign sdram_bankmachine7_done = (sdram_bankmachine7_count == 1'd0);
always @(*) begin
	sdram_bankmachine7_req_wdata_ready <= 1'd0;
	sdram_bankmachine7_track_open <= 1'd0;
	sdram_bankmachine7_req_rdata_valid <= 1'd0;
	sdram_bankmachine7_track_close <= 1'd0;
	sdram_bankmachine7_refresh_gnt <= 1'd0;
	sdram_bankmachine7_sel_row_adr <= 1'd0;
	sdram_bankmachine7_cmd_valid <= 1'd0;
	sdram_bankmachine7_cmd_payload_cas <= 1'd0;
	sdram_bankmachine7_cmd_payload_ras <= 1'd0;
	sdram_bankmachine7_cmd_payload_we <= 1'd0;
	sdram_bankmachine7_cmd_payload_is_cmd <= 1'd0;
	bankmachine7_next_state <= 3'd0;
	sdram_bankmachine7_cmd_payload_is_read <= 1'd0;
	sdram_bankmachine7_cmd_payload_is_write <= 1'd0;
	bankmachine7_next_state <= bankmachine7_state;
	case (bankmachine7_state)
		1'd1: begin
			if (sdram_bankmachine7_done) begin
				sdram_bankmachine7_cmd_valid <= 1'd1;
				if (sdram_bankmachine7_cmd_ready) begin
					bankmachine7_next_state <= 3'd5;
				end
				sdram_bankmachine7_cmd_payload_ras <= 1'd1;
				sdram_bankmachine7_cmd_payload_we <= 1'd1;
				sdram_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			end
			sdram_bankmachine7_track_close <= 1'd1;
		end
		2'd2: begin
			if (sdram_bankmachine7_done) begin
				bankmachine7_next_state <= 3'd5;
			end
			sdram_bankmachine7_track_close <= 1'd1;
		end
		2'd3: begin
			sdram_bankmachine7_sel_row_adr <= 1'd1;
			sdram_bankmachine7_track_open <= 1'd1;
			sdram_bankmachine7_cmd_valid <= sdram_bankmachine7_ras_allowed;
			sdram_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			if ((sdram_bankmachine7_cmd_ready & sdram_bankmachine7_ras_allowed)) begin
				bankmachine7_next_state <= 3'd6;
			end
			sdram_bankmachine7_cmd_payload_ras <= 1'd1;
		end
		3'd4: begin
			if (sdram_bankmachine7_done) begin
				sdram_bankmachine7_refresh_gnt <= 1'd1;
			end
			sdram_bankmachine7_track_close <= 1'd1;
			sdram_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			if ((~sdram_bankmachine7_refresh_req)) begin
				bankmachine7_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine7_next_state <= 2'd3;
		end
		3'd6: begin
			bankmachine7_next_state <= 1'd0;
		end
		default: begin
			if (sdram_bankmachine7_refresh_req) begin
				bankmachine7_next_state <= 3'd4;
			end else begin
				if (sdram_bankmachine7_cmd_buffer_source_valid) begin
					if (sdram_bankmachine7_has_openrow) begin
						if (sdram_bankmachine7_hit) begin
							if (sdram_bankmachine7_cas_allowed) begin
								sdram_bankmachine7_cmd_valid <= 1'd1;
								if (sdram_bankmachine7_cmd_buffer_source_payload_we) begin
									sdram_bankmachine7_req_wdata_ready <= sdram_bankmachine7_cmd_ready;
									sdram_bankmachine7_cmd_payload_is_write <= 1'd1;
									sdram_bankmachine7_cmd_payload_we <= 1'd1;
								end else begin
									sdram_bankmachine7_req_rdata_valid <= sdram_bankmachine7_cmd_ready;
									sdram_bankmachine7_cmd_payload_is_read <= 1'd1;
								end
								sdram_bankmachine7_cmd_payload_cas <= 1'd1;
								if ((sdram_bankmachine7_cmd_ready & sdram_bankmachine7_auto_precharge)) begin
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
assign sdram_trrdcon_valid = ((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & ((sdram_choose_cmd_cmd_payload_ras & (~sdram_choose_cmd_cmd_payload_cas)) & (~sdram_choose_cmd_cmd_payload_we)));
assign sdram_tfawcon_valid = ((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & ((sdram_choose_cmd_cmd_payload_ras & (~sdram_choose_cmd_cmd_payload_cas)) & (~sdram_choose_cmd_cmd_payload_we)));
assign sdram_ras_allowed = (sdram_trrdcon_ready & sdram_tfawcon_ready);
assign sdram_bankmachine0_ras_allowed = sdram_ras_allowed;
assign sdram_bankmachine1_ras_allowed = sdram_ras_allowed;
assign sdram_bankmachine2_ras_allowed = sdram_ras_allowed;
assign sdram_bankmachine3_ras_allowed = sdram_ras_allowed;
assign sdram_bankmachine4_ras_allowed = sdram_ras_allowed;
assign sdram_bankmachine5_ras_allowed = sdram_ras_allowed;
assign sdram_bankmachine6_ras_allowed = sdram_ras_allowed;
assign sdram_bankmachine7_ras_allowed = sdram_ras_allowed;
assign sdram_tccdcon_valid = ((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & (sdram_choose_req_cmd_payload_is_write | sdram_choose_req_cmd_payload_is_read));
assign sdram_cas_allowed = sdram_tccdcon_ready;
assign sdram_bankmachine0_cas_allowed = sdram_cas_allowed;
assign sdram_bankmachine1_cas_allowed = sdram_cas_allowed;
assign sdram_bankmachine2_cas_allowed = sdram_cas_allowed;
assign sdram_bankmachine3_cas_allowed = sdram_cas_allowed;
assign sdram_bankmachine4_cas_allowed = sdram_cas_allowed;
assign sdram_bankmachine5_cas_allowed = sdram_cas_allowed;
assign sdram_bankmachine6_cas_allowed = sdram_cas_allowed;
assign sdram_bankmachine7_cas_allowed = sdram_cas_allowed;
assign sdram_twtrcon_valid = ((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & sdram_choose_req_cmd_payload_is_write);
assign sdram_read_available = ((((((((sdram_bankmachine0_cmd_valid & sdram_bankmachine0_cmd_payload_is_read) | (sdram_bankmachine1_cmd_valid & sdram_bankmachine1_cmd_payload_is_read)) | (sdram_bankmachine2_cmd_valid & sdram_bankmachine2_cmd_payload_is_read)) | (sdram_bankmachine3_cmd_valid & sdram_bankmachine3_cmd_payload_is_read)) | (sdram_bankmachine4_cmd_valid & sdram_bankmachine4_cmd_payload_is_read)) | (sdram_bankmachine5_cmd_valid & sdram_bankmachine5_cmd_payload_is_read)) | (sdram_bankmachine6_cmd_valid & sdram_bankmachine6_cmd_payload_is_read)) | (sdram_bankmachine7_cmd_valid & sdram_bankmachine7_cmd_payload_is_read));
assign sdram_write_available = ((((((((sdram_bankmachine0_cmd_valid & sdram_bankmachine0_cmd_payload_is_write) | (sdram_bankmachine1_cmd_valid & sdram_bankmachine1_cmd_payload_is_write)) | (sdram_bankmachine2_cmd_valid & sdram_bankmachine2_cmd_payload_is_write)) | (sdram_bankmachine3_cmd_valid & sdram_bankmachine3_cmd_payload_is_write)) | (sdram_bankmachine4_cmd_valid & sdram_bankmachine4_cmd_payload_is_write)) | (sdram_bankmachine5_cmd_valid & sdram_bankmachine5_cmd_payload_is_write)) | (sdram_bankmachine6_cmd_valid & sdram_bankmachine6_cmd_payload_is_write)) | (sdram_bankmachine7_cmd_valid & sdram_bankmachine7_cmd_payload_is_write));
assign sdram_max_time0 = (sdram_time0 == 1'd0);
assign sdram_max_time1 = (sdram_time1 == 1'd0);
assign sdram_bankmachine0_refresh_req = sdram_cmd_valid;
assign sdram_bankmachine1_refresh_req = sdram_cmd_valid;
assign sdram_bankmachine2_refresh_req = sdram_cmd_valid;
assign sdram_bankmachine3_refresh_req = sdram_cmd_valid;
assign sdram_bankmachine4_refresh_req = sdram_cmd_valid;
assign sdram_bankmachine5_refresh_req = sdram_cmd_valid;
assign sdram_bankmachine6_refresh_req = sdram_cmd_valid;
assign sdram_bankmachine7_refresh_req = sdram_cmd_valid;
assign sdram_go_to_refresh = (((((((sdram_bankmachine0_refresh_gnt & sdram_bankmachine1_refresh_gnt) & sdram_bankmachine2_refresh_gnt) & sdram_bankmachine3_refresh_gnt) & sdram_bankmachine4_refresh_gnt) & sdram_bankmachine5_refresh_gnt) & sdram_bankmachine6_refresh_gnt) & sdram_bankmachine7_refresh_gnt);
assign sdram_interface_rdata = {sdram_dfi_p3_rddata, sdram_dfi_p2_rddata, sdram_dfi_p1_rddata, sdram_dfi_p0_rddata};
assign {sdram_dfi_p3_wrdata, sdram_dfi_p2_wrdata, sdram_dfi_p1_wrdata, sdram_dfi_p0_wrdata} = sdram_interface_wdata;
assign {sdram_dfi_p3_wrdata_mask, sdram_dfi_p2_wrdata_mask, sdram_dfi_p1_wrdata_mask, sdram_dfi_p0_wrdata_mask} = (~sdram_interface_wdata_we);
always @(*) begin
	sdram_choose_cmd_valids <= 8'd0;
	sdram_choose_cmd_valids[0] <= (sdram_bankmachine0_cmd_valid & (((sdram_bankmachine0_cmd_payload_is_cmd & sdram_choose_cmd_want_cmds) & ((~((sdram_bankmachine0_cmd_payload_ras & (~sdram_bankmachine0_cmd_payload_cas)) & (~sdram_bankmachine0_cmd_payload_we))) | sdram_choose_cmd_want_activates)) | ((sdram_bankmachine0_cmd_payload_is_read == sdram_choose_cmd_want_reads) & (sdram_bankmachine0_cmd_payload_is_write == sdram_choose_cmd_want_writes))));
	sdram_choose_cmd_valids[1] <= (sdram_bankmachine1_cmd_valid & (((sdram_bankmachine1_cmd_payload_is_cmd & sdram_choose_cmd_want_cmds) & ((~((sdram_bankmachine1_cmd_payload_ras & (~sdram_bankmachine1_cmd_payload_cas)) & (~sdram_bankmachine1_cmd_payload_we))) | sdram_choose_cmd_want_activates)) | ((sdram_bankmachine1_cmd_payload_is_read == sdram_choose_cmd_want_reads) & (sdram_bankmachine1_cmd_payload_is_write == sdram_choose_cmd_want_writes))));
	sdram_choose_cmd_valids[2] <= (sdram_bankmachine2_cmd_valid & (((sdram_bankmachine2_cmd_payload_is_cmd & sdram_choose_cmd_want_cmds) & ((~((sdram_bankmachine2_cmd_payload_ras & (~sdram_bankmachine2_cmd_payload_cas)) & (~sdram_bankmachine2_cmd_payload_we))) | sdram_choose_cmd_want_activates)) | ((sdram_bankmachine2_cmd_payload_is_read == sdram_choose_cmd_want_reads) & (sdram_bankmachine2_cmd_payload_is_write == sdram_choose_cmd_want_writes))));
	sdram_choose_cmd_valids[3] <= (sdram_bankmachine3_cmd_valid & (((sdram_bankmachine3_cmd_payload_is_cmd & sdram_choose_cmd_want_cmds) & ((~((sdram_bankmachine3_cmd_payload_ras & (~sdram_bankmachine3_cmd_payload_cas)) & (~sdram_bankmachine3_cmd_payload_we))) | sdram_choose_cmd_want_activates)) | ((sdram_bankmachine3_cmd_payload_is_read == sdram_choose_cmd_want_reads) & (sdram_bankmachine3_cmd_payload_is_write == sdram_choose_cmd_want_writes))));
	sdram_choose_cmd_valids[4] <= (sdram_bankmachine4_cmd_valid & (((sdram_bankmachine4_cmd_payload_is_cmd & sdram_choose_cmd_want_cmds) & ((~((sdram_bankmachine4_cmd_payload_ras & (~sdram_bankmachine4_cmd_payload_cas)) & (~sdram_bankmachine4_cmd_payload_we))) | sdram_choose_cmd_want_activates)) | ((sdram_bankmachine4_cmd_payload_is_read == sdram_choose_cmd_want_reads) & (sdram_bankmachine4_cmd_payload_is_write == sdram_choose_cmd_want_writes))));
	sdram_choose_cmd_valids[5] <= (sdram_bankmachine5_cmd_valid & (((sdram_bankmachine5_cmd_payload_is_cmd & sdram_choose_cmd_want_cmds) & ((~((sdram_bankmachine5_cmd_payload_ras & (~sdram_bankmachine5_cmd_payload_cas)) & (~sdram_bankmachine5_cmd_payload_we))) | sdram_choose_cmd_want_activates)) | ((sdram_bankmachine5_cmd_payload_is_read == sdram_choose_cmd_want_reads) & (sdram_bankmachine5_cmd_payload_is_write == sdram_choose_cmd_want_writes))));
	sdram_choose_cmd_valids[6] <= (sdram_bankmachine6_cmd_valid & (((sdram_bankmachine6_cmd_payload_is_cmd & sdram_choose_cmd_want_cmds) & ((~((sdram_bankmachine6_cmd_payload_ras & (~sdram_bankmachine6_cmd_payload_cas)) & (~sdram_bankmachine6_cmd_payload_we))) | sdram_choose_cmd_want_activates)) | ((sdram_bankmachine6_cmd_payload_is_read == sdram_choose_cmd_want_reads) & (sdram_bankmachine6_cmd_payload_is_write == sdram_choose_cmd_want_writes))));
	sdram_choose_cmd_valids[7] <= (sdram_bankmachine7_cmd_valid & (((sdram_bankmachine7_cmd_payload_is_cmd & sdram_choose_cmd_want_cmds) & ((~((sdram_bankmachine7_cmd_payload_ras & (~sdram_bankmachine7_cmd_payload_cas)) & (~sdram_bankmachine7_cmd_payload_we))) | sdram_choose_cmd_want_activates)) | ((sdram_bankmachine7_cmd_payload_is_read == sdram_choose_cmd_want_reads) & (sdram_bankmachine7_cmd_payload_is_write == sdram_choose_cmd_want_writes))));
end
assign sdram_choose_cmd_request = sdram_choose_cmd_valids;
assign sdram_choose_cmd_cmd_valid = rhs_array_muxed0;
assign sdram_choose_cmd_cmd_payload_a = rhs_array_muxed1;
assign sdram_choose_cmd_cmd_payload_ba = rhs_array_muxed2;
assign sdram_choose_cmd_cmd_payload_is_read = rhs_array_muxed3;
assign sdram_choose_cmd_cmd_payload_is_write = rhs_array_muxed4;
assign sdram_choose_cmd_cmd_payload_is_cmd = rhs_array_muxed5;
always @(*) begin
	sdram_choose_cmd_cmd_payload_cas <= 1'd0;
	if (sdram_choose_cmd_cmd_valid) begin
		sdram_choose_cmd_cmd_payload_cas <= t_array_muxed0;
	end
end
always @(*) begin
	sdram_choose_cmd_cmd_payload_ras <= 1'd0;
	if (sdram_choose_cmd_cmd_valid) begin
		sdram_choose_cmd_cmd_payload_ras <= t_array_muxed1;
	end
end
always @(*) begin
	sdram_choose_cmd_cmd_payload_we <= 1'd0;
	if (sdram_choose_cmd_cmd_valid) begin
		sdram_choose_cmd_cmd_payload_we <= t_array_muxed2;
	end
end
assign sdram_choose_cmd_ce = sdram_choose_cmd_cmd_ready;
always @(*) begin
	sdram_choose_req_valids <= 8'd0;
	sdram_choose_req_valids[0] <= (sdram_bankmachine0_cmd_valid & (((sdram_bankmachine0_cmd_payload_is_cmd & sdram_choose_req_want_cmds) & ((~((sdram_bankmachine0_cmd_payload_ras & (~sdram_bankmachine0_cmd_payload_cas)) & (~sdram_bankmachine0_cmd_payload_we))) | sdram_choose_req_want_activates)) | ((sdram_bankmachine0_cmd_payload_is_read == sdram_choose_req_want_reads) & (sdram_bankmachine0_cmd_payload_is_write == sdram_choose_req_want_writes))));
	sdram_choose_req_valids[1] <= (sdram_bankmachine1_cmd_valid & (((sdram_bankmachine1_cmd_payload_is_cmd & sdram_choose_req_want_cmds) & ((~((sdram_bankmachine1_cmd_payload_ras & (~sdram_bankmachine1_cmd_payload_cas)) & (~sdram_bankmachine1_cmd_payload_we))) | sdram_choose_req_want_activates)) | ((sdram_bankmachine1_cmd_payload_is_read == sdram_choose_req_want_reads) & (sdram_bankmachine1_cmd_payload_is_write == sdram_choose_req_want_writes))));
	sdram_choose_req_valids[2] <= (sdram_bankmachine2_cmd_valid & (((sdram_bankmachine2_cmd_payload_is_cmd & sdram_choose_req_want_cmds) & ((~((sdram_bankmachine2_cmd_payload_ras & (~sdram_bankmachine2_cmd_payload_cas)) & (~sdram_bankmachine2_cmd_payload_we))) | sdram_choose_req_want_activates)) | ((sdram_bankmachine2_cmd_payload_is_read == sdram_choose_req_want_reads) & (sdram_bankmachine2_cmd_payload_is_write == sdram_choose_req_want_writes))));
	sdram_choose_req_valids[3] <= (sdram_bankmachine3_cmd_valid & (((sdram_bankmachine3_cmd_payload_is_cmd & sdram_choose_req_want_cmds) & ((~((sdram_bankmachine3_cmd_payload_ras & (~sdram_bankmachine3_cmd_payload_cas)) & (~sdram_bankmachine3_cmd_payload_we))) | sdram_choose_req_want_activates)) | ((sdram_bankmachine3_cmd_payload_is_read == sdram_choose_req_want_reads) & (sdram_bankmachine3_cmd_payload_is_write == sdram_choose_req_want_writes))));
	sdram_choose_req_valids[4] <= (sdram_bankmachine4_cmd_valid & (((sdram_bankmachine4_cmd_payload_is_cmd & sdram_choose_req_want_cmds) & ((~((sdram_bankmachine4_cmd_payload_ras & (~sdram_bankmachine4_cmd_payload_cas)) & (~sdram_bankmachine4_cmd_payload_we))) | sdram_choose_req_want_activates)) | ((sdram_bankmachine4_cmd_payload_is_read == sdram_choose_req_want_reads) & (sdram_bankmachine4_cmd_payload_is_write == sdram_choose_req_want_writes))));
	sdram_choose_req_valids[5] <= (sdram_bankmachine5_cmd_valid & (((sdram_bankmachine5_cmd_payload_is_cmd & sdram_choose_req_want_cmds) & ((~((sdram_bankmachine5_cmd_payload_ras & (~sdram_bankmachine5_cmd_payload_cas)) & (~sdram_bankmachine5_cmd_payload_we))) | sdram_choose_req_want_activates)) | ((sdram_bankmachine5_cmd_payload_is_read == sdram_choose_req_want_reads) & (sdram_bankmachine5_cmd_payload_is_write == sdram_choose_req_want_writes))));
	sdram_choose_req_valids[6] <= (sdram_bankmachine6_cmd_valid & (((sdram_bankmachine6_cmd_payload_is_cmd & sdram_choose_req_want_cmds) & ((~((sdram_bankmachine6_cmd_payload_ras & (~sdram_bankmachine6_cmd_payload_cas)) & (~sdram_bankmachine6_cmd_payload_we))) | sdram_choose_req_want_activates)) | ((sdram_bankmachine6_cmd_payload_is_read == sdram_choose_req_want_reads) & (sdram_bankmachine6_cmd_payload_is_write == sdram_choose_req_want_writes))));
	sdram_choose_req_valids[7] <= (sdram_bankmachine7_cmd_valid & (((sdram_bankmachine7_cmd_payload_is_cmd & sdram_choose_req_want_cmds) & ((~((sdram_bankmachine7_cmd_payload_ras & (~sdram_bankmachine7_cmd_payload_cas)) & (~sdram_bankmachine7_cmd_payload_we))) | sdram_choose_req_want_activates)) | ((sdram_bankmachine7_cmd_payload_is_read == sdram_choose_req_want_reads) & (sdram_bankmachine7_cmd_payload_is_write == sdram_choose_req_want_writes))));
end
assign sdram_choose_req_request = sdram_choose_req_valids;
assign sdram_choose_req_cmd_valid = rhs_array_muxed6;
assign sdram_choose_req_cmd_payload_a = rhs_array_muxed7;
assign sdram_choose_req_cmd_payload_ba = rhs_array_muxed8;
assign sdram_choose_req_cmd_payload_is_read = rhs_array_muxed9;
assign sdram_choose_req_cmd_payload_is_write = rhs_array_muxed10;
assign sdram_choose_req_cmd_payload_is_cmd = rhs_array_muxed11;
always @(*) begin
	sdram_choose_req_cmd_payload_cas <= 1'd0;
	if (sdram_choose_req_cmd_valid) begin
		sdram_choose_req_cmd_payload_cas <= t_array_muxed3;
	end
end
always @(*) begin
	sdram_choose_req_cmd_payload_ras <= 1'd0;
	if (sdram_choose_req_cmd_valid) begin
		sdram_choose_req_cmd_payload_ras <= t_array_muxed4;
	end
end
always @(*) begin
	sdram_choose_req_cmd_payload_we <= 1'd0;
	if (sdram_choose_req_cmd_valid) begin
		sdram_choose_req_cmd_payload_we <= t_array_muxed5;
	end
end
always @(*) begin
	sdram_bankmachine0_cmd_ready <= 1'd0;
	if (((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & (sdram_choose_cmd_grant == 1'd0))) begin
		sdram_bankmachine0_cmd_ready <= 1'd1;
	end
	if (((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & (sdram_choose_req_grant == 1'd0))) begin
		sdram_bankmachine0_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	sdram_bankmachine1_cmd_ready <= 1'd0;
	if (((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & (sdram_choose_cmd_grant == 1'd1))) begin
		sdram_bankmachine1_cmd_ready <= 1'd1;
	end
	if (((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & (sdram_choose_req_grant == 1'd1))) begin
		sdram_bankmachine1_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	sdram_bankmachine2_cmd_ready <= 1'd0;
	if (((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & (sdram_choose_cmd_grant == 2'd2))) begin
		sdram_bankmachine2_cmd_ready <= 1'd1;
	end
	if (((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & (sdram_choose_req_grant == 2'd2))) begin
		sdram_bankmachine2_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	sdram_bankmachine3_cmd_ready <= 1'd0;
	if (((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & (sdram_choose_cmd_grant == 2'd3))) begin
		sdram_bankmachine3_cmd_ready <= 1'd1;
	end
	if (((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & (sdram_choose_req_grant == 2'd3))) begin
		sdram_bankmachine3_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	sdram_bankmachine4_cmd_ready <= 1'd0;
	if (((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & (sdram_choose_cmd_grant == 3'd4))) begin
		sdram_bankmachine4_cmd_ready <= 1'd1;
	end
	if (((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & (sdram_choose_req_grant == 3'd4))) begin
		sdram_bankmachine4_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	sdram_bankmachine5_cmd_ready <= 1'd0;
	if (((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & (sdram_choose_cmd_grant == 3'd5))) begin
		sdram_bankmachine5_cmd_ready <= 1'd1;
	end
	if (((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & (sdram_choose_req_grant == 3'd5))) begin
		sdram_bankmachine5_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	sdram_bankmachine6_cmd_ready <= 1'd0;
	if (((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & (sdram_choose_cmd_grant == 3'd6))) begin
		sdram_bankmachine6_cmd_ready <= 1'd1;
	end
	if (((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & (sdram_choose_req_grant == 3'd6))) begin
		sdram_bankmachine6_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	sdram_bankmachine7_cmd_ready <= 1'd0;
	if (((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & (sdram_choose_cmd_grant == 3'd7))) begin
		sdram_bankmachine7_cmd_ready <= 1'd1;
	end
	if (((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & (sdram_choose_req_grant == 3'd7))) begin
		sdram_bankmachine7_cmd_ready <= 1'd1;
	end
end
assign sdram_choose_req_ce = sdram_choose_req_cmd_ready;
assign sdram_dfi_p0_cke = 1'd1;
assign sdram_dfi_p0_cs_n = 1'd0;
assign sdram_dfi_p0_odt = 1'd1;
assign sdram_dfi_p0_reset_n = 1'd1;
assign sdram_dfi_p1_cke = 1'd1;
assign sdram_dfi_p1_cs_n = 1'd0;
assign sdram_dfi_p1_odt = 1'd1;
assign sdram_dfi_p1_reset_n = 1'd1;
assign sdram_dfi_p2_cke = 1'd1;
assign sdram_dfi_p2_cs_n = 1'd0;
assign sdram_dfi_p2_odt = 1'd1;
assign sdram_dfi_p2_reset_n = 1'd1;
assign sdram_dfi_p3_cke = 1'd1;
assign sdram_dfi_p3_cs_n = 1'd0;
assign sdram_dfi_p3_odt = 1'd1;
assign sdram_dfi_p3_reset_n = 1'd1;
assign sdram_tfawcon_count = (((((((sdram_tfawcon_window[0] + sdram_tfawcon_window[1]) + sdram_tfawcon_window[2]) + sdram_tfawcon_window[3]) + sdram_tfawcon_window[4]) + sdram_tfawcon_window[5]) + sdram_tfawcon_window[6]) + sdram_tfawcon_window[7]);
always @(*) begin
	multiplexer_next_state <= 3'd0;
	sdram_en0 <= 1'd0;
	sdram_cmd_ready <= 1'd0;
	sdram_choose_cmd_want_activates <= 1'd0;
	sdram_choose_req_want_reads <= 1'd0;
	sdram_choose_cmd_cmd_ready <= 1'd0;
	sdram_en1 <= 1'd0;
	sdram_choose_req_want_writes <= 1'd0;
	sdram_choose_req_cmd_ready <= 1'd0;
	sdram_sel0 <= 2'd0;
	sdram_sel1 <= 2'd0;
	sdram_sel2 <= 2'd0;
	sdram_sel3 <= 2'd0;
	multiplexer_next_state <= multiplexer_state;
	case (multiplexer_state)
		1'd1: begin
			sdram_en1 <= 1'd1;
			sdram_choose_req_want_writes <= 1'd1;
			sdram_choose_cmd_want_activates <= sdram_ras_allowed;
			sdram_choose_cmd_cmd_ready <= ((~((sdram_choose_cmd_cmd_payload_ras & (~sdram_choose_cmd_cmd_payload_cas)) & (~sdram_choose_cmd_cmd_payload_we))) | sdram_ras_allowed);
			sdram_choose_req_cmd_ready <= 1'd1;
			sdram_sel0 <= 1'd1;
			sdram_sel1 <= 2'd2;
			sdram_sel2 <= 1'd0;
			sdram_sel3 <= 1'd0;
			if (sdram_read_available) begin
				if (((~sdram_write_available) | sdram_max_time1)) begin
					multiplexer_next_state <= 2'd3;
				end
			end
			if (sdram_go_to_refresh) begin
				multiplexer_next_state <= 2'd2;
			end
		end
		2'd2: begin
			sdram_sel0 <= 2'd3;
			sdram_cmd_ready <= 1'd1;
			if (sdram_cmd_last) begin
				multiplexer_next_state <= 1'd0;
			end
		end
		2'd3: begin
			if (sdram_twtrcon_ready) begin
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
			multiplexer_next_state <= 1'd1;
		end
		default: begin
			sdram_en0 <= 1'd1;
			sdram_choose_req_want_reads <= 1'd1;
			sdram_choose_cmd_want_activates <= sdram_ras_allowed;
			sdram_choose_cmd_cmd_ready <= ((~((sdram_choose_cmd_cmd_payload_ras & (~sdram_choose_cmd_cmd_payload_cas)) & (~sdram_choose_cmd_cmd_payload_we))) | sdram_ras_allowed);
			sdram_choose_req_cmd_ready <= 1'd1;
			sdram_sel0 <= 2'd2;
			sdram_sel1 <= 1'd1;
			sdram_sel2 <= 1'd0;
			sdram_sel3 <= 1'd0;
			if (sdram_write_available) begin
				if (((~sdram_read_available) | sdram_max_time0)) begin
					multiplexer_next_state <= 3'd4;
				end
			end
			if (sdram_go_to_refresh) begin
				multiplexer_next_state <= 2'd2;
			end
		end
	endcase
end
assign cba = port_cmd_payload_adr[9:7];
assign rca = {port_cmd_payload_adr[23:10], port_cmd_payload_adr[6:0]};
assign roundrobin0_request = {(((cba == 1'd0) & (~(((((((1'd0 | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin0_ce = ((~sdram_interface_bank0_valid) & (~sdram_interface_bank0_lock));
assign sdram_interface_bank0_adr = rhs_array_muxed12;
assign sdram_interface_bank0_we = rhs_array_muxed13;
assign sdram_interface_bank0_valid = rhs_array_muxed14;
assign roundrobin1_request = {(((cba == 1'd1) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin1_ce = ((~sdram_interface_bank1_valid) & (~sdram_interface_bank1_lock));
assign sdram_interface_bank1_adr = rhs_array_muxed15;
assign sdram_interface_bank1_we = rhs_array_muxed16;
assign sdram_interface_bank1_valid = rhs_array_muxed17;
assign roundrobin2_request = {(((cba == 2'd2) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin2_ce = ((~sdram_interface_bank2_valid) & (~sdram_interface_bank2_lock));
assign sdram_interface_bank2_adr = rhs_array_muxed18;
assign sdram_interface_bank2_we = rhs_array_muxed19;
assign sdram_interface_bank2_valid = rhs_array_muxed20;
assign roundrobin3_request = {(((cba == 2'd3) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin3_ce = ((~sdram_interface_bank3_valid) & (~sdram_interface_bank3_lock));
assign sdram_interface_bank3_adr = rhs_array_muxed21;
assign sdram_interface_bank3_we = rhs_array_muxed22;
assign sdram_interface_bank3_valid = rhs_array_muxed23;
assign roundrobin4_request = {(((cba == 3'd4) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin4_ce = ((~sdram_interface_bank4_valid) & (~sdram_interface_bank4_lock));
assign sdram_interface_bank4_adr = rhs_array_muxed24;
assign sdram_interface_bank4_we = rhs_array_muxed25;
assign sdram_interface_bank4_valid = rhs_array_muxed26;
assign roundrobin5_request = {(((cba == 3'd5) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin5_ce = ((~sdram_interface_bank5_valid) & (~sdram_interface_bank5_lock));
assign sdram_interface_bank5_adr = rhs_array_muxed27;
assign sdram_interface_bank5_we = rhs_array_muxed28;
assign sdram_interface_bank5_valid = rhs_array_muxed29;
assign roundrobin6_request = {(((cba == 3'd6) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin6_ce = ((~sdram_interface_bank6_valid) & (~sdram_interface_bank6_lock));
assign sdram_interface_bank6_adr = rhs_array_muxed30;
assign sdram_interface_bank6_we = rhs_array_muxed31;
assign sdram_interface_bank6_valid = rhs_array_muxed32;
assign roundrobin7_request = {(((cba == 3'd7) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin7_ce = ((~sdram_interface_bank7_valid) & (~sdram_interface_bank7_lock));
assign sdram_interface_bank7_adr = rhs_array_muxed33;
assign sdram_interface_bank7_we = rhs_array_muxed34;
assign sdram_interface_bank7_valid = rhs_array_muxed35;
assign port_cmd_ready = ((((((((1'd0 | (((roundrobin0_grant == 1'd0) & ((cba == 1'd0) & (~(((((((1'd0 | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & sdram_interface_bank0_ready)) | (((roundrobin1_grant == 1'd0) & ((cba == 1'd1) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & sdram_interface_bank1_ready)) | (((roundrobin2_grant == 1'd0) & ((cba == 2'd2) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & sdram_interface_bank2_ready)) | (((roundrobin3_grant == 1'd0) & ((cba == 2'd3) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & sdram_interface_bank3_ready)) | (((roundrobin4_grant == 1'd0) & ((cba == 3'd4) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & sdram_interface_bank4_ready)) | (((roundrobin5_grant == 1'd0) & ((cba == 3'd5) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & sdram_interface_bank5_ready)) | (((roundrobin6_grant == 1'd0) & ((cba == 3'd6) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & sdram_interface_bank6_ready)) | (((roundrobin7_grant == 1'd0) & ((cba == 3'd7) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0)))))) & sdram_interface_bank7_ready));
assign port_wdata_ready = new_master_wdata_ready1;
assign port_rdata_valid = new_master_rdata_valid4;
always @(*) begin
	sdram_interface_wdata_we <= 16'd0;
	sdram_interface_wdata <= 128'd0;
	case ({new_master_wdata_ready1})
		1'd1: begin
			sdram_interface_wdata <= port_wdata_payload_data;
			sdram_interface_wdata_we <= port_wdata_payload_we;
		end
		default: begin
			sdram_interface_wdata <= 1'd0;
			sdram_interface_wdata_we <= 1'd0;
		end
	endcase
end
assign port_rdata_payload_data = sdram_interface_rdata;
assign roundrobin0_grant = 1'd0;
assign roundrobin1_grant = 1'd0;
assign roundrobin2_grant = 1'd0;
assign roundrobin3_grant = 1'd0;
assign roundrobin4_grant = 1'd0;
assign roundrobin5_grant = 1'd0;
assign roundrobin6_grant = 1'd0;
assign roundrobin7_grant = 1'd0;
assign data_port_adr = interface0_wb_sdram_adr[10:2];
always @(*) begin
	data_port_dat_w <= 128'd0;
	data_port_we <= 16'd0;
	if (write_from_slave) begin
		data_port_dat_w <= interface_dat_r;
		data_port_we <= {16{1'd1}};
	end else begin
		data_port_dat_w <= {4{interface0_wb_sdram_dat_w}};
		if ((((interface0_wb_sdram_cyc & interface0_wb_sdram_stb) & interface0_wb_sdram_we) & interface0_wb_sdram_ack)) begin
			data_port_we <= {({4{(interface0_wb_sdram_adr[1:0] == 1'd0)}} & interface0_wb_sdram_sel), ({4{(interface0_wb_sdram_adr[1:0] == 1'd1)}} & interface0_wb_sdram_sel), ({4{(interface0_wb_sdram_adr[1:0] == 2'd2)}} & interface0_wb_sdram_sel), ({4{(interface0_wb_sdram_adr[1:0] == 2'd3)}} & interface0_wb_sdram_sel)};
		end
	end
end
assign interface_dat_w = data_port_dat_r;
assign interface_sel = 16'd65535;
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
end
assign {tag_do_dirty, tag_do_tag} = tag_port_dat_r;
assign tag_port_dat_w = {tag_di_dirty, tag_di_tag};
assign tag_port_adr = interface0_wb_sdram_adr[10:2];
assign tag_di_tag = interface0_wb_sdram_adr[29:11];
assign interface_adr = {tag_do_tag, interface0_wb_sdram_adr[10:2]};
always @(*) begin
	interface0_wb_sdram_ack <= 1'd0;
	interface_cyc <= 1'd0;
	interface_stb <= 1'd0;
	tag_port_we <= 1'd0;
	interface_we <= 1'd0;
	cache_next_state <= 3'd0;
	tag_di_dirty <= 1'd0;
	word_clr <= 1'd0;
	word_inc <= 1'd0;
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
	port_cmd_valid <= 1'd0;
	port_cmd_payload_we <= 1'd0;
	port_wdata_valid <= 1'd0;
	litedramwishbone2native_next_state <= 2'd0;
	interface_ack <= 1'd0;
	port_rdata_ready <= 1'd0;
	litedramwishbone2native_next_state <= litedramwishbone2native_state;
	case (litedramwishbone2native_state)
		1'd1: begin
			port_cmd_valid <= 1'd1;
			port_cmd_payload_we <= interface_we;
			if (port_cmd_ready) begin
				if (interface_we) begin
					litedramwishbone2native_next_state <= 2'd2;
				end else begin
					litedramwishbone2native_next_state <= 2'd3;
				end
			end
		end
		2'd2: begin
			port_wdata_valid <= 1'd1;
			if (port_wdata_ready) begin
				interface_ack <= 1'd1;
				litedramwishbone2native_next_state <= 1'd0;
			end
		end
		2'd3: begin
			port_rdata_ready <= 1'd1;
			if (port_rdata_valid) begin
				interface_ack <= 1'd1;
				litedramwishbone2native_next_state <= 1'd0;
			end
		end
		default: begin
			if ((interface_cyc & interface_stb)) begin
				litedramwishbone2native_next_state <= 1'd1;
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
assign basesoc_lm32_ibus_dat_r = basesoc_shared_dat_r;
assign basesoc_lm32_dbus_dat_r = basesoc_shared_dat_r;
assign basesoc_lm32_ibus_ack = (basesoc_shared_ack & (basesoc_grant == 1'd0));
assign basesoc_lm32_dbus_ack = (basesoc_shared_ack & (basesoc_grant == 1'd1));
assign basesoc_lm32_ibus_err = (basesoc_shared_err & (basesoc_grant == 1'd0));
assign basesoc_lm32_dbus_err = (basesoc_shared_err & (basesoc_grant == 1'd1));
assign basesoc_request = {basesoc_lm32_dbus_cyc, basesoc_lm32_ibus_cyc};
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
assign basesoc_sram_bus_adr0 = basesoc_shared_adr;
assign basesoc_sram_bus_dat_w0 = basesoc_shared_dat_w;
assign basesoc_sram_bus_sel = basesoc_shared_sel;
assign basesoc_sram_bus_stb = basesoc_shared_stb;
assign basesoc_sram_bus_we0 = basesoc_shared_we;
assign basesoc_sram_bus_cti = basesoc_shared_cti;
assign basesoc_sram_bus_bte = basesoc_shared_bte;
assign basesoc_bus_wishbone_adr = basesoc_shared_adr;
assign basesoc_bus_wishbone_dat_w = basesoc_shared_dat_w;
assign basesoc_bus_wishbone_sel = basesoc_shared_sel;
assign basesoc_bus_wishbone_stb = basesoc_shared_stb;
assign basesoc_bus_wishbone_we = basesoc_shared_we;
assign basesoc_bus_wishbone_cti = basesoc_shared_cti;
assign basesoc_bus_wishbone_bte = basesoc_shared_bte;
assign spiflash_bus_adr = basesoc_shared_adr;
assign spiflash_bus_dat_w = basesoc_shared_dat_w;
assign spiflash_bus_sel = basesoc_shared_sel;
assign spiflash_bus_stb = basesoc_shared_stb;
assign spiflash_bus_we = basesoc_shared_we;
assign spiflash_bus_cti = basesoc_shared_cti;
assign spiflash_bus_bte = basesoc_shared_bte;
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
assign spiflash_bus_cyc = (basesoc_shared_cyc & basesoc_slave_sel[3]);
assign interface1_wb_sdram_cyc = (basesoc_shared_cyc & basesoc_slave_sel[4]);
assign basesoc_shared_err = ((((basesoc_rom_bus_err | basesoc_sram_bus_err) | basesoc_bus_wishbone_err) | spiflash_bus_err) | interface1_wb_sdram_err);
assign basesoc_wait = ((basesoc_shared_stb & basesoc_shared_cyc) & (~basesoc_shared_ack));
always @(*) begin
	basesoc_shared_dat_r <= 32'd0;
	basesoc_shared_ack <= 1'd0;
	basesoc_error <= 1'd0;
	basesoc_shared_ack <= ((((basesoc_rom_bus_ack | basesoc_sram_bus_ack) | basesoc_bus_wishbone_ack) | spiflash_bus_ack) | interface1_wb_sdram_ack);
	basesoc_shared_dat_r <= ((((({32{basesoc_slave_sel_r[0]}} & basesoc_rom_bus_dat_r) | ({32{basesoc_slave_sel_r[1]}} & basesoc_sram_bus_dat_r0)) | ({32{basesoc_slave_sel_r[2]}} & basesoc_bus_wishbone_dat_r)) | ({32{basesoc_slave_sel_r[3]}} & spiflash_bus_dat_r)) | ({32{basesoc_slave_sel_r[4]}} & interface1_wb_sdram_dat_r));
	if (basesoc_done) begin
		basesoc_shared_dat_r <= 32'd4294967295;
		basesoc_shared_ack <= 1'd1;
		basesoc_error <= 1'd1;
	end
end
assign basesoc_done = (basesoc_count == 1'd0);
assign basesoc_csrbank0_sel = (basesoc_interface0_bank_bus_adr[13:9] == 1'd0);
assign basesoc_ctrl_reset_reset_r = basesoc_interface0_bank_bus_dat_w[0];
assign basesoc_ctrl_reset_reset_re = ((basesoc_csrbank0_sel & basesoc_interface0_bank_bus_we) & (basesoc_interface0_bank_bus_adr[3:0] == 1'd0));
assign basesoc_csrbank0_scratch3_r = basesoc_interface0_bank_bus_dat_w[7:0];
assign basesoc_csrbank0_scratch3_re = ((basesoc_csrbank0_sel & basesoc_interface0_bank_bus_we) & (basesoc_interface0_bank_bus_adr[3:0] == 1'd1));
assign basesoc_csrbank0_scratch2_r = basesoc_interface0_bank_bus_dat_w[7:0];
assign basesoc_csrbank0_scratch2_re = ((basesoc_csrbank0_sel & basesoc_interface0_bank_bus_we) & (basesoc_interface0_bank_bus_adr[3:0] == 2'd2));
assign basesoc_csrbank0_scratch1_r = basesoc_interface0_bank_bus_dat_w[7:0];
assign basesoc_csrbank0_scratch1_re = ((basesoc_csrbank0_sel & basesoc_interface0_bank_bus_we) & (basesoc_interface0_bank_bus_adr[3:0] == 2'd3));
assign basesoc_csrbank0_scratch0_r = basesoc_interface0_bank_bus_dat_w[7:0];
assign basesoc_csrbank0_scratch0_re = ((basesoc_csrbank0_sel & basesoc_interface0_bank_bus_we) & (basesoc_interface0_bank_bus_adr[3:0] == 3'd4));
assign basesoc_csrbank0_bus_errors3_r = basesoc_interface0_bank_bus_dat_w[7:0];
assign basesoc_csrbank0_bus_errors3_re = ((basesoc_csrbank0_sel & basesoc_interface0_bank_bus_we) & (basesoc_interface0_bank_bus_adr[3:0] == 3'd5));
assign basesoc_csrbank0_bus_errors2_r = basesoc_interface0_bank_bus_dat_w[7:0];
assign basesoc_csrbank0_bus_errors2_re = ((basesoc_csrbank0_sel & basesoc_interface0_bank_bus_we) & (basesoc_interface0_bank_bus_adr[3:0] == 3'd6));
assign basesoc_csrbank0_bus_errors1_r = basesoc_interface0_bank_bus_dat_w[7:0];
assign basesoc_csrbank0_bus_errors1_re = ((basesoc_csrbank0_sel & basesoc_interface0_bank_bus_we) & (basesoc_interface0_bank_bus_adr[3:0] == 3'd7));
assign basesoc_csrbank0_bus_errors0_r = basesoc_interface0_bank_bus_dat_w[7:0];
assign basesoc_csrbank0_bus_errors0_re = ((basesoc_csrbank0_sel & basesoc_interface0_bank_bus_we) & (basesoc_interface0_bank_bus_adr[3:0] == 4'd8));
assign basesoc_ctrl_storage = basesoc_ctrl_storage_full[31:0];
assign basesoc_csrbank0_scratch3_w = basesoc_ctrl_storage_full[31:24];
assign basesoc_csrbank0_scratch2_w = basesoc_ctrl_storage_full[23:16];
assign basesoc_csrbank0_scratch1_w = basesoc_ctrl_storage_full[15:8];
assign basesoc_csrbank0_scratch0_w = basesoc_ctrl_storage_full[7:0];
assign basesoc_csrbank0_bus_errors3_w = basesoc_ctrl_bus_errors_status[31:24];
assign basesoc_csrbank0_bus_errors2_w = basesoc_ctrl_bus_errors_status[23:16];
assign basesoc_csrbank0_bus_errors1_w = basesoc_ctrl_bus_errors_status[15:8];
assign basesoc_csrbank0_bus_errors0_w = basesoc_ctrl_bus_errors_status[7:0];
assign basesoc_csrbank1_sel = (basesoc_interface1_bank_bus_adr[13:9] == 4'd11);
assign basesoc_csrbank1_switches_in_r = basesoc_interface1_bank_bus_dat_w[0];
assign basesoc_csrbank1_switches_in_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[0] == 1'd0));
assign basesoc_csrbank1_leds_out0_r = basesoc_interface1_bank_bus_dat_w[1:0];
assign basesoc_csrbank1_leds_out0_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[0] == 1'd1));
assign basesoc_csrbank1_switches_in_w = front_panel_switches_status;
assign front_panel_leds_storage = front_panel_leds_storage_full[1:0];
assign basesoc_csrbank1_leds_out0_w = front_panel_leds_storage_full[1:0];
assign basesoc_sel = (basesoc_sram_bus_adr1[13:9] == 3'd4);
always @(*) begin
	basesoc_sram_bus_dat_r1 <= 8'd0;
	if (basesoc_sel_r) begin
		basesoc_sram_bus_dat_r1 <= basesoc_dat_r;
	end
end
assign basesoc_adr = basesoc_sram_bus_adr1[2:0];
assign basesoc_csrbank2_sel = (basesoc_interface2_bank_bus_adr[13:9] == 4'd13);
assign basesoc_csrbank2_dna_id7_r = basesoc_interface2_bank_bus_dat_w[0];
assign basesoc_csrbank2_dna_id7_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 1'd0));
assign basesoc_csrbank2_dna_id6_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dna_id6_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 1'd1));
assign basesoc_csrbank2_dna_id5_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dna_id5_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 2'd2));
assign basesoc_csrbank2_dna_id4_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dna_id4_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 2'd3));
assign basesoc_csrbank2_dna_id3_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dna_id3_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 3'd4));
assign basesoc_csrbank2_dna_id2_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dna_id2_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 3'd5));
assign basesoc_csrbank2_dna_id1_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dna_id1_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 3'd6));
assign basesoc_csrbank2_dna_id0_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_dna_id0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 3'd7));
assign basesoc_csrbank2_git_commit19_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_git_commit19_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 4'd8));
assign basesoc_csrbank2_git_commit18_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_git_commit18_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 4'd9));
assign basesoc_csrbank2_git_commit17_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_git_commit17_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 4'd10));
assign basesoc_csrbank2_git_commit16_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_git_commit16_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 4'd11));
assign basesoc_csrbank2_git_commit15_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_git_commit15_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 4'd12));
assign basesoc_csrbank2_git_commit14_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_git_commit14_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 4'd13));
assign basesoc_csrbank2_git_commit13_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_git_commit13_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 4'd14));
assign basesoc_csrbank2_git_commit12_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_git_commit12_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 4'd15));
assign basesoc_csrbank2_git_commit11_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_git_commit11_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd16));
assign basesoc_csrbank2_git_commit10_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_git_commit10_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd17));
assign basesoc_csrbank2_git_commit9_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_git_commit9_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd18));
assign basesoc_csrbank2_git_commit8_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_git_commit8_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd19));
assign basesoc_csrbank2_git_commit7_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_git_commit7_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd20));
assign basesoc_csrbank2_git_commit6_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_git_commit6_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd21));
assign basesoc_csrbank2_git_commit5_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_git_commit5_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd22));
assign basesoc_csrbank2_git_commit4_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_git_commit4_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd23));
assign basesoc_csrbank2_git_commit3_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_git_commit3_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd24));
assign basesoc_csrbank2_git_commit2_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_git_commit2_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd25));
assign basesoc_csrbank2_git_commit1_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_git_commit1_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd26));
assign basesoc_csrbank2_git_commit0_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_git_commit0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd27));
assign basesoc_csrbank2_platform_platform7_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_platform_platform7_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd28));
assign basesoc_csrbank2_platform_platform6_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_platform_platform6_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd29));
assign basesoc_csrbank2_platform_platform5_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_platform_platform5_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd30));
assign basesoc_csrbank2_platform_platform4_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_platform_platform4_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 5'd31));
assign basesoc_csrbank2_platform_platform3_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_platform_platform3_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd32));
assign basesoc_csrbank2_platform_platform2_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_platform_platform2_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd33));
assign basesoc_csrbank2_platform_platform1_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_platform_platform1_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd34));
assign basesoc_csrbank2_platform_platform0_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_platform_platform0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd35));
assign basesoc_csrbank2_platform_target7_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_platform_target7_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd36));
assign basesoc_csrbank2_platform_target6_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_platform_target6_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd37));
assign basesoc_csrbank2_platform_target5_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_platform_target5_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd38));
assign basesoc_csrbank2_platform_target4_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_platform_target4_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd39));
assign basesoc_csrbank2_platform_target3_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_platform_target3_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd40));
assign basesoc_csrbank2_platform_target2_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_platform_target2_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd41));
assign basesoc_csrbank2_platform_target1_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_platform_target1_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd42));
assign basesoc_csrbank2_platform_target0_r = basesoc_interface2_bank_bus_dat_w[7:0];
assign basesoc_csrbank2_platform_target0_re = ((basesoc_csrbank2_sel & basesoc_interface2_bank_bus_we) & (basesoc_interface2_bank_bus_adr[5:0] == 6'd43));
assign basesoc_csrbank2_dna_id7_w = dna_status[56];
assign basesoc_csrbank2_dna_id6_w = dna_status[55:48];
assign basesoc_csrbank2_dna_id5_w = dna_status[47:40];
assign basesoc_csrbank2_dna_id4_w = dna_status[39:32];
assign basesoc_csrbank2_dna_id3_w = dna_status[31:24];
assign basesoc_csrbank2_dna_id2_w = dna_status[23:16];
assign basesoc_csrbank2_dna_id1_w = dna_status[15:8];
assign basesoc_csrbank2_dna_id0_w = dna_status[7:0];
assign basesoc_csrbank2_git_commit19_w = git_status[159:152];
assign basesoc_csrbank2_git_commit18_w = git_status[151:144];
assign basesoc_csrbank2_git_commit17_w = git_status[143:136];
assign basesoc_csrbank2_git_commit16_w = git_status[135:128];
assign basesoc_csrbank2_git_commit15_w = git_status[127:120];
assign basesoc_csrbank2_git_commit14_w = git_status[119:112];
assign basesoc_csrbank2_git_commit13_w = git_status[111:104];
assign basesoc_csrbank2_git_commit12_w = git_status[103:96];
assign basesoc_csrbank2_git_commit11_w = git_status[95:88];
assign basesoc_csrbank2_git_commit10_w = git_status[87:80];
assign basesoc_csrbank2_git_commit9_w = git_status[79:72];
assign basesoc_csrbank2_git_commit8_w = git_status[71:64];
assign basesoc_csrbank2_git_commit7_w = git_status[63:56];
assign basesoc_csrbank2_git_commit6_w = git_status[55:48];
assign basesoc_csrbank2_git_commit5_w = git_status[47:40];
assign basesoc_csrbank2_git_commit4_w = git_status[39:32];
assign basesoc_csrbank2_git_commit3_w = git_status[31:24];
assign basesoc_csrbank2_git_commit2_w = git_status[23:16];
assign basesoc_csrbank2_git_commit1_w = git_status[15:8];
assign basesoc_csrbank2_git_commit0_w = git_status[7:0];
assign basesoc_csrbank2_platform_platform7_w = platform_status[63:56];
assign basesoc_csrbank2_platform_platform6_w = platform_status[55:48];
assign basesoc_csrbank2_platform_platform5_w = platform_status[47:40];
assign basesoc_csrbank2_platform_platform4_w = platform_status[39:32];
assign basesoc_csrbank2_platform_platform3_w = platform_status[31:24];
assign basesoc_csrbank2_platform_platform2_w = platform_status[23:16];
assign basesoc_csrbank2_platform_platform1_w = platform_status[15:8];
assign basesoc_csrbank2_platform_platform0_w = platform_status[7:0];
assign basesoc_csrbank2_platform_target7_w = target_status[63:56];
assign basesoc_csrbank2_platform_target6_w = target_status[55:48];
assign basesoc_csrbank2_platform_target5_w = target_status[47:40];
assign basesoc_csrbank2_platform_target4_w = target_status[39:32];
assign basesoc_csrbank2_platform_target3_w = target_status[31:24];
assign basesoc_csrbank2_platform_target2_w = target_status[23:16];
assign basesoc_csrbank2_platform_target1_w = target_status[15:8];
assign basesoc_csrbank2_platform_target0_w = target_status[7:0];
assign basesoc_csrbank3_sel = (basesoc_interface3_bank_bus_adr[13:9] == 5'd17);
assign basesoc_csrbank3_master_w0_r = basesoc_interface3_bank_bus_dat_w[7:0];
assign basesoc_csrbank3_master_w0_re = ((basesoc_csrbank3_sel & basesoc_interface3_bank_bus_we) & (basesoc_interface3_bank_bus_adr[2:0] == 1'd0));
assign basesoc_csrbank3_master_r_r = basesoc_interface3_bank_bus_dat_w[0];
assign basesoc_csrbank3_master_r_re = ((basesoc_csrbank3_sel & basesoc_interface3_bank_bus_we) & (basesoc_interface3_bank_bus_adr[2:0] == 1'd1));
assign basesoc_csrbank3_fx2_reset_out0_r = basesoc_interface3_bank_bus_dat_w[0];
assign basesoc_csrbank3_fx2_reset_out0_re = ((basesoc_csrbank3_sel & basesoc_interface3_bank_bus_we) & (basesoc_interface3_bank_bus_adr[2:0] == 2'd2));
assign basesoc_csrbank3_fx2_hack_shift_reg0_r = basesoc_interface3_bank_bus_dat_w[7:0];
assign basesoc_csrbank3_fx2_hack_shift_reg0_re = ((basesoc_csrbank3_sel & basesoc_interface3_bank_bus_we) & (basesoc_interface3_bank_bus_adr[2:0] == 2'd3));
assign basesoc_csrbank3_fx2_hack_status0_r = basesoc_interface3_bank_bus_dat_w[1:0];
assign basesoc_csrbank3_fx2_hack_status0_re = ((basesoc_csrbank3_sel & basesoc_interface3_bank_bus_we) & (basesoc_interface3_bank_bus_adr[2:0] == 3'd4));
assign basesoc_csrbank3_fx2_hack_slave_addr0_r = basesoc_interface3_bank_bus_dat_w[6:0];
assign basesoc_csrbank3_fx2_hack_slave_addr0_re = ((basesoc_csrbank3_sel & basesoc_interface3_bank_bus_we) & (basesoc_interface3_bank_bus_adr[2:0] == 3'd5));
assign basesoc_csrbank3_mux_sel0_r = basesoc_interface3_bank_bus_dat_w[0];
assign basesoc_csrbank3_mux_sel0_re = ((basesoc_csrbank3_sel & basesoc_interface3_bank_bus_we) & (basesoc_interface3_bank_bus_adr[2:0] == 3'd6));
assign opsis_i2c_master_storage = opsis_i2c_master_storage_full[7:0];
assign basesoc_csrbank3_master_w0_w = opsis_i2c_master_storage_full[7:0];
assign basesoc_csrbank3_master_r_w = opsis_i2c_master_status;
assign opsis_i2c_fx2_reset_storage = opsis_i2c_fx2_reset_storage_full;
assign basesoc_csrbank3_fx2_reset_out0_w = opsis_i2c_fx2_reset_storage_full;
assign opsis_i2c_shift_reg_storage = opsis_i2c_shift_reg_storage_full[7:0];
assign basesoc_csrbank3_fx2_hack_shift_reg0_w = opsis_i2c_shift_reg_storage_full[7:0];
assign opsis_i2c_status_storage = opsis_i2c_status_storage_full[1:0];
assign basesoc_csrbank3_fx2_hack_status0_w = opsis_i2c_status_storage_full[1:0];
assign opsis_i2c_slave_addr_storage = opsis_i2c_slave_addr_storage_full[6:0];
assign basesoc_csrbank3_fx2_hack_slave_addr0_w = opsis_i2c_slave_addr_storage_full[6:0];
assign opsisi2c_storage = opsisi2c_storage_full;
assign basesoc_csrbank3_mux_sel0_w = opsisi2c_storage_full;
assign basesoc_csrbank4_sel = (basesoc_interface4_bank_bus_adr[13:9] == 4'd8);
assign basesoc_csrbank4_dfii_control0_r = basesoc_interface4_bank_bus_dat_w[3:0];
assign basesoc_csrbank4_dfii_control0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 1'd0));
assign basesoc_csrbank4_dfii_pi0_command0_r = basesoc_interface4_bank_bus_dat_w[5:0];
assign basesoc_csrbank4_dfii_pi0_command0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 1'd1));
assign sdram_phaseinjector0_command_issue_r = basesoc_interface4_bank_bus_dat_w[0];
assign sdram_phaseinjector0_command_issue_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 2'd2));
assign basesoc_csrbank4_dfii_pi0_address1_r = basesoc_interface4_bank_bus_dat_w[5:0];
assign basesoc_csrbank4_dfii_pi0_address1_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 2'd3));
assign basesoc_csrbank4_dfii_pi0_address0_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi0_address0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 3'd4));
assign basesoc_csrbank4_dfii_pi0_baddress0_r = basesoc_interface4_bank_bus_dat_w[2:0];
assign basesoc_csrbank4_dfii_pi0_baddress0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 3'd5));
assign basesoc_csrbank4_dfii_pi0_wrdata3_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi0_wrdata3_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 3'd6));
assign basesoc_csrbank4_dfii_pi0_wrdata2_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi0_wrdata2_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 3'd7));
assign basesoc_csrbank4_dfii_pi0_wrdata1_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi0_wrdata1_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 4'd8));
assign basesoc_csrbank4_dfii_pi0_wrdata0_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi0_wrdata0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 4'd9));
assign basesoc_csrbank4_dfii_pi0_rddata3_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi0_rddata3_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 4'd10));
assign basesoc_csrbank4_dfii_pi0_rddata2_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi0_rddata2_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 4'd11));
assign basesoc_csrbank4_dfii_pi0_rddata1_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi0_rddata1_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 4'd12));
assign basesoc_csrbank4_dfii_pi0_rddata0_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi0_rddata0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 4'd13));
assign basesoc_csrbank4_dfii_pi1_command0_r = basesoc_interface4_bank_bus_dat_w[5:0];
assign basesoc_csrbank4_dfii_pi1_command0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 4'd14));
assign sdram_phaseinjector1_command_issue_r = basesoc_interface4_bank_bus_dat_w[0];
assign sdram_phaseinjector1_command_issue_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 4'd15));
assign basesoc_csrbank4_dfii_pi1_address1_r = basesoc_interface4_bank_bus_dat_w[5:0];
assign basesoc_csrbank4_dfii_pi1_address1_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 5'd16));
assign basesoc_csrbank4_dfii_pi1_address0_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi1_address0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 5'd17));
assign basesoc_csrbank4_dfii_pi1_baddress0_r = basesoc_interface4_bank_bus_dat_w[2:0];
assign basesoc_csrbank4_dfii_pi1_baddress0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 5'd18));
assign basesoc_csrbank4_dfii_pi1_wrdata3_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi1_wrdata3_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 5'd19));
assign basesoc_csrbank4_dfii_pi1_wrdata2_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi1_wrdata2_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 5'd20));
assign basesoc_csrbank4_dfii_pi1_wrdata1_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi1_wrdata1_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 5'd21));
assign basesoc_csrbank4_dfii_pi1_wrdata0_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi1_wrdata0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 5'd22));
assign basesoc_csrbank4_dfii_pi1_rddata3_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi1_rddata3_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 5'd23));
assign basesoc_csrbank4_dfii_pi1_rddata2_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi1_rddata2_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 5'd24));
assign basesoc_csrbank4_dfii_pi1_rddata1_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi1_rddata1_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 5'd25));
assign basesoc_csrbank4_dfii_pi1_rddata0_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi1_rddata0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 5'd26));
assign basesoc_csrbank4_dfii_pi2_command0_r = basesoc_interface4_bank_bus_dat_w[5:0];
assign basesoc_csrbank4_dfii_pi2_command0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 5'd27));
assign sdram_phaseinjector2_command_issue_r = basesoc_interface4_bank_bus_dat_w[0];
assign sdram_phaseinjector2_command_issue_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 5'd28));
assign basesoc_csrbank4_dfii_pi2_address1_r = basesoc_interface4_bank_bus_dat_w[5:0];
assign basesoc_csrbank4_dfii_pi2_address1_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 5'd29));
assign basesoc_csrbank4_dfii_pi2_address0_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi2_address0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 5'd30));
assign basesoc_csrbank4_dfii_pi2_baddress0_r = basesoc_interface4_bank_bus_dat_w[2:0];
assign basesoc_csrbank4_dfii_pi2_baddress0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 5'd31));
assign basesoc_csrbank4_dfii_pi2_wrdata3_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi2_wrdata3_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd32));
assign basesoc_csrbank4_dfii_pi2_wrdata2_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi2_wrdata2_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd33));
assign basesoc_csrbank4_dfii_pi2_wrdata1_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi2_wrdata1_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd34));
assign basesoc_csrbank4_dfii_pi2_wrdata0_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi2_wrdata0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd35));
assign basesoc_csrbank4_dfii_pi2_rddata3_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi2_rddata3_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd36));
assign basesoc_csrbank4_dfii_pi2_rddata2_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi2_rddata2_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd37));
assign basesoc_csrbank4_dfii_pi2_rddata1_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi2_rddata1_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd38));
assign basesoc_csrbank4_dfii_pi2_rddata0_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi2_rddata0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd39));
assign basesoc_csrbank4_dfii_pi3_command0_r = basesoc_interface4_bank_bus_dat_w[5:0];
assign basesoc_csrbank4_dfii_pi3_command0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd40));
assign sdram_phaseinjector3_command_issue_r = basesoc_interface4_bank_bus_dat_w[0];
assign sdram_phaseinjector3_command_issue_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd41));
assign basesoc_csrbank4_dfii_pi3_address1_r = basesoc_interface4_bank_bus_dat_w[5:0];
assign basesoc_csrbank4_dfii_pi3_address1_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd42));
assign basesoc_csrbank4_dfii_pi3_address0_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi3_address0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd43));
assign basesoc_csrbank4_dfii_pi3_baddress0_r = basesoc_interface4_bank_bus_dat_w[2:0];
assign basesoc_csrbank4_dfii_pi3_baddress0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd44));
assign basesoc_csrbank4_dfii_pi3_wrdata3_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi3_wrdata3_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd45));
assign basesoc_csrbank4_dfii_pi3_wrdata2_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi3_wrdata2_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd46));
assign basesoc_csrbank4_dfii_pi3_wrdata1_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi3_wrdata1_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd47));
assign basesoc_csrbank4_dfii_pi3_wrdata0_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi3_wrdata0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd48));
assign basesoc_csrbank4_dfii_pi3_rddata3_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi3_rddata3_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd49));
assign basesoc_csrbank4_dfii_pi3_rddata2_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi3_rddata2_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd50));
assign basesoc_csrbank4_dfii_pi3_rddata1_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi3_rddata1_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd51));
assign basesoc_csrbank4_dfii_pi3_rddata0_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_dfii_pi3_rddata0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd52));
assign sdram_bandwidth_update_r = basesoc_interface4_bank_bus_dat_w[0];
assign sdram_bandwidth_update_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd53));
assign basesoc_csrbank4_controller_bandwidth_nreads2_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_controller_bandwidth_nreads2_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd54));
assign basesoc_csrbank4_controller_bandwidth_nreads1_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_controller_bandwidth_nreads1_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd55));
assign basesoc_csrbank4_controller_bandwidth_nreads0_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_controller_bandwidth_nreads0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd56));
assign basesoc_csrbank4_controller_bandwidth_nwrites2_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_controller_bandwidth_nwrites2_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd57));
assign basesoc_csrbank4_controller_bandwidth_nwrites1_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_controller_bandwidth_nwrites1_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd58));
assign basesoc_csrbank4_controller_bandwidth_nwrites0_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_controller_bandwidth_nwrites0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd59));
assign basesoc_csrbank4_controller_bandwidth_data_width_r = basesoc_interface4_bank_bus_dat_w[7:0];
assign basesoc_csrbank4_controller_bandwidth_data_width_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[5:0] == 6'd60));
assign sdram_storage = sdram_storage_full[3:0];
assign basesoc_csrbank4_dfii_control0_w = sdram_storage_full[3:0];
assign sdram_phaseinjector0_command_storage = sdram_phaseinjector0_command_storage_full[5:0];
assign basesoc_csrbank4_dfii_pi0_command0_w = sdram_phaseinjector0_command_storage_full[5:0];
assign sdram_phaseinjector0_address_storage = sdram_phaseinjector0_address_storage_full[13:0];
assign basesoc_csrbank4_dfii_pi0_address1_w = sdram_phaseinjector0_address_storage_full[13:8];
assign basesoc_csrbank4_dfii_pi0_address0_w = sdram_phaseinjector0_address_storage_full[7:0];
assign sdram_phaseinjector0_baddress_storage = sdram_phaseinjector0_baddress_storage_full[2:0];
assign basesoc_csrbank4_dfii_pi0_baddress0_w = sdram_phaseinjector0_baddress_storage_full[2:0];
assign sdram_phaseinjector0_wrdata_storage = sdram_phaseinjector0_wrdata_storage_full[31:0];
assign basesoc_csrbank4_dfii_pi0_wrdata3_w = sdram_phaseinjector0_wrdata_storage_full[31:24];
assign basesoc_csrbank4_dfii_pi0_wrdata2_w = sdram_phaseinjector0_wrdata_storage_full[23:16];
assign basesoc_csrbank4_dfii_pi0_wrdata1_w = sdram_phaseinjector0_wrdata_storage_full[15:8];
assign basesoc_csrbank4_dfii_pi0_wrdata0_w = sdram_phaseinjector0_wrdata_storage_full[7:0];
assign basesoc_csrbank4_dfii_pi0_rddata3_w = sdram_phaseinjector0_status[31:24];
assign basesoc_csrbank4_dfii_pi0_rddata2_w = sdram_phaseinjector0_status[23:16];
assign basesoc_csrbank4_dfii_pi0_rddata1_w = sdram_phaseinjector0_status[15:8];
assign basesoc_csrbank4_dfii_pi0_rddata0_w = sdram_phaseinjector0_status[7:0];
assign sdram_phaseinjector1_command_storage = sdram_phaseinjector1_command_storage_full[5:0];
assign basesoc_csrbank4_dfii_pi1_command0_w = sdram_phaseinjector1_command_storage_full[5:0];
assign sdram_phaseinjector1_address_storage = sdram_phaseinjector1_address_storage_full[13:0];
assign basesoc_csrbank4_dfii_pi1_address1_w = sdram_phaseinjector1_address_storage_full[13:8];
assign basesoc_csrbank4_dfii_pi1_address0_w = sdram_phaseinjector1_address_storage_full[7:0];
assign sdram_phaseinjector1_baddress_storage = sdram_phaseinjector1_baddress_storage_full[2:0];
assign basesoc_csrbank4_dfii_pi1_baddress0_w = sdram_phaseinjector1_baddress_storage_full[2:0];
assign sdram_phaseinjector1_wrdata_storage = sdram_phaseinjector1_wrdata_storage_full[31:0];
assign basesoc_csrbank4_dfii_pi1_wrdata3_w = sdram_phaseinjector1_wrdata_storage_full[31:24];
assign basesoc_csrbank4_dfii_pi1_wrdata2_w = sdram_phaseinjector1_wrdata_storage_full[23:16];
assign basesoc_csrbank4_dfii_pi1_wrdata1_w = sdram_phaseinjector1_wrdata_storage_full[15:8];
assign basesoc_csrbank4_dfii_pi1_wrdata0_w = sdram_phaseinjector1_wrdata_storage_full[7:0];
assign basesoc_csrbank4_dfii_pi1_rddata3_w = sdram_phaseinjector1_status[31:24];
assign basesoc_csrbank4_dfii_pi1_rddata2_w = sdram_phaseinjector1_status[23:16];
assign basesoc_csrbank4_dfii_pi1_rddata1_w = sdram_phaseinjector1_status[15:8];
assign basesoc_csrbank4_dfii_pi1_rddata0_w = sdram_phaseinjector1_status[7:0];
assign sdram_phaseinjector2_command_storage = sdram_phaseinjector2_command_storage_full[5:0];
assign basesoc_csrbank4_dfii_pi2_command0_w = sdram_phaseinjector2_command_storage_full[5:0];
assign sdram_phaseinjector2_address_storage = sdram_phaseinjector2_address_storage_full[13:0];
assign basesoc_csrbank4_dfii_pi2_address1_w = sdram_phaseinjector2_address_storage_full[13:8];
assign basesoc_csrbank4_dfii_pi2_address0_w = sdram_phaseinjector2_address_storage_full[7:0];
assign sdram_phaseinjector2_baddress_storage = sdram_phaseinjector2_baddress_storage_full[2:0];
assign basesoc_csrbank4_dfii_pi2_baddress0_w = sdram_phaseinjector2_baddress_storage_full[2:0];
assign sdram_phaseinjector2_wrdata_storage = sdram_phaseinjector2_wrdata_storage_full[31:0];
assign basesoc_csrbank4_dfii_pi2_wrdata3_w = sdram_phaseinjector2_wrdata_storage_full[31:24];
assign basesoc_csrbank4_dfii_pi2_wrdata2_w = sdram_phaseinjector2_wrdata_storage_full[23:16];
assign basesoc_csrbank4_dfii_pi2_wrdata1_w = sdram_phaseinjector2_wrdata_storage_full[15:8];
assign basesoc_csrbank4_dfii_pi2_wrdata0_w = sdram_phaseinjector2_wrdata_storage_full[7:0];
assign basesoc_csrbank4_dfii_pi2_rddata3_w = sdram_phaseinjector2_status[31:24];
assign basesoc_csrbank4_dfii_pi2_rddata2_w = sdram_phaseinjector2_status[23:16];
assign basesoc_csrbank4_dfii_pi2_rddata1_w = sdram_phaseinjector2_status[15:8];
assign basesoc_csrbank4_dfii_pi2_rddata0_w = sdram_phaseinjector2_status[7:0];
assign sdram_phaseinjector3_command_storage = sdram_phaseinjector3_command_storage_full[5:0];
assign basesoc_csrbank4_dfii_pi3_command0_w = sdram_phaseinjector3_command_storage_full[5:0];
assign sdram_phaseinjector3_address_storage = sdram_phaseinjector3_address_storage_full[13:0];
assign basesoc_csrbank4_dfii_pi3_address1_w = sdram_phaseinjector3_address_storage_full[13:8];
assign basesoc_csrbank4_dfii_pi3_address0_w = sdram_phaseinjector3_address_storage_full[7:0];
assign sdram_phaseinjector3_baddress_storage = sdram_phaseinjector3_baddress_storage_full[2:0];
assign basesoc_csrbank4_dfii_pi3_baddress0_w = sdram_phaseinjector3_baddress_storage_full[2:0];
assign sdram_phaseinjector3_wrdata_storage = sdram_phaseinjector3_wrdata_storage_full[31:0];
assign basesoc_csrbank4_dfii_pi3_wrdata3_w = sdram_phaseinjector3_wrdata_storage_full[31:24];
assign basesoc_csrbank4_dfii_pi3_wrdata2_w = sdram_phaseinjector3_wrdata_storage_full[23:16];
assign basesoc_csrbank4_dfii_pi3_wrdata1_w = sdram_phaseinjector3_wrdata_storage_full[15:8];
assign basesoc_csrbank4_dfii_pi3_wrdata0_w = sdram_phaseinjector3_wrdata_storage_full[7:0];
assign basesoc_csrbank4_dfii_pi3_rddata3_w = sdram_phaseinjector3_status[31:24];
assign basesoc_csrbank4_dfii_pi3_rddata2_w = sdram_phaseinjector3_status[23:16];
assign basesoc_csrbank4_dfii_pi3_rddata1_w = sdram_phaseinjector3_status[15:8];
assign basesoc_csrbank4_dfii_pi3_rddata0_w = sdram_phaseinjector3_status[7:0];
assign basesoc_csrbank4_controller_bandwidth_nreads2_w = sdram_bandwidth_nreads_status[23:16];
assign basesoc_csrbank4_controller_bandwidth_nreads1_w = sdram_bandwidth_nreads_status[15:8];
assign basesoc_csrbank4_controller_bandwidth_nreads0_w = sdram_bandwidth_nreads_status[7:0];
assign basesoc_csrbank4_controller_bandwidth_nwrites2_w = sdram_bandwidth_nwrites_status[23:16];
assign basesoc_csrbank4_controller_bandwidth_nwrites1_w = sdram_bandwidth_nwrites_status[15:8];
assign basesoc_csrbank4_controller_bandwidth_nwrites0_w = sdram_bandwidth_nwrites_status[7:0];
assign basesoc_csrbank4_controller_bandwidth_data_width_w = sdram_bandwidth_data_width_status[7:0];
assign basesoc_csrbank5_sel = (basesoc_interface5_bank_bus_adr[13:9] == 4'd10);
assign basesoc_csrbank5_bitbang0_r = basesoc_interface5_bank_bus_dat_w[3:0];
assign basesoc_csrbank5_bitbang0_re = ((basesoc_csrbank5_sel & basesoc_interface5_bank_bus_we) & (basesoc_interface5_bank_bus_adr[1:0] == 1'd0));
assign basesoc_csrbank5_miso_r = basesoc_interface5_bank_bus_dat_w[0];
assign basesoc_csrbank5_miso_re = ((basesoc_csrbank5_sel & basesoc_interface5_bank_bus_we) & (basesoc_interface5_bank_bus_adr[1:0] == 1'd1));
assign basesoc_csrbank5_bitbang_en0_r = basesoc_interface5_bank_bus_dat_w[0];
assign basesoc_csrbank5_bitbang_en0_re = ((basesoc_csrbank5_sel & basesoc_interface5_bank_bus_we) & (basesoc_interface5_bank_bus_adr[1:0] == 2'd2));
assign spiflash_bitbang_storage = spiflash_bitbang_storage_full[3:0];
assign basesoc_csrbank5_bitbang0_w = spiflash_bitbang_storage_full[3:0];
assign basesoc_csrbank5_miso_w = spiflash_status;
assign spiflash_bitbang_en_storage = spiflash_bitbang_en_storage_full;
assign basesoc_csrbank5_bitbang_en0_w = spiflash_bitbang_en_storage_full;
assign basesoc_csrbank6_sel = (basesoc_interface6_bank_bus_adr[13:9] == 3'd5);
assign basesoc_csrbank6_load3_r = basesoc_interface6_bank_bus_dat_w[7:0];
assign basesoc_csrbank6_load3_re = ((basesoc_csrbank6_sel & basesoc_interface6_bank_bus_we) & (basesoc_interface6_bank_bus_adr[4:0] == 1'd0));
assign basesoc_csrbank6_load2_r = basesoc_interface6_bank_bus_dat_w[7:0];
assign basesoc_csrbank6_load2_re = ((basesoc_csrbank6_sel & basesoc_interface6_bank_bus_we) & (basesoc_interface6_bank_bus_adr[4:0] == 1'd1));
assign basesoc_csrbank6_load1_r = basesoc_interface6_bank_bus_dat_w[7:0];
assign basesoc_csrbank6_load1_re = ((basesoc_csrbank6_sel & basesoc_interface6_bank_bus_we) & (basesoc_interface6_bank_bus_adr[4:0] == 2'd2));
assign basesoc_csrbank6_load0_r = basesoc_interface6_bank_bus_dat_w[7:0];
assign basesoc_csrbank6_load0_re = ((basesoc_csrbank6_sel & basesoc_interface6_bank_bus_we) & (basesoc_interface6_bank_bus_adr[4:0] == 2'd3));
assign basesoc_csrbank6_reload3_r = basesoc_interface6_bank_bus_dat_w[7:0];
assign basesoc_csrbank6_reload3_re = ((basesoc_csrbank6_sel & basesoc_interface6_bank_bus_we) & (basesoc_interface6_bank_bus_adr[4:0] == 3'd4));
assign basesoc_csrbank6_reload2_r = basesoc_interface6_bank_bus_dat_w[7:0];
assign basesoc_csrbank6_reload2_re = ((basesoc_csrbank6_sel & basesoc_interface6_bank_bus_we) & (basesoc_interface6_bank_bus_adr[4:0] == 3'd5));
assign basesoc_csrbank6_reload1_r = basesoc_interface6_bank_bus_dat_w[7:0];
assign basesoc_csrbank6_reload1_re = ((basesoc_csrbank6_sel & basesoc_interface6_bank_bus_we) & (basesoc_interface6_bank_bus_adr[4:0] == 3'd6));
assign basesoc_csrbank6_reload0_r = basesoc_interface6_bank_bus_dat_w[7:0];
assign basesoc_csrbank6_reload0_re = ((basesoc_csrbank6_sel & basesoc_interface6_bank_bus_we) & (basesoc_interface6_bank_bus_adr[4:0] == 3'd7));
assign basesoc_csrbank6_en0_r = basesoc_interface6_bank_bus_dat_w[0];
assign basesoc_csrbank6_en0_re = ((basesoc_csrbank6_sel & basesoc_interface6_bank_bus_we) & (basesoc_interface6_bank_bus_adr[4:0] == 4'd8));
assign basesoc_update_value_r = basesoc_interface6_bank_bus_dat_w[0];
assign basesoc_update_value_re = ((basesoc_csrbank6_sel & basesoc_interface6_bank_bus_we) & (basesoc_interface6_bank_bus_adr[4:0] == 4'd9));
assign basesoc_csrbank6_value3_r = basesoc_interface6_bank_bus_dat_w[7:0];
assign basesoc_csrbank6_value3_re = ((basesoc_csrbank6_sel & basesoc_interface6_bank_bus_we) & (basesoc_interface6_bank_bus_adr[4:0] == 4'd10));
assign basesoc_csrbank6_value2_r = basesoc_interface6_bank_bus_dat_w[7:0];
assign basesoc_csrbank6_value2_re = ((basesoc_csrbank6_sel & basesoc_interface6_bank_bus_we) & (basesoc_interface6_bank_bus_adr[4:0] == 4'd11));
assign basesoc_csrbank6_value1_r = basesoc_interface6_bank_bus_dat_w[7:0];
assign basesoc_csrbank6_value1_re = ((basesoc_csrbank6_sel & basesoc_interface6_bank_bus_we) & (basesoc_interface6_bank_bus_adr[4:0] == 4'd12));
assign basesoc_csrbank6_value0_r = basesoc_interface6_bank_bus_dat_w[7:0];
assign basesoc_csrbank6_value0_re = ((basesoc_csrbank6_sel & basesoc_interface6_bank_bus_we) & (basesoc_interface6_bank_bus_adr[4:0] == 4'd13));
assign basesoc_eventmanager_status_r = basesoc_interface6_bank_bus_dat_w[0];
assign basesoc_eventmanager_status_re = ((basesoc_csrbank6_sel & basesoc_interface6_bank_bus_we) & (basesoc_interface6_bank_bus_adr[4:0] == 4'd14));
assign basesoc_eventmanager_pending_r = basesoc_interface6_bank_bus_dat_w[0];
assign basesoc_eventmanager_pending_re = ((basesoc_csrbank6_sel & basesoc_interface6_bank_bus_we) & (basesoc_interface6_bank_bus_adr[4:0] == 4'd15));
assign basesoc_csrbank6_ev_enable0_r = basesoc_interface6_bank_bus_dat_w[0];
assign basesoc_csrbank6_ev_enable0_re = ((basesoc_csrbank6_sel & basesoc_interface6_bank_bus_we) & (basesoc_interface6_bank_bus_adr[4:0] == 5'd16));
assign basesoc_load_storage = basesoc_load_storage_full[31:0];
assign basesoc_csrbank6_load3_w = basesoc_load_storage_full[31:24];
assign basesoc_csrbank6_load2_w = basesoc_load_storage_full[23:16];
assign basesoc_csrbank6_load1_w = basesoc_load_storage_full[15:8];
assign basesoc_csrbank6_load0_w = basesoc_load_storage_full[7:0];
assign basesoc_reload_storage = basesoc_reload_storage_full[31:0];
assign basesoc_csrbank6_reload3_w = basesoc_reload_storage_full[31:24];
assign basesoc_csrbank6_reload2_w = basesoc_reload_storage_full[23:16];
assign basesoc_csrbank6_reload1_w = basesoc_reload_storage_full[15:8];
assign basesoc_csrbank6_reload0_w = basesoc_reload_storage_full[7:0];
assign basesoc_en_storage = basesoc_en_storage_full;
assign basesoc_csrbank6_en0_w = basesoc_en_storage_full;
assign basesoc_csrbank6_value3_w = basesoc_value_status[31:24];
assign basesoc_csrbank6_value2_w = basesoc_value_status[23:16];
assign basesoc_csrbank6_value1_w = basesoc_value_status[15:8];
assign basesoc_csrbank6_value0_w = basesoc_value_status[7:0];
assign basesoc_eventmanager_storage = basesoc_eventmanager_storage_full;
assign basesoc_csrbank6_ev_enable0_w = basesoc_eventmanager_storage_full;
assign basesoc_csrbank7_sel = (basesoc_interface7_bank_bus_adr[13:9] == 2'd3);
assign uart_rxtx_r = basesoc_interface7_bank_bus_dat_w[7:0];
assign uart_rxtx_re = ((basesoc_csrbank7_sel & basesoc_interface7_bank_bus_we) & (basesoc_interface7_bank_bus_adr[2:0] == 1'd0));
assign basesoc_csrbank7_txfull_r = basesoc_interface7_bank_bus_dat_w[0];
assign basesoc_csrbank7_txfull_re = ((basesoc_csrbank7_sel & basesoc_interface7_bank_bus_we) & (basesoc_interface7_bank_bus_adr[2:0] == 1'd1));
assign basesoc_csrbank7_rxempty_r = basesoc_interface7_bank_bus_dat_w[0];
assign basesoc_csrbank7_rxempty_re = ((basesoc_csrbank7_sel & basesoc_interface7_bank_bus_we) & (basesoc_interface7_bank_bus_adr[2:0] == 2'd2));
assign uart_status_r = basesoc_interface7_bank_bus_dat_w[1:0];
assign uart_status_re = ((basesoc_csrbank7_sel & basesoc_interface7_bank_bus_we) & (basesoc_interface7_bank_bus_adr[2:0] == 2'd3));
assign uart_pending_r = basesoc_interface7_bank_bus_dat_w[1:0];
assign uart_pending_re = ((basesoc_csrbank7_sel & basesoc_interface7_bank_bus_we) & (basesoc_interface7_bank_bus_adr[2:0] == 3'd4));
assign basesoc_csrbank7_ev_enable0_r = basesoc_interface7_bank_bus_dat_w[1:0];
assign basesoc_csrbank7_ev_enable0_re = ((basesoc_csrbank7_sel & basesoc_interface7_bank_bus_we) & (basesoc_interface7_bank_bus_adr[2:0] == 3'd5));
assign basesoc_csrbank7_txfull_w = uart_txfull_status;
assign basesoc_csrbank7_rxempty_w = uart_rxempty_status;
assign uart_storage = uart_storage_full[1:0];
assign basesoc_csrbank7_ev_enable0_w = uart_storage_full[1:0];
assign basesoc_interface0_bank_bus_adr = basesoc_interface_adr;
assign basesoc_interface1_bank_bus_adr = basesoc_interface_adr;
assign basesoc_interface2_bank_bus_adr = basesoc_interface_adr;
assign basesoc_interface3_bank_bus_adr = basesoc_interface_adr;
assign basesoc_interface4_bank_bus_adr = basesoc_interface_adr;
assign basesoc_interface5_bank_bus_adr = basesoc_interface_adr;
assign basesoc_interface6_bank_bus_adr = basesoc_interface_adr;
assign basesoc_interface7_bank_bus_adr = basesoc_interface_adr;
assign basesoc_sram_bus_adr1 = basesoc_interface_adr;
assign basesoc_interface0_bank_bus_we = basesoc_interface_we;
assign basesoc_interface1_bank_bus_we = basesoc_interface_we;
assign basesoc_interface2_bank_bus_we = basesoc_interface_we;
assign basesoc_interface3_bank_bus_we = basesoc_interface_we;
assign basesoc_interface4_bank_bus_we = basesoc_interface_we;
assign basesoc_interface5_bank_bus_we = basesoc_interface_we;
assign basesoc_interface6_bank_bus_we = basesoc_interface_we;
assign basesoc_interface7_bank_bus_we = basesoc_interface_we;
assign basesoc_sram_bus_we1 = basesoc_interface_we;
assign basesoc_interface0_bank_bus_dat_w = basesoc_interface_dat_w;
assign basesoc_interface1_bank_bus_dat_w = basesoc_interface_dat_w;
assign basesoc_interface2_bank_bus_dat_w = basesoc_interface_dat_w;
assign basesoc_interface3_bank_bus_dat_w = basesoc_interface_dat_w;
assign basesoc_interface4_bank_bus_dat_w = basesoc_interface_dat_w;
assign basesoc_interface5_bank_bus_dat_w = basesoc_interface_dat_w;
assign basesoc_interface6_bank_bus_dat_w = basesoc_interface_dat_w;
assign basesoc_interface7_bank_bus_dat_w = basesoc_interface_dat_w;
assign basesoc_sram_bus_dat_w1 = basesoc_interface_dat_w;
assign basesoc_interface_dat_r = ((((((((basesoc_interface0_bank_bus_dat_r | basesoc_interface1_bank_bus_dat_r) | basesoc_interface2_bank_bus_dat_r) | basesoc_interface3_bank_bus_dat_r) | basesoc_interface4_bank_bus_dat_r) | basesoc_interface5_bank_bus_dat_r) | basesoc_interface6_bank_bus_dat_r) | basesoc_interface7_bank_bus_dat_r) | basesoc_sram_bus_dat_r1);
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
always @(*) begin
	rhs_array_muxed0 <= 1'd0;
	case (sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed0 <= sdram_choose_cmd_valids[0];
		end
		1'd1: begin
			rhs_array_muxed0 <= sdram_choose_cmd_valids[1];
		end
		2'd2: begin
			rhs_array_muxed0 <= sdram_choose_cmd_valids[2];
		end
		2'd3: begin
			rhs_array_muxed0 <= sdram_choose_cmd_valids[3];
		end
		3'd4: begin
			rhs_array_muxed0 <= sdram_choose_cmd_valids[4];
		end
		3'd5: begin
			rhs_array_muxed0 <= sdram_choose_cmd_valids[5];
		end
		3'd6: begin
			rhs_array_muxed0 <= sdram_choose_cmd_valids[6];
		end
		default: begin
			rhs_array_muxed0 <= sdram_choose_cmd_valids[7];
		end
	endcase
end
always @(*) begin
	rhs_array_muxed1 <= 14'd0;
	case (sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed1 <= sdram_bankmachine0_cmd_payload_a;
		end
		1'd1: begin
			rhs_array_muxed1 <= sdram_bankmachine1_cmd_payload_a;
		end
		2'd2: begin
			rhs_array_muxed1 <= sdram_bankmachine2_cmd_payload_a;
		end
		2'd3: begin
			rhs_array_muxed1 <= sdram_bankmachine3_cmd_payload_a;
		end
		3'd4: begin
			rhs_array_muxed1 <= sdram_bankmachine4_cmd_payload_a;
		end
		3'd5: begin
			rhs_array_muxed1 <= sdram_bankmachine5_cmd_payload_a;
		end
		3'd6: begin
			rhs_array_muxed1 <= sdram_bankmachine6_cmd_payload_a;
		end
		default: begin
			rhs_array_muxed1 <= sdram_bankmachine7_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed2 <= 3'd0;
	case (sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed2 <= sdram_bankmachine0_cmd_payload_ba;
		end
		1'd1: begin
			rhs_array_muxed2 <= sdram_bankmachine1_cmd_payload_ba;
		end
		2'd2: begin
			rhs_array_muxed2 <= sdram_bankmachine2_cmd_payload_ba;
		end
		2'd3: begin
			rhs_array_muxed2 <= sdram_bankmachine3_cmd_payload_ba;
		end
		3'd4: begin
			rhs_array_muxed2 <= sdram_bankmachine4_cmd_payload_ba;
		end
		3'd5: begin
			rhs_array_muxed2 <= sdram_bankmachine5_cmd_payload_ba;
		end
		3'd6: begin
			rhs_array_muxed2 <= sdram_bankmachine6_cmd_payload_ba;
		end
		default: begin
			rhs_array_muxed2 <= sdram_bankmachine7_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed3 <= 1'd0;
	case (sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed3 <= sdram_bankmachine0_cmd_payload_is_read;
		end
		1'd1: begin
			rhs_array_muxed3 <= sdram_bankmachine1_cmd_payload_is_read;
		end
		2'd2: begin
			rhs_array_muxed3 <= sdram_bankmachine2_cmd_payload_is_read;
		end
		2'd3: begin
			rhs_array_muxed3 <= sdram_bankmachine3_cmd_payload_is_read;
		end
		3'd4: begin
			rhs_array_muxed3 <= sdram_bankmachine4_cmd_payload_is_read;
		end
		3'd5: begin
			rhs_array_muxed3 <= sdram_bankmachine5_cmd_payload_is_read;
		end
		3'd6: begin
			rhs_array_muxed3 <= sdram_bankmachine6_cmd_payload_is_read;
		end
		default: begin
			rhs_array_muxed3 <= sdram_bankmachine7_cmd_payload_is_read;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed4 <= 1'd0;
	case (sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed4 <= sdram_bankmachine0_cmd_payload_is_write;
		end
		1'd1: begin
			rhs_array_muxed4 <= sdram_bankmachine1_cmd_payload_is_write;
		end
		2'd2: begin
			rhs_array_muxed4 <= sdram_bankmachine2_cmd_payload_is_write;
		end
		2'd3: begin
			rhs_array_muxed4 <= sdram_bankmachine3_cmd_payload_is_write;
		end
		3'd4: begin
			rhs_array_muxed4 <= sdram_bankmachine4_cmd_payload_is_write;
		end
		3'd5: begin
			rhs_array_muxed4 <= sdram_bankmachine5_cmd_payload_is_write;
		end
		3'd6: begin
			rhs_array_muxed4 <= sdram_bankmachine6_cmd_payload_is_write;
		end
		default: begin
			rhs_array_muxed4 <= sdram_bankmachine7_cmd_payload_is_write;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed5 <= 1'd0;
	case (sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed5 <= sdram_bankmachine0_cmd_payload_is_cmd;
		end
		1'd1: begin
			rhs_array_muxed5 <= sdram_bankmachine1_cmd_payload_is_cmd;
		end
		2'd2: begin
			rhs_array_muxed5 <= sdram_bankmachine2_cmd_payload_is_cmd;
		end
		2'd3: begin
			rhs_array_muxed5 <= sdram_bankmachine3_cmd_payload_is_cmd;
		end
		3'd4: begin
			rhs_array_muxed5 <= sdram_bankmachine4_cmd_payload_is_cmd;
		end
		3'd5: begin
			rhs_array_muxed5 <= sdram_bankmachine5_cmd_payload_is_cmd;
		end
		3'd6: begin
			rhs_array_muxed5 <= sdram_bankmachine6_cmd_payload_is_cmd;
		end
		default: begin
			rhs_array_muxed5 <= sdram_bankmachine7_cmd_payload_is_cmd;
		end
	endcase
end
always @(*) begin
	t_array_muxed0 <= 1'd0;
	case (sdram_choose_cmd_grant)
		1'd0: begin
			t_array_muxed0 <= sdram_bankmachine0_cmd_payload_cas;
		end
		1'd1: begin
			t_array_muxed0 <= sdram_bankmachine1_cmd_payload_cas;
		end
		2'd2: begin
			t_array_muxed0 <= sdram_bankmachine2_cmd_payload_cas;
		end
		2'd3: begin
			t_array_muxed0 <= sdram_bankmachine3_cmd_payload_cas;
		end
		3'd4: begin
			t_array_muxed0 <= sdram_bankmachine4_cmd_payload_cas;
		end
		3'd5: begin
			t_array_muxed0 <= sdram_bankmachine5_cmd_payload_cas;
		end
		3'd6: begin
			t_array_muxed0 <= sdram_bankmachine6_cmd_payload_cas;
		end
		default: begin
			t_array_muxed0 <= sdram_bankmachine7_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	t_array_muxed1 <= 1'd0;
	case (sdram_choose_cmd_grant)
		1'd0: begin
			t_array_muxed1 <= sdram_bankmachine0_cmd_payload_ras;
		end
		1'd1: begin
			t_array_muxed1 <= sdram_bankmachine1_cmd_payload_ras;
		end
		2'd2: begin
			t_array_muxed1 <= sdram_bankmachine2_cmd_payload_ras;
		end
		2'd3: begin
			t_array_muxed1 <= sdram_bankmachine3_cmd_payload_ras;
		end
		3'd4: begin
			t_array_muxed1 <= sdram_bankmachine4_cmd_payload_ras;
		end
		3'd5: begin
			t_array_muxed1 <= sdram_bankmachine5_cmd_payload_ras;
		end
		3'd6: begin
			t_array_muxed1 <= sdram_bankmachine6_cmd_payload_ras;
		end
		default: begin
			t_array_muxed1 <= sdram_bankmachine7_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	t_array_muxed2 <= 1'd0;
	case (sdram_choose_cmd_grant)
		1'd0: begin
			t_array_muxed2 <= sdram_bankmachine0_cmd_payload_we;
		end
		1'd1: begin
			t_array_muxed2 <= sdram_bankmachine1_cmd_payload_we;
		end
		2'd2: begin
			t_array_muxed2 <= sdram_bankmachine2_cmd_payload_we;
		end
		2'd3: begin
			t_array_muxed2 <= sdram_bankmachine3_cmd_payload_we;
		end
		3'd4: begin
			t_array_muxed2 <= sdram_bankmachine4_cmd_payload_we;
		end
		3'd5: begin
			t_array_muxed2 <= sdram_bankmachine5_cmd_payload_we;
		end
		3'd6: begin
			t_array_muxed2 <= sdram_bankmachine6_cmd_payload_we;
		end
		default: begin
			t_array_muxed2 <= sdram_bankmachine7_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed6 <= 1'd0;
	case (sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed6 <= sdram_choose_req_valids[0];
		end
		1'd1: begin
			rhs_array_muxed6 <= sdram_choose_req_valids[1];
		end
		2'd2: begin
			rhs_array_muxed6 <= sdram_choose_req_valids[2];
		end
		2'd3: begin
			rhs_array_muxed6 <= sdram_choose_req_valids[3];
		end
		3'd4: begin
			rhs_array_muxed6 <= sdram_choose_req_valids[4];
		end
		3'd5: begin
			rhs_array_muxed6 <= sdram_choose_req_valids[5];
		end
		3'd6: begin
			rhs_array_muxed6 <= sdram_choose_req_valids[6];
		end
		default: begin
			rhs_array_muxed6 <= sdram_choose_req_valids[7];
		end
	endcase
end
always @(*) begin
	rhs_array_muxed7 <= 14'd0;
	case (sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed7 <= sdram_bankmachine0_cmd_payload_a;
		end
		1'd1: begin
			rhs_array_muxed7 <= sdram_bankmachine1_cmd_payload_a;
		end
		2'd2: begin
			rhs_array_muxed7 <= sdram_bankmachine2_cmd_payload_a;
		end
		2'd3: begin
			rhs_array_muxed7 <= sdram_bankmachine3_cmd_payload_a;
		end
		3'd4: begin
			rhs_array_muxed7 <= sdram_bankmachine4_cmd_payload_a;
		end
		3'd5: begin
			rhs_array_muxed7 <= sdram_bankmachine5_cmd_payload_a;
		end
		3'd6: begin
			rhs_array_muxed7 <= sdram_bankmachine6_cmd_payload_a;
		end
		default: begin
			rhs_array_muxed7 <= sdram_bankmachine7_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed8 <= 3'd0;
	case (sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed8 <= sdram_bankmachine0_cmd_payload_ba;
		end
		1'd1: begin
			rhs_array_muxed8 <= sdram_bankmachine1_cmd_payload_ba;
		end
		2'd2: begin
			rhs_array_muxed8 <= sdram_bankmachine2_cmd_payload_ba;
		end
		2'd3: begin
			rhs_array_muxed8 <= sdram_bankmachine3_cmd_payload_ba;
		end
		3'd4: begin
			rhs_array_muxed8 <= sdram_bankmachine4_cmd_payload_ba;
		end
		3'd5: begin
			rhs_array_muxed8 <= sdram_bankmachine5_cmd_payload_ba;
		end
		3'd6: begin
			rhs_array_muxed8 <= sdram_bankmachine6_cmd_payload_ba;
		end
		default: begin
			rhs_array_muxed8 <= sdram_bankmachine7_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed9 <= 1'd0;
	case (sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed9 <= sdram_bankmachine0_cmd_payload_is_read;
		end
		1'd1: begin
			rhs_array_muxed9 <= sdram_bankmachine1_cmd_payload_is_read;
		end
		2'd2: begin
			rhs_array_muxed9 <= sdram_bankmachine2_cmd_payload_is_read;
		end
		2'd3: begin
			rhs_array_muxed9 <= sdram_bankmachine3_cmd_payload_is_read;
		end
		3'd4: begin
			rhs_array_muxed9 <= sdram_bankmachine4_cmd_payload_is_read;
		end
		3'd5: begin
			rhs_array_muxed9 <= sdram_bankmachine5_cmd_payload_is_read;
		end
		3'd6: begin
			rhs_array_muxed9 <= sdram_bankmachine6_cmd_payload_is_read;
		end
		default: begin
			rhs_array_muxed9 <= sdram_bankmachine7_cmd_payload_is_read;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed10 <= 1'd0;
	case (sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed10 <= sdram_bankmachine0_cmd_payload_is_write;
		end
		1'd1: begin
			rhs_array_muxed10 <= sdram_bankmachine1_cmd_payload_is_write;
		end
		2'd2: begin
			rhs_array_muxed10 <= sdram_bankmachine2_cmd_payload_is_write;
		end
		2'd3: begin
			rhs_array_muxed10 <= sdram_bankmachine3_cmd_payload_is_write;
		end
		3'd4: begin
			rhs_array_muxed10 <= sdram_bankmachine4_cmd_payload_is_write;
		end
		3'd5: begin
			rhs_array_muxed10 <= sdram_bankmachine5_cmd_payload_is_write;
		end
		3'd6: begin
			rhs_array_muxed10 <= sdram_bankmachine6_cmd_payload_is_write;
		end
		default: begin
			rhs_array_muxed10 <= sdram_bankmachine7_cmd_payload_is_write;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed11 <= 1'd0;
	case (sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed11 <= sdram_bankmachine0_cmd_payload_is_cmd;
		end
		1'd1: begin
			rhs_array_muxed11 <= sdram_bankmachine1_cmd_payload_is_cmd;
		end
		2'd2: begin
			rhs_array_muxed11 <= sdram_bankmachine2_cmd_payload_is_cmd;
		end
		2'd3: begin
			rhs_array_muxed11 <= sdram_bankmachine3_cmd_payload_is_cmd;
		end
		3'd4: begin
			rhs_array_muxed11 <= sdram_bankmachine4_cmd_payload_is_cmd;
		end
		3'd5: begin
			rhs_array_muxed11 <= sdram_bankmachine5_cmd_payload_is_cmd;
		end
		3'd6: begin
			rhs_array_muxed11 <= sdram_bankmachine6_cmd_payload_is_cmd;
		end
		default: begin
			rhs_array_muxed11 <= sdram_bankmachine7_cmd_payload_is_cmd;
		end
	endcase
end
always @(*) begin
	t_array_muxed3 <= 1'd0;
	case (sdram_choose_req_grant)
		1'd0: begin
			t_array_muxed3 <= sdram_bankmachine0_cmd_payload_cas;
		end
		1'd1: begin
			t_array_muxed3 <= sdram_bankmachine1_cmd_payload_cas;
		end
		2'd2: begin
			t_array_muxed3 <= sdram_bankmachine2_cmd_payload_cas;
		end
		2'd3: begin
			t_array_muxed3 <= sdram_bankmachine3_cmd_payload_cas;
		end
		3'd4: begin
			t_array_muxed3 <= sdram_bankmachine4_cmd_payload_cas;
		end
		3'd5: begin
			t_array_muxed3 <= sdram_bankmachine5_cmd_payload_cas;
		end
		3'd6: begin
			t_array_muxed3 <= sdram_bankmachine6_cmd_payload_cas;
		end
		default: begin
			t_array_muxed3 <= sdram_bankmachine7_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	t_array_muxed4 <= 1'd0;
	case (sdram_choose_req_grant)
		1'd0: begin
			t_array_muxed4 <= sdram_bankmachine0_cmd_payload_ras;
		end
		1'd1: begin
			t_array_muxed4 <= sdram_bankmachine1_cmd_payload_ras;
		end
		2'd2: begin
			t_array_muxed4 <= sdram_bankmachine2_cmd_payload_ras;
		end
		2'd3: begin
			t_array_muxed4 <= sdram_bankmachine3_cmd_payload_ras;
		end
		3'd4: begin
			t_array_muxed4 <= sdram_bankmachine4_cmd_payload_ras;
		end
		3'd5: begin
			t_array_muxed4 <= sdram_bankmachine5_cmd_payload_ras;
		end
		3'd6: begin
			t_array_muxed4 <= sdram_bankmachine6_cmd_payload_ras;
		end
		default: begin
			t_array_muxed4 <= sdram_bankmachine7_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	t_array_muxed5 <= 1'd0;
	case (sdram_choose_req_grant)
		1'd0: begin
			t_array_muxed5 <= sdram_bankmachine0_cmd_payload_we;
		end
		1'd1: begin
			t_array_muxed5 <= sdram_bankmachine1_cmd_payload_we;
		end
		2'd2: begin
			t_array_muxed5 <= sdram_bankmachine2_cmd_payload_we;
		end
		2'd3: begin
			t_array_muxed5 <= sdram_bankmachine3_cmd_payload_we;
		end
		3'd4: begin
			t_array_muxed5 <= sdram_bankmachine4_cmd_payload_we;
		end
		3'd5: begin
			t_array_muxed5 <= sdram_bankmachine5_cmd_payload_we;
		end
		3'd6: begin
			t_array_muxed5 <= sdram_bankmachine6_cmd_payload_we;
		end
		default: begin
			t_array_muxed5 <= sdram_bankmachine7_cmd_payload_we;
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
			rhs_array_muxed14 <= (((cba == 1'd0) & (~(((((((1'd0 | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid);
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
			rhs_array_muxed17 <= (((cba == 1'd1) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid);
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
			rhs_array_muxed20 <= (((cba == 2'd2) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid);
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
			rhs_array_muxed23 <= (((cba == 2'd3) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid);
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
			rhs_array_muxed26 <= (((cba == 3'd4) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid);
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
			rhs_array_muxed29 <= (((cba == 3'd5) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid);
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
			rhs_array_muxed32 <= (((cba == 3'd6) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & port_cmd_valid);
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
			rhs_array_muxed35 <= (((cba == 3'd7) & (~(((((((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))))) & port_cmd_valid);
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
			rhs_array_muxed44 <= basesoc_lm32_ibus_adr;
		end
		default: begin
			rhs_array_muxed44 <= basesoc_lm32_dbus_adr;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed45 <= 32'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed45 <= basesoc_lm32_ibus_dat_w;
		end
		default: begin
			rhs_array_muxed45 <= basesoc_lm32_dbus_dat_w;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed46 <= 4'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed46 <= basesoc_lm32_ibus_sel;
		end
		default: begin
			rhs_array_muxed46 <= basesoc_lm32_dbus_sel;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed47 <= 1'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed47 <= basesoc_lm32_ibus_cyc;
		end
		default: begin
			rhs_array_muxed47 <= basesoc_lm32_dbus_cyc;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed48 <= 1'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed48 <= basesoc_lm32_ibus_stb;
		end
		default: begin
			rhs_array_muxed48 <= basesoc_lm32_dbus_stb;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed49 <= 1'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed49 <= basesoc_lm32_ibus_we;
		end
		default: begin
			rhs_array_muxed49 <= basesoc_lm32_dbus_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed50 <= 3'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed50 <= basesoc_lm32_ibus_cti;
		end
		default: begin
			rhs_array_muxed50 <= basesoc_lm32_dbus_cti;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed51 <= 2'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed51 <= basesoc_lm32_ibus_bte;
		end
		default: begin
			rhs_array_muxed51 <= basesoc_lm32_dbus_bte;
		end
	endcase
end
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
end
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
end
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
end
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
end
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
end
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
end
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
end
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
end
always @(*) begin
	array_muxed8 <= 14'd0;
	case (sdram_sel0)
		1'd0: begin
			array_muxed8 <= sdram_nop_a;
		end
		1'd1: begin
			array_muxed8 <= sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed8 <= sdram_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed8 <= sdram_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	array_muxed9 <= 3'd0;
	case (sdram_sel0)
		1'd0: begin
			array_muxed9 <= sdram_nop_ba;
		end
		1'd1: begin
			array_muxed9 <= sdram_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			array_muxed9 <= sdram_choose_req_cmd_payload_ba;
		end
		default: begin
			array_muxed9 <= sdram_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	array_muxed10 <= 1'd0;
	case (sdram_sel0)
		1'd0: begin
			array_muxed10 <= sdram_nop_cas;
		end
		1'd1: begin
			array_muxed10 <= sdram_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			array_muxed10 <= sdram_choose_req_cmd_payload_cas;
		end
		default: begin
			array_muxed10 <= sdram_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	array_muxed11 <= 1'd0;
	case (sdram_sel0)
		1'd0: begin
			array_muxed11 <= sdram_nop_ras;
		end
		1'd1: begin
			array_muxed11 <= sdram_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			array_muxed11 <= sdram_choose_req_cmd_payload_ras;
		end
		default: begin
			array_muxed11 <= sdram_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	array_muxed12 <= 1'd0;
	case (sdram_sel0)
		1'd0: begin
			array_muxed12 <= sdram_nop_we;
		end
		1'd1: begin
			array_muxed12 <= sdram_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			array_muxed12 <= sdram_choose_req_cmd_payload_we;
		end
		default: begin
			array_muxed12 <= sdram_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	array_muxed13 <= 1'd0;
	case (sdram_sel0)
		1'd0: begin
			array_muxed13 <= 1'd0;
		end
		1'd1: begin
			array_muxed13 <= (sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed13 <= (sdram_choose_req_cmd_valid & sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed13 <= (sdram_cmd_valid & sdram_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	array_muxed14 <= 1'd0;
	case (sdram_sel0)
		1'd0: begin
			array_muxed14 <= 1'd0;
		end
		1'd1: begin
			array_muxed14 <= (sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed14 <= (sdram_choose_req_cmd_valid & sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed14 <= (sdram_cmd_valid & sdram_cmd_payload_is_write);
		end
	endcase
end
always @(*) begin
	array_muxed15 <= 14'd0;
	case (sdram_sel1)
		1'd0: begin
			array_muxed15 <= sdram_nop_a;
		end
		1'd1: begin
			array_muxed15 <= sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed15 <= sdram_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed15 <= sdram_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	array_muxed16 <= 3'd0;
	case (sdram_sel1)
		1'd0: begin
			array_muxed16 <= sdram_nop_ba;
		end
		1'd1: begin
			array_muxed16 <= sdram_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			array_muxed16 <= sdram_choose_req_cmd_payload_ba;
		end
		default: begin
			array_muxed16 <= sdram_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	array_muxed17 <= 1'd0;
	case (sdram_sel1)
		1'd0: begin
			array_muxed17 <= sdram_nop_cas;
		end
		1'd1: begin
			array_muxed17 <= sdram_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			array_muxed17 <= sdram_choose_req_cmd_payload_cas;
		end
		default: begin
			array_muxed17 <= sdram_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	array_muxed18 <= 1'd0;
	case (sdram_sel1)
		1'd0: begin
			array_muxed18 <= sdram_nop_ras;
		end
		1'd1: begin
			array_muxed18 <= sdram_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			array_muxed18 <= sdram_choose_req_cmd_payload_ras;
		end
		default: begin
			array_muxed18 <= sdram_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	array_muxed19 <= 1'd0;
	case (sdram_sel1)
		1'd0: begin
			array_muxed19 <= sdram_nop_we;
		end
		1'd1: begin
			array_muxed19 <= sdram_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			array_muxed19 <= sdram_choose_req_cmd_payload_we;
		end
		default: begin
			array_muxed19 <= sdram_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	array_muxed20 <= 1'd0;
	case (sdram_sel1)
		1'd0: begin
			array_muxed20 <= 1'd0;
		end
		1'd1: begin
			array_muxed20 <= (sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed20 <= (sdram_choose_req_cmd_valid & sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed20 <= (sdram_cmd_valid & sdram_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	array_muxed21 <= 1'd0;
	case (sdram_sel1)
		1'd0: begin
			array_muxed21 <= 1'd0;
		end
		1'd1: begin
			array_muxed21 <= (sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed21 <= (sdram_choose_req_cmd_valid & sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed21 <= (sdram_cmd_valid & sdram_cmd_payload_is_write);
		end
	endcase
end
always @(*) begin
	array_muxed22 <= 14'd0;
	case (sdram_sel2)
		1'd0: begin
			array_muxed22 <= sdram_nop_a;
		end
		1'd1: begin
			array_muxed22 <= sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed22 <= sdram_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed22 <= sdram_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	array_muxed23 <= 3'd0;
	case (sdram_sel2)
		1'd0: begin
			array_muxed23 <= sdram_nop_ba;
		end
		1'd1: begin
			array_muxed23 <= sdram_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			array_muxed23 <= sdram_choose_req_cmd_payload_ba;
		end
		default: begin
			array_muxed23 <= sdram_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	array_muxed24 <= 1'd0;
	case (sdram_sel2)
		1'd0: begin
			array_muxed24 <= sdram_nop_cas;
		end
		1'd1: begin
			array_muxed24 <= sdram_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			array_muxed24 <= sdram_choose_req_cmd_payload_cas;
		end
		default: begin
			array_muxed24 <= sdram_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	array_muxed25 <= 1'd0;
	case (sdram_sel2)
		1'd0: begin
			array_muxed25 <= sdram_nop_ras;
		end
		1'd1: begin
			array_muxed25 <= sdram_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			array_muxed25 <= sdram_choose_req_cmd_payload_ras;
		end
		default: begin
			array_muxed25 <= sdram_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	array_muxed26 <= 1'd0;
	case (sdram_sel2)
		1'd0: begin
			array_muxed26 <= sdram_nop_we;
		end
		1'd1: begin
			array_muxed26 <= sdram_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			array_muxed26 <= sdram_choose_req_cmd_payload_we;
		end
		default: begin
			array_muxed26 <= sdram_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	array_muxed27 <= 1'd0;
	case (sdram_sel2)
		1'd0: begin
			array_muxed27 <= 1'd0;
		end
		1'd1: begin
			array_muxed27 <= (sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed27 <= (sdram_choose_req_cmd_valid & sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed27 <= (sdram_cmd_valid & sdram_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	array_muxed28 <= 1'd0;
	case (sdram_sel2)
		1'd0: begin
			array_muxed28 <= 1'd0;
		end
		1'd1: begin
			array_muxed28 <= (sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed28 <= (sdram_choose_req_cmd_valid & sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed28 <= (sdram_cmd_valid & sdram_cmd_payload_is_write);
		end
	endcase
end
always @(*) begin
	array_muxed29 <= 14'd0;
	case (sdram_sel3)
		1'd0: begin
			array_muxed29 <= sdram_nop_a;
		end
		1'd1: begin
			array_muxed29 <= sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed29 <= sdram_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed29 <= sdram_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	array_muxed30 <= 3'd0;
	case (sdram_sel3)
		1'd0: begin
			array_muxed30 <= sdram_nop_ba;
		end
		1'd1: begin
			array_muxed30 <= sdram_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			array_muxed30 <= sdram_choose_req_cmd_payload_ba;
		end
		default: begin
			array_muxed30 <= sdram_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	array_muxed31 <= 1'd0;
	case (sdram_sel3)
		1'd0: begin
			array_muxed31 <= sdram_nop_cas;
		end
		1'd1: begin
			array_muxed31 <= sdram_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			array_muxed31 <= sdram_choose_req_cmd_payload_cas;
		end
		default: begin
			array_muxed31 <= sdram_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	array_muxed32 <= 1'd0;
	case (sdram_sel3)
		1'd0: begin
			array_muxed32 <= sdram_nop_ras;
		end
		1'd1: begin
			array_muxed32 <= sdram_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			array_muxed32 <= sdram_choose_req_cmd_payload_ras;
		end
		default: begin
			array_muxed32 <= sdram_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	array_muxed33 <= 1'd0;
	case (sdram_sel3)
		1'd0: begin
			array_muxed33 <= sdram_nop_we;
		end
		1'd1: begin
			array_muxed33 <= sdram_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			array_muxed33 <= sdram_choose_req_cmd_payload_we;
		end
		default: begin
			array_muxed33 <= sdram_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	array_muxed34 <= 1'd0;
	case (sdram_sel3)
		1'd0: begin
			array_muxed34 <= 1'd0;
		end
		1'd1: begin
			array_muxed34 <= (sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed34 <= (sdram_choose_req_cmd_valid & sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed34 <= (sdram_cmd_valid & sdram_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	array_muxed35 <= 1'd0;
	case (sdram_sel3)
		1'd0: begin
			array_muxed35 <= 1'd0;
		end
		1'd1: begin
			array_muxed35 <= (sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed35 <= (sdram_choose_req_cmd_valid & sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed35 <= (sdram_cmd_valid & sdram_cmd_payload_is_write);
		end
	endcase
end
assign xilinxasyncresetsynchronizerimpl0 = ((~cpu_reset) | crg_reset);
assign xilinxasyncresetsynchronizerimpl1 = ((~crg_pll_lckd) | (crg_por > 1'd0));
assign xilinxasyncresetsynchronizerimpl2 = ((~crg_pll_lckd) | (crg_por > 1'd0));
assign xilinxasyncresetsynchronizerimpl3 = (sys_rst | (~crg_dcm_base50_locked));
assign opsis_i2c_scl_raw = xilinxmultiregimpl0_regs1;
assign opsis_i2c_sda_raw = xilinxmultiregimpl1_regs1;
assign phy_rx = xilinxmultiregimpl2_regs1;
assign front_panel_switches_status = xilinxmultiregimpl3_regs1;

always @(posedge por_clk) begin
	if ((crg_por != 1'd0)) begin
		crg_por <= (crg_por - 1'd1);
	end
	if (por_rst) begin
		crg_por <= 11'd2047;
	end
end

always @(posedge sdram_half_clk) begin
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
	end
end

always @(posedge sys_clk) begin
	if ((basesoc_ctrl_bus_errors != 32'd4294967295)) begin
		if (basesoc_ctrl_bus_error) begin
			basesoc_ctrl_bus_errors <= (basesoc_ctrl_bus_errors + 1'd1);
		end
	end
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
	if (basesoc_en_storage) begin
		if ((basesoc_value == 1'd0)) begin
			basesoc_value <= basesoc_reload_storage;
		end else begin
			basesoc_value <= (basesoc_value - 1'd1);
		end
	end else begin
		basesoc_value <= basesoc_load_storage;
	end
	if (basesoc_update_value_re) begin
		basesoc_value_status <= basesoc_value;
	end
	if (basesoc_zero_clear) begin
		basesoc_zero_pending <= 1'd0;
	end
	basesoc_zero_old_trigger <= basesoc_zero_trigger;
	if (((~basesoc_zero_trigger) & basesoc_zero_old_trigger)) begin
		basesoc_zero_pending <= 1'd1;
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
	if (sdram_inti_p0_rddata_valid) begin
		sdram_phaseinjector0_status <= sdram_inti_p0_rddata;
	end
	if (sdram_inti_p1_rddata_valid) begin
		sdram_phaseinjector1_status <= sdram_inti_p1_rddata;
	end
	if (sdram_inti_p2_rddata_valid) begin
		sdram_phaseinjector2_status <= sdram_inti_p2_rddata;
	end
	if (sdram_inti_p3_rddata_valid) begin
		sdram_phaseinjector3_status <= sdram_inti_p3_rddata;
	end
	sdram_cmd_payload_a <= 11'd1024;
	sdram_cmd_payload_ba <= 1'd0;
	sdram_cmd_payload_cas <= 1'd0;
	sdram_cmd_payload_ras <= 1'd0;
	sdram_cmd_payload_we <= 1'd0;
	sdram_seq_done <= 1'd0;
	if ((sdram_counter == 1'd1)) begin
		sdram_cmd_payload_ras <= 1'd1;
		sdram_cmd_payload_we <= 1'd1;
	end
	if ((sdram_counter == 2'd3)) begin
		sdram_cmd_payload_cas <= 1'd1;
		sdram_cmd_payload_ras <= 1'd1;
	end
	if ((sdram_counter == 4'd11)) begin
		sdram_seq_done <= 1'd1;
	end
	if ((sdram_counter == 4'd11)) begin
		sdram_counter <= 1'd0;
	end else begin
		if ((sdram_counter != 1'd0)) begin
			sdram_counter <= (sdram_counter + 1'd1);
		end else begin
			if (sdram_seq_start) begin
				sdram_counter <= 1'd1;
			end
		end
	end
	if (sdram_wait) begin
		if ((~sdram_done)) begin
			sdram_count <= (sdram_count - 1'd1);
		end
	end else begin
		sdram_count <= 9'd391;
	end
	refresher_state <= refresher_next_state;
	if (sdram_bankmachine0_track_close) begin
		sdram_bankmachine0_has_openrow <= 1'd0;
	end else begin
		if (sdram_bankmachine0_track_open) begin
			sdram_bankmachine0_has_openrow <= 1'd1;
			sdram_bankmachine0_openrow <= sdram_bankmachine0_cmd_buffer_source_payload_adr[20:7];
		end
	end
	if (((sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we & sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable) & (~sdram_bankmachine0_cmd_buffer_lookahead_replace))) begin
		sdram_bankmachine0_cmd_buffer_lookahead_produce <= (sdram_bankmachine0_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (sdram_bankmachine0_cmd_buffer_lookahead_do_read) begin
		sdram_bankmachine0_cmd_buffer_lookahead_consume <= (sdram_bankmachine0_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we & sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable) & (~sdram_bankmachine0_cmd_buffer_lookahead_replace))) begin
		if ((~sdram_bankmachine0_cmd_buffer_lookahead_do_read)) begin
			sdram_bankmachine0_cmd_buffer_lookahead_level <= (sdram_bankmachine0_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (sdram_bankmachine0_cmd_buffer_lookahead_do_read) begin
			sdram_bankmachine0_cmd_buffer_lookahead_level <= (sdram_bankmachine0_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (sdram_bankmachine0_cmd_buffer_pipe_ce) begin
		sdram_bankmachine0_cmd_buffer_valid_n <= sdram_bankmachine0_cmd_buffer_sink_valid;
	end
	if (sdram_bankmachine0_cmd_buffer_pipe_ce) begin
		sdram_bankmachine0_cmd_buffer_first_n <= (sdram_bankmachine0_cmd_buffer_sink_valid & sdram_bankmachine0_cmd_buffer_sink_first);
		sdram_bankmachine0_cmd_buffer_last_n <= (sdram_bankmachine0_cmd_buffer_sink_valid & sdram_bankmachine0_cmd_buffer_sink_last);
	end
	if (sdram_bankmachine0_cmd_buffer_pipe_ce) begin
		sdram_bankmachine0_cmd_buffer_source_payload_we <= sdram_bankmachine0_cmd_buffer_sink_payload_we;
		sdram_bankmachine0_cmd_buffer_source_payload_adr <= sdram_bankmachine0_cmd_buffer_sink_payload_adr;
	end
	if (sdram_bankmachine0_wait) begin
		if ((~sdram_bankmachine0_done)) begin
			sdram_bankmachine0_count <= (sdram_bankmachine0_count - 1'd1);
		end
	end else begin
		sdram_bankmachine0_count <= 3'd4;
	end
	bankmachine0_state <= bankmachine0_next_state;
	if (sdram_bankmachine1_track_close) begin
		sdram_bankmachine1_has_openrow <= 1'd0;
	end else begin
		if (sdram_bankmachine1_track_open) begin
			sdram_bankmachine1_has_openrow <= 1'd1;
			sdram_bankmachine1_openrow <= sdram_bankmachine1_cmd_buffer_source_payload_adr[20:7];
		end
	end
	if (((sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we & sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable) & (~sdram_bankmachine1_cmd_buffer_lookahead_replace))) begin
		sdram_bankmachine1_cmd_buffer_lookahead_produce <= (sdram_bankmachine1_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (sdram_bankmachine1_cmd_buffer_lookahead_do_read) begin
		sdram_bankmachine1_cmd_buffer_lookahead_consume <= (sdram_bankmachine1_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we & sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable) & (~sdram_bankmachine1_cmd_buffer_lookahead_replace))) begin
		if ((~sdram_bankmachine1_cmd_buffer_lookahead_do_read)) begin
			sdram_bankmachine1_cmd_buffer_lookahead_level <= (sdram_bankmachine1_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (sdram_bankmachine1_cmd_buffer_lookahead_do_read) begin
			sdram_bankmachine1_cmd_buffer_lookahead_level <= (sdram_bankmachine1_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (sdram_bankmachine1_cmd_buffer_pipe_ce) begin
		sdram_bankmachine1_cmd_buffer_valid_n <= sdram_bankmachine1_cmd_buffer_sink_valid;
	end
	if (sdram_bankmachine1_cmd_buffer_pipe_ce) begin
		sdram_bankmachine1_cmd_buffer_first_n <= (sdram_bankmachine1_cmd_buffer_sink_valid & sdram_bankmachine1_cmd_buffer_sink_first);
		sdram_bankmachine1_cmd_buffer_last_n <= (sdram_bankmachine1_cmd_buffer_sink_valid & sdram_bankmachine1_cmd_buffer_sink_last);
	end
	if (sdram_bankmachine1_cmd_buffer_pipe_ce) begin
		sdram_bankmachine1_cmd_buffer_source_payload_we <= sdram_bankmachine1_cmd_buffer_sink_payload_we;
		sdram_bankmachine1_cmd_buffer_source_payload_adr <= sdram_bankmachine1_cmd_buffer_sink_payload_adr;
	end
	if (sdram_bankmachine1_wait) begin
		if ((~sdram_bankmachine1_done)) begin
			sdram_bankmachine1_count <= (sdram_bankmachine1_count - 1'd1);
		end
	end else begin
		sdram_bankmachine1_count <= 3'd4;
	end
	bankmachine1_state <= bankmachine1_next_state;
	if (sdram_bankmachine2_track_close) begin
		sdram_bankmachine2_has_openrow <= 1'd0;
	end else begin
		if (sdram_bankmachine2_track_open) begin
			sdram_bankmachine2_has_openrow <= 1'd1;
			sdram_bankmachine2_openrow <= sdram_bankmachine2_cmd_buffer_source_payload_adr[20:7];
		end
	end
	if (((sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we & sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable) & (~sdram_bankmachine2_cmd_buffer_lookahead_replace))) begin
		sdram_bankmachine2_cmd_buffer_lookahead_produce <= (sdram_bankmachine2_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (sdram_bankmachine2_cmd_buffer_lookahead_do_read) begin
		sdram_bankmachine2_cmd_buffer_lookahead_consume <= (sdram_bankmachine2_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we & sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable) & (~sdram_bankmachine2_cmd_buffer_lookahead_replace))) begin
		if ((~sdram_bankmachine2_cmd_buffer_lookahead_do_read)) begin
			sdram_bankmachine2_cmd_buffer_lookahead_level <= (sdram_bankmachine2_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (sdram_bankmachine2_cmd_buffer_lookahead_do_read) begin
			sdram_bankmachine2_cmd_buffer_lookahead_level <= (sdram_bankmachine2_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (sdram_bankmachine2_cmd_buffer_pipe_ce) begin
		sdram_bankmachine2_cmd_buffer_valid_n <= sdram_bankmachine2_cmd_buffer_sink_valid;
	end
	if (sdram_bankmachine2_cmd_buffer_pipe_ce) begin
		sdram_bankmachine2_cmd_buffer_first_n <= (sdram_bankmachine2_cmd_buffer_sink_valid & sdram_bankmachine2_cmd_buffer_sink_first);
		sdram_bankmachine2_cmd_buffer_last_n <= (sdram_bankmachine2_cmd_buffer_sink_valid & sdram_bankmachine2_cmd_buffer_sink_last);
	end
	if (sdram_bankmachine2_cmd_buffer_pipe_ce) begin
		sdram_bankmachine2_cmd_buffer_source_payload_we <= sdram_bankmachine2_cmd_buffer_sink_payload_we;
		sdram_bankmachine2_cmd_buffer_source_payload_adr <= sdram_bankmachine2_cmd_buffer_sink_payload_adr;
	end
	if (sdram_bankmachine2_wait) begin
		if ((~sdram_bankmachine2_done)) begin
			sdram_bankmachine2_count <= (sdram_bankmachine2_count - 1'd1);
		end
	end else begin
		sdram_bankmachine2_count <= 3'd4;
	end
	bankmachine2_state <= bankmachine2_next_state;
	if (sdram_bankmachine3_track_close) begin
		sdram_bankmachine3_has_openrow <= 1'd0;
	end else begin
		if (sdram_bankmachine3_track_open) begin
			sdram_bankmachine3_has_openrow <= 1'd1;
			sdram_bankmachine3_openrow <= sdram_bankmachine3_cmd_buffer_source_payload_adr[20:7];
		end
	end
	if (((sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we & sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable) & (~sdram_bankmachine3_cmd_buffer_lookahead_replace))) begin
		sdram_bankmachine3_cmd_buffer_lookahead_produce <= (sdram_bankmachine3_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (sdram_bankmachine3_cmd_buffer_lookahead_do_read) begin
		sdram_bankmachine3_cmd_buffer_lookahead_consume <= (sdram_bankmachine3_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we & sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable) & (~sdram_bankmachine3_cmd_buffer_lookahead_replace))) begin
		if ((~sdram_bankmachine3_cmd_buffer_lookahead_do_read)) begin
			sdram_bankmachine3_cmd_buffer_lookahead_level <= (sdram_bankmachine3_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (sdram_bankmachine3_cmd_buffer_lookahead_do_read) begin
			sdram_bankmachine3_cmd_buffer_lookahead_level <= (sdram_bankmachine3_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (sdram_bankmachine3_cmd_buffer_pipe_ce) begin
		sdram_bankmachine3_cmd_buffer_valid_n <= sdram_bankmachine3_cmd_buffer_sink_valid;
	end
	if (sdram_bankmachine3_cmd_buffer_pipe_ce) begin
		sdram_bankmachine3_cmd_buffer_first_n <= (sdram_bankmachine3_cmd_buffer_sink_valid & sdram_bankmachine3_cmd_buffer_sink_first);
		sdram_bankmachine3_cmd_buffer_last_n <= (sdram_bankmachine3_cmd_buffer_sink_valid & sdram_bankmachine3_cmd_buffer_sink_last);
	end
	if (sdram_bankmachine3_cmd_buffer_pipe_ce) begin
		sdram_bankmachine3_cmd_buffer_source_payload_we <= sdram_bankmachine3_cmd_buffer_sink_payload_we;
		sdram_bankmachine3_cmd_buffer_source_payload_adr <= sdram_bankmachine3_cmd_buffer_sink_payload_adr;
	end
	if (sdram_bankmachine3_wait) begin
		if ((~sdram_bankmachine3_done)) begin
			sdram_bankmachine3_count <= (sdram_bankmachine3_count - 1'd1);
		end
	end else begin
		sdram_bankmachine3_count <= 3'd4;
	end
	bankmachine3_state <= bankmachine3_next_state;
	if (sdram_bankmachine4_track_close) begin
		sdram_bankmachine4_has_openrow <= 1'd0;
	end else begin
		if (sdram_bankmachine4_track_open) begin
			sdram_bankmachine4_has_openrow <= 1'd1;
			sdram_bankmachine4_openrow <= sdram_bankmachine4_cmd_buffer_source_payload_adr[20:7];
		end
	end
	if (((sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_we & sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable) & (~sdram_bankmachine4_cmd_buffer_lookahead_replace))) begin
		sdram_bankmachine4_cmd_buffer_lookahead_produce <= (sdram_bankmachine4_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (sdram_bankmachine4_cmd_buffer_lookahead_do_read) begin
		sdram_bankmachine4_cmd_buffer_lookahead_consume <= (sdram_bankmachine4_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_we & sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable) & (~sdram_bankmachine4_cmd_buffer_lookahead_replace))) begin
		if ((~sdram_bankmachine4_cmd_buffer_lookahead_do_read)) begin
			sdram_bankmachine4_cmd_buffer_lookahead_level <= (sdram_bankmachine4_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (sdram_bankmachine4_cmd_buffer_lookahead_do_read) begin
			sdram_bankmachine4_cmd_buffer_lookahead_level <= (sdram_bankmachine4_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (sdram_bankmachine4_cmd_buffer_pipe_ce) begin
		sdram_bankmachine4_cmd_buffer_valid_n <= sdram_bankmachine4_cmd_buffer_sink_valid;
	end
	if (sdram_bankmachine4_cmd_buffer_pipe_ce) begin
		sdram_bankmachine4_cmd_buffer_first_n <= (sdram_bankmachine4_cmd_buffer_sink_valid & sdram_bankmachine4_cmd_buffer_sink_first);
		sdram_bankmachine4_cmd_buffer_last_n <= (sdram_bankmachine4_cmd_buffer_sink_valid & sdram_bankmachine4_cmd_buffer_sink_last);
	end
	if (sdram_bankmachine4_cmd_buffer_pipe_ce) begin
		sdram_bankmachine4_cmd_buffer_source_payload_we <= sdram_bankmachine4_cmd_buffer_sink_payload_we;
		sdram_bankmachine4_cmd_buffer_source_payload_adr <= sdram_bankmachine4_cmd_buffer_sink_payload_adr;
	end
	if (sdram_bankmachine4_wait) begin
		if ((~sdram_bankmachine4_done)) begin
			sdram_bankmachine4_count <= (sdram_bankmachine4_count - 1'd1);
		end
	end else begin
		sdram_bankmachine4_count <= 3'd4;
	end
	bankmachine4_state <= bankmachine4_next_state;
	if (sdram_bankmachine5_track_close) begin
		sdram_bankmachine5_has_openrow <= 1'd0;
	end else begin
		if (sdram_bankmachine5_track_open) begin
			sdram_bankmachine5_has_openrow <= 1'd1;
			sdram_bankmachine5_openrow <= sdram_bankmachine5_cmd_buffer_source_payload_adr[20:7];
		end
	end
	if (((sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_we & sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable) & (~sdram_bankmachine5_cmd_buffer_lookahead_replace))) begin
		sdram_bankmachine5_cmd_buffer_lookahead_produce <= (sdram_bankmachine5_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (sdram_bankmachine5_cmd_buffer_lookahead_do_read) begin
		sdram_bankmachine5_cmd_buffer_lookahead_consume <= (sdram_bankmachine5_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_we & sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable) & (~sdram_bankmachine5_cmd_buffer_lookahead_replace))) begin
		if ((~sdram_bankmachine5_cmd_buffer_lookahead_do_read)) begin
			sdram_bankmachine5_cmd_buffer_lookahead_level <= (sdram_bankmachine5_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (sdram_bankmachine5_cmd_buffer_lookahead_do_read) begin
			sdram_bankmachine5_cmd_buffer_lookahead_level <= (sdram_bankmachine5_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (sdram_bankmachine5_cmd_buffer_pipe_ce) begin
		sdram_bankmachine5_cmd_buffer_valid_n <= sdram_bankmachine5_cmd_buffer_sink_valid;
	end
	if (sdram_bankmachine5_cmd_buffer_pipe_ce) begin
		sdram_bankmachine5_cmd_buffer_first_n <= (sdram_bankmachine5_cmd_buffer_sink_valid & sdram_bankmachine5_cmd_buffer_sink_first);
		sdram_bankmachine5_cmd_buffer_last_n <= (sdram_bankmachine5_cmd_buffer_sink_valid & sdram_bankmachine5_cmd_buffer_sink_last);
	end
	if (sdram_bankmachine5_cmd_buffer_pipe_ce) begin
		sdram_bankmachine5_cmd_buffer_source_payload_we <= sdram_bankmachine5_cmd_buffer_sink_payload_we;
		sdram_bankmachine5_cmd_buffer_source_payload_adr <= sdram_bankmachine5_cmd_buffer_sink_payload_adr;
	end
	if (sdram_bankmachine5_wait) begin
		if ((~sdram_bankmachine5_done)) begin
			sdram_bankmachine5_count <= (sdram_bankmachine5_count - 1'd1);
		end
	end else begin
		sdram_bankmachine5_count <= 3'd4;
	end
	bankmachine5_state <= bankmachine5_next_state;
	if (sdram_bankmachine6_track_close) begin
		sdram_bankmachine6_has_openrow <= 1'd0;
	end else begin
		if (sdram_bankmachine6_track_open) begin
			sdram_bankmachine6_has_openrow <= 1'd1;
			sdram_bankmachine6_openrow <= sdram_bankmachine6_cmd_buffer_source_payload_adr[20:7];
		end
	end
	if (((sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_we & sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable) & (~sdram_bankmachine6_cmd_buffer_lookahead_replace))) begin
		sdram_bankmachine6_cmd_buffer_lookahead_produce <= (sdram_bankmachine6_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (sdram_bankmachine6_cmd_buffer_lookahead_do_read) begin
		sdram_bankmachine6_cmd_buffer_lookahead_consume <= (sdram_bankmachine6_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_we & sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable) & (~sdram_bankmachine6_cmd_buffer_lookahead_replace))) begin
		if ((~sdram_bankmachine6_cmd_buffer_lookahead_do_read)) begin
			sdram_bankmachine6_cmd_buffer_lookahead_level <= (sdram_bankmachine6_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (sdram_bankmachine6_cmd_buffer_lookahead_do_read) begin
			sdram_bankmachine6_cmd_buffer_lookahead_level <= (sdram_bankmachine6_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (sdram_bankmachine6_cmd_buffer_pipe_ce) begin
		sdram_bankmachine6_cmd_buffer_valid_n <= sdram_bankmachine6_cmd_buffer_sink_valid;
	end
	if (sdram_bankmachine6_cmd_buffer_pipe_ce) begin
		sdram_bankmachine6_cmd_buffer_first_n <= (sdram_bankmachine6_cmd_buffer_sink_valid & sdram_bankmachine6_cmd_buffer_sink_first);
		sdram_bankmachine6_cmd_buffer_last_n <= (sdram_bankmachine6_cmd_buffer_sink_valid & sdram_bankmachine6_cmd_buffer_sink_last);
	end
	if (sdram_bankmachine6_cmd_buffer_pipe_ce) begin
		sdram_bankmachine6_cmd_buffer_source_payload_we <= sdram_bankmachine6_cmd_buffer_sink_payload_we;
		sdram_bankmachine6_cmd_buffer_source_payload_adr <= sdram_bankmachine6_cmd_buffer_sink_payload_adr;
	end
	if (sdram_bankmachine6_wait) begin
		if ((~sdram_bankmachine6_done)) begin
			sdram_bankmachine6_count <= (sdram_bankmachine6_count - 1'd1);
		end
	end else begin
		sdram_bankmachine6_count <= 3'd4;
	end
	bankmachine6_state <= bankmachine6_next_state;
	if (sdram_bankmachine7_track_close) begin
		sdram_bankmachine7_has_openrow <= 1'd0;
	end else begin
		if (sdram_bankmachine7_track_open) begin
			sdram_bankmachine7_has_openrow <= 1'd1;
			sdram_bankmachine7_openrow <= sdram_bankmachine7_cmd_buffer_source_payload_adr[20:7];
		end
	end
	if (((sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_we & sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable) & (~sdram_bankmachine7_cmd_buffer_lookahead_replace))) begin
		sdram_bankmachine7_cmd_buffer_lookahead_produce <= (sdram_bankmachine7_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (sdram_bankmachine7_cmd_buffer_lookahead_do_read) begin
		sdram_bankmachine7_cmd_buffer_lookahead_consume <= (sdram_bankmachine7_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_we & sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable) & (~sdram_bankmachine7_cmd_buffer_lookahead_replace))) begin
		if ((~sdram_bankmachine7_cmd_buffer_lookahead_do_read)) begin
			sdram_bankmachine7_cmd_buffer_lookahead_level <= (sdram_bankmachine7_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (sdram_bankmachine7_cmd_buffer_lookahead_do_read) begin
			sdram_bankmachine7_cmd_buffer_lookahead_level <= (sdram_bankmachine7_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (sdram_bankmachine7_cmd_buffer_pipe_ce) begin
		sdram_bankmachine7_cmd_buffer_valid_n <= sdram_bankmachine7_cmd_buffer_sink_valid;
	end
	if (sdram_bankmachine7_cmd_buffer_pipe_ce) begin
		sdram_bankmachine7_cmd_buffer_first_n <= (sdram_bankmachine7_cmd_buffer_sink_valid & sdram_bankmachine7_cmd_buffer_sink_first);
		sdram_bankmachine7_cmd_buffer_last_n <= (sdram_bankmachine7_cmd_buffer_sink_valid & sdram_bankmachine7_cmd_buffer_sink_last);
	end
	if (sdram_bankmachine7_cmd_buffer_pipe_ce) begin
		sdram_bankmachine7_cmd_buffer_source_payload_we <= sdram_bankmachine7_cmd_buffer_sink_payload_we;
		sdram_bankmachine7_cmd_buffer_source_payload_adr <= sdram_bankmachine7_cmd_buffer_sink_payload_adr;
	end
	if (sdram_bankmachine7_wait) begin
		if ((~sdram_bankmachine7_done)) begin
			sdram_bankmachine7_count <= (sdram_bankmachine7_count - 1'd1);
		end
	end else begin
		sdram_bankmachine7_count <= 3'd4;
	end
	bankmachine7_state <= bankmachine7_next_state;
	if ((~sdram_en0)) begin
		sdram_time0 <= 5'd31;
	end else begin
		if ((~sdram_max_time0)) begin
			sdram_time0 <= (sdram_time0 - 1'd1);
		end
	end
	if ((~sdram_en1)) begin
		sdram_time1 <= 4'd15;
	end else begin
		if ((~sdram_max_time1)) begin
			sdram_time1 <= (sdram_time1 - 1'd1);
		end
	end
	if (sdram_choose_cmd_ce) begin
		case (sdram_choose_cmd_grant)
			1'd0: begin
				if (sdram_choose_cmd_request[1]) begin
					sdram_choose_cmd_grant <= 1'd1;
				end else begin
					if (sdram_choose_cmd_request[2]) begin
						sdram_choose_cmd_grant <= 2'd2;
					end else begin
						if (sdram_choose_cmd_request[3]) begin
							sdram_choose_cmd_grant <= 2'd3;
						end else begin
							if (sdram_choose_cmd_request[4]) begin
								sdram_choose_cmd_grant <= 3'd4;
							end else begin
								if (sdram_choose_cmd_request[5]) begin
									sdram_choose_cmd_grant <= 3'd5;
								end else begin
									if (sdram_choose_cmd_request[6]) begin
										sdram_choose_cmd_grant <= 3'd6;
									end else begin
										if (sdram_choose_cmd_request[7]) begin
											sdram_choose_cmd_grant <= 3'd7;
										end
									end
								end
							end
						end
					end
				end
			end
			1'd1: begin
				if (sdram_choose_cmd_request[2]) begin
					sdram_choose_cmd_grant <= 2'd2;
				end else begin
					if (sdram_choose_cmd_request[3]) begin
						sdram_choose_cmd_grant <= 2'd3;
					end else begin
						if (sdram_choose_cmd_request[4]) begin
							sdram_choose_cmd_grant <= 3'd4;
						end else begin
							if (sdram_choose_cmd_request[5]) begin
								sdram_choose_cmd_grant <= 3'd5;
							end else begin
								if (sdram_choose_cmd_request[6]) begin
									sdram_choose_cmd_grant <= 3'd6;
								end else begin
									if (sdram_choose_cmd_request[7]) begin
										sdram_choose_cmd_grant <= 3'd7;
									end else begin
										if (sdram_choose_cmd_request[0]) begin
											sdram_choose_cmd_grant <= 1'd0;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd2: begin
				if (sdram_choose_cmd_request[3]) begin
					sdram_choose_cmd_grant <= 2'd3;
				end else begin
					if (sdram_choose_cmd_request[4]) begin
						sdram_choose_cmd_grant <= 3'd4;
					end else begin
						if (sdram_choose_cmd_request[5]) begin
							sdram_choose_cmd_grant <= 3'd5;
						end else begin
							if (sdram_choose_cmd_request[6]) begin
								sdram_choose_cmd_grant <= 3'd6;
							end else begin
								if (sdram_choose_cmd_request[7]) begin
									sdram_choose_cmd_grant <= 3'd7;
								end else begin
									if (sdram_choose_cmd_request[0]) begin
										sdram_choose_cmd_grant <= 1'd0;
									end else begin
										if (sdram_choose_cmd_request[1]) begin
											sdram_choose_cmd_grant <= 1'd1;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd3: begin
				if (sdram_choose_cmd_request[4]) begin
					sdram_choose_cmd_grant <= 3'd4;
				end else begin
					if (sdram_choose_cmd_request[5]) begin
						sdram_choose_cmd_grant <= 3'd5;
					end else begin
						if (sdram_choose_cmd_request[6]) begin
							sdram_choose_cmd_grant <= 3'd6;
						end else begin
							if (sdram_choose_cmd_request[7]) begin
								sdram_choose_cmd_grant <= 3'd7;
							end else begin
								if (sdram_choose_cmd_request[0]) begin
									sdram_choose_cmd_grant <= 1'd0;
								end else begin
									if (sdram_choose_cmd_request[1]) begin
										sdram_choose_cmd_grant <= 1'd1;
									end else begin
										if (sdram_choose_cmd_request[2]) begin
											sdram_choose_cmd_grant <= 2'd2;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd4: begin
				if (sdram_choose_cmd_request[5]) begin
					sdram_choose_cmd_grant <= 3'd5;
				end else begin
					if (sdram_choose_cmd_request[6]) begin
						sdram_choose_cmd_grant <= 3'd6;
					end else begin
						if (sdram_choose_cmd_request[7]) begin
							sdram_choose_cmd_grant <= 3'd7;
						end else begin
							if (sdram_choose_cmd_request[0]) begin
								sdram_choose_cmd_grant <= 1'd0;
							end else begin
								if (sdram_choose_cmd_request[1]) begin
									sdram_choose_cmd_grant <= 1'd1;
								end else begin
									if (sdram_choose_cmd_request[2]) begin
										sdram_choose_cmd_grant <= 2'd2;
									end else begin
										if (sdram_choose_cmd_request[3]) begin
											sdram_choose_cmd_grant <= 2'd3;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd5: begin
				if (sdram_choose_cmd_request[6]) begin
					sdram_choose_cmd_grant <= 3'd6;
				end else begin
					if (sdram_choose_cmd_request[7]) begin
						sdram_choose_cmd_grant <= 3'd7;
					end else begin
						if (sdram_choose_cmd_request[0]) begin
							sdram_choose_cmd_grant <= 1'd0;
						end else begin
							if (sdram_choose_cmd_request[1]) begin
								sdram_choose_cmd_grant <= 1'd1;
							end else begin
								if (sdram_choose_cmd_request[2]) begin
									sdram_choose_cmd_grant <= 2'd2;
								end else begin
									if (sdram_choose_cmd_request[3]) begin
										sdram_choose_cmd_grant <= 2'd3;
									end else begin
										if (sdram_choose_cmd_request[4]) begin
											sdram_choose_cmd_grant <= 3'd4;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd6: begin
				if (sdram_choose_cmd_request[7]) begin
					sdram_choose_cmd_grant <= 3'd7;
				end else begin
					if (sdram_choose_cmd_request[0]) begin
						sdram_choose_cmd_grant <= 1'd0;
					end else begin
						if (sdram_choose_cmd_request[1]) begin
							sdram_choose_cmd_grant <= 1'd1;
						end else begin
							if (sdram_choose_cmd_request[2]) begin
								sdram_choose_cmd_grant <= 2'd2;
							end else begin
								if (sdram_choose_cmd_request[3]) begin
									sdram_choose_cmd_grant <= 2'd3;
								end else begin
									if (sdram_choose_cmd_request[4]) begin
										sdram_choose_cmd_grant <= 3'd4;
									end else begin
										if (sdram_choose_cmd_request[5]) begin
											sdram_choose_cmd_grant <= 3'd5;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd7: begin
				if (sdram_choose_cmd_request[0]) begin
					sdram_choose_cmd_grant <= 1'd0;
				end else begin
					if (sdram_choose_cmd_request[1]) begin
						sdram_choose_cmd_grant <= 1'd1;
					end else begin
						if (sdram_choose_cmd_request[2]) begin
							sdram_choose_cmd_grant <= 2'd2;
						end else begin
							if (sdram_choose_cmd_request[3]) begin
								sdram_choose_cmd_grant <= 2'd3;
							end else begin
								if (sdram_choose_cmd_request[4]) begin
									sdram_choose_cmd_grant <= 3'd4;
								end else begin
									if (sdram_choose_cmd_request[5]) begin
										sdram_choose_cmd_grant <= 3'd5;
									end else begin
										if (sdram_choose_cmd_request[6]) begin
											sdram_choose_cmd_grant <= 3'd6;
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
	if (sdram_choose_req_ce) begin
		case (sdram_choose_req_grant)
			1'd0: begin
				if (sdram_choose_req_request[1]) begin
					sdram_choose_req_grant <= 1'd1;
				end else begin
					if (sdram_choose_req_request[2]) begin
						sdram_choose_req_grant <= 2'd2;
					end else begin
						if (sdram_choose_req_request[3]) begin
							sdram_choose_req_grant <= 2'd3;
						end else begin
							if (sdram_choose_req_request[4]) begin
								sdram_choose_req_grant <= 3'd4;
							end else begin
								if (sdram_choose_req_request[5]) begin
									sdram_choose_req_grant <= 3'd5;
								end else begin
									if (sdram_choose_req_request[6]) begin
										sdram_choose_req_grant <= 3'd6;
									end else begin
										if (sdram_choose_req_request[7]) begin
											sdram_choose_req_grant <= 3'd7;
										end
									end
								end
							end
						end
					end
				end
			end
			1'd1: begin
				if (sdram_choose_req_request[2]) begin
					sdram_choose_req_grant <= 2'd2;
				end else begin
					if (sdram_choose_req_request[3]) begin
						sdram_choose_req_grant <= 2'd3;
					end else begin
						if (sdram_choose_req_request[4]) begin
							sdram_choose_req_grant <= 3'd4;
						end else begin
							if (sdram_choose_req_request[5]) begin
								sdram_choose_req_grant <= 3'd5;
							end else begin
								if (sdram_choose_req_request[6]) begin
									sdram_choose_req_grant <= 3'd6;
								end else begin
									if (sdram_choose_req_request[7]) begin
										sdram_choose_req_grant <= 3'd7;
									end else begin
										if (sdram_choose_req_request[0]) begin
											sdram_choose_req_grant <= 1'd0;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd2: begin
				if (sdram_choose_req_request[3]) begin
					sdram_choose_req_grant <= 2'd3;
				end else begin
					if (sdram_choose_req_request[4]) begin
						sdram_choose_req_grant <= 3'd4;
					end else begin
						if (sdram_choose_req_request[5]) begin
							sdram_choose_req_grant <= 3'd5;
						end else begin
							if (sdram_choose_req_request[6]) begin
								sdram_choose_req_grant <= 3'd6;
							end else begin
								if (sdram_choose_req_request[7]) begin
									sdram_choose_req_grant <= 3'd7;
								end else begin
									if (sdram_choose_req_request[0]) begin
										sdram_choose_req_grant <= 1'd0;
									end else begin
										if (sdram_choose_req_request[1]) begin
											sdram_choose_req_grant <= 1'd1;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd3: begin
				if (sdram_choose_req_request[4]) begin
					sdram_choose_req_grant <= 3'd4;
				end else begin
					if (sdram_choose_req_request[5]) begin
						sdram_choose_req_grant <= 3'd5;
					end else begin
						if (sdram_choose_req_request[6]) begin
							sdram_choose_req_grant <= 3'd6;
						end else begin
							if (sdram_choose_req_request[7]) begin
								sdram_choose_req_grant <= 3'd7;
							end else begin
								if (sdram_choose_req_request[0]) begin
									sdram_choose_req_grant <= 1'd0;
								end else begin
									if (sdram_choose_req_request[1]) begin
										sdram_choose_req_grant <= 1'd1;
									end else begin
										if (sdram_choose_req_request[2]) begin
											sdram_choose_req_grant <= 2'd2;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd4: begin
				if (sdram_choose_req_request[5]) begin
					sdram_choose_req_grant <= 3'd5;
				end else begin
					if (sdram_choose_req_request[6]) begin
						sdram_choose_req_grant <= 3'd6;
					end else begin
						if (sdram_choose_req_request[7]) begin
							sdram_choose_req_grant <= 3'd7;
						end else begin
							if (sdram_choose_req_request[0]) begin
								sdram_choose_req_grant <= 1'd0;
							end else begin
								if (sdram_choose_req_request[1]) begin
									sdram_choose_req_grant <= 1'd1;
								end else begin
									if (sdram_choose_req_request[2]) begin
										sdram_choose_req_grant <= 2'd2;
									end else begin
										if (sdram_choose_req_request[3]) begin
											sdram_choose_req_grant <= 2'd3;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd5: begin
				if (sdram_choose_req_request[6]) begin
					sdram_choose_req_grant <= 3'd6;
				end else begin
					if (sdram_choose_req_request[7]) begin
						sdram_choose_req_grant <= 3'd7;
					end else begin
						if (sdram_choose_req_request[0]) begin
							sdram_choose_req_grant <= 1'd0;
						end else begin
							if (sdram_choose_req_request[1]) begin
								sdram_choose_req_grant <= 1'd1;
							end else begin
								if (sdram_choose_req_request[2]) begin
									sdram_choose_req_grant <= 2'd2;
								end else begin
									if (sdram_choose_req_request[3]) begin
										sdram_choose_req_grant <= 2'd3;
									end else begin
										if (sdram_choose_req_request[4]) begin
											sdram_choose_req_grant <= 3'd4;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd6: begin
				if (sdram_choose_req_request[7]) begin
					sdram_choose_req_grant <= 3'd7;
				end else begin
					if (sdram_choose_req_request[0]) begin
						sdram_choose_req_grant <= 1'd0;
					end else begin
						if (sdram_choose_req_request[1]) begin
							sdram_choose_req_grant <= 1'd1;
						end else begin
							if (sdram_choose_req_request[2]) begin
								sdram_choose_req_grant <= 2'd2;
							end else begin
								if (sdram_choose_req_request[3]) begin
									sdram_choose_req_grant <= 2'd3;
								end else begin
									if (sdram_choose_req_request[4]) begin
										sdram_choose_req_grant <= 3'd4;
									end else begin
										if (sdram_choose_req_request[5]) begin
											sdram_choose_req_grant <= 3'd5;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd7: begin
				if (sdram_choose_req_request[0]) begin
					sdram_choose_req_grant <= 1'd0;
				end else begin
					if (sdram_choose_req_request[1]) begin
						sdram_choose_req_grant <= 1'd1;
					end else begin
						if (sdram_choose_req_request[2]) begin
							sdram_choose_req_grant <= 2'd2;
						end else begin
							if (sdram_choose_req_request[3]) begin
								sdram_choose_req_grant <= 2'd3;
							end else begin
								if (sdram_choose_req_request[4]) begin
									sdram_choose_req_grant <= 3'd4;
								end else begin
									if (sdram_choose_req_request[5]) begin
										sdram_choose_req_grant <= 3'd5;
									end else begin
										if (sdram_choose_req_request[6]) begin
											sdram_choose_req_grant <= 3'd6;
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
	sdram_dfi_p0_address <= array_muxed8;
	sdram_dfi_p0_bank <= array_muxed9;
	sdram_dfi_p0_cas_n <= (~array_muxed10);
	sdram_dfi_p0_ras_n <= (~array_muxed11);
	sdram_dfi_p0_we_n <= (~array_muxed12);
	sdram_dfi_p0_rddata_en <= array_muxed13;
	sdram_dfi_p0_wrdata_en <= array_muxed14;
	sdram_dfi_p1_address <= array_muxed15;
	sdram_dfi_p1_bank <= array_muxed16;
	sdram_dfi_p1_cas_n <= (~array_muxed17);
	sdram_dfi_p1_ras_n <= (~array_muxed18);
	sdram_dfi_p1_we_n <= (~array_muxed19);
	sdram_dfi_p1_rddata_en <= array_muxed20;
	sdram_dfi_p1_wrdata_en <= array_muxed21;
	sdram_dfi_p2_address <= array_muxed22;
	sdram_dfi_p2_bank <= array_muxed23;
	sdram_dfi_p2_cas_n <= (~array_muxed24);
	sdram_dfi_p2_ras_n <= (~array_muxed25);
	sdram_dfi_p2_we_n <= (~array_muxed26);
	sdram_dfi_p2_rddata_en <= array_muxed27;
	sdram_dfi_p2_wrdata_en <= array_muxed28;
	sdram_dfi_p3_address <= array_muxed29;
	sdram_dfi_p3_bank <= array_muxed30;
	sdram_dfi_p3_cas_n <= (~array_muxed31);
	sdram_dfi_p3_ras_n <= (~array_muxed32);
	sdram_dfi_p3_we_n <= (~array_muxed33);
	sdram_dfi_p3_rddata_en <= array_muxed34;
	sdram_dfi_p3_wrdata_en <= array_muxed35;
	if (sdram_trrdcon_valid) begin
		sdram_trrdcon_count <= 1'd0;
		if (1'd1) begin
			sdram_trrdcon_ready <= 1'd1;
		end else begin
			sdram_trrdcon_ready <= 1'd0;
		end
	end else begin
		if ((~sdram_trrdcon_ready)) begin
			sdram_trrdcon_count <= (sdram_trrdcon_count - 1'd1);
			if ((sdram_trrdcon_count == 1'd1)) begin
				sdram_trrdcon_ready <= 1'd1;
			end
		end
	end
	sdram_tfawcon_window <= {sdram_tfawcon_window, sdram_tfawcon_valid};
	if ((sdram_tfawcon_count < 3'd4)) begin
		if ((sdram_tfawcon_count == 2'd3)) begin
			sdram_tfawcon_ready <= (~sdram_tfawcon_valid);
		end else begin
			sdram_tfawcon_ready <= 1'd1;
		end
	end
	if (sdram_tccdcon_valid) begin
		sdram_tccdcon_count <= 1'd0;
		if (1'd1) begin
			sdram_tccdcon_ready <= 1'd1;
		end else begin
			sdram_tccdcon_ready <= 1'd0;
		end
	end else begin
		if ((~sdram_tccdcon_ready)) begin
			sdram_tccdcon_count <= (sdram_tccdcon_count - 1'd1);
			if ((sdram_tccdcon_count == 1'd1)) begin
				sdram_tccdcon_ready <= 1'd1;
			end
		end
	end
	if (sdram_twtrcon_valid) begin
		sdram_twtrcon_count <= 2'd2;
		if (1'd0) begin
			sdram_twtrcon_ready <= 1'd1;
		end else begin
			sdram_twtrcon_ready <= 1'd0;
		end
	end else begin
		if ((~sdram_twtrcon_ready)) begin
			sdram_twtrcon_count <= (sdram_twtrcon_count - 1'd1);
			if ((sdram_twtrcon_count == 1'd1)) begin
				sdram_twtrcon_ready <= 1'd1;
			end
		end
	end
	multiplexer_state <= multiplexer_next_state;
	sdram_bandwidth_cmd_valid <= sdram_choose_req_cmd_valid;
	sdram_bandwidth_cmd_ready <= sdram_choose_req_cmd_ready;
	sdram_bandwidth_cmd_is_read <= sdram_choose_req_cmd_payload_is_read;
	sdram_bandwidth_cmd_is_write <= sdram_choose_req_cmd_payload_is_write;
	{sdram_bandwidth_period, sdram_bandwidth_counter} <= (sdram_bandwidth_counter + 1'd1);
	if (sdram_bandwidth_period) begin
		sdram_bandwidth_nreads_r <= sdram_bandwidth_nreads;
		sdram_bandwidth_nwrites_r <= sdram_bandwidth_nwrites;
		sdram_bandwidth_nreads <= 1'd0;
		sdram_bandwidth_nwrites <= 1'd0;
	end else begin
		if ((sdram_bandwidth_cmd_valid & sdram_bandwidth_cmd_ready)) begin
			if (sdram_bandwidth_cmd_is_read) begin
				sdram_bandwidth_nreads <= (sdram_bandwidth_nreads + 1'd1);
			end
			if (sdram_bandwidth_cmd_is_write) begin
				sdram_bandwidth_nwrites <= (sdram_bandwidth_nwrites + 1'd1);
			end
		end
	end
	if (sdram_bandwidth_update_re) begin
		sdram_bandwidth_nreads_status <= sdram_bandwidth_nreads_r;
		sdram_bandwidth_nwrites_status <= sdram_bandwidth_nwrites_r;
	end
	if (((roundrobin0_grant == 1'd0) & sdram_interface_bank0_rdata_valid)) begin
		rbank <= 1'd0;
	end
	if (((roundrobin0_grant == 1'd0) & sdram_interface_bank0_wdata_ready)) begin
		wbank <= 1'd0;
	end
	if (((roundrobin1_grant == 1'd0) & sdram_interface_bank1_rdata_valid)) begin
		rbank <= 1'd1;
	end
	if (((roundrobin1_grant == 1'd0) & sdram_interface_bank1_wdata_ready)) begin
		wbank <= 1'd1;
	end
	if (((roundrobin2_grant == 1'd0) & sdram_interface_bank2_rdata_valid)) begin
		rbank <= 2'd2;
	end
	if (((roundrobin2_grant == 1'd0) & sdram_interface_bank2_wdata_ready)) begin
		wbank <= 2'd2;
	end
	if (((roundrobin3_grant == 1'd0) & sdram_interface_bank3_rdata_valid)) begin
		rbank <= 2'd3;
	end
	if (((roundrobin3_grant == 1'd0) & sdram_interface_bank3_wdata_ready)) begin
		wbank <= 2'd3;
	end
	if (((roundrobin4_grant == 1'd0) & sdram_interface_bank4_rdata_valid)) begin
		rbank <= 3'd4;
	end
	if (((roundrobin4_grant == 1'd0) & sdram_interface_bank4_wdata_ready)) begin
		wbank <= 3'd4;
	end
	if (((roundrobin5_grant == 1'd0) & sdram_interface_bank5_rdata_valid)) begin
		rbank <= 3'd5;
	end
	if (((roundrobin5_grant == 1'd0) & sdram_interface_bank5_wdata_ready)) begin
		wbank <= 3'd5;
	end
	if (((roundrobin6_grant == 1'd0) & sdram_interface_bank6_rdata_valid)) begin
		rbank <= 3'd6;
	end
	if (((roundrobin6_grant == 1'd0) & sdram_interface_bank6_wdata_ready)) begin
		wbank <= 3'd6;
	end
	if (((roundrobin7_grant == 1'd0) & sdram_interface_bank7_rdata_valid)) begin
		rbank <= 3'd7;
	end
	if (((roundrobin7_grant == 1'd0) & sdram_interface_bank7_wdata_ready)) begin
		wbank <= 3'd7;
	end
	new_master_wdata_ready0 <= ((((((((1'd0 | ((roundrobin0_grant == 1'd0) & sdram_interface_bank0_wdata_ready)) | ((roundrobin1_grant == 1'd0) & sdram_interface_bank1_wdata_ready)) | ((roundrobin2_grant == 1'd0) & sdram_interface_bank2_wdata_ready)) | ((roundrobin3_grant == 1'd0) & sdram_interface_bank3_wdata_ready)) | ((roundrobin4_grant == 1'd0) & sdram_interface_bank4_wdata_ready)) | ((roundrobin5_grant == 1'd0) & sdram_interface_bank5_wdata_ready)) | ((roundrobin6_grant == 1'd0) & sdram_interface_bank6_wdata_ready)) | ((roundrobin7_grant == 1'd0) & sdram_interface_bank7_wdata_ready));
	new_master_wdata_ready1 <= new_master_wdata_ready0;
	new_master_rdata_valid0 <= ((((((((1'd0 | ((roundrobin0_grant == 1'd0) & sdram_interface_bank0_rdata_valid)) | ((roundrobin1_grant == 1'd0) & sdram_interface_bank1_rdata_valid)) | ((roundrobin2_grant == 1'd0) & sdram_interface_bank2_rdata_valid)) | ((roundrobin3_grant == 1'd0) & sdram_interface_bank3_rdata_valid)) | ((roundrobin4_grant == 1'd0) & sdram_interface_bank4_rdata_valid)) | ((roundrobin5_grant == 1'd0) & sdram_interface_bank5_rdata_valid)) | ((roundrobin6_grant == 1'd0) & sdram_interface_bank6_rdata_valid)) | ((roundrobin7_grant == 1'd0) & sdram_interface_bank7_rdata_valid));
	new_master_rdata_valid1 <= new_master_rdata_valid0;
	new_master_rdata_valid2 <= new_master_rdata_valid1;
	new_master_rdata_valid3 <= new_master_rdata_valid2;
	new_master_rdata_valid4 <= new_master_rdata_valid3;
	new_master_rbank0 <= rbank;
	new_master_rbank1 <= new_master_rbank0;
	new_master_rbank2 <= new_master_rbank1;
	new_master_rbank3 <= new_master_rbank2;
	new_master_wbank <= wbank;
	adr_offset_r <= interface0_wb_sdram_adr[1:0];
	cache_state <= cache_next_state;
	litedramwishbone2native_state <= litedramwishbone2native_next_state;
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
	if (basesoc_wait) begin
		if ((~basesoc_done)) begin
			basesoc_count <= (basesoc_count - 1'd1);
		end
	end else begin
		basesoc_count <= 17'd65536;
	end
	basesoc_interface0_bank_bus_dat_r <= 1'd0;
	if (basesoc_csrbank0_sel) begin
		case (basesoc_interface0_bank_bus_adr[3:0])
			1'd0: begin
				basesoc_interface0_bank_bus_dat_r <= basesoc_ctrl_reset_reset_w;
			end
			1'd1: begin
				basesoc_interface0_bank_bus_dat_r <= basesoc_csrbank0_scratch3_w;
			end
			2'd2: begin
				basesoc_interface0_bank_bus_dat_r <= basesoc_csrbank0_scratch2_w;
			end
			2'd3: begin
				basesoc_interface0_bank_bus_dat_r <= basesoc_csrbank0_scratch1_w;
			end
			3'd4: begin
				basesoc_interface0_bank_bus_dat_r <= basesoc_csrbank0_scratch0_w;
			end
			3'd5: begin
				basesoc_interface0_bank_bus_dat_r <= basesoc_csrbank0_bus_errors3_w;
			end
			3'd6: begin
				basesoc_interface0_bank_bus_dat_r <= basesoc_csrbank0_bus_errors2_w;
			end
			3'd7: begin
				basesoc_interface0_bank_bus_dat_r <= basesoc_csrbank0_bus_errors1_w;
			end
			4'd8: begin
				basesoc_interface0_bank_bus_dat_r <= basesoc_csrbank0_bus_errors0_w;
			end
		endcase
	end
	if (basesoc_csrbank0_scratch3_re) begin
		basesoc_ctrl_storage_full[31:24] <= basesoc_csrbank0_scratch3_r;
	end
	if (basesoc_csrbank0_scratch2_re) begin
		basesoc_ctrl_storage_full[23:16] <= basesoc_csrbank0_scratch2_r;
	end
	if (basesoc_csrbank0_scratch1_re) begin
		basesoc_ctrl_storage_full[15:8] <= basesoc_csrbank0_scratch1_r;
	end
	if (basesoc_csrbank0_scratch0_re) begin
		basesoc_ctrl_storage_full[7:0] <= basesoc_csrbank0_scratch0_r;
	end
	basesoc_ctrl_re <= basesoc_csrbank0_scratch0_re;
	basesoc_interface1_bank_bus_dat_r <= 1'd0;
	if (basesoc_csrbank1_sel) begin
		case (basesoc_interface1_bank_bus_adr[0])
			1'd0: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_switches_in_w;
			end
			1'd1: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_leds_out0_w;
			end
		endcase
	end
	if (basesoc_csrbank1_leds_out0_re) begin
		front_panel_leds_storage_full[1:0] <= basesoc_csrbank1_leds_out0_r;
	end
	front_panel_leds_re <= basesoc_csrbank1_leds_out0_re;
	basesoc_sel_r <= basesoc_sel;
	basesoc_interface2_bank_bus_dat_r <= 1'd0;
	if (basesoc_csrbank2_sel) begin
		case (basesoc_interface2_bank_bus_adr[5:0])
			1'd0: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dna_id7_w;
			end
			1'd1: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dna_id6_w;
			end
			2'd2: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dna_id5_w;
			end
			2'd3: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dna_id4_w;
			end
			3'd4: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dna_id3_w;
			end
			3'd5: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dna_id2_w;
			end
			3'd6: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dna_id1_w;
			end
			3'd7: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_dna_id0_w;
			end
			4'd8: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_git_commit19_w;
			end
			4'd9: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_git_commit18_w;
			end
			4'd10: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_git_commit17_w;
			end
			4'd11: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_git_commit16_w;
			end
			4'd12: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_git_commit15_w;
			end
			4'd13: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_git_commit14_w;
			end
			4'd14: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_git_commit13_w;
			end
			4'd15: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_git_commit12_w;
			end
			5'd16: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_git_commit11_w;
			end
			5'd17: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_git_commit10_w;
			end
			5'd18: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_git_commit9_w;
			end
			5'd19: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_git_commit8_w;
			end
			5'd20: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_git_commit7_w;
			end
			5'd21: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_git_commit6_w;
			end
			5'd22: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_git_commit5_w;
			end
			5'd23: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_git_commit4_w;
			end
			5'd24: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_git_commit3_w;
			end
			5'd25: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_git_commit2_w;
			end
			5'd26: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_git_commit1_w;
			end
			5'd27: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_git_commit0_w;
			end
			5'd28: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_platform_platform7_w;
			end
			5'd29: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_platform_platform6_w;
			end
			5'd30: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_platform_platform5_w;
			end
			5'd31: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_platform_platform4_w;
			end
			6'd32: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_platform_platform3_w;
			end
			6'd33: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_platform_platform2_w;
			end
			6'd34: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_platform_platform1_w;
			end
			6'd35: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_platform_platform0_w;
			end
			6'd36: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_platform_target7_w;
			end
			6'd37: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_platform_target6_w;
			end
			6'd38: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_platform_target5_w;
			end
			6'd39: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_platform_target4_w;
			end
			6'd40: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_platform_target3_w;
			end
			6'd41: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_platform_target2_w;
			end
			6'd42: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_platform_target1_w;
			end
			6'd43: begin
				basesoc_interface2_bank_bus_dat_r <= basesoc_csrbank2_platform_target0_w;
			end
		endcase
	end
	basesoc_interface3_bank_bus_dat_r <= 1'd0;
	if (basesoc_csrbank3_sel) begin
		case (basesoc_interface3_bank_bus_adr[2:0])
			1'd0: begin
				basesoc_interface3_bank_bus_dat_r <= basesoc_csrbank3_master_w0_w;
			end
			1'd1: begin
				basesoc_interface3_bank_bus_dat_r <= basesoc_csrbank3_master_r_w;
			end
			2'd2: begin
				basesoc_interface3_bank_bus_dat_r <= basesoc_csrbank3_fx2_reset_out0_w;
			end
			2'd3: begin
				basesoc_interface3_bank_bus_dat_r <= basesoc_csrbank3_fx2_hack_shift_reg0_w;
			end
			3'd4: begin
				basesoc_interface3_bank_bus_dat_r <= basesoc_csrbank3_fx2_hack_status0_w;
			end
			3'd5: begin
				basesoc_interface3_bank_bus_dat_r <= basesoc_csrbank3_fx2_hack_slave_addr0_w;
			end
			3'd6: begin
				basesoc_interface3_bank_bus_dat_r <= basesoc_csrbank3_mux_sel0_w;
			end
		endcase
	end
	if (basesoc_csrbank3_master_w0_re) begin
		opsis_i2c_master_storage_full[7:0] <= basesoc_csrbank3_master_w0_r;
	end
	opsis_i2c_master_re <= basesoc_csrbank3_master_w0_re;
	if (basesoc_csrbank3_fx2_reset_out0_re) begin
		opsis_i2c_fx2_reset_storage_full <= basesoc_csrbank3_fx2_reset_out0_r;
	end
	opsis_i2c_fx2_reset_re <= basesoc_csrbank3_fx2_reset_out0_re;
	if (opsis_i2c_shift_reg_we) begin
		opsis_i2c_shift_reg_storage_full <= (opsis_i2c_shift_reg_dat_w <<< 1'd0);
	end
	if (basesoc_csrbank3_fx2_hack_shift_reg0_re) begin
		opsis_i2c_shift_reg_storage_full[7:0] <= basesoc_csrbank3_fx2_hack_shift_reg0_r;
	end
	opsis_i2c_shift_reg_re <= basesoc_csrbank3_fx2_hack_shift_reg0_re;
	if (opsis_i2c_status_we) begin
		opsis_i2c_status_storage_full <= (opsis_i2c_status_dat_w <<< 1'd0);
	end
	if (basesoc_csrbank3_fx2_hack_status0_re) begin
		opsis_i2c_status_storage_full[1:0] <= basesoc_csrbank3_fx2_hack_status0_r;
	end
	opsis_i2c_status_re <= basesoc_csrbank3_fx2_hack_status0_re;
	if (basesoc_csrbank3_fx2_hack_slave_addr0_re) begin
		opsis_i2c_slave_addr_storage_full[6:0] <= basesoc_csrbank3_fx2_hack_slave_addr0_r;
	end
	opsis_i2c_slave_addr_re <= basesoc_csrbank3_fx2_hack_slave_addr0_re;
	if (basesoc_csrbank3_mux_sel0_re) begin
		opsisi2c_storage_full <= basesoc_csrbank3_mux_sel0_r;
	end
	opsisi2c_re <= basesoc_csrbank3_mux_sel0_re;
	basesoc_interface4_bank_bus_dat_r <= 1'd0;
	if (basesoc_csrbank4_sel) begin
		case (basesoc_interface4_bank_bus_adr[5:0])
			1'd0: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_control0_w;
			end
			1'd1: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi0_command0_w;
			end
			2'd2: begin
				basesoc_interface4_bank_bus_dat_r <= sdram_phaseinjector0_command_issue_w;
			end
			2'd3: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi0_address1_w;
			end
			3'd4: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi0_address0_w;
			end
			3'd5: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi0_baddress0_w;
			end
			3'd6: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi0_wrdata3_w;
			end
			3'd7: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi0_wrdata2_w;
			end
			4'd8: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi0_wrdata1_w;
			end
			4'd9: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi0_wrdata0_w;
			end
			4'd10: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi0_rddata3_w;
			end
			4'd11: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi0_rddata2_w;
			end
			4'd12: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi0_rddata1_w;
			end
			4'd13: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi0_rddata0_w;
			end
			4'd14: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi1_command0_w;
			end
			4'd15: begin
				basesoc_interface4_bank_bus_dat_r <= sdram_phaseinjector1_command_issue_w;
			end
			5'd16: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi1_address1_w;
			end
			5'd17: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi1_address0_w;
			end
			5'd18: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi1_baddress0_w;
			end
			5'd19: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi1_wrdata3_w;
			end
			5'd20: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi1_wrdata2_w;
			end
			5'd21: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi1_wrdata1_w;
			end
			5'd22: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi1_wrdata0_w;
			end
			5'd23: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi1_rddata3_w;
			end
			5'd24: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi1_rddata2_w;
			end
			5'd25: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi1_rddata1_w;
			end
			5'd26: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi1_rddata0_w;
			end
			5'd27: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi2_command0_w;
			end
			5'd28: begin
				basesoc_interface4_bank_bus_dat_r <= sdram_phaseinjector2_command_issue_w;
			end
			5'd29: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi2_address1_w;
			end
			5'd30: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi2_address0_w;
			end
			5'd31: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi2_baddress0_w;
			end
			6'd32: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi2_wrdata3_w;
			end
			6'd33: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi2_wrdata2_w;
			end
			6'd34: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi2_wrdata1_w;
			end
			6'd35: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi2_wrdata0_w;
			end
			6'd36: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi2_rddata3_w;
			end
			6'd37: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi2_rddata2_w;
			end
			6'd38: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi2_rddata1_w;
			end
			6'd39: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi2_rddata0_w;
			end
			6'd40: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi3_command0_w;
			end
			6'd41: begin
				basesoc_interface4_bank_bus_dat_r <= sdram_phaseinjector3_command_issue_w;
			end
			6'd42: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi3_address1_w;
			end
			6'd43: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi3_address0_w;
			end
			6'd44: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi3_baddress0_w;
			end
			6'd45: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi3_wrdata3_w;
			end
			6'd46: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi3_wrdata2_w;
			end
			6'd47: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi3_wrdata1_w;
			end
			6'd48: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi3_wrdata0_w;
			end
			6'd49: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi3_rddata3_w;
			end
			6'd50: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi3_rddata2_w;
			end
			6'd51: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi3_rddata1_w;
			end
			6'd52: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_dfii_pi3_rddata0_w;
			end
			6'd53: begin
				basesoc_interface4_bank_bus_dat_r <= sdram_bandwidth_update_w;
			end
			6'd54: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_controller_bandwidth_nreads2_w;
			end
			6'd55: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_controller_bandwidth_nreads1_w;
			end
			6'd56: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_controller_bandwidth_nreads0_w;
			end
			6'd57: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_controller_bandwidth_nwrites2_w;
			end
			6'd58: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_controller_bandwidth_nwrites1_w;
			end
			6'd59: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_controller_bandwidth_nwrites0_w;
			end
			6'd60: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_controller_bandwidth_data_width_w;
			end
		endcase
	end
	if (basesoc_csrbank4_dfii_control0_re) begin
		sdram_storage_full[3:0] <= basesoc_csrbank4_dfii_control0_r;
	end
	sdram_re <= basesoc_csrbank4_dfii_control0_re;
	if (basesoc_csrbank4_dfii_pi0_command0_re) begin
		sdram_phaseinjector0_command_storage_full[5:0] <= basesoc_csrbank4_dfii_pi0_command0_r;
	end
	sdram_phaseinjector0_command_re <= basesoc_csrbank4_dfii_pi0_command0_re;
	if (basesoc_csrbank4_dfii_pi0_address1_re) begin
		sdram_phaseinjector0_address_storage_full[13:8] <= basesoc_csrbank4_dfii_pi0_address1_r;
	end
	if (basesoc_csrbank4_dfii_pi0_address0_re) begin
		sdram_phaseinjector0_address_storage_full[7:0] <= basesoc_csrbank4_dfii_pi0_address0_r;
	end
	sdram_phaseinjector0_address_re <= basesoc_csrbank4_dfii_pi0_address0_re;
	if (basesoc_csrbank4_dfii_pi0_baddress0_re) begin
		sdram_phaseinjector0_baddress_storage_full[2:0] <= basesoc_csrbank4_dfii_pi0_baddress0_r;
	end
	sdram_phaseinjector0_baddress_re <= basesoc_csrbank4_dfii_pi0_baddress0_re;
	if (basesoc_csrbank4_dfii_pi0_wrdata3_re) begin
		sdram_phaseinjector0_wrdata_storage_full[31:24] <= basesoc_csrbank4_dfii_pi0_wrdata3_r;
	end
	if (basesoc_csrbank4_dfii_pi0_wrdata2_re) begin
		sdram_phaseinjector0_wrdata_storage_full[23:16] <= basesoc_csrbank4_dfii_pi0_wrdata2_r;
	end
	if (basesoc_csrbank4_dfii_pi0_wrdata1_re) begin
		sdram_phaseinjector0_wrdata_storage_full[15:8] <= basesoc_csrbank4_dfii_pi0_wrdata1_r;
	end
	if (basesoc_csrbank4_dfii_pi0_wrdata0_re) begin
		sdram_phaseinjector0_wrdata_storage_full[7:0] <= basesoc_csrbank4_dfii_pi0_wrdata0_r;
	end
	sdram_phaseinjector0_wrdata_re <= basesoc_csrbank4_dfii_pi0_wrdata0_re;
	if (basesoc_csrbank4_dfii_pi1_command0_re) begin
		sdram_phaseinjector1_command_storage_full[5:0] <= basesoc_csrbank4_dfii_pi1_command0_r;
	end
	sdram_phaseinjector1_command_re <= basesoc_csrbank4_dfii_pi1_command0_re;
	if (basesoc_csrbank4_dfii_pi1_address1_re) begin
		sdram_phaseinjector1_address_storage_full[13:8] <= basesoc_csrbank4_dfii_pi1_address1_r;
	end
	if (basesoc_csrbank4_dfii_pi1_address0_re) begin
		sdram_phaseinjector1_address_storage_full[7:0] <= basesoc_csrbank4_dfii_pi1_address0_r;
	end
	sdram_phaseinjector1_address_re <= basesoc_csrbank4_dfii_pi1_address0_re;
	if (basesoc_csrbank4_dfii_pi1_baddress0_re) begin
		sdram_phaseinjector1_baddress_storage_full[2:0] <= basesoc_csrbank4_dfii_pi1_baddress0_r;
	end
	sdram_phaseinjector1_baddress_re <= basesoc_csrbank4_dfii_pi1_baddress0_re;
	if (basesoc_csrbank4_dfii_pi1_wrdata3_re) begin
		sdram_phaseinjector1_wrdata_storage_full[31:24] <= basesoc_csrbank4_dfii_pi1_wrdata3_r;
	end
	if (basesoc_csrbank4_dfii_pi1_wrdata2_re) begin
		sdram_phaseinjector1_wrdata_storage_full[23:16] <= basesoc_csrbank4_dfii_pi1_wrdata2_r;
	end
	if (basesoc_csrbank4_dfii_pi1_wrdata1_re) begin
		sdram_phaseinjector1_wrdata_storage_full[15:8] <= basesoc_csrbank4_dfii_pi1_wrdata1_r;
	end
	if (basesoc_csrbank4_dfii_pi1_wrdata0_re) begin
		sdram_phaseinjector1_wrdata_storage_full[7:0] <= basesoc_csrbank4_dfii_pi1_wrdata0_r;
	end
	sdram_phaseinjector1_wrdata_re <= basesoc_csrbank4_dfii_pi1_wrdata0_re;
	if (basesoc_csrbank4_dfii_pi2_command0_re) begin
		sdram_phaseinjector2_command_storage_full[5:0] <= basesoc_csrbank4_dfii_pi2_command0_r;
	end
	sdram_phaseinjector2_command_re <= basesoc_csrbank4_dfii_pi2_command0_re;
	if (basesoc_csrbank4_dfii_pi2_address1_re) begin
		sdram_phaseinjector2_address_storage_full[13:8] <= basesoc_csrbank4_dfii_pi2_address1_r;
	end
	if (basesoc_csrbank4_dfii_pi2_address0_re) begin
		sdram_phaseinjector2_address_storage_full[7:0] <= basesoc_csrbank4_dfii_pi2_address0_r;
	end
	sdram_phaseinjector2_address_re <= basesoc_csrbank4_dfii_pi2_address0_re;
	if (basesoc_csrbank4_dfii_pi2_baddress0_re) begin
		sdram_phaseinjector2_baddress_storage_full[2:0] <= basesoc_csrbank4_dfii_pi2_baddress0_r;
	end
	sdram_phaseinjector2_baddress_re <= basesoc_csrbank4_dfii_pi2_baddress0_re;
	if (basesoc_csrbank4_dfii_pi2_wrdata3_re) begin
		sdram_phaseinjector2_wrdata_storage_full[31:24] <= basesoc_csrbank4_dfii_pi2_wrdata3_r;
	end
	if (basesoc_csrbank4_dfii_pi2_wrdata2_re) begin
		sdram_phaseinjector2_wrdata_storage_full[23:16] <= basesoc_csrbank4_dfii_pi2_wrdata2_r;
	end
	if (basesoc_csrbank4_dfii_pi2_wrdata1_re) begin
		sdram_phaseinjector2_wrdata_storage_full[15:8] <= basesoc_csrbank4_dfii_pi2_wrdata1_r;
	end
	if (basesoc_csrbank4_dfii_pi2_wrdata0_re) begin
		sdram_phaseinjector2_wrdata_storage_full[7:0] <= basesoc_csrbank4_dfii_pi2_wrdata0_r;
	end
	sdram_phaseinjector2_wrdata_re <= basesoc_csrbank4_dfii_pi2_wrdata0_re;
	if (basesoc_csrbank4_dfii_pi3_command0_re) begin
		sdram_phaseinjector3_command_storage_full[5:0] <= basesoc_csrbank4_dfii_pi3_command0_r;
	end
	sdram_phaseinjector3_command_re <= basesoc_csrbank4_dfii_pi3_command0_re;
	if (basesoc_csrbank4_dfii_pi3_address1_re) begin
		sdram_phaseinjector3_address_storage_full[13:8] <= basesoc_csrbank4_dfii_pi3_address1_r;
	end
	if (basesoc_csrbank4_dfii_pi3_address0_re) begin
		sdram_phaseinjector3_address_storage_full[7:0] <= basesoc_csrbank4_dfii_pi3_address0_r;
	end
	sdram_phaseinjector3_address_re <= basesoc_csrbank4_dfii_pi3_address0_re;
	if (basesoc_csrbank4_dfii_pi3_baddress0_re) begin
		sdram_phaseinjector3_baddress_storage_full[2:0] <= basesoc_csrbank4_dfii_pi3_baddress0_r;
	end
	sdram_phaseinjector3_baddress_re <= basesoc_csrbank4_dfii_pi3_baddress0_re;
	if (basesoc_csrbank4_dfii_pi3_wrdata3_re) begin
		sdram_phaseinjector3_wrdata_storage_full[31:24] <= basesoc_csrbank4_dfii_pi3_wrdata3_r;
	end
	if (basesoc_csrbank4_dfii_pi3_wrdata2_re) begin
		sdram_phaseinjector3_wrdata_storage_full[23:16] <= basesoc_csrbank4_dfii_pi3_wrdata2_r;
	end
	if (basesoc_csrbank4_dfii_pi3_wrdata1_re) begin
		sdram_phaseinjector3_wrdata_storage_full[15:8] <= basesoc_csrbank4_dfii_pi3_wrdata1_r;
	end
	if (basesoc_csrbank4_dfii_pi3_wrdata0_re) begin
		sdram_phaseinjector3_wrdata_storage_full[7:0] <= basesoc_csrbank4_dfii_pi3_wrdata0_r;
	end
	sdram_phaseinjector3_wrdata_re <= basesoc_csrbank4_dfii_pi3_wrdata0_re;
	basesoc_interface5_bank_bus_dat_r <= 1'd0;
	if (basesoc_csrbank5_sel) begin
		case (basesoc_interface5_bank_bus_adr[1:0])
			1'd0: begin
				basesoc_interface5_bank_bus_dat_r <= basesoc_csrbank5_bitbang0_w;
			end
			1'd1: begin
				basesoc_interface5_bank_bus_dat_r <= basesoc_csrbank5_miso_w;
			end
			2'd2: begin
				basesoc_interface5_bank_bus_dat_r <= basesoc_csrbank5_bitbang_en0_w;
			end
		endcase
	end
	if (basesoc_csrbank5_bitbang0_re) begin
		spiflash_bitbang_storage_full[3:0] <= basesoc_csrbank5_bitbang0_r;
	end
	spiflash_bitbang_re <= basesoc_csrbank5_bitbang0_re;
	if (basesoc_csrbank5_bitbang_en0_re) begin
		spiflash_bitbang_en_storage_full <= basesoc_csrbank5_bitbang_en0_r;
	end
	spiflash_bitbang_en_re <= basesoc_csrbank5_bitbang_en0_re;
	basesoc_interface6_bank_bus_dat_r <= 1'd0;
	if (basesoc_csrbank6_sel) begin
		case (basesoc_interface6_bank_bus_adr[4:0])
			1'd0: begin
				basesoc_interface6_bank_bus_dat_r <= basesoc_csrbank6_load3_w;
			end
			1'd1: begin
				basesoc_interface6_bank_bus_dat_r <= basesoc_csrbank6_load2_w;
			end
			2'd2: begin
				basesoc_interface6_bank_bus_dat_r <= basesoc_csrbank6_load1_w;
			end
			2'd3: begin
				basesoc_interface6_bank_bus_dat_r <= basesoc_csrbank6_load0_w;
			end
			3'd4: begin
				basesoc_interface6_bank_bus_dat_r <= basesoc_csrbank6_reload3_w;
			end
			3'd5: begin
				basesoc_interface6_bank_bus_dat_r <= basesoc_csrbank6_reload2_w;
			end
			3'd6: begin
				basesoc_interface6_bank_bus_dat_r <= basesoc_csrbank6_reload1_w;
			end
			3'd7: begin
				basesoc_interface6_bank_bus_dat_r <= basesoc_csrbank6_reload0_w;
			end
			4'd8: begin
				basesoc_interface6_bank_bus_dat_r <= basesoc_csrbank6_en0_w;
			end
			4'd9: begin
				basesoc_interface6_bank_bus_dat_r <= basesoc_update_value_w;
			end
			4'd10: begin
				basesoc_interface6_bank_bus_dat_r <= basesoc_csrbank6_value3_w;
			end
			4'd11: begin
				basesoc_interface6_bank_bus_dat_r <= basesoc_csrbank6_value2_w;
			end
			4'd12: begin
				basesoc_interface6_bank_bus_dat_r <= basesoc_csrbank6_value1_w;
			end
			4'd13: begin
				basesoc_interface6_bank_bus_dat_r <= basesoc_csrbank6_value0_w;
			end
			4'd14: begin
				basesoc_interface6_bank_bus_dat_r <= basesoc_eventmanager_status_w;
			end
			4'd15: begin
				basesoc_interface6_bank_bus_dat_r <= basesoc_eventmanager_pending_w;
			end
			5'd16: begin
				basesoc_interface6_bank_bus_dat_r <= basesoc_csrbank6_ev_enable0_w;
			end
		endcase
	end
	if (basesoc_csrbank6_load3_re) begin
		basesoc_load_storage_full[31:24] <= basesoc_csrbank6_load3_r;
	end
	if (basesoc_csrbank6_load2_re) begin
		basesoc_load_storage_full[23:16] <= basesoc_csrbank6_load2_r;
	end
	if (basesoc_csrbank6_load1_re) begin
		basesoc_load_storage_full[15:8] <= basesoc_csrbank6_load1_r;
	end
	if (basesoc_csrbank6_load0_re) begin
		basesoc_load_storage_full[7:0] <= basesoc_csrbank6_load0_r;
	end
	basesoc_load_re <= basesoc_csrbank6_load0_re;
	if (basesoc_csrbank6_reload3_re) begin
		basesoc_reload_storage_full[31:24] <= basesoc_csrbank6_reload3_r;
	end
	if (basesoc_csrbank6_reload2_re) begin
		basesoc_reload_storage_full[23:16] <= basesoc_csrbank6_reload2_r;
	end
	if (basesoc_csrbank6_reload1_re) begin
		basesoc_reload_storage_full[15:8] <= basesoc_csrbank6_reload1_r;
	end
	if (basesoc_csrbank6_reload0_re) begin
		basesoc_reload_storage_full[7:0] <= basesoc_csrbank6_reload0_r;
	end
	basesoc_reload_re <= basesoc_csrbank6_reload0_re;
	if (basesoc_csrbank6_en0_re) begin
		basesoc_en_storage_full <= basesoc_csrbank6_en0_r;
	end
	basesoc_en_re <= basesoc_csrbank6_en0_re;
	if (basesoc_csrbank6_ev_enable0_re) begin
		basesoc_eventmanager_storage_full <= basesoc_csrbank6_ev_enable0_r;
	end
	basesoc_eventmanager_re <= basesoc_csrbank6_ev_enable0_re;
	basesoc_interface7_bank_bus_dat_r <= 1'd0;
	if (basesoc_csrbank7_sel) begin
		case (basesoc_interface7_bank_bus_adr[2:0])
			1'd0: begin
				basesoc_interface7_bank_bus_dat_r <= uart_rxtx_w;
			end
			1'd1: begin
				basesoc_interface7_bank_bus_dat_r <= basesoc_csrbank7_txfull_w;
			end
			2'd2: begin
				basesoc_interface7_bank_bus_dat_r <= basesoc_csrbank7_rxempty_w;
			end
			2'd3: begin
				basesoc_interface7_bank_bus_dat_r <= uart_status_w;
			end
			3'd4: begin
				basesoc_interface7_bank_bus_dat_r <= uart_pending_w;
			end
			3'd5: begin
				basesoc_interface7_bank_bus_dat_r <= basesoc_csrbank7_ev_enable0_w;
			end
		endcase
	end
	if (basesoc_csrbank7_ev_enable0_re) begin
		uart_storage_full[1:0] <= basesoc_csrbank7_ev_enable0_r;
	end
	uart_re <= basesoc_csrbank7_ev_enable0_re;
	if (sys_rst) begin
		basesoc_ctrl_storage_full <= 32'd305419896;
		basesoc_ctrl_re <= 1'd0;
		basesoc_ctrl_bus_errors <= 32'd0;
		basesoc_rom_bus_ack <= 1'd0;
		basesoc_sram_bus_ack <= 1'd0;
		basesoc_interface_adr <= 14'd0;
		basesoc_interface_we <= 1'd0;
		basesoc_interface_dat_w <= 8'd0;
		basesoc_bus_wishbone_dat_r <= 32'd0;
		basesoc_bus_wishbone_ack <= 1'd0;
		basesoc_counter <= 2'd0;
		basesoc_load_storage_full <= 32'd0;
		basesoc_load_re <= 1'd0;
		basesoc_reload_storage_full <= 32'd0;
		basesoc_reload_re <= 1'd0;
		basesoc_en_storage_full <= 1'd0;
		basesoc_en_re <= 1'd0;
		basesoc_value_status <= 32'd0;
		basesoc_zero_pending <= 1'd0;
		basesoc_zero_old_trigger <= 1'd0;
		basesoc_eventmanager_storage_full <= 1'd0;
		basesoc_eventmanager_re <= 1'd0;
		basesoc_value <= 32'd0;
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
		spiflash_bitbang_storage_full <= 4'd0;
		spiflash_bitbang_re <= 1'd0;
		spiflash_bitbang_en_storage_full <= 1'd0;
		spiflash_bitbang_en_re <= 1'd0;
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
		sdram_storage_full <= 4'd0;
		sdram_re <= 1'd0;
		sdram_phaseinjector0_command_storage_full <= 6'd0;
		sdram_phaseinjector0_command_re <= 1'd0;
		sdram_phaseinjector0_address_storage_full <= 14'd0;
		sdram_phaseinjector0_address_re <= 1'd0;
		sdram_phaseinjector0_baddress_storage_full <= 3'd0;
		sdram_phaseinjector0_baddress_re <= 1'd0;
		sdram_phaseinjector0_wrdata_storage_full <= 32'd0;
		sdram_phaseinjector0_wrdata_re <= 1'd0;
		sdram_phaseinjector0_status <= 32'd0;
		sdram_phaseinjector1_command_storage_full <= 6'd0;
		sdram_phaseinjector1_command_re <= 1'd0;
		sdram_phaseinjector1_address_storage_full <= 14'd0;
		sdram_phaseinjector1_address_re <= 1'd0;
		sdram_phaseinjector1_baddress_storage_full <= 3'd0;
		sdram_phaseinjector1_baddress_re <= 1'd0;
		sdram_phaseinjector1_wrdata_storage_full <= 32'd0;
		sdram_phaseinjector1_wrdata_re <= 1'd0;
		sdram_phaseinjector1_status <= 32'd0;
		sdram_phaseinjector2_command_storage_full <= 6'd0;
		sdram_phaseinjector2_command_re <= 1'd0;
		sdram_phaseinjector2_address_storage_full <= 14'd0;
		sdram_phaseinjector2_address_re <= 1'd0;
		sdram_phaseinjector2_baddress_storage_full <= 3'd0;
		sdram_phaseinjector2_baddress_re <= 1'd0;
		sdram_phaseinjector2_wrdata_storage_full <= 32'd0;
		sdram_phaseinjector2_wrdata_re <= 1'd0;
		sdram_phaseinjector2_status <= 32'd0;
		sdram_phaseinjector3_command_storage_full <= 6'd0;
		sdram_phaseinjector3_command_re <= 1'd0;
		sdram_phaseinjector3_address_storage_full <= 14'd0;
		sdram_phaseinjector3_address_re <= 1'd0;
		sdram_phaseinjector3_baddress_storage_full <= 3'd0;
		sdram_phaseinjector3_baddress_re <= 1'd0;
		sdram_phaseinjector3_wrdata_storage_full <= 32'd0;
		sdram_phaseinjector3_wrdata_re <= 1'd0;
		sdram_phaseinjector3_status <= 32'd0;
		sdram_dfi_p0_address <= 14'd0;
		sdram_dfi_p0_bank <= 3'd0;
		sdram_dfi_p0_cas_n <= 1'd1;
		sdram_dfi_p0_ras_n <= 1'd1;
		sdram_dfi_p0_we_n <= 1'd1;
		sdram_dfi_p0_wrdata_en <= 1'd0;
		sdram_dfi_p0_rddata_en <= 1'd0;
		sdram_dfi_p1_address <= 14'd0;
		sdram_dfi_p1_bank <= 3'd0;
		sdram_dfi_p1_cas_n <= 1'd1;
		sdram_dfi_p1_ras_n <= 1'd1;
		sdram_dfi_p1_we_n <= 1'd1;
		sdram_dfi_p1_wrdata_en <= 1'd0;
		sdram_dfi_p1_rddata_en <= 1'd0;
		sdram_dfi_p2_address <= 14'd0;
		sdram_dfi_p2_bank <= 3'd0;
		sdram_dfi_p2_cas_n <= 1'd1;
		sdram_dfi_p2_ras_n <= 1'd1;
		sdram_dfi_p2_we_n <= 1'd1;
		sdram_dfi_p2_wrdata_en <= 1'd0;
		sdram_dfi_p2_rddata_en <= 1'd0;
		sdram_dfi_p3_address <= 14'd0;
		sdram_dfi_p3_bank <= 3'd0;
		sdram_dfi_p3_cas_n <= 1'd1;
		sdram_dfi_p3_ras_n <= 1'd1;
		sdram_dfi_p3_we_n <= 1'd1;
		sdram_dfi_p3_wrdata_en <= 1'd0;
		sdram_dfi_p3_rddata_en <= 1'd0;
		sdram_cmd_payload_a <= 14'd0;
		sdram_cmd_payload_ba <= 3'd0;
		sdram_cmd_payload_cas <= 1'd0;
		sdram_cmd_payload_ras <= 1'd0;
		sdram_cmd_payload_we <= 1'd0;
		sdram_seq_done <= 1'd0;
		sdram_counter <= 4'd0;
		sdram_count <= 9'd391;
		sdram_bankmachine0_cmd_buffer_lookahead_level <= 4'd0;
		sdram_bankmachine0_cmd_buffer_lookahead_produce <= 3'd0;
		sdram_bankmachine0_cmd_buffer_lookahead_consume <= 3'd0;
		sdram_bankmachine0_cmd_buffer_source_payload_we <= 1'd0;
		sdram_bankmachine0_cmd_buffer_source_payload_adr <= 21'd0;
		sdram_bankmachine0_cmd_buffer_valid_n <= 1'd0;
		sdram_bankmachine0_cmd_buffer_first_n <= 1'd0;
		sdram_bankmachine0_cmd_buffer_last_n <= 1'd0;
		sdram_bankmachine0_has_openrow <= 1'd0;
		sdram_bankmachine0_count <= 3'd4;
		sdram_bankmachine1_cmd_buffer_lookahead_level <= 4'd0;
		sdram_bankmachine1_cmd_buffer_lookahead_produce <= 3'd0;
		sdram_bankmachine1_cmd_buffer_lookahead_consume <= 3'd0;
		sdram_bankmachine1_cmd_buffer_source_payload_we <= 1'd0;
		sdram_bankmachine1_cmd_buffer_source_payload_adr <= 21'd0;
		sdram_bankmachine1_cmd_buffer_valid_n <= 1'd0;
		sdram_bankmachine1_cmd_buffer_first_n <= 1'd0;
		sdram_bankmachine1_cmd_buffer_last_n <= 1'd0;
		sdram_bankmachine1_has_openrow <= 1'd0;
		sdram_bankmachine1_count <= 3'd4;
		sdram_bankmachine2_cmd_buffer_lookahead_level <= 4'd0;
		sdram_bankmachine2_cmd_buffer_lookahead_produce <= 3'd0;
		sdram_bankmachine2_cmd_buffer_lookahead_consume <= 3'd0;
		sdram_bankmachine2_cmd_buffer_source_payload_we <= 1'd0;
		sdram_bankmachine2_cmd_buffer_source_payload_adr <= 21'd0;
		sdram_bankmachine2_cmd_buffer_valid_n <= 1'd0;
		sdram_bankmachine2_cmd_buffer_first_n <= 1'd0;
		sdram_bankmachine2_cmd_buffer_last_n <= 1'd0;
		sdram_bankmachine2_has_openrow <= 1'd0;
		sdram_bankmachine2_count <= 3'd4;
		sdram_bankmachine3_cmd_buffer_lookahead_level <= 4'd0;
		sdram_bankmachine3_cmd_buffer_lookahead_produce <= 3'd0;
		sdram_bankmachine3_cmd_buffer_lookahead_consume <= 3'd0;
		sdram_bankmachine3_cmd_buffer_source_payload_we <= 1'd0;
		sdram_bankmachine3_cmd_buffer_source_payload_adr <= 21'd0;
		sdram_bankmachine3_cmd_buffer_valid_n <= 1'd0;
		sdram_bankmachine3_cmd_buffer_first_n <= 1'd0;
		sdram_bankmachine3_cmd_buffer_last_n <= 1'd0;
		sdram_bankmachine3_has_openrow <= 1'd0;
		sdram_bankmachine3_count <= 3'd4;
		sdram_bankmachine4_cmd_buffer_lookahead_level <= 4'd0;
		sdram_bankmachine4_cmd_buffer_lookahead_produce <= 3'd0;
		sdram_bankmachine4_cmd_buffer_lookahead_consume <= 3'd0;
		sdram_bankmachine4_cmd_buffer_source_payload_we <= 1'd0;
		sdram_bankmachine4_cmd_buffer_source_payload_adr <= 21'd0;
		sdram_bankmachine4_cmd_buffer_valid_n <= 1'd0;
		sdram_bankmachine4_cmd_buffer_first_n <= 1'd0;
		sdram_bankmachine4_cmd_buffer_last_n <= 1'd0;
		sdram_bankmachine4_has_openrow <= 1'd0;
		sdram_bankmachine4_count <= 3'd4;
		sdram_bankmachine5_cmd_buffer_lookahead_level <= 4'd0;
		sdram_bankmachine5_cmd_buffer_lookahead_produce <= 3'd0;
		sdram_bankmachine5_cmd_buffer_lookahead_consume <= 3'd0;
		sdram_bankmachine5_cmd_buffer_source_payload_we <= 1'd0;
		sdram_bankmachine5_cmd_buffer_source_payload_adr <= 21'd0;
		sdram_bankmachine5_cmd_buffer_valid_n <= 1'd0;
		sdram_bankmachine5_cmd_buffer_first_n <= 1'd0;
		sdram_bankmachine5_cmd_buffer_last_n <= 1'd0;
		sdram_bankmachine5_has_openrow <= 1'd0;
		sdram_bankmachine5_count <= 3'd4;
		sdram_bankmachine6_cmd_buffer_lookahead_level <= 4'd0;
		sdram_bankmachine6_cmd_buffer_lookahead_produce <= 3'd0;
		sdram_bankmachine6_cmd_buffer_lookahead_consume <= 3'd0;
		sdram_bankmachine6_cmd_buffer_source_payload_we <= 1'd0;
		sdram_bankmachine6_cmd_buffer_source_payload_adr <= 21'd0;
		sdram_bankmachine6_cmd_buffer_valid_n <= 1'd0;
		sdram_bankmachine6_cmd_buffer_first_n <= 1'd0;
		sdram_bankmachine6_cmd_buffer_last_n <= 1'd0;
		sdram_bankmachine6_has_openrow <= 1'd0;
		sdram_bankmachine6_count <= 3'd4;
		sdram_bankmachine7_cmd_buffer_lookahead_level <= 4'd0;
		sdram_bankmachine7_cmd_buffer_lookahead_produce <= 3'd0;
		sdram_bankmachine7_cmd_buffer_lookahead_consume <= 3'd0;
		sdram_bankmachine7_cmd_buffer_source_payload_we <= 1'd0;
		sdram_bankmachine7_cmd_buffer_source_payload_adr <= 21'd0;
		sdram_bankmachine7_cmd_buffer_valid_n <= 1'd0;
		sdram_bankmachine7_cmd_buffer_first_n <= 1'd0;
		sdram_bankmachine7_cmd_buffer_last_n <= 1'd0;
		sdram_bankmachine7_has_openrow <= 1'd0;
		sdram_bankmachine7_count <= 3'd4;
		sdram_choose_cmd_grant <= 3'd0;
		sdram_choose_req_grant <= 3'd0;
		sdram_trrdcon_ready <= 1'd1;
		sdram_trrdcon_count <= 1'd0;
		sdram_tfawcon_ready <= 1'd1;
		sdram_tfawcon_window <= 8'd0;
		sdram_tccdcon_ready <= 1'd1;
		sdram_tccdcon_count <= 1'd0;
		sdram_twtrcon_ready <= 1'd1;
		sdram_twtrcon_count <= 2'd0;
		sdram_time0 <= 5'd0;
		sdram_time1 <= 4'd0;
		sdram_bandwidth_nreads_status <= 24'd0;
		sdram_bandwidth_nwrites_status <= 24'd0;
		sdram_bandwidth_cmd_valid <= 1'd0;
		sdram_bandwidth_cmd_ready <= 1'd0;
		sdram_bandwidth_cmd_is_read <= 1'd0;
		sdram_bandwidth_cmd_is_write <= 1'd0;
		sdram_bandwidth_counter <= 24'd0;
		sdram_bandwidth_period <= 1'd0;
		sdram_bandwidth_nreads <= 24'd0;
		sdram_bandwidth_nwrites <= 24'd0;
		sdram_bandwidth_nreads_r <= 24'd0;
		sdram_bandwidth_nwrites_r <= 24'd0;
		adr_offset_r <= 2'd0;
		opsisi2c_storage_full <= 1'd0;
		opsisi2c_re <= 1'd0;
		opsisi2c_state <= 4'd0;
		refresher_state <= 2'd0;
		bankmachine0_state <= 3'd0;
		bankmachine1_state <= 3'd0;
		bankmachine2_state <= 3'd0;
		bankmachine3_state <= 3'd0;
		bankmachine4_state <= 3'd0;
		bankmachine5_state <= 3'd0;
		bankmachine6_state <= 3'd0;
		bankmachine7_state <= 3'd0;
		multiplexer_state <= 3'd0;
		rbank <= 3'd0;
		wbank <= 3'd0;
		new_master_wdata_ready0 <= 1'd0;
		new_master_wdata_ready1 <= 1'd0;
		new_master_rdata_valid0 <= 1'd0;
		new_master_rdata_valid1 <= 1'd0;
		new_master_rdata_valid2 <= 1'd0;
		new_master_rdata_valid3 <= 1'd0;
		new_master_rdata_valid4 <= 1'd0;
		new_master_rbank0 <= 3'd0;
		new_master_rbank1 <= 3'd0;
		new_master_rbank2 <= 3'd0;
		new_master_rbank3 <= 3'd0;
		new_master_wbank <= 3'd0;
		cache_state <= 3'd0;
		litedramwishbone2native_state <= 2'd0;
		basesoc_grant <= 1'd0;
		basesoc_slave_sel_r <= 5'd0;
		basesoc_count <= 17'd65536;
		basesoc_interface0_bank_bus_dat_r <= 8'd0;
		basesoc_interface1_bank_bus_dat_r <= 8'd0;
		basesoc_sel_r <= 1'd0;
		basesoc_interface2_bank_bus_dat_r <= 8'd0;
		basesoc_interface3_bank_bus_dat_r <= 8'd0;
		basesoc_interface4_bank_bus_dat_r <= 8'd0;
		basesoc_interface5_bank_bus_dat_r <= 8'd0;
		basesoc_interface6_bank_bus_dat_r <= 8'd0;
		basesoc_interface7_bank_bus_dat_r <= 8'd0;
	end
	xilinxmultiregimpl0_regs0 <= opsis_i2c_scl_i_async;
	xilinxmultiregimpl0_regs1 <= xilinxmultiregimpl0_regs0;
	xilinxmultiregimpl1_regs0 <= opsis_i2c_sda_i_async;
	xilinxmultiregimpl1_regs1 <= xilinxmultiregimpl1_regs0;
	xilinxmultiregimpl2_regs0 <= rx;
	xilinxmultiregimpl2_regs1 <= xilinxmultiregimpl2_regs0;
	xilinxmultiregimpl3_regs0 <= front_panel_switches;
	xilinxmultiregimpl3_regs1 <= xilinxmultiregimpl3_regs0;
end

always @(posedge sys2x_clk) begin
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
	end
end

lm32_cpu #(
	.eba_reset(32'h00000000)
) lm32_cpu (
	.D_ACK_I(basesoc_lm32_dbus_ack),
	.D_DAT_I(basesoc_lm32_dbus_dat_r),
	.D_ERR_I(basesoc_lm32_dbus_err),
	.D_RTY_I(1'd0),
	.I_ACK_I(basesoc_lm32_ibus_ack),
	.I_DAT_I(basesoc_lm32_ibus_dat_r),
	.I_ERR_I(basesoc_lm32_ibus_err),
	.I_RTY_I(1'd0),
	.clk_i(sys_clk),
	.interrupt(basesoc_lm32_interrupt),
	.rst_i((sys_rst | basesoc_lm32_reset)),
	.D_ADR_O(basesoc_lm32_d_adr_o),
	.D_BTE_O(basesoc_lm32_dbus_bte),
	.D_CTI_O(basesoc_lm32_dbus_cti),
	.D_CYC_O(basesoc_lm32_dbus_cyc),
	.D_DAT_O(basesoc_lm32_dbus_dat_w),
	.D_SEL_O(basesoc_lm32_dbus_sel),
	.D_STB_O(basesoc_lm32_dbus_stb),
	.D_WE_O(basesoc_lm32_dbus_we),
	.I_ADR_O(basesoc_lm32_i_adr_o),
	.I_BTE_O(basesoc_lm32_ibus_bte),
	.I_CTI_O(basesoc_lm32_ibus_cti),
	.I_CYC_O(basesoc_lm32_ibus_cyc),
	.I_DAT_O(basesoc_lm32_ibus_dat_w),
	.I_SEL_O(basesoc_lm32_ibus_sel),
	.I_STB_O(basesoc_lm32_ibus_stb),
	.I_WE_O(basesoc_lm32_ibus_we)
);

reg [31:0] mem[0:8191];
reg [12:0] memadr;
always @(posedge sys_clk) begin
	memadr <= basesoc_rom_adr;
end

assign basesoc_rom_dat_r = mem[memadr];

initial begin
	$readmemh("mem.init", mem);
end

reg [31:0] mem_1[0:4095];
reg [11:0] memadr_1;
always @(posedge sys_clk) begin
	if (basesoc_sram_we[0])
		mem_1[basesoc_sram_adr][7:0] <= basesoc_sram_dat_w[7:0];
	if (basesoc_sram_we[1])
		mem_1[basesoc_sram_adr][15:8] <= basesoc_sram_dat_w[15:8];
	if (basesoc_sram_we[2])
		mem_1[basesoc_sram_adr][23:16] <= basesoc_sram_dat_w[23:16];
	if (basesoc_sram_we[3])
		mem_1[basesoc_sram_adr][31:24] <= basesoc_sram_dat_w[31:24];
	memadr_1 <= basesoc_sram_adr;
end

assign basesoc_sram_dat_r = mem_1[memadr_1];

reg [7:0] mem_2[0:7];
reg [2:0] memadr_2;
always @(posedge sys_clk) begin
	memadr_2 <= basesoc_adr;
end

assign basesoc_dat_r = mem_2[memadr_2];

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

reg [9:0] storage[0:15];
reg [9:0] memdat;
always @(posedge sys_clk) begin
	if (uart_tx_fifo_wrport_we)
		storage[uart_tx_fifo_wrport_adr] <= uart_tx_fifo_wrport_dat_w;
	memdat <= storage[uart_tx_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign uart_tx_fifo_wrport_dat_r = memdat;
assign uart_tx_fifo_rdport_dat_r = storage[uart_tx_fifo_rdport_adr];

reg [9:0] storage_1[0:15];
reg [9:0] memdat_1;
always @(posedge sys_clk) begin
	if (uart_rx_fifo_wrport_we)
		storage_1[uart_rx_fifo_wrport_adr] <= uart_rx_fifo_wrport_dat_w;
	memdat_1 <= storage_1[uart_rx_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign uart_rx_fifo_wrport_dat_r = memdat_1;
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

reg [23:0] storage_2[0:7];
reg [23:0] memdat_2;
always @(posedge sys_clk) begin
	if (sdram_bankmachine0_cmd_buffer_lookahead_wrport_we)
		storage_2[sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr] <= sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_w;
	memdat_2 <= storage_2[sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_r = memdat_2;
assign sdram_bankmachine0_cmd_buffer_lookahead_rdport_dat_r = storage_2[sdram_bankmachine0_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_3[0:7];
reg [23:0] memdat_3;
always @(posedge sys_clk) begin
	if (sdram_bankmachine1_cmd_buffer_lookahead_wrport_we)
		storage_3[sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr] <= sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_w;
	memdat_3 <= storage_3[sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_r = memdat_3;
assign sdram_bankmachine1_cmd_buffer_lookahead_rdport_dat_r = storage_3[sdram_bankmachine1_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_4[0:7];
reg [23:0] memdat_4;
always @(posedge sys_clk) begin
	if (sdram_bankmachine2_cmd_buffer_lookahead_wrport_we)
		storage_4[sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr] <= sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_w;
	memdat_4 <= storage_4[sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_r = memdat_4;
assign sdram_bankmachine2_cmd_buffer_lookahead_rdport_dat_r = storage_4[sdram_bankmachine2_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_5[0:7];
reg [23:0] memdat_5;
always @(posedge sys_clk) begin
	if (sdram_bankmachine3_cmd_buffer_lookahead_wrport_we)
		storage_5[sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr] <= sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_w;
	memdat_5 <= storage_5[sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_r = memdat_5;
assign sdram_bankmachine3_cmd_buffer_lookahead_rdport_dat_r = storage_5[sdram_bankmachine3_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_6[0:7];
reg [23:0] memdat_6;
always @(posedge sys_clk) begin
	if (sdram_bankmachine4_cmd_buffer_lookahead_wrport_we)
		storage_6[sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr] <= sdram_bankmachine4_cmd_buffer_lookahead_wrport_dat_w;
	memdat_6 <= storage_6[sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign sdram_bankmachine4_cmd_buffer_lookahead_wrport_dat_r = memdat_6;
assign sdram_bankmachine4_cmd_buffer_lookahead_rdport_dat_r = storage_6[sdram_bankmachine4_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_7[0:7];
reg [23:0] memdat_7;
always @(posedge sys_clk) begin
	if (sdram_bankmachine5_cmd_buffer_lookahead_wrport_we)
		storage_7[sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr] <= sdram_bankmachine5_cmd_buffer_lookahead_wrport_dat_w;
	memdat_7 <= storage_7[sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign sdram_bankmachine5_cmd_buffer_lookahead_wrport_dat_r = memdat_7;
assign sdram_bankmachine5_cmd_buffer_lookahead_rdport_dat_r = storage_7[sdram_bankmachine5_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_8[0:7];
reg [23:0] memdat_8;
always @(posedge sys_clk) begin
	if (sdram_bankmachine6_cmd_buffer_lookahead_wrport_we)
		storage_8[sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr] <= sdram_bankmachine6_cmd_buffer_lookahead_wrport_dat_w;
	memdat_8 <= storage_8[sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign sdram_bankmachine6_cmd_buffer_lookahead_wrport_dat_r = memdat_8;
assign sdram_bankmachine6_cmd_buffer_lookahead_rdport_dat_r = storage_8[sdram_bankmachine6_cmd_buffer_lookahead_rdport_adr];

reg [23:0] storage_9[0:7];
reg [23:0] memdat_9;
always @(posedge sys_clk) begin
	if (sdram_bankmachine7_cmd_buffer_lookahead_wrport_we)
		storage_9[sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr] <= sdram_bankmachine7_cmd_buffer_lookahead_wrport_dat_w;
	memdat_9 <= storage_9[sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign sdram_bankmachine7_cmd_buffer_lookahead_wrport_dat_r = memdat_9;
assign sdram_bankmachine7_cmd_buffer_lookahead_rdport_dat_r = storage_9[sdram_bankmachine7_cmd_buffer_lookahead_rdport_adr];

reg [127:0] data_mem[0:511];
reg [8:0] memadr_3;
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
	memadr_3 <= data_port_adr;
end

assign data_port_dat_r = data_mem[memadr_3];

reg [23:0] tag_mem[0:511];
reg [8:0] memadr_4;
always @(posedge sys_clk) begin
	if (tag_port_we)
		tag_mem[tag_port_adr] <= tag_port_dat_w;
	memadr_4 <= tag_port_adr;
end

assign tag_port_dat_r = tag_mem[memadr_4];

assign opsis_i2c_scl = opsisi2c_scl_oe ? opsisi2c_scl_o : 1'bz;
assign opsisi2c_scl_i = opsis_i2c_scl;

assign opsis_i2c_sda = opsisi2c_sda_oe ? opsisi2c_sda_o : 1'bz;
assign opsisi2c_sda_i = opsis_i2c_sda;

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
	.C(sys2x_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(xilinxasyncresetsynchronizerimpl2),
	.Q(xilinxasyncresetsynchronizerimpl2_rst_meta)
);

FDPE #(
	.INIT(1'd1)
) FDPE_5 (
	.C(sys2x_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl2_rst_meta),
	.PRE(xilinxasyncresetsynchronizerimpl2),
	.Q(sys2x_rst)
);

FDPE #(
	.INIT(1'd1)
) FDPE_6 (
	.C(base50_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(xilinxasyncresetsynchronizerimpl3),
	.Q(xilinxasyncresetsynchronizerimpl3_rst_meta)
);

FDPE #(
	.INIT(1'd1)
) FDPE_7 (
	.C(base50_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl3_rst_meta),
	.PRE(xilinxasyncresetsynchronizerimpl3),
	.Q(base50_rst)
);

FDPE #(
	.INIT(1'd1)
) FDPE_8 (
	.C(encoder_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(sys_rst),
	.Q(xilinxasyncresetsynchronizerimpl4_rst_meta)
);

FDPE #(
	.INIT(1'd1)
) FDPE_9 (
	.C(encoder_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl4_rst_meta),
	.PRE(sys_rst),
	.Q(encoder_rst)
);

endmodule
