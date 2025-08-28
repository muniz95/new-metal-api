source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.0' # or latest Ruby version

# Update to latest Rails 7.x
gem 'rails', '~> 7.1.0'

# Remove version pins to get latest versions
gem 'pg'
gem 'puma'
gem 'bootsnap', require: false
gem 'image_processing'
gem 'rack-cors'
gem 'devise'
gem 'devise-jwt'

group :development, :test do
  gem 'debug'
  gem 'rspec-rails'
  gem 'factory_bot_rails'
end

group :development do
  # Speed up commands on slow machines / big apps
end
