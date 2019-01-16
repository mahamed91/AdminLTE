FROM trafex/alpine-nginx-php7
RUN rm -rf /var/www/html/*
ADD . /var/www/html
WORKDIR /var/www/html
RUN apk update && \
    apk add --no-cache npm git
RUN npm install -g bower 
RUN bower install --allow-root
EXPOSE 80

