if [[ -z "$1" ]];
then
    echo -e  "Usage: ./build.sh <repository prefix>"
    echo -e "\twhere 'repository prefix' is the bit before the slash."
    echo -e "\te.g../build.sh jsmith => build sall your containers, nameing them all jsmith/<something>"
else
    docker build -t $1/nodejs nodejs
    docker build -t $1/redis redis_base
    docker build -t $1/redis_primary redis_primary
    docker build -t $1/redis_replica redis_replica
    docker build -t $1/logstash logstash
    docker build -t $1/elasticsearch elasticsearch
    docker build -t $1/kibana kibana
fi
