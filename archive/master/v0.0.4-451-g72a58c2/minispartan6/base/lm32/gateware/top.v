/* Machine-generated using LiteX gen */
module top(
	output reg serial_tx,
	input serial_rx,
	input clk32,
	output sdram_clock,
	output user_led0,
	output user_led1,
	output user_led2,
	output user_led3,
	output user_led4,
	output user_led5,
	output user_led6,
	output user_led7,
	input user_sw0,
	input user_sw1,
	input user_sw2,
	input user_sw3,
	output reg spiflash2x_cs_n,
	output reg spiflash2x_clk,
	inout [1:0] spiflash2x_dq,
	output reg [12:0] sdram_a,
	inout [15:0] sdram_dq,
	output reg sdram_we_n,
	output reg sdram_ras_n,
	output reg sdram_cas_n,
	output reg sdram_cs_n,
	output reg sdram_cke,
	output reg [1:0] sdram_ba,
	output reg [1:0] sdram_dm
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
wire [11:0] soc_basesoc_sram_adr;
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
reg [31:0] soc_basesoc_uart_phy_storage_full = 32'd6184752;
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
wire [31:0] soc_basesoc_interface0_wb_sdram_dat_r;
wire [3:0] soc_basesoc_interface0_wb_sdram_sel;
wire soc_basesoc_interface0_wb_sdram_cyc;
wire soc_basesoc_interface0_wb_sdram_stb;
reg soc_basesoc_interface0_wb_sdram_ack = 1'd0;
wire soc_basesoc_interface0_wb_sdram_we;
wire [2:0] soc_basesoc_interface0_wb_sdram_cti;
wire [1:0] soc_basesoc_interface0_wb_sdram_bte;
reg soc_basesoc_interface0_wb_sdram_err = 1'd0;
wire sys_clk;
wire sys_rst;
wire sys_ps_clk;
reg sys_ps_rst = 1'd0;
wire soc_clk32a;
wire soc_clk32b;
wire soc_pll_lckd;
wire soc_pll_fb;
wire [5:0] soc_pll;
reg [56:0] soc_dna_status = 57'd0;
wire soc_dna_do;
reg [6:0] soc_dna_cnt = 7'd0;
wire [159:0] soc_git_status;
wire [63:0] soc_platform_status;
wire [63:0] soc_target_status;
wire [7:0] soc_leds;
reg [7:0] soc_leds_storage_full = 8'd0;
wire [7:0] soc_leds_storage;
reg soc_leds_re = 1'd0;
reg [3:0] soc_switches = 4'd0;
wire [3:0] soc_switches_status;
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
reg [1:0] soc_spiflash_o = 2'd0;
reg soc_spiflash_oe = 1'd0;
wire [1:0] soc_spiflash_i0;
reg [31:0] soc_spiflash_sr = 32'd0;
reg [1:0] soc_spiflash_i1 = 2'd0;
reg [1:0] soc_spiflash_dqi = 2'd0;
reg [7:0] soc_spiflash_counter = 8'd0;
wire [12:0] soc_ddrphy_dfi_p0_address;
wire [1:0] soc_ddrphy_dfi_p0_bank;
wire soc_ddrphy_dfi_p0_cas_n;
wire soc_ddrphy_dfi_p0_cs_n;
wire soc_ddrphy_dfi_p0_ras_n;
wire soc_ddrphy_dfi_p0_we_n;
wire soc_ddrphy_dfi_p0_cke;
wire soc_ddrphy_dfi_p0_odt;
wire soc_ddrphy_dfi_p0_reset_n;
wire soc_ddrphy_dfi_p0_act_n;
wire [15:0] soc_ddrphy_dfi_p0_wrdata;
wire soc_ddrphy_dfi_p0_wrdata_en;
wire [1:0] soc_ddrphy_dfi_p0_wrdata_mask;
wire soc_ddrphy_dfi_p0_rddata_en;
reg [15:0] soc_ddrphy_dfi_p0_rddata = 16'd0;
wire soc_ddrphy_dfi_p0_rddata_valid;
reg [15:0] soc_ddrphy_dq_o = 16'd0;
wire soc_ddrphy_dq_oe;
wire [15:0] soc_ddrphy_dq_i;
reg [15:0] soc_ddrphy_dq_in = 16'd0;
reg soc_ddrphy_wrdata_en = 1'd0;
reg [3:0] soc_ddrphy_rddata_en = 4'd0;
wire [12:0] soc_basesoc_sdram_inti_p0_address;
wire [1:0] soc_basesoc_sdram_inti_p0_bank;
reg soc_basesoc_sdram_inti_p0_cas_n = 1'd1;
reg soc_basesoc_sdram_inti_p0_cs_n = 1'd1;
reg soc_basesoc_sdram_inti_p0_ras_n = 1'd1;
reg soc_basesoc_sdram_inti_p0_we_n = 1'd1;
wire soc_basesoc_sdram_inti_p0_cke;
wire soc_basesoc_sdram_inti_p0_odt;
wire soc_basesoc_sdram_inti_p0_reset_n;
reg soc_basesoc_sdram_inti_p0_act_n = 1'd1;
wire [15:0] soc_basesoc_sdram_inti_p0_wrdata;
wire soc_basesoc_sdram_inti_p0_wrdata_en;
wire [1:0] soc_basesoc_sdram_inti_p0_wrdata_mask;
wire soc_basesoc_sdram_inti_p0_rddata_en;
reg [15:0] soc_basesoc_sdram_inti_p0_rddata = 16'd0;
reg soc_basesoc_sdram_inti_p0_rddata_valid = 1'd0;
wire [12:0] soc_basesoc_sdram_slave_p0_address;
wire [1:0] soc_basesoc_sdram_slave_p0_bank;
wire soc_basesoc_sdram_slave_p0_cas_n;
wire soc_basesoc_sdram_slave_p0_cs_n;
wire soc_basesoc_sdram_slave_p0_ras_n;
wire soc_basesoc_sdram_slave_p0_we_n;
wire soc_basesoc_sdram_slave_p0_cke;
wire soc_basesoc_sdram_slave_p0_odt;
wire soc_basesoc_sdram_slave_p0_reset_n;
wire soc_basesoc_sdram_slave_p0_act_n;
wire [15:0] soc_basesoc_sdram_slave_p0_wrdata;
wire soc_basesoc_sdram_slave_p0_wrdata_en;
wire [1:0] soc_basesoc_sdram_slave_p0_wrdata_mask;
wire soc_basesoc_sdram_slave_p0_rddata_en;
reg [15:0] soc_basesoc_sdram_slave_p0_rddata = 16'd0;
reg soc_basesoc_sdram_slave_p0_rddata_valid = 1'd0;
reg [12:0] soc_basesoc_sdram_master_p0_address = 13'd0;
reg [1:0] soc_basesoc_sdram_master_p0_bank = 2'd0;
reg soc_basesoc_sdram_master_p0_cas_n = 1'd1;
reg soc_basesoc_sdram_master_p0_cs_n = 1'd1;
reg soc_basesoc_sdram_master_p0_ras_n = 1'd1;
reg soc_basesoc_sdram_master_p0_we_n = 1'd1;
reg soc_basesoc_sdram_master_p0_cke = 1'd0;
reg soc_basesoc_sdram_master_p0_odt = 1'd0;
reg soc_basesoc_sdram_master_p0_reset_n = 1'd0;
reg soc_basesoc_sdram_master_p0_act_n = 1'd1;
reg [15:0] soc_basesoc_sdram_master_p0_wrdata = 16'd0;
reg soc_basesoc_sdram_master_p0_wrdata_en = 1'd0;
reg [1:0] soc_basesoc_sdram_master_p0_wrdata_mask = 2'd0;
reg soc_basesoc_sdram_master_p0_rddata_en = 1'd0;
wire [15:0] soc_basesoc_sdram_master_p0_rddata;
wire soc_basesoc_sdram_master_p0_rddata_valid;
reg [3:0] soc_basesoc_sdram_storage_full = 4'd0;
wire [3:0] soc_basesoc_sdram_storage;
reg soc_basesoc_sdram_re = 1'd0;
reg [5:0] soc_basesoc_sdram_command_storage_full = 6'd0;
wire [5:0] soc_basesoc_sdram_command_storage;
reg soc_basesoc_sdram_command_re = 1'd0;
wire soc_basesoc_sdram_command_issue_re;
wire soc_basesoc_sdram_command_issue_r;
reg soc_basesoc_sdram_command_issue_w = 1'd0;
reg [12:0] soc_basesoc_sdram_address_storage_full = 13'd0;
wire [12:0] soc_basesoc_sdram_address_storage;
reg soc_basesoc_sdram_address_re = 1'd0;
reg [1:0] soc_basesoc_sdram_baddress_storage_full = 2'd0;
wire [1:0] soc_basesoc_sdram_baddress_storage;
reg soc_basesoc_sdram_baddress_re = 1'd0;
reg [15:0] soc_basesoc_sdram_wrdata_storage_full = 16'd0;
wire [15:0] soc_basesoc_sdram_wrdata_storage;
reg soc_basesoc_sdram_wrdata_re = 1'd0;
reg [15:0] soc_basesoc_sdram_status = 16'd0;
reg [12:0] soc_basesoc_sdram_dfi_p0_address = 13'd0;
reg [1:0] soc_basesoc_sdram_dfi_p0_bank = 2'd0;
reg soc_basesoc_sdram_dfi_p0_cas_n = 1'd1;
reg soc_basesoc_sdram_dfi_p0_cs_n = 1'd1;
reg soc_basesoc_sdram_dfi_p0_ras_n = 1'd1;
reg soc_basesoc_sdram_dfi_p0_we_n = 1'd1;
wire soc_basesoc_sdram_dfi_p0_cke;
wire soc_basesoc_sdram_dfi_p0_odt;
wire soc_basesoc_sdram_dfi_p0_reset_n;
reg soc_basesoc_sdram_dfi_p0_act_n = 1'd1;
wire [15:0] soc_basesoc_sdram_dfi_p0_wrdata;
reg soc_basesoc_sdram_dfi_p0_wrdata_en = 1'd0;
wire [1:0] soc_basesoc_sdram_dfi_p0_wrdata_mask;
reg soc_basesoc_sdram_dfi_p0_rddata_en = 1'd0;
wire [15:0] soc_basesoc_sdram_dfi_p0_rddata;
wire soc_basesoc_sdram_dfi_p0_rddata_valid;
wire soc_basesoc_sdram_interface_bank0_valid;
wire soc_basesoc_sdram_interface_bank0_ready;
wire soc_basesoc_sdram_interface_bank0_we;
wire [21:0] soc_basesoc_sdram_interface_bank0_addr;
wire soc_basesoc_sdram_interface_bank0_lock;
wire soc_basesoc_sdram_interface_bank0_wdata_ready;
wire soc_basesoc_sdram_interface_bank0_rdata_valid;
wire soc_basesoc_sdram_interface_bank1_valid;
wire soc_basesoc_sdram_interface_bank1_ready;
wire soc_basesoc_sdram_interface_bank1_we;
wire [21:0] soc_basesoc_sdram_interface_bank1_addr;
wire soc_basesoc_sdram_interface_bank1_lock;
wire soc_basesoc_sdram_interface_bank1_wdata_ready;
wire soc_basesoc_sdram_interface_bank1_rdata_valid;
wire soc_basesoc_sdram_interface_bank2_valid;
wire soc_basesoc_sdram_interface_bank2_ready;
wire soc_basesoc_sdram_interface_bank2_we;
wire [21:0] soc_basesoc_sdram_interface_bank2_addr;
wire soc_basesoc_sdram_interface_bank2_lock;
wire soc_basesoc_sdram_interface_bank2_wdata_ready;
wire soc_basesoc_sdram_interface_bank2_rdata_valid;
wire soc_basesoc_sdram_interface_bank3_valid;
wire soc_basesoc_sdram_interface_bank3_ready;
wire soc_basesoc_sdram_interface_bank3_we;
wire [21:0] soc_basesoc_sdram_interface_bank3_addr;
wire soc_basesoc_sdram_interface_bank3_lock;
wire soc_basesoc_sdram_interface_bank3_wdata_ready;
wire soc_basesoc_sdram_interface_bank3_rdata_valid;
reg [15:0] soc_basesoc_sdram_interface_wdata = 16'd0;
reg [1:0] soc_basesoc_sdram_interface_wdata_we = 2'd0;
wire [15:0] soc_basesoc_sdram_interface_rdata;
reg soc_basesoc_sdram_cmd_valid = 1'd0;
reg soc_basesoc_sdram_cmd_ready = 1'd0;
reg soc_basesoc_sdram_cmd_last = 1'd0;
reg [12:0] soc_basesoc_sdram_cmd_payload_a = 13'd0;
reg [1:0] soc_basesoc_sdram_cmd_payload_ba = 2'd0;
reg soc_basesoc_sdram_cmd_payload_cas = 1'd0;
reg soc_basesoc_sdram_cmd_payload_ras = 1'd0;
reg soc_basesoc_sdram_cmd_payload_we = 1'd0;
reg soc_basesoc_sdram_cmd_payload_is_read = 1'd0;
reg soc_basesoc_sdram_cmd_payload_is_write = 1'd0;
wire soc_basesoc_sdram_timer_wait;
wire soc_basesoc_sdram_timer_done;
reg [9:0] soc_basesoc_sdram_timer_count = 10'd625;
reg soc_basesoc_sdram_timer_load = 1'd0;
reg [9:0] soc_basesoc_sdram_timer_load_count = 10'd0;
wire soc_basesoc_sdram_timer_reset;
reg soc_basesoc_sdram_generator_start = 1'd0;
reg soc_basesoc_sdram_generator_done = 1'd0;
reg [3:0] soc_basesoc_sdram_generator_counter = 4'd0;
wire soc_basesoc_sdram_bankmachine0_req_valid;
wire soc_basesoc_sdram_bankmachine0_req_ready;
wire soc_basesoc_sdram_bankmachine0_req_we;
wire [21:0] soc_basesoc_sdram_bankmachine0_req_addr;
wire soc_basesoc_sdram_bankmachine0_req_lock;
reg soc_basesoc_sdram_bankmachine0_req_wdata_ready = 1'd0;
reg soc_basesoc_sdram_bankmachine0_req_rdata_valid = 1'd0;
wire soc_basesoc_sdram_bankmachine0_refresh_req;
reg soc_basesoc_sdram_bankmachine0_refresh_gnt = 1'd0;
reg soc_basesoc_sdram_bankmachine0_cmd_valid = 1'd0;
reg soc_basesoc_sdram_bankmachine0_cmd_ready = 1'd0;
reg [12:0] soc_basesoc_sdram_bankmachine0_cmd_payload_a = 13'd0;
wire [1:0] soc_basesoc_sdram_bankmachine0_cmd_payload_ba;
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
wire [21:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_addr;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_valid;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_ready;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_first;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_last;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_we;
wire [21:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_addr;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_re;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable;
wire [24:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_din;
wire [24:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_dout;
reg [3:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_level = 4'd0;
reg soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [24:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_r;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_we;
wire [24:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_w;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_do_read;
wire [2:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_adr;
wire [24:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_dat_r;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we;
wire [21:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_addr;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_first;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_last;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we;
wire [21:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_addr;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_first;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_last;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_sink_valid;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_sink_ready;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_sink_first;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_sink_last;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_sink_payload_we;
wire [21:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_sink_payload_addr;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_source_valid;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_source_ready;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_source_first;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_source_last;
reg soc_basesoc_sdram_bankmachine0_cmd_buffer_source_payload_we = 1'd0;
reg [21:0] soc_basesoc_sdram_bankmachine0_cmd_buffer_source_payload_addr = 22'd0;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_pipe_ce;
wire soc_basesoc_sdram_bankmachine0_cmd_buffer_busy;
reg soc_basesoc_sdram_bankmachine0_cmd_buffer_valid_n = 1'd0;
reg soc_basesoc_sdram_bankmachine0_cmd_buffer_first_n = 1'd0;
reg soc_basesoc_sdram_bankmachine0_cmd_buffer_last_n = 1'd0;
reg [12:0] soc_basesoc_sdram_bankmachine0_row = 13'd0;
reg soc_basesoc_sdram_bankmachine0_row_opened = 1'd0;
wire soc_basesoc_sdram_bankmachine0_row_hit;
reg soc_basesoc_sdram_bankmachine0_row_open = 1'd0;
reg soc_basesoc_sdram_bankmachine0_row_close = 1'd0;
reg soc_basesoc_sdram_bankmachine0_row_col_n_addr_sel = 1'd0;
wire soc_basesoc_sdram_bankmachine0_twtpcon_valid;
(* register_balancing = "no" *) reg soc_basesoc_sdram_bankmachine0_twtpcon_ready = 1'd1;
reg [1:0] soc_basesoc_sdram_bankmachine0_twtpcon_count = 2'd0;
wire soc_basesoc_sdram_bankmachine0_trccon_valid;
(* register_balancing = "no" *) reg soc_basesoc_sdram_bankmachine0_trccon_ready = 1'd1;
wire soc_basesoc_sdram_bankmachine0_trascon_valid;
(* register_balancing = "no" *) reg soc_basesoc_sdram_bankmachine0_trascon_ready = 1'd1;
wire soc_basesoc_sdram_bankmachine1_req_valid;
wire soc_basesoc_sdram_bankmachine1_req_ready;
wire soc_basesoc_sdram_bankmachine1_req_we;
wire [21:0] soc_basesoc_sdram_bankmachine1_req_addr;
wire soc_basesoc_sdram_bankmachine1_req_lock;
reg soc_basesoc_sdram_bankmachine1_req_wdata_ready = 1'd0;
reg soc_basesoc_sdram_bankmachine1_req_rdata_valid = 1'd0;
wire soc_basesoc_sdram_bankmachine1_refresh_req;
reg soc_basesoc_sdram_bankmachine1_refresh_gnt = 1'd0;
reg soc_basesoc_sdram_bankmachine1_cmd_valid = 1'd0;
reg soc_basesoc_sdram_bankmachine1_cmd_ready = 1'd0;
reg [12:0] soc_basesoc_sdram_bankmachine1_cmd_payload_a = 13'd0;
wire [1:0] soc_basesoc_sdram_bankmachine1_cmd_payload_ba;
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
wire [21:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_addr;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_valid;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_ready;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_first;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_last;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_we;
wire [21:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_addr;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_re;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable;
wire [24:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_din;
wire [24:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_dout;
reg [3:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_level = 4'd0;
reg soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [24:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_r;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_we;
wire [24:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_w;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_do_read;
wire [2:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_adr;
wire [24:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_dat_r;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we;
wire [21:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_addr;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_first;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_last;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we;
wire [21:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_addr;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_first;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_last;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_sink_valid;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_sink_ready;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_sink_first;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_sink_last;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_sink_payload_we;
wire [21:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_sink_payload_addr;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_source_valid;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_source_ready;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_source_first;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_source_last;
reg soc_basesoc_sdram_bankmachine1_cmd_buffer_source_payload_we = 1'd0;
reg [21:0] soc_basesoc_sdram_bankmachine1_cmd_buffer_source_payload_addr = 22'd0;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_pipe_ce;
wire soc_basesoc_sdram_bankmachine1_cmd_buffer_busy;
reg soc_basesoc_sdram_bankmachine1_cmd_buffer_valid_n = 1'd0;
reg soc_basesoc_sdram_bankmachine1_cmd_buffer_first_n = 1'd0;
reg soc_basesoc_sdram_bankmachine1_cmd_buffer_last_n = 1'd0;
reg [12:0] soc_basesoc_sdram_bankmachine1_row = 13'd0;
reg soc_basesoc_sdram_bankmachine1_row_opened = 1'd0;
wire soc_basesoc_sdram_bankmachine1_row_hit;
reg soc_basesoc_sdram_bankmachine1_row_open = 1'd0;
reg soc_basesoc_sdram_bankmachine1_row_close = 1'd0;
reg soc_basesoc_sdram_bankmachine1_row_col_n_addr_sel = 1'd0;
wire soc_basesoc_sdram_bankmachine1_twtpcon_valid;
(* register_balancing = "no" *) reg soc_basesoc_sdram_bankmachine1_twtpcon_ready = 1'd1;
reg [1:0] soc_basesoc_sdram_bankmachine1_twtpcon_count = 2'd0;
wire soc_basesoc_sdram_bankmachine1_trccon_valid;
(* register_balancing = "no" *) reg soc_basesoc_sdram_bankmachine1_trccon_ready = 1'd1;
wire soc_basesoc_sdram_bankmachine1_trascon_valid;
(* register_balancing = "no" *) reg soc_basesoc_sdram_bankmachine1_trascon_ready = 1'd1;
wire soc_basesoc_sdram_bankmachine2_req_valid;
wire soc_basesoc_sdram_bankmachine2_req_ready;
wire soc_basesoc_sdram_bankmachine2_req_we;
wire [21:0] soc_basesoc_sdram_bankmachine2_req_addr;
wire soc_basesoc_sdram_bankmachine2_req_lock;
reg soc_basesoc_sdram_bankmachine2_req_wdata_ready = 1'd0;
reg soc_basesoc_sdram_bankmachine2_req_rdata_valid = 1'd0;
wire soc_basesoc_sdram_bankmachine2_refresh_req;
reg soc_basesoc_sdram_bankmachine2_refresh_gnt = 1'd0;
reg soc_basesoc_sdram_bankmachine2_cmd_valid = 1'd0;
reg soc_basesoc_sdram_bankmachine2_cmd_ready = 1'd0;
reg [12:0] soc_basesoc_sdram_bankmachine2_cmd_payload_a = 13'd0;
wire [1:0] soc_basesoc_sdram_bankmachine2_cmd_payload_ba;
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
wire [21:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_addr;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_valid;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_ready;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_first;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_last;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_we;
wire [21:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_addr;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_re;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable;
wire [24:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_din;
wire [24:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_dout;
reg [3:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_level = 4'd0;
reg soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [24:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_r;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_we;
wire [24:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_w;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_do_read;
wire [2:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_adr;
wire [24:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_dat_r;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we;
wire [21:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_addr;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_first;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_last;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we;
wire [21:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_addr;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_first;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_last;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_sink_valid;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_sink_ready;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_sink_first;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_sink_last;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_sink_payload_we;
wire [21:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_sink_payload_addr;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_source_valid;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_source_ready;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_source_first;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_source_last;
reg soc_basesoc_sdram_bankmachine2_cmd_buffer_source_payload_we = 1'd0;
reg [21:0] soc_basesoc_sdram_bankmachine2_cmd_buffer_source_payload_addr = 22'd0;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_pipe_ce;
wire soc_basesoc_sdram_bankmachine2_cmd_buffer_busy;
reg soc_basesoc_sdram_bankmachine2_cmd_buffer_valid_n = 1'd0;
reg soc_basesoc_sdram_bankmachine2_cmd_buffer_first_n = 1'd0;
reg soc_basesoc_sdram_bankmachine2_cmd_buffer_last_n = 1'd0;
reg [12:0] soc_basesoc_sdram_bankmachine2_row = 13'd0;
reg soc_basesoc_sdram_bankmachine2_row_opened = 1'd0;
wire soc_basesoc_sdram_bankmachine2_row_hit;
reg soc_basesoc_sdram_bankmachine2_row_open = 1'd0;
reg soc_basesoc_sdram_bankmachine2_row_close = 1'd0;
reg soc_basesoc_sdram_bankmachine2_row_col_n_addr_sel = 1'd0;
wire soc_basesoc_sdram_bankmachine2_twtpcon_valid;
(* register_balancing = "no" *) reg soc_basesoc_sdram_bankmachine2_twtpcon_ready = 1'd1;
reg [1:0] soc_basesoc_sdram_bankmachine2_twtpcon_count = 2'd0;
wire soc_basesoc_sdram_bankmachine2_trccon_valid;
(* register_balancing = "no" *) reg soc_basesoc_sdram_bankmachine2_trccon_ready = 1'd1;
wire soc_basesoc_sdram_bankmachine2_trascon_valid;
(* register_balancing = "no" *) reg soc_basesoc_sdram_bankmachine2_trascon_ready = 1'd1;
wire soc_basesoc_sdram_bankmachine3_req_valid;
wire soc_basesoc_sdram_bankmachine3_req_ready;
wire soc_basesoc_sdram_bankmachine3_req_we;
wire [21:0] soc_basesoc_sdram_bankmachine3_req_addr;
wire soc_basesoc_sdram_bankmachine3_req_lock;
reg soc_basesoc_sdram_bankmachine3_req_wdata_ready = 1'd0;
reg soc_basesoc_sdram_bankmachine3_req_rdata_valid = 1'd0;
wire soc_basesoc_sdram_bankmachine3_refresh_req;
reg soc_basesoc_sdram_bankmachine3_refresh_gnt = 1'd0;
reg soc_basesoc_sdram_bankmachine3_cmd_valid = 1'd0;
reg soc_basesoc_sdram_bankmachine3_cmd_ready = 1'd0;
reg [12:0] soc_basesoc_sdram_bankmachine3_cmd_payload_a = 13'd0;
wire [1:0] soc_basesoc_sdram_bankmachine3_cmd_payload_ba;
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
wire [21:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_addr;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_valid;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_ready;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_first;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_last;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_we;
wire [21:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_addr;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_re;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable;
wire [24:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_din;
wire [24:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_dout;
reg [3:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_level = 4'd0;
reg soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [24:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_r;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_we;
wire [24:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_w;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_do_read;
wire [2:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_adr;
wire [24:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_dat_r;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we;
wire [21:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_addr;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_first;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_last;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we;
wire [21:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_addr;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_first;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_last;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_sink_valid;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_sink_ready;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_sink_first;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_sink_last;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_sink_payload_we;
wire [21:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_sink_payload_addr;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_source_valid;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_source_ready;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_source_first;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_source_last;
reg soc_basesoc_sdram_bankmachine3_cmd_buffer_source_payload_we = 1'd0;
reg [21:0] soc_basesoc_sdram_bankmachine3_cmd_buffer_source_payload_addr = 22'd0;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_pipe_ce;
wire soc_basesoc_sdram_bankmachine3_cmd_buffer_busy;
reg soc_basesoc_sdram_bankmachine3_cmd_buffer_valid_n = 1'd0;
reg soc_basesoc_sdram_bankmachine3_cmd_buffer_first_n = 1'd0;
reg soc_basesoc_sdram_bankmachine3_cmd_buffer_last_n = 1'd0;
reg [12:0] soc_basesoc_sdram_bankmachine3_row = 13'd0;
reg soc_basesoc_sdram_bankmachine3_row_opened = 1'd0;
wire soc_basesoc_sdram_bankmachine3_row_hit;
reg soc_basesoc_sdram_bankmachine3_row_open = 1'd0;
reg soc_basesoc_sdram_bankmachine3_row_close = 1'd0;
reg soc_basesoc_sdram_bankmachine3_row_col_n_addr_sel = 1'd0;
wire soc_basesoc_sdram_bankmachine3_twtpcon_valid;
(* register_balancing = "no" *) reg soc_basesoc_sdram_bankmachine3_twtpcon_ready = 1'd1;
reg [1:0] soc_basesoc_sdram_bankmachine3_twtpcon_count = 2'd0;
wire soc_basesoc_sdram_bankmachine3_trccon_valid;
(* register_balancing = "no" *) reg soc_basesoc_sdram_bankmachine3_trccon_ready = 1'd1;
wire soc_basesoc_sdram_bankmachine3_trascon_valid;
(* register_balancing = "no" *) reg soc_basesoc_sdram_bankmachine3_trascon_ready = 1'd1;
wire soc_basesoc_sdram_ras_allowed;
wire soc_basesoc_sdram_cas_allowed;
reg soc_basesoc_sdram_choose_cmd_want_reads = 1'd0;
reg soc_basesoc_sdram_choose_cmd_want_writes = 1'd0;
wire soc_basesoc_sdram_choose_cmd_want_cmds;
reg soc_basesoc_sdram_choose_cmd_want_activates = 1'd0;
wire soc_basesoc_sdram_choose_cmd_cmd_valid;
reg soc_basesoc_sdram_choose_cmd_cmd_ready = 1'd0;
wire [12:0] soc_basesoc_sdram_choose_cmd_cmd_payload_a;
wire [1:0] soc_basesoc_sdram_choose_cmd_cmd_payload_ba;
reg soc_basesoc_sdram_choose_cmd_cmd_payload_cas = 1'd0;
reg soc_basesoc_sdram_choose_cmd_cmd_payload_ras = 1'd0;
reg soc_basesoc_sdram_choose_cmd_cmd_payload_we = 1'd0;
wire soc_basesoc_sdram_choose_cmd_cmd_payload_is_cmd;
wire soc_basesoc_sdram_choose_cmd_cmd_payload_is_read;
wire soc_basesoc_sdram_choose_cmd_cmd_payload_is_write;
reg [3:0] soc_basesoc_sdram_choose_cmd_valids = 4'd0;
wire [3:0] soc_basesoc_sdram_choose_cmd_request;
reg [1:0] soc_basesoc_sdram_choose_cmd_grant = 2'd0;
wire soc_basesoc_sdram_choose_cmd_ce;
reg soc_basesoc_sdram_choose_req_want_reads = 1'd0;
reg soc_basesoc_sdram_choose_req_want_writes = 1'd0;
wire soc_basesoc_sdram_choose_req_want_cmds;
wire soc_basesoc_sdram_choose_req_want_activates;
wire soc_basesoc_sdram_choose_req_cmd_valid;
reg soc_basesoc_sdram_choose_req_cmd_ready = 1'd0;
wire [12:0] soc_basesoc_sdram_choose_req_cmd_payload_a;
wire [1:0] soc_basesoc_sdram_choose_req_cmd_payload_ba;
reg soc_basesoc_sdram_choose_req_cmd_payload_cas = 1'd0;
reg soc_basesoc_sdram_choose_req_cmd_payload_ras = 1'd0;
reg soc_basesoc_sdram_choose_req_cmd_payload_we = 1'd0;
wire soc_basesoc_sdram_choose_req_cmd_payload_is_cmd;
wire soc_basesoc_sdram_choose_req_cmd_payload_is_read;
wire soc_basesoc_sdram_choose_req_cmd_payload_is_write;
reg [3:0] soc_basesoc_sdram_choose_req_valids = 4'd0;
wire [3:0] soc_basesoc_sdram_choose_req_request;
reg [1:0] soc_basesoc_sdram_choose_req_grant = 2'd0;
wire soc_basesoc_sdram_choose_req_ce;
reg [12:0] soc_basesoc_sdram_nop_a = 13'd0;
reg [1:0] soc_basesoc_sdram_nop_ba = 2'd0;
reg [1:0] soc_basesoc_sdram_steerer_sel = 2'd0;
reg soc_basesoc_sdram_steerer0 = 1'd1;
reg soc_basesoc_sdram_steerer1 = 1'd1;
wire soc_basesoc_sdram_trrdcon_valid;
(* register_balancing = "no" *) reg soc_basesoc_sdram_trrdcon_ready = 1'd1;
wire soc_basesoc_sdram_tfawcon_valid;
(* register_balancing = "no" *) reg soc_basesoc_sdram_tfawcon_ready = 1'd1;
wire soc_basesoc_sdram_tccdcon_valid;
(* register_balancing = "no" *) reg soc_basesoc_sdram_tccdcon_ready = 1'd1;
reg soc_basesoc_sdram_tccdcon_count = 1'd0;
wire soc_basesoc_sdram_twtrcon_valid;
(* register_balancing = "no" *) reg soc_basesoc_sdram_twtrcon_ready = 1'd1;
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
reg [15:0] soc_basesoc_port_wdata_payload_data = 16'd0;
reg [1:0] soc_basesoc_port_wdata_payload_we = 2'd0;
wire soc_basesoc_port_rdata_valid;
reg soc_basesoc_port_rdata_ready = 1'd0;
wire [15:0] soc_basesoc_port_rdata_payload_data;
wire [29:0] soc_basesoc_adr;
reg [15:0] soc_basesoc_dat_w = 16'd0;
reg [15:0] soc_basesoc_dat_r = 16'd0;
wire [1:0] soc_basesoc_sel;
reg soc_basesoc_cyc = 1'd0;
reg soc_basesoc_stb = 1'd0;
reg soc_basesoc_ack = 1'd0;
reg soc_basesoc_we = 1'd0;
reg soc_basesoc_cache = 1'd0;
wire [10:0] soc_basesoc_cache_data_port_adr;
wire [31:0] soc_basesoc_cache_data_port_dat_r;
reg [3:0] soc_basesoc_cache_data_port_we = 4'd0;
reg [31:0] soc_basesoc_cache_data_port_dat_w = 32'd0;
reg soc_basesoc_cache_write_from_slave = 1'd0;
wire [10:0] soc_basesoc_cache_tag_port_adr;
wire [19:0] soc_basesoc_cache_tag_port_dat_r;
reg soc_basesoc_cache_tag_port_we = 1'd0;
wire [19:0] soc_basesoc_cache_tag_port_dat_w;
wire [18:0] soc_basesoc_cache_tag_do_tag;
wire soc_basesoc_cache_tag_do_dirty;
wire [18:0] soc_basesoc_cache_tag_di_tag;
reg soc_basesoc_cache_tag_di_dirty = 1'd0;
reg soc_basesoc_cache_word_clr = 1'd0;
reg soc_basesoc_cache_word_inc = 1'd0;
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
reg [1:0] vns_rbank = 2'd0;
reg [1:0] vns_wbank = 2'd0;
reg vns_locked0 = 1'd0;
reg vns_locked1 = 1'd0;
reg vns_locked2 = 1'd0;
reg vns_locked3 = 1'd0;
reg vns_new_master_wdata_ready = 1'd0;
reg vns_new_master_rdata_valid0 = 1'd0;
reg vns_new_master_rdata_valid1 = 1'd0;
reg vns_new_master_rdata_valid2 = 1'd0;
reg vns_new_master_rdata_valid3 = 1'd0;
reg vns_new_master_rdata_valid4 = 1'd0;
reg [2:0] vns_cache_state = 3'd0;
reg [2:0] vns_cache_next_state = 3'd0;
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
reg [16:0] vns_basesoc_count = 17'd65536;
wire [13:0] vns_basesoc_interface0_bank_bus_adr;
wire vns_basesoc_interface0_bank_bus_we;
wire [7:0] vns_basesoc_interface0_bank_bus_dat_w;
reg [7:0] vns_basesoc_interface0_bank_bus_dat_r = 8'd0;
wire vns_basesoc_csrbank0_leds_out0_re;
wire [7:0] vns_basesoc_csrbank0_leds_out0_r;
wire [7:0] vns_basesoc_csrbank0_leds_out0_w;
wire vns_basesoc_csrbank0_switches_in_re;
wire [3:0] vns_basesoc_csrbank0_switches_in_r;
wire [3:0] vns_basesoc_csrbank0_switches_in_w;
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
wire [13:0] vns_basesoc_sram_bus_adr;
wire vns_basesoc_sram_bus_we;
wire [7:0] vns_basesoc_sram_bus_dat_w;
reg [7:0] vns_basesoc_sram_bus_dat_r = 8'd0;
wire [2:0] vns_basesoc_adr;
wire [7:0] vns_basesoc_dat_r;
wire vns_basesoc_sel;
reg vns_basesoc_sel_r = 1'd0;
wire [13:0] vns_basesoc_interface2_bank_bus_adr;
wire vns_basesoc_interface2_bank_bus_we;
wire [7:0] vns_basesoc_interface2_bank_bus_dat_w;
reg [7:0] vns_basesoc_interface2_bank_bus_dat_r = 8'd0;
wire vns_basesoc_csrbank2_dna_id7_re;
wire vns_basesoc_csrbank2_dna_id7_r;
wire vns_basesoc_csrbank2_dna_id7_w;
wire vns_basesoc_csrbank2_dna_id6_re;
wire [7:0] vns_basesoc_csrbank2_dna_id6_r;
wire [7:0] vns_basesoc_csrbank2_dna_id6_w;
wire vns_basesoc_csrbank2_dna_id5_re;
wire [7:0] vns_basesoc_csrbank2_dna_id5_r;
wire [7:0] vns_basesoc_csrbank2_dna_id5_w;
wire vns_basesoc_csrbank2_dna_id4_re;
wire [7:0] vns_basesoc_csrbank2_dna_id4_r;
wire [7:0] vns_basesoc_csrbank2_dna_id4_w;
wire vns_basesoc_csrbank2_dna_id3_re;
wire [7:0] vns_basesoc_csrbank2_dna_id3_r;
wire [7:0] vns_basesoc_csrbank2_dna_id3_w;
wire vns_basesoc_csrbank2_dna_id2_re;
wire [7:0] vns_basesoc_csrbank2_dna_id2_r;
wire [7:0] vns_basesoc_csrbank2_dna_id2_w;
wire vns_basesoc_csrbank2_dna_id1_re;
wire [7:0] vns_basesoc_csrbank2_dna_id1_r;
wire [7:0] vns_basesoc_csrbank2_dna_id1_w;
wire vns_basesoc_csrbank2_dna_id0_re;
wire [7:0] vns_basesoc_csrbank2_dna_id0_r;
wire [7:0] vns_basesoc_csrbank2_dna_id0_w;
wire vns_basesoc_csrbank2_git_commit19_re;
wire [7:0] vns_basesoc_csrbank2_git_commit19_r;
wire [7:0] vns_basesoc_csrbank2_git_commit19_w;
wire vns_basesoc_csrbank2_git_commit18_re;
wire [7:0] vns_basesoc_csrbank2_git_commit18_r;
wire [7:0] vns_basesoc_csrbank2_git_commit18_w;
wire vns_basesoc_csrbank2_git_commit17_re;
wire [7:0] vns_basesoc_csrbank2_git_commit17_r;
wire [7:0] vns_basesoc_csrbank2_git_commit17_w;
wire vns_basesoc_csrbank2_git_commit16_re;
wire [7:0] vns_basesoc_csrbank2_git_commit16_r;
wire [7:0] vns_basesoc_csrbank2_git_commit16_w;
wire vns_basesoc_csrbank2_git_commit15_re;
wire [7:0] vns_basesoc_csrbank2_git_commit15_r;
wire [7:0] vns_basesoc_csrbank2_git_commit15_w;
wire vns_basesoc_csrbank2_git_commit14_re;
wire [7:0] vns_basesoc_csrbank2_git_commit14_r;
wire [7:0] vns_basesoc_csrbank2_git_commit14_w;
wire vns_basesoc_csrbank2_git_commit13_re;
wire [7:0] vns_basesoc_csrbank2_git_commit13_r;
wire [7:0] vns_basesoc_csrbank2_git_commit13_w;
wire vns_basesoc_csrbank2_git_commit12_re;
wire [7:0] vns_basesoc_csrbank2_git_commit12_r;
wire [7:0] vns_basesoc_csrbank2_git_commit12_w;
wire vns_basesoc_csrbank2_git_commit11_re;
wire [7:0] vns_basesoc_csrbank2_git_commit11_r;
wire [7:0] vns_basesoc_csrbank2_git_commit11_w;
wire vns_basesoc_csrbank2_git_commit10_re;
wire [7:0] vns_basesoc_csrbank2_git_commit10_r;
wire [7:0] vns_basesoc_csrbank2_git_commit10_w;
wire vns_basesoc_csrbank2_git_commit9_re;
wire [7:0] vns_basesoc_csrbank2_git_commit9_r;
wire [7:0] vns_basesoc_csrbank2_git_commit9_w;
wire vns_basesoc_csrbank2_git_commit8_re;
wire [7:0] vns_basesoc_csrbank2_git_commit8_r;
wire [7:0] vns_basesoc_csrbank2_git_commit8_w;
wire vns_basesoc_csrbank2_git_commit7_re;
wire [7:0] vns_basesoc_csrbank2_git_commit7_r;
wire [7:0] vns_basesoc_csrbank2_git_commit7_w;
wire vns_basesoc_csrbank2_git_commit6_re;
wire [7:0] vns_basesoc_csrbank2_git_commit6_r;
wire [7:0] vns_basesoc_csrbank2_git_commit6_w;
wire vns_basesoc_csrbank2_git_commit5_re;
wire [7:0] vns_basesoc_csrbank2_git_commit5_r;
wire [7:0] vns_basesoc_csrbank2_git_commit5_w;
wire vns_basesoc_csrbank2_git_commit4_re;
wire [7:0] vns_basesoc_csrbank2_git_commit4_r;
wire [7:0] vns_basesoc_csrbank2_git_commit4_w;
wire vns_basesoc_csrbank2_git_commit3_re;
wire [7:0] vns_basesoc_csrbank2_git_commit3_r;
wire [7:0] vns_basesoc_csrbank2_git_commit3_w;
wire vns_basesoc_csrbank2_git_commit2_re;
wire [7:0] vns_basesoc_csrbank2_git_commit2_r;
wire [7:0] vns_basesoc_csrbank2_git_commit2_w;
wire vns_basesoc_csrbank2_git_commit1_re;
wire [7:0] vns_basesoc_csrbank2_git_commit1_r;
wire [7:0] vns_basesoc_csrbank2_git_commit1_w;
wire vns_basesoc_csrbank2_git_commit0_re;
wire [7:0] vns_basesoc_csrbank2_git_commit0_r;
wire [7:0] vns_basesoc_csrbank2_git_commit0_w;
wire vns_basesoc_csrbank2_platform_platform7_re;
wire [7:0] vns_basesoc_csrbank2_platform_platform7_r;
wire [7:0] vns_basesoc_csrbank2_platform_platform7_w;
wire vns_basesoc_csrbank2_platform_platform6_re;
wire [7:0] vns_basesoc_csrbank2_platform_platform6_r;
wire [7:0] vns_basesoc_csrbank2_platform_platform6_w;
wire vns_basesoc_csrbank2_platform_platform5_re;
wire [7:0] vns_basesoc_csrbank2_platform_platform5_r;
wire [7:0] vns_basesoc_csrbank2_platform_platform5_w;
wire vns_basesoc_csrbank2_platform_platform4_re;
wire [7:0] vns_basesoc_csrbank2_platform_platform4_r;
wire [7:0] vns_basesoc_csrbank2_platform_platform4_w;
wire vns_basesoc_csrbank2_platform_platform3_re;
wire [7:0] vns_basesoc_csrbank2_platform_platform3_r;
wire [7:0] vns_basesoc_csrbank2_platform_platform3_w;
wire vns_basesoc_csrbank2_platform_platform2_re;
wire [7:0] vns_basesoc_csrbank2_platform_platform2_r;
wire [7:0] vns_basesoc_csrbank2_platform_platform2_w;
wire vns_basesoc_csrbank2_platform_platform1_re;
wire [7:0] vns_basesoc_csrbank2_platform_platform1_r;
wire [7:0] vns_basesoc_csrbank2_platform_platform1_w;
wire vns_basesoc_csrbank2_platform_platform0_re;
wire [7:0] vns_basesoc_csrbank2_platform_platform0_r;
wire [7:0] vns_basesoc_csrbank2_platform_platform0_w;
wire vns_basesoc_csrbank2_platform_target7_re;
wire [7:0] vns_basesoc_csrbank2_platform_target7_r;
wire [7:0] vns_basesoc_csrbank2_platform_target7_w;
wire vns_basesoc_csrbank2_platform_target6_re;
wire [7:0] vns_basesoc_csrbank2_platform_target6_r;
wire [7:0] vns_basesoc_csrbank2_platform_target6_w;
wire vns_basesoc_csrbank2_platform_target5_re;
wire [7:0] vns_basesoc_csrbank2_platform_target5_r;
wire [7:0] vns_basesoc_csrbank2_platform_target5_w;
wire vns_basesoc_csrbank2_platform_target4_re;
wire [7:0] vns_basesoc_csrbank2_platform_target4_r;
wire [7:0] vns_basesoc_csrbank2_platform_target4_w;
wire vns_basesoc_csrbank2_platform_target3_re;
wire [7:0] vns_basesoc_csrbank2_platform_target3_r;
wire [7:0] vns_basesoc_csrbank2_platform_target3_w;
wire vns_basesoc_csrbank2_platform_target2_re;
wire [7:0] vns_basesoc_csrbank2_platform_target2_r;
wire [7:0] vns_basesoc_csrbank2_platform_target2_w;
wire vns_basesoc_csrbank2_platform_target1_re;
wire [7:0] vns_basesoc_csrbank2_platform_target1_r;
wire [7:0] vns_basesoc_csrbank2_platform_target1_w;
wire vns_basesoc_csrbank2_platform_target0_re;
wire [7:0] vns_basesoc_csrbank2_platform_target0_r;
wire [7:0] vns_basesoc_csrbank2_platform_target0_w;
wire vns_basesoc_csrbank2_sel;
wire [13:0] vns_basesoc_interface3_bank_bus_adr;
wire vns_basesoc_interface3_bank_bus_we;
wire [7:0] vns_basesoc_interface3_bank_bus_dat_w;
reg [7:0] vns_basesoc_interface3_bank_bus_dat_r = 8'd0;
wire vns_basesoc_csrbank3_dfii_control0_re;
wire [3:0] vns_basesoc_csrbank3_dfii_control0_r;
wire [3:0] vns_basesoc_csrbank3_dfii_control0_w;
wire vns_basesoc_csrbank3_dfii_pi0_command0_re;
wire [5:0] vns_basesoc_csrbank3_dfii_pi0_command0_r;
wire [5:0] vns_basesoc_csrbank3_dfii_pi0_command0_w;
wire vns_basesoc_csrbank3_dfii_pi0_address1_re;
wire [4:0] vns_basesoc_csrbank3_dfii_pi0_address1_r;
wire [4:0] vns_basesoc_csrbank3_dfii_pi0_address1_w;
wire vns_basesoc_csrbank3_dfii_pi0_address0_re;
wire [7:0] vns_basesoc_csrbank3_dfii_pi0_address0_r;
wire [7:0] vns_basesoc_csrbank3_dfii_pi0_address0_w;
wire vns_basesoc_csrbank3_dfii_pi0_baddress0_re;
wire [1:0] vns_basesoc_csrbank3_dfii_pi0_baddress0_r;
wire [1:0] vns_basesoc_csrbank3_dfii_pi0_baddress0_w;
wire vns_basesoc_csrbank3_dfii_pi0_wrdata1_re;
wire [7:0] vns_basesoc_csrbank3_dfii_pi0_wrdata1_r;
wire [7:0] vns_basesoc_csrbank3_dfii_pi0_wrdata1_w;
wire vns_basesoc_csrbank3_dfii_pi0_wrdata0_re;
wire [7:0] vns_basesoc_csrbank3_dfii_pi0_wrdata0_r;
wire [7:0] vns_basesoc_csrbank3_dfii_pi0_wrdata0_w;
wire vns_basesoc_csrbank3_dfii_pi0_rddata1_re;
wire [7:0] vns_basesoc_csrbank3_dfii_pi0_rddata1_r;
wire [7:0] vns_basesoc_csrbank3_dfii_pi0_rddata1_w;
wire vns_basesoc_csrbank3_dfii_pi0_rddata0_re;
wire [7:0] vns_basesoc_csrbank3_dfii_pi0_rddata0_r;
wire [7:0] vns_basesoc_csrbank3_dfii_pi0_rddata0_w;
wire vns_basesoc_csrbank3_sel;
wire [13:0] vns_basesoc_interface4_bank_bus_adr;
wire vns_basesoc_interface4_bank_bus_we;
wire [7:0] vns_basesoc_interface4_bank_bus_dat_w;
reg [7:0] vns_basesoc_interface4_bank_bus_dat_r = 8'd0;
wire vns_basesoc_csrbank4_bitbang0_re;
wire [3:0] vns_basesoc_csrbank4_bitbang0_r;
wire [3:0] vns_basesoc_csrbank4_bitbang0_w;
wire vns_basesoc_csrbank4_miso_re;
wire vns_basesoc_csrbank4_miso_r;
wire vns_basesoc_csrbank4_miso_w;
wire vns_basesoc_csrbank4_bitbang_en0_re;
wire vns_basesoc_csrbank4_bitbang_en0_r;
wire vns_basesoc_csrbank4_bitbang_en0_w;
wire vns_basesoc_csrbank4_sel;
wire [13:0] vns_basesoc_interface5_bank_bus_adr;
wire vns_basesoc_interface5_bank_bus_we;
wire [7:0] vns_basesoc_interface5_bank_bus_dat_w;
reg [7:0] vns_basesoc_interface5_bank_bus_dat_r = 8'd0;
wire vns_basesoc_csrbank5_load3_re;
wire [7:0] vns_basesoc_csrbank5_load3_r;
wire [7:0] vns_basesoc_csrbank5_load3_w;
wire vns_basesoc_csrbank5_load2_re;
wire [7:0] vns_basesoc_csrbank5_load2_r;
wire [7:0] vns_basesoc_csrbank5_load2_w;
wire vns_basesoc_csrbank5_load1_re;
wire [7:0] vns_basesoc_csrbank5_load1_r;
wire [7:0] vns_basesoc_csrbank5_load1_w;
wire vns_basesoc_csrbank5_load0_re;
wire [7:0] vns_basesoc_csrbank5_load0_r;
wire [7:0] vns_basesoc_csrbank5_load0_w;
wire vns_basesoc_csrbank5_reload3_re;
wire [7:0] vns_basesoc_csrbank5_reload3_r;
wire [7:0] vns_basesoc_csrbank5_reload3_w;
wire vns_basesoc_csrbank5_reload2_re;
wire [7:0] vns_basesoc_csrbank5_reload2_r;
wire [7:0] vns_basesoc_csrbank5_reload2_w;
wire vns_basesoc_csrbank5_reload1_re;
wire [7:0] vns_basesoc_csrbank5_reload1_r;
wire [7:0] vns_basesoc_csrbank5_reload1_w;
wire vns_basesoc_csrbank5_reload0_re;
wire [7:0] vns_basesoc_csrbank5_reload0_r;
wire [7:0] vns_basesoc_csrbank5_reload0_w;
wire vns_basesoc_csrbank5_en0_re;
wire vns_basesoc_csrbank5_en0_r;
wire vns_basesoc_csrbank5_en0_w;
wire vns_basesoc_csrbank5_value3_re;
wire [7:0] vns_basesoc_csrbank5_value3_r;
wire [7:0] vns_basesoc_csrbank5_value3_w;
wire vns_basesoc_csrbank5_value2_re;
wire [7:0] vns_basesoc_csrbank5_value2_r;
wire [7:0] vns_basesoc_csrbank5_value2_w;
wire vns_basesoc_csrbank5_value1_re;
wire [7:0] vns_basesoc_csrbank5_value1_r;
wire [7:0] vns_basesoc_csrbank5_value1_w;
wire vns_basesoc_csrbank5_value0_re;
wire [7:0] vns_basesoc_csrbank5_value0_r;
wire [7:0] vns_basesoc_csrbank5_value0_w;
wire vns_basesoc_csrbank5_ev_enable0_re;
wire vns_basesoc_csrbank5_ev_enable0_r;
wire vns_basesoc_csrbank5_ev_enable0_w;
wire vns_basesoc_csrbank5_sel;
wire [13:0] vns_basesoc_interface6_bank_bus_adr;
wire vns_basesoc_interface6_bank_bus_we;
wire [7:0] vns_basesoc_interface6_bank_bus_dat_w;
reg [7:0] vns_basesoc_interface6_bank_bus_dat_r = 8'd0;
wire vns_basesoc_csrbank6_txfull_re;
wire vns_basesoc_csrbank6_txfull_r;
wire vns_basesoc_csrbank6_txfull_w;
wire vns_basesoc_csrbank6_rxempty_re;
wire vns_basesoc_csrbank6_rxempty_r;
wire vns_basesoc_csrbank6_rxempty_w;
wire vns_basesoc_csrbank6_ev_enable0_re;
wire [1:0] vns_basesoc_csrbank6_ev_enable0_r;
wire [1:0] vns_basesoc_csrbank6_ev_enable0_w;
wire vns_basesoc_csrbank6_sel;
wire [13:0] vns_basesoc_interface7_bank_bus_adr;
wire vns_basesoc_interface7_bank_bus_we;
wire [7:0] vns_basesoc_interface7_bank_bus_dat_w;
reg [7:0] vns_basesoc_interface7_bank_bus_dat_r = 8'd0;
wire vns_basesoc_csrbank7_tuning_word3_re;
wire [7:0] vns_basesoc_csrbank7_tuning_word3_r;
wire [7:0] vns_basesoc_csrbank7_tuning_word3_w;
wire vns_basesoc_csrbank7_tuning_word2_re;
wire [7:0] vns_basesoc_csrbank7_tuning_word2_r;
wire [7:0] vns_basesoc_csrbank7_tuning_word2_w;
wire vns_basesoc_csrbank7_tuning_word1_re;
wire [7:0] vns_basesoc_csrbank7_tuning_word1_r;
wire [7:0] vns_basesoc_csrbank7_tuning_word1_w;
wire vns_basesoc_csrbank7_tuning_word0_re;
wire [7:0] vns_basesoc_csrbank7_tuning_word0_r;
wire [7:0] vns_basesoc_csrbank7_tuning_word0_w;
wire vns_basesoc_csrbank7_sel;
reg vns_rhs_array_muxed0 = 1'd0;
reg [12:0] vns_rhs_array_muxed1 = 13'd0;
reg [1:0] vns_rhs_array_muxed2 = 2'd0;
reg vns_rhs_array_muxed3 = 1'd0;
reg vns_rhs_array_muxed4 = 1'd0;
reg vns_rhs_array_muxed5 = 1'd0;
reg vns_t_array_muxed0 = 1'd0;
reg vns_t_array_muxed1 = 1'd0;
reg vns_t_array_muxed2 = 1'd0;
reg vns_rhs_array_muxed6 = 1'd0;
reg [12:0] vns_rhs_array_muxed7 = 13'd0;
reg [1:0] vns_rhs_array_muxed8 = 2'd0;
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
reg [29:0] vns_rhs_array_muxed24 = 30'd0;
reg [31:0] vns_rhs_array_muxed25 = 32'd0;
reg [3:0] vns_rhs_array_muxed26 = 4'd0;
reg vns_rhs_array_muxed27 = 1'd0;
reg vns_rhs_array_muxed28 = 1'd0;
reg vns_rhs_array_muxed29 = 1'd0;
reg [2:0] vns_rhs_array_muxed30 = 3'd0;
reg [1:0] vns_rhs_array_muxed31 = 2'd0;
reg [29:0] vns_rhs_array_muxed32 = 30'd0;
reg [31:0] vns_rhs_array_muxed33 = 32'd0;
reg [3:0] vns_rhs_array_muxed34 = 4'd0;
reg vns_rhs_array_muxed35 = 1'd0;
reg vns_rhs_array_muxed36 = 1'd0;
reg vns_rhs_array_muxed37 = 1'd0;
reg [2:0] vns_rhs_array_muxed38 = 3'd0;
reg [1:0] vns_rhs_array_muxed39 = 2'd0;
reg [1:0] vns_array_muxed0 = 2'd0;
reg [12:0] vns_array_muxed1 = 13'd0;
reg vns_array_muxed2 = 1'd0;
reg vns_array_muxed3 = 1'd0;
reg vns_array_muxed4 = 1'd0;
reg vns_array_muxed5 = 1'd0;
reg vns_array_muxed6 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg vns_xilinxmultiregimpl0_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg vns_xilinxmultiregimpl0_regs1 = 1'd0;
wire vns_xilinxasyncresetsynchronizerimpl;
wire vns_xilinxasyncresetsynchronizerimpl_rst_meta;
(* register_balancing = "no", shreg_extract = "no" *) reg [3:0] vns_xilinxmultiregimpl1_regs0 = 4'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [3:0] vns_xilinxmultiregimpl1_regs1 = 4'd0;

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
assign soc_basesoc_sram_adr = soc_basesoc_sram_bus_adr[11:0];
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
assign soc_git_status = 159'd654516777491648312730067856677330909266892272604;
assign soc_platform_status = 63'd7883954021876130162;
assign soc_target_status = 63'd7089074166086762496;
assign user_led0 = soc_leds[0];
assign user_led1 = soc_leds[1];
assign user_led2 = soc_leds[2];
assign user_led3 = soc_leds[3];
assign user_led4 = soc_leds[4];
assign user_led5 = soc_leds[5];
assign user_led6 = soc_leds[6];
assign user_led7 = soc_leds[7];
always @(*) begin
	soc_switches <= 4'd0;
	soc_switches[0] <= (~user_sw0);
	soc_switches[1] <= (~user_sw1);
	soc_switches[2] <= (~user_sw2);
	soc_switches[3] <= (~user_sw3);
end
assign soc_leds = soc_leds_storage;
assign soc_spiflash_bus_dat_r = soc_spiflash_sr;
always @(*) begin
	spiflash2x_cs_n <= 1'd0;
	spiflash2x_clk <= 1'd0;
	soc_spiflash_status <= 1'd0;
	soc_spiflash_o <= 2'd0;
	soc_spiflash_oe <= 1'd0;
	if (soc_spiflash_bitbang_en_storage) begin
		spiflash2x_clk <= soc_spiflash_bitbang_storage[1];
		spiflash2x_cs_n <= soc_spiflash_bitbang_storage[2];
		if (soc_spiflash_bitbang_storage[3]) begin
			soc_spiflash_oe <= 1'd0;
		end else begin
			soc_spiflash_oe <= 1'd1;
		end
		if (soc_spiflash_bitbang_storage[1]) begin
			soc_spiflash_status <= soc_spiflash_i0[1];
		end
		soc_spiflash_o <= {{1{1'd1}}, soc_spiflash_bitbang_storage[0]};
	end else begin
		spiflash2x_clk <= soc_spiflash_clk;
		spiflash2x_cs_n <= soc_spiflash_cs_n;
		soc_spiflash_o <= soc_spiflash_sr[31:30];
		soc_spiflash_oe <= soc_spiflash_dq_oe;
	end
end
assign soc_ddrphy_dq_oe = soc_ddrphy_wrdata_en;
assign soc_ddrphy_dfi_p0_rddata_valid = soc_ddrphy_rddata_en[3];
assign soc_ddrphy_dfi_p0_address = soc_basesoc_sdram_master_p0_address;
assign soc_ddrphy_dfi_p0_bank = soc_basesoc_sdram_master_p0_bank;
assign soc_ddrphy_dfi_p0_cas_n = soc_basesoc_sdram_master_p0_cas_n;
assign soc_ddrphy_dfi_p0_cs_n = soc_basesoc_sdram_master_p0_cs_n;
assign soc_ddrphy_dfi_p0_ras_n = soc_basesoc_sdram_master_p0_ras_n;
assign soc_ddrphy_dfi_p0_we_n = soc_basesoc_sdram_master_p0_we_n;
assign soc_ddrphy_dfi_p0_cke = soc_basesoc_sdram_master_p0_cke;
assign soc_ddrphy_dfi_p0_odt = soc_basesoc_sdram_master_p0_odt;
assign soc_ddrphy_dfi_p0_reset_n = soc_basesoc_sdram_master_p0_reset_n;
assign soc_ddrphy_dfi_p0_act_n = soc_basesoc_sdram_master_p0_act_n;
assign soc_ddrphy_dfi_p0_wrdata = soc_basesoc_sdram_master_p0_wrdata;
assign soc_ddrphy_dfi_p0_wrdata_en = soc_basesoc_sdram_master_p0_wrdata_en;
assign soc_ddrphy_dfi_p0_wrdata_mask = soc_basesoc_sdram_master_p0_wrdata_mask;
assign soc_ddrphy_dfi_p0_rddata_en = soc_basesoc_sdram_master_p0_rddata_en;
assign soc_basesoc_sdram_master_p0_rddata = soc_ddrphy_dfi_p0_rddata;
assign soc_basesoc_sdram_master_p0_rddata_valid = soc_ddrphy_dfi_p0_rddata_valid;
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
always @(*) begin
	soc_basesoc_sdram_inti_p0_rddata <= 16'd0;
	soc_basesoc_sdram_inti_p0_rddata_valid <= 1'd0;
	soc_basesoc_sdram_slave_p0_rddata <= 16'd0;
	soc_basesoc_sdram_slave_p0_rddata_valid <= 1'd0;
	soc_basesoc_sdram_master_p0_address <= 13'd0;
	soc_basesoc_sdram_master_p0_bank <= 2'd0;
	soc_basesoc_sdram_master_p0_cas_n <= 1'd1;
	soc_basesoc_sdram_master_p0_cs_n <= 1'd1;
	soc_basesoc_sdram_master_p0_ras_n <= 1'd1;
	soc_basesoc_sdram_master_p0_we_n <= 1'd1;
	soc_basesoc_sdram_master_p0_cke <= 1'd0;
	soc_basesoc_sdram_master_p0_odt <= 1'd0;
	soc_basesoc_sdram_master_p0_reset_n <= 1'd0;
	soc_basesoc_sdram_master_p0_act_n <= 1'd1;
	soc_basesoc_sdram_master_p0_wrdata <= 16'd0;
	soc_basesoc_sdram_master_p0_wrdata_en <= 1'd0;
	soc_basesoc_sdram_master_p0_wrdata_mask <= 2'd0;
	soc_basesoc_sdram_master_p0_rddata_en <= 1'd0;
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
	end
end
assign soc_basesoc_sdram_inti_p0_cke = soc_basesoc_sdram_storage[1];
assign soc_basesoc_sdram_inti_p0_odt = soc_basesoc_sdram_storage[2];
assign soc_basesoc_sdram_inti_p0_reset_n = soc_basesoc_sdram_storage[3];
always @(*) begin
	soc_basesoc_sdram_inti_p0_cas_n <= 1'd1;
	soc_basesoc_sdram_inti_p0_cs_n <= 1'd1;
	soc_basesoc_sdram_inti_p0_ras_n <= 1'd1;
	soc_basesoc_sdram_inti_p0_we_n <= 1'd1;
	if (soc_basesoc_sdram_command_issue_re) begin
		soc_basesoc_sdram_inti_p0_cs_n <= {1{(~soc_basesoc_sdram_command_storage[0])}};
		soc_basesoc_sdram_inti_p0_we_n <= (~soc_basesoc_sdram_command_storage[1]);
		soc_basesoc_sdram_inti_p0_cas_n <= (~soc_basesoc_sdram_command_storage[2]);
		soc_basesoc_sdram_inti_p0_ras_n <= (~soc_basesoc_sdram_command_storage[3]);
	end else begin
		soc_basesoc_sdram_inti_p0_cs_n <= {1{1'd1}};
		soc_basesoc_sdram_inti_p0_we_n <= 1'd1;
		soc_basesoc_sdram_inti_p0_cas_n <= 1'd1;
		soc_basesoc_sdram_inti_p0_ras_n <= 1'd1;
	end
end
assign soc_basesoc_sdram_inti_p0_address = soc_basesoc_sdram_address_storage;
assign soc_basesoc_sdram_inti_p0_bank = soc_basesoc_sdram_baddress_storage;
assign soc_basesoc_sdram_inti_p0_wrdata_en = (soc_basesoc_sdram_command_issue_re & soc_basesoc_sdram_command_storage[4]);
assign soc_basesoc_sdram_inti_p0_rddata_en = (soc_basesoc_sdram_command_issue_re & soc_basesoc_sdram_command_storage[5]);
assign soc_basesoc_sdram_inti_p0_wrdata = soc_basesoc_sdram_wrdata_storage;
assign soc_basesoc_sdram_inti_p0_wrdata_mask = 1'd0;
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
assign soc_basesoc_sdram_timer_reset = 2'sd2;
assign soc_basesoc_sdram_timer_wait = (~soc_basesoc_sdram_timer_done);
assign soc_basesoc_sdram_timer_done = (soc_basesoc_sdram_timer_count == 1'd0);
always @(*) begin
	soc_basesoc_sdram_cmd_valid <= 1'd0;
	soc_basesoc_sdram_cmd_last <= 1'd0;
	vns_refresher_next_state <= 2'd0;
	soc_basesoc_sdram_generator_start <= 1'd0;
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
assign soc_basesoc_sdram_bankmachine0_row_hit = (soc_basesoc_sdram_bankmachine0_row == soc_basesoc_sdram_bankmachine0_cmd_buffer_source_payload_addr[21:9]);
assign soc_basesoc_sdram_bankmachine0_cmd_payload_ba = 1'd0;
always @(*) begin
	soc_basesoc_sdram_bankmachine0_cmd_payload_a <= 13'd0;
	if (soc_basesoc_sdram_bankmachine0_row_col_n_addr_sel) begin
		soc_basesoc_sdram_bankmachine0_cmd_payload_a <= soc_basesoc_sdram_bankmachine0_cmd_buffer_source_payload_addr[21:9];
	end else begin
		soc_basesoc_sdram_bankmachine0_cmd_payload_a <= ((soc_basesoc_sdram_bankmachine0_auto_precharge <<< 4'd10) | {soc_basesoc_sdram_bankmachine0_cmd_buffer_source_payload_addr[8:0], {0{1'd0}}});
	end
end
assign soc_basesoc_sdram_bankmachine0_twtpcon_valid = ((soc_basesoc_sdram_bankmachine0_cmd_valid & soc_basesoc_sdram_bankmachine0_cmd_ready) & soc_basesoc_sdram_bankmachine0_cmd_payload_is_write);
assign soc_basesoc_sdram_bankmachine0_trccon_valid = ((soc_basesoc_sdram_bankmachine0_cmd_valid & soc_basesoc_sdram_bankmachine0_cmd_ready) & soc_basesoc_sdram_bankmachine0_row_open);
assign soc_basesoc_sdram_bankmachine0_trascon_valid = ((soc_basesoc_sdram_bankmachine0_cmd_valid & soc_basesoc_sdram_bankmachine0_cmd_ready) & soc_basesoc_sdram_bankmachine0_row_open);
always @(*) begin
	soc_basesoc_sdram_bankmachine0_auto_precharge <= 1'd0;
	if ((soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_valid & soc_basesoc_sdram_bankmachine0_cmd_buffer_source_valid)) begin
		if ((soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_addr[21:9] != soc_basesoc_sdram_bankmachine0_cmd_buffer_source_payload_addr[21:9])) begin
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
	soc_basesoc_sdram_bankmachine0_cmd_payload_is_read <= 1'd0;
	soc_basesoc_sdram_bankmachine0_cmd_payload_is_write <= 1'd0;
	vns_bankmachine0_next_state <= 3'd0;
	soc_basesoc_sdram_bankmachine0_row_open <= 1'd0;
	soc_basesoc_sdram_bankmachine0_row_close <= 1'd0;
	soc_basesoc_sdram_bankmachine0_req_wdata_ready <= 1'd0;
	soc_basesoc_sdram_bankmachine0_req_rdata_valid <= 1'd0;
	soc_basesoc_sdram_bankmachine0_row_col_n_addr_sel <= 1'd0;
	soc_basesoc_sdram_bankmachine0_refresh_gnt <= 1'd0;
	soc_basesoc_sdram_bankmachine0_cmd_valid <= 1'd0;
	soc_basesoc_sdram_bankmachine0_cmd_payload_cas <= 1'd0;
	soc_basesoc_sdram_bankmachine0_cmd_payload_ras <= 1'd0;
	soc_basesoc_sdram_bankmachine0_cmd_payload_we <= 1'd0;
	soc_basesoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd0;
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
					vns_bankmachine0_next_state <= 3'd6;
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
			vns_bankmachine0_next_state <= 2'd3;
		end
		3'd6: begin
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
assign soc_basesoc_sdram_bankmachine1_row_hit = (soc_basesoc_sdram_bankmachine1_row == soc_basesoc_sdram_bankmachine1_cmd_buffer_source_payload_addr[21:9]);
assign soc_basesoc_sdram_bankmachine1_cmd_payload_ba = 1'd1;
always @(*) begin
	soc_basesoc_sdram_bankmachine1_cmd_payload_a <= 13'd0;
	if (soc_basesoc_sdram_bankmachine1_row_col_n_addr_sel) begin
		soc_basesoc_sdram_bankmachine1_cmd_payload_a <= soc_basesoc_sdram_bankmachine1_cmd_buffer_source_payload_addr[21:9];
	end else begin
		soc_basesoc_sdram_bankmachine1_cmd_payload_a <= ((soc_basesoc_sdram_bankmachine1_auto_precharge <<< 4'd10) | {soc_basesoc_sdram_bankmachine1_cmd_buffer_source_payload_addr[8:0], {0{1'd0}}});
	end
end
assign soc_basesoc_sdram_bankmachine1_twtpcon_valid = ((soc_basesoc_sdram_bankmachine1_cmd_valid & soc_basesoc_sdram_bankmachine1_cmd_ready) & soc_basesoc_sdram_bankmachine1_cmd_payload_is_write);
assign soc_basesoc_sdram_bankmachine1_trccon_valid = ((soc_basesoc_sdram_bankmachine1_cmd_valid & soc_basesoc_sdram_bankmachine1_cmd_ready) & soc_basesoc_sdram_bankmachine1_row_open);
assign soc_basesoc_sdram_bankmachine1_trascon_valid = ((soc_basesoc_sdram_bankmachine1_cmd_valid & soc_basesoc_sdram_bankmachine1_cmd_ready) & soc_basesoc_sdram_bankmachine1_row_open);
always @(*) begin
	soc_basesoc_sdram_bankmachine1_auto_precharge <= 1'd0;
	if ((soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_valid & soc_basesoc_sdram_bankmachine1_cmd_buffer_source_valid)) begin
		if ((soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_addr[21:9] != soc_basesoc_sdram_bankmachine1_cmd_buffer_source_payload_addr[21:9])) begin
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
	soc_basesoc_sdram_bankmachine1_cmd_valid <= 1'd0;
	soc_basesoc_sdram_bankmachine1_cmd_payload_cas <= 1'd0;
	soc_basesoc_sdram_bankmachine1_cmd_payload_ras <= 1'd0;
	soc_basesoc_sdram_bankmachine1_cmd_payload_we <= 1'd0;
	soc_basesoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd0;
	soc_basesoc_sdram_bankmachine1_cmd_payload_is_read <= 1'd0;
	soc_basesoc_sdram_bankmachine1_cmd_payload_is_write <= 1'd0;
	vns_bankmachine1_next_state <= 3'd0;
	soc_basesoc_sdram_bankmachine1_row_open <= 1'd0;
	soc_basesoc_sdram_bankmachine1_row_close <= 1'd0;
	soc_basesoc_sdram_bankmachine1_req_wdata_ready <= 1'd0;
	soc_basesoc_sdram_bankmachine1_req_rdata_valid <= 1'd0;
	soc_basesoc_sdram_bankmachine1_row_col_n_addr_sel <= 1'd0;
	soc_basesoc_sdram_bankmachine1_refresh_gnt <= 1'd0;
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
					vns_bankmachine1_next_state <= 3'd6;
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
			vns_bankmachine1_next_state <= 2'd3;
		end
		3'd6: begin
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
assign soc_basesoc_sdram_bankmachine2_row_hit = (soc_basesoc_sdram_bankmachine2_row == soc_basesoc_sdram_bankmachine2_cmd_buffer_source_payload_addr[21:9]);
assign soc_basesoc_sdram_bankmachine2_cmd_payload_ba = 2'd2;
always @(*) begin
	soc_basesoc_sdram_bankmachine2_cmd_payload_a <= 13'd0;
	if (soc_basesoc_sdram_bankmachine2_row_col_n_addr_sel) begin
		soc_basesoc_sdram_bankmachine2_cmd_payload_a <= soc_basesoc_sdram_bankmachine2_cmd_buffer_source_payload_addr[21:9];
	end else begin
		soc_basesoc_sdram_bankmachine2_cmd_payload_a <= ((soc_basesoc_sdram_bankmachine2_auto_precharge <<< 4'd10) | {soc_basesoc_sdram_bankmachine2_cmd_buffer_source_payload_addr[8:0], {0{1'd0}}});
	end
end
assign soc_basesoc_sdram_bankmachine2_twtpcon_valid = ((soc_basesoc_sdram_bankmachine2_cmd_valid & soc_basesoc_sdram_bankmachine2_cmd_ready) & soc_basesoc_sdram_bankmachine2_cmd_payload_is_write);
assign soc_basesoc_sdram_bankmachine2_trccon_valid = ((soc_basesoc_sdram_bankmachine2_cmd_valid & soc_basesoc_sdram_bankmachine2_cmd_ready) & soc_basesoc_sdram_bankmachine2_row_open);
assign soc_basesoc_sdram_bankmachine2_trascon_valid = ((soc_basesoc_sdram_bankmachine2_cmd_valid & soc_basesoc_sdram_bankmachine2_cmd_ready) & soc_basesoc_sdram_bankmachine2_row_open);
always @(*) begin
	soc_basesoc_sdram_bankmachine2_auto_precharge <= 1'd0;
	if ((soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_valid & soc_basesoc_sdram_bankmachine2_cmd_buffer_source_valid)) begin
		if ((soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_addr[21:9] != soc_basesoc_sdram_bankmachine2_cmd_buffer_source_payload_addr[21:9])) begin
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
	soc_basesoc_sdram_bankmachine2_row_open <= 1'd0;
	soc_basesoc_sdram_bankmachine2_row_close <= 1'd0;
	soc_basesoc_sdram_bankmachine2_req_wdata_ready <= 1'd0;
	soc_basesoc_sdram_bankmachine2_req_rdata_valid <= 1'd0;
	soc_basesoc_sdram_bankmachine2_row_col_n_addr_sel <= 1'd0;
	soc_basesoc_sdram_bankmachine2_refresh_gnt <= 1'd0;
	soc_basesoc_sdram_bankmachine2_cmd_valid <= 1'd0;
	soc_basesoc_sdram_bankmachine2_cmd_payload_cas <= 1'd0;
	soc_basesoc_sdram_bankmachine2_cmd_payload_ras <= 1'd0;
	soc_basesoc_sdram_bankmachine2_cmd_payload_we <= 1'd0;
	soc_basesoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd0;
	soc_basesoc_sdram_bankmachine2_cmd_payload_is_read <= 1'd0;
	soc_basesoc_sdram_bankmachine2_cmd_payload_is_write <= 1'd0;
	vns_bankmachine2_next_state <= 3'd0;
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
					vns_bankmachine2_next_state <= 3'd6;
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
			vns_bankmachine2_next_state <= 2'd3;
		end
		3'd6: begin
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
assign soc_basesoc_sdram_bankmachine3_row_hit = (soc_basesoc_sdram_bankmachine3_row == soc_basesoc_sdram_bankmachine3_cmd_buffer_source_payload_addr[21:9]);
assign soc_basesoc_sdram_bankmachine3_cmd_payload_ba = 2'd3;
always @(*) begin
	soc_basesoc_sdram_bankmachine3_cmd_payload_a <= 13'd0;
	if (soc_basesoc_sdram_bankmachine3_row_col_n_addr_sel) begin
		soc_basesoc_sdram_bankmachine3_cmd_payload_a <= soc_basesoc_sdram_bankmachine3_cmd_buffer_source_payload_addr[21:9];
	end else begin
		soc_basesoc_sdram_bankmachine3_cmd_payload_a <= ((soc_basesoc_sdram_bankmachine3_auto_precharge <<< 4'd10) | {soc_basesoc_sdram_bankmachine3_cmd_buffer_source_payload_addr[8:0], {0{1'd0}}});
	end
end
assign soc_basesoc_sdram_bankmachine3_twtpcon_valid = ((soc_basesoc_sdram_bankmachine3_cmd_valid & soc_basesoc_sdram_bankmachine3_cmd_ready) & soc_basesoc_sdram_bankmachine3_cmd_payload_is_write);
assign soc_basesoc_sdram_bankmachine3_trccon_valid = ((soc_basesoc_sdram_bankmachine3_cmd_valid & soc_basesoc_sdram_bankmachine3_cmd_ready) & soc_basesoc_sdram_bankmachine3_row_open);
assign soc_basesoc_sdram_bankmachine3_trascon_valid = ((soc_basesoc_sdram_bankmachine3_cmd_valid & soc_basesoc_sdram_bankmachine3_cmd_ready) & soc_basesoc_sdram_bankmachine3_row_open);
always @(*) begin
	soc_basesoc_sdram_bankmachine3_auto_precharge <= 1'd0;
	if ((soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_valid & soc_basesoc_sdram_bankmachine3_cmd_buffer_source_valid)) begin
		if ((soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_addr[21:9] != soc_basesoc_sdram_bankmachine3_cmd_buffer_source_payload_addr[21:9])) begin
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
	vns_bankmachine3_next_state <= 3'd0;
	soc_basesoc_sdram_bankmachine3_row_open <= 1'd0;
	soc_basesoc_sdram_bankmachine3_row_close <= 1'd0;
	soc_basesoc_sdram_bankmachine3_req_wdata_ready <= 1'd0;
	soc_basesoc_sdram_bankmachine3_req_rdata_valid <= 1'd0;
	soc_basesoc_sdram_bankmachine3_row_col_n_addr_sel <= 1'd0;
	soc_basesoc_sdram_bankmachine3_refresh_gnt <= 1'd0;
	soc_basesoc_sdram_bankmachine3_cmd_valid <= 1'd0;
	soc_basesoc_sdram_bankmachine3_cmd_payload_cas <= 1'd0;
	soc_basesoc_sdram_bankmachine3_cmd_payload_ras <= 1'd0;
	soc_basesoc_sdram_bankmachine3_cmd_payload_we <= 1'd0;
	soc_basesoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd0;
	soc_basesoc_sdram_bankmachine3_cmd_payload_is_read <= 1'd0;
	soc_basesoc_sdram_bankmachine3_cmd_payload_is_write <= 1'd0;
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
					vns_bankmachine3_next_state <= 3'd6;
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
			vns_bankmachine3_next_state <= 2'd3;
		end
		3'd6: begin
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
assign soc_basesoc_sdram_choose_cmd_want_cmds = 1'd1;
assign soc_basesoc_sdram_choose_req_want_cmds = 1'd1;
assign soc_basesoc_sdram_choose_req_want_activates = soc_basesoc_sdram_ras_allowed;
assign soc_basesoc_sdram_trrdcon_valid = ((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & ((soc_basesoc_sdram_choose_cmd_cmd_payload_ras & (~soc_basesoc_sdram_choose_cmd_cmd_payload_cas)) & (~soc_basesoc_sdram_choose_cmd_cmd_payload_we)));
assign soc_basesoc_sdram_tfawcon_valid = ((soc_basesoc_sdram_choose_cmd_cmd_valid & soc_basesoc_sdram_choose_cmd_cmd_ready) & ((soc_basesoc_sdram_choose_cmd_cmd_payload_ras & (~soc_basesoc_sdram_choose_cmd_cmd_payload_cas)) & (~soc_basesoc_sdram_choose_cmd_cmd_payload_we)));
assign soc_basesoc_sdram_ras_allowed = (soc_basesoc_sdram_trrdcon_ready & soc_basesoc_sdram_tfawcon_ready);
assign soc_basesoc_sdram_tccdcon_valid = ((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & (soc_basesoc_sdram_choose_req_cmd_payload_is_write | soc_basesoc_sdram_choose_req_cmd_payload_is_read));
assign soc_basesoc_sdram_cas_allowed = soc_basesoc_sdram_tccdcon_ready;
assign soc_basesoc_sdram_twtrcon_valid = ((soc_basesoc_sdram_choose_req_cmd_valid & soc_basesoc_sdram_choose_req_cmd_ready) & soc_basesoc_sdram_choose_req_cmd_payload_is_write);
assign soc_basesoc_sdram_read_available = ((((soc_basesoc_sdram_bankmachine0_cmd_valid & soc_basesoc_sdram_bankmachine0_cmd_payload_is_read) | (soc_basesoc_sdram_bankmachine1_cmd_valid & soc_basesoc_sdram_bankmachine1_cmd_payload_is_read)) | (soc_basesoc_sdram_bankmachine2_cmd_valid & soc_basesoc_sdram_bankmachine2_cmd_payload_is_read)) | (soc_basesoc_sdram_bankmachine3_cmd_valid & soc_basesoc_sdram_bankmachine3_cmd_payload_is_read));
assign soc_basesoc_sdram_write_available = ((((soc_basesoc_sdram_bankmachine0_cmd_valid & soc_basesoc_sdram_bankmachine0_cmd_payload_is_write) | (soc_basesoc_sdram_bankmachine1_cmd_valid & soc_basesoc_sdram_bankmachine1_cmd_payload_is_write)) | (soc_basesoc_sdram_bankmachine2_cmd_valid & soc_basesoc_sdram_bankmachine2_cmd_payload_is_write)) | (soc_basesoc_sdram_bankmachine3_cmd_valid & soc_basesoc_sdram_bankmachine3_cmd_payload_is_write));
assign soc_basesoc_sdram_max_time0 = (soc_basesoc_sdram_time0 == 1'd0);
assign soc_basesoc_sdram_max_time1 = (soc_basesoc_sdram_time1 == 1'd0);
assign soc_basesoc_sdram_bankmachine0_refresh_req = soc_basesoc_sdram_cmd_valid;
assign soc_basesoc_sdram_bankmachine1_refresh_req = soc_basesoc_sdram_cmd_valid;
assign soc_basesoc_sdram_bankmachine2_refresh_req = soc_basesoc_sdram_cmd_valid;
assign soc_basesoc_sdram_bankmachine3_refresh_req = soc_basesoc_sdram_cmd_valid;
assign soc_basesoc_sdram_go_to_refresh = (((soc_basesoc_sdram_bankmachine0_refresh_gnt & soc_basesoc_sdram_bankmachine1_refresh_gnt) & soc_basesoc_sdram_bankmachine2_refresh_gnt) & soc_basesoc_sdram_bankmachine3_refresh_gnt);
assign soc_basesoc_sdram_interface_rdata = {soc_basesoc_sdram_dfi_p0_rddata};
assign {soc_basesoc_sdram_dfi_p0_wrdata} = soc_basesoc_sdram_interface_wdata;
assign {soc_basesoc_sdram_dfi_p0_wrdata_mask} = (~soc_basesoc_sdram_interface_wdata_we);
always @(*) begin
	soc_basesoc_sdram_choose_cmd_valids <= 4'd0;
	soc_basesoc_sdram_choose_cmd_valids[0] <= (soc_basesoc_sdram_bankmachine0_cmd_valid & (((soc_basesoc_sdram_bankmachine0_cmd_payload_is_cmd & soc_basesoc_sdram_choose_cmd_want_cmds) & ((~((soc_basesoc_sdram_bankmachine0_cmd_payload_ras & (~soc_basesoc_sdram_bankmachine0_cmd_payload_cas)) & (~soc_basesoc_sdram_bankmachine0_cmd_payload_we))) | soc_basesoc_sdram_choose_cmd_want_activates)) | ((soc_basesoc_sdram_bankmachine0_cmd_payload_is_read == soc_basesoc_sdram_choose_cmd_want_reads) & (soc_basesoc_sdram_bankmachine0_cmd_payload_is_write == soc_basesoc_sdram_choose_cmd_want_writes))));
	soc_basesoc_sdram_choose_cmd_valids[1] <= (soc_basesoc_sdram_bankmachine1_cmd_valid & (((soc_basesoc_sdram_bankmachine1_cmd_payload_is_cmd & soc_basesoc_sdram_choose_cmd_want_cmds) & ((~((soc_basesoc_sdram_bankmachine1_cmd_payload_ras & (~soc_basesoc_sdram_bankmachine1_cmd_payload_cas)) & (~soc_basesoc_sdram_bankmachine1_cmd_payload_we))) | soc_basesoc_sdram_choose_cmd_want_activates)) | ((soc_basesoc_sdram_bankmachine1_cmd_payload_is_read == soc_basesoc_sdram_choose_cmd_want_reads) & (soc_basesoc_sdram_bankmachine1_cmd_payload_is_write == soc_basesoc_sdram_choose_cmd_want_writes))));
	soc_basesoc_sdram_choose_cmd_valids[2] <= (soc_basesoc_sdram_bankmachine2_cmd_valid & (((soc_basesoc_sdram_bankmachine2_cmd_payload_is_cmd & soc_basesoc_sdram_choose_cmd_want_cmds) & ((~((soc_basesoc_sdram_bankmachine2_cmd_payload_ras & (~soc_basesoc_sdram_bankmachine2_cmd_payload_cas)) & (~soc_basesoc_sdram_bankmachine2_cmd_payload_we))) | soc_basesoc_sdram_choose_cmd_want_activates)) | ((soc_basesoc_sdram_bankmachine2_cmd_payload_is_read == soc_basesoc_sdram_choose_cmd_want_reads) & (soc_basesoc_sdram_bankmachine2_cmd_payload_is_write == soc_basesoc_sdram_choose_cmd_want_writes))));
	soc_basesoc_sdram_choose_cmd_valids[3] <= (soc_basesoc_sdram_bankmachine3_cmd_valid & (((soc_basesoc_sdram_bankmachine3_cmd_payload_is_cmd & soc_basesoc_sdram_choose_cmd_want_cmds) & ((~((soc_basesoc_sdram_bankmachine3_cmd_payload_ras & (~soc_basesoc_sdram_bankmachine3_cmd_payload_cas)) & (~soc_basesoc_sdram_bankmachine3_cmd_payload_we))) | soc_basesoc_sdram_choose_cmd_want_activates)) | ((soc_basesoc_sdram_bankmachine3_cmd_payload_is_read == soc_basesoc_sdram_choose_cmd_want_reads) & (soc_basesoc_sdram_bankmachine3_cmd_payload_is_write == soc_basesoc_sdram_choose_cmd_want_writes))));
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
	soc_basesoc_sdram_choose_req_valids <= 4'd0;
	soc_basesoc_sdram_choose_req_valids[0] <= (soc_basesoc_sdram_bankmachine0_cmd_valid & (((soc_basesoc_sdram_bankmachine0_cmd_payload_is_cmd & soc_basesoc_sdram_choose_req_want_cmds) & ((~((soc_basesoc_sdram_bankmachine0_cmd_payload_ras & (~soc_basesoc_sdram_bankmachine0_cmd_payload_cas)) & (~soc_basesoc_sdram_bankmachine0_cmd_payload_we))) | soc_basesoc_sdram_choose_req_want_activates)) | ((soc_basesoc_sdram_bankmachine0_cmd_payload_is_read == soc_basesoc_sdram_choose_req_want_reads) & (soc_basesoc_sdram_bankmachine0_cmd_payload_is_write == soc_basesoc_sdram_choose_req_want_writes))));
	soc_basesoc_sdram_choose_req_valids[1] <= (soc_basesoc_sdram_bankmachine1_cmd_valid & (((soc_basesoc_sdram_bankmachine1_cmd_payload_is_cmd & soc_basesoc_sdram_choose_req_want_cmds) & ((~((soc_basesoc_sdram_bankmachine1_cmd_payload_ras & (~soc_basesoc_sdram_bankmachine1_cmd_payload_cas)) & (~soc_basesoc_sdram_bankmachine1_cmd_payload_we))) | soc_basesoc_sdram_choose_req_want_activates)) | ((soc_basesoc_sdram_bankmachine1_cmd_payload_is_read == soc_basesoc_sdram_choose_req_want_reads) & (soc_basesoc_sdram_bankmachine1_cmd_payload_is_write == soc_basesoc_sdram_choose_req_want_writes))));
	soc_basesoc_sdram_choose_req_valids[2] <= (soc_basesoc_sdram_bankmachine2_cmd_valid & (((soc_basesoc_sdram_bankmachine2_cmd_payload_is_cmd & soc_basesoc_sdram_choose_req_want_cmds) & ((~((soc_basesoc_sdram_bankmachine2_cmd_payload_ras & (~soc_basesoc_sdram_bankmachine2_cmd_payload_cas)) & (~soc_basesoc_sdram_bankmachine2_cmd_payload_we))) | soc_basesoc_sdram_choose_req_want_activates)) | ((soc_basesoc_sdram_bankmachine2_cmd_payload_is_read == soc_basesoc_sdram_choose_req_want_reads) & (soc_basesoc_sdram_bankmachine2_cmd_payload_is_write == soc_basesoc_sdram_choose_req_want_writes))));
	soc_basesoc_sdram_choose_req_valids[3] <= (soc_basesoc_sdram_bankmachine3_cmd_valid & (((soc_basesoc_sdram_bankmachine3_cmd_payload_is_cmd & soc_basesoc_sdram_choose_req_want_cmds) & ((~((soc_basesoc_sdram_bankmachine3_cmd_payload_ras & (~soc_basesoc_sdram_bankmachine3_cmd_payload_cas)) & (~soc_basesoc_sdram_bankmachine3_cmd_payload_we))) | soc_basesoc_sdram_choose_req_want_activates)) | ((soc_basesoc_sdram_bankmachine3_cmd_payload_is_read == soc_basesoc_sdram_choose_req_want_reads) & (soc_basesoc_sdram_bankmachine3_cmd_payload_is_write == soc_basesoc_sdram_choose_req_want_writes))));
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
assign soc_basesoc_sdram_choose_req_ce = (soc_basesoc_sdram_choose_req_cmd_ready | (~soc_basesoc_sdram_choose_req_cmd_valid));
assign soc_basesoc_sdram_dfi_p0_reset_n = 1'd1;
assign soc_basesoc_sdram_dfi_p0_cke = {1{soc_basesoc_sdram_steerer0}};
assign soc_basesoc_sdram_dfi_p0_odt = {1{soc_basesoc_sdram_steerer1}};
always @(*) begin
	soc_basesoc_sdram_en1 <= 1'd0;
	soc_basesoc_sdram_choose_req_want_reads <= 1'd0;
	soc_basesoc_sdram_cmd_ready <= 1'd0;
	soc_basesoc_sdram_choose_req_want_writes <= 1'd0;
	soc_basesoc_sdram_choose_req_cmd_ready <= 1'd0;
	soc_basesoc_sdram_choose_cmd_cmd_ready <= 1'd0;
	vns_multiplexer_next_state <= 3'd0;
	soc_basesoc_sdram_choose_cmd_want_activates <= 1'd0;
	soc_basesoc_sdram_steerer_sel <= 2'd0;
	soc_basesoc_sdram_en0 <= 1'd0;
	soc_basesoc_sdram_choose_cmd_want_activates <= soc_basesoc_sdram_ras_allowed;
	vns_multiplexer_next_state <= vns_multiplexer_state;
	case (vns_multiplexer_state)
		1'd1: begin
			soc_basesoc_sdram_en1 <= 1'd1;
			soc_basesoc_sdram_choose_req_want_writes <= 1'd1;
			soc_basesoc_sdram_choose_cmd_want_activates <= soc_basesoc_sdram_ras_allowed;
			soc_basesoc_sdram_choose_cmd_cmd_ready <= ((~((soc_basesoc_sdram_choose_cmd_cmd_payload_ras & (~soc_basesoc_sdram_choose_cmd_cmd_payload_cas)) & (~soc_basesoc_sdram_choose_cmd_cmd_payload_we))) | soc_basesoc_sdram_ras_allowed);
			soc_basesoc_sdram_choose_req_cmd_ready <= soc_basesoc_sdram_cas_allowed;
			soc_basesoc_sdram_steerer_sel <= 2'd2;
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
			soc_basesoc_sdram_steerer_sel <= 2'd3;
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
			vns_multiplexer_next_state <= 1'd1;
		end
		default: begin
			soc_basesoc_sdram_en0 <= 1'd1;
			soc_basesoc_sdram_choose_req_want_reads <= 1'd1;
			soc_basesoc_sdram_choose_cmd_want_activates <= soc_basesoc_sdram_ras_allowed;
			soc_basesoc_sdram_choose_cmd_cmd_ready <= ((~((soc_basesoc_sdram_choose_cmd_cmd_payload_ras & (~soc_basesoc_sdram_choose_cmd_cmd_payload_cas)) & (~soc_basesoc_sdram_choose_cmd_cmd_payload_we))) | soc_basesoc_sdram_ras_allowed);
			soc_basesoc_sdram_choose_req_cmd_ready <= soc_basesoc_sdram_cas_allowed;
			soc_basesoc_sdram_steerer_sel <= 2'd2;
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
assign vns_roundrobin0_request = {(((soc_basesoc_port_cmd_payload_addr[10:9] == 1'd0) & (~(((vns_locked0 | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))))) & soc_basesoc_port_cmd_valid)};
assign vns_roundrobin0_ce = ((~soc_basesoc_sdram_interface_bank0_valid) & (~soc_basesoc_sdram_interface_bank0_lock));
assign soc_basesoc_sdram_interface_bank0_addr = vns_rhs_array_muxed12;
assign soc_basesoc_sdram_interface_bank0_we = vns_rhs_array_muxed13;
assign soc_basesoc_sdram_interface_bank0_valid = vns_rhs_array_muxed14;
assign vns_roundrobin1_request = {(((soc_basesoc_port_cmd_payload_addr[10:9] == 1'd1) & (~(((vns_locked1 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))))) & soc_basesoc_port_cmd_valid)};
assign vns_roundrobin1_ce = ((~soc_basesoc_sdram_interface_bank1_valid) & (~soc_basesoc_sdram_interface_bank1_lock));
assign soc_basesoc_sdram_interface_bank1_addr = vns_rhs_array_muxed15;
assign soc_basesoc_sdram_interface_bank1_we = vns_rhs_array_muxed16;
assign soc_basesoc_sdram_interface_bank1_valid = vns_rhs_array_muxed17;
assign vns_roundrobin2_request = {(((soc_basesoc_port_cmd_payload_addr[10:9] == 2'd2) & (~(((vns_locked2 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))))) & soc_basesoc_port_cmd_valid)};
assign vns_roundrobin2_ce = ((~soc_basesoc_sdram_interface_bank2_valid) & (~soc_basesoc_sdram_interface_bank2_lock));
assign soc_basesoc_sdram_interface_bank2_addr = vns_rhs_array_muxed18;
assign soc_basesoc_sdram_interface_bank2_we = vns_rhs_array_muxed19;
assign soc_basesoc_sdram_interface_bank2_valid = vns_rhs_array_muxed20;
assign vns_roundrobin3_request = {(((soc_basesoc_port_cmd_payload_addr[10:9] == 2'd3) & (~(((vns_locked3 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))))) & soc_basesoc_port_cmd_valid)};
assign vns_roundrobin3_ce = ((~soc_basesoc_sdram_interface_bank3_valid) & (~soc_basesoc_sdram_interface_bank3_lock));
assign soc_basesoc_sdram_interface_bank3_addr = vns_rhs_array_muxed21;
assign soc_basesoc_sdram_interface_bank3_we = vns_rhs_array_muxed22;
assign soc_basesoc_sdram_interface_bank3_valid = vns_rhs_array_muxed23;
assign soc_basesoc_port_cmd_ready = ((((1'd0 | (((vns_roundrobin0_grant == 1'd0) & ((soc_basesoc_port_cmd_payload_addr[10:9] == 1'd0) & (~(((vns_locked0 | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0)))))) & soc_basesoc_sdram_interface_bank0_ready)) | (((vns_roundrobin1_grant == 1'd0) & ((soc_basesoc_port_cmd_payload_addr[10:9] == 1'd1) & (~(((vns_locked1 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0)))))) & soc_basesoc_sdram_interface_bank1_ready)) | (((vns_roundrobin2_grant == 1'd0) & ((soc_basesoc_port_cmd_payload_addr[10:9] == 2'd2) & (~(((vns_locked2 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0)))))) & soc_basesoc_sdram_interface_bank2_ready)) | (((vns_roundrobin3_grant == 1'd0) & ((soc_basesoc_port_cmd_payload_addr[10:9] == 2'd3) & (~(((vns_locked3 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0)))))) & soc_basesoc_sdram_interface_bank3_ready));
assign soc_basesoc_port_wdata_ready = vns_new_master_wdata_ready;
assign soc_basesoc_port_rdata_valid = vns_new_master_rdata_valid4;
always @(*) begin
	soc_basesoc_sdram_interface_wdata <= 16'd0;
	soc_basesoc_sdram_interface_wdata_we <= 2'd0;
	case ({vns_new_master_wdata_ready})
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
assign soc_basesoc_cache_data_port_adr = soc_basesoc_interface0_wb_sdram_adr[10:0];
always @(*) begin
	soc_basesoc_cache_data_port_dat_w <= 32'd0;
	soc_basesoc_cache_data_port_we <= 4'd0;
	if (soc_basesoc_cache_write_from_slave) begin
		soc_basesoc_cache_data_port_dat_w <= {({16{(soc_basesoc_cache == 1'd1)}} & soc_basesoc_dat_r), ({16{(soc_basesoc_cache == 1'd0)}} & soc_basesoc_dat_r)};
		soc_basesoc_cache_data_port_we <= {({2{(soc_basesoc_cache == 1'd1)}} & {2{1'd1}}), ({2{(soc_basesoc_cache == 1'd0)}} & {2{1'd1}})};
	end else begin
		soc_basesoc_cache_data_port_dat_w <= {1{soc_basesoc_interface0_wb_sdram_dat_w}};
		if ((((soc_basesoc_interface0_wb_sdram_cyc & soc_basesoc_interface0_wb_sdram_stb) & soc_basesoc_interface0_wb_sdram_we) & soc_basesoc_interface0_wb_sdram_ack)) begin
			soc_basesoc_cache_data_port_we <= soc_basesoc_interface0_wb_sdram_sel;
		end
	end
end
always @(*) begin
	soc_basesoc_dat_w <= 16'd0;
	case (soc_basesoc_cache)
		1'd0: begin
			soc_basesoc_dat_w <= soc_basesoc_cache_data_port_dat_r[15:0];
		end
		default: begin
			soc_basesoc_dat_w <= soc_basesoc_cache_data_port_dat_r[31:16];
		end
	endcase
end
assign soc_basesoc_sel = 2'd3;
assign soc_basesoc_interface0_wb_sdram_dat_r = soc_basesoc_cache_data_port_dat_r;
assign {soc_basesoc_cache_tag_do_dirty, soc_basesoc_cache_tag_do_tag} = soc_basesoc_cache_tag_port_dat_r;
assign soc_basesoc_cache_tag_port_dat_w = {soc_basesoc_cache_tag_di_dirty, soc_basesoc_cache_tag_di_tag};
assign soc_basesoc_cache_tag_port_adr = soc_basesoc_interface0_wb_sdram_adr[10:0];
assign soc_basesoc_cache_tag_di_tag = soc_basesoc_interface0_wb_sdram_adr[29:11];
assign soc_basesoc_adr = {soc_basesoc_cache_tag_do_tag, soc_basesoc_interface0_wb_sdram_adr[10:0], soc_basesoc_cache};
always @(*) begin
	soc_basesoc_cyc <= 1'd0;
	soc_basesoc_cache_tag_port_we <= 1'd0;
	soc_basesoc_stb <= 1'd0;
	soc_basesoc_we <= 1'd0;
	soc_basesoc_cache_tag_di_dirty <= 1'd0;
	soc_basesoc_cache_word_clr <= 1'd0;
	soc_basesoc_cache_word_inc <= 1'd0;
	vns_cache_next_state <= 3'd0;
	soc_basesoc_cache_write_from_slave <= 1'd0;
	soc_basesoc_interface0_wb_sdram_ack <= 1'd0;
	vns_cache_next_state <= vns_cache_state;
	case (vns_cache_state)
		1'd1: begin
			soc_basesoc_cache_word_clr <= 1'd1;
			if ((soc_basesoc_cache_tag_do_tag == soc_basesoc_interface0_wb_sdram_adr[29:11])) begin
				soc_basesoc_interface0_wb_sdram_ack <= 1'd1;
				if (soc_basesoc_interface0_wb_sdram_we) begin
					soc_basesoc_cache_tag_di_dirty <= 1'd1;
					soc_basesoc_cache_tag_port_we <= 1'd1;
				end
				vns_cache_next_state <= 1'd0;
			end else begin
				if (soc_basesoc_cache_tag_do_dirty) begin
					vns_cache_next_state <= 2'd2;
				end else begin
					vns_cache_next_state <= 2'd3;
				end
			end
		end
		2'd2: begin
			soc_basesoc_stb <= 1'd1;
			soc_basesoc_cyc <= 1'd1;
			soc_basesoc_we <= 1'd1;
			if (soc_basesoc_ack) begin
				soc_basesoc_cache_word_inc <= 1'd1;
				if ((soc_basesoc_cache == 1'd1)) begin
					vns_cache_next_state <= 2'd3;
				end
			end
		end
		2'd3: begin
			soc_basesoc_cache_tag_port_we <= 1'd1;
			soc_basesoc_cache_word_clr <= 1'd1;
			vns_cache_next_state <= 3'd4;
		end
		3'd4: begin
			soc_basesoc_stb <= 1'd1;
			soc_basesoc_cyc <= 1'd1;
			soc_basesoc_we <= 1'd0;
			if (soc_basesoc_ack) begin
				soc_basesoc_cache_write_from_slave <= 1'd1;
				soc_basesoc_cache_word_inc <= 1'd1;
				if ((soc_basesoc_cache == 1'd1)) begin
					vns_cache_next_state <= 1'd1;
				end else begin
					vns_cache_next_state <= 3'd4;
				end
			end
		end
		default: begin
			if ((soc_basesoc_interface0_wb_sdram_cyc & soc_basesoc_interface0_wb_sdram_stb)) begin
				vns_cache_next_state <= 1'd1;
			end
		end
	endcase
end
always @(*) begin
	soc_basesoc_ack <= 1'd0;
	soc_basesoc_port_cmd_valid <= 1'd0;
	soc_basesoc_port_cmd_payload_we <= 1'd0;
	soc_basesoc_port_cmd_payload_addr <= 24'd0;
	soc_basesoc_port_wdata_valid <= 1'd0;
	soc_basesoc_port_wdata_payload_data <= 16'd0;
	soc_basesoc_port_wdata_payload_we <= 2'd0;
	vns_litedramwishbone2native_next_state <= 2'd0;
	soc_basesoc_port_rdata_ready <= 1'd0;
	soc_basesoc_dat_r <= 16'd0;
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
assign soc_basesoc_interface0_wb_sdram_adr = vns_rhs_array_muxed24;
assign soc_basesoc_interface0_wb_sdram_dat_w = vns_rhs_array_muxed25;
assign soc_basesoc_interface0_wb_sdram_sel = vns_rhs_array_muxed26;
assign soc_basesoc_interface0_wb_sdram_cyc = vns_rhs_array_muxed27;
assign soc_basesoc_interface0_wb_sdram_stb = vns_rhs_array_muxed28;
assign soc_basesoc_interface0_wb_sdram_we = vns_rhs_array_muxed29;
assign soc_basesoc_interface0_wb_sdram_cti = vns_rhs_array_muxed30;
assign soc_basesoc_interface0_wb_sdram_bte = vns_rhs_array_muxed31;
assign soc_basesoc_interface1_wb_sdram_dat_r = soc_basesoc_interface0_wb_sdram_dat_r;
assign soc_basesoc_interface1_wb_sdram_ack = (soc_basesoc_interface0_wb_sdram_ack & (vns_wb_sdram_con_grant == 1'd0));
assign soc_basesoc_interface1_wb_sdram_err = (soc_basesoc_interface0_wb_sdram_err & (vns_wb_sdram_con_grant == 1'd0));
assign vns_wb_sdram_con_request = {soc_basesoc_interface1_wb_sdram_cyc};
assign vns_wb_sdram_con_grant = 1'd0;
assign vns_basesoc_shared_adr = vns_rhs_array_muxed32;
assign vns_basesoc_shared_dat_w = vns_rhs_array_muxed33;
assign vns_basesoc_shared_sel = vns_rhs_array_muxed34;
assign vns_basesoc_shared_cyc = vns_rhs_array_muxed35;
assign vns_basesoc_shared_stb = vns_rhs_array_muxed36;
assign vns_basesoc_shared_we = vns_rhs_array_muxed37;
assign vns_basesoc_shared_cti = vns_rhs_array_muxed38;
assign vns_basesoc_shared_bte = vns_rhs_array_muxed39;
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
	vns_basesoc_shared_ack <= 1'd0;
	vns_basesoc_shared_dat_r <= 32'd0;
	vns_basesoc_error <= 1'd0;
	vns_basesoc_shared_ack <= ((((soc_basesoc_rom_bus_ack | soc_basesoc_sram_bus_ack) | soc_basesoc_bus_wishbone_ack) | soc_spiflash_bus_ack) | soc_basesoc_interface1_wb_sdram_ack);
	vns_basesoc_shared_dat_r <= ((((({32{vns_basesoc_slave_sel_r[0]}} & soc_basesoc_rom_bus_dat_r) | ({32{vns_basesoc_slave_sel_r[1]}} & soc_basesoc_sram_bus_dat_r)) | ({32{vns_basesoc_slave_sel_r[2]}} & soc_basesoc_bus_wishbone_dat_r)) | ({32{vns_basesoc_slave_sel_r[3]}} & soc_spiflash_bus_dat_r)) | ({32{vns_basesoc_slave_sel_r[4]}} & soc_basesoc_interface1_wb_sdram_dat_r));
	if (vns_basesoc_done) begin
		vns_basesoc_shared_dat_r <= 32'd4294967295;
		vns_basesoc_shared_ack <= 1'd1;
		vns_basesoc_error <= 1'd1;
	end
end
assign vns_basesoc_done = (vns_basesoc_count == 1'd0);
assign vns_basesoc_csrbank0_sel = (vns_basesoc_interface0_bank_bus_adr[13:9] == 4'd11);
assign vns_basesoc_csrbank0_leds_out0_r = vns_basesoc_interface0_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank0_leds_out0_re = ((vns_basesoc_csrbank0_sel & vns_basesoc_interface0_bank_bus_we) & (vns_basesoc_interface0_bank_bus_adr[0] == 1'd0));
assign vns_basesoc_csrbank0_switches_in_r = vns_basesoc_interface0_bank_bus_dat_w[3:0];
assign vns_basesoc_csrbank0_switches_in_re = ((vns_basesoc_csrbank0_sel & vns_basesoc_interface0_bank_bus_we) & (vns_basesoc_interface0_bank_bus_adr[0] == 1'd1));
assign soc_leds_storage = soc_leds_storage_full[7:0];
assign vns_basesoc_csrbank0_leds_out0_w = soc_leds_storage_full[7:0];
assign vns_basesoc_csrbank0_switches_in_w = soc_switches_status[3:0];
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
assign vns_basesoc_sel = (vns_basesoc_sram_bus_adr[13:9] == 3'd4);
always @(*) begin
	vns_basesoc_sram_bus_dat_r <= 8'd0;
	if (vns_basesoc_sel_r) begin
		vns_basesoc_sram_bus_dat_r <= vns_basesoc_dat_r;
	end
end
assign vns_basesoc_adr = vns_basesoc_sram_bus_adr[2:0];
assign vns_basesoc_csrbank2_sel = (vns_basesoc_interface2_bank_bus_adr[13:9] == 4'd13);
assign vns_basesoc_csrbank2_dna_id7_r = vns_basesoc_interface2_bank_bus_dat_w[0];
assign vns_basesoc_csrbank2_dna_id7_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 1'd0));
assign vns_basesoc_csrbank2_dna_id6_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_dna_id6_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 1'd1));
assign vns_basesoc_csrbank2_dna_id5_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_dna_id5_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 2'd2));
assign vns_basesoc_csrbank2_dna_id4_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_dna_id4_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 2'd3));
assign vns_basesoc_csrbank2_dna_id3_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_dna_id3_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 3'd4));
assign vns_basesoc_csrbank2_dna_id2_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_dna_id2_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 3'd5));
assign vns_basesoc_csrbank2_dna_id1_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_dna_id1_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 3'd6));
assign vns_basesoc_csrbank2_dna_id0_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_dna_id0_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 3'd7));
assign vns_basesoc_csrbank2_git_commit19_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_git_commit19_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 4'd8));
assign vns_basesoc_csrbank2_git_commit18_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_git_commit18_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 4'd9));
assign vns_basesoc_csrbank2_git_commit17_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_git_commit17_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 4'd10));
assign vns_basesoc_csrbank2_git_commit16_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_git_commit16_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 4'd11));
assign vns_basesoc_csrbank2_git_commit15_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_git_commit15_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 4'd12));
assign vns_basesoc_csrbank2_git_commit14_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_git_commit14_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 4'd13));
assign vns_basesoc_csrbank2_git_commit13_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_git_commit13_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 4'd14));
assign vns_basesoc_csrbank2_git_commit12_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_git_commit12_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 4'd15));
assign vns_basesoc_csrbank2_git_commit11_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_git_commit11_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 5'd16));
assign vns_basesoc_csrbank2_git_commit10_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_git_commit10_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 5'd17));
assign vns_basesoc_csrbank2_git_commit9_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_git_commit9_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 5'd18));
assign vns_basesoc_csrbank2_git_commit8_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_git_commit8_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 5'd19));
assign vns_basesoc_csrbank2_git_commit7_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_git_commit7_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 5'd20));
assign vns_basesoc_csrbank2_git_commit6_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_git_commit6_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 5'd21));
assign vns_basesoc_csrbank2_git_commit5_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_git_commit5_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 5'd22));
assign vns_basesoc_csrbank2_git_commit4_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_git_commit4_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 5'd23));
assign vns_basesoc_csrbank2_git_commit3_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_git_commit3_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 5'd24));
assign vns_basesoc_csrbank2_git_commit2_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_git_commit2_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 5'd25));
assign vns_basesoc_csrbank2_git_commit1_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_git_commit1_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 5'd26));
assign vns_basesoc_csrbank2_git_commit0_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_git_commit0_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 5'd27));
assign vns_basesoc_csrbank2_platform_platform7_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_platform_platform7_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 5'd28));
assign vns_basesoc_csrbank2_platform_platform6_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_platform_platform6_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 5'd29));
assign vns_basesoc_csrbank2_platform_platform5_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_platform_platform5_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 5'd30));
assign vns_basesoc_csrbank2_platform_platform4_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_platform_platform4_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 5'd31));
assign vns_basesoc_csrbank2_platform_platform3_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_platform_platform3_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 6'd32));
assign vns_basesoc_csrbank2_platform_platform2_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_platform_platform2_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 6'd33));
assign vns_basesoc_csrbank2_platform_platform1_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_platform_platform1_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 6'd34));
assign vns_basesoc_csrbank2_platform_platform0_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_platform_platform0_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 6'd35));
assign vns_basesoc_csrbank2_platform_target7_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_platform_target7_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 6'd36));
assign vns_basesoc_csrbank2_platform_target6_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_platform_target6_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 6'd37));
assign vns_basesoc_csrbank2_platform_target5_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_platform_target5_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 6'd38));
assign vns_basesoc_csrbank2_platform_target4_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_platform_target4_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 6'd39));
assign vns_basesoc_csrbank2_platform_target3_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_platform_target3_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 6'd40));
assign vns_basesoc_csrbank2_platform_target2_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_platform_target2_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 6'd41));
assign vns_basesoc_csrbank2_platform_target1_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_platform_target1_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 6'd42));
assign vns_basesoc_csrbank2_platform_target0_r = vns_basesoc_interface2_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank2_platform_target0_re = ((vns_basesoc_csrbank2_sel & vns_basesoc_interface2_bank_bus_we) & (vns_basesoc_interface2_bank_bus_adr[5:0] == 6'd43));
assign vns_basesoc_csrbank2_dna_id7_w = soc_dna_status[56];
assign vns_basesoc_csrbank2_dna_id6_w = soc_dna_status[55:48];
assign vns_basesoc_csrbank2_dna_id5_w = soc_dna_status[47:40];
assign vns_basesoc_csrbank2_dna_id4_w = soc_dna_status[39:32];
assign vns_basesoc_csrbank2_dna_id3_w = soc_dna_status[31:24];
assign vns_basesoc_csrbank2_dna_id2_w = soc_dna_status[23:16];
assign vns_basesoc_csrbank2_dna_id1_w = soc_dna_status[15:8];
assign vns_basesoc_csrbank2_dna_id0_w = soc_dna_status[7:0];
assign vns_basesoc_csrbank2_git_commit19_w = soc_git_status[159:152];
assign vns_basesoc_csrbank2_git_commit18_w = soc_git_status[151:144];
assign vns_basesoc_csrbank2_git_commit17_w = soc_git_status[143:136];
assign vns_basesoc_csrbank2_git_commit16_w = soc_git_status[135:128];
assign vns_basesoc_csrbank2_git_commit15_w = soc_git_status[127:120];
assign vns_basesoc_csrbank2_git_commit14_w = soc_git_status[119:112];
assign vns_basesoc_csrbank2_git_commit13_w = soc_git_status[111:104];
assign vns_basesoc_csrbank2_git_commit12_w = soc_git_status[103:96];
assign vns_basesoc_csrbank2_git_commit11_w = soc_git_status[95:88];
assign vns_basesoc_csrbank2_git_commit10_w = soc_git_status[87:80];
assign vns_basesoc_csrbank2_git_commit9_w = soc_git_status[79:72];
assign vns_basesoc_csrbank2_git_commit8_w = soc_git_status[71:64];
assign vns_basesoc_csrbank2_git_commit7_w = soc_git_status[63:56];
assign vns_basesoc_csrbank2_git_commit6_w = soc_git_status[55:48];
assign vns_basesoc_csrbank2_git_commit5_w = soc_git_status[47:40];
assign vns_basesoc_csrbank2_git_commit4_w = soc_git_status[39:32];
assign vns_basesoc_csrbank2_git_commit3_w = soc_git_status[31:24];
assign vns_basesoc_csrbank2_git_commit2_w = soc_git_status[23:16];
assign vns_basesoc_csrbank2_git_commit1_w = soc_git_status[15:8];
assign vns_basesoc_csrbank2_git_commit0_w = soc_git_status[7:0];
assign vns_basesoc_csrbank2_platform_platform7_w = soc_platform_status[63:56];
assign vns_basesoc_csrbank2_platform_platform6_w = soc_platform_status[55:48];
assign vns_basesoc_csrbank2_platform_platform5_w = soc_platform_status[47:40];
assign vns_basesoc_csrbank2_platform_platform4_w = soc_platform_status[39:32];
assign vns_basesoc_csrbank2_platform_platform3_w = soc_platform_status[31:24];
assign vns_basesoc_csrbank2_platform_platform2_w = soc_platform_status[23:16];
assign vns_basesoc_csrbank2_platform_platform1_w = soc_platform_status[15:8];
assign vns_basesoc_csrbank2_platform_platform0_w = soc_platform_status[7:0];
assign vns_basesoc_csrbank2_platform_target7_w = soc_target_status[63:56];
assign vns_basesoc_csrbank2_platform_target6_w = soc_target_status[55:48];
assign vns_basesoc_csrbank2_platform_target5_w = soc_target_status[47:40];
assign vns_basesoc_csrbank2_platform_target4_w = soc_target_status[39:32];
assign vns_basesoc_csrbank2_platform_target3_w = soc_target_status[31:24];
assign vns_basesoc_csrbank2_platform_target2_w = soc_target_status[23:16];
assign vns_basesoc_csrbank2_platform_target1_w = soc_target_status[15:8];
assign vns_basesoc_csrbank2_platform_target0_w = soc_target_status[7:0];
assign vns_basesoc_csrbank3_sel = (vns_basesoc_interface3_bank_bus_adr[13:9] == 4'd8);
assign vns_basesoc_csrbank3_dfii_control0_r = vns_basesoc_interface3_bank_bus_dat_w[3:0];
assign vns_basesoc_csrbank3_dfii_control0_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[3:0] == 1'd0));
assign vns_basesoc_csrbank3_dfii_pi0_command0_r = vns_basesoc_interface3_bank_bus_dat_w[5:0];
assign vns_basesoc_csrbank3_dfii_pi0_command0_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[3:0] == 1'd1));
assign soc_basesoc_sdram_command_issue_r = vns_basesoc_interface3_bank_bus_dat_w[0];
assign soc_basesoc_sdram_command_issue_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[3:0] == 2'd2));
assign vns_basesoc_csrbank3_dfii_pi0_address1_r = vns_basesoc_interface3_bank_bus_dat_w[4:0];
assign vns_basesoc_csrbank3_dfii_pi0_address1_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[3:0] == 2'd3));
assign vns_basesoc_csrbank3_dfii_pi0_address0_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_dfii_pi0_address0_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[3:0] == 3'd4));
assign vns_basesoc_csrbank3_dfii_pi0_baddress0_r = vns_basesoc_interface3_bank_bus_dat_w[1:0];
assign vns_basesoc_csrbank3_dfii_pi0_baddress0_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[3:0] == 3'd5));
assign vns_basesoc_csrbank3_dfii_pi0_wrdata1_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_dfii_pi0_wrdata1_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[3:0] == 3'd6));
assign vns_basesoc_csrbank3_dfii_pi0_wrdata0_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_dfii_pi0_wrdata0_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[3:0] == 3'd7));
assign vns_basesoc_csrbank3_dfii_pi0_rddata1_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_dfii_pi0_rddata1_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[3:0] == 4'd8));
assign vns_basesoc_csrbank3_dfii_pi0_rddata0_r = vns_basesoc_interface3_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank3_dfii_pi0_rddata0_re = ((vns_basesoc_csrbank3_sel & vns_basesoc_interface3_bank_bus_we) & (vns_basesoc_interface3_bank_bus_adr[3:0] == 4'd9));
assign soc_basesoc_sdram_storage = soc_basesoc_sdram_storage_full[3:0];
assign vns_basesoc_csrbank3_dfii_control0_w = soc_basesoc_sdram_storage_full[3:0];
assign soc_basesoc_sdram_command_storage = soc_basesoc_sdram_command_storage_full[5:0];
assign vns_basesoc_csrbank3_dfii_pi0_command0_w = soc_basesoc_sdram_command_storage_full[5:0];
assign soc_basesoc_sdram_address_storage = soc_basesoc_sdram_address_storage_full[12:0];
assign vns_basesoc_csrbank3_dfii_pi0_address1_w = soc_basesoc_sdram_address_storage_full[12:8];
assign vns_basesoc_csrbank3_dfii_pi0_address0_w = soc_basesoc_sdram_address_storage_full[7:0];
assign soc_basesoc_sdram_baddress_storage = soc_basesoc_sdram_baddress_storage_full[1:0];
assign vns_basesoc_csrbank3_dfii_pi0_baddress0_w = soc_basesoc_sdram_baddress_storage_full[1:0];
assign soc_basesoc_sdram_wrdata_storage = soc_basesoc_sdram_wrdata_storage_full[15:0];
assign vns_basesoc_csrbank3_dfii_pi0_wrdata1_w = soc_basesoc_sdram_wrdata_storage_full[15:8];
assign vns_basesoc_csrbank3_dfii_pi0_wrdata0_w = soc_basesoc_sdram_wrdata_storage_full[7:0];
assign vns_basesoc_csrbank3_dfii_pi0_rddata1_w = soc_basesoc_sdram_status[15:8];
assign vns_basesoc_csrbank3_dfii_pi0_rddata0_w = soc_basesoc_sdram_status[7:0];
assign vns_basesoc_csrbank4_sel = (vns_basesoc_interface4_bank_bus_adr[13:9] == 4'd10);
assign vns_basesoc_csrbank4_bitbang0_r = vns_basesoc_interface4_bank_bus_dat_w[3:0];
assign vns_basesoc_csrbank4_bitbang0_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[1:0] == 1'd0));
assign vns_basesoc_csrbank4_miso_r = vns_basesoc_interface4_bank_bus_dat_w[0];
assign vns_basesoc_csrbank4_miso_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[1:0] == 1'd1));
assign vns_basesoc_csrbank4_bitbang_en0_r = vns_basesoc_interface4_bank_bus_dat_w[0];
assign vns_basesoc_csrbank4_bitbang_en0_re = ((vns_basesoc_csrbank4_sel & vns_basesoc_interface4_bank_bus_we) & (vns_basesoc_interface4_bank_bus_adr[1:0] == 2'd2));
assign soc_spiflash_bitbang_storage = soc_spiflash_bitbang_storage_full[3:0];
assign vns_basesoc_csrbank4_bitbang0_w = soc_spiflash_bitbang_storage_full[3:0];
assign vns_basesoc_csrbank4_miso_w = soc_spiflash_status;
assign soc_spiflash_bitbang_en_storage = soc_spiflash_bitbang_en_storage_full;
assign vns_basesoc_csrbank4_bitbang_en0_w = soc_spiflash_bitbang_en_storage_full;
assign vns_basesoc_csrbank5_sel = (vns_basesoc_interface5_bank_bus_adr[13:9] == 3'd5);
assign vns_basesoc_csrbank5_load3_r = vns_basesoc_interface5_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank5_load3_re = ((vns_basesoc_csrbank5_sel & vns_basesoc_interface5_bank_bus_we) & (vns_basesoc_interface5_bank_bus_adr[4:0] == 1'd0));
assign vns_basesoc_csrbank5_load2_r = vns_basesoc_interface5_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank5_load2_re = ((vns_basesoc_csrbank5_sel & vns_basesoc_interface5_bank_bus_we) & (vns_basesoc_interface5_bank_bus_adr[4:0] == 1'd1));
assign vns_basesoc_csrbank5_load1_r = vns_basesoc_interface5_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank5_load1_re = ((vns_basesoc_csrbank5_sel & vns_basesoc_interface5_bank_bus_we) & (vns_basesoc_interface5_bank_bus_adr[4:0] == 2'd2));
assign vns_basesoc_csrbank5_load0_r = vns_basesoc_interface5_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank5_load0_re = ((vns_basesoc_csrbank5_sel & vns_basesoc_interface5_bank_bus_we) & (vns_basesoc_interface5_bank_bus_adr[4:0] == 2'd3));
assign vns_basesoc_csrbank5_reload3_r = vns_basesoc_interface5_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank5_reload3_re = ((vns_basesoc_csrbank5_sel & vns_basesoc_interface5_bank_bus_we) & (vns_basesoc_interface5_bank_bus_adr[4:0] == 3'd4));
assign vns_basesoc_csrbank5_reload2_r = vns_basesoc_interface5_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank5_reload2_re = ((vns_basesoc_csrbank5_sel & vns_basesoc_interface5_bank_bus_we) & (vns_basesoc_interface5_bank_bus_adr[4:0] == 3'd5));
assign vns_basesoc_csrbank5_reload1_r = vns_basesoc_interface5_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank5_reload1_re = ((vns_basesoc_csrbank5_sel & vns_basesoc_interface5_bank_bus_we) & (vns_basesoc_interface5_bank_bus_adr[4:0] == 3'd6));
assign vns_basesoc_csrbank5_reload0_r = vns_basesoc_interface5_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank5_reload0_re = ((vns_basesoc_csrbank5_sel & vns_basesoc_interface5_bank_bus_we) & (vns_basesoc_interface5_bank_bus_adr[4:0] == 3'd7));
assign vns_basesoc_csrbank5_en0_r = vns_basesoc_interface5_bank_bus_dat_w[0];
assign vns_basesoc_csrbank5_en0_re = ((vns_basesoc_csrbank5_sel & vns_basesoc_interface5_bank_bus_we) & (vns_basesoc_interface5_bank_bus_adr[4:0] == 4'd8));
assign soc_basesoc_timer0_update_value_r = vns_basesoc_interface5_bank_bus_dat_w[0];
assign soc_basesoc_timer0_update_value_re = ((vns_basesoc_csrbank5_sel & vns_basesoc_interface5_bank_bus_we) & (vns_basesoc_interface5_bank_bus_adr[4:0] == 4'd9));
assign vns_basesoc_csrbank5_value3_r = vns_basesoc_interface5_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank5_value3_re = ((vns_basesoc_csrbank5_sel & vns_basesoc_interface5_bank_bus_we) & (vns_basesoc_interface5_bank_bus_adr[4:0] == 4'd10));
assign vns_basesoc_csrbank5_value2_r = vns_basesoc_interface5_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank5_value2_re = ((vns_basesoc_csrbank5_sel & vns_basesoc_interface5_bank_bus_we) & (vns_basesoc_interface5_bank_bus_adr[4:0] == 4'd11));
assign vns_basesoc_csrbank5_value1_r = vns_basesoc_interface5_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank5_value1_re = ((vns_basesoc_csrbank5_sel & vns_basesoc_interface5_bank_bus_we) & (vns_basesoc_interface5_bank_bus_adr[4:0] == 4'd12));
assign vns_basesoc_csrbank5_value0_r = vns_basesoc_interface5_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank5_value0_re = ((vns_basesoc_csrbank5_sel & vns_basesoc_interface5_bank_bus_we) & (vns_basesoc_interface5_bank_bus_adr[4:0] == 4'd13));
assign soc_basesoc_timer0_eventmanager_status_r = vns_basesoc_interface5_bank_bus_dat_w[0];
assign soc_basesoc_timer0_eventmanager_status_re = ((vns_basesoc_csrbank5_sel & vns_basesoc_interface5_bank_bus_we) & (vns_basesoc_interface5_bank_bus_adr[4:0] == 4'd14));
assign soc_basesoc_timer0_eventmanager_pending_r = vns_basesoc_interface5_bank_bus_dat_w[0];
assign soc_basesoc_timer0_eventmanager_pending_re = ((vns_basesoc_csrbank5_sel & vns_basesoc_interface5_bank_bus_we) & (vns_basesoc_interface5_bank_bus_adr[4:0] == 4'd15));
assign vns_basesoc_csrbank5_ev_enable0_r = vns_basesoc_interface5_bank_bus_dat_w[0];
assign vns_basesoc_csrbank5_ev_enable0_re = ((vns_basesoc_csrbank5_sel & vns_basesoc_interface5_bank_bus_we) & (vns_basesoc_interface5_bank_bus_adr[4:0] == 5'd16));
assign soc_basesoc_timer0_load_storage = soc_basesoc_timer0_load_storage_full[31:0];
assign vns_basesoc_csrbank5_load3_w = soc_basesoc_timer0_load_storage_full[31:24];
assign vns_basesoc_csrbank5_load2_w = soc_basesoc_timer0_load_storage_full[23:16];
assign vns_basesoc_csrbank5_load1_w = soc_basesoc_timer0_load_storage_full[15:8];
assign vns_basesoc_csrbank5_load0_w = soc_basesoc_timer0_load_storage_full[7:0];
assign soc_basesoc_timer0_reload_storage = soc_basesoc_timer0_reload_storage_full[31:0];
assign vns_basesoc_csrbank5_reload3_w = soc_basesoc_timer0_reload_storage_full[31:24];
assign vns_basesoc_csrbank5_reload2_w = soc_basesoc_timer0_reload_storage_full[23:16];
assign vns_basesoc_csrbank5_reload1_w = soc_basesoc_timer0_reload_storage_full[15:8];
assign vns_basesoc_csrbank5_reload0_w = soc_basesoc_timer0_reload_storage_full[7:0];
assign soc_basesoc_timer0_en_storage = soc_basesoc_timer0_en_storage_full;
assign vns_basesoc_csrbank5_en0_w = soc_basesoc_timer0_en_storage_full;
assign vns_basesoc_csrbank5_value3_w = soc_basesoc_timer0_value_status[31:24];
assign vns_basesoc_csrbank5_value2_w = soc_basesoc_timer0_value_status[23:16];
assign vns_basesoc_csrbank5_value1_w = soc_basesoc_timer0_value_status[15:8];
assign vns_basesoc_csrbank5_value0_w = soc_basesoc_timer0_value_status[7:0];
assign soc_basesoc_timer0_eventmanager_storage = soc_basesoc_timer0_eventmanager_storage_full;
assign vns_basesoc_csrbank5_ev_enable0_w = soc_basesoc_timer0_eventmanager_storage_full;
assign vns_basesoc_csrbank6_sel = (vns_basesoc_interface6_bank_bus_adr[13:9] == 2'd3);
assign soc_basesoc_uart_rxtx_r = vns_basesoc_interface6_bank_bus_dat_w[7:0];
assign soc_basesoc_uart_rxtx_re = ((vns_basesoc_csrbank6_sel & vns_basesoc_interface6_bank_bus_we) & (vns_basesoc_interface6_bank_bus_adr[2:0] == 1'd0));
assign vns_basesoc_csrbank6_txfull_r = vns_basesoc_interface6_bank_bus_dat_w[0];
assign vns_basesoc_csrbank6_txfull_re = ((vns_basesoc_csrbank6_sel & vns_basesoc_interface6_bank_bus_we) & (vns_basesoc_interface6_bank_bus_adr[2:0] == 1'd1));
assign vns_basesoc_csrbank6_rxempty_r = vns_basesoc_interface6_bank_bus_dat_w[0];
assign vns_basesoc_csrbank6_rxempty_re = ((vns_basesoc_csrbank6_sel & vns_basesoc_interface6_bank_bus_we) & (vns_basesoc_interface6_bank_bus_adr[2:0] == 2'd2));
assign soc_basesoc_uart_eventmanager_status_r = vns_basesoc_interface6_bank_bus_dat_w[1:0];
assign soc_basesoc_uart_eventmanager_status_re = ((vns_basesoc_csrbank6_sel & vns_basesoc_interface6_bank_bus_we) & (vns_basesoc_interface6_bank_bus_adr[2:0] == 2'd3));
assign soc_basesoc_uart_eventmanager_pending_r = vns_basesoc_interface6_bank_bus_dat_w[1:0];
assign soc_basesoc_uart_eventmanager_pending_re = ((vns_basesoc_csrbank6_sel & vns_basesoc_interface6_bank_bus_we) & (vns_basesoc_interface6_bank_bus_adr[2:0] == 3'd4));
assign vns_basesoc_csrbank6_ev_enable0_r = vns_basesoc_interface6_bank_bus_dat_w[1:0];
assign vns_basesoc_csrbank6_ev_enable0_re = ((vns_basesoc_csrbank6_sel & vns_basesoc_interface6_bank_bus_we) & (vns_basesoc_interface6_bank_bus_adr[2:0] == 3'd5));
assign vns_basesoc_csrbank6_txfull_w = soc_basesoc_uart_txfull_status;
assign vns_basesoc_csrbank6_rxempty_w = soc_basesoc_uart_rxempty_status;
assign soc_basesoc_uart_eventmanager_storage = soc_basesoc_uart_eventmanager_storage_full[1:0];
assign vns_basesoc_csrbank6_ev_enable0_w = soc_basesoc_uart_eventmanager_storage_full[1:0];
assign vns_basesoc_csrbank7_sel = (vns_basesoc_interface7_bank_bus_adr[13:9] == 2'd2);
assign vns_basesoc_csrbank7_tuning_word3_r = vns_basesoc_interface7_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank7_tuning_word3_re = ((vns_basesoc_csrbank7_sel & vns_basesoc_interface7_bank_bus_we) & (vns_basesoc_interface7_bank_bus_adr[1:0] == 1'd0));
assign vns_basesoc_csrbank7_tuning_word2_r = vns_basesoc_interface7_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank7_tuning_word2_re = ((vns_basesoc_csrbank7_sel & vns_basesoc_interface7_bank_bus_we) & (vns_basesoc_interface7_bank_bus_adr[1:0] == 1'd1));
assign vns_basesoc_csrbank7_tuning_word1_r = vns_basesoc_interface7_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank7_tuning_word1_re = ((vns_basesoc_csrbank7_sel & vns_basesoc_interface7_bank_bus_we) & (vns_basesoc_interface7_bank_bus_adr[1:0] == 2'd2));
assign vns_basesoc_csrbank7_tuning_word0_r = vns_basesoc_interface7_bank_bus_dat_w[7:0];
assign vns_basesoc_csrbank7_tuning_word0_re = ((vns_basesoc_csrbank7_sel & vns_basesoc_interface7_bank_bus_we) & (vns_basesoc_interface7_bank_bus_adr[1:0] == 2'd3));
assign soc_basesoc_uart_phy_storage = soc_basesoc_uart_phy_storage_full[31:0];
assign vns_basesoc_csrbank7_tuning_word3_w = soc_basesoc_uart_phy_storage_full[31:24];
assign vns_basesoc_csrbank7_tuning_word2_w = soc_basesoc_uart_phy_storage_full[23:16];
assign vns_basesoc_csrbank7_tuning_word1_w = soc_basesoc_uart_phy_storage_full[15:8];
assign vns_basesoc_csrbank7_tuning_word0_w = soc_basesoc_uart_phy_storage_full[7:0];
assign vns_basesoc_interface0_bank_bus_adr = soc_basesoc_interface_adr;
assign vns_basesoc_interface1_bank_bus_adr = soc_basesoc_interface_adr;
assign vns_basesoc_interface2_bank_bus_adr = soc_basesoc_interface_adr;
assign vns_basesoc_interface3_bank_bus_adr = soc_basesoc_interface_adr;
assign vns_basesoc_interface4_bank_bus_adr = soc_basesoc_interface_adr;
assign vns_basesoc_interface5_bank_bus_adr = soc_basesoc_interface_adr;
assign vns_basesoc_interface6_bank_bus_adr = soc_basesoc_interface_adr;
assign vns_basesoc_interface7_bank_bus_adr = soc_basesoc_interface_adr;
assign vns_basesoc_sram_bus_adr = soc_basesoc_interface_adr;
assign vns_basesoc_interface0_bank_bus_we = soc_basesoc_interface_we;
assign vns_basesoc_interface1_bank_bus_we = soc_basesoc_interface_we;
assign vns_basesoc_interface2_bank_bus_we = soc_basesoc_interface_we;
assign vns_basesoc_interface3_bank_bus_we = soc_basesoc_interface_we;
assign vns_basesoc_interface4_bank_bus_we = soc_basesoc_interface_we;
assign vns_basesoc_interface5_bank_bus_we = soc_basesoc_interface_we;
assign vns_basesoc_interface6_bank_bus_we = soc_basesoc_interface_we;
assign vns_basesoc_interface7_bank_bus_we = soc_basesoc_interface_we;
assign vns_basesoc_sram_bus_we = soc_basesoc_interface_we;
assign vns_basesoc_interface0_bank_bus_dat_w = soc_basesoc_interface_dat_w;
assign vns_basesoc_interface1_bank_bus_dat_w = soc_basesoc_interface_dat_w;
assign vns_basesoc_interface2_bank_bus_dat_w = soc_basesoc_interface_dat_w;
assign vns_basesoc_interface3_bank_bus_dat_w = soc_basesoc_interface_dat_w;
assign vns_basesoc_interface4_bank_bus_dat_w = soc_basesoc_interface_dat_w;
assign vns_basesoc_interface5_bank_bus_dat_w = soc_basesoc_interface_dat_w;
assign vns_basesoc_interface6_bank_bus_dat_w = soc_basesoc_interface_dat_w;
assign vns_basesoc_interface7_bank_bus_dat_w = soc_basesoc_interface_dat_w;
assign vns_basesoc_sram_bus_dat_w = soc_basesoc_interface_dat_w;
assign soc_basesoc_interface_dat_r = ((((((((vns_basesoc_interface0_bank_bus_dat_r | vns_basesoc_interface1_bank_bus_dat_r) | vns_basesoc_interface2_bank_bus_dat_r) | vns_basesoc_interface3_bank_bus_dat_r) | vns_basesoc_interface4_bank_bus_dat_r) | vns_basesoc_interface5_bank_bus_dat_r) | vns_basesoc_interface6_bank_bus_dat_r) | vns_basesoc_interface7_bank_bus_dat_r) | vns_basesoc_sram_bus_dat_r);
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
		default: begin
			vns_rhs_array_muxed0 <= soc_basesoc_sdram_choose_cmd_valids[3];
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed1 <= 13'd0;
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
		default: begin
			vns_rhs_array_muxed1 <= soc_basesoc_sdram_bankmachine3_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed2 <= 2'd0;
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
		default: begin
			vns_rhs_array_muxed2 <= soc_basesoc_sdram_bankmachine3_cmd_payload_ba;
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
		default: begin
			vns_rhs_array_muxed3 <= soc_basesoc_sdram_bankmachine3_cmd_payload_is_read;
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
		default: begin
			vns_rhs_array_muxed4 <= soc_basesoc_sdram_bankmachine3_cmd_payload_is_write;
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
		default: begin
			vns_rhs_array_muxed5 <= soc_basesoc_sdram_bankmachine3_cmd_payload_is_cmd;
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
		default: begin
			vns_t_array_muxed0 <= soc_basesoc_sdram_bankmachine3_cmd_payload_cas;
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
		default: begin
			vns_t_array_muxed1 <= soc_basesoc_sdram_bankmachine3_cmd_payload_ras;
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
		default: begin
			vns_t_array_muxed2 <= soc_basesoc_sdram_bankmachine3_cmd_payload_we;
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
		default: begin
			vns_rhs_array_muxed6 <= soc_basesoc_sdram_choose_req_valids[3];
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed7 <= 13'd0;
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
		default: begin
			vns_rhs_array_muxed7 <= soc_basesoc_sdram_bankmachine3_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed8 <= 2'd0;
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
		default: begin
			vns_rhs_array_muxed8 <= soc_basesoc_sdram_bankmachine3_cmd_payload_ba;
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
		default: begin
			vns_rhs_array_muxed9 <= soc_basesoc_sdram_bankmachine3_cmd_payload_is_read;
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
		default: begin
			vns_rhs_array_muxed10 <= soc_basesoc_sdram_bankmachine3_cmd_payload_is_write;
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
		default: begin
			vns_rhs_array_muxed11 <= soc_basesoc_sdram_bankmachine3_cmd_payload_is_cmd;
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
		default: begin
			vns_t_array_muxed3 <= soc_basesoc_sdram_bankmachine3_cmd_payload_cas;
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
		default: begin
			vns_t_array_muxed4 <= soc_basesoc_sdram_bankmachine3_cmd_payload_ras;
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
		default: begin
			vns_t_array_muxed5 <= soc_basesoc_sdram_bankmachine3_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed12 <= 22'd0;
	case (vns_roundrobin0_grant)
		default: begin
			vns_rhs_array_muxed12 <= {soc_basesoc_port_cmd_payload_addr[23:11], soc_basesoc_port_cmd_payload_addr[8:0]};
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
			vns_rhs_array_muxed14 <= (((soc_basesoc_port_cmd_payload_addr[10:9] == 1'd0) & (~(((vns_locked0 | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))))) & soc_basesoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed15 <= 22'd0;
	case (vns_roundrobin1_grant)
		default: begin
			vns_rhs_array_muxed15 <= {soc_basesoc_port_cmd_payload_addr[23:11], soc_basesoc_port_cmd_payload_addr[8:0]};
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
			vns_rhs_array_muxed17 <= (((soc_basesoc_port_cmd_payload_addr[10:9] == 1'd1) & (~(((vns_locked1 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))))) & soc_basesoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed18 <= 22'd0;
	case (vns_roundrobin2_grant)
		default: begin
			vns_rhs_array_muxed18 <= {soc_basesoc_port_cmd_payload_addr[23:11], soc_basesoc_port_cmd_payload_addr[8:0]};
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
			vns_rhs_array_muxed20 <= (((soc_basesoc_port_cmd_payload_addr[10:9] == 2'd2) & (~(((vns_locked2 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank3_lock & (vns_roundrobin3_grant == 1'd0))))) & soc_basesoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed21 <= 22'd0;
	case (vns_roundrobin3_grant)
		default: begin
			vns_rhs_array_muxed21 <= {soc_basesoc_port_cmd_payload_addr[23:11], soc_basesoc_port_cmd_payload_addr[8:0]};
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
			vns_rhs_array_muxed23 <= (((soc_basesoc_port_cmd_payload_addr[10:9] == 2'd3) & (~(((vns_locked3 | (soc_basesoc_sdram_interface_bank0_lock & (vns_roundrobin0_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank1_lock & (vns_roundrobin1_grant == 1'd0))) | (soc_basesoc_sdram_interface_bank2_lock & (vns_roundrobin2_grant == 1'd0))))) & soc_basesoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed24 <= 30'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed24 <= soc_basesoc_interface1_wb_sdram_adr;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed25 <= 32'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed25 <= soc_basesoc_interface1_wb_sdram_dat_w;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed26 <= 4'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed26 <= soc_basesoc_interface1_wb_sdram_sel;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed27 <= 1'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed27 <= soc_basesoc_interface1_wb_sdram_cyc;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed28 <= 1'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed28 <= soc_basesoc_interface1_wb_sdram_stb;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed29 <= 1'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed29 <= soc_basesoc_interface1_wb_sdram_we;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed30 <= 3'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed30 <= soc_basesoc_interface1_wb_sdram_cti;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed31 <= 2'd0;
	case (vns_wb_sdram_con_grant)
		default: begin
			vns_rhs_array_muxed31 <= soc_basesoc_interface1_wb_sdram_bte;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed32 <= 30'd0;
	case (vns_basesoc_grant)
		1'd0: begin
			vns_rhs_array_muxed32 <= soc_basesoc_lm32_ibus_adr;
		end
		default: begin
			vns_rhs_array_muxed32 <= soc_basesoc_lm32_dbus_adr;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed33 <= 32'd0;
	case (vns_basesoc_grant)
		1'd0: begin
			vns_rhs_array_muxed33 <= soc_basesoc_lm32_ibus_dat_w;
		end
		default: begin
			vns_rhs_array_muxed33 <= soc_basesoc_lm32_dbus_dat_w;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed34 <= 4'd0;
	case (vns_basesoc_grant)
		1'd0: begin
			vns_rhs_array_muxed34 <= soc_basesoc_lm32_ibus_sel;
		end
		default: begin
			vns_rhs_array_muxed34 <= soc_basesoc_lm32_dbus_sel;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed35 <= 1'd0;
	case (vns_basesoc_grant)
		1'd0: begin
			vns_rhs_array_muxed35 <= soc_basesoc_lm32_ibus_cyc;
		end
		default: begin
			vns_rhs_array_muxed35 <= soc_basesoc_lm32_dbus_cyc;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed36 <= 1'd0;
	case (vns_basesoc_grant)
		1'd0: begin
			vns_rhs_array_muxed36 <= soc_basesoc_lm32_ibus_stb;
		end
		default: begin
			vns_rhs_array_muxed36 <= soc_basesoc_lm32_dbus_stb;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed37 <= 1'd0;
	case (vns_basesoc_grant)
		1'd0: begin
			vns_rhs_array_muxed37 <= soc_basesoc_lm32_ibus_we;
		end
		default: begin
			vns_rhs_array_muxed37 <= soc_basesoc_lm32_dbus_we;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed38 <= 3'd0;
	case (vns_basesoc_grant)
		1'd0: begin
			vns_rhs_array_muxed38 <= soc_basesoc_lm32_ibus_cti;
		end
		default: begin
			vns_rhs_array_muxed38 <= soc_basesoc_lm32_dbus_cti;
		end
	endcase
end
always @(*) begin
	vns_rhs_array_muxed39 <= 2'd0;
	case (vns_basesoc_grant)
		1'd0: begin
			vns_rhs_array_muxed39 <= soc_basesoc_lm32_ibus_bte;
		end
		default: begin
			vns_rhs_array_muxed39 <= soc_basesoc_lm32_dbus_bte;
		end
	endcase
end
always @(*) begin
	vns_array_muxed0 <= 2'd0;
	case (soc_basesoc_sdram_steerer_sel)
		1'd0: begin
			vns_array_muxed0 <= soc_basesoc_sdram_nop_ba[1:0];
		end
		1'd1: begin
			vns_array_muxed0 <= soc_basesoc_sdram_choose_cmd_cmd_payload_ba[1:0];
		end
		2'd2: begin
			vns_array_muxed0 <= soc_basesoc_sdram_choose_req_cmd_payload_ba[1:0];
		end
		default: begin
			vns_array_muxed0 <= soc_basesoc_sdram_cmd_payload_ba[1:0];
		end
	endcase
end
always @(*) begin
	vns_array_muxed1 <= 13'd0;
	case (soc_basesoc_sdram_steerer_sel)
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
	case (soc_basesoc_sdram_steerer_sel)
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
	case (soc_basesoc_sdram_steerer_sel)
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
	case (soc_basesoc_sdram_steerer_sel)
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
	case (soc_basesoc_sdram_steerer_sel)
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
	case (soc_basesoc_sdram_steerer_sel)
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
assign soc_basesoc_uart_phy_rx = vns_xilinxmultiregimpl0_regs1;
assign vns_xilinxasyncresetsynchronizerimpl = (~soc_pll_lckd);
assign soc_switches_status = vns_xilinxmultiregimpl1_regs1;

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
	if ((soc_spiflash_i1 == 1'd1)) begin
		soc_spiflash_clk <= 1'd1;
		soc_spiflash_dqi <= soc_spiflash_i0;
	end
	if ((soc_spiflash_i1 == 2'd3)) begin
		soc_spiflash_i1 <= 1'd0;
		soc_spiflash_clk <= 1'd0;
		soc_spiflash_sr <= {soc_spiflash_sr[29:0], soc_spiflash_dqi};
	end else begin
		soc_spiflash_i1 <= (soc_spiflash_i1 + 1'd1);
	end
	if ((((soc_spiflash_bus_cyc & soc_spiflash_bus_stb) & (soc_spiflash_i1 == 2'd3)) & (soc_spiflash_counter == 1'd0))) begin
		soc_spiflash_dq_oe <= 1'd1;
		soc_spiflash_cs_n <= 1'd0;
		soc_spiflash_sr[31:16] <= 16'd61423;
	end
	if ((soc_spiflash_counter == 6'd32)) begin
		soc_spiflash_sr[31:8] <= {soc_spiflash_bus_adr, {2{1'd0}}};
	end
	if ((soc_spiflash_counter == 7'd80)) begin
		soc_spiflash_dq_oe <= 1'd0;
	end
	if ((soc_spiflash_counter == 8'd160)) begin
		soc_spiflash_bus_ack <= 1'd1;
		soc_spiflash_cs_n <= 1'd1;
	end
	if ((soc_spiflash_counter == 8'd161)) begin
		soc_spiflash_bus_ack <= 1'd0;
	end
	if ((soc_spiflash_counter == 8'd165)) begin
	end
	if ((soc_spiflash_counter == 8'd165)) begin
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
	sdram_a <= soc_ddrphy_dfi_p0_address;
	sdram_ba <= soc_ddrphy_dfi_p0_bank;
	sdram_cas_n <= soc_ddrphy_dfi_p0_cas_n;
	sdram_ras_n <= soc_ddrphy_dfi_p0_ras_n;
	sdram_we_n <= soc_ddrphy_dfi_p0_we_n;
	sdram_cke <= soc_ddrphy_dfi_p0_cke;
	sdram_cs_n <= soc_ddrphy_dfi_p0_cs_n;
	soc_ddrphy_dq_o <= soc_ddrphy_dfi_p0_wrdata;
	if (soc_ddrphy_dfi_p0_wrdata_en) begin
		sdram_dm <= soc_ddrphy_dfi_p0_wrdata_mask;
	end else begin
		sdram_dm <= 1'd0;
	end
	soc_ddrphy_dfi_p0_rddata <= soc_ddrphy_dq_in;
	soc_ddrphy_wrdata_en <= soc_ddrphy_dfi_p0_wrdata_en;
	soc_ddrphy_rddata_en <= {soc_ddrphy_rddata_en[2:0], soc_ddrphy_dfi_p0_rddata_en};
	if (soc_basesoc_sdram_inti_p0_rddata_valid) begin
		soc_basesoc_sdram_status <= soc_basesoc_sdram_inti_p0_rddata;
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
		soc_basesoc_sdram_timer_count <= 10'd625;
	end
	if (soc_basesoc_sdram_timer_reset) begin
		soc_basesoc_sdram_timer_count <= 10'd625;
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
	if ((soc_basesoc_sdram_generator_counter == 2'd3)) begin
		soc_basesoc_sdram_cmd_payload_cas <= 1'd1;
		soc_basesoc_sdram_cmd_payload_ras <= 1'd1;
	end
	if ((soc_basesoc_sdram_generator_counter == 4'd8)) begin
		soc_basesoc_sdram_generator_done <= 1'd1;
	end
	if ((soc_basesoc_sdram_generator_counter == 4'd8)) begin
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
			soc_basesoc_sdram_bankmachine0_row <= soc_basesoc_sdram_bankmachine0_cmd_buffer_source_payload_addr[21:9];
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
		soc_basesoc_sdram_bankmachine0_twtpcon_count <= 2'd3;
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
	vns_bankmachine0_state <= vns_bankmachine0_next_state;
	if (soc_basesoc_sdram_bankmachine1_row_close) begin
		soc_basesoc_sdram_bankmachine1_row_opened <= 1'd0;
	end else begin
		if (soc_basesoc_sdram_bankmachine1_row_open) begin
			soc_basesoc_sdram_bankmachine1_row_opened <= 1'd1;
			soc_basesoc_sdram_bankmachine1_row <= soc_basesoc_sdram_bankmachine1_cmd_buffer_source_payload_addr[21:9];
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
		soc_basesoc_sdram_bankmachine1_twtpcon_count <= 2'd3;
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
	vns_bankmachine1_state <= vns_bankmachine1_next_state;
	if (soc_basesoc_sdram_bankmachine2_row_close) begin
		soc_basesoc_sdram_bankmachine2_row_opened <= 1'd0;
	end else begin
		if (soc_basesoc_sdram_bankmachine2_row_open) begin
			soc_basesoc_sdram_bankmachine2_row_opened <= 1'd1;
			soc_basesoc_sdram_bankmachine2_row <= soc_basesoc_sdram_bankmachine2_cmd_buffer_source_payload_addr[21:9];
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
		soc_basesoc_sdram_bankmachine2_twtpcon_count <= 2'd3;
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
	vns_bankmachine2_state <= vns_bankmachine2_next_state;
	if (soc_basesoc_sdram_bankmachine3_row_close) begin
		soc_basesoc_sdram_bankmachine3_row_opened <= 1'd0;
	end else begin
		if (soc_basesoc_sdram_bankmachine3_row_open) begin
			soc_basesoc_sdram_bankmachine3_row_opened <= 1'd1;
			soc_basesoc_sdram_bankmachine3_row <= soc_basesoc_sdram_bankmachine3_cmd_buffer_source_payload_addr[21:9];
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
		soc_basesoc_sdram_bankmachine3_twtpcon_count <= 2'd3;
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
	vns_bankmachine3_state <= vns_bankmachine3_next_state;
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
						if (soc_basesoc_sdram_choose_cmd_request[0]) begin
							soc_basesoc_sdram_choose_cmd_grant <= 1'd0;
						end
					end
				end
			end
			2'd2: begin
				if (soc_basesoc_sdram_choose_cmd_request[3]) begin
					soc_basesoc_sdram_choose_cmd_grant <= 2'd3;
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
			2'd3: begin
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
						if (soc_basesoc_sdram_choose_req_request[0]) begin
							soc_basesoc_sdram_choose_req_grant <= 1'd0;
						end
					end
				end
			end
			2'd2: begin
				if (soc_basesoc_sdram_choose_req_request[3]) begin
					soc_basesoc_sdram_choose_req_grant <= 2'd3;
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
			2'd3: begin
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
	vns_new_master_wdata_ready <= ((((1'd0 | ((vns_roundrobin0_grant == 1'd0) & soc_basesoc_sdram_interface_bank0_wdata_ready)) | ((vns_roundrobin1_grant == 1'd0) & soc_basesoc_sdram_interface_bank1_wdata_ready)) | ((vns_roundrobin2_grant == 1'd0) & soc_basesoc_sdram_interface_bank2_wdata_ready)) | ((vns_roundrobin3_grant == 1'd0) & soc_basesoc_sdram_interface_bank3_wdata_ready));
	vns_new_master_rdata_valid0 <= ((((1'd0 | ((vns_roundrobin0_grant == 1'd0) & soc_basesoc_sdram_interface_bank0_rdata_valid)) | ((vns_roundrobin1_grant == 1'd0) & soc_basesoc_sdram_interface_bank1_rdata_valid)) | ((vns_roundrobin2_grant == 1'd0) & soc_basesoc_sdram_interface_bank2_rdata_valid)) | ((vns_roundrobin3_grant == 1'd0) & soc_basesoc_sdram_interface_bank3_rdata_valid));
	vns_new_master_rdata_valid1 <= vns_new_master_rdata_valid0;
	vns_new_master_rdata_valid2 <= vns_new_master_rdata_valid1;
	vns_new_master_rdata_valid3 <= vns_new_master_rdata_valid2;
	vns_new_master_rdata_valid4 <= vns_new_master_rdata_valid3;
	if (soc_basesoc_cache_word_clr) begin
		soc_basesoc_cache <= 1'd0;
	end else begin
		if (soc_basesoc_cache_word_inc) begin
			soc_basesoc_cache <= (soc_basesoc_cache + 1'd1);
		end
	end
	vns_cache_state <= vns_cache_next_state;
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
		vns_basesoc_count <= 17'd65536;
	end
	vns_basesoc_interface0_bank_bus_dat_r <= 1'd0;
	if (vns_basesoc_csrbank0_sel) begin
		case (vns_basesoc_interface0_bank_bus_adr[0])
			1'd0: begin
				vns_basesoc_interface0_bank_bus_dat_r <= vns_basesoc_csrbank0_leds_out0_w;
			end
			1'd1: begin
				vns_basesoc_interface0_bank_bus_dat_r <= vns_basesoc_csrbank0_switches_in_w;
			end
		endcase
	end
	if (vns_basesoc_csrbank0_leds_out0_re) begin
		soc_leds_storage_full[7:0] <= vns_basesoc_csrbank0_leds_out0_r;
	end
	soc_leds_re <= vns_basesoc_csrbank0_leds_out0_re;
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
	vns_basesoc_sel_r <= vns_basesoc_sel;
	vns_basesoc_interface2_bank_bus_dat_r <= 1'd0;
	if (vns_basesoc_csrbank2_sel) begin
		case (vns_basesoc_interface2_bank_bus_adr[5:0])
			1'd0: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_dna_id7_w;
			end
			1'd1: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_dna_id6_w;
			end
			2'd2: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_dna_id5_w;
			end
			2'd3: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_dna_id4_w;
			end
			3'd4: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_dna_id3_w;
			end
			3'd5: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_dna_id2_w;
			end
			3'd6: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_dna_id1_w;
			end
			3'd7: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_dna_id0_w;
			end
			4'd8: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_git_commit19_w;
			end
			4'd9: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_git_commit18_w;
			end
			4'd10: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_git_commit17_w;
			end
			4'd11: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_git_commit16_w;
			end
			4'd12: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_git_commit15_w;
			end
			4'd13: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_git_commit14_w;
			end
			4'd14: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_git_commit13_w;
			end
			4'd15: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_git_commit12_w;
			end
			5'd16: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_git_commit11_w;
			end
			5'd17: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_git_commit10_w;
			end
			5'd18: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_git_commit9_w;
			end
			5'd19: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_git_commit8_w;
			end
			5'd20: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_git_commit7_w;
			end
			5'd21: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_git_commit6_w;
			end
			5'd22: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_git_commit5_w;
			end
			5'd23: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_git_commit4_w;
			end
			5'd24: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_git_commit3_w;
			end
			5'd25: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_git_commit2_w;
			end
			5'd26: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_git_commit1_w;
			end
			5'd27: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_git_commit0_w;
			end
			5'd28: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_platform_platform7_w;
			end
			5'd29: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_platform_platform6_w;
			end
			5'd30: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_platform_platform5_w;
			end
			5'd31: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_platform_platform4_w;
			end
			6'd32: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_platform_platform3_w;
			end
			6'd33: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_platform_platform2_w;
			end
			6'd34: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_platform_platform1_w;
			end
			6'd35: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_platform_platform0_w;
			end
			6'd36: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_platform_target7_w;
			end
			6'd37: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_platform_target6_w;
			end
			6'd38: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_platform_target5_w;
			end
			6'd39: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_platform_target4_w;
			end
			6'd40: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_platform_target3_w;
			end
			6'd41: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_platform_target2_w;
			end
			6'd42: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_platform_target1_w;
			end
			6'd43: begin
				vns_basesoc_interface2_bank_bus_dat_r <= vns_basesoc_csrbank2_platform_target0_w;
			end
		endcase
	end
	vns_basesoc_interface3_bank_bus_dat_r <= 1'd0;
	if (vns_basesoc_csrbank3_sel) begin
		case (vns_basesoc_interface3_bank_bus_adr[3:0])
			1'd0: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_dfii_control0_w;
			end
			1'd1: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_dfii_pi0_command0_w;
			end
			2'd2: begin
				vns_basesoc_interface3_bank_bus_dat_r <= soc_basesoc_sdram_command_issue_w;
			end
			2'd3: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_dfii_pi0_address1_w;
			end
			3'd4: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_dfii_pi0_address0_w;
			end
			3'd5: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_dfii_pi0_baddress0_w;
			end
			3'd6: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_dfii_pi0_wrdata1_w;
			end
			3'd7: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_dfii_pi0_wrdata0_w;
			end
			4'd8: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_dfii_pi0_rddata1_w;
			end
			4'd9: begin
				vns_basesoc_interface3_bank_bus_dat_r <= vns_basesoc_csrbank3_dfii_pi0_rddata0_w;
			end
		endcase
	end
	if (vns_basesoc_csrbank3_dfii_control0_re) begin
		soc_basesoc_sdram_storage_full[3:0] <= vns_basesoc_csrbank3_dfii_control0_r;
	end
	soc_basesoc_sdram_re <= vns_basesoc_csrbank3_dfii_control0_re;
	if (vns_basesoc_csrbank3_dfii_pi0_command0_re) begin
		soc_basesoc_sdram_command_storage_full[5:0] <= vns_basesoc_csrbank3_dfii_pi0_command0_r;
	end
	soc_basesoc_sdram_command_re <= vns_basesoc_csrbank3_dfii_pi0_command0_re;
	if (vns_basesoc_csrbank3_dfii_pi0_address1_re) begin
		soc_basesoc_sdram_address_storage_full[12:8] <= vns_basesoc_csrbank3_dfii_pi0_address1_r;
	end
	if (vns_basesoc_csrbank3_dfii_pi0_address0_re) begin
		soc_basesoc_sdram_address_storage_full[7:0] <= vns_basesoc_csrbank3_dfii_pi0_address0_r;
	end
	soc_basesoc_sdram_address_re <= vns_basesoc_csrbank3_dfii_pi0_address0_re;
	if (vns_basesoc_csrbank3_dfii_pi0_baddress0_re) begin
		soc_basesoc_sdram_baddress_storage_full[1:0] <= vns_basesoc_csrbank3_dfii_pi0_baddress0_r;
	end
	soc_basesoc_sdram_baddress_re <= vns_basesoc_csrbank3_dfii_pi0_baddress0_re;
	if (vns_basesoc_csrbank3_dfii_pi0_wrdata1_re) begin
		soc_basesoc_sdram_wrdata_storage_full[15:8] <= vns_basesoc_csrbank3_dfii_pi0_wrdata1_r;
	end
	if (vns_basesoc_csrbank3_dfii_pi0_wrdata0_re) begin
		soc_basesoc_sdram_wrdata_storage_full[7:0] <= vns_basesoc_csrbank3_dfii_pi0_wrdata0_r;
	end
	soc_basesoc_sdram_wrdata_re <= vns_basesoc_csrbank3_dfii_pi0_wrdata0_re;
	vns_basesoc_interface4_bank_bus_dat_r <= 1'd0;
	if (vns_basesoc_csrbank4_sel) begin
		case (vns_basesoc_interface4_bank_bus_adr[1:0])
			1'd0: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_bitbang0_w;
			end
			1'd1: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_miso_w;
			end
			2'd2: begin
				vns_basesoc_interface4_bank_bus_dat_r <= vns_basesoc_csrbank4_bitbang_en0_w;
			end
		endcase
	end
	if (vns_basesoc_csrbank4_bitbang0_re) begin
		soc_spiflash_bitbang_storage_full[3:0] <= vns_basesoc_csrbank4_bitbang0_r;
	end
	soc_spiflash_bitbang_re <= vns_basesoc_csrbank4_bitbang0_re;
	if (vns_basesoc_csrbank4_bitbang_en0_re) begin
		soc_spiflash_bitbang_en_storage_full <= vns_basesoc_csrbank4_bitbang_en0_r;
	end
	soc_spiflash_bitbang_en_re <= vns_basesoc_csrbank4_bitbang_en0_re;
	vns_basesoc_interface5_bank_bus_dat_r <= 1'd0;
	if (vns_basesoc_csrbank5_sel) begin
		case (vns_basesoc_interface5_bank_bus_adr[4:0])
			1'd0: begin
				vns_basesoc_interface5_bank_bus_dat_r <= vns_basesoc_csrbank5_load3_w;
			end
			1'd1: begin
				vns_basesoc_interface5_bank_bus_dat_r <= vns_basesoc_csrbank5_load2_w;
			end
			2'd2: begin
				vns_basesoc_interface5_bank_bus_dat_r <= vns_basesoc_csrbank5_load1_w;
			end
			2'd3: begin
				vns_basesoc_interface5_bank_bus_dat_r <= vns_basesoc_csrbank5_load0_w;
			end
			3'd4: begin
				vns_basesoc_interface5_bank_bus_dat_r <= vns_basesoc_csrbank5_reload3_w;
			end
			3'd5: begin
				vns_basesoc_interface5_bank_bus_dat_r <= vns_basesoc_csrbank5_reload2_w;
			end
			3'd6: begin
				vns_basesoc_interface5_bank_bus_dat_r <= vns_basesoc_csrbank5_reload1_w;
			end
			3'd7: begin
				vns_basesoc_interface5_bank_bus_dat_r <= vns_basesoc_csrbank5_reload0_w;
			end
			4'd8: begin
				vns_basesoc_interface5_bank_bus_dat_r <= vns_basesoc_csrbank5_en0_w;
			end
			4'd9: begin
				vns_basesoc_interface5_bank_bus_dat_r <= soc_basesoc_timer0_update_value_w;
			end
			4'd10: begin
				vns_basesoc_interface5_bank_bus_dat_r <= vns_basesoc_csrbank5_value3_w;
			end
			4'd11: begin
				vns_basesoc_interface5_bank_bus_dat_r <= vns_basesoc_csrbank5_value2_w;
			end
			4'd12: begin
				vns_basesoc_interface5_bank_bus_dat_r <= vns_basesoc_csrbank5_value1_w;
			end
			4'd13: begin
				vns_basesoc_interface5_bank_bus_dat_r <= vns_basesoc_csrbank5_value0_w;
			end
			4'd14: begin
				vns_basesoc_interface5_bank_bus_dat_r <= soc_basesoc_timer0_eventmanager_status_w;
			end
			4'd15: begin
				vns_basesoc_interface5_bank_bus_dat_r <= soc_basesoc_timer0_eventmanager_pending_w;
			end
			5'd16: begin
				vns_basesoc_interface5_bank_bus_dat_r <= vns_basesoc_csrbank5_ev_enable0_w;
			end
		endcase
	end
	if (vns_basesoc_csrbank5_load3_re) begin
		soc_basesoc_timer0_load_storage_full[31:24] <= vns_basesoc_csrbank5_load3_r;
	end
	if (vns_basesoc_csrbank5_load2_re) begin
		soc_basesoc_timer0_load_storage_full[23:16] <= vns_basesoc_csrbank5_load2_r;
	end
	if (vns_basesoc_csrbank5_load1_re) begin
		soc_basesoc_timer0_load_storage_full[15:8] <= vns_basesoc_csrbank5_load1_r;
	end
	if (vns_basesoc_csrbank5_load0_re) begin
		soc_basesoc_timer0_load_storage_full[7:0] <= vns_basesoc_csrbank5_load0_r;
	end
	soc_basesoc_timer0_load_re <= vns_basesoc_csrbank5_load0_re;
	if (vns_basesoc_csrbank5_reload3_re) begin
		soc_basesoc_timer0_reload_storage_full[31:24] <= vns_basesoc_csrbank5_reload3_r;
	end
	if (vns_basesoc_csrbank5_reload2_re) begin
		soc_basesoc_timer0_reload_storage_full[23:16] <= vns_basesoc_csrbank5_reload2_r;
	end
	if (vns_basesoc_csrbank5_reload1_re) begin
		soc_basesoc_timer0_reload_storage_full[15:8] <= vns_basesoc_csrbank5_reload1_r;
	end
	if (vns_basesoc_csrbank5_reload0_re) begin
		soc_basesoc_timer0_reload_storage_full[7:0] <= vns_basesoc_csrbank5_reload0_r;
	end
	soc_basesoc_timer0_reload_re <= vns_basesoc_csrbank5_reload0_re;
	if (vns_basesoc_csrbank5_en0_re) begin
		soc_basesoc_timer0_en_storage_full <= vns_basesoc_csrbank5_en0_r;
	end
	soc_basesoc_timer0_en_re <= vns_basesoc_csrbank5_en0_re;
	if (vns_basesoc_csrbank5_ev_enable0_re) begin
		soc_basesoc_timer0_eventmanager_storage_full <= vns_basesoc_csrbank5_ev_enable0_r;
	end
	soc_basesoc_timer0_eventmanager_re <= vns_basesoc_csrbank5_ev_enable0_re;
	vns_basesoc_interface6_bank_bus_dat_r <= 1'd0;
	if (vns_basesoc_csrbank6_sel) begin
		case (vns_basesoc_interface6_bank_bus_adr[2:0])
			1'd0: begin
				vns_basesoc_interface6_bank_bus_dat_r <= soc_basesoc_uart_rxtx_w;
			end
			1'd1: begin
				vns_basesoc_interface6_bank_bus_dat_r <= vns_basesoc_csrbank6_txfull_w;
			end
			2'd2: begin
				vns_basesoc_interface6_bank_bus_dat_r <= vns_basesoc_csrbank6_rxempty_w;
			end
			2'd3: begin
				vns_basesoc_interface6_bank_bus_dat_r <= soc_basesoc_uart_eventmanager_status_w;
			end
			3'd4: begin
				vns_basesoc_interface6_bank_bus_dat_r <= soc_basesoc_uart_eventmanager_pending_w;
			end
			3'd5: begin
				vns_basesoc_interface6_bank_bus_dat_r <= vns_basesoc_csrbank6_ev_enable0_w;
			end
		endcase
	end
	if (vns_basesoc_csrbank6_ev_enable0_re) begin
		soc_basesoc_uart_eventmanager_storage_full[1:0] <= vns_basesoc_csrbank6_ev_enable0_r;
	end
	soc_basesoc_uart_eventmanager_re <= vns_basesoc_csrbank6_ev_enable0_re;
	vns_basesoc_interface7_bank_bus_dat_r <= 1'd0;
	if (vns_basesoc_csrbank7_sel) begin
		case (vns_basesoc_interface7_bank_bus_adr[1:0])
			1'd0: begin
				vns_basesoc_interface7_bank_bus_dat_r <= vns_basesoc_csrbank7_tuning_word3_w;
			end
			1'd1: begin
				vns_basesoc_interface7_bank_bus_dat_r <= vns_basesoc_csrbank7_tuning_word2_w;
			end
			2'd2: begin
				vns_basesoc_interface7_bank_bus_dat_r <= vns_basesoc_csrbank7_tuning_word1_w;
			end
			2'd3: begin
				vns_basesoc_interface7_bank_bus_dat_r <= vns_basesoc_csrbank7_tuning_word0_w;
			end
		endcase
	end
	if (vns_basesoc_csrbank7_tuning_word3_re) begin
		soc_basesoc_uart_phy_storage_full[31:24] <= vns_basesoc_csrbank7_tuning_word3_r;
	end
	if (vns_basesoc_csrbank7_tuning_word2_re) begin
		soc_basesoc_uart_phy_storage_full[23:16] <= vns_basesoc_csrbank7_tuning_word2_r;
	end
	if (vns_basesoc_csrbank7_tuning_word1_re) begin
		soc_basesoc_uart_phy_storage_full[15:8] <= vns_basesoc_csrbank7_tuning_word1_r;
	end
	if (vns_basesoc_csrbank7_tuning_word0_re) begin
		soc_basesoc_uart_phy_storage_full[7:0] <= vns_basesoc_csrbank7_tuning_word0_r;
	end
	soc_basesoc_uart_phy_re <= vns_basesoc_csrbank7_tuning_word0_re;
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
		soc_basesoc_uart_phy_storage_full <= 32'd6184752;
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
		soc_leds_storage_full <= 8'd0;
		soc_leds_re <= 1'd0;
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
		soc_spiflash_dqi <= 2'd0;
		soc_spiflash_counter <= 8'd0;
		sdram_a <= 13'd0;
		sdram_we_n <= 1'd0;
		sdram_ras_n <= 1'd0;
		sdram_cas_n <= 1'd0;
		sdram_cs_n <= 1'd0;
		sdram_cke <= 1'd0;
		sdram_ba <= 2'd0;
		sdram_dm <= 2'd0;
		soc_ddrphy_dfi_p0_rddata <= 16'd0;
		soc_ddrphy_dq_o <= 16'd0;
		soc_ddrphy_wrdata_en <= 1'd0;
		soc_ddrphy_rddata_en <= 4'd0;
		soc_basesoc_sdram_storage_full <= 4'd0;
		soc_basesoc_sdram_re <= 1'd0;
		soc_basesoc_sdram_command_storage_full <= 6'd0;
		soc_basesoc_sdram_command_re <= 1'd0;
		soc_basesoc_sdram_address_storage_full <= 13'd0;
		soc_basesoc_sdram_address_re <= 1'd0;
		soc_basesoc_sdram_baddress_storage_full <= 2'd0;
		soc_basesoc_sdram_baddress_re <= 1'd0;
		soc_basesoc_sdram_wrdata_storage_full <= 16'd0;
		soc_basesoc_sdram_wrdata_re <= 1'd0;
		soc_basesoc_sdram_status <= 16'd0;
		soc_basesoc_sdram_dfi_p0_address <= 13'd0;
		soc_basesoc_sdram_dfi_p0_bank <= 2'd0;
		soc_basesoc_sdram_dfi_p0_cas_n <= 1'd1;
		soc_basesoc_sdram_dfi_p0_cs_n <= 1'd1;
		soc_basesoc_sdram_dfi_p0_ras_n <= 1'd1;
		soc_basesoc_sdram_dfi_p0_we_n <= 1'd1;
		soc_basesoc_sdram_dfi_p0_wrdata_en <= 1'd0;
		soc_basesoc_sdram_dfi_p0_rddata_en <= 1'd0;
		soc_basesoc_sdram_cmd_payload_a <= 13'd0;
		soc_basesoc_sdram_cmd_payload_ba <= 2'd0;
		soc_basesoc_sdram_cmd_payload_cas <= 1'd0;
		soc_basesoc_sdram_cmd_payload_ras <= 1'd0;
		soc_basesoc_sdram_cmd_payload_we <= 1'd0;
		soc_basesoc_sdram_timer_count <= 10'd625;
		soc_basesoc_sdram_generator_done <= 1'd0;
		soc_basesoc_sdram_generator_counter <= 4'd0;
		soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_level <= 4'd0;
		soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_produce <= 3'd0;
		soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_consume <= 3'd0;
		soc_basesoc_sdram_bankmachine0_cmd_buffer_source_payload_we <= 1'd0;
		soc_basesoc_sdram_bankmachine0_cmd_buffer_source_payload_addr <= 22'd0;
		soc_basesoc_sdram_bankmachine0_cmd_buffer_valid_n <= 1'd0;
		soc_basesoc_sdram_bankmachine0_cmd_buffer_first_n <= 1'd0;
		soc_basesoc_sdram_bankmachine0_cmd_buffer_last_n <= 1'd0;
		soc_basesoc_sdram_bankmachine0_row <= 13'd0;
		soc_basesoc_sdram_bankmachine0_row_opened <= 1'd0;
		soc_basesoc_sdram_bankmachine0_twtpcon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine0_twtpcon_count <= 2'd0;
		soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_level <= 4'd0;
		soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_produce <= 3'd0;
		soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_consume <= 3'd0;
		soc_basesoc_sdram_bankmachine1_cmd_buffer_source_payload_we <= 1'd0;
		soc_basesoc_sdram_bankmachine1_cmd_buffer_source_payload_addr <= 22'd0;
		soc_basesoc_sdram_bankmachine1_cmd_buffer_valid_n <= 1'd0;
		soc_basesoc_sdram_bankmachine1_cmd_buffer_first_n <= 1'd0;
		soc_basesoc_sdram_bankmachine1_cmd_buffer_last_n <= 1'd0;
		soc_basesoc_sdram_bankmachine1_row <= 13'd0;
		soc_basesoc_sdram_bankmachine1_row_opened <= 1'd0;
		soc_basesoc_sdram_bankmachine1_twtpcon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine1_twtpcon_count <= 2'd0;
		soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_level <= 4'd0;
		soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_produce <= 3'd0;
		soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_consume <= 3'd0;
		soc_basesoc_sdram_bankmachine2_cmd_buffer_source_payload_we <= 1'd0;
		soc_basesoc_sdram_bankmachine2_cmd_buffer_source_payload_addr <= 22'd0;
		soc_basesoc_sdram_bankmachine2_cmd_buffer_valid_n <= 1'd0;
		soc_basesoc_sdram_bankmachine2_cmd_buffer_first_n <= 1'd0;
		soc_basesoc_sdram_bankmachine2_cmd_buffer_last_n <= 1'd0;
		soc_basesoc_sdram_bankmachine2_row <= 13'd0;
		soc_basesoc_sdram_bankmachine2_row_opened <= 1'd0;
		soc_basesoc_sdram_bankmachine2_twtpcon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine2_twtpcon_count <= 2'd0;
		soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_level <= 4'd0;
		soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_produce <= 3'd0;
		soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_consume <= 3'd0;
		soc_basesoc_sdram_bankmachine3_cmd_buffer_source_payload_we <= 1'd0;
		soc_basesoc_sdram_bankmachine3_cmd_buffer_source_payload_addr <= 22'd0;
		soc_basesoc_sdram_bankmachine3_cmd_buffer_valid_n <= 1'd0;
		soc_basesoc_sdram_bankmachine3_cmd_buffer_first_n <= 1'd0;
		soc_basesoc_sdram_bankmachine3_cmd_buffer_last_n <= 1'd0;
		soc_basesoc_sdram_bankmachine3_row <= 13'd0;
		soc_basesoc_sdram_bankmachine3_row_opened <= 1'd0;
		soc_basesoc_sdram_bankmachine3_twtpcon_ready <= 1'd1;
		soc_basesoc_sdram_bankmachine3_twtpcon_count <= 2'd0;
		soc_basesoc_sdram_choose_cmd_grant <= 2'd0;
		soc_basesoc_sdram_choose_req_grant <= 2'd0;
		soc_basesoc_sdram_tccdcon_ready <= 1'd1;
		soc_basesoc_sdram_tccdcon_count <= 1'd0;
		soc_basesoc_sdram_twtrcon_ready <= 1'd1;
		soc_basesoc_sdram_twtrcon_count <= 3'd0;
		soc_basesoc_sdram_time0 <= 5'd0;
		soc_basesoc_sdram_time1 <= 4'd0;
		soc_basesoc_cache <= 1'd0;
		vns_refresher_state <= 2'd0;
		vns_bankmachine0_state <= 3'd0;
		vns_bankmachine1_state <= 3'd0;
		vns_bankmachine2_state <= 3'd0;
		vns_bankmachine3_state <= 3'd0;
		vns_multiplexer_state <= 3'd0;
		vns_rbank <= 2'd0;
		vns_wbank <= 2'd0;
		vns_new_master_wdata_ready <= 1'd0;
		vns_new_master_rdata_valid0 <= 1'd0;
		vns_new_master_rdata_valid1 <= 1'd0;
		vns_new_master_rdata_valid2 <= 1'd0;
		vns_new_master_rdata_valid3 <= 1'd0;
		vns_new_master_rdata_valid4 <= 1'd0;
		vns_cache_state <= 3'd0;
		vns_litedramwishbone2native_state <= 2'd0;
		vns_basesoc_grant <= 1'd0;
		vns_basesoc_slave_sel_r <= 5'd0;
		vns_basesoc_count <= 17'd65536;
		vns_basesoc_interface0_bank_bus_dat_r <= 8'd0;
		vns_basesoc_interface1_bank_bus_dat_r <= 8'd0;
		vns_basesoc_sel_r <= 1'd0;
		vns_basesoc_interface2_bank_bus_dat_r <= 8'd0;
		vns_basesoc_interface3_bank_bus_dat_r <= 8'd0;
		vns_basesoc_interface4_bank_bus_dat_r <= 8'd0;
		vns_basesoc_interface5_bank_bus_dat_r <= 8'd0;
		vns_basesoc_interface6_bank_bus_dat_r <= 8'd0;
		vns_basesoc_interface7_bank_bus_dat_r <= 8'd0;
	end
	vns_xilinxmultiregimpl0_regs0 <= serial_rx;
	vns_xilinxmultiregimpl0_regs1 <= vns_xilinxmultiregimpl0_regs0;
	vns_xilinxmultiregimpl1_regs0 <= soc_switches;
	vns_xilinxmultiregimpl1_regs1 <= vns_xilinxmultiregimpl1_regs0;
end

always @(posedge sys_ps_clk) begin
	soc_ddrphy_dq_in <= soc_ddrphy_dq_i;
	if (sys_ps_rst) begin
		soc_ddrphy_dq_in <= 16'd0;
	end
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

reg [31:0] mem_1[0:4095];
reg [11:0] memadr_1;
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

IBUFG IBUFG(
	.I(clk32),
	.O(soc_clk32a)
);

BUFIO2 #(
	.DIVIDE(1'd1),
	.DIVIDE_BYPASS("TRUE"),
	.I_INVERT("FALSE")
) BUFIO2 (
	.I(soc_clk32a),
	.DIVCLK(soc_clk32b)
);

PLL_ADV #(
	.BANDWIDTH("OPTIMIZED"),
	.CLKFBOUT_MULT(5'd20),
	.CLKFBOUT_PHASE(0.0),
	.CLKIN1_PERIOD(31.25),
	.CLKIN2_PERIOD(0.0),
	.CLKOUT0_DIVIDE(4'd8),
	.CLKOUT0_DUTY_CYCLE(0.5),
	.CLKOUT0_PHASE(0.0),
	.CLKOUT1_DIVIDE(4'd8),
	.CLKOUT1_DUTY_CYCLE(0.5),
	.CLKOUT1_PHASE(0.0),
	.CLKOUT2_DIVIDE(4'd8),
	.CLKOUT2_DUTY_CYCLE(0.5),
	.CLKOUT2_PHASE(0.0),
	.CLKOUT3_DIVIDE(4'd8),
	.CLKOUT3_DUTY_CYCLE(0.5),
	.CLKOUT3_PHASE(0.0),
	.CLKOUT4_DIVIDE(4'd8),
	.CLKOUT4_DUTY_CYCLE(0.5),
	.CLKOUT4_PHASE(0.0),
	.CLKOUT5_DIVIDE(4'd8),
	.CLKOUT5_DUTY_CYCLE(0.5),
	.CLKOUT5_PHASE(270.0),
	.CLK_FEEDBACK("CLKFBOUT"),
	.COMPENSATION("INTERNAL"),
	.DIVCLK_DIVIDE(1'd1),
	.REF_JITTER(0.01),
	.SIM_DEVICE("SPARTAN6")
) PLL_ADV (
	.CLKFBIN(soc_pll_fb),
	.CLKIN1(soc_clk32b),
	.CLKIN2(1'd0),
	.CLKINSEL(1'd1),
	.DADDR(1'd0),
	.DCLK(1'd0),
	.DEN(1'd0),
	.DI(1'd0),
	.DWE(1'd0),
	.REL(1'd0),
	.RST(1'd0),
	.CLKFBOUT(soc_pll_fb),
	.CLKOUT0(soc_pll[0]),
	.CLKOUT1(soc_pll[1]),
	.CLKOUT2(soc_pll[2]),
	.CLKOUT3(soc_pll[3]),
	.CLKOUT4(soc_pll[4]),
	.CLKOUT5(soc_pll[5]),
	.LOCKED(soc_pll_lckd)
);

BUFG BUFG(
	.I(soc_pll[4]),
	.O(sys_clk)
);

BUFG BUFG_1(
	.I(soc_pll[5]),
	.O(sys_ps_clk)
);

ODDR2 #(
	.DDR_ALIGNMENT("NONE"),
	.INIT(1'd0),
	.SRTYPE("SYNC")
) ODDR2 (
	.C0(sys_clk),
	.C1((~sys_clk)),
	.CE(1'd1),
	.D0(1'd0),
	.D1(1'd1),
	.R(1'd0),
	.S(1'd0),
	.Q(sdram_clock)
);

DNA_PORT DNA_PORT(
	.CLK(soc_dna_cnt[0]),
	.DIN(soc_dna_status[56]),
	.READ((soc_dna_cnt < 2'd2)),
	.SHIFT(1'd1),
	.DOUT(soc_dna_do)
);

assign spiflash2x_dq = soc_spiflash_oe ? soc_spiflash_o : 2'bz;
assign soc_spiflash_i0 = spiflash2x_dq;

assign sdram_dq = soc_ddrphy_dq_oe ? soc_ddrphy_dq_o : 16'bz;
assign soc_ddrphy_dq_i = sdram_dq;

reg [24:0] storage_2[0:7];
reg [24:0] memdat_4;
always @(posedge sys_clk) begin
	if (soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_we)
		storage_2[soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr] <= soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_w;
	memdat_4 <= storage_2[soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_r = memdat_4;
assign soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_dat_r = storage_2[soc_basesoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_adr];

reg [24:0] storage_3[0:7];
reg [24:0] memdat_5;
always @(posedge sys_clk) begin
	if (soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_we)
		storage_3[soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr] <= soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_w;
	memdat_5 <= storage_3[soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_r = memdat_5;
assign soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_dat_r = storage_3[soc_basesoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_adr];

reg [24:0] storage_4[0:7];
reg [24:0] memdat_6;
always @(posedge sys_clk) begin
	if (soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_we)
		storage_4[soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr] <= soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_w;
	memdat_6 <= storage_4[soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_r = memdat_6;
assign soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_dat_r = storage_4[soc_basesoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_adr];

reg [24:0] storage_5[0:7];
reg [24:0] memdat_7;
always @(posedge sys_clk) begin
	if (soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_we)
		storage_5[soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr] <= soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_w;
	memdat_7 <= storage_5[soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_r = memdat_7;
assign soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_dat_r = storage_5[soc_basesoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_adr];

reg [31:0] data_mem[0:2047];
reg [10:0] memadr_3;
always @(posedge sys_clk) begin
	if (soc_basesoc_cache_data_port_we[0])
		data_mem[soc_basesoc_cache_data_port_adr][7:0] <= soc_basesoc_cache_data_port_dat_w[7:0];
	if (soc_basesoc_cache_data_port_we[1])
		data_mem[soc_basesoc_cache_data_port_adr][15:8] <= soc_basesoc_cache_data_port_dat_w[15:8];
	if (soc_basesoc_cache_data_port_we[2])
		data_mem[soc_basesoc_cache_data_port_adr][23:16] <= soc_basesoc_cache_data_port_dat_w[23:16];
	if (soc_basesoc_cache_data_port_we[3])
		data_mem[soc_basesoc_cache_data_port_adr][31:24] <= soc_basesoc_cache_data_port_dat_w[31:24];
	memadr_3 <= soc_basesoc_cache_data_port_adr;
end

assign soc_basesoc_cache_data_port_dat_r = data_mem[memadr_3];

reg [19:0] tag_mem[0:2047];
reg [10:0] memadr_4;
always @(posedge sys_clk) begin
	if (soc_basesoc_cache_tag_port_we)
		tag_mem[soc_basesoc_cache_tag_port_adr] <= soc_basesoc_cache_tag_port_dat_w;
	memadr_4 <= soc_basesoc_cache_tag_port_adr;
end

assign soc_basesoc_cache_tag_port_dat_r = tag_mem[memadr_4];

FDPE #(
	.INIT(1'd1)
) FDPE (
	.C(sys_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(vns_xilinxasyncresetsynchronizerimpl),
	.Q(vns_xilinxasyncresetsynchronizerimpl_rst_meta)
);

FDPE #(
	.INIT(1'd1)
) FDPE_1 (
	.C(sys_clk),
	.CE(1'd1),
	.D(vns_xilinxasyncresetsynchronizerimpl_rst_meta),
	.PRE(vns_xilinxasyncresetsynchronizerimpl),
	.Q(sys_rst)
);

endmodule
