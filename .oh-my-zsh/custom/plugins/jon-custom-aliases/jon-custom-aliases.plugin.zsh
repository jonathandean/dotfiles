# Get to common directories fast
alias proj='cd ~/Projects'

# Rails
alias fs='bundle exec foreman start'
alias fsd='bundle exec foreman start -f Procfile.dev'
alias rspecs="RAILS_ENV=test RACK_ENV=test bundle exec rake spec"
alias rspecsff="RAILS_ENV=test RACK_ENV=test bundle exec rspec spec/ --fail-fast"
alias runspec="RAILS_ENV=test RACK_ENV=test bundle exec rspec"
alias resetdb='bin/rake db:drop db:create db:migrate db:seed'
alias migrate='bin/rake db:migrate && RAILS_ENV=test be rake db:migrate'
alias rollback='bin/rake db:rollback && RAILS_ENV=test be rake db:rollback'
alias rc='bin/rails c'
alias rk="bin/rake"
alias routes="bin/rails routes"

# Git
alias pull="git pull --rebase"
alias master="git checkout master && git pull --rebase && bundle install"
alias main="git checkout main && git pull --rebase && bundle install"

# Network throttle
alias slowweb='sudo ipfw pipe 1 config bw 15KByte/s'
alias fastweb='sudo ipfw delete 1'

# bundler
alias bi="bundle install"
alias bu="bundle update"
alias be="bundle exec"
