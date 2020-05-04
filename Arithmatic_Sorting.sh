#!/bin/bash -x

read -p "Enter the first number -: " a
read -p "Enter the second number -: " b
read -p "Enter the third number -: " c

declare -A UseCase
compute_useCase2=$(($a + $b * $c));
compute_useCase3=$(($a * $b + $c));
compute_useCase4=$(($c + $a / $b));
compute_useCase5=$(($a % $b + $c));

UseCase[2]=$compute_useCase2
UseCase[3]=$compute_useCase3
UseCase[4]=$compute_useCase4
UseCase[5]=$compute_useCase5

echo "Array Output is "
count=0;
UseCase[((count++))]=$compute_useCase2
UseCase[((count++))]=$compute_useCase3
UseCase[((count++))]=$compute_useCase4
UseCase[((count++))]=$compute_useCase5
echo ${UseCase[@]}

echo "dictionary Output is"
echo ${UseCase[@]}
echo ${!UseCase[@]}
dictionary=${UseCase[@]}
echo $dictionary

echo "Array Output is "
for ((i=2;i<=5;i++))
do
	array[$i]=${UseCase[$i]}
	echo ${array[$i]}
done

# Sorting of Array
for ((i=2;i<=5;i++))
do
	for((j=$i;j<=5;j++ ))
	do
		if [ ${array[$i]} -lt ${array[$j]} ]
		then
			temp_var=${array[i]}
			array[$i]=${array[$j]}
			array[$j]=$temp_var;
		fi
	done
done

# Printing the sorted number in Descending Order
echo " In Descending Order result is :"

for(( i=2;i<=5;i++ ))
do
	echo ${array[$i]}
done

