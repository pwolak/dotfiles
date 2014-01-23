function parse_git_branch () {
       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

PS1="$GREEN\u@machine$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "
PATH="$PATH:/Users/pwolak/Downloads/play-2.1.2"

source /usr/local/share/python/virtualenvwrapper.sh
