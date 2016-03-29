#!/bin/bash
set -e
source /etc/profile.d/rvm.sh
rake db:migrate RAILS_ENV="production"
rake assets:precompile
bundle exec unicorn -E production -c ./config/unicorn.rb
