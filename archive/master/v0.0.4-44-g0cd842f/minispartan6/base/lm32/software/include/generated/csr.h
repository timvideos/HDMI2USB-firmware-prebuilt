#ifndef __GENERATED_CSR_H
#define __GENERATED_CSR_H
#include <hw/common.h>

/* cas */
#define CSR_CAS_BASE 0xe0005800
#define CSR_CAS_LEDS_OUT_ADDR 0xe0005800
#define CSR_CAS_LEDS_OUT_SIZE 1
static inline unsigned char cas_leds_out_read(void) {
	unsigned char r = MMPTR(0xe0005800);
	return r;
}
static inline void cas_leds_out_write(unsigned char value) {
	MMPTR(0xe0005800) = value;
}
#define CSR_CAS_SWITCHES_IN_ADDR 0xe0005804
#define CSR_CAS_SWITCHES_IN_SIZE 1
static inline unsigned char cas_switches_in_read(void) {
	unsigned char r = MMPTR(0xe0005804);
	return r;
}

/* info */
#define CSR_INFO_BASE 0xe0006800
#define CSR_INFO_DNA_ID_ADDR 0xe0006800
#define CSR_INFO_DNA_ID_SIZE 8
static inline unsigned long long int info_dna_id_read(void) {
	unsigned long long int r = MMPTR(0xe0006800);
	r <<= 8;
	r |= MMPTR(0xe0006804);
	r <<= 8;
	r |= MMPTR(0xe0006808);
	r <<= 8;
	r |= MMPTR(0xe000680c);
	r <<= 8;
	r |= MMPTR(0xe0006810);
	r <<= 8;
	r |= MMPTR(0xe0006814);
	r <<= 8;
	r |= MMPTR(0xe0006818);
	r <<= 8;
	r |= MMPTR(0xe000681c);
	return r;
}
#define CSR_INFO_GIT_COMMIT_ADDR 0xe0006820
#define CSR_INFO_GIT_COMMIT_SIZE 20
#define CSR_INFO_PLATFORM_PLATFORM_ADDR 0xe0006870
#define CSR_INFO_PLATFORM_PLATFORM_SIZE 8
static inline unsigned long long int info_platform_platform_read(void) {
	unsigned long long int r = MMPTR(0xe0006870);
	r <<= 8;
	r |= MMPTR(0xe0006874);
	r <<= 8;
	r |= MMPTR(0xe0006878);
	r <<= 8;
	r |= MMPTR(0xe000687c);
	r <<= 8;
	r |= MMPTR(0xe0006880);
	r <<= 8;
	r |= MMPTR(0xe0006884);
	r <<= 8;
	r |= MMPTR(0xe0006888);
	r <<= 8;
	r |= MMPTR(0xe000688c);
	return r;
}
#define CSR_INFO_PLATFORM_TARGET_ADDR 0xe0006890
#define CSR_INFO_PLATFORM_TARGET_SIZE 8
static inline unsigned long long int info_platform_target_read(void) {
	unsigned long long int r = MMPTR(0xe0006890);
	r <<= 8;
	r |= MMPTR(0xe0006894);
	r <<= 8;
	r |= MMPTR(0xe0006898);
	r <<= 8;
	r |= MMPTR(0xe000689c);
	r <<= 8;
	r |= MMPTR(0xe00068a0);
	r <<= 8;
	r |= MMPTR(0xe00068a4);
	r <<= 8;
	r |= MMPTR(0xe00068a8);
	r <<= 8;
	r |= MMPTR(0xe00068ac);
	return r;
}

