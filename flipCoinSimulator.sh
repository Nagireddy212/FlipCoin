#!/bin/bash
read -p "Select 1.Heads or 2.Tails" select
read -p "Enter the number flips" flip
heads=0
tails=0
flips=0
limit=$flip
while [ $flips -lt $limit ]
do
result=$(( RANDOM%2 ))
if [ $result -eq 0 ]
then
        		echo "Heads"
        		heads=$(( $heads+1 ))
elif [ $result -eq 1 ]
then
        		echo "TAILS"
         		tails=$(( $tails+1 ))
fi
        		flips=$(( $flips+1 ))
done
echo "$heads heads & $tails tails total=$flips flips"

case $select in
               	1)
                	if [ $heads -ge $tails ]
             		then
                	    echo " you win the Game heads count" $heads
                	else
                        echo "you selected heads & lost the Game tails count" $tails
			fi
                	;;
                	2)
			if [ $heads -le $tails ]
			then
                        echo "You won the Game tails count" $tails
                        echo "you selected tails & lost the game heads count" $heads
                	fi
			;;
			*)
			echo "Please select 1 or 2"
			;;
esac
