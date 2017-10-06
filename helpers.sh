function prompt {
  read -p "🍕  Are you sure you wish to continue? y/[n] "
  if [ "$REPLY" != "y" ]; then
    exit
  fi
}

function installBrewItemsWithPrompts {
  for name in $(<$1)
  do
    read -p "🍕  Are you sure you wish to install $name? y/[n] "

    if [ "$REPLY" == "y" ]; then
      brew install $name
    fi
  done
}

function installBrewCaskItemsWithPrompts {
  for name in $(<$1)
  do
    read -p "🍕  Are you sure you wish to install $name? y/[n] "

    if [ "$REPLY" == "y" ]; then
      brew cask install $name
    fi
  done
}

function installAtomPackages {
  if ! command -v apm >/dev/null 2>&1; then
      echo "Run Atom and install apm first!"
      echo "Afterwards you can always run apm install --packages-file ~/dotfiles/packages/atomlist"
  else
      apm install --packages-file packages/atomlist
  fi
}
