# Init

```shell
docker build -t php-mysqli ./docker/php
```

# Start

```shell
docker run -d --rm --name my-db --env-file ./.env mysql:5.7
docker run -d --rm --name my-php --link my-db:db --env-file ./.env -p 9000:9000 -v C:\Users\Ginpei\Downloads\docker-nginx\static:/var/www/html php-mysqli
docker run -d --rm --name my-www --link my-php:php -p 80:80 -v C:\Users\Ginpei\Downloads\docker-nginx\docker\www\default.conf:/etc/nginx/conf.d/default.conf -v C:\Users\Ginpei\Downloads\docker-nginx\static:/var/www/html nginx
```

# Stop

```shell
docker stop my-db
docker stop my-php
docker stop my-www
```
