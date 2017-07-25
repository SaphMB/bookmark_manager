ENV['RACK_ENV'] = 'test'

require 'capybara/rspec'
require 'capybara'
require 'rspec'
require 'database_cleaner'
require_relative '../app/app.rb'

Capybara.app = Bookmarks

RSpec.configure do |config|

  config.before(:suite) do
    DatabaseCleaner.clean_by(:truncation)
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

end
