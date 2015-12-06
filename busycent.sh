#!/bin/sh
NAME="BUSYCENT"
VERSION="1.0.0"
BREADCUM="MAIN MENU"
DIR=$(dirname $0)

. ${DIR}/libs/gui.sh

createMainMenu(){
	echo "1. Server Information";
	echo "2. LEMP Tools"; 
	echo "3. LAMP Tools";
	echo "9. Security Tools";
	
}

option_1(){
	sh busyinfo.sh;
}

option_2(){
	sh busylemp.sh;
}

option_3(){
	sh busylamp.sh;
}

option_9(){
	sh busysecurity.sh;	
}

_run
