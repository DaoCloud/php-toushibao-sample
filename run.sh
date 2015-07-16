#!/bin/bash

cd /data/smart_agent

chmod u+x ./*.sh ./plugins/*/*.sh 
./plugins/SendProxy/SendProxy.sh start 
./SmartAgent.sh start 

exec apache2 -D FOREGROUND