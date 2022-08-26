FROM nginx:1.23-alpine

LABEL nginx-version="1.23.1" contains="bash, vim, unzip, curl" deploy-dir="/deployments"
MAINTAINER Milas

ENV TZ="Asia/Shanghai"

RUN apk update upgrade \
&& apk add --no-cache bash vim procps unzip curl \
&& mkdir -p /deployments

WORKDIR /deployments

COPY ./nginx.conf /etc/nginx
COPY ./conf.d /etc/nginx/conf.d
COPY ./templates /etc/nginx/templates
COPY ./index.html /deployments

CMD nginx