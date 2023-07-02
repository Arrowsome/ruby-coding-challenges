module Solution1

  def self.capitalize_first(words)
    words.map do |w|
      w.capitalize
    end
  end

end

module Solution2

  def self.capitalize_first(words)
    if words.length == 0
      return []
    end

    [words.first.capitalize] + capitalize_first(words.drop(1))
  end

end

module Solution3

  def self.capitalize_first(words)
    words.map do |w|
      codepoint = w[0].ord

      if codepoint >= 97 && codepoint <= 122
        codepoint -= 32
      end

      codepoint.chr + w[1..]
    end
  end

end