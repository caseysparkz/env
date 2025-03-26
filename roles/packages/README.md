# Packages

This role makes additive changes to userspace, installing some necessary
packages and starting system services like Docker.

## Tasks

### [`install`](./tasks/install.yml)

Installs `apt`, `dnf`, `pacman`, and `pip` packages.

### [`system_services`](./tasks/system_services.yml)

Starts `systemd` sockets, services, and timers for installed packages.

### [`usermod`](./tasks/usermod.yml)

Creates requisite user groups and adds the system user.
