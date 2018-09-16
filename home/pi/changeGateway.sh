#!/bin/bash

sudo pon fona
sleep 10
ppp=$(ifconfig | grep "ppp0")

echo $ppp

if [[ ! -z $ppp ]]
then 
	echo "ppp is not empty!"
	sudo route delete default gw router.asus.com
	sudo route add default gw 10.64.64.64
fi


