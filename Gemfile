source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem "rails", "~> 7.0.4", ">= 7.0.4.3"

# Generate JSON in an OO and convention-driven manner
gem 'active_model_serializers'
# This gem forwards to activerecord's default postgresql adapter
gem 'activerecord-postgresql-adapter'
# Use a rake task to wait on database and migrations
gem 'bleib', '0.0.8' # For deployment
# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

gem 'carrierwave'
gem 'database_cleaner'
gem 'mimemagic', '~> 0.3.6'
gem 'mini_magick'
gem 'net-imap', require: false
gem 'net-ldap', '~> 0.16.0'
gem 'net-pop', require: false
gem 'net-smtp', require: false
gem 'nokogiri', '~> 1.14'
gem 'odf-report'
gem 'rest-client'
gem 'seed-fu'
gem 'sentry-ruby'
gem 'sentry-rails'
gem 'sidekiq'
gem 'sidekiq-cron'
gem 'counter_culture', '~> 3.2'

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"
gem "friendly_id", "~> 5.4.0"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem "rack-cors"

gem "notion-ruby-client"
gem "notion_to_md"

group :metrics do
  gem 'brakeman'
  gem 'standard', '>= 1.0.0'
  gem 'standard-rails', require: false
end

group :development do
  gem 'bullet'
  gem 'listen', '~> 3.0.5'
  gem 'rb-readline'
  gem 'rails-erd'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Annotates Rails/ActiveRecord Models, routes, fixtures, and others based on the database schema.
  gem 'annotate'
end

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem "dotenv-rails"
end

group :test do
  gem 'faker'
  gem 'simplecov'
end
