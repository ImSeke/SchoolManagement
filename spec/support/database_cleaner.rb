RSpec.configure do |config|
    config.before(:context) do
      DatabaseCleaner.strategy = :truncation
      DatabaseCleaner.clean
    end
  end