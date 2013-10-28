require 'capybara/rails'
require 'capybara/rspec'

RSpec.configure do |config|
  Capybara.javascript_driver = :selenium
end
