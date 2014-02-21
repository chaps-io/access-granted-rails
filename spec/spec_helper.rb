require 'rubygems'
require 'bundler/setup'

if ENV["COV"]
  require 'simplecov'
  SimpleCov.start
end

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  config.order = 'random'
end

module ActionController
  class Base
    def self.helper_method(*args)
    end
  end
end
require 'access-granted'
require 'access-granted-rails'

class Policy
  include AccessGranted::Policy
end

