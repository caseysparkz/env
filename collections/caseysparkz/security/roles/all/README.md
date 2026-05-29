# all

Runs all security collecion roles.

## Dependencies

* `caseysparkz.security.auditd`
* `caseysparkz.security.defaultdeny`
* `caseysparkz.security.disablecrashreporters`
* `caseysparkz.security.fail2ban`
* `caseysparkz.security.faillock`
* `caseysparkz.security.kernel`
* `caseysparkz.security.passwords`
* `caseysparkz.security.privilegeescalation`
* `caseysparkz.security.ssh`
* `caseysparkz.security.ulimit`
* `caseysparkz.security.unattendedupgrades`

## Example Playbook

```yaml
---
- hosts: "all"
  roles:
     - role: "caseysparkz.security.all"
```

## License

GPL-2.0-or-later
