#!/bin/bash
# TORtp
user=`id -un`
sudo apt-get install tor -y
sudo cp ./files/torrc /etc/tor/
cp ./files/tortp.desktop /home/$user/.local/share/applications/
sudo cp ./files/anonymous.ico /usr/share/pixmaps/
chown -R $user:$user /home/$user/.local/share/applications/tortp.desktop
sudo cp ./files/tortp.sh /usr/local/bin/
notify-send TORtp "Installazione avvenuta con successo, avvia TORtp dal menu" -i /usr/share/pixmaps/anonymous.ico
