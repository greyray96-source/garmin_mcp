#!/bin/bash
mkdir -p /root/.garminconnect
echo "$GARMINTOKENS_BASE64" | base64 -d > /root/.garminconnect/garmin_tokens.json
exec garmin-mcp
