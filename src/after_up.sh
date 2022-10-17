#!/bin/bash
sleep 60s
gitlab_pwd=$(sudo docker exec -it gitlab grep 'Password:' /etc/gitlab/initial_root_password|cut -d: -f2)

echo "APP_PASSWORD=$gitlab_pwd" >> /data/apps/gitlab/.env
