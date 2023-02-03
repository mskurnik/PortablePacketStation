#!/bin/bash
######################################################################
# Created By Mitchell J. Skurnik (KN6FOA) KN6FOA@outlook.com
# -------------------------------------------------------------------
# Go-Box Radio Tester for:
#     Kenwood TM-V71A, Kenwood TK-762G, and Xiegu G90 Radios
# -------------------------------------------------------------------
# Change Log:
#     2022-04-10 @ 1800 - Created initial script
#     2022-04-10 @ 2017 - Simplified script
######################################################################

txtGrn="\e[0;32m"
txtBlu="\e[0;36m"
txtRed="\e[1;31m"
txtWht="\e[1;37m"
txtPpl="\e[1;35m"
debug=0
gps=1

# Command Usage
if [ $# -lt 2 ]; then
	echo -e ${txtRed}"Usage: $0 {08,|09,|12} <Comma Separated Station List>\e[0m";
else
	if [ $gps -eq 1 ]; then
		# Get the GPS Data and break it down into parts
		gpsdata=$( gpspipe -w --seconds 10 | grep -m 1 alt )
		lat=$( echo "$gpsdata" | jq -r '.lat' )
		lon=$( echo "$gpsdata" | jq -r '.lon' )
		alt=$( echo "$gpsdata" | jq -r '.alt' )
		dt=$( echo "$gpsdata" | jq -r '.time' | date --iso-8601=seconds )
		echo -e "${txtGrn}GPS DateTime: ${txtWht}$dt"
		echo -e "${txtGrn}GPS Location: ${txtWht}$lat, $lon at $( echo "$alt * 3.28" | bc -l ) ft\e[0m"
	fi
	# Convert strings into arrays
	readarray -td , radios< <( printf '%s' "$1" )
	readarray -td , stations< <( printf '%s' "$2" )

	# Test the radios
	echo -e "${txtGrn}Testing $1 radios to connect to $2 stations\e[0m"
	for radio in "${radios[@]}";
	do
		# Find the radio display name
		case $radio in
			"8") radio="08"; radioName="Kenwood TM-V71A";;
			"12") radioName="Kenwood TK-762G";;
			"9") radio="09"; radioName="Xiegu G90";;
			*) echo "Unknown radio ID: $*"; exit 1;
		esac

		# Start the magic
		echo ""
		echo -e "${txtBlu}-----------------------------------------------------------------"
		echo -e "${txtPpl}Starting connection tests for $radioName on i2c port $radio"
		echo -e "${txtBlu}-----------------------------------------------------------------"
		echo ""
		for station in "${stations[@]}";
		do
			echo -e "${txtPpl}Attempting to connect $radioName to $station"
			echo -e "${txtBlu}-----------------------------------------------------------------\e[0m"
			if [ $debug -eq 0 ]; then
				pat connect ax25://i2c$radio/${station}
			fi
		done
	done
fi

echo -e "\e[0m"
exit 0