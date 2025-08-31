source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.0' # or latest Ruby version

# Update to latest Rails 7.x
gem 'rails', '~> 7.1.0'

# Remove version pins to get latest versions
gem 'bootsnap', require: false
gem 'devise'
gem 'devise-jwt'
gem 'image_processing'
gem 'pg'
gem 'puma'
gem 'rack-cors'

group :development, :test do
  gem 'debug'
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false # Optional, but recommended for performance checks
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
end

group :development do
  # Speed up commands on slow machines / big apps
end
