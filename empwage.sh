#! /bin/bash -x

present=1
absent=0
empstatus=$((RANDOM % 2))

echo "Welcome to Emplopyee wage computation "

if [ $present -eq $empstatus ]
then
	echo "employee is present"
elif [ $absent -eq $empstatus ]
then
	echo "employee is absent"
fi

