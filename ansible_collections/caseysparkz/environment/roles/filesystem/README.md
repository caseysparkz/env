# filesystem

Creates directories in the home dir.

## Role Variables

## `filesystem_paths`

List of paths to create (nested under ~).

```yaml
---
filesystem_paths:
  - "Documents/git/"
  - "Pictures/backgrounds/"
  - "Pictures/screenshots/"
```

## Example Playbook

```yaml
---
- hosts: "localhost"
  roles:
     - role: "caseysparkz.environment.filesystem"
```

## License

GPL-2.0-or-later
