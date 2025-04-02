#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Upgrade any already-installed formulae.
brew upgrade

# Add Homebrew to $PATH and set useful env vars
if command -v /opt/homebrew/bin/brew &>/dev/null; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
elif command -v /usr/local/bin/brew &>/dev/null; then
	eval "$(/usr/local/bin/brew shellenv)"
else
	HOMEBREW_PREFIX=""
fi

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed
# Install a modern version of Bash.
brew install bash
brew install bash-completion@2

# Set up GNU core utilities (those that come with macOS are outdated).
# shellcheck disable=SC2016
echo 'Be sure to add `$(brew prefix coreutils|findutils|gnu-sed)/libexec/gnubin` to `$PATH`.'
ln -s "${HOMEBREW_PREFIX}/bin/gsha256sum" "${HOMEBREW_PREFIX}/bin/sha256sum"

if ! grep -Fq "$HOMEBREW_PREFIX/bin/bash" /etc/shells; then
	echo "$HOMEBREW_PREFIX/bin/bash" | sudo tee -a /etc/shells
	chsh -s "$HOMEBREW_PREFIX/bin/bash"
fi

# Install `wget` with IRI support.
brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
# Disabled b/c brew-installed OpenSSH does not play nicely with macOS Keychain + SSH
# brew install openssh
# brew install screen
brew install php
brew install gmp

# Install font tools.
# brew tap bramstein/webfonttools
# brew install sfnt2woff
# brew install sfnt2woff-zopfli
# brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
# brew install aircrack-ng
# brew install bfg
# brew install binutils
# brew install binwalk
# brew install cifer
# brew install dex2jar
# brew install dns2tcp
# brew install fcrackzip
# brew install foremost
# brew install hashpump
# brew install hydra
# brew install john
# brew install knock
# brew install netpbm
# brew install nmap
# brew install pngcheck
# brew install socat
# brew install sqlmap
# brew install tcpflow
# brew install tcptrace
# brew install ucspi-tcp' # `tcpserver` etc
# brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
# brew install exiv2
brew install git
# brew install git-lfs
# brew install gs
# brew install imagemagick
# brew install lua
# brew install lynx
# brew install p7zip
# brew install pigz
# brew install pv
# brew install rename
# brew install rlwrap
brew install ssh-copy-id
brew install tree
# brew install vbindiff
# brew install zopfli

# Jeff Byrnes additions from Mathias Bynens’ upstreams

# Handy git additions
brew install git-extras
brew install gh

# Install Generic Colouriser
brew install grc

# Replace system cURL with an updated one
brew install curl

# Install HTTPie, a better cURL
brew install httpie

# Install yet more useful binaries.
brew install fd
brew install fzf
brew install jq
brew install ripgrep
brew install testssl

# Install the LESS CSS precompiler
brew install less
brew install libiconv
brew install zlib

# cat, with color
brew install ccat

# syntax highlighting cat replacement
brew install bat

# Nice ls replacement
brew install eza

# Sweet text-based shell recording tool
# https://github.com/asciinema/asciinema
brew install asciinema

# # Additional PHP tools
# brew install composer
# brew install php-code-sniffer
# brew install php-cs-fixer
# brew install phplint
# brew install phpmd
# brew install phpunit

# Install typefaces
brew tap homebrew/cask-fonts
brew install --cask font-fira-code-nerd-font
brew install --cask font-hack-nerd-font
brew install --cask font-inconsolata-nerd-font
brew install --cask font-monaspace

# Install bash completions
brew install brew-cask-completion
brew install bundler-completion
brew install docker-completion
brew install gem-completion
# brew install kitchen-completion
brew install rake-completion
# brew install vagrant-completion

# GPG agent for signing commits
brew install pinentry-mac

brew install icu4c
brew install boost

brew install diff-so-fancy
brew install go

# Install shfmt for shell parsing & linting/formatting
go install mvdan.cc/sh/v3/cmd/shfmt@latest

brew install man2html

brew install node
brew install yarn

brew install python
brew install black
brew install flake8
brew install git-sweep3k

# Install Ruby & Ruby-LSP
brew install ruby
brew install ruby-lsp

brew install reattach-to-user-namespace

# brew install the_silver_searcher
# brew install tidy-html5
brew install tmux

brew install watch

# brew install aws-shell

# Linter for bash scripts
brew install shellcheck

# Linter for Dockerfiles
brew install hadolint

# Linter for prose
brew install proselint

# Linter for YAML
brew install yamllint

# # Linter for Perl
# brew install perltidy

# # Terraform things
# brew install terraform

# # Linter for Terraform configs
# brew install tflint

# Starship shell prompt
brew install starship

# Emoji Wine Alfred Workflow requirement
# Friendly PIL fork (Python Imaging Library)
brew install pillow

# Useful Quicklook additions
brew install --cask betterzip
brew install --cask qlcolorcode
brew install --cask qlimagesize
brew install --cask qlmarkdown
brew install --cask qlprettypatch
brew install --cask qlstephen
brew install --cask qlvideo
brew install --cask quicklook-csv
brew install --cask quicklook-json
brew install --cask quicklookase
brew install --cask webpquicklook

# Install Dart Sass
brew install sass/sass/sass

# Useful macOS apps
brew install --cask chronosync
brew install --cask dash
# brew install --cask diffmerge
brew install --cask discord
brew install --cask graphicconverter
brew install --cask handbrake
brew install --cask imageoptim
brew install --cask ivolume
brew install --cask kaleidoscope
brew install --cask keepingyouawake
# brew install --cask keybase
brew install --cask latest
# brew install --cask macdown
brew install --cask macupdater
brew install --cask rocket
brew install --cask suspicious-package
brew install --cask syntax-highlight
brew install --cask tower
brew install --cask transmit
brew install --cask vlc
brew install --cask xld

# 1Password 8 CLI
brew install --cask 1password-cli

# CLI for Mac App Store
brew install mas-cli/tap/mas

# mas install 1055511498 # Day One
mas install 975937182  # Fantastical
mas install 6444602274 # Ivory
mas install 429449079  # Patterns
mas install 1529448980 # Reeder 5
# mas install 1518036000 # Sequel Ace
# mas install 803453959  # Slack
# mas install 1508732804 # Soulver 3
mas install 1176895641 # Spark
# mas install 1278508951 # Trello
mas install 1482454543 # Twitter
