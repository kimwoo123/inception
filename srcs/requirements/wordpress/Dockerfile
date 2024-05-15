FROM debian:oldstable

COPY requirements/wordpress/tools/set_wordpress.sh /app/
#COPY tools/set_wordpress.sh tools/wp-config.php /app/
RUN chmod 755 /app/set_wordpress.sh

RUN apt update -y
RUN apt install php php-curl php-fpm php-bcmath php-gd php-soap php-zip php-curl php-mbstring php-mysqlnd php-gd php-xml php-intl php-zip -y
RUN apt install wget -y

RUN mkdir -p /var/www/html

CMD /app/set_wordpress.sh
