#!/usr/bin/env bash

main() {
  local year="$1"
  if (( $# != 1 )) || [[ ! $year =~ ^[0-9]+$ ]]; then
    printf '%s\n' "Usage: leap.sh <year>" >&2
    exit 1
  fi

  if (( (year%4==0 && year%100!=0) || year%400==0 )); then
    printf '%s\n' "true"
  else
    printf '%s\n' "false"
  fi
}
main "$@"
