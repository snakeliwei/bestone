#!/bin/bash
set -e
# Set app path
APP_NAME='golem'
APP_PATH=/home/deploy/bestone/$APP_NAME
PRO_PATH=/home/deploy/bestone

echo "Start deployment"
cd $APP_PATH

echo "Pulling source code..."
git fetch --all
git reset --hard origin/master

echo "Remove old container & Clean tmp/log file"
docker rm -f $(docker ps -a | grep $APP_NAME |awk '{print $1}')
echo "deploy" | sudo -S rm -rf $APP_PATH/log/* $APP_PAHT/tmp/* $APP_PATH/report/*

echo "Start new container"
cd $PRO_PATH
docker-compose up -d

echo "Finished."
cd $APP_PATH
#echo "$APP_NAME-master-$(git log -1|grep commit|awk '{print $2}'|cut -c1-8) has success deployed..." | mutt -s "The $APP_NAME has deployed success... " 15050239@qq.com

