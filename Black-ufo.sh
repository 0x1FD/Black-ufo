#!/bin/bash
#Black-ufo 
#made by: Oak atsume 
source import.sh 

$import ip-file.sh
$import commands.sh 

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
	printf "$red"
}

function c-reset(){ 
	printf $end
}

function c-yel() {
	printf $yel
}



if [ -f $FILE ]; then
   echo "$bad please use the other Black-ufo!"
   exit 0
else
	
   echo "$good Black-ufo"
fi

if [ -f $filename ]; then
  echo "$good $filename found!"
  else
  echo "$bad $filename not found!"
fi 

echo -e "Welcome \n your ip is \n IP: $LIP"

read -p "${underline}msf0>${normal} " msf0

