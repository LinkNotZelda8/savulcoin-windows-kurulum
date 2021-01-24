@echo off

cd Savulcoin

setlocal

set MINER_MODE=true
set REWARD_ADDRESS=%1%
set NAME=miner

node bin/savulcoin.js --proxyUrl=https://savul-proxy.yapsavun.com/%1% 

endlocal

pause