#!/usr/bin/bash

#######################################################################################


echo "(-----/ Autopilot Activated \-----)"
echo "(_________<<<<<</>>>>>>>__________)"
echo "|_________________________________|"
echo "|------[###################]------|"

echo "-----| Twitter: @n00b_n00b_ |------"

echo "+++++++++++++++++++++++++++++++++++"

echo " "

echo " Gr3at thnx to Twitter @Sw33tLie bbscope "

echo "____________________________________________________________"

echo " "

echo " This tool requires bbscope and usually an active h1 API key"

echo "____________________________________________________________________________________"

echo " "

echo "| Please install with command: GO111MODULE=on go get -u github.com/sw33tLie/bbscope |"

echo "-------------------------------------------------------------------------------------"


#########################################################################################


apt update && apt upgrade -y

sleep 1

apt autoremove -y

sleep 0.5


#Confirm bbscope installation


########################################################################################


h1auth=$(cat /home/n000bn000b/.pass/h1-auth)

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
        sleep 0.5

done < scope

sort scope | uniq

#Strip Root Domains from scope file and prep for subdomain enumeration

grep "*." scope >> rootdomains.txt

awk -F\. '{print $(NF-1) FS $NF}' rootdomains.txt >> rootdomains.txt


#Initiate subtak3r?

echo "__________________________________________"

echo " Initiating Subtak3r . . . $ubTKO 0_0 . . "

echo "- - - - - - - - - - - - - - - - - - - - - "

echo " "

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

sleep 1.3

subfinder -v -nW -d $targetvar -o subz.txt

echo " | Now performing a permutated deep enum via ALTDNS |"

altdns -i subz.txt -o finalsubz.txt -w subz.txt
