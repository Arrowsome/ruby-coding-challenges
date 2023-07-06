module Solution1

  def self.reverse_int(n)
    reversed = (n < 0 ? n * -1 : n).to_s.reverse.to_i
    n < 0 ? reversed * -1 : reversed
  end

end