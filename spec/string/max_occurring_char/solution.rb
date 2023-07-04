module Solution1

  def self.max_occurring_char(str)
    if str == nil || str.empty?
      return nil
    end

    str
      .chars
      .group_by(&:itself)
      .transform_values { |v| v.length }
      .max_by { |_, v| v }
      .first
  end

end