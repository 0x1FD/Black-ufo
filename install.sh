#!/bin/bash
name="Black-ufo"
username=$(whoami)
LIP=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')

#check for packet manager
which apt >/dev/null 2>&1
if [ $? -eq 0 ]
then
    apt="True"
else
    apt="false"
fi
######
which pkg >/dev/null 2>&1
if [ $? -eq 0 ]
then
    apt="false"
    pkg="true"
else
    apt="false"
    pkg="false"
fi
######
which pacman >/dev/null 2>&1
if [ $? -eq 0 ]
then
    pacman="true"
else
    pacman="false"
fi
#####
which yum >/dev/null 2>&1
if [ $? -eq 0 ]
then
    yum="true"
else
    yum="false"
fi
#packet manager-end


if [ $apt == "true" ];
then
packed="apt-get install "
else
sleep 0.1
fi 

if [ $pkg == "true" ];
then
packed="pkg install "
else
sleep 0.1
fi 

if [ $pacman == "true" ];
then
packed="pacman -S "
else
sleep 0.1
fi 

if [ $yum == "true" ];
then
packed="yum install "
else
sleep 0.1
fi 

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
#color-end
#check for file 
if [ ! -e "$filename" ]; then
  printf $red
  echo "[×] $filename moved or missing!"
  printf $end
  exit 0
else
  printf $grn
  echo "[√] $filename found!"
  printf $end
fi
#check-end
#start installer!
if ping -c 1 google.com >/dev/null;
then
  printf $grn
  echo "[√] connection to network"
  printf $end
else
  printf $red
  echo "[×] connection to network"
  printf $end
fi

if command -v nc >/dev/null;
then
  printf $grn
  echo "$good netcat found!"
  printf $end
else
  printf $red
  echo "$bad netcat not found!"
  printf $end
  #install netcat
  printf $yel
  $packed netcat
  printf $end
  
fi

if command -v msfconsole >/dev/null;
then
  msf1="true"
else
  msf1="false"
fi

if command -v msfvenom >/dev/null;
then
  msf2="true"
else
  msf2="false"
fi
#Mon Aug  3 23:09:58 PDT 2020
#end
#Tue Aug  4 11:54:07 PDT 2020
#start
if [ $msf1 == "true" ]; then
  printf $grn
  echo "$good msfvenom"
  printf $end
else
  printf $grn
  echo "$bad msfvenom"
  printf $end
fi

if [ $msf2 == "true" ]; then
  printf $grn
  echo "$good msfconsole "
  printf $end
else
  printf $grn
  echo "$bad msfconsole "
  printf $end
  echo "Metasploit-framework not found"
  echo "Do you have metasploit repository?"
  echo "(y/n)"
  read -p "Answer: " answ 
  
  if [ $answ == "y" ]; then
  echo "Installing Metasploit-framework"
  $packed metasploit
  $packed metasploit-framework
else
  echo "Installing metasploit-framework"
  curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall
  touch exec1
fi
fi



if command -v nmap >/dev/null; 
  then
  printf $grn
  echo "$good nmap "
  printf $end
else
  printf $red
  echo "$bad nmap "
  printf $end
  $packed nmap
fi 


echo "Done!"
