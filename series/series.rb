class Series
  attr_accessor :string

  def initialize(string)
    @string = string
  end

  def slices(n)
    raise ArgumentError if n > @string.length
    @string.chars.each_cons(n).map(&:join)
  end
end
