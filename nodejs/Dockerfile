FROM ubuntu:14.04
MAINTAINER: Ho Yan Leung <hy.leung@gmail.com>
ENV REFRESHED_AT 2014-12-27

RUN apt-get -yqq update
RUN apt-get -yqq install nodejs npm 
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN mkdir -p /var/log/nodeapp

ADD nodeapp /opt/nodeapp

WORKDIR /opt/nodeapp

RUN npm install

VOLUME ["/var/log/nodeapp"]

EXPOSE 3000

ENTRYPOINT ["nodejs","server.js"]
