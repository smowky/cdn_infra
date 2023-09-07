# cdn_infra

## prerequisities
`apt update && apt install ansible git -y`

`git clone https://github.com/smowky/cdn_infra.git`


## passwords
get vault pass amd save it's content to  `vault_pass`


## run playbook
`ansible-playbook install.yml -i localhost --diff`



## dns
update dns records vars to your liking
- `grafana_server_name`
- `kibana_server_name`
- `nginx_default_server_name`
- `nginx_swarm_default_server_name`

## ssl


## logins
**kibana:**
  - user: elastic
  - pass: `swarm_elasticsearch_password` var in `vault_vars` file

**grafana**
  - user: admin
  - pass: `gf_security_admin_password` var in `vault_vars` file

## data scraper
**docs:**
  - https://robots.uc3m.es/installation-guides/install-daemontools.html
  - https://cr.yp.to/daemontools/start.html


**log files:**
  - /tmp/nginx-status.log
  - /tmp/system-load.log

## docker-swarm
### troubleshooting
  `msg: Unrecognized type <<class 'ansible.template.AnsibleUndefined'>> for ipaddr filter <value>`

 - check value of `swarm_internal_interface`

---

