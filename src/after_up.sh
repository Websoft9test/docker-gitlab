#!/bin/bash
gitlab_pwd=$(sudo docker exec -it gitlab grep 'Password:' /etc/gitlab/initial_root_password)
sudo sed -i "s/APP_PASSWOR.*/APP_PASSWOR=$gitlab_pwd/g" /data/apps/gitlab/.env
sudo sed -i "s/APP_PASSWOR.*/APP_PASSWOR=$gitlab_pwd/g" /credentials/password.txt
