require 'even_fibonacci'

describe Fibonacci do
  before(:each) do
    @f = Fibonacci.new
  end
  it "checks for even number and returns true" do
    expect(@f.even_number(1)).to be(false)
    expect(@f.even_number(2)).to be(true)
  end
  it "checks for fibbonaci sequence" do
    @f.fibonacci_generator(5)
    expect(@f.fibonacci_array).to eq([1,1,2,3,5])
  end
  it "checks for fibbonaci addition of even numbers" do
    @f.fibonacci_generator(6)
    expect(@f.even_number_checker).to eq(10)
  end

end
