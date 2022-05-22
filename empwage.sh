#! /bin/bash -x

present=1
absent=0
wageperhour=20
fulldayhour=8
empstatus=$((RANDOM % 2))

echo "Welcome to Emplopyee wage computation "

if [ $present -eq $empstatus ]
then
	wageperday=$(($fulldayhour*$wageperhour))
	echo "employee is present"
elif [ $absent -eq $empstatus ]
then
	echo "employee is absent"
fi

