#!/bin/bash

rem=2
function domath() {
for i in {1..25}
do
 
m=$(( $i * $i + $1 * $1 ))
if [ $m -lt 1000 ]
then 
n=$(( 1000 - $m )) 
else
continue
fi 

rem=$( echo "scale=2;sqrt($n)"|bc )


	
		p=$(( $i + $1 ))
		echo Iplus1=$p srqt=$rem number=$1 
		if [ $p == $rem ] 
			then
			echo Boom!
			echo $i $1 $p 
		fi 

i=$(( $i + 1 ))
done 
}

for t in {1..25} 
do

domath $t 
t=$(( $t + 1))
done


	
