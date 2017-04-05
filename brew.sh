#! /usr/bin/env bash

# Install Homebrew first
# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure Homebrew is up-to-date
brew update

# Upgrade any installed formulae
brew upgrade

# Install GNU core utilities (those that come with macOS are updated)
brew install coreutils

# Install some other useful utilities
brew install moreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils

# Install GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed --with-default-names

# Install more recent versions of some macOS tools
brew install vim --with-override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php56 --with-gmp

# Install font tools
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install other useful binaries.
brew install ack
# brew install dark-mode
# brew install exiv2
brew install git
brew install git-lfs
# brew install imagemagick --with-webp
# brew install lua
# brew install lynx
# brew install p7zip
# brew install pigz
# brew install pv
brew install rename
# brew install rhino
brew install speedtest_cli
brew install ssh-copy-id
brew install testssl
# brew install tree
# brew install vbindiff
brew install webkit2png
# brew install zopfli

# Remove outdated versions from the cellar.
brew cleanup
