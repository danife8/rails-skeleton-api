# frozen_string_literal: true

source 'https://rubygems.org'

gem 'bootsnap', require: false
gem 'foreman'
gem 'jbuilder'
gem 'pg', '~> 1.1'
gem 'puma', '>= 5.0'
gem 'rails', '~> 8.0.2'
gem 'rswag-api'
gem 'rswag-specs'
gem 'rswag-ui'
gem 'tzinfo-data', platforms: %i[windows jruby]

group :development, :test do
  gem 'annotate'
  gem 'brakeman', require: false
  gem 'debug', platforms: %i[mri windows], require: 'debug/prelude'
  gem 'dotenv'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails', '~> 7.0.0'
end

group :development do
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'web-console'
end

group :test do
  gem 'shoulda-matchers', '~> 6.0'
  gem 'simplecov', require: false
end
