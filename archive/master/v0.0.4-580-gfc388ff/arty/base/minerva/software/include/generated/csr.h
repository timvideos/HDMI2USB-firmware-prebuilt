//--------------------------------------------------------------------------------
// Auto-generated by Migen (5585912) & LiteX (e637aa65) on 2019-08-04 03:45:31
//--------------------------------------------------------------------------------
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
#define CSR_CAS_BASE 0xe0006800L
#define CSR_CAS_LEDS_OUT_ADDR 0xe0006800L
#define CSR_CAS_LEDS_OUT_SIZE 1
static inline unsigned char cas_leds_out_read(void) {
	unsigned char r = csr_readl(0xe0006800L);
	return r;
}
static inline void cas_leds_out_write(unsigned char value) {
	csr_writel(value, 0xe0006800L);
}
#define CSR_CAS_SWITCHES_IN_ADDR 0xe0006804L
#define CSR_CAS_SWITCHES_IN_SIZE 1
static inline unsigned char cas_switches_in_read(void) {
	unsigned char r = csr_readl(0xe0006804L);
	return r;
}
#define CSR_CAS_BUTTONS_EV_STATUS_ADDR 0xe0006808L
#define CSR_CAS_BUTTONS_EV_STATUS_SIZE 1
static inline unsigned char cas_buttons_ev_status_read(void) {
	unsigned char r = csr_readl(0xe0006808L);
	return r;
}
static inline void cas_buttons_ev_status_write(unsigned char value) {
	csr_writel(value, 0xe0006808L);
}
#define CSR_CAS_BUTTONS_EV_PENDING_ADDR 0xe000680cL
#define CSR_CAS_BUTTONS_EV_PENDING_SIZE 1
static inline unsigned char cas_buttons_ev_pending_read(void) {
	unsigned char r = csr_readl(0xe000680cL);
	return r;
}
static inline void cas_buttons_ev_pending_write(unsigned char value) {
	csr_writel(value, 0xe000680cL);
}
#define CSR_CAS_BUTTONS_EV_ENABLE_ADDR 0xe0006810L
#define CSR_CAS_BUTTONS_EV_ENABLE_SIZE 1
static inline unsigned char cas_buttons_ev_enable_read(void) {
	unsigned char r = csr_readl(0xe0006810L);
	return r;
}
static inline void cas_buttons_ev_enable_write(unsigned char value) {
	csr_writel(value, 0xe0006810L);
}

/* ctrl */
#define CSR_CTRL_BASE 0xe0000000L
#define CSR_CTRL_RESET_ADDR 0xe0000000L
#define CSR_CTRL_RESET_SIZE 1
static inline unsigned char ctrl_reset_read(void) {
	unsigned char r = csr_readl(0xe0000000L);
	return r;
}
static inline void ctrl_reset_write(unsigned char value) {
	csr_writel(value, 0xe0000000L);
}
#define CSR_CTRL_SCRATCH_ADDR 0xe0000004L
#define CSR_CTRL_SCRATCH_SIZE 4
static inline unsigned int ctrl_scratch_read(void) {
	unsigned int r = csr_readl(0xe0000004L);
	r <<= 8;
	r |= csr_readl(0xe0000008L);
	r <<= 8;
	r |= csr_readl(0xe000000cL);
	r <<= 8;
	r |= csr_readl(0xe0000010L);
	return r;
}
static inline void ctrl_scratch_write(unsigned int value) {
	csr_writel(value >> 24, 0xe0000004L);
	csr_writel(value >> 16, 0xe0000008L);
	csr_writel(value >> 8, 0xe000000cL);
	csr_writel(value, 0xe0000010L);
}
#define CSR_CTRL_BUS_ERRORS_ADDR 0xe0000014L
#define CSR_CTRL_BUS_ERRORS_SIZE 4
static inline unsigned int ctrl_bus_errors_read(void) {
	unsigned int r = csr_readl(0xe0000014L);
	r <<= 8;
	r |= csr_readl(0xe0000018L);
	r <<= 8;
	r |= csr_readl(0xe000001cL);
	r <<= 8;
	r |= csr_readl(0xe0000020L);
	return r;
}

