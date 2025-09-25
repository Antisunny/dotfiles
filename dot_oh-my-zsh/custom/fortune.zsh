# 数据库在 ~/.local/share/fortune/bettercmd
function fortune_boxed() {
    fortune $HOME/.local/share/fortune/merged | boxes -d ansi --color | awk 'BEGIN{print "\033[90m"} {print} END{print "\033[0m"}'
}

autoload -Uz add-zsh-hook
add-zsh-hook precmd fortune_boxed

# vim: set ft=zsh