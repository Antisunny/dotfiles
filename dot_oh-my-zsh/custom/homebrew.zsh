# 自动更新间隔，单位秒，默认86400（一天）
export HOMEBREW_AUTO_UPDATE_SECS=86400
# 不要提示环境变量相关的信息
export HOMEBREW_NO_ENV_HINTS=1
# Brewfile位置
export HOMEBREW_BUNDLE_FILE=~/Brewfile

# homebrew源
#export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles

# zsh plugins
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

alias bb='brew bundle'
