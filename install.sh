#!/bin/sh

# launcher.sh
# navigate to home directory, then to this directory, then execute python script, then back home

# Other deployment actions here. Want to install (or bounce) service last.

#if [ -f /lib/systemd/system/uploader.service ]; then
#else
#
#fi

sudo systemctl stop autowifi.service
sudo systemctl disable autowifi.service

python -m venv --system-site-packages env

sudo \cp -f ./uploader.service /lib/systemd/system/autowifi.service
sudo chmod 644 /lib/systemd/system/autowifi.service

mkdir /home/perpet/video
chmod +x /home/perpet/autowifi/openvino-app-script.sh

sudo systemctl enable autowifi.service
sudo systemctl start autowifi.service
