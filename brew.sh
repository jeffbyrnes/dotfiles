#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

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

# Set up GNU core utilities (those that come with OS X are outdated).
echo 'Be sure to add `$(brew prefix coreutils|findutils|gnu-sed)/libexec/gnubin` to `$PATH`.'
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

if ! grep -Fq "$BREW_PREFIX/bin/bash" /etc/shells; then
  echo "$BREW_PREFIX/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "$BREW_PREFIX/bin/bash";
fi;

# Install `wget` with IRI support.
brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
# Disabled b/c brew-installed OpenSSH does not play nicely with macOS Keychain + SSH
# brew install openssh
brew install screen
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
brew install nmap
brew install pngcheck
brew install socat
# brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
# brew install ucspi-tcp' # `tcpserver` etc
# brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
# brew install exiv2
brew install git
brew install git-lfs
brew install gs
# brew install imagemagick
# brew install lua
# brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli

# Jeff Byrnes additions from Mathias Bynens’ upstreams

# Handy git additions
brew install git-extras
brew install github/gh/gh

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

# Additional PHP tools
brew install composer
brew install php-code-sniffer
brew install php-cs-fixer
brew install phplint
brew install phpmd
brew install phpunit

# Install Hack typeface
brew tap homebrew/cask-fonts
brew cask install font-hack
brew cask install font-source-code-pro

# Install bash completions
brew install apm-bash-completion
brew install brew-cask-completion
brew install bundler-completion
brew install docker-completion
brew install gem-completion
brew install kitchen-completion
brew install rake-completion
brew install vagrant-completion

# Install tldr for more friendly manpages
brew install tldr-pages/tldr/tldr

# GPG agent for signing commits
brew install pinentry-mac

brew install icu4c
brew install boost

brew install diff-so-fancy
brew install go

brew install heroku/brew/heroku

brew install man2html

brew install node
brew install yarn

brew install python3

# Install rbenv for multiple Ruby versions
brew install ruby-build
brew install rbenv

brew install reattach-to-user-namespace

brew install the_silver_searcher
brew install tidy-html5
brew install tmux

brew install watch

brew install aws-shell

# Linter for bash scripts
brew install shellcheck

# Linter for Dockerfiles
brew install hadolint

# Linter for prose
brew install proselint

# Linter for YAML
brew install yamllint

# Terraform things
brew install terraform
brew install terragrunt
brew install terraforming
brew install terraform_landscape

# Linter for Terraform configs
brew install tflint

# Useful Quicklook additions
brew cask install betterzip
brew cask install qlcolorcode
brew cask install qlimagesize
brew cask install qlmarkdown
brew cask install qlprettypatch
brew cask install qlstephen
brew cask install qlvideo
brew cask install quicklook-csv
brew cask install quicklook-json
brew cask install quicklookase
brew cask install webpquicklook

# Install Dart Sass
brew install sass/sass/sass

# Useful macOS apps
brew cask install keepingyouawake
brew cask install keybase
brew cask install macdown
brew cask install suspicious-package
brew cask install yakyak

# CLI for Mac App Store
brew install mas-cli/tap/mas

mas install 1233861775 # Acorn
mas install 696977615  # Capo
mas install 1055511498 # Day One
mas install 924726344  # Deliveries
mas install 975937182  # Fantastical 2
mas install 682658836  # GarageBand
mas install 467939042  # Growl
mas install 408937559  # iFlicks
mas install 408981434  # iMovie
mas install 409035833  # iReal Pro
mas install 409183694  # Keynote
mas install 409203825  # Numbers
mas install 409201541  # Pages
mas install 429449079  # Patterns
mas install 880001334  # Reeder
mas install 933627574  # Silicio
# mas install 803453959  # Slack
mas install 413965349  # Soulver
mas install 1176895641 # Spark
mas install 1278508951 # Trello
mas install 1384080005 # Tweetbot
