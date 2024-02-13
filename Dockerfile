FROM apache2
MAINTAINER 'Karthik'
RUN yum update -y
RUN yum install apache2 -y ,systemctl enable apache2


