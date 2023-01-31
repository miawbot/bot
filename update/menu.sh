#!/bin/bash
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
#information
OK = "$ {
  Green
}[OK]$ {
  Font
}"
CITY=$( curl -s ipinfo.io/city )
MYIP=$(curl -sS ipinfo.io/ip)

Error = "$ {
  Red
}[Mistake]$ {
  Font
}"
clear
# NGINX
#
# KERNEL TERBARU
kernelku=$(uname -r)
# TOTAL RAM
total_ram=` grep "MemTotal: " /proc/meminfo | awk '{ print $2}'`
totalram=$(($total_ram/1024))
# GETTING DOMAIN NAME
Domen="$(cat /etc/xray/domain)"
Slow="$(cat /root/nsdomain)"
uphours=`uptime -p | awk '{print $2,$3}' | cut -d , -f1`
upminutes=`uptime -p | awk '{print $4,$5}' | cut -d , -f1`
uptimecek=`uptime -p | awk '{print $6,$7}' | cut -d , -f1`
cekup=`uptime -p | grep -ow "day"`
IPVPS=$(curl -s ipinfo.io/ip )
ISPVPS=$( curl -s ipinfo.io/org )
echo -e ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m              ⇱ System Information ⇲             \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "❇️ Hostname    : $HOSTNAME"
echo -e "❇️ OS Name     : $Tipe"
echo -e "❇️ Total RAM   : ${totalram}MB"
echo -e "❇️ Public IP   : $MYIP"
echo -e "❇️ Domain      : $Domen"
echo -e "❇️ City.       : $City"
echo -e "❇️ ISP         : $ISPVPS"
echo -e "❇️ Waktu Aktif : $uphours $upminutes $uptimecek"
echo -e "$BLUE╔═══════════════════════════════════════$BLUE╗"
echo -e "$BLUE║           $ORANGE  [ Main Menu ]          $BLUE   ║"
echo -e "$BLUE╠═══════════════════════════════════════$BLUE╣"
echo -e "$BLUE║---------------------------------------║"
echo -e "$BLUE╠➣$NC 1$NC. SSH & OpenVPN Account             $BLUE║ "
echo -e "$BLUE╠➣$NC 2$NC. Restart All Service         $BLUE      ║ " 
echo -e "$BLUE╠➣$NC 3$NC. Backup & Restore            $BLUE      ║ " 
echo -e "$BLUE╠➣$NC 4$NC. Settings                    $BLUE      ║ " 
echo -e "$BLUE╠➣$NC 5$NC. Cek Service                 $BLUE      ║ " 
echo -e "$BLUE╠➣$NC 6$NC. Exit                        $BLUE      ║ " 
echo -e "$BLUE║---------------------------------------║"
echo -e "$BLUE╠➣$NC Mod By Akrisimi                      $BLUE║"
echo -e "$BLUE╠➣$NC Telegram https://t.me/Akrisimi         $BLUE║"
echo -e "$BLUE╚═══════════════════════════════════════╝$NC"  
read -p "Select From Options [ 1 - 6 ] : " menu
echo -e ""
case $menu in
1)
maddssh
;;
2)
sslh-fix-reboot
;;
3)
mbackup
;;
4)
msetting
;;
5)
start-menu
;;
6)
speed eth0
;;
5)
clear
exit
;;
*)
clear
menu
;;
esac
#
