#!/bin/bash

DOT_FILES=(.cshrc .alias.csh .complete.tcsh)

for file in ${DOT_FILES[@]}
	do
		ln -s $HOME/dotfiles/$file $HOME/$file
done
