#ifndef __GENERATED_CSR_H
#define __GENERATED_CSR_H
#include <stdint.h>
#ifdef CSR_ACCESSORS_DEFINED
extern void csr_writeb(uint8_t value, uint32_t addr);
extern uint8_t csr_readb(uint32_t addr);
extern void csr_writew(uint16_t value, uint32_t addr);
extern uint16_t csr_readw(uint32_t addr);
extern void csr_writel(uint32_t value, uint32_t addr);
extern uint32_t csr_readl(uint32_t addr);
#else /* ! CSR_ACCESSORS_DEFINED */
#include <hw/common.h>
#endif /* ! CSR_ACCESSORS_DEFINED */

/* ctrl */
#define CSR_CTRL_BASE 0xe0000000
#define CSR_CTRL_RESET_ADDR 0xe0000000
#define CSR_CTRL_RESET_SIZE 1
static inline unsigned char ctrl_reset_read(void) {
	unsigned char r = csr_readl(0xe0000000);
	return r;
}
static inline void ctrl_reset_write(unsigned char value) {
	csr_writel(value, 0xe0000000);
}
#define CSR_CTRL_SCRATCH_ADDR 0xe0000004
#define CSR_CTRL_SCRATCH_SIZE 4
static inline unsigned int ctrl_scratch_read(void) {
	unsigned int r = csr_readl(0xe0000004);
	r <<= 8;
	r |= csr_readl(0xe0000008);
	r <<= 8;
	r |= csr_readl(0xe000000c);
	r <<= 8;
	r |= csr_readl(0xe0000010);
	return r;
}
static inline void ctrl_scratch_write(unsigned int value) {
	csr_writel(value >> 24, 0xe0000004);
	csr_writel(value >> 16, 0xe0000008);
	csr_writel(value >> 8, 0xe000000c);
	csr_writel(value, 0xe0000010);
}
#define CSR_CTRL_BUS_ERRORS_ADDR 0xe0000014
#define CSR_CTRL_BUS_ERRORS_SIZE 4
static inline unsigned int ctrl_bus_errors_read(void) {
	unsigned int r = csr_readl(0xe0000014);
	r <<= 8;
	r |= csr_readl(0xe0000018);
	r <<= 8;
	r |= csr_readl(0xe000001c);
	r <<= 8;
	r |= csr_readl(0xe0000020);
	return r;
}

/* encoder_reader */
#define CSR_ENCODER_READER_BASE 0xe000e000
#define CSR_ENCODER_READER_BASE_ADDR 0xe000e000
#define CSR_ENCODER_READER_BASE_SIZE 4
static inline unsigned int encoder_reader_base_read(void) {
	unsigned int r = csr_readl(0xe000e000);
	r <<= 8;
	r |= csr_readl(0xe000e004);
	r <<= 8;
	r |= csr_readl(0xe000e008);
	r <<= 8;
	r |= csr_readl(0xe000e00c);
	return r;
}
static inline void encoder_reader_base_write(unsigned int value) {
	csr_writel(value >> 24, 0xe000e000);
	csr_writel(value >> 16, 0xe000e004);
	csr_writel(value >> 8, 0xe000e008);
	csr_writel(value, 0xe000e00c);
}
#define CSR_ENCODER_READER_H_WIDTH_ADDR 0xe000e010
#define CSR_ENCODER_READER_H_WIDTH_SIZE 2
static inline unsigned short int encoder_reader_h_width_read(void) {
	unsigned short int r = csr_readl(0xe000e010);
	r <<= 8;
	r |= csr_readl(0xe000e014);
	return r;
}
static inline void encoder_reader_h_width_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000e010);
	csr_writel(value, 0xe000e014);
}
#define CSR_ENCODER_READER_V_WIDTH_ADDR 0xe000e018
#define CSR_ENCODER_READER_V_WIDTH_SIZE 2
static inline unsigned short int encoder_reader_v_width_read(void) {
	unsigned short int r = csr_readl(0xe000e018);
	r <<= 8;
	r |= csr_readl(0xe000e01c);
	return r;
}
static inline void encoder_reader_v_width_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000e018);
	csr_writel(value, 0xe000e01c);
}
#define CSR_ENCODER_READER_START_ADDR 0xe000e020
#define CSR_ENCODER_READER_START_SIZE 1
static inline unsigned char encoder_reader_start_read(void) {
	unsigned char r = csr_readl(0xe000e020);
	return r;
}
static inline void encoder_reader_start_write(unsigned char value) {
	csr_writel(value, 0xe000e020);
}
#define CSR_ENCODER_READER_DONE_ADDR 0xe000e024
#define CSR_ENCODER_READER_DONE_SIZE 1
static inline unsigned char encoder_reader_done_read(void) {
	unsigned char r = csr_readl(0xe000e024);
	return r;
}

/* ethmac */
#define CSR_ETHMAC_BASE 0xe0009800
#define CSR_ETHMAC_SRAM_WRITER_SLOT_ADDR 0xe0009800
#define CSR_ETHMAC_SRAM_WRITER_SLOT_SIZE 1
static inline unsigned char ethmac_sram_writer_slot_read(void) {
	unsigned char r = csr_readl(0xe0009800);
	return r;
}
#define CSR_ETHMAC_SRAM_WRITER_LENGTH_ADDR 0xe0009804
#define CSR_ETHMAC_SRAM_WRITER_LENGTH_SIZE 4
static inline unsigned int ethmac_sram_writer_length_read(void) {
	unsigned int r = csr_readl(0xe0009804);
	r <<= 8;
	r |= csr_readl(0xe0009808);
	r <<= 8;
	r |= csr_readl(0xe000980c);
	r <<= 8;
	r |= csr_readl(0xe0009810);
	return r;
}
#define CSR_ETHMAC_SRAM_WRITER_ERRORS_ADDR 0xe0009814
#define CSR_ETHMAC_SRAM_WRITER_ERRORS_SIZE 4
static inline unsigned int ethmac_sram_writer_errors_read(void) {
	unsigned int r = csr_readl(0xe0009814);
	r <<= 8;
	r |= csr_readl(0xe0009818);
	r <<= 8;
	r |= csr_readl(0xe000981c);
	r <<= 8;
	r |= csr_readl(0xe0009820);
	return r;
}
#define CSR_ETHMAC_SRAM_WRITER_EV_STATUS_ADDR 0xe0009824
#define CSR_ETHMAC_SRAM_WRITER_EV_STATUS_SIZE 1
static inline unsigned char ethmac_sram_writer_ev_status_read(void) {
	unsigned char r = csr_readl(0xe0009824);
	return r;
}
static inline void ethmac_sram_writer_ev_status_write(unsigned char value) {
	csr_writel(value, 0xe0009824);
}
#define CSR_ETHMAC_SRAM_WRITER_EV_PENDING_ADDR 0xe0009828
#define CSR_ETHMAC_SRAM_WRITER_EV_PENDING_SIZE 1
static inline unsigned char ethmac_sram_writer_ev_pending_read(void) {
	unsigned char r = csr_readl(0xe0009828);
	return r;
}
static inline void ethmac_sram_writer_ev_pending_write(unsigned char value) {
	csr_writel(value, 0xe0009828);
}
#define CSR_ETHMAC_SRAM_WRITER_EV_ENABLE_ADDR 0xe000982c
#define CSR_ETHMAC_SRAM_WRITER_EV_ENABLE_SIZE 1
static inline unsigned char ethmac_sram_writer_ev_enable_read(void) {
	unsigned char r = csr_readl(0xe000982c);
	return r;
}
static inline void ethmac_sram_writer_ev_enable_write(unsigned char value) {
	csr_writel(value, 0xe000982c);
}
#define CSR_ETHMAC_SRAM_READER_START_ADDR 0xe0009830
#define CSR_ETHMAC_SRAM_READER_START_SIZE 1
static inline unsigned char ethmac_sram_reader_start_read(void) {
	unsigned char r = csr_readl(0xe0009830);
	return r;
}
static inline void ethmac_sram_reader_start_write(unsigned char value) {
	csr_writel(value, 0xe0009830);
}
#define CSR_ETHMAC_SRAM_READER_READY_ADDR 0xe0009834
#define CSR_ETHMAC_SRAM_READER_READY_SIZE 1
static inline unsigned char ethmac_sram_reader_ready_read(void) {
	unsigned char r = csr_readl(0xe0009834);
	return r;
}
#define CSR_ETHMAC_SRAM_READER_LEVEL_ADDR 0xe0009838
#define CSR_ETHMAC_SRAM_READER_LEVEL_SIZE 1
static inline unsigned char ethmac_sram_reader_level_read(void) {
	unsigned char r = csr_readl(0xe0009838);
	return r;
}
#define CSR_ETHMAC_SRAM_READER_SLOT_ADDR 0xe000983c
#define CSR_ETHMAC_SRAM_READER_SLOT_SIZE 1
static inline unsigned char ethmac_sram_reader_slot_read(void) {
	unsigned char r = csr_readl(0xe000983c);
	return r;
}
static inline void ethmac_sram_reader_slot_write(unsigned char value) {
	csr_writel(value, 0xe000983c);
}
#define CSR_ETHMAC_SRAM_READER_LENGTH_ADDR 0xe0009840
#define CSR_ETHMAC_SRAM_READER_LENGTH_SIZE 2
static inline unsigned short int ethmac_sram_reader_length_read(void) {
	unsigned short int r = csr_readl(0xe0009840);
	r <<= 8;
	r |= csr_readl(0xe0009844);
	return r;
}
static inline void ethmac_sram_reader_length_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe0009840);
	csr_writel(value, 0xe0009844);
}
#define CSR_ETHMAC_SRAM_READER_EV_STATUS_ADDR 0xe0009848
#define CSR_ETHMAC_SRAM_READER_EV_STATUS_SIZE 1
static inline unsigned char ethmac_sram_reader_ev_status_read(void) {
	unsigned char r = csr_readl(0xe0009848);
	return r;
}
static inline void ethmac_sram_reader_ev_status_write(unsigned char value) {
	csr_writel(value, 0xe0009848);
}
#define CSR_ETHMAC_SRAM_READER_EV_PENDING_ADDR 0xe000984c
#define CSR_ETHMAC_SRAM_READER_EV_PENDING_SIZE 1
static inline unsigned char ethmac_sram_reader_ev_pending_read(void) {
	unsigned char r = csr_readl(0xe000984c);
	return r;
}
static inline void ethmac_sram_reader_ev_pending_write(unsigned char value) {
	csr_writel(value, 0xe000984c);
}
#define CSR_ETHMAC_SRAM_READER_EV_ENABLE_ADDR 0xe0009850
#define CSR_ETHMAC_SRAM_READER_EV_ENABLE_SIZE 1
static inline unsigned char ethmac_sram_reader_ev_enable_read(void) {
	unsigned char r = csr_readl(0xe0009850);
	return r;
}
static inline void ethmac_sram_reader_ev_enable_write(unsigned char value) {
	csr_writel(value, 0xe0009850);
}
#define CSR_ETHMAC_PREAMBLE_CRC_ADDR 0xe0009854
#define CSR_ETHMAC_PREAMBLE_CRC_SIZE 1
static inline unsigned char ethmac_preamble_crc_read(void) {
	unsigned char r = csr_readl(0xe0009854);
	return r;
}
#define CSR_ETHMAC_PREAMBLE_ERRORS_ADDR 0xe0009858
#define CSR_ETHMAC_PREAMBLE_ERRORS_SIZE 4
static inline unsigned int ethmac_preamble_errors_read(void) {
	unsigned int r = csr_readl(0xe0009858);
	r <<= 8;
	r |= csr_readl(0xe000985c);
	r <<= 8;
	r |= csr_readl(0xe0009860);
	r <<= 8;
	r |= csr_readl(0xe0009864);
	return r;
}
#define CSR_ETHMAC_CRC_ERRORS_ADDR 0xe0009868
#define CSR_ETHMAC_CRC_ERRORS_SIZE 4
static inline unsigned int ethmac_crc_errors_read(void) {
	unsigned int r = csr_readl(0xe0009868);
	r <<= 8;
	r |= csr_readl(0xe000986c);
	r <<= 8;
	r |= csr_readl(0xe0009870);
	r <<= 8;
	r |= csr_readl(0xe0009874);
	return r;
}

/* ethphy */
#define CSR_ETHPHY_BASE 0xe0009000
#define CSR_ETHPHY_CRG_RESET_ADDR 0xe0009000
#define CSR_ETHPHY_CRG_RESET_SIZE 1
static inline unsigned char ethphy_crg_reset_read(void) {
	unsigned char r = csr_readl(0xe0009000);
	return r;
}
static inline void ethphy_crg_reset_write(unsigned char value) {
	csr_writel(value, 0xe0009000);
}
#define CSR_ETHPHY_MDIO_W_ADDR 0xe0009004
#define CSR_ETHPHY_MDIO_W_SIZE 1
static inline unsigned char ethphy_mdio_w_read(void) {
	unsigned char r = csr_readl(0xe0009004);
	return r;
}
static inline void ethphy_mdio_w_write(unsigned char value) {
	csr_writel(value, 0xe0009004);
}
#define CSR_ETHPHY_MDIO_R_ADDR 0xe0009008
#define CSR_ETHPHY_MDIO_R_SIZE 1
static inline unsigned char ethphy_mdio_r_read(void) {
	unsigned char r = csr_readl(0xe0009008);
	return r;
}

/* front_panel */
#define CSR_FRONT_PANEL_BASE 0xe0005800
#define CSR_FRONT_PANEL_SWITCHES_IN_ADDR 0xe0005800
#define CSR_FRONT_PANEL_SWITCHES_IN_SIZE 1
static inline unsigned char front_panel_switches_in_read(void) {
	unsigned char r = csr_readl(0xe0005800);
	return r;
}
#define CSR_FRONT_PANEL_LEDS_OUT_ADDR 0xe0005804
#define CSR_FRONT_PANEL_LEDS_OUT_SIZE 1
static inline unsigned char front_panel_leds_out_read(void) {
	unsigned char r = csr_readl(0xe0005804);
	return r;
}
static inline void front_panel_leds_out_write(unsigned char value) {
	csr_writel(value, 0xe0005804);
}

