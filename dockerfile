FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
ADD . /var/www/html
CMD echo "This container is being created via Dockerfile"
ENTRYPOINT apachectl -D FOREGROUND
ENV name DevOps
