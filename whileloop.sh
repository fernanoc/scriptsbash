#Curso de bash While loop

count=6

while [[ $count -gt 0 ]]
do
	echo 'El conteo es igual a '$count
	let count=$count-1
done

