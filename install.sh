#!/bin/bash

# I use debian!

sudo apt install emacs git vim rxvt-unicode telegram-desktop irssi profanity rsync compiz emerald


# Actually install dotfiles

mv .git git
cp -r .* ~/
cp -vr .compiz .emerald ~/
mv git .git
