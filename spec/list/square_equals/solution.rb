module Solution1

  def self.square_equals?(nums, squares)
    return false if nums.length != squares.length

    nums_squared = nums.map { |n| n**2 }

    nums_squared.sort == squares.sort
  end

end

module Solution2

  def self.square_equals?(nums, squares)
    return false unless nums.length == squares.length
    nums.map { |n| n**2 }.group_by { |e| e } == squares.group_by { |e| e }
  end

end