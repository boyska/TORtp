#!/bin/bash
checktor=`which tor`
release=`lsb_release -cs`
if [ "$checktor" = "" ];then
	notify-send TORtp "Installazione di TOR" -i apport
	echo "deb http://deb.torproject.org/torproject.org $release main" > /etc/apt/sources.list.d/tor.list
	gpg --keyserver keys.gnupg.net --recv 886DDD89
	gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | apt-key add -
	apt-get update
	apt-get install -y tor
fi

# TORtp
cp --parent ./files/torrc /etc/tor/torrc
cp --parents ./files/tortp.desktop /home/$user/.local/share/applications
cp ./files/anonymous.ico /usr/share/pixmaps/
chown -R $user:$user /home/$user/.local/share/application/tortp.desktop
cp ./files/tortp.sh /usr/local/bin/

echo "Installazione avvenuta con successo, avvia TORtp dal menu"
