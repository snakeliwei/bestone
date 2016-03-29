#!/bin/bash
set -e
source /etc/profile.d/rvm.sh
rake db:migrate RAILS_ENV="production"
rake assets:precompile
whenever
nohup rake subscriber:sync_file &
bundle exec sidekiq -C ./config/sidekiq.yml -d -e production
bundle exec unicorn -E production -c ./config/unicorn.rb
