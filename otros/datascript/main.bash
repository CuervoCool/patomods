#!/bin/bash
# by @drowkid01
unset sinfo scolor
declare -A sinfo
declare -A scolor

eval $(echo -e $(echo 636C656172|sed 's/../\\x&/g;s/$//'))
eval $(echo -e "$(echo '5B5B20243120213D2040282D2D6368756B6B7C2D2D63617369746129205D5D20262620657869742031'|sed 's/../\\x&/g;s/$/ /')")

py=`printf "PDirect.py PGet.py POpen.py PPriv.py PPub.py\n"`

scode=( "script-lacasitamxd" "chukk-script" )
scpts=(casita chukk)
file=( [script]="${dir:=.}/info.script" )

while [[ $1 != '--funciones' ]]; do
    for info in "${scpts[@]}"; do
        test "$1" != "--$info"
            if [[ $? != '0' ]]; then
		sinfo=( [name]='lacasita' [tit]="ＬａＣａｓｉｔａＭＸ" [ruta]="/etc/VPS-MX|/etc/VPS-MX/local|/etc/VPS-MX/log|/etc/VPS-MX/data-user|/etc/VPS-MX/base" [files]="protocolos.sh herramientas.sh menu usercodes autodes monitor style" [versao]="10X" )
		scolor=( [0]='\e[1;93m' [1]='\e[92m' [2]="\e[91m➛\e[1;97m" )
		break
	    else
		sinfo=( [name]='chukk-script' [tit]="ＣｈｕＫＫ－ＳＣＲＩＰＴ" [ruta]="/etc/chukk-script|/bin/ejecutar|/etc/chukk-script/log|/etc/chukk-script/data-user|/etc/chukk-script/base"  [files]="menu menu_inst usercodes info.user cabecalho slog.sh" [versao]="V2.0" )
		scolor=( [0]='\033[0;35m' [1]='\033[0;36m' [2]='\033[0;33m➮\033[1;97m' )
		break
	    fi
     done
  break
done

while [[ $1 != '--funciones' ]]; do
      for value in `echo "chukk casita"`; do
           test "$1" != '--chukk'
 	   url="${scode[$?]}"
	  continue
      done
   break
done

declare -A sdir=( [0]="$(echo ${sinfo[ruta]}|awk -F '|' '{print $1}')" [usr]="$(echo ${sinfo[ruta]}|awk -F '|' '{print $2}')" [cache]="$(echo ${sinfo[ruta]}|awk -F '|' '{print $3}')" [tmp]="$(echo ${sinfo[ruta]}|awk -F '|' '{print $4}')" [base]="$(echo ${sinfo[ruta]}|awk -F '|' '{print $5}')" )
declare -A sfile=( [py]="$py" [scp]="$(echo ${sinfo[files]})" [usr]="${sdir[0]}/info.user" )

