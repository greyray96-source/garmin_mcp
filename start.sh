#!/bin/bash
mkdir -p ~/.garminconnect
echo "$GARMINTOKENS_BASE64" | base64 -d > ~/.garminconnect/garmin_tokens.json
garmin-mcp --transport streamable-http --host 0.0.0.0 --port $PORT
