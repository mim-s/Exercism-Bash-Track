#!/usr/bin/env bash

main() {
	printf 'One for %s, one for me.' "${1:-you}"
}

main "$@"