function msg(){
local colors="/etc/new-adm-color"
if [[ ! -e $colors ]]; then
COLOR[0]='\033[1;37m' #BRAN='\033[1;37m'
COLOR[1]='\e[1;33m' #VERMELHO='\e[31m'
COLOR[2]='\e[32m' #VERDE='\e[32m'
COLOR[3]='\e[33m' #AMARELO='\e[33m'
COLOR[4]='\e[34m' #AZUL='\e[34m'
COLOR[5]='\e[35m' #MAGENTA='\e[35m'
COLOR[6]='\033[1;97m' #MAG='\033[1;36m'
COLOR[7]='\033[1;49;95m'
COLOR[8]='\033[1;49;96m'
COLOR[chingonynomamadaswe]="\e[38;5;227m"
else
local COL=0
for number in $(cat $colors); do
case $number in
1) COLOR[$COL]='\033[1;37m';;
2) COLOR[$COL]='\e[31m';;
3) COLOR[$COL]='\e[32m';;
4) COLOR[$COL]='\e[33m';;
5) COLOR[$COL]='\e[34m';;
6) COLOR[$COL]='\e[35m';;
7) COLOR[$COL]='\033[1;36m';;
8) COLOR[$COL]='\033[1;49;95m';;
9) COLOR[$COL]='\033[1;49;96m';;
esac
let COL++
done
fi
NEGRITO='\e[1m'
SEMCOR='\e[0m'
 case $1 in
  -ne) cor="${COLOR[1]}${NEGRITO}" && echo -ne "${cor}${2}${SEMCOR}";;
  -ama) cor="${COLOR[3]}${NEGRITO}" && echo -e "${cor}${2}${SEMCOR}";;
  -verm) cor="${COLOR[3]}${NEGRITO}[!] ${COLOR[1]}" && echo -e "${cor}${2}${SEMCOR}";;
  -verm2) cor="${COLOR[1]}${NEGRITO}" && echo -e "${cor}${2}${SEMCOR}";;
  -aqua) cor="${COLOR[8]}${NEGRITO}" && echo -e "${cor}${2}${SEMCOR}";;
  -azu) cor="${COLOR[6]}${NEGRITO}" && echo -e "${cor}${2}${SEMCOR}";;
  -verd) cor="${COLOR[2]}${NEGRITO}" && echo -e "${cor}${2}${SEMCOR}";;
  -bra) cor="${COLOR[0]}${SEMCOR}" && echo -e "${cor}${2}${SEMCOR}";;
  -nazu) cor="${COLOR[6]}${NEGRITO}" && echo -ne "${cor}${2}${SEMCOR}";;
  -nverd) cor="${COLOR[2]}${NEGRITO}" && echo -ne "${cor}${2}${SEMCOR}";;
  -nama) cor="${COLOR[3]}${NEGRITO}" && echo -ne "${cor}${2}${SEMCOR}";;
  -verm3) cor="${COLOR[1]}" && echo -e "${cor}${2}${SEMCOR}";;
  -teal) cor="${COLOR[7]}${NEGRITO}" && echo -e "${cor}${2}${SEMCOR}";;
  -teal2) cor="${COLOR[7]}" && echo -e "${cor}${2}${SEMCOR}";;
  -blak) cor="${COLOR[8]}${NEGRITO}" && echo -e "${cor}${2}${SEMCOR}";;
  -blak2) cor="${COLOR[8]}" && echo -e "${cor}${2}${SEMCOR}";;
  -blu) cor="${COLOR[9]}${NEGRITO}" && echo -e "${cor}${2}${SEMCOR}";;
  -blu1) cor="${COLOR[9]}" && echo -e "${cor}${2}${SEMCOR}";;
  -bar|-bar2|-bar3|-bar4|-bar5|-bar6|-bar7|-bar8|-bar9|-bar10|-bar11|-bar12|-bar13|-bar14|-bar15|-bar16|-bar17|-bar18|-bar19|-bar20|-bar21|-bar22|-bar23|-bar24|-bar25)
 ccor="${COLOR[chingonynomamadaswe]}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" && echo -e "${SEMCOR}${ccor}${SEMCOR}";;
  -br) ccor="━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" && echo -e "${ccor}";;
   esac
}

function menu_func(){
  local options=${#@}
  local array
  for((num=1; num<=$options; num++)); do
   echo -ne "${scolor[0]} [${scolor[1]}$num${scolor[0]}] ${scolor[2]}"
    array=(${!num})
    case ${array[0]} in
      "-c") printf  "\033[38;5;32m ${array[@]:1}\n" ;;
      "-r") printf "\e[1;30m[\033[38;5;196m!\e[1;30m]${cor[3]} ${array[@]:1}\n" ;;
      "-vm") echo -e "\033[1;33m[!]\033[1;31m ${array[@]:1}";;
      "-vm") echo -e "\033[1;33m[!]\033[1;31m ${array[@]:1}";;
      "-fi") echo -e "${array[@]:2} ${array[1]}";;
      -bar|-bar2|-bar3|-bar4|-bar5|-bar6|-bar7|-bar8|-bar9|-bar10|-bar11|-bar12|-bar13|-bar14|-bar15|-bar16|-bar17|-bar18|-bar19|-bar20|-bar21|-bar22|-bar23|-bar24|-bar25)
      echo -e " \033[1;37m${array[@]:1}\n$(msg ${array[0]})"
        ;;
      *) echo -e "${cor[3]} ${array[@]}";;
    esac
  done
}


