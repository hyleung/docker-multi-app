#Multi-app Docker Demo

This repo contains a mult-container app setup as outlined in chapter 6 of [The Docker Book](http://www.dockerbook.com).

The app consists of:

- one container running a NodeJs web app
- three containers running a  Redis cluster (primary + 2 replicas)
- one container running LogStash
- one container running ElasticSearch

