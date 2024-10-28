#!/usr/bin/env bash

rbenv install 3.3.5
rbenv global 3.3.5

# Update Rubygems to latest
gem update --system

# Reinstall all gems
gem install \
	rake \
	rspec \
	rubocop \
	ruby-lint
