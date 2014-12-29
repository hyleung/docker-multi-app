FROM hyleung/redis
MAINTAINER Ho Yan Leung <hy.leung@gmail.com>
ENV REFRESHED_AT 2014-12-28

ENTRYPOINT ["redis-server","--logfile /var/log/redis/redis-replica.log","--slaveof redis_primary 6379"]
