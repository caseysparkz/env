# ssh

Hardens SSH/SSHD.

## Role Variables

### `ssh_config`

```yaml
---
ssh_config:
  - regexp: "(?i)^\\s*^AllowAgentForwarding"  # Turn off agent forwarding
    line: "AllowAgentForwarding no"
  - regexp: "(?i)^\\s*^X11Forwarding"  # Disable X11 forwarding
    line: "X11Forwarding no"
  - regexp: "(?i)^\\s*^HostbasedAuthentication"  # Disable host-based auth
    line: "HostbasedAuthentication no"
  - regexp: "(?i)^\\s*^ListenAddress"  # Limit connections to local iface
    line: "ListenAddress 192.168.125.52"
  - regexp: "(?i)^\\s*^PasswordAuthentication"  # Disable password auth
    line: "PasswordAuthentication no"
  - regexp: "(?i)^\\s*^PermitRootLogin"  # Disable root login
    line: "PermitRootLogin no"
  - regexp: "(?i)^\\s*^Port"  # Set non-default SSH port
    line: "Port 2200"
```

## Example Playbook

```yaml
---
- hosts: "servers"
  roles:
     - role: "caseysparkz.security.ssh"
```

## License

GPL-2.0-or-later
