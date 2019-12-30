require 'bundler/setup'
require 'knossos-cli'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure.
  config.example_status_persistence_file_path = '.rspec_status'

  # Do not expose RSpec methods globally on 'Module' and 'main'.
  config.disable_monkey_patching!

  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect

    # Include description and message text for chained matchers, e.g.:
    #     be_bigger_than(2).and_smaller_than(4).description
    #     # => "be bigger than 2 and smaller than 4"
    # Will default to 'true' in RSpec 4.
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    # Prevent mocking or stubbing a method that does not exist on a real object.
    # Will default to 'true' in RSpec 4.
    mocks.verify_partial_doubles = true
  end

  # Will default to 'apply_to_host_groups' in RSpec 4, and not be configurable.
  config.shared_context_metadata_behavior = :apply_to_host_groups

  # Run only specific examples or groups by tagging them with ':focus'.
  # Shorthand aliases include 'fit', 'fdescribe', and 'fcontext'.
  config.filter_run_when_matching :focus

  config.warnings = true

  if config.files_to_run.one?
    # Be verbose when testing an individual file.
    config.default_formatter = 'doc'
  end

  # Print the N slowest examples and example groups at the end of the run.
  #config.profile_examples = 10

  # Run specs in random order to surface order dependencies.
  # Repeat a specific order by providing the seed which is printed after each run.
  #     --seed 1234
  config.order = :random
  Kernel.srand config.seed
end
