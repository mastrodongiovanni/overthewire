#!/bin/sh

if [ -z "$1" ]; then
    echo "Usage: $0 <level_number>"
    exit 1
fi

level=$1
url="https://overthewire.org/wargames/bandit/bandit${level}.html"

# Open URL in default browser
if command -v open &> /dev/null; then
    open "$url"
else
    echo "Could not detect browser opener"
fi

# SSH connection
ssh "bandit${level}@bandit"
