FROM phpdrone/composer:php72-latest
RUN apk add --no-cache graphviz
RUN composer global require phpdocumentor/phpdocumentor:~2.9 
ENTRYPOINT [ "php", "/root/.composer/vendor/bin/phpdoc" ]
