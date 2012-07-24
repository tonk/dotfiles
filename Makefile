#------------------------------------------------------------------------------#
# vi: set sw=4 ts=4 ai:                            ("set modeline" in ~/.exrc) #
#------------------------------------------------------------------------------#

#------------------------------------------------------------------------------#
#                    V e r s i o n   i n f o r m a t i o n                     #
#------------------------------------------------------------------------------#
# $Id:: Makefile 4 2011-07-08 12:59:30 tonk                                 $: #
# $Revision:: 4                                                             $: #
# $Author:: Ton Kersten <tonk@tonkersten.com>                               $: #
# $Date:: 2011-07-08 13:01:55 +0200 (Fri, 08 Jul 2011)                      $: #
# $Hash:: 8929dba52be50420ddee975d3a433657ba45bb2d (tonk)                   $: #
#------------------------------------------------------------------------------#
#             E n d   o f   v e r s i o n   i n f o r m a t i o n              #
#------------------------------------------------------------------------------#

install:
	install -p -d -m 755 zsh			$(HOME)/.zsh
	-ln -s $(HOME)/.zsh/zshprofile		$(HOME)/.zshprofile
	-ln -s $(HOME)/.zsh/zshenv			$(HOME)/.zshenv
	#
	install -p -d -m 755 vim/vim		$(HOME)/.vim
	install -p -m 644 vim/vimrc			$(HOME)/.vimrc
	#
	install -p -m 644 tmux/tmux.conf	$(HOME)/.tmux.conf
	#
	install -p -m 644 git/gitignore		$(HOME)/.gitignore
	install -p -m 644 git/gitattributes	$(HOME)/.gitattributes
	install -p -m 644 git/gitconfig		$(HOME)/.gitconfig
