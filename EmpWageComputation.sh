#! /bin/bash/ -x
echo "welcome to employee wage computation"
isPartTime=1
isFullTime=2
empRateperHr=20
randomCheck=$((RANDOM%3))
case $randomCheck in
	$isFullTime) empHrs=8 ;;
	$isPartTime) empHrs=4 ;;
	*) empHrs=0 ;;
esac
salary=$(($empHrs*$empRateperHr))
