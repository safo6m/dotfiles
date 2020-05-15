# Path to cloned dotfiles folder
DOTFILES=$HOME/dotfiles

# Path to your oh-my-zsh configuration.
ZSH=$DOTFILES/zsh/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gallois"

if [ -f $DOTFILES/aliases.zsh ]; then
  . $DOTFILES/aliases.zsh
fi

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git cp colorize colored-man-pages git-flow brew npm bower)

source $ZSH/oh-my-zsh.sh
source $HOME/dotfiles/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/dotfiles/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

. $HOME/dotfiles/zsh/z/z.sh

eval "$(rbenv init -)"

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$(brew --prefix coreutils)/libexec/gnubin
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/opt/X11/lib/pkgconfig
export PATH=${PATH}:/Users/safo/Development/android-sdk-macosx/platform-tools:/Users/safo/Development/android-sdk-macosx/tools

. $HOME/dotfiles/secrets.sh

alias nw="/Applications/node-webkit.app/Contents/MacOS/node-webkit"

# Make Grunt print stack traces by default
command -v grunt > /dev/null && alias grunt="grunt --stack"

# thefuck
eval $(thefuck --alias)

# Syntax highlighting is slow when pasting long strings
# Disable highlighting for long string
export ZSH_HIGHLIGHT_MAXLENGTH=200
