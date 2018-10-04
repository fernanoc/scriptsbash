#loop files

function files {
fl=$(ls -1 | wc -l)
echo $fl
}

count=0

while [[ $count -ne $(files) ]]
do
echo "ingrese un número de archivos"
read count
if [[ $count -gt $(files) ]]
    then
	echo 'El conteo es menor'
else
    if [[ $count -lt $(files) ]]
	then
		echo 'El conteo es mayor'
	fi
fi
done
echo -n "¡bien! en este directorio hay "
echo -n $(files) 
echo " archivos"

