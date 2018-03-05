#!/bin/bash

sum=0
sumex=0
i=0

while [ $i -lt 100 ];
 	do
		i=$(( $i + 1)) 
		sum=$(($sum + $i ))
		sumex=$(( $i * $i + $sumex ))

	done 
echo sum $sum
echo sumex $sumex
echo $(($sum * $sum - $sumex))
