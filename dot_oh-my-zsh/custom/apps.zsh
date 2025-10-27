alias zshrc="$EDITOR ~/.zshrc"

alias iina='open -a IINA'

alias preview='open -a preview'

# https://stackoverflow.com/questions/3102819/disable-same-origin-policy-in-chrome
alias edge_wo_cors='open -na "Microsoft Edge" --user-data-dir=/tmp/temporary-chrome-profile-dir --disable-web-security'

alias vscode='open -a "Visual Studio Code"'

alias wechat='nohup /Applications/WeChat.app/Contents/MacOS/WeChat &>/dev/null &'

alias microsoft-updater='echo "更新Microsoft Office" && open -a "/Library/Application Support/Microsoft/MAU2.0/Microsoft AutoUpdate.app"'

alias refresh-dns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder; echo "DNS 缓存已刷新"'
