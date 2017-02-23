module BookKeeping
  VERSION = 1
end

class Sieve
  def initialize(max_number)
    @test_numbers = [*2..max_number]
    @primes = []
  end

  def primes
    return @primes if @test_numbers.empty?
    @primes << @test_numbers.shift
    @test_numbers.reject! do |i|
      (i % @primes.last).zero?
    end
    primes
  end
end
