# fail2ban

Install and configure fail2ban.

## Role Variables

### fail2ban_services

```yaml
fail2ban_services:
   - "sshd"
```

## Example Playbook

```yaml
---
- hosts: "servers"
  roles:
     - role: "caseysparkz.security.fail2ban"
```

## License

GPL-2.0-or-later
