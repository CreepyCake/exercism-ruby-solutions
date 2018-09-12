class Sieve
  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def primes
    return [] if @number < 2
    primes = [nil, nil, *2..@number]
    (2..Math.sqrt(@number)).each do |n|
      (n**2..@number).step(n) { |i| primes[i] = nil if primes[n]}
    end
    primes.compact
  end
end
