# site-changer-check

Simple shell script for check changes in a specific website/page.

The variable required are:

export URL="https://foo.bar/" \
export TRIGGER_WORD="WORD to be triggered" \
export TELEGRAM_CHAT_ID="XXXXXXXXX" \
export TELEGRAM_API_KEY="XXXXXXXX:XXXXXXXXXXXXXXXXXXXXXX"

You can generate telegram api access using the BotFather tool on Telegram

You can run a cronjob inside a k8s environment or you can pull directly image from dockerhub: alexxanddr/site-changer-check:latest or executing directly the sh script with a cron.
