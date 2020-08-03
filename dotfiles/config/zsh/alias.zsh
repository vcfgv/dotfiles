alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
(( $+commands[nvim] )) && alias vi="nvim"
alias vv='vi $(fzf)'
alias cht="cht.sh"

alias ls='ls --color=auto'
alias ll='ls --group-directories-first -l'
alias la='ls --group-directories-first -l --all'
alias l='ll'
if (( $+commands[exa] )); then
    alias ls='exa --icons'
    alias ll='ls -lgbh --git'
    alias lg='ll -G'    # List by grid
    alias llg='ll -G'
    alias la='ls -a'
    alias lla='ll -a'
    alias lag='llg -a'
    alias ldot='ll -d .*'
    alias lss='ll -s size'
    alias lst='ll -s modified'
    alias lt='ls --tree'
fi

alias ..='\cd ..'
alias ...='\cd ../..'
alias ....='\cd ../../..'
alias .....='\cd ../../../..'
alias cd.='\cd ..'
alias cd..='\cd ..'
# alias cl='cd ..;ls'
function chpwd() {
  ls
}

alias rm='rm -iv'
alias mv='mv -iv'
alias rd='rmdir'
alias md='mkdir -v -p'
alias df='df -h'
alias dus='du -sh'

# z.lua
alias zz='z -c'      # restrict matches to subdirs of $PWD
alias zi='z -i'      # cd with interactive selection
alias zf='z -I'      # use fzf to select in multiple matches
alias zb='z -b'      # quickly cd to the parent directory

# gdb
alias gdb-peda='gdb -q -ex init-peda' gdb-pwndbg='gdb -q -ex init-pwndbg'
alias gdb-gef='gdb -q -ex init-gef'   gdb=gdb-pwndbg

# Edit dotfiles
alias vimrc='vi $XDG_CONFIG_HOME/nvim/init.vim'
alias vimplug='vi $XDG_CONFIG_HOME/nvim/configs/plugins.vim'
alias vimmap='vi $XDG_CONFIG_HOME/nvim/configs/mappings.vim'
alias zshrc='vi $HOME/.zshrc'
alias zshenv='vi $HOME/.zshenv'
alias szshrc='source $HOME/.zshrc'
alias zshalias='vi $XDG_CONFIG_HOME/zsh/alias.zsh'
alias tmuxconf='vi $HOME/.tmux.conf'
alias sshconfig='vi $HOME/.ssh/config'
alias gitconfig='vi $HOME/.gitconfig'

# $OMZ:git/git.plugin.zsh
alias gc='git commit -v'
alias gb='git branch'
alias gl='git pull'
alias gp='git push'
alias gpom='git push origin master'
alias gpoat='git push origin --all && git push origin --tags'
alias gpu='git push upstream'
alias gco='git checkout'
alias gst='git status'
# alias gs='git stash'
alias gsp='git stash pop'

# Docker
alias dps='docker ps'
alias dpsa='dps -a'
alias drun='docker run'
alias drm='docker rm'
alias drmi='docker rmi'
alias da='docker attach'
alias dim='docker images'
alias dp='docker pull'
alias dstop='docker stop'
alias dstart='docker start'
alias dexec='docker exec'
alias ds='docker service'
alias dm='docker-machine'

# TMUX
alias ta='tmux attach -t'
alias tad='tmux attach -d -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'

# Brew
alias brewp='brew pin'
alias brews='brew list -1'
alias brewsp='brew list --pinned'
alias bubo='brew update && brew outdated'
alias bubc='brew upgrade && brew cleanup'
alias bubu='bubo && bubc'
alias bcubo='brew update && brew cask outdated'
alias bcubc='brew cask reinstall $(brew cask outdated) && brew cleanup'
