#!/bin/bash

set -e

echo "Preparing Host for LFS"
ssh -p4222 xubuntu@127.0.0.1 'chmod +x ./lfs/assets/version-check.sh'
ssh -p4222 xubuntu@127.0.0.1 'sudo ./lfs/assets/version-check.sh'
