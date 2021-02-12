require'capybara'
require 'capybara/cucumber'

#sera aberta a pagina do chrome para os testes
Capybara.configure do |config|
    config.default_driver = :selenium_chrome 
end