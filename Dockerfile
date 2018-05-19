FROM phpdrone/composer:php72-latest
RUN apk add --no-cache graphviz
ARG PHPDOC_VERSION=~2
RUN composer global require phpdocumentor/phpdocumentor:${PHPDOC_VERSION}
ENTRYPOINT [ "php", "/root/.composer/vendor/bin/phpdoc" ]
