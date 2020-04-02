#!/bin/sh

git clone https://gitlab.com/nicolalandro/blender-cluster.git
cd blender-cluster
#docker-compose up

docker swarm init --advertise-addr <ip-address-of-master>

git clone https://gitlab.com/nicolalandro/blender-cluster.git
cd blender-cluster
docker stack deploy -c swarm-compose.yml blender_cluster
docker stack services blender_cluster
