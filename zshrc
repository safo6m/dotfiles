# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gallois"

if [ -f $HOME/dotfiles/aliases.zsh ]; then
    . $HOME/dotfiles/aliases.zsh
fi

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git cp colorize colored-man git-flow brew npm bower zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source $HOME/dotfiles/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/dotfiles/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


. `brew --prefix`/etc/profile.d/z.sh

eval "$(rbenv init -)"

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$(brew --prefix coreutils)/libexec/gnubin
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/opt/X11/lib/pkgconfig
export PATH=${PATH}:/Users/safo/Development/android-sdk-macosx/platform-tools:/Users/safo/Development/android-sdk-macosx/tools

alias nw="/Applications/node-webkit.app/Contents/MacOS/node-webkit"

# Make Grunt print stack traces by default
command -v grunt > /dev/null && alias grunt="grunt --stack"
