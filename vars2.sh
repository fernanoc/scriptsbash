#!/usr/bin/env bash
# File: vars.sh
echo "Argumentos recibidos: $@"
echo "Primer arg: $1. Segundo arg: $2."
echo "Número de argumentos: $#"
suma=$(expr $1 + $2)
echo "La suma de los dos primeros argumentos es $suma"
echo "La multiplicacion del primer argmento por cantidad es $(expr $1 \* $#)"
