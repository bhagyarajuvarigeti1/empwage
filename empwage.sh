#! /bin/bash -x

parttime=2
parttimehour=8
present=1
absent=0
wageperhour=20
fulldayhour=8
wagepermonth=0
empstatus=$((RANDOM % 3))

echo "Welcome to Emplopyee wage computation "
for((i=0;i<20;i++))
do
	if [ $present -eq $empstatus ]
	then
		wageperday=$(($fulldayhour*$wageperhour))
		echo "employee is present"
	elif [ $absent -eq $empstatus ]
	then
		wageperday=0
		echo "employee is absent"
	elif [ $parttime -eq $empstatus ]
	then
		wageperday=$(($parttimehour*$wageperhour))
		echo "employee is parttime"
	fi
	wagepermonth=$(($wagepermonth+$wageperday))
done

echo $wagepermonth
