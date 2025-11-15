#!/usr/bin/env bash

main() {
  local inp="$1" out=''

  (( inp % 3 == 0 )) && out+='Pling'
  (( inp % 5 == 0 )) && out+='Plang'
  (( inp % 7 == 0 )) && out+='Plong'

  printf '%s\n' "${out:-$inp}"
}

main "$@"
