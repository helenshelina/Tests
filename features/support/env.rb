require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara/selenium/driver'
require 'site_prism'

Capybara.default_driver = :selenium
Capybara.app_host = "http://cp-business-staging.herokuapp.com/"
Capybara.register_driver :selenium do |app|
 Capybara::Selenium::Driver.new app, browser: :chrome
end

World(Capybara::DSL)
