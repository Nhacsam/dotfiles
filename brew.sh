#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# To install binary content
brew install caskroom/cask/brew-cask

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2
# Install Zsh like an alternative to bash
brew install zsh

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install other useful binaries.
brew install ack                # grep for source code
brew install exiv2              # 
brew install git                # A popular subversion system
brew install git-extras         # Add some usefull command to git
brew install git-lfs            # Manage large file with git
brew install imagemagick --with-webp # Some image manipulation command tools
brew install lua                # A script engine
brew install lynx               # A cli web browser
brew install p7zip              # 7-zip A file comression tool
brew install pigz               # Another file compression tool
brew install pv                 # monitor the progress of data through a pipe
brew install rename             # A tool to rename multiple files
brew install rhino              # A javascript engine
brew install speedtest_cli      # A tool to make network speed test
brew install ssh-copy-id        # Add a local ssh key to a remote host
brew install tree               # List the content of a folder in a tree format
brew install webkit2png         # Get a website and convert it into png
brew install zopfli             # A google's compression tool
git clone git@github.com:rupa/z.git ~/z-bin  # Jump in a recently used folder (cd)

# Improve terminal
brew cask install iterm2        # A terminal application
brew install tmux               # A Terminal multiplexer
# Install oh my Zsh. It's recommanded but I don't want to force you
# curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | bash


# Web Developper tools
brew install nodejs             # A very famous server side javascript engine
brew install npm                # Node Package Manager

brew install nvm                # Node Version Manager
mkdir ~/.nvm
cp $(brew --prefix nvm)/nvm-exec ~/.nvm/
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
nvm install stable				# Install last stable version of node
nvm use stable					# use it

npm install -g bower            # A js front package manager
npm install -g grunt            # A js preprocessor task manager
npm install -g gulp             # Another js preprocessor task manager
npm install -g forever          # Automaticly start/restart a nodejs server

brew install bzip2
brew install homebrew/php/php56 --with-gmp    # php
brew install composer           # Dependency handler for php project

# Environment and Deployment
brew cask install virtualbox    # Launch virtual machines
brew cask install vagrant       # A virtual machine provisionner
brew install ruby               # Ruby
brew install brew-gem           # A package manager for ruby
gem install bundler             # Dependency handler for ruby project (required for capistrano)
sudo easy_install pip           # Python package manager
sudo CFLAGS=-Qunused-arguments CPPFLAGS=-Qunused-arguments pip install ansible # automation tool


# Multiplatform Mobile App
npm install -g cordova          # Create multiplatform mobile app white webview
npm install -g ionic            # A javascript framework for cordova
brew install android-sdk        # Allow to compile for android
brew cask install java			# Java
android &						# Open the android sdk installer window 

# install outdated versions from the cellar.
brew cleanup