/* sdram */
#define CSR_SDRAM_BASE 0xe0004000
#define CSR_SDRAM_DFII_CONTROL_ADDR 0xe0004000
#define CSR_SDRAM_DFII_CONTROL_SIZE 1
static inline unsigned char sdram_dfii_control_read(void) {
	unsigned char r = MMPTR(0xe0004000);
	return r;
}
static inline void sdram_dfii_control_write(unsigned char value) {
	MMPTR(0xe0004000) = value;
}
#define CSR_SDRAM_DFII_PI0_COMMAND_ADDR 0xe0004004
#define CSR_SDRAM_DFII_PI0_COMMAND_SIZE 1
static inline unsigned char sdram_dfii_pi0_command_read(void) {
	unsigned char r = MMPTR(0xe0004004);
	return r;
}
static inline void sdram_dfii_pi0_command_write(unsigned char value) {
	MMPTR(0xe0004004) = value;
}
#define CSR_SDRAM_DFII_PI0_COMMAND_ISSUE_ADDR 0xe0004008
#define CSR_SDRAM_DFII_PI0_COMMAND_ISSUE_SIZE 1
static inline unsigned char sdram_dfii_pi0_command_issue_read(void) {
	unsigned char r = MMPTR(0xe0004008);
	return r;
}
static inline void sdram_dfii_pi0_command_issue_write(unsigned char value) {
	MMPTR(0xe0004008) = value;
}
#define CSR_SDRAM_DFII_PI0_ADDRESS_ADDR 0xe000400c
#define CSR_SDRAM_DFII_PI0_ADDRESS_SIZE 2
static inline unsigned short int sdram_dfii_pi0_address_read(void) {
	unsigned short int r = MMPTR(0xe000400c);
	r <<= 8;
	r |= MMPTR(0xe0004010);
	return r;
}
static inline void sdram_dfii_pi0_address_write(unsigned short int value) {
	MMPTR(0xe000400c) = value >> 8;
	MMPTR(0xe0004010) = value;
}
#define CSR_SDRAM_DFII_PI0_BADDRESS_ADDR 0xe0004014
#define CSR_SDRAM_DFII_PI0_BADDRESS_SIZE 1
static inline unsigned char sdram_dfii_pi0_baddress_read(void) {
	unsigned char r = MMPTR(0xe0004014);
	return r;
}
static inline void sdram_dfii_pi0_baddress_write(unsigned char value) {
	MMPTR(0xe0004014) = value;
}
#define CSR_SDRAM_DFII_PI0_WRDATA_ADDR 0xe0004018
#define CSR_SDRAM_DFII_PI0_WRDATA_SIZE 2
static inline unsigned short int sdram_dfii_pi0_wrdata_read(void) {
	unsigned short int r = MMPTR(0xe0004018);
	r <<= 8;
	r |= MMPTR(0xe000401c);
	return r;
}
static inline void sdram_dfii_pi0_wrdata_write(unsigned short int value) {
	MMPTR(0xe0004018) = value >> 8;
	MMPTR(0xe000401c) = value;
}
#define CSR_SDRAM_DFII_PI0_RDDATA_ADDR 0xe0004020
#define CSR_SDRAM_DFII_PI0_RDDATA_SIZE 2
static inline unsigned short int sdram_dfii_pi0_rddata_read(void) {
	unsigned short int r = MMPTR(0xe0004020);
	r <<= 8;
	r |= MMPTR(0xe0004024);
	return r;
}

/* spiflash */
#define CSR_SPIFLASH_BASE 0xe0005000
#define CSR_SPIFLASH_BITBANG_ADDR 0xe0005000
#define CSR_SPIFLASH_BITBANG_SIZE 1
static inline unsigned char spiflash_bitbang_read(void) {
	unsigned char r = MMPTR(0xe0005000);
	return r;
}
static inline void spiflash_bitbang_write(unsigned char value) {
	MMPTR(0xe0005000) = value;
}
#define CSR_SPIFLASH_MISO_ADDR 0xe0005004
#define CSR_SPIFLASH_MISO_SIZE 1
static inline unsigned char spiflash_miso_read(void) {
	unsigned char r = MMPTR(0xe0005004);
	return r;
}
#define CSR_SPIFLASH_BITBANG_EN_ADDR 0xe0005008
#define CSR_SPIFLASH_BITBANG_EN_SIZE 1
static inline unsigned char spiflash_bitbang_en_read(void) {
	unsigned char r = MMPTR(0xe0005008);
	return r;
}
static inline void spiflash_bitbang_en_write(unsigned char value) {
	MMPTR(0xe0005008) = value;
}

