#!/bin/sh

/etc/init.d/cloudflare-ddns disable

rm -rf /etc/cloudflare-ddns-update.sh
rm -rf /etc/init.d/cloudflare-ddns

echo 'Service removed please restart OpenWRT'