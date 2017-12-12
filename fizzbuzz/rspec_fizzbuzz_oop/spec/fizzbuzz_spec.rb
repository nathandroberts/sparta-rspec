require 'fizzbuzz'

describe Fizzbuzz do
  before(:each) do
    @fb = Fizzbuzz.new
  end
  it "numbers should both be divisible by 3 and 5 and return true" do
    expect(@fb.divisible_by(15, 3) && @fb.divisible_by(15, 5)).to be(true)
  end
  it "num should be divisible by 3 and return true" do
    expect(@fb.divisible_by(6, 3)).to be(true)
  end
  it "num should be divisible by 5 and return true" do
    expect(@fb.divisible_by(10, 5)).to be(true)
  end
  it "numbers should not be divisible by 3 or 5 and return true" do
    expect(@fb.divisible_by(15, 3) && @fb.divisible_by(15, 5)).to be(true)
  end
  it "first array value should be 1" do
    @fb.fizzbuzz(1,15)
    expect(@fb.fizzbuzz_array[0]).to eq("1")
  end
  it "Third array value should be 3 fizz" do
    @fb.fizzbuzz(1,15)
    expect(@fb.fizzbuzz_array[2]).to eq("3 fizz")
  end
  it "Fifth array value should be 5 buzz" do
    @fb.fizzbuzz(1,15)
    expect(@fb.fizzbuzz_array[4]).to eq("5 buzz")
  end
  it "Fifthteenth array value should be 15 fizzbuzz" do
    @fb.fizzbuzz(1,15)
    expect(@fb.fizzbuzz_array[14]).to eq("15 fizzbuzz")
  end
end
