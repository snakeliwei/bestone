#!/bin/bash

cp ~/bestone/Dockerfile giant/Dockerfile
cp ~/bestone/Dockerfile golem/Dockerfile
cp ~/bestone/backendgiant.sh giant/backend.sh
cp ~/bestone/backendgolem.sh golem/backend.sh
cp ~/bestone/sidekiq.yml giant/config/sidekiq.yml
cp ~/bestone/database.yml.giant giant/config/database.yml
cp ~/bestone/database.yml.golem golem/config/database.yml
cp ~/bestone/private_settings.yml.giant giant/config/private_settings.yml
cp ~/bestone/private_settings.yml.golem golem/config/private_settings.yml
cp ~/bestone/unicorn.rb giant/config/unicorn.rb
cp ~/bestone/unicorn.rb golem/config/unicorn.rb

