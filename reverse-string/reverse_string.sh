#!/usr/bin/env bash

main() {
	s="$1"
	out=""
	for (( i="${#s}"-1; i>=0; i-- )); do
		out+="${s:i:1}"
	done
	printf '%s' "$out"
}

main "$@"
