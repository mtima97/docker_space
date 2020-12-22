FROM centos

LABEL maintainer="Timur Myngbay"

RUN yum -y install httpd && yum -y install php

WORKDIR /var/www/html/

COPY index.html .

COPY cmd.sh .

RUN chmod +x cmd.sh

CMD ./cmd.sh
