FROM centos

ARG user=timur

RUN yum -y install httpd

WORKDIR /var/www/html/

RUN useradd $user && chown $user:$user /var/www/html/ -R

USER $user

COPY index.html .

USER root

COPY cmd.sh .

RUN chmod +x cmd.sh

CMD ./cmd.sh
