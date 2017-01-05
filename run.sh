#!/usr/bin/env bash
exec 3< <(store.py/run.sh 2>&1)
sed '/quit)$/q' <&3 ; cat <&3 &
cd store.js
npm test
