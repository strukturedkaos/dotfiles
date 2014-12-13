export PATH=$PATH:$HOME/bin

if [ -f `brew --prefix`/etc/bash_completion ]; then
      . `brew --prefix`/etc/bash_completion
fi

source '/usr/local/opt/chruby/share/chruby/chruby.sh'
chruby 2.0.0-p594
source '/usr/local/share/chruby/auto.sh'

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
