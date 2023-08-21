# cdn_infra

Run with

`ansible-playbook install.yml --diff`

## passwords
get vault pass amd save it's content to  `vault_pass`

## boostrap
either run localy on target node or update node IP and run `bootstrap` playbook
`ansible-playbook --ask-pass --limit=cdn.psylogical.org bootstrap.yml`
