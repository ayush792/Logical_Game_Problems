#!/bin/bash -x

stake=100;
bet=$(( RANDOM % 2 ))

if [ $bet = 1 ]
then
	echo win
if [[ $stake > 50 || $stake <150 ]]
then
	stake=$(($stake + 1))
else
	stake=$(($stake -1))
fi

else
	echo loss
fi

echo $stake

