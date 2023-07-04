module Solution1

  def self.vowels(str)
    str
      .chars
      .select { |c| c.match?(/[aAeEiIoOuUyY]/) }
      .length
  end

end

module Solution2

  def self.vowels(str)
    vowels = %w[a e i o u y]
    str.downcase.chars.count { |ch| vowels.include?(ch) }
  end

end

module Solution3

  def self.vowels(str)
    str.scan(/[aAeEiIoOuUyY]/).size
  end

end