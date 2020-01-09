#!/bin/bash

# Hide "last login" line when starting a new terminal session
touch "$HOME"/.hushlogin

# Install zsh
echo 'Install oh-my-zsh'
echo '-----------------'
rm -rf "$HOME"/.oh-my-zsh
curl -L https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

git clone https://github.com/lukechilds/zsh-nvm "$HOME"/.oh-my-zsh/custom/plugins/zsh-nvm

# Add global gitignore
ln -sf "$HOME"/.dotfiles/shell/.global-gitignore "$HOME"/.global-gitignore
git config --global core.excludesfile "$HOME"/.global-gitignore

# Symlink zsh prefs
rm "$HOME"/.zshrc
ln -sf "$HOME"/.dotfiles/shell/.zshrc "$HOME"/.zshrc

# Symlink the Mackup config
ln -sf "$HOME"/.dotfiles/macos/.mackup.cfg "$HOME"/.mackup.cfg

echo 'Install homebrew'
echo '----------------'
echo install homebrew
sudo rm -rf /usr/local/Cellar /usr/local/.git && brew cleanup
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo 'Install GIT'
echo '----------------'
brew install git

echo 'Install composer'
echo '----------------'
brew install composer

echo 'Install pkg-config'
echo '------------------'
brew install pkg-config

echo 'Install wget'
echo '------------'
brew install wget

echo 'Install ack'
echo '-----------'
brew install ack

echo 'Install fzf'
echo '-----------'
brew install fzf

echo 'Install thefuck'
echo '-----------'
brew install thefuck

echo 'Install php'
echo '-----------'
brew tap exolnet/homebrew-deprecated
brew install php@7.0
#brew install php@7.1
brew install php@7.2
brew install php@7.3
brew install php@7.4

echo 'Install imagemagick'
echo '-------------------'
brew install imagemagick

echo 'Install imagick'
echo '---------------'
pecl install imagick

echo 'Install memcached'
echo '-----------------'
pecl install memcached

echo 'Install xdebug'
echo '--------------'
pecl install xdebug

echo 'Install redis'
echo '-------------'
pecl install redis

echo 'Install laravel envoy'
echo '---------------------'
composer global require laravel/envoy

echo 'Install laravel valet'
echo '---------------------'
composer global require laravel/valet
valet install

echo 'Install mysql'
echo '-------------'
brew install mysql@5.7
brew services start mysql@5.7

echo 'Install redis'
echo '-------------'
brew services start redis
brew install redis

echo 'Install yarn'
echo '--------------'
brew install yarn

echo 'Install mackup'
echo '--------------'
brew install mackup

echo 'Install zsh-autosuggestions'
echo '---------------------------'
brew install zsh-autosuggestions

echo 'Install zsh-syntax-highlighting'
echo '---------------------------'
brew install zsh-syntax-highlighting