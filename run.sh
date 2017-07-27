#!/usr/bin/env bash

cd `dirname $(readlink -f $0)`

exec 3< <(store.py/run.sh 2>&1)
sed '/quit)$/q' <&3 ; cat <&3 &

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm use v5 2> /dev/null

cd store.js
npm test

