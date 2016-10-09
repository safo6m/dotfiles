#!/bin/bash

function prompt {
    read -p "🍕  Are you sure you wish to continue? y/[n] "
    if [ "$REPLY" != "y" ]; then
	exit
    fi
}

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

xargs brew install < packages/brewlist
xargs brew cask install < packages/casklist
echo "Installed packages and apps."

n latest
echo "Node set to $(node -v)"

if ! command -v apm >/dev/null 2>&1; then
    echo "Run Atom and install apm!"
    echo "Afterwards you can always run apm install --packages-file ~/dotfiles/packages/atomlist"
else
    apm install --packages-file packages/atomlist
fi


git submodule update --init --recursive

ln -s $dir/gitconfig ~/.gitconfig
ln -s $dir/zshrc ~/.zshrc

if [ ! -f $dir/secrets.sh ]; then
    touch secrets.sh
fi

echo "Dotfiles setup!"
