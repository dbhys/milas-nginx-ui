# base-alpine

To build a base alpine version, contains  "bash, vim, unzip, curl",
in order to do some operations in container.

And default Timezone is "Asia/Shanghai"

## How to use it
##### 1. Write your Dockerfile like this:

```
FROM dbhys/milas-nginx-ui
COPY ${your_dist_files} /deployments
EXPOSE 80
CMD nginx
```
##### 2. Build your image
```
build -t my-ui:1.0.0 .
```

1.0.x-noroot tags for the scene of docker user is not root