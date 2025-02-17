@echo off
setlocal

:: Set the source and destination paths
:: 'sourceDrive' is the drive you want to capture an image of
set sourceDrive=C:
:: 'destinationPath' is the path where the captured image will be saved
set destinationPath=D:\CapturedImage.wim

:: Capture the image using DISM
:: /ImageFile specifies the location and name of the destination WIM file
:: /CaptureDir specifies the root directory of the volume to capture
:: /Name specifies the name of the image in the WIM file
:: /Compress specifies the compression type for the captured image (max, fast, none)
:: /CheckIntegrity checks the integrity of the WIM file after it's created
dism /Capture-Image /ImageFile:%destinationPath% /CaptureDir:%sourceDrive%\ /Name:"Captured Image" /Compress:max /CheckIntegrity

echo.
echo Image capture complete!
echo.

endlocal
pause