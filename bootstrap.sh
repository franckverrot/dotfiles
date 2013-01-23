#!/bin/zsh

# If I run this in my home directory, cd into the right folder
cd "$(dirname "$0")"

# Update the repo
git pull

# Install required binaries

if ! hash brew 2>&-
then
    echo >&2 "I require brew but it's not installed.  Aborting."
    exit 1
fi

if ! hash ag 2>&-
then
    echo >&2 "I require ag. Please run 'brew install the_silver_searcher'. Aborting."
    exit 1
fi

#FIXME: Warn me I'm gonna lose the changes I've done outside the repo
rsync --exclude-from .gitignore --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "README.md" -av . ~
