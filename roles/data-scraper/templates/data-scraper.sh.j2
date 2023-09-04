#!/bin/bash

# set vars
nginx_status_log='/tmp/nginx-status.log'
system_load_log='/tmp/system-load.log'

# update local files
curl -XGET localhost:8880/nginx_status >> ${nginx_status_log}
cat /proc/loadavg | awk -v date="$(date +%F_%T )" '{ print "{ \"load1\":"$1,",\n  \"load5\":" $2,",\n  \"load15:\":" $3,",\n  \"timestamp\": \"" date"\"\n}"  }' >> ${system_load_log}

# put data to ES index
load_avg_index_data=$(cat /proc/loadavg | awk -v date="$(date +%F_%T )" '{ print "{ \"load1\":"$1,",\n  \"load5\":" $2,",\n  \"load15:\":" $3,",\n  \"timestamp\": \"" date"\"\n}"  }')

curl -s -X POST -k  -u "elastic:{{ swarm_elasticsearch_password }}" -H "Content-Type: application/json" https://localhost:9200/cdn-test-index/_doc  -d "${load_avg_index_data}"

sleep 30
