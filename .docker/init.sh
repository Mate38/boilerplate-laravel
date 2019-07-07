#! /bin/bash

rm -rf html

cp .env.example .env

composer install

php artisan key:generate

# php artisan migrate

# npm install

# npm run watch

chmod -R 777 storage

chmod -R 775 bootstrap/cache