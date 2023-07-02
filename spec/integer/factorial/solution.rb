module Solution1

  def self.factorial(n)
    (2..n).to_a.reduce(1, :*)
  end

end

module Solution2

  def self.factorial(n)
    if n == 0
      return 1
    end

    n * factorial(n - 1)
  end

end