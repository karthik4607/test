FROM httpd
MAINTAINER 'KTK'
RUN apt update
RUN apt install httpd -y ,systemctl enable httpd


