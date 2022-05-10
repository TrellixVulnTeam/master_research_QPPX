#!/bin/bash
function="function"
objective="objective"
WA1n="WA1n"
WA1p="WA1p"
WA2n="WA2n"
WA2p="WA2p"
WB1n="WB1n"
WB1p="WB1p"
WB2n="WB2n"
WB2p="WB2p"
WC1n="WC1n"
WC1p="WC1p"
WC2n="WC2n"
WC2p="WC2p"
WD1n="WD1n"
WD1p="WD1p"
WD2n="WD2n"
WD2p="WD2p"
WE1n="WE1n"
WE1p="WE1p"
WE2n="WE2n"
WE2p="WE2p"
WF1n="WF1n"
WF1p="WF1p"
WF2n="WF2n"
WF2p="WF2p"
WG1n="WG1n"
WG1p="WG1p"
WG2n="WG2n"
WG2p="WG2p"
WT1n="WT1n"
WT1p="WT1p"
WT2n="WT2n"
WT2p="WT2p"
time="time"

for file in $(ls -v n7/)
do
	#echo "================"
	#echo $file
	file_dir="n7/"$file
	time_dir="total/time.txt"
	
	function=$function","$(echo $file | awk -F'.' '{print $1}')

	infoObj=$(egrep 'Objective' $file_dir)		

