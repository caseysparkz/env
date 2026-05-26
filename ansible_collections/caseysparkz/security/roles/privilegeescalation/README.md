# privilegeescalation

Mitigates common privilege escalation techniques.

## Role Variables

### `privilegeescalation_sudotimeout`

Set the sudo timeout (minutes).

```yaml
---
privilegeescalation_sudotimeout: 3  # Set sudo timeout to 3 minutes.
```

### Example Playbook

```yaml
---
- hosts: "all"
  roles:
     - role: "caseysparkz.security.privilegeescalation"
```

## License

GPL-2.0-or-later
