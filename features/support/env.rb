require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

Capybara.register_driver :selenium do |app|
  # profile = Selenium::WebDriver::Firefox::Profile.new
  # Capybara::Selenium::Driver.new( app, {:browser => :firefox, :profile => profile} )
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end
