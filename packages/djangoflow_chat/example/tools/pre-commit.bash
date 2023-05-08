#!/usr/bin/env bash
 
printf "\e[33;1m%s\e[0m\n" 'Pre-Commit'
 
# Undo the stash of the files
pop_stash_files () {
   if [ -n "$hasChanges" ]; then
       printf "\e[33;1m%s\e[0m\n" '=== Applying git stash changes ==='
       git stash pop
   fi
}
 
# Stash unstaged files
hasChanges=$(git diff)
if [ -n "$hasChanges" ]; then
   printf "\e[33;1m%s\e[0m\n" 'Stashing unstaged changes'
   git stash push --keep-index
fi
 
# Flutter formatter
printf "\e[33;1m%s\e[0m\n" '=== Running Flutter Formatter ==='
flutter format ./packages/chat/lib/
 
hasNewFilesFormatted=$(git diff)
if [ -n "$hasNewFilesFormatted" ]; then
   git add .
   printf "\e[33;1m%s\e[0m\n" 'Formmated files added to git stage'
fi
printf "\e[33;1m%s\e[0m\n" 'Finished running Flutter Formatter'
printf '%s\n' "${avar}"
 
# Flutter Analyzer
printf "\e[33;1m%s\e[0m\n" '=== Running Flutter analyzer ==='
RESULT=$(flutter analyze --no-pub --no-fatal-infos --no-fatal-warnings)
echo $RESULT
if [[ $RESULT == *"error •"* ]]; then
   echo "----> :O Some files have linter fatal errors, check Dart Analysis"
   printf "\e[33;1m%s\e[0m\n" 'Finished running Flutter analyzer'
   printf '%s\n' "${avar}"
   pop_stash_files
   exit 1
else
   echo "----> All things are good :)"
fi
 
printf "\e[33;1m%s\e[0m\n" 'Finished running Flutter analyzer'
printf '%s\n' "${avar}"
 
 
pop_stash_files