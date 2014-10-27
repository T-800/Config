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
alias cours='cd /media/data/git/Cours'
alias l3='cd /media/data/git/Cours/L3/S5'
alias pf5='cd /media/data/git/Cours/L3/S5/PF5'
alias sy5='cd /media/data/git/Cours/L3/S5/SY5'
alias al5='cd /media/data/git/Cours/L3/S5/AL5'
alias poo5='cd /media/data/git/Cours/L3/S5/POO-IG5'
alias pjt='/media/data/git/ProjetL3'
alias nas='cd /media/nas'
alias gg='cd /media/data/git'
alias omz='cd /usr/share/oh-my-zsh'
alias oc='rlwrap ocaml'
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

alias oc='rlwrap ocaml'
#alias ssp7='ssh -X @nivose.informatique.univ-paris-diderot.fr '
#alias scp7='scp $3 $1 adequin@nivose.informatique.univ-paris-diderot.fr:$2 '

ssp7() { 
	ssh "$*"@nivose.informatique.univ-paris-diderot.fr; 
}

scp7() { 
	scp "$4" "$2" "$1"@nivose.informatique.univ-paris-diderot.fr:"$3";
}


#Fonctions
grepit(){
    find . -name "*${2}" -print | xargs grep -nir "${1}"
}
n (){
($* ; zenity --info --text="Commande terminée\n$*")
}

#Make and cd into directory
function mcd() {
  mkdir -p "$1" && cd "$1";
}
