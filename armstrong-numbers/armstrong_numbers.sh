#!/usr/bin/env bash

main() {
	local s="$1"
	local length="${#s}"

	local num=0 i
	for (( i=0; i<length; i++ )); do
		(( num += ${s:i:1} ** length ))
	done

	if (( s == num )); then
		printf "true"
	else
		printf "false"
	fi
}

main "$@"
