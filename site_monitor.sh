#!/bin/sh

if curl -s --location -X GET "$URL" -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:88.0) Gecko/20100101 Firefox/88.0' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H 'Accept-Language: it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3' --compressed -H 'Connection: keep-alive' -H 'Upgrade-Insecure-Requests: 1' -H 'Pragma: no-cache' -H 'Cache-Control: no-cache' -H 'TE: Trailers' | grep "$TRIGGER_WORD"
then
	curl -X POST -H 'Content-Type: application/json' -d '{"chat_id": '"$TELEGRAM_CHAT_ID"', "text":  "'"SITE $URL CHANGED\!"'"}' "https://api.telegram.org/bot$TELEGRAM_API_KEY/sendMessage"
else
	echo "no changes"
fi



