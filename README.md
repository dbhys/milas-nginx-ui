# milas-nginx-ui

To build a frontend-web-server docker image with nginx.

Nginx version: 1.23.1, base image is alpine. added "bash, vim, unzip, curl", in order to do some operations in container. This version use template to support environment variables inside configuration.

And default Timezone is "Asia/Shanghai"

## How to use it
##### 1. Write your Dockerfile like this:

```
FROM dbhys/milas-nginx-ui:3.0.0-noroot
COPY ${your_dist_files} /deployments
EXPOSE 80

CMD nginx
```
##### 2. Build your image
```
build -t my-ui:1.0.0 .
```
