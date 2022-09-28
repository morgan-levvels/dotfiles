SHELL := /usr/local/bin/fish
CONFIG_DIR = $(HOME)/.config
DOTFILES = $(shell pwd)

# Install
.PHONY: asdf direnv nvim fish omf fzf tmuxinator
install: asdf direnv nvim fish omf fzf tmuxinator

asdf:
	@echo '==> Installing direnv ...'
	brew install asdf
	asdf plugin-add java https://github.com/halcyon/asdf-java.git

direnv:
	@echo '==> Installing direnv ...'
	brew install direnv

fish:
	@echo '==> Installing fish shell...'
	brew install fish
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
	@echo '==> Installing neovim...'
	brew install nvim
	@rm -rf $(CONFIG_DIR)/nvim && ln -s $(DOTFILES)/nvim $(CONFIG_DIR)

	@echo '==> Installing vim-plug...'
	@curl -fLo $(HOME)/.local/share/nvim/site/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

	@nvim +PlugInstall

tmuxinator:
	@echo '==> Installing tmuxinator...'
	brew install tmuxinator
	@rm -rf $(CONFIG_DIR)/tmuxinator && ln -fs $(DOTFILES)/tmuxinator $(CONFIG_DIR)

# Clean
.PHONY: clean
clean:
	@echo '==> cleaning...'
	@rm -rf $(HOME)/.oh-my-fish
	@rm -rf $(CONFIG_DIR)/omf
	@rm -rf $(CONFIG_DIR)/fish
	@rm -rf $(CONFIG_DIR)/nvim
	@rm -rf $(CONFIG_DIR)/tmuxinator

# Help
.PHONY: help
help:
	@echo "Usage:"
	@echo "    make : Install apps"
	@echo "    make clean : Clean config dirs"
