#!/bin/sh

if [ $1 = "off" ]
then
	redshift -P -O 6500
else
	redshift -P -O $1
fi
