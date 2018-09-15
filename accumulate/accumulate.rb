class Array
  def accumulate(&block)
    return self.to_enum unless block_given?
    result = []
    i = 0
    while i < self.length do
      result.push(block.call(self[i]))
      i += 1
    end
    result
  end
end
