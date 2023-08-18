#!/bin/bash

date=$(date +"%d-%m-%Y")

docker service ls --format "{{json .}}"  > /tmp/filebeat-input-docker-service-ls-$date.log
