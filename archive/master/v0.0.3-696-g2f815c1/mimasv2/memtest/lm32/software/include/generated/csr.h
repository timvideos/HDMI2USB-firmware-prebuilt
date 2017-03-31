#ifndef __GENERATED_CSR_H
#define __GENERATED_CSR_H
#include <hw/common.h>

/* analyzer */
#define CSR_ANALYZER_BASE 0xe0008800
#define CSR_ANALYZER_FRONTEND_TRIGGER_VALUE_ADDR 0xe0008800
#define CSR_ANALYZER_FRONTEND_TRIGGER_VALUE_SIZE 12
#define CSR_ANALYZER_FRONTEND_TRIGGER_MASK_ADDR 0xe0008830
#define CSR_ANALYZER_FRONTEND_TRIGGER_MASK_SIZE 12
#define CSR_ANALYZER_FRONTEND_SUBSAMPLER_VALUE_ADDR 0xe0008860
#define CSR_ANALYZER_FRONTEND_SUBSAMPLER_VALUE_SIZE 2
static inline unsigned short int analyzer_frontend_subsampler_value_read(void) {
	unsigned short int r = MMPTR(0xe0008860);
	r <<= 8;
	r |= MMPTR(0xe0008864);
	return r;
}
static inline void analyzer_frontend_subsampler_value_write(unsigned short int value) {
	MMPTR(0xe0008860) = value >> 8;
	MMPTR(0xe0008864) = value;
}
#define CSR_ANALYZER_STORAGE_START_ADDR 0xe0008868
#define CSR_ANALYZER_STORAGE_START_SIZE 1
static inline unsigned char analyzer_storage_start_read(void) {
	unsigned char r = MMPTR(0xe0008868);
	return r;
}
static inline void analyzer_storage_start_write(unsigned char value) {
	MMPTR(0xe0008868) = value;
}
#define CSR_ANALYZER_STORAGE_LENGTH_ADDR 0xe000886c
#define CSR_ANALYZER_STORAGE_LENGTH_SIZE 1
static inline unsigned char analyzer_storage_length_read(void) {
	unsigned char r = MMPTR(0xe000886c);
	return r;
}
static inline void analyzer_storage_length_write(unsigned char value) {
	MMPTR(0xe000886c) = value;
}
#define CSR_ANALYZER_STORAGE_OFFSET_ADDR 0xe0008870
#define CSR_ANALYZER_STORAGE_OFFSET_SIZE 1
static inline unsigned char analyzer_storage_offset_read(void) {
	unsigned char r = MMPTR(0xe0008870);
	return r;
}
static inline void analyzer_storage_offset_write(unsigned char value) {
	MMPTR(0xe0008870) = value;
}
#define CSR_ANALYZER_STORAGE_IDLE_ADDR 0xe0008874
#define CSR_ANALYZER_STORAGE_IDLE_SIZE 1
static inline unsigned char analyzer_storage_idle_read(void) {
	unsigned char r = MMPTR(0xe0008874);
	return r;
}
#define CSR_ANALYZER_STORAGE_WAIT_ADDR 0xe0008878
#define CSR_ANALYZER_STORAGE_WAIT_SIZE 1
static inline unsigned char analyzer_storage_wait_read(void) {
	unsigned char r = MMPTR(0xe0008878);
	return r;
}
#define CSR_ANALYZER_STORAGE_RUN_ADDR 0xe000887c
#define CSR_ANALYZER_STORAGE_RUN_SIZE 1
static inline unsigned char analyzer_storage_run_read(void) {
	unsigned char r = MMPTR(0xe000887c);
	return r;
}
#define CSR_ANALYZER_STORAGE_MEM_VALID_ADDR 0xe0008880
#define CSR_ANALYZER_STORAGE_MEM_VALID_SIZE 1
static inline unsigned char analyzer_storage_mem_valid_read(void) {
	unsigned char r = MMPTR(0xe0008880);
	return r;
}
#define CSR_ANALYZER_STORAGE_MEM_READY_ADDR 0xe0008884
#define CSR_ANALYZER_STORAGE_MEM_READY_SIZE 1
static inline unsigned char analyzer_storage_mem_ready_read(void) {
	unsigned char r = MMPTR(0xe0008884);
	return r;
}
static inline void analyzer_storage_mem_ready_write(unsigned char value) {
	MMPTR(0xe0008884) = value;
}
#define CSR_ANALYZER_STORAGE_MEM_DATA_ADDR 0xe0008888
#define CSR_ANALYZER_STORAGE_MEM_DATA_SIZE 12

