#!/bin/bash

S=$?

END="\[\e[0m\]"
RED="\[\e[31;1m\]"
CYAN="\[\e[36;1m\]"
GREEN="\[\e[32;1m\]"
YELLOW="\[\e[33;1m\]"

if [[ $S -eq 0 ]]; then
        DOLLAR="${YELLOW}\$"
else
        DOLLAR="${RED}\$"
fi

PS1="${CYAN}\u${END}@${RED}\h${END} ${GREEN}\w${END} \$(date +%k:%M) ${DOLLAR}${END}"
