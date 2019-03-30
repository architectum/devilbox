#!/usr/bin/env bash
PROJECT="${1}";
mkdir -p "./data/www/${PROJECT}/htdocs"
echo -e "<?php\nphpinfo();\n" >> "./data/www/${PROJECT}/htdocs/index.php"
sudo cp /etc/hosts /etc/_bcp_hosts
sudo printf "\n%s %s\n" "127.0.0.1" "${PROJECT}.loc" >> /etc/hosts
