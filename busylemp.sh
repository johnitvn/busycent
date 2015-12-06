#!/bin/sh
NAME="BUSYCENT"
VERSION="1.0.0"
BREADCUM="MAIN MENU > LEMP Tools"
DIR=$(dirname $0)

source ${DIR}/libs/gui.sh
source ${DIR}/libs/functions.sh

createMainMenu(){
        echo "1. Install LEMP(All configuration will be override)";
	echo "2. List avaiable domains";
	echo "3. Add domain";
        echo "4. Enable domain";
}


option_1(){
        echo "You must diable sestatus before";
	echo "Use MAINMENU > Security Tools > Disable SELinux";
	echo "Enter to continue..."
        read
	sh ${DIR}/scripts/install_nginx.sh
        sh ${DIR}/scripts/install_phpfpm.sh
        sh ${DIR}/scripts/install_mariadb.sh
	echo "Enter to continue..."
	read
}

option_2(){
        sh ${DIR}/scripts/list_avaiable_domain.sh
        echo "Enter to continue..."
        read
}

option_3(){
        sh scripts/add_domain.sh
        echo "Enter to continue..."
        read
}

option_4(){
	sh scripts/enable_domain.sh
	echo "Enter to continue..."
        read
}

_run
