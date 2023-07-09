module Solution1

  def self.repeated_char?(str)
    str
      .chars
      .group_by(&:itself)
      .transform_values(&:count)
      .values
      .each do |v|
      if v > 1
        return true
      end
    end

    false
  end

end

module Solution2

  def self.repeated_char?(str)
    str[0..-2].each_char.with_index do |c1, i|
      str[(i + 1)..-1].each_char do |c2|
        if c1 == c2
          return true
        end
      end
    end

    false
  end

end