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

````
2. After docker is successfully build to use the application navigate to  ```javascript
http://localhost:8000/
````

In order to use contact form to send emails from contact page please enable SMTP settings on your email accounts and fill below details inside **config.php** file with your email, password & host.

define('SMTP_HOST', 'mail.example.com');  
define('SMTP_USER', 'user@example.com');  
define('SMTP_PASS', 'secret pass');
