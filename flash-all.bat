echo "A12 Flash for OnePlus 7T Pro"

fastboot devices


@ECHO OFF

:choice
set /P c=Would you like to wipe the phone before the flashing process beginsY/N]?
if /I "%c%" EQU "Y" goto :somewhere
if /I "%c%" EQU "N" goto :somewhere_else
goto :choice


:somewhere

echo "Wiping Data..."
pause
fastboot -w

:somewhere_else

echo "Ok, data wont be deleted :)."
pause


echo "Let the flashing begin!"

fastboot flash system system.img
fastboot flash system_ext system_ext.img
fastboot flash boot boot.img
fastboot flash odm odm.img
fastboot flash product product.img
fastboot flash vbmeta vbmeta.img
fastboot flash vbmeta_system vbmeta_system.img
fastboot flash vendor vendor.img
fastboot flash dtbo dtbo.img


