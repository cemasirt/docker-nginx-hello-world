FROM nginx:mainline-alpine
RUN rm /etc/nginx/conf.d/*
ADD helloworld.conf /etc/nginx/conf.d/
ADD index.html /usr/share/nginx/html/
RUN apk update
RUN apk upgrade
HEALTHCHECK CMD curl --fail http://localhost:80/ || exit 1
