#!/usr/bin/env bash
echo updating branch $1...
cd /srv/mysite.com/$1/application
git pull
touch tmp/restart.txt
