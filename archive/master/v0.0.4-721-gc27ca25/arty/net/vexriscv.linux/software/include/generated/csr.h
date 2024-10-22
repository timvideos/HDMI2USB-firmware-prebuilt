//--------------------------------------------------------------------------------
// Auto-generated by Migen (0d0e17a) & LiteX (02bfda5e) on 2020-01-30 16:42:15
//--------------------------------------------------------------------------------
#include <generated/soc.h>
#ifndef __GENERATED_CSR_H
#define __GENERATED_CSR_H
#include <stdint.h>
#ifdef CSR_ACCESSORS_DEFINED
extern void csr_writeb(uint8_t value, unsigned long addr);
extern uint8_t csr_readb(unsigned long addr);
extern void csr_writew(uint16_t value, unsigned long addr);
extern uint16_t csr_readw(unsigned long addr);
extern void csr_writel(uint32_t value, unsigned long addr);
extern uint32_t csr_readl(unsigned long addr);
#else /* ! CSR_ACCESSORS_DEFINED */
#include <hw/common.h>
#endif /* ! CSR_ACCESSORS_DEFINED */

/* cas */
#define CSR_CAS_BASE 0xf0006800L
#define CSR_CAS_LEDS_OUT_ADDR 0xf0006800L
#define CSR_CAS_LEDS_OUT_SIZE 1
static inline unsigned char cas_leds_out_read(void) {
	unsigned char r = csr_readl(0xf0006800L);
	return r;
}
static inline void cas_leds_out_write(unsigned char value) {
	csr_writel(value, 0xf0006800L);
}
#define CSR_CAS_SWITCHES_IN_ADDR 0xf0006804L
#define CSR_CAS_SWITCHES_IN_SIZE 1
static inline unsigned char cas_switches_in_read(void) {
	unsigned char r = csr_readl(0xf0006804L);
	return r;
}
#define CSR_CAS_BUTTONS_EV_STATUS_ADDR 0xf0006808L
#define CSR_CAS_BUTTONS_EV_STATUS_SIZE 1
static inline unsigned char cas_buttons_ev_status_read(void) {
	unsigned char r = csr_readl(0xf0006808L);
	return r;
}
static inline void cas_buttons_ev_status_write(unsigned char value) {
	csr_writel(value, 0xf0006808L);
}
#define CSR_CAS_BUTTONS_EV_PENDING_ADDR 0xf000680cL
#define CSR_CAS_BUTTONS_EV_PENDING_SIZE 1
static inline unsigned char cas_buttons_ev_pending_read(void) {
	unsigned char r = csr_readl(0xf000680cL);
	return r;
}
static inline void cas_buttons_ev_pending_write(unsigned char value) {
	csr_writel(value, 0xf000680cL);
}
#define CSR_CAS_BUTTONS_EV_ENABLE_ADDR 0xf0006810L
#define CSR_CAS_BUTTONS_EV_ENABLE_SIZE 1
static inline unsigned char cas_buttons_ev_enable_read(void) {
	unsigned char r = csr_readl(0xf0006810L);
	return r;
}
static inline void cas_buttons_ev_enable_write(unsigned char value) {
	csr_writel(value, 0xf0006810L);
}

/* cpu */
#define CSR_CPU_BASE 0xf0000800L
#define CSR_CPU_TIMER_LATCH_ADDR 0xf0000800L
#define CSR_CPU_TIMER_LATCH_SIZE 1
static inline unsigned char cpu_timer_latch_read(void) {
	unsigned char r = csr_readl(0xf0000800L);
	return r;
}
static inline void cpu_timer_latch_write(unsigned char value) {
	csr_writel(value, 0xf0000800L);
}
#define CSR_CPU_TIMER_TIME_ADDR 0xf0000804L
#define CSR_CPU_TIMER_TIME_SIZE 8
static inline unsigned long long int cpu_timer_time_read(void) {
	unsigned long long int r = csr_readl(0xf0000804L);
	r <<= 8;
	r |= csr_readl(0xf0000808L);
	r <<= 8;
	r |= csr_readl(0xf000080cL);
	r <<= 8;
	r |= csr_readl(0xf0000810L);
	r <<= 8;
	r |= csr_readl(0xf0000814L);
	r <<= 8;
	r |= csr_readl(0xf0000818L);
	r <<= 8;
	r |= csr_readl(0xf000081cL);
	r <<= 8;
	r |= csr_readl(0xf0000820L);
	return r;
}
#define CSR_CPU_TIMER_TIME_CMP_ADDR 0xf0000824L
#define CSR_CPU_TIMER_TIME_CMP_SIZE 8
static inline unsigned long long int cpu_timer_time_cmp_read(void) {
	unsigned long long int r = csr_readl(0xf0000824L);
	r <<= 8;
	r |= csr_readl(0xf0000828L);
	r <<= 8;
	r |= csr_readl(0xf000082cL);
	r <<= 8;
	r |= csr_readl(0xf0000830L);
	r <<= 8;
	r |= csr_readl(0xf0000834L);
	r <<= 8;
	r |= csr_readl(0xf0000838L);
	r <<= 8;
	r |= csr_readl(0xf000083cL);
	r <<= 8;
	r |= csr_readl(0xf0000840L);
	return r;
}
static inline void cpu_timer_time_cmp_write(unsigned long long int value) {
	csr_writel(value >> 56, 0xf0000824L);
	csr_writel(value >> 48, 0xf0000828L);
	csr_writel(value >> 40, 0xf000082cL);
	csr_writel(value >> 32, 0xf0000830L);
	csr_writel(value >> 24, 0xf0000834L);
	csr_writel(value >> 16, 0xf0000838L);
	csr_writel(value >> 8, 0xf000083cL);
	csr_writel(value, 0xf0000840L);
}

