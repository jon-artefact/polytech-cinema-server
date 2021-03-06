#!/bin/bash
docker-compose down
docker-compose up -d
docker exec -it cinema_symfony bash
php bin/console doctrine:database:create
php bin/console doctrine:schema:update --complete --force
php bin/console doctrine:fixtures:load -n
chmod -R o+w var
exit
