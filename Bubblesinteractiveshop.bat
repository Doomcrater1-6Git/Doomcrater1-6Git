@echo off
cls
echo Bubbles' interactive shop under MS-DOS
echo A - Play
echo B - Quit
echo.
choice /c:ab "Play, Quit"
if errorlevel 2 goto fin
if errorlevel 1 goto back

:back
cls
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

:leave
echo.
goto fin

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
if errorlevel 5 goto buysapp
if errorlevel 4 goto buymusi
if errorlevel 3 goto buyseam
if errorlevel 2 goto buyoffi
if errorlevel 1 goto buypriv

:buypriv
echo.
echo.
echo "Welcome, welcome! Please, take a look around!"
echo.
echo (You have 2,500 Francs)
echo.
echo 1 - Musket
echo 2 - Rifle
echo 3 - Horse Artillery Pistol
echo 4 - Lance
echo 5 - Sabre
echo 6 - Heavy sabre
echo 7 - Grenades
echo 8 - Water Bucket
echo 9 - Back
choice /n /c:123456789
if errorlevel 9 goto getout
if errorlevel 8 goto PurBuck
if errorlevel 7 goto PurGred
if errorlevel 6 goto PurHeav
if errorlevel 5 goto Alreadyhave
if errorlevel 4 goto PurLanc
if errorlevel 3 goto PurHors
if errorlevel 2 goto PurRifl
if errorlevel 1 goto Alreadyhave

:buypriv2
echo.
echo.
echo "I have many items within my collection," 
echo "And they're all for sale!..."
echo "For the right price, that is." 
echo.
echo (You have 2,000 Francs)
echo.
echo 1 - Musket
echo 2 - Rifle
echo 3 - Horse Artillery Pistol
echo 4 - Lance
echo 5 - Sabre
echo 6 - Heavy sabre
echo 7 - Grenades
echo 8 - Water Bucket
echo 9 - Back
choice /n /c:123456789
if errorlevel 9 goto getout
if errorlevel 8 goto PurBuck
if errorlevel 7 goto PurGred
if errorlevel 6 goto PurHeav
if errorlevel 5 goto Alreadyhave
if errorlevel 4 goto PurLanc
if errorlevel 3 goto PurHors
if errorlevel 2 goto PurRifl
if errorlevel 1 goto Alreadyhave

:buypriv3
echo.
echo (You have 1,300 Francs)
echo.
echo 1 - Musket
echo 2 - Rifle
echo 3 - Horse Artillery Pistol
echo 4 - Lance
echo 5 - Sabre
echo 6 - Heavy sabre
echo 7 - Grenades
echo 8 - Water Bucket
echo 9 - Back
choice /n /c:123456789
if errorlevel 9 goto getout
if errorlevel 8 goto PurBuck
if errorlevel 7 goto PurGred
if errorlevel 6 goto PurHeav
if errorlevel 5 goto Alreadyhave
if errorlevel 4 goto PurLanc
if errorlevel 3 goto PurHors
if errorlevel 2 goto PurRifl
if errorlevel 1 goto Alreadyhave

:buypriv4
echo.
echo (You have 600 Francs)
echo.
echo 1 - Musket
echo 2 - Rifle
echo 3 - Horse Artillery Pistol
echo 4 - Lance
echo 5 - Sabre
echo 6 - Heavy sabre
echo 7 - Grenades
echo 8 - Water Bucket
echo 9 - Back
choice /n /c:123456789
if errorlevel 9 goto getout
if errorlevel 8 goto PurBuck
if errorlevel 7 goto PurGred
if errorlevel 6 goto PurHeav
if errorlevel 5 goto Alreadyhave
if errorlevel 4 goto PurLanc
if errorlevel 3 goto PurHors
if errorlevel 2 goto PurRifl
if errorlevel 1 goto Alreadyhave

:getout
goto back

:AlreadyHave
echo You already have this weapon in your inventory.
pause
goto buypriv

:PurRifl
echo.
echo     Rifle
echo     Base Damage  195 / pellet
echo     Base Reload  14 seconds
echo     Penetration  15
echo     Range        1500 studs
echo     Spread       0.01 degrees
echo.
echo Would you like to buy this weapon? This costs
echo                500 Francs.
echo Y - Yes!
echo N - No.
echo.
choice /c:yn "Yes, No"
if errorlevel 2 goto buypriv
if errorlevel 1 goto purchased

:purHors
echo.
echo    Horse Artillery Pistol
echo    Base Damage  85 / pellet
echo    Base Reload	 13.2s
echo    Penetration  5
echo    Range	       550 studs
echo    Spread       Right barrel: 1 degrees
echo                 Left barrel: 0.4 degrees
echo.
echo Would you like to buy this weapon? This costs
echo                700 Francs.
echo Y - Yes!
echo N - No.
echo.
choice /c:yn "Yes, No"
if errorlevel 2 goto buypriv2
if errorlevel 1 goto purchased2

:purLanc
echo.
echo    Lance
echo    Base Startup    0.18s
echo    Base Damage	    50
echo    Swing Rate	    Down: 0.45s
echo                    Cooldown: 0.15s
echo    Penetration	    Base: 3
echo                    Max: 5
ecgo.
echo Would you like to buy this weapon? This costs
echo                700 Francs.
echo Y - Yes!
echo N - No.
echo.
choice /c:yn "Yes, No"
if errorlevel 2 goto buypriv3
if errorlevel 1 goto purchased3

:purchased
cls
echo.
echo "There you go."
pause
goto buypriv2

:purchased2
cls
echo.
echo "Ah, yes. It was made by the great Henry Nock." 
pause
echo "It's like the Carbine rifle, but with an additional barrel!"
pause
echo "You can even fire both at the same time."
pause
goto buypriv3

:purchased3
cls
echo.
echo "It's difficult to handle at first,"
pause
echo "but it's very useful for distant attacks."
pause
goto buypriv4

:fin
