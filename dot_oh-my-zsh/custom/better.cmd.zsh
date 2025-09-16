## eza: better ls
alias ls=eza
alias ll="ls -lh --group-directories-first -s modified --color-scale modified --color-scale-mode gradient --time-style relative -m"
alias la='ll -a'

## dust: better du
alias du=dust

## fd: better find
alias find=fd

## rmtrash
alias del="rmtrash"
alias trash="rmtrash"

# -E 使用现代正则表达式
alias fd-e='find -E'

# lazygit
alias lg=lazygit

# grep
alias 'grep.p1'='pcregrep'
alias 'grep.p2'='pcre2grep'

# sudo
alias please='sudo'

# ps
alias ps="procs"

# 生成随机密码
alias pwgen="/usr/local/bin/pwgen -cnys -C 32 1"
