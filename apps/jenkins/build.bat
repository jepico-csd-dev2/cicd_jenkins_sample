set IAR_BUILD_PATH=C:\Program Files\IAR Systems\Embedded Workbench 9.0\common\bin\
set CICD_JENKINS_SAMPLE_PATH=C:\Users\jepic\AppData\Local\Jenkins\.jenkins\workspace\%JOB_NAME%\apps\ide\pca10040\s132\iar\
C:
cd %IAR_BUILD_PATH%



IarBuild.exe %CICD_JENKINS_SAMPLE_PATH%ble_app_uart_pca10040_s132.ewp -clean nrf52832_xxaa
IarBuild.exe %CICD_JENKINS_SAMPLE_PATH%ble_app_uart_pca10040_s132.ewp -build nrf52832_xxaa

if exist %CICD_JENKINS_SAMPLE_PATH%_build\ble_app_uart_pca10040_s132.hex (
    exit 0
) else (
    exit 1
)