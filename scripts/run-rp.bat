@echo off

cd savulcoin-reverse-proxy/client

node index.js --ws=wss://savul-proxy.yapsavun.com/ --addressId=%1%