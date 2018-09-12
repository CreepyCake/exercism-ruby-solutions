class Gigasecond
  class << self
    def from(time)
      gigasecond = 10 ** 9
      time + gigasecond
    end
  end
end
