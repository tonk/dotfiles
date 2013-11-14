#------------------------------------------------------------------------------#
# vi: set sw=4 ts=4 ai:                            ("set modeline" in ~/.exrc) #
#------------------------------------------------------------------------------#

#------------------------------------------------------------------------------#
#                    V e r s i o n   i n f o r m a t i o n                     #
#------------------------------------------------------------------------------#
# $Id:: Makefile 5 2013-05-14 11:47:01 tonk                                 $: #
# $Revision:: 5                                                             $: #
# $Author:: Ton Kersten <github@tonkersten.com>                             $: #
# $Date:: 2013-05-14 11:47:09 +0200 (Tue, 14 May 2013)                      $: #
# $Hash:: 8929dba52be50420ddee975d3a433657ba45bb2d (tonk)                   $: #
#------------------------------------------------------------------------------#
#             E n d   o f   v e r s i o n   i n f o r m a t i o n              #
#------------------------------------------------------------------------------#

install:
	mkdir -p $(HOME)/bin
	#
	install -p -d -m 755 zsh			$(HOME)/.zsh
	cp -rp zsh/*						$(HOME)/.zsh
	-ln -s $(HOME)/.zsh/zprofile		$(HOME)/.zprofile
	-ln -s $(HOME)/.zsh/zshenv			$(HOME)/.zshenv
	#
	mkdir -p $(HOME)/.vim
	install -p -d -m 755 vim/vim		$(HOME)/.vim
	cp -rp vim/vim/*					$(HOME)/.vim
	install -p -m 644 vim/vimrc			$(HOME)/.vimrc
	install -p -m 644 vim/snippets/*	$(HOME)/.vim/bundle/vim-snippets/snippets
	#
	install -p -m 644 tmux/tmux.conf	$(HOME)/.tmux.conf
	install -p -m 755 tmux/tm			$(HOME)/bin/tm
	#
	install -p -m 644 git/gitignore		$(HOME)/.gitignore
	install -p -m 644 git/gitattributes	$(HOME)/.gitattributes
	install -p -m 644 git/gitconfig		$(HOME)/.gitconfig
