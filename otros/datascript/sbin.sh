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
