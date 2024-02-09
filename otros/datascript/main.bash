#!/bin/bash
# by @drowkid01
declare -A sinfo

eval $(echo -e $(echo 636C656172|sed 's/../\\x&/g;s/$//'))
eval $(echo -e $(echo -e "5B5B20243120213D2040282D2D6368756B6B7C2D2D63617369746129205D5D20262620657869742031"|sed 's/../\\x&/g;s/$/ /'))

py=`printf "PDirect.py PGet.py POpen.py PPriv.py PPub.py\n"`

scode=( "script-lacasitamxd" "chukk-script" )
scpts=(casita chukk)

file=( [script]="${dir:=.}/info.script" )

while [ ! -z $1 ]; do
    for info in "${scpts[@]}"; do
        test "$1" != "--$info"
            [[ $? != '0' ]] && {
		sinfo=( [name]="ＬａＣａｓｉｔａＭＸ" [ruta]="/etc/VPS-MX" [files]="|$py|protocolos.sh herramientas.sh menu usercodes autodes monitor style sbackup info.user extras.sh slog.sh" [versao]="10X" )
		continue
	    } || {
		sinfo=( [name]="ＣｈｕＫＫ－ＳＣＲＩＰＴ" [ruta]="/etc/chukk-script" [files]="|$py|menu menu_inst usercodes info.user cabecalho slog.sh" [versao]="V2.0" )
		continue
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
$(echo ${sinfo[files]})
$(echo "${sinfo[name]}")
$(echo "${sinfo[name]}")
$(echo "${sinfo[ruta]}")
$(echo "${versao}")
eof
