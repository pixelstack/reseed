require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

require "fantaskspec"

RSpec.configure do |config|
  config.infer_rake_task_specs_from_file_location!
end
