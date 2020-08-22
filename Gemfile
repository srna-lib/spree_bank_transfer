source 'https://rubygems.org'

# Provides basic authentication functionality for testing parts of your engine
version = '3-2-stable'
gem 'spree', github: 'spree/spree', version
gem 'spree_auth_devise', github: 'spree/spree_auth_devise', branch: version
gem 'mysql2'

group :assets do
  gem 'coffee-rails'
  gem 'sass-rails'
end

group :test do
  gem 'minitest'
  gem 'rspec-rails', '~> 2.10'
  gem 'shoulda-matchers', '2.2.0'
  gem 'simplecov', :require => false
  gem 'database_cleaner'
end
gemspec
