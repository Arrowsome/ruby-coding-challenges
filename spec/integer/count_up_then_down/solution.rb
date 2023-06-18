module Solution1

  def self.count_up_then_down(n)
    (0...n).to_a + n.downto(0).to_a
  end

end

module Solution2

  def self.count_up_then_down(n)
    size = (n * 2) + 1
    Array.new(size) do |i|
      i <= n ? i : (n * 2) - i
    end
  end

end