#!/bin/bash

set -e

cd /data

cp -rf /tmp/feed-the-beast/* .
echo "eula=true" > eula.txt

if [[ ! -e server.properties ]]; then
    cp /tmp/server.properties .
fi

if [[ -n "$MOTD" ]]; then
    sed -i "/motd\s*=/ c motd=$MOTD" /data/server.properties
fi
if [[ -n "$LEVEL" ]]; then
    sed -i "/level-name\s*=/ c level-name=$LEVEL" /data/server.properties
fi
if [[ -n "$ONLINE" ]]; then
    sed -i "/online-mode\s*=/ c online-mode=$ONLINE" /data/server.properties
fi
if [[ -n "$PLAYERS" ]]; then
    sed -i "/max-players\s*=/ c max-players=$LEVEL" /data/server.properties
fi
if [[ -n "$GENERATOR" ]]; then
    sed -i "/generator-settings\s*=/ c generator-settings=$MOTD" /data/server.properties
fi
if [[ -n "$OPS" ]]; then
    echo $OPS | awk -v RS=, '{print}' >> ops.txt
fi

#java $JVM_OPTS -jar forge-*-universal.jar nogui
java $JVM_OPTS -jar forge-1.12.2-14.23.5.2854.jar nogui
