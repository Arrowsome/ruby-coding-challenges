module Solution1

  def self.pyramid(n)
    pyr = []
    n.times do |i|
      side_spaces = ' ' * (n - i - 1)
      hashes = '#' * ((i * 2) + 1)
      pyr << "#{side_spaces}#{hashes}#{side_spaces}"
    end
    pyr
  end

end

module Solution2

  def self.pyramid(n)
    base = (n * 2) - 1
    mid_index = (base - 1) / 2
    pyr = []
    n.times do |row|
      str_builder = StringIO.new
      base.times do |col|
        str_builder << (col < (mid_index - row) || col > (mid_index + row) ? ' ' : '#')
      end
      pyr << str_builder.string
      str_builder.close
    end
    pyr
  end

end
