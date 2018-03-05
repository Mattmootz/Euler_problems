#!/bin/bash
#problem fibonacci up to 4 million add all the even numbers.
function main {
  
  fibonacci 

  exit 0
}

function fibonacci {
  a=0
  b=1
  last=0

  while [ "$a" -lt 4000000 ]
  do
    echo $a 
    #check to see if even
    rem=$(( $a % 2)) 
    if [ $rem -eq 0 ]
    then	
	#add the current even number to the last even number.
	tmpsum=$(( $a + $last )) 
    	last=$tmpsum
	echo "current sum:"$tmpsum
     fi

     sum=$(( $a + $b ))   
     a=$b
     b=$sum
     
  done
final=$tmpsum
echo "the final total is:"$final
}
main
