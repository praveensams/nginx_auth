FROM centos 

MAINTAINER raj

RUN yum install epel-release -y \
    && yum install nginx -y  

COPY default.conf /etc/nginx/conf.d/

COPY .htpasswd /etc/

CMD ["nginx","-g","daemon off;"]


