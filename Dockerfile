FROM phpmyadmin/phpmyadmin:4.6.2-3

RUN apk update
RUN apk add bash

EXPOSE 80
