#!/usr/bin/env bash


if [[ $EUID == 0 ]]; then
    echo "PAS SUDO"
    exit 1
fi

echo "Copie du dossier home"
cp -r ./home $HOME &> /dev/null || echo "erreur $@"


echo "installation Oh-my-zsh et oh-my-zsh-powerline-theme-git"
yaourt -a oh my zsh


echo "installation tint2-svn"
yaourt -a tint2-svn


echo "installation zeal"
yaourt -a zeal



# Atom

sudo pacman -Syyuu tilda galculator ocaml


echo "installation opam"
yaourt -a opam

echo "Copie du dossier zsh"
sudo cp -r ./oh-my-zsh/ /usr/share/oh-my-zsh/ &> /dev/null || echo "erreur $@"
