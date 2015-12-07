#!/bin/sh
NAME="BUSYCENT"
VERSION="1.0.0"
BREADCUM="MAIN MENU > Server Infomation"
DIR=$(dirname $0)

. ${DIR}/libs/gui.sh

createMainMenu(){
	echo " 1. Install gitlab"    
}

option_1(){
    sh ${DIR}/scripts/install_gitlab.sh
    echo "Enter to continue..."   
    read
}


_run
