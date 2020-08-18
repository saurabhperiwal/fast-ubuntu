#!/bin/sh
#Check if cpufrequtil command exisits in linux system
if ! command -v cpufreq-set > /dev/null
then
    echo "Let me install cpufrequtils for you."
    sudo apt install cpufrequtils
else
    echo "Great you already have cpufrequtils installed."
fi
echo "Let me set your CPU to give better performance."
#Set cpu to performance
sudo cpufreq-set -r -g performance
#Set swappiness to 0 to use maximum RAM and use
sudo echo 'vm.swappiness=0' >> /etc/sysctl.conf
echo "***Please restart to let changes take effect***"