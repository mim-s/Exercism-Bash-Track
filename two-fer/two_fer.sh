#!/usr/bin/env bash

main() {
	if [ "$1" = "" ]; then
		printf "One for you, one for me."
	else
		printf 'One for %s, one for me.' "$1"
	fi
}

main "$@"
