#!/bin/sh

SECRET_KEY=$1
MACHINE_NAME=$2

/opt/takipi/etc/takipi-setup-machine-name $MACHINE_NAME

/opt/takipi/etc/takipi-setup-package $SECRET_KEY

#sudo service takipi stop
#sudo service takipi start
