class Raindrops
  class << self
    @@convertion = {
      3 => 'Pling',
      5 => 'Plang',
      7 => 'Plong'
    }
    def convert(number)
      result = @@convertion.reduce('') do |memo, (factor, string)|
        (number % factor).zero? ? memo + string : memo
      end
      result.empty? ? number.to_s : result
    end
  end
end
