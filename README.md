# docker-pipelinedb
[![](https://images.microbadger.com/badges/image/lukess/pipelinedb.svg)](http://microbadger.com/images/lukess/pipelinedb "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/lukess/pipelinedb.svg)](http://microbadger.com/images/lukess/pipelinedb "Get your own version badge on microbadger.com")

pipelinedb docker container - https://hub.docker.com/r/lukess/pipelinedb

* ubuntu 16.04
* pipelinedb 0.9.5
* init_dumb
* pgcrypto (by postgresql-contrib-9.5)

```
$ docker run -v /dev/shm:/dev/shm --name pdb -d lukess/pipelinedb
or
$ docker run -v /dev/shm:/dev/shm --name pdb -p 5432:5432 -d lukess/pipelinedb

$ docker exec -it pdb bash
```

# enable more extensions
```
sudo ln -s /usr/share/postgresql/9.5/extension/pg_buffercache* /usr/lib/pipelinedb/share/pipelinedb/extension/.
sudo ln -s /usr/lib/postgresql/9.5/lib/pg_buffercache.so /usr/lib/pipelinedb/lib/pipelinedb/.
create extension pg_buffercache;

## add shared_preload_libraries = 'pg_stat_statements' to pipelinedb.conf
sudo ln -s /usr/share/postgresql/9.5/extension/pg_stat_statements* /usr/lib/pipelinedb/share/pipelinedb/extension/.
sudo ln -s /usr/lib/postgresql/9.5/lib/pg_stat_statements.so /usr/lib/pipelinedb/lib/pipelinedb/.
create extension pg_stat_statements;
```
