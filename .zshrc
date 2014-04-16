# metc/zshrc: system-wide .zshrc file for zsh(1).
#
# This file is sourced only for interactive shells. It
# should contain commands to set up aliases, functions,
# options, key bindings, etc.
#
# Global Order: zshenv, zprofile, zshrc, zlogin

#
# This configuration file is managed by the redbrick-shell-env
# package. CHANGES MADE HERE WILL NOT BE PRESERVED.
#


# Stoopid terminals!
#


setopt automenu
setopt autocd
unsetopt cdablevars
setopt correct
setopt noclobber
setopt extendedglob
setopt histignoredups
setopt listtypes

# Set global aliases
#
_alias() {
        alias $1="$2"
}




alias rb='ssh -i ~/.ssh/EU-Key-Linux paddez@redbrick.dcu.ie'
alias pu='pushd'
alias po='popd'
alias se='bindkey -e; MODE=emacs'
alias sv='bindkey -v; MODE=vi'
alias won='watch=(notme)'
alias woff='unset watch'
alias pon='won; mesg y'
alias poff='woff; mesg n'
alias paris='ssh -i ~/.ssh/EU-Key-Linux paddez@paddez.com'
alias oculus='ssh -i ~/.ssh/EU-Key-Linux ubuntu@oculus.paddez.com'

# Default prompt (mostly newbies get this).
#
#PS1="%n@%m (%25<..<%~) %# "
RPS1="$(print '%{\e[1;31m%}[%{\e[0;36m%}%T%{\e[1;31m%}]%{\e[0m%}')"
PS1="$(print '%{\e[0;36m%}%n%{\e[0;37m%}@%{\e[1;34m%}%m%{\e[1;31m%} (%{\e[0m%}%25<..<%~%{\e[1;31m%})%{\e[1;33m%} -> %{\e[0m%}')"
#fix some keys
bindkey    "^[[3~"          delete-char
bindkey    "^[3;5~"         delete-char
[[ -z "$terminfo[kend]" ]] || bindkey -M emacs "$terminfo[kend]" end-of-line
[[ -z "$terminfo[khome]" ]] || bindkey -M emacs "$terminfo[khome]" beginning-of-line
OSXey -c
