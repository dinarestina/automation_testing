require 'capybara'
require 'capybara/cucumber'
require 'cucumber'
require 'rspec'
require 'capybara/rspec'
require 'selenium-webdriver'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :firefox, timeout: 30)
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.default_max_wait_time = 30
end