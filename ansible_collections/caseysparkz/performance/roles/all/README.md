# all

Runs all performance roles.

## Dependencies

* `caseysparkz.performance.filesystem`
* `caseysparkz.performance.ioscheduler`

## Example Playbook

```yaml
---
- hosts: servers
  roles:
     - { role: username.rolename, x: 42 }
```

## License

GPL-2.0-or-later
