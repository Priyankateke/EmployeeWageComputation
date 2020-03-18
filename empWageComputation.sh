#!/bin/bash -x
echo "Welcome To Employee Wage Computation"

#constants
readonly IS_PART_TIME=1
readonly IS_FULL_TIME=2
readonly EMP_RATE_PER_HRS=20

empCheck=$(( RANDOM%3 ))
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
salary=$(( $empHours*EMP_RATE_PER_HRS ))
