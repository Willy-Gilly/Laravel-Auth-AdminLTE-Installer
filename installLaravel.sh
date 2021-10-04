1#!/bin/bash
cd ~/Desktop
echo "This script will generate a laravel app, with auth and the plugin AdminLTE, quit it by using ctrl+C if you don't want to make one."
echo 'It requires Composer and Laravel Installer.'
echo 'Enter the name of your Laravel-AdminLTE Application, note : it will places it in your Desktop Folder : '
read NEWAPP
CURFOLDER=`pwd`
echo "Creating folder $NEWAPP into $CURFOLDER"
laravel new $NEWAPP
echo "cd into $NEWAPP"
cd $NEWAPP
echo "require laravel ui"
composer require laravel/ui
echo 'require adminlte'
composer require jeroennoten/laravel-adminlte
echo 'php artisan commands'
php artisan ui bootstrap
php artisan ui bootstrap --auth
php artisan adminlte:install --force
php artisan adminlte:plugins install --force
php artisan adminlte:install --only=main_views --force
composer require willy-gilly/qswg
php artisan qswg:install
