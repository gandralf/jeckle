require 'bundler/setup'

Dir['spec/support/**/*.rb'].each { |file| require File.expand_path(file) }

require 'jeckle'

RSpec.configure do |config|
  config.disable_monkey_patching!

  config.before :suite do
    class FakeResource
      include Jeckle::Resource
    end
  end
end
