#!/usr/bin/env bash

main() {
  local -i i inp="$1"
  local arr=('wink' 'double blink' 'close your eyes' 'jump')
  local rev=0
  (( (inp >> 4) & 1 )) && rev=1
  local out=()

  for (( i=0; i<4; i++ )); do
    if (( (inp >> i) & 1 )); then
      if (( rev )); then
        out=( "${arr[i]}" "${out[@]}" )
      else
        out+=( "${arr[i]}" )
      fi
    fi
  done

  (( ${#out[@]} )) && ( IFS=','; printf '%s\n' "${out[*]}" )
  return 0
}
main "$@"
