set IAR_BUILD_PATH=C:\Program Files\IAR Systems\Embedded Workbench 9.0\common\bin\
set MCLD4P_PATH=C:\Users\jepic\AppData\Local\Jenkins\.jenkins\workspace\%JOB_NAME\apps\ide\pca10040\s132\iar\
C:
cd %IAR_BUILD_PATH%

if not exist %MCLD4P_PATH%Debug\Exe\ mkdir %MCLD4P_PATH%Debug\Exe\

IarBuild.exe %MCLD4P_PATH%ble_app_uart_pca10040_s132.ewp -clean nrf52832_xxaa
IarBuild.exe %MCLD4P_PATH%ble_app_uart_pca10040_s132.ewp -build nrf52832_xxaa

if exist %MCLD4P_PATH%_build\ble_app_uart_pca10040_s132.hex (
    move %MCLD4P_PATH%_build\ble_app_uart_pca10040_s132.hex %MCLD4P_PATH%Debug\Exe
    IarBuild.exe %MCLD4P_PATH%ble_app_uart_pca10040_s132.ewp -clean nrf52832_xxaa
    exit 0
) else (
    IarBuild.exe %MCLD4P_PATH%ble_app_uart_pca10040_s132.ewp -clean nrf52832_xxaa
    exit 1
)