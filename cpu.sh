#!/bin/bash
if test $# -eq 0; then
echo " Enter process number"
echo "1. Hostname "
echo "2. Serial number and manufacturer"
echo "3.CPU usage statistics"
echo "4.Memory usage"
echo "5.Swap information"
echo "6.Distribution version"
echo "7.Kernel version"
echo "8.Kernel startup parameters"
echo "9.Block devices"
echo "10.PCI Device Information"
echo "11.System uptime"
echo "12.Shutdown and restart history"
echo "13.Loaded kernel modules"
echo "14.Socket and port information"
echo "15.Installed packages"
fi
case "$1" in
1) hostnamectl;;
2) sudo dmidecode -t 2;;
3) sudo mpstat;;
4) free -h;;
5) swapon -s;;
6) lsb_release -a;;
7) uname -a;;
8) cat /proc/cmdline;;
9) lsblk;;
10) lspci;;
11) uptime;;
12) last reboot;;
13) sudo lsmod;;
14) sudo ss;;
15) dpkg -l;;
esac
