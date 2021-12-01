#! /bin/bash/ -x
isFullTime=2
totalSalary=0
empRateperHr=20
numWorkingDays=20
maxHoursInMonth=100
totalEmpHr=0
totalWorkingDays=0
while [[ $totalEmpHr -le $maxHoursInMonth && $totalWorkingDays -le $numWorkingDays ]]
do
((totalWorkingDays++))
randomCheck=$((RANDOM%3))
 case $randomCheck in
         $isFullTime) empHrs=8 ;;
         $isPartTime) empHrs=4 ;;
         *) empHrs=0 ;;
 esac
 totalEmpHr=$(($totalEmpHr+$empHrs))
done

totalSalary=$(($totalEmpHr*$empRateperHr))
echo "total salary is $totalSalary"

