#!/bin/sh

# check here : https://www.youtube.com/watch?v=50BMBT05Wk0

case ${1##*.} in
  7z|zip) 7z l -p -- "$1" && exit 1;;
  jpeg|jpg|png|gif) chafa --clear --animate=off --symbols space -s "$2x$3" "$1" && exit 1;;
  *) bat --style=plain --color=always "$1" || cat "$1" && exit 1;;
esac
