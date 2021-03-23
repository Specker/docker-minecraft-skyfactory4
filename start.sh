#!/bin/bash

set -e

cd /data

cp -rf /tmp/feed-the-beast/* .
echo "eula=true" > eula.txt

if [[ ! -e server.properties ]]; then
    cp /tmp/server.properties .
fi


if [[ -n "$SPAWN_PROTECTION" ]]; then
    sed -i "/spawn-protection\s*=/ c spawn-protection=$SPAWN_PROTECTION" /data/server.properties
fi
if [[ -n "$MAX_TICK_TIME" ]]; then
    sed -i "/max-tick-time\s*=/ c max-tick-time=$MAX_TICK_TIME" /data/server.properties
fi
if [[ -n "$GENERATOR_SETTINGS" ]]; then
    sed -i "/generator-settings\s*=/ c generator-settings=$GENERATOR_SETTINGS" /data/server.properties
fi
if [[ -n "$FORCE_GAMEMODE" ]]; then
    sed -i "/force-gamemode\s*=/ c force-gamemode=$FORCE_GAMEMODE" /data/server.properties
fi
if [[ -n "$ALLOW_NETHER" ]]; then
    sed -i "/allow-nether\s*=/ c allow-nether=$ALLOW_NETHER" /data/server.properties
fi
if [[ -n "$GAMEMODE" ]]; then
    sed -i "/gamemode\s*=/ c gamemode=$GAMEMODE" /data/server.properties
fi
if [[ -n "$BROADCAST_CONSOLE_TO_OPS" ]]; then
    sed -i "/broadcast-console-to-ops\s*=/ c broadcast-console-to-ops=$BROADCAST_CONSOLE_TO_OPS" /data/server.properties
fi
if [[ -n "$ENABLE_QUERY" ]]; then
    sed -i "/enable-query\s*=/ c enable-query=$ENABLE_QUERY" /data/server.properties
fi
if [[ -n "$PLAYER_IDLE_TIMEOUT" ]]; then
    sed -i "/player-idle-timeout\s*=/ c player-idle-timeout=$PLAYER_IDLE_TIMEOUT" /data/server.properties
fi
if [[ -n "$DIFFICULTY" ]]; then
    sed -i "/difficulty\s*=/ c difficulty=$DIFFICULTY" /data/server.properties
fi
if [[ -n "$SPAWN_MONSTERS" ]]; then
    sed -i "/spawn-monsters\s*=/ c spawn-monsters=$SPAWN_MONSTERS" /data/server.properties
fi
if [[ -n "$OP_PERMISSION_LEVEL" ]]; then
    sed -i "/op-permission-level\s*=/ c op-permission-level=$OP_PERMISSION_LEVEL" /data/server.properties
fi
if [[ -n "$PVP" ]]; then
    sed -i "/pvp\s*=/ c pvp=$PVP" /data/server.properties
fi
if [[ -n "$SNOOPER_ENABLED" ]]; then
    sed -i "/snooper-enabled\s*=/ c snooper-enabled=$SNOOPER_ENABLED" /data/server.properties
fi
if [[ -n "$LEVEL_TYPE" ]]; then
    sed -i "/level-type\s*=/ c level-type=$LEVEL_TYPE" /data/server.properties
fi
if [[ -n "$BROADCAST_CONSOLE_TO_OPS" ]]; then
    sed -i "/broadcast-console-to-ops\s*=/ c broadcast-console-to-ops=$BROADCAST_CONSOLE_TO_OPS" /data/server.properties
fi
if [[ -n "$HARDCORE" ]]; then
    sed -i "/hardcore\s*=/ c hardcore=$HARDCORE" /data/server.properties
fi
if [[ -n "$ENABLE_COMMAND_BLOCK" ]]; then
    sed -i "/enable-command-block\s*=/ c enable-command-block=$ENABLE_COMMAND_BLOCK" /data/server.properties
fi
if [[ -n "$MAX_PLAYERS" ]]; then
    sed -i "/max-players\s*=/ c max-players=$MAX_PLAYERS" /data/server.properties
fi
if [[ -n "$NETWORK_COMPRESSION_THRESHOLD" ]]; then
    sed -i "/network-compression-threshold\s*=/ c network-compression-threshold=$NETWORK_COMPRESSION_THRESHOLD" /data/server.properties
fi
if [[ -n "$MAX_WORLD_SIZE" ]]; then
    sed -i "/max-world-size\s*=/ c max-world-size=$MAX_WORLD_SIZE" /data/server.properties
fi
if [[ -n "$SERVER_PORT" ]]; then
    sed -i "/server-port\s*=/ c server-port=$SERVER_PORT" /data/server.properties
fi
if [[ -n "$SERVER_IP" ]]; then
    sed -i "/server-ip\s*=/ c server-ip=$SERVER_IP" /data/server.properties
fi
if [[ -n "$SPAWN_NPCS" ]]; then
    sed -i "/spawn-npcs\s*=/ c spawn-npcs=$SPAWN_NPCS" /data/server.properties
fi
if [[ -n "$ALLOW_FLIGHT" ]]; then
    sed -i "/allow-flight\s*=/ c allow-flight=$ALLOW_FLIGHT" /data/server.properties
fi
if [[ -n "$LEVEL_NAME" ]]; then
    sed -i "/level-name\s*=/ c level-name=$LEVEL_NAME" /data/server.properties
fi
if [[ -n "$VIEW_DISTANCE" ]]; then
    sed -i "/view-distance\s*=/ c view-distance=$VIEW_DISTANCE" /data/server.properties
fi
if [[ -n "$RESOURCE_PACK" ]]; then
    sed -i "/resource-pack\s*=/ c resource-pack=$RESOURCE_PACK" /data/server.properties
fi
if [[ -n "$RESOURCE_PACK" ]]; then
    sed -i "/resource-pack\s*=/ c resource-pack=$RESOURCE_PACK" /data/server.properties
fi
if [[ -n "$RESOURCE_PACK_SHA1" ]]; then
    sed -i "/resource-pack-sha1\s*=/ c resource-pack-sha1=$RESOURCE_PACK_SHA1" /data/server.properties
fi
if [[ -n "$WHITE_LIST" ]]; then
    sed -i "/white-list\s*=/ c white-list=$WHITE_LIST" /data/server.properties
fi
if [[ -n "$GENERATE_STRUCTURES" ]]; then
    sed -i "/generate-structures\s*=/ c generate-structures=$GENERATE_STRUCTURES" /data/server.properties
fi
if [[ -n "$ONLINE_MODE" ]]; then
    sed -i "/online-mode\s*=/ c online-mode=$ONLINE_MODE" /data/server.properties
fi
if [[ -n "$MAX_BUILD_HEIGHT" ]]; then
    sed -i "/max-build-height\s*=/ c max-build-height=$MAX_BUILD_HEIGHT" /data/server.properties
fi
if [[ -n "$LEVEL_SEED" ]]; then
    sed -i "/level-seed\s*=/ c level-seed=$LEVEL_SEED" /data/server.properties
fi
if [[ -n "$USE_NATIVE_TRANSPORT" ]]; then
    sed -i "/use-native-transport\s*=/ c use-native-transport=$USE_NATIVE_TRANSPORT" /data/server.properties
fi
if [[ -n "$PREVENT_PROXY_CONNECTIONS" ]]; then
    sed -i "/prevent-proxy-connections\s*=/ c prevent-proxy-connections=$PREVENT_PROXY_CONNECTIONS" /data/server.properties
fi
if [[ -n "$ENABLE_RCON" ]]; then
    sed -i "/enable-rcon\s*=/ c enable-rcon=$ENABLE_RCON" /data/server.properties
fi
if [[ -n "$MOTD" ]]; then
    sed -i "/motd\s*=/ c motd=$MOTD" /data/server.properties
fi
if [[ -n "$OPS" ]]; then
    echo $OPS | awk -v RS=, '{print}' >> ops.txt
fi
if [[ -n "$PRESTIGE" ]]; then
    sed -i "/B:"+"Prestige Enabled Default"+"\s*=/ c B:"+"Prestige Enabled Default"+"=$PRESTIGE" /data/server.properties

#java $JVM_OPTS -jar forge-*-universal.jar nogui
java $JVM_OPTS -jar forge-1.12.2-14.23.5.2854.jar nogui
