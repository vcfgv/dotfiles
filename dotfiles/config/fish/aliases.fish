
alias vi="nvim"
alias v="nvim"
alias vim="nvim"
alias cht='cht.sh'

if type -q exa
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
end

# Navigation
function ..    ; cd .. ; end
function ...   ; cd ../.. ; end
function ....  ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end
function cl
    if count $argv > /dev/null
        cd $argv; ls
    else
        cd ..; ls
    end
end

alias rm='rm -i'
alias rd='rmdir'
alias md='mkdir -p'
alias df='df -h'
alias dus='du -sh'
alias del='gio trash'

# Edit dotfiles
alias vimrc='vi $XDG_CONFIG_HOME/nvim/init.vim'
alias vimplug='vi $XDG_CONFIG_HOME/nvim/configs/plugins.vim'
alias vimmap='vi $XDG_CONFIG_HOME/nvim/configs/mappings.vim'
alias fishconfig='vi $XDG_CONFIG_HOME/fish/config.fish'
alias tmuxconf='vi $HOME/.tmux.conf'
alias sshconfig='vi $HOME/.ssh/config'

# Utilities
function g        ; git $argv ; end
function grep     ; command grep --color=auto $argv ; end


alias li=lighthouse
alias lperf 'lighthouse --only-categories=performance'

# mv, rm, cp
alias mv 'command gmv --interactive --verbose'
alias rm 'command grm --interactive --verbose'
alias cp 'command gcp --interactive --verbose'

alias chmox='chmod +x'

alias cask='brew cask' # i <3 u cask
alias where=which # sometimes i forget

alias hosts='sudo $EDITOR /etc/hosts'

alias ag='ag --follow --hidden -W (math $COLUMNS - 11)'

alias diskspace_report="df -P -kHl"
alias free_diskspace_report="diskspace_report"

# Recursively delete `.DS_Store` files
alias cleanup_dsstore="find . -name '*.DS_Store' -type f -ls -delete"

# File size
alias fs="stat -f \"%z bytes\""
