#!/bin/bash

download_iso () {
	if ! [ "$1" ]
	then
		exit 1
	fi
	echo "Downloading from $1"
	curl -SL --progress-bar -o "./xubuntu.zip" "$1"
	unzip xubuntu.zip
	mv Xubuntu_20.04.1_VB_LinuxVMImages.COM.ova "$GUS_VM_ISO"
}

if ! [ -e "$GUS_VM_ISO" ]
then
	echo "ISO not found"
	download_iso "$GUS_ISO_URL"
else
	echo "ISO: $GUS_VM_ISO"	
fi

case "$GUS_HYPERVISOR" in
	"VirtualBox")
		if ! which VBoxManage
		then
			echo "VirtualBox not found"
			exit 1
		else
			./VBox/createvm.sh "$GUS_VM_ISO"
		fi
		;;
	*)
		echo "Unexpected Hypervisor"
		exit 1
esac
