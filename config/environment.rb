RAILS_GEM_VERSION = '2.3.4' unless defined? RAILS_GEM_VERSION
require File.join(File.dirname(__FILE__), 'boot')

# They can then be installed with "rake gems:install" on new installations.
Rails::Initializer.run do |config|
  config.gem "jammit"
  config.gem "authlogic"
  config.time_zone = 'UTC'
end