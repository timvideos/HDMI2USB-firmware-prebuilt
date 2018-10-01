#ifndef __GENERATED_CSR_H
#define __GENERATED_CSR_H
#include <hw/common.h>

/* ctrl */
#define CSR_CTRL_BASE 0xe0000000
#define CSR_CTRL_RESET_ADDR 0xe0000000
#define CSR_CTRL_RESET_SIZE 1
static inline unsigned char ctrl_reset_read(void) {
	unsigned char r = MMPTR(0xe0000000);
	return r;
}
static inline void ctrl_reset_write(unsigned char value) {
	MMPTR(0xe0000000) = value;
}
#define CSR_CTRL_SCRATCH_ADDR 0xe0000004
#define CSR_CTRL_SCRATCH_SIZE 4
static inline unsigned int ctrl_scratch_read(void) {
	unsigned int r = MMPTR(0xe0000004);
	r <<= 8;
	r |= MMPTR(0xe0000008);
	r <<= 8;
	r |= MMPTR(0xe000000c);
	r <<= 8;
	r |= MMPTR(0xe0000010);
	return r;
}
static inline void ctrl_scratch_write(unsigned int value) {
	MMPTR(0xe0000004) = value >> 24;
	MMPTR(0xe0000008) = value >> 16;
	MMPTR(0xe000000c) = value >> 8;
	MMPTR(0xe0000010) = value;
}
#define CSR_CTRL_BUS_ERRORS_ADDR 0xe0000014
#define CSR_CTRL_BUS_ERRORS_SIZE 4
static inline unsigned int ctrl_bus_errors_read(void) {
	unsigned int r = MMPTR(0xe0000014);
	r <<= 8;
	r |= MMPTR(0xe0000018);
	r <<= 8;
	r |= MMPTR(0xe000001c);
	r <<= 8;
	r |= MMPTR(0xe0000020);
	return r;
}

/* spiflash */
#define CSR_SPIFLASH_BASE 0xe0004000
#define CSR_SPIFLASH_BITBANG_ADDR 0xe0004000
#define CSR_SPIFLASH_BITBANG_SIZE 1
static inline unsigned char spiflash_bitbang_read(void) {
	unsigned char r = MMPTR(0xe0004000);
	return r;
}
static inline void spiflash_bitbang_write(unsigned char value) {
	MMPTR(0xe0004000) = value;
}
#define CSR_SPIFLASH_MISO_ADDR 0xe0004004
#define CSR_SPIFLASH_MISO_SIZE 1
static inline unsigned char spiflash_miso_read(void) {
	unsigned char r = MMPTR(0xe0004004);
	return r;
}
#define CSR_SPIFLASH_BITBANG_EN_ADDR 0xe0004008
#define CSR_SPIFLASH_BITBANG_EN_SIZE 1
static inline unsigned char spiflash_bitbang_en_read(void) {
	unsigned char r = MMPTR(0xe0004008);
	return r;
}
static inline void spiflash_bitbang_en_write(unsigned char value) {
	MMPTR(0xe0004008) = value;
}

/* timer0 */
#define CSR_TIMER0_BASE 0xe0002800
#define CSR_TIMER0_LOAD_ADDR 0xe0002800
#define CSR_TIMER0_LOAD_SIZE 4
static inline unsigned int timer0_load_read(void) {
	unsigned int r = MMPTR(0xe0002800);
	r <<= 8;
	r |= MMPTR(0xe0002804);
	r <<= 8;
	r |= MMPTR(0xe0002808);
	r <<= 8;
	r |= MMPTR(0xe000280c);
	return r;
}
static inline void timer0_load_write(unsigned int value) {
	MMPTR(0xe0002800) = value >> 24;
	MMPTR(0xe0002804) = value >> 16;
	MMPTR(0xe0002808) = value >> 8;
	MMPTR(0xe000280c) = value;
}
#define CSR_TIMER0_RELOAD_ADDR 0xe0002810
#define CSR_TIMER0_RELOAD_SIZE 4
static inline unsigned int timer0_reload_read(void) {
	unsigned int r = MMPTR(0xe0002810);
	r <<= 8;
	r |= MMPTR(0xe0002814);
	r <<= 8;
	r |= MMPTR(0xe0002818);
	r <<= 8;
	r |= MMPTR(0xe000281c);
	return r;
}
static inline void timer0_reload_write(unsigned int value) {
	MMPTR(0xe0002810) = value >> 24;
	MMPTR(0xe0002814) = value >> 16;
	MMPTR(0xe0002818) = value >> 8;
	MMPTR(0xe000281c) = value;
}
#define CSR_TIMER0_EN_ADDR 0xe0002820
#define CSR_TIMER0_EN_SIZE 1
static inline unsigned char timer0_en_read(void) {
	unsigned char r = MMPTR(0xe0002820);
	return r;
}
static inline void timer0_en_write(unsigned char value) {
	MMPTR(0xe0002820) = value;
}
#define CSR_TIMER0_UPDATE_VALUE_ADDR 0xe0002824
#define CSR_TIMER0_UPDATE_VALUE_SIZE 1
static inline unsigned char timer0_update_value_read(void) {
	unsigned char r = MMPTR(0xe0002824);
	return r;
}
static inline void timer0_update_value_write(unsigned char value) {
	MMPTR(0xe0002824) = value;
}
#define CSR_TIMER0_VALUE_ADDR 0xe0002828
#define CSR_TIMER0_VALUE_SIZE 4
static inline unsigned int timer0_value_read(void) {
	unsigned int r = MMPTR(0xe0002828);
	r <<= 8;
	r |= MMPTR(0xe000282c);
	r <<= 8;
	r |= MMPTR(0xe0002830);
	r <<= 8;
	r |= MMPTR(0xe0002834);
	return r;
}
#define CSR_TIMER0_EV_STATUS_ADDR 0xe0002838
#define CSR_TIMER0_EV_STATUS_SIZE 1
static inline unsigned char timer0_ev_status_read(void) {
	unsigned char r = MMPTR(0xe0002838);
	return r;
}
static inline void timer0_ev_status_write(unsigned char value) {
	MMPTR(0xe0002838) = value;
}
#define CSR_TIMER0_EV_PENDING_ADDR 0xe000283c
#define CSR_TIMER0_EV_PENDING_SIZE 1
static inline unsigned char timer0_ev_pending_read(void) {
	unsigned char r = MMPTR(0xe000283c);
	return r;
}
static inline void timer0_ev_pending_write(unsigned char value) {
	MMPTR(0xe000283c) = value;
}
#define CSR_TIMER0_EV_ENABLE_ADDR 0xe0002840
#define CSR_TIMER0_EV_ENABLE_SIZE 1
static inline unsigned char timer0_ev_enable_read(void) {
	unsigned char r = MMPTR(0xe0002840);
	return r;
}
static inline void timer0_ev_enable_write(unsigned char value) {
	MMPTR(0xe0002840) = value;
}

