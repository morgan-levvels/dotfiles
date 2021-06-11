.PHONY: fish omf fzf nvim

SHELL := /usr/local/bin/fish
CONFIG_DIR = $(HOME)/.config
DOTFILES = $(shell pwd)

fish:
	@rm -rf $(CONFIG_DIR)/fish && ln -s $(DOTFILES)/fish $(CONFIG_DIR)

omf:
	@curl -L https://get.oh-my.fish | fish
	@rm -rf $(CONFIG_DIR)/omf && ln -s $(DOTFILES)/omf $(CONFIG_DIR)

fzf:
	@echo '==> Installing funzzy finder...'
	brew install fzf

	@echo '==> Installing fisher plugin manager...'
	@curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

	fisher install jethrokuan/fzf

nvim:
	@echo '==> Installing neo vim...'
	brew install nvim
	@rm -rf $(CONFIG_DIR)/nvim && ln -s $(DOTFILES)/nvim $(CONFIG_DIR)

	@echo '==> Installing vim-plug...'
	@curl -fLo $(HOME)/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

	@nvim +PlugInstall

clean:
	rm -rf $(HOME)/.oh-my-fish
	rm -rf $(CONFIG_DIR)/omf
	rm -rf $(CONFIG_DIR)/fish
	rm -rf $(CONFIG_DIR)/nvim

install: fish omf fzf nvim