/* ctrl */
#define CSR_CTRL_BASE 0xf0000000L
#define CSR_CTRL_RESET_ADDR 0xf0000000L
#define CSR_CTRL_RESET_SIZE 1
static inline unsigned char ctrl_reset_read(void) {
	unsigned char r = csr_readl(0xf0000000L);
	return r;
}
static inline void ctrl_reset_write(unsigned char value) {
	csr_writel(value, 0xf0000000L);
}
#define CSR_CTRL_SCRATCH_ADDR 0xf0000004L
#define CSR_CTRL_SCRATCH_SIZE 4
static inline unsigned int ctrl_scratch_read(void) {
	unsigned int r = csr_readl(0xf0000004L);
	r <<= 8;
	r |= csr_readl(0xf0000008L);
	r <<= 8;
	r |= csr_readl(0xf000000cL);
	r <<= 8;
	r |= csr_readl(0xf0000010L);
	return r;
}
static inline void ctrl_scratch_write(unsigned int value) {
	csr_writel(value >> 24, 0xf0000004L);
	csr_writel(value >> 16, 0xf0000008L);
	csr_writel(value >> 8, 0xf000000cL);
	csr_writel(value, 0xf0000010L);
}
#define CSR_CTRL_BUS_ERRORS_ADDR 0xf0000014L
#define CSR_CTRL_BUS_ERRORS_SIZE 4
static inline unsigned int ctrl_bus_errors_read(void) {
	unsigned int r = csr_readl(0xf0000014L);
	r <<= 8;
	r |= csr_readl(0xf0000018L);
	r <<= 8;
	r |= csr_readl(0xf000001cL);
	r <<= 8;
	r |= csr_readl(0xf0000020L);
	return r;
}

/* ddrphy */
#define CSR_DDRPHY_BASE 0xf0005800L
#define CSR_DDRPHY_HALF_SYS8X_TAPS_ADDR 0xf0005800L
#define CSR_DDRPHY_HALF_SYS8X_TAPS_SIZE 1
static inline unsigned char ddrphy_half_sys8x_taps_read(void) {
	unsigned char r = csr_readl(0xf0005800L);
	return r;
}
static inline void ddrphy_half_sys8x_taps_write(unsigned char value) {
	csr_writel(value, 0xf0005800L);
}
#define CSR_DDRPHY_CDLY_RST_ADDR 0xf0005804L
#define CSR_DDRPHY_CDLY_RST_SIZE 1
static inline unsigned char ddrphy_cdly_rst_read(void) {
	unsigned char r = csr_readl(0xf0005804L);
	return r;
}
static inline void ddrphy_cdly_rst_write(unsigned char value) {
	csr_writel(value, 0xf0005804L);
}
#define CSR_DDRPHY_CDLY_INC_ADDR 0xf0005808L
#define CSR_DDRPHY_CDLY_INC_SIZE 1
static inline unsigned char ddrphy_cdly_inc_read(void) {
	unsigned char r = csr_readl(0xf0005808L);
	return r;
}
static inline void ddrphy_cdly_inc_write(unsigned char value) {
	csr_writel(value, 0xf0005808L);
}
#define CSR_DDRPHY_DLY_SEL_ADDR 0xf000580cL
#define CSR_DDRPHY_DLY_SEL_SIZE 1
static inline unsigned char ddrphy_dly_sel_read(void) {
	unsigned char r = csr_readl(0xf000580cL);
	return r;
}
static inline void ddrphy_dly_sel_write(unsigned char value) {
	csr_writel(value, 0xf000580cL);
}
#define CSR_DDRPHY_RDLY_DQ_RST_ADDR 0xf0005810L
#define CSR_DDRPHY_RDLY_DQ_RST_SIZE 1
static inline unsigned char ddrphy_rdly_dq_rst_read(void) {
	unsigned char r = csr_readl(0xf0005810L);
	return r;
}
static inline void ddrphy_rdly_dq_rst_write(unsigned char value) {
	csr_writel(value, 0xf0005810L);
}
#define CSR_DDRPHY_RDLY_DQ_INC_ADDR 0xf0005814L
#define CSR_DDRPHY_RDLY_DQ_INC_SIZE 1
static inline unsigned char ddrphy_rdly_dq_inc_read(void) {
	unsigned char r = csr_readl(0xf0005814L);
	return r;
}
static inline void ddrphy_rdly_dq_inc_write(unsigned char value) {
	csr_writel(value, 0xf0005814L);
}
#define CSR_DDRPHY_RDLY_DQ_BITSLIP_RST_ADDR 0xf0005818L
#define CSR_DDRPHY_RDLY_DQ_BITSLIP_RST_SIZE 1
static inline unsigned char ddrphy_rdly_dq_bitslip_rst_read(void) {
	unsigned char r = csr_readl(0xf0005818L);
	return r;
}
static inline void ddrphy_rdly_dq_bitslip_rst_write(unsigned char value) {
	csr_writel(value, 0xf0005818L);
}
#define CSR_DDRPHY_RDLY_DQ_BITSLIP_ADDR 0xf000581cL
#define CSR_DDRPHY_RDLY_DQ_BITSLIP_SIZE 1
static inline unsigned char ddrphy_rdly_dq_bitslip_read(void) {
	unsigned char r = csr_readl(0xf000581cL);
	return r;
}
static inline void ddrphy_rdly_dq_bitslip_write(unsigned char value) {
	csr_writel(value, 0xf000581cL);
}

