#!/bin/sh
NAME="BUSYCENT"
VERSION="1.0.0"
BREADCUM="MAIN MENU"

. libs/gui.sh

createMainMenu(){
	echo "1. Server Information";
	echo "2. LEMP Tools"; 
}

option_1(){
	sh busyinfo.sh;
}

option_2(){
	sh busylemp.sh;
}


_run
