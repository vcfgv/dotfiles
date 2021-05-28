#!/bin/zsh

[[ $- != *i* ]] && return

#######################################################################
#                                 ENV                                 #
#######################################################################

export FZF_COMPLETION_TRIGGER='~~'
(( $+commands[fd] )) && {
    _fzf_compgen_path() { fd --hidden --follow --exclude ".DS_Store" --exclude ".git" . "$1" }
    _fzf_compgen_dir() { fd --type d --hidden --follow --exclude ".DS_Store" --exclude ".git" . "$1" }
}
# bindkey '\t' fzf-completion
# bindkey '^I' "$fzf_default_completion"
FZF_FILE_HIGHLIGHTER='cat'
(( $+commands[rougify]   )) && FZF_FILE_HIGHLIGHTER='rougify'
(( $+commands[coderay]   )) && FZF_FILE_HIGHLIGHTER='coderay'
(( $+commands[highlight] )) && FZF_FILE_HIGHLIGHTER='highlight -lO ansi'
(( $+commands[bat]       )) && FZF_FILE_HIGHLIGHTER='bat --color=always'
export FZF_FILE_HIGHLIGHTER

FZF_DIR_HIGHLIGHTER='ls -Gl --color=always'
(( $+commands[tree] )) && FZF_DIR_HIGHLIGHTER='tree -CtrL2'
(( $+commands[lsd]  )) && FZF_DIR_HIGHLIGHTER='lsd --color=always --tree --depth=2'
(( $+commands[exa]  )) && FZF_DIR_HIGHLIGHTER='exa --icons --color=always -TL2'
export FZF_DIR_HIGHLIGHTER

FZF_DEFAULT_COMMAND='(git ls-tree -r --name-only HEAD ||
         find . -path "*/\.*" -prune -o -type f -print -o -type l -print | sed s/^..//) 2> /dev/null'
(( $+commands[ag] )) && FZF_DEFAULT_COMMAND='ag --hidden --ignore .DS_Store --ignore .git -g "" 2>/dev/null'
(( $+commands[fd] )) && FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git --exclude .DS_Store 2>/dev/null'
export FZF_DEFAULT_COMMAND

FZF_DEFAULT_OPTS="
--border
--cycle
--extended
--expect='$continuous_trigger,$print_query'
--height 80%
--info inline
--multi
--reverse
--tiebreak=begin
--delimiter='\x00'
--pointer '➤'
--marker '>'
--prompt '❯ '
--color=fg:-1,bg:-1,hl:#ffaf5f,fg+:-1,bg+:-1,hl+:#ffaf5f
--color=prompt:#5fff87,marker:#ff87d7,spinner:#ff87d7
--bind alt-p:preview-up,alt-n:preview-down
--bind alt-a:select-all,ctrl-r:toggle-all
--bind tab:toggle-out,shift-tab:toggle-in
--bind ctrl-space:toggle,pgup:preview-up,pgdn:preview-down
--bind ctrl-u:half-page-up,ctrl-d:half-page-down
--bind ctrl-s:toggle-sort
--bind ?:toggle-preview,alt-w:toggle-preview-wrap
--bind \"ctrl-y:execute-silent(ruby -e 'puts ARGV' {+} | pbcopy)+abort\"
--bind 'alt-e:execute($EDITOR {} >/dev/tty </dev/tty)'
--bind change:top
--preview \"($FZF_FILE_HIGHLIGHTER {} || $FZF_DIR_HIGHLIGHTER {}) 2>/dev/null | head -200\"
--preview-window right:50%:hidden
"
export FZF_DEFAULT_OPTS

# FZF: Ctrl - T
FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_COMMAND

