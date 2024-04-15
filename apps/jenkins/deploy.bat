set MCLD4P_PATH=C:\Users\jepic\AppData\Local\Jenkins\.jenkins\workspace\%JOB_NAME%\apps\ide\pca10040\s132\iar\

if not exist %MCLD4P_PATH%Debug\Exe\ mkdir %MCLD4P_PATH%Debug\Exe\


if exist %MCLD4P_PATH%_build\ble_app_uart_pca10040_s132.hex (
    move %MCLD4P_PATH%_build\ble_app_uart_pca10040_s132.hex %MCLD4P_PATH%Debug\Exe\ble_app_uart_pca10040_s132_%BUILD_DISPLAY_NAME%.hex
    exit 0
) else (
    exit 1
)