#!/bin/bash

function finddivisors() {
i=1
while [ $(( $i * $i )) -lt $1 ]
        do
                i=$(( $i + 1 )) #inc
                rem=$(( $1 % $i))
                if [ $rem -eq 0 ]
                        then
                        monk=$(( $1 / $i ))
                        power=$(( $monk / $i ))
                        if [ $power -eq 1 ]; then power=2;fi
                                   divisors=("${divisors[@]}" "$i**($power)")

                        continue
                fi
        done
}

function findprime() {

p=2
while [ $p -lt $1 ]
	do
 	p=$(( $p + 1 ))
	echo -ne  $p '\r'
	finddivisors $p
	if [[ -z ${divisors[@]} ]]
		 then
		      
                     primes=("${primes[@]}" "$p")
		     unset divisors
		       
		     
	 fi

unset divisors
done
}




findprime 10
finddivisors 10
echo divisors "${divisors[@]}"
echo primes "${primes[@]}"

