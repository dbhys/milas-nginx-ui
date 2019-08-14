FROM nginx:1.15.12-alpine

LABEL nginx-version="1.15.2" contains="bash, vim, unzip, curl" deploy-dir="/deployments"
MAINTAINER Milas

ENV TZ="Asia/Shanghai"

RUN apk update upgrade \
&& apk add --no-cache bash vim procps unzip curl \
&& mkdir -p /deployments
WORKDIR /deployments

COPY ./nginx.conf /etc/nginx
COPY ./default.conf /etc/nginx/conf.d
COPY ./index.html /deployments
