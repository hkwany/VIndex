#!/bin/bash

POC_PATH="./log4shell-poc/"

pip install --no-index --find-links $POC_PATH -r $POC_PATH/requirements.txt

cd $POC_PATH && docker build -t log4j-shell-poc .

cd $POC_PATH && zip -F jdk1.8.0_20.zip --out jdk1.8.0_20_full.zip && unzip jdk1.8.0_20_full.zip