# combine z & cd
function j() {
    if [[ "$argv[1]" == "-"* ]]; then
        z "$@"
    else
        cd "$@" 2> /dev/null || z "$@"
    fi
}

# history
# 限制单条历史记录长度
# return 1: will not be saved
# reutnr 2: saved on the internal history list
autoload -Uz add-zsh-hook
add-zsh-hook zshaddhistory max_history_len
function max_history_len() {
    if (($#1 > 160)) {
        return 2
    }
    return 0
}

export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=100000
export SAVEHIST=1000000
export LISTMAX=50
# 记录时间戳
setopt extended_history
# 首先移除重复历史
setopt hist_expire_dups_first
# 忽略重复
setopt hist_ignore_dups
# 忽略空格开头的命令
setopt hist_ignore_space
# remove superfluous blanks before recording entry.
setopt hist_reduce_blanks
# 展开历史时不执行
setopt hist_verify
# 按执行顺序添加历史
setopt inc_append_history
# 更佳性能
setopt hist_fcntl_lock
# 实例之间即时共享历史 使用 fc -IR 读取历史  fc -IA 保存历史
# setopt share_history
# Beep when accessing nonexistent history.
setopt hist_beep
# Do not add in root
[[ "$UID" == 0 ]] && unset HISTFILE && SAVEHIST=0


# 直接输入路径即可跳转
setopt auto_cd
# 允许多次重定向
setopt multios
# 自动添加目录栈
setopt auto_pushd
setopt pushd_ignore_dups
# 补全列表允许不同列宽
setopt listpacked
# 交互模式下使用注释
setopt interactive_comments
# RPROMPT 执行完命令后就消除, 便于复制
setopt transient_rprompt
# setopt 输出显示开关状态
setopt ksh_option_print
# 单引号中 '' 表示一个 '
setopt rc_quotes
# 增强 glob
setopt extended_glob
# 没有匹配时原样输出 glob 而不是报错
setopt no_nomatch
# 开启拼写检查
setopt correct
