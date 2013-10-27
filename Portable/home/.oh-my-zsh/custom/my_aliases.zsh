#ls
alias ls='ls --group-directories-first -F --color=auto'
alias lp='ls ;pwd'
alias ll='ls -l ;pwd'
alias la='ls -A;pwd'
alias l='ls -CF;pwd'

#clear
alias c='clear;lp'
alias clear='printf "\ec"'

# path aliases
alias media='cd /media'
alias data='cd /media/data'
alias cours='cd /media/data/Cours'
alias l2='cd /media/data/Cours/L2/S3'
alias dev='cd /media/data/Programmation'
alias cdw7='cd /media/seven'
alias nas='cd /media/nas'
alias gg='cd /media/data/git'

#music
alias lm='mocp -a /media/data/music'
alias nm='mocp -a /media/nas/Multimedia/Musique/'

alias algr=' alias | grep --'
alias p3='python3'
alias pdf='acroread'