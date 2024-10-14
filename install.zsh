#!/bin/zsh

if [ "$EUID" -ne 0 ]; then
	echo "Please run as root!"
	exit
fi

if [ ! -d "/etc/firefox" ]; then
	mkdir /etc/firefox && mkdir /etc/firefox/policies
	echo "created '/etc/firefox' directory!\ncreated '/etc/firefox/policies' directory!"
elif [ ! -d "/etc/firefox/policies" ]; then
	mkdir /etc/firefox/policies
	echo "created '/etc/firefox/policies' directory!"
fi

if [ -d "/etc/firefox/policies" ]; then
	cp ./policies.json /etc/firefox/policies
	echo "copied './policies.json' to '/etc/firefox/policies' directory!"
else
	echo "install failed!"
fi
