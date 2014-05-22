A=0
ekco() {
	if [[ "${1:$A:1}" == 'a' ]]
	then 
		echo "Done."
		exit 
	else
		echo "${1:$A:1}"
		A=$(( $A + 1 )); 
		sleep 1; 
		ekco "$1"; 
	fi	
}

ekco "strang"
