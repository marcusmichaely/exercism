module BookKeeping
  VERSION = 3
end

class Squares
  def initialize(max)
    @max = max
  end

  def square_of_sum
    (0..@max).reduce(:+)**2
  end

  def sum_of_squares
    (0..@max).inject { |sum, n| sum + n * n }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
