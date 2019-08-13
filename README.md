# milas-nginx-ui

To build a frontend-web-server docker image with nginx.

Nginx version: 1.15.2, base image is alpine. added "bash, vim, unzip, curl", 
in order to do some operations in container.

And default Timezone is "Asia/Shanghai"

## How to use it
##### 1. Write your Dockerfile like this:

```
FROM nginx:dbhys/milas-nginx-ui
COPY ${your_dist_files} /deployments
CMD nginx
```
##### 2. Build your image
```
build -t my-ui:1.0.0 .
```