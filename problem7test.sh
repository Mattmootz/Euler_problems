#!/bin/bash

function findprime() {
i=1
while [ $i -lt $i ]
        do
                i=$(( $i + 1 )) #inc
                rem=$(( $1 % $i))
                if [ $rem -eq 0 ]
                        then
                        monk=$(( $1 / $i ))
			power=$(( $monk / $i ))
				if [ $power -gt 0 ] 
				then
					if [ $power -eq 1 ]; then power=2;fi 
						divisors=("${divisors[@]}" "$i**($power)")
                			        	if [ $i -eq 2 ] 
								then 
									tnum=$(($i**($power)))
										if [ -z $twomax ]; then twomax=$tnum; fi 
										if [ $tnum -gt $twomax ]; then twomax=$tnum; fi
							fi
				
							if [ $i -eq 3 ]; 
								then 
					 				thnum=$(($i**($power)))
                                                                                if [ -z $threemax ]; then threemax=$thnum; fi
                                                                                if [ $thnum -gt $threemax ]; then threemax=$thnum; fi

							fi
				continue
                		fi
		fi
        done
}

function findlowest() {
l=1
while [ $l -lt $(( $1 - 1 )) ]
	do
		l=$(( $l + 1 ))
				
		findprime $l
		
		if [[ -z ${divisors[@]} ]] 
			then
                	primes=("${primes[@]}" "$l")		
		fi 
 
		unset divisors		
		
	done
}
findlowest 20
findlowest 1000

#remove 2 and 3 form primes
#this is done because we loop though the array and times everything.
product=$(( $twomax * $threemax ))

#for p in "${primes[@]}"
#	do
#			product=$(( $product * $p ))
#	done
#echo $product

