source 'https://rubygems.org'

ruby '2.0.0'
gem 'rails', '4.0.0'

gem 'sqlite3'

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :test do
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'database_cleaner'
end

group :develment do
  gem "quiet_assets"
end

group :development, :test do
  gem 'rspec-rails'
  gem 'pry'
end

gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'unicorn'
gem 'anjlab-bootstrap-rails', :require => 'bootstrap-rails',
                              :github => 'anjlab/bootstrap-rails'
gem "font-awesome-rails"
