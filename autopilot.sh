#!/usr/bin/bash

BLUE=$'\033[1;36m'
PURP=$'\033[0;35m'
GRN=$'\033[1;32m'

#######################################################################################


echo $BLUE "(-----/📱Autopilot Activated💻\-----)"
echo $BLUE "(_________<<<<<<</>>>>>>>>__________)"
echo $BLUE "|________________🎭_________________|"
echo $BLUE "|------[#########📱📱#########]------|"
echo $PURP "-----|📥Twitter: @n00b_n00b_📥|_-----"
echo $BLUE "🌑🌑🌑🌑🌑🌑🌑🌑🌑🌑🌑🌑🌑🌑🌑"
echo " "
echo $PURP " Gr3at thnx to Twitter @Sw33tLie bbscope "
echo $BLUE "_____________________________________________________________________________________"
echo " "
echo $PURP " This tool requires an active h1 API key"
echo $BLUE "_____________________________________________________________________________________"


#########################################################################################

maintain() {
	apt update && apt upgrade -y
	apt autoremove -y
}
maintain

########################################################################################

echo $BLUE "Enter path to h1 API KEY: /key/path/example "

read h1key

echo $BLUE "Enter H1 username: "

read username

h1auth=$(cat $h1key)

echo ###################################################################################

echo $BLUE "Scanning the H1 Database ! ! !"
echo $PURP "%"
sleep 0.1
echo $PURP "%-"
sleep 0.2
echo $PURP "%--%"
sleep 0.3
echo $PURP "%--%-"
sleep 0.4
echo $PURP "%--%-%"
sleep 0.5
echo $PURP "%--%-%--"
sleep 0.6
echo $PURP "%--%-%--%-"
sleep 0.7
echo $PURP "%--%-%--%--%"
sleep 0.8
echo $PURP "%--%-%--%--%-"
sleep 0.9
echo $PURP "%--%-%--%--%-%--"
sleep 1.0
echo $PURP "%--%-%--%--%-%--%-"
sleep 1.1
echo $PURP "%--%-%--%--%-%--%-%--"
sleep 1.2
echo $PURP "%--%-%--%--%-%--%-%--%"

bbscope h1 -t $h1auth -u $username -c url -b -o t >> scope

echo $BLUE "___________________________________________"
echo $BLUE "--- UPDAT3D H1 SCOP3s STR3VMING N0W --- ;P "
echo $BLUE "___________________________________________"

while IFS= read -r line;
do
    echo $GRN $line
	sleep 2.5
done < scope

clean_0(){
	sort scope | uniq >> mainscope
	rm scope
}
clean_0

#Strip Root Domains from scope file and prep for subdomain enumeration

echo $BLUE "________ - - - 00000000 - - - ____________ "
echo $BLUE "________Looking 4 root domains____________ "

presubTKO(){
	grep "*." mainscope >> roughroots.txt
	awk -F\. '{print $(NF-1) FS $NF}' roughroots.txt >> rootdomains.txt
	rm roughroots
}
presubTKO

#######################################################################################################
#Initiate subtak3r

echo $BLUE "__________________________________________"
echo $PURP " Initiating Subfinder . . . . . . 0_0 . . "
echo $BLUE "- - - - - - - - - - - - - - - - - - - - - "
echo " "
echo $PURP "%"
sleep 0.1
echo $PURP "%-"
sleep 0.2
echo $PURP "%--%"
sleep 0.3
echo $PURP "%--%-"
sleep 0.4
echo $PURP "%--%-%"
sleep 0.5
echo $PURP "%--%-%--"
sleep 0.6
echo $PURP "%--%-%--%-"
sleep 0.7
echo $PURP "%--%-%--%--%"
sleep 0.8
echo $PURP "%--%-%--%--%-"
sleep 0.9
echo $PURP "%--%-%--%--%-%--"
sleep 1.0
echo $PURP "%--%-%--%--%-%--%-"
sleep 1.1
echo $PURP "%--%-%--%--%-%--%-%--"
sleep 1.2
echo $PURP "%--%-%--%--%-%--%-%--%"
sleep 1.3

####################################################################################################

subsearch(){
while IFS= read -r root;
do
	subfinder -v -nW -d $root -o subz.txt
done < rootdomains.txt
}
subsearch

#################################################################################
echo $GRN " | Grabbing IP Addresses of subdomains  . . . |"
echo $BLUE "- - - - - - - - - - - - - - - - - - - - - -  "

subtko(){
	while IFS= read -r sub;
	do
		dig $sub | grep -E -o "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)" >> ipz
	done < subz.txt
}
subtko

echo $GRN "Created mainscope / subz.txt / ipz / and rootdomains.txt for review."

#################################################################################
