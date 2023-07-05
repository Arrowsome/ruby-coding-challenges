module Solution1

  def self.generate_steps(n)
    Array.new(n) do |i|
      ('#' * (i + 1)) + (' ' * (n - (i + 1)))
    end
  end

end

module Solution2

  def self.generate_steps(n)
    steps = []

    (1..n).each do |row|
      str_builder = StringIO.new
      (1..n).each do |col|
        str_builder << (col <= row ? '#' : ' ')
      end
      steps << (str_builder.string)
      str_builder.close
    end
    steps
  end

end