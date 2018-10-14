./getCredential.sh ip_ein
ping $ip_ein

if [[ $? =~ 0 ]]; then
	echo "hi"
fi
