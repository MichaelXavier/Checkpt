require 'rspec/rr'
require 'fakefs'
require 'fakefs/spec_helpers'

$LOAD_PATH << 'lib'
require 'checkpt'

Rspec.configure do |config|
  config.mock_with :rr

  include FakeFS::SpecHelpers
end

Dir['lib/test_helpers/**/*.rb'].each {|f| require f}

