# Preferred Environment

**This README contains important information; please it in its entirety before
running the playbook.**

These Ansible roles aim to:

* [security]    Harden Linux.
* [performance] Optimize system performance.
* [packages]    Installing some useful packages.
* [environment] Set up an environment that I like.

Its scripts, functions, aliases and packages are ones that I find useful and
enjoy having on any machine I regularly use.

While the repository is *intended* to be portable across Linux distributions,
this should not be assumed.  I only use Debian, Ubuntu, and Arch with regularity
and they are supported by this repository.

## Requirements

* `ansible`
* `ansible-playbook`

## Role Overview

This playbook consists of four roles:

* [`packages`](./roles/packages/README.md)
* [`security`](./roles/security/README.md)
* [`performance`](./roles/performance/README.md)
* [`environment`](./roles/environment/README.md)

Further information on each roles' tasks can be found in the corresponding
directory's README.

### Packages

### Security

This playbook makes **significant** changes to kernel, grub, sysctl, filesystem
modes, system services.
It also removes system crash reporters and enables unattended upgrades for
_`security` packages only_.

Read and understand the tasks before running. Similarly: don't hold a lit
firework in your hand, wait an hour after eating to go swimming, and wear your
sunscreen.

### Performance Tweaks

Presently the smallest role. Enables the fstrim timer, IO schedulers, some other
stuff. RTFM.

### Environment

The largest role in this playbook, and the least relevant for people who are not
me.

This role sets up my preferred user environments and configuration files for
Bash, Git, GnuPG, Gnu Screen, SSH, Vim, etc, as well as installing my own
certificate authority, and removing Snap.

**NB:** If you intend to use this role, first ensure that the git submodules are
initialized and up-to-date.
