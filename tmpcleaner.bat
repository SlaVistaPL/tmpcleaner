@echo off
title TMPCleaner
mode 120,20
goto menu

:menu
cls
echo Program do czyszczenia plikow tymczasowych TMPCleaner 1.2.5 RC1 gotowy do dzialania.
echo.
echo 1) Rozpocznij czyszczenie
echo 2) Sprawdz liste plikow tymczasowych
echo 3) Informacje o programie
echo 4) Opusc program
choice /c 1234 /n
if %errorlevel%==1 goto cleartmpchoice
if %errorlevel%==2 goto chktmp
if %errorlevel%==3 goto info
if %errorlevel%==4 exit

:cleartmpchoice
cls
echo Zalecane jest sprawdzenie folderu z plikami tymczasowymi przed uruchomieniem procesu czyszczenia plikow tymczasowych. Mozesz uruchomic proces czyszczenia nawet przy braku tych plikow, lecz nie odniesie to zadnego skutku.
echo.
echo 1) Rozpocznij czyszczenie
echo 2) Sprawdz folder z plikami tymczasowymi
echo 3) Powrot do menu glownego
choice /c 123 /n
if %errorlevel%==1 goto cleartmp
if %errorlevel%==2 goto chktmp
if %errorlevel%==3 goto menu


:cleartmp
cls
cd %AppData%
cd ..
cd local
cd temp
del *.tmp
echo Czyszczenie zakonczone!
pause
goto menu

:chktmp
cls
cd %AppData%
cd ..
cd local
cd temp
dir
echo Co zamierzasz zrobic? Wcisnij liczbe ktora zostala wyznaczona do wykonania jednego z nizej wymienionych polecen.
echo.
echo 1) Wyczysc pliki tymczasowe
echo 2) Powrot do menu glownego
choice /c 12 /n
if %errorlevel%==1 goto cleartmp
if %errorlevel%==2 goto menu
goto menu

:info
cls
echo TMPCleaner - wersja 1.2.5 RC1
echo.
echo Dziekuje za wybranie mojego programu! Mam nadzieje, ze moj program zwolnil miejsce na dysku.
echo Aktualizacje beda sie pojawiac co jakis czas. Zapraszam do sledzenia postepow programu na biezaco!
echo.
echo 1) Powrot do menu glownego
choice /c 1 /n
if %errorlevel%==1 goto menu