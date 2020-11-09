FROM centos

RUN yum -y install httpd

WORKDIR /var/www/html/

COPY index.html .

CMD apachectl -DFOREGROUND
