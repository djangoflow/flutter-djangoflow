#!/usr/bin/env bash
 
GIT_DIR=$(git rev-parse --git-dir)
 
echo "Installing hooks..."
# this command creates copy our pre-commit script in .git/hooks folder
cp ./tools/pre-commit.bash $GIT_DIR/hooks/pre-commit
echo "Done!"