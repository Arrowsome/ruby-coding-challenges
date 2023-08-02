module Solution1

  def self.sum_zero(nums)
    n = nums.length
    (0..(n - 2)).each do |i|
      ((i + 1)..(n - 1)).each do |j|
        return [nums[i], nums[j]] if nums[i] + nums[j] == 0
      end
    end

    nil
  end

end

module Solution2

  def self.sum_zero(nums)
    start_index = 0
    end_index = nums.length - 1

    while start_index < end_index
      start_elem = nums[start_index]
      end_elem = nums[end_index]
      sum = start_elem + end_elem

      case
      when sum < 0
        start_index += 1
      when sum > 0
        end_index -= 1
      else
        return [nums[start_index], nums[end_index]]
      end

    end

    nil
  end

end