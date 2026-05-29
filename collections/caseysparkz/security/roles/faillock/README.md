# faillock

Configures `faillock`.

## Role Variables

### `faillock_config`

A list of dictionaries with find/replace regex strings.

```yaml
---
faillock_config:
  - regex: "dir = "
    string: "dir = /var/run/faillock"
  - regex: "audit"
    string: "audit"
  - regex: "silent"
    string: "# silent"
  - regex: "no_log_info"
    string: "# no_log_info"
  - regex: "local_users_only"
    string: "local_users_only"
  - regex: "deny = "
    string: "deny = 3"
  - regex: "fail_interval"
    string: "fail_interval = 900"
  - regex: " unlock_time = "
    string: "unlock_time = 180"
  - regex: "even_deny_root"
    string: "even_deny_root"
  - regex: "root_unlock_time = "
    string: "root_unlock_time = 30"
  - regex: "admin_group"
    string: "admin_group = sudo"
```

## Example Playbook

```yaml
---
- hosts: "all"
  roles:
     - role: "caseysparkz.security.faillock"
```

## License

GPL-2.0-or-later
