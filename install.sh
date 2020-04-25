#!/bin/bash

# I use void

sudo xbps-install install emacs git vim rxvt-unicode telegram-desktop irssi profanity rsync urlscan w3m


# Actually install dotfiles

mv .git git
cp -r .* ~/
cp .wall.png ~

mv git .git
auto_view text/html