#A
	info=$(egrep 'WA1n' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WA1n=$WA1n", "
		objective=$objective", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			objective=$objective", "
			WA1n=$WA1n",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			objective=$objective","$(echo $infoObj | awk '{print $5}')
			WA1n=$WA1n","$(echo $info | awk '{print $2}')
		fi
	fi

	info=$(egrep 'WA1p' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WA1p=$WA1p", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WA1p=$WA1p",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WA1p=$WA1p","$(echo $info | awk '{print $2}')
		fi
	fi

	info=$(egrep 'WA2n' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WA2n=$WA2n", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WA2n=$WA2n",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WA2n=$WA2n","$(echo $info | awk '{print $2}')
		fi
	fi

	info=$(egrep 'WA2p' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WA2p=$WA2p", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WA2p=$WA2p",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WA2p=$WA2p","$(echo $info | awk '{print $2}')
		fi
	fi

#B
		info=$(egrep 'WB1n' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WB1n=$WB1n", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WB1n=$WB1n",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WB1n=$WB1n","$(echo $info | awk '{print $2}')
		fi
	fi

	info=$(egrep 'WB1p' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WB1p=$WB1p", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WB1p=$WB1p",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WB1p=$WB1p","$(echo $info | awk '{print $2}')
		fi
	fi

	info=$(egrep 'WB2n' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WB2n=$WB2n", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WB2n=$WB2n",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WB2n=$WB2n","$(echo $info | awk '{print $2}')
		fi
	fi

	info=$(egrep 'WB2p' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WB2p=$WB2p", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WB2p=$WB2p",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WB2p=$WB2p","$(echo $info | awk '{print $2}')
		fi
	fi
#C
		info=$(egrep 'WC1n' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WC1n=$WC1n", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WC1n=$WC1n",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WC1n=$WC1n","$(echo $info | awk '{print $2}')
		fi
	fi

	info=$(egrep 'WC1p' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WC1p=$WC1p", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WC1p=$WC1p",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WC1p=$WC1p","$(echo $info | awk '{print $2}')
		fi
	fi

	info=$(egrep 'WC2n' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WC2n=$WC2n", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WC2n=$WC2n",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WC2n=$WC2n","$(echo $info | awk '{print $2}')
		fi
	fi

	info=$(egrep 'WC2p' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WC2p=$WC2p", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WC2p=$WC2p",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WC2p=$WC2p","$(echo $info | awk '{print $2}')
		fi
	fi
#D
		info=$(egrep 'WD1n' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WD1n=$WD1n", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WD1n=$WD1n",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WD1n=$WD1n","$(echo $info | awk '{print $2}')
		fi
	fi

	info=$(egrep 'WD1p' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WD1p=$WD1p", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WD1p=$WD1p",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WD1p=$WD1p","$(echo $info | awk '{print $2}')
		fi
	fi

	info=$(egrep 'WD2n' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WD2n=$WD2n", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WD2n=$WD2n",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WD2n=$WD2n","$(echo $info | awk '{print $2}')
		fi
	fi

	info=$(egrep 'WD2p' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WD2p=$WD2p", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WD2p=$WD2p",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WD2p=$WD2p","$(echo $info | awk '{print $2}')
		fi
	fi
#E
		info=$(egrep 'WE1n' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WE1n=$WE1n", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WE1n=$WE1n",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WE1n=$WE1n","$(echo $info | awk '{print $2}')
		fi
	fi

	info=$(egrep 'WE1p' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WE1p=$WE1p", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WE1p=$WE1p",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WE1p=$WE1p","$(echo $info | awk '{print $2}')
		fi
	fi

	info=$(egrep 'WE2n' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WE2n=$WE2n", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WE2n=$WE2n",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WE2n=$WE2n","$(echo $info | awk '{print $2}')
		fi
	fi

	info=$(egrep 'WE2p' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WE2p=$WE2p", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WE2p=$WE2p",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WE2p=$WE2p","$(echo $info | awk '{print $2}')
		fi
	fi
#F
		info=$(egrep 'WF1n' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WF1n=$WF1n", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WF1n=$WF1n",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WF1n=$WF1n","$(echo $info | awk '{print $2}')
		fi
	fi

	info=$(egrep 'WF1p' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WF1p=$WF1p", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WF1p=$WF1p",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WF1p=$WF1p","$(echo $info | awk '{print $2}')
		fi
	fi

	info=$(egrep 'WF2n' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WF2n=$WF2n", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WF2n=$WF2n",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WF2n=$WF2n","$(echo $info | awk '{print $2}')
		fi
	fi

	info=$(egrep 'WF2p' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WF2p=$WF2p", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WF2p=$WF2p",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WF2p=$WF2p","$(echo $info | awk '{print $2}')
		fi
	fi
#G
		info=$(egrep 'WG1n' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WG1n=$WG1n", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WG1n=$WG1n",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WG1n=$WG1n","$(echo $info | awk '{print $2}')
		fi
	fi

	info=$(egrep 'WG1p' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WG1p=$WG1p", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WG1p=$WG1p",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WG1p=$WG1p","$(echo $info | awk '{print $2}')
		fi
	fi

	info=$(egrep 'WG2n' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WG2n=$WG2n", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WG2n=$WG2n",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WG2n=$WG2n","$(echo $info | awk '{print $2}')
		fi
	fi

	info=$(egrep 'WG2p' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WG2p=$WG2p", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WG2p=$WG2p",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WG2p=$WG2p","$(echo $info | awk '{print $2}')
		fi
	fi
#T
		info=$(egrep 'WT1n' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WT1n=$WT1n", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WT1n=$WT1n",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WT1n=$WT1n","$(echo $info | awk '{print $2}')
		fi
	fi

	info=$(egrep 'WT1p' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WT1p=$WT1p", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WT1p=$WT1p",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WT1p=$WT1p","$(echo $info | awk '{print $2}')
		fi
	fi

	info=$(egrep 'WT2n' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WT2n=$WT2n", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WT2n=$WT2n",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WT2n=$WT2n","$(echo $info | awk '{print $2}')
		fi
	fi

	info=$(egrep 'WT2p' $file_dir)
	if [[ -n "$(egrep 'Subject' $file_dir)" ]]; then #-n means ""is not empty
		WT2p=$WT2p", "
	else
		if [[ -z "$info" ]]; then #-z means "" is empty
			#echo "no var here!"
			WT2p=$WT2p",0"
		else 
			#echo $(echo $info | awk '{print $2}')
			WT2p=$WT2p","$(echo $info | awk '{print $2}')
		fi
	fi

	line=$(egrep $(echo $file | awk -F'.' '{print $1}')'.lp' $time_dir)
	time=$time","$(echo $line | awk '{print $2}')
done

echo $function
for i in $(seq 3 34)
do
	if [ $i == 3 ]; then name="WA1n" 
	fi
	if [ $i == 4 ]; then name="WA1p" 
	fi
	if [ $i == 5 ]; then name="WA2n" 
	fi
	if [ $i == 6 ]; then name="WA2p" 
	fi
	if [ $i == 7 ]; then name="WB1n" 
	fi
	if [ $i == 8 ]; then name="WB1p" 
	fi
	if [ $i == 9 ]; then name="WB2n" 
	fi
	if [ $i == 10 ]; then name="WB2p" 
	fi
	if [ $i == 11 ]; then name="WC1n" 
	fi
	if [ $i == 12 ]; then name="WC1p" 
	fi
	if [ $i == 13 ]; then name="WC2n" 
	fi
	if [ $i == 14 ]; then name="WC2p" 
	fi
	if [ $i == 15 ]; then name="WD1n" 
	fi
	if [ $i == 16 ]; then name="WD1p" 
	fi
	if [ $i == 17 ]; then name="WD2n" 
	fi
	if [ $i == 18 ]; then name="WD2p" 
	fi
	if [ $i == 19 ]; then name="WE1n" 
	fi
	if [ $i == 20 ]; then name="WE1p" 
	fi
	if [ $i == 21 ]; then name="WE2n" 
	fi
	if [ $i == 22 ]; then name="WE2p" 
	fi
	if [ $i == 23 ]; then name="WF1n" 
	fi
	if [ $i == 24 ]; then name="WF1p" 
	fi
	if [ $i == 25 ]; then name="WF2n" 
	fi
	if [ $i == 26 ]; then name="WF2p" 
	fi
	if [ $i == 27 ]; then name="WG1n" 
	fi
	if [ $i == 28 ]; then name="WG1p" 
	fi
	if [ $i == 29 ]; then name="WG2n" 
	fi
	if [ $i == 30 ]; then name="WG2p" 
	fi
	if [ $i == 31 ]; then name="WT1n" 
	fi
	if [ $i == 32 ]; then name="WT1p" 
	fi
	if [ $i == 33 ]; then name="WT2n" 
	fi
	if [ $i == 34 ]; then name="WT2p" 
	fi

	echo ${!name}
done
echo $time
echo $objective