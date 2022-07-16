#!/bin/bash
#ensure s3 and ftp are mounted according to /etc/fstab setup

do_the_action () {
  #date +"PID: $$ Putio to S3 copy started at %H:%M:%S"
  mount -a
  #might need sleep 1 here
  sleep 10
  cp -r /mnt/putio/TV/* /mnt/plex-wasabi-fileshare/TV/
  cp -r /mnt/putio/Movies/* /mnt/plex-wasabi-fileshare/Movies/
  rm -rf /mnt/putio/TV/*
  rm -rf /mnt/putio/Movies/*
  #fusermount -uz /mnt/putio
  #date +"PID: $$ Putio to S3 copy finished at %H:%M:%S"
}

#check if this script is already running
previous_instance_active () {
  pgrep -fa bash | grep -v "^$$ " | grep --quiet '/bin/scripts/moveFTPToS3FS.sh' 
}

#skip running again if there is an existing run, helps avoid issues with crontab automation
if previous_instance_active
then 
  date +"PID: $$ Previous instance is still active at %H:%M:%S, aborting ... "
else 
  do_the_action
fi

