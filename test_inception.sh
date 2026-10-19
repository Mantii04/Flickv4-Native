#!/bin/bash
SEED_JSON=$(curl -s -m 10 "https://api.wecollege.net/seed?mediaId=27205" -H "User-Agent: Mozilla/5.0")
SEED=$(echo "$SEED_JSON" | grep -o '"seed":"[^"]*' | cut -d'"' -f4)

curl -s -m 15 -G "https://api.wecollege.net/miami/sources" \
  --data-urlencode "title=Inception" \
  --data-urlencode "mediaType=movie" \
  --data-urlencode "year=2010" \
  --data-urlencode "tmdbId=27205" \
  --data-urlencode "enc=2" \
  --data-urlencode "seed=$SEED" \
  -H "User-Agent: Mozilla/5.0" \
  -H "Origin: https://player.videasy.to" \
  -H "Referer: https://player.videasy.to/" | head -c 300
echo -e "\n\nDone."
