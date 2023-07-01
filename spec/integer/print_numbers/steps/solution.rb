module Solution1

  def self.print_numbers_with_step(n, step = 1)
    result = []
    current = n

    while current > 0
      result << current
      current -= step
    end

    result
  end

end

module Solution2

  def self.print_numbers_with_step(n, step = 1)
    if n < 1
      return []
    end

    [n] + print_numbers_with_steps(n - step, step)
  end

end