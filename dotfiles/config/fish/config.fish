set -gx fish_greeting ""

set -q XDG_CONFIG_HOME || set XDG_CONFIG_HOME "$HOME/.config"
set -x STARSHIP_CONFIG $XDG_CONFIG_HOME/zsh/themes/starship.toml

set -x EDITOR nvim
set fish_cursor_default block
set fish_cursor_unknown line       blink
set fish_cursor_insert  line       blink
set fish_cursor_replace underscore blink
set fish_cursor_visual  block
set -x LS_COLORS "di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
set -x BAT_CONFIG_PATH $XDG_CONFIG_HOME/bat/config

# Set the emoji width for iTerm
set -g fish_emoji_width 2

source $XDG_CONFIG_HOME/fish/aliases.fish

for mode in insert default visual
    bind -M $mode -k nul accept-autosuggestion execute
end

starship init fish | source
