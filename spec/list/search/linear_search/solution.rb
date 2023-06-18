module Solution1

  def self.get_index(array, target)
    target_index = -1
    array.each_index do |index|
      if array[index] == target
        target_index = index
        break
      end
    end
    target_index
  end

end