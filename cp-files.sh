#!/bin/sh

VENDOR=lge
DEVICE=palman

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
rm -rf $BASE/*

for FILE in `cat proprietary-blobs.txt | grep -v ^# | grep -v ^$ `; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    cp "/home/aidfarh/Downloads/LG G Pad/2014-11-30--23-35-25 LRX21P.L004/system/$FILE" $BASE/$FILE
done

./setup-makefiles.sh
