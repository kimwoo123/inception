FROM debian:oldstable

RUN apt update -y
RUN apt install mariadb-server -y

COPY requirements/mariadb/tools/setup_db.sh requirements/mariadb/tools/wooseok.cnf /app/
RUN chmod 755 /app/setup_db.sh
RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
RUN mv /app/wooseok.cnf /etc/mysql/mariadb.conf.d/wooseok.cnf

CMD /app/setup_db.sh
