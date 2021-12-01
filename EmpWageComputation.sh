#! /bin/bash/ -x
echo "welcome to employee wage computation"
isPartTime=1
isFullTime=2
empRateperHr=20
randomCheck=$((RANDOM%3))
if [ $randomCheck -eq $isFullTime ]
then
	echo "employee is fulltime"
	empHrs=8
elif [ $randomCheck -eq $isPartTime ]
then
	echo "employee is parttime"
	empHrs=4
else
	echo "employee is absent"
	empHrs=0
fi
salary=$(($empHrs*$empRateperHr))
