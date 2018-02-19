#language: pt

require 'rspec'
require 'capybara'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara/cucumber'
require 'site_prism'
require 'pry'
require 'selenium-webdriver'
require 'webshot'
require 'base64'
require 'json'
require 'allure-rspec'
require 'logger'
require 'builder'
require 'allure-cucumber'
require 'capybara/cucumber'
require 'capybara/rspec'
# require 'ar-uuid'
require 'uuid'
require 'allure-ruby-adaptor-api'


# AllureCucumber.configure do |c|
  include AllureCucumber::DSL
#   c.output_dir = "allure/"
#   FileUtils.rm_rf(Dir['./allure'])
# end
# include AllureCucumber::DSL
#
# attach_file(title, file)

   After do |e|
  #   puts 'ae carai'
  #  # scenario.attach_file('screenshot',"oi.png")
  temp_screenshot = '/results/temp_screenshot.png'
  new_screenshot = File.new(page.save_screenshot(File.join(Dir.pwd, temp_screenshot)))
  # puts "aki tb"
 e.attach_file('screenshot', new_screenshot)
   # attach_file("file_title", File.open("C:/Users/vinicius.reis/Desktop/bitcoin/results/tempp.png"))
   # e.attach_file('screenshot', new_screenshot, visible: false)
#
 end
# end
#