/* hdmi_in0 */
#define CSR_HDMI_IN0_BASE 0xe000b000
#define CSR_HDMI_IN0_EDID_HPD_NOTIF_ADDR 0xe000b000
#define CSR_HDMI_IN0_EDID_HPD_NOTIF_SIZE 1
static inline unsigned char hdmi_in0_edid_hpd_notif_read(void) {
	unsigned char r = csr_readl(0xe000b000);
	return r;
}
#define CSR_HDMI_IN0_EDID_HPD_EN_ADDR 0xe000b004
#define CSR_HDMI_IN0_EDID_HPD_EN_SIZE 1
static inline unsigned char hdmi_in0_edid_hpd_en_read(void) {
	unsigned char r = csr_readl(0xe000b004);
	return r;
}
static inline void hdmi_in0_edid_hpd_en_write(unsigned char value) {
	csr_writel(value, 0xe000b004);
}
#define CSR_HDMI_IN0_CLOCKING_PLL_RESET_ADDR 0xe000b008
#define CSR_HDMI_IN0_CLOCKING_PLL_RESET_SIZE 1
static inline unsigned char hdmi_in0_clocking_pll_reset_read(void) {
	unsigned char r = csr_readl(0xe000b008);
	return r;
}
static inline void hdmi_in0_clocking_pll_reset_write(unsigned char value) {
	csr_writel(value, 0xe000b008);
}
#define CSR_HDMI_IN0_CLOCKING_LOCKED_ADDR 0xe000b00c
#define CSR_HDMI_IN0_CLOCKING_LOCKED_SIZE 1
static inline unsigned char hdmi_in0_clocking_locked_read(void) {
	unsigned char r = csr_readl(0xe000b00c);
	return r;
}
#define CSR_HDMI_IN0_CLOCKING_PLL_ADR_ADDR 0xe000b010
#define CSR_HDMI_IN0_CLOCKING_PLL_ADR_SIZE 1
static inline unsigned char hdmi_in0_clocking_pll_adr_read(void) {
	unsigned char r = csr_readl(0xe000b010);
	return r;
}
static inline void hdmi_in0_clocking_pll_adr_write(unsigned char value) {
	csr_writel(value, 0xe000b010);
}
#define CSR_HDMI_IN0_CLOCKING_PLL_DAT_R_ADDR 0xe000b014
#define CSR_HDMI_IN0_CLOCKING_PLL_DAT_R_SIZE 2
static inline unsigned short int hdmi_in0_clocking_pll_dat_r_read(void) {
	unsigned short int r = csr_readl(0xe000b014);
	r <<= 8;
	r |= csr_readl(0xe000b018);
	return r;
}
#define CSR_HDMI_IN0_CLOCKING_PLL_DAT_W_ADDR 0xe000b01c
#define CSR_HDMI_IN0_CLOCKING_PLL_DAT_W_SIZE 2
static inline unsigned short int hdmi_in0_clocking_pll_dat_w_read(void) {
	unsigned short int r = csr_readl(0xe000b01c);
	r <<= 8;
	r |= csr_readl(0xe000b020);
	return r;
}
static inline void hdmi_in0_clocking_pll_dat_w_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000b01c);
	csr_writel(value, 0xe000b020);
}
#define CSR_HDMI_IN0_CLOCKING_PLL_READ_ADDR 0xe000b024
#define CSR_HDMI_IN0_CLOCKING_PLL_READ_SIZE 1
static inline unsigned char hdmi_in0_clocking_pll_read_read(void) {
	unsigned char r = csr_readl(0xe000b024);
	return r;
}
static inline void hdmi_in0_clocking_pll_read_write(unsigned char value) {
	csr_writel(value, 0xe000b024);
}
#define CSR_HDMI_IN0_CLOCKING_PLL_WRITE_ADDR 0xe000b028
#define CSR_HDMI_IN0_CLOCKING_PLL_WRITE_SIZE 1
static inline unsigned char hdmi_in0_clocking_pll_write_read(void) {
	unsigned char r = csr_readl(0xe000b028);
	return r;
}
static inline void hdmi_in0_clocking_pll_write_write(unsigned char value) {
	csr_writel(value, 0xe000b028);
}
#define CSR_HDMI_IN0_CLOCKING_PLL_DRDY_ADDR 0xe000b02c
#define CSR_HDMI_IN0_CLOCKING_PLL_DRDY_SIZE 1
static inline unsigned char hdmi_in0_clocking_pll_drdy_read(void) {
	unsigned char r = csr_readl(0xe000b02c);
	return r;
}
#define CSR_HDMI_IN0_DATA0_CAP_DLY_CTL_ADDR 0xe000b030
#define CSR_HDMI_IN0_DATA0_CAP_DLY_CTL_SIZE 1
static inline unsigned char hdmi_in0_data0_cap_dly_ctl_read(void) {
	unsigned char r = csr_readl(0xe000b030);
	return r;
}
static inline void hdmi_in0_data0_cap_dly_ctl_write(unsigned char value) {
	csr_writel(value, 0xe000b030);
}
#define CSR_HDMI_IN0_DATA0_CAP_DLY_BUSY_ADDR 0xe000b034
#define CSR_HDMI_IN0_DATA0_CAP_DLY_BUSY_SIZE 1
static inline unsigned char hdmi_in0_data0_cap_dly_busy_read(void) {
	unsigned char r = csr_readl(0xe000b034);
	return r;
}
#define CSR_HDMI_IN0_DATA0_CAP_PHASE_ADDR 0xe000b038
#define CSR_HDMI_IN0_DATA0_CAP_PHASE_SIZE 1
static inline unsigned char hdmi_in0_data0_cap_phase_read(void) {
	unsigned char r = csr_readl(0xe000b038);
	return r;
}
#define CSR_HDMI_IN0_DATA0_CAP_PHASE_RESET_ADDR 0xe000b03c
#define CSR_HDMI_IN0_DATA0_CAP_PHASE_RESET_SIZE 1
static inline unsigned char hdmi_in0_data0_cap_phase_reset_read(void) {
	unsigned char r = csr_readl(0xe000b03c);
	return r;
}
static inline void hdmi_in0_data0_cap_phase_reset_write(unsigned char value) {
	csr_writel(value, 0xe000b03c);
}
#define CSR_HDMI_IN0_DATA0_CHARSYNC_CHAR_SYNCED_ADDR 0xe000b040
#define CSR_HDMI_IN0_DATA0_CHARSYNC_CHAR_SYNCED_SIZE 1
static inline unsigned char hdmi_in0_data0_charsync_char_synced_read(void) {
	unsigned char r = csr_readl(0xe000b040);
	return r;
}
#define CSR_HDMI_IN0_DATA0_CHARSYNC_CTL_POS_ADDR 0xe000b044
#define CSR_HDMI_IN0_DATA0_CHARSYNC_CTL_POS_SIZE 1
static inline unsigned char hdmi_in0_data0_charsync_ctl_pos_read(void) {
	unsigned char r = csr_readl(0xe000b044);
	return r;
}
#define CSR_HDMI_IN0_DATA0_WER_UPDATE_ADDR 0xe000b048
#define CSR_HDMI_IN0_DATA0_WER_UPDATE_SIZE 1
static inline unsigned char hdmi_in0_data0_wer_update_read(void) {
	unsigned char r = csr_readl(0xe000b048);
	return r;
}
static inline void hdmi_in0_data0_wer_update_write(unsigned char value) {
	csr_writel(value, 0xe000b048);
}
#define CSR_HDMI_IN0_DATA0_WER_VALUE_ADDR 0xe000b04c
#define CSR_HDMI_IN0_DATA0_WER_VALUE_SIZE 3
static inline unsigned int hdmi_in0_data0_wer_value_read(void) {
	unsigned int r = csr_readl(0xe000b04c);
	r <<= 8;
	r |= csr_readl(0xe000b050);
	r <<= 8;
	r |= csr_readl(0xe000b054);
	return r;
}
#define CSR_HDMI_IN0_DATA1_CAP_DLY_CTL_ADDR 0xe000b058
#define CSR_HDMI_IN0_DATA1_CAP_DLY_CTL_SIZE 1
static inline unsigned char hdmi_in0_data1_cap_dly_ctl_read(void) {
	unsigned char r = csr_readl(0xe000b058);
	return r;
}
static inline void hdmi_in0_data1_cap_dly_ctl_write(unsigned char value) {
	csr_writel(value, 0xe000b058);
}
#define CSR_HDMI_IN0_DATA1_CAP_DLY_BUSY_ADDR 0xe000b05c
#define CSR_HDMI_IN0_DATA1_CAP_DLY_BUSY_SIZE 1
static inline unsigned char hdmi_in0_data1_cap_dly_busy_read(void) {
	unsigned char r = csr_readl(0xe000b05c);
	return r;
}
#define CSR_HDMI_IN0_DATA1_CAP_PHASE_ADDR 0xe000b060
#define CSR_HDMI_IN0_DATA1_CAP_PHASE_SIZE 1
static inline unsigned char hdmi_in0_data1_cap_phase_read(void) {
	unsigned char r = csr_readl(0xe000b060);
	return r;
}
#define CSR_HDMI_IN0_DATA1_CAP_PHASE_RESET_ADDR 0xe000b064
#define CSR_HDMI_IN0_DATA1_CAP_PHASE_RESET_SIZE 1
static inline unsigned char hdmi_in0_data1_cap_phase_reset_read(void) {
	unsigned char r = csr_readl(0xe000b064);
	return r;
}
static inline void hdmi_in0_data1_cap_phase_reset_write(unsigned char value) {
	csr_writel(value, 0xe000b064);
}
#define CSR_HDMI_IN0_DATA1_CHARSYNC_CHAR_SYNCED_ADDR 0xe000b068
#define CSR_HDMI_IN0_DATA1_CHARSYNC_CHAR_SYNCED_SIZE 1
static inline unsigned char hdmi_in0_data1_charsync_char_synced_read(void) {
	unsigned char r = csr_readl(0xe000b068);
	return r;
}
#define CSR_HDMI_IN0_DATA1_CHARSYNC_CTL_POS_ADDR 0xe000b06c
#define CSR_HDMI_IN0_DATA1_CHARSYNC_CTL_POS_SIZE 1
static inline unsigned char hdmi_in0_data1_charsync_ctl_pos_read(void) {
	unsigned char r = csr_readl(0xe000b06c);
	return r;
}
#define CSR_HDMI_IN0_DATA1_WER_UPDATE_ADDR 0xe000b070
#define CSR_HDMI_IN0_DATA1_WER_UPDATE_SIZE 1
static inline unsigned char hdmi_in0_data1_wer_update_read(void) {
	unsigned char r = csr_readl(0xe000b070);
	return r;
}
static inline void hdmi_in0_data1_wer_update_write(unsigned char value) {
	csr_writel(value, 0xe000b070);
}
#define CSR_HDMI_IN0_DATA1_WER_VALUE_ADDR 0xe000b074
#define CSR_HDMI_IN0_DATA1_WER_VALUE_SIZE 3
static inline unsigned int hdmi_in0_data1_wer_value_read(void) {
	unsigned int r = csr_readl(0xe000b074);
	r <<= 8;
	r |= csr_readl(0xe000b078);
	r <<= 8;
	r |= csr_readl(0xe000b07c);
	return r;
}
#define CSR_HDMI_IN0_DATA2_CAP_DLY_CTL_ADDR 0xe000b080
#define CSR_HDMI_IN0_DATA2_CAP_DLY_CTL_SIZE 1
static inline unsigned char hdmi_in0_data2_cap_dly_ctl_read(void) {
	unsigned char r = csr_readl(0xe000b080);
	return r;
}
static inline void hdmi_in0_data2_cap_dly_ctl_write(unsigned char value) {
	csr_writel(value, 0xe000b080);
}
#define CSR_HDMI_IN0_DATA2_CAP_DLY_BUSY_ADDR 0xe000b084
#define CSR_HDMI_IN0_DATA2_CAP_DLY_BUSY_SIZE 1
static inline unsigned char hdmi_in0_data2_cap_dly_busy_read(void) {
	unsigned char r = csr_readl(0xe000b084);
	return r;
}
#define CSR_HDMI_IN0_DATA2_CAP_PHASE_ADDR 0xe000b088
#define CSR_HDMI_IN0_DATA2_CAP_PHASE_SIZE 1
static inline unsigned char hdmi_in0_data2_cap_phase_read(void) {
	unsigned char r = csr_readl(0xe000b088);
	return r;
}
#define CSR_HDMI_IN0_DATA2_CAP_PHASE_RESET_ADDR 0xe000b08c
#define CSR_HDMI_IN0_DATA2_CAP_PHASE_RESET_SIZE 1
static inline unsigned char hdmi_in0_data2_cap_phase_reset_read(void) {
	unsigned char r = csr_readl(0xe000b08c);
	return r;
}
static inline void hdmi_in0_data2_cap_phase_reset_write(unsigned char value) {
	csr_writel(value, 0xe000b08c);
}
#define CSR_HDMI_IN0_DATA2_CHARSYNC_CHAR_SYNCED_ADDR 0xe000b090
#define CSR_HDMI_IN0_DATA2_CHARSYNC_CHAR_SYNCED_SIZE 1
static inline unsigned char hdmi_in0_data2_charsync_char_synced_read(void) {
	unsigned char r = csr_readl(0xe000b090);
	return r;
}
#define CSR_HDMI_IN0_DATA2_CHARSYNC_CTL_POS_ADDR 0xe000b094
#define CSR_HDMI_IN0_DATA2_CHARSYNC_CTL_POS_SIZE 1
static inline unsigned char hdmi_in0_data2_charsync_ctl_pos_read(void) {
	unsigned char r = csr_readl(0xe000b094);
	return r;
}
#define CSR_HDMI_IN0_DATA2_WER_UPDATE_ADDR 0xe000b098
#define CSR_HDMI_IN0_DATA2_WER_UPDATE_SIZE 1
static inline unsigned char hdmi_in0_data2_wer_update_read(void) {
	unsigned char r = csr_readl(0xe000b098);
	return r;
}
static inline void hdmi_in0_data2_wer_update_write(unsigned char value) {
	csr_writel(value, 0xe000b098);
}
#define CSR_HDMI_IN0_DATA2_WER_VALUE_ADDR 0xe000b09c
#define CSR_HDMI_IN0_DATA2_WER_VALUE_SIZE 3
static inline unsigned int hdmi_in0_data2_wer_value_read(void) {
	unsigned int r = csr_readl(0xe000b09c);
	r <<= 8;
	r |= csr_readl(0xe000b0a0);
	r <<= 8;
	r |= csr_readl(0xe000b0a4);
	return r;
}
#define CSR_HDMI_IN0_CHANSYNC_CHANNELS_SYNCED_ADDR 0xe000b0a8
#define CSR_HDMI_IN0_CHANSYNC_CHANNELS_SYNCED_SIZE 1
static inline unsigned char hdmi_in0_chansync_channels_synced_read(void) {
	unsigned char r = csr_readl(0xe000b0a8);
	return r;
}
#define CSR_HDMI_IN0_RESDETECTION_HRES_ADDR 0xe000b0ac
#define CSR_HDMI_IN0_RESDETECTION_HRES_SIZE 2
static inline unsigned short int hdmi_in0_resdetection_hres_read(void) {
	unsigned short int r = csr_readl(0xe000b0ac);
	r <<= 8;
	r |= csr_readl(0xe000b0b0);
	return r;
}
#define CSR_HDMI_IN0_RESDETECTION_VRES_ADDR 0xe000b0b4
#define CSR_HDMI_IN0_RESDETECTION_VRES_SIZE 2
static inline unsigned short int hdmi_in0_resdetection_vres_read(void) {
	unsigned short int r = csr_readl(0xe000b0b4);
	r <<= 8;
	r |= csr_readl(0xe000b0b8);
	return r;
}
#define CSR_HDMI_IN0_FRAME_OVERFLOW_ADDR 0xe000b0bc
#define CSR_HDMI_IN0_FRAME_OVERFLOW_SIZE 1
static inline unsigned char hdmi_in0_frame_overflow_read(void) {
	unsigned char r = csr_readl(0xe000b0bc);
	return r;
}
static inline void hdmi_in0_frame_overflow_write(unsigned char value) {
	csr_writel(value, 0xe000b0bc);
}
#define CSR_HDMI_IN0_DMA_FRAME_SIZE_ADDR 0xe000b0c0
#define CSR_HDMI_IN0_DMA_FRAME_SIZE_SIZE 4
static inline unsigned int hdmi_in0_dma_frame_size_read(void) {
	unsigned int r = csr_readl(0xe000b0c0);
	r <<= 8;
	r |= csr_readl(0xe000b0c4);
	r <<= 8;
	r |= csr_readl(0xe000b0c8);
	r <<= 8;
	r |= csr_readl(0xe000b0cc);
	return r;
}
static inline void hdmi_in0_dma_frame_size_write(unsigned int value) {
	csr_writel(value >> 24, 0xe000b0c0);
	csr_writel(value >> 16, 0xe000b0c4);
	csr_writel(value >> 8, 0xe000b0c8);
	csr_writel(value, 0xe000b0cc);
}
#define CSR_HDMI_IN0_DMA_SLOT0_STATUS_ADDR 0xe000b0d0
#define CSR_HDMI_IN0_DMA_SLOT0_STATUS_SIZE 1
static inline unsigned char hdmi_in0_dma_slot0_status_read(void) {
	unsigned char r = csr_readl(0xe000b0d0);
	return r;
}
static inline void hdmi_in0_dma_slot0_status_write(unsigned char value) {
	csr_writel(value, 0xe000b0d0);
}
#define CSR_HDMI_IN0_DMA_SLOT0_ADDRESS_ADDR 0xe000b0d4
#define CSR_HDMI_IN0_DMA_SLOT0_ADDRESS_SIZE 4
static inline unsigned int hdmi_in0_dma_slot0_address_read(void) {
	unsigned int r = csr_readl(0xe000b0d4);
	r <<= 8;
	r |= csr_readl(0xe000b0d8);
	r <<= 8;
	r |= csr_readl(0xe000b0dc);
	r <<= 8;
	r |= csr_readl(0xe000b0e0);
	return r;
}
static inline void hdmi_in0_dma_slot0_address_write(unsigned int value) {
	csr_writel(value >> 24, 0xe000b0d4);
	csr_writel(value >> 16, 0xe000b0d8);
	csr_writel(value >> 8, 0xe000b0dc);
	csr_writel(value, 0xe000b0e0);
}
#define CSR_HDMI_IN0_DMA_SLOT1_STATUS_ADDR 0xe000b0e4
#define CSR_HDMI_IN0_DMA_SLOT1_STATUS_SIZE 1
static inline unsigned char hdmi_in0_dma_slot1_status_read(void) {
	unsigned char r = csr_readl(0xe000b0e4);
	return r;
}
static inline void hdmi_in0_dma_slot1_status_write(unsigned char value) {
	csr_writel(value, 0xe000b0e4);
}
#define CSR_HDMI_IN0_DMA_SLOT1_ADDRESS_ADDR 0xe000b0e8
#define CSR_HDMI_IN0_DMA_SLOT1_ADDRESS_SIZE 4
static inline unsigned int hdmi_in0_dma_slot1_address_read(void) {
	unsigned int r = csr_readl(0xe000b0e8);
	r <<= 8;
	r |= csr_readl(0xe000b0ec);
	r <<= 8;
	r |= csr_readl(0xe000b0f0);
	r <<= 8;
	r |= csr_readl(0xe000b0f4);
	return r;
}
static inline void hdmi_in0_dma_slot1_address_write(unsigned int value) {
	csr_writel(value >> 24, 0xe000b0e8);
	csr_writel(value >> 16, 0xe000b0ec);
	csr_writel(value >> 8, 0xe000b0f0);
	csr_writel(value, 0xe000b0f4);
}
#define CSR_HDMI_IN0_DMA_EV_STATUS_ADDR 0xe000b0f8
#define CSR_HDMI_IN0_DMA_EV_STATUS_SIZE 1
static inline unsigned char hdmi_in0_dma_ev_status_read(void) {
	unsigned char r = csr_readl(0xe000b0f8);
	return r;
}
static inline void hdmi_in0_dma_ev_status_write(unsigned char value) {
	csr_writel(value, 0xe000b0f8);
}
#define CSR_HDMI_IN0_DMA_EV_PENDING_ADDR 0xe000b0fc
#define CSR_HDMI_IN0_DMA_EV_PENDING_SIZE 1
static inline unsigned char hdmi_in0_dma_ev_pending_read(void) {
	unsigned char r = csr_readl(0xe000b0fc);
	return r;
}
static inline void hdmi_in0_dma_ev_pending_write(unsigned char value) {
	csr_writel(value, 0xe000b0fc);
}
#define CSR_HDMI_IN0_DMA_EV_ENABLE_ADDR 0xe000b100
#define CSR_HDMI_IN0_DMA_EV_ENABLE_SIZE 1
static inline unsigned char hdmi_in0_dma_ev_enable_read(void) {
	unsigned char r = csr_readl(0xe000b100);
	return r;
}
static inline void hdmi_in0_dma_ev_enable_write(unsigned char value) {
	csr_writel(value, 0xe000b100);
}

