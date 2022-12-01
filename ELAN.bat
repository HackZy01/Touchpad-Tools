ECHO OFF
:MENU
timeout 3
CLS
ECHO ============================
ECHO ELAN Touchpad Registry Tools
ECHO ============================
ECHO.
ECHO SCROLLING
ECHO ---------------------------
ECHO 1 - Enable smooth scrolling, A - Disable
ECHO     Fixes scrolling
ECHO. 
ECHO TAP TO CLICK                USE WHILE TYPING
ECHO -----------------------     ----------------
ECHO 2 - Disable, 3 - Enable     4 - Enable, 5 - Disable    
ECHO.
ECHO MULTI-TAP                   GESTURES
ECHO -----------------------     ---------------- 
ECHO 6 - Enable 2 finger tap     12 - Enable 3 finger swipe
ECHO 7 - Disable 2 finger tap    13 - Disable 3 finger swipe
ECHO                             18 - Enable 4 finger swipe, 19 - disable
ECHO 8 - Enable 3 finger tap     14 - Disable pinch to zoom
ECHO 9 - Disable 3 finger tap    15 - Enable pinch to zoom
ECHO.
ECHO 10 - Enable 4 finger tap    PHYSICAL BUTTONS
ECHO 11 - Disable 4 finger tap   ----------------
ECHO                             16 - Enable, 17 - Disable
ECHO [32mR - Reboot to apply[0m
ECHO [34mV - Apply recommended config[0m
ECHO [31m0 - Exit[0m
ECHO.

SET /P M=Enter your choice:
IF %M%==0 EXIT
IF %M%==R GOTO Reboot
IF %M%==1 GOTO ScrollControl_Mode
IF %M%==V GOTO recommended
IF %M%==A GOTO ScrollControl_Mode_0
IF %M%==2 GOTO Tap_Disable
IF %M%==3 GOTO Tap_Enable
IF %M%==4 GOTO DisableWhenType_Disable
IF %M%==5 GOTO DisableWhenType_Enable
IF %M%==6 GOTO Tap_Two_Finger_Enable
IF %M%==7 GOTO Tap_Two_Finger_Disable
IF %M%==8 GOTO Tap_Three_Finger_Enable
IF %M%==9 GOTO Tap_Three_Finger_Disable
IF %M%==10 GOTO Tap_Four_Finger_Enable
IF %M%==11 GOTO Tap_Four_Finger_Disable
IF %M%==12 GOTO ThreeFingerMove_Enable
IF %M%==13 GOTO ThreeFingerMove_Disable
IF %M%==14 GOTO Zoom_Disable
IF %M%==15 GOTO Zoom_Enable
IF %M%==16 GOTO Button_Enable
IF %M%==17 GOTO Button_Disable
IF %M%==18 GOTO FourFingerMove_Enable
IF %M%==19 GOTO FourFingerMove_Disable

:Reboot
ECHO rebooting in a minute
shutdown -r
GOTO MENU

:recommended
ECHO Options 1, 4, 3 have been enabled
reg add HKCU\Software\Elantech\SmartPad /t REG_DWORD /v ScrollControl_Mode /d 1 /f
reg add HKCU\Software\Elantech\SmartPad /t REG_DWORD /v Tap_Enable /d 1 /f
reg add HKCU\Software\Elantech\SmartPad /t REG_DWORD /v DisableWhenType_Enable /d 0 /f
GOTO MENU

:ScrollControl_Mode
reg add HKCU\Software\Elantech\SmartPad /t REG_DWORD /v ScrollControl_Mode /d 1 /f
ECHO Enjoy!
GOTO MENU

:ScrollControl_Mode_0
reg add HKCU\Software\Elantech\SmartPad /t REG_DWORD /v ScrollControl_Mode /d 0 /f
ECHO Done
GOTO MENU

:Tap_Enable
reg add HKCU\Software\Elantech\SmartPad /t REG_DWORD /v Tap_Enable /d 1 /f
ECHO Enabled tap to click
GOTO MENU

:Tap_Disable
reg add HKCU\Software\Elantech\SmartPad /t REG_DWORD /v Tap_Enable /d 0 /f
ECHO Disabled tap to click
GOTO MENU

:DisableWhenType_Disable
reg add HKCU\Software\Elantech\SmartPad /t REG_DWORD /v DisableWhenType_Enable /d 0 /f
ECHO The touchpad will respond while using the keyboard
GOTO MENU

:DisableWhenType_Enable
reg add HKCU\Software\Elantech\SmartPad /t REG_DWORD /v DisableWhenType_Enable /d 1 /f
ECHO The touchpad will not respond while using the keyboard
GOTO MENU

:Tap_Two_Finger_Enable
reg add HKCU\Software\Elantech\SmartPad /t REG_DWORD /v Tap_Two_Finger_Enable /d 1 /f
ECHO Enabled two finger tap
GOTO MENU

:Tap_Two_Finger_Disable
reg add HKCU\Software\Elantech\SmartPad /t REG_DWORD /v Tap_Two_Finger_Enable /d 0 /f
ECHO Disabled two finger tap
GOTO MENU

:Tap_Three_Finger_Enable
reg add HKCU\Software\Elantech\SmartPad /t REG_DWORD /v Tap_Three_Finger_Enable /d 1 /f
ECHO Enabled three finger tap
GOTO MENU

:Tap_Three_Finger_Disable
reg add HKCU\Software\Elantech\SmartPad /t REG_DWORD /v Tap_Three_Finger_Enable /d 0 /f
ECHO Disabledhree finger tap
GOTO MENU

:Tap_Four_Finger_Enable
reg add HKCU\Software\Elantech\SmartPad /t REG_DWORD /v Tap_Four_Finger_Enable /d 1 /f
ECHO Enabled four finger tap
GOTO MENU

:Tap_Four_Finger_Disable
reg add HKCU\Software\Elantech\SmartPad /t REG_DWORD /v Tap_Four_Finger_Enable /d 0 /f
ECHO Disabled four finger tap
GOTO MENU

:Button_Enable
reg add HKCU\Software\Elantech\SmartPad /t REG_DWORD /v Button_Enable /d 1 /f
ECHO Enabled physical buttons
GOTO MENU

:Button_Disable
reg add HKCU\Software\Elantech\SmartPad /t REG_DWORD /v Button_Enable /d 0 /f
ECHO Disabled physical buttons
GOTO MENU

:Zoom_Disable
reg add HKCU\Software\Elantech\SmartPad /t REG_DWORD /v Zoom_Enable /d 0 /f
ECHO Disabled pinch to zoom
GOTO MENU

:Zoom_Enable
reg add HKCU\Software\Elantech\SmartPad /t REG_DWORD /v Zoom_Enable /d 1 /f
ECHO Enabled pinch to zoom
GOTO MENU

:ThreeFingerMove_Enable
reg add HKCU\Software\Elantech\SmartPad /t REG_DWORD /v ThreeFingerMove_Enable /d 1 /f
ECHO Enabled three finger gestures
GOTO MENU

:ThreeFingerMove_Disable
reg add HKCU\Software\Elantech\SmartPad /t REG_DWORD /v ThreeFingerMove_Enable /d 0 /f
ECHO Disabled three finger gestures
GOTO MENU

:FourFingerMove_Enable
reg add HKCU\Software\Elantech\SmartPad /t REG_DWORD /v ThreeFingerMove_Enable /d 1 /f
ECHO Enabled four finger gestures
GOTO MENU

:FourFingerMove_Disable
reg add HKCU\Software\Elantech\SmartPad /t REG_DWORD /v ThreeFingerMove_Enable /d 0 /f
ECHO Disabled four finger gestures
GOTO MENU