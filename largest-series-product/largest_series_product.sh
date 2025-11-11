#!/usr/bin/env bash

error() {
  printf '%s\n' "$1" >&2
  exit 1
}

main() {
  local inp="$1"
  local -i inp_len="${#inp}" span="$2"
  [[ ! $inp =~ ^[0-9]*$ ]] && error 'input must only contain digits'
  (( span < 0 )) && error 'span must not be negative'
  (( span > inp_len )) && error 'span must not exceed string length'

  local -i i j ans=0 temp=1
  for (( i=0; i<=(inp_len - span); i++ )); do
    temp=1
    for (( j=i; j<(i + span); j++ )); do
      (( temp*=${inp:j:1} ))
    done
    (( temp > ans)) && ans=temp
  done

  printf '%d\n' "$ans"
}

main "$@"
