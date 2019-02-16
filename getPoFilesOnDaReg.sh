#!/bin/bash

# Get backdrop, potx, and run potx.
drush dlb backdrop --path=backdrop && \
cd backdrop && \
mysql -h database -u backdrop -pbackdrop -e "drop database if exists backdrop" && \
drush si --db-url="mysql://backdrop:backdrop@database/backdrop" && \
drush dl potx && \
drush scr ../enPotx.php && \
drush cc all && drush cc drush && \
drush potx

# You can uncomment this stuff if you need to download a new copy of the server.
# # Install the localization server to tst uplaod.
# cd /app && \
# git clone git@github.com:backdrop-ops/localization.git && \
# cd localization/www && \
# mysql -h database -u root -e "create database if not exists local" && \
# drush si --db-url=mysql://root:@database/local -y && \
# drush cc all && \
# drush st

# Create translation release and parse the po file.
cd /app/localization/www && \
drush scr /app/createReleaseAndUploadPo.php
