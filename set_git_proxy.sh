#!/bin/bash

#=======================================================
# set_git_proxy.sh - auto set and unset git proxy
#
# Created by hyl on 2021/06/18
# Last Modified: 2021/06/27 23:38:33
#=======================================================

PROXY="${2:-socks5}"
PORT="${3:-10808}"
OPT="${1:--u}"
IP=$(ip route | grep default | awk '{print $3}')

main() {
        if [ "${OPT}" == "-s" ]; then
                git config --global http.proxy "${PROXY}://${IP}:${PORT}"
                git config --global https.proxy "${PROXY}://${IP}:${PORT}"
        elif [ "${OPT}" == "-u" ]; then
                git config --global --unset http.proxy
                git config --global --unset https.proxy
        elif [ "${OPT}" == "-h" ]; then
                mhelp
        else
                echo "Unkowon option: '$1'. See 'set_git_proxy -h' for more help"
        fi
}

mhelp() {
        echo -e "NAME\n\tset_git_proxy - auto set and unset proxy for Git"
        echo -e "SYNOPSIS\n\tset_git_proxy [OPTION] [PROXY] [PORT]"
        echo -e "DESCRIPTION\n\t-s\n\t\tset the proxy for Git"
        echo -e "\n\t-u\n\t\tunset the proxy for Git"
}

main
