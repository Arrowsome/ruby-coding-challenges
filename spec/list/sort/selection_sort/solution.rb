module Solution1

  def self.selection_sort(array)
    n = array.length

    (0..(n - 2)).each do |i|
      min_index = i

      ((i + 1)..(n - 1)).each do |j|
        min_index = j if array[j] < array[min_index]
      end

      array[i], array[min_index] = array[min_index], array[i] if i != min_index
    end

    array
  end

end