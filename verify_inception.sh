#!/bin/bash
TMDB_ID="27205"
IMDB_ID="tt1375666"
TITLE="Inception"
YEAR="2010"

echo "1. Fetching seed..."
SEED_JSON=$(curl -s -m 10 "https://api.wecollege.net/seed?mediaId=$TMDB_ID" -H "User-Agent: Mozilla/5.0")
SEED=$(echo "$SEED_JSON" | grep -o '"seed":"[^"]*' | cut -d'"' -f4)

echo "2. Fetching encrypted source..."
ENC_RESP=$(curl -s -m 15 -G "https://api.wecollege.net/miami/sources" \
  --data-urlencode "title=$TITLE" \
  --data-urlencode "mediaType=movie" \
  --data-urlencode "year=$YEAR" \
  --data-urlencode "tmdbId=$TMDB_ID" \
  --data-urlencode "imdbId=$IMDB_ID" \
  --data-urlencode "enc=2" \
  --data-urlencode "seed=$SEED" \
  -H "User-Agent: Mozilla/5.0" \
  -H "Origin: https://player.videasy.to" \
  -H "Referer: https://player.videasy.to/")

if echo "$ENC_RESP" | grep -q '"error"'; then
  echo "API Error: $ENC_RESP"
  exit 1
fi

echo "3. Decrypting..."
DEC_RESP=$(curl -s -m 15 -X POST "https://enc-dec.app/api/dec-videasy" \
  -H "Content-Type: application/json" \
  -d "{\"text\":\"$ENC_RESP\",\"id\":\"$TMDB_ID\",\"seed\":\"$SEED\"}")

M3U8_URL=$(echo "$DEC_RESP" | grep -o '"playlist":"[^"]*' | cut -d'"' -f4 | sed 's/\\//g')

if [ -z "$M3U8_URL" ]; then 
  echo "Failed to extract M3U8. Decrypted JSON: $DEC_RESP"
  exit 1
fi

echo -e "\n✅ Successfully extracted M3U8:"
echo "$M3U8_URL"

echo -e "\n4. Testing if the CDN allows the download (mimicking OkHttp)..."
# Using -L to follow redirects, and Chrome headers
HTTP_STATUS=$(curl -s -L -o /dev/null -w "%{http_code}" "$M3U8_URL" \
  -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36" \
  -H "Origin: https://player.videasy.to" \
  -H "Referer: https://player.videasy.to/")

echo "HTTP Status from CDN: $HTTP_STATUS"
if [ "$HTTP_STATUS" -eq 200 ]; then
  echo "🎉 CDN ACCEPTS the request! The OkHttpDataSource fix WILL work."
elif [ "$HTTP_STATUS" -eq 403 ] || [ "$HTTP_STATUS" -eq 404 ]; then
  echo "❌ CDN BLOCKED. The stream link is dead or requires cookies."
else
  echo "⚠️ Unexpected status: $HTTP_STATUS"
fi
