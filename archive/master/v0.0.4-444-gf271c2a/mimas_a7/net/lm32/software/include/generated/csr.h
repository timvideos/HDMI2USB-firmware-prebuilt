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

/* ddrphy */
#define CSR_DDRPHY_BASE 0xe0005800
#define CSR_DDRPHY_HALF_SYS8X_TAPS_ADDR 0xe0005800
#define CSR_DDRPHY_HALF_SYS8X_TAPS_SIZE 1
static inline unsigned char ddrphy_half_sys8x_taps_read(void) {
	unsigned char r = csr_readl(0xe0005800);
	return r;
}
static inline void ddrphy_half_sys8x_taps_write(unsigned char value) {
	csr_writel(value, 0xe0005800);
}
#define CSR_DDRPHY_DLY_SEL_ADDR 0xe0005804
#define CSR_DDRPHY_DLY_SEL_SIZE 1
static inline unsigned char ddrphy_dly_sel_read(void) {
	unsigned char r = csr_readl(0xe0005804);
	return r;
}
static inline void ddrphy_dly_sel_write(unsigned char value) {
	csr_writel(value, 0xe0005804);
}
#define CSR_DDRPHY_RDLY_DQ_RST_ADDR 0xe0005808
#define CSR_DDRPHY_RDLY_DQ_RST_SIZE 1
static inline unsigned char ddrphy_rdly_dq_rst_read(void) {
	unsigned char r = csr_readl(0xe0005808);
	return r;
}
static inline void ddrphy_rdly_dq_rst_write(unsigned char value) {
	csr_writel(value, 0xe0005808);
}
#define CSR_DDRPHY_RDLY_DQ_INC_ADDR 0xe000580c
#define CSR_DDRPHY_RDLY_DQ_INC_SIZE 1
static inline unsigned char ddrphy_rdly_dq_inc_read(void) {
	unsigned char r = csr_readl(0xe000580c);
	return r;
}
static inline void ddrphy_rdly_dq_inc_write(unsigned char value) {
	csr_writel(value, 0xe000580c);
}
#define CSR_DDRPHY_RDLY_DQ_BITSLIP_RST_ADDR 0xe0005810
#define CSR_DDRPHY_RDLY_DQ_BITSLIP_RST_SIZE 1
static inline unsigned char ddrphy_rdly_dq_bitslip_rst_read(void) {
	unsigned char r = csr_readl(0xe0005810);
	return r;
}
static inline void ddrphy_rdly_dq_bitslip_rst_write(unsigned char value) {
	csr_writel(value, 0xe0005810);
}
#define CSR_DDRPHY_RDLY_DQ_BITSLIP_ADDR 0xe0005814
#define CSR_DDRPHY_RDLY_DQ_BITSLIP_SIZE 1
static inline unsigned char ddrphy_rdly_dq_bitslip_read(void) {
	unsigned char r = csr_readl(0xe0005814);
	return r;
}
static inline void ddrphy_rdly_dq_bitslip_write(unsigned char value) {
	csr_writel(value, 0xe0005814);
}

