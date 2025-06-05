# packages

Installs my preferred packages.

## Role Variables

### `packages_apt`

```yaml
---
packages_apt:
  - name: "containerd"
  - name: "dirmngr"
  - name: "dnsutils"
  - name: "docker"
  - name: "fwupd"
  - name: "gnupg-agent"
  - name: "gnupg2"
  - name: "nmap"
  - name: "wget"
```

### `packages_dnf`

```yaml
---
packages_dnf:
  - "cryptsetup"
  - "dirmngr"
  - "docker"
  - "fwupd"
  - "nmap"
  - "wget"
```

### `packages_pacman`

```yaml
---
packages_pacman:
  - "docker"
  - "fwupd"
  - "github-cli"
  - "gnupg"
  - "wget"
```

## Example Playbook

```yaml
---
- hosts: "localhost"
  roles:
     - role: "caseysparkz.environment.packages"
```

## License

GPL-2.0-or-later
