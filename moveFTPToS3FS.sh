#!/bin/bash
curlftpfs ftpuser:token/<oauthtoken>@ftp.url.com:21/ /mnt/putio
#might need sleep 1 here
sleep 10
#copy from putio TV & Movies folders to S3
cp -r /mnt/putio/TV/* /mnt/plex-wasabi-fileshare/TV/
cp -r /mnt/putio/Movies/* /mnt/plex-wasabi-fileshare/Movies/

#delete files in putio after transfer to free up space for future downloads
rm -rf /mnt/putio/TV/*
rm -rf /mnt/putio/Movies/*
fusermount -uz /mnt/putio
