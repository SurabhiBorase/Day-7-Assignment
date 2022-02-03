#!/bin/bash 

# Write a program in the following steps
# a. Generates 10 Random 3 Digit number.
# b. Store this random numbers into a array.
# c. Then find the 2nd largest and the 2nd smallest element without sorting the array.


for ((i=0; i<10; i++))
do
	randomNo[$i]=${RANDOM:0:3}
	echo ${randomNo[$i]};
done

#find the Smallest No and Largest No

small=${randomNo[0]}
large=${randomNo[0]}

for (( i=0; i<10; i++ ))
do
	if (( ${randomNo[$i]} < small ))
	then
		small=${randomNo[$i]};
		#echo $small
	fi
	if (( ${randomNo[$i]} > large ))
	then
		large=${randomNo[$i]};
		#echo $large
	fi
done
echo "Smallest No: " $small
echo "Large No : " $large
