FROM ubuntu:16.04

RUN apt update
RUN DEBIAN_FRONTEND='noninteractive' apt install -y mysql-server apache2 php

CMD /etc/init.d/mysql start && apache2ctl -D FOREGROUND