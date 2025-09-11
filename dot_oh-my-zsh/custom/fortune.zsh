function fortune_boxed() {
    fortune $HOME/.local/share/fortune/bettercmd | boxes
}

autoload -Uz add-zsh-hook
add-zsh-hook precmd fortune_boxed