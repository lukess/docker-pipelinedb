# docker-pipelinedb
[![](https://imagelayers.io/badge/lukess/pipelinedb:latest.svg)](https://imagelayers.io/?images=lukess/pipelinedb:latest 'Get your own badge on imagelayers.io')

pipelinedb docker container - https://hub.docker.com/r/lukess/pipelinedb

* ubuntu 16.04
* pipelinedb 0.9.3
* init_dumb
* pgcrypto (by postgresql-contrib-9.5)

```
$ docker run -v /dev/shm:/dev/shm --name pdb -d lukess/pipelinedb
$ docker exec -it pdb bash
```
