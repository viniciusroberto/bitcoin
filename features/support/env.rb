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



# Configurando o driver capybara
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

# Setando a configuração do driver como padrão
Capybara.default_driver = :selenium

# timeou

Capybara.default_max_wait_time = 6

# $wait = Selenium::WebDriver::Wait.new(:timeout => 20)

# Maximizar a tela ao iniciar o teste
Capybara.page.driver.browser.manage.window.maximize


#########################################################
