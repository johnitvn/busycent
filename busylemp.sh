#!/bin/sh
NAME="BUSYCENT"
VERSION="1.0.0"
BREADCUM="MAIN MENU > LEMP Tools"

source libs/gui.sh
source libs/functions.sh

createMainMenu(){
        echo "1. Install LEMP(All configuration will be override)";
	echo "2. List avaiable domains";
	echo "3. Add domain";
        echo "4. Enable domain";
}


option_1(){
	sh scripts/install_nginx.sh
        sh scripts/install_phpfpm.sh
        sh scripts/install_mariadb.sh
	echo "Enter to continue..."
	read
}

option_2(){
        sh scripts/list_avaiable_domain.sh
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
