ENV['RAILS_ENV'] = 'test'
require File.expand_path('../../config/environment', __FILE__)

require 'rails/all'
require 'rails/test_help'
require 'rspec/rails'
# require 'database_cleaner'

RSpec.configure do |config|

  # config.before(:suite) do
  #   DatabaseCleaner.clean_with :truncation
  #   DatabaseCleaner.strategy = :transaction
  # end
  #
  # config.before(:each) do
  #   DatabaseCleaner.start
  # end
  #
  # config.after(:each) do
  #   DatabaseCleaner.clean
  # end

end
