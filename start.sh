#Start the Redis cluster
docker run -d -h redis_primary --name redis_primary $1/redis_primary
docker run -d -h redis_replica1 --name redis_replica1 --link redis_primary:redis_primary $1/redis_replica
docker run -d -h redis_replica2 --name redis_replica2 --link redis_primary:redis_primary $1/redis_replica

#Start the NodeJS app
docker run -d --name nodeapp -p 3000:3000 --link redis_primary:redis_primary $1/nodejs

#Start ElasticSearch
docker run -d -h elasticsearch --name elasticsearch -p 9200:9200 -p 9300:9300 $1/elasticsearch
#Start Logstash
docker run -d --name logstash --volumes-from nodeapp --volumes-from redis_primary --link elasticsearch:elasticsearch $1/logstash

#Start Kibana
docker run -d --name kibana -p 8888:8888 $1/kibana
