module Solution1
  def self.contains_range?(range1, range2)
    range1.cover?(range2)
  end
end

module Solution2
  def self.contains_range?(range1, range2)
    range1.first <= range2.first and range1.last >= range2.last
  end
end
