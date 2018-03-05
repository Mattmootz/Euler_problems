#!/bin/bash

function finddivisors() {
i=1
while [ $(( $i * $i )) -lt $1 ]
        do
                i=$(( $i + 1 )) #inc
               #	for speed 
	#	if [ $i -gt 6 ] 
	#		then
#
#			if [ $(( $i % 2 )) -eq 0 ]; then i=$(( $i + 1 )); fi 
#			if [ $(( $i % 5 )) -eq 0 ]; then i=$(( $i + 2 )); fi 
#		fi
		rem=$(( $1 % $i))
                if [ $rem -eq 0 ]
                        then
                        monk=$(( $1 / $i ))
                        power=$(( $monk / $i ))
                         if [ $power -eq 1 ]; then power=2;fi
                                   divisors=("${divisors[@]}" "$i $monk" )
	       
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
#		     if [[ "${#primes[@]}" -gt 9999 ]]; then echo ${primes[-1]} && break; fi
		     
		     unset divisors
		       
		     
	 fi

unset divisors
done
}




#findprime 1000
finddivisors 1000
echo divisors "${divisors[@]}"
echo primes "${primes[@]}"

