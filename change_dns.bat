@ech@echo off
REM Set variables for new DNS
set "PrimaryDNS=1.1.1.1"
set "SecondaryDNS=1.0.0.1"

REM Specify the name of the network adapter to change DNS for
set "AdapterName=Ethernet"

REM Change primary DNS server
netsh interface ipv4 set dns name="%AdapterName%" source=static address=%PrimaryDNS%

REM Add secondary DNS server
netsh interface ipv4 add dns name="%AdapterName%" address=%SecondaryDNS% index=2

echo DNS successfully changed to %PrimaryDNS% and %SecondaryDNS%.
pause