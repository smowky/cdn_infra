# cdn_infra

## prerequisities
`apt update`

`apt install ansible git -y`

`git clone https://github.com/smowky/cdn_infra.git`

## run playbook 


`ansible-playbook install.yml -i localhost --diff`

## passwords
get vault pass amd save it's content to  `vault_pass`


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
