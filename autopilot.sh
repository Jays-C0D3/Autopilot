#!/usr/bin/bash
#######################################################################################


echo "(-----/ Autopilot Commenced \-----)"
echo "(_________<<<<<</>>>>>>>__________)"
echo "|_________________________________|"
echo "|------[###################]------|"

echo "---------BY: N000b-N000B-----------"


######################################################################################

apt uppdate && apt upgrade -y

apt install golang nmap -y

#Install Subfinder


GO111MODULE=on go get -v github.com/projectdicovery/subfinder/v2/cmd/subfinder


#######################################################################################

filename='autorecon.txt'

read -p ' Enter Target: ' tarvar

mkdir /root/bountyz/$tarvar

echo "-----------------------------------"

echo "###########################################"
echo "| Starting recon on $tarvar now . . .     |"
echo "| ________________________________________|"

./subfinder -d $tarvar -o $filename
sleep 0.5

sort -u $filename | uniq > subz.txt;


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


echo '############################### Checking-For-Resolved-Subz ###################################'

while IFS= read -r line;
do
	host $line >> host.txt
	cat host.txt | grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' >> scanipz.txt
done < $filename


sort -u scanipz.txt | uniq > ipz.txt

echo "#"

sleep 0.3

echo "##"

sleep 0.2

echo "###"

sleep 0.1

echo "#### ! IPz collected and stored ! ####"


###################################################################################################


echo '#########################( S-C-A-N-N-I-N-G [F-0-R] P-O-R-T-S )#########################'

while IFS= read -r line;
do
        nmap -Pn -sT -sV -p0-65535 $line >> nres.txt;

done < ipz.txt

echo " Files are in $tarvar folder ... "

mkdir /root/bountyz/$tarvar/subz
mkdir /root/bountyz/$tarvar/ports

rm $filename host.txt

mv subz.txt /root/bountyz/$tarvar/subz
mv nres.txt /root/bountyz/$tarvar/ports
mv ipz.txt /root/bountyz/$tarvar/ports
