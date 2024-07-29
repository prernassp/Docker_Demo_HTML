# Docker_Demo_HTML
Steps:
1. Create index.html file and add some simple code "Hello Docker"
2. Create nginx.conf file with below details to listen port number 80
    events {
        worker_connections 1024;
    }

    http {
        server {
            listen 80;

            location / {
                root /usr/share/nginx/html;
                index index.html;
            }
        }
    }
3. Create Dockerfile and add below instruction
