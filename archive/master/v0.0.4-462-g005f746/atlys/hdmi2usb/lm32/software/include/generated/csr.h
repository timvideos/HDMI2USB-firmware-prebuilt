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
#define CSR_ENCODER_READER_BASE 0xe0009800
#define CSR_ENCODER_READER_BASE_ADDR 0xe0009800
#define CSR_ENCODER_READER_BASE_SIZE 4
static inline unsigned int encoder_reader_base_read(void) {
	unsigned int r = csr_readl(0xe0009800);
	r <<= 8;
	r |= csr_readl(0xe0009804);
	r <<= 8;
	r |= csr_readl(0xe0009808);
	r <<= 8;
	r |= csr_readl(0xe000980c);
	return r;
}
static inline void encoder_reader_base_write(unsigned int value) {
	csr_writel(value >> 24, 0xe0009800);
	csr_writel(value >> 16, 0xe0009804);
	csr_writel(value >> 8, 0xe0009808);
	csr_writel(value, 0xe000980c);
}
#define CSR_ENCODER_READER_H_WIDTH_ADDR 0xe0009810
#define CSR_ENCODER_READER_H_WIDTH_SIZE 2
static inline unsigned short int encoder_reader_h_width_read(void) {
	unsigned short int r = csr_readl(0xe0009810);
	r <<= 8;
	r |= csr_readl(0xe0009814);
	return r;
}
static inline void encoder_reader_h_width_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe0009810);
	csr_writel(value, 0xe0009814);
}
#define CSR_ENCODER_READER_V_WIDTH_ADDR 0xe0009818
#define CSR_ENCODER_READER_V_WIDTH_SIZE 2
static inline unsigned short int encoder_reader_v_width_read(void) {
	unsigned short int r = csr_readl(0xe0009818);
	r <<= 8;
	r |= csr_readl(0xe000981c);
	return r;
}
static inline void encoder_reader_v_width_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe0009818);
	csr_writel(value, 0xe000981c);
}
#define CSR_ENCODER_READER_START_ADDR 0xe0009820
#define CSR_ENCODER_READER_START_SIZE 1
static inline unsigned char encoder_reader_start_read(void) {
	unsigned char r = csr_readl(0xe0009820);
	return r;
}
static inline void encoder_reader_start_write(unsigned char value) {
	csr_writel(value, 0xe0009820);
}
#define CSR_ENCODER_READER_DONE_ADDR 0xe0009824
#define CSR_ENCODER_READER_DONE_SIZE 1
static inline unsigned char encoder_reader_done_read(void) {
	unsigned char r = csr_readl(0xe0009824);
	return r;
}

