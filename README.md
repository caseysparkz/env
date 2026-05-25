# Preferred Environment

**This README contains important information; please it in its entirety before
running the playbook.**

These Ansible roles aim to harden Linux, improve system performance, and set up
my preferred user environment.

Its scripts, functions, aliases and packages are ones that I find useful and
enjoy having on any machine I regularly use.

While the repository is *intended* to be portable across Linux distributions,
this should not be assumed.  I only use Debian, Ubuntu, and Arch with regularity
and they are supported by this repository.

## Requirements

* `ansible`
* `ansible-playbook`

## Collection Overview

This playbook consists of four collections:

* [`environment`](./collections/caseysparkz/environment/README.md)
* [`performance`](./collections/caseysparkz/performance/README.md)
* [`security`](./collections/caseysparkz/security/README.md)

Further information on each collection's roles can be found in the corresponding
directory's README.

### Environment

The largest role in this playbook, and the least relevant for people who are not
me.

This role sets up my preferred user environments and configuration files for
Bash, Git, GnuPG, Gnu Screen, SSH, Vim, etc, as well as installing my own
certificate authority, and removing Snap.

**NB:** If you intend to use this role, first ensure that the git submodules are
initialized and up-to-date.

Roles:

* `bash`. Configures `bash` to my preference.
* `dotfiles`. Loads my dotfiles.
* `filesystem`. Sets up my home directory.
* `git`. Configures `git` to my liking.
* `gnupg`. Configures `gnupg`. Loads pubkeys, agent config, etc.
* `packages`. Installs system packages I like to have.
* `screen`. Configures Gnu `screen` to my preference.
* `scripts`. Installs personal scripts (`sh`/`python`).
* `ssh`. Sets up `~/.ssh/`.
* `vim`. Configures `vim` to my preference.

### Security

This playbook makes **significant** changes to kernel, grub, sysctl, filesystem
modes, system services.
It also removes system crash reporters and enables unattended upgrades for
_`security` packages only_.

Read and understand the tasks before running. Similarly: don't hold a lit
firework in your hand, wait an hour after eating to go swimming, and wear your
sunscreen.

Roles:

* `auditd`
* `defaultdeny`
* `disablecrashreporters`
* `fail2ban`
* `faillock`
* `kernel`
* `localfirewall`
* `passwords`
* `privilegeescalation`
* `ssh`
* `ulimit`
* `unattendedupgrades`

### Performance

Presently the smallest role. Enables the fstrim timer, IO schedulers.

Roles:

* `filesystem`
* `ioscheduler`
