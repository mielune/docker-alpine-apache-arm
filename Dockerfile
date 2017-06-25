FROM hypriot/rpi-alpine

ADD run.sh /run.sh
RUN apk --update add apache2 php5-apache2 curl \
    php5-json php5-phar php5-openssl php5-mysql php5-curl php5-mcrypt php5-pdo_mysql php5-ctype php5-gd php5-xml php5-dom php5-iconv \
    && rm -f /var/cache/apk/* \
    && mkdir /run/apache2 \
    && mkdir -p /opt/utils \
    && mkdir -p /var/www \
    && chmod a+x /run.sh

WORKDIR /var/www
EXPOSE 80

CMD /run.sh
