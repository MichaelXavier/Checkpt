require 'spec_helper'

#FIXME: think i might just inherit ::Dir instead
describe Checkpt::Dir do
  subject { Checkpt::Dir.new('/bogus/path') }

  before(:all) do
    @files = ['file1', 'dir1/file2']
    Dir.stub(:[]).and_return(@files)
  end

  describe "#[]" do
    it "behaves like Dir#[] but returns Checkpt::File instances" do
      Checkpt::Dir['*'].each do |f|
        @files.should include(f.path)
      end
    end
  end
end
