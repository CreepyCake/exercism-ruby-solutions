class Grains
  class << self
    def square(n)
      raise ArgumentError unless (1..64).include? n
      1 << n.pred
    end

    def total
      (1 << 64).pred
    end
  end
end
