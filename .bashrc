# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:/usr/local/flutter/bin"
export PATH="$PATH:/home/kchowdhury/Android/Sdk/platform-tools"
export PATH="$PATH:/home/kchowdhury/.local/bin"

eval "$(oh-my-posh init bash --config '/home/kchowdhury/.config/oh-my-posh/amro.omp.json')"

alias clip="xclip -selection clipboard"

# check if kitten is installed

if command -v kitten &> /dev/null
then
    alias icat="kitten icat"
fi

. "/home/kchowdhury/.deno/env"
