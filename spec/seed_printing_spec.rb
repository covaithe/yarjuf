require 'spec_helper'

describe JUnit do
  subject { JUnit.new "foo" }
  describe "#seed" do
    it "should print the random seed on stdout" do
      $stdout.should_receive(:puts).with(no_args())
      $stdout.should_receive(:puts).with("Randomized with seed 1234")
      subject.seed 1234
    end
  end
end