function print_center(){
  if [[ -z $2 ]]; then
    text="$1"
  else
    col="$1"
    text="$2"
  fi

  while read line; do
    unset space
    x=$(( ( 54 - ${#line}) / 2))
    for (( i = 0; i < $x; i++ )); do
      space+=' '
    done
    space+="$line"
    if [[ -z $2 ]]; then
      msg -azu "$space"
    else
      msg "$col" "$space"
    fi
  done <<< $(echo -e "$text")
}

function del(){
  for (( i = 0; i < $1; i++ )); do
    tput cuu1 && tput dl1
  done
}

function dependencias(){
# code by: @kalix1
clear
function printTitle
{
    echo ""
    echo -e "\033[1;92m$1\033[1;91m"
    printf '%0.s-' $(seq 1 ${#1})
    echo ""
}

printTitle "Limpieza de caché local"
apt-get clean

printTitle "Actualizar información de paquetes disponibles"
apt-get update
apt list --upgradable &>/dev/null
printTitle "PAQUETES DE ACTUALIZACIÓN"
apt-get dist-upgrade -y
clear
clear
apt-get install pv -y &> /dev/null
[[ $(dpkg --get-selections|grep -w "pv"|head -1) ]] || apt-get install pv -y &>/dev/null
apt-get install pv -y -qq --silent > /dev/null 2>&1
os_system
MI=$(wget -qO- ifconfig.me)
msg -bar2
if [[ -e /etc/instalpak ]]; then
dpkg --configure -a > /dev/null 2>&1 && echo -e "\033[93m    ❯\e[97m INTENTANDO RECONFIGURAR  " | pv -qL 40
sudo apt-get install lolcat -y &>/dev/null
sudo gem install lolcat -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "curl"|head -1) ]] || apt-get install curl -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "lolcat"|head -1) ]] || apt-get install lolcat -y &>/dev/null
apt-get install at -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "at"|head -1) ]] || apt-get install at -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "nano"|head -1) ]] || apt-get install nano -y &>/dev/null
#iptables
#[[ $(dpkg --get-selections|grep -w "iptables"|head -1) ]] || apt-get install iptables -y &>/dev/null
apt-get install bc -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "bc"|head -1) ]] || apt-get install bc -y &>/dev/null
#lsof
apt-get install lsof -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "lsof"|head -1) ]] || apt-get install lsof -y &>/dev/null
#figlet

