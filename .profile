export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export ANDROID_HOME=/Users/pwolak/android_testing/adt-bundle-mac-x86_64-20140702/sdk
export SCREENSHOT_VIA_USB=true
export PATH=$PATH:/Users/pwolak/android_testing/adt-bundle-mac-x86_64-20140702/sdk/platform-tools/:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools/:$HOME/bin

# PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/python:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/Users/pwolak/Downloads/play-2.1.2
PYTHONPATH=/usr/local/lib/python2.7/site-packages

function parse_git_branch_and_add_brackets {
git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

function parse_git_branch () {
       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

# PS1="$GREEN\u@machine$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "
PS1="\W\[\033[0;32m\]\$(parse_git_branch_and_add_brackets) \[\033[0m\]\$ "

[ -f /usr/local/share/python/virtualenvwrapper.sh ] && source /usr/local/share/python/virtualenvwrapper.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
