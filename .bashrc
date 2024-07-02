#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias cls='clear'
alias air='~/go/bin/air'
alias ls='ls -a --color=auto'
alias ll='ls -l -h --color=auto'
alias davinci='distrobox enter Fedora37_Davinci -- /opt/resolve/bin/resolve'
alias grep='grep --color=auto'
alias v='nvim'
alias n='z ~/Documents/School/Notes/ && nvim'

alias llink='readlink -f'
PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"
eval "$(zoxide init bash)"
export EDITOR='nvim'
