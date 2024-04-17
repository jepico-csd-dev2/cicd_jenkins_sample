#include "unity.h"

#include "mock_nordic_common.h"
#include "mock_nrf.h"
#include "mock_ble_hci.h"
#include "mock_ble_advdata.h"
#include "mock_ble_advertising.h"
#include "mock_ble_conn_params.h"
#include "mock_nrf_sdh.h"
#include "mock_nrf_sdh_soc.h"
#include "mock_nrf_sdh_ble.h"
#include "mock_nrf_ble_gatt.h"
#include "mock_nrf_ble_qwr.h"
#include "mock_app_timer.h"
#include "mock_ble_nus.h"
#include "mock_app_uart.h"
#include "mock_app_util_platform.h"
#include "mock_bsp_btn_ble.h"
#include "mock_nrf_pwr_mgmt.h"
#include "mock_nrf_log.h"
#include "mock_nrf_log_internal.h"
#include "mock_nrf_log_ctrl.h"
#include "mock_nrf_log_default_backends.h"
#include "mock_bsp.h"
#include "mock_app_error.h"
#include "common.h"

void setUp(void){};
void tearDown(void){};

const nrf_log_module_const_data_t m_nrf_log_app_logs_data_const;

static ret_code_t app_timer_init_pass_handler(int cmock_num_calls)
{
	return 0;
}

void test_timers_init_pass(void)
{
	app_timer_init_AddCallback(app_timer_init_pass_handler);
	app_timer_init_Stub(app_timer_init_pass_handler);
	timers_init();
	TEST_PASS();
}

static ret_code_t app_timer_init_fail_handler(int cmock_num_calls)
{
	return 1;
}

void test_timers_init_fail(void)
{
	app_timer_init_AddCallback(app_timer_init_fail_handler);
	app_timer_init_Stub(app_timer_init_fail_handler);
	app_error_handler_bare_ExpectAnyArgs();
	timers_init();
}