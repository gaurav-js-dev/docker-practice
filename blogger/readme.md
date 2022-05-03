# PHP Blog Application

**This a simple web blog with an Admin dashboard from which admin can create, edit and delete the blog posts including adding images and text content. Audience can navigate and view the post and also use contact form to send queries. This blog utilizes mainly PHP, MySQL & docker for functionality .**

This applications includes various features as below

- CRUD functionality with MYSQl database

- Image upload storage, handling & deletion.

- Authentication with secure storage of credentials.

- Pagination

- PHPMailer library for contact form.

## Local usage instructions

This application is containerized with docker compose. Before using it please ensure docker desktop software is installed on your local machine.

To run this project locally please clone this repo on your machine then from blogger directory run below command to build and start the container

1.  ```javascript
    docker-compose up --build -d
    ```

2.  ```javascript
    After docker build to use the application navigate to http://localhost:8000/
    ```

In order to use contact form to send emails from contact page please enable SMTP settings on your email accounts and fill below details inside **config.php** file with your email, password & host.

```javascript
define("SMTP_HOST", "mail.example.com");
define("SMTP_USER", "user@example.com");
define("SMTP_PASS", "secret pass");
```

### Admin User

USERNAME: dave
PASSWORD: secret

- http://localhost:8000/admin can be open to access admin page. If Admin user is not logging in with above credentials. Please run below code from mysql docker context or add an admin under user table in database with below username and password hash.

```javascript
INSERT INTO `user` (`id`, `username`, `password`) VALUES (NULL, 'dave', '$2a$04$qQyzO8o8G0z3EcezEjeaIennno0Xl4A2yw5fqerWloy0V8eipVHjm');
```
