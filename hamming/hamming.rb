class Hamming
  class << self
    def compute(first, second)
      raise ArgumentError if first.length != second.length
      do_compute(first.downcase.split(''), second.downcase.split(''), 0)
    end

    def do_compute(first, second, acc)
      return acc if first.empty?

      acc = first.pop == second.pop ? acc : acc.next
      do_compute(first, second, acc)
    end
  end
end