/* ethmac */
#define CSR_ETHMAC_BASE 0xf0007800L
#define CSR_ETHMAC_SRAM_WRITER_SLOT_ADDR 0xf0007800L
#define CSR_ETHMAC_SRAM_WRITER_SLOT_SIZE 1
static inline unsigned char ethmac_sram_writer_slot_read(void) {
	unsigned char r = csr_readl(0xf0007800L);
	return r;
}
#define CSR_ETHMAC_SRAM_WRITER_LENGTH_ADDR 0xf0007804L
#define CSR_ETHMAC_SRAM_WRITER_LENGTH_SIZE 4
static inline unsigned int ethmac_sram_writer_length_read(void) {
	unsigned int r = csr_readl(0xf0007804L);
	r <<= 8;
	r |= csr_readl(0xf0007808L);
	r <<= 8;
	r |= csr_readl(0xf000780cL);
	r <<= 8;
	r |= csr_readl(0xf0007810L);
	return r;
}
#define CSR_ETHMAC_SRAM_WRITER_ERRORS_ADDR 0xf0007814L
#define CSR_ETHMAC_SRAM_WRITER_ERRORS_SIZE 4
static inline unsigned int ethmac_sram_writer_errors_read(void) {
	unsigned int r = csr_readl(0xf0007814L);
	r <<= 8;
	r |= csr_readl(0xf0007818L);
	r <<= 8;
	r |= csr_readl(0xf000781cL);
	r <<= 8;
	r |= csr_readl(0xf0007820L);
	return r;
}
#define CSR_ETHMAC_SRAM_WRITER_EV_STATUS_ADDR 0xf0007824L
#define CSR_ETHMAC_SRAM_WRITER_EV_STATUS_SIZE 1
static inline unsigned char ethmac_sram_writer_ev_status_read(void) {
	unsigned char r = csr_readl(0xf0007824L);
	return r;
}
static inline void ethmac_sram_writer_ev_status_write(unsigned char value) {
	csr_writel(value, 0xf0007824L);
}
#define CSR_ETHMAC_SRAM_WRITER_EV_PENDING_ADDR 0xf0007828L
#define CSR_ETHMAC_SRAM_WRITER_EV_PENDING_SIZE 1
static inline unsigned char ethmac_sram_writer_ev_pending_read(void) {
	unsigned char r = csr_readl(0xf0007828L);
	return r;
}
static inline void ethmac_sram_writer_ev_pending_write(unsigned char value) {
	csr_writel(value, 0xf0007828L);
}
#define CSR_ETHMAC_SRAM_WRITER_EV_ENABLE_ADDR 0xf000782cL
#define CSR_ETHMAC_SRAM_WRITER_EV_ENABLE_SIZE 1
static inline unsigned char ethmac_sram_writer_ev_enable_read(void) {
	unsigned char r = csr_readl(0xf000782cL);
	return r;
}
static inline void ethmac_sram_writer_ev_enable_write(unsigned char value) {
	csr_writel(value, 0xf000782cL);
}
#define CSR_ETHMAC_SRAM_READER_START_ADDR 0xf0007830L
#define CSR_ETHMAC_SRAM_READER_START_SIZE 1
static inline unsigned char ethmac_sram_reader_start_read(void) {
	unsigned char r = csr_readl(0xf0007830L);
	return r;
}
static inline void ethmac_sram_reader_start_write(unsigned char value) {
	csr_writel(value, 0xf0007830L);
}
#define CSR_ETHMAC_SRAM_READER_READY_ADDR 0xf0007834L
#define CSR_ETHMAC_SRAM_READER_READY_SIZE 1
static inline unsigned char ethmac_sram_reader_ready_read(void) {
	unsigned char r = csr_readl(0xf0007834L);
	return r;
}
#define CSR_ETHMAC_SRAM_READER_LEVEL_ADDR 0xf0007838L
#define CSR_ETHMAC_SRAM_READER_LEVEL_SIZE 1
static inline unsigned char ethmac_sram_reader_level_read(void) {
	unsigned char r = csr_readl(0xf0007838L);
	return r;
}
#define CSR_ETHMAC_SRAM_READER_SLOT_ADDR 0xf000783cL
#define CSR_ETHMAC_SRAM_READER_SLOT_SIZE 1
static inline unsigned char ethmac_sram_reader_slot_read(void) {
	unsigned char r = csr_readl(0xf000783cL);
	return r;
}
static inline void ethmac_sram_reader_slot_write(unsigned char value) {
	csr_writel(value, 0xf000783cL);
}
#define CSR_ETHMAC_SRAM_READER_LENGTH_ADDR 0xf0007840L
#define CSR_ETHMAC_SRAM_READER_LENGTH_SIZE 2
static inline unsigned short int ethmac_sram_reader_length_read(void) {
	unsigned short int r = csr_readl(0xf0007840L);
	r <<= 8;
	r |= csr_readl(0xf0007844L);
	return r;
}
static inline void ethmac_sram_reader_length_write(unsigned short int value) {
	csr_writel(value >> 8, 0xf0007840L);
	csr_writel(value, 0xf0007844L);
}
#define CSR_ETHMAC_SRAM_READER_EV_STATUS_ADDR 0xf0007848L
#define CSR_ETHMAC_SRAM_READER_EV_STATUS_SIZE 1
static inline unsigned char ethmac_sram_reader_ev_status_read(void) {
	unsigned char r = csr_readl(0xf0007848L);
	return r;
}
static inline void ethmac_sram_reader_ev_status_write(unsigned char value) {
	csr_writel(value, 0xf0007848L);
}
#define CSR_ETHMAC_SRAM_READER_EV_PENDING_ADDR 0xf000784cL
#define CSR_ETHMAC_SRAM_READER_EV_PENDING_SIZE 1
static inline unsigned char ethmac_sram_reader_ev_pending_read(void) {
	unsigned char r = csr_readl(0xf000784cL);
	return r;
}
static inline void ethmac_sram_reader_ev_pending_write(unsigned char value) {
	csr_writel(value, 0xf000784cL);
}
#define CSR_ETHMAC_SRAM_READER_EV_ENABLE_ADDR 0xf0007850L
#define CSR_ETHMAC_SRAM_READER_EV_ENABLE_SIZE 1
static inline unsigned char ethmac_sram_reader_ev_enable_read(void) {
	unsigned char r = csr_readl(0xf0007850L);
	return r;
}
static inline void ethmac_sram_reader_ev_enable_write(unsigned char value) {
	csr_writel(value, 0xf0007850L);
}
#define CSR_ETHMAC_PREAMBLE_CRC_ADDR 0xf0007854L
#define CSR_ETHMAC_PREAMBLE_CRC_SIZE 1
static inline unsigned char ethmac_preamble_crc_read(void) {
	unsigned char r = csr_readl(0xf0007854L);
	return r;
}
#define CSR_ETHMAC_PREAMBLE_ERRORS_ADDR 0xf0007858L
#define CSR_ETHMAC_PREAMBLE_ERRORS_SIZE 4
static inline unsigned int ethmac_preamble_errors_read(void) {
	unsigned int r = csr_readl(0xf0007858L);
	r <<= 8;
	r |= csr_readl(0xf000785cL);
	r <<= 8;
	r |= csr_readl(0xf0007860L);
	r <<= 8;
	r |= csr_readl(0xf0007864L);
	return r;
}
#define CSR_ETHMAC_CRC_ERRORS_ADDR 0xf0007868L
#define CSR_ETHMAC_CRC_ERRORS_SIZE 4
static inline unsigned int ethmac_crc_errors_read(void) {
	unsigned int r = csr_readl(0xf0007868L);
	r <<= 8;
	r |= csr_readl(0xf000786cL);
	r <<= 8;
	r |= csr_readl(0xf0007870L);
	r <<= 8;
	r |= csr_readl(0xf0007874L);
	return r;
}

