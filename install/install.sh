#!/bin/bash

apt-get update

apt-get install -y --no-install-recommends wget ca-certificates vim libicu55 libxml2 sgml-base xml-core sudo

# dumb-init
wget --no-check-certificate https://github.com/Yelp/dumb-init/releases/download/v1.0.1/dumb-init_1.0.1_amd64.deb
dpkg -i dumb-init_1.0.1_amd64.deb && rm dumb-init_1.0.1_amd64.deb

# install pdb
wget https://www.pipelinedb.com/download/${PDBVER}/ubuntu14 -O pipelinedb.deb
dpkg -i pipelinedb.deb && rm pipelinedb.deb
apt-get install -y --no-install-recommends postgresql-contrib-${PGVER}

useradd -m pipeline -s "/bin/bash"

mkdir -p /mnt/pdb
chown -R pipeline:pipeline /mnt/pdb

su - pipeline -c "pipeline-init --encoding=UTF8 -D /mnt/pdb"
