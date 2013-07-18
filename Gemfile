source 'http://rubygems.org'
ruby "1.9.3"

gem 'rails', ">= 3.1.0"

gem 'json'

gem 'haml-rails'

gem 'flickraw-cached'

gem 'newrelic_rpm'

gem 'jquery-rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', ">= 3.1.0"
  gem 'coffee-rails',">= 3.1.0"
  gem 'uglifier'
end

group :production do 
  gem 'memcachier'
  gem 'dalli'
  gem 'unicorn'
  gem 'rails_12factor' #static assets and logging on heroku
end

group :development, :test do
end

