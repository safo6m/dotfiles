#!/bin/bash

source "helpers.sh"

dir=`PWD`

echo "This will setup your system. Please be sure you read what the script does"
echo "before running it."
prompt

if ! command -v brew >/dev/null 2>&1; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "Brew installed!"
else
    echo "Brew already installed!"
fi

brew tap caskroom/cask
brew tap homebrew/services

installBrewItemsWithPrompts "packages/brewlist"
installBrewCaskItemsWithPrompts "packages/casklist"

echo ">>> -------------------------------- <<<"
echo "Installed packages and apps."
echo ">>> -------------------------------- <<<"

n latest
echo ">>> -------------------------------- <<<"
echo "Node set to $(node -v)"
echo ">>> -------------------------------- <<<"

xargs npm install -g < packages/npmlist

echo ">>> -------------------------------- <<<"
echo "Installed node packages"
echo ">>> -------------------------------- <<<"


read -p "🍕  Are you sure you wish to atom packages? y/[n] "
if [ "$REPLY" == "y" ]; then
  installAtomPackages
  ln -s $dir/atom/snippets.cson ~/.atom/snippets.cson
fi

git submodule update --init --recursive

ln -s $dir/gitconfig ~/.gitconfig
ln -s $dir/zshrc ~/.zshrc

if [ ! -f $dir/secrets.sh ]; then
  touch secrets.sh
fi

echo ">>> -------------------------------- <<<"
echo "Dotfiles setup!"
