FROM phpdrone/composer:php72-latest
RUN composer global require phpdocumentor/phpdocumentor:~2 
RUN apk add --no-cache graphviz
ENTRYPOINT [ "php", "/root/.composer/vendor/bin/phpdoc" ]
