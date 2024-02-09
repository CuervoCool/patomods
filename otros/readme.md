# fonts
instalar paquetes.

```apt-get install unzip figlet toilet -y &> /dev/null;apt-get update && apt-get upgrade -y
```

descarga el zip.

```wget -O $HOME/fonts.zip https://raw.githubusercontent.com/CuervoCool/patomods/main/otros/fonts/fonts.zip &> /dev/null
unzip $HOME/fonts.zip --directory /usr/share/figlet
rm $HOME/fonts.zip
```

