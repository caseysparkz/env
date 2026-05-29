# dotfiles

Installs my config files.

## Role Variables

### `dotfiles_subdirectories`

A list of directories to create prior to symlinking config files.

```yaml
dotfiles_subdirectories:
  - path: "{{ ansible_env.HOME }}/.config/SOMEDIRECTORY"
    mode: "0700"
```

### `dotfiles_symlinks`

A list of (config) files to symlink.

```yaml
dotfiles_symlinks:
  - src: "{{ role_path }}/files/config/SOMEFILE.conf
    dest: "{{ ansible_env.HOME }}/.config/SOMEFILE.conf
    mode: "0640"
```

## Example Playbook

```yaml
---
- hosts: "localhost"
  roles:
     - role: "caseysparkz.environment.dotfiles"
```

## License

GPL-2.0-or-later
