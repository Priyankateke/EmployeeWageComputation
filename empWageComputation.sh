#!/bin/bash -x
echo "Welcome To Employee Wage Computation"

#constants
readonly IS_PART_TIME=1
readonly IS_FULL_TIME=2
readonly EMP_RATE_PER_HRS=20
readonly NUM_OF_WORKING_DAYS=20
readonly TOTAL_WORKING_HRS=100

#variables
dayCount=0
empWorkingHours=0

function getWorkingHours()
{
	local empCheck=$1
	case $empCheck in
		$IS_PART_TIME)
			empHours=4
			;;
		$IS_FULL_TIME)
			empHours=8
			;;
		*)
			empHours=0
			;;
	esac
	echo $empHours
}

function calculateDailyWage()
{
	local empHrs=$1
	wage=$(($empHrs*EMP_RATE_PER_HRS))
	echo $wage
}
while [[ $empWorkingHours -lt $TOTAL_WORKING_HRS && $dayCount -lt $NUM_OF_WORKING_DAYS ]]
do
	((dayCount++))
	empHours="$( getWorkingHours $((RANDOM%3)) )"
	empWorkingHours=$(($empWorkingHours+$empHours))
	empDailyWage[$dayCount]="$( calculateDailyWage $empHours )"
done

totalSalary="$( calculateDailyWage $empWorkingHours )"
echo "Daily Wage Of Employees: ${empDailyWage[@]}"
