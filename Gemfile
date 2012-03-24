source 'https://rubygems.org'

gem 'rails', '3.2.2'
gem 'rake'

gem 'sqlite3'

gem 'haml-rails'
gem 'sass-rails'
gem 'coffee-rails'
gem 'uglifier'
gem 'bootstrap-sass-rails'  
gem 'jquery-rails'


gem 'devise'
gem 'cancan'
gem 'responders'
gem 'simple_form'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
end

group :development do
  gem 'sqlite3'
  gem 'annotate'
  # gem 'draper'
  gem 'pry'
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false  
  # gem 'factory_girl_rails'
  gem 'guard-rspec'
  gem 'spork'
  gem 'guard-spork'
  # gem 'growl'
  gem 'minitest'
  gem 'database_cleaner'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'launchy'
end

group :production do
  # gem 'pg'
  gem 'thin'
end
