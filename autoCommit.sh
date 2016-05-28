#!/bin/sh
echo Begin Autocommit >> /minecraftDirectory/autocommit.log
date >> /minecraftDirectory/autocommit.log
git add --a >> /minecraftDirectory/autocommit.log
git commit -m 'autocommit!' >> /minecraftDirectory/autocommit.log
git push origin master --force >> /minecraftDirectory/autocommit.log
echo DONE >> /minecraftDirectory/autocommit.log
