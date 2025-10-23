# 数据库在 ~/.local/share/fortune/bettercmd
function fortune_boxed() {
    fortune $HOME/.local/share/fortune/merged | boxes -d ansi --color | awk 'BEGIN { printf "%s", "\033[38;5;196m" } { printf "%s\n", $0 } END { printf "%s", "\033[0m" }'
}

autoload -Uz add-zsh-hook d
add-zsh-hook precmd fortune_boxed

# vim: set ft=zsh