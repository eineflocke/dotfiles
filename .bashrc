mkdir -p ~/.vimundo

[ -s ~/.bashrc-original ] && . ~/.bashrc-original

[ -n "$(locale -a | grep "ja_JP.utf8")" ] && export LANG="ja_JP.utf8"

### history
export HISTSIZE=2000
export HISTFILESIZE=2000
export HISTCONTROL=ignoredups

### overwriting aliases
alias cp="cp -rf"
alias grep="grep -i --color=auto"
alias ls="ls -A --color=auto"
alias mv="mv -f"
alias ps="ps aux"
alias rm="rm -rf"
alias vim="TERM=screen-256color vim"

### new aliases
alias b="cd .."
alias bb="cd ../.."
alias bbb="cd ../../.."
alias c="cd"
alias hg="history | grep"
alias l="ls"
alias l1="ls -1"
alias la="ls"
alias lc="ls -lc"
alias ll="ls -l"
alias lu="ls -lu"
alias lw="ls -1 | wc -l"
alias pg="ps | grep"
alias psme="ps | grep ^${USER}"
alias v="vim"

for b in $(find ~/. -maxdepth 1 -name ".bashrc-plus-*"); do . ${b}; done

