#!/usr/bin/env bash

if [[ -z "$(which lci 2> /dev/null)" ]]; then
  echo 'Error: Please install a LOLCODE interpreter'
  echo '       If you use a Mac and Homebrew, run "brew update && brew install lolcode"'
  echo '       Otherwise please follow the instructions here: https://github.com/justinmeza/lci'
  exit 1
fi

if [[ -z "$1" ]]; then
  echo 'Usage: ./go <character>'
  exit 2
fi

echo $1 | lci diamondz.lol
