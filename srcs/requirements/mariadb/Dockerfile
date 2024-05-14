FROM debian:oldstable

RUN apt update -y
RUN apt install mariadb-server -y

COPY requirements/mariadb/tools/setup_db.sh /app/
RUN chmod 755 /app/setup_db.sh

CMD /app/setup_db.sh
