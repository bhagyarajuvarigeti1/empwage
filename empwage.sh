#! /bin/bash -x

parttime=2
parttimehour=8
present=1
absent=0
workinghours=100
wageperhour=20
fulldayhour=8
wagepermonth=0
dayspermonth=20

echo "Welcome to Emplopyee wage computation"
while [ $dayspermonth -gt 0 -a $workinghours -gt 0 ]
do
	empstatus=$((RANDOM % 3))
	case $empstatus in
	$present)
		wageperday=$(($fulldayhour*$wageperhour))
		echo "employee is present";;
	$absent)
		wageperday=0
		echo "employee is absent";;
	$parttime)
		wageperday=$(($parttimehour*$wageperhour))
		echo "employee is parttime";;
	esac
	dayspermonth=$((dayspermonth-1))
	workinghours=$((workinghours-1))
	wagepermonth=$(($wagepermonth+$wageperday))
done

echo $wagepermonth
