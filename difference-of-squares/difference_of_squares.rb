class Squares
  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def square_of_sum
    (number.next * number / 2) ** 2
  end

  def sum_of_squares
    number * number.next * (2*number).next / 6
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
