#!/bin/bash

printf '\n⚙️  Welcome to G.U.S. ! 🚀\n\n'

source gus.env

echo "GUS_METHOD: $GUS_METHOD"
if [ "$GUS_METHOD" == 'VM' ]
then
	./GUS/GUS_vm.sh
elif [ "$GUS_METHOD" == 'Docker' ]
then
	echo "	Not yet implemented"
	./GUS/GUS_docker.sh
else
	echo "	Undefined"

