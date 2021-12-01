#! /bin/bash/ -x
echo "welcome to employee wage computation"
isPresent=1
empRateperHr=20
randomCheck=$((RANDOM%2))
if [ $randomCheck -eq $isPresent ]
then
	echo "employee is present"
	empHrs=8
else
	echo "employee is absent"
	empHrs=0
fi
salary=$(($empHrs*$empRateperHr))
