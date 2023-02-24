FROM rupeshsaini09/centos
RUN yum install httpd unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/adpitor.zip /var/www/html
WORKDIR /var/www/html
RUN unzip adpitor.zip
RUN rm -rf adpitor.zip
RUN cp -rf adpitor-html/* .
RUN rm -rf adpitor-html
EXPOSE 80
CMD httpd -DFOREGROUND
