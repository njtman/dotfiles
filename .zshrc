# Path to your oh-my-zsh installation.

ZSH_THEME="robbyrussell"

# User configuration

export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/mobiledev/Development/adt-bundle/sdk/tools:/Users/mobiledev/Development/adt-bundle/sdk/platform-tools"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

source /usr/local/opt/nvm/nvm.sh
alias vim='nvim'
alias e='vim'
alias v='vim'

# git alias
alias gs='git status'
alias gpp='git pull && git push'
alias ga='git add'
alias gap='git add -p'
alias gch='git checkout'
alias gcv='git commit --no-verify'
alias gr='git reset --soft HEAD^'
alias gl='git log -p'
alias grc='git fetch && checkout --track'
alias cdg='[ ! -z `git rev-parse --show-toplevel` ] && cd `git rev-parse --show-toplevel || pwd`'
alias gpu='git push --set-upstream origin'
alias glf='git log --follow -p --'
alias gsa='git stash apply'
alias gpt='git push --follow-tags'

# osx
alias showhf='defaults write com.apple.finder AppleShowAllFiles YES'
alias hidehf='defaults write com.apple.finder AppleShowAllFiles NO'
alias provprofile='security cms -D -i'
alias o='open ./'

alias chromenosec='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --disable-web-security --allow-file-access-from-files --user-data-dir'
alias t='take'
alias rmd='rm -rf'
alias randompassword='date +%s | shasum -a256 | base64 | head -c 32 ; echo'
alias dh='screen ~/Library/Containers/com.docker.docker/Data/com.docker.driver.amd64-linux/tty'
alias dcc='docker-compose'
alias adbp='adb shell \'pm list packages''
alias awscli='source ~/awscli/bin/activate'

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh

npm set progress=false

git config --global url."https://".insteadOf git://
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH
