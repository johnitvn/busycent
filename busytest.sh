#!/bin/sh
NAME="BUSYCENT"
VERSION="1.0.0"
BREADCUM="MAIN MENU > Testing Tools"
DIR=$(dirname $0)

source ${DIR}/libs/gui.sh
source ${DIR}/libs/functions.sh

createMainMenu(){
        echo "1. Test Network Speed";
        echo "2. Test Streaming IO Speed";
}

option_1(){
	sh ${DIR}/scripts/test_network.sh
	read
}

option_1(){
	sh ${DIR}/scripts/test_streaming_io.sh
	read
}

_run
