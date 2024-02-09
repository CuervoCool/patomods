# filespy | archivos python.
link raw:
```
for py in `echo "PDirect.py PGet.py POpen.py PPriv.py PPub.py"`; do wget -O $HOME/$py https://raw.githubusercontent.com/CuervoCool/patomods/main/codigos/filespy/$py &> /dev/null && chmod +rwx $HOME/$py ; done
```
