HashiCluster
#

Installation and configuration of HashiCorp applications, based on documentation below:

* https://www.consul.io/docs/install
* https://www.vaultproject.io/docs/install
* https://www.nomadproject.io/docs/install

## Role Philosophy

Requirements
##

- Supported Linux OS
- AMD64 CPU

Role Variables
##

The role uses variables defined in these 3 places:

- `defaults/main.yml` (default parameters for role)
- `vars/*.yml` (primarily OS/distributions specific variables)

### `use_linux_repository`

- Description: Install from official HashiCorp repository
- Default value: true

### `create_config`

- Description: Override default configuration-files with role-variables
- Default value: true

### `config_override_consul`

- Description: Consul configuration settings, in yaml-format. Will create .json configuration file
- Default value: {}

### `config_override_vault`

- Description: Vault configuration settings, in yaml-format. Will create .json configuration file
- Default value: {}

### `config_override_nomad`

- Description: Nomad configuration settings, in yaml-format. Will create .json configuration file
- Default value: {}

### `consul_package`

- Description: Package to install. TODO: Make versioning work for multiple version-formats
- Default value: consul

### `consul_install`

- Description: 
- Default value: true

### `consul_service_configure`

- Description: 
- Default value: true

### `consul_service_start`

- Description: 
- Default value: true

### `vault_package`

- Description: 
- Default value: vault

### `vault_install`

- Description: 
- Default value: true

### `vault_service_configure`

- Description: 
- Default value: true

### `vault_service_start`

- Description: 
- Default value: true

### `nomad_package`

- Description: 
- Default value: nomad

### `nomad_install`

- Description: 
- Default value: true

### `nomad_service_configure`

- Description: 
- Default value: true

### `nomad_service_start`

- Description: 
- Default value: true

Dependencies
##

Testing
##

Molecule & github pipeline is used for testing. Local Initialization:

```bash
molecule init scenario -r <EXISTING ROLE>
```

Example Playbook
##

```yaml
    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }
```

License
##

MIT

Author Information
##

Rune Rønneseth (rune.ronneseth@kred.no)
