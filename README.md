# My Dot Files

These are config files to set up a system the way I like it. It uses
[zsh](https://github.com/tonk/dotfiles/zsh) and [tmux](https://github.com/tonk/dotfiles/tmux)
configuration files.

I am running this on Linux and Mac OS X

## Installation

~~~~~~~~~~{.terminal}
git clone git://github.com/tonk/dotfiles ~/.dotfiles
cd ~/.dotfiles
make install
~~~~~~~~~~

But be **very** carefull. This **will** overwrite what you have got now!!

After installing, open a new terminal window to see the effects.

Feel free to customize the files file to match your preference.

## Uninstall

To remove the dotfile configs, run the following commands. Be certain to double
check the contents of the files before removing so you don't lose custom
settings.

```terminal
rm ~/.zshenv
rm ~/.zshprofile
rm -rf ~/.zsh
#
rm ~/.tmux.conf
rm ~/.gitignore
rm ~/.gitconfig
```

Then open a new terminal window to see the effects.
