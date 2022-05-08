## Laravel CMS Application

A simple content management system for demonstration purpose for CRUD functionality based on Laravel. This application uses below Laravel features.

-   Authentication.
-   Blade
-   Migrations
-   Seeding & factories
-   ORM DBMS Operations
-   Routes & Secure routes
-   Pagination

### Local Setup :

This project utilizes docker containers for local machine setup.
Setting up your development environment on your local machine :

```
// Please copy the env.example file from below command and add your database details in .env file.

$ cp .env.example .env

// Inside .env file you can mention any user and password of your choice it doesn't need to be already existing.

DB_USERNAME=
DB_PASSWORD=
```

After .env details are filled please run below docker and yarn command from project directory.

```
$ docker-compose up -d

$ yarn install

$ composer install --ignore-platform-reqs
```

Open http://localhost/ to access working application. For phpmyadmin go to http://localhost:8888

### Migrations :

You need to run the migrations with the seeds after your container is up. Run below command to open docker context cli then run migration command:

```
$ docker-compose exec app bash

$ php artisan migrate:refresh --seed
```

### Demo login info

Migrations will create existing admin users that you can use to sign in :
After running above command default user is generated. User can login to add post at /login path and also register at localhost/register
To access the admin area use following credentials

```
                email => adminjohn@gmail.com
                password => Laravelproject@1234

                email => userjoe@gmail.com
                password => Laravelproject@1234
```

### Troubleshooting guide

Upon receiving any permission related errors in the browser or while migration referring to file laravel.log doesn't have permission.

Please run the below command this is a known issue for first time setup with some versions & dependencies.

```
$ sudo chown -R $USER:www-data storage

//If issue is not fixed from above command then run below

$ sudo chmod -R 775 storage bootstrap/cache
```
