FROM ubuntu

WORKDIR /app

COPY nginx.conf /app
COPY index.html /app

RUN apt-get update -y && \
    apt-get install nginx
    nginx --version
    systemctl start nginx


CMD ["index.html"]