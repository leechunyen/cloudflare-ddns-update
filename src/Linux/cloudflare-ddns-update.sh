#! /bin/bash

# scan the zone to get recordID
# execute bellow command to scan zone
# curl --request GET \
#   --url https://api.cloudflare.com/client/v4/zones/{zone_id}/dns_records \
#   --header 'Content-Type: application/json' \
#   --header 'Authorization: Bearer {API_token}'

# ==================================================
APItoken=""
zoneID=""
recordID=""
# ==================================================

# Get current IP using curl then store output into variable
currentIp=$(curl --request GET --url 'https://api.ipify.org')

# Prepair update curl cmd
cmdUpdateCurl="curl --request PATCH \
  --url https://api.cloudflare.com/client/v4/zones/$zoneID/dns_records/$recordID \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer $APItoken' \
  --data '{
  \"content\": \"${currentIp}\"
}'"

# execute update curl cmd then store output in to variable
res=$(eval "$cmdUpdateCurl")

# decode json from respond
output=$(echo $res | python -c "import json,sys;obj=json.load(sys.stdin);print(obj['success']);")

# display final output
echo "success: $output"
