## eza: better ls
alias l="command ls" # or /bin/ls
alias ls=eza
alias ll="eza -lh --group-directories-first -s modified --color-scale modified --color-scale-mode gradient --time-style relative -m"
# -m 显示modified列，-u显示accessed列，-U显示created列
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
alias pls='sudo'

# ps
alias ps="procs"

# 生成随机密码
alias pwgen32="/usr/local/bin/pwgen -cnyBs -C 32 1"

# curl wget
alias xh="xh --style=fruity --print=Hh"
alias aria="aria2c -x 8 -s 8"

# fzf
alias fzf1="fzf --preview 'bat --style=numbers --color=always {}'"
