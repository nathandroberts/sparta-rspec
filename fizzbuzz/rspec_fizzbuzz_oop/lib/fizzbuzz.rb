class Fizzbuzz
  attr_accessor :fizzbuzz_array

  def initialize
    @fizzbuzz_array = []
  end

  def divisible_by(num1, num2)
    (num1 % num2).zero?
  end

  def fizzbuzz(num1, num2)
    (num1..num2).each do |n|
      if divisible_by(n, 15) == true
        @fizzbuzz_array.push("#{n} fizzbuzz")
      elsif divisible_by(n, 3) == true
        @fizzbuzz_array.push("#{n} fizz")
      elsif divisible_by(n, 5) == true
        @fizzbuzz_array.push("#{n} buzz")
      else
        @fizzbuzz_array.push("#{n}")
      end
    end
  end
end
