#!/bin/bash

wget -O $HOME/main https://raw.githubusercontent.com/CuervoCool/patomods/main/otros/datascript/main.sh &> /dev/null
chmod +rwx main
. main "$1" "$2"
fun_tit
dependencias