/* cas */
#define CSR_CAS_BASE 0xe0006800
#define CSR_CAS_LEDS_OUT_ADDR 0xe0006800
#define CSR_CAS_LEDS_OUT_SIZE 1
static inline unsigned char cas_leds_out_read(void) {
	unsigned char r = MMPTR(0xe0006800);
	return r;
}
static inline void cas_leds_out_write(unsigned char value) {
	MMPTR(0xe0006800) = value;
}
#define CSR_CAS_SWITCHES_IN_ADDR 0xe0006804
#define CSR_CAS_SWITCHES_IN_SIZE 1
static inline unsigned char cas_switches_in_read(void) {
	unsigned char r = MMPTR(0xe0006804);
	return r;
}
#define CSR_CAS_BUTTONS_EV_STATUS_ADDR 0xe0006808
#define CSR_CAS_BUTTONS_EV_STATUS_SIZE 1
static inline unsigned char cas_buttons_ev_status_read(void) {
	unsigned char r = MMPTR(0xe0006808);
	return r;
}
static inline void cas_buttons_ev_status_write(unsigned char value) {
	MMPTR(0xe0006808) = value;
}
#define CSR_CAS_BUTTONS_EV_PENDING_ADDR 0xe000680c
#define CSR_CAS_BUTTONS_EV_PENDING_SIZE 1
static inline unsigned char cas_buttons_ev_pending_read(void) {
	unsigned char r = MMPTR(0xe000680c);
	return r;
}
static inline void cas_buttons_ev_pending_write(unsigned char value) {
	MMPTR(0xe000680c) = value;
}
#define CSR_CAS_BUTTONS_EV_ENABLE_ADDR 0xe0006810
#define CSR_CAS_BUTTONS_EV_ENABLE_SIZE 1
static inline unsigned char cas_buttons_ev_enable_read(void) {
	unsigned char r = MMPTR(0xe0006810);
	return r;
}
static inline void cas_buttons_ev_enable_write(unsigned char value) {
	MMPTR(0xe0006810) = value;
}

/* checker */
#define CSR_CHECKER_BASE 0xe0007800
#define CSR_CHECKER_RESET_ADDR 0xe0007800
#define CSR_CHECKER_RESET_SIZE 1
static inline unsigned char checker_reset_read(void) {
	unsigned char r = MMPTR(0xe0007800);
	return r;
}
static inline void checker_reset_write(unsigned char value) {
	MMPTR(0xe0007800) = value;
}
#define CSR_CHECKER_START_ADDR 0xe0007804
#define CSR_CHECKER_START_SIZE 1
static inline unsigned char checker_start_read(void) {
	unsigned char r = MMPTR(0xe0007804);
	return r;
}
static inline void checker_start_write(unsigned char value) {
	MMPTR(0xe0007804) = value;
}
#define CSR_CHECKER_BASE_ADDR 0xe0007808
#define CSR_CHECKER_BASE_SIZE 3
static inline unsigned int checker_base_read(void) {
	unsigned int r = MMPTR(0xe0007808);
	r <<= 8;
	r |= MMPTR(0xe000780c);
	r <<= 8;
	r |= MMPTR(0xe0007810);
	return r;
}
static inline void checker_base_write(unsigned int value) {
	MMPTR(0xe0007808) = value >> 16;
	MMPTR(0xe000780c) = value >> 8;
	MMPTR(0xe0007810) = value;
}
#define CSR_CHECKER_LENGTH_ADDR 0xe0007814
#define CSR_CHECKER_LENGTH_SIZE 3
static inline unsigned int checker_length_read(void) {
	unsigned int r = MMPTR(0xe0007814);
	r <<= 8;
	r |= MMPTR(0xe0007818);
	r <<= 8;
	r |= MMPTR(0xe000781c);
	return r;
}
static inline void checker_length_write(unsigned int value) {
	MMPTR(0xe0007814) = value >> 16;
	MMPTR(0xe0007818) = value >> 8;
	MMPTR(0xe000781c) = value;
}
#define CSR_CHECKER_DONE_ADDR 0xe0007820
#define CSR_CHECKER_DONE_SIZE 1
static inline unsigned char checker_done_read(void) {
	unsigned char r = MMPTR(0xe0007820);
	return r;
}
#define CSR_CHECKER_ERR_COUNT_ADDR 0xe0007824
#define CSR_CHECKER_ERR_COUNT_SIZE 4
static inline unsigned int checker_err_count_read(void) {
	unsigned int r = MMPTR(0xe0007824);
	r <<= 8;
	r |= MMPTR(0xe0007828);
	r <<= 8;
	r |= MMPTR(0xe000782c);
	r <<= 8;
	r |= MMPTR(0xe0007830);
	return r;
}

