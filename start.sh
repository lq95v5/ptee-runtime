#!/bin/bash 

GAME_PATH=$(cd $(dirname ${BASH_SOURCE[0]}); pwd)

echo $GAME_PATH

ls "$GAME_PATH"

export LD_LIBRARY_PATH="${GAME_PATH}/lib/lib":$LD_LIBRARY_PATH   
echo $LD_LIBRARY_PATH

arch=$(uname -m)

if [ "$arch" == 'x86_64' ]
then
    command "${GAME_PATH}/Torment64"
else
    command "${GAME_PATH}/Torment"
fi

# command "${GAME_PATH}/Torment64"


