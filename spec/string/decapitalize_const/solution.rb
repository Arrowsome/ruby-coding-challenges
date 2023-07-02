module Solution1

  def self.decapitalize_const(const)
    array = const.split('_').reject(&:empty?).map do |w|
      w[0].capitalize + w[1..].downcase
    end

    array.empty? ? '' : array.first.downcase + array.drop(1).join('')
  end

end