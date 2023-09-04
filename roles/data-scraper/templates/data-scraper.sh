#!/bin/bash
curl -XGET localhost:8880/nginx_status >> /tmp/nginx-status.log
sleep 30
