#!/usr/bin/env bash

main() {
  local -i score="$1"

  if [[ "$2" == 'list' ]]; then
    local -ra arr=("eggs" "peanuts" "shellfish" "strawberries" "tomatoes" "chocolate" "pollen" "cats")
    local -a allergies=()

    local -i i
    for ((i = 0; i < ${#arr[@]}; i++)); do
      ((score & (1 << i))) && allergies+=("${arr[i]}")
    done

    printf '%s\n' "${allergies[*]}"

  else
    local -rA check_arr=([eggs]=0 [peanuts]=1 [shellfish]=2 [strawberries]=3 [tomatoes]=4 [chocolate]=5 [pollen]=6 [cats]=7)

    ((score & (1 << ${check_arr["$3"]}))) && printf 'true\n' || printf 'false\n'

  fi
}

main "$@"
