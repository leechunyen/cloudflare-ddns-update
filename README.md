# cloudflare-ddns-update
  This is a script to automatically update dns ipv4 record on CloudFlare

# How to get APItoken, zoneID and recordID
  ## APItoken
    Login in into CloudFlare account then goto MyProfile -> API Tokens create Edit zone DNS token

  ## zoneID
    Login in into CloudFlare account select website/domain to use\
    In the API session at right side Zone ID is thare

  ## recordID
    copy curl command below\
    \
    curl --request GET \
       --url https://api.cloudflare.com/client/v4/zones/{zone_id}/dns_records \
       --header 'Content-Type: application/json' \
       --header 'Authorization: Bearer {API_token}'\
    \
    replace {zone_id} and {API_token} to your zoneID and APItoken\
    run it on terminal then find the record name to use and copy the record id

# How to install
  ## Linux
    edit cloudflare-ddns-update.sh fill in the APItoken, zoneID and recordID\
    copy cloudflare-ddns-update.sh into /etc/
    copy cloudflare-ddns.service into /etc/systemd/system/\
    change owner to root
    set permission to 755

# Support to this project
  donate to me\
  [Donate Link](https://gogetfunding.com/open-source-project-and-library/)\
  THANK for your support