require_relative '../lib/case_model'
require 'webmock/rspec'

include Model

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
