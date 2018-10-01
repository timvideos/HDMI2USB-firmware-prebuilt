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
reg [31:0] basesoc_uart_phy_storage_full = 32'd6184752;
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
reg basesoc_uart_reset = 1'd0;
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
wire [31:0] interface0_wb_sdram_dat_r;
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
wire sys_ps_clk;
reg sys_ps_rst = 1'd0;
wire clk32a;
wire clk32b;
wire pll_lckd;
wire pll_fb;
wire [5:0] pll;
reg [56:0] dna_status = 57'd0;
wire dna_do;
reg [6:0] dna_cnt = 7'd0;
wire [159:0] git_status;
wire [63:0] platform_status;
wire [63:0] target_status;
wire [7:0] leds;
reg [7:0] leds_storage_full = 8'd0;
wire [7:0] leds_storage;
reg leds_re = 1'd0;
reg [3:0] switches = 4'd0;
wire [3:0] switches_status;
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
reg [1:0] o = 2'd0;
reg oe = 1'd0;
wire [1:0] i0;
reg [31:0] sr = 32'd0;
reg [1:0] i1 = 2'd0;
reg [1:0] dqi = 2'd0;
reg [7:0] counter = 8'd0;
wire [12:0] dfi_p0_address;
wire [1:0] dfi_p0_bank;
wire dfi_p0_cas_n;
wire dfi_p0_cs_n;
wire dfi_p0_ras_n;
wire dfi_p0_we_n;
wire dfi_p0_cke;
wire dfi_p0_odt;
wire dfi_p0_reset_n;
wire [15:0] dfi_p0_wrdata;
wire dfi_p0_wrdata_en;
wire [1:0] dfi_p0_wrdata_mask;
wire dfi_p0_rddata_en;
reg [15:0] dfi_p0_rddata = 16'd0;
wire dfi_p0_rddata_valid;
reg [15:0] sd_dq_out = 16'd0;
wire drive_dq;
reg [15:0] sd_dq_in_ps = 16'd0;
reg d_dfi_wrdata_en = 1'd0;
reg [3:0] rddata_sr = 4'd0;
wire [12:0] sdram_inti_p0_address;
wire [1:0] sdram_inti_p0_bank;
reg sdram_inti_p0_cas_n = 1'd1;
reg sdram_inti_p0_cs_n = 1'd1;
reg sdram_inti_p0_ras_n = 1'd1;
reg sdram_inti_p0_we_n = 1'd1;
wire sdram_inti_p0_cke;
wire sdram_inti_p0_odt;
wire sdram_inti_p0_reset_n;
wire [15:0] sdram_inti_p0_wrdata;
wire sdram_inti_p0_wrdata_en;
wire [1:0] sdram_inti_p0_wrdata_mask;
wire sdram_inti_p0_rddata_en;
reg [15:0] sdram_inti_p0_rddata = 16'd0;
reg sdram_inti_p0_rddata_valid = 1'd0;
wire [12:0] sdram_slave_p0_address;
wire [1:0] sdram_slave_p0_bank;
wire sdram_slave_p0_cas_n;
wire sdram_slave_p0_cs_n;
wire sdram_slave_p0_ras_n;
wire sdram_slave_p0_we_n;
wire sdram_slave_p0_cke;
wire sdram_slave_p0_odt;
wire sdram_slave_p0_reset_n;
wire [15:0] sdram_slave_p0_wrdata;
wire sdram_slave_p0_wrdata_en;
wire [1:0] sdram_slave_p0_wrdata_mask;
wire sdram_slave_p0_rddata_en;
reg [15:0] sdram_slave_p0_rddata = 16'd0;
reg sdram_slave_p0_rddata_valid = 1'd0;
reg [12:0] sdram_master_p0_address = 13'd0;
reg [1:0] sdram_master_p0_bank = 2'd0;
reg sdram_master_p0_cas_n = 1'd1;
reg sdram_master_p0_cs_n = 1'd1;
reg sdram_master_p0_ras_n = 1'd1;
reg sdram_master_p0_we_n = 1'd1;
reg sdram_master_p0_cke = 1'd0;
reg sdram_master_p0_odt = 1'd0;
reg sdram_master_p0_reset_n = 1'd0;
reg [15:0] sdram_master_p0_wrdata = 16'd0;
reg sdram_master_p0_wrdata_en = 1'd0;
reg [1:0] sdram_master_p0_wrdata_mask = 2'd0;
reg sdram_master_p0_rddata_en = 1'd0;
wire [15:0] sdram_master_p0_rddata;
wire sdram_master_p0_rddata_valid;
reg [3:0] sdram_storage_full = 4'd0;
wire [3:0] sdram_storage;
reg sdram_re = 1'd0;
reg [5:0] sdram_command_storage_full = 6'd0;
wire [5:0] sdram_command_storage;
reg sdram_command_re = 1'd0;
wire sdram_command_issue_re;
wire sdram_command_issue_r;
reg sdram_command_issue_w = 1'd0;
reg [12:0] sdram_address_storage_full = 13'd0;
wire [12:0] sdram_address_storage;
reg sdram_address_re = 1'd0;
reg [1:0] sdram_baddress_storage_full = 2'd0;
wire [1:0] sdram_baddress_storage;
reg sdram_baddress_re = 1'd0;
reg [15:0] sdram_wrdata_storage_full = 16'd0;
wire [15:0] sdram_wrdata_storage;
reg sdram_wrdata_re = 1'd0;
reg [15:0] sdram_status = 16'd0;
reg [12:0] sdram_dfi_p0_address = 13'd0;
reg [1:0] sdram_dfi_p0_bank = 2'd0;
reg sdram_dfi_p0_cas_n = 1'd1;
reg sdram_dfi_p0_cs_n = 1'd1;
reg sdram_dfi_p0_ras_n = 1'd1;
reg sdram_dfi_p0_we_n = 1'd1;
wire sdram_dfi_p0_cke;
wire sdram_dfi_p0_odt;
wire sdram_dfi_p0_reset_n;
wire [15:0] sdram_dfi_p0_wrdata;
reg sdram_dfi_p0_wrdata_en = 1'd0;
wire [1:0] sdram_dfi_p0_wrdata_mask;
reg sdram_dfi_p0_rddata_en = 1'd0;
wire [15:0] sdram_dfi_p0_rddata;
wire sdram_dfi_p0_rddata_valid;
wire sdram_interface_bank0_valid;
wire sdram_interface_bank0_ready;
wire sdram_interface_bank0_we;
wire [21:0] sdram_interface_bank0_addr;
wire sdram_interface_bank0_lock;
wire sdram_interface_bank0_wdata_ready;
wire sdram_interface_bank0_rdata_valid;
wire sdram_interface_bank1_valid;
wire sdram_interface_bank1_ready;
wire sdram_interface_bank1_we;
wire [21:0] sdram_interface_bank1_addr;
wire sdram_interface_bank1_lock;
wire sdram_interface_bank1_wdata_ready;
wire sdram_interface_bank1_rdata_valid;
wire sdram_interface_bank2_valid;
wire sdram_interface_bank2_ready;
wire sdram_interface_bank2_we;
wire [21:0] sdram_interface_bank2_addr;
wire sdram_interface_bank2_lock;
wire sdram_interface_bank2_wdata_ready;
wire sdram_interface_bank2_rdata_valid;
wire sdram_interface_bank3_valid;
wire sdram_interface_bank3_ready;
wire sdram_interface_bank3_we;
wire [21:0] sdram_interface_bank3_addr;
wire sdram_interface_bank3_lock;
wire sdram_interface_bank3_wdata_ready;
wire sdram_interface_bank3_rdata_valid;
reg [15:0] sdram_interface_wdata = 16'd0;
reg [1:0] sdram_interface_wdata_we = 2'd0;
wire [15:0] sdram_interface_rdata;
reg sdram_cmd_valid = 1'd0;
reg sdram_cmd_ready = 1'd0;
reg sdram_cmd_last = 1'd0;
reg [12:0] sdram_cmd_payload_a = 13'd0;
reg [1:0] sdram_cmd_payload_ba = 2'd0;
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
reg [9:0] sdram_count = 10'd625;
wire sdram_bankmachine0_req_valid;
wire sdram_bankmachine0_req_ready;
wire sdram_bankmachine0_req_we;
wire [21:0] sdram_bankmachine0_req_addr;
wire sdram_bankmachine0_req_lock;
reg sdram_bankmachine0_req_wdata_ready = 1'd0;
reg sdram_bankmachine0_req_rdata_valid = 1'd0;
wire sdram_bankmachine0_refresh_req;
reg sdram_bankmachine0_refresh_gnt = 1'd0;
wire sdram_bankmachine0_ras_allowed;
wire sdram_bankmachine0_cas_allowed;
reg sdram_bankmachine0_cmd_valid = 1'd0;
reg sdram_bankmachine0_cmd_ready = 1'd0;
reg [12:0] sdram_bankmachine0_cmd_payload_a = 13'd0;
wire [1:0] sdram_bankmachine0_cmd_payload_ba;
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
wire [21:0] sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_addr;
wire sdram_bankmachine0_cmd_buffer_lookahead_source_valid;
wire sdram_bankmachine0_cmd_buffer_lookahead_source_ready;
wire sdram_bankmachine0_cmd_buffer_lookahead_source_first;
wire sdram_bankmachine0_cmd_buffer_lookahead_source_last;
wire sdram_bankmachine0_cmd_buffer_lookahead_source_payload_we;
wire [21:0] sdram_bankmachine0_cmd_buffer_lookahead_source_payload_addr;
wire sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we;
wire sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable;
wire sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_re;
wire sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable;
wire [24:0] sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_din;
wire [24:0] sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_dout;
reg [3:0] sdram_bankmachine0_cmd_buffer_lookahead_level = 4'd0;
reg sdram_bankmachine0_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] sdram_bankmachine0_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] sdram_bankmachine0_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [24:0] sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_r;
wire sdram_bankmachine0_cmd_buffer_lookahead_wrport_we;
wire [24:0] sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_w;
wire sdram_bankmachine0_cmd_buffer_lookahead_do_read;
wire [2:0] sdram_bankmachine0_cmd_buffer_lookahead_rdport_adr;
wire [24:0] sdram_bankmachine0_cmd_buffer_lookahead_rdport_dat_r;
wire sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we;
wire [21:0] sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_addr;
wire sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_first;
wire sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_last;
wire sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we;
wire [21:0] sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_addr;
wire sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_first;
wire sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_last;
wire sdram_bankmachine0_cmd_buffer_sink_valid;
wire sdram_bankmachine0_cmd_buffer_sink_ready;
wire sdram_bankmachine0_cmd_buffer_sink_first;
wire sdram_bankmachine0_cmd_buffer_sink_last;
wire sdram_bankmachine0_cmd_buffer_sink_payload_we;
wire [21:0] sdram_bankmachine0_cmd_buffer_sink_payload_addr;
wire sdram_bankmachine0_cmd_buffer_source_valid;
wire sdram_bankmachine0_cmd_buffer_source_ready;
wire sdram_bankmachine0_cmd_buffer_source_first;
wire sdram_bankmachine0_cmd_buffer_source_last;
reg sdram_bankmachine0_cmd_buffer_source_payload_we = 1'd0;
reg [21:0] sdram_bankmachine0_cmd_buffer_source_payload_addr = 22'd0;
wire sdram_bankmachine0_cmd_buffer_pipe_ce;
wire sdram_bankmachine0_cmd_buffer_busy;
reg sdram_bankmachine0_cmd_buffer_valid_n = 1'd0;
reg sdram_bankmachine0_cmd_buffer_first_n = 1'd0;
reg sdram_bankmachine0_cmd_buffer_last_n = 1'd0;
reg sdram_bankmachine0_has_openrow = 1'd0;
reg [12:0] sdram_bankmachine0_openrow = 13'd0;
wire sdram_bankmachine0_hit;
reg sdram_bankmachine0_track_open = 1'd0;
reg sdram_bankmachine0_track_close = 1'd0;
reg sdram_bankmachine0_sel_row_addr = 1'd0;
wire sdram_bankmachine0_wait;
wire sdram_bankmachine0_done;
reg [1:0] sdram_bankmachine0_count = 2'd3;
wire sdram_bankmachine1_req_valid;
wire sdram_bankmachine1_req_ready;
wire sdram_bankmachine1_req_we;
wire [21:0] sdram_bankmachine1_req_addr;
wire sdram_bankmachine1_req_lock;
reg sdram_bankmachine1_req_wdata_ready = 1'd0;
reg sdram_bankmachine1_req_rdata_valid = 1'd0;
wire sdram_bankmachine1_refresh_req;
reg sdram_bankmachine1_refresh_gnt = 1'd0;
wire sdram_bankmachine1_ras_allowed;
wire sdram_bankmachine1_cas_allowed;
reg sdram_bankmachine1_cmd_valid = 1'd0;
reg sdram_bankmachine1_cmd_ready = 1'd0;
reg [12:0] sdram_bankmachine1_cmd_payload_a = 13'd0;
wire [1:0] sdram_bankmachine1_cmd_payload_ba;
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
wire [21:0] sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_addr;
wire sdram_bankmachine1_cmd_buffer_lookahead_source_valid;
wire sdram_bankmachine1_cmd_buffer_lookahead_source_ready;
wire sdram_bankmachine1_cmd_buffer_lookahead_source_first;
wire sdram_bankmachine1_cmd_buffer_lookahead_source_last;
wire sdram_bankmachine1_cmd_buffer_lookahead_source_payload_we;
wire [21:0] sdram_bankmachine1_cmd_buffer_lookahead_source_payload_addr;
wire sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we;
wire sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable;
wire sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_re;
wire sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable;
wire [24:0] sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_din;
wire [24:0] sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_dout;
reg [3:0] sdram_bankmachine1_cmd_buffer_lookahead_level = 4'd0;
reg sdram_bankmachine1_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] sdram_bankmachine1_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] sdram_bankmachine1_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [24:0] sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_r;
wire sdram_bankmachine1_cmd_buffer_lookahead_wrport_we;
wire [24:0] sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_w;
wire sdram_bankmachine1_cmd_buffer_lookahead_do_read;
wire [2:0] sdram_bankmachine1_cmd_buffer_lookahead_rdport_adr;
wire [24:0] sdram_bankmachine1_cmd_buffer_lookahead_rdport_dat_r;
wire sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we;
wire [21:0] sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_addr;
wire sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_first;
wire sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_last;
wire sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we;
wire [21:0] sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_addr;
wire sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_first;
wire sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_last;
wire sdram_bankmachine1_cmd_buffer_sink_valid;
wire sdram_bankmachine1_cmd_buffer_sink_ready;
wire sdram_bankmachine1_cmd_buffer_sink_first;
wire sdram_bankmachine1_cmd_buffer_sink_last;
wire sdram_bankmachine1_cmd_buffer_sink_payload_we;
wire [21:0] sdram_bankmachine1_cmd_buffer_sink_payload_addr;
wire sdram_bankmachine1_cmd_buffer_source_valid;
wire sdram_bankmachine1_cmd_buffer_source_ready;
wire sdram_bankmachine1_cmd_buffer_source_first;
wire sdram_bankmachine1_cmd_buffer_source_last;
reg sdram_bankmachine1_cmd_buffer_source_payload_we = 1'd0;
reg [21:0] sdram_bankmachine1_cmd_buffer_source_payload_addr = 22'd0;
wire sdram_bankmachine1_cmd_buffer_pipe_ce;
wire sdram_bankmachine1_cmd_buffer_busy;
reg sdram_bankmachine1_cmd_buffer_valid_n = 1'd0;
reg sdram_bankmachine1_cmd_buffer_first_n = 1'd0;
reg sdram_bankmachine1_cmd_buffer_last_n = 1'd0;
reg sdram_bankmachine1_has_openrow = 1'd0;
reg [12:0] sdram_bankmachine1_openrow = 13'd0;
wire sdram_bankmachine1_hit;
reg sdram_bankmachine1_track_open = 1'd0;
reg sdram_bankmachine1_track_close = 1'd0;
reg sdram_bankmachine1_sel_row_addr = 1'd0;
wire sdram_bankmachine1_wait;
wire sdram_bankmachine1_done;
reg [1:0] sdram_bankmachine1_count = 2'd3;
wire sdram_bankmachine2_req_valid;
wire sdram_bankmachine2_req_ready;
wire sdram_bankmachine2_req_we;
wire [21:0] sdram_bankmachine2_req_addr;
wire sdram_bankmachine2_req_lock;
reg sdram_bankmachine2_req_wdata_ready = 1'd0;
reg sdram_bankmachine2_req_rdata_valid = 1'd0;
wire sdram_bankmachine2_refresh_req;
reg sdram_bankmachine2_refresh_gnt = 1'd0;
wire sdram_bankmachine2_ras_allowed;
wire sdram_bankmachine2_cas_allowed;
reg sdram_bankmachine2_cmd_valid = 1'd0;
reg sdram_bankmachine2_cmd_ready = 1'd0;
reg [12:0] sdram_bankmachine2_cmd_payload_a = 13'd0;
wire [1:0] sdram_bankmachine2_cmd_payload_ba;
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
wire [21:0] sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_addr;
wire sdram_bankmachine2_cmd_buffer_lookahead_source_valid;
wire sdram_bankmachine2_cmd_buffer_lookahead_source_ready;
wire sdram_bankmachine2_cmd_buffer_lookahead_source_first;
wire sdram_bankmachine2_cmd_buffer_lookahead_source_last;
wire sdram_bankmachine2_cmd_buffer_lookahead_source_payload_we;
wire [21:0] sdram_bankmachine2_cmd_buffer_lookahead_source_payload_addr;
wire sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we;
wire sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable;
wire sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_re;
wire sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable;
wire [24:0] sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_din;
wire [24:0] sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_dout;
reg [3:0] sdram_bankmachine2_cmd_buffer_lookahead_level = 4'd0;
reg sdram_bankmachine2_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] sdram_bankmachine2_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] sdram_bankmachine2_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [24:0] sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_r;
wire sdram_bankmachine2_cmd_buffer_lookahead_wrport_we;
wire [24:0] sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_w;
wire sdram_bankmachine2_cmd_buffer_lookahead_do_read;
wire [2:0] sdram_bankmachine2_cmd_buffer_lookahead_rdport_adr;
wire [24:0] sdram_bankmachine2_cmd_buffer_lookahead_rdport_dat_r;
wire sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we;
wire [21:0] sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_addr;
wire sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_first;
wire sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_last;
wire sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we;
wire [21:0] sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_addr;
wire sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_first;
wire sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_last;
wire sdram_bankmachine2_cmd_buffer_sink_valid;
wire sdram_bankmachine2_cmd_buffer_sink_ready;
wire sdram_bankmachine2_cmd_buffer_sink_first;
wire sdram_bankmachine2_cmd_buffer_sink_last;
wire sdram_bankmachine2_cmd_buffer_sink_payload_we;
wire [21:0] sdram_bankmachine2_cmd_buffer_sink_payload_addr;
wire sdram_bankmachine2_cmd_buffer_source_valid;
wire sdram_bankmachine2_cmd_buffer_source_ready;
wire sdram_bankmachine2_cmd_buffer_source_first;
wire sdram_bankmachine2_cmd_buffer_source_last;
reg sdram_bankmachine2_cmd_buffer_source_payload_we = 1'd0;
reg [21:0] sdram_bankmachine2_cmd_buffer_source_payload_addr = 22'd0;
wire sdram_bankmachine2_cmd_buffer_pipe_ce;
wire sdram_bankmachine2_cmd_buffer_busy;
reg sdram_bankmachine2_cmd_buffer_valid_n = 1'd0;
reg sdram_bankmachine2_cmd_buffer_first_n = 1'd0;
reg sdram_bankmachine2_cmd_buffer_last_n = 1'd0;
reg sdram_bankmachine2_has_openrow = 1'd0;
reg [12:0] sdram_bankmachine2_openrow = 13'd0;
wire sdram_bankmachine2_hit;
reg sdram_bankmachine2_track_open = 1'd0;
reg sdram_bankmachine2_track_close = 1'd0;
reg sdram_bankmachine2_sel_row_addr = 1'd0;
wire sdram_bankmachine2_wait;
wire sdram_bankmachine2_done;
reg [1:0] sdram_bankmachine2_count = 2'd3;
wire sdram_bankmachine3_req_valid;
wire sdram_bankmachine3_req_ready;
wire sdram_bankmachine3_req_we;
wire [21:0] sdram_bankmachine3_req_addr;
wire sdram_bankmachine3_req_lock;
reg sdram_bankmachine3_req_wdata_ready = 1'd0;
reg sdram_bankmachine3_req_rdata_valid = 1'd0;
wire sdram_bankmachine3_refresh_req;
reg sdram_bankmachine3_refresh_gnt = 1'd0;
wire sdram_bankmachine3_ras_allowed;
wire sdram_bankmachine3_cas_allowed;
reg sdram_bankmachine3_cmd_valid = 1'd0;
reg sdram_bankmachine3_cmd_ready = 1'd0;
reg [12:0] sdram_bankmachine3_cmd_payload_a = 13'd0;
wire [1:0] sdram_bankmachine3_cmd_payload_ba;
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
wire [21:0] sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_addr;
wire sdram_bankmachine3_cmd_buffer_lookahead_source_valid;
wire sdram_bankmachine3_cmd_buffer_lookahead_source_ready;
wire sdram_bankmachine3_cmd_buffer_lookahead_source_first;
wire sdram_bankmachine3_cmd_buffer_lookahead_source_last;
wire sdram_bankmachine3_cmd_buffer_lookahead_source_payload_we;
wire [21:0] sdram_bankmachine3_cmd_buffer_lookahead_source_payload_addr;
wire sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we;
wire sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable;
wire sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_re;
wire sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable;
wire [24:0] sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_din;
wire [24:0] sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_dout;
reg [3:0] sdram_bankmachine3_cmd_buffer_lookahead_level = 4'd0;
reg sdram_bankmachine3_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] sdram_bankmachine3_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] sdram_bankmachine3_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [24:0] sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_r;
wire sdram_bankmachine3_cmd_buffer_lookahead_wrport_we;
wire [24:0] sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_w;
wire sdram_bankmachine3_cmd_buffer_lookahead_do_read;
wire [2:0] sdram_bankmachine3_cmd_buffer_lookahead_rdport_adr;
wire [24:0] sdram_bankmachine3_cmd_buffer_lookahead_rdport_dat_r;
wire sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we;
wire [21:0] sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_addr;
wire sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_first;
wire sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_last;
wire sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we;
wire [21:0] sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_addr;
wire sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_first;
wire sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_last;
wire sdram_bankmachine3_cmd_buffer_sink_valid;
wire sdram_bankmachine3_cmd_buffer_sink_ready;
wire sdram_bankmachine3_cmd_buffer_sink_first;
wire sdram_bankmachine3_cmd_buffer_sink_last;
wire sdram_bankmachine3_cmd_buffer_sink_payload_we;
wire [21:0] sdram_bankmachine3_cmd_buffer_sink_payload_addr;
wire sdram_bankmachine3_cmd_buffer_source_valid;
wire sdram_bankmachine3_cmd_buffer_source_ready;
wire sdram_bankmachine3_cmd_buffer_source_first;
wire sdram_bankmachine3_cmd_buffer_source_last;
reg sdram_bankmachine3_cmd_buffer_source_payload_we = 1'd0;
reg [21:0] sdram_bankmachine3_cmd_buffer_source_payload_addr = 22'd0;
wire sdram_bankmachine3_cmd_buffer_pipe_ce;
wire sdram_bankmachine3_cmd_buffer_busy;
reg sdram_bankmachine3_cmd_buffer_valid_n = 1'd0;
reg sdram_bankmachine3_cmd_buffer_first_n = 1'd0;
reg sdram_bankmachine3_cmd_buffer_last_n = 1'd0;
reg sdram_bankmachine3_has_openrow = 1'd0;
reg [12:0] sdram_bankmachine3_openrow = 13'd0;
wire sdram_bankmachine3_hit;
reg sdram_bankmachine3_track_open = 1'd0;
reg sdram_bankmachine3_track_close = 1'd0;
reg sdram_bankmachine3_sel_row_addr = 1'd0;
wire sdram_bankmachine3_wait;
wire sdram_bankmachine3_done;
reg [1:0] sdram_bankmachine3_count = 2'd3;
wire sdram_ras_allowed;
wire sdram_cas_allowed;
reg sdram_choose_cmd_want_reads = 1'd0;
reg sdram_choose_cmd_want_writes = 1'd0;
wire sdram_choose_cmd_want_cmds;
reg sdram_choose_cmd_want_activates = 1'd0;
wire sdram_choose_cmd_cmd_valid;
reg sdram_choose_cmd_cmd_ready = 1'd0;
wire [12:0] sdram_choose_cmd_cmd_payload_a;
wire [1:0] sdram_choose_cmd_cmd_payload_ba;
reg sdram_choose_cmd_cmd_payload_cas = 1'd0;
reg sdram_choose_cmd_cmd_payload_ras = 1'd0;
reg sdram_choose_cmd_cmd_payload_we = 1'd0;
wire sdram_choose_cmd_cmd_payload_is_cmd;
wire sdram_choose_cmd_cmd_payload_is_read;
wire sdram_choose_cmd_cmd_payload_is_write;
reg [3:0] sdram_choose_cmd_valids = 4'd0;
wire [3:0] sdram_choose_cmd_request;
reg [1:0] sdram_choose_cmd_grant = 2'd0;
wire sdram_choose_cmd_ce;
reg sdram_choose_req_want_reads = 1'd0;
reg sdram_choose_req_want_writes = 1'd0;
wire sdram_choose_req_want_cmds;
wire sdram_choose_req_want_activates;
wire sdram_choose_req_cmd_valid;
reg sdram_choose_req_cmd_ready = 1'd0;
wire [12:0] sdram_choose_req_cmd_payload_a;
wire [1:0] sdram_choose_req_cmd_payload_ba;
reg sdram_choose_req_cmd_payload_cas = 1'd0;
reg sdram_choose_req_cmd_payload_ras = 1'd0;
reg sdram_choose_req_cmd_payload_we = 1'd0;
wire sdram_choose_req_cmd_payload_is_cmd;
wire sdram_choose_req_cmd_payload_is_read;
wire sdram_choose_req_cmd_payload_is_write;
reg [3:0] sdram_choose_req_valids = 4'd0;
wire [3:0] sdram_choose_req_request;
reg [1:0] sdram_choose_req_grant = 2'd0;
wire sdram_choose_req_ce;
reg [12:0] sdram_nop_a = 13'd0;
reg [1:0] sdram_nop_ba = 2'd0;
reg sdram_nop_cas = 1'd0;
reg sdram_nop_ras = 1'd0;
reg sdram_nop_we = 1'd0;
reg [1:0] sdram_steerer_sel = 2'd0;
reg sdram_steerer0 = 1'd1;
reg sdram_steerer1 = 1'd1;
wire sdram_trrdcon_valid;
(* register_balancing = "no" *) reg sdram_trrdcon_ready = 1'd1;
wire sdram_tfawcon_valid;
(* register_balancing = "no" *) reg sdram_tfawcon_ready = 1'd1;
wire sdram_tccdcon_valid;
(* register_balancing = "no" *) reg sdram_tccdcon_ready = 1'd1;
wire sdram_twtrcon_valid;
(* register_balancing = "no" *) reg sdram_twtrcon_ready = 1'd1;
reg sdram_twtrcon_count = 1'd0;
wire sdram_read_available;
wire sdram_write_available;
reg sdram_en0 = 1'd0;
wire sdram_max_time0;
reg [4:0] sdram_time0 = 5'd0;
reg sdram_en1 = 1'd0;
wire sdram_max_time1;
reg [3:0] sdram_time1 = 4'd0;
wire sdram_go_to_refresh;
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
wire [23:0] port_cmd_payload_addr;
reg port_wdata_valid = 1'd0;
wire port_wdata_ready;
wire [15:0] port_wdata_payload_data;
wire [1:0] port_wdata_payload_we;
wire port_rdata_valid;
reg port_rdata_ready = 1'd0;
wire [15:0] port_rdata_payload_data;
wire [29:0] adr;
reg [15:0] dat_w = 16'd0;
wire [15:0] dat_r;
wire [1:0] sel;
reg cyc = 1'd0;
reg stb = 1'd0;
reg ack = 1'd0;
reg we = 1'd0;
reg cache = 1'd0;
wire [10:0] cache_data_port_adr;
wire [31:0] cache_data_port_dat_r;
reg [3:0] cache_data_port_we = 4'd0;
reg [31:0] cache_data_port_dat_w = 32'd0;
reg cache_write_from_slave = 1'd0;
wire [10:0] cache_tag_port_adr;
wire [19:0] cache_tag_port_dat_r;
reg cache_tag_port_we = 1'd0;
wire [19:0] cache_tag_port_dat_w;
wire [18:0] cache_tag_do_tag;
wire cache_tag_do_dirty;
wire [18:0] cache_tag_di_tag;
reg cache_tag_di_dirty = 1'd0;
reg cache_word_clr = 1'd0;
reg cache_word_inc = 1'd0;
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
reg [2:0] multiplexer_state = 3'd0;
reg [2:0] multiplexer_next_state = 3'd0;
wire [1:0] cba;
wire [21:0] rca;
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
reg [1:0] rbank = 2'd0;
reg [1:0] wbank = 2'd0;
reg new_master_wdata_ready = 1'd0;
reg new_master_rdata_valid0 = 1'd0;
reg new_master_rdata_valid1 = 1'd0;
reg new_master_rdata_valid2 = 1'd0;
reg new_master_rdata_valid3 = 1'd0;
reg new_master_rdata_valid4 = 1'd0;
reg [1:0] new_master_rbank0 = 2'd0;
reg [1:0] new_master_rbank1 = 2'd0;
reg [1:0] new_master_rbank2 = 2'd0;
reg [1:0] new_master_rbank3 = 2'd0;
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
wire basesoc_csrbank0_leds_out0_re;
wire [7:0] basesoc_csrbank0_leds_out0_r;
wire [7:0] basesoc_csrbank0_leds_out0_w;
wire basesoc_csrbank0_switches_in_re;
wire [3:0] basesoc_csrbank0_switches_in_r;
wire [3:0] basesoc_csrbank0_switches_in_w;
wire basesoc_csrbank0_sel;
wire [13:0] basesoc_interface1_bank_bus_adr;
wire basesoc_interface1_bank_bus_we;
wire [7:0] basesoc_interface1_bank_bus_dat_w;
reg [7:0] basesoc_interface1_bank_bus_dat_r = 8'd0;
wire basesoc_csrbank1_scratch3_re;
wire [7:0] basesoc_csrbank1_scratch3_r;
wire [7:0] basesoc_csrbank1_scratch3_w;
wire basesoc_csrbank1_scratch2_re;
wire [7:0] basesoc_csrbank1_scratch2_r;
wire [7:0] basesoc_csrbank1_scratch2_w;
wire basesoc_csrbank1_scratch1_re;
wire [7:0] basesoc_csrbank1_scratch1_r;
wire [7:0] basesoc_csrbank1_scratch1_w;
wire basesoc_csrbank1_scratch0_re;
wire [7:0] basesoc_csrbank1_scratch0_r;
wire [7:0] basesoc_csrbank1_scratch0_w;
wire basesoc_csrbank1_bus_errors3_re;
wire [7:0] basesoc_csrbank1_bus_errors3_r;
wire [7:0] basesoc_csrbank1_bus_errors3_w;
wire basesoc_csrbank1_bus_errors2_re;
wire [7:0] basesoc_csrbank1_bus_errors2_r;
wire [7:0] basesoc_csrbank1_bus_errors2_w;
wire basesoc_csrbank1_bus_errors1_re;
wire [7:0] basesoc_csrbank1_bus_errors1_r;
wire [7:0] basesoc_csrbank1_bus_errors1_w;
wire basesoc_csrbank1_bus_errors0_re;
wire [7:0] basesoc_csrbank1_bus_errors0_r;
wire [7:0] basesoc_csrbank1_bus_errors0_w;
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
wire basesoc_csrbank3_dfii_control0_re;
wire [3:0] basesoc_csrbank3_dfii_control0_r;
wire [3:0] basesoc_csrbank3_dfii_control0_w;
wire basesoc_csrbank3_dfii_pi0_command0_re;
wire [5:0] basesoc_csrbank3_dfii_pi0_command0_r;
wire [5:0] basesoc_csrbank3_dfii_pi0_command0_w;
wire basesoc_csrbank3_dfii_pi0_address1_re;
wire [4:0] basesoc_csrbank3_dfii_pi0_address1_r;
wire [4:0] basesoc_csrbank3_dfii_pi0_address1_w;
wire basesoc_csrbank3_dfii_pi0_address0_re;
wire [7:0] basesoc_csrbank3_dfii_pi0_address0_r;
wire [7:0] basesoc_csrbank3_dfii_pi0_address0_w;
wire basesoc_csrbank3_dfii_pi0_baddress0_re;
wire [1:0] basesoc_csrbank3_dfii_pi0_baddress0_r;
wire [1:0] basesoc_csrbank3_dfii_pi0_baddress0_w;
wire basesoc_csrbank3_dfii_pi0_wrdata1_re;
wire [7:0] basesoc_csrbank3_dfii_pi0_wrdata1_r;
wire [7:0] basesoc_csrbank3_dfii_pi0_wrdata1_w;
wire basesoc_csrbank3_dfii_pi0_wrdata0_re;
wire [7:0] basesoc_csrbank3_dfii_pi0_wrdata0_r;
wire [7:0] basesoc_csrbank3_dfii_pi0_wrdata0_w;
wire basesoc_csrbank3_dfii_pi0_rddata1_re;
wire [7:0] basesoc_csrbank3_dfii_pi0_rddata1_r;
wire [7:0] basesoc_csrbank3_dfii_pi0_rddata1_w;
wire basesoc_csrbank3_dfii_pi0_rddata0_re;
wire [7:0] basesoc_csrbank3_dfii_pi0_rddata0_r;
wire [7:0] basesoc_csrbank3_dfii_pi0_rddata0_w;
wire basesoc_csrbank3_sel;
wire [13:0] basesoc_interface4_bank_bus_adr;
wire basesoc_interface4_bank_bus_we;
wire [7:0] basesoc_interface4_bank_bus_dat_w;
reg [7:0] basesoc_interface4_bank_bus_dat_r = 8'd0;
wire basesoc_csrbank4_bitbang0_re;
wire [3:0] basesoc_csrbank4_bitbang0_r;
wire [3:0] basesoc_csrbank4_bitbang0_w;
wire basesoc_csrbank4_miso_re;
wire basesoc_csrbank4_miso_r;
wire basesoc_csrbank4_miso_w;
wire basesoc_csrbank4_bitbang_en0_re;
wire basesoc_csrbank4_bitbang_en0_r;
wire basesoc_csrbank4_bitbang_en0_w;
wire basesoc_csrbank4_sel;
wire [13:0] basesoc_interface5_bank_bus_adr;
wire basesoc_interface5_bank_bus_we;
wire [7:0] basesoc_interface5_bank_bus_dat_w;
reg [7:0] basesoc_interface5_bank_bus_dat_r = 8'd0;
wire basesoc_csrbank5_load3_re;
wire [7:0] basesoc_csrbank5_load3_r;
wire [7:0] basesoc_csrbank5_load3_w;
wire basesoc_csrbank5_load2_re;
wire [7:0] basesoc_csrbank5_load2_r;
wire [7:0] basesoc_csrbank5_load2_w;
wire basesoc_csrbank5_load1_re;
wire [7:0] basesoc_csrbank5_load1_r;
wire [7:0] basesoc_csrbank5_load1_w;
wire basesoc_csrbank5_load0_re;
wire [7:0] basesoc_csrbank5_load0_r;
wire [7:0] basesoc_csrbank5_load0_w;
wire basesoc_csrbank5_reload3_re;
wire [7:0] basesoc_csrbank5_reload3_r;
wire [7:0] basesoc_csrbank5_reload3_w;
wire basesoc_csrbank5_reload2_re;
wire [7:0] basesoc_csrbank5_reload2_r;
wire [7:0] basesoc_csrbank5_reload2_w;
wire basesoc_csrbank5_reload1_re;
wire [7:0] basesoc_csrbank5_reload1_r;
wire [7:0] basesoc_csrbank5_reload1_w;
wire basesoc_csrbank5_reload0_re;
wire [7:0] basesoc_csrbank5_reload0_r;
wire [7:0] basesoc_csrbank5_reload0_w;
wire basesoc_csrbank5_en0_re;
wire basesoc_csrbank5_en0_r;
wire basesoc_csrbank5_en0_w;
wire basesoc_csrbank5_value3_re;
wire [7:0] basesoc_csrbank5_value3_r;
wire [7:0] basesoc_csrbank5_value3_w;
wire basesoc_csrbank5_value2_re;
wire [7:0] basesoc_csrbank5_value2_r;
wire [7:0] basesoc_csrbank5_value2_w;
wire basesoc_csrbank5_value1_re;
wire [7:0] basesoc_csrbank5_value1_r;
wire [7:0] basesoc_csrbank5_value1_w;
wire basesoc_csrbank5_value0_re;
wire [7:0] basesoc_csrbank5_value0_r;
wire [7:0] basesoc_csrbank5_value0_w;
wire basesoc_csrbank5_ev_enable0_re;
wire basesoc_csrbank5_ev_enable0_r;
wire basesoc_csrbank5_ev_enable0_w;
wire basesoc_csrbank5_sel;
wire [13:0] basesoc_interface6_bank_bus_adr;
wire basesoc_interface6_bank_bus_we;
wire [7:0] basesoc_interface6_bank_bus_dat_w;
reg [7:0] basesoc_interface6_bank_bus_dat_r = 8'd0;
wire basesoc_csrbank6_txfull_re;
wire basesoc_csrbank6_txfull_r;
wire basesoc_csrbank6_txfull_w;
wire basesoc_csrbank6_rxempty_re;
wire basesoc_csrbank6_rxempty_r;
wire basesoc_csrbank6_rxempty_w;
wire basesoc_csrbank6_ev_enable0_re;
wire [1:0] basesoc_csrbank6_ev_enable0_r;
wire [1:0] basesoc_csrbank6_ev_enable0_w;
wire basesoc_csrbank6_sel;
wire [13:0] basesoc_interface7_bank_bus_adr;
wire basesoc_interface7_bank_bus_we;
wire [7:0] basesoc_interface7_bank_bus_dat_w;
reg [7:0] basesoc_interface7_bank_bus_dat_r = 8'd0;
wire basesoc_csrbank7_tuning_word3_re;
wire [7:0] basesoc_csrbank7_tuning_word3_r;
wire [7:0] basesoc_csrbank7_tuning_word3_w;
wire basesoc_csrbank7_tuning_word2_re;
wire [7:0] basesoc_csrbank7_tuning_word2_r;
wire [7:0] basesoc_csrbank7_tuning_word2_w;
wire basesoc_csrbank7_tuning_word1_re;
wire [7:0] basesoc_csrbank7_tuning_word1_r;
wire [7:0] basesoc_csrbank7_tuning_word1_w;
wire basesoc_csrbank7_tuning_word0_re;
wire [7:0] basesoc_csrbank7_tuning_word0_r;
wire [7:0] basesoc_csrbank7_tuning_word0_w;
wire basesoc_csrbank7_sel;
reg rhs_array_muxed0 = 1'd0;
reg [12:0] rhs_array_muxed1 = 13'd0;
reg [1:0] rhs_array_muxed2 = 2'd0;
reg rhs_array_muxed3 = 1'd0;
reg rhs_array_muxed4 = 1'd0;
reg rhs_array_muxed5 = 1'd0;
reg t_array_muxed0 = 1'd0;
reg t_array_muxed1 = 1'd0;
reg t_array_muxed2 = 1'd0;
reg rhs_array_muxed6 = 1'd0;
reg [12:0] rhs_array_muxed7 = 13'd0;
reg [1:0] rhs_array_muxed8 = 2'd0;
reg rhs_array_muxed9 = 1'd0;
reg rhs_array_muxed10 = 1'd0;
reg rhs_array_muxed11 = 1'd0;
reg t_array_muxed3 = 1'd0;
reg t_array_muxed4 = 1'd0;
reg t_array_muxed5 = 1'd0;
reg [21:0] rhs_array_muxed12 = 22'd0;
reg rhs_array_muxed13 = 1'd0;
reg rhs_array_muxed14 = 1'd0;
reg [21:0] rhs_array_muxed15 = 22'd0;
reg rhs_array_muxed16 = 1'd0;
reg rhs_array_muxed17 = 1'd0;
reg [21:0] rhs_array_muxed18 = 22'd0;
reg rhs_array_muxed19 = 1'd0;
reg rhs_array_muxed20 = 1'd0;
reg [21:0] rhs_array_muxed21 = 22'd0;
reg rhs_array_muxed22 = 1'd0;
reg rhs_array_muxed23 = 1'd0;
reg [29:0] rhs_array_muxed24 = 30'd0;
reg [31:0] rhs_array_muxed25 = 32'd0;
reg [3:0] rhs_array_muxed26 = 4'd0;
reg rhs_array_muxed27 = 1'd0;
reg rhs_array_muxed28 = 1'd0;
reg rhs_array_muxed29 = 1'd0;
reg [2:0] rhs_array_muxed30 = 3'd0;
reg [1:0] rhs_array_muxed31 = 2'd0;
reg [29:0] rhs_array_muxed32 = 30'd0;
reg [31:0] rhs_array_muxed33 = 32'd0;
reg [3:0] rhs_array_muxed34 = 4'd0;
reg rhs_array_muxed35 = 1'd0;
reg rhs_array_muxed36 = 1'd0;
reg rhs_array_muxed37 = 1'd0;
reg [2:0] rhs_array_muxed38 = 3'd0;
reg [1:0] rhs_array_muxed39 = 2'd0;
reg [1:0] array_muxed0 = 2'd0;
reg [12:0] array_muxed1 = 13'd0;
reg array_muxed2 = 1'd0;
reg array_muxed3 = 1'd0;
reg array_muxed4 = 1'd0;
reg array_muxed5 = 1'd0;
reg array_muxed6 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl0_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl0_regs1 = 1'd0;
wire xilinxasyncresetsynchronizerimpl;
wire xilinxasyncresetsynchronizerimpl_rst_meta;
(* register_balancing = "no", shreg_extract = "no" *) reg [3:0] xilinxmultiregimpl1_regs0 = 4'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [3:0] xilinxmultiregimpl1_regs1 = 4'd0;

