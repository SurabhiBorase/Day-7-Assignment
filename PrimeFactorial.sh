#!/bin/bash

# Extend the Prime Factorization Program to store all the Prime Factors of a
# number n into an array and finally display the output.

read -p "Enter  any number :" n
echo $n;


for (( i=1; $i<$n; i++ ))
do
	if (( $n % $i == 0 ))		#Find Factorization No
	then
		#echo $i;
		temp=1;
		for (( j=2; $j<$i; j++ ))	#find Prime no form that Factorization
		do
			if (( $i % $j == 0 ))
			then
				temp=0;
				break;
			fi
		done
		if (( $temp == 1 ))
		then
			echo $i;
		fi
	fi

done
