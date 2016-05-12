#!/bin/bash

su - pipeline -c "pipeline-server -D /mnt/pdb"
su - pipeline -c "pipeline -c \"CREATE EXTENSION pgcrypto;\""

