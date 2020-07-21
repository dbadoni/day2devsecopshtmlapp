FROM centos
# using centos base image here and will be installing httpd
MAINTAINER deepak
RUN yum install httpd -y 
WORKDIR /var/www/html/
#changing workdir during build time , its like cd cmd
ADD . .
#  src dest 
EXPOSE 80
# default httpd port
ENTRYPOINT httpd -DFOREGROUND
# start web server as default process

