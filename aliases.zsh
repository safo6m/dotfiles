#aliases
alias ios="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"
alias lsd='ls -lF ${colorflag} | grep "^d"'
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm update npm -g; npm update -g; sudo gem update'
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

#node-webkit
alias nw='open -a /Applications/node-webkit.app'

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

alias server="python -m SimpleHTTPServer"

# Git
alias gff="git flow feature"

alias prune-branches="git remote prune origin && git branch -vv | grep ': gone]' | awk '{print $1}' | xargs git branch -d"

alias todays-work='git log --all --since=6am --format="* %s" --author="Mihael Safaric" --reverse -- | pbcopy'
alias yesterdays-work='git log --all --since=yesterday.6am --until=6am --format="* %s" --author="Mihael Safaric" --reverse -- | pbcopy'

alias git-undo-last-commit='git reset HEAD~'

# Code highlighting - https://gist.github.com/jimbojsb/1630790
alias jsh="pbpaste | highlight --syntax=js -O rtf | pbcopy"
alias cssh="pbpaste | highlight --syntax=css -O rtf | pbcopy"

alias canary="open -a Google\ Chrome\ Canary --args --disable-web-security"
alias fuck="thefuck"
