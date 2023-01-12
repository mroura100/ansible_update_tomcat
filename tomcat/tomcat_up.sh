#!/bin/bash


#if [[ $# -eq 2 ]] || [[ $# -eq 3 ]]; then
	#if [[ $3 == "-debug" ]]; then export ANSIBLE_STDOUT_CALLBACK=skippy; fi
	PLAYBOOK=$1
	TARGET=$2
        VER_UPDATE=$3
        #QUISOC=`whoami`
        #if [[ $QUISOC == "ibm-admin" ]]; then
                ansible-playbook $PLAYBOOK -e target=$TARGET -e "ver_to_update=$VER_UPDATE" -i inventario 
        #else
        #        echo "Ususari incorrecte! GFY!!" 
	#	exit 1
        #fi
#else
        echo "NUMERO DE PARAMETRES INCORRECTE"
#fi

