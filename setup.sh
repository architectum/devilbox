#!/usr/bin/env bash
cp env-example .env 
echo -e "\nNEW_UID=$(id -u)\nNEW_GID=$(id -g)\n" >> .env
