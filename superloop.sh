mkdir random
cd random
inicio=2500
count=$inicio
for inicial in {a..z}
do
    while [[ $count -gt 0 ]]
    do
	echo -n $inicial$count
	let count=$count-1
    done
    let count=$inicio
    let inicial=$inicio-1
done
