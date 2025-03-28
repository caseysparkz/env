# Security

This role makes **significant** changes to kernel, grub, sysctl, filesystem
modes, and system services in order to improve the security of your Linux
system.

## Tasks

### [`auditd`](./tasks/auditd.yml)

Configures `auditd` per [/etc/audit/rules.d/audit.rules](./files/audit.rules)

### [`filesystem`](./tasks/filesystem.yml)

Hardens the filesystem by:

* Disabling coredump storage.
* Ensuring fstab uses: `nodev`, `noexec`, `nosuid`.
* Setting directory mode to 700 for import directories, including user home.
* Removing write permission for executables.
* Changing owner root:root, and mode for sensitive files in `/etc`.
* Setting umask 027 and ulimit in `/etc/profile`
* Setting umask 027 for shell run-command files.
* Removing rwx permissions for group/others on user home directory.

### [`firewalld`](./tasks/firewalld.yml)

Hardens layer three by:

* Blocking all incoming network connections via `firewalld`

### [`kernel`](./tasks/kernel.yml)

Hardens the kernel by:

* Securing sysctl variables.
* Securing GRUB flags.
* Loading the `jitterentropy_rng` kernel module.

### [`privilege_escalation`](./tasks/privilege_escalation.yml)

Secures common binaries used for privilege escalation by:

* Disabling root access via console devices.
* Setting mode to 700 for `su` and `pkexec` binaries.
* Setting the `sudo` timeout to 1.

### [`ssh`](./tasks/ssh.yml)

Hardens SSH by:

* Disabling host-based authentication.
* Disabling root login.

### [`ulimit`](./tasks/ulimit.yml)

Sets sane PAM user limits.
