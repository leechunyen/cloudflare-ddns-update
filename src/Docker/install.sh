#!/bin/bash
sudo docker build -t cloudflare_ddns_update .
sudo docker run -d --name cloudflare_ddns_update --restart=always cloudflare_ddns_update