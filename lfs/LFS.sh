#!/bin/bash

# Exit on error
set -e

cat <<EOF
	1.1. How to Build an LFS System
EOF

echo "Choose an already installed Linux distribution"
cd ../utils
./createvm.sh debian
./upload_assets.sh
cd -

echo "provide necessary programs, including a compiler, linker, and shell"
echo "create a new Linux native partition and file system"
echo "which packages and patches need to be downloaded"
echo "how to store them on the new file system"
echo "setup of an appropriate working environment"
echo "several important issues you need be aware of before beginning to work"
echo "installation of the initial tool chain, using cross compilation techniques to isolate the new tools from the host system"
echo "cross-compile basic utilities using the just built cross-toolchain"
echo '"chroot" environment and uses the previously built tools to build the additional tools needed to build and test the final system'
echo "the basic system configuration set up"
echo 'the kernel and boot loader set up'
echo 'reboot'