/* hdmi_in0 */
#define CSR_HDMI_IN0_BASE 0xe0007800
#define CSR_HDMI_IN0_EDID_HPD_NOTIF_ADDR 0xe0007800
#define CSR_HDMI_IN0_EDID_HPD_NOTIF_SIZE 1
static inline unsigned char hdmi_in0_edid_hpd_notif_read(void) {
	unsigned char r = csr_readl(0xe0007800);
	return r;
}
#define CSR_HDMI_IN0_EDID_HPD_EN_ADDR 0xe0007804
#define CSR_HDMI_IN0_EDID_HPD_EN_SIZE 1
static inline unsigned char hdmi_in0_edid_hpd_en_read(void) {
	unsigned char r = csr_readl(0xe0007804);
	return r;
}
static inline void hdmi_in0_edid_hpd_en_write(unsigned char value) {
	csr_writel(value, 0xe0007804);
}
#define CSR_HDMI_IN0_CLOCKING_PLL_RESET_ADDR 0xe0007808
#define CSR_HDMI_IN0_CLOCKING_PLL_RESET_SIZE 1
static inline unsigned char hdmi_in0_clocking_pll_reset_read(void) {
	unsigned char r = csr_readl(0xe0007808);
	return r;
}
static inline void hdmi_in0_clocking_pll_reset_write(unsigned char value) {
	csr_writel(value, 0xe0007808);
}
#define CSR_HDMI_IN0_CLOCKING_LOCKED_ADDR 0xe000780c
#define CSR_HDMI_IN0_CLOCKING_LOCKED_SIZE 1
static inline unsigned char hdmi_in0_clocking_locked_read(void) {
	unsigned char r = csr_readl(0xe000780c);
	return r;
}
#define CSR_HDMI_IN0_CLOCKING_PLL_ADR_ADDR 0xe0007810
#define CSR_HDMI_IN0_CLOCKING_PLL_ADR_SIZE 1
static inline unsigned char hdmi_in0_clocking_pll_adr_read(void) {
	unsigned char r = csr_readl(0xe0007810);
	return r;
}
static inline void hdmi_in0_clocking_pll_adr_write(unsigned char value) {
	csr_writel(value, 0xe0007810);
}
#define CSR_HDMI_IN0_CLOCKING_PLL_DAT_R_ADDR 0xe0007814
#define CSR_HDMI_IN0_CLOCKING_PLL_DAT_R_SIZE 2
static inline unsigned short int hdmi_in0_clocking_pll_dat_r_read(void) {
	unsigned short int r = csr_readl(0xe0007814);
	r <<= 8;
	r |= csr_readl(0xe0007818);
	return r;
}
#define CSR_HDMI_IN0_CLOCKING_PLL_DAT_W_ADDR 0xe000781c
#define CSR_HDMI_IN0_CLOCKING_PLL_DAT_W_SIZE 2
static inline unsigned short int hdmi_in0_clocking_pll_dat_w_read(void) {
	unsigned short int r = csr_readl(0xe000781c);
	r <<= 8;
	r |= csr_readl(0xe0007820);
	return r;
}
static inline void hdmi_in0_clocking_pll_dat_w_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000781c);
	csr_writel(value, 0xe0007820);
}
#define CSR_HDMI_IN0_CLOCKING_PLL_READ_ADDR 0xe0007824
#define CSR_HDMI_IN0_CLOCKING_PLL_READ_SIZE 1
static inline unsigned char hdmi_in0_clocking_pll_read_read(void) {
	unsigned char r = csr_readl(0xe0007824);
	return r;
}
static inline void hdmi_in0_clocking_pll_read_write(unsigned char value) {
	csr_writel(value, 0xe0007824);
}
#define CSR_HDMI_IN0_CLOCKING_PLL_WRITE_ADDR 0xe0007828
#define CSR_HDMI_IN0_CLOCKING_PLL_WRITE_SIZE 1
static inline unsigned char hdmi_in0_clocking_pll_write_read(void) {
	unsigned char r = csr_readl(0xe0007828);
	return r;
}
static inline void hdmi_in0_clocking_pll_write_write(unsigned char value) {
	csr_writel(value, 0xe0007828);
}
#define CSR_HDMI_IN0_CLOCKING_PLL_DRDY_ADDR 0xe000782c
#define CSR_HDMI_IN0_CLOCKING_PLL_DRDY_SIZE 1
static inline unsigned char hdmi_in0_clocking_pll_drdy_read(void) {
	unsigned char r = csr_readl(0xe000782c);
	return r;
}
#define CSR_HDMI_IN0_DATA0_CAP_DLY_CTL_ADDR 0xe0007830
#define CSR_HDMI_IN0_DATA0_CAP_DLY_CTL_SIZE 1
static inline unsigned char hdmi_in0_data0_cap_dly_ctl_read(void) {
	unsigned char r = csr_readl(0xe0007830);
	return r;
}
static inline void hdmi_in0_data0_cap_dly_ctl_write(unsigned char value) {
	csr_writel(value, 0xe0007830);
}
#define CSR_HDMI_IN0_DATA0_CAP_DLY_BUSY_ADDR 0xe0007834
#define CSR_HDMI_IN0_DATA0_CAP_DLY_BUSY_SIZE 1
static inline unsigned char hdmi_in0_data0_cap_dly_busy_read(void) {
	unsigned char r = csr_readl(0xe0007834);
	return r;
}
#define CSR_HDMI_IN0_DATA0_CAP_PHASE_ADDR 0xe0007838
#define CSR_HDMI_IN0_DATA0_CAP_PHASE_SIZE 1
static inline unsigned char hdmi_in0_data0_cap_phase_read(void) {
	unsigned char r = csr_readl(0xe0007838);
	return r;
}
#define CSR_HDMI_IN0_DATA0_CAP_PHASE_RESET_ADDR 0xe000783c
#define CSR_HDMI_IN0_DATA0_CAP_PHASE_RESET_SIZE 1
static inline unsigned char hdmi_in0_data0_cap_phase_reset_read(void) {
	unsigned char r = csr_readl(0xe000783c);
	return r;
}
static inline void hdmi_in0_data0_cap_phase_reset_write(unsigned char value) {
	csr_writel(value, 0xe000783c);
}
#define CSR_HDMI_IN0_DATA0_CHARSYNC_CHAR_SYNCED_ADDR 0xe0007840
#define CSR_HDMI_IN0_DATA0_CHARSYNC_CHAR_SYNCED_SIZE 1
static inline unsigned char hdmi_in0_data0_charsync_char_synced_read(void) {
	unsigned char r = csr_readl(0xe0007840);
	return r;
}
#define CSR_HDMI_IN0_DATA0_CHARSYNC_CTL_POS_ADDR 0xe0007844
#define CSR_HDMI_IN0_DATA0_CHARSYNC_CTL_POS_SIZE 1
static inline unsigned char hdmi_in0_data0_charsync_ctl_pos_read(void) {
	unsigned char r = csr_readl(0xe0007844);
	return r;
}
#define CSR_HDMI_IN0_DATA0_WER_UPDATE_ADDR 0xe0007848
#define CSR_HDMI_IN0_DATA0_WER_UPDATE_SIZE 1
static inline unsigned char hdmi_in0_data0_wer_update_read(void) {
	unsigned char r = csr_readl(0xe0007848);
	return r;
}
static inline void hdmi_in0_data0_wer_update_write(unsigned char value) {
	csr_writel(value, 0xe0007848);
}
#define CSR_HDMI_IN0_DATA0_WER_VALUE_ADDR 0xe000784c
#define CSR_HDMI_IN0_DATA0_WER_VALUE_SIZE 3
static inline unsigned int hdmi_in0_data0_wer_value_read(void) {
	unsigned int r = csr_readl(0xe000784c);
	r <<= 8;
	r |= csr_readl(0xe0007850);
	r <<= 8;
	r |= csr_readl(0xe0007854);
	return r;
}
#define CSR_HDMI_IN0_DATA1_CAP_DLY_CTL_ADDR 0xe0007858
#define CSR_HDMI_IN0_DATA1_CAP_DLY_CTL_SIZE 1
static inline unsigned char hdmi_in0_data1_cap_dly_ctl_read(void) {
	unsigned char r = csr_readl(0xe0007858);
	return r;
}
static inline void hdmi_in0_data1_cap_dly_ctl_write(unsigned char value) {
	csr_writel(value, 0xe0007858);
}
#define CSR_HDMI_IN0_DATA1_CAP_DLY_BUSY_ADDR 0xe000785c
#define CSR_HDMI_IN0_DATA1_CAP_DLY_BUSY_SIZE 1
static inline unsigned char hdmi_in0_data1_cap_dly_busy_read(void) {
	unsigned char r = csr_readl(0xe000785c);
	return r;
}
#define CSR_HDMI_IN0_DATA1_CAP_PHASE_ADDR 0xe0007860
#define CSR_HDMI_IN0_DATA1_CAP_PHASE_SIZE 1
static inline unsigned char hdmi_in0_data1_cap_phase_read(void) {
	unsigned char r = csr_readl(0xe0007860);
	return r;
}
#define CSR_HDMI_IN0_DATA1_CAP_PHASE_RESET_ADDR 0xe0007864
#define CSR_HDMI_IN0_DATA1_CAP_PHASE_RESET_SIZE 1
static inline unsigned char hdmi_in0_data1_cap_phase_reset_read(void) {
	unsigned char r = csr_readl(0xe0007864);
	return r;
}
static inline void hdmi_in0_data1_cap_phase_reset_write(unsigned char value) {
	csr_writel(value, 0xe0007864);
}
#define CSR_HDMI_IN0_DATA1_CHARSYNC_CHAR_SYNCED_ADDR 0xe0007868
#define CSR_HDMI_IN0_DATA1_CHARSYNC_CHAR_SYNCED_SIZE 1
static inline unsigned char hdmi_in0_data1_charsync_char_synced_read(void) {
	unsigned char r = csr_readl(0xe0007868);
	return r;
}
#define CSR_HDMI_IN0_DATA1_CHARSYNC_CTL_POS_ADDR 0xe000786c
#define CSR_HDMI_IN0_DATA1_CHARSYNC_CTL_POS_SIZE 1
static inline unsigned char hdmi_in0_data1_charsync_ctl_pos_read(void) {
	unsigned char r = csr_readl(0xe000786c);
	return r;
}
#define CSR_HDMI_IN0_DATA1_WER_UPDATE_ADDR 0xe0007870
#define CSR_HDMI_IN0_DATA1_WER_UPDATE_SIZE 1
static inline unsigned char hdmi_in0_data1_wer_update_read(void) {
	unsigned char r = csr_readl(0xe0007870);
	return r;
}
static inline void hdmi_in0_data1_wer_update_write(unsigned char value) {
	csr_writel(value, 0xe0007870);
}
#define CSR_HDMI_IN0_DATA1_WER_VALUE_ADDR 0xe0007874
#define CSR_HDMI_IN0_DATA1_WER_VALUE_SIZE 3
static inline unsigned int hdmi_in0_data1_wer_value_read(void) {
	unsigned int r = csr_readl(0xe0007874);
	r <<= 8;
	r |= csr_readl(0xe0007878);
	r <<= 8;
	r |= csr_readl(0xe000787c);
	return r;
}
#define CSR_HDMI_IN0_DATA2_CAP_DLY_CTL_ADDR 0xe0007880
#define CSR_HDMI_IN0_DATA2_CAP_DLY_CTL_SIZE 1
static inline unsigned char hdmi_in0_data2_cap_dly_ctl_read(void) {
	unsigned char r = csr_readl(0xe0007880);
	return r;
}
static inline void hdmi_in0_data2_cap_dly_ctl_write(unsigned char value) {
	csr_writel(value, 0xe0007880);
}
#define CSR_HDMI_IN0_DATA2_CAP_DLY_BUSY_ADDR 0xe0007884
#define CSR_HDMI_IN0_DATA2_CAP_DLY_BUSY_SIZE 1
static inline unsigned char hdmi_in0_data2_cap_dly_busy_read(void) {
	unsigned char r = csr_readl(0xe0007884);
	return r;
}
#define CSR_HDMI_IN0_DATA2_CAP_PHASE_ADDR 0xe0007888
#define CSR_HDMI_IN0_DATA2_CAP_PHASE_SIZE 1
static inline unsigned char hdmi_in0_data2_cap_phase_read(void) {
	unsigned char r = csr_readl(0xe0007888);
	return r;
}
#define CSR_HDMI_IN0_DATA2_CAP_PHASE_RESET_ADDR 0xe000788c
#define CSR_HDMI_IN0_DATA2_CAP_PHASE_RESET_SIZE 1
static inline unsigned char hdmi_in0_data2_cap_phase_reset_read(void) {
	unsigned char r = csr_readl(0xe000788c);
	return r;
}
static inline void hdmi_in0_data2_cap_phase_reset_write(unsigned char value) {
	csr_writel(value, 0xe000788c);
}
#define CSR_HDMI_IN0_DATA2_CHARSYNC_CHAR_SYNCED_ADDR 0xe0007890
#define CSR_HDMI_IN0_DATA2_CHARSYNC_CHAR_SYNCED_SIZE 1
static inline unsigned char hdmi_in0_data2_charsync_char_synced_read(void) {
	unsigned char r = csr_readl(0xe0007890);
	return r;
}
#define CSR_HDMI_IN0_DATA2_CHARSYNC_CTL_POS_ADDR 0xe0007894
#define CSR_HDMI_IN0_DATA2_CHARSYNC_CTL_POS_SIZE 1
static inline unsigned char hdmi_in0_data2_charsync_ctl_pos_read(void) {
	unsigned char r = csr_readl(0xe0007894);
	return r;
}
#define CSR_HDMI_IN0_DATA2_WER_UPDATE_ADDR 0xe0007898
#define CSR_HDMI_IN0_DATA2_WER_UPDATE_SIZE 1
static inline unsigned char hdmi_in0_data2_wer_update_read(void) {
	unsigned char r = csr_readl(0xe0007898);
	return r;
}
static inline void hdmi_in0_data2_wer_update_write(unsigned char value) {
	csr_writel(value, 0xe0007898);
}
#define CSR_HDMI_IN0_DATA2_WER_VALUE_ADDR 0xe000789c
#define CSR_HDMI_IN0_DATA2_WER_VALUE_SIZE 3
static inline unsigned int hdmi_in0_data2_wer_value_read(void) {
	unsigned int r = csr_readl(0xe000789c);
	r <<= 8;
	r |= csr_readl(0xe00078a0);
	r <<= 8;
	r |= csr_readl(0xe00078a4);
	return r;
}
#define CSR_HDMI_IN0_CHANSYNC_CHANNELS_SYNCED_ADDR 0xe00078a8
#define CSR_HDMI_IN0_CHANSYNC_CHANNELS_SYNCED_SIZE 1
static inline unsigned char hdmi_in0_chansync_channels_synced_read(void) {
	unsigned char r = csr_readl(0xe00078a8);
	return r;
}
#define CSR_HDMI_IN0_RESDETECTION_HRES_ADDR 0xe00078ac
#define CSR_HDMI_IN0_RESDETECTION_HRES_SIZE 2
static inline unsigned short int hdmi_in0_resdetection_hres_read(void) {
	unsigned short int r = csr_readl(0xe00078ac);
	r <<= 8;
	r |= csr_readl(0xe00078b0);
	return r;
}
#define CSR_HDMI_IN0_RESDETECTION_VRES_ADDR 0xe00078b4
#define CSR_HDMI_IN0_RESDETECTION_VRES_SIZE 2
static inline unsigned short int hdmi_in0_resdetection_vres_read(void) {
	unsigned short int r = csr_readl(0xe00078b4);
	r <<= 8;
	r |= csr_readl(0xe00078b8);
	return r;
}
#define CSR_HDMI_IN0_FRAME_OVERFLOW_ADDR 0xe00078bc
#define CSR_HDMI_IN0_FRAME_OVERFLOW_SIZE 1
static inline unsigned char hdmi_in0_frame_overflow_read(void) {
	unsigned char r = csr_readl(0xe00078bc);
	return r;
}
static inline void hdmi_in0_frame_overflow_write(unsigned char value) {
	csr_writel(value, 0xe00078bc);
}
#define CSR_HDMI_IN0_DMA_FRAME_SIZE_ADDR 0xe00078c0
#define CSR_HDMI_IN0_DMA_FRAME_SIZE_SIZE 4
static inline unsigned int hdmi_in0_dma_frame_size_read(void) {
	unsigned int r = csr_readl(0xe00078c0);
	r <<= 8;
	r |= csr_readl(0xe00078c4);
	r <<= 8;
	r |= csr_readl(0xe00078c8);
	r <<= 8;
	r |= csr_readl(0xe00078cc);
	return r;
}
static inline void hdmi_in0_dma_frame_size_write(unsigned int value) {
	csr_writel(value >> 24, 0xe00078c0);
	csr_writel(value >> 16, 0xe00078c4);
	csr_writel(value >> 8, 0xe00078c8);
	csr_writel(value, 0xe00078cc);
}
#define CSR_HDMI_IN0_DMA_SLOT0_STATUS_ADDR 0xe00078d0
#define CSR_HDMI_IN0_DMA_SLOT0_STATUS_SIZE 1
static inline unsigned char hdmi_in0_dma_slot0_status_read(void) {
	unsigned char r = csr_readl(0xe00078d0);
	return r;
}
static inline void hdmi_in0_dma_slot0_status_write(unsigned char value) {
	csr_writel(value, 0xe00078d0);
}
#define CSR_HDMI_IN0_DMA_SLOT0_ADDRESS_ADDR 0xe00078d4
#define CSR_HDMI_IN0_DMA_SLOT0_ADDRESS_SIZE 4
static inline unsigned int hdmi_in0_dma_slot0_address_read(void) {
	unsigned int r = csr_readl(0xe00078d4);
	r <<= 8;
	r |= csr_readl(0xe00078d8);
	r <<= 8;
	r |= csr_readl(0xe00078dc);
	r <<= 8;
	r |= csr_readl(0xe00078e0);
	return r;
}
static inline void hdmi_in0_dma_slot0_address_write(unsigned int value) {
	csr_writel(value >> 24, 0xe00078d4);
	csr_writel(value >> 16, 0xe00078d8);
	csr_writel(value >> 8, 0xe00078dc);
	csr_writel(value, 0xe00078e0);
}
#define CSR_HDMI_IN0_DMA_SLOT1_STATUS_ADDR 0xe00078e4
#define CSR_HDMI_IN0_DMA_SLOT1_STATUS_SIZE 1
static inline unsigned char hdmi_in0_dma_slot1_status_read(void) {
	unsigned char r = csr_readl(0xe00078e4);
	return r;
}
static inline void hdmi_in0_dma_slot1_status_write(unsigned char value) {
	csr_writel(value, 0xe00078e4);
}
#define CSR_HDMI_IN0_DMA_SLOT1_ADDRESS_ADDR 0xe00078e8
#define CSR_HDMI_IN0_DMA_SLOT1_ADDRESS_SIZE 4
static inline unsigned int hdmi_in0_dma_slot1_address_read(void) {
	unsigned int r = csr_readl(0xe00078e8);
	r <<= 8;
	r |= csr_readl(0xe00078ec);
	r <<= 8;
	r |= csr_readl(0xe00078f0);
	r <<= 8;
	r |= csr_readl(0xe00078f4);
	return r;
}
static inline void hdmi_in0_dma_slot1_address_write(unsigned int value) {
	csr_writel(value >> 24, 0xe00078e8);
	csr_writel(value >> 16, 0xe00078ec);
	csr_writel(value >> 8, 0xe00078f0);
	csr_writel(value, 0xe00078f4);
}
#define CSR_HDMI_IN0_DMA_EV_STATUS_ADDR 0xe00078f8
#define CSR_HDMI_IN0_DMA_EV_STATUS_SIZE 1
static inline unsigned char hdmi_in0_dma_ev_status_read(void) {
	unsigned char r = csr_readl(0xe00078f8);
	return r;
}
static inline void hdmi_in0_dma_ev_status_write(unsigned char value) {
	csr_writel(value, 0xe00078f8);
}
#define CSR_HDMI_IN0_DMA_EV_PENDING_ADDR 0xe00078fc
#define CSR_HDMI_IN0_DMA_EV_PENDING_SIZE 1
static inline unsigned char hdmi_in0_dma_ev_pending_read(void) {
	unsigned char r = csr_readl(0xe00078fc);
	return r;
}
static inline void hdmi_in0_dma_ev_pending_write(unsigned char value) {
	csr_writel(value, 0xe00078fc);
}
#define CSR_HDMI_IN0_DMA_EV_ENABLE_ADDR 0xe0007900
#define CSR_HDMI_IN0_DMA_EV_ENABLE_SIZE 1
static inline unsigned char hdmi_in0_dma_ev_enable_read(void) {
	unsigned char r = csr_readl(0xe0007900);
	return r;
}
static inline void hdmi_in0_dma_ev_enable_write(unsigned char value) {
	csr_writel(value, 0xe0007900);
}

