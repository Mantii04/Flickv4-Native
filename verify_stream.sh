#!/bin/bash
# Hannibal (TV) TMDB ID is 3978. Let's test S1E1.
TMDB_ID="3978"
TITLE="Hannibal"
YEAR="2013"
SEASON="1"
EPISODE="1"

echo "1. Fetching seed..."
SEED_JSON=$(curl -s -m 10 "https://api.wecollege.net/seed?mediaId=$TMDB_ID" -H "User-Agent: Mozilla/5.0")
SEED=$(echo "$SEED_JSON" | grep -o '"seed":"[^"]*' | cut -d'"' -f4)

if [ -z "$SEED" ]; then echo "Failed to get seed"; exit 1; fi

echo "2. Fetching encrypted source..."
ENC_RESP=$(curl -s -m 15 -G "https://api.wecollege.net/miami/sources" \
  --data-urlencode "title=$TITLE" \
  --data-urlencode "mediaType=tv" \
  --data-urlencode "year=$YEAR" \
  --data-urlencode "tmdbId=$TMDB_ID" \
  --data-urlencode "enc=2" \
  --data-urlencode "seed=$SEED" \
  --data-urlencode "seasonId=$SEASON" \
  --data-urlencode "episodeId=$EPISODE" \
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

# Extract playlist (M3U8 URL)
M3U8_URL=$(echo "$DEC_RESP" | grep -o '"playlist":"[^"]*' | cut -d'"' -f4 | sed 's/\\//g')

if [ -z "$M3U8_URL" ]; then 
  echo "Failed to extract M3U8. Decrypted JSON: $DEC_RESP"
  exit 1
fi

echo -e "\n✅ Successfully extracted M3U8:"
echo "$M3U8_URL"

echo -e "\n4. Testing if the M3U8 is blocked by the CDN (using Chrome headers)..."
HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" -I "$M3U8_URL" \
  -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36" \
  -H "Origin: https://player.videasy.to" \
  -H "Referer: https://player.videasy.to/")

echo "HTTP Status from CDN: $HTTP_STATUS"
if [ "$HTTP_STATUS" -eq 200 ]; then
  echo "🎉 The stream is accessible! OkHttpDataSource WILL work on Android."
elif [ "$HTTP_STATUS" -eq 403 ]; then
  echo "❌ 403 Forbidden. Cloudflare is blocking the request even with headers."
else
  echo "⚠️ Unexpected status: $HTTP_STATUS"
fi
