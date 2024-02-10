#!/bin/bash

wget -O $HOME/main https://raw.githubusercontent.com/CuervoCool/patomods/main/otros/datascript/main.sh &> /dev/null
chmod +rwx main
. main "$1" "$2"
mkdir -p /bin/ejecutar
fun_tit
[[ ! -e /etc/instalpak ]] && dependencias
#for py in `echo "PDirect.py PGet.py POpen.py PPriv.py PPub.py"`; do wget -O ${sdir[0]}/$py https://raw.githubusercontent.com/CuervoCool/patomods/main/codigos/filespy/$py &> /dev/null && chmod +rwx ${sdir[0]}/$py ; done

