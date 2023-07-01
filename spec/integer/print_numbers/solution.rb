module Solution1

  def self.print_numbers(n)
    nums = []
    n.downto(1).each { |i|
      nums << i
    }
    nums
  end

end

module Solution2

  def self.print_numbers(n)
    n.downto(1).to_a
  end

end

module Solution3

  def self.print_numbers(n)
    if n == 0
      return []
    end

    [n] + print_numbers(n - 1)
  end

end