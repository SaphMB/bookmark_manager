require 'capybara/rspec'
require 'capybara'
require 'rspec'
require_relative '../app.rb'


Capybara.app = Bookmarks

RSpec.configure do |config|

end
