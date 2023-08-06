module Solution1

  def self.permutation_palindrome?(str)
    freq = {}
    str.chars.each do |c|
      freq[c] = freq.fetch(c, 0) + 1
    end

    freq.select { |k, v| v.odd? }.count <= 1
  end

end

module Solution2

  def self.permutation_palindrome?(str)
    str
      .chars
      .group_by(&:itself)
      .values
      .map(&:size)
      .count { |c| c.odd? } == 1
  end

end
