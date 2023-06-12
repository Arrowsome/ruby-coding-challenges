module Solution1
  def self.capitalize_sentence(str)
    str
      .split(' ')
      .map { |word| word.capitalize }
      .join(' ')
  end
end