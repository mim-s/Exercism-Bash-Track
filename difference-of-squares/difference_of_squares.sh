#!/usr/bin/env bash

square_of_sum() {
  local -i n="$1"
  printf '%d\n' $(( (n*(n+1)/2) ** 2 ))
}

sum_of_squares() {
  local -i n="$1"
  printf '%d\n' $(( n*(n+1)*(2*n+1) / 6 ))
}

difference() {
  printf '%d\n' $(( $(square_of_sum "$1") - $(sum_of_squares "$1") ))
}

main() {
  "$1" "$2"
}

main "$@"