/* ethmac */
#define CSR_ETHMAC_BASE 0xe0007000
#define CSR_ETHMAC_SRAM_WRITER_SLOT_ADDR 0xe0007000
#define CSR_ETHMAC_SRAM_WRITER_SLOT_SIZE 1
static inline unsigned char ethmac_sram_writer_slot_read(void) {
	unsigned char r = csr_readl(0xe0007000);
	return r;
}
#define CSR_ETHMAC_SRAM_WRITER_LENGTH_ADDR 0xe0007004
#define CSR_ETHMAC_SRAM_WRITER_LENGTH_SIZE 4
static inline unsigned int ethmac_sram_writer_length_read(void) {
	unsigned int r = csr_readl(0xe0007004);
	r <<= 8;
	r |= csr_readl(0xe0007008);
	r <<= 8;
	r |= csr_readl(0xe000700c);
	r <<= 8;
	r |= csr_readl(0xe0007010);
	return r;
}
#define CSR_ETHMAC_SRAM_WRITER_ERRORS_ADDR 0xe0007014
#define CSR_ETHMAC_SRAM_WRITER_ERRORS_SIZE 4
static inline unsigned int ethmac_sram_writer_errors_read(void) {
	unsigned int r = csr_readl(0xe0007014);
	r <<= 8;
	r |= csr_readl(0xe0007018);
	r <<= 8;
	r |= csr_readl(0xe000701c);
	r <<= 8;
	r |= csr_readl(0xe0007020);
	return r;
}
#define CSR_ETHMAC_SRAM_WRITER_EV_STATUS_ADDR 0xe0007024
#define CSR_ETHMAC_SRAM_WRITER_EV_STATUS_SIZE 1
static inline unsigned char ethmac_sram_writer_ev_status_read(void) {
	unsigned char r = csr_readl(0xe0007024);
	return r;
}
static inline void ethmac_sram_writer_ev_status_write(unsigned char value) {
	csr_writel(value, 0xe0007024);
}
#define CSR_ETHMAC_SRAM_WRITER_EV_PENDING_ADDR 0xe0007028
#define CSR_ETHMAC_SRAM_WRITER_EV_PENDING_SIZE 1
static inline unsigned char ethmac_sram_writer_ev_pending_read(void) {
	unsigned char r = csr_readl(0xe0007028);
	return r;
}
static inline void ethmac_sram_writer_ev_pending_write(unsigned char value) {
	csr_writel(value, 0xe0007028);
}
#define CSR_ETHMAC_SRAM_WRITER_EV_ENABLE_ADDR 0xe000702c
#define CSR_ETHMAC_SRAM_WRITER_EV_ENABLE_SIZE 1
static inline unsigned char ethmac_sram_writer_ev_enable_read(void) {
	unsigned char r = csr_readl(0xe000702c);
	return r;
}
static inline void ethmac_sram_writer_ev_enable_write(unsigned char value) {
	csr_writel(value, 0xe000702c);
}
#define CSR_ETHMAC_SRAM_READER_START_ADDR 0xe0007030
#define CSR_ETHMAC_SRAM_READER_START_SIZE 1
static inline unsigned char ethmac_sram_reader_start_read(void) {
	unsigned char r = csr_readl(0xe0007030);
	return r;
}
static inline void ethmac_sram_reader_start_write(unsigned char value) {
	csr_writel(value, 0xe0007030);
}
#define CSR_ETHMAC_SRAM_READER_READY_ADDR 0xe0007034
#define CSR_ETHMAC_SRAM_READER_READY_SIZE 1
static inline unsigned char ethmac_sram_reader_ready_read(void) {
	unsigned char r = csr_readl(0xe0007034);
	return r;
}
#define CSR_ETHMAC_SRAM_READER_LEVEL_ADDR 0xe0007038
#define CSR_ETHMAC_SRAM_READER_LEVEL_SIZE 1
static inline unsigned char ethmac_sram_reader_level_read(void) {
	unsigned char r = csr_readl(0xe0007038);
	return r;
}
#define CSR_ETHMAC_SRAM_READER_SLOT_ADDR 0xe000703c
#define CSR_ETHMAC_SRAM_READER_SLOT_SIZE 1
static inline unsigned char ethmac_sram_reader_slot_read(void) {
	unsigned char r = csr_readl(0xe000703c);
	return r;
}
static inline void ethmac_sram_reader_slot_write(unsigned char value) {
	csr_writel(value, 0xe000703c);
}
#define CSR_ETHMAC_SRAM_READER_LENGTH_ADDR 0xe0007040
#define CSR_ETHMAC_SRAM_READER_LENGTH_SIZE 2
static inline unsigned short int ethmac_sram_reader_length_read(void) {
	unsigned short int r = csr_readl(0xe0007040);
	r <<= 8;
	r |= csr_readl(0xe0007044);
	return r;
}
static inline void ethmac_sram_reader_length_write(unsigned short int value) {
	csr_writel(value >> 8, 0xe0007040);
	csr_writel(value, 0xe0007044);
}
#define CSR_ETHMAC_SRAM_READER_EV_STATUS_ADDR 0xe0007048
#define CSR_ETHMAC_SRAM_READER_EV_STATUS_SIZE 1
static inline unsigned char ethmac_sram_reader_ev_status_read(void) {
	unsigned char r = csr_readl(0xe0007048);
	return r;
}
static inline void ethmac_sram_reader_ev_status_write(unsigned char value) {
	csr_writel(value, 0xe0007048);
}
#define CSR_ETHMAC_SRAM_READER_EV_PENDING_ADDR 0xe000704c
#define CSR_ETHMAC_SRAM_READER_EV_PENDING_SIZE 1
static inline unsigned char ethmac_sram_reader_ev_pending_read(void) {
	unsigned char r = csr_readl(0xe000704c);
	return r;
}
static inline void ethmac_sram_reader_ev_pending_write(unsigned char value) {
	csr_writel(value, 0xe000704c);
}
#define CSR_ETHMAC_SRAM_READER_EV_ENABLE_ADDR 0xe0007050
#define CSR_ETHMAC_SRAM_READER_EV_ENABLE_SIZE 1
static inline unsigned char ethmac_sram_reader_ev_enable_read(void) {
	unsigned char r = csr_readl(0xe0007050);
	return r;
}
static inline void ethmac_sram_reader_ev_enable_write(unsigned char value) {
	csr_writel(value, 0xe0007050);
}
#define CSR_ETHMAC_PREAMBLE_CRC_ADDR 0xe0007054
#define CSR_ETHMAC_PREAMBLE_CRC_SIZE 1
static inline unsigned char ethmac_preamble_crc_read(void) {
	unsigned char r = csr_readl(0xe0007054);
	return r;
}
#define CSR_ETHMAC_PREAMBLE_ERRORS_ADDR 0xe0007058
#define CSR_ETHMAC_PREAMBLE_ERRORS_SIZE 4
static inline unsigned int ethmac_preamble_errors_read(void) {
	unsigned int r = csr_readl(0xe0007058);
	r <<= 8;
	r |= csr_readl(0xe000705c);
	r <<= 8;
	r |= csr_readl(0xe0007060);
	r <<= 8;
	r |= csr_readl(0xe0007064);
	return r;
}
#define CSR_ETHMAC_CRC_ERRORS_ADDR 0xe0007068
#define CSR_ETHMAC_CRC_ERRORS_SIZE 4
static inline unsigned int ethmac_crc_errors_read(void) {
	unsigned int r = csr_readl(0xe0007068);
	r <<= 8;
	r |= csr_readl(0xe000706c);
	r <<= 8;
	r |= csr_readl(0xe0007070);
	r <<= 8;
	r |= csr_readl(0xe0007074);
	return r;
}

