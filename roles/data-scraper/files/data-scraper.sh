#!/bin/bash
curl -XGET localhost:8880/nginx_status >> /tmp/nginx-status.log
cat /proc/loadavg | awk '{ print "{ \"load1\":"$1,",\n  \"load5\":" $2,",\n  \"load15:\":" $3 "\n}" }' >> /tmp/system-load.log
sleep 30
