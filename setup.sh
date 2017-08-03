#!/usr/bin/env bash
cd store.py
virtualenv .env
source .env/bin/activate
pip install -r requirements.txt
./run.sh create_data
deactivate
cd ..


cd store.js
npm install
cd ..
