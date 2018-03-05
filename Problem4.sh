#!/bin/bash
set -e 
function findprime() {
i=1
while [ $(( $i * $i )) -lt $1 ]
        do
                i=$(( $i + 1 )) #inc
                rem=$(( $1 % $i))
                monk=$(( $1 / $i)) 
		if [ $rem -eq 0 ]
                        then
                       
			 if [ ${#monk} -eq 3 ] 
				then
				echo booya! "$i * $monk = $1" 	
				exit 0
			fi
			divisors=("${divisors[@]}" "$i")
                        continue
                fi
        done
}


function findpally() {
p=998001

while [ $p -gt 1000 ]
        do
                p=$(( $p - 1 )) #inc
		flip=`echo $p |rev`
		if [ $p -eq $flip ] 
			then
				findprime $p
				echo $p:${divisors[@]}		
				unset divisors
				
		fi
        done
}

findpally











