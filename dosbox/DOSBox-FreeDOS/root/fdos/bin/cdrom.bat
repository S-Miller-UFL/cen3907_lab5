@ECHO OFF

set _OPTS.CDROM=/D:FDCD0001

set _LANG.CDROM=%NLSPATH%\CDROM.%LANG%
if not exist %_LANG.CDROM% set _LANG.CDROM=%NLSPATH%\CDROM.EN
if not exist %_LANG.CDROM% set _LANG.CDROM=%DOSDIR%\BIN\CDROM
if not exist %_LANG.CDROM% set _LANG.CDROM=%DOSDIR%\BIN\CDROM.BAT
if "%1" == "/?" goto ShowHelp
if /I "%1" == "/H" goto ShowHelp
if /I "%1" == "HELP" goto ShowHelp
goto Start

:ShowHelp
if not exist %HELPPATH%\CDROM.%LANG% goto ShowHelpEn
type %HELPPATH%\CDROM.%LANG%
goto End

:ShowHelpEn
if not exist %HELPPATH%\CDROM.EN goto ShowHelpless
%HELPPATH%\CDROM.%LANG%
goto End

:ShowHelpless
vecho/g /t %_LANG.CDROM% NO_HELP
goto End

rem Built-in English Translations
CD.INIT=CD-ROM initialization.
CD.GIVEUP=/p /fLightRed "unable to load an appropriate CD/DVD driver" /fGrey
CD.ERROR=, /fGrey error "#%1" reported - /fLightRed failed /fGrey
CD.NO_DRVR= /fGrey unable to locate /fYellow "%1" /fGrey CD driver - /fLightRed failed /fGrey
CD.TRY_DRVR= /g attempting to use the /fYellow "%1" /fGrey CD driver
CD.TRY_EXT= attempting to load /fYellow "%1" /fGrey CD extenstions
CD.SUCCESS=, /fLightGreen success /fGrey
CD.STATUS=successfully started the CD driver and extenstions for drive /fLightGreen "%1" /fGrey
NO_HELP=unable to locate help file

:Start
vecho /g /t %_LANG.CDROM% CD.INIT

if /I "%1" == "SEARCH" goto SearchDriver
if "%1" == "" goto SearchDriver
set _DRVR.CDROM=%1
goto TryDriver

:SearchDriver
rem try un-supplied non-OSS drivers first, if present
set _DRVR.CDROM=VIDE-CDD
goto TryDriver
:Not-VIDE-CDD
set _DRVR.CDROM=OAKCDROM
goto TryDriver
:Not-OAKCDROM
set _DRVR.CDROM=GSCDROM
goto TryDriver
:Not-GSCDROM

rem try supplied OSS drivers
set _DRVR.CDROM=UDVD2
goto TryDriver
:Not-UDVD2
set _DRVR.CDROM=ELTORITO
goto TryDriver
:Not-ELTORITO
set _DRVR.CDROM=GCDROM
goto TryDriver
:Not-GCDROM
set _DRVR.CDROM=UIDE
goto TryDriver
:Not-UIDE

:GiveUp
vecho /g /t %_LANG.CDROM% CD.GIVEUP
set _DRVR.CDROM=
vdelay /d 2000
verrlvl 1
goto End

:Failed
vecho /g /n /t %_LANG.CDROM% CD.ERROR %ERRORLEVEL%
:FailedRetry
vdelay /d 1000
vecho /g /fGrey
if /I "%1" == "SEARCH" goto Not-%_DRVR.CDROM%
if "%1" == "" goto Not-%_DRVR.CDROM%
goto GiveUp

:MissingDriver
if /I "%1" == "SEARCH" goto Not-%_DRVR.CDROM%
if "%1" == "" goto Not-%_DRVR.CDROM%
vecho /g /n /t %_LANG.CDROM% CD.NO_DRVR %_DRVR.CDROM%
goto FailedRetry

:TryDriver
if not exist %DOSDIR%\BIN\%_DRVR.CDROM%.SYS goto AltLocation
vecho /g /n /t %_LANG.CDROM% CD.TRY_DRVR %_DRVR.CDROM%
DEVLOAD /H %DOSDIR%\BIN\%_DRVR.CDROM%.SYS %_OPTS.CDROM% >NUL
if errorlevel 1 goto Failed
goto TryExtender
:AltLocation
if not exist %_DRVR.CDROM%.SYS goto MissingDriver
vecho /g /n /t %_LANG.CDROM% CD.TRY_DRVR %_DRVR.CDROM%
DEVLOAD /H %_DRVR.CDROM%.SYS %_OPTS.CDROM% >NUL
if errorlevel 1 goto Failed

:TryExtender
vecho /g /t %_LANG.CDROM% CD.SUCCESS
vecho /g /n /t %_LANG.CDROM% CD.TRY_EXT SHSUCDX
SHSUCDX /QQ /~ /D:?SHSU-CDR,D /D:?SHSU-CDH,D /D:?FDCD0001,D /D:?FDCD0002,D /D:?FDCD0003,D
if errorlevel 27 goto Failed
SHSUCDX /QQ /L:1
if errorlevel 27 goto Failed
if not errorlevel 1 goto Failed

if errorlevel 1 set CDROM=A:
if errorlevel 2 set CDROM=B:
if errorlevel 3 set CDROM=C:
if errorlevel 4 set CDROM=D:
if errorlevel 5 set CDROM=E:
if errorlevel 6 set CDROM=F:
if errorlevel 7 set CDROM=G:
if errorlevel 8 set CDROM=H:
if errorlevel 9 set CDROM=I:
if errorlevel 10 set CDROM=J:
if errorlevel 11 set CDROM=K:
if errorlevel 12 set CDROM=L:
if errorlevel 13 set CDROM=M:
if errorlevel 14 set CDROM=N:
if errorlevel 15 set CDROM=O:
if errorlevel 16 set CDROM=P:
if errorlevel 17 set CDROM=Q:
if errorlevel 18 set CDROM=R:
if errorlevel 19 set CDROM=S:
if errorlevel 20 set CDROM=T:
if errorlevel 21 set CDROM=U:
if errorlevel 22 set CDROM=V:
if errorlevel 23 set CDROM=W:
if errorlevel 24 set CDROM=X:
if errorlevel 25 set CDROM=Y:
if errorlevel 26 set CDROM=Z:

vecho /g /t %_LANG.CDROM% CD.SUCCESS
vecho /g /t %_LANG.CDROM% CD.STATUS %CDROM%
vdelay /D 500

:End
set _OPTS.CDROM=
set _DRVR.CDROM=
set _LANG.CDROM=
