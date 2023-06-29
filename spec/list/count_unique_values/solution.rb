module Solution1
  def self.count_unique_values(numbers)
    freq = {}

    numbers.each do |n|
      freq[n] = freq.fetch(n, 0) + 1
    end

    freq.length
  end
end

require 'set'

module Solution2
  def self.count_unique_values(numbers)
    Set
      .new(numbers)
      .length
  end
end