/* ddrphy */
#define CSR_DDRPHY_BASE 0xe0005800L
#define CSR_DDRPHY_HALF_SYS8X_TAPS_ADDR 0xe0005800L
#define CSR_DDRPHY_HALF_SYS8X_TAPS_SIZE 1
static inline unsigned char ddrphy_half_sys8x_taps_read(void) {
	unsigned char r = csr_readl(0xe0005800L);
	return r;
}
static inline void ddrphy_half_sys8x_taps_write(unsigned char value) {
	csr_writel(value, 0xe0005800L);
}
#define CSR_DDRPHY_CDLY_RST_ADDR 0xe0005804L
#define CSR_DDRPHY_CDLY_RST_SIZE 1
static inline unsigned char ddrphy_cdly_rst_read(void) {
	unsigned char r = csr_readl(0xe0005804L);
	return r;
}
static inline void ddrphy_cdly_rst_write(unsigned char value) {
	csr_writel(value, 0xe0005804L);
}
#define CSR_DDRPHY_CDLY_INC_ADDR 0xe0005808L
#define CSR_DDRPHY_CDLY_INC_SIZE 1
static inline unsigned char ddrphy_cdly_inc_read(void) {
	unsigned char r = csr_readl(0xe0005808L);
	return r;
}
static inline void ddrphy_cdly_inc_write(unsigned char value) {
	csr_writel(value, 0xe0005808L);
}
#define CSR_DDRPHY_DLY_SEL_ADDR 0xe000580cL
#define CSR_DDRPHY_DLY_SEL_SIZE 1
static inline unsigned char ddrphy_dly_sel_read(void) {
	unsigned char r = csr_readl(0xe000580cL);
	return r;
}
static inline void ddrphy_dly_sel_write(unsigned char value) {
	csr_writel(value, 0xe000580cL);
}
#define CSR_DDRPHY_RDLY_DQ_RST_ADDR 0xe0005810L
#define CSR_DDRPHY_RDLY_DQ_RST_SIZE 1
static inline unsigned char ddrphy_rdly_dq_rst_read(void) {
	unsigned char r = csr_readl(0xe0005810L);
	return r;
}
static inline void ddrphy_rdly_dq_rst_write(unsigned char value) {
	csr_writel(value, 0xe0005810L);
}
#define CSR_DDRPHY_RDLY_DQ_INC_ADDR 0xe0005814L
#define CSR_DDRPHY_RDLY_DQ_INC_SIZE 1
static inline unsigned char ddrphy_rdly_dq_inc_read(void) {
	unsigned char r = csr_readl(0xe0005814L);
	return r;
}
static inline void ddrphy_rdly_dq_inc_write(unsigned char value) {
	csr_writel(value, 0xe0005814L);
}
#define CSR_DDRPHY_RDLY_DQ_BITSLIP_RST_ADDR 0xe0005818L
#define CSR_DDRPHY_RDLY_DQ_BITSLIP_RST_SIZE 1
static inline unsigned char ddrphy_rdly_dq_bitslip_rst_read(void) {
	unsigned char r = csr_readl(0xe0005818L);
	return r;
}
static inline void ddrphy_rdly_dq_bitslip_rst_write(unsigned char value) {
	csr_writel(value, 0xe0005818L);
}
#define CSR_DDRPHY_RDLY_DQ_BITSLIP_ADDR 0xe000581cL
#define CSR_DDRPHY_RDLY_DQ_BITSLIP_SIZE 1
static inline unsigned char ddrphy_rdly_dq_bitslip_read(void) {
	unsigned char r = csr_readl(0xe000581cL);
	return r;
}
static inline void ddrphy_rdly_dq_bitslip_write(unsigned char value) {
	csr_writel(value, 0xe000581cL);
}

