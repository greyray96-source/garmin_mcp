#!/bin/bash
mkdir -p /root/.garminconnect
echo "$GARMINTOKENS_BASE64" | base64 -d > /root/.garminconnect/garmin_tokens.json
export GARMIN_MCP_PORT=$PORT
export HOST=0.0.0.0
exec garmin-mcp --transport sse
