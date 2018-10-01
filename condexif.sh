#!/usr/bin/env bash
# File: condexif.sh

if [[ $1 -gt 3 ]] && [[ $1 -lt 7 ]]
then
    echo "$1 is between 3 and 7"
elif [[ $1 =~ "Jeff" ]] || [[ $1 =~ "Roger" ]] || [[ $1 =~ "Fernan" ]]
then
    echo "$1 Me sive en el laboratorio de ciencia de datos"
else
    echo "Usted ha ingresado $1, esa vaina no es lo que buscábamos"
fi

