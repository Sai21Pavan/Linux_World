#!/bin/sh

##################shell script which provides below information##################

GREEN='\033[0;32m'
NC='\033[0m'

Processor=`grep -c ^processor /proc/cpuinfo`
Memory=`awk '/MemTotal/ {print $2}' /proc/meminfo`
Available=`free -m`
OS=`uname -o`,`uname -v`
Disk=`fdisk -l`
Free=`df -h`
IP=`hostname -i`
Process=`ps -A |wc -l`
InstalledVersion=`rpm -qa | less`
Packages=`rpm -qa --qf "%{NAME}\n" | wc -l`


echo -e  "Number of CPU:${GREEN}${Processor}${NC}"

echo -e  "Total Memory:${GREEN}${Memory}${NC}"

echo -e "Total Available Memory:\n${GREEN}${Available}${NC}"

echo -e  "OS Name and its version:${GREEN}${OS}${NC}"

echo -e  "Disk information:${GREEN}${Disk}${NC}"

echo -e "Partition wise free space available:\n${GREEN}${Free}${NC}"

echo -e "IP Address Information:${GREEN}${IP}${NC}"

echo -e  "Total number of packages installed:${GREEN}${Packages}${NC}"

echo -e  "List Installed package name and its version:${GREEN}${InstalledVersion}${NC}"

echo -e  "List the ongoing process on the machine:${GREEN}${Process}${NC}"

echo -e  "${GREEN}script completed${NC}"

exit
