#!/bin/bash
echo "1. Fetching seed for TMDB 123542..."
SEED_JSON=$(curl -s -m 10 "https://api.wecollege.net/seed?mediaId=123542" -H "User-Agent: Mozilla/5.0")
echo "Seed response: $SEED_JSON"
SEED=$(echo "$SEED_JSON" | grep -o '"seed":"[^"]*' | cut -d'"' -f4)

if [ -z "$SEED" ]; then echo "FAILED: Could not get seed."; exit 1; fi

echo -e "\n2. Fetching encrypted source..."
curl -s -m 15 -G "https://api.wecollege.net/miami/sources" \
  --data-urlencode "title=LINK CLICK" \
  --data-urlencode "mediaType=tv" \
  --data-urlencode "year=2021" \
  --data-urlencode "tmdbId=123542" \
  --data-urlencode "enc=2" \
  --data-urlencode "seed=$SEED" \
  --data-urlencode "imdbId=tt14976292" \
  -H "User-Agent: Mozilla/5.0" \
  -H "Origin: https://player.videasy.to" \
  -H "Referer: https://player.videasy.to/" | head -c 500
echo -e "\n\nDone."