/* ethphy */
#define CSR_ETHPHY_BASE 0xf0007000L
#define CSR_ETHPHY_CRG_RESET_ADDR 0xf0007000L
#define CSR_ETHPHY_CRG_RESET_SIZE 1
static inline unsigned char ethphy_crg_reset_read(void) {
	unsigned char r = csr_readl(0xf0007000L);
	return r;
}
static inline void ethphy_crg_reset_write(unsigned char value) {
	csr_writel(value, 0xf0007000L);
}
#define CSR_ETHPHY_MDIO_W_ADDR 0xf0007004L
#define CSR_ETHPHY_MDIO_W_SIZE 1
static inline unsigned char ethphy_mdio_w_read(void) {
	unsigned char r = csr_readl(0xf0007004L);
	return r;
}
static inline void ethphy_mdio_w_write(unsigned char value) {
	csr_writel(value, 0xf0007004L);
}
#define CSR_ETHPHY_MDIO_W_MDC_OFFSET 0
#define CSR_ETHPHY_MDIO_W_MDC_SIZE 1
#define CSR_ETHPHY_MDIO_W_OE_OFFSET 1
#define CSR_ETHPHY_MDIO_W_OE_SIZE 1
#define CSR_ETHPHY_MDIO_W_W_OFFSET 2
#define CSR_ETHPHY_MDIO_W_W_SIZE 1
#define CSR_ETHPHY_MDIO_R_ADDR 0xf0007008L
#define CSR_ETHPHY_MDIO_R_SIZE 1
static inline unsigned char ethphy_mdio_r_read(void) {
	unsigned char r = csr_readl(0xf0007008L);
	return r;
}
#define CSR_ETHPHY_MDIO_R_R_OFFSET 0
#define CSR_ETHPHY_MDIO_R_R_SIZE 1

/* info */
#define CSR_INFO_BASE 0xf0006000L
#define CSR_INFO_DNA_ID_ADDR 0xf0006000L
#define CSR_INFO_DNA_ID_SIZE 8
static inline unsigned long long int info_dna_id_read(void) {
	unsigned long long int r = csr_readl(0xf0006000L);
	r <<= 8;
	r |= csr_readl(0xf0006004L);
	r <<= 8;
	r |= csr_readl(0xf0006008L);
	r <<= 8;
	r |= csr_readl(0xf000600cL);
	r <<= 8;
	r |= csr_readl(0xf0006010L);
	r <<= 8;
	r |= csr_readl(0xf0006014L);
	r <<= 8;
	r |= csr_readl(0xf0006018L);
	r <<= 8;
	r |= csr_readl(0xf000601cL);
	return r;
}
#define CSR_INFO_GIT_COMMIT_ADDR 0xf0006020L
#define CSR_INFO_GIT_COMMIT_SIZE 20
#define CSR_INFO_PLATFORM_PLATFORM_ADDR 0xf0006070L
#define CSR_INFO_PLATFORM_PLATFORM_SIZE 8
static inline unsigned long long int info_platform_platform_read(void) {
	unsigned long long int r = csr_readl(0xf0006070L);
	r <<= 8;
	r |= csr_readl(0xf0006074L);
	r <<= 8;
	r |= csr_readl(0xf0006078L);
	r <<= 8;
	r |= csr_readl(0xf000607cL);
	r <<= 8;
	r |= csr_readl(0xf0006080L);
	r <<= 8;
	r |= csr_readl(0xf0006084L);
	r <<= 8;
	r |= csr_readl(0xf0006088L);
	r <<= 8;
	r |= csr_readl(0xf000608cL);
	return r;
}
#define CSR_INFO_PLATFORM_TARGET_ADDR 0xf0006090L
#define CSR_INFO_PLATFORM_TARGET_SIZE 8
static inline unsigned long long int info_platform_target_read(void) {
	unsigned long long int r = csr_readl(0xf0006090L);
	r <<= 8;
	r |= csr_readl(0xf0006094L);
	r <<= 8;
	r |= csr_readl(0xf0006098L);
	r <<= 8;
	r |= csr_readl(0xf000609cL);
	r <<= 8;
	r |= csr_readl(0xf00060a0L);
	r <<= 8;
	r |= csr_readl(0xf00060a4L);
	r <<= 8;
	r |= csr_readl(0xf00060a8L);
	r <<= 8;
	r |= csr_readl(0xf00060acL);
	return r;
}
#define CSR_INFO_XADC_TEMPERATURE_ADDR 0xf00060b0L
#define CSR_INFO_XADC_TEMPERATURE_SIZE 2
static inline unsigned short int info_xadc_temperature_read(void) {
	unsigned short int r = csr_readl(0xf00060b0L);
	r <<= 8;
	r |= csr_readl(0xf00060b4L);
	return r;
}
#define CSR_INFO_XADC_VCCINT_ADDR 0xf00060b8L
#define CSR_INFO_XADC_VCCINT_SIZE 2
static inline unsigned short int info_xadc_vccint_read(void) {
	unsigned short int r = csr_readl(0xf00060b8L);
	r <<= 8;
	r |= csr_readl(0xf00060bcL);
	return r;
}
#define CSR_INFO_XADC_VCCAUX_ADDR 0xf00060c0L
#define CSR_INFO_XADC_VCCAUX_SIZE 2
static inline unsigned short int info_xadc_vccaux_read(void) {
	unsigned short int r = csr_readl(0xf00060c0L);
	r <<= 8;
	r |= csr_readl(0xf00060c4L);
	return r;
}
#define CSR_INFO_XADC_VCCBRAM_ADDR 0xf00060c8L
#define CSR_INFO_XADC_VCCBRAM_SIZE 2
static inline unsigned short int info_xadc_vccbram_read(void) {
	unsigned short int r = csr_readl(0xf00060c8L);
	r <<= 8;
	r |= csr_readl(0xf00060ccL);
	return r;
}

