/* Machine-generated using LiteX gen */
module top(
	input clk100,
	input user_btn5,
	output ddram_clock_p,
	output ddram_clock_n,
	output spiflash_cs_n,
	output spiflash_clk,
	output spiflash_mosi,
	input spiflash_miso,
	output reg [12:0] ddram_a,
	output reg [1:0] ddram_ba,
	output reg ddram_cke,
	output reg ddram_ras_n,
	output reg ddram_cas_n,
	output reg ddram_we_n,
	inout [15:0] ddram_dq,
	output [1:0] ddram_dqs,
	output [1:0] ddram_dm,
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
	input user_sw4,
	input user_sw5,
	input user_sw6,
	input user_sw7,
	input user_btn0,
	input user_btn1,
	input user_btn2,
	input user_btn3,
	input user_btn4,
	output reg serial_tx,
	input serial_rx
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
wire sdram_half_clk;
reg sdram_half_rst = 1'd0;
wire sdram_full_wr_clk;
wire sdram_full_rd_clk;
wire base50_clk;
wire base50_rst;
reg crg_reset = 1'd0;
wire crg_clk100a;
wire crg_clk100b;
wire crg_unbuf_sdram_full;
wire crg_unbuf_sdram_half_a;
wire crg_unbuf_sdram_half_b;
wire crg_unbuf_unused;
wire crg_unbuf_sys;
wire crg_unbuf_periph;
wire crg_pll_lckd;
wire crg_pll_fb;
wire por_clk;
wire por_rst;
reg [10:0] crg_por = 11'd2047;
wire crg_clk4x_wr_strb;
wire crg_clk4x_rd_strb;
wire crg_clk_sdram_half_shifted;
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
reg cs_n = 1'd1;
reg clk = 1'd0;
reg [31:0] sr = 32'd0;
reg [1:0] i = 2'd0;
reg miso = 1'd0;
reg [8:0] counter = 9'd0;
wire [12:0] ddrphy_dfi_p0_address;
wire [1:0] ddrphy_dfi_p0_bank;
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
wire [1:0] ddrphy_dfi_p1_bank;
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
reg [1:0] ddrphy_record0_bank = 2'd0;
reg ddrphy_record0_cas_n = 1'd0;
reg ddrphy_record0_cs_n = 1'd0;
reg ddrphy_record0_ras_n = 1'd0;
reg ddrphy_record0_we_n = 1'd0;
reg ddrphy_record0_cke = 1'd0;
reg ddrphy_record0_odt = 1'd0;
reg ddrphy_record0_reset_n = 1'd0;
reg [12:0] ddrphy_record1_address = 13'd0;
reg [1:0] ddrphy_record1_bank = 2'd0;
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
wire [1:0] controllerinjector_inti_p0_bank;
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
wire [1:0] controllerinjector_inti_p1_bank;
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
wire [1:0] controllerinjector_slave_p0_bank;
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
wire [1:0] controllerinjector_slave_p1_bank;
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
reg [1:0] controllerinjector_master_p0_bank = 2'd0;
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
reg [1:0] controllerinjector_master_p1_bank = 2'd0;
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
reg [1:0] controllerinjector_phaseinjector0_baddress_storage_full = 2'd0;
wire [1:0] controllerinjector_phaseinjector0_baddress_storage;
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
reg [1:0] controllerinjector_phaseinjector1_baddress_storage_full = 2'd0;
wire [1:0] controllerinjector_phaseinjector1_baddress_storage;
reg controllerinjector_phaseinjector1_baddress_re = 1'd0;
reg [31:0] controllerinjector_phaseinjector1_wrdata_storage_full = 32'd0;
wire [31:0] controllerinjector_phaseinjector1_wrdata_storage;
reg controllerinjector_phaseinjector1_wrdata_re = 1'd0;
reg [31:0] controllerinjector_phaseinjector1_status = 32'd0;
reg [12:0] controllerinjector_dfi_p0_address = 13'd0;
reg [1:0] controllerinjector_dfi_p0_bank = 2'd0;
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
reg [1:0] controllerinjector_dfi_p1_bank = 2'd0;
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
reg [63:0] controllerinjector_interface_wdata = 64'd0;
reg [7:0] controllerinjector_interface_wdata_we = 8'd0;
wire [63:0] controllerinjector_interface_rdata;
reg controllerinjector_cmd_valid = 1'd0;
reg controllerinjector_cmd_ready = 1'd0;
reg controllerinjector_cmd_last = 1'd0;
reg [12:0] controllerinjector_cmd_payload_a = 13'd0;
reg [1:0] controllerinjector_cmd_payload_ba = 2'd0;
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
reg [9:0] controllerinjector_count = 10'd652;
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
wire [1:0] controllerinjector_bankmachine0_cmd_payload_ba;
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
wire [1:0] controllerinjector_bankmachine1_cmd_payload_ba;
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
wire [1:0] controllerinjector_bankmachine2_cmd_payload_ba;
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
wire [1:0] controllerinjector_bankmachine3_cmd_payload_ba;
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
reg [12:0] controllerinjector_bankmachine3_openrow = 13'd0;
wire controllerinjector_bankmachine3_hit;
reg controllerinjector_bankmachine3_track_open = 1'd0;
reg controllerinjector_bankmachine3_track_close = 1'd0;
reg controllerinjector_bankmachine3_sel_row_adr = 1'd0;
wire controllerinjector_bankmachine3_wait;
wire controllerinjector_bankmachine3_done;
reg [2:0] controllerinjector_bankmachine3_count = 3'd4;
reg controllerinjector_choose_cmd_want_reads = 1'd0;
reg controllerinjector_choose_cmd_want_writes = 1'd0;
reg controllerinjector_choose_cmd_want_cmds = 1'd0;
wire controllerinjector_choose_cmd_cmd_valid;
reg controllerinjector_choose_cmd_cmd_ready = 1'd0;
wire [12:0] controllerinjector_choose_cmd_cmd_payload_a;
wire [1:0] controllerinjector_choose_cmd_cmd_payload_ba;
reg controllerinjector_choose_cmd_cmd_payload_cas = 1'd0;
reg controllerinjector_choose_cmd_cmd_payload_ras = 1'd0;
reg controllerinjector_choose_cmd_cmd_payload_we = 1'd0;
wire controllerinjector_choose_cmd_cmd_payload_is_cmd;
wire controllerinjector_choose_cmd_cmd_payload_is_read;
wire controllerinjector_choose_cmd_cmd_payload_is_write;
reg [3:0] controllerinjector_choose_cmd_valids = 4'd0;
wire [3:0] controllerinjector_choose_cmd_request;
reg [1:0] controllerinjector_choose_cmd_grant = 2'd0;
wire controllerinjector_choose_cmd_ce;
reg controllerinjector_choose_req_want_reads = 1'd0;
reg controllerinjector_choose_req_want_writes = 1'd0;
reg controllerinjector_choose_req_want_cmds = 1'd0;
wire controllerinjector_choose_req_cmd_valid;
reg controllerinjector_choose_req_cmd_ready = 1'd0;
wire [12:0] controllerinjector_choose_req_cmd_payload_a;
wire [1:0] controllerinjector_choose_req_cmd_payload_ba;
reg controllerinjector_choose_req_cmd_payload_cas = 1'd0;
reg controllerinjector_choose_req_cmd_payload_ras = 1'd0;
reg controllerinjector_choose_req_cmd_payload_we = 1'd0;
wire controllerinjector_choose_req_cmd_payload_is_cmd;
wire controllerinjector_choose_req_cmd_payload_is_read;
wire controllerinjector_choose_req_cmd_payload_is_write;
reg [3:0] controllerinjector_choose_req_valids = 4'd0;
wire [3:0] controllerinjector_choose_req_request;
reg [1:0] controllerinjector_choose_req_grant = 2'd0;
wire controllerinjector_choose_req_ce;
reg [12:0] controllerinjector_nop_a = 13'd0;
reg [1:0] controllerinjector_nop_ba = 2'd0;
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
wire [22:0] port_cmd_payload_adr;
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
wire [7:0] leds;
reg [7:0] leds_storage_full = 8'd0;
wire [7:0] leds_storage;
reg leds_re = 1'd0;
reg [7:0] switches = 8'd0;
wire [7:0] switches_status;
wire irq;
wire eventsourceprocess0_status;
reg eventsourceprocess0_pending = 1'd0;
wire eventsourceprocess0_trigger;
reg eventsourceprocess0_clear = 1'd0;
reg eventsourceprocess0_old_trigger = 1'd0;
wire waittimer0_wait;
wire waittimer0_done;
reg [19:0] waittimer0_count = 20'd833333;
wire eventsourceprocess1_status;
reg eventsourceprocess1_pending = 1'd0;
wire eventsourceprocess1_trigger;
reg eventsourceprocess1_clear = 1'd0;
reg eventsourceprocess1_old_trigger = 1'd0;
wire waittimer1_wait;
wire waittimer1_done;
reg [19:0] waittimer1_count = 20'd833333;
wire eventsourceprocess2_status;
reg eventsourceprocess2_pending = 1'd0;
wire eventsourceprocess2_trigger;
reg eventsourceprocess2_clear = 1'd0;
reg eventsourceprocess2_old_trigger = 1'd0;
wire waittimer2_wait;
wire waittimer2_done;
reg [19:0] waittimer2_count = 20'd833333;
wire eventsourceprocess3_status;
reg eventsourceprocess3_pending = 1'd0;
wire eventsourceprocess3_trigger;
reg eventsourceprocess3_clear = 1'd0;
reg eventsourceprocess3_old_trigger = 1'd0;
wire waittimer3_wait;
wire waittimer3_done;
reg [19:0] waittimer3_count = 20'd833333;
wire eventsourceprocess4_status;
reg eventsourceprocess4_pending = 1'd0;
wire eventsourceprocess4_trigger;
reg eventsourceprocess4_clear = 1'd0;
reg eventsourceprocess4_old_trigger = 1'd0;
wire waittimer4_wait;
wire waittimer4_done;
reg [19:0] waittimer4_count = 20'd833333;
wire eventmanager_status_re;
wire [4:0] eventmanager_status_r;
reg [4:0] eventmanager_status_w = 5'd0;
wire eventmanager_pending_re;
wire [4:0] eventmanager_pending_r;
reg [4:0] eventmanager_pending_w = 5'd0;
reg [4:0] eventmanager_storage_full = 5'd0;
wire [4:0] eventmanager_storage;
reg eventmanager_re = 1'd0;
reg litedramport0_cmd_valid0 = 1'd0;
wire litedramport0_cmd_ready0;
reg litedramport0_cmd_payload_we0 = 1'd0;
reg [22:0] litedramport0_cmd_payload_adr0 = 23'd0;
wire litedramport0_wdata_valid0;
wire litedramport0_wdata_ready0;
wire litedramport0_wdata_last0;
wire [63:0] litedramport0_wdata_payload_data0;
wire [7:0] litedramport0_wdata_payload_we0;
wire litedramport0_rdata_valid;
wire [63:0] litedramport0_rdata_payload_data;
wire litedramport0_cmd_valid1;
reg litedramport0_cmd_ready1 = 1'd0;
wire litedramport0_cmd_payload_we1;
wire [23:0] litedramport0_cmd_payload_adr1;
wire litedramport0_wdata_valid1;
wire litedramport0_wdata_ready1;
reg litedramport0_wdata_last1 = 1'd0;
wire [31:0] litedramport0_wdata_payload_data1;
wire [3:0] litedramport0_wdata_payload_we1;
reg litedramwriteportupconverter_we = 1'd0;
reg [22:0] litedramwriteportupconverter_address = 23'd0;
reg litedramwriteportupconverter_counter = 1'd0;
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
reg [63:0] litedramwriteportupconverter_source_payload_data = 64'd0;
reg [7:0] litedramwriteportupconverter_source_payload_we = 8'd0;
wire litedramwriteportupconverter_converter_sink_valid;
wire litedramwriteportupconverter_converter_sink_ready;
wire litedramwriteportupconverter_converter_sink_last;
wire [35:0] litedramwriteportupconverter_converter_sink_payload_data;
wire litedramwriteportupconverter_converter_source_valid;
wire litedramwriteportupconverter_converter_source_ready;
reg litedramwriteportupconverter_converter_source_last = 1'd0;
reg [71:0] litedramwriteportupconverter_converter_source_payload_data = 72'd0;
reg [1:0] litedramwriteportupconverter_converter_source_payload_valid_token_count = 2'd0;
reg litedramwriteportupconverter_converter_demux = 1'd0;
wire litedramwriteportupconverter_converter_load_part;
reg litedramwriteportupconverter_converter_strobe_all = 1'd0;
wire litedramwriteportupconverter_source_source_valid;
wire litedramwriteportupconverter_source_source_ready;
wire litedramwriteportupconverter_source_source_last;
wire [71:0] litedramwriteportupconverter_source_source_payload_data;
wire generator_reset_re;
wire generator_reset_r;
reg generator_reset_w = 1'd0;
wire generator_start_re;
wire generator_start_r;
reg generator_start_w = 1'd0;
wire generator_status;
reg [23:0] generator_base_storage_full = 24'd0;
wire [23:0] generator_base_storage;
reg generator_base_re = 1'd0;
reg [23:0] generator_length_storage_full = 24'd0;
wire [23:0] generator_length_storage;
reg generator_length_re = 1'd0;
wire generator_core_start;
reg generator_core_done = 1'd0;
wire [23:0] generator_core_base;
wire [23:0] generator_core_length;
reg generator_core_sink_sink_valid = 1'd0;
wire generator_core_sink_sink_ready;
wire [23:0] generator_core_sink_sink_payload_address;
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
reg [30:0] generator_core_state = 31'd0;
reg generator_core_ce = 1'd0;
reg [23:0] generator_core_cmd_counter = 24'd0;
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
wire [23:0] generator_base_sync_i;
reg [23:0] generator_base_sync_o = 24'd0;
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
(* register_balancing = "no" *) reg [23:0] generator_base_sync_ibuffer = 24'd0;
wire [23:0] generator_base_sync_obuffer;
wire [23:0] generator_length_sync_i;
reg [23:0] generator_length_sync_o = 24'd0;
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
(* register_balancing = "no" *) reg [23:0] generator_length_sync_ibuffer = 24'd0;
wire [23:0] generator_length_sync_obuffer;
reg litedramport1_cmd_valid0 = 1'd0;
wire litedramport1_cmd_ready0;
reg litedramport1_cmd_payload_we0 = 1'd0;
reg [22:0] litedramport1_cmd_payload_adr0 = 23'd0;
wire litedramport1_wdata_ready;
reg [63:0] litedramport1_wdata_payload_data = 64'd0;
reg [7:0] litedramport1_wdata_payload_we = 8'd0;
wire litedramport1_rdata_valid0;
wire litedramport1_rdata_ready0;
reg litedramport1_rdata_last0 = 1'd0;
wire [63:0] litedramport1_rdata_payload_data0;
wire litedramport1_cmd_valid1;
reg litedramport1_cmd_ready1 = 1'd0;
wire litedramport1_cmd_payload_we1;
wire [23:0] litedramport1_cmd_payload_adr1;
reg litedramport1_rdata_valid1 = 1'd0;
wire litedramport1_rdata_ready1;
reg litedramport1_rdata_last1 = 1'd0;
reg [31:0] litedramport1_rdata_payload_data1 = 32'd0;
reg litedramport1_flush = 1'd0;
reg litedramreadportupconverter_cmd_buffer_sink_valid = 1'd0;
wire litedramreadportupconverter_cmd_buffer_sink_ready;
reg litedramreadportupconverter_cmd_buffer_sink_last = 1'd0;
reg [1:0] litedramreadportupconverter_cmd_buffer_sink_payload_sel = 2'd0;
wire litedramreadportupconverter_cmd_buffer_source_valid;
wire litedramreadportupconverter_cmd_buffer_source_ready;
wire litedramreadportupconverter_cmd_buffer_source_last;
wire [1:0] litedramreadportupconverter_cmd_buffer_source_payload_sel;
wire litedramreadportupconverter_cmd_buffer_syncfifo_we;
wire litedramreadportupconverter_cmd_buffer_syncfifo_writable;
wire litedramreadportupconverter_cmd_buffer_syncfifo_re;
wire litedramreadportupconverter_cmd_buffer_syncfifo_readable;
wire [2:0] litedramreadportupconverter_cmd_buffer_syncfifo_din;
wire [2:0] litedramreadportupconverter_cmd_buffer_syncfifo_dout;
reg [2:0] litedramreadportupconverter_cmd_buffer_level = 3'd0;
reg litedramreadportupconverter_cmd_buffer_replace = 1'd0;
reg [1:0] litedramreadportupconverter_cmd_buffer_produce = 2'd0;
reg [1:0] litedramreadportupconverter_cmd_buffer_consume = 2'd0;
reg [1:0] litedramreadportupconverter_cmd_buffer_wrport_adr = 2'd0;
wire [2:0] litedramreadportupconverter_cmd_buffer_wrport_dat_r;
wire litedramreadportupconverter_cmd_buffer_wrport_we;
wire [2:0] litedramreadportupconverter_cmd_buffer_wrport_dat_w;
wire litedramreadportupconverter_cmd_buffer_do_read;
wire [1:0] litedramreadportupconverter_cmd_buffer_rdport_adr;
wire [2:0] litedramreadportupconverter_cmd_buffer_rdport_dat_r;
wire [1:0] litedramreadportupconverter_cmd_buffer_fifo_in_payload_sel;
wire litedramreadportupconverter_cmd_buffer_fifo_in_last;
wire [1:0] litedramreadportupconverter_cmd_buffer_fifo_out_payload_sel;
wire litedramreadportupconverter_cmd_buffer_fifo_out_last;
reg litedramreadportupconverter_counter = 1'd0;
reg litedramreadportupconverter_counter_ce = 1'd0;
wire litedramreadportupconverter_rdata_buffer_sink_valid;
wire litedramreadportupconverter_rdata_buffer_sink_ready;
wire litedramreadportupconverter_rdata_buffer_sink_last;
wire [63:0] litedramreadportupconverter_rdata_buffer_sink_payload_data;
wire litedramreadportupconverter_rdata_buffer_source_valid;
wire litedramreadportupconverter_rdata_buffer_source_ready;
wire litedramreadportupconverter_rdata_buffer_source_last;
reg [63:0] litedramreadportupconverter_rdata_buffer_source_payload_data = 64'd0;
wire litedramreadportupconverter_rdata_buffer_pipe_ce;
wire litedramreadportupconverter_rdata_buffer_busy;
reg litedramreadportupconverter_rdata_buffer_valid_n = 1'd0;
reg litedramreadportupconverter_rdata_buffer_last_n = 1'd0;
wire litedramreadportupconverter_rdata_converter_sink_valid;
wire litedramreadportupconverter_rdata_converter_sink_ready;
wire litedramreadportupconverter_rdata_converter_sink_last;
wire [63:0] litedramreadportupconverter_rdata_converter_sink_payload_data;
wire litedramreadportupconverter_rdata_converter_source_valid;
reg litedramreadportupconverter_rdata_converter_source_ready = 1'd0;
wire litedramreadportupconverter_rdata_converter_source_last;
wire [31:0] litedramreadportupconverter_rdata_converter_source_payload_data;
wire litedramreadportupconverter_rdata_converter_converter_sink_valid;
wire litedramreadportupconverter_rdata_converter_converter_sink_ready;
wire litedramreadportupconverter_rdata_converter_converter_sink_last;
reg [63:0] litedramreadportupconverter_rdata_converter_converter_sink_payload_data = 64'd0;
wire litedramreadportupconverter_rdata_converter_converter_source_valid;
wire litedramreadportupconverter_rdata_converter_converter_source_ready;
wire litedramreadportupconverter_rdata_converter_converter_source_last;
reg [31:0] litedramreadportupconverter_rdata_converter_converter_source_payload_data = 32'd0;
wire litedramreadportupconverter_rdata_converter_converter_source_payload_valid_token_count;
reg litedramreadportupconverter_rdata_converter_converter_mux = 1'd0;
wire litedramreadportupconverter_rdata_converter_converter_last;
wire litedramreadportupconverter_rdata_converter_source_source_valid;
wire litedramreadportupconverter_rdata_converter_source_source_ready;
wire litedramreadportupconverter_rdata_converter_source_source_last;
wire [31:0] litedramreadportupconverter_rdata_converter_source_source_payload_data;
reg [1:0] litedramreadportupconverter_rdata_chunk = 2'd1;
wire litedramreadportupconverter_rdata_chunk_valid;
wire checker_reset_re;
wire checker_reset_r;
reg checker_reset_w = 1'd0;
wire checker_start_re;
wire checker_start_r;
reg checker_start_w = 1'd0;
reg [23:0] checker_base_storage_full = 24'd0;
wire [23:0] checker_base_storage;
reg checker_base_re = 1'd0;
reg [23:0] checker_length_storage_full = 24'd0;
wire [23:0] checker_length_storage;
reg checker_length_re = 1'd0;
wire checker_done_status;
wire [31:0] checker_err_count_status;
wire checker_core_start;
wire checker_core_done;
wire [23:0] checker_core_base;
wire [23:0] checker_core_length;
reg [31:0] checker_core_err_count = 32'd0;
reg checker_core_sink_sink_valid = 1'd0;
wire checker_core_sink_sink_ready;
wire [23:0] checker_core_sink_sink_payload_address;
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
reg [30:0] checker_core_state = 31'd0;
reg checker_core_ce = 1'd0;
reg [23:0] checker_core_cmd_counter = 24'd0;
reg [23:0] checker_core_data_counter = 24'd0;
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
wire [23:0] checker_base_sync_i;
reg [23:0] checker_base_sync_o = 24'd0;
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
(* register_balancing = "no" *) reg [23:0] checker_base_sync_ibuffer = 24'd0;
wire [23:0] checker_base_sync_obuffer;
wire [23:0] checker_length_sync_i;
reg [23:0] checker_length_sync_o = 24'd0;
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
(* register_balancing = "no" *) reg [23:0] checker_length_sync_ibuffer = 24'd0;
wire [23:0] checker_length_sync_obuffer;
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
wire [23:0] data_address;
wire [31:0] data_expected;
wire [31:0] data_actual;
reg suart_tx = 1'd1;
reg suart_rx = 1'd0;
reg [31:0] suart_phy_storage = 32'd5937362;
wire suart_phy_sink_valid;
reg suart_phy_sink_ready = 1'd0;
wire suart_phy_sink_last;
wire [7:0] suart_phy_sink_payload_data;
reg suart_phy_uart_clk_txen = 1'd0;
reg [31:0] suart_phy_phase_accumulator_tx = 32'd0;
reg [7:0] suart_phy_tx_reg = 8'd0;
reg [3:0] suart_phy_tx_bitcount = 4'd0;
reg suart_phy_tx_busy = 1'd0;
reg suart_phy_source_valid = 1'd0;
wire suart_phy_source_ready;
reg suart_phy_source_last = 1'd0;
reg [7:0] suart_phy_source_payload_data = 8'd0;
reg suart_phy_uart_clk_rxen = 1'd0;
reg [31:0] suart_phy_phase_accumulator_rx = 32'd0;
wire suart_phy_rx;
reg suart_phy_rx_r = 1'd0;
reg [7:0] suart_phy_rx_reg = 8'd0;
reg [3:0] suart_phy_rx_bitcount = 4'd0;
reg suart_phy_rx_busy = 1'd0;
wire suart_uart_rxtx_re;
wire [7:0] suart_uart_rxtx_r;
wire [7:0] suart_uart_rxtx_w;
wire suart_uart_txfull_status;
wire suart_uart_rxempty_status;
wire suart_uart_irq;
wire suart_uart_tx_status;
reg suart_uart_tx_pending = 1'd0;
wire suart_uart_tx_trigger;
reg suart_uart_tx_clear = 1'd0;
reg suart_uart_tx_old_trigger = 1'd0;
wire suart_uart_rx_status;
reg suart_uart_rx_pending = 1'd0;
wire suart_uart_rx_trigger;
reg suart_uart_rx_clear = 1'd0;
reg suart_uart_rx_old_trigger = 1'd0;
wire suart_uart_status_re;
wire [1:0] suart_uart_status_r;
reg [1:0] suart_uart_status_w = 2'd0;
wire suart_uart_pending_re;
wire [1:0] suart_uart_pending_r;
reg [1:0] suart_uart_pending_w = 2'd0;
reg [1:0] suart_uart_storage_full = 2'd0;
wire [1:0] suart_uart_storage;
reg suart_uart_re = 1'd0;
wire suart_uart_tx_fifo_sink_valid;
wire suart_uart_tx_fifo_sink_ready;
reg suart_uart_tx_fifo_sink_last = 1'd0;
wire [7:0] suart_uart_tx_fifo_sink_payload_data;
wire suart_uart_tx_fifo_source_valid;
wire suart_uart_tx_fifo_source_ready;
wire suart_uart_tx_fifo_source_last;
wire [7:0] suart_uart_tx_fifo_source_payload_data;
wire suart_uart_tx_fifo_syncfifo_we;
wire suart_uart_tx_fifo_syncfifo_writable;
wire suart_uart_tx_fifo_syncfifo_re;
wire suart_uart_tx_fifo_syncfifo_readable;
wire [8:0] suart_uart_tx_fifo_syncfifo_din;
wire [8:0] suart_uart_tx_fifo_syncfifo_dout;
reg [4:0] suart_uart_tx_fifo_level = 5'd0;
reg suart_uart_tx_fifo_replace = 1'd0;
reg [3:0] suart_uart_tx_fifo_produce = 4'd0;
reg [3:0] suart_uart_tx_fifo_consume = 4'd0;
reg [3:0] suart_uart_tx_fifo_wrport_adr = 4'd0;
wire [8:0] suart_uart_tx_fifo_wrport_dat_r;
wire suart_uart_tx_fifo_wrport_we;
wire [8:0] suart_uart_tx_fifo_wrport_dat_w;
wire suart_uart_tx_fifo_do_read;
wire [3:0] suart_uart_tx_fifo_rdport_adr;
wire [8:0] suart_uart_tx_fifo_rdport_dat_r;
wire [7:0] suart_uart_tx_fifo_fifo_in_payload_data;
wire suart_uart_tx_fifo_fifo_in_last;
wire [7:0] suart_uart_tx_fifo_fifo_out_payload_data;
wire suart_uart_tx_fifo_fifo_out_last;
wire suart_uart_rx_fifo_sink_valid;
wire suart_uart_rx_fifo_sink_ready;
wire suart_uart_rx_fifo_sink_last;
wire [7:0] suart_uart_rx_fifo_sink_payload_data;
wire suart_uart_rx_fifo_source_valid;
wire suart_uart_rx_fifo_source_ready;
wire suart_uart_rx_fifo_source_last;
wire [7:0] suart_uart_rx_fifo_source_payload_data;
wire suart_uart_rx_fifo_syncfifo_we;
wire suart_uart_rx_fifo_syncfifo_writable;
wire suart_uart_rx_fifo_syncfifo_re;
wire suart_uart_rx_fifo_syncfifo_readable;
wire [8:0] suart_uart_rx_fifo_syncfifo_din;
wire [8:0] suart_uart_rx_fifo_syncfifo_dout;
reg [4:0] suart_uart_rx_fifo_level = 5'd0;
reg suart_uart_rx_fifo_replace = 1'd0;
reg [3:0] suart_uart_rx_fifo_produce = 4'd0;
reg [3:0] suart_uart_rx_fifo_consume = 4'd0;
reg [3:0] suart_uart_rx_fifo_wrport_adr = 4'd0;
wire [8:0] suart_uart_rx_fifo_wrport_dat_r;
wire suart_uart_rx_fifo_wrport_we;
wire [8:0] suart_uart_rx_fifo_wrport_dat_w;
wire suart_uart_rx_fifo_do_read;
wire [3:0] suart_uart_rx_fifo_rdport_adr;
wire [8:0] suart_uart_rx_fifo_rdport_dat_r;
wire [7:0] suart_uart_rx_fifo_fifo_in_payload_data;
wire suart_uart_rx_fifo_fifo_in_last;
wire [7:0] suart_uart_rx_fifo_fifo_out_payload_data;
wire suart_uart_rx_fifo_fifo_out_last;
reg [31:0] uartbridge_storage = 32'd989560;
reg uartbridge_sink_valid = 1'd0;
reg uartbridge_sink_ready = 1'd0;
wire uartbridge_sink_last;
reg [7:0] uartbridge_sink_payload_data = 8'd0;
reg uartbridge_uart_clk_txen = 1'd0;
reg [31:0] uartbridge_phase_accumulator_tx = 32'd0;
reg [7:0] uartbridge_tx_reg = 8'd0;
reg [3:0] uartbridge_tx_bitcount = 4'd0;
reg uartbridge_tx_busy = 1'd0;
reg uartbridge_source_valid = 1'd0;
wire uartbridge_source_ready;
reg [7:0] uartbridge_source_payload_data = 8'd0;
reg uartbridge_uart_clk_rxen = 1'd0;
reg [31:0] uartbridge_phase_accumulator_rx = 32'd0;
wire uartbridge_rx;
reg uartbridge_rx_r = 1'd0;
reg [7:0] uartbridge_rx_reg = 8'd0;
reg [3:0] uartbridge_rx_bitcount = 4'd0;
reg uartbridge_rx_busy = 1'd0;
wire [29:0] uartbridge_wishbone_adr;
wire [31:0] uartbridge_wishbone_dat_w;
wire [31:0] uartbridge_wishbone_dat_r;
wire [3:0] uartbridge_wishbone_sel;
reg uartbridge_wishbone_cyc = 1'd0;
reg uartbridge_wishbone_stb = 1'd0;
wire uartbridge_wishbone_ack;
reg uartbridge_wishbone_we = 1'd0;
reg [2:0] uartbridge_wishbone_cti = 3'd0;
reg [1:0] uartbridge_wishbone_bte = 2'd0;
wire uartbridge_wishbone_err;
reg [2:0] uartbridge_byte_counter = 3'd0;
reg uartbridge_byte_counter_reset = 1'd0;
reg uartbridge_byte_counter_ce = 1'd0;
reg [2:0] uartbridge_word_counter = 3'd0;
reg uartbridge_word_counter_reset = 1'd0;
reg uartbridge_word_counter_ce = 1'd0;
reg [7:0] uartbridge_cmd = 8'd0;
reg uartbridge_cmd_ce = 1'd0;
reg [7:0] uartbridge_length = 8'd0;
reg uartbridge_length_ce = 1'd0;
reg [31:0] uartbridge_address = 32'd0;
reg uartbridge_address_ce = 1'd0;
reg [31:0] uartbridge_data = 32'd0;
reg uartbridge_rx_data_ce = 1'd0;
reg uartbridge_tx_data_ce = 1'd0;
wire uartbridge_reset;
wire uartbridge_wait;
wire uartbridge_done;
reg [22:0] uartbridge_count = 23'd8333333;
reg uartbridge_is_ongoing = 1'd0;
wire frontend_sink_sink_valid;
wire frontend_sink_sink_ready;
reg frontend_sink_sink_last = 1'd0;
wire [88:0] frontend_sink_sink_payload_data;
reg frontend_sink_sink_payload_hit = 1'd0;
wire frontend_source_source_valid;
wire frontend_source_source_ready;
wire frontend_source_source_last;
wire [88:0] frontend_source_source_payload_data;
wire frontend_source_source_payload_hit;
wire frontend_buffer_sink_valid;
wire frontend_buffer_sink_ready;
wire frontend_buffer_sink_last;
wire [88:0] frontend_buffer_sink_payload_data;
wire frontend_buffer_sink_payload_hit;
wire frontend_buffer_source_valid;
wire frontend_buffer_source_ready;
wire frontend_buffer_source_last;
reg [88:0] frontend_buffer_source_payload_data = 89'd0;
reg frontend_buffer_source_payload_hit = 1'd0;
wire frontend_buffer_pipe_ce;
wire frontend_buffer_busy;
reg frontend_buffer_valid_n = 1'd0;
reg frontend_buffer_last_n = 1'd0;
wire frontend_trigger_sink_valid;
wire frontend_trigger_sink_ready;
wire frontend_trigger_sink_last;
wire [88:0] frontend_trigger_sink_payload_data;
wire frontend_trigger_sink_payload_hit;
wire frontend_trigger_source_valid;
wire frontend_trigger_source_ready;
wire frontend_trigger_source_last;
wire [88:0] frontend_trigger_source_payload_data;
reg frontend_trigger_source_payload_hit = 1'd0;
reg [88:0] frontend_trigger_value_storage_full = 89'd0;
wire [88:0] frontend_trigger_value_storage;
reg frontend_trigger_value_re = 1'd0;
reg [88:0] frontend_trigger_mask_storage_full = 89'd0;
wire [88:0] frontend_trigger_mask_storage;
reg frontend_trigger_mask_re = 1'd0;
wire [88:0] frontend_trigger_value;
wire [88:0] frontend_trigger_mask;
wire frontend_subsampler_sink_valid;
wire frontend_subsampler_sink_ready;
wire frontend_subsampler_sink_last;
wire [88:0] frontend_subsampler_sink_payload_data;
wire frontend_subsampler_sink_payload_hit;
wire frontend_subsampler_source_valid;
wire frontend_subsampler_source_ready;
wire frontend_subsampler_source_last;
wire [88:0] frontend_subsampler_source_payload_data;
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
wire [88:0] frontend_strideconverter_sink_payload_data;
wire frontend_strideconverter_sink_payload_hit;
wire frontend_strideconverter_source_valid;
wire frontend_strideconverter_source_ready;
wire frontend_strideconverter_source_last;
wire [88:0] frontend_strideconverter_source_payload_data;
wire frontend_strideconverter_source_payload_hit;
wire frontend_strideconverter_converter_sink_valid;
wire frontend_strideconverter_converter_sink_ready;
wire frontend_strideconverter_converter_sink_last;
wire [89:0] frontend_strideconverter_converter_sink_payload_data;
wire frontend_strideconverter_converter_source_valid;
wire frontend_strideconverter_converter_source_ready;
wire frontend_strideconverter_converter_source_last;
wire [89:0] frontend_strideconverter_converter_source_payload_data;
wire frontend_strideconverter_converter_source_payload_valid_token_count;
wire frontend_strideconverter_source_source_valid;
wire frontend_strideconverter_source_source_ready;
wire frontend_strideconverter_source_source_last;
wire [89:0] frontend_strideconverter_source_source_payload_data;
wire frontend_asyncfifo_sink_valid;
wire frontend_asyncfifo_sink_ready;
wire frontend_asyncfifo_sink_last;
wire [88:0] frontend_asyncfifo_sink_payload_data;
wire frontend_asyncfifo_sink_payload_hit;
wire frontend_asyncfifo_source_valid;
wire frontend_asyncfifo_source_ready;
wire frontend_asyncfifo_source_last;
wire [88:0] frontend_asyncfifo_source_payload_data;
wire frontend_asyncfifo_source_payload_hit;
wire frontend_asyncfifo_asyncfifo_we;
wire frontend_asyncfifo_asyncfifo_writable;
wire frontend_asyncfifo_asyncfifo_re;
wire frontend_asyncfifo_asyncfifo_readable;
wire [90:0] frontend_asyncfifo_asyncfifo_din;
wire [90:0] frontend_asyncfifo_asyncfifo_dout;
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
wire [90:0] frontend_asyncfifo_wrport_dat_r;
wire frontend_asyncfifo_wrport_we;
wire [90:0] frontend_asyncfifo_wrport_dat_w;
wire [2:0] frontend_asyncfifo_rdport_adr;
wire [90:0] frontend_asyncfifo_rdport_dat_r;
wire [88:0] frontend_asyncfifo_fifo_in_payload_data;
wire frontend_asyncfifo_fifo_in_payload_hit;
wire frontend_asyncfifo_fifo_in_last;
wire [88:0] frontend_asyncfifo_fifo_out_payload_data;
wire frontend_asyncfifo_fifo_out_payload_hit;
wire frontend_asyncfifo_fifo_out_last;
wire storage_sink_sink_valid;
reg storage_sink_sink_ready = 1'd0;
wire storage_sink_sink_last;
wire [88:0] storage_sink_sink_payload_data;
wire storage_sink_sink_payload_hit;
wire storage_start_re;
wire storage_start_r;
reg storage_start_w = 1'd0;
reg [6:0] storage_length_storage_full = 7'd0;
wire [6:0] storage_length_storage;
reg storage_length_re = 1'd0;
reg [6:0] storage_offset_storage_full = 7'd0;
wire [6:0] storage_offset_storage;
reg storage_offset_re = 1'd0;
reg storage_idle_status = 1'd0;
reg storage_wait_status = 1'd0;
reg storage_run_status = 1'd0;
wire storage_mem_valid_status;
wire storage_mem_ready_re;
wire storage_mem_ready_r;
reg storage_mem_ready_w = 1'd0;
wire [88:0] storage_mem_data_status;
reg storage_mem_sink_valid = 1'd0;
wire storage_mem_sink_ready;
reg storage_mem_sink_last = 1'd0;
reg [88:0] storage_mem_sink_payload_data = 89'd0;
wire storage_mem_source_valid;
reg storage_mem_source_ready = 1'd0;
wire storage_mem_source_last;
wire [88:0] storage_mem_source_payload_data;
wire storage_mem_re;
reg storage_mem_readable = 1'd0;
wire storage_mem_syncfifo_we;
wire storage_mem_syncfifo_writable;
wire storage_mem_syncfifo_re;
wire storage_mem_syncfifo_readable;
wire [89:0] storage_mem_syncfifo_din;
wire [89:0] storage_mem_syncfifo_dout;
reg [6:0] storage_mem_level0 = 7'd0;
reg storage_mem_replace = 1'd0;
reg [5:0] storage_mem_produce = 6'd0;
reg [5:0] storage_mem_consume = 6'd0;
reg [5:0] storage_mem_wrport_adr = 6'd0;
wire [89:0] storage_mem_wrport_dat_r;
wire storage_mem_wrport_we;
wire [89:0] storage_mem_wrport_dat_w;
wire storage_mem_do_read;
wire [5:0] storage_mem_rdport_adr;
wire [89:0] storage_mem_rdport_dat_r;
wire storage_mem_rdport_re;
wire [6:0] storage_mem_level1;
wire [88:0] storage_mem_fifo_in_payload_data;
wire storage_mem_fifo_in_last;
wire [88:0] storage_mem_fifo_out_payload_data;
wire storage_mem_fifo_out_last;
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
reg [2:0] controllerinjector_multiplexer_state = 3'd0;
reg [2:0] controllerinjector_multiplexer_next_state = 3'd0;
reg [1:0] controllerinjector_state = 2'd0;
reg [1:0] controllerinjector_next_state = 2'd0;
reg litedramwriteportupconverter_we_controllerinjector_next_value0 = 1'd0;
reg litedramwriteportupconverter_we_controllerinjector_next_value_ce0 = 1'd0;
reg [22:0] litedramwriteportupconverter_address_controllerinjector_next_value1 = 23'd0;
reg litedramwriteportupconverter_address_controllerinjector_next_value_ce1 = 1'd0;
wire [1:0] controllerinjector_cba0;
wire [20:0] controllerinjector_rca0;
wire [1:0] controllerinjector_cba1;
wire [20:0] controllerinjector_rca1;
wire [1:0] controllerinjector_cba2;
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
reg controllerinjector_new_master_wdata_ready0 = 1'd0;
reg controllerinjector_new_master_wdata_ready1 = 1'd0;
reg controllerinjector_new_master_wdata_ready2 = 1'd0;
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
reg controllerinjector_new_master_rdata_valid15 = 1'd0;
reg controllerinjector_new_master_rdata_valid16 = 1'd0;
reg controllerinjector_new_master_rdata_valid17 = 1'd0;
reg [2:0] cache_state = 3'd0;
reg [2:0] cache_next_state = 3'd0;
reg [1:0] litedramwishbonebridge_state = 2'd0;
reg [1:0] litedramwishbonebridge_next_state = 2'd0;
reg [1:0] litedrambistgenerator_state = 2'd0;
reg [1:0] litedrambistgenerator_next_state = 2'd0;
reg [23:0] generator_core_cmd_counter_litedrambistgenerator_next_value = 24'd0;
reg generator_core_cmd_counter_litedrambistgenerator_next_value_ce = 1'd0;
reg [1:0] fsm0_state = 2'd0;
reg [1:0] fsm0_next_state = 2'd0;
reg [23:0] checker_core_cmd_counter_fsm0_next_value = 24'd0;
reg checker_core_cmd_counter_fsm0_next_value_ce = 1'd0;
reg [1:0] fsm1_state = 2'd0;
reg [1:0] fsm1_next_state = 2'd0;
reg [23:0] checker_core_data_counter_fsm1_next_value0 = 24'd0;
reg checker_core_data_counter_fsm1_next_value_ce0 = 1'd0;
reg [31:0] checker_core_err_count_fsm1_next_value1 = 32'd0;
reg checker_core_err_count_fsm1_next_value_ce1 = 1'd0;
reg [2:0] uartwishbonebridge_state = 3'd0;
reg [2:0] uartwishbonebridge_next_state = 3'd0;
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
wire [2:0] memtestsoc_request;
reg [1:0] memtestsoc_grant = 2'd0;
reg [3:0] memtestsoc_slave_sel = 4'd0;
reg [3:0] memtestsoc_slave_sel_r = 4'd0;
wire [13:0] memtestsoc_interface0_adr;
wire memtestsoc_interface0_we;
wire [7:0] memtestsoc_interface0_dat_w;
reg [7:0] memtestsoc_interface0_dat_r = 8'd0;
wire memtestsoc_csrbank0_frontend_trigger_value11_re;
wire memtestsoc_csrbank0_frontend_trigger_value11_r;
wire memtestsoc_csrbank0_frontend_trigger_value11_w;
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
wire memtestsoc_csrbank0_frontend_trigger_mask11_r;
wire memtestsoc_csrbank0_frontend_trigger_mask11_w;
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
wire memtestsoc_csrbank0_storage_length0_re;
wire [6:0] memtestsoc_csrbank0_storage_length0_r;
wire [6:0] memtestsoc_csrbank0_storage_length0_w;
wire memtestsoc_csrbank0_storage_offset0_re;
wire [6:0] memtestsoc_csrbank0_storage_offset0_r;
wire [6:0] memtestsoc_csrbank0_storage_offset0_w;
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
wire memtestsoc_csrbank0_storage_mem_data11_r;
wire memtestsoc_csrbank0_storage_mem_data11_w;
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
wire memtestsoc_csrbank1_leds_out0_re;
wire [7:0] memtestsoc_csrbank1_leds_out0_r;
wire [7:0] memtestsoc_csrbank1_leds_out0_w;
wire memtestsoc_csrbank1_switches_in_re;
wire [7:0] memtestsoc_csrbank1_switches_in_r;
wire [7:0] memtestsoc_csrbank1_switches_in_w;
wire memtestsoc_csrbank1_buttons_ev_enable0_re;
wire [4:0] memtestsoc_csrbank1_buttons_ev_enable0_r;
wire [4:0] memtestsoc_csrbank1_buttons_ev_enable0_w;
wire memtestsoc_csrbank1_sel;
wire [13:0] memtestsoc_interface2_adr;
wire memtestsoc_interface2_we;
wire [7:0] memtestsoc_interface2_dat_w;
reg [7:0] memtestsoc_interface2_dat_r = 8'd0;
wire memtestsoc_csrbank2_base2_re;
wire [7:0] memtestsoc_csrbank2_base2_r;
wire [7:0] memtestsoc_csrbank2_base2_w;
wire memtestsoc_csrbank2_base1_re;
wire [7:0] memtestsoc_csrbank2_base1_r;
wire [7:0] memtestsoc_csrbank2_base1_w;
wire memtestsoc_csrbank2_base0_re;
wire [7:0] memtestsoc_csrbank2_base0_r;
wire [7:0] memtestsoc_csrbank2_base0_w;
wire memtestsoc_csrbank2_length2_re;
wire [7:0] memtestsoc_csrbank2_length2_r;
wire [7:0] memtestsoc_csrbank2_length2_w;
wire memtestsoc_csrbank2_length1_re;
wire [7:0] memtestsoc_csrbank2_length1_r;
wire [7:0] memtestsoc_csrbank2_length1_w;
wire memtestsoc_csrbank2_length0_re;
wire [7:0] memtestsoc_csrbank2_length0_r;
wire [7:0] memtestsoc_csrbank2_length0_w;
wire memtestsoc_csrbank2_done_re;
wire memtestsoc_csrbank2_done_r;
wire memtestsoc_csrbank2_done_w;
wire memtestsoc_csrbank2_err_count3_re;
wire [7:0] memtestsoc_csrbank2_err_count3_r;
wire [7:0] memtestsoc_csrbank2_err_count3_w;
wire memtestsoc_csrbank2_err_count2_re;
wire [7:0] memtestsoc_csrbank2_err_count2_r;
wire [7:0] memtestsoc_csrbank2_err_count2_w;
wire memtestsoc_csrbank2_err_count1_re;
wire [7:0] memtestsoc_csrbank2_err_count1_r;
wire [7:0] memtestsoc_csrbank2_err_count1_w;
wire memtestsoc_csrbank2_err_count0_re;
wire [7:0] memtestsoc_csrbank2_err_count0_r;
wire [7:0] memtestsoc_csrbank2_err_count0_w;
wire memtestsoc_csrbank2_sel;
wire [13:0] memtestsoc_interface3_adr;
wire memtestsoc_interface3_we;
wire [7:0] memtestsoc_interface3_dat_w;
reg [7:0] memtestsoc_interface3_dat_r = 8'd0;
wire memtestsoc_csrbank3_done_re;
wire memtestsoc_csrbank3_done_r;
wire memtestsoc_csrbank3_done_w;
wire memtestsoc_csrbank3_base2_re;
wire [7:0] memtestsoc_csrbank3_base2_r;
wire [7:0] memtestsoc_csrbank3_base2_w;
wire memtestsoc_csrbank3_base1_re;
wire [7:0] memtestsoc_csrbank3_base1_r;
wire [7:0] memtestsoc_csrbank3_base1_w;
wire memtestsoc_csrbank3_base0_re;
wire [7:0] memtestsoc_csrbank3_base0_r;
wire [7:0] memtestsoc_csrbank3_base0_w;
wire memtestsoc_csrbank3_length2_re;
wire [7:0] memtestsoc_csrbank3_length2_r;
wire [7:0] memtestsoc_csrbank3_length2_w;
wire memtestsoc_csrbank3_length1_re;
wire [7:0] memtestsoc_csrbank3_length1_r;
wire [7:0] memtestsoc_csrbank3_length1_w;
wire memtestsoc_csrbank3_length0_re;
wire [7:0] memtestsoc_csrbank3_length0_r;
wire [7:0] memtestsoc_csrbank3_length0_w;
wire memtestsoc_csrbank3_sel;
wire [13:0] memtestsoc_interface4_adr;
wire memtestsoc_interface4_we;
wire [7:0] memtestsoc_interface4_dat_w;
reg [7:0] memtestsoc_interface4_dat_r = 8'd0;
wire memtestsoc_csrbank4_dna_id7_re;
wire memtestsoc_csrbank4_dna_id7_r;
wire memtestsoc_csrbank4_dna_id7_w;
wire memtestsoc_csrbank4_dna_id6_re;
wire [7:0] memtestsoc_csrbank4_dna_id6_r;
wire [7:0] memtestsoc_csrbank4_dna_id6_w;
wire memtestsoc_csrbank4_dna_id5_re;
wire [7:0] memtestsoc_csrbank4_dna_id5_r;
wire [7:0] memtestsoc_csrbank4_dna_id5_w;
wire memtestsoc_csrbank4_dna_id4_re;
wire [7:0] memtestsoc_csrbank4_dna_id4_r;
wire [7:0] memtestsoc_csrbank4_dna_id4_w;
wire memtestsoc_csrbank4_dna_id3_re;
wire [7:0] memtestsoc_csrbank4_dna_id3_r;
wire [7:0] memtestsoc_csrbank4_dna_id3_w;
wire memtestsoc_csrbank4_dna_id2_re;
wire [7:0] memtestsoc_csrbank4_dna_id2_r;
wire [7:0] memtestsoc_csrbank4_dna_id2_w;
wire memtestsoc_csrbank4_dna_id1_re;
wire [7:0] memtestsoc_csrbank4_dna_id1_r;
wire [7:0] memtestsoc_csrbank4_dna_id1_w;
wire memtestsoc_csrbank4_dna_id0_re;
wire [7:0] memtestsoc_csrbank4_dna_id0_r;
wire [7:0] memtestsoc_csrbank4_dna_id0_w;
wire memtestsoc_csrbank4_git_commit19_re;
wire [7:0] memtestsoc_csrbank4_git_commit19_r;
wire [7:0] memtestsoc_csrbank4_git_commit19_w;
wire memtestsoc_csrbank4_git_commit18_re;
wire [7:0] memtestsoc_csrbank4_git_commit18_r;
wire [7:0] memtestsoc_csrbank4_git_commit18_w;
wire memtestsoc_csrbank4_git_commit17_re;
wire [7:0] memtestsoc_csrbank4_git_commit17_r;
wire [7:0] memtestsoc_csrbank4_git_commit17_w;
wire memtestsoc_csrbank4_git_commit16_re;
wire [7:0] memtestsoc_csrbank4_git_commit16_r;
wire [7:0] memtestsoc_csrbank4_git_commit16_w;
wire memtestsoc_csrbank4_git_commit15_re;
wire [7:0] memtestsoc_csrbank4_git_commit15_r;
wire [7:0] memtestsoc_csrbank4_git_commit15_w;
wire memtestsoc_csrbank4_git_commit14_re;
wire [7:0] memtestsoc_csrbank4_git_commit14_r;
wire [7:0] memtestsoc_csrbank4_git_commit14_w;
wire memtestsoc_csrbank4_git_commit13_re;
wire [7:0] memtestsoc_csrbank4_git_commit13_r;
wire [7:0] memtestsoc_csrbank4_git_commit13_w;
wire memtestsoc_csrbank4_git_commit12_re;
wire [7:0] memtestsoc_csrbank4_git_commit12_r;
wire [7:0] memtestsoc_csrbank4_git_commit12_w;
wire memtestsoc_csrbank4_git_commit11_re;
wire [7:0] memtestsoc_csrbank4_git_commit11_r;
wire [7:0] memtestsoc_csrbank4_git_commit11_w;
wire memtestsoc_csrbank4_git_commit10_re;
wire [7:0] memtestsoc_csrbank4_git_commit10_r;
wire [7:0] memtestsoc_csrbank4_git_commit10_w;
wire memtestsoc_csrbank4_git_commit9_re;
wire [7:0] memtestsoc_csrbank4_git_commit9_r;
wire [7:0] memtestsoc_csrbank4_git_commit9_w;
wire memtestsoc_csrbank4_git_commit8_re;
wire [7:0] memtestsoc_csrbank4_git_commit8_r;
wire [7:0] memtestsoc_csrbank4_git_commit8_w;
wire memtestsoc_csrbank4_git_commit7_re;
wire [7:0] memtestsoc_csrbank4_git_commit7_r;
wire [7:0] memtestsoc_csrbank4_git_commit7_w;
wire memtestsoc_csrbank4_git_commit6_re;
wire [7:0] memtestsoc_csrbank4_git_commit6_r;
wire [7:0] memtestsoc_csrbank4_git_commit6_w;
wire memtestsoc_csrbank4_git_commit5_re;
wire [7:0] memtestsoc_csrbank4_git_commit5_r;
wire [7:0] memtestsoc_csrbank4_git_commit5_w;
wire memtestsoc_csrbank4_git_commit4_re;
wire [7:0] memtestsoc_csrbank4_git_commit4_r;
wire [7:0] memtestsoc_csrbank4_git_commit4_w;
wire memtestsoc_csrbank4_git_commit3_re;
wire [7:0] memtestsoc_csrbank4_git_commit3_r;
wire [7:0] memtestsoc_csrbank4_git_commit3_w;
wire memtestsoc_csrbank4_git_commit2_re;
wire [7:0] memtestsoc_csrbank4_git_commit2_r;
wire [7:0] memtestsoc_csrbank4_git_commit2_w;
wire memtestsoc_csrbank4_git_commit1_re;
wire [7:0] memtestsoc_csrbank4_git_commit1_r;
wire [7:0] memtestsoc_csrbank4_git_commit1_w;
wire memtestsoc_csrbank4_git_commit0_re;
wire [7:0] memtestsoc_csrbank4_git_commit0_r;
wire [7:0] memtestsoc_csrbank4_git_commit0_w;
wire memtestsoc_csrbank4_platform_platform7_re;
wire [7:0] memtestsoc_csrbank4_platform_platform7_r;
wire [7:0] memtestsoc_csrbank4_platform_platform7_w;
wire memtestsoc_csrbank4_platform_platform6_re;
wire [7:0] memtestsoc_csrbank4_platform_platform6_r;
wire [7:0] memtestsoc_csrbank4_platform_platform6_w;
wire memtestsoc_csrbank4_platform_platform5_re;
wire [7:0] memtestsoc_csrbank4_platform_platform5_r;
wire [7:0] memtestsoc_csrbank4_platform_platform5_w;
wire memtestsoc_csrbank4_platform_platform4_re;
wire [7:0] memtestsoc_csrbank4_platform_platform4_r;
wire [7:0] memtestsoc_csrbank4_platform_platform4_w;
wire memtestsoc_csrbank4_platform_platform3_re;
wire [7:0] memtestsoc_csrbank4_platform_platform3_r;
wire [7:0] memtestsoc_csrbank4_platform_platform3_w;
wire memtestsoc_csrbank4_platform_platform2_re;
wire [7:0] memtestsoc_csrbank4_platform_platform2_r;
wire [7:0] memtestsoc_csrbank4_platform_platform2_w;
wire memtestsoc_csrbank4_platform_platform1_re;
wire [7:0] memtestsoc_csrbank4_platform_platform1_r;
wire [7:0] memtestsoc_csrbank4_platform_platform1_w;
wire memtestsoc_csrbank4_platform_platform0_re;
wire [7:0] memtestsoc_csrbank4_platform_platform0_r;
wire [7:0] memtestsoc_csrbank4_platform_platform0_w;
wire memtestsoc_csrbank4_platform_target7_re;
wire [7:0] memtestsoc_csrbank4_platform_target7_r;
wire [7:0] memtestsoc_csrbank4_platform_target7_w;
wire memtestsoc_csrbank4_platform_target6_re;
wire [7:0] memtestsoc_csrbank4_platform_target6_r;
wire [7:0] memtestsoc_csrbank4_platform_target6_w;
wire memtestsoc_csrbank4_platform_target5_re;
wire [7:0] memtestsoc_csrbank4_platform_target5_r;
wire [7:0] memtestsoc_csrbank4_platform_target5_w;
wire memtestsoc_csrbank4_platform_target4_re;
wire [7:0] memtestsoc_csrbank4_platform_target4_r;
wire [7:0] memtestsoc_csrbank4_platform_target4_w;
wire memtestsoc_csrbank4_platform_target3_re;
wire [7:0] memtestsoc_csrbank4_platform_target3_r;
wire [7:0] memtestsoc_csrbank4_platform_target3_w;
wire memtestsoc_csrbank4_platform_target2_re;
wire [7:0] memtestsoc_csrbank4_platform_target2_r;
wire [7:0] memtestsoc_csrbank4_platform_target2_w;
wire memtestsoc_csrbank4_platform_target1_re;
wire [7:0] memtestsoc_csrbank4_platform_target1_r;
wire [7:0] memtestsoc_csrbank4_platform_target1_w;
wire memtestsoc_csrbank4_platform_target0_re;
wire [7:0] memtestsoc_csrbank4_platform_target0_r;
wire [7:0] memtestsoc_csrbank4_platform_target0_w;
wire memtestsoc_csrbank4_sel;
wire [13:0] memtestsoc_interface5_adr;
wire memtestsoc_interface5_we;
wire [7:0] memtestsoc_interface5_dat_w;
reg [7:0] memtestsoc_interface5_dat_r = 8'd0;
wire memtestsoc_csrbank5_dfii_control0_re;
wire [3:0] memtestsoc_csrbank5_dfii_control0_r;
wire [3:0] memtestsoc_csrbank5_dfii_control0_w;
wire memtestsoc_csrbank5_dfii_pi0_command0_re;
wire [5:0] memtestsoc_csrbank5_dfii_pi0_command0_r;
wire [5:0] memtestsoc_csrbank5_dfii_pi0_command0_w;
wire memtestsoc_csrbank5_dfii_pi0_address1_re;
wire [4:0] memtestsoc_csrbank5_dfii_pi0_address1_r;
wire [4:0] memtestsoc_csrbank5_dfii_pi0_address1_w;
wire memtestsoc_csrbank5_dfii_pi0_address0_re;
wire [7:0] memtestsoc_csrbank5_dfii_pi0_address0_r;
wire [7:0] memtestsoc_csrbank5_dfii_pi0_address0_w;
wire memtestsoc_csrbank5_dfii_pi0_baddress0_re;
wire [1:0] memtestsoc_csrbank5_dfii_pi0_baddress0_r;
wire [1:0] memtestsoc_csrbank5_dfii_pi0_baddress0_w;
wire memtestsoc_csrbank5_dfii_pi0_wrdata3_re;
wire [7:0] memtestsoc_csrbank5_dfii_pi0_wrdata3_r;
wire [7:0] memtestsoc_csrbank5_dfii_pi0_wrdata3_w;
wire memtestsoc_csrbank5_dfii_pi0_wrdata2_re;
wire [7:0] memtestsoc_csrbank5_dfii_pi0_wrdata2_r;
wire [7:0] memtestsoc_csrbank5_dfii_pi0_wrdata2_w;
wire memtestsoc_csrbank5_dfii_pi0_wrdata1_re;
wire [7:0] memtestsoc_csrbank5_dfii_pi0_wrdata1_r;
wire [7:0] memtestsoc_csrbank5_dfii_pi0_wrdata1_w;
wire memtestsoc_csrbank5_dfii_pi0_wrdata0_re;
wire [7:0] memtestsoc_csrbank5_dfii_pi0_wrdata0_r;
wire [7:0] memtestsoc_csrbank5_dfii_pi0_wrdata0_w;
wire memtestsoc_csrbank5_dfii_pi0_rddata3_re;
wire [7:0] memtestsoc_csrbank5_dfii_pi0_rddata3_r;
wire [7:0] memtestsoc_csrbank5_dfii_pi0_rddata3_w;
wire memtestsoc_csrbank5_dfii_pi0_rddata2_re;
wire [7:0] memtestsoc_csrbank5_dfii_pi0_rddata2_r;
wire [7:0] memtestsoc_csrbank5_dfii_pi0_rddata2_w;
wire memtestsoc_csrbank5_dfii_pi0_rddata1_re;
wire [7:0] memtestsoc_csrbank5_dfii_pi0_rddata1_r;
wire [7:0] memtestsoc_csrbank5_dfii_pi0_rddata1_w;
wire memtestsoc_csrbank5_dfii_pi0_rddata0_re;
wire [7:0] memtestsoc_csrbank5_dfii_pi0_rddata0_r;
wire [7:0] memtestsoc_csrbank5_dfii_pi0_rddata0_w;
wire memtestsoc_csrbank5_dfii_pi1_command0_re;
wire [5:0] memtestsoc_csrbank5_dfii_pi1_command0_r;
wire [5:0] memtestsoc_csrbank5_dfii_pi1_command0_w;
wire memtestsoc_csrbank5_dfii_pi1_address1_re;
wire [4:0] memtestsoc_csrbank5_dfii_pi1_address1_r;
wire [4:0] memtestsoc_csrbank5_dfii_pi1_address1_w;
wire memtestsoc_csrbank5_dfii_pi1_address0_re;
wire [7:0] memtestsoc_csrbank5_dfii_pi1_address0_r;
wire [7:0] memtestsoc_csrbank5_dfii_pi1_address0_w;
wire memtestsoc_csrbank5_dfii_pi1_baddress0_re;
wire [1:0] memtestsoc_csrbank5_dfii_pi1_baddress0_r;
wire [1:0] memtestsoc_csrbank5_dfii_pi1_baddress0_w;
wire memtestsoc_csrbank5_dfii_pi1_wrdata3_re;
wire [7:0] memtestsoc_csrbank5_dfii_pi1_wrdata3_r;
wire [7:0] memtestsoc_csrbank5_dfii_pi1_wrdata3_w;
wire memtestsoc_csrbank5_dfii_pi1_wrdata2_re;
wire [7:0] memtestsoc_csrbank5_dfii_pi1_wrdata2_r;
wire [7:0] memtestsoc_csrbank5_dfii_pi1_wrdata2_w;
wire memtestsoc_csrbank5_dfii_pi1_wrdata1_re;
wire [7:0] memtestsoc_csrbank5_dfii_pi1_wrdata1_r;
wire [7:0] memtestsoc_csrbank5_dfii_pi1_wrdata1_w;
wire memtestsoc_csrbank5_dfii_pi1_wrdata0_re;
wire [7:0] memtestsoc_csrbank5_dfii_pi1_wrdata0_r;
wire [7:0] memtestsoc_csrbank5_dfii_pi1_wrdata0_w;
wire memtestsoc_csrbank5_dfii_pi1_rddata3_re;
wire [7:0] memtestsoc_csrbank5_dfii_pi1_rddata3_r;
wire [7:0] memtestsoc_csrbank5_dfii_pi1_rddata3_w;
wire memtestsoc_csrbank5_dfii_pi1_rddata2_re;
wire [7:0] memtestsoc_csrbank5_dfii_pi1_rddata2_r;
wire [7:0] memtestsoc_csrbank5_dfii_pi1_rddata2_w;
wire memtestsoc_csrbank5_dfii_pi1_rddata1_re;
wire [7:0] memtestsoc_csrbank5_dfii_pi1_rddata1_r;
wire [7:0] memtestsoc_csrbank5_dfii_pi1_rddata1_w;
wire memtestsoc_csrbank5_dfii_pi1_rddata0_re;
wire [7:0] memtestsoc_csrbank5_dfii_pi1_rddata0_r;
wire [7:0] memtestsoc_csrbank5_dfii_pi1_rddata0_w;
wire memtestsoc_csrbank5_controller_bandwidth_nreads2_re;
wire [7:0] memtestsoc_csrbank5_controller_bandwidth_nreads2_r;
wire [7:0] memtestsoc_csrbank5_controller_bandwidth_nreads2_w;
wire memtestsoc_csrbank5_controller_bandwidth_nreads1_re;
wire [7:0] memtestsoc_csrbank5_controller_bandwidth_nreads1_r;
wire [7:0] memtestsoc_csrbank5_controller_bandwidth_nreads1_w;
wire memtestsoc_csrbank5_controller_bandwidth_nreads0_re;
wire [7:0] memtestsoc_csrbank5_controller_bandwidth_nreads0_r;
wire [7:0] memtestsoc_csrbank5_controller_bandwidth_nreads0_w;
wire memtestsoc_csrbank5_controller_bandwidth_nwrites2_re;
wire [7:0] memtestsoc_csrbank5_controller_bandwidth_nwrites2_r;
wire [7:0] memtestsoc_csrbank5_controller_bandwidth_nwrites2_w;
wire memtestsoc_csrbank5_controller_bandwidth_nwrites1_re;
wire [7:0] memtestsoc_csrbank5_controller_bandwidth_nwrites1_r;
wire [7:0] memtestsoc_csrbank5_controller_bandwidth_nwrites1_w;
wire memtestsoc_csrbank5_controller_bandwidth_nwrites0_re;
wire [7:0] memtestsoc_csrbank5_controller_bandwidth_nwrites0_r;
wire [7:0] memtestsoc_csrbank5_controller_bandwidth_nwrites0_w;
wire memtestsoc_csrbank5_controller_bandwidth_data_width_re;
wire [6:0] memtestsoc_csrbank5_controller_bandwidth_data_width_r;
wire [6:0] memtestsoc_csrbank5_controller_bandwidth_data_width_w;
wire memtestsoc_csrbank5_sel;
wire [13:0] memtestsoc_interface6_adr;
wire memtestsoc_interface6_we;
wire [7:0] memtestsoc_interface6_dat_w;
reg [7:0] memtestsoc_interface6_dat_r = 8'd0;
wire memtestsoc_csrbank6_load3_re;
wire [7:0] memtestsoc_csrbank6_load3_r;
wire [7:0] memtestsoc_csrbank6_load3_w;
wire memtestsoc_csrbank6_load2_re;
wire [7:0] memtestsoc_csrbank6_load2_r;
wire [7:0] memtestsoc_csrbank6_load2_w;
wire memtestsoc_csrbank6_load1_re;
wire [7:0] memtestsoc_csrbank6_load1_r;
wire [7:0] memtestsoc_csrbank6_load1_w;
wire memtestsoc_csrbank6_load0_re;
wire [7:0] memtestsoc_csrbank6_load0_r;
wire [7:0] memtestsoc_csrbank6_load0_w;
wire memtestsoc_csrbank6_reload3_re;
wire [7:0] memtestsoc_csrbank6_reload3_r;
wire [7:0] memtestsoc_csrbank6_reload3_w;
wire memtestsoc_csrbank6_reload2_re;
wire [7:0] memtestsoc_csrbank6_reload2_r;
wire [7:0] memtestsoc_csrbank6_reload2_w;
wire memtestsoc_csrbank6_reload1_re;
wire [7:0] memtestsoc_csrbank6_reload1_r;
wire [7:0] memtestsoc_csrbank6_reload1_w;
wire memtestsoc_csrbank6_reload0_re;
wire [7:0] memtestsoc_csrbank6_reload0_r;
wire [7:0] memtestsoc_csrbank6_reload0_w;
wire memtestsoc_csrbank6_en0_re;
wire memtestsoc_csrbank6_en0_r;
wire memtestsoc_csrbank6_en0_w;
wire memtestsoc_csrbank6_value3_re;
wire [7:0] memtestsoc_csrbank6_value3_r;
wire [7:0] memtestsoc_csrbank6_value3_w;
wire memtestsoc_csrbank6_value2_re;
wire [7:0] memtestsoc_csrbank6_value2_r;
wire [7:0] memtestsoc_csrbank6_value2_w;
wire memtestsoc_csrbank6_value1_re;
wire [7:0] memtestsoc_csrbank6_value1_r;
wire [7:0] memtestsoc_csrbank6_value1_w;
wire memtestsoc_csrbank6_value0_re;
wire [7:0] memtestsoc_csrbank6_value0_r;
wire [7:0] memtestsoc_csrbank6_value0_w;
wire memtestsoc_csrbank6_ev_enable0_re;
wire memtestsoc_csrbank6_ev_enable0_r;
wire memtestsoc_csrbank6_ev_enable0_w;
wire memtestsoc_csrbank6_sel;
wire [13:0] memtestsoc_interface7_adr;
wire memtestsoc_interface7_we;
wire [7:0] memtestsoc_interface7_dat_w;
reg [7:0] memtestsoc_interface7_dat_r = 8'd0;
wire memtestsoc_csrbank7_txfull_re;
wire memtestsoc_csrbank7_txfull_r;
wire memtestsoc_csrbank7_txfull_w;
wire memtestsoc_csrbank7_rxempty_re;
wire memtestsoc_csrbank7_rxempty_r;
wire memtestsoc_csrbank7_rxempty_w;
wire memtestsoc_csrbank7_ev_enable0_re;
wire [1:0] memtestsoc_csrbank7_ev_enable0_r;
wire [1:0] memtestsoc_csrbank7_ev_enable0_w;
wire memtestsoc_csrbank7_sel;
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
reg [12:0] array_muxed0 = 13'd0;
reg [1:0] array_muxed1 = 2'd0;
reg array_muxed2 = 1'd0;
reg array_muxed3 = 1'd0;
reg array_muxed4 = 1'd0;
reg array_muxed5 = 1'd0;
reg [12:0] array_muxed6 = 13'd0;
reg [1:0] array_muxed7 = 2'd0;
reg array_muxed8 = 1'd0;
reg array_muxed9 = 1'd0;
reg array_muxed10 = 1'd0;
reg array_muxed11 = 1'd0;
reg array_muxed12 = 1'd0;
reg [12:0] array_muxed13 = 13'd0;
reg [1:0] array_muxed14 = 2'd0;
reg array_muxed15 = 1'd0;
reg array_muxed16 = 1'd0;
reg array_muxed17 = 1'd0;
reg array_muxed18 = 1'd0;
reg array_muxed19 = 1'd0;
wire rst10;
wire rst11;
wire rst12;
(* register_balancing = "no", shreg_extract = "no" *) reg [7:0] xilinxmultiregimpl0_regs0 = 8'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [7:0] xilinxmultiregimpl0_regs1 = 8'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl1_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl1_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl2_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl2_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl3_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl3_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl4_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl4_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl5_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl5_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [23:0] xilinxmultiregimpl6_regs0 = 24'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [23:0] xilinxmultiregimpl6_regs1 = 24'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl7_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl7_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl8_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl8_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [23:0] xilinxmultiregimpl9_regs0 = 24'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [23:0] xilinxmultiregimpl9_regs1 = 24'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl10_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl10_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl11_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl11_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl12_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl12_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl13_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl13_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl14_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl14_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [23:0] xilinxmultiregimpl15_regs0 = 24'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [23:0] xilinxmultiregimpl15_regs1 = 24'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl16_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl16_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl17_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl17_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [23:0] xilinxmultiregimpl18_regs0 = 24'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [23:0] xilinxmultiregimpl18_regs1 = 24'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl19_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl19_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl20_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl20_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [31:0] xilinxmultiregimpl21_regs0 = 32'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [31:0] xilinxmultiregimpl21_regs1 = 32'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl22_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl22_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl23_regs0 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg xilinxmultiregimpl23_regs1 = 1'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [88:0] xilinxmultiregimpl24_regs0 = 89'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [88:0] xilinxmultiregimpl24_regs1 = 89'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [88:0] xilinxmultiregimpl25_regs0 = 89'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [88:0] xilinxmultiregimpl25_regs1 = 89'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [15:0] xilinxmultiregimpl26_regs0 = 16'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [15:0] xilinxmultiregimpl26_regs1 = 16'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [3:0] xilinxmultiregimpl27_regs0 = 4'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [3:0] xilinxmultiregimpl27_regs1 = 4'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [3:0] xilinxmultiregimpl28_regs0 = 4'd0;
(* register_balancing = "no", shreg_extract = "no" *) reg [3:0] xilinxmultiregimpl28_regs1 = 4'd0;


// Adding a dummy event (using a dummy signal 'dummy_s') to get the simulator
// to run the combinatorial process once at the beginning.
// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign ddrphy_clk4x_wr_strb = crg_clk4x_wr_strb;
assign ddrphy_clk4x_rd_strb = crg_clk4x_rd_strb;

// synthesis translate_off
reg dummy_d;
// synthesis translate_on
always @(*) begin
	memtestsoc_interrupt <= 32'd0;
	memtestsoc_interrupt[0] <= suart_uart_irq;
	memtestsoc_interrupt[1] <= memtestsoc_irq;
// synthesis translate_off
	dummy_d <= dummy_s;
// synthesis translate_on
end
assign memtestsoc_ibus_adr = memtestsoc_i_adr_o[31:2];
assign memtestsoc_dbus_adr = memtestsoc_d_adr_o[31:2];

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
assign crg_clk4x_rd_strb = crg_clk4x_wr_strb;
assign git_status = 159'd704861468486744919598830157196190084350956650376;
assign platform_status = 63'd7883952888005145088;
assign target_status = 63'd5576983922814973011;
assign bus_dat_r = sr;
assign spiflash_clk = clk;
assign spiflash_cs_n = cs_n;
assign spiflash_mosi = sr[31];
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

// synthesis translate_off
reg dummy_d_3;
// synthesis translate_on
always @(*) begin
	controllerinjector_master_p0_wrdata_en <= 1'd0;
	controllerinjector_inti_p0_rddata_valid <= 1'd0;
	controllerinjector_master_p0_wrdata_mask <= 4'd0;
	controllerinjector_master_p0_rddata_en <= 1'd0;
	controllerinjector_master_p1_address <= 13'd0;
	controllerinjector_master_p1_bank <= 2'd0;
	controllerinjector_master_p1_cas_n <= 1'd1;
	controllerinjector_master_p1_cs_n <= 1'd1;
	controllerinjector_master_p1_ras_n <= 1'd1;
	controllerinjector_master_p1_we_n <= 1'd1;
	controllerinjector_master_p1_cke <= 1'd0;
	controllerinjector_master_p1_odt <= 1'd0;
	controllerinjector_master_p1_reset_n <= 1'd0;
	controllerinjector_master_p1_wrdata <= 32'd0;
	controllerinjector_inti_p1_rddata <= 32'd0;
	controllerinjector_master_p1_wrdata_en <= 1'd0;
	controllerinjector_inti_p1_rddata_valid <= 1'd0;
	controllerinjector_master_p1_wrdata_mask <= 4'd0;
	controllerinjector_master_p1_rddata_en <= 1'd0;
	controllerinjector_inti_p0_rddata <= 32'd0;
	controllerinjector_slave_p0_rddata <= 32'd0;
	controllerinjector_slave_p0_rddata_valid <= 1'd0;
	controllerinjector_slave_p1_rddata <= 32'd0;
	controllerinjector_slave_p1_rddata_valid <= 1'd0;
	controllerinjector_master_p0_address <= 13'd0;
	controllerinjector_master_p0_bank <= 2'd0;
	controllerinjector_master_p0_cas_n <= 1'd1;
	controllerinjector_master_p0_cs_n <= 1'd1;
	controllerinjector_master_p0_ras_n <= 1'd1;
	controllerinjector_master_p0_we_n <= 1'd1;
	controllerinjector_master_p0_cke <= 1'd0;
	controllerinjector_master_p0_odt <= 1'd0;
	controllerinjector_master_p0_reset_n <= 1'd0;
	controllerinjector_master_p0_wrdata <= 32'd0;
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
// synthesis translate_off
	dummy_d_3 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_inti_p0_cke = controllerinjector_storage[1];
assign controllerinjector_inti_p1_cke = controllerinjector_storage[1];
assign controllerinjector_inti_p0_odt = controllerinjector_storage[2];
assign controllerinjector_inti_p1_odt = controllerinjector_storage[2];
assign controllerinjector_inti_p0_reset_n = controllerinjector_storage[3];
assign controllerinjector_inti_p1_reset_n = controllerinjector_storage[3];

// synthesis translate_off
reg dummy_d_4;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_4 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_inti_p0_address = controllerinjector_phaseinjector0_address_storage;
assign controllerinjector_inti_p0_bank = controllerinjector_phaseinjector0_baddress_storage;
assign controllerinjector_inti_p0_wrdata_en = (controllerinjector_phaseinjector0_command_issue_re & controllerinjector_phaseinjector0_command_storage[4]);
assign controllerinjector_inti_p0_rddata_en = (controllerinjector_phaseinjector0_command_issue_re & controllerinjector_phaseinjector0_command_storage[5]);
assign controllerinjector_inti_p0_wrdata = controllerinjector_phaseinjector0_wrdata_storage;
assign controllerinjector_inti_p0_wrdata_mask = 1'd0;

// synthesis translate_off
reg dummy_d_5;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_5 <= dummy_s;
// synthesis translate_on
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
assign controllerinjector_wait = (1'd1 & (~controllerinjector_done));
assign controllerinjector_done = (controllerinjector_count == 1'd0);

// synthesis translate_off
reg dummy_d_6;
// synthesis translate_on
always @(*) begin
	controllerinjector_refresher_next_state <= 2'd0;
	controllerinjector_cmd_last <= 1'd0;
	controllerinjector_seq_start <= 1'd0;
	controllerinjector_cmd_valid <= 1'd0;
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
	dummy_d_6 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine0_sink_valid = controllerinjector_bankmachine0_req_valid;
assign controllerinjector_bankmachine0_req_ready = controllerinjector_bankmachine0_sink_ready;
assign controllerinjector_bankmachine0_sink_payload_we = controllerinjector_bankmachine0_req_we;
assign controllerinjector_bankmachine0_sink_payload_adr = controllerinjector_bankmachine0_req_adr;
assign controllerinjector_bankmachine0_source_ready = (controllerinjector_bankmachine0_req_wdata_ready | controllerinjector_bankmachine0_req_rdata_valid);
assign controllerinjector_bankmachine0_req_lock = controllerinjector_bankmachine0_source_valid;
assign controllerinjector_bankmachine0_hit = (controllerinjector_bankmachine0_openrow == controllerinjector_bankmachine0_source_payload_adr[20:8]);
assign controllerinjector_bankmachine0_cmd_payload_ba = 1'd0;

// synthesis translate_off
reg dummy_d_7;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine0_cmd_payload_a <= 13'd0;
	if (controllerinjector_bankmachine0_sel_row_adr) begin
		controllerinjector_bankmachine0_cmd_payload_a <= controllerinjector_bankmachine0_source_payload_adr[20:8];
	end else begin
		controllerinjector_bankmachine0_cmd_payload_a <= {controllerinjector_bankmachine0_source_payload_adr[7:0], {2{1'd0}}};
	end
// synthesis translate_off
	dummy_d_7 <= dummy_s;
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
reg dummy_d_8;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine0_wrport_adr <= 3'd0;
	if (controllerinjector_bankmachine0_replace) begin
		controllerinjector_bankmachine0_wrport_adr <= (controllerinjector_bankmachine0_produce - 1'd1);
	end else begin
		controllerinjector_bankmachine0_wrport_adr <= controllerinjector_bankmachine0_produce;
	end
// synthesis translate_off
	dummy_d_8 <= dummy_s;
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
reg dummy_d_9;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine0_cmd_payload_is_cmd <= 1'd0;
	controllerinjector_bankmachine0_cmd_payload_is_read <= 1'd0;
	controllerinjector_bankmachine0_cmd_payload_is_write <= 1'd0;
	controllerinjector_bankmachine0_next_state <= 3'd0;
	controllerinjector_bankmachine0_req_wdata_ready <= 1'd0;
	controllerinjector_bankmachine0_req_rdata_valid <= 1'd0;
	controllerinjector_bankmachine0_refresh_gnt <= 1'd0;
	controllerinjector_bankmachine0_cmd_valid <= 1'd0;
	controllerinjector_bankmachine0_track_open <= 1'd0;
	controllerinjector_bankmachine0_track_close <= 1'd0;
	controllerinjector_bankmachine0_sel_row_adr <= 1'd0;
	controllerinjector_bankmachine0_cmd_payload_cas <= 1'd0;
	controllerinjector_bankmachine0_cmd_payload_ras <= 1'd0;
	controllerinjector_bankmachine0_cmd_payload_we <= 1'd0;
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
	dummy_d_9 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine1_sink_valid = controllerinjector_bankmachine1_req_valid;
assign controllerinjector_bankmachine1_req_ready = controllerinjector_bankmachine1_sink_ready;
assign controllerinjector_bankmachine1_sink_payload_we = controllerinjector_bankmachine1_req_we;
assign controllerinjector_bankmachine1_sink_payload_adr = controllerinjector_bankmachine1_req_adr;
assign controllerinjector_bankmachine1_source_ready = (controllerinjector_bankmachine1_req_wdata_ready | controllerinjector_bankmachine1_req_rdata_valid);
assign controllerinjector_bankmachine1_req_lock = controllerinjector_bankmachine1_source_valid;
assign controllerinjector_bankmachine1_hit = (controllerinjector_bankmachine1_openrow == controllerinjector_bankmachine1_source_payload_adr[20:8]);
assign controllerinjector_bankmachine1_cmd_payload_ba = 1'd1;

// synthesis translate_off
reg dummy_d_10;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine1_cmd_payload_a <= 13'd0;
	if (controllerinjector_bankmachine1_sel_row_adr) begin
		controllerinjector_bankmachine1_cmd_payload_a <= controllerinjector_bankmachine1_source_payload_adr[20:8];
	end else begin
		controllerinjector_bankmachine1_cmd_payload_a <= {controllerinjector_bankmachine1_source_payload_adr[7:0], {2{1'd0}}};
	end
// synthesis translate_off
	dummy_d_10 <= dummy_s;
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
reg dummy_d_11;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine1_wrport_adr <= 3'd0;
	if (controllerinjector_bankmachine1_replace) begin
		controllerinjector_bankmachine1_wrport_adr <= (controllerinjector_bankmachine1_produce - 1'd1);
	end else begin
		controllerinjector_bankmachine1_wrport_adr <= controllerinjector_bankmachine1_produce;
	end
// synthesis translate_off
	dummy_d_11 <= dummy_s;
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
reg dummy_d_12;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine1_cmd_payload_we <= 1'd0;
	controllerinjector_bankmachine1_cmd_payload_is_cmd <= 1'd0;
	controllerinjector_bankmachine1_cmd_payload_is_read <= 1'd0;
	controllerinjector_bankmachine1_cmd_payload_is_write <= 1'd0;
	controllerinjector_bankmachine1_req_wdata_ready <= 1'd0;
	controllerinjector_bankmachine1_req_rdata_valid <= 1'd0;
	controllerinjector_bankmachine1_cmd_payload_cas <= 1'd0;
	controllerinjector_bankmachine1_refresh_gnt <= 1'd0;
	controllerinjector_bankmachine1_cmd_valid <= 1'd0;
	controllerinjector_bankmachine1_track_open <= 1'd0;
	controllerinjector_bankmachine1_track_close <= 1'd0;
	controllerinjector_bankmachine1_sel_row_adr <= 1'd0;
	controllerinjector_bankmachine1_next_state <= 3'd0;
	controllerinjector_bankmachine1_cmd_payload_ras <= 1'd0;
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
	dummy_d_12 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine2_sink_valid = controllerinjector_bankmachine2_req_valid;
assign controllerinjector_bankmachine2_req_ready = controllerinjector_bankmachine2_sink_ready;
assign controllerinjector_bankmachine2_sink_payload_we = controllerinjector_bankmachine2_req_we;
assign controllerinjector_bankmachine2_sink_payload_adr = controllerinjector_bankmachine2_req_adr;
assign controllerinjector_bankmachine2_source_ready = (controllerinjector_bankmachine2_req_wdata_ready | controllerinjector_bankmachine2_req_rdata_valid);
assign controllerinjector_bankmachine2_req_lock = controllerinjector_bankmachine2_source_valid;
assign controllerinjector_bankmachine2_hit = (controllerinjector_bankmachine2_openrow == controllerinjector_bankmachine2_source_payload_adr[20:8]);
assign controllerinjector_bankmachine2_cmd_payload_ba = 2'd2;

// synthesis translate_off
reg dummy_d_13;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine2_cmd_payload_a <= 13'd0;
	if (controllerinjector_bankmachine2_sel_row_adr) begin
		controllerinjector_bankmachine2_cmd_payload_a <= controllerinjector_bankmachine2_source_payload_adr[20:8];
	end else begin
		controllerinjector_bankmachine2_cmd_payload_a <= {controllerinjector_bankmachine2_source_payload_adr[7:0], {2{1'd0}}};
	end
// synthesis translate_off
	dummy_d_13 <= dummy_s;
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
reg dummy_d_14;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine2_wrport_adr <= 3'd0;
	if (controllerinjector_bankmachine2_replace) begin
		controllerinjector_bankmachine2_wrport_adr <= (controllerinjector_bankmachine2_produce - 1'd1);
	end else begin
		controllerinjector_bankmachine2_wrport_adr <= controllerinjector_bankmachine2_produce;
	end
// synthesis translate_off
	dummy_d_14 <= dummy_s;
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
reg dummy_d_15;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine2_cmd_payload_ras <= 1'd0;
	controllerinjector_bankmachine2_cmd_payload_we <= 1'd0;
	controllerinjector_bankmachine2_cmd_payload_is_cmd <= 1'd0;
	controllerinjector_bankmachine2_cmd_payload_is_read <= 1'd0;
	controllerinjector_bankmachine2_cmd_payload_is_write <= 1'd0;
	controllerinjector_bankmachine2_req_wdata_ready <= 1'd0;
	controllerinjector_bankmachine2_req_rdata_valid <= 1'd0;
	controllerinjector_bankmachine2_next_state <= 3'd0;
	controllerinjector_bankmachine2_refresh_gnt <= 1'd0;
	controllerinjector_bankmachine2_cmd_valid <= 1'd0;
	controllerinjector_bankmachine2_track_open <= 1'd0;
	controllerinjector_bankmachine2_track_close <= 1'd0;
	controllerinjector_bankmachine2_sel_row_adr <= 1'd0;
	controllerinjector_bankmachine2_cmd_payload_cas <= 1'd0;
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
	dummy_d_15 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_bankmachine3_sink_valid = controllerinjector_bankmachine3_req_valid;
assign controllerinjector_bankmachine3_req_ready = controllerinjector_bankmachine3_sink_ready;
assign controllerinjector_bankmachine3_sink_payload_we = controllerinjector_bankmachine3_req_we;
assign controllerinjector_bankmachine3_sink_payload_adr = controllerinjector_bankmachine3_req_adr;
assign controllerinjector_bankmachine3_source_ready = (controllerinjector_bankmachine3_req_wdata_ready | controllerinjector_bankmachine3_req_rdata_valid);
assign controllerinjector_bankmachine3_req_lock = controllerinjector_bankmachine3_source_valid;
assign controllerinjector_bankmachine3_hit = (controllerinjector_bankmachine3_openrow == controllerinjector_bankmachine3_source_payload_adr[20:8]);
assign controllerinjector_bankmachine3_cmd_payload_ba = 2'd3;

// synthesis translate_off
reg dummy_d_16;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine3_cmd_payload_a <= 13'd0;
	if (controllerinjector_bankmachine3_sel_row_adr) begin
		controllerinjector_bankmachine3_cmd_payload_a <= controllerinjector_bankmachine3_source_payload_adr[20:8];
	end else begin
		controllerinjector_bankmachine3_cmd_payload_a <= {controllerinjector_bankmachine3_source_payload_adr[7:0], {2{1'd0}}};
	end
// synthesis translate_off
	dummy_d_16 <= dummy_s;
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
reg dummy_d_17;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine3_wrport_adr <= 3'd0;
	if (controllerinjector_bankmachine3_replace) begin
		controllerinjector_bankmachine3_wrport_adr <= (controllerinjector_bankmachine3_produce - 1'd1);
	end else begin
		controllerinjector_bankmachine3_wrport_adr <= controllerinjector_bankmachine3_produce;
	end
// synthesis translate_off
	dummy_d_17 <= dummy_s;
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
reg dummy_d_18;
// synthesis translate_on
always @(*) begin
	controllerinjector_bankmachine3_cmd_payload_cas <= 1'd0;
	controllerinjector_bankmachine3_cmd_payload_ras <= 1'd0;
	controllerinjector_bankmachine3_cmd_payload_we <= 1'd0;
	controllerinjector_bankmachine3_cmd_payload_is_cmd <= 1'd0;
	controllerinjector_bankmachine3_next_state <= 3'd0;
	controllerinjector_bankmachine3_cmd_payload_is_read <= 1'd0;
	controllerinjector_bankmachine3_cmd_payload_is_write <= 1'd0;
	controllerinjector_bankmachine3_req_wdata_ready <= 1'd0;
	controllerinjector_bankmachine3_req_rdata_valid <= 1'd0;
	controllerinjector_bankmachine3_refresh_gnt <= 1'd0;
	controllerinjector_bankmachine3_cmd_valid <= 1'd0;
	controllerinjector_bankmachine3_track_open <= 1'd0;
	controllerinjector_bankmachine3_track_close <= 1'd0;
	controllerinjector_bankmachine3_sel_row_adr <= 1'd0;
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
	dummy_d_18 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_read_available = ((((controllerinjector_bankmachine0_cmd_valid & controllerinjector_bankmachine0_cmd_payload_is_read) | (controllerinjector_bankmachine1_cmd_valid & controllerinjector_bankmachine1_cmd_payload_is_read)) | (controllerinjector_bankmachine2_cmd_valid & controllerinjector_bankmachine2_cmd_payload_is_read)) | (controllerinjector_bankmachine3_cmd_valid & controllerinjector_bankmachine3_cmd_payload_is_read));
assign controllerinjector_write_available = ((((controllerinjector_bankmachine0_cmd_valid & controllerinjector_bankmachine0_cmd_payload_is_write) | (controllerinjector_bankmachine1_cmd_valid & controllerinjector_bankmachine1_cmd_payload_is_write)) | (controllerinjector_bankmachine2_cmd_valid & controllerinjector_bankmachine2_cmd_payload_is_write)) | (controllerinjector_bankmachine3_cmd_valid & controllerinjector_bankmachine3_cmd_payload_is_write));
assign controllerinjector_max_time0 = (controllerinjector_time0 == 1'd0);
assign controllerinjector_max_time1 = (controllerinjector_time1 == 1'd0);
assign controllerinjector_bankmachine0_refresh_req = controllerinjector_cmd_valid;
assign controllerinjector_bankmachine1_refresh_req = controllerinjector_cmd_valid;
assign controllerinjector_bankmachine2_refresh_req = controllerinjector_cmd_valid;
assign controllerinjector_bankmachine3_refresh_req = controllerinjector_cmd_valid;
assign controllerinjector_go_to_refresh = (((controllerinjector_bankmachine0_refresh_gnt & controllerinjector_bankmachine1_refresh_gnt) & controllerinjector_bankmachine2_refresh_gnt) & controllerinjector_bankmachine3_refresh_gnt);
assign controllerinjector_interface_rdata = {controllerinjector_dfi_p1_rddata, controllerinjector_dfi_p0_rddata};
assign {controllerinjector_dfi_p1_wrdata, controllerinjector_dfi_p0_wrdata} = controllerinjector_interface_wdata;
assign {controllerinjector_dfi_p1_wrdata_mask, controllerinjector_dfi_p0_wrdata_mask} = (~controllerinjector_interface_wdata_we);

// synthesis translate_off
reg dummy_d_19;
// synthesis translate_on
always @(*) begin
	controllerinjector_choose_cmd_valids <= 4'd0;
	controllerinjector_choose_cmd_valids[0] <= (controllerinjector_bankmachine0_cmd_valid & ((controllerinjector_bankmachine0_cmd_payload_is_cmd & controllerinjector_choose_cmd_want_cmds) | ((controllerinjector_bankmachine0_cmd_payload_is_read == controllerinjector_choose_cmd_want_reads) & (controllerinjector_bankmachine0_cmd_payload_is_write == controllerinjector_choose_cmd_want_writes))));
	controllerinjector_choose_cmd_valids[1] <= (controllerinjector_bankmachine1_cmd_valid & ((controllerinjector_bankmachine1_cmd_payload_is_cmd & controllerinjector_choose_cmd_want_cmds) | ((controllerinjector_bankmachine1_cmd_payload_is_read == controllerinjector_choose_cmd_want_reads) & (controllerinjector_bankmachine1_cmd_payload_is_write == controllerinjector_choose_cmd_want_writes))));
	controllerinjector_choose_cmd_valids[2] <= (controllerinjector_bankmachine2_cmd_valid & ((controllerinjector_bankmachine2_cmd_payload_is_cmd & controllerinjector_choose_cmd_want_cmds) | ((controllerinjector_bankmachine2_cmd_payload_is_read == controllerinjector_choose_cmd_want_reads) & (controllerinjector_bankmachine2_cmd_payload_is_write == controllerinjector_choose_cmd_want_writes))));
	controllerinjector_choose_cmd_valids[3] <= (controllerinjector_bankmachine3_cmd_valid & ((controllerinjector_bankmachine3_cmd_payload_is_cmd & controllerinjector_choose_cmd_want_cmds) | ((controllerinjector_bankmachine3_cmd_payload_is_read == controllerinjector_choose_cmd_want_reads) & (controllerinjector_bankmachine3_cmd_payload_is_write == controllerinjector_choose_cmd_want_writes))));
// synthesis translate_off
	dummy_d_19 <= dummy_s;
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
reg dummy_d_20;
// synthesis translate_on
always @(*) begin
	controllerinjector_choose_cmd_cmd_payload_cas <= 1'd0;
	if (controllerinjector_choose_cmd_cmd_valid) begin
		controllerinjector_choose_cmd_cmd_payload_cas <= t_array_muxed0;
	end
// synthesis translate_off
	dummy_d_20 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_21;
// synthesis translate_on
always @(*) begin
	controllerinjector_choose_cmd_cmd_payload_ras <= 1'd0;
	if (controllerinjector_choose_cmd_cmd_valid) begin
		controllerinjector_choose_cmd_cmd_payload_ras <= t_array_muxed1;
	end
// synthesis translate_off
	dummy_d_21 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_22;
// synthesis translate_on
always @(*) begin
	controllerinjector_choose_cmd_cmd_payload_we <= 1'd0;
	if (controllerinjector_choose_cmd_cmd_valid) begin
		controllerinjector_choose_cmd_cmd_payload_we <= t_array_muxed2;
	end
// synthesis translate_off
	dummy_d_22 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_choose_cmd_ce = controllerinjector_choose_cmd_cmd_ready;

// synthesis translate_off
reg dummy_d_23;
// synthesis translate_on
always @(*) begin
	controllerinjector_choose_req_valids <= 4'd0;
	controllerinjector_choose_req_valids[0] <= (controllerinjector_bankmachine0_cmd_valid & ((controllerinjector_bankmachine0_cmd_payload_is_cmd & controllerinjector_choose_req_want_cmds) | ((controllerinjector_bankmachine0_cmd_payload_is_read == controllerinjector_choose_req_want_reads) & (controllerinjector_bankmachine0_cmd_payload_is_write == controllerinjector_choose_req_want_writes))));
	controllerinjector_choose_req_valids[1] <= (controllerinjector_bankmachine1_cmd_valid & ((controllerinjector_bankmachine1_cmd_payload_is_cmd & controllerinjector_choose_req_want_cmds) | ((controllerinjector_bankmachine1_cmd_payload_is_read == controllerinjector_choose_req_want_reads) & (controllerinjector_bankmachine1_cmd_payload_is_write == controllerinjector_choose_req_want_writes))));
	controllerinjector_choose_req_valids[2] <= (controllerinjector_bankmachine2_cmd_valid & ((controllerinjector_bankmachine2_cmd_payload_is_cmd & controllerinjector_choose_req_want_cmds) | ((controllerinjector_bankmachine2_cmd_payload_is_read == controllerinjector_choose_req_want_reads) & (controllerinjector_bankmachine2_cmd_payload_is_write == controllerinjector_choose_req_want_writes))));
	controllerinjector_choose_req_valids[3] <= (controllerinjector_bankmachine3_cmd_valid & ((controllerinjector_bankmachine3_cmd_payload_is_cmd & controllerinjector_choose_req_want_cmds) | ((controllerinjector_bankmachine3_cmd_payload_is_read == controllerinjector_choose_req_want_reads) & (controllerinjector_bankmachine3_cmd_payload_is_write == controllerinjector_choose_req_want_writes))));
// synthesis translate_off
	dummy_d_23 <= dummy_s;
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
reg dummy_d_24;
// synthesis translate_on
always @(*) begin
	controllerinjector_choose_req_cmd_payload_cas <= 1'd0;
	if (controllerinjector_choose_req_cmd_valid) begin
		controllerinjector_choose_req_cmd_payload_cas <= t_array_muxed3;
	end
// synthesis translate_off
	dummy_d_24 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_25;
// synthesis translate_on
always @(*) begin
	controllerinjector_choose_req_cmd_payload_ras <= 1'd0;
	if (controllerinjector_choose_req_cmd_valid) begin
		controllerinjector_choose_req_cmd_payload_ras <= t_array_muxed4;
	end
// synthesis translate_off
	dummy_d_25 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_26;
// synthesis translate_on
always @(*) begin
	controllerinjector_choose_req_cmd_payload_we <= 1'd0;
	if (controllerinjector_choose_req_cmd_valid) begin
		controllerinjector_choose_req_cmd_payload_we <= t_array_muxed5;
	end
// synthesis translate_off
	dummy_d_26 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_27;
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
	dummy_d_27 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_28;
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
	dummy_d_28 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_29;
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
	dummy_d_29 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_30;
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
	dummy_d_30 <= dummy_s;
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

// synthesis translate_off
reg dummy_d_31;
// synthesis translate_on
always @(*) begin
	controllerinjector_choose_req_want_reads <= 1'd0;
	controllerinjector_choose_req_want_writes <= 1'd0;
	controllerinjector_sel0 <= 2'd0;
	controllerinjector_choose_req_cmd_ready <= 1'd0;
	controllerinjector_sel1 <= 2'd0;
	controllerinjector_en0 <= 1'd0;
	controllerinjector_choose_cmd_cmd_ready <= 1'd0;
	controllerinjector_cmd_ready <= 1'd0;
	controllerinjector_en1 <= 1'd0;
	controllerinjector_multiplexer_next_state <= 3'd0;
	controllerinjector_multiplexer_next_state <= controllerinjector_multiplexer_state;
	case (controllerinjector_multiplexer_state)
		1'd1: begin
			controllerinjector_en1 <= 1'd1;
			controllerinjector_choose_req_want_writes <= 1'd1;
			controllerinjector_choose_cmd_cmd_ready <= 1'd1;
			controllerinjector_choose_req_cmd_ready <= 1'd1;
			controllerinjector_sel0 <= 1'd1;
			controllerinjector_sel1 <= 2'd2;
			if (controllerinjector_read_available) begin
				if (((~controllerinjector_write_available) | controllerinjector_max_time1)) begin
					controllerinjector_multiplexer_next_state <= 3'd7;
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
			controllerinjector_multiplexer_next_state <= 3'd6;
		end
		3'd6: begin
			controllerinjector_multiplexer_next_state <= 1'd1;
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
	dummy_d_31 <= dummy_s;
// synthesis translate_on
end
assign controllerinjector_cba0 = port_cmd_payload_adr[9:8];
assign controllerinjector_rca0 = {port_cmd_payload_adr[22:10], port_cmd_payload_adr[7:0]};
assign controllerinjector_cba1 = litedramport0_cmd_payload_adr0[9:8];
assign controllerinjector_rca1 = {litedramport0_cmd_payload_adr0[22:10], litedramport0_cmd_payload_adr0[7:0]};
assign controllerinjector_cba2 = litedramport1_cmd_payload_adr0[9:8];
assign controllerinjector_rca2 = {litedramport1_cmd_payload_adr0[22:10], litedramport1_cmd_payload_adr0[7:0]};
assign controllerinjector_roundrobin0_request = {(((controllerinjector_cba2 == 1'd0) & (~(((1'd0 | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2))))) & litedramport1_cmd_valid0), (((controllerinjector_cba1 == 1'd0) & (~(((1'd0 | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1))))) & litedramport0_cmd_valid0), (((controllerinjector_cba0 == 1'd0) & (~(((1'd0 | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0))))) & port_cmd_valid)};
assign controllerinjector_roundrobin0_ce = ((~controllerinjector_interface_bank0_valid) & (~controllerinjector_interface_bank0_lock));
assign controllerinjector_interface_bank0_adr = rhs_array_muxed12;
assign controllerinjector_interface_bank0_we = rhs_array_muxed13;
assign controllerinjector_interface_bank0_valid = rhs_array_muxed14;
assign controllerinjector_roundrobin1_request = {(((controllerinjector_cba2 == 1'd1) & (~(((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2))))) & litedramport1_cmd_valid0), (((controllerinjector_cba1 == 1'd1) & (~(((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1))))) & litedramport0_cmd_valid0), (((controllerinjector_cba0 == 1'd1) & (~(((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0))))) & port_cmd_valid)};
assign controllerinjector_roundrobin1_ce = ((~controllerinjector_interface_bank1_valid) & (~controllerinjector_interface_bank1_lock));
assign controllerinjector_interface_bank1_adr = rhs_array_muxed15;
assign controllerinjector_interface_bank1_we = rhs_array_muxed16;
assign controllerinjector_interface_bank1_valid = rhs_array_muxed17;
assign controllerinjector_roundrobin2_request = {(((controllerinjector_cba2 == 2'd2) & (~(((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2))))) & litedramport1_cmd_valid0), (((controllerinjector_cba1 == 2'd2) & (~(((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1))))) & litedramport0_cmd_valid0), (((controllerinjector_cba0 == 2'd2) & (~(((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0))))) & port_cmd_valid)};
assign controllerinjector_roundrobin2_ce = ((~controllerinjector_interface_bank2_valid) & (~controllerinjector_interface_bank2_lock));
assign controllerinjector_interface_bank2_adr = rhs_array_muxed18;
assign controllerinjector_interface_bank2_we = rhs_array_muxed19;
assign controllerinjector_interface_bank2_valid = rhs_array_muxed20;
assign controllerinjector_roundrobin3_request = {(((controllerinjector_cba2 == 2'd3) & (~(((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))))) & litedramport1_cmd_valid0), (((controllerinjector_cba1 == 2'd3) & (~(((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))))) & litedramport0_cmd_valid0), (((controllerinjector_cba0 == 2'd3) & (~(((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))))) & port_cmd_valid)};
assign controllerinjector_roundrobin3_ce = ((~controllerinjector_interface_bank3_valid) & (~controllerinjector_interface_bank3_lock));
assign controllerinjector_interface_bank3_adr = rhs_array_muxed21;
assign controllerinjector_interface_bank3_we = rhs_array_muxed22;
assign controllerinjector_interface_bank3_valid = rhs_array_muxed23;
assign port_cmd_ready = ((((1'd0 | (((controllerinjector_roundrobin0_grant == 1'd0) & ((controllerinjector_cba0 == 1'd0) & (~(((1'd0 | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0)))))) & controllerinjector_interface_bank0_ready)) | (((controllerinjector_roundrobin1_grant == 1'd0) & ((controllerinjector_cba0 == 1'd1) & (~(((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0)))))) & controllerinjector_interface_bank1_ready)) | (((controllerinjector_roundrobin2_grant == 1'd0) & ((controllerinjector_cba0 == 2'd2) & (~(((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0)))))) & controllerinjector_interface_bank2_ready)) | (((controllerinjector_roundrobin3_grant == 1'd0) & ((controllerinjector_cba0 == 2'd3) & (~(((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0)))))) & controllerinjector_interface_bank3_ready));
assign litedramport0_cmd_ready0 = ((((1'd0 | (((controllerinjector_roundrobin0_grant == 1'd1) & ((controllerinjector_cba1 == 1'd0) & (~(((1'd0 | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1)))))) & controllerinjector_interface_bank0_ready)) | (((controllerinjector_roundrobin1_grant == 1'd1) & ((controllerinjector_cba1 == 1'd1) & (~(((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1)))))) & controllerinjector_interface_bank1_ready)) | (((controllerinjector_roundrobin2_grant == 1'd1) & ((controllerinjector_cba1 == 2'd2) & (~(((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1)))))) & controllerinjector_interface_bank2_ready)) | (((controllerinjector_roundrobin3_grant == 1'd1) & ((controllerinjector_cba1 == 2'd3) & (~(((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1)))))) & controllerinjector_interface_bank3_ready));
assign litedramport1_cmd_ready0 = ((((1'd0 | (((controllerinjector_roundrobin0_grant == 2'd2) & ((controllerinjector_cba2 == 1'd0) & (~(((1'd0 | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2)))))) & controllerinjector_interface_bank0_ready)) | (((controllerinjector_roundrobin1_grant == 2'd2) & ((controllerinjector_cba2 == 1'd1) & (~(((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2)))))) & controllerinjector_interface_bank1_ready)) | (((controllerinjector_roundrobin2_grant == 2'd2) & ((controllerinjector_cba2 == 2'd2) & (~(((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2)))))) & controllerinjector_interface_bank2_ready)) | (((controllerinjector_roundrobin3_grant == 2'd2) & ((controllerinjector_cba2 == 2'd3) & (~(((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2)))))) & controllerinjector_interface_bank3_ready));
assign port_wdata_ready = controllerinjector_new_master_wdata_ready0;
assign litedramport0_wdata_ready0 = controllerinjector_new_master_wdata_ready1;
assign litedramport1_wdata_ready = controllerinjector_new_master_wdata_ready2;
assign port_rdata_valid = controllerinjector_new_master_rdata_valid5;
assign litedramport0_rdata_valid = controllerinjector_new_master_rdata_valid11;
assign litedramport1_rdata_valid0 = controllerinjector_new_master_rdata_valid17;

