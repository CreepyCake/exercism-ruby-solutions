class ETL
  class << self
    def transform(old)
      old.each_with_object({}) do |(score, letters), obj|
        letters.each { |letter| obj[letter.downcase] = score }
      end
    end
  end
end
