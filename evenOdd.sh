#! /bin/bash -x

#Problem:Take the range from 1 to 50 and print even and odd numbers
echo "Enter the lower range:"
read LOWER
echo "Enter the upper range:"
read UPPER
#Here above range is taken from user as input
#Below is function to print the even numbers
even(){
	echo "The even numbers to range $LOWER to $UPPER are : "
	for(( i=$LOWER;i<=$UPPER;i++ ))
	do
		modulo=$((i%2))
		if [ $modulo -eq 0 ]
		then
			echo $i
		fi
	done
}
#Below odd function  is to print odd numbers
odd(){
	echo "The odd numbers in range $LOWER to $UPPER are : "
	for(( i=$LOWER;i<=$UPPER;i++ ))
	do
		modulo=$((i%2))
		if [ $modulo -ne 0 ]
		then
			echo $i
		fi
	done
}
evenOddSelection(){
	echo "To get the even numbers press 1 or to get odd numbers press 0"
	read input
	case $input in
		1)
			even
			;;
		0)
			odd
			;;
		*)
			echo "Invalid Input,Please press 1 or 0"
	esac
}
evenOddSelection
