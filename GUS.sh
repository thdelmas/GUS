#!/bin/bash

printf '\n⚙️  Welcome to G.U.S. ! 🚀\n\n'

source gus.env

#
# Place Holder choose OS Base 
#

echo 'Launching '"$GUS_METHOD"' mode'

case "$GUS_METHOD" in
	'VM')
		./GUS/GUS_vm.sh
		;;
	'Docker')
		echo "	Not yet implemented"
		exit 1
		./GUS/GUS_docker.sh
		;;
	*)
		echo "Undefined"
		exit 1
esac
