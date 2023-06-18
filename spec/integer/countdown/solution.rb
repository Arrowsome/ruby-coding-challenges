module Solution1

  def self.countdown(n)
    array = []
    (n.downto(0)).each do |e|
      array.push(e)
    end
    array
  end

end

module Solution2

  def self.countdown(n)
    if n == 0
      return [0]
    end

    [n] + countdown(n - 1)
  end

end

module Solution3

  def self.countdown(n)
    Array.new(n + 1) { |i| n - i }
  end

end