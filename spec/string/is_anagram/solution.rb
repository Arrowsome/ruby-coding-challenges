module Solution1

  def self.anagrams?(str1, str2)
    result1 = str1
                .chars
                .select { |c| c.match?(/[a-zA-Z0-9]/) }
                .map(&:downcase)
                .group_by(&:itself)

    result2 = str2
                .downcase
                .chars
                .select { |c| c.match?(/[a-zA-Z0-9]/) }
                .map(&:downcase)
                .group_by(&:itself)

    result1 == result2
  end

end