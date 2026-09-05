#!/bin/sh
set -e

UUID="${UUID:?UUID environment variable is required}"

echo "Generating V2Ray config..."

sed "s/__UUID__/$UUID/g" /etc/v2ray/config.template.json > /etc/v2ray/config.json

exec v2ray run -config /etc/v2ray/config.json