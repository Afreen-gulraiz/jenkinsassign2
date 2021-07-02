FROM ubuntu
RUN apt-get update && DEBIAN_FRONTEND="noninteractive" TZ="Asia/Kolkata" apt-get install -y tzdata
RUN apt-get install -y apache2
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
