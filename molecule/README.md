# MOLECULE | ANSIBLE-ROLE-HASHICLUSTER

```bash
# Initialize molecule for new role
molecule init role <role-name> --template <template-path>

# Initialize molecule for existing role
molecule init scenario --scenario-name <example: centos> --role-name <role-name>

# Example use, for testing scenario 'centos'
molecule converge -s centos
```