/* ethphy */
#define CSR_ETHPHY_BASE 0xe0006800
#define CSR_ETHPHY_CRG_RESET_ADDR 0xe0006800
#define CSR_ETHPHY_CRG_RESET_SIZE 1
static inline unsigned char ethphy_crg_reset_read(void) {
	unsigned char r = csr_readl(0xe0006800);
	return r;
}
static inline void ethphy_crg_reset_write(unsigned char value) {
	csr_writel(value, 0xe0006800);
}
#define CSR_ETHPHY_MDIO_W_ADDR 0xe0006804
#define CSR_ETHPHY_MDIO_W_SIZE 1
static inline unsigned char ethphy_mdio_w_read(void) {
	unsigned char r = csr_readl(0xe0006804);
	return r;
}
static inline void ethphy_mdio_w_write(unsigned char value) {
	csr_writel(value, 0xe0006804);
}
#define CSR_ETHPHY_MDIO_R_ADDR 0xe0006808
#define CSR_ETHPHY_MDIO_R_SIZE 1
static inline unsigned char ethphy_mdio_r_read(void) {
	unsigned char r = csr_readl(0xe0006808);
	return r;
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
#define CSR_INFO_XADC_TEMPERATURE_ADDR 0xe00060b0
#define CSR_INFO_XADC_TEMPERATURE_SIZE 2
static inline unsigned short int info_xadc_temperature_read(void) {
	unsigned short int r = csr_readl(0xe00060b0);
	r <<= 8;
	r |= csr_readl(0xe00060b4);
	return r;
}
#define CSR_INFO_XADC_VCCINT_ADDR 0xe00060b8
#define CSR_INFO_XADC_VCCINT_SIZE 2
static inline unsigned short int info_xadc_vccint_read(void) {
	unsigned short int r = csr_readl(0xe00060b8);
	r <<= 8;
	r |= csr_readl(0xe00060bc);
	return r;
}
#define CSR_INFO_XADC_VCCAUX_ADDR 0xe00060c0
#define CSR_INFO_XADC_VCCAUX_SIZE 2
static inline unsigned short int info_xadc_vccaux_read(void) {
	unsigned short int r = csr_readl(0xe00060c0);
	r <<= 8;
	r |= csr_readl(0xe00060c4);
	return r;
}
#define CSR_INFO_XADC_VCCBRAM_ADDR 0xe00060c8
#define CSR_INFO_XADC_VCCBRAM_SIZE 2
static inline unsigned short int info_xadc_vccbram_read(void) {
	unsigned short int r = csr_readl(0xe00060c8);
	r <<= 8;
	r |= csr_readl(0xe00060cc);
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
#define CSR_DATA_WIDTH 8
static inline int csr_data_width_read(void) {
	return 8;
}
#define SYSTEM_CLOCK_FREQUENCY 100000000
static inline int system_clock_frequency_read(void) {
	return 100000000;
}
#define L2_SIZE 8192
static inline int l2_size_read(void) {
	return 8192;
}
#define SPIFLASH_PAGE_SIZE 256
static inline int spiflash_page_size_read(void) {
	return 256;
}
#define SPIFLASH_SECTOR_SIZE 65536
static inline int spiflash_sector_size_read(void) {
	return 65536;
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
#define CONFIG_CLOCK_FREQUENCY 100000000
static inline int config_clock_frequency_read(void) {
	return 100000000;
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
