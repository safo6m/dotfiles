# Collection of dotfiles

### Getting started

#### Prerequirements

* check that you have ssh key generated (cloning git repositories will fail otherwise)
* zshrc file has a hardcoded path to `dotfiles` folder, `$HOME/dotfiles`. Change it if you are using a different location.

#### Installation

```
./install.sh
```

You will be prompted before installation of each application so you can decide whether you want it or not.

#### After the installation

* update `dotfiles/gitconfig` (check gitconfig section)
* All secret environment variables should go into `dotfiles/secrets.sh`.

### Included apps

* 1Password
* Alfred
* Atom
* Enpass
* Firefox
* Google Chrome
* Kiwi for Gmail
* Microsoft Teams
* Mou
* Postgres
* Postico
* Postman
* Rectangle
* Spotify
* Ticktick
* VLC
* Zeplin
* Zoom

### Included tools

* git
* imagemagick
* mongodb
* mysql
* n
* postgresql
* python
* rbenv
* thefuck
* zsh

### Included atom plugins

* atom-beautify
* atom-material-syntax
* auto-update-packages
* file-icons
* git-blame
* highlight-selected
* language-babel
* linter
* linter-eslint
* linter-scss-lint
* open-in-browser
* pigments
* pretty-json
* sort-lines

### Included npm packages (globally installed)

* npm-check-updates
* phantomjs
* svgo

### gitconfig

* update user setting with your own
* set `gpgsign` if you are not using signed commits ([how to set up signed commits](https://help.github.com/en/articles/signing-commits))

### TODO

* Replace `rm` with something safer, i.e. [Shell-sage-rm](https://github.com/kaelzhang/shell-safe-rm)
