# Performance

This role makes minor tweaks in order to improve the performance of a Linux
system.

## Tasks

### [`filesystem`](./tasks/filesystem.yml)

* Sets sane defaults for `/tmp` in `/etc/fstab`.
* Starts `fstrim` `systemd` timer.

### [`install_dependencies`](./tasks/install_dependencies.yml)

Installs dependency files for other tasks.

### [`io_sched`](./tasks/io_sched.yml)

Configures the `iosched` kernel module and enables it to load at boot.

### [`reflector`](./tasks/reflector.yml)

**NB:** Arch Linux only.

Enables the `reflector` `systemd` service to update `pacman` mirrors.

### [`timeshift`](./tasks/timeshift.yml)

**NB:** Arch Linux only.

Installs and enables `timeshift` for automatic disk backups.
