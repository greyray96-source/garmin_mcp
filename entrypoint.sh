#!/bin/bash
mkdir -p /root/.garminconnect
echo "$GARMINTOKENS_BASE64" | base64 -d > /root/.garminconnect/garmin_tokens.json
garmin-mcp --help > /tmp/help.txt 2>&1
cat /tmp/help.txt
echo "=== HELP OUTPUT ABOVE ==="
sleep 60
