require 'spec_helper'

describe Calcengine do
  before(:each) do
    @calc = Calcengine.new
  end
  it "should correctly add two numbers" do
    expect(@calc.add(1,1)).to eql 2
  end

  it "should correctly subtract 2 numbers" do
    expect(@calc.minus(2,1)).to eql 1
  end

  it "should correctly multiply 2 numbers" do
    expect(@calc.times(2,3)).to eql 6
  end

  it "should correctly divide 2 numbers" do
    # pending("awaiting code")
    expect(@calc.divide(6,3)).to eql 2
  end
end
