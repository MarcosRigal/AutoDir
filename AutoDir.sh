#!/bin/bash
read -p "Introduzca el número de carpetas que desea crear: " numero
read -p "Introduzca la extenstion del archivo que se incluirá en la carpeta: " extension
i=0
while [ $i -lt $numero ]; 
do
    let i+=1
    mkdir E$i
    cd E$i
    touch E$i.$extension
    if [ $extension == "sh" ]
    then
        chmod u+x E$i.sh
    fi
    cd ..
done
#ls -R | grep ":$" | perl -pe 's/:$//;s/[^-][^\/]*\//    /g;s/^    (\S)/└── \1/;s/(^    |    (?= ))/│   /g;s/    (\S)/└── \1/'
#falta que imprima los ficheros