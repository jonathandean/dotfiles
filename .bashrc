umask 027

function parse_git_branch {
        git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Env vars
if [ -f ~/.bash_env ]; then source ~/.bash_env ; fi
# Aliases
if [ -f ~/.bash_alias ]; then source ~/.bash_alias ; fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
