#!/bin/bash

#Ce script copie les fichiers de config :
#	~/.bashrc
#	~/.conkyrc
#	~/.conkyrc2
#	~/.config/openbox/*
#	~/.config/sublime-text-2/*
#	~/.config/tint2/*
#Dans /media/Data/Git/Config/home/ et
#	/etc/fstab
#Dans r/

# ensuite il fait un add, un commit et pour finir un push
#il prend en argument le commentaire

VERT="\\033[1;32m"
NORMAL="\\033[0;39m"
JAUNE="\\033[1;33m"
ROUGE="\\033[1;31m"

/media/data/git/Config/Portable$

if [ $# > 1 ]
	then
		echo -e "$ROUGE" "Ce script peut prendre un argument (optionnel) $NORMAL"
fi 
cd /media/data/git/Config/

echo -e "\n"
echo -e "$VERT" "Copie des fichiers $NORMAL"

cp ~/.bashrc ./Portable/home/
cp -r ~/git_Conf_push.sh ./Portable/home/

cp -r ~/.conky/* ./Portable/home/.conky/
cp -r ~/.config/openbox/* ./Portable/home/openbox/
cp -r ~/.config/tint2/* ./Portable/home/tint2/
cp /etc/fstab ./Portable/r/

vardate="$(date +%d-%m-%Y) à $(date +%Hh%M)"

echo -e "$VERT" "git add --all et git commit -m $NORMAL"
git add --all

if [ $# == 1 ]
	then
	git commit -m "$1"
else
	git commit -m "Maj du $vardate"
fi

echo -e "\n"
echo -e "$VERT" "Push $NORMAL"
git push origin master