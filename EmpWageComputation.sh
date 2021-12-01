#! /bin/bash/ -x
echo "welcome to employee wage computation"
isPartTime=1
isFullTime=2
totalSalary=0
empRateperHr=20
numWorkingDays=20
for (( day=1;day<=$numWorkingDays;day++ ))
do
randomCheck=$((RANDOM%3))
 case $randomCheck in
	 $isFullTime) empHrs=8 ;;
	 $isPartTime) empHrs=4 ;;
	 *) empHrs=0 ;;
 esac
 salary=$(($empHrs*$empRateperHr))
 totalSalary=$(($totalSalary+$salary))
done

echo "total salary for month is $totalSalary"

