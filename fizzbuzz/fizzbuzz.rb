require 'rspec'

def fizzbuzz
  numbers = [1]
  x = 2
  while x < 101
    numbers.push(x)
    x += 1
  end
  numbers.each do |num|
    if num % 3 == 0 && num % 5 == 0
      puts "#{num} fizzbuzz"
      describe 'testing fizzbuzz' do
        it "num should be divisible by 3 and 5 " do
          expect(num %3 && num % 5).to eq(0)
        end
      end
    elsif num % 3 == 0
      puts  "#{num} fizz"
      describe 'testing fizzbuzz' do
        it "num should be divisible by 3 " do
          expect(num %3).to eq(0)
        end
      end
    elsif num % 5 == 0
      puts  "#{num} buzz"
      describe 'testing fizzbuzz' do
        it "num should be divisible by 5" do
          expect(num % 5).to eq(0)
        end
      end
    else
      puts num
      puts "#{num} fizzbuzz"
      describe 'testing fizzbuzz' do
        it "num should not be divisible by 3 and 5 " do
          expect(num %3 && num % 5).to_not eq(0)
        end
      end
    end
  end
end
fizzbuzz
