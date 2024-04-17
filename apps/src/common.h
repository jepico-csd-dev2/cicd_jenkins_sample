#ifndef COMMON_H
#define COMMON_H

#include <stdbool.h>

void timers_init(void);
void gap_params_init(void);
void services_init(void);
void conn_params_init(void);
void ble_stack_init(void);
void gatt_init(void);
void uart_init(void);
void advertising_init(void);
void buttons_leds_init(bool * p_erase_bonds);
void log_init(void);
void power_management_init(void);
void advertising_start(void);

#endif // COMMON_H