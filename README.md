# cloudflare-ddns-update
  This is a script to automatically update dns ipv4 record on CloudFlare every 3 second

# How to get APItoken, zoneID and recordID
  ## APItoken
  Login in to CloudFlare account then go to MyProfile -> API Tokens create Edit zone DNS token

  ## zoneID
  Login in to CloudFlare account select website/domain to use\
  In the API session at right side Zone ID is there

  ## recordID
  copy curl command below
    
    curl --request GET \
       --url https://api.cloudflare.com/client/v4/zones/{zone_id}/dns_records \
       --header 'Content-Type: application/json' \
       --header 'Authorization: Bearer {API_token}'
       
  replace {zone_id} and {API_token} to your zoneID and APItoken\
  run it on terminal then find the record name to use and copy the record id

# How to install
  ## Linux
  edit cloudflare-ddns-update.sh fill in the APItoken, zoneID and recordID\
  copy cloudflare-ddns-update.sh into /etc/\
  copy cloudflare-ddns.service into /etc/systemd/system/
  
  install required tools
    
  Debian based
  
    sudo apt-get install python curl -y
  
  RHEL based
  
    sudo yum install python curl -y
  
  set owner to root
  
    sudo chown root:root /etc/cloudflare-ddns-update.sh
    sudo chown root:root /etc/systemd/system/cloudflare-ddns.service
  
  set permission
  
    sudo chmod +x /etc/cloudflare-ddns-update.sh
    sudo chmod +x /etc/systemd/system/cloudflare-ddns.service
  
  reload daemon
  
    sudo systemctl daemon-reload
  
  set the service to auto start on startup
  
    sudo systemctl enable cloudflare-ddns
  
  start service now
  
    sudo systemctl start cloudflare-ddns

  ## Docker
  edit cloudflare-ddns-update.sh fill in the APItoken, zoneID and recordID
  
  set permission
  
    sudo chmod +x install.sh
  
  run install script
  
    sudo ./install.sh

  ## OpenWRT
  edit cloudflare-ddns-update.sh fill in the APItoken, zoneID and recordID

  set permission
  
    chmod +x install.sh

   run install script
  
    ./install.sh

## Supporting me
  [Donate Link](https://gogetfunding.com/open-source-project-and-library/)\
  Thank you for your support!
