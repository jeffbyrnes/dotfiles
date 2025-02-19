#!/usr/bin/env bash

# Update Rubygems to latest
gem update --system

# Reinstall all gems
gem install \
	rake \
	rspec \
	rubocop \
	ruby-lint
