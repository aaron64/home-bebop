NAME="$(echo $1 | tr a-z A-Z)"
declare "${NAME}"="$(grep $1: creds.yml | tail -n1 | awk '{print $2}')"
