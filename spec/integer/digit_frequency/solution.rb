module Solution1
  
  def self.equal_digit_frequency?(n1, n2)
    freq1 = n1
      .to_s.chars
      .group_by { |c| c }

    freq2 = n2
      .to_s.chars
      .group_by { |c| c }

    freq1 == freq2
  end

end

module Solution2

  def self.equal_digit_frequency?(n1, n2)
    n1.to_s.chars.sort == n2.to_s.chars.sort
  end

end

module Solution3

  def self.equal_digit_frequency?(n1, n2)
    n2_chars = n2.to_s.chars

    n1.to_s.each_char do |c|
      index = n2_chars.index(c)
      if index.nil?
        return false
      else
        n2_chars.delete_at(index)
      end
    end

    true
  end

end
