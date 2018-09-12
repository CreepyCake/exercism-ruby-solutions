class String
  def sanitize
    self.split.collect do |token|
      token.downcase.scan(/\b[\w']+\b/)
    end
  end
end

class Phrase
  attr_accessor :phrs

  def initialize(phrs)
    @phrs = phrs.sanitize.join(' ')
  end

  def word_count
    count = {}
    @phrs.split(' ').each do |word|
      count[word] = count[word] ? count[word].succ : 1
    end
    count
  end
end
