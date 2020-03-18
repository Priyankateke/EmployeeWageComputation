#!/bin/bash -x
echo "Welcome To Employee Wage Computation"

#constants
readonly IS_EMP_PRESENT=1

empAttendance=$(( RANDOM%2 ))

if [ $IS_EMP_PRESENT -eq $empAttendance ]; then
	echo "Employee is present"
else
	echo "Employee is absent"
fi
