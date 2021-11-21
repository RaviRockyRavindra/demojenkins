FROM centos:latest
MAINTAINER NewstarCorporation
RUN yum -y install httpd
COPY /home/ravindra/index.html /var/www/html/
CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
EXPOSE 80
