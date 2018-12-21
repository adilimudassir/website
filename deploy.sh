#!/usr/bin/env bash
git pull origin master

composer install --no-interaction --no-dev

php artisan optimize
php artisan migrate --force

php artisan cache:clear

php artisan config:clear
php artisan config:cache

php artisan route:clear
php artisan route:cache
