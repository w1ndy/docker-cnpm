FROM node:latest
RUN curl -I -vvvv https://registry.npm.taobao.org \
 && apt-get update
 && apt-get install dnsutils
 && dig registry.npm.taobao.org
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
CMD [ "cnpm" ]