/* hdmi_in0_freq */
#define CSR_HDMI_IN0_FREQ_BASE 0xe000b800
#define CSR_HDMI_IN0_FREQ_VALUE_ADDR 0xe000b800
#define CSR_HDMI_IN0_FREQ_VALUE_SIZE 4
static inline unsigned int hdmi_in0_freq_value_read(void) {
	unsigned int r = csr_readl(0xe000b800);
	r <<= 8;
	r |= csr_readl(0xe000b804);
	r <<= 8;
	r |= csr_readl(0xe000b808);
	r <<= 8;
	r |= csr_readl(0xe000b80c);
	return r;
}

/* hdmi_in1 */
#define CSR_HDMI_IN1_BASE 0xe000c800
#define CSR_HDMI_IN1_EDID_HPD_NOTIF_ADDR 0xe000c800
#define CSR_HDMI_IN1_EDID_HPD_NOTIF_SIZE 1
static inline unsigned char hdmi_in1_edid_hpd_notif_read(void) {
	unsigned char r = csr_readl(0xe000c800);
	return r;
}
#define CSR_HDMI_IN1_EDID_HPD_EN_ADDR 0xe000c804
#define CSR_HDMI_IN1_EDID_HPD_EN_SIZE 1
static inline unsigned char hdmi_in1_edid_hpd_en_read(void) {
	unsigned char r = csr_readl(0xe000c804);
	return r;
}
static inline void hdmi_in1_edid_hpd_en_write(unsigned char value) {
	csr_writel(value, 0xe000c804);
}
#define CSR_HDMI_IN1_CLOCKING_PLL_RESET_ADDR 0xe000c808
#define CSR_HDMI_IN1_CLOCKING_PLL_RESET_SIZE 1
static inline unsigned char hdmi_in1_clocking_pll_reset_read(void) {
	unsigned char r = csr_readl(0xe000c808);
	return r;
}
static inline void hdmi_in1_clocking_pll_reset_write(unsigned char value) {
	csr_writel(value, 0xe000c808);
}
#define CSR_HDMI_IN1_CLOCKING_LOCKED_ADDR 0xe000c80c
#define CSR_HDMI_IN1_CLOCKING_LOCKED_SIZE 1
static inline unsigned char hdmi_in1_clocking_locked_read(void) {
	unsigned char r = csr_readl(0xe000c80c);
	return r;
}
#define CSR_HDMI_IN1_CLOCKING_PLL_ADR_ADDR 0xe000c810
#define CSR_HDMI_IN1_CLOCKING_PLL_ADR_SIZE 1
static inline unsigned char hdmi_in1_clocking_pll_adr_read(void) {
	unsigned char r = csr_readl(0xe000c810);
	return r;
}
static inline void hdmi_in1_clocking_pll_adr_write(unsigned char value) {
	csr_writel(value, 0xe000c810);
}
#define CSR_HDMI_IN1_CLOCKING_PLL_DAT_R_ADDR 0xe000c814
#define CSR_HDMI_IN1_CLOCKING_PLL_DAT_R_SIZE 2
static inline unsigned short int hdmi_in1_clocking_pll_dat_r_read(void) {
	unsigned short int r = csr_readl(0xe000c814);
	r <<= 8;
	r |= csr_readl(0xe000c818);
	return r;
}
#define CSR_HDMI_IN1_CLOCKING_PLL_DAT_W_ADDR 0xe000c81c
#define CSR_HDMI_IN1_CLOCKING_PLL_DAT_W_SIZE 2
static inline unsigned short int hdmi_in1_clocking_pll_dat_w_read(void) {
	unsigned short int r = csr_readl(0xe000c81c);
	r <<= 8;
	r |= csr_readl(0xe000c820);
	return r;
}
static inline void hdmi_in1_clocking_pll_dat_w_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000c81c);
	csr_writel(value, 0xe000c820);
}
#define CSR_HDMI_IN1_CLOCKING_PLL_READ_ADDR 0xe000c824
#define CSR_HDMI_IN1_CLOCKING_PLL_READ_SIZE 1
static inline unsigned char hdmi_in1_clocking_pll_read_read(void) {
	unsigned char r = csr_readl(0xe000c824);
	return r;
}
static inline void hdmi_in1_clocking_pll_read_write(unsigned char value) {
	csr_writel(value, 0xe000c824);
}
#define CSR_HDMI_IN1_CLOCKING_PLL_WRITE_ADDR 0xe000c828
#define CSR_HDMI_IN1_CLOCKING_PLL_WRITE_SIZE 1
static inline unsigned char hdmi_in1_clocking_pll_write_read(void) {
	unsigned char r = csr_readl(0xe000c828);
	return r;
}
static inline void hdmi_in1_clocking_pll_write_write(unsigned char value) {
	csr_writel(value, 0xe000c828);
}
#define CSR_HDMI_IN1_CLOCKING_PLL_DRDY_ADDR 0xe000c82c
#define CSR_HDMI_IN1_CLOCKING_PLL_DRDY_SIZE 1
static inline unsigned char hdmi_in1_clocking_pll_drdy_read(void) {
	unsigned char r = csr_readl(0xe000c82c);
	return r;
}
#define CSR_HDMI_IN1_DATA0_CAP_DLY_CTL_ADDR 0xe000c830
#define CSR_HDMI_IN1_DATA0_CAP_DLY_CTL_SIZE 1
static inline unsigned char hdmi_in1_data0_cap_dly_ctl_read(void) {
	unsigned char r = csr_readl(0xe000c830);
	return r;
}
static inline void hdmi_in1_data0_cap_dly_ctl_write(unsigned char value) {
	csr_writel(value, 0xe000c830);
}
#define CSR_HDMI_IN1_DATA0_CAP_DLY_BUSY_ADDR 0xe000c834
#define CSR_HDMI_IN1_DATA0_CAP_DLY_BUSY_SIZE 1
static inline unsigned char hdmi_in1_data0_cap_dly_busy_read(void) {
	unsigned char r = csr_readl(0xe000c834);
	return r;
}
#define CSR_HDMI_IN1_DATA0_CAP_PHASE_ADDR 0xe000c838
#define CSR_HDMI_IN1_DATA0_CAP_PHASE_SIZE 1
static inline unsigned char hdmi_in1_data0_cap_phase_read(void) {
	unsigned char r = csr_readl(0xe000c838);
	return r;
}
#define CSR_HDMI_IN1_DATA0_CAP_PHASE_RESET_ADDR 0xe000c83c
#define CSR_HDMI_IN1_DATA0_CAP_PHASE_RESET_SIZE 1
static inline unsigned char hdmi_in1_data0_cap_phase_reset_read(void) {
	unsigned char r = csr_readl(0xe000c83c);
	return r;
}
static inline void hdmi_in1_data0_cap_phase_reset_write(unsigned char value) {
	csr_writel(value, 0xe000c83c);
}
#define CSR_HDMI_IN1_DATA0_CHARSYNC_CHAR_SYNCED_ADDR 0xe000c840
#define CSR_HDMI_IN1_DATA0_CHARSYNC_CHAR_SYNCED_SIZE 1
static inline unsigned char hdmi_in1_data0_charsync_char_synced_read(void) {
	unsigned char r = csr_readl(0xe000c840);
	return r;
}
#define CSR_HDMI_IN1_DATA0_CHARSYNC_CTL_POS_ADDR 0xe000c844
#define CSR_HDMI_IN1_DATA0_CHARSYNC_CTL_POS_SIZE 1
static inline unsigned char hdmi_in1_data0_charsync_ctl_pos_read(void) {
	unsigned char r = csr_readl(0xe000c844);
	return r;
}
#define CSR_HDMI_IN1_DATA0_WER_UPDATE_ADDR 0xe000c848
#define CSR_HDMI_IN1_DATA0_WER_UPDATE_SIZE 1
static inline unsigned char hdmi_in1_data0_wer_update_read(void) {
	unsigned char r = csr_readl(0xe000c848);
	return r;
}
static inline void hdmi_in1_data0_wer_update_write(unsigned char value) {
	csr_writel(value, 0xe000c848);
}
#define CSR_HDMI_IN1_DATA0_WER_VALUE_ADDR 0xe000c84c
#define CSR_HDMI_IN1_DATA0_WER_VALUE_SIZE 3
static inline unsigned int hdmi_in1_data0_wer_value_read(void) {
	unsigned int r = csr_readl(0xe000c84c);
	r <<= 8;
	r |= csr_readl(0xe000c850);
	r <<= 8;
	r |= csr_readl(0xe000c854);
	return r;
}
#define CSR_HDMI_IN1_DATA1_CAP_DLY_CTL_ADDR 0xe000c858
#define CSR_HDMI_IN1_DATA1_CAP_DLY_CTL_SIZE 1
static inline unsigned char hdmi_in1_data1_cap_dly_ctl_read(void) {
	unsigned char r = csr_readl(0xe000c858);
	return r;
}
static inline void hdmi_in1_data1_cap_dly_ctl_write(unsigned char value) {
	csr_writel(value, 0xe000c858);
}
#define CSR_HDMI_IN1_DATA1_CAP_DLY_BUSY_ADDR 0xe000c85c
#define CSR_HDMI_IN1_DATA1_CAP_DLY_BUSY_SIZE 1
static inline unsigned char hdmi_in1_data1_cap_dly_busy_read(void) {
	unsigned char r = csr_readl(0xe000c85c);
	return r;
}
#define CSR_HDMI_IN1_DATA1_CAP_PHASE_ADDR 0xe000c860
#define CSR_HDMI_IN1_DATA1_CAP_PHASE_SIZE 1
static inline unsigned char hdmi_in1_data1_cap_phase_read(void) {
	unsigned char r = csr_readl(0xe000c860);
	return r;
}
#define CSR_HDMI_IN1_DATA1_CAP_PHASE_RESET_ADDR 0xe000c864
#define CSR_HDMI_IN1_DATA1_CAP_PHASE_RESET_SIZE 1
static inline unsigned char hdmi_in1_data1_cap_phase_reset_read(void) {
	unsigned char r = csr_readl(0xe000c864);
	return r;
}
static inline void hdmi_in1_data1_cap_phase_reset_write(unsigned char value) {
	csr_writel(value, 0xe000c864);
}
#define CSR_HDMI_IN1_DATA1_CHARSYNC_CHAR_SYNCED_ADDR 0xe000c868
#define CSR_HDMI_IN1_DATA1_CHARSYNC_CHAR_SYNCED_SIZE 1
static inline unsigned char hdmi_in1_data1_charsync_char_synced_read(void) {
	unsigned char r = csr_readl(0xe000c868);
	return r;
}
#define CSR_HDMI_IN1_DATA1_CHARSYNC_CTL_POS_ADDR 0xe000c86c
#define CSR_HDMI_IN1_DATA1_CHARSYNC_CTL_POS_SIZE 1
static inline unsigned char hdmi_in1_data1_charsync_ctl_pos_read(void) {
	unsigned char r = csr_readl(0xe000c86c);
	return r;
}
#define CSR_HDMI_IN1_DATA1_WER_UPDATE_ADDR 0xe000c870
#define CSR_HDMI_IN1_DATA1_WER_UPDATE_SIZE 1
static inline unsigned char hdmi_in1_data1_wer_update_read(void) {
	unsigned char r = csr_readl(0xe000c870);
	return r;
}
static inline void hdmi_in1_data1_wer_update_write(unsigned char value) {
	csr_writel(value, 0xe000c870);
}
#define CSR_HDMI_IN1_DATA1_WER_VALUE_ADDR 0xe000c874
#define CSR_HDMI_IN1_DATA1_WER_VALUE_SIZE 3
static inline unsigned int hdmi_in1_data1_wer_value_read(void) {
	unsigned int r = csr_readl(0xe000c874);
	r <<= 8;
	r |= csr_readl(0xe000c878);
	r <<= 8;
	r |= csr_readl(0xe000c87c);
	return r;
}
#define CSR_HDMI_IN1_DATA2_CAP_DLY_CTL_ADDR 0xe000c880
#define CSR_HDMI_IN1_DATA2_CAP_DLY_CTL_SIZE 1
static inline unsigned char hdmi_in1_data2_cap_dly_ctl_read(void) {
	unsigned char r = csr_readl(0xe000c880);
	return r;
}
static inline void hdmi_in1_data2_cap_dly_ctl_write(unsigned char value) {
	csr_writel(value, 0xe000c880);
}
#define CSR_HDMI_IN1_DATA2_CAP_DLY_BUSY_ADDR 0xe000c884
#define CSR_HDMI_IN1_DATA2_CAP_DLY_BUSY_SIZE 1
static inline unsigned char hdmi_in1_data2_cap_dly_busy_read(void) {
	unsigned char r = csr_readl(0xe000c884);
	return r;
}
#define CSR_HDMI_IN1_DATA2_CAP_PHASE_ADDR 0xe000c888
#define CSR_HDMI_IN1_DATA2_CAP_PHASE_SIZE 1
static inline unsigned char hdmi_in1_data2_cap_phase_read(void) {
	unsigned char r = csr_readl(0xe000c888);
	return r;
}
#define CSR_HDMI_IN1_DATA2_CAP_PHASE_RESET_ADDR 0xe000c88c
#define CSR_HDMI_IN1_DATA2_CAP_PHASE_RESET_SIZE 1
static inline unsigned char hdmi_in1_data2_cap_phase_reset_read(void) {
	unsigned char r = csr_readl(0xe000c88c);
	return r;
}
static inline void hdmi_in1_data2_cap_phase_reset_write(unsigned char value) {
	csr_writel(value, 0xe000c88c);
}
#define CSR_HDMI_IN1_DATA2_CHARSYNC_CHAR_SYNCED_ADDR 0xe000c890
#define CSR_HDMI_IN1_DATA2_CHARSYNC_CHAR_SYNCED_SIZE 1
static inline unsigned char hdmi_in1_data2_charsync_char_synced_read(void) {
	unsigned char r = csr_readl(0xe000c890);
	return r;
}
#define CSR_HDMI_IN1_DATA2_CHARSYNC_CTL_POS_ADDR 0xe000c894
#define CSR_HDMI_IN1_DATA2_CHARSYNC_CTL_POS_SIZE 1
static inline unsigned char hdmi_in1_data2_charsync_ctl_pos_read(void) {
	unsigned char r = csr_readl(0xe000c894);
	return r;
}
#define CSR_HDMI_IN1_DATA2_WER_UPDATE_ADDR 0xe000c898
#define CSR_HDMI_IN1_DATA2_WER_UPDATE_SIZE 1
static inline unsigned char hdmi_in1_data2_wer_update_read(void) {
	unsigned char r = csr_readl(0xe000c898);
	return r;
}
static inline void hdmi_in1_data2_wer_update_write(unsigned char value) {
	csr_writel(value, 0xe000c898);
}
#define CSR_HDMI_IN1_DATA2_WER_VALUE_ADDR 0xe000c89c
#define CSR_HDMI_IN1_DATA2_WER_VALUE_SIZE 3
static inline unsigned int hdmi_in1_data2_wer_value_read(void) {
	unsigned int r = csr_readl(0xe000c89c);
	r <<= 8;
	r |= csr_readl(0xe000c8a0);
	r <<= 8;
	r |= csr_readl(0xe000c8a4);
	return r;
}
#define CSR_HDMI_IN1_CHANSYNC_CHANNELS_SYNCED_ADDR 0xe000c8a8
#define CSR_HDMI_IN1_CHANSYNC_CHANNELS_SYNCED_SIZE 1
static inline unsigned char hdmi_in1_chansync_channels_synced_read(void) {
	unsigned char r = csr_readl(0xe000c8a8);
	return r;
}
#define CSR_HDMI_IN1_RESDETECTION_HRES_ADDR 0xe000c8ac
#define CSR_HDMI_IN1_RESDETECTION_HRES_SIZE 2
static inline unsigned short int hdmi_in1_resdetection_hres_read(void) {
	unsigned short int r = csr_readl(0xe000c8ac);
	r <<= 8;
	r |= csr_readl(0xe000c8b0);
	return r;
}
#define CSR_HDMI_IN1_RESDETECTION_VRES_ADDR 0xe000c8b4
#define CSR_HDMI_IN1_RESDETECTION_VRES_SIZE 2
static inline unsigned short int hdmi_in1_resdetection_vres_read(void) {
	unsigned short int r = csr_readl(0xe000c8b4);
	r <<= 8;
	r |= csr_readl(0xe000c8b8);
	return r;
}
#define CSR_HDMI_IN1_FRAME_OVERFLOW_ADDR 0xe000c8bc
#define CSR_HDMI_IN1_FRAME_OVERFLOW_SIZE 1
static inline unsigned char hdmi_in1_frame_overflow_read(void) {
	unsigned char r = csr_readl(0xe000c8bc);
	return r;
}
static inline void hdmi_in1_frame_overflow_write(unsigned char value) {
	csr_writel(value, 0xe000c8bc);
}
#define CSR_HDMI_IN1_DMA_FRAME_SIZE_ADDR 0xe000c8c0
#define CSR_HDMI_IN1_DMA_FRAME_SIZE_SIZE 4
static inline unsigned int hdmi_in1_dma_frame_size_read(void) {
	unsigned int r = csr_readl(0xe000c8c0);
	r <<= 8;
	r |= csr_readl(0xe000c8c4);
	r <<= 8;
	r |= csr_readl(0xe000c8c8);
	r <<= 8;
	r |= csr_readl(0xe000c8cc);
	return r;
}
static inline void hdmi_in1_dma_frame_size_write(unsigned int value) {
	csr_writel(value >> 24, 0xe000c8c0);
	csr_writel(value >> 16, 0xe000c8c4);
	csr_writel(value >> 8, 0xe000c8c8);
	csr_writel(value, 0xe000c8cc);
}
#define CSR_HDMI_IN1_DMA_SLOT0_STATUS_ADDR 0xe000c8d0
#define CSR_HDMI_IN1_DMA_SLOT0_STATUS_SIZE 1
static inline unsigned char hdmi_in1_dma_slot0_status_read(void) {
	unsigned char r = csr_readl(0xe000c8d0);
	return r;
}
static inline void hdmi_in1_dma_slot0_status_write(unsigned char value) {
	csr_writel(value, 0xe000c8d0);
}
#define CSR_HDMI_IN1_DMA_SLOT0_ADDRESS_ADDR 0xe000c8d4
#define CSR_HDMI_IN1_DMA_SLOT0_ADDRESS_SIZE 4
static inline unsigned int hdmi_in1_dma_slot0_address_read(void) {
	unsigned int r = csr_readl(0xe000c8d4);
	r <<= 8;
	r |= csr_readl(0xe000c8d8);
	r <<= 8;
	r |= csr_readl(0xe000c8dc);
	r <<= 8;
	r |= csr_readl(0xe000c8e0);
	return r;
}
static inline void hdmi_in1_dma_slot0_address_write(unsigned int value) {
	csr_writel(value >> 24, 0xe000c8d4);
	csr_writel(value >> 16, 0xe000c8d8);
	csr_writel(value >> 8, 0xe000c8dc);
	csr_writel(value, 0xe000c8e0);
}
#define CSR_HDMI_IN1_DMA_SLOT1_STATUS_ADDR 0xe000c8e4
#define CSR_HDMI_IN1_DMA_SLOT1_STATUS_SIZE 1
static inline unsigned char hdmi_in1_dma_slot1_status_read(void) {
	unsigned char r = csr_readl(0xe000c8e4);
	return r;
}
static inline void hdmi_in1_dma_slot1_status_write(unsigned char value) {
	csr_writel(value, 0xe000c8e4);
}
#define CSR_HDMI_IN1_DMA_SLOT1_ADDRESS_ADDR 0xe000c8e8
#define CSR_HDMI_IN1_DMA_SLOT1_ADDRESS_SIZE 4
static inline unsigned int hdmi_in1_dma_slot1_address_read(void) {
	unsigned int r = csr_readl(0xe000c8e8);
	r <<= 8;
	r |= csr_readl(0xe000c8ec);
	r <<= 8;
	r |= csr_readl(0xe000c8f0);
	r <<= 8;
	r |= csr_readl(0xe000c8f4);
	return r;
}
static inline void hdmi_in1_dma_slot1_address_write(unsigned int value) {
	csr_writel(value >> 24, 0xe000c8e8);
	csr_writel(value >> 16, 0xe000c8ec);
	csr_writel(value >> 8, 0xe000c8f0);
	csr_writel(value, 0xe000c8f4);
}
#define CSR_HDMI_IN1_DMA_EV_STATUS_ADDR 0xe000c8f8
#define CSR_HDMI_IN1_DMA_EV_STATUS_SIZE 1
static inline unsigned char hdmi_in1_dma_ev_status_read(void) {
	unsigned char r = csr_readl(0xe000c8f8);
	return r;
}
static inline void hdmi_in1_dma_ev_status_write(unsigned char value) {
	csr_writel(value, 0xe000c8f8);
}
#define CSR_HDMI_IN1_DMA_EV_PENDING_ADDR 0xe000c8fc
#define CSR_HDMI_IN1_DMA_EV_PENDING_SIZE 1
static inline unsigned char hdmi_in1_dma_ev_pending_read(void) {
	unsigned char r = csr_readl(0xe000c8fc);
	return r;
}
static inline void hdmi_in1_dma_ev_pending_write(unsigned char value) {
	csr_writel(value, 0xe000c8fc);
}
#define CSR_HDMI_IN1_DMA_EV_ENABLE_ADDR 0xe000c900
#define CSR_HDMI_IN1_DMA_EV_ENABLE_SIZE 1
static inline unsigned char hdmi_in1_dma_ev_enable_read(void) {
	unsigned char r = csr_readl(0xe000c900);
	return r;
}
static inline void hdmi_in1_dma_ev_enable_write(unsigned char value) {
	csr_writel(value, 0xe000c900);
}

