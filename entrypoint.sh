#!/bin/bash
set -e
mkdir -p /root/.garminconnect
echo "$GARMINTOKENS_BASE64" | base64 -d > /root/.garminconnect/garmin_tokens.json
exec garmin-mcp --help 2>&1 | head -50 && sleep 60
