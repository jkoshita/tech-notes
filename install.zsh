#!/bin/zsh

if [ ! -d "/etc/firefox" ]; then
	mkdir /etc/firefox && mkdir /etc/firefox/policies
	echo "created '/etc/firefox' directory!\ncreated '/etc/firefox/policies' directory!"
fi

cp ./policies.json /etc/firefox/policies
echo "installed './policies.json' to '/etc/firefox/policies' directory!"
