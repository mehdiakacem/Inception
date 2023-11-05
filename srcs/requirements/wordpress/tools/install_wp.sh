#!/bin/bash

sleep 4

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp cli update
wp core download --locale=en_US --allow-root
wp config create --allow-root --dbname=$MYSQL_DATABASE --dbuser=$WORDPRESS_DB_USER --dbpass=$WORDPRESS_DB_PASSWORD --dbhost=$WORDPRESS_DB_HOST
wp core install --allow-root --url=makacem.42.fr --title=Inception --admin_user=supervisor --admin_password=strongpassword --admin_email=info@example.com

exec "$@"
