# .zshrc - 04/2023

# ignore ^D
set -o ignoreeof

# don't let redirection cobbler a file
set -o noclobber

# Make vim default
set -o vi

# Apple Shortcuts
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Unix Shortcuts
alias l='ls'
alias c='clear'
alias cs='clear && ls'
alias h='history'
alias p='cat'
alias q='exit'
alias lh='ls -l'
alias la='ls -la'

# File System Shortcuts
alias home='cd ~'
alias dl='cd Downloads'
alias dt='cd Desktop'

# Git Shortcuts
alias g='cd Git'
alias gall='git add .'
alias gs='git status'
alias gcm='git commit -m'
alias gpush='git push'

# Misc
alias python='python3'

#ANDROID SDK
export ANDROID_HOME=~/Library/Android/sdk
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH="/usr/local/sbin:$PATH"

# avdmanager, sdkmanager
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin
# adb, logcat
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
# emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator


# Java
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.8.jdk/Contents/Home # I use JDK 11 because school requires it
export JAVA_HOME;


# Node
export PATH="/opt/homebrew/opt/node@16/bin:$PATH"


# Heroku Autocomplete
HEROKU_AC_ZSH_SETUP_PATH=/Users/Kevin/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;


# Google Cloud SDK
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/Kevin/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/Kevin/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/Kevin/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/Kevin/google-cloud-sdk/completion.zsh.inc'; fi


# Homebrew and Custom Colors
eval "$(/opt/homebrew/bin/brew shellenv)"
export CLICOLOR=1
export LSCOLORS=GxBxCxDxexegedabagaced