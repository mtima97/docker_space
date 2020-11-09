FROM centos

ARG user

RUN yum -y install httpd

WORKDIR /var/www/html/

RUN useradd $user && chown $user:$user /var/www/html/ -R

USER $user

COPY index.html .

USER root

CMD apachectl -DFOREGROUND
