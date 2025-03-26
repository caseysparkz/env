# Environment

This role makes minor changes to userspace, implementing my preferred user
environment, including my scripts, rc-files and configs, and CA certificates.

## Tasks

### [Bash](./tasks/bash.yml)

Creates symbolic links to the following [files](./files/):

* `~/.profile`
* `~/.bash/`
* `~/.bashrc`
* `~/.bash_logout`

Creates `~/.bashrc.local`, for bash run-commands that should **not** exist in
this Git repository.

### [`ca_certificates`](./tasks/ca_certificates.yml)

Imports and installs my public CA certificates.

### [`dotfiles`](./tasks/dotfiles.yml)

Links portable and non-sensitive dotfiles to `~/.config`.

### [`git`](./tasks/git.yml)

Links `~/.gitconfig`.

### [`gnupg`](./tasks/gnupg.yml)

Creates `~/.gnupg/` and copies in:

* My public key.
* `gpg.conf`
* `gpg-agent.conf`

### [(Gnu) `screen`](./tasks/screen.yml)

Links `~/.screenrc`.

### [`scripts`](./tasks/scripts.yml)

Creates `~/.local/lib/` and links `~/.local/lib/scripts`.

### [`ssh`](./tasks/ssh.yml)

Creates `~/.ssh/` and copies:

* My public key.
* `~/.ssh/config`

### [`vim`](./tasks/vim.yml)

Links:

* `~/.vimrc`
* `~/.vim`
