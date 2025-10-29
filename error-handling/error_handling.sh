#!/usr/bin/env bash

main() {
	if (( $# == 1 )); then
		printf 'Hello, %s\n' "$1"
	else
		printf "Usage: error_handling.sh <person>\n" >&2
		exit 1
	fi
}

main "$@"
