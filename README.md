# My Dot Files

These are config files to set up a system the way I like it. It uses
[zsh](https://github.com/tonk/dotfiles/zsh) and [tmux](https://github.com/tonk/dotfiles/tmux)
configuration files.

I am running this on Linux and Mac OS X

## Installation

Some of the tools for Vim are Vim Bundle things. I added them as Git
submodules. After a clean repository clone these modules need to be
cloned as well.

~~~~~~~~~~{.terminal}
git clone git://github.com/tonk/dotfiles ~/.dotfiles
cd ~/.dotfiles
git submodule init
git submodule update
make install
~~~~~~~~~~

But be **very** carefull. This **will** overwrite what you have got now!!

After installing, open a new terminal window to see the effects.

Feel free to customize the files to match your preference.

## git configuration

For `git` a special section is created in the configuration file.
This `[include]` part is introduced in `git` version 1.7.10 and
allows for inclusion of a personal file.

My `~/.gitconfig.private` contains something like

~~~~~~~~~~{.terminal}
[user]
	name = Ton Kersten
	email = weblog@tonkersten.com
	hostname = developer

[github]
	token = xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	user = myuserid
~~~~~~~~~~

## Uninstall

To remove the dotfile configs, run the following commands. Be certain to double
check the contents of the files before removing so you don't lose custom
settings.

~~~~~~~~~~{.terminal}
#
# For ZSH
#
rm ~/.zshenv
rm ~/.zshprofile
rm -rf ~/.zsh
#
# For Vim
#
rm -rf ~/.vim
rm ~/.vimrc
#
# For TMux
#
rm ~/.tmux.conf
#
# For git
#
rm ~/.gitignore
rm ~/.gitconfig
~~~~~~~~~~

Then open a new terminal window to see the effects.