/* hdmi_in1 */
#define CSR_HDMI_IN1_BASE 0xe0008800
#define CSR_HDMI_IN1_EDID_HPD_NOTIF_ADDR 0xe0008800
#define CSR_HDMI_IN1_EDID_HPD_NOTIF_SIZE 1
static inline unsigned char hdmi_in1_edid_hpd_notif_read(void) {
	unsigned char r = csr_readl(0xe0008800);
	return r;
}
#define CSR_HDMI_IN1_EDID_HPD_EN_ADDR 0xe0008804
#define CSR_HDMI_IN1_EDID_HPD_EN_SIZE 1
static inline unsigned char hdmi_in1_edid_hpd_en_read(void) {
	unsigned char r = csr_readl(0xe0008804);
	return r;
}
static inline void hdmi_in1_edid_hpd_en_write(unsigned char value) {
	csr_writel(value, 0xe0008804);
}
#define CSR_HDMI_IN1_CLOCKING_PLL_RESET_ADDR 0xe0008808
#define CSR_HDMI_IN1_CLOCKING_PLL_RESET_SIZE 1
static inline unsigned char hdmi_in1_clocking_pll_reset_read(void) {
	unsigned char r = csr_readl(0xe0008808);
	return r;
}
static inline void hdmi_in1_clocking_pll_reset_write(unsigned char value) {
	csr_writel(value, 0xe0008808);
}
#define CSR_HDMI_IN1_CLOCKING_LOCKED_ADDR 0xe000880c
#define CSR_HDMI_IN1_CLOCKING_LOCKED_SIZE 1
static inline unsigned char hdmi_in1_clocking_locked_read(void) {
	unsigned char r = csr_readl(0xe000880c);
	return r;
}
#define CSR_HDMI_IN1_CLOCKING_PLL_ADR_ADDR 0xe0008810
#define CSR_HDMI_IN1_CLOCKING_PLL_ADR_SIZE 1
static inline unsigned char hdmi_in1_clocking_pll_adr_read(void) {
	unsigned char r = csr_readl(0xe0008810);
	return r;
}
static inline void hdmi_in1_clocking_pll_adr_write(unsigned char value) {
	csr_writel(value, 0xe0008810);
}
#define CSR_HDMI_IN1_CLOCKING_PLL_DAT_R_ADDR 0xe0008814
#define CSR_HDMI_IN1_CLOCKING_PLL_DAT_R_SIZE 2
static inline unsigned short int hdmi_in1_clocking_pll_dat_r_read(void) {
	unsigned short int r = csr_readl(0xe0008814);
	r <<= 8;
	r |= csr_readl(0xe0008818);
	return r;
}
#define CSR_HDMI_IN1_CLOCKING_PLL_DAT_W_ADDR 0xe000881c
#define CSR_HDMI_IN1_CLOCKING_PLL_DAT_W_SIZE 2
static inline unsigned short int hdmi_in1_clocking_pll_dat_w_read(void) {
	unsigned short int r = csr_readl(0xe000881c);
	r <<= 8;
	r |= csr_readl(0xe0008820);
	return r;
}
static inline void hdmi_in1_clocking_pll_dat_w_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000881c);
	csr_writel(value, 0xe0008820);
}
#define CSR_HDMI_IN1_CLOCKING_PLL_READ_ADDR 0xe0008824
#define CSR_HDMI_IN1_CLOCKING_PLL_READ_SIZE 1
static inline unsigned char hdmi_in1_clocking_pll_read_read(void) {
	unsigned char r = csr_readl(0xe0008824);
	return r;
}
static inline void hdmi_in1_clocking_pll_read_write(unsigned char value) {
	csr_writel(value, 0xe0008824);
}
#define CSR_HDMI_IN1_CLOCKING_PLL_WRITE_ADDR 0xe0008828
#define CSR_HDMI_IN1_CLOCKING_PLL_WRITE_SIZE 1
static inline unsigned char hdmi_in1_clocking_pll_write_read(void) {
	unsigned char r = csr_readl(0xe0008828);
	return r;
}
static inline void hdmi_in1_clocking_pll_write_write(unsigned char value) {
	csr_writel(value, 0xe0008828);
}
#define CSR_HDMI_IN1_CLOCKING_PLL_DRDY_ADDR 0xe000882c
#define CSR_HDMI_IN1_CLOCKING_PLL_DRDY_SIZE 1
static inline unsigned char hdmi_in1_clocking_pll_drdy_read(void) {
	unsigned char r = csr_readl(0xe000882c);
	return r;
}
#define CSR_HDMI_IN1_DATA0_CAP_DLY_CTL_ADDR 0xe0008830
#define CSR_HDMI_IN1_DATA0_CAP_DLY_CTL_SIZE 1
static inline unsigned char hdmi_in1_data0_cap_dly_ctl_read(void) {
	unsigned char r = csr_readl(0xe0008830);
	return r;
}
static inline void hdmi_in1_data0_cap_dly_ctl_write(unsigned char value) {
	csr_writel(value, 0xe0008830);
}
#define CSR_HDMI_IN1_DATA0_CAP_DLY_BUSY_ADDR 0xe0008834
#define CSR_HDMI_IN1_DATA0_CAP_DLY_BUSY_SIZE 1
static inline unsigned char hdmi_in1_data0_cap_dly_busy_read(void) {
	unsigned char r = csr_readl(0xe0008834);
	return r;
}
#define CSR_HDMI_IN1_DATA0_CAP_PHASE_ADDR 0xe0008838
#define CSR_HDMI_IN1_DATA0_CAP_PHASE_SIZE 1
static inline unsigned char hdmi_in1_data0_cap_phase_read(void) {
	unsigned char r = csr_readl(0xe0008838);
	return r;
}
#define CSR_HDMI_IN1_DATA0_CAP_PHASE_RESET_ADDR 0xe000883c
#define CSR_HDMI_IN1_DATA0_CAP_PHASE_RESET_SIZE 1
static inline unsigned char hdmi_in1_data0_cap_phase_reset_read(void) {
	unsigned char r = csr_readl(0xe000883c);
	return r;
}
static inline void hdmi_in1_data0_cap_phase_reset_write(unsigned char value) {
	csr_writel(value, 0xe000883c);
}
#define CSR_HDMI_IN1_DATA0_CHARSYNC_CHAR_SYNCED_ADDR 0xe0008840
#define CSR_HDMI_IN1_DATA0_CHARSYNC_CHAR_SYNCED_SIZE 1
static inline unsigned char hdmi_in1_data0_charsync_char_synced_read(void) {
	unsigned char r = csr_readl(0xe0008840);
	return r;
}
#define CSR_HDMI_IN1_DATA0_CHARSYNC_CTL_POS_ADDR 0xe0008844
#define CSR_HDMI_IN1_DATA0_CHARSYNC_CTL_POS_SIZE 1
static inline unsigned char hdmi_in1_data0_charsync_ctl_pos_read(void) {
	unsigned char r = csr_readl(0xe0008844);
	return r;
}
#define CSR_HDMI_IN1_DATA0_WER_UPDATE_ADDR 0xe0008848
#define CSR_HDMI_IN1_DATA0_WER_UPDATE_SIZE 1
static inline unsigned char hdmi_in1_data0_wer_update_read(void) {
	unsigned char r = csr_readl(0xe0008848);
	return r;
}
static inline void hdmi_in1_data0_wer_update_write(unsigned char value) {
	csr_writel(value, 0xe0008848);
}
#define CSR_HDMI_IN1_DATA0_WER_VALUE_ADDR 0xe000884c
#define CSR_HDMI_IN1_DATA0_WER_VALUE_SIZE 3
static inline unsigned int hdmi_in1_data0_wer_value_read(void) {
	unsigned int r = csr_readl(0xe000884c);
	r <<= 8;
	r |= csr_readl(0xe0008850);
	r <<= 8;
	r |= csr_readl(0xe0008854);
	return r;
}
#define CSR_HDMI_IN1_DATA1_CAP_DLY_CTL_ADDR 0xe0008858
#define CSR_HDMI_IN1_DATA1_CAP_DLY_CTL_SIZE 1
static inline unsigned char hdmi_in1_data1_cap_dly_ctl_read(void) {
	unsigned char r = csr_readl(0xe0008858);
	return r;
}
static inline void hdmi_in1_data1_cap_dly_ctl_write(unsigned char value) {
	csr_writel(value, 0xe0008858);
}
#define CSR_HDMI_IN1_DATA1_CAP_DLY_BUSY_ADDR 0xe000885c
#define CSR_HDMI_IN1_DATA1_CAP_DLY_BUSY_SIZE 1
static inline unsigned char hdmi_in1_data1_cap_dly_busy_read(void) {
	unsigned char r = csr_readl(0xe000885c);
	return r;
}
#define CSR_HDMI_IN1_DATA1_CAP_PHASE_ADDR 0xe0008860
#define CSR_HDMI_IN1_DATA1_CAP_PHASE_SIZE 1
static inline unsigned char hdmi_in1_data1_cap_phase_read(void) {
	unsigned char r = csr_readl(0xe0008860);
	return r;
}
#define CSR_HDMI_IN1_DATA1_CAP_PHASE_RESET_ADDR 0xe0008864
#define CSR_HDMI_IN1_DATA1_CAP_PHASE_RESET_SIZE 1
static inline unsigned char hdmi_in1_data1_cap_phase_reset_read(void) {
	unsigned char r = csr_readl(0xe0008864);
	return r;
}
static inline void hdmi_in1_data1_cap_phase_reset_write(unsigned char value) {
	csr_writel(value, 0xe0008864);
}
#define CSR_HDMI_IN1_DATA1_CHARSYNC_CHAR_SYNCED_ADDR 0xe0008868
#define CSR_HDMI_IN1_DATA1_CHARSYNC_CHAR_SYNCED_SIZE 1
static inline unsigned char hdmi_in1_data1_charsync_char_synced_read(void) {
	unsigned char r = csr_readl(0xe0008868);
	return r;
}
#define CSR_HDMI_IN1_DATA1_CHARSYNC_CTL_POS_ADDR 0xe000886c
#define CSR_HDMI_IN1_DATA1_CHARSYNC_CTL_POS_SIZE 1
static inline unsigned char hdmi_in1_data1_charsync_ctl_pos_read(void) {
	unsigned char r = csr_readl(0xe000886c);
	return r;
}
#define CSR_HDMI_IN1_DATA1_WER_UPDATE_ADDR 0xe0008870
#define CSR_HDMI_IN1_DATA1_WER_UPDATE_SIZE 1
static inline unsigned char hdmi_in1_data1_wer_update_read(void) {
	unsigned char r = csr_readl(0xe0008870);
	return r;
}
static inline void hdmi_in1_data1_wer_update_write(unsigned char value) {
	csr_writel(value, 0xe0008870);
}
#define CSR_HDMI_IN1_DATA1_WER_VALUE_ADDR 0xe0008874
#define CSR_HDMI_IN1_DATA1_WER_VALUE_SIZE 3
static inline unsigned int hdmi_in1_data1_wer_value_read(void) {
	unsigned int r = csr_readl(0xe0008874);
	r <<= 8;
	r |= csr_readl(0xe0008878);
	r <<= 8;
	r |= csr_readl(0xe000887c);
	return r;
}
#define CSR_HDMI_IN1_DATA2_CAP_DLY_CTL_ADDR 0xe0008880
#define CSR_HDMI_IN1_DATA2_CAP_DLY_CTL_SIZE 1
static inline unsigned char hdmi_in1_data2_cap_dly_ctl_read(void) {
	unsigned char r = csr_readl(0xe0008880);
	return r;
}
static inline void hdmi_in1_data2_cap_dly_ctl_write(unsigned char value) {
	csr_writel(value, 0xe0008880);
}
#define CSR_HDMI_IN1_DATA2_CAP_DLY_BUSY_ADDR 0xe0008884
#define CSR_HDMI_IN1_DATA2_CAP_DLY_BUSY_SIZE 1
static inline unsigned char hdmi_in1_data2_cap_dly_busy_read(void) {
	unsigned char r = csr_readl(0xe0008884);
	return r;
}
#define CSR_HDMI_IN1_DATA2_CAP_PHASE_ADDR 0xe0008888
#define CSR_HDMI_IN1_DATA2_CAP_PHASE_SIZE 1
static inline unsigned char hdmi_in1_data2_cap_phase_read(void) {
	unsigned char r = csr_readl(0xe0008888);
	return r;
}
#define CSR_HDMI_IN1_DATA2_CAP_PHASE_RESET_ADDR 0xe000888c
#define CSR_HDMI_IN1_DATA2_CAP_PHASE_RESET_SIZE 1
static inline unsigned char hdmi_in1_data2_cap_phase_reset_read(void) {
	unsigned char r = csr_readl(0xe000888c);
	return r;
}
static inline void hdmi_in1_data2_cap_phase_reset_write(unsigned char value) {
	csr_writel(value, 0xe000888c);
}
#define CSR_HDMI_IN1_DATA2_CHARSYNC_CHAR_SYNCED_ADDR 0xe0008890
#define CSR_HDMI_IN1_DATA2_CHARSYNC_CHAR_SYNCED_SIZE 1
static inline unsigned char hdmi_in1_data2_charsync_char_synced_read(void) {
	unsigned char r = csr_readl(0xe0008890);
	return r;
}
#define CSR_HDMI_IN1_DATA2_CHARSYNC_CTL_POS_ADDR 0xe0008894
#define CSR_HDMI_IN1_DATA2_CHARSYNC_CTL_POS_SIZE 1
static inline unsigned char hdmi_in1_data2_charsync_ctl_pos_read(void) {
	unsigned char r = csr_readl(0xe0008894);
	return r;
}
#define CSR_HDMI_IN1_DATA2_WER_UPDATE_ADDR 0xe0008898
#define CSR_HDMI_IN1_DATA2_WER_UPDATE_SIZE 1
static inline unsigned char hdmi_in1_data2_wer_update_read(void) {
	unsigned char r = csr_readl(0xe0008898);
	return r;
}
static inline void hdmi_in1_data2_wer_update_write(unsigned char value) {
	csr_writel(value, 0xe0008898);
}
#define CSR_HDMI_IN1_DATA2_WER_VALUE_ADDR 0xe000889c
#define CSR_HDMI_IN1_DATA2_WER_VALUE_SIZE 3
static inline unsigned int hdmi_in1_data2_wer_value_read(void) {
	unsigned int r = csr_readl(0xe000889c);
	r <<= 8;
	r |= csr_readl(0xe00088a0);
	r <<= 8;
	r |= csr_readl(0xe00088a4);
	return r;
}
#define CSR_HDMI_IN1_CHANSYNC_CHANNELS_SYNCED_ADDR 0xe00088a8
#define CSR_HDMI_IN1_CHANSYNC_CHANNELS_SYNCED_SIZE 1
static inline unsigned char hdmi_in1_chansync_channels_synced_read(void) {
	unsigned char r = csr_readl(0xe00088a8);
	return r;
}
#define CSR_HDMI_IN1_RESDETECTION_HRES_ADDR 0xe00088ac
#define CSR_HDMI_IN1_RESDETECTION_HRES_SIZE 2
static inline unsigned short int hdmi_in1_resdetection_hres_read(void) {
	unsigned short int r = csr_readl(0xe00088ac);
	r <<= 8;
	r |= csr_readl(0xe00088b0);
	return r;
}
#define CSR_HDMI_IN1_RESDETECTION_VRES_ADDR 0xe00088b4
#define CSR_HDMI_IN1_RESDETECTION_VRES_SIZE 2
static inline unsigned short int hdmi_in1_resdetection_vres_read(void) {
	unsigned short int r = csr_readl(0xe00088b4);
	r <<= 8;
	r |= csr_readl(0xe00088b8);
	return r;
}
#define CSR_HDMI_IN1_FRAME_OVERFLOW_ADDR 0xe00088bc
#define CSR_HDMI_IN1_FRAME_OVERFLOW_SIZE 1
static inline unsigned char hdmi_in1_frame_overflow_read(void) {
	unsigned char r = csr_readl(0xe00088bc);
	return r;
}
static inline void hdmi_in1_frame_overflow_write(unsigned char value) {
	csr_writel(value, 0xe00088bc);
}
#define CSR_HDMI_IN1_DMA_FRAME_SIZE_ADDR 0xe00088c0
#define CSR_HDMI_IN1_DMA_FRAME_SIZE_SIZE 4
static inline unsigned int hdmi_in1_dma_frame_size_read(void) {
	unsigned int r = csr_readl(0xe00088c0);
	r <<= 8;
	r |= csr_readl(0xe00088c4);
	r <<= 8;
	r |= csr_readl(0xe00088c8);
	r <<= 8;
	r |= csr_readl(0xe00088cc);
	return r;
}
static inline void hdmi_in1_dma_frame_size_write(unsigned int value) {
	csr_writel(value >> 24, 0xe00088c0);
	csr_writel(value >> 16, 0xe00088c4);
	csr_writel(value >> 8, 0xe00088c8);
	csr_writel(value, 0xe00088cc);
}
#define CSR_HDMI_IN1_DMA_SLOT0_STATUS_ADDR 0xe00088d0
#define CSR_HDMI_IN1_DMA_SLOT0_STATUS_SIZE 1
static inline unsigned char hdmi_in1_dma_slot0_status_read(void) {
	unsigned char r = csr_readl(0xe00088d0);
	return r;
}
static inline void hdmi_in1_dma_slot0_status_write(unsigned char value) {
	csr_writel(value, 0xe00088d0);
}
#define CSR_HDMI_IN1_DMA_SLOT0_ADDRESS_ADDR 0xe00088d4
#define CSR_HDMI_IN1_DMA_SLOT0_ADDRESS_SIZE 4
static inline unsigned int hdmi_in1_dma_slot0_address_read(void) {
	unsigned int r = csr_readl(0xe00088d4);
	r <<= 8;
	r |= csr_readl(0xe00088d8);
	r <<= 8;
	r |= csr_readl(0xe00088dc);
	r <<= 8;
	r |= csr_readl(0xe00088e0);
	return r;
}
static inline void hdmi_in1_dma_slot0_address_write(unsigned int value) {
	csr_writel(value >> 24, 0xe00088d4);
	csr_writel(value >> 16, 0xe00088d8);
	csr_writel(value >> 8, 0xe00088dc);
	csr_writel(value, 0xe00088e0);
}
#define CSR_HDMI_IN1_DMA_SLOT1_STATUS_ADDR 0xe00088e4
#define CSR_HDMI_IN1_DMA_SLOT1_STATUS_SIZE 1
static inline unsigned char hdmi_in1_dma_slot1_status_read(void) {
	unsigned char r = csr_readl(0xe00088e4);
	return r;
}
static inline void hdmi_in1_dma_slot1_status_write(unsigned char value) {
	csr_writel(value, 0xe00088e4);
}
#define CSR_HDMI_IN1_DMA_SLOT1_ADDRESS_ADDR 0xe00088e8
#define CSR_HDMI_IN1_DMA_SLOT1_ADDRESS_SIZE 4
static inline unsigned int hdmi_in1_dma_slot1_address_read(void) {
	unsigned int r = csr_readl(0xe00088e8);
	r <<= 8;
	r |= csr_readl(0xe00088ec);
	r <<= 8;
	r |= csr_readl(0xe00088f0);
	r <<= 8;
	r |= csr_readl(0xe00088f4);
	return r;
}
static inline void hdmi_in1_dma_slot1_address_write(unsigned int value) {
	csr_writel(value >> 24, 0xe00088e8);
	csr_writel(value >> 16, 0xe00088ec);
	csr_writel(value >> 8, 0xe00088f0);
	csr_writel(value, 0xe00088f4);
}
#define CSR_HDMI_IN1_DMA_EV_STATUS_ADDR 0xe00088f8
#define CSR_HDMI_IN1_DMA_EV_STATUS_SIZE 1
static inline unsigned char hdmi_in1_dma_ev_status_read(void) {
	unsigned char r = csr_readl(0xe00088f8);
	return r;
}
static inline void hdmi_in1_dma_ev_status_write(unsigned char value) {
	csr_writel(value, 0xe00088f8);
}
#define CSR_HDMI_IN1_DMA_EV_PENDING_ADDR 0xe00088fc
#define CSR_HDMI_IN1_DMA_EV_PENDING_SIZE 1
static inline unsigned char hdmi_in1_dma_ev_pending_read(void) {
	unsigned char r = csr_readl(0xe00088fc);
	return r;
}
static inline void hdmi_in1_dma_ev_pending_write(unsigned char value) {
	csr_writel(value, 0xe00088fc);
}
#define CSR_HDMI_IN1_DMA_EV_ENABLE_ADDR 0xe0008900
#define CSR_HDMI_IN1_DMA_EV_ENABLE_SIZE 1
static inline unsigned char hdmi_in1_dma_ev_enable_read(void) {
	unsigned char r = csr_readl(0xe0008900);
	return r;
}
static inline void hdmi_in1_dma_ev_enable_write(unsigned char value) {
	csr_writel(value, 0xe0008900);
}

