source 'http://rubygems.org'
source 'http://rubyforge.org'

gem 'rails', '3.1.3'
gem 'pg'
gem 'passenger'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'twitter-bootstrap-rails'
end

gem 'haml-rails'

gem 'jquery-rails'

gem 'devise'
gem 'cancan'

group :development do
  gem 'capistrano'
end

group :test do
  # ruby-debug for 1.9.3 doesn't work well for now
  # gem 'ruby-debug19', :require => 'ruby-debug'
end

group :development, :test do
  gem 'rspec-rails'
end
