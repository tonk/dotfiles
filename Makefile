#------------------------------------------------------------------------------#
# vi: set sw=4 ts=4 ai:                            ("set modeline" in ~/.exrc) #
#------------------------------------------------------------------------------#

#------------------------------------------------------------------------------#
# $Id:: Makefile 5 2016-01-19 08:38 tonk                                    $: #
# $Revision:: 6                                                             $: #
# $Author:: Ton Kersten <Github@TonKersten.com>                             $: #
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
	install -d -p -m 755 vim/vim		$(HOME)/.vim
	cp -rp vim/vim/*					$(HOME)/.vim
	install -p -m 644 vim/vimrc			$(HOME)/.vimrc
	install -d -p -m 755 vim/snippets	$(HOME)/.vim/bundle/vim-snippets/snippets
	#
	install -p -m 644 tmux/tmux.conf	$(HOME)/.tmux.conf
	install -p -m 755 tmux/tm			$(HOME)/bin/tm
	#
	install -p -m 644 git/gitignore		$(HOME)/.gitignore
	install -p -m 644 git/gitattributes	$(HOME)/.gitattributes
	install -p -m 644 git/gitconfig		$(HOME)/.gitconfig
	#
	install -p -d -m 755 i3				$(HOME)/.i3
	cp -rp i3/*							$(HOME)/.i3
