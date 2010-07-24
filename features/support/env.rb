$LOAD_PATH << 'lib'
require 'checkpt'
require 'bundler'
Bundler.require(:default, :test)

Before do
  FakeFS.activate!
  FileSystem.clear
end

After do
  FakeFS.deactivate!
end