/* uart */
#define CSR_UART_BASE 0xe0001800
#define CSR_UART_RXTX_ADDR 0xe0001800
#define CSR_UART_RXTX_SIZE 1
static inline unsigned char uart_rxtx_read(void) {
	unsigned char r = MMPTR(0xe0001800);
	return r;
}
static inline void uart_rxtx_write(unsigned char value) {
	MMPTR(0xe0001800) = value;
}
#define CSR_UART_TXFULL_ADDR 0xe0001804
#define CSR_UART_TXFULL_SIZE 1
static inline unsigned char uart_txfull_read(void) {
	unsigned char r = MMPTR(0xe0001804);
	return r;
}
#define CSR_UART_RXEMPTY_ADDR 0xe0001808
#define CSR_UART_RXEMPTY_SIZE 1
static inline unsigned char uart_rxempty_read(void) {
	unsigned char r = MMPTR(0xe0001808);
	return r;
}
#define CSR_UART_EV_STATUS_ADDR 0xe000180c
#define CSR_UART_EV_STATUS_SIZE 1
static inline unsigned char uart_ev_status_read(void) {
	unsigned char r = MMPTR(0xe000180c);
	return r;
}
static inline void uart_ev_status_write(unsigned char value) {
	MMPTR(0xe000180c) = value;
}
#define CSR_UART_EV_PENDING_ADDR 0xe0001810
#define CSR_UART_EV_PENDING_SIZE 1
static inline unsigned char uart_ev_pending_read(void) {
	unsigned char r = MMPTR(0xe0001810);
	return r;
}
static inline void uart_ev_pending_write(unsigned char value) {
	MMPTR(0xe0001810) = value;
}
#define CSR_UART_EV_ENABLE_ADDR 0xe0001814
#define CSR_UART_EV_ENABLE_SIZE 1
static inline unsigned char uart_ev_enable_read(void) {
	unsigned char r = MMPTR(0xe0001814);
	return r;
}
static inline void uart_ev_enable_write(unsigned char value) {
	MMPTR(0xe0001814) = value;
}

/* uart_phy */
#define CSR_UART_PHY_BASE 0xe0001000
#define CSR_UART_PHY_TUNING_WORD_ADDR 0xe0001000
#define CSR_UART_PHY_TUNING_WORD_SIZE 4
static inline unsigned int uart_phy_tuning_word_read(void) {
	unsigned int r = MMPTR(0xe0001000);
	r <<= 8;
	r |= MMPTR(0xe0001004);
	r <<= 8;
	r |= MMPTR(0xe0001008);
	r <<= 8;
	r |= MMPTR(0xe000100c);
	return r;
}
static inline void uart_phy_tuning_word_write(unsigned int value) {
	MMPTR(0xe0001000) = value >> 24;
	MMPTR(0xe0001004) = value >> 16;
	MMPTR(0xe0001008) = value >> 8;
	MMPTR(0xe000100c) = value;
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
#define CSR_DATA_WIDTH 8
static inline int csr_data_width_read(void) {
	return 8;
}
#define SYSTEM_CLOCK_FREQUENCY 16000000
static inline int system_clock_frequency_read(void) {
	return 16000000;
}
#define SPIFLASH_PAGE_SIZE 256
static inline int spiflash_page_size_read(void) {
	return 256;
}
#define SPIFLASH_SECTOR_SIZE 65536
static inline int spiflash_sector_size_read(void) {
	return 65536;
}
#define ROM_DISABLE 1
static inline int rom_disable_read(void) {
	return 1;
}
#define CONFIG_CLOCK_FREQUENCY 16000000
static inline int config_clock_frequency_read(void) {
	return 16000000;
}
#define CONFIG_CPU_RESET_ADDR 537198592
static inline int config_cpu_reset_addr_read(void) {
	return 537198592;
}
#define CONFIG_CPU_TYPE "PICORV32"
static inline const char * config_cpu_type_read(void) {
	return "PICORV32";
}
#define CONFIG_CSR_DATA_WIDTH 8
static inline int config_csr_data_width_read(void) {
	return 8;
}

#endif
