#! /bin/bash/ -x
echo "welcome to employee wage computation"
isPartTime=1
isFullTime=2
totalSalary=0
empRateperHr=20
numWorkingDays=20
randomCheck=$((RANDOM%3))
for (( day=1;day<=$numWorkingDays;day++ ))
do
 case $randomCheck in
	 $isFullTime) empHrs=8 ;;
	 $isPartTime) empHrs=4 ;;
	 *) empHrs=0 ;;
 esac
done
salary=$(($empHrs*$empRateperHr))
totalSalary=$(($salary*$numWorkingDays))
