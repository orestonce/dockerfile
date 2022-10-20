FROM guacamole/guacamole as temp_image_1
RUN echo "CREATE DATABASE IF NOT EXISTS guacamole;" > /tmp/initdb.sql
RUN echo "USE guacamole;" >> /tmp/initdb.sql
RUN /opt/guacamole/bin/initdb.sh --mysql >> /tmp/initdb.sql

FROM mysql as mysql_db
COPY --from=temp_image_1 /tmp/initdb.sql /docker-entrypoint-initdb.d/initdb.sql
