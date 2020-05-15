# Collection of dotfiles

### Getting started

#### Prerequirements

* check that you have ssh key generated (cloning git repositories will fail otherwise)

#### Installation

```
./install.sh
```

#### After the installation

* update `dotfiles/gitconfig` (check gitconfig section)
* All secret environment variables should go into `dotfiles/secrets.sh`.

### Included apps

* Alfred
* Atom
* Firefox
* Google Chrome
* Mou
* Postico
* Spectacle
* VLC

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

* Replace `rm` with the something safer, i.e. [Shell-sage-rm](https://github.com/kaelzhang/shell-safe-rm)
