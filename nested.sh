#!/usr/bin/env bash
# File: nested.sh
read numero
if [[ $numero -gt 3 ]] && [[ $numero -lt 7 ]]
then
  if [[ $numero -eq 4 ]]
  then
    echo "Cuatro"
  elif [[ $numero -eq 5 ]]
  then
    echo "Cinco"
  else
    echo "Seis"
  fi
else
  echo "Usted ingresó: $numero, No me lo esperaba."
fi

