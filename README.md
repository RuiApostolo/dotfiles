Dotfiles
========

General options that work for all machines I work with.

After cloning this repo, run `install` to automatically set up the development
environment. Note that the install script is idempotent: it can safely be run
multiple times.


For the color scheme to look right, you will also need terminal-specific
support. The configuration for that, along with a whole bunch of other
machine-specific configuration, is located in [dotfiles_local][dotfiles_local] (private Repo).

First install
-------------

1. $ sudo apt install rxvt-unicode feh zsh git
2. Clone this repo: git clone git@github.com:RuiApostolo/dotfiles.git .dotfiles/
3. Remove by your original ~/.bashrc, etc. (and whatever other files install.conf.yaml is linking), from the home folder.
4. If running on WSL, remove incompatible lines from install.conf.yaml
5. $ ./install


Dotfiles uses [Dotbot][dotbot] for installation.

Used [init-dotfiles][init-dotfiles] to create my dotfiles repo.

[dotbot]: https://github.com/anishathalye/dotbot
[dotfiles_local]: https://github.com/RuiApostolo/dotfiles_local
[init-dotfiles]: https://github.com/Vaelatern/init-dotfiles
