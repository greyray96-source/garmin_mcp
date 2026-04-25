#!/bin/bash
mkdir -p ~/.garminconnect
echo "$GARMIN_TOKENS" > ~/.garminconnect/garmin_tokens.json
garmin-mcp --transport streamable-http --host 0.0.0.0 --port $PORT
