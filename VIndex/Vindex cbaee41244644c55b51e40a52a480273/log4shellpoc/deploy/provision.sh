#!/bin/bash

POC_PATH="./log4shell-poc/"

pip install --no-index --find-links $POC_PATH -r $POC_PATH/requirements.txt

cd $POC_PATH && docker build -t log4j-shell-poc .