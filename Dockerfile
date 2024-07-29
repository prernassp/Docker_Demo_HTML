FROM ubuntu

WORKDIR /app

COPY nginx.conf /app
COPY index.html /app

RUN sudo apt-get update -y && \
    sudo apt-get install nginx
    sudo nginx --version
    sudo systemctl start nginx

CMD ["index.html"]