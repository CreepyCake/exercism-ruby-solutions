class Array
  def keep(&block)
    return self.to_enum unless block_given?
    self.map { |el| el if block.call(el) }.compact
  end

  def discard(&block)
    return self.to_enum unless block_given?
    self.map { |el| el unless block.call(el) }.compact
  end
end
