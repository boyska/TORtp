TORtp
=====

# TOR Transparent Proxy:

"Tor has support for transparent proxy connections in addition to SOCKS connections. With traditional proxy methods like SOCKS, setting up the proxy server 
itself isn't enough; proxy-supporting applications must be chosen, and each application on each machine using the proxy must be specially configured by the user 
or network administrator to connect through the proxy. Sometimes this isn't possible because an application doesn't support SOCKS, or the administrator doesn't 
want users to know their traffic is being sent through a proxy. These problems can be avoided by using your operating system's packet filtering facility to 
redirect outbound connections into a transparent proxy, so named because its presence is intended to be invisible to clients." 
[read more: https://trac.torproject.org/projects/tor/wiki/doc/TransparentProxy]

TORtp is a easy way to implement Tor Transparent Proxy in your GNU/Linux Box.

# How does it works:

TORtp add custom TOR configuration file (/etc/tor/torrc) with integrate Tor's transparent functionality and add custom IPtables rules for redirect all outgoing 
traffic on Tor Netwokr.

# Required software:

 * iptables 1.3.5 or later
 * Tor 0.2.0.1-alpha or later  

# Installation:

./install.sh
