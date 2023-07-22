module Solution1

  def self.find_rectangle(image)
    first_hit, last_hit = nil
    image.each.with_index do |array, row|
      array.each.with_index do |elem, col|
        if elem == 0
          if first_hit.nil?
            first_hit = [row, col]
          else
            last_hit = [row, col]
          end
        end
      end
    end

    last_hit ||= first_hit

    first_hit + last_hit
  end

end