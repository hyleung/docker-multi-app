#Multi-app Docker Demo

This repo contains a mult-container app setup as outlined in chapter 6 of [The Docker Book](http://www.dockerbook.com).

The app consists of:

- one container running a NodeJs web app
- three containers running a  Redis cluster (primary + 2 replicas)
- one container running LogStash
- one container running ElasticSearch
- one container running Kibana

##Building the images

    ./ build.sh <repository prefix>

...where the "repository prefix" is the bit before the slash. For example `./ build.sh jsmith` will tag your Docker images `jsmith/nodejs`, `jsmith/redis`, etc.

##Starting the containers

    ./ start.sh <repository prefix>

##Stopping and removing all containers

    ./ stop.sh

[Note: this script will stop and remove **all** containers]
