#!/usr/bin/env bash
# File: addseq.sh

function addseq {
  sum=0

  for element in $@
  do
    let sum=sum+$element
  done

  echo $sum
}

#
#Write a function called plier which multiplies together a sequence of numbers.
function plier {
 multiply=1
 for element in $@
 do
    let multiply=$(echo "$multiply * $element" | bc -l)
    #echo "multiply * $element"
 done
 echo $multiply
}

#
#Write a function called isiteven that prints 1 if a number is even or 0 a number is not even.
function isiteven {
	if [[ $(expr $1 % 2) -eq 0 ]]
	then
		#Es par
		echo 1
	else
		#Es impar
		echo 0
	fi 
}

#
#Write a function called nevens which prints the number of even numbers when provided with a sequence of numbers.
#Use isiteven when writing this function.
function nevens {
	pares=0;
	impares=0;
	for nvs in $@
	do
		if [[ $(isiteven $nvs) -eq 1 ]]
		then
			let pares=$pares+1
		else
			if [[ $(isiteven $nvs) -eq 0 ]]
			then
				let impares=$impares+1
			fi
		fi
	done
	echo "impares: $impares"
	echo "pares  : $pares"
}


function howodd {
	cadenapar=" "
	for par in $@
	do
		cadenapar=$(echo "$cadenapar $par")
	done
	nevens $cadenapar
	echo -n "El porcentaje de impares es:"
	echo -n $(echo "100 * $impares / ( $pares + $impares )" | bc -l)
	echo "%"
}

function fib {
	pri=0
	seg=1
	fib=0
	cont=1
	if [[ $1 -gt 1 ]]
	then
		while [[ $cont -le $1 ]]
		do
			
			#echo -n "Iteración $seg:"
			#echo "$pri $seg $fib"
			echo -n "$fib " 
			let fib=$pri+$seg
			let seg=$pri
			let pri=$fib
			let cont=$cont+1
		done
		echo " "
	else
		if [[ $1 -eq 1 ]]
		then
			echo "El único número es 0"
		fi
	fi
}
