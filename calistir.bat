@echo off

echo -- SavulCoin guncelleniyor...
:: Pull latest commits
cd SavulCoin
git pull
call npm install

cd ..

cd savulcoin-reverse-proxy/client
git pull
call npm install
cd ../..

echo --


SET /P ADDRESSID=-- SavulCoin adresi = 

start cmd /c scripts\run-rp.bat %ADDRESSID%
start cmd /c scripts\run-savulcoin.bat %ADDRESSID%

echo -- Islem basladi. Acilan 2 pencereyi kapatirsan islem kapanir ona gore!

pause