assign basesoc_lm32_reset = basesoc_ctrl_reset;
assign basesoc_ctrl_bus_error = basesoc_error;
always @(*) begin
	basesoc_lm32_interrupt <= 32'd0;
	basesoc_lm32_interrupt[1] <= basesoc_timer0_irq;
	basesoc_lm32_interrupt[2] <= basesoc_uart_irq;
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
assign git_status = 159'd504445405079535129701921267392029635137768362343;
assign platform_status = 63'd7883954021876130162;
assign target_status = 63'd7089074166086762496;
assign user_led0 = leds[0];
assign user_led1 = leds[1];
assign user_led2 = leds[2];
assign user_led3 = leds[3];
assign user_led4 = leds[4];
assign user_led5 = leds[5];
assign user_led6 = leds[6];
assign user_led7 = leds[7];
always @(*) begin
	switches <= 4'd0;
	switches[0] <= (~user_sw0);
	switches[1] <= (~user_sw1);
	switches[2] <= (~user_sw2);
	switches[3] <= (~user_sw3);
end
assign leds = leds_storage;
assign bus_dat_r = sr;
always @(*) begin
	o <= 2'd0;
	oe <= 1'd0;
	spiflash2x_cs_n <= 1'd0;
	spiflash2x_clk <= 1'd0;
	status <= 1'd0;
	if (bitbang_en_storage) begin
		spiflash2x_clk <= bitbang_storage[1];
		spiflash2x_cs_n <= bitbang_storage[2];
		if (bitbang_storage[3]) begin
			oe <= 1'd0;
		end else begin
			oe <= 1'd1;
		end
		if (bitbang_storage[1]) begin
			status <= i0[1];
		end
		o <= {{1{1'd1}}, bitbang_storage[0]};
	end else begin
		spiflash2x_clk <= clk;
		spiflash2x_cs_n <= cs_n;
		o <= sr[31:30];
		oe <= dq_oe;
	end
end
assign drive_dq = d_dfi_wrdata_en;
assign dfi_p0_rddata_valid = rddata_sr[3];
assign dfi_p0_address = sdram_master_p0_address;
assign dfi_p0_bank = sdram_master_p0_bank;
assign dfi_p0_cas_n = sdram_master_p0_cas_n;
assign dfi_p0_cs_n = sdram_master_p0_cs_n;
assign dfi_p0_ras_n = sdram_master_p0_ras_n;
assign dfi_p0_we_n = sdram_master_p0_we_n;
assign dfi_p0_cke = sdram_master_p0_cke;
assign dfi_p0_odt = sdram_master_p0_odt;
assign dfi_p0_reset_n = sdram_master_p0_reset_n;
assign dfi_p0_wrdata = sdram_master_p0_wrdata;
assign dfi_p0_wrdata_en = sdram_master_p0_wrdata_en;
assign dfi_p0_wrdata_mask = sdram_master_p0_wrdata_mask;
assign dfi_p0_rddata_en = sdram_master_p0_rddata_en;
assign sdram_master_p0_rddata = dfi_p0_rddata;
assign sdram_master_p0_rddata_valid = dfi_p0_rddata_valid;
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
always @(*) begin
	sdram_master_p0_address <= 13'd0;
	sdram_master_p0_bank <= 2'd0;
	sdram_master_p0_cas_n <= 1'd1;
	sdram_master_p0_cs_n <= 1'd1;
	sdram_master_p0_ras_n <= 1'd1;
	sdram_master_p0_we_n <= 1'd1;
	sdram_master_p0_cke <= 1'd0;
	sdram_master_p0_odt <= 1'd0;
	sdram_master_p0_reset_n <= 1'd0;
	sdram_master_p0_wrdata <= 16'd0;
	sdram_master_p0_wrdata_en <= 1'd0;
	sdram_master_p0_wrdata_mask <= 2'd0;
	sdram_master_p0_rddata_en <= 1'd0;
	sdram_inti_p0_rddata <= 16'd0;
	sdram_inti_p0_rddata_valid <= 1'd0;
	sdram_slave_p0_rddata <= 16'd0;
	sdram_slave_p0_rddata_valid <= 1'd0;
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
	end
end
assign sdram_inti_p0_cke = sdram_storage[1];
assign sdram_inti_p0_odt = sdram_storage[2];
assign sdram_inti_p0_reset_n = sdram_storage[3];
always @(*) begin
	sdram_inti_p0_cas_n <= 1'd1;
	sdram_inti_p0_cs_n <= 1'd1;
	sdram_inti_p0_ras_n <= 1'd1;
	sdram_inti_p0_we_n <= 1'd1;
	if (sdram_command_issue_re) begin
		sdram_inti_p0_cs_n <= {1{(~sdram_command_storage[0])}};
		sdram_inti_p0_we_n <= (~sdram_command_storage[1]);
		sdram_inti_p0_cas_n <= (~sdram_command_storage[2]);
		sdram_inti_p0_ras_n <= (~sdram_command_storage[3]);
	end else begin
		sdram_inti_p0_cs_n <= {1{1'd1}};
		sdram_inti_p0_we_n <= 1'd1;
		sdram_inti_p0_cas_n <= 1'd1;
		sdram_inti_p0_ras_n <= 1'd1;
	end
end
assign sdram_inti_p0_address = sdram_address_storage;
assign sdram_inti_p0_bank = sdram_baddress_storage;
assign sdram_inti_p0_wrdata_en = (sdram_command_issue_re & sdram_command_storage[4]);
assign sdram_inti_p0_rddata_en = (sdram_command_issue_re & sdram_command_storage[5]);
assign sdram_inti_p0_wrdata = sdram_wrdata_storage;
assign sdram_inti_p0_wrdata_mask = 1'd0;
assign sdram_bankmachine0_req_valid = sdram_interface_bank0_valid;
assign sdram_interface_bank0_ready = sdram_bankmachine0_req_ready;
assign sdram_bankmachine0_req_we = sdram_interface_bank0_we;
assign sdram_bankmachine0_req_addr = sdram_interface_bank0_addr;
assign sdram_interface_bank0_lock = sdram_bankmachine0_req_lock;
assign sdram_interface_bank0_wdata_ready = sdram_bankmachine0_req_wdata_ready;
assign sdram_interface_bank0_rdata_valid = sdram_bankmachine0_req_rdata_valid;
assign sdram_bankmachine1_req_valid = sdram_interface_bank1_valid;
assign sdram_interface_bank1_ready = sdram_bankmachine1_req_ready;
assign sdram_bankmachine1_req_we = sdram_interface_bank1_we;
assign sdram_bankmachine1_req_addr = sdram_interface_bank1_addr;
assign sdram_interface_bank1_lock = sdram_bankmachine1_req_lock;
assign sdram_interface_bank1_wdata_ready = sdram_bankmachine1_req_wdata_ready;
assign sdram_interface_bank1_rdata_valid = sdram_bankmachine1_req_rdata_valid;
assign sdram_bankmachine2_req_valid = sdram_interface_bank2_valid;
assign sdram_interface_bank2_ready = sdram_bankmachine2_req_ready;
assign sdram_bankmachine2_req_we = sdram_interface_bank2_we;
assign sdram_bankmachine2_req_addr = sdram_interface_bank2_addr;
assign sdram_interface_bank2_lock = sdram_bankmachine2_req_lock;
assign sdram_interface_bank2_wdata_ready = sdram_bankmachine2_req_wdata_ready;
assign sdram_interface_bank2_rdata_valid = sdram_bankmachine2_req_rdata_valid;
assign sdram_bankmachine3_req_valid = sdram_interface_bank3_valid;
assign sdram_interface_bank3_ready = sdram_bankmachine3_req_ready;
assign sdram_bankmachine3_req_we = sdram_interface_bank3_we;
assign sdram_bankmachine3_req_addr = sdram_interface_bank3_addr;
assign sdram_interface_bank3_lock = sdram_bankmachine3_req_lock;
assign sdram_interface_bank3_wdata_ready = sdram_bankmachine3_req_wdata_ready;
assign sdram_interface_bank3_rdata_valid = sdram_bankmachine3_req_rdata_valid;
assign sdram_wait = (1'd1 & (~sdram_done));
assign sdram_done = (sdram_count == 1'd0);
always @(*) begin
	sdram_seq_start <= 1'd0;
	sdram_cmd_valid <= 1'd0;
	refresher_next_state <= 2'd0;
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
assign sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_addr = sdram_bankmachine0_req_addr;
assign sdram_bankmachine0_cmd_buffer_sink_valid = sdram_bankmachine0_cmd_buffer_lookahead_source_valid;
assign sdram_bankmachine0_cmd_buffer_lookahead_source_ready = sdram_bankmachine0_cmd_buffer_sink_ready;
assign sdram_bankmachine0_cmd_buffer_sink_first = sdram_bankmachine0_cmd_buffer_lookahead_source_first;
assign sdram_bankmachine0_cmd_buffer_sink_last = sdram_bankmachine0_cmd_buffer_lookahead_source_last;
assign sdram_bankmachine0_cmd_buffer_sink_payload_we = sdram_bankmachine0_cmd_buffer_lookahead_source_payload_we;
assign sdram_bankmachine0_cmd_buffer_sink_payload_addr = sdram_bankmachine0_cmd_buffer_lookahead_source_payload_addr;
assign sdram_bankmachine0_cmd_buffer_source_ready = (sdram_bankmachine0_req_wdata_ready | sdram_bankmachine0_req_rdata_valid);
assign sdram_bankmachine0_req_lock = (sdram_bankmachine0_cmd_buffer_lookahead_source_valid | sdram_bankmachine0_cmd_buffer_source_valid);
assign sdram_bankmachine0_hit = (sdram_bankmachine0_openrow == sdram_bankmachine0_cmd_buffer_source_payload_addr[21:9]);
assign sdram_bankmachine0_cmd_payload_ba = 1'd0;
always @(*) begin
	sdram_bankmachine0_cmd_payload_a <= 13'd0;
	if (sdram_bankmachine0_sel_row_addr) begin
		sdram_bankmachine0_cmd_payload_a <= sdram_bankmachine0_cmd_buffer_source_payload_addr[21:9];
	end else begin
		sdram_bankmachine0_cmd_payload_a <= ((sdram_bankmachine0_auto_precharge <<< 4'd10) | {sdram_bankmachine0_cmd_buffer_source_payload_addr[8:0], {0{1'd0}}});
	end
end
assign sdram_bankmachine0_wait = (~((sdram_bankmachine0_cmd_valid & sdram_bankmachine0_cmd_ready) & sdram_bankmachine0_cmd_payload_is_write));
always @(*) begin
	sdram_bankmachine0_auto_precharge <= 1'd0;
	if ((sdram_bankmachine0_cmd_buffer_lookahead_source_valid & sdram_bankmachine0_cmd_buffer_source_valid)) begin
		if ((sdram_bankmachine0_cmd_buffer_lookahead_source_payload_addr[21:9] != sdram_bankmachine0_cmd_buffer_source_payload_addr[21:9])) begin
			sdram_bankmachine0_auto_precharge <= (sdram_bankmachine0_track_close == 1'd0);
		end
	end
end
assign sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_din = {sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_last, sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_first, sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_addr, sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we};
assign {sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_last, sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_first, sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_addr, sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we} = sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_dout;
assign sdram_bankmachine0_cmd_buffer_lookahead_sink_ready = sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable;
assign sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we = sdram_bankmachine0_cmd_buffer_lookahead_sink_valid;
assign sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_first = sdram_bankmachine0_cmd_buffer_lookahead_sink_first;
assign sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_last = sdram_bankmachine0_cmd_buffer_lookahead_sink_last;
assign sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we = sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_we;
assign sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_addr = sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_addr;
assign sdram_bankmachine0_cmd_buffer_lookahead_source_valid = sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable;
assign sdram_bankmachine0_cmd_buffer_lookahead_source_first = sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_first;
assign sdram_bankmachine0_cmd_buffer_lookahead_source_last = sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_last;
assign sdram_bankmachine0_cmd_buffer_lookahead_source_payload_we = sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we;
assign sdram_bankmachine0_cmd_buffer_lookahead_source_payload_addr = sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_addr;
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
	sdram_bankmachine0_cmd_payload_we <= 1'd0;
	sdram_bankmachine0_cmd_payload_is_cmd <= 1'd0;
	sdram_bankmachine0_cmd_payload_is_read <= 1'd0;
	sdram_bankmachine0_cmd_payload_is_write <= 1'd0;
	bankmachine0_next_state <= 3'd0;
	sdram_bankmachine0_req_wdata_ready <= 1'd0;
	sdram_bankmachine0_track_open <= 1'd0;
	sdram_bankmachine0_req_rdata_valid <= 1'd0;
	sdram_bankmachine0_track_close <= 1'd0;
	sdram_bankmachine0_refresh_gnt <= 1'd0;
	sdram_bankmachine0_sel_row_addr <= 1'd0;
	sdram_bankmachine0_cmd_valid <= 1'd0;
	sdram_bankmachine0_cmd_payload_cas <= 1'd0;
	sdram_bankmachine0_cmd_payload_ras <= 1'd0;
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
			sdram_bankmachine0_sel_row_addr <= 1'd1;
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
assign sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_addr = sdram_bankmachine1_req_addr;
assign sdram_bankmachine1_cmd_buffer_sink_valid = sdram_bankmachine1_cmd_buffer_lookahead_source_valid;
assign sdram_bankmachine1_cmd_buffer_lookahead_source_ready = sdram_bankmachine1_cmd_buffer_sink_ready;
assign sdram_bankmachine1_cmd_buffer_sink_first = sdram_bankmachine1_cmd_buffer_lookahead_source_first;
assign sdram_bankmachine1_cmd_buffer_sink_last = sdram_bankmachine1_cmd_buffer_lookahead_source_last;
assign sdram_bankmachine1_cmd_buffer_sink_payload_we = sdram_bankmachine1_cmd_buffer_lookahead_source_payload_we;
assign sdram_bankmachine1_cmd_buffer_sink_payload_addr = sdram_bankmachine1_cmd_buffer_lookahead_source_payload_addr;
assign sdram_bankmachine1_cmd_buffer_source_ready = (sdram_bankmachine1_req_wdata_ready | sdram_bankmachine1_req_rdata_valid);
assign sdram_bankmachine1_req_lock = (sdram_bankmachine1_cmd_buffer_lookahead_source_valid | sdram_bankmachine1_cmd_buffer_source_valid);
assign sdram_bankmachine1_hit = (sdram_bankmachine1_openrow == sdram_bankmachine1_cmd_buffer_source_payload_addr[21:9]);
assign sdram_bankmachine1_cmd_payload_ba = 1'd1;
always @(*) begin
	sdram_bankmachine1_cmd_payload_a <= 13'd0;
	if (sdram_bankmachine1_sel_row_addr) begin
		sdram_bankmachine1_cmd_payload_a <= sdram_bankmachine1_cmd_buffer_source_payload_addr[21:9];
	end else begin
		sdram_bankmachine1_cmd_payload_a <= ((sdram_bankmachine1_auto_precharge <<< 4'd10) | {sdram_bankmachine1_cmd_buffer_source_payload_addr[8:0], {0{1'd0}}});
	end
end
assign sdram_bankmachine1_wait = (~((sdram_bankmachine1_cmd_valid & sdram_bankmachine1_cmd_ready) & sdram_bankmachine1_cmd_payload_is_write));
always @(*) begin
	sdram_bankmachine1_auto_precharge <= 1'd0;
	if ((sdram_bankmachine1_cmd_buffer_lookahead_source_valid & sdram_bankmachine1_cmd_buffer_source_valid)) begin
		if ((sdram_bankmachine1_cmd_buffer_lookahead_source_payload_addr[21:9] != sdram_bankmachine1_cmd_buffer_source_payload_addr[21:9])) begin
			sdram_bankmachine1_auto_precharge <= (sdram_bankmachine1_track_close == 1'd0);
		end
	end
end
assign sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_din = {sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_last, sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_first, sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_addr, sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we};
assign {sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_last, sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_first, sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_addr, sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we} = sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_dout;
assign sdram_bankmachine1_cmd_buffer_lookahead_sink_ready = sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable;
assign sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we = sdram_bankmachine1_cmd_buffer_lookahead_sink_valid;
assign sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_first = sdram_bankmachine1_cmd_buffer_lookahead_sink_first;
assign sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_last = sdram_bankmachine1_cmd_buffer_lookahead_sink_last;
assign sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we = sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_we;
assign sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_addr = sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_addr;
assign sdram_bankmachine1_cmd_buffer_lookahead_source_valid = sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable;
assign sdram_bankmachine1_cmd_buffer_lookahead_source_first = sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_first;
assign sdram_bankmachine1_cmd_buffer_lookahead_source_last = sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_last;
assign sdram_bankmachine1_cmd_buffer_lookahead_source_payload_we = sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we;
assign sdram_bankmachine1_cmd_buffer_lookahead_source_payload_addr = sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_addr;
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
	sdram_bankmachine1_cmd_payload_is_write <= 1'd0;
	sdram_bankmachine1_req_wdata_ready <= 1'd0;
	sdram_bankmachine1_track_open <= 1'd0;
	sdram_bankmachine1_req_rdata_valid <= 1'd0;
	sdram_bankmachine1_track_close <= 1'd0;
	sdram_bankmachine1_refresh_gnt <= 1'd0;
	sdram_bankmachine1_sel_row_addr <= 1'd0;
	sdram_bankmachine1_cmd_valid <= 1'd0;
	bankmachine1_next_state <= 3'd0;
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
			sdram_bankmachine1_sel_row_addr <= 1'd1;
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
assign sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_addr = sdram_bankmachine2_req_addr;
assign sdram_bankmachine2_cmd_buffer_sink_valid = sdram_bankmachine2_cmd_buffer_lookahead_source_valid;
assign sdram_bankmachine2_cmd_buffer_lookahead_source_ready = sdram_bankmachine2_cmd_buffer_sink_ready;
assign sdram_bankmachine2_cmd_buffer_sink_first = sdram_bankmachine2_cmd_buffer_lookahead_source_first;
assign sdram_bankmachine2_cmd_buffer_sink_last = sdram_bankmachine2_cmd_buffer_lookahead_source_last;
assign sdram_bankmachine2_cmd_buffer_sink_payload_we = sdram_bankmachine2_cmd_buffer_lookahead_source_payload_we;
assign sdram_bankmachine2_cmd_buffer_sink_payload_addr = sdram_bankmachine2_cmd_buffer_lookahead_source_payload_addr;
assign sdram_bankmachine2_cmd_buffer_source_ready = (sdram_bankmachine2_req_wdata_ready | sdram_bankmachine2_req_rdata_valid);
assign sdram_bankmachine2_req_lock = (sdram_bankmachine2_cmd_buffer_lookahead_source_valid | sdram_bankmachine2_cmd_buffer_source_valid);
assign sdram_bankmachine2_hit = (sdram_bankmachine2_openrow == sdram_bankmachine2_cmd_buffer_source_payload_addr[21:9]);
assign sdram_bankmachine2_cmd_payload_ba = 2'd2;
always @(*) begin
	sdram_bankmachine2_cmd_payload_a <= 13'd0;
	if (sdram_bankmachine2_sel_row_addr) begin
		sdram_bankmachine2_cmd_payload_a <= sdram_bankmachine2_cmd_buffer_source_payload_addr[21:9];
	end else begin
		sdram_bankmachine2_cmd_payload_a <= ((sdram_bankmachine2_auto_precharge <<< 4'd10) | {sdram_bankmachine2_cmd_buffer_source_payload_addr[8:0], {0{1'd0}}});
	end
end
assign sdram_bankmachine2_wait = (~((sdram_bankmachine2_cmd_valid & sdram_bankmachine2_cmd_ready) & sdram_bankmachine2_cmd_payload_is_write));
always @(*) begin
	sdram_bankmachine2_auto_precharge <= 1'd0;
	if ((sdram_bankmachine2_cmd_buffer_lookahead_source_valid & sdram_bankmachine2_cmd_buffer_source_valid)) begin
		if ((sdram_bankmachine2_cmd_buffer_lookahead_source_payload_addr[21:9] != sdram_bankmachine2_cmd_buffer_source_payload_addr[21:9])) begin
			sdram_bankmachine2_auto_precharge <= (sdram_bankmachine2_track_close == 1'd0);
		end
	end
end
assign sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_din = {sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_last, sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_first, sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_addr, sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we};
assign {sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_last, sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_first, sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_addr, sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we} = sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_dout;
assign sdram_bankmachine2_cmd_buffer_lookahead_sink_ready = sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable;
assign sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we = sdram_bankmachine2_cmd_buffer_lookahead_sink_valid;
assign sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_first = sdram_bankmachine2_cmd_buffer_lookahead_sink_first;
assign sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_last = sdram_bankmachine2_cmd_buffer_lookahead_sink_last;
assign sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we = sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_we;
assign sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_addr = sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_addr;
assign sdram_bankmachine2_cmd_buffer_lookahead_source_valid = sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable;
assign sdram_bankmachine2_cmd_buffer_lookahead_source_first = sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_first;
assign sdram_bankmachine2_cmd_buffer_lookahead_source_last = sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_last;
assign sdram_bankmachine2_cmd_buffer_lookahead_source_payload_we = sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we;
assign sdram_bankmachine2_cmd_buffer_lookahead_source_payload_addr = sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_addr;
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
	sdram_bankmachine2_sel_row_addr <= 1'd0;
	sdram_bankmachine2_cmd_valid <= 1'd0;
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
			sdram_bankmachine2_sel_row_addr <= 1'd1;
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
assign sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_addr = sdram_bankmachine3_req_addr;
assign sdram_bankmachine3_cmd_buffer_sink_valid = sdram_bankmachine3_cmd_buffer_lookahead_source_valid;
assign sdram_bankmachine3_cmd_buffer_lookahead_source_ready = sdram_bankmachine3_cmd_buffer_sink_ready;
assign sdram_bankmachine3_cmd_buffer_sink_first = sdram_bankmachine3_cmd_buffer_lookahead_source_first;
assign sdram_bankmachine3_cmd_buffer_sink_last = sdram_bankmachine3_cmd_buffer_lookahead_source_last;
assign sdram_bankmachine3_cmd_buffer_sink_payload_we = sdram_bankmachine3_cmd_buffer_lookahead_source_payload_we;
assign sdram_bankmachine3_cmd_buffer_sink_payload_addr = sdram_bankmachine3_cmd_buffer_lookahead_source_payload_addr;
assign sdram_bankmachine3_cmd_buffer_source_ready = (sdram_bankmachine3_req_wdata_ready | sdram_bankmachine3_req_rdata_valid);
assign sdram_bankmachine3_req_lock = (sdram_bankmachine3_cmd_buffer_lookahead_source_valid | sdram_bankmachine3_cmd_buffer_source_valid);
assign sdram_bankmachine3_hit = (sdram_bankmachine3_openrow == sdram_bankmachine3_cmd_buffer_source_payload_addr[21:9]);
assign sdram_bankmachine3_cmd_payload_ba = 2'd3;
always @(*) begin
	sdram_bankmachine3_cmd_payload_a <= 13'd0;
	if (sdram_bankmachine3_sel_row_addr) begin
		sdram_bankmachine3_cmd_payload_a <= sdram_bankmachine3_cmd_buffer_source_payload_addr[21:9];
	end else begin
		sdram_bankmachine3_cmd_payload_a <= ((sdram_bankmachine3_auto_precharge <<< 4'd10) | {sdram_bankmachine3_cmd_buffer_source_payload_addr[8:0], {0{1'd0}}});
	end
end
assign sdram_bankmachine3_wait = (~((sdram_bankmachine3_cmd_valid & sdram_bankmachine3_cmd_ready) & sdram_bankmachine3_cmd_payload_is_write));
always @(*) begin
	sdram_bankmachine3_auto_precharge <= 1'd0;
	if ((sdram_bankmachine3_cmd_buffer_lookahead_source_valid & sdram_bankmachine3_cmd_buffer_source_valid)) begin
		if ((sdram_bankmachine3_cmd_buffer_lookahead_source_payload_addr[21:9] != sdram_bankmachine3_cmd_buffer_source_payload_addr[21:9])) begin
			sdram_bankmachine3_auto_precharge <= (sdram_bankmachine3_track_close == 1'd0);
		end
	end
end
assign sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_din = {sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_last, sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_first, sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_addr, sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we};
assign {sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_last, sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_first, sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_addr, sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we} = sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_dout;
assign sdram_bankmachine3_cmd_buffer_lookahead_sink_ready = sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable;
assign sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we = sdram_bankmachine3_cmd_buffer_lookahead_sink_valid;
assign sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_first = sdram_bankmachine3_cmd_buffer_lookahead_sink_first;
assign sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_last = sdram_bankmachine3_cmd_buffer_lookahead_sink_last;
assign sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we = sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_we;
assign sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_addr = sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_addr;
assign sdram_bankmachine3_cmd_buffer_lookahead_source_valid = sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable;
assign sdram_bankmachine3_cmd_buffer_lookahead_source_first = sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_first;
assign sdram_bankmachine3_cmd_buffer_lookahead_source_last = sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_last;
assign sdram_bankmachine3_cmd_buffer_lookahead_source_payload_we = sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we;
assign sdram_bankmachine3_cmd_buffer_lookahead_source_payload_addr = sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_addr;
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
	sdram_bankmachine3_cmd_valid <= 1'd0;
	sdram_bankmachine3_cmd_payload_cas <= 1'd0;
	sdram_bankmachine3_cmd_payload_ras <= 1'd0;
	sdram_bankmachine3_cmd_payload_we <= 1'd0;
	sdram_bankmachine3_cmd_payload_is_cmd <= 1'd0;
	sdram_bankmachine3_cmd_payload_is_read <= 1'd0;
	sdram_bankmachine3_cmd_payload_is_write <= 1'd0;
	bankmachine3_next_state <= 3'd0;
	sdram_bankmachine3_req_wdata_ready <= 1'd0;
	sdram_bankmachine3_track_open <= 1'd0;
	sdram_bankmachine3_req_rdata_valid <= 1'd0;
	sdram_bankmachine3_track_close <= 1'd0;
	sdram_bankmachine3_refresh_gnt <= 1'd0;
	sdram_bankmachine3_sel_row_addr <= 1'd0;
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
			sdram_bankmachine3_sel_row_addr <= 1'd1;
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
assign sdram_choose_cmd_want_cmds = 1'd1;
assign sdram_choose_req_want_cmds = 1'd1;
assign sdram_choose_req_want_activates = sdram_ras_allowed;
assign sdram_trrdcon_valid = ((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & ((sdram_choose_cmd_cmd_payload_ras & (~sdram_choose_cmd_cmd_payload_cas)) & (~sdram_choose_cmd_cmd_payload_we)));
assign sdram_tfawcon_valid = ((sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_ready) & ((sdram_choose_cmd_cmd_payload_ras & (~sdram_choose_cmd_cmd_payload_cas)) & (~sdram_choose_cmd_cmd_payload_we)));
assign sdram_ras_allowed = (sdram_trrdcon_ready & sdram_tfawcon_ready);
assign sdram_bankmachine0_ras_allowed = sdram_ras_allowed;
assign sdram_bankmachine1_ras_allowed = sdram_ras_allowed;
assign sdram_bankmachine2_ras_allowed = sdram_ras_allowed;
assign sdram_bankmachine3_ras_allowed = sdram_ras_allowed;
assign sdram_tccdcon_valid = ((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & (sdram_choose_req_cmd_payload_is_write | sdram_choose_req_cmd_payload_is_read));
assign sdram_cas_allowed = sdram_tccdcon_ready;
assign sdram_bankmachine0_cas_allowed = sdram_cas_allowed;
assign sdram_bankmachine1_cas_allowed = sdram_cas_allowed;
assign sdram_bankmachine2_cas_allowed = sdram_cas_allowed;
assign sdram_bankmachine3_cas_allowed = sdram_cas_allowed;
assign sdram_twtrcon_valid = ((sdram_choose_req_cmd_valid & sdram_choose_req_cmd_ready) & sdram_choose_req_cmd_payload_is_write);
assign sdram_read_available = ((((sdram_bankmachine0_cmd_valid & sdram_bankmachine0_cmd_payload_is_read) | (sdram_bankmachine1_cmd_valid & sdram_bankmachine1_cmd_payload_is_read)) | (sdram_bankmachine2_cmd_valid & sdram_bankmachine2_cmd_payload_is_read)) | (sdram_bankmachine3_cmd_valid & sdram_bankmachine3_cmd_payload_is_read));
assign sdram_write_available = ((((sdram_bankmachine0_cmd_valid & sdram_bankmachine0_cmd_payload_is_write) | (sdram_bankmachine1_cmd_valid & sdram_bankmachine1_cmd_payload_is_write)) | (sdram_bankmachine2_cmd_valid & sdram_bankmachine2_cmd_payload_is_write)) | (sdram_bankmachine3_cmd_valid & sdram_bankmachine3_cmd_payload_is_write));
assign sdram_max_time0 = (sdram_time0 == 1'd0);
assign sdram_max_time1 = (sdram_time1 == 1'd0);
assign sdram_bankmachine0_refresh_req = sdram_cmd_valid;
assign sdram_bankmachine1_refresh_req = sdram_cmd_valid;
assign sdram_bankmachine2_refresh_req = sdram_cmd_valid;
assign sdram_bankmachine3_refresh_req = sdram_cmd_valid;
assign sdram_go_to_refresh = (((sdram_bankmachine0_refresh_gnt & sdram_bankmachine1_refresh_gnt) & sdram_bankmachine2_refresh_gnt) & sdram_bankmachine3_refresh_gnt);
assign sdram_interface_rdata = {sdram_dfi_p0_rddata};
assign {sdram_dfi_p0_wrdata} = sdram_interface_wdata;
assign {sdram_dfi_p0_wrdata_mask} = (~sdram_interface_wdata_we);
always @(*) begin
	sdram_choose_cmd_valids <= 4'd0;
	sdram_choose_cmd_valids[0] <= (sdram_bankmachine0_cmd_valid & (((sdram_bankmachine0_cmd_payload_is_cmd & sdram_choose_cmd_want_cmds) & ((~((sdram_bankmachine0_cmd_payload_ras & (~sdram_bankmachine0_cmd_payload_cas)) & (~sdram_bankmachine0_cmd_payload_we))) | sdram_choose_cmd_want_activates)) | ((sdram_bankmachine0_cmd_payload_is_read == sdram_choose_cmd_want_reads) & (sdram_bankmachine0_cmd_payload_is_write == sdram_choose_cmd_want_writes))));
	sdram_choose_cmd_valids[1] <= (sdram_bankmachine1_cmd_valid & (((sdram_bankmachine1_cmd_payload_is_cmd & sdram_choose_cmd_want_cmds) & ((~((sdram_bankmachine1_cmd_payload_ras & (~sdram_bankmachine1_cmd_payload_cas)) & (~sdram_bankmachine1_cmd_payload_we))) | sdram_choose_cmd_want_activates)) | ((sdram_bankmachine1_cmd_payload_is_read == sdram_choose_cmd_want_reads) & (sdram_bankmachine1_cmd_payload_is_write == sdram_choose_cmd_want_writes))));
	sdram_choose_cmd_valids[2] <= (sdram_bankmachine2_cmd_valid & (((sdram_bankmachine2_cmd_payload_is_cmd & sdram_choose_cmd_want_cmds) & ((~((sdram_bankmachine2_cmd_payload_ras & (~sdram_bankmachine2_cmd_payload_cas)) & (~sdram_bankmachine2_cmd_payload_we))) | sdram_choose_cmd_want_activates)) | ((sdram_bankmachine2_cmd_payload_is_read == sdram_choose_cmd_want_reads) & (sdram_bankmachine2_cmd_payload_is_write == sdram_choose_cmd_want_writes))));
	sdram_choose_cmd_valids[3] <= (sdram_bankmachine3_cmd_valid & (((sdram_bankmachine3_cmd_payload_is_cmd & sdram_choose_cmd_want_cmds) & ((~((sdram_bankmachine3_cmd_payload_ras & (~sdram_bankmachine3_cmd_payload_cas)) & (~sdram_bankmachine3_cmd_payload_we))) | sdram_choose_cmd_want_activates)) | ((sdram_bankmachine3_cmd_payload_is_read == sdram_choose_cmd_want_reads) & (sdram_bankmachine3_cmd_payload_is_write == sdram_choose_cmd_want_writes))));
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
	sdram_choose_req_valids <= 4'd0;
	sdram_choose_req_valids[0] <= (sdram_bankmachine0_cmd_valid & (((sdram_bankmachine0_cmd_payload_is_cmd & sdram_choose_req_want_cmds) & ((~((sdram_bankmachine0_cmd_payload_ras & (~sdram_bankmachine0_cmd_payload_cas)) & (~sdram_bankmachine0_cmd_payload_we))) | sdram_choose_req_want_activates)) | ((sdram_bankmachine0_cmd_payload_is_read == sdram_choose_req_want_reads) & (sdram_bankmachine0_cmd_payload_is_write == sdram_choose_req_want_writes))));
	sdram_choose_req_valids[1] <= (sdram_bankmachine1_cmd_valid & (((sdram_bankmachine1_cmd_payload_is_cmd & sdram_choose_req_want_cmds) & ((~((sdram_bankmachine1_cmd_payload_ras & (~sdram_bankmachine1_cmd_payload_cas)) & (~sdram_bankmachine1_cmd_payload_we))) | sdram_choose_req_want_activates)) | ((sdram_bankmachine1_cmd_payload_is_read == sdram_choose_req_want_reads) & (sdram_bankmachine1_cmd_payload_is_write == sdram_choose_req_want_writes))));
	sdram_choose_req_valids[2] <= (sdram_bankmachine2_cmd_valid & (((sdram_bankmachine2_cmd_payload_is_cmd & sdram_choose_req_want_cmds) & ((~((sdram_bankmachine2_cmd_payload_ras & (~sdram_bankmachine2_cmd_payload_cas)) & (~sdram_bankmachine2_cmd_payload_we))) | sdram_choose_req_want_activates)) | ((sdram_bankmachine2_cmd_payload_is_read == sdram_choose_req_want_reads) & (sdram_bankmachine2_cmd_payload_is_write == sdram_choose_req_want_writes))));
	sdram_choose_req_valids[3] <= (sdram_bankmachine3_cmd_valid & (((sdram_bankmachine3_cmd_payload_is_cmd & sdram_choose_req_want_cmds) & ((~((sdram_bankmachine3_cmd_payload_ras & (~sdram_bankmachine3_cmd_payload_cas)) & (~sdram_bankmachine3_cmd_payload_we))) | sdram_choose_req_want_activates)) | ((sdram_bankmachine3_cmd_payload_is_read == sdram_choose_req_want_reads) & (sdram_bankmachine3_cmd_payload_is_write == sdram_choose_req_want_writes))));
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
assign sdram_choose_req_ce = sdram_choose_req_cmd_ready;
assign sdram_dfi_p0_reset_n = 1'd1;
assign sdram_dfi_p0_cke = {1{sdram_steerer0}};
assign sdram_dfi_p0_odt = {1{sdram_steerer1}};
always @(*) begin
	sdram_choose_cmd_cmd_ready <= 1'd0;
	multiplexer_next_state <= 3'd0;
	sdram_cmd_ready <= 1'd0;
	sdram_choose_req_want_reads <= 1'd0;
	sdram_choose_req_want_writes <= 1'd0;
	sdram_en0 <= 1'd0;
	sdram_choose_req_cmd_ready <= 1'd0;
	sdram_en1 <= 1'd0;
	sdram_choose_cmd_want_activates <= 1'd0;
	sdram_steerer_sel <= 2'd0;
	sdram_choose_cmd_want_activates <= sdram_ras_allowed;
	multiplexer_next_state <= multiplexer_state;
	case (multiplexer_state)
		1'd1: begin
			sdram_en1 <= 1'd1;
			sdram_choose_req_want_writes <= 1'd1;
			sdram_choose_cmd_want_activates <= sdram_ras_allowed;
			sdram_choose_cmd_cmd_ready <= ((~((sdram_choose_cmd_cmd_payload_ras & (~sdram_choose_cmd_cmd_payload_cas)) & (~sdram_choose_cmd_cmd_payload_we))) | sdram_ras_allowed);
			sdram_choose_req_cmd_ready <= 1'd1;
			sdram_steerer_sel <= 2'd2;
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
			sdram_steerer_sel <= 2'd3;
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
			sdram_steerer_sel <= 2'd2;
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
assign cba = port_cmd_payload_addr[10:9];
assign rca = {port_cmd_payload_addr[23:11], port_cmd_payload_addr[8:0]};
assign roundrobin0_request = {(((cba == 1'd0) & (~(((1'd0 | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin0_ce = ((~sdram_interface_bank0_valid) & (~sdram_interface_bank0_lock));
assign sdram_interface_bank0_addr = rhs_array_muxed12;
assign sdram_interface_bank0_we = rhs_array_muxed13;
assign sdram_interface_bank0_valid = rhs_array_muxed14;
assign roundrobin1_request = {(((cba == 1'd1) & (~(((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin1_ce = ((~sdram_interface_bank1_valid) & (~sdram_interface_bank1_lock));
assign sdram_interface_bank1_addr = rhs_array_muxed15;
assign sdram_interface_bank1_we = rhs_array_muxed16;
assign sdram_interface_bank1_valid = rhs_array_muxed17;
assign roundrobin2_request = {(((cba == 2'd2) & (~(((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin2_ce = ((~sdram_interface_bank2_valid) & (~sdram_interface_bank2_lock));
assign sdram_interface_bank2_addr = rhs_array_muxed18;
assign sdram_interface_bank2_we = rhs_array_muxed19;
assign sdram_interface_bank2_valid = rhs_array_muxed20;
assign roundrobin3_request = {(((cba == 2'd3) & (~(((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))))) & port_cmd_valid)};
assign roundrobin3_ce = ((~sdram_interface_bank3_valid) & (~sdram_interface_bank3_lock));
assign sdram_interface_bank3_addr = rhs_array_muxed21;
assign sdram_interface_bank3_we = rhs_array_muxed22;
assign sdram_interface_bank3_valid = rhs_array_muxed23;
assign port_cmd_ready = ((((1'd0 | (((roundrobin0_grant == 1'd0) & ((cba == 1'd0) & (~(((1'd0 | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0)))))) & sdram_interface_bank0_ready)) | (((roundrobin1_grant == 1'd0) & ((cba == 1'd1) & (~(((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0)))))) & sdram_interface_bank1_ready)) | (((roundrobin2_grant == 1'd0) & ((cba == 2'd2) & (~(((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0)))))) & sdram_interface_bank2_ready)) | (((roundrobin3_grant == 1'd0) & ((cba == 2'd3) & (~(((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0)))))) & sdram_interface_bank3_ready));
assign port_wdata_ready = new_master_wdata_ready;
assign port_rdata_valid = new_master_rdata_valid4;
always @(*) begin
	sdram_interface_wdata_we <= 2'd0;
	sdram_interface_wdata <= 16'd0;
	case ({new_master_wdata_ready})
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
assign cache_data_port_adr = interface0_wb_sdram_adr[10:0];
always @(*) begin
	cache_data_port_dat_w <= 32'd0;
	cache_data_port_we <= 4'd0;
	if (cache_write_from_slave) begin
		cache_data_port_dat_w <= {({16{(cache == 1'd1)}} & dat_r), ({16{(cache == 1'd0)}} & dat_r)};
		cache_data_port_we <= {({2{(cache == 1'd1)}} & {2{1'd1}}), ({2{(cache == 1'd0)}} & {2{1'd1}})};
	end else begin
		cache_data_port_dat_w <= {1{interface0_wb_sdram_dat_w}};
		if ((((interface0_wb_sdram_cyc & interface0_wb_sdram_stb) & interface0_wb_sdram_we) & interface0_wb_sdram_ack)) begin
			cache_data_port_we <= interface0_wb_sdram_sel;
		end
	end
end
always @(*) begin
	dat_w <= 16'd0;
	case (cache)
		1'd0: begin
			dat_w <= cache_data_port_dat_r[15:0];
		end
		default: begin
			dat_w <= cache_data_port_dat_r[31:16];
		end
	endcase
end
assign sel = 2'd3;
assign interface0_wb_sdram_dat_r = cache_data_port_dat_r;
assign {cache_tag_do_dirty, cache_tag_do_tag} = cache_tag_port_dat_r;
assign cache_tag_port_dat_w = {cache_tag_di_dirty, cache_tag_di_tag};
assign cache_tag_port_adr = interface0_wb_sdram_adr[10:0];
assign cache_tag_di_tag = interface0_wb_sdram_adr[29:11];
assign adr = {cache_tag_do_tag, interface0_wb_sdram_adr[10:0], cache};
always @(*) begin
	interface0_wb_sdram_ack <= 1'd0;
	cyc <= 1'd0;
	cache_tag_port_we <= 1'd0;
	stb <= 1'd0;
	we <= 1'd0;
	cache_tag_di_dirty <= 1'd0;
	cache_word_clr <= 1'd0;
	cache_word_inc <= 1'd0;
	cache_next_state <= 3'd0;
	cache_write_from_slave <= 1'd0;
	cache_next_state <= cache_state;
	case (cache_state)
		1'd1: begin
			cache_word_clr <= 1'd1;
			if ((cache_tag_do_tag == interface0_wb_sdram_adr[29:11])) begin
				interface0_wb_sdram_ack <= 1'd1;
				if (interface0_wb_sdram_we) begin
					cache_tag_di_dirty <= 1'd1;
					cache_tag_port_we <= 1'd1;
				end
				cache_next_state <= 1'd0;
			end else begin
				if (cache_tag_do_dirty) begin
					cache_next_state <= 2'd2;
				end else begin
					cache_next_state <= 2'd3;
				end
			end
		end
		2'd2: begin
			stb <= 1'd1;
			cyc <= 1'd1;
			we <= 1'd1;
			if (ack) begin
				cache_word_inc <= 1'd1;
				if ((cache == 1'd1)) begin
					cache_next_state <= 2'd3;
				end
			end
		end
		2'd3: begin
			cache_tag_port_we <= 1'd1;
			cache_word_clr <= 1'd1;
			cache_next_state <= 3'd4;
		end
		3'd4: begin
			stb <= 1'd1;
			cyc <= 1'd1;
			we <= 1'd0;
			if (ack) begin
				cache_write_from_slave <= 1'd1;
				cache_word_inc <= 1'd1;
				if ((cache == 1'd1)) begin
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
assign port_cmd_payload_addr = adr;
assign port_wdata_payload_we = sel;
assign port_wdata_payload_data = dat_w;
assign dat_r = port_rdata_payload_data;
always @(*) begin
	ack <= 1'd0;
	port_rdata_ready <= 1'd0;
	litedramwishbone2native_next_state <= 2'd0;
	port_cmd_valid <= 1'd0;
	port_cmd_payload_we <= 1'd0;
	port_wdata_valid <= 1'd0;
	litedramwishbone2native_next_state <= litedramwishbone2native_state;
	case (litedramwishbone2native_state)
		1'd1: begin
			port_cmd_valid <= 1'd1;
			port_cmd_payload_we <= we;
			if (port_cmd_ready) begin
				if (we) begin
					litedramwishbone2native_next_state <= 2'd2;
				end else begin
					litedramwishbone2native_next_state <= 2'd3;
				end
			end
		end
		2'd2: begin
			port_wdata_valid <= 1'd1;
			if (port_wdata_ready) begin
				ack <= 1'd1;
				litedramwishbone2native_next_state <= 1'd0;
			end
		end
		2'd3: begin
			port_rdata_ready <= 1'd1;
			if (port_rdata_valid) begin
				ack <= 1'd1;
				litedramwishbone2native_next_state <= 1'd0;
			end
		end
		default: begin
			if ((cyc & stb)) begin
				litedramwishbone2native_next_state <= 1'd1;
			end
		end
	endcase
end
assign interface0_wb_sdram_adr = rhs_array_muxed24;
assign interface0_wb_sdram_dat_w = rhs_array_muxed25;
assign interface0_wb_sdram_sel = rhs_array_muxed26;
assign interface0_wb_sdram_cyc = rhs_array_muxed27;
assign interface0_wb_sdram_stb = rhs_array_muxed28;
assign interface0_wb_sdram_we = rhs_array_muxed29;
assign interface0_wb_sdram_cti = rhs_array_muxed30;
assign interface0_wb_sdram_bte = rhs_array_muxed31;
assign interface1_wb_sdram_dat_r = interface0_wb_sdram_dat_r;
assign interface1_wb_sdram_ack = (interface0_wb_sdram_ack & (wb_sdram_con_grant == 1'd0));
assign interface1_wb_sdram_err = (interface0_wb_sdram_err & (wb_sdram_con_grant == 1'd0));
assign wb_sdram_con_request = {interface1_wb_sdram_cyc};
assign wb_sdram_con_grant = 1'd0;
assign basesoc_shared_adr = rhs_array_muxed32;
assign basesoc_shared_dat_w = rhs_array_muxed33;
assign basesoc_shared_sel = rhs_array_muxed34;
assign basesoc_shared_cyc = rhs_array_muxed35;
assign basesoc_shared_stb = rhs_array_muxed36;
assign basesoc_shared_we = rhs_array_muxed37;
assign basesoc_shared_cti = rhs_array_muxed38;
assign basesoc_shared_bte = rhs_array_muxed39;
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
assign basesoc_shared_err = ((((basesoc_rom_bus_err | basesoc_sram_bus_err) | basesoc_bus_wishbone_err) | bus_err) | interface1_wb_sdram_err);
assign basesoc_wait = ((basesoc_shared_stb & basesoc_shared_cyc) & (~basesoc_shared_ack));
always @(*) begin
	basesoc_shared_dat_r <= 32'd0;
	basesoc_error <= 1'd0;
	basesoc_shared_ack <= 1'd0;
	basesoc_shared_ack <= ((((basesoc_rom_bus_ack | basesoc_sram_bus_ack) | basesoc_bus_wishbone_ack) | bus_ack) | interface1_wb_sdram_ack);
	basesoc_shared_dat_r <= ((((({32{basesoc_slave_sel_r[0]}} & basesoc_rom_bus_dat_r) | ({32{basesoc_slave_sel_r[1]}} & basesoc_sram_bus_dat_r0)) | ({32{basesoc_slave_sel_r[2]}} & basesoc_bus_wishbone_dat_r)) | ({32{basesoc_slave_sel_r[3]}} & bus_dat_r)) | ({32{basesoc_slave_sel_r[4]}} & interface1_wb_sdram_dat_r));
	if (basesoc_done) begin
		basesoc_shared_dat_r <= 32'd4294967295;
		basesoc_shared_ack <= 1'd1;
		basesoc_error <= 1'd1;
	end
end
assign basesoc_done = (basesoc_count == 1'd0);
assign basesoc_csrbank0_sel = (basesoc_interface0_bank_bus_adr[13:9] == 4'd11);
assign basesoc_csrbank0_leds_out0_r = basesoc_interface0_bank_bus_dat_w[7:0];
assign basesoc_csrbank0_leds_out0_re = ((basesoc_csrbank0_sel & basesoc_interface0_bank_bus_we) & (basesoc_interface0_bank_bus_adr[0] == 1'd0));
assign basesoc_csrbank0_switches_in_r = basesoc_interface0_bank_bus_dat_w[3:0];
assign basesoc_csrbank0_switches_in_re = ((basesoc_csrbank0_sel & basesoc_interface0_bank_bus_we) & (basesoc_interface0_bank_bus_adr[0] == 1'd1));
assign leds_storage = leds_storage_full[7:0];
assign basesoc_csrbank0_leds_out0_w = leds_storage_full[7:0];
assign basesoc_csrbank0_switches_in_w = switches_status[3:0];
assign basesoc_csrbank1_sel = (basesoc_interface1_bank_bus_adr[13:9] == 1'd0);
assign basesoc_ctrl_reset_reset_r = basesoc_interface1_bank_bus_dat_w[0];
assign basesoc_ctrl_reset_reset_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[3:0] == 1'd0));
assign basesoc_csrbank1_scratch3_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_scratch3_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[3:0] == 1'd1));
assign basesoc_csrbank1_scratch2_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_scratch2_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[3:0] == 2'd2));
assign basesoc_csrbank1_scratch1_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_scratch1_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[3:0] == 2'd3));
assign basesoc_csrbank1_scratch0_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_scratch0_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[3:0] == 3'd4));
assign basesoc_csrbank1_bus_errors3_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_bus_errors3_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[3:0] == 3'd5));
assign basesoc_csrbank1_bus_errors2_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_bus_errors2_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[3:0] == 3'd6));
assign basesoc_csrbank1_bus_errors1_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_bus_errors1_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[3:0] == 3'd7));
assign basesoc_csrbank1_bus_errors0_r = basesoc_interface1_bank_bus_dat_w[7:0];
assign basesoc_csrbank1_bus_errors0_re = ((basesoc_csrbank1_sel & basesoc_interface1_bank_bus_we) & (basesoc_interface1_bank_bus_adr[3:0] == 4'd8));
assign basesoc_ctrl_storage = basesoc_ctrl_storage_full[31:0];
assign basesoc_csrbank1_scratch3_w = basesoc_ctrl_storage_full[31:24];
assign basesoc_csrbank1_scratch2_w = basesoc_ctrl_storage_full[23:16];
assign basesoc_csrbank1_scratch1_w = basesoc_ctrl_storage_full[15:8];
assign basesoc_csrbank1_scratch0_w = basesoc_ctrl_storage_full[7:0];
assign basesoc_csrbank1_bus_errors3_w = basesoc_ctrl_bus_errors_status[31:24];
assign basesoc_csrbank1_bus_errors2_w = basesoc_ctrl_bus_errors_status[23:16];
assign basesoc_csrbank1_bus_errors1_w = basesoc_ctrl_bus_errors_status[15:8];
assign basesoc_csrbank1_bus_errors0_w = basesoc_ctrl_bus_errors_status[7:0];
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
assign basesoc_csrbank3_sel = (basesoc_interface3_bank_bus_adr[13:9] == 4'd8);
assign basesoc_csrbank3_dfii_control0_r = basesoc_interface3_bank_bus_dat_w[3:0];
assign basesoc_csrbank3_dfii_control0_re = ((basesoc_csrbank3_sel & basesoc_interface3_bank_bus_we) & (basesoc_interface3_bank_bus_adr[3:0] == 1'd0));
assign basesoc_csrbank3_dfii_pi0_command0_r = basesoc_interface3_bank_bus_dat_w[5:0];
assign basesoc_csrbank3_dfii_pi0_command0_re = ((basesoc_csrbank3_sel & basesoc_interface3_bank_bus_we) & (basesoc_interface3_bank_bus_adr[3:0] == 1'd1));
assign sdram_command_issue_r = basesoc_interface3_bank_bus_dat_w[0];
assign sdram_command_issue_re = ((basesoc_csrbank3_sel & basesoc_interface3_bank_bus_we) & (basesoc_interface3_bank_bus_adr[3:0] == 2'd2));
assign basesoc_csrbank3_dfii_pi0_address1_r = basesoc_interface3_bank_bus_dat_w[4:0];
assign basesoc_csrbank3_dfii_pi0_address1_re = ((basesoc_csrbank3_sel & basesoc_interface3_bank_bus_we) & (basesoc_interface3_bank_bus_adr[3:0] == 2'd3));
assign basesoc_csrbank3_dfii_pi0_address0_r = basesoc_interface3_bank_bus_dat_w[7:0];
assign basesoc_csrbank3_dfii_pi0_address0_re = ((basesoc_csrbank3_sel & basesoc_interface3_bank_bus_we) & (basesoc_interface3_bank_bus_adr[3:0] == 3'd4));
assign basesoc_csrbank3_dfii_pi0_baddress0_r = basesoc_interface3_bank_bus_dat_w[1:0];
assign basesoc_csrbank3_dfii_pi0_baddress0_re = ((basesoc_csrbank3_sel & basesoc_interface3_bank_bus_we) & (basesoc_interface3_bank_bus_adr[3:0] == 3'd5));
assign basesoc_csrbank3_dfii_pi0_wrdata1_r = basesoc_interface3_bank_bus_dat_w[7:0];
assign basesoc_csrbank3_dfii_pi0_wrdata1_re = ((basesoc_csrbank3_sel & basesoc_interface3_bank_bus_we) & (basesoc_interface3_bank_bus_adr[3:0] == 3'd6));
assign basesoc_csrbank3_dfii_pi0_wrdata0_r = basesoc_interface3_bank_bus_dat_w[7:0];
assign basesoc_csrbank3_dfii_pi0_wrdata0_re = ((basesoc_csrbank3_sel & basesoc_interface3_bank_bus_we) & (basesoc_interface3_bank_bus_adr[3:0] == 3'd7));
assign basesoc_csrbank3_dfii_pi0_rddata1_r = basesoc_interface3_bank_bus_dat_w[7:0];
assign basesoc_csrbank3_dfii_pi0_rddata1_re = ((basesoc_csrbank3_sel & basesoc_interface3_bank_bus_we) & (basesoc_interface3_bank_bus_adr[3:0] == 4'd8));
assign basesoc_csrbank3_dfii_pi0_rddata0_r = basesoc_interface3_bank_bus_dat_w[7:0];
assign basesoc_csrbank3_dfii_pi0_rddata0_re = ((basesoc_csrbank3_sel & basesoc_interface3_bank_bus_we) & (basesoc_interface3_bank_bus_adr[3:0] == 4'd9));
assign sdram_storage = sdram_storage_full[3:0];
assign basesoc_csrbank3_dfii_control0_w = sdram_storage_full[3:0];
assign sdram_command_storage = sdram_command_storage_full[5:0];
assign basesoc_csrbank3_dfii_pi0_command0_w = sdram_command_storage_full[5:0];
assign sdram_address_storage = sdram_address_storage_full[12:0];
assign basesoc_csrbank3_dfii_pi0_address1_w = sdram_address_storage_full[12:8];
assign basesoc_csrbank3_dfii_pi0_address0_w = sdram_address_storage_full[7:0];
assign sdram_baddress_storage = sdram_baddress_storage_full[1:0];
assign basesoc_csrbank3_dfii_pi0_baddress0_w = sdram_baddress_storage_full[1:0];
assign sdram_wrdata_storage = sdram_wrdata_storage_full[15:0];
assign basesoc_csrbank3_dfii_pi0_wrdata1_w = sdram_wrdata_storage_full[15:8];
assign basesoc_csrbank3_dfii_pi0_wrdata0_w = sdram_wrdata_storage_full[7:0];
assign basesoc_csrbank3_dfii_pi0_rddata1_w = sdram_status[15:8];
assign basesoc_csrbank3_dfii_pi0_rddata0_w = sdram_status[7:0];
assign basesoc_csrbank4_sel = (basesoc_interface4_bank_bus_adr[13:9] == 4'd10);
assign basesoc_csrbank4_bitbang0_r = basesoc_interface4_bank_bus_dat_w[3:0];
assign basesoc_csrbank4_bitbang0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[1:0] == 1'd0));
assign basesoc_csrbank4_miso_r = basesoc_interface4_bank_bus_dat_w[0];
assign basesoc_csrbank4_miso_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[1:0] == 1'd1));
assign basesoc_csrbank4_bitbang_en0_r = basesoc_interface4_bank_bus_dat_w[0];
assign basesoc_csrbank4_bitbang_en0_re = ((basesoc_csrbank4_sel & basesoc_interface4_bank_bus_we) & (basesoc_interface4_bank_bus_adr[1:0] == 2'd2));
assign bitbang_storage = bitbang_storage_full[3:0];
assign basesoc_csrbank4_bitbang0_w = bitbang_storage_full[3:0];
assign basesoc_csrbank4_miso_w = status;
assign bitbang_en_storage = bitbang_en_storage_full;
assign basesoc_csrbank4_bitbang_en0_w = bitbang_en_storage_full;
assign basesoc_csrbank5_sel = (basesoc_interface5_bank_bus_adr[13:9] == 3'd5);
assign basesoc_csrbank5_load3_r = basesoc_interface5_bank_bus_dat_w[7:0];
assign basesoc_csrbank5_load3_re = ((basesoc_csrbank5_sel & basesoc_interface5_bank_bus_we) & (basesoc_interface5_bank_bus_adr[4:0] == 1'd0));
assign basesoc_csrbank5_load2_r = basesoc_interface5_bank_bus_dat_w[7:0];
assign basesoc_csrbank5_load2_re = ((basesoc_csrbank5_sel & basesoc_interface5_bank_bus_we) & (basesoc_interface5_bank_bus_adr[4:0] == 1'd1));
assign basesoc_csrbank5_load1_r = basesoc_interface5_bank_bus_dat_w[7:0];
assign basesoc_csrbank5_load1_re = ((basesoc_csrbank5_sel & basesoc_interface5_bank_bus_we) & (basesoc_interface5_bank_bus_adr[4:0] == 2'd2));
assign basesoc_csrbank5_load0_r = basesoc_interface5_bank_bus_dat_w[7:0];
assign basesoc_csrbank5_load0_re = ((basesoc_csrbank5_sel & basesoc_interface5_bank_bus_we) & (basesoc_interface5_bank_bus_adr[4:0] == 2'd3));
assign basesoc_csrbank5_reload3_r = basesoc_interface5_bank_bus_dat_w[7:0];
assign basesoc_csrbank5_reload3_re = ((basesoc_csrbank5_sel & basesoc_interface5_bank_bus_we) & (basesoc_interface5_bank_bus_adr[4:0] == 3'd4));
assign basesoc_csrbank5_reload2_r = basesoc_interface5_bank_bus_dat_w[7:0];
assign basesoc_csrbank5_reload2_re = ((basesoc_csrbank5_sel & basesoc_interface5_bank_bus_we) & (basesoc_interface5_bank_bus_adr[4:0] == 3'd5));
assign basesoc_csrbank5_reload1_r = basesoc_interface5_bank_bus_dat_w[7:0];
assign basesoc_csrbank5_reload1_re = ((basesoc_csrbank5_sel & basesoc_interface5_bank_bus_we) & (basesoc_interface5_bank_bus_adr[4:0] == 3'd6));
assign basesoc_csrbank5_reload0_r = basesoc_interface5_bank_bus_dat_w[7:0];
assign basesoc_csrbank5_reload0_re = ((basesoc_csrbank5_sel & basesoc_interface5_bank_bus_we) & (basesoc_interface5_bank_bus_adr[4:0] == 3'd7));
assign basesoc_csrbank5_en0_r = basesoc_interface5_bank_bus_dat_w[0];
assign basesoc_csrbank5_en0_re = ((basesoc_csrbank5_sel & basesoc_interface5_bank_bus_we) & (basesoc_interface5_bank_bus_adr[4:0] == 4'd8));
assign basesoc_timer0_update_value_r = basesoc_interface5_bank_bus_dat_w[0];
assign basesoc_timer0_update_value_re = ((basesoc_csrbank5_sel & basesoc_interface5_bank_bus_we) & (basesoc_interface5_bank_bus_adr[4:0] == 4'd9));
assign basesoc_csrbank5_value3_r = basesoc_interface5_bank_bus_dat_w[7:0];
assign basesoc_csrbank5_value3_re = ((basesoc_csrbank5_sel & basesoc_interface5_bank_bus_we) & (basesoc_interface5_bank_bus_adr[4:0] == 4'd10));
assign basesoc_csrbank5_value2_r = basesoc_interface5_bank_bus_dat_w[7:0];
assign basesoc_csrbank5_value2_re = ((basesoc_csrbank5_sel & basesoc_interface5_bank_bus_we) & (basesoc_interface5_bank_bus_adr[4:0] == 4'd11));
assign basesoc_csrbank5_value1_r = basesoc_interface5_bank_bus_dat_w[7:0];
assign basesoc_csrbank5_value1_re = ((basesoc_csrbank5_sel & basesoc_interface5_bank_bus_we) & (basesoc_interface5_bank_bus_adr[4:0] == 4'd12));
assign basesoc_csrbank5_value0_r = basesoc_interface5_bank_bus_dat_w[7:0];
assign basesoc_csrbank5_value0_re = ((basesoc_csrbank5_sel & basesoc_interface5_bank_bus_we) & (basesoc_interface5_bank_bus_adr[4:0] == 4'd13));
assign basesoc_timer0_eventmanager_status_r = basesoc_interface5_bank_bus_dat_w[0];
assign basesoc_timer0_eventmanager_status_re = ((basesoc_csrbank5_sel & basesoc_interface5_bank_bus_we) & (basesoc_interface5_bank_bus_adr[4:0] == 4'd14));
assign basesoc_timer0_eventmanager_pending_r = basesoc_interface5_bank_bus_dat_w[0];
assign basesoc_timer0_eventmanager_pending_re = ((basesoc_csrbank5_sel & basesoc_interface5_bank_bus_we) & (basesoc_interface5_bank_bus_adr[4:0] == 4'd15));
assign basesoc_csrbank5_ev_enable0_r = basesoc_interface5_bank_bus_dat_w[0];
assign basesoc_csrbank5_ev_enable0_re = ((basesoc_csrbank5_sel & basesoc_interface5_bank_bus_we) & (basesoc_interface5_bank_bus_adr[4:0] == 5'd16));
assign basesoc_timer0_load_storage = basesoc_timer0_load_storage_full[31:0];
assign basesoc_csrbank5_load3_w = basesoc_timer0_load_storage_full[31:24];
assign basesoc_csrbank5_load2_w = basesoc_timer0_load_storage_full[23:16];
assign basesoc_csrbank5_load1_w = basesoc_timer0_load_storage_full[15:8];
assign basesoc_csrbank5_load0_w = basesoc_timer0_load_storage_full[7:0];
assign basesoc_timer0_reload_storage = basesoc_timer0_reload_storage_full[31:0];
assign basesoc_csrbank5_reload3_w = basesoc_timer0_reload_storage_full[31:24];
assign basesoc_csrbank5_reload2_w = basesoc_timer0_reload_storage_full[23:16];
assign basesoc_csrbank5_reload1_w = basesoc_timer0_reload_storage_full[15:8];
assign basesoc_csrbank5_reload0_w = basesoc_timer0_reload_storage_full[7:0];
assign basesoc_timer0_en_storage = basesoc_timer0_en_storage_full;
assign basesoc_csrbank5_en0_w = basesoc_timer0_en_storage_full;
assign basesoc_csrbank5_value3_w = basesoc_timer0_value_status[31:24];
assign basesoc_csrbank5_value2_w = basesoc_timer0_value_status[23:16];
assign basesoc_csrbank5_value1_w = basesoc_timer0_value_status[15:8];
assign basesoc_csrbank5_value0_w = basesoc_timer0_value_status[7:0];
assign basesoc_timer0_eventmanager_storage = basesoc_timer0_eventmanager_storage_full;
assign basesoc_csrbank5_ev_enable0_w = basesoc_timer0_eventmanager_storage_full;
assign basesoc_csrbank6_sel = (basesoc_interface6_bank_bus_adr[13:9] == 2'd3);
assign basesoc_uart_rxtx_r = basesoc_interface6_bank_bus_dat_w[7:0];
assign basesoc_uart_rxtx_re = ((basesoc_csrbank6_sel & basesoc_interface6_bank_bus_we) & (basesoc_interface6_bank_bus_adr[2:0] == 1'd0));
assign basesoc_csrbank6_txfull_r = basesoc_interface6_bank_bus_dat_w[0];
assign basesoc_csrbank6_txfull_re = ((basesoc_csrbank6_sel & basesoc_interface6_bank_bus_we) & (basesoc_interface6_bank_bus_adr[2:0] == 1'd1));
assign basesoc_csrbank6_rxempty_r = basesoc_interface6_bank_bus_dat_w[0];
assign basesoc_csrbank6_rxempty_re = ((basesoc_csrbank6_sel & basesoc_interface6_bank_bus_we) & (basesoc_interface6_bank_bus_adr[2:0] == 2'd2));
assign basesoc_uart_status_r = basesoc_interface6_bank_bus_dat_w[1:0];
assign basesoc_uart_status_re = ((basesoc_csrbank6_sel & basesoc_interface6_bank_bus_we) & (basesoc_interface6_bank_bus_adr[2:0] == 2'd3));
assign basesoc_uart_pending_r = basesoc_interface6_bank_bus_dat_w[1:0];
assign basesoc_uart_pending_re = ((basesoc_csrbank6_sel & basesoc_interface6_bank_bus_we) & (basesoc_interface6_bank_bus_adr[2:0] == 3'd4));
assign basesoc_csrbank6_ev_enable0_r = basesoc_interface6_bank_bus_dat_w[1:0];
assign basesoc_csrbank6_ev_enable0_re = ((basesoc_csrbank6_sel & basesoc_interface6_bank_bus_we) & (basesoc_interface6_bank_bus_adr[2:0] == 3'd5));
assign basesoc_csrbank6_txfull_w = basesoc_uart_txfull_status;
assign basesoc_csrbank6_rxempty_w = basesoc_uart_rxempty_status;
assign basesoc_uart_storage = basesoc_uart_storage_full[1:0];
assign basesoc_csrbank6_ev_enable0_w = basesoc_uart_storage_full[1:0];
assign basesoc_csrbank7_sel = (basesoc_interface7_bank_bus_adr[13:9] == 2'd2);
assign basesoc_csrbank7_tuning_word3_r = basesoc_interface7_bank_bus_dat_w[7:0];
assign basesoc_csrbank7_tuning_word3_re = ((basesoc_csrbank7_sel & basesoc_interface7_bank_bus_we) & (basesoc_interface7_bank_bus_adr[1:0] == 1'd0));
assign basesoc_csrbank7_tuning_word2_r = basesoc_interface7_bank_bus_dat_w[7:0];
assign basesoc_csrbank7_tuning_word2_re = ((basesoc_csrbank7_sel & basesoc_interface7_bank_bus_we) & (basesoc_interface7_bank_bus_adr[1:0] == 1'd1));
assign basesoc_csrbank7_tuning_word1_r = basesoc_interface7_bank_bus_dat_w[7:0];
assign basesoc_csrbank7_tuning_word1_re = ((basesoc_csrbank7_sel & basesoc_interface7_bank_bus_we) & (basesoc_interface7_bank_bus_adr[1:0] == 2'd2));
assign basesoc_csrbank7_tuning_word0_r = basesoc_interface7_bank_bus_dat_w[7:0];
assign basesoc_csrbank7_tuning_word0_re = ((basesoc_csrbank7_sel & basesoc_interface7_bank_bus_we) & (basesoc_interface7_bank_bus_adr[1:0] == 2'd3));
assign basesoc_uart_phy_storage = basesoc_uart_phy_storage_full[31:0];
assign basesoc_csrbank7_tuning_word3_w = basesoc_uart_phy_storage_full[31:24];
assign basesoc_csrbank7_tuning_word2_w = basesoc_uart_phy_storage_full[23:16];
assign basesoc_csrbank7_tuning_word1_w = basesoc_uart_phy_storage_full[15:8];
assign basesoc_csrbank7_tuning_word0_w = basesoc_uart_phy_storage_full[7:0];
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
		default: begin
			rhs_array_muxed0 <= sdram_choose_cmd_valids[3];
		end
	endcase
end
always @(*) begin
	rhs_array_muxed1 <= 13'd0;
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
		default: begin
			rhs_array_muxed1 <= sdram_bankmachine3_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed2 <= 2'd0;
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
		default: begin
			rhs_array_muxed2 <= sdram_bankmachine3_cmd_payload_ba;
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
		default: begin
			rhs_array_muxed3 <= sdram_bankmachine3_cmd_payload_is_read;
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
		default: begin
			rhs_array_muxed4 <= sdram_bankmachine3_cmd_payload_is_write;
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
		default: begin
			rhs_array_muxed5 <= sdram_bankmachine3_cmd_payload_is_cmd;
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
		default: begin
			t_array_muxed0 <= sdram_bankmachine3_cmd_payload_cas;
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
		default: begin
			t_array_muxed1 <= sdram_bankmachine3_cmd_payload_ras;
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
		default: begin
			t_array_muxed2 <= sdram_bankmachine3_cmd_payload_we;
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
		default: begin
			rhs_array_muxed6 <= sdram_choose_req_valids[3];
		end
	endcase
end
always @(*) begin
	rhs_array_muxed7 <= 13'd0;
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
		default: begin
			rhs_array_muxed7 <= sdram_bankmachine3_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed8 <= 2'd0;
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
		default: begin
			rhs_array_muxed8 <= sdram_bankmachine3_cmd_payload_ba;
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
		default: begin
			rhs_array_muxed9 <= sdram_bankmachine3_cmd_payload_is_read;
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
		default: begin
			rhs_array_muxed10 <= sdram_bankmachine3_cmd_payload_is_write;
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
		default: begin
			rhs_array_muxed11 <= sdram_bankmachine3_cmd_payload_is_cmd;
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
		default: begin
			t_array_muxed3 <= sdram_bankmachine3_cmd_payload_cas;
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
		default: begin
			t_array_muxed4 <= sdram_bankmachine3_cmd_payload_ras;
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
		default: begin
			t_array_muxed5 <= sdram_bankmachine3_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed12 <= 22'd0;
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
			rhs_array_muxed14 <= (((cba == 1'd0) & (~(((1'd0 | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))))) & port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed15 <= 22'd0;
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
			rhs_array_muxed17 <= (((cba == 1'd1) & (~(((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))))) & port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed18 <= 22'd0;
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
			rhs_array_muxed20 <= (((cba == 2'd2) & (~(((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))))) & port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed21 <= 22'd0;
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
			rhs_array_muxed23 <= (((cba == 2'd3) & (~(((1'd0 | (sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))))) & port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed24 <= 30'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed24 <= interface1_wb_sdram_adr;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed25 <= 32'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed25 <= interface1_wb_sdram_dat_w;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed26 <= 4'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed26 <= interface1_wb_sdram_sel;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed27 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed27 <= interface1_wb_sdram_cyc;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed28 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed28 <= interface1_wb_sdram_stb;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed29 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed29 <= interface1_wb_sdram_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed30 <= 3'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed30 <= interface1_wb_sdram_cti;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed31 <= 2'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed31 <= interface1_wb_sdram_bte;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed32 <= 30'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed32 <= basesoc_lm32_ibus_adr;
		end
		default: begin
			rhs_array_muxed32 <= basesoc_lm32_dbus_adr;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed33 <= 32'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed33 <= basesoc_lm32_ibus_dat_w;
		end
		default: begin
			rhs_array_muxed33 <= basesoc_lm32_dbus_dat_w;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed34 <= 4'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed34 <= basesoc_lm32_ibus_sel;
		end
		default: begin
			rhs_array_muxed34 <= basesoc_lm32_dbus_sel;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed35 <= 1'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed35 <= basesoc_lm32_ibus_cyc;
		end
		default: begin
			rhs_array_muxed35 <= basesoc_lm32_dbus_cyc;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed36 <= 1'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed36 <= basesoc_lm32_ibus_stb;
		end
		default: begin
			rhs_array_muxed36 <= basesoc_lm32_dbus_stb;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed37 <= 1'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed37 <= basesoc_lm32_ibus_we;
		end
		default: begin
			rhs_array_muxed37 <= basesoc_lm32_dbus_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed38 <= 3'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed38 <= basesoc_lm32_ibus_cti;
		end
		default: begin
			rhs_array_muxed38 <= basesoc_lm32_dbus_cti;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed39 <= 2'd0;
	case (basesoc_grant)
		1'd0: begin
			rhs_array_muxed39 <= basesoc_lm32_ibus_bte;
		end
		default: begin
			rhs_array_muxed39 <= basesoc_lm32_dbus_bte;
		end
	endcase
end
always @(*) begin
	array_muxed0 <= 2'd0;
	case (sdram_steerer_sel)
		1'd0: begin
			array_muxed0 <= sdram_nop_ba[1:0];
		end
		1'd1: begin
			array_muxed0 <= sdram_choose_cmd_cmd_payload_ba[1:0];
		end
		2'd2: begin
			array_muxed0 <= sdram_choose_req_cmd_payload_ba[1:0];
		end
		default: begin
			array_muxed0 <= sdram_cmd_payload_ba[1:0];
		end
	endcase
end
always @(*) begin
	array_muxed1 <= 13'd0;
	case (sdram_steerer_sel)
		1'd0: begin
			array_muxed1 <= sdram_nop_a;
		end
		1'd1: begin
			array_muxed1 <= sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed1 <= sdram_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed1 <= sdram_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	array_muxed2 <= 1'd0;
	case (sdram_steerer_sel)
		1'd0: begin
			array_muxed2 <= sdram_nop_cas;
		end
		1'd1: begin
			array_muxed2 <= sdram_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			array_muxed2 <= sdram_choose_req_cmd_payload_cas;
		end
		default: begin
			array_muxed2 <= sdram_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	array_muxed3 <= 1'd0;
	case (sdram_steerer_sel)
		1'd0: begin
			array_muxed3 <= sdram_nop_ras;
		end
		1'd1: begin
			array_muxed3 <= sdram_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			array_muxed3 <= sdram_choose_req_cmd_payload_ras;
		end
		default: begin
			array_muxed3 <= sdram_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	array_muxed4 <= 1'd0;
	case (sdram_steerer_sel)
		1'd0: begin
			array_muxed4 <= sdram_nop_we;
		end
		1'd1: begin
			array_muxed4 <= sdram_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			array_muxed4 <= sdram_choose_req_cmd_payload_we;
		end
		default: begin
			array_muxed4 <= sdram_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	array_muxed5 <= 1'd0;
	case (sdram_steerer_sel)
		1'd0: begin
			array_muxed5 <= 1'd0;
		end
		1'd1: begin
			array_muxed5 <= (sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed5 <= (sdram_choose_req_cmd_valid & sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed5 <= (sdram_cmd_valid & sdram_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	array_muxed6 <= 1'd0;
	case (sdram_steerer_sel)
		1'd0: begin
			array_muxed6 <= 1'd0;
		end
		1'd1: begin
			array_muxed6 <= (sdram_choose_cmd_cmd_valid & sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed6 <= (sdram_choose_req_cmd_valid & sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed6 <= (sdram_cmd_valid & sdram_cmd_payload_is_write);
		end
	endcase
end
assign basesoc_uart_phy_rx = xilinxmultiregimpl0_regs1;
assign xilinxasyncresetsynchronizerimpl = (~pll_lckd);
assign switches_status = xilinxmultiregimpl1_regs1;

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
	if (basesoc_uart_reset) begin
		basesoc_uart_tx_pending <= 1'd0;
		basesoc_uart_tx_old_trigger <= 1'd0;
		basesoc_uart_rx_pending <= 1'd0;
		basesoc_uart_rx_old_trigger <= 1'd0;
		basesoc_uart_tx_fifo_level <= 5'd0;
		basesoc_uart_tx_fifo_produce <= 4'd0;
		basesoc_uart_tx_fifo_consume <= 4'd0;
		basesoc_uart_rx_fifo_level <= 5'd0;
		basesoc_uart_rx_fifo_produce <= 4'd0;
		basesoc_uart_rx_fifo_consume <= 4'd0;
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
		sr <= {sr[29:0], dqi};
	end else begin
		i1 <= (i1 + 1'd1);
	end
	if ((((bus_cyc & bus_stb) & (i1 == 2'd3)) & (counter == 1'd0))) begin
		dq_oe <= 1'd1;
		cs_n <= 1'd0;
		sr[31:16] <= 16'd61423;
	end
	if ((counter == 6'd32)) begin
		sr[31:8] <= {bus_adr, {2{1'd0}}};
	end
	if ((counter == 7'd80)) begin
		dq_oe <= 1'd0;
	end
	if ((counter == 8'd160)) begin
		bus_ack <= 1'd1;
		cs_n <= 1'd1;
	end
	if ((counter == 8'd161)) begin
		bus_ack <= 1'd0;
	end
	if ((counter == 8'd165)) begin
	end
	if ((counter == 8'd165)) begin
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
	sdram_a <= dfi_p0_address;
	sdram_ba <= dfi_p0_bank;
	sdram_cke <= dfi_p0_cke;
	sdram_cas_n <= dfi_p0_cas_n;
	sdram_ras_n <= dfi_p0_ras_n;
	sdram_we_n <= dfi_p0_we_n;
	sdram_cs_n <= dfi_p0_cs_n;
	sd_dq_out <= dfi_p0_wrdata;
	if (dfi_p0_wrdata_en) begin
		sdram_dm <= dfi_p0_wrdata_mask;
	end else begin
		sdram_dm <= 1'd0;
	end
	dfi_p0_rddata <= sd_dq_in_ps;
	d_dfi_wrdata_en <= dfi_p0_wrdata_en;
	rddata_sr <= {rddata_sr[2:0], dfi_p0_rddata_en};
	if (sdram_inti_p0_rddata_valid) begin
		sdram_status <= sdram_inti_p0_rddata;
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
	if ((sdram_counter == 4'd8)) begin
		sdram_seq_done <= 1'd1;
	end
	if ((sdram_counter == 4'd8)) begin
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
		sdram_count <= 10'd625;
	end
	refresher_state <= refresher_next_state;
	if (sdram_bankmachine0_track_close) begin
		sdram_bankmachine0_has_openrow <= 1'd0;
	end else begin
		if (sdram_bankmachine0_track_open) begin
			sdram_bankmachine0_has_openrow <= 1'd1;
			sdram_bankmachine0_openrow <= sdram_bankmachine0_cmd_buffer_source_payload_addr[21:9];
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
		sdram_bankmachine0_cmd_buffer_source_payload_addr <= sdram_bankmachine0_cmd_buffer_sink_payload_addr;
	end
	if (sdram_bankmachine0_wait) begin
		if ((~sdram_bankmachine0_done)) begin
			sdram_bankmachine0_count <= (sdram_bankmachine0_count - 1'd1);
		end
	end else begin
		sdram_bankmachine0_count <= 2'd3;
	end
	bankmachine0_state <= bankmachine0_next_state;
	if (sdram_bankmachine1_track_close) begin
		sdram_bankmachine1_has_openrow <= 1'd0;
	end else begin
		if (sdram_bankmachine1_track_open) begin
			sdram_bankmachine1_has_openrow <= 1'd1;
			sdram_bankmachine1_openrow <= sdram_bankmachine1_cmd_buffer_source_payload_addr[21:9];
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
		sdram_bankmachine1_cmd_buffer_source_payload_addr <= sdram_bankmachine1_cmd_buffer_sink_payload_addr;
	end
	if (sdram_bankmachine1_wait) begin
		if ((~sdram_bankmachine1_done)) begin
			sdram_bankmachine1_count <= (sdram_bankmachine1_count - 1'd1);
		end
	end else begin
		sdram_bankmachine1_count <= 2'd3;
	end
	bankmachine1_state <= bankmachine1_next_state;
	if (sdram_bankmachine2_track_close) begin
		sdram_bankmachine2_has_openrow <= 1'd0;
	end else begin
		if (sdram_bankmachine2_track_open) begin
			sdram_bankmachine2_has_openrow <= 1'd1;
			sdram_bankmachine2_openrow <= sdram_bankmachine2_cmd_buffer_source_payload_addr[21:9];
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
		sdram_bankmachine2_cmd_buffer_source_payload_addr <= sdram_bankmachine2_cmd_buffer_sink_payload_addr;
	end
	if (sdram_bankmachine2_wait) begin
		if ((~sdram_bankmachine2_done)) begin
			sdram_bankmachine2_count <= (sdram_bankmachine2_count - 1'd1);
		end
	end else begin
		sdram_bankmachine2_count <= 2'd3;
	end
	bankmachine2_state <= bankmachine2_next_state;
	if (sdram_bankmachine3_track_close) begin
		sdram_bankmachine3_has_openrow <= 1'd0;
	end else begin
		if (sdram_bankmachine3_track_open) begin
			sdram_bankmachine3_has_openrow <= 1'd1;
			sdram_bankmachine3_openrow <= sdram_bankmachine3_cmd_buffer_source_payload_addr[21:9];
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
		sdram_bankmachine3_cmd_buffer_source_payload_addr <= sdram_bankmachine3_cmd_buffer_sink_payload_addr;
	end
	if (sdram_bankmachine3_wait) begin
		if ((~sdram_bankmachine3_done)) begin
			sdram_bankmachine3_count <= (sdram_bankmachine3_count - 1'd1);
		end
	end else begin
		sdram_bankmachine3_count <= 2'd3;
	end
	bankmachine3_state <= bankmachine3_next_state;
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
						if (sdram_choose_cmd_request[0]) begin
							sdram_choose_cmd_grant <= 1'd0;
						end
					end
				end
			end
			2'd2: begin
				if (sdram_choose_cmd_request[3]) begin
					sdram_choose_cmd_grant <= 2'd3;
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
			2'd3: begin
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
						if (sdram_choose_req_request[0]) begin
							sdram_choose_req_grant <= 1'd0;
						end
					end
				end
			end
			2'd2: begin
				if (sdram_choose_req_request[3]) begin
					sdram_choose_req_grant <= 2'd3;
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
			2'd3: begin
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
		endcase
	end
	sdram_dfi_p0_cs_n <= 1'd0;
	sdram_dfi_p0_bank <= array_muxed0;
	sdram_dfi_p0_address <= array_muxed1;
	sdram_dfi_p0_cas_n <= (~array_muxed2);
	sdram_dfi_p0_ras_n <= (~array_muxed3);
	sdram_dfi_p0_we_n <= (~array_muxed4);
	sdram_dfi_p0_rddata_en <= array_muxed5;
	sdram_dfi_p0_wrdata_en <= array_muxed6;
	if (sdram_twtrcon_valid) begin
		sdram_twtrcon_count <= 1'd0;
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
	new_master_wdata_ready <= ((((1'd0 | ((roundrobin0_grant == 1'd0) & sdram_interface_bank0_wdata_ready)) | ((roundrobin1_grant == 1'd0) & sdram_interface_bank1_wdata_ready)) | ((roundrobin2_grant == 1'd0) & sdram_interface_bank2_wdata_ready)) | ((roundrobin3_grant == 1'd0) & sdram_interface_bank3_wdata_ready));
	new_master_rdata_valid0 <= ((((1'd0 | ((roundrobin0_grant == 1'd0) & sdram_interface_bank0_rdata_valid)) | ((roundrobin1_grant == 1'd0) & sdram_interface_bank1_rdata_valid)) | ((roundrobin2_grant == 1'd0) & sdram_interface_bank2_rdata_valid)) | ((roundrobin3_grant == 1'd0) & sdram_interface_bank3_rdata_valid));
	new_master_rdata_valid1 <= new_master_rdata_valid0;
	new_master_rdata_valid2 <= new_master_rdata_valid1;
	new_master_rdata_valid3 <= new_master_rdata_valid2;
	new_master_rdata_valid4 <= new_master_rdata_valid3;
	new_master_rbank0 <= rbank;
	new_master_rbank1 <= new_master_rbank0;
	new_master_rbank2 <= new_master_rbank1;
	new_master_rbank3 <= new_master_rbank2;
	if (cache_word_clr) begin
		cache <= 1'd0;
	end else begin
		if (cache_word_inc) begin
			cache <= (cache + 1'd1);
		end
	end
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
		case (basesoc_interface0_bank_bus_adr[0])
			1'd0: begin
				basesoc_interface0_bank_bus_dat_r <= basesoc_csrbank0_leds_out0_w;
			end
			1'd1: begin
				basesoc_interface0_bank_bus_dat_r <= basesoc_csrbank0_switches_in_w;
			end
		endcase
	end
	if (basesoc_csrbank0_leds_out0_re) begin
		leds_storage_full[7:0] <= basesoc_csrbank0_leds_out0_r;
	end
	leds_re <= basesoc_csrbank0_leds_out0_re;
	basesoc_interface1_bank_bus_dat_r <= 1'd0;
	if (basesoc_csrbank1_sel) begin
		case (basesoc_interface1_bank_bus_adr[3:0])
			1'd0: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_ctrl_reset_reset_w;
			end
			1'd1: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_scratch3_w;
			end
			2'd2: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_scratch2_w;
			end
			2'd3: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_scratch1_w;
			end
			3'd4: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_scratch0_w;
			end
			3'd5: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_bus_errors3_w;
			end
			3'd6: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_bus_errors2_w;
			end
			3'd7: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_bus_errors1_w;
			end
			4'd8: begin
				basesoc_interface1_bank_bus_dat_r <= basesoc_csrbank1_bus_errors0_w;
			end
		endcase
	end
	if (basesoc_csrbank1_scratch3_re) begin
		basesoc_ctrl_storage_full[31:24] <= basesoc_csrbank1_scratch3_r;
	end
	if (basesoc_csrbank1_scratch2_re) begin
		basesoc_ctrl_storage_full[23:16] <= basesoc_csrbank1_scratch2_r;
	end
	if (basesoc_csrbank1_scratch1_re) begin
		basesoc_ctrl_storage_full[15:8] <= basesoc_csrbank1_scratch1_r;
	end
	if (basesoc_csrbank1_scratch0_re) begin
		basesoc_ctrl_storage_full[7:0] <= basesoc_csrbank1_scratch0_r;
	end
	basesoc_ctrl_re <= basesoc_csrbank1_scratch0_re;
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
		case (basesoc_interface3_bank_bus_adr[3:0])
			1'd0: begin
				basesoc_interface3_bank_bus_dat_r <= basesoc_csrbank3_dfii_control0_w;
			end
			1'd1: begin
				basesoc_interface3_bank_bus_dat_r <= basesoc_csrbank3_dfii_pi0_command0_w;
			end
			2'd2: begin
				basesoc_interface3_bank_bus_dat_r <= sdram_command_issue_w;
			end
			2'd3: begin
				basesoc_interface3_bank_bus_dat_r <= basesoc_csrbank3_dfii_pi0_address1_w;
			end
			3'd4: begin
				basesoc_interface3_bank_bus_dat_r <= basesoc_csrbank3_dfii_pi0_address0_w;
			end
			3'd5: begin
				basesoc_interface3_bank_bus_dat_r <= basesoc_csrbank3_dfii_pi0_baddress0_w;
			end
			3'd6: begin
				basesoc_interface3_bank_bus_dat_r <= basesoc_csrbank3_dfii_pi0_wrdata1_w;
			end
			3'd7: begin
				basesoc_interface3_bank_bus_dat_r <= basesoc_csrbank3_dfii_pi0_wrdata0_w;
			end
			4'd8: begin
				basesoc_interface3_bank_bus_dat_r <= basesoc_csrbank3_dfii_pi0_rddata1_w;
			end
			4'd9: begin
				basesoc_interface3_bank_bus_dat_r <= basesoc_csrbank3_dfii_pi0_rddata0_w;
			end
		endcase
	end
	if (basesoc_csrbank3_dfii_control0_re) begin
		sdram_storage_full[3:0] <= basesoc_csrbank3_dfii_control0_r;
	end
	sdram_re <= basesoc_csrbank3_dfii_control0_re;
	if (basesoc_csrbank3_dfii_pi0_command0_re) begin
		sdram_command_storage_full[5:0] <= basesoc_csrbank3_dfii_pi0_command0_r;
	end
	sdram_command_re <= basesoc_csrbank3_dfii_pi0_command0_re;
	if (basesoc_csrbank3_dfii_pi0_address1_re) begin
		sdram_address_storage_full[12:8] <= basesoc_csrbank3_dfii_pi0_address1_r;
	end
	if (basesoc_csrbank3_dfii_pi0_address0_re) begin
		sdram_address_storage_full[7:0] <= basesoc_csrbank3_dfii_pi0_address0_r;
	end
	sdram_address_re <= basesoc_csrbank3_dfii_pi0_address0_re;
	if (basesoc_csrbank3_dfii_pi0_baddress0_re) begin
		sdram_baddress_storage_full[1:0] <= basesoc_csrbank3_dfii_pi0_baddress0_r;
	end
	sdram_baddress_re <= basesoc_csrbank3_dfii_pi0_baddress0_re;
	if (basesoc_csrbank3_dfii_pi0_wrdata1_re) begin
		sdram_wrdata_storage_full[15:8] <= basesoc_csrbank3_dfii_pi0_wrdata1_r;
	end
	if (basesoc_csrbank3_dfii_pi0_wrdata0_re) begin
		sdram_wrdata_storage_full[7:0] <= basesoc_csrbank3_dfii_pi0_wrdata0_r;
	end
	sdram_wrdata_re <= basesoc_csrbank3_dfii_pi0_wrdata0_re;
	basesoc_interface4_bank_bus_dat_r <= 1'd0;
	if (basesoc_csrbank4_sel) begin
		case (basesoc_interface4_bank_bus_adr[1:0])
			1'd0: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_bitbang0_w;
			end
			1'd1: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_miso_w;
			end
			2'd2: begin
				basesoc_interface4_bank_bus_dat_r <= basesoc_csrbank4_bitbang_en0_w;
			end
		endcase
	end
	if (basesoc_csrbank4_bitbang0_re) begin
		bitbang_storage_full[3:0] <= basesoc_csrbank4_bitbang0_r;
	end
	bitbang_re <= basesoc_csrbank4_bitbang0_re;
	if (basesoc_csrbank4_bitbang_en0_re) begin
		bitbang_en_storage_full <= basesoc_csrbank4_bitbang_en0_r;
	end
	bitbang_en_re <= basesoc_csrbank4_bitbang_en0_re;
	basesoc_interface5_bank_bus_dat_r <= 1'd0;
	if (basesoc_csrbank5_sel) begin
		case (basesoc_interface5_bank_bus_adr[4:0])
			1'd0: begin
				basesoc_interface5_bank_bus_dat_r <= basesoc_csrbank5_load3_w;
			end
			1'd1: begin
				basesoc_interface5_bank_bus_dat_r <= basesoc_csrbank5_load2_w;
			end
			2'd2: begin
				basesoc_interface5_bank_bus_dat_r <= basesoc_csrbank5_load1_w;
			end
			2'd3: begin
				basesoc_interface5_bank_bus_dat_r <= basesoc_csrbank5_load0_w;
			end
			3'd4: begin
				basesoc_interface5_bank_bus_dat_r <= basesoc_csrbank5_reload3_w;
			end
			3'd5: begin
				basesoc_interface5_bank_bus_dat_r <= basesoc_csrbank5_reload2_w;
			end
			3'd6: begin
				basesoc_interface5_bank_bus_dat_r <= basesoc_csrbank5_reload1_w;
			end
			3'd7: begin
				basesoc_interface5_bank_bus_dat_r <= basesoc_csrbank5_reload0_w;
			end
			4'd8: begin
				basesoc_interface5_bank_bus_dat_r <= basesoc_csrbank5_en0_w;
			end
			4'd9: begin
				basesoc_interface5_bank_bus_dat_r <= basesoc_timer0_update_value_w;
			end
			4'd10: begin
				basesoc_interface5_bank_bus_dat_r <= basesoc_csrbank5_value3_w;
			end
			4'd11: begin
				basesoc_interface5_bank_bus_dat_r <= basesoc_csrbank5_value2_w;
			end
			4'd12: begin
				basesoc_interface5_bank_bus_dat_r <= basesoc_csrbank5_value1_w;
			end
			4'd13: begin
				basesoc_interface5_bank_bus_dat_r <= basesoc_csrbank5_value0_w;
			end
			4'd14: begin
				basesoc_interface5_bank_bus_dat_r <= basesoc_timer0_eventmanager_status_w;
			end
			4'd15: begin
				basesoc_interface5_bank_bus_dat_r <= basesoc_timer0_eventmanager_pending_w;
			end
			5'd16: begin
				basesoc_interface5_bank_bus_dat_r <= basesoc_csrbank5_ev_enable0_w;
			end
		endcase
	end
	if (basesoc_csrbank5_load3_re) begin
		basesoc_timer0_load_storage_full[31:24] <= basesoc_csrbank5_load3_r;
	end
	if (basesoc_csrbank5_load2_re) begin
		basesoc_timer0_load_storage_full[23:16] <= basesoc_csrbank5_load2_r;
	end
	if (basesoc_csrbank5_load1_re) begin
		basesoc_timer0_load_storage_full[15:8] <= basesoc_csrbank5_load1_r;
	end
	if (basesoc_csrbank5_load0_re) begin
		basesoc_timer0_load_storage_full[7:0] <= basesoc_csrbank5_load0_r;
	end
	basesoc_timer0_load_re <= basesoc_csrbank5_load0_re;
	if (basesoc_csrbank5_reload3_re) begin
		basesoc_timer0_reload_storage_full[31:24] <= basesoc_csrbank5_reload3_r;
	end
	if (basesoc_csrbank5_reload2_re) begin
		basesoc_timer0_reload_storage_full[23:16] <= basesoc_csrbank5_reload2_r;
	end
	if (basesoc_csrbank5_reload1_re) begin
		basesoc_timer0_reload_storage_full[15:8] <= basesoc_csrbank5_reload1_r;
	end
	if (basesoc_csrbank5_reload0_re) begin
		basesoc_timer0_reload_storage_full[7:0] <= basesoc_csrbank5_reload0_r;
	end
	basesoc_timer0_reload_re <= basesoc_csrbank5_reload0_re;
	if (basesoc_csrbank5_en0_re) begin
		basesoc_timer0_en_storage_full <= basesoc_csrbank5_en0_r;
	end
	basesoc_timer0_en_re <= basesoc_csrbank5_en0_re;
	if (basesoc_csrbank5_ev_enable0_re) begin
		basesoc_timer0_eventmanager_storage_full <= basesoc_csrbank5_ev_enable0_r;
	end
	basesoc_timer0_eventmanager_re <= basesoc_csrbank5_ev_enable0_re;
	basesoc_interface6_bank_bus_dat_r <= 1'd0;
	if (basesoc_csrbank6_sel) begin
		case (basesoc_interface6_bank_bus_adr[2:0])
			1'd0: begin
				basesoc_interface6_bank_bus_dat_r <= basesoc_uart_rxtx_w;
			end
			1'd1: begin
				basesoc_interface6_bank_bus_dat_r <= basesoc_csrbank6_txfull_w;
			end
			2'd2: begin
				basesoc_interface6_bank_bus_dat_r <= basesoc_csrbank6_rxempty_w;
			end
			2'd3: begin
				basesoc_interface6_bank_bus_dat_r <= basesoc_uart_status_w;
			end
			3'd4: begin
				basesoc_interface6_bank_bus_dat_r <= basesoc_uart_pending_w;
			end
			3'd5: begin
				basesoc_interface6_bank_bus_dat_r <= basesoc_csrbank6_ev_enable0_w;
			end
		endcase
	end
	if (basesoc_csrbank6_ev_enable0_re) begin
		basesoc_uart_storage_full[1:0] <= basesoc_csrbank6_ev_enable0_r;
	end
	basesoc_uart_re <= basesoc_csrbank6_ev_enable0_re;
	basesoc_interface7_bank_bus_dat_r <= 1'd0;
	if (basesoc_csrbank7_sel) begin
		case (basesoc_interface7_bank_bus_adr[1:0])
			1'd0: begin
				basesoc_interface7_bank_bus_dat_r <= basesoc_csrbank7_tuning_word3_w;
			end
			1'd1: begin
				basesoc_interface7_bank_bus_dat_r <= basesoc_csrbank7_tuning_word2_w;
			end
			2'd2: begin
				basesoc_interface7_bank_bus_dat_r <= basesoc_csrbank7_tuning_word1_w;
			end
			2'd3: begin
				basesoc_interface7_bank_bus_dat_r <= basesoc_csrbank7_tuning_word0_w;
			end
		endcase
	end
	if (basesoc_csrbank7_tuning_word3_re) begin
		basesoc_uart_phy_storage_full[31:24] <= basesoc_csrbank7_tuning_word3_r;
	end
	if (basesoc_csrbank7_tuning_word2_re) begin
		basesoc_uart_phy_storage_full[23:16] <= basesoc_csrbank7_tuning_word2_r;
	end
	if (basesoc_csrbank7_tuning_word1_re) begin
		basesoc_uart_phy_storage_full[15:8] <= basesoc_csrbank7_tuning_word1_r;
	end
	if (basesoc_csrbank7_tuning_word0_re) begin
		basesoc_uart_phy_storage_full[7:0] <= basesoc_csrbank7_tuning_word0_r;
	end
	basesoc_uart_phy_re <= basesoc_csrbank7_tuning_word0_re;
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
		serial_tx <= 1'd1;
		basesoc_uart_phy_storage_full <= 32'd6184752;
		basesoc_uart_phy_re <= 1'd0;
		basesoc_uart_phy_sink_ready <= 1'd0;
		basesoc_uart_phy_uart_clk_txen <= 1'd0;
		basesoc_uart_phy_phase_accumulator_tx <= 32'd0;
		basesoc_uart_phy_tx_reg <= 8'd0;
		basesoc_uart_phy_tx_bitcount <= 4'd0;
		basesoc_uart_phy_tx_busy <= 1'd0;
		basesoc_uart_phy_source_valid <= 1'd0;
		basesoc_uart_phy_source_payload_data <= 8'd0;
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
		leds_storage_full <= 8'd0;
		leds_re <= 1'd0;
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
		dqi <= 2'd0;
		counter <= 8'd0;
		sdram_a <= 13'd0;
		sdram_we_n <= 1'd0;
		sdram_ras_n <= 1'd0;
		sdram_cas_n <= 1'd0;
		sdram_cs_n <= 1'd0;
		sdram_cke <= 1'd0;
		sdram_ba <= 2'd0;
		sdram_dm <= 2'd0;
		dfi_p0_rddata <= 16'd0;
		sd_dq_out <= 16'd0;
		d_dfi_wrdata_en <= 1'd0;
		rddata_sr <= 4'd0;
		sdram_storage_full <= 4'd0;
		sdram_re <= 1'd0;
		sdram_command_storage_full <= 6'd0;
		sdram_command_re <= 1'd0;
		sdram_address_storage_full <= 13'd0;
		sdram_address_re <= 1'd0;
		sdram_baddress_storage_full <= 2'd0;
		sdram_baddress_re <= 1'd0;
		sdram_wrdata_storage_full <= 16'd0;
		sdram_wrdata_re <= 1'd0;
		sdram_status <= 16'd0;
		sdram_dfi_p0_address <= 13'd0;
		sdram_dfi_p0_bank <= 2'd0;
		sdram_dfi_p0_cas_n <= 1'd1;
		sdram_dfi_p0_cs_n <= 1'd1;
		sdram_dfi_p0_ras_n <= 1'd1;
		sdram_dfi_p0_we_n <= 1'd1;
		sdram_dfi_p0_wrdata_en <= 1'd0;
		sdram_dfi_p0_rddata_en <= 1'd0;
		sdram_cmd_payload_a <= 13'd0;
		sdram_cmd_payload_ba <= 2'd0;
		sdram_cmd_payload_cas <= 1'd0;
		sdram_cmd_payload_ras <= 1'd0;
		sdram_cmd_payload_we <= 1'd0;
		sdram_seq_done <= 1'd0;
		sdram_counter <= 4'd0;
		sdram_count <= 10'd625;
		sdram_bankmachine0_cmd_buffer_lookahead_level <= 4'd0;
		sdram_bankmachine0_cmd_buffer_lookahead_produce <= 3'd0;
		sdram_bankmachine0_cmd_buffer_lookahead_consume <= 3'd0;
		sdram_bankmachine0_cmd_buffer_source_payload_we <= 1'd0;
		sdram_bankmachine0_cmd_buffer_source_payload_addr <= 22'd0;
		sdram_bankmachine0_cmd_buffer_valid_n <= 1'd0;
		sdram_bankmachine0_cmd_buffer_first_n <= 1'd0;
		sdram_bankmachine0_cmd_buffer_last_n <= 1'd0;
		sdram_bankmachine0_has_openrow <= 1'd0;
		sdram_bankmachine0_count <= 2'd3;
		sdram_bankmachine1_cmd_buffer_lookahead_level <= 4'd0;
		sdram_bankmachine1_cmd_buffer_lookahead_produce <= 3'd0;
		sdram_bankmachine1_cmd_buffer_lookahead_consume <= 3'd0;
		sdram_bankmachine1_cmd_buffer_source_payload_we <= 1'd0;
		sdram_bankmachine1_cmd_buffer_source_payload_addr <= 22'd0;
		sdram_bankmachine1_cmd_buffer_valid_n <= 1'd0;
		sdram_bankmachine1_cmd_buffer_first_n <= 1'd0;
		sdram_bankmachine1_cmd_buffer_last_n <= 1'd0;
		sdram_bankmachine1_has_openrow <= 1'd0;
		sdram_bankmachine1_count <= 2'd3;
		sdram_bankmachine2_cmd_buffer_lookahead_level <= 4'd0;
		sdram_bankmachine2_cmd_buffer_lookahead_produce <= 3'd0;
		sdram_bankmachine2_cmd_buffer_lookahead_consume <= 3'd0;
		sdram_bankmachine2_cmd_buffer_source_payload_we <= 1'd0;
		sdram_bankmachine2_cmd_buffer_source_payload_addr <= 22'd0;
		sdram_bankmachine2_cmd_buffer_valid_n <= 1'd0;
		sdram_bankmachine2_cmd_buffer_first_n <= 1'd0;
		sdram_bankmachine2_cmd_buffer_last_n <= 1'd0;
		sdram_bankmachine2_has_openrow <= 1'd0;
		sdram_bankmachine2_count <= 2'd3;
		sdram_bankmachine3_cmd_buffer_lookahead_level <= 4'd0;
		sdram_bankmachine3_cmd_buffer_lookahead_produce <= 3'd0;
		sdram_bankmachine3_cmd_buffer_lookahead_consume <= 3'd0;
		sdram_bankmachine3_cmd_buffer_source_payload_we <= 1'd0;
		sdram_bankmachine3_cmd_buffer_source_payload_addr <= 22'd0;
		sdram_bankmachine3_cmd_buffer_valid_n <= 1'd0;
		sdram_bankmachine3_cmd_buffer_first_n <= 1'd0;
		sdram_bankmachine3_cmd_buffer_last_n <= 1'd0;
		sdram_bankmachine3_has_openrow <= 1'd0;
		sdram_bankmachine3_count <= 2'd3;
		sdram_choose_cmd_grant <= 2'd0;
		sdram_choose_req_grant <= 2'd0;
		sdram_twtrcon_ready <= 1'd1;
		sdram_twtrcon_count <= 1'd0;
		sdram_time0 <= 5'd0;
		sdram_time1 <= 4'd0;
		cache <= 1'd0;
		refresher_state <= 2'd0;
		bankmachine0_state <= 3'd0;
		bankmachine1_state <= 3'd0;
		bankmachine2_state <= 3'd0;
		bankmachine3_state <= 3'd0;
		multiplexer_state <= 3'd0;
		rbank <= 2'd0;
		wbank <= 2'd0;
		new_master_wdata_ready <= 1'd0;
		new_master_rdata_valid0 <= 1'd0;
		new_master_rdata_valid1 <= 1'd0;
		new_master_rdata_valid2 <= 1'd0;
		new_master_rdata_valid3 <= 1'd0;
		new_master_rdata_valid4 <= 1'd0;
		new_master_rbank0 <= 2'd0;
		new_master_rbank1 <= 2'd0;
		new_master_rbank2 <= 2'd0;
		new_master_rbank3 <= 2'd0;
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
	xilinxmultiregimpl0_regs0 <= serial_rx;
	xilinxmultiregimpl0_regs1 <= xilinxmultiregimpl0_regs0;
	xilinxmultiregimpl1_regs0 <= switches;
	xilinxmultiregimpl1_regs1 <= xilinxmultiregimpl1_regs0;
end

always @(posedge sys_ps_clk) begin
	sd_dq_in_ps <= sdram_dq;
	if (sys_ps_rst) begin
		sd_dq_in_ps <= 16'd0;
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

reg [9:0] storage[0:15];
reg [9:0] memdat;
always @(posedge sys_clk) begin
	if (basesoc_uart_tx_fifo_wrport_we)
		storage[basesoc_uart_tx_fifo_wrport_adr] <= basesoc_uart_tx_fifo_wrport_dat_w;
	memdat <= storage[basesoc_uart_tx_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign basesoc_uart_tx_fifo_wrport_dat_r = memdat;
assign basesoc_uart_tx_fifo_rdport_dat_r = storage[basesoc_uart_tx_fifo_rdport_adr];

reg [9:0] storage_1[0:15];
reg [9:0] memdat_1;
always @(posedge sys_clk) begin
	if (basesoc_uart_rx_fifo_wrport_we)
		storage_1[basesoc_uart_rx_fifo_wrport_adr] <= basesoc_uart_rx_fifo_wrport_dat_w;
	memdat_1 <= storage_1[basesoc_uart_rx_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign basesoc_uart_rx_fifo_wrport_dat_r = memdat_1;
assign basesoc_uart_rx_fifo_rdport_dat_r = storage_1[basesoc_uart_rx_fifo_rdport_adr];

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
	.I(clk32),
	.O(clk32a)
);

BUFIO2 #(
	.DIVIDE(1'd1),
	.DIVIDE_BYPASS("TRUE"),
	.I_INVERT("FALSE")
) BUFIO2 (
	.I(clk32a),
	.DIVCLK(clk32b)
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
	.CLKFBIN(pll_fb),
	.CLKIN1(clk32b),
	.CLKIN2(1'd0),
	.CLKINSEL(1'd1),
	.DADDR(1'd0),
	.DCLK(1'd0),
	.DEN(1'd0),
	.DI(1'd0),
	.DWE(1'd0),
	.REL(1'd0),
	.RST(1'd0),
	.CLKFBOUT(pll_fb),
	.CLKOUT0(pll[0]),
	.CLKOUT1(pll[1]),
	.CLKOUT2(pll[2]),
	.CLKOUT3(pll[3]),
	.CLKOUT4(pll[4]),
	.CLKOUT5(pll[5]),
	.LOCKED(pll_lckd)
);

BUFG BUFG(
	.I(pll[4]),
	.O(sys_clk)
);

BUFG BUFG_1(
	.I(pll[5]),
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
	.CLK(dna_cnt[0]),
	.DIN(dna_status[56]),
	.READ((dna_cnt < 2'd2)),
	.SHIFT(1'd1),
	.DOUT(dna_do)
);

assign spiflash2x_dq = oe ? o : 2'bz;
assign i0 = spiflash2x_dq;

assign sdram_dq = drive_dq ? sd_dq_out : 16'bz;

reg [24:0] storage_2[0:7];
reg [24:0] memdat_2;
always @(posedge sys_clk) begin
	if (sdram_bankmachine0_cmd_buffer_lookahead_wrport_we)
		storage_2[sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr] <= sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_w;
	memdat_2 <= storage_2[sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_r = memdat_2;
assign sdram_bankmachine0_cmd_buffer_lookahead_rdport_dat_r = storage_2[sdram_bankmachine0_cmd_buffer_lookahead_rdport_adr];

reg [24:0] storage_3[0:7];
reg [24:0] memdat_3;
always @(posedge sys_clk) begin
	if (sdram_bankmachine1_cmd_buffer_lookahead_wrport_we)
		storage_3[sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr] <= sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_w;
	memdat_3 <= storage_3[sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_r = memdat_3;
assign sdram_bankmachine1_cmd_buffer_lookahead_rdport_dat_r = storage_3[sdram_bankmachine1_cmd_buffer_lookahead_rdport_adr];

reg [24:0] storage_4[0:7];
reg [24:0] memdat_4;
always @(posedge sys_clk) begin
	if (sdram_bankmachine2_cmd_buffer_lookahead_wrport_we)
		storage_4[sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr] <= sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_w;
	memdat_4 <= storage_4[sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_r = memdat_4;
assign sdram_bankmachine2_cmd_buffer_lookahead_rdport_dat_r = storage_4[sdram_bankmachine2_cmd_buffer_lookahead_rdport_adr];

reg [24:0] storage_5[0:7];
reg [24:0] memdat_5;
always @(posedge sys_clk) begin
	if (sdram_bankmachine3_cmd_buffer_lookahead_wrport_we)
		storage_5[sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr] <= sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_w;
	memdat_5 <= storage_5[sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_r = memdat_5;
assign sdram_bankmachine3_cmd_buffer_lookahead_rdport_dat_r = storage_5[sdram_bankmachine3_cmd_buffer_lookahead_rdport_adr];

reg [31:0] data_mem[0:2047];
reg [10:0] memadr_3;
always @(posedge sys_clk) begin
	if (cache_data_port_we[0])
		data_mem[cache_data_port_adr][7:0] <= cache_data_port_dat_w[7:0];
	if (cache_data_port_we[1])
		data_mem[cache_data_port_adr][15:8] <= cache_data_port_dat_w[15:8];
	if (cache_data_port_we[2])
		data_mem[cache_data_port_adr][23:16] <= cache_data_port_dat_w[23:16];
	if (cache_data_port_we[3])
		data_mem[cache_data_port_adr][31:24] <= cache_data_port_dat_w[31:24];
	memadr_3 <= cache_data_port_adr;
end

assign cache_data_port_dat_r = data_mem[memadr_3];

reg [19:0] tag_mem[0:2047];
reg [10:0] memadr_4;
always @(posedge sys_clk) begin
	if (cache_tag_port_we)
		tag_mem[cache_tag_port_adr] <= cache_tag_port_dat_w;
	memadr_4 <= cache_tag_port_adr;
end

assign cache_tag_port_dat_r = tag_mem[memadr_4];

FDPE #(
	.INIT(1'd1)
) FDPE (
	.C(sys_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(xilinxasyncresetsynchronizerimpl),
	.Q(xilinxasyncresetsynchronizerimpl_rst_meta)
);

FDPE #(
	.INIT(1'd1)
) FDPE_1 (
	.C(sys_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl_rst_meta),
	.PRE(xilinxasyncresetsynchronizerimpl),
	.Q(sys_rst)
);

endmodule
