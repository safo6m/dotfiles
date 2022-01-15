#!/bin/bash

source "helpers.sh"

dir=`PWD`

echo "This will setup your system. Please be sure you read what the script does"
echo "before running it."
prompt

if ! command -v brew >/dev/null 2>&1; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    echo "Brew installed!"
else
    echo "Brew already installed!"
fi

brew tap homebrew/cask
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

read -p "🍕  Are you sure you wish to install global node packages? y/[n] "
if [ "$REPLY" == "y" ]; then
  xargs npm install -g < packages/npmlist

  echo ">>> -------------------------------- <<<"
  echo "Installed node packages"
  echo ">>> -------------------------------- <<<"
fi

read -p "🍕  Are you sure you wish to install atom packages? y/[n] "
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
