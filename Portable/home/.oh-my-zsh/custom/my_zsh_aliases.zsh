#LS aliases
alias ls='ls --group-directories-first -F --color=auto'
alias lp='ls ;pwd'

alias ll='ls -l ;pwd'
alias la='ls -A;pwd'
alias l='ls -CF;pwd'

# SUDO

alias s!!='sudo !!  '

#CLEAR
alias c='clear;lp'
alias clear='printf "\ec"'

# path aliases
alias bd=". bd -s"
alias ..='cd ..'
alias media='cd /media'
alias data='cd /media/data'
alias cours='cd /media/data/Cours'
alias l2='cd /media/data/Cours/L2/S3'
alias dev='cd /media/data/Programmation'

alias cdw7='cd /media/seven'
alias nas='cd /media/Nas/Ajaxpf'

#music
alias lm='mocp -a /media/data/music'
alias nm='mocp -a /media/nas/Multimedia/Musique/'

#GIT
alias gg="cd /media/data/git"
alias gconf="~/git_Conf_push.sh"
alias gd="git diff"
alias gs="git status"
alias gchs="git status"
alias gco="git add --all;git commit -m"
alias gmp="git push origin master" #master push
alias gp="git push origin" # push
alias gb="git branch" 
alias gbr="git branch -r" 