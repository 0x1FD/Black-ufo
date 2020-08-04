#!/bin/bash
#Black-ufo 
#made by: Oak atsume 
FILE="exec1"     
name="Black-ufo"
username=$(whoami)
LIP=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')
####################################################################################################################
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




echo "STARTING THE FRAMEWORK......."

