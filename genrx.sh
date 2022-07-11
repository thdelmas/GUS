#!/bin/bash

EMAILS='
- thdelmas@thdelmas.dev
'
WELCOME_MESSAGE="
Welcome to GenRX

Don't forget to read the documentation
Don't to hesitate to reach out for any help:
$EMAILS"

echo "$WELCOME_MESSAGE"

echo "Creating Host"
#create_host.sh

echo "Launching remote building"
#launch_generation.sh
