#!/bin/bash
sleep 60s
gitlab_pwd=$(sudo docker exec -it gitlab grep 'Password:' /etc/gitlab/initial_root_password|cut -d: -f2)
sudo sed -i "s/APP_PASSWOR.*/APP_PASSWOR=$gitlab_pwd/g" /data/apps/gitlab/.env
sudo sed -i "s/APP_PASSWOR.*/APP_PASSWOR=$gitlab_pwd/g" /credentials/password.txt
