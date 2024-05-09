#!/bin/sh

cp ./cloudflare-ddns-update.sh /etc/cloudflare-ddns-update.sh
cp ./cloudflare-ddns /etc/init.d/cloudflare-ddns

chmod 755 /etc/cloudflare-ddns-update.sh
chmod 755 /etc/init.d/cloudflare-ddns

/etc/init.d/cloudflare-ddns enable
/etc/init.d/cloudflare-ddns start

echo 'Service Installed'