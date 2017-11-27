# Set architecture flags
export ARCHFLAGS="-arch x86_64"
# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH
export ANDROID_HOME=~/Library/Android/sdk
export PATH=/Applications/CMake.app/Contents/bin:$PATH
# Load .bashrc if it exists
#test -f ~/.bashrc && source ~/.bashrc
#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#    source $(brew --prefix)/etc/bash_completion
#fi

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
export ANDROID_HOME=~/Library/Android/sdk
gpip() {
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

seabuild() {
   docker run -v $HOME/Documents/Git-Clone/seastar/:/seastar -u $(id -u):$(id -g) -w /seastar -t seastar-dev "$@";
}

# tmuxinator
export EDITOR=vim

##################
### MY ALIASES ###
##################

# git command autocompletion script
if [ -f $(brew --prefix)/etc/bash_completion ]; then
   . $(brew --prefix)/etc/bash_completion
fi

source ~/.git-prompt.sh

# git commamands simplified
alias gst='git status'
alias gco='git checkout'
alias gci='git commit'
alias grb='git rebase'
alias gbr='git branch'
alias gad='git add -A'
alias gpl='git pull'
alias gpu='git push'
alias glg='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'
alias glg2='git log --date-order --all --graph --name-status --format="%C(green)%H%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'

# ls alias for color-mode
alias lh='ls -lhaG'

# lock computer
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

# hibernation and sleep settings
alias hibernate='sudo pmset -a hibernatemode 25'
alias sleep='sudo pmset -a hibernatemode 0'
alias safesleep='sudo pmset -a hibernatemode 3'
alias smartsleep='sudo pmset -a hibernatemode 2'

# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# simple ip
alias ip='ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d : -f2'
# more details
alias ip1="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
# external ip
alias ip2="curl -s http://www.showmyip.com/simple/ | awk '{print $1}'"

# grep with color
alias grep='grep --color=auto'

# proxy tunnel
#alias proxy='ssh -D XXXX -p XXXX USER@DOMAIN'
# ssh home
#alias sshome='ssh -p XXXX USER@DOMAIN'

# processes
alias ps='ps -ax'

# refresh shell
alias reload='source ~/.bash_profile'

###############################
### ENVIRONMENTAL VARIABLES ###
###############################

# Add homebrew sbin to PATH variable
export PATH=$PATH:/usr/local/sbin

# Add personal bin to PATH variable
export PATH=$PATH:/Users/PedroZara:/bin    # May be redundant; check ~/.bash_profile, /etc/profile, /etc/paths, /etc/bashrc

# Show dirty state in prompt when in Git repos
export GIT_PS1_SHOWDIRTYSTATE=1

export NVM_DIR="/Users/PedroZara/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export GOPATH=$HOME/work
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# Change prompt
PS1_OLD=${PS1}
export PS1='\[\033[1;35m\]\H\[\033[0m\]@\[\033[1;34m\]\u\[\033[0m\]: \[\033[1;36m\]\W\[\033[0m\] \[\033[1;92m\]$(__git_ps1 "(%s)")\[\033[0m\]$ '

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/PedroZara/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/PedroZara/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/PedroZara/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/PedroZara/Downloads/google-cloud-sdk/completion.bash.inc'; fi