/* hdmi_out0 */
#define CSR_HDMI_OUT0_BASE 0xe0006800
#define CSR_HDMI_OUT0_CORE_UNDERFLOW_ENABLE_ADDR 0xe0006800
#define CSR_HDMI_OUT0_CORE_UNDERFLOW_ENABLE_SIZE 1
static inline unsigned char hdmi_out0_core_underflow_enable_read(void) {
	unsigned char r = csr_readl(0xe0006800);
	return r;
}
static inline void hdmi_out0_core_underflow_enable_write(unsigned char value) {
	csr_writel(value, 0xe0006800);
}
#define CSR_HDMI_OUT0_CORE_UNDERFLOW_UPDATE_ADDR 0xe0006804
#define CSR_HDMI_OUT0_CORE_UNDERFLOW_UPDATE_SIZE 1
static inline unsigned char hdmi_out0_core_underflow_update_read(void) {
	unsigned char r = csr_readl(0xe0006804);
	return r;
}
static inline void hdmi_out0_core_underflow_update_write(unsigned char value) {
	csr_writel(value, 0xe0006804);
}
#define CSR_HDMI_OUT0_CORE_UNDERFLOW_COUNTER_ADDR 0xe0006808
#define CSR_HDMI_OUT0_CORE_UNDERFLOW_COUNTER_SIZE 4
static inline unsigned int hdmi_out0_core_underflow_counter_read(void) {
	unsigned int r = csr_readl(0xe0006808);
	r <<= 8;
	r |= csr_readl(0xe000680c);
	r <<= 8;
	r |= csr_readl(0xe0006810);
	r <<= 8;
	r |= csr_readl(0xe0006814);
	return r;
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_ENABLE_ADDR 0xe0006818
#define CSR_HDMI_OUT0_CORE_INITIATOR_ENABLE_SIZE 1
static inline unsigned char hdmi_out0_core_initiator_enable_read(void) {
	unsigned char r = csr_readl(0xe0006818);
	return r;
}
static inline void hdmi_out0_core_initiator_enable_write(unsigned char value) {
	csr_writel(value, 0xe0006818);
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_HRES_ADDR 0xe000681c
#define CSR_HDMI_OUT0_CORE_INITIATOR_HRES_SIZE 2
static inline unsigned short int hdmi_out0_core_initiator_hres_read(void) {
	unsigned short int r = csr_readl(0xe000681c);
	r <<= 8;
	r |= csr_readl(0xe0006820);
	return r;
}
static inline void hdmi_out0_core_initiator_hres_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000681c);
	csr_writel(value, 0xe0006820);
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_HSYNC_START_ADDR 0xe0006824
#define CSR_HDMI_OUT0_CORE_INITIATOR_HSYNC_START_SIZE 2
static inline unsigned short int hdmi_out0_core_initiator_hsync_start_read(void) {
	unsigned short int r = csr_readl(0xe0006824);
	r <<= 8;
	r |= csr_readl(0xe0006828);
	return r;
}
static inline void hdmi_out0_core_initiator_hsync_start_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe0006824);
	csr_writel(value, 0xe0006828);
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_HSYNC_END_ADDR 0xe000682c
#define CSR_HDMI_OUT0_CORE_INITIATOR_HSYNC_END_SIZE 2
static inline unsigned short int hdmi_out0_core_initiator_hsync_end_read(void) {
	unsigned short int r = csr_readl(0xe000682c);
	r <<= 8;
	r |= csr_readl(0xe0006830);
	return r;
}
static inline void hdmi_out0_core_initiator_hsync_end_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000682c);
	csr_writel(value, 0xe0006830);
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_HSCAN_ADDR 0xe0006834
#define CSR_HDMI_OUT0_CORE_INITIATOR_HSCAN_SIZE 2
static inline unsigned short int hdmi_out0_core_initiator_hscan_read(void) {
	unsigned short int r = csr_readl(0xe0006834);
	r <<= 8;
	r |= csr_readl(0xe0006838);
	return r;
}
static inline void hdmi_out0_core_initiator_hscan_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe0006834);
	csr_writel(value, 0xe0006838);
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_VRES_ADDR 0xe000683c
#define CSR_HDMI_OUT0_CORE_INITIATOR_VRES_SIZE 2
static inline unsigned short int hdmi_out0_core_initiator_vres_read(void) {
	unsigned short int r = csr_readl(0xe000683c);
	r <<= 8;
	r |= csr_readl(0xe0006840);
	return r;
}
static inline void hdmi_out0_core_initiator_vres_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000683c);
	csr_writel(value, 0xe0006840);
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_VSYNC_START_ADDR 0xe0006844
#define CSR_HDMI_OUT0_CORE_INITIATOR_VSYNC_START_SIZE 2
static inline unsigned short int hdmi_out0_core_initiator_vsync_start_read(void) {
	unsigned short int r = csr_readl(0xe0006844);
	r <<= 8;
	r |= csr_readl(0xe0006848);
	return r;
}
static inline void hdmi_out0_core_initiator_vsync_start_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe0006844);
	csr_writel(value, 0xe0006848);
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_VSYNC_END_ADDR 0xe000684c
#define CSR_HDMI_OUT0_CORE_INITIATOR_VSYNC_END_SIZE 2
static inline unsigned short int hdmi_out0_core_initiator_vsync_end_read(void) {
	unsigned short int r = csr_readl(0xe000684c);
	r <<= 8;
	r |= csr_readl(0xe0006850);
	return r;
}
static inline void hdmi_out0_core_initiator_vsync_end_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000684c);
	csr_writel(value, 0xe0006850);
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_VSCAN_ADDR 0xe0006854
#define CSR_HDMI_OUT0_CORE_INITIATOR_VSCAN_SIZE 2
static inline unsigned short int hdmi_out0_core_initiator_vscan_read(void) {
	unsigned short int r = csr_readl(0xe0006854);
	r <<= 8;
	r |= csr_readl(0xe0006858);
	return r;
}
static inline void hdmi_out0_core_initiator_vscan_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe0006854);
	csr_writel(value, 0xe0006858);
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_BASE_ADDR 0xe000685c
#define CSR_HDMI_OUT0_CORE_INITIATOR_BASE_SIZE 4
static inline unsigned int hdmi_out0_core_initiator_base_read(void) {
	unsigned int r = csr_readl(0xe000685c);
	r <<= 8;
	r |= csr_readl(0xe0006860);
	r <<= 8;
	r |= csr_readl(0xe0006864);
	r <<= 8;
	r |= csr_readl(0xe0006868);
	return r;
}
static inline void hdmi_out0_core_initiator_base_write(unsigned int value) {
	csr_writel(value >> 24, 0xe000685c);
	csr_writel(value >> 16, 0xe0006860);
	csr_writel(value >> 8, 0xe0006864);
	csr_writel(value, 0xe0006868);
}
#define CSR_HDMI_OUT0_CORE_INITIATOR_LENGTH_ADDR 0xe000686c
#define CSR_HDMI_OUT0_CORE_INITIATOR_LENGTH_SIZE 4
static inline unsigned int hdmi_out0_core_initiator_length_read(void) {
	unsigned int r = csr_readl(0xe000686c);
	r <<= 8;
	r |= csr_readl(0xe0006870);
	r <<= 8;
	r |= csr_readl(0xe0006874);
	r <<= 8;
	r |= csr_readl(0xe0006878);
	return r;
}
static inline void hdmi_out0_core_initiator_length_write(unsigned int value) {
	csr_writel(value >> 24, 0xe000686c);
	csr_writel(value >> 16, 0xe0006870);
	csr_writel(value >> 8, 0xe0006874);
	csr_writel(value, 0xe0006878);
}
#define CSR_HDMI_OUT0_CORE_DMA_DELAY_BASE_ADDR 0xe000687c
#define CSR_HDMI_OUT0_CORE_DMA_DELAY_BASE_SIZE 4
static inline unsigned int hdmi_out0_core_dma_delay_base_read(void) {
	unsigned int r = csr_readl(0xe000687c);
	r <<= 8;
	r |= csr_readl(0xe0006880);
	r <<= 8;
	r |= csr_readl(0xe0006884);
	r <<= 8;
	r |= csr_readl(0xe0006888);
	return r;
}
static inline void hdmi_out0_core_dma_delay_base_write(unsigned int value) {
	csr_writel(value >> 24, 0xe000687c);
	csr_writel(value >> 16, 0xe0006880);
	csr_writel(value >> 8, 0xe0006884);
	csr_writel(value, 0xe0006888);
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_CMD_DATA_ADDR 0xe000688c
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_CMD_DATA_SIZE 2
static inline unsigned short int hdmi_out0_driver_clocking_cmd_data_read(void) {
	unsigned short int r = csr_readl(0xe000688c);
	r <<= 8;
	r |= csr_readl(0xe0006890);
	return r;
}
static inline void hdmi_out0_driver_clocking_cmd_data_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000688c);
	csr_writel(value, 0xe0006890);
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_SEND_CMD_DATA_ADDR 0xe0006894
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_SEND_CMD_DATA_SIZE 1
static inline unsigned char hdmi_out0_driver_clocking_send_cmd_data_read(void) {
	unsigned char r = csr_readl(0xe0006894);
	return r;
}
static inline void hdmi_out0_driver_clocking_send_cmd_data_write(unsigned char value) {
	csr_writel(value, 0xe0006894);
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_SEND_GO_ADDR 0xe0006898
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_SEND_GO_SIZE 1
static inline unsigned char hdmi_out0_driver_clocking_send_go_read(void) {
	unsigned char r = csr_readl(0xe0006898);
	return r;
}
static inline void hdmi_out0_driver_clocking_send_go_write(unsigned char value) {
	csr_writel(value, 0xe0006898);
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_STATUS_ADDR 0xe000689c
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_STATUS_SIZE 1
static inline unsigned char hdmi_out0_driver_clocking_status_read(void) {
	unsigned char r = csr_readl(0xe000689c);
	return r;
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_RESET_ADDR 0xe00068a0
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_RESET_SIZE 1
static inline unsigned char hdmi_out0_driver_clocking_pll_reset_read(void) {
	unsigned char r = csr_readl(0xe00068a0);
	return r;
}
static inline void hdmi_out0_driver_clocking_pll_reset_write(unsigned char value) {
	csr_writel(value, 0xe00068a0);
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_ADR_ADDR 0xe00068a4
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_ADR_SIZE 1
static inline unsigned char hdmi_out0_driver_clocking_pll_adr_read(void) {
	unsigned char r = csr_readl(0xe00068a4);
	return r;
}
static inline void hdmi_out0_driver_clocking_pll_adr_write(unsigned char value) {
	csr_writel(value, 0xe00068a4);
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_DAT_R_ADDR 0xe00068a8
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_DAT_R_SIZE 2
static inline unsigned short int hdmi_out0_driver_clocking_pll_dat_r_read(void) {
	unsigned short int r = csr_readl(0xe00068a8);
	r <<= 8;
	r |= csr_readl(0xe00068ac);
	return r;
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_DAT_W_ADDR 0xe00068b0
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_DAT_W_SIZE 2
static inline unsigned short int hdmi_out0_driver_clocking_pll_dat_w_read(void) {
	unsigned short int r = csr_readl(0xe00068b0);
	r <<= 8;
	r |= csr_readl(0xe00068b4);
	return r;
}
static inline void hdmi_out0_driver_clocking_pll_dat_w_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe00068b0);
	csr_writel(value, 0xe00068b4);
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_READ_ADDR 0xe00068b8
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_READ_SIZE 1
static inline unsigned char hdmi_out0_driver_clocking_pll_read_read(void) {
	unsigned char r = csr_readl(0xe00068b8);
	return r;
}
static inline void hdmi_out0_driver_clocking_pll_read_write(unsigned char value) {
	csr_writel(value, 0xe00068b8);
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_WRITE_ADDR 0xe00068bc
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_WRITE_SIZE 1
static inline unsigned char hdmi_out0_driver_clocking_pll_write_read(void) {
	unsigned char r = csr_readl(0xe00068bc);
	return r;
}
static inline void hdmi_out0_driver_clocking_pll_write_write(unsigned char value) {
	csr_writel(value, 0xe00068bc);
}
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_DRDY_ADDR 0xe00068c0
#define CSR_HDMI_OUT0_DRIVER_CLOCKING_PLL_DRDY_SIZE 1
static inline unsigned char hdmi_out0_driver_clocking_pll_drdy_read(void) {
	unsigned char r = csr_readl(0xe00068c0);
	return r;
}

/* hdmi_out1 */
#define CSR_HDMI_OUT1_BASE 0xe0007000
#define CSR_HDMI_OUT1_CORE_UNDERFLOW_ENABLE_ADDR 0xe0007000
#define CSR_HDMI_OUT1_CORE_UNDERFLOW_ENABLE_SIZE 1
static inline unsigned char hdmi_out1_core_underflow_enable_read(void) {
	unsigned char r = csr_readl(0xe0007000);
	return r;
}
static inline void hdmi_out1_core_underflow_enable_write(unsigned char value) {
	csr_writel(value, 0xe0007000);
}
#define CSR_HDMI_OUT1_CORE_UNDERFLOW_UPDATE_ADDR 0xe0007004
#define CSR_HDMI_OUT1_CORE_UNDERFLOW_UPDATE_SIZE 1
static inline unsigned char hdmi_out1_core_underflow_update_read(void) {
	unsigned char r = csr_readl(0xe0007004);
	return r;
}
static inline void hdmi_out1_core_underflow_update_write(unsigned char value) {
	csr_writel(value, 0xe0007004);
}
#define CSR_HDMI_OUT1_CORE_UNDERFLOW_COUNTER_ADDR 0xe0007008
#define CSR_HDMI_OUT1_CORE_UNDERFLOW_COUNTER_SIZE 4
static inline unsigned int hdmi_out1_core_underflow_counter_read(void) {
	unsigned int r = csr_readl(0xe0007008);
	r <<= 8;
	r |= csr_readl(0xe000700c);
	r <<= 8;
	r |= csr_readl(0xe0007010);
	r <<= 8;
	r |= csr_readl(0xe0007014);
	return r;
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_ENABLE_ADDR 0xe0007018
#define CSR_HDMI_OUT1_CORE_INITIATOR_ENABLE_SIZE 1
static inline unsigned char hdmi_out1_core_initiator_enable_read(void) {
	unsigned char r = csr_readl(0xe0007018);
	return r;
}
static inline void hdmi_out1_core_initiator_enable_write(unsigned char value) {
	csr_writel(value, 0xe0007018);
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_HRES_ADDR 0xe000701c
#define CSR_HDMI_OUT1_CORE_INITIATOR_HRES_SIZE 2
static inline unsigned short int hdmi_out1_core_initiator_hres_read(void) {
	unsigned short int r = csr_readl(0xe000701c);
	r <<= 8;
	r |= csr_readl(0xe0007020);
	return r;
}
static inline void hdmi_out1_core_initiator_hres_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000701c);
	csr_writel(value, 0xe0007020);
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_HSYNC_START_ADDR 0xe0007024
#define CSR_HDMI_OUT1_CORE_INITIATOR_HSYNC_START_SIZE 2
static inline unsigned short int hdmi_out1_core_initiator_hsync_start_read(void) {
	unsigned short int r = csr_readl(0xe0007024);
	r <<= 8;
	r |= csr_readl(0xe0007028);
	return r;
}
static inline void hdmi_out1_core_initiator_hsync_start_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe0007024);
	csr_writel(value, 0xe0007028);
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_HSYNC_END_ADDR 0xe000702c
#define CSR_HDMI_OUT1_CORE_INITIATOR_HSYNC_END_SIZE 2
static inline unsigned short int hdmi_out1_core_initiator_hsync_end_read(void) {
	unsigned short int r = csr_readl(0xe000702c);
	r <<= 8;
	r |= csr_readl(0xe0007030);
	return r;
}
static inline void hdmi_out1_core_initiator_hsync_end_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000702c);
	csr_writel(value, 0xe0007030);
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_HSCAN_ADDR 0xe0007034
#define CSR_HDMI_OUT1_CORE_INITIATOR_HSCAN_SIZE 2
static inline unsigned short int hdmi_out1_core_initiator_hscan_read(void) {
	unsigned short int r = csr_readl(0xe0007034);
	r <<= 8;
	r |= csr_readl(0xe0007038);
	return r;
}
static inline void hdmi_out1_core_initiator_hscan_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe0007034);
	csr_writel(value, 0xe0007038);
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_VRES_ADDR 0xe000703c
#define CSR_HDMI_OUT1_CORE_INITIATOR_VRES_SIZE 2
static inline unsigned short int hdmi_out1_core_initiator_vres_read(void) {
	unsigned short int r = csr_readl(0xe000703c);
	r <<= 8;
	r |= csr_readl(0xe0007040);
	return r;
}
static inline void hdmi_out1_core_initiator_vres_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000703c);
	csr_writel(value, 0xe0007040);
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_VSYNC_START_ADDR 0xe0007044
#define CSR_HDMI_OUT1_CORE_INITIATOR_VSYNC_START_SIZE 2
static inline unsigned short int hdmi_out1_core_initiator_vsync_start_read(void) {
	unsigned short int r = csr_readl(0xe0007044);
	r <<= 8;
	r |= csr_readl(0xe0007048);
	return r;
}
static inline void hdmi_out1_core_initiator_vsync_start_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe0007044);
	csr_writel(value, 0xe0007048);
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_VSYNC_END_ADDR 0xe000704c
#define CSR_HDMI_OUT1_CORE_INITIATOR_VSYNC_END_SIZE 2
static inline unsigned short int hdmi_out1_core_initiator_vsync_end_read(void) {
	unsigned short int r = csr_readl(0xe000704c);
	r <<= 8;
	r |= csr_readl(0xe0007050);
	return r;
}
static inline void hdmi_out1_core_initiator_vsync_end_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000704c);
	csr_writel(value, 0xe0007050);
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_VSCAN_ADDR 0xe0007054
#define CSR_HDMI_OUT1_CORE_INITIATOR_VSCAN_SIZE 2
static inline unsigned short int hdmi_out1_core_initiator_vscan_read(void) {
	unsigned short int r = csr_readl(0xe0007054);
	r <<= 8;
	r |= csr_readl(0xe0007058);
	return r;
}
static inline void hdmi_out1_core_initiator_vscan_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe0007054);
	csr_writel(value, 0xe0007058);
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_BASE_ADDR 0xe000705c
#define CSR_HDMI_OUT1_CORE_INITIATOR_BASE_SIZE 4
static inline unsigned int hdmi_out1_core_initiator_base_read(void) {
	unsigned int r = csr_readl(0xe000705c);
	r <<= 8;
	r |= csr_readl(0xe0007060);
	r <<= 8;
	r |= csr_readl(0xe0007064);
	r <<= 8;
	r |= csr_readl(0xe0007068);
	return r;
}
static inline void hdmi_out1_core_initiator_base_write(unsigned int value) {
	csr_writel(value >> 24, 0xe000705c);
	csr_writel(value >> 16, 0xe0007060);
	csr_writel(value >> 8, 0xe0007064);
	csr_writel(value, 0xe0007068);
}
#define CSR_HDMI_OUT1_CORE_INITIATOR_LENGTH_ADDR 0xe000706c
#define CSR_HDMI_OUT1_CORE_INITIATOR_LENGTH_SIZE 4
static inline unsigned int hdmi_out1_core_initiator_length_read(void) {
	unsigned int r = csr_readl(0xe000706c);
	r <<= 8;
	r |= csr_readl(0xe0007070);
	r <<= 8;
	r |= csr_readl(0xe0007074);
	r <<= 8;
	r |= csr_readl(0xe0007078);
	return r;
}
static inline void hdmi_out1_core_initiator_length_write(unsigned int value) {
	csr_writel(value >> 24, 0xe000706c);
	csr_writel(value >> 16, 0xe0007070);
	csr_writel(value >> 8, 0xe0007074);
	csr_writel(value, 0xe0007078);
}
#define CSR_HDMI_OUT1_CORE_DMA_DELAY_BASE_ADDR 0xe000707c
#define CSR_HDMI_OUT1_CORE_DMA_DELAY_BASE_SIZE 4
static inline unsigned int hdmi_out1_core_dma_delay_base_read(void) {
	unsigned int r = csr_readl(0xe000707c);
	r <<= 8;
	r |= csr_readl(0xe0007080);
	r <<= 8;
	r |= csr_readl(0xe0007084);
	r <<= 8;
	r |= csr_readl(0xe0007088);
	return r;
}
static inline void hdmi_out1_core_dma_delay_base_write(unsigned int value) {
	csr_writel(value >> 24, 0xe000707c);
	csr_writel(value >> 16, 0xe0007080);
	csr_writel(value >> 8, 0xe0007084);
	csr_writel(value, 0xe0007088);
}

