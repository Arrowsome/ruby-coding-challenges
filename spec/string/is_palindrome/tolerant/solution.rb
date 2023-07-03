module Solution1

  def self.tolerant_palindrome?(str)
    tail = 0
    head = str.length - 1
    chars_removed = false

    while tail < head
      if str[tail] != str[head]
        if chars_removed
          return false
        else
          chars_removed = true
          if str[tail + 1] == str[head]
            tail += 1
          elsif str[tail] == str[head - 1]
            head -= 1
          else
            return false
          end
        end
      end
      tail += 1
      head -= 1
    end

    true
  end

end