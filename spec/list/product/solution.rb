module Solution1

  def self.product(nums)
    nums.reduce(1, :*)
  end

end

module Solution2

  def self.product(nums)
    if nums.length == 1
      return nums.first
    end

    nums.first * product(nums.drop(1))
  end

end

module Solution3

  def self.product(nums)
    result = nums.first
    index = nums.length - 1
    while index > 0
      result *= nums[index]
      index -= 1
    end
    result
  end

end