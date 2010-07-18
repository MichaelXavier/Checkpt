require 'spec_helper'

describe Checkpt::File do
  subject { Checkpt::File.new("/bogus") }
  it "has accessors for path, status and last_action" do
    [:path, :status, :last_action].each do |attr|
      subject.should respond_to(attr)
      subject.should respond_to(:"#{attr}=")
    end
  end

  it "accepts statuses from the STATUSES array" do
    lambda { subject.status = Checkpt::File::STATUSES.first }.should_not raise_error
  end

  it "rejects statuses not from the STATUSES array" do
    lambda { subject.status = "junk" }.should raise_error(ArgumentError)
  end

  describe "#to_yml" do
    it "converts it to a hash with keys path, status, last_action" do
      subject.status = :started
      subject.last_action = Time.now
      expected = {
        :status      => subject.status,
        :last_action => subject.last_action,
        :path        => subject.path
      }
      YAML.load(subject.to_yml).should == expected
    end
  end
end
