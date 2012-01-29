source 'http://rubygems.org'

gem 'rails', '3.2.1'
gem 'passenger'

gem 'sqlite3'
gem 'pg'
gem 'mysql2'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'twitter-bootstrap-rails'
end

gem 'airbrake'

gem 'haml-rails'

gem 'jquery-rails'

gem 'devise'
gem 'cancan'

# rendering
gem 'rdiscount'
gem 'simple_form'

group :development do
  gem 'capistrano'
end

group :test do
  # ruby-debug for 1.9.3 doesn't work well for now
  # gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'capybara'
  gem 'faker'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end