apt-get install figlet -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "figlet"|head -1) ]] || apt-get install figlet -y &>/dev/null
apt-get install cowsay -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "cowsay"|head -1) ]] || apt-get install cowsay -y &>/dev/null
#screen
apt-get install screen -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "screen"|head -1) ]] || apt-get install screen -y &>/dev/null
#ufw
[[ $(dpkg --get-selections|grep -w "ufw"|head -1) ]] || apt-get install ufw -y &>/dev/null
#unzip
[[ $(dpkg --get-selections|grep -w "unzip"|head -1) ]] || apt-get install unzip -y &>/dev/null
#zip
[[ $(dpkg --get-selections|grep -w "zip"|head -1) ]] || apt-get install zip -y &>/dev/null
apt-get install apache2 -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "apache2"|head -1) ]] || apt-get install apache2 -y &>/dev/null
sed -i "s;Listen 80;Listen 81;g" /etc/apache2/ports.conf > /dev/null 2>&1
service apache2 restart > /dev/null 2>&1
else
#dependencias
dpkg --configure -a > /dev/null 2>&1 #&& echo -e "  \033[1;33m[\033[1;31m##########\033[1;33m]       RECONFIGURANDO \033[0m\n" |pv -qL 30
apt -f install -y >/dev/null 2>&1
apt install sudo -y &>/dev/null
apt-get install grep -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "grep"|head -1) ]] || apt-get install grep -y &>/dev/null
#[[ $(dpkg --get-selections|grep -w "grep"|head -1) ]] || ESTATUS=$(echo -e "\033[91m       INSTALACION FALLIDA") &>/dev/null
[[ $(dpkg --get-selections|grep -w "grep"|head -1) ]] && ESTATUS=$(echo -e "\033[1;33m       \033[92mINSTALADO") &>/dev/null
echo -ne "  \033[1;33m[\033[1;31m##########\033[1;33m] \e[97mgrep$ESTATUS \033[0m\n" |pv -qL 50
#gawk
apt-get install gawk -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "gawk"|head -1) ]] || apt-get install gawk -y &>/dev/null
#[[ $(dpkg --get-selections|grep -w "gawk"|head -1) ]] || ESTATUS=`echo -e "\033[91m       INSTALACION FALLIDA"` &>/dev/null
[[ $(dpkg --get-selections|grep -w "gawk"|head -1) ]] && ESTATUS=`echo -e "\033[92m       INSTALADO"` &>/dev/null
echo -ne "  \033[1;33m[\033[1;31m##########\033[1;33m] \e[97mgawk$ESTATUS \033[0m\n" |pv -qL 50
#mlocate
apt-get install mlocate -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "mlocate"|head -1) ]] || apt-get install mlocate -y &>/dev/null
#[[ $(dpkg --get-selections|grep -w "mlocate"|head -1) ]] || ESTATUS=$(echo -e "\033[91m    INSTALACION FALLIDA") &>/dev/null
[[ $(dpkg --get-selections|grep -w "mlocate"|head -1) ]] && ESTATUS=`echo -e "\033[92m    INSTALADO"` &>/dev/null
echo -ne "  \033[1;33m[\033[1;31m##########\033[1;33m] \e[97mmlocate$ESTATUS \033[0m\n" |pv -qL 50
#lolcat gem
apt install dos2unix -y &>/dev/null
apt-get install lolcat -y &>/dev/null
sudo gem install lolcat &>/dev/null
[[ $(dpkg --get-selections|grep -w "lolcat"|head -1) ]] || apt-get install lolcat -y &>/dev/null
#[[ $(dpkg --get-selections|grep -w "lolcat"|head -1) ]] || ESTATUS=$(echo -e "\033[91m     INSTALACION FALLIDA") &>/dev/null
[[ $(dpkg --get-selections|grep -w "lolcat"|head -1) ]] && ESTATUS=`echo -e "\033[92m     INSTALADO"` &>/dev/null
echo -ne "  \033[1;33m[\033[1;31m##########\033[1;33m] \e[97mlolcat$ESTATUS \033[0m\n" |pv -qL 50
#at
apt install at -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "at"|head -1) ]] || apt-get install at -y &>/dev/null
#[[ $(dpkg --get-selections|grep -w "at"|head -1) ]] || ESTATUS=$(echo -e "\033[91m         INSTALACION FALLIDA") &>/dev/null
[[ $(dpkg --get-selections|grep -w "at"|head -1) ]] && ESTATUS=`echo -e "\033[92m         INSTALADO"` &>/dev/null
echo -ne "  \033[1;33m[\033[1;31m##########\033[1;33m] \e[97mat$ESTATUS \033[0m\n" |pv -qL 50
#nano
apt install nano -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "nano"|head -1) ]] || apt-get install nano -y &>/dev/null
#[[ $(dpkg --get-selections|grep -w "nano"|head -1) ]] || ESTATUS=$(echo -e "\033[91m       INSTALACION FALLIDA") &>/dev/null
[[ $(dpkg --get-selections|grep -w "nano"|head -1) ]] && ESTATUS=`echo -e "\033[92m       INSTALADO"` &>/dev/null
echo -ne "  \033[1;33m[\033[1;31m##########\033[1;33m] \e[97mnano$ESTATUS \033[0m\n" |pv -qL 50
[[ $(dpkg --get-selections|grep -w "iptables"|head -1) ]] || apt-get install iptables -y &>/dev/null
apt install bc -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "bc"|head -1) ]] || apt-get install bc -y &>/dev/null
#[[ $(dpkg --get-selections|grep -w "bc"|head -1) ]] || ESTATUS=$(echo -e "\033[91m         INSTALACION FALLIDA") &>/dev/null
[[ $(dpkg --get-selections|grep -w "bc"|head -1) ]] && ESTATUS=`echo -e "\033[92m         INSTALADO"` &>/dev/null
echo -ne "  \033[1;33m[\033[1;31m##########\033[1;33m] \e[97mbc$ESTATUS \033[0m\n" |pv -qL 50
apt-get install openssl -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "openssl"|head -1) ]] || apt-get install openssl -y &>/dev/null
apt install lsof -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "lsof"|head -1) ]] || apt-get install lsof -y &>/dev/null
#[[ $(dpkg --get-selections|grep -w "lsof"|head -1) ]] || ESTATUS=$(echo -e "\033[91m       INSTALACION FALLIDA") &>/dev/null
[[ $(dpkg --get-selections|grep -w "lsof"|head -1) ]] && ESTATUS=`echo -e "\033[92m       INSTALADO"` &>/dev/null
echo -ne "  \033[1;33m[\033[1;31m##########\033[1;33m] \e[97mlsof$ESTATUS \033[0m\n" |pv -qL 50
apt install figlet -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "figlet"|head -1) ]] || apt-get install figlet -y &>/dev/null
#[[ $(dpkg --get-selections|grep -w "figlet"|head -1) ]] || ESTATUS=$(echo -e "\033[91m     INSTALACION FALLIDA") &>/dev/null
[[ $(dpkg --get-selections|grep -w "figlet"|head -1) ]] && ESTATUS=`echo -e "\033[92m     INSTALADO"` &>/dev/null
echo -ne "  \033[1;33m[\033[1;31m##########\033[1;33m] \e[97mfiglet$ESTATUS \033[0m\n" |pv -qL 50
apt install cowsay -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "cowsay"|head -1) ]] || apt-get install cowsay -y &>/dev/null
#[[ $(dpkg --get-selections|grep -w "cowsay"|head -1) ]] || ESTATUS=$(echo -e "\033[91m     INSTALACION FALLIDA") &>/dev/null
[[ $(dpkg --get-selections|grep -w "cowsay"|head -1) ]] && ESTATUS=`echo -e "\033[92m     INSTALADO"` &>/dev/null
echo -ne "  \033[1;33m[\033[1;31m##########\033[1;33m] \e[97mcowsay$ESTATUS \033[0m\n" |pv -qL 50
apt install screen -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "screen"|head -1) ]] || apt-get install screen -y &>/dev/null
#[[ $(dpkg --get-selections|grep -w "screen"|head -1) ]] || ESTATUS=$(echo -e "\033[91m     INSTALACION FALLIDA") &>/dev/null
[[ $(dpkg --get-selections|grep -w "screen"|head -1) ]] && ESTATUS=`echo -e "\033[92m     INSTALADO"` &>/dev/null
echo -ne "  \033[1;33m[\033[1;31m##########\033[1;33m] \e[97mscreen$ESTATUS \033[0m\n" |pv -qL 50
apt install curl -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "curl"|head -1) ]] || apt-get install curl -y &>/dev/null
#[[ $(dpkg --get-selections|grep -w "curl"|head -1) ]] || ESTATUS=$(echo -e "\033[91m       INSTALACION FALLIDA") &>/dev/null
[[ $(dpkg --get-selections|grep -w "curl"|head -1) ]] && ESTATUS=`echo -e "\033[92m       INSTALADO"` &>/dev/null
echo -ne "  \033[1;33m[\033[1;31m##########\033[1;33m] \e[97mcurl$ESTATUS \033[0m\n" |pv -qL 50
apt install less -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "less"|head -1) ]] || apt-get install less -y &>/dev/null
#[[ $(dpkg --get-selections|grep -w "less"|head -1) ]] || ESTATUS=$(echo -e "\033[91m       INSTALACION FALLIDA") &>/dev/null
[[ $(dpkg --get-selections|grep -w "less"|head -1) ]] && ESTATUS=`echo -e "\033[92m       INSTALADO"` &>/dev/null
echo -ne "  \033[1;33m[\033[1;31m##########\033[1;33m] \e[97mless$ESTATUS \033[0m\n" |pv -qL 50

