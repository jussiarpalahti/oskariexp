FROM postgres:10
RUN localedef -i fi_FI -c -f UTF-8 -A /usr/share/locale/locale.alias fi_FI.UTF-8
ENV LANG fi_FI.utf8

RUN apt-get update -qqy && apt-get install -qqy \
postgis postgresql-10-postgis-2.5 postgresql-10-postgis-2.5-scripts python-psycopg2 sudo
