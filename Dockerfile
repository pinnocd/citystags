FROM httpd:latest
ENV MYSQL_DB_USERNAME=ddd \
    MYSQL_DB_PWD=fred
RUN mkdir -p /app/src
WORKDIR /app/src
COPY . /usr/local/apache2/htdocs/
