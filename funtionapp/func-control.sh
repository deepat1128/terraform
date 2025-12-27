#!/bin/bash

ACTION=$1
RG="rg-function-dt"
APP="func-dt-demo-001"

if [ "$ACTION" == "start" ]; then
  az functionapp start --name $APP --resource-group $RG
elif [ "$ACTION" == "stop" ]; then
  az functionapp stop --name $APP --resource-group $RG
else
  echo "Usage: ./func-control.sh start|stop"
fi

