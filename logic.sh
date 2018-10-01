#Script para el ejercicio Logic and If/else
#

echo "iniciando el programa"

vocal=$(echo $1 | egrep ^[A-Z] || echo "nada")
echo "parámetro:"$1
if [[ $vocal != "nada" ]]
then
    echo "La frase era lo que esperaba."
else
    echo "Mal!!!. No tienes una mayúscula inicial en " $1
fi