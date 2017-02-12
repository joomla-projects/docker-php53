FROM ubuntu:12.04

MAINTAINER Yves Hoppe

# Install
RUN apt-get update \
	&& apt-get install -y php5 php5-cli php5-memcache php5-memcached php5-xdebug wget \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && cd /usr/local/bin \
    && wget -O phpunit --no-check-certificate https://phar.phpunit.de/phpunit-4.8.27.phar \
    && chmod +x phpunit
