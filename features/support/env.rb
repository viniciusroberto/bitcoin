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
require 'simplecov-rcov'
require 'simplecov'
require 'metric_fu'

$browser = (ENV['BROWSER'] || 'chrome')
puts 'Programa executado no browser ' + $browser
# Configurando o driver capybara
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :"#{$browser}")
end


# Configurando o driver capybara
# Capybara.register_driver :selenium do |app|
#   Capybara::Selenium::Driver.new(app, browser: :chrome)
# end

# Setando a configuração do driver como padrão
Capybara.default_driver = :selenium

# timeou

Capybara.default_max_wait_time = 20

# $wait = Selenium::WebDriver::Wait.new(:timeout => 20)

# Maximizar a tela ao iniciar o teste
Capybara.page.driver.browser.manage.window.maximize


$env = (ENV['ENV'] || 'rainha')
puts 'Programa executado no ambiente - ' + $env

if $env == 'escondida'
  $url_minha_claro = 'https://minhaclaroescondida.claro.com.br'
elsif $env == 'rainha'
  $url_minha_claro = 'http://rainha.claro.com.br'
end


#########################################################

class SimpleCov::Formatter::MergedFormatter
  def format(result)
     SimpleCov::Formatter::HTMLFormatter.new.format(result)
     SimpleCov::Formatter::RcovFormatter.new.format(result)
  end
end
SimpleCov.formatter = SimpleCov::Formatter::MergedFormatter

if( ENV['COVERAGE'] == 'on' )
  require 'simplecov'
  require 'simplecov-rcov'
  class SimpleCov::Formatter::MergedFormatter
    def format(result)
       SimpleCov::Formatter::HTMLFormatter.new.format(result)
       SimpleCov::Formatter::RcovFormatter.new.format(result)
    end
  end
  SimpleCov.formatter = SimpleCov::Formatter::MergedFormatter
  SimpleCov.start 'rails' do
    add_filter "/vendor/"
  end
end

############
MetricFu.configuration.configure_metrics.each do |metric|
  if [:churn, :flay, :flog].include?(metric.name)
    metric.enabled = true
  else
    metric.enabled = false
  end
end
#
# MetricFu::Configuration.run do |config|
#   config.configure_metric(:rcov) do |rcov|
#     rcov.coverage_file = MetricFu.run_path.join("coverage/rcov/rcov.txt")
#     rcov.enable
#     rcov.activate
#   end
# end

require 'metric_fu/metrics/rcov/simplecov_formatter'
SimpleCov.formatter = SimpleCov::Formatter::MetricFu
# or
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  SimpleCov::Formatter::MetricFu
  ]
SimpleCov.start
