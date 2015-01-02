if [ -f ~/.bashrc ]; then source ~/.bashrc ; fi

# better version of openssl
export PATH="/usr/local/Cellar/openssl/1.0.1i/bin:$PATH"

export PATH="/usr/local/heroku/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
