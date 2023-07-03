module Solution1

  def self.palindrome?(str)
    tail = 0
    head = str.length - 1

    while tail < head
      if str[tail] != str[head]
        return false
      end
      tail += 1
      head -= 1
    end

    true
  end

end

module Solution2

  def self.palindrome?(str)
    if str.length <= 1
      return true
    end

    str[0] == str[-1] && palindrome?(str[1..-2])
  end

end

module Solution3

  def self.palindrome?(str)
    str.each_char.with_index do |c, i|
      head = (str.length - 1) - i

      if c != str[head]
        return false
      end

      if head < i
        return true
      end
    end

    true
  end

end