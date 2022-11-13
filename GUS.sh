#!/bin/bash

printf '\n⚙️  Welcome to G.U.S. ! 🚀\n\n'

source gus.env

#
# Place Holder choose OS Base 
#

echo 'Launching '"$GUS_METHOD"' mode'
if [ "$GUS_METHOD" == 'VM' ]
then
	./GUS/GUS_vm.sh
elif [ "$GUS_METHOD" == 'Docker' ]
then
	echo "	Not yet implemented"
	exit 1
	./GUS/GUS_docker.sh
else
	echo "Undefined"
	exit 1
fi
