FROM nginx

RUN apt-get update && apt-get install -y git \
 && rm -rf /var/lib/apt/lists/*

ADD nginx.conf /etc/nginx/nginx.conf

RUN git clone -b gh-pages https://github.com/Laverna/static-laverna /var/www/html
