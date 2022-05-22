#! /bin/bash -x

parttime=2
parttimehour=8
present=1
absent=0
wageperhour=20
fulldayhour=8
wagepermonth=0


echo "Welcome to Emplopyee wage computation "
for((i=0;i<20;i++))
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
	wagepermonth=$(($wagepermonth+$wageperday))
done

echo $wagepermonth
