#!/bin/bash

git clone https://github.com/backdrop/backdrop && \
cd backdrop && \
git checkout 1.12.0 && \
mysql -h database -u backdrop -pbackdrop -e "drop database if exists backdrop" && \
drush si --db-url="mysql://backdrop:backdrop@database/backdrop" && \
drush dl potx && \
drush scr ../enPotx.php && \
drush cc all && drush cc drush && \
drush potx
