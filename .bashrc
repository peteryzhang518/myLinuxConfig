alias grep='grep --color'
alias chromium='chromium --force-device-scale-factor=2'

export http_proxy="http://127.0.0.1:7890"
export https_proxy="http://127.0.0.1:7890"
export all_proxy="socks5://127.0.0.1:7891"
export no_proxy=127.0.0.1,localhost
export HTTP_PROXY="http://127.0.0.1:7890"
export HTTPS_PROXY="http://127.0.0.1:7890"
export ALL_PROXY=s"ocks5://127.0.0.1:7891"
export NO_PROXY=127.0.0.1,localhost
export TERM=xterm-256color

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
