FROM centos

RUN yum -y install httpd

CMD apachectl -DFOREGROUND

WORKDIR /var/www/html/

COPY index.html .
