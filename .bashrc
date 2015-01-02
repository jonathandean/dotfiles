umask 027

function parse_git_branch {
        git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# login prompt
export PS1="\e[32m[\t]\e[0m \u@\h\e[33m [\w]\e[0m \$(parse_git_branch)\n> "

# Env vars
if [ -f ~/.bash_env ]; then source ~/.bash_env ; fi
# Aliases
if [ -f ~/.bash_alias ]; then source ~/.bash_alias ; fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
