@echo off
:back
echo.
echo The Shop
echo (You have 2,500 Francs)
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
echo "Welcome, welcome! Please choose a class."
echo.
echo 1 - Private
echo 2 - Officer
echo 3 - Seaman
echo 4 - Musician
echo 5 - Sapper
echo.
choice /n /c:12345
if errorlevel 5 goto buypriv
if errorlevel 4 goto buyoffi
if errorlevel 3 goto buyseam
if errorlevel 2 goto buymusi
if errorlevel 1 goto buysapp

:buypriv
echo "Welcome, welcome! Please, take a look around!"
echo.
echo (You have 2,500 Francs)
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
if errorlevel 1 goto Alreadyhave
if errorlevel 0 goto getout

:getout
goto back

:AlreadyHave
echo You already have this weapon in your inventory.
pause
goto buypriv

:PurRifl
echo     Rifle
echo     Base Damage  195 / pellet
echo     Base Reload  14 seconds
echo     Penetration  15
echo     Range        1500 studs
echo     Spread       0.01 degrees
echo Would you like to buy this weapon? This costs
echo                500 Francs.
echo Y - Yes!
echo N - No.
echo.
choice /c:yn "Yes, No"
if errorlevel 2 goto purchased
if errorlevel 1 goto buypriv

:purchased
echo "There you go."
pause
goto buypriv
