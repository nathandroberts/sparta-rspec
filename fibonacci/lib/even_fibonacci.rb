class Fibonacci
  attr_accessor :fibonacci_array
  def initialize
    @fibonacci_array = []
  end
  def even_number(num)
    (num % 2).zero?
  end
  def fibonacci_generator(start_num, end_num)
    (start_num..end_num).each do |n|
      if n == 1 or n == 2
        @fibonacci_array << 1
      else
        @fibonacci_array << (@fibonacci_array[n-3]+@fibonacci_array[n-2])
      end
    end
  end

  def even_number_checker
    total = 0
    @fibonacci_array.each do |n|
      if even_number(n)
        total += n
      end
    end
    total
  end

end
