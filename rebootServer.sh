#!/bin/bash
echo "Server reboot at $(date)" >> /minecraftDirectory/srvChk.log
/minecraftDirectory/rcon/./mcrcon -P 19132 -H 127.0.0.1 -p MYPASSWORD "broadcast Server scheduled reboot in 10 seconds"
sleep 7
/minecraftDirectory/rcon/./mcrcon -P 19132 -H 127.0.0.1 -p MYPASSWORD "broadcast Server scheduled reboot in 3 seconds"i
sleep 3
/minecraftDirectory/rcon/./mcrcon -P 19132 -H 127.0.0.1 -p MYPASSWORD "broadcast Server scheduled reboot in NOW"
/etc/init.d/minecraftpe stop
echo "Stopped at $(date)" >> /minecraftDirectory/srvChk.log
sleep 10
rm -r -f /minecraftDirectory/pe/minecraftPE.Locked
echo "log removed at $(date)" >> /minecraftDirectory/srvChk.log
/etc/init.d/minecraftpe start
echo "Restart complete at $(date)" >> /minecraftDirectory/srvChk.log
