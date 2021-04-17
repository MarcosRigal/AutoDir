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
clear
echo "Proceso finalizado con exito. El estado actual de su directorio es: "
tree