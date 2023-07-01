module Solution1

  def self.generate_all_pairs(n)
    (0..n).flat_map do |i|
      (0..n).map do |j|
        Pair.new(i, j)
      end
    end
  end

end

module Solution2

  def self.generate_all_pairs(n)
    pairs = []
    (0..n).each { |i|
      (0..n).each { |j|
        pairs << Pair.new(i, j)
      }
    }
    pairs
  end

end