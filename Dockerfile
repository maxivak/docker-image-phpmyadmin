FROM phpmyadmin/phpmyadmin:4.6.2-3

#RUN apk add --no-cache bash

EXPOSE 80

ENTRYPOINT [ "/run.sh" ]
CMD ["phpmyadmin"]