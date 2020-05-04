#!/bin/bash -x

stake=100;
bet=$(( RANDOM % 2 ))

if [ $bet = 1 ]
then
	echo win
else
	echo loss
fi
