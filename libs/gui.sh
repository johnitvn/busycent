_drawMenu(){   
	clear
	echo "=========================================================================="
	echo "                       MowiCentos - V ${VERSION}"                        
	echo "=========================================================================="	
	echo "<\> ${BREADCUM}"
	echo "${Gre}"
	createMainMenu
	echo ""
	echo "0. Exit"
	echo "=========================================================================="
	echo "Please enter a menu option."
	read opt
}


_run(){
	_drawMenu
	while [ true ]
	do      
		if [ $opt = "0" ]
		then 
			clear
			exit
		else      
			function_name="option_${opt}"
			eval ${function_name}                
			_drawMenu
        	fi         
	done
}

