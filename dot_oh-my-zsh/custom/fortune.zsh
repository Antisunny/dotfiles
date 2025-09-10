function fortune_boxed() {
    fortune $HOME/.local/share/fortune/bettercmd | boxes -d peek -a c
}

autoload -Uz add-zsh-hook
add-zsh-hook precmd fortune_boxed