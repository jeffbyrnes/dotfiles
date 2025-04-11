#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")"

git pull origin main

function doIt() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude ".macos" \
		--exclude ".osx" \
		--exclude "bootstrap.sh" \
		--exclude "brew.sh" \
		--exclude ".ruby" \
		--exclude "README.md" \
		--exclude "LICENSE" \
		--exclude ".gitkeep" \
		--exclude "lib" \
		--exclude ".editorconfig" \
		--exclude "dotfiles.code-workspace" \
		-avh --no-perms . ~
	mv "$HOME/editorconfig" "$HOME/.editorconfig"
	git clone --quiet git@github.com:jeffbyrnes/scm_breeze.git "$HOME/.scm_breeze"
	source "$HOME/.bash_profile"
}

if [ "$1" == "--force" ] || [ "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo ""
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt
