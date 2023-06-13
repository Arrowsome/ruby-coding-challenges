module Solution1
  def self.filter_odd(list)
    list.select { |num| num.odd? }
  end
end

module Solution2
  def self.filter_odd(list)
    return [] if list.empty?

    list.first.odd? ? [list.first] + filter_odd(list.drop(1)) : filter_odd(list.drop(1))
  end
end