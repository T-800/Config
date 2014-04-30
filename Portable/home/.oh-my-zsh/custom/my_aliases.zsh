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
alias l2='cd /media/data/Cours/L2/S4'
alias nas='cd /media/nas'
alias gg='cd /media/data/git'
alias ls4='cd /media/data/git/LS4'
alias af4='cd /media/data/git/AF4'
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''


#music
alias lm='mocp -a /media/data/music'
alias nm='mocp -a /media/nas/Multimedia/Musique/'

alias algr=' alias | grep --'
alias p3='python3'
alias pysave='mv ~/.pythonhistory ./history'
alias open='xdg-open'
alias ct='pygmentize -O bg=dark'

#Markdown
alias m='markdown-pdf -s ~/markdown.css -o '

#
alias k9='kill -9'
alias github="chromium \`git remote -v | grep github.com | grep fetch | head -1 | field 2 | sed 's/git:/http:/g'\`"
alias up="~/Documents/ranwhen/ranwhen.py"
alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias grep='grep --color=auto'

alias codebox='/home/renaud/.codebox/start.sh'


#Fonctions
grepit(){
    find . -name "*${2}" -print | xargs grep -nir "${1}"
}
n (){
($* ; notify-send "Commande terminée" "$*")
}
