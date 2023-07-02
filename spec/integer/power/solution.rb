module Solution1

  def self.power(b, e)
    if e == 1
      return b
    end

    b * power(b, e - 1)
  end

end

module Solution2

  def self.power(b, e)
    base = 1
    (1..e).each do
      base *= b
    end
    base
  end

end
