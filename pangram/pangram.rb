class Pangram
  class << self
    def pangram?(sentence)
      sentence = sentence.downcase.gsub(/[^a-z]/, '').split('').uniq
      return sentence.all? { |c| ('a'.ord..'z'.ord).include? c.ord  } && sentence.size == 26
    end
  end
end
