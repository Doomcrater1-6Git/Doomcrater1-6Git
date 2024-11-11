@echo off
echo.
echo Bubbles' store
echo (You have 2,500 Francs)
echo.
echo Welcome, welcome!
echo.
echo A: Buy weapons
echo B: Purchase cosmetics
echo X: Leave
echo.
choice /c:abx "Buy, Purchase, Exit"
if errorlevel 3 goto leave
if errorlevel 2 goto purchase
if errorlevel 1 goto buy

:buy
cls
echo Welcome, welcome! Please, take a look around!
echo.
echo (You have 2,500 Francs.)
echo.
echo 0 - Back
echo 1 - Musket
echo 2 - Rifle
echo 3 - Horse Artillery Pistol
echo 4 - Lance
echo 5 - Sabre
echo 6 - Heavy sabre
echo 7 - Grenades
echo 8 - Water Bucket
echo 9 - None
choice /n /c:0123456789
if errorlevel 9 goto Alreadyhave
if errorlevel 8 goto PurBuck
if errorlevel 7 goto PurGred
if errorlevel 6 goto PurHeav
if errorlevel 5 goto Alreadyhave
if errorlevel 4 goto PurLanc
if errorlevel 3 goto PurHors
if errorlevel 2 goto PurRifl
if errorlevel 1 goto ALreadyhave
if errorlevel 0 goto getout
