#!/bin/bash -x

# Write a Program to show Sum of three Integer adds to ZERO

number=(2 5 -3);

echo ${number[*]};

sum=0;

for i in ${numbers[*]}
do
	sum=$(( $sum + $i));
done

echo $sum;
