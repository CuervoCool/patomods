#!/bin/bash
# by @drowkid01
declare -A sinfo

eval $(echo -e $(echo 636C656172|sed 's/../\\x&/g;s/$//'))
eval $(echo -e $(echo -e "5B5B20243120213D2040282D2D6368756B6B7C2D2D63617369746129205D5D20262620657869742031"|sed 's/../\\x&/g;s/$/ /'))

py=`printf "PDirect.py PGet.py POpen.py PPriv.py PPub.py\n"`

while :; do
    for info in `echo "chukk casita"`; do
        test "$1" != "--$info"
            [[ $? != '0' ]] && {
		sinfo=( [ruta]="/etc/VPS-MX" [files]="|$py|protocolos.sh herramientas.sh menu usercodes autodes monitor style sbackup info.user extras.sh slog.sh" )
		continue
	    } || {
		sinfo=( [ruta]="/etc/chukk-script" [files]="|$py|menu menu_inst usercodes info.user cabecalho slog.sh" )
		continue
	    }
     done
break
done