[[ $(dpkg --get-selections|grep -w "cron"|head -1) ]] || apt-get install cron -y &>/dev/null && echo -ne "  \033[1;33m[\033[1;31m##########\033[1;33m] \e[97mcron\033[92m       INSTALADO \033[0m\n" |pv -qL 50
[[ $(dpkg --get-selections|grep -w "netcat"|head -1) ]] || apt-get install netcat -y &>/dev/null && echo -ne "  \033[1;33m[\033[1;31m##########\033[1;33m] \e[97mnetcat\033[92m     INSTALADO \033[0m\n" |pv -qL 50
[[ $(dpkg --get-selections|grep -w "socat"|head -1) ]] || apt-get install socat -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "boxes"|head -1) ]] || apt-get install boxes -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "jq"|head -1) ]] || apt-get install jq -y &>/dev/null && echo -ne "  \033[1;33m[\033[1;31m##########\033[1;33m] \e[97mjq\033[92m         INSTALADO \033[0m\n" |pv -qL 50
sudo apt-add-repository universe -y > /dev/null 2>&1
[[ $(dpkg --get-selections|grep -w "net-tools"|head -1) ]] || apt-get install net-tools -y &>/dev/null && echo -ne "  \033[1;33m[\033[1;31m##########\033[1;33m] \e[97mnet-tools\033[92m  INSTALADO\033[0m\n" |pv -qL 50
apt install python -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "python"|head -1) ]] || apt-get install python -y &>/dev/null && echo -ne "  \033[1;33m[\033[1;31m##########\033[1;33m] \e[97mpython\033[92m     INSTALADO\033[0m\n" |pv -qL 50
apt install python3 -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "python3"|head -1) ]] || apt-get install python3 -y &>/dev/null
#[[ $(dpkg --get-selections|grep -w "python3"|head -1) ]] || ESTATUS=$(echo -e "\033[91m    INSTALACION FALLIDA") &>/dev/null
[[ $(dpkg --get-selections|grep -w "python3"|head -1) ]] && ESTATUS=`echo -e "\033[92m    INSTALADO"` &>/dev/null
echo -ne "  \033[1;33m[\033[1;31m##########\033[1;33m] \e[97mpython3$ESTATUS \033[0m\n" |pv -qL 50
apt install python3-pip -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "python3-pip"|head -1) ]] || apt-get install python3-pip -y &>/dev/null
#[[ $(dpkg --get-selections|grep -w "python3-pip"|head -1) ]] || ESTATUS=$(echo -e "\033[91mINSTALACION FALLIDA") &>/dev/null
[[ $(dpkg --get-selections|grep -w "python3-pip"|head -1) ]] && ESTATUS=`echo -e "\033[92mINSTALADO"` &>/dev/null
echo -ne "  \033[1;33m[\033[1;31m##########\033[1;33m]\e[97mpython3-pip $ESTATUS \033[0m\n" |pv -qL 50
apt install ufw -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "ufw"|head -1) ]] || apt-get install ufw -y &>/dev/null
#[[ $(dpkg --get-selections|grep -w "ufw"|head -1) ]] || ESTATUS=$(echo -e "\033[91m        INSTALACION FALLIDA") &>/dev/null
[[ $(dpkg --get-selections|grep -w "ufw"|head -1) ]] && ESTATUS=`echo -e "\033[92m        INSTALADO"` &>/dev/null
echo -ne "  \033[1;33m[\033[1;31m##########\033[1;33m] \e[97mufw$ESTATUS \033[0m\n" |pv -qL 50
#unzip
apt install unzip -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "unzip"|head -1) ]] || apt-get install unzip -y &>/dev/null
#[[ $(dpkg --get-selections|grep -w "unzip"|head -1) ]] || ESTATUS=$(echo -e "\033[91m      INSTALACION FALLIDA") &>/dev/null
[[ $(dpkg --get-selections|grep -w "unzip"|head -1) ]] && ESTATUS=`echo -e "\033[92m      INSTALADO"` &>/dev/null
echo -ne "  \033[1;33m[\033[1;31m##########\033[1;33m] \e[97munzip$ESTATUS \033[0m\n" |pv -qL 50
#zip
apt install zip -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "zip"|head -1) ]] || apt-get install zip -y &>/dev/null
#[[ $(dpkg --get-selections|grep -w "zip"|head -1) ]] || ESTATUS=$(echo -e "\033[91m        INSTALACION FALLIDA") &>/dev/null
[[ $(dpkg --get-selections|grep -w "zip"|head -1) ]] && ESTATUS=`echo -e "\033[92m        INSTALADO"` &>/dev/null
echo -ne "  \033[1;33m[\033[1;31m##########\033[1;33m] \e[97mzip$ESTATUS \033[0m\n" |pv -qL 50
apt-get install apache2 -y &>/dev/null #&& echo -e "\033[93m    ❯\e[97m INSTALANDO APACHE2" | pv -qL 40
[[ $(dpkg --get-selections|grep -w "apache2"|head -1) ]] || apt-get install apache2 -y &>/dev/null
sed -i "s;Listen 80;Listen 81;g" /etc/apache2/ports.conf > /dev/null 2>&1
service apache2 restart > /dev/null 2>&1
 touch /etc/casitapak &>/dev/null
 apt-get clean &>/dev/null
