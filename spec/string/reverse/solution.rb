module Solution1
  
  def self.reverse(str)
    left_index = 0
    right_index = str.length - 1
    chs = str.chars

    while left_index < right_index
      tmp = chs[left_index]
      chs[left_index] = chs[right_index]
      chs[right_index] = tmp

      left_index += 1
      right_index -= 1
    end

    chs.join('')
  end

end

module Solution2

  def self.reverse(str)
    puts str[1..-2]
    return str if str.length <= 1

    str[-1] + reverse(str[1..-2]) + str[0]
  end

end