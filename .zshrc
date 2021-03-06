# ZSH config
export ZSH=${HOME}/.oh-my-zsh
ZSH_THEME="robbyrussell"
test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
export EDITOR=/usr/local/bin/nvim
export VISUAL=/usr/local/bin/nvim
autoload -U +X bashcompinit && bashcompinit

source $ZSH/oh-my-zsh.sh

# vim
alias vim='nvim'
alias e='vim'
alias v='vim'

# aliases
## git
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

## folders
alias ~p='cd ~/projects'
alias ~kh='cd ~/projects/conferences/hashicorp'
alias dotfiles='cd ~/projects/personal/dotfiles'
alias dropbox='~/Dropbox'
alias agenda='/Volumes/GoogleDrive/My\ Drive/agenda/2019'
alias agendap='~/Dropbox/agenda/'
alias ~m='cd ~/projects/personal'
alias cjf='groovyc jenkinsfile && rm jenkinsfile\$_run*  && rm jenkinsfile\$_*.class'
alias dh='screen ~/Library/Containers/com.docker.docker/Data/com.docker.driver.amd64-linux/tty'

## tools
alias chromenosec='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --disable-web-security --allow-file-access-from-files --user-data-dir'
alias cjf='groovyc jenkinsfile && rm jenkinsfile\$_* && rm jenkinsfile.class'
alias kb='kubectl'
alias kbac='rm ~/.kube/*.cache'
alias tf='terraform'
alias dcc='docker-compose'
alias adbp='adb shell \'pm list packages''
alias getrsakey'ssh-keyscan'
alias dh='screen ~/Library/Containers/com.docker.docker/Data/com.docker.driver.amd64-linux/tty'
alias awscli='source ~/awscli/bin/activate'

## unix
alias t='take'
alias rmd='rm -rf'
alias ds='du -s'
alias randompassword='date +%s | shasum -a256 | base64 | head -c 32 ; echo'

## osx
alias showhf='defaults write com.apple.finder AppleShowAllFiles YES'
alias hidehf='defaults write com.apple.finder AppleShowAllFiles NO'
alias provprofile='security cms -D -i'
alias o='open ./'

# functions
function cgf() {
    if [ "$1" != "" ]
    then
        groovyc "$1".groovy && rm "$1"\$_call* && rm "$1".class
    fi
}
function a()
{
    local year=$(date +%Y)
    local month=$(date +%m)
    local month_name=$(date +%B)
    local day=$(date +%d)
    local day_name=$(date +%A)
    local agenda_template=$(cat <<MARKDOWN
# ${day_name} ${month_name} ${day} ${year}

## TODO

## Waiting for

## Meetings

MARKDOWN
)
    echo $agenda_template
    local agenda_path="${HOME}/projects/beeswax/agenda/${year}"
    local file="${agenda_path}/${month}.${day}.md"
    if [ ! -f "${file}" ]; then
      echo ${agenda_template} > ${file}
    fi
    e "${file}"
}
