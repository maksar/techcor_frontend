require 'simplecov'

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'frontend.rb')

require 'capybara'
require 'capybara/cucumber'
require 'aruba/cucumber'
require 'rspec'

Capybara.app = Techcor::Frontend

class Techcor::FrontendWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

require 'simplecov'

World do
  Techcor::FrontendWorld.new
end
