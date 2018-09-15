class String
  def number?
    ('0'.ord..'9'.ord).include? self.ord
  end

  def to_integer
    self.empty? ? 1 : self.to_i
  end
end

class RunLengthEncoding
  class << self
    def decode(string)
      do_decode(string.chars)
    end

    def encode(string)
      do_encode(string.chars, string.chr)
    end

    private

    def do_decode(chars, count = '', result = '')
      return result if chars.empty?
      if chars.first.number?
        count += chars.first
        do_decode(chars.drop(1), count, result)
      else
        result += chars.first * count.to_integer
        do_decode(chars.drop(1), '', result)
      end
    end

    def do_encode(chars, char, count = 0, result = '')
      return build_result(result, count, char) if chars.empty?
      if char.eql?(chars.first)
        do_encode(chars.drop(1), char, count.succ, result)
      else
        do_encode(chars, chars.first, 0, build_result(result, count, char))
      end
    end

    def build_result(result, count, char)
      result += "#{count if count > 1}#{char}"
    end
  end
end
