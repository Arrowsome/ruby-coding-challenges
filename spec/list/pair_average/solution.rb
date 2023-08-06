module Solution1

  def self.has_pair_average?(array, average)
    return false if array.length < 2

    (0...(array.length - 1)).each do |i|
      ((i + 1)...array.length).each do |j|
        if ((array[i] + array[j]) / 2.0) == average
          return true
        end
      end
    end

    false
  end

end

module Solution2

  def self.has_pair_average?(array, average)
    start_index = 0
    end_index = array.length - 1

    while start_index < end_index
      ave = (array[start_index] + array[end_index]) / 2.0

      case
      when ave > average
        end_index -= 1
      when ave < average
        start_index += 1
      else
        return true
      end
    end

    false
  end

end


