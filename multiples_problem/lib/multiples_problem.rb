class Multiples
  attr_accessor :multiples_array
  def initialize
    @multiples_array = []
  end

  def multiple_of(num1, num2)
    (num1 % num2).zero?
  end

  def multiples_function(first_num, last_num)
    (first_num..last_num).each do |n|
      if multiple_of(n, 3) == true
        @multiples_array << n
      elsif multiple_of(n, 5) == true
        @multiples_array << n
      end
    end
  end

  def multiples_array_total
    total = 0
    @multiples_array.each do |n|
      total += n
    end
    total
  end

end
