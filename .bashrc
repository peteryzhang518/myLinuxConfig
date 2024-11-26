# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac
export TERM=xterm-256color

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias rg='rg --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias grep='grep --color'
alias chromium='chromium --force-device-scale-factor=2'

#export http_proxy="http://127.0.0.1:7890"
#export https_proxy="http://127.0.0.1:7890"
#export all_proxy="socks5://127.0.0.1:7891"
#export no_proxy=127.0.0.1,localhost
#export HTTP_PROXY="http://127.0.0.1:7890"
#export HTTPS_PROXY="http://127.0.0.1:7890"
#export ALL_PROXY=s"ocks5://127.0.0.1:7891"
#export NO_PROXY=127.0.0.1,localhost

export PATH=$PATH:/home/p/
export PATH=$PATH:/home/p/bin
export PATH=$PATH:/home/p/usr/local
export PATH=$PATH:/home/p/usr/local/bin
export PATH=$PATH:/home/p/share
export PATH=$PATH:/home/p/.local/bin

export LC_CTYPE="zh_CN.UTF-8"
export XMODIFIERS=@im=fcitx5
export XIM=fcitx5
export XIM_PROGRAM=fcitx5
export M_MODULE=fcitx5
export GTK_IM_MODULE=fcitx5
export QT_IM_MODULE=fcitx5
export XMODIFIERS=@im=fcitx5
export SDL_IM_MODULE=fcitx5
export GLFW_IM_MODULE=ibus

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
