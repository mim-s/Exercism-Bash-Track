#!/usr/bin/env bash

main() {
  local -A letters=([G]=C [C]=G [T]=A [A]=U)
  local i char inp="$1" out=''

  for (( i=0; i<${#inp}; i++ )); do
    char="${inp:i:1}"
    if [[ -v letters["$char"] ]]; then
      out+="${letters[$char]}"
    else
      printf "Invalid nucleotide detected.\n" >&2
      exit 1
    fi
  done

  printf '%s\n' "$out"
}

main "$@"
