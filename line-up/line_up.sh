#!/usr/bin/env bash

main() {
  local name="$1"
  local -i num="$2"
  local suffix='th'

  if   (( num%10 == 1 && num%100 != 11 )); then
    suffix='st'
  elif (( num%10 == 2 && num%100 != 12 )); then
    suffix='nd'
  elif (( num%10 == 3 && num%100 != 13 )); then
    suffix='rd'
  fi

  printf '%s, you are the %d%s customer we serve today. Thank you!\n' "$name" "$num" "$suffix"
}

main "$@"
