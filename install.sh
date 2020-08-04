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
    apt="false"
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
    yum=false
fi
#packet manager-end

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
  #install netcat
  
  
fi
