#!/bin/bash

if [ `which zsh &> /dev/null; echo $?` -ne 0 ]
then
	echo "zsh doesn't seem to be installed, aborting.."
	exit 6
fi

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
cp ./zshrc "${HOME}"/.zshrc
cp ./zpreztorc "${HOME}"/.zpreztorc

