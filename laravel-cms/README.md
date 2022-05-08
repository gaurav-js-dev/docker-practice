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

Setting up your development environment on your local machine :

```
// Please copy the env.example file from below command and add your database details in .env file.

$ cp .env.example .env

// Inside .env file you can mention any user and password of your choice it doesn't need to be already existing.

DB_USERNAME=
DB_PASSWORD=
```

After .env details are filled please run below docker command as this project utilizes docker containers for local machine setup :

```
*docker-compose up -d
```

### Migrations :

You need to run the migrations with the seeds after your container is up. Run below command to open docker context cli then run migration command:

```
docker-compose exec app bash

php artisan migrate:refresh --seed

```

Migrations will create existing admin users that you can use to sign in :

### Demo login info

After running above command default user is generated. User can login to add post at /login path and also register at /register.
To access the admin area use following credentials

```
                email => adminjohn@gmail.com,
                password => Laravelproject@1234

                email => userjoe@gmail.com,
                password => Laravelproject@1234,
```
