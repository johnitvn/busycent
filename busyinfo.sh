#!/bin/sh
NAME="BUSYCENT"
VERSION="1.0.0"
BREADCUM="MAIN MENU > Server Infomation"
DIR=$(dirname $0)

. ${DIR}/libs/gui.sh

createMainMenu(){
	echo " 1. Information about the CPU Architect"    
	echo " 2. Information about detail of CPU Cores"
	echo " 3. Information about detail of the MEMORY"
	echo " 4. Information about IO ports"
	echo " 5. Information about interrupts"
	echo " 6. Information about kernel version"
	echo " 7. Information about kernel"
	echo " 8. Information about Centos Version"
	echo " 9. The System Date "
	echo " 10. Hostname"
}

option_1(){
    clear
    lscpu
    echo "Enter to continue..."   
    read
}

option_2(){
    clear
    less /proc/cpuinfo
    echo "Enter to continue..."   
    read
}

option_3(){
    clear
    less /proc/meminfo
    echo "Enter to continue..."   
    read
}

option_4(){
    clear
    less /proc/ioports
    echo "Enter to continue..."   
    read
}

option_5(){
    clear
    less /proc/interrupts
    echo "Enter to continue..."   
    read
}

option_6(){
    clear
    less /proc/version
    echo "Enter to continue..."   
    read
}

option_7(){
    clear
    uname -a
    echo "Enter to continue..."   
    read
}

option_8(){
    clear
    cat /etc/centos-release
    echo "Enter to continue..."   
    read
}

option_9(){
    clear
    date
    echo "Enter to continue..."   
    read
}

option_10(){
    clear
    hostname
    echo "Enter to continue..."   
    read
}

_run