/* info */
#define CSR_INFO_BASE 0xe0006000L
#define CSR_INFO_DNA_ID_ADDR 0xe0006000L
#define CSR_INFO_DNA_ID_SIZE 8
static inline unsigned long long int info_dna_id_read(void) {
	unsigned long long int r = csr_readl(0xe0006000L);
	r <<= 8;
	r |= csr_readl(0xe0006004L);
	r <<= 8;
	r |= csr_readl(0xe0006008L);
	r <<= 8;
	r |= csr_readl(0xe000600cL);
	r <<= 8;
	r |= csr_readl(0xe0006010L);
	r <<= 8;
	r |= csr_readl(0xe0006014L);
	r <<= 8;
	r |= csr_readl(0xe0006018L);
	r <<= 8;
	r |= csr_readl(0xe000601cL);
	return r;
}
#define CSR_INFO_GIT_COMMIT_ADDR 0xe0006020L
#define CSR_INFO_GIT_COMMIT_SIZE 20
#define CSR_INFO_PLATFORM_PLATFORM_ADDR 0xe0006070L
#define CSR_INFO_PLATFORM_PLATFORM_SIZE 8
static inline unsigned long long int info_platform_platform_read(void) {
	unsigned long long int r = csr_readl(0xe0006070L);
	r <<= 8;
	r |= csr_readl(0xe0006074L);
	r <<= 8;
	r |= csr_readl(0xe0006078L);
	r <<= 8;
	r |= csr_readl(0xe000607cL);
	r <<= 8;
	r |= csr_readl(0xe0006080L);
	r <<= 8;
	r |= csr_readl(0xe0006084L);
	r <<= 8;
	r |= csr_readl(0xe0006088L);
	r <<= 8;
	r |= csr_readl(0xe000608cL);
	return r;
}
#define CSR_INFO_PLATFORM_TARGET_ADDR 0xe0006090L
#define CSR_INFO_PLATFORM_TARGET_SIZE 8
static inline unsigned long long int info_platform_target_read(void) {
	unsigned long long int r = csr_readl(0xe0006090L);
	r <<= 8;
	r |= csr_readl(0xe0006094L);
	r <<= 8;
	r |= csr_readl(0xe0006098L);
	r <<= 8;
	r |= csr_readl(0xe000609cL);
	r <<= 8;
	r |= csr_readl(0xe00060a0L);
	r <<= 8;
	r |= csr_readl(0xe00060a4L);
	r <<= 8;
	r |= csr_readl(0xe00060a8L);
	r <<= 8;
	r |= csr_readl(0xe00060acL);
	return r;
}
#define CSR_INFO_XADC_TEMPERATURE_ADDR 0xe00060b0L
#define CSR_INFO_XADC_TEMPERATURE_SIZE 2
static inline unsigned short int info_xadc_temperature_read(void) {
	unsigned short int r = csr_readl(0xe00060b0L);
	r <<= 8;
	r |= csr_readl(0xe00060b4L);
	return r;
}
#define CSR_INFO_XADC_VCCINT_ADDR 0xe00060b8L
#define CSR_INFO_XADC_VCCINT_SIZE 2
static inline unsigned short int info_xadc_vccint_read(void) {
	unsigned short int r = csr_readl(0xe00060b8L);
	r <<= 8;
	r |= csr_readl(0xe00060bcL);
	return r;
}
#define CSR_INFO_XADC_VCCAUX_ADDR 0xe00060c0L
#define CSR_INFO_XADC_VCCAUX_SIZE 2
static inline unsigned short int info_xadc_vccaux_read(void) {
	unsigned short int r = csr_readl(0xe00060c0L);
	r <<= 8;
	r |= csr_readl(0xe00060c4L);
	return r;
}
#define CSR_INFO_XADC_VCCBRAM_ADDR 0xe00060c8L
#define CSR_INFO_XADC_VCCBRAM_SIZE 2
static inline unsigned short int info_xadc_vccbram_read(void) {
	unsigned short int r = csr_readl(0xe00060c8L);
	r <<= 8;
	r |= csr_readl(0xe00060ccL);
	return r;
}

