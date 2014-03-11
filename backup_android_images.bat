echo off
Setlocal EnableDelayedExpansion

set ROOT_FOLDER=C:\Users\Julien\Documents\perso\photos\android\
set IMAGES_DIR=(/storage/sdcard0/Snapseed /storage/sdcard0/DCIM/Camera /storage/extSdCard/DCIM/Camera)
set ADB_CMD=adb pull
set FOLDER=%DATE:/=-%\

mkdir %ROOT_FOLDER%%FOLDER%
set count=0
for %%I in %IMAGES_DIR% do (
 Set /A count+=1
 Set fn=0!count!
 Set var=%%I
 set "PREFIX=!fn:~-2!!var:/=_!"
 %ADB_CMD% %%I %ROOT_FOLDER%%FOLDER%!PREFIX!
)
echo on
