ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Include FactoryBot methods
  include FactoryBot::Syntax::Methods

  # Include Rails route helpers
  include Rails.application.routes.url_helpers

  # Use transactional tests
  self.use_transactional_tests = true
end

class ActionDispatch::IntegrationTest
  # Include route helpers for integration tests
  include Rails.application.routes.url_helpers
end
