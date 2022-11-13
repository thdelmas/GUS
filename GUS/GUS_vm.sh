#!/bin/bash

if ! [ -e "$GUS_VM_ISO" ]
then
	echo "ISO not found"
fi

if ! which VBoxManage
then
	echo "VirtualBox not found"
	exit 1
fi

./VBox/createvm.sh
