#!/bin/bash -x

read -p "Enter the first number -: " a
read -p "Enter the second number -: " b
read -p "Enter the third number -: " c

compute_usecase2=$(($a + $b * $c));

echo $compute_usecase2
