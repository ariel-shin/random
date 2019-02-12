#!/bin/bash

if [ $# -lt 3 ]; then
  echo 1>&2 "$0: not enough arguments"
  exit 2
elif [ $# -gt 3 ]; then
  echo 1>&2 "$0: too many arguments"
  exit 2
fi
x
# read IP into array
IFS='.' read -ra ADDR <<< "$1"

#outer for loop of range specified in arg 2 and 3
for i in $(seq $2 $3); 
	do
	#inner for loop to print out each ip section 
	for ((j = 0; j < ${#ADDR[*]}; ++j)); do
		#index of ip section 
		position=$(( $j + 1 ))

		# if ip section contains i, print out outer loop index
		if [[ ${ADDR[$j]} == *"i"* ]]; then
    		echo -ne "$i."

	    # last element doesn't need a .
	    elif [[ $position == $(( ${#ADDR[*]} )) ]]; then
	    	echo -ne "${ADDR[$j]}"

	    # every other element
		else echo -ne "${ADDR[$j]}."

		fi
	done
	# new line 
	echo "" 
done