/* hdmi_in1_freq */
#define CSR_HDMI_IN1_FREQ_BASE 0xe000d000
#define CSR_HDMI_IN1_FREQ_VALUE_ADDR 0xe000d000
#define CSR_HDMI_IN1_FREQ_VALUE_SIZE 4
static inline unsigned int hdmi_in1_freq_value_read(void) {
	unsigned int r = csr_readl(0xe000d000);
	r <<= 8;
	r |= csr_readl(0xe000d004);
	r <<= 8;
	r |= csr_readl(0xe000d008);
	r <<= 8;
	r |= csr_readl(0xe000d00c);
	return r;
}

/* hdmi_out0 */
#define CSR_HDMI_OUT0_BASE 0xe000a000
#define CSR_HDMI_OUT0_CORE_UNDERFLOW_ENABLE_ADDR 0xe000a000
#define CSR_HDMI_OUT0_CORE_UNDERFLOW_ENABLE_SIZE 1
static inline unsigned char hdmi_out0_core_underflow_enable_read(void) {
	unsigned char r = csr_readl(0xe000a000);
	return r;
}
static inline void hdmi_out0_core_underflow_enable_write(unsigned char value) {
	csr_writel(value, 0xe000a000);
}
#define CSR_HDMI_OUT0_CORE_UNDERFLOW_UPDATE_ADDR 0xe000a004
#define CSR_HDMI_OUT0_CORE_UNDERFLOW_UPDATE_SIZE 1
static inline unsigned char hdmi_out0_core_underflow_update_read(void) {
	unsigned char r = csr_readl(0xe000a004);
	return r;
}
static inline void hdmi_out0_core_underflow_update_write(unsigned char value) {
	csr_writel(value, 0xe000a004);
}
#define CSR_HDMI_OUT0_CORE_UNDERFLOW_COUNTER_ADDR 0xe000a008
#define CSR_HDMI_OUT0_CORE_UNDERFLOW_COUNTER_SIZE 4
static inline unsigned int hdmi_out0_core_underflow_counter_read(void) {
	unsigned int r = csr_readl(0xe000a008);
	r <<= 8;
	r |= csr_readl(0xe000a00c);
	r <<= 8;
	r |= csr_readl(0xe000a010);
	r <<= 8;
	r |= csr_readl(0xe000a014);
	return r;
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_ENABLE_ADDR 0xe000a018
#define CSR_HDMI_OUT0_CORE_INITIATOR_ENABLE_SIZE 1
static inline unsigned char hdmi_out0_core_initiator_enable_read(void) {
	unsigned char r = csr_readl(0xe000a018);
	return r;
}
static inline void hdmi_out0_core_initiator_enable_write(unsigned char value) {
	csr_writel(value, 0xe000a018);
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_HRES_ADDR 0xe000a01c
#define CSR_HDMI_OUT0_CORE_INITIATOR_HRES_SIZE 2
static inline unsigned short int hdmi_out0_core_initiator_hres_read(void) {
	unsigned short int r = csr_readl(0xe000a01c);
	r <<= 8;
	r |= csr_readl(0xe000a020);
	return r;
}
static inline void hdmi_out0_core_initiator_hres_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000a01c);
	csr_writel(value, 0xe000a020);
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_HSYNC_START_ADDR 0xe000a024
#define CSR_HDMI_OUT0_CORE_INITIATOR_HSYNC_START_SIZE 2
static inline unsigned short int hdmi_out0_core_initiator_hsync_start_read(void) {
	unsigned short int r = csr_readl(0xe000a024);
	r <<= 8;
	r |= csr_readl(0xe000a028);
	return r;
}
static inline void hdmi_out0_core_initiator_hsync_start_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000a024);
	csr_writel(value, 0xe000a028);
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_HSYNC_END_ADDR 0xe000a02c
#define CSR_HDMI_OUT0_CORE_INITIATOR_HSYNC_END_SIZE 2
static inline unsigned short int hdmi_out0_core_initiator_hsync_end_read(void) {
	unsigned short int r = csr_readl(0xe000a02c);
	r <<= 8;
	r |= csr_readl(0xe000a030);
	return r;
}
static inline void hdmi_out0_core_initiator_hsync_end_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000a02c);
	csr_writel(value, 0xe000a030);
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_HSCAN_ADDR 0xe000a034
#define CSR_HDMI_OUT0_CORE_INITIATOR_HSCAN_SIZE 2
static inline unsigned short int hdmi_out0_core_initiator_hscan_read(void) {
	unsigned short int r = csr_readl(0xe000a034);
	r <<= 8;
	r |= csr_readl(0xe000a038);
	return r;
}
static inline void hdmi_out0_core_initiator_hscan_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000a034);
	csr_writel(value, 0xe000a038);
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_VRES_ADDR 0xe000a03c
#define CSR_HDMI_OUT0_CORE_INITIATOR_VRES_SIZE 2
static inline unsigned short int hdmi_out0_core_initiator_vres_read(void) {
	unsigned short int r = csr_readl(0xe000a03c);
	r <<= 8;
	r |= csr_readl(0xe000a040);
	return r;
}
static inline void hdmi_out0_core_initiator_vres_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000a03c);
	csr_writel(value, 0xe000a040);
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_VSYNC_START_ADDR 0xe000a044
#define CSR_HDMI_OUT0_CORE_INITIATOR_VSYNC_START_SIZE 2
static inline unsigned short int hdmi_out0_core_initiator_vsync_start_read(void) {
	unsigned short int r = csr_readl(0xe000a044);
	r <<= 8;
	r |= csr_readl(0xe000a048);
	return r;
}
static inline void hdmi_out0_core_initiator_vsync_start_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000a044);
	csr_writel(value, 0xe000a048);
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_VSYNC_END_ADDR 0xe000a04c
#define CSR_HDMI_OUT0_CORE_INITIATOR_VSYNC_END_SIZE 2
static inline unsigned short int hdmi_out0_core_initiator_vsync_end_read(void) {
	unsigned short int r = csr_readl(0xe000a04c);
	r <<= 8;
	r |= csr_readl(0xe000a050);
	return r;
}
static inline void hdmi_out0_core_initiator_vsync_end_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000a04c);
	csr_writel(value, 0xe000a050);
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_VSCAN_ADDR 0xe000a054
#define CSR_HDMI_OUT0_CORE_INITIATOR_VSCAN_SIZE 2
static inline unsigned short int hdmi_out0_core_initiator_vscan_read(void) {
	unsigned short int r = csr_readl(0xe000a054);
	r <<= 8;
	r |= csr_readl(0xe000a058);
	return r;
}
static inline void hdmi_out0_core_initiator_vscan_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000a054);
	csr_writel(value, 0xe000a058);
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_BASE_ADDR 0xe000a05c
#define CSR_HDMI_OUT0_CORE_INITIATOR_BASE_SIZE 4
static inline unsigned int hdmi_out0_core_initiator_base_read(void) {
	unsigned int r = csr_readl(0xe000a05c);
	r <<= 8;
	r |= csr_readl(0xe000a060);
	r <<= 8;
	r |= csr_readl(0xe000a064);
	r <<= 8;
	r |= csr_readl(0xe000a068);
	return r;
}
static inline void hdmi_out0_core_initiator_base_write(unsigned int value) {
	csr_writel(value >> 24, 0xe000a05c);
	csr_writel(value >> 16, 0xe000a060);
	csr_writel(value >> 8, 0xe000a064);
	csr_writel(value, 0xe000a068);
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_LENGTH_ADDR 0xe000a06c
#define CSR_HDMI_OUT0_CORE_INITIATOR_LENGTH_SIZE 4
static inline unsigned int hdmi_out0_core_initiator_length_read(void) {
	unsigned int r = csr_readl(0xe000a06c);
	r <<= 8;
	r |= csr_readl(0xe000a070);
	r <<= 8;
	r |= csr_readl(0xe000a074);
	r <<= 8;
	r |= csr_readl(0xe000a078);
	return r;
}
static inline void hdmi_out0_core_initiator_length_write(unsigned int value) {
	csr_writel(value >> 24, 0xe000a06c);
	csr_writel(value >> 16, 0xe000a070);
	csr_writel(value >> 8, 0xe000a074);
	csr_writel(value, 0xe000a078);
}
#define CSR_HDMI_OUT0_CORE_DMA_DELAY_BASE_ADDR 0xe000a07c
#define CSR_HDMI_OUT0_CORE_DMA_DELAY_BASE_SIZE 4
static inline unsigned int hdmi_out0_core_dma_delay_base_read(void) {
	unsigned int r = csr_readl(0xe000a07c);
	r <<= 8;
	r |= csr_readl(0xe000a080);
	r <<= 8;
	r |= csr_readl(0xe000a084);
	r <<= 8;
	r |= csr_readl(0xe000a088);
	return r;
}
static inline void hdmi_out0_core_dma_delay_base_write(unsigned int value) {
	csr_writel(value >> 24, 0xe000a07c);
	csr_writel(value >> 16, 0xe000a080);
	csr_writel(value >> 8, 0xe000a084);
	csr_writel(value, 0xe000a088);
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_CMD_DATA_ADDR 0xe000a08c
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_CMD_DATA_SIZE 2
static inline unsigned short int hdmi_out0_driver_clocking_cmd_data_read(void) {
	unsigned short int r = csr_readl(0xe000a08c);
	r <<= 8;
	r |= csr_readl(0xe000a090);
	return r;
}
static inline void hdmi_out0_driver_clocking_cmd_data_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000a08c);
	csr_writel(value, 0xe000a090);
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_SEND_CMD_DATA_ADDR 0xe000a094
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_SEND_CMD_DATA_SIZE 1
static inline unsigned char hdmi_out0_driver_clocking_send_cmd_data_read(void) {
	unsigned char r = csr_readl(0xe000a094);
	return r;
}
static inline void hdmi_out0_driver_clocking_send_cmd_data_write(unsigned char value) {
	csr_writel(value, 0xe000a094);
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_SEND_GO_ADDR 0xe000a098
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_SEND_GO_SIZE 1
static inline unsigned char hdmi_out0_driver_clocking_send_go_read(void) {
	unsigned char r = csr_readl(0xe000a098);
	return r;
}
static inline void hdmi_out0_driver_clocking_send_go_write(unsigned char value) {
	csr_writel(value, 0xe000a098);
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_STATUS_ADDR 0xe000a09c
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_STATUS_SIZE 1
static inline unsigned char hdmi_out0_driver_clocking_status_read(void) {
	unsigned char r = csr_readl(0xe000a09c);
	return r;
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_RESET_ADDR 0xe000a0a0
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_RESET_SIZE 1
static inline unsigned char hdmi_out0_driver_clocking_pll_reset_read(void) {
	unsigned char r = csr_readl(0xe000a0a0);
	return r;
}
static inline void hdmi_out0_driver_clocking_pll_reset_write(unsigned char value) {
	csr_writel(value, 0xe000a0a0);
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_ADR_ADDR 0xe000a0a4
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_ADR_SIZE 1
static inline unsigned char hdmi_out0_driver_clocking_pll_adr_read(void) {
	unsigned char r = csr_readl(0xe000a0a4);
	return r;
}
static inline void hdmi_out0_driver_clocking_pll_adr_write(unsigned char value) {
	csr_writel(value, 0xe000a0a4);
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_DAT_R_ADDR 0xe000a0a8
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_DAT_R_SIZE 2
static inline unsigned short int hdmi_out0_driver_clocking_pll_dat_r_read(void) {
	unsigned short int r = csr_readl(0xe000a0a8);
	r <<= 8;
	r |= csr_readl(0xe000a0ac);
	return r;
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_DAT_W_ADDR 0xe000a0b0
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_DAT_W_SIZE 2
static inline unsigned short int hdmi_out0_driver_clocking_pll_dat_w_read(void) {
	unsigned short int r = csr_readl(0xe000a0b0);
	r <<= 8;
	r |= csr_readl(0xe000a0b4);
	return r;
}
static inline void hdmi_out0_driver_clocking_pll_dat_w_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000a0b0);
	csr_writel(value, 0xe000a0b4);
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_READ_ADDR 0xe000a0b8
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_READ_SIZE 1
static inline unsigned char hdmi_out0_driver_clocking_pll_read_read(void) {
	unsigned char r = csr_readl(0xe000a0b8);
	return r;
}
static inline void hdmi_out0_driver_clocking_pll_read_write(unsigned char value) {
	csr_writel(value, 0xe000a0b8);
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_WRITE_ADDR 0xe000a0bc
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_WRITE_SIZE 1
static inline unsigned char hdmi_out0_driver_clocking_pll_write_read(void) {
	unsigned char r = csr_readl(0xe000a0bc);
	return r;
}
static inline void hdmi_out0_driver_clocking_pll_write_write(unsigned char value) {
	csr_writel(value, 0xe000a0bc);
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_DRDY_ADDR 0xe000a0c0
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_DRDY_SIZE 1
static inline unsigned char hdmi_out0_driver_clocking_pll_drdy_read(void) {
	unsigned char r = csr_readl(0xe000a0c0);
	return r;
}
#define CSR_HDMI_OUT0_I2C_W_ADDR 0xe000a0c4
#define CSR_HDMI_OUT0_I2C_W_SIZE 1
static inline unsigned char hdmi_out0_i2c_w_read(void) {
	unsigned char r = csr_readl(0xe000a0c4);
	return r;
}
static inline void hdmi_out0_i2c_w_write(unsigned char value) {
	csr_writel(value, 0xe000a0c4);
}
#define CSR_HDMI_OUT0_I2C_R_ADDR 0xe000a0c8
#define CSR_HDMI_OUT0_I2C_R_SIZE 1
static inline unsigned char hdmi_out0_i2c_r_read(void) {
	unsigned char r = csr_readl(0xe000a0c8);
	return r;
}

/* hdmi_out1 */
#define CSR_HDMI_OUT1_BASE 0xe000a800
#define CSR_HDMI_OUT1_CORE_UNDERFLOW_ENABLE_ADDR 0xe000a800
#define CSR_HDMI_OUT1_CORE_UNDERFLOW_ENABLE_SIZE 1
static inline unsigned char hdmi_out1_core_underflow_enable_read(void) {
	unsigned char r = csr_readl(0xe000a800);
	return r;
}
static inline void hdmi_out1_core_underflow_enable_write(unsigned char value) {
	csr_writel(value, 0xe000a800);
}
#define CSR_HDMI_OUT1_CORE_UNDERFLOW_UPDATE_ADDR 0xe000a804
#define CSR_HDMI_OUT1_CORE_UNDERFLOW_UPDATE_SIZE 1
static inline unsigned char hdmi_out1_core_underflow_update_read(void) {
	unsigned char r = csr_readl(0xe000a804);
	return r;
}
static inline void hdmi_out1_core_underflow_update_write(unsigned char value) {
	csr_writel(value, 0xe000a804);
}
#define CSR_HDMI_OUT1_CORE_UNDERFLOW_COUNTER_ADDR 0xe000a808
#define CSR_HDMI_OUT1_CORE_UNDERFLOW_COUNTER_SIZE 4
static inline unsigned int hdmi_out1_core_underflow_counter_read(void) {
	unsigned int r = csr_readl(0xe000a808);
	r <<= 8;
	r |= csr_readl(0xe000a80c);
	r <<= 8;
	r |= csr_readl(0xe000a810);
	r <<= 8;
	r |= csr_readl(0xe000a814);
	return r;
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_ENABLE_ADDR 0xe000a818
#define CSR_HDMI_OUT1_CORE_INITIATOR_ENABLE_SIZE 1
static inline unsigned char hdmi_out1_core_initiator_enable_read(void) {
	unsigned char r = csr_readl(0xe000a818);
	return r;
}
static inline void hdmi_out1_core_initiator_enable_write(unsigned char value) {
	csr_writel(value, 0xe000a818);
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_HRES_ADDR 0xe000a81c
#define CSR_HDMI_OUT1_CORE_INITIATOR_HRES_SIZE 2
static inline unsigned short int hdmi_out1_core_initiator_hres_read(void) {
	unsigned short int r = csr_readl(0xe000a81c);
	r <<= 8;
	r |= csr_readl(0xe000a820);
	return r;
}
static inline void hdmi_out1_core_initiator_hres_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000a81c);
	csr_writel(value, 0xe000a820);
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_HSYNC_START_ADDR 0xe000a824
#define CSR_HDMI_OUT1_CORE_INITIATOR_HSYNC_START_SIZE 2
static inline unsigned short int hdmi_out1_core_initiator_hsync_start_read(void) {
	unsigned short int r = csr_readl(0xe000a824);
	r <<= 8;
	r |= csr_readl(0xe000a828);
	return r;
}
static inline void hdmi_out1_core_initiator_hsync_start_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000a824);
	csr_writel(value, 0xe000a828);
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_HSYNC_END_ADDR 0xe000a82c
#define CSR_HDMI_OUT1_CORE_INITIATOR_HSYNC_END_SIZE 2
static inline unsigned short int hdmi_out1_core_initiator_hsync_end_read(void) {
	unsigned short int r = csr_readl(0xe000a82c);
	r <<= 8;
	r |= csr_readl(0xe000a830);
	return r;
}
static inline void hdmi_out1_core_initiator_hsync_end_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000a82c);
	csr_writel(value, 0xe000a830);
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_HSCAN_ADDR 0xe000a834
#define CSR_HDMI_OUT1_CORE_INITIATOR_HSCAN_SIZE 2
static inline unsigned short int hdmi_out1_core_initiator_hscan_read(void) {
	unsigned short int r = csr_readl(0xe000a834);
	r <<= 8;
	r |= csr_readl(0xe000a838);
	return r;
}
static inline void hdmi_out1_core_initiator_hscan_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000a834);
	csr_writel(value, 0xe000a838);
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_VRES_ADDR 0xe000a83c
#define CSR_HDMI_OUT1_CORE_INITIATOR_VRES_SIZE 2
static inline unsigned short int hdmi_out1_core_initiator_vres_read(void) {
	unsigned short int r = csr_readl(0xe000a83c);
	r <<= 8;
	r |= csr_readl(0xe000a840);
	return r;
}
static inline void hdmi_out1_core_initiator_vres_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000a83c);
	csr_writel(value, 0xe000a840);
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_VSYNC_START_ADDR 0xe000a844
#define CSR_HDMI_OUT1_CORE_INITIATOR_VSYNC_START_SIZE 2
static inline unsigned short int hdmi_out1_core_initiator_vsync_start_read(void) {
	unsigned short int r = csr_readl(0xe000a844);
	r <<= 8;
	r |= csr_readl(0xe000a848);
	return r;
}
static inline void hdmi_out1_core_initiator_vsync_start_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000a844);
	csr_writel(value, 0xe000a848);
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_VSYNC_END_ADDR 0xe000a84c
#define CSR_HDMI_OUT1_CORE_INITIATOR_VSYNC_END_SIZE 2
static inline unsigned short int hdmi_out1_core_initiator_vsync_end_read(void) {
	unsigned short int r = csr_readl(0xe000a84c);
	r <<= 8;
	r |= csr_readl(0xe000a850);
	return r;
}
static inline void hdmi_out1_core_initiator_vsync_end_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000a84c);
	csr_writel(value, 0xe000a850);
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_VSCAN_ADDR 0xe000a854
#define CSR_HDMI_OUT1_CORE_INITIATOR_VSCAN_SIZE 2
static inline unsigned short int hdmi_out1_core_initiator_vscan_read(void) {
	unsigned short int r = csr_readl(0xe000a854);
	r <<= 8;
	r |= csr_readl(0xe000a858);
	return r;
}
static inline void hdmi_out1_core_initiator_vscan_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000a854);
	csr_writel(value, 0xe000a858);
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_BASE_ADDR 0xe000a85c
#define CSR_HDMI_OUT1_CORE_INITIATOR_BASE_SIZE 4
static inline unsigned int hdmi_out1_core_initiator_base_read(void) {
	unsigned int r = csr_readl(0xe000a85c);
	r <<= 8;
	r |= csr_readl(0xe000a860);
	r <<= 8;
	r |= csr_readl(0xe000a864);
	r <<= 8;
	r |= csr_readl(0xe000a868);
	return r;
}
static inline void hdmi_out1_core_initiator_base_write(unsigned int value) {
	csr_writel(value >> 24, 0xe000a85c);
	csr_writel(value >> 16, 0xe000a860);
	csr_writel(value >> 8, 0xe000a864);
	csr_writel(value, 0xe000a868);
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_LENGTH_ADDR 0xe000a86c
#define CSR_HDMI_OUT1_CORE_INITIATOR_LENGTH_SIZE 4
static inline unsigned int hdmi_out1_core_initiator_length_read(void) {
	unsigned int r = csr_readl(0xe000a86c);
	r <<= 8;
	r |= csr_readl(0xe000a870);
	r <<= 8;
	r |= csr_readl(0xe000a874);
	r <<= 8;
	r |= csr_readl(0xe000a878);
	return r;
}
static inline void hdmi_out1_core_initiator_length_write(unsigned int value) {
	csr_writel(value >> 24, 0xe000a86c);
	csr_writel(value >> 16, 0xe000a870);
	csr_writel(value >> 8, 0xe000a874);
	csr_writel(value, 0xe000a878);
}
#define CSR_HDMI_OUT1_CORE_DMA_DELAY_BASE_ADDR 0xe000a87c
#define CSR_HDMI_OUT1_CORE_DMA_DELAY_BASE_SIZE 4
static inline unsigned int hdmi_out1_core_dma_delay_base_read(void) {
	unsigned int r = csr_readl(0xe000a87c);
	r <<= 8;
	r |= csr_readl(0xe000a880);
	r <<= 8;
	r |= csr_readl(0xe000a884);
	r <<= 8;
	r |= csr_readl(0xe000a888);
	return r;
}
static inline void hdmi_out1_core_dma_delay_base_write(unsigned int value) {
	csr_writel(value >> 24, 0xe000a87c);
	csr_writel(value >> 16, 0xe000a880);
	csr_writel(value >> 8, 0xe000a884);
	csr_writel(value, 0xe000a888);
}
#define CSR_HDMI_OUT1_I2C_W_ADDR 0xe000a88c
#define CSR_HDMI_OUT1_I2C_W_SIZE 1
static inline unsigned char hdmi_out1_i2c_w_read(void) {
	unsigned char r = csr_readl(0xe000a88c);
	return r;
}
static inline void hdmi_out1_i2c_w_write(unsigned char value) {
	csr_writel(value, 0xe000a88c);
}
#define CSR_HDMI_OUT1_I2C_R_ADDR 0xe000a890
#define CSR_HDMI_OUT1_I2C_R_SIZE 1
static inline unsigned char hdmi_out1_i2c_r_read(void) {
	unsigned char r = csr_readl(0xe000a890);
	return r;
}

/* info */
#define CSR_INFO_BASE 0xe0006800
#define CSR_INFO_DNA_ID_ADDR 0xe0006800
#define CSR_INFO_DNA_ID_SIZE 8
static inline unsigned long long int info_dna_id_read(void) {
	unsigned long long int r = csr_readl(0xe0006800);
	r <<= 8;
	r |= csr_readl(0xe0006804);
	r <<= 8;
	r |= csr_readl(0xe0006808);
	r <<= 8;
	r |= csr_readl(0xe000680c);
	r <<= 8;
	r |= csr_readl(0xe0006810);
	r <<= 8;
	r |= csr_readl(0xe0006814);
	r <<= 8;
	r |= csr_readl(0xe0006818);
	r <<= 8;
	r |= csr_readl(0xe000681c);
	return r;
}
#define CSR_INFO_GIT_COMMIT_ADDR 0xe0006820
#define CSR_INFO_GIT_COMMIT_SIZE 20
#define CSR_INFO_PLATFORM_PLATFORM_ADDR 0xe0006870
#define CSR_INFO_PLATFORM_PLATFORM_SIZE 8
static inline unsigned long long int info_platform_platform_read(void) {
	unsigned long long int r = csr_readl(0xe0006870);
	r <<= 8;
	r |= csr_readl(0xe0006874);
	r <<= 8;
	r |= csr_readl(0xe0006878);
	r <<= 8;
	r |= csr_readl(0xe000687c);
	r <<= 8;
	r |= csr_readl(0xe0006880);
	r <<= 8;
	r |= csr_readl(0xe0006884);
	r <<= 8;
	r |= csr_readl(0xe0006888);
	r <<= 8;
	r |= csr_readl(0xe000688c);
	return r;
}
#define CSR_INFO_PLATFORM_TARGET_ADDR 0xe0006890
#define CSR_INFO_PLATFORM_TARGET_SIZE 8
static inline unsigned long long int info_platform_target_read(void) {
	unsigned long long int r = csr_readl(0xe0006890);
	r <<= 8;
	r |= csr_readl(0xe0006894);
	r <<= 8;
	r |= csr_readl(0xe0006898);
	r <<= 8;
	r |= csr_readl(0xe000689c);
	r <<= 8;
	r |= csr_readl(0xe00068a0);
	r <<= 8;
	r |= csr_readl(0xe00068a4);
	r <<= 8;
	r |= csr_readl(0xe00068a8);
	r <<= 8;
	r |= csr_readl(0xe00068ac);
	return r;
}

/* opsis_i2c */
#define CSR_OPSIS_I2C_BASE 0xe0008800
#define CSR_OPSIS_I2C_MASTER_W_ADDR 0xe0008800
#define CSR_OPSIS_I2C_MASTER_W_SIZE 1
static inline unsigned char opsis_i2c_master_w_read(void) {
	unsigned char r = csr_readl(0xe0008800);
	return r;
}
static inline void opsis_i2c_master_w_write(unsigned char value) {
	csr_writel(value, 0xe0008800);
}
#define CSR_OPSIS_I2C_MASTER_R_ADDR 0xe0008804
#define CSR_OPSIS_I2C_MASTER_R_SIZE 1
static inline unsigned char opsis_i2c_master_r_read(void) {
	unsigned char r = csr_readl(0xe0008804);
	return r;
}
#define CSR_OPSIS_I2C_FX2_RESET_OUT_ADDR 0xe0008808
#define CSR_OPSIS_I2C_FX2_RESET_OUT_SIZE 1
static inline unsigned char opsis_i2c_fx2_reset_out_read(void) {
	unsigned char r = csr_readl(0xe0008808);
	return r;
}
static inline void opsis_i2c_fx2_reset_out_write(unsigned char value) {
	csr_writel(value, 0xe0008808);
}
#define CSR_OPSIS_I2C_FX2_HACK_SHIFT_REG_ADDR 0xe000880c
#define CSR_OPSIS_I2C_FX2_HACK_SHIFT_REG_SIZE 1
static inline unsigned char opsis_i2c_fx2_hack_shift_reg_read(void) {
	unsigned char r = csr_readl(0xe000880c);
	return r;
}
static inline void opsis_i2c_fx2_hack_shift_reg_write(unsigned char value) {
	csr_writel(value, 0xe000880c);
}
#define CSR_OPSIS_I2C_FX2_HACK_STATUS_ADDR 0xe0008810
#define CSR_OPSIS_I2C_FX2_HACK_STATUS_SIZE 1
static inline unsigned char opsis_i2c_fx2_hack_status_read(void) {
	unsigned char r = csr_readl(0xe0008810);
	return r;
}
static inline void opsis_i2c_fx2_hack_status_write(unsigned char value) {
	csr_writel(value, 0xe0008810);
}
#define CSR_OPSIS_I2C_FX2_HACK_SLAVE_ADDR_ADDR 0xe0008814
#define CSR_OPSIS_I2C_FX2_HACK_SLAVE_ADDR_SIZE 1
static inline unsigned char opsis_i2c_fx2_hack_slave_addr_read(void) {
	unsigned char r = csr_readl(0xe0008814);
	return r;
}
static inline void opsis_i2c_fx2_hack_slave_addr_write(unsigned char value) {
	csr_writel(value, 0xe0008814);
}
#define CSR_OPSIS_I2C_MUX_SEL_ADDR 0xe0008818
#define CSR_OPSIS_I2C_MUX_SEL_SIZE 1
static inline unsigned char opsis_i2c_mux_sel_read(void) {
	unsigned char r = csr_readl(0xe0008818);
	return r;
}
static inline void opsis_i2c_mux_sel_write(unsigned char value) {
	csr_writel(value, 0xe0008818);
}

/* sdram */
#define CSR_SDRAM_BASE 0xe0004000
#define CSR_SDRAM_DFII_CONTROL_ADDR 0xe0004000
#define CSR_SDRAM_DFII_CONTROL_SIZE 1
static inline unsigned char sdram_dfii_control_read(void) {
	unsigned char r = csr_readl(0xe0004000);
	return r;
}
static inline void sdram_dfii_control_write(unsigned char value) {
	csr_writel(value, 0xe0004000);
}
#define CSR_SDRAM_DFII_PI0_COMMAND_ADDR 0xe0004004
#define CSR_SDRAM_DFII_PI0_COMMAND_SIZE 1
static inline unsigned char sdram_dfii_pi0_command_read(void) {
	unsigned char r = csr_readl(0xe0004004);
	return r;
}
static inline void sdram_dfii_pi0_command_write(unsigned char value) {
	csr_writel(value, 0xe0004004);
}
#define CSR_SDRAM_DFII_PI0_COMMAND_ISSUE_ADDR 0xe0004008
#define CSR_SDRAM_DFII_PI0_COMMAND_ISSUE_SIZE 1
static inline unsigned char sdram_dfii_pi0_command_issue_read(void) {
	unsigned char r = csr_readl(0xe0004008);
	return r;
}
static inline void sdram_dfii_pi0_command_issue_write(unsigned char value) {
	csr_writel(value, 0xe0004008);
}
#define CSR_SDRAM_DFII_PI0_ADDRESS_ADDR 0xe000400c
#define CSR_SDRAM_DFII_PI0_ADDRESS_SIZE 2
static inline unsigned short int sdram_dfii_pi0_address_read(void) {
	unsigned short int r = csr_readl(0xe000400c);
	r <<= 8;
	r |= csr_readl(0xe0004010);
	return r;
}
static inline void sdram_dfii_pi0_address_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000400c);
	csr_writel(value, 0xe0004010);
}
#define CSR_SDRAM_DFII_PI0_BADDRESS_ADDR 0xe0004014
#define CSR_SDRAM_DFII_PI0_BADDRESS_SIZE 1
static inline unsigned char sdram_dfii_pi0_baddress_read(void) {
	unsigned char r = csr_readl(0xe0004014);
	return r;
}
static inline void sdram_dfii_pi0_baddress_write(unsigned char value) {
	csr_writel(value, 0xe0004014);
}
#define CSR_SDRAM_DFII_PI0_WRDATA_ADDR 0xe0004018
#define CSR_SDRAM_DFII_PI0_WRDATA_SIZE 4
static inline unsigned int sdram_dfii_pi0_wrdata_read(void) {
	unsigned int r = csr_readl(0xe0004018);
	r <<= 8;
	r |= csr_readl(0xe000401c);
	r <<= 8;
	r |= csr_readl(0xe0004020);
	r <<= 8;
	r |= csr_readl(0xe0004024);
	return r;
}
static inline void sdram_dfii_pi0_wrdata_write(unsigned int value) {
	csr_writel(value >> 24, 0xe0004018);
	csr_writel(value >> 16, 0xe000401c);
	csr_writel(value >> 8, 0xe0004020);
	csr_writel(value, 0xe0004024);
}
#define CSR_SDRAM_DFII_PI0_RDDATA_ADDR 0xe0004028
#define CSR_SDRAM_DFII_PI0_RDDATA_SIZE 4
static inline unsigned int sdram_dfii_pi0_rddata_read(void) {
	unsigned int r = csr_readl(0xe0004028);
	r <<= 8;
	r |= csr_readl(0xe000402c);
	r <<= 8;
	r |= csr_readl(0xe0004030);
	r <<= 8;
	r |= csr_readl(0xe0004034);
	return r;
}
#define CSR_SDRAM_DFII_PI1_COMMAND_ADDR 0xe0004038
#define CSR_SDRAM_DFII_PI1_COMMAND_SIZE 1
static inline unsigned char sdram_dfii_pi1_command_read(void) {
	unsigned char r = csr_readl(0xe0004038);
	return r;
}
static inline void sdram_dfii_pi1_command_write(unsigned char value) {
	csr_writel(value, 0xe0004038);
}
#define CSR_SDRAM_DFII_PI1_COMMAND_ISSUE_ADDR 0xe000403c
#define CSR_SDRAM_DFII_PI1_COMMAND_ISSUE_SIZE 1
static inline unsigned char sdram_dfii_pi1_command_issue_read(void) {
	unsigned char r = csr_readl(0xe000403c);
	return r;
}
static inline void sdram_dfii_pi1_command_issue_write(unsigned char value) {
	csr_writel(value, 0xe000403c);
}
#define CSR_SDRAM_DFII_PI1_ADDRESS_ADDR 0xe0004040
#define CSR_SDRAM_DFII_PI1_ADDRESS_SIZE 2
static inline unsigned short int sdram_dfii_pi1_address_read(void) {
	unsigned short int r = csr_readl(0xe0004040);
	r <<= 8;
	r |= csr_readl(0xe0004044);
	return r;
}
static inline void sdram_dfii_pi1_address_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe0004040);
	csr_writel(value, 0xe0004044);
}
#define CSR_SDRAM_DFII_PI1_BADDRESS_ADDR 0xe0004048
#define CSR_SDRAM_DFII_PI1_BADDRESS_SIZE 1
static inline unsigned char sdram_dfii_pi1_baddress_read(void) {
	unsigned char r = csr_readl(0xe0004048);
	return r;
}
static inline void sdram_dfii_pi1_baddress_write(unsigned char value) {
	csr_writel(value, 0xe0004048);
}
#define CSR_SDRAM_DFII_PI1_WRDATA_ADDR 0xe000404c
#define CSR_SDRAM_DFII_PI1_WRDATA_SIZE 4
static inline unsigned int sdram_dfii_pi1_wrdata_read(void) {
	unsigned int r = csr_readl(0xe000404c);
	r <<= 8;
	r |= csr_readl(0xe0004050);
	r <<= 8;
	r |= csr_readl(0xe0004054);
	r <<= 8;
	r |= csr_readl(0xe0004058);
	return r;
}
static inline void sdram_dfii_pi1_wrdata_write(unsigned int value) {
	csr_writel(value >> 24, 0xe000404c);
	csr_writel(value >> 16, 0xe0004050);
	csr_writel(value >> 8, 0xe0004054);
	csr_writel(value, 0xe0004058);
}
#define CSR_SDRAM_DFII_PI1_RDDATA_ADDR 0xe000405c
#define CSR_SDRAM_DFII_PI1_RDDATA_SIZE 4
static inline unsigned int sdram_dfii_pi1_rddata_read(void) {
	unsigned int r = csr_readl(0xe000405c);
	r <<= 8;
	r |= csr_readl(0xe0004060);
	r <<= 8;
	r |= csr_readl(0xe0004064);
	r <<= 8;
	r |= csr_readl(0xe0004068);
	return r;
}
#define CSR_SDRAM_DFII_PI2_COMMAND_ADDR 0xe000406c
#define CSR_SDRAM_DFII_PI2_COMMAND_SIZE 1
static inline unsigned char sdram_dfii_pi2_command_read(void) {
	unsigned char r = csr_readl(0xe000406c);
	return r;
}
static inline void sdram_dfii_pi2_command_write(unsigned char value) {
	csr_writel(value, 0xe000406c);
}
#define CSR_SDRAM_DFII_PI2_COMMAND_ISSUE_ADDR 0xe0004070
#define CSR_SDRAM_DFII_PI2_COMMAND_ISSUE_SIZE 1
static inline unsigned char sdram_dfii_pi2_command_issue_read(void) {
	unsigned char r = csr_readl(0xe0004070);
	return r;
}
static inline void sdram_dfii_pi2_command_issue_write(unsigned char value) {
	csr_writel(value, 0xe0004070);
}
#define CSR_SDRAM_DFII_PI2_ADDRESS_ADDR 0xe0004074
#define CSR_SDRAM_DFII_PI2_ADDRESS_SIZE 2
static inline unsigned short int sdram_dfii_pi2_address_read(void) {
	unsigned short int r = csr_readl(0xe0004074);
	r <<= 8;
	r |= csr_readl(0xe0004078);
	return r;
}
static inline void sdram_dfii_pi2_address_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe0004074);
	csr_writel(value, 0xe0004078);
}
#define CSR_SDRAM_DFII_PI2_BADDRESS_ADDR 0xe000407c
#define CSR_SDRAM_DFII_PI2_BADDRESS_SIZE 1
static inline unsigned char sdram_dfii_pi2_baddress_read(void) {
	unsigned char r = csr_readl(0xe000407c);
	return r;
}
static inline void sdram_dfii_pi2_baddress_write(unsigned char value) {
	csr_writel(value, 0xe000407c);
}
#define CSR_SDRAM_DFII_PI2_WRDATA_ADDR 0xe0004080
#define CSR_SDRAM_DFII_PI2_WRDATA_SIZE 4
static inline unsigned int sdram_dfii_pi2_wrdata_read(void) {
	unsigned int r = csr_readl(0xe0004080);
	r <<= 8;
	r |= csr_readl(0xe0004084);
	r <<= 8;
	r |= csr_readl(0xe0004088);
	r <<= 8;
	r |= csr_readl(0xe000408c);
	return r;
}
static inline void sdram_dfii_pi2_wrdata_write(unsigned int value) {
	csr_writel(value >> 24, 0xe0004080);
	csr_writel(value >> 16, 0xe0004084);
	csr_writel(value >> 8, 0xe0004088);
	csr_writel(value, 0xe000408c);
}
#define CSR_SDRAM_DFII_PI2_RDDATA_ADDR 0xe0004090
#define CSR_SDRAM_DFII_PI2_RDDATA_SIZE 4
static inline unsigned int sdram_dfii_pi2_rddata_read(void) {
	unsigned int r = csr_readl(0xe0004090);
	r <<= 8;
	r |= csr_readl(0xe0004094);
	r <<= 8;
	r |= csr_readl(0xe0004098);
	r <<= 8;
	r |= csr_readl(0xe000409c);
	return r;
}
#define CSR_SDRAM_DFII_PI3_COMMAND_ADDR 0xe00040a0
#define CSR_SDRAM_DFII_PI3_COMMAND_SIZE 1
static inline unsigned char sdram_dfii_pi3_command_read(void) {
	unsigned char r = csr_readl(0xe00040a0);
	return r;
}
static inline void sdram_dfii_pi3_command_write(unsigned char value) {
	csr_writel(value, 0xe00040a0);
}
#define CSR_SDRAM_DFII_PI3_COMMAND_ISSUE_ADDR 0xe00040a4
#define CSR_SDRAM_DFII_PI3_COMMAND_ISSUE_SIZE 1
static inline unsigned char sdram_dfii_pi3_command_issue_read(void) {
	unsigned char r = csr_readl(0xe00040a4);
	return r;
}
static inline void sdram_dfii_pi3_command_issue_write(unsigned char value) {
	csr_writel(value, 0xe00040a4);
}
#define CSR_SDRAM_DFII_PI3_ADDRESS_ADDR 0xe00040a8
#define CSR_SDRAM_DFII_PI3_ADDRESS_SIZE 2
static inline unsigned short int sdram_dfii_pi3_address_read(void) {
	unsigned short int r = csr_readl(0xe00040a8);
	r <<= 8;
	r |= csr_readl(0xe00040ac);
	return r;
}
static inline void sdram_dfii_pi3_address_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe00040a8);
	csr_writel(value, 0xe00040ac);
}
#define CSR_SDRAM_DFII_PI3_BADDRESS_ADDR 0xe00040b0
#define CSR_SDRAM_DFII_PI3_BADDRESS_SIZE 1
static inline unsigned char sdram_dfii_pi3_baddress_read(void) {
	unsigned char r = csr_readl(0xe00040b0);
	return r;
}
static inline void sdram_dfii_pi3_baddress_write(unsigned char value) {
	csr_writel(value, 0xe00040b0);
}
#define CSR_SDRAM_DFII_PI3_WRDATA_ADDR 0xe00040b4
#define CSR_SDRAM_DFII_PI3_WRDATA_SIZE 4
static inline unsigned int sdram_dfii_pi3_wrdata_read(void) {
	unsigned int r = csr_readl(0xe00040b4);
	r <<= 8;
	r |= csr_readl(0xe00040b8);
	r <<= 8;
	r |= csr_readl(0xe00040bc);
	r <<= 8;
	r |= csr_readl(0xe00040c0);
	return r;
}
static inline void sdram_dfii_pi3_wrdata_write(unsigned int value) {
	csr_writel(value >> 24, 0xe00040b4);
	csr_writel(value >> 16, 0xe00040b8);
	csr_writel(value >> 8, 0xe00040bc);
	csr_writel(value, 0xe00040c0);
}
#define CSR_SDRAM_DFII_PI3_RDDATA_ADDR 0xe00040c4
#define CSR_SDRAM_DFII_PI3_RDDATA_SIZE 4
static inline unsigned int sdram_dfii_pi3_rddata_read(void) {
	unsigned int r = csr_readl(0xe00040c4);
	r <<= 8;
	r |= csr_readl(0xe00040c8);
	r <<= 8;
	r |= csr_readl(0xe00040cc);
	r <<= 8;
	r |= csr_readl(0xe00040d0);
	return r;
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_UPDATE_ADDR 0xe00040d4
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_UPDATE_SIZE 1
static inline unsigned char sdram_controller_bandwidth_update_read(void) {
	unsigned char r = csr_readl(0xe00040d4);
	return r;
}
static inline void sdram_controller_bandwidth_update_write(unsigned char value) {
	csr_writel(value, 0xe00040d4);
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NREADS_ADDR 0xe00040d8
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NREADS_SIZE 3
static inline unsigned int sdram_controller_bandwidth_nreads_read(void) {
	unsigned int r = csr_readl(0xe00040d8);
	r <<= 8;
	r |= csr_readl(0xe00040dc);
	r <<= 8;
	r |= csr_readl(0xe00040e0);
	return r;
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NWRITES_ADDR 0xe00040e4
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NWRITES_SIZE 3
static inline unsigned int sdram_controller_bandwidth_nwrites_read(void) {
	unsigned int r = csr_readl(0xe00040e4);
	r <<= 8;
	r |= csr_readl(0xe00040e8);
	r <<= 8;
	r |= csr_readl(0xe00040ec);
	return r;
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_DATA_WIDTH_ADDR 0xe00040f0
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_DATA_WIDTH_SIZE 1
static inline unsigned char sdram_controller_bandwidth_data_width_read(void) {
	unsigned char r = csr_readl(0xe00040f0);
	return r;
}

/* spiflash */
#define CSR_SPIFLASH_BASE 0xe0005000
#define CSR_SPIFLASH_BITBANG_ADDR 0xe0005000
#define CSR_SPIFLASH_BITBANG_SIZE 1
static inline unsigned char spiflash_bitbang_read(void) {
	unsigned char r = csr_readl(0xe0005000);
	return r;
}
static inline void spiflash_bitbang_write(unsigned char value) {
	csr_writel(value, 0xe0005000);
}
#define CSR_SPIFLASH_MISO_ADDR 0xe0005004
#define CSR_SPIFLASH_MISO_SIZE 1
static inline unsigned char spiflash_miso_read(void) {
	unsigned char r = csr_readl(0xe0005004);
	return r;
}
#define CSR_SPIFLASH_BITBANG_EN_ADDR 0xe0005008
#define CSR_SPIFLASH_BITBANG_EN_SIZE 1
static inline unsigned char spiflash_bitbang_en_read(void) {
	unsigned char r = csr_readl(0xe0005008);
	return r;
}
static inline void spiflash_bitbang_en_write(unsigned char value) {
	csr_writel(value, 0xe0005008);
}

/* timer0 */
#define CSR_TIMER0_BASE 0xe0002800
#define CSR_TIMER0_LOAD_ADDR 0xe0002800
#define CSR_TIMER0_LOAD_SIZE 4
static inline unsigned int timer0_load_read(void) {
	unsigned int r = csr_readl(0xe0002800);
	r <<= 8;
	r |= csr_readl(0xe0002804);
	r <<= 8;
	r |= csr_readl(0xe0002808);
	r <<= 8;
	r |= csr_readl(0xe000280c);
	return r;
}
static inline void timer0_load_write(unsigned int value) {
	csr_writel(value >> 24, 0xe0002800);
	csr_writel(value >> 16, 0xe0002804);
	csr_writel(value >> 8, 0xe0002808);
	csr_writel(value, 0xe000280c);
}
#define CSR_TIMER0_RELOAD_ADDR 0xe0002810
#define CSR_TIMER0_RELOAD_SIZE 4
static inline unsigned int timer0_reload_read(void) {
	unsigned int r = csr_readl(0xe0002810);
	r <<= 8;
	r |= csr_readl(0xe0002814);
	r <<= 8;
	r |= csr_readl(0xe0002818);
	r <<= 8;
	r |= csr_readl(0xe000281c);
	return r;
}
static inline void timer0_reload_write(unsigned int value) {
	csr_writel(value >> 24, 0xe0002810);
	csr_writel(value >> 16, 0xe0002814);
	csr_writel(value >> 8, 0xe0002818);
	csr_writel(value, 0xe000281c);
}
#define CSR_TIMER0_EN_ADDR 0xe0002820
#define CSR_TIMER0_EN_SIZE 1
static inline unsigned char timer0_en_read(void) {
	unsigned char r = csr_readl(0xe0002820);
	return r;
}
static inline void timer0_en_write(unsigned char value) {
	csr_writel(value, 0xe0002820);
}
#define CSR_TIMER0_UPDATE_VALUE_ADDR 0xe0002824
#define CSR_TIMER0_UPDATE_VALUE_SIZE 1
static inline unsigned char timer0_update_value_read(void) {
	unsigned char r = csr_readl(0xe0002824);
	return r;
}
static inline void timer0_update_value_write(unsigned char value) {
	csr_writel(value, 0xe0002824);
}
#define CSR_TIMER0_VALUE_ADDR 0xe0002828
#define CSR_TIMER0_VALUE_SIZE 4
static inline unsigned int timer0_value_read(void) {
	unsigned int r = csr_readl(0xe0002828);
	r <<= 8;
	r |= csr_readl(0xe000282c);
	r <<= 8;
	r |= csr_readl(0xe0002830);
	r <<= 8;
	r |= csr_readl(0xe0002834);
	return r;
}
#define CSR_TIMER0_EV_STATUS_ADDR 0xe0002838
#define CSR_TIMER0_EV_STATUS_SIZE 1
static inline unsigned char timer0_ev_status_read(void) {
	unsigned char r = csr_readl(0xe0002838);
	return r;
}
static inline void timer0_ev_status_write(unsigned char value) {
	csr_writel(value, 0xe0002838);
}
#define CSR_TIMER0_EV_PENDING_ADDR 0xe000283c
#define CSR_TIMER0_EV_PENDING_SIZE 1
static inline unsigned char timer0_ev_pending_read(void) {
	unsigned char r = csr_readl(0xe000283c);
	return r;
}
static inline void timer0_ev_pending_write(unsigned char value) {
	csr_writel(value, 0xe000283c);
}
#define CSR_TIMER0_EV_ENABLE_ADDR 0xe0002840
#define CSR_TIMER0_EV_ENABLE_SIZE 1
static inline unsigned char timer0_ev_enable_read(void) {
	unsigned char r = csr_readl(0xe0002840);
	return r;
}
static inline void timer0_ev_enable_write(unsigned char value) {
	csr_writel(value, 0xe0002840);
}

/* uart */
#define CSR_UART_BASE 0xe0001800
#define CSR_UART_RXTX_ADDR 0xe0001800
#define CSR_UART_RXTX_SIZE 1
static inline unsigned char uart_rxtx_read(void) {
	unsigned char r = csr_readl(0xe0001800);
	return r;
}
static inline void uart_rxtx_write(unsigned char value) {
	csr_writel(value, 0xe0001800);
}
#define CSR_UART_TXFULL_ADDR 0xe0001804
#define CSR_UART_TXFULL_SIZE 1
static inline unsigned char uart_txfull_read(void) {
	unsigned char r = csr_readl(0xe0001804);
	return r;
}
#define CSR_UART_RXEMPTY_ADDR 0xe0001808
#define CSR_UART_RXEMPTY_SIZE 1
static inline unsigned char uart_rxempty_read(void) {
	unsigned char r = csr_readl(0xe0001808);
	return r;
}
#define CSR_UART_EV_STATUS_ADDR 0xe000180c
#define CSR_UART_EV_STATUS_SIZE 1
static inline unsigned char uart_ev_status_read(void) {
	unsigned char r = csr_readl(0xe000180c);
	return r;
}
static inline void uart_ev_status_write(unsigned char value) {
	csr_writel(value, 0xe000180c);
}
#define CSR_UART_EV_PENDING_ADDR 0xe0001810
#define CSR_UART_EV_PENDING_SIZE 1
static inline unsigned char uart_ev_pending_read(void) {
	unsigned char r = csr_readl(0xe0001810);
	return r;
}
static inline void uart_ev_pending_write(unsigned char value) {
	csr_writel(value, 0xe0001810);
}
#define CSR_UART_EV_ENABLE_ADDR 0xe0001814
#define CSR_UART_EV_ENABLE_SIZE 1
static inline unsigned char uart_ev_enable_read(void) {
	unsigned char r = csr_readl(0xe0001814);
	return r;
}
static inline void uart_ev_enable_write(unsigned char value) {
	csr_writel(value, 0xe0001814);
}

/* hdmi_in0_edid_mem */
#define CSR_HDMI_IN0_EDID_MEM_BASE 0xe000c000

/* hdmi_in1_edid_mem */
#define CSR_HDMI_IN1_EDID_MEM_BASE 0xe000d800

/* identifier_mem */
#define CSR_IDENTIFIER_MEM_BASE 0xe0002000

/* constants */
#define NMI_INTERRUPT 0
static inline int nmi_interrupt_read(void) {
	return 0;
}
#define TIMER0_INTERRUPT 1
static inline int timer0_interrupt_read(void) {
	return 1;
}
#define UART_INTERRUPT 2
static inline int uart_interrupt_read(void) {
	return 2;
}
#define ETHMAC_INTERRUPT 3
static inline int ethmac_interrupt_read(void) {
	return 3;
}
#define HDMI_IN0_INTERRUPT 4
static inline int hdmi_in0_interrupt_read(void) {
	return 4;
}
#define HDMI_IN1_INTERRUPT 5
static inline int hdmi_in1_interrupt_read(void) {
	return 5;
}
#define CSR_DATA_WIDTH 8
static inline int csr_data_width_read(void) {
	return 8;
}
#define SYSTEM_CLOCK_FREQUENCY 50000000
static inline int system_clock_frequency_read(void) {
	return 50000000;
}
#define SPIFLASH_PAGE_SIZE 256
static inline int spiflash_page_size_read(void) {
	return 256;
}
#define SPIFLASH_SECTOR_SIZE 65536
static inline int spiflash_sector_size_read(void) {
	return 65536;
}
#define L2_SIZE 8192
static inline int l2_size_read(void) {
	return 8192;
}
#define HDMI_IN0_DESCRIPTION "  The *third* HDMI port from the left.\r\n  Labeled J5 and HDMI In 1.\r\n"
static inline const char * hdmi_in0_description_read(void) {
	return "  The *third* HDMI port from the left.\r\n  Labeled J5 and HDMI In 1.\r\n";
}
#define HDMI_IN0_MNEMONIC "RX1"
static inline const char * hdmi_in0_mnemonic_read(void) {
	return "RX1";
}
#define HDMI_IN1_DESCRIPTION "  The *fourth* HDMI port from the left. (Closest to the USB.)\r\n  Labeled J4 and HDMI In 2.\r\n"
static inline const char * hdmi_in1_description_read(void) {
	return "  The *fourth* HDMI port from the left. (Closest to the USB.)\r\n  Labeled J4 and HDMI In 2.\r\n";
}
#define HDMI_IN1_MNEMONIC "RX2"
static inline const char * hdmi_in1_mnemonic_read(void) {
	return "RX2";
}
#define HDMI_OUT0_DESCRIPTION "  The *first* HDMI port from the left.\r\n  Labeled J3 and HDMI Out 1.\r\n"
static inline const char * hdmi_out0_description_read(void) {
	return "  The *first* HDMI port from the left.\r\n  Labeled J3 and HDMI Out 1.\r\n";
}
#define HDMI_OUT0_MNEMONIC "TX1"
static inline const char * hdmi_out0_mnemonic_read(void) {
	return "TX1";
}
#define HDMI_OUT1_DESCRIPTION "  The *second* HDMI port from the left.\r\n  Labeled J2 and HDMI Out 2.\r\n"
static inline const char * hdmi_out1_description_read(void) {
	return "  The *second* HDMI port from the left.\r\n  Labeled J2 and HDMI Out 2.\r\n";
}
#define HDMI_OUT1_MNEMONIC "TX2"
static inline const char * hdmi_out1_mnemonic_read(void) {
	return "TX2";
}
#define LOCALIP1 192
static inline int localip1_read(void) {
	return 192;
}
#define LOCALIP2 168
static inline int localip2_read(void) {
	return 168;
}
#define LOCALIP3 100
static inline int localip3_read(void) {
	return 100;
}
#define LOCALIP4 50
static inline int localip4_read(void) {
	return 50;
}
#define REMOTEIP1 192
static inline int remoteip1_read(void) {
	return 192;
}
#define REMOTEIP2 168
static inline int remoteip2_read(void) {
	return 168;
}
#define REMOTEIP3 100
static inline int remoteip3_read(void) {
	return 100;
}
#define REMOTEIP4 100
static inline int remoteip4_read(void) {
	return 100;
}
#define ETHMAC_RX_SLOTS 2
static inline int ethmac_rx_slots_read(void) {
	return 2;
}
#define ETHMAC_TX_SLOTS 2
static inline int ethmac_tx_slots_read(void) {
	return 2;
}
#define ETHMAC_SLOT_SIZE 2048
static inline int ethmac_slot_size_read(void) {
	return 2048;
}
#define HDMI_OUT0_DRIVER_CLOCKING_MAX_PIX_CLK 100000000
static inline int hdmi_out0_driver_clocking_max_pix_clk_read(void) {
	return 100000000;
}
#define HDMI_OUT0_DRIVER_CLOCKING_CLKFX_MD_MAX_1000 2000
static inline int hdmi_out0_driver_clocking_clkfx_md_max_1000_read(void) {
	return 2000;
}
#define CONFIG_CLOCK_FREQUENCY 50000000
static inline int config_clock_frequency_read(void) {
	return 50000000;
}
#define CONFIG_CPU_RESET_ADDR 0
static inline int config_cpu_reset_addr_read(void) {
	return 0;
}
#define CONFIG_CPU_TYPE "LM32"
static inline const char * config_cpu_type_read(void) {
	return "LM32";
}
#define CONFIG_CSR_DATA_WIDTH 8
static inline int config_csr_data_width_read(void) {
	return 8;
}

#endif
