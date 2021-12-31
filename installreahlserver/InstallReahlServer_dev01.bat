@ECHO ON
"C:\Program Files\Beyond Compare 4\BCompare.exe" @"D:\Dropbox\Projects\InstallReahlServer\installreahlserver\InstallReahlServer.txt" 138.68.118.222 138.68.152.245
REM ==========================================================================================================
REM Putty "rte-dev01 - SetUp with root" configuration
REM ----------------------------------------------------------------------------------------------------------
REM /Session Name                          = "rte-dev01 - SetUp with root"
REM /Session/Host Name                     = 138.68.118.222
REM /Session/Logging/Log file name         = D:\Dropbox\Projects\InstallReahlServer\installreahlserver\InstallReahlServer_s1.log
REM /Session/Logging/All session output    = Yes
REM /Session/Logging/Always overwrite it   = Yes
REM /Terminal/Bell                         = None
REM /Window/Columns                        = 160
REM /Window/Rows                           = 40
REM /Window/Behaviour/Warn before closing  = No
REM /Window/Behaviour/Ensure always on top = Yes
REM /Connection/Data/Auto-login username   = root
REM /Connection/SSH/Remote command         = bash -x //usr/local/share/InstallReahlServer_s1.sh
REM ==========================================================================================================
putty -load "rte-dev01 - SetUp with root"
rem "C:\Program Files\Beyond Compare 4\BCompare.exe" "@D:\Dropbox\Projects\InstallReahlServer\installreahlserver\sync_rte-dev_s2.txt" 138.68.118.222 "rte-dev01 Install"
REM ==========================================================================================================
REM Putty "rte-dev02 - SetUp with rtinstall" configuration
REM ----------------------------------------------------------------------------------------------------------
REM /Session Name                          = "rte-dev01 - SetUp with rtinstall"
REM /Session/Host Name                     = 138.68.118.222
REM /Session/Logging/Log file name         = D:\Dropbox\Projects\InstallReahlServer\installreahlserver\InstallReahlServer_s2.log
REM /Session/Logging/All session output    = Yes
REM /Session/Logging/Always overwrite it   = Yes
REM /Terminal/Bell                         = None
REM /Window/Columns                        = 160
REM /Window/Rows                           = 40
REM /Window/Behaviour/Warn before closing  = No
REM /Window/Behaviour/Ensure always on top = Yes
REM /Connection/Data/Auto-login username   = rtinstall
REM /Connection/SSH/Remote command         = bash -x //usr/local/share/InstallReahlServer_s2.sh p_rte-dev01_s2_l.ini
REM ==========================================================================================================
putty -load "rte-dev01 - SetUp with rtinstall"
#CALL UpdateWebServer_01_dev02.bat
