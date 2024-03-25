FROM kstk4607/new:latest
MAINTAINER 'Karthik'
WORKDIR .
COPY sample.html /usr/share/nginx/html/
RUN rm -rf /usr/share/nginx/html/index.html
RUN mv /usr/share/nginx/html/sample.html /usr/share/nginx/html/index.html && chmod 755 /usr/share/nginx/html/index.html
RUN service nginx restart
EXPOSE 80



