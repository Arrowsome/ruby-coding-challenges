module Solution1

  def self.get_duplicated_arguments(*strings)
    strings
      .group_by(&:itself)
      .transform_values(&:length)
      .select { |k, v| v > 1 }
      .keys
  end

end

module Solution2

  def self.get_duplicated_arguments(*strings)
    pointer1 = 0
    pointer2 = 1
    result = Set.new
    sorted = strings.sort

    (0...sorted.length).each do
      if sorted[pointer1] == sorted[pointer2]
        result << sorted[pointer1]
      end

      pointer1 += 1
      pointer2 += 1
    end

    result.to_a
  end

end

module Solution3

  def self.get_duplicated_arguments(*strings)
    result = Set.new

    (0...strings.length).each do |i|
      ((i + 1)..(strings.length)).each do |j|
        if strings[i] == strings[j]
          result << strings[i]
          break
        end
      end
    end

    result.to_a
  end

end
