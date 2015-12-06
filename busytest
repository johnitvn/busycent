#!/bin/sh
NAME="BUSYCENT"
VERSION="1.0.0"
BREADCUM="MAIN MENU > Testing Tools"
DIR=$(dirname $0)

source ${DIR}/libs/gui.sh
source ${DIR}/libs/functions.sh

createMainMenu(){
        echo "1. Test Network Speed";
}

option_1(){
	sh ${DIR}/scripts/test_network.sh
	read
}

_run
