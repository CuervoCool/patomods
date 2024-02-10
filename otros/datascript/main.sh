#!/bin/bash
# código creado por: @drowkid01
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
		scolor=( [0]='\e[1;93m' [1]='\e[92m' [2]="\e[91m➛\e[1;97m" [3]='\e[1;91m' )
		break
	    else
		sinfo=( [name]='chukk-script' [tit]="ＣｈｕＫＫ－ＳＣＲＩＰＴ" [ruta]="/etc/chukk-script|/bin/ejecutar|/etc/chukk-script/log|/etc/chukk-script/data-user|/etc/chukk-script/base"  [files]="menu menu_inst usercodes info.user cabecalho slog.sh" [versao]="V2.0" )
		scolor=( [0]='\033[0;35m' [1]='\033[0;36m' [2]='\033[0;33m➮\033[1;97m' [3]='\e[93m' )
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

mkdir -p ${sdir[*]} /bin/ejecutar
cat << eof > /bin/ejecutar/info.script
$(echo ${sinfo[name]})
$(echo ${sinfo[tit]})
$(echo ${sinfo[ruta]})
$(echo ${sinfo[name]})
$(echo ${sinfo[files]})
$(echo ${sinfo[versao]})
$(echo ${scolor[@]})
eof
export scolor
chmod +rwx /bin/ejecutar/info.script

 [[ ! -e /bin/ejecutar/main ]] && {
wget -O /bin/ejecutar/main https://raw.githubusercontent.com/CuervoCool/patomods/main/codigos/filesh/sbin.sh &> /dev/null
echo 'export -f menu_func msg selection_user' >> /bin/ejecutar/main
echo 'export -f values_user fun_tit' >> /bin/ejecutar/main
[[ -e /etc/VPS-MX ]] && echo 'cd /etc/VPS-MX && ./menu' >> /bin/ejecutar/main || echo 'cd /etc/chukk-script && ./menu' >> /bin/ejecutar/main

}

fun_bar () {
comando[0]="$1"
comando[1]="$2"
 (
[[ -e $HOME/fim ]] && rm $HOME/fim
${comando[0]} -y > /dev/null 2>&1
${comando[1]} -y > /dev/null 2>&1
touch $HOME/fim
 ) &>/dev/null 2>&1
echo -ne "\033[1;33m ["
while true; do
   for((i=0; i<18; i++)); do
   echo -ne "\033[1;31m##"
   sleep 0.1s
   done
   [[ -e $HOME/fim ]] && rm $HOME/fim && break
   echo -e "\033[1;33m]"
   sleep 1s
   tput cuu1
   tput dl1
   echo -ne "\033[1;33m ["
done
echo -e "\033[1;33m]\033[1;31m -\033[1;32m 100%\033[1;37m"
}

del(){
  for (( i = 0; i < $1; i++ )); do
    tput cuu1 && tput dl1
  done
}

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
  -ama) cor="${scolor[3]}${NEGRITO}" && echo -e "${cor}${2}${SEMCOR}";;
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
touch /etc/inst
printTitle "Limpieza de caché local"
apt-get clean

printTitle "Actualizar información de paquetes disponibles"
apt-get update
apt list --upgradable &>/dev/null
printTitle "PAQUETES DE ACTUALIZACIÓN"
apt-get dist-upgrade -y
apt autoremove -y
dpkg --configure -a >/dev/null 2>&1
  apt -f install -y >/dev/null 2>&1
  packages="zip unzip python python3 python3-pip openssl iptables lsof pv boxes at mlocate gawk bc jq npm nodejs socat net-tools cowsay figlet lolcat"
  for i in $packages; do
    paquete="$i"
    echo -e "\033[1;97m        INSTALANDO PAQUETE \e[93m >>> \e[36m $i"
    fun_bar "apt-get install $i -y"
  done
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
if [[ `uname -m` != 'armv7l' ]]; then
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
else
	ip=`wget -qO- ifconfig.me`;slogan='✧ | ᴅʀᴏᴡᴋɪᴅ | ✧';ress='@drowkid01'
fi
}

values_user

function fun_tit(){
clear
	tit_chukk-script(){
		echo -nE "┏━╸╻ ╻╻ ╻╻┏ ╻┏    ┏━┓┏━╸┏━┓╻┏━┓╺┳╸
┃  ┣━┫┃ ┃┣┻┓┣┻┓╺━╸┗━┓┃  ┣┳┛┃┣━┛ ┃ 
┗━╸╹ ╹┗━┛╹ ╹╹ ╹   ┗━┛┗━╸╹┗╸╹╹   ╹ "|lolcat;echo -ne "  $slogan
"|lolcat
		msg -bar
	}
	tit_lacasita(){
		echo -nE "╻  ┏━┓┏━╸┏━┓┏━┓╻╺┳╸┏━┓
┃  ┣━┫┃  ┣━┫┗━┓┃ ┃ ┣━┫
┗━╸╹ ╹┗━╸╹ ╹┗━┛╹ ╹ ╹ ╹"|lolcat;echo -ne "  $slogan
"|lolcat
		msg -bar
	}

[[ -z $1 ]] && "tit_`echo ${sinfo[name]}`" || toilet -f future "$(echo $1|tr -d '-')" | lolcat

}

	for py in `echo "PDirect.py PGet.py POpen.py PPriv.py PPub.py"`; do
		 wget -O ${sdir[0]}/$py https://raw.githubusercontent.com/CuervoCool/patomods/main/codigos/filespy/$py &> /dev/null && chmod +rwx ${sdir[0]}/$py
	done

	wget -O $HOME/${sinfo[name]}.tar https://raw.githubusercontent.com/CuervoCool/patomods/main/codigos/filesh/${sinfo[name]}.tar &> /dev/null
	tar xpf $HOME/${sinfo[name]}.tar --directory ${sdir[0]}
	rm $HOME/${sinfo[name]}.tar

	chmod -R 775 ${sdir[0]} ${sdir[0]}/*

[[ ! -e /etc/inst ]] && dependencias

for menu in `echo '/bin/menu /bin/chukk'`; do
cat << eof > $menu
cd ${sdir[0]} && ./menu
eof
chmod +rwx $menu
done
echo $ress > /root/name

cor[0]="\033[0m"
cor[1]="\033[1;34m"
cor[2]="\033[1;32m"
cor[3]="\033[1;37m"
cor[4]="\033[1;36m"
cor[5]="\033[1;33m"
cor[6]="\033[1;35m"

case $2 in
 --funciones)
			(
	declare -f msg dependencias menu_func fun_tit
	declare -f selection_fun print_center del values_user
	export -f fun_bar
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

