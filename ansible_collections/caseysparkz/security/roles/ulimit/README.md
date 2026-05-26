# ulimit

Hardens ulimits.

## Role Variables

### `ulimit_values`

```yaml
---
ulimit_values:
  - domain: "*"  # Max. three concurrent logins
    type: "hard"
    item: "maxlogins"
    value: "3"
```

## Example Playbook

```yaml
---
- hosts: "all"
  roles:
     - role: "caseysparkz.security.ulimit"
```

## License

GPL-2.0-or-later
