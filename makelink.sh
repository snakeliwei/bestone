#!/bin/bash

cp ~/production/Dockerfile giant/Dockerfile
cp ~/production/Dockerfile golem/Dockerfile
cp ~/production/backendgiant.sh giant/backend.sh
cp ~/production/backendgolem.sh golem/backend.sh
cp ~/production/sidekiq.yml giant/config/sidekiq.yml
cp ~/production/database.yml.giant giant/config/database.yml
cp ~/production/database.yml.golem golem/config/database.yml
cp ~/production/private_settings.yml.giant giant/config/private_settings.yml
cp ~/production/private_settings.yml.golem golem/config/private_settings.yml
cp ~/production/unicorn.rb giant/config/unicorn.rb
cp ~/production/unicorn.rb golem/config/unicorn.rb

