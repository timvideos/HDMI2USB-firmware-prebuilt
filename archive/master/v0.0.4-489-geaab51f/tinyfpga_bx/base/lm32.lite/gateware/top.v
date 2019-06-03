/* Machine-generated using LiteX gen */
module top(
	input serial_rx,
	output reg serial_tx,
	input clk16,
	output user_led0,
	output reg spiflash_cs_n,
	output reg spiflash_clk,
	output reg spiflash_mosi,
	input spiflash_miso,
	output spiflash_wp,
	output spiflash_hold,
	input usb_d_p,
	input usb_d_n,
	output usb_pullup
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
reg [31:0] basesoc_uart_phy_storage_full = 32'd30923764;
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
wire basesoc_uart_eventmanager_status_re;
wire [1:0] basesoc_uart_eventmanager_status_r;
reg [1:0] basesoc_uart_eventmanager_status_w = 2'd0;
wire basesoc_uart_eventmanager_pending_re;
wire [1:0] basesoc_uart_eventmanager_pending_r;
reg [1:0] basesoc_uart_eventmanager_pending_w = 2'd0;
reg [1:0] basesoc_uart_eventmanager_storage_full = 2'd0;
wire [1:0] basesoc_uart_eventmanager_storage;
reg basesoc_uart_eventmanager_re = 1'd0;
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
wire basesoc_uart_tx_fifo_re;
reg basesoc_uart_tx_fifo_readable = 1'd0;
wire basesoc_uart_tx_fifo_syncfifo_we;
wire basesoc_uart_tx_fifo_syncfifo_writable;
wire basesoc_uart_tx_fifo_syncfifo_re;
wire basesoc_uart_tx_fifo_syncfifo_readable;
wire [9:0] basesoc_uart_tx_fifo_syncfifo_din;
wire [9:0] basesoc_uart_tx_fifo_syncfifo_dout;
reg [4:0] basesoc_uart_tx_fifo_level0 = 5'd0;
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
wire basesoc_uart_tx_fifo_rdport_re;
wire [4:0] basesoc_uart_tx_fifo_level1;
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
wire basesoc_uart_rx_fifo_re;
reg basesoc_uart_rx_fifo_readable = 1'd0;
wire basesoc_uart_rx_fifo_syncfifo_we;
wire basesoc_uart_rx_fifo_syncfifo_writable;
wire basesoc_uart_rx_fifo_syncfifo_re;
wire basesoc_uart_rx_fifo_syncfifo_readable;
wire [9:0] basesoc_uart_rx_fifo_syncfifo_din;
wire [9:0] basesoc_uart_rx_fifo_syncfifo_dout;
reg [4:0] basesoc_uart_rx_fifo_level0 = 5'd0;
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
wire basesoc_uart_rx_fifo_rdport_re;
wire [4:0] basesoc_uart_rx_fifo_level1;
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
wire sys_clk;
wire sys_rst;
reg crg_reset = 1'd0;
wire por_clk;
wire por_rst;
reg [11:0] crg_reset_delay = 12'd4095;
wire cas_leds;
reg cas_leds_storage_full = 1'd0;
wire cas_leds_storage;
reg cas_leds_re = 1'd0;
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
reg spiflash_miso_status = 1'd0;
reg spiflash_bitbang_en_storage_full = 1'd0;
wire spiflash_bitbang_en_storage;
reg spiflash_bitbang_en_re = 1'd0;
reg spiflash_cs_n1 = 1'd1;
reg spiflash_clk1 = 1'd0;
reg [31:0] spiflash_sr = 32'd0;
reg spiflash_i = 1'd0;
reg spiflash_miso1 = 1'd0;
reg [7:0] spiflash_counter = 8'd0;
wire [29:0] shared_adr;
wire [31:0] shared_dat_w;
reg [31:0] shared_dat_r = 32'd0;
wire [3:0] shared_sel;
wire shared_cyc;
wire shared_stb;
reg shared_ack = 1'd0;
wire shared_we;
wire [2:0] shared_cti;
wire [1:0] shared_bte;
wire shared_err;
wire [1:0] request;
reg grant = 1'd0;
reg [2:0] slave_sel = 3'd0;
reg [2:0] slave_sel_r = 3'd0;
reg error = 1'd0;
wire wait_1;
wire done;
reg [19:0] count = 20'd1000000;
wire [13:0] interface0_bank_bus_adr;
wire interface0_bank_bus_we;
wire [7:0] interface0_bank_bus_dat_w;
reg [7:0] interface0_bank_bus_dat_r = 8'd0;
wire csrbank0_leds_out0_re;
wire csrbank0_leds_out0_r;
wire csrbank0_leds_out0_w;
wire csrbank0_sel;
wire [13:0] interface1_bank_bus_adr;
wire interface1_bank_bus_we;
wire [7:0] interface1_bank_bus_dat_w;
reg [7:0] interface1_bank_bus_dat_r = 8'd0;
wire csrbank1_scratch3_re;
wire [7:0] csrbank1_scratch3_r;
wire [7:0] csrbank1_scratch3_w;
wire csrbank1_scratch2_re;
wire [7:0] csrbank1_scratch2_r;
wire [7:0] csrbank1_scratch2_w;
wire csrbank1_scratch1_re;
wire [7:0] csrbank1_scratch1_r;
wire [7:0] csrbank1_scratch1_w;
wire csrbank1_scratch0_re;
wire [7:0] csrbank1_scratch0_r;
wire [7:0] csrbank1_scratch0_w;
wire csrbank1_bus_errors3_re;
wire [7:0] csrbank1_bus_errors3_r;
wire [7:0] csrbank1_bus_errors3_w;
wire csrbank1_bus_errors2_re;
wire [7:0] csrbank1_bus_errors2_r;
wire [7:0] csrbank1_bus_errors2_w;
wire csrbank1_bus_errors1_re;
wire [7:0] csrbank1_bus_errors1_r;
wire [7:0] csrbank1_bus_errors1_w;
wire csrbank1_bus_errors0_re;
wire [7:0] csrbank1_bus_errors0_r;
wire [7:0] csrbank1_bus_errors0_w;
wire csrbank1_sel;
wire [13:0] sram_bus_adr;
wire sram_bus_we;
wire [7:0] sram_bus_dat_w;
reg [7:0] sram_bus_dat_r = 8'd0;
wire [2:0] adr;
wire [7:0] dat_r;
wire sel;
reg sel_r = 1'd0;
wire [13:0] interface2_bank_bus_adr;
wire interface2_bank_bus_we;
wire [7:0] interface2_bank_bus_dat_w;
reg [7:0] interface2_bank_bus_dat_r = 8'd0;
wire csrbank2_bitbang0_re;
wire [3:0] csrbank2_bitbang0_r;
wire [3:0] csrbank2_bitbang0_w;
wire csrbank2_miso_re;
wire csrbank2_miso_r;
wire csrbank2_miso_w;
wire csrbank2_bitbang_en0_re;
wire csrbank2_bitbang_en0_r;
wire csrbank2_bitbang_en0_w;
wire csrbank2_sel;
wire [13:0] interface3_bank_bus_adr;
wire interface3_bank_bus_we;
wire [7:0] interface3_bank_bus_dat_w;
reg [7:0] interface3_bank_bus_dat_r = 8'd0;
wire csrbank3_load3_re;
wire [7:0] csrbank3_load3_r;
wire [7:0] csrbank3_load3_w;
wire csrbank3_load2_re;
wire [7:0] csrbank3_load2_r;
wire [7:0] csrbank3_load2_w;
wire csrbank3_load1_re;
wire [7:0] csrbank3_load1_r;
wire [7:0] csrbank3_load1_w;
wire csrbank3_load0_re;
wire [7:0] csrbank3_load0_r;
wire [7:0] csrbank3_load0_w;
wire csrbank3_reload3_re;
wire [7:0] csrbank3_reload3_r;
wire [7:0] csrbank3_reload3_w;
wire csrbank3_reload2_re;
wire [7:0] csrbank3_reload2_r;
wire [7:0] csrbank3_reload2_w;
wire csrbank3_reload1_re;
wire [7:0] csrbank3_reload1_r;
wire [7:0] csrbank3_reload1_w;
wire csrbank3_reload0_re;
wire [7:0] csrbank3_reload0_r;
wire [7:0] csrbank3_reload0_w;
wire csrbank3_en0_re;
wire csrbank3_en0_r;
wire csrbank3_en0_w;
wire csrbank3_value3_re;
wire [7:0] csrbank3_value3_r;
wire [7:0] csrbank3_value3_w;
wire csrbank3_value2_re;
wire [7:0] csrbank3_value2_r;
wire [7:0] csrbank3_value2_w;
wire csrbank3_value1_re;
wire [7:0] csrbank3_value1_r;
wire [7:0] csrbank3_value1_w;
wire csrbank3_value0_re;
wire [7:0] csrbank3_value0_r;
wire [7:0] csrbank3_value0_w;
wire csrbank3_ev_enable0_re;
wire csrbank3_ev_enable0_r;
wire csrbank3_ev_enable0_w;
wire csrbank3_sel;
wire [13:0] interface4_bank_bus_adr;
wire interface4_bank_bus_we;
wire [7:0] interface4_bank_bus_dat_w;
reg [7:0] interface4_bank_bus_dat_r = 8'd0;
wire csrbank4_txfull_re;
wire csrbank4_txfull_r;
wire csrbank4_txfull_w;
wire csrbank4_rxempty_re;
wire csrbank4_rxempty_r;
wire csrbank4_rxempty_w;
wire csrbank4_ev_enable0_re;
wire [1:0] csrbank4_ev_enable0_r;
wire [1:0] csrbank4_ev_enable0_w;
wire csrbank4_sel;
wire [13:0] interface5_bank_bus_adr;
wire interface5_bank_bus_we;
wire [7:0] interface5_bank_bus_dat_w;
reg [7:0] interface5_bank_bus_dat_r = 8'd0;
wire csrbank5_tuning_word3_re;
wire [7:0] csrbank5_tuning_word3_r;
wire [7:0] csrbank5_tuning_word3_w;
wire csrbank5_tuning_word2_re;
wire [7:0] csrbank5_tuning_word2_r;
wire [7:0] csrbank5_tuning_word2_w;
wire csrbank5_tuning_word1_re;
wire [7:0] csrbank5_tuning_word1_r;
wire [7:0] csrbank5_tuning_word1_w;
wire csrbank5_tuning_word0_re;
wire [7:0] csrbank5_tuning_word0_r;
wire [7:0] csrbank5_tuning_word0_w;
wire csrbank5_sel;
reg [29:0] array_muxed0 = 30'd0;
reg [31:0] array_muxed1 = 32'd0;
reg [3:0] array_muxed2 = 4'd0;
reg array_muxed3 = 1'd0;
reg array_muxed4 = 1'd0;
reg array_muxed5 = 1'd0;
reg [2:0] array_muxed6 = 3'd0;
reg [1:0] array_muxed7 = 2'd0;
reg regs0 = 1'd0;
reg regs1 = 1'd0;
wire rst1;

assign basesoc_lm32_reset = basesoc_ctrl_reset;
assign usb_pullup = 1'd0;
assign basesoc_ctrl_bus_error = error;
always @(*) begin
	basesoc_lm32_interrupt <= 32'd0;
	basesoc_lm32_interrupt[1] <= basesoc_timer0_irq;
	basesoc_lm32_interrupt[2] <= basesoc_uart_irq;
end
assign basesoc_ctrl_reset = basesoc_ctrl_reset_reset_re;
assign basesoc_ctrl_bus_errors_status = basesoc_ctrl_bus_errors;
assign basesoc_lm32_ibus_adr = basesoc_lm32_i_adr_o[31:2];
assign basesoc_lm32_dbus_adr = basesoc_lm32_d_adr_o[31:2];
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
	if ((basesoc_uart_eventmanager_pending_re & basesoc_uart_eventmanager_pending_r[0])) begin
		basesoc_uart_tx_clear <= 1'd1;
	end
end
always @(*) begin
	basesoc_uart_eventmanager_status_w <= 2'd0;
	basesoc_uart_eventmanager_status_w[0] <= basesoc_uart_tx_status;
	basesoc_uart_eventmanager_status_w[1] <= basesoc_uart_rx_status;
end
always @(*) begin
	basesoc_uart_rx_clear <= 1'd0;
	if ((basesoc_uart_eventmanager_pending_re & basesoc_uart_eventmanager_pending_r[1])) begin
		basesoc_uart_rx_clear <= 1'd1;
	end
end
always @(*) begin
	basesoc_uart_eventmanager_pending_w <= 2'd0;
	basesoc_uart_eventmanager_pending_w[0] <= basesoc_uart_tx_pending;
	basesoc_uart_eventmanager_pending_w[1] <= basesoc_uart_rx_pending;
end
assign basesoc_uart_irq = ((basesoc_uart_eventmanager_pending_w[0] & basesoc_uart_eventmanager_storage[0]) | (basesoc_uart_eventmanager_pending_w[1] & basesoc_uart_eventmanager_storage[1]));
assign basesoc_uart_tx_status = basesoc_uart_tx_trigger;
assign basesoc_uart_rx_status = basesoc_uart_rx_trigger;
assign basesoc_uart_tx_fifo_syncfifo_din = {basesoc_uart_tx_fifo_fifo_in_last, basesoc_uart_tx_fifo_fifo_in_first, basesoc_uart_tx_fifo_fifo_in_payload_data};
assign {basesoc_uart_tx_fifo_fifo_out_last, basesoc_uart_tx_fifo_fifo_out_first, basesoc_uart_tx_fifo_fifo_out_payload_data} = basesoc_uart_tx_fifo_syncfifo_dout;
assign basesoc_uart_tx_fifo_sink_ready = basesoc_uart_tx_fifo_syncfifo_writable;
assign basesoc_uart_tx_fifo_syncfifo_we = basesoc_uart_tx_fifo_sink_valid;
assign basesoc_uart_tx_fifo_fifo_in_first = basesoc_uart_tx_fifo_sink_first;
assign basesoc_uart_tx_fifo_fifo_in_last = basesoc_uart_tx_fifo_sink_last;
assign basesoc_uart_tx_fifo_fifo_in_payload_data = basesoc_uart_tx_fifo_sink_payload_data;
assign basesoc_uart_tx_fifo_source_valid = basesoc_uart_tx_fifo_readable;
assign basesoc_uart_tx_fifo_source_first = basesoc_uart_tx_fifo_fifo_out_first;
assign basesoc_uart_tx_fifo_source_last = basesoc_uart_tx_fifo_fifo_out_last;
assign basesoc_uart_tx_fifo_source_payload_data = basesoc_uart_tx_fifo_fifo_out_payload_data;
assign basesoc_uart_tx_fifo_re = basesoc_uart_tx_fifo_source_ready;
assign basesoc_uart_tx_fifo_syncfifo_re = (basesoc_uart_tx_fifo_syncfifo_readable & ((~basesoc_uart_tx_fifo_readable) | basesoc_uart_tx_fifo_re));
assign basesoc_uart_tx_fifo_level1 = (basesoc_uart_tx_fifo_level0 + basesoc_uart_tx_fifo_readable);
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
assign basesoc_uart_tx_fifo_rdport_re = basesoc_uart_tx_fifo_do_read;
assign basesoc_uart_tx_fifo_syncfifo_writable = (basesoc_uart_tx_fifo_level0 != 5'd16);
assign basesoc_uart_tx_fifo_syncfifo_readable = (basesoc_uart_tx_fifo_level0 != 1'd0);
assign basesoc_uart_rx_fifo_syncfifo_din = {basesoc_uart_rx_fifo_fifo_in_last, basesoc_uart_rx_fifo_fifo_in_first, basesoc_uart_rx_fifo_fifo_in_payload_data};
assign {basesoc_uart_rx_fifo_fifo_out_last, basesoc_uart_rx_fifo_fifo_out_first, basesoc_uart_rx_fifo_fifo_out_payload_data} = basesoc_uart_rx_fifo_syncfifo_dout;
assign basesoc_uart_rx_fifo_sink_ready = basesoc_uart_rx_fifo_syncfifo_writable;
assign basesoc_uart_rx_fifo_syncfifo_we = basesoc_uart_rx_fifo_sink_valid;
assign basesoc_uart_rx_fifo_fifo_in_first = basesoc_uart_rx_fifo_sink_first;
assign basesoc_uart_rx_fifo_fifo_in_last = basesoc_uart_rx_fifo_sink_last;
assign basesoc_uart_rx_fifo_fifo_in_payload_data = basesoc_uart_rx_fifo_sink_payload_data;
assign basesoc_uart_rx_fifo_source_valid = basesoc_uart_rx_fifo_readable;
assign basesoc_uart_rx_fifo_source_first = basesoc_uart_rx_fifo_fifo_out_first;
assign basesoc_uart_rx_fifo_source_last = basesoc_uart_rx_fifo_fifo_out_last;
assign basesoc_uart_rx_fifo_source_payload_data = basesoc_uart_rx_fifo_fifo_out_payload_data;
assign basesoc_uart_rx_fifo_re = basesoc_uart_rx_fifo_source_ready;
assign basesoc_uart_rx_fifo_syncfifo_re = (basesoc_uart_rx_fifo_syncfifo_readable & ((~basesoc_uart_rx_fifo_readable) | basesoc_uart_rx_fifo_re));
assign basesoc_uart_rx_fifo_level1 = (basesoc_uart_rx_fifo_level0 + basesoc_uart_rx_fifo_readable);
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
assign basesoc_uart_rx_fifo_rdport_re = basesoc_uart_rx_fifo_do_read;
assign basesoc_uart_rx_fifo_syncfifo_writable = (basesoc_uart_rx_fifo_level0 != 5'd16);
assign basesoc_uart_rx_fifo_syncfifo_readable = (basesoc_uart_rx_fifo_level0 != 1'd0);
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
assign sys_clk = clk16;
assign por_clk = sys_clk;
assign sys_rst = (crg_reset_delay != 1'd0);
assign user_led0 = cas_leds;
assign cas_leds = cas_leds_storage;
assign spiflash_wp = 1'd1;
assign spiflash_hold = 1'd1;
assign spiflash_bus_dat_r = spiflash_sr;
always @(*) begin
	spiflash_cs_n <= 1'd0;
	spiflash_clk <= 1'd0;
	spiflash_miso_status <= 1'd0;
	spiflash_mosi <= 1'd0;
	if (spiflash_bitbang_en_storage) begin
		spiflash_clk <= spiflash_bitbang_storage[1];
		spiflash_cs_n <= spiflash_bitbang_storage[2];
		if (spiflash_bitbang_storage[1]) begin
			spiflash_miso_status <= spiflash_miso;
		end
		spiflash_mosi <= spiflash_bitbang_storage[0];
	end else begin
		spiflash_clk <= spiflash_clk1;
		spiflash_cs_n <= spiflash_cs_n1;
		spiflash_mosi <= spiflash_sr[31];
	end
end
assign shared_adr = array_muxed0;
assign shared_dat_w = array_muxed1;
assign shared_sel = array_muxed2;
assign shared_cyc = array_muxed3;
assign shared_stb = array_muxed4;
assign shared_we = array_muxed5;
assign shared_cti = array_muxed6;
assign shared_bte = array_muxed7;
assign basesoc_lm32_ibus_dat_r = shared_dat_r;
assign basesoc_lm32_dbus_dat_r = shared_dat_r;
assign basesoc_lm32_ibus_ack = (shared_ack & (grant == 1'd0));
assign basesoc_lm32_dbus_ack = (shared_ack & (grant == 1'd1));
assign basesoc_lm32_ibus_err = (shared_err & (grant == 1'd0));
assign basesoc_lm32_dbus_err = (shared_err & (grant == 1'd1));
assign request = {basesoc_lm32_dbus_cyc, basesoc_lm32_ibus_cyc};
always @(*) begin
	slave_sel <= 3'd0;
	slave_sel[0] <= (shared_adr[28:26] == 1'd1);
	slave_sel[1] <= (shared_adr[28:26] == 3'd6);
	slave_sel[2] <= (shared_adr[28:26] == 2'd2);
end
assign basesoc_sram_bus_adr = shared_adr;
assign basesoc_sram_bus_dat_w = shared_dat_w;
assign basesoc_sram_bus_sel = shared_sel;
assign basesoc_sram_bus_stb = shared_stb;
assign basesoc_sram_bus_we = shared_we;
assign basesoc_sram_bus_cti = shared_cti;
assign basesoc_sram_bus_bte = shared_bte;
assign basesoc_bus_wishbone_adr = shared_adr;
assign basesoc_bus_wishbone_dat_w = shared_dat_w;
assign basesoc_bus_wishbone_sel = shared_sel;
assign basesoc_bus_wishbone_stb = shared_stb;
assign basesoc_bus_wishbone_we = shared_we;
assign basesoc_bus_wishbone_cti = shared_cti;
assign basesoc_bus_wishbone_bte = shared_bte;
assign spiflash_bus_adr = shared_adr;
assign spiflash_bus_dat_w = shared_dat_w;
assign spiflash_bus_sel = shared_sel;
assign spiflash_bus_stb = shared_stb;
assign spiflash_bus_we = shared_we;
assign spiflash_bus_cti = shared_cti;
assign spiflash_bus_bte = shared_bte;
assign basesoc_sram_bus_cyc = (shared_cyc & slave_sel[0]);
assign basesoc_bus_wishbone_cyc = (shared_cyc & slave_sel[1]);
assign spiflash_bus_cyc = (shared_cyc & slave_sel[2]);
assign shared_err = ((basesoc_sram_bus_err | basesoc_bus_wishbone_err) | spiflash_bus_err);
assign wait_1 = ((shared_stb & shared_cyc) & (~shared_ack));
always @(*) begin
	shared_dat_r <= 32'd0;
	shared_ack <= 1'd0;
	error <= 1'd0;
	shared_ack <= ((basesoc_sram_bus_ack | basesoc_bus_wishbone_ack) | spiflash_bus_ack);
	shared_dat_r <= ((({32{slave_sel_r[0]}} & basesoc_sram_bus_dat_r) | ({32{slave_sel_r[1]}} & basesoc_bus_wishbone_dat_r)) | ({32{slave_sel_r[2]}} & spiflash_bus_dat_r));
	if (done) begin
		shared_dat_r <= 32'd4294967295;
		shared_ack <= 1'd1;
		error <= 1'd1;
	end
end
assign done = (count == 1'd0);
assign csrbank0_sel = (interface0_bank_bus_adr[13:9] == 4'd9);
assign csrbank0_leds_out0_r = interface0_bank_bus_dat_w[0];
assign csrbank0_leds_out0_re = ((csrbank0_sel & interface0_bank_bus_we) & (interface0_bank_bus_adr[0] == 1'd0));
assign cas_leds_storage = cas_leds_storage_full;
assign csrbank0_leds_out0_w = cas_leds_storage_full;
assign csrbank1_sel = (interface1_bank_bus_adr[13:9] == 1'd0);
assign basesoc_ctrl_reset_reset_r = interface1_bank_bus_dat_w[0];
assign basesoc_ctrl_reset_reset_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 1'd0));
assign csrbank1_scratch3_r = interface1_bank_bus_dat_w[7:0];
assign csrbank1_scratch3_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 1'd1));
assign csrbank1_scratch2_r = interface1_bank_bus_dat_w[7:0];
assign csrbank1_scratch2_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 2'd2));
assign csrbank1_scratch1_r = interface1_bank_bus_dat_w[7:0];
assign csrbank1_scratch1_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 2'd3));
assign csrbank1_scratch0_r = interface1_bank_bus_dat_w[7:0];
assign csrbank1_scratch0_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 3'd4));
assign csrbank1_bus_errors3_r = interface1_bank_bus_dat_w[7:0];
assign csrbank1_bus_errors3_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 3'd5));
assign csrbank1_bus_errors2_r = interface1_bank_bus_dat_w[7:0];
assign csrbank1_bus_errors2_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 3'd6));
assign csrbank1_bus_errors1_r = interface1_bank_bus_dat_w[7:0];
assign csrbank1_bus_errors1_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 3'd7));
assign csrbank1_bus_errors0_r = interface1_bank_bus_dat_w[7:0];
assign csrbank1_bus_errors0_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 4'd8));
assign basesoc_ctrl_storage = basesoc_ctrl_storage_full[31:0];
assign csrbank1_scratch3_w = basesoc_ctrl_storage_full[31:24];
assign csrbank1_scratch2_w = basesoc_ctrl_storage_full[23:16];
assign csrbank1_scratch1_w = basesoc_ctrl_storage_full[15:8];
assign csrbank1_scratch0_w = basesoc_ctrl_storage_full[7:0];
assign csrbank1_bus_errors3_w = basesoc_ctrl_bus_errors_status[31:24];
assign csrbank1_bus_errors2_w = basesoc_ctrl_bus_errors_status[23:16];
assign csrbank1_bus_errors1_w = basesoc_ctrl_bus_errors_status[15:8];
assign csrbank1_bus_errors0_w = basesoc_ctrl_bus_errors_status[7:0];
assign sel = (sram_bus_adr[13:9] == 3'd4);
always @(*) begin
	sram_bus_dat_r <= 8'd0;
	if (sel_r) begin
		sram_bus_dat_r <= dat_r;
	end
end
assign adr = sram_bus_adr[2:0];
assign csrbank2_sel = (interface2_bank_bus_adr[13:9] == 4'd8);
assign csrbank2_bitbang0_r = interface2_bank_bus_dat_w[3:0];
assign csrbank2_bitbang0_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[1:0] == 1'd0));
assign csrbank2_miso_r = interface2_bank_bus_dat_w[0];
assign csrbank2_miso_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[1:0] == 1'd1));
assign csrbank2_bitbang_en0_r = interface2_bank_bus_dat_w[0];
assign csrbank2_bitbang_en0_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[1:0] == 2'd2));
assign spiflash_bitbang_storage = spiflash_bitbang_storage_full[3:0];
assign csrbank2_bitbang0_w = spiflash_bitbang_storage_full[3:0];
assign csrbank2_miso_w = spiflash_miso_status;
assign spiflash_bitbang_en_storage = spiflash_bitbang_en_storage_full;
assign csrbank2_bitbang_en0_w = spiflash_bitbang_en_storage_full;
assign csrbank3_sel = (interface3_bank_bus_adr[13:9] == 3'd5);
assign csrbank3_load3_r = interface3_bank_bus_dat_w[7:0];
assign csrbank3_load3_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 1'd0));
assign csrbank3_load2_r = interface3_bank_bus_dat_w[7:0];
assign csrbank3_load2_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 1'd1));
assign csrbank3_load1_r = interface3_bank_bus_dat_w[7:0];
assign csrbank3_load1_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 2'd2));
assign csrbank3_load0_r = interface3_bank_bus_dat_w[7:0];
assign csrbank3_load0_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 2'd3));
assign csrbank3_reload3_r = interface3_bank_bus_dat_w[7:0];
assign csrbank3_reload3_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 3'd4));
assign csrbank3_reload2_r = interface3_bank_bus_dat_w[7:0];
assign csrbank3_reload2_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 3'd5));
assign csrbank3_reload1_r = interface3_bank_bus_dat_w[7:0];
assign csrbank3_reload1_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 3'd6));
assign csrbank3_reload0_r = interface3_bank_bus_dat_w[7:0];
assign csrbank3_reload0_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 3'd7));
assign csrbank3_en0_r = interface3_bank_bus_dat_w[0];
assign csrbank3_en0_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 4'd8));
assign basesoc_timer0_update_value_r = interface3_bank_bus_dat_w[0];
assign basesoc_timer0_update_value_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 4'd9));
assign csrbank3_value3_r = interface3_bank_bus_dat_w[7:0];
assign csrbank3_value3_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 4'd10));
assign csrbank3_value2_r = interface3_bank_bus_dat_w[7:0];
assign csrbank3_value2_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 4'd11));
assign csrbank3_value1_r = interface3_bank_bus_dat_w[7:0];
assign csrbank3_value1_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 4'd12));
assign csrbank3_value0_r = interface3_bank_bus_dat_w[7:0];
assign csrbank3_value0_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 4'd13));
assign basesoc_timer0_eventmanager_status_r = interface3_bank_bus_dat_w[0];
assign basesoc_timer0_eventmanager_status_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 4'd14));
assign basesoc_timer0_eventmanager_pending_r = interface3_bank_bus_dat_w[0];
assign basesoc_timer0_eventmanager_pending_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 4'd15));
assign csrbank3_ev_enable0_r = interface3_bank_bus_dat_w[0];
assign csrbank3_ev_enable0_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 5'd16));
assign basesoc_timer0_load_storage = basesoc_timer0_load_storage_full[31:0];
assign csrbank3_load3_w = basesoc_timer0_load_storage_full[31:24];
assign csrbank3_load2_w = basesoc_timer0_load_storage_full[23:16];
assign csrbank3_load1_w = basesoc_timer0_load_storage_full[15:8];
assign csrbank3_load0_w = basesoc_timer0_load_storage_full[7:0];
assign basesoc_timer0_reload_storage = basesoc_timer0_reload_storage_full[31:0];
assign csrbank3_reload3_w = basesoc_timer0_reload_storage_full[31:24];
assign csrbank3_reload2_w = basesoc_timer0_reload_storage_full[23:16];
assign csrbank3_reload1_w = basesoc_timer0_reload_storage_full[15:8];
assign csrbank3_reload0_w = basesoc_timer0_reload_storage_full[7:0];
assign basesoc_timer0_en_storage = basesoc_timer0_en_storage_full;
assign csrbank3_en0_w = basesoc_timer0_en_storage_full;
assign csrbank3_value3_w = basesoc_timer0_value_status[31:24];
assign csrbank3_value2_w = basesoc_timer0_value_status[23:16];
assign csrbank3_value1_w = basesoc_timer0_value_status[15:8];
assign csrbank3_value0_w = basesoc_timer0_value_status[7:0];
assign basesoc_timer0_eventmanager_storage = basesoc_timer0_eventmanager_storage_full;
assign csrbank3_ev_enable0_w = basesoc_timer0_eventmanager_storage_full;
assign csrbank4_sel = (interface4_bank_bus_adr[13:9] == 2'd3);
assign basesoc_uart_rxtx_r = interface4_bank_bus_dat_w[7:0];
assign basesoc_uart_rxtx_re = ((csrbank4_sel & interface4_bank_bus_we) & (interface4_bank_bus_adr[2:0] == 1'd0));
assign csrbank4_txfull_r = interface4_bank_bus_dat_w[0];
assign csrbank4_txfull_re = ((csrbank4_sel & interface4_bank_bus_we) & (interface4_bank_bus_adr[2:0] == 1'd1));
assign csrbank4_rxempty_r = interface4_bank_bus_dat_w[0];
assign csrbank4_rxempty_re = ((csrbank4_sel & interface4_bank_bus_we) & (interface4_bank_bus_adr[2:0] == 2'd2));
assign basesoc_uart_eventmanager_status_r = interface4_bank_bus_dat_w[1:0];
assign basesoc_uart_eventmanager_status_re = ((csrbank4_sel & interface4_bank_bus_we) & (interface4_bank_bus_adr[2:0] == 2'd3));
assign basesoc_uart_eventmanager_pending_r = interface4_bank_bus_dat_w[1:0];
assign basesoc_uart_eventmanager_pending_re = ((csrbank4_sel & interface4_bank_bus_we) & (interface4_bank_bus_adr[2:0] == 3'd4));
assign csrbank4_ev_enable0_r = interface4_bank_bus_dat_w[1:0];
assign csrbank4_ev_enable0_re = ((csrbank4_sel & interface4_bank_bus_we) & (interface4_bank_bus_adr[2:0] == 3'd5));
assign csrbank4_txfull_w = basesoc_uart_txfull_status;
assign csrbank4_rxempty_w = basesoc_uart_rxempty_status;
assign basesoc_uart_eventmanager_storage = basesoc_uart_eventmanager_storage_full[1:0];
assign csrbank4_ev_enable0_w = basesoc_uart_eventmanager_storage_full[1:0];
assign csrbank5_sel = (interface5_bank_bus_adr[13:9] == 2'd2);
assign csrbank5_tuning_word3_r = interface5_bank_bus_dat_w[7:0];
assign csrbank5_tuning_word3_re = ((csrbank5_sel & interface5_bank_bus_we) & (interface5_bank_bus_adr[1:0] == 1'd0));
assign csrbank5_tuning_word2_r = interface5_bank_bus_dat_w[7:0];
assign csrbank5_tuning_word2_re = ((csrbank5_sel & interface5_bank_bus_we) & (interface5_bank_bus_adr[1:0] == 1'd1));
assign csrbank5_tuning_word1_r = interface5_bank_bus_dat_w[7:0];
assign csrbank5_tuning_word1_re = ((csrbank5_sel & interface5_bank_bus_we) & (interface5_bank_bus_adr[1:0] == 2'd2));
assign csrbank5_tuning_word0_r = interface5_bank_bus_dat_w[7:0];
assign csrbank5_tuning_word0_re = ((csrbank5_sel & interface5_bank_bus_we) & (interface5_bank_bus_adr[1:0] == 2'd3));
assign basesoc_uart_phy_storage = basesoc_uart_phy_storage_full[31:0];
assign csrbank5_tuning_word3_w = basesoc_uart_phy_storage_full[31:24];
assign csrbank5_tuning_word2_w = basesoc_uart_phy_storage_full[23:16];
assign csrbank5_tuning_word1_w = basesoc_uart_phy_storage_full[15:8];
assign csrbank5_tuning_word0_w = basesoc_uart_phy_storage_full[7:0];
assign interface0_bank_bus_adr = basesoc_interface_adr;
assign interface1_bank_bus_adr = basesoc_interface_adr;
assign interface2_bank_bus_adr = basesoc_interface_adr;
assign interface3_bank_bus_adr = basesoc_interface_adr;
assign interface4_bank_bus_adr = basesoc_interface_adr;
assign interface5_bank_bus_adr = basesoc_interface_adr;
assign sram_bus_adr = basesoc_interface_adr;
assign interface0_bank_bus_we = basesoc_interface_we;
assign interface1_bank_bus_we = basesoc_interface_we;
assign interface2_bank_bus_we = basesoc_interface_we;
assign interface3_bank_bus_we = basesoc_interface_we;
assign interface4_bank_bus_we = basesoc_interface_we;
assign interface5_bank_bus_we = basesoc_interface_we;
assign sram_bus_we = basesoc_interface_we;
assign interface0_bank_bus_dat_w = basesoc_interface_dat_w;
assign interface1_bank_bus_dat_w = basesoc_interface_dat_w;
assign interface2_bank_bus_dat_w = basesoc_interface_dat_w;
assign interface3_bank_bus_dat_w = basesoc_interface_dat_w;
assign interface4_bank_bus_dat_w = basesoc_interface_dat_w;
assign interface5_bank_bus_dat_w = basesoc_interface_dat_w;
assign sram_bus_dat_w = basesoc_interface_dat_w;
assign basesoc_interface_dat_r = ((((((interface0_bank_bus_dat_r | interface1_bank_bus_dat_r) | interface2_bank_bus_dat_r) | interface3_bank_bus_dat_r) | interface4_bank_bus_dat_r) | interface5_bank_bus_dat_r) | sram_bus_dat_r);
always @(*) begin
	array_muxed0 <= 30'd0;
	case (grant)
		1'd0: begin
			array_muxed0 <= basesoc_lm32_ibus_adr;
		end
		default: begin
			array_muxed0 <= basesoc_lm32_dbus_adr;
		end
	endcase
end
always @(*) begin
	array_muxed1 <= 32'd0;
	case (grant)
		1'd0: begin
			array_muxed1 <= basesoc_lm32_ibus_dat_w;
		end
		default: begin
			array_muxed1 <= basesoc_lm32_dbus_dat_w;
		end
	endcase
end
always @(*) begin
	array_muxed2 <= 4'd0;
	case (grant)
		1'd0: begin
			array_muxed2 <= basesoc_lm32_ibus_sel;
		end
		default: begin
			array_muxed2 <= basesoc_lm32_dbus_sel;
		end
	endcase
end
always @(*) begin
	array_muxed3 <= 1'd0;
	case (grant)
		1'd0: begin
			array_muxed3 <= basesoc_lm32_ibus_cyc;
		end
		default: begin
			array_muxed3 <= basesoc_lm32_dbus_cyc;
		end
	endcase
end
always @(*) begin
	array_muxed4 <= 1'd0;
	case (grant)
		1'd0: begin
			array_muxed4 <= basesoc_lm32_ibus_stb;
		end
		default: begin
			array_muxed4 <= basesoc_lm32_dbus_stb;
		end
	endcase
end
always @(*) begin
	array_muxed5 <= 1'd0;
	case (grant)
		1'd0: begin
			array_muxed5 <= basesoc_lm32_ibus_we;
		end
		default: begin
			array_muxed5 <= basesoc_lm32_dbus_we;
		end
	endcase
end
always @(*) begin
	array_muxed6 <= 3'd0;
	case (grant)
		1'd0: begin
			array_muxed6 <= basesoc_lm32_ibus_cti;
		end
		default: begin
			array_muxed6 <= basesoc_lm32_dbus_cti;
		end
	endcase
end
always @(*) begin
	array_muxed7 <= 2'd0;
	case (grant)
		1'd0: begin
			array_muxed7 <= basesoc_lm32_ibus_bte;
		end
		default: begin
			array_muxed7 <= basesoc_lm32_dbus_bte;
		end
	endcase
end
assign basesoc_uart_phy_rx = regs1;

always @(posedge por_clk) begin
	if ((crg_reset_delay != 1'd0)) begin
		crg_reset_delay <= (crg_reset_delay - 1'd1);
	end
	if (por_rst) begin
		crg_reset_delay <= 12'd4095;
	end
end

always @(posedge sys_clk) begin
	if ((basesoc_ctrl_bus_errors != 32'd4294967295)) begin
		if (basesoc_ctrl_bus_error) begin
			basesoc_ctrl_bus_errors <= (basesoc_ctrl_bus_errors + 1'd1);
		end
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
	if (basesoc_uart_tx_fifo_syncfifo_re) begin
		basesoc_uart_tx_fifo_readable <= 1'd1;
	end else begin
		if (basesoc_uart_tx_fifo_re) begin
			basesoc_uart_tx_fifo_readable <= 1'd0;
		end
	end
	if (((basesoc_uart_tx_fifo_syncfifo_we & basesoc_uart_tx_fifo_syncfifo_writable) & (~basesoc_uart_tx_fifo_replace))) begin
		basesoc_uart_tx_fifo_produce <= (basesoc_uart_tx_fifo_produce + 1'd1);
	end
	if (basesoc_uart_tx_fifo_do_read) begin
		basesoc_uart_tx_fifo_consume <= (basesoc_uart_tx_fifo_consume + 1'd1);
	end
	if (((basesoc_uart_tx_fifo_syncfifo_we & basesoc_uart_tx_fifo_syncfifo_writable) & (~basesoc_uart_tx_fifo_replace))) begin
		if ((~basesoc_uart_tx_fifo_do_read)) begin
			basesoc_uart_tx_fifo_level0 <= (basesoc_uart_tx_fifo_level0 + 1'd1);
		end
	end else begin
		if (basesoc_uart_tx_fifo_do_read) begin
			basesoc_uart_tx_fifo_level0 <= (basesoc_uart_tx_fifo_level0 - 1'd1);
		end
	end
	if (basesoc_uart_rx_fifo_syncfifo_re) begin
		basesoc_uart_rx_fifo_readable <= 1'd1;
	end else begin
		if (basesoc_uart_rx_fifo_re) begin
			basesoc_uart_rx_fifo_readable <= 1'd0;
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
			basesoc_uart_rx_fifo_level0 <= (basesoc_uart_rx_fifo_level0 + 1'd1);
		end
	end else begin
		if (basesoc_uart_rx_fifo_do_read) begin
			basesoc_uart_rx_fifo_level0 <= (basesoc_uart_rx_fifo_level0 - 1'd1);
		end
	end
	if (basesoc_uart_reset) begin
		basesoc_uart_tx_pending <= 1'd0;
		basesoc_uart_tx_old_trigger <= 1'd0;
		basesoc_uart_rx_pending <= 1'd0;
		basesoc_uart_rx_old_trigger <= 1'd0;
		basesoc_uart_tx_fifo_readable <= 1'd0;
		basesoc_uart_tx_fifo_level0 <= 5'd0;
		basesoc_uart_tx_fifo_produce <= 4'd0;
		basesoc_uart_tx_fifo_consume <= 4'd0;
		basesoc_uart_rx_fifo_readable <= 1'd0;
		basesoc_uart_rx_fifo_level0 <= 5'd0;
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
	if ((spiflash_i == 1'd0)) begin
		spiflash_clk1 <= 1'd1;
		spiflash_miso1 <= spiflash_miso;
	end
	if ((spiflash_i == 1'd1)) begin
		spiflash_i <= 1'd0;
		spiflash_clk1 <= 1'd0;
		spiflash_sr <= {spiflash_sr[30:0], spiflash_miso1};
	end else begin
		spiflash_i <= (spiflash_i + 1'd1);
	end
	if ((((spiflash_bus_cyc & spiflash_bus_stb) & (spiflash_i == 1'd1)) & (spiflash_counter == 1'd0))) begin
		spiflash_cs_n1 <= 1'd0;
		spiflash_sr[31:24] <= 4'd11;
	end
	if ((spiflash_counter == 5'd16)) begin
		spiflash_sr[31:8] <= {spiflash_bus_adr, {2{1'd0}}};
	end
	if ((spiflash_counter == 7'd64)) begin
	end
	if ((spiflash_counter == 8'd144)) begin
		spiflash_bus_ack <= 1'd1;
		spiflash_cs_n1 <= 1'd1;
	end
	if ((spiflash_counter == 8'd145)) begin
		spiflash_bus_ack <= 1'd0;
	end
	if ((spiflash_counter == 8'd147)) begin
	end
	if ((spiflash_counter == 8'd147)) begin
		spiflash_counter <= 1'd0;
	end else begin
		if ((spiflash_counter != 1'd0)) begin
			spiflash_counter <= (spiflash_counter + 1'd1);
		end else begin
			if (((spiflash_bus_cyc & spiflash_bus_stb) & (spiflash_i == 1'd1))) begin
				spiflash_counter <= 1'd1;
			end
		end
	end
	case (grant)
		1'd0: begin
			if ((~request[0])) begin
				if (request[1]) begin
					grant <= 1'd1;
				end
			end
		end
		1'd1: begin
			if ((~request[1])) begin
				if (request[0]) begin
					grant <= 1'd0;
				end
			end
		end
	endcase
	slave_sel_r <= slave_sel;
	if (wait_1) begin
		if ((~done)) begin
			count <= (count - 1'd1);
		end
	end else begin
		count <= 20'd1000000;
	end
	interface0_bank_bus_dat_r <= 1'd0;
	if (csrbank0_sel) begin
		case (interface0_bank_bus_adr[0])
			1'd0: begin
				interface0_bank_bus_dat_r <= csrbank0_leds_out0_w;
			end
		endcase
	end
	if (csrbank0_leds_out0_re) begin
		cas_leds_storage_full <= csrbank0_leds_out0_r;
	end
	cas_leds_re <= csrbank0_leds_out0_re;
	interface1_bank_bus_dat_r <= 1'd0;
	if (csrbank1_sel) begin
		case (interface1_bank_bus_adr[3:0])
			1'd0: begin
				interface1_bank_bus_dat_r <= basesoc_ctrl_reset_reset_w;
			end
			1'd1: begin
				interface1_bank_bus_dat_r <= csrbank1_scratch3_w;
			end
			2'd2: begin
				interface1_bank_bus_dat_r <= csrbank1_scratch2_w;
			end
			2'd3: begin
				interface1_bank_bus_dat_r <= csrbank1_scratch1_w;
			end
			3'd4: begin
				interface1_bank_bus_dat_r <= csrbank1_scratch0_w;
			end
			3'd5: begin
				interface1_bank_bus_dat_r <= csrbank1_bus_errors3_w;
			end
			3'd6: begin
				interface1_bank_bus_dat_r <= csrbank1_bus_errors2_w;
			end
			3'd7: begin
				interface1_bank_bus_dat_r <= csrbank1_bus_errors1_w;
			end
			4'd8: begin
				interface1_bank_bus_dat_r <= csrbank1_bus_errors0_w;
			end
		endcase
	end
	if (csrbank1_scratch3_re) begin
		basesoc_ctrl_storage_full[31:24] <= csrbank1_scratch3_r;
	end
	if (csrbank1_scratch2_re) begin
		basesoc_ctrl_storage_full[23:16] <= csrbank1_scratch2_r;
	end
	if (csrbank1_scratch1_re) begin
		basesoc_ctrl_storage_full[15:8] <= csrbank1_scratch1_r;
	end
	if (csrbank1_scratch0_re) begin
		basesoc_ctrl_storage_full[7:0] <= csrbank1_scratch0_r;
	end
	basesoc_ctrl_re <= csrbank1_scratch0_re;
	sel_r <= sel;
	interface2_bank_bus_dat_r <= 1'd0;
	if (csrbank2_sel) begin
		case (interface2_bank_bus_adr[1:0])
			1'd0: begin
				interface2_bank_bus_dat_r <= csrbank2_bitbang0_w;
			end
			1'd1: begin
				interface2_bank_bus_dat_r <= csrbank2_miso_w;
			end
			2'd2: begin
				interface2_bank_bus_dat_r <= csrbank2_bitbang_en0_w;
			end
		endcase
	end
	if (csrbank2_bitbang0_re) begin
		spiflash_bitbang_storage_full[3:0] <= csrbank2_bitbang0_r;
	end
	spiflash_bitbang_re <= csrbank2_bitbang0_re;
	if (csrbank2_bitbang_en0_re) begin
		spiflash_bitbang_en_storage_full <= csrbank2_bitbang_en0_r;
	end
	spiflash_bitbang_en_re <= csrbank2_bitbang_en0_re;
	interface3_bank_bus_dat_r <= 1'd0;
	if (csrbank3_sel) begin
		case (interface3_bank_bus_adr[4:0])
			1'd0: begin
				interface3_bank_bus_dat_r <= csrbank3_load3_w;
			end
			1'd1: begin
				interface3_bank_bus_dat_r <= csrbank3_load2_w;
			end
			2'd2: begin
				interface3_bank_bus_dat_r <= csrbank3_load1_w;
			end
			2'd3: begin
				interface3_bank_bus_dat_r <= csrbank3_load0_w;
			end
			3'd4: begin
				interface3_bank_bus_dat_r <= csrbank3_reload3_w;
			end
			3'd5: begin
				interface3_bank_bus_dat_r <= csrbank3_reload2_w;
			end
			3'd6: begin
				interface3_bank_bus_dat_r <= csrbank3_reload1_w;
			end
			3'd7: begin
				interface3_bank_bus_dat_r <= csrbank3_reload0_w;
			end
			4'd8: begin
				interface3_bank_bus_dat_r <= csrbank3_en0_w;
			end
			4'd9: begin
				interface3_bank_bus_dat_r <= basesoc_timer0_update_value_w;
			end
			4'd10: begin
				interface3_bank_bus_dat_r <= csrbank3_value3_w;
			end
			4'd11: begin
				interface3_bank_bus_dat_r <= csrbank3_value2_w;
			end
			4'd12: begin
				interface3_bank_bus_dat_r <= csrbank3_value1_w;
			end
			4'd13: begin
				interface3_bank_bus_dat_r <= csrbank3_value0_w;
			end
			4'd14: begin
				interface3_bank_bus_dat_r <= basesoc_timer0_eventmanager_status_w;
			end
			4'd15: begin
				interface3_bank_bus_dat_r <= basesoc_timer0_eventmanager_pending_w;
			end
			5'd16: begin
				interface3_bank_bus_dat_r <= csrbank3_ev_enable0_w;
			end
		endcase
	end
	if (csrbank3_load3_re) begin
		basesoc_timer0_load_storage_full[31:24] <= csrbank3_load3_r;
	end
	if (csrbank3_load2_re) begin
		basesoc_timer0_load_storage_full[23:16] <= csrbank3_load2_r;
	end
	if (csrbank3_load1_re) begin
		basesoc_timer0_load_storage_full[15:8] <= csrbank3_load1_r;
	end
	if (csrbank3_load0_re) begin
		basesoc_timer0_load_storage_full[7:0] <= csrbank3_load0_r;
	end
	basesoc_timer0_load_re <= csrbank3_load0_re;
	if (csrbank3_reload3_re) begin
		basesoc_timer0_reload_storage_full[31:24] <= csrbank3_reload3_r;
	end
	if (csrbank3_reload2_re) begin
		basesoc_timer0_reload_storage_full[23:16] <= csrbank3_reload2_r;
	end
	if (csrbank3_reload1_re) begin
		basesoc_timer0_reload_storage_full[15:8] <= csrbank3_reload1_r;
	end
	if (csrbank3_reload0_re) begin
		basesoc_timer0_reload_storage_full[7:0] <= csrbank3_reload0_r;
	end
	basesoc_timer0_reload_re <= csrbank3_reload0_re;
	if (csrbank3_en0_re) begin
		basesoc_timer0_en_storage_full <= csrbank3_en0_r;
	end
	basesoc_timer0_en_re <= csrbank3_en0_re;
	if (csrbank3_ev_enable0_re) begin
		basesoc_timer0_eventmanager_storage_full <= csrbank3_ev_enable0_r;
	end
	basesoc_timer0_eventmanager_re <= csrbank3_ev_enable0_re;
	interface4_bank_bus_dat_r <= 1'd0;
	if (csrbank4_sel) begin
		case (interface4_bank_bus_adr[2:0])
			1'd0: begin
				interface4_bank_bus_dat_r <= basesoc_uart_rxtx_w;
			end
			1'd1: begin
				interface4_bank_bus_dat_r <= csrbank4_txfull_w;
			end
			2'd2: begin
				interface4_bank_bus_dat_r <= csrbank4_rxempty_w;
			end
			2'd3: begin
				interface4_bank_bus_dat_r <= basesoc_uart_eventmanager_status_w;
			end
			3'd4: begin
				interface4_bank_bus_dat_r <= basesoc_uart_eventmanager_pending_w;
			end
			3'd5: begin
				interface4_bank_bus_dat_r <= csrbank4_ev_enable0_w;
			end
		endcase
	end
	if (csrbank4_ev_enable0_re) begin
		basesoc_uart_eventmanager_storage_full[1:0] <= csrbank4_ev_enable0_r;
	end
	basesoc_uart_eventmanager_re <= csrbank4_ev_enable0_re;
	interface5_bank_bus_dat_r <= 1'd0;
	if (csrbank5_sel) begin
		case (interface5_bank_bus_adr[1:0])
			1'd0: begin
				interface5_bank_bus_dat_r <= csrbank5_tuning_word3_w;
			end
			1'd1: begin
				interface5_bank_bus_dat_r <= csrbank5_tuning_word2_w;
			end
			2'd2: begin
				interface5_bank_bus_dat_r <= csrbank5_tuning_word1_w;
			end
			2'd3: begin
				interface5_bank_bus_dat_r <= csrbank5_tuning_word0_w;
			end
		endcase
	end
	if (csrbank5_tuning_word3_re) begin
		basesoc_uart_phy_storage_full[31:24] <= csrbank5_tuning_word3_r;
	end
	if (csrbank5_tuning_word2_re) begin
		basesoc_uart_phy_storage_full[23:16] <= csrbank5_tuning_word2_r;
	end
	if (csrbank5_tuning_word1_re) begin
		basesoc_uart_phy_storage_full[15:8] <= csrbank5_tuning_word1_r;
	end
	if (csrbank5_tuning_word0_re) begin
		basesoc_uart_phy_storage_full[7:0] <= csrbank5_tuning_word0_r;
	end
	basesoc_uart_phy_re <= csrbank5_tuning_word0_re;
	if (sys_rst) begin
		basesoc_ctrl_storage_full <= 32'd305419896;
		basesoc_ctrl_re <= 1'd0;
		basesoc_ctrl_bus_errors <= 32'd0;
		basesoc_sram_bus_ack <= 1'd0;
		basesoc_interface_adr <= 14'd0;
		basesoc_interface_we <= 1'd0;
		basesoc_interface_dat_w <= 8'd0;
		basesoc_bus_wishbone_dat_r <= 32'd0;
		basesoc_bus_wishbone_ack <= 1'd0;
		basesoc_counter <= 2'd0;
		serial_tx <= 1'd1;
		basesoc_uart_phy_storage_full <= 32'd30923764;
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
		basesoc_uart_eventmanager_storage_full <= 2'd0;
		basesoc_uart_eventmanager_re <= 1'd0;
		basesoc_uart_tx_fifo_readable <= 1'd0;
		basesoc_uart_tx_fifo_level0 <= 5'd0;
		basesoc_uart_tx_fifo_produce <= 4'd0;
		basesoc_uart_tx_fifo_consume <= 4'd0;
		basesoc_uart_rx_fifo_readable <= 1'd0;
		basesoc_uart_rx_fifo_level0 <= 5'd0;
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
		cas_leds_storage_full <= 1'd0;
		cas_leds_re <= 1'd0;
		spiflash_bus_ack <= 1'd0;
		spiflash_bitbang_storage_full <= 4'd0;
		spiflash_bitbang_re <= 1'd0;
		spiflash_bitbang_en_storage_full <= 1'd0;
		spiflash_bitbang_en_re <= 1'd0;
		spiflash_cs_n1 <= 1'd1;
		spiflash_clk1 <= 1'd0;
		spiflash_sr <= 32'd0;
		spiflash_i <= 1'd0;
		spiflash_miso1 <= 1'd0;
		spiflash_counter <= 8'd0;
		grant <= 1'd0;
		slave_sel_r <= 3'd0;
		count <= 20'd1000000;
		interface0_bank_bus_dat_r <= 8'd0;
		interface1_bank_bus_dat_r <= 8'd0;
		sel_r <= 1'd0;
		interface2_bank_bus_dat_r <= 8'd0;
		interface3_bank_bus_dat_r <= 8'd0;
		interface4_bank_bus_dat_r <= 8'd0;
		interface5_bank_bus_dat_r <= 8'd0;
	end
	regs0 <= serial_rx;
	regs1 <= regs0;
end

lm32_cpu #(
	.eba_reset(32'h20050000)
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

reg [31:0] mem[0:2559];
reg [11:0] memadr;
always @(posedge sys_clk) begin
	if (basesoc_sram_we[0])
		mem[basesoc_sram_adr][7:0] <= basesoc_sram_dat_w[7:0];
	if (basesoc_sram_we[1])
		mem[basesoc_sram_adr][15:8] <= basesoc_sram_dat_w[15:8];
	if (basesoc_sram_we[2])
		mem[basesoc_sram_adr][23:16] <= basesoc_sram_dat_w[23:16];
	if (basesoc_sram_we[3])
		mem[basesoc_sram_adr][31:24] <= basesoc_sram_dat_w[31:24];
	memadr <= basesoc_sram_adr;
end

assign basesoc_sram_dat_r = mem[memadr];

reg [9:0] storage[0:15];
reg [9:0] memdat;
reg [9:0] memdat_1;
always @(posedge sys_clk) begin
	if (basesoc_uart_tx_fifo_wrport_we)
		storage[basesoc_uart_tx_fifo_wrport_adr] <= basesoc_uart_tx_fifo_wrport_dat_w;
	memdat <= storage[basesoc_uart_tx_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
	if (basesoc_uart_tx_fifo_rdport_re)
		memdat_1 <= storage[basesoc_uart_tx_fifo_rdport_adr];
end

assign basesoc_uart_tx_fifo_wrport_dat_r = memdat;
assign basesoc_uart_tx_fifo_rdport_dat_r = memdat_1;

reg [9:0] storage_1[0:15];
reg [9:0] memdat_2;
reg [9:0] memdat_3;
always @(posedge sys_clk) begin
	if (basesoc_uart_rx_fifo_wrport_we)
		storage_1[basesoc_uart_rx_fifo_wrport_adr] <= basesoc_uart_rx_fifo_wrport_dat_w;
	memdat_2 <= storage_1[basesoc_uart_rx_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
	if (basesoc_uart_rx_fifo_rdport_re)
		memdat_3 <= storage_1[basesoc_uart_rx_fifo_rdport_adr];
end

assign basesoc_uart_rx_fifo_wrport_dat_r = memdat_2;
assign basesoc_uart_rx_fifo_rdport_dat_r = memdat_3;

reg [7:0] mem_1[0:7];
reg [2:0] memadr_1;
always @(posedge sys_clk) begin
	memadr_1 <= adr;
end

assign dat_r = mem_1[memadr_1];

initial begin
	$readmemh("mem_1.init", mem_1);
end

SB_DFFS SB_DFFS(
	.C(por_clk),
	.D(1'd0),
	.S(crg_reset),
	.Q(rst1)
);

SB_DFFS SB_DFFS_1(
	.C(por_clk),
	.D(rst1),
	.S(crg_reset),
	.Q(por_rst)
);

endmodule
