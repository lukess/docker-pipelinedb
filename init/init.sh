#!/bin/bash

su - pipeline -c "pipelinedb -D /mnt/pdb"
su - pipeline -c "pipeline -c \"CREATE EXTENSION pgcrypto;\""

