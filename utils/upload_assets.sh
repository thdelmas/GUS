#!/bin/bash

scp -P 4222 -r ../assets 'xubuntu@127.0.0.1':/home/xubuntu/lfs
ssh -p4222 xubuntu@127.0.0.1 'pwd && ls lfs && ./lfs/assets/remote_HW.sh & tree'
