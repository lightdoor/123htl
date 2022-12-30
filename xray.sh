#!/bin/sh
if [ ! -f UUID ]; then
  UUID="6ddddb7d-9ccd-4c80-8504-4812b3794073"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

