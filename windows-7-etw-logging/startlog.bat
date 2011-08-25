set TRACENAME=%1
if "%TRACENAME%"=="" SET TRACENAME=usbtrace.etl
Logman start Usbtrace -p Microsoft-Windows-USB-USBPORT -o "%TRACENAME%" -ets -nb 128 640 -bs 128
Logman update Usbtrace -p Microsoft-Windows-USB-USBHUB -ets