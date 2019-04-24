FROM nginx:1.15.12-alpine

LABEL nginx-version="1.15.2" contains="bash, vim, unzip, curl" deploy-dir="/deployments"
MAINTAINER Milas

ENV TZ="Asia/Shanghai"

RUN apk update upgrade \
&& apk add --no-cache bash vim procps unzip curl
RUN mkdir -p /deployments

COPY ./nginx.conf /etc/nginx
COPY ./conf.d/default.conf /etc/nginx/conf.d
