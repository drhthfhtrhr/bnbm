#!/bin/sh
if [ ! -f UUID ]; then
  UUID="2b87fac1-6e73-43d4-b771-2af822b5b3d5"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

