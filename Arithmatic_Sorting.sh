#!/bin/bash -x

read -p "Enter the first number -: " a
read -p "Enter the second number -: " b
read -p "Enter the third number -: " c

compute_usecase2=$(($a + $b * $c));
compute_usecase3=$(($a * $b + $c));
compute_usecase4=$(($c + $a / $b));
compute_usecase5=$(($a % $b + $c));

echo $compute_usecase2
echo $compute_usecase3
echo $compute_usecase4
echo $compute_usecase5

declare -A UC
UC[2]=$(($a + $b * $c))
UC[3]=$(($a * $b + $c))
UC[4]=$(($c + $a / $b))
UC[5]=$(($a % $b + $c))

echo "Usecases are" ${UC[@]}

