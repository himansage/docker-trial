# docker-trial

## This repo contains hello world for docker & nodejs.


## Steps to run 
1. Replace username, imagename and tag in below command. (the syntax `<username>/<imagename>:<tag>` is not mandatory but a standard practice.)

        docker build -t <username>/<imagename>:<tag> .

2. The port `8080` can be replaced from whatever port used in application code (and exposed in dockerfile).

        docker run -p 80:8080 <username>/<imagename>:<tag>

3. Access the application in browser (http://localhost/ or http://localhost:80/)