#!/usr/bin/env bash
PROJECT="${1}";

mkdir -p "./data/www/${PROJECT}/htdocs"
printf "<?php\n%s\n" "phpinfo();" >> "./data/www/${PROJECT}/htdocs/index.php"

sudo chown -R ${USER} ./data/www/test
sudo cp /etc/hosts /etc/_bcp_hosts

sudo printf "\n%s %s\n" "127.0.0.1" "${PROJECT}.loc" >> /etc/hosts
