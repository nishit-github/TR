
#!/bin/bash

sudo -s

yum -y update

yum install cifs-utils
mkdir $4
mount -t cifs //$1.file.core.windows.net/$3 $4 -o vers=3.0,username=$1,password=$2,dir_mode=0755,file_mode=0664

echo "hello from $HOSTNAME" > $4/$HOSTNAME.txt      
