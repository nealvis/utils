#! /bin/bash

GREEN='\033[1;32m'
YELLOW='\033[1;33m'
NOCOLOR='\033[0m'

echo "syncing master with remote"
echo "Make sure the upstream repo has been set via"
echo "git remote add upstream https://github.com/ORIGINAL_OWNER/ORIGINAL_REPOSITORY.git"
echo ""

printf "${YELLOW}git fetch upstream${NOCOLOR}\n"
git fetch upstream
echo ""

printf "${YELLOW}git checkout master${NOCOLOR}\n"
git checkout master
echo ""

printf "${YELLOW}git merge upstream/master${NOCOLOR}\n"
git merge upstream/master
echo ""

echo "Local repo has been sync'ed be sure to do \"git push\" to remote repo."

