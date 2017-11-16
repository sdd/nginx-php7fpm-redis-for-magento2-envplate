FROM donamkhanh/nginx-php7fpm-redis-for-magento2:v4
MAINTAINER Scott Donnelly <scott@donnel.ly>

# get envplate to apply substitution in nginx config as it cat access env vars
RUN apt-get update && apt-get install -y curl
RUN curl -sLo /usr/local/bin/ep https://github.com/kreuzwerker/envplate/releases/download/v0.0.8/ep-linux && chmod +x /usr/local/bin/ep

COPY www.conf /etc/php/7.0/fpm/pool.d/www.conf
COPY default.conf /etc/nginx/conf.d/default.conf
COPY 10-opcache.ini /etc/php/7.0/fpm/conf.d/10-opcache.ini
COPY start.sh /root
RUN chmod 755 /root/start.sh

RUN echo "variables_order = \"EGPCS\"" >> /etc/php/7.0/fpm/php.ini
CMD ~/start.sh

WORKDIR /usr/share/nginx/html/
EXPOSE 80 443
