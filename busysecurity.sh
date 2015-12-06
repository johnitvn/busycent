#!/bin/sh
NAME="BUSYCENT"
VERSION="1.0.0"
BREADCUM="MAIN MENU > Security Tools"
DIR=$(dirname $0)

source ${DIR}/libs/gui.sh
source ${DIR}/libs/functions.sh

createMainMenu(){
        echo "1. SELinux status";
	echo "2. Disable SELinux(Reboot require)";
	echo "3. Enable SELinux(Reboot require)";
}


option_1(){
	sestatus
	echo "Enter to continue..."
	read
}

option_2(){
        echo -e "SELINUX=disabled\nSELINUXTYPE=targeted" | sudo tee /etc/selinux/config
        echo "Enter to continue..."
        read
}


option_3(){
	echo -e "SELINUX=enforcing\nSELINUXTYPE=targeted" | sudo tee /etc/selinux/config
        echo "Please to reboot server for apply config"
	echo "Enter to continue..."
        read
}

_run