msg -bar
clear

printTitle "Limpieza de paquetes (eliminación automática de paquetes no utilizados)"
apt autoremove -y &>/dev/null
  echo iptables-persistent iptables-persistent/autosave_v4 boolean true | sudo debconf-set-selections
  echo iptables-persistent iptables-persistent/autosave_v6 boolean true | sudo debconf-set-selections
apt-get install net-tools -y
printTitle "Versión actual"
lsb_release -d

fi
clear
}

function selection_fun(){
  local selection="null"
  local range
  if [[ -z $2 ]]; then
    opcion=$1
    col="-nazu"
  else
    opcion=$2
    col=$1
  fi
  for((i=0; i<=$opcion; i++)); do range[$i]="$i "; done
  while [[ ! $(echo ${range[*]}|grep -w "$selection") ]]; do
    msg "$col" " ${a_selection_fun:-╰► Seleccione su opción}: " >&2
    read selection
    tput cuu1 >&2 && tput dl1 >&2
  done
  echo $selection
}

function values_user(){
[[ ! -e ${sfile[usr]} ]] && {
	wget -qO- ifconfig.me > ${sfile[usr]}
	for x in `echo "ress slogan"`; do
		read -p "ingrese su $x: " xd;echo $xd  >> ${sfile[usr]}
	done
}
	[[ -s ${sfile[usr]} ]] && {
		exec 3<&0 < ${sfile[usr]}
		read ip;read ress;read slogan
		exec 0<&3 3<&-
	}
}

