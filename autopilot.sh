#!/usr/bin/bash

#######################################################################################


echo "(-----/ Autopilot Activated \-----)"
echo "(_________<<<<<</>>>>>>>__________)"
echo "|_________________________________|"
echo "|------[###################]------|"
echo "-----| Twitter: @n00b_n00b_ |------"
echo "+++++++++++++++++++++++++++++++++++"
echo " "
echo "____________________________________________________________"
echo " "
echo " - - This tool requires bbscope and an active h1 API key - - "
echo " - - Updating and Confirming required modules/pkgs . . . . . . ."
echo "-__________________________________________________________-"

#########################################################################################
RESULT=$?

maintain() {
	apt update && apt upgrade -y
	apt autoremove -y
	apt install golang
	bbscope
	if [ RESULT== 0 ]; then
		echo "Necessities verified ! ! !"
	else:
		echo "____________________________________________________________________________________"

		echo " "

		echo "| Please install with command: GO111MODULE=on go get -u github.com/sw33tLie/bbscope |"

		echo "-------------------------------------------------------------------------------------"
}
maintain

########################################################################################

echo "Enter path to h1 API KEY: /key/path/example "

read h1key

h1auth=$(cat $h1key)

echo ###################################################################################

echo Scanning the H1 Database ! ! !
echo "%"
sleep 0.1
echo "%-"
sleep 0.2
echo "%--%"
sleep 0.3
echo "%--%-"
sleep 0.4
echo "%--%-%"
sleep 0.5
echo "%--%-%--"
sleep 0.6
echo "%--%-%--%-"
sleep 0.7
echo "%--%-%--%--%"
sleep 0.8
echo "%--%-%--%--%-"
sleep 0.9
echo "%--%-%--%--%-%--"
sleep 1.0
echo "%--%-%--%--%-%--%-"
sleep 1.1
echo "%--%-%--%--%-%--%-%--"
sleep 1.2
echo "%--%-%--%--%-%--%-%--%"

bbscope h1 -t $h1auth -u r3vlm -c url -b >> scope

echo "___________________________________________"
echo "--- UPDAT3D H1 SCOP3s STR3VMING N0W --- ;P "
echo "___________________________________________"

while IFS= read -r line;
do
        echo $line
		sleep 3
done < scope
