#!/bin/bash
#
function findprime() {
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
	echo $i is prime 
	done
}
findprime $1 
#findprime 600851475143
           
echo factors for $1
echo ${divisors[@]}	



