#! /usr/bin/bash

echo -n "Enter 1 for domain name or 2 for IP address:";
read CHOICE;
if [ "1" = $CHOICE ]
then
	echo -n "Enter domain name:";
	read DOMAIN_NAME;
	IP_ADDRESS=$(dig +short "$DOMAIN_NAME");
else
	echo -n "Enter IP address:";
	read IP_ADDRESS;
fi

curl "https://ipapi.co/$IP_ADDRESS/json/";
