@ECHO OFF
title Folder VivoXbrain
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST VivoXbrain goto MDLOCKER
:CONFIRM
echo Palmeiras tem Mundial?(S/N)
set/p "cho=>"
if %cho%==s goto LOCK
if %cho%==S goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Tentativa Inválida.
goto CONFIRMAR
:LOCK
ren VivoXbrain "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Pasta Lacrada!
goto End
:UNLOCK
echo Cabral Corporation ©
set/p "pass=>"
if NOT %pass%== 1202 goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" VivoXbrain
echo Liberado!
goto End
:FAIL
echo Não deu certo!!!
goto end
:MDLOCKER
md VivoXbrain
echo VivoXbrain Ok!
goto End
:End

@echo off&cls
set $MDP=toto1234
for /f "delims=" %%a in ('powershell -c "$rep=read-host Entrer_votre_MDP -AsSecureString;$password = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($rep));write $password"') do set $rep=%%a
if %$MDP%==%$rep% (echo Codigo OK) else (echo Codigo Errado)
exit/b