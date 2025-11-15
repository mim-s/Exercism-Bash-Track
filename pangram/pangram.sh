#!/usr/bin/env bash

main() {
  local -A letters
  local i char text="${*,,}"

  for (( i=0; i<${#text}; i++ )); do
    char=${text:i:1}
    [[ $char == [a-z] ]] && letters[$char]=1
  done

  (( ${#letters[@]} == 26 )) && printf 'true\n' || printf 'false\n'
}

main "$@"
