#!/bin/bash

rsync -e "ssh -p4222 -i $HOME/.ssh/id_rsa" -r ../assets 'xubuntu@127.0.0.1':/home/xubuntu/lfs 2>&-
printf "\033[0;32mAssets Uploaded\033[0;0m\n"
