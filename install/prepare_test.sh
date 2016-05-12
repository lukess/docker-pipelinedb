#!/bin/bash

# enable pgcrypto
ln -s /usr/share/postgresql/${PGVER}/extension/pgcrypto* /usr/lib/pipelinedb/share/pipelinedb/extension/.
ln -s /usr/lib/postgresql/${PGVER}/lib/pgcrypto.so /usr/lib/pipelinedb/lib/pipelinedb/.

# test conf
mv /mnt/pdb/pipelinedb.conf /mnt/pdb/pipelinedb.conf.bak
mv /root/pipelinedb.conf /mnt/pdb/pipelinedb.conf
chown -R pipeline:pipeline /mnt/pdb/pipelinedb.conf
