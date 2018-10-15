. ./getCredential.sh pushover_app_key
. ./getCredential.sh pushover_user_key

curl -s \
	--form-string "token=$PUSHOVER_APP_KEY" \
	--form-string "user=$PUSHOVER_USER_KEY" \
	--form-string "message=$1" \
	https://api.pushover.net/1/messages.json
echo Message Sent
