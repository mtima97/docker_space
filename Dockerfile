FROM centos

RUN yum -y install httpd

WORKDIR /var/www/html/

RUN useradd timur && chown timur:timur /var/www/html -R

USER timur

COPY index.html .

USER root

CMD apachectl -DFOREGROUND