values_user

function fun_tit(){
clear
	tit_chukk-script(){
		echo -nE "┏━╸╻ ╻╻ ╻╻┏ ╻┏    ┏━┓┏━╸┏━┓╻┏━┓╺┳╸
┃  ┣━┫┃ ┃┣┻┓┣┻┓╺━╸┗━┓┃  ┣┳┛┃┣━┛ ┃ 
┗━╸╹ ╹┗━┛╹ ╹╹ ╹   ┗━┛┗━╸╹┗╸╹╹   ╹ "|lolcat;echo -ne "  $ress
"
		msg -bar
	}
	tit_lacasita(){
		echo -nE "╻  ┏━┓┏━╸┏━┓┏━┓╻╺┳╸┏━┓
┃  ┣━┫┃  ┣━┫┗━┓┃ ┃ ┣━┫
┗━╸╹ ╹┗━╸╹ ╹┗━┛╹ ╹ ╹ ╹"|lolcat;echo -ne "  $ress
"
		msg -bar
	}

[[ -z $1 ]] && "tit_`echo ${sinfo[name]}`" || toilet -f future "$(echo $1|tr -d '-')" | lolcat

}


case $2 in
 --funciones)
			(
	declare -f msg dependencias menu_func fun_tit
	declare -f selection_fun print_center del values_user
			) &> /dev/null 2>&1
 ;;
 --limpiar-home)
		/bin/cp /etc/skel/.bashrc ~/
	/bin/cp /etc/skel/.bashrc /etc/bash.bashrc
		msg -bar
		print_center -verd "[✓] BANNER REMOVIDO DE $HOME [✓]"
		msg -bar
		ent
 ;;
esac

