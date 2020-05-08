#!/bin/bash -x
echo "Welcome to Flip Coin Simulator"
echo "It is starting flipping a coin"

rand =$(( RANDOM % 2 ));

if [ $rand: -eq 1 ]
then
	echo heads;
else
	echo tails;
fi