/* sdram */
#define CSR_SDRAM_BASE 0xe0004000L
#define CSR_SDRAM_DFII_CONTROL_ADDR 0xe0004000L
#define CSR_SDRAM_DFII_CONTROL_SIZE 1
static inline unsigned char sdram_dfii_control_read(void) {
	unsigned char r = csr_readl(0xe0004000L);
	return r;
}
static inline void sdram_dfii_control_write(unsigned char value) {
	csr_writel(value, 0xe0004000L);
}
#define CSR_SDRAM_DFII_PI0_COMMAND_ADDR 0xe0004004L
#define CSR_SDRAM_DFII_PI0_COMMAND_SIZE 1
static inline unsigned char sdram_dfii_pi0_command_read(void) {
	unsigned char r = csr_readl(0xe0004004L);
	return r;
}
static inline void sdram_dfii_pi0_command_write(unsigned char value) {
	csr_writel(value, 0xe0004004L);
}
#define CSR_SDRAM_DFII_PI0_COMMAND_ISSUE_ADDR 0xe0004008L
#define CSR_SDRAM_DFII_PI0_COMMAND_ISSUE_SIZE 1
static inline unsigned char sdram_dfii_pi0_command_issue_read(void) {
	unsigned char r = csr_readl(0xe0004008L);
	return r;
}
static inline void sdram_dfii_pi0_command_issue_write(unsigned char value) {
	csr_writel(value, 0xe0004008L);
}
#define CSR_SDRAM_DFII_PI0_ADDRESS_ADDR 0xe000400cL
#define CSR_SDRAM_DFII_PI0_ADDRESS_SIZE 2
static inline unsigned short int sdram_dfii_pi0_address_read(void) {
	unsigned short int r = csr_readl(0xe000400cL);
	r <<= 8;
	r |= csr_readl(0xe0004010L);
	return r;
}
static inline void sdram_dfii_pi0_address_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe000400cL);
	csr_writel(value, 0xe0004010L);
}
#define CSR_SDRAM_DFII_PI0_BADDRESS_ADDR 0xe0004014L
#define CSR_SDRAM_DFII_PI0_BADDRESS_SIZE 1
static inline unsigned char sdram_dfii_pi0_baddress_read(void) {
	unsigned char r = csr_readl(0xe0004014L);
	return r;
}
static inline void sdram_dfii_pi0_baddress_write(unsigned char value) {
	csr_writel(value, 0xe0004014L);
}
#define CSR_SDRAM_DFII_PI0_WRDATA_ADDR 0xe0004018L
#define CSR_SDRAM_DFII_PI0_WRDATA_SIZE 4
static inline unsigned int sdram_dfii_pi0_wrdata_read(void) {
	unsigned int r = csr_readl(0xe0004018L);
	r <<= 8;
	r |= csr_readl(0xe000401cL);
	r <<= 8;
	r |= csr_readl(0xe0004020L);
	r <<= 8;
	r |= csr_readl(0xe0004024L);
	return r;
}
static inline void sdram_dfii_pi0_wrdata_write(unsigned int value) {
	csr_writel(value >> 24, 0xe0004018L);
	csr_writel(value >> 16, 0xe000401cL);
	csr_writel(value >> 8, 0xe0004020L);
	csr_writel(value, 0xe0004024L);
}
#define CSR_SDRAM_DFII_PI0_RDDATA_ADDR 0xe0004028L
#define CSR_SDRAM_DFII_PI0_RDDATA_SIZE 4
static inline unsigned int sdram_dfii_pi0_rddata_read(void) {
	unsigned int r = csr_readl(0xe0004028L);
	r <<= 8;
	r |= csr_readl(0xe000402cL);
	r <<= 8;
	r |= csr_readl(0xe0004030L);
	r <<= 8;
	r |= csr_readl(0xe0004034L);
	return r;
}
#define CSR_SDRAM_DFII_PI1_COMMAND_ADDR 0xe0004038L
#define CSR_SDRAM_DFII_PI1_COMMAND_SIZE 1
static inline unsigned char sdram_dfii_pi1_command_read(void) {
	unsigned char r = csr_readl(0xe0004038L);
	return r;
}
static inline void sdram_dfii_pi1_command_write(unsigned char value) {
	csr_writel(value, 0xe0004038L);
}
#define CSR_SDRAM_DFII_PI1_COMMAND_ISSUE_ADDR 0xe000403cL
#define CSR_SDRAM_DFII_PI1_COMMAND_ISSUE_SIZE 1
static inline unsigned char sdram_dfii_pi1_command_issue_read(void) {
	unsigned char r = csr_readl(0xe000403cL);
	return r;
}
static inline void sdram_dfii_pi1_command_issue_write(unsigned char value) {
	csr_writel(value, 0xe000403cL);
}
#define CSR_SDRAM_DFII_PI1_ADDRESS_ADDR 0xe0004040L
#define CSR_SDRAM_DFII_PI1_ADDRESS_SIZE 2
static inline unsigned short int sdram_dfii_pi1_address_read(void) {
	unsigned short int r = csr_readl(0xe0004040L);
	r <<= 8;
	r |= csr_readl(0xe0004044L);
	return r;
}
static inline void sdram_dfii_pi1_address_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe0004040L);
	csr_writel(value, 0xe0004044L);
}
#define CSR_SDRAM_DFII_PI1_BADDRESS_ADDR 0xe0004048L
#define CSR_SDRAM_DFII_PI1_BADDRESS_SIZE 1
static inline unsigned char sdram_dfii_pi1_baddress_read(void) {
	unsigned char r = csr_readl(0xe0004048L);
	return r;
}
static inline void sdram_dfii_pi1_baddress_write(unsigned char value) {
	csr_writel(value, 0xe0004048L);
}
#define CSR_SDRAM_DFII_PI1_WRDATA_ADDR 0xe000404cL
#define CSR_SDRAM_DFII_PI1_WRDATA_SIZE 4
static inline unsigned int sdram_dfii_pi1_wrdata_read(void) {
	unsigned int r = csr_readl(0xe000404cL);
	r <<= 8;
	r |= csr_readl(0xe0004050L);
	r <<= 8;
	r |= csr_readl(0xe0004054L);
	r <<= 8;
	r |= csr_readl(0xe0004058L);
	return r;
}
static inline void sdram_dfii_pi1_wrdata_write(unsigned int value) {
	csr_writel(value >> 24, 0xe000404cL);
	csr_writel(value >> 16, 0xe0004050L);
	csr_writel(value >> 8, 0xe0004054L);
	csr_writel(value, 0xe0004058L);
}
#define CSR_SDRAM_DFII_PI1_RDDATA_ADDR 0xe000405cL
#define CSR_SDRAM_DFII_PI1_RDDATA_SIZE 4
static inline unsigned int sdram_dfii_pi1_rddata_read(void) {
	unsigned int r = csr_readl(0xe000405cL);
	r <<= 8;
	r |= csr_readl(0xe0004060L);
	r <<= 8;
	r |= csr_readl(0xe0004064L);
	r <<= 8;
	r |= csr_readl(0xe0004068L);
	return r;
}
#define CSR_SDRAM_DFII_PI2_COMMAND_ADDR 0xe000406cL
#define CSR_SDRAM_DFII_PI2_COMMAND_SIZE 1
static inline unsigned char sdram_dfii_pi2_command_read(void) {
	unsigned char r = csr_readl(0xe000406cL);
	return r;
}
static inline void sdram_dfii_pi2_command_write(unsigned char value) {
	csr_writel(value, 0xe000406cL);
}
#define CSR_SDRAM_DFII_PI2_COMMAND_ISSUE_ADDR 0xe0004070L
#define CSR_SDRAM_DFII_PI2_COMMAND_ISSUE_SIZE 1
static inline unsigned char sdram_dfii_pi2_command_issue_read(void) {
	unsigned char r = csr_readl(0xe0004070L);
	return r;
}
static inline void sdram_dfii_pi2_command_issue_write(unsigned char value) {
	csr_writel(value, 0xe0004070L);
}
#define CSR_SDRAM_DFII_PI2_ADDRESS_ADDR 0xe0004074L
#define CSR_SDRAM_DFII_PI2_ADDRESS_SIZE 2
static inline unsigned short int sdram_dfii_pi2_address_read(void) {
	unsigned short int r = csr_readl(0xe0004074L);
	r <<= 8;
	r |= csr_readl(0xe0004078L);
	return r;
}
static inline void sdram_dfii_pi2_address_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe0004074L);
	csr_writel(value, 0xe0004078L);
}
#define CSR_SDRAM_DFII_PI2_BADDRESS_ADDR 0xe000407cL
#define CSR_SDRAM_DFII_PI2_BADDRESS_SIZE 1
static inline unsigned char sdram_dfii_pi2_baddress_read(void) {
	unsigned char r = csr_readl(0xe000407cL);
	return r;
}
static inline void sdram_dfii_pi2_baddress_write(unsigned char value) {
	csr_writel(value, 0xe000407cL);
}
#define CSR_SDRAM_DFII_PI2_WRDATA_ADDR 0xe0004080L
#define CSR_SDRAM_DFII_PI2_WRDATA_SIZE 4
static inline unsigned int sdram_dfii_pi2_wrdata_read(void) {
	unsigned int r = csr_readl(0xe0004080L);
	r <<= 8;
	r |= csr_readl(0xe0004084L);
	r <<= 8;
	r |= csr_readl(0xe0004088L);
	r <<= 8;
	r |= csr_readl(0xe000408cL);
	return r;
}
static inline void sdram_dfii_pi2_wrdata_write(unsigned int value) {
	csr_writel(value >> 24, 0xe0004080L);
	csr_writel(value >> 16, 0xe0004084L);
	csr_writel(value >> 8, 0xe0004088L);
	csr_writel(value, 0xe000408cL);
}
#define CSR_SDRAM_DFII_PI2_RDDATA_ADDR 0xe0004090L
#define CSR_SDRAM_DFII_PI2_RDDATA_SIZE 4
static inline unsigned int sdram_dfii_pi2_rddata_read(void) {
	unsigned int r = csr_readl(0xe0004090L);
	r <<= 8;
	r |= csr_readl(0xe0004094L);
	r <<= 8;
	r |= csr_readl(0xe0004098L);
	r <<= 8;
	r |= csr_readl(0xe000409cL);
	return r;
}
#define CSR_SDRAM_DFII_PI3_COMMAND_ADDR 0xe00040a0L
#define CSR_SDRAM_DFII_PI3_COMMAND_SIZE 1
static inline unsigned char sdram_dfii_pi3_command_read(void) {
	unsigned char r = csr_readl(0xe00040a0L);
	return r;
}
static inline void sdram_dfii_pi3_command_write(unsigned char value) {
	csr_writel(value, 0xe00040a0L);
}
#define CSR_SDRAM_DFII_PI3_COMMAND_ISSUE_ADDR 0xe00040a4L
#define CSR_SDRAM_DFII_PI3_COMMAND_ISSUE_SIZE 1
static inline unsigned char sdram_dfii_pi3_command_issue_read(void) {
	unsigned char r = csr_readl(0xe00040a4L);
	return r;
}
static inline void sdram_dfii_pi3_command_issue_write(unsigned char value) {
	csr_writel(value, 0xe00040a4L);
}
#define CSR_SDRAM_DFII_PI3_ADDRESS_ADDR 0xe00040a8L
#define CSR_SDRAM_DFII_PI3_ADDRESS_SIZE 2
static inline unsigned short int sdram_dfii_pi3_address_read(void) {
	unsigned short int r = csr_readl(0xe00040a8L);
	r <<= 8;
	r |= csr_readl(0xe00040acL);
	return r;
}
static inline void sdram_dfii_pi3_address_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe00040a8L);
	csr_writel(value, 0xe00040acL);
}
#define CSR_SDRAM_DFII_PI3_BADDRESS_ADDR 0xe00040b0L
#define CSR_SDRAM_DFII_PI3_BADDRESS_SIZE 1
static inline unsigned char sdram_dfii_pi3_baddress_read(void) {
	unsigned char r = csr_readl(0xe00040b0L);
	return r;
}
static inline void sdram_dfii_pi3_baddress_write(unsigned char value) {
	csr_writel(value, 0xe00040b0L);
}
#define CSR_SDRAM_DFII_PI3_WRDATA_ADDR 0xe00040b4L
#define CSR_SDRAM_DFII_PI3_WRDATA_SIZE 4
static inline unsigned int sdram_dfii_pi3_wrdata_read(void) {
	unsigned int r = csr_readl(0xe00040b4L);
	r <<= 8;
	r |= csr_readl(0xe00040b8L);
	r <<= 8;
	r |= csr_readl(0xe00040bcL);
	r <<= 8;
	r |= csr_readl(0xe00040c0L);
	return r;
}
static inline void sdram_dfii_pi3_wrdata_write(unsigned int value) {
	csr_writel(value >> 24, 0xe00040b4L);
	csr_writel(value >> 16, 0xe00040b8L);
	csr_writel(value >> 8, 0xe00040bcL);
	csr_writel(value, 0xe00040c0L);
}
#define CSR_SDRAM_DFII_PI3_RDDATA_ADDR 0xe00040c4L
#define CSR_SDRAM_DFII_PI3_RDDATA_SIZE 4
static inline unsigned int sdram_dfii_pi3_rddata_read(void) {
	unsigned int r = csr_readl(0xe00040c4L);
	r <<= 8;
	r |= csr_readl(0xe00040c8L);
	r <<= 8;
	r |= csr_readl(0xe00040ccL);
	r <<= 8;
	r |= csr_readl(0xe00040d0L);
	return r;
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_UPDATE_ADDR 0xe00040d4L
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_UPDATE_SIZE 1
static inline unsigned char sdram_controller_bandwidth_update_read(void) {
	unsigned char r = csr_readl(0xe00040d4L);
	return r;
}
static inline void sdram_controller_bandwidth_update_write(unsigned char value) {
	csr_writel(value, 0xe00040d4L);
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NREADS_ADDR 0xe00040d8L
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NREADS_SIZE 3
static inline unsigned int sdram_controller_bandwidth_nreads_read(void) {
	unsigned int r = csr_readl(0xe00040d8L);
	r <<= 8;
	r |= csr_readl(0xe00040dcL);
	r <<= 8;
	r |= csr_readl(0xe00040e0L);
	return r;
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NWRITES_ADDR 0xe00040e4L
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NWRITES_SIZE 3
static inline unsigned int sdram_controller_bandwidth_nwrites_read(void) {
	unsigned int r = csr_readl(0xe00040e4L);
	r <<= 8;
	r |= csr_readl(0xe00040e8L);
	r <<= 8;
	r |= csr_readl(0xe00040ecL);
	return r;
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_DATA_WIDTH_ADDR 0xe00040f0L
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_DATA_WIDTH_SIZE 1
static inline unsigned char sdram_controller_bandwidth_data_width_read(void) {
	unsigned char r = csr_readl(0xe00040f0L);
	return r;
}

/* spiflash */
#define CSR_SPIFLASH_BASE 0xe0005000L
#define CSR_SPIFLASH_BITBANG_ADDR 0xe0005000L
#define CSR_SPIFLASH_BITBANG_SIZE 1
static inline unsigned char spiflash_bitbang_read(void) {
	unsigned char r = csr_readl(0xe0005000L);
	return r;
}
static inline void spiflash_bitbang_write(unsigned char value) {
	csr_writel(value, 0xe0005000L);
}
#define CSR_SPIFLASH_MISO_ADDR 0xe0005004L
#define CSR_SPIFLASH_MISO_SIZE 1
static inline unsigned char spiflash_miso_read(void) {
	unsigned char r = csr_readl(0xe0005004L);
	return r;
}
#define CSR_SPIFLASH_BITBANG_EN_ADDR 0xe0005008L
#define CSR_SPIFLASH_BITBANG_EN_SIZE 1
static inline unsigned char spiflash_bitbang_en_read(void) {
	unsigned char r = csr_readl(0xe0005008L);
	return r;
}
static inline void spiflash_bitbang_en_write(unsigned char value) {
	csr_writel(value, 0xe0005008L);
}

/* timer0 */
#define CSR_TIMER0_BASE 0xe0002800L
#define CSR_TIMER0_LOAD_ADDR 0xe0002800L
#define CSR_TIMER0_LOAD_SIZE 4
static inline unsigned int timer0_load_read(void) {
	unsigned int r = csr_readl(0xe0002800L);
	r <<= 8;
	r |= csr_readl(0xe0002804L);
	r <<= 8;
	r |= csr_readl(0xe0002808L);
	r <<= 8;
	r |= csr_readl(0xe000280cL);
	return r;
}
static inline void timer0_load_write(unsigned int value) {
	csr_writel(value >> 24, 0xe0002800L);
	csr_writel(value >> 16, 0xe0002804L);
	csr_writel(value >> 8, 0xe0002808L);
	csr_writel(value, 0xe000280cL);
}
#define CSR_TIMER0_RELOAD_ADDR 0xe0002810L
#define CSR_TIMER0_RELOAD_SIZE 4
static inline unsigned int timer0_reload_read(void) {
	unsigned int r = csr_readl(0xe0002810L);
	r <<= 8;
	r |= csr_readl(0xe0002814L);
	r <<= 8;
	r |= csr_readl(0xe0002818L);
	r <<= 8;
	r |= csr_readl(0xe000281cL);
	return r;
}
static inline void timer0_reload_write(unsigned int value) {
	csr_writel(value >> 24, 0xe0002810L);
	csr_writel(value >> 16, 0xe0002814L);
	csr_writel(value >> 8, 0xe0002818L);
	csr_writel(value, 0xe000281cL);
}
#define CSR_TIMER0_EN_ADDR 0xe0002820L
#define CSR_TIMER0_EN_SIZE 1
static inline unsigned char timer0_en_read(void) {
	unsigned char r = csr_readl(0xe0002820L);
	return r;
}
static inline void timer0_en_write(unsigned char value) {
	csr_writel(value, 0xe0002820L);
}
#define CSR_TIMER0_UPDATE_VALUE_ADDR 0xe0002824L
#define CSR_TIMER0_UPDATE_VALUE_SIZE 1
static inline unsigned char timer0_update_value_read(void) {
	unsigned char r = csr_readl(0xe0002824L);
	return r;
}
static inline void timer0_update_value_write(unsigned char value) {
	csr_writel(value, 0xe0002824L);
}
#define CSR_TIMER0_VALUE_ADDR 0xe0002828L
#define CSR_TIMER0_VALUE_SIZE 4
static inline unsigned int timer0_value_read(void) {
	unsigned int r = csr_readl(0xe0002828L);
	r <<= 8;
	r |= csr_readl(0xe000282cL);
	r <<= 8;
	r |= csr_readl(0xe0002830L);
	r <<= 8;
	r |= csr_readl(0xe0002834L);
	return r;
}
#define CSR_TIMER0_EV_STATUS_ADDR 0xe0002838L
#define CSR_TIMER0_EV_STATUS_SIZE 1
static inline unsigned char timer0_ev_status_read(void) {
	unsigned char r = csr_readl(0xe0002838L);
	return r;
}
static inline void timer0_ev_status_write(unsigned char value) {
	csr_writel(value, 0xe0002838L);
}
#define CSR_TIMER0_EV_PENDING_ADDR 0xe000283cL
#define CSR_TIMER0_EV_PENDING_SIZE 1
static inline unsigned char timer0_ev_pending_read(void) {
	unsigned char r = csr_readl(0xe000283cL);
	return r;
}
static inline void timer0_ev_pending_write(unsigned char value) {
	csr_writel(value, 0xe000283cL);
}
#define CSR_TIMER0_EV_ENABLE_ADDR 0xe0002840L
#define CSR_TIMER0_EV_ENABLE_SIZE 1
static inline unsigned char timer0_ev_enable_read(void) {
	unsigned char r = csr_readl(0xe0002840L);
	return r;
}
static inline void timer0_ev_enable_write(unsigned char value) {
	csr_writel(value, 0xe0002840L);
}

/* uart */
#define CSR_UART_BASE 0xe0001800L
#define CSR_UART_RXTX_ADDR 0xe0001800L
#define CSR_UART_RXTX_SIZE 1
static inline unsigned char uart_rxtx_read(void) {
	unsigned char r = csr_readl(0xe0001800L);
	return r;
}
static inline void uart_rxtx_write(unsigned char value) {
	csr_writel(value, 0xe0001800L);
}
#define CSR_UART_TXFULL_ADDR 0xe0001804L
#define CSR_UART_TXFULL_SIZE 1
static inline unsigned char uart_txfull_read(void) {
	unsigned char r = csr_readl(0xe0001804L);
	return r;
}
#define CSR_UART_RXEMPTY_ADDR 0xe0001808L
#define CSR_UART_RXEMPTY_SIZE 1
static inline unsigned char uart_rxempty_read(void) {
	unsigned char r = csr_readl(0xe0001808L);
	return r;
}
#define CSR_UART_EV_STATUS_ADDR 0xe000180cL
#define CSR_UART_EV_STATUS_SIZE 1
static inline unsigned char uart_ev_status_read(void) {
	unsigned char r = csr_readl(0xe000180cL);
	return r;
}
static inline void uart_ev_status_write(unsigned char value) {
	csr_writel(value, 0xe000180cL);
}
#define CSR_UART_EV_PENDING_ADDR 0xe0001810L
#define CSR_UART_EV_PENDING_SIZE 1
static inline unsigned char uart_ev_pending_read(void) {
	unsigned char r = csr_readl(0xe0001810L);
	return r;
}
static inline void uart_ev_pending_write(unsigned char value) {
	csr_writel(value, 0xe0001810L);
}
#define CSR_UART_EV_ENABLE_ADDR 0xe0001814L
#define CSR_UART_EV_ENABLE_SIZE 1
static inline unsigned char uart_ev_enable_read(void) {
	unsigned char r = csr_readl(0xe0001814L);
	return r;
}
static inline void uart_ev_enable_write(unsigned char value) {
	csr_writel(value, 0xe0001814L);
}

/* uart_phy */
#define CSR_UART_PHY_BASE 0xe0001000L
#define CSR_UART_PHY_TUNING_WORD_ADDR 0xe0001000L
#define CSR_UART_PHY_TUNING_WORD_SIZE 4
static inline unsigned int uart_phy_tuning_word_read(void) {
	unsigned int r = csr_readl(0xe0001000L);
	r <<= 8;
	r |= csr_readl(0xe0001004L);
	r <<= 8;
	r |= csr_readl(0xe0001008L);
	r <<= 8;
	r |= csr_readl(0xe000100cL);
	return r;
}
static inline void uart_phy_tuning_word_write(unsigned int value) {
	csr_writel(value >> 24, 0xe0001000L);
	csr_writel(value >> 16, 0xe0001004L);
	csr_writel(value >> 8, 0xe0001008L);
	csr_writel(value, 0xe000100cL);
}

/* identifier_mem */
#define CSR_IDENTIFIER_MEM_BASE 0xe0002000L

/* constants */
#define TIMER0_INTERRUPT 1
static inline int timer0_interrupt_read(void) {
	return 1;
}
#define UART_INTERRUPT 0
static inline int uart_interrupt_read(void) {
	return 0;
}
#define SPIFLASH_PAGE_SIZE 256
static inline int spiflash_page_size_read(void) {
	return 256;
}
#define SPIFLASH_SECTOR_SIZE 65536
static inline int spiflash_sector_size_read(void) {
	return 65536;
}
#define READ_LEVELING_BITSLIP 3
static inline int read_leveling_bitslip_read(void) {
	return 3;
}
#define READ_LEVELING_DELAY 14
static inline int read_leveling_delay_read(void) {
	return 14;
}
#define CAS_LEDS_COUNT 4
static inline int cas_leds_count_read(void) {
	return 4;
}
#define CAS_SWITCHES_COUNT 4
static inline int cas_switches_count_read(void) {
	return 4;
}
#define CAS_BUTTONS_COUNT 4
static inline int cas_buttons_count_read(void) {
	return 4;
}
#define CONFIG_CLOCK_FREQUENCY 100000000
static inline int config_clock_frequency_read(void) {
	return 100000000;
}
#define CONFIG_CPU_RESET_ADDR 0
static inline int config_cpu_reset_addr_read(void) {
	return 0;
}
#define CONFIG_CPU_TYPE "MINERVA"
static inline const char * config_cpu_type_read(void) {
	return "MINERVA";
}
#define CONFIG_CPU_TYPE_MINERVA 1
static inline int config_cpu_type_minerva_read(void) {
	return 1;
}
#define CONFIG_CSR_ALIGNMENT 32
static inline int config_csr_alignment_read(void) {
	return 32;
}
#define CONFIG_CSR_DATA_WIDTH 8
static inline int config_csr_data_width_read(void) {
	return 8;
}
#define CONFIG_L2_SIZE 8192
static inline int config_l2_size_read(void) {
	return 8192;
}

#endif