/* timer0 */
#define CSR_TIMER0_BASE 0xe0002000
#define CSR_TIMER0_LOAD_ADDR 0xe0002000
#define CSR_TIMER0_LOAD_SIZE 4
static inline unsigned int timer0_load_read(void) {
	unsigned int r = MMPTR(0xe0002000);
	r <<= 8;
	r |= MMPTR(0xe0002004);
	r <<= 8;
	r |= MMPTR(0xe0002008);
	r <<= 8;
	r |= MMPTR(0xe000200c);
	return r;
}
static inline void timer0_load_write(unsigned int value) {
	MMPTR(0xe0002000) = value >> 24;
	MMPTR(0xe0002004) = value >> 16;
	MMPTR(0xe0002008) = value >> 8;
	MMPTR(0xe000200c) = value;
}
#define CSR_TIMER0_RELOAD_ADDR 0xe0002010
#define CSR_TIMER0_RELOAD_SIZE 4
static inline unsigned int timer0_reload_read(void) {
	unsigned int r = MMPTR(0xe0002010);
	r <<= 8;
	r |= MMPTR(0xe0002014);
	r <<= 8;
	r |= MMPTR(0xe0002018);
	r <<= 8;
	r |= MMPTR(0xe000201c);
	return r;
}
static inline void timer0_reload_write(unsigned int value) {
	MMPTR(0xe0002010) = value >> 24;
	MMPTR(0xe0002014) = value >> 16;
	MMPTR(0xe0002018) = value >> 8;
	MMPTR(0xe000201c) = value;
}
#define CSR_TIMER0_EN_ADDR 0xe0002020
#define CSR_TIMER0_EN_SIZE 1
static inline unsigned char timer0_en_read(void) {
	unsigned char r = MMPTR(0xe0002020);
	return r;
}
static inline void timer0_en_write(unsigned char value) {
	MMPTR(0xe0002020) = value;
}
#define CSR_TIMER0_UPDATE_VALUE_ADDR 0xe0002024
#define CSR_TIMER0_UPDATE_VALUE_SIZE 1
static inline unsigned char timer0_update_value_read(void) {
	unsigned char r = MMPTR(0xe0002024);
	return r;
}
static inline void timer0_update_value_write(unsigned char value) {
	MMPTR(0xe0002024) = value;
}
#define CSR_TIMER0_VALUE_ADDR 0xe0002028
#define CSR_TIMER0_VALUE_SIZE 4
static inline unsigned int timer0_value_read(void) {
	unsigned int r = MMPTR(0xe0002028);
	r <<= 8;
	r |= MMPTR(0xe000202c);
	r <<= 8;
	r |= MMPTR(0xe0002030);
	r <<= 8;
	r |= MMPTR(0xe0002034);
	return r;
}
#define CSR_TIMER0_EV_STATUS_ADDR 0xe0002038
#define CSR_TIMER0_EV_STATUS_SIZE 1
static inline unsigned char timer0_ev_status_read(void) {
	unsigned char r = MMPTR(0xe0002038);
	return r;
}
static inline void timer0_ev_status_write(unsigned char value) {
	MMPTR(0xe0002038) = value;
}
#define CSR_TIMER0_EV_PENDING_ADDR 0xe000203c
#define CSR_TIMER0_EV_PENDING_SIZE 1
static inline unsigned char timer0_ev_pending_read(void) {
	unsigned char r = MMPTR(0xe000203c);
	return r;
}
static inline void timer0_ev_pending_write(unsigned char value) {
	MMPTR(0xe000203c) = value;
}
#define CSR_TIMER0_EV_ENABLE_ADDR 0xe0002040
#define CSR_TIMER0_EV_ENABLE_SIZE 1
static inline unsigned char timer0_ev_enable_read(void) {
	unsigned char r = MMPTR(0xe0002040);
	return r;
}
static inline void timer0_ev_enable_write(unsigned char value) {
	MMPTR(0xe0002040) = value;
}

