#!/usr/bin/env bash

error() {
  printf '%s\n' "$1" >&2
  exit 1
}

main() {
  (($# != 2)) && error 'Usage: hamming.sh <string1> <string2>'

  local -r a="$1"
  local -r b="$2"

  ((${#a} != ${#b})) && error 'left and right strands must be of equal length'

  local -i i distance=0
  for ((i = 0; i < ${#a}; i++)); do
    [[ "${a:i:1}" != "${b:i:1}" ]] && ((distance++))
  done

  printf '%d\n' "$distance"
}

main "$@"