/* generator */
#define CSR_GENERATOR_BASE 0xe0007000
#define CSR_GENERATOR_RESET_ADDR 0xe0007000
#define CSR_GENERATOR_RESET_SIZE 1
static inline unsigned char generator_reset_read(void) {
	unsigned char r = MMPTR(0xe0007000);
	return r;
}
static inline void generator_reset_write(unsigned char value) {
	MMPTR(0xe0007000) = value;
}
#define CSR_GENERATOR_START_ADDR 0xe0007004
#define CSR_GENERATOR_START_SIZE 1
static inline unsigned char generator_start_read(void) {
	unsigned char r = MMPTR(0xe0007004);
	return r;
}
static inline void generator_start_write(unsigned char value) {
	MMPTR(0xe0007004) = value;
}
#define CSR_GENERATOR_DONE_ADDR 0xe0007008
#define CSR_GENERATOR_DONE_SIZE 1
static inline unsigned char generator_done_read(void) {
	unsigned char r = MMPTR(0xe0007008);
	return r;
}
#define CSR_GENERATOR_BASE_ADDR 0xe000700c
#define CSR_GENERATOR_BASE_SIZE 3
static inline unsigned int generator_base_read(void) {
	unsigned int r = MMPTR(0xe000700c);
	r <<= 8;
	r |= MMPTR(0xe0007010);
	r <<= 8;
	r |= MMPTR(0xe0007014);
	return r;
}
static inline void generator_base_write(unsigned int value) {
	MMPTR(0xe000700c) = value >> 16;
	MMPTR(0xe0007010) = value >> 8;
	MMPTR(0xe0007014) = value;
}
#define CSR_GENERATOR_LENGTH_ADDR 0xe0007018
#define CSR_GENERATOR_LENGTH_SIZE 3
static inline unsigned int generator_length_read(void) {
	unsigned int r = MMPTR(0xe0007018);
	r <<= 8;
	r |= MMPTR(0xe000701c);
	r <<= 8;
	r |= MMPTR(0xe0007020);
	return r;
}
static inline void generator_length_write(unsigned int value) {
	MMPTR(0xe0007018) = value >> 16;
	MMPTR(0xe000701c) = value >> 8;
	MMPTR(0xe0007020) = value;
}

