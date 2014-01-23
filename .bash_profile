[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/python:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/Users/pwolak/Downloads/play-2.1.2
PYTHONPATH=/usr/local/lib/python2.7/site-packages

function parse_git_branch_and_add_brackets {
git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}
PS1="\W\[\033[0;32m\]\$(parse_git_branch_and_add_brackets) \[\033[0m\]\$ "

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
