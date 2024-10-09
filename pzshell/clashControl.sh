#!/bin/bash

#clash

CLASH_CONFIG_DIR="$HOME/.config/clash"
ENV_PROXY_DIR="$HOME/.bashrc_noproxy"

set_proxy() {
    if [ -f $ENV_PROXY_DIR ]; then
        echo "已经被设置过了哦"
    else
    	cp ~/.bashrc ~/.bashrc_noproxy
#    	echo "export http_proxy=\"http://127.0.0.1:7890\"" >> ~/.bashrc
#    	echo "export https_proxy=https://127.0.0.1:7890" >> ~/.bashrc
#    	echo "export all_proxy=socks5://127.0.0.1:7891" >> ~/.bashrc
#    	echo "export no_proxy=127.0.0.1,localhost" >> ~/.bashrc
#    	echo "export HTTP_PROXY=http://127.0.0.1:7890" >> ~/.bashrc
#    	echo "export HTTPS_PROXY=https://127.0.0.1:7890" >> ~/.bashrc
#    	echo "export ALL_PROXY=socks5://127.0.0.1:7891" >> ~/.bashrc
#    	echo "export NO_PROXY=127.0.0.1,localhost" >> ~/.bashrc

    	echo 'export http_proxy="http://127.0.0.1:7890"' >> ~/.bashrc
    	echo 'export https_proxy="http://127.0.0.1:7890"' >> ~/.bashrc
    	echo 'export all_proxy="socks5://127.0.0.1:7891"' >> ~/.bashrc
    	echo 'export no_proxy=127.0.0.1,localhost' >> ~/.bashrc
    	echo 'export HTTP_PROXY="http://127.0.0.1:7890"' >> ~/.bashrc
    	echo 'export HTTPS_PROXY="http://127.0.0.1:7890"' >> ~/.bashrc
    	echo 'export ALL_PROXY=s"ocks5://127.0.0.1:7891"' >> ~/.bashrc
    	echo 'export NO_PROXY=127.0.0.1,localhost' >> ~/.bashrc
        source ~/.bashrc
    	echo "系统代理已经设置 哈哈"
    fi
}

unset_proxy() {
    if [ -f $ENV_PROXY_DIR ]; then
    	mv ~/.bashrc_noproxy ~/.bashrc 
        source ~/.bashrc
        echo "系统代理已经清除 gg"
    else
        echo "之前也清除过了之后哦"
    fi
}

start_clash() {
    clash -d $CLASH_CONFIG_DIR &
    echo "clash 冲"
    set_proxy
}

stop_clash() {
    pkill clash
    echo "clash 停"
    unset_proxy
}

case "$1" in
    start)
        start_clash
        ;;
    stop)
        stop_clash
        ;;
    *)
        echo "用法：$0 {start|stop}"
        exit 1
esac