/* uart */
#define CSR_UART_BASE 0xe0001000
#define CSR_UART_RXTX_ADDR 0xe0001000
#define CSR_UART_RXTX_SIZE 1
static inline unsigned char uart_rxtx_read(void) {
	unsigned char r = MMPTR(0xe0001000);
	return r;
}
static inline void uart_rxtx_write(unsigned char value) {
	MMPTR(0xe0001000) = value;
}
#define CSR_UART_TXFULL_ADDR 0xe0001004
#define CSR_UART_TXFULL_SIZE 1
static inline unsigned char uart_txfull_read(void) {
	unsigned char r = MMPTR(0xe0001004);
	return r;
}
#define CSR_UART_RXEMPTY_ADDR 0xe0001008
#define CSR_UART_RXEMPTY_SIZE 1
static inline unsigned char uart_rxempty_read(void) {
	unsigned char r = MMPTR(0xe0001008);
	return r;
}
#define CSR_UART_EV_STATUS_ADDR 0xe000100c
#define CSR_UART_EV_STATUS_SIZE 1
static inline unsigned char uart_ev_status_read(void) {
	unsigned char r = MMPTR(0xe000100c);
	return r;
}
static inline void uart_ev_status_write(unsigned char value) {
	MMPTR(0xe000100c) = value;
}
#define CSR_UART_EV_PENDING_ADDR 0xe0001010
#define CSR_UART_EV_PENDING_SIZE 1
static inline unsigned char uart_ev_pending_read(void) {
	unsigned char r = MMPTR(0xe0001010);
	return r;
}
static inline void uart_ev_pending_write(unsigned char value) {
	MMPTR(0xe0001010) = value;
}
#define CSR_UART_EV_ENABLE_ADDR 0xe0001014
#define CSR_UART_EV_ENABLE_SIZE 1
static inline unsigned char uart_ev_enable_read(void) {
	unsigned char r = MMPTR(0xe0001014);
	return r;
}
static inline void uart_ev_enable_write(unsigned char value) {
	MMPTR(0xe0001014) = value;
}

/* uart_phy */
#define CSR_UART_PHY_BASE 0xe0000800
#define CSR_UART_PHY_TUNING_WORD_ADDR 0xe0000800
#define CSR_UART_PHY_TUNING_WORD_SIZE 4
static inline unsigned int uart_phy_tuning_word_read(void) {
	unsigned int r = MMPTR(0xe0000800);
	r <<= 8;
	r |= MMPTR(0xe0000804);
	r <<= 8;
	r |= MMPTR(0xe0000808);
	r <<= 8;
	r |= MMPTR(0xe000080c);
	return r;
}
static inline void uart_phy_tuning_word_write(unsigned int value) {
	MMPTR(0xe0000800) = value >> 24;
	MMPTR(0xe0000804) = value >> 16;
	MMPTR(0xe0000808) = value >> 8;
	MMPTR(0xe000080c) = value;
}

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
#define CSR_DATA_WIDTH 8
static inline int csr_data_width_read(void) {
	return 8;
}
#define SYSTEM_CLOCK_FREQUENCY 80000000
static inline int system_clock_frequency_read(void) {
	return 80000000;
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
#define CAS_LEDS_COUNT 8
static inline int cas_leds_count_read(void) {
	return 8;
}
#define CAS_SWITCHES_COUNT 4
static inline int cas_switches_count_read(void) {
	return 4;
}
#define CAS_BUTTONS_COUNT 0
static inline int cas_buttons_count_read(void) {
	return 0;
}
#define CONFIG_CLOCK_FREQUENCY 80000000
static inline int config_clock_frequency_read(void) {
	return 80000000;
}
#define CONFIG_CPU_RESET_ADDR 0
static inline int config_cpu_reset_addr_read(void) {
	return 0;
}
#define CONFIG_CSR_DATA_WIDTH 8
static inline int config_csr_data_width_read(void) {
	return 8;
}

#endif
