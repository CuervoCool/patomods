#!/bin/bash
# by @drowkid01
declare -A sinfo

eval $(echo -e $(echo 636C656172|sed 's/../\\x&/g;s/$//'))
eval $(echo -e $(echo -e "5B5B20243120213D2040282D2D6368756B6B7C2D2D63617369746129205D5D20262620657869742031"|sed 's/../\\x&/g;s/$/ /'))

py=`printf "PDirect.py PGet.py POpen.py PPriv.py PPub.py\n"`

scode=( "script-lacasitamxd" "chukk-script" )
scpts=(casita chukk)

file=( [script]="${dir:=.}/info.script" )

while :; do
    for info in "${scpts[@]}"; do
        test "$1" != "--$info"
            [[ $? != '0' ]] && {
		sinfo=( [name]="ＬａＣａｓｉｔａＭＸ" [ruta]="/etc/VPS-MX" [files]="$py|protocolos.sh herramientas.sh menu usercodes autodes monitor style sbackup info.user extras.sh slog.sh" [versao]="10X" )
		break
	    } || {
		sinfo=( [name]="ＣｈｕＫＫ－ＳＣＲＩＰＴ" [ruta]="/etc/chukk-script" [files]="$py|menu menu_inst usercodes info.user cabecalho slog.sh" [versao]="V2.0" )
		break
	    }
     done
break
done

while [ -n $1 ]; do
      for value in `echo "chukk casita"`; do
           test "$1" != '--chukk'
 	   url="${scode[$?]}"
      done
   break
done


cat << eof > ${file[script]}
$(echo "${sinfo[files]}")
$(echo "${sinfo[name]}")
$(echo "${sinfo[ruta]}")
$(echo "${url}")
eof

dependencias(){
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
rm -rf /usr/bin/vpsmxup
rm -rf lista-arq
rm -rf LACASITA.sh

printTitle "Limpieza de paquetes (eliminación automática de paquetes no utilizados)"
apt autoremove -y &>/dev/null
  echo iptables-persistent iptables-persistent/autosave_v4 boolean true | sudo debconf-set-selections
  echo iptables-persistent iptables-persistent/autosave_v6 boolean true | sudo debconf-set-selections
apt-get install net-tools -y
printTitle "Versión actual"
lsb_release -d

apt-get install curl -y
apt-get install lsof -y
apt-get install sudo -y
apt-get install figlet -y
apt-get install cowsay -y
apt-get install bc -y
apt-get install python -y
apt-get install at -y
apt-get install apache2 -y
sed -i "s;Listen 80;Listen 81;g" /etc/apache2/ports.conf
service apache2 restart
clear
clear
clear
msg -bar2
echo ""
echo -e "\e[91mESCOJER PRIMERO #All locales# Y LUEGO #en_US.UTF-8# \e[0m"
echo ""
sleep 7s
 export LANGUAGE=en_US.UTF-8\
   && export LANG=en_US.UTF-8\
   && export LC_ALL=en_US.UTF-8\
   && export LC_CTYPE="en_US.UTF-8"\
   && locale-gen en_US.UTF-8\
   && sudo apt-get -y install language-pack-en-base\
   && sudo dpkg-reconfigure locales

fi
clear
}