/* info */
#define CSR_INFO_BASE 0xe0006000
#define CSR_INFO_DNA_ID_ADDR 0xe0006000
#define CSR_INFO_DNA_ID_SIZE 8
static inline unsigned long long int info_dna_id_read(void) {
	unsigned long long int r = MMPTR(0xe0006000);
	r <<= 8;
	r |= MMPTR(0xe0006004);
	r <<= 8;
	r |= MMPTR(0xe0006008);
	r <<= 8;
	r |= MMPTR(0xe000600c);
	r <<= 8;
	r |= MMPTR(0xe0006010);
	r <<= 8;
	r |= MMPTR(0xe0006014);
	r <<= 8;
	r |= MMPTR(0xe0006018);
	r <<= 8;
	r |= MMPTR(0xe000601c);
	return r;
}
#define CSR_INFO_GIT_COMMIT_ADDR 0xe0006020
#define CSR_INFO_GIT_COMMIT_SIZE 20
#define CSR_INFO_PLATFORM_PLATFORM_ADDR 0xe0006070
#define CSR_INFO_PLATFORM_PLATFORM_SIZE 8
static inline unsigned long long int info_platform_platform_read(void) {
	unsigned long long int r = MMPTR(0xe0006070);
	r <<= 8;
	r |= MMPTR(0xe0006074);
	r <<= 8;
	r |= MMPTR(0xe0006078);
	r <<= 8;
	r |= MMPTR(0xe000607c);
	r <<= 8;
	r |= MMPTR(0xe0006080);
	r <<= 8;
	r |= MMPTR(0xe0006084);
	r <<= 8;
	r |= MMPTR(0xe0006088);
	r <<= 8;
	r |= MMPTR(0xe000608c);
	return r;
}
#define CSR_INFO_PLATFORM_TARGET_ADDR 0xe0006090
#define CSR_INFO_PLATFORM_TARGET_SIZE 8
static inline unsigned long long int info_platform_target_read(void) {
	unsigned long long int r = MMPTR(0xe0006090);
	r <<= 8;
	r |= MMPTR(0xe0006094);
	r <<= 8;
	r |= MMPTR(0xe0006098);
	r <<= 8;
	r |= MMPTR(0xe000609c);
	r <<= 8;
	r |= MMPTR(0xe00060a0);
	r <<= 8;
	r |= MMPTR(0xe00060a4);
	r <<= 8;
	r |= MMPTR(0xe00060a8);
	r <<= 8;
	r |= MMPTR(0xe00060ac);
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
#define CSR_SDRAM_DFII_PI0_WRDATA_SIZE 4
static inline unsigned int sdram_dfii_pi0_wrdata_read(void) {
	unsigned int r = MMPTR(0xe0004018);
	r <<= 8;
	r |= MMPTR(0xe000401c);
	r <<= 8;
	r |= MMPTR(0xe0004020);
	r <<= 8;
	r |= MMPTR(0xe0004024);
	return r;
}
static inline void sdram_dfii_pi0_wrdata_write(unsigned int value) {
	MMPTR(0xe0004018) = value >> 24;
	MMPTR(0xe000401c) = value >> 16;
	MMPTR(0xe0004020) = value >> 8;
	MMPTR(0xe0004024) = value;
}
#define CSR_SDRAM_DFII_PI0_RDDATA_ADDR 0xe0004028
#define CSR_SDRAM_DFII_PI0_RDDATA_SIZE 4
static inline unsigned int sdram_dfii_pi0_rddata_read(void) {
	unsigned int r = MMPTR(0xe0004028);
	r <<= 8;
	r |= MMPTR(0xe000402c);
	r <<= 8;
	r |= MMPTR(0xe0004030);
	r <<= 8;
	r |= MMPTR(0xe0004034);
	return r;
}
#define CSR_SDRAM_DFII_PI1_COMMAND_ADDR 0xe0004038
#define CSR_SDRAM_DFII_PI1_COMMAND_SIZE 1
static inline unsigned char sdram_dfii_pi1_command_read(void) {
	unsigned char r = MMPTR(0xe0004038);
	return r;
}
static inline void sdram_dfii_pi1_command_write(unsigned char value) {
	MMPTR(0xe0004038) = value;
}
#define CSR_SDRAM_DFII_PI1_COMMAND_ISSUE_ADDR 0xe000403c
#define CSR_SDRAM_DFII_PI1_COMMAND_ISSUE_SIZE 1
static inline unsigned char sdram_dfii_pi1_command_issue_read(void) {
	unsigned char r = MMPTR(0xe000403c);
	return r;
}
static inline void sdram_dfii_pi1_command_issue_write(unsigned char value) {
	MMPTR(0xe000403c) = value;
}
#define CSR_SDRAM_DFII_PI1_ADDRESS_ADDR 0xe0004040
#define CSR_SDRAM_DFII_PI1_ADDRESS_SIZE 2
static inline unsigned short int sdram_dfii_pi1_address_read(void) {
	unsigned short int r = MMPTR(0xe0004040);
	r <<= 8;
	r |= MMPTR(0xe0004044);
	return r;
}
static inline void sdram_dfii_pi1_address_write(unsigned short int value) {
	MMPTR(0xe0004040) = value >> 8;
	MMPTR(0xe0004044) = value;
}
#define CSR_SDRAM_DFII_PI1_BADDRESS_ADDR 0xe0004048
#define CSR_SDRAM_DFII_PI1_BADDRESS_SIZE 1
static inline unsigned char sdram_dfii_pi1_baddress_read(void) {
	unsigned char r = MMPTR(0xe0004048);
	return r;
}
static inline void sdram_dfii_pi1_baddress_write(unsigned char value) {
	MMPTR(0xe0004048) = value;
}
#define CSR_SDRAM_DFII_PI1_WRDATA_ADDR 0xe000404c
#define CSR_SDRAM_DFII_PI1_WRDATA_SIZE 4
static inline unsigned int sdram_dfii_pi1_wrdata_read(void) {
	unsigned int r = MMPTR(0xe000404c);
	r <<= 8;
	r |= MMPTR(0xe0004050);
	r <<= 8;
	r |= MMPTR(0xe0004054);
	r <<= 8;
	r |= MMPTR(0xe0004058);
	return r;
}
static inline void sdram_dfii_pi1_wrdata_write(unsigned int value) {
	MMPTR(0xe000404c) = value >> 24;
	MMPTR(0xe0004050) = value >> 16;
	MMPTR(0xe0004054) = value >> 8;
	MMPTR(0xe0004058) = value;
}
#define CSR_SDRAM_DFII_PI1_RDDATA_ADDR 0xe000405c
#define CSR_SDRAM_DFII_PI1_RDDATA_SIZE 4
static inline unsigned int sdram_dfii_pi1_rddata_read(void) {
	unsigned int r = MMPTR(0xe000405c);
	r <<= 8;
	r |= MMPTR(0xe0004060);
	r <<= 8;
	r |= MMPTR(0xe0004064);
	r <<= 8;
	r |= MMPTR(0xe0004068);
	return r;
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_UPDATE_ADDR 0xe000406c
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_UPDATE_SIZE 1
static inline unsigned char sdram_controller_bandwidth_update_read(void) {
	unsigned char r = MMPTR(0xe000406c);
	return r;
}
static inline void sdram_controller_bandwidth_update_write(unsigned char value) {
	MMPTR(0xe000406c) = value;
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NREADS_ADDR 0xe0004070
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NREADS_SIZE 3
static inline unsigned int sdram_controller_bandwidth_nreads_read(void) {
	unsigned int r = MMPTR(0xe0004070);
	r <<= 8;
	r |= MMPTR(0xe0004074);
	r <<= 8;
	r |= MMPTR(0xe0004078);
	return r;
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NWRITES_ADDR 0xe000407c
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_NWRITES_SIZE 3
static inline unsigned int sdram_controller_bandwidth_nwrites_read(void) {
	unsigned int r = MMPTR(0xe000407c);
	r <<= 8;
	r |= MMPTR(0xe0004080);
	r <<= 8;
	r |= MMPTR(0xe0004084);
	return r;
}
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_DATA_WIDTH_ADDR 0xe0004088
#define CSR_SDRAM_CONTROLLER_BANDWIDTH_DATA_WIDTH_SIZE 1
static inline unsigned char sdram_controller_bandwidth_data_width_read(void) {
	unsigned char r = MMPTR(0xe0004088);
	return r;
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

/* constants */
#define UART_INTERRUPT 0
static inline int uart_interrupt_read(void) {
	return 0;
}
#define TIMER0_INTERRUPT 1
static inline int timer0_interrupt_read(void) {
	return 1;
}
#define CSR_DATA_WIDTH 8
static inline int csr_data_width_read(void) {
	return 8;
}
#define SYSTEM_CLOCK_FREQUENCY 83333333
static inline int system_clock_frequency_read(void) {
	return 83333333;
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
#define L2_SIZE 8192
static inline int l2_size_read(void) {
	return 8192;
}
#define CONFIG_CLOCK_FREQUENCY 83333333
static inline int config_clock_frequency_read(void) {
	return 83333333;
}
#define CONFIG_CPU_RESET_ADDR 537395200
static inline int config_cpu_reset_addr_read(void) {
	return 537395200;
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
