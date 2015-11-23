require 'capybara'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'net/http'

include Capybara::DSL

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, {
      js_errors: true
  })
end

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :poltergeist
end

Capybara.javascript_driver = :poltergeist

