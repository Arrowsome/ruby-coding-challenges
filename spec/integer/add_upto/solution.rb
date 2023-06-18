module Solution1

  def self.add_upto(n)
    sum = 0
    (1..n).each { |i| sum += i }
    sum
  end

end

# Recursive
module Solution2

  def self.add_upto(n)
    n == 1 ? 1 : n + add_upto(n - 1)
  end

end

# Formula (mathematical formula that calculates sum, from 1 upto n)
module Solution3

  def self.add_upto(n)
    (n * (n + 1)) / 2
  end

end