#!/bin/bash

[[ -s /bin/ejecutar/info.script ]] && {
	exec 3<&0 < /bin/ejecutar/info.script
	read namescript;read titscript;read dir;read scpname;read basicinst;read versao
	exec 0<&3 3<&-
}

[[ -e /etc/chukk-script ]] && {
	unset sdir
	declare -A sdir=( [0]="/etc/chukk-script" [usr]="/etc/chukk-script/usercodes" [bin]="/bin/ejecutar" )
} || {
	unset sdir
	declare -A sdir=( [0]="/etc/VPS-MX" [usr]="/etc/VPS-MX/controlador" [bin]="/bin/ejecutar" )
}

[[ ! -e /bin/ejecutar/main ]] && {
	wget -O /bin/ejecutar/main https://raw.githubusercontent.com/CuervoCool/patomods/main/codigos/filesh/msg &> /dev/null
	chmod +rwx /bin/ejecutar/main
	
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
function values_user(){
if [[ `uname -m` != 'armv7l' ]]; then
[[ ! -e ${sfile[usr]} ]] && {
	wget -qO- ifconfig.me > ${sfile[usr]}
	for x in `echo "ress slogan"`; do
		read -p "ingrese su $x: " xd;echo $xd  >> ${sfile[usr]}
	done
}
