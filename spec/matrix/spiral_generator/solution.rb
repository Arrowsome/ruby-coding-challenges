module Solution1

  def self.generate_spiral(n)
    spiral = Array.new(n) do
      Array.new(n) do
        nil
      end
    end

    row, col, dir = 0, 0, Direction::EAST

    (1..(n * n)).each do |num|
      spiral[row][col] = num

      case dir
      when Direction::EAST
        if spiral[row].fetch(col + 1, -1) != nil
          dir = Direction::SOUTH
          row += 1
        else
          col += 1
        end
      when Direction::SOUTH
        if spiral.fetch(row + 1, -1)[col] != nil
          dir = Direction::WEST
          col -= 1
        else
          row += 1
        end
      when Direction::WEST
        if spiral[row].fetch(col - 1, -1) != nil
          dir = Direction::NORTH
          row -= 1
        else
          col -= 1
        end
      when Direction::NORTH
        if spiral.fetch(row - 1, -1)[col] != nil
          dir = Direction::EAST
          col += 1
        else
          row -= 1
        end
      end
    end

    spiral
  end

  module Direction
    NORTH = 0
    EAST = 1
    SOUTH = 2
    WEST = 3
  end

end