// synthesis translate_off
reg dummy_d_32;
// synthesis translate_on
always @(*) begin
	controllerinjector_interface_wdata <= 64'd0;
	controllerinjector_interface_wdata_we <= 8'd0;
	case ({controllerinjector_new_master_wdata_ready2, controllerinjector_new_master_wdata_ready1, controllerinjector_new_master_wdata_ready0})
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
	dummy_d_32 <= dummy_s;
// synthesis translate_on
end
assign port_rdata_payload_data = controllerinjector_interface_rdata;
assign litedramport0_rdata_payload_data = controllerinjector_interface_rdata;
assign litedramport1_rdata_payload_data0 = controllerinjector_interface_rdata;

// synthesis translate_off
reg dummy_d_33;
// synthesis translate_on
always @(*) begin
	litedramport0_cmd_payload_we0 <= 1'd0;
	litedramwriteportupconverter_address_controllerinjector_next_value1 <= 23'd0;
	litedramwriteportupconverter_address_controllerinjector_next_value_ce1 <= 1'd0;
	litedramwriteportupconverter_we_controllerinjector_next_value_ce0 <= 1'd0;
	litedramwriteportupconverter_we_controllerinjector_next_value0 <= 1'd0;
	litedramport0_cmd_valid0 <= 1'd0;
	litedramport0_cmd_ready1 <= 1'd0;
	controllerinjector_next_state <= 2'd0;
	litedramwriteportupconverter_counter_ce <= 1'd0;
	litedramport0_cmd_payload_adr0 <= 23'd0;
	controllerinjector_next_state <= controllerinjector_state;
	case (controllerinjector_state)
		1'd1: begin
			litedramport0_cmd_ready1 <= 1'd1;
			if (litedramport0_cmd_valid1) begin
				litedramwriteportupconverter_counter_ce <= 1'd1;
				if ((litedramwriteportupconverter_counter == 1'd1)) begin
					controllerinjector_next_state <= 2'd2;
				end
			end
		end
		2'd2: begin
			litedramport0_cmd_valid0 <= 1'd1;
			litedramport0_cmd_payload_we0 <= litedramwriteportupconverter_we;
			litedramport0_cmd_payload_adr0 <= litedramwriteportupconverter_address[22:1];
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
	dummy_d_33 <= dummy_s;
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
reg dummy_d_34;
// synthesis translate_on
always @(*) begin
	litedramwriteportupconverter_source_payload_data <= 64'd0;
	litedramwriteportupconverter_source_payload_data[31:0] <= litedramwriteportupconverter_source_source_payload_data[31:0];
	litedramwriteportupconverter_source_payload_data[63:32] <= litedramwriteportupconverter_source_source_payload_data[67:36];
// synthesis translate_off
	dummy_d_34 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_35;
// synthesis translate_on
always @(*) begin
	litedramwriteportupconverter_source_payload_we <= 8'd0;
	litedramwriteportupconverter_source_payload_we[3:0] <= litedramwriteportupconverter_source_source_payload_data[35:32];
	litedramwriteportupconverter_source_payload_we[7:4] <= litedramwriteportupconverter_source_source_payload_data[71:68];
// synthesis translate_off
	dummy_d_35 <= dummy_s;
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
reg dummy_d_36;
// synthesis translate_on
always @(*) begin
	litedramport1_cmd_payload_adr0 <= 23'd0;
	litedramport1_cmd_valid0 <= 1'd0;
	litedramreadportupconverter_counter_ce <= 1'd0;
	litedramport1_cmd_ready1 <= 1'd0;
	if (litedramport1_cmd_valid1) begin
		if ((litedramreadportupconverter_counter == 1'd0)) begin
			litedramport1_cmd_valid0 <= 1'd1;
			litedramport1_cmd_payload_adr0 <= litedramport1_cmd_payload_adr1[23:1];
			litedramport1_cmd_ready1 <= litedramport1_cmd_ready0;
			litedramreadportupconverter_counter_ce <= litedramport1_cmd_ready0;
		end else begin
			litedramport1_cmd_ready1 <= 1'd1;
			litedramreadportupconverter_counter_ce <= 1'd1;
		end
	end
// synthesis translate_off
	dummy_d_36 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_37;
// synthesis translate_on
always @(*) begin
	litedramreadportupconverter_cmd_buffer_sink_valid <= 1'd0;
	litedramreadportupconverter_cmd_buffer_sink_payload_sel <= 2'd0;
	if ((litedramport1_cmd_valid0 & litedramport1_cmd_ready0)) begin
		litedramreadportupconverter_cmd_buffer_sink_valid <= 1'd1;
		litedramreadportupconverter_cmd_buffer_sink_payload_sel <= 2'd3;
	end
// synthesis translate_off
	dummy_d_37 <= dummy_s;
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
reg dummy_d_38;
// synthesis translate_on
always @(*) begin
	litedramreadportupconverter_rdata_converter_source_ready <= 1'd0;
	litedramport1_rdata_payload_data1 <= 32'd0;
	litedramport1_rdata_valid1 <= 1'd0;
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
	dummy_d_38 <= dummy_s;
// synthesis translate_on
end
assign litedramreadportupconverter_cmd_buffer_source_ready = (litedramreadportupconverter_rdata_converter_source_ready & litedramreadportupconverter_rdata_chunk[1]);
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
reg dummy_d_39;
// synthesis translate_on
always @(*) begin
	litedramreadportupconverter_cmd_buffer_wrport_adr <= 2'd0;
	if (litedramreadportupconverter_cmd_buffer_replace) begin
		litedramreadportupconverter_cmd_buffer_wrport_adr <= (litedramreadportupconverter_cmd_buffer_produce - 1'd1);
	end else begin
		litedramreadportupconverter_cmd_buffer_wrport_adr <= litedramreadportupconverter_cmd_buffer_produce;
	end
// synthesis translate_off
	dummy_d_39 <= dummy_s;
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
reg dummy_d_40;
// synthesis translate_on
always @(*) begin
	litedramreadportupconverter_rdata_converter_converter_sink_payload_data <= 64'd0;
	litedramreadportupconverter_rdata_converter_converter_sink_payload_data[31:0] <= litedramreadportupconverter_rdata_converter_sink_payload_data[31:0];
	litedramreadportupconverter_rdata_converter_converter_sink_payload_data[63:32] <= litedramreadportupconverter_rdata_converter_sink_payload_data[63:32];
// synthesis translate_off
	dummy_d_40 <= dummy_s;
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
assign litedramreadportupconverter_rdata_converter_converter_last = (litedramreadportupconverter_rdata_converter_converter_mux == 1'd1);
assign litedramreadportupconverter_rdata_converter_converter_source_valid = litedramreadportupconverter_rdata_converter_converter_sink_valid;
assign litedramreadportupconverter_rdata_converter_converter_source_last = (litedramreadportupconverter_rdata_converter_converter_sink_last & litedramreadportupconverter_rdata_converter_converter_last);
assign litedramreadportupconverter_rdata_converter_converter_sink_ready = (litedramreadportupconverter_rdata_converter_converter_last & litedramreadportupconverter_rdata_converter_converter_source_ready);

// synthesis translate_off
reg dummy_d_41;
// synthesis translate_on
always @(*) begin
	litedramreadportupconverter_rdata_converter_converter_source_payload_data <= 32'd0;
	case (litedramreadportupconverter_rdata_converter_converter_mux)
		1'd0: begin
			litedramreadportupconverter_rdata_converter_converter_source_payload_data <= litedramreadportupconverter_rdata_converter_converter_sink_payload_data[31:0];
		end
		default: begin
			litedramreadportupconverter_rdata_converter_converter_source_payload_data <= litedramreadportupconverter_rdata_converter_converter_sink_payload_data[63:32];
		end
	endcase
// synthesis translate_off
	dummy_d_41 <= dummy_s;
// synthesis translate_on
end
assign litedramreadportupconverter_rdata_converter_converter_source_payload_valid_token_count = litedramreadportupconverter_rdata_converter_converter_last;
assign data_port_adr = interface0_wb_sdram_adr[10:1];

// synthesis translate_off
reg dummy_d_42;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_42 <= dummy_s;
// synthesis translate_on
end
assign interface_dat_w = data_port_dat_r;
assign interface_sel = 8'd255;

// synthesis translate_off
reg dummy_d_43;
// synthesis translate_on
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
// synthesis translate_off
	dummy_d_43 <= dummy_s;
// synthesis translate_on
end
assign {tag_do_dirty, tag_do_tag} = tag_port_dat_r;
assign tag_port_dat_w = {tag_di_dirty, tag_di_tag};
assign tag_port_adr = interface0_wb_sdram_adr[10:1];
assign tag_di_tag = interface0_wb_sdram_adr[29:11];
assign interface_adr = {tag_do_tag, interface0_wb_sdram_adr[10:1]};

// synthesis translate_off
reg dummy_d_44;
// synthesis translate_on
always @(*) begin
	tag_port_we <= 1'd0;
	interface0_wb_sdram_ack <= 1'd0;
	write_from_slave <= 1'd0;
	cache_next_state <= 3'd0;
	interface_cyc <= 1'd0;
	interface_stb <= 1'd0;
	tag_di_dirty <= 1'd0;
	interface_we <= 1'd0;
	word_clr <= 1'd0;
	word_inc <= 1'd0;
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
	dummy_d_44 <= dummy_s;
// synthesis translate_on
end
assign port_cmd_payload_adr = interface_adr;
assign port_wdata_payload_we = interface_sel;
assign port_wdata_payload_data = interface_dat_w;
assign interface_dat_r = port_rdata_payload_data;

// synthesis translate_off
reg dummy_d_45;
// synthesis translate_on
always @(*) begin
	port_rdata_ready <= 1'd0;
	port_cmd_payload_we <= 1'd0;
	interface_ack <= 1'd0;
	port_wdata_valid <= 1'd0;
	litedramwishbonebridge_next_state <= 2'd0;
	port_cmd_valid <= 1'd0;
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
	dummy_d_45 <= dummy_s;
// synthesis translate_on
end
assign user_led0 = leds[0];
assign user_led1 = leds[1];
assign user_led2 = leds[2];
assign user_led3 = leds[3];
assign user_led4 = leds[4];
assign user_led5 = leds[5];
assign user_led6 = leds[6];
assign user_led7 = leds[7];

// synthesis translate_off
reg dummy_d_46;
// synthesis translate_on
always @(*) begin
	switches <= 8'd0;
	switches[0] <= (~user_sw0);
	switches[1] <= (~user_sw1);
	switches[2] <= (~user_sw2);
	switches[3] <= (~user_sw3);
	switches[4] <= (~user_sw4);
	switches[5] <= (~user_sw5);
	switches[6] <= (~user_sw6);
	switches[7] <= (~user_sw7);
// synthesis translate_off
	dummy_d_46 <= dummy_s;
// synthesis translate_on
end
assign waittimer0_wait = user_btn0;
assign eventsourceprocess0_trigger = (~waittimer0_done);
assign waittimer1_wait = user_btn1;
assign eventsourceprocess1_trigger = (~waittimer1_done);
assign waittimer2_wait = user_btn2;
assign eventsourceprocess2_trigger = (~waittimer2_done);
assign waittimer3_wait = user_btn3;
assign eventsourceprocess3_trigger = (~waittimer3_done);
assign waittimer4_wait = user_btn4;
assign eventsourceprocess4_trigger = (~waittimer4_done);
assign leds = leds_storage;

// synthesis translate_off
reg dummy_d_47;
// synthesis translate_on
always @(*) begin
	eventsourceprocess0_clear <= 1'd0;
	if ((eventmanager_pending_re & eventmanager_pending_r[0])) begin
		eventsourceprocess0_clear <= 1'd1;
	end
// synthesis translate_off
	dummy_d_47 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_48;
// synthesis translate_on
always @(*) begin
	eventsourceprocess1_clear <= 1'd0;
	if ((eventmanager_pending_re & eventmanager_pending_r[1])) begin
		eventsourceprocess1_clear <= 1'd1;
	end
// synthesis translate_off
	dummy_d_48 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_49;
// synthesis translate_on
always @(*) begin
	eventsourceprocess2_clear <= 1'd0;
	if ((eventmanager_pending_re & eventmanager_pending_r[2])) begin
		eventsourceprocess2_clear <= 1'd1;
	end
// synthesis translate_off
	dummy_d_49 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_50;
// synthesis translate_on
always @(*) begin
	eventsourceprocess3_clear <= 1'd0;
	if ((eventmanager_pending_re & eventmanager_pending_r[3])) begin
		eventsourceprocess3_clear <= 1'd1;
	end
// synthesis translate_off
	dummy_d_50 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_51;
// synthesis translate_on
always @(*) begin
	eventmanager_status_w <= 5'd0;
	eventmanager_status_w[0] <= eventsourceprocess0_status;
	eventmanager_status_w[1] <= eventsourceprocess1_status;
	eventmanager_status_w[2] <= eventsourceprocess2_status;
	eventmanager_status_w[3] <= eventsourceprocess3_status;
	eventmanager_status_w[4] <= eventsourceprocess4_status;
// synthesis translate_off
	dummy_d_51 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_52;
// synthesis translate_on
always @(*) begin
	eventsourceprocess4_clear <= 1'd0;
	if ((eventmanager_pending_re & eventmanager_pending_r[4])) begin
		eventsourceprocess4_clear <= 1'd1;
	end
// synthesis translate_off
	dummy_d_52 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_53;
// synthesis translate_on
always @(*) begin
	eventmanager_pending_w <= 5'd0;
	eventmanager_pending_w[0] <= eventsourceprocess0_pending;
	eventmanager_pending_w[1] <= eventsourceprocess1_pending;
	eventmanager_pending_w[2] <= eventsourceprocess2_pending;
	eventmanager_pending_w[3] <= eventsourceprocess3_pending;
	eventmanager_pending_w[4] <= eventsourceprocess4_pending;
// synthesis translate_off
	dummy_d_53 <= dummy_s;
// synthesis translate_on
end
assign irq = (((((eventmanager_pending_w[0] & eventmanager_storage[0]) | (eventmanager_pending_w[1] & eventmanager_storage[1])) | (eventmanager_pending_w[2] & eventmanager_storage[2])) | (eventmanager_pending_w[3] & eventmanager_storage[3])) | (eventmanager_pending_w[4] & eventmanager_storage[4]));
assign eventsourceprocess0_status = eventsourceprocess0_trigger;
assign eventsourceprocess1_status = eventsourceprocess1_trigger;
assign eventsourceprocess2_status = eventsourceprocess2_trigger;
assign eventsourceprocess3_status = eventsourceprocess3_trigger;
assign eventsourceprocess4_status = eventsourceprocess4_trigger;
assign waittimer0_done = (waittimer0_count == 1'd0);
assign waittimer1_done = (waittimer1_count == 1'd0);
assign waittimer2_done = (waittimer2_count == 1'd0);
assign waittimer3_done = (waittimer3_count == 1'd0);
assign waittimer4_done = (waittimer4_count == 1'd0);
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
reg dummy_d_54;
// synthesis translate_on
always @(*) begin
	generator_core_fifo_wrport_adr <= 4'd0;
	if (generator_core_fifo_replace) begin
		generator_core_fifo_wrport_adr <= (generator_core_fifo_produce - 1'd1);
	end else begin
		generator_core_fifo_wrport_adr <= generator_core_fifo_produce;
	end
// synthesis translate_off
	dummy_d_54 <= dummy_s;
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
reg dummy_d_55;
// synthesis translate_on
always @(*) begin
	generator_core_done <= 1'd0;
	generator_core_ce <= 1'd0;
	generator_core_sink_sink_valid <= 1'd0;
	litedrambistgenerator_next_state <= 2'd0;
	generator_core_cmd_counter_litedrambistgenerator_next_value <= 24'd0;
	generator_core_cmd_counter_litedrambistgenerator_next_value_ce <= 1'd0;
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
	dummy_d_55 <= dummy_s;
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
reg dummy_d_56;
// synthesis translate_on
always @(*) begin
	checker_core_fifo_wrport_adr <= 4'd0;
	if (checker_core_fifo_replace) begin
		checker_core_fifo_wrport_adr <= (checker_core_fifo_produce - 1'd1);
	end else begin
		checker_core_fifo_wrport_adr <= checker_core_fifo_produce;
	end
// synthesis translate_off
	dummy_d_56 <= dummy_s;
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
reg dummy_d_57;
// synthesis translate_on
always @(*) begin
	checker_core_cmd_counter_fsm0_next_value <= 24'd0;
	checker_core_cmd_counter_fsm0_next_value_ce <= 1'd0;
	checker_core_is_ongoing0 <= 1'd0;
	checker_core_sink_sink_valid <= 1'd0;
	fsm0_next_state <= 2'd0;
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
	dummy_d_57 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_58;
// synthesis translate_on
always @(*) begin
	fsm1_next_state <= 2'd0;
	checker_core_data_counter_fsm1_next_value0 <= 24'd0;
	checker_core_data_counter_fsm1_next_value_ce0 <= 1'd0;
	checker_core_is_ongoing1 <= 1'd0;
	checker_core_err_count_fsm1_next_value1 <= 32'd0;
	checker_core_err_count_fsm1_next_value_ce1 <= 1'd0;
	checker_core_ce <= 1'd0;
	checker_core_source_source_ready <= 1'd0;
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
	dummy_d_58 <= dummy_s;
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
assign suart_uart_tx_fifo_sink_valid = suart_uart_rxtx_re;
assign suart_uart_tx_fifo_sink_payload_data = suart_uart_rxtx_r;
assign suart_uart_txfull_status = (~suart_uart_tx_fifo_sink_ready);
assign suart_phy_sink_valid = suart_uart_tx_fifo_source_valid;
assign suart_uart_tx_fifo_source_ready = suart_phy_sink_ready;
assign suart_phy_sink_last = suart_uart_tx_fifo_source_last;
assign suart_phy_sink_payload_data = suart_uart_tx_fifo_source_payload_data;
assign suart_uart_tx_trigger = (~suart_uart_tx_fifo_sink_ready);
assign suart_uart_rx_fifo_sink_valid = suart_phy_source_valid;
assign suart_phy_source_ready = suart_uart_rx_fifo_sink_ready;
assign suart_uart_rx_fifo_sink_last = suart_phy_source_last;
assign suart_uart_rx_fifo_sink_payload_data = suart_phy_source_payload_data;
assign suart_uart_rxempty_status = (~suart_uart_rx_fifo_source_valid);
assign suart_uart_rxtx_w = suart_uart_rx_fifo_source_payload_data;
assign suart_uart_rx_fifo_source_ready = suart_uart_rx_clear;
assign suart_uart_rx_trigger = (~suart_uart_rx_fifo_source_valid);

// synthesis translate_off
reg dummy_d_59;
// synthesis translate_on
always @(*) begin
	suart_uart_tx_clear <= 1'd0;
	if ((suart_uart_pending_re & suart_uart_pending_r[0])) begin
		suart_uart_tx_clear <= 1'd1;
	end
// synthesis translate_off
	dummy_d_59 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_60;
// synthesis translate_on
always @(*) begin
	suart_uart_status_w <= 2'd0;
	suart_uart_status_w[0] <= suart_uart_tx_status;
	suart_uart_status_w[1] <= suart_uart_rx_status;
// synthesis translate_off
	dummy_d_60 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_61;
// synthesis translate_on
always @(*) begin
	suart_uart_rx_clear <= 1'd0;
	if ((suart_uart_pending_re & suart_uart_pending_r[1])) begin
		suart_uart_rx_clear <= 1'd1;
	end
// synthesis translate_off
	dummy_d_61 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_62;
// synthesis translate_on
always @(*) begin
	suart_uart_pending_w <= 2'd0;
	suart_uart_pending_w[0] <= suart_uart_tx_pending;
	suart_uart_pending_w[1] <= suart_uart_rx_pending;
// synthesis translate_off
	dummy_d_62 <= dummy_s;
// synthesis translate_on
end
assign suart_uart_irq = ((suart_uart_pending_w[0] & suart_uart_storage[0]) | (suart_uart_pending_w[1] & suart_uart_storage[1]));
assign suart_uart_tx_status = suart_uart_tx_trigger;
assign suart_uart_rx_status = suart_uart_rx_trigger;
assign suart_uart_tx_fifo_syncfifo_din = {suart_uart_tx_fifo_fifo_in_last, suart_uart_tx_fifo_fifo_in_payload_data};
assign {suart_uart_tx_fifo_fifo_out_last, suart_uart_tx_fifo_fifo_out_payload_data} = suart_uart_tx_fifo_syncfifo_dout;
assign suart_uart_tx_fifo_sink_ready = suart_uart_tx_fifo_syncfifo_writable;
assign suart_uart_tx_fifo_syncfifo_we = suart_uart_tx_fifo_sink_valid;
assign suart_uart_tx_fifo_fifo_in_last = suart_uart_tx_fifo_sink_last;
assign suart_uart_tx_fifo_fifo_in_payload_data = suart_uart_tx_fifo_sink_payload_data;
assign suart_uart_tx_fifo_source_valid = suart_uart_tx_fifo_syncfifo_readable;
assign suart_uart_tx_fifo_source_last = suart_uart_tx_fifo_fifo_out_last;
assign suart_uart_tx_fifo_source_payload_data = suart_uart_tx_fifo_fifo_out_payload_data;
assign suart_uart_tx_fifo_syncfifo_re = suart_uart_tx_fifo_source_ready;

// synthesis translate_off
reg dummy_d_63;
// synthesis translate_on
always @(*) begin
	suart_uart_tx_fifo_wrport_adr <= 4'd0;
	if (suart_uart_tx_fifo_replace) begin
		suart_uart_tx_fifo_wrport_adr <= (suart_uart_tx_fifo_produce - 1'd1);
	end else begin
		suart_uart_tx_fifo_wrport_adr <= suart_uart_tx_fifo_produce;
	end
// synthesis translate_off
	dummy_d_63 <= dummy_s;
// synthesis translate_on
end
assign suart_uart_tx_fifo_wrport_dat_w = suart_uart_tx_fifo_syncfifo_din;
assign suart_uart_tx_fifo_wrport_we = (suart_uart_tx_fifo_syncfifo_we & (suart_uart_tx_fifo_syncfifo_writable | suart_uart_tx_fifo_replace));
assign suart_uart_tx_fifo_do_read = (suart_uart_tx_fifo_syncfifo_readable & suart_uart_tx_fifo_syncfifo_re);
assign suart_uart_tx_fifo_rdport_adr = suart_uart_tx_fifo_consume;
assign suart_uart_tx_fifo_syncfifo_dout = suart_uart_tx_fifo_rdport_dat_r;
assign suart_uart_tx_fifo_syncfifo_writable = (suart_uart_tx_fifo_level != 5'd16);
assign suart_uart_tx_fifo_syncfifo_readable = (suart_uart_tx_fifo_level != 1'd0);
assign suart_uart_rx_fifo_syncfifo_din = {suart_uart_rx_fifo_fifo_in_last, suart_uart_rx_fifo_fifo_in_payload_data};
assign {suart_uart_rx_fifo_fifo_out_last, suart_uart_rx_fifo_fifo_out_payload_data} = suart_uart_rx_fifo_syncfifo_dout;
assign suart_uart_rx_fifo_sink_ready = suart_uart_rx_fifo_syncfifo_writable;
assign suart_uart_rx_fifo_syncfifo_we = suart_uart_rx_fifo_sink_valid;
assign suart_uart_rx_fifo_fifo_in_last = suart_uart_rx_fifo_sink_last;
assign suart_uart_rx_fifo_fifo_in_payload_data = suart_uart_rx_fifo_sink_payload_data;
assign suart_uart_rx_fifo_source_valid = suart_uart_rx_fifo_syncfifo_readable;
assign suart_uart_rx_fifo_source_last = suart_uart_rx_fifo_fifo_out_last;
assign suart_uart_rx_fifo_source_payload_data = suart_uart_rx_fifo_fifo_out_payload_data;
assign suart_uart_rx_fifo_syncfifo_re = suart_uart_rx_fifo_source_ready;

// synthesis translate_off
reg dummy_d_64;
// synthesis translate_on
always @(*) begin
	suart_uart_rx_fifo_wrport_adr <= 4'd0;
	if (suart_uart_rx_fifo_replace) begin
		suart_uart_rx_fifo_wrport_adr <= (suart_uart_rx_fifo_produce - 1'd1);
	end else begin
		suart_uart_rx_fifo_wrport_adr <= suart_uart_rx_fifo_produce;
	end
// synthesis translate_off
	dummy_d_64 <= dummy_s;
// synthesis translate_on
end
assign suart_uart_rx_fifo_wrport_dat_w = suart_uart_rx_fifo_syncfifo_din;
assign suart_uart_rx_fifo_wrport_we = (suart_uart_rx_fifo_syncfifo_we & (suart_uart_rx_fifo_syncfifo_writable | suart_uart_rx_fifo_replace));
assign suart_uart_rx_fifo_do_read = (suart_uart_rx_fifo_syncfifo_readable & suart_uart_rx_fifo_syncfifo_re);
assign suart_uart_rx_fifo_rdport_adr = suart_uart_rx_fifo_consume;
assign suart_uart_rx_fifo_syncfifo_dout = suart_uart_rx_fifo_rdport_dat_r;
assign suart_uart_rx_fifo_syncfifo_writable = (suart_uart_rx_fifo_level != 5'd16);
assign suart_uart_rx_fifo_syncfifo_readable = (suart_uart_rx_fifo_level != 1'd0);
assign uartbridge_reset = uartbridge_done;
assign uartbridge_source_ready = 1'd1;
assign uartbridge_wishbone_adr = (uartbridge_address + uartbridge_word_counter);
assign uartbridge_wishbone_dat_w = uartbridge_data;
assign uartbridge_wishbone_sel = 4'd15;

// synthesis translate_off
reg dummy_d_65;
// synthesis translate_on
always @(*) begin
	uartbridge_sink_payload_data <= 8'd0;
	case (uartbridge_byte_counter)
		1'd0: begin
			uartbridge_sink_payload_data <= uartbridge_data[31:24];
		end
		1'd1: begin
			uartbridge_sink_payload_data <= uartbridge_data[23:16];
		end
		2'd2: begin
			uartbridge_sink_payload_data <= uartbridge_data[15:8];
		end
		default: begin
			uartbridge_sink_payload_data <= uartbridge_data[7:0];
		end
	endcase
// synthesis translate_off
	dummy_d_65 <= dummy_s;
// synthesis translate_on
end
assign uartbridge_wait = (~uartbridge_is_ongoing);
assign uartbridge_sink_last = ((uartbridge_byte_counter == 2'd3) & (uartbridge_word_counter == (uartbridge_length - 1'd1)));

// synthesis translate_off
reg dummy_d_66;
// synthesis translate_on
always @(*) begin
	uartbridge_rx_data_ce <= 1'd0;
	uartwishbonebridge_next_state <= 3'd0;
	uartbridge_byte_counter_reset <= 1'd0;
	uartbridge_wishbone_we <= 1'd0;
	uartbridge_byte_counter_ce <= 1'd0;
	uartbridge_tx_data_ce <= 1'd0;
	uartbridge_word_counter_reset <= 1'd0;
	uartbridge_is_ongoing <= 1'd0;
	uartbridge_word_counter_ce <= 1'd0;
	uartbridge_sink_valid <= 1'd0;
	uartbridge_wishbone_cyc <= 1'd0;
	uartbridge_wishbone_stb <= 1'd0;
	uartbridge_cmd_ce <= 1'd0;
	uartbridge_length_ce <= 1'd0;
	uartbridge_address_ce <= 1'd0;
	uartwishbonebridge_next_state <= uartwishbonebridge_state;
	case (uartwishbonebridge_state)
		1'd1: begin
			if (uartbridge_source_valid) begin
				uartbridge_length_ce <= 1'd1;
				uartwishbonebridge_next_state <= 2'd2;
			end
		end
		2'd2: begin
			if (uartbridge_source_valid) begin
				uartbridge_address_ce <= 1'd1;
				uartbridge_byte_counter_ce <= 1'd1;
				if ((uartbridge_byte_counter == 2'd3)) begin
					if ((uartbridge_cmd == 1'd1)) begin
						uartwishbonebridge_next_state <= 2'd3;
					end else begin
						if ((uartbridge_cmd == 2'd2)) begin
							uartwishbonebridge_next_state <= 3'd5;
						end
					end
					uartbridge_byte_counter_reset <= 1'd1;
				end
			end
		end
		2'd3: begin
			if (uartbridge_source_valid) begin
				uartbridge_rx_data_ce <= 1'd1;
				uartbridge_byte_counter_ce <= 1'd1;
				if ((uartbridge_byte_counter == 2'd3)) begin
					uartwishbonebridge_next_state <= 3'd4;
					uartbridge_byte_counter_reset <= 1'd1;
				end
			end
		end
		3'd4: begin
			uartbridge_wishbone_stb <= 1'd1;
			uartbridge_wishbone_we <= 1'd1;
			uartbridge_wishbone_cyc <= 1'd1;
			if (uartbridge_wishbone_ack) begin
				uartbridge_word_counter_ce <= 1'd1;
				if ((uartbridge_word_counter == (uartbridge_length - 1'd1))) begin
					uartwishbonebridge_next_state <= 1'd0;
				end else begin
					uartwishbonebridge_next_state <= 2'd3;
				end
			end
		end
		3'd5: begin
			uartbridge_wishbone_stb <= 1'd1;
			uartbridge_wishbone_we <= 1'd0;
			uartbridge_wishbone_cyc <= 1'd1;
			if (uartbridge_wishbone_ack) begin
				uartbridge_tx_data_ce <= 1'd1;
				uartwishbonebridge_next_state <= 3'd6;
			end
		end
		3'd6: begin
			uartbridge_sink_valid <= 1'd1;
			if (uartbridge_sink_ready) begin
				uartbridge_byte_counter_ce <= 1'd1;
				if ((uartbridge_byte_counter == 2'd3)) begin
					uartbridge_word_counter_ce <= 1'd1;
					if ((uartbridge_word_counter == (uartbridge_length - 1'd1))) begin
						uartwishbonebridge_next_state <= 1'd0;
					end else begin
						uartwishbonebridge_next_state <= 3'd5;
						uartbridge_byte_counter_reset <= 1'd1;
					end
				end
			end
		end
		default: begin
			if (uartbridge_source_valid) begin
				uartbridge_cmd_ce <= 1'd1;
				if (((uartbridge_source_payload_data == 1'd1) | (uartbridge_source_payload_data == 2'd2))) begin
					uartwishbonebridge_next_state <= 1'd1;
				end
				uartbridge_byte_counter_reset <= 1'd1;
				uartbridge_word_counter_reset <= 1'd1;
			end
			uartbridge_is_ongoing <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_66 <= dummy_s;
// synthesis translate_on
end
assign uartbridge_done = (uartbridge_count == 1'd0);
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
reg dummy_d_67;
// synthesis translate_on
always @(*) begin
	frontend_trigger_source_payload_hit <= 1'd0;
	frontend_trigger_source_payload_hit <= frontend_trigger_sink_payload_hit;
	frontend_trigger_source_payload_hit <= ((frontend_trigger_sink_payload_data & frontend_trigger_mask) == frontend_trigger_value);
// synthesis translate_off
	dummy_d_67 <= dummy_s;
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
reg dummy_d_68;
// synthesis translate_on
always @(*) begin
	frontend_asyncfifo_graycounter0_q_next_binary <= 4'd0;
	if (frontend_asyncfifo_graycounter0_ce) begin
		frontend_asyncfifo_graycounter0_q_next_binary <= (frontend_asyncfifo_graycounter0_q_binary + 1'd1);
	end else begin
		frontend_asyncfifo_graycounter0_q_next_binary <= frontend_asyncfifo_graycounter0_q_binary;
	end
// synthesis translate_off
	dummy_d_68 <= dummy_s;
// synthesis translate_on
end
assign frontend_asyncfifo_graycounter0_q_next = (frontend_asyncfifo_graycounter0_q_next_binary ^ frontend_asyncfifo_graycounter0_q_next_binary[3:1]);

// synthesis translate_off
reg dummy_d_69;
// synthesis translate_on
always @(*) begin
	frontend_asyncfifo_graycounter1_q_next_binary <= 4'd0;
	if (frontend_asyncfifo_graycounter1_ce) begin
		frontend_asyncfifo_graycounter1_q_next_binary <= (frontend_asyncfifo_graycounter1_q_binary + 1'd1);
	end else begin
		frontend_asyncfifo_graycounter1_q_next_binary <= frontend_asyncfifo_graycounter1_q_binary;
	end
// synthesis translate_off
	dummy_d_69 <= dummy_s;
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
reg dummy_d_70;
// synthesis translate_on
always @(*) begin
	storage_mem_wrport_adr <= 6'd0;
	if (storage_mem_replace) begin
		storage_mem_wrport_adr <= (storage_mem_produce - 1'd1);
	end else begin
		storage_mem_wrport_adr <= storage_mem_produce;
	end
// synthesis translate_off
	dummy_d_70 <= dummy_s;
// synthesis translate_on
end
assign storage_mem_wrport_dat_w = storage_mem_syncfifo_din;
assign storage_mem_wrport_we = (storage_mem_syncfifo_we & (storage_mem_syncfifo_writable | storage_mem_replace));
assign storage_mem_do_read = (storage_mem_syncfifo_readable & storage_mem_syncfifo_re);
assign storage_mem_rdport_adr = storage_mem_consume;
assign storage_mem_syncfifo_dout = storage_mem_rdport_dat_r;
assign storage_mem_rdport_re = storage_mem_do_read;
assign storage_mem_syncfifo_writable = (storage_mem_level0 != 7'd64);
assign storage_mem_syncfifo_readable = (storage_mem_level0 != 1'd0);

// synthesis translate_off
reg dummy_d_71;
// synthesis translate_on
always @(*) begin
	storage_mem_source_ready <= 1'd0;
	litescopeanalyzer_next_state <= 2'd0;
	storage_sink_sink_ready <= 1'd0;
	storage_idle_status <= 1'd0;
	storage_wait_status <= 1'd0;
	storage_run_status <= 1'd0;
	storage_mem_sink_valid <= 1'd0;
	storage_mem_sink_last <= 1'd0;
	storage_mem_sink_payload_data <= 89'd0;
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
	dummy_d_71 <= dummy_s;
// synthesis translate_on
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
assign memtestsoc_shared_adr = rhs_array_muxed32;
assign memtestsoc_shared_dat_w = rhs_array_muxed33;
assign memtestsoc_shared_sel = rhs_array_muxed34;
assign memtestsoc_shared_cyc = rhs_array_muxed35;
assign memtestsoc_shared_stb = rhs_array_muxed36;
assign memtestsoc_shared_we = rhs_array_muxed37;
assign memtestsoc_shared_cti = rhs_array_muxed38;
assign memtestsoc_shared_bte = rhs_array_muxed39;
assign memtestsoc_ibus_dat_r = memtestsoc_shared_dat_r;
assign memtestsoc_dbus_dat_r = memtestsoc_shared_dat_r;
assign uartbridge_wishbone_dat_r = memtestsoc_shared_dat_r;
assign memtestsoc_ibus_ack = (memtestsoc_shared_ack & (memtestsoc_grant == 1'd0));
assign memtestsoc_dbus_ack = (memtestsoc_shared_ack & (memtestsoc_grant == 1'd1));
assign uartbridge_wishbone_ack = (memtestsoc_shared_ack & (memtestsoc_grant == 2'd2));
assign memtestsoc_ibus_err = (memtestsoc_shared_err & (memtestsoc_grant == 1'd0));
assign memtestsoc_dbus_err = (memtestsoc_shared_err & (memtestsoc_grant == 1'd1));
assign uartbridge_wishbone_err = (memtestsoc_shared_err & (memtestsoc_grant == 2'd2));
assign memtestsoc_request = {uartbridge_wishbone_cyc, memtestsoc_dbus_cyc, memtestsoc_ibus_cyc};

// synthesis translate_off
reg dummy_d_72;
// synthesis translate_on
always @(*) begin
	memtestsoc_slave_sel <= 4'd0;
	memtestsoc_slave_sel[0] <= (memtestsoc_shared_adr[28:26] == 1'd1);
	memtestsoc_slave_sel[1] <= (memtestsoc_shared_adr[28:26] == 3'd6);
	memtestsoc_slave_sel[2] <= (memtestsoc_shared_adr[28:26] == 2'd2);
	memtestsoc_slave_sel[3] <= (memtestsoc_shared_adr[28:26] == 3'd4);
// synthesis translate_off
	dummy_d_72 <= dummy_s;
// synthesis translate_on
end
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
assign bus_adr = memtestsoc_shared_adr;
assign bus_dat_w = memtestsoc_shared_dat_w;
assign bus_sel = memtestsoc_shared_sel;
assign bus_stb = memtestsoc_shared_stb;
assign bus_we = memtestsoc_shared_we;
assign bus_cti = memtestsoc_shared_cti;
assign bus_bte = memtestsoc_shared_bte;
assign interface1_wb_sdram_adr = memtestsoc_shared_adr;
assign interface1_wb_sdram_dat_w = memtestsoc_shared_dat_w;
assign interface1_wb_sdram_sel = memtestsoc_shared_sel;
assign interface1_wb_sdram_stb = memtestsoc_shared_stb;
assign interface1_wb_sdram_we = memtestsoc_shared_we;
assign interface1_wb_sdram_cti = memtestsoc_shared_cti;
assign interface1_wb_sdram_bte = memtestsoc_shared_bte;
assign memtestsoc_sram_bus_cyc = (memtestsoc_shared_cyc & memtestsoc_slave_sel[0]);
assign memtestsoc_bus_wishbone_cyc = (memtestsoc_shared_cyc & memtestsoc_slave_sel[1]);
assign bus_cyc = (memtestsoc_shared_cyc & memtestsoc_slave_sel[2]);
assign interface1_wb_sdram_cyc = (memtestsoc_shared_cyc & memtestsoc_slave_sel[3]);
assign memtestsoc_shared_ack = (((memtestsoc_sram_bus_ack | memtestsoc_bus_wishbone_ack) | bus_ack) | interface1_wb_sdram_ack);
assign memtestsoc_shared_err = (((memtestsoc_sram_bus_err | memtestsoc_bus_wishbone_err) | bus_err) | interface1_wb_sdram_err);
assign memtestsoc_shared_dat_r = (((({32{memtestsoc_slave_sel_r[0]}} & memtestsoc_sram_bus_dat_r) | ({32{memtestsoc_slave_sel_r[1]}} & memtestsoc_bus_wishbone_dat_r)) | ({32{memtestsoc_slave_sel_r[2]}} & bus_dat_r)) | ({32{memtestsoc_slave_sel_r[3]}} & interface1_wb_sdram_dat_r));
assign memtestsoc_csrbank0_sel = (memtestsoc_interface0_adr[13:9] == 5'd17);
assign memtestsoc_csrbank0_frontend_trigger_value11_r = memtestsoc_interface0_dat_w[0];
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
assign memtestsoc_csrbank0_frontend_trigger_mask11_r = memtestsoc_interface0_dat_w[0];
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
assign memtestsoc_csrbank0_storage_length0_r = memtestsoc_interface0_dat_w[6:0];
assign memtestsoc_csrbank0_storage_length0_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 5'd27));
assign memtestsoc_csrbank0_storage_offset0_r = memtestsoc_interface0_dat_w[6:0];
assign memtestsoc_csrbank0_storage_offset0_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 5'd28));
assign memtestsoc_csrbank0_storage_idle_r = memtestsoc_interface0_dat_w[0];
assign memtestsoc_csrbank0_storage_idle_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 5'd29));
assign memtestsoc_csrbank0_storage_wait_r = memtestsoc_interface0_dat_w[0];
assign memtestsoc_csrbank0_storage_wait_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 5'd30));
assign memtestsoc_csrbank0_storage_run_r = memtestsoc_interface0_dat_w[0];
assign memtestsoc_csrbank0_storage_run_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 5'd31));
assign memtestsoc_csrbank0_storage_mem_valid_r = memtestsoc_interface0_dat_w[0];
assign memtestsoc_csrbank0_storage_mem_valid_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd32));
assign storage_mem_ready_r = memtestsoc_interface0_dat_w[0];
assign storage_mem_ready_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd33));
assign memtestsoc_csrbank0_storage_mem_data11_r = memtestsoc_interface0_dat_w[0];
assign memtestsoc_csrbank0_storage_mem_data11_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd34));
assign memtestsoc_csrbank0_storage_mem_data10_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_storage_mem_data10_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd35));
assign memtestsoc_csrbank0_storage_mem_data9_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_storage_mem_data9_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd36));
assign memtestsoc_csrbank0_storage_mem_data8_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_storage_mem_data8_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd37));
assign memtestsoc_csrbank0_storage_mem_data7_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_storage_mem_data7_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd38));
assign memtestsoc_csrbank0_storage_mem_data6_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_storage_mem_data6_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd39));
assign memtestsoc_csrbank0_storage_mem_data5_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_storage_mem_data5_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd40));
assign memtestsoc_csrbank0_storage_mem_data4_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_storage_mem_data4_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd41));
assign memtestsoc_csrbank0_storage_mem_data3_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_storage_mem_data3_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd42));
assign memtestsoc_csrbank0_storage_mem_data2_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_storage_mem_data2_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd43));
assign memtestsoc_csrbank0_storage_mem_data1_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_storage_mem_data1_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd44));
assign memtestsoc_csrbank0_storage_mem_data0_r = memtestsoc_interface0_dat_w[7:0];
assign memtestsoc_csrbank0_storage_mem_data0_re = ((memtestsoc_csrbank0_sel & memtestsoc_interface0_we) & (memtestsoc_interface0_adr[5:0] == 6'd45));
assign frontend_trigger_value_storage = frontend_trigger_value_storage_full[88:0];
assign memtestsoc_csrbank0_frontend_trigger_value11_w = frontend_trigger_value_storage_full[88];
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
assign frontend_trigger_mask_storage = frontend_trigger_mask_storage_full[88:0];
assign memtestsoc_csrbank0_frontend_trigger_mask11_w = frontend_trigger_mask_storage_full[88];
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
assign storage_length_storage = storage_length_storage_full[6:0];
assign memtestsoc_csrbank0_storage_length0_w = storage_length_storage_full[6:0];
assign storage_offset_storage = storage_offset_storage_full[6:0];
assign memtestsoc_csrbank0_storage_offset0_w = storage_offset_storage_full[6:0];
assign memtestsoc_csrbank0_storage_idle_w = storage_idle_status;
assign memtestsoc_csrbank0_storage_wait_w = storage_wait_status;
assign memtestsoc_csrbank0_storage_run_w = storage_run_status;
assign memtestsoc_csrbank0_storage_mem_valid_w = storage_mem_valid_status;
assign memtestsoc_csrbank0_storage_mem_data11_w = storage_mem_data_status[88];
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
assign memtestsoc_csrbank1_sel = (memtestsoc_interface1_adr[13:9] == 4'd13);
assign memtestsoc_csrbank1_leds_out0_r = memtestsoc_interface1_dat_w[7:0];
assign memtestsoc_csrbank1_leds_out0_re = ((memtestsoc_csrbank1_sel & memtestsoc_interface1_we) & (memtestsoc_interface1_adr[2:0] == 1'd0));
assign memtestsoc_csrbank1_switches_in_r = memtestsoc_interface1_dat_w[7:0];
assign memtestsoc_csrbank1_switches_in_re = ((memtestsoc_csrbank1_sel & memtestsoc_interface1_we) & (memtestsoc_interface1_adr[2:0] == 1'd1));
assign eventmanager_status_r = memtestsoc_interface1_dat_w[4:0];
assign eventmanager_status_re = ((memtestsoc_csrbank1_sel & memtestsoc_interface1_we) & (memtestsoc_interface1_adr[2:0] == 2'd2));
assign eventmanager_pending_r = memtestsoc_interface1_dat_w[4:0];
assign eventmanager_pending_re = ((memtestsoc_csrbank1_sel & memtestsoc_interface1_we) & (memtestsoc_interface1_adr[2:0] == 2'd3));
assign memtestsoc_csrbank1_buttons_ev_enable0_r = memtestsoc_interface1_dat_w[4:0];
assign memtestsoc_csrbank1_buttons_ev_enable0_re = ((memtestsoc_csrbank1_sel & memtestsoc_interface1_we) & (memtestsoc_interface1_adr[2:0] == 3'd4));
assign leds_storage = leds_storage_full[7:0];
assign memtestsoc_csrbank1_leds_out0_w = leds_storage_full[7:0];
assign memtestsoc_csrbank1_switches_in_w = switches_status[7:0];
assign eventmanager_storage = eventmanager_storage_full[4:0];
assign memtestsoc_csrbank1_buttons_ev_enable0_w = eventmanager_storage_full[4:0];
assign memtestsoc_csrbank2_sel = (memtestsoc_interface2_adr[13:9] == 4'd15);
assign checker_reset_r = memtestsoc_interface2_dat_w[0];
assign checker_reset_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[3:0] == 1'd0));
assign checker_start_r = memtestsoc_interface2_dat_w[0];
assign checker_start_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[3:0] == 1'd1));
assign memtestsoc_csrbank2_base2_r = memtestsoc_interface2_dat_w[7:0];
assign memtestsoc_csrbank2_base2_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[3:0] == 2'd2));
assign memtestsoc_csrbank2_base1_r = memtestsoc_interface2_dat_w[7:0];
assign memtestsoc_csrbank2_base1_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[3:0] == 2'd3));
assign memtestsoc_csrbank2_base0_r = memtestsoc_interface2_dat_w[7:0];
assign memtestsoc_csrbank2_base0_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[3:0] == 3'd4));
assign memtestsoc_csrbank2_length2_r = memtestsoc_interface2_dat_w[7:0];
assign memtestsoc_csrbank2_length2_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[3:0] == 3'd5));
assign memtestsoc_csrbank2_length1_r = memtestsoc_interface2_dat_w[7:0];
assign memtestsoc_csrbank2_length1_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[3:0] == 3'd6));
assign memtestsoc_csrbank2_length0_r = memtestsoc_interface2_dat_w[7:0];
assign memtestsoc_csrbank2_length0_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[3:0] == 3'd7));
assign memtestsoc_csrbank2_done_r = memtestsoc_interface2_dat_w[0];
assign memtestsoc_csrbank2_done_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[3:0] == 4'd8));
assign memtestsoc_csrbank2_err_count3_r = memtestsoc_interface2_dat_w[7:0];
assign memtestsoc_csrbank2_err_count3_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[3:0] == 4'd9));
assign memtestsoc_csrbank2_err_count2_r = memtestsoc_interface2_dat_w[7:0];
assign memtestsoc_csrbank2_err_count2_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[3:0] == 4'd10));
assign memtestsoc_csrbank2_err_count1_r = memtestsoc_interface2_dat_w[7:0];
assign memtestsoc_csrbank2_err_count1_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[3:0] == 4'd11));
assign memtestsoc_csrbank2_err_count0_r = memtestsoc_interface2_dat_w[7:0];
assign memtestsoc_csrbank2_err_count0_re = ((memtestsoc_csrbank2_sel & memtestsoc_interface2_we) & (memtestsoc_interface2_adr[3:0] == 4'd12));
assign checker_base_storage = checker_base_storage_full[23:0];
assign memtestsoc_csrbank2_base2_w = checker_base_storage_full[23:16];
assign memtestsoc_csrbank2_base1_w = checker_base_storage_full[15:8];
assign memtestsoc_csrbank2_base0_w = checker_base_storage_full[7:0];
assign checker_length_storage = checker_length_storage_full[23:0];
assign memtestsoc_csrbank2_length2_w = checker_length_storage_full[23:16];
assign memtestsoc_csrbank2_length1_w = checker_length_storage_full[15:8];
assign memtestsoc_csrbank2_length0_w = checker_length_storage_full[7:0];
assign memtestsoc_csrbank2_done_w = checker_done_status;
assign memtestsoc_csrbank2_err_count3_w = checker_err_count_status[31:24];
assign memtestsoc_csrbank2_err_count2_w = checker_err_count_status[23:16];
assign memtestsoc_csrbank2_err_count1_w = checker_err_count_status[15:8];
assign memtestsoc_csrbank2_err_count0_w = checker_err_count_status[7:0];
assign memtestsoc_csrbank3_sel = (memtestsoc_interface3_adr[13:9] == 4'd14);
assign generator_reset_r = memtestsoc_interface3_dat_w[0];
assign generator_reset_re = ((memtestsoc_csrbank3_sel & memtestsoc_interface3_we) & (memtestsoc_interface3_adr[3:0] == 1'd0));
assign generator_start_r = memtestsoc_interface3_dat_w[0];
assign generator_start_re = ((memtestsoc_csrbank3_sel & memtestsoc_interface3_we) & (memtestsoc_interface3_adr[3:0] == 1'd1));
assign memtestsoc_csrbank3_done_r = memtestsoc_interface3_dat_w[0];
assign memtestsoc_csrbank3_done_re = ((memtestsoc_csrbank3_sel & memtestsoc_interface3_we) & (memtestsoc_interface3_adr[3:0] == 2'd2));
assign memtestsoc_csrbank3_base2_r = memtestsoc_interface3_dat_w[7:0];
assign memtestsoc_csrbank3_base2_re = ((memtestsoc_csrbank3_sel & memtestsoc_interface3_we) & (memtestsoc_interface3_adr[3:0] == 2'd3));
assign memtestsoc_csrbank3_base1_r = memtestsoc_interface3_dat_w[7:0];
assign memtestsoc_csrbank3_base1_re = ((memtestsoc_csrbank3_sel & memtestsoc_interface3_we) & (memtestsoc_interface3_adr[3:0] == 3'd4));
assign memtestsoc_csrbank3_base0_r = memtestsoc_interface3_dat_w[7:0];
assign memtestsoc_csrbank3_base0_re = ((memtestsoc_csrbank3_sel & memtestsoc_interface3_we) & (memtestsoc_interface3_adr[3:0] == 3'd5));
assign memtestsoc_csrbank3_length2_r = memtestsoc_interface3_dat_w[7:0];
assign memtestsoc_csrbank3_length2_re = ((memtestsoc_csrbank3_sel & memtestsoc_interface3_we) & (memtestsoc_interface3_adr[3:0] == 3'd6));
assign memtestsoc_csrbank3_length1_r = memtestsoc_interface3_dat_w[7:0];
assign memtestsoc_csrbank3_length1_re = ((memtestsoc_csrbank3_sel & memtestsoc_interface3_we) & (memtestsoc_interface3_adr[3:0] == 3'd7));
assign memtestsoc_csrbank3_length0_r = memtestsoc_interface3_dat_w[7:0];
assign memtestsoc_csrbank3_length0_re = ((memtestsoc_csrbank3_sel & memtestsoc_interface3_we) & (memtestsoc_interface3_adr[3:0] == 4'd8));
assign memtestsoc_csrbank3_done_w = generator_status;
assign generator_base_storage = generator_base_storage_full[23:0];
assign memtestsoc_csrbank3_base2_w = generator_base_storage_full[23:16];
assign memtestsoc_csrbank3_base1_w = generator_base_storage_full[15:8];
assign memtestsoc_csrbank3_base0_w = generator_base_storage_full[7:0];
assign generator_length_storage = generator_length_storage_full[23:0];
assign memtestsoc_csrbank3_length2_w = generator_length_storage_full[23:16];
assign memtestsoc_csrbank3_length1_w = generator_length_storage_full[15:8];
assign memtestsoc_csrbank3_length0_w = generator_length_storage_full[7:0];
assign memtestsoc_csrbank4_sel = (memtestsoc_interface4_adr[13:9] == 4'd12);
assign memtestsoc_csrbank4_dna_id7_r = memtestsoc_interface4_dat_w[0];
assign memtestsoc_csrbank4_dna_id7_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 1'd0));
assign memtestsoc_csrbank4_dna_id6_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_dna_id6_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 1'd1));
assign memtestsoc_csrbank4_dna_id5_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_dna_id5_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 2'd2));
assign memtestsoc_csrbank4_dna_id4_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_dna_id4_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 2'd3));
assign memtestsoc_csrbank4_dna_id3_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_dna_id3_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 3'd4));
assign memtestsoc_csrbank4_dna_id2_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_dna_id2_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 3'd5));
assign memtestsoc_csrbank4_dna_id1_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_dna_id1_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 3'd6));
assign memtestsoc_csrbank4_dna_id0_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_dna_id0_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 3'd7));
assign memtestsoc_csrbank4_git_commit19_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_git_commit19_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 4'd8));
assign memtestsoc_csrbank4_git_commit18_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_git_commit18_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 4'd9));
assign memtestsoc_csrbank4_git_commit17_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_git_commit17_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 4'd10));
assign memtestsoc_csrbank4_git_commit16_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_git_commit16_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 4'd11));
assign memtestsoc_csrbank4_git_commit15_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_git_commit15_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 4'd12));
assign memtestsoc_csrbank4_git_commit14_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_git_commit14_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 4'd13));
assign memtestsoc_csrbank4_git_commit13_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_git_commit13_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 4'd14));
assign memtestsoc_csrbank4_git_commit12_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_git_commit12_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 4'd15));
assign memtestsoc_csrbank4_git_commit11_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_git_commit11_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 5'd16));
assign memtestsoc_csrbank4_git_commit10_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_git_commit10_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 5'd17));
assign memtestsoc_csrbank4_git_commit9_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_git_commit9_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 5'd18));
assign memtestsoc_csrbank4_git_commit8_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_git_commit8_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 5'd19));
assign memtestsoc_csrbank4_git_commit7_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_git_commit7_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 5'd20));
assign memtestsoc_csrbank4_git_commit6_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_git_commit6_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 5'd21));
assign memtestsoc_csrbank4_git_commit5_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_git_commit5_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 5'd22));
assign memtestsoc_csrbank4_git_commit4_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_git_commit4_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 5'd23));
assign memtestsoc_csrbank4_git_commit3_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_git_commit3_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 5'd24));
assign memtestsoc_csrbank4_git_commit2_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_git_commit2_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 5'd25));
assign memtestsoc_csrbank4_git_commit1_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_git_commit1_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 5'd26));
assign memtestsoc_csrbank4_git_commit0_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_git_commit0_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 5'd27));
assign memtestsoc_csrbank4_platform_platform7_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_platform_platform7_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 5'd28));
assign memtestsoc_csrbank4_platform_platform6_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_platform_platform6_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 5'd29));
assign memtestsoc_csrbank4_platform_platform5_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_platform_platform5_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 5'd30));
assign memtestsoc_csrbank4_platform_platform4_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_platform_platform4_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 5'd31));
assign memtestsoc_csrbank4_platform_platform3_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_platform_platform3_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 6'd32));
assign memtestsoc_csrbank4_platform_platform2_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_platform_platform2_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 6'd33));
assign memtestsoc_csrbank4_platform_platform1_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_platform_platform1_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 6'd34));
assign memtestsoc_csrbank4_platform_platform0_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_platform_platform0_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 6'd35));
assign memtestsoc_csrbank4_platform_target7_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_platform_target7_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 6'd36));
assign memtestsoc_csrbank4_platform_target6_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_platform_target6_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 6'd37));
assign memtestsoc_csrbank4_platform_target5_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_platform_target5_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 6'd38));
assign memtestsoc_csrbank4_platform_target4_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_platform_target4_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 6'd39));
assign memtestsoc_csrbank4_platform_target3_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_platform_target3_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 6'd40));
assign memtestsoc_csrbank4_platform_target2_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_platform_target2_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 6'd41));
assign memtestsoc_csrbank4_platform_target1_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_platform_target1_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 6'd42));
assign memtestsoc_csrbank4_platform_target0_r = memtestsoc_interface4_dat_w[7:0];
assign memtestsoc_csrbank4_platform_target0_re = ((memtestsoc_csrbank4_sel & memtestsoc_interface4_we) & (memtestsoc_interface4_adr[5:0] == 6'd43));
assign memtestsoc_csrbank4_dna_id7_w = dna_status[56];
assign memtestsoc_csrbank4_dna_id6_w = dna_status[55:48];
assign memtestsoc_csrbank4_dna_id5_w = dna_status[47:40];
assign memtestsoc_csrbank4_dna_id4_w = dna_status[39:32];
assign memtestsoc_csrbank4_dna_id3_w = dna_status[31:24];
assign memtestsoc_csrbank4_dna_id2_w = dna_status[23:16];
assign memtestsoc_csrbank4_dna_id1_w = dna_status[15:8];
assign memtestsoc_csrbank4_dna_id0_w = dna_status[7:0];
assign memtestsoc_csrbank4_git_commit19_w = git_status[159:152];
assign memtestsoc_csrbank4_git_commit18_w = git_status[151:144];
assign memtestsoc_csrbank4_git_commit17_w = git_status[143:136];
assign memtestsoc_csrbank4_git_commit16_w = git_status[135:128];
assign memtestsoc_csrbank4_git_commit15_w = git_status[127:120];
assign memtestsoc_csrbank4_git_commit14_w = git_status[119:112];
assign memtestsoc_csrbank4_git_commit13_w = git_status[111:104];
assign memtestsoc_csrbank4_git_commit12_w = git_status[103:96];
assign memtestsoc_csrbank4_git_commit11_w = git_status[95:88];
assign memtestsoc_csrbank4_git_commit10_w = git_status[87:80];
assign memtestsoc_csrbank4_git_commit9_w = git_status[79:72];
assign memtestsoc_csrbank4_git_commit8_w = git_status[71:64];
assign memtestsoc_csrbank4_git_commit7_w = git_status[63:56];
assign memtestsoc_csrbank4_git_commit6_w = git_status[55:48];
assign memtestsoc_csrbank4_git_commit5_w = git_status[47:40];
assign memtestsoc_csrbank4_git_commit4_w = git_status[39:32];
assign memtestsoc_csrbank4_git_commit3_w = git_status[31:24];
assign memtestsoc_csrbank4_git_commit2_w = git_status[23:16];
assign memtestsoc_csrbank4_git_commit1_w = git_status[15:8];
assign memtestsoc_csrbank4_git_commit0_w = git_status[7:0];
assign memtestsoc_csrbank4_platform_platform7_w = platform_status[63:56];
assign memtestsoc_csrbank4_platform_platform6_w = platform_status[55:48];
assign memtestsoc_csrbank4_platform_platform5_w = platform_status[47:40];
assign memtestsoc_csrbank4_platform_platform4_w = platform_status[39:32];
assign memtestsoc_csrbank4_platform_platform3_w = platform_status[31:24];
assign memtestsoc_csrbank4_platform_platform2_w = platform_status[23:16];
assign memtestsoc_csrbank4_platform_platform1_w = platform_status[15:8];
assign memtestsoc_csrbank4_platform_platform0_w = platform_status[7:0];
assign memtestsoc_csrbank4_platform_target7_w = target_status[63:56];
assign memtestsoc_csrbank4_platform_target6_w = target_status[55:48];
assign memtestsoc_csrbank4_platform_target5_w = target_status[47:40];
assign memtestsoc_csrbank4_platform_target4_w = target_status[39:32];
assign memtestsoc_csrbank4_platform_target3_w = target_status[31:24];
assign memtestsoc_csrbank4_platform_target2_w = target_status[23:16];
assign memtestsoc_csrbank4_platform_target1_w = target_status[15:8];
assign memtestsoc_csrbank4_platform_target0_w = target_status[7:0];
assign memtestsoc_csrbank5_sel = (memtestsoc_interface5_adr[13:9] == 4'd8);
assign memtestsoc_csrbank5_dfii_control0_r = memtestsoc_interface5_dat_w[3:0];
assign memtestsoc_csrbank5_dfii_control0_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 1'd0));
assign memtestsoc_csrbank5_dfii_pi0_command0_r = memtestsoc_interface5_dat_w[5:0];
assign memtestsoc_csrbank5_dfii_pi0_command0_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 1'd1));
assign controllerinjector_phaseinjector0_command_issue_r = memtestsoc_interface5_dat_w[0];
assign controllerinjector_phaseinjector0_command_issue_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 2'd2));
assign memtestsoc_csrbank5_dfii_pi0_address1_r = memtestsoc_interface5_dat_w[4:0];
assign memtestsoc_csrbank5_dfii_pi0_address1_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 2'd3));
assign memtestsoc_csrbank5_dfii_pi0_address0_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_dfii_pi0_address0_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 3'd4));
assign memtestsoc_csrbank5_dfii_pi0_baddress0_r = memtestsoc_interface5_dat_w[1:0];
assign memtestsoc_csrbank5_dfii_pi0_baddress0_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 3'd5));
assign memtestsoc_csrbank5_dfii_pi0_wrdata3_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_dfii_pi0_wrdata3_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 3'd6));
assign memtestsoc_csrbank5_dfii_pi0_wrdata2_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_dfii_pi0_wrdata2_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 3'd7));
assign memtestsoc_csrbank5_dfii_pi0_wrdata1_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_dfii_pi0_wrdata1_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 4'd8));
assign memtestsoc_csrbank5_dfii_pi0_wrdata0_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_dfii_pi0_wrdata0_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 4'd9));
assign memtestsoc_csrbank5_dfii_pi0_rddata3_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_dfii_pi0_rddata3_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 4'd10));
assign memtestsoc_csrbank5_dfii_pi0_rddata2_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_dfii_pi0_rddata2_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 4'd11));
assign memtestsoc_csrbank5_dfii_pi0_rddata1_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_dfii_pi0_rddata1_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 4'd12));
assign memtestsoc_csrbank5_dfii_pi0_rddata0_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_dfii_pi0_rddata0_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 4'd13));
assign memtestsoc_csrbank5_dfii_pi1_command0_r = memtestsoc_interface5_dat_w[5:0];
assign memtestsoc_csrbank5_dfii_pi1_command0_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 4'd14));
assign controllerinjector_phaseinjector1_command_issue_r = memtestsoc_interface5_dat_w[0];
assign controllerinjector_phaseinjector1_command_issue_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 4'd15));
assign memtestsoc_csrbank5_dfii_pi1_address1_r = memtestsoc_interface5_dat_w[4:0];
assign memtestsoc_csrbank5_dfii_pi1_address1_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 5'd16));
assign memtestsoc_csrbank5_dfii_pi1_address0_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_dfii_pi1_address0_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 5'd17));
assign memtestsoc_csrbank5_dfii_pi1_baddress0_r = memtestsoc_interface5_dat_w[1:0];
assign memtestsoc_csrbank5_dfii_pi1_baddress0_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 5'd18));
assign memtestsoc_csrbank5_dfii_pi1_wrdata3_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_dfii_pi1_wrdata3_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 5'd19));
assign memtestsoc_csrbank5_dfii_pi1_wrdata2_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_dfii_pi1_wrdata2_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 5'd20));
assign memtestsoc_csrbank5_dfii_pi1_wrdata1_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_dfii_pi1_wrdata1_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 5'd21));
assign memtestsoc_csrbank5_dfii_pi1_wrdata0_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_dfii_pi1_wrdata0_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 5'd22));
assign memtestsoc_csrbank5_dfii_pi1_rddata3_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_dfii_pi1_rddata3_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 5'd23));
assign memtestsoc_csrbank5_dfii_pi1_rddata2_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_dfii_pi1_rddata2_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 5'd24));
assign memtestsoc_csrbank5_dfii_pi1_rddata1_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_dfii_pi1_rddata1_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 5'd25));
assign memtestsoc_csrbank5_dfii_pi1_rddata0_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_dfii_pi1_rddata0_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 5'd26));
assign controllerinjector_bandwidth_update_r = memtestsoc_interface5_dat_w[0];
assign controllerinjector_bandwidth_update_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 5'd27));
assign memtestsoc_csrbank5_controller_bandwidth_nreads2_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_controller_bandwidth_nreads2_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 5'd28));
assign memtestsoc_csrbank5_controller_bandwidth_nreads1_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_controller_bandwidth_nreads1_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 5'd29));
assign memtestsoc_csrbank5_controller_bandwidth_nreads0_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_controller_bandwidth_nreads0_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 5'd30));
assign memtestsoc_csrbank5_controller_bandwidth_nwrites2_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_controller_bandwidth_nwrites2_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 5'd31));
assign memtestsoc_csrbank5_controller_bandwidth_nwrites1_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_controller_bandwidth_nwrites1_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 6'd32));
assign memtestsoc_csrbank5_controller_bandwidth_nwrites0_r = memtestsoc_interface5_dat_w[7:0];
assign memtestsoc_csrbank5_controller_bandwidth_nwrites0_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 6'd33));
assign memtestsoc_csrbank5_controller_bandwidth_data_width_r = memtestsoc_interface5_dat_w[6:0];
assign memtestsoc_csrbank5_controller_bandwidth_data_width_re = ((memtestsoc_csrbank5_sel & memtestsoc_interface5_we) & (memtestsoc_interface5_adr[5:0] == 6'd34));
assign controllerinjector_storage = controllerinjector_storage_full[3:0];
assign memtestsoc_csrbank5_dfii_control0_w = controllerinjector_storage_full[3:0];
assign controllerinjector_phaseinjector0_command_storage = controllerinjector_phaseinjector0_command_storage_full[5:0];
assign memtestsoc_csrbank5_dfii_pi0_command0_w = controllerinjector_phaseinjector0_command_storage_full[5:0];
assign controllerinjector_phaseinjector0_address_storage = controllerinjector_phaseinjector0_address_storage_full[12:0];
assign memtestsoc_csrbank5_dfii_pi0_address1_w = controllerinjector_phaseinjector0_address_storage_full[12:8];
assign memtestsoc_csrbank5_dfii_pi0_address0_w = controllerinjector_phaseinjector0_address_storage_full[7:0];
assign controllerinjector_phaseinjector0_baddress_storage = controllerinjector_phaseinjector0_baddress_storage_full[1:0];
assign memtestsoc_csrbank5_dfii_pi0_baddress0_w = controllerinjector_phaseinjector0_baddress_storage_full[1:0];
assign controllerinjector_phaseinjector0_wrdata_storage = controllerinjector_phaseinjector0_wrdata_storage_full[31:0];
assign memtestsoc_csrbank5_dfii_pi0_wrdata3_w = controllerinjector_phaseinjector0_wrdata_storage_full[31:24];
assign memtestsoc_csrbank5_dfii_pi0_wrdata2_w = controllerinjector_phaseinjector0_wrdata_storage_full[23:16];
assign memtestsoc_csrbank5_dfii_pi0_wrdata1_w = controllerinjector_phaseinjector0_wrdata_storage_full[15:8];
assign memtestsoc_csrbank5_dfii_pi0_wrdata0_w = controllerinjector_phaseinjector0_wrdata_storage_full[7:0];
assign memtestsoc_csrbank5_dfii_pi0_rddata3_w = controllerinjector_phaseinjector0_status[31:24];
assign memtestsoc_csrbank5_dfii_pi0_rddata2_w = controllerinjector_phaseinjector0_status[23:16];
assign memtestsoc_csrbank5_dfii_pi0_rddata1_w = controllerinjector_phaseinjector0_status[15:8];
assign memtestsoc_csrbank5_dfii_pi0_rddata0_w = controllerinjector_phaseinjector0_status[7:0];
assign controllerinjector_phaseinjector1_command_storage = controllerinjector_phaseinjector1_command_storage_full[5:0];
assign memtestsoc_csrbank5_dfii_pi1_command0_w = controllerinjector_phaseinjector1_command_storage_full[5:0];
assign controllerinjector_phaseinjector1_address_storage = controllerinjector_phaseinjector1_address_storage_full[12:0];
assign memtestsoc_csrbank5_dfii_pi1_address1_w = controllerinjector_phaseinjector1_address_storage_full[12:8];
assign memtestsoc_csrbank5_dfii_pi1_address0_w = controllerinjector_phaseinjector1_address_storage_full[7:0];
assign controllerinjector_phaseinjector1_baddress_storage = controllerinjector_phaseinjector1_baddress_storage_full[1:0];
assign memtestsoc_csrbank5_dfii_pi1_baddress0_w = controllerinjector_phaseinjector1_baddress_storage_full[1:0];
assign controllerinjector_phaseinjector1_wrdata_storage = controllerinjector_phaseinjector1_wrdata_storage_full[31:0];
assign memtestsoc_csrbank5_dfii_pi1_wrdata3_w = controllerinjector_phaseinjector1_wrdata_storage_full[31:24];
assign memtestsoc_csrbank5_dfii_pi1_wrdata2_w = controllerinjector_phaseinjector1_wrdata_storage_full[23:16];
assign memtestsoc_csrbank5_dfii_pi1_wrdata1_w = controllerinjector_phaseinjector1_wrdata_storage_full[15:8];
assign memtestsoc_csrbank5_dfii_pi1_wrdata0_w = controllerinjector_phaseinjector1_wrdata_storage_full[7:0];
assign memtestsoc_csrbank5_dfii_pi1_rddata3_w = controllerinjector_phaseinjector1_status[31:24];
assign memtestsoc_csrbank5_dfii_pi1_rddata2_w = controllerinjector_phaseinjector1_status[23:16];
assign memtestsoc_csrbank5_dfii_pi1_rddata1_w = controllerinjector_phaseinjector1_status[15:8];
assign memtestsoc_csrbank5_dfii_pi1_rddata0_w = controllerinjector_phaseinjector1_status[7:0];
assign memtestsoc_csrbank5_controller_bandwidth_nreads2_w = controllerinjector_bandwidth_nreads_status[23:16];
assign memtestsoc_csrbank5_controller_bandwidth_nreads1_w = controllerinjector_bandwidth_nreads_status[15:8];
assign memtestsoc_csrbank5_controller_bandwidth_nreads0_w = controllerinjector_bandwidth_nreads_status[7:0];
assign memtestsoc_csrbank5_controller_bandwidth_nwrites2_w = controllerinjector_bandwidth_nwrites_status[23:16];
assign memtestsoc_csrbank5_controller_bandwidth_nwrites1_w = controllerinjector_bandwidth_nwrites_status[15:8];
assign memtestsoc_csrbank5_controller_bandwidth_nwrites0_w = controllerinjector_bandwidth_nwrites_status[7:0];
assign memtestsoc_csrbank5_controller_bandwidth_data_width_w = controllerinjector_bandwidth_data_width_status[6:0];
assign memtestsoc_csrbank6_sel = (memtestsoc_interface6_adr[13:9] == 3'd4);
assign memtestsoc_csrbank6_load3_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_load3_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[4:0] == 1'd0));
assign memtestsoc_csrbank6_load2_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_load2_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[4:0] == 1'd1));
assign memtestsoc_csrbank6_load1_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_load1_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[4:0] == 2'd2));
assign memtestsoc_csrbank6_load0_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_load0_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[4:0] == 2'd3));
assign memtestsoc_csrbank6_reload3_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_reload3_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[4:0] == 3'd4));
assign memtestsoc_csrbank6_reload2_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_reload2_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[4:0] == 3'd5));
assign memtestsoc_csrbank6_reload1_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_reload1_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[4:0] == 3'd6));
assign memtestsoc_csrbank6_reload0_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_reload0_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[4:0] == 3'd7));
assign memtestsoc_csrbank6_en0_r = memtestsoc_interface6_dat_w[0];
assign memtestsoc_csrbank6_en0_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[4:0] == 4'd8));
assign memtestsoc_update_value_r = memtestsoc_interface6_dat_w[0];
assign memtestsoc_update_value_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[4:0] == 4'd9));
assign memtestsoc_csrbank6_value3_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_value3_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[4:0] == 4'd10));
assign memtestsoc_csrbank6_value2_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_value2_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[4:0] == 4'd11));
assign memtestsoc_csrbank6_value1_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_value1_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[4:0] == 4'd12));
assign memtestsoc_csrbank6_value0_r = memtestsoc_interface6_dat_w[7:0];
assign memtestsoc_csrbank6_value0_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[4:0] == 4'd13));
assign memtestsoc_eventmanager_status_r = memtestsoc_interface6_dat_w[0];
assign memtestsoc_eventmanager_status_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[4:0] == 4'd14));
assign memtestsoc_eventmanager_pending_r = memtestsoc_interface6_dat_w[0];
assign memtestsoc_eventmanager_pending_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[4:0] == 4'd15));
assign memtestsoc_csrbank6_ev_enable0_r = memtestsoc_interface6_dat_w[0];
assign memtestsoc_csrbank6_ev_enable0_re = ((memtestsoc_csrbank6_sel & memtestsoc_interface6_we) & (memtestsoc_interface6_adr[4:0] == 5'd16));
assign memtestsoc_load_storage = memtestsoc_load_storage_full[31:0];
assign memtestsoc_csrbank6_load3_w = memtestsoc_load_storage_full[31:24];
assign memtestsoc_csrbank6_load2_w = memtestsoc_load_storage_full[23:16];
assign memtestsoc_csrbank6_load1_w = memtestsoc_load_storage_full[15:8];
assign memtestsoc_csrbank6_load0_w = memtestsoc_load_storage_full[7:0];
assign memtestsoc_reload_storage = memtestsoc_reload_storage_full[31:0];
assign memtestsoc_csrbank6_reload3_w = memtestsoc_reload_storage_full[31:24];
assign memtestsoc_csrbank6_reload2_w = memtestsoc_reload_storage_full[23:16];
assign memtestsoc_csrbank6_reload1_w = memtestsoc_reload_storage_full[15:8];
assign memtestsoc_csrbank6_reload0_w = memtestsoc_reload_storage_full[7:0];
assign memtestsoc_en_storage = memtestsoc_en_storage_full;
assign memtestsoc_csrbank6_en0_w = memtestsoc_en_storage_full;
assign memtestsoc_csrbank6_value3_w = memtestsoc_value_status[31:24];
assign memtestsoc_csrbank6_value2_w = memtestsoc_value_status[23:16];
assign memtestsoc_csrbank6_value1_w = memtestsoc_value_status[15:8];
assign memtestsoc_csrbank6_value0_w = memtestsoc_value_status[7:0];
assign memtestsoc_eventmanager_storage = memtestsoc_eventmanager_storage_full;
assign memtestsoc_csrbank6_ev_enable0_w = memtestsoc_eventmanager_storage_full;
assign memtestsoc_csrbank7_sel = (memtestsoc_interface7_adr[13:9] == 2'd2);
assign suart_uart_rxtx_r = memtestsoc_interface7_dat_w[7:0];
assign suart_uart_rxtx_re = ((memtestsoc_csrbank7_sel & memtestsoc_interface7_we) & (memtestsoc_interface7_adr[2:0] == 1'd0));
assign memtestsoc_csrbank7_txfull_r = memtestsoc_interface7_dat_w[0];
assign memtestsoc_csrbank7_txfull_re = ((memtestsoc_csrbank7_sel & memtestsoc_interface7_we) & (memtestsoc_interface7_adr[2:0] == 1'd1));
assign memtestsoc_csrbank7_rxempty_r = memtestsoc_interface7_dat_w[0];
assign memtestsoc_csrbank7_rxempty_re = ((memtestsoc_csrbank7_sel & memtestsoc_interface7_we) & (memtestsoc_interface7_adr[2:0] == 2'd2));
assign suart_uart_status_r = memtestsoc_interface7_dat_w[1:0];
assign suart_uart_status_re = ((memtestsoc_csrbank7_sel & memtestsoc_interface7_we) & (memtestsoc_interface7_adr[2:0] == 2'd3));
assign suart_uart_pending_r = memtestsoc_interface7_dat_w[1:0];
assign suart_uart_pending_re = ((memtestsoc_csrbank7_sel & memtestsoc_interface7_we) & (memtestsoc_interface7_adr[2:0] == 3'd4));
assign memtestsoc_csrbank7_ev_enable0_r = memtestsoc_interface7_dat_w[1:0];
assign memtestsoc_csrbank7_ev_enable0_re = ((memtestsoc_csrbank7_sel & memtestsoc_interface7_we) & (memtestsoc_interface7_adr[2:0] == 3'd5));
assign memtestsoc_csrbank7_txfull_w = suart_uart_txfull_status;
assign memtestsoc_csrbank7_rxempty_w = suart_uart_rxempty_status;
assign suart_uart_storage = suart_uart_storage_full[1:0];
assign memtestsoc_csrbank7_ev_enable0_w = suart_uart_storage_full[1:0];
assign memtestsoc_interface0_adr = memtestsoc_interface_adr;
assign memtestsoc_interface1_adr = memtestsoc_interface_adr;
assign memtestsoc_interface2_adr = memtestsoc_interface_adr;
assign memtestsoc_interface3_adr = memtestsoc_interface_adr;
assign memtestsoc_interface4_adr = memtestsoc_interface_adr;
assign memtestsoc_interface5_adr = memtestsoc_interface_adr;
assign memtestsoc_interface6_adr = memtestsoc_interface_adr;
assign memtestsoc_interface7_adr = memtestsoc_interface_adr;
assign memtestsoc_interface0_we = memtestsoc_interface_we;
assign memtestsoc_interface1_we = memtestsoc_interface_we;
assign memtestsoc_interface2_we = memtestsoc_interface_we;
assign memtestsoc_interface3_we = memtestsoc_interface_we;
assign memtestsoc_interface4_we = memtestsoc_interface_we;
assign memtestsoc_interface5_we = memtestsoc_interface_we;
assign memtestsoc_interface6_we = memtestsoc_interface_we;
assign memtestsoc_interface7_we = memtestsoc_interface_we;
assign memtestsoc_interface0_dat_w = memtestsoc_interface_dat_w;
assign memtestsoc_interface1_dat_w = memtestsoc_interface_dat_w;
assign memtestsoc_interface2_dat_w = memtestsoc_interface_dat_w;
assign memtestsoc_interface3_dat_w = memtestsoc_interface_dat_w;
assign memtestsoc_interface4_dat_w = memtestsoc_interface_dat_w;
assign memtestsoc_interface5_dat_w = memtestsoc_interface_dat_w;
assign memtestsoc_interface6_dat_w = memtestsoc_interface_dat_w;
assign memtestsoc_interface7_dat_w = memtestsoc_interface_dat_w;
assign memtestsoc_interface_dat_r = (((((((memtestsoc_interface0_dat_r | memtestsoc_interface1_dat_r) | memtestsoc_interface2_dat_r) | memtestsoc_interface3_dat_r) | memtestsoc_interface4_dat_r) | memtestsoc_interface5_dat_r) | memtestsoc_interface6_dat_r) | memtestsoc_interface7_dat_r);
assign slice_proxy0 = ddrphy_record2_wrdata[15:0];
assign slice_proxy1 = ddrphy_record3_wrdata[31:16];
assign slice_proxy2 = ddrphy_record3_wrdata[15:0];
assign slice_proxy3 = ddrphy_record0_wrdata[31:16];
assign slice_proxy4 = ddrphy_record2_wrdata[15:0];
assign slice_proxy5 = ddrphy_record3_wrdata[31:16];
assign slice_proxy6 = ddrphy_record3_wrdata[15:0];
assign slice_proxy7 = ddrphy_record0_wrdata[31:16];
assign slice_proxy8 = ddrphy_record2_wrdata[15:0];
assign slice_proxy9 = ddrphy_record3_wrdata[31:16];
assign slice_proxy10 = ddrphy_record3_wrdata[15:0];
assign slice_proxy11 = ddrphy_record0_wrdata[31:16];
assign slice_proxy12 = ddrphy_record2_wrdata[15:0];
assign slice_proxy13 = ddrphy_record3_wrdata[31:16];
assign slice_proxy14 = ddrphy_record3_wrdata[15:0];
assign slice_proxy15 = ddrphy_record0_wrdata[31:16];
assign slice_proxy16 = ddrphy_record2_wrdata[15:0];
assign slice_proxy17 = ddrphy_record3_wrdata[31:16];
assign slice_proxy18 = ddrphy_record3_wrdata[15:0];
assign slice_proxy19 = ddrphy_record0_wrdata[31:16];
assign slice_proxy20 = ddrphy_record2_wrdata[15:0];
assign slice_proxy21 = ddrphy_record3_wrdata[31:16];
assign slice_proxy22 = ddrphy_record3_wrdata[15:0];
assign slice_proxy23 = ddrphy_record0_wrdata[31:16];
assign slice_proxy24 = ddrphy_record2_wrdata[15:0];
assign slice_proxy25 = ddrphy_record3_wrdata[31:16];
assign slice_proxy26 = ddrphy_record3_wrdata[15:0];
assign slice_proxy27 = ddrphy_record0_wrdata[31:16];
assign slice_proxy28 = ddrphy_record2_wrdata[15:0];
assign slice_proxy29 = ddrphy_record3_wrdata[31:16];
assign slice_proxy30 = ddrphy_record3_wrdata[15:0];
assign slice_proxy31 = ddrphy_record0_wrdata[31:16];
assign slice_proxy32 = ddrphy_record2_wrdata[15:0];
assign slice_proxy33 = ddrphy_record3_wrdata[31:16];
assign slice_proxy34 = ddrphy_record3_wrdata[15:0];
assign slice_proxy35 = ddrphy_record0_wrdata[31:16];
assign slice_proxy36 = ddrphy_record2_wrdata[15:0];
assign slice_proxy37 = ddrphy_record3_wrdata[31:16];
assign slice_proxy38 = ddrphy_record3_wrdata[15:0];
assign slice_proxy39 = ddrphy_record0_wrdata[31:16];
assign slice_proxy40 = ddrphy_record2_wrdata[15:0];
assign slice_proxy41 = ddrphy_record3_wrdata[31:16];
assign slice_proxy42 = ddrphy_record3_wrdata[15:0];
assign slice_proxy43 = ddrphy_record0_wrdata[31:16];
assign slice_proxy44 = ddrphy_record2_wrdata[15:0];
assign slice_proxy45 = ddrphy_record3_wrdata[31:16];
assign slice_proxy46 = ddrphy_record3_wrdata[15:0];
assign slice_proxy47 = ddrphy_record0_wrdata[31:16];
assign slice_proxy48 = ddrphy_record2_wrdata[15:0];
assign slice_proxy49 = ddrphy_record3_wrdata[31:16];
assign slice_proxy50 = ddrphy_record3_wrdata[15:0];
assign slice_proxy51 = ddrphy_record0_wrdata[31:16];
assign slice_proxy52 = ddrphy_record2_wrdata[15:0];
assign slice_proxy53 = ddrphy_record3_wrdata[31:16];
assign slice_proxy54 = ddrphy_record3_wrdata[15:0];
assign slice_proxy55 = ddrphy_record0_wrdata[31:16];
assign slice_proxy56 = ddrphy_record2_wrdata[15:0];
assign slice_proxy57 = ddrphy_record3_wrdata[31:16];
assign slice_proxy58 = ddrphy_record3_wrdata[15:0];
assign slice_proxy59 = ddrphy_record0_wrdata[31:16];
assign slice_proxy60 = ddrphy_record2_wrdata[15:0];
assign slice_proxy61 = ddrphy_record3_wrdata[31:16];
assign slice_proxy62 = ddrphy_record3_wrdata[15:0];
assign slice_proxy63 = ddrphy_record0_wrdata[31:16];
assign slice_proxy64 = ddrphy_record2_wrdata_mask[1:0];
assign slice_proxy65 = ddrphy_record3_wrdata_mask[3:2];
assign slice_proxy66 = ddrphy_record3_wrdata_mask[1:0];
assign slice_proxy67 = ddrphy_record0_wrdata_mask[3:2];
assign slice_proxy68 = ddrphy_record2_wrdata_mask[1:0];
assign slice_proxy69 = ddrphy_record3_wrdata_mask[3:2];
assign slice_proxy70 = ddrphy_record3_wrdata_mask[1:0];
assign slice_proxy71 = ddrphy_record0_wrdata_mask[3:2];

// synthesis translate_off
reg dummy_d_73;
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
		default: begin
			rhs_array_muxed0 <= controllerinjector_choose_cmd_valids[3];
		end
	endcase
// synthesis translate_off
	dummy_d_73 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_74;
// synthesis translate_on
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
		default: begin
			rhs_array_muxed1 <= controllerinjector_bankmachine3_cmd_payload_a;
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
	rhs_array_muxed2 <= 2'd0;
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
		default: begin
			rhs_array_muxed2 <= controllerinjector_bankmachine3_cmd_payload_ba;
		end
	endcase
// synthesis translate_off
	dummy_d_75 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_76;
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
		default: begin
			rhs_array_muxed3 <= controllerinjector_bankmachine3_cmd_payload_is_read;
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
		default: begin
			rhs_array_muxed4 <= controllerinjector_bankmachine3_cmd_payload_is_write;
		end
	endcase
// synthesis translate_off
	dummy_d_77 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_78;
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
		default: begin
			rhs_array_muxed5 <= controllerinjector_bankmachine3_cmd_payload_is_cmd;
		end
	endcase
// synthesis translate_off
	dummy_d_78 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_79;
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
		default: begin
			t_array_muxed0 <= controllerinjector_bankmachine3_cmd_payload_cas;
		end
	endcase
// synthesis translate_off
	dummy_d_79 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_80;
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
		default: begin
			t_array_muxed1 <= controllerinjector_bankmachine3_cmd_payload_ras;
		end
	endcase
// synthesis translate_off
	dummy_d_80 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_81;
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
		default: begin
			t_array_muxed2 <= controllerinjector_bankmachine3_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_81 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_82;
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
		default: begin
			rhs_array_muxed6 <= controllerinjector_choose_req_valids[3];
		end
	endcase
// synthesis translate_off
	dummy_d_82 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_83;
// synthesis translate_on
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
		default: begin
			rhs_array_muxed7 <= controllerinjector_bankmachine3_cmd_payload_a;
		end
	endcase
// synthesis translate_off
	dummy_d_83 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_84;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed8 <= 2'd0;
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
		default: begin
			rhs_array_muxed8 <= controllerinjector_bankmachine3_cmd_payload_ba;
		end
	endcase
// synthesis translate_off
	dummy_d_84 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_85;
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
		default: begin
			rhs_array_muxed9 <= controllerinjector_bankmachine3_cmd_payload_is_read;
		end
	endcase
// synthesis translate_off
	dummy_d_85 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_86;
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
		default: begin
			rhs_array_muxed10 <= controllerinjector_bankmachine3_cmd_payload_is_write;
		end
	endcase
// synthesis translate_off
	dummy_d_86 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_87;
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
		default: begin
			rhs_array_muxed11 <= controllerinjector_bankmachine3_cmd_payload_is_cmd;
		end
	endcase
// synthesis translate_off
	dummy_d_87 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_88;
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
		default: begin
			t_array_muxed3 <= controllerinjector_bankmachine3_cmd_payload_cas;
		end
	endcase
// synthesis translate_off
	dummy_d_88 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_89;
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
		default: begin
			t_array_muxed4 <= controllerinjector_bankmachine3_cmd_payload_ras;
		end
	endcase
// synthesis translate_off
	dummy_d_89 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_90;
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
		default: begin
			t_array_muxed5 <= controllerinjector_bankmachine3_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_90 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_91;
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
	dummy_d_91 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_92;
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
	dummy_d_92 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_93;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed14 <= 1'd0;
	case (controllerinjector_roundrobin0_grant)
		1'd0: begin
			rhs_array_muxed14 <= (((controllerinjector_cba0 == 1'd0) & (~(((1'd0 | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0))))) & port_cmd_valid);
		end
		1'd1: begin
			rhs_array_muxed14 <= (((controllerinjector_cba1 == 1'd0) & (~(((1'd0 | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1))))) & litedramport0_cmd_valid0);
		end
		default: begin
			rhs_array_muxed14 <= (((controllerinjector_cba2 == 1'd0) & (~(((1'd0 | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2))))) & litedramport1_cmd_valid0);
		end
	endcase
// synthesis translate_off
	dummy_d_93 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_94;
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
	dummy_d_94 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_95;
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
	dummy_d_95 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_96;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed17 <= 1'd0;
	case (controllerinjector_roundrobin1_grant)
		1'd0: begin
			rhs_array_muxed17 <= (((controllerinjector_cba0 == 1'd1) & (~(((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0))))) & port_cmd_valid);
		end
		1'd1: begin
			rhs_array_muxed17 <= (((controllerinjector_cba1 == 1'd1) & (~(((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1))))) & litedramport0_cmd_valid0);
		end
		default: begin
			rhs_array_muxed17 <= (((controllerinjector_cba2 == 1'd1) & (~(((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2))))) & litedramport1_cmd_valid0);
		end
	endcase
// synthesis translate_off
	dummy_d_96 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_97;
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
	dummy_d_97 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_98;
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
	dummy_d_98 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_99;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed20 <= 1'd0;
	case (controllerinjector_roundrobin2_grant)
		1'd0: begin
			rhs_array_muxed20 <= (((controllerinjector_cba0 == 2'd2) & (~(((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd0))))) & port_cmd_valid);
		end
		1'd1: begin
			rhs_array_muxed20 <= (((controllerinjector_cba1 == 2'd2) & (~(((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 1'd1))))) & litedramport0_cmd_valid0);
		end
		default: begin
			rhs_array_muxed20 <= (((controllerinjector_cba2 == 2'd2) & (~(((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank3_lock & (controllerinjector_roundrobin3_grant == 2'd2))))) & litedramport1_cmd_valid0);
		end
	endcase
// synthesis translate_off
	dummy_d_99 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_100;
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
	dummy_d_100 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_101;
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
	dummy_d_101 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_102;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed23 <= 1'd0;
	case (controllerinjector_roundrobin3_grant)
		1'd0: begin
			rhs_array_muxed23 <= (((controllerinjector_cba0 == 2'd3) & (~(((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd0))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd0))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd0))))) & port_cmd_valid);
		end
		1'd1: begin
			rhs_array_muxed23 <= (((controllerinjector_cba1 == 2'd3) & (~(((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 1'd1))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 1'd1))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 1'd1))))) & litedramport0_cmd_valid0);
		end
		default: begin
			rhs_array_muxed23 <= (((controllerinjector_cba2 == 2'd3) & (~(((1'd0 | (controllerinjector_interface_bank0_lock & (controllerinjector_roundrobin0_grant == 2'd2))) | (controllerinjector_interface_bank1_lock & (controllerinjector_roundrobin1_grant == 2'd2))) | (controllerinjector_interface_bank2_lock & (controllerinjector_roundrobin2_grant == 2'd2))))) & litedramport1_cmd_valid0);
		end
	endcase
// synthesis translate_off
	dummy_d_102 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_103;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed24 <= 30'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed24 <= interface1_wb_sdram_adr;
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
	rhs_array_muxed25 <= 32'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed25 <= interface1_wb_sdram_dat_w;
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
	rhs_array_muxed26 <= 4'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed26 <= interface1_wb_sdram_sel;
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
	rhs_array_muxed27 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed27 <= interface1_wb_sdram_cyc;
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
	rhs_array_muxed28 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed28 <= interface1_wb_sdram_stb;
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
	rhs_array_muxed29 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed29 <= interface1_wb_sdram_we;
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
	rhs_array_muxed30 <= 3'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed30 <= interface1_wb_sdram_cti;
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
	rhs_array_muxed31 <= 2'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed31 <= interface1_wb_sdram_bte;
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
	rhs_array_muxed32 <= 30'd0;
	case (memtestsoc_grant)
		1'd0: begin
			rhs_array_muxed32 <= memtestsoc_ibus_adr;
		end
		1'd1: begin
			rhs_array_muxed32 <= memtestsoc_dbus_adr;
		end
		default: begin
			rhs_array_muxed32 <= uartbridge_wishbone_adr;
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
	rhs_array_muxed33 <= 32'd0;
	case (memtestsoc_grant)
		1'd0: begin
			rhs_array_muxed33 <= memtestsoc_ibus_dat_w;
		end
		1'd1: begin
			rhs_array_muxed33 <= memtestsoc_dbus_dat_w;
		end
		default: begin
			rhs_array_muxed33 <= uartbridge_wishbone_dat_w;
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
	rhs_array_muxed34 <= 4'd0;
	case (memtestsoc_grant)
		1'd0: begin
			rhs_array_muxed34 <= memtestsoc_ibus_sel;
		end
		1'd1: begin
			rhs_array_muxed34 <= memtestsoc_dbus_sel;
		end
		default: begin
			rhs_array_muxed34 <= uartbridge_wishbone_sel;
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
	rhs_array_muxed35 <= 1'd0;
	case (memtestsoc_grant)
		1'd0: begin
			rhs_array_muxed35 <= memtestsoc_ibus_cyc;
		end
		1'd1: begin
			rhs_array_muxed35 <= memtestsoc_dbus_cyc;
		end
		default: begin
			rhs_array_muxed35 <= uartbridge_wishbone_cyc;
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
	rhs_array_muxed36 <= 1'd0;
	case (memtestsoc_grant)
		1'd0: begin
			rhs_array_muxed36 <= memtestsoc_ibus_stb;
		end
		1'd1: begin
			rhs_array_muxed36 <= memtestsoc_dbus_stb;
		end
		default: begin
			rhs_array_muxed36 <= uartbridge_wishbone_stb;
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
	rhs_array_muxed37 <= 1'd0;
	case (memtestsoc_grant)
		1'd0: begin
			rhs_array_muxed37 <= memtestsoc_ibus_we;
		end
		1'd1: begin
			rhs_array_muxed37 <= memtestsoc_dbus_we;
		end
		default: begin
			rhs_array_muxed37 <= uartbridge_wishbone_we;
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
	rhs_array_muxed38 <= 3'd0;
	case (memtestsoc_grant)
		1'd0: begin
			rhs_array_muxed38 <= memtestsoc_ibus_cti;
		end
		1'd1: begin
			rhs_array_muxed38 <= memtestsoc_dbus_cti;
		end
		default: begin
			rhs_array_muxed38 <= uartbridge_wishbone_cti;
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
	rhs_array_muxed39 <= 2'd0;
	case (memtestsoc_grant)
		1'd0: begin
			rhs_array_muxed39 <= memtestsoc_ibus_bte;
		end
		1'd1: begin
			rhs_array_muxed39 <= memtestsoc_dbus_bte;
		end
		default: begin
			rhs_array_muxed39 <= uartbridge_wishbone_bte;
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
	array_muxed0 <= 13'd0;
	case (ddrphy_phase_sel)
		1'd0: begin
			array_muxed0 <= ddrphy_record0_address;
		end
		default: begin
			array_muxed0 <= ddrphy_record1_address;
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
	array_muxed1 <= 2'd0;
	case (ddrphy_phase_sel)
		1'd0: begin
			array_muxed1 <= ddrphy_record0_bank;
		end
		default: begin
			array_muxed1 <= ddrphy_record1_bank;
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
	array_muxed2 <= 1'd0;
	case (ddrphy_phase_sel)
		1'd0: begin
			array_muxed2 <= ddrphy_record0_cke;
		end
		default: begin
			array_muxed2 <= ddrphy_record1_cke;
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
	array_muxed3 <= 1'd0;
	case (ddrphy_phase_sel)
		1'd0: begin
			array_muxed3 <= ddrphy_record0_ras_n;
		end
		default: begin
			array_muxed3 <= ddrphy_record1_ras_n;
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
	array_muxed4 <= 1'd0;
	case (ddrphy_phase_sel)
		1'd0: begin
			array_muxed4 <= ddrphy_record0_cas_n;
		end
		default: begin
			array_muxed4 <= ddrphy_record1_cas_n;
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
	array_muxed5 <= 1'd0;
	case (ddrphy_phase_sel)
		1'd0: begin
			array_muxed5 <= ddrphy_record0_we_n;
		end
		default: begin
			array_muxed5 <= ddrphy_record1_we_n;
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
	array_muxed6 <= 13'd0;
	case (controllerinjector_sel0)
		1'd0: begin
			array_muxed6 <= controllerinjector_nop_a;
		end
		1'd1: begin
			array_muxed6 <= controllerinjector_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed6 <= controllerinjector_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed6 <= controllerinjector_cmd_payload_a;
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
	array_muxed7 <= 2'd0;
	case (controllerinjector_sel0)
		1'd0: begin
			array_muxed7 <= controllerinjector_nop_ba;
		end
		1'd1: begin
			array_muxed7 <= controllerinjector_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			array_muxed7 <= controllerinjector_choose_req_cmd_payload_ba;
		end
		default: begin
			array_muxed7 <= controllerinjector_cmd_payload_ba;
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
	array_muxed8 <= 1'd0;
	case (controllerinjector_sel0)
		1'd0: begin
			array_muxed8 <= controllerinjector_nop_cas;
		end
		1'd1: begin
			array_muxed8 <= controllerinjector_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			array_muxed8 <= controllerinjector_choose_req_cmd_payload_cas;
		end
		default: begin
			array_muxed8 <= controllerinjector_cmd_payload_cas;
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
	array_muxed9 <= 1'd0;
	case (controllerinjector_sel0)
		1'd0: begin
			array_muxed9 <= controllerinjector_nop_ras;
		end
		1'd1: begin
			array_muxed9 <= controllerinjector_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			array_muxed9 <= controllerinjector_choose_req_cmd_payload_ras;
		end
		default: begin
			array_muxed9 <= controllerinjector_cmd_payload_ras;
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
	array_muxed10 <= 1'd0;
	case (controllerinjector_sel0)
		1'd0: begin
			array_muxed10 <= controllerinjector_nop_we;
		end
		1'd1: begin
			array_muxed10 <= controllerinjector_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			array_muxed10 <= controllerinjector_choose_req_cmd_payload_we;
		end
		default: begin
			array_muxed10 <= controllerinjector_cmd_payload_we;
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
	array_muxed11 <= 1'd0;
	case (controllerinjector_sel0)
		1'd0: begin
			array_muxed11 <= 1'd0;
		end
		1'd1: begin
			array_muxed11 <= (controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed11 <= (controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed11 <= (controllerinjector_cmd_valid & controllerinjector_cmd_payload_is_read);
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
	array_muxed12 <= 1'd0;
	case (controllerinjector_sel0)
		1'd0: begin
			array_muxed12 <= 1'd0;
		end
		1'd1: begin
			array_muxed12 <= (controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed12 <= (controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed12 <= (controllerinjector_cmd_valid & controllerinjector_cmd_payload_is_write);
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
	array_muxed13 <= 13'd0;
	case (controllerinjector_sel1)
		1'd0: begin
			array_muxed13 <= controllerinjector_nop_a;
		end
		1'd1: begin
			array_muxed13 <= controllerinjector_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed13 <= controllerinjector_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed13 <= controllerinjector_cmd_payload_a;
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
	array_muxed14 <= 2'd0;
	case (controllerinjector_sel1)
		1'd0: begin
			array_muxed14 <= controllerinjector_nop_ba;
		end
		1'd1: begin
			array_muxed14 <= controllerinjector_choose_cmd_cmd_payload_ba;
		end
		2'd2: begin
			array_muxed14 <= controllerinjector_choose_req_cmd_payload_ba;
		end
		default: begin
			array_muxed14 <= controllerinjector_cmd_payload_ba;
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
	array_muxed15 <= 1'd0;
	case (controllerinjector_sel1)
		1'd0: begin
			array_muxed15 <= controllerinjector_nop_cas;
		end
		1'd1: begin
			array_muxed15 <= controllerinjector_choose_cmd_cmd_payload_cas;
		end
		2'd2: begin
			array_muxed15 <= controllerinjector_choose_req_cmd_payload_cas;
		end
		default: begin
			array_muxed15 <= controllerinjector_cmd_payload_cas;
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
	array_muxed16 <= 1'd0;
	case (controllerinjector_sel1)
		1'd0: begin
			array_muxed16 <= controllerinjector_nop_ras;
		end
		1'd1: begin
			array_muxed16 <= controllerinjector_choose_cmd_cmd_payload_ras;
		end
		2'd2: begin
			array_muxed16 <= controllerinjector_choose_req_cmd_payload_ras;
		end
		default: begin
			array_muxed16 <= controllerinjector_cmd_payload_ras;
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
	array_muxed17 <= 1'd0;
	case (controllerinjector_sel1)
		1'd0: begin
			array_muxed17 <= controllerinjector_nop_we;
		end
		1'd1: begin
			array_muxed17 <= controllerinjector_choose_cmd_cmd_payload_we;
		end
		2'd2: begin
			array_muxed17 <= controllerinjector_choose_req_cmd_payload_we;
		end
		default: begin
			array_muxed17 <= controllerinjector_cmd_payload_we;
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
	array_muxed18 <= 1'd0;
	case (controllerinjector_sel1)
		1'd0: begin
			array_muxed18 <= 1'd0;
		end
		1'd1: begin
			array_muxed18 <= (controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed18 <= (controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed18 <= (controllerinjector_cmd_valid & controllerinjector_cmd_payload_is_read);
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
	array_muxed19 <= 1'd0;
	case (controllerinjector_sel1)
		1'd0: begin
			array_muxed19 <= 1'd0;
		end
		1'd1: begin
			array_muxed19 <= (controllerinjector_choose_cmd_cmd_valid & controllerinjector_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed19 <= (controllerinjector_choose_req_cmd_valid & controllerinjector_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed19 <= (controllerinjector_cmd_valid & controllerinjector_cmd_payload_is_write);
		end
	endcase
// synthesis translate_off
	dummy_d_138 <= dummy_s;
// synthesis translate_on
end
assign switches_status = xilinxmultiregimpl0_regs1;
assign generator_reset_sync_toggle_o = xilinxmultiregimpl1_regs1;
assign generator_start_sync_toggle_o = xilinxmultiregimpl2_regs1;
assign generator_done_sync_o = xilinxmultiregimpl3_regs1;
assign generator_base_sync_ping_toggle_o = xilinxmultiregimpl4_regs1;
assign generator_base_sync_pong_toggle_o = xilinxmultiregimpl5_regs1;
assign generator_base_sync_obuffer = xilinxmultiregimpl6_regs1;
assign generator_length_sync_ping_toggle_o = xilinxmultiregimpl7_regs1;
assign generator_length_sync_pong_toggle_o = xilinxmultiregimpl8_regs1;
assign generator_length_sync_obuffer = xilinxmultiregimpl9_regs1;
assign checker_reset_sync_toggle_o = xilinxmultiregimpl10_regs1;
assign checker_start_sync_toggle_o = xilinxmultiregimpl11_regs1;
assign checker_done_sync_o = xilinxmultiregimpl12_regs1;
assign checker_base_sync_ping_toggle_o = xilinxmultiregimpl13_regs1;
assign checker_base_sync_pong_toggle_o = xilinxmultiregimpl14_regs1;
assign checker_base_sync_obuffer = xilinxmultiregimpl15_regs1;
assign checker_length_sync_ping_toggle_o = xilinxmultiregimpl16_regs1;
assign checker_length_sync_pong_toggle_o = xilinxmultiregimpl17_regs1;
assign checker_length_sync_obuffer = xilinxmultiregimpl18_regs1;
assign checker_err_count_sync_ping_toggle_o = xilinxmultiregimpl19_regs1;
assign checker_err_count_sync_pong_toggle_o = xilinxmultiregimpl20_regs1;
assign checker_err_count_sync_obuffer = xilinxmultiregimpl21_regs1;
assign suart_phy_rx = xilinxmultiregimpl22_regs1;
assign uartbridge_rx = xilinxmultiregimpl23_regs1;
assign frontend_trigger_value = xilinxmultiregimpl24_regs1;
assign frontend_trigger_mask = xilinxmultiregimpl25_regs1;
assign frontend_subsampler_value = xilinxmultiregimpl26_regs1;
assign frontend_asyncfifo_produce_rdomain = xilinxmultiregimpl27_regs1;
assign frontend_asyncfifo_consume_wdomain = xilinxmultiregimpl28_regs1;

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
		ddram_a <= 13'd0;
		ddram_ba <= 2'd0;
		ddram_cke <= 1'd0;
		ddram_ras_n <= 1'd0;
		ddram_cas_n <= 1'd0;
		ddram_we_n <= 1'd0;
		ddrphy_phase_sel <= 1'd0;
		ddrphy_phase_half <= 1'd0;
		ddrphy_record0_address <= 13'd0;
		ddrphy_record0_bank <= 2'd0;
		ddrphy_record0_cas_n <= 1'd0;
		ddrphy_record0_cs_n <= 1'd0;
		ddrphy_record0_ras_n <= 1'd0;
		ddrphy_record0_we_n <= 1'd0;
		ddrphy_record0_cke <= 1'd0;
		ddrphy_record0_odt <= 1'd0;
		ddrphy_record0_reset_n <= 1'd0;
		ddrphy_record1_address <= 13'd0;
		ddrphy_record1_bank <= 2'd0;
		ddrphy_record1_cas_n <= 1'd0;
		ddrphy_record1_cs_n <= 1'd0;
		ddrphy_record1_ras_n <= 1'd0;
		ddrphy_record1_we_n <= 1'd0;
		ddrphy_record1_cke <= 1'd0;
		ddrphy_record1_odt <= 1'd0;
		ddrphy_record1_reset_n <= 1'd0;
		ddrphy_postamble <= 1'd0;
		ddrphy_r_dfi_wrdata_en <= 3'd0;
	end else begin
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
		ddrphy_postamble <= ddrphy_drive_dqs;
		ddrphy_r_dfi_wrdata_en <= {ddrphy_r_dfi_wrdata_en, ddrphy_wrdata_en_d};
	end
end

always @(posedge sys_clk) begin
	if (sys_rst) begin
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
		bus_ack <= 1'd0;
		cs_n <= 1'd1;
		clk <= 1'd0;
		sr <= 32'd0;
		i <= 2'd0;
		miso <= 1'd0;
		counter <= 9'd0;
		ddrphy_phase_sys <= 1'd0;
		ddrphy_bitslip_cnt <= 4'd0;
		ddrphy_bitslip_inc <= 1'd0;
		ddrphy_record2_wrdata <= 32'd0;
		ddrphy_record2_wrdata_mask <= 4'd0;
		ddrphy_record3_wrdata <= 32'd0;
		ddrphy_record3_wrdata_mask <= 4'd0;
		ddrphy_drive_dq_n1 <= 1'd0;
		ddrphy_wrdata_en_d <= 1'd0;
		ddrphy_rddata_sr <= 5'd0;
		controllerinjector_storage_full <= 4'd0;
		controllerinjector_re <= 1'd0;
		controllerinjector_phaseinjector0_command_storage_full <= 6'd0;
		controllerinjector_phaseinjector0_command_re <= 1'd0;
		controllerinjector_phaseinjector0_address_storage_full <= 13'd0;
		controllerinjector_phaseinjector0_address_re <= 1'd0;
		controllerinjector_phaseinjector0_baddress_storage_full <= 2'd0;
		controllerinjector_phaseinjector0_baddress_re <= 1'd0;
		controllerinjector_phaseinjector0_wrdata_storage_full <= 32'd0;
		controllerinjector_phaseinjector0_wrdata_re <= 1'd0;
		controllerinjector_phaseinjector0_status <= 32'd0;
		controllerinjector_phaseinjector1_command_storage_full <= 6'd0;
		controllerinjector_phaseinjector1_command_re <= 1'd0;
		controllerinjector_phaseinjector1_address_storage_full <= 13'd0;
		controllerinjector_phaseinjector1_address_re <= 1'd0;
		controllerinjector_phaseinjector1_baddress_storage_full <= 2'd0;
		controllerinjector_phaseinjector1_baddress_re <= 1'd0;
		controllerinjector_phaseinjector1_wrdata_storage_full <= 32'd0;
		controllerinjector_phaseinjector1_wrdata_re <= 1'd0;
		controllerinjector_phaseinjector1_status <= 32'd0;
		controllerinjector_dfi_p0_address <= 13'd0;
		controllerinjector_dfi_p0_bank <= 2'd0;
		controllerinjector_dfi_p0_cas_n <= 1'd1;
		controllerinjector_dfi_p0_ras_n <= 1'd1;
		controllerinjector_dfi_p0_we_n <= 1'd1;
		controllerinjector_dfi_p0_wrdata_en <= 1'd0;
		controllerinjector_dfi_p0_rddata_en <= 1'd0;
		controllerinjector_dfi_p1_address <= 13'd0;
		controllerinjector_dfi_p1_bank <= 2'd0;
		controllerinjector_dfi_p1_cas_n <= 1'd1;
		controllerinjector_dfi_p1_ras_n <= 1'd1;
		controllerinjector_dfi_p1_we_n <= 1'd1;
		controllerinjector_dfi_p1_wrdata_en <= 1'd0;
		controllerinjector_dfi_p1_rddata_en <= 1'd0;
		controllerinjector_cmd_payload_a <= 13'd0;
		controllerinjector_cmd_payload_ba <= 2'd0;
		controllerinjector_cmd_payload_cas <= 1'd0;
		controllerinjector_cmd_payload_ras <= 1'd0;
		controllerinjector_cmd_payload_we <= 1'd0;
		controllerinjector_seq_done <= 1'd0;
		controllerinjector_counter <= 4'd0;
		controllerinjector_count <= 10'd652;
		controllerinjector_bankmachine0_level <= 4'd0;
		controllerinjector_bankmachine0_produce <= 3'd0;
		controllerinjector_bankmachine0_consume <= 3'd0;
		controllerinjector_bankmachine0_has_openrow <= 1'd0;
		controllerinjector_bankmachine0_openrow <= 13'd0;
		controllerinjector_bankmachine0_count <= 3'd4;
		controllerinjector_bankmachine1_level <= 4'd0;
		controllerinjector_bankmachine1_produce <= 3'd0;
		controllerinjector_bankmachine1_consume <= 3'd0;
		controllerinjector_bankmachine1_has_openrow <= 1'd0;
		controllerinjector_bankmachine1_openrow <= 13'd0;
		controllerinjector_bankmachine1_count <= 3'd4;
		controllerinjector_bankmachine2_level <= 4'd0;
		controllerinjector_bankmachine2_produce <= 3'd0;
		controllerinjector_bankmachine2_consume <= 3'd0;
		controllerinjector_bankmachine2_has_openrow <= 1'd0;
		controllerinjector_bankmachine2_openrow <= 13'd0;
		controllerinjector_bankmachine2_count <= 3'd4;
		controllerinjector_bankmachine3_level <= 4'd0;
		controllerinjector_bankmachine3_produce <= 3'd0;
		controllerinjector_bankmachine3_consume <= 3'd0;
		controllerinjector_bankmachine3_has_openrow <= 1'd0;
		controllerinjector_bankmachine3_openrow <= 13'd0;
		controllerinjector_bankmachine3_count <= 3'd4;
		controllerinjector_choose_cmd_grant <= 2'd0;
		controllerinjector_choose_req_grant <= 2'd0;
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
		leds_storage_full <= 8'd0;
		leds_re <= 1'd0;
		eventsourceprocess0_pending <= 1'd0;
		eventsourceprocess0_old_trigger <= 1'd0;
		waittimer0_count <= 20'd833333;
		eventsourceprocess1_pending <= 1'd0;
		eventsourceprocess1_old_trigger <= 1'd0;
		waittimer1_count <= 20'd833333;
		eventsourceprocess2_pending <= 1'd0;
		eventsourceprocess2_old_trigger <= 1'd0;
		waittimer2_count <= 20'd833333;
		eventsourceprocess3_pending <= 1'd0;
		eventsourceprocess3_old_trigger <= 1'd0;
		waittimer3_count <= 20'd833333;
		eventsourceprocess4_pending <= 1'd0;
		eventsourceprocess4_old_trigger <= 1'd0;
		waittimer4_count <= 20'd833333;
		eventmanager_storage_full <= 5'd0;
		eventmanager_re <= 1'd0;
		litedramwriteportupconverter_we <= 1'd0;
		litedramwriteportupconverter_address <= 23'd0;
		litedramwriteportupconverter_counter <= 1'd0;
		litedramwriteportupconverter_converter_source_last <= 1'd0;
		litedramwriteportupconverter_converter_source_payload_data <= 72'd0;
		litedramwriteportupconverter_converter_source_payload_valid_token_count <= 2'd0;
		litedramwriteportupconverter_converter_demux <= 1'd0;
		litedramwriteportupconverter_converter_strobe_all <= 1'd0;
		generator_base_storage_full <= 24'd0;
		generator_base_re <= 1'd0;
		generator_length_storage_full <= 24'd0;
		generator_length_re <= 1'd0;
		generator_core_fifo_level <= 5'd0;
		generator_core_fifo_produce <= 4'd0;
		generator_core_fifo_consume <= 4'd0;
		generator_core_o <= 32'd0;
		generator_core_state <= 31'd0;
		generator_core_cmd_counter <= 24'd0;
		generator_reset_sync_toggle_i <= 1'd0;
		generator_reset_sync_toggle_o_r <= 1'd0;
		generator_start_sync_toggle_i <= 1'd0;
		generator_start_sync_toggle_o_r <= 1'd0;
		generator_base_sync_o <= 24'd0;
		generator_base_sync_starter <= 1'd1;
		generator_base_sync_ping_toggle_i <= 1'd0;
		generator_base_sync_ping_toggle_o_r <= 1'd0;
		generator_base_sync_pong_toggle_i <= 1'd0;
		generator_base_sync_pong_toggle_o_r <= 1'd0;
		generator_base_sync_count <= 8'd128;
		generator_base_sync_ibuffer <= 24'd0;
		generator_length_sync_o <= 24'd0;
		generator_length_sync_starter <= 1'd1;
		generator_length_sync_ping_toggle_i <= 1'd0;
		generator_length_sync_ping_toggle_o_r <= 1'd0;
		generator_length_sync_pong_toggle_i <= 1'd0;
		generator_length_sync_pong_toggle_o_r <= 1'd0;
		generator_length_sync_count <= 8'd128;
		generator_length_sync_ibuffer <= 24'd0;
		litedramreadportupconverter_cmd_buffer_level <= 3'd0;
		litedramreadportupconverter_cmd_buffer_produce <= 2'd0;
		litedramreadportupconverter_cmd_buffer_consume <= 2'd0;
		litedramreadportupconverter_counter <= 1'd0;
		litedramreadportupconverter_rdata_buffer_source_payload_data <= 64'd0;
		litedramreadportupconverter_rdata_buffer_valid_n <= 1'd0;
		litedramreadportupconverter_rdata_buffer_last_n <= 1'd0;
		litedramreadportupconverter_rdata_converter_converter_mux <= 1'd0;
		litedramreadportupconverter_rdata_chunk <= 2'd1;
		checker_base_storage_full <= 24'd0;
		checker_base_re <= 1'd0;
		checker_length_storage_full <= 24'd0;
		checker_length_re <= 1'd0;
		checker_core_err_count <= 32'd0;
		checker_core_rsv_level <= 5'd0;
		checker_core_fifo_level <= 5'd0;
		checker_core_fifo_produce <= 4'd0;
		checker_core_fifo_consume <= 4'd0;
		checker_core_o <= 32'd0;
		checker_core_state <= 31'd0;
		checker_core_cmd_counter <= 24'd0;
		checker_core_data_counter <= 24'd0;
		checker_reset_sync_toggle_i <= 1'd0;
		checker_reset_sync_toggle_o_r <= 1'd0;
		checker_start_sync_toggle_i <= 1'd0;
		checker_start_sync_toggle_o_r <= 1'd0;
		checker_base_sync_o <= 24'd0;
		checker_base_sync_starter <= 1'd1;
		checker_base_sync_ping_toggle_i <= 1'd0;
		checker_base_sync_ping_toggle_o_r <= 1'd0;
		checker_base_sync_pong_toggle_i <= 1'd0;
		checker_base_sync_pong_toggle_o_r <= 1'd0;
		checker_base_sync_count <= 8'd128;
		checker_base_sync_ibuffer <= 24'd0;
		checker_length_sync_o <= 24'd0;
		checker_length_sync_starter <= 1'd1;
		checker_length_sync_ping_toggle_i <= 1'd0;
		checker_length_sync_ping_toggle_o_r <= 1'd0;
		checker_length_sync_pong_toggle_i <= 1'd0;
		checker_length_sync_pong_toggle_o_r <= 1'd0;
		checker_length_sync_count <= 8'd128;
		checker_length_sync_ibuffer <= 24'd0;
		checker_err_count_sync_o <= 32'd0;
		checker_err_count_sync_starter <= 1'd1;
		checker_err_count_sync_ping_toggle_i <= 1'd0;
		checker_err_count_sync_ping_toggle_o_r <= 1'd0;
		checker_err_count_sync_pong_toggle_i <= 1'd0;
		checker_err_count_sync_pong_toggle_o_r <= 1'd0;
		checker_err_count_sync_count <= 8'd128;
		checker_err_count_sync_ibuffer <= 32'd0;
		suart_tx <= 1'd1;
		suart_phy_sink_ready <= 1'd0;
		suart_phy_uart_clk_txen <= 1'd0;
		suart_phy_phase_accumulator_tx <= 32'd0;
		suart_phy_tx_reg <= 8'd0;
		suart_phy_tx_bitcount <= 4'd0;
		suart_phy_tx_busy <= 1'd0;
		suart_phy_source_valid <= 1'd0;
		suart_phy_source_payload_data <= 8'd0;
		suart_phy_uart_clk_rxen <= 1'd0;
		suart_phy_phase_accumulator_rx <= 32'd0;
		suart_phy_rx_r <= 1'd0;
		suart_phy_rx_reg <= 8'd0;
		suart_phy_rx_bitcount <= 4'd0;
		suart_phy_rx_busy <= 1'd0;
		suart_uart_tx_pending <= 1'd0;
		suart_uart_tx_old_trigger <= 1'd0;
		suart_uart_rx_pending <= 1'd0;
		suart_uart_rx_old_trigger <= 1'd0;
		suart_uart_storage_full <= 2'd0;
		suart_uart_re <= 1'd0;
		suart_uart_tx_fifo_level <= 5'd0;
		suart_uart_tx_fifo_produce <= 4'd0;
		suart_uart_tx_fifo_consume <= 4'd0;
		suart_uart_rx_fifo_level <= 5'd0;
		suart_uart_rx_fifo_produce <= 4'd0;
		suart_uart_rx_fifo_consume <= 4'd0;
		serial_tx <= 1'd1;
		uartbridge_sink_ready <= 1'd0;
		uartbridge_uart_clk_txen <= 1'd0;
		uartbridge_phase_accumulator_tx <= 32'd0;
		uartbridge_tx_reg <= 8'd0;
		uartbridge_tx_bitcount <= 4'd0;
		uartbridge_tx_busy <= 1'd0;
		uartbridge_source_valid <= 1'd0;
		uartbridge_source_payload_data <= 8'd0;
		uartbridge_uart_clk_rxen <= 1'd0;
		uartbridge_phase_accumulator_rx <= 32'd0;
		uartbridge_rx_r <= 1'd0;
		uartbridge_rx_reg <= 8'd0;
		uartbridge_rx_bitcount <= 4'd0;
		uartbridge_rx_busy <= 1'd0;
		uartbridge_byte_counter <= 3'd0;
		uartbridge_word_counter <= 3'd0;
		uartbridge_cmd <= 8'd0;
		uartbridge_length <= 8'd0;
		uartbridge_address <= 32'd0;
		uartbridge_data <= 32'd0;
		uartbridge_count <= 23'd8333333;
		frontend_buffer_source_payload_data <= 89'd0;
		frontend_buffer_source_payload_hit <= 1'd0;
		frontend_buffer_valid_n <= 1'd0;
		frontend_buffer_last_n <= 1'd0;
		frontend_trigger_value_storage_full <= 89'd0;
		frontend_trigger_value_re <= 1'd0;
		frontend_trigger_mask_storage_full <= 89'd0;
		frontend_trigger_mask_re <= 1'd0;
		frontend_subsampler_value_storage_full <= 16'd0;
		frontend_subsampler_value_re <= 1'd0;
		frontend_subsampler_counter <= 16'd0;
		frontend_asyncfifo_graycounter0_q <= 4'd0;
		frontend_asyncfifo_graycounter0_q_binary <= 4'd0;
		frontend_asyncfifo_graycounter1_q <= 4'd0;
		frontend_asyncfifo_graycounter1_q_binary <= 4'd0;
		storage_length_storage_full <= 7'd0;
		storage_length_re <= 1'd0;
		storage_offset_storage_full <= 7'd0;
		storage_offset_re <= 1'd0;
		storage_mem_readable <= 1'd0;
		storage_mem_level0 <= 7'd0;
		storage_mem_produce <= 6'd0;
		storage_mem_consume <= 6'd0;
		controllerinjector_refresher_state <= 2'd0;
		controllerinjector_bankmachine0_state <= 3'd0;
		controllerinjector_bankmachine1_state <= 3'd0;
		controllerinjector_bankmachine2_state <= 3'd0;
		controllerinjector_bankmachine3_state <= 3'd0;
		controllerinjector_multiplexer_state <= 3'd0;
		controllerinjector_state <= 2'd0;
		controllerinjector_roundrobin0_grant <= 2'd0;
		controllerinjector_roundrobin1_grant <= 2'd0;
		controllerinjector_roundrobin2_grant <= 2'd0;
		controllerinjector_roundrobin3_grant <= 2'd0;
		controllerinjector_new_master_wdata_ready0 <= 1'd0;
		controllerinjector_new_master_wdata_ready1 <= 1'd0;
		controllerinjector_new_master_wdata_ready2 <= 1'd0;
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
		controllerinjector_new_master_rdata_valid15 <= 1'd0;
		controllerinjector_new_master_rdata_valid16 <= 1'd0;
		controllerinjector_new_master_rdata_valid17 <= 1'd0;
		cache_state <= 3'd0;
		litedramwishbonebridge_state <= 2'd0;
		litedrambistgenerator_state <= 2'd0;
		fsm0_state <= 2'd0;
		fsm1_state <= 2'd0;
		uartwishbonebridge_state <= 3'd0;
		litescopeanalyzer_state <= 2'd0;
		memtestsoc_grant <= 2'd0;
		memtestsoc_slave_sel_r <= 4'd0;
		memtestsoc_interface0_dat_r <= 8'd0;
		memtestsoc_interface1_dat_r <= 8'd0;
		memtestsoc_interface2_dat_r <= 8'd0;
		memtestsoc_interface3_dat_r <= 8'd0;
		memtestsoc_interface4_dat_r <= 8'd0;
		memtestsoc_interface5_dat_r <= 8'd0;
		memtestsoc_interface6_dat_r <= 8'd0;
		memtestsoc_interface7_dat_r <= 8'd0;
	end else begin
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
		if ((i == 1'd1)) begin
			clk <= 1'd1;
			miso <= spiflash_miso;
		end
		if ((i == 2'd3)) begin
			i <= 1'd0;
			clk <= 1'd0;
			sr <= {sr[30:0], miso};
		end else begin
			i <= (i + 1'd1);
		end
		if ((((bus_cyc & bus_stb) & (i == 2'd3)) & (counter == 1'd0))) begin
			cs_n <= 1'd0;
			sr[31:24] <= 4'd11;
		end
		if ((counter == 6'd32)) begin
			sr[31:8] <= {bus_adr, {2{1'd0}}};
		end
		if ((counter == 8'd128)) begin
		end
		if ((counter == 9'd288)) begin
			bus_ack <= 1'd1;
			cs_n <= 1'd1;
		end
		if ((counter == 9'd289)) begin
			bus_ack <= 1'd0;
		end
		if ((counter == 9'd293)) begin
		end
		if ((counter == 9'd293)) begin
			counter <= 1'd0;
		end else begin
			if ((counter != 1'd0)) begin
				counter <= (counter + 1'd1);
			end else begin
				if (((bus_cyc & bus_stb) & (i == 2'd3))) begin
					counter <= 1'd1;
				end
			end
		end
		ddrphy_phase_sys <= ddrphy_phase_half;
		if ((ddrphy_bitslip_cnt == 1'd1)) begin
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
		if ((controllerinjector_counter == 4'd10)) begin
			controllerinjector_seq_done <= 1'd1;
		end
		if ((controllerinjector_counter == 4'd10)) begin
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
			controllerinjector_count <= 10'd652;
		end
		controllerinjector_refresher_state <= controllerinjector_refresher_next_state;
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
		controllerinjector_bankmachine0_state <= controllerinjector_bankmachine0_next_state;
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
		controllerinjector_bankmachine1_state <= controllerinjector_bankmachine1_next_state;
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
		controllerinjector_bankmachine2_state <= controllerinjector_bankmachine2_next_state;
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
		controllerinjector_bankmachine3_state <= controllerinjector_bankmachine3_next_state;
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
							if (controllerinjector_choose_cmd_request[0]) begin
								controllerinjector_choose_cmd_grant <= 1'd0;
							end
						end
					end
				end
				2'd2: begin
					if (controllerinjector_choose_cmd_request[3]) begin
						controllerinjector_choose_cmd_grant <= 2'd3;
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
				2'd3: begin
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
							if (controllerinjector_choose_req_request[0]) begin
								controllerinjector_choose_req_grant <= 1'd0;
							end
						end
					end
				end
				2'd2: begin
					if (controllerinjector_choose_req_request[3]) begin
						controllerinjector_choose_req_grant <= 2'd3;
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
				2'd3: begin
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
			endcase
		end
		controllerinjector_dfi_p0_address <= array_muxed6;
		controllerinjector_dfi_p0_bank <= array_muxed7;
		controllerinjector_dfi_p0_cas_n <= (~array_muxed8);
		controllerinjector_dfi_p0_ras_n <= (~array_muxed9);
		controllerinjector_dfi_p0_we_n <= (~array_muxed10);
		controllerinjector_dfi_p0_rddata_en <= array_muxed11;
		controllerinjector_dfi_p0_wrdata_en <= array_muxed12;
		controllerinjector_dfi_p1_address <= array_muxed13;
		controllerinjector_dfi_p1_bank <= array_muxed14;
		controllerinjector_dfi_p1_cas_n <= (~array_muxed15);
		controllerinjector_dfi_p1_ras_n <= (~array_muxed16);
		controllerinjector_dfi_p1_we_n <= (~array_muxed17);
		controllerinjector_dfi_p1_rddata_en <= array_muxed18;
		controllerinjector_dfi_p1_wrdata_en <= array_muxed19;
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
		controllerinjector_new_master_wdata_ready0 <= ((((1'd0 | ((controllerinjector_roundrobin0_grant == 1'd0) & controllerinjector_interface_bank0_wdata_ready)) | ((controllerinjector_roundrobin1_grant == 1'd0) & controllerinjector_interface_bank1_wdata_ready)) | ((controllerinjector_roundrobin2_grant == 1'd0) & controllerinjector_interface_bank2_wdata_ready)) | ((controllerinjector_roundrobin3_grant == 1'd0) & controllerinjector_interface_bank3_wdata_ready));
		controllerinjector_new_master_wdata_ready1 <= ((((1'd0 | ((controllerinjector_roundrobin0_grant == 1'd1) & controllerinjector_interface_bank0_wdata_ready)) | ((controllerinjector_roundrobin1_grant == 1'd1) & controllerinjector_interface_bank1_wdata_ready)) | ((controllerinjector_roundrobin2_grant == 1'd1) & controllerinjector_interface_bank2_wdata_ready)) | ((controllerinjector_roundrobin3_grant == 1'd1) & controllerinjector_interface_bank3_wdata_ready));
		controllerinjector_new_master_wdata_ready2 <= ((((1'd0 | ((controllerinjector_roundrobin0_grant == 2'd2) & controllerinjector_interface_bank0_wdata_ready)) | ((controllerinjector_roundrobin1_grant == 2'd2) & controllerinjector_interface_bank1_wdata_ready)) | ((controllerinjector_roundrobin2_grant == 2'd2) & controllerinjector_interface_bank2_wdata_ready)) | ((controllerinjector_roundrobin3_grant == 2'd2) & controllerinjector_interface_bank3_wdata_ready));
		controllerinjector_new_master_rdata_valid0 <= ((((1'd0 | ((controllerinjector_roundrobin0_grant == 1'd0) & controllerinjector_interface_bank0_rdata_valid)) | ((controllerinjector_roundrobin1_grant == 1'd0) & controllerinjector_interface_bank1_rdata_valid)) | ((controllerinjector_roundrobin2_grant == 1'd0) & controllerinjector_interface_bank2_rdata_valid)) | ((controllerinjector_roundrobin3_grant == 1'd0) & controllerinjector_interface_bank3_rdata_valid));
		controllerinjector_new_master_rdata_valid1 <= controllerinjector_new_master_rdata_valid0;
		controllerinjector_new_master_rdata_valid2 <= controllerinjector_new_master_rdata_valid1;
		controllerinjector_new_master_rdata_valid3 <= controllerinjector_new_master_rdata_valid2;
		controllerinjector_new_master_rdata_valid4 <= controllerinjector_new_master_rdata_valid3;
		controllerinjector_new_master_rdata_valid5 <= controllerinjector_new_master_rdata_valid4;
		controllerinjector_new_master_rdata_valid6 <= ((((1'd0 | ((controllerinjector_roundrobin0_grant == 1'd1) & controllerinjector_interface_bank0_rdata_valid)) | ((controllerinjector_roundrobin1_grant == 1'd1) & controllerinjector_interface_bank1_rdata_valid)) | ((controllerinjector_roundrobin2_grant == 1'd1) & controllerinjector_interface_bank2_rdata_valid)) | ((controllerinjector_roundrobin3_grant == 1'd1) & controllerinjector_interface_bank3_rdata_valid));
		controllerinjector_new_master_rdata_valid7 <= controllerinjector_new_master_rdata_valid6;
		controllerinjector_new_master_rdata_valid8 <= controllerinjector_new_master_rdata_valid7;
		controllerinjector_new_master_rdata_valid9 <= controllerinjector_new_master_rdata_valid8;
		controllerinjector_new_master_rdata_valid10 <= controllerinjector_new_master_rdata_valid9;
		controllerinjector_new_master_rdata_valid11 <= controllerinjector_new_master_rdata_valid10;
		controllerinjector_new_master_rdata_valid12 <= ((((1'd0 | ((controllerinjector_roundrobin0_grant == 2'd2) & controllerinjector_interface_bank0_rdata_valid)) | ((controllerinjector_roundrobin1_grant == 2'd2) & controllerinjector_interface_bank1_rdata_valid)) | ((controllerinjector_roundrobin2_grant == 2'd2) & controllerinjector_interface_bank2_rdata_valid)) | ((controllerinjector_roundrobin3_grant == 2'd2) & controllerinjector_interface_bank3_rdata_valid));
		controllerinjector_new_master_rdata_valid13 <= controllerinjector_new_master_rdata_valid12;
		controllerinjector_new_master_rdata_valid14 <= controllerinjector_new_master_rdata_valid13;
		controllerinjector_new_master_rdata_valid15 <= controllerinjector_new_master_rdata_valid14;
		controllerinjector_new_master_rdata_valid16 <= controllerinjector_new_master_rdata_valid15;
		controllerinjector_new_master_rdata_valid17 <= controllerinjector_new_master_rdata_valid16;
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
			if (((litedramwriteportupconverter_converter_demux == 1'd1) | litedramwriteportupconverter_converter_sink_last)) begin
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
			endcase
		end
		if (litedramwriteportupconverter_converter_load_part) begin
			litedramwriteportupconverter_converter_source_payload_valid_token_count <= (litedramwriteportupconverter_converter_demux + 1'd1);
		end
		if (litedramreadportupconverter_counter_ce) begin
			litedramreadportupconverter_counter <= (litedramreadportupconverter_counter + 1'd1);
		end
		if ((litedramreadportupconverter_rdata_converter_source_valid & litedramreadportupconverter_rdata_converter_source_ready)) begin
			litedramreadportupconverter_rdata_chunk <= {litedramreadportupconverter_rdata_chunk[0], litedramreadportupconverter_rdata_chunk[1]};
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
		adr_offset_r <= interface0_wb_sdram_adr[0];
		cache_state <= cache_next_state;
		litedramwishbonebridge_state <= litedramwishbonebridge_next_state;
		if (eventsourceprocess0_clear) begin
			eventsourceprocess0_pending <= 1'd0;
		end
		eventsourceprocess0_old_trigger <= eventsourceprocess0_trigger;
		if (((~eventsourceprocess0_trigger) & eventsourceprocess0_old_trigger)) begin
			eventsourceprocess0_pending <= 1'd1;
		end
		if (eventsourceprocess1_clear) begin
			eventsourceprocess1_pending <= 1'd0;
		end
		eventsourceprocess1_old_trigger <= eventsourceprocess1_trigger;
		if (((~eventsourceprocess1_trigger) & eventsourceprocess1_old_trigger)) begin
			eventsourceprocess1_pending <= 1'd1;
		end
		if (eventsourceprocess2_clear) begin
			eventsourceprocess2_pending <= 1'd0;
		end
		eventsourceprocess2_old_trigger <= eventsourceprocess2_trigger;
		if (((~eventsourceprocess2_trigger) & eventsourceprocess2_old_trigger)) begin
			eventsourceprocess2_pending <= 1'd1;
		end
		if (eventsourceprocess3_clear) begin
			eventsourceprocess3_pending <= 1'd0;
		end
		eventsourceprocess3_old_trigger <= eventsourceprocess3_trigger;
		if (((~eventsourceprocess3_trigger) & eventsourceprocess3_old_trigger)) begin
			eventsourceprocess3_pending <= 1'd1;
		end
		if (eventsourceprocess4_clear) begin
			eventsourceprocess4_pending <= 1'd0;
		end
		eventsourceprocess4_old_trigger <= eventsourceprocess4_trigger;
		if (((~eventsourceprocess4_trigger) & eventsourceprocess4_old_trigger)) begin
			eventsourceprocess4_pending <= 1'd1;
		end
		if (waittimer0_wait) begin
			if ((~waittimer0_done)) begin
				waittimer0_count <= (waittimer0_count - 1'd1);
			end
		end else begin
			waittimer0_count <= 20'd833333;
		end
		if (waittimer1_wait) begin
			if ((~waittimer1_done)) begin
				waittimer1_count <= (waittimer1_count - 1'd1);
			end
		end else begin
			waittimer1_count <= 20'd833333;
		end
		if (waittimer2_wait) begin
			if ((~waittimer2_done)) begin
				waittimer2_count <= (waittimer2_count - 1'd1);
			end
		end else begin
			waittimer2_count <= 20'd833333;
		end
		if (waittimer3_wait) begin
			if ((~waittimer3_done)) begin
				waittimer3_count <= (waittimer3_count - 1'd1);
			end
		end else begin
			waittimer3_count <= 20'd833333;
		end
		if (waittimer4_wait) begin
			if ((~waittimer4_done)) begin
				waittimer4_count <= (waittimer4_count - 1'd1);
			end
		end else begin
			waittimer4_count <= 20'd833333;
		end
		if (generator_core_reset) begin
			generator_core_fifo_level <= 5'd0;
			generator_core_fifo_produce <= 4'd0;
			generator_core_fifo_consume <= 4'd0;
			generator_core_o <= 32'd0;
			generator_core_state <= 31'd0;
			generator_core_cmd_counter <= 24'd0;
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
				generator_core_state <= {(~(generator_core_state[26] ^ generator_core_state[29])), (~(generator_core_state[25] ^ generator_core_state[28])), (~(generator_core_state[24] ^ generator_core_state[27])), (~(generator_core_state[23] ^ generator_core_state[26])), (~(generator_core_state[22] ^ generator_core_state[25])), (~(generator_core_state[21] ^ generator_core_state[24])), (~(generator_core_state[20] ^ generator_core_state[23])), (~(generator_core_state[19] ^ generator_core_state[22])), (~(generator_core_state[18] ^ generator_core_state[21])), (~(generator_core_state[17] ^ generator_core_state[20])), (~(generator_core_state[16] ^ generator_core_state[19])), (~(generator_core_state[15] ^ generator_core_state[18])), (~(generator_core_state[14] ^ generator_core_state[17])), (~(generator_core_state[13] ^ generator_core_state[16])), (~(generator_core_state[12] ^ generator_core_state[15])), (~(generator_core_state[11] ^ generator_core_state[14])), (~(generator_core_state[10] ^ generator_core_state[13])), (~(generator_core_state[9] ^ generator_core_state[12])), (~(generator_core_state[8] ^ generator_core_state[11])), (~(generator_core_state[7] ^ generator_core_state[10])), (~(generator_core_state[6] ^ generator_core_state[9])), (~(generator_core_state[5] ^ generator_core_state[8])), (~(generator_core_state[4] ^ generator_core_state[7])), (~(generator_core_state[3] ^ generator_core_state[6])), (~(generator_core_state[2] ^ generator_core_state[5])), (~(generator_core_state[1] ^ generator_core_state[4])), (~(generator_core_state[0] ^ generator_core_state[3])), (~((~(generator_core_state[27] ^ generator_core_state[30])) ^ generator_core_state[2])), (~((~(generator_core_state[26] ^ generator_core_state[29])) ^ generator_core_state[1])), (~((~(generator_core_state[25] ^ generator_core_state[28])) ^ generator_core_state[0])), (~((~(generator_core_state[24] ^ generator_core_state[27])) ^ (~(generator_core_state[27] ^ generator_core_state[30]))))};
				generator_core_o <= {(~(generator_core_state[27] ^ generator_core_state[30])), (~(generator_core_state[26] ^ generator_core_state[29])), (~(generator_core_state[25] ^ generator_core_state[28])), (~(generator_core_state[24] ^ generator_core_state[27])), (~(generator_core_state[23] ^ generator_core_state[26])), (~(generator_core_state[22] ^ generator_core_state[25])), (~(generator_core_state[21] ^ generator_core_state[24])), (~(generator_core_state[20] ^ generator_core_state[23])), (~(generator_core_state[19] ^ generator_core_state[22])), (~(generator_core_state[18] ^ generator_core_state[21])), (~(generator_core_state[17] ^ generator_core_state[20])), (~(generator_core_state[16] ^ generator_core_state[19])), (~(generator_core_state[15] ^ generator_core_state[18])), (~(generator_core_state[14] ^ generator_core_state[17])), (~(generator_core_state[13] ^ generator_core_state[16])), (~(generator_core_state[12] ^ generator_core_state[15])), (~(generator_core_state[11] ^ generator_core_state[14])), (~(generator_core_state[10] ^ generator_core_state[13])), (~(generator_core_state[9] ^ generator_core_state[12])), (~(generator_core_state[8] ^ generator_core_state[11])), (~(generator_core_state[7] ^ generator_core_state[10])), (~(generator_core_state[6] ^ generator_core_state[9])), (~(generator_core_state[5] ^ generator_core_state[8])), (~(generator_core_state[4] ^ generator_core_state[7])), (~(generator_core_state[3] ^ generator_core_state[6])), (~(generator_core_state[2] ^ generator_core_state[5])), (~(generator_core_state[1] ^ generator_core_state[4])), (~(generator_core_state[0] ^ generator_core_state[3])), (~((~(generator_core_state[27] ^ generator_core_state[30])) ^ generator_core_state[2])), (~((~(generator_core_state[26] ^ generator_core_state[29])) ^ generator_core_state[1])), (~((~(generator_core_state[25] ^ generator_core_state[28])) ^ generator_core_state[0])), (~((~(generator_core_state[24] ^ generator_core_state[27])) ^ (~(generator_core_state[27] ^ generator_core_state[30]))))};
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
			checker_core_state <= 31'd0;
			checker_core_cmd_counter <= 24'd0;
			checker_core_data_counter <= 24'd0;
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
				checker_core_state <= {(~(checker_core_state[26] ^ checker_core_state[29])), (~(checker_core_state[25] ^ checker_core_state[28])), (~(checker_core_state[24] ^ checker_core_state[27])), (~(checker_core_state[23] ^ checker_core_state[26])), (~(checker_core_state[22] ^ checker_core_state[25])), (~(checker_core_state[21] ^ checker_core_state[24])), (~(checker_core_state[20] ^ checker_core_state[23])), (~(checker_core_state[19] ^ checker_core_state[22])), (~(checker_core_state[18] ^ checker_core_state[21])), (~(checker_core_state[17] ^ checker_core_state[20])), (~(checker_core_state[16] ^ checker_core_state[19])), (~(checker_core_state[15] ^ checker_core_state[18])), (~(checker_core_state[14] ^ checker_core_state[17])), (~(checker_core_state[13] ^ checker_core_state[16])), (~(checker_core_state[12] ^ checker_core_state[15])), (~(checker_core_state[11] ^ checker_core_state[14])), (~(checker_core_state[10] ^ checker_core_state[13])), (~(checker_core_state[9] ^ checker_core_state[12])), (~(checker_core_state[8] ^ checker_core_state[11])), (~(checker_core_state[7] ^ checker_core_state[10])), (~(checker_core_state[6] ^ checker_core_state[9])), (~(checker_core_state[5] ^ checker_core_state[8])), (~(checker_core_state[4] ^ checker_core_state[7])), (~(checker_core_state[3] ^ checker_core_state[6])), (~(checker_core_state[2] ^ checker_core_state[5])), (~(checker_core_state[1] ^ checker_core_state[4])), (~(checker_core_state[0] ^ checker_core_state[3])), (~((~(checker_core_state[27] ^ checker_core_state[30])) ^ checker_core_state[2])), (~((~(checker_core_state[26] ^ checker_core_state[29])) ^ checker_core_state[1])), (~((~(checker_core_state[25] ^ checker_core_state[28])) ^ checker_core_state[0])), (~((~(checker_core_state[24] ^ checker_core_state[27])) ^ (~(checker_core_state[27] ^ checker_core_state[30]))))};
				checker_core_o <= {(~(checker_core_state[27] ^ checker_core_state[30])), (~(checker_core_state[26] ^ checker_core_state[29])), (~(checker_core_state[25] ^ checker_core_state[28])), (~(checker_core_state[24] ^ checker_core_state[27])), (~(checker_core_state[23] ^ checker_core_state[26])), (~(checker_core_state[22] ^ checker_core_state[25])), (~(checker_core_state[21] ^ checker_core_state[24])), (~(checker_core_state[20] ^ checker_core_state[23])), (~(checker_core_state[19] ^ checker_core_state[22])), (~(checker_core_state[18] ^ checker_core_state[21])), (~(checker_core_state[17] ^ checker_core_state[20])), (~(checker_core_state[16] ^ checker_core_state[19])), (~(checker_core_state[15] ^ checker_core_state[18])), (~(checker_core_state[14] ^ checker_core_state[17])), (~(checker_core_state[13] ^ checker_core_state[16])), (~(checker_core_state[12] ^ checker_core_state[15])), (~(checker_core_state[11] ^ checker_core_state[14])), (~(checker_core_state[10] ^ checker_core_state[13])), (~(checker_core_state[9] ^ checker_core_state[12])), (~(checker_core_state[8] ^ checker_core_state[11])), (~(checker_core_state[7] ^ checker_core_state[10])), (~(checker_core_state[6] ^ checker_core_state[9])), (~(checker_core_state[5] ^ checker_core_state[8])), (~(checker_core_state[4] ^ checker_core_state[7])), (~(checker_core_state[3] ^ checker_core_state[6])), (~(checker_core_state[2] ^ checker_core_state[5])), (~(checker_core_state[1] ^ checker_core_state[4])), (~(checker_core_state[0] ^ checker_core_state[3])), (~((~(checker_core_state[27] ^ checker_core_state[30])) ^ checker_core_state[2])), (~((~(checker_core_state[26] ^ checker_core_state[29])) ^ checker_core_state[1])), (~((~(checker_core_state[25] ^ checker_core_state[28])) ^ checker_core_state[0])), (~((~(checker_core_state[24] ^ checker_core_state[27])) ^ (~(checker_core_state[27] ^ checker_core_state[30]))))};
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
		suart_phy_sink_ready <= 1'd0;
		if (((suart_phy_sink_valid & (~suart_phy_tx_busy)) & (~suart_phy_sink_ready))) begin
			suart_phy_tx_reg <= suart_phy_sink_payload_data;
			suart_phy_tx_bitcount <= 1'd0;
			suart_phy_tx_busy <= 1'd1;
			suart_tx <= 1'd0;
		end else begin
			if ((suart_phy_uart_clk_txen & suart_phy_tx_busy)) begin
				suart_phy_tx_bitcount <= (suart_phy_tx_bitcount + 1'd1);
				if ((suart_phy_tx_bitcount == 4'd8)) begin
					suart_tx <= 1'd1;
				end else begin
					if ((suart_phy_tx_bitcount == 4'd9)) begin
						suart_tx <= 1'd1;
						suart_phy_tx_busy <= 1'd0;
						suart_phy_sink_ready <= 1'd1;
					end else begin
						suart_tx <= suart_phy_tx_reg[0];
						suart_phy_tx_reg <= {1'd0, suart_phy_tx_reg[7:1]};
					end
				end
			end
		end
		if (suart_phy_tx_busy) begin
			{suart_phy_uart_clk_txen, suart_phy_phase_accumulator_tx} <= (suart_phy_phase_accumulator_tx + suart_phy_storage);
		end else begin
			{suart_phy_uart_clk_txen, suart_phy_phase_accumulator_tx} <= 1'd0;
		end
		suart_phy_source_valid <= 1'd0;
		suart_phy_rx_r <= suart_phy_rx;
		if ((~suart_phy_rx_busy)) begin
			if (((~suart_phy_rx) & suart_phy_rx_r)) begin
				suart_phy_rx_busy <= 1'd1;
				suart_phy_rx_bitcount <= 1'd0;
			end
		end else begin
			if (suart_phy_uart_clk_rxen) begin
				suart_phy_rx_bitcount <= (suart_phy_rx_bitcount + 1'd1);
				if ((suart_phy_rx_bitcount == 1'd0)) begin
					if (suart_phy_rx) begin
						suart_phy_rx_busy <= 1'd0;
					end
				end else begin
					if ((suart_phy_rx_bitcount == 4'd9)) begin
						suart_phy_rx_busy <= 1'd0;
						if (suart_phy_rx) begin
							suart_phy_source_payload_data <= suart_phy_rx_reg;
							suart_phy_source_valid <= 1'd1;
						end
					end else begin
						suart_phy_rx_reg <= {suart_phy_rx, suart_phy_rx_reg[7:1]};
					end
				end
			end
		end
		if (suart_phy_rx_busy) begin
			{suart_phy_uart_clk_rxen, suart_phy_phase_accumulator_rx} <= (suart_phy_phase_accumulator_rx + suart_phy_storage);
		end else begin
			{suart_phy_uart_clk_rxen, suart_phy_phase_accumulator_rx} <= 32'd2147483648;
		end
		if (suart_uart_tx_clear) begin
			suart_uart_tx_pending <= 1'd0;
		end
		suart_uart_tx_old_trigger <= suart_uart_tx_trigger;
		if (((~suart_uart_tx_trigger) & suart_uart_tx_old_trigger)) begin
			suart_uart_tx_pending <= 1'd1;
		end
		if (suart_uart_rx_clear) begin
			suart_uart_rx_pending <= 1'd0;
		end
		suart_uart_rx_old_trigger <= suart_uart_rx_trigger;
		if (((~suart_uart_rx_trigger) & suart_uart_rx_old_trigger)) begin
			suart_uart_rx_pending <= 1'd1;
		end
		if (((suart_uart_tx_fifo_syncfifo_we & suart_uart_tx_fifo_syncfifo_writable) & (~suart_uart_tx_fifo_replace))) begin
			suart_uart_tx_fifo_produce <= (suart_uart_tx_fifo_produce + 1'd1);
		end
		if (suart_uart_tx_fifo_do_read) begin
			suart_uart_tx_fifo_consume <= (suart_uart_tx_fifo_consume + 1'd1);
		end
		if (((suart_uart_tx_fifo_syncfifo_we & suart_uart_tx_fifo_syncfifo_writable) & (~suart_uart_tx_fifo_replace))) begin
			if ((~suart_uart_tx_fifo_do_read)) begin
				suart_uart_tx_fifo_level <= (suart_uart_tx_fifo_level + 1'd1);
			end
		end else begin
			if (suart_uart_tx_fifo_do_read) begin
				suart_uart_tx_fifo_level <= (suart_uart_tx_fifo_level - 1'd1);
			end
		end
		if (((suart_uart_rx_fifo_syncfifo_we & suart_uart_rx_fifo_syncfifo_writable) & (~suart_uart_rx_fifo_replace))) begin
			suart_uart_rx_fifo_produce <= (suart_uart_rx_fifo_produce + 1'd1);
		end
		if (suart_uart_rx_fifo_do_read) begin
			suart_uart_rx_fifo_consume <= (suart_uart_rx_fifo_consume + 1'd1);
		end
		if (((suart_uart_rx_fifo_syncfifo_we & suart_uart_rx_fifo_syncfifo_writable) & (~suart_uart_rx_fifo_replace))) begin
			if ((~suart_uart_rx_fifo_do_read)) begin
				suart_uart_rx_fifo_level <= (suart_uart_rx_fifo_level + 1'd1);
			end
		end else begin
			if (suart_uart_rx_fifo_do_read) begin
				suart_uart_rx_fifo_level <= (suart_uart_rx_fifo_level - 1'd1);
			end
		end
		if (uartbridge_byte_counter_reset) begin
			uartbridge_byte_counter <= 1'd0;
		end else begin
			if (uartbridge_byte_counter_ce) begin
				uartbridge_byte_counter <= (uartbridge_byte_counter + 1'd1);
			end
		end
		if (uartbridge_word_counter_reset) begin
			uartbridge_word_counter <= 1'd0;
		end else begin
			if (uartbridge_word_counter_ce) begin
				uartbridge_word_counter <= (uartbridge_word_counter + 1'd1);
			end
		end
		if (uartbridge_cmd_ce) begin
			uartbridge_cmd <= uartbridge_source_payload_data;
		end
		if (uartbridge_length_ce) begin
			uartbridge_length <= uartbridge_source_payload_data;
		end
		if (uartbridge_address_ce) begin
			uartbridge_address <= {uartbridge_address[23:0], uartbridge_source_payload_data};
		end
		if (uartbridge_rx_data_ce) begin
			uartbridge_data <= {uartbridge_data[23:0], uartbridge_source_payload_data};
		end else begin
			if (uartbridge_tx_data_ce) begin
				uartbridge_data <= uartbridge_wishbone_dat_r;
			end
		end
		uartbridge_sink_ready <= 1'd0;
		if (((uartbridge_sink_valid & (~uartbridge_tx_busy)) & (~uartbridge_sink_ready))) begin
			uartbridge_tx_reg <= uartbridge_sink_payload_data;
			uartbridge_tx_bitcount <= 1'd0;
			uartbridge_tx_busy <= 1'd1;
			serial_tx <= 1'd0;
		end else begin
			if ((uartbridge_uart_clk_txen & uartbridge_tx_busy)) begin
				uartbridge_tx_bitcount <= (uartbridge_tx_bitcount + 1'd1);
				if ((uartbridge_tx_bitcount == 4'd8)) begin
					serial_tx <= 1'd1;
				end else begin
					if ((uartbridge_tx_bitcount == 4'd9)) begin
						serial_tx <= 1'd1;
						uartbridge_tx_busy <= 1'd0;
						uartbridge_sink_ready <= 1'd1;
					end else begin
						serial_tx <= uartbridge_tx_reg[0];
						uartbridge_tx_reg <= {1'd0, uartbridge_tx_reg[7:1]};
					end
				end
			end
		end
		if (uartbridge_tx_busy) begin
			{uartbridge_uart_clk_txen, uartbridge_phase_accumulator_tx} <= (uartbridge_phase_accumulator_tx + uartbridge_storage);
		end else begin
			{uartbridge_uart_clk_txen, uartbridge_phase_accumulator_tx} <= 1'd0;
		end
		uartbridge_source_valid <= 1'd0;
		uartbridge_rx_r <= uartbridge_rx;
		if ((~uartbridge_rx_busy)) begin
			if (((~uartbridge_rx) & uartbridge_rx_r)) begin
				uartbridge_rx_busy <= 1'd1;
				uartbridge_rx_bitcount <= 1'd0;
			end
		end else begin
			if (uartbridge_uart_clk_rxen) begin
				uartbridge_rx_bitcount <= (uartbridge_rx_bitcount + 1'd1);
				if ((uartbridge_rx_bitcount == 1'd0)) begin
					if (uartbridge_rx) begin
						uartbridge_rx_busy <= 1'd0;
					end
				end else begin
					if ((uartbridge_rx_bitcount == 4'd9)) begin
						uartbridge_rx_busy <= 1'd0;
						if (uartbridge_rx) begin
							uartbridge_source_payload_data <= uartbridge_rx_reg;
							uartbridge_source_valid <= 1'd1;
						end
					end else begin
						uartbridge_rx_reg <= {uartbridge_rx, uartbridge_rx_reg[7:1]};
					end
				end
			end
		end
		if (uartbridge_rx_busy) begin
			{uartbridge_uart_clk_rxen, uartbridge_phase_accumulator_rx} <= (uartbridge_phase_accumulator_rx + uartbridge_storage);
		end else begin
			{uartbridge_uart_clk_rxen, uartbridge_phase_accumulator_rx} <= 32'd2147483648;
		end
		if (uartbridge_reset) begin
			uartwishbonebridge_state <= 3'd0;
		end else begin
			uartwishbonebridge_state <= uartwishbonebridge_next_state;
		end
		if (uartbridge_wait) begin
			if ((~uartbridge_done)) begin
				uartbridge_count <= (uartbridge_count - 1'd1);
			end
		end else begin
			uartbridge_count <= 23'd8333333;
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
					end else begin
						if (memtestsoc_request[2]) begin
							memtestsoc_grant <= 2'd2;
						end
					end
				end
			end
			1'd1: begin
				if ((~memtestsoc_request[1])) begin
					if (memtestsoc_request[2]) begin
						memtestsoc_grant <= 2'd2;
					end else begin
						if (memtestsoc_request[0]) begin
							memtestsoc_grant <= 1'd0;
						end
					end
				end
			end
			2'd2: begin
				if ((~memtestsoc_request[2])) begin
					if (memtestsoc_request[0]) begin
						memtestsoc_grant <= 1'd0;
					end else begin
						if (memtestsoc_request[1]) begin
							memtestsoc_grant <= 1'd1;
						end
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
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_length0_w;
				end
				5'd28: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_offset0_w;
				end
				5'd29: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_idle_w;
				end
				5'd30: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_wait_w;
				end
				5'd31: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_run_w;
				end
				6'd32: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_mem_valid_w;
				end
				6'd33: begin
					memtestsoc_interface0_dat_r <= storage_mem_ready_w;
				end
				6'd34: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_mem_data11_w;
				end
				6'd35: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_mem_data10_w;
				end
				6'd36: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_mem_data9_w;
				end
				6'd37: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_mem_data8_w;
				end
				6'd38: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_mem_data7_w;
				end
				6'd39: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_mem_data6_w;
				end
				6'd40: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_mem_data5_w;
				end
				6'd41: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_mem_data4_w;
				end
				6'd42: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_mem_data3_w;
				end
				6'd43: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_mem_data2_w;
				end
				6'd44: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_mem_data1_w;
				end
				6'd45: begin
					memtestsoc_interface0_dat_r <= memtestsoc_csrbank0_storage_mem_data0_w;
				end
			endcase
		end
		if (memtestsoc_csrbank0_frontend_trigger_value11_re) begin
			frontend_trigger_value_storage_full[88] <= memtestsoc_csrbank0_frontend_trigger_value11_r;
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
			frontend_trigger_mask_storage_full[88] <= memtestsoc_csrbank0_frontend_trigger_mask11_r;
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
		if (memtestsoc_csrbank0_storage_length0_re) begin
			storage_length_storage_full[6:0] <= memtestsoc_csrbank0_storage_length0_r;
		end
		storage_length_re <= memtestsoc_csrbank0_storage_length0_re;
		if (memtestsoc_csrbank0_storage_offset0_re) begin
			storage_offset_storage_full[6:0] <= memtestsoc_csrbank0_storage_offset0_r;
		end
		storage_offset_re <= memtestsoc_csrbank0_storage_offset0_re;
		memtestsoc_interface1_dat_r <= 1'd0;
		if (memtestsoc_csrbank1_sel) begin
			case (memtestsoc_interface1_adr[2:0])
				1'd0: begin
					memtestsoc_interface1_dat_r <= memtestsoc_csrbank1_leds_out0_w;
				end
				1'd1: begin
					memtestsoc_interface1_dat_r <= memtestsoc_csrbank1_switches_in_w;
				end
				2'd2: begin
					memtestsoc_interface1_dat_r <= eventmanager_status_w;
				end
				2'd3: begin
					memtestsoc_interface1_dat_r <= eventmanager_pending_w;
				end
				3'd4: begin
					memtestsoc_interface1_dat_r <= memtestsoc_csrbank1_buttons_ev_enable0_w;
				end
			endcase
		end
		if (memtestsoc_csrbank1_leds_out0_re) begin
			leds_storage_full[7:0] <= memtestsoc_csrbank1_leds_out0_r;
		end
		leds_re <= memtestsoc_csrbank1_leds_out0_re;
		if (memtestsoc_csrbank1_buttons_ev_enable0_re) begin
			eventmanager_storage_full[4:0] <= memtestsoc_csrbank1_buttons_ev_enable0_r;
		end
		eventmanager_re <= memtestsoc_csrbank1_buttons_ev_enable0_re;
		memtestsoc_interface2_dat_r <= 1'd0;
		if (memtestsoc_csrbank2_sel) begin
			case (memtestsoc_interface2_adr[3:0])
				1'd0: begin
					memtestsoc_interface2_dat_r <= checker_reset_w;
				end
				1'd1: begin
					memtestsoc_interface2_dat_r <= checker_start_w;
				end
				2'd2: begin
					memtestsoc_interface2_dat_r <= memtestsoc_csrbank2_base2_w;
				end
				2'd3: begin
					memtestsoc_interface2_dat_r <= memtestsoc_csrbank2_base1_w;
				end
				3'd4: begin
					memtestsoc_interface2_dat_r <= memtestsoc_csrbank2_base0_w;
				end
				3'd5: begin
					memtestsoc_interface2_dat_r <= memtestsoc_csrbank2_length2_w;
				end
				3'd6: begin
					memtestsoc_interface2_dat_r <= memtestsoc_csrbank2_length1_w;
				end
				3'd7: begin
					memtestsoc_interface2_dat_r <= memtestsoc_csrbank2_length0_w;
				end
				4'd8: begin
					memtestsoc_interface2_dat_r <= memtestsoc_csrbank2_done_w;
				end
				4'd9: begin
					memtestsoc_interface2_dat_r <= memtestsoc_csrbank2_err_count3_w;
				end
				4'd10: begin
					memtestsoc_interface2_dat_r <= memtestsoc_csrbank2_err_count2_w;
				end
				4'd11: begin
					memtestsoc_interface2_dat_r <= memtestsoc_csrbank2_err_count1_w;
				end
				4'd12: begin
					memtestsoc_interface2_dat_r <= memtestsoc_csrbank2_err_count0_w;
				end
			endcase
		end
		if (memtestsoc_csrbank2_base2_re) begin
			checker_base_storage_full[23:16] <= memtestsoc_csrbank2_base2_r;
		end
		if (memtestsoc_csrbank2_base1_re) begin
			checker_base_storage_full[15:8] <= memtestsoc_csrbank2_base1_r;
		end
		if (memtestsoc_csrbank2_base0_re) begin
			checker_base_storage_full[7:0] <= memtestsoc_csrbank2_base0_r;
		end
		checker_base_re <= memtestsoc_csrbank2_base0_re;
		if (memtestsoc_csrbank2_length2_re) begin
			checker_length_storage_full[23:16] <= memtestsoc_csrbank2_length2_r;
		end
		if (memtestsoc_csrbank2_length1_re) begin
			checker_length_storage_full[15:8] <= memtestsoc_csrbank2_length1_r;
		end
		if (memtestsoc_csrbank2_length0_re) begin
			checker_length_storage_full[7:0] <= memtestsoc_csrbank2_length0_r;
		end
		checker_length_re <= memtestsoc_csrbank2_length0_re;
		memtestsoc_interface3_dat_r <= 1'd0;
		if (memtestsoc_csrbank3_sel) begin
			case (memtestsoc_interface3_adr[3:0])
				1'd0: begin
					memtestsoc_interface3_dat_r <= generator_reset_w;
				end
				1'd1: begin
					memtestsoc_interface3_dat_r <= generator_start_w;
				end
				2'd2: begin
					memtestsoc_interface3_dat_r <= memtestsoc_csrbank3_done_w;
				end
				2'd3: begin
					memtestsoc_interface3_dat_r <= memtestsoc_csrbank3_base2_w;
				end
				3'd4: begin
					memtestsoc_interface3_dat_r <= memtestsoc_csrbank3_base1_w;
				end
				3'd5: begin
					memtestsoc_interface3_dat_r <= memtestsoc_csrbank3_base0_w;
				end
				3'd6: begin
					memtestsoc_interface3_dat_r <= memtestsoc_csrbank3_length2_w;
				end
				3'd7: begin
					memtestsoc_interface3_dat_r <= memtestsoc_csrbank3_length1_w;
				end
				4'd8: begin
					memtestsoc_interface3_dat_r <= memtestsoc_csrbank3_length0_w;
				end
			endcase
		end
		if (memtestsoc_csrbank3_base2_re) begin
			generator_base_storage_full[23:16] <= memtestsoc_csrbank3_base2_r;
		end
		if (memtestsoc_csrbank3_base1_re) begin
			generator_base_storage_full[15:8] <= memtestsoc_csrbank3_base1_r;
		end
		if (memtestsoc_csrbank3_base0_re) begin
			generator_base_storage_full[7:0] <= memtestsoc_csrbank3_base0_r;
		end
		generator_base_re <= memtestsoc_csrbank3_base0_re;
		if (memtestsoc_csrbank3_length2_re) begin
			generator_length_storage_full[23:16] <= memtestsoc_csrbank3_length2_r;
		end
		if (memtestsoc_csrbank3_length1_re) begin
			generator_length_storage_full[15:8] <= memtestsoc_csrbank3_length1_r;
		end
		if (memtestsoc_csrbank3_length0_re) begin
			generator_length_storage_full[7:0] <= memtestsoc_csrbank3_length0_r;
		end
		generator_length_re <= memtestsoc_csrbank3_length0_re;
		memtestsoc_interface4_dat_r <= 1'd0;
		if (memtestsoc_csrbank4_sel) begin
			case (memtestsoc_interface4_adr[5:0])
				1'd0: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_dna_id7_w;
				end
				1'd1: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_dna_id6_w;
				end
				2'd2: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_dna_id5_w;
				end
				2'd3: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_dna_id4_w;
				end
				3'd4: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_dna_id3_w;
				end
				3'd5: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_dna_id2_w;
				end
				3'd6: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_dna_id1_w;
				end
				3'd7: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_dna_id0_w;
				end
				4'd8: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_git_commit19_w;
				end
				4'd9: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_git_commit18_w;
				end
				4'd10: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_git_commit17_w;
				end
				4'd11: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_git_commit16_w;
				end
				4'd12: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_git_commit15_w;
				end
				4'd13: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_git_commit14_w;
				end
				4'd14: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_git_commit13_w;
				end
				4'd15: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_git_commit12_w;
				end
				5'd16: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_git_commit11_w;
				end
				5'd17: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_git_commit10_w;
				end
				5'd18: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_git_commit9_w;
				end
				5'd19: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_git_commit8_w;
				end
				5'd20: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_git_commit7_w;
				end
				5'd21: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_git_commit6_w;
				end
				5'd22: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_git_commit5_w;
				end
				5'd23: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_git_commit4_w;
				end
				5'd24: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_git_commit3_w;
				end
				5'd25: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_git_commit2_w;
				end
				5'd26: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_git_commit1_w;
				end
				5'd27: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_git_commit0_w;
				end
				5'd28: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_platform_platform7_w;
				end
				5'd29: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_platform_platform6_w;
				end
				5'd30: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_platform_platform5_w;
				end
				5'd31: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_platform_platform4_w;
				end
				6'd32: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_platform_platform3_w;
				end
				6'd33: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_platform_platform2_w;
				end
				6'd34: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_platform_platform1_w;
				end
				6'd35: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_platform_platform0_w;
				end
				6'd36: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_platform_target7_w;
				end
				6'd37: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_platform_target6_w;
				end
				6'd38: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_platform_target5_w;
				end
				6'd39: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_platform_target4_w;
				end
				6'd40: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_platform_target3_w;
				end
				6'd41: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_platform_target2_w;
				end
				6'd42: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_platform_target1_w;
				end
				6'd43: begin
					memtestsoc_interface4_dat_r <= memtestsoc_csrbank4_platform_target0_w;
				end
			endcase
		end
		memtestsoc_interface5_dat_r <= 1'd0;
		if (memtestsoc_csrbank5_sel) begin
			case (memtestsoc_interface5_adr[5:0])
				1'd0: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_dfii_control0_w;
				end
				1'd1: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_dfii_pi0_command0_w;
				end
				2'd2: begin
					memtestsoc_interface5_dat_r <= controllerinjector_phaseinjector0_command_issue_w;
				end
				2'd3: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_dfii_pi0_address1_w;
				end
				3'd4: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_dfii_pi0_address0_w;
				end
				3'd5: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_dfii_pi0_baddress0_w;
				end
				3'd6: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_dfii_pi0_wrdata3_w;
				end
				3'd7: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_dfii_pi0_wrdata2_w;
				end
				4'd8: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_dfii_pi0_wrdata1_w;
				end
				4'd9: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_dfii_pi0_wrdata0_w;
				end
				4'd10: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_dfii_pi0_rddata3_w;
				end
				4'd11: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_dfii_pi0_rddata2_w;
				end
				4'd12: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_dfii_pi0_rddata1_w;
				end
				4'd13: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_dfii_pi0_rddata0_w;
				end
				4'd14: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_dfii_pi1_command0_w;
				end
				4'd15: begin
					memtestsoc_interface5_dat_r <= controllerinjector_phaseinjector1_command_issue_w;
				end
				5'd16: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_dfii_pi1_address1_w;
				end
				5'd17: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_dfii_pi1_address0_w;
				end
				5'd18: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_dfii_pi1_baddress0_w;
				end
				5'd19: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_dfii_pi1_wrdata3_w;
				end
				5'd20: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_dfii_pi1_wrdata2_w;
				end
				5'd21: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_dfii_pi1_wrdata1_w;
				end
				5'd22: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_dfii_pi1_wrdata0_w;
				end
				5'd23: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_dfii_pi1_rddata3_w;
				end
				5'd24: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_dfii_pi1_rddata2_w;
				end
				5'd25: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_dfii_pi1_rddata1_w;
				end
				5'd26: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_dfii_pi1_rddata0_w;
				end
				5'd27: begin
					memtestsoc_interface5_dat_r <= controllerinjector_bandwidth_update_w;
				end
				5'd28: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_controller_bandwidth_nreads2_w;
				end
				5'd29: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_controller_bandwidth_nreads1_w;
				end
				5'd30: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_controller_bandwidth_nreads0_w;
				end
				5'd31: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_controller_bandwidth_nwrites2_w;
				end
				6'd32: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_controller_bandwidth_nwrites1_w;
				end
				6'd33: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_controller_bandwidth_nwrites0_w;
				end
				6'd34: begin
					memtestsoc_interface5_dat_r <= memtestsoc_csrbank5_controller_bandwidth_data_width_w;
				end
			endcase
		end
		if (memtestsoc_csrbank5_dfii_control0_re) begin
			controllerinjector_storage_full[3:0] <= memtestsoc_csrbank5_dfii_control0_r;
		end
		controllerinjector_re <= memtestsoc_csrbank5_dfii_control0_re;
		if (memtestsoc_csrbank5_dfii_pi0_command0_re) begin
			controllerinjector_phaseinjector0_command_storage_full[5:0] <= memtestsoc_csrbank5_dfii_pi0_command0_r;
		end
		controllerinjector_phaseinjector0_command_re <= memtestsoc_csrbank5_dfii_pi0_command0_re;
		if (memtestsoc_csrbank5_dfii_pi0_address1_re) begin
			controllerinjector_phaseinjector0_address_storage_full[12:8] <= memtestsoc_csrbank5_dfii_pi0_address1_r;
		end
		if (memtestsoc_csrbank5_dfii_pi0_address0_re) begin
			controllerinjector_phaseinjector0_address_storage_full[7:0] <= memtestsoc_csrbank5_dfii_pi0_address0_r;
		end
		controllerinjector_phaseinjector0_address_re <= memtestsoc_csrbank5_dfii_pi0_address0_re;
		if (memtestsoc_csrbank5_dfii_pi0_baddress0_re) begin
			controllerinjector_phaseinjector0_baddress_storage_full[1:0] <= memtestsoc_csrbank5_dfii_pi0_baddress0_r;
		end
		controllerinjector_phaseinjector0_baddress_re <= memtestsoc_csrbank5_dfii_pi0_baddress0_re;
		if (memtestsoc_csrbank5_dfii_pi0_wrdata3_re) begin
			controllerinjector_phaseinjector0_wrdata_storage_full[31:24] <= memtestsoc_csrbank5_dfii_pi0_wrdata3_r;
		end
		if (memtestsoc_csrbank5_dfii_pi0_wrdata2_re) begin
			controllerinjector_phaseinjector0_wrdata_storage_full[23:16] <= memtestsoc_csrbank5_dfii_pi0_wrdata2_r;
		end
		if (memtestsoc_csrbank5_dfii_pi0_wrdata1_re) begin
			controllerinjector_phaseinjector0_wrdata_storage_full[15:8] <= memtestsoc_csrbank5_dfii_pi0_wrdata1_r;
		end
		if (memtestsoc_csrbank5_dfii_pi0_wrdata0_re) begin
			controllerinjector_phaseinjector0_wrdata_storage_full[7:0] <= memtestsoc_csrbank5_dfii_pi0_wrdata0_r;
		end
		controllerinjector_phaseinjector0_wrdata_re <= memtestsoc_csrbank5_dfii_pi0_wrdata0_re;
		if (memtestsoc_csrbank5_dfii_pi1_command0_re) begin
			controllerinjector_phaseinjector1_command_storage_full[5:0] <= memtestsoc_csrbank5_dfii_pi1_command0_r;
		end
		controllerinjector_phaseinjector1_command_re <= memtestsoc_csrbank5_dfii_pi1_command0_re;
		if (memtestsoc_csrbank5_dfii_pi1_address1_re) begin
			controllerinjector_phaseinjector1_address_storage_full[12:8] <= memtestsoc_csrbank5_dfii_pi1_address1_r;
		end
		if (memtestsoc_csrbank5_dfii_pi1_address0_re) begin
			controllerinjector_phaseinjector1_address_storage_full[7:0] <= memtestsoc_csrbank5_dfii_pi1_address0_r;
		end
		controllerinjector_phaseinjector1_address_re <= memtestsoc_csrbank5_dfii_pi1_address0_re;
		if (memtestsoc_csrbank5_dfii_pi1_baddress0_re) begin
			controllerinjector_phaseinjector1_baddress_storage_full[1:0] <= memtestsoc_csrbank5_dfii_pi1_baddress0_r;
		end
		controllerinjector_phaseinjector1_baddress_re <= memtestsoc_csrbank5_dfii_pi1_baddress0_re;
		if (memtestsoc_csrbank5_dfii_pi1_wrdata3_re) begin
			controllerinjector_phaseinjector1_wrdata_storage_full[31:24] <= memtestsoc_csrbank5_dfii_pi1_wrdata3_r;
		end
		if (memtestsoc_csrbank5_dfii_pi1_wrdata2_re) begin
			controllerinjector_phaseinjector1_wrdata_storage_full[23:16] <= memtestsoc_csrbank5_dfii_pi1_wrdata2_r;
		end
		if (memtestsoc_csrbank5_dfii_pi1_wrdata1_re) begin
			controllerinjector_phaseinjector1_wrdata_storage_full[15:8] <= memtestsoc_csrbank5_dfii_pi1_wrdata1_r;
		end
		if (memtestsoc_csrbank5_dfii_pi1_wrdata0_re) begin
			controllerinjector_phaseinjector1_wrdata_storage_full[7:0] <= memtestsoc_csrbank5_dfii_pi1_wrdata0_r;
		end
		controllerinjector_phaseinjector1_wrdata_re <= memtestsoc_csrbank5_dfii_pi1_wrdata0_re;
		memtestsoc_interface6_dat_r <= 1'd0;
		if (memtestsoc_csrbank6_sel) begin
			case (memtestsoc_interface6_adr[4:0])
				1'd0: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_load3_w;
				end
				1'd1: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_load2_w;
				end
				2'd2: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_load1_w;
				end
				2'd3: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_load0_w;
				end
				3'd4: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_reload3_w;
				end
				3'd5: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_reload2_w;
				end
				3'd6: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_reload1_w;
				end
				3'd7: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_reload0_w;
				end
				4'd8: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_en0_w;
				end
				4'd9: begin
					memtestsoc_interface6_dat_r <= memtestsoc_update_value_w;
				end
				4'd10: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_value3_w;
				end
				4'd11: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_value2_w;
				end
				4'd12: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_value1_w;
				end
				4'd13: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_value0_w;
				end
				4'd14: begin
					memtestsoc_interface6_dat_r <= memtestsoc_eventmanager_status_w;
				end
				4'd15: begin
					memtestsoc_interface6_dat_r <= memtestsoc_eventmanager_pending_w;
				end
				5'd16: begin
					memtestsoc_interface6_dat_r <= memtestsoc_csrbank6_ev_enable0_w;
				end
			endcase
		end
		if (memtestsoc_csrbank6_load3_re) begin
			memtestsoc_load_storage_full[31:24] <= memtestsoc_csrbank6_load3_r;
		end
		if (memtestsoc_csrbank6_load2_re) begin
			memtestsoc_load_storage_full[23:16] <= memtestsoc_csrbank6_load2_r;
		end
		if (memtestsoc_csrbank6_load1_re) begin
			memtestsoc_load_storage_full[15:8] <= memtestsoc_csrbank6_load1_r;
		end
		if (memtestsoc_csrbank6_load0_re) begin
			memtestsoc_load_storage_full[7:0] <= memtestsoc_csrbank6_load0_r;
		end
		memtestsoc_load_re <= memtestsoc_csrbank6_load0_re;
		if (memtestsoc_csrbank6_reload3_re) begin
			memtestsoc_reload_storage_full[31:24] <= memtestsoc_csrbank6_reload3_r;
		end
		if (memtestsoc_csrbank6_reload2_re) begin
			memtestsoc_reload_storage_full[23:16] <= memtestsoc_csrbank6_reload2_r;
		end
		if (memtestsoc_csrbank6_reload1_re) begin
			memtestsoc_reload_storage_full[15:8] <= memtestsoc_csrbank6_reload1_r;
		end
		if (memtestsoc_csrbank6_reload0_re) begin
			memtestsoc_reload_storage_full[7:0] <= memtestsoc_csrbank6_reload0_r;
		end
		memtestsoc_reload_re <= memtestsoc_csrbank6_reload0_re;
		if (memtestsoc_csrbank6_en0_re) begin
			memtestsoc_en_storage_full <= memtestsoc_csrbank6_en0_r;
		end
		memtestsoc_en_re <= memtestsoc_csrbank6_en0_re;
		if (memtestsoc_csrbank6_ev_enable0_re) begin
			memtestsoc_eventmanager_storage_full <= memtestsoc_csrbank6_ev_enable0_r;
		end
		memtestsoc_eventmanager_re <= memtestsoc_csrbank6_ev_enable0_re;
		memtestsoc_interface7_dat_r <= 1'd0;
		if (memtestsoc_csrbank7_sel) begin
			case (memtestsoc_interface7_adr[2:0])
				1'd0: begin
					memtestsoc_interface7_dat_r <= suart_uart_rxtx_w;
				end
				1'd1: begin
					memtestsoc_interface7_dat_r <= memtestsoc_csrbank7_txfull_w;
				end
				2'd2: begin
					memtestsoc_interface7_dat_r <= memtestsoc_csrbank7_rxempty_w;
				end
				2'd3: begin
					memtestsoc_interface7_dat_r <= suart_uart_status_w;
				end
				3'd4: begin
					memtestsoc_interface7_dat_r <= suart_uart_pending_w;
				end
				3'd5: begin
					memtestsoc_interface7_dat_r <= memtestsoc_csrbank7_ev_enable0_w;
				end
			endcase
		end
		if (memtestsoc_csrbank7_ev_enable0_re) begin
			suart_uart_storage_full[1:0] <= memtestsoc_csrbank7_ev_enable0_r;
		end
		suart_uart_re <= memtestsoc_csrbank7_ev_enable0_re;
	end
	xilinxmultiregimpl0_regs0 <= switches;
	xilinxmultiregimpl0_regs1 <= xilinxmultiregimpl0_regs0;
	xilinxmultiregimpl1_regs0 <= generator_reset_sync_toggle_i;
	xilinxmultiregimpl1_regs1 <= xilinxmultiregimpl1_regs0;
	xilinxmultiregimpl2_regs0 <= generator_start_sync_toggle_i;
	xilinxmultiregimpl2_regs1 <= xilinxmultiregimpl2_regs0;
	xilinxmultiregimpl3_regs0 <= generator_done_sync_i;
	xilinxmultiregimpl3_regs1 <= xilinxmultiregimpl3_regs0;
	xilinxmultiregimpl4_regs0 <= generator_base_sync_ping_toggle_i;
	xilinxmultiregimpl4_regs1 <= xilinxmultiregimpl4_regs0;
	xilinxmultiregimpl5_regs0 <= generator_base_sync_pong_toggle_i;
	xilinxmultiregimpl5_regs1 <= xilinxmultiregimpl5_regs0;
	xilinxmultiregimpl6_regs0 <= generator_base_sync_ibuffer;
	xilinxmultiregimpl6_regs1 <= xilinxmultiregimpl6_regs0;
	xilinxmultiregimpl7_regs0 <= generator_length_sync_ping_toggle_i;
	xilinxmultiregimpl7_regs1 <= xilinxmultiregimpl7_regs0;
	xilinxmultiregimpl8_regs0 <= generator_length_sync_pong_toggle_i;
	xilinxmultiregimpl8_regs1 <= xilinxmultiregimpl8_regs0;
	xilinxmultiregimpl9_regs0 <= generator_length_sync_ibuffer;
	xilinxmultiregimpl9_regs1 <= xilinxmultiregimpl9_regs0;
	xilinxmultiregimpl10_regs0 <= checker_reset_sync_toggle_i;
	xilinxmultiregimpl10_regs1 <= xilinxmultiregimpl10_regs0;
	xilinxmultiregimpl11_regs0 <= checker_start_sync_toggle_i;
	xilinxmultiregimpl11_regs1 <= xilinxmultiregimpl11_regs0;
	xilinxmultiregimpl12_regs0 <= checker_done_sync_i;
	xilinxmultiregimpl12_regs1 <= xilinxmultiregimpl12_regs0;
	xilinxmultiregimpl13_regs0 <= checker_base_sync_ping_toggle_i;
	xilinxmultiregimpl13_regs1 <= xilinxmultiregimpl13_regs0;
	xilinxmultiregimpl14_regs0 <= checker_base_sync_pong_toggle_i;
	xilinxmultiregimpl14_regs1 <= xilinxmultiregimpl14_regs0;
	xilinxmultiregimpl15_regs0 <= checker_base_sync_ibuffer;
	xilinxmultiregimpl15_regs1 <= xilinxmultiregimpl15_regs0;
	xilinxmultiregimpl16_regs0 <= checker_length_sync_ping_toggle_i;
	xilinxmultiregimpl16_regs1 <= xilinxmultiregimpl16_regs0;
	xilinxmultiregimpl17_regs0 <= checker_length_sync_pong_toggle_i;
	xilinxmultiregimpl17_regs1 <= xilinxmultiregimpl17_regs0;
	xilinxmultiregimpl18_regs0 <= checker_length_sync_ibuffer;
	xilinxmultiregimpl18_regs1 <= xilinxmultiregimpl18_regs0;
	xilinxmultiregimpl19_regs0 <= checker_err_count_sync_ping_toggle_i;
	xilinxmultiregimpl19_regs1 <= xilinxmultiregimpl19_regs0;
	xilinxmultiregimpl20_regs0 <= checker_err_count_sync_pong_toggle_i;
	xilinxmultiregimpl20_regs1 <= xilinxmultiregimpl20_regs0;
	xilinxmultiregimpl21_regs0 <= checker_err_count_sync_ibuffer;
	xilinxmultiregimpl21_regs1 <= xilinxmultiregimpl21_regs0;
	xilinxmultiregimpl22_regs0 <= suart_rx;
	xilinxmultiregimpl22_regs1 <= xilinxmultiregimpl22_regs0;
	xilinxmultiregimpl23_regs0 <= serial_rx;
	xilinxmultiregimpl23_regs1 <= xilinxmultiregimpl23_regs0;
	xilinxmultiregimpl24_regs0 <= frontend_trigger_value_storage;
	xilinxmultiregimpl24_regs1 <= xilinxmultiregimpl24_regs0;
	xilinxmultiregimpl25_regs0 <= frontend_trigger_mask_storage;
	xilinxmultiregimpl25_regs1 <= xilinxmultiregimpl25_regs0;
	xilinxmultiregimpl26_regs0 <= frontend_subsampler_value_storage;
	xilinxmultiregimpl26_regs1 <= xilinxmultiregimpl26_regs0;
	xilinxmultiregimpl27_regs0 <= frontend_asyncfifo_graycounter0_q;
	xilinxmultiregimpl27_regs1 <= xilinxmultiregimpl27_regs0;
	xilinxmultiregimpl28_regs0 <= frontend_asyncfifo_graycounter1_q;
	xilinxmultiregimpl28_regs1 <= xilinxmultiregimpl28_regs0;
end

lm32_cpu #(
	.eba_reset(32'h20080000)
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

reg [31:0] mem[0:4095];
reg [11:0] memadr;
always @(posedge sys_clk) begin
	if (memtestsoc_sram_we[0])
		mem[memtestsoc_sram_adr][7:0] <= memtestsoc_sram_dat_w[7:0];
	if (memtestsoc_sram_we[1])
		mem[memtestsoc_sram_adr][15:8] <= memtestsoc_sram_dat_w[15:8];
	if (memtestsoc_sram_we[2])
		mem[memtestsoc_sram_adr][23:16] <= memtestsoc_sram_dat_w[23:16];
	if (memtestsoc_sram_we[3])
		mem[memtestsoc_sram_adr][31:24] <= memtestsoc_sram_dat_w[31:24];
	memadr <= memtestsoc_sram_adr;
end

assign memtestsoc_sram_dat_r = mem[memadr];

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
	.CLKFBOUT_MULT(5'd20),
	.CLKFBOUT_PHASE(0.0),
	.CLKIN1_PERIOD(10.0),
	.CLKIN2_PERIOD(0.0),
	.CLKOUT0_DIVIDE(2'd2),
	.CLKOUT0_DUTY_CYCLE(0.5),
	.CLKOUT0_PHASE(0.0),
	.CLKOUT1_DIVIDE(2'd2),
	.CLKOUT1_DUTY_CYCLE(0.5),
	.CLKOUT1_PHASE(0.0),
	.CLKOUT2_DIVIDE(3'd4),
	.CLKOUT2_DUTY_CYCLE(0.5),
	.CLKOUT2_PHASE(270.0),
	.CLKOUT3_DIVIDE(3'd4),
	.CLKOUT3_DUTY_CYCLE(0.5),
	.CLKOUT3_PHASE(270.0),
	.CLKOUT4_DIVIDE(4'd8),
	.CLKOUT4_DUTY_CYCLE(0.5),
	.CLKOUT4_PHASE(0.0),
	.CLKOUT5_DIVIDE(4'd8),
	.CLKOUT5_DUTY_CYCLE(0.5),
	.CLKOUT5_PHASE(0.0),
	.CLK_FEEDBACK("CLKFBOUT"),
	.COMPENSATION("INTERNAL"),
	.DIVCLK_DIVIDE(2'd3),
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
	.CLKOUT1(crg_unbuf_unused),
	.CLKOUT2(crg_unbuf_sdram_half_a),
	.CLKOUT3(crg_unbuf_sdram_half_b),
	.CLKOUT4(crg_unbuf_periph),
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
	.Q(ddram_clock_p)
);

ODDR2 #(
	.DDR_ALIGNMENT("NONE"),
	.INIT(1'd0),
	.SRTYPE("SYNC")
) ODDR2_1 (
	.C0(crg_clk_sdram_half_shifted),
	.C1((~crg_clk_sdram_half_shifted)),
	.CE(1'd1),
	.D0(1'd0),
	.D1(1'd1),
	.R(1'd0),
	.S(1'd0),
	.Q(ddram_clock_n)
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

DNA_PORT DNA_PORT(
	.CLK(dna_cnt[0]),
	.DIN(dna_status[56]),
	.READ((dna_cnt < 2'd2)),
	.SHIFT(1'd1),
	.DOUT(dna_do)
);

ODDR2 #(
	.DDR_ALIGNMENT("C1"),
	.INIT(1'd0),
	.SRTYPE("ASYNC")
) ODDR2_2 (
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
	.DDR_ALIGNMENT("C1"),
	.INIT(1'd0),
	.SRTYPE("ASYNC")
) ODDR2_3 (
	.C0(sdram_half_clk),
	.C1(ddrphy_sdram_half_clk_n),
	.CE(1'd1),
	.D0(ddrphy_dqs_t_d0),
	.D1(ddrphy_dqs_t_d1),
	.R(1'd0),
	.S(1'd0),
	.Q(ddrphy_dqs_t[0])
);

OBUFT OBUFT(
	.I(ddrphy_dqs_o[0]),
	.T(ddrphy_dqs_t[0]),
	.O(ddram_dqs[0])
);

ODDR2 #(
	.DDR_ALIGNMENT("C1"),
	.INIT(1'd0),
	.SRTYPE("ASYNC")
) ODDR2_4 (
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
	.DDR_ALIGNMENT("C1"),
	.INIT(1'd0),
	.SRTYPE("ASYNC")
) ODDR2_5 (
	.C0(sdram_half_clk),
	.C1(ddrphy_sdram_half_clk_n),
	.CE(1'd1),
	.D0(ddrphy_dqs_t_d0),
	.D1(ddrphy_dqs_t_d1),
	.R(1'd0),
	.S(1'd0),
	.Q(ddrphy_dqs_t[1])
);

OBUFT OBUFT_1(
	.I(ddrphy_dqs_o[1]),
	.T(ddrphy_dqs_t[1]),
	.O(ddram_dqs[1])
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
	.T4(ddrphy_drive_dq_n0),
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
	.T4(ddrphy_drive_dq_n0),
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
	.T4(ddrphy_drive_dq_n0),
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
	.T4(ddrphy_drive_dq_n0),
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
	.T4(ddrphy_drive_dq_n0),
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
	.T4(ddrphy_drive_dq_n0),
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
	.T4(ddrphy_drive_dq_n0),
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
	.T4(ddrphy_drive_dq_n0),
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
	.T4(ddrphy_drive_dq_n0),
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
	.T4(ddrphy_drive_dq_n0),
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
	.T4(ddrphy_drive_dq_n0),
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
	.T4(ddrphy_drive_dq_n0),
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
	.T4(ddrphy_drive_dq_n0),
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
	.T4(ddrphy_drive_dq_n0),
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
	.T4(ddrphy_drive_dq_n0),
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
	.T4(ddrphy_drive_dq_n0),
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

reg [22:0] storage[0:7];
reg [2:0] memadr_1;
always @(posedge sys_clk) begin
	if (controllerinjector_bankmachine0_wrport_we)
		storage[controllerinjector_bankmachine0_wrport_adr] <= controllerinjector_bankmachine0_wrport_dat_w;
	memadr_1 <= controllerinjector_bankmachine0_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign controllerinjector_bankmachine0_wrport_dat_r = storage[memadr_1];
assign controllerinjector_bankmachine0_rdport_dat_r = storage[controllerinjector_bankmachine0_rdport_adr];

reg [22:0] storage_1[0:7];
reg [2:0] memadr_2;
always @(posedge sys_clk) begin
	if (controllerinjector_bankmachine1_wrport_we)
		storage_1[controllerinjector_bankmachine1_wrport_adr] <= controllerinjector_bankmachine1_wrport_dat_w;
	memadr_2 <= controllerinjector_bankmachine1_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign controllerinjector_bankmachine1_wrport_dat_r = storage_1[memadr_2];
assign controllerinjector_bankmachine1_rdport_dat_r = storage_1[controllerinjector_bankmachine1_rdport_adr];

reg [22:0] storage_2[0:7];
reg [2:0] memadr_3;
always @(posedge sys_clk) begin
	if (controllerinjector_bankmachine2_wrport_we)
		storage_2[controllerinjector_bankmachine2_wrport_adr] <= controllerinjector_bankmachine2_wrport_dat_w;
	memadr_3 <= controllerinjector_bankmachine2_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign controllerinjector_bankmachine2_wrport_dat_r = storage_2[memadr_3];
assign controllerinjector_bankmachine2_rdport_dat_r = storage_2[controllerinjector_bankmachine2_rdport_adr];

reg [22:0] storage_3[0:7];
reg [2:0] memadr_4;
always @(posedge sys_clk) begin
	if (controllerinjector_bankmachine3_wrport_we)
		storage_3[controllerinjector_bankmachine3_wrport_adr] <= controllerinjector_bankmachine3_wrport_dat_w;
	memadr_4 <= controllerinjector_bankmachine3_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign controllerinjector_bankmachine3_wrport_dat_r = storage_3[memadr_4];
assign controllerinjector_bankmachine3_rdport_dat_r = storage_3[controllerinjector_bankmachine3_rdport_adr];

reg [63:0] data_mem[0:1023];
reg [9:0] memadr_5;
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
	memadr_5 <= data_port_adr;
end

assign data_port_dat_r = data_mem[memadr_5];

reg [21:0] tag_mem[0:1023];
reg [9:0] memadr_6;
always @(posedge sys_clk) begin
	if (tag_port_we)
		tag_mem[tag_port_adr] <= tag_port_dat_w;
	memadr_6 <= tag_port_adr;
end

assign tag_port_dat_r = tag_mem[memadr_6];

reg [32:0] storage_4[0:15];
reg [3:0] memadr_7;
always @(posedge sys_clk) begin
	if (generator_core_fifo_wrport_we)
		storage_4[generator_core_fifo_wrport_adr] <= generator_core_fifo_wrport_dat_w;
	memadr_7 <= generator_core_fifo_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign generator_core_fifo_wrport_dat_r = storage_4[memadr_7];
assign generator_core_fifo_rdport_dat_r = storage_4[generator_core_fifo_rdport_adr];

reg [2:0] storage_5[0:3];
reg [1:0] memadr_8;
always @(posedge sys_clk) begin
	if (litedramreadportupconverter_cmd_buffer_wrport_we)
		storage_5[litedramreadportupconverter_cmd_buffer_wrport_adr] <= litedramreadportupconverter_cmd_buffer_wrport_dat_w;
	memadr_8 <= litedramreadportupconverter_cmd_buffer_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign litedramreadportupconverter_cmd_buffer_wrport_dat_r = storage_5[memadr_8];
assign litedramreadportupconverter_cmd_buffer_rdport_dat_r = storage_5[litedramreadportupconverter_cmd_buffer_rdport_adr];

reg [32:0] storage_6[0:15];
reg [3:0] memadr_9;
always @(posedge sys_clk) begin
	if (checker_core_fifo_wrport_we)
		storage_6[checker_core_fifo_wrport_adr] <= checker_core_fifo_wrport_dat_w;
	memadr_9 <= checker_core_fifo_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign checker_core_fifo_wrport_dat_r = storage_6[memadr_9];
assign checker_core_fifo_rdport_dat_r = storage_6[checker_core_fifo_rdport_adr];

reg [8:0] storage_7[0:15];
reg [3:0] memadr_10;
always @(posedge sys_clk) begin
	if (suart_uart_tx_fifo_wrport_we)
		storage_7[suart_uart_tx_fifo_wrport_adr] <= suart_uart_tx_fifo_wrport_dat_w;
	memadr_10 <= suart_uart_tx_fifo_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign suart_uart_tx_fifo_wrport_dat_r = storage_7[memadr_10];
assign suart_uart_tx_fifo_rdport_dat_r = storage_7[suart_uart_tx_fifo_rdport_adr];

reg [8:0] storage_8[0:15];
reg [3:0] memadr_11;
always @(posedge sys_clk) begin
	if (suart_uart_rx_fifo_wrport_we)
		storage_8[suart_uart_rx_fifo_wrport_adr] <= suart_uart_rx_fifo_wrport_dat_w;
	memadr_11 <= suart_uart_rx_fifo_wrport_adr;
end

always @(posedge sys_clk) begin
end

assign suart_uart_rx_fifo_wrport_dat_r = storage_8[memadr_11];
assign suart_uart_rx_fifo_rdport_dat_r = storage_8[suart_uart_rx_fifo_rdport_adr];

reg [90:0] storage_9[0:7];
reg [2:0] memadr_12;
reg [2:0] memadr_13;
always @(posedge sys_clk) begin
	if (frontend_asyncfifo_wrport_we)
		storage_9[frontend_asyncfifo_wrport_adr] <= frontend_asyncfifo_wrport_dat_w;
	memadr_12 <= frontend_asyncfifo_wrport_adr;
end

always @(posedge sys_clk) begin
	memadr_13 <= frontend_asyncfifo_rdport_adr;
end

assign frontend_asyncfifo_wrport_dat_r = storage_9[memadr_12];
assign frontend_asyncfifo_rdport_dat_r = storage_9[memadr_13];

reg [89:0] storage_10[0:63];
reg [5:0] memadr_14;
reg [5:0] memadr_15;
always @(posedge sys_clk) begin
	if (storage_mem_wrport_we)
		storage_10[storage_mem_wrport_adr] <= storage_mem_wrport_dat_w;
	memadr_14 <= storage_mem_wrport_adr;
end

always @(posedge sys_clk) begin
	if (storage_mem_rdport_re)
		memadr_15 <= storage_mem_rdport_adr;
end

assign storage_mem_wrport_dat_r = storage_10[memadr_14];
assign storage_mem_rdport_dat_r = storage_10[memadr_15];

FDPE #(
	.INIT(1'd1)
) FDPE (
	.C(por_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(((~user_btn5) | crg_reset)),
	.Q(rst10)
);

FDPE #(
	.INIT(1'd1)
) FDPE_1 (
	.C(por_clk),
	.CE(1'd1),
	.D(rst10),
	.PRE(((~user_btn5) | crg_reset)),
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
	.C(base50_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE((sys_rst | (~crg_dcm_base50_locked))),
	.Q(rst12)
);

FDPE #(
	.INIT(1'd1)
) FDPE_5 (
	.C(base50_clk),
	.CE(1'd1),
	.D(rst12),
	.PRE((sys_rst | (~crg_dcm_base50_locked))),
	.Q(base50_rst)
);

endmodule
