source 'http://rubygems.org'
ruby "1.9.3"

gem 'rails', ">= 3.1.0"

gem 'rails_12factor', group: :production

gem 'json'

gem 'haml-rails'

gem 'pg'

gem 'flickraw-cached'

  gem 'newrelic_rpm'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', ">= 3.1.0"
  gem 'coffee-rails',">= 3.1.0"
  gem 'uglifier'
end

group :production do 
  gem 'unicorn'
  gem 'rails_12factor' #static assets and logging on heroku
end

gem 'jquery-rails'

group :development, :test do
  gem 'sqlite3'
end

