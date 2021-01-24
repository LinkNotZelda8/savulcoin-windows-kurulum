@echo off

setlocal
:PROMPT
SET /P AREYOUSURE=Node.js yukledin mi? (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

SET /P AREYOUSURE=git yukledin mi? (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END


echo -- Kuruluma basliyorum o zaman.

:: clone reverse proxy
git clone https://github.com/LinkNotZelda8/savulcoin-reverse-proxy.git

:: clone savulcoin
git clone https://github.com/LinkNotZelda8/SavulCoin.git


:: install savulcoin-reverse-proxy dependencies
cd savulcoin-reverse-proxy/client
call npm install

cd ..
cd ..

:: install savulcoin dependencies
cd SavulCoin/
call npm install

echo --------------


echo -- Kurulum tamamlandi. calistir.bat ile mining'e baslayabilirsin.

pause
exit 0

:END
echo --------------
echo -- Yukle oyle gel.
echo -- Node.js = https://nodejs.org/dist/v14.15.4/node-v14.15.4-x64.msi
echo -- git = https://github.com/git-for-windows/git/releases/download/v2.30.0.windows.2/Git-2.30.0.2-64-bit.exe

echo --------------

endlocal
pause