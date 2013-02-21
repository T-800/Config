# Add nano as default editor
export EDITOR=nano

alias ls='ls --color=auto'
#[ ! "$UID" = "0" ] && archbey -c white
#[  "$UID" = "0" ] && archbey -c green
#PS1="\[\e[01;31m\]┌─[\[\e[01;35m\u\e[01;31m\]]──[\[\e[00;37m\]${HOSTNAME%%.*}\[\e[01;32m\]]:\w$\[\e[01;31m\]\n\[\e[01;31m\]└──\[\e[01;36m\]>>\[\e[0m\]"



alias ls='ls --color=auto'

# Reset
Color_Off='\e[0m'       # Text Reset

# Regular Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

# Underline
UBlack='\e[4;30m'       # Black
URed='\e[4;31m'         # Red
UGreen='\e[4;32m'       # Green
UYellow='\e[4;33m'      # Yellow
UBlue='\e[4;34m'        # Blue
UPurple='\e[4;35m'      # Purple
UCyan='\e[4;36m'        # Cyan
UWhite='\e[4;37m'       # White

# Background
On_Black='\e[40m'       # Black
On_Red='\e[41m'         # Red
On_Green='\e[42m'       # Green
On_Yellow='\e[43m'      # Yellow
On_Blue='\e[44m'        # Blue
On_Purple='\e[45m'      # Purple
On_Cyan='\e[46m'        # Cyan
On_White='\e[47m'       # White

# High Intensty
IBlack='\e[0;90m'       # Black
IRed='\e[0;91m'         # Red
IGreen='\e[0;92m'       # Green
IYellow='\e[0;93m'      # Yellow
IBlue='\e[0;94m'        # Blue
IPurple='\e[0;95m'      # Purple
ICyan='\e[0;96m'        # Cyan
IWhite='\e[0;97m'       # White

# Bold High Intensty
BIBlack='\e[1;90m'      # Black
BIRed='\e[1;91m'        # Red
BIGreen='\e[1;92m'      # Green
BIYellow='\e[1;93m'     # Yellow
BIBlue='\e[1;94m'       # Blue
BIPurple='\e[1;95m'     # Purple
BICyan='\e[1;96m'       # Cyan
BIWhite='\e[1;97m'      # White

# High Intensty backgrounds
On_IBlack='\e[0;100m'   # Black
On_IRed='\e[0;101m'     # Red
On_IGreen='\e[0;102m'   # Green
On_IYellow='\e[0;103m'  # Yellow
On_IBlue='\e[0;104m'    # Blue
On_IPurple='\e[10;95m'  # Purple
On_ICyan='\e[0;106m'    # Cyan
On_IWhite='\e[0;107m'   # White


if [ "$color_prompt" = yes ]; then
    PS1="\[$BCyan\]┌─[\[$BGreen\]\D{%d/%m-%T}\[$BCyan\]]\[\033[33;1m\]\[$BCyan\]──[\[$BWhite\]\u\[$BCyan\]]──[\[$BRed\]\h\[$BCyan\]][\[$BRed\]\!\[$BCyan\]]\[$BWhite\]\w\[$BCyan\]$\n└─>>"
else
    PS1="\[$BCyan\]┌─[\[$BGreen\]\D{%d/%m-%T}\[$BCyan\]]\[\033[33;1m\]\[$BCyan\]──[\[$BWhite\]\u\[$BCyan\]]──[\[$BRed\]\h\[$BCyan\]][\[$BRed\]\!\[$BCyan\]]\[$BWhite\]\w\[$BCyan\]$\n└─>>"
fi

if [ -f /etc/bash_completion ]; then
. /etc/bash_completion
fi


#ALIASES

#ls
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias lf='ls -Gl | grep ^d' #Only list directories
alias lsd='ls -Gal | grep ^d' #Only list directories, including hidden ones
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''
alias al="alias | grep"

#history
alias hist="history"
alias clhist="history -c"
alias s!!='sudo !!  '

#clear
alias c='clear;pwd;ll'
alias clear='printf "\ec"'


# apt-get aliases
# Debian
alias apt-get='sudo apt-get'
alias install='sudo apt-get install'
alias upgrade='sudo apt-get update && apt-get upgrade && apt-get clean'
alias aclean='sudo apt-get cean'
alias autoremove='sudo apt-get autoremove'
# Arch
#alias install='yaourt -a'
#alias update='yaourt -Syyuua'
#alias remove='yaourt -R'
#alias purge='yaourt -Qdt'


# path aliases
alias ..='cd ..'
alias media='cd /media'
alias data='cd /media/Data'
alias cours='cd /media/Data/Cours'
alias l1='cd /media/Data/Cours/L1/S2'
alias lat='cd /media/Data/Cours/L1/S2/LaTeX/Projet2'
alias l2='cd /media/Data/Cours/L2/S4'
alias lc='cd /media/Data/Cours/L2/S4/LC4'
alias dev='cd /media/Data/Programmation'
alias cdw7='cd /media/OS'
alias nas='cd /media/Nas'


#GIT
alias gconf="~/git_Conf_push.sh"
alias cg="cd /media/Data/Git/"
alias m="git add .;git commit -m"
alias mp="git push origin master" #master push
# Test

#Fonctions 

#Make and cd into directory
function mcd() {
  mkdir -p "$1" && cd "$1";
}

#cd, clear, ls
cd(){
	clear
	builtin cd $*
	ls -ahl
}



#Extract most know archives with one command
extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

function stats () {
   if [ ! $1 ] || [ $1 == '-a' ]; then
     perl -ne 'chomp(); $sum += $_; ++$n; END { printf "$n\t$sum\t%.2e\n", $sum/$n }'
   elif [ $1 == '-m' ]; then
     perl -ne 'chomp(); $sum += $_; ++$n; END { printf "%.2e\n", $sum/$n }'
   elif [ $1 == '-s' ]; then
     perl -lne 'chomp(); $sum += $_; ++$n; END { print $sum }'
   fi
}

n (){
($* ; notify-send "Command over" "$*")
}