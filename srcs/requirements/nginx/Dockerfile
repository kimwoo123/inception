FROM debian:oldstable

COPY requirements/nginx/conf requirements/nginx/tools/ /app/
RUN apt update -y
RUN apt install nginx -y

RUN mkdir /etc/nginx/ssl
RUN cp /app/privatekey.pem /etc/nginx/ssl/privatekey.pem
RUN cp /app/public.crt /etc/nginx/ssl/public.crt
RUN cp /app/conf /etc/nginx/sites-available/inception.conf
RUN ln -s /etc/nginx/sites-available/inception.conf /etc/nginx/sites-enabled/inception.conf

RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 443 80

CMD ["nginx", "-g", "daemon off;"]

