#!/bin/bash

nginx_status_log='/tmp/nginx-status.log'
system_load_log='/tmp/system-load.log'


curl -XGET localhost:8880/nginx_status >> ${nginx_status_log}
cat /proc/loadavg | awk -v date="$(date +%F_%T )" '{ print "{ \"load1\":"$1,",\n  \"load5\":" $2,",\n  \"load15:\":" $3,",\n  \"timestamp\": \"" date"\"\n}"  }' >> ${system_load_log}
sleep 30
