FROM nginx:alpine

RUN apk update
RUN apk upgrade

COPY ./ws-to-wss-proxy.conf.template /etc/nginx/templates/default.conf.template

RUN mkdir /cert
COPY /cert /cert
RUN chown nginx /cert
