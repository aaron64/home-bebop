source getCredential.sh ip_ein
ping $IP_EIN -c 1

ERROR_TEXT="Could not reach Ein"
return $?