/* info */
#define CSR_INFO_BASE 0xe0006000
#define CSR_INFO_DNA_ID_ADDR 0xe0006000
#define CSR_INFO_DNA_ID_SIZE 8
static inline unsigned long long int info_dna_id_read(void) {
	unsigned long long int r = csr_readl(0xe0006000);
	r <<= 8;
	r |= csr_readl(0xe0006004);
	r <<= 8;
	r |= csr_readl(0xe0006008);
	r <<= 8;
	r |= csr_readl(0xe000600c);
	r <<= 8;
	r |= csr_readl(0xe0006010);
	r <<= 8;
	r |= csr_readl(0xe0006014);
	r <<= 8;
	r |= csr_readl(0xe0006018);
	r <<= 8;
	r |= csr_readl(0xe000601c);
	return r;
}
#define CSR_INFO_GIT_COMMIT_ADDR 0xe0006020
#define CSR_INFO_GIT_COMMIT_SIZE 20
#define CSR_INFO_PLATFORM_PLATFORM_ADDR 0xe0006070
#define CSR_INFO_PLATFORM_PLATFORM_SIZE 8
static inline unsigned long long int info_platform_platform_read(void) {
	unsigned long long int r = csr_readl(0xe0006070);
	r <<= 8;
	r |= csr_readl(0xe0006074);
	r <<= 8;
	r |= csr_readl(0xe0006078);
	r <<= 8;
	r |= csr_readl(0xe000607c);
	r <<= 8;
	r |= csr_readl(0xe0006080);
	r <<= 8;
	r |= csr_readl(0xe0006084);
	r <<= 8;
	r |= csr_readl(0xe0006088);
	r <<= 8;
	r |= csr_readl(0xe000608c);
	return r;
}
#define CSR_INFO_PLATFORM_TARGET_ADDR 0xe0006090
#define CSR_INFO_PLATFORM_TARGET_SIZE 8
static inline unsigned long long int info_platform_target_read(void) {
	unsigned long long int r = csr_readl(0xe0006090);
	r <<= 8;
	r |= csr_readl(0xe0006094);
	r <<= 8;
	r |= csr_readl(0xe0006098);
	r <<= 8;
	r |= csr_readl(0xe000609c);
	r <<= 8;
	r |= csr_readl(0xe00060a0);
	r <<= 8;
	r |= csr_readl(0xe00060a4);
	r <<= 8;
	r |= csr_readl(0xe00060a8);
	r <<= 8;
	r |= csr_readl(0xe00060ac);
	return r;
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
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_UPDATE_ADDR 0xe000406c
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_UPDATE_SIZE 1
static inline unsigned char sdram_controller_bandwidth_update_read(void) {
	unsigned char r = csr_readl(0xe000406c);
	return r;
}
static inline void sdram_controller_bandwidth_update_write(unsigned char value) {
	csr_writel(value, 0xe000406c);
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NREADS_ADDR 0xe0004070
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NREADS_SIZE 3
static inline unsigned int sdram_controller_bandwidth_nreads_read(void) {
	unsigned int r = csr_readl(0xe0004070);
	r <<= 8;
	r |= csr_readl(0xe0004074);
	r <<= 8;
	r |= csr_readl(0xe0004078);
	return r;
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NWRITES_ADDR 0xe000407c
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NWRITES_SIZE 3
static inline unsigned int sdram_controller_bandwidth_nwrites_read(void) {
	unsigned int r = csr_readl(0xe000407c);
	r <<= 8;
	r |= csr_readl(0xe0004080);
	r <<= 8;
	r |= csr_readl(0xe0004084);
	return r;
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_DATA_WIDTH_ADDR 0xe0004088
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_DATA_WIDTH_SIZE 1
static inline unsigned char sdram_controller_bandwidth_data_width_read(void) {
	unsigned char r = csr_readl(0xe0004088);
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

/* uart_phy */
#define CSR_UART_PHY_BASE 0xe0001000
#define CSR_UART_PHY_TUNING_WORD_ADDR 0xe0001000
#define CSR_UART_PHY_TUNING_WORD_SIZE 4
static inline unsigned int uart_phy_tuning_word_read(void) {
	unsigned int r = csr_readl(0xe0001000);
	r <<= 8;
	r |= csr_readl(0xe0001004);
	r <<= 8;
	r |= csr_readl(0xe0001008);
	r <<= 8;
	r |= csr_readl(0xe000100c);
	return r;
}
static inline void uart_phy_tuning_word_write(unsigned int value) {
	csr_writel(value >> 24, 0xe0001000);
	csr_writel(value >> 16, 0xe0001004);
	csr_writel(value >> 8, 0xe0001008);
	csr_writel(value, 0xe000100c);
}

/* hdmi_in0_edid_mem */
#define CSR_HDMI_IN0_EDID_MEM_BASE 0xe0008000

/* hdmi_in1_edid_mem */
#define CSR_HDMI_IN1_EDID_MEM_BASE 0xe0009000

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
#define SYSTEM_CLOCK_FREQUENCY 75000000
static inline int system_clock_frequency_read(void) {
	return 75000000;
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
#define HDMI_IN0_DESCRIPTION "  Type A connector, marked as J1, on side with USB connectors.\r\n  To use J1, make sure:\r\n   * JP4 has a jumper (it connects / disconnects 5V to HDMI pin 18).\r\n   * JP2 (marked only as SDA/SCL - not to be confused with JP6 and JP6)\r\n     has *two* jumpers (horizontally).\r\n   * JP5 has a jumper (it enables the HDMI input buffer).\r\n"
static inline const char * hdmi_in0_description_read(void) {
	return "  Type A connector, marked as J1, on side with USB connectors.\r\n  To use J1, make sure:\r\n   * JP4 has a jumper (it connects / disconnects 5V to HDMI pin 18).\r\n   * JP2 (marked only as SDA/SCL - not to be confused with JP6 and JP6)\r\n     has *two* jumpers (horizontally).\r\n   * JP5 has a jumper (it enables the HDMI input buffer).\r\n";
}
#define HDMI_IN0_MNEMONIC "J1"
static inline const char * hdmi_in0_mnemonic_read(void) {
	return "J1";
}
#define HDMI_IN1_DESCRIPTION "  Type A connector, marked as J3, between audio connectors and\r\n  Ethernet RJ45 connector.\r\n  To use J3, make sure:\r\n  * JP8 has a jumper (it connects / disconnects 5V to HDMI pin 18)\r\n  * JP6 and JP7 do *not* have any jumpers (it connect J3's and J2's\r\n    EDID lines together).\r\n"
static inline const char * hdmi_in1_description_read(void) {
	return "  Type A connector, marked as J3, between audio connectors and\r\n  Ethernet RJ45 connector.\r\n  To use J3, make sure:\r\n  * JP8 has a jumper (it connects / disconnects 5V to HDMI pin 18)\r\n  * JP6 and JP7 do *not* have any jumpers (it connect J3's and J2's\r\n    EDID lines together).\r\n";
}
#define HDMI_IN1_MNEMONIC "J3"
static inline const char * hdmi_in1_mnemonic_read(void) {
	return "J3";
}
#define HDMI_OUT0_DESCRIPTION "  Type A connector, marked as J2, next to the power connector.\r\n  To use J2, make sure:\r\n  * JP8 has a jumper (it connects / disconnects 5V to HDMI pin 18)\r\n  * JP6 and JP7 do *not* have any jumpers (it connect J3's and J2's\r\n    EDID lines together).\r\n"
static inline const char * hdmi_out0_description_read(void) {
	return "  Type A connector, marked as J2, next to the power connector.\r\n  To use J2, make sure:\r\n  * JP8 has a jumper (it connects / disconnects 5V to HDMI pin 18)\r\n  * JP6 and JP7 do *not* have any jumpers (it connect J3's and J2's\r\n    EDID lines together).\r\n";
}
#define HDMI_OUT0_MNEMONIC "J2"
static inline const char * hdmi_out0_mnemonic_read(void) {
	return "J2";
}
#define HDMI_OUT1_DESCRIPTION "  Micro-D connector, marked as JB, on the same side as switches\r\n  + LEDs but on the underside of the board below MOD connector.\r\n  Works as either output or input because it isn't buffered.\r\n  Also often referred to as 'JA'.\r\n"
static inline const char * hdmi_out1_description_read(void) {
	return "  Micro-D connector, marked as JB, on the same side as switches\r\n  + LEDs but on the underside of the board below MOD connector.\r\n  Works as either output or input because it isn't buffered.\r\n  Also often referred to as 'JA'.\r\n";
}
#define HDMI_OUT1_MNEMONIC "JB"
static inline const char * hdmi_out1_mnemonic_read(void) {
	return "JB";
}
#define HDMI_OUT0_DRIVER_CLOCKING_MAX_PIX_CLK 100000000
static inline int hdmi_out0_driver_clocking_max_pix_clk_read(void) {
	return 100000000;
}
#define HDMI_OUT0_DRIVER_CLOCKING_CLKFX_MD_MAX_1000 2000
static inline int hdmi_out0_driver_clocking_clkfx_md_max_1000_read(void) {
	return 2000;
}
#define CONFIG_CLOCK_FREQUENCY 75000000
static inline int config_clock_frequency_read(void) {
	return 75000000;
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