/* sdram */
#define CSR_SDRAM_BASE 0xf0004000L
#define CSR_SDRAM_DFII_CONTROL_ADDR 0xf0004000L
#define CSR_SDRAM_DFII_CONTROL_SIZE 1
static inline unsigned char sdram_dfii_control_read(void) {
	unsigned char r = csr_readl(0xf0004000L);
	return r;
}
static inline void sdram_dfii_control_write(unsigned char value) {
	csr_writel(value, 0xf0004000L);
}
#define CSR_SDRAM_DFII_PI0_COMMAND_ADDR 0xf0004004L
#define CSR_SDRAM_DFII_PI0_COMMAND_SIZE 1
static inline unsigned char sdram_dfii_pi0_command_read(void) {
	unsigned char r = csr_readl(0xf0004004L);
	return r;
}
static inline void sdram_dfii_pi0_command_write(unsigned char value) {
	csr_writel(value, 0xf0004004L);
}
#define CSR_SDRAM_DFII_PI0_COMMAND_ISSUE_ADDR 0xf0004008L
#define CSR_SDRAM_DFII_PI0_COMMAND_ISSUE_SIZE 1
static inline unsigned char sdram_dfii_pi0_command_issue_read(void) {
	unsigned char r = csr_readl(0xf0004008L);
	return r;
}
static inline void sdram_dfii_pi0_command_issue_write(unsigned char value) {
	csr_writel(value, 0xf0004008L);
}
#define CSR_SDRAM_DFII_PI0_ADDRESS_ADDR 0xf000400cL
#define CSR_SDRAM_DFII_PI0_ADDRESS_SIZE 2
static inline unsigned short int sdram_dfii_pi0_address_read(void) {
	unsigned short int r = csr_readl(0xf000400cL);
	r <<= 8;
	r |= csr_readl(0xf0004010L);
	return r;
}
static inline void sdram_dfii_pi0_address_write(unsigned short int value) {
	csr_writel(value >> 8, 0xf000400cL);
	csr_writel(value, 0xf0004010L);
}
#define CSR_SDRAM_DFII_PI0_BADDRESS_ADDR 0xf0004014L
#define CSR_SDRAM_DFII_PI0_BADDRESS_SIZE 1
static inline unsigned char sdram_dfii_pi0_baddress_read(void) {
	unsigned char r = csr_readl(0xf0004014L);
	return r;
}
static inline void sdram_dfii_pi0_baddress_write(unsigned char value) {
	csr_writel(value, 0xf0004014L);
}
#define CSR_SDRAM_DFII_PI0_WRDATA_ADDR 0xf0004018L
#define CSR_SDRAM_DFII_PI0_WRDATA_SIZE 4
static inline unsigned int sdram_dfii_pi0_wrdata_read(void) {
	unsigned int r = csr_readl(0xf0004018L);
	r <<= 8;
	r |= csr_readl(0xf000401cL);
	r <<= 8;
	r |= csr_readl(0xf0004020L);
	r <<= 8;
	r |= csr_readl(0xf0004024L);
	return r;
}
static inline void sdram_dfii_pi0_wrdata_write(unsigned int value) {
	csr_writel(value >> 24, 0xf0004018L);
	csr_writel(value >> 16, 0xf000401cL);
	csr_writel(value >> 8, 0xf0004020L);
	csr_writel(value, 0xf0004024L);
}
#define CSR_SDRAM_DFII_PI0_RDDATA_ADDR 0xf0004028L
#define CSR_SDRAM_DFII_PI0_RDDATA_SIZE 4
static inline unsigned int sdram_dfii_pi0_rddata_read(void) {
	unsigned int r = csr_readl(0xf0004028L);
	r <<= 8;
	r |= csr_readl(0xf000402cL);
	r <<= 8;
	r |= csr_readl(0xf0004030L);
	r <<= 8;
	r |= csr_readl(0xf0004034L);
	return r;
}
#define CSR_SDRAM_DFII_PI1_COMMAND_ADDR 0xf0004038L
#define CSR_SDRAM_DFII_PI1_COMMAND_SIZE 1
static inline unsigned char sdram_dfii_pi1_command_read(void) {
	unsigned char r = csr_readl(0xf0004038L);
	return r;
}
static inline void sdram_dfii_pi1_command_write(unsigned char value) {
	csr_writel(value, 0xf0004038L);
}
#define CSR_SDRAM_DFII_PI1_COMMAND_ISSUE_ADDR 0xf000403cL
#define CSR_SDRAM_DFII_PI1_COMMAND_ISSUE_SIZE 1
static inline unsigned char sdram_dfii_pi1_command_issue_read(void) {
	unsigned char r = csr_readl(0xf000403cL);
	return r;
}
static inline void sdram_dfii_pi1_command_issue_write(unsigned char value) {
	csr_writel(value, 0xf000403cL);
}
#define CSR_SDRAM_DFII_PI1_ADDRESS_ADDR 0xf0004040L
#define CSR_SDRAM_DFII_PI1_ADDRESS_SIZE 2
static inline unsigned short int sdram_dfii_pi1_address_read(void) {
	unsigned short int r = csr_readl(0xf0004040L);
	r <<= 8;
	r |= csr_readl(0xf0004044L);
	return r;
}
static inline void sdram_dfii_pi1_address_write(unsigned short int value) {
	csr_writel(value >> 8, 0xf0004040L);
	csr_writel(value, 0xf0004044L);
}
#define CSR_SDRAM_DFII_PI1_BADDRESS_ADDR 0xf0004048L
#define CSR_SDRAM_DFII_PI1_BADDRESS_SIZE 1
static inline unsigned char sdram_dfii_pi1_baddress_read(void) {
	unsigned char r = csr_readl(0xf0004048L);
	return r;
}
static inline void sdram_dfii_pi1_baddress_write(unsigned char value) {
	csr_writel(value, 0xf0004048L);
}
#define CSR_SDRAM_DFII_PI1_WRDATA_ADDR 0xf000404cL
#define CSR_SDRAM_DFII_PI1_WRDATA_SIZE 4
static inline unsigned int sdram_dfii_pi1_wrdata_read(void) {
	unsigned int r = csr_readl(0xf000404cL);
	r <<= 8;
	r |= csr_readl(0xf0004050L);
	r <<= 8;
	r |= csr_readl(0xf0004054L);
	r <<= 8;
	r |= csr_readl(0xf0004058L);
	return r;
}
static inline void sdram_dfii_pi1_wrdata_write(unsigned int value) {
	csr_writel(value >> 24, 0xf000404cL);
	csr_writel(value >> 16, 0xf0004050L);
	csr_writel(value >> 8, 0xf0004054L);
	csr_writel(value, 0xf0004058L);
}
#define CSR_SDRAM_DFII_PI1_RDDATA_ADDR 0xf000405cL
#define CSR_SDRAM_DFII_PI1_RDDATA_SIZE 4
static inline unsigned int sdram_dfii_pi1_rddata_read(void) {
	unsigned int r = csr_readl(0xf000405cL);
	r <<= 8;
	r |= csr_readl(0xf0004060L);
	r <<= 8;
	r |= csr_readl(0xf0004064L);
	r <<= 8;
	r |= csr_readl(0xf0004068L);
	return r;
}
#define CSR_SDRAM_DFII_PI2_COMMAND_ADDR 0xf000406cL
#define CSR_SDRAM_DFII_PI2_COMMAND_SIZE 1
static inline unsigned char sdram_dfii_pi2_command_read(void) {
	unsigned char r = csr_readl(0xf000406cL);
	return r;
}
static inline void sdram_dfii_pi2_command_write(unsigned char value) {
	csr_writel(value, 0xf000406cL);
}
#define CSR_SDRAM_DFII_PI2_COMMAND_ISSUE_ADDR 0xf0004070L
#define CSR_SDRAM_DFII_PI2_COMMAND_ISSUE_SIZE 1
static inline unsigned char sdram_dfii_pi2_command_issue_read(void) {
	unsigned char r = csr_readl(0xf0004070L);
	return r;
}
static inline void sdram_dfii_pi2_command_issue_write(unsigned char value) {
	csr_writel(value, 0xf0004070L);
}
#define CSR_SDRAM_DFII_PI2_ADDRESS_ADDR 0xf0004074L
#define CSR_SDRAM_DFII_PI2_ADDRESS_SIZE 2
static inline unsigned short int sdram_dfii_pi2_address_read(void) {
	unsigned short int r = csr_readl(0xf0004074L);
	r <<= 8;
	r |= csr_readl(0xf0004078L);
	return r;
}
static inline void sdram_dfii_pi2_address_write(unsigned short int value) {
	csr_writel(value >> 8, 0xf0004074L);
	csr_writel(value, 0xf0004078L);
}
#define CSR_SDRAM_DFII_PI2_BADDRESS_ADDR 0xf000407cL
#define CSR_SDRAM_DFII_PI2_BADDRESS_SIZE 1
static inline unsigned char sdram_dfii_pi2_baddress_read(void) {
	unsigned char r = csr_readl(0xf000407cL);
	return r;
}
static inline void sdram_dfii_pi2_baddress_write(unsigned char value) {
	csr_writel(value, 0xf000407cL);
}
#define CSR_SDRAM_DFII_PI2_WRDATA_ADDR 0xf0004080L
#define CSR_SDRAM_DFII_PI2_WRDATA_SIZE 4
static inline unsigned int sdram_dfii_pi2_wrdata_read(void) {
	unsigned int r = csr_readl(0xf0004080L);
	r <<= 8;
	r |= csr_readl(0xf0004084L);
	r <<= 8;
	r |= csr_readl(0xf0004088L);
	r <<= 8;
	r |= csr_readl(0xf000408cL);
	return r;
}
static inline void sdram_dfii_pi2_wrdata_write(unsigned int value) {
	csr_writel(value >> 24, 0xf0004080L);
	csr_writel(value >> 16, 0xf0004084L);
	csr_writel(value >> 8, 0xf0004088L);
	csr_writel(value, 0xf000408cL);
}
#define CSR_SDRAM_DFII_PI2_RDDATA_ADDR 0xf0004090L
#define CSR_SDRAM_DFII_PI2_RDDATA_SIZE 4
static inline unsigned int sdram_dfii_pi2_rddata_read(void) {
	unsigned int r = csr_readl(0xf0004090L);
	r <<= 8;
	r |= csr_readl(0xf0004094L);
	r <<= 8;
	r |= csr_readl(0xf0004098L);
	r <<= 8;
	r |= csr_readl(0xf000409cL);
	return r;
}
#define CSR_SDRAM_DFII_PI3_COMMAND_ADDR 0xf00040a0L
#define CSR_SDRAM_DFII_PI3_COMMAND_SIZE 1
static inline unsigned char sdram_dfii_pi3_command_read(void) {
	unsigned char r = csr_readl(0xf00040a0L);
	return r;
}
static inline void sdram_dfii_pi3_command_write(unsigned char value) {
	csr_writel(value, 0xf00040a0L);
}
#define CSR_SDRAM_DFII_PI3_COMMAND_ISSUE_ADDR 0xf00040a4L
#define CSR_SDRAM_DFII_PI3_COMMAND_ISSUE_SIZE 1
static inline unsigned char sdram_dfii_pi3_command_issue_read(void) {
	unsigned char r = csr_readl(0xf00040a4L);
	return r;
}
static inline void sdram_dfii_pi3_command_issue_write(unsigned char value) {
	csr_writel(value, 0xf00040a4L);
}
#define CSR_SDRAM_DFII_PI3_ADDRESS_ADDR 0xf00040a8L
#define CSR_SDRAM_DFII_PI3_ADDRESS_SIZE 2
static inline unsigned short int sdram_dfii_pi3_address_read(void) {
	unsigned short int r = csr_readl(0xf00040a8L);
	r <<= 8;
	r |= csr_readl(0xf00040acL);
	return r;
}
static inline void sdram_dfii_pi3_address_write(unsigned short int value) {
	csr_writel(value >> 8, 0xf00040a8L);
	csr_writel(value, 0xf00040acL);
}
#define CSR_SDRAM_DFII_PI3_BADDRESS_ADDR 0xf00040b0L
#define CSR_SDRAM_DFII_PI3_BADDRESS_SIZE 1
static inline unsigned char sdram_dfii_pi3_baddress_read(void) {
	unsigned char r = csr_readl(0xf00040b0L);
	return r;
}
static inline void sdram_dfii_pi3_baddress_write(unsigned char value) {
	csr_writel(value, 0xf00040b0L);
}
#define CSR_SDRAM_DFII_PI3_WRDATA_ADDR 0xf00040b4L
#define CSR_SDRAM_DFII_PI3_WRDATA_SIZE 4
static inline unsigned int sdram_dfii_pi3_wrdata_read(void) {
	unsigned int r = csr_readl(0xf00040b4L);
	r <<= 8;
	r |= csr_readl(0xf00040b8L);
	r <<= 8;
	r |= csr_readl(0xf00040bcL);
	r <<= 8;
	r |= csr_readl(0xf00040c0L);
	return r;
}
static inline void sdram_dfii_pi3_wrdata_write(unsigned int value) {
	csr_writel(value >> 24, 0xf00040b4L);
	csr_writel(value >> 16, 0xf00040b8L);
	csr_writel(value >> 8, 0xf00040bcL);
	csr_writel(value, 0xf00040c0L);
}
#define CSR_SDRAM_DFII_PI3_RDDATA_ADDR 0xf00040c4L
#define CSR_SDRAM_DFII_PI3_RDDATA_SIZE 4
static inline unsigned int sdram_dfii_pi3_rddata_read(void) {
	unsigned int r = csr_readl(0xf00040c4L);
	r <<= 8;
	r |= csr_readl(0xf00040c8L);
	r <<= 8;
	r |= csr_readl(0xf00040ccL);
	r <<= 8;
	r |= csr_readl(0xf00040d0L);
	return r;
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_UPDATE_ADDR 0xf00040d4L
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_UPDATE_SIZE 1
static inline unsigned char sdram_controller_bandwidth_update_read(void) {
	unsigned char r = csr_readl(0xf00040d4L);
	return r;
}
static inline void sdram_controller_bandwidth_update_write(unsigned char value) {
	csr_writel(value, 0xf00040d4L);
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NREADS_ADDR 0xf00040d8L
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NREADS_SIZE 3
static inline unsigned int sdram_controller_bandwidth_nreads_read(void) {
	unsigned int r = csr_readl(0xf00040d8L);
	r <<= 8;
	r |= csr_readl(0xf00040dcL);
	r <<= 8;
	r |= csr_readl(0xf00040e0L);
	return r;
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NWRITES_ADDR 0xf00040e4L
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NWRITES_SIZE 3
static inline unsigned int sdram_controller_bandwidth_nwrites_read(void) {
	unsigned int r = csr_readl(0xf00040e4L);
	r <<= 8;
	r |= csr_readl(0xf00040e8L);
	r <<= 8;
	r |= csr_readl(0xf00040ecL);
	return r;
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_DATA_WIDTH_ADDR 0xf00040f0L
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_DATA_WIDTH_SIZE 1
static inline unsigned char sdram_controller_bandwidth_data_width_read(void) {
	unsigned char r = csr_readl(0xf00040f0L);
	return r;
}

/* spiflash */
#define CSR_SPIFLASH_BASE 0xf0005000L
#define CSR_SPIFLASH_BITBANG_ADDR 0xf0005000L
#define CSR_SPIFLASH_BITBANG_SIZE 1
static inline unsigned char spiflash_bitbang_read(void) {
	unsigned char r = csr_readl(0xf0005000L);
	return r;
}
static inline void spiflash_bitbang_write(unsigned char value) {
	csr_writel(value, 0xf0005000L);
}
#define CSR_SPIFLASH_MISO_ADDR 0xf0005004L
#define CSR_SPIFLASH_MISO_SIZE 1
static inline unsigned char spiflash_miso_read(void) {
	unsigned char r = csr_readl(0xf0005004L);
	return r;
}
#define CSR_SPIFLASH_BITBANG_EN_ADDR 0xf0005008L
#define CSR_SPIFLASH_BITBANG_EN_SIZE 1
static inline unsigned char spiflash_bitbang_en_read(void) {
	unsigned char r = csr_readl(0xf0005008L);
	return r;
}
static inline void spiflash_bitbang_en_write(unsigned char value) {
	csr_writel(value, 0xf0005008L);
}

/* timer0 */
#define CSR_TIMER0_BASE 0xf0002800L
#define CSR_TIMER0_LOAD_ADDR 0xf0002800L
#define CSR_TIMER0_LOAD_SIZE 4
static inline unsigned int timer0_load_read(void) {
	unsigned int r = csr_readl(0xf0002800L);
	r <<= 8;
	r |= csr_readl(0xf0002804L);
	r <<= 8;
	r |= csr_readl(0xf0002808L);
	r <<= 8;
	r |= csr_readl(0xf000280cL);
	return r;
}
static inline void timer0_load_write(unsigned int value) {
	csr_writel(value >> 24, 0xf0002800L);
	csr_writel(value >> 16, 0xf0002804L);
	csr_writel(value >> 8, 0xf0002808L);
	csr_writel(value, 0xf000280cL);
}
#define CSR_TIMER0_RELOAD_ADDR 0xf0002810L
#define CSR_TIMER0_RELOAD_SIZE 4
static inline unsigned int timer0_reload_read(void) {
	unsigned int r = csr_readl(0xf0002810L);
	r <<= 8;
	r |= csr_readl(0xf0002814L);
	r <<= 8;
	r |= csr_readl(0xf0002818L);
	r <<= 8;
	r |= csr_readl(0xf000281cL);
	return r;
}
static inline void timer0_reload_write(unsigned int value) {
	csr_writel(value >> 24, 0xf0002810L);
	csr_writel(value >> 16, 0xf0002814L);
	csr_writel(value >> 8, 0xf0002818L);
	csr_writel(value, 0xf000281cL);
}
#define CSR_TIMER0_EN_ADDR 0xf0002820L
#define CSR_TIMER0_EN_SIZE 1
static inline unsigned char timer0_en_read(void) {
	unsigned char r = csr_readl(0xf0002820L);
	return r;
}
static inline void timer0_en_write(unsigned char value) {
	csr_writel(value, 0xf0002820L);
}
#define CSR_TIMER0_UPDATE_VALUE_ADDR 0xf0002824L
#define CSR_TIMER0_UPDATE_VALUE_SIZE 1
static inline unsigned char timer0_update_value_read(void) {
	unsigned char r = csr_readl(0xf0002824L);
	return r;
}
static inline void timer0_update_value_write(unsigned char value) {
	csr_writel(value, 0xf0002824L);
}
#define CSR_TIMER0_VALUE_ADDR 0xf0002828L
#define CSR_TIMER0_VALUE_SIZE 4
static inline unsigned int timer0_value_read(void) {
	unsigned int r = csr_readl(0xf0002828L);
	r <<= 8;
	r |= csr_readl(0xf000282cL);
	r <<= 8;
	r |= csr_readl(0xf0002830L);
	r <<= 8;
	r |= csr_readl(0xf0002834L);
	return r;
}
#define CSR_TIMER0_EV_STATUS_ADDR 0xf0002838L
#define CSR_TIMER0_EV_STATUS_SIZE 1
static inline unsigned char timer0_ev_status_read(void) {
	unsigned char r = csr_readl(0xf0002838L);
	return r;
}
static inline void timer0_ev_status_write(unsigned char value) {
	csr_writel(value, 0xf0002838L);
}
#define CSR_TIMER0_EV_PENDING_ADDR 0xf000283cL
#define CSR_TIMER0_EV_PENDING_SIZE 1
static inline unsigned char timer0_ev_pending_read(void) {
	unsigned char r = csr_readl(0xf000283cL);
	return r;
}
static inline void timer0_ev_pending_write(unsigned char value) {
	csr_writel(value, 0xf000283cL);
}
#define CSR_TIMER0_EV_ENABLE_ADDR 0xf0002840L
#define CSR_TIMER0_EV_ENABLE_SIZE 1
static inline unsigned char timer0_ev_enable_read(void) {
	unsigned char r = csr_readl(0xf0002840L);
	return r;
}
static inline void timer0_ev_enable_write(unsigned char value) {
	csr_writel(value, 0xf0002840L);
}

/* uart */
#define CSR_UART_BASE 0xf0001800L
#define CSR_UART_RXTX_ADDR 0xf0001800L
#define CSR_UART_RXTX_SIZE 1
static inline unsigned char uart_rxtx_read(void) {
	unsigned char r = csr_readl(0xf0001800L);
	return r;
}
static inline void uart_rxtx_write(unsigned char value) {
	csr_writel(value, 0xf0001800L);
}
#define CSR_UART_TXFULL_ADDR 0xf0001804L
#define CSR_UART_TXFULL_SIZE 1
static inline unsigned char uart_txfull_read(void) {
	unsigned char r = csr_readl(0xf0001804L);
	return r;
}
#define CSR_UART_RXEMPTY_ADDR 0xf0001808L
#define CSR_UART_RXEMPTY_SIZE 1
static inline unsigned char uart_rxempty_read(void) {
	unsigned char r = csr_readl(0xf0001808L);
	return r;
}
#define CSR_UART_EV_STATUS_ADDR 0xf000180cL
#define CSR_UART_EV_STATUS_SIZE 1
static inline unsigned char uart_ev_status_read(void) {
	unsigned char r = csr_readl(0xf000180cL);
	return r;
}
static inline void uart_ev_status_write(unsigned char value) {
	csr_writel(value, 0xf000180cL);
}
#define CSR_UART_EV_PENDING_ADDR 0xf0001810L
#define CSR_UART_EV_PENDING_SIZE 1
static inline unsigned char uart_ev_pending_read(void) {
	unsigned char r = csr_readl(0xf0001810L);
	return r;
}
static inline void uart_ev_pending_write(unsigned char value) {
	csr_writel(value, 0xf0001810L);
}
#define CSR_UART_EV_ENABLE_ADDR 0xf0001814L
#define CSR_UART_EV_ENABLE_SIZE 1
static inline unsigned char uart_ev_enable_read(void) {
	unsigned char r = csr_readl(0xf0001814L);
	return r;
}
static inline void uart_ev_enable_write(unsigned char value) {
	csr_writel(value, 0xf0001814L);
}

/* uart_phy */
#define CSR_UART_PHY_BASE 0xf0001000L
#define CSR_UART_PHY_TUNING_WORD_ADDR 0xf0001000L
#define CSR_UART_PHY_TUNING_WORD_SIZE 4
static inline unsigned int uart_phy_tuning_word_read(void) {
	unsigned int r = csr_readl(0xf0001000L);
	r <<= 8;
	r |= csr_readl(0xf0001004L);
	r <<= 8;
	r |= csr_readl(0xf0001008L);
	r <<= 8;
	r |= csr_readl(0xf000100cL);
	return r;
}
static inline void uart_phy_tuning_word_write(unsigned int value) {
	csr_writel(value >> 24, 0xf0001000L);
	csr_writel(value >> 16, 0xf0001004L);
	csr_writel(value >> 8, 0xf0001008L);
	csr_writel(value, 0xf000100cL);
}

/* identifier_mem */
#define CSR_IDENTIFIER_MEM_BASE 0xf0002000L

#endif
