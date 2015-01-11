#!/bin/zsh

# If I run this in my home directory, cd into the right folder
cd "$(dirname "$0")"

# Update the repo
git pull

# Install required binaries
for cmd in brew ag tmux
do
  if ! hash $cmd 2>&-
  then
      echo >&2 "I require $cmd but it's not installed. Aborting."
      exit 1
  fi
done

#FIXME: Warn me I'm gonna lose the changes I've done outside the repo
rsync --exclude-from .gitignore --exclude ".git/" --exclude ".DS_Store" --exclude ".gitmodules" --exclude "bootstrap.sh" --exclude "README.md" -av . ~
