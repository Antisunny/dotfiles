# 数据库在 ~/.local/share/fortune/bettercmd
function fortune_boxed() {
    fortune $HOME/.local/share/fortune/merged | boxes -d ansi
}

autoload -Uz add-zsh-hook
add-zsh-hook precmd fortune_boxed

# vim: set ft=zsh