FZF_CTRL_T_OPTS="
--preview \"($FZF_FILE_HIGHLIGHTER {} || $FZF_DIR_HIGHLIGHTER {}) 2>/dev/null | head -200\"
--bind 'enter:execute(echo {})+abort'
--bind 'alt-e:execute($EDITOR {} >/dev/tty </dev/tty)'
--bind \"ctrl-y:execute-silent(ruby -e 'puts ARGV' {+} | pbcopy)+abort\"
--preview-window right:50%:nohidden
--select-1
--exit-0
"
export FZF_CTRL_T_OPTS

# FZF: Ctrl - R
FZF_CTRL_R_OPTS="
--preview 'echo {}'
--preview-window 'down:3:wrap'
--bind 'ctrl-y:execute-silent(echo -n {3..} | pbcopy)+abort'
--bind '?:toggle-preview'
--header 'Press CTRL-Y to copy command into clipboard'
--exact
--sort
--expect=ctrl-x
"
export FZF_CTRL_R_OPTS

# FZF: Alt - C
FZF_ALT_C_COMMAND="command find -L . -mindepth 1 \
    \\( -path '*/\\.*' -o -fstype 'sysfs' -o -fstype 'devfs' -o -fstype 'devtmpfs' -o -fstype 'proc' \\) \
    -prune -o -type d -print 2> /dev/null | cut -b3-"
(( $+commands[fd]      )) && FZF_ALT_C_COMMAND='fd --type d --hidden --follow --exclude .git 2>/dev/null'
(( $+commands[blsd]    )) && FZF_ALT_C_COMMAND='blsd $dir | grep -v "^\.$"'
export FZF_ALT_C_COMMAND

FZF_ALT_C_OPTS="
--exit-0
--bind 'enter:execute(echo {})+abort'
--preview '($FZF_DIR_HIGHLIGHTER {}) | head -200 2>/dev/null'
--preview-window=right:50%
"
export FZF_ALT_C_OPTS

#######################################################################
#                             FZF_TAB                                 #
#######################################################################
zstyle ':fzf-tab:*' fzf-command fzf
# disable sort when completing options of any command
zstyle ':completion:complete:*:options' sort false
zstyle ':fzf-tab:complete:_zlua:*' query-string input
zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':fzf-tab:*' show-group full
# zstyle ':fzf-tab:*' show-group brief
zstyle ':fzf-tab:*' continuous-trigger '/'
zstyle ':fzf-tab:*' print-query alt-enter
zstyle ':fzf-tab:*' ignore false
zstyle ':fzf-tab:*' single-group color header
export FZF_TAB_GROUP_COLORS=(
$'\033[94m' $'\033[32m' $'\033[33m' $'\033[35m' $'\033[31m' $'\033[38;5;27m' $'\033[36m' \
  $'\033[38;5;100m' $'\033[38;5;98m' $'\033[91m' $'\033[38;5;80m' $'\033[92m' \
  $'\033[38;5;214m' $'\033[38;5;165m' $'\033[38;5;124m' $'\033[38;5;120m'
)
zstyle ':fzf-tab:*' group-colors $FZF_TAB_GROUP_COLORS
zstyle ':fzf-tab:*' fzf-flags --bind tab:toggle-out,shift-tab:toggle-in --height 80%
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ":completion:*:git-checkout:*" sort false
zstyle ':completion:*:*:*:*:processes' command "ps -u $USER -o pid,user,comm,cmd -w -w"
zstyle ':fzf-tab:complete:(kill|ps):argument-rest' fzf-preview '[[ $group == "[process ID]" ]] && ps --pid=$word -o cmd --no-headers -w -w'
zstyle ':fzf-tab:complete:(kill|ps):argument-rest' fzf-flags --preview-window=down:3:wrap
zstyle ':completion:*:exa' file-sort modification
zstyle ':completion:*:exa' sort false
zstyle ":fzf-tab:complete:cd:*" query-string
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa --icons --color=always -TL2 $realpath'
zstyle ':fzf-tab:complete:cd:*' popup-pad 30 0
# zstyle ':fzf-tab:complete:cd:*' fzf-flags --preview-window=right:50%:nohidden
