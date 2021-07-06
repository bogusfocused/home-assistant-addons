#!/usr/bin/env bashio
set -e
export CONFIG_DIR=/share/smartthingsbridge
mkdir -p $CONFIG_DIR
HOST=$(bashio::config 'broker_host')
PORT=$(bashio::config 'broker_port')
NAME=$(bashio::config 'name')
LOGIN=$(bashio::config 'login')
PASSWORD=$(bashio::config 'password')

cp /config.yml $CONFIG_DIR

sed -i "s/__HOST__/$HOST/g" $CONFIG_DIR/config.yml
sed -i "s/__PORT__/$PORT/g" $CONFIG_DIR/config.yml
sed -i "s/__NAME__/$NAME/g" $CONFIG_DIR/config.yml
sed -i "s/__USERNAME__/$LOGIN/g" $CONFIG_DIR/config.yml
sed -i "s/__PASSWORD__/$PASSWORD/g" $CONFIG_DIR/config.yml

smartthings-mqtt-bridge
