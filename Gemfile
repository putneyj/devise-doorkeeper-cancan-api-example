# frozen_string_literal: true
source 'https://rubygems.org'

gem 'rails', '~> 5.0'
gem 'active_model_serializers', '>=0.10.x'
gem 'pg'
gem 'dotenv-rails'
gem 'puma'
gem 'foreman'
gem 'rack-cors', require: 'rack/cors'
gem 'devise'
gem 'doorkeeper'
gem 'cancancan'

group :development, :test do
  gem 'byebug'
  gem 'guard'
  gem 'guard-rspec', require: false
  gem 'guard-rubocop'
  gem 'guard-brakeman'
end

group :development do
  gem 'rubocop', require: false
  gem 'rubocop-rspec', require: false
  gem 'reqres_rspec'
end

group :test do
  gem 'database_rewinder'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
  gem 'json_spec'
  gem 'vcr'
  gem 'webmock', require: 'webmock/rspec'
  gem 'timecop'
  gem 'simplecov', require: false
  gem 'coveralls', require: false
end
