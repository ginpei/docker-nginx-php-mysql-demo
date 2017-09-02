docker run -d --rm --name my-db --env-file ./.env mysql:5.7
docker run -d --rm --name my-php --link my-db:db --env-file ./.env -p 9000:9000 -v C:\Users\Ginpei\Downloads\docker-nginx\static:/var/www/html hogephp
docker run -d --rm --name my-www --link my-php:php -p 80:80 -v C:\Users\Ginpei\Downloads\docker-nginx\www\default.conf:/etc/nginx/conf.d/default.conf -v C:\Users\Ginpei\Downloads\docker-nginx\static:/var/www/html nginx
