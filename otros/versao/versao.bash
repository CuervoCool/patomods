#!/bin/bash
# versión de cada mod.

scode=( "10X" "v2.0" )

while [ -n $1 ]; do
      for value in `echo "chukk casita"`; do
           test "$1" != '--chukk'
 	   versao="${scode[$?]}"
      done
   break
done

