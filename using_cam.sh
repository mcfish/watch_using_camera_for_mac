#!/bin/sh

SELFIP=`/usr/sbin/ipconfig getifaddr en0`
UDPPROCESS=`/usr/sbin/lsof -iUDP -n -P | grep ${SELFIP} | awk '{print $1}'`
if [ "$UDPPROCESS" ]; then
    MESSAGE="${UDPPROCESS}でカメラ起動してるかも"
    osascript -e "display notification \"${MESSAGE}\" with title \"UDP Alert\""
fi
