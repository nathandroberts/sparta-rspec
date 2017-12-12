require 'multiples_problem'

describe Multiples do
  before(:each) do
    @m = Multiples.new
  end
  it "should recognise 6 is a multiple of 3 and return true" do
    expect(@m.multiple_of(6, 3)).to be(true)
  end
  it "should recognise 10 is a multiple of 5 and return true" do
    expect(@m.multiple_of(10, 5)).to be(true)
  end
  it "check numbers are stored correctly in array" do
    @m.multiples_function(1, 15)
    expect(@m.multiples_array[0]).to eq(3)
    expect(@m.multiples_array[1]).to eq(5)
    expect(@m.multiples_array[2]).to eq(6)
    expect(@m.multiples_array[6]).to eq(15)
  end
  it "check numbers add correctly" do
    @m.multiples_function(1, 1000)
    expect(@m.multiples_array_total).to eq(234168)
  end
end
