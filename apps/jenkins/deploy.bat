set CICD_JENKINS_SAMPLE_PATH=C:\Users\jepic\AppData\Local\Jenkins\.jenkins\workspace\%JOB_NAME%\apps\ide\pca10040\s132\iar\

if not exist %CICD_JENKINS_SAMPLE_PATH%Debug\Exe\ mkdir %CICD_JENKINS_SAMPLE_PATH%Debug\Exe\


if exist %CICD_JENKINS_SAMPLE_PATH%_build\ble_app_uart_pca10040_s132.hex (
    move %CICD_JENKINS_SAMPLE_PATH%_build\ble_app_uart_pca10040_s132.hex %CICD_JENKINS_SAMPLE_PATH%Debug\Exe\ble_app_uart_pca10040_s132_%BUILD_DISPLAY_NAME%.hex
    exit 0
) else (
    exit 1
)