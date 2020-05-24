FROM mysql:8.0

COPY init/* /docker-entrypoint-initdb.d/
COPY my.cnf /etc/mysql/

CMD ["mysqld"]
