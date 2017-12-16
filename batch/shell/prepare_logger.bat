@echo off

set projectDir=C:\Users\Admin\dev\startups\giggs

set fulldate=%date:~10,4%%date:~7,2%%date:~4,2%
set fulltime=%time:~0,2%%time:~3,2%%time:~6,2%

set logFolder=%projectDir%\log\%fulldate%_%fulltime%
echo make directory at: %logFolder%
pause

mkdir %logFolder%

set outputFilename=%logFolder%\ionic_prepare.log

echo "Run the prepare command with logging... (ionic cordova prepare >%outputFilename% 2>&1)"

pause

ionic cordova prepare >%outputFilename% 2>&1

