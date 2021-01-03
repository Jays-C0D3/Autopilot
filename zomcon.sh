#!/usr/bin/bash
#######################################################################################


echo "(-----/ Welcome to Autopilot \----)"
echo "(_________<<<<<</>>>>>>>__________)"
echo "|_________________________________|"
echo "|------[###################]------|"

echo "-------------------------------------------"


#######################################################################################

filename='autopilot.txt'

read -p ' Enter Target: ' tarvar

echo "-----------------------------------"

read -p 'Enter Path to Wordlist: ' worvar

echo "###########################################"
echo "| Starting recon on $tarvar now . . .     |"
echo "| ________________________________________|"

subfinder -d $tarvar -o $filename &
amass enum -o $filename -d $tarvar;

sleep 0.5

sort -u $filename;

altdns -i $filename -o altsubz.txt -w $worvar -r -s resaltnz.txt;

rm altsubz.txt;

sort -u resaltnz.txt;

#######################################################################################

echo "{----------------------------------------------------------}"
echo "| Sorting discovered domains and removing duplicates . . . |"
echo "|__________________________________________________________|"

sleep 1.5

#######################################################################################


echo " |        ---------       |"
echo " |. . . . <Phase 2> . . . |"
echo " --------------------------"
echo " |        /       \       |"
echo " |        <Starting>      |"
echo " |        /       \       |"
echo " __________________________"


#######################################################################################


echo '#########################( S-C-A-N-N-I-N-G [F-0-R] P-O-R-T-S )#########################'

while IFS= read -r line;
do
        nmap -p 80,443 --script http-waf-detect --script-args="http-waf-detect.aggro,http-waf-detect.detectBodyChanges" $line >> autoports.txt &
        nmap -A $line >> autoreports.txt &
        nmap -sV $line >> autoreports.txt &
        nmap -F $line >> autoreports.txt &

done < $filename

sleep 2.5

echo "<<<<<<<<<<<<<<<<<<<<<<<<><<<<<<| NMAP STILL RUNNING . . . |>>>>>><>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

while IFS= read -r line;
do
        nmap -p 80,443 --script http-waf-detect --script-args="http-waf-detect.aggro,http-waf-detect.detectBodyChanges" $line >> autoports.txt
        nmap -A $line >> autoreports.txt &
        nmap -sV $line >> autoreports.txt &
        nmap -F $line >> autoreports.txt &
done < resaltnz.txt

sleep 1.5
