Role Name
=========

Installation and configuration of HashiCorp applications, based on documentation below:

- https://www.nomadproject.io/docs/install

Requirements
------------


Role Variables
--------------


Dependencies
------------

Testing
-----

Molecule i sused for testing. Initialization:
```bash
molecule init scenario -r <EXISTING ROLE>
```


Example Playbook
----------------

```yaml
    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }
```

License
-------

MIT

Author Information
------------------

Rune Rønneseth (rune.ronneseth@aiqu.no)
