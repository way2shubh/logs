#! /bin/bash

sudo mkdir -p /Users/logs

sudo mkdir  /Users/logs/librarylogs/

#sudo mkdir /Users/logs/falconctl
sudo mkdir /Users/logs/sysdiagnose
#sudo mkdir /Users/logs/csversion
#sudo mkdir /Users/logs/librarycs
#sudo mkdir /Users/logs/csprocess
#sudo mkdir /Users/logs/kextstat

sudo cp -R /Library/Logs/DiagnosticReports/  /Users/logs/librarylogs/

#sudo /Library/CS/falconctl diagnose

sudo sysdiagnose

sudo cp -R /private/var/tmp/ /Users/logs/sysdiagnose/

sudo sysctl cs > /Users/logs/csversion.txt

sudo ls /Library/CS/ > /Users/logs/ls.txt

ps -ef | grep CSDaemon > /Users/logs/csdaemon.txt 

sudo kextstat | grep crowd > /Users/kextstat.txt
