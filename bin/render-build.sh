#!/usr/bin/env bash
set -o errexit

bundle install
EDITOR="vim --wait" bin/rails credentials:edit
bundle exec rails db:migrate
