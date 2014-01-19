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
cd /media/data/git/Config/
echo -e "$VERT" "Copie des fichiers $NORMAL"

ecp -v ./Portable/home/.bashrc ~/
ecp -v ./Portable/home/git_Conf_push.sh ~/
ecp -v ./Portable/home/.moc/config ~/
ecp -v  ./Portable/home/.moc/keymap ~/




cp -r ./Portable/home/.conky/* ~/.conky/ 
cp -r ./Portable/home/openbox/* ~/.config/openbox/
cp -r ./Portable/home/tint2/* ~/.config/tint2/
sudo cp /etc/fstab ./Portable/r/


echo -e "Copie des fichiers $VERT Terminé $NORMAL"
