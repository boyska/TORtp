#!/bin/bash

# Check user:
if [ "$(id -u)" = "0" ]; then
   echo "Non puoi eseguire lo script come root"
   exit 1
else
   user=`id -un`
fi

# TORtp
user=`id -un`
sudo apt-get install tor curl -y

# add custom torrc config file:
sudo cp ./files/torrc /etc/tor/

# add custom xfce-menu's entry:
cp ./files/tortp.desktop /home/$user/.local/share/applications/
sudo cp ./files/anonymous.ico /usr/share/pixmaps/
chown -R $user:$user /home/$user/.local/share/applications/tortp.desktop

# tortp script:
sudo cp ./files/tortp /usr/local/bin/

# send notify
notify-send TORtp "Installazione avvenuta con successo, avvia TORtp dal menu" -i /usr/share/pixmaps/anonymous.ico
