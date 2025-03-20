#!/bin/bash

# Check if key file is passed
if [ -z "$1" ]; then
  echo "Usage: ./encode-key.sh web-key1.pem"
  exit 1
fi

# Encode the PEM key into base64 single line
base64 -w 0 "$1" > "$1.b64"

echo "✅ Successfully encoded! Your base64 file is here: $1.b64"
