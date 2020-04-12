FROM alpine

RUN apk update && apk add apache2 apache2-proxy apache2-lua apache2-mod-